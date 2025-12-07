uint64_t sub_2280922B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = *a1;
  if (*(*a1 + 16) && (v12 = sub_22808C964(a2, a3), (v13 & 1) != 0))
  {
    sub_228029260(*(v11 + 56) + 32 * v12, &v18);
    return sub_228094034(&v18);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    sub_228094034(&v18);
    if (a5)
    {
      v17 = 0u;
      v15 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      *(&v19 + 1) = sub_228093FE8();
      *&v18 = v15;
    }

    else
    {
      *(&v17 + 1) = a6;
      *&v16 = a4;
      sub_227FE5EA8(&v16, &v18);
    }

    return sub_2280249EC(&v18, a2, a3);
  }
}

void sub_2280923D8(uint64_t *a1, uint64_t a2)
{
  sub_2280936F0(*a1);
  v3 = *(a2 + 2208);
  v4 = sub_2281391AC();

  [v3 registerDefaults_];
}

uint64_t sub_22809245C()
{

  return v0;
}

uint64_t sub_228092910()
{
  sub_22809245C();

  return swift_deallocClassInstance();
}

uint64_t sub_228092968(uint64_t a1)
{
  result = sub_22813977C();
  if (v2 <= 0x3F)
  {
    result = sub_228092DFC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_228092A00(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_228092B80(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

unint64_t sub_228092DFC()
{
  result = qword_27D81EE38[0];
  if (!qword_27D81EE38[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27D81EE38);
  }

  return result;
}

unint64_t sub_228092E4C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_228092DFC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_228092EE4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_22809302C(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_228093214(void *a1@<X0>, unsigned __int8 *a4@<X8>)
{
  v6 = sub_22813927C();
  v7 = [a1 valueForKey_];

  if (v7)
  {
    sub_2281397DC();
    swift_unknownObjectRelease();
    sub_227FE5EA8(&v10, v11);
    sub_228094034(v11);
    v8 = sub_22813927C();
    v9 = [a1 BOOLForKey_];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    sub_228094034(v11);
    v9 = 2;
  }

  *a4 = v9;
}

void sub_228093300(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_22813927C();
  v7 = [a1 valueForKey_];

  if (v7)
  {
    sub_2281397DC();
    swift_unknownObjectRelease();
    sub_227FE5EA8(&v10, v11);
    sub_228094034(v11);
    v8 = sub_22813927C();
    v9 = [a1 integerForKey_];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    sub_228094034(v11);
    v9 = 0;
  }

  *a4 = v9;
  *(a4 + 8) = v7 == 0;
}

void sub_2280933F8(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_22813927C();
  v7 = [a1 valueForKey_];

  if (v7)
  {
    sub_2281397DC();
    swift_unknownObjectRelease();
    sub_227FE5EA8(&v11, v12);
    sub_228094034(v12);
    v8 = sub_22813927C();
    [a1 doubleForKey_];
    v10 = v9;
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    sub_228094034(v12);
    v10 = 0;
  }

  *a4 = v10;
  *(a4 + 8) = v7 == 0;
}

double sub_2280934F8@<D0>(void *a1@<X0>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v12 = sub_22813927C();
  v13 = [a1 valueForKey_];

  if (v13)
  {
    sub_2281397DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    if (swift_dynamicCast())
    {
      *a7 = v15;
      return result;
    }
  }

  else
  {
    sub_228094034(v18);
  }

  *a7 = a4;

  return result;
}

double sub_2280935F8@<D0>(void *a1@<X0>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = sub_22813927C();
  v9 = [a1 valueForKey_];

  if (v9)
  {
    sub_2281397DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    if (swift_dynamicCast())
    {
      *a5 = v11;
      return result;
    }
  }

  else
  {
    sub_228094034(v14);
  }

  *a5 = a4;

  return result;
}

unint64_t *sub_2280936F0(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_228093850(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_2280939B4(v8, v4, v2);
  result = MEMORY[0x22AAB28A0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_228093850(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    sub_228029260(*(a3 + 56) + 32 * v14, v19);
    __swift_project_boxed_opaque_existential_0(v19, v19[3]);
    DynamicType = swift_getDynamicType();
    v16 = sub_228093FE8();
    result = __swift_destroy_boxed_opaque_existential_0(v19);
    if (DynamicType != v16)
    {
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_228093A2C(v20, a2, v4, a3);
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
      return sub_228093A2C(v20, a2, v4, a3);
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
  return result;
}

unint64_t *sub_2280939B4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_228093850(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_228093A2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E378, &unk_22813A9F0);
  result = sub_22813993C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_228029260(v17 + 32 * v16, v33);
    sub_227FE5EA8(v33, v32);
    sub_228139AAC();

    sub_22813923C();
    result = sub_228139AEC();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_227FE5EA8(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t objectdestroy_23Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_228093ED0(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22813927C();
  [a1 doubleForKey_];
  v6 = v5;

  *a2 = v6;
}

void sub_228093F30(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22813927C();
  v5 = [a1 integerForKey_];

  *a2 = v5;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_228093FE8()
{
  result = qword_2813C45F8;
  if (!qword_2813C45F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813C45F8);
  }

  return result;
}

uint64_t sub_228094034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E830, &unk_22813C630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228094574@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v24 = a1;
  v25 = a3;
  v6 = type metadata accessor for ModelBundleIdentifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v8 = byte_2813C4629;
  if (byte_2813C4629 != 1)
  {
    if (qword_2813C76F0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (qword_27D81E2A0 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_7:
  v10 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v11 = *(v9 + 8);
  v12 = *(v11 + 8);

  v13 = v12(v10, v11);
  v14 = *(v4 + 32);
  v27 = v14;
  v21 = sub_22808E6E4(v13, v15, &v27);

  if (v8)
  {
    if (qword_27D81E2A0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (qword_2813C76F0 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_11:

  v16 = v12(v10, v11);
  v26 = v14;
  v18 = sub_22808EB10(v16, v17, &v26);

  v19 = v23;
  sub_227FC8614(v24, v23);
  return sub_2280F8BF4(v19, v21, 0, v18, 0, v25);
}

uint64_t type metadata accessor for SummarizationParameters(uint64_t a1)
{
  result = qword_2813C85F0;
  if (!qword_2813C85F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2280948DC(uint64_t a1)
{
  result = sub_2280949A0();
  if (v2 <= 0x3F)
  {
    result = sub_228088824();
    if (v3 <= 0x3F)
    {
      result = sub_228137A9C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2280949A0()
{
  result = qword_2813C7C00[0];
  if (!qword_2813C7C00[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81EEE8, &qword_22813F048);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, qword_2813C7C00);
  }

  return result;
}

uint64_t sub_228094A6C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22813882C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  if (qword_2813C49B0 != -1)
  {
    swift_once();
  }

  return sub_22813881C();
}

void sub_228094B98()
{
  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  byte_2813C49D0 = byte_2813C4638;
}

uint64_t sub_228094C10()
{
  v0 = objc_opt_self();

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

    v1 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v1 = &qword_2813C76F8;
  }

  v2 = *(*v1 + 32);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v3(&v6, v4);

    v2 = v6;
  }

  else
  {
  }

  byte_2813C49C1 = v2;
  return result;
}

uint64_t sub_228094DFC()
{
  v0 = objc_opt_self();

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

    v1 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v1 = &qword_2813C76F8;
  }

  v2 = *(*v1 + 72);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v3(&v6, v4);

    v2 = v6;
  }

  else
  {
  }

  byte_27D81EEF2 = v2;
  return result;
}

uint64_t sub_228094FE8()
{
  v0 = sub_22813882C();
  __swift_allocate_value_buffer(v0, qword_2813C4990);
  __swift_project_value_buffer(v0, qword_2813C4990);
  sub_228095048();
  sub_22813975C();
  return sub_22813883C();
}

unint64_t sub_228095048()
{
  result = qword_2813C45D8;
  if (!qword_2813C45D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813C45D8);
  }

  return result;
}

uint64_t sub_228095094()
{
  v0 = objc_opt_self();

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

    v1 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v1 = &qword_2813C76F8;
  }

  v2 = *(*v1 + 2088);
  v3 = *(*v1 + 2096);
  v4 = *(*v1 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v3(&v6, v4);

    v2 = v6;
  }

  else
  {
  }

  return (v2 == 2) | v2 & 1u;
}

void sub_22809528C(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = sub_2281386FC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v41 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v18 = sub_2281392AC();
  v20 = sub_228017498(v18, v19, 3, a1);

  if (v20)
  {
    v44 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v21 = swift_dynamicCast();
    v22 = *(v10 + 56);
    v22(v8, v21 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v33 = *(v10 + 32);
      v33(v17, v8, v9);
      v33(a2, v17, v9);
      v22(a2, 0, 1, v9);
      return;
    }

    v42 = v22;
  }

  else
  {
    v42 = *(v10 + 56);
    v42(v8, 1, 1, v9);
  }

  sub_227FCB758(v8, &qword_27D81E598, &qword_22813B300);
  v23 = sub_2281392AC();
  v25 = sub_228017324(v23, v24, 3, a1);

  if (!v25)
  {
    goto LABEL_12;
  }

  v40 = a2;
  v26 = *(v25 + 16);
  if (!v26)
  {
LABEL_11:

    a2 = v40;
LABEL_12:
    v32 = v42;
    v31 = v43;
    v42(v43, 1, 1, v9);
LABEL_13:
    sub_227FCB758(v31, &qword_27D81E598, &qword_22813B300);
    v32(a2, 1, 1, v9);
    return;
  }

  v27 = 0;
  while (1)
  {
    if (v27 >= *(v25 + 16))
    {
      __break(1u);
      return;
    }

    v28 = *(v25 + 8 * v27 + 32);
    v44 = v28;
    v29 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    if (swift_dynamicCast())
    {
      break;
    }

    ++v27;

    if (v26 == v27)
    {
      goto LABEL_11;
    }
  }

  (*(v10 + 8))(v13, v9);
  v44 = v28;
  v31 = v43;
  v34 = swift_dynamicCast();
  v32 = v42;
  v42(v31, v34 ^ 1u, 1, v9);
  v35 = (*(v10 + 48))(v31, 1, v9);
  a2 = v40;
  if (v35 == 1)
  {
    goto LABEL_13;
  }

  v36 = v40;
  v37 = *(v10 + 32);
  v38 = v41;
  v37(v41, v31, v9);
  v37(v36, v38, v9);
  v32(v36, 0, 1, v9);
}

uint64_t sub_228095768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = sub_2281386FC();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[13] = v7;
  *v7 = v3;
  v7[1] = sub_2280958E4;

  return MEMORY[0x2821669F8](a2, a3);
}

uint64_t sub_2280958E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = sub_22809C85C;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v7 = sub_22809C854;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_228095A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = sub_2281386FC();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[13] = v7;
  *v7 = v3;
  v7[1] = sub_228095B94;

  return MEMORY[0x2821669C0](a2, a3);
}

uint64_t sub_228095B94(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = sub_228095DAC;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v7 = sub_228095CC8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_228095CC8()
{
  (*(v0[10] + 56))(v0[3], 1, 1, v0[9]);
  v1 = v0[15];
  v2 = v0[16];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_228095DAC()
{
  v1 = *(v0 + 112);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);

    v9 = *(v6 + 32);
    v9(v4, v3, v5);
    v10 = sub_228096454(v7, v8, v4);
    v11 = *(v0 + 80);
    v31 = v10;
    v32 = v14;
    v15 = *(v0 + 64);
    v29 = v9;
    v30 = *(v0 + 56);
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
    v18 = *(v0 + 32);
    v19 = *(v0 + 72);
    (*(v11 + 8))(*(v0 + 88));
    sub_2280991F8(v16, v15, &qword_27D81E598, &qword_22813B300);
    sub_2280991F8(v17, v30, &qword_27D81E598, &qword_22813B300);
    sub_2280991F8(v15, v18, &qword_27D81E598, &qword_22813B300);
    v20 = *(v11 + 48);
    v21 = v20(v18, 1, v19);
    if (v21 == 1)
    {
      v22 = *(v0 + 72);
      v23 = *(v0 + 32);
      sub_2280991F8(*(v0 + 56), *(v0 + 24), &qword_27D81E598, &qword_22813B300);
      if (v20(v23, 1, v22) != 1)
      {
        sub_227FCB758(*(v0 + 32), &qword_27D81E598, &qword_22813B300);
      }
    }

    else
    {
      v25 = *(v0 + 72);
      v24 = *(v0 + 80);
      v27 = *(v0 + 24);
      v26 = *(v0 + 32);
      sub_227FCB758(*(v0 + 56), &qword_27D81E598, &qword_22813B300);
      v29(v27, v26, v25);
      (*(v24 + 56))(v27, 0, 1, v25);
    }

    v28 = *(v0 + 8);

    return v28(v31, v32);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_228096114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v10 = sub_2281386FC();
  v5[9] = v10;
  v5[10] = *(v10 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  v5[13] = v11;
  *v11 = v5;
  v11[1] = sub_228096320;

  return v13(a2, a3, a4, a5);
}

uint64_t sub_228096320(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = sub_22809C860;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v7 = sub_22809C858;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

unint64_t sub_228096454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v148 = a2;
  v147 = a1;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5F8, &qword_22813DE20);
  MEMORY[0x28223BE20](v138);
  v137 = &v132 - v4;
  v5 = sub_22813867C();
  v149 = *(v5 - 8);
  v150 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v143 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v151 = &v132 - v8;
  v9 = sub_22813882C();
  v156 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v146 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v142 = &v132 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v132 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v136 = &v132 - v17;
  MEMORY[0x28223BE20](v16);
  v139 = &v132 - v18;
  v144 = sub_22813869C();
  v141 = *(v144 - 8);
  v19 = MEMORY[0x28223BE20](v144);
  v135 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v145 = &v132 - v21;
  v158 = sub_2281386AC();
  v166 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v165 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2281386DC();
  v163 = *(v23 - 8);
  v164 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_2281386CC();
  v160 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v159 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2281386FC();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v132 - v32;
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v153 = v9;
  v34 = __swift_project_value_buffer(v9, qword_2813C8A20);
  v35 = *(v28 + 16);
  v35(v33, a3, v27);
  v155 = v34;
  v36 = a3;
  v37 = sub_22813880C();
  v157 = sub_2281396DC();
  v38 = os_log_type_enabled(v37, v157);
  v161 = v35;
  v162 = v28 + 16;
  if (v38)
  {
    v152 = v28;
    v154 = v36;
    v39 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v168 = v133;
    v134 = v39;
    *v39 = 136446210;
    v35(v31, v33, v27);
    sub_228099194();
    v40 = sub_22813999C();
    if (v40)
    {
      v41 = v40;
      v42 = v152;
      (*(v152 + 8))(v31, v27);
    }

    else
    {
      v41 = swift_allocError();
      v42 = v152;
      (*(v152 + 32))(v46, v31, v27);
    }

    v45 = v163;
    v47 = sub_228136E1C();

    v48 = NSError.loggingDescription.getter();
    v50 = v49;

    (*(v42 + 8))(v33, v27);
    v51 = sub_227FCC340(v48, v50, &v168);

    v52 = v134;
    *(v134 + 1) = v51;
    _os_log_impl(&dword_227FC3000, v37, v157, "GMS guardrails rejected with error message: %{public}s", v52, 0xCu);
    v53 = v133;
    __swift_destroy_boxed_opaque_existential_0Tm_1(v133);
    MEMORY[0x22AAB28A0](v53, -1, -1);
    MEMORY[0x22AAB28A0](v52, -1, -1);

    v44 = v154;
    v43 = v167;
  }

  else
  {

    (*(v28 + 8))(v33, v27);
    v42 = v28;
    v43 = v167;
    v44 = v36;
    v45 = v163;
  }

  sub_2281386EC();
  v54 = v164;
  v55 = (*(v45 + 88))(v25, v164);
  v57 = v165;
  v56 = v166;
  if (v55 != *MEMORY[0x277D0DB78])
  {
    (*(v45 + 8))(v25, v54);
    sub_228099194();
    swift_allocError();
    v161(v63, v44, v27);
    swift_willThrow();
    return v42;
  }

  (*(v45 + 96))(v25, v54);
  v58 = v160;
  v59 = v159;
  (*(v160 + 32))();
  sub_2281386BC();
  v60 = v158;
  v61 = (v56)[11](v57, v158);
  if (v61 == *MEMORY[0x277D0DA90])
  {
    goto LABEL_11;
  }

  if (v61 == *MEMORY[0x277D0DA98])
  {
    v152 = v42;
    v154 = v44;
    (v56)[12](v57, v60);
    (*(v149 + 32))(v151, v57, v150);
    sub_2281385FC();
    v65 = sub_2281392EC();
    v67 = v66;
    if (qword_2813C49C8 != -1)
    {
      swift_once();
    }

    v68 = v155;
    v69 = v156;
    v70 = v153;
    v71 = v140;
    if ((byte_2813C49D0 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v68 = __swift_project_value_buffer(v70, qword_2813C4990);
    }

    v165 = *(v69 + 16);
    (v165)(v71, v68, v70);

    v72 = sub_22813880C();
    v73 = sub_2281396BC();

    v74 = os_log_type_enabled(v72, v73);
    v132 = v27;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v168 = v76;
      *v75 = 136380675;
      v77 = sub_227FCC340(v65, v67, &v168);

      *(v75 + 4) = v77;
      _os_log_impl(&dword_227FC3000, v72, v73, "ViolationCategory is: %{private}s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_1(v76);
      MEMORY[0x22AAB28A0](v76, -1, -1);
      v78 = v75;
      v69 = v156;
      MEMORY[0x22AAB28A0](v78, -1, -1);
    }

    else
    {
    }

    v166 = *(v69 + 8);
    (v166)(v71, v70);
    v82 = v70;
    v84 = v149;
    v83 = v150;
    v85 = v142;
    v86 = v146;
    v87 = v165;
    if (qword_2813C49B8 != -1)
    {
      swift_once();
    }

    if ((byte_2813C49C1 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v155 = __swift_project_value_buffer(v82, qword_2813C4990);
    }

    v87(v85, v155, v82);
    if (qword_2813C49B0 != -1)
    {
      swift_once();
    }

    if (byte_27D81EEF2 == 1)
    {
      (*(v69 + 32))(v86, v85, v82);
    }

    else
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v90 = __swift_project_value_buffer(v82, qword_2813C4990);
      v87(v86, v90, v82);
      (v166)(v85, v82);
    }

    v91 = v143;
    (*(v84 + 16))(v143, v151, v83);
    v92 = sub_22813880C();
    v93 = v83;
    v94 = sub_2281396DC();
    if (os_log_type_enabled(v92, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v168 = v96;
      *v95 = 136380675;
      v97 = sub_22813866C();
      v99 = v98;
      v100 = v93;
      v101 = *(v84 + 8);
      v101(v91, v100);
      v102 = v101;
      v103 = sub_227FCC340(v97, v99, &v168);

      *(v95 + 4) = v103;
      _os_log_impl(&dword_227FC3000, v92, v94, "Text sanitizer rejected text: %{private}s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_1(v96);
      MEMORY[0x22AAB28A0](v96, -1, -1);
      MEMORY[0x22AAB28A0](v95, -1, -1);

      (v166)(v146, v153);
      v104 = v159;
      v105 = v132;
      v106 = v161;
      v93 = v150;
    }

    else
    {

      v107 = *(v84 + 8);
      v107(v91, v83);
      v102 = v107;
      (v166)(v86, v153);
      v104 = v159;
      v105 = v132;
      v106 = v161;
    }

    v108 = v151;
    v42 = sub_22813866C();
    v102(v108, v93);
    (*(v160 + 8))(v104, v167);
    v109 = *(v152 + 56);
    v109(v147, 1, 1, v105);
    v110 = v148;
    v106(v148, v154, v105);
    v109(v110, 0, 1, v105);
  }

  else
  {
    if (v61 != *MEMORY[0x277D0DAA0])
    {
      if (v61 == *MEMORY[0x277D0DAB0])
      {
        v88 = swift_allocObject();
        *(v88 + 16) = 17;
        *(v88 + 24) = 0;
        *(v88 + 32) = 0;
        v42 = sub_227FF96D4(0, 0xD00000000000007CLL, 0x80000002281477A0, 113, sub_2280991EC, v88);
        sub_227FDB3CC();
        swift_allocError();
        *v89 = 17;
        *(v89 + 8) = v42;
        swift_willThrow();
        (*(v58 + 8))(v59, v43);
        (v56)[1](v57, v60);
        return v42;
      }

LABEL_11:
      sub_228099194();
      swift_allocError();
      v161(v62, v44, v27);
      swift_willThrow();
      (*(v58 + 8))(v59, v43);
      (v56)[1](v57, v60);
      return v42;
    }

    v152 = v42;
    v154 = v44;
    (v56)[12](v57, v60);
    (*(v141 + 32))(v145, v57, v144);
    if (qword_2813C49B8 != -1)
    {
      swift_once();
    }

    v79 = v153;
    if ((byte_2813C49C1 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v155 = __swift_project_value_buffer(v79, qword_2813C4990);
    }

    v80 = *(v156 + 16);
    v80(v139, v155, v79);
    if (qword_2813C49B0 != -1)
    {
      swift_once();
    }

    if (byte_27D81EEF2 == 1)
    {
      v81 = v136;
      (*(v156 + 32))(v136, v139, v79);
    }

    else
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v111 = __swift_project_value_buffer(v79, qword_2813C4990);
      v81 = v136;
      v80(v136, v111, v79);
      (*(v156 + 8))(v139, v79);
    }

    v112 = v141;
    v113 = v135;
    v114 = v144;
    (*(v141 + 16))(v135, v145, v144);
    v115 = v81;
    v116 = sub_22813880C();
    v117 = sub_2281396DC();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = v113;
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v168 = v120;
      *v119 = 136380675;
      v166 = sub_22813868C();
      v132 = v27;
      v122 = v121;
      v123 = v114;
      v124 = *(v112 + 8);
      v124(v118, v123);
      v125 = v124;
      v126 = sub_227FCC340(v166, v122, &v168);
      v27 = v132;

      *(v119 + 4) = v126;
      _os_log_impl(&dword_227FC3000, v116, v117, "Deny list rejected text: %{private}s.", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_1(v120);
      v127 = v120;
      v59 = v159;
      MEMORY[0x22AAB28A0](v127, -1, -1);
      MEMORY[0x22AAB28A0](v119, -1, -1);

      (*(v156 + 8))(v136, v153);
      v114 = v144;
    }

    else
    {

      v128 = *(v112 + 8);
      v128(v113, v114);
      v125 = v128;
      (*(v156 + 8))(v115, v153);
    }

    v129 = v145;
    v42 = sub_22813868C();
    v125(v129, v114);
    (*(v160 + 8))(v59, v167);
    v130 = v147;
    v161(v147, v154, v27);
    v131 = *(v152 + 56);
    v131(v130, 0, 1, v27);
    v131(v148, 1, 1, v27);
  }

  return v42;
}

uint64_t sub_2280978F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_228137AEC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D8, &unk_22813E420);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v31 - v7;
  v9 = sub_228137A3C();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228137BCC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v16 = sub_22813882C();
  __swift_project_value_buffer(v16, qword_2813C89F0);
  (*(v13 + 16))(v15, v1, v12);
  v17 = sub_22813880C();
  v18 = sub_2281396DC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31[2] = a1;
    v21 = v20;
    v34 = v20;
    *v19 = 136446210;
    v22 = sub_228139B8C();
    v31[0] = v11;
    v31[1] = v5;
    v23 = v22;
    v24 = v8;
    v26 = v25;
    (*(v13 + 8))(v15, v12);
    v27 = sub_227FCC340(v23, v26, &v34);
    v8 = v24;

    *(v19 + 4) = v27;
    v11 = v31[0];
    _os_log_impl(&dword_227FC3000, v17, v18, "Could not convert %{public}s to StringResponseSanitizer", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_1(v21);
    MEMORY[0x22AAB28A0](v21, -1, -1);
    MEMORY[0x22AAB28A0](v19, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v28 = sub_228137A7C();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  (*(v32 + 104))(v11, *MEMORY[0x277D0E578], v33);
  sub_228137AAC();
  sub_228137A0C();
  v29 = sub_228137A1C();
  (*(*(v29 - 8) + 56))(v8, 0, 1, v29);
  return sub_228137A8C();
}

uint64_t sub_228097D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a2;
  v5 = sub_228137AEC();
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D8, &unk_22813E420);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v46 - v8;
  v9 = sub_228137A3C();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228137A9C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8E8, &qword_22813F0E0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  v22 = *(a1 - 8);
  v23 = MEMORY[0x28223BE20](v19);
  v46 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v53 = v22;
  v25 = *(v22 + 16);
  v47 = v3;
  v27 = &v46 - v26;
  v25();
  if (swift_dynamicCast())
  {
    sub_2280991F8(v21, v18, &qword_27D81E8E8, &qword_22813F0E0);
    (*(v12 + 16))(v54, &v18[*(v15 + 36)], v11);
    sub_227FCB758(v18, &qword_27D81E8E8, &qword_22813F0E0);
    v28 = a1;
    v29 = v53;
  }

  else
  {
    v28 = a1;
    if (swift_dynamicCast())
    {
      (*(v12 + 32))(v54, v14, v11);
      v29 = v53;
    }

    else
    {
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v30 = sub_22813882C();
      __swift_project_value_buffer(v30, qword_2813C89F0);
      v31 = v46;
      (v25)(v46, v47, v28);
      v32 = sub_22813880C();
      v33 = sub_2281396DC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v55 = v35;
        *v34 = 136446210;
        swift_getDynamicType();
        v36 = v28;
        v37 = sub_228139B8C();
        v39 = v38;
        v29 = v53;
        (*(v53 + 8))(v31, v36);
        v40 = sub_227FCC340(v37, v39, &v55);

        *(v34 + 4) = v40;
        v28 = v36;
        _os_log_impl(&dword_227FC3000, v32, v33, "Could not convert %{public}s to StringResponseSanitizer", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm_1(v35);
        MEMORY[0x22AAB28A0](v35, -1, -1);
        MEMORY[0x22AAB28A0](v34, -1, -1);
      }

      else
      {

        v29 = v53;
        (*(v53 + 8))(v31, v28);
      }

      v41 = sub_228137A7C();
      v42 = v50;
      (*(*(v41 - 8) + 56))(v50, 1, 1, v41);
      (*(v48 + 104))(v42, *MEMORY[0x277D0E578], v49);
      sub_228137AAC();
      v43 = v52;
      sub_228137A0C();
      v44 = sub_228137A1C();
      (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
      sub_228137A8C();
    }
  }

  return (*(v29 + 8))(v27, v28);
}

uint64_t sub_228098368(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22809C878;

  return MEMORY[0x2821669F8](a1, a2);
}

uint64_t sub_228098410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22809C880;

  return MEMORY[0x2821669F0](a1, a2, a3);
}

uint64_t sub_2280984C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22809C87C;

  return sub_228095768(a1, a2, a3);
}

uint64_t sub_22809858C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22809C884;

  return MEMORY[0x2821669C0](a1, a2);
}

uint64_t sub_228098634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2280986E4;

  return MEMORY[0x2821669B8](a1, a2, a3);
}

uint64_t sub_2280986E4(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_2280987F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22809C888;

  return sub_228095A18(a1, a2, a3);
}

uint64_t sub_2280988F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  v11 = (*(v7 + 24) + **(v7 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22809C88C;

  return v11(a1, a2, v3, v8, v7);
}

uint64_t sub_228098A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  v12 = (*(v8 + 24) + **(v8 + 24));
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22809C890;

  return v12(a1, a2, a3, v9, v8);
}

uint64_t sub_228098B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22809C894;

  return sub_2280988F0(a1, a2, a3);
}

uint64_t sub_228098C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22809C898;

  return sub_228098A34(a1, a2, a3, a4);
}

uint64_t sub_228098CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22809C89C;

  return sub_228096114(a1, a2, a3, a4, a5);
}

void sub_228098DAC(char a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();

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

    v5 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v5 = &qword_2813C76F8;
  }

  v6 = *(*v5 + 840);
  v7 = *(*v5 + 848);
  v8 = *(*v5 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v7(v23, v8);

    if ((v23[0] & 1) == 0)
    {
LABEL_14:
      sub_227FDB3CC();
      swift_allocError();
      *v9 = a1;
      *(v9 + 8) = a2;
      swift_willThrow();

      return;
    }
  }

  else
  {

    if ((v6 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v10 = sub_22813882C();
  __swift_project_value_buffer(v10, qword_2813C89F0);
  sub_228004954(a3, v23);

  v11 = sub_22813880C();
  v12 = sub_2281396BC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 134349314;
    *(v13 + 4) = qword_22813F180[a1];

    *(v13 + 12) = 2082;
    v15 = v24;
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v17 = (*(v16 + 16))(v15, v16);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_0Tm_1(v23);
    v20 = sub_227FCC340(v17, v19, &v26);

    *(v13 + 14) = v20;
    __swift_destroy_boxed_opaque_existential_0Tm_1(v14);
    MEMORY[0x22AAB28A0](v14, -1, -1);
    MEMORY[0x22AAB28A0](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm_1(v23);
  }
}

unint64_t sub_228099194()
{
  result = qword_27D81E5A8;
  if (!qword_27D81E5A8)
  {
    sub_2281386FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E5A8);
  }

  return result;
}

uint64_t sub_2280991F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_228099260(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v102 = a4;
  v106 = a3;
  v105 = a2;
  v5 = sub_22813863C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22813865C();
  v90 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v89 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2281386AC();
  v107 = *(v98 - 8);
  v10 = MEMORY[0x28223BE20](v98);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v87 = &v83 - v12;
  v99 = sub_22813867C();
  v93 = *(v99 - 8);
  v13 = MEMORY[0x28223BE20](v99);
  v86 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = &v83 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v104 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v83 - v19;
  v21 = sub_2281386DC();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v95 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v83 - v25;
  v27 = sub_2281386CC();
  v100 = *(v27 - 8);
  v101 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v92 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v91 = &v83 - v30;
  v115 = MEMORY[0x277D84F90];
  sub_22809C164(a1, v20);
  v31 = sub_2281386FC();
  v32 = *(v31 - 8);
  v103 = *(v32 + 48);
  v33 = v103(v20, 1, v31);
  v97 = v21;
  v96 = v22;
  if (v33 == 1)
  {
    sub_227FCB758(v20, &qword_27D81E598, &qword_22813B300);
LABEL_7:
    v36 = v107;
    goto LABEL_8;
  }

  sub_2281386EC();
  (*(v32 + 8))(v20, v31);
  if ((*(v22 + 88))(v26, v21) != *MEMORY[0x277D0DB78])
  {
    (*(v22 + 8))(v26, v21);
    goto LABEL_7;
  }

  (*(v22 + 96))(v26, v21);
  v34 = v91;
  (*(v100 + 32))(v91, v26, v101);
  v35 = v87;
  sub_2281386BC();
  v36 = v107;
  v37 = v98;
  if ((*(v107 + 88))(v35, v98) == *MEMORY[0x277D0DA98])
  {
    (*(v36 + 96))(v35, v37);
    v38 = v85;
    (*(v93 + 32))(v85, v35, v99);
    v39 = v89;
    sub_2281385CC();
    v84 = sub_22813864C();
    v87 = *(v90 + 8);
    (v87)(v39, v94);
    sub_227FED3FC(v84);
    sub_22813861C();
    v84 = sub_22813864C();
    v40 = v39;
    v36 = v107;
    (v87)(v40, v94);
    sub_227FED3FC(v84);
    (*(v93 + 8))(v38, v99);
    (*(v100 + 8))(v91, v101);
  }

  else
  {
    (*(v100 + 8))(v34, v101);
    (*(v36 + 8))(v35, v37);
  }

LABEL_8:
  v41 = v104;
  sub_22809C164(v105, v104);
  if (v103(v41, 1, v31) == 1)
  {
    sub_227FCB758(v41, &qword_27D81E598, &qword_22813B300);
  }

  else
  {
    v42 = v95;
    sub_2281386EC();
    (*(v32 + 8))(v41, v31);
    v43 = v96;
    v44 = v97;
    if ((*(v96 + 88))(v42, v97) == *MEMORY[0x277D0DB78])
    {
      (*(v43 + 96))(v42, v44);
      v45 = v100;
      v46 = v92;
      v47 = v42;
      v48 = v101;
      (*(v100 + 32))(v92, v47, v101);
      v49 = v88;
      sub_2281386BC();
      v50 = v98;
      if ((*(v36 + 88))(v49, v98) == *MEMORY[0x277D0DA98])
      {
        (*(v36 + 96))(v49, v50);
        v51 = v93;
        v52 = v86;
        (*(v93 + 32))(v86, v49, v99);
        v53 = v89;
        sub_2281385CC();
        v54 = sub_22813864C();
        v107 = *(v90 + 8);
        v55 = v94;
        (v107)(v53, v94);
        sub_227FED3FC(v54);
        sub_22813861C();
        v56 = sub_22813864C();
        (v107)(v53, v55);
        sub_227FED3FC(v56);
        (*(v51 + 8))(v52, v99);
        (*(v100 + 8))(v92, v101);
      }

      else
      {
        (*(v45 + 8))(v46, v48);
        (*(v36 + 8))(v49, v50);
      }
    }

    else
    {
      (*(v43 + 8))(v42, v44);
    }
  }

  v57 = 0;
  v58 = v115;
  v59 = *(v115 + 16);
  v60 = v6 + 16;
  while (1)
  {
    v61 = v57;
    if (v59 == v57)
    {
      break;
    }

    if (v57 >= *(v58 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    (*(v6 + 16))(v8, v58 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v57++, v5);
    v62 = sub_22813862C();
    (*(v6 + 8))(v8, v5);
    if (v62)
    {
      v60 = 1;
      goto LABEL_22;
    }
  }

  v60 = v106;
LABEL_22:

  if (qword_2813C49E0 == -1)
  {
    goto LABEL_23;
  }

LABEL_28:
  swift_once();
LABEL_23:
  v63 = sub_22813882C();
  __swift_project_value_buffer(v63, qword_2813C8A20);
  v64 = v102;
  sub_228004954(v102, v112);
  sub_228004954(v64, v109);
  v65 = sub_22813880C();
  v66 = sub_2281396BC();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = v59 != v61;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v108 = v69;
    *v68 = 67110146;
    *(v68 + 4) = v60 & 1;
    *(v68 + 8) = 2080;
    v70 = v113;
    v71 = v114;
    __swift_project_boxed_opaque_existential_1(v112, v113);
    v72 = (*(v71 + 16))(v70, v71);
    v74 = v73;
    __swift_destroy_boxed_opaque_existential_0Tm_1(v112);
    v75 = sub_227FCC340(v72, v74, &v108);

    *(v68 + 10) = v75;
    *(v68 + 18) = 2080;
    v77 = v110;
    v76 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    v78 = (*(*(v76 + 8) + 8))(v77);
    v80 = v79;
    __swift_destroy_boxed_opaque_existential_0Tm_1(v109);
    v81 = sub_227FCC340(v78, v80, &v108);

    *(v68 + 20) = v81;
    *(v68 + 28) = 1024;
    *(v68 + 30) = v67;
    *(v68 + 34) = 1024;
    *(v68 + 36) = v106 & 1;
    _os_log_impl(&dword_227FC3000, v65, v66, "StringSanitizationUtils.shouldThrowError returning %{BOOL}d for [requestIdentifier: %s, useCaseIdentifier: %s]; hasRegionalSource = %{BOOL}d, shouldThrowErrorIfFinalDecisionUnsafe = %{BOOL}d", v68, 0x28u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v69, -1, -1);
    MEMORY[0x22AAB28A0](v68, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm_1(v112);
    __swift_destroy_boxed_opaque_existential_0Tm_1(v109);
  }

  return v60 & 1;
}

void sub_228099F40(char a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t (**a4)(char *, uint64_t, uint64_t), uint64_t (**a5)(char *, char *, uint64_t), uint64_t a6)
{
  v262 = a6;
  v293 = a5;
  v285 = a4;
  v291 = a3;
  v281 = a2;
  v299 = sub_2281386FC();
  v7 = *(v299 - 8);
  v8 = MEMORY[0x28223BE20](v299);
  v270 = &v252 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v294 = &v252 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EEF8, &unk_22813F0F0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v288 = &v252 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v298 = &v252 - v14;
  v302 = sub_22813867C();
  v282 = *(v302 - 8);
  v15 = MEMORY[0x28223BE20](v302);
  v267 = &v252 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v273 = &v252 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v263 = &v252 - v20;
  MEMORY[0x28223BE20](v19);
  v256 = &v252 - v21;
  v284 = sub_2281386AC();
  v289 = *(v284 - 8);
  v22 = MEMORY[0x28223BE20](v284);
  v266 = &v252 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v272 = &v252 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v261 = &v252 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v260 = &v252 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v259 = &v252 - v31;
  MEMORY[0x28223BE20](v30);
  v258 = &v252 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v287 = &v252 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v252 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v257 = &v252 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v292 = (&v252 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v255 = &v252 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v280 = (&v252 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v254 = &v252 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = (&v252 - v50);
  v52 = MEMORY[0x28223BE20](v49);
  v253 = &v252 - v53;
  MEMORY[0x28223BE20](v52);
  v55 = &v252 - v54;
  v295 = sub_2281386DC();
  v56 = *(v295 - 8);
  v57 = MEMORY[0x28223BE20](v295);
  v274 = &v252 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v283 = &v252 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v277 = (&v252 - v62);
  v63 = MEMORY[0x28223BE20](v61);
  v276 = &v252 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v279 = (&v252 - v66);
  MEMORY[0x28223BE20](v65);
  v68 = &v252 - v67;
  v286 = sub_2281386CC();
  v69 = *(v286 - 8);
  v70 = MEMORY[0x28223BE20](v286);
  v265 = &v252 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v70);
  v271 = &v252 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v269 = &v252 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v77 = MEMORY[0x28223BE20](v76);
  MEMORY[0x28223BE20](v77);
  v296 = v56;
  v268 = v78;
  v275 = v79;
  v278 = v51;
  v264 = &v252 - v80;
  if (a1)
  {
    v81 = swift_allocObject();
    *(v81 + 16) = 45;
    *(v81 + 24) = 0;
    *(v81 + 32) = 0;
    v82 = sub_227FF96D4(0, 0xD00000000000007CLL, 0x80000002281477A0, 178, sub_22809C874, v81);
    v83 = sub_228133BC0(0, 1, 1, MEMORY[0x277D84F90]);
    v85 = *(v83 + 2);
    v84 = *(v83 + 3);
    if (v85 >= v84 >> 1)
    {
      v83 = sub_228133BC0((v84 > 1), v85 + 1, 1, v83);
    }

    *(v83 + 2) = v85 + 1;
    v297 = v83;
    v86 = &v83[16 * v85];
    v86[32] = 45;
    *(v86 + 5) = v82;
    v56 = v296;
  }

  else
  {
    v297 = MEMORY[0x277D84F90];
  }

  sub_22809C164(v281, v55);
  v87 = v299;
  v300 = *(v7 + 48);
  v301 = v7 + 48;
  v88 = v300(v55, 1, v299);
  v89 = MEMORY[0x277D0DB78];
  v290 = v7;
  if (v88 == 1)
  {
    sub_227FCB758(v55, &qword_27D81E598, &qword_22813B300);
    v90 = v87;
    v91 = v292;
    v92 = v7;
    v93 = v69;
    v94 = v285;
    v95 = v279;
    v96 = v89;
LABEL_13:
    v106 = v278;
    goto LABEL_14;
  }

  v97 = v69;
  sub_2281386EC();
  (*(v7 + 8))(v55, v87);
  v98 = v295;
  if ((*(v56 + 11))(v68, v295) != *v89)
  {
    v90 = v87;
    (*(v56 + 1))(v68, v98);
    v92 = v290;
    v93 = v97;
    v96 = MEMORY[0x277D0DB78];
    v91 = v292;
    v94 = v285;
    v95 = v279;
    goto LABEL_13;
  }

  (*(v56 + 12))(v68, v98);
  v93 = v97;
  v99 = v264;
  v100 = v68;
  v101 = v286;
  (v97[4])(v264, v100, v286);
  v102 = v258;
  sub_2281386BC();
  v103 = v289;
  v104 = v284;
  v105 = (*(v289 + 11))(v102, v284);
  v106 = v278;
  if (v105 == *MEMORY[0x277D0DAA0])
  {
    v107 = v101;
    (*(v103 + 1))(v102, v104);
    v108 = v253;
    sub_22809C164(v281, v253);
    v109 = v299;
    v110 = v300(v108, 1, v299);
    v111 = v290;
    v95 = v279;
    if (v110 == 1)
    {
      sub_227FCB758(v108, &qword_27D81E598, &qword_22813B300);
      v112 = 0;
    }

    else
    {
      sub_228099194();
      v112 = swift_allocError();
      (*(v111 + 32))(v139, v108, v109);
    }

    v140 = swift_allocObject();
    *(v140 + 16) = 40;
    *(v140 + 24) = 0;
    *(v140 + 32) = 0;
    v141 = sub_227FF96D4(v112, 0xD00000000000007CLL, 0x80000002281477A0, 185, sub_22809C870, v140);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v142 = v297;
    }

    else
    {
      v142 = sub_228133BC0(0, *(v297 + 2) + 1, 1, v297);
    }

    v144 = *(v142 + 2);
    v143 = *(v142 + 3);
    if (v144 >= v143 >> 1)
    {
      v297 = sub_228133BC0((v143 > 1), v144 + 1, 1, v142);
    }

    else
    {
      v297 = v142;
    }

    v97[1](v264, v107);
    v56 = v296;
    v145 = v297;
    *(v297 + 2) = v144 + 1;
    v146 = &v145[16 * v144];
    v146[32] = 40;
    *(v146 + 5) = v141;
    v90 = v299;
    v92 = v290;
    v93 = v97;
    v96 = MEMORY[0x277D0DB78];
    v91 = v292;
    v94 = v285;
  }

  else
  {
    v97[1](v99, v101);
    (*(v103 + 1))(v102, v104);
    v90 = v299;
    v92 = v290;
    v56 = v296;
    v96 = MEMORY[0x277D0DB78];
    v91 = v292;
    v94 = v285;
    v95 = v279;
  }

LABEL_14:
  sub_22809C164(v94, v106);
  if (v300(v106, 1, v90) == 1)
  {
    sub_227FCB758(v106, &qword_27D81E598, &qword_22813B300);
    v113 = v293;
LABEL_21:
    v121 = v280;
    goto LABEL_22;
  }

  sub_2281386EC();
  v90 = v299;
  (*(v92 + 8))(v106, v299);
  v114 = v295;
  if ((*(v56 + 11))(v95, v295) != *v96)
  {
    (*(v56 + 1))(v95, v114);
    v113 = v293;
    v92 = v290;
    goto LABEL_21;
  }

  (*(v56 + 12))(v95, v114);
  v115 = v275;
  v116 = v286;
  (v93[4])(v275, v95, v286);
  v281 = v93;
  v117 = v259;
  sub_2281386BC();
  v118 = v289;
  v119 = v284;
  v120 = (*(v289 + 11))(v117, v284);
  v121 = v280;
  if (v120 == *MEMORY[0x277D0DAA0])
  {
    v122 = v281;
    (*(v118 + 1))(v117, v119);
    v123 = v254;
    sub_22809C164(v285, v254);
    v124 = v299;
    if (v300(v123, 1, v299) == 1)
    {
      sub_227FCB758(v123, &qword_27D81E598, &qword_22813B300);
      v125 = 0;
    }

    else
    {
      sub_228099194();
      v125 = swift_allocError();
      (*(v290 + 32))(v147, v123, v124);
    }

    v93 = v122;
    v113 = v293;
    v148 = swift_allocObject();
    *(v148 + 16) = 42;
    *(v148 + 24) = 0;
    *(v148 + 32) = 0;
    v149 = sub_227FF96D4(v125, 0xD00000000000007CLL, 0x80000002281477A0, 192, sub_22809C86C, v148);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v151 = MEMORY[0x277D0DB78];
    v152 = v290;
    if (isUniquelyReferenced_nonNull_native)
    {
      v153 = v297;
    }

    else
    {
      v153 = sub_228133BC0(0, *(v297 + 2) + 1, 1, v297);
    }

    v155 = *(v153 + 2);
    v154 = *(v153 + 3);
    v156 = v275;
    if (v155 >= v154 >> 1)
    {
      v297 = sub_228133BC0((v154 > 1), v155 + 1, 1, v153);
      v156 = v275;
    }

    else
    {
      v297 = v153;
    }

    v93[1](v156, v286);
    v157 = v297;
    *(v297 + 2) = v155 + 1;
    v158 = &v157[16 * v155];
    v158[32] = 42;
    *(v158 + 5) = v149;
    v90 = v299;
    v92 = v152;
    v96 = v151;
    v91 = v292;
  }

  else
  {
    v281[1](v115, v116);
    (*(v118 + 1))(v117, v119);
    v90 = v299;
    v92 = v290;
    v93 = v281;
    v113 = v293;
    v96 = MEMORY[0x277D0DB78];
  }

LABEL_22:
  sub_22809C164(v291, v121);
  if (v300(v121, 1, v90) == 1)
  {
    sub_227FCB758(v121, &qword_27D81E598, &qword_22813B300);
  }

  else
  {
    v126 = v93;
    v127 = v96;
    v128 = v276;
    sub_2281386EC();
    v90 = v299;
    (*(v92 + 8))(v121, v299);
    v129 = v295;
    v130 = v296;
    if ((*(v296 + 11))(v128, v295) == *v127)
    {
      (*(v130 + 12))(v128, v129);
      v131 = v268;
      v132 = v286;
      (v126[4])(v268, v128, v286);
      v133 = v260;
      sub_2281386BC();
      v134 = v289;
      v135 = v284;
      if ((*(v289 + 11))(v133, v284) == *MEMORY[0x277D0DA98])
      {
        v93 = v126;
        v136 = v290;
        (*(v134 + 12))(v133, v135);
        v137 = v256;
        (*(v282 + 4))(v256, v133, v302);
        if ((sub_22813860C() & 1) != 0 && (sub_2281385DC() & 1) == 0)
        {
          v138 = 51;
        }

        else
        {
          v138 = 41;
        }

        v159 = v255;
        sub_22809C164(v291, v255);
        v160 = v299;
        if (v300(v159, 1, v299) == 1)
        {
          sub_227FCB758(v159, &qword_27D81E598, &qword_22813B300);
          v161 = 0;
        }

        else
        {
          sub_228099194();
          v161 = swift_allocError();
          (*(v136 + 32))(v162, v159, v160);
        }

        v163 = swift_allocObject();
        *(v163 + 16) = v138;
        *(v163 + 24) = 0;
        *(v163 + 32) = 0;
        v164 = sub_227FF96D4(v161, 0xD00000000000007CLL, 0x80000002281477A0, 207, sub_22809C868, v163);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v165 = v297;
        }

        else
        {
          v165 = sub_228133BC0(0, *(v297 + 2) + 1, 1, v297);
        }

        v167 = *(v165 + 2);
        v166 = *(v165 + 3);
        if (v167 >= v166 >> 1)
        {
          v297 = sub_228133BC0((v166 > 1), v167 + 1, 1, v165);
        }

        else
        {
          v297 = v165;
        }

        (*(v282 + 1))(v137, v302);
        v93[1](v268, v286);
        v168 = v297;
        *(v297 + 2) = v167 + 1;
        v169 = &v168[16 * v167];
        v169[32] = v138;
        *(v169 + 5) = v164;
        v90 = v299;
        v92 = v136;
        v96 = MEMORY[0x277D0DB78];
        v91 = v292;
        v113 = v293;
      }

      else
      {
        v126[1](v131, v132);
        (*(v134 + 1))(v133, v135);
        v90 = v299;
        v92 = v290;
        v93 = v126;
        v113 = v293;
        v96 = MEMORY[0x277D0DB78];
      }
    }

    else
    {
      (*(v130 + 1))(v128, v129);
      v92 = v290;
      v96 = MEMORY[0x277D0DB78];
      v93 = v126;
    }
  }

  sub_22809C164(v113, v91);
  if (v300(v91, 1, v90) == 1)
  {
    sub_227FCB758(v91, &qword_27D81E598, &qword_22813B300);
    v170 = v297;
    v171 = v298;
    v172 = *(v297 + 2);
    if (!v172)
    {
      goto LABEL_114;
    }

    goto LABEL_75;
  }

  v173 = v92;
  v174 = v277;
  sub_2281386EC();
  v90 = v299;
  v175 = v91;
  v176 = v174;
  (*(v173 + 8))(v175, v299);
  v177 = v296;
  v178 = v174;
  v179 = v295;
  if ((*(v296 + 11))(v178, v295) == *v96)
  {
    (*(v177 + 12))(v176, v179);
    v180 = v269;
    v181 = v286;
    (v93[4])(v269, v176, v286);
    v182 = v261;
    sub_2281386BC();
    v183 = v289;
    v184 = v284;
    if ((*(v289 + 11))(v182, v284) == *MEMORY[0x277D0DA98])
    {
      (*(v183 + 12))(v182, v184);
      (*(v282 + 4))(v263, v182, v302);
      if ((sub_22813860C() & 1) != 0 && (sub_2281385DC() & 1) == 0)
      {
        v185 = 52;
      }

      else
      {
        v185 = 43;
      }

      v186 = v257;
      sub_22809C164(v293, v257);
      v187 = v299;
      if (v300(v186, 1, v299) == 1)
      {
        sub_227FCB758(v186, &qword_27D81E598, &qword_22813B300);
        v188 = 0;
      }

      else
      {
        sub_228099194();
        v188 = swift_allocError();
        (*(v173 + 32))(v189, v186, v187);
      }

      v190 = swift_allocObject();
      *(v190 + 16) = v185;
      *(v190 + 24) = 0;
      *(v190 + 32) = 0;
      v191 = sub_227FF96D4(v188, 0xD00000000000007CLL, 0x80000002281477A0, 221, sub_22809C864, v190);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v192 = v297;
      }

      else
      {
        v192 = sub_228133BC0(0, *(v297 + 2) + 1, 1, v297);
      }

      v193 = v93;
      v195 = *(v192 + 2);
      v194 = *(v192 + 3);
      if (v195 >= v194 >> 1)
      {
        v196 = sub_228133BC0((v194 > 1), v195 + 1, 1, v192);
      }

      else
      {
        v196 = v192;
      }

      (*(v282 + 1))(v263, v302);
      v193[1](v269, v286);
      v170 = v196;
      v93 = v193;
      *(v170 + 2) = v195 + 1;
      v197 = &v170[16 * v195];
      v197[32] = v185;
      *(v197 + 5) = v191;
      v171 = v298;
      v90 = v299;
      v92 = v173;
      v96 = MEMORY[0x277D0DB78];
      v172 = *(v170 + 2);
      if (v172)
      {
        goto LABEL_75;
      }

LABEL_114:

      if (qword_2813C49E0 == -1)
      {
LABEL_115:
        v248 = sub_22813882C();
        __swift_project_value_buffer(v248, qword_2813C8A20);
        v249 = sub_22813880C();
        v250 = sub_2281396EC();
        if (os_log_type_enabled(v249, v250))
        {
          v251 = swift_slowAlloc();
          *v251 = 0;
          _os_log_impl(&dword_227FC3000, v249, v250, "No errors found while trying to extract and throw error.", v251, 2u);
          MEMORY[0x22AAB28A0](v251, -1, -1);
        }

        return;
      }

LABEL_123:
      swift_once();
      goto LABEL_115;
    }

    v93[1](v180, v181);
    (*(v183 + 1))(v182, v184);
    v171 = v298;
    v90 = v299;
    v170 = v297;
    v96 = MEMORY[0x277D0DB78];
  }

  else
  {
    (*(v177 + 1))(v176, v179);
    v170 = v297;
    v171 = v298;
  }

  v92 = v173;
  v172 = *(v170 + 2);
  if (!v172)
  {
    goto LABEL_114;
  }

LABEL_75:
  v198 = 0;
  v292 = (v296 + 88);
  v293 = (v92 + 32);
  LODWORD(v291) = *v96;
  v281 = (v296 + 8);
  v280 = (v296 + 96);
  v279 = (v93 + 4);
  v278 = v93 + 1;
  v277 = (v289 + 88);
  LODWORD(v276) = *MEMORY[0x277D0DA98];
  v269 = v289 + 8;
  v296 = v282 + 56;
  v268 = v289 + 96;
  v285 = (v282 + 32);
  v289 = v282 + 48;
  v290 = v92 + 8;
  v275 = v282 + 8;
  v199 = (v170 + 40);
  v297 = v170;
  v282 = v38;
  while (1)
  {
    if (v198 >= *(v170 + 2))
    {
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v200 = *(v199 - 8);
    if ((v200 - 39) >= 0xC)
    {
      goto LABEL_78;
    }

    v201 = v170;
    v202 = *v199;

    sub_22809528C(v202, v38);
    if (v300(v38, 1, v90) != 1)
    {
      break;
    }

    sub_227FCB758(v38, &qword_27D81E598, &qword_22813B300);
    (*v296)(v171, 1, 1, v302);
LABEL_77:

    sub_227FCB758(v171, &qword_27D81EEF8, &unk_22813F0F0);
    v170 = v201;
LABEL_78:
    ++v198;
    v199 += 2;
    if (v172 == v198)
    {
      v220 = *(v170 + 2);
      if (!v220)
      {
        goto LABEL_114;
      }

      v221 = 0;
      v222 = (v170 + 40);
      v223 = v270;
      v224 = v287;
      while (1)
      {
        if (v221 >= *(v297 + 2))
        {
          goto LABEL_122;
        }

        v226 = *(v222 - 8);
        if ((v226 - 51) < 2u)
        {
          break;
        }

LABEL_95:
        ++v221;
        v222 += 2;
        if (v220 == v221)
        {
          if (!*(v297 + 2))
          {
            goto LABEL_114;
          }

          v202 = *(v297 + 5);
          v246 = v297[32];

          v247 = v246;
          goto LABEL_119;
        }
      }

      v227 = *v222;

      sub_22809528C(v227, v224);
      if (v300(v224, 1, v90) == 1)
      {
        sub_227FCB758(v224, &qword_27D81E598, &qword_22813B300);
        if (qword_2813C49E0 != -1)
        {
          swift_once();
        }

        v228 = sub_22813882C();
        __swift_project_value_buffer(v228, qword_2813C8A20);
        v229 = sub_22813880C();
        v230 = sub_2281396DC();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          *v231 = 0;
          v232 = v231;
          v224 = v287;
          v223 = v270;
          MEMORY[0x22AAB28A0](v232, -1, -1);
        }

        v225 = v288;
        (*v296)(v288, 1, 1, v302);
        v90 = v299;
LABEL_94:

        sub_227FCB758(v225, &qword_27D81EEF8, &unk_22813F0F0);
        goto LABEL_95;
      }

      (*v293)(v223, v224, v90);
      v233 = v274;
      sub_2281386EC();
      v234 = v295;
      v235 = (*v292)(v233, v295);
      if (v235 == v291)
      {
        (*v280)(v233, v234);
        v236 = v265;
        v237 = v286;
        (*v279)(v265, v233, v286);
        v233 = v266;
        sub_2281386BC();
        (*v278)(v236, v237);
        v234 = v284;
        v238 = (*v277)(v233, v284);
        if (v238 == v276)
        {
          (*v268)(v233, v234);
          (*v285)(v288, v233, v302);
          v239 = 0;
          goto LABEL_109;
        }

        v240 = v269;
      }

      else
      {
        v240 = v281;
      }

      (*v240)(v233, v234);
      v239 = 1;
LABEL_109:
      v90 = v299;
      v225 = v288;
      v241 = v302;
      (*v296)(v288, v239, 1, v302);
      (*v290)(v223, v90);
      v242 = (*v289)(v225, 1, v241);
      v224 = v287;
      if (v242 != 1)
      {
        v243 = v267;
        v244 = v302;
        (*v285)(v267, v225, v302);
        v245 = sub_22813860C();
        (*v275)(v243, v244);
        if (v245)
        {

          sub_228098DAC(v226, v227, v262);

          return;
        }

        v90 = v299;
        v224 = v287;
        goto LABEL_95;
      }

      goto LABEL_94;
    }
  }

  (*v293)(v294, v38, v90);
  v203 = v283;
  sub_2281386EC();
  v204 = v295;
  v205 = (*v292)(v203, v295);
  if (v205 == v291)
  {
    (*v280)(v203, v204);
    v206 = v271;
    v207 = v286;
    (*v279)(v271, v203, v286);
    v208 = v272;
    sub_2281386BC();
    (*v278)(v206, v207);
    v209 = v284;
    v210 = (*v277)(v208, v284);
    if (v210 == v276)
    {
      (*v268)(v208, v209);
      v211 = v298;
      (*v285)(v298, v208, v302);
      v212 = v211;
      v213 = 0;
    }

    else
    {
      (*v269)(v208, v209);
      v213 = 1;
      v212 = v298;
    }

    v90 = v299;
    v38 = v282;
  }

  else
  {
    (*v281)(v203, v204);
    v213 = 1;
    v212 = v298;
    v90 = v299;
  }

  v214 = v302;
  (*v296)(v212, v213, 1, v302);
  (*v290)(v294, v90);
  v215 = v214;
  v171 = v298;
  if ((*v289)(v298, 1, v215) == 1)
  {
    goto LABEL_77;
  }

  v216 = v273;
  v217 = v171;
  v218 = v302;
  (*v285)(v273, v217, v302);
  v219 = sub_2281385DC();
  (*v275)(v216, v218);
  if ((v219 & 1) == 0)
  {

    v171 = v298;
    v90 = v299;
    v170 = v297;
    v38 = v282;
    goto LABEL_78;
  }

  v247 = v200;
LABEL_119:
  sub_228098DAC(v247, v202, v262);
}

uint64_t sub_22809C164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_7()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_22809C268(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22809C308(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v5 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10, v5);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(*(v5 - 8) + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_22809C55C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(*(v7 - 8) + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11, v7);
  }
}

Swift::String_optional __swiftcall Summary.stringValue(for:)(SummarizationKit::SummarizationStyle a1)
{
  v1 = a1;
  v2 = sub_228136DAC();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-v4];
  v6 = sub_228136DBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *v1;
  v10 = sub_22809CD84(&v17);
  if (v10)
  {
    swift_getAtKeyPath(v5);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v9, v5, v6);
      sub_228136D9C();
      sub_22809CF1C();
      v12 = sub_22813946C();
      v14 = v13;

      (*(v7 + 8))(v9, v6);
      v11 = v14;
      v10 = v12;
      goto LABEL_6;
    }

    sub_22809EFE4(v5, &qword_27D81ECF8, &qword_22813E298);
    v10 = 0;
  }

  v11 = 0;
LABEL_6:
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

Swift::Void __swiftcall Summary.setStringValue(_:for:)(Swift::String_optional _, SummarizationKit::SummarizationStyle a2)
{
  v2 = a2;
  object = _.value._object;
  countAndFlagsBits = _.value._countAndFlagsBits;
  v5 = sub_228136DEC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  if (*v2 == 3)
  {
    v13 = 3;
    if (!sub_22809D2D0(&v13))
    {
      return;
    }

    sub_22809D4A4(countAndFlagsBits, object);
    v12 = v9;
    swift_setAtWritableKeyPath();
  }

  else
  {
    v14 = *v2;
    if (!sub_22809CD84(&v14))
    {
      return;
    }

    if (object)
    {

      sub_228136DDC();
      sub_228136DCC();
      v10 = sub_228136DBC();
      (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
    }

    else
    {
      v11 = sub_228136DBC();
      (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    }

    swift_setAtWritableKeyPath();
  }
}

uint64_t Summary.attributedStringValue(for:)@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v7 = *a1;
  if (sub_22809CD84(&v7))
  {
    swift_getAtKeyPath(a2);
  }

  else
  {
    v5 = sub_228136DBC();
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }
}

uint64_t sub_22809CD84(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 1)
  {
    if (*a1)
    {
      return swift_getKeyPath("@&nU");
    }

    else
    {
      return swift_getKeyPath(byte_22813F428);
    }
  }

  else if (v1 == 2)
  {
    return swift_getKeyPath("h&nU");
  }

  else if (v1 == 3)
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v2 = sub_22813882C();
    __swift_project_value_buffer(v2, qword_2813C8A20);
    v3 = sub_22813880C();
    v4 = sub_2281396DC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_227FCC340(0x6F436C6175736976, 0xEE0073747065636ELL, &v8);
      _os_log_impl(&dword_227FC3000, v3, v4, "Asked for attributedStringKeyPath for unsupported style: %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AAB28A0](v6, -1, -1);
      MEMORY[0x22AAB28A0](v5, -1, -1);
    }

    return 0;
  }

  else
  {
    return swift_getKeyPath(byte_22813F398);
  }
}

unint64_t sub_22809CF1C()
{
  result = qword_27D81EF00;
  if (!qword_27D81EF00)
  {
    sub_228136DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81EF00);
  }

  return result;
}

uint64_t Summary.setAttributedStringValue(_:for:)(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  v9 = *a2;
  result = sub_22809CD84(&v9);
  if (result)
  {
    sub_22809F044(a1, v6, &qword_27D81ECF8, &qword_22813E298);
    swift_setAtWritableKeyPath();
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall Summary.stringArrayValue(for:)(SummarizationKit::SummarizationStyle a1)
{
  v1 = a1;
  v31 = sub_228136DAC();
  MEMORY[0x28223BE20](v31);
  v30 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_228136DBC();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v32) = *v1;
  v6 = sub_22809D2D0(&v32);
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = v6;
  swift_getAtKeyPath(&v32);
  v9 = v32;
  if (!v32)
  {

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = v32[2];
  if (v10)
  {
    v25[2] = v8;
    v32 = MEMORY[0x277D84F90];
    sub_228043AD4(0, v10, 0);
    v11 = v32;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 64);
    v25[1] = v9;
    v15 = v9 + ((v14 + 32) & ~v14);
    v26 = *(v12 + 56);
    v27 = v13;
    v28 = v12;
    v16 = (v12 - 8);
    do
    {
      v17 = v29;
      v27(v5, v15, v29);
      sub_228136D9C();
      sub_22809CF1C();
      v18 = sub_22813946C();
      v20 = v19;
      (*v16)(v5, v17);
      v32 = v11;
      v22 = v11[2];
      v21 = v11[3];
      if (v22 >= v21 >> 1)
      {
        sub_228043AD4((v21 > 1), v22 + 1, 1);
        v11 = v32;
      }

      v11[2] = v22 + 1;
      v23 = &v11[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
      v15 += v26;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

LABEL_11:
  v24 = v11;
  result.value._rawValue = v24;
  result.is_nil = v7;
  return result;
}

uint64_t sub_22809D2D0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 3)
  {
    return swift_getKeyPath(byte_22813F368);
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v3 = sub_22813882C();
  __swift_project_value_buffer(v3, qword_2813C8A20);
  v4 = sub_22813880C();
  v5 = sub_2281396DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    v8 = 0xE500000000000000;
    *v6 = 136446210;
    v9 = 0x6369706F74;
    v10 = 0xE800000000000000;
    v11 = 0x736973706F6E7973;
    if (v1 != 2)
    {
      v11 = 0x6F546C6175736976;
      v10 = 0xED0000656E694C70;
    }

    if (v1)
    {
      v9 = 0x656E694C706F74;
      v8 = 0xE700000000000000;
    }

    if (v1 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    if (v1 <= 1)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    v14 = sub_227FCC340(v12, v13, &v15);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_227FC3000, v4, v5, "Asked for attributedStringKeyPath for unsupported style: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAB28A0](v7, -1, -1);
    MEMORY[0x22AAB28A0](v6, -1, -1);
  }

  return 0;
}

void sub_22809D4A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_228136DEC();
  MEMORY[0x28223BE20](v4 - 8);
  v129 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_228136DBC();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v7 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_228136CDC();
  v8 = *(v133 - 8);
  v9 = MEMORY[0x28223BE20](v133);
  v132 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v130 = v7;
    *&v141 = 10;
    *(&v141 + 1) = 0xE100000000000000;
    MEMORY[0x28223BE20](v9);
    v122 = &v141;

    v12 = sub_22809EC24(0x7FFFFFFFFFFFFFFFLL, 1, sub_22809F0AC, &v120, a1, a2, v11);
    v126 = 0;
    v13 = *(v12 + 16);
    v125 = v8;
    if (v13)
    {
      v144 = MEMORY[0x277D84F90];
      sub_228043AD4(0, v13, 0);
      v14 = v144;
      v131 = v8 + 8;
      v124 = v12;
      v15 = (v12 + 56);
      v17 = (v8 + 8);
      v16 = v132;
      do
      {
        v134 = v13;
        v135 = v14;
        v18 = *(v15 - 1);
        v19 = *v15;
        v141 = *(v15 - 3);
        v142 = v18;
        v143 = v19;

        sub_228136C8C();
        sub_228045E64();
        v20 = sub_2281397AC();
        v22 = v21;
        v23 = *v17;
        v24 = v133;
        (*v17)(v16, v133);
        *&v136 = v20;
        *(&v136 + 1) = v22;
        v139 = 45;
        v140 = 0xE100000000000000;
        sub_22809F0C8();
        sub_22813965C();

        v136 = v141;
        v137 = v142;
        v138 = v143;
        sub_228136C8C();
        v25 = sub_2281397AC();
        v14 = v135;
        v26 = v25;
        v28 = v27;

        v23(v16, v24);

        v144 = v14;
        v30 = v14[2];
        v29 = v14[3];
        if (v30 >= v29 >> 1)
        {
          sub_228043AD4((v29 > 1), v30 + 1, 1);
          v14 = v144;
        }

        v14[2] = v30 + 1;
        v31 = &v14[2 * v30];
        v31[4] = v26;
        v31[5] = v28;
        v15 += 4;
        v13 = v134 - 1;
      }

      while (v134 != 1);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v32 = v14[2];
    v33 = v130;
    v34 = MEMORY[0x277D84F90];
    if (v32 <= 1)
    {
      if (v32 != 1)
      {
LABEL_74:
        __break(1u);
        return;
      }

      v35 = v14;
      v36 = v14[4];
      v37 = v35[5];

      *&v141 = v36;
      *(&v141 + 1) = v37;
      *&v136 = 59;
      *(&v136 + 1) = 0xE100000000000000;
      v139 = 44;
      v140 = 0xE100000000000000;
      v122 = sub_227FDB420();
      v123 = v122;
      v121 = v122;
      v120 = MEMORY[0x277D837D0];
      v38 = sub_2281397BC();
      v40 = v39;

      *&v141 = 44;
      *(&v141 + 1) = 0xE100000000000000;
      MEMORY[0x28223BE20](v41);
      v122 = &v141;
      v42 = v40;
      v43 = v126;
      v44 = sub_22809EC24(0x7FFFFFFFFFFFFFFFLL, 1, sub_22809F240, &v120, v38, v42, &v145);
      v126 = v43;
      v45 = *(v44 + 16);
      if (v45)
      {
        *&v136 = v34;
        sub_228043AD4(0, v45, 0);
        v14 = v136;
        v46 = (v125 + 8);
        v135 = v44;
        v47 = (v44 + 56);
        do
        {
          v48 = *(v47 - 1);
          v49 = *v47;
          v141 = *(v47 - 3);
          v142 = v48;
          v143 = v49;

          v50 = v132;
          sub_228136C8C();
          sub_228045E64();
          v51 = sub_2281397AC();
          v53 = v52;
          (*v46)(v50, v133);

          *&v136 = v14;
          v55 = v14[2];
          v54 = v14[3];
          if (v55 >= v54 >> 1)
          {
            sub_228043AD4((v54 > 1), v55 + 1, 1);
            v14 = v136;
          }

          v14[2] = v55 + 1;
          v56 = &v14[2 * v55];
          v56[4] = v51;
          v56[5] = v53;
          v47 += 4;
          --v45;
        }

        while (v45);
      }

      else
      {

        v14 = MEMORY[0x277D84F90];
      }
    }

    v57 = v14[2];
    v135 = v14;
    if (v57)
    {
      v144 = v34;
      sub_228043AD4(0, v57, 0);
      v34 = v144;
      v58 = sub_227FDB420();
      v59 = v14 + 5;
      do
      {
        v60 = *v59;
        *&v141 = *(v59 - 1);
        *(&v141 + 1) = v60;
        *&v136 = 42;
        *(&v136 + 1) = 0xE100000000000000;
        v139 = 0;
        v140 = 0xE000000000000000;
        v122 = v58;
        v123 = v58;
        v121 = v58;
        v120 = MEMORY[0x277D837D0];
        v61 = sub_2281397BC();
        v144 = v34;
        v64 = v34[2];
        v63 = v34[3];
        v65 = v64 + 1;
        if (v64 >= v63 >> 1)
        {
          v134 = v61;
          v67 = v62;
          sub_228043AD4((v63 > 1), v64 + 1, 1);
          v62 = v67;
          v61 = v134;
          v34 = v144;
        }

        v34[2] = v65;
        v66 = &v34[2 * v64];
        v66[4] = v61;
        v66[5] = v62;
        v59 += 2;
        --v57;
      }

      while (v57);
LABEL_26:
      *&v141 = MEMORY[0x277D84F90];
      sub_228043AD4(0, v65, 0);
      v68 = 0;
      v69 = v34[2];
      v70 = v141;
      v133 = v135[2] - 1;
      v134 = v69;
      v71 = v34 + 5;
      while (v134 != v68)
      {
        if (v68 >= v34[2])
        {
          goto LABEL_71;
        }

        v73 = *(v71 - 1);
        v72 = *v71;

        if (v133 == v68 && (sub_22813942C() & 1) != 0)
        {

          v74 = sub_22809F174(1, v73, v72);
          v76 = v75;
          v78 = v77;
          v80 = v79;

          v73 = MEMORY[0x22AAB18D0](v74, v76, v78, v80);
          v82 = v81;

          v72 = v82;
        }

        *&v141 = v70;
        v84 = *(v70 + 16);
        v83 = *(v70 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_228043AD4((v83 > 1), v84 + 1, 1);
          v70 = v141;
        }

        ++v68;
        *(v70 + 16) = v84 + 1;
        v85 = v70 + 16 * v84;
        *(v85 + 32) = v73;
        *(v85 + 40) = v72;
        v71 += 2;
        if (v65 == v68)
        {

          v33 = v130;
          goto LABEL_36;
        }
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v65 = v34[2];
    if (v65)
    {
      goto LABEL_26;
    }

    v70 = MEMORY[0x277D84F90];

LABEL_36:
    v86 = 0;
    v87 = *(v70 + 16);
    v88 = MEMORY[0x277D84F90];
LABEL_37:
    v89 = (v70 + 40 + 16 * v86);
    while (v87 != v86)
    {
      if (v86 >= *(v70 + 16))
      {
        __break(1u);
        goto LABEL_70;
      }

      ++v86;
      v91 = *(v89 - 1);
      v90 = *v89;
      v89 += 2;
      v92 = HIBYTE(v90) & 0xF;
      if ((v90 & 0x2000000000000000) == 0)
      {
        v92 = v91 & 0xFFFFFFFFFFFFLL;
      }

      if (v92)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v141 = v88;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228043AD4(0, *(v88 + 16) + 1, 1);
          v88 = v141;
        }

        v95 = *(v88 + 16);
        v94 = *(v88 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_228043AD4((v94 > 1), v95 + 1, 1);
          v88 = v141;
        }

        *(v88 + 16) = v95 + 1;
        v96 = v88 + 16 * v95;
        *(v96 + 32) = v91;
        *(v96 + 40) = v90;
        v33 = v130;
        goto LABEL_37;
      }
    }

    *&v136 = MEMORY[0x277D84FA0];
    v97 = *(v88 + 16);
    v98 = MEMORY[0x277D84F90];
    v134 = v88;
    if (v97)
    {
      v99 = 0;
      v100 = v88 + 40;
LABEL_50:
      v135 = v98;
      v101 = (v100 + 16 * v99);
      v102 = v99;
      while (v102 < v97)
      {
        v99 = v102 + 1;
        if (__OFADD__(v102, 1))
        {
          goto LABEL_73;
        }

        v104 = *(v101 - 1);
        v103 = *v101;
        v105 = sub_2281392FC();
        v107 = v106;

        v108 = sub_2280BD990(&v141, v105, v107);

        if (v108)
        {
          v98 = v135;
          v109 = swift_isUniquelyReferenced_nonNull_native();
          v139 = v98;
          if ((v109 & 1) == 0)
          {
            sub_228043AD4(0, *(v98 + 16) + 1, 1);
            v98 = v139;
          }

          v33 = v130;
          v111 = *(v98 + 16);
          v110 = *(v98 + 24);
          if (v111 >= v110 >> 1)
          {
            sub_228043AD4((v110 > 1), v111 + 1, 1);
            v98 = v139;
          }

          *(v98 + 16) = v111 + 1;
          v112 = v98 + 16 * v111;
          *(v112 + 32) = v104;
          *(v112 + 40) = v103;
          if (v99 != v97)
          {
            goto LABEL_50;
          }

          goto LABEL_61;
        }

        ++v102;
        v101 += 2;
        if (v99 == v97)
        {
          v33 = v130;
          v98 = v135;
          goto LABEL_61;
        }
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_61:

    v113 = *(v98 + 16);
    if (v113)
    {
      *&v141 = MEMORY[0x277D84F90];
      sub_228043CBC(0, v113, 0);
      v114 = v141;
      v115 = v127;
      v135 = v98;
      v116 = v98 + 40;
      v117 = v128;
      do
      {

        sub_228136DDC();
        sub_228136DCC();
        *&v141 = v114;
        v119 = *(v114 + 16);
        v118 = *(v114 + 24);
        if (v119 >= v118 >> 1)
        {
          sub_228043CBC((v118 > 1), v119 + 1, 1);
          v114 = v141;
        }

        *(v114 + 16) = v119 + 1;
        (*(v115 + 32))(v114 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v119, v33, v117);
        v116 += 16;
        --v113;
      }

      while (v113);
    }
  }
}

uint64_t sub_22809E054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_22809F044(a1, &v11 - v8, &qword_27D81ECF8, &qword_22813E298);
  return a5(v9);
}

uint64_t Summary.merge(_:)(uint64_t a1)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  MEMORY[0x28223BE20](v1 - 8);
  v52 = &v46 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v46 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v46 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v46 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v46 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v46 - v25;
  sub_228138F2C();
  v27 = sub_228136DBC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v24, 1, v27) == 1)
  {
    sub_228138F2C();
    if (v29(v24, 1, v27) != 1)
    {
      sub_22809EFE4(v24, &qword_27D81ECF8, &qword_22813E298);
    }
  }

  else
  {
    (*(v28 + 32))(v26, v24, v27);
    (*(v28 + 56))(v26, 0, 1, v27);
  }

  sub_228138F3C();
  sub_228138F5C();
  if (v29(v18, 1, v27) == 1)
  {
    sub_228138F5C();
    v30 = v29(v18, 1, v27);
    v31 = v51;
    if (v30 != 1)
    {
      sub_22809EFE4(v18, &qword_27D81ECF8, &qword_22813E298);
    }
  }

  else
  {
    (*(v28 + 32))(v21, v18, v27);
    (*(v28 + 56))(v21, 0, 1, v27);
    v31 = v51;
  }

  sub_228138F6C();
  v32 = v46;
  sub_228138F7C();
  if (v29(v32, 1, v27) == 1)
  {
    sub_228138F7C();
    v33 = v29(v32, 1, v27) == 1;
    v34 = v32;
    v36 = v48;
    v35 = v49;
    if (!v33)
    {
      sub_22809EFE4(v34, &qword_27D81ECF8, &qword_22813E298);
    }
  }

  else
  {
    v37 = v47;
    (*(v28 + 32))(v47, v32, v27);
    (*(v28 + 56))(v37, 0, 1, v27);
    v36 = v48;
    v35 = v49;
  }

  sub_228138F8C();
  if (!sub_228138E9C())
  {
    sub_228138E9C();
  }

  sub_228138EAC();
  sub_228138E7C();
  if (v29(v36, 1, v27) == 1)
  {
    sub_228138E7C();
    if (v29(v36, 1, v27) != 1)
    {
      sub_22809EFE4(v36, &qword_27D81ECF8, &qword_22813E298);
    }
  }

  else
  {
    (*(v28 + 32))(v35, v36, v27);
    (*(v28 + 56))(v35, 0, 1, v27);
  }

  sub_228138E8C();
  v38 = sub_228138ECC();
  v39 = sub_228138EBC();
  sub_227FED640(v38);
  v39(v54, 0);
  v40 = v50;
  sub_228138F0C();
  v41 = sub_228138DDC();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  if (v43(v40, 1, v41) == 1)
  {
    sub_228138F0C();
    if (v43(v40, 1, v41) != 1)
    {
      sub_22809EFE4(v40, &qword_27D81ECF0, &qword_22813E230);
    }
  }

  else
  {
    (*(v42 + 32))(v31, v40, v41);
    (*(v42 + 56))(v31, 0, 1, v41);
  }

  sub_228138F1C();
  v44 = v52;
  sub_228138EEC();
  Summary.merge(safetyClassification:)(v44);
  return sub_22809EFE4(v44, &qword_27D81EC98, &qword_22813E0D0);
}

uint64_t Summary.merge(safetyClassification:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23[-v7];
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-v9];
  v11 = sub_228138E0C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22809F044(a1, v10, &qword_27D81EC98, &qword_22813E0D0);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    return sub_22809EFE4(v10, &qword_27D81EC98, &qword_22813E0D0);
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_228138EEC();
  v17 = v15(v8, 1, v11);
  sub_22809EFE4(v8, &qword_27D81EC98, &qword_22813E0D0);
  if (v17 == 1)
  {
    (*(v12 + 16))(v5, v14, v11);
    (*(v12 + 56))(v5, 0, 1, v11);
    sub_228138EFC();
    return (*(v12 + 8))(v14, v11);
  }

  v18 = sub_228138EDC();
  v20 = v19;
  if (v15(v19, 1, v11))
  {
    v18(v23, 0);
    return (*(v12 + 8))(v14, v11);
  }

  v21 = sub_228138DFC();
  v22 = *(v12 + 8);
  v22(v20, v11);
  if (v21)
  {
    sub_228138DFC();
  }

  sub_228138DEC();
  v18(v23, 0);
  return (v22)(v14, v11);
}

uint64_t sub_22809EBA8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_228138F9C();
  (*(*(v7 - 8) + 16))(a3, v3, v7);
  return a2(a1);
}

unint64_t sub_22809EC24@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v7 = sub_22813948C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2281342E4(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = sub_2281342E4((a7 > 1), v10, 1, v14);
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
        v19 = sub_22813945C();
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

        v14 = sub_22813937C();
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
        v18 = sub_22813937C();
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
          v7 = sub_22813948C();
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

        v14 = sub_2281342E4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22813948C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2281342E4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2281342E4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22813937C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22809EFE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22809F044(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_22809F0C8()
{
  result = qword_27D81EF08;
  if (!qword_27D81EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81EF08);
  }

  return result;
}

uint64_t sub_22809F11C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2281399BC() & 1;
  }
}

uint64_t sub_22809F174(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = sub_22813936C();
  if (__OFSUB__(result, v3))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_22813939C();

  return sub_22813948C();
}

uint64_t SKUserNotification.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_228138B8C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SKUserNotification.preprocess(sharedSessionData:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_228138AEC();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22809F394, 0, 0);
}

uint64_t sub_22809F394()
{
  v50 = v0;
  v1 = sub_228138B6C();
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0xE000000000000000;
  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = sub_228138B7C();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = sub_228138B5C();
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v4 = v11;
  }

  v13 = sub_2280A8A4C(v12, v4);
  if (v13)
  {

    v16 = swift_allocObject();
    *(v16 + 16) = 6;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    v17 = sub_227FF96D4(0, 0xD000000000000084, 0x8000000228147820, 20, sub_2280A0390, v16);
    sub_227FDB3CC();
    swift_allocError();
    *v18 = 6;
    *(v18 + 8) = v17;
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }

  else
  {
    v19 = sub_2280A8CC8(v12, v4);
    v47 = v8;
    v20 = v0[18];
    v21 = *(v20 + 208);
    v44 = sub_2280A7954(v19, v22, v20 + 160, v21);
    v46 = v23;
    v39 = v21;
    v43 = v20;
    v25 = v0[22];
    v24 = v0[23];
    v40 = v0[20];
    v42 = v0[21];

    sub_228138B2C();
    sub_228138ADC();
    sub_2280A00CC();
    v41 = sub_2281397EC();
    v26 = *(v42 + 8);
    v26(v25, v40);
    v26(v24, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    inited = swift_initStackObject();
    if (v41)
    {
      *(inited + 16) = xmmword_22813A4B0;
      *(inited + 32) = v44;
      *(inited + 40) = v46;

      sub_2280A8554(inited, (v43 + 160));
      swift_setDeallocating();
      sub_227FE5D7C(inited + 32);
      v28 = v43;
    }

    else
    {
      *(inited + 32) = v3;
      *(inited + 16) = xmmword_22813B480;
      *(inited + 40) = v5;
      *(inited + 48) = v47;
      *(inited + 56) = v9;
      *(inited + 64) = v44;
      *(inited + 72) = v46;

      sub_2280A8554(inited, (v43 + 160));
      v28 = v43;
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    v45 = sub_2280A0124(v3, v5, v47, v9, v44, v46);
    v30 = v29;

    v0[24] = v30;
    if (v39)
    {
      v31 = sub_22813936C();

      KeyPath = swift_getKeyPath(byte_22813F470);
      os_unfair_lock_lock(v39 + 4);
      v33 = MEMORY[0x277D84A28];
      v49 = MEMORY[0x277D84A28];
      v48[0] = v31;

      sub_2280449E4(v48, KeyPath, &v39[6]);
      os_unfair_lock_unlock(v39 + 4);

      v34 = sub_22813936C();

      v35 = swift_getKeyPath(byte_22813F498);
      os_unfair_lock_lock(v39 + 4);
      v49 = v33;
      v48[0] = v34;
      v28 = v43;

      sub_2280449E4(v48, v35, &v39[6]);
      os_unfair_lock_unlock(v39 + 4);

      v36 = sub_22813936C();

      v37 = swift_getKeyPath(byte_22813F4C0);
      os_unfair_lock_lock(v39 + 4);
      v49 = v33;
      v48[0] = v36;

      sub_2280449E4(v48, v37, &v39[6]);
      os_unfair_lock_unlock(v39 + 4);
    }

    else
    {
    }

    v38 = swift_task_alloc();
    v0[25] = v38;
    *v38 = v0;
    v38[1] = sub_22809F99C;

    return sub_2280D89D0(v45, v30, v28 + 160, 0);
  }
}

uint64_t sub_22809F99C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 208) = v2;

  if (v2)
  {
    v7 = sub_22809FB4C;
  }

  else
  {
    *(v6 + 216) = a2;
    *(v6 + 224) = a1;
    v7 = sub_22809FAD0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22809FAD0()
{

  v1 = v0[1];
  v3 = v0[27];
  v2 = v0[28];

  return v1(v2, v3);
}

uint64_t sub_22809FB4C()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::String __swiftcall SKUserNotification.preprocessForLanguageCheck()()
{
  v0 = sub_228138AEC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - v5;
  v31 = sub_228138B6C();
  v8 = v7;
  v9 = 0xE000000000000000;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v34 = v10;
  v30 = sub_228138B7C();
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v33 = v13;
  v14 = sub_228138B5C();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v32 = v16;
  if (v15)
  {
    v9 = v15;
  }

  sub_228138B2C();
  sub_228138ADC();
  sub_2280A00CC();
  v17 = sub_2281397EC();
  v18 = *(v1 + 8);
  v18(v4, v0);
  v18(v6, v0);
  if (v17)
  {

    v19 = v32;
  }

  else
  {
    if (v12)
    {
      v20 = v30;
    }

    else
    {
      v20 = 0;
    }

    if (v8)
    {
      v21 = v31;
    }

    else
    {
      v21 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    inited = swift_initStackObject();
    *(inited + 32) = v21;
    *(inited + 16) = xmmword_22813B480;
    v23 = v33;
    *(inited + 40) = v34;
    *(inited + 48) = v20;
    v24 = v32;
    *(inited + 56) = v23;
    *(inited + 64) = v24;
    *(inited + 72) = v9;
    v25 = sub_228045C34();
    v9 = v26;
    swift_setDeallocating();
    swift_arrayDestroy();
    v19 = v25;
  }

  v27 = v9;
  result._object = v27;
  result._countAndFlagsBits = v19;
  return result;
}

uint64_t sub_22809FDEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22809FE80;

  return SKUserNotification.preprocess(sharedSessionData:)(a1);
}

uint64_t sub_22809FE80(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_2280A0004@<X0>(os_unfair_lock_s **a1@<X0>, const char *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  KeyPath = swift_getKeyPath(a2);
  os_unfair_lock_lock((v4 + 16));
  v6 = sub_2280D2D08((v4 + 24), KeyPath);
  v8 = v7;
  os_unfair_lock_unlock((v4 + 16));

  *a3 = v6;
  *(a3 + 8) = v8 & 1;
  return result;
}

unint64_t sub_2280A00CC()
{
  result = qword_2813C4748;
  if (!qword_2813C4748)
  {
    sub_228138AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4748);
  }

  return result;
}

uint64_t sub_2280A0124(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v32 = 0x203A656C746954;
    v33 = 0xE700000000000000;
    result = MEMORY[0x22AAB1970]();
    v11 = 0x203A656C746954;
    v12 = 0xE700000000000000;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v13 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v32 = 0x656C746974627553;
    v33 = 0xEA0000000000203ALL;
    result = MEMORY[0x22AAB1970](a3, a4);
    v14 = 0x656C746974627553;
    v15 = 0xEA0000000000203ALL;
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v16 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v32 = 0x203A79646F42;
    v33 = 0xE600000000000000;
    result = MEMORY[0x22AAB1970](a5, a6);
    v16 = 0x203A79646F42;
    v17 = 0xE600000000000000;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v18 = 0;
  v30 = v11;
  v31[0] = v12;
  v31[1] = v14;
  v31[2] = v15;
  v31[3] = v16;
  v31[4] = v17;
  v19 = MEMORY[0x277D84F90];
LABEL_17:
  if (v18 <= 3)
  {
    v20 = 3;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 + 1;
  v22 = &v31[2 * v18];
  while (1)
  {
    if (v18 == 3)
    {
      swift_arrayDestroy();
      v32 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      sub_228059C14();
      v29 = sub_22813925C();

      return v29;
    }

    if (v21 == ++v18)
    {
      break;
    }

    v24 = *(v22 - 1);
    v23 = *v22;
    v22 += 2;
    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v32 = v19;
      if ((result & 1) == 0)
      {
        result = sub_228043AD4(0, *(v19 + 16) + 1, 1);
        v19 = v32;
      }

      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_228043AD4((v26 > 1), v27 + 1, 1);
        v19 = v32;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v23;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SKUserNotification(uint64_t a1)
{
  result = qword_2813C72F0;
  if (!qword_2813C72F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280A0410(uint64_t a1)
{
  result = sub_228138B8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SKNoteMessage(uint64_t a1)
{
  result = qword_2813C7A10;
  if (!qword_2813C7A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280A04F0(uint64_t a1)
{
  result = sub_2281389DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2280A055C(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2280A057C, 0, 0);
}

uint64_t sub_2280A057C()
{
  v23 = v0;
  v1 = v0[10];
  v2 = sub_2281389CC();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = sub_2281389AC();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = *(v1 + 208);
  v10 = sub_2280A7954(v6, v8, v1 + 160, v9);
  v12 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  *(inited + 48) = v10;
  *(inited + 56) = v12;

  sub_2280A8554(inited, (v1 + 160));
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_22813988C();

  v21[0] = 0x203A656C746954;
  v21[1] = 0xE700000000000000;
  MEMORY[0x22AAB1970](v4, v5);
  MEMORY[0x22AAB1970](0x747865746E6F430ALL, 0xEA0000000000203ALL);
  MEMORY[0x22AAB1970](v10, v12);
  v0[12] = 0xE700000000000000;
  if (v9)
  {
    v14 = sub_22813936C();

    KeyPath = swift_getKeyPath("\b%nU", v21[0]);
    os_unfair_lock_lock((v9 + 16));
    v16 = MEMORY[0x277D84A28];
    v22 = MEMORY[0x277D84A28];
    v21[0] = v14;

    sub_2280449E4(v21, KeyPath, (v9 + 24));
    os_unfair_lock_unlock((v9 + 16));

    v17 = sub_22813936C();

    v18 = swift_getKeyPath(byte_22813F580, v21[0]);
    os_unfair_lock_lock((v9 + 16));
    v22 = v16;
    v21[0] = v17;

    sub_2280449E4(v21, v18, (v9 + 24));
    os_unfair_lock_unlock((v9 + 16));
  }

  else
  {
  }

  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_2280A08E8;

  return sub_2280D89D0(0x203A656C746954, 0xE700000000000000, v1 + 160, 0);
}

uint64_t sub_2280A08E8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = sub_2280A0A84;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v7 = sub_2280A0A1C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280A0A1C()
{

  v1 = v0[1];
  v3 = v0[15];
  v2 = v0[16];

  return v1(v2, v3);
}

uint64_t sub_2280A0A84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280A0AE8()
{
  v0 = sub_2281389CC();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = sub_2281389AC();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v9 = sub_228045C38();
  swift_setDeallocating();
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_2280A0BB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280A0C48;

  return sub_2280A055C(a1);
}

uint64_t sub_2280A0C48(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_2280A0D80@<X0>(os_unfair_lock_s **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath(byte_22813F580);
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2D08((v3 + 24), KeyPath);
  v7 = v6;
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  return result;
}

double RequestInfo.sessionInfo.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v3, a1);
  sub_2280A138C(v8, a1, a2, v13);
  a3[3] = &type metadata for AnySessionInfo;
  a3[4] = &off_283B5E2B0;
  v10 = swift_allocObject();
  *a3 = v10;
  v11 = v13[1];
  v10[1] = v13[0];
  v10[2] = v11;
  v10[3] = v14[0];
  result = *(v14 + 12);
  *(v10 + 60) = *(v14 + 12);
  return result;
}

uint64_t sub_2280A0F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a2 + 8) + 8))(a1);
  v4 = sub_22813941C();

  return v4 & 1;
}

uint64_t sub_2280A1008(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = *(a1 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2280A0F84(v8, v11, 0x6966697373616C63, 0xEF2E6E6F69746163))
  {
    return 0;
  }

  if ((sub_2280A0F84(a1, a2, 0x7A6972616D6D7573, 0xEE002E6E6F697461) & 1) == 0)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v15 = sub_22813882C();
    __swift_project_value_buffer(v15, qword_2813C89F0);
    (*(v7 + 16))(v10, v3, a1);
    v16 = sub_22813880C();
    v17 = sub_2281396DC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      v20 = (*(*(a2 + 8) + 8))(a1);
      v22 = v21;
      (*(v7 + 8))(v10, a1);
      v23 = sub_227FCC340(v20, v22, &v25);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_227FC3000, v16, v17, "Use case identifier %s has an unrecognized prefix", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AAB28A0](v19, -1, -1);
      MEMORY[0x22AAB28A0](v18, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, a1);
    }

    return 0;
  }

  v13 = (*(*(a2 + 8) + 8))(a1);
  v14 = a3(v13);

  return v14 & 1;
}

uint64_t sub_2280A12EC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2280A131C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2280A1354()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_2280A138C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 32))(v9);
  v10 = *(a3 + 8);
  v11 = v10[1](a2, v10);
  v22 = v12;
  v23 = v11;
  v13 = v10[2](a2, v10);
  v15 = v14;
  v16 = v10[3](a2, v10);
  v17 = v10[4](a2, v10);
  v19 = v18;
  LODWORD(v10) = v10[5](a2, v10);
  result = (*(v7 + 8))(v9, a2);
  v21 = v22;
  *a4 = v23;
  *(a4 + 8) = v21;
  *(a4 + 16) = v13;
  *(a4 + 24) = v15;
  *(a4 + 32) = v16;
  *(a4 + 40) = v17;
  *(a4 + 48) = v19;
  *(a4 + 56) = v10;
  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2280A1588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
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

uint64_t sub_2280A15D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 60) = 1;
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

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL SKText.isEligibleForSummarization.getter()
{
  v1 = *v0;
  v2 = v0[1];

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (qword_2813C76F0 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:

  v3 = sub_22808E410(0xD00000000000001BLL, 0x8000000228143340);

  return sub_2280AA14C(0, 0, v3, v1, v2) >= v3;
}

uint64_t SKText.preprocess(sharedSessionData:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v2[29] = a1;
  v2[30] = v3;
  v2[31] = v4;
  return MEMORY[0x2822009F8](sub_2280A17B4, 0, 0);
}

uint64_t sub_2280A17B4()
{
  if (SKText.isEligibleForSummarization.getter())
  {
    v1 = *(v0 + 232);
    v2 = sub_2280A7954(*(v0 + 240), *(v0 + 248), v1 + 160, *(v1 + 208));
    *(v0 + 256) = v3;
    v4 = v2;
    v5 = v3;
    v6 = swift_task_alloc();
    *(v0 + 264) = v6;
    *v6 = v0;
    v6[1] = sub_2280A19F8;

    return sub_2280D89D0(v4, v5, v1 + 160, 0);
  }

  else
  {
    v9 = *(v0 + 240);
    v8 = *(v0 + 248);
    sub_228045B14(*(v0 + 232), v0 + 16);
    v10 = swift_allocObject();
    v11 = *(v0 + 192);
    *(v10 + 176) = *(v0 + 176);
    *(v10 + 192) = v11;
    *(v10 + 208) = *(v0 + 208);
    v12 = *(v0 + 224);
    v13 = *(v0 + 128);
    *(v10 + 112) = *(v0 + 112);
    *(v10 + 128) = v13;
    v14 = *(v0 + 160);
    *(v10 + 144) = *(v0 + 144);
    *(v10 + 160) = v14;
    v15 = *(v0 + 64);
    *(v10 + 48) = *(v0 + 48);
    *(v10 + 64) = v15;
    v16 = *(v0 + 96);
    *(v10 + 80) = *(v0 + 80);
    *(v10 + 96) = v16;
    v17 = *(v0 + 32);
    *(v10 + 16) = *(v0 + 16);
    *(v10 + 32) = v17;
    *(v10 + 224) = v12;
    *(v10 + 232) = v9;
    *(v10 + 240) = v8;
    v18 = swift_allocObject();
    *(v18 + 16) = 3;
    *(v18 + 24) = sub_2280A237C;
    *(v18 + 32) = v10;

    v19 = sub_227FF96D4(0, 0xD000000000000078, 0x80000002281478B0, 25, sub_2280A2388, v18);
    sub_227FDB3CC();
    swift_allocError();
    *v20 = 3;
    *(v20 + 8) = v19;
    swift_willThrow();
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_2280A19F8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 272) = v2;

  if (v2)
  {
    v7 = sub_2280A1B94;
  }

  else
  {
    *(v6 + 280) = a2;
    *(v6 + 288) = a1;
    v7 = sub_2280A1B2C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280A1B2C()
{

  v1 = v0[1];
  v3 = v0[35];
  v2 = v0[36];

  return v1(v2, v3);
}

uint64_t sub_2280A1B94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280A1BF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (qword_2813C76F0 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
  v7 = a2[23];
  v8 = a2[24];
  __swift_project_boxed_opaque_existential_1(a2 + 20, v7);
  v9 = *(v8 + 8);
  v10 = *(v9 + 8);

  v11 = v10(v7, v9);
  v13 = sub_22808E410(v11, v12);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E870, &qword_22813C008);
  v24 = v14;
  v15 = sub_2280A2428();
  v25 = v15;
  v21 = 0xD00000000000001ELL;
  v22 = 0x8000000228146530;
  v23 = 3;
  sub_227FE77E0(&v21, v26);
  __swift_project_boxed_opaque_existential_1(&v21, v24);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v27 = DynamicType;
  v17 = MEMORY[0x277D83B88];
  v24 = MEMORY[0x277D83B88];
  v21 = v13;
  sub_228024ABC(&v21, v26);
  v18 = sub_2280AA14C(0, 0, 0x7FFFFFFFFFFFFFFFLL, a3, a4);
  v24 = v14;
  v25 = v15;
  v21 = 0xD00000000000001CLL;
  v22 = 0x8000000228146550;
  v23 = 3;
  sub_227FE77E0(&v21, v26);
  __swift_project_boxed_opaque_existential_1(&v21, v24);
  v19 = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v27 = v19;
  v24 = v17;
  v21 = v18;
  return sub_228024ABC(&v21, v26);
}

Swift::String __swiftcall SKText.preprocessForLanguageCheck()()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2280A1EE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280A2524;

  return SKText.preprocess(sharedSessionData:)(a1);
}

uint64_t sub_2280A1F78()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2280A1FA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2280A1FD0, 0, 0);
}

uint64_t sub_2280A1FD0()
{
  v15 = v0;
  if (*(v0 + 40))
  {
    v1 = *(*(v0 + 16) + 208);
    if (v1)
    {
      v2 = sub_22813936C();
      KeyPath = swift_getKeyPath(byte_22813F6D0);
      os_unfair_lock_lock((v1 + 16));
      v14 = MEMORY[0x277D84A28];
      v13[0] = v2;

      sub_2280449E4(v13, KeyPath, (v1 + 24));
      os_unfair_lock_unlock((v1 + 16));
    }

    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
  }

  else
  {
    v8 = *(v0 + 16);
    v9 = *(v8 + 208);
    v4 = sub_2280A7954(*(v0 + 24), *(v0 + 32), v8 + 160, v9);
    v5 = v10;
    if (v9)
    {
      v11 = sub_22813936C();
      v12 = swift_getKeyPath(byte_22813F6D0);
      os_unfair_lock_lock((v9 + 16));
      v14 = MEMORY[0x277D84A28];
      v13[0] = v11;

      sub_2280449E4(v13, v12, (v9 + 24));
      os_unfair_lock_unlock((v9 + 16));
    }
  }

  v6 = *(v0 + 8);

  return v6(v4, v5);
}

uint64_t sub_2280A218C(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2280A223C;

  return sub_2280A1FA8(a1, v4, v5, v6);
}

uint64_t sub_2280A223C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_2280A234C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2280A2394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2280A23DC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2280A2428()
{
  result = qword_27D81E878;
  if (!qword_27D81E878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81E870, &qword_22813C008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E878);
  }

  return result;
}

uint64_t sub_2280A248C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2280A24D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2280A2528(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  v3 = sub_2281377CC();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_22813905C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_2281373DC();
  v2[14] = swift_task_alloc();
  v5 = sub_2281377FC();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for ModelBundleIdentifier(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  sub_22813759C();
  v2[24] = swift_task_alloc();
  v6 = sub_22813791C();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280A27F4, 0, 0);
}

uint64_t sub_2280A27F4(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[25];
  v4 = v1[26];
  v5 = v1[5];
  sub_22813758C();
  sub_2281378CC();
  v6 = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_generativeModelSessionConfiguration;
  v1[29] = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_generativeModelSessionConfiguration;
  (*(v4 + 32))(v5 + v6, v2, v3);
  if (qword_2813C7030 != -1)
  {
    swift_once();
  }

  v8 = v1[26];
  v7 = v1[27];
  v9 = v1[25];
  v11 = v1[22];
  v10 = v1[23];
  v48 = v1[21];
  v12 = v1[4];
  v13 = __swift_project_value_buffer(v1[19], qword_2813C8AF0);
  sub_227FC8614(v13, v10);
  v50 = sub_22813755C();
  v1[30] = v50;
  sub_227FC8614(v10, v11);
  v52 = v5;
  v51 = v6;
  v47 = *(v8 + 16);
  v47(v7, v5 + v6, v9);
  v14 = v12[3];
  v15 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v14);
  v16 = (*(v15 + 8))(v14, v15);
  v18 = v17;
  v19 = v12[3];
  v20 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v19);
  (*(v20 + 24))(v19, v20);
  sub_227FC8614(v11, v48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = v1[26];
  if (EnumCaseMultiPayload >= 2)
  {
    v27 = v1[17];
    v26 = v1[18];
    v28 = v1[16];
    v49 = v1[15];
    sub_2281378EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E338, &qword_22813F770);
    sub_2281375BC();
    *(swift_allocObject() + 16) = xmmword_22813A4B0;
    sub_2281380CC();
    sub_2281380BC();
    sub_22813809C();

    sub_22813758C();
    sub_2281377EC();
    (*(v28 + 16))(v27, v26, v49);
    v23 = v50;
    v29 = sub_22813752C();
    (*(v28 + 8))(v26, v49);
    v25 = (v22 + 8);
  }

  else
  {
    v23 = v50;
    v24 = v1[14];
    sub_227FC8720(v1[21]);
    sub_2280F94B0(v16, v18, v24);
    v25 = (v22 + 8);
    v47(v1[28], v1[27], v1[25]);
    v29 = sub_22813753C();
  }

  v1[31] = v29;
  v30 = v1[27];
  v31 = v1[25];
  v33 = v1[22];
  v32 = v1[23];
  v34 = v1[4];
  v35 = v1[5];
  v36 = *v25;
  v1[32] = *v25;
  v36(v30, v31);
  sub_227FC8720(v33);
  v37 = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_modelBundleIdentifier;
  v1[33] = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_modelBundleIdentifier;
  sub_227FC8614(v32, v35 + v37);
  v38 = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_sessionInfo;
  v1[34] = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_sessionInfo;
  sub_2280A62DC(v34, v35 + v38);
  v39 = (v35 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_promptRunner);
  v40 = type metadata accessor for PromptManager(0);
  v39[3] = v40;
  v39[4] = &off_2818510E0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  sub_227FC8614(v32, boxed_opaque_existential_1 + *(v40 + 20));
  v47(boxed_opaque_existential_1 + *(v40 + 24), v52 + v51, v31);
  *boxed_opaque_existential_1 = v29;
  v42 = (v35 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model);
  v42[3] = v23;
  v42[4] = &off_283B5EC90;
  *v42 = v29;
  swift_retain_n();
  v43 = swift_task_alloc();
  *(v43 + 16) = 0x746E65677255;
  *(v43 + 24) = 0xE600000000000000;
  sub_22813906C();

  v1[2] = v29;
  v44 = swift_task_alloc();
  v1[35] = v44;
  v45 = sub_2280A635C();
  v1[36] = v45;
  *v44 = v1;
  v44[1] = sub_2280A2F14;

  return MEMORY[0x282165AB8](v1 + 2, v23, v45);
}

uint64_t sub_2280A2F14(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v4 = sub_2280A3278;
  }

  else
  {
    v4 = sub_2280A3028;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2280A3028()
{
  v1 = v0[31];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = *(v4 + 8);
  v0[39] = v5;
  v0[40] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  v6 = swift_task_alloc();
  *(v6 + 16) = 7630670;
  *(v6 + 24) = 0xE300000000000000;
  sub_22813906C();

  v0[3] = v1;
  v7 = swift_task_alloc();
  v0[41] = v7;
  *v7 = v0;
  v7[1] = sub_2280A3150;
  v8 = v0[36];
  v9 = v0[30];

  return MEMORY[0x282165AB8](v0 + 3, v9, v8);
}

uint64_t sub_2280A3150(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v5 = sub_2280A37D0;
  }

  else
  {
    *(v4 + 344) = a1;
    v5 = sub_2280A3454;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280A3278()
{
  (*(v0[11] + 8))(v0[13], v0[10]);
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[23];
  v7 = v0[5];

  sub_227FC8720(v6);
  sub_227FC8720(v7 + v2);
  __swift_destroy_boxed_opaque_existential_1Tm_8((v7 + v1));
  v3(v7 + v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm_8((v7 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model));
  __swift_destroy_boxed_opaque_existential_1Tm_8((v7 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_promptRunner));
  v8 = v0[4];
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_1Tm_8(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2280A3454()
{
  v24 = v1;
  v2 = *(v1 + 344);
  v3 = *(v1 + 296);
  (*(v1 + 312))(*(v1 + 96), *(v1 + 80));
  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v1 + 184);
    v7 = *(v1 + 160);
    *(*(v1 + 40) + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_maximumOutputTokens) = v5;
    sub_227FC8614(v6, v7);
    v2 = objc_opt_self();
    v0 = off_2785F1000;

    if (qword_2813C4620 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v22 = v5;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v8 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v8 = &qword_2813C76F8;
  }

  v9 = *(*v8 + 1352);
  v10 = *(*v8 + 1360);
  v11 = *(*v8 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v10(&v23, v11);

    v12 = v23;
  }

  else
  {

    v12 = v9;
  }

  v13 = *(v1 + 184);
  v15 = *(v1 + 64);
  v14 = *(v1 + 72);
  v16 = *(v1 + 56);
  v17 = *(v1 + 32);
  v18 = *(v1 + 40);
  sub_2280F8BF4(*(v1 + 160), v22, 0, v12, 0, v14);

  sub_227FC8720(v13);
  (*(v15 + 32))(v18 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_samplingParameters, v14, v16);
  __swift_destroy_boxed_opaque_existential_1Tm_8(v17);

  v19 = *(v1 + 8);
  v20 = *(v1 + 40);

  return v19(v20);
}

uint64_t sub_2280A37D0()
{
  (*(v0 + 312))(*(v0 + 96), *(v0 + 80));
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = *(v0 + 40);

  sub_227FC8720(v6);
  sub_227FC8720(v7 + v2);
  __swift_destroy_boxed_opaque_existential_1Tm_8((v7 + v1));
  v3(v7 + v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm_8((v7 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model));
  __swift_destroy_boxed_opaque_existential_1Tm_8((v7 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_promptRunner));
  v8 = *(v0 + 32);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_1Tm_8(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2280A39A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[45] = a8;
  v9[46] = v8;
  v9[43] = a6;
  v9[44] = a7;
  v9[41] = a4;
  v9[42] = a5;
  v9[39] = a2;
  v9[40] = a3;
  v9[38] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v9[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E308, &unk_22813F910);
  v9[48] = swift_task_alloc();
  v10 = sub_2281378AC();
  v9[49] = v10;
  v9[50] = *(v10 - 8);
  v9[51] = swift_task_alloc();
  v9[52] = swift_task_alloc();
  v9[53] = swift_task_alloc();
  v11 = sub_22813771C();
  v9[54] = v11;
  v9[55] = *(v11 - 8);
  v9[56] = swift_task_alloc();
  v9[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E310, &qword_22813A7C0);
  v9[58] = swift_task_alloc();
  v9[59] = swift_task_alloc();
  v12 = sub_22813882C();
  v9[60] = v12;
  v9[61] = *(v12 - 8);
  v9[62] = swift_task_alloc();
  v9[63] = swift_task_alloc();
  v9[64] = swift_task_alloc();
  v13 = sub_2281377CC();
  v9[65] = v13;
  v9[66] = *(v13 - 8);
  v9[67] = swift_task_alloc();
  v9[68] = swift_task_alloc();
  v9[69] = swift_task_alloc();
  v9[70] = swift_task_alloc();
  v9[71] = swift_task_alloc();
  v9[72] = swift_task_alloc();
  v9[73] = swift_task_alloc();
  v14 = sub_22813783C();
  v9[74] = v14;
  v9[75] = *(v14 - 8);
  v9[76] = swift_task_alloc();
  v9[77] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280A3D28, 0, 0);
}

uint64_t sub_2280A3D28()
{
  if (sub_228060458(v0[43]))
  {
    v1 = v0[46];
    v2 = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_modelBundleIdentifier;
    v0[78] = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_modelBundleIdentifier;
    v3 = v1 + v2;
    if (qword_2813C73E8 != -1)
    {
      swift_once();
    }

    v4 = v0[43];
    v5 = off_2813C73F0;
    v0[79] = off_2813C73F0;
    v6 = v5[2];
    v7 = swift_task_alloc();
    v7[2] = v3;
    v7[3] = v4;
    v7[4] = v5;
    os_unfair_lock_lock((v6 + 24));
    sub_2280A61AC((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
    v13 = v0[73];
    v14 = v0[66];
    v15 = v0[65];
    v16 = v0[46];

    sub_2280A62DC(v16 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_promptRunner, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v17 = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_samplingParameters;
    v0[80] = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_samplingParameters;
    v18 = *(v14 + 16);
    v0[81] = v18;
    v0[82] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v13, v16 + v17, v15);
    v19 = sub_2280A5B84();
    v0[83] = v19;
    v20 = v19;
    v21 = swift_task_alloc();
    v0[84] = v21;
    *v21 = v0;
    v21[1] = sub_2280A4138;
    v22 = v0[77];
    v23 = v0[73];
    v24 = v0[44];
    v25 = v0[45];
    v26 = v0[43];
    v27 = v0[39];
    v28 = v0[40];

    return sub_228006258(v22, v27, v28, v23, v26, v24, v25, v20);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = 5;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    v9 = sub_227FF9AA4(0, 0xD000000000000096, 0x80000002281479B0, 62, sub_2280A61A0, v8);
    sub_227FE7384();
    swift_allocError();
    *v10 = 5;
    *(v10 + 8) = v9;
    swift_willThrow();

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_2280A4138()
{
  v2 = *v1;
  v2[85] = v0;

  v3 = v2[73];
  v4 = v2[66];
  v5 = v2[65];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);

    v9 = sub_2280A559C;
  }

  else
  {
    v2[86] = v7;
    v2[87] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v9 = sub_2280A42E8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2280A42E8()
{
  v213 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 16));
  v1 = objc_opt_self();

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

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v7 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v5(&v212, v6);

    if ((v212 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (!v4)
    {
LABEL_18:

      goto LABEL_19;
    }
  }

  v8 = *(v3 + 72);
  v9 = *(v3 + 80);
  v10 = *(v3 + 2208);

  if (v7)
  {
    v9(&v212, v10);

    if ((v212 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if ((v8 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(*(v0 + 480), qword_2813C8A08);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 480), qword_2813C4990);
  }

  v210 = v24;
  v25 = *(v0 + 648);
  v26 = *(v0 + 640);
  v203 = *(v0 + 608);
  logb = *(v0 + 616);
  v27 = *(v0 + 600);
  v28 = *(v0 + 576);
  v29 = *(v0 + 568);
  v188 = *(v0 + 560);
  v189 = *(v0 + 552);
  v191 = *(v0 + 544);
  v194 = *(v0 + 536);
  v30 = *(v0 + 520);
  v199 = *(v0 + 592);
  v31 = *(v0 + 368);
  v32 = *(v0 + 344);
  v187 = *(*(v0 + 488) + 16);
  v187();
  sub_2280A62DC(v32, v0 + 56);
  v25(v28, v31 + v26, v30);
  v25(v29, v31 + v26, v30);
  v25(v188, v31 + v26, v30);
  v25(v189, v31 + v26, v30);
  v25(v191, v31 + v26, v30);
  v25(v194, v31 + v26, v30);
  (*(v27 + 16))(v203, logb, v199);
  v33 = sub_22813880C();
  v34 = sub_2281396BC();
  if (os_log_type_enabled(v33, v34))
  {
    v204 = v34;
    v35 = swift_slowAlloc();
    v200 = swift_slowAlloc();
    v212 = v200;
    *v35 = 136448002;
    v36 = *(v0 + 80);
    v37 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v36);
    v38 = (*(v37 + 16))(v36, v37);
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 56));
    v41 = sub_227FCC340(v38, v40, &v212);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2082;
    v42 = sub_22813776C();
    v43 = *(v0 + 688);
    v44 = *(v0 + 576);
    v45 = *(v0 + 520);
    if (v46)
    {
      v43(*(v0 + 576), *(v0 + 520));
      v47 = 0xE300000000000000;
      v48 = 7104878;
    }

    else
    {
      *(v0 + 296) = v42;
      v59 = sub_2281392EC();
      v47 = v60;
      v43(v44, v45);
      v48 = v59;
    }

    v62 = *(v0 + 464);
    v61 = *(v0 + 472);
    v64 = *(v0 + 432);
    v63 = *(v0 + 440);
    v65 = sub_227FCC340(v48, v47, &v212);

    *(v35 + 14) = v65;
    *(v35 + 22) = 2082;
    sub_2281377BC();
    sub_2280A61CC(v61, v62);
    v66 = (*(v63 + 48))(v62, 1, v64);
    v67 = *(v0 + 464);
    log = v33;
    if (v66 == 1)
    {
      sub_2280A623C(v67, &qword_27D81E310, &qword_22813A7C0);
      v68 = 0xE300000000000000;
      v69 = 7104878;
    }

    else
    {
      v70 = *(v0 + 448);
      v71 = *(v0 + 456);
      v73 = *(v0 + 432);
      v72 = *(v0 + 440);
      (*(v72 + 32))(v71, v67, v73);
      (*(v72 + 16))(v70, v71, v73);
      v69 = sub_2281392EC();
      v68 = v74;
      (*(v72 + 8))(v71, v73);
    }

    v75 = *(v0 + 688);
    v76 = *(v0 + 568);
    v77 = *(v0 + 520);
    sub_2280A623C(*(v0 + 472), &qword_27D81E310, &qword_22813A7C0);
    v75(v76, v77);
    v78 = sub_227FCC340(v69, v68, &v212);

    *(v35 + 24) = v78;
    *(v35 + 32) = 2082;
    v79 = sub_22813774C();
    v80 = *(v0 + 688);
    v81 = *(v0 + 560);
    v82 = *(v0 + 520);
    if (v83)
    {
      v80(*(v0 + 560), *(v0 + 520));
      v84 = 0xE300000000000000;
      v85 = 7104878;
    }

    else
    {
      *(v0 + 288) = v79;
      v86 = sub_2281392EC();
      v84 = v87;
      v80(v81, v82);
      v85 = v86;
    }

    v88 = 7104878;
    v89 = sub_227FCC340(v85, v84, &v212);

    *(v35 + 34) = v89;
    *(v35 + 42) = 2082;
    v90 = sub_22813773C();
    v91 = *(v0 + 688);
    v92 = *(v0 + 552);
    v93 = *(v0 + 520);
    if (v94)
    {
      v91(*(v0 + 552), *(v0 + 520));
      v95 = 0xE300000000000000;
      v96 = 7104878;
    }

    else
    {
      *(v0 + 280) = v90;
      v97 = sub_2281392EC();
      v95 = v98;
      v91(v92, v93);
      v96 = v97;
    }

    v99 = sub_227FCC340(v96, v95, &v212);

    *(v35 + 44) = v99;
    *(v35 + 52) = 2082;
    v100 = sub_22813779C();
    v101 = *(v0 + 688);
    v102 = *(v0 + 544);
    v103 = *(v0 + 520);
    if (v104)
    {
      v101(*(v0 + 544), *(v0 + 520));
      v105 = 0xE300000000000000;
      v106 = 7104878;
    }

    else
    {
      *(v0 + 272) = v100;
      v107 = sub_2281392EC();
      v105 = v108;
      v101(v102, v103);
      v106 = v107;
    }

    v109 = sub_227FCC340(v106, v105, &v212);

    *(v35 + 54) = v109;
    *(v35 + 62) = 2082;
    v110 = sub_22813777C();
    v111 = *(v0 + 688);
    v112 = *(v0 + 536);
    v113 = *(v0 + 520);
    if (v114)
    {
      v111(*(v0 + 536), *(v0 + 520));
      v115 = 0xE300000000000000;
    }

    else
    {
      *(v0 + 264) = v110;
      v88 = sub_2281392EC();
      v115 = v116;
      v111(v112, v113);
    }

    v117 = *(v0 + 608);
    v118 = *(v0 + 600);
    v119 = *(v0 + 592);
    v120 = *(v0 + 512);
    v122 = *(v0 + 480);
    v121 = *(v0 + 488);
    v123 = sub_227FCC340(v88, v115, &v212);

    *(v35 + 64) = v123;
    *(v35 + 72) = 2080;
    *(v0 + 712) = sub_22813781C() & 1;
    v124 = sub_2281392EC();
    v126 = v125;
    (*(v118 + 8))(v117, v119);
    v127 = sub_227FCC340(v124, v126, &v212);

    *(v35 + 74) = v127;
    _os_log_impl(&dword_227FC3000, log, v204, "\n--------------------------------------------------------------------------------\n# Inference details for request %{public}s\n--------------------------------------------------------------------------------\n# Decoding Parameters\n--------------------------------------------------------------------------------\nmaximumTokens: %{public}s\nstrategy: %{public}s\ntemperature: %{public}s\nrandomSeed: %{public}s\ntimeout: %{public}s\npromptLookupDraftSteps: %{public}s\ndidFallbackToDefaultThresholds: %s\n--------------------------------------------------------------------------------", v35, 0x52u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v200, -1, -1);
    MEMORY[0x22AAB28A0](v35, -1, -1);

    v58 = *(v121 + 8);
    v58(v120, v122);
  }

  else
  {
    v49 = v33;
    v50 = *(v0 + 688);
    v51 = *(v0 + 608);
    v52 = *(v0 + 600);
    v53 = *(v0 + 592);
    v192 = *(v0 + 560);
    v195 = *(v0 + 568);
    v190 = *(v0 + 552);
    v54 = *(v0 + 544);
    v55 = *(v0 + 536);
    v56 = *(v0 + 520);
    v201 = *(v0 + 576);
    v205 = *(v0 + 512);
    v57 = *(v0 + 488);
    v197 = *(v0 + 480);

    (*(v52 + 8))(v51, v53);
    v50(v55, v56);
    v50(v54, v56);
    v50(v190, v56);
    v50(v192, v56);
    v50(v195, v56);
    v50(v201, v56);
    v58 = *(v57 + 8);
    v58(v205, v197);
    __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 56));
  }

  v129 = *(v0 + 392);
  v128 = *(v0 + 400);
  v130 = *(v0 + 384);
  sub_22813780C();
  if ((*(v128 + 48))(v130, 1, v129) == 1)
  {
    v131 = *(v0 + 344);
    sub_2280A623C(*(v0 + 384), &qword_27D81E308, &unk_22813F910);
    sub_2280A62DC(v131, v0 + 96);
    v132 = sub_22813880C();
    v133 = sub_2281396DC();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v212 = v135;
      *v134 = 136315138;
      v136 = *(v0 + 120);
      v137 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v136);
      v138 = (*(v137 + 16))(v136, v137);
      v140 = v139;
      __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 96));
      v141 = sub_227FCC340(v138, v140, &v212);

      *(v134 + 4) = v141;
      _os_log_impl(&dword_227FC3000, v132, v133, "Rendered prompt after prompt completion is nil for request %s.", v134, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_8(v135);
      MEMORY[0x22AAB28A0](v135, -1, -1);
      MEMORY[0x22AAB28A0](v134, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 96));
    }
  }

  else
  {
    (*(*(v0 + 400) + 32))(*(v0 + 424), *(v0 + 384), *(v0 + 392));
    if (qword_2813C49B8 != -1)
    {
      swift_once();
    }

    v142 = v210;
    if ((byte_2813C49C1 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v142 = __swift_project_value_buffer(*(v0 + 480), qword_2813C4990);
    }

    (v187)(*(v0 + 504), v142, *(v0 + 480));
    if (qword_2813C49B0 != -1)
    {
      swift_once();
    }

    v206 = v58;
    if (byte_27D81EEF2 == 1)
    {
      (*(*(v0 + 488) + 32))(*(v0 + 496), *(v0 + 504), *(v0 + 480));
    }

    else
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v144 = *(v0 + 496);
      v143 = *(v0 + 504);
      v145 = *(v0 + 480);
      v146 = __swift_project_value_buffer(v145, qword_2813C4990);
      (v187)(v144, v146, v145);
      v58(v143, v145);
    }

    v148 = *(v0 + 416);
    v147 = *(v0 + 424);
    v149 = *(v0 + 400);
    v150 = *(v0 + 408);
    v151 = *(v0 + 392);
    v152 = *(v0 + 344);
    sub_2280A62DC(v152, v0 + 136);
    v153 = *(v149 + 16);
    v153(v148, v147, v151);
    sub_2280A62DC(v152, v0 + 176);
    v153(v150, v147, v151);
    v154 = sub_22813880C();
    v155 = sub_2281396CC();
    v156 = os_log_type_enabled(v154, v155);
    v157 = *(v0 + 496);
    v211 = *(v0 + 488);
    v158 = *(v0 + 480);
    v160 = *(v0 + 416);
    v159 = *(v0 + 424);
    v161 = *(v0 + 400);
    loga = *(v0 + 408);
    v162 = *(v0 + 392);
    if (v156)
    {
      v163 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v212 = v196;
      *v163 = 136446979;
      v198 = v158;
      v202 = v157;
      v164 = *(v0 + 160);
      v165 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v164);
      v193 = v155;
      v166 = (*(v165 + 16))(v164, v165);
      v168 = v167;
      __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 136));
      v169 = sub_227FCC340(v166, v168, &v212);

      *(v163 + 4) = v169;
      *(v163 + 12) = 2081;
      sub_22813789C();
      v170 = MEMORY[0x22AAB1AD0]();
      v172 = v171;

      v173 = *(v161 + 8);
      v173(v160, v162);
      v174 = sub_227FCC340(v170, v172, &v212);

      *(v163 + 14) = v174;
      *(v163 + 22) = 2082;
      v175 = *(v0 + 200);
      v176 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v175);
      v177 = (*(v176 + 16))(v175, v176);
      v179 = v178;
      __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 176));
      v180 = sub_227FCC340(v177, v179, &v212);

      *(v163 + 24) = v180;
      *(v163 + 32) = 2081;
      *(v0 + 216) = sub_22813788C();
      *(v0 + 224) = v181;
      *(v0 + 232) = 10;
      *(v0 + 240) = 0xE100000000000000;
      *(v0 + 248) = 4091452;
      *(v0 + 256) = 0xE300000000000000;
      sub_227FDB420();
      v182 = sub_2281397BC();
      v184 = v183;

      v173(loga, v162);
      v185 = sub_227FCC340(v182, v184, &v212);

      *(v163 + 34) = v185;
      _os_log_impl(&dword_227FC3000, v154, v193, "\n--------------------------------------------------------------------------------\n# Rendered Prompt Token IDs for request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------\n# Approximate Rendered Prompt for request %{public}s\n# Note: Please reconstruct prompt from Token IDs above if you need the exact prompt\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------", v163, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v196, -1, -1);
      MEMORY[0x22AAB28A0](v163, -1, -1);

      (*(v211 + 8))(v202, v198);
      v173(v159, v162);
    }

    else
    {

      v186 = *(v161 + 8);
      v186(loga, v162);
      v186(v160, v162);
      v206(v157, v158);
      v186(v159, v162);
      __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 176));
      __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 136));
    }
  }

LABEL_19:
  v11 = sub_22813782C();
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_22808C964(7562585, 0xE300000000000000);
    if (v14)
    {
      LOBYTE(v12) = *(*(v11 + 56) + v13);
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  *(v0 + 713) = v12;
  v15 = *(v0 + 624);
  v17 = *(v0 + 368);
  v16 = *(v0 + 376);

  v18 = sub_2281376EC();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = swift_task_alloc();
  *(v0 + 704) = v19;
  *v19 = v0;
  v19[1] = sub_2280A5728;
  v20 = *(v0 + 376);
  v21 = *(v0 + 344);
  v22 = *(v0 + 304);

  return sub_228011668(v22, v17 + v15, v21, v20);
}

uint64_t sub_2280A559C()
{
  __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 16));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2280A5728()
{
  v1 = *(*v0 + 376);

  sub_2280A623C(v1, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_2280A5850, 0, 0);
}

uint64_t sub_2280A5850()
{
  v21 = v0;
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 480), qword_2813C8A08);

  v1 = sub_22813880C();
  v2 = sub_2281396BC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 713);
    v4 = *(v0 + 600);
    v18 = *(v0 + 592);
    v19 = *(v0 + 616);
    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446466;
    if (v3)
    {
      v9 = 7562585;
    }

    else
    {
      v9 = 28494;
    }

    if (v3)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    v11 = sub_227FCC340(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_227FCC340(v6, v5, &v20);
    _os_log_impl(&dword_227FC3000, v1, v2, "Inference model output: %{public}s for ID: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);

    (*(v4 + 8))(v19, v18);
  }

  else
  {
    v12 = *(v0 + 616);
    v13 = *(v0 + 600);
    v14 = *(v0 + 592);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);
  v16 = *(v0 + 713);

  return v15(v16);
}

unint64_t sub_2280A5B84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E318, &qword_22813A7C8);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v32 - v2;
  v3 = sub_2281375BC();
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2281373DC();
  v32 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_sessionInfo + 24);
  v14 = *(v0 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_sessionInfo + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_sessionInfo), v13);
  v15 = (*(v14 + 8))(v13, v14);
  v17 = v16;
  v18 = v36;
  sub_2280F94B0(v15, v16, v12);
  if (v18)
  {
  }

  else
  {

    v19 = v32;
    (*(v32 + 16))(v10, v12, v7);
    v20 = v33;
    sub_2281375AC();
    v21 = v34;
    if ((*(v35 + 48))(v20, 1, v34) == 1)
    {
      sub_2280A623C(v20, &qword_27D81E318, &qword_22813A7C8);
      if (qword_2813C49D8 != -1)
      {
        swift_once();
      }

      v22 = sub_22813882C();
      __swift_project_value_buffer(v22, qword_2813C8A08);
      v23 = sub_22813880C();
      v24 = sub_2281396DC();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_227FC3000, v23, v24, "Urgency classifier model bundle not found", v25, 2u);
        MEMORY[0x22AAB28A0](v25, -1, -1);
      }

      v26 = swift_allocObject();
      *(v26 + 16) = 8;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0;
      v17 = sub_227FF9AA4(0, 0xD000000000000096, 0x80000002281479B0, 101, sub_2280A63CC, v26);
      sub_227FE7384();
      swift_allocError();
      *v27 = 8;
      *(v27 + 8) = v17;
      swift_willThrow();
      (*(v19 + 8))(v12, v7);
    }

    else
    {
      v36 = v7;
      v29 = v35 + 32;
      v28 = *(v35 + 32);
      v28(v6, v20, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E338, &qword_22813F770);
      v30 = (*(v29 + 48) + 32) & ~*(v29 + 48);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_22813A4B0;
      v28((v17 + v30), v6, v21);
      (*(v19 + 8))(v12, v36);
    }
  }

  return v17;
}

uint64_t type metadata accessor for GMSClassificationModelEngine(uint64_t a1)
{
  result = qword_2813C6460;
  if (!qword_2813C6460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280A6068(uint64_t a1)
{
  result = type metadata accessor for ModelBundleIdentifier(319);
  if (v2 <= 0x3F)
  {
    result = sub_22813791C();
    if (v3 <= 0x3F)
    {
      result = sub_2281377CC();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_2280A61CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E310, &qword_22813A7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280A623C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm_8()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280A62DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2280A635C()
{
  result = qword_2813C8710;
  if (!qword_2813C8710)
  {
    sub_22813755C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8710);
  }

  return result;
}

uint64_t sub_2280A63D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E870, &qword_22813C008);
  v15 = v5;
  v6 = sub_2280A2428();
  v16 = v6;
  v12 = 0xD00000000000001ELL;
  v13 = 0x8000000228146530;
  v14 = 3;
  sub_2280A9560(&v12, v17);
  __swift_project_boxed_opaque_existential_1(&v12, v15);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm_9(&v12);
  v18 = DynamicType;
  v8 = MEMORY[0x277D83B88];
  v15 = MEMORY[0x277D83B88];
  v12 = a2;
  sub_228024ABC(&v12, v17);
  v9 = sub_2280AB23C(a3, 0, 0x7FFFFFFFFFFFFFFFLL);
  v15 = v5;
  v16 = v6;
  v12 = 0xD00000000000001CLL;
  v13 = 0x8000000228146550;
  v14 = 3;
  sub_2280A9560(&v12, v17);
  __swift_project_boxed_opaque_existential_1(&v12, v15);
  v10 = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm_9(&v12);
  v18 = v10;
  v15 = v8;
  v12 = v9;
  return sub_228024ABC(&v12, v17);
}

unint64_t sub_2280A6538(void *a1)
{
  sub_22813988C();

  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  MEMORY[0x22AAB1970](v4);

  MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228146590);
  return 0xD000000000000014;
}

void sub_2280A660C(unsigned __int8 a1, os_unfair_lock_s *a2)
{
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v4 = sub_22813882C();
  __swift_project_value_buffer(v4, qword_2813C8A20);
  v5 = sub_22813880C();
  v6 = sub_2281396BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    v9 = 0xEC00000064656361;
    v10 = 0x6C706572204C5255;
    *v7 = 136446210;
    if (a1 != 3)
    {
      v10 = 0xD00000000000001ELL;
      v9 = 0x8000000228147B00;
    }

    if (a1 == 2)
    {
      v10 = 0xD00000000000001ALL;
      v9 = 0x8000000228147B20;
    }

    v11 = 0x8000000228147B60;
    v12 = 0xD000000000000019;
    if (a1)
    {
      v12 = 0xD000000000000015;
      v11 = 0x8000000228147B40;
    }

    if (a1 <= 1u)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    if (a1 <= 1u)
    {
      v14 = v11;
    }

    else
    {
      v14 = v9;
    }

    v15 = sub_227FCC340(v13, v14, v18);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_227FC3000, v5, v6, "Original input was modified during sanitization: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_9(v8);
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      return;
    }

    goto LABEL_23;
  }

  if (a1 == 2)
  {
LABEL_23:
    if (!a2)
    {
      return;
    }

    KeyPath = swift_getKeyPath(byte_22813F7A8, v18[0]);
    goto LABEL_25;
  }

  if (a1 != 3 || !a2)
  {
    return;
  }

  KeyPath = swift_getKeyPath(byte_22813F780, v18[0]);
LABEL_25:
  v17 = KeyPath;
  os_unfair_lock_lock(a2 + 4);
  v18[3] = MEMORY[0x277D839B0];
  LOBYTE(v18[0]) = 1;

  sub_2280449FC(v18, v17, &a2[6]);
  os_unfair_lock_unlock(a2 + 4);
}

uint64_t sub_2280A68B4(uint64_t a1, char *a2, os_unfair_lock_s *a3)
{
  v4 = v3;
  v71 = a3;
  v82 = a1;
  v83 = a2;
  v87[3] = *MEMORY[0x277D85DE8];
  v5 = sub_22813882C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v81 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v70 - v9;
  v11 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C8178 != -1)
  {
LABEL_37:
    swift_once();
  }

  sub_228139B6C();
  v15 = *(v87[0] + 2);

  if (v15)
  {
    v74 = v10;
    v16 = qword_2813C8078;
    swift_beginAccess();
    v17 = *(v15 + v16);
    v18 = *(v17 + 16);
    v72 = v15;
    if (v18 && (v19 = sub_22808CF24(0, 1), (v20 & 1) != 0))
    {
      v21 = *(*(v17 + 56) + 8 * v19);
      swift_endAccess();
      v22 = *(v21 + 16);
      if (v22)
      {
        v80 = v5;
        v5 = v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v78 = (v6 + 16);
        v70 = (v6 + 8);
        v10 = v83;

        v6 = 0;
        v86 = v82;
        v79 = v21;
        v76 = v22;
        v77 = v12;
        v75 = v5;
        while (1)
        {
          if (v6 >= *(v21 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          sub_227FFE9B0(v5 + *(v12 + 72) * v6, v14);
          v23 = *(v14 + 4);
          if (v14[48] > 1u)
          {
            if (v14[48] != 2)
            {
              goto LABEL_8;
            }

            v73 = *(v14 + 5);
            v84 = v4;
            v85 = v10;
            v43 = qword_2813C49A8;

            if (v43 != -1)
            {
              swift_once();
            }

            v44 = v80;
            v45 = __swift_project_value_buffer(v80, qword_2813C89F0);
            v46 = v74;
            (*v78)(v74, v45, v44);
            v47 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v48 = sub_22813927C();

            v87[0] = 0;
            v38 = [v47 initWithPattern:v48 options:0 error:v87];

            if (!v38)
            {
              v61 = v87[0];
              v62 = sub_228136E2C();

              swift_willThrow();
              v63 = v62;
              v64 = sub_22813880C();
              v65 = sub_2281396EC();

              if (os_log_type_enabled(v64, v65))
              {
                v66 = swift_slowAlloc();
                v67 = swift_slowAlloc();
                *v66 = 138412290;
                v68 = v62;
                v69 = _swift_stdlib_bridgeErrorToNSError();
                *(v66 + 4) = v69;
                *v67 = v69;
                _os_log_impl(&dword_227FC3000, v64, v65, "Error compiling regular expression: %@", v66, 0xCu);
                sub_227FE60F8(v67);
                MEMORY[0x22AAB28A0](v67, -1, -1);
                MEMORY[0x22AAB28A0](v66, -1, -1);
              }

              swift_willThrow();
              (*v70)(v74, v80);
              goto LABEL_35;
            }

            v49 = *v70;
            v50 = v87[0];
            v51 = (v49)(v46, v44);
            MEMORY[0x28223BE20](v51);
            v53 = v85;
            v52 = v86;
            *(&v70 - 6) = v38;
            *(&v70 - 5) = v52;
            *(&v70 - 4) = v53;
            *(&v70 - 3) = v23;
            *(&v70 - 2) = v73;
            v86 = sub_2280E5DB8(v38, 0, sub_2280A972C, (&v70 - 8), v52, v53);
            v10 = v54;
            v4 = v84;
          }

          else
          {
            if (!v14[48])
            {
              goto LABEL_8;
            }

            v84 = v4;
            v85 = v10;
            v24 = *(v14 + 2);
            v25 = *(v14 + 3);
            v26 = objc_opt_self();
            v27 = sub_22813927C();
            v28 = [v26 escapedTemplateForString_];

            v29 = sub_2281392AC();
            v31 = v30;

            sub_2280A8C78();
            v32 = qword_2813C49A8;

            if (v32 != -1)
            {
              swift_once();
            }

            v33 = v80;
            v34 = __swift_project_value_buffer(v80, qword_2813C89F0);
            v35 = v81;
            (*v78)(v81, v34, v33);
            v36 = v84;
            v37 = sub_227FE5EB0(v24, v25, 0, v35);
            v4 = v36;
            if (v36)
            {

LABEL_35:
              v56 = v79;

              sub_2280A95C4(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);

              return v56;
            }

            v38 = v37;
            v39 = MEMORY[0x28223BE20](v37);
            v41 = v85;
            v40 = v86;
            *(&v70 - 6) = v39;
            *(&v70 - 5) = v40;
            *(&v70 - 4) = v41;
            *(&v70 - 3) = v29;
            *(&v70 - 2) = v31;
            v86 = sub_2280E5DB8(v39, 0, sub_2280A9728, (&v70 - 8), v40, v41);
            v10 = v42;
          }

          v21 = v79;

          v22 = v76;
          v12 = v77;
          v5 = v75;
LABEL_8:
          ++v6;
          sub_2280A95C4(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
          if (v22 == v6)
          {

            v55 = v83;
            v56 = v86;
            if (v86 == v82)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }
        }
      }
    }

    else
    {
      swift_endAccess();
    }

    v55 = v83;

    v56 = v82;
    v10 = v55;
LABEL_23:
    if (v10 != v55)
    {
LABEL_24:
      if ((sub_2281399BC() & 1) == 0)
      {
        sub_2280A660C(1u, v71);
      }
    }
  }

  else
  {
    v57 = swift_allocObject();
    v56 = 20;
    *(v57 + 16) = 20;
    *(v57 + 24) = 0;
    *(v57 + 32) = 0;
    v58 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228147A80, 138, sub_2280A9710, v57);
    sub_227FDB3CC();
    swift_allocError();
    *v59 = 20;
    *(v59 + 8) = v58;
    swift_willThrow();
  }

  return v56;
}

uint64_t sub_2280A7104(uint64_t a1, char *a2, os_unfair_lock_s *a3)
{
  v4 = v3;
  v71 = a3;
  v82 = a1;
  v83 = a2;
  v87[3] = *MEMORY[0x277D85DE8];
  v5 = sub_22813882C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v81 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v70 - v9;
  v11 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C8178 != -1)
  {
LABEL_37:
    swift_once();
  }

  sub_228139B6C();
  v15 = *(v87[0] + 2);

  if (v15)
  {
    v74 = v10;
    v16 = qword_2813C8078;
    swift_beginAccess();
    v17 = *(v15 + v16);
    v18 = *(v17 + 16);
    v72 = v15;
    if (v18 && (v19 = sub_22808CF24(1, 1), (v20 & 1) != 0))
    {
      v21 = *(*(v17 + 56) + 8 * v19);
      swift_endAccess();
      v22 = *(v21 + 16);
      if (v22)
      {
        v80 = v5;
        v5 = v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v78 = (v6 + 16);
        v70 = (v6 + 8);
        v10 = v83;

        v6 = 0;
        v86 = v82;
        v79 = v21;
        v76 = v22;
        v77 = v12;
        v75 = v5;
        while (1)
        {
          if (v6 >= *(v21 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          sub_227FFE9B0(v5 + *(v12 + 72) * v6, v14);
          v23 = *(v14 + 4);
          if (v14[48] > 1u)
          {
            if (v14[48] != 2)
            {
              goto LABEL_8;
            }

            v73 = *(v14 + 5);
            v84 = v4;
            v85 = v10;
            v43 = qword_2813C49A8;

            if (v43 != -1)
            {
              swift_once();
            }

            v44 = v80;
            v45 = __swift_project_value_buffer(v80, qword_2813C89F0);
            v46 = v74;
            (*v78)(v74, v45, v44);
            v47 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v48 = sub_22813927C();

            v87[0] = 0;
            v38 = [v47 initWithPattern:v48 options:0 error:v87];

            if (!v38)
            {
              v61 = v87[0];
              v62 = sub_228136E2C();

              swift_willThrow();
              v63 = v62;
              v64 = sub_22813880C();
              v65 = sub_2281396EC();

              if (os_log_type_enabled(v64, v65))
              {
                v66 = swift_slowAlloc();
                v67 = swift_slowAlloc();
                *v66 = 138412290;
                v68 = v62;
                v69 = _swift_stdlib_bridgeErrorToNSError();
                *(v66 + 4) = v69;
                *v67 = v69;
                _os_log_impl(&dword_227FC3000, v64, v65, "Error compiling regular expression: %@", v66, 0xCu);
                sub_227FE60F8(v67);
                MEMORY[0x22AAB28A0](v67, -1, -1);
                MEMORY[0x22AAB28A0](v66, -1, -1);
              }

              swift_willThrow();
              (*v70)(v74, v80);
              goto LABEL_35;
            }

            v49 = *v70;
            v50 = v87[0];
            v51 = (v49)(v46, v44);
            MEMORY[0x28223BE20](v51);
            v53 = v85;
            v52 = v86;
            *(&v70 - 6) = v38;
            *(&v70 - 5) = v52;
            *(&v70 - 4) = v53;
            *(&v70 - 3) = v23;
            *(&v70 - 2) = v73;
            v86 = sub_2280E5DB8(v38, 0, sub_2280A9724, (&v70 - 8), v52, v53);
            v10 = v54;
            v4 = v84;
          }

          else
          {
            if (!v14[48])
            {
              goto LABEL_8;
            }

            v84 = v4;
            v85 = v10;
            v24 = *(v14 + 2);
            v25 = *(v14 + 3);
            v26 = objc_opt_self();
            v27 = sub_22813927C();
            v28 = [v26 escapedTemplateForString_];

            v29 = sub_2281392AC();
            v31 = v30;

            sub_2280A8C78();
            v32 = qword_2813C49A8;

            if (v32 != -1)
            {
              swift_once();
            }

            v33 = v80;
            v34 = __swift_project_value_buffer(v80, qword_2813C89F0);
            v35 = v81;
            (*v78)(v81, v34, v33);
            v36 = v84;
            v37 = sub_227FE5EB0(v24, v25, 0, v35);
            v4 = v36;
            if (v36)
            {

LABEL_35:
              v56 = v79;

              sub_2280A95C4(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);

              return v56;
            }

            v38 = v37;
            v39 = MEMORY[0x28223BE20](v37);
            v41 = v85;
            v40 = v86;
            *(&v70 - 6) = v39;
            *(&v70 - 5) = v40;
            *(&v70 - 4) = v41;
            *(&v70 - 3) = v29;
            *(&v70 - 2) = v31;
            v86 = sub_2280E5DB8(v39, 0, sub_2280A9720, (&v70 - 8), v40, v41);
            v10 = v42;
          }

          v21 = v79;

          v22 = v76;
          v12 = v77;
          v5 = v75;
LABEL_8:
          ++v6;
          sub_2280A95C4(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
          if (v22 == v6)
          {

            v55 = v83;
            v56 = v86;
            if (v86 == v82)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }
        }
      }
    }

    else
    {
      swift_endAccess();
    }

    v55 = v83;

    v56 = v82;
    v10 = v55;
LABEL_23:
    if (v10 != v55)
    {
LABEL_24:
      if ((sub_2281399BC() & 1) == 0)
      {
        sub_2280A660C(3u, v71);
      }
    }
  }

  else
  {
    v57 = swift_allocObject();
    v56 = 20;
    *(v57 + 16) = 20;
    *(v57 + 24) = 0;
    *(v57 + 32) = 0;
    v58 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228147A80, 122, sub_2280A970C, v57);
    sub_227FDB3CC();
    swift_allocError();
    *v59 = 20;
    *(v59 + 8) = v58;
    swift_willThrow();
  }

  return v56;
}

uint64_t sub_2280A7954(char *a1, char *a2, uint64_t a3, os_unfair_lock_s *a4)
{
  v83 = a4;
  v88 = a1;
  v6 = type metadata accessor for SignpostToken(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v76 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v77 = &v74 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v74 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v74 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v74 - v17;
  if (qword_2813C4908 != -1)
  {
    swift_once();
  }

  v80 = v13;
  v19 = type metadata accessor for Signpost(0);
  v20 = __swift_project_value_buffer(v19, qword_2813C8870);
  sub_2280A9560(a3, v87);
  v21 = swift_allocObject();
  sub_227FFA05C(v87, v21 + 16);
  v81 = v20;
  v82 = v18;
  sub_22812F68C(sub_2280A96DC, v18);

  if (qword_2813C48D8 != -1)
  {
    swift_once();
  }

  v84 = v19;
  __swift_project_value_buffer(v19, qword_2813C87E0);
  sub_2280A9560(a3, v87);
  v22 = swift_allocObject();
  sub_227FFA05C(v87, v22 + 16);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2280A96E4;
  *(v23 + 24) = v22;

  sub_2281324C8();
  v24 = v88;
  v25 = a2;
  v27 = sub_2280A99A8(v88, a2);
  v28 = v26;
  if ((v27 != v24 || v26 != v25) && (sub_2281399BC() & 1) == 0)
  {
    sub_2280A660C(0, v83);
  }

  v75 = v25;
  sub_2281324D8();

  sub_2280A95C4(v16, type metadata accessor for SignpostToken);

  v85 = v27;
  v86 = v28;
  v29 = v80;
  if (qword_2813C48E0 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v84, qword_2813C87F8);
  sub_2280A9560(a3, v87);
  v31 = swift_allocObject();
  sub_227FFA05C(v87, v31 + 16);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_2280A96E0;
  *(v32 + 24) = v31;
  v33 = v83;

  v78 = v30;
  sub_2281324C8();

  v34 = v79;
  v35 = sub_2280A68B4(v27, v28, v33);
  v37 = a3;
  if (v34)
  {
    v38 = a3;

    v39 = swift_allocObject();
    v39[2] = v34;
    v39[3] = sub_2280A96E0;
    v39[4] = v31;
    swift_beginAccess();
    *(v32 + 16) = sub_2280A9624;
    *(v32 + 24) = v39;

    v40 = v34;

    swift_willThrow();
    sub_2281324D8();
    sub_2280A95C4(v29, type metadata accessor for SignpostToken);

    sub_2280A9560(v38, v87);
    v41 = swift_allocObject();
    sub_227FFA05C(v87, v41 + 16);
    v42 = v82;
    sub_2281317B8(v82, sub_2280A9630, v41);

    v43 = v42;
LABEL_23:
    sub_2280A95C4(v43, type metadata accessor for SignpostToken);
    return v41;
  }

  v44 = v35;
  v45 = v36;
  v74 = 0;
  v79 = v37;

  sub_2281324D8();
  sub_2280A95C4(v29, type metadata accessor for SignpostToken);

  v85 = v44;
  v86 = v45;
  v46 = v45;
  if (qword_2813C48E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v84, qword_2813C8810);
  sub_2280A9560(v79, v87);
  v47 = swift_allocObject();
  sub_227FFA05C(v87, v47 + 16);
  v48 = swift_allocObject();
  *(v48 + 16) = sub_2280A96E8;
  *(v48 + 24) = v47;

  v49 = v75;

  sub_2281324C8();

  sub_2280A9C80(v44, v46);
  v51 = v50;
  v53 = v52;

  if ((v51 != v88 || v53 != v49) && (sub_2281399BC() & 1) == 0)
  {
    sub_2280A660C(2u, v33);
  }

  v54 = v77;
  sub_2281324D8();
  sub_2280A95C4(v54, type metadata accessor for SignpostToken);

  v85 = v51;
  v86 = v53;
  v55 = v33;
  if (qword_2813C48F0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v84, qword_2813C8828);
  sub_2280A9560(v79, v87);
  v56 = swift_allocObject();
  sub_227FFA05C(v87, v56 + 16);
  v57 = swift_allocObject();
  *(v57 + 16) = sub_2280A96EC;
  *(v57 + 24) = v56;

  v58 = v76;
  sub_2281324C8();

  v59 = v74;
  v60 = sub_2280A7104(v51, v53, v55);
  if (v59)
  {

    v62 = swift_allocObject();
    v62[2] = v59;
    v62[3] = sub_2280A96EC;
    v62[4] = v56;
    swift_beginAccess();
    *(v57 + 16) = sub_2280A9730;
    *(v57 + 24) = v62;

    v63 = v59;

    swift_willThrow();
    sub_2281324D8();
    sub_2280A95C4(v58, type metadata accessor for SignpostToken);

    sub_2280A9560(v79, v87);
    v41 = swift_allocObject();
    sub_227FFA05C(v87, v41 + 16);
    v64 = v82;
    sub_2281317B8(v82, sub_2280A96F0, v41);

    v43 = v64;
    goto LABEL_23;
  }

  v66 = v60;
  v67 = v61;

  sub_2281324D8();
  sub_2280A95C4(v58, type metadata accessor for SignpostToken);

  v68 = v83;

  v85 = v66;
  v86 = v67;
  if (qword_2813C48D0 != -1)
  {
    swift_once();
  }

  v69 = __swift_project_value_buffer(v84, qword_2813C87C8);
  v70 = v79;
  sub_2280A9560(v79, v87);
  v71 = swift_allocObject();
  sub_227FFA05C(v87, v71 + 16);

  v41 = sub_22813228C(v69, sub_2280A96F4, v71, &v85, v68);

  sub_2280A9560(v70, v87);
  v72 = swift_allocObject();
  sub_227FFA05C(v87, v72 + 16);
  v73 = v82;
  sub_2281317B8(v82, sub_2280A96FC, v72);

  sub_2280A95C4(v73, type metadata accessor for SignpostToken);
  return v41;
}

uint64_t sub_2280A8554(uint64_t a1, void *a2)
{
  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 != 1)
  {
    if (qword_2813C76F0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if (qword_27D81E2A0 != -1)
  {
LABEL_21:
    swift_once();
  }

LABEL_7:
  v5 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v6 = *(v4 + 8);
  v7 = *(v6 + 8);

  v8 = v7(v5, v6);
  v10 = sub_22808E410(v8, v9);

  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v27 = MEMORY[0x277D84F90];
    sub_228043AD4(0, v11, 0);
    v13 = 0;
    v12 = v27;
    do
    {
      swift_bridgeObjectRetain_n();
      v14 = sub_2281393DC();
      v16 = v15;
      if (v15)
      {
        v17 = v14;
        do
        {
          if ((sub_2281036C8(v17, v16) & 1) == 0)
          {
            MEMORY[0x22AAB1960](v17, v16);
          }

          v17 = sub_2281393DC();
          v16 = v18;
        }

        while (v18);
        v16 = 0;
      }

      v20 = *(v27 + 16);
      v19 = *(v27 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_228043AD4((v19 > 1), v20 + 1, 1);
      }

      ++v13;
      *(v27 + 16) = v20 + 1;
      v21 = v27 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = 0xE000000000000000;
    }

    while (v13 != v11);
  }

  if (sub_2280AB048(v10, v12, 0))
  {
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v10;
  *(v23 + 24) = v12;
  v24 = swift_allocObject();
  *(v24 + 16) = 3;
  *(v24 + 24) = sub_2280A9558;
  *(v24 + 32) = v23;
  v25 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228147A80, 101, sub_2280A9708, v24);
  sub_227FDB3CC();
  swift_allocError();
  *v26 = 3;
  *(v26 + 8) = v25;
  return swift_willThrow();
}

uint64_t sub_2280A88EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_228136CDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  v15[0] = sub_2280A9EA0(32, 0xE100000000000000, a1, a2);
  v15[1] = v9;
  sub_228136C8C();
  sub_227FDB420();
  v10 = sub_2281397AC();
  v12 = v11;
  (*(v5 + 8))(v7, v4);

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    return v10;
  }

  return v8;
}

unint64_t sub_2280A8A4C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    if (qword_2813C8178 != -1)
    {
      swift_once();
    }

    sub_228139B6C();
    v5 = *(v10 + 16);

    if (v5)
    {
      v10 = 3;
      v11 = 1;
      LOBYTE(v6) = sub_227FFE22C(a1, a2, &v10);
    }

    else
    {
      v7 = swift_allocObject();
      *(v7 + 16) = 20;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      v6 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228147A80, 78, sub_2280A9704, v7);
      sub_227FDB3CC();
      swift_allocError();
      *v8 = 20;
      *(v8 + 8) = v6;
      swift_willThrow();
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

unint64_t sub_2280A8C78()
{
  result = qword_2813C4600;
  if (!qword_2813C4600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813C4600);
  }

  return result;
}

char *sub_2280A8D60(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(unint64_t *))
{
  v81 = a4;
  v82 = a5;
  v12 = v8;
  v89 = a1;
  v90[3] = *MEMORY[0x277D85DE8];
  v86 = sub_22813882C();
  v88 = *(v86 - 1);
  v14 = MEMORY[0x28223BE20](v86);
  v83 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = &v74 - v16;
  v17 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  v85 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C8178 != -1)
  {
LABEL_31:
    swift_once();
  }

  sub_228139B6C();
  v20 = *(v90[0] + 2);

  if (v20)
  {
    v21 = qword_2813C8078;
    swift_beginAccess();
    v22 = *(v20 + v21);
    v23 = v20;
    if (*(v22 + 16) && (v24 = sub_22808CF24(a3, 1), (v25 & 1) != 0))
    {
      v26 = *(*(v22 + 56) + 8 * v24);
      swift_endAccess();
      v27 = *(v26 + 16);
      if (v27)
      {
        v74 = v23;
        v80 = v12;
        v28 = v85;
        a3 = v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
        v78 = (v88 + 16);
        v75 = (v88 + 8);

        v12 = 0;
        a8 = v86;
        v79 = v26;
        v76 = a3;
        v77 = v27;
        while (1)
        {
          if (v12 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_31;
          }

          sub_227FFE9B0(a3 + *(v28 + 72) * v12, v19);
          a7 = *(v19 + 4);
          v88 = *(v19 + 5);
          if (v19[48] > 1u)
          {
            if (v19[48] != 2)
            {
              goto LABEL_8;
            }

            v87 = a2;
            v48 = qword_2813C49A8;

            if (v48 != -1)
            {
              swift_once();
            }

            v49 = __swift_project_value_buffer(a8, qword_2813C89F0);
            v50 = v84;
            (*v78)(v84, v49, a8);
            v51 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v52 = a8;
            v53 = sub_22813927C();

            v90[0] = 0;
            v42 = [v51 initWithPattern:v53 options:0 error:v90];

            if (!v42)
            {
              v65 = v90[0];
              v66 = sub_228136E2C();

              swift_willThrow();
              v67 = v66;
              v68 = sub_22813880C();
              v69 = sub_2281396EC();

              if (os_log_type_enabled(v68, v69))
              {
                v70 = swift_slowAlloc();
                v71 = swift_slowAlloc();
                *v70 = 138412290;
                v72 = v66;
                v73 = _swift_stdlib_bridgeErrorToNSError();
                *(v70 + 4) = v73;
                *v71 = v73;
                _os_log_impl(&dword_227FC3000, v68, v69, "Error compiling regular expression: %@", v70, 0xCu);
                sub_227FE60F8(v71);
                MEMORY[0x22AAB28A0](v71, -1, -1);
                MEMORY[0x22AAB28A0](v70, -1, -1);
              }

              swift_willThrow();
              (*v75)(v50, v86);
              goto LABEL_29;
            }

            v54 = *v75;
            v55 = v90[0];
            v56 = (v54)(v50, v52);
            MEMORY[0x28223BE20](v56);
            v58 = v88;
            v57 = v89;
            *(&v74 - 6) = v42;
            *(&v74 - 5) = v57;
            v59 = v87;
            *(&v74 - 4) = v87;
            *(&v74 - 3) = a7;
            *(&v74 - 2) = v58;
            v89 = sub_2280E5DB8(v42, 0, v81, (&v74 - 8), v57, v59);
            v47 = v60;
            a8 = v52;
          }

          else
          {
            if (!v19[48])
            {
              goto LABEL_8;
            }

            v87 = a2;
            v29 = *(v19 + 2);
            v30 = *(v19 + 3);
            v31 = objc_opt_self();
            v32 = sub_22813927C();
            v33 = [v31 escapedTemplateForString_];

            a7 = sub_2281392AC();
            v35 = v34;

            sub_2280A8C78();
            v36 = qword_2813C49A8;

            if (v36 != -1)
            {
              swift_once();
            }

            v37 = v86;
            v38 = __swift_project_value_buffer(v86, qword_2813C89F0);
            v39 = v83;
            (*v78)(v83, v38, v37);
            v40 = v80;
            v41 = sub_227FE5EB0(v29, v30, 0, v39);
            v80 = v40;
            if (v40)
            {

LABEL_29:

              sub_2280A95C4(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
            }

            v42 = v41;
            v43 = MEMORY[0x28223BE20](v41);
            v44 = v89;
            *(&v74 - 6) = v43;
            *(&v74 - 5) = v44;
            v45 = v87;
            *(&v74 - 4) = v87;
            *(&v74 - 3) = a7;
            *(&v74 - 2) = v35;
            v89 = sub_2280E5DB8(v43, 0, v82, (&v74 - 8), v44, v45);
            v47 = v46;

            a8 = v86;
          }

          a2 = v47;
          v26 = v79;
          v28 = v85;
          a3 = v76;
          v27 = v77;
LABEL_8:
          ++v12;
          sub_2280A95C4(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
          if (v27 == v12)
          {

            return v89;
          }
        }
      }
    }

    else
    {
      swift_endAccess();
    }

    return v89;
  }

  else
  {
    v62 = swift_allocObject();
    *(v62 + 16) = 20;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    v63 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228147A80, a7, a8, v62);
    sub_227FDB3CC();
    swift_allocError();
    *v64 = 20;
    *(v64 + 8) = v63;
    return swift_willThrow();
  }
}

uint64_t sub_2280A9560(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2280A95C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_33Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_9()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

char *sub_2280A9734(uint64_t a1, char *a2, unint64_t a3)
{
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF10, &qword_22813F800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813F7F0;
  v8 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v9 = sub_2280E9BE4(0xD000000000000019, 0x8000000228147B80, 0);
  if (v3)
  {
    *(inited + 16) = 0;
  }

  else
  {
    *(inited + 32) = v9;
    v10 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    *(inited + 40) = sub_2280E9BE4(0xD000000000000015, 0x8000000228147BA0, 0);
    v11 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    *(inited + 48) = sub_2280E9BE4(0xD000000000000015, 0x8000000228147BC0, 0);
    v27 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      v25 = inited & 0xC000000000000001;
      v24 = v6 & 1;

      v13 = 0;
      v26 = a2;
      v14 = a2;
      v15 = a3;
      do
      {
        if (v25)
        {
          v16 = MEMORY[0x22AAB1E40](v13, inited);
        }

        else
        {
          v16 = *(inited + 8 * v13 + 32);
        }

        v17 = v16;
        ++v13;
        v18 = MEMORY[0x28223BE20](v16);
        v21[16] = v24;
        v22 = v26;
        v23 = a3;
        v14 = sub_2280E5DB8(v18, 0, sub_2280AAC40, v21, v14, v15);
        v20 = v19;

        v15 = v20;
      }

      while (v27 != v13);

      return v14;
    }

    else
    {
    }
  }

  return a2;
}

uint64_t sub_2280A99A8(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
LABEL_21:

    return v2;
  }

  if (qword_2813C4700 != -1)
  {
    swift_once();
  }

  v4 = qword_2813C46F0;
  if (byte_2813C46F8)
  {
    v5 = qword_2813C46F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    swift_willThrowTypedImpl();
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v6 = sub_22813882C();
    __swift_project_value_buffer(v6, qword_2813C8A20);
    v7 = v4;
    v8 = sub_22813880C();
    v9 = sub_2281396EC();
    sub_2280AB410(v4, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      v12 = v4;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_227FC3000, v8, v9, "Failed to load supported emoji: %{public}@", v10, 0xCu);
      sub_2280AB428(v11, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v11, -1, -1);
      MEMORY[0x22AAB28A0](v10, -1, -1);
      sub_2280AB410(v4, 1);
    }

    else
    {

      sub_2280AB410(v4, 1);
    }

    goto LABEL_21;
  }

  sub_2280AB41C(qword_2813C46F0, 0);

  v14 = sub_2281393DC();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    do
    {
      if (sub_2281036C8(v16, v17) & 1) == 0 || (sub_2280EAFD8(v16, v17, v4))
      {
        MEMORY[0x22AAB1960](v16, v17);
      }

      v16 = sub_2281393DC();
      v17 = v18;
    }

    while (v18);
    v2 = 0;
  }

  else
  {
    v2 = 0;
  }

  sub_2280AB410(v4, 0);

  return v2;
}