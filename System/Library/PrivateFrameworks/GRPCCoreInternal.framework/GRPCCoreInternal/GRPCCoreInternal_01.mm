unint64_t sub_24DC3DB04()
{
  result = qword_27F1A0CB0[0];
  if (!qword_27F1A0CB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A0CB0);
  }

  return result;
}

unint64_t sub_24DC3DB5C()
{
  result = qword_27F1A0F40[0];
  if (!qword_27F1A0F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A0F40);
  }

  return result;
}

unint64_t sub_24DC3DBB4()
{
  result = qword_27F1A11D0[0];
  if (!qword_27F1A11D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A11D0);
  }

  return result;
}

unint64_t sub_24DC3DC0C()
{
  result = qword_27F1A1460[0];
  if (!qword_27F1A1460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A1460);
  }

  return result;
}

unint64_t sub_24DC3DC64()
{
  result = qword_27F1A1570;
  if (!qword_27F1A1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A1570);
  }

  return result;
}

unint64_t sub_24DC3DCBC()
{
  result = qword_27F1A1578;
  if (!qword_27F1A1578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A1578);
  }

  return result;
}

unint64_t sub_24DC3DD14()
{
  result = qword_27F1A1600;
  if (!qword_27F1A1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A1600);
  }

  return result;
}

unint64_t sub_24DC3DD6C()
{
  result = qword_27F1A1608[0];
  if (!qword_27F1A1608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A1608);
  }

  return result;
}

unint64_t sub_24DC3DDC4()
{
  result = qword_27F1A1690;
  if (!qword_27F1A1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A1690);
  }

  return result;
}

unint64_t sub_24DC3DE1C()
{
  result = qword_27F1A1698[0];
  if (!qword_27F1A1698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A1698);
  }

  return result;
}

unint64_t sub_24DC3DE74()
{
  result = qword_27F1A1720;
  if (!qword_27F1A1720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A1720);
  }

  return result;
}

unint64_t sub_24DC3DECC()
{
  result = qword_27F1A1728[0];
  if (!qword_27F1A1728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A1728);
  }

  return result;
}

uint64_t sub_24DC3DF20(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_24DC3DF2C()
{
  result = qword_27F19EEB8;
  if (!qword_27F19EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EEB8);
  }

  return result;
}

unint64_t sub_24DC3DF80()
{
  result = qword_27F19EEC0;
  if (!qword_27F19EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EEC0);
  }

  return result;
}

uint64_t sub_24DC3DFD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

GRPCCoreInternal::CompressionAlgorithm::Value_optional __swiftcall CompressionAlgorithm.Value.init(rawValue:)(GRPCCoreInternal::CompressionAlgorithm::Value_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= GRPCCoreInternal_CompressionAlgorithm_Value_unknownDefault)
  {
    value = GRPCCoreInternal_CompressionAlgorithm_Value_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t CompressionAlgorithm.hashValue.getter()
{
  sub_24DCB58A4();
  sub_24DCB58C4();
  return sub_24DCB58F4();
}

uint64_t sub_24DC3E1B4()
{
  sub_24DCB58A4();
  sub_24DCB58C4();
  return sub_24DCB58F4();
}

uint64_t sub_24DC3E1FC(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DCB58C4();
  return sub_24DCB58F4();
}

uint64_t sub_24DC3E2A8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

Swift::Bool __swiftcall CompressionAlgorithmSet.contains(_:)(GRPCCoreInternal::CompressionAlgorithm a1)
{
  v2 = *a1.value;
  if (v2 <= 0x1F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  return (v3 & ~*v1) == 0;
}

uint64_t sub_24DC3E330()
{
  sub_24DCB58A4();
  sub_24DCB58D4();
  return sub_24DCB58F4();
}

uint64_t sub_24DC3E3A4(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DCB58D4();
  return sub_24DCB58F4();
}

BOOL sub_24DC3E42C(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_24DC3E45C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_24DC3E488@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_24DC3E55C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void CompressionAlgorithmSet.Elements.makeIterator()(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = &unk_2860ED700;
  *(a1 + 16) = 0;
}

_DWORD *sub_24DC3E5B4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = &unk_2860ED728;
  *(a2 + 16) = 0;
  return result;
}

GRPCCoreInternal::CompressionAlgorithm_optional __swiftcall CompressionAlgorithmSet.Elements.Iterator.next()()
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = v3 + 32;
  while (1)
  {
    if (v4 == v2)
    {
      *v0 = 3;
      return result;
    }

    if (v2 >= v4)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_10;
    }

    v6 = *(v5 + v2);
    *(v1 + 16) = v2 + 1;
    if (v6 <= 0x1F)
    {
      ++v2;
      if (((*v1 >> v6) & 1) == 0)
      {
        continue;
      }
    }

    *v0 = v6;
    return result;
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_24DC3E630()
{
  result = qword_27F19EEE8;
  if (!qword_27F19EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EEE8);
  }

  return result;
}

unint64_t sub_24DC3E688()
{
  result = qword_27F19EEF0;
  if (!qword_27F19EEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19EEF8, &qword_24DCB8E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EEF0);
  }

  return result;
}

unint64_t sub_24DC3E6F0()
{
  result = qword_27F19EF00;
  if (!qword_27F19EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF00);
  }

  return result;
}

unint64_t sub_24DC3E748()
{
  result = qword_27F19EF08;
  if (!qword_27F19EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF08);
  }

  return result;
}

unint64_t sub_24DC3E7A0()
{
  result = qword_27F19EF10;
  if (!qword_27F19EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF10);
  }

  return result;
}

unint64_t sub_24DC3E7F8()
{
  result = qword_27F19EF18;
  if (!qword_27F19EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF18);
  }

  return result;
}

unint64_t sub_24DC3E850()
{
  result = qword_27F19EF20;
  if (!qword_27F19EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF20);
  }

  return result;
}

unint64_t sub_24DC3E8AC()
{
  result = qword_27F19EF28;
  if (!qword_27F19EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF28);
  }

  return result;
}

void sub_24DC3E900(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = &unk_2860ED6D8;
  *(a1 + 16) = 0;
}

uint64_t getEnumTagSinglePayload for CompressionAlgorithmSet.Elements(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CompressionAlgorithmSet.Elements(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24DC3E9FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24DC3EA44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_24DC3EA94(char *result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v5 = (MEMORY[0x277D84F90] + 32);
  while (2)
  {
    v6 = 3 - v3;
    if (v3 > 3)
    {
      v6 = 0;
    }

    v7 = ~v3;
    v8 = &unk_2860ED750 + v3 + 32;
    do
    {
      if (v7 == -4)
      {

        v20 = *(v4 + 3);
        if (v20 >= 2)
        {
          v21 = v20 >> 1;
          v19 = __OFSUB__(v21, v2);
          v22 = v21 - v2;
          if (v19)
          {
            goto LABEL_29;
          }

          *(v4 + 2) = v22;
        }

        return v4;
      }

      if (!v6)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v9 = v7;
      v10 = *v8;
      if (v10 >= 0x20)
      {
        break;
      }

      --v6;
      --v7;
      ++v8;
    }

    while (((v1 >> v10) & 1) == 0);
    if (v2)
    {
LABEL_20:
      v19 = __OFSUB__(v2--, 1);
      if (!v19)
      {
        v3 = -v9;
        *v5++ = v10;
        continue;
      }

      goto LABEL_27;
    }

    break;
  }

  v11 = *(v4 + 3);
  if (((v11 >> 1) + 0x4000000000000000) >= 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF30, &unk_24DCB9220);
    v14 = swift_allocObject();
    v15 = 2 * _swift_stdlib_malloc_size(v14) - 64;
    *(v14 + 2) = v13;
    *(v14 + 3) = v15;
    v16 = v14 + 32;
    v17 = *(v4 + 3) >> 1;
    if (*(v4 + 2))
    {
      v18 = v4 + 32;
      if (v14 != v4 || v16 >= &v18[v17])
      {
        memmove(v14 + 32, v18, v17);
      }

      *(v4 + 2) = 0;
    }

    v5 = &v16[v17];
    v2 = (v15 >> 1) - v17;

    v4 = v14;
    goto LABEL_20;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_24DC3EC30(uint64_t result, _BYTE *a2, uint64_t a3, unsigned int a4)
{
  if (!a2)
  {
LABEL_16:
    v7 = 0;
    a3 = 0;
LABEL_20:
    *result = a4;
    *(result + 8) = &unk_2860ED778;
    *(result + 16) = v7;
    return a3;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
    v7 = 3;
    while (2)
    {
      v8 = v4;
      v4 = v6;
      v9 = 3 - v5;
      if (v5 > 3)
      {
        v9 = 0;
      }

      v10 = ~v5;
      v11 = &unk_2860ED778 + v5 + 32;
      do
      {
        if (v10 == -4)
        {
          a3 = v8;
          goto LABEL_20;
        }

        if (!v9)
        {
          __break(1u);
          goto LABEL_22;
        }

        v12 = v10;
        v13 = *v11;
        if (v13 > 0x1F)
        {
          break;
        }

        --v9;
        --v10;
        ++v11;
      }

      while (((a4 >> v13) & 1) == 0);
      *a2 = v13;
      if (v4 == a3)
      {
        v7 = -v12;
        goto LABEL_20;
      }

      v5 = -v12;
      ++a2;
      v6 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_24DC3ED1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  v9 = sub_24DCB5904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - v11;
  v13 = type metadata accessor for AsyncSequenceOfOne(0, a2, a3, a4);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v21 - v18;
  (*(*(a2 - 8) + 16))(v12, a1, a2);
  swift_storeEnumTagMultiPayload();
  (*(v10 + 32))(v19, v12, v9);
  (*(v14 + 16))(v17, v19, v13);
  swift_getWitnessTable();
  RPCAsyncSequence.init<A>(wrapping:)();
  return (*(v14 + 8))(v19, v13);
}

uint64_t sub_24DC3EF74@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  v7 = sub_24DCB5904();
  v8 = *(*(v7 - 8) + 32);

  return v8(a5, a1, v7);
}

uint64_t sub_24DC3EFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  v9 = sub_24DCB5904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - v11;
  v13 = type metadata accessor for AsyncSequenceOfOne(0, a2, a3, a4);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v21 - v18;
  (*(*(a3 - 8) + 16))(v12, a1, a3);
  swift_storeEnumTagMultiPayload();
  (*(v10 + 32))(v19, v12, v9);
  (*(v14 + 16))(v17, v19, v13);
  swift_getWitnessTable();
  RPCAsyncSequence.init<A>(wrapping:)();
  return (*(v14 + 8))(v19, v13);
}

uint64_t sub_24DC3F220@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_24DCB5904();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_24DC3F290@<X0>(uint64_t x8_0@<X8>)
{
  v4 = sub_24DCB5904();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, v2);
  return sub_24DC3F37C(v6, x8_0);
}

uint64_t sub_24DC3F37C@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  v7 = sub_24DCB5904();
  v8 = *(v7 - 8);
  v11 = *(v8 + 56);
  v11(a5, 1, 1, v7);
  v9 = sub_24DCB5414();
  (*(*(v9 - 8) + 8))(a5, v9);
  (*(v8 + 32))(a5, a1, v7);

  return (v11)(a5, 0, 1, v7);
}

uint64_t sub_24DC3F494@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_24DCB5904();
  v6 = *(*(v5 - 8) + 56);

  return v6(a4, 1, 1, v5);
}

uint64_t sub_24DC3F50C@<X0>(uint64_t a2@<X8>)
{
  sub_24DCB5904();
  v4 = sub_24DCB5414();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_24DC3F588(uint64_t a1, void *a2)
{
  sub_24DCB5904();
  v4 = sub_24DCB5414();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t sub_24DC3F608(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6[3] = v5;
  v6[4] = a5;
  v6[2] = a1;
  v9 = a4[3];
  v6[5] = v9;
  v6[6] = *(v9 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = a4[2];
  v10 = sub_24DCB5904();
  v6[9] = v10;
  v11 = sub_24DCB5414();
  v6[10] = v11;
  v6[11] = *(v11 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = *(v10 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v12 = sub_24DCB50D4();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return MEMORY[0x2822009F8](sub_24DC3F7E4, v12, v14);
}

uint64_t sub_24DC3F7E4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  (*(v0[11] + 16))(v1, v0[3], v0[10]);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    v4 = 1;
  }

  else
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[13];
    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[9];
    v11 = v0[7];
    v13 = v0[2];
    v12 = v0[3];
    (*(v7 + 32))(v5, v0[12], v10);
    (*(v9 + 8))(v12, v8);
    (*(v7 + 56))(v12, 1, 1, v10);
    (*(v7 + 16))(v6, v5, v10);
    sub_24DC2F270(v10, v11, v13);
    (*(v7 + 8))(v5, v10);
    v4 = 0;
  }

  (*(*(v0[8] - 8) + 56))(v0[2], v4, 1);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24DC3FA3C(uint64_t a1, void *a2)
{
  v2[2] = a2;
  v5 = a2[3];
  v2[3] = v5;
  v2[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v2[5] = v6;
  v7 = swift_task_alloc();
  v2[6] = v7;
  *v7 = v2;
  v7[1] = sub_24DC3FB50;

  return sub_24DC3F608(a1, 0, 0, a2, v6);
}

uint64_t sub_24DC3FB50()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC3FC88, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC3FC88()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24DC3FD38(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC2FD00;

  return sub_24DC3FA3C(a1, a2);
}

uint64_t sub_24DC3FDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[2] = a4;
  v10 = a5[3];
  v5[3] = v10;
  v5[4] = *(v10 - 8);
  v11 = swift_task_alloc();
  v5[5] = v11;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_24DC3FF04;

  return sub_24DC3F608(a1, a2, a3, a5, v11);
}

uint64_t sub_24DC3FF04()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

uint64_t sub_24DC40054@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24DC3F290(a2);
  v4 = *(*(a1 - 1) + 8);

  return v4(v2, a1);
}

uint64_t sub_24DC400B4(void *a1)
{
  result = sub_24DCB5904();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DC40128(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_24DC40250(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_24DC40420(void *a1)
{
  sub_24DCB5904();
  result = sub_24DCB5414();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DC404A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) > 3)
  {
    goto LABEL_6;
  }

  v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
  if (HIWORD(v8))
  {
    v6 = *(a1 + v4);
    if (v6)
    {
      goto LABEL_14;
    }

LABEL_25:
    v10 = *(a1 + v3);
    if (v10 >= 2)
    {
      v11 = (v10 ^ 0xFF) + 1;
    }

    else
    {
      v11 = 0;
    }

    if (v11 >= 2)
    {
      return v11 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v8 > 0xFF)
  {
    v6 = *(a1 + v4);
    if (*(a1 + v4))
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (v8 < 2)
  {
    goto LABEL_25;
  }

LABEL_6:
  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_24DC405D4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = ~a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t RPCError.message.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RPCError.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RPCError.metadata.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

uint64_t RPCError.cause.getter()
{
  v1 = *(v0 + 32);
  MEMORY[0x2530363C0](v1);
  return v1;
}

uint64_t RPCError.cause.setter(uint64_t a1)
{
  result = MEMORY[0x2530363B0](*(v1 + 32));
  *(v1 + 32) = a1;
  return result;
}

uint64_t RPCError.init(code:message:metadata:cause:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v10 = *result;
  v11 = *a4;
  if (a5)
  {
    v22 = a5;
    MEMORY[0x2530363C0](a5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
    result = swift_dynamicCast();
    if (result)
    {
      v14 = v10;
      LOBYTE(v22) = v10;

      MEMORY[0x2530363C0]();
      sub_24DC41444();
      sub_24DCB4F84();
      sub_24DCB4F84();
      if (v16 == v15)
      {

        MEMORY[0x2530363B0]();

        MEMORY[0x253035590]();

        MEMORY[0x253035590](32, 0xE100000000000000);

        v22 = v20;

        Metadata.add(contentsOf:)(&v22);
        MEMORY[0x2530363B0](v6);

        v6 = v21;
        MEMORY[0x2530363C0]();

        result = MEMORY[0x2530363B0]();
      }

      else
      {
        sub_24DC2E0D8();
        v12 = swift_allocError();
        *v13 = v17;
        *(v13 + 8) = v18;
        *(v13 + 16) = v19;
        *(v13 + 24) = v20;
        *(v13 + 32) = v21;
        MEMORY[0x2530363B0](v6);

        result = MEMORY[0x2530363B0]();
        v6 = v12;
      }

      v10 = v14;
    }
  }

  *a6 = v10;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v11;
  *(a6 + 32) = v6;
  return result;
}

uint64_t RPCError.init(code:message:metadata:cause:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v19 = *a4;
  v9 = *a5;
  v11 = *(a5 + 1);
  v10 = *(a5 + 2);
  v13 = *(a5 + 3);
  v12 = *(a5 + 4);
  LOBYTE(v22) = *a5;
  v20 = v8;
  LOBYTE(v21) = v8;
  sub_24DC41444();
  sub_24DCB4F84();
  sub_24DCB4F84();
  if (v25 == v24)
  {

    MEMORY[0x253035590](v11, v10);

    v23 = a3;

    MEMORY[0x253035590](32, 0xE100000000000000);

    v14 = a2;
    v21 = v13;
    v22 = v19;

    Metadata.add(contentsOf:)(&v21);

    v15 = v22;
    MEMORY[0x2530363C0](v12);

    result = MEMORY[0x2530363B0](v12);
  }

  else
  {
    sub_24DC2E0D8();
    result = swift_allocError();
    *(v17 + 24) = v13;
    *(v17 + 32) = v12;
    *v17 = v9;
    *(v17 + 8) = v11;
    *(v17 + 16) = v10;
    v12 = result;
    v14 = a2;
    v15 = v19;
  }

  *a6 = v20;
  *(a6 + 8) = v14;
  *(a6 + 16) = a3;
  *(a6 + 24) = v15;
  *(a6 + 32) = v12;
  return result;
}

uint64_t RPCError.init(status:metadata:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v12 = *a1;
  Status.code.getter(&v11);
  v6 = v11;
  sub_24DC4311C();
  sub_24DC3DF80();
  if (sub_24DCB4DA4())
  {

    v8 = 0;
    v9 = 0;
    v5 = 0;
    *a3 = 0;
  }

  else
  {
    v12 = v4;
    v8 = Status.message.getter();
    v9 = v10;

    *a3 = v6;
  }

  a3[1] = v8;
  a3[2] = v9;
  a3[3] = v5;
  a3[4] = 0;
  return result;
}

GRPCCoreInternal::RPCError::Code_optional __swiftcall RPCError.Code.init(_:)(GRPCCoreInternal::Status::Code a1)
{
  v2 = v1;
  v3 = *a1.wrapped;
  sub_24DC4311C();
  sub_24DC3DF80();
  result.value.wrapped = sub_24DCB4DA4();
  if (result.value.wrapped)
  {
    v5 = 17;
  }

  else
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RPCError.hash(into:)(uint64_t a1)
{
  sub_24DC415E8();
  sub_24DCB4D34();
  sub_24DCB4D44();
  sub_24DC4163C();
  return sub_24DCB4D34();
}

uint64_t RPCError.hashValue.getter()
{
  sub_24DCB58A4();
  sub_24DC415E8();
  sub_24DCB4D34();
  sub_24DCB4D44();
  sub_24DC4163C();
  sub_24DCB4D34();
  return sub_24DCB58F4();
}

uint64_t sub_24DC40FD8(uint64_t a1)
{
  sub_24DC415E8();
  sub_24DCB4D34();
  sub_24DCB4D44();
  sub_24DC4163C();
  return sub_24DCB4D34();
}

uint64_t sub_24DC4106C(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DC415E8();
  sub_24DCB4D34();
  sub_24DCB4D44();
  sub_24DC4163C();
  sub_24DCB4D34();
  return sub_24DCB58F4();
}

uint64_t RPCError.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[4];
  if (v3)
  {
    v6 = 0;
    MEMORY[0x2530363C0](v3);
    sub_24DCB54D4();
    sub_24DC41B30();
    v4 = sub_24DCB5744();
    MEMORY[0x253035590](v4);

    MEMORY[0x253035590](2236474, 0xE300000000000000);
    MEMORY[0x253035590](v1, v2);
    MEMORY[0x253035590](0x6573756163282022, 0xEB0000000022203ALL);
    swift_getErrorValue();
    sub_24DCB5784();
    MEMORY[0x253035590](10530, 0xE200000000000000);
    MEMORY[0x2530363B0](v3);
  }

  else
  {
    sub_24DC41B30();
    v6 = sub_24DCB5744();
    MEMORY[0x253035590](2236474, 0xE300000000000000);
    MEMORY[0x253035590](v1, v2);
    MEMORY[0x253035590](34, 0xE100000000000000);
  }

  return v6;
}

BOOL static RPCError.Code.== infix(_:_:)(_BYTE *a1, char *a2)
{
  sub_24DC41444();
  sub_24DCB4F84();
  sub_24DCB4F84();
  return v4 == v3;
}

unint64_t sub_24DC41444()
{
  result = qword_27F19EF38;
  if (!qword_27F19EF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF38);
  }

  return result;
}

uint64_t RPCError.Code.hashValue.getter()
{
  sub_24DCB58A4();
  sub_24DC415E8();
  sub_24DCB4D34();
  return sub_24DCB58F4();
}

uint64_t sub_24DC41540()
{
  sub_24DCB58A4();
  sub_24DC415E8();
  sub_24DCB4D34();
  return sub_24DCB58F4();
}

unint64_t sub_24DC415E8()
{
  result = qword_27F19EF40;
  if (!qword_27F19EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF40);
  }

  return result;
}

unint64_t sub_24DC4163C()
{
  result = qword_27F19EF48;
  if (!qword_27F19EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF48);
  }

  return result;
}

uint64_t sub_24DC41690(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DC415E8();
  sub_24DCB4D34();
  return sub_24DCB58F4();
}

BOOL sub_24DC4171C(_BYTE *a1, char *a2)
{
  sub_24DC41444();
  sub_24DCB4F84();
  sub_24DCB4F84();
  return v4 == v3;
}

uint64_t RPCErrorConvertible<>.rpcErrorCause.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocError();
  (*(*(a1 - 8) + 16))(v6, v3, a1);
  return v5;
}

uint64_t RPCError.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(a3 + 8))(&v12, a2, a3);
  *a4 = v12;
  *(a4 + 8) = (*(a3 + 16))(a2, a3);
  *(a4 + 16) = v8;
  (*(a3 + 24))(&v11, a2, a3);
  *(a4 + 24) = v11;
  v9 = (*(a3 + 32))(a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *(a4 + 32) = v9;
  return result;
}

uint64_t _s16GRPCCoreInternal8RPCErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  sub_24DC41444();
  sub_24DCB4F84();
  sub_24DCB4F84();
  if (v9 == v8 && (v2 == v4 && v3 == v5 || (sub_24DCB57A4() & 1) != 0))
  {
    sub_24DC303C8();

    v6 = sub_24DCB4DA4();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_24DC41B30()
{
  result = qword_27F19EF50;
  if (!qword_27F19EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF50);
  }

  return result;
}

unint64_t sub_24DC41B88()
{
  result = qword_27F19EF58;
  if (!qword_27F19EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF58);
  }

  return result;
}

unint64_t sub_24DC41BE0()
{
  result = qword_27F19EF60;
  if (!qword_27F19EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF60);
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

uint64_t sub_24DC41C48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DC41C90(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t RPCWriterProtocol.write<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v6[9] = *(AssociatedTypeWitness - 8);
  v6[10] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  sub_24DCB5414();
  v6[14] = swift_task_alloc();
  v6[15] = *(a3 - 8);
  v6[16] = swift_task_alloc();
  v10 = swift_getAssociatedTypeWitness();
  v6[17] = v10;
  v6[18] = *(v10 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC41FAC, 0, 0);
}

uint64_t sub_24DC41FAC()
{
  (*(v0[15] + 16))(v0[16], v0[2], v0[4]);
  sub_24DCB5254();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[20] = AssociatedConformanceWitness;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_24DC420C8;
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];

  return MEMORY[0x282200310](v4, 0, 0, v5, v3, AssociatedConformanceWitness);
}

uint64_t sub_24DC420C8()
{

  if (v0)
  {
    v1 = sub_24DC425D8;
  }

  else
  {
    v1 = sub_24DC421D8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24DC421D8()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v11 = v0[5];
    (*(v3 + 32))(v0[10], v1, v2);
    v10 = (*(v11 + 16) + **(v11 + 16));
    v6 = swift_task_alloc();
    v0[22] = v6;
    *v6 = v0;
    v6[1] = sub_24DC423D8;
    v7 = v0[10];
    v8 = v0[5];
    v9 = v0[3];

    return v10(v7, v9, v8);
  }
}

uint64_t sub_24DC423D8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_24DC426EC;
  }

  else
  {
    v2 = sub_24DC424EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC424EC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[20] = AssociatedConformanceWitness;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_24DC420C8;
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];

  return MEMORY[0x282200310](v4, 0, 0, v5, v3, AssociatedConformanceWitness);
}

uint64_t sub_24DC425D8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  swift_getAssociatedConformanceWitness();
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  (*(v0[18] + 8))(v0[19], v0[17]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24DC426EC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t dispatch thunk of RPCWriterProtocol.write(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24DC334F4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of RPCWriterProtocol.write<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24DC2FD00;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ClosableRPCWriterProtocol.finish()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ClosableRPCWriterProtocol.finish(throwing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24DC2FD00;

  return v9(a1, a2, a3);
}

uint64_t Status.code.setter(char *a1)
{
  v2 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((result & 1) == 0)
  {
    v5 = *(v4 + 16);
    v7 = *(v4 + 24);
    v6 = *(v4 + 32);
    type metadata accessor for Status.Storage();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    *(v8 + 32) = v6;

    *v1 = v8;
    v4 = v8;
  }

  *(v4 + 16) = v2;
  return result;
}

uint64_t (*Status.code.modify(uint64_t a1))(uint64_t **a1)
{
  *a1 = v1;
  *(a1 + 8) = *(*v1 + 16);
  return sub_24DC42D98;
}

uint64_t sub_24DC42D98(uint64_t **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((result & 1) == 0)
  {
    v5 = *(v4 + 16);
    v7 = *(v4 + 24);
    v6 = *(v4 + 32);
    type metadata accessor for Status.Storage();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    *(v8 + 32) = v6;

    *v1 = v8;
    v4 = v8;
  }

  *(v4 + 16) = v2;
  return result;
}

uint64_t Status.message.getter()
{
  v1 = *(*v0 + 24);

  return v1;
}

uint64_t sub_24DC42E58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_24DC42E68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Status.message.setter(v1, v2);
}

uint64_t Status.message.setter(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
    v9 = *(v6 + 24);
    v8 = *(v6 + 32);
    type metadata accessor for Status.Storage();
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v10 + 32) = v8;

    *v2 = v10;
    v6 = v10;
  }

  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
}

uint64_t (*Status.message.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(*v1 + 32);
  *a1 = *(*v1 + 24);
  a1[1] = v3;

  return sub_24DC42FA4;
}

uint64_t sub_24DC42FA4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    Status.message.setter(v3, v2);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v7 = *(v6 + 16);
      v9 = *(v6 + 24);
      v8 = *(v6 + 32);
      type metadata accessor for Status.Storage();
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      *(v10 + 24) = v9;
      *(v10 + 32) = v8;

      *v4 = v10;
      v6 = v10;
    }

    *(v6 + 24) = v3;
    *(v6 + 32) = v2;
  }
}

uint64_t Status.init(code:message:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  if (*a1)
  {
    goto LABEL_5;
  }

  v8 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v8 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
LABEL_5:
    type metadata accessor for Status.Storage();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(result + 24) = a2;
    *(result + 32) = a3;
  }

  else
  {

    if (qword_27F1A2430 != -1)
    {
      swift_once();
    }
  }

  *a4 = result;
  return result;
}

uint64_t *sub_24DC43128()
{
  if (qword_27F1A2430 != -1)
  {
    swift_once();
  }

  return &qword_27F1A98B0;
}

uint64_t sub_24DC43178()
{
  type metadata accessor for Status.Storage();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0xE000000000000000;
  qword_27F1A98B0 = result;
  return result;
}

uint64_t sub_24DC431B0@<X0>(void *a1@<X8>)
{
  if (qword_27F1A2430 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F1A98B0;
}

BOOL static Status.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = 0;
  if (*(*a1 + 16) == *(*a2 + 16))
  {
    v4 = *(v2 + 24) == *(v3 + 24) && *(v2 + 32) == *(v3 + 32);
    if (v4 || (sub_24DCB57A4() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t Status.hash(into:)(uint64_t a1)
{
  sub_24DCB58C4();

  sub_24DCB4D44();
}

uint64_t Status.hashValue.getter()
{
  sub_24DCB58A4();
  sub_24DCB58C4();

  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t Status.description.getter()
{
  v1 = *v0;
  sub_24DC437B0();
  v5 = sub_24DCB5744();
  MEMORY[0x253035590](2236474, 0xE300000000000000);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  MEMORY[0x253035590](v2, v3);

  MEMORY[0x253035590](34, 0xE100000000000000);
  return v5;
}

uint64_t sub_24DC43400()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_24DC43438()
{
  sub_24DCB58A4();
  sub_24DCB58C4();

  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC434B0(uint64_t a1)
{
  sub_24DCB58C4();

  sub_24DCB4D44();
}

uint64_t sub_24DC4351C(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DCB58C4();

  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC4359C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24DC43BD0(*a1);
  *a2 = result;
  return result;
}

GRPCCoreInternal::Status::Code_optional __swiftcall Status.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = v1;
  if (rawValue > 0xFF || (result.value.wrapped = sub_24DC43BD0(rawValue), result.value.wrapped == GRPCCoreInternal_Status_Code_Wrapped_unknownDefault))
  {
    result.value.wrapped = GRPCCoreInternal_Status_Code_Wrapped_unknownDefault;
  }

  v2->value.wrapped = result.value.wrapped;
  return result;
}

uint64_t Status.Code.hashValue.getter()
{
  sub_24DCB58A4();
  sub_24DCB58C4();
  return sub_24DCB58F4();
}

unint64_t sub_24DC437B0()
{
  result = qword_27F19EF68;
  if (!qword_27F19EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF68);
  }

  return result;
}

uint64_t Status.init(httpStatusCode:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 > 428)
  {
    if (a1 > 502)
    {
      if (a1 == 503)
      {
        v3 = 0x800000024DCC54C0;
        type metadata accessor for Status.Storage();
        result = swift_allocObject();
        v5 = 0xD00000000000001DLL;
        v6 = 14;
        goto LABEL_21;
      }

      if (a1 == 504)
      {
        v3 = 0x800000024DCC54A0;
        type metadata accessor for Status.Storage();
        result = swift_allocObject();
        v5 = 0xD000000000000019;
        v6 = 14;
        goto LABEL_21;
      }
    }

    else
    {
      if (a1 == 429)
      {
        v3 = 0x800000024DCC5500;
        type metadata accessor for Status.Storage();
        result = swift_allocObject();
        v5 = 0xD00000000000001BLL;
        v6 = 14;
        goto LABEL_21;
      }

      if (a1 == 502)
      {
        v3 = 0x800000024DCC54E0;
        type metadata accessor for Status.Storage();
        result = swift_allocObject();
        v5 = 0xD000000000000015;
        v6 = 14;
        goto LABEL_21;
      }
    }

LABEL_20:
    v7 = sub_24DCB5744();
    MEMORY[0x253035590](v7);

    v5 = 0x2050545448;
    v3 = 0xE500000000000000;
    type metadata accessor for Status.Storage();
    result = swift_allocObject();
    v6 = 2;
    goto LABEL_21;
  }

  if (a1 > 402)
  {
    if (a1 == 403)
    {
      v5 = 0xD000000000000013;
      v3 = 0x800000024DCC5540;
      type metadata accessor for Status.Storage();
      v6 = 7;
      result = swift_allocObject();
      goto LABEL_21;
    }

    if (a1 == 404)
    {
      v5 = 0xD000000000000013;
      v3 = 0x800000024DCC5520;
      type metadata accessor for Status.Storage();
      result = swift_allocObject();
      v6 = 12;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (a1 == 400)
  {
    v3 = 0x800000024DCC5580;
    type metadata accessor for Status.Storage();
    result = swift_allocObject();
    v5 = 0xD000000000000015;
    v6 = 13;
    goto LABEL_21;
  }

  if (a1 != 401)
  {
    goto LABEL_20;
  }

  v3 = 0x800000024DCC5560;
  type metadata accessor for Status.Storage();
  result = swift_allocObject();
  v5 = 0xD000000000000016;
  v6 = 16;
LABEL_21:
  *(result + 16) = v6;
  *(result + 24) = v5;
  *(result + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_24DC43B88(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_24DCB57A4();
  }
}

uint64_t sub_24DC43BD0(uint64_t result)
{
  if (result >= 0x11u)
  {
    return 17;
  }

  else
  {
    return result;
  }
}

unint64_t sub_24DC43BE8()
{
  result = qword_27F19EF70;
  if (!qword_27F19EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF70);
  }

  return result;
}

unint64_t sub_24DC43C40()
{
  result = qword_27F19EF78;
  if (!qword_27F19EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF78);
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for Status(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for Status(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24DC43E0C()
{
  result = qword_27F1A2940[0];
  if (!qword_27F1A2940[0])
  {
    type metadata accessor for Status.Storage();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A2940);
  }

  return result;
}

uint64_t ServerCancellationManager.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(result + 16) = 0;
  *(result + 24) = v1;
  *(result + 32) = v1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t ServerCancellationManager.init()()
{
  result = v0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  return result;
}

uint64_t ServerCancellationManager.isRPCCancelled.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 48);
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

Swift::Void __swiftcall ServerCancellationManager.cancelRPC()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF80, &qword_24DCB98D0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - v3;
  v5 = type metadata accessor for ServerCancellationManager.Waiter(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v0 + 16));
  if (*(v0 + 48) == 1)
  {

    os_unfair_lock_unlock((v0 + 16));
  }

  else
  {
    *(v0 + 48) = 1;
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    v11 = MEMORY[0x277D84F90];
    *(v0 + 24) = MEMORY[0x277D84F90];
    *(v0 + 32) = v11;
    os_unfair_lock_unlock((v0 + 16));
    if (v10)
    {
      v23 = v2;
      v24 = v9;
      v12 = *(v10 + 16);
      if (v12)
      {
        v13 = v10 + 48;
        do
        {
          v14 = *(v13 - 8);

          v14(v15);

          v13 += 24;
          --v12;
        }

        while (v12);
      }

      v16 = *(v24 + 16);
      if (v16)
      {
        v17 = v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v18 = *(v6 + 72);
        v19 = (v23 + 32);
        v20 = (v23 + 8);
        do
        {
          sub_24DC46B0C(v17, v8, type metadata accessor for ServerCancellationManager.Waiter);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF88, &qword_24DCB98D8);
            (*v19)(v4, &v8[*(v21 + 48)], v1);
            v25 = 0;
            sub_24DCB50F4();
            (*v20)(v4, v1);
          }

          v17 += v18;
          --v16;
        }

        while (v16);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_24DC44210()
{
  if (*(v0 + 24))
  {
    return 0;
  }

  *(v0 + 24) = 1;
  result = *v0;
  v2 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = v2;
  return result;
}

uint64_t ServerCancellationManager.addRPCCancelledHandler(_:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_lock((v3 + 16));
  if (*(v3 + 48) == 1)
  {
    a1();
    v6 = 0;
  }

  else
  {
    v6 = *(v3 + 40);
    *(v3 + 40) = v6 + 1;
    v7 = *(v3 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 24) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24DC45F7C(0, *(v7 + 2) + 1, 1, v7);
      *(v3 + 24) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24DC45F7C((v9 > 1), v10 + 1, 1, v7);
      *(v3 + 24) = v7;
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[24 * v10];
    *(v11 + 4) = v6;
    *(v11 + 5) = a1;
    *(v11 + 6) = a2;
  }

  os_unfair_lock_unlock((v3 + 16));
  return v6;
}

uint64_t sub_24DC44368(void (*a1)(void), uint64_t a2)
{
  if (*(v2 + 24) == 1)
  {
    a1();
    return 0;
  }

  else
  {
    v5 = *(v2 + 16);
    *(v2 + 16) = v5 + 1;
    v6 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_24DC45F7C(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_24DC45F7C((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[24 * v8];
    *(v9 + 4) = v5;
    *(v9 + 5) = a1;
    *(v9 + 6) = a2;
    *v2 = v6;
  }

  return v5;
}

Swift::Void __swiftcall ServerCancellationManager.removeRPCCancelledHandler(withID:)(Swift::UInt64 withID)
{
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 32);
    while (1)
    {
      v7 = *v6;
      v6 += 3;
      if (v7 == withID)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_7;
      }
    }

    sub_24DC45C08(v5);
  }

LABEL_7:

  os_unfair_lock_unlock((v1 + 16));
}

uint64_t sub_24DC444E0(uint64_t result)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (*v1 + 32);
    while (1)
    {
      v5 = *v4;
      v4 += 3;
      if (v5 == result)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return result;
      }
    }

    sub_24DC45C08(v3);
  }

  return result;
}

uint64_t _s16GRPCCoreInternal25ServerCancellationManagerC26suspendUntilRPCIsCancelledyyYaScEYKF(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_24DC44564, 0, 0);
}

uint64_t sub_24DC44564()
{
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 40);
  *(v1 + 40) = v2 + 1;
  os_unfair_lock_unlock((v1 + 16));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_24DC4468C;

  return MEMORY[0x282200830](v0 + 7, &unk_24DCB98F0, v3, sub_24DC46148, v4, 0, 0, &type metadata for ServerCancellationManager.CancellationSource);
}

uint64_t sub_24DC4468C()
{

  if (v0)
  {

    JUMPOUT(0x2530363B0);
  }

  return MEMORY[0x2822009F8](sub_24DC447D0, 0, 0);
}

uint64_t sub_24DC447D0()
{
  if (*(v0 + 56) == 1)
  {
    sub_24DCB4CA4();
    sub_24DCB5114();
    sub_24DC46150();
    swift_willThrowTypedImpl();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC44874()
{
  result = *(v0 + 16);
  *(v0 + 16) = result + 1;
  return result;
}

uint64_t sub_24DC44884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24DC448A8, 0, 0);
}

uint64_t sub_24DC448A8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_24DC449A0;
  v5 = v0[2];

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD00000000000001CLL, 0x800000024DCC56A0, sub_24DC46B04, v3, &type metadata for ServerCancellationManager.CancellationSource);
}

uint64_t sub_24DC449A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC44AB4(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF80, &qword_24DCB98D0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-v8];
  v10 = type metadata accessor for ServerCancellationManager.State.OnAddWaiter(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v19[-v14];
  os_unfair_lock_lock(a2 + 4);
  sub_24DC44CDC(a1, a3, v15);
  os_unfair_lock_unlock(a2 + 4);
  sub_24DC46B0C(v15, v13, type metadata accessor for ServerCancellationManager.State.OnAddWaiter);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF98, &qword_24DCB98F8);
  if ((*(*(v16 - 8) + 48))(v13, 1, v16) != 1)
  {
    v17 = v13[*(v16 + 48)];
    (*(v7 + 32))(v9, v13, v6);
    v19[15] = v17;
    sub_24DCB50F4();
    (*(v7 + 8))(v9, v6);
  }

  return sub_24DC46B74(v15);
}

uint64_t sub_24DC44CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v6 = type metadata accessor for ServerCancellationManager.Waiter(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v50 - v11);
  MEMORY[0x28223BE20](v10);
  v16 = (&v50 - v15);
  if (*(v3 + 24) == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF98, &qword_24DCB98F8);
    v18 = *(v17 + 48);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF80, &qword_24DCB98D0);
    (*(*(v19 - 8) + 16))(a3, a1, v19);
    *(a3 + v18) = 0;
    v20 = *(*(v17 - 8) + 56);

    return v20(a3, 0, 1, v17);
  }

  else
  {
    v51 = v14;
    v52 = v13;
    v54 = a1;
    v55 = a3;
    v53 = v3;
    v22 = *(v3 + 8);
    v23 = v22[2];
    if (v23)
    {
      v24 = 0;
      v25 = v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      while (1)
      {
        if (v24 >= v22[2])
        {
          __break(1u);
          goto LABEL_20;
        }

        v26 = &v25[*(v7 + 72) * v24];
        sub_24DC46B0C(v26, v16, type metadata accessor for ServerCancellationManager.Waiter);
        sub_24DC461A8(v16, v12);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v28 = *v12;
        if (EnumCaseMultiPayload != 1)
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF88, &qword_24DCB98D8);
          v56 = v26;
          v30 = v16;
          v31 = v25;
          v32 = v23;
          v33 = v22;
          v34 = v6;
          v35 = v7;
          v36 = *(v29 + 48);
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF80, &qword_24DCB98D0);
          v38 = v12 + v36;
          v7 = v35;
          v6 = v34;
          v22 = v33;
          v23 = v32;
          v25 = v31;
          v16 = v30;
          v26 = v56;
          (*(*(v37 - 8) + 8))(v38, v37);
        }

        if (v28 == v57)
        {
          break;
        }

        if (v23 == ++v24)
        {
          goto LABEL_12;
        }
      }

      if (v24 >= v22[2])
      {
        __break(1u);
      }

      else
      {
        sub_24DC46B0C(v26, v51, type metadata accessor for ServerCancellationManager.Waiter);
        v44 = swift_getEnumCaseMultiPayload();
        v46 = v54;
        v45 = v55;
        if (v44 == 1)
        {
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF98, &qword_24DCB98F8);
          v48 = *(v47 + 48);
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF80, &qword_24DCB98D0);
          (*(*(v49 - 8) + 16))(v45, v46, v49);
          *(v45 + v48) = 1;
          return (*(*(v47 - 8) + 56))(v45, 0, 1, v47);
        }
      }

      result = sub_24DCB55E4();
      __break(1u);
    }

    else
    {
LABEL_12:
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF88, &qword_24DCB98D8) + 48);
      v16 = v52;
      *v52 = v57;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF80, &qword_24DCB98D0);
      (*(*(v40 - 8) + 16))(v16 + v39, v54, v40);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_20:
        v22 = sub_24DC4620C(0, v22[2] + 1, 1, v22);
      }

      v42 = v22[2];
      v41 = v22[3];
      if (v42 >= v41 >> 1)
      {
        v22 = sub_24DC4620C((v41 > 1), v42 + 1, 1, v22);
      }

      v22[2] = v42 + 1;
      sub_24DC461A8(v16, v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v42);
      *(v53 + 8) = v22;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF98, &qword_24DCB98F8);
      return (*(*(v43 - 8) + 56))(v55, 1, 1, v43);
    }
  }

  return result;
}

uint64_t sub_24DC4529C(os_unfair_lock_s *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF80, &qword_24DCB98D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-v6];
  v8 = type metadata accessor for ServerCancellationManager.State.OnCancelRPCCancellationWaiter(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  os_unfair_lock_lock(a1 + 4);
  sub_24DC4546C(a2, v10);
  os_unfair_lock_unlock(a1 + 4);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF98, &qword_24DCB98F8);
  result = (*(*(v11 - 8) + 48))(v10, 1, v11);
  if (result != 1)
  {
    v13 = v10[*(v11 + 48)];
    (*(v5 + 32))(v7, v10, v4);
    v14[15] = v13;
    sub_24DCB50F4();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_24DC4546C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v55 = a2;
  v4 = type metadata accessor for ServerCancellationManager.Waiter(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v54 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v51 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v51 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v51 - v13);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = *(v2 + 8);
  v56 = (v2 + 8);
  v18 = v17[2];
  if (v18)
  {
    v19 = 0;
    v51 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20 = v17 + v51;
    v57 = &v51 - v15;
    while (1)
    {
      if (v19 >= v17[2])
      {
        __break(1u);
        goto LABEL_22;
      }

      v21 = *(v5 + 72);
      sub_24DC46B0C(&v20[v21 * v19], v16, type metadata accessor for ServerCancellationManager.Waiter);
      sub_24DC461A8(v16, v14);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v3 = *v14;
      if (EnumCaseMultiPayload != 1)
      {
        v23 = v21;
        v24 = v20;
        v25 = v18;
        v26 = v17;
        v27 = v5;
        v28 = v4;
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF88, &qword_24DCB98D8) + 48);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF80, &qword_24DCB98D0);
        v31 = v14 + v29;
        v4 = v28;
        v5 = v27;
        v17 = v26;
        v18 = v25;
        v20 = v24;
        v21 = v23;
        v16 = v57;
        (*(*(v30 - 8) + 8))(v31, v30);
      }

      if (v3 == v58)
      {
        break;
      }

      if (v18 == ++v19)
      {
        goto LABEL_8;
      }
    }

    v37 = v56;
    v38 = *(*v56 + 16) - 1;
    if (v38 == v19)
    {
      v39 = v52;
      sub_24DC45CAC(v19, v52);
      v40 = v53;
LABEL_19:
      sub_24DC461A8(v39, v40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_12;
      }

      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF88, &qword_24DCB98D8) + 48);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF98, &qword_24DCB98F8);
      v47 = *(v46 + 48);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF80, &qword_24DCB98D0);
      v49 = v40 + v45;
      v50 = v55;
      (*(*(v48 - 8) + 32))(v55, v49, v48);
      *(v50 + v47) = 1;
      return (*(*(v46 - 8) + 56))(v50, 0, 1, v46);
    }

    sub_24DC45DCC(v19, v38);
    v41 = *v37;
    v39 = v52;
    v40 = v53;
    if (*(*v37 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v42 = v41[2];
        if (v42)
        {
LABEL_18:
          v43 = v42 - 1;
          v44 = v41 + v51 + v43 * v21;
          v41[2] = v43;
          *v37 = v41;
          sub_24DC461A8(v44, v39);
          goto LABEL_19;
        }

LABEL_25:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_24DC46A8C(v41);
    v41 = result;
    v42 = *(result + 16);
    if (v42)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_8:
  v3 = v54;
  *v54 = v58;
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_22:
    v17 = sub_24DC4620C(0, v17[2] + 1, 1, v17);
  }

  v32 = v56;
  v34 = v17[2];
  v33 = v17[3];
  if (v34 >= v33 >> 1)
  {
    v17 = sub_24DC4620C((v33 > 1), v34 + 1, 1, v17);
  }

  v17[2] = v34 + 1;
  sub_24DC461A8(v3, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v34);
  *v32 = v17;
LABEL_12:
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF98, &qword_24DCB98F8);
  return (*(*(v35 - 8) + 56))(v55, 1, 1, v35);
}

uint64_t ServerCancellationManager.__deallocating_deinit()
{
  sub_24DC463E4(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t sub_24DC459D8(char a1)
{
  sub_24DCB58A4();
  MEMORY[0x253035FF0](a1 & 1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC45A74(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_24DC45ACC()
{
  v1 = type metadata accessor for ServerCancellationManager.Waiter(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DC46B0C(v0, v3, type metadata accessor for ServerCancellationManager.Waiter);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload != 1)
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF88, &qword_24DCB98D8) + 48);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF80, &qword_24DCB98D0);
    (*(*(v7 - 8) + 8))(&v3[v6], v7);
  }

  return v5;
}

uint64_t sub_24DC45C08(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24DC46A78(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_24DC45CAC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24DC46A8C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for ServerCancellationManager.Waiter(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_24DC461A8(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24DC45DCC(unint64_t a1, unint64_t a2)
{
  v8 = type metadata accessor for ServerCancellationManager.Waiter(0) - 8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v15 = &v18 - v14;
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > a1)
      {
        v4 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v16 = *(v13 + 72);
        a1 *= v16;
        sub_24DC46B0C(v3 + v4 + a1, &v18 - v14, type metadata accessor for ServerCancellationManager.Waiter);
        if (v5 > a2)
        {
          v5 = v16 * a2;
          sub_24DC46B0C(v3 + v4 + v16 * a2, v11, type metadata accessor for ServerCancellationManager.Waiter);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        v3 = sub_24DC46A8C(v3);
LABEL_6:
        v17 = v3 + v4;
        result = sub_24DC46AA0(v11, &v17[a1]);
        if (v3[2] <= a2)
        {
          __break(1u);
        }

        else
        {
          result = sub_24DC46AA0(v15, &v17[v5]);
          *v2 = v3;
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

char *sub_24DC45F7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EFC8, &qword_24DCB9AE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_24DC4609C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24DC2FD00;

  return sub_24DC44884(a1, v5, v4);
}

unint64_t sub_24DC46150()
{
  result = qword_27F19EF90;
  if (!qword_27F19EF90)
  {
    sub_24DCB5114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EF90);
  }

  return result;
}

uint64_t sub_24DC461A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerCancellationManager.Waiter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_24DC4620C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EFC0, &qword_24DCB9AE0);
  v10 = *(type metadata accessor for ServerCancellationManager.Waiter(0) - 8);
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
  v15 = *(type metadata accessor for ServerCancellationManager.Waiter(0) - 8);
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

unint64_t sub_24DC46418()
{
  result = qword_27F19EFA0;
  if (!qword_27F19EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EFA0);
  }

  return result;
}

uint64_t sub_24DC464BC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EFA8, &unk_24DCB99D0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_24DC4655C(uint64_t a1)
{
  sub_24DC465C4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_24DC465C4(uint64_t a1)
{
  if (!qword_27F19EFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19EF80, &qword_24DCB98D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F19EFB0);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24DC4664C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24DC46694(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16GRPCCoreInternal25ServerCancellationManagerC5StateV11OnCancelRPCO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24DC46700(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DC46750(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_24DC467A4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void sub_24DC46828(uint64_t a1)
{
  if (!qword_27F19EFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19EF80, &qword_24DCB98D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F19EFB8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF98, &qword_24DCB98F8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EF98, &qword_24DCB98F8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24DC469E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DC46A20(uint64_t a1)
{
  sub_24DC46828(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_24DC46AA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerCancellationManager.Waiter(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DC46B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DC46B74(uint64_t a1)
{
  v2 = type metadata accessor for ServerCancellationManager.State.OnAddWaiter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void default argument 0 of MethodConfigs.init(serviceConfig:)(GRPCCoreInternal::ServiceConfig *a1@<X8>)
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 1;
  v2 = sub_24DC6512C();
  v3 = sub_24DC6512C();
  v6.value.maxTokens = v4;
  ServiceConfig.init(methodConfig:loadBalancingConfig:retryThrottling:)(a1, v2, v3, v6);
}

GRPCCoreInternal::MethodConfigs __swiftcall MethodConfigs.init(serviceConfig:)(GRPCCoreInternal::ServiceConfig *serviceConfig)
{
  v2 = v1;
  rawValue = serviceConfig->methodConfig._rawValue;
  v4 = sub_24DC49498(MEMORY[0x277D84F90]);

  v5 = rawValue;
  v58 = rawValue[2];
  if (!v58)
  {
LABEL_22:

LABEL_24:
    *v2 = v4;
    return result;
  }

  v55 = v2;
  v56 = rawValue;
  v6 = 0;
  v57 = (rawValue + 4);
  while (1)
  {
    v7 = &v57[136 * v6];
    v63 = *v7;
    v8 = *(v7 + 1);
    v9 = *(v7 + 2);
    v10 = *(v7 + 4);
    v66 = *(v7 + 3);
    v67 = v10;
    v64 = v8;
    v65 = v9;
    v11 = *(v7 + 5);
    v12 = *(v7 + 6);
    v13 = *(v7 + 7);
    v71 = v7[128];
    v69 = v12;
    v70 = v13;
    v68 = v11;
    v14 = v63;
    v60 = *(v63 + 16);
    if (v60)
    {
      break;
    }

LABEL_19:
    if (++v6 == v58)
    {

      v2 = v55;
      goto LABEL_24;
    }

    if (v6 >= v5[2])
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  v59 = v6;
  sub_24DC3C4DC(&v63, v61);

  v2 = 0;
  v15 = (v14 + 56);
  while (v2 < *(v14 + 16))
  {
    v31 = *(v15 - 3);
    v30 = *(v15 - 2);
    v33 = *(v15 - 1);
    v32 = *v15;
    sub_24DC3C4DC(&v63, v61);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = sub_24DC48498(v31, v30, v33, v32);
    v37 = v4[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      goto LABEL_26;
    }

    v41 = v36;
    if (v4[3] < v40)
    {
      sub_24DC48608(v40, isUniquelyReferenced_nonNull_native);
      v35 = sub_24DC48498(v31, v30, v33, v32);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_28;
      }

LABEL_13:
      if (v41)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v53 = v35;
    sub_24DC48F30();
    v35 = v53;
    if (v41)
    {
LABEL_5:
      v16 = v35;

      v17 = v4[7] + 136 * v16;
      v61[0] = *v17;
      v18 = *(v17 + 64);
      v20 = *(v17 + 16);
      v19 = *(v17 + 32);
      v61[3] = *(v17 + 48);
      v61[4] = v18;
      v61[1] = v20;
      v61[2] = v19;
      v22 = *(v17 + 96);
      v21 = *(v17 + 112);
      v23 = *(v17 + 80);
      v62 = *(v17 + 128);
      v61[6] = v22;
      v61[7] = v21;
      v61[5] = v23;
      *v17 = v63;
      v24 = v64;
      v25 = v65;
      v26 = v67;
      *(v17 + 48) = v66;
      *(v17 + 64) = v26;
      *(v17 + 16) = v24;
      *(v17 + 32) = v25;
      v27 = v68;
      v28 = v69;
      v29 = v70;
      *(v17 + 128) = v71;
      *(v17 + 96) = v28;
      *(v17 + 112) = v29;
      *(v17 + 80) = v27;
      sub_24DC3C514(v61);
      goto LABEL_6;
    }

LABEL_14:
    v4[(v35 >> 6) + 8] |= 1 << v35;
    v43 = (v4[6] + 32 * v35);
    *v43 = v31;
    v43[1] = v30;
    v43[2] = v33;
    v43[3] = v32;
    v44 = v4[7] + 136 * v35;
    v45 = v71;
    v47 = v69;
    v46 = v70;
    *(v44 + 80) = v68;
    *(v44 + 96) = v47;
    *(v44 + 112) = v46;
    *(v44 + 128) = v45;
    v49 = v66;
    v48 = v67;
    v50 = v65;
    *(v44 + 16) = v64;
    *(v44 + 32) = v50;
    *(v44 + 48) = v49;
    *(v44 + 64) = v48;
    *v44 = v63;
    v51 = v4[2];
    v39 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v39)
    {
      goto LABEL_27;
    }

    v4[2] = v52;
LABEL_6:
    v2 = (v2 + 1);

    v15 += 4;
    if (v60 == v2)
    {
      sub_24DC3C514(&v63);

      v5 = v56;
      v6 = v59;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result.elements._rawValue = sub_24DCB5824();
  __break(1u);
  return result;
}

uint64_t sub_24DC46F94(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1[7];
  v23[6] = a1[6];
  v23[7] = v11;
  v24 = *(a1 + 128);
  v12 = a1[3];
  v23[2] = a1[2];
  v23[3] = v12;
  v13 = a1[5];
  v23[4] = a1[4];
  v23[5] = v13;
  v14 = a1[1];
  v23[0] = *a1;
  v23[1] = v14;
  if (sub_24DC49638(v23) == 1)
  {
    sub_24DC48508(a2, a3, a4, a5, v21);

    v31 = v21[6];
    v32 = v21[7];
    v33 = v22;
    v27 = v21[2];
    v28 = v21[3];
    v29 = v21[4];
    v30 = v21[5];
    v25 = v21[0];
    v26 = v21[1];
    return sub_24DC49650(&v25);
  }

  else
  {
    v16 = a1[7];
    v31 = a1[6];
    v32 = v16;
    v33 = *(a1 + 128);
    v17 = a1[3];
    v27 = a1[2];
    v28 = v17;
    v18 = a1[5];
    v29 = a1[4];
    v30 = v18;
    v19 = a1[1];
    v25 = *a1;
    v26 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v21[0] = *v5;
    sub_24DC48C4C(&v25, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = *&v21[0];
  }

  return result;
}

uint64_t MethodConfigs.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *v2;

  v9._countAndFlagsBits = v4;
  v9._object = v5;
  v10._countAndFlagsBits = v6;
  v10._object = v7;
  MethodConfig.Name.init(service:method:)(v9, v10);
  if (*(v8 + 16) && (v11 = sub_24DC48498(v31, v32, v33, v34), (v12 & 1) != 0) || (, v33 = 0, v34 = 0xE000000000000000, *(v8 + 16)) && (v11 = sub_24DC48498(v31, v32, 0, 0xE000000000000000), (v24 & 1) != 0))
  {
    v13 = (*(v8 + 56) + 136 * v11);
    v27[0] = *v13;
    v14 = v13[3];
    v15 = v13[4];
    v16 = v13[2];
    v27[1] = v13[1];
    v27[2] = v16;
    v27[3] = v14;
    v27[4] = v15;
    v17 = v13[5];
    v18 = v13[6];
    v19 = v13[7];
    v28 = *(v13 + 128);
    v27[6] = v18;
    v27[7] = v19;
    v27[5] = v17;
    memmove(__dst, v13, 0x81uLL);
    nullsub_1();
    v20 = __dst[7];
    *(a2 + 96) = __dst[6];
    *(a2 + 112) = v20;
    *(a2 + 128) = v30;
    v21 = __dst[3];
    *(a2 + 32) = __dst[2];
    *(a2 + 48) = v21;
    v22 = __dst[5];
    *(a2 + 64) = __dst[4];
    *(a2 + 80) = v22;
    v23 = __dst[1];
    *a2 = __dst[0];
    *(a2 + 16) = v23;
    sub_24DC3C4DC(v27, v26);
  }

  else
  {
    MethodConfig.Name.service.setter(0, 0xE000000000000000);
    sub_24DC47668(v31, v32, v33, v34, v8, a2);
  }
}

__n128 sub_24DC4734C@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v12[3] = a2[3];
  v12[4] = v4;
  v12[0] = v5;
  v12[1] = v6;
  v12[2] = v7;

  MethodConfigs.subscript.getter(v12, v13);

  v8 = v13[7];
  *(a3 + 96) = v13[6];
  *(a3 + 112) = v8;
  *(a3 + 128) = v14;
  v9 = v13[3];
  *(a3 + 32) = v13[2];
  *(a3 + 48) = v9;
  v10 = v13[5];
  *(a3 + 64) = v13[4];
  *(a3 + 80) = v10;
  result = v13[1];
  *a3 = v13[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_24DC47404(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v7;
  v16 = *(a1 + 128);
  v8 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v8;
  v9 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v9;
  v10 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v10;
  sub_24DC4982C(v15, v14, &qword_27F19EFD0, &qword_24DCB9AF0);

  v11._countAndFlagsBits = v3;
  v11._object = v4;
  v12._countAndFlagsBits = v5;
  v12._object = v6;
  MethodConfig.Name.init(service:method:)(v11, v12);
  return sub_24DC46F94(v15, v14[0], v14[1], v14[2], v14[3]);
}

uint64_t MethodConfigs.subscript.setter(__int128 *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];

  v8._countAndFlagsBits = v4;
  v8._object = v5;
  v9._countAndFlagsBits = v6;
  v9._object = v7;
  MethodConfig.Name.init(service:method:)(v8, v9);

  v10 = v33;
  v11 = v34;
  v12 = a1[7];
  v39 = a1[6];
  v40 = v12;
  v41 = *(a1 + 128);
  v13 = a1[3];
  v35 = a1[2];
  v36 = v13;
  v14 = a1[5];
  v37 = a1[4];
  v38 = v14;
  v15 = a1[1];
  v33 = *a1;
  v34 = v15;
  if (sub_24DC49638(&v33) == 1)
  {
    sub_24DC48508(v10, *(&v10 + 1), v11, *(&v11 + 1), v22);

    v30 = v22[6];
    v31 = v22[7];
    v32 = v23;
    v26 = v22[2];
    v27 = v22[3];
    v28 = v22[4];
    v29 = v22[5];
    v24 = v22[0];
    v25 = v22[1];
    return sub_24DC49650(&v24);
  }

  else
  {
    v17 = a1[7];
    v30 = a1[6];
    v31 = v17;
    v32 = *(a1 + 128);
    v18 = a1[3];
    v26 = a1[2];
    v27 = v18;
    v19 = a1[5];
    v28 = a1[4];
    v29 = v19;
    v20 = a1[1];
    v24 = *a1;
    v25 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v22[0] = *v2;
    sub_24DC48C4C(&v24, v10, *(&v10 + 1), v11, *(&v11 + 1), isUniquelyReferenced_nonNull_native);

    *v2 = *&v22[0];
  }

  return result;
}

__n128 sub_24DC47668@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X8>)
{
  if (*(a5 + 16) && (v8 = sub_24DC48498(a1, a2, a3, a4), (v9 & 1) != 0))
  {
    v10 = (*(a5 + 56) + 136 * v8);
    v22 = *v10;
    v11 = v10[4];
    v13 = v10[1];
    v12 = v10[2];
    v25 = v10[3];
    v26 = v11;
    v23 = v13;
    v24 = v12;
    v15 = v10[6];
    v14 = v10[7];
    v16 = v10[5];
    v30 = v10[8].n128_u8[0];
    v28 = v15;
    v29 = v14;
    v27 = v16;
    memmove(a6, v10, 0x81uLL);
    nullsub_1();
    sub_24DC3C4DC(&v22, v21);
  }

  else
  {
    sub_24DC49810(&v22);
    v18 = v29;
    a6[6] = v28;
    a6[7] = v18;
    a6[8].n128_u8[0] = v30;
    v19 = v25;
    a6[2] = v24;
    a6[3] = v19;
    v20 = v27;
    a6[4] = v26;
    a6[5] = v20;
    result = v23;
    *a6 = v22;
    a6[1] = result;
  }

  return result;
}

void (*MethodConfigs.subscript.modify(void *a1, uint64_t *a2))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x358uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[102] = v2;
  v7 = *a2;
  v8 = a2[1];
  v5[103] = *a2;
  v5[104] = v8;
  v9 = a2[2];
  v10 = a2[3];
  v5[105] = v9;
  v5[106] = v10;
  v11 = *v2;
  v13[3] = v10;
  v13[4] = v11;
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  MethodConfigs.subscript.getter(v13, (v6 + 34));

  return sub_24DC47824;
}

void sub_24DC47824(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 408;
  v4 = *(*a1 + 848);
  v5 = *(*a1 + 840);
  v6 = *(*a1 + 832);
  v7 = *(*a1 + 824);
  if (a2)
  {
    v8 = (v2 + 680);
    v9 = v2[24];
    v2[40] = v2[23];
    v2[41] = v9;
    *(v2 + 672) = *(v2 + 400);
    v10 = v2[20];
    v2[36] = v2[19];
    v2[37] = v10;
    v11 = v2[22];
    v2[38] = v2[21];
    v2[39] = v11;
    v12 = v2[18];
    v2[34] = v2[17];
    v2[35] = v12;

    sub_24DC4982C((v2 + 34), v2 + 680, &qword_27F19EFD0, &qword_24DCB9AF0);

    v13._countAndFlagsBits = v7;
    v13._object = v6;
    v14._countAndFlagsBits = v5;
    v14._object = v4;
    MethodConfig.Name.init(service:method:)(v13, v14);

    v15 = v57;
    v16 = v58;
    v17 = v2[41];
    *(v3 + 96) = v2[40];
    *(v3 + 112) = v17;
    *(v3 + 128) = *(v2 + 672);
    v18 = v2[37];
    *(v3 + 32) = v2[36];
    *(v3 + 48) = v18;
    v19 = v2[39];
    *(v3 + 64) = v2[38];
    *(v3 + 80) = v19;
    v20 = v2[35];
    *v3 = v2[34];
    *(v3 + 16) = v20;
    v21 = sub_24DC49638(v3);
    v22 = *(v2 + 102);
    if (v21 == 1)
    {
      sub_24DC48508(v15, *(&v15 + 1), v16, *(&v16 + 1), &v57);

      v23 = v64;
      *(v2 + 776) = v63;
      *(v2 + 792) = v23;
      *(v2 + 808) = v65;
      v24 = v60;
      *(v2 + 712) = v59;
      *(v2 + 728) = v24;
      v25 = v62;
      *(v2 + 744) = v61;
      *(v2 + 760) = v25;
      v26 = v58;
      *v8 = v57;
      *(v2 + 696) = v26;
      sub_24DC49650(v2 + 680);
    }

    else
    {
      v38 = v2[41];
      v2[6] = v2[40];
      v2[7] = v38;
      *(v2 + 128) = *(v2 + 672);
      v39 = v2[37];
      v2[2] = v2[36];
      v2[3] = v39;
      v40 = v2[39];
      v2[4] = v2[38];
      v2[5] = v40;
      v41 = v2[35];
      *v2 = v2[34];
      v2[1] = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v57 = *v22;
      sub_24DC48C4C(v2, v15, *(&v15 + 1), v16, *(&v16 + 1), isUniquelyReferenced_nonNull_native);

      *v22 = v57;
    }

    v43 = v2[24];
    *(v2 + 776) = v2[23];
    *(v2 + 792) = v43;
    *(v2 + 808) = *(v2 + 400);
    v44 = v2[20];
    *(v2 + 712) = v2[19];
    *(v2 + 728) = v44;
    v45 = v2[22];
    *(v2 + 744) = v2[21];
    *(v2 + 760) = v45;
    v46 = v2[18];
    *v8 = v2[17];
    *(v2 + 696) = v46;
    v37 = v2 + 680;
    goto LABEL_8;
  }

  v54 = v2[23];
  v55 = v2[24];
  v56 = *(v2 + 400);
  v50 = v2[19];
  v51 = v2[20];
  v52 = v2[21];
  v53 = v2[22];
  v48 = v2[17];
  v49 = v2[18];

  v27._countAndFlagsBits = v7;
  v27._object = v6;
  v28._countAndFlagsBits = v5;
  v28._object = v4;
  MethodConfig.Name.init(service:method:)(v27, v28);

  v29 = v57;
  v30 = v58;
  *(v3 + 96) = v54;
  *(v3 + 112) = v55;
  *(v3 + 128) = v56;
  *(v3 + 32) = v50;
  *(v3 + 48) = v51;
  *(v3 + 64) = v52;
  *(v3 + 80) = v53;
  *v3 = v48;
  *(v3 + 16) = v49;
  v31 = sub_24DC49638(v3);
  v32 = *(v2 + 102);
  if (v31 == 1)
  {
    sub_24DC48508(v29, *(&v29 + 1), v30, *(&v30 + 1), &v57);

    v33 = v64;
    v2[40] = v63;
    v2[41] = v33;
    *(v2 + 672) = v65;
    v34 = v60;
    v2[36] = v59;
    v2[37] = v34;
    v35 = v62;
    v2[38] = v61;
    v2[39] = v35;
    v36 = v58;
    v2[34] = v57;
    v2[35] = v36;
    v37 = (v2 + 34);
LABEL_8:
    sub_24DC49650(v37);
    goto LABEL_10;
  }

  *(v2 + 216) = v53;
  *(v2 + 232) = v54;
  *(v2 + 248) = v55;
  *(v2 + 152) = v49;
  *(v2 + 168) = v50;
  *(v2 + 184) = v51;
  *(v2 + 200) = v52;
  *(v2 + 264) = v56;
  *(v2 + 136) = v48;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *&v57 = *v32;
  sub_24DC48C4C(v2 + 136, v29, *(&v29 + 1), v30, *(&v30 + 1), v47);

  *v32 = v57;
LABEL_10:

  free(v2);
}

uint64_t MethodConfigs.setDefaultConfig(_:)(__int128 *a1)
{
  v2 = a1[7];
  v29 = a1[6];
  v30 = v2;
  v31 = *(a1 + 128);
  v3 = a1[3];
  v25 = a1[2];
  v26 = v3;
  v4 = a1[5];
  v27 = a1[4];
  v28 = v4;
  v5 = a1[1];
  v23 = *a1;
  v24 = v5;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  MethodConfig.Name.init(service:method:)(v6, v7);
  v8 = v32;
  v9 = v33;
  v38 = v29;
  v39 = v30;
  v40 = v31;
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v37 = v28;
  v32 = v23;
  v33 = v24;
  if (sub_24DC49638(&v32) == 1)
  {
    sub_24DC48508(v8, *(&v8 + 1), v9, *(&v9 + 1), v12);

    v20 = v12[6];
    v21 = v12[7];
    v22 = v13;
    v16 = v12[2];
    v17 = v12[3];
    v18 = v12[4];
    v19 = v12[5];
    v14 = v12[0];
    v15 = v12[1];
    return sub_24DC49650(&v14);
  }

  else
  {
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v16 = v25;
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v14 = v23;
    v15 = v24;
    sub_24DC4982C(&v23, v12, &qword_27F19EFD0, &qword_24DCB9AF0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v12[0] = *v1;
    sub_24DC48C4C(&v14, v8, *(&v8 + 1), v9, *(&v9 + 1), isUniquelyReferenced_nonNull_native);

    *v1 = *&v12[0];
  }

  return result;
}

uint64_t MethodConfigs.setDefaultConfig(_:forService:)(__int128 *a1)
{
  v2 = a1[7];
  v29 = a1[6];
  v30 = v2;
  v31 = *(a1 + 128);
  v3 = a1[3];
  v25 = a1[2];
  v26 = v3;
  v4 = a1[5];
  v27 = a1[4];
  v28 = v4;
  v5 = a1[1];
  v23 = *a1;
  v24 = v5;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  MethodConfig.Name.init(service:method:)(v6, v7);
  v8 = v32;
  v9 = v33;
  v38 = v29;
  v39 = v30;
  v40 = v31;
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v37 = v28;
  v32 = v23;
  v33 = v24;
  if (sub_24DC49638(&v32) == 1)
  {
    sub_24DC48508(v8, *(&v8 + 1), v9, *(&v9 + 1), v12);

    v20 = v12[6];
    v21 = v12[7];
    v22 = v13;
    v16 = v12[2];
    v17 = v12[3];
    v18 = v12[4];
    v19 = v12[5];
    v14 = v12[0];
    v15 = v12[1];
    return sub_24DC49650(&v14);
  }

  else
  {
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v16 = v25;
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v14 = v23;
    v15 = v24;
    sub_24DC4982C(&v23, v12, &qword_27F19EFD0, &qword_24DCB9AF0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v12[0] = *v1;
    sub_24DC48C4C(&v14, v8, *(&v8 + 1), v9, *(&v9 + 1), isUniquelyReferenced_nonNull_native);

    *v1 = *&v12[0];
  }

  return result;
}

uint64_t sub_24DC47F68(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v42 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v45 = (v6 - 1) & v6;
      v8 = __clz(__rbit64(v6)) | (v2 << 6);
LABEL_15:
      v13 = (*(v42 + 48) + 32 * v8);
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = v13[3];
      v18 = *(v42 + 56) + 136 * v8;
      v52 = *v18;
      v19 = *(v18 + 64);
      v21 = *(v18 + 16);
      v20 = *(v18 + 32);
      v55 = *(v18 + 48);
      v56 = v19;
      v53 = v21;
      v54 = v20;
      v23 = *(v18 + 96);
      v22 = *(v18 + 112);
      v24 = *(v18 + 80);
      v60 = *(v18 + 128);
      v58 = v23;
      v59 = v22;
      v57 = v24;
      v66 = *(v18 + 80);
      v67 = *(v18 + 96);
      v68 = *(v18 + 112);
      v69 = *(v18 + 128);
      v62 = *(v18 + 16);
      v63 = *(v18 + 32);
      v64 = *(v18 + 48);
      v65 = *(v18 + 64);
      v61 = *v18;
      v70 = v14;
      v71 = v15;
      v72 = v16;
      v73 = v17;
      v82 = v69;
      v80 = v67;
      v81 = v68;
      v76 = v63;
      v77 = v64;
      v78 = v65;
      v79 = v66;
      v74 = v61;
      v75 = v62;
      nullsub_1();

      sub_24DC3C4DC(&v52, v50);
      v25 = v70;
      v26 = v71;
      v27 = v72;
      v28 = v73;
      v89 = v80;
      v90 = v81;
      v91 = v82;
      v85 = v76;
      v86 = v77;
      v87 = v78;
      v88 = v79;
      v30 = v74;
      v29 = v75;
      v44 = v2;
LABEL_16:
      v83 = v30;
      v84 = v29;
      v80 = v89;
      v81 = v90;
      v82 = v91;
      v76 = v85;
      v77 = v86;
      v78 = v87;
      v79 = v88;
      v74 = v30;
      v75 = v29;
      v70 = v25;
      v71 = v26;
      v72 = v27;
      v73 = v28;
      result = sub_24DC49730(&v70);
      if (result == 1)
      {
        break;
      }

      v67 = v89;
      v68 = v90;
      v69 = v91;
      v63 = v85;
      v64 = v86;
      v65 = v87;
      v66 = v88;
      v61 = v83;
      v62 = v84;
      v31 = sub_24DC48498(v25, v26, v27, v28);
      v33 = v32;

      if ((v33 & 1) == 0)
      {
        v58 = v67;
        v59 = v68;
        v60 = v69;
        v54 = v63;
        v55 = v64;
        v56 = v65;
        v57 = v66;
        v52 = v61;
        v53 = v62;
        sub_24DC3C514(&v52);
        return 0;
      }

      v34 = (*(a2 + 56) + 136 * v31);
      v48[0] = *v34;
      v35 = v34[4];
      v37 = v34[1];
      v36 = v34[2];
      v48[3] = v34[3];
      v48[4] = v35;
      v48[1] = v37;
      v48[2] = v36;
      v39 = v34[6];
      v38 = v34[7];
      v40 = v34[5];
      v49 = *(v34 + 128);
      v48[6] = v39;
      v48[7] = v38;
      v48[5] = v40;
      memmove(__dst, v34, 0x81uLL);
      sub_24DC3C4DC(v48, &v52);
      sub_24DC3CE60();
      v41 = sub_24DCB4DA4();
      v50[6] = __dst[6];
      v50[7] = __dst[7];
      v51 = v47;
      v50[2] = __dst[2];
      v50[3] = __dst[3];
      v50[4] = __dst[4];
      v50[5] = __dst[5];
      v50[0] = __dst[0];
      v50[1] = __dst[1];
      sub_24DC3C514(v50);
      v58 = v67;
      v59 = v68;
      v60 = v69;
      v54 = v63;
      v55 = v64;
      v56 = v65;
      v57 = v66;
      v52 = v61;
      v53 = v62;
      result = sub_24DC3C514(&v52);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      v2 = v44;
      v6 = v45;
      if (!v45)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v7 <= v2 + 1)
    {
      v9 = v2 + 1;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9 - 1;
    while (1)
    {
      v11 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        v44 = v10;
        sub_24DC497F0(&v70);
        v45 = 0;
        v25 = v70;
        v26 = v71;
        v91 = v82;
        v27 = v72;
        v28 = v73;
        v89 = v80;
        v90 = v81;
        v85 = v76;
        v86 = v77;
        v87 = v78;
        v88 = v79;
        v30 = v74;
        v29 = v75;
        goto LABEL_16;
      }

      v12 = *(v3 + 8 * v11);
      ++v2;
      if (v12)
      {
        v45 = (v12 - 1) & v12;
        v8 = __clz(__rbit64(v12)) | (v11 << 6);
        v2 = v11;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t MethodConfigs.hashValue.getter()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DC49130(v3, v1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC483F8()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DC49130(v3, v1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC48448(uint64_t a1)
{
  v2 = *v1;
  sub_24DCB58A4();
  sub_24DC49130(v4, v2);
  return sub_24DCB58F4();
}

unint64_t sub_24DC48498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24DC49748();
  v4 = sub_24DCB4D24();
  return sub_24DC48E2C(a1, a2, a3, a4, v4);
}

__n128 sub_24DC48508@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v8 = sub_24DC48498(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    *&v17[0] = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24DC48F30();
      v12 = *&v17[0];
    }

    memmove(a5, (*(v12 + 56) + 136 * v10), 0x81uLL);
    sub_24DC48A60(v10, v12);
    *v6 = v12;
    nullsub_1();
  }

  else
  {
    sub_24DC49810(v17);
    v14 = v17[7];
    a5[6] = v17[6];
    a5[7] = v14;
    *(a5 + 128) = v18;
    v15 = v17[3];
    a5[2] = v17[2];
    a5[3] = v15;
    v16 = v17[5];
    a5[4] = v17[4];
    a5[5] = v16;
    result = v17[1];
    *a5 = v17[0];
    a5[1] = result;
  }

  return result;
}

uint64_t sub_24DC48608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EFF0, &qword_24DCB9BB0);
  v54 = v4;
  result = sub_24DCB5604();
  v7 = result;
  if (*(v5 + 16))
  {
    v52 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v53 = v5;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 56);
      v25 = *(v5 + 48) + 32 * v23;
      if (v54)
      {
        v26 = *v25;
        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        v68 = v26;
        v69 = v28;
        v70 = v27;
        v29 = (v24 + 136 * v23);
        v57 = *v29;
        v58 = *(v29 + 8);
        v59 = v29[3];
        v60 = v29[2];
        v30 = *(v29 + 32);
        v61 = v29[5];
        v62 = v29[7];
        v55 = *(v29 + 48);
        v56 = *(v29 + 64);
        v31 = *(v29 + 9);
        v32 = *(v29 + 11);
        v33 = *(v29 + 13);
        *(v65 + 9) = *(v29 + 113);
        v64 = v32;
        v65[0] = v33;
        v63 = v31;
      }

      else
      {
        v34 = *(v25 + 8);
        v35 = *(v25 + 16);
        v36 = *(v25 + 24);
        *&v68 = *v25;
        *(&v68 + 1) = v34;
        v69 = v35;
        v70 = v36;
        v37 = v24 + 136 * v23;
        v38 = *(v37 + 80);
        v39 = *(v37 + 96);
        v40 = *(v37 + 112);
        v67[64] = *(v37 + 128);
        *&v67[32] = v39;
        *&v67[48] = v40;
        *&v67[16] = v38;
        v41 = *(v37 + 16);
        v42 = *(v37 + 32);
        v43 = *(v37 + 64);
        *&v66[48] = *(v37 + 48);
        *v67 = v43;
        *&v66[16] = v41;
        *&v66[32] = v42;
        *v66 = *v37;
        v61 = *(&v42 + 1);
        v62 = *&v66[56];
        v55 = v66[48];
        v56 = v43;
        v59 = *(&v41 + 1);
        v60 = v41;
        v30 = v42;
        v58 = v66[8];
        v57 = *v66;

        sub_24DC3C4DC(v66, &v63);
        v63 = *&v67[8];
        v64 = *&v67[24];
        v65[0] = *&v67[40];
        *(v65 + 9) = *&v67[49];
      }

      sub_24DC49748();
      result = sub_24DCB4D24();
      v44 = -1 << *(v7 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v14 + 8 * (v45 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        while (++v46 != v48 || (v47 & 1) == 0)
        {
          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v14 + 8 * v46);
          if (v50 != -1)
          {
            v15 = __clz(__rbit64(~v50)) + (v46 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v45) & ~*(v14 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *&v66[7] = v63;
      *&v66[23] = v64;
      *&v66[39] = v65[0];
      *&v66[48] = *(v65 + 9);
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      v17 = v69;
      v18 = v70;
      *v16 = v68;
      *(v16 + 16) = v17;
      *(v16 + 24) = v18;
      v19 = *(v7 + 56) + 136 * v15;
      *v19 = v57;
      *(v19 + 8) = v58;
      *(v19 + 16) = v60;
      *(v19 + 24) = v59;
      *(v19 + 32) = v30;
      *(v19 + 40) = v61;
      *(v19 + 48) = v55;
      *(v19 + 56) = v62;
      *(v19 + 64) = v56;
      *(v19 + 113) = *&v66[48];
      *(v19 + 97) = *&v66[32];
      *(v19 + 81) = *&v66[16];
      *(v19 + 65) = *v66;
      ++*(v7 + 16);
      v5 = v53;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v54 & 1) == 0)
    {

      v3 = v52;
      goto LABEL_34;
    }

    v51 = 1 << *(v5 + 32);
    v3 = v52;
    if (v51 >= 64)
    {
      bzero(v9, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v51;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

char *sub_24DC48A60(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24DCB54A4() + 1) & ~v5;
    sub_24DC49748();
    do
    {

      v9 = sub_24DCB4D24();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = (v13 + 32 * v3);
          v15 = (v13 + 32 * v6);
          if (v3 != v6 || v14 >= v15 + 2)
          {
            v16 = v15[1];
            *v14 = *v15;
            v14[1] = v16;
          }

          v17 = *(a2 + 56);
          result = (v17 + 136 * v3);
          v18 = (v17 + 136 * v6);
          if (136 * v3 < (136 * v6) || result >= v18 + 136 || v3 != v6)
          {
            result = memmove(result, v18, 0x88uLL);
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

uint64_t sub_24DC48C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_24DC48498(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_24DC48608(v20, a6 & 1);
      v15 = sub_24DC48498(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_24DCB5824();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_24DC48F30();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 136 * v15;

    return sub_24DC49894(a1, v26);
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 32 * v15);
  *v28 = a2;
  v28[1] = a3;
  v28[2] = a4;
  v28[3] = a5;
  v29 = v25[7] + 136 * v15;
  *v29 = *a1;
  v30 = *(a1 + 16);
  v31 = *(a1 + 32);
  v32 = *(a1 + 64);
  *(v29 + 48) = *(a1 + 48);
  *(v29 + 64) = v32;
  *(v29 + 16) = v30;
  *(v29 + 32) = v31;
  v33 = *(a1 + 80);
  v34 = *(a1 + 96);
  v35 = *(a1 + 112);
  *(v29 + 128) = *(a1 + 128);
  *(v29 + 96) = v34;
  *(v29 + 112) = v35;
  *(v29 + 80) = v33;
  v36 = v25[2];
  v19 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v37;
}

unint64_t sub_24DC48E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_24DC3CE08();
    do
    {

      v9 = sub_24DCB4DA4();

      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

void *sub_24DC48F30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EFF0, &qword_24DCB9BB0);
  v2 = *v0;
  v3 = sub_24DCB55F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_24DC3C4DC(&v39, v38))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 32 * v16;
      v18 = (*(v2 + 48) + 32 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v16 *= 136;
      v23 = *(v2 + 56) + v16;
      v25 = *(v23 + 16);
      v24 = *(v23 + 32);
      v26 = *(v23 + 64);
      v42 = *(v23 + 48);
      v43 = v26;
      v28 = *(v23 + 96);
      v27 = *(v23 + 112);
      v29 = *(v23 + 80);
      v47 = *(v23 + 128);
      v45 = v28;
      v46 = v27;
      v44 = v29;
      v39 = *v23;
      v40 = v25;
      v41 = v24;
      v30 = (*(v4 + 48) + v17);
      *v30 = v20;
      v30[1] = v19;
      v30[2] = v21;
      v30[3] = v22;
      v31 = *(v4 + 56) + v16;
      *v31 = v39;
      v32 = v40;
      v33 = v41;
      v34 = v43;
      *(v31 + 48) = v42;
      *(v31 + 64) = v34;
      *(v31 + 16) = v32;
      *(v31 + 32) = v33;
      v35 = v44;
      v36 = v45;
      v37 = v46;
      *(v31 + 128) = v47;
      *(v31 + 96) = v36;
      *(v31 + 112) = v37;
      *(v31 + 80) = v35;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

uint64_t sub_24DC49130(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v34 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_12:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v10 << 6);
      v14 = (*(a2 + 48) + 32 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v19 = *(a2 + 56) + 136 * v13;
      v37 = *v19;
      v20 = *(v19 + 64);
      v22 = *(v19 + 16);
      v21 = *(v19 + 32);
      v40 = *(v19 + 48);
      v41 = v20;
      v38 = v22;
      v39 = v21;
      v24 = *(v19 + 96);
      v23 = *(v19 + 112);
      v25 = *(v19 + 80);
      v45 = *(v19 + 128);
      v43 = v24;
      v44 = v23;
      v42 = v25;
      v51 = *(v19 + 80);
      v52 = *(v19 + 96);
      v53 = *(v19 + 112);
      v54 = *(v19 + 128);
      v47 = *(v19 + 16);
      v48 = *(v19 + 32);
      v49 = *(v19 + 48);
      v50 = *(v19 + 64);
      v46 = *v19;
      v55 = v15;
      v56 = v16;
      v57 = v17;
      v58 = v18;
      v67 = v54;
      v65 = v52;
      v66 = v53;
      v61 = v48;
      v62 = v49;
      v63 = v50;
      v64 = v51;
      v59 = v46;
      v60 = v47;
      nullsub_1();

      sub_24DC3C4DC(&v37, v35);
      v26 = v55;
      v27 = v56;
      v28 = v57;
      v29 = v58;
      v74 = v65;
      v75 = v66;
      v76 = v67;
      v70 = v61;
      v71 = v62;
      v72 = v63;
      v73 = v64;
      v68 = v59;
      v69 = v60;
LABEL_13:
      v65 = v74;
      v66 = v75;
      v67 = v76;
      v61 = v70;
      v62 = v71;
      v63 = v72;
      v64 = v73;
      v59 = v68;
      v60 = v69;
      v55 = v26;
      v56 = v27;
      v57 = v28;
      v58 = v29;
      if (sub_24DC49730(&v55) == 1)
      {
        break;
      }

      v43 = v74;
      v44 = v75;
      v45 = v76;
      v39 = v70;
      v40 = v71;
      v41 = v72;
      v42 = v73;
      v37 = v68;
      v38 = v69;
      v30 = *(a1 + 48);
      v35[2] = *(a1 + 32);
      v35[3] = v30;
      v36 = *(a1 + 64);
      v31 = *(a1 + 16);
      v35[0] = *a1;
      v35[1] = v31;
      sub_24DC49748();
      sub_24DCB4D34();

      sub_24DC4979C();
      sub_24DCB4D34();
      v52 = v43;
      v53 = v44;
      v54 = v45;
      v48 = v39;
      v49 = v40;
      v50 = v41;
      v51 = v42;
      v46 = v37;
      v47 = v38;
      sub_24DC3C514(&v46);
      result = sub_24DCB58F4();
      v9 = v10;
      v34 ^= result;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x253035FF0](v34);
  }

  else
  {
LABEL_5:
    if (v7 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v7;
    }

    v32 = v11 - 1;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        sub_24DC497F0(&v55);
        v6 = 0;
        v26 = v55;
        v27 = v56;
        v76 = v67;
        v28 = v57;
        v29 = v58;
        v74 = v65;
        v75 = v66;
        v70 = v61;
        v71 = v62;
        v72 = v63;
        v73 = v64;
        v68 = v59;
        v69 = v60;
        v10 = v32;
        goto LABEL_13;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_24DC49498(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EFF0, &qword_24DCB9BB0);
    v3 = sub_24DCB5614();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 144);
      v34 = *(v4 + 128);
      v35 = v6;
      v36 = *(v4 + 160);
      v7 = *(v4 + 80);
      v30 = *(v4 + 64);
      v31 = v7;
      v8 = *(v4 + 112);
      v32 = *(v4 + 96);
      v33 = v8;
      v9 = *(v4 + 16);
      v27[0] = *v4;
      v27[1] = v9;
      v10 = *(v4 + 48);
      v28 = *(v4 + 32);
      v29 = v10;
      v11 = v27[0];
      v12 = v9;
      sub_24DC4982C(v27, v26, &qword_27F19EFF8, &qword_24DCB9BB8);
      result = sub_24DC48498(v11, *(&v11 + 1), v12, *(&v12 + 1));
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 32 * result);
      *v15 = v11;
      v15[1] = v12;
      v16 = v3[7] + 136 * result;
      *v16 = v28;
      v17 = v29;
      v18 = v30;
      v19 = v32;
      *(v16 + 48) = v31;
      *(v16 + 64) = v19;
      *(v16 + 16) = v17;
      *(v16 + 32) = v18;
      v20 = v33;
      v21 = v34;
      v22 = v35;
      *(v16 + 128) = v36;
      *(v16 + 96) = v21;
      *(v16 + 112) = v22;
      *(v16 + 80) = v20;
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_11;
      }

      v3[2] = v25;
      if (!i)
      {

        return v3;
      }

      v4 += 168;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24DC49638(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24DC49650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EFD0, &qword_24DCB9AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24DC496BC()
{
  result = qword_27F19EFD8;
  if (!qword_27F19EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EFD8);
  }

  return result;
}

uint64_t sub_24DC49730(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_24DC49748()
{
  result = qword_27F19EFE0;
  if (!qword_27F19EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EFE0);
  }

  return result;
}

unint64_t sub_24DC4979C()
{
  result = qword_27F19EFE8;
  if (!qword_27F19EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EFE8);
  }

  return result;
}

double sub_24DC497F0(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_24DC49810(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24DC4982C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24DC49924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 84);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
}

uint64_t sub_24DC499FC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15)
{
  v23 = *a2;
  v18 = *(a2 + 2);
  v19 = *(a2 + 3);
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v28[0] = a8;
  v28[1] = a10;
  v28[2] = a11;
  v28[3] = a12;
  v28[4] = a13;
  v29 = a14;
  v30 = a15;
  v20 = _s15HedgingExecutorVMa(0, v28);
  v21 = a9 + v20[21];
  *v21 = v23;
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  sub_24DC49B94(a3, a9 + v20[22]);
  *(a9 + v20[23]) = a4;
  (*(*(a12 - 8) + 32))(a9 + v20[24], a5, a12);
  result = (*(*(a13 - 8) + 32))(a9 + v20[25], a6, a13);
  *(a9 + v20[26]) = a7;
  return result;
}

uint64_t sub_24DC49B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DC49C04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 176) = a8;
  *(v9 + 184) = v8;
  *(v9 + 160) = a6;
  *(v9 + 168) = a7;
  *(v9 + 144) = a1;
  *(v9 + 152) = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v13 = sub_24DCB5904();
  *(v9 + 192) = v13;
  *(v9 + 200) = *(v13 - 8);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = *a2;
  v14 = *a3;
  *(v9 + 240) = *(a2 + 16);
  *(v9 + 248) = v14;
  *(v9 + 256) = *(a3 + 1);
  *(v9 + 272) = a3[3];
  v15 = *(a4 + 80);
  *(v9 + 80) = *(a4 + 64);
  *(v9 + 96) = v15;
  *(v9 + 112) = *(a4 + 96);
  *(v9 + 128) = *(a4 + 112);
  v16 = *(a4 + 16);
  *(v9 + 16) = *a4;
  *(v9 + 32) = v16;
  v17 = *(a4 + 48);
  *(v9 + 48) = *(a4 + 32);
  *(v9 + 64) = v17;

  return MEMORY[0x2822009F8](sub_24DC49D68, 0, 0);
}

uint64_t sub_24DC49D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 272);
  v16 = *(v4 + 240);
  v17 = *(v4 + 256);
  v6 = *(v4 + 176);
  v7 = *(v4 + 184);
  v8 = *(v4 + 168);
  v9 = type metadata accessor for _HedgingTaskResult(0, v6, a3, a4);
  v10 = swift_task_alloc();
  *(v4 + 280) = v10;
  v11 = *(v4 + 224);
  v12 = *(v4 + 152);
  *(v10 + 16) = *(v8 + 16);
  *(v10 + 24) = *(v8 + 24);
  *(v10 + 32) = *(v8 + 32);
  *(v10 + 48) = *(v8 + 48);
  *(v10 + 56) = v6;
  *(v10 + 64) = *(v8 + 56);
  *(v10 + 80) = *(v8 + 72);
  *(v10 + 88) = v7;
  *(v10 + 96) = v11;
  *(v10 + 112) = v16;
  *(v10 + 128) = v17;
  *(v10 + 144) = v5;
  *(v10 + 152) = v4 + 16;
  *(v10 + 160) = v12;
  v13 = swift_task_alloc();
  *(v4 + 288) = v13;
  *v13 = v4;
  v13[1] = sub_24DC49ED0;
  v14 = *(v4 + 216);

  return MEMORY[0x282200600](v14, v9);
}

uint64_t sub_24DC49ED0()
{

  return MEMORY[0x2822009F8](sub_24DC49FE8, 0, 0);
}

uint64_t sub_24DC49FE8()
{
  v1 = v0[24];
  v2 = v0[18];
  (*(v0[25] + 16))(v0[26], v0[27], v1);
  sub_24DC2F270(v1, (v0 + 17), v2);
  (*(v0[25] + 8))(v0[27], v0[24]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24DC4A0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 360) = v27;
  *(v8 + 368) = v28;
  *(v8 + 344) = v25;
  *(v8 + 352) = v26;
  *(v8 + 328) = v23;
  *(v8 + 336) = v24;
  *(v8 + 312) = v21;
  *(v8 + 320) = v22;
  *(v8 + 296) = v19;
  *(v8 + 304) = v20;
  *(v8 + 280) = v18;
  *(v8 + 264) = v17;
  *(v8 + 248) = a7;
  *(v8 + 256) = a8;
  *(v8 + 232) = a5;
  *(v8 + 240) = a6;
  *(v8 + 216) = a3;
  *(v8 + 224) = a4;
  *(v8 + 200) = a1;
  *(v8 + 208) = a2;
  v9 = type metadata accessor for _HedgingTaskResult(0, v25, a3, a4);
  *(v8 + 376) = v9;
  *(v8 + 384) = *(v9 - 8);
  *(v8 + 392) = swift_task_alloc();
  sub_24DCB5414();
  *(v8 + 400) = swift_task_alloc();
  v10 = sub_24DCB5154();
  *(v8 + 408) = v10;
  *(v8 + 416) = *(v10 - 8);
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 136) = v20;
  *(v8 + 144) = v21;
  *(v8 + 152) = v22;
  *(v8 + 160) = v23;
  *(v8 + 168) = v24;
  *(v8 + 176) = v26;
  *(v8 + 184) = v27;
  *(v8 + 192) = v28;
  v11 = _s15HedgingExecutorVMa(0, v8 + 136);
  *(v8 + 432) = v11;
  v12 = *(v11 - 8);
  *(v8 + 440) = v12;
  *(v8 + 448) = *(v12 + 64);
  *(v8 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  *(v8 + 464) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0);
  *(v8 + 472) = swift_task_alloc();
  v13 = sub_24DCB55B4();
  *(v8 + 480) = v13;
  v14 = *(v13 - 8);
  *(v8 + 488) = v14;
  *(v8 + 496) = *(v14 + 64);
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC4A418, 0, 0);
}

uint64_t sub_24DC4A418()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = *(v0 + 472);
  sub_24DC4982C(*(v0 + 216) + *(*(v0 + 432) + 88), v3, &qword_27F19F000, &qword_24DCB9BC0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24DC3DFD4(*(v0 + 472), &qword_27F19F000, &qword_24DCB9BC0);
  }

  else
  {
    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 488);
    v7 = *(v0 + 480);
    v8 = *(v0 + 464);
    v73 = *(v0 + 368);
    v9 = *(v6 + 32);
    v69 = *(v0 + 320);
    v71 = *(v0 + 304);
    v65 = *(v0 + 352);
    v67 = *(v0 + 336);
    v9(v4, *(v0 + 472), v7);
    v10 = sub_24DCB51C4();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    (*(v6 + 16))(v5, v4, v7);
    v11 = (*(v6 + 80) + 104) & ~*(v6 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v71;
    *(v12 + 48) = v69;
    *(v12 + 64) = v67;
    *(v12 + 80) = v65;
    *(v12 + 96) = v73;
    v9(v12 + v11, v5, v7);
    v13 = sub_24DCB5174();
    sub_24DC4B67C(v8, &unk_24DCB9F88, v12, v13);
    sub_24DC3DFD4(v8, &qword_27F19F050, &qword_24DCB9EB0);
    (*(v6 + 8))(v4, v7);
  }

  v14 = *(v0 + 464);
  v63 = v14;
  v53 = *(v0 + 456);
  v54 = *(v0 + 448);
  v51 = *(v0 + 440);
  v49 = *(v0 + 432);
  v72 = *(v0 + 368);
  v70 = *(v0 + 360);
  v68 = *(v0 + 352);
  v64 = *(v0 + 336);
  v66 = *(v0 + 344);
  v15 = *(v0 + 320);
  v62 = *(v0 + 328);
  v16 = *(v0 + 304);
  v17 = *(v0 + 312);
  v59 = *(v0 + 288);
  v60 = *(v0 + 296);
  v50 = *(v0 + 280);
  v57 = *(v0 + 264);
  v58 = *(v0 + 272);
  v56 = *(v0 + 256);
  v18 = *(v0 + 240);
  v55 = *(v0 + 248);
  v19 = *(v0 + 232);
  v61 = *(v0 + 224);
  v48 = *(v0 + 216);
  v74 = *(v0 + 208);
  v20 = *(v48 + *(v49 + 104));
  nullsub_1();
  v21 = v20;
  v22 = v17;
  v47 = v17;
  v25 = sub_24DC5CDE0(v23, v21, v17, v24);
  v75 = v26;
  *(v0 + 520) = v25;
  *(v0 + 528) = v26;
  v27 = sub_24DCB51C4();
  v28 = *(*(v27 - 8) + 56);
  v28(v14, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v16;
  v29[5] = v22;
  v29[6] = v15;
  v29[7] = v62;
  v29[8] = v64;
  v29[9] = v66;
  v29[10] = v68;
  v29[11] = v70;
  v29[12] = v72;
  v29[13] = v61;
  v29[14] = v19;
  v29[15] = v18;
  v29[16] = v25;
  v29[17] = v75;
  v52 = sub_24DCB5174();

  sub_24DC4B67C(v63, &unk_24DCB9F68, v29, v52);
  sub_24DC3DFD4(v63, &qword_27F19F050, &qword_24DCB9EB0);
  v28(v63, 1, 1, v27);
  (*(v51 + 16))(v53, v48, v49);
  v30 = (*(v51 + 80) + 144) & ~*(v51 + 80);
  v31 = (v54 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 39) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 4) = v16;
  *(v33 + 5) = v47;
  *(v33 + 6) = v15;
  *(v33 + 7) = v62;
  *(v33 + 8) = v64;
  *(v33 + 9) = v66;
  *(v33 + 10) = v68;
  *(v33 + 11) = v70;
  *(v33 + 12) = v72;
  *(v33 + 13) = v61;
  *(v33 + 14) = v19;
  *(v33 + 15) = v18;
  *(v33 + 16) = v25;
  *(v33 + 17) = v75;
  (*(v51 + 32))(&v33[v30], v53, v49);
  v34 = &v33[v31];
  *v34 = v55;
  *(v34 + 1) = v56;
  *(v34 + 2) = v57;
  *(v34 + 3) = v58;
  v35 = &v33[v32];
  v36 = *(v50 + 48);
  v38 = *v50;
  v37 = *(v50 + 16);
  *(v35 + 2) = *(v50 + 32);
  *(v35 + 3) = v36;
  *v35 = v38;
  *(v35 + 1) = v37;
  v40 = *(v50 + 80);
  v39 = *(v50 + 96);
  v41 = *(v50 + 64);
  *(v35 + 56) = *(v50 + 112);
  *(v35 + 5) = v40;
  *(v35 + 6) = v39;
  *(v35 + 4) = v41;
  v42 = &v33[(v32 + 121) & 0xFFFFFFFFFFFFFFF8];
  *v42 = v59;
  *(v42 + 1) = v60;

  sub_24DC568C0(v50, v0 + 16);

  sub_24DC4B67C(v63, &unk_24DCB9F78, v33, v52);
  sub_24DC3DFD4(v63, &qword_27F19F050, &qword_24DCB9EB0);
  *(v0 + 536) = *v74;
  sub_24DCB5124();
  v43 = swift_task_alloc();
  *(v0 + 544) = v43;
  *v43 = v0;
  v43[1] = sub_24DC4AA78;
  v44 = *(v0 + 400);
  v45 = *(v0 + 408);

  return MEMORY[0x2822002E8](v44, 0, 0, v45);
}

uint64_t sub_24DC4AA78()
{

  return MEMORY[0x2822009F8](sub_24DC4AB74, 0, 0);
}

uint64_t sub_24DC4AB74()
{
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[48];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    return sub_24DCB55E4();
  }

  (*(v3 + 32))(v0[49], v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = v0[49];
      if (*(v6 + 8) != 1)
      {
LABEL_14:
        v17 = swift_task_alloc();
        v0[68] = v17;
        *v17 = v0;
        v17[1] = sub_24DC4AA78;
        v18 = v0[50];
        v19 = v0[51];

        return MEMORY[0x2822002E8](v18, 0, 0, v19);
      }

      v7 = *v6;
      sub_24DCB5164();
      v8 = v7;
    }

    else
    {
      v16 = v0[49];
      if ((*(v16 + 8) & 1) == 0)
      {
        sub_24DCB5164();
        goto LABEL_14;
      }

      v8 = *v16;
    }

    sub_24DC57738(v8, 1);
    goto LABEL_14;
  }

  v9 = v0[52];
  v10 = v0[53];
  v11 = v0[51];
  v12 = v0[49];
  v13 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v14 = sub_24DCB5904();
  (*(*(v14 - 8) + 32))(v13, v12, v14);
  sub_24DCB5164();

  (*(v9 + 8))(v10, v11);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24DC4AEAC(uint64_t a1, uint64_t a2)
{
  v10 = v2[12];
  v11 = v2[11];
  v8 = v2[14];
  v9 = v2[13];
  v7 = v2[15];
  v4 = v2[16];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24DC334F4;

  return sub_24DC4A0F4(a1, a2, v11, v10, v9, v8, v7, v4);
}

uint64_t sub_24DC4AFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = v6;
  v4[4] = a1;
  return MEMORY[0x2822009F8](sub_24DC4B014, 0, 0);
}

uint64_t sub_24DC4B014()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  *v3 = v0;
  v3[1] = sub_24DC4B108;
  v5 = MEMORY[0x277D84950];
  v6 = MEMORY[0x277D84F78] + 8;

  return sub_24DC8C5F4((v0 + 2), dword_24DCB9F98, v2, v6, v4, v5);
}

uint64_t sub_24DC4B108()
{

  return MEMORY[0x2822009F8](sub_24DC4B220, 0, 0);
}

uint64_t sub_24DC4B220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v6 = *(v4 + 32);
  v7 = *(v4 + 24);
  *v6 = *(v4 + 16);
  *(v6 + 8) = v7;
  type metadata accessor for _HedgingTaskResult(0, v5, a3, a4);
  swift_storeEnumTagMultiPayload();
  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_24DC4B2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = sub_24DCB55C4();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC4B368, 0, 0);
}

uint64_t sub_24DC4B368(uint64_t a1)
{
  *(v1 + 16) = sub_24DCB59A4();
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  sub_24DCB5854();
  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  v4 = sub_24DC5593C(&qword_27F19F040, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  *v3 = v1;
  v3[1] = sub_24DC4B464;
  v5 = *(v1 + 72);
  v6 = *(v1 + 56);
  v7 = *(v1 + 40);

  return MEMORY[0x282200488](v7, v1 + 16, v5, v6, v4);
}

uint64_t sub_24DC4B464()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC4B60C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24DC4B60C()
{
  **(v0 + 48) = *(v0 + 88);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC4B67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v22 - v11;
  sub_24DC4982C(a1, v22 - v11, &qword_27F19F050, &qword_24DCB9EB0);
  v13 = sub_24DCB51C4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24DC3DFD4(v12, &qword_27F19F050, &qword_24DCB9EB0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_24DCB50D4();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DCB51B4();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_24DC4B89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v14;
  *(v8 + 112) = v12;
  *(v8 + 128) = v13;
  *(v8 + 80) = v10;
  *(v8 + 96) = v11;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a1;
  *(v8 + 40) = a4;
  return MEMORY[0x2822009F8](sub_24DC4B8E0, 0, 0);
}

uint64_t sub_24DC4B8E0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  v4 = *(v0 + 96);
  v5 = *(v0 + 112);
  v6 = *(v0 + 128);
  v7 = *(v0 + 40);
  v8 = *(v0 + 56);
  *(v3 + 16) = *(v0 + 80);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  *(v3 + 80) = v1;
  *(v3 + 88) = v7;
  *(v3 + 104) = v8;
  *(v3 + 120) = v2;
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  *v9 = v0;
  v9[1] = sub_24DC4BA04;
  v11 = MEMORY[0x277D84950];
  v12 = MEMORY[0x277D84F78] + 8;

  return sub_24DC8C5F4(v0 + 16, &unk_24DCB9FB8, v3, v12, v10, v11);
}

uint64_t sub_24DC4BA04()
{

  return MEMORY[0x2822009F8](sub_24DC4BB1C, 0, 0);
}

uint64_t sub_24DC4BB1C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_24DC5E100(v3, v4, *(v0 + 72), *(v0 + 88));
  *v2 = v3;
  *(v2 + 8) = v4;
  type metadata accessor for _HedgingTaskResult(0, v1, v5, v6);
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24DC4BBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v10;
  v8[9] = a4;
  v8[10] = a6;
  v8[8] = a3;
  return MEMORY[0x2822009F8](sub_24DC4BBF4, 0, 0);
}

uint64_t sub_24DC4BBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[11];
  v6 = v4[8];
  v4[7] = v4[10];
  v7 = type metadata accessor for BroadcastAsyncSequence.Source(0, v5, a3, a4);

  WitnessTable = swift_getWitnessTable();
  RPCWriter.init<A>(wrapping:)((v4 + 7), v7, WitnessTable, v4 + 2);
  v11 = (v6 + *v6);
  v9 = swift_task_alloc();
  v4[13] = v9;
  *v9 = v4;
  v9[1] = sub_24DC4BD50;

  return v11(v4 + 2);
}

uint64_t sub_24DC4BD50()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 112) = v0;

  v6 = type metadata accessor for RPCWriter(0, v2, v4, v5);
  (*(*(v6 - 8) + 8))(v3 + 16, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC4BEE0, 0, 0);
  }

  else
  {
    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_24DC4BF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 416) = v18;
  *(v8 + 384) = v16;
  *(v8 + 400) = v17;
  *(v8 + 352) = v14;
  *(v8 + 368) = v15;
  *(v8 + 320) = v12;
  *(v8 + 336) = v13;
  *(v8 + 288) = v10;
  *(v8 + 304) = v11;
  *(v8 + 272) = a7;
  *(v8 + 280) = a8;
  *(v8 + 256) = a1;
  *(v8 + 264) = a4;
  return MEMORY[0x2822009F8](sub_24DC4BF54, 0, 0);
}

uint64_t sub_24DC4BF54()
{
  v34 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 400);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v30 = *(v0 + 416);
  v5 = *(v0 + 352);
  v6 = *(v0 + 328);
  v27 = *(v0 + 312);
  v28 = *(v0 + 320);
  v26 = *(v0 + 296);
  v7 = *(v0 + 272);
  v24 = *(v0 + 360);
  v25 = *(v0 + 280);
  v33 = *(v0 + 264);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v24;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  v29 = *(v0 + 384);
  *(v8 + 48) = v29;
  *(v8 + 64) = v2;
  *(v8 + 72) = v1;
  *(v8 + 80) = v30;
  *(v8 + 88) = v7;
  *(v8 + 96) = v25;

  nullsub_1();
  StreamingClientRequest.init(of:metadata:producer:)(&v33, &unk_24DCB9FA8, v8, &v31);
  v9 = v32;
  *(v0 + 432) = v32;
  v10 = v31;
  *(v0 + 424) = v31;
  *(v0 + 232) = v10;
  *(v0 + 248) = v9;
  *(v0 + 200) = v26;
  *(v0 + 216) = v27;
  *(v0 + 224) = v28;
  v11 = *v6;
  v12 = v6[1];
  v13 = v6[3];
  *(v0 + 48) = v6[2];
  *(v0 + 64) = v13;
  *(v0 + 16) = v11;
  *(v0 + 32) = v12;
  v14 = v6[4];
  v15 = v6[5];
  v16 = v6[6];
  *(v0 + 128) = *(v6 + 56);
  *(v0 + 96) = v15;
  *(v0 + 112) = v16;
  *(v0 + 80) = v14;
  v17 = swift_task_alloc();
  *(v0 + 440) = v17;
  *(v0 + 136) = v5;
  *(v0 + 144) = v24;
  *(v0 + 152) = v4;
  *(v0 + 160) = v3;
  *(v0 + 168) = v29;
  *(v0 + 176) = v2;
  *(v0 + 184) = v1;
  *(v0 + 192) = v30;
  v18 = _s15HedgingExecutorVMa(0, v0 + 136);
  *v17 = v0;
  v17[1] = sub_24DC4C184;
  v19 = *(v0 + 392);
  v20 = *(v0 + 336);
  v21 = *(v0 + 344);
  v22 = *(v0 + 256);

  return sub_24DC4C588(v22, v0 + 232, (v0 + 200), (v0 + 16), v20, v21, v18, v19);
}

uint64_t sub_24DC4C184()
{

  return MEMORY[0x2822009F8](sub_24DC4C280, 0, 0);
}

uint64_t sub_24DC4C280()
{
  v1 = *(v0 + 392);

  type metadata accessor for _HedgingTaskResult(0, v1, v2, v3);
  swift_storeEnumTagMultiPayload();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24DC4C314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a2;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  v10 = type metadata accessor for RPCWriter(0, a5, v8, v9);
  v13 = type metadata accessor for BroadcastAsyncSequence(0, a5, v11, v12);
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  *v7 = v5;
  v7[1] = sub_24DC4C43C;

  return RPCWriterProtocol.write<A>(contentsOf:)(v5 + 16, v10, v13, WitnessTable, v15);
}

uint64_t sub_24DC4C43C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC4C570, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC4C588(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 168) = a8;
  *(v9 + 176) = v8;
  *(v9 + 152) = a6;
  *(v9 + 160) = a7;
  *(v9 + 136) = a1;
  *(v9 + 144) = a5;
  *(v9 + 184) = *a2;
  v10 = *a3;
  *(v9 + 200) = *(a2 + 16);
  *(v9 + 208) = v10;
  *(v9 + 216) = *(a3 + 1);
  *(v9 + 232) = a3[3];
  v11 = *a4;
  v12 = a4[1];
  v13 = a4[3];
  *(v9 + 48) = a4[2];
  *(v9 + 64) = v13;
  *(v9 + 16) = v11;
  *(v9 + 32) = v12;
  v14 = a4[4];
  v15 = a4[5];
  v16 = a4[6];
  *(v9 + 128) = *(a4 + 56);
  *(v9 + 96) = v15;
  *(v9 + 112) = v16;
  *(v9 + 80) = v14;
  return MEMORY[0x2822009F8](sub_24DC4C5FC, 0, 0);
}

uint64_t sub_24DC4C5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 224);
  v5 = *(v4 + 232);
  v18 = *(v4 + 208);
  v8 = *(v4 + 160);
  v7 = *(v4 + 168);
  v9 = *(v8 + 32);
  v10 = type metadata accessor for _HedgingAttemptTaskResult(0, v7, v9, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5904();
  v11 = swift_task_alloc();
  *(v4 + 240) = v11;
  v12 = *(v4 + 176);
  v13 = *(v4 + 192);
  v14 = *(v4 + 144);
  *(v11 + 16) = *(v8 + 16);
  *(v11 + 24) = *(v8 + 24);
  *(v11 + 32) = v9;
  *(v11 + 40) = *(v8 + 40);
  *(v11 + 48) = *(v8 + 48);
  *(v11 + 56) = v7;
  *(v11 + 64) = *(v8 + 56);
  *(v11 + 80) = *(v8 + 72);
  *(v11 + 88) = v12;
  *(v11 + 104) = v13;
  *(v11 + 120) = v18;
  *(v11 + 136) = v6;
  *(v11 + 144) = v5;
  *(v11 + 152) = v4 + 16;
  *(v11 + 160) = v14;
  v15 = swift_task_alloc();
  *(v4 + 248) = v15;
  *v15 = v4;
  v15[1] = sub_24DC4C7A8;
  v16 = *(v4 + 136);

  return MEMORY[0x282200600](v16, v10);
}

uint64_t sub_24DC4C7A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC4C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 960) = v29;
  *(v8 + 952) = v28;
  *(v8 + 944) = v27;
  *(v8 + 936) = v26;
  *(v8 + 928) = v25;
  *(v8 + 920) = v24;
  *(v8 + 912) = v23;
  *(v8 + 904) = v22;
  *(v8 + 896) = v21;
  *(v8 + 888) = v20;
  *(v8 + 872) = v19;
  *(v8 + 856) = v18;
  *(v8 + 848) = a8;
  *(v8 + 840) = a7;
  *(v8 + 832) = a6;
  *(v8 + 824) = a5;
  *(v8 + 816) = a4;
  *(v8 + 808) = a3;
  *(v8 + 800) = a2;
  *(v8 + 792) = a1;
  v9 = type metadata accessor for _HedgingAttemptTaskResult.AttemptResult(0, v26, v23, a4);
  *(v8 + 968) = v9;
  *(v8 + 976) = *(v9 - 8);
  *(v8 + 984) = swift_task_alloc();
  *(v8 + 992) = swift_task_alloc();
  v11 = type metadata accessor for _HedgingAttemptTaskResult(255, v26, v23, v10);
  *(v8 + 1000) = v11;
  v12 = sub_24DCB5414();
  *(v8 + 1008) = v12;
  *(v8 + 1016) = *(v12 - 8);
  *(v8 + 1024) = swift_task_alloc();
  *(v8 + 1032) = *(v11 - 8);
  *(v8 + 1040) = swift_task_alloc();
  *(v8 + 1048) = swift_task_alloc();
  *(v8 + 376) = v21;
  *(v8 + 384) = v22;
  *(v8 + 392) = v23;
  *(v8 + 400) = v24;
  *(v8 + 408) = v25;
  *(v8 + 416) = v27;
  *(v8 + 424) = v28;
  *(v8 + 432) = v29;
  v13 = _s15HedgingExecutorV14ScheduledStateVMa(0, v8 + 376);
  *(v8 + 1056) = v13;
  *(v8 + 1064) = *(v13 - 8);
  *(v8 + 1072) = swift_task_alloc();
  *(v8 + 440) = v21;
  *(v8 + 448) = v22;
  *(v8 + 456) = v23;
  *(v8 + 464) = v24;
  *(v8 + 472) = v25;
  *(v8 + 480) = v27;
  *(v8 + 488) = v28;
  *(v8 + 496) = v29;
  v14 = _s15HedgingExecutorVMa(0, v8 + 440);
  *(v8 + 1080) = v14;
  v15 = *(v14 - 8);
  *(v8 + 1088) = v15;
  *(v8 + 1096) = *(v15 + 64);
  *(v8 + 1104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  *(v8 + 1112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC4CC30, 0, 0);
}

uint64_t sub_24DC4CC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = v4;
  v76 = *(v4 + 1112);
  v59 = *(v4 + 1104);
  v60 = *(v4 + 1096);
  v58 = *(v4 + 1088);
  v71 = *(v4 + 1072);
  v72 = *(v4 + 1080);
  v5 = *(v4 + 960);
  v6 = *(v4 + 952);
  v7 = *(v4 + 944);
  v82 = v6;
  v73 = *(v4 + 936);
  v8 = *(v4 + 928);
  v9 = *(v4 + 920);
  v80 = v9;
  v81 = v8;
  v10 = *(v4 + 912);
  v11 = *(v4 + 904);
  v78 = v11;
  v79 = v10;
  v12 = *(v4 + 896);
  v77 = v12;
  v69 = *(v4 + 880);
  v70 = *(v4 + 888);
  v65 = *(v4 + 856);
  v66 = *(v4 + 864);
  v63 = *(v4 + 840);
  v64 = *(v4 + 848);
  v62 = *(v4 + 832);
  v13 = *(v4 + 808);
  v53 = *(v4 + 872);
  v54 = v13;
  v61 = *(v4 + 816);
  v67 = sub_24DC5CDE0(MEMORY[0x277D83B88], 2, MEMORY[0x277D83B88], a4);
  v68 = v14;
  *(v4 + 1120) = v67;
  *(v4 + 1128) = v14;
  *(v4 + 504) = v12;
  *(v4 + 512) = v11;
  *(v4 + 520) = v10;
  *(v4 + 528) = v9;
  *(v4 + 536) = v8;
  *(v4 + 544) = v7;
  *(v4 + 552) = v6;
  *(v4 + 560) = v5;
  v15 = v5;
  _s15HedgingExecutorV11SharedStateCMa(0, v4 + 504);
  v16 = (v13 + *(v72 + 84));
  v17 = *v16;
  v18 = v16[1];
  *(v4 + 1136) = v18;
  v19 = v16[2];
  *(v4 + 1144) = v19;
  v20 = v16[3];
  v83[0] = v17;
  v83[1] = v18;
  v51 = v19;
  v52 = v18;
  v83[2] = v19;
  v83[3] = v20;
  v21 = swift_allocObject();
  *(v4 + 1152) = v21;

  v57 = v21;
  sub_24DC52D20(v83);
  v22 = swift_task_alloc();
  v22[2] = v12;
  v22[3] = v78;
  v22[4] = v10;
  v22[5] = v9;
  v22[6] = v8;
  v22[7] = v73;
  v22[8] = v7;
  v22[9] = v6;
  v75 = v15;
  v22[10] = v15;
  *(v4 + 568) = v12;
  *(v4 + 576) = v78;
  *(v4 + 584) = v10;
  *(v4 + 592) = v9;
  *(v4 + 600) = v8;
  *(v4 + 608) = v7;
  *(v4 + 616) = v6;
  *(v4 + 624) = v15;
  *(v4 + 1160) = _s15HedgingExecutorV5StateV17NextAttemptResultVMa(0, v4 + 568);
  sub_24DC4E648(sub_24DC56620);

  v56 = *(v4 + 744);
  v74 = *(v4 + 752);
  v23 = sub_24DCB51C4();
  *(v4 + 1168) = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  *(v4 + 1176) = v25;
  *(v4 + 1184) = (v24 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v25(v76, 1, 1, v23);
  v26 = *(v58 + 16);
  *(v4 + 1192) = v26;
  *(v4 + 1200) = (v58 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26(v59, v54, v72);
  v27 = (*(v58 + 80) + 104) & ~*(v58 + 80);
  *(v4 + 132) = *(v58 + 80);
  v28 = (v60 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 31) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 39) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v30 + 137) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 4) = v77;
  *(v32 + 5) = v78;
  *(v32 + 6) = v79;
  *(v32 + 7) = v80;
  *(v32 + 8) = v81;
  *(v32 + 9) = v73;
  *(v32 + 10) = v7;
  *(v32 + 11) = v82;
  *(v32 + 12) = v15;
  v33 = *(v58 + 32);
  *(v4 + 1208) = v33;
  *(v4 + 1216) = (v58 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v33(&v32[v27], v59, v72);
  v34 = &v32[v28];
  *v34 = v61;
  *(v34 + 2) = v62;
  v35 = &v32[v29];
  *v35 = v63;
  *(v35 + 1) = v64;
  *(v35 + 2) = v65;
  *(v35 + 3) = v66;
  v36 = &v32[v30];
  v37 = *(v53 + 48);
  v39 = *v53;
  v38 = *(v53 + 16);
  *(v36 + 2) = *(v53 + 32);
  *(v36 + 3) = v37;
  *v36 = v39;
  *(v36 + 1) = v38;
  v41 = *(v53 + 80);
  v40 = *(v53 + 96);
  v42 = *(v53 + 64);
  *(v36 + 56) = *(v53 + 112);
  *(v36 + 5) = v41;
  *(v36 + 6) = v40;
  *(v36 + 4) = v42;
  v43 = &v32[(v30 + 121) & 0xFFFFFFFFFFFFFFF8];
  *v43 = v56;
  v43[8] = v74;
  *&v32[v55] = v57;
  v44 = &v32[v31];
  *v44 = v67;
  v44[1] = v68;
  v45 = &v32[(v31 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v45 = v69;
  *(v45 + 1) = v70;

  sub_24DC568C0(v53, v4 + 16);
  v46 = sub_24DCB5174();
  *(v4 + 1224) = v46;

  sub_24DC4B67C(v76, &unk_24DCB9F28, v32, v46);
  sub_24DC3DFD4(v76, &qword_27F19F050, &qword_24DCB9EB0);
  sub_24DC4EE78(v77, v78, v79, v80, v81, v7, v82, v75, v71);
  if (v74 == 1)
  {
    sub_24DC4EF7C(*(v4 + 800), 0, v52, v51, *(v4 + 1056), *(v4 + 936));
  }

  *(v4 + 648) = 0u;
  *(v4 + 664) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 680) = -1;
  v47 = swift_task_alloc();
  *(v4 + 1232) = v47;
  *v47 = v4;
  v47[1] = sub_24DC4D1E8;
  v48 = *(v4 + 1224);
  v49 = *(v4 + 1024);

  return MEMORY[0x2822002D0](v49, 0, 0, v48);
}

uint64_t sub_24DC4D1E8()
{

  return MEMORY[0x2822009F8](sub_24DC4D2E4, 0, 0);
}

uint64_t sub_24DC4D2E4()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1000);
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 960);
    v175 = *(v0 + 928);
    v180 = *(v0 + 912);
    v161 = *(v0 + 896);
    v165 = *(v0 + 880);
    v170 = *(v0 + 944);
    (*(*(v0 + 1016) + 8))(v2, *(v0 + 1008));
    v5 = swift_task_alloc();
    *(v0 + 1240) = v5;
    *(v5 + 16) = v161;
    *(v5 + 32) = v180;
    *(v5 + 48) = v175;
    *(v5 + 64) = v170;
    *(v5 + 80) = v4;
    *(v5 + 88) = v165;
    *(v5 + 104) = v0 + 632;
    v6 = swift_task_alloc();
    *(v0 + 1248) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
    *v6 = v0;
    v6[1] = sub_24DC4E21C;
    v8 = *(v0 + 936);
    v9 = *(v0 + 792);
    v10 = MEMORY[0x277D84950];

    return sub_24DC8C5F4(v9, dword_24DCB9F38, v5, v8, v7, v10);
  }

  v12 = *(v0 + 1048);
  v13 = *(v0 + 1040);
  (*(v1 + 32))(v12, v2, v3);
  (*(v1 + 16))(v13, v12, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return sub_24DCB55E4();
  }

  if (EnumCaseMultiPayload == 1)
  {
    v15 = *(v0 + 992);
    v16 = *(v0 + 984);
    v17 = *(v0 + 976);
    v18 = *(v0 + 968);
    (*(v17 + 32))(v15, *(v0 + 1040), v18);
    (*(v17 + 16))(v16, v15, v18);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19)
    {
      if (v19 == 1)
      {
        v22 = *(v0 + 1072);
        v23 = *(v0 + 1064);
        v24 = *(v0 + 1056);
        v181 = *(v0 + 1048);
        v25 = *(v0 + 1032);
        v176 = *(v0 + 1000);
        v166 = *(v0 + 992);
        v26 = *(v0 + 984);
        v27 = *(v0 + 976);
        v157 = *(v0 + 968);
        v28 = *(v0 + 792);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
        v29 = sub_24DCB5904();
        (*(*(v29 - 8) + 32))(v28, v26, v29);
        sub_24DC4F478(v24);

        (*(v27 + 8))(v166, v157);
        (*(v25 + 8))(v181, v176);
        (*(v23 + 8))(v22, v24);
      }

      else
      {
        v179 = *(v0 + 1072);
        v99 = *(v0 + 1064);
        v174 = *(v0 + 1056);
        v160 = *(v0 + 1048);
        v100 = *(v0 + 1032);
        v101 = *(v0 + 1000);
        v102 = *(v0 + 992);
        v103 = *(v0 + 976);
        v104 = *(v0 + 968);
        v169 = *(v0 + 792);
        v164 = **(v0 + 984);
        sub_24DCB5164();

        (*(v103 + 8))(v102, v104);
        (*(v100 + 8))(v160, v101);
        (*(v99 + 8))(v179, v174);
        *v169 = v164;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
        sub_24DCB5904();
        swift_storeEnumTagMultiPayload();
      }

      type metadata accessor for StreamingClientResponse(255, *(v0 + 912), v30, v31);
      v105 = sub_24DCB5414();
      (*(*(v105 - 8) + 8))(v0 + 632, v105);

      v106 = *(v0 + 8);

      return v106();
    }

    v60 = *(v0 + 984);
    v61 = *(v0 + 912);
    v62 = *(v60 + 7);
    v63 = *(v60 + 8);
    v64 = *(v60 + 72);
    v65 = *(v60 + 73);
    v67 = v60[1];
    v66 = v60[2];
    v68 = *v60;
    *(v0 + 736) = *(v60 + 48);
    *(v0 + 704) = v67;
    *(v0 + 720) = v66;
    *(v0 + 688) = v68;
    v69 = type metadata accessor for StreamingClientResponse(255, v61, v20, v21);
    v70 = sub_24DCB5414();
    (*(*(v70 - 8) + 8))(v0 + 632, v70);
    v71 = *(v69 - 8);
    (*(v71 + 16))(v0 + 632, v0 + 688, v69);
    if (v65)
    {
      if ((sub_24DC4F5A4(*(v0 + 1056)) & 1) == 0)
      {
        v72 = *(v0 + 960);
        v177 = *(v0 + 912);
        v183 = *(v0 + 896);
        v168 = *(v0 + 944);
        v172 = *(v0 + 928);
        sub_24DC4F478(*(v0 + 1056));
        v73 = swift_task_alloc();
        *(v73 + 16) = v183;
        *(v73 + 32) = v177;
        *(v73 + 48) = v172;
        *(v73 + 64) = v168;
        *(v73 + 80) = v72;
        sub_24DCB5414();
        sub_24DC4E648(sub_24DC57B5C);

        if (*(v0 + 768) != 2)
        {
          v173 = *(v0 + 1224);
          v148 = *(v0 + 1208);
          v132 = *(v0 + 1192);
          v184 = *(v0 + 768);
          v159 = *(v0 + 1128);
          v152 = *(v0 + 1152);
          v154 = *(v0 + 1120);
          v163 = *(v0 + 1112);
          v74 = *(v0 + 1104);
          v75 = *(v0 + 1080);
          v136 = *(v0 + 960);
          v156 = *(v0 + 888);
          v150 = *(v0 + 880);
          v76 = *(v0 + 872);
          v142 = *(v0 + 864);
          v140 = *(v0 + 856);
          v178 = *(v0 + 848);
          v138 = *(v0 + 840);
          v126 = (*(v0 + 132) + 104) & ~*(v0 + 132);
          v128 = (v126 + *(v0 + 1096) + 7) & 0xFFFFFFFFFFFFFFF8;
          v130 = (v128 + 31) & 0xFFFFFFFFFFFFFFF8;
          v77 = (v130 + 39) & 0xFFFFFFFFFFFFFFF8;
          v146 = (v77 + 137) & 0xFFFFFFFFFFFFFFF8;
          v144 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
          v124 = *(v0 + 816);
          v119 = *(v0 + 912);
          v121 = *(v0 + 896);
          v116 = *(v0 + 944);
          v117 = *(v0 + 928);
          v78 = *(v0 + 832);
          v79 = *(v0 + 808);
          v134 = *(v0 + 760);
          (*(v0 + 1176))();
          v132(v74, v79, v75);
          v80 = swift_allocObject();
          *(v80 + 16) = 0;
          *(v80 + 24) = 0;
          *(v80 + 32) = v121;
          *(v80 + 48) = v119;
          *(v80 + 64) = v117;
          *(v80 + 80) = v116;
          *(v80 + 96) = v136;
          v148(v80 + v126, v74, v75);
          v81 = v80 + v128;
          *v81 = v124;
          *(v81 + 16) = v78;
          v82 = (v80 + v130);
          *v82 = v138;
          v82[1] = v178;
          v82[2] = v140;
          v82[3] = v142;
          v83 = v80 + v77;
          v84 = *(v76 + 48);
          v86 = *v76;
          v85 = *(v76 + 16);
          *(v83 + 32) = *(v76 + 32);
          *(v83 + 48) = v84;
          *v83 = v86;
          *(v83 + 16) = v85;
          v88 = *(v76 + 80);
          v87 = *(v76 + 96);
          v89 = *(v76 + 64);
          *(v83 + 112) = *(v76 + 112);
          *(v83 + 80) = v88;
          *(v83 + 96) = v87;
          *(v83 + 64) = v89;
          v90 = v80 + ((v77 + 121) & 0xFFFFFFFFFFFFFFF8);
          *v90 = v134;
          *(v90 + 8) = v184 & 1;
          *(v80 + v146) = v152;
          v91 = (v80 + v144);
          *v91 = v154;
          v91[1] = v159;
          v92 = (v80 + ((v144 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v92 = v150;
          v92[1] = v156;

          sub_24DC568C0(v76, v0 + 136);

          sub_24DC4B67C(v163, &unk_24DCB9F48, v80, v173);
          sub_24DC3DFD4(v163, &qword_27F19F050, &qword_24DCB9EB0);
          if (v184)
          {
            sub_24DC4EF7C(*(v0 + 800), 1, *(v0 + 1136), *(v0 + 1144), *(v0 + 1056), *(v0 + 936));
          }
        }
      }

      v93 = *(v0 + 1048);
      v94 = *(v0 + 1032);
      v95 = *(v0 + 1000);
      v96 = *(v0 + 992);
      v97 = *(v0 + 976);
      v98 = *(v0 + 968);
      (*(v71 + 8))(v0 + 688, v69);
      (*(v97 + 8))(v96, v98);
      (*(v94 + 8))(v93, v95);
    }

    else
    {
      v107 = v63;
      v108 = v62;
      v109 = (v71 + 8);
      v110 = *(v0 + 1056);
      v185 = *(v0 + 1048);
      v111 = *(v0 + 1032);
      v112 = *(v0 + 1000);
      v113 = *(v0 + 992);
      v114 = *(v0 + 976);
      v115 = *(v0 + 968);
      if (v64)
      {
        sub_24DC4F478(v110);
      }

      else
      {
        sub_24DC4EF7C(*(v0 + 800), 1, v108, v107, v110, *(v0 + 936));
      }

      (*v109)(v0 + 688, v69);
      (*(v114 + 8))(v113, v115);
      (*(v111 + 8))(v185, v112);
    }
  }

  else
  {
    if ((**(v0 + 1040) & 1) == 0)
    {
      v32 = *(v0 + 960);
      v33 = swift_task_alloc();
      v34 = *(v0 + 912);
      v35 = *(v0 + 928);
      v36 = *(v0 + 944);
      *(v33 + 16) = *(v0 + 896);
      *(v33 + 32) = v34;
      *(v33 + 48) = v35;
      *(v33 + 64) = v36;
      *(v33 + 80) = v32;
      sub_24DCB5414();
      sub_24DC4E648(sub_24DC56BE4);

      if (*(v0 + 784) != 2)
      {
        v182 = *(v0 + 1224);
        v149 = *(v0 + 1208);
        v131 = *(v0 + 1192);
        v162 = *(v0 + 784);
        v167 = *(v0 + 1128);
        v153 = *(v0 + 1152);
        v155 = *(v0 + 1120);
        v171 = *(v0 + 1112);
        v37 = *(v0 + 1104);
        v38 = *(v0 + 1080);
        v135 = *(v0 + 960);
        v158 = *(v0 + 888);
        v151 = *(v0 + 880);
        v39 = *(v0 + 872);
        v143 = *(v0 + 864);
        v141 = *(v0 + 856);
        v139 = *(v0 + 848);
        v137 = *(v0 + 840);
        v40 = (*(v0 + 132) + 104) & ~*(v0 + 132);
        v127 = (v40 + *(v0 + 1096) + 7) & 0xFFFFFFFFFFFFFFF8;
        v129 = (v127 + 31) & 0xFFFFFFFFFFFFFFF8;
        v41 = (v129 + 39) & 0xFFFFFFFFFFFFFFF8;
        v147 = (v41 + 137) & 0xFFFFFFFFFFFFFFF8;
        v145 = (v147 + 15) & 0xFFFFFFFFFFFFFFF8;
        v123 = *(v0 + 896);
        v125 = *(v0 + 816);
        v120 = *(v0 + 928);
        v122 = *(v0 + 912);
        v118 = *(v0 + 944);
        v42 = *(v0 + 832);
        v43 = *(v0 + 808);
        v133 = *(v0 + 776);
        (*(v0 + 1176))();
        v131(v37, v43, v38);
        v44 = swift_allocObject();
        *(v44 + 16) = 0;
        *(v44 + 24) = 0;
        *(v44 + 32) = v123;
        *(v44 + 48) = v122;
        *(v44 + 64) = v120;
        *(v44 + 80) = v118;
        *(v44 + 96) = v135;
        v149(v44 + v40, v37, v38);
        v45 = v44 + v127;
        *v45 = v125;
        *(v45 + 16) = v42;
        v46 = (v44 + v129);
        *v46 = v137;
        v46[1] = v139;
        v46[2] = v141;
        v46[3] = v143;
        v47 = v44 + v41;
        v48 = *(v39 + 48);
        v50 = *v39;
        v49 = *(v39 + 16);
        *(v47 + 32) = *(v39 + 32);
        *(v47 + 48) = v48;
        *v47 = v50;
        *(v47 + 16) = v49;
        v52 = *(v39 + 80);
        v51 = *(v39 + 96);
        v53 = *(v39 + 64);
        *(v47 + 112) = *(v39 + 112);
        *(v47 + 80) = v52;
        *(v47 + 96) = v51;
        *(v47 + 64) = v53;
        v54 = v44 + ((v41 + 121) & 0xFFFFFFFFFFFFFFF8);
        *v54 = v133;
        *(v54 + 8) = v162 & 1;
        *(v44 + v147) = v153;
        v55 = (v44 + v145);
        *v55 = v155;
        v55[1] = v167;
        v56 = (v44 + ((v145 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v56 = v151;
        v56[1] = v158;

        sub_24DC568C0(v39, v0 + 256);

        sub_24DC4B67C(v171, &unk_24DCB9F58, v44, v182);
        sub_24DC3DFD4(v171, &qword_27F19F050, &qword_24DCB9EB0);
        if (v162)
        {
          sub_24DC4EF7C(*(v0 + 800), 0, *(v0 + 1136), *(v0 + 1144), *(v0 + 1056), *(v0 + 936));
        }
      }
    }

    (*(*(v0 + 1032) + 8))(*(v0 + 1048), *(v0 + 1000));
  }

  v57 = swift_task_alloc();
  *(v0 + 1232) = v57;
  *v57 = v0;
  v57[1] = sub_24DC4D1E8;
  v58 = *(v0 + 1224);
  v59 = *(v0 + 1024);

  return MEMORY[0x2822002D0](v59, 0, 0, v58);
}

uint64_t sub_24DC4E21C()
{

  return MEMORY[0x2822009F8](sub_24DC4E334, 0, 0);
}

uint64_t sub_24DC4E334()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];

  (*(v2 + 8))(v1, v3);
  type metadata accessor for StreamingClientResponse(255, v0[114], v4, v5);
  v6 = sub_24DCB5414();
  (*(*(v6 - 8) + 8))(v0 + 79, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24DC4E490(uint64_t a1, uint64_t a2)
{
  v10 = v2[12];
  v11 = v2[11];
  v8 = v2[14];
  v9 = v2[13];
  v7 = v2[15];
  v4 = v2[16];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24DC334F4;

  return sub_24DC4C8D0(a1, a2, v11, v10, v9, v8, v7, v4);
}

uint64_t sub_24DC4E5CC(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_24DC52D20(a1);
  return v2;
}

uint64_t sub_24DC4E60C()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  result = *(v0 + 8);
  if (*v0 < result)
  {
    return 0;
  }

  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = result + 1;
  }

  return result;
}

void sub_24DC4E648(void (*a1)(uint64_t))
{
  v3 = *v1;
  os_unfair_lock_lock((v1 + 16));
  v6 = v3[6];
  v7 = v3[5];
  v4 = v3[8];
  v5 = v3[7];
  a1(v1 + 24);
  v8[0] = v7;
  v8[1] = v6;
  v8[2] = v5;
  v8[3] = v4;
  _s15HedgingExecutorV5StateVMa(0, v8);

  os_unfair_lock_unlock((v1 + 16));
}

uint64_t sub_24DC4E710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  *(v12 + 256) = a1;
  *(v12 + 264) = a12;
  v15 = *v34;
  v16 = *v34;
  *(v12 + 232) = a5;
  v17 = v12 + 232;
  *(v12 + 240) = a6;
  *(v12 + 248) = a7;
  *(v12 + 200) = a8;
  v18 = (v12 + 200);
  *(v12 + 208) = v30;
  *(v12 + 224) = v31;
  v19 = *(v32 + 80);
  *(v12 + 80) = *(v32 + 64);
  *(v12 + 96) = v19;
  *(v12 + 112) = *(v32 + 96);
  *(v12 + 128) = *(v32 + 112);
  v20 = *(v32 + 16);
  *(v12 + 16) = *v32;
  *(v12 + 32) = v20;
  v21 = *(v32 + 48);
  *(v12 + 48) = *(v32 + 32);
  *(v12 + 64) = v21;
  v22 = swift_task_alloc();
  *(v13 + 272) = v22;
  v23 = *(v15 + 12);
  v24 = v16[5];
  *(v13 + 280) = v23;
  v25 = *(v15 + 17);
  v26 = *(v16 + 104);
  v27 = *(v16 + 120);
  *(v13 + 136) = v24;
  *(v13 + 152) = v23;
  *(v13 + 160) = v26;
  *(v13 + 176) = v27;
  *(v13 + 192) = v25;
  _s15HedgingExecutorVMa(0, v13 + 136);
  *v22 = v13;
  v22[1] = sub_24DC4E8F0;

  return sub_24DC4EA64(a1, v17, v18, v13 + 16, v33, v34, v35, a9);
}

uint64_t sub_24DC4E8F0()
{

  return MEMORY[0x2822009F8](sub_24DC4E9EC, 0, 0);
}

uint64_t sub_24DC4E9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _HedgingAttemptTaskResult(0, v4[33], v4[35], a4);
  swift_storeEnumTagMultiPayload();
  v5 = v4[1];

  return v5();
}

uint64_t sub_24DC4EA64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 232) = v20;
  *(v9 + 240) = v8;
  *(v9 + 224) = v19;
  *(v9 + 208) = v18;
  *(v9 + 192) = a7;
  *(v9 + 200) = a8;
  *(v9 + 176) = a5;
  *(v9 + 184) = a6;
  *(v9 + 168) = a1;
  *(v9 + 248) = *a2;
  v10 = *a3;
  v11 = a3[1];
  *(v9 + 264) = *(a2 + 16);
  *(v9 + 272) = v10;
  v12 = a3[2];
  v13 = a3[3];
  *(v9 + 280) = v11;
  *(v9 + 288) = v12;
  *(v9 + 296) = v13;
  *(v9 + 128) = *(a4 + 112);
  v14 = *(a4 + 96);
  *(v9 + 96) = *(a4 + 80);
  *(v9 + 112) = v14;
  v15 = *(a4 + 64);
  *(v9 + 64) = *(a4 + 48);
  *(v9 + 80) = v15;
  v16 = *(a4 + 32);
  *(v9 + 32) = *(a4 + 16);
  *(v9 + 48) = v16;
  *(v9 + 16) = *a4;
  return MEMORY[0x2822009F8](sub_24DC4EAEC, 0, 0);
}

uint64_t sub_24DC4EAEC()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 264);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v8 = *(v0 + 176);
  v7 = *(v0 + 184);
  *(v0 + 136) = *(v0 + 272);
  *(v0 + 152) = v2;
  *(v0 + 160) = v1;
  v9 = swift_task_alloc();
  *(v0 + 304) = v9;
  v10 = *(v0 + 248);
  v11 = *(v0 + 192);
  v12 = *(v0 + 208);
  *(v9 + 16) = v5;
  *(v9 + 24) = v11;
  *(v9 + 40) = v8;
  *(v9 + 48) = v10;
  *(v9 + 64) = v3;
  *(v9 + 72) = v4;
  *(v9 + 80) = v7;
  *(v9 + 88) = v12;
  v13 = v6[7];
  v14 = v6[2];
  v20 = (*(v13 + 48) + **(v13 + 48));
  v15 = swift_task_alloc();
  *(v0 + 312) = v15;
  v17 = type metadata accessor for _HedgingAttemptTaskResult.AttemptResult(0, v5, v6[4], v16);
  *(v0 + 320) = v17;
  *v15 = v0;
  v15[1] = sub_24DC4ECB8;
  v18 = *(v0 + 168);

  return v20(v18, v0 + 136, v0 + 16, &unk_24DCB9C10, v9, v17, v14, v13);
}

uint64_t sub_24DC4ECB8()
{
  v2 = *v1;
  *(v2 + 328) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC4EDF4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC4EDF4()
{
  v1 = v0[41];
  v2 = v0[21];

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v3 = v0[1];

  return v3();
}

uint64_t sub_24DC4EE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for CancellableTaskHandle(0);
  v17 = *(*(v16 - 8) + 56);
  v17(a9, 1, 1, v16);
  sub_24DC3DFD4(a9, &qword_27F19F008, &qword_24DCB9C18);
  v17(a9, 1, 1, v16);
  v21[0] = a1;
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = a7;
  v21[7] = a8;
  result = _s15HedgingExecutorV14ScheduledStateVMa(0, v21);
  *(a9 + *(result + 84)) = 0;
  return result;
}

uint64_t sub_24DC4EF7C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v25[1] = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F008, &qword_24DCB9C18);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v25 - v14;
  v16 = type metadata accessor for CancellableTaskHandle(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(*(v17 + 48))(v7, 1, v16))
  {
    sub_24DC53740(v7, v19);
    sub_24DCA3F30();
    sub_24DC537A4(v19);
  }

  *(v7 + *(a5 + 84)) = a2 & 1;
  v20 = swift_allocObject();
  v21 = *(a5 + 32);
  *(v20 + 16) = *(a5 + 16);
  *(v20 + 32) = v21;
  *(v20 + 48) = *(a5 + 48);
  *(v20 + 56) = a6;
  *(v20 + 64) = *(a5 + 56);
  *(v20 + 80) = *(a5 + 72);
  *(v20 + 88) = a3;
  *(v20 + 96) = a4;
  type metadata accessor for _HedgingAttemptTaskResult(255, a6, v21, v22);
  v23 = sub_24DCB5174();
  sub_24DCA2568(&unk_24DCB9C28, v20, v23, v15);

  (*(v17 + 56))(v15, 0, 1, v16);
  return sub_24DC536D0(v15, v7);
}

uint64_t sub_24DC4F19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  *(v12 + 256) = a1;
  *(v12 + 264) = a12;
  v15 = *v34;
  v16 = *v34;
  *(v12 + 232) = a5;
  v17 = v12 + 232;
  *(v12 + 240) = a6;
  *(v12 + 248) = a7;
  *(v12 + 200) = a8;
  v18 = (v12 + 200);
  *(v12 + 208) = v30;
  *(v12 + 224) = v31;
  v19 = *(v32 + 80);
  *(v12 + 80) = *(v32 + 64);
  *(v12 + 96) = v19;
  *(v12 + 112) = *(v32 + 96);
  *(v12 + 128) = *(v32 + 112);
  v20 = *(v32 + 16);
  *(v12 + 16) = *v32;
  *(v12 + 32) = v20;
  v21 = *(v32 + 48);
  *(v12 + 48) = *(v32 + 32);
  *(v12 + 64) = v21;
  v22 = swift_task_alloc();
  *(v13 + 272) = v22;
  v23 = *(v15 + 12);
  v24 = v16[5];
  *(v13 + 280) = v23;
  v25 = *(v15 + 17);
  v26 = *(v16 + 104);
  v27 = *(v16 + 120);
  *(v13 + 136) = v24;
  *(v13 + 152) = v23;
  *(v13 + 160) = v26;
  *(v13 + 176) = v27;
  *(v13 + 192) = v25;
  _s15HedgingExecutorVMa(0, v13 + 136);
  *v22 = v13;
  v22[1] = sub_24DC4F37C;

  return sub_24DC4EA64(a1, v17, v18, v13 + 16, v33, v34, v35, a9);
}

uint64_t sub_24DC4F37C()
{

  return MEMORY[0x2822009F8](sub_24DC57B48, 0, 0);
}

uint64_t sub_24DC4F478(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CancellableTaskHandle(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(*(v5 + 48))(v2, 1, v4))
  {
    sub_24DC53740(v2, v7);
    sub_24DCA3F30();
    sub_24DC537A4(v7);
  }

  sub_24DC3DFD4(v2, &qword_27F19F008, &qword_24DCB9C18);
  result = (*(v5 + 56))(v2, 1, 1, v4);
  *(v2 + *(a1 + 84)) = 0;
  return result;
}

uint64_t sub_24DC4F5A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F008, &qword_24DCB9C18);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_24DC4982C(v1, &v9 - v4, &qword_27F19F008, &qword_24DCB9C18);
  v6 = type metadata accessor for CancellableTaskHandle(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v1 + *(a1 + 84));
  }

  sub_24DC3DFD4(v5, &qword_27F19F008, &qword_24DCB9C18);
  return v7;
}

uint64_t sub_24DC4F6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a7;
  v7[14] = v9;
  v7[11] = a3;
  v7[12] = a4;
  v7[9] = a1;
  v7[10] = a2;
  return MEMORY[0x2822009F8](sub_24DC4F6E0, 0, 0);
}

uint64_t sub_24DC4F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 96);
  *(v4 + 120) = type metadata accessor for StreamingClientResponse(255, *(v4 + 104), a3, a4);
  v6 = sub_24DCB5414();
  result = (*(*(v6 - 8) + 16))(v4 + 16, v5, v6);
  if (*(v4 + 64) == 255)
  {
    __break(1u);
  }

  else
  {
    v10 = (*(v4 + 80) + **(v4 + 80));
    v8 = swift_task_alloc();
    *(v4 + 128) = v8;
    *v8 = v4;
    v8[1] = sub_24DC4F838;
    v9 = *(v4 + 72);

    return v10(v9, v4 + 16);
  }

  return result;
}

uint64_t sub_24DC4F838()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC4F99C, 0, 0);
  }

  else
  {
    (*(*(v2[15] - 8) + 8))(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_24DC4F99C()
{
  v1 = v0[17];
  v2 = v0[14];
  (*(*(v0[15] - 8) + 8))(v0 + 2);
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_24DC4FA30(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v16;
  *(v8 + 160) = v15;
  *(v8 + 144) = v13;
  *(v8 + 152) = v14;
  *(v8 + 128) = a8;
  *(v8 + 136) = v12;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  *(v8 + 80) = a1;
  *(v8 + 88) = a2;
  *(v8 + 184) = *v14;
  v9 = a3[1];
  *(v8 + 16) = *a3;
  *(v8 + 32) = v9;
  v10 = a3[3];
  *(v8 + 48) = a3[2];
  *(v8 + 64) = v10;
  return MEMORY[0x2822009F8](sub_24DC4FAB0, 0, 0);
}

uint64_t sub_24DC4FAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 176);
  v6 = *(v4 + 168);
  v7 = *(v4 + 112);
  v8 = *(v4 + 88);
  v9 = *(*(v4 + 184) + 96);
  v10 = type metadata accessor for _HedgingAttemptTaskResult(0, v5, v9, a4);
  v11 = swift_task_alloc();
  *(v4 + 192) = v11;
  v12 = *(v4 + 96);
  v13 = *(v4 + 120);
  v14 = *(v4 + 136);
  v15 = *(v4 + 152);
  *(v11 + 16) = v5;
  *(v11 + 24) = v12;
  *(v11 + 40) = v7;
  *(v11 + 48) = v13;
  *(v11 + 64) = v14;
  *(v11 + 80) = v4 + 16;
  *(v11 + 88) = v8;
  *(v11 + 96) = v15;
  *(v11 + 112) = v6;
  type metadata accessor for _HedgingAttemptTaskResult.AttemptResult(0, v5, v9, v16);
  v17 = swift_task_alloc();
  *(v4 + 200) = v17;
  *v17 = v4;
  v17[1] = sub_24DC4FC10;
  v18 = *(v4 + 80);

  return MEMORY[0x282200600](v18, v10);
}

uint64_t sub_24DC4FC10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC4FD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 392) = v30;
  *(v8 + 400) = v31;
  *(v8 + 376) = v28;
  *(v8 + 384) = v29;
  *(v8 + 368) = v27;
  *(v8 + 352) = v26;
  *(v8 + 336) = a7;
  *(v8 + 344) = a8;
  *(v8 + 320) = a5;
  *(v8 + 328) = a6;
  *(v8 + 304) = a3;
  *(v8 + 312) = a4;
  *(v8 + 288) = a1;
  *(v8 + 296) = a2;
  v9 = *v28;
  v10 = *(*v28 + 96);
  *(v8 + 408) = v10;
  v11 = type metadata accessor for _HedgingAttemptTaskResult(0, v31, v10, a4);
  *(v8 + 416) = v11;
  *(v8 + 424) = *(v11 - 8);
  *(v8 + 432) = swift_task_alloc();
  sub_24DCB5414();
  *(v8 + 440) = swift_task_alloc();
  v12 = sub_24DCB5154();
  *(v8 + 448) = v12;
  *(v8 + 456) = *(v12 - 8);
  *(v8 + 464) = swift_task_alloc();
  v13 = v9[10];
  *(v8 + 472) = v13;
  v14 = v9[11];
  *(v8 + 480) = v14;
  v15 = v9[13];
  *(v8 + 488) = v15;
  *&v16 = v13;
  *(&v16 + 1) = v14;
  *&v17 = v10;
  *(&v17 + 1) = v15;
  v18 = v9[14];
  *(v8 + 496) = v18;
  v19 = v9[15];
  *(v8 + 504) = v19;
  v20 = v9[16];
  *(v8 + 512) = v20;
  v21 = v9[17];
  *(v8 + 520) = v21;
  *(v8 + 128) = v16;
  *&v16 = v20;
  *(&v16 + 1) = v21;
  *(v8 + 176) = v16;
  *&v16 = v18;
  *(&v16 + 1) = v19;
  *(v8 + 144) = v17;
  *(v8 + 160) = v16;
  v22 = _s15HedgingExecutorVMa(0, v8 + 128);
  *(v8 + 528) = v22;
  v23 = *(v22 - 8);
  *(v8 + 536) = v23;
  *(v8 + 544) = *(v23 + 64);
  *(v8 + 552) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  *(v8 + 560) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC5004C, 0, 0);
}

uint64_t sub_24DC5004C()
{
  v1 = *(v0 + 560);
  v70 = *(v0 + 552);
  v53 = *(v0 + 544);
  v61 = *(v0 + 536);
  v69 = *(v0 + 528);
  v2 = *(v0 + 504);
  v66 = *(v0 + 512);
  v67 = *(v0 + 520);
  v64 = *(v0 + 488);
  v65 = *(v0 + 496);
  v3 = *(v0 + 472);
  v63 = *(v0 + 480);
  v4 = *(v0 + 408);
  v62 = *(v0 + 400);
  v59 = *(v0 + 384);
  v60 = *(v0 + 392);
  v48 = v4;
  v49 = *(v0 + 368);
  v57 = *(v0 + 360);
  v58 = *(v0 + 376);
  v46 = *(v0 + 352);
  v55 = *(v0 + 344);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v50 = v6;
  v51 = v5;
  v7 = *(v0 + 304);
  v68 = *(v0 + 296);
  v8 = sub_24DCB51C4();
  v45 = *(*(v8 - 8) + 56);
  v71 = *(v0 + 328);
  v45(v1, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v63;
  v9[6] = v4;
  v9[7] = v64;
  v9[8] = v65;
  v9[9] = v62;
  v9[10] = v2;
  v9[11] = v66;
  v9[12] = v67;
  v9[13] = v7;
  v52 = v7;
  v9[14] = v5;
  v9[15] = v6;
  v56 = sub_24DCB5174();

  sub_24DC4B67C(v1, &unk_24DCB9EC0, v9, v56);
  v54 = v1;
  sub_24DC3DFD4(v1, &qword_27F19F050, &qword_24DCB9EB0);
  v45(v1, 1, 1, v8);
  (*(v61 + 16))(v70, v46, v69);
  v47 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for RPCResponsePart(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v15 = type metadata accessor for RPCAsyncSequence(255, v13, v14, MEMORY[0x277D84950]);
  v17 = type metadata accessor for RPCRequestPart(255, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  v20 = type metadata accessor for RPCWriter.Closable(255, v17, v18, v19);
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  *(v0 + 256) = v15;
  *(v0 + 264) = v20;
  *(v0 + 272) = WitnessTable;
  *(v0 + 280) = v22;
  v23 = type metadata accessor for RPCStream(0, v0 + 256);
  (*(*(v23 - 8) + 16))(v0 + 16, v49, v23);
  v24 = (*(v61 + 80) + 128) & ~*(v61 + 80);
  v25 = (v53 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 71) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 119) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v3;
  *(v30 + 40) = v63;
  *(v30 + 48) = v48;
  *(v30 + 56) = v64;
  *(v30 + 64) = v65;
  *(v30 + 72) = v62;
  *(v30 + 80) = v47;
  *(v30 + 88) = v66;
  *(v30 + 96) = v67;
  *(v30 + 104) = v71;
  *(v30 + 120) = v55;
  (*(v61 + 32))(v30 + v24, v70, v69);
  v31 = (v30 + v25);
  v32 = v57[3];
  v34 = *v57;
  v33 = v57[1];
  v31[2] = v57[2];
  v31[3] = v32;
  *v31 = v34;
  v31[1] = v33;
  *(v30 + v26) = v50;
  v35 = (v30 + v27);
  v36 = *(v0 + 96);
  v35[4] = *(v0 + 80);
  v35[5] = v36;
  v35[6] = *(v0 + 112);
  v37 = *(v0 + 32);
  *v35 = *(v0 + 16);
  v35[1] = v37;
  v38 = *(v0 + 64);
  v35[2] = *(v0 + 48);
  v35[3] = v38;
  *(v30 + v28) = v58;
  v39 = (v30 + v29);
  *v39 = v52;
  v39[1] = v51;
  v40 = (v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v40 = v59;
  v40[1] = v60;

  sub_24DC56148(v57, v0 + 192);

  sub_24DC4B67C(v54, &unk_24DCB9ED0, v30, v56);
  sub_24DC3DFD4(v54, &qword_27F19F050, &qword_24DCB9EB0);
  *(v0 + 568) = *v68;
  sub_24DCB5124();
  v41 = swift_task_alloc();
  *(v0 + 576) = v41;
  *v41 = v0;
  v41[1] = sub_24DC505C8;
  v42 = *(v0 + 440);
  v43 = *(v0 + 448);

  return MEMORY[0x2822002E8](v42, 0, 0, v43);
}

uint64_t sub_24DC505C8()
{

  return MEMORY[0x2822009F8](sub_24DC506C4, 0, 0);
}

uint64_t sub_24DC506C4()
{
  v1 = v0[55];
  v2 = v0[52];
  v3 = v0[53];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    return sub_24DCB55E4();
  }

  (*(v3 + 32))(v0[54], v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = v0[57];
      v6 = v0[58];
      v8 = v0[56];
      v9 = v0[54];
      v10 = v0[36];
      v11 = type metadata accessor for _HedgingAttemptTaskResult.AttemptResult(0, v0[50], v0[51], v5);
      (*(*(v11 - 8) + 32))(v10, v9, v11);
      sub_24DCB5164();
      (*(v7 + 8))(v6, v8);

      v12 = v0[1];

      return v12();
    }

    return sub_24DCB55E4();
  }

  if ((*v0[54] & 1) == 0)
  {
    sub_24DCB5164();
  }

  v14 = swift_task_alloc();
  v0[72] = v14;
  *v14 = v0;
  v14[1] = sub_24DC505C8;
  v15 = v0[55];
  v16 = v0[56];

  return MEMORY[0x2822002E8](v15, 0, 0, v16);
}

uint64_t sub_24DC50968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = v8;
  v6[11] = v9;
  v6[8] = a4;
  v6[9] = a6;
  v6[7] = a1;
  return MEMORY[0x2822009F8](sub_24DC5099C, 0, 0);
}

uint64_t sub_24DC5099C()
{
  v0[2] = sub_24DC5CE88(v0[8]);
  v0[3] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F058, &qword_24DCB9F18);
  v3 = sub_24DC565BC();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_24DC50A80;

  return MEMORY[0x282200308](v0 + 4, v2, v3);
}

uint64_t sub_24DC50A80()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24DC50C74;
  }

  else
  {
    v2 = sub_24DC50B94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC50B94()
{
  *(v0 + 112) = *(v0 + 32);
  *(v0 + 41) = *(v0 + 40);
  return MEMORY[0x2822009F8](sub_24DC50BC0, 0, 0);
}

uint64_t sub_24DC50BC0()
{
  v1 = *(v0 + 41);

  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  **(v0 + 56) = v1 != 1 && *(v0 + 112) == *(v0 + 72);
  type metadata accessor for _HedgingAttemptTaskResult(0, v3, v4, v2);
  swift_storeEnumTagMultiPayload();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24DC50C74()
{
  *(v0 + 48) = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_24DC50D08, 0, 0);
}

uint64_t sub_24DC50D08()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];

  MEMORY[0x2530363B0](v1);
  *v4 = 0;
  type metadata accessor for _HedgingAttemptTaskResult(0, v2, v3, v5);
  swift_storeEnumTagMultiPayload();
  v6 = v0[1];

  return v6();
}

uint64_t sub_24DC50DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v15;
  *(v8 + 104) = v14;
  *(v8 + 88) = v13;
  *(v8 + 72) = v11;
  *(v8 + 80) = v12;
  *(v8 + 56) = a8;
  *(v8 + 64) = v10;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a1;
  *(v8 + 128) = *v12;
  return MEMORY[0x2822009F8](sub_24DC50E20, 0, 0);
}

uint64_t sub_24DC50E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 120);
  v7 = *(v4 + 56);
  v6 = *(v4 + 64);
  v8 = *(*(v4 + 128) + 96);
  *(v4 + 136) = v8;
  type metadata accessor for _HedgingAttemptTaskResult.AttemptResult(0, v5, v8, a4);
  v9 = swift_task_alloc();
  *(v4 + 144) = v9;
  v10 = *(v4 + 24);
  v11 = *(v4 + 40);
  v12 = *(v4 + 72);
  v13 = *(v4 + 88);
  v14 = *(v4 + 104);
  *(v9 + 16) = v5;
  *(v9 + 24) = v10;
  *(v9 + 40) = v11;
  *(v9 + 56) = v7;
  *(v9 + 64) = v6;
  *(v9 + 72) = v12;
  *(v9 + 88) = v13;
  *(v9 + 104) = v14;
  v15 = swift_task_alloc();
  *(v4 + 152) = v15;
  *v15 = v4;
  v15[1] = sub_24DC50F64;
  v16 = *(v4 + 16);
  v17 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v16, v17);
}

uint64_t sub_24DC50F64()
{

  return MEMORY[0x2822009F8](sub_24DC5107C, 0, 0);
}

uint64_t sub_24DC5107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _HedgingAttemptTaskResult(0, v4[15], v4[17], a4);
  swift_storeEnumTagMultiPayload();
  v5 = v4[1];

  return v5();
}

uint64_t sub_24DC510F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 416) = v16;
  *(v8 + 424) = v17;
  *(v8 + 400) = v15;
  *(v8 + 384) = v13;
  *(v8 + 392) = v14;
  *(v8 + 368) = a7;
  *(v8 + 376) = a8;
  *(v8 + 352) = a5;
  *(v8 + 360) = a6;
  *(v8 + 336) = a3;
  *(v8 + 344) = a4;
  *(v8 + 320) = a1;
  *(v8 + 328) = a2;
  *(v8 + 432) = *v14;
  *(v8 + 440) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = sub_24DCB5904();
  *(v8 + 448) = v9;
  *(v8 + 456) = *(v9 - 8);
  *(v8 + 464) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0);
  *(v8 + 472) = swift_task_alloc();
  v10 = sub_24DCB55B4();
  *(v8 + 480) = v10;
  *(v8 + 488) = *(v10 - 8);
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC512CC, 0, 0);
}

uint64_t sub_24DC512CC()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = *(v0 + 472);
  v4 = *(v0 + 432);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  *(v0 + 256) = *(v0 + 336);
  *(v0 + 272) = v5;
  v7 = v4[10];
  *(v0 + 512) = v7;
  v8 = v4[11];
  *(v0 + 520) = v8;
  v9 = v4[12];
  *(v0 + 528) = v9;
  *&v10 = v9;
  *(&v10 + 1) = v4[13];
  *(v0 + 536) = *(&v10 + 1);
  *&v11 = v7;
  *(&v11 + 1) = v8;
  v12 = v4[14];
  *(v0 + 16) = v11;
  *(v0 + 544) = v12;
  v13 = v4[15];
  *(v0 + 552) = v13;
  v14 = v4[16];
  *(v0 + 560) = v14;
  v15 = v4[17];
  *(v0 + 568) = v15;
  *&v11 = v14;
  *(&v11 + 1) = v15;
  *&v16 = v12;
  *(&v16 + 1) = v13;
  *(v0 + 32) = v10;
  *(v0 + 48) = v16;
  *(v0 + 64) = v11;
  v17 = _s15HedgingExecutorVMa(0, v0 + 16);
  *(v0 + 576) = v17;
  sub_24DC4982C(v6 + v17[22], v3, &qword_27F19F000, &qword_24DCB9BC0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v18 = (v0 + 352);
    v19 = (v0 + 336);
    v20 = (v0 + 344);
    v21 = *(v0 + 472);

    sub_24DC3DFD4(v21, &qword_27F19F000, &qword_24DCB9BC0);
  }

  else
  {
    v22 = *(v0 + 496);
    v23 = *(v0 + 504);
    v25 = *(v0 + 480);
    v24 = *(v0 + 488);
    (*(v24 + 32))(v23, *(v0 + 472), v25);

    sub_24DCB5574();
    v26 = sub_24DCB55A4();
    v28 = v27;
    v29 = *(v24 + 8);
    v29(v22, v25);
    v30 = v26;
    v20 = (v0 + 264);
    v19 = (v0 + 256);
    sub_24DC7F3A0(v30, v28, 0);
    v29(v23, v25);
    v18 = (v0 + 272);
  }

  v31 = *v19;
  v32 = *v20;
  v33 = *v18;
  v35 = *(v0 + 360);
  v34 = *(v0 + 368);
  v36 = v34[3];
  v38 = *v34;
  v37 = v34[1];
  *(v0 + 112) = v34[2];
  *(v0 + 128) = v36;
  *(v0 + 80) = v38;
  *(v0 + 96) = v37;
  *(v0 + 280) = v31;
  *(v0 + 288) = v32;
  *(v0 + 296) = v33;
  v39 = v17[24];
  v45 = v17[25];
  v40 = *(v35 + v17[23]);

  v41 = swift_task_alloc();
  *(v0 + 584) = v41;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *v41 = v0;
  v41[1] = sub_24DC51650;
  v42 = *(v0 + 376);
  v43 = *(v0 + 328);

  return sub_24DC81E14(v0 + 144, v43, v0 + 80, v0 + 280, v42, v35 + v39, v35 + v45, v40);
}

uint64_t sub_24DC51650()
{

  return MEMORY[0x2822009F8](sub_24DC51784, 0, 0);
}

uint64_t sub_24DC51784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = v4;
  type metadata accessor for StreamingClientResponse.Contents(255, *(v4 + 528), a3, a4);
  sub_24DC2E0D8();
  v5 = sub_24DCB5904();
  *(v4 + 592) = v5;
  v6 = *(v5 - 8);
  *(v4 + 600) = v6;
  (*(v6 + 16))(v4 + 200, v4 + 144, v5);
  if (*(v4 + 248))
  {
    v7 = *(v4 + 576);
    v8 = *(v4 + 552);
    v9 = *(v4 + 512);
    v10 = *(v4 + 360);
    v11 = *(v4 + 200);
    v12 = *(v4 + 224);
    *(v4 + 632) = *(v4 + 216);
    *(v4 + 640) = v12;
    v13 = *(v4 + 232);
    *(v4 + 648) = v13;
    sub_24DCB5164();
    v14 = *(v10 + *(v7 + 84) + 24);
    v63 = v11;
    Status.Code.init(_:)(&v63);
    LOBYTE(v14) = sub_24DC529CC(v62, v14);
    v15 = (*(v8 + 24))(v9, v8);
    if (v14)
    {
      if (v15)
      {
        sub_24DC93278();
      }

      v18 = *(v4 + 528);
      v61 = *(v4 + 424);
      v19 = *(v4 + 320);
      v20 = type metadata accessor for StreamingClientResponse(0, v18, v16, v17);
      (*(*(v20 - 8) + 16))(v19, v4 + 144, v20);
      v64 = v12;
      v21 = sub_24DC7F274();
      v23 = v22;
      v25 = v24;

      MEMORY[0x2530363B0](v13);
      *(v19 + 56) = v21;
      *(v19 + 64) = v23;
      *(v19 + 72) = v25;
      *(v19 + 73) = HIBYTE(v25) & 1;
      type metadata accessor for _HedgingAttemptTaskResult.AttemptResult(0, v61, v18, v26);
      goto LABEL_19;
    }

    if (v15)
    {
      sub_24DC93230();
    }

    v35 = *(v4 + 568);
    v36 = *(v4 + 544);
    v37 = *(v4 + 424);
    v38 = swift_task_alloc();
    v39 = *(v4 + 528);
    v40 = *(v4 + 552);
    *(v38 + 16) = *(v4 + 512);
    *(v38 + 32) = v39;
    *(v38 + 48) = v36;
    *(v38 + 56) = v37;
    *(v38 + 64) = v40;
    *(v38 + 80) = v35;
    sub_24DC4E648(sub_24DC562B0);

    if (*(v4 + 193) != 1)
    {
      v52 = *(v4 + 528);
      v53 = *(v4 + 424);
      v54 = *(v4 + 320);

      MEMORY[0x2530363B0](v13);
      v57 = type metadata accessor for StreamingClientResponse(0, v52, v55, v56);
      (*(*(v57 - 8) + 16))(v54, v4 + 144, v57);
      *(v54 + 56) = 0;
      *(v54 + 64) = 0;
      *(v54 + 72) = 256;
      type metadata accessor for _HedgingAttemptTaskResult.AttemptResult(0, v53, v52, v58);
LABEL_19:
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    }

    *(v4 + 304) = *(v4 + 376);
    v41 = swift_task_alloc();
    *(v4 + 656) = v41;
    *v41 = v4;
    v41[1] = sub_24DC52270;
    v34 = v4 + 304;
  }

  else
  {
    if ((*(*(v4 + 552) + 24))(*(v4 + 512)))
    {
      sub_24DC93230();
    }

    v27 = *(v4 + 568);
    v28 = *(v4 + 544);
    v29 = *(v4 + 424);
    v30 = swift_task_alloc();
    v31 = *(v4 + 528);
    v32 = *(v4 + 552);
    *(v30 + 16) = *(v4 + 512);
    *(v30 + 32) = v31;
    *(v30 + 48) = v28;
    *(v30 + 56) = v29;
    *(v30 + 64) = v32;
    *(v30 + 80) = v27;
    sub_24DC4E648(sub_24DC57B58);

    if (*(v4 + 194) != 1)
    {
      v43 = *(v4 + 528);
      v44 = *(v4 + 424);
      v45 = *(v4 + 320);

      v48 = type metadata accessor for StreamingClientResponse(0, v43, v46, v47);
      (*(*(v48 - 8) + 16))(v45, v4 + 144, v48);
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      *(v45 + 72) = 256;
      type metadata accessor for _HedgingAttemptTaskResult.AttemptResult(0, v44, v43, v49);
      swift_storeEnumTagMultiPayload();
      (*(v6 + 8))(v4 + 200, v5);
LABEL_20:
      v59 = type metadata accessor for StreamingClientResponse(0, *(v4 + 528), v50, v51);
      (*(*(v59 - 8) + 8))(v4 + 144, v59);

      v60 = *(v4 + 8);

      return v60();
    }

    *(v4 + 312) = *(v4 + 376);
    v33 = swift_task_alloc();
    *(v4 + 608) = v33;
    *v33 = v4;
    v33[1] = sub_24DC51DA8;
    v34 = v4 + 312;
  }

  return sub_24DC5D9C0(v34);
}

uint64_t sub_24DC51DA8()
{

  if (v0)
  {
    MEMORY[0x2530363B0](v0);
  }

  return MEMORY[0x2822009F8](sub_24DC51EC0, 0, 0);
}

uint64_t sub_24DC51EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 568);
  v6 = *(v4 + 544);
  v7 = *(v4 + 424);
  v15 = *(v4 + 528);
  v16 = *(v4 + 512);
  v17 = *(v4 + 552);
  v18 = *(v4 + 408);
  sub_24DC5E3E8(*(v4 + 400), MEMORY[0x277D83B88], a3, a4);
  v8 = swift_task_alloc();
  *(v4 + 616) = v8;
  *(v8 + 16) = v16;
  *(v8 + 32) = v15;
  *(v8 + 48) = v6;
  *(v8 + 56) = v7;
  *(v8 + 64) = v17;
  *(v8 + 80) = v5;
  *(v8 + 88) = v18;
  *(v8 + 104) = v4 + 144;
  v9 = swift_task_alloc();
  *(v4 + 624) = v9;
  *v9 = v4;
  v9[1] = sub_24DC51FF8;
  v10 = *(v4 + 464);
  v11 = *(v4 + 440);
  v12 = *(v4 + 424);
  v13 = MEMORY[0x277D84950];

  return sub_24DC8C5F4(v10, dword_24DCB9F00, v8, v12, v11, v13);
}

uint64_t sub_24DC51FF8()
{

  return MEMORY[0x2822009F8](sub_24DC52110, 0, 0);
}

uint64_t sub_24DC52110()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[66];
  v5 = v0[57];
  v4 = v0[58];
  v6 = v0[56];
  v7 = v0[53];
  v8 = v0[40];

  (*(v5 + 32))(v8, v4, v6);
  type metadata accessor for _HedgingAttemptTaskResult.AttemptResult(0, v7, v3, v9);
  swift_storeEnumTagMultiPayload();
  (*(v1 + 8))(v0 + 25, v2);
  v12 = type metadata accessor for StreamingClientResponse(0, v0[66], v10, v11);
  (*(*(v12 - 8) + 8))(v0 + 18, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24DC52270()
{
  *(*v1 + 664) = v0;

  if (v0)
  {
    v2 = sub_24DC5272C;
  }

  else
  {
    v2 = sub_24DC52384;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC52384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 568);
  v6 = *(v4 + 544);
  v7 = *(v4 + 424);
  v15 = *(v4 + 528);
  v16 = *(v4 + 512);
  v17 = *(v4 + 552);
  v18 = *(v4 + 408);
  sub_24DC5E3E8(*(v4 + 400), MEMORY[0x277D83B88], a3, a4);
  v8 = swift_task_alloc();
  *(v4 + 672) = v8;
  *(v8 + 16) = v16;
  *(v8 + 32) = v15;
  *(v8 + 48) = v6;
  *(v8 + 56) = v7;
  *(v8 + 64) = v17;
  *(v8 + 80) = v5;
  *(v8 + 88) = v18;
  *(v8 + 104) = v4 + 144;
  v9 = swift_task_alloc();
  *(v4 + 680) = v9;
  *v9 = v4;
  v9[1] = sub_24DC524BC;
  v10 = *(v4 + 464);
  v11 = *(v4 + 440);
  v12 = *(v4 + 424);
  v13 = MEMORY[0x277D84950];

  return sub_24DC8C5F4(v10, dword_24DCB9EF0, v8, v12, v11, v13);
}

uint64_t sub_24DC524BC()
{

  return MEMORY[0x2822009F8](sub_24DC525D4, 0, 0);
}

uint64_t sub_24DC525D4()
{
  v1 = v0[81];
  v2 = v0[66];
  v4 = v0[57];
  v3 = v0[58];
  v5 = v0[56];
  v6 = v0[53];
  v7 = v0[40];

  MEMORY[0x2530363B0](v1);

  (*(v4 + 32))(v7, v3, v5);
  type metadata accessor for _HedgingAttemptTaskResult.AttemptResult(0, v6, v2, v8);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for StreamingClientResponse(0, v0[66], v9, v10);
  (*(*(v11 - 8) + 8))(v0 + 18, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24DC52748()
{
  v1 = *(v0 + 16);
  if ((v1 & 1) == 0)
  {
    *(v0 + 16) = 1;
  }

  return v1 ^ 1u;
}

uint64_t sub_24DC52760(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = v11;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_24DC52874;

  return v9(a1, a4);
}

uint64_t sub_24DC52874()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC529A8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC529CC(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_24DC3DF2C(), v3 = sub_24DCB4D24(), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    sub_24DC3DF80();
    do
    {
      v7 = sub_24DCB4DA4();
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_24DC52AB8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = v11;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_24DC52BCC;

  return v9(a1, a4);
}

uint64_t sub_24DC52BCC()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC57B50, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

_OWORD *sub_24DC52D20(uint64_t *a1)
{
  v2 = *a1;
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 80);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 112);

  v10[0] = v2;
  v10[1] = 1;
  v11 = 0;
  LODWORD(v12[0]) = 0;
  memset(v12 + 8, 0, 17);
  v9[0] = v8;
  v9[1] = v7;
  v9[2] = v6;
  v9[3] = v5;
  v3 = _s15HedgingExecutorV5StateVMa(0, v9);
  (*(*(v3 - 8) + 32))(v12 + 8, v10, v3);
  v1[1] = v12[0];
  *(v1 + 25) = *(v12 + 9);
  return v1;
}

uint64_t sub_24DC52E0C(uint64_t *a1)
{
  v1 = *a1;

  return v1;
}

uint64_t *sub_24DC52E40()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v5[0] = *(*v0 + 80);
  v5[1] = v2;
  v3 = *(v1 + 128);
  v5[2] = *(v1 + 112);
  v5[3] = v3;
  _s15HedgingExecutorV5StateVMa(255, v5);
  sub_24DCB4C14();
  sub_24DCB5404();
  return v0;
}

uint64_t sub_24DC52EC8()
{
  sub_24DC52E40();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_24DC52F34@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CancellableTaskHandle(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_24DC53014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a6;
  v6[6] = v10;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v7 = sub_24DCB55C4();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC530E4, 0, 0);
}

uint64_t sub_24DC530E4(uint64_t a1)
{
  v2 = sub_24DCB59A4();
  v4 = v3;
  sub_24DCB5854();
  v5 = swift_task_alloc();
  v1[10] = v5;
  *v5 = v1;
  v5[1] = sub_24DC531BC;
  v7 = v1[3];
  v6 = v1[4];

  return sub_24DC539F0(v7, v6, v2, v4, 0);
}

uint64_t sub_24DC531BC()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24DC533B4;
  }

  else
  {
    v5 = sub_24DC5332C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24DC5332C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 40);
  v5 = *(v4 + 48);
  **(v4 + 16) = 0;
  type metadata accessor for _HedgingAttemptTaskResult(0, v5, v6, a4);
  swift_storeEnumTagMultiPayload();

  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_24DC533B4()
{
  MEMORY[0x2530363B0](*(v0 + 88));
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  **(v0 + 16) = 1;
  type metadata accessor for _HedgingAttemptTaskResult(0, v1, v2, v3);
  swift_storeEnumTagMultiPayload();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24DC53464(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DC459B0(v3, *v1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC534BC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = v3[7];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_24DC334F4;

  return sub_24DC4FA30(a1, a2, a3, v7, v8, v9, v10, v11);
}

uint64_t sub_24DC53608(uint64_t a1)
{
  v4 = v1[4];
  v6 = v1[11];
  v5 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DC334F4;

  return sub_24DC53014(a1, v6, v5, v7, v8, v4);
}

uint64_t sub_24DC536D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F008, &qword_24DCB9C18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DC53740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancellableTaskHandle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DC537A4(uint64_t a1)
{
  v2 = type metadata accessor for CancellableTaskHandle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24DC53800(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24DC538F8;

  return v6(a1);
}

uint64_t sub_24DC538F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC539F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24DCB55B4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24DC53AF0, 0, 0);
}

uint64_t sub_24DC53AF0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_24DCB55C4();
  v5 = sub_24DC5593C(&qword_27F19F040, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_24DCB5834();
  sub_24DC5593C(&qword_27F19F048, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_24DCB55D4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24DC53C80;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_24DC53C80()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC53E3C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24DC53E3C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24DC53ECC(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_24DC54D54(319, &qword_27F19F010, MEMORY[0x277D858F8]);
    if (v2 <= 0x3F)
    {
      sub_24DC547E8(319);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}