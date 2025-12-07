uint64_t sub_228027998(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_22813980C() + 1) & ~v7;
    do
    {
      sub_22802931C(*(a2 + 48) + 48 * v8, v27, a3, a4);
      sub_228139AAC();
      MEMORY[0x22AAB2060](v28);
      v14 = sub_228139AEC();
      result = sub_2280292BC(v27, a3, a4);
      v15 = v14 & v11;
      if (v5 >= v12)
      {
        if (v15 < v12)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v12)
      {
        goto LABEL_10;
      }

      if (v5 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 48 * v5);
        v18 = (v16 + 48 * v8);
        if (v5 != v8 || v17 >= v18 + 3)
        {
          v19 = *v18;
          v20 = v18[2];
          v17[1] = v18[1];
          v17[2] = v20;
          *v17 = v19;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 32 * v5);
        v23 = (v21 + 32 * v8);
        if (v5 != v8 || v22 >= v23 + 2)
        {
          v13 = v23[1];
          *v22 = *v23;
          v22[1] = v13;
          v5 = v8;
        }
      }

LABEL_4:
      v8 = (v8 + 1) & v11;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_228027B6C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22813980C() + 1) & ~v5;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
      result = sub_2281391DC();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = (v13 + 8 * v3);
          v15 = (v13 + 8 * v6);
          if (v3 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_228027D20(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22813980C() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_228139AAC();
      MEMORY[0x22AAB2060](v9);
      result = sub_228139AEC();
      v10 = result & v7;
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
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_228136EAC() - 8) + 72);
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

unint64_t sub_228027EF0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22813980C() + 1) & ~v5;
    while (1)
    {
      sub_228139AAC();

      sub_22813923C();
      v9 = sub_228139AEC();

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
      v15 = *(*(type metadata accessor for GMSModelInfoCache.CacheEntry(0) - 8) + 72);
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

unint64_t sub_2280280DC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22813980C() + 1) & ~v5;
    while (1)
    {
      sub_228139AAC();
      sub_22813923C();

      result = sub_228139AEC();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for SummarizationResult(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
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

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_228028368(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22813980C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_228139A9C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for PartialSummariesOperation.TaskResult(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_228028528(uint64_t a1, void *a2, char a3, uint64_t *a4, uint64_t a5)
{
  v30 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v11 = *a4;
  v13 = sub_22808CA18(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *a4;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_227FCFAD4(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_22801CA00();
    goto LABEL_7;
  }

  sub_228018B50(v16, a3 & 1);
  v22 = sub_22808CA18(a2);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5E8, &unk_22813C660);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22802931C(a2, v28, &qword_27D81E5E8, &unk_22813C660);
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v29, v30);
  MEMORY[0x28223BE20](v24);
  v26 = v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  sub_228028988(v13, v28, v26, v19, a5);
  return __swift_destroy_boxed_opaque_existential_0(&v29);
}

_OWORD *sub_228028758(uint64_t a1, void *a2, char a3, uint64_t *a4, uint64_t a5)
{
  v30 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v11 = *a4;
  v13 = sub_22808CE90(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *a4;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_227FCFAD4(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_22801CE64();
    goto LABEL_7;
  }

  sub_2280193C0(v16, a3 & 1);
  v22 = sub_22808CE90(a2);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E610, &unk_22813B450);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22802931C(a2, v28, &qword_27D81E610, &unk_22813B450);
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v29, v30);
  MEMORY[0x28223BE20](v24);
  v26 = v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  sub_228028988(v13, v28, v26, v19, a5);
  return __swift_destroy_boxed_opaque_existential_0(&v29);
}

_OWORD *sub_228028988(unint64_t a1, _OWORD *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v18 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a4[6] + 48 * a1);
  v12 = a2[1];
  *v11 = *a2;
  v11[1] = v12;
  v11[2] = a2[2];
  result = sub_227FCFAD4(&v17, (a4[7] + 32 * a1));
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_228028A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E918, &qword_22813C628);
    v3 = sub_22813984C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_228139AAC();

      sub_22813923C();
      result = sub_228139AEC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2281399BC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_228028BD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E960, &unk_22813C680);
    v3 = sub_22813984C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_228139AAC();
      MEMORY[0x22AAB2060](v10);
      result = sub_228139AEC();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (v10 != *(v17 + v13))
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t getEnumTagSinglePayload for SKAssetManager.SKRegisteredAssetID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SKAssetManager.SKRegisteredAssetID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_228028EA4()
{
  result = qword_2813C7888[0];
  if (!qword_2813C7888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813C7888);
  }

  return result;
}

uint64_t sub_228028EF8(uint64_t a1)
{
  v2 = sub_2281371AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E928, &qword_22813C650);
    v9 = sub_22813984C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_228029218(&qword_27D81E930, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_2281391DC();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_228029218(&qword_27D81E938, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_22813926C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_228029218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228029260(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2280292BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22802931C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.input.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v7 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_22803FFCC(v6 + v7, v5, &qword_27D81E8F0, &unk_22813C500);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_228030960(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  sub_228137D6C();
  v10 = *(v8 + 36);
  v11 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_228040034(v5, &qword_27D81E8F0, &unk_22813C500);
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.gmsConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(v1 + *(v6 + 24), v5, &qword_27D81E8C8, &qword_22813C4D8);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_228030960(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  }

  sub_228137D6C();
  v9 = *(v7 + 20);
  if (qword_2813C5440 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_2813C5448;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_228040034(v5, &qword_27D81E8C8, &qword_22813C4D8);
  }

  return result;
}

uint64_t sub_22802978C(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

BOOL sub_228029810(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_22803FFCC(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_228040034(v11, a1, a2);
  return v15;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.output.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v7 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  sub_22803FFCC(v6 + v7, v5, &qword_27D81E8D0, &unk_22813C4E0);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_228030960(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  sub_228137D6C();
  v10 = *(v8 + 36);
  v11 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_228040034(v5, &qword_27D81E8D0, &unk_22813C4E0);
  }

  return result;
}

unint64_t Com_Apple_Summarizationkit_Proto_SummarizationStyle.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_228029B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E6A4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_228029B9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  v11 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    swift_allocObject();
    v14 = sub_22803E084(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_228030960(v10, v6, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_22803E3CC(v6, v13 + v15, &qword_27D81E8F0, &unk_22813C500);
  return swift_endAccess();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.input.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    swift_allocObject();
    v10 = sub_22803E084(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_228030960(a1, v6, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  v11 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_22803E3CC(v6, v9 + v12, &qword_27D81E8F0, &unk_22813C500);
  return swift_endAccess();
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.input.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_22803FFCC(v16 + v17, v8, &qword_27D81E8F0, &unk_22813C500);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    *(v14 + 24) = MEMORY[0x277D84F90];
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    sub_228137D6C();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E8F0, &unk_22813C500);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  }

  return sub_22802A234;
}

void sub_22802A234(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22803E434(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
      swift_allocObject();
      v9 = sub_22803E084(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_228030960(v11, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
    swift_beginAccess();
    sub_22803E3CC(v15, v6 + v16, &qword_27D81E8F0, &unk_22813C500);
    swift_endAccess();
    sub_22803E49C(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
      swift_allocObject();
      v22 = sub_22803E084(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_228030960(v10, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
    swift_beginAccess();
    sub_22803E3CC(v15, v19 + v25, &qword_27D81E8F0, &unk_22813C500);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

uint64_t sub_22802A4CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  v11 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    swift_allocObject();
    v14 = sub_22803E084(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_228030960(v10, v6, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  sub_22803E3CC(v6, v13 + v15, &qword_27D81E8D0, &unk_22813C4E0);
  return swift_endAccess();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.output.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    swift_allocObject();
    v10 = sub_22803E084(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_228030960(a1, v6, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  v11 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  sub_22803E3CC(v6, v9 + v12, &qword_27D81E8D0, &unk_22813C4E0);
  return swift_endAccess();
}

uint64_t sub_22802A854@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  v3 = a1(0);
  sub_228137D6C();
  v4 = *(v3 + 36);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.output.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  sub_22803FFCC(v16 + v17, v8, &qword_27D81E8D0, &unk_22813C4E0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    *(v14 + 24) = MEMORY[0x277D84F90];
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    sub_228137D6C();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E8D0, &unk_22813C4E0);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  }

  return sub_22802ABB0;
}

void sub_22802ABB0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22803E434(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
      swift_allocObject();
      v9 = sub_22803E084(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_228030960(v11, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
    swift_beginAccess();
    sub_22803E3CC(v15, v6 + v16, &qword_27D81E8D0, &unk_22813C4E0);
    swift_endAccess();
    sub_22803E49C(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
      swift_allocObject();
      v22 = sub_22803E084(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_228030960(v10, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
    swift_beginAccess();
    sub_22803E3CC(v15, v19 + v25, &qword_27D81E8D0, &unk_22813C4E0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

uint64_t sub_22802AE48(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    swift_allocObject();
    v16 = sub_22803E084(v15);

    *(v9 + v13) = v16;
    v15 = v16;
  }

  v17 = a3(0);
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = *a4;
  swift_beginAccess();
  sub_22803E3CC(v12, v15 + v18, a1, a2);
  return swift_endAccess();
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.summarizeUnsafeInput.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_22802B058;
}

double Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.finalGmsSafetyMatrix.getter()
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  swift_beginAccess();

  return result;
}

double sub_22802B0BC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v4 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_22802B128(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    swift_allocObject();
    v7 = sub_22803E084(v6);

    *(a2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  *(v6 + v8) = v3;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.finalGmsSafetyMatrix.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    swift_allocObject();
    v7 = sub_22803E084(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  *(v6 + v8) = a1;
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.finalGmsSafetyMatrix.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_22802B348;
}

void sub_22802B348(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
      swift_allocObject();
      v10 = sub_22803E084(v7);

      *(v9 + v8) = v10;
      v7 = v10;
    }

    v11 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
    swift_beginAccess();
    *(v7 + v11) = v3;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 88);
      v15 = *(v2 + 80);
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
      swift_allocObject();
      v16 = sub_22803E084(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    v17 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
    swift_beginAccess();
    *(v13 + v17) = v3;
  }

  free(v2);
}

uint64_t sub_22802B4A0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    swift_allocObject();
    v11 = sub_22803E084(v10);

    *(a2 + v8) = v11;
    v10 = v11;
  }

  v12 = *a5;
  result = swift_beginAccess();
  *(v10 + v12) = v7;
  return result;
}

uint64_t sub_22802B558(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    swift_allocObject();
    v9 = sub_22803E084(v8);

    *(v4 + v6) = v9;
    v8 = v9;
  }

  v10 = *a2;
  result = swift_beginAccess();
  *(v8 + v10) = a1 & 1;
  return result;
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.throwErrorIfFinalDecisionUnsafe.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_22802B6B0;
}

void sub_22802B6BC(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 80);
    v11 = *(v4 + 72);
    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    swift_allocObject();
    v12 = sub_22803E084(v9);

    *(v11 + v10) = v12;
    v9 = v12;
  }

  v13 = *a3;
  swift_beginAccess();
  *(v9 + v13) = v7;

  free(v4);
}

unint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.SanitizerType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22802B7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E5B4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig.denyListResourceFunctionName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig.denyListResourceFunctionName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig.langCheckConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0) + 36);
  *(v5 + 12) = v15;
  sub_22803FFCC(v1 + v15, v8, &qword_27D81E998, &unk_228141680);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    *(v14 + 12) = 0;
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E998, &unk_228141680);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  return sub_22802BB58;
}

void sub_22802BB58(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22803E434((*a1)[5], v4, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
    sub_228040034(v9 + v3, &qword_27D81E998, &unk_228141680);
    sub_228030960(v4, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22803E49C(v5, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  else
  {
    sub_228040034(v9 + v3, &qword_27D81E998, &unk_228141680);
    sub_228030960(v5, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig.activeSanitizers.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig.sanitizerLocale.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig.sanitizerLocale.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_22802BEB0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = a1(0);
  sub_22803FFCC(v2 + *(v8 + 36), v7, &qword_27D81E998, &unk_228141680);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_228030960(v7, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  sub_228137D6C();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_228040034(v7, &qword_27D81E998, &unk_228141680);
  }

  return result;
}

uint64_t sub_22802C024@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = a2(0);
  sub_22803FFCC(a1 + *(v9 + 36), v8, &qword_27D81E998, &unk_228141680);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_228030960(v8, a3, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  *a3 = MEMORY[0x277D84F90];
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  sub_228137D6C();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_228040034(v8, &qword_27D81E998, &unk_228141680);
  }

  return result;
}

uint64_t sub_22802C19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  v12 = *(a5(0) + 36);
  sub_228040034(a2 + v12, &qword_27D81E998, &unk_228141680);
  sub_228030960(v11, a2 + v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

uint64_t sub_22802C2F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  sub_228040034(v2 + v4, &qword_27D81E998, &unk_228141680);
  sub_228030960(a1, v2 + v4, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig.langCheckConfig.modify(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0) + 36);
  *(v5 + 12) = v15;
  sub_22803FFCC(v1 + v15, v8, &qword_27D81E998, &unk_228141680);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    *(v14 + 12) = 0;
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E998, &unk_228141680);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  return sub_2280401D8;
}

BOOL sub_22802C5E8(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = a1(0);
  sub_22803FFCC(v1 + *(v6 + 36), v5, &qword_27D81E998, &unk_228141680);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_228040034(v5, &qword_27D81E998, &unk_228141680);
  return v8;
}

uint64_t sub_22802C704(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 36);
  sub_228040034(v1 + v2, &qword_27D81E998, &unk_228141680);
  v3 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t sub_22802C7F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22802C894(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.init()@<X0>(uint64_t a2@<X8>)
{
  sub_228137D6C();
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  if (qword_2813C5440 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_2813C5448;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.factualConsistencyConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  sub_22803FFCC(v1 + *(v6 + 20), v5, &qword_27D81E9A0, &unk_22813C6D0);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_228030960(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v9 = MEMORY[0x277D84F90];
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = v9;
  sub_228137D6C();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_228040034(v5, &qword_27D81E9A0, &unk_22813C6D0);
  }

  return result;
}

uint64_t sub_22802CB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  sub_22803FFCC(a1 + *(v7 + 20), v6, &qword_27D81E9A0, &unk_22813C6D0);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_228030960(v6, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v10 = MEMORY[0x277D84F90];
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = v10;
  sub_228137D6C();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_228040034(v6, &qword_27D81E9A0, &unk_22813C6D0);
  }

  return result;
}

uint64_t sub_22802CCC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0) + 20);
  sub_228040034(a2 + v8, &qword_27D81E9A0, &unk_22813C6D0);
  sub_228030960(v7, a2 + v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.factualConsistencyConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0) + 20);
  sub_228040034(v1 + v3, &qword_27D81E9A0, &unk_22813C6D0);
  sub_228030960(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = v2;
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  return sub_228137D6C();
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.factualConsistencyConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0) + 20);
  *(v5 + 12) = v15;
  sub_22803FFCC(v1 + v15, v8, &qword_27D81E9A0, &unk_22813C6D0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    v17 = MEMORY[0x277D84F90];
    *(v14 + 24) = MEMORY[0x277D84F90];
    *(v14 + 32) = v17;
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E9A0, &unk_22813C6D0);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  }

  return sub_22802D130;
}

void sub_22802D130(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22803E434((*a1)[5], v4, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
    sub_228040034(v9 + v3, &qword_27D81E9A0, &unk_22813C6D0);
    sub_228030960(v4, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22803E49C(v5, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  }

  else
  {
    sub_228040034(v9 + v3, &qword_27D81E9A0, &unk_22813C6D0);
    sub_228030960(v5, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

void Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig.modelType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig.modelType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig.fccRequiredStyles.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_22802D4B8(uint64_t a1, uint64_t a2)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_22802D524(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E650();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22802D570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.init()@<X0>(uint64_t a2@<X8>)
{
  sub_228137D6C();
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0) + 20);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.useCaseID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(v1 + *(v6 + 20), v5, &qword_27D81E4A8, &unk_22813DE00);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_228030960(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  sub_228137D6C();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_228040034(v5, &qword_27D81E4A8, &unk_22813DE00);
  }

  return result;
}

uint64_t sub_22802D7B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(a1 + *(v7 + 20), v6, &qword_27D81E4A8, &unk_22813DE00);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_228030960(v6, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  sub_228137D6C();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_228040034(v6, &qword_27D81E4A8, &unk_22813DE00);
  }

  return result;
}

uint64_t sub_22802D918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 20);
  sub_228040034(a2 + v8, &qword_27D81E4A8, &unk_22813DE00);
  sub_228030960(v7, a2 + v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.useCaseID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 20);
  sub_228040034(v1 + v3, &qword_27D81E4A8, &unk_22813DE00);
  sub_228030960(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.useCaseID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 20);
  *(v5 + 12) = v15;
  sub_22803FFCC(v1 + v15, v8, &qword_27D81E4A8, &unk_22813DE00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E4A8, &unk_22813DE00);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  return sub_22802DD1C;
}

void sub_22802DD1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22803E434((*a1)[5], v4, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    sub_228040034(v9 + v3, &qword_27D81E4A8, &unk_22813DE00);
    sub_228030960(v4, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22803E49C(v5, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  else
  {
    sub_228040034(v9 + v3, &qword_27D81E4A8, &unk_22813DE00);
    sub_228030960(v5, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_22802DEC0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_22803FFCC(v4 + *(v12 + 20), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_228040034(v11, a1, a2);
  return v14;
}

uint64_t sub_22802DFF8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_228040034(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_22802E0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(a1 + *(v7 + 24), v6, &qword_27D81E8C8, &qword_22813C4D8);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_228030960(v6, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  }

  sub_228137D6C();
  v10 = *(v8 + 20);
  if (qword_2813C5440 != -1)
  {
    swift_once();
  }

  *(a2 + v10) = qword_2813C5448;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_228040034(v6, &qword_27D81E8C8, &qword_22813C4D8);
  }

  return result;
}

uint64_t sub_22802E250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 24);
  sub_228040034(a2 + v8, &qword_27D81E8C8, &qword_22813C4D8);
  sub_228030960(v7, a2 + v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.gmsConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 24);
  sub_228040034(v1 + v3, &qword_27D81E8C8, &qword_22813C4D8);
  sub_228030960(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.gmsConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 24);
  *(v5 + 12) = v15;
  sub_22803FFCC(v1 + v15, v8, &qword_27D81E8C8, &qword_22813C4D8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_228137D6C();
    v17 = *(v9 + 20);
    if (qword_2813C5440 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_2813C5448;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      sub_228040034(v8, &qword_27D81E8C8, &qword_22813C4D8);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  }

  return sub_22802E694;
}

void sub_22802E694(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22803E434((*a1)[5], v4, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    sub_228040034(v9 + v3, &qword_27D81E8C8, &qword_22813C4D8);
    sub_228030960(v4, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22803E49C(v5, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  }

  else
  {
    sub_228040034(v9 + v3, &qword_27D81E8C8, &qword_22813C4D8);
    sub_228030960(v5, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.internalConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(v1 + *(v6 + 28), v5, &qword_27D81E9A8, &unk_22813C6E0);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_228030960(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  }

  sub_228137D6C();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_228040034(v5, &qword_27D81E9A8, &unk_22813C6E0);
  }

  return result;
}

uint64_t sub_22802E9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(a1 + *(v7 + 28), v6, &qword_27D81E9A8, &unk_22813C6E0);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_228030960(v6, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  }

  sub_228137D6C();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_228040034(v6, &qword_27D81E9A8, &unk_22813C6E0);
  }

  return result;
}

uint64_t sub_22802EB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 28);
  sub_228040034(a2 + v8, &qword_27D81E9A8, &unk_22813C6E0);
  sub_228030960(v7, a2 + v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.internalConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 28);
  sub_228040034(v1 + v3, &qword_27D81E9A8, &unk_22813C6E0);
  sub_228030960(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.internalConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 28);
  *(v5 + 12) = v15;
  sub_22803FFCC(v1 + v15, v8, &qword_27D81E9A8, &unk_22813C6E0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_228137D6C();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E9A8, &unk_22813C6E0);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  }

  return sub_22802EFA8;
}

void sub_22802EFA8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22803E434((*a1)[5], v4, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
    sub_228040034(v9 + v3, &qword_27D81E9A8, &unk_22813C6E0);
    sub_228030960(v4, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22803E49C(v5, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  }

  else
  {
    sub_228040034(v9 + v3, &qword_27D81E9A8, &unk_22813C6E0);
    sub_228030960(v5, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.hasInternalConfig.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(v0 + *(v4 + 28), v3, &qword_27D81E9A8, &unk_22813C6E0);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_228040034(v3, &qword_27D81E9A8, &unk_22813C6E0);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.clearInternalConfig()()
{
  v1 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 28);
  sub_228040034(v0 + v1, &qword_27D81E9A8, &unk_22813C6E0);
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_22802F294@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22802F300(uint64_t a1)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.init()@<X0>(uint64_t a2@<X8>)
{
  sub_228137D6C();
  v3 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  v4 = v3[5];
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = v3[6];
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = v3[7];
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.clientID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  sub_22803FFCC(v1 + *(v6 + 24), v5, &qword_27D81E4B0, &qword_22813AB20);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_228030960(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  sub_228137D6C();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_228040034(v5, &qword_27D81E4B0, &qword_22813AB20);
  }

  return result;
}

uint64_t sub_22802F5FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  sub_22803FFCC(a1 + *(v7 + 24), v6, &qword_27D81E4B0, &qword_22813AB20);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_228030960(v6, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  sub_228137D6C();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_228040034(v6, &qword_27D81E4B0, &qword_22813AB20);
  }

  return result;
}

uint64_t sub_22802F760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22803E434(a1, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0) + 24);
  sub_228040034(a2 + v8, &qword_27D81E4B0, &qword_22813AB20);
  sub_228030960(v7, a2 + v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.clientID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0) + 24);
  sub_228040034(v1 + v3, &qword_27D81E4B0, &qword_22813AB20);
  sub_228030960(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.clientID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0) + 24);
  *(v5 + 12) = v15;
  sub_22803FFCC(v1 + v15, v8, &qword_27D81E4B0, &qword_22813AB20);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_228040034(v8, &qword_27D81E4B0, &qword_22813AB20);
    }
  }

  else
  {
    sub_228030960(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  return sub_22802FB64;
}

void sub_22802FB64(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22803E434((*a1)[5], v4, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    sub_228040034(v9 + v3, &qword_27D81E4B0, &qword_22813AB20);
    sub_228030960(v4, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22803E49C(v5, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  else
  {
    sub_228040034(v9 + v3, &qword_27D81E4B0, &qword_22813AB20);
    sub_228030960(v5, v9 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_22802FD08(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_22803FFCC(v4 + *(v12 + 24), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_228040034(v11, a1, a2);
  return v14;
}

uint64_t sub_22802FE40(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_228040034(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.useCaseConfigList.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0) + 20);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0) + 20);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  sub_228137D6C();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList.clientConfigList.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0);
  return sub_228137D6C();
}

uint64_t sub_228030330()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C8628);
  __swift_project_value_buffer(v0, qword_2813C8628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B480;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TOP_LINE";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "TOPIC";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_2280305A4()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C52B8);
  __swift_project_value_buffer(v0, qword_2813C52B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813C6B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "input";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "output";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "summarize_unsafe_input";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "final_gms_safety_matrix";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "throw_error_if_final_decision_unsafe";
  *(v15 + 8) = 36;
  *(v15 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_228030868()
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  result = (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput) = 0;
  *(v0 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe) = 0;
  qword_2813C5448 = v0;
  return result;
}

uint64_t sub_228030960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228030A08()
{
  sub_228040034(v0 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input, &qword_27D81E8F0, &unk_22813C500);
  sub_228040034(v0 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output, &qword_27D81E8D0, &unk_22813C4E0);

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(0);
    swift_allocObject();
    v12 = sub_22803E084(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_228030B60(v10, a1, a2, a3);
}

uint64_t sub_228030B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_228137DCC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_228030C94(a2, a1, a3, a4);
        }

        else if (result == 2)
        {
          sub_228030D70(a2, a1, a3, a4);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_228030ED8(a2, a1, a3, a4, &OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput);
            break;
          case 4:
            sub_228030E4C(a2, a1, a3, a4);
            break;
          case 5:
            sub_228030ED8(a2, a1, a3, a4, &OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe);
            break;
        }
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_228030C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  sub_22803E608(&qword_2813C5620, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  sub_228137E9C();
  return swift_endAccess();
}

uint64_t sub_228030D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  sub_22803E608(&qword_2813C5548, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  sub_228137E9C();
  return swift_endAccess();
}

uint64_t sub_228030E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_228137E2C();
  return swift_endAccess();
}

uint64_t sub_228030ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_228137E0C();
  return swift_endAccess();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  result = sub_228030FCC(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_228030FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_228031124(a1, a2, a3, a4);
  if (!v4)
  {
    sub_22803134C(a1, a2, a3, a4);
    v10 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput;
    swift_beginAccess();
    if (*(a1 + v10) == 1)
    {
      sub_228137F1C();
    }

    v11 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
    swift_beginAccess();
    if (*(*(a1 + v11) + 16))
    {

      sub_228137F0C();
    }

    v12 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe;
    result = swift_beginAccess();
    if (*(a1 + v12) == 1)
    {
      return sub_228137F1C();
    }
  }

  return result;
}

uint64_t sub_228031124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_22803FFCC(a1 + v12, v7, &qword_27D81E8F0, &unk_22813C500);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_228040034(v7, &qword_27D81E8F0, &unk_22813C500);
  }

  sub_228030960(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  sub_22803E608(&qword_2813C5620, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  sub_228137F8C();
  return sub_22803E49C(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
}

uint64_t sub_22803134C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  sub_22803FFCC(a1 + v12, v7, &qword_27D81E8D0, &unk_22813C4E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_228040034(v7, &qword_27D81E8D0, &unk_22813C4E0);
  }

  sub_228030960(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  sub_22803E608(&qword_2813C5548, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
  sub_228137F8C();
  return sub_22803E49C(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
}

uint64_t sub_228031578(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v58 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v52 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAF0, &qword_22813D930);
  MEMORY[0x28223BE20](v55);
  v59 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v53 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v56 = &v51 - v8;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v54 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAF8, &qword_22813D938);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v60 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - v19;
  v21 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  v22 = a1 + v21;
  v23 = v61;
  sub_22803FFCC(v22, v20, &qword_27D81E8F0, &unk_22813C500);
  v24 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  v25 = *(v13 + 56);
  sub_22803FFCC(v20, v15, &qword_27D81E8F0, &unk_22813C500);
  sub_22803FFCC(v23 + v24, &v15[v25], &qword_27D81E8F0, &unk_22813C500);
  v26 = *(v10 + 48);
  if (v26(v15, 1, v9) == 1)
  {

    sub_228040034(v20, &qword_27D81E8F0, &unk_22813C500);
    v27 = a1;
    if (v26(&v15[v25], 1, v9) == 1)
    {
      sub_228040034(v15, &qword_27D81E8F0, &unk_22813C500);
      goto LABEL_8;
    }

LABEL_6:
    sub_228040034(v15, &qword_27D81EAF8, &qword_22813D938);
    goto LABEL_18;
  }

  v27 = a1;
  v28 = v60;
  sub_22803FFCC(v15, v60, &qword_27D81E8F0, &unk_22813C500);
  if (v26(&v15[v25], 1, v9) == 1)
  {

    sub_228040034(v20, &qword_27D81E8F0, &unk_22813C500);
    sub_22803E49C(v28, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
    goto LABEL_6;
  }

  v29 = v54;
  sub_228030960(&v15[v25], v54, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);

  v30 = sub_22803CD74(v28, v29, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  sub_22803E49C(v29, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  sub_228040034(v20, &qword_27D81E8F0, &unk_22813C500);
  sub_22803E49C(v28, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);
  sub_228040034(v15, &qword_27D81E8F0, &unk_22813C500);
  if ((v30 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v31 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  v32 = v56;
  sub_22803FFCC(v27 + v31, v56, &qword_27D81E8D0, &unk_22813C4E0);
  v33 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  v34 = *(v55 + 48);
  v35 = v59;
  sub_22803FFCC(v32, v59, &qword_27D81E8D0, &unk_22813C4E0);
  sub_22803FFCC(v23 + v33, v35 + v34, &qword_27D81E8D0, &unk_22813C4E0);
  v36 = *(v57 + 48);
  v37 = v58;
  if (v36(v35, 1, v58) != 1)
  {
    v38 = v53;
    sub_22803FFCC(v35, v53, &qword_27D81E8D0, &unk_22813C4E0);
    if (v36(v35 + v34, 1, v37) == 1)
    {
      sub_228040034(v32, &qword_27D81E8D0, &unk_22813C4E0);
      sub_22803E49C(v38, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
      goto LABEL_13;
    }

    v39 = v35 + v34;
    v40 = v52;
    sub_228030960(v39, v52, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    v41 = sub_22803CD74(v38, v40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    sub_22803E49C(v40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    sub_228040034(v32, &qword_27D81E8D0, &unk_22813C4E0);
    sub_22803E49C(v38, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);
    sub_228040034(v35, &qword_27D81E8D0, &unk_22813C4E0);
    if (v41)
    {
      goto LABEL_15;
    }

LABEL_18:

    v49 = 0;
    return v49 & 1;
  }

  sub_228040034(v32, &qword_27D81E8D0, &unk_22813C4E0);
  if (v36(v35 + v34, 1, v37) != 1)
  {
LABEL_13:
    sub_228040034(v35, &qword_27D81EAF0, &qword_22813D930);
    goto LABEL_18;
  }

  sub_228040034(v35, &qword_27D81E8D0, &unk_22813C4E0);
LABEL_15:
  v42 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput;
  swift_beginAccess();
  LODWORD(v42) = *(v27 + v42);
  v43 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput;
  swift_beginAccess();
  if (v42 != *(v23 + v43))
  {
    goto LABEL_18;
  }

  v44 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  v45 = *(v27 + v44);
  v46 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  if ((sub_22803C5A0(v45, *(v23 + v46)) & 1) == 0)
  {
    goto LABEL_18;
  }

  v47 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe;
  swift_beginAccess();
  LOBYTE(v47) = *(v27 + v47);

  v48 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe;
  swift_beginAccess();
  LOBYTE(v48) = *(v23 + v48);

  v49 = v47 ^ v48 ^ 1;
  return v49 & 1;
}

uint64_t sub_228031E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_228137D6C();
  v4 = *(a1 + 20);
  if (qword_2813C5440 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_2813C5448;
}

uint64_t sub_228031F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA98, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_228032024(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C52A8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_228032090(uint64_t a1, uint64_t a2)
{
  sub_22803E608(&qword_2813C52A8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);

  return sub_228137EDC();
}

uint64_t sub_228032110()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5480);
  __swift_project_value_buffer(v0, qword_2813C5480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813C6B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "offensive_vulgar_sensitive";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "text_moderation";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "text_sanitization";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "regional_sanitizer";
  *(v15 + 8) = 18;
  *(v15 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_228032448(uint64_t a1, uint64_t *a2)
{
  v3 = sub_228137FBC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22813C6B0;
  v7 = v19 + v6;
  v8 = v19 + v6 + v4[14];
  *(v19 + v6) = 1;
  *v8 = "use_deny_list";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21888];
  v10 = sub_228137F9C();
  v11 = *(*(v10 - 8) + 104);
  (v11)(v8, v9, v10);
  v12 = v7 + v5 + v4[14];
  *(v7 + v5) = 2;
  *v12 = "deny_list_resource_function_name";
  *(v12 + 8) = 32;
  *(v12 + 16) = 2;
  v11();
  v13 = (v7 + 2 * v5);
  v14 = v13 + v4[14];
  *v13 = 3;
  *v14 = "lang_check_config";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v11();
  v15 = (v7 + 3 * v5);
  v16 = v15 + v4[14];
  *v15 = 4;
  *v16 = "active_sanitizers";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v11();
  v17 = v7 + 4 * v5 + v4[14];
  *(v7 + 4 * v5) = 5;
  *v17 = "sanitizer_locale";
  *(v17 + 8) = 16;
  *(v17 + 16) = 2;
  v11();
  return sub_228137FAC();
}

uint64_t sub_228032848(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA90, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280328E8(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C5620, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_228032954(uint64_t a1, uint64_t a2)
{
  sub_22803E608(&qword_2813C5620, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig);

  return sub_228137EDC();
}

uint64_t sub_228032A30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x22AAB1970](a2, a3);
  *a4 = 0xD000000000000038;
  *a5 = 0x8000000228145A50;
  return result;
}

uint64_t sub_228032B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v4;
  result = sub_228137DCC();
  if (!v5)
  {
    while (1)
    {
      if (v12)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          goto LABEL_14;
        }

        sub_228137E0C();
      }

      else
      {
        if (result == 3)
        {
          sub_228032C48(a1, v7, a2, a3, a4);
          goto LABEL_5;
        }

        if (result != 4)
        {
          if (result != 5)
          {
            goto LABEL_5;
          }

LABEL_14:
          sub_228137E7C();
          goto LABEL_5;
        }

        sub_22803E5B4();
        sub_228137DEC();
      }

LABEL_5:
      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_228032C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  sub_22803E608(&qword_2813C5BE0, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  return sub_228137E9C();
}

uint64_t sub_228032D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  if (*v5 != 1 || (result = sub_228137F1C(), !v6))
  {
    v13 = *(v5 + 16);
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = *(v5 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 || (result = sub_228137F6C(), !v6))
    {
      result = sub_228032E90(v5, a1, a2, a3, a4);
      if (!v6)
      {
        if (*(*(v5 + 24) + 16))
        {
          sub_22803E5B4();
          sub_228137EFC();
        }

        v15 = *(v5 + 40);
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = *(v5 + 32) & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          sub_228137F6C();
        }

        a5(0);
        return sub_228137D5C();
      }
    }
  }

  return result;
}

uint64_t sub_228032E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[3] = a4;
  v16[0] = a2;
  v16[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(0);
  sub_22803FFCC(a1 + *(v14 + 36), v9, &qword_27D81E998, &unk_228141680);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_228040034(v9, &qword_27D81E998, &unk_228141680);
  }

  sub_228030960(v9, v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  sub_22803E608(&qword_2813C5BE0, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  sub_228137F8C();
  return sub_22803E49C(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
}

uint64_t sub_228033128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  sub_228137D6C();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_228033244(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280332E4(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C5548, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_228033350(uint64_t a1, uint64_t a2)
{
  sub_22803E608(&qword_2813C5548, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig);

  return sub_228137EDC();
}

uint64_t sub_228033418()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C4C28);
  __swift_project_value_buffer(v0, qword_2813C4C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22813A4B0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "factual_consistency_config";
  *(v4 + 8) = 26;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_228137F9C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_228137DCC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22803361C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22803361C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  sub_22803E608(&qword_2813C4CF0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_228033728(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_228033728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  sub_22803FFCC(a1 + *(v12 + 20), v7, &qword_27D81E9A0, &unk_22813C6D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_228040034(v7, &qword_27D81E9A0, &unk_22813C6D0);
  }

  sub_228030960(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  sub_22803E608(&qword_2813C4CF0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  sub_228137F8C();
  return sub_22803E49C(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
}

uint64_t sub_228033990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_228137D6C();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_228033A78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA80, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_228033B18(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C4C18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_228033B84(uint64_t a1, uint64_t a2)
{
  sub_22803E608(&qword_2813C4C18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);

  return sub_228137EDC();
}

uint64_t sub_228033C04()
{
  result = MEMORY[0x22AAB1970](0xD000000000000019, 0x8000000228145D70);
  qword_27D81E988 = 0xD00000000000003DLL;
  unk_27D81E990 = 0x8000000228145A90;
  return result;
}

uint64_t sub_228033CA4(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_228033D00()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C4D00);
  __swift_project_value_buffer(v0, qword_2813C4D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813C6C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "is_enabled";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_type";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "fcc_enabled_styles";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fcc_required_styles";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_228137DCC();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          sub_22803E6A4();
          sub_228137DEC();
        }
      }

      else if (result == 1)
      {
        sub_228137E0C();
      }

      else if (result == 2)
      {
        sub_22803E650();
        sub_228137E1C();
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (v5 = sub_228137F1C(), !v4))
  {
    v6 = v4;
    if (*(v3 + 8))
    {
      sub_22803E650();
      v5 = sub_228137F2C();
      if (v4)
      {
        return v5;
      }

      v6 = 0;
    }

    if (*(*(v3 + 24) + 16))
    {
      sub_22803E6A4();
      v7 = v6;
      v5 = sub_228137EFC();
      if (v6)
      {
        return v5;
      }
    }

    else
    {
      v7 = v6;
    }

    if (!*(*(v3 + 32) + 16) || (sub_22803E6A4(), v5 = sub_228137EFC(), !v7))
    {
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
      return sub_228137D5C();
    }
  }

  return v5;
}

uint64_t sub_228034240@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v2 = MEMORY[0x277D84F90];
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = v2;
  return sub_228137D6C();
}

uint64_t sub_2280342A4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_228034304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_228034378(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_228034444(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA78, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280344E4(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C4CF0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_228034550(uint64_t a1, uint64_t a2)
{
  sub_22803E608(&qword_2813C4CF0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);

  return sub_228137EDC();
}

uint64_t sub_2280345D0()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C4D40);
  __swift_project_value_buffer(v0, qword_2813C4D40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B480;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EMBEDDING";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ADAPTER";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_228034844()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C57C0);
  __swift_project_value_buffer(v0, qword_2813C57C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B480;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "use_case_id";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gms_config";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "internal_config";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_228137DCC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_228034C9C(a1, v5, a2, a3);
        break;
      case 2:
        sub_228034BE8(a1, v5, a2, a3);
        break;
      case 1:
        sub_228034B34(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_228034B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  sub_22803E608(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  return sub_228137E9C();
}

uint64_t sub_228034BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  sub_22803E608(&qword_2813C52A8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  return sub_228137E9C();
}

uint64_t sub_228034C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  sub_22803E608(&qword_2813C4C18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_228034DD8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_228034FF4(v3, a1, a2, a3);
    sub_228035210(v3, a1, a2, a3);
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_228034DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(a1 + *(v12 + 20), v7, &qword_27D81E4A8, &unk_22813DE00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_228040034(v7, &qword_27D81E4A8, &unk_22813DE00);
  }

  sub_228030960(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_22803E608(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_228137F8C();
  return sub_22803E49C(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
}

uint64_t sub_228034FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(a1 + *(v12 + 24), v7, &qword_27D81E8C8, &qword_22813C4D8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_228040034(v7, &qword_27D81E8C8, &qword_22813C4D8);
  }

  sub_228030960(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  sub_22803E608(&qword_2813C52A8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
  sub_228137F8C();
  return sub_22803E49C(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
}

uint64_t sub_228035210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  sub_22803FFCC(a1 + *(v12 + 28), v7, &qword_27D81E9A8, &unk_22813C6E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_228040034(v7, &qword_27D81E9A8, &unk_22813C6E0);
  }

  sub_228030960(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  sub_22803E608(&qword_2813C4C18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  sub_228137F8C();
  return sub_22803E49C(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
}

uint64_t sub_228035478@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_228137D6C();
  v4 = a1[5];
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_22803559C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_228035604(uint64_t a1)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2280356C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA70, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_228035760(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C57B0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280357CC(uint64_t a1, uint64_t a2)
{
  sub_22803E608(&qword_2813C57B0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);

  return sub_228137EDC();
}

uint64_t sub_228035868()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5A18);
  __swift_project_value_buffer(v0, qword_2813C5A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "client_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "use_case_config_list";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_228137DCC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_228035B54(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
        sub_22803E608(&qword_2813C57B0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        sub_228137E8C();
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_228035B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  sub_22803E608(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientID);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_228035D04(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
      sub_22803E608(&qword_2813C57B0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
      sub_228137F7C();
    }

    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_228035D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  sub_22803FFCC(a1 + *(v12 + 24), v7, &qword_27D81E4B0, &qword_22813AB20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_228040034(v7, &qword_27D81E4B0, &qword_22813AB20);
  }

  sub_228030960(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_22803E608(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_228137F8C();
  return sub_22803E49C(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
}

uint64_t sub_228035F6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  sub_228137D6C();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_228036014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_228036088(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_228036154(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA68, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280361F4(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C5A08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_228036260(uint64_t a1, uint64_t a2)
{
  sub_22803E608(&qword_2813C5A08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);

  return sub_228137EDC();
}

uint64_t sub_2280362FC()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5128);
  __swift_project_value_buffer(v0, qword_2813C5128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "config_version";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_config_list";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_2280364E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_228137FBC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_228137DCC();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_228137E4C();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
        sub_22803E608(&qword_2813C5A08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
        sub_228137E8C();
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_228137F4C(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0), sub_22803E608(&qword_2813C5A08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig), result = sub_228137F7C(), !v4))
    {
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t static Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_228037FDC(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0);
  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t sub_228036884(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_228139AAC();
  a1(0);
  sub_22803E608(a2, a3, a4);
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_22803690C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  return sub_228137D6C();
}

uint64_t sub_228036958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280369CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_228036A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22803E608(&qword_27D81EA60, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_228036B38@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_228137FBC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_228036BD4(uint64_t a1)
{
  v2 = sub_22803E608(&qword_2813C5118, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_228036C40(uint64_t a1, uint64_t a2)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_228036C98(uint64_t a1, uint64_t a2)
{
  sub_22803E608(&qword_2813C5118, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);

  return sub_228137EDC();
}

uint64_t sub_228036D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_228036D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_228037FDC(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t sub_228036E20(uint64_t a1, uint64_t a2)
{
  v93 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v4 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  MEMORY[0x28223BE20](v7 - 8);
  v95 = &v80 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB0, &unk_22813D8F0);
  MEMORY[0x28223BE20](v91);
  v105 = &v80 - v9;
  v98 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v100 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  MEMORY[0x28223BE20](v11 - 8);
  v104 = &v80 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC0, &qword_22813D900);
  MEMORY[0x28223BE20](v97);
  v14 = &v80 - v13;
  v101 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v15 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = (&v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v17 - 8);
  v92 = (&v80 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA8, &unk_2281425E0);
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  v22 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  v23 = MEMORY[0x28223BE20](v22);
  v103 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v80 - v26;
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
LABEL_53:
    v75 = 0;
    return v75 & 1;
  }

  if (!v28 || a1 == a2)
  {
    v75 = 1;
    return v75 & 1;
  }

  v86 = v21;
  v82 = v6;
  v29 = 0;
  v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v90 = a1 + v30;
  v88 = a2 + v30;
  v87 = (v15 + 48);
  v85 = (v100 + 48);
  v81 = (v4 + 48);
  v89 = *(v25 + 72);
  v31 = v103;
  v84 = v22;
  v106 = &v80 - v26;
  v102 = v28;
  v94 = v14;
  v83 = v19;
  while (1)
  {
    v32 = v89 * v29;
    result = sub_22803E434(v90 + v89 * v29, v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    if (v29 == v102)
    {
      break;
    }

    v100 = v29;
    sub_22803E434(v88 + v32, v31, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    v34 = *(v22 + 20);
    v35 = *(v19 + 48);
    v36 = v86;
    sub_22803FFCC(&v27[v34], v86, &qword_27D81E4A8, &unk_22813DE00);
    sub_22803FFCC(v31 + v34, v36 + v35, &qword_27D81E4A8, &unk_22813DE00);
    v37 = *v87;
    v38 = v101;
    if ((*v87)(v36, 1, v101) == 1)
    {
      if (v37(v36 + v35, 1, v38) != 1)
      {
        goto LABEL_43;
      }

      sub_228040034(v36, &qword_27D81E4A8, &unk_22813DE00);
      v39 = v94;
      v40 = v100;
    }

    else
    {
      v41 = v92;
      sub_22803FFCC(v36, v92, &qword_27D81E4A8, &unk_22813DE00);
      if (v37(v36 + v35, 1, v38) == 1)
      {
        sub_22803E49C(v41, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
LABEL_43:
        v78 = &qword_27D81EAA8;
        v79 = &unk_2281425E0;
        goto LABEL_51;
      }

      v42 = v36 + v35;
      v43 = v99;
      sub_228030960(v42, v99, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      if ((*v41 != *v43 || v41[1] != v43[1]) && (sub_2281399BC() & 1) == 0)
      {
        sub_22803E49C(v99, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_22803E49C(v41, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        v78 = &qword_27D81E4A8;
        v79 = &unk_22813DE00;
        goto LABEL_51;
      }

      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v44 = v99;
      v45 = sub_22813926C();
      sub_22803E49C(v44, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_22803E49C(v41, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_228040034(v36, &qword_27D81E4A8, &unk_22813DE00);
      v22 = v84;
      v39 = v94;
      v40 = v100;
      if ((v45 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v46 = *(v22 + 24);
    v47 = *(v97 + 48);
    sub_22803FFCC(&v106[v46], v39, &qword_27D81EAB8, &qword_2281416A0);
    sub_22803FFCC(v31 + v46, v39 + v47, &qword_27D81EAB8, &qword_2281416A0);
    v48 = *v85;
    v49 = v98;
    if ((*v85)(v39, 1, v98) == 1)
    {
      if (v48(v39 + v47, 1, v49) != 1)
      {
        goto LABEL_45;
      }

      sub_228040034(v39, &qword_27D81EAB8, &qword_2281416A0);
      v31 = v103;
      v19 = v83;
    }

    else
    {
      sub_22803FFCC(v39, v104, &qword_27D81EAB8, &qword_2281416A0);
      if (v48(v39 + v47, 1, v49) == 1)
      {
        sub_22803E49C(v104, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
LABEL_45:
        sub_228040034(v39, &qword_27D81EAC0, &qword_22813D900);
        v31 = v103;
        goto LABEL_52;
      }

      v50 = v96;
      sub_228030960(v39 + v47, v96, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
      v51 = *(v49 + 20);
      v52 = *(v91 + 48);
      v53 = v105;
      sub_22803FFCC(v104 + v51, v105, &qword_27D81E998, &unk_228141680);
      sub_22803FFCC(v50 + v51, v53 + v52, &qword_27D81E998, &unk_228141680);
      v54 = *v81;
      v55 = v93;
      if ((*v81)(v53, 1, v93) == 1)
      {
        if (v54(v105 + v52, 1, v55) != 1)
        {
          goto LABEL_48;
        }

        sub_228040034(v105, &qword_27D81E998, &unk_228141680);
        v31 = v103;
        v36 = v94;
      }

      else
      {
        v56 = v105;
        v57 = v95;
        sub_22803FFCC(v105, v95, &qword_27D81E998, &unk_228141680);
        if (v54(v56 + v52, 1, v55) == 1)
        {
          sub_22803E49C(v57, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
LABEL_48:
          v76 = &qword_27D81EAB0;
          v77 = &unk_22813D8F0;
          goto LABEL_49;
        }

        v58 = v105 + v52;
        v59 = v82;
        sub_228030960(v58, v82, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        v60 = *v57;
        v61 = *v59;
        v62 = *(*v57 + 16);
        if (v62 != *(v61 + 16))
        {
          goto LABEL_41;
        }

        if (v62 && v60 != v61)
        {
          v63 = (v60 + 40);
          v64 = (v61 + 40);
          while (1)
          {
            v65 = *(v63 - 1) == *(v64 - 1) && *v63 == *v64;
            if (!v65 && (sub_2281399BC() & 1) == 0)
            {
              break;
            }

            v63 += 2;
            v64 += 2;
            if (!--v62)
            {
              goto LABEL_33;
            }
          }

LABEL_41:
          sub_22803E49C(v82, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
          sub_22803E49C(v95, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
          v76 = &qword_27D81E998;
          v77 = &unk_228141680;
LABEL_49:
          sub_228040034(v105, v76, v77);
          v31 = v103;
          v36 = v94;
LABEL_50:
          sub_22803E49C(v96, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
          sub_22803E49C(v104, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
          v78 = &qword_27D81EAB8;
          v79 = &qword_2281416A0;
LABEL_51:
          sub_228040034(v36, v78, v79);
LABEL_52:
          sub_22803E49C(v31, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
          sub_22803E49C(v106, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
          goto LABEL_53;
        }

LABEL_33:
        if (*(v95 + 8) != v82[8] || *(v95 + 12) != *(v82 + 3))
        {
          goto LABEL_41;
        }

        sub_228137D7C();
        sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v66 = v95;
        v67 = v82;
        v68 = sub_22813926C();
        v69 = v105;
        sub_22803E49C(v67, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_22803E49C(v66, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_228040034(v69, &qword_27D81E998, &unk_228141680);
        v31 = v103;
        v36 = v94;
        if ((v68 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v70 = v104;
      v71 = v96;
      v72 = sub_22813926C();
      sub_22803E49C(v71, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
      v73 = v70;
      v22 = v84;
      sub_22803E49C(v73, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
      sub_228040034(v36, &qword_27D81EAB8, &qword_2281416A0);
      v19 = v83;
      if ((v72 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v74 = v106;
    v75 = sub_22813926C();
    sub_22803E49C(v31, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    sub_22803E49C(v74, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    if (v75)
    {
      v29 = v40 + 1;
      v27 = v106;
      if (v29 != v102)
      {
        continue;
      }
    }

    return v75 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_228037C08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_228037C98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_23:
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v26 = a1 + v13;
  v14 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_22803E434(v26 + v15 * v12, v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
    if (v12 == v11)
    {
      break;
    }

    result = sub_22803E434(v14 + v15 * v12, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
    v17 = *v10;
    v18 = *v7;
    v19 = *(*v10 + 16);
    if (v19 != *(*v7 + 16))
    {
LABEL_22:
      sub_22803E49C(v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
      sub_22803E49C(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
      goto LABEL_23;
    }

    if (v19)
    {
      v20 = v17 == v18;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v22 = (v17 + 40);
      v23 = (v18 + 40);
      while (v19)
      {
        result = *(v22 - 1);
        if (result != *(v23 - 1) || *v22 != *v23)
        {
          result = sub_2281399BC();
          if ((result & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v22 += 2;
        v23 += 2;
        if (!--v19)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      break;
    }

LABEL_12:
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v21 = sub_22813926C();
    sub_22803E49C(v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
    sub_22803E49C(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
    if ((v21 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_228037F4C(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_2281399BC() & 1) == 0)
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

uint64_t sub_228037FDC(uint64_t a1, uint64_t a2)
{
  v175 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v4 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v170 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
  MEMORY[0x28223BE20](v6 - 8);
  v171 = (&v149 - v7);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAD8, &qword_22813D918);
  MEMORY[0x28223BE20](v173);
  v176 = &v149 - v8;
  v185 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v177 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v182 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  MEMORY[0x28223BE20](v10 - 8);
  v183 = &v149 - v11;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAE0, &qword_22813D920);
  MEMORY[0x28223BE20](v184);
  v193 = &v149 - v12;
  v190 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v13 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v186 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  MEMORY[0x28223BE20](v15 - 8);
  v187 = &v149 - v16;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAE8, &qword_22813D928);
  MEMORY[0x28223BE20](v188);
  v195 = &v149 - v17;
  v196 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v18 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v189 = (&v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v20 - 8);
  v174 = (&v149 - v21);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA8, &unk_2281425E0);
  MEMORY[0x28223BE20](v191);
  v23 = &v149 - v22;
  v197 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  v192 = *(v197 - 1);
  v24 = MEMORY[0x28223BE20](v197);
  v26 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v149 - v27;
  v181 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v29 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v179 = (&v149 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v31 - 8);
  v172 = (&v149 - v32);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA0, &unk_22813D8E0);
  MEMORY[0x28223BE20](v180);
  v34 = &v149 - v33;
  v35 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  v36 = MEMORY[0x28223BE20](v35);
  v37 = MEMORY[0x28223BE20](v36);
  v194 = &v149 - v40;
  v41 = *(a1 + 16);
  if (v41 != *(a2 + 16))
  {
LABEL_112:
    v146 = 0;
    return v146 & 1;
  }

  if (!v41 || a1 == a2)
  {
    v146 = 1;
    return v146 & 1;
  }

  v167 = v37;
  v42 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v43 = a1 + v42;
  v158 = a2 + v42;
  v157 = (v29 + 48);
  v164 = (v18 + 48);
  v44 = 0;
  v162 = (v13 + 48);
  v159 = (v177 + 48);
  v151 = (v4 + 48);
  v45 = *(v38 + 72);
  v169 = v23;
  v165 = v34;
  v46 = v194;
  v47 = v39;
  v48 = v28;
  v166 = v41;
  v154 = a1 + v42;
  v153 = v45;
  v178 = v39;
  v150 = v26;
  while (1)
  {
    v49 = v45 * v44;
    result = sub_22803E434(v43 + v45 * v44, v46, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
    if (v44 == v166)
    {
      goto LABEL_120;
    }

    v51 = v26;
    v163 = v44;
    sub_22803E434(v158 + v49, v47, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
    v52 = *(v167 + 24);
    v53 = *(v180 + 48);
    v54 = v165;
    sub_22803FFCC(v46 + v52, v165, &qword_27D81E4B0, &qword_22813AB20);
    sub_22803FFCC(v47 + v52, v54 + v53, &qword_27D81E4B0, &qword_22813AB20);
    v55 = *v157;
    v56 = v181;
    if ((*v157)(v54, 1, v181) == 1)
    {
      v57 = v55(v54 + v53, 1, v56);
      v47 = v178;
      if (v57 != 1)
      {
        goto LABEL_105;
      }

      result = sub_228040034(v54, &qword_27D81E4B0, &qword_22813AB20);
      v26 = v51;
      goto LABEL_14;
    }

    v58 = v172;
    sub_22803FFCC(v54, v172, &qword_27D81E4B0, &qword_22813AB20);
    if (v55(v54 + v53, 1, v56) == 1)
    {
      sub_22803E49C(v58, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      v47 = v178;
LABEL_105:
      sub_228040034(v54, &qword_27D81EAA0, &unk_22813D8E0);
LABEL_111:
      sub_22803E49C(v47, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
      sub_22803E49C(v46, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
      goto LABEL_112;
    }

    v59 = v54 + v53;
    v60 = v179;
    sub_228030960(v59, v179, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    v47 = v178;
    if ((*v58 != *v60 || v58[1] != v60[1]) && (sub_2281399BC() & 1) == 0)
    {
      sub_22803E49C(v179, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      sub_22803E49C(v58, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      sub_228040034(v54, &qword_27D81E4B0, &qword_22813AB20);
      goto LABEL_111;
    }

    v61 = v58;
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v62 = v179;
    v63 = sub_22813926C();
    sub_22803E49C(v62, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    sub_22803E49C(v61, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    result = sub_228040034(v165, &qword_27D81E4B0, &qword_22813AB20);
    v26 = v150;
    if ((v63 & 1) == 0)
    {
      goto LABEL_111;
    }

LABEL_14:
    v64 = *v46;
    v65 = *(*v46 + 16);
    v177 = *v47;
    if (v65 != *(v177 + 16))
    {
      goto LABEL_111;
    }

    if (v65 && v64 != v177)
    {
      break;
    }

LABEL_92:
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v146 = sub_22813926C();
    sub_22803E49C(v47, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
    sub_22803E49C(v46, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
    if (v146)
    {
      v44 = v163 + 1;
      v43 = v154;
      v45 = v153;
      if (v163 + 1 != v166)
      {
        continue;
      }
    }

    return v146 & 1;
  }

  v66 = 0;
  v67 = (*(v192 + 80) + 32) & ~*(v192 + 80);
  v161 = v64 + v67;
  v160 = v177 + v67;
  v152 = v48;
  v156 = v64;
  v155 = v65;
  while (v66 < *(v64 + 16))
  {
    v68 = v66;
    v69 = *(v192 + 72) * v66;
    result = sub_22803E434(v161 + v69, v48, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
    v70 = *(v177 + 16);
    v168 = v68;
    if (v68 >= v70)
    {
      goto LABEL_118;
    }

    sub_22803E434(v160 + v69, v26, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
    v71 = v197[5];
    v72 = *(v191 + 48);
    v73 = v169;
    sub_22803FFCC(v48 + v71, v169, &qword_27D81E4A8, &unk_22813DE00);
    sub_22803FFCC(&v26[v71], v73 + v72, &qword_27D81E4A8, &unk_22813DE00);
    v74 = *v164;
    v75 = v196;
    if ((*v164)(v73, 1, v196) == 1)
    {
      if (v74(v73 + v72, 1, v75) != 1)
      {
        goto LABEL_99;
      }

      sub_228040034(v73, &qword_27D81E4A8, &unk_22813DE00);
      v76 = v190;
      v77 = v195;
    }

    else
    {
      v78 = v26;
      v79 = v190;
      v80 = v174;
      sub_22803FFCC(v73, v174, &qword_27D81E4A8, &unk_22813DE00);
      if (v74(v73 + v72, 1, v75) == 1)
      {
        sub_22803E49C(v80, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        v26 = v78;
        v48 = v152;
        v47 = v178;
LABEL_99:
        sub_228040034(v73, &qword_27D81EAA8, &unk_2281425E0);
        goto LABEL_110;
      }

      v81 = v73 + v72;
      v82 = v189;
      sub_228030960(v81, v189, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      if ((*v80 != *v82 || v80[1] != v82[1]) && (sub_2281399BC() & 1) == 0)
      {
        sub_22803E49C(v189, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_22803E49C(v80, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_228040034(v169, &qword_27D81E4A8, &unk_22813DE00);
        v26 = v78;
        v48 = v152;
        goto LABEL_109;
      }

      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v83 = v189;
      v84 = sub_22813926C();
      sub_22803E49C(v83, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_22803E49C(v80, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_228040034(v169, &qword_27D81E4A8, &unk_22813DE00);
      v76 = v79;
      v26 = v78;
      v48 = v152;
      v47 = v178;
      v77 = v195;
      if ((v84 & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    v85 = v197[6];
    v86 = *(v188 + 48);
    sub_22803FFCC(v48 + v85, v77, &qword_27D81E8C8, &qword_22813C4D8);
    sub_22803FFCC(&v26[v85], v77 + v86, &qword_27D81E8C8, &qword_22813C4D8);
    v87 = *v162;
    if ((*v162)(v77, 1, v76) == 1)
    {
      if (v87(v77 + v86, 1, v76) != 1)
      {
        goto LABEL_101;
      }

      sub_228040034(v77, &qword_27D81E8C8, &qword_22813C4D8);
    }

    else
    {
      v88 = v187;
      sub_22803FFCC(v77, v187, &qword_27D81E8C8, &qword_22813C4D8);
      if (v87(v77 + v86, 1, v76) == 1)
      {
        sub_22803E49C(v88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
LABEL_101:
        v147 = &qword_27D81EAE8;
        v148 = &qword_22813D928;
LABEL_107:
        sub_228040034(v77, v147, v148);
LABEL_110:
        sub_22803E49C(v26, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        sub_22803E49C(v48, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        v46 = v194;
        goto LABEL_111;
      }

      v89 = v186;
      sub_228030960(v77 + v86, v186, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      v90 = *(v76 + 20);
      v91 = *(v88 + v90);
      v92 = *(v89 + v90);
      if (v91 != v92)
      {

        v93 = sub_228031578(v91, v92);

        if ((v93 & 1) == 0)
        {
          sub_22803E49C(v186, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
          sub_22803E49C(v187, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
          v147 = &qword_27D81E8C8;
          v148 = &qword_22813C4D8;
          goto LABEL_107;
        }
      }

      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v94 = v48;
      v95 = v186;
      v96 = v187;
      v97 = sub_22813926C();
      sub_22803E49C(v95, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      v98 = v96;
      v48 = v94;
      v99 = v195;
      sub_22803E49C(v98, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      sub_228040034(v99, &qword_27D81E8C8, &qword_22813C4D8);
      if ((v97 & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    v100 = v197[7];
    v101 = *(v184 + 48);
    v102 = v48 + v100;
    v103 = v48;
    v104 = v193;
    sub_22803FFCC(v102, v193, &qword_27D81E9A8, &unk_22813C6E0);
    sub_22803FFCC(&v26[v100], v104 + v101, &qword_27D81E9A8, &unk_22813C6E0);
    v105 = *v159;
    v106 = v185;
    if ((*v159)(v104, 1, v185) == 1)
    {
      if (v105(v104 + v101, 1, v106) != 1)
      {
        goto LABEL_103;
      }

      sub_228040034(v104, &qword_27D81E9A8, &unk_22813C6E0);
      v48 = v103;
      v47 = v178;
    }

    else
    {
      v107 = v26;
      v108 = v183;
      sub_22803FFCC(v104, v183, &qword_27D81E9A8, &unk_22813C6E0);
      if (v105(v104 + v101, 1, v106) == 1)
      {
        sub_22803E49C(v108, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
        v26 = v107;
LABEL_103:
        sub_228040034(v104, &qword_27D81EAE0, &qword_22813D920);
        v48 = v103;
LABEL_109:
        v47 = v178;
        goto LABEL_110;
      }

      v109 = v182;
      sub_228030960(v104 + v101, v182, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
      v110 = *(v106 + 20);
      v111 = *(v173 + 48);
      v112 = v176;
      sub_22803FFCC(v108 + v110, v176, &qword_27D81E9A0, &unk_22813C6D0);
      v113 = v109 + v110;
      v114 = v112;
      sub_22803FFCC(v113, v112 + v111, &qword_27D81E9A0, &unk_22813C6D0);
      v115 = *v151;
      v116 = v175;
      if ((*v151)(v112, 1, v175) == 1)
      {
        v117 = v115(v112 + v111, 1, v116);
        v26 = v107;
        v118 = v103;
        if (v117 != 1)
        {
          goto LABEL_115;
        }

        sub_228040034(v112, &qword_27D81E9A0, &unk_22813C6D0);
        v119 = v183;
        v47 = v178;
        v48 = v118;
      }

      else
      {
        v120 = v171;
        sub_22803FFCC(v112, v171, &qword_27D81E9A0, &unk_22813C6D0);
        v121 = v115(v112 + v111, 1, v116);
        v26 = v107;
        if (v121 == 1)
        {
          sub_22803E49C(v120, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
          v118 = v103;
          v114 = v112;
LABEL_115:
          sub_228040034(v114, &qword_27D81EAD8, &qword_22813D918);
          v119 = v183;
          v47 = v178;
          v48 = v118;
LABEL_97:
          sub_22803E49C(v182, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
          sub_22803E49C(v119, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
          sub_228040034(v193, &qword_27D81E9A8, &unk_22813C6E0);
          goto LABEL_110;
        }

        v122 = v170;
        result = sub_228030960(v112 + v111, v170, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
        v48 = v103;
        v47 = v178;
        if (*v120 != *v122)
        {
          goto LABEL_96;
        }

        v123 = v120[1];
        v124 = *(v122 + 1);
        if (v122[16] == 1)
        {
          if (v124)
          {
            if (v124 == 1)
            {
              if (v123 != 1)
              {
                goto LABEL_96;
              }
            }

            else if (v123 != 2)
            {
              goto LABEL_96;
            }
          }

          else if (v123)
          {
            goto LABEL_96;
          }
        }

        else if (v123 != v124)
        {
          goto LABEL_96;
        }

        v125 = v120[3];
        v126 = *(v122 + 3);
        v127 = *(v125 + 16);
        if (v127 != *(v126 + 16))
        {
          goto LABEL_96;
        }

        if (v127 && v125 != v126)
        {
          v128 = (v125 + 32);
          v129 = (v126 + 40);
          do
          {
            v131 = *v128;
            v128 += 2;
            v130 = v131;
            v132 = *(v129 - 1);
            if (*v129 == 1)
            {
              if (v132)
              {
                if (v132 == 1)
                {
                  if (v130 != 1)
                  {
                    goto LABEL_96;
                  }
                }

                else if (v130 != 2)
                {
                  goto LABEL_96;
                }
              }

              else if (v130)
              {
                goto LABEL_96;
              }
            }

            else if (v130 != v132)
            {
              goto LABEL_96;
            }

            v129 += 16;
          }

          while (--v127);
        }

        v133 = v120[4];
        v134 = *(v122 + 4);
        v135 = *(v133 + 16);
        if (v135 != *(v134 + 16))
        {
LABEL_96:
          sub_22803E49C(v122, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
          sub_22803E49C(v120, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
          sub_228040034(v176, &qword_27D81E9A0, &unk_22813C6D0);
          v119 = v183;
          goto LABEL_97;
        }

        if (v135)
        {
          v136 = v133 == v134;
        }

        else
        {
          v136 = 1;
        }

        if (!v136)
        {
          v141 = (v133 + 32);
          v142 = (v134 + 40);
          while (v135)
          {
            v144 = *v141;
            v141 += 2;
            v143 = v144;
            v145 = *(v142 - 1);
            if (*v142 == 1)
            {
              if (v145)
              {
                if (v145 == 1)
                {
                  if (v143 != 1)
                  {
                    goto LABEL_96;
                  }
                }

                else if (v143 != 2)
                {
                  goto LABEL_96;
                }
              }

              else if (v143)
              {
                goto LABEL_96;
              }
            }

            else if (v143 != v145)
            {
              goto LABEL_96;
            }

            v142 += 16;
            if (!--v135)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_119;
        }

LABEL_75:
        sub_228137D7C();
        sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v137 = sub_22813926C();
        sub_22803E49C(v122, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
        sub_22803E49C(v120, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
        sub_228040034(v176, &qword_27D81E9A0, &unk_22813C6D0);
        v119 = v183;
        if ((v137 & 1) == 0)
        {
          goto LABEL_97;
        }
      }

      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v138 = v182;
      v139 = sub_22813926C();
      sub_22803E49C(v138, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
      sub_22803E49C(v119, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
      sub_228040034(v193, &qword_27D81E9A8, &unk_22813C6E0);
      if ((v139 & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v140 = sub_22813926C();
    sub_22803E49C(v26, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
    result = sub_22803E49C(v48, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
    v46 = v194;
    v64 = v156;
    if ((v140 & 1) == 0)
    {
      goto LABEL_111;
    }

    v66 = v168 + 1;
    if (v168 + 1 == v155)
    {
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
  return result;
}

uint64_t sub_22803999C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) - 8;
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
        sub_22803E434(v13, v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        sub_22803E434(v14, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        v16 = _s16SummarizationKit54Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfigV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_22803E49C(v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        sub_22803E49C(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
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

uint64_t sub_228039B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v51 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA0, &unk_22813D8E0);
  MEMORY[0x28223BE20](v52);
  v11 = &v46 - v10;
  v55 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  v12 = MEMORY[0x28223BE20](v55);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    goto LABEL_23;
  }

  if (!v17 || a1 == a2)
  {
    v42 = 1;
    return v42 & 1;
  }

  v54 = &v46 - v16;
  v49 = v14;
  v50 = v4;
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = (v5 + 48);
  v47 = *(v15 + 72);
  v48 = v9;
  v22 = &qword_22813AB20;
  while (1)
  {
    v23 = v22;
    v24 = v11;
    v25 = v54;
    sub_22803E434(v19, v54, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
    v53 = v19;
    sub_22803E434(v20, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
    v26 = *(v55 + 28);
    v27 = *(v52 + 48);
    v28 = v25 + v26;
    v11 = v24;
    v29 = v24;
    v22 = v23;
    sub_22803FFCC(v28, v29, &qword_27D81E4B0, v23);
    sub_22803FFCC(&v14[v26], &v11[v27], &qword_27D81E4B0, v23);
    v30 = *v21;
    v31 = v50;
    if ((*v21)(v11, 1, v50) != 1)
    {
      break;
    }

    v32 = v30(&v11[v27], 1, v31);
    v33 = v54;
    if (v32 != 1)
    {
      goto LABEL_20;
    }

    sub_228040034(v11, &qword_27D81E4B0, v23);
    v14 = v49;
LABEL_13:
    if (*v33 != *v14 || (sub_22803BD78(*(v33 + 1), *(v14 + 1)) & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v42 = sub_22813926C();
    sub_22803E49C(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
    sub_22803E49C(v33, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
    if (v42)
    {
      v20 += v47;
      v19 = v53 + v47;
      if (--v17)
      {
        continue;
      }
    }

    return v42 & 1;
  }

  v34 = v48;
  sub_22803FFCC(v11, v48, &qword_27D81E4B0, v23);
  if (v30(&v11[v27], 1, v31) == 1)
  {
    sub_22803E49C(v34, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    v33 = v54;
LABEL_20:
    v43 = &qword_27D81EAA0;
    v44 = &unk_22813D8E0;
    goto LABEL_21;
  }

  v35 = &v11[v27];
  v36 = v51;
  sub_228030960(v35, v51, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v33 = v54;
  if (*v34 == *v36 && v34[1] == v36[1] || (sub_2281399BC() & 1) != 0)
  {
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v37 = v48;
    v38 = v21;
    v39 = v51;
    v40 = sub_22813926C();
    v41 = v39;
    v21 = v38;
    sub_22803E49C(v41, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    sub_22803E49C(v37, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    v22 = v23;
    sub_228040034(v11, &qword_27D81E4B0, v23);
    v14 = v49;
    if ((v40 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  sub_22803E49C(v51, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_22803E49C(v48, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v43 = &qword_27D81E4B0;
  v44 = &qword_22813AB20;
LABEL_21:
  sub_228040034(v11, v43, v44);
  v14 = v49;
LABEL_22:
  sub_22803E49C(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
  sub_22803E49C(v33, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
LABEL_23:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_22803A17C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7 <= 1)
        {
          if (v7)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5)
          {
            return 0;
          }
        }

        else if (v7 == 2)
        {
          if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v7 == 3)
        {
          if (v5 != 3)
          {
            return 0;
          }
        }

        else if (v5 != 4)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_22803A234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v35 - v9);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAD0, &qword_22813D910);
  MEMORY[0x28223BE20](v40);
  v12 = &v35 - v11;
  v43 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
  v13 = MEMORY[0x28223BE20](v43);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = (&v35 - v17);
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    goto LABEL_36;
  }

  if (!v19 || a1 == a2)
  {
    v31 = 1;
    return v31 & 1;
  }

  v39 = v4;
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v44 = a2 + v20;
  v37 = v15;
  v38 = (v5 + 48);
  v36 = *(v16 + 72);
  v42 = (&v35 - v17);
  while (1)
  {
    sub_22803E434(v21, v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);
    sub_22803E434(v44, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);
    v22 = *v18;
    v23 = *v15;
    if (v15[8] == 1)
    {
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          if (v22 != 2)
          {
            goto LABEL_35;
          }
        }

        else if (v22 != 3)
        {
          goto LABEL_35;
        }
      }

      else if (v23)
      {
        if (v22 != 1)
        {
          goto LABEL_35;
        }
      }

      else if (v22)
      {
        goto LABEL_35;
      }
    }

    else if (v22 != v23)
    {
      goto LABEL_35;
    }

    v41 = v21;
    v24 = v7;
    v25 = *(v43 + 24);
    v26 = *(v40 + 48);
    sub_22803FFCC(v42 + v25, v12, &qword_27D81EAC8, &qword_22813D908);
    sub_22803FFCC(&v15[v25], &v12[v26], &qword_27D81EAC8, &qword_22813D908);
    v27 = v39;
    v28 = *v38;
    if ((*v38)(v12, 1, v39) == 1)
    {
      v29 = v28(&v12[v26], 1, v27);
      v7 = v24;
      v18 = v42;
      v15 = v37;
      if (v29 != 1)
      {
        goto LABEL_33;
      }

      goto LABEL_19;
    }

    sub_22803FFCC(v12, v10, &qword_27D81EAC8, &qword_22813D908);
    if (v28(&v12[v26], 1, v27) == 1)
    {
      break;
    }

    v7 = v24;
    sub_228030960(&v12[v26], v24, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
    if (*v10 != *v24 || v10[1] != v24[1])
    {
      sub_22803E49C(v24, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
      v15 = v37;
LABEL_31:
      sub_22803E49C(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
      v32 = &qword_27D81EAC8;
      v33 = &qword_22813D908;
      goto LABEL_34;
    }

    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v30 = sub_22813926C();
    sub_22803E49C(v24, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
    v18 = v42;
    v15 = v37;
    if ((v30 & 1) == 0)
    {
      goto LABEL_31;
    }

    sub_22803E49C(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
LABEL_19:
    sub_228040034(v12, &qword_27D81EAC8, &qword_22813D908);
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v31 = sub_22813926C();
    sub_22803E49C(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);
    sub_22803E49C(v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);
    if (v31)
    {
      v44 += v36;
      v21 = v41 + v36;
      if (--v19)
      {
        continue;
      }
    }

    return v31 & 1;
  }

  sub_22803E49C(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  v15 = v37;
LABEL_33:
  v32 = &qword_27D81EAD0;
  v33 = &qword_22813D910;
LABEL_34:
  sub_228040034(v12, v32, v33);
LABEL_35:
  sub_22803E49C(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);
  sub_22803E49C(v42, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);
LABEL_36:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_22803A894(uint64_t a1, uint64_t a2)
{
  v155 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v4 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v157 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  MEMORY[0x28223BE20](v6 - 8);
  v158 = &v131 - v7;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB0, &unk_22813D8F0);
  MEMORY[0x28223BE20](v148);
  v156 = &v131 - v8;
  v163 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v9 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  MEMORY[0x28223BE20](v11 - 8);
  v169 = &v131 - v12;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC0, &qword_22813D900);
  MEMORY[0x28223BE20](v162);
  v14 = &v131 - v13;
  v165 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v15 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v164 = (&v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v17 - 8);
  v171 = (&v131 - v18);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA8, &unk_2281425E0);
  MEMORY[0x28223BE20](v167);
  v166 = &v131 - v19;
  v173 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  v168 = *(v173 - 8);
  v20 = MEMORY[0x28223BE20](v173);
  v22 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v131 - v23;
  v154 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v25 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = (&v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v27 - 8);
  v147 = (&v131 - v28);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA0, &unk_22813D8E0);
  MEMORY[0x28223BE20](v153);
  v160 = &v131 - v29;
  v30 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
  v31 = MEMORY[0x28223BE20](v30);
  v172 = (&v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v31);
  v170 = (&v131 - v35);
  v36 = *(a1 + 16);
  if (v36 != *(a2 + 16))
  {
LABEL_75:
    v122 = 0;
    return v122 & 1;
  }

  if (!v36 || a1 == a2)
  {
    v122 = 1;
    return v122 & 1;
  }

  v142 = v33;
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = a1 + v37;
  v136 = a2 + v37;
  v135 = (v25 + 48);
  v39 = 0;
  v140 = (v9 + 48);
  v40 = (v15 + 48);
  v134 = (v4 + 48);
  v41 = *(v34 + 72);
  v42 = v170;
  v146 = v40;
  v141 = v36;
  v133 = v38;
  v150 = v24;
  v132 = v41;
  v149 = v22;
  while (1)
  {
    v43 = v41 * v39;
    result = sub_22803E434(v38 + v41 * v39, v42, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
    if (v39 == v141)
    {
      goto LABEL_80;
    }

    v137 = v39;
    v45 = v42;
    v46 = v172;
    sub_22803E434(v136 + v43, v172, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
    v47 = *(v142 + 24);
    v48 = *(v153 + 48);
    v49 = v45 + v47;
    v50 = v160;
    sub_22803FFCC(v49, v160, &qword_27D81E4B0, &qword_22813AB20);
    sub_22803FFCC(v46 + v47, v50 + v48, &qword_27D81E4B0, &qword_22813AB20);
    v51 = *v135;
    v52 = v154;
    if ((*v135)(v50, 1, v154) == 1)
    {
      v112 = v51(v50 + v48, 1, v52) == 1;
      v53 = v50;
      v54 = v165;
      if (!v112)
      {
        goto LABEL_66;
      }

      result = sub_228040034(v53, &qword_27D81E4B0, &qword_22813AB20);
      v55 = v149;
      v56 = v150;
      goto LABEL_15;
    }

    v57 = v147;
    sub_22803FFCC(v50, v147, &qword_27D81E4B0, &qword_22813AB20);
    v58 = v51(v50 + v48, 1, v52);
    v59 = v50;
    v54 = v165;
    if (v58 == 1)
    {
      v128 = v59;
      sub_22803E49C(v57, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      v53 = v128;
LABEL_66:
      v129 = &qword_27D81EAA0;
      v130 = &unk_22813D8E0;
      goto LABEL_67;
    }

    v60 = v59 + v48;
    v61 = v152;
    sub_228030960(v60, v152, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    if ((*v57 != *v61 || v57[1] != v61[1]) && (sub_2281399BC() & 1) == 0)
    {
      sub_22803E49C(v152, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      sub_22803E49C(v57, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      v129 = &qword_27D81E4B0;
      v130 = &qword_22813AB20;
      v53 = v160;
LABEL_67:
      sub_228040034(v53, v129, v130);
LABEL_74:
      sub_22803E49C(v172, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
      sub_22803E49C(v170, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
      goto LABEL_75;
    }

    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v62 = v152;
    v63 = sub_22813926C();
    sub_22803E49C(v62, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    sub_22803E49C(v57, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    result = sub_228040034(v160, &qword_27D81E4B0, &qword_22813AB20);
    v55 = v149;
    v56 = v150;
    v40 = v146;
    if ((v63 & 1) == 0)
    {
      goto LABEL_74;
    }

LABEL_15:
    v64 = *v170;
    v65 = *(*v170 + 16);
    v159 = *v172;
    if (v65 != *(v159 + 16))
    {
      goto LABEL_74;
    }

    if (v65 && v64 != v159)
    {
      break;
    }

LABEL_55:
    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v120 = v170;
    v121 = v172;
    v122 = sub_22813926C();
    v123 = v121;
    v42 = v120;
    sub_22803E49C(v123, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
    sub_22803E49C(v120, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
    if (v122)
    {
      v39 = v137 + 1;
      v38 = v133;
      v41 = v132;
      if (v137 + 1 != v141)
      {
        continue;
      }
    }

    return v122 & 1;
  }

  v66 = 0;
  v67 = (*(v168 + 80) + 32) & ~*(v168 + 80);
  v144 = v64 + v67;
  v143 = v159 + v67;
  v145 = v14;
  v139 = v64;
  v138 = v65;
  while (v66 < *(v64 + 16))
  {
    v68 = *(v168 + 72) * v66;
    result = sub_22803E434(v144 + v68, v56, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    if (v66 >= *(v159 + 16))
    {
      goto LABEL_79;
    }

    sub_22803E434(v143 + v68, v55, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    v69 = *(v173 + 20);
    v70 = *(v167 + 48);
    v71 = v56 + v69;
    v72 = v55;
    v73 = v166;
    sub_22803FFCC(v71, v166, &qword_27D81E4A8, &unk_22813DE00);
    sub_22803FFCC(v72 + v69, v73 + v70, &qword_27D81E4A8, &unk_22813DE00);
    v74 = *v40;
    if ((*v40)(v73, 1, v54) == 1)
    {
      v75 = v74(v73 + v70, 1, v54);
      v76 = v73;
      v55 = v72;
      if (v75 != 1)
      {
        goto LABEL_61;
      }

      sub_228040034(v76, &qword_27D81E4A8, &unk_22813DE00);
      v77 = v145;
      v56 = v150;
    }

    else
    {
      sub_22803FFCC(v73, v171, &qword_27D81E4A8, &unk_22813DE00);
      v76 = v73;
      if (v74(v73 + v70, 1, v54) == 1)
      {
        sub_22803E49C(v171, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        v55 = v72;
LABEL_61:
        v126 = &qword_27D81EAA8;
        v127 = &unk_2281425E0;
        goto LABEL_62;
      }

      v78 = v73 + v70;
      v79 = v164;
      sub_228030960(v78, v164, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      v55 = v72;
      if ((*v171 != *v79 || v171[1] != v79[1]) && (sub_2281399BC() & 1) == 0)
      {
        sub_22803E49C(v164, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_22803E49C(v171, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        v126 = &qword_27D81E4A8;
        v127 = &unk_22813DE00;
LABEL_62:
        sub_228040034(v76, v126, v127);
        v56 = v150;
        goto LABEL_73;
      }

      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v80 = v171;
      v81 = v164;
      v82 = sub_22813926C();
      v83 = v81;
      v84 = v80;
      v40 = v146;
      sub_22803E49C(v83, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_22803E49C(v84, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_228040034(v76, &qword_27D81E4A8, &unk_22813DE00);
      v77 = v145;
      v56 = v150;
      if ((v82 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    v151 = v66;
    v85 = v54;
    v86 = *(v173 + 24);
    v87 = *(v162 + 48);
    v88 = v55;
    v89 = v77;
    sub_22803FFCC(v56 + v86, v77, &qword_27D81EAB8, &qword_2281416A0);
    sub_22803FFCC(v88 + v86, v89 + v87, &qword_27D81EAB8, &qword_2281416A0);
    v90 = *v140;
    v91 = v163;
    if ((*v140)(v89, 1, v163) == 1)
    {
      v14 = v89;
      if (v90(v89 + v87, 1, v91) != 1)
      {
        goto LABEL_64;
      }

      sub_228040034(v89, &qword_27D81EAB8, &qword_2281416A0);
      v55 = v149;
      v54 = v85;
      v92 = v151;
    }

    else
    {
      v93 = v169;
      sub_22803FFCC(v89, v169, &qword_27D81EAB8, &qword_2281416A0);
      v14 = v89;
      if (v90(v89 + v87, 1, v91) == 1)
      {
        sub_22803E49C(v93, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
LABEL_64:
        sub_228040034(v14, &qword_27D81EAC0, &qword_22813D900);
        v55 = v149;
        goto LABEL_73;
      }

      v94 = v89 + v87;
      v95 = v91;
      v96 = v161;
      sub_228030960(v94, v161, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
      v97 = *(v95 + 20);
      v98 = *(v148 + 48);
      v99 = v156;
      sub_22803FFCC(v93 + v97, v156, &qword_27D81E998, &unk_228141680);
      sub_22803FFCC(v96 + v97, v99 + v98, &qword_27D81E998, &unk_228141680);
      v100 = *v134;
      v101 = v155;
      if ((*v134)(v99, 1, v155) == 1)
      {
        v112 = v100(v99 + v98, 1, v101) == 1;
        v40 = v146;
        v102 = v99;
        v55 = v149;
        v92 = v151;
        if (!v112)
        {
          goto LABEL_70;
        }

        sub_228040034(v102, &qword_27D81E998, &unk_228141680);
      }

      else
      {
        v103 = v158;
        sub_22803FFCC(v99, v158, &qword_27D81E998, &unk_228141680);
        v104 = v100(v99 + v98, 1, v101);
        v92 = v151;
        if (v104 == 1)
        {
          sub_22803E49C(v103, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
          v102 = v99;
          v55 = v149;
          v14 = v145;
LABEL_70:
          v124 = &qword_27D81EAB0;
          v125 = &unk_22813D8F0;
          goto LABEL_71;
        }

        v105 = v99 + v98;
        v106 = v157;
        sub_228030960(v105, v157, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        v107 = *v103;
        v108 = *v106;
        v109 = *(*v103 + 16);
        v55 = v149;
        v14 = v145;
        if (v109 != *(v108 + 16))
        {
          goto LABEL_59;
        }

        if (v109 && v107 != v108)
        {
          v110 = (v107 + 40);
          v111 = (v108 + 40);
          while (1)
          {
            v112 = *(v110 - 1) == *(v111 - 1) && *v110 == *v111;
            if (!v112 && (sub_2281399BC() & 1) == 0)
            {
              break;
            }

            v110 += 2;
            v111 += 2;
            if (!--v109)
            {
              goto LABEL_49;
            }
          }

LABEL_59:
          sub_22803E49C(v157, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
          sub_22803E49C(v158, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
          v124 = &qword_27D81E998;
          v125 = &unk_228141680;
          v102 = v156;
LABEL_71:
          sub_228040034(v102, v124, v125);
          v116 = v169;
LABEL_72:
          sub_22803E49C(v161, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
          sub_22803E49C(v116, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
          sub_228040034(v14, &qword_27D81EAB8, &qword_2281416A0);
LABEL_73:
          sub_22803E49C(v55, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
          sub_22803E49C(v56, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
          goto LABEL_74;
        }

LABEL_49:
        if (*(v158 + 8) != *(v157 + 8) || *(v158 + 12) != *(v157 + 12))
        {
          goto LABEL_59;
        }

        sub_228137D7C();
        sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v113 = v157;
        v114 = v158;
        v115 = sub_22813926C();
        sub_22803E49C(v113, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_22803E49C(v114, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_228040034(v156, &qword_27D81E998, &unk_228141680);
        v116 = v169;
        v40 = v146;
        if ((v115 & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v117 = v161;
      v118 = sub_22813926C();
      sub_22803E49C(v117, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
      sub_22803E49C(v169, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
      sub_228040034(v14, &qword_27D81EAB8, &qword_2281416A0);
      v54 = v165;
      if ((v118 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v119 = sub_22813926C();
    sub_22803E49C(v55, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    result = sub_22803E49C(v56, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
    v64 = v139;
    if ((v119 & 1) == 0)
    {
      goto LABEL_74;
    }

    v66 = v92 + 1;
    if (v66 == v138)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_22803BD78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v36 - v8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA8, &unk_2281425E0);
  MEMORY[0x28223BE20](v43);
  v11 = &v36 - v10;
  v47 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  v12 = MEMORY[0x28223BE20](v47);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    goto LABEL_26;
  }

  if (!v18 || a1 == a2)
  {
    v32 = 1;
    return v32 & 1;
  }

  v38 = v11;
  v39 = v14;
  v44 = v4;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v40 = &v36 - v16;
  v41 = (v5 + 48);
  v37 = *(v15 + 72);
  while (1)
  {
    result = sub_22803E434(v20, v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
    if (!v18)
    {
      __break(1u);
      return result;
    }

    v45 = v20;
    v46 = v18;
    sub_22803E434(v21, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
    v23 = *(v47 + 24);
    v24 = *(v43 + 48);
    v25 = v38;
    sub_22803FFCC(&v17[v23], v38, &qword_27D81E4A8, &unk_22813DE00);
    sub_22803FFCC(&v14[v23], v25 + v24, &qword_27D81E4A8, &unk_22813DE00);
    v26 = *v41;
    v27 = v44;
    if ((*v41)(v25, 1, v44) == 1)
    {
      if (v26(v25 + v24, 1, v27) == 1)
      {
        sub_228040034(v25, &qword_27D81E4A8, &unk_22813DE00);
        v17 = v40;
        goto LABEL_14;
      }

      sub_22803E49C(v39, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
      v35 = v40;
      v34 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch;
LABEL_22:
      sub_22803E49C(v35, v34);
      sub_228040034(v25, &qword_27D81EAA8, &unk_2281425E0);
      goto LABEL_26;
    }

    sub_22803FFCC(v25, v9, &qword_27D81E4A8, &unk_22813DE00);
    if (v26(v25 + v24, 1, v27) == 1)
    {
      sub_22803E49C(v39, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
      sub_22803E49C(v40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
      v34 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID;
      v35 = v9;
      goto LABEL_22;
    }

    v28 = v25 + v24;
    v29 = v42;
    sub_228030960(v28, v42, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    v17 = v40;
    if ((*v9 != *v29 || v9[1] != v29[1]) && (sub_2281399BC() & 1) == 0)
    {
      break;
    }

    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v30 = v42;
    v31 = sub_22813926C();
    sub_22803E49C(v30, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    sub_22803E49C(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    sub_228040034(v25, &qword_27D81E4A8, &unk_22813DE00);
    if ((v31 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_14:
    v14 = v39;
    if (*v17 != *v39)
    {
      v33 = v39;
      goto LABEL_25;
    }

    sub_228137D7C();
    sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v32 = sub_22813926C();
    sub_22803E49C(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
    sub_22803E49C(v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
    if (v32)
    {
      v18 = v46 - 1;
      v21 += v37;
      v20 = v45 + v37;
      if (v46 != 1)
      {
        continue;
      }
    }

    return v32 & 1;
  }

  sub_22803E49C(v42, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_22803E49C(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_228040034(v25, &qword_27D81E4A8, &unk_22813DE00);
LABEL_24:
  v33 = v39;
LABEL_25:
  sub_22803E49C(v33, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
  sub_22803E49C(v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
LABEL_26:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_22803C3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) - 8;
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
        sub_22803E434(v13, v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
        sub_22803E434(v14, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
        v16 = static Com_Apple_Summarizationkit_Proto_Rule.== infix(_:_:)(v10, v7);
        sub_22803E49C(v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
        sub_22803E49C(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
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

uint64_t sub_22803C5A0(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22803C5FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 <= 1)
      {
        if (*v3)
        {
          v7 = 0x656E694C706F74;
        }

        else
        {
          v7 = 0x6369706F74;
        }

        if (*v3)
        {
          v8 = 0xE700000000000000;
        }

        else
        {
          v8 = 0xE500000000000000;
        }
      }

      else if (v6 == 2)
      {
        v8 = 0xE800000000000000;
        v7 = 0x736973706F6E7973;
      }

      else if (v6 == 3)
      {
        v7 = 0x6F436C6175736976;
        v8 = 0xEE0073747065636ELL;
      }

      else
      {
        v7 = 0x6F546C6175736976;
        v8 = 0xED0000656E694C70;
      }

      v9 = *v4;
      if (v9 <= 1)
      {
        if (*v4)
        {
          v11 = 0x656E694C706F74;
        }

        else
        {
          v11 = 0x6369706F74;
        }

        if (*v4)
        {
          v10 = 0xE700000000000000;
        }

        else
        {
          v10 = 0xE500000000000000;
        }

        if (v7 != v11)
        {
LABEL_5:
          v5 = sub_2281399BC();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else if (v9 == 2)
      {
        v10 = 0xE800000000000000;
        if (v7 != 0x736973706F6E7973)
        {
          goto LABEL_5;
        }
      }

      else if (v9 == 3)
      {
        v10 = 0xEE0073747065636ELL;
        if (v7 != 0x6F436C6175736976)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0xED0000656E694C70;
        if (v7 != 0x6F546C6175736976)
        {
          goto LABEL_5;
        }
      }

      if (v8 != v10)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAD8, &qword_22813D918);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  sub_22803FFCC(a1 + v14, v13, &qword_27D81E9A0, &unk_22813C6D0);
  sub_22803FFCC(a2 + v14, &v13[v15], &qword_27D81E9A0, &unk_22813C6D0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_228040034(v13, &qword_27D81E9A0, &unk_22813C6D0);
LABEL_9:
      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_22813926C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_22803FFCC(v13, v9, &qword_27D81E9A0, &unk_22813C6D0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_22803E49C(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
LABEL_6:
    sub_228040034(v13, &qword_27D81EAD8, &qword_22813D918);
    goto LABEL_7;
  }

  v18 = v21[0];
  sub_228030960(&v13[v15], v21[0], type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  v19 = _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfigV018FactualConsistencyJ0V2eeoiySbAE_AEtFZ_0(v9, v18);
  sub_22803E49C(v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  sub_22803E49C(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  sub_228040034(v13, &qword_27D81E9A0, &unk_22813C6D0);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfigV018FactualConsistencyJ0V2eeoiySbAE_AEtFZ_0(void *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = *(a2 + 1);
  if (a2[16] != 1)
  {
    if (v5 == v6)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v6)
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v5 == 1)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v5 != 2)
  {
    return 0;
  }

LABEL_13:
  if ((sub_228037C08(a1[3], *(a2 + 3)) & 1) == 0 || (sub_228037C08(a1[4], *(a2 + 4)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t _s16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_228031578(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t sub_22803CD74(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB0, &unk_22813D8F0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  if (*a1 != *a2 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_2281399BC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v27 = v9;
  v26 = a3(0);
  v16 = *(v26 + 36);
  v17 = *(v13 + 48);
  sub_22803FFCC(a1 + v16, v15, &qword_27D81E998, &unk_228141680);
  sub_22803FFCC(a2 + v16, &v15[v17], &qword_27D81E998, &unk_228141680);
  v18 = *(v7 + 48);
  if (v18(v15, 1, v6) != 1)
  {
    sub_22803FFCC(v15, v12, &qword_27D81E998, &unk_228141680);
    if (v18(&v15[v17], 1, v6) != 1)
    {
      v22 = &v15[v17];
      v23 = v27;
      sub_228030960(v22, v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
      if ((sub_228037F4C(*v12, *v23) & 1) != 0 && v12[8] == *(v23 + 8) && *(v12 + 3) == *(v23 + 12))
      {
        sub_228137D7C();
        sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v24 = sub_22813926C();
        sub_22803E49C(v23, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_22803E49C(v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_228040034(v15, &qword_27D81E998, &unk_228141680);
        if (v24)
        {
          goto LABEL_8;
        }

LABEL_23:
        v19 = 0;
        return v19 & 1;
      }

      sub_22803E49C(v23, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
      sub_22803E49C(v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
      v20 = &qword_27D81E998;
      v21 = &unk_228141680;
LABEL_22:
      sub_228040034(v15, v20, v21);
      goto LABEL_23;
    }

    sub_22803E49C(v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
LABEL_15:
    v20 = &qword_27D81EAB0;
    v21 = &unk_22813D8F0;
    goto LABEL_22;
  }

  if (v18(&v15[v17], 1, v6) != 1)
  {
    goto LABEL_15;
  }

  sub_228040034(v15, &qword_27D81E998, &unk_228141680);
LABEL_8:
  if ((sub_22803A17C(a1[3], a2[3]) & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_2281399BC() & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_22813926C();
  return v19 & 1;
}

uint64_t _s16SummarizationKit54Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v3 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v59 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAE0, &qword_22813D920);
  MEMORY[0x28223BE20](v63);
  v66 = &v59 - v7;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x28223BE20](v8);
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v59 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAE8, &qword_22813D928);
  MEMORY[0x28223BE20](v68);
  v72 = &v59 - v12;
  v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v59 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA8, &unk_2281425E0);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v59 - v22;
  v69 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  v24 = *(v69 + 20);
  v25 = *(v21 + 56);
  v73 = a1;
  sub_22803FFCC(a1 + v24, v23, &qword_27D81E4A8, &unk_22813DE00);
  sub_22803FFCC(v74 + v24, &v23[v25], &qword_27D81E4A8, &unk_22813DE00);
  v26 = *(v14 + 48);
  if (v26(v23, 1, v13) == 1)
  {
    if (v26(&v23[v25], 1, v13) == 1)
    {
      sub_228040034(v23, &qword_27D81E4A8, &unk_22813DE00);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_22803FFCC(v23, v19, &qword_27D81E4A8, &unk_22813DE00);
  if (v26(&v23[v25], 1, v13) == 1)
  {
    sub_22803E49C(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
LABEL_6:
    v27 = &qword_27D81EAA8;
    v28 = &unk_2281425E0;
LABEL_7:
    v29 = v23;
LABEL_29:
    sub_228040034(v29, v27, v28);
    goto LABEL_30;
  }

  sub_228030960(&v23[v25], v16, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  if ((*v19 != *v16 || v19[1] != v16[1]) && (sub_2281399BC() & 1) == 0)
  {
    sub_22803E49C(v16, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    sub_22803E49C(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
    v27 = &qword_27D81E4A8;
    v28 = &unk_22813DE00;
    goto LABEL_7;
  }

  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v30 = sub_22813926C();
  sub_22803E49C(v16, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_22803E49C(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_228040034(v23, &qword_27D81E4A8, &unk_22813DE00);
  if ((v30 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  v31 = v69;
  v32 = *(v69 + 24);
  v33 = *(v68 + 48);
  v35 = v72;
  v34 = v73;
  sub_22803FFCC(v73 + v32, v72, &qword_27D81E8C8, &qword_22813C4D8);
  v36 = v74;
  sub_22803FFCC(v74 + v32, v35 + v33, &qword_27D81E8C8, &qword_22813C4D8);
  v37 = v71;
  v38 = *(v70 + 48);
  if (v38(v35, 1, v71) != 1)
  {
    v39 = v67;
    sub_22803FFCC(v35, v67, &qword_27D81E8C8, &qword_22813C4D8);
    if (v38(v35 + v33, 1, v37) != 1)
    {
      v40 = v62;
      sub_228030960(v35 + v33, v62, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      v41 = *(v37 + 20);
      v42 = *(v39 + v41);
      v43 = *(v40 + v41);
      if (v42 == v43 || (, , v44 = sub_228031578(v42, v43), , , (v44 & 1) != 0))
      {
        sub_228137D7C();
        sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v45 = sub_22813926C();
        sub_22803E49C(v40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
        sub_22803E49C(v39, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
        sub_228040034(v35, &qword_27D81E8C8, &qword_22813C4D8);
        if ((v45 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      sub_22803E49C(v40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      sub_22803E49C(v39, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
      v27 = &qword_27D81E8C8;
      v28 = &qword_22813C4D8;
      goto LABEL_18;
    }

    sub_22803E49C(v39, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
LABEL_17:
    v27 = &qword_27D81EAE8;
    v28 = &qword_22813D928;
LABEL_18:
    v29 = v35;
    goto LABEL_29;
  }

  if (v38(v35 + v33, 1, v37) != 1)
  {
    goto LABEL_17;
  }

  sub_228040034(v35, &qword_27D81E8C8, &qword_22813C4D8);
LABEL_22:
  v46 = *(v31 + 28);
  v47 = *(v63 + 48);
  v48 = v66;
  sub_22803FFCC(v34 + v46, v66, &qword_27D81E9A8, &unk_22813C6E0);
  v49 = v36 + v46;
  v50 = v48;
  sub_22803FFCC(v49, v48 + v47, &qword_27D81E9A8, &unk_22813C6E0);
  v51 = v65;
  v52 = *(v64 + 48);
  if (v52(v48, 1, v65) == 1)
  {
    if (v52(v48 + v47, 1, v51) == 1)
    {
      sub_228040034(v48, &qword_27D81E9A8, &unk_22813C6E0);
LABEL_33:
      sub_228137D7C();
      sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v54 = sub_22813926C();
      return v54 & 1;
    }

    goto LABEL_28;
  }

  v53 = v61;
  sub_22803FFCC(v50, v61, &qword_27D81E9A8, &unk_22813C6E0);
  if (v52(v50 + v47, 1, v51) == 1)
  {
    sub_22803E49C(v53, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
LABEL_28:
    v27 = &qword_27D81EAE0;
    v28 = &qword_22813D920;
    v29 = v50;
    goto LABEL_29;
  }

  v56 = v50 + v47;
  v57 = v60;
  sub_228030960(v56, v60, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  v58 = _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfigV2eeoiySbAC_ACtFZ_0(v53, v57);
  sub_22803E49C(v57, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  sub_22803E49C(v53, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
  sub_228040034(v50, &qword_27D81E9A8, &unk_22813C6E0);
  if (v58)
  {
    goto LABEL_33;
  }

LABEL_30:
  v54 = 0;
  return v54 & 1;
}

uint64_t _s16SummarizationKit53Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA0, &unk_22813D8E0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v25 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  v14 = *(v25 + 24);
  v15 = *(v11 + 56);
  v27 = a1;
  sub_22803FFCC(a1 + v14, v13, &qword_27D81E4B0, &qword_22813AB20);
  sub_22803FFCC(a2 + v14, &v13[v15], &qword_27D81E4B0, &qword_22813AB20);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_228040034(v13, &qword_27D81E4B0, &qword_22813AB20);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_22803FFCC(v13, v9, &qword_27D81E4B0, &qword_22813AB20);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_22803E49C(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
LABEL_6:
    v17 = &qword_27D81EAA0;
    v18 = &unk_22813D8E0;
LABEL_7:
    sub_228040034(v13, v17, v18);
LABEL_16:
    v22 = 0;
    return v22 & 1;
  }

  v19 = v26;
  sub_228030960(&v13[v15], v26, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v20 = *v9 == *v19 && v9[1] == v19[1];
  if (!v20 && (sub_2281399BC() & 1) == 0)
  {
    sub_22803E49C(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    sub_22803E49C(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    v17 = &qword_27D81E4B0;
    v18 = &qword_22813AB20;
    goto LABEL_7;
  }

  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v21 = sub_22813926C();
  sub_22803E49C(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_22803E49C(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_228040034(v13, &qword_27D81E4B0, &qword_22813AB20);
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  if ((sub_22803999C(*v27, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_228137D7C();
  sub_22803E608(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v22 = sub_22813926C();
  return v22 & 1;
}

uint64_t sub_22803E084(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D0, &unk_22813C4E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8F0, &unk_22813C500);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput;
  *(v1 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput) = 0;
  v14 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  *(v1 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix) = MEMORY[0x277D84F90];
  v23 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe;
  *(v1 + OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe) = 0;
  v15 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__input;
  swift_beginAccess();
  sub_22803FFCC(a1 + v15, v8, &qword_27D81E8F0, &unk_22813C500);
  swift_beginAccess();
  sub_22803E3CC(v8, v1 + v9, &qword_27D81E8F0, &unk_22813C500);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__output;
  swift_beginAccess();
  sub_22803FFCC(a1 + v16, v5, &qword_27D81E8D0, &unk_22813C4E0);
  swift_beginAccess();
  sub_22803E3CC(v5, v1 + v11, &qword_27D81E8D0, &unk_22813C4E0);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__summarizeUnsafeInput;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + v17);
  swift_beginAccess();
  *(v1 + v13) = v17;
  v18 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
  swift_beginAccess();
  v19 = *(a1 + v18);
  swift_beginAccess();
  *(v1 + v14) = v19;

  v20 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__throwErrorIfFinalDecisionUnsafe;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v20);
  v21 = v23;
  swift_beginAccess();
  *(v1 + v21) = a1;
  return v1;
}

uint64_t sub_22803E3CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22803E434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22803E49C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22803E57C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22803E5B4()
{
  result = qword_2813C5470;
  if (!qword_2813C5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5470);
  }

  return result;
}

uint64_t sub_22803E608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22803E650()
{
  result = qword_2813C4D30;
  if (!qword_2813C4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4D30);
  }

  return result;
}

unint64_t sub_22803E6A4()
{
  result = qword_2813C8618;
  if (!qword_2813C8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8618);
  }

  return result;
}

unint64_t sub_22803E700()
{
  result = qword_2813C8600;
  if (!qword_2813C8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8600);
  }

  return result;
}

unint64_t sub_22803E788()
{
  result = qword_2813C8608;
  if (!qword_2813C8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8608);
  }

  return result;
}

unint64_t sub_22803E7E0()
{
  result = qword_2813C5468;
  if (!qword_2813C5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5468);
  }

  return result;
}

unint64_t sub_22803E838()
{
  result = qword_2813C5458;
  if (!qword_2813C5458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5458);
  }

  return result;
}

unint64_t sub_22803E8C0()
{
  result = qword_2813C5460;
  if (!qword_2813C5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5460);
  }

  return result;
}

unint64_t sub_22803E918()
{
  result = qword_2813C4D28;
  if (!qword_2813C4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4D28);
  }

  return result;
}

unint64_t sub_22803E970()
{
  result = qword_2813C4D18;
  if (!qword_2813C4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4D18);
  }

  return result;
}

uint64_t sub_22803E9F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_22803EA4C()
{
  result = qword_2813C4D20;
  if (!qword_2813C4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4D20);
  }

  return result;
}

uint64_t keypath_get_9Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22803F458(uint64_t a1)
{
  result = sub_228137D7C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_46Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_47Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_22803F7A0(uint64_t a1)
{
  sub_22803FAA8(319, &qword_2813C46A8, &type metadata for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.SanitizerType);
  if (v1 <= 0x3F)
  {
    sub_228137D7C();
    if (v2 <= 0x3F)
    {
      sub_22803F970(319, qword_2813C5B90, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22803F8BC(uint64_t a1)
{
  sub_228137D7C();
  if (v1 <= 0x3F)
  {
    sub_22803F970(319, qword_2813C4C98, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22803F970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22803F9FC(uint64_t a1)
{
  sub_22803FAA8(319, &qword_2813C46E0, &type metadata for Com_Apple_Summarizationkit_Proto_SummarizationStyle);
  if (v1 <= 0x3F)
  {
    sub_228137D7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22803FAA8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22813956C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22803FB30(uint64_t a1)
{
  sub_228137D7C();
  if (v1 <= 0x3F)
  {
    sub_22803F970(319, qword_2813C5A88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22803F970(319, qword_2813C5260, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22803F970(319, qword_2813C4BD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22803FC9C(uint64_t a1)
{
  sub_22803F970(319, &qword_2813C46B0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_228137D7C();
    if (v2 <= 0x3F)
    {
      sub_22803F970(319, qword_2813C5EC0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22803FDC0(uint64_t a1)
{
  sub_22803F970(319, &qword_2813C46C8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_228137D7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22803FE8C(uint64_t a1)
{
  sub_22803F970(319, qword_2813C55C8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.InputConfig, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22803F970(319, qword_2813C54F0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig.OutputConfig, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22803FFCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_228040034(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t SummarySafetyClassification.merge(_:)()
{
  v1 = v0;
  v2 = sub_228138DFC();
  v3 = sub_228138E0C();
  (*(*(v3 - 8) + 8))(v1, v3);
  if (v2)
  {
    sub_228138DFC();
  }

  return sub_228138DEC();
}

uint64_t SummarySafetyClassification.merging(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_228138E0C();
  v4 = *(v3 - 8);
  (*(v4 + 16))(a1, v1, v3);
  v5 = sub_228138DFC();
  (*(v4 + 8))(a1, v3);
  if (v5)
  {
    sub_228138DFC();
  }

  return sub_228138DEC();
}

uint64_t sub_2280403DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_228138E6C();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_2281338C0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_2281338C0((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 16) = v17;
    v18 = v8 + 16 * v16;
    *(v18 + 32) = v21;
    *(v18 + 40) = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t SKMailMessage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22813899C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SKMailMessage.preprocess(sharedSessionData:)(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_228138E6C();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280406B0, 0, 0);
}

uint64_t sub_2280406B0()
{
  v111 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  sub_22813894C();
  v4 = sub_228041788();
  v6 = v5;
  (*(v3 + 8))(v1, v2);
  if (!v6)
  {
    v32 = swift_allocObject();
    *(v32 + 16) = 12;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0;
    v33 = sub_227FF96D4(0, 0xD00000000000007FLL, 0x8000000228145F40, 23, sub_228041778, v32);
    sub_227FDB3CC();
    swift_allocError();
    *v34 = 12;
    *(v34 + 8) = v33;
    swift_willThrow();
    goto LABEL_16;
  }

  v108 = v4;
  v7 = v0[16];
  v8 = sub_2281388AC();
  v9 = swift_task_alloc();
  *(v9 + 16) = v7;
  v10 = 0;
  v11 = sub_2280403DC(sub_228045458, v9, v8);
  v0[21] = v11;

  v12 = *(v11 + 16);
  if (v12 >= 5)
  {
    v12 = 5;
  }

  v0[10] = v11;
  v0[11] = v11 + 32;
  v0[12] = 0;
  v0[13] = (2 * v12) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB00, &qword_22813F970);
  sub_22804561C(&qword_2813C45D0, &qword_27D81EB00, &qword_22813F970, MEMORY[0x277D83FA0]);
  v106 = sub_22813925C();
  v14 = v13;
  v15 = sub_2281388AC();
  sub_22813894C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_88:
    v15 = sub_228133B70(0, v15[2] + 1, 1, v15);
  }

  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_228133B70((v16 > 1), v17 + 1, 1, v15);
  }

  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[17];
  v15[2] = v17 + 1;
  (*(v19 + 32))(v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, v18, v20);

  v21 = sub_22813895C();
  if (!v22)
  {

    v35 = swift_allocObject();
    *(v35 + 16) = 13;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0;
    v36 = sub_227FF96D4(0, 0xD00000000000007FLL, 0x8000000228145F40, 37, sub_228045C30, v35);
    sub_227FDB3CC();
    swift_allocError();
    *v37 = 13;
    *(v37 + 8) = v36;
    swift_willThrow();

    goto LABEL_16;
  }

  v23 = v21;
  v24 = v22;
  v107 = v14;
  v25 = v0[15];
  v26 = sub_22813893C();
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = *(v25 + 208);
  v105 = v25;
  v30 = sub_2280A7954(v26, v28, v25 + 160, v29);
  if (v10)
  {

LABEL_16:

    v42 = v0[1];

    return v42();
  }

  v14 = v30;
  v98 = v29;
  v99 = v23;
  v102 = v24;
  v104 = v31;

  v38 = sub_2281388BC();

  v39 = sub_228041BC0(v38, v108, v6, sub_228045C74);
  v103 = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  v101 = v14;
  *(inited + 32) = v14;
  *(inited + 40) = v104;
  *(inited + 48) = v39;
  v100 = v39;
  *(inited + 56) = v103;

  sub_2280A8554(inited, (v25 + 160));
  v44 = v0[15];
  swift_setDeallocating();
  swift_arrayDestroy();
  if (sub_2280454D4(v44))
  {
    v45 = objc_opt_self();

    v46 = v39;
    if (qword_2813C4620 != -1)
    {
      swift_once();
    }

    if (byte_2813C4629 == 1)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v47 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v47 = &qword_2813C76F8;
    }

    v52 = *(*v47 + 400);
    v53 = *(*v47 + 408);
    v95 = *(*v47 + 2208);

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    v50 = v106;
    if (byte_2813C4638 == 1)
    {
      v53(v109, v95);

      v52 = LOBYTE(v109[0]);
    }

    else
    {
    }

    if (v52)
    {
      v48 = 4;
    }

    else
    {
      v48 = 3;
    }

    v49 = v108;
    v14 = v101;
    v51 = v102;
  }

  else
  {
    v48 = 1;
    v49 = v108;
    v50 = v106;
    v51 = v102;
    v46 = v100;
  }

  v54 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v54 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    strcpy(v109, "Sender: ");
    BYTE1(v109[1]) = 0;
    WORD1(v109[1]) = 0;
    HIDWORD(v109[1]) = -402653184;
    MEMORY[0x22AAB1970]();
    v55 = v109[1];
    v93 = v109[0];
  }

  else
  {
    v93 = 0;
    v55 = 0xE000000000000000;
  }

  v96 = v55;
  v56 = HIBYTE(v107) & 0xF;
  if ((v107 & 0x2000000000000000) == 0)
  {
    v56 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (v56)
  {
    strcpy(v109, "Recipients: ");
    BYTE5(v109[1]) = 0;
    HIWORD(v109[1]) = -5120;
    MEMORY[0x22AAB1970](v50);
    v58 = v109[0];
    v57 = v109[1];
  }

  else
  {
    v58 = 0;
    v57 = 0xE000000000000000;
  }

  v94 = v57;
  v59 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v59 = v99 & 0xFFFFFFFFFFFFLL;
  }

  if (v59)
  {
    strcpy(v109, "Subject: ");
    WORD1(v109[1]) = 0;
    HIDWORD(v109[1]) = -385875968;
    MEMORY[0x22AAB1970]();
    v15 = v109[0];
    v60 = v109[1];
  }

  else
  {
    v15 = 0;
    v60 = 0xE000000000000000;
  }

  v109[0] = 0x203A79646F42;
  v109[1] = 0xE600000000000000;
  MEMORY[0x22AAB1970](v14, v104);
  v62 = v109[0];
  v61 = v109[1];
  if (v48 > 2u)
  {

    if (v48 == 3)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_22813B030;
      *(v10 + 32) = v15;
      *(v10 + 40) = v60;
      v64 = 2;
      *(v10 + 48) = v62;
      *(v10 + 56) = v61;
    }

    else
    {

      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_22813A4B0;
      *(v10 + 32) = v14;
      *(v10 + 40) = v104;

      v64 = 1;
    }
  }

  else
  {

    v63 = swift_allocObject();
    if (v48 == 1)
    {
      v10 = v63;
      *(v63 + 16) = xmmword_22813B480;
      *(v63 + 32) = v93;
      *(v63 + 40) = v96;
      *(v63 + 48) = v58;
      *(v63 + 56) = v94;
    }

    else
    {
      v10 = v63;
      *(v63 + 16) = xmmword_22813B480;
      *(v63 + 32) = v93;
      *(v63 + 40) = v96;
      *(v63 + 48) = v15;
      *(v63 + 56) = v60;
    }

    *(v63 + 64) = v62;
    *(v63 + 72) = v61;
    v64 = 3;
  }

  v65 = HIBYTE(v103) & 0xF;
  if ((v103 & 0x2000000000000000) == 0)
  {
    v65 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v65)
  {
    v109[0] = 10;
    v109[1] = 0xE100000000000000;
    MEMORY[0x22AAB1970](v46);
    v6 = v109[1];
    v97 = v109[0];
    v64 = *(v10 + 16);
  }

  else
  {
    v97 = 0;
    v6 = 0xE000000000000000;
  }

  v66 = 0;
  v67 = v10 + 40;
  v68 = MEMORY[0x277D84F90];
LABEL_68:
  v69 = (v67 + 16 * v66);
  while (v64 != v66)
  {
    if (v66 >= v64)
    {
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v14 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      goto LABEL_87;
    }

    v10 = *(v69 - 1);
    v15 = *v69;
    v70 = (*v69 >> 56) & 0xF;
    if ((*v69 & 0x2000000000000000) == 0)
    {
      v70 = v10 & 0xFFFFFFFFFFFFLL;
    }

    v69 += 2;
    ++v66;
    if (v70)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109[0] = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_228043AD4(0, *(v68 + 16) + 1, 1);
        v68 = v109[0];
      }

      v73 = *(v68 + 16);
      v72 = *(v68 + 24);
      v74 = v73 + 1;
      if (v73 >= v72 >> 1)
      {
        sub_228043AD4((v72 > 1), v73 + 1, 1);
        v74 = v73 + 1;
        v68 = v109[0];
      }

      *(v68 + 16) = v74;
      v75 = v68 + 16 * v73;
      *(v75 + 32) = v10;
      *(v75 + 40) = v15;
      v66 = v14;
      goto LABEL_68;
    }
  }

  v0[14] = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  sub_22804561C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
  v76 = sub_22813925C();
  v78 = v77;

  v109[0] = v76;
  v109[1] = v78;

  MEMORY[0x22AAB1970](v97, v6);

  v80 = v109[0];
  v79 = v109[1];
  v0[22] = v109[1];
  if (v98)
  {
    v81 = sub_22813936C();

    KeyPath = swift_getKeyPath(byte_22813D970);
    os_unfair_lock_lock(v98 + 4);
    v83 = MEMORY[0x277D84A28];
    v110 = MEMORY[0x277D84A28];
    v109[0] = v81;

    sub_228044A14(v109, KeyPath, &v98[6], sub_227FEB404);
    os_unfair_lock_unlock(v98 + 4);

    v84 = sub_22813936C();

    v85 = swift_getKeyPath(byte_22813D998);
    os_unfair_lock_lock(v98 + 4);
    v110 = v83;
    v109[0] = v84;

    sub_228044A14(v109, v85, &v98[6], sub_227FEB404);
    os_unfair_lock_unlock(v98 + 4);

    v86 = sub_22813936C();

    v87 = swift_getKeyPath(byte_22813D9C0);
    os_unfair_lock_lock(v98 + 4);
    v110 = v83;
    v109[0] = v86;

    sub_228044A14(v109, v87, &v98[6], sub_227FEB404);
    os_unfair_lock_unlock(v98 + 4);

    v88 = sub_22813936C();

    v89 = swift_getKeyPath(byte_22813D9E8);
    os_unfair_lock_lock(v98 + 4);
    v110 = v83;
    v109[0] = v88;

    sub_228044A14(v109, v89, &v98[6], sub_227FEB404);
    os_unfair_lock_unlock(v98 + 4);

    v90 = sub_22813936C();

    os_unfair_lock_lock(v98 + 4);
    v110 = v83;
    v109[0] = v90;

    sub_228044A14(v109, v91, &v98[6], sub_227FEB404);
    os_unfair_lock_unlock(v98 + 4);
  }

  else
  {
  }

  v92 = swift_task_alloc();
  v0[23] = v92;
  *v92 = v0;
  v92[1] = sub_22804153C;

  return sub_2280D89D0(v80, v79, v105 + 160, 0);
}

uint64_t sub_22804153C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v7 = sub_2280416FC;
  }

  else
  {
    *(v6 + 200) = a2;
    *(v6 + 208) = a1;
    v7 = sub_228041670;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_228041670()
{

  v1 = v0[1];
  v3 = v0[25];
  v2 = v0[26];

  return v1(v2, v3);
}

uint64_t sub_2280416FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228041788()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB50, &qword_22813DAA0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - v4;
  result = sub_228138E5C();
  if (!v7)
  {
LABEL_6:
    sub_228138E2C();
    v9 = sub_228138E3C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) != 1)
    {
      sub_228045760(v5, v3);
      v13 = (*(v10 + 88))(v3, v9);
      if (v13 == *MEMORY[0x277D4B3A8] || v13 == *MEMORY[0x277D4B3A0] || v13 == *MEMORY[0x277D4B3B0])
      {
        (*(v10 + 96))(v3, v9);
        v11 = *v3;
        v12 = v3[1];
        goto LABEL_12;
      }

      (*(v10 + 8))(v3, v9);
    }

    v11 = 0;
    v12 = 0xE000000000000000;
LABEL_12:
    sub_2280457D0(v5, &qword_27D81EB50, &qword_22813DAA0);
    v14 = HIBYTE(v12) & 0xF;
    result = v11;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {

      return 0;
    }

    return result;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    goto LABEL_6;
  }

  return result;
}

uint64_t sub_228041998()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB50, &qword_22813DAA0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - v4;
  result = sub_228138E5C();
  if (!v7)
  {
LABEL_6:
    sub_228138E2C();
    v9 = sub_228138E3C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) != 1)
    {
      sub_228045760(v5, v3);
      v13 = (*(v10 + 88))(v3, v9);
      if (v13 == *MEMORY[0x277D4B3A8] || v13 == *MEMORY[0x277D4B3A0] || v13 == *MEMORY[0x277D4B3B0])
      {
        (*(v10 + 96))(v3, v9);
        v11 = *v3;
        v12 = v3[1];
        goto LABEL_12;
      }

      (*(v10 + 8))(v3, v9);
    }

    v11 = 0;
    v12 = 0xE000000000000000;
LABEL_12:
    sub_2280457D0(v5, &qword_27D81EB50, &qword_22813DAA0);
    v14 = HIBYTE(v12) & 0xF;
    result = v11;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {

      return 0;
    }

    return result;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    goto LABEL_6;
  }

  return result;
}

uint64_t sub_228041BC0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v82 = a4;
  v90 = sub_228136CDC();
  v7 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_22813804C();
  v81 = *(v96 - 8);
  v9 = MEMORY[0x28223BE20](v96);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v74 - v12;
  v94 = sub_22813889C();
  v97 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v74 - v16;
  v18 = sub_22813713C();
  v92 = *(v18 - 8);
  v93 = v18;
  MEMORY[0x28223BE20](v18);
  v91 = (&v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_22813716C();
  v86 = *(v20 - 8);
  v87 = v20;
  MEMORY[0x28223BE20](v20);
  v85 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22813701C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 16);
  if (!v26)
  {
    return 0;
  }

  v78 = a1;
  v88 = v11;
  v79 = v25;
  v27 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v83 = v23;
  v84 = v22;
  v76 = a3;
  v75 = a2;
  v77 = v7;
  if (byte_2813C4629)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v28 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v28 = &qword_2813C76F8;
  }

  v29 = *(*v28 + 1608);
  v30 = *(*v28 + 1616);
  v80 = *(*v28 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v30(&v98, v80);

    v29 = v98;
    v32 = v83;
    v31 = v84;
    if (!v98)
    {
      return 0;
    }
  }

  else
  {

    v32 = v83;
    v31 = v84;
    if (!v29)
    {
      return 0;
    }
  }

  v33 = v17;
  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v34 = v85;
  sub_228139B6C();
  v35 = v91;
  sub_22813715C();
  v86[1](v34, v87);
  sub_22813710C();
  (*(v92 + 8))(v35, v93);
  if ((*(v32 + 48))(v33, 1, v31) == 1)
  {

    sub_2280457D0(v33, &qword_27D81E328, &qword_2281402C0);
    return 0;
  }

  v36 = v79;
  (*(v32 + 32))(v79, v33, v31);
  v98 = sub_228136FFC();
  v99 = v37;
  MEMORY[0x28223BE20](v98);
  *(&v74 - 2) = &v98;
  v38 = sub_2280B866C(v82, (&v74 - 4), v29);

  if ((v38 & 1) == 0)
  {
    (*(v32 + 8))(v36, v31);
    return 0;
  }

  v93 = *(v97 + 16);
  v39 = v78 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
  v40 = *(v97 + 72);
  v41 = (v81 + 8);
  v97 += 16;
  v91 = (v97 - 8);
  v92 = v40;
  v86 = (v77 + 8);
  v87 = MEMORY[0x277D84F90];
  v42 = v88;
  v43 = v94;
  v93(v14, v39, v94);
  while (1)
  {
    v44 = v95;
    sub_22813887C();
    sub_22813802C();
    v45 = sub_22813803C();
    v46 = *v41;
    v47 = v14;
    v48 = v96;
    (*v41)(v42, v96);
    v46(v44, v48);
    if (v45)
    {
      v49 = sub_22813888C();
      v14 = v47;
      if (v50)
      {
        v51 = v49;
        v52 = v50;
        v98 = v49;
        v99 = v50;
        v53 = v89;
        sub_228136C8C();
        sub_227FDB420();
        v54 = sub_2281397AC();
        v56 = v55;
        (*v86)(v53, v90);

        v57 = HIBYTE(v56) & 0xF;
        if ((v56 & 0x2000000000000000) == 0)
        {
          v57 = v54 & 0xFFFFFFFFFFFFLL;
        }

        if (v57)
        {
          v98 = 34;
          v99 = 0xE100000000000000;
          MEMORY[0x22AAB1970](v51, v52);

          MEMORY[0x22AAB1970](34, 0xE100000000000000);
          v58 = v98;
          v59 = v99;
          (*v91)(v14, v94);
          v60 = v87;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_2281338C0(0, *(v60 + 2) + 1, 1, v60);
          }

          v62 = *(v60 + 2);
          v61 = *(v60 + 3);
          if (v62 >= v61 >> 1)
          {
            v60 = sub_2281338C0((v61 > 1), v62 + 1, 1, v60);
          }

          *(v60 + 2) = v62 + 1;
          v87 = v60;
          v63 = &v60[16 * v62];
          *(v63 + 4) = v58;
          *(v63 + 5) = v59;
          v42 = v88;
          v43 = v94;
        }

        else
        {
          v43 = v94;
          (*v91)(v14, v94);

          v42 = v88;
        }
      }

      else
      {
        v43 = v94;
        (*v91)(v47, v94);
      }
    }

    else
    {
      (*v91)(v47, v43);
      v14 = v47;
    }

    v39 += v92;
    if (!--v26)
    {
      break;
    }

    v93(v14, v39, v43);
  }

  if (!*(v87 + 16))
  {

    (*(v83 + 8))(v79, v84);
    return 0;
  }

  v98 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  sub_22804561C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
  v64 = sub_22813925C();
  v66 = v65;

  if (v76)
  {
    v67 = v75;
  }

  else
  {
    v67 = 0;
  }

  if (v76)
  {
    v68 = v76;
  }

  else
  {
    v68 = 0xE000000000000000;
  }

  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = v67 & 0xFFFFFFFFFFFFLL;
  }

  v71 = v83;
  v70 = v84;
  if (v69)
  {
    v98 = 0;
    v99 = 0xE000000000000000;

    sub_22813988C();

    v98 = v67;
    v99 = v68;
    MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228145FC0);
  }

  else
  {

    v98 = 0;
    v99 = 0xE000000000000000;
    sub_22813988C();

    v98 = 0xD000000000000019;
    v99 = 0x8000000228145FE0;
  }

  MEMORY[0x22AAB1970](v64, v66);

  MEMORY[0x22AAB1970](46, 0xE100000000000000);
  v73 = v98;
  (*(v71 + 8))(v79, v70);
  return v73;
}