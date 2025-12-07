uint64_t sub_21DEB7E84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94438, &unk_21DED0E60);
  result = sub_21DEC72B0();
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
      result = sub_21DEC7760();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_21DEB8074(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E00, &unk_21DED5E00);
  result = sub_21DEC72B0();
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
      result = sub_21DEC7760();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_21DEB8274(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_21DEC7770();
  sub_21DEC6E90();
  v6 = sub_21DEC77B0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21DEC7610() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21DE52BBC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_21DEB83B0(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_21DEB83B0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21DEC7290();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21DEC7770();

        sub_21DEC6E90();
        v10 = sub_21DEC77B0();

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

uint64_t sub_21DEB8574(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_21DEC7610();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_21DEC7610();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_21DEC7610();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = sub_21DEC7610();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = sub_21DEC7610();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v33 = a1[11];
  v34 = a2[11];
  if (v33)
  {
    if (v34 && (a1[10] == a2[10] && v33 == v34 || (sub_21DEC7610() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v34)
  {
    return 1;
  }

  return 0;
}

BOOL sub_21DEB878C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v20[0] = v4;
  *(v20 + 9) = *(a1 + 57);
  v5 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v5;
  v6 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v18[0] = v6;
  *(v18 + 9) = *(a2 + 57);
  v7 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v7;
  if (!sub_21DEB889C(v19, v17))
  {
    return 0;
  }

  v8 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = *(a1 + 96);
  v10 = *(a2 + 96);
  v11 = *(v9 + 16);
  if (v11 == *(v10 + 16))
  {
    if (v11 && v9 != v10)
    {
      v12 = (v9 + 32);
      v13 = (v10 + 32);
      while (*v12 == *v13)
      {
        ++v12;
        ++v13;
        if (!--v11)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

LABEL_14:
    v14 = *(a1 + 104);
    v15 = *(a2 + 104);
    if (v14)
    {
      return v15 && (sub_21DEB085C(v14, v15) & 1) != 0;
    }

    if (!v15)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_21DEB889C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
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

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 72);
  if ((*(a1 + 72) & 1) == 0)
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v6 = 1;
    }

    return (v6 & 1) == 0;
  }

  return (*(a2 + 72) & 1) != 0;
}

BOOL sub_21DEB8970(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v20[0] = v4;
  *(v20 + 9) = *(a1 + 57);
  v5 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v5;
  v6 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v18[0] = v6;
  *(v18 + 9) = *(a2 + 57);
  v7 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v7;
  if (!sub_21DEB889C(v19, v17))
  {
    return 0;
  }

  v8 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = *(a1 + 96);
  v10 = *(a2 + 96);
  v11 = *(v9 + 16);
  if (v11 == *(v10 + 16))
  {
    if (v11 && v9 != v10)
    {
      v12 = (v9 + 32);
      v13 = (v10 + 32);
      while (*v12 == *v13)
      {
        ++v12;
        ++v13;
        if (!--v11)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

LABEL_14:
    v14 = *(a1 + 104);
    v15 = *(a2 + 104);
    if (v14)
    {
      return v15 && (sub_21DEB0948(v14, v15) & 1) != 0;
    }

    if (!v15)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_21DEB8A80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if ((*(a2 + 8) & 1) != 0 || *a1 != *a2)
    {
      return v2;
    }
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    v3 = *(a1 + 40);
    v4 = *(a2 + 40);
    if (v3)
    {
      if (!v4)
      {
        return 0;
      }

      if (*(a1 + 32) != *(a2 + 32) || v3 != v4)
      {
        v5 = a1;
        v6 = a2;
        v7 = sub_21DEC7610();
        a2 = v6;
        v8 = v7;
        a1 = v5;
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      return 0;
    }

    v9 = a1;
    v10 = a2;
    if (sub_21DEB08B8(*(a1 + 48), *(a2 + 48)))
    {
      v11 = *(v9 + 56);
      v12 = *(v10 + 56);
      if (v11)
      {
        return v12 && (sub_21DEB08B8(v11, v12) & 1) != 0;
      }

      if (!v12)
      {
        return 1;
      }
    }

    return 0;
  }

  v2 = 0;
  if ((*(a2 + 24) & 1) == 0 && *(a1 + 16) == *(a2 + 16))
  {
    goto LABEL_11;
  }

  return v2;
}

uint64_t sub_21DEB8B90(int a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a1 == 2)
  {
    if (a3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (a3 == 2 || ((a3 ^ a1) & 1) != 0)
    {
      return v4 & 1;
    }
  }

  v5 = *(a2 + 16);
  if (v5 != *(a4 + 16))
  {
    return 0;
  }

  if (v5 && a2 != a4)
  {
    v6 = (a2 + 32);
    v7 = (a4 + 32);
    do
    {
      v8 = *v6 ^ *v7;
      if (v8)
      {
        break;
      }

      ++v6;
      ++v7;
      --v5;
    }

    while (v5);
    v4 = v8 ^ 1;
    return v4 & 1;
  }

  return 1;
}

BOOL sub_21DEB8C38(uint64_t a1, uint64_t a2)
{
  if (!_s17SceneIntelligence10JSONSchemaV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = *(type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = *(a1 + v4 + 16);
  v8 = *(a1 + v4 + 24);
  v9 = (a2 + v4);
  v10 = *(a2 + v4 + 8);
  v11 = *(a2 + v4 + 16);
  v12 = *(a2 + v4 + 24);
  if (v6)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 == *v9)
    {
      v13 = v10;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if ((v8 & 1) == 0)
  {
    if (v7 == v11)
    {
      v15 = v12;
    }

    else
    {
      v15 = 1;
    }

    return (v15 & 1) == 0;
  }

  return (v12 & 1) != 0;
}

uint64_t sub_21DEB8CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v36 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E30, &qword_21DED5E38);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v36 - v15;
  v17 = (&v36 + *(v14 + 56) - v15);
  sub_21DEBABEC(a1, &v36 - v15, type metadata accessor for JSONSchema.SchemaType.ObjectType);
  sub_21DEBABEC(a2, v17, type metadata accessor for JSONSchema.SchemaType.ObjectType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21DEBABEC(v16, v10, type metadata accessor for JSONSchema.SchemaType.ObjectType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21DEBAC74(v17, v6, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
      if (_s17SceneIntelligence10JSONSchemaV2eeoiySbAC_ACtFZ_0(v10, v6))
      {
        v18 = *(v4 + 20);
        v19 = *&v10[v18];
        v20 = v10[v18 + 8];
        v37 = *&v10[v18 + 16];
        v21 = v10[v18 + 24];
        v22 = &v6[v18];
        v23 = *v22;
        v24 = v22[8];
        v25 = *(v22 + 2);
        v26 = v22[24];
        sub_21DEBB17C(v6, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
        if (v20)
        {
          if (v24)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v19 == v23)
          {
            v34 = v24;
          }

          else
          {
            v34 = 1;
          }

          if ((v34 & 1) == 0)
          {
LABEL_25:
            if (v21)
            {
              if (v26)
              {
LABEL_32:
                sub_21DEBB17C(v10, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
LABEL_33:
                sub_21DEBB17C(v16, type metadata accessor for JSONSchema.SchemaType.ObjectType);
                return 1;
              }
            }

            else
            {
              if (v37 == v25)
              {
                v35 = v26;
              }

              else
              {
                v35 = 1;
              }

              if ((v35 & 1) == 0)
              {
                goto LABEL_32;
              }
            }
          }
        }
      }

      else
      {
        sub_21DEBB17C(v6, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
      }

      sub_21DEBB17C(v10, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
LABEL_18:
      sub_21DEBB17C(v16, type metadata accessor for JSONSchema.SchemaType.ObjectType);
      return 0;
    }

    sub_21DEBB17C(v10, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
  }

  else
  {
    sub_21DEBABEC(v16, v12, type metadata accessor for JSONSchema.SchemaType.ObjectType);
    v27 = *v12;
    v28 = v12[1];
    v29 = v12[2];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = v17[1];
      v31 = v17[2];
      if (sub_21DEAFBD8(v27, *v17) & 1) != 0 && (sub_21DEB08B8(v28, v30))
      {
        v32 = sub_21DEB06B8(v29, v31);

        if (v32)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }

      goto LABEL_18;
    }
  }

  sub_21DE5CD00(v16, &qword_27CE94E30, &qword_21DED5E38);
  return 0;
}

uint64_t sub_21DEB9120(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for JSONSchema.SchemaType.ObjectSchema(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v69 - v8;
  v10 = type metadata accessor for JSONSchema.SchemaType.ArraySchema(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v69 - v15;
  v17 = a1 >> 61;
  if ((a1 >> 61) <= 3)
  {
    if (v17 <= 1)
    {
      if (!v17)
      {
        if (!(a2 >> 61))
        {
          v18 = v14;
          v19 = swift_projectBox();
          v20 = swift_projectBox();
          sub_21DEBABEC(v19, v16, type metadata accessor for JSONSchema.SchemaType.ArraySchema);
          sub_21DEBABEC(v20, v13, type metadata accessor for JSONSchema.SchemaType.ArraySchema);
          if (_s17SceneIntelligence10JSONSchemaV2eeoiySbAC_ACtFZ_0(v16, v13))
          {
            v21 = v18;
            v22 = &v16[*(v18 + 20)];
            v23 = *v22;
            v24 = v22[8];
            v25 = *(v22 + 2);
            v26 = v22[24];
            sub_21DEBB17C(v16, type metadata accessor for JSONSchema.SchemaType.ArraySchema);
            v27 = &v13[*(v21 + 20)];
            v28 = *v27;
            v29 = v27[8];
            v30 = *(v27 + 2);
            v31 = v27[24];
            sub_21DEBB17C(v13, type metadata accessor for JSONSchema.SchemaType.ArraySchema);
            if (v24)
            {
              if (!v29)
              {
                return 0;
              }
            }

            else
            {
              if (v23 == v28)
              {
                v66 = v29;
              }

              else
              {
                v66 = 1;
              }

              if (v66)
              {
                return 0;
              }
            }

            if (v26)
            {
              if ((v31 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              if (v25 == v30)
              {
                v68 = v31;
              }

              else
              {
                v68 = 1;
              }

              if (v68)
              {
                return 0;
              }
            }

            return 1;
          }

          sub_21DEBB17C(v13, type metadata accessor for JSONSchema.SchemaType.ArraySchema);
          sub_21DEBB17C(v16, type metadata accessor for JSONSchema.SchemaType.ArraySchema);
        }

        return 0;
      }

      if (a2 >> 61 != 1)
      {
        return 0;
      }

      v56 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v57 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (v56 == 2)
      {
        if (v57 != 2)
        {
          return 0;
        }
      }

      else if (v57 == 2 || ((v57 ^ v56) & 1) != 0)
      {
        return 0;
      }

      return (sub_21DEB09A4(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18)) & 1) != 0;
    }

    if (v17 == 2)
    {
      v35 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v73 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v74 = v35;
      v75 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v36 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v69 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v70 = v36;
      v37 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v72 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v71 = v37;
      if (a2 >> 61 != 2)
      {
        return 0;
      }

      v38 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v80 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v81 = v38;
      v82 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v39 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v76 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v77 = v39;
      v40 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v78 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v79 = v40;
      return sub_21DEB878C(&v69, &v76);
    }

    else
    {
      v59 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v73 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v74 = v59;
      v75 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v60 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v69 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v70 = v60;
      v61 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v72 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v71 = v61;
      if (a2 >> 61 != 3)
      {
        return 0;
      }

      v62 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v80 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v81 = v62;
      v82 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v63 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v76 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v77 = v63;
      v64 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v78 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v79 = v64;
      return sub_21DEB8970(&v69, &v76);
    }
  }

  if (v17 > 5)
  {
    if (v17 == 6)
    {
      if (a2 >> 61 != 6)
      {
        return 0;
      }

      v41 = a1 & 0x1FFFFFFFFFFFFFFFLL;
      v42 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v43 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v44 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v45 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v47 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v46 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x48);
      v48 = a2 & 0x1FFFFFFFFFFFFFFFLL;
      v49 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v50 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v51 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v52 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v53 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v55 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v54 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x48);
      if (*(v41 + 24))
      {
        if (!v49)
        {
          return 0;
        }
      }

      else
      {
        if (*(v41 + 16) == *(v48 + 16))
        {
          v65 = v49;
        }

        else
        {
          v65 = 1;
        }

        if (v65)
        {
          return 0;
        }
      }

      if (v43)
      {
        if (!v51)
        {
          return 0;
        }
      }

      else
      {
        if (v42 == v50)
        {
          v67 = v51;
        }

        else
        {
          v67 = 1;
        }

        if (v67)
        {
          return 0;
        }
      }

      if (v45)
      {
        if (!v53 || (v44 != v52 || v45 != v53) && (sub_21DEC7610() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v53)
      {
        return 0;
      }

      if ((sub_21DEB08B8(v47, v55) & 1) == 0)
      {
        return 0;
      }

      if (v46)
      {
        if (!v54 || (sub_21DEB08B8(v46, v54) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v54)
      {
        return 0;
      }
    }

    else if (a2 != 0xE000000000000000)
    {
      return 0;
    }

    return 1;
  }

  if (v17 == 4)
  {
    if (a2 >> 61 != 4)
    {
      return 0;
    }

    v32 = swift_projectBox();
    v33 = swift_projectBox();
    sub_21DEBABEC(v32, v9, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
    sub_21DEBABEC(v33, v7, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
    LOBYTE(v33) = sub_21DEB8CD0(v9, v7);
    sub_21DEBB17C(v7, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
    sub_21DEBB17C(v9, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
    return v33;
  }

  if (a2 >> 61 != 5)
  {
    return 0;
  }

  if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
  {
    return 1;
  }

  return sub_21DEC7610();
}

BOOL _s17SceneIntelligence10JSONSchemaV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DEC6880();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E38, &qword_21DED5E40);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = *(a1 + 48);
  v27[2] = *(a1 + 32);
  v27[3] = v14;
  v15 = *(a1 + 80);
  v27[4] = *(a1 + 64);
  v27[5] = v15;
  v16 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v16;
  v17 = *(a2 + 48);
  v28[2] = *(a2 + 32);
  v28[3] = v17;
  v18 = *(a2 + 80);
  v28[4] = *(a2 + 64);
  v28[5] = v18;
  v19 = *(a2 + 16);
  v28[0] = *a2;
  v28[1] = v19;
  if ((sub_21DEB8574(v27, v28) & 1) == 0)
  {
    return 0;
  }

  if ((sub_21DEB9120(*(a1 + 96), *(a2 + 96)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_21DEAAD54() & 1) == 0)
  {
    return 0;
  }

  v20 = type metadata accessor for JSONSchema(0);
  if ((sub_21DEC6930() & 1) == 0)
  {
    return 0;
  }

  v21 = *(v20 + 32);
  v22 = *(v11 + 48);
  sub_21DE5C6E4(a1 + v21, v13, &qword_27CE93F60, qword_21DECD138);
  sub_21DE5C6E4(a2 + v21, &v13[v22], &qword_27CE93F60, qword_21DECD138);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) == 1)
  {
    if (v23(&v13[v22], 1, v4) == 1)
    {
      sub_21DE5CD00(v13, &qword_27CE93F60, qword_21DECD138);
      return 1;
    }

    goto LABEL_10;
  }

  sub_21DE5C6E4(v13, v10, &qword_27CE93F60, qword_21DECD138);
  if (v23(&v13[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_10:
    sub_21DE5CD00(v13, &qword_27CE94E38, &qword_21DED5E40);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v22], v4);
  sub_21DEB5F2C(&qword_27CE94E40, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v25 = sub_21DEC6D70();
  v26 = *(v5 + 8);
  v26(v7, v4);
  v26(v10, v4);
  sub_21DE5CD00(v13, &qword_27CE93F60, qword_21DECD138);
  return (v25 & 1) != 0;
}

BOOL sub_21DEB9A90(uint64_t a1, uint64_t a2)
{
  if (!_s17SceneIntelligence10JSONSchemaV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = *(type metadata accessor for JSONSchema.SchemaType.ArraySchema(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = *(a1 + v4 + 16);
  v8 = *(a1 + v4 + 24);
  v9 = (a2 + v4);
  v10 = *(a2 + v4 + 8);
  v11 = *(a2 + v4 + 16);
  v12 = *(a2 + v4 + 24);
  if (v6)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 == *v9)
    {
      v13 = v10;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if ((v8 & 1) == 0)
  {
    if (v7 == v11)
    {
      v15 = v12;
    }

    else
    {
      v15 = 1;
    }

    return (v15 & 1) == 0;
  }

  return (v12 & 1) != 0;
}

uint64_t sub_21DEB9B28(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D4B4F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_21DE5268C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_21DEB9BC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D4B4F0](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_21DEB738C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_21DEB9C34(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D4B4F0](v2, MEMORY[0x277D839F8], MEMORY[0x277D83A18]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_21DEB746C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_21DEB9CA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DEC7470();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21DEB9CF4()
{
  result = qword_27CE94CC8;
  if (!qword_27CE94CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94CC8);
  }

  return result;
}

uint64_t sub_21DEB9D48@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E48, &unk_21DED5E48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21DEB9CF4();
  sub_21DEC77E0();
  if (v2)
  {
    v45 = v2;
    v43 = 0;
    __swift_destroy_boxed_opaque_existential_0(v44);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = v43;
    v62 = 0;
    v63 = 0;
    return sub_21DEBADD0(&v52);
  }

  else
  {
    LOBYTE(v52) = 0;
    *&v42 = sub_21DEC74A0();
    *(&v42 + 1) = v11;
    LOBYTE(v52) = 1;
    v41 = sub_21DEC74A0();
    v40 = v12;
    LOBYTE(v52) = 2;
    v13 = sub_21DEC74A0();
    v39 = v14;
    LOBYTE(v52) = 3;
    v15 = sub_21DEC74A0();
    v38 = v16;
    v37 = a2;
    LOBYTE(v52) = 4;
    v17 = sub_21DEC74A0();
    v43 = v18;
    v64 = 5;
    v19 = sub_21DEC74A0();
    v45 = 0;
    v20 = v19;
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    v23 = v42;
    v46 = v42;
    v24 = *(&v42 + 1);
    *&v47 = v41;
    v25 = v40;
    *(&v47 + 1) = v40;
    *&v48 = v13;
    v36 = v13;
    v26 = v39;
    *(&v48 + 1) = v39;
    *&v49 = v15;
    v35 = v15;
    v27 = v38;
    *(&v49 + 1) = v38;
    *&v50 = v17;
    v28 = v17;
    v29 = v43;
    *(&v50 + 1) = v43;
    *&v51 = v20;
    *(&v51 + 1) = v22;
    sub_21DEBA2A0(&v46, &v52);
    __swift_destroy_boxed_opaque_existential_0(v44);
    v52 = v23;
    v53 = v24;
    v54 = v41;
    v55 = v25;
    v56 = v36;
    v57 = v26;
    v58 = v35;
    v59 = v27;
    v60 = v28;
    v61 = v29;
    v62 = v20;
    v63 = v22;
    result = sub_21DEBADD0(&v52);
    v30 = v49;
    v31 = v37;
    v37[2] = v48;
    v31[3] = v30;
    v32 = v51;
    v31[4] = v50;
    v31[5] = v32;
    v33 = v47;
    *v31 = v46;
    v31[1] = v33;
  }

  return result;
}

unint64_t sub_21DEBA2F8()
{
  result = qword_27CEA3420;
  if (!qword_27CEA3420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA3420);
  }

  return result;
}

unint64_t sub_21DEBA34C()
{
  result = qword_27CEA3428;
  if (!qword_27CEA3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA3428);
  }

  return result;
}

uint64_t sub_21DEBA3A0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_21DEC77E0();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v12 = v18;
    v22 = 0;
    v7 = sub_21DEC74D0();
    v14 = v13;
    v21 = 1;
    sub_21DEC74D0();
    v17 = v16;
    (*(v12 + 8))(v11, v9);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v20 = v14 & 1;
    v19 = v17 & 1;
  }

  return v7;
}

unint64_t sub_21DEBA570()
{
  result = qword_27CEA3430;
  if (!qword_27CEA3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA3430);
  }

  return result;
}

unint64_t sub_21DEBA5C4()
{
  result = qword_27CEA3438;
  if (!qword_27CEA3438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA3438);
  }

  return result;
}

unint64_t sub_21DEBA618()
{
  result = qword_27CEA3440[0];
  if (!qword_27CEA3440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CEA3440);
  }

  return result;
}

uint64_t sub_21DEBA66C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000021DEDA860 == a2 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D756D696E696DLL && a2 == 0xE700000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021DEDA880 == a2 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D756D6978616DLL && a2 == 0xE700000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C7069746C756DLL && a2 == 0xEA0000000000664FLL)
  {

    return 4;
  }

  else
  {
    v5 = sub_21DEC7610();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_21DEBA838@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = &v30 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_21DEC77E0();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v9;
  v13 = v36;
  v47 = 0;
  v14 = sub_21DEC74C0();
  v16 = v15;
  v17 = v14;
  v46 = 1;
  v18 = sub_21DEC74C0();
  v20 = v19;
  v35 = v18;
  v45 = 2;
  v21 = sub_21DEC74C0();
  v33 = v22;
  v34 = v21;
  v44 = 3;
  v23 = sub_21DEC74C0();
  v31 = v24;
  v32 = v23;
  v43 = 4;
  v25 = sub_21DEC74C0();
  v27 = v26;
  v28 = *(v12 + 8);
  v30 = v25;
  v28(v11, v37);
  v42 = v16 & 1;
  v41 = v20 & 1;
  v40 = v33 & 1;
  v39 = v31 & 1;
  v38 = v27 & 1;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *v13 = v17;
  *(v13 + 8) = v42;
  *(v13 + 16) = v35;
  *(v13 + 24) = v41;
  *(v13 + 32) = v34;
  *(v13 + 40) = v40;
  *(v13 + 48) = v32;
  *(v13 + 56) = v39;
  *(v13 + 64) = v30;
  *(v13 + 72) = v38;
  return result;
}

unint64_t sub_21DEBAB44()
{
  result = qword_27CE94CF8;
  if (!qword_27CE94CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94CF8);
  }

  return result;
}

unint64_t sub_21DEBAB98()
{
  result = qword_27CE94D00;
  if (!qword_27CE94D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94D00);
  }

  return result;
}

uint64_t sub_21DEBABEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DEBAC74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21DEBACDC()
{
  result = qword_27CE94D08;
  if (!qword_27CE94D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94D08);
  }

  return result;
}

unint64_t sub_21DEBAD30(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DEC7470();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21DEBAD7C()
{
  result = qword_27CE94D20;
  if (!qword_27CE94D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94D20);
  }

  return result;
}

unint64_t sub_21DEBAE00()
{
  result = qword_27CE94D28;
  if (!qword_27CE94D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94D28);
  }

  return result;
}

unint64_t sub_21DEBAE54()
{
  result = qword_27CE94D38;
  if (!qword_27CE94D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94D30, &qword_21DED4AE8);
    sub_21DEB5F2C(&qword_27CE94CB8, type metadata accessor for JSONSchema, &protocol conformance descriptor for JSONSchema);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94D38);
  }

  return result;
}

unint64_t sub_21DEBAF30()
{
  result = qword_27CE94738;
  if (!qword_27CE94738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE93E90, &qword_21DECCA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94738);
  }

  return result;
}

unint64_t sub_21DEBAFAC()
{
  result = qword_27CE94D50;
  if (!qword_27CE94D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94D30, &qword_21DED4AE8);
    sub_21DEB5F2C(&qword_27CE94CB0, type metadata accessor for JSONSchema, &protocol conformance descriptor for JSONSchema);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94D50);
  }

  return result;
}

uint64_t sub_21DEBB068(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21DEC6ED0();

    return sub_21DEC7010();
  }

  return result;
}

uint64_t sub_21DEBB104(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_21DEC75F0() & 1;
  }
}

uint64_t sub_21DEBB17C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21DEBB1DC()
{
  result = qword_27CE94D70;
  if (!qword_27CE94D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94D68, &qword_21DED4B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94D70);
  }

  return result;
}

unint64_t sub_21DEBB258()
{
  result = qword_27CE94D80;
  if (!qword_27CE94D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94D78, &qword_21DED4B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94D80);
  }

  return result;
}

unint64_t sub_21DEBB2D4()
{
  result = qword_27CE94D90;
  if (!qword_27CE94D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94D88, &qword_21DED4B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94D90);
  }

  return result;
}

unint64_t sub_21DEBB358()
{
  result = qword_27CE94D98;
  if (!qword_27CE94D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94D98);
  }

  return result;
}

unint64_t sub_21DEBB3B0()
{
  result = qword_27CE94DA0;
  if (!qword_27CE94DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94DA0);
  }

  return result;
}

unint64_t sub_21DEBB408()
{
  result = qword_27CE94DA8;
  if (!qword_27CE94DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94DA8);
  }

  return result;
}

unint64_t sub_21DEBB460()
{
  result = qword_27CE94DB0;
  if (!qword_27CE94DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94DB0);
  }

  return result;
}

unint64_t sub_21DEBB4B8()
{
  result = qword_27CE94DB8;
  if (!qword_27CE94DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94DB8);
  }

  return result;
}

unint64_t sub_21DEBB510()
{
  result = qword_27CE94DC0;
  if (!qword_27CE94DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94DC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17SceneIntelligence15JSONSchemaErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 48) & 7;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21DEBB59C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 49))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 48);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DEBB5D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_21DEBB628(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

void sub_21DEBB688(uint64_t a1)
{
  sub_21DEC6950();
  if (v1 <= 0x3F)
  {
    sub_21DEBB734(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21DEBB734(uint64_t a1)
{
  if (!qword_27CE94DC8)
  {
    sub_21DEC6880();
    v1 = sub_21DEC71C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE94DC8);
    }
  }
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

uint64_t sub_21DEBB7A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_21DEBB804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17SceneIntelligence10JSONSchemaV10SchemaTypeO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 == 7)
  {
    return (*a1 >> 3) + 7;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21DEBB8AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 8))
  {
    return (*a1 + 121);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21DEBB908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_21DEBB958(void *result, uint64_t a2)
{
  if (a2 < 7)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 7)) | 0xE000000000000000;
  }

  return result;
}

uint64_t sub_21DEBB9E4(uint64_t a1)
{
  result = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21DEBBA94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DEBBAB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21DEBBB38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DEBBB58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 73) = v3;
  return result;
}

uint64_t __swift_get_extra_inhabitant_index_47Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_21DEBBCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for JSONSchema(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
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

uint64_t sub_21DEBBD98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21DEBBDE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21DEBBE88(uint64_t a1)
{
  result = type metadata accessor for JSONSchema.SchemaType.ObjectType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
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

uint64_t sub_21DEBBF20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21DEBBF68(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for JSONSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21DEBC17C()
{
  result = qword_27CEA4E20[0];
  if (!qword_27CEA4E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CEA4E20);
  }

  return result;
}

unint64_t sub_21DEBC1D4()
{
  result = qword_27CEA5030[0];
  if (!qword_27CEA5030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CEA5030);
  }

  return result;
}

unint64_t sub_21DEBC22C()
{
  result = qword_27CEA5240[0];
  if (!qword_27CEA5240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CEA5240);
  }

  return result;
}

unint64_t sub_21DEBC284()
{
  result = qword_27CEA5450[0];
  if (!qword_27CEA5450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CEA5450);
  }

  return result;
}

unint64_t sub_21DEBC2DC()
{
  result = qword_27CEA5660[0];
  if (!qword_27CEA5660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CEA5660);
  }

  return result;
}

unint64_t sub_21DEBC334()
{
  result = qword_27CEA5770;
  if (!qword_27CEA5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA5770);
  }

  return result;
}

unint64_t sub_21DEBC38C()
{
  result = qword_27CEA5778;
  if (!qword_27CEA5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA5778);
  }

  return result;
}

unint64_t sub_21DEBC3E4()
{
  result = qword_27CEA5800;
  if (!qword_27CEA5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA5800);
  }

  return result;
}

unint64_t sub_21DEBC43C()
{
  result = qword_27CEA5808[0];
  if (!qword_27CEA5808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CEA5808);
  }

  return result;
}

unint64_t sub_21DEBC494()
{
  result = qword_27CEA5890;
  if (!qword_27CEA5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA5890);
  }

  return result;
}

unint64_t sub_21DEBC4EC()
{
  result = qword_27CEA5898[0];
  if (!qword_27CEA5898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CEA5898);
  }

  return result;
}

unint64_t sub_21DEBC544()
{
  result = qword_27CEA5920;
  if (!qword_27CEA5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA5920);
  }

  return result;
}

unint64_t sub_21DEBC59C()
{
  result = qword_27CEA5928[0];
  if (!qword_27CEA5928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CEA5928);
  }

  return result;
}

unint64_t sub_21DEBC5F4()
{
  result = qword_27CEA59B0;
  if (!qword_27CEA59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA59B0);
  }

  return result;
}

unint64_t sub_21DEBC64C()
{
  result = qword_27CEA59B8[0];
  if (!qword_27CEA59B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CEA59B8);
  }

  return result;
}

unint64_t sub_21DEBC6A0()
{
  result = qword_27CE94640;
  if (!qword_27CE94640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE93E90, &qword_21DECCA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94640);
  }

  return result;
}

unint64_t sub_21DEBC71C()
{
  result = qword_27CE94DE0;
  if (!qword_27CE94DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94D68, &qword_21DED4B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94DE0);
  }

  return result;
}

uint64_t objectdestroy_188Tm()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

unint64_t sub_21DEBC7D8()
{
  result = qword_27CE94DE8;
  if (!qword_27CE94DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94D78, &qword_21DED4B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94DE8);
  }

  return result;
}

unint64_t sub_21DEBC854()
{
  result = qword_27CE94DF0;
  if (!qword_27CE94DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94D88, &qword_21DED4B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94DF0);
  }

  return result;
}

uint64_t sub_21DEBC8D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94D58, &qword_21DED4B08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

uint64_t sub_21DEBC9D4(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_21DEC68B0();
  v8[0] = 0;
  v4 = [v2 JSONObjectWithData:v3 options:1 error:v8];

  if (v4)
  {
    v5 = v8[0];
    sub_21DEC7260();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    v7 = v8[0];
    sub_21DEC6820();

    return swift_willThrow();
  }
}

uint64_t sub_21DEBCAD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || a3 == 10 && a4 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else
  {
    MEMORY[0x223D4B2A0](8250, 0xE200000000000000);
    MEMORY[0x223D4B2A0](a3, a4);

    MEMORY[0x223D4B2A0](10, 0xE100000000000000);
    return a1;
  }
}

uint64_t sub_21DEBCBC4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v36 = sub_21DEBCE9C(10, 0xE100000000000000, a2, a3);
    sub_21DEBCFF8(0x20, 0xE100000000000000, a1);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
    v35[4] = sub_21DE53288();
    v35[5] = v7;
    v8 = sub_21DEC6D60();
    v10 = v9;

    v37 = 10;
    v38 = 0xE100000000000000;
    MEMORY[0x28223BE20](v11);
    v35[2] = &v37;

    v13 = sub_21DE7E79C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE53E58, v35, v4, a3, v12);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = (v13 + 56);
      v16 = MEMORY[0x277D84F90];
      do
      {
        v17 = *(v15 - 3);
        v18 = *(v15 - 2);
        v20 = *(v15 - 1);
        v19 = *v15;
        v37 = v8;
        v38 = v10;

        v21 = MEMORY[0x223D4B1D0](v17, v18, v20, v19);
        v23 = v22;

        MEMORY[0x223D4B2A0](v21, v23);

        v24 = v37;
        v25 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_21DE52454(0, *(v16 + 2) + 1, 1, v16);
        }

        v27 = *(v16 + 2);
        v26 = *(v16 + 3);
        if (v27 >= v26 >> 1)
        {
          v16 = sub_21DE52454((v26 > 1), v27 + 1, 1, v16);
        }

        *(v16 + 2) = v27 + 1;
        v28 = &v16[16 * v27];
        *(v28 + 4) = v24;
        *(v28 + 5) = v25;
        v15 += 4;
        --v14;
      }

      while (v14);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    if (v36)
    {
      v29 = 10;
    }

    else
    {
      v29 = 0;
    }

    if (v36)
    {
      v30 = 0xE100000000000000;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    v37 = v16;
    v31 = sub_21DEC6D60();
    v33 = v32;

    v37 = v29;
    v38 = v30;

    MEMORY[0x223D4B2A0](v31, v33);

    return v37;
  }

  else
  {
  }

  return v4;
}

uint64_t sub_21DEBCE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_21DEC6F40();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_21DEC6F40();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_21DEC7610();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_21DEC6F40();
      v7 = v9;
    }

    while (v9);
  }

  sub_21DEC6F40();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void *sub_21DEBCFF8(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_21DEC7090();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_21DEBD094()
{
  v0 = sub_21DEBD374();
  swift_beginAccess();
  v1 = v0[1];
  qword_280F7AD10 = *v0;
  qword_280F7AD08 = v1;
}

uint64_t sub_21DEBD18C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21DEC6D20();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_280F7AD00 != -1)
  {
    swift_once();
  }

  return sub_21DEC6D10();
}

uint64_t sub_21DEBD26C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_21DEC6D20();

  return __swift_project_value_buffer(v4, a2);
}

void sub_21DEBD2C0()
{
  type metadata accessor for FrameworkConstants();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_21DEC6DB0();
    v5 = v4;
  }

  else
  {
    v5 = 0x800000021DEDA930;
    v3 = 0xD00000000000002ALL;
  }

  qword_280F7B938 = v3;
  unk_280F7B940 = v5;
}

uint64_t *sub_21DEBD374()
{
  if (qword_280F7B860 != -1)
  {
    swift_once();
  }

  return &qword_280F7B938;
}

unint64_t sub_21DEBD3E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21DEC72F0();

  MEMORY[0x223D4B2A0](v1, v2);
  return 0xD000000000000010;
}

uint64_t sub_21DEBD49C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_21DEBD4E4()
{
  type metadata accessor for JSONSchemaRefDirectory();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_27CEA6780 = result;
  return result;
}

uint64_t *sub_21DEBD51C()
{
  if (qword_27CEA5A50 != -1)
  {
    swift_once();
  }

  return &qword_27CEA6780;
}

uint64_t sub_21DEBD56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C20, &qword_21DED47C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v15 = sub_21DEC6920();
  v16 = v9;

  MEMORY[0x223D4B2A0](0x73666564242F232FLL, 0xE90000000000002FLL);

  MEMORY[0x223D4B2A0](a2, a3);

  v10 = v15;
  v11 = v16;
  sub_21DEA9FD4(a1, v8);
  v12 = type metadata accessor for JSONSchema(0);
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  swift_beginAccess();
  sub_21DEBD6E8(v8, v10, v11);
  return swift_endAccess();
}

uint64_t sub_21DEBD6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C20, &qword_21DED47C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for JSONSchema(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_21DE5CD00(a1, &qword_27CE94C20, &qword_21DED47C0);
    sub_21DEBDE5C(a2, a3, v9);

    return sub_21DE5CD00(v9, &qword_27CE94C20, &qword_21DED47C0);
  }

  else
  {
    sub_21DEAA038(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_21DEBE29C(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_21DEBD8A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v62 = a3;
  v7 = sub_21DEC6830();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_21DEC6880();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v49 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v50 = &v49 - v17;
  MEMORY[0x28223BE20](v16);
  v54 = &v49 - v18;
  v19 = type metadata accessor for JSONSchema(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v49 - v25;
  v27 = (*(*v4 + 88))(v24);
  if (*(v27 + 16))
  {
    v28 = sub_21DE7ADAC(a1, a2);
    if (v29)
    {
      sub_21DEA9FD4(*(v27 + 56) + *(v20 + 72) * v28, v23);

      sub_21DEAA038(v23, v26);
      return sub_21DEAA038(v26, v55);
    }
  }

  v31 = a1;

  sub_21DEBDFB4(v62, v11);
  v32 = v12;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21DE5CD00(v11, &qword_27CE93F60, qword_21DECD138);
  }

  else
  {
    v33 = v54;
    (*(v13 + 32))(v54, v11, v12);
    if (sub_21DEC6FD0())
    {
      v34 = sub_21DEC6EE0();
      v35 = sub_21DEBDDD8(v34, v31, a2);
      v56 = 0x6E6F736A2ELL;
      v57 = 0xE500000000000000;
      v36 = MEMORY[0x223D4B1D0](v35);
      v38 = v37;

      v60 = v36;
      v61 = v38;
      sub_21DEC6EF0();
      v56 = sub_21DEC7200();
      v57 = v39;
      v58 = v40;
      v59 = v41;
      v43 = v51;
      v42 = v52;
      v44 = v53;
      (*(v52 + 104))(v51, *MEMORY[0x277CC91D8], v53);
      sub_21DE99AD8();
      v45 = v50;
      sub_21DEC6870();
      (*(v42 + 8))(v43, v44);

      v46 = v49;
      (*(v13 + 16))(v49, v45, v32);
      JSONSchema.init(url:)(v46, v55);
      v47 = *(v13 + 8);
      v47(v45, v32);
      return (v47)(v33, v32);
    }

    (*(v13 + 8))(v33, v12);
  }

  sub_21DEBE024();
  swift_allocError();
  *v48 = v31;
  v48[1] = a2;
  swift_willThrow();
}

unint64_t sub_21DEBDDD8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_21DEC7010();
  }

  __break(1u);
  return result;
}

uint64_t sub_21DEBDE24()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21DEBDE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_21DE7ADAC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21DEB7134();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for JSONSchema(0);
    v19 = *(v12 - 8);
    sub_21DEAA038(v11 + *(v19 + 72) * v8, a3);
    sub_21DEBE0B0(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for JSONSchema(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_21DEBDFB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DEBE024()
{
  result = qword_27CE94E70;
  if (!qword_27CE94E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94E70);
  }

  return result;
}

unint64_t sub_21DEBE0B0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DEC7290() + 1) & ~v5;
    while (1)
    {
      sub_21DEC7770();

      sub_21DEC6E90();
      v9 = sub_21DEC77B0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for JSONSchema(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

  return result;
}

uint64_t sub_21DEBE29C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_21DE7ADAC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_21DEB7134();
      goto LABEL_7;
    }

    sub_21DEB6454(v15, a4 & 1);
    v22 = sub_21DE7ADAC(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_21DEC7700();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for JSONSchema(0) - 8) + 72) * v12;

    return sub_21DEAACF0(a1, v20);
  }

LABEL_13:
  sub_21DEBE400(v12, a2, a3, a1, v18);
}

uint64_t sub_21DEBE400(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for JSONSchema(0);
  result = sub_21DEAA038(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t *sub_21DEBE498@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_21DEBE4BC(unint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    sub_21DEC72F0();

    v8 = 0x6320746F6E6E6143;
    MEMORY[0x223D4B2A0](a1, a2);
    v5 = 0xD000000000000014;
    v6 = 0x800000021DEDAA00;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_21DEC72F0();

    v8 = 0xD00000000000001ELL;
    v5 = a1;
    v6 = a2;
LABEL_5:
    MEMORY[0x223D4B2A0](v5, v6);
    return v8;
  }

  if (a1 | a2)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_21DEBE610()
{
  v0 = sub_21DEC6770();
  __swift_allocate_value_buffer(v0, qword_27CEA5B68);
  __swift_project_value_buffer(v0, qword_27CEA5B68);
  return sub_21DEC6750();
}

double sub_21DEBE668()
{
  sub_21DEC1814(&unk_282F2B568, v1);
  result = *v1;
  xmmword_27CEA6790 = v1[0];
  unk_27CEA67A0 = v1[1];
  qword_27CEA67B0 = v2;
  return result;
}

uint64_t sub_21DEBE6E0(unint64_t a1, char *a2)
{
  v68 = a2;
  v67 = a1;
  v4 = a2;
  if (qword_27CEA5B60 != -1)
  {
    goto LABEL_140;
  }

  while (1)
  {
    v5 = sub_21DEC6770();
    __swift_project_value_buffer(v5, qword_27CEA5B68);
    sub_21DE531EC();
    result = sub_21DEC7220();
    v7 = *(result + 16);
    v8 = v7 >= 3 ? 3 : *(result + 16);
    if (!v7)
    {
      break;
    }

    v64 = v4;
    v9 = result + 32;
    v4 = &v67 + 1;

    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v10 == v8)
      {
        __break(1u);
LABEL_128:

LABEL_129:

        sub_21DEC2000();
        swift_allocError();
        *v62 = v3;
        *(v62 + 8) = v2;
        *(v62 + 16) = 0;
        goto LABEL_130;
      }

      v12 = (v9 + 16 * v10);
      v3 = *v12;
      v2 = v12[1];
      v13 = HIBYTE(v2) & 0xF;
      v14 = v3 & 0xFFFFFFFFFFFFLL;
      if ((v2 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v15 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v15)
      {
        goto LABEL_128;
      }

      if ((v2 & 0x1000000000000000) == 0)
      {
        break;
      }

      swift_bridgeObjectRetain_n();
      v18 = sub_21DEC11C0(v3, v2, 10);
      v70 = v38;

      if (v70)
      {
        goto LABEL_129;
      }

LABEL_70:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_21DEA0448(0, *(v11 + 2) + 1, 1, v11);
      }

      v3 = *(v11 + 2);
      v37 = *(v11 + 3);
      v2 = v3 + 1;
      if (v3 >= v37 >> 1)
      {
        v11 = sub_21DEA0448((v37 > 1), v3 + 1, 1, v11);
      }

      ++v10;
      *(v11 + 2) = v2;
      *&v11[8 * v3 + 32] = v18;
      if (v10 == v8)
      {

        v4 = v64;
        goto LABEL_80;
      }
    }

    if ((v2 & 0x2000000000000000) != 0)
    {
      v67 = v3;
      v68 = (v2 & 0xFFFFFFFFFFFFFFLL);
      if (v3 == 43)
      {
        if (!v13)
        {
          goto LABEL_139;
        }

        if (--v13)
        {
          v18 = 0;
          v28 = &v67 + 1;
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
              goto LABEL_69;
            }
          }
        }
      }

      else if (v3 == 45)
      {
        if (!v13)
        {
          goto LABEL_137;
        }

        if (--v13)
        {
          v18 = 0;
          v22 = &v67 + 1;
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
              goto LABEL_69;
            }
          }
        }
      }

      else if (v13)
      {
        v18 = 0;
        v33 = &v67;
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

          v33 = (v33 + 1);
          if (!--v13)
          {
            goto LABEL_69;
          }
        }
      }

LABEL_68:
      v18 = 0;
      LOBYTE(v13) = 1;
LABEL_69:
      v69 = v13;
      v36 = v13;

      if (v36)
      {
        goto LABEL_129;
      }

      goto LABEL_70;
    }

    if ((v3 & 0x1000000000000000) != 0)
    {
      v16 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v16 = sub_21DEC7370();
    }

    v17 = *v16;
    if (v17 == 43)
    {
      if (v14 < 1)
      {
        goto LABEL_138;
      }

      v13 = v14 - 1;
      if (v14 == 1)
      {
        goto LABEL_68;
      }

      v18 = 0;
      if (v16)
      {
        v25 = v16 + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            goto LABEL_68;
          }

          v27 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            goto LABEL_68;
          }

          v18 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            goto LABEL_68;
          }

          ++v25;
          if (!--v13)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_60;
    }

    if (v17 != 45)
    {
      if (!v14)
      {
        goto LABEL_68;
      }

      v18 = 0;
      if (v16)
      {
        while (1)
        {
          v31 = *v16 - 48;
          if (v31 > 9)
          {
            goto LABEL_68;
          }

          v32 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            goto LABEL_68;
          }

          v18 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            goto LABEL_68;
          }

          ++v16;
          if (!--v14)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_60;
    }

    if (v14 >= 1)
    {
      v13 = v14 - 1;
      if (v14 == 1)
      {
        goto LABEL_68;
      }

      v18 = 0;
      if (v16)
      {
        v19 = v16 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            goto LABEL_68;
          }

          v21 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            goto LABEL_68;
          }

          v18 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            goto LABEL_68;
          }

          ++v19;
          if (!--v13)
          {
            goto LABEL_69;
          }
        }
      }

LABEL_60:
      LOBYTE(v13) = 0;
      goto LABEL_69;
    }

    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    swift_once();
  }

  v11 = MEMORY[0x277D84F90];
LABEL_80:
  v39 = *(v11 + 2);
  if (v39 == 3)
  {
    v48 = *v66;
    v47 = v66[1];
    v49 = v66[2];
    if (*v66)
    {
      v50 = *(v11 + 4);
      if (v50 < 1)
      {
        v51 = 0;
        if (v48 >= 1)
        {
          goto LABEL_97;
        }
      }

      else
      {
        if (v50 <= 0x1F)
        {
          goto LABEL_101;
        }

        v51 = 0;
        if (v48 > 0)
        {
LABEL_97:
          while (1)
          {
            v53 = v49 < v48;
            v54 = __OFADD__(v49, v53);
            v49 += v53;
            if (v54)
            {
              goto LABEL_150;
            }

            v48 = v47 < v48;
            v54 = __OFADD__(v47, v48);
            v47 += v48;
            if (!v54)
            {
              goto LABEL_108;
            }

            __break(1u);
LABEL_101:
            if (v48 == 1)
            {
              if ((*(v11 + 6) - 32) < 0xFFFFFFFFFFFFFFE1)
              {
                goto LABEL_105;
              }

              v51 = 1;
              goto LABEL_108;
            }

            v61 = *(v11 + 5);
            if (v61 >= 1 && v61 <= 0x1F)
            {
              if (v48 == 2)
              {
                v51 = 2;
                goto LABEL_108;
              }

              v63 = *(v11 + 6);
              if (v63 >= 1)
              {
                v51 = v48;
                if (v63 <= 0x1F)
                {
                  goto LABEL_108;
                }
              }

              v51 = 2;
              if (v48 <= 2)
              {
                break;
              }
            }

            else
            {
              v51 = 1;
              if (v48 <= 1)
              {
                break;
              }
            }
          }
        }
      }
    }

    else if ((*(v11 + 5) - 32) >= 0xFFFFFFFFFFFFFFE1)
    {
      if ((*(v11 + 6) - 32) >= 0xFFFFFFFFFFFFFFE1)
      {
        v51 = 0;
        goto LABEL_108;
      }

LABEL_105:
      v51 = 2;
    }

    else
    {
      v51 = 1;
    }

    v55 = v48 < v49;
    v54 = __OFSUB__(v49, v55);
    v49 -= v55;
    if (v54)
    {
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v56 = v48 < v47;
    v54 = __OFSUB__(v47, v56);
    v47 -= v56;
    if (v54)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

LABEL_108:
    if (v47 <= 2)
    {
      v57 = v11 + 32;
      v58 = *&v11[8 * v47 + 32] - 13;
      v59 = __CFADD__(v58, 12);
      if (v58 >= 0xFFFFFFFFFFFFFFF4)
      {
        v60 = v49;
      }

      else
      {
        v60 = v47;
      }

      if (!v59)
      {
        v47 = v49;
      }

      if (v51 <= 2)
      {
        if (v47 <= 2)
        {
          if (v60 <= 2)
          {
            v44.value = *&v57[8 * v51];
            v45.value = *&v57[8 * v47];
            v46.value = *&v57[8 * v60];
            v44.is_nil = 0;
LABEL_118:
            v45.is_nil = 0;
LABEL_119:
            v46.is_nil = 0;
            EventDateComponents.init(year:month:day:)(v44, v45, v46);
            goto LABEL_131;
          }

          goto LABEL_145;
        }

LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v39 != 2)
  {
    sub_21DEC2000();
    swift_allocError();
    *v52 = a1;
    *(v52 + 8) = v4;
    *(v52 + 16) = 1;

LABEL_130:
    swift_willThrow();
LABEL_131:
  }

  v40 = v66[4];
  if (v40 > 1)
  {
    __break(1u);
    goto LABEL_142;
  }

  v41 = v11 + 32;
  v42 = *&v11[8 * v40 + 32];
  v43 = v66[3];
  if ((v42 - 13) >= 0xFFFFFFFFFFFFFFF4)
  {
    if (v43 > 1)
    {
      goto LABEL_149;
    }

    v46.value = *&v41[8 * v43];
    v44.value = 0;
    v44.is_nil = 1;
    v45.value = v42;
    goto LABEL_118;
  }

  if (v43 <= 1)
  {
    v45.value = *&v41[8 * v43];
    v44.value = 0;
    v44.is_nil = 1;
    v45.is_nil = 0;
    v46.value = v42;
    goto LABEL_119;
  }

LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Event.sanitize(comparingWith:language:)(Swift::OpaquePointer comparingWith, __C::NLLanguage language)
{
  v3 = v2;
  v6 = sub_21DEC6D20();
  v19[1] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v19[2] = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E80, qword_21DED5F70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  v11 = sub_21DEC6980();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for STXGuardrail();

  v12 = language._rawValue;
  v13 = sub_21DE513A0(comparingWith._rawValue, MEMORY[0x277D84F90], v12);
  (*(*v3 + 96))();
  sub_21DEBFA34(v13);

  v15 = (*(*v3 + 120))(v14);
  v16 = v15;
  v19[3] = v6;
  if (!(v15 >> 62))
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_10:

    Event.reorderDates(from:locale:)(comparingWith._rawValue, v10);
    sub_21DEC26C8(v10);

    return;
  }

  v17 = sub_21DEC7400();
  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v17 >= 1)
  {
    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D4B690](i, v16);
      }

      else
      {
      }

      sub_21DEBFA34(v13);
    }

    goto LABEL_10;
  }

  __break(1u);
}

unint64_t Event.sanitize(comparingWith:safetySensitiveWords:language:locale:defaultEventTitle:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v20 = a4;
  v11 = sub_21DEC6D20();
  v19[0] = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v19[2] = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for STXGuardrail();

  v13 = sub_21DE513A0(a1, a2, a3);
  (*(*v7 + 96))(v13);
  sub_21DEBFA34(v13);

  result = (*(*v7 + 120))(v14);
  v16 = result;
  v19[1] = v11;
  if (result >> 62)
  {
    result = sub_21DEC7400();
    v17 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_10;
    }
  }

  if (v17 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v17; ++i)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223D4B690](i, v16);
    }

    else
    {
    }

    sub_21DEBFA34(v13);
  }

LABEL_10:

  Event.reorderDates(from:locale:)(a1, v20);
}

unint64_t Event.sanitize(comparingWith:language:locale:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_21DEC6D20();
  MEMORY[0x28223BE20](v6);
  type metadata accessor for STXGuardrail();

  v7 = a2;
  v8 = sub_21DE513A0(a1, MEMORY[0x277D84F90], v7);
  (*(*v3 + 96))();
  sub_21DEBFA34(v8);

  result = (*(*v3 + 120))(v9);
  v11 = result;
  if (result >> 62)
  {
    result = sub_21DEC7400();
    v12 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223D4B690](i, v11);
    }

    else
    {
    }

    sub_21DEBFA34(v8);
  }

LABEL_10:

  Event.reorderDates(from:locale:)(a1, a3);
}

uint64_t sub_21DEBFA34(void *a1)
{
  v3 = sub_21DEC6D20();
  v4 = MEMORY[0x28223BE20](v3);
  v20[2] = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v20[3] = v20 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v9 = (*(*v1 + 120))(v8);
  v10 = (*a1 + 112);
  v21 = *v10;
  v22 = v10;
  v21(0x656C746974, 0xE500000000000000, v9, v11);
  v20[4] = a1;

  v13 = (*(*v1 + 168))(v12);
  v14 = v21;
  v21(0x6E6F697461636F6CLL, 0xE800000000000000, v13, v15);

  v17 = (*(*v1 + 192))(v16);
  v14(0x7365746F6ELL, 0xE500000000000000, v17, v18);
}

void Event.reorderDates(from:locale:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDateTimeComponents(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v90 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v90 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v90 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v90 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E80, qword_21DED5F70);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v90 - v20;
  sub_21DEC2730(a2, &v90 - v20);
  sub_21DEC1998(v21, &v111);
  if (!v2)
  {
    v97 = v16;
    v98 = v13;
    v95 = v10;
    v96 = v7;
    if (qword_27CEA5B80 != -1)
    {
      goto LABEL_103;
    }

    while (1)
    {
      if (v111 == xmmword_27CEA6790 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v112, *(&xmmword_27CEA6790 + 8)), vceqq_s64(v113, unk_27CEA67A8)))) & 1) != 0)
      {
        return;
      }

      v23 = sub_21DEC2054(v22, &v111);
      v90 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94960, &qword_21DED33F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DED0E70;
      v25 = v114;
      *(inited + 32) = (*(*v114 + 96))();
      v26 = (*(*v25 + 120))();
      *v110 = inited;
      sub_21DE98880(v26);
      v27 = *v110;
      v93 = *(v23 + 2);
      if (!v93)
      {
LABEL_97:

        return;
      }

      if (*v110 >> 62)
      {
        v88 = *v110;
        v89 = sub_21DEC7400();
        v27 = v88;
        v106 = v89;
      }

      else
      {
        v106 = *((*v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = 0;
      v91 = v23 + 32;
      v104 = v27;
      v105 = v27 & 0xC000000000000001;
      v92 = v23;
      while (1)
      {
        if (v28 >= *(v23 + 2))
        {
          goto LABEL_100;
        }

        v94 = v28;
        if (v106)
        {
          break;
        }

LABEL_9:
        v28 = v94 + 1;
        v23 = v92;
        if (v94 + 1 == v93)
        {
          goto LABEL_97;
        }
      }

      if (v106 < 1)
      {
        goto LABEL_101;
      }

      v29 = 0;
      v30 = &v91[48 * v94];
      v31 = *v30;
      v114 = v30[1];
      v32 = v30[3];
      v107 = v30[2];
      v34 = v30[4];
      v33 = v30[5];
      v101 = v34;
      v100 = v33;
      v102 = v31 % 100;
      v103 = v32;
      v99 = v32 % 100;
      while (1)
      {
        if (v105)
        {
          v35 = MEMORY[0x223D4B690](v29);
        }

        else
        {
          v35 = *(v27 + 8 * v29 + 32);
        }

        v36 = *(*v35 + 144);
        v37 = v36();
        (*(*v37 + 168))(v37);

        v38 = EventDateTimeComponents.isValid.getter();
        v39 = sub_21DE779B4(v18);
        if (!v38)
        {
          goto LABEL_47;
        }

        v40 = (v36)(v39);
        (*(*v40 + 168))(v40);

        sub_21DE7BDD4(v18, v110);
        v42 = *v110;
        v41 = *&v110[8];
        v43 = *&v110[16];
        if (v31 < 100 || *v110 < 100)
        {
          if (v102 == *v110 % 100 && v114 == *&v110[8] && v107 == *&v110[16])
          {
            goto LABEL_47;
          }
        }

        else
        {
          *v110 = v31;
          *&v110[8] = v114;
          *&v110[16] = v107;
          *&v108 = v42;
          *(&v108 + 1) = v41;
          v109 = v43;
          v39 = static EventDateComponents.== infix(_:_:)(v110, &v108);
          if (v39)
          {
            goto LABEL_47;
          }
        }

        if (v103 < 100 || v42 < 100)
        {
          break;
        }

        *v110 = v103;
        *&v110[8] = v101;
        *&v110[16] = v100;
        *&v108 = v42;
        *(&v108 + 1) = v41;
        v109 = v43;
        v39 = static EventDateComponents.== infix(_:_:)(v110, &v108);
        if (v39)
        {
          goto LABEL_41;
        }

LABEL_47:
        v54 = (v36)(v39);
        (*(*v54 + 192))(v54);

        v55 = EventDateTimeComponents.isValid.getter();
        v56 = sub_21DE779B4(v18);
        if (!v55)
        {
          goto LABEL_77;
        }

        v57 = (v36)(v56);
        (*(*v57 + 192))(v57);

        sub_21DE7BDD4(v18, v110);
        v59 = *v110;
        v58 = *&v110[8];
        v60 = *&v110[16];
        if (v31 < 100 || *v110 < 100)
        {
          if (v102 == *v110 % 100 && v114 == *&v110[8] && v107 == *&v110[16])
          {
            goto LABEL_77;
          }
        }

        else
        {
          *v110 = v31;
          *&v110[8] = v114;
          *&v110[16] = v107;
          *&v108 = v59;
          *(&v108 + 1) = v58;
          v109 = v60;
          v56 = static EventDateComponents.== infix(_:_:)(v110, &v108);
          if (v56)
          {
            goto LABEL_77;
          }
        }

        if (v103 < 100 || v59 < 100)
        {
          if (v99 != v59 % 100 || v101 != v58 || v100 != v60)
          {
            goto LABEL_77;
          }
        }

        else
        {
          *v110 = v103;
          *&v110[8] = v101;
          *&v110[16] = v100;
          *&v108 = v59;
          *(&v108 + 1) = v58;
          v109 = v60;
          v56 = static EventDateComponents.== infix(_:_:)(v110, &v108);
          if ((v56 & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        v65 = v36();
        v66 = v36();
        v67 = v96;
        (*(*v66 + 192))(v66);

        v68 = *v67;
        if (v102)
        {
          v69 = 100 * (v68 / 100);
          v68 = v102 + v69;
          v70 = v95;
          if (__OFADD__(v102, v69))
          {
            goto LABEL_99;
          }
        }

        else
        {
          v70 = v95;
        }

        EventDateTimeComponents.init(year:month:day:hours:minutes:)(v68, 0, v114, 0, v107, 0, v67[3], 0, v70, v67[4], 0);
        sub_21DE779B4(v67);
        (*(*v65 + 200))(v70);

LABEL_77:
        v71 = (v36)(v56);
        v72 = (*(*v71 + 216))(v71);

        v74 = (*(*v72 + 208))(v73);

        if ((v74 & 1) == 0)
        {
          goto LABEL_95;
        }

        v76 = (v36)(v75);
        v77 = (*(*v76 + 216))(v76);

        (*(*v77 + 184))(v110, v78);

        v108 = *v110;
        v109 = *&v110[16];
        if (!EventDateComponents.isValid.getter())
        {
          goto LABEL_95;
        }

        v79 = v36();
        v80 = (*(*v79 + 216))(v79);

        (*(*v80 + 184))(v110, v81);

        v83 = *v110;
        v82 = *&v110[8];
        v84 = *&v110[16];
        if (v31 < 100 || *v110 < 100)
        {
          if (v102 == *v110 % 100 && v114 == *&v110[8] && v107 == *&v110[16])
          {
            goto LABEL_95;
          }
        }

        else
        {
          *v110 = v31;
          *&v110[8] = v114;
          *&v110[16] = v107;
          *&v108 = v83;
          *(&v108 + 1) = v82;
          v109 = v84;
          if (static EventDateComponents.== infix(_:_:)(v110, &v108))
          {
            goto LABEL_95;
          }
        }

        if (v103 < 100 || v83 < 100)
        {
          if (v99 != v83 % 100 || v101 != v82 || v100 != v84)
          {
            goto LABEL_95;
          }
        }

        else
        {
          *v110 = v103;
          *&v110[8] = v101;
          *&v110[16] = v100;
          *&v108 = v83;
          *(&v108 + 1) = v82;
          v109 = v84;
          if (!static EventDateComponents.== infix(_:_:)(v110, &v108))
          {
            goto LABEL_95;
          }
        }

        v85 = v36();
        v86 = (*(*v85 + 216))(v85);

        if (v102)
        {
          v87 = 100 * (v83 / 100);
          v83 = v102 + v87;
          if (__OFADD__(v102, v87))
          {
            goto LABEL_102;
          }
        }

        v115.value = v83;
        v115.is_nil = 0;
        v116.value = v114;
        v116.is_nil = 0;
        v117.value = v107;
        v117.is_nil = 0;
        v118 = EventDateComponents.init(year:month:day:)(v115, v116, v117);
        v108 = *v110;
        v109 = *&v110[16];
        (*(*v86 + 192))(&v108, v118.month, v118.day);

LABEL_95:

        ++v29;
        v27 = v104;
        if (v106 == v29)
        {
          goto LABEL_9;
        }
      }

      if (v99 != v42 % 100 || v101 != v41 || v100 != v43)
      {
        goto LABEL_47;
      }

LABEL_41:
      v48 = v36();
      v49 = v36();
      v50 = v98;
      (*(*v49 + 168))(v49);

      v51 = *v50;
      if (!v102)
      {
        v53 = v97;
LABEL_46:
        EventDateTimeComponents.init(year:month:day:hours:minutes:)(v51, 0, v114, 0, v107, 0, v50[3], 0, v53, v50[4], 0);
        sub_21DE779B4(v50);
        (*(*v48 + 176))(v53);

        goto LABEL_47;
      }

      v52 = 100 * (v51 / 100);
      v51 = v102 + v52;
      v53 = v97;
      if (!__OFADD__(v102, v52))
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      swift_once();
    }
  }
}

char *sub_21DEC0FB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94EA0, &qword_21DED61D8);
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

char *sub_21DEC10A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E98, &qword_21DED61C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

unsigned __int8 *sub_21DEC11C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_21DEC7000();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21DE7F70C(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21DEC7370();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21DEC174C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result == a2 || a2 == a3 || result == a3 || result > 2 || a2 > 2 || a3 > 2)
  {
    sub_21DEC2000();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v4 = a3;
    if (a3 >= result && (v4 = a3 - 1, __OFSUB__(a3, 1)))
    {
      __break(1u);
    }

    else
    {
      v5 = a2;
      if (a2 < result || (v5 = a2 - 1, !__OFSUB__(a2, 1)))
      {
        *a4 = result;
        a4[1] = a2;
        a4[2] = a3;
        a4[3] = v4;
        a4[4] = v5;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21DEC1814@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16) != 3 || (v3 = *(result + 32), v4 = *(result + 33), v3 == v4) || ((v5 = *(result + 34), v5 != v3) ? (v6 = v5 == v4) : (v6 = 1), v6))
  {

    sub_21DEC2000();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    return swift_willThrow();
  }

  if (*(result + 32))
  {
    if (*(result + 33))
    {
      if (*(result + 34))
      {
        __break(1u);
        goto LABEL_29;
      }

      v8 = 2;
      if (v3 != 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v8 = 1;
      if (v3 != 1)
      {
LABEL_14:
        if (v4 == 1)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v9 = 0;
    if (v4 == 2)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v8 = 0;
  if (v4 == 1)
  {
LABEL_15:
    v9 = 1;
    if (v3 != 2)
    {
      goto LABEL_16;
    }

LABEL_21:
    v10 = v2;
    v11 = a2;
    v12 = 0;
    goto LABEL_26;
  }

LABEL_19:
  if (v5 != 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = 2;
  if (v3 == 2)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (v4 == 2)
  {
LABEL_17:
    v10 = v2;
    v11 = a2;
    v12 = 1;
    goto LABEL_26;
  }

LABEL_24:
  if (v5 != 2)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v10 = v2;
  v11 = a2;
  v12 = 2;
LABEL_26:

  result = sub_21DEC174C(v8, v9, v12, v14);
  if (!v10)
  {
    v13 = v14[1];
    *v11 = v14[0];
    *(v11 + 16) = v13;
    *(v11 + 32) = v15;
  }

  return result;
}

void sub_21DEC1998(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E80, qword_21DED5F70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - v7;
  v9 = sub_21DEC6980();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v13 setDateStyle_];
  v57 = v13;
  [v13 setTimeStyle_];
  sub_21DEC2730(a1, v8);
  v14 = *(v10 + 48);
  if (v14(v8, 1, v9) == 1)
  {
    sub_21DEC6970();
    if (v14(v8, 1, v9) != 1)
    {
      sub_21DEC26C8(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  v15 = sub_21DEC6960();
  (*(v10 + 8))(v12, v9);
  v16 = v57;
  [v57 setLocale_];

  v17 = [v16 dateFormat];
  if (!v17)
  {
    goto LABEL_46;
  }

  v18 = v17;
  v19 = sub_21DEC6DB0();
  v21 = v20;

  v61 = v19;
  v62 = v21;
  if (qword_27CEA5B60 != -1)
  {
    swift_once();
  }

  v53 = a2;
  v22 = sub_21DEC6770();
  __swift_project_value_buffer(v22, qword_27CEA5B68);
  sub_21DE531EC();
  v23 = sub_21DEC7220();

  v65 = *(v23 + 16);
  if (v65)
  {
    v55 = v2;
    v56 = a1;
    v24 = 0;
    v54 = v23;
    v58 = v23 + 32;
    v25 = MEMORY[0x277D84F90];
    while (1)
    {
      v61 = sub_21DEC6E20();
      v62 = v27;
      v59 = 121;
      v60 = 0xE100000000000000;

      v28 = sub_21DEC7250();

      if (v28)
      {
        v29 = *(v25 + 2);
        v30 = (v25 + 32);
        while (v29)
        {
          v31 = *v30++;
          --v29;
          if (!v31)
          {
            goto LABEL_17;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_21DEC0FB0(0, *(v25 + 2) + 1, 1, v25);
        }

        v45 = *(v25 + 2);
        v44 = *(v25 + 3);
        v46 = v45 + 1;
        if (v45 >= v44 >> 1)
        {
          v25 = sub_21DEC0FB0((v44 > 1), v45 + 1, 1, v25);
        }

        v26 = 0;
      }

      else
      {
LABEL_17:
        v61 = sub_21DEC6E20();
        v62 = v32;
        v59 = 109;
        v60 = 0xE100000000000000;
        v33 = sub_21DEC7250();

        if (v33)
        {
          v34 = *(v25 + 2);
          v35 = (v25 + 32);
          while (v34)
          {
            v36 = *v35++;
            --v34;
            if (v36 == 1)
            {
              goto LABEL_21;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_21DEC0FB0(0, *(v25 + 2) + 1, 1, v25);
          }

          v45 = *(v25 + 2);
          v47 = *(v25 + 3);
          v46 = v45 + 1;
          v26 = 1;
          if (v45 >= v47 >> 1)
          {
            v25 = sub_21DEC0FB0((v47 > 1), v45 + 1, 1, v25);
          }
        }

        else
        {
LABEL_21:
          v37 = sub_21DEC6E20();
          v39 = v38;

          v61 = v37;
          v62 = v39;
          v59 = 100;
          v60 = 0xE100000000000000;
          LOBYTE(v37) = sub_21DEC7250();

          if ((v37 & 1) == 0)
          {
            goto LABEL_12;
          }

          v40 = *(v25 + 2);
          v41 = (v25 + 32);
          v42 = v40;
          while (v42)
          {
            v43 = *v41++;
            --v42;
            if (v43 == 2)
            {
              goto LABEL_12;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_21DEC0FB0(0, v40 + 1, 1, v25);
          }

          v45 = *(v25 + 2);
          v48 = *(v25 + 3);
          v46 = v45 + 1;
          if (v45 >= v48 >> 1)
          {
            v25 = sub_21DEC0FB0((v48 > 1), v45 + 1, 1, v25);
          }

          v26 = 2;
        }
      }

      *(v25 + 2) = v46;
      v25[v45 + 32] = v26;
LABEL_12:
      if (++v24 == v65)
      {

        v3 = v55;
        a1 = v56;
        v16 = v57;
        goto LABEL_42;
      }
    }
  }

  v25 = MEMORY[0x277D84F90];
LABEL_42:
  if (*(v25 + 2) != 3)
  {

LABEL_46:
    sub_21DEC2000();
    swift_allocError();
    *v51 = 0;
    *(v51 + 8) = 0;
    *(v51 + 16) = 2;
    swift_willThrow();

    sub_21DEC26C8(a1);
    return;
  }

  sub_21DEC1814(v25, v63);
  sub_21DEC26C8(a1);

  if (!v3)
  {
    v49 = v63[1];
    v50 = v53;
    *v53 = v63[0];
    v50[1] = v49;
    *(v50 + 4) = v64;
  }
}

unint64_t sub_21DEC2000()
{
  result = qword_27CE94E78;
  if (!qword_27CE94E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94E78);
  }

  return result;
}

char *sub_21DEC2054(void *a1, uint64_t a2)
{
  v3 = v2;
  v69 = a2;
  v5 = sub_21DEC6D20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CEA5B80 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v78 = xmmword_27CEA6790;
    v79 = unk_27CEA67A0;
    v80 = qword_27CEA67B0;
    v9 = [objc_allocWithZone(MEMORY[0x277D04228]) initWithScannerType:2 passiveIntent:1];
    v10 = v9;
    v61 = a1[2];
    if (!v61)
    {
      break;
    }

    v60 = objc_opt_self();
    v11 = 0;
    v59 = a1 + 4;
    v67 = (v6 + 8);
    v68 = (v6 + 16);
    v65 = MEMORY[0x277D84F90];
    *&v12 = 136315394;
    v64 = v12;
    v58 = a1;
    v66 = v5;
    v57 = v10;
    while (v11 < a1[2])
    {
      v13 = v59[2 * v11 + 1];

      v14 = sub_21DEC6D80();
      if ((v13 & 0x1000000000000000) != 0)
      {
        v15 = sub_21DEC6FA0();
      }

      else
      {
        v15 = sub_21DEC6FB0();
      }

      v16 = v15;

      a1 = [v60 scanString:v14 range:0 configuration:{v16, v10}];

      sub_21DEC291C();
      v6 = sub_21DEC7060();

      v17 = v6;
      v62 = v11;
      if (v6 >> 62)
      {
        v18 = sub_21DEC7400();
        v17 = v6;
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (v18 < 1)
      {
        goto LABEL_34;
      }

      v19 = 0;
      v70 = v17 & 0xC000000000000001;
      v71 = v18;
      v72 = v17;
      do
      {
        if (v70)
        {
          v20 = MEMORY[0x223D4B690](v19);
        }

        else
        {
          v20 = *(v17 + 8 * v19 + 32);
        }

        v74 = v20;
        v21 = [v20 matchedString];
        v22 = sub_21DEC6DB0();
        v24 = v23;

        sub_21DEBE6E0(v22, v24);
        v25 = v3;
        if (v3)
        {
          v3 = 0;
          v29 = sub_21DEBD114();
          (*v68)(v8, v29, v5);

          v30 = v25;
          v31 = v8;
          v6 = sub_21DEC6D00();
          v32 = sub_21DEC71A0();

          if (os_log_type_enabled(v6, v32))
          {
            v34 = swift_slowAlloc();
            v73 = 0;
            v35 = v34;
            v36 = swift_slowAlloc();
            v75 = v36;
            *v35 = v64;
            v37 = sub_21DE56544(v22, v24, &v75);
            v38 = v31;
            v39 = v37;

            *(v35 + 4) = v39;
            *(v35 + 12) = 2080;
            swift_getErrorValue();
            v40 = sub_21DEC7710();
            v42 = sub_21DE56544(v40, v41, &v75);

            *(v35 + 14) = v42;
            _os_log_impl(&dword_21DE0D000, v6, v32, "Cannot get date components fron %s: %s", v35, 0x16u);
            swift_arrayDestroy();
            v43 = v36;
            v5 = v66;
            MEMORY[0x223D4D340](v43, -1, -1);
            v44 = v35;
            v3 = v73;
            MEMORY[0x223D4D340](v44, -1, -1);

            (*v67)(v38, v5);
            v8 = v38;
          }

          else
          {

            (*v67)(v31, v5);
            v8 = v31;
          }
        }

        else
        {
          v27 = v75;
          v26 = v76;
          v28 = v77;
          sub_21DEBE6E0(v22, v24);
          v73 = 0;

          v45 = v76;
          v63 = v75;
          v46 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = v26;
          if (isUniquelyReferenced_nonNull_native)
          {
            v49 = v65;
          }

          else
          {
            v49 = sub_21DEC10A4(0, *(v65 + 2) + 1, 1, v65);
          }

          v51 = *(v49 + 2);
          v50 = *(v49 + 3);
          v65 = v49;
          v6 = v51 + 1;
          if (v51 >= v50 >> 1)
          {
            v65 = sub_21DEC10A4((v50 > 1), v51 + 1, 1, v65);
          }

          v52 = v65;
          *(v65 + 2) = v6;
          v53 = &v52[48 * v51];
          *(v53 + 4) = v27;
          *(v53 + 5) = v48;
          v54 = v63;
          *(v53 + 6) = v28;
          *(v53 + 7) = v54;
          *(v53 + 8) = v45;
          *(v53 + 9) = v46;
          v3 = v73;
          v5 = v66;
        }

        ++v19;
        v17 = v72;
      }

      while (v71 != v19);
LABEL_4:
      v11 = v62 + 1;

      a1 = v58;
      v10 = v57;
      if (v11 == v61)
      {

        return v65;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21DEC26C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E80, qword_21DED5F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DEC2730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E80, qword_21DED5F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DEC27A4()
{
  result = qword_27CE94E88;
  if (!qword_27CE94E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94E88);
  }

  return result;
}

uint64_t sub_21DEC27FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DEC281C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_21DEC2864(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DEC2884(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17SceneIntelligence18DateComponentOrderV0cD5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_21DEC28F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_21DEC291C()
{
  result = qword_27CE94E90;
  if (!qword_27CE94E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE94E90);
  }

  return result;
}

uint64_t sub_21DEC2968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a1;
  v7[7] = a3;
  v7[12] = *(a6 - 8);
  v7[13] = swift_task_alloc();
  v8 = sub_21DEC6E00();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500);
  v7[17] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[18] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510);
  *v9 = v7;
  v9[1] = sub_21DEC2B08;

  return MEMORY[0x2821D9800](v7 + 2, v10);
}

uint64_t sub_21DEC2B08()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_21DEC32F8;
  }

  else
  {
    v2 = sub_21DEC2C1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DEC2C1C()
{
  v1 = v0[17];
  v2 = v0[7];
  v3 = sub_21DEC6E80();
  v5 = v4;

  v0[4] = v3;
  v0[5] = v5;
  sub_21DE9F0D0();
  sub_21DEC340C(v2, v1);
  v6 = type metadata accessor for SanitizerResource(0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_21DEC347C(v0[17]);
    v7 = v0[19];
    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[14];

    sub_21DEC6DF0();
    v11 = sub_21DEC6DC0();
    v13 = v12;

    (*(v9 + 8))(v8, v10);
    if (v13 >> 60 == 15)
    {
      v14 = v0[8];
      v15 = v0[9];
      sub_21DE689A4();
      swift_allocError();
      *v16 = v14;
      *(v16 + 8) = v15;
      *(v16 + 16) = 0xD000000000000023;
      *(v16 + 24) = 0x800000021DED9A40;
      *(v16 + 32) = 0;
      *(v16 + 40) = 1;
      swift_willThrow();
    }

    else
    {
      sub_21DEC66C0();
      swift_allocObject();
      sub_21DEC66B0();
      sub_21DEC6690();
      if (!v7)
      {
        v22 = v0[12];
        v23 = v0[13];
        v24 = v0[10];
        v25 = v0[6];
        sub_21DE56358(v11, v13);

        (*(v22 + 32))(v25, v23, v24);

        v21 = v0[1];
        goto LABEL_10;
      }

      sub_21DE56358(v11, v13);
    }

    v21 = v0[1];
LABEL_10:

    return v21();
  }

  v18 = v0[4];
  v17 = v0[5];
  v0[20] = v17;
  v19 = swift_task_alloc();
  v0[21] = v19;
  *v19 = v0;
  v19[1] = sub_21DEC2F70;

  return sub_21DE61EF8(v18, v17);
}

uint64_t sub_21DEC2F70(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 176) = v2;

  if (v2)
  {
    v7 = sub_21DEC3378;
  }

  else
  {
    v8 = v6[17];
    v6[23] = a2;
    v6[24] = a1;
    sub_21DE5CDA8(v8);
    v7 = sub_21DEC30AC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21DEC30AC()
{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  sub_21DEC6DF0();
  v5 = sub_21DEC6DC0();
  v7 = v6;

  (*(v3 + 8))(v2, v4);
  if (v7 >> 60 == 15)
  {
    v8 = v0[8];
    v9 = v0[9];
    sub_21DE689A4();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 16) = 0xD000000000000023;
    *(v10 + 24) = 0x800000021DED9A40;
    *(v10 + 32) = 0;
    *(v10 + 40) = 1;
    swift_willThrow();

LABEL_5:

    v11 = v0[1];
    goto LABEL_6;
  }

  sub_21DEC66C0();
  swift_allocObject();
  sub_21DEC66B0();
  sub_21DEC6690();
  if (v1)
  {
    sub_21DE56358(v5, v7);

    goto LABEL_5;
  }

  v13 = v0[12];
  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[6];
  sub_21DE56358(v5, v7);

  (*(v13 + 32))(v16, v14, v15);

  v11 = v0[1];
LABEL_6:

  return v11();
}

uint64_t sub_21DEC32F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DEC3378()
{
  sub_21DE5CDA8(*(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DEC340C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DEC347C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SceneIntelligence::VerticalIntegrationContentClassifier::Category_optional __swiftcall VerticalIntegrationContentClassifier.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC76E0();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VerticalIntegrationContentClassifier.Category.rawValue.getter()
{
  result = 0x637320746E657645;
  switch(*v0)
  {
    case 1:
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      return result;
    case 4:
    case 9:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0x696C20726568744FLL;
      break;
    case 7:
      result = 0x20657369636E6F43;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 0x676E6970706F6853;
      break;
    case 0xB:
      result = 0x73696C206F646F54;
      break;
    case 0xD:
      result = 0x74706965636552;
      break;
    case 0xF:
      result = 1766222167;
      break;
    case 0x10:
      result = 1970169165;
      break;
    case 0x11:
      result = 0x646567616B636150;
      break;
    case 0x12:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_21DEC375C()
{
  v0 = VerticalIntegrationContentClassifier.Category.rawValue.getter();
  v2 = v1;
  if (v0 == VerticalIntegrationContentClassifier.Category.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21DEC7610();
  }

  return v5 & 1;
}

uint64_t sub_21DEC37F8()
{
  sub_21DEC7770();
  VerticalIntegrationContentClassifier.Category.rawValue.getter();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEC3860(uint64_t a1)
{
  VerticalIntegrationContentClassifier.Category.rawValue.getter();
  sub_21DEC6E90();
}

uint64_t sub_21DEC38C4(uint64_t a1)
{
  sub_21DEC7770();
  VerticalIntegrationContentClassifier.Category.rawValue.getter();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

unint64_t sub_21DEC3934@<X0>(unint64_t *a1@<X8>)
{
  result = VerticalIntegrationContentClassifier.Category.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t VerticalIntegrationContentClassifier.caption.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VerticalIntegrationContentClassifier.caption.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

SceneIntelligence::VerticalIntegrationContentClassifier __swiftcall VerticalIntegrationContentClassifier.init(caption:category:valid:)(SceneIntelligence::VerticalIntegrationContentClassifier caption, SceneIntelligence::VerticalIntegrationContentClassifier::Category_optional category, Swift::Bool valid)
{
  v4 = *category.value;
  *v3 = caption.caption;
  *(v3 + 16) = v4;
  *(v3 + 17) = valid;
  caption.category = category;
  return caption;
}

uint64_t VerticalIntegrationContentClassifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94EA8, &qword_21DED61F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEC3D64();
  sub_21DEC77E0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = 0;
  v9 = sub_21DEC74A0();
  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v20 = v13;
  v23 = 1;
  v14 = sub_21DEC74A0();
  v19 = v12;
  if (!v15)
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  VerticalIntegrationContentClassifier.Category.init(rawValue:)(*&v14);
  v16 = byte_21DED6572[v22];
  v21 = 2;
  v17 = sub_21DEC74B0();
  (*(v6 + 8))(v8, v5);
  v18 = v20;
  *a2 = v19;
  *(a2 + 8) = v18;
  *(a2 + 16) = v16;
  *(a2 + 17) = v17 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_21DEC3D64()
{
  result = qword_280F7B840;
  if (!qword_280F7B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B840);
  }

  return result;
}

uint64_t sub_21DEC3DBC()
{
  v1 = 0x79726F6765746163;
  if (*v0 != 1)
  {
    v1 = 0x64696C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6974706163;
  }
}

uint64_t sub_21DEC3E14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DEC47F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DEC3E3C(uint64_t a1)
{
  v2 = sub_21DEC3D64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEC3E78(uint64_t a1)
{
  v2 = sub_21DEC3D64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VerticalIntegrationContentClassifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94EB0, &qword_21DED61F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v11 = *(v1 + 16);
  v9[1] = *(v1 + 17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEC3D64();
  sub_21DEC7810();
  v15 = 0;
  v7 = v10;
  sub_21DEC7590();
  if (!v7)
  {
    v14 = v11;
    v13 = 1;
    sub_21DEC43F0();
    sub_21DEC7580();
    v12 = 2;
    sub_21DEC75A0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t VerticalIntegrationContentClassifier.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_21DEC6E90();
  sub_21DEC7790();
  if (v2 != 19)
  {
    VerticalIntegrationContentClassifier.Category.rawValue.getter();
    sub_21DEC6E90();
  }

  return sub_21DEC7790();
}

uint64_t VerticalIntegrationContentClassifier.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_21DEC7770();
  sub_21DEC6E90();
  sub_21DEC7790();
  if (v1 != 19)
  {
    VerticalIntegrationContentClassifier.Category.rawValue.getter();
    sub_21DEC6E90();
  }

  sub_21DEC7790();
  return sub_21DEC77B0();
}

uint64_t sub_21DEC420C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_21DEC7770();
  sub_21DEC6E90();
  sub_21DEC7790();
  if (v2 != 19)
  {
    VerticalIntegrationContentClassifier.Category.rawValue.getter();
    sub_21DEC6E90();
  }

  sub_21DEC7790();
  return sub_21DEC77B0();
}

uint64_t _s17SceneIntelligence36VerticalIntegrationContentClassifierV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_21DEC7610() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 19)
  {
    if (v4 == 19)
    {
      return v3 ^ v5 ^ 1u;
    }

    return 0;
  }

  if (v4 == 19)
  {
    return 0;
  }

  v8 = VerticalIntegrationContentClassifier.Category.rawValue.getter();
  v10 = v9;
  if (v8 == VerticalIntegrationContentClassifier.Category.rawValue.getter() && v10 == v11)
  {
  }

  else
  {
    v12 = sub_21DEC7610();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  return v3 ^ v5 ^ 1u;
}

unint64_t sub_21DEC43F0()
{
  result = qword_280F7A710;
  if (!qword_280F7A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7A710);
  }

  return result;
}

unint64_t sub_21DEC4448()
{
  result = qword_27CE94EB8;
  if (!qword_27CE94EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94EB8);
  }

  return result;
}

unint64_t sub_21DEC44A0()
{
  result = qword_27CE94EC0;
  if (!qword_27CE94EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94EC0);
  }

  return result;
}

uint64_t sub_21DEC44F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_21DEC453C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VerticalIntegrationContentClassifier.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VerticalIntegrationContentClassifier.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21DEC46F0()
{
  result = qword_27CEA6190[0];
  if (!qword_27CEA6190[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CEA6190);
  }

  return result;
}

unint64_t sub_21DEC4748()
{
  result = qword_280F7B830;
  if (!qword_280F7B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B830);
  }

  return result;
}

unint64_t sub_21DEC47A0()
{
  result = qword_280F7B838;
  if (!qword_280F7B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B838);
  }

  return result;
}

uint64_t sub_21DEC47F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64696C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_21DEC4908()
{
  result = qword_27CE94EC8;
  if (!qword_27CE94EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94EC8);
  }

  return result;
}

uint64_t AFMAnnotation.gmsSchema.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE94ED0, &qword_21DED6588);
    sub_21DEC6CD0();
    *(swift_allocObject() + 16) = xmmword_21DED0150;
    sub_21DEC6CB0();
    sub_21DEC6CC0();
    sub_21DEC6CE0();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_21DEC6CF0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

void *sub_21DEC4ADC(void *a1, char a2)
{
  if (a2 == 2)
  {
    if (!a1 || a1[3] != 5)
    {
      return 0;
    }

    v11 = v2;
    v12 = type metadata accessor for TextContentItem();
    v13 = *(*a1 + 208);
    v14 = sub_21DEC6024(&qword_27CE94298, type metadata accessor for TextContentItem, &protocol conformance descriptor for TextContentItem);
    swift_retain_n();
    v15 = v13(&v26, v12, 0, v12, v14);
    v16 = v26;
    if (v26)
    {
      if ((*(*v26 + 120))(v15))
      {
        v17 = (*(*v11 + 224))();
        if (v17)
        {
          v18 = v17;
          v19 = (*(*v11 + 200))();
          if (v19)
          {
            v20 = sub_21DEC5DE8(v16, v18, v19);

            sub_21DE5CE04(a1, 2u);
            sub_21DE5CE04(a1, 2u);
            return v20;
          }
        }
      }
    }

    sub_21DE5CE04(a1, 2u);
    v24 = a1;
    v25 = 2;
    goto LABEL_21;
  }

  if (a2 || !a1)
  {
    return 0;
  }

  v4 = a1[3];
  if (v4 != 2)
  {

    if (v4 == 4 && sub_21DEC5CF4(a1))
    {
      v22 = *(*v2 + 232);

      v22(v23);
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v5 = v2[2];
  v6 = type metadata accessor for StructuredText();
  v7 = *(*v5 + 208);
  v8 = sub_21DEC6024(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);

  v7(&v26, v6, 1, v6, v8);
  if (!v26)
  {
LABEL_18:
    v24 = a1;
    v25 = 0;
LABEL_21:
    sub_21DE5CE04(v24, v25);
    return 0;
  }

  v9 = *(*v2 + 208);

  v9(v10);
LABEL_17:
  sub_21DE5CE04(a1, 0);

  return 0;
}

void *sub_21DEC4E28(void *a1, char a2)
{
  if (a2 != 2)
  {
    if (a2 || !a1)
    {
      return 0;
    }

    v4 = a1[3];
    if (v4 == 2)
    {
      v5 = v2;
      v6 = v2[2];
      v7 = type metadata accessor for StructuredText();
      v8 = *(*v6 + 208);
      v9 = sub_21DEC6024(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
      swift_retain_n();
      v8(v98, v7, 1, v7, v9);
      if (v98[0])
      {
        sub_21DE5CE04(a1, 0);
        v10 = *(*v5 + 208);

        v10(v11);
LABEL_43:
        v94 = a1;
        v95 = 0;
        goto LABEL_44;
      }

      goto LABEL_38;
    }

    sub_21DEC5F54(a1, 0);

    if (v4 != 7)
    {
      if (v4 == 4 && sub_21DEC5CF4(a1))
      {
        sub_21DE5CE04(a1, 0);
        v26 = *(*v2 + 232);

        v26(v27);
        goto LABEL_43;
      }

      goto LABEL_38;
    }

    v52 = a1[2];
    if (!v52)
    {
LABEL_38:
      sub_21DE5CE04(a1, 0);
LABEL_39:
      v50 = a1;
      v51 = 0;
      goto LABEL_40;
    }

    v53 = v2;
    v54 = *(*v52 + 120);

    v98[0] = v54(v55);
    v98[1] = v56;
    sub_21DE531EC();
    v57 = sub_21DEC7240();
    v59 = v58;

    v60 = sub_21DEC6EA0();
    v61 = sub_21DEC5F68(v60, v57, v59);
    v63 = v62;
    v65 = v64;
    v67 = v66;

    LOBYTE(v61) = sub_21DEBB104(v61, v63, v65, v67, 0x7645646C69686322, 0xEF5B3A2273746E65);

    if ((v61 & 1) == 0)
    {
      sub_21DE5CE04(a1, 0);
      goto LABEL_43;
    }

    v68 = type metadata accessor for Event();
    v69 = *(*v52 + 208);
    v70 = sub_21DEC6024(&qword_27CE944A8, type metadata accessor for Event, &protocol conformance descriptor for Event);
    v71 = v69(v98, v68, 1, v68, v70);
    v72 = v98[0];
    if (!v98[0])
    {
      sub_21DE5CE04(a1, 0);

      goto LABEL_39;
    }

    v73 = (*(*v98[0] + 152))(v71);
    if ((v73 & 1) == 0 || (v81 = (*(*v53 + 224))(v73, v74, v75, v76, v77, v78, v79, v80)) == 0)
    {
      sub_21DE5CE04(a1, 0);
      sub_21DE5CE04(a1, 0);

      goto LABEL_45;
    }

    v89 = v81;
    v90 = (*(*v53 + 200))(v81, v82, v83, v84, v85, v86, v87, v88);
    if (v90)
    {
      v91 = v90;
      type metadata accessor for TextContentItem();
      v98[0] = v72;

      v92 = TextContentItem.__allocating_init(itemType:)(v98);
      v93 = sub_21DEC5DE8(v92, v89, v91);

      sub_21DE5CE04(a1, 0);
      sub_21DE5CE04(a1, 0);
      return v93;
    }

    sub_21DE5CE04(a1, 0);
    v96 = a1;
    v97 = 0;
LABEL_52:
    sub_21DE5CE04(v96, v97);

    goto LABEL_45;
  }

  if (a1)
  {
    v12 = a1[3];
    if (v12 == 8)
    {
      v28 = v2;
      sub_21DEC5F54(a1, 2u);
      sub_21DEC5F54(a1, 2u);
      v29 = type metadata accessor for SubEvent();
      v30 = *(*a1 + 208);
      v31 = sub_21DEC6024(&qword_27CE945B0, type metadata accessor for SubEvent, &protocol conformance descriptor for SubEvent);
      v32 = v30(v98, v29, 0, v29, v31);
      v33 = v98[0];
      if (v98[0])
      {
        if (((*(*v98[0] + 248))(v32) & 1) == 0)
        {
          sub_21DE5CE04(a1, 2u);
          v94 = a1;
          v95 = 2;
LABEL_44:
          sub_21DE5CE04(v94, v95);
LABEL_45:

          return 0;
        }

        v34 = a1[2];
        if (v34)
        {
          v35 = *(v34 + 16);
          if (v35)
          {
            v36 = type metadata accessor for Event();
            v37 = *(*v35 + 208);
            v38 = sub_21DEC6024(&qword_27CE944A8, type metadata accessor for Event, &protocol conformance descriptor for Event);

            v39 = v37(v98, v36, 1, v36, v38);
            v40 = v98[0];
            if (v98[0])
            {
              if ((*(*v98[0] + 152))(v39))
              {
                v41 = (*(*v28 + 224))();
                if (v41)
                {
                  v42 = v41;
                  v43 = (*(*v28 + 200))();
                  if (v43)
                  {
                    v44 = v43;
                    v45 = (*(*v40 + 96))();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94960, &qword_21DED33F0);
                    v46 = swift_allocObject();
                    *(v46 + 16) = xmmword_21DED0E70;
                    *(v46 + 32) = v33;

                    v47 = Event.__allocating_init(mainEvent:childEvents:)(v45, v46);
                    type metadata accessor for TextContentItem();
                    v98[0] = v47;

                    v48 = TextContentItem.__allocating_init(itemType:)(v98);
                    v49 = sub_21DEC5DE8(v48, v42, v44);

                    sub_21DE5CE04(a1, 2u);
                    sub_21DE5CE04(a1, 2u);
                    return v49;
                  }

                  sub_21DE5CE04(a1, 2u);
                  sub_21DE5CE04(a1, 2u);

                  goto LABEL_45;
                }
              }

              sub_21DE5CE04(a1, 2u);
              v96 = a1;
              v97 = 2;
              goto LABEL_52;
            }

            sub_21DE5CE04(a1, 2u);

LABEL_30:
            v50 = a1;
            v51 = 2;
LABEL_40:
            sub_21DE5CE04(v50, v51);
            return 0;
          }
        }

        goto LABEL_28;
      }

LABEL_29:
      sub_21DE5CE04(a1, 2u);
      goto LABEL_30;
    }

    if (v12 == 6)
    {
      v13 = v2;
      v14 = type metadata accessor for Event();
      v15 = *(*a1 + 208);
      sub_21DEC5F54(a1, 2u);
      sub_21DEC5F54(a1, 2u);
      v16 = sub_21DEC6024(&qword_27CE944A8, type metadata accessor for Event, &protocol conformance descriptor for Event);
      v17 = v15(v98, v14, 0, v14, v16);
      v18 = v98[0];
      if (v98[0])
      {
        if ((*(*v98[0] + 152))(v17))
        {
          v19 = (*(*v13 + 224))();
          if (v19)
          {
            v20 = v19;
            v21 = (*(*v13 + 200))();
            if (v21)
            {
              v22 = v21;
              type metadata accessor for TextContentItem();
              v98[0] = v18;

              v23 = TextContentItem.__allocating_init(itemType:)(v98);
              v24 = sub_21DEC5DE8(v23, v20, v22);

              sub_21DE5CE04(a1, 2u);
              sub_21DE5CE04(a1, 2u);
              return v24;
            }
          }
        }

LABEL_28:

        goto LABEL_29;
      }

      goto LABEL_29;
    }
  }

  return 0;
}

void *sub_21DEC58A0()
{
  v1 = v0;
  result = (*(*v0 + 128))();
  if (result)
  {
    v3 = result;
    v4 = result[3];
    if (v4 == 6)
    {
      v5 = type metadata accessor for Event();
      v6 = *(*v3 + 208);
      v7 = sub_21DEC6024(&qword_27CE944A8, type metadata accessor for Event, &protocol conformance descriptor for Event);
      v8 = v6(&v35, v5, 1, v5, v7);
      v9 = v35;
      if (v35)
      {
        if ((*(*v35 + 152))(v8))
        {
          v10 = sub_21DEC5CF4(v3);
          if (v10)
          {
            v11 = v10;
            v12 = *(v1 + 16);
            v13 = type metadata accessor for StructuredText();
            v14 = *(*v12 + 208);
            v15 = sub_21DEC6024(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
            v14(&v35, v13, 1, v13, v15);
            v16 = v35;
            if (v35)
            {
              type metadata accessor for TextContentItem();
              v35 = v9;

              v17 = TextContentItem.__allocating_init(itemType:)(&v35);
              v18 = sub_21DEC5DE8(v17, v11, v16);

              return v18;
            }
          }
        }
      }

      v4 = v3[3];
    }

    if (v4 != 8)
    {
      goto LABEL_19;
    }

    v19 = v3[2];
    if (!v19)
    {
      goto LABEL_19;
    }

    v20 = *(v19 + 16);
    if (!v20)
    {
      goto LABEL_19;
    }

    v21 = type metadata accessor for Event();
    v22 = *(*v20 + 208);
    v23 = sub_21DEC6024(&qword_27CE944A8, type metadata accessor for Event, &protocol conformance descriptor for Event);

    v24 = v22(&v35, v21, 1, v21, v23);
    v25 = v35;
    if (v35)
    {
      if (((*(*v35 + 152))(v24) & 1) == 0 || (v26 = sub_21DEC5CF4(v20)) == 0)
      {

LABEL_19:

        return 0;
      }

      v27 = v26;
      v28 = *(v1 + 16);
      v29 = type metadata accessor for StructuredText();
      v30 = *(*v28 + 208);
      v31 = sub_21DEC6024(&qword_27CE93FD0, type metadata accessor for StructuredText, &protocol conformance descriptor for StructuredText);
      v30(&v35, v29, 1, v29, v31);
      v32 = v35;
      if (v35)
      {
        type metadata accessor for TextContentItem();
        v35 = v25;

        v33 = TextContentItem.__allocating_init(itemType:)(&v35);
        v34 = sub_21DEC5DE8(v33, v27, v32);

        return v34;
      }
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_21DEC5CF4(void *a1)
{
  v1 = a1[3];
  if (v1 < 3)
  {
    return 0;
  }

  v2 = a1;

  v3 = v1 - 2;
  while (--v3)
  {
    v4 = v2[2];

    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  v6 = type metadata accessor for SceneObject();
  v7 = *(*v2 + 208);
  v8 = sub_21DEC6024(&qword_27CE942E8, type metadata accessor for SceneObject, &protocol conformance descriptor for SceneObject);
  v7(&v9, v6, 1, v6, v8);

  return v9;
}

void *sub_21DEC5DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SceneObject();
  v6 = (*(*a2 + 104))(&v17);
  (*(*a2 + 128))(v16, v6);
  v15[0] = v16[0];
  v15[1] = v16[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94960, &qword_21DED33F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21DED0E70;
  *(v7 + 32) = a1;

  SceneObject.__allocating_init(category:grounding:textContent:)(&v17, v15, v7);
  v9 = v8;
  type metadata accessor for StructuredText();
  v10 = (*(*a3 + 96))();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DED0E70;
  *(v13 + 32) = v9;
  return StructuredText.__allocating_init(caption:sceneObjects:)(v10, v12, v13);
}

uint64_t sub_21DEC5F54(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return v2;
}

unint64_t sub_21DEC5F68(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_21DEC6ED0();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_21DEC7010();
}

uint64_t sub_21DEC6024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void SIStridedCopy()
{
  __assert_rtn("SIStridedCopy", "SIIOUtility.mm", 39, "width_out == width_in");
}

{
  __assert_rtn("SIStridedCopy", "SIIOUtility.mm", 40, "height_out == height_in");
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}