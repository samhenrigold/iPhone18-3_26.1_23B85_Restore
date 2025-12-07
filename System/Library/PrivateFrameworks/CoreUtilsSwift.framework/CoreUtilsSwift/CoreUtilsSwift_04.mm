void *sub_247BE6564(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16 = MEMORY[0x277D84F90];
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

uint64_t sub_247BE66AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_247B93B4C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_247BE6744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5DDB0, &unk_247BFA900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247BE67B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_247BE681C()
{
  result = qword_27EE61610[0];
  if (!qword_27EE61610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE61610);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _CUDictionaryEncoder.UnkeyedContainer.Index(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _CUDictionaryEncoder.UnkeyedContainer.Index(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_247BE68E4()
{
  result = qword_27EE61720;
  if (!qword_27EE61720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE61720);
  }

  return result;
}

unint64_t sub_247BE693C()
{
  result = qword_27EE61728[0];
  if (!qword_27EE61728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE61728);
  }

  return result;
}

unint64_t sub_247BE6990(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_247BF6D70();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_247BC071C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t Character.binaryDigit.getter()
{
  result = sub_247BF63D0();
  if (result <= 1)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 1) == 0)
  {
    return v2;
  }

  return result;
}

unint64_t Character.octalDigit.getter()
{
  result = sub_247BF63D0();
  if (result <= 7)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 1) == 0)
  {
    return v2;
  }

  return result;
}

uint64_t Character.isLetterB.getter(uint64_t a1, uint64_t a2)
{
  if (a1 == 98 && a2 == 0xE100000000000000)
  {
    return 1;
  }

  v5 = sub_247BF7180();
  v6 = a1 == 66 && a2 == 0xE100000000000000;
  v7 = v6;
  if ((v5 & 1) != 0 || v7)
  {
    return 1;
  }

  return sub_247BF7180();
}

uint64_t Character.isLetterX.getter(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000)
  {
    return 1;
  }

  v5 = sub_247BF7180();
  v6 = a1 == 88 && a2 == 0xE100000000000000;
  v7 = v6;
  if ((v5 & 1) != 0 || v7)
  {
    return 1;
  }

  return sub_247BF7180();
}

void *Sequence<>.hexString(separator:uppercase:maxBytes:truncator:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v39 = a5;
  v40 = a6;
  v42 = a1;
  v43 = a2;
  v13 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v39 - v17;
  if (a3)
  {
    v19 = sub_247BDED78();
  }

  else
  {
    v19 = sub_247BDED6C();
  }

  v20 = *v19;
  v46 = 0;
  v47 = 0xE000000000000000;
  (*(v13 + 16))(v15, v9, a7);

  sub_247BF6610();
  swift_getAssociatedConformanceWitness();
  result = sub_247BF6AE0();
  if (v45)
  {
    goto LABEL_14;
  }

  if (a4 < 1)
  {
LABEL_15:

    MEMORY[0x24C1B4020](v39, v40);
    (*(v41 + 8))(v18, AssociatedTypeWitness);
    return v46;
  }

  v22 = v44;
  if (*(v20 + 16) <= v44 >> 4)
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v23 = v20 + 32;
    v24 = (v20 + 32 + 16 * (v44 >> 4));
    v25 = *v24;
    v26 = v24[1];

    MEMORY[0x24C1B4020](v25, v26);

    if (*(v20 + 16) > (v22 & 0xF))
    {
      v27 = (v23 + 16 * (v22 & 0xF));
      v28 = *v27;
      v29 = v27[1];

      MEMORY[0x24C1B4020](v28, v29);

      sub_247BF6AE0();
      if ((v45 & 1) == 0)
      {
        v30 = a4 & ~(a4 >> 63);
        v31 = v44;
        while (--v30)
        {
          result = MEMORY[0x24C1B4020](v42, v43);
          v32 = v31 >> 4;
          if (*(v20 + 16) <= v32)
          {
            goto LABEL_17;
          }

          v33 = (v23 + 16 * v32);
          v34 = *v33;
          v35 = v33[1];

          MEMORY[0x24C1B4020](v34, v35);

          if (*(v20 + 16) <= (v31 & 0xF))
          {
            goto LABEL_18;
          }

          v36 = (v23 + 16 * (v31 & 0xF));
          v37 = *v36;
          v38 = v36[1];

          MEMORY[0x24C1B4020](v37, v38);

          sub_247BF6AE0();
          v31 = v44;
          if (v45 == 1)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_15;
      }

LABEL_14:
      (*(v41 + 8))(v18, AssociatedTypeWitness);

      return v46;
    }
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::String __swiftcall StringProtocol.collapsedWhitespace()()
{
  v2 = v0;
  v3 = *(v0 - 8);
  (MEMORY[0x28223BE20])();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v16 - v8;
  v18 = 0;
  v19 = 0xE000000000000000;
  (*(v3 + 16))(v5, v1, v2);
  sub_247BF6610();
  swift_getAssociatedConformanceWitness();
  sub_247BF6AE0();
  v10 = v17;
  if (v17)
  {
    v11 = v16;
    v12 = 1;
    do
    {
      if (sub_247BF63B0())
      {

        sub_247BF6AE0();
        v10 = v17;
        if (!v17)
        {
          break;
        }

        v11 = v16;
        while ((sub_247BF63B0() & 1) != 0)
        {

          sub_247BF6AE0();
          v11 = v16;
          v10 = v17;
          if (!v17)
          {
            goto LABEL_12;
          }
        }

        if ((v12 & 1) == 0)
        {
          MEMORY[0x24C1B4020](32, 0xE100000000000000);
        }
      }

      MEMORY[0x24C1B4010](v11, v10);

      sub_247BF6AE0();
      v12 = 0;
      v11 = v16;
      v10 = v17;
    }

    while (v17);
  }

LABEL_12:
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  v13 = v18;
  v14 = v19;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t StringProtocol.hasPrefixCaseInsensitive<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E238, &qword_247BFCE38);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  if (sub_247BF6990())
  {
    v8 = 1;
  }

  else
  {
    v9 = sub_247BF5FB0();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    sub_247BF6B20();
    v11 = v10;
    sub_247BE9724(v7);
    v8 = v11 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_247BE7630@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

char *StringProtocol.parseHex()(uint64_t a1, uint64_t a2)
{
  sub_247BF6940();
  sub_247BF69A0();
  return StringProtocol.parseHex(_:_:maxBytes:)(&v6, v5, 0x7FFFFFFFFFFFFFFFLL, a1, a2);
}

char *StringProtocol.parseHex(_:_:maxBytes:)(void *a1, unint64_t a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v33 = *a1;
  v6 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16) >= a3)
  {
LABEL_41:
    *a1 = v5;
    return v6;
  }

  v7 = a5;
  v26 = a1;
  v27 = 0;
  v10 = (MEMORY[0x277D84F90] + 16);
  v30 = 1;
  while (1)
  {
    StringProtocol.parseLeadingWhitespace(_:_:)(&v33, a2, a4, v7);
    StringProtocol.parseNumericPrefix(start:end:radix:)(&v33, a2, 16, a4, v7);
    v5 = v33;
    if ((v33 ^ a2) < 0x4000)
    {
LABEL_40:
      a1 = v26;
      goto LABEL_41;
    }

    v32 = v33;
    v11 = sub_247BF69C0();
    v14 = *v12;
    v13 = v12[1];

    v11(v31, 0);
    v15 = sub_247BF63C0();
    if ((v16 & 1) == 0)
    {
      v17 = v15;
      if (v15 <= 15)
      {
        break;
      }
    }

    v19 = v14 == 58 && v13 == 0xE100000000000000;
    if (v19 || (sub_247BF7180() & 1) != 0 || (v14 == 45 ? (v20 = v13 == 0xE100000000000000) : (v20 = 0), v20 || (sub_247BF7180() & 1) != 0 || (v14 == 95 ? (v21 = v13 == 0xE100000000000000) : (v21 = 0), v21 || (sub_247BF7180() & 1) != 0 || (v14 == 44 ? (v22 = v13 == 0xE100000000000000) : (v22 = 0), v22))))
    {
    }

    else
    {
      v23 = sub_247BF7180();

      if ((v23 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_4:
    v32 = v5;
    sub_247BF6960();
    v5 = v31[0];
    v33 = v31[0];
    v10 = v6 + 16;
    v7 = a5;
    if (*(v6 + 2) >= a3)
    {
      goto LABEL_40;
    }
  }

  if (v30)
  {
    if (16 * v17 < 0)
    {
      goto LABEL_43;
    }

    if ((16 * v17) > 0xFF)
    {
      goto LABEL_44;
    }

    v27 = 16 * v17;
    goto LABEL_39;
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_247BBE398(0, *v10 + 1, 1, v6);
    }

    v25 = *(v6 + 2);
    v24 = *(v6 + 3);
    if (v25 >= v24 >> 1)
    {
      v6 = sub_247BBE398((v24 > 1), v25 + 1, 1, v6);
    }

    *(v6 + 2) = v25 + 1;
    v27 |= v17;
    v6[v25 + 32] = v27;
LABEL_39:
    v30 ^= 1u;
    goto LABEL_4;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

char *StringProtocol.parseHex(maxBytes:)(int64_t a1, uint64_t a2, uint64_t a3)
{
  sub_247BF6940();
  sub_247BF69A0();
  return StringProtocol.parseHex(_:_:maxBytes:)(&v8, v7, a1, a2, a3);
}

void *StringProtocol.parseLeadingWhitespace(_:_:)(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  if ((*result ^ a2) >= 0x4000)
  {
    v6 = result;
    do
    {
      v9 = v4;
      v7 = sub_247BF69C0();

      (v7)(v8, 0);
      LOBYTE(v7) = sub_247BF63B0();

      if ((v7 & 1) == 0)
      {
        break;
      }

      v9 = v4;
      result = sub_247BF6960();
      v4 = v8[0];
      *v6 = v8[0];
    }

    while ((v4 ^ a2) >> 14);
  }

  return result;
}

uint64_t StringProtocol.parseNumericPrefix(start:end:radix:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v7 = __ROR8__(a3, 1);
  if (v7 > 3)
  {
    if (v7 != 4)
    {
      if (v7 != 8)
      {
        return v6;
      }

      v8 = *a1;
      if ((*a1 ^ a2) < 0x4000)
      {
        return v6;
      }

      v76 = a1;
      v79 = *a1;
      v15 = sub_247BF69C0();
      v18 = *v16;
      v17 = v16[1];

      v15(&v77, 0);
      if (v18 == 48 && v17 == 0xE100000000000000)
      {
      }

      else
      {
        v20 = sub_247BF7180();

        if ((v20 & 1) == 0)
        {
          return v6;
        }
      }

      v79 = v8;
      Collection.subscript.getter(1, &v79, a4, &v77);
      v41 = v78;
      if (!v78)
      {
        return v6;
      }

      if ((v42 = v77, v77 == 120) && v78 == 0xE100000000000000 || (sub_247BF7180() & 1) != 0 || v42 == 88 && v41 == 0xE100000000000000)
      {
      }

      else
      {
        v64 = sub_247BF7180();

        if ((v64 & 1) == 0)
        {
          return v6;
        }
      }

      v79 = v8;
      Collection.subscript.getter(2, &v79, a4, &v77);
      if (!v78)
      {
        return v6;
      }

      sub_247BF63C0();
      v44 = v43;

      if (v44)
      {
        return v6;
      }

LABEL_57:
      v79 = v8;
      sub_247BF63E0();
      *v76 = v77;
      return v6;
    }

    v22 = *a1;
    if ((*a1 ^ a2) < 0x4000)
    {
      return v6;
    }

    v23 = a1;
    v79 = *a1;
    v24 = sub_247BF69C0();
    v27 = *v25;
    v26 = v25[1];

    v24(&v77, 0);
    if (v27 == 48 && v26 == 0xE100000000000000)
    {
    }

    else
    {
      v29 = sub_247BF7180();

      if ((v29 & 1) == 0)
      {
        return v6;
      }
    }

    v79 = v22;
    Collection.subscript.getter(1, &v79, a4, &v77);
    if (!v78)
    {
      return v6;
    }

    v45 = sub_247BF63D0();
    v47 = v46;

    if ((v47 & 1) != 0 || (v45 & 0x8000000000000000) != 0 || v45 > 7)
    {
      return v6;
    }

    v79 = v22;
    sub_247BF6960();
LABEL_92:
    *v23 = v77;
    return v6;
  }

  if (!v7)
  {
    v21 = *a1;
    if ((*a1 ^ a2) < 0x4000)
    {
      return 10;
    }

    v23 = a1;
    v79 = *a1;
    v30 = sub_247BF69C0();
    v33 = *v31;
    v32 = v31[1];

    v30(&v77, 0);
    if (v33 == 48 && v32 == 0xE100000000000000)
    {
    }

    else
    {
      v35 = sub_247BF7180();

      if ((v35 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    v79 = v21;
    Collection.subscript.getter(1, &v79, a4, &v77);
    v48 = v78;
    if (!v78)
    {
      goto LABEL_74;
    }

    v49 = v77;
    if (v77 == 120 && v78 == 0xE100000000000000 || (sub_247BF7180() & 1) != 0 || v49 == 88 && v48 == 0xE100000000000000)
    {
    }

    else
    {
      v65 = sub_247BF7180();

      if ((v65 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    v79 = v21;
    Collection.subscript.getter(2, &v79, a4, &v77);
    if (v78)
    {
      sub_247BF63C0();
      v51 = v50;

      if ((v51 & 1) == 0)
      {
        v79 = v21;
        sub_247BF63E0();
        *v23 = v77;
        return 16;
      }
    }

LABEL_74:
    v79 = v21;
    v52 = sub_247BF69C0();
    v55 = *v53;
    v54 = v53[1];

    v52(&v77, 0);
    if (v55 == 48 && v54 == 0xE100000000000000)
    {
    }

    else
    {
      v57 = sub_247BF7180();

      if ((v57 & 1) == 0)
      {
        goto LABEL_101;
      }
    }

    v79 = v21;
    Collection.subscript.getter(1, &v79, a4, &v77);
    v58 = v78;
    if (v78)
    {
      v59 = v77;
      if (v77 == 98 && v78 == 0xE100000000000000 || (sub_247BF7180() & 1) != 0 || v59 == 66 && v58 == 0xE100000000000000)
      {
      }

      else
      {
        v66 = sub_247BF7180();

        if ((v66 & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      v79 = v21;
      Collection.subscript.getter(2, &v79, a4, &v77);
      if (v78)
      {
        v60 = sub_247BF63D0();
        v62 = v61;

        if ((v62 & 1) == 0 && v60 <= 1)
        {
          v79 = v21;
          v6 = 2;
          sub_247BF63E0();
          goto LABEL_92;
        }
      }
    }

LABEL_101:
    v79 = v21;
    v67 = sub_247BF69C0();
    v70 = *v68;
    v69 = v68[1];

    v67(&v77, 0);
    if (v70 == 48 && v69 == 0xE100000000000000)
    {
    }

    else
    {
      v71 = sub_247BF7180();

      if ((v71 & 1) == 0)
      {
        return 10;
      }
    }

    v79 = v21;
    Collection.subscript.getter(1, &v79, a4, &v77);
    if (v78)
    {
      v72 = sub_247BF63D0();
      v74 = v73;

      if ((v74 & 1) == 0 && (v72 & 0x8000000000000000) == 0 && v72 <= 7)
      {
        v79 = v21;
        sub_247BF6960();
        *v23 = v77;
        return 8;
      }
    }

    return 10;
  }

  if (v7 == 1)
  {
    v8 = *a1;
    if ((*a1 ^ a2) >= 0x4000)
    {
      v76 = a1;
      v79 = *a1;
      v9 = sub_247BF69C0();
      v12 = *v10;
      v11 = v10[1];

      v9(&v77, 0);
      if (v12 == 48 && v11 == 0xE100000000000000)
      {
      }

      else
      {
        v14 = sub_247BF7180();

        if ((v14 & 1) == 0)
        {
          return v6;
        }
      }

      v79 = v8;
      Collection.subscript.getter(1, &v79, a4, &v77);
      v36 = v78;
      if (v78)
      {
        if ((v37 = v77, v77 == 98) && v78 == 0xE100000000000000 || (sub_247BF7180() & 1) != 0 || v37 == 66 && v36 == 0xE100000000000000)
        {
        }

        else
        {
          v63 = sub_247BF7180();

          if ((v63 & 1) == 0)
          {
            return v6;
          }
        }

        v79 = v8;
        Collection.subscript.getter(2, &v79, a4, &v77);
        if (v78)
        {
          v38 = sub_247BF63D0();
          v40 = v39;

          if ((v40 & 1) == 0 && v38 < 2)
          {
            goto LABEL_57;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t StringProtocol.parseInteger<A>(radix:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_247BF6940();
  sub_247BF69A0();
  return StringProtocol.parseInteger<A>(_:_:radix:)(&v14, v13, a1, a2, a3, a4, a5, a6);
}

uint64_t StringProtocol.parseInteger<A>(_:_:radix:)@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v9 = v8;
  v82 = a3;
  v77 = a8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v75 = &v63 - v17;
  v79 = a7;
  v18 = *(a7 + 8);
  v68 = *(*(v18 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v66 = &v63 - v20;
  v69 = *(a5 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v74 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v83 = &v63 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v63 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v63 - v28;
  v65 = a1;
  v86 = *a1;
  StringProtocol.parseLeadingWhitespace(_:_:)(&v86, a2, a4, a6);
  v73 = StringProtocol.parseNumericSign(start:end:)(&v86, a2, a4, a6);
  if (v73 < 0 && (sub_247BF6B80() & 1) == 0)
  {
    sub_247BC353C();
    swift_allocError();
    *v59 = 2;
    return swift_willThrow();
  }

  v80 = a4;
  v81 = v9;
  v84[0] = StringProtocol.parseNumericPrefix(start:end:radix:)(&v86, a2, v82, a4, a6);
  sub_247BC360C();
  v82 = v29;
  sub_247BF6BA0();
  v84[0] = 0;
  sub_247BF6BA0();
  v30 = v86;
  v31 = a2 >> 14;
  if (v86 >> 14 == a2 >> 14)
  {
    v32 = v82;
LABEL_5:
    sub_247BC353C();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
    v34 = *(v69 + 8);
    v34(v77, a5);
    return (v34)(v32, a5);
  }

  v78 = *(*(a6 + 8) + 8);
  v36 = (v69 + 8);
  v72 = (v69 + 32);
  v64 = v86 >> 14;
  v37 = v86 >> 14;
  v76 = v27;
  v70 = v31;
  v71 = v18;
  while (1)
  {
    v85 = v30;
    v38 = sub_247BF69C0();
    v41 = *v39;
    v40 = v39[1];

    v38(v84, 0);
    if (v41 == 2573 && v40 == 0xE200000000000000)
    {
      break;
    }

    result = sub_247BF7180();
    if (result)
    {
      break;
    }

    if ((v40 & 0x2000000000000000) != 0)
    {
      v43 = HIBYTE(v40) & 0xF;
    }

    else
    {
      v43 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (!v43)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return result;
    }

    if ((v40 & 0x1000000000000000) != 0)
    {
      v44 = sub_247BF64D0();
    }

    else
    {
      v44 = sub_247BF6CD0() << 16;
    }

    if (v44 >> 14 != 4 * v43)
    {
      break;
    }

    result = sub_247BE978C(v41, v40);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_55;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
      break;
    }

    result = sub_247BE978C(v41, v40);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_56;
    }

    v45 = result;

    if ((v45 & 0xFFFFFF00) != 0)
    {
      goto LABEL_54;
    }

    if ((v45 - 58) > 0xF5u)
    {
      v46 = -48;
    }

    else if ((v45 - 91) > 0xE5u)
    {
      v46 = -55;
    }

    else
    {
      if ((v45 - 123) < 0xE6u)
      {
        goto LABEL_50;
      }

      v46 = -87;
    }

    v47 = v46 + v45;
    v48 = sub_247BF6B80();
    v49 = sub_247BF6B70();
    if (v48)
    {
      if (v49 <= 8)
      {
        swift_getAssociatedConformanceWitness();
        sub_247BF7370();
        v27 = v76;
        sub_247BF7160();
        v32 = v82;
        v50 = sub_247BF6410();
        (*v36)(v27, a5);
        if ((v50 & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_37:
        if (v47 >= sub_247BF6B60())
        {
          goto LABEL_51;
        }

        goto LABEL_38;
      }
    }

    else if (v49 < 9)
    {
      v32 = v82;
      goto LABEL_37;
    }

    LOBYTE(v84[0]) = v47;
    sub_247BC5054();
    sub_247BF6B30();
    v32 = v82;
    v51 = sub_247BF6420();
    (*v36)(v27, a5);
    if ((v51 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_38:
    v85 = v30;
    sub_247BF6960();
    v30 = v84[0];
    v52 = v77;
    if (sub_247BF6E50())
    {
      sub_247BC353C();
      swift_allocError();
      *v60 = 1;
      swift_willThrow();
      v61 = *v36;
      (*v36)(v83, a5);
      v61(v52, a5);
      return (v61)(v32, a5);
    }

    LOBYTE(v84[0]) = v47;
    if (v73 < 0)
    {
      sub_247BC5054();
      sub_247BF6BA0();
      v53 = v75;
      v54 = sub_247BF6E60();
    }

    else
    {
      sub_247BC5054();
      sub_247BF6BA0();
      v53 = v75;
      v54 = sub_247BF6E40();
    }

    v55 = v54;
    v56 = *v36;
    (*v36)(v27, a5);
    v57 = *v72;
    v58 = v74;
    (*v72)(v74, v53, a5);
    if (v55)
    {
      sub_247BC353C();
      swift_allocError();
      *v62 = 1;
      swift_willThrow();
      v56(v58, a5);
      v56(v83, a5);
      v56(v52, a5);
      return (v56)(v82, a5);
    }

    v56(v83, a5);
    v56(v52, a5);
    v57(v52, v58, a5);
    v37 = v30 >> 14;
    v27 = v76;
    if (v30 >> 14 == v70)
    {
      v37 = v70;
      goto LABEL_50;
    }
  }

LABEL_50:
  v32 = v82;
LABEL_51:
  if (v37 == v64)
  {
    goto LABEL_5;
  }

  result = (*(v69 + 8))(v32, a5);
  *v65 = v30;
  return result;
}

uint64_t StringProtocol.parseNumericSign(start:end:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if ((*a1 ^ a2) < 0x4000)
  {
    return 0;
  }

  v20 = *a1;
  v7 = sub_247BF69C0();
  v10 = *v8;
  v9 = v8[1];

  v7(v19, 0);
  if (v10 == 45 && v9 == 0xE100000000000000)
  {

    goto LABEL_15;
  }

  v12 = sub_247BF7180();

  if (v12)
  {
LABEL_15:
    v20 = v4;
    sub_247BF6960();
    *a1 = v19[0];
    return -1;
  }

  v20 = v4;
  v13 = sub_247BF69C0();
  v16 = *v14;
  v15 = v14[1];

  v13(v19, 0);
  if (v16 == 43 && v15 == 0xE100000000000000)
  {
  }

  else
  {
    v18 = sub_247BF7180();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = v4;
  sub_247BF6960();
  *a1 = v19[0];
  return 1;
}

unint64_t StringProtocol.parseCharacter(_:_:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*a1 >> 14 >= a2 >> 14)
  {
    v8 = a2;
    type metadata accessor for CUError();
    sub_247BF6CF0();
    MEMORY[0x24C1B4020](0xD00000000000001ELL, 0x8000000247C01B50);
    sub_247BF6DC0();
    MEMORY[0x24C1B4020](0x3D646E65202CLL, 0xE600000000000000);
    v11 = v8;
    sub_247BF6DC0();
    CUError.__allocating_init(_:_:_:)(-6750, 0, 0xE000000000000000, 0);
    swift_willThrow();
  }

  else
  {
    v11 = *a1;
    v6 = sub_247BF69C0();
    v8 = *v7;

    v6(&v10, 0);
    v11 = v4;
    sub_247BF6960();
    *a1 = v10;
  }

  return v8;
}

BOOL sub_247BE94D0(void *a1, uint64_t *a2)
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

void *sub_247BE9500@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_247BE952C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_247BE9618@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Void __swiftcall String.append(_:_:)(CoreUtilsSwift::CUStringAppendFlags *a1, Swift::String a2)
{
  v2 = HIBYTE(a2._object) & 0xF;
  if ((a2._object & 0x2000000000000000) == 0)
  {
    v2 = a2._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    rawValue = a1->rawValue;
    if ((a1->rawValue & 1) == 0)
    {
      v4 = rawValue | 1;
LABEL_16:
      a1->rawValue = v4;
      goto LABEL_17;
    }

    if ((rawValue & 2) != 0)
    {
      if ((rawValue & 8) != 0)
      {
        MEMORY[0x24C1B4020](8236, 0xE200000000000000);
      }

LABEL_17:

      JUMPOUT(0x24C1B4020);
    }

    if ((rawValue & 4) != 0)
    {
      v5 = a1;
      v6 = 8250;
    }

    else
    {
      if ((rawValue & 8) == 0)
      {
LABEL_15:
        v4 = rawValue | 2;
        goto LABEL_16;
      }

      v5 = a1;
      v6 = 8236;
    }

    MEMORY[0x24C1B4020](v6, 0xE200000000000000);
    a1 = v5;
    goto LABEL_15;
  }
}

uint64_t sub_247BE9724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E238, &qword_247BFCE38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_247BE978C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_247BE98DC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_247BF6CE0();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_247BF6D70() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_247BE98DC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_247BE9974(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_247BE99E8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_247BE9974(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_247BC10A0(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_247BE99E8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_247BF6D70();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_247BE9B10()
{
  result = qword_27EE5E240;
  if (!qword_27EE5E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E240);
  }

  return result;
}

unint64_t sub_247BE9B68()
{
  result = qword_27EE5E248;
  if (!qword_27EE5E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E248);
  }

  return result;
}

unint64_t sub_247BE9BC0()
{
  result = qword_27EE5E250;
  if (!qword_27EE5E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E250);
  }

  return result;
}

unint64_t sub_247BE9C18()
{
  result = qword_27EE5E258;
  if (!qword_27EE5E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E258);
  }

  return result;
}

uint64_t CUExtendableProperties.getExtendableProperty<A>(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a5;
  v31 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_247BF6AC0();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = *(a4 + 8);
  v15 = v14(a2, a4);
  v16 = *(v15 + 16);
  v30 = a1;
  if (v16 && (v28 = a6, v17 = sub_247BA04BC(a1), (v18 & 1) != 0))
  {
    v19 = v17;
    v20 = *(v15 + 36);

    v21 = v14(a2, a4);
    sub_247B9D544(v32, v19, v20, 0, v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
    v22 = swift_dynamicCast();
    v23 = *(*(AssociatedTypeWitness - 8) + 56);
    if (v22)
    {
      v24 = *(AssociatedTypeWitness - 8);
      v23(v13, 0, 1, AssociatedTypeWitness);
      return (*(v24 + 32))(v28, v13, AssociatedTypeWitness);
    }

    v23(v13, 1, 1, AssociatedTypeWitness);
    (*(v26 + 8))(v13, v27);
  }

  else
  {
  }

  return (*(v29 + 16))(v31);
}

uint64_t CUExtendableProperties.setExtendableProperty<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a2, AssociatedTypeWitness);
  v12 = (*(a5 + 24))(v14, a3, a5);
  sub_247B9D64C(v15, a1);
  return v12(v14, 0);
}

uint64_t CUExtendableProperties.removeExtendableProperty<A>(key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 24))(v7, a2, a4);
  sub_247BEA0B4(a1, v8);
  sub_247BA0E00(v8);
  return v5(v7, 0);
}

double sub_247BEA0B4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_247BA04BC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BA0AE8();
      v9 = v11;
    }

    sub_247B9471C((*(v9 + 56) + 32 * v7), a2);
    sub_247BA07E4(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t CUExtendablePropertiesActor.getExtendableProperty<A>(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a5;
  v31 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_247BF6AC0();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = *(a4 + 16);
  v15 = v14(a2, a4);
  v16 = *(v15 + 16);
  v30 = a1;
  if (v16 && (v28 = a6, v17 = sub_247BA04BC(a1), (v18 & 1) != 0))
  {
    v19 = v17;
    v20 = *(v15 + 36);

    v21 = v14(a2, a4);
    sub_247B9D544(v32, v19, v20, 0, v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
    v22 = swift_dynamicCast();
    v23 = *(*(AssociatedTypeWitness - 8) + 56);
    if (v22)
    {
      v24 = *(AssociatedTypeWitness - 8);
      v23(v13, 0, 1, AssociatedTypeWitness);
      return (*(v24 + 32))(v28, v13, AssociatedTypeWitness);
    }

    v23(v13, 1, 1, AssociatedTypeWitness);
    (*(v26 + 8))(v13, v27);
  }

  else
  {
  }

  return (*(v29 + 16))(v31);
}

uint64_t CUExtendablePropertiesActor.setExtendableProperty<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a2, AssociatedTypeWitness);
  v12 = (*(a5 + 32))(v14, a3, a5);
  sub_247B9D64C(v15, a1);
  return v12(v14, 0);
}

uint64_t CUExtendablePropertiesActor.removeExtendableProperty<A>(key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 32))(v7, a2, a4);
  sub_247BEA0B4(a1, v8);
  sub_247BA0E00(v8);
  return v5(v7, 0);
}

void fatalError(_:file:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1();
  sub_247BF6E80();
  __break(1u);
}

Swift::UInt64 __swiftcall UpTicksPerSecond()()
{
  if (qword_281346698 != -1)
  {
    swift_once();
  }

  return qword_2813466A0;
}

Swift::Double __swiftcall UpTicksToSecondsF(_:)(Swift::UInt64 a1)
{
  if (qword_281346688 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return *&qword_281346690 * a1;
}

Swift::UInt64 __swiftcall UpTicksToSeconds(_:)(Swift::UInt64 result)
{
  if (qword_281346698 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (qword_2813466A0)
  {
    result /= qword_2813466A0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::UInt64 __swiftcall SecondsToUpTicks(_:)(Swift::UInt64 result)
{
  if (qword_281346698 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_2813466A0))
  {
    result *= qword_2813466A0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::UInt64 __swiftcall SecondsToUpTicksF(_:)(Swift::Double a1)
{
  if (qword_27EE61A60 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = *&qword_27EE61A68 * a1;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 < 1.84467441e19)
  {
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_247BEAA10(uint64_t result, void *a2, double *a3, uint64_t a4)
{
  v4 = result;
  if (*a2 != -1)
  {
    v6 = a3;
    result = swift_once();
    a3 = v6;
  }

  v5 = *a3 * v4;
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 < 1.84467441e19)
  {
    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_247BEAAA4()
{
  info = 0;
  result = mach_timebase_info(&info);
  if (result)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!info.numer)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v1 = 1000000000 * info.denom;
  if (v1 >= info.numer)
  {
    qword_2813466A0 = v1 / info.numer;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_247BEAB08()
{
  if (qword_281346698 != -1)
  {
    swift_once();
  }

  result = 1.0 / qword_2813466A0;
  *&qword_281346690 = result;
  return result;
}

double sub_247BEABCC(uint64_t a1, uint64_t (*a2)(uint64_t), double *a3)
{
  v4 = *a2(a1);
  if (qword_281346698 != -1)
  {
    swift_once();
  }

  result = v4 / qword_2813466A0;
  *a3 = result;
  return result;
}

double sub_247BEAC40()
{
  if (qword_281346698 != -1)
  {
    swift_once();
  }

  result = qword_2813466A0;
  *&qword_27EE61A68 = qword_2813466A0;
  return result;
}

double sub_247BEACFC(uint64_t a1, uint64_t (*a2)(void), double *a3)
{
  if (qword_281346698 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = qword_2813466A0;
  result = v4 / *a2();
  *a3 = result;
  return result;
}

__n128 CUManualClock.now.getter@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  result = v1[1];
  *a1 = result;
  return result;
}

void *CUManualClock.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = sub_247BF7580();
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5DCD0, &qword_247BFA870);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x277D84F90];
  v0[4] = v2;
  v0[5] = v3;
  return v0;
}

void *CUManualClock.init()()
{
  v0[2] = sub_247BF7580();
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5DCD0, &qword_247BFA870);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x277D84F90];
  v0[4] = v2;
  v0[5] = v3;
  return v0;
}

uint64_t CUManualClock.advance(by:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E260, &qword_247BFD080);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v34 = type metadata accessor for CUManualClock.WakeUp(0);
  v10 = *(v34 - 8);
  v11 = MEMORY[0x28223BE20](v34);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  v38 = MEMORY[0x277D84F90];
  v19 = v2[4];

  os_unfair_lock_lock(v19 + 4);

  swift_beginAccess();
  v2[2] = sub_247BF7540();
  v2[3] = v20;
  swift_endAccess();
  v21 = v2 + 5;
  v22 = *(v2[5] + 16);
  if (v22)
  {
    while (v22 <= *(*v21 + 16))
    {
      --v22;
      sub_247BEB97C(*v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22, v18);
      if ((sub_247BF7520() & 1) == 0)
      {
        sub_247BEB97C(v18, v9);
        sub_247BEBCE8(0, 0, v9);
        sub_247BEB2DC(v22, v16);
        sub_247BEBDBC(v16);
      }

      sub_247BEBDBC(v18);
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_8:
    v23 = v38;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v24 = v3[4];

  os_unfair_lock_unlock(v24 + 4);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_247BED0B4(v23);
  }

  v25 = v36;
  v26 = v23[2];
  v27 = v23 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v37[0] = v27;
  v37[1] = v26;
  sub_247BEBE18(v37);
  v28 = v23[2];
  if (v28)
  {
    v36 = v23;
    v29 = *(v34 + 20);
    v30 = *(v10 + 72);
    v31 = (v35 + 16);
    v32 = (v35 + 8);
    do
    {
      sub_247BEB97C(v27, v13);
      (*v31)(v6, &v13[v29], v25);
      sub_247BEBDBC(v13);
      sub_247BF6760();
      (*v32)(v6, v25);
      v27 += v30;
      --v28;
    }

    while (v28);
  }
}

uint64_t type metadata accessor for CUManualClock.WakeUp(uint64_t a1)
{
  result = qword_27EE61D20;
  if (!qword_27EE61D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static CUManualClock.Instant.+= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_247BF7540();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_247BEB2DC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_247BED0B4(v5);
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
    v9 = *(type metadata accessor for CUManualClock.WakeUp(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_247BED3E8(v11, a2);
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

uint64_t CUManualClock.sleep(until:tolerance:)(_OWORD *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  return MEMORY[0x2822009F8](sub_247BEB438, 0, 0);
}

uint64_t sub_247BEB438()
{
  v5 = *(v0 + 24);
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_247BEB53C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_247BEB53C()
{

  return MEMORY[0x2822009F8](sub_247BEB654, 0, 0);
}

uint64_t sub_247BEB66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CUManualClock.WakeUp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a4 + 32);
  v23 = sub_247BED39C;
  v24 = a4;

  os_unfair_lock_lock(v12 + 4);
  sub_247BC1894();
  os_unfair_lock_unlock(v12 + 4);

  if (sub_247BF7520())
  {
    v13 = *(a4 + 32);

    os_unfair_lock_lock(v13 + 4);

    v14 = *(v8 + 20);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28);
    (*(*(v15 - 8) + 16))(&v11[v14], a1, v15);
    *v11 = a2;
    *(v11 + 1) = a3;
    v16 = *(a4 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 40) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_247BECEDC(0, v16[2] + 1, 1, v16);
      *(a4 + 40) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_247BECEDC((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    sub_247BED3E8(v11, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19);
    *(a4 + 40) = v16;
    v20 = *(a4 + 32);

    os_unfair_lock_unlock(v20 + 4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28);
    return sub_247BF6760();
  }
}

uint64_t CUManualClock.Instant.advanced(by:)@<X0>(uint64_t *a3@<X8>)
{
  result = sub_247BF7540();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t CUManualClock.Instant.hashValue.getter()
{
  sub_247BF7460();
  sub_247BF7570();
  return sub_247BF74A0();
}

uint64_t sub_247BEB97C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CUManualClock.WakeUp(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CUManualClock.deinit()
{

  return v0;
}

uint64_t CUManualClock.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

__n128 sub_247BEBA48@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  result = v3[1];
  *a1 = result;
  return result;
}

double sub_247BEBA90@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1000000000;
  *a1 = xmmword_247BFD070;
  return result;
}

uint64_t sub_247BEBAA0(_OWORD *a1)
{
  *(v2 + 16) = *v1;
  *(v2 + 24) = *a1;
  return MEMORY[0x2822009F8](sub_247BEBACC, 0, 0);
}

uint64_t sub_247BEBACC()
{
  v5 = *(v0 + 24);
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_247BEBBD0;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_247BEBBD0()
{

  return MEMORY[0x2822009F8](sub_247BED62C, 0, 0);
}

unint64_t sub_247BEBCE8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_247BECEDC(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_247BED44C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_247BEBDBC(uint64_t a1)
{
  v2 = type metadata accessor for CUManualClock.WakeUp(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247BEBE18(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_247BF6FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for CUManualClock.WakeUp(0);
        v6 = sub_247BF66E0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for CUManualClock.WakeUp(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_247BEC138(v8, v9, a1, v4);
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
    return sub_247BEBF44(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_247BEBF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for CUManualClock.WakeUp(0);
  v8 = MEMORY[0x28223BE20](v33);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_247BEB97C(v23, v17);
      sub_247BEB97C(v20, v13);
      v24 = sub_247BF7520();
      sub_247BEBDBC(v13);
      result = sub_247BEBDBC(v17);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v18)
      {
        break;
      }

      sub_247BED3E8(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_247BED3E8(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_247BEC138(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v99 = a1;
  v110 = type metadata accessor for CUManualClock.WakeUp(0);
  v106 = *(v110 - 8);
  v9 = MEMORY[0x28223BE20](v110);
  v101 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v109 = &v95 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v95 - v14;
  result = MEMORY[0x28223BE20](v13);
  v18 = &v95 - v17;
  v108 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_97:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_247BC04D0(a4);
    }

    v111 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v108)
      {
        v91 = *(result + 16 * a4);
        v92 = result;
        v93 = *(result + 16 * (a4 - 1) + 40);
        sub_247BEC970(*v108 + *(v106 + 72) * v91, *v108 + *(v106 + 72) * *(result + 16 * (a4 - 1) + 32), *v108 + *(v106 + 72) * v93, v5);
        if (v6)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_247BC04D0(v92);
        }

        if (a4 - 2 >= *(v92 + 2))
        {
          goto LABEL_124;
        }

        v94 = &v92[16 * a4];
        *v94 = v91;
        *(v94 + 1) = v93;
        v111 = v92;
        sub_247BC0444(a4 - 1);
        result = v111;
        a4 = *(v111 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v98 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v102 = v21;
    if (v23 >= v19)
    {
      v29 = v23;
    }

    else
    {
      v24 = *v108;
      v105 = v24;
      v25 = *(v106 + 72);
      v5 = v24 + v25 * v23;
      sub_247BEB97C(v5, v18);
      sub_247BEB97C(v24 + v25 * v22, v15);
      v26 = sub_247BF7520();
      sub_247BEBDBC(v15);
      result = sub_247BEBDBC(v18);
      v97 = v22;
      a4 = v22 + 2;
      v107 = v25;
      v27 = v105 + v25 * (v22 + 2);
      while (v19 != a4)
      {
        sub_247BEB97C(v27, v18);
        sub_247BEB97C(v5, v15);
        v28 = sub_247BF7520() & 1;
        sub_247BEBDBC(v15);
        result = sub_247BEBDBC(v18);
        ++a4;
        v27 += v107;
        v5 += v107;
        if ((v26 & 1) != v28)
        {
          v29 = a4 - 1;
          goto LABEL_11;
        }
      }

      v29 = v19;
      v22 = v97;
      if ((v26 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (v29 < v97)
      {
        goto LABEL_127;
      }

      if (v97 < v29)
      {
        v96 = v6;
        v30 = v107 * (v29 - 1);
        v31 = v29;
        v32 = v29 * v107;
        v105 = v29;
        v33 = v97 * v107;
        do
        {
          if (v22 != --v31)
          {
            v34 = *v108;
            if (!*v108)
            {
              goto LABEL_133;
            }

            v5 = v34 + v33;
            sub_247BED3E8(v34 + v33, v101);
            if (v33 < v30 || v5 >= v34 + v32)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v33 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_247BED3E8(v101, v34 + v30);
          }

          ++v22;
          v30 -= v107;
          v32 -= v107;
          v33 += v107;
        }

        while (v22 < v31);
        v6 = v96;
        v22 = v97;
        a4 = v98;
        v29 = v105;
      }

      else
      {
LABEL_24:
        a4 = v98;
      }
    }

    v35 = v108[1];
    if (v29 < v35)
    {
      if (__OFSUB__(v29, v22))
      {
        goto LABEL_126;
      }

      if (v29 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v35)
        {
          v36 = v108[1];
        }

        else
        {
          v36 = v22 + a4;
        }

        if (v36 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v29 != v36)
        {
          break;
        }
      }
    }

    v37 = v29;
    if (v29 < v22)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v102;
    }

    else
    {
      result = sub_247BBE178(0, *(v102 + 2) + 1, 1, v102);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v38 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v38 >> 1)
    {
      result = sub_247BBE178((v38 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v39 = &v21[16 * a4];
    *(v39 + 4) = v22;
    *(v39 + 5) = v37;
    v40 = *v99;
    if (!*v99)
    {
      goto LABEL_135;
    }

    v103 = v37;
    if (a4)
    {
      while (1)
      {
        v41 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v42 = *(v21 + 4);
          v43 = *(v21 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_55:
          if (v45)
          {
            goto LABEL_114;
          }

          v58 = &v21[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_117;
          }

          v64 = &v21[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_121;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v68 = &v21[16 * v5];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_69:
        if (v63)
        {
          goto LABEL_116;
        }

        v71 = &v21[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_119;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = v41 - 1;
        if (v41 - 1 >= v5)
        {
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
          goto LABEL_129;
        }

        if (!*v108)
        {
          goto LABEL_132;
        }

        v79 = v21;
        v80 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v41 + 40];
        sub_247BEC970(*v108 + *(v106 + 72) * v80, *v108 + *(v106 + 72) * *&v21[16 * v41 + 32], *v108 + *(v106 + 72) * v5, v40);
        if (v6)
        {
        }

        if (v5 < v80)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_247BC04D0(v79);
        }

        if (a4 >= *(v79 + 2))
        {
          goto LABEL_111;
        }

        v81 = &v79[16 * a4];
        *(v81 + 4) = v80;
        *(v81 + 5) = v5;
        v111 = v79;
        result = sub_247BC0444(v41);
        v21 = v111;
        v5 = *(v111 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v21[16 * v5 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_112;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_113;
      }

      v53 = &v21[16 * v5];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_115;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_118;
      }

      if (v57 >= v49)
      {
        v75 = &v21[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_122;
        }

        if (v44 < v78)
        {
          v41 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v19 = v108[1];
    v20 = v103;
    a4 = v98;
    if (v103 >= v19)
    {
      goto LABEL_97;
    }
  }

  v96 = v6;
  v97 = v22;
  v82 = *v108;
  v83 = *(v106 + 72);
  v84 = *v108 + v83 * (v29 - 1);
  v85 = -v83;
  v86 = v22 - v29;
  v105 = v29;
  v100 = v83;
  a4 = v82 + v29 * v83;
  v103 = v36;
LABEL_87:
  v5 = a4;
  v104 = v86;
  v107 = v84;
  v87 = v84;
  while (1)
  {
    sub_247BEB97C(v5, v18);
    sub_247BEB97C(v87, v15);
    v88 = sub_247BF7520();
    sub_247BEBDBC(v15);
    result = sub_247BEBDBC(v18);
    if ((v88 & 1) == 0)
    {
LABEL_86:
      v84 = v107 + v100;
      v86 = v104 - 1;
      a4 += v100;
      v37 = v103;
      if (++v105 != v103)
      {
        goto LABEL_87;
      }

      v6 = v96;
      v22 = v97;
      if (v103 < v97)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v82)
    {
      break;
    }

    v89 = v109;
    sub_247BED3E8(v5, v109);
    swift_arrayInitWithTakeFrontToBack();
    sub_247BED3E8(v89, v87);
    v87 += v85;
    v5 += v85;
    if (__CFADD__(v86++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_247BEC970(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = a3;
  v42 = type metadata accessor for CUManualClock.WakeUp(0);
  v8 = MEMORY[0x28223BE20](v42);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v43 = &v35 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v44 - a2;
  if (v44 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v47 = a1;
  v46 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = v4;
    v23 = a4 + v18;
    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = a4 + v18;
      v26 = v23;
      v39 = v10;
      v40 = v24;
      while (2)
      {
        while (1)
        {
          v36 = v26;
          v27 = a2 + v24;
          v41 = a2;
          while (1)
          {
            v28 = v44;
            if (a2 <= a1)
            {
              v47 = a2;
              v45 = v36;
              goto LABEL_59;
            }

            v38 = v26;
            v44 += v24;
            v29 = v25 + v24;
            v30 = v25 + v24;
            v31 = v43;
            sub_247BEB97C(v30, v43);
            a2 = v27;
            v32 = v27;
            v33 = v39;
            sub_247BEB97C(v32, v39);
            v34 = sub_247BF7520();
            sub_247BEBDBC(v33);
            sub_247BEBDBC(v31);
            if (v34)
            {
              break;
            }

            v26 = v29;
            if (v28 < v25 || v44 >= v25)
            {
              swift_arrayInitWithTakeFrontToBack();
              v27 = a2;
              v24 = v40;
            }

            else
            {
              v27 = a2;
              v24 = v40;
              if (v28 != v25)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v25 = v29;
            a2 = v41;
            if (v29 <= a4)
            {
              goto LABEL_57;
            }
          }

          if (v28 < v41 || v44 >= v41)
          {
            break;
          }

          v26 = v38;
          v24 = v40;
          if (v28 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v25 <= a4)
          {
            goto LABEL_57;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v26 = v38;
        v24 = v40;
        if (v25 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_57:
    v47 = a2;
    v45 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v45 = a4 + v17;
    if (v17 >= 1 && a2 < v44)
    {
      do
      {
        v21 = v43;
        sub_247BEB97C(a2, v43);
        sub_247BEB97C(a4, v10);
        v22 = sub_247BF7520();
        sub_247BEBDBC(v10);
        sub_247BEBDBC(v21);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v47 = a1;
      }

      while (a4 < v19 && a2 < v44);
    }
  }

LABEL_59:
  sub_247BECDF8(&v47, &v46, &v45);
  return 1;
}

uint64_t sub_247BECDF8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for CUManualClock.WakeUp(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_247BECEDC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E290, &qword_247BFD268);
  v10 = *(type metadata accessor for CUManualClock.WakeUp(0) - 8);
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
  v15 = *(type metadata accessor for CUManualClock.WakeUp(0) - 8);
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

unint64_t sub_247BED0D8()
{
  result = qword_27EE5E268;
  if (!qword_27EE5E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E268);
  }

  return result;
}

unint64_t sub_247BED130()
{
  result = qword_27EE5E270;
  if (!qword_27EE5E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E270);
  }

  return result;
}

unint64_t sub_247BED184()
{
  result = qword_27EE5E278;
  if (!qword_27EE5E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E278);
  }

  return result;
}

unint64_t sub_247BED1E0()
{
  result = qword_27EE5E280;
  if (!qword_27EE5E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E280);
  }

  return result;
}

void sub_247BED2BC(uint64_t a1)
{
  sub_247BED338();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_247BED338()
{
  if (!qword_27EE5E288)
  {
    v0 = sub_247BF6770();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE5E288);
    }
  }
}

__n128 sub_247BED39C@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t sub_247BED3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CUManualClock.WakeUp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_247BED44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for CUManualClock.WakeUp(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (a3 >= 1 && v17 >= 1)
  {
    result = sub_247BEB97C(a4, v15);
    if (v12 < v17)
    {
      goto LABEL_25;
    }
  }

  return sub_247BED5C0(a4);
}

uint64_t sub_247BED5C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E260, &qword_247BFD080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247BED7DC()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_247BED818()
{
  type metadata accessor for CUAsyncSerialQueue.DefaultActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27EE61D38 = v0;
  return result;
}

uint64_t CUAsyncSerialQueue.OrderingPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_247BF7460();
  MEMORY[0x24C1B4F40](v1);
  return sub_247BF74A0();
}

uint64_t CUAsyncSerialQueue.unownedExecutor.getter(uint64_t a1)
{
  if (*(v1 + 32))
  {
    return sub_247BF6A90();
  }

  if (qword_27EE61D30 != -1)
  {
    swift_once();
  }

  return qword_27EE61D38;
}

uint64_t CUAsyncSerialQueue.__allocating_init(dispatchQueue:ordering:)(uint64_t a1, char *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  v6 = MEMORY[0x277D84F90];
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 24) = v6;
  *(result + 32) = a1;
  *(result + 16) = v5;
  return result;
}

uint64_t CUAsyncSerialQueue.init(dispatchQueue:ordering:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x277D84F90];
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 24) = v4;
  *(v2 + 32) = a1;
  *(v2 + 16) = v3;
  return v2;
}

uint64_t CUAsyncSerialQueue.run<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = sub_247BF0FEC(&qword_27EE5E298, a2, type metadata accessor for CUAsyncSerialQueue, &protocol conformance descriptor for CUAsyncSerialQueue);
  v6 = sub_247BF6740();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](sub_247BEDAE4, v6, v5);
}

uint64_t sub_247BEDAE4()
{
  v1 = v0[8];
  v2 = swift_beginAccess();
  v10 = *(*(v1 + 24) + 16);
  v11 = v0[8];
  if (v10 || (*(v11 + 40) & 1) != 0)
  {
    v12 = *(v11 + 48);
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      v13 = v0[9];
      *(v11 + 48) = v12 + 1;
      v14 = swift_task_alloc();
      v0[12] = v14;
      *(v14 + 16) = v11;
      *(v14 + 24) = v12;
      v15 = swift_task_alloc();
      v0[13] = v15;
      *(v15 + 16) = v11;
      *(v15 + 24) = v12;
      v2 = swift_task_alloc();
      v0[14] = v2;
      *v2 = v0;
      v2[1] = sub_247BEDD64;
      v3 = &unk_247BFD2C0;
      v5 = sub_247BEEEB4;
      v9 = MEMORY[0x277D84F78] + 8;
      v4 = v14;
      v6 = v15;
      v7 = v11;
      v8 = v13;
    }

    return MEMORY[0x282200830](v2, v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    *(v11 + 40) = 1;
    sub_247BF6820();
    v19 = (v0[6] + *v0[6]);
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = sub_247BEDFE4;
    v17 = v0[5];

    return v19(v17);
  }
}

uint64_t sub_247BEDD64()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_247BEE184;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_247BEDE88;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_247BEDE88(uint64_t a1)
{
  if (*(v1[8] + 40) != 1)
  {
    __break(1u);
  }

  v2 = v1[15];
  sub_247BF6820();
  if (v2)
  {
    sub_247BEF2D0(v1[8]);
    v3 = v1[1];

    return v3();
  }

  else
  {
    v7 = (v1[6] + *v1[6]);
    v5 = swift_task_alloc();
    v1[16] = v5;
    *v5 = v1;
    v5[1] = sub_247BEDFE4;
    v6 = v1[5];

    return v7(v6);
  }
}

uint64_t sub_247BEDFE4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_247BEE1F0;
  }

  else
  {
    v5 = sub_247BEE120;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_247BEE120()
{
  sub_247BEF2D0(*(v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BEE184()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BEE1F0()
{
  sub_247BEF2D0(*(v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BEE278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  type metadata accessor for CUAsyncSerialQueue();
  v3[4] = sub_247BF0FEC(&qword_27EE5E298, v4, type metadata accessor for CUAsyncSerialQueue, &protocol conformance descriptor for CUAsyncSerialQueue);
  v6 = sub_247BF6740();
  v3[5] = v6;
  v3[6] = v5;

  return MEMORY[0x2822009F8](sub_247BEE334, v6, v5);
}

uint64_t sub_247BEE334(uint64_t a1)
{
  sub_247BF6820();
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  v5 = swift_task_alloc();
  v1[7] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  v6[1] = sub_247BEE478;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, v4, v2, 0x293A5F286E7572, 0xE700000000000000, sub_247BF10A4, v5, v7);
}

uint64_t sub_247BEE478()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_247BEE594;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_247BEB654;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_247BEE594()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BEE5F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_247B95F40;

  return sub_247BEE278(v4, v2, v3);
}

uint64_t sub_247BEE690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v35 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v36 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v34 - v8);
  v10 = sub_247BF67E0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  type metadata accessor for CUAsyncSerialQueue();
  sub_247BF0FEC(&qword_27EE5E298, v17, type metadata accessor for CUAsyncSerialQueue, &protocol conformance descriptor for CUAsyncSerialQueue);
  sub_247BF6740();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = (v11 + 32);
  if (*(a2 + 16))
  {
    sub_247BF6810();
    v19 = *(v4 + 48);
    v20 = *(v4 + 64);
    *v7 = v34;
    (*v18)(v7 + v19, v14, v10);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2B8, &qword_247BFD418);
    (*(*(v21 - 8) + 16))(v7 + v20, v35, v21);
    swift_beginAccess();
    v22 = *(a2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 24) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_247BF0B3C(0, v22[2] + 1, 1, v22);
      *(a2 + 24) = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_247BF0B3C((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    sub_247BF1034(v7, v22 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v25);
    *(a2 + 24) = v22;
    swift_beginAccess();
    sub_247BEEB10((a2 + 24));
    return swift_endAccess();
  }

  else
  {
    sub_247BF67C0();
    v27 = *(v4 + 48);
    v28 = *(v4 + 64);
    *v9 = v34;
    (*v18)(v9 + v27, v16, v10);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2B8, &qword_247BFD418);
    (*(*(v29 - 8) + 16))(v9 + v28, v35, v29);
    swift_beginAccess();
    v30 = *(a2 + 24);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 24) = v30;
    if ((v31 & 1) == 0)
    {
      v30 = sub_247BF0B3C(0, v30[2] + 1, 1, v30);
      *(a2 + 24) = v30;
    }

    v33 = v30[2];
    v32 = v30[3];
    if (v33 >= v32 >> 1)
    {
      v30 = sub_247BF0B3C((v32 > 1), v33 + 1, 1, v30);
    }

    v30[2] = v33 + 1;
    result = sub_247BF1034(v9, v30 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v33);
    *(a2 + 24) = v30;
  }

  return result;
}

uint64_t sub_247BEEB10(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_247BF0D2C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_247BEF878(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_247BEEBC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = sub_247BF0FEC(&qword_27EE5DD08, 255, sub_247BA0E68, MEMORY[0x277D85270]);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_247BF67E0();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v9, 1, 1, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_247BC5B0C(v9, v7, &qword_27EE5DD00, &qword_247BFA890);
  v15 = (*(v13 + 48))(v7, 1, v12);
  v16 = v10;

  if (v15 == 1)
  {
    sub_247B9CAD0(v7, &qword_27EE5DD00, &qword_247BFA890);
  }

  else
  {
    sub_247BF67D0();
    (*(v13 + 8))(v7, v12);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = &unk_247BFD438;
  *(v17 + 24) = v14;
  v18 = v16;

  if (v10 != 1)
  {
    v20[0] = 6;
    v20[1] = 0;
    v20[2] = v10;
    v20[3] = v11;
  }

  swift_task_create();
  sub_247B9CAD0(v9, &qword_27EE5DD00, &qword_247BFA890);
}

uint64_t sub_247BEEEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for CUAsyncSerialQueue();
  sub_247BF0FEC(&qword_27EE5E298, v4, type metadata accessor for CUAsyncSerialQueue, &protocol conformance descriptor for CUAsyncSerialQueue);
  v6 = sub_247BF6740();

  return MEMORY[0x2822009F8](sub_247BEEF74, v6, v5);
}

uint64_t sub_247BEEF74()
{
  sub_247BEEFD4(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BEEFD4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2B8, &qword_247BFD418);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v19 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v19 - v6;
  swift_beginAccess();
  v8 = *(v1 + 24);
  v9 = *(v8 + 16);

  if (!v9)
  {
  }

  v11 = 0;
  while (v11 < *(v8 + 16))
  {
    sub_247BC5B0C(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, &qword_27EE5E2A8, &qword_247BFD408);
    v12 = *v7;
    result = sub_247B9CAD0(v7, &qword_27EE5E2A8, &qword_247BFD408);
    if (v12 == a1)
    {

      sub_247BEF5C4(v11, v7);
      v13 = v20;
      v14 = *(v19 + 48);
      v16 = v21;
      v15 = v22;
      (*(v21 + 32))(v20, &v7[*(v19 + 64)], v22);
      v17 = sub_247BF67E0();
      (*(*(v17 - 8) + 8))(&v7[v14], v17);
      sub_247BF6780();
      sub_247BF0FEC(&qword_27EE5E2C8, 255, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v18 = swift_allocError();
      sub_247BF62D0();
      v23 = v18;
      sub_247BF6750();
      return (*(v16 + 8))(v13, v15);
    }

    if (v9 == ++v11)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_247BEF2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2B0, &qword_247BFD410);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2B8, &qword_247BFD418);
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  if (*(a1 + 40) == 1)
  {
    result = swift_beginAccess();
    v14 = *(a1 + 24);
    if (*(v14 + 16))
    {
      sub_247BC5B0C(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v5, &qword_27EE5E2A8, &qword_247BFD408);
      sub_247BF0E94(0, 1);
      v15 = *(v2 + 48);
      v23 = *(v2 + 64);
      v16 = *(v6 + 48);
      v17 = *(v6 + 64);
      v18 = sub_247BF67E0();
      v19 = *(v18 - 8);
      (*(v19 + 32))(&v8[v16], &v5[v15], v18);
      v20 = v5;
      v21 = v10;
      v22 = *(v10 + 32);
      v22(&v8[v17], &v20[v23], v9);
      v22(v13, &v8[v17], v9);
      (*(v19 + 8))(&v8[v16], v18);
      sub_247BF6760();
      return (*(v21 + 8))(v13, v9);
    }

    else
    {
      *(a1 + 40) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247BEF5C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_247BF0D2C(v5);
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
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_247BF1034(v11, a2);
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

uint64_t CUAsyncSerialQueue.deinit()
{

  return v0;
}

uint64_t CUAsyncSerialQueue.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_247BEF75C()
{
  result = qword_27EE5E2A0;
  if (!qword_27EE5E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E2A0);
  }

  return result;
}

uint64_t sub_247BEF7B0(uint64_t a1)
{
  if (*(v1 + 32))
  {
    return sub_247BF6A90();
  }

  if (qword_27EE61D30 != -1)
  {
    swift_once();
  }

  return qword_27EE61D38;
}

uint64_t sub_247BEF878(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_247BF6FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
        v6 = sub_247BF66E0();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_247BEFC0C(v8, v9, a1, v4);
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
    return sub_247BEF9BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_247BEF9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v8 = MEMORY[0x28223BE20](v35);
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_247BC5B0C(v21, v16, &qword_27EE5E2A8, &qword_247BFD408);
      sub_247BC5B0C(v19, v12, &qword_27EE5E2A8, &qword_247BFD408);
      v22 = sub_247BF67B0();
      sub_247B9CAD0(v12, &qword_27EE5E2A8, &qword_247BFD408);
      result = sub_247B9CAD0(v16, &qword_27EE5E2A8, &qword_247BFD408);
      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v23 = v34;
      sub_247BF1034(v21, v34);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_247BF1034(v23, v19);
      v19 += v32;
      v21 += v32;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_247BEFC0C(unint64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v104 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v108 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v116 = &v100 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v118 = &v100 - v13;
  result = MEMORY[0x28223BE20](v12);
  v117 = &v100 - v15;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_99:
    a4 = *v104;
    if (!*v104)
    {
      goto LABEL_139;
    }

    v6 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v105;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v6;
LABEL_102:
      v120 = result;
      v6 = *(result + 16);
      if (v6 >= 2)
      {
        v96 = v7;
        while (*a3)
        {
          v97 = *(result + 16 * v6);
          v98 = result;
          v7 = *(result + 16 * (v6 - 1) + 40);
          sub_247BF0534(*a3 + *(v96 + 72) * v97, *a3 + *(v96 + 72) * *(result + 16 * (v6 - 1) + 32), *a3 + *(v96 + 72) * v7, a4);
          if (v30)
          {
          }

          if (v7 < v97)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_247BC04D0(v98);
          }

          if (v6 - 2 >= *(v98 + 2))
          {
            goto LABEL_127;
          }

          v99 = &v98[16 * v6];
          *v99 = v97;
          *(v99 + 1) = v7;
          v120 = v98;
          sub_247BC0444(v6 - 1);
          result = v120;
          v6 = *(v120 + 16);
          if (v6 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_247BC04D0(v6);
    goto LABEL_102;
  }

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v103 = a4;
  v119 = v6;
  v106 = a3;
  v101 = v7;
  while (1)
  {
    v19 = v17 + 1;
    v109 = v18;
    if (v17 + 1 >= v16)
    {
      v29 = v17 + 1;
      v30 = v105;
    }

    else
    {
      v20 = v17;
      v6 = *a3;
      v21 = *(v7 + 72);
      v22 = *a3 + v21 * v19;
      v23 = v117;
      sub_247BC5B0C(v22, v117, &qword_27EE5E2A8, &qword_247BFD408);
      v24 = v118;
      sub_247BC5B0C(v6 + v21 * v20, v118, &qword_27EE5E2A8, &qword_247BFD408);
      LODWORD(v114) = sub_247BF67B0();
      sub_247B9CAD0(v24, &qword_27EE5E2A8, &qword_247BFD408);
      result = sub_247B9CAD0(v23, &qword_27EE5E2A8, &qword_247BFD408);
      v102 = v20;
      v25 = v20 + 2;
      v115 = v21;
      v26 = v6 + v21 * (v20 + 2);
      while (v16 != v25)
      {
        v27 = v117;
        sub_247BC5B0C(v26, v117, &qword_27EE5E2A8, &qword_247BFD408);
        v28 = v118;
        sub_247BC5B0C(v22, v118, &qword_27EE5E2A8, &qword_247BFD408);
        v6 = sub_247BF67B0() & 1;
        sub_247B9CAD0(v28, &qword_27EE5E2A8, &qword_247BFD408);
        result = sub_247B9CAD0(v27, &qword_27EE5E2A8, &qword_247BFD408);
        ++v25;
        v26 += v115;
        v22 += v115;
        if ((v114 & 1) != v6)
        {
          v29 = v25 - 1;
          goto LABEL_12;
        }
      }

      v29 = v16;
LABEL_12:
      v17 = v102;
      a4 = v103;
      v30 = v105;
      a3 = v106;
      v7 = v101;
      if ((v114 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v29 < v102)
      {
        goto LABEL_130;
      }

      if (v102 < v29)
      {
        v31 = v115 * (v29 - 1);
        v32 = v29 * v115;
        v114 = v29;
        v33 = v29;
        v34 = v102;
        v35 = v102 * v115;
        v6 = v119;
        do
        {
          if (v34 != --v33)
          {
            v36 = *v106;
            if (!*v106)
            {
              goto LABEL_136;
            }

            sub_247BF1034(v36 + v35, v108);
            if (v35 < v31 || v36 + v35 >= v36 + v32)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v35 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_247BF1034(v108, v36 + v31);
            v6 = v119;
          }

          ++v34;
          v31 -= v115;
          v32 -= v115;
          v35 += v115;
        }

        while (v34 < v33);
        v30 = v105;
        a3 = v106;
        v7 = v101;
        v17 = v102;
        a4 = v103;
        v29 = v114;
      }

      else
      {
LABEL_25:
        v6 = v119;
      }
    }

    v37 = a3[1];
    if (v29 >= v37)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v29, v17))
    {
      goto LABEL_129;
    }

    if (v29 - v17 >= a4)
    {
LABEL_35:
      v38 = v29;
      if (v29 < v17)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v17, a4))
    {
      goto LABEL_131;
    }

    if (v17 + a4 < v37)
    {
      v37 = v17 + a4;
    }

    if (v37 < v17)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v29 == v37)
    {
      goto LABEL_35;
    }

    v110 = v37;
    v105 = v30;
    v84 = *a3;
    v85 = *(v7 + 72);
    v86 = *a3 + v85 * (v29 - 1);
    v87 = -v85;
    v102 = v17;
    v88 = v17 - v29;
    v107 = v85;
    v115 = v84;
    a4 = v84 + v29 * v85;
LABEL_89:
    v113 = v86;
    v114 = v29;
    v111 = a4;
    v112 = v88;
    v89 = v86;
LABEL_90:
    v90 = v117;
    sub_247BC5B0C(a4, v117, &qword_27EE5E2A8, &qword_247BFD408);
    v91 = v118;
    sub_247BC5B0C(v89, v118, &qword_27EE5E2A8, &qword_247BFD408);
    v92 = sub_247BF67B0();
    sub_247B9CAD0(v91, &qword_27EE5E2A8, &qword_247BFD408);
    result = sub_247B9CAD0(v90, &qword_27EE5E2A8, &qword_247BFD408);
    if (v92)
    {
      break;
    }

    v6 = v119;
LABEL_88:
    v29 = v114 + 1;
    v86 = v113 + v107;
    v88 = v112 - 1;
    a4 = v111 + v107;
    if (v114 + 1 != v110)
    {
      goto LABEL_89;
    }

    v30 = v105;
    a3 = v106;
    v7 = v101;
    v17 = v102;
    v38 = v110;
    if (v110 < v102)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = v109;
    }

    else
    {
      result = sub_247BBE178(0, *(v109 + 2) + 1, 1, v109);
      v18 = result;
    }

    v40 = *(v18 + 2);
    v39 = *(v18 + 3);
    a4 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_247BBE178((v39 > 1), v40 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 2) = a4;
    v41 = &v18[16 * v40];
    *(v41 + 4) = v17;
    *(v41 + 5) = v38;
    v110 = v38;
    if (!*v104)
    {
      goto LABEL_138;
    }

    if (v40)
    {
      v42 = *v104;
      v6 = v119;
      while (1)
      {
        v43 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v44 = *(v18 + 4);
          v45 = *(v18 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_56:
          if (v47)
          {
            goto LABEL_117;
          }

          v60 = &v18[16 * a4];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_120;
          }

          v66 = &v18[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_124;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v70 = &v18[16 * a4];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_70:
        if (v65)
        {
          goto LABEL_119;
        }

        v73 = &v18[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_122;
        }

        if (v76 < v64)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v43 - 1;
        if (v43 - 1 >= a4)
        {
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
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v81 = v18;
        a4 = *&v18[16 * v6 + 32];
        v82 = *&v18[16 * v43 + 40];
        sub_247BF0534(*a3 + *(v7 + 72) * a4, *a3 + *(v7 + 72) * *&v18[16 * v43 + 32], *a3 + *(v7 + 72) * v82, v42);
        if (v30)
        {
        }

        if (v82 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_247BC04D0(v81);
        }

        if (v6 >= *(v81 + 2))
        {
          goto LABEL_114;
        }

        v83 = &v81[16 * v6];
        *(v83 + 4) = a4;
        *(v83 + 5) = v82;
        v120 = v81;
        result = sub_247BC0444(v43);
        v18 = v120;
        a4 = *(v120 + 16);
        v6 = v119;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v48 = &v18[16 * a4 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_115;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_116;
      }

      v55 = &v18[16 * a4];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_118;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_121;
      }

      if (v59 >= v51)
      {
        v77 = &v18[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_125;
        }

        if (v46 < v80)
        {
          v43 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v119;
LABEL_4:
    v105 = v30;
    v16 = a3[1];
    v17 = v110;
    a4 = v103;
    if (v110 >= v16)
    {
      goto LABEL_99;
    }
  }

  if (v115)
  {
    v93 = v116;
    sub_247BF1034(a4, v116);
    v6 = v119;
    swift_arrayInitWithTakeFrontToBack();
    sub_247BF1034(v93, v89);
    v89 += v87;
    a4 += v87;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_247BF0534(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v7 = MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = a4 + v17;
      v40 = a4;
      v41 = -v13;
      v39 = a1;
      do
      {
        v37 = v25;
        v26 = a2;
        v27 = a2 + v23;
        v42 = v26;
        while (1)
        {
          v29 = v45;
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v37;
            goto LABEL_60;
          }

          v38 = v25;
          v45 += v23;
          v30 = v24 + v23;
          sub_247BC5B0C(v30, v11, &qword_27EE5E2A8, &qword_247BFD408);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v43;
          sub_247BC5B0C(v32, v43, &qword_27EE5E2A8, &qword_247BFD408);
          v35 = sub_247BF67B0();
          v36 = v34;
          v11 = v33;
          sub_247B9CAD0(v36, &qword_27EE5E2A8, &qword_247BFD408);
          sub_247B9CAD0(v33, &qword_27EE5E2A8, &qword_247BFD408);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v45 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
            a1 = v39;
          }

          else
          {
            v27 = v31;
            a1 = v39;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v41;
          v26 = v42;
          if (!v28)
          {
            a2 = v42;
            goto LABEL_59;
          }
        }

        if (v29 < v42 || v45 >= v42)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          a1 = v39;
          v23 = v41;
        }

        else
        {
          v25 = v38;
          a1 = v39;
          a2 = v31;
          v23 = v41;
          if (v29 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_59:
    v48 = a2;
    v46 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < v45)
    {
      v41 = v13;
      do
      {
        sub_247BC5B0C(a2, v11, &qword_27EE5E2A8, &qword_247BFD408);
        v19 = v43;
        sub_247BC5B0C(a4, v43, &qword_27EE5E2A8, &qword_247BFD408);
        v20 = sub_247BF67B0();
        sub_247B9CAD0(v19, &qword_27EE5E2A8, &qword_247BFD408);
        sub_247B9CAD0(v11, &qword_27EE5E2A8, &qword_247BFD408);
        if (v20)
        {
          v21 = a2 + v13;
          if (a1 < a2 || a1 >= v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v21;
        }

        else
        {
          v22 = a4 + v13;
          if (a1 < a4 || a1 >= v22)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = v22;
          a4 = v22;
        }

        v13 = v41;
        a1 += v41;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v45);
    }
  }

LABEL_60:
  sub_247BF0A4C(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_247BF0A4C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_247BF0B3C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2C0, &unk_247BFD420);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408) - 8);
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

unint64_t sub_247BF0D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_247BF0E94(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_247BF0B3C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_247BF0D40(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_247BF0F54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_247B95F40;

  return sub_247BEEEBC(v4, v2, v3);
}

uint64_t sub_247BF0FEC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_247BF1034(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2A8, &qword_247BFD408);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247BF10AC()
{
  v0 = sub_247BF60B0();
  __swift_allocate_value_buffer(v0, qword_27EE61F48);
  __swift_project_value_buffer(v0, qword_27EE61F48);
  sub_247BA120C();

  return sub_247BF60A0();
}

uint64_t CULocaleManager.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager_locale;
  v4 = sub_247BF5FB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_247BF11B4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager, &protocol conformance descriptor for CULocaleManager);
  sub_247BF6030();

  return swift_unknownObjectRetain();
}

uint64_t sub_247BF1260@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager, &protocol conformance descriptor for CULocaleManager);
  sub_247BF6030();

  *a3 = *(v4 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver);
  return swift_unknownObjectRetain();
}

uint64_t sub_247BF1314(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager, &protocol conformance descriptor for CULocaleManager);
  sub_247BF6020();
}

uint64_t type metadata accessor for CULocaleManager(uint64_t a1)
{
  result = qword_27EE62010;
  if (!qword_27EE62010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CULocaleManager.preferredUnitSpeed.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager, &protocol conformance descriptor for CULocaleManager);
  sub_247BF6030();

  v3 = *(v2 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed);

  return v3;
}

id sub_247BF14E4@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager, &protocol conformance descriptor for CULocaleManager);
  sub_247BF6030();

  v5 = *(v4 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed);
  *a3 = v5;

  return v5;
}

void sub_247BF15D0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed;
  v5 = *(v1 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed);
  sub_247BC3818(0, &qword_27EE5E2D8, 0x277CCAE40);
  v6 = v5;
  v7 = sub_247BF6AA0();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager, &protocol conformance descriptor for CULocaleManager);
    sub_247BF6020();
  }
}

void sub_247BF1744()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed);
  *(v1 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed) = v2;
  v4 = v2;
}

uint64_t CULocaleManager.preferredUnitSpeedLabel.getter()
{
  v1 = v0;
  sub_247BC3818(0, &qword_27EE5E2D8, 0x277CCAE40);
  swift_getKeyPath();
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager, &protocol conformance descriptor for CULocaleManager);
  sub_247BF6030();

  v2 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed;
  v3 = *(v0 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 milesPerHour];
  LOBYTE(v4) = sub_247BF6AA0();

  swift_getKeyPath();
  sub_247BF6030();

  if (v4)
  {
    v7 = [*(v1 + v2) symbol];
    sub_247BF6480();

    v8 = sub_247BF64A0();
  }

  else
  {
    v9 = [*(v1 + v2) symbol];
    v8 = sub_247BF6480();
  }

  return v8;
}

uint64_t CULocaleManager.__allocating_init(locale:autoStart:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  CULocaleManager.init(locale:autoStart:)(a1, v2);
  return v4;
}

uint64_t CULocaleManager.init(locale:autoStart:)(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v27) = a2;
  v24 = sub_247BF6280();
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_247BF62A0();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E238, &qword_247BFCE38);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  *(v2 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver) = 0;
  sub_247BF6040();
  v12 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager_locale;
  v13 = sub_247BF5FB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v15(v3 + v12, a1, v13);
  v28 = a1;
  v15(v11, a1, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  v16 = _s14CoreUtilsSwift15CULocaleManagerC26preferredUnitSpeedUncached6localeSo06NSUnitH0C10Foundation6LocaleVSg_tFZ_0(v11);
  sub_247BE9724(v11);
  *(v3 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager__preferredUnitSpeed) = v16;
  if (v27)
  {
    sub_247BC3818(0, &qword_27EE5DCE0, 0x277D85C78);
    v27 = sub_247BF6A20();
    v17 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_247BF2E3C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247BC9C8C;
    aBlock[3] = &block_descriptor_1;
    v18 = _Block_copy(aBlock);

    sub_247BF6290();
    v29 = MEMORY[0x277D84F90];
    sub_247BF3254(&qword_27EE5E158, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E160, &qword_247BFC460);
    sub_247BF2F18();
    v19 = v24;
    sub_247BF6BD0();
    v20 = v27;
    MEMORY[0x24C1B4500](0, v8, v6, v18);
    _Block_release(v18);

    (*(v14 + 8))(v28, v13);
    (*(v26 + 8))(v6, v19);
    (*(v23 + 8))(v8, v25);
  }

  else
  {
    (*(v14 + 8))(v28, v13);
  }

  return v3;
}

Swift::Void __swiftcall CULocaleManager.start()()
{
  v1 = v0;
  v2 = *v0;
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager, &protocol conformance descriptor for CULocaleManager);
  sub_247BF6030();

  if (!*(v0 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver))
  {
    if (qword_27EE61F40 != -1)
    {
      swift_once();
    }

    v3 = sub_247BF60B0();
    __swift_project_value_buffer(v3, qword_27EE61F48);
    v4 = sub_247BF6090();
    v5 = sub_247BF6A00();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_247B92000, v4, v5, "Start", v6, 2u);
      MEMORY[0x24C1B5910](v6, -1, -1);
    }

    v7 = [objc_opt_self() defaultCenter];
    v8 = *MEMORY[0x277CBE620];
    v9 = [objc_opt_self() mainQueue];
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v2;
    aBlock[4] = sub_247BF2F7C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247BF2754;
    aBlock[3] = &block_descriptor_9;
    v12 = _Block_copy(aBlock);

    [v7 addObserverForName:v8 object:0 queue:v9 usingBlock:v12];
    _Block_release(v12);

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    aBlock[0] = v1;
    sub_247BF6020();

    swift_unknownObjectRelease();
  }
}

uint64_t CULocaleManager.deinit()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___observationRegistrar;
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager, &protocol conformance descriptor for CULocaleManager);
  sub_247BF6030();

  v3 = *(v0 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver);
  if (v3)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultCenter];
    [v5 removeObserver_];
    swift_unknownObjectRelease();
  }

  v6 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager_locale;
  v7 = sub_247BF5FB0();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  swift_unknownObjectRelease();

  v8 = sub_247BF6050();
  (*(*(v8 - 8) + 8))(v1 + v2, v8);
  return v1;
}

uint64_t CULocaleManager.__deallocating_deinit()
{
  CULocaleManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_247BF2380(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E238, &qword_247BFCE38);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  sub_247BF67A0();
  sub_247BF6790();
  sub_247BF6740();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    v11 = v5;
    sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager, &protocol conformance descriptor for CULocaleManager);
    sub_247BF6030();

    if (*(v5 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver))
    {
      v6 = OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager_locale;
      v7 = sub_247BF5FB0();
      v8 = *(v7 - 8);
      (*(v8 + 16))(v3, v5 + v6, v7);
      (*(v8 + 56))(v3, 0, 1, v7);
      v9 = _s14CoreUtilsSwift15CULocaleManagerC26preferredUnitSpeedUncached6localeSo06NSUnitH0C10Foundation6LocaleVSg_tFZ_0(v3);
      sub_247BE9724(v3);
      sub_247BF15D0(v9);
    }
  }
}

uint64_t sub_247BF25CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_247BF6790();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_247BC1894();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_247BF6CF0();
    MEMORY[0x24C1B4020](0xD00000000000003FLL, 0x8000000247C01450);
    v12 = sub_247BF75C0();
    MEMORY[0x24C1B4020](v12);

    MEMORY[0x24C1B4020](46, 0xE100000000000000);
    result = sub_247BF6E80();
    __break(1u);
  }

  return result;
}

uint64_t sub_247BF2754(uint64_t a1, uint64_t a2)
{
  v3 = sub_247BF5D80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_247BF5D50();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

Swift::Void __swiftcall CULocaleManager.stop()()
{
  swift_getKeyPath();
  sub_247BF3254(&qword_27EE5E2D0, type metadata accessor for CULocaleManager, &protocol conformance descriptor for CULocaleManager);
  sub_247BF6030();

  v1 = *(v0 + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver);
  if (v1)
  {
    v2 = qword_27EE61F40;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_247BF60B0();
    __swift_project_value_buffer(v3, qword_27EE61F48);
    v4 = sub_247BF6090();
    v5 = sub_247BF6A00();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_247B92000, v4, v5, "Cancel", v6, 2u);
      MEMORY[0x24C1B5910](v6, -1, -1);
    }

    v7 = [objc_opt_self() defaultCenter];
    [v7 removeObserver_];

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_247BF6020();

    swift_unknownObjectRelease();
  }
}

id _s14CoreUtilsSwift15CULocaleManagerC26preferredUnitSpeedUncached6localeSo06NSUnitH0C10Foundation6LocaleVSg_tFZ_0(uint64_t a1)
{
  v2 = sub_247BF5F70();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E238, &qword_247BFCE38);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_247BF5FB0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247BF31E4(a1, v11);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    sub_247BF5FA0();
    if (v16(v11, 1, v12) != 1)
    {
      sub_247BE9724(v11);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  sub_247BF5F80();
  (*(v13 + 8))(v15, v12);
  sub_247BF5F40();
  sub_247BF3254(&qword_27EE5E2E0, MEMORY[0x277CC9688], MEMORY[0x277CC9690]);
  v17 = sub_247BF6460();
  v18 = *(v3 + 8);
  v18(v6, v2);
  if (v17 & 1) != 0 || (sub_247BF5F50(), v19 = sub_247BF6460(), v18(v6, v2), (v19))
  {
    v18(v8, v2);
    v20 = objc_opt_self();
    v21 = &selRef_milesPerHour;
  }

  else
  {
    sub_247BF5F60();
    v22 = sub_247BF6460();
    v18(v6, v2);
    v18(v8, v2);
    v20 = objc_opt_self();
    v21 = &selRef_milesPerHour;
    if (v22)
    {
      v21 = &selRef_kilometersPerHour;
    }
  }

  v23 = [v20 *v21];

  return v23;
}

uint64_t sub_247BF2E3C()
{
  sub_247BF67A0();
  sub_247BF6790();
  sub_247BF6740();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    CULocaleManager.start()();
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_247BF2F18()
{
  result = qword_27EE5E168;
  if (!qword_27EE5E168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5E160, &qword_247BFC460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E168);
  }

  return result;
}

uint64_t sub_247BF2F7C()
{
  v1 = *(v0 + 24);
  sub_247BF67A0();
  v2 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v4[2] = v2;
  v4[3] = v1;
  sub_247BF25CC(sub_247BF3174, v4, "CoreUtilsSwift/CULocaleManager.swift", 36, 2u, 69);
}

uint64_t sub_247BF3064(uint64_t a1)
{
  result = sub_247BF5FB0();
  if (v2 <= 0x3F)
  {
    result = sub_247BF6050();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_247BF31A0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14CoreUtilsSwift15CULocaleManager___localeChangedObserver) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_247BF31E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E238, &qword_247BFCE38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247BF3254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_247BF32BC()
{
  v0 = sub_247BF60B0();
  __swift_allocate_value_buffer(v0, qword_27EE62028);
  __swift_project_value_buffer(v0, qword_27EE62028);
  sub_247BA120C();

  return sub_247BF60A0();
}

uint64_t CUDistributedNotificationHandler.__allocating_init(name:sender:dispatchQueue:handler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  return sub_247BF3354(a1, a2, a3, a4, a5, a6, a7, 1);
}

{
  return sub_247BF3354(a1, a2, a3, a4, a5, a6, a7, 0);
}

uint64_t sub_247BF3354(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = swift_allocObject();
  v16 = v15;
  v17 = *v15;
  *(v15 + 56) = a2;
  *(v15 + 64) = 0;
  *(v15 + 24) = a6;
  *(v15 + 32) = a7;
  *(v15 + 40) = a8 & 1;
  *(v15 + 48) = a1;
  v18 = v17;
  v39 = a5;
  if (a5)
  {
    *(v15 + 16) = a5;
    v19 = objc_allocWithZone(MEMORY[0x277CCABD8]);
    sub_247BF5424();

    v20 = a5;
    v21 = [v19 init];
    v22 = v21;
    if (v21)
    {
      [v21 setUnderlyingQueue_];
    }
  }

  else
  {
    *(v15 + 16) = 0;
    sub_247BF5424();

    v22 = 0;
  }

  v38 = a6;
  if (qword_27EE62020 != -1)
  {
    swift_once();
  }

  v23 = sub_247BF60B0();
  __swift_project_value_buffer(v23, qword_27EE62028);

  v24 = sub_247BF6090();
  v25 = sub_247BF6A00();

  v40 = a7;
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = v18;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v26 = 136315138;
    *(v26 + 4) = sub_247BBE628(a1, a2, aBlock);
    _os_log_impl(&dword_247B92000, v24, v25, "register: name=%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v29 = v28;
    v18 = v27;
    MEMORY[0x24C1B5910](v29, -1, -1);
    MEMORY[0x24C1B5910](v26, -1, -1);
  }

  v30 = [objc_opt_self() defaultCenter];
  v31 = sub_247BF6470();

  if (a4)
  {
    v32 = sub_247BF6470();
  }

  else
  {
    v32 = 0;
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = *(v18 + 80);
  v34[3] = *(v18 + 88);
  v34[4] = v33;
  aBlock[4] = sub_247BF542C;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247BF2754;
  aBlock[3] = &block_descriptor_2;
  v35 = _Block_copy(aBlock);

  v36 = [v30 addObserverForName:v31 object:v32 queue:v22 usingBlock:v35];
  sub_247BF4594(v38, v40);

  _Block_release(v35);
  swift_unknownObjectRelease();

  *(v16 + 64) = v36;
  swift_unknownObjectRelease();
  return v16;
}

void sub_247BF3740(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_247BF5D80();
  v113 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v97[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v108 = &v97[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v97[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v109 = &v97[-v15];
  v16 = *(v4 + 80);
  v111 = *(v16 - 8);
  v17 = v111[8];
  v18 = MEMORY[0x28223BE20](v14);
  v110 = &v97[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v97[-v20];
  MEMORY[0x28223BE20](v19);
  v112 = &v97[-v22];
  v23 = sub_247BF5D70();
  if (!v23)
  {
    goto LABEL_8;
  }

  v24 = v23;
  v118 = 0x64616F6C796170;
  v119 = 0xE700000000000000;
  sub_247BF6C70();
  if (!*(v24 + 16) || (v25 = sub_247BBEADC(v120), (v26 & 1) == 0))
  {

    sub_247BC5A5C(v120);
LABEL_8:
    v121 = 0u;
    v122 = 0u;
    goto LABEL_9;
  }

  sub_247B9B1AC(*(v24 + 56) + 32 * v25, &v121);
  sub_247BC5A5C(v120);

  if (!*(&v122 + 1))
  {
LABEL_9:
    sub_247B9CAD0(&v121, &unk_27EE5DDB0, &unk_247BFA900);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v105 = v13;
    v27 = *(v4 + 88);
    v28 = *(v27 + 48);
    v106 = v120[0];
    v107 = v120[1];
    v28();
    v102 = v27;
    v113 = v16;
    if (qword_27EE62020 != -1)
    {
      swift_once();
    }

    v47 = sub_247BF60B0();
    __swift_project_value_buffer(v47, qword_27EE62028);
    v49 = v111;
    v48 = v112;
    v50 = v111 + 2;
    v51 = v111[2];
    v52 = v113;
    v51(v21, v112, v113);
    v53 = sub_247BF6090();
    v54 = sub_247BF6A00();
    v55 = os_log_type_enabled(v53, v54);
    v101 = v50;
    v100 = v51;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v99 = v56;
      v104 = swift_slowAlloc();
      v120[0] = v104;
      *v56 = 136315138;
      v57 = v110;
      v51(v110, v21, v52);
      v58 = v49[1];
      v58(v21, v52);
      v98 = v54;
      v59 = sub_247BF6FD0();
      v61 = v60;
      v103 = v58;
      v58(v57, v52);
      v48 = v112;
      v62 = sub_247BBE628(v59, v61, v120);

      v63 = v99;
      *(v99 + 1) = v62;
      v64 = v63;
      _os_log_impl(&dword_247B92000, v53, v98, "received: %s", v63, 0xCu);
      v65 = v104;
      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      MEMORY[0x24C1B5910](v65, -1, -1);
      MEMORY[0x24C1B5910](v64, -1, -1);
    }

    else
    {
      v103 = v49[1];
      v103(v21, v52);
    }

    v66 = v52;
    v67 = v2[4];
    v104 = v2[3];
    if (v2[5])
    {

      v68 = v104;
      (v104)(v48);
      sub_247BC2AC4(v106, v107);
      sub_247BF4594(v68, v67);
    }

    else
    {
      v69 = v2[2];
      if (v69)
      {
        v70 = v48;
        v71 = sub_247BF67E0();
        v72 = *(v71 - 8);
        v73 = v109;
        (*(v72 + 56))(v109, 1, 1, v71);
        v74 = v110;
        v100(v110, v70, v66);
        v75 = (*(v49 + 80) + 48) & ~*(v49 + 80);
        v76 = swift_allocObject();
        v77 = v49;
        v78 = v76;
        v79 = v102;
        v76[2] = v66;
        v76[3] = v79;
        v76[4] = v104;
        v76[5] = v67;
        (v77[4])(v76 + v75, v74, v66);
        v80 = v105;
        sub_247BC5B0C(v73, v105, &qword_27EE5DD00, &qword_247BFA890);
        LODWORD(v80) = (*(v72 + 48))(v80, 1, v71);
        sub_247BF5424();
        v81 = v69;
        sub_247BF5424();
        if (v80 == 1)
        {
          sub_247B9CAD0(v105, &qword_27EE5DD00, &qword_247BFA890);
        }

        else
        {
          v91 = v105;
          sub_247BF67D0();
          (*(v72 + 8))(v91, v71);
        }

        v92 = v107;
        v93 = v106;
        v94 = sub_247BC2908();
        v95 = swift_allocObject();
        *(v95 + 16) = &unk_247BFD698;
        *(v95 + 24) = v78;
        v114 = 6;
        v115 = 0;
        v116 = v81;
        v117 = v94;
        v96 = v81;

        swift_task_create();
        sub_247B9CAD0(v109, &qword_27EE5DD00, &qword_247BFA890);

        sub_247BC2AC4(v93, v92);

        sub_247BF4594(v104, v67);
        v89 = v112;
        v90 = v113;
        goto LABEL_29;
      }

      v82 = sub_247BF67E0();
      v83 = v108;
      (*(*(v82 - 8) + 56))(v108, 1, 1, v82);
      v84 = v110;
      v100(v110, v48, v52);
      v85 = (*(v49 + 80) + 64) & ~*(v49 + 80);
      v86 = swift_allocObject();
      *(v86 + 2) = 0;
      *(v86 + 3) = 0;
      v87 = v102;
      *(v86 + 4) = v52;
      *(v86 + 5) = v87;
      v88 = v104;
      *(v86 + 6) = v104;
      *(v86 + 7) = v67;
      (v49[4])(&v86[v85], v84, v66);
      sub_247BF5424();

      sub_247BF47C0(0, 0, v83, &unk_247BFD688, v86);
      sub_247BC2AC4(v106, v107);

      sub_247BF4594(v88, v67);
    }

    v89 = v48;
    v90 = v66;
LABEL_29:
    v103(v89, v90);
    return;
  }

LABEL_10:
  type metadata accessor for CUError();
  v29 = CUError.__allocating_init(_:_:_:)(-6705, 0x6F6C796170206F6ELL, 0xEF61746164206461, 0);
  swift_willThrow();
  v30 = v5;
  v31 = v7;
  v32 = v113;
  if (qword_27EE62020 != -1)
  {
    swift_once();
  }

  v33 = sub_247BF60B0();
  __swift_project_value_buffer(v33, qword_27EE62028);
  (*(v32 + 16))(v7, a1, v30);
  v34 = v29;
  v35 = sub_247BF6090();
  v36 = sub_247BF69F0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v120[0] = v112;
    *v37 = 136315394;
    v38 = sub_247BF5D60();
    v39 = sub_247BF6480();
    v41 = v40;

    (*(v32 + 8))(v31, v30);
    v42 = sub_247BBE628(v39, v41, v120);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2112;
    v43 = v29;
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v44;
    v45 = v111;
    *v111 = v44;
    _os_log_impl(&dword_247B92000, v35, v36, "### receive failed: name=%s, error=%@", v37, 0x16u);
    sub_247B9CAD0(v45, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v45, -1, -1);
    v46 = v112;
    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    MEMORY[0x24C1B5910](v46, -1, -1);
    MEMORY[0x24C1B5910](v37, -1, -1);
  }

  else
  {

    (*(v32 + 8))(v7, v30);
  }
}

uint64_t CUDistributedNotificationHandler.deinit()
{
  v1 = v0;
  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = qword_27EE62020;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_247BF60B0();
    __swift_project_value_buffer(v4, qword_27EE62028);

    v5 = sub_247BF6090();
    v6 = sub_247BF6A00();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_247BBE628(*(v1 + 48), *(v1 + 56), &v11);
      _os_log_impl(&dword_247B92000, v5, v6, "deregister: name=%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x24C1B5910](v8, -1, -1);
      MEMORY[0x24C1B5910](v7, -1, -1);
    }

    v9 = [objc_opt_self() defaultCenter];
    [v9 removeObserver_];
    swift_unknownObjectRelease();
  }

  sub_247BF4594(*(v1 + 24), *(v1 + 32));

  swift_unknownObjectRelease();
  return v1;
}

uint64_t CUDistributedNotificationHandler.__deallocating_deinit()
{
  CUDistributedNotificationHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_247BF45D0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_247B96F0C;

  return v8(a4);
}

uint64_t sub_247BF46C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_247B95F40;

  return v10(a6);
}

uint64_t sub_247BF47C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_247BC5B0C(a3, v25 - v10, &qword_27EE5DD00, &qword_247BFA890);
  v12 = sub_247BF67E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_247B9CAD0(v11, &qword_27EE5DD00, &qword_247BFA890);
  }

  else
  {
    sub_247BF67D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_247BF6740();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_247BF64B0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_247B9CAD0(a3, &qword_27EE5DD00, &qword_247BFA890);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_247B9CAD0(a3, &qword_27EE5DD00, &qword_247BFA890);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void NSDistributedNotificationCenter.post<A>(notification:sender:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a3;
  v38 = a2;
  v42 = a5;
  v7 = *(a4 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v33[-v11];
  if (qword_27EE62020 != -1)
  {
    swift_once();
  }

  v13 = sub_247BF60B0();
  __swift_project_value_buffer(v13, qword_27EE62028);
  v14 = *(v7 + 16);
  v14(v12, a1, a4);
  v15 = sub_247BF6090();
  v16 = sub_247BF6A00();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = a1;
    v18 = v17;
    v35 = swift_slowAlloc();
    v41[0] = v35;
    *v18 = 136315138;
    v14(v10, v12, a4);
    v19 = *(v7 + 8);
    v19(v12, a4);
    v20 = v42;
    v34 = v16;
    v21 = sub_247BF6FD0();
    v23 = v22;
    v19(v10, a4);
    v24 = sub_247BBE628(v21, v23, v41);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_247B92000, v15, v34, "post: %s", v18, 0xCu);
    v25 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x24C1B5910](v25, -1, -1);
    MEMORY[0x24C1B5910](v18, -1, -1);
  }

  else
  {
    (*(v7 + 8))(v12, a4);

    v20 = v42;
  }

  (*(v20 + 40))(a4, v20);
  v26 = sub_247BF6470();

  if (v39)
  {
    v27 = sub_247BF6470();
  }

  else
  {
    v27 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E2E8, &qword_247BFD500);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247BFA840;
  v41[0] = 0x64616F6C796170;
  v41[1] = 0xE700000000000000;
  sub_247BF6C70();
  v29 = v40;
  v30 = (*(v20 + 56))(a4, v20);
  if (v29)
  {

    sub_247BC5A5C(inited + 32);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E2F0, &qword_247BFD508);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v30;
    *(inited + 80) = v31;
    sub_247BF50F0(inited);
    swift_setDeallocating();
    sub_247B9CAD0(inited + 32, &unk_27EE5E2F0, &qword_247BFD508);
    v32 = sub_247BF62E0();

    [v37 postNotificationName:v26 object:v27 userInfo:v32 deliverImmediately:1];
  }
}

uint64_t static CUDistributedNotification.decode(data:)()
{
  sub_247BF5CC0();
  swift_allocObject();
  sub_247BF5CB0();
  sub_247BF5C90();
}

uint64_t CUDistributedNotification.encode()(uint64_t a1, uint64_t a2)
{
  sub_247BF5D40();
  swift_allocObject();
  sub_247BF5D30();
  v2 = sub_247BF5D10();

  return v2;
}

uint64_t CUDistributedNotification.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 40))(a1);
  MEMORY[0x24C1B4020](v2);

  return 0x3D656D616ELL;
}

unint64_t sub_247BF50F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E200, &qword_247BFCD28);
    v3 = sub_247BF6EE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_247BC5B0C(v4, v13, &unk_27EE5E2F0, &qword_247BFD508);
      result = sub_247BBEADC(v13);
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
      result = sub_247B9471C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_247BF532C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_247BF5374(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_247BF53BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_247BF542C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247BF3740(a1);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247BF54A4()
{
  v2 = (*(*(v0[4] - 8) + 80) + 64) & ~*(*(v0[4] - 8) + 80);
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247B95F40;

  return sub_247BF46C8(v5, v6, v7, v3, v4, v0 + v2);
}

uint64_t sub_247BF5578()
{
  v2 = (*(*(v0[2] - 8) + 80) + 48) & ~*(*(v0[2] - 8) + 80);
  v3 = v0[4];
  v4 = v0[5];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247B96F0C;

  return sub_247BF45D0(v5, v3, v4, v0 + v2);
}

uint64_t sub_247BF564C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247B96F0C;

  return sub_247BBDC2C(a1, v4);
}

uint64_t sub_247BF5704(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247B95F40;

  return sub_247BBDC2C(a1, v4);
}

uint64_t CUOPACKEncoder.__allocating_init(configuration:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t CUOPACKEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v20[4] = *MEMORY[0x277D85DE8];
  sub_247BA253C();
  sub_247BA253C();
  sub_247BA253C();
  v18 = 257;
  v19 = 1;
  v9 = &v18;
  CUDictionaryEncoder.init(configuration:)(v9);
  v18 = v16;
  v19 = v17;
  CUDictionaryEncoder.encode<A>(_:)(a1, a2, a3, v20);
  if (!v4)
  {
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v10 = sub_247BF7170();
    NSData = OPACKEncoderCreateNSData(v10);
    swift_unknownObjectRelease();
    if (NSData)
    {
      v5 = sub_247BF5E80();
    }

    else
    {
      v13 = sub_247BF6480();
      v15 = v14;
      type metadata accessor for CUError();
      v5 = CUError.__allocating_init(domain:code:message:underlying:)(v13, v15, -6700, 0xD000000000000013, 0x8000000247C01DF0, 0);
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return v5;
}

CoreUtilsSwift::CUDictionaryEncoder::Configuration __swiftcall CUDictionaryEncoder.Configuration.init(opackConfiguration:)(CoreUtilsSwift::CUOPACKEncoder::Configuration opackConfiguration)
{
  v2 = v1;
  sub_247BA253C();
  sub_247BA253C();
  v3 = sub_247BA253C();
  *v2 = 257;
  *(v2 + 2) = 1;
  return v3;
}

uint64_t OPACKEncoderCreateNSData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x24C1B5120]();

  return v2;
}

uint64_t sub_247BF5B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = CUOPACKEncoder.encode<A>(_:)(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUOPACKEncoder.Configuration(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}