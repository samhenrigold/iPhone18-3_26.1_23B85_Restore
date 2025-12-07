unint64_t sub_1975B31F4()
{
  result = qword_1EAF348B0;
  if (!qword_1EAF348B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF348B0);
  }

  return result;
}

unint64_t sub_1975B324C()
{
  result = qword_1EAF348B8;
  if (!qword_1EAF348B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF348B8);
  }

  return result;
}

unint64_t sub_1975B32A4()
{
  result = qword_1EAF34190;
  if (!qword_1EAF34190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34190);
  }

  return result;
}

unint64_t sub_1975B32FC()
{
  result = qword_1EAF34198;
  if (!qword_1EAF34198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34198);
  }

  return result;
}

unint64_t sub_1975B3354()
{
  result = qword_1EAF33F88;
  if (!qword_1EAF33F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F88);
  }

  return result;
}

unint64_t sub_1975B33AC()
{
  result = qword_1EAF33F90;
  if (!qword_1EAF33F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F90);
  }

  return result;
}

unint64_t sub_1975B3400()
{
  result = qword_1EAF34108;
  if (!qword_1EAF34108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34108);
  }

  return result;
}

uint64_t sub_1975B3454(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1975B34D0()
{
  result = qword_1EAF34150;
  if (!qword_1EAF34150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34150);
  }

  return result;
}

unint64_t sub_1975B3524()
{
  result = qword_1EAF348D8;
  if (!qword_1EAF348D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF348D8);
  }

  return result;
}

uint64_t sub_1975B35F0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_33(a1);
}

_BYTE *sub_1975B363C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1975B36E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_35_1(-1);
  }

  if (a2 < 0 && *(a1 + 16))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_35_1(v2);
}

uint64_t sub_1975B3724(uint64_t result, int a2, int a3)
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

unint64_t sub_1975B3770()
{
  result = qword_1EAF348E0;
  if (!qword_1EAF348E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF348E0);
  }

  return result;
}

unint64_t sub_1975B37C8()
{
  result = qword_1EAF348E8;
  if (!qword_1EAF348E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF348E8);
  }

  return result;
}

unint64_t sub_1975B3820()
{
  result = qword_1EAF348F0;
  if (!qword_1EAF348F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF348F0);
  }

  return result;
}

unint64_t sub_1975B3878()
{
  result = qword_1EAF348F8;
  if (!qword_1EAF348F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF348F8);
  }

  return result;
}

unint64_t sub_1975B38D0()
{
  result = qword_1EAF340F8;
  if (!qword_1EAF340F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF340F8);
  }

  return result;
}

unint64_t sub_1975B3928()
{
  result = qword_1EAF34100;
  if (!qword_1EAF34100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34100);
  }

  return result;
}

unint64_t sub_1975B397C()
{
  result = qword_1EAF34168;
  if (!qword_1EAF34168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34168);
  }

  return result;
}

unint64_t sub_1975B39D0()
{
  result = qword_1ED816460;
  if (!qword_1ED816460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816460);
  }

  return result;
}

uint64_t _s7OptionsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1975B3AAC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_32(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1975B3B88()
{
  result = qword_1EAF34908;
  if (!qword_1EAF34908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34908);
  }

  return result;
}

unint64_t sub_1975B3BE0()
{
  result = qword_1EAF34158;
  if (!qword_1EAF34158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34158);
  }

  return result;
}

unint64_t sub_1975B3C38()
{
  result = qword_1EAF34160;
  if (!qword_1EAF34160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34160);
  }

  return result;
}

uint64_t sub_1975B3CF8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1975B3D80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = *(*(v4 - 8) + 64) + ((v7 + 32) & ~v7) + 1;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1975B3F0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 1;
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) != -1)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1975B41C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CoreParameterProtocol.description.getter(a1, WitnessTable);
}

uint64_t sub_1975B4224(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1975B4284(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1975B42C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = *a4;
  v29 = 1;
  if (*(a3 + 16))
  {
    v9 = (v8 - 7) > 1u;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {

    *(a5 + 57) = 0u;
    a5[2] = 0u;
    a5[3] = 0u;
    *a5 = 0u;
    a5[1] = 0u;
  }

  else
  {
    v11 = sub_1975B7F24(a3);
    sub_1975B587C(a1, a2, v8, v11);
    v13 = v12;
    v15 = v14;

    v21[0] = v13;
    v21[1] = v15;
    v20 = v8;
    v16 = objc_allocWithZone(type metadata accessor for CoreRule.Predicate());

    v28 = CoreRule.Predicate.init(compoundOperation:)(&v20);
    v22 = 1;
    v17 = sub_1975B7F24(a3);

    v26 = &type metadata for CoreRule.Subrules;
    v18 = sub_1975B45BC();
    v23 = v13;
    v24 = v15;
    v27 = v18;
    v25 = v17;
    sub_1975B4610(v21, a5);
    return sub_1975B4648(v21);
  }

  return result;
}

uint64_t sub_1975B4430(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_197616EF0();
  }
}

uint64_t sub_1975B4460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(a4 + 56);
  *(v5 + 32) = a5;
  *(v5 + 40) = v6;
  *(v5 + 56) = *(a4 + 64);
  *(v5 + 48) = *(a4 + 72);
  *(v5 + 57) = *(a4 + 80);
  return MEMORY[0x1EEE6DFA0](sub_1975B44A0, 0, 0);
}

uint64_t sub_1975B44A0()
{
  v2 = v1[6];
  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (*(v2 + 16))
    {
      v4 = OUTLINED_FUNCTION_0_9();
      v9 = sub_1975B5A78(v4, v5, v6, v7, v8);
      if (v0)
      {
LABEL_10:
        v16 = v1[1];

        return v16();
      }

      sub_1975BA24C(v9);
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = v1[5];
  if (v10 && *(v10 + 16))
  {
    v11 = OUTLINED_FUNCTION_0_9();
    v15 = sub_1975B47FC(v11, v12, v13, v14);
    if (v0)
    {

      goto LABEL_10;
    }

    sub_1975BA24C(v15);
  }

  v18 = v1[1];

  return v18(v3);
}

unint64_t sub_1975B45BC()
{
  result = qword_1EAF34910;
  if (!qword_1EAF34910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34910);
  }

  return result;
}

uint64_t sub_1975B4680(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1975B46C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1975B4724(uint64_t a1)
{
  *(a1 + 8) = sub_1975B4754();
  result = sub_1975B47A8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1975B4754()
{
  result = qword_1EAF341C8;
  if (!qword_1EAF341C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF341C8);
  }

  return result;
}

unint64_t sub_1975B47A8()
{
  result = qword_1EAF341C0;
  if (!qword_1EAF341C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF341C0);
  }

  return result;
}

uint64_t sub_1975B47FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v5 = *a4;
  v51 = a3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  v52 = *(a3 + 16);
  v50 = *a4;
  while (v4 != v52)
  {
    v7 = *(v51 + 24 * v4 + 16);
    v53 = v4 + 1;
    v54 = v6;
    v8 = *(v7 + 16);

    v9 = 0;
    v10 = (v7 + 64);
    v11 = MEMORY[0x1E69E7CC0];
    v66 = v7;
    v57 = v8;
    while (v8 != v9)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_43:

        return MEMORY[0x1E69E7CC0];
      }

      memcpy(__dst, v10 - 2, sizeof(__dst));
      v65 = *v10;
      v12 = *(&v65 + 1);
      if (*(&v65 + 1))
      {
        v13 = v65;
        sub_1975B11C4(__dst, v61);
        sub_19755FA5C(&v65, v61, &qword_1EAF34918, &qword_19761B110);
        if (qword_1ED8174E0 != -1)
        {
          swift_once();
        }

        if (__dst[3])
        {
          sub_1975B11FC(__dst);
        }

        else
        {
          v14 = __dst[2];
          v15 = byte_1ED8174EA;
          if (byte_1ED8174EA)
          {
            v16 = 0x418E133800000000;
          }

          else
          {
            v16 = 0;
          }

          if (byte_1ED8174EA)
          {
            v17 = 200;
          }

          else
          {
            v17 = 1000;
          }

          __src[6] = &type metadata for ConstellationEvent;
          __src[7] = sub_1975A6B60();
          v18 = swift_allocObject();
          __src[3] = v18;
          *(v18 + 16) = v13;
          *(v18 + 24) = v12;
          *(v18 + 32) = v17;
          *(v18 + 40) = v16;
          *(v18 + 48) = v15 ^ 1;
          sub_1975B4DE4(__dst);
          v20 = v19;
          v21 = sub_1975B52F8(__dst);
          v59 = xmmword_19761B100;
          v60 = 0;
          v58 = 5;
          v61[3] = MEMORY[0x1E69E6530];
          v61[0] = v14;
          v22 = objc_allocWithZone(type metadata accessor for CoreRule.Predicate());
          v23 = CoreRule.Predicate.init(argument:operation:value:queries:subpredicates:)(&v59, &v58, v61, v20, v21);
          LOBYTE(__src[9]) = 1;
          v24 = __src[6];
          v25 = __src[7];
          v26 = __swift_project_boxed_opaque_existential_1Tm(&__src[3], __src[6]);
          v27 = sub_1975D29DC(a1, a2, v23, v26, v24, v25);
          v29 = v28;
          sub_1975B11FC(__dst);
          __src[0] = v27;
          __src[1] = v29;
          LOBYTE(__src[2]) = 2;
          __src[8] = v23;
          memcpy(v61, __src, 0x49uLL);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1975BB9D8();
            v11 = v32;
          }

          v31 = *(v11 + 16);
          v30 = *(v11 + 24);
          v7 = v66;
          v8 = v57;
          if (v31 >= v30 >> 1)
          {
            OUTLINED_FUNCTION_0_10(v30);
            sub_1975BB9D8();
            v11 = v33;
          }

          *(v11 + 16) = v31 + 1;
          memcpy((v11 + 80 * v31 + 32), v61, 0x49uLL);
        }
      }

      v10 = (v10 + 104);
      ++v9;
    }

    v34 = *(v11 + 16);
    if (!v34)
    {

      memset(v63, 0, 73);
      v5 = v50;
      v4 = v53;
      v6 = v54;
LABEL_35:
      sub_19755C404(v63, &qword_1EAF34920, &qword_19761B118);
      continue;
    }

    v5 = v50;
    v4 = v53;
    v6 = v54;
    if (v34 == 1)
    {
      sub_1975B4610(v11 + 32, v63);
    }

    else
    {
      LOBYTE(v61[9]) = 1;

      v35 = sub_1975B7F24(v11);
      sub_1975B587C(a1, a2, 7, v35);
      v37 = v36;
      v39 = v38;

      v61[0] = v37;
      v61[1] = v39;
      LOBYTE(__src[0]) = 7;
      v40 = objc_allocWithZone(type metadata accessor for CoreRule.Predicate());

      v61[8] = CoreRule.Predicate.init(compoundOperation:)(__src);
      LOBYTE(v61[2]) = 1;
      v41 = sub_1975B7F24(v11);

      v61[6] = &type metadata for CoreRule.Subrules;
      v42 = sub_1975B45BC();
      v61[3] = v37;
      v61[4] = v39;
      v61[7] = v42;
      v61[5] = v41;
      sub_1975B4610(v61, v63);
      sub_1975B4648(v61);
    }

    if (!v63[1])
    {
      goto LABEL_35;
    }

    memcpy(v61, v63, 0x49uLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1975BB9D8();
      v6 = v45;
    }

    v44 = *(v6 + 16);
    v43 = *(v6 + 24);
    if (v44 >= v43 >> 1)
    {
      OUTLINED_FUNCTION_0_10(v43);
      sub_1975BB9D8();
      v6 = v46;
    }

    *(v6 + 16) = v44 + 1;
    memcpy((v6 + 80 * v44 + 32), v61, 0x49uLL);
  }

  v47 = *(v6 + 16);
  if (!v47)
  {
    goto LABEL_43;
  }

  if (v47 != 1 && (sub_1975CBEAC(v5, 7) & 1) == 0)
  {
    if ((sub_1975CBEAC(v5, 8) & 1) == 0)
    {
      goto LABEL_43;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34928, &qword_19761B120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_197618C10;
    LOBYTE(v61[0]) = v5;

    sub_1975B42C0(a1, a2, v6, v61, (inited + 32));
    v6 = sub_1975BD02C(inited);
    swift_setDeallocating();
    sub_1975BE914();
  }

  return v6;
}

void sub_1975B4DE4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 96);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2 >= 2)
  {
    v4 = sub_1975B543C(*(result + 96));
    v5 = v4[2];
    if (v5)
    {
      v53 = v1;
      v54 = v2;
      v63 = v3;
      sub_1975D2024(0, v5, 0);
      v6 = v4 + 5;
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v9 = *(v2 + 16);

        if (v9 && (v10 = sub_19755C610(v7, v8), v2 = v54, (v11 & 1) != 0))
        {
          sub_19759F898(*(v54 + 56) + 32 * v10, v60);
          *(&v62 + 1) = &type metadata for AnyCodable;
          v12 = swift_allocObject();
          *&v61 = v12;
          v13 = v60[1];
          *(v12 + 16) = v60[0];
          *(v12 + 32) = v13;
          sub_19755FA5C(&v61, v60, &qword_1EAF34340, &unk_19761C8E0);
          sub_19755FA5C(v60, &v56, &qword_1EAF34340, &unk_19761C8E0);
          if (v57)
          {
            v14 = swift_allocObject();
            sub_19756A94C(&v56, (v14 + 16));
            v15 = MEMORY[0x1E69E7CA0] + 8;
          }

          else
          {
            v15 = MEMORY[0x1E69E6158];
            v14 = 0x3E6C6C756E3CLL;
          }

          sub_19755C404(v60, &qword_1EAF34340, &unk_19761C8E0);
          sub_19755C404(&v61, &qword_1EAF34340, &unk_19761C8E0);
          v16 = 0xE600000000000000;
        }

        else
        {
          v61 = 0u;
          v62 = 0u;
          sub_19755C404(&v61, &qword_1EAF34340, &unk_19761C8E0);
          v16 = 0;
          v14 = 0;
          v15 = 0;
        }

        LODWORD(v60[0]) = *v59;
        *(v60 + 3) = *&v59[3];
        LODWORD(v56) = *v58;
        *(&v56 + 3) = *&v58[3];
        v17 = v3;
        v19 = *(v3 + 16);
        v18 = *(v3 + 24);
        v63 = v3;
        if (v19 >= v18 >> 1)
        {
          sub_1975D2024(v18 > 1, v19 + 1, 1);
          v2 = v54;
          v17 = v63;
        }

        *(v17 + 16) = v19 + 1;
        v3 = v17;
        v20 = v17 + (v19 << 6);
        *(v20 + 32) = 0;
        v21 = *(v60 + 3);
        *(v20 + 33) = v60[0];
        *(v20 + 36) = v21;
        *(v20 + 40) = v7;
        *(v20 + 48) = v8;
        *(v20 + 56) = 0;
        v22 = v56;
        *(v20 + 60) = *(&v56 + 3);
        *(v20 + 57) = v22;
        *(v20 + 64) = v14;
        *(v20 + 72) = v16;
        *(v20 + 80) = 0;
        *(v20 + 88) = v15;
        v6 += 2;
        --v5;
      }

      while (v5);

      v1 = v53;
    }

    else
    {
    }
  }

  v23 = *(v1 + 88);
  if (v23)
  {
    v55 = v3;
    v24 = 0;
    v25 = *(v23 + 16);
    v26 = v23 + 40;
    v27 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v28 = (v26 + 16 * v24);
    while (v25 != v24)
    {
      if (v24 >= v25)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      if (__OFADD__(v24, 1))
      {
        goto LABEL_42;
      }

      v30 = *(v28 - 1);
      v29 = *v28;

      if (sub_1976162E0())
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v61 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_197553D0C(0, v27[2] + 1, 1, v32, v33, v34, v35);
          v27 = v61;
        }

        v37 = v27[2];
        v36 = v27[3];
        if (v37 >= v36 >> 1)
        {
          sub_197553D0C(v36 > 1, v37 + 1, 1, v32, v33, v34, v35);
          v27 = v61;
        }

        v27[2] = v37 + 1;
        v38 = &v27[2 * v37];
        v38[4] = v30;
        v38[5] = v29;
        ++v24;
        goto LABEL_18;
      }

      ++v24;
      v28 += 2;
    }

    v39 = v27[2];
    if (v39)
    {
      *&v61 = MEMORY[0x1E69E7CC0];
      sub_1975D2024(0, v39, 0);
      v40 = v61;
      v41 = v27 + 5;
      do
      {
        v43 = *(v41 - 1);
        v42 = *v41;

        if (sub_1976162E0())
        {

          v44 = sub_197616270();
          v45 = sub_197611CE8(v44, v43, v42);
          v43 = MEMORY[0x19A8E29E0](v45);
          v47 = v46;

          v42 = v47;
        }

        *&v61 = v40;
        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1975D2024(v48 > 1, v49 + 1, 1);
          v40 = v61;
        }

        *(v40 + 16) = v49 + 1;
        v50 = v40 + (v49 << 6);
        *(v50 + 32) = 9;
        v51 = *(v60 + 3);
        *(v50 + 33) = v60[0];
        *(v50 + 36) = v51;
        *(v50 + 40) = v43;
        *(v50 + 48) = v42;
        *(v50 + 56) = 1;
        v52 = v56;
        *(v50 + 60) = *(&v56 + 3);
        *(v50 + 57) = v52;
        *(v50 + 64) = 0u;
        *(v50 + 80) = 0u;
        v41 += 2;
        --v39;
      }

      while (v39);
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    v3 = v55;
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  *&v61 = v3;
  sub_1975BA308(v40);
}

uint64_t sub_1975B52F8(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = sub_1975A67FC(*(a1 + 56));
    v5 = v4;
    sub_1975BBCB4();
    v2 = v6;
    v7 = *(v6 + 16);
    if (v7 >= *(v6 + 24) >> 1)
    {
      sub_1975BBCB4();
      v2 = v15;
    }

    *(v2 + 16) = v7 + 1;
    v8 = v2 + 24 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    *(v8 + 48) = 0;
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    v9 = sub_1975A67FC(*(a1 + 72));
    v11 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1975BBCB4();
      v2 = v16;
    }

    v12 = *(v2 + 16);
    if (v12 >= *(v2 + 24) >> 1)
    {
      sub_1975BBCB4();
      v2 = v17;
    }

    *(v2 + 16) = v12 + 1;
    v13 = v2 + 24 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v11;
    *(v13 + 48) = 1;
  }

  return v2;
}

void *sub_1975B543C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1975BC0A4(*(a1 + 16), 0);
  sub_1975EA098();
  v4 = v3;

  sub_1975A4D3C(v6);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1975B54F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14 = 0;
  v15 = 0xE000000000000000;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);

  MEMORY[0x19A8E2A50](v9, v10);

  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34958, &qword_19761B158);
  v13[0] = MEMORY[0x1E69E6370];
  sub_197616BC0();
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  MEMORY[0x19A8E2A50](a1, a2);

  v12 = v15;
  *a5 = v14;
  *(a5 + 8) = v12;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 33) = 1;
  return result;
}

uint64_t sub_1975B5618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14 = 0;
  v15 = 0xE000000000000000;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);

  MEMORY[0x19A8E2A50](v9, v10);

  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34960, &qword_19761B160);
  v13[0] = MEMORY[0x1E69E6530];
  sub_197616BC0();
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  MEMORY[0x19A8E2A50](a1, a2);

  v12 = v15;
  *a5 = v14;
  *(a5 + 8) = v12;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = 1;
  return result;
}

uint64_t sub_1975B5738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = 0;
  v18 = 0xE000000000000000;
  v11 = *(a5 + 16);
  v12 = *(a5 + 24);

  MEMORY[0x19A8E2A50](v11, v12);

  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34418, &qword_1976185D8);
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34978, &qword_19761B190);
  v16[0] = v13;
  sub_197616BC0();
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  MEMORY[0x19A8E2A50](a1, a2);

  v15 = v18;
  *a6 = v17;
  *(a6 + 8) = v15;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4 & 1;
  *(a6 + 41) = 1;
  return result;
}

void sub_1975B587C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v33 = a1;
  v34 = a2;

  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  LOBYTE(v29[0]) = a3;
  v6 = CoreRule.Predicate.Operator.rawValue.getter();
  MEMORY[0x19A8E2A50](v6);

  MEMORY[0x19A8E2A50](23336, 0xE200000000000000);
  v11 = *(a4 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_197553D0C(0, v11, 0, v7, v8, v9, v10);
    v12 = v32;
    v13 = a4 + 32;
    do
    {
      sub_19755A560(v13, v29);
      v14 = v30;
      v15 = v31;
      __swift_project_boxed_opaque_existential_1Tm(v29, v30);
      v16 = (*(v15 + 24))(v14, v15);
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      v32 = v12;
      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_197553D0C(v23 > 1, v24 + 1, 1, v19, v20, v21, v22);
        v12 = v32;
      }

      *(v12 + 16) = v24 + 1;
      v25 = v12 + 16 * v24;
      *(v25 + 32) = v16;
      *(v25 + 40) = v18;
      v13 += 40;
      --v11;
    }

    while (v11);
  }

  v29[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF347B8, &qword_197619800);
  sub_197559AAC(&qword_1EAF33ED8, &qword_1EAF347B8, &qword_197619800, MEMORY[0x1E69E6310]);
  v26 = sub_197616170();
  v28 = v27;

  MEMORY[0x19A8E2A50](v26, v28);

  MEMORY[0x19A8E2A50](10589, 0xE200000000000000);
}

uint64_t sub_1975B5A78(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v52 = a1;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v40 = *a4;
  v6 = MEMORY[0x1E69E7CC0];
  v43 = *(a3 + 16);
  if (!v43)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_37:
    v38 = *(v9 + 16);
    if (v38)
    {
      if (v38 == 1 || (sub_1975CBEAC(v40, 7) & 1) != 0)
      {
        return v9;
      }

      if (sub_1975CBEAC(v40, 8))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34928, &qword_19761B120);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_197618C10;
        LOBYTE(v48[0]) = v40;

        sub_1975B42C0(v52, a2, v9, v48, (inited + 32));
        v9 = sub_1975BD02C(inited);
        swift_setDeallocating();
        sub_1975BE914();
        return v9;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  v8 = 0;
  v42 = a3 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1975B12D4(v42 + 56 * v8++, v49);
    if (((1 << v50) & 0x1B) != 0)
    {
      goto LABEL_5;
    }

    if (v50 == 2)
    {
      break;
    }

    sub_19759F898(v51, __src);
    sub_19756A94C(__src, __dst);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34390, &qword_197618390);
    if (!swift_dynamicCast())
    {
      goto LABEL_5;
    }

    v31 = v46[0];
    *&__src[0] = v6;
    v32 = v52;
    v33 = sub_1975B6CC0(v46[0], v52, a2, 0, a5);
    sub_1975BA24C(v33);
    v34 = sub_1975B6CC0(v31, v32, a2, 1, a5);

    v35 = v34;
    v6 = MEMORY[0x1E69E7CC0];
    sub_1975BA24C(v35);
    v10 = *&__src[0];
LABEL_6:
    v11 = *(v10 + 16);
    if (v11)
    {
      if (v11 == 1)
      {
        sub_1975B4610(v10 + 32, v48);

        sub_1975B130C(v49);
LABEL_25:
        memcpy(__src, v48, 0x49uLL);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1975BB9D8();
          v9 = v36;
        }

        v30 = *(v9 + 16);
        if (v30 >= *(v9 + 24) >> 1)
        {
          sub_1975BB9D8();
          v9 = v37;
        }

        *(v9 + 16) = v30 + 1;
        memcpy((v9 + 80 * v30 + 32), __src, 0x49uLL);
        goto LABEL_31;
      }

      BYTE8(__src[4]) = 1;
      v21 = sub_1975B7F24(v10);
      sub_1975B587C(v52, a2, 7, v21);
      v23 = v22;
      v24 = v9;
      v26 = v25;

      *&__src[0] = v23;
      *(&__src[0] + 1) = v26;
      LOBYTE(__dst[0]) = 7;
      v27 = objc_allocWithZone(type metadata accessor for CoreRule.Predicate());

      *&__src[4] = CoreRule.Predicate.init(compoundOperation:)(__dst);
      LOBYTE(__src[1]) = 1;
      v28 = sub_1975B7F24(v10);

      *&__src[3] = &type metadata for CoreRule.Subrules;
      v29 = sub_1975B45BC();
      *(&__src[1] + 1) = v23;
      v6 = MEMORY[0x1E69E7CC0];
      *&__src[2] = v26;
      *(&__src[2] + 1) = v28;
      v9 = v24;
      *(&__src[3] + 1) = v29;
      sub_1975B130C(v49);
      sub_1975B4610(__src, v48);
      sub_1975B4648(__src);
      if (*(&v48[0] + 1))
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_1975B130C(v49);

      memset(v48, 0, 73);
    }

    sub_19755C404(v48, &qword_1EAF34920, &qword_19761B118);
LABEL_31:
    if (v8 == v43)
    {
      goto LABEL_37;
    }
  }

  sub_19759F898(v51, __src);
  sub_19756A94C(__src, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
  result = swift_dynamicCast();
  if (!result)
  {
LABEL_5:
    v10 = v6;
    goto LABEL_6;
  }

  v41 = v9;
  v9 = 0;
  v13 = v46[0];
  v14 = *(v46[0] + 16);
  v15 = v46[0] + 32;
  v10 = v6;
LABEL_12:
  for (i = v15 + 32 * v9; ; i += 32)
  {
    if (v14 == v9)
    {

      v9 = v41;
      v6 = MEMORY[0x1E69E7CC0];
      goto LABEL_6;
    }

    if (v9 >= *(v13 + 16))
    {
      break;
    }

    sub_1975586C0(i, v46);
    sub_1975586C0(v46, __dst);

    sub_1975B607C(v52, a2, __dst, a5, __src);
    if (v5)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      sub_1975B130C(v49);

      return v9;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    if (*(&__src[0] + 1))
    {
      memcpy(__dst, __src, 0x49uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1975BB9D8();
        v10 = v19;
      }

      v17 = *(v10 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v10 + 24) >> 1)
      {
        sub_1975BB9D8();
        v18 = v17 + 1;
        v10 = v20;
      }

      ++v9;
      *(v10 + 16) = v18;
      result = memcpy((v10 + 80 * v17 + 32), __dst, 0x49uLL);
      goto LABEL_12;
    }

    result = sub_19755C404(__src, &qword_1EAF34920, &qword_19761B118);
    ++v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1975B607C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  sub_1975586C0(a3, &v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34390, &qword_197618390);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v69 = v5;
  sub_197579604();
  if (!v62)
  {

    sub_19755C404(&v61, &qword_1EAF34340, &unk_19761C8E0);
LABEL_25:
    *&v61 = 0;
    *(&v61 + 1) = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD00000000000001DLL, 0x8000000197623F10);
    __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
    sub_197616EB0();
    v28 = v61;
    sub_19759228C();
    swift_allocError();
    *v29 = v28;
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_0Tm(a3);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_24:

    goto LABEL_25;
  }

  v11 = v59;
  sub_197579604();

  if (!v60)
  {

    sub_19755C404(&v59, &qword_1EAF34340, &unk_19761C8E0);
    goto LABEL_25;
  }

  v49 = a1;
  v50 = *(&v59 + 1);
  v48 = a5;
  sub_19756A94C(&v59, &v61);
  if (qword_1ED816C98 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v12, qword_1ED816CA0);
  *&v59 = 0;
  *(&v59 + 1) = 0xE000000000000000;
  sub_197616A20();

  *&v59 = 0xD00000000000001CLL;
  *(&v59 + 1) = 0x8000000197623F30;
  MEMORY[0x19A8E2A50](v11, *(&v11 + 1));
  MEMORY[0x19A8E2A50](0x695420726F662022, 0xEE00203A64692870);
  MEMORY[0x19A8E2A50](a1, a2);
  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  sub_197558864(v59, *(&v59 + 1), v13);

  if (qword_1ED816850 != -1)
  {
    swift_once();
  }

  if (!qword_1ED81D1D0)
  {

    if (qword_1ED815ED8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, qword_1ED815EE0);
    sub_197558864(0xD00000000000002CLL, 0x8000000197623F50, v31);

    goto LABEL_42;
  }

  swift_getKeyPath();
  sub_1975DB484();

  sub_1975586C0(&v61, &v59);
  if (swift_dynamicCast())
  {
    v14 = v58;
    sub_1975A7634();

    if (v54)
    {
      sub_1975586C0(&v52, &v55);
      sub_19759425C(&v52);
      if (swift_dynamicCast())
      {
        v15 = v52;
        v46 = v52;

        sub_1975B54F8(v11, v50, v15, a4, &v64);
        v16 = v65;
        __src[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34948, &qword_19761B150);
        __src[7] = sub_197559AAC(&qword_1EAF34950, &qword_1EAF34948, &qword_19761B150, &unk_19761B004);
        v17 = swift_allocObject();
        __src[3] = v17;
        v18 = v65;
        *(v17 + 16) = v64;
        *(v17 + 32) = v18;
        *(v17 + 48) = v66;
        v52 = v16;
        v53 = 1;
        v51 = 0;
        v57 = MEMORY[0x1E69E6370];
        LOBYTE(v55) = v14;
        v19 = objc_allocWithZone(type metadata accessor for CoreRule.Predicate());

        v20 = CoreRule.Predicate.init(argument:operation:value:queries:subpredicates:)(&v52, &v51, &v55, 0, 0);
        LOBYTE(__src[9]) = 1;
        v21 = __src[6];
        v22 = __src[7];
        v23 = __swift_project_boxed_opaque_existential_1Tm(&__src[3], __src[6]);
        __src[0] = sub_1975D29DC(v49, a2, v20, v23, v21, v22);
        __src[1] = v24;
        LOBYTE(__src[2]) = 4;
        __src[8] = v20;
        if (v14 != v46)
        {
          v55 = 0;
          v56 = 0xE000000000000000;
          sub_197616A20();
          MEMORY[0x19A8E2A50](0xD000000000000013, 0x8000000197623FD0);
          MEMORY[0x19A8E2A50](v11, v50);

          MEMORY[0x19A8E2A50](0x695420726F662022, 0xEE00203A64692870);
          MEMORY[0x19A8E2A50](v49, a2);

          MEMORY[0x19A8E2A50](0xD000000000000021, 0x8000000197624040);
          if (v14)
          {
            v25 = 1702195828;
          }

          else
          {
            v25 = 0x65736C6166;
          }

          if (v14)
          {
            v26 = 0xE400000000000000;
          }

          else
          {
            v26 = 0xE500000000000000;
          }

          v27 = v26;
          goto LABEL_44;
        }

        goto LABEL_35;
      }
    }

    else
    {
      sub_19755C404(&v52, &qword_1EAF34930, &unk_19761DB90);
    }

LABEL_40:
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD000000000000013, 0x8000000197623FD0);
    MEMORY[0x19A8E2A50](v11, v50);

    MEMORY[0x19A8E2A50](0xD000000000000047, 0x8000000197623FF0);
    MEMORY[0x19A8E2A50](v49, a2);

    MEMORY[0x19A8E2A50](11817, 0xE200000000000000);
    goto LABEL_41;
  }

  if (swift_dynamicCast())
  {
    v47 = v58;
    sub_1975A7634();

    if (v54)
    {
      sub_1975586C0(&v52, &v55);
      sub_19759425C(&v52);
      if (swift_dynamicCast())
      {
        v32 = v52;
        v45 = v52;

        sub_1975B5618(v11, v50, v32, a4, &v67);
        v33 = v68[0];
        __src[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34938, &qword_19761B148);
        __src[7] = sub_197559AAC(&qword_1EAF34940, &qword_1EAF34938, &qword_19761B148, &unk_19761B004);
        v34 = swift_allocObject();
        __src[3] = v34;
        v35 = v68[0];
        v34[1] = v67;
        v34[2] = v35;
        *(v34 + 41) = *(v68 + 9);
        v52 = v33;
        v53 = 1;
        v51 = 0;
        v57 = MEMORY[0x1E69E6530];
        v55 = v47;
        v36 = objc_allocWithZone(type metadata accessor for CoreRule.Predicate());

        v37 = CoreRule.Predicate.init(argument:operation:value:queries:subpredicates:)(&v52, &v51, &v55, 0, 0);
        LOBYTE(__src[9]) = 1;
        v38 = __src[6];
        v39 = __src[7];
        v40 = __swift_project_boxed_opaque_existential_1Tm(&__src[3], __src[6]);
        __src[0] = sub_1975D29DC(a1, a2, v37, v40, v38, v39);
        __src[1] = v41;
        LOBYTE(__src[2]) = 4;
        __src[8] = v37;
        if (v45 != v47)
        {
          v55 = 0;
          v56 = 0xE000000000000000;
          sub_197616A20();
          MEMORY[0x19A8E2A50](0xD000000000000013, 0x8000000197623FD0);
          MEMORY[0x19A8E2A50](v11, v50);

          MEMORY[0x19A8E2A50](0x695420726F662022, 0xEE00203A64692870);
          MEMORY[0x19A8E2A50](a1, a2);

          MEMORY[0x19A8E2A50](0xD000000000000021, 0x8000000197624040);
          *&v52 = v47;
          v25 = sub_197616E80();
LABEL_44:
          MEMORY[0x19A8E2A50](v25, v27);

          MEMORY[0x19A8E2A50](46, 0xE100000000000000);
          sub_197558864(v55, v56, v44);
          v42 = v48;
          goto LABEL_45;
        }

LABEL_35:

        v42 = v48;
LABEL_45:

        __swift_destroy_boxed_opaque_existential_0Tm(&v59);
        __swift_destroy_boxed_opaque_existential_0Tm(&v61);
        memcpy(v42, __src, 0x49uLL);
        return __swift_destroy_boxed_opaque_existential_0Tm(a3);
      }
    }

    else
    {
      sub_19755C404(&v52, &qword_1EAF34930, &unk_19761DB90);
    }

    goto LABEL_40;
  }

  v55 = 0;
  v56 = 0xE000000000000000;
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD000000000000049, 0x8000000197623F80);
  __swift_project_boxed_opaque_existential_1Tm(&v61, v62);
  sub_197616EB0();
LABEL_41:
  sub_197558864(v55, v56, v43);

  __swift_destroy_boxed_opaque_existential_0Tm(&v59);
LABEL_42:
  __swift_destroy_boxed_opaque_existential_0Tm(&v61);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a3);
  *(v48 + 57) = 0u;
  v48[2] = 0u;
  v48[3] = 0u;
  *v48 = 0u;
  v48[1] = 0u;
  return result;
}

uint64_t sub_1975B6CC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v5 = 0x6564756C637865;
  }

  else
  {
    v5 = 0x6564756C636E69;
  }

  if (!*(a1 + 16) || (v10 = sub_19755C610(v5, 0xE700000000000000), (v11 & 1) == 0))
  {
    v49 = 0u;
    v50 = 0u;

    goto LABEL_14;
  }

  sub_1975586C0(*(a1 + 56) + 32 * v10, &v49);

  if (!*(&v50 + 1))
  {
LABEL_14:
    sub_19755C404(&v49, &qword_1EAF34340, &unk_19761C8E0);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF347B8, &qword_197619800);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (qword_1ED816850 != -1)
  {
    swift_once();
  }

  if (!qword_1ED81D1D0 || (swift_getKeyPath(), v42 = sub_1975DB3F8(), , v42 == 3) || (v14 = *(*__src + 16)) == 0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v43 = a3;
  v40 = a4 & 1;
  v15 = (*__src + 40);
  v12 = MEMORY[0x1E69E7CC0];
  v41 = a5;
  do
  {
    v17 = *(v15 - 1);
    v16 = *v15;
    *(&v50 + 1) = MEMORY[0x1E69E6158];
    *&v49 = v17;
    *(&v49 + 1) = v16;
    swift_bridgeObjectRetain_n();
    v18 = sub_1975F0D7C(&v49);
    if (v18 == 3)
    {
      if (qword_1ED816C98 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v19, qword_1ED816CA0);
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      sub_197616A20();
      MEMORY[0x19A8E2A50](0xD000000000000012, 0x8000000197624070);
      MEMORY[0x19A8E2A50](v17, v16);

      MEMORY[0x19A8E2A50](0xD000000000000030, 0x8000000197624090);
      MEMORY[0x19A8E2A50](a2, v43);
      MEMORY[0x19A8E2A50](41, 0xE100000000000000);
      sub_1975FA258(v49, *(&v49 + 1));
    }

    else
    {
      v20 = v18;

      sub_1975B5738(0x6570795472657355, 0xE800000000000000, v20, 0, a5, &v55);
      swift_getKeyPath();
      v21 = sub_1975DB3F8();

      v22 = v21 == 3;
      if (v21 == 3)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21;
      }

      v24 = v23;
      v26 = *v56;
      v25 = *&v56[8];
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34968, &qword_19761B188);
      v52 = sub_197559AAC(&qword_1EAF34970, &qword_1EAF34968, &qword_19761B188, &unk_19761B004);
      v27 = swift_allocObject();
      *(&v50 + 1) = v27;
      v28 = *v56;
      v27[1] = v55;
      v27[2] = v28;
      *(v27 + 42) = *&v56[10];
      v47[0] = v26;
      v47[1] = v25;
      v48 = 1;
      v46 = v40;
      *&__src[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34418, &qword_1976185D8);
      *__src = v24;
      __src[8] = v22;
      v29 = objc_allocWithZone(type metadata accessor for CoreRule.Predicate());

      v30 = CoreRule.Predicate.init(argument:operation:value:queries:subpredicates:)(v47, &v46, __src, 0, 0);
      v54 = 1;
      v31 = v51;
      v32 = v52;
      v33 = __swift_project_boxed_opaque_existential_1Tm(&v50 + 1, v51);
      *&v49 = sub_1975D29DC(a2, v43, v30, v33, v31, v32);
      *(&v49 + 1) = v34;
      LOBYTE(v50) = 4;
      v53 = v30;
      if (qword_1ED816C98 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v35, qword_1ED816CA0);
      *__src = 0;
      *&__src[8] = 0xE000000000000000;
      sub_197616A20();
      MEMORY[0x19A8E2A50](0xD000000000000011, 0x80000001976240D0);
      MEMORY[0x19A8E2A50](v5, 0xE700000000000000);

      MEMORY[0x19A8E2A50](32, 0xE100000000000000);
      LOBYTE(v47[0]) = v20;
      sub_197616BC0();
      MEMORY[0x19A8E2A50](0xD000000000000013, 0x80000001976240F0);
      MEMORY[0x19A8E2A50](a2, v43);
      MEMORY[0x19A8E2A50](0xD00000000000001CLL, 0x8000000197624110);
      LOBYTE(v47[0]) = v42;
      sub_197616BC0();
      sub_197558864(*__src, *&__src[8], v36);

      sub_1975B4610(&v49, __src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1975BB9D8();
        v12 = v38;
      }

      a5 = v41;
      v37 = *(v12 + 16);
      if (v37 >= *(v12 + 24) >> 1)
      {
        sub_1975BB9D8();
        v12 = v39;
      }

      *(v12 + 16) = v37 + 1;
      memcpy((v12 + 80 * v37 + 32), __src, 0x49uLL);
      sub_1975B4648(&v49);
    }

    v15 += 2;
    --v14;
  }

  while (v14);

  return v12;
}

uint64_t sub_1975B7390()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v0[211] = v3;
  v0[210] = v4;
  memcpy(v0 + 2, v5, 0xE8uLL);
  memcpy(v0 + 182, v2, 0x51uLL);

  return MEMORY[0x1EEE6DFA0](sub_1975B7414, 0, 0);
}

uint64_t sub_1975B7414()
{
  v24 = v0;
  if (qword_1ED816C98 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
  }

  v1 = *(v0 + 1688);
  v2 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v2, qword_1ED816CA0);
  v3 = 0xE000000000000000;
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD000000000000015, 0x8000000197623E00);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  *(v0 + 1696) = v4;
  *(v0 + 1704) = v5;
  MEMORY[0x19A8E2A50](v4, v5);
  MEMORY[0x19A8E2A50](0xD00000000000002CLL, 0x8000000197624130);
  MEMORY[0x19A8E2A50](*(v1 + 32), *(v1 + 40));
  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  sub_197558864(v23[0], v23[1], v6);

  v7 = *(v0 + 1488);
  if (v7[2])
  {
    v8 = v7[4];
    v3 = v7[5];
  }

  else
  {
    v8 = 0;
  }

  *(v0 + 1720) = v3;
  *(v0 + 1712) = v8;
  *(v0 + 1542) = *(v0 + 1496);
  *(v0 + 1728) = *(v0 + 1504);
  *(v0 + 1784) = 1;
  *(v0 + 1543) = 1;
  v9 = *(v0 + 96);
  v10 = *(v0 + 112);
  memcpy(__dst, (v0 + 120), sizeof(__dst));
  memcpy(v23, (v0 + 16), 0xE8uLL);

  swift_unownedRetain();

  v11 = sub_1975B8048(v23);
  if (v10)
  {
    sub_1975AB21C(v0 + 16, v0 + 480);
    v10 = sub_197610058(v10, (v0 + 16));
  }

  memcpy((v0 + 712), __dst, 0x80uLL);
  if (sub_1975B8D54(v0 + 712) == 1)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_21;
  }

  v14 = *(v0 + 736);
  v15 = *(v0 + 760);
  v16 = *(v0 + 768);
  if (*(v0 + 712) == 0x6C6F626D7973 && *(v0 + 720) == 0xE600000000000000)
  {
    v12 = 0;
  }

  else
  {
    v18 = sub_197616EF0();
    v12 = 0;
    if ((v18 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (v14 == 1)
  {
LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  v13 = 0;
  if (v16)
  {

    v12 = v15;
    v13 = v16;
  }

LABEL_21:
  v23[0] = 0;
  v23[1] = v12;
  v23[2] = v13;
  objc_allocWithZone(type metadata accessor for CoreTip.ConstellationContent());
  *(v0 + 1736) = sub_1975D7628(v9, v11, v10, v23);
  memcpy((v0 + 248), (v0 + 16), 0xE8uLL);
  memcpy((v0 + 1544), (v0 + 1456), 0x51uLL);
  v19 = swift_task_alloc();
  *(v0 + 1744) = v19;
  *v19 = v0;
  v19[1] = sub_1975B7770;
  v20 = *(v0 + 1688);

  return sub_1975B4460(v4, v5, v0 + 248, v0 + 1544, v20);
}

uint64_t sub_1975B7770(uint64_t a1)
{
  OUTLINED_FUNCTION_16();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v5 + 1752) = v1;

  if (v1)
  {
    v8 = sub_1975B7CC8;
  }

  else
  {
    *(v5 + 1760) = a1;
    sub_1975AB66C(v5 + 1456);
    sub_1975AB278(v5 + 16);
    v8 = sub_1975B789C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1975B789C()
{
  v6 = *(v0 + 1760);
  OUTLINED_FUNCTION_2_7();
  v13 = *(v0 + 1696);
  v14 = *(v0 + 1688);
  v15 = v8;
  if (v7 == -1)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  v10 = sub_1975B7F24(v6);
  *(v0 + 1768) = v10;

  *(v0 + 1104) = v13;
  *(v0 + 1120) = v1;
  *(v0 + 1128) = v5;
  *(v0 + 1136) = v4;
  *(v0 + 1144) = 1;
  *(v0 + 1146) = v3;
  *(v0 + 1147) = *(v0 + 1537);
  *(v0 + 1151) = *(v0 + 1541);
  *(v0 + 1152) = v9;
  *(v0 + 1160) = 0;
  *(v0 + 1168) = v2;
  *v15 = 16777476;
  OUTLINED_FUNCTION_5_6((v0 + 1173));
  *(v0 + 1176) = v10;
  *(v0 + 1184) = v14;
  memcpy((v0 + 1192), (v0 + 1104), 0x58uLL);
  sub_1975B8D6C(v0 + 1104, v0 + 1280);
  v11 = swift_task_alloc();
  *(v0 + 1776) = v11;
  *v11 = v0;
  v11[1] = sub_1975B7A10;

  return sub_1975B8338();
}

uint64_t sub_1975B7A10()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  memcpy((v2 + 1016), (v2 + 1192), 0x58uLL);
  sub_1975B8DA4(v2 + 1016);

  return MEMORY[0x1EEE6DFA0](sub_1975B7B14, 0, 0);
}

uint64_t sub_1975B7B14()
{
  v14 = *(v0 + 1768);
  v1 = (v0 + 1537);
  v2 = *(v0 + 1736);
  v3 = *(v0 + 1543);
  v15 = v3;
  v4 = *(v0 + 1542);
  v5 = *(v0 + 1720);
  v6 = *(v0 + 1712);
  v7 = *(v0 + 1704);
  v8 = *(v0 + 1696);
  v9 = *(v0 + 1688);
  __dst = *(v0 + 1680);
  if (*(v0 + 1728) == -1)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = *(v0 + 1728);
  }

  *(v0 + 928) = v8;
  *(v0 + 936) = v7;
  *(v0 + 944) = v2;
  *(v0 + 952) = v6;
  *(v0 + 960) = v5;
  *(v0 + 968) = 1;
  *(v0 + 970) = v4;
  *(v0 + 975) = *(v0 + 1541);
  *(v0 + 971) = *v1;
  *(v0 + 976) = v10;
  *(v0 + 984) = 0;
  *(v0 + 992) = v3;
  *(v0 + 993) = 16777476;
  OUTLINED_FUNCTION_5_6((v0 + 997));
  *(v0 + 1000) = v11;
  *(v0 + 1008) = v9;
  sub_1975B8D6C(v0 + 928, v0 + 1368);

  memcpy(__dst, (v0 + 928), 0x58uLL);
  *(v0 + 840) = v8;
  *(v0 + 848) = v7;
  *(v0 + 856) = v2;
  *(v0 + 864) = v6;
  *(v0 + 872) = v5;
  *(v0 + 880) = 1;
  *(v0 + 882) = v4;
  *(v0 + 883) = *v1;
  *(v0 + 887) = *(v0 + 1541);
  *(v0 + 888) = v10;
  *(v0 + 896) = 0;
  *(v0 + 904) = v15;
  *(v0 + 905) = 16777476;
  OUTLINED_FUNCTION_5_6((v0 + 909));
  *(v0 + 912) = v14;
  *(v0 + 920) = v9;
  sub_1975B8DA4(v0 + 840);
  OUTLINED_FUNCTION_3();

  return v12();
}

uint64_t sub_1975B7CC8()
{
  OUTLINED_FUNCTION_2_7();
  if (v6 == -1)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  sub_1975AB66C(v0 + 1456);
  sub_1975AB278(v0 + 16);

  *(v0 + 1632) = v5;
  *(v0 + 1640) = v4;
  *(v0 + 1648) = 1;
  *(v0 + 1650) = v3;
  *(v0 + 1651) = *(v0 + 1537);
  *(v0 + 1655) = *(v0 + 1541);
  *(v0 + 1656) = v7;
  *(v0 + 1664) = 0;
  *(v0 + 1672) = v2;
  *(v0 + 1673) = 16777476;
  OUTLINED_FUNCTION_5_6((v0 + 1677));
  sub_19756D1E8(v0 + 1632);
  swift_unownedRelease();
  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_1975B7DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1975D1FC4(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      sub_1975B934C(v4, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349A8, &qword_19761B1F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349B0, &qword_19761B200);
      swift_dynamicCast();
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1975D1FC4(v5 > 1, v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = (v2 + 48 * v6);
      v8 = v12;
      v9 = v14;
      v7[3] = v13;
      v7[4] = v9;
      v7[2] = v8;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1975B7F24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1975D2004(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_1975B4610(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1975D2004(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for ConstellationRule;
      v10 = sub_1975B9248();
      *&v8 = swift_allocObject();
      sub_1975B4610(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_1975558C4(&v8, v2 + 40 * v6 + 32);
      sub_1975B4648(v11);
      v4 += 80;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1975B8048(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {

    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = *(v1 + 16);
      if (v3 == v5)
      {

        return v4;
      }

      if (v3 >= v5)
      {
        break;
      }

      v6 = v1 + 32 + 16 * v3;
      v7 = *(v6 + 8);
      if (v3)
      {
        switch(*v6)
        {
          case 1:
          case 2:
          case 3:
            v8 = sub_197616EF0();

            if (v8)
            {
              goto LABEL_10;
            }

            break;
          default:

LABEL_10:
            LOBYTE(__src[0]) = 3;
            *&__src[1] = xmmword_19761B1A0;
            *&__src[3] = xmmword_197619440;
            memset(&__src[5], 0, 104);
            sub_1975B929C(__src, v18);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1975BB904();
              v4 = v16;
            }

            v9 = *(v4 + 16);
            if (v9 >= *(v4 + 24) >> 1)
            {
              sub_1975BB904();
              v4 = v17;
            }

            *(v4 + 16) = v9 + 1;
            memcpy((v4 + 144 * v9 + 32), __src, 0x90uLL);
            sub_1975B92F8(__src);
            break;
        }
      }

      else
      {
      }

      ++v3;
      v10 = *(v7 + 16);
      if (v10)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1975BB904();
          v4 = v15;
        }

        v11 = v10 - 1;
        for (i = 32; ; i += 144)
        {
          memcpy(__src, (v7 + i), 0x90uLL);
          sub_1975B929C(__src, v18);
          v13 = *(v4 + 16);
          if (v13 >= *(v4 + 24) >> 1)
          {
            sub_1975BB904();
            v4 = v14;
          }

          *(v4 + 16) = v13 + 1;
          memcpy((v4 + 144 * v13 + 32), __src, 0x90uLL);
          if (!v11)
          {
            break;
          }

          --v11;
        }
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1975B8338()
{
  memcpy((v1 + 16), v0, 0x58uLL);

  return MEMORY[0x1EEE6DFA0](sub_1975B83A8, 0, 0);
}

uint64_t sub_1975B83A8()
{
  type metadata accessor for CoreTip(0);
  v1 = v0[2];
  v2 = v0[3];
  v3 = static CoreTip.tips.getter();
  if (!*(v3 + 16) || (sub_19755C610(v1, v2), (v4 & 1) == 0))
  {
    v5 = swift_allocObject();
    sub_1975B8D6C((v0 + 2), (v0 + 13));
    sub_1975B8E3C(v0 + 2, v5);

    swift_isUniquelyReferenced_nonNull_native();
    sub_1975FCAB4();
  }

  static CoreTip.tips.setter(v3);
  v6 = v0[12];
  swift_unownedRetainStrong();
  v0[24] = *(v6 + 64);

  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_1975B851C;

  return sub_19757139C();
}

uint64_t sub_1975B851C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

void *sub_1975B862C()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1975B865C@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  v6 = *(v1 + 24);
  v7[0] = v2;
  *(v7 + 15) = *(v1 + 55);
  v3 = *(v7 + 15);
  *a1 = v6;
  a1[1] = v2;
  *(a1 + 31) = v3;
  return sub_1975B959C(&v6, &v5);
}

uint64_t sub_1975B86A0(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1975B4430(v4, __dst) & 1;
}

uint64_t sub_1975B8734()
{
  MEMORY[0x19A8E2A50](*v0, v0[1]);
  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return 0x203A646928706954;
}

uint64_t sub_1975B8790@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34980, &unk_19761B1C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1976155F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[15];
  if (a1[5] == 1 || v11 == 0)
  {
    goto LABEL_16;
  }

  v13 = a1[14];
  v14 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = a1[2];
  v16 = a1[3];
  v17 = v13 == 0xD000000000000015 && v11 == 0x8000000197624160;
  if (v17 || (sub_197616EF0() & 1) != 0)
  {
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
    }

    v18 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v18, qword_1ED816CA0);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0x62206E6F69746341, 0xEF22206E6F747475);
    MEMORY[0x19A8E2A50](v15, v16);
    MEMORY[0x19A8E2A50](0xD000000000000033, 0x8000000197624180);
    sub_197558864(v23, v24, v19);

LABEL_16:
    v20 = sub_197615970();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v20);
  }

  sub_1976155E0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1975B8DD4(v6);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1976150DC(7107189, 0xE300000000000000);
    if (v22)
    {
      sub_197615930();

      return (*(v8 + 8))(v10, v7);
    }

    (*(v8 + 8))(v10, v7);
  }

  return sub_197615930();
}

uint64_t sub_1975B8ACC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34688, &qword_197619420);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12[-v2];
  v18 = 46;
  v19 = 0xE100000000000000;
  v13 = &v18;
  v4 = sub_19755967C(0x7FFFFFFFFFFFFFFFLL, 1, sub_197556D58, v12, 0xD00000000000001BLL, 0x80000001976241C0);
  v18 = sub_1976124C4(1, v4);
  v19 = v5;
  v20 = v6;
  v21 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349A0, &qword_19761B1F0);
  sub_197559AAC(&qword_1ED816D98, &qword_1EAF349A0, &qword_19761B1F0, MEMORY[0x1E69E6968]);
  sub_197559C9C();
  v8 = sub_1976163D0();
  v10 = v9;
  swift_unknownObjectRelease();
  v16 = v8;
  v17 = v10;
  sub_197615B60();
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_197559BA8();
  sub_197559C48();
  sub_197559AAC(&qword_1ED816DB8, &qword_1EAF34688, &qword_197619420, MEMORY[0x1E69E9290]);
  sub_1976167A0();
  (*(v1 + 8))(v3, v0);

  return v18;
}

uint64_t sub_1975B8D54(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1975B8DD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34980, &unk_19761B1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1975B8E3C(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - v5;
  v20[3] = &type metadata for ConstellationTip;
  v20[4] = sub_1975B90A4();
  v7 = swift_allocObject();
  v20[0] = v7;
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[10];
  memcpy((v7 + 16), a1, 0x58uLL);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  v11 = (a2 + OBJC_IVAR____TtC10TipKitCore7CoreTip__firstEligible);
  v12 = sub_197615A60();

  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  *v11 = 0;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34990, &qword_19761B1D0) + 28);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34998, &qword_19761B1D8);
  bzero(v11 + v13, *(*(v14 - 8) + 64));
  sub_19756E854(v6, v11 + v13);
  v15 = a2 + OBJC_IVAR____TtC10TipKitCore7CoreTip__constellationContent;
  *v15 = 0;
  *(v15 + 8) = 0;
  sub_197615B30();
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  v16 = a2 + OBJC_IVAR____TtC10TipKitCore7CoreTip__activeViews;
  *v16 = 0;
  *(v16 + 8) = 0;
  swift_unownedRetainStrong();
  *(a2 + 88) = v10;
  swift_unownedRetain();

  v17 = a2 + OBJC_IVAR____TtC10TipKitCore7CoreTip__displayDuration;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(a2 + 100) = 0;
  *(a2 + 104) = 0;
  *(a2 + 108) = 0;
  *(a2 + 112) = 0;
  sub_19756E8C4(v20, __dst);
  *(a2 + 96) = *__dst;
  sub_19755A560(v20, a2 + 32);
  *(a2 + 72) = sub_1975B8ACC();
  *(a2 + 80) = v18;
  memcpy(__dst, (v7 + 16), sizeof(__dst));
  sub_1975B90F8(__dst, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  return a2;
}

unint64_t sub_1975B90A4()
{
  result = qword_1EAF341F8;
  if (!qword_1EAF341F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF341F8);
  }

  return result;
}

uint64_t sub_1975B90F8(_BYTE *a1, uint64_t a2)
{
  v8[3] = &type metadata for ConstellationTip;
  v8[4] = sub_1975B90A4();
  v8[0] = swift_allocObject();
  v3 = a1[70];
  memcpy((v8[0] + 16), a1, 0x58uLL);
  if (v3)
  {
    swift_unownedRetainStrong();
    sub_1975B8D6C(a1, v7);

    v4 = swift_allocObject();
    swift_weakInit();
    sub_19755A560(v8, v7);
    v5 = swift_allocObject();
    sub_1975558C4(v7, v5 + 16);
    *(v5 + 56) = v4;

    sub_19755A5C4(&unk_19761B1E0, v5);
  }

  else
  {
    sub_1975B8D6C(a1, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v8);
}

unint64_t sub_1975B9248()
{
  result = qword_1EAF341B8;
  if (!qword_1EAF341B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF341B8);
  }

  return result;
}

uint64_t sub_1975B934C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349A8, &qword_19761B1F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975B93C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1975B9404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1975B9468(void *a1)
{
  a1[1] = sub_1975B94A0();
  a1[2] = sub_1975B94F4();
  result = sub_1975B9548();
  a1[3] = result;
  return result;
}

unint64_t sub_1975B94A0()
{
  result = qword_1EAF34200;
  if (!qword_1EAF34200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34200);
  }

  return result;
}

unint64_t sub_1975B94F4()
{
  result = qword_1EAF34210;
  if (!qword_1EAF34210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34210);
  }

  return result;
}

unint64_t sub_1975B9548()
{
  result = qword_1EAF34208;
  if (!qword_1EAF34208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34208);
  }

  return result;
}

uint64_t measure(_:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_197616B80();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197616B70();
  OUTLINED_FUNCTION_0_11();
  sub_1975B9FFC(v7, v8, MEMORY[0x1E69E8828]);
  sub_197617120();
  if (v2)
  {
    return (*(v4 + 8))(v6, v3);
  }

  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t measure(isolation:_:)()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v1;
  v0[3] = v5;
  v6 = sub_197616B80();
  v0[6] = v6;
  v0[7] = *(v6 - 8);
  v0[8] = swift_task_alloc();
  if (v2)
  {
    swift_getObjectType();
    v7 = sub_197616560();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v0[9] = v7;
  v0[10] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1975B982C, v7, v9);
}

uint64_t sub_1975B982C()
{
  OUTLINED_FUNCTION_1();
  sub_197616B70();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1975B98E0;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return sub_1975B9B00(v5, v4, v2, v3);
}

uint64_t sub_1975B98E0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  v6[12] = v2;

  (*(v6[7] + 8))(v6[8], v6[6]);
  if (v2)
  {
    v8 = v6[9];
    v9 = v6[10];

    return MEMORY[0x1EEE6DFA0](sub_1975B9AA0, v8, v9);
  }

  else
  {

    v10 = v7[1];

    return v10(a1, a2);
  }
}

uint64_t sub_1975B9AA0()
{
  OUTLINED_FUNCTION_1();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1975B9B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[4] = a3;
  v7 = sub_197616B60();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = sub_197616560();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[11] = v8;
  v5[12] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1975B9C0C, v8, v10);
}

uint64_t sub_1975B9C0C()
{
  v1 = v0[4];
  v0[13] = sub_197616B80();
  OUTLINED_FUNCTION_0_11();
  v0[14] = sub_1975B9FFC(v2, v3, MEMORY[0x1E69E8828]);
  sub_197617100();
  v6 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1975B9D54;

  return v6();
}

uint64_t sub_1975B9D54()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    (*(v2[8] + 8))(v2[10], v2[7]);
    v3 = v2[11];
    v4 = v2[12];
    v5 = sub_1975B9F94;
  }

  else
  {
    v3 = v2[11];
    v4 = v2[12];
    v5 = sub_1975B9E7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1975B9E7C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  sub_197617100();
  sub_1975B9FFC(&qword_1ED815FD0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_197616BA0();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  v6 = v0[2];
  v7 = v0[3];

  v8 = v0[1];

  return v8(v6, v7);
}

uint64_t sub_1975B9F94()
{
  OUTLINED_FUNCTION_1();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1975B9FFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CoreDonation.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_197615A60();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CoreDonation.donationInfo.getter()
{
  type metadata accessor for CoreDonation(0);
}

uint64_t type metadata accessor for CoreDonation(uint64_t a1)
{
  result = qword_1EAF349B8;
  if (!qword_1EAF349B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1975BA154(uint64_t a1)
{
  sub_197615A60();
  if (v1 <= 0x3F)
  {
    sub_1975BA1D8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1975BA1D8(uint64_t a1)
{
  if (!qword_1EAF349C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF345E8, &qword_197619050);
    v1 = sub_197616110();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF349C8);
    }
  }
}

void sub_1975BA24C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1975BC460(v4, 1, sub_1975BB9D8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_39_0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1975BA308(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1975BC460(v4, 1, sub_1975BBBAC);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_39_0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t CoreDonationRecord.date.getter()
{
  swift_getKeyPath();
  v1 = sub_197561290(&qword_1ED8171B8, type metadata accessor for CoreDonationRecord, &protocol conformance descriptor for CoreDonationRecord);
  OUTLINED_FUNCTION_29(v1, v2, v3, v4, v5, v6, v7, v8, v14, v0);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_6_2();
  sub_197561290(v9, type metadata accessor for CoreDonationRecord, v10);
  OUTLINED_FUNCTION_2_8();
  sub_197561290(v11, v12, MEMORY[0x1E6969558]);
  sub_197615E50();
}

uint64_t sub_1975BA4F4()
{
  sub_197615A60();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_0();
  v3 = v2 - v1;
  v4 = OUTLINED_FUNCTION_21_3();
  v5(v4);
  return CoreDonationRecord.date.setter(v3);
}

void (*CoreDonationRecord.date.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_197615A60();
  v3[1] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v3[2] = v5;
  v7 = *(v6 + 64);
  v3[3] = __swift_coroFrameAllocStub(v7);
  v3[4] = __swift_coroFrameAllocStub(v7);
  CoreDonationRecord.date.getter();
  return sub_1975BA674;
}

void sub_1975BA674(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    CoreDonationRecord.date.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CoreDonationRecord.date.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CoreDonationRecord.donationInfo.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_4();
  v3 = sub_197561290(v2, v1, &protocol conformance descriptor for CoreDonationRecord);
  OUTLINED_FUNCTION_29(v3, v4, v5, v6, v7, v8, v9, v10, v14, v0);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_6_2();
  sub_197561290(v11, v1, v12);
  sub_197615DE0();

  return v15;
}

uint64_t sub_1975BA7FC@<X0>(uint64_t *a1@<X8>)
{
  result = CoreDonationRecord.donationInfo.getter();
  *a1 = result;
  return result;
}

uint64_t (*CoreDonationRecord.donationInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = CoreDonationRecord.donationInfo.getter();
  return sub_1975BA89C;
}

uint64_t sub_1975BA89C(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return CoreDonationRecord.donationInfo.setter(*a1);
  }

  CoreDonationRecord.donationInfo.setter(v2);
}

uint64_t CoreDonationRecord.event.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_4();
  v3 = sub_197561290(v2, v1, &protocol conformance descriptor for CoreDonationRecord);
  OUTLINED_FUNCTION_29(v3, v4, v5, v6, v7, v8, v9, v10, v17, v0);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_6_2();
  sub_197561290(v11, v1, v12);
  OUTLINED_FUNCTION_5_7();
  sub_197561290(v13, v14, &protocol conformance descriptor for CoreEventRecord);
  OUTLINED_FUNCTION_21_3();
  v15 = sub_197615E30();

  return v15;
}

uint64_t sub_1975BA9F0@<X0>(uint64_t *a1@<X8>)
{
  result = CoreDonationRecord.event.getter();
  *a1 = result;
  return result;
}

uint64_t (*CoreDonationRecord.event.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = CoreDonationRecord.event.getter();
  return sub_1975BAA90;
}

uint64_t sub_1975BAA90(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return CoreDonationRecord.event.setter(*a1);
  }

  CoreDonationRecord.event.setter(v2);
}

unint64_t CoreDonationRecord.description.getter()
{
  v0 = sub_197615A60();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v6 = v5 - v4;
  v7 = 0xE000000000000000;
  sub_197616A20();

  if (CoreDonationRecord.event.getter())
  {
    v8 = CoreEventRecord.id.getter();
    v7 = v9;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x19A8E2A50](v8, v7);

  MEMORY[0x19A8E2A50](0x203A65746164202CLL, 0xE800000000000000);
  CoreDonationRecord.date.getter();
  OUTLINED_FUNCTION_2_8();
  sub_197561290(v10, v11, MEMORY[0x1E6969570]);
  v12 = sub_197616E80();
  MEMORY[0x19A8E2A50](v12);

  (*(v2 + 8))(v6, v0);
  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t CoreDonationRecord.__allocating_init(date:event:donationInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  CoreDonationRecord.init(date:event:donationInfo:)(a1, a2, a3);
  return v6;
}

uint64_t CoreDonationRecord.persistentBackingData.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_43_0(v1 + 24, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  sub_1975558C4(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t (*CoreDonationRecord.persistentBackingData.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BADF8;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  OUTLINED_FUNCTION_31_2();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

uint64_t CoreDonationRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = OBJC_IVAR____TtC10TipKitCore18CoreDonationRecord___observationRegistrar;
  sub_197615B40();
  OUTLINED_FUNCTION_13();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t CoreDonationRecord.hashValue.getter()
{
  sub_197617190();
  OUTLINED_FUNCTION_1_8();
  sub_197561290(v0, v1, &protocol conformance descriptor for CoreDonationRecord);
  sub_197616150();
  return sub_1976171F0();
}

uint64_t (*sub_1975BAFA0(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BC4D8;
}

void sub_1975BB01C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_19755A560(*a1, v2 + 40);
    OUTLINED_FUNCTION_43_0(v3 + 24, v2 + 104);
    __swift_destroy_boxed_opaque_existential_0Tm((v3 + 24));
    sub_1975558C4((v2 + 40), v3 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_43_0(v3 + 24, v2 + 40);
    __swift_destroy_boxed_opaque_existential_0Tm((v3 + 24));
    sub_1975558C4(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1975BB15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_197617190();
  sub_197616150();
  return sub_1976171F0();
}

uint64_t sub_1975BB230(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_197561290(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord, &protocol conformance descriptor for CoreDonationRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

void sub_1975BB2B0()
{
  OUTLINED_FUNCTION_17_2();
  if (v6)
  {
    OUTLINED_FUNCTION_4_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_8_5();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A10, &qword_19761B638);
    v4 = 48;
    v10 = OUTLINED_FUNCTION_22_2(v9);
    OUTLINED_FUNCTION_9_3(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_42_1();
  if (v1)
  {
    if (v3 != v0 || v5 + 48 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_19_2();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A18, &qword_19761B640);
    OUTLINED_FUNCTION_12_3();
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB398()
{
  OUTLINED_FUNCTION_17_2();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_8_5();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A38, &qword_19761B660);
    v7 = OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_23_2(v7);
    OUTLINED_FUNCTION_25_1();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB46C()
{
  OUTLINED_FUNCTION_17_2();
  if (v6)
  {
    OUTLINED_FUNCTION_4_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_8_5();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AA8, &unk_19761B6D8);
    v9 = OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_23_2(v9);
    OUTLINED_FUNCTION_25_1();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_42_1();
  if (v1)
  {
    if (v9 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_19_2();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34390, &qword_197618390);
    OUTLINED_FUNCTION_12_3();
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB55C()
{
  OUTLINED_FUNCTION_17_2();
  if (v6)
  {
    OUTLINED_FUNCTION_4_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_8_5();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AA0, &qword_19761E6B0);
    v4 = 48;
    v10 = OUTLINED_FUNCTION_22_2(v9);
    OUTLINED_FUNCTION_9_3(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_42_1();
  if (v1)
  {
    if (v3 != v0 || v5 + 48 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_19_2();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349B0, &qword_19761B200);
    OUTLINED_FUNCTION_12_3();
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB644()
{
  OUTLINED_FUNCTION_17_2();
  if (v6)
  {
    OUTLINED_FUNCTION_4_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_8_5();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A28, &qword_19761B650);
    v4 = 24;
    v10 = OUTLINED_FUNCTION_22_2(v9);
    OUTLINED_FUNCTION_9_3(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_42_1();
  if (v1)
  {
    if (v3 != v0 || v5 + 24 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_19_2();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A30, &qword_19761B658);
    OUTLINED_FUNCTION_12_3();
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB72C()
{
  OUTLINED_FUNCTION_17_2();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_8_5();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A80, &qword_19761B6B0);
    v8 = OUTLINED_FUNCTION_22_2(v7);
    OUTLINED_FUNCTION_9_3(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v3 != v0 || &v10[88 * v2] <= v9)
    {
      memmove(v9, v10, 88 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB800()
{
  OUTLINED_FUNCTION_17_2();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_27_1();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A70, &qword_19761B698);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_23_2(v7);
    OUTLINED_FUNCTION_25_1();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[40 * v3 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_19_2();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346C8, &qword_19761B6A0);
    OUTLINED_FUNCTION_12_3();
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB904()
{
  OUTLINED_FUNCTION_17_2();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_8_5();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF348A8, &qword_19761A890);
    v8 = OUTLINED_FUNCTION_22_2(v7);
    OUTLINED_FUNCTION_9_3(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v3 != v0 || &v10[144 * v2] <= v9)
    {
      memmove(v9, v10, 144 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB9D8()
{
  OUTLINED_FUNCTION_17_2();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_27_1();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A88, &qword_19761B6B8);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_23_2(v7);
    *(v7 + 2) = v3;
    *(v7 + 3) = 2 * (v8 / 80);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[80 * v3] <= v9)
    {
      memmove(v9, v10, 80 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1975BBAC8()
{
  OUTLINED_FUNCTION_28_1();
  if (v3)
  {
    OUTLINED_FUNCTION_26_2();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_30_3();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1975620C4(*(v0 + 16), v4, &qword_1EAF34A78, &qword_19761B6A8, MEMORY[0x1E697BC90]);
  OUTLINED_FUNCTION_40_0();
  sub_197615F50();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_41_0();
  if (v1)
  {
    OUTLINED_FUNCTION_33_1(MEMORY[0x1E697BC90], v7);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
  }
}

char *sub_1975BBBAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A98, &unk_19761B6C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1975BBCB4()
{
  OUTLINED_FUNCTION_17_2();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_27_1();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A90, &qword_19761B6C0);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_23_2(v7);
    *(v7 + 2) = v3;
    *(v7 + 3) = 2 * (v8 / 24);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  v11 = 24 * v3;
  if (v1)
  {
    if (v7 != v0 || &v10[v11] <= v9)
    {
      memmove(v9, v10, v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, v11);
  }
}

void sub_1975BBEA4()
{
  OUTLINED_FUNCTION_28_1();
  if (v3)
  {
    OUTLINED_FUNCTION_26_2();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_30_3();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1975620C4(*(v0 + 16), v4, &qword_1EAF34A20, &qword_19761B648, MEMORY[0x1E6969530]);
  OUTLINED_FUNCTION_40_0();
  sub_197615A60();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_41_0();
  if (v1)
  {
    OUTLINED_FUNCTION_33_1(MEMORY[0x1E6969530], v7);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
  }
}

void sub_1975BBFAC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    OUTLINED_FUNCTION_4_6();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_16_4();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_1975BC17C(v15, v12, a5, a6);
  v17 = OUTLINED_FUNCTION_21_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_41_0();
  if (a1)
  {
    sub_1975BC378(a4 + v19, v15, v16 + v19, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1975BC0A4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A38, &qword_19761B660);
  v4 = OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_23_2(v4);
  OUTLINED_FUNCTION_25_1();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1975BC110(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A40, &qword_19761B668);
  v4 = OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_23_2(v4);
  OUTLINED_FUNCTION_25_1();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1975BC17C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = OUTLINED_FUNCTION_21_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_20_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1975BC270(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1975BC290(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1975BC2B0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1975BC2F0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1975BC318(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1975BC338(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

void sub_1975BC378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_36_1();
  if (v10 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_13(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v12 = OUTLINED_FUNCTION_11_3();

      MEMORY[0x1EEE6BCF8](v12);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v13 = OUTLINED_FUNCTION_11_3();

    MEMORY[0x1EEE6BD00](v13);
  }
}

char *sub_1975BC440(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

uint64_t sub_1975BC460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

char *sub_1975BC4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v57 = a3;
  v70 = a2;
  v71 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  OUTLINED_FUNCTION_5_2(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v55 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  v67 = *(v61 - 8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v55 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  v12 = *(v68 - 8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  v17 = *(v16 - 8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  swift_getKeyPath();
  sub_197567E50(&qword_1ED816CD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_197615640();
  v80 = v71;
  v81 = v70;
  v21 = type metadata accessor for CoreEventRecord(0);
  v84 = v21;
  sub_197615AE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE0, &unk_197622300);
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_197618C10;
  v65 = v17;
  v24 = *(v17 + 16);
  v64 = v20;
  v63 = v16;
  v24(v23 + v22, v20, v16);
  v60 = v12;
  v25 = v12;
  v26 = v58;
  v27 = *(v25 + 16);
  v28 = v59;
  v66 = v15;
  v29 = v15;
  v30 = v68;
  v27(v59, v29, v68);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v30);
  v31 = sub_197567E50(&qword_1ED817218, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
  v32 = MEMORY[0x1E69E7CC0];
  sub_197615D90();
  v78 = v21;
  v79 = v31;
  swift_getKeyPath();
  v82 = 1;
  LOBYTE(v83) = 0;
  OUTLINED_FUNCTION_4_7();
  swift_setAtWritableKeyPath();

  v76 = v21;
  v77 = v31;
  swift_getKeyPath();
  LOBYTE(v82) = 0;
  OUTLINED_FUNCTION_4_7();
  swift_setAtWritableKeyPath();

  v74 = v21;
  v75 = v31;
  swift_getKeyPath();
  v82 = v32;
  OUTLINED_FUNCTION_4_7();
  swift_setAtWritableKeyPath();

  v72 = v21;
  v73 = v31;
  swift_getKeyPath();
  v82 = v23;
  OUTLINED_FUNCTION_4_7();
  swift_setAtWritableKeyPath();

  v33 = v62;
  v34 = sub_197615C80();
  if (v33)
  {

    (*(v67 + 8))(v26, v61);
    v35 = OUTLINED_FUNCTION_3_9();
    v36(v35, v30);
    v37 = OUTLINED_FUNCTION_1_9();
    v38(v37);
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_197616A20();

    v82 = 0xD000000000000026;
    v83 = 0x80000001976242A0;
    MEMORY[0x19A8E2A50](v71, v70);
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v39 = v82;
    v40 = v83;
    sub_19759228C();
    swift_allocError();
    *v41 = v39;
    v41[1] = v40;
    swift_willThrow();
  }

  else
  {
    v42 = v34;
    v43 = sub_197567E4C(v34);
    v44 = v61;
    if (v43)
    {
      sub_1975692BC(0, (v42 & 0xC000000000000001) == 0, v42);
      if ((v42 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A8E31E0](0, v42);
      }

      else
      {
      }
    }

    else
    {

      swift_allocObject();

      CoreEventRecord.init(id:)();
      sub_197615CD0();
    }

    (*(v67 + 8))(v26, v44);
    v45 = OUTLINED_FUNCTION_3_9();
    v46(v45, v68);
    v47 = OUTLINED_FUNCTION_1_9();
    v48(v47);
    if (v43)
    {
      v49 = v69;
      sub_1975901DC(v69);
      v50 = v71;
    }

    else
    {
      v50 = v71;
      v49 = v69;
    }

    v51 = v57;
    if (sub_197615C20())
    {
      sub_197615C70();
    }

    v52 = v56;
    sub_197615DB0();
    v53 = sub_197615F50();
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v53);
    v39 = sub_197594C4C(v50, v70, v52, v51, v49);
    sub_19756E748(v52);
  }

  return v39;
}

uint64_t sub_1975BCCB8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF0, &unk_197622320);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  sub_197559AAC(&qword_1ED8164C0, &qword_1EAF34AF0, &unk_197622320, MEMORY[0x1E6968DA8]);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  sub_197615810();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B00, &qword_19761B880);
  a4[4] = sub_19758F80C();
  __swift_allocate_boxed_opaque_existential_0(a4);
  sub_197559AAC(&qword_1ED8164D0, &qword_1EAF34AF8, &qword_19761B850, MEMORY[0x1E6968D58]);
  sub_197559AAC(&qword_1ED816D00, &qword_1EAF34AE8, &qword_19761B848, MEMORY[0x1E6968D20]);
  v17 = v21;
  sub_1976156F0();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1975BD02C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = a1 + 32;
  while (1)
  {
    v5 = ~v1;
    v6 = v4 + 80 * v1;
    v7 = v2 - v1;
    if (!v7)
    {
      break;
    }

    while (1)
    {
      sub_19755FA5C(v6, __src, &qword_1EAF34920, &qword_19761B118);
      memcpy(__dst, __src, 0x49uLL);
      if (__dst[1])
      {
        break;
      }

      sub_19755C404(__dst, &qword_1EAF34920, &qword_19761B118);
      --v5;
      v6 += 80;
      if (!--v7)
      {
        return v3;
      }
    }

    memcpy(v12, __src, sizeof(v12));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1975BB9D8();
      v3 = v9;
    }

    v8 = *(v3 + 16);
    if (v8 >= *(v3 + 24) >> 1)
    {
      sub_1975BB9D8();
      v3 = v10;
    }

    v1 = -v5;
    *(v3 + 16) = v8 + 1;
    memcpy((v3 + 80 * v8 + 32), v12, 0x49uLL);
  }

  return v3;
}

uint64_t sub_1975BD188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v29 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  v27 = v3;
  v30 = (v3 + 32);
  v31 = MEMORY[0x1E69E7CC0];
  while (v15 != v14)
  {
    sub_19755FA5C(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v13, &qword_1EAF34B08, &qword_19761B888);
    sub_1975BEA00(v13, v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
    {
      sub_19755C404(v11, &qword_1EAF34B08, &qword_19761B888);
      ++v14;
    }

    else
    {
      v16 = *v30;
      (*v30)(v28, v11, v2);
      v26 = v16;
      v16(v29, v28, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1975BBE80(0, *(v31 + 16) + 1, 1, v31);
        v31 = v21;
      }

      v18 = *(v31 + 16);
      v17 = *(v31 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v25 = v18 + 1;
        sub_1975BBE80(v17 > 1, v18 + 1, 1, v31);
        v19 = v25;
        v31 = v22;
      }

      ++v14;
      v20 = v31;
      *(v31 + 16) = v19;
      v26((v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v18), v29, v2);
    }
  }

  return v31;
}

void sub_1975BD49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  type metadata accessor for CoreEventRecord(0);
  sub_1975C6778(a1, a2, a3, v15, v16, v17, v18, v19, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  if (!v4)
  {
    v21 = v20;
    if (v20)
    {
      v36 = &v35;
      MEMORY[0x1EEE9AC00](v20);
      OUTLINED_FUNCTION_2_0();
      *(v22 - 16) = a1;
      *(v22 - 8) = a2;
      v40 = v5;
      OUTLINED_FUNCTION_5_8();
      sub_197615AE0();
      OUTLINED_FUNCTION_4_8();
      sub_1975FD7C0(v23, v24, v25, v26, v27, v28, v29, v14, v35, v36);
      (*(v11 + 8))(v14, v9);
      type metadata accessor for CoreRuleRecord(0);
      sub_197597C40(v21, a3);
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
      }

      v33 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v33, qword_1ED816CA0);
      OUTLINED_FUNCTION_1_10();
      sub_197616A20();

      v37 = 0x646928746E657645;
      v38 = 0xEA0000000000203ALL;
      MEMORY[0x19A8E2A50](a1, a2);
      MEMORY[0x19A8E2A50](0xD000000000000018, 0x80000001976243D0);
      sub_197558864(v37, v38, v34);
    }

    else
    {
      OUTLINED_FUNCTION_1_10();
      sub_197616A20();

      v37 = 0xD000000000000024;
      v38 = 0x80000001976243A0;
      MEMORY[0x19A8E2A50](a1, a2);
      v30 = v37;
      v31 = v38;
      sub_19759228C();
      swift_allocError();
      *v32 = v30;
      v32[1] = v31;
      swift_willThrow();
    }
  }
}

uint64_t sub_1975BD798(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v54 = a2;
  v44 = sub_1976157A0();
  v49 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v42 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B10, &qword_19761B8B8);
  v13 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v42 - v17;
  v19 = sub_197615A60();
  v51 = *(v19 - 8);
  v52 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197567E98(&qword_1ED816CD8, MEMORY[0x1E6969548]);

  v50 = a4;
  sub_197615640();
  v45 = a1;
  v22 = v55;
  sub_1975BE090(a3, v18);
  result = (*(v13 + 8))(v15, v53);
  if (!v22)
  {
    v24 = a5;
    v54 = v5;
    v55 = a3;
    v25 = v51;
    v26 = v49;
    if (__swift_getEnumTagSinglePayload(v18, 1, v52) == 1)
    {
      return sub_19755C404(v18, &qword_1EAF34988, &qword_197620CA0);
    }

    else
    {
      (*(v25 + 32))(v21, v18, v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B18, &qword_19761B8C0);
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888) - 8);
      v53 = 0;
      v28 = *(v27 + 72);
      v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_197618C00;
      v31 = v30 + v29;
      sub_19755FA5C(v24, v31, &qword_1EAF34B08, &qword_19761B888);
      v32 = sub_197615AF0();
      v33 = v26;
      v34 = MEMORY[0x1E6968C38];
      if ((v32 & 1) == 0)
      {
        v34 = MEMORY[0x1E6968C30];
      }

      v35 = v43;
      v36 = v44;
      v37 = (*(v26 + 104))(v43, *v34, v44);
      MEMORY[0x1EEE9AC00](v37);
      v38 = v54;
      *(&v42 - 4) = v55;
      *(&v42 - 3) = v21;
      *(&v42 - 2) = v35;
      v56 = v38;
      sub_197615AE0();
      (*(v33 + 8))(v35, v36);
      v39 = v31 + v28;
      v40 = v48;
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v48);
      v41 = v46;
      sub_1975BE1CC(v30, v46);
      swift_setDeallocating();
      sub_1975BE974();
      sub_1975FD26C();
      (*(v47 + 8))(v41, v40);
      return (*(v51 + 8))(v21, v52);
    }
  }

  return result;
}

uint64_t sub_1975BDD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v32 - v13;
  v36 = a1;
  v37 = a2;
  v41 = v4;
  sub_197615AE0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  sub_1975913B8();
  v20 = v19;
  result = sub_19755C404(v14, &qword_1EAF34B08, &qword_19761B888);
  if (!v5)
  {
    v34 = a1;
    v22 = v35;
    if (v20 >= v35)
    {
      v33 = v20;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      OUTLINED_FUNCTION_2_0();
      *(v24 - 16) = v34;
      *(v24 - 8) = a2;
      OUTLINED_FUNCTION_5_8();
      sub_197615AE0();
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v15);
      sub_1975BD798(a4, v22, KeyPath, 1, v12);
      sub_19755C404(v12, &qword_1EAF34B08, &qword_19761B888);

      v32[1] = 0;
      v32[2] = v32;
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
      }

      v28 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v28, qword_1ED816CA0);
      OUTLINED_FUNCTION_1_10();
      sub_197616A20();
      OUTLINED_FUNCTION_7_3();
      MEMORY[0x19A8E2A50](v34, a2);
      MEMORY[0x19A8E2A50](0xD000000000000029, 0x8000000197624340);
      v38 = v33;
      v29 = sub_197616E80();
      MEMORY[0x19A8E2A50](v29);

      OUTLINED_FUNCTION_9_4();
      v38 = v22;
      v30 = sub_197616E80();
      MEMORY[0x19A8E2A50](v30);

      sub_197558864(v39, v40, v31);
    }
  }

  return result;
}

uint64_t sub_1975BE090@<X0>(uint64_t a2@<X1>, uint64_t a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_197619030;
  *(v9 + 32) = a2;

  sub_1975E6A30();
  v11 = v10;

  if (!v17)
  {
    if (v11)
    {
      swift_getAtKeyPath();

      v13 = sub_197615A60();
      v14 = a8;
      v15 = 0;
    }

    else
    {
      v13 = sub_197615A60();
      v14 = a8;
      v15 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
  }

  return result;
}

uint64_t sub_1975BE1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v34 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v20 = sub_1975BD188(a1);
  sub_1976075F4(v20, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {

    sub_19755C404(v6, &qword_1EAF34B08, &qword_19761B888);
    v43 = type metadata accessor for CoreDonationRecord(0);
    return sub_197615AB0();
  }

  v38 = a2;
  v41 = *(v8 + 32);
  v42 = v8 + 32;
  v41(v19, v6, v7);
  v22 = sub_197611D9C(1, v20);
  v37 = v23;
  v25 = v24;
  v27 = v26;
  v40 = *(v8 + 16);
  result = v40(v17, v19, v7);
  if (v25 == v27 >> 1)
  {
    swift_unknownObjectRelease();
    v28 = v38;
    (*(v8 + 8))(v19, v7);
  }

  else
  {
    v36 = v22;
    if (v25 >= (v27 >> 1))
    {
      __break(1u);
      return result;
    }

    v35 = v19;
    v29 = (v8 + 8);
    v30 = ~v25 + (v27 >> 1);
    v39 = *(v8 + 72);
    v31 = v37 + v25 * v39;
    v37 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v32 = v40(v14, v31, v7);
      MEMORY[0x1EEE9AC00](v32);
      *(&v34 - 2) = v17;
      *(&v34 - 1) = v14;
      v43 = type metadata accessor for CoreDonationRecord(0);
      sub_197615AE0();
      v33 = *v29;
      (*v29)(v14, v7);
      v33(v17, v7);
      v41(v17, v11, v7);
      if (!v30)
      {
        break;
      }

      --v30;
      v31 += v39;
    }

    swift_unknownObjectRelease();
    v28 = v38;
    v33(v35, v7);
  }

  return (v41)(v28, v17, v7);
}

uint64_t sub_1975BE590@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v23 = a4;
  v20[1] = a2;
  v20[2] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B20, &unk_19761E5E0);
  v7 = *(v6 - 8);
  v21 = v6;
  v22 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B30, &qword_19761E5F0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v20 - v16;
  sub_197559AAC(&qword_1ED8164B0, &qword_1EAF34B28, &qword_19761B8C8, MEMORY[0x1E6968DA8]);
  sub_197615820();
  sub_197615700();
  (*(v11 + 8))(v13, v10);
  sub_197615A60();
  sub_197615810();
  a5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B38, &qword_19761E620);
  a5[4] = sub_1975920D8();
  __swift_allocate_boxed_opaque_existential_0(a5);
  sub_197559AAC(&qword_1ED8161F8, &qword_1EAF34B30, &qword_19761E5F0, MEMORY[0x1E6968D58]);
  sub_197559AAC(&qword_1ED8164E0, &qword_1EAF34B20, &unk_19761E5E0, MEMORY[0x1E6968D20]);
  sub_197567E98(&qword_1ED816CD8, MEMORY[0x1E6969548]);
  v18 = v21;
  sub_197615760();
  (*(v22 + 8))(v9, v18);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1975BE914()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34920, &qword_19761B118);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1975BE974()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1975BEA00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1975BEA74()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_4_9();
  v0 = OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_5_2(v0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_12_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_11();
  type metadata accessor for CoreEventRecord(0);
  v3 = sub_19759152C(&qword_1ED817218, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
  OUTLINED_FUNCTION_8_6(v3, MEMORY[0x1E69E7CC0]);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_9(KeyPath);

  OUTLINED_FUNCTION_9_5();
  v5 = OUTLINED_FUNCTION_2_9();
  v6(v5);
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_19_0();
}

void sub_1975BEBD4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_4_9();
  v0 = OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_5_2(v0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_12_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_11();
  type metadata accessor for CoreTipRecord(0);
  v3 = sub_19759152C(&qword_1ED8170E0, type metadata accessor for CoreTipRecord, &protocol conformance descriptor for CoreTipRecord);
  OUTLINED_FUNCTION_8_6(v3, MEMORY[0x1E69E7CC0]);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_9(KeyPath);

  OUTLINED_FUNCTION_9_5();
  v5 = OUTLINED_FUNCTION_2_9();
  v6(v5);
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_19_0();
}

void sub_1975BED34()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_4_9();
  v0 = OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_5_2(v0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_12_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA8, &qword_19761BAC8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_11();
  type metadata accessor for CoreParameterRecord(0);
  v3 = sub_19759152C(&qword_1ED817148, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);
  OUTLINED_FUNCTION_8_6(v3, MEMORY[0x1E69E7CC0]);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_9(KeyPath);

  OUTLINED_FUNCTION_9_5();
  v5 = OUTLINED_FUNCTION_2_9();
  v6(v5);
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1975BEE94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v30[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  OUTLINED_FUNCTION_0();
  v31 = v9;
  v32 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v14 = OUTLINED_FUNCTION_5_2(v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v30 - v18;
  v21 = *a3;
  v20 = a3[1];
  v22 = *(a3 + 16);
  v30[1] = a1;
  v30[2] = a2;
  sub_197593D50(a1, a2, v20, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v23);
  sub_19755FA5C(v19, v17, &qword_1EAF34B08, &qword_19761B888);
  OUTLINED_FUNCTION_6_4();
  v26 = sub_19759152C(v24, v25, &protocol conformance descriptor for CoreDonationRecord);
  v27 = MEMORY[0x1E69E7CC0];
  sub_197615D90();
  v43 = v4;
  v44 = v26;
  swift_getKeyPath();
  v45 = v21;
  LOBYTE(v46) = 0;
  OUTLINED_FUNCTION_10_3();

  v41 = v4;
  v42 = v26;
  swift_getKeyPath();
  v45 = 0;
  LOBYTE(v46) = 1;
  OUTLINED_FUNCTION_10_3();

  v39 = v4;
  v40 = v26;
  swift_getKeyPath();
  LOBYTE(v45) = 0;
  OUTLINED_FUNCTION_10_3();

  v37 = v4;
  v38 = v26;
  swift_getKeyPath();
  v45 = v27;
  OUTLINED_FUNCTION_10_3();

  v35 = v4;
  v36 = v26;
  swift_getKeyPath();
  v45 = v27;
  OUTLINED_FUNCTION_10_3();

  v33 = v4;
  v34 = v26;
  swift_getKeyPath();
  v45 = v27;
  OUTLINED_FUNCTION_10_3();

  v28 = sub_197615C80();
  (*(v31 + 8))(v12, v32);
  sub_197593F1C(v19);
  return v28;
}

uint64_t sub_1975BF338@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v41 = a3;
  v44 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B50, &qword_19761BAA8);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v38 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B58, &qword_19761BAB0);
  OUTLINED_FUNCTION_0();
  v42 = v17;
  v43 = v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v40 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v39 = v38 - v21;
  v38[0] = *a1;
  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  sub_197615810();
  v22 = sub_197559AAC(&qword_1ED8164B0, &qword_1EAF34B28, &qword_19761B8C8, MEMORY[0x1E6968DA8]);
  sub_197615820();
  v46 = v5;
  v47 = v10;
  v23 = sub_197559AAC(&qword_1EAF34B60, &qword_1EAF34B50, &qword_19761BAA8, MEMORY[0x1E6968D20]);
  v45[1] = v22;
  OUTLINED_FUNCTION_15_4(v23, &v47, v24, v25, &v46);
  v26 = *(v13 + 8);
  v26(v16, v11);
  v27 = *(v7 + 8);
  v27(v10, v5);
  sub_197615810();
  v28 = sub_197615820();
  v45[0] = v10;
  v29 = v40;
  OUTLINED_FUNCTION_15_4(v28, v45, v30, v31, &v46);
  v26(v16, v11);
  v27(v10, v5);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B68, &qword_19761BAB8);
  v33 = v44;
  v44[3] = v32;
  v33[4] = sub_1975BF738();
  __swift_allocate_boxed_opaque_existential_0(v33);
  sub_197559AAC(&qword_1EAF34B98, &qword_1EAF34B58, &qword_19761BAB0, MEMORY[0x1E6968AC8]);
  v34 = v39;
  v35 = v42;
  sub_197615780();
  v36 = *(v43 + 8);
  v36(v29, v35);
  return (v36)(v34, v35);
}

unint64_t sub_1975BF738()
{
  result = qword_1EAF34B70;
  if (!qword_1EAF34B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34B68, &qword_19761BAB8);
    sub_1975BF7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34B70);
  }

  return result;
}

unint64_t sub_1975BF7BC()
{
  result = qword_1EAF34B78;
  if (!qword_1EAF34B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34B58, &qword_19761BAB0);
    sub_1975BF87C();
    sub_197559AAC(&qword_1ED8164B8, &qword_1EAF34B28, &qword_19761B8C8, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34B78);
  }

  return result;
}

unint64_t sub_1975BF87C()
{
  result = qword_1EAF34B80;
  if (!qword_1EAF34B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34B50, &qword_19761BAA8);
    sub_197559AAC(&qword_1EAF34B88, &qword_1EAF34A48, &qword_19761B670, MEMORY[0x1E6969CA8]);
    sub_197559AAC(&qword_1EAF34B90, &qword_1EAF34A48, &qword_19761B670, MEMORY[0x1E6969CA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34B80);
  }

  return result;
}

uint64_t sub_1975BF990(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_197567E4C(a3);
  v7 = result;
  v8 = 0;
  v9 = v4 & 0xC000000000000001;
  v12 = v4;
  v13 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7 == v8)
    {

      return v15;
    }

    if (v9)
    {
      result = MEMORY[0x19A8E31E0](v8, v4);
      v10 = result;
    }

    else
    {
      if (v8 >= *(v13 + 16))
      {
        goto LABEL_16;
      }

      v10 = *(v4 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v14 = v10;
    v11 = a1(&v14);
    if (v3)
    {
    }

    if (v11)
    {
      sub_197616AD0();
      sub_197616B10();
      v4 = v12;
      sub_197616B20();
      result = sub_197616AE0();
    }

    else
    {
    }

    ++v8;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1975BFB18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    v22 = "h donation records: ";

    while (1)
    {
      v5 = sub_1975C0C8C(v4, v25);
      if (v28)
      {
        switch(v25[0])
        {
          case 9:

            goto LABEL_10;
          case 0xB:
            OUTLINED_FUNCTION_0_13();
            break;
          case 0xC:
            OUTLINED_FUNCTION_1_12();
            break;
          default:
            break;
        }

        v8 = sub_197616EF0();

        if ((v8 & 1) == 0)
        {
          switch(v25[0])
          {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
              goto LABEL_15;
            case 0xA:

              goto LABEL_16;
            case 0xB:
              OUTLINED_FUNCTION_0_13();
              goto LABEL_15;
            case 0xC:
              OUTLINED_FUNCTION_1_12();
LABEL_15:
              v12 = sub_197616EF0();

              if (v12)
              {
LABEL_16:
                MEMORY[0x1EEE9AC00](v11);
                OUTLINED_FUNCTION_2_10();
                v10 = sub_1975C0B28(sub_1975C1108, v13, a2);
                goto LABEL_17;
              }

              v23 = 0;
              v24 = 0xE000000000000000;
              sub_197616A20();
              MEMORY[0x19A8E2A50](0xD00000000000002ELL, v22 | 0x8000000000000000);
              sub_197616BC0();
              v14 = v23;
              v15 = v24;
              sub_19759228C();
              v16 = swift_allocError();
              *v17 = v14;
              v17[1] = v15;
              swift_willThrow();
              if (qword_1ED815ED8 != -1)
              {
                swift_once();
              }

              v18 = type metadata accessor for logger(0);
              __swift_project_value_buffer(v18, qword_1ED815EE0);
              v23 = 0;
              v24 = 0xE000000000000000;
              sub_197616A20();
              MEMORY[0x19A8E2A50](0xD00000000000001ALL, 0x8000000197624470);
              MEMORY[0x19A8E2A50](v26, v27);
              MEMORY[0x19A8E2A50](0x64656C696166202CLL, 0xEA0000000000203ALL);
              swift_getErrorValue();
              sub_197616EB0();
              sub_197558864(v23, v24, v19);

              sub_1975C0DA4(v25);
              break;
            default:
              JUMPOUT(0);
          }

          goto LABEL_24;
        }

LABEL_10:
        MEMORY[0x1EEE9AC00](v7);
        OUTLINED_FUNCTION_2_10();
        v10 = sub_1975C08F4(sub_1975C0DF8, v9, a2);
LABEL_17:
        if (v10)
        {
          v6 = v10;
        }

        else
        {
          v6 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](v5);
        v21[2] = v25;

        v6 = sub_1975BF990(sub_1975C0E14, v21, a2);
      }

      sub_1975C0DA4(v25);

      a2 = v6;
LABEL_24:
      v4 += 64;
      if (!--v3)
      {
        return a2;
      }
    }
  }

  return a2;
}

uint64_t sub_1975BFFE0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (CoreDonationRecord.donationInfo.getter())
  {
    sub_197579604();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  sub_19755FA5C((a2 + 32), v6, &qword_1EAF34930, &unk_19761DB90);
  if (v6[3])
  {
    sub_1975586C0(v6, v7);
    sub_19759425C(v6);
  }

  else
  {
    sub_19755C404(v6, &qword_1EAF34930, &unk_19761DB90);
    memset(v7, 0, sizeof(v7));
  }

  v4 = sub_1975C00FC(v8, v7, v3);
  sub_19755C404(v7, &qword_1EAF34340, &unk_19761C8E0);
  sub_19755C404(v8, &qword_1EAF34698, &qword_197619048);
  return v4 & 1;
}

uint64_t sub_1975C00FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1975CBEAC(a3, 0) & 1) == 0)
  {
LABEL_5:
    if (sub_1975CBEAC(a3, 1))
    {
      sub_19755FA5C(a1, v34, &qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
      if (swift_dynamicCast())
      {
        sub_1975558C4(&v31, v35);
        v10 = v36;
        v11 = v37;
        __swift_project_boxed_opaque_existential_1Tm(v35, v36);
        v12 = default argument 1 of Equatable.isNotEqual(_:checkReverse:)();
        v9 = Equatable.isNotEqual(_:checkReverse:)(a2, v12 & 1, v10, v11);
        goto LABEL_31;
      }

      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      sub_19755C404(&v31, &qword_1EAF34BE0, &qword_19761BB70);
    }

    if (sub_1975CBEAC(a3, 6))
    {
      sub_19755FA5C(a1, v34, &qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
      if (swift_dynamicCast())
      {
        sub_1975558C4(&v31, v35);
        v13 = v36;
        __swift_project_boxed_opaque_existential_1Tm(v35, v36);
        sub_19755FA5C(a2, &v31, &qword_1EAF34340, &unk_19761C8E0);
        if (*(&v32 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
          if (swift_dynamicCast())
          {
            v14 = v34[0];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          sub_19755C404(&v31, &qword_1EAF34340, &unk_19761C8E0);
          v14 = 0;
        }

        v38.value._rawValue = v14;
        v38.is_nil = v13;
        v27 = Equatable.exists(in:)(v38);

        goto LABEL_32;
      }

      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      sub_19755C404(&v31, &qword_1EAF34BE0, &qword_19761BB70);
    }

    if (sub_1975CBEAC(a3, 2))
    {
      sub_19755FA5C(a1, v34, &qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      if (swift_dynamicCast())
      {
        sub_1975558C4(&v31, v35);
        v15 = v36;
        v16 = v37;
        __swift_project_boxed_opaque_existential_1Tm(v35, v36);
        v17 = default argument 1 of Comparable.isLessThan(_:checkReverse:)();
        v9 = Comparable.isLessThan(_:checkReverse:)(a2, v17 & 1, v15, v16);
        goto LABEL_31;
      }

      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      sub_19755C404(&v31, &qword_1EAF34678, &qword_197618EB0);
    }

    if (sub_1975CBEAC(a3, 3))
    {
      sub_19755FA5C(a1, v34, &qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      if (swift_dynamicCast())
      {
        sub_1975558C4(&v31, v35);
        v18 = v36;
        v19 = v37;
        __swift_project_boxed_opaque_existential_1Tm(v35, v36);
        v20 = default argument 1 of Comparable.isLessThanOrEqual(_:checkReverse:)();
        v9 = Comparable.isLessThanOrEqual(_:checkReverse:)(a2, v20 & 1, v18, v19);
        goto LABEL_31;
      }

      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      sub_19755C404(&v31, &qword_1EAF34678, &qword_197618EB0);
    }

    if (sub_1975CBEAC(a3, 4))
    {
      sub_19755FA5C(a1, v34, &qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      if (swift_dynamicCast())
      {
        sub_1975558C4(&v31, v35);
        v21 = v36;
        v22 = v37;
        __swift_project_boxed_opaque_existential_1Tm(v35, v36);
        v23 = default argument 1 of Comparable.isGreaterThan(_:checkReverse:)();
        v9 = Comparable.isGreaterThan(_:checkReverse:)(a2, v23 & 1, v21, v22);
        goto LABEL_31;
      }

      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      sub_19755C404(&v31, &qword_1EAF34678, &qword_197618EB0);
    }

    if (sub_1975CBEAC(a3, 5))
    {
      sub_19755FA5C(a1, v34, &qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      if (swift_dynamicCast())
      {
        sub_1975558C4(&v31, v35);
        v24 = v36;
        v25 = v37;
        __swift_project_boxed_opaque_existential_1Tm(v35, v36);
        v26 = default argument 1 of Comparable.isGreaterThanOrEqual(_:checkReverse:)();
        v9 = Comparable.isGreaterThanOrEqual(_:checkReverse:)(a2, v26 & 1, v24, v25);
        goto LABEL_31;
      }

      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      sub_19755C404(&v31, &qword_1EAF34678, &qword_197618EB0);
    }

    sub_19755FA5C(a1, v35, &qword_1EAF34698, &qword_197619048);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
    sub_1975C10C4();
    if (swift_dynamicCast())
    {
      v29 = v31;
      sub_19755FA5C(a2, v35, &qword_1EAF34340, &unk_19761C8E0);
      if (v36)
      {
        if (swift_dynamicCast())
        {
          v30 = v31;
          LOBYTE(v35[0]) = a3;
          v27 = sub_1975CC628();

          return v27 & 1;
        }
      }

      else
      {

        sub_19755C404(v35, &qword_1EAF34340, &unk_19761C8E0);
      }
    }

    v27 = 0;
    return v27 & 1;
  }

  sub_19755FA5C(a1, v34, &qword_1EAF34698, &qword_197619048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
  if (!swift_dynamicCast())
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    sub_19755C404(&v31, &qword_1EAF34BE0, &qword_19761BB70);
    goto LABEL_5;
  }

  sub_1975558C4(&v31, v35);
  v6 = v36;
  v7 = v37;
  __swift_project_boxed_opaque_existential_1Tm(v35, v36);
  v8 = default argument 1 of Equatable.isEqual(_:checkReverse:)();
  v9 = Equatable.isEqual(_:checkReverse:)(a2, v8 & 1, v6, v7);
LABEL_31:
  v27 = v9;
LABEL_32:
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  return v27 & 1;
}

uint64_t sub_1975C08F4(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_1975C0E34(a3, a1);
  if (!v3)
  {
    v7 = sub_1975C0CE8(v6);

    v8 = v7[2];
    if (v8)
    {
      a1 = v7[4];

      v10 = 1;
LABEL_4:
      if ((a1 & 0x8000000000000000) != 0)
      {
        v11 = a1;
      }

      else
      {
        v11 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      while (v8 != v10)
      {
        if (v10 >= v7[2])
        {
          __break(1u);
          return result;
        }

        v12 = v7[v10 + 4];
        if (a1 >> 62)
        {
          v14 = v11;
          v15 = sub_197616C60();
          v11 = v14;
          v13 = v15;
        }

        else
        {
          v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v12 >> 62)
        {
          v16 = v11;
          result = sub_197616C60();
          v11 = v16;
        }

        else
        {
          result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v10;
        if (v13 < result)
        {

          a1 = v12;
          goto LABEL_4;
        }
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

double sub_1975C0A58@<D0>(uint64_t a1@<X8>)
{
  if (!CoreDonationRecord.donationInfo.getter())
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_6;
  }

  sub_197579604();

  if (!*(&v4 + 1))
  {
LABEL_6:
    sub_19755C404(&v3, &qword_1EAF34698, &qword_197619048);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1975C0B28(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_1975C0E34(a3, a1);
  if (!v3)
  {
    v7 = sub_1975C0CE8(v6);

    v8 = v7[2];
    if (v8)
    {
      a1 = v7[4];

      v10 = 1;
LABEL_4:
      if ((a1 & 0x8000000000000000) != 0)
      {
        v11 = a1;
      }

      else
      {
        v11 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = a1 >> 62;
      while (1)
      {
        if (v8 == v10)
        {
          goto LABEL_19;
        }

        if (v10 >= v7[2])
        {
          __break(1u);
          return result;
        }

        v13 = v7[v10 + 4];
        if (v13 >> 62)
        {
          v15 = v11;
          v16 = sub_197616C60();
          v11 = v15;
          v14 = v16;
          if (v12)
          {
LABEL_16:
            v17 = v11;
            result = sub_197616C60();
            v11 = v17;
            goto LABEL_13;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            goto LABEL_16;
          }
        }

        result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
        ++v10;
        if (v14 < result)
        {

          a1 = v13;
          goto LABEL_4;
        }
      }
    }

    a1 = 0;
LABEL_19:
  }

  return a1;
}

void *sub_1975C0CE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1975BC110(*(a1 + 16), 0);
  sub_1975EA184();
  v4 = v3;

  sub_1975A4D3C(v6);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

void *sub_1975C0E34(uint64_t a1, void (*a2)(_OWORD *__return_ptr, uint64_t *))
{
  v4 = MEMORY[0x1E69E7CC8];
  v30 = MEMORY[0x1E69E7CC8];
  v5 = sub_197567E4C(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return v4;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A8E31E0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v29 = v7;
    a2(v27, &v29);
    if (v2)
    {

      return v4;
    }

    v9 = sub_1975FC0A4(v27);
    v10 = v4[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_25;
    }

    v13 = v8;
    if (v4[3] < v12)
    {
      sub_1975F5B98(v12, 1);
      v4 = v30;
      v14 = sub_1975FC0A4(v27);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_27;
      }

      v9 = v14;
    }

    if (v13)
    {
      v16 = sub_19755C404(v27, &qword_1EAF34BE8, &qword_19761BB78);
      v17 = (v4[7] + 8 * v9);
      MEMORY[0x19A8E2BE0](v16);
      if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1976164A0();
      }

      sub_1976164D0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_197619030;
      *(v18 + 32) = v7;
      v4[(v9 >> 6) + 8] |= 1 << v9;
      v19 = v4[6] + 40 * v9;
      v21 = v27[0];
      v20 = v27[1];
      *(v19 + 32) = v28;
      *v19 = v21;
      *(v19 + 16) = v20;
      *(v4[7] + 8 * v9) = v18;
      v22 = v4[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      v4[2] = v24;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BE8, &qword_19761BB78);
  result = sub_1976170F0();
  __break(1u);
  return result;
}

unint64_t sub_1975C10C4()
{
  result = qword_1ED816018;
  if (!qword_1ED816018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED816018);
  }

  return result;
}

uint64_t sub_1975C1120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  OUTLINED_FUNCTION_0();
  v125 = v7;
  v126 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v123 = &v115 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v122 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v128 = &v115 - v13;
  v134 = sub_197615F50();
  OUTLINED_FUNCTION_0();
  v121 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v127 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  OUTLINED_FUNCTION_0();
  v130 = v18;
  v131 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v132 = &v115 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  OUTLINED_FUNCTION_0();
  v129 = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v115 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v115 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v115 - v33;
  v133 = a1;
  v137 = a1;
  v138 = a2;
  v135 = a2;
  v35 = type metadata accessor for CoreEventRecord(0);
  v142 = v35;
  sub_197615AE0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v36);
  v37 = a3;
  v38 = v136;
  sub_1975BEA74();
  v40 = v39;
  result = sub_19755C404(v34, &qword_1EAF34AC0, &qword_19761B6F0);
  if (!v38)
  {
    v118 = v29;
    v136 = v35;
    v119 = v32;
    v42 = v135;
    v120 = v37;
    if (v40 >= 2)
    {
      swift_getKeyPath();
      v117 = 0;
      sub_197567F1C(&qword_1ED816CD8);
      v43 = v25;
      v44 = sub_197615640();
      v115 = &v115;
      MEMORY[0x1EEE9AC00](v44);
      *(&v115 - 2) = v133;
      *(&v115 - 1) = v42;
      v45 = v119;
      sub_197615AE0();
      __swift_storeEnumTagSinglePayload(v45, 0, 1, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE0, &unk_197622300);
      v46 = v129;
      v47 = (v129[80] + 32) & ~v129[80];
      v48 = swift_allocObject();
      v116 = v48;
      *(v48 + 16) = xmmword_197618C10;
      v49 = *(v46 + 2);
      v129 = v43;
      v49(v48 + v47, v43, v21);
      sub_19755FA5C(v45, v118, &qword_1EAF34AC0, &qword_19761B6F0);
      OUTLINED_FUNCTION_6_5();
      v51 = sub_197567F1C(v50);
      v52 = v136;
      sub_197615D90();
      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v53);
      OUTLINED_FUNCTION_1_1();
      *(v54 - 16) = v52;
      *(v54 - 8) = v51;
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      v140 = 1;
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v55);
      OUTLINED_FUNCTION_1_1();
      *(v56 - 16) = v52;
      *(v56 - 8) = v51;
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      v140 = 0;
      LOBYTE(v141) = 1;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v57);
      OUTLINED_FUNCTION_1_1();
      *(v58 - 16) = v52;
      *(v58 - 8) = v51;
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      LOBYTE(v140) = 0;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v59);
      OUTLINED_FUNCTION_1_1();
      *(v60 - 16) = v52;
      *(v60 - 8) = v51;
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      v61 = MEMORY[0x1E69E7CC0];
      v140 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v62);
      OUTLINED_FUNCTION_1_1();
      *(v63 - 16) = v52;
      *(v63 - 8) = v51;
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      v140 = v61;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v64);
      OUTLINED_FUNCTION_1_1();
      *(v65 - 16) = v52;
      *(v65 - 8) = v51;
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      v140 = v116;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      v66 = v117;
      v67 = sub_197615C80();
      v68 = (v46 + 8);
      if (v66)
      {

        v69 = OUTLINED_FUNCTION_13_3();
        v70(v69);
        sub_19755C404(v45, &qword_1EAF34AC0, &qword_19761B6F0);
        (*v68)(v129, v21);
LABEL_5:
        v140 = 0;
        v141 = 0xE000000000000000;
        sub_197616A20();
        MEMORY[0x19A8E2A50](0xD000000000000030, 0x8000000197624490);
        MEMORY[0x19A8E2A50](v133, v135);
        MEMORY[0x19A8E2A50](41, 0xE100000000000000);
        v71 = v140;
        v72 = v141;
        sub_19759228C();
        swift_allocError();
        *v73 = v71;
        v73[1] = v72;
        return swift_willThrow();
      }

      v74 = v67;
      v118 = 0;
      v75 = OUTLINED_FUNCTION_13_3();
      v76(v75);
      v77 = sub_197595B38(v74);

      sub_19755C404(v45, &qword_1EAF34AC0, &qword_19761B6F0);
      (*v68)(v129, v21);
      if (!v77)
      {
        goto LABEL_5;
      }

      v78 = v127;
      v79 = sub_197615DB0();
      MEMORY[0x1EEE9AC00](v79);
      v80 = v135;
      *(&v115 - 4) = v133;
      *(&v115 - 3) = v80;
      *(&v115 - 2) = v78;
      v81 = v124;
      v139 = v124;
      v82 = v128;
      sub_197615AE0();
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
      __swift_storeEnumTagSinglePayload(v82, 0, 1, v83);
      sub_19755FA5C(v82, v122, &qword_1EAF34B08, &qword_19761B888);
      v84 = sub_197567F1C(&qword_1ED8171B0);
      v85 = sub_197615D90();
      MEMORY[0x1EEE9AC00](v85);
      OUTLINED_FUNCTION_1_1();
      *(v86 - 16) = v81;
      *(v86 - 8) = v84;
      swift_getKeyPath();
      v140 = 0;
      LOBYTE(v141) = 1;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      MEMORY[0x1EEE9AC00](v87);
      OUTLINED_FUNCTION_1_1();
      *(v88 - 16) = v81;
      *(v88 - 8) = v84;
      swift_getKeyPath();
      v140 = 0;
      LOBYTE(v141) = 1;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_12_5();
      MEMORY[0x1EEE9AC00](v89);
      OUTLINED_FUNCTION_1_1();
      *(v90 - 16) = v81;
      *(v90 - 8) = v84;
      swift_getKeyPath();
      LOBYTE(v140) = 0;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_12_5();
      MEMORY[0x1EEE9AC00](v91);
      OUTLINED_FUNCTION_1_1();
      *(v92 - 16) = v81;
      *(v92 - 8) = v84;
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_3_12(KeyPath);

      OUTLINED_FUNCTION_12_5();
      MEMORY[0x1EEE9AC00](v94);
      OUTLINED_FUNCTION_1_1();
      *(v95 - 16) = v81;
      *(v95 - 8) = v84;
      v96 = swift_getKeyPath();
      OUTLINED_FUNCTION_3_12(v96);

      OUTLINED_FUNCTION_12_5();
      MEMORY[0x1EEE9AC00](v97);
      OUTLINED_FUNCTION_1_1();
      *(v98 - 16) = v81;
      *(v98 - 8) = v84;
      v99 = swift_getKeyPath();
      OUTLINED_FUNCTION_3_12(v99);

      v100 = v118;
      v101 = sub_197615C80();
      if (v100)
      {

        v102 = OUTLINED_FUNCTION_13_3();
        v103(v102);
        sub_19755C404(v128, &qword_1EAF34B08, &qword_19761B888);
        v104 = OUTLINED_FUNCTION_11_5();
        return v105(v104, v134);
      }

      else
      {
        v106 = v101;
        v107 = OUTLINED_FUNCTION_13_3();
        v108(v107);
        sub_19755C404(v128, &qword_1EAF34B08, &qword_19761B888);
        result = sub_197567E4C(v106);
        v109 = result;
        for (i = 0; ; ++i)
        {
          v111 = v134;
          if (v109 == i)
          {

            v113 = OUTLINED_FUNCTION_11_5();
            return v114(v113, v111);
          }

          if ((v106 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x19A8E31E0](i, v106);
          }

          else
          {
            if (i >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }
          }

          if (__OFADD__(i, 1))
          {
            break;
          }

          CoreDonationRecord.event.setter(v112);
        }

        __break(1u);
LABEL_20:
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1975C1E04@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v25 = a2;
  v26 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  OUTLINED_FUNCTION_0();
  v27 = v5;
  v28 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF0, &unk_197622320);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - v20;
  OUTLINED_FUNCTION_1_11();
  sub_197569AA4(v22);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  (*(v12 + 8))(v15, v10);
  v29 = v25;
  v30 = v26;
  sub_197615810();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B00, &qword_19761B880);
  a4[4] = sub_19758F80C();
  __swift_allocate_boxed_opaque_existential_0(a4);
  sub_197569AA4(&qword_1ED8164D0);
  sub_197569AA4(&qword_1ED816D00);
  v23 = v27;
  sub_1976156F0();
  (*(v28 + 8))(v9, v23);
  return (*(v18 + 8))(v21, v16);
}

uint64_t sub_1975C2130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v72 = a4;
  v64 = a3;
  v63 = a2;
  v79 = a5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BF0, &qword_19761BD58);
  v8 = *(v7 - 8);
  v75 = v7;
  v76 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v49 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BF8, &qword_19761BD60);
  v74 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v65 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C00, &qword_19761BD68);
  v12 = *(v11 - 8);
  v77 = v11;
  v78 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v49 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB0, &qword_19761BAD0);
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB8, &qword_19761BAD8);
  v83 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v20 = &v49 - v19;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BC0, &qword_19761BAE0);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v81 = &v49 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BC8, &qword_19761BAE8);
  v23 = *(v22 - 8);
  v66 = v22;
  v67 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v82 = &v49 - v24;
  v57 = *a1;
  sub_197569AA4(&qword_1ED8164B0);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  v25 = *(v16 + 8);
  v55 = v16 + 8;
  v56 = v25;
  v25(v18, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  v52 = type metadata accessor for CoreEventRecord(0);
  v53 = MEMORY[0x1E6968D58];
  v51 = sub_197569AA4(&unk_1ED816278);
  sub_197569AA4(&qword_1ED8164D0);
  v26 = v80;
  sub_197615710();
  v27 = *(v83 + 8);
  v83 += 8;
  v50 = v27;
  v27(v20, v26);
  v84 = v63;
  v85 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  v28 = v60;
  sub_197615810();
  v64 = MEMORY[0x1E6968BC8];
  sub_197569AA4(&unk_1ED8162A0);
  v54 = MEMORY[0x1E6968D20];
  sub_197569AA4(&qword_1ED816CF0);
  v63 = MEMORY[0x1E69E7C80];
  sub_19757B688(&qword_1ED816C68);
  v29 = v81;
  v30 = v58;
  v31 = v61;
  sub_1976156F0();
  (*(v62 + 8))(v28, v31);
  (*(v59 + 8))(v29, v30);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  v56(v18, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C08, &qword_19761BD98);
  v32 = sub_197615F50();
  sub_197569AA4(&qword_1ED816000);
  v33 = v65;
  v34 = v80;
  sub_197615710();
  v50(v20, v34);
  v35 = v70;
  (*(*(v32 - 8) + 16))(v70, v72, v32);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v32);
  v36 = v69;
  sub_197615810();
  sub_19755C404(v35, &qword_1EAF34AB8, &qword_197622080);
  sub_197569AA4(&unk_1EAF34C10);
  sub_197569AA4(&unk_1EAF34C18);
  sub_1975C3280(&unk_1EAF34C20);
  v37 = v68;
  v38 = v33;
  v39 = v36;
  v40 = v71;
  v41 = v75;
  sub_197615730();
  (*(v76 + 8))(v39, v41);
  (*(v74 + 8))(v38, v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C28, &qword_19761BDA0);
  v43 = v79;
  v79[3] = v42;
  v43[4] = sub_1975C2E84();
  __swift_allocate_boxed_opaque_existential_0(v43);
  sub_197569AA4(&unk_1ED816178);
  sub_197569AA4(&unk_1EAF34C60);
  v44 = v82;
  v45 = v37;
  v46 = v66;
  v47 = v77;
  sub_197615780();
  (*(v78 + 8))(v45, v47);
  return (*(v67 + 8))(v44, v46);
}

uint64_t sub_1975C2CB0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF0, &unk_197622320);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  OUTLINED_FUNCTION_1_11();
  sub_197569AA4(v8);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1975C2DE0()
{
  type metadata accessor for CoreEventRecord(0);
  sub_197567F1C(&qword_1ED817218);
  return sub_197615DB0();
}

unint64_t sub_1975C2E84()
{
  result = qword_1EAF34C30;
  if (!qword_1EAF34C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34C28, &qword_19761BDA0);
    sub_197591288();
    sub_1975C3054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34C30);
  }

  return result;
}

unint64_t sub_1975C2F10()
{
  result = qword_1ED816280;
  if (!qword_1ED816280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34BB8, &qword_19761BAD8);
    sub_197569AA4(&qword_1ED8164B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816280);
  }

  return result;
}

unint64_t sub_1975C2FC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    sub_197569AA4(&qword_1ED8164C8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1975C3054()
{
  result = qword_1EAF34C38;
  if (!qword_1EAF34C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34C00, &qword_19761BD68);
    sub_1975C30E0();
    sub_1975C3184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34C38);
  }

  return result;
}

unint64_t sub_1975C30E0()
{
  result = qword_1EAF34C40;
  if (!qword_1EAF34C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34BF8, &qword_19761BD60);
    sub_1975C2F10();
    sub_1975C2FC0(&qword_1ED816008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34C40);
  }

  return result;
}

unint64_t sub_1975C3184()
{
  result = qword_1EAF34C48;
  if (!qword_1EAF34C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34BF0, &qword_19761BD58);
    sub_1975C3280(&unk_1EAF34C50);
    sub_1975C3280(&unk_1EAF34C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34C48);
  }

  return result;
}

unint64_t sub_1975C3280(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34AB8, &qword_197622080);
    sub_197567F1C(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t CoreEvent.id.getter()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v1);
  OUTLINED_FUNCTION_0_14();
  return v2(v1);
}

uint64_t CoreEvent.mapDonations<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unownedRetainStrong();
  v8 = *(v3 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v3 + 16), v8);
  OUTLINED_FUNCTION_0_14();
  v13[2] = a3;
  v13[3] = v9(v8);
  v13[4] = v10;
  v14 = v3;
  v15 = a1;
  v16 = a2;
  v11 = sub_197616530();
  MiniTipsDatastore.performAndWait<A>(_:)(sub_1975C3650, v13, v11, &v17);

  if (v4)
  {
  }

  return v17;
}

uint64_t sub_1975C3470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a8@<X8>)
{
  type metadata accessor for CoreDonationRecord(0);
  v12 = a4[5];
  v13 = a4[6];
  __swift_project_boxed_opaque_existential_1Tm(a4 + 2, v12);
  (*(v13 + 16))(&v20, v12, v13);
  v18 = v20;
  v19 = v21;
  *&v20 = sub_1975BEE94(a2, a3, &v18, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C68, &qword_19761BE88);
  sub_1975C36CC();
  v14 = v22;
  v15 = sub_197616370();

  if (!v14)
  {
    *a8 = v15;
  }

  return result;
}

uint64_t CoreEvent.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  swift_unownedRelease();
  return v0;
}

uint64_t CoreEvent.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1975C3624@<X0>(uint64_t *a1@<X8>)
{
  result = CoreEvent.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1975C36CC()
{
  result = qword_1ED8162D0;
  if (!qword_1ED8162D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34C68, &qword_19761BE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8162D0);
  }

  return result;
}

uint64_t CoreEvent.donate<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_1975C3748()
{
  OUTLINED_FUNCTION_25();
  v1 = static DictionaryCoder.encode<A>(_:)(v0[2], v0[3], v0[4]);
  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1975C380C;

  return CoreEvent.donate(donationInfo:)(v1);
}

uint64_t sub_1975C380C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t static CoreEvent.donate(eventID:donationInfo:datastore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_1975C3920()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_11_6();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1975C3A24;

  return sub_1975C4064();
}

uint64_t sub_1975C3A24()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = sub_1975C3B2C;
  }

  else
  {

    v7 = sub_1975C47A4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1975C3B2C()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_1975C3B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1975C3BAC, 0, 0);
}

uint64_t sub_1975C3BAC()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for CoreDonationRecord(0);
  sub_1975BC4DC(v3, v1, v2, v4);

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_1975C3C68()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[2];
  v2 = v1[7];
  swift_unownedRetainStrong();
  v0[3] = *(v2 + 64);

  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v3);
  OUTLINED_FUNCTION_12_6();
  v5 = v4(v3);
  v7 = v6;
  v8 = swift_allocObject();
  v0[4] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1975C3DA0;

  return sub_1975C4064();
}

uint64_t sub_1975C3DA0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v7 = sub_1975C3EB0;
  }

  else
  {

    v7 = sub_1975A9254;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1975C3EB0()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_1975C3F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1975C3F38, 0, 0);
}

uint64_t sub_1975C3F38()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  type metadata accessor for CoreDonationRecord(0);
  sub_1975BD49C(v1, v2, v3);
  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_1975C3FCC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v1[1] = sub_19755CDC8;
  v3 = OUTLINED_FUNCTION_1_13();

  return sub_1975C3B88(v3, v4, v5, v6, v7);
}

uint64_t sub_1975C4064()
{
  OUTLINED_FUNCTION_1();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  sub_197572838();
  if (v0)
  {
    swift_getObjectType();
    v4 = sub_197616560();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1975C40F4, v4, v6);
}

uint64_t sub_1975C40F4()
{
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1975C41B0;
  swift_continuation_init();
  OUTLINED_FUNCTION_13_4();
  sub_197572A14(v1, v2, v3, v4, 89, v5, v6);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1975C41B0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1975C42AC()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_5_1(v7);
  *v8 = v9;
  v8[1] = sub_19755CCE8;

  return sub_1975C3F14(v4, v2, v6, v5);
}

uint64_t sub_1975C4354(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a3;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1975C444C;

  return v7();
}

uint64_t sub_1975C444C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    v7 = sub_1975C45A4;
  }

  else
  {
    v7 = sub_1975C454C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1975C454C()
{
  OUTLINED_FUNCTION_1();
  swift_continuation_throwingResume();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_1975C45A4()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  swift_allocError();
  *v2 = v1;
  swift_continuation_throwingResumeWithError();
  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_1975C4638(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  v8 = *a2;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_19755CDC8;

  return sub_1975C4354(a1, v8, a3, a4);
}

uint64_t sub_1975C4700()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v1[1] = sub_19755CDC8;
  v3 = OUTLINED_FUNCTION_1_13();

  return v4(v3);
}

uint64_t (*static CoreEvent.modelIdentifiers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = static CoreEvent.modelIdentifiers.getter();
  return sub_1975C4830;
}

void sub_1975C4848()
{
  v0 = static CoreEvent.events.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C88, &qword_19761BF40);
  sub_1976160F0();
  static CoreEvent.events.setter(v0);
  v1 = static CoreEvent.modelIdentifiers.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C90, &qword_19761BF48);
  sub_1976160F0();
  static CoreEvent.modelIdentifiers.setter(v1);
}

BOOL CoreEvent.Options.isDefault.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 16);
  if (qword_1ED8174E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1ED8174E0);
  }

  if (byte_1ED8174EA == 1)
  {
    if (*&v1 == 200)
    {
      v4 = v2 == 63072000.0 ? v3 : 1;
      if ((v4 & 1) == 0)
      {
        return 1;
      }
    }
  }

  else
  {
    result = *&v1 == 1000;
    if ((*&v1 != 1000) | v3 & 1)
    {
      return result;
    }
  }

  return 0;
}

uint64_t CoreEvent.Options.init(maxDonationCount:maxDonationAge:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

uint64_t static CoreEvent.Options.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1975C49E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000197624570 == a2;
  if (v3 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6F4478616DLL && a2 == 0xEE006567416E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_197616EF0();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1975C4AB8(char a1)
{
  if (a1)
  {
    return 0x74616E6F4478616DLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1975C4B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975C49E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975C4B38(uint64_t a1)
{
  v2 = sub_1975C4D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975C4B74(uint64_t a1)
{
  v2 = sub_1975C4D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreEvent.Options.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C98, &qword_19761BF58);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  v11[1] = *(v1 + 8);
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975C4D20();
  sub_197617260();
  v14 = 0;
  sub_197616E50();
  if (!v2)
  {
    v13 = 1;
    sub_197616E00();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1975C4D20()
{
  result = qword_1EAF34CA0;
  if (!qword_1EAF34CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34CA0);
  }

  return result;
}

uint64_t CoreEvent.Options.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CA8, &qword_19761BF60);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975C4D20();
  sub_197617240();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_197616DB0();
    v17 = 1;
    v13 = sub_197616D60();
    v15 = v14;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t _s7OptionsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7OptionsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

_BYTE *_s7OptionsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1975C5084()
{
  result = qword_1EAF34CB0;
  if (!qword_1EAF34CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34CB0);
  }

  return result;
}

unint64_t sub_1975C50DC()
{
  result = qword_1EAF34CB8;
  if (!qword_1EAF34CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34CB8);
  }

  return result;
}

unint64_t sub_1975C5134()
{
  result = qword_1EAF34CC0;
  if (!qword_1EAF34CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34CC0);
  }

  return result;
}

uint64_t CoreEventRecord.dateCreated.getter()
{
  swift_getKeyPath();
  v1 = sub_1975611B4(&qword_1ED817220, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
  OUTLINED_FUNCTION_29(v1, v2, v3, v4, v5, v6, v7, v8, v14, v0);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  sub_1975611B4(v9, type metadata accessor for CoreEventRecord, v10);
  OUTLINED_FUNCTION_2_11();
  sub_1975611B4(v11, v12, MEMORY[0x1E6969558]);
  sub_197615E50();
}

uint64_t sub_1975C52EC()
{
  sub_197615A60();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_0();
  v3 = v2 - v1;
  v4 = OUTLINED_FUNCTION_21_3();
  v5(v4);
  return CoreEventRecord.dateCreated.setter(v3);
}

uint64_t CoreEventRecord.dateCreated.setter(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_16();
  v5 = sub_1975611B4(v3, v4, &protocol conformance descriptor for CoreEventRecord);
  OUTLINED_FUNCTION_13_5(v5, v6, sub_1975C5848, v7, v8, v5, v9, v10, v13, v14, v1, a1, v15, v16);
  sub_197615B10();

  sub_197615A60();
  OUTLINED_FUNCTION_7_5();
  return (*(v11 + 8))(a1);
}

uint64_t sub_1975C5478()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreEventRecord.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1975C54A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CoreEventRecord.id.setter(v1, v2);
}

uint64_t CoreEventRecord.id.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_16();
  sub_1975611B4(v2, v3, &protocol conformance descriptor for CoreEventRecord);
  sub_197615B10();
}

uint64_t CoreEventRecord.__allocating_init(id:)(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  CoreEventRecord.init(id:)();
  return v2;
}

uint64_t sub_1975C5600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1975611B4(&qword_1ED817218, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
  sub_197615E70();
}

uint64_t (*CoreEventRecord.id.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CoreEventRecord.id.getter();
  a1[1] = v3;
  return sub_1975C56FC;
}

uint64_t sub_1975C56FC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return CoreEventRecord.id.setter(*a1, v2);
  }

  CoreEventRecord.id.setter(v3, v2);
}

uint64_t sub_1975C5770(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1975611B4(&qword_1ED817218, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
  sub_1975611B4(&qword_1ED816D90, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_197615E70();
}

void (*CoreEventRecord.dateCreated.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_197615A60();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  CoreEventRecord.dateCreated.getter();
  return sub_1975C5958;
}

void sub_1975C5958(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    CoreEventRecord.dateCreated.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CoreEventRecord.dateCreated.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1975C5A6C()
{
  OUTLINED_FUNCTION_16_0();
  CoreEventRecord.rules.getter();
  *v0 = v1;
}

void sub_1975C5AE0()
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_24_2(v1, v2);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CC8, &unk_19761C9F0);
  type metadata accessor for CoreRuleRecord(0);
  v3 = sub_197567D64();
  OUTLINED_FUNCTION_18_5(v3, v4);

  *v0 = 0;
  OUTLINED_FUNCTION_25_2();
}

uint64_t (*CoreEventRecord.rules.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  CoreEventRecord.rules.getter();
  *a1 = v3;
  return sub_1975C5BB4;
}

void sub_1975C5C00()
{
  OUTLINED_FUNCTION_26_3();
  v2 = v1;
  v4 = v3;
  swift_getKeyPath();
  v5 = sub_1975611B4(&qword_1ED817220, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
  OUTLINED_FUNCTION_29(v5, v6, v7, v8, v9, v10, v11, v12, v15, v0);
  sub_197615B20();

  swift_getKeyPath();
  v4(0);
  OUTLINED_FUNCTION_1_15();
  sub_1975611B4(v13, type metadata accessor for CoreEventRecord, v14);
  v2();
  sub_197615E40();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1975C5D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_16();
  v7 = sub_1975611B4(v5, v6, &protocol conformance descriptor for CoreEventRecord);
  OUTLINED_FUNCTION_13_5(v7, v8, v9, v10, v11, v7, v12, v13, v15, v16, v3, a1, v17, v18);
  sub_197615B10();
}

void sub_1975C5E2C()
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_24_2(v1, v2);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CD8, &unk_19761C230);
  type metadata accessor for CoreDonationRecord(0);
  v3 = sub_19758D8AC();
  OUTLINED_FUNCTION_18_5(v3, v4);

  *v0 = 0;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1975C5EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  OUTLINED_FUNCTION_0_16();
  sub_1975611B4(v7, v8, &protocol conformance descriptor for CoreEventRecord);
  a5();
  sub_197615E60();
}

uint64_t (*CoreEventRecord.donations.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  CoreEventRecord.donations.getter();
  *a1 = v3;
  return sub_1975C5FC0;
}

uint64_t sub_1975C5FD8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

unint64_t CoreEventRecord.description.getter()
{
  sub_197616A20();

  v0 = CoreEventRecord.id.getter();
  MEMORY[0x19A8E2A50](v0);

  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return 0xD000000000000014;
}

void CoreEventRecord.init(id:)()
{
  OUTLINED_FUNCTION_26_3();
  v2 = v1;
  v4 = v3;
  v5 = sub_197615A60();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CE0, &qword_19761C240);
  OUTLINED_FUNCTION_0_16();
  v14 = sub_1975611B4(v12, v13, &protocol conformance descriptor for CoreEventRecord);
  v0[7] = OUTLINED_FUNCTION_15_3(v14);
  __swift_allocate_boxed_opaque_existential_0(v0 + 3);
  sub_197615DC0();
  sub_19758D4D8(0, 0xE000000000000000, v0 + 3);
  sub_197615A50();
  __swift_project_boxed_opaque_existential_1Tm(v0 + 3, v0[6]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_11();
  sub_1975611B4(v15, v16, MEMORY[0x1E6969538]);
  sub_197615BE0();

  (*(v7 + 8))(v11, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  v17 = sub_1976160B0();
  sub_19758D594(v17, v0 + 3);
  OUTLINED_FUNCTION_22_3();
  sub_1975C5AE0();
  OUTLINED_FUNCTION_22_3();
  sub_1975C5E2C();
  sub_197615B30();
  CoreEventRecord.id.setter(v4, v2);
  OUTLINED_FUNCTION_25_2();
}

uint64_t (*CoreEventRecord.persistentBackingData.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BADF8;
}

uint64_t CoreEventRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = OBJC_IVAR____TtC10TipKitCore15CoreEventRecord___observationRegistrar;
  sub_197615B40();
  OUTLINED_FUNCTION_7_5();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1975C64D8@<X0>(uint64_t *a1@<X8>)
{
  result = CoreEventRecord.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CoreEventRecord.hashValue.getter()
{
  sub_197617190();
  OUTLINED_FUNCTION_0_16();
  sub_1975611B4(v0, v1, &protocol conformance descriptor for CoreEventRecord);
  sub_197616150();
  return sub_1976171F0();
}

uint64_t (*sub_1975C65C4(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BC4D8;
}

void sub_1975C6778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20();
  v22 = v21;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  OUTLINED_FUNCTION_5_2(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_12_4();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  OUTLINED_FUNCTION_0();
  v29 = v28;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v36 - v31;
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_14();
  sub_197567F60(v33, v34, MEMORY[0x1E6969548]);
  sub_197615640();
  v36[4] = v24;
  v36[5] = v22;
  sub_197615AE0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v35);
  sub_1975E6D50();
  sub_19755C7C8(v20, &qword_1EAF34AC0, &qword_19761B6F0);
  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_19_0();
}

void sub_1975C6974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20();
  v42 = v22;
  v40 = v21;
  v41 = v23;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  OUTLINED_FUNCTION_0();
  v30 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v40 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  OUTLINED_FUNCTION_0();
  v36 = v35;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_8_9();
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_14();
  sub_197567F60(v38, v39, MEMORY[0x1E6969548]);
  sub_197615640();
  v43 = v27;
  v44 = v25;
  sub_197615AE0();
  sub_1975C6B5C(v42, 0, v20, v33, v41);
  (*(v30 + 8))(v33, v28);
  (*(v36 + 8))(v20, v34);
  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1975C6B5C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a3;
  v26 = a1;
  v23 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  v10 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  (*(*(v13 - 8) + 16))(v9, a4, v13);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  v14 = type metadata accessor for CoreEventRecord(0);
  v15 = sub_197567F60(&qword_1ED817218, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
  sub_197615D90();
  v31 = v14;
  v32 = v15;
  swift_getKeyPath();
  v33 = 1;
  v34 = 0;
  swift_setAtWritableKeyPath();

  v29 = v14;
  v30 = v15;
  swift_getKeyPath();
  LOBYTE(v33) = a2;
  swift_setAtWritableKeyPath();

  v27 = v14;
  v28 = v15;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE0, &unk_197622300);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_197618C10;
  (*(v17 + 16))(v19 + v18, v25, v16);
  v33 = v19;
  swift_setAtWritableKeyPath();

  v20 = v35;
  v21 = sub_197615C60();
  result = (*(v10 + 8))(v12, v24);
  if (!v20)
  {
    sub_1976087EC(v21);
  }

  return result;
}

void sub_1975C6EF4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_5(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA0, &qword_19761BAC0);
  OUTLINED_FUNCTION_5_2(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA8, &qword_19761BAC8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
  OUTLINED_FUNCTION_13();
  (*(v9 + 16))(v0, v1, v8);
  v10 = OUTLINED_FUNCTION_5_10();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v8);
  type metadata accessor for CoreParameterRecord(0);
  v13 = sub_197567F60(&qword_1ED817148, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);
  OUTLINED_FUNCTION_17_5(v13, MEMORY[0x1E69E7CC0]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_12();

  swift_getKeyPath();
  OUTLINED_FUNCTION_4_12();

  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D30, &unk_1976223E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D38, &unk_1976223A0);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v17 = OUTLINED_FUNCTION_9_7();
  v18 = OUTLINED_FUNCTION_12_7(v17, xmmword_197618C10);
  v19(v18);
  OUTLINED_FUNCTION_4_12();

  OUTLINED_FUNCTION_13_6();
  v20 = OUTLINED_FUNCTION_11_7();
  v21(v20);
  if (!KeyPath)
  {
    sub_1976087EC(v16);
  }

  OUTLINED_FUNCTION_19_0();
}

void sub_1975C71A8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_5(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  OUTLINED_FUNCTION_5_2(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  OUTLINED_FUNCTION_13();
  (*(v9 + 16))(v0, v1, v8);
  v10 = OUTLINED_FUNCTION_5_10();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v8);
  type metadata accessor for CoreTipRecord(0);
  v13 = sub_197567F60(&qword_1ED8170E0, type metadata accessor for CoreTipRecord, &protocol conformance descriptor for CoreTipRecord);
  OUTLINED_FUNCTION_17_5(v13, MEMORY[0x1E69E7CC0]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_12();

  swift_getKeyPath();
  OUTLINED_FUNCTION_4_12();

  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34740, &unk_197619390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34748, &qword_197622440);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v17 = OUTLINED_FUNCTION_9_7();
  v18 = OUTLINED_FUNCTION_12_7(v17, xmmword_197618C10);
  v19(v18);
  OUTLINED_FUNCTION_4_12();

  OUTLINED_FUNCTION_13_6();
  v20 = OUTLINED_FUNCTION_11_7();
  v21(v20);
  if (!KeyPath)
  {
    sub_1976087EC(v16);
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t CoreParameter.id.getter()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v1);
  OUTLINED_FUNCTION_0_14();
  return v2(v1);
}

uint64_t CoreParameter.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  swift_unownedRelease();
  return v0;
}

uint64_t CoreParameter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1975C7514@<X0>(uint64_t *a1@<X8>)
{
  result = CoreParameter.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1975C7540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1975C7568, 0, 0);
}

uint64_t sub_1975C7568()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v5[3];
  v8 = v5[4];
  v9 = __swift_project_boxed_opaque_existential_1Tm(v5, v7);
  type metadata accessor for CoreParameterRecord(0);
  sub_1975C91D0(v9, v4, v6, v7, v3, v8, v1, v2);
  OUTLINED_FUNCTION_3();

  return v10();
}

uint64_t sub_1975C7784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (*(*(v4 - 8) + 80) + 80) & ~*(*(v4 - 8) + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1975831B8;

  return sub_1975C7540(a1, (v1 + 5), v1 + v7, v4, v5, v6);
}

uint64_t (*static CoreParameter.modelIdentifiers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = static CoreParameter.modelIdentifiers.getter();
  return sub_1975C7928;
}

void sub_1975C7940()
{
  v0 = static CoreParameter.parameters.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D40, &unk_19761C8D0);
  sub_1976160F0();
  static CoreParameter.parameters.setter(v0);
  v1 = static CoreParameter.modelIdentifiers.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C90, &qword_19761BF48);
  sub_1976160F0();
  static CoreParameter.modelIdentifiers.setter(v1);
}

uint64_t CoreParameterProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  sub_197616A20();

  strcpy(v6, "Parameter(id: ");
  HIBYTE(v6[1]) = -18;
  v4 = (*(*(a2 + 16) + 16))(a1);
  MEMORY[0x19A8E2A50](v4);

  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return v6[0];
}

uint64_t static CoreParameterProtocol.valuesEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1975674F0(a1, &v44);
  if (v47)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
    v12 = OUTLINED_FUNCTION_0_17(v4, v5, v6, v7, v8, v9, v10, v11, v44, v45, v46, v47, v48[0]);
    if (v12)
    {
      if (v49)
      {
        OUTLINED_FUNCTION_5_11(v12, v13, v14, v15, v16, v17, v18, v19);
        v20 = v51;
        v21 = v52;
        __swift_project_boxed_opaque_existential_1Tm(v50, v51);
        v22 = default argument 1 of Equatable.isEqual(_:checkReverse:)() & 1;
        v23 = a2;
        v24 = v20;
LABEL_11:
        v42 = Equatable.isEqual(_:checkReverse:)(v23, v22, v24, v21);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        return v42 & 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_16();
    }
  }

  else
  {
    sub_19755C404(&v44, &qword_1EAF34340, &unk_19761C8E0);
    OUTLINED_FUNCTION_2_12();
  }

  sub_19755C404(v48, &qword_1EAF34BE0, &qword_19761BB70);
  sub_1975674F0(a2, &v44);
  if (v47)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
    v33 = OUTLINED_FUNCTION_0_17(v25, v26, v27, v28, v29, v30, v31, v32, v44, v45, v46, v47, v48[0]);
    if (v33)
    {
      if (v49)
      {
        OUTLINED_FUNCTION_5_11(v33, v34, v35, v36, v37, v38, v39, v40);
        v41 = v51;
        v21 = v52;
        __swift_project_boxed_opaque_existential_1Tm(v50, v51);
        v22 = default argument 1 of Equatable.isEqual(_:checkReverse:)() & 1;
        v23 = a1;
        v24 = v41;
        goto LABEL_11;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_16();
    }
  }

  else
  {
    sub_19755C404(&v44, &qword_1EAF34340, &unk_19761C8E0);
    OUTLINED_FUNCTION_2_12();
  }

  sub_19755C404(v48, &qword_1EAF34BE0, &qword_19761BB70);
  v42 = !*(a1 + 24) && !*(a2 + 24);
  return v42 & 1;
}

uint64_t sub_1975C7CD8()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreParameterRecord.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t CoreParameterRecord.id.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = CoreParameterRecord.id.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_24_3();
}

uint64_t CoreParameterRecord.dateCreated.getter()
{
  swift_getKeyPath();
  sub_19755FD88(&qword_1ED817150, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_17();
  sub_19755FD88(v0, type metadata accessor for CoreParameterRecord, v1);
  OUTLINED_FUNCTION_3_16();
  sub_19755FD88(v2, v3, MEMORY[0x1E6969558]);
  sub_197615E50();
}

uint64_t sub_1975C7ED0()
{
  sub_197615A60();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_0();
  v3 = v2 - v1;
  v4 = OUTLINED_FUNCTION_21_3();
  v5(v4);
  return CoreParameterRecord.dateCreated.setter(v3);
}

uint64_t CoreParameterRecord.dateCreated.setter(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  v5 = sub_19755FD88(v3, v4, &protocol conformance descriptor for CoreParameterRecord);
  OUTLINED_FUNCTION_15_5(v5, v6, v7, v8, v9, v5, v10, v11, v14, v15, v1, a1, v16, v17);

  sub_197615A60();
  OUTLINED_FUNCTION_7_5();
  return (*(v12 + 8))(a1);
}

uint64_t sub_1975C804C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_19755FD88(&qword_1ED817148, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);
  sub_19755FD88(&qword_1ED816D90, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_197615E70();
}

void (*CoreParameterRecord.dateCreated.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_197615A60();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  CoreParameterRecord.dateCreated.getter();
  return sub_1975C81F8;
}

void sub_1975C81F8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    CoreParameterRecord.dateCreated.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CoreParameterRecord.dateCreated.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CoreParameterRecord.valueData.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = CoreParameterRecord.valueData.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_24_3();
}

uint64_t sub_1975C8334(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_18_0();
    sub_19757C2FC(v2, v3);
    v4 = OUTLINED_FUNCTION_18_0();
    CoreParameterRecord.valueData.setter(v4, v5);
    v6 = OUTLINED_FUNCTION_18_0();

    return sub_197576558(v6, v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_18_0();
    return CoreParameterRecord.valueData.setter(v9, v10);
  }
}

uint64_t CoreParameterRecord.valueType.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = CoreParameterRecord.valueType.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_24_3();
}

uint64_t sub_1975C83FC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_22();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_22();
    return a3(v6);
  }
}

uint64_t CoreParameterRecord.rules.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_13();
  sub_19755FD88(v2, v1, &protocol conformance descriptor for CoreParameterRecord);
  sub_197615B20();

  swift_getKeyPath();
  type metadata accessor for CoreRuleRecord(0);
  OUTLINED_FUNCTION_1_17();
  sub_19755FD88(v3, v1, v4);
  sub_197567D64();
  OUTLINED_FUNCTION_21_3();
  sub_197615E40();

  return v0;
}

uint64_t sub_1975C8568()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreParameterRecord.rules.getter();
  *v0 = result;
  return result;
}

uint64_t CoreParameterRecord.rules.setter(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  v5 = sub_19755FD88(v3, v4, &protocol conformance descriptor for CoreParameterRecord);
  OUTLINED_FUNCTION_15_5(v5, v6, v7, v8, v9, v5, v10, v11, v13, v14, v1, a1, v15, v16);
}

uint64_t sub_1975C8660(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for CoreRuleRecord(0);
  sub_19755FD88(&qword_1ED817148, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);
  sub_197567D64();
  sub_197615E60();
}

uint64_t CoreParameterRecord.rules.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = CoreParameterRecord.rules.getter();
  return OUTLINED_FUNCTION_24_3();
}

uint64_t sub_1975C877C(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return CoreParameterRecord.rules.setter(*a1);
  }

  CoreParameterRecord.rules.setter(v2);
}

unint64_t CoreParameterRecord.description.getter()
{
  sub_197616A20();

  v0 = CoreParameterRecord.id.getter();
  MEMORY[0x19A8E2A50](v0);

  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t CoreParameterRecord.__allocating_init(id:valueType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  CoreParameterRecord.init(id:valueType:)(a1, a2, a3, a4);
  return v8;
}

uint64_t *CoreParameterRecord.init(id:valueType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_197615A60();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v14 = v13 - v12;
  v4[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D50, &qword_19761CA00);
  OUTLINED_FUNCTION_0_18();
  v17 = sub_19755FD88(v15, v16, &protocol conformance descriptor for CoreParameterRecord);
  v4[7] = OUTLINED_FUNCTION_15_3(v17);
  __swift_allocate_boxed_opaque_existential_0(v4 + 3);
  sub_197615DC0();
  v18 = OUTLINED_FUNCTION_16_5();
  sub_197578AEC(v18, 0xE000000000000000, v19, v20, v21);
  sub_197615A50();
  __swift_project_boxed_opaque_existential_1Tm(v5 + 3, v5[6]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_16();
  sub_19755FD88(v22, v23, MEMORY[0x1E6969538]);
  sub_197615BE0();

  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_16_5();
  sub_197578A00(v24, v25);
  v26 = OUTLINED_FUNCTION_16_5();
  sub_197578AEC(v26, 0xE000000000000000, v27, v28, v29);
  sub_19757890C(v5 + 3, v5 + 17);
  sub_197615B30();
  CoreParameterRecord.id.setter(a1, a2);
  CoreParameterRecord.valueType.setter(a3, a4);
  return v4;
}

uint64_t CoreParameterRecord.persistentBackingData.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_43_0(v1 + 24, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  sub_1975558C4(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t (*CoreParameterRecord.persistentBackingData.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BADF8;
}

uint64_t CoreParameterRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = OBJC_IVAR____TtC10TipKitCore19CoreParameterRecord___observationRegistrar;
  sub_197615B40();
  OUTLINED_FUNCTION_7_5();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1975C8C7C@<X0>(uint64_t *a1@<X8>)
{
  result = CoreParameterRecord.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CoreParameterRecord.hashValue.getter()
{
  sub_197617190();
  OUTLINED_FUNCTION_0_18();
  sub_19755FD88(v0, v1, &protocol conformance descriptor for CoreParameterRecord);
  sub_197616150();
  return sub_1976171F0();
}

uint64_t (*sub_1975C8D6C(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BC4D8;
}

uint64_t sub_1975C8F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[2] = a3;
  v19[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D38, &unk_1976223A0);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v19 - v16;
  swift_getKeyPath();
  sub_197567FA8(&qword_1ED816CD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_197615640();
  v19[6] = a1;
  v19[7] = a2;
  v19[9] = v19[0];
  sub_197615AE0();
  sub_1975C6EF4();
  (*(v8 + 8))(v11, v6);
  return (*(v14 + 8))(v17, v12);
}

uint64_t *sub_1975C9130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v9 = CoreParameterProtocol.valueType.getter(a4, a5);
  v11 = v10;
  type metadata accessor for CoreParameterRecord(0);
  swift_allocObject();
  return CoreParameterRecord.init(id:valueType:)(a1, a2, v9, v11);
}

uint64_t sub_1975C91D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a8;
  v31 = a5;
  v33 = a7;
  v28 = a2;
  v29 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_197615F50();
  v27 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreParameter();
  v32 = a6;
  v17 = *(a6 + 16);
  v18 = *(v17 + 16);
  v34 = a1;
  v37 = a4;
  v26 = v18;
  v18(a4, v17);
  static CoreParameter.modelIdentifiers.getter();
  sub_19756E674();

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_19756E748(v13);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0x6574656D61726150, 0xEE00203A64692872);
    v19 = v26(v37, v17);
    MEMORY[0x19A8E2A50](v19);

    MEMORY[0x19A8E2A50](0xD000000000000024, 0x80000001976246F0);
    v20 = v35;
    v21 = v36;
    sub_19759228C();
    swift_allocError();
    *v22 = v20;
    v22[1] = v21;
    return swift_willThrow();
  }

  else
  {
    v24 = v27;
    (*(v27 + 32))(v16, v13, v14);
    sub_19757D2C8(v16, v34, v28, v29, v37, v31, v32, v33, v30);
    return (*(v24 + 8))(v16, v14);
  }
}

uint64_t CoreRule.id.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t CoreRule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1975C9560@<X0>(uint64_t *a1@<X8>)
{
  result = CoreRule.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CoreRule.Category.description.getter()
{
  result = 0x646E756F706D6F63;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x746E657665;
      break;
    case 3:
      result = 0x6574617473;
      break;
    case 4:
      result = 0x6574656D61726170;
      break;
    case 5:
      result = 0x656369766564;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

unint64_t sub_1975C9658()
{
  result = qword_1EAF34D88;
  if (!qword_1EAF34D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34D88);
  }

  return result;
}

uint64_t sub_1975C96CC@<X0>(uint64_t *a1@<X8>)
{
  result = CoreRule.Category.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s8CategoryOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1975C9874()
{
  result = qword_1EAF34D90;
  if (!qword_1EAF34D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34D90);
  }

  return result;
}

unint64_t sub_1975C98C8()
{
  result = qword_1ED816550;
  if (!qword_1ED816550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816550);
  }

  return result;
}

uint64_t sub_1975C9924(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000197624770 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197616EF0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1975C99C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975C9924(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1975C99F4(uint64_t a1)
{
  v2 = sub_1975C9B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975C9A30(uint64_t a1)
{
  v2 = sub_1975C9B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreRule.Options.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34DA0, &qword_19761D088);
  OUTLINED_FUNCTION_0_21();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975C9B94();
  sub_197617260();
  sub_197616E40();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_1975C9B94()
{
  result = qword_1EAF34DA8;
  if (!qword_1EAF34DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34DA8);
  }

  return result;
}

uint64_t CoreRule.Options.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34DB0, &qword_19761D090);
  OUTLINED_FUNCTION_0_21();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975C9B94();
  sub_197617240();
  if (!v2)
  {
    v11 = sub_197616DA0();
    (*(v7 + 8))(v10, v3);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t _s7OptionsVwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}