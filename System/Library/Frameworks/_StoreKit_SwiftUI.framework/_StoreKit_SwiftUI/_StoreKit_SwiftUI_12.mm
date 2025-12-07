void sub_23BA94984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_40_3();
  type metadata accessor for SubscriptionStoreControlOption(v8);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_15();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v5 + *(a4 + 24)) = (v4 - 1);
  }
}

void sub_23BA94A14(uint64_t a1)
{
  type metadata accessor for SubscriptionStoreControlOption(319);
  if (v1 <= 0x3F)
  {
    sub_23BA55588(319);
    if (v2 <= 0x3F)
    {
      sub_23B975E04();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BA94AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_15_8();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(v6);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_63_0();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    if (v11 >= 2)
    {
      return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23BA94B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_40_3();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(v8);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_15();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }
}

uint64_t sub_23BA94C18(uint64_t a1)
{
  result = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA94CF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionStoreControlPropertiesModifier(255, a1[1], a1[3], a4);
  sub_23BBDA358();
  OUTLINED_FUNCTION_6_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BA94D68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for SubscriptionStoreControlPropertiesModifier(255, a1[1], a1[3], a4);
  OUTLINED_FUNCTION_6_17();
  v8[0] = v4;
  v8[1] = v6;
  v8[2] = v5;
  v8[3] = swift_getWitnessTable();
  type metadata accessor for ModifiedStoreContent(255, v8);
  return swift_getWitnessTable();
}

uint64_t sub_23BA94DE4(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_23BBDD648();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_23BA94E98(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v16 = v14 + (v15 & ~v13);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v12)
      {
LABEL_31:
        if (v7 >= v11)
        {

          return __swift_getEnumTagSinglePayload(a1, v7, v5);
        }

        else
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v15) & ~v13, v10, AssociatedTypeWitness);
          if (EnumTagSinglePayload >= 2)
          {
            return EnumTagSinglePayload - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_23BA950FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v12 + 80);
  v17 = *(v8 + 64) + v16;
  v18 = v17 & ~v16;
  if (v13)
  {
    v19 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v19 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v20 = v18 + v19;
  v21 = 8 * (v18 + v19);
  if (a3 > v15)
  {
    if (v20 <= 3)
    {
      v22 = ((a3 - v15 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v22))
      {
        v11 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v11 = v23;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v15 < a2)
  {
    v24 = ~v15 + a2;
    if (v20 < 4)
    {
      v25 = (v24 >> v21) + 1;
      if (v20)
      {
        v26 = v24 & ~(-1 << v21);
        bzero(a1, v20);
        if (v20 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v20 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v24;
        }
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v24;
      v25 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v20] = v25;
        return;
      case 2:
        *&a1[v20] = v25;
        return;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v20] = v25;
        return;
      default:
        return;
    }
  }

  switch(v11)
  {
    case 1:
      a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_60:
      __break(1u);
      JUMPOUT(0x23BA95454);
    case 4:
      *&a1[v20] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v9 >= v14)
      {
        v31 = a1;
        v32 = a2;
        v13 = v9;
        AssociatedTypeWitness = v7;
      }

      else
      {
        v27 = (&a1[v17] & ~v16);
        if (v14 < a2)
        {
          if (v19 <= 3)
          {
            v28 = ~(-1 << (8 * v19));
          }

          else
          {
            v28 = -1;
          }

          if (v19)
          {
            v29 = v28 & (~v14 + a2);
            if (v19 <= 3)
            {
              v30 = v19;
            }

            else
            {
              v30 = 4;
            }

            bzero(v27, v19);
            switch(v30)
            {
              case 2:
                *v27 = v29;
                break;
              case 3:
                *v27 = v29;
                v27[2] = BYTE2(v29);
                break;
              case 4:
                *v27 = v29;
                break;
              default:
                *v27 = v29;
                break;
            }
          }

          return;
        }

        v32 = (a2 + 1);
        v31 = v27;
      }

      __swift_storeEnumTagSinglePayload(v31, v32, v13, AssociatedTypeWitness);
      return;
  }
}

uint64_t (*sub_23BA95500(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void *, __n128)))(void *)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    v8[5] = v4;
    v8[6] = v5;
    v8[0] = *(a3 + 8 * a2 + 32);

    (a4)(v8);

    return sub_23BA95F34;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23BA95598(uint64_t (**a1)(), unint64_t a2, uint64_t a3, void (*a4)(uint64_t *)))()
{
  result = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    v9 = *(a3 + 8 * a2 + 32);

    a4(&v9);

    return sub_23BA95654;
  }

  __break(1u);
  return result;
}

void sub_23BA95654(void **a1)
{
  v1 = *a1;

  free(v1);
}

uint64_t sub_23BA956BC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v18 - v8;
  if (a2 >= a1)
  {
    if (a1 == a2)
    {
      return 0;
    }

    v18 = a2;
    v19 = 1;
    a2 = a1;
  }

  else
  {
    v18 = a1;
    v19 = -1;
  }

  result = 0;
  v11 = *v2;
  v21 = v2[1];
  v12 = v2[3];
  v13 = v11;
  v14 = *(v11 + 16);
  while (2)
  {
    v15 = __OFADD__(result, v19);
    result += v19;
    if (v15)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (a2 == v14)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    v20 = result;
    while (1)
    {
      v16 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v16 == v14)
      {
        break;
      }

      if (v16 >= v14)
      {
        goto LABEL_19;
      }

      v21(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v7);
      v17 = v12(v9);
      result = sub_23B979910(v9, &qword_27E199760, &unk_23BBE9220);
      ++a2;
      if (v17)
      {
        a2 = v16;
        goto LABEL_16;
      }
    }

    a2 = v14;
LABEL_16:
    result = v20;
    if (a2 != v18)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_23BA95884()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  v2 = *(v1 - 8);
  v3.n128_f64[0] = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v13 - v4;
  v6 = 0;
  v8 = *v0;
  v7 = v0[1];
  v9 = v0[3];
  v10 = *(*v0 + 16);
  while (v10 != v6)
  {
    v7(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v6, v3);
    v11 = v9(v5);
    sub_23B979910(v5, &qword_27E199760, &unk_23BBE9220);
    if (v11)
    {
      return v6;
    }

    ++v6;
  }

  return v10;
}

unint64_t sub_23BA959C0()
{
  result = qword_27E19E3D8;
  if (!qword_27E19E3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E3D0, &qword_23BBF4FF8);
    sub_23B97B518(&qword_27E19E3E0, &qword_27E19E3E8, &unk_23BBF5000, MEMORY[0x277D83988]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E3D8);
  }

  return result;
}

uint64_t sub_23BA95B18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23BA95B58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BA95BB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionStoreControlPropertiesModifier(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_6_17();
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E3B8, &qword_23BBF4FB0);
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E19E3C8, &qword_27E19E3B8, &qword_23BBF4FB0, MEMORY[0x277CE0868]);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI17EnvironmentValuesV010_StoreKit_aB0E012SubscriptionE17ControlPropertiesVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23BA95CB0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BA95D04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23BA95DC8()
{
  if (v0[2])
  {

    if (v0[6] >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 3);
    }
  }

  return swift_deallocObject();
}

unint64_t sub_23BA95E24()
{
  result = qword_27E19E408;
  if (!qword_27E19E408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E3F8, &qword_23BBF51F0);
    sub_23B97B518(qword_27E19E410, &qword_27E19E3F0, &qword_23BBF51E8, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E199998, &qword_27E199960, &qword_23BBE8610, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E408);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_10()
{

  return sub_23BA93D8C();
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t a1)
{
  v6 = v1 + *(a1 + 20);

  return sub_23B9A721C(v6, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_59_1(uint64_t a1)
{
  v6 = v1 + *(a1 + 20);

  return sub_23B9A721C(v6, v2, v3, v4);
}

void OUTLINED_FUNCTION_65_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_23BA8D4D0(v4, a2, v5, a4);
}

void OUTLINED_FUNCTION_74(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(v3 - 112) = a3;
  *(v3 - 104) = a2;
  *(v3 - 120) = a1;
}

uint64_t OUTLINED_FUNCTION_79_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_81(uint64_t a1)
{

  return sub_23BBDCE68();
}

_BYTE *storeEnumTagSinglePayload for DefaultSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23BA964E4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_23BA96528(uint64_t a1)
{
  sub_23BA969B0(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23BA96A60(319);
      if (v3 <= 0x3F)
      {
        sub_23BA96AC4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BA965E8(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 < a2)
  {
    v10 = ((((v9 + ((v7 + 49) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
    v11 = a2 - v8;
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

    switch(v15)
    {
      case 1:
        v16 = *(a1 + v10);
        if (!v16)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v16 = *(a1 + v10);
        if (v16)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA96754);
      case 4:
        v16 = *(a1 + v10);
        if (!v16)
        {
          break;
        }

LABEL_22:
        v18 = v16 - 1;
        if (v12)
        {
          v18 = 0;
          LODWORD(v12) = *a1;
        }

        v19 = v8 + (v12 | v18);
        return (v19 + 1);
      default:
        break;
    }
  }

  v20 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v7 + 49) & ~v7;
  if (v6 >= 0x7FFFFFFE)
  {
    return __swift_getEnumTagSinglePayload(v20, v6, v4);
  }

  v21 = *(((v9 + v20) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v21 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  v19 = v21 - 1;
  if (v19 < 0)
  {
    v19 = -1;
  }

  return (v19 + 1);
}

void sub_23BA96768(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        *(a1 + v12) = v17;
        return;
      case 2:
        *(a1 + v12) = v17;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v12) = v17;
        return;
      default:
        return;
    }
  }

  switch(v16)
  {
    case 1:
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23BA96970);
    case 4:
      *(a1 + v12) = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v10 + 49) & ~v10;
        if (v8 < 0x7FFFFFFE)
        {
          v20 = ((v11 + v19) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            v20[1] = 0;
            v20[2] = 0;
            *v20 = (a2 - 0x7FFFFFFF);
          }

          else
          {
            v20[2] = a2;
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }
      }

      return;
  }
}

void sub_23BA969B0(uint64_t a1)
{
  if (!qword_27E19E498)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19B730, &qword_23BBF4A30);
    v3 = sub_23B97B518(&qword_27E19E230, qword_27E19B730, &qword_23BBF4A30, MEMORY[0x277D83988]);
    v4 = sub_23BA8C250();
    v5 = _s6TaskIDOMa(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27E19E498);
    }
  }
}

void sub_23BA96A60(uint64_t a1)
{
  if (!qword_27E19B718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B720, qword_23BBED2D0);
    v1 = sub_23BBDBF98();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19B718);
    }
  }
}

void sub_23BA96AC4()
{
  if (!qword_27E19E4A0)
  {
    v0 = sub_23BBDBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19E4A0);
    }
  }
}

uint64_t sub_23BA96B58(char *a1, uint64_t a2, char a3)
{
  v182 = a2;
  v5 = sub_23BBDCB58();
  OUTLINED_FUNCTION_7();
  v176 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v196 = v9 - v8;
  OUTLINED_FUNCTION_5_3();
  v202 = sub_23BBDC8A8();
  OUTLINED_FUNCTION_7();
  v174 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_5();
  v204 = v12;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_3();
  v203 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  v16 = OUTLINED_FUNCTION_13_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_5();
  v192 = v17;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_3();
  v186 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v21 = OUTLINED_FUNCTION_13_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_5();
  v195 = v22;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_3();
  v194 = v24;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  v28 = &v172 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  v30 = OUTLINED_FUNCTION_13_0(v29);
  MEMORY[0x28223BE20](v30);
  i = &v172 - v31;
  v32 = OUTLINED_FUNCTION_5_3();
  v201 = type metadata accessor for Subscription(v32);
  OUTLINED_FUNCTION_7();
  v199 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_3();
  v200 = v37;
  OUTLINED_FUNCTION_5_3();
  v38 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18_3();
  v207 = v45;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v46);
  v49 = &v172 - v48;
  v50 = *(a1 + 2);
  v198 = v5;
  v205 = a1;
  v206 = v50;
  v185 = MEMORY[0x277D84F90];
  if (!v50)
  {
    v197 = MEMORY[0x277D84F90];
LABEL_17:
    v87 = v197;
    v51 = v206;
    if (*(v197 + 16) != v206)
    {
      v88 = qword_27E1976D0;

      if (v88 != -1)
      {
        goto LABEL_77;
      }

      goto LABEL_19;
    }

    goto LABEL_52;
  }

  v180 = v47;
  v51 = v40 + 2;
  v52 = v40[2];
  OUTLINED_FUNCTION_23_2();
  v54 = &a1[v53];
  v197 = MEMORY[0x277D84F90];
  v191 = (v40 + 1);
  v190 = v40[9];
  HIDWORD(v177) = a3 & 1;
  v55 = v50;
  v57 = v56;
  v58 = v207;
  v193 = v40 + 2;
  v179 = v28;
  v178 = v49;
  while (1)
  {
    v208 = v55;
    v52(v49, v54, v38);
    v52(v58, v49, v38);
    sub_23BBDC8F8();
    if (__swift_getEnumTagSinglePayload(v28, 1, v57) != 1)
    {
      break;
    }

    v59 = v57;
    v60 = *v191;
    (*v191)(v58, v38);
    v61 = OUTLINED_FUNCTION_70();
    (v60)(v61);
    sub_23B9EA92C(v28, &qword_27E197B90, &qword_23BBE3F90);
    v62 = v201;
    __swift_storeEnumTagSinglePayload(i, 1, 1, v201);
LABEL_7:
    if (__swift_getEnumTagSinglePayload(i, 1, v62) == 1)
    {
      sub_23B9EA92C(i, qword_27E197A68, qword_23BBE3D90);
      v57 = v59;
      v58 = v207;
    }

    else
    {
      sub_23BA1D1B4(i, v200);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v207;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23B9B7FB8();
        v197 = v85;
      }

      v80 = *(v197 + 16);
      if (v80 >= *(v197 + 24) >> 1)
      {
        sub_23B9B7FB8();
        v197 = v86;
      }

      *(v197 + 16) = v80 + 1;
      OUTLINED_FUNCTION_23_2();
      sub_23BA1D1B4(v84, v82 + v81 + *(v83 + 72) * v80);
      v57 = v59;
    }

    v54 += v190;
    v55 = (v208 - 1);
    v51 = v193;
    if (v208 == 1)
    {
      goto LABEL_17;
    }
  }

  v189 = v54;
  sub_23B9EA92C(v28, &qword_27E197B90, &qword_23BBE3F90);
  v63 = v180;
  v52(v180, v58, v38);
  v64 = v183;
  sub_23BBDC8F8();
  v65 = v52;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v57);
  v62 = v201;
  v67 = *(v201 + 6);
  sub_23B9EA92C(v64, &qword_27E197B90, &qword_23BBE3F90);
  if (EnumTagSinglePayload != 1)
  {
    v68 = v181;
    v69 = v181 + v67;
    v65(v181, v63, v38);
    v70 = sub_23BBDCD78();
    sub_23BBA7C04(v70, v71);
    v188 = v72;
    HIDWORD(v187) = v73;
    v74 = *v191;
    (*v191)(v63, v38);
    v75 = OUTLINED_FUNCTION_70();
    (v74)(v75);
    v49 = v178;
    v76 = OUTLINED_FUNCTION_70();
    (v74)(v76);
    v59 = v198;
    v77 = v68 + *(v62 + 20);
    *v77 = v188;
    *(v77 + 8) = BYTE4(v187);
    *v69 = v182;
    *(v69 + 8) = BYTE4(v177);
    v78 = i;
    sub_23BA1D1B4(v68, i);
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v62);
    v28 = v179;
    v52 = v65;
    v54 = v189;
    goto LABEL_7;
  }

LABEL_75:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_77:
    OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
LABEL_19:
    v89 = type metadata accessor for SKLogger(0);
    v190 = __swift_project_value_buffer(v89, qword_27E1BFC88);
    v211 = 0;
    v212 = 0xE000000000000000;
    sub_23BBDD768();
    MEMORY[0x23EEB5890](0xD000000000000076, 0x800000023BBE1250);
    v201 = v40 + 2;
    v200 = (v174 + 8);
    v208 = (v40 + 1);
    v191 = (v40 + 4);

    v90 = 0;
    v91 = 0;
    v193 = (MEMORY[0x277D84F90] + 32);
    v92 = v173;
LABEL_20:
    for (i = v90; ; v90 = i)
    {
      if (v51 == v91)
      {
        v104 = 1;
        v91 = v51;
        v105 = v186;
        goto LABEL_28;
      }

      if (v91 >= v51)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_23_2();
      (v40[2])(v92, &v205[v93 + v40[9] * v91], v38);
      if (__OFADD__(v91, 1))
      {
        goto LABEL_72;
      }

      v207 = v91 + 1;
      v94 = v91;
      v95 = v40;
      v96 = v38;
      v97 = v203;
      sub_23BBDCD28();
      v98 = v204;
      sub_23BBDC878();
      sub_23B99835C(v99);
      v100 = v202;
      v101 = sub_23BBDCF38();
      v102 = v92;
      v103 = *v200;
      (*v200)(v98, v100);
      v103(v97, v100);
      if ((v101 & 1) == 0)
      {
        break;
      }

      v38 = v96;
      (*v208)(v102, v96);
      v91 = v94 + 1;
      v40 = v95;
      v92 = v102;
      v51 = v206;
    }

    v105 = v186;
    v38 = v96;
    (*v191)(v186, v102, v96);
    v104 = 0;
    v40 = v95;
    v92 = v102;
    v51 = v206;
    v91 = v207;
    v90 = i;
LABEL_28:
    __swift_storeEnumTagSinglePayload(v105, v104, 1, v38);
    v106 = v105;
    v107 = v192;
    sub_23BA989AC(v106, v192);
    if (__swift_getEnumTagSinglePayload(v107, 1, v38) != 1)
    {
      v108 = v184;
      (*v191)(v184, v192, v38);
      v109 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v111 = v110;
      (*v208)(v108, v38);
      if (!v90)
      {
        v112 = v185;
        v113 = v185[3];
        if (((v113 >> 1) + 0x4000000000000000) < 0)
        {
          continue;
        }

        i = v111;
        v114 = v113 & 0xFFFFFFFFFFFFFFFELL;
        if (v114 <= 1)
        {
          v115 = 1;
        }

        else
        {
          v115 = v114;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0, &unk_23BBED420);
        v116 = swift_allocObject();
        v117 = (_swift_stdlib_malloc_size_0(v116) - 32) / 16;
        v116[2] = v115;
        v116[3] = 2 * v117;
        v118 = (v116 + 4);
        v119 = *(v112 + 24);
        v120 = v119 >> 1;
        if (*(v112 + 16))
        {
          v121 = (v112 + 32);
          if (v116 != v112 || v118 >= v112 + 32 + 16 * v120)
          {
            v207 = v117;
            v123 = v119;
            memmove(v116 + 4, v121, 16 * v120);
            v119 = v123;
            v117 = v207;
          }

          v185[2] = 0;
        }

        v193 = (v118 + 16 * v120);
        v90 = (v117 & 0x7FFFFFFFFFFFFFFFLL) - (v119 >> 1);

        v185 = v116;
        v111 = i;
      }

      v124 = __OFSUB__(v90--, 1);
      if (!v124)
      {
        v125 = v193;
        *v193 = v109;
        v125[1] = v111;
        v193 = v125 + 2;
        goto LABEL_20;
      }

      goto LABEL_74;
    }

    break;
  }

  v126 = v185;
  v127 = v185[3];
  if (v127 < 2)
  {
LABEL_48:

    v130 = MEMORY[0x23EEB5A30](v126, MEMORY[0x277D837D0]);
    v132 = v131;

    MEMORY[0x23EEB5890](v130, v132);

    v134 = v211;
    v133 = v212;
    v135 = sub_23BBDD598();

    v136 = sub_23BBD9988();

    if (os_log_type_enabled(v136, v135))
    {
      v137 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      *v137 = 136446466;
      *(v137 + 4) = OUTLINED_FUNCTION_12_17();
      *(v137 + 12) = 2082;
      v138 = sub_23BA5AB90(v134, v133, &v211);

      *(v137 + 14) = v138;
      _os_log_impl(&dword_23B970000, v136, v135, "%{public}s%{public}s", v137, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    else
    {
    }

    v87 = v197;
LABEL_52:
    v38 = 0;
    v210 = MEMORY[0x277D84FA0];
    v40 = *(v87 + 16);
    v139 = (v176 + 32);
    v51 = (v176 + 8);
    v140 = v175;
    while (v40 != v38)
    {
      if (v38 >= *(v87 + 16))
      {
        goto LABEL_73;
      }

      OUTLINED_FUNCTION_23_2();
      v141 = v87;
      sub_23BA54F2C(v87 + v142 + *(v143 + 72) * v38, v140);
      v144 = v194;
      sub_23BBDC8F8();
      v90 = v195;
      sub_23BA98A1C(v144, v195);
      v145 = v198;
      if (__swift_getEnumTagSinglePayload(v90, 1, v198) == 1)
      {
        goto LABEL_79;
      }

      ++v38;
      sub_23B9EA92C(v144, &qword_27E197B90, &qword_23BBE3F90);
      v146 = v196;
      (*v139)(v196, v90, v145);
      v147 = sub_23BBDCAA8();
      v149 = v148;
      (*v51)(v146, v145);
      sub_23B9B9680(&v211, v147, v149, v150, v151, v152, v153, v154, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);

      sub_23BA1D2DC(v140);
      v87 = v141;
    }

    v155 = v210;
    v156 = *(v210 + 16);
    if (v156 > 1)
    {
      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
      }

      v157 = type metadata accessor for SKLogger(0);
      __swift_project_value_buffer(v157, qword_27E1BFC88);
      v211 = 0;
      v212 = 0xE000000000000000;
      sub_23BBDD768();
      MEMORY[0x23EEB5890](0xD000000000000083, 0x800000023BBE1320);
      sub_23BA98AE4(v155, sub_23B9B865C, sub_23BA98C90);
      v158 = MEMORY[0x23EEB5A30]();
      v160 = v159;

      MEMORY[0x23EEB5890](v158, v160);

      v162 = v211;
      v161 = v212;
      v163 = sub_23BBDD598();

      v164 = sub_23BBD9988();

      if (os_log_type_enabled(v164, v163))
      {
        v165 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        *v165 = 136446466;
        *(v165 + 4) = OUTLINED_FUNCTION_12_17();
        *(v165 + 12) = 2082;
        v166 = sub_23BA5AB90(v162, v161, &v211);

        *(v165 + 14) = v166;
        _os_log_impl(&dword_23B970000, v164, v163, "%{public}s%{public}s", v165, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }

      else
      {
      }

      v156 = *(v155 + 16);
    }

    if (!v156)
    {
      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
      }

      v167 = type metadata accessor for SKLogger(0);
      __swift_project_value_buffer(v167, qword_27E1BFC88);
      v168 = sub_23BBDD598();
      v169 = sub_23BBD9988();
      if (os_log_type_enabled(v169, v168))
      {
        v170 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        *v170 = 136446466;
        *(v170 + 4) = OUTLINED_FUNCTION_12_17();
        *(v170 + 12) = 2082;
        *(v170 + 14) = sub_23BA5AB90(0xD00000000000004BLL, 0x800000023BBE12D0, &v211);
        _os_log_impl(&dword_23B970000, v169, v168, "%{public}s%{public}s", v170, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }
    }

    return v87;
  }

  v128 = v127 >> 1;
  v124 = __OFSUB__(v128, v90);
  v129 = v128 - v90;
  if (!v124)
  {
    v185[2] = v129;
    goto LABEL_48;
  }

  __break(1u);
LABEL_79:
  result = sub_23B9EA92C(v90, &qword_27E197B90, &qword_23BBE3F90);
  __break(1u);
  return result;
}

uint64_t sub_23BA97CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a4;
  v12 = *(a4 + 8);
  v13 = a4[2];
  v14 = *(a4 + 24);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  *(a8 + 24) = v11;
  *(a8 + 32) = v12;
  *(a8 + 40) = v13;
  *(a8 + 48) = v14;
  v15 = type metadata accessor for SubscriptionStoreDynamicView(0, a6, a7, a4);
  (*(*(a6 - 8) + 32))(a8 + v15[10], a5, a6);
  v16 = a8 + v15[11];
  v22 = 0;
  v23 = 2;
  sub_23BA97DC0(&v22);
  v17 = v25;
  v18 = v26;
  *v16 = v24;
  *(v16 + 8) = v17;
  *(v16 + 16) = v18;
  v19 = (a8 + v15[12]);
  result = sub_23BA97E1C(0);
  *v19 = result;
  v19[1] = v21;
  return result;
}

uint64_t sub_23BA97E54()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t sub_23BA97E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v87 = a2;
  sub_23BBDD368();
  OUTLINED_FUNCTION_7();
  v85 = v6;
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v84 = v8 - v7;
  OUTLINED_FUNCTION_3_2();
  v79 = v9;
  v81 = *(v10 + 64);
  MEMORY[0x28223BE20](v11);
  v75 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_3();
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_7();
  v77 = v14;
  v78 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v74 = v16 - v15;
  v17 = *(a1 + 16);
  OUTLINED_FUNCTION_3_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v23 = v22 - v21;
  v24 = *(a1 + 24);
  v73 = type metadata accessor for SubscriptionStoreEntitlementLoadingView(0, v17, v24, v25);
  OUTLINED_FUNCTION_3_2();
  v82 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v67 - v28;
  v71 = &v67 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BE70, &qword_23BBF4A00);
  v76 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v83 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_3();
  v80 = v33;
  v34 = v2 + *(a1 + 44);
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = *(v34 + 16);
  v90 = v35;
  v91 = v36;
  v92 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C0, &qword_23BBED3E8);
  sub_23BBDBF68();
  v94 = v96;
  v95 = v97;
  v38 = sub_23BA97E54();
  v40 = v39;
  v41 = *(v3 + 32);
  v42 = *(v3 + 40);
  v43 = *(v3 + 48);
  v90 = *(v3 + 24);
  v91 = v41;
  v92 = v42;
  v93 = v43;
  (*(v19 + 16))(v23, v3 + *(a1 + 40), v17);
  sub_23B9CA59C(&v94, v38, v40, &v90, v23, v17, v24, v29);
  v44 = *(v3 + 8);
  v70 = *v3;
  v69 = v44;
  HIDWORD(v68) = *(v3 + 16);
  v46 = v77;
  v45 = v78;
  v47 = v74;
  (*(v77 + 104))(v74, *MEMORY[0x277CDD088], v78);
  v48 = v79;
  v49 = v75;
  (*(v79 + 16))(v75, v3, a1);
  v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v17;
  *(v51 + 24) = v24;
  (*(v48 + 32))(v51 + v50, v49, a1);
  OUTLINED_FUNCTION_6_18();
  v52 = v73;
  WitnessTable = swift_getWitnessTable();
  v54 = v84;
  sub_23BBDD348();
  v55 = v72;
  v56 = v47;
  v57 = v47;
  v58 = v71;
  sub_23BA275D8(v70, v69, HIDWORD(v68), v57, v54, &unk_23BBF5318, v51, v52, WitnessTable, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);

  (*(v85 + 8))(v54, v86);
  (*(v46 + 8))(v56, v45);
  (*(v82 + 8))(v58, v52);
  OUTLINED_FUNCTION_3_22();
  v61 = sub_23B97B518(v59, &qword_27E19BE70, &qword_23BBF4A00, v60);
  v88 = WitnessTable;
  v89 = v61;
  OUTLINED_FUNCTION_0();
  v62 = v76;
  swift_getWitnessTable();
  v63 = v80;
  sub_23B9D2D88();
  v64 = *(v83 + 8);
  v64(v55, v62);
  sub_23B9D2D88();
  return (v64)(v63, v62);
}

uint64_t sub_23BA984B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = a4;
  *(v4 + 72) = a2;
  *(v4 + 96) = *a1;
  *(v4 + 120) = *(a1 + 16);
  sub_23BBDD308();
  *(v4 + 112) = sub_23BBDD2F8();
  v6 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BA98560, v6, v5);
}

void *sub_23BA98560()
{
  v1 = *(v0 + 120);

  if (v1)
  {
    if (v1 == 1)
    {
      v6 = *(v0 + 96);
      v7 = *(v0 + 72);
      v8 = type metadata accessor for SubscriptionStoreDynamicView(0, *(v0 + 80), *(v0 + 88), v5);
      *(v0 + 16) = *(v7 + *(v8 + 48));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D960, &qword_23BBF30A0);
      sub_23BBDBF68();
      v9 = sub_23BA96B58(v6, *(v0 + 40), 0);
      v10 = v7 + *(v8 + 44);
      v11 = *v10;
      v12 = *(v10 + 16);
      v13 = *(v10 + 8);
      *(v0 + 16) = *v10;
      *(v0 + 24) = v13;
      *(v0 + 32) = v12;
      *(v0 + 40) = v9;
      *(v0 + 48) = 1;
      v14 = v11;
    }

    else
    {
      v21 = v1 + *(OUTLINED_FUNCTION_11_16(v2, v3, v4, v5) + 44);
      v14 = *v21;
      v22 = *(v21 + 16);
      v13 = *(v21 + 8);
      *(v0 + 16) = *v21;
      *(v0 + 24) = v13;
      *(v0 + 32) = v22;
      *(v0 + 40) = 0;
      *(v0 + 48) = 2;
    }
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = v1 + *(OUTLINED_FUNCTION_11_16(v2, v3, v4, v5) + 44);
    v18 = *v17;
    v19 = *(v17 + 16);
    v20 = *(v17 + 8);
    *(v0 + 16) = *v17;
    *(v0 + 24) = v20;
    *(v0 + 32) = v19;
    *(v0 + 40) = v16;
    *(v0 + 48) = 0;
    sub_23BA1D218(v16, v15, 0);
    v14 = v18;
    v13 = v20;
  }

  sub_23B9CEC34(v14, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C0, &qword_23BBED3E8);
  sub_23BBDBF78();
  v23 = *(v0 + 32);
  sub_23B9CEC50(*(v0 + 16), *(v0 + 24));

  v28 = (v23 + *(OUTLINED_FUNCTION_11_16(v24, v25, v26, v27) + 48));
  v30 = *v28;
  v29 = v28[1];
  *(v0 + 16) = *v28;
  *(v0 + 24) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D960, &qword_23BBF30A0);
  result = sub_23BBDBF68();
  v32 = *(v0 + 56);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 40) = v30;
    *(v0 + 48) = v29;
    *(v0 + 64) = v34;
    sub_23BBDBF78();

    v35 = *(v0 + 8);

    return v35();
  }

  return result;
}

uint64_t sub_23BA98790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for SubscriptionStoreDynamicView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  sub_23BA988B0(*v7, *(v7 + 8), *(v7 + 16));
  (*(*(v5 - 8) + 8))(v7 + v6[12], v5);
  sub_23B9CEC50(*(v7 + v6[13]), *(v7 + v6[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_23BA988BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = type metadata accessor for SubscriptionStoreDynamicView(0, v7, v8, a4);
  OUTLINED_FUNCTION_13_0(v9);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23B9897C0;

  return sub_23BA984B4(a1, v4 + v11, v7, v8);
}

uint64_t sub_23BA989AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA98A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA98AE4(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v3, a1);

  OUTLINED_FUNCTION_70();
  sub_23BA98DEC();
  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

void *sub_23BA98BAC(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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
    v9 = 0;
    a3 = 0;
LABEL_18:
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
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23BA98C90(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
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
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23BA98DF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionStoreEntitlementLoadingView(255, *a1, a1[1], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BE70, &qword_23BBF4A00);
  sub_23BBDA358();
  OUTLINED_FUNCTION_6_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_22();
  sub_23B97B518(v4, &qword_27E19BE70, &qword_23BBF4A00, v5);
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);

  return type metadata accessor for SubscriptionStoreDynamicView(0, v6, v7, a4);
}

unint64_t OUTLINED_FUNCTION_12_17()
{

  return sub_23BA5AB90(0, 0xE000000000000000, (v0 - 104));
}

uint64_t sub_23BA98F14()
{
  v0 = type metadata accessor for SKLogger(0);
  __swift_allocate_value_buffer(v0, qword_27E1BFD50);
  __swift_project_value_buffer(v0, qword_27E1BFD50);
  return sub_23BBD9998();
}

uint64_t sub_23BA98F9C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StorefrontLocaleViewModifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = a1;
  if (qword_27E1977A0 != -1)
  {
    swift_once();
  }

  type metadata accessor for StorefrontObserver(0);
  sub_23BA9B590(&qword_27E19C0D0, type metadata accessor for StorefrontObserver, &unk_23BBF5420);

  *(v8 + 1) = sub_23BBDA0E8();
  *(v8 + 2) = v9;
  v10 = *(v6 + 24);
  *&v8[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8, &unk_23BBE8170);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x23EEB43C0](v8, a2, v6, a3);
  return sub_23BA9B13C(v8);
}

uint64_t sub_23BA99128@<X0>(void *a1@<X8>)
{
  v3 = sub_23BBDA928();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8, &unk_23BBE8170);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F0, &qword_23BBF5388);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_23BBD9848();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 == 1)
  {
    v20 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23BBD9A58();

    v15 = sub_23BBDC678();
    if (__swift_getEnumTagSinglePayload(v10, 1, v15) != 1)
    {
      MEMORY[0x23EEB4E20]();
      (*(*(v15 - 8) + 8))(v10, v15);
      return (*(v12 + 32))(v20, v14, v11);
    }

    sub_23BA9B06C(v10);
    a1 = v20;
  }

  v16 = type metadata accessor for StorefrontLocaleViewModifier(0);
  sub_23BA9B0D4(&v1[*(v16 + 24)], v7, &qword_27E1996A8, &unk_23BBE8170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v12 + 32))(a1, v7, v11);
  }

  sub_23BBDD5A8();
  v18 = sub_23BBDB338();
  sub_23BBD9978();

  v19 = v21;
  sub_23BBDA918();
  swift_getAtKeyPath();

  return (*(v22 + 8))(v19, v23);
}

double sub_23BA994B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BBD9A58();

  return result;
}

uint64_t sub_23BA99528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E518, &unk_23BBF5488) + 36));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CE8, &unk_23BBE8F40);
  sub_23BA99128((v5 + *(v6 + 28)));
  *v5 = KeyPath;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E520, &unk_23BBF5498);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1, v7);
}

uint64_t sub_23BA99604(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F0, &qword_23BBF5388);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_23BA9B0D4(a1, &v6 - v3, &qword_27E19E4F0, &qword_23BBF5388);
  return sub_23BA996B0(v4);
}

uint64_t sub_23BA996B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F0, &qword_23BBF5388);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BA9B0D4(a1, v4, &qword_27E19E4F0, &qword_23BBF5388);

  sub_23BBD9A68();
  return sub_23BA9B06C(a1);
}

uint64_t sub_23BA99798()
{
  type metadata accessor for StorefrontObserver(0);
  swift_allocObject();
  result = sub_23BA99854();
  qword_27E19E4A8 = result;
  return result;
}

uint64_t sub_23BA997D8()
{
  v0 = type metadata accessor for SKLogger(0);
  __swift_allocate_value_buffer(v0, qword_27E19E4B0);
  __swift_project_value_buffer(v0, qword_27E19E4B0);
  return sub_23BBD9998();
}

uint64_t sub_23BA99854()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E528, &unk_23BBF54F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F0, &qword_23BBF5388);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_1BFA2179251C0AFA10AFA4B4C120CBE318StorefrontObserver__currentStorefront;
  v15 = sub_23BBDC678();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);
  sub_23BA9B0D4(v13, v10, &qword_27E19E4F0, &qword_23BBF5388);
  sub_23BBD9A48();
  sub_23BA9B06C(v13);
  (*(v5 + 32))(v1 + v14, v7, v4);
  v16 = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_1BFA2179251C0AFA10AFA4B4C120CBE318StorefrontObserver_observerTask;
  *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_1BFA2179251C0AFA10AFA4B4C120CBE318StorefrontObserver_observerTask) = 0;
  v17 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v17);
  sub_23BBDD308();

  v18 = sub_23BBDD2F8();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = &unk_23BBF5508;
  v19[5] = v1;
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  v21[4] = &unk_23BBF5510;
  v21[5] = v19;
  swift_unknownObjectRetain();
  sub_23BB5D2B8();

  sub_23BA9A0E0();
  *(v1 + v16) = v22;

  return v1;
}

uint64_t sub_23BA99B58()
{
  v0[2] = sub_23BBDD308();
  v0[3] = sub_23BBDD2F8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23BA99C04;

  return sub_23BA99D34();
}

uint64_t sub_23BA99C04()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v4 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23B9E8CAC, v4, v3);
}

uint64_t sub_23BA99D34()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F0, &qword_23BBF5388);
  v1[3] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[4] = v2;
  v3 = sub_23BBDC678();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = sub_23BBDD308();
  v1[9] = sub_23BBDD2F8();
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v4[1] = sub_23BA99E8C;

  return MEMORY[0x28212C4B8](v2);
}

uint64_t sub_23BA99E8C()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v4 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BA99FBC, v4, v3);
}

uint64_t sub_23BA99FBC()
{
  OUTLINED_FUNCTION_41_0();
  v1 = v0[4];
  v2 = v0[5];

  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_23BA9B06C(v0[4]);
  }

  else
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[5];
    v6 = v0[3];
    (*(v4 + 32))(v3, v0[4], v5);
    (*(v4 + 16))(v6, v3, v5);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v5);
    sub_23BA996B0(v6);
    v7 = OUTLINED_FUNCTION_35_0();
    v8(v7);
  }

  OUTLINED_FUNCTION_1_16();

  return v9();
}

void sub_23BA9A0E0()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_23BBDD308();

  v7 = sub_23BBDD2F8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  v8[5] = v1;

  sub_23BB5D2B8();
}

uint64_t sub_23BA9A238()
{
  if (*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_1BFA2179251C0AFA10AFA4B4C120CBE318StorefrontObserver_observerTask))
  {

    sub_23BBDD378();
  }

  v1 = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_1BFA2179251C0AFA10AFA4B4C120CBE318StorefrontObserver__currentStorefront;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E528, &unk_23BBF54F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_23BA9A2F4()
{
  v0 = sub_23BA9A238();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_23BA9A370(uint64_t a1)
{
  sub_23BA9A408(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23BA9A408(uint64_t a1)
{
  if (!qword_27E19E4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E4F0, &qword_23BBF5388);
    v1 = sub_23BBD9A78();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19E4E8);
    }
  }
}

uint64_t sub_23BA9A480(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F8, qword_23BBFC140);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23BA9A528(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F8, qword_23BBFC140);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23BA9A5D4(uint64_t a1)
{
  sub_23BA9A668(319);
  if (v1 <= 0x3F)
  {
    sub_23B9CE15C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BA9A668(uint64_t a1)
{
  if (!qword_27E19E510)
  {
    type metadata accessor for StorefrontObserver(255);
    sub_23BA9B590(&qword_27E19C0D0, type metadata accessor for StorefrontObserver, &unk_23BBF5420);
    v1 = sub_23BBDA0F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19E510);
    }
  }
}

uint64_t sub_23BA9A718(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v6 = sub_23BBDC678();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F0, &qword_23BBF5388);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = sub_23BBDC638();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = sub_23BBDC618();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = sub_23BBDD308();
  v5[19] = sub_23BBDD2F8();
  v10 = sub_23BBDD2D8();
  v5[20] = v10;
  v5[21] = v9;

  return MEMORY[0x2822009F8](sub_23BA9A90C, v10, v9);
}

uint64_t sub_23BA9A90C()
{
  OUTLINED_FUNCTION_41_0();
  v1 = sub_23BBDC668();
  MEMORY[0x23EEB4E00](v1);
  v2 = OUTLINED_FUNCTION_35_0();
  v3(v2);
  swift_beginAccess();
  *(v0 + 176) = sub_23BBDD2F8();
  OUTLINED_FUNCTION_1_34();
  sub_23BA9B590(v4, v5, MEMORY[0x277CDD0E8]);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 184) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_33(v6);

  return MEMORY[0x282200308](v8);
}

uint64_t sub_23BA9AA0C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_23BBDD2D8();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v8 = sub_23BA9AFB4;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_23BBDD2D8();
      v6 = v7;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v8 = sub_23BA9AB98;
  }

  return MEMORY[0x2822009F8](v8, v4, v6);
}

uint64_t sub_23BA9AB98()
{
  OUTLINED_FUNCTION_3_13();

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return MEMORY[0x2822009F8](sub_23BA9ABF8, v1, v2);
}

uint64_t sub_23BA9ABF8()
{
  v31 = v0;
  v1 = v0[11];
  v2 = v0[7];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

LABEL_12:

    OUTLINED_FUNCTION_1_16();

    return v26();
  }

  (*(v0[8] + 32))(v0[9], v1, v2);
  if (!swift_weakLoadStrong())
  {

    if (qword_27E1977A8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v14, qword_27E19E4B0);
    v15 = sub_23BBDD598();
    v16 = sub_23BBD9988();
    v17 = os_log_type_enabled(v16, v15);
    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[15];
    v21 = v0[8];
    v22 = v0[9];
    v23 = v0[7];
    if (v17)
    {
      v29 = v0[17];
      v28 = v0[15];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136446466;
      *(v24 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v30);
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_23BA5AB90(0xD000000000000049, 0x800000023BBE17E0, &v30);
      _os_log_impl(&dword_23B970000, v16, v15, "%{public}s%{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v25, -1, -1);
      MEMORY[0x23EEB6DC0](v24, -1, -1);

      (*(v21 + 8))(v22, v23);
      (*(v19 + 8))(v29, v28);
    }

    else
    {

      (*(v21 + 8))(v22, v23);
      (*(v19 + 8))(v18, v20);
    }

    goto LABEL_12;
  }

  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = OUTLINED_FUNCTION_35_0();
  v8(v7);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
  sub_23BA996B0(v3);

  (*(v6 + 8))(v4, v5);
  v0[22] = sub_23BBDD2F8();
  OUTLINED_FUNCTION_1_34();
  sub_23BA9B590(v9, v10, MEMORY[0x277CDD0E8]);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  v0[23] = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_0_33(v11);

  return MEMORY[0x282200308](v13);
}

uint64_t sub_23BA9AFB4()
{
  OUTLINED_FUNCTION_3_13();
  *(v0 + 40) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A450, &unk_23BBEA450);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_23BA9B06C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F0, &qword_23BBF5388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA9B0D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23BA9B13C(uint64_t a1)
{
  v2 = type metadata accessor for StorefrontLocaleViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA9B198()
{
  OUTLINED_FUNCTION_3_13();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23BA9B6C4;

  return sub_23BA99B58();
}

uint64_t sub_23BA9B228()
{
  OUTLINED_FUNCTION_41_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23BA9B6C4;
  v2 = OUTLINED_FUNCTION_35_0();

  return v3(v2);
}

uint64_t sub_23BA9B2E0()
{
  OUTLINED_FUNCTION_41_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_23BA9B6C4;
  v3 = OUTLINED_FUNCTION_3_24();

  return v4(v3);
}

uint64_t sub_23BA9B390()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_23BA9B3C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23BA9B408()
{
  OUTLINED_FUNCTION_41_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_23BA9B4AC;
  v3 = OUTLINED_FUNCTION_3_24();

  return sub_23BA9A718(v7, v3, v4, v5, v6);
}

uint64_t sub_23BA9B4AC()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  OUTLINED_FUNCTION_1_16();

  return v3();
}

uint64_t sub_23BA9B590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23BA9B5DC()
{
  result = qword_27E19E538;
  if (!qword_27E19E538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E518, &unk_23BBF5488);
    sub_23B97B518(&qword_27E19E540, &qword_27E19E520, &unk_23BBF5498, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E199D00, &qword_27E199CE8, &unk_23BBE8F40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E538);
  }

  return result;
}

uint64_t sub_23BA9B744(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23BA9B7E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SubscriptionStaticViewConfiguration(uint64_t a1)
{
  result = qword_27E19E560;
  if (!qword_27E19E560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BA9B8AC(uint64_t a1)
{
  sub_23BA9B938(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BA9B938(uint64_t a1)
{
  if (!qword_27E19B388)
  {
    type metadata accessor for Subscription(255);
    v1 = sub_23BBDD2A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19B388);
    }
  }
}

uint64_t sub_23BA9B990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50, &qword_23BBF3DF8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  swift_getKeyPath();
  sub_23BA9BDB8(a1, v6);
  v7 = type metadata accessor for SubscriptionStaticViewConfiguration(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_23BBDB748();

  return sub_23BA9BD38(v6);
}

uint64_t sub_23BA9BA84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50, &qword_23BBF3DF8);
  __swift_allocate_value_buffer(v0, qword_27E19E548);
  v1 = __swift_project_value_buffer(v0, qword_27E19E548);
  v2 = type metadata accessor for SubscriptionStaticViewConfiguration(0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_23BA9BB00@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1977B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50, &qword_23BBF3DF8);
  v3 = __swift_project_value_buffer(v2, qword_27E19E548);

  return sub_23BA9BC74(v3, a1);
}

void *sub_23BA9BB84()
{
  sub_23BA9BCE4();

  return sub_23BBDA958();
}

uint64_t sub_23BA9BBCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50, &qword_23BBF3DF8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23BA9BC74(a1, &v5 - v3);
  sub_23BA9BCE4();
  sub_23BBDA968();
  return sub_23BA9BD38(a1);
}

uint64_t sub_23BA9BC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50, &qword_23BBF3DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BA9BCE4()
{
  result = qword_27E19E570;
  if (!qword_27E19E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E570);
  }

  return result;
}

uint64_t sub_23BA9BD38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50, &qword_23BBF3DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA9BDB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStaticViewConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA9BE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v8 = *(v4 + 112);
  if (*(v8 + 16) && (v9 = sub_23BB03A88(a1, a2), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0, &qword_23BBEA5A0);
    sub_23BA9C1A0(v12 + *(*(v13 - 8) + 72) * v11, a3);
    v14 = a3;
    v15 = 0;
    v16 = v13;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0, &qword_23BBEA5A0);
    v14 = a3;
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
  return swift_endAccess();
}

uint64_t sub_23BA9BF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6B0, &unk_23BBF56B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_23BA9C1A0(a3, &v11 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0, &qword_23BBEA5A0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  swift_beginAccess();

  sub_23BBC8CE0(v8, a1, a2);
  return swift_endAccess();
}

void *sub_23BA9C004()
{
  type metadata accessor for EntitlementCache();
  swift_allocObject();
  result = sub_23BA9C040();
  qword_27E1BFD68 = result;
  return result;
}

void *sub_23BA9C040()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0, &qword_23BBEA5A0);
  v0[14] = sub_23BBDCE38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E578, &unk_23BBF56C0);
  v0[15] = sub_23BBDCE38();
  v0[16] = sub_23BBDCE38();
  return v0;
}

void *sub_23BA9C0FC()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23BA9C134()
{
  sub_23BA9C0FC();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23BA9C1A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0, &qword_23BBEA5A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 AutomaticSubscriptionStoreControlPlacement.init(rawValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

unint64_t static AutomaticSubscriptionStoreControlPlacement.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for AutomaticSubscriptionStoreControlPlacement.ContextualPlacementKey;
  result = sub_23BA9C264();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_23BA9C264()
{
  result = qword_27E19E580;
  if (!qword_27E19E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E580);
  }

  return result;
}

double static AutomaticSubscriptionStoreControlPlacement.scrollView.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void static AutomaticSubscriptionStoreControlPlacement.bottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE4070);
}

void static AutomaticSubscriptionStoreControlPlacement.buttonsInBottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE7BC0);
}

void static AutomaticSubscriptionStoreControlPlacement.leading.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBEDA30);
}

void static AutomaticSubscriptionStoreControlPlacement.trailing.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBF4740);
}

void static AutomaticSubscriptionStoreControlPlacement.bottom.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBF4750);
}

uint64_t sub_23BA9C32C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = result & 1;
  a2[4] = 0;
  return result;
}

unint64_t sub_23BA9C348(uint64_t a1)
{
  result = sub_23BA9C370();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BA9C370()
{
  result = qword_27E19E588;
  if (!qword_27E19E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E588);
  }

  return result;
}

unint64_t sub_23BA9C404()
{
  result = qword_27E19E590;
  if (!qword_27E19E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E590);
  }

  return result;
}

unint64_t sub_23BA9C458(uint64_t a1)
{
  result = sub_23BA9C480();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BA9C480()
{
  result = qword_27E19E598;
  if (!qword_27E19E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E598);
  }

  return result;
}

void sub_23BA9C4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23BBDD768();
  sub_23BBDD798();

  MEMORY[0x23EEB5890](0xD000000000000019, 0x800000023BBE18F0);
  v4 = sub_23BBDDC38();
  MEMORY[0x23EEB5890](v4);

  sub_23BBDD908();
  __break(1u);
}

uint64_t sub_23BA9C5B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v32[2] = v5;
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5F8, &qword_23BBF59F8);
  v8 = OUTLINED_FUNCTION_13_0(v7);
  MEMORY[0x28223BE20](v8);
  v10 = (v32 - v9);
  v33 = v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E600, &qword_23BBF5A00);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v32 - v13;
  sub_23BA9C904(v2, v10);
  v15 = v2[4];
  v16 = v2[5];
  if (!v16)
  {
    v15 = 0;
  }

  v32[0] = v15;
  v32[3] = type metadata accessor for SubscriptionOfferViewNoCodeSheet;
  sub_23BAA271C(v2, v6);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v32[1] = type metadata accessor for SubscriptionOfferViewNoCodeSheet;
  sub_23BAA2A60(v6, v18 + v17);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_23BAA22B4;
  *(v19 + 24) = v18;
  v20 = &v14[*(v12 + 44)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E608, &qword_23BC007A0);

  sub_23BBDD328();
  v22 = &v20[*(v21 + 40)];
  *v22 = v32[0];
  *(v22 + 1) = v16;
  *v20 = &unk_23BBF5A10;
  *(v20 + 1) = v19;
  sub_23B9A71D0(v33, v14, &qword_27E19E5F8, &qword_23BBF59F8);
  v24 = *v2;
  v23 = v2[1];
  sub_23BAA271C(v2, v6);
  v25 = swift_allocObject();
  sub_23BAA2A60(v6, v25 + v17);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E610, &unk_23BBF5A30);
  v27 = v34;
  v28 = (v34 + *(v26 + 36));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A690, &qword_23BBEA6A8);

  sub_23BBDD328();
  v30 = (v28 + *(v29 + 40));
  *v30 = v24;
  v30[1] = v23;
  *v28 = &unk_23BBF5A28;
  v28[1] = v25;
  return sub_23B9A71D0(v14, v27, &qword_27E19E600, &qword_23BBF5A00);
}

uint64_t sub_23BA9C904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v107 = a2;
  v97 = type metadata accessor for NoCodeOfferView(0);
  MEMORY[0x28223BE20](v97);
  v88 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v89 = &v80 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v6 - 8);
  v90 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  MEMORY[0x28223BE20](v10 - 8);
  v92 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v80 - v13;
  v15 = sub_23BBDCDB8();
  v99 = *(v15 - 8);
  v100 = v15;
  MEMORY[0x28223BE20](v15);
  v91 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v98 = &v80 - v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E630, &qword_23BBF5A58);
  MEMORY[0x28223BE20](v94);
  v95 = &v80 - v19;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E638, &qword_23BBF5A60);
  MEMORY[0x28223BE20](v102);
  v96 = &v80 - v20;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E640, &qword_23BBF5A68);
  MEMORY[0x28223BE20](v105);
  v104 = &v80 - v21;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E648, &qword_23BBF5A70);
  MEMORY[0x28223BE20](v101);
  v23 = &v80 - v22;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E650, &qword_23BBF5A78);
  MEMORY[0x28223BE20](v106);
  v103 = &v80 - v24;
  v25 = type metadata accessor for Product.TaskState(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = (&v80 - v29);
  MEMORY[0x28223BE20](v31);
  v33 = &v80 - v32;
  v34 = type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
  v35 = a1;
  sub_23BBDBF68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23BAA271C(v33, v27);
      v46 = v98;
      v47 = v99;
      v48 = *(v99 + 32);
      v49 = v27;
      v50 = v100;
      v48(v98, v49, v100);
      sub_23BBDC8F8();
      v87 = sub_23BBDCB58();
      if (__swift_getEnumTagSinglePayload(v14, 1, v87) == 1)
      {
        (*(v47 + 8))(v46, v50);
        v51 = &qword_27E197B90;
        v52 = &qword_23BBE3F90;
        v53 = v14;
      }

      else
      {
        v86 = v48;
        sub_23B9846E8(v14, &qword_27E197B90, &qword_23BBE3F90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5C0, qword_23BBF58A0);
        v54 = v93;
        sub_23BBDBF68();
        v55 = sub_23BBDCC88();
        if (__swift_getEnumTagSinglePayload(v54, 1, v55) != 1)
        {
          sub_23B9846E8(v54, &unk_27E19FEF0, &unk_23BBE3E40);
          (*(v99 + 16))(v91, v98, v100);
          v56 = v92;
          sub_23BBDC8F8();
          if (__swift_getEnumTagSinglePayload(v56, 1, v87) == 1)
          {
            __break(1u);
          }

          else
          {
            v57 = v90;
            sub_23BBDBF68();
            if (__swift_getEnumTagSinglePayload(v57, 1, v55) != 1)
            {
              v58 = v55;
              v59 = *(v35 + 72);
              v93 = *(v35 + 64);
              v85 = v59;
              v84 = *(v35 + 80);
              v60 = v35 + v34[11];
              v61 = *v60;
              v62 = *(v60 + 16);
              v110 = v61;
              v111 = v62;
              v63 = *(v35 + 32);
              v83 = *(v35 + 48);
              v82 = v63;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E628, &qword_23BBF5A50);
              sub_23BBDBF68();
              v81 = v108;
              v80 = v109;
              v64 = v34[7];
              v65 = (v35 + v34[8]);
              v67 = *v65;
              v66 = v65[1];
              v68 = v97;
              v69 = v88;
              sub_23B9A721C(v35 + v64, &v88[*(v97 + 40)], &qword_27E19E5B8, &unk_23BBF5890);
              v86(v69, v91, v100);
              (*(*(v87 - 8) + 32))(v69 + v68[5], v92);
              (*(*(v58 - 8) + 32))(v69 + v68[6], v57, v58);
              v70 = v69 + v68[7];
              v71 = v83;
              *v70 = v82;
              *(v70 + 16) = v71;
              v72 = v85;
              *(v70 + 32) = v93;
              *(v70 + 40) = v72;
              *(v70 + 48) = v84;
              v73 = (v69 + v68[8]);
              v74 = v80;
              *v73 = v81;
              v73[1] = v74;
              v75 = (v69 + v68[9]);
              *v75 = v67;
              v75[1] = v66;
              v76 = v68[11];
              *(v69 + v76) = swift_getKeyPath();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199750, &unk_23BBF5AC0);
              swift_storeEnumTagMultiPayload();
              v77 = v89;
              sub_23BAA2A60(v69, v89);
              sub_23BAA271C(v77, v95);
              swift_storeEnumTagMultiPayload();
              sub_23BAA2A08();
              sub_23BAA416C(&qword_27E19E680, type metadata accessor for NoCodeOfferView, &unk_23BBF5B90);

              v78 = v96;
              sub_23BBDACD8();
              sub_23B9A721C(v78, v23, &qword_27E19E638, &qword_23BBF5A60);
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E668, &unk_23BBF5A80);
              sub_23BAA2894();
              sub_23BAA294C();
              v79 = v103;
              sub_23BBDACD8();
              sub_23B9846E8(v78, &qword_27E19E638, &qword_23BBF5A60);
              sub_23B9A721C(v79, v104, &qword_27E19E650, &qword_23BBF5A78);
              swift_storeEnumTagMultiPayload();
              sub_23BAA2808();
              sub_23B9CEBD4();
              sub_23BBDACD8();
              sub_23B9846E8(v79, &qword_27E19E650, &qword_23BBF5A78);
              sub_23BAA2AB8(v77, type metadata accessor for NoCodeOfferView);
              (*(v99 + 8))(v98, v100);
              return sub_23BAA2AB8(v33, type metadata accessor for Product.TaskState);
            }
          }

          __break(1u);
          JUMPOUT(0x23BA9D840);
        }

        (*(v99 + 8))(v98, v100);
        v51 = &unk_27E19FEF0;
        v52 = &unk_23BBE3E40;
        v53 = v54;
      }

      sub_23B9846E8(v53, v51, v52);
      swift_storeEnumTagMultiPayload();
      sub_23BAA2808();
      sub_23B9CEBD4();
      sub_23BBDACD8();
      return sub_23BAA2AB8(v33, type metadata accessor for Product.TaskState);
    case 2u:
      swift_storeEnumTagMultiPayload();
      sub_23BAA2A08();
      sub_23BAA416C(&qword_27E19E680, type metadata accessor for NoCodeOfferView, &unk_23BBF5B90);
      v41 = v96;
      sub_23BBDACD8();
      sub_23B9A721C(v41, v23, &qword_27E19E638, &qword_23BBF5A60);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E668, &unk_23BBF5A80);
      sub_23BAA2894();
      sub_23BAA294C();
      v42 = v103;
      sub_23BBDACD8();
      sub_23B9846E8(v41, &qword_27E19E638, &qword_23BBF5A60);
      sub_23B9A721C(v42, v104, &qword_27E19E650, &qword_23BBF5A78);
      swift_storeEnumTagMultiPayload();
      sub_23BAA2808();
      sub_23B9CEBD4();
      sub_23BBDACD8();
      v40 = v42;
      goto LABEL_5;
    case 3u:
      v108 = 0;
      LOBYTE(v109) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CC0, &unk_23BBF4A10);
      sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0, &unk_23BBF4A10, &unk_23BBEAC40);
      sub_23B9CEBD4();
      sub_23BBDACD8();
      v43 = BYTE8(v110);
      *v23 = v110;
      v23[8] = v43;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E668, &unk_23BBF5A80);
      sub_23BAA2894();
      sub_23BAA294C();
      v44 = v103;
      sub_23BBDACD8();
      sub_23B9A721C(v44, v104, &qword_27E19E650, &qword_23BBF5A78);
      swift_storeEnumTagMultiPayload();
      sub_23BAA2808();
      sub_23BBDACD8();
      v40 = v44;
      goto LABEL_5;
    default:
      sub_23BAA271C(v33, v30);
      v108 = *v30;
      v36 = v108;
      LOBYTE(v109) = 0;
      v37 = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CC0, &unk_23BBF4A10);
      sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0, &unk_23BBF4A10, &unk_23BBEAC40);
      sub_23B9CEBD4();
      sub_23BBDACD8();
      v38 = BYTE8(v110);
      *v23 = v110;
      v23[8] = v38;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E668, &unk_23BBF5A80);
      sub_23BAA2894();
      sub_23BAA294C();
      v39 = v103;
      sub_23BBDACD8();
      sub_23B9A721C(v39, v104, &qword_27E19E650, &qword_23BBF5A78);
      swift_storeEnumTagMultiPayload();
      sub_23BAA2808();
      sub_23BBDACD8();

      v40 = v39;
LABEL_5:
      sub_23B9846E8(v40, &qword_27E19E650, &qword_23BBF5A78);
      return sub_23BAA2AB8(v33, type metadata accessor for Product.TaskState);
  }
}

void sub_23BA9D850(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    sub_23BAA27A4();

    v3 = sub_23BA9F100(v2, v1, 0);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 localizedName];
      sub_23BBDD018();

      type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E628, &qword_23BBF5A50);
      sub_23BBDBF78();
    }
  }
}

uint64_t sub_23BA9D990(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_23BA9D9F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23B9F3414;

  return sub_23BA9DA84();
}

uint64_t sub_23BA9DA84()
{
  v1[10] = v0;
  v1[11] = type metadata accessor for Product.TaskState(0);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v2 = sub_23BBDCC88();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v1[20] = swift_task_alloc();
  v3 = sub_23BBDCB58();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  v1[24] = swift_task_alloc();
  v4 = sub_23BBDCDB8();
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v5 = sub_23BBDC5F8();
  v1[28] = v5;
  v1[29] = *(v5 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  sub_23BBDD308();
  v1[32] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();
  v1[33] = v7;
  v1[34] = v6;

  return MEMORY[0x2822009F8](sub_23BA9DD94, v7, v6);
}

uint64_t sub_23BA9DD94()
{
  v1 = v0[10];
  v2 = v0[28];
  v3 = v0[29];
  if (v1[5])
  {
    v4 = v0[31];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0, &unk_23BBED420);
    v5 = swift_allocObject();
    v0[35] = v5;
    *(v5 + 16) = xmmword_23BBE7F10;
    v6 = *v1;
    v7 = v1[1];
    v0[9] = v5;
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
    (*(v3 + 104))(v4, *MEMORY[0x277CDD0A8], v2);

    v8 = swift_task_alloc();
    v0[36] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B730, &qword_23BBF4A30);
    OUTLINED_FUNCTION_13_19();
    sub_23B97B518(v9, qword_27E19B730, &qword_23BBF4A30, v10);
    *v8 = v0;
    v8[1] = sub_23BA9E04C;
    v11 = OUTLINED_FUNCTION_17_0();

    return MEMORY[0x28212C670](v11);
  }

  else
  {
    v12 = v0[30];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0, &unk_23BBED420);
    v13 = swift_allocObject();
    v0[38] = v13;
    *(v13 + 16) = xmmword_23BBE7F10;
    v14 = *v1;
    v15 = v1[1];
    v0[8] = v13;
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    (*(v3 + 104))(v12, *MEMORY[0x277CDD0A8], v2);

    v16 = swift_task_alloc();
    v0[39] = v16;
    v17 = OUTLINED_FUNCTION_31_1();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_13_19();
    v22 = sub_23B97B518(v20, qword_27E19B730, &qword_23BBF4A30, v21);
    *v16 = v0;
    v16[1] = sub_23BA9E6B0;
    v23 = v0[30];

    return MEMORY[0x28212C740](v0 + 8, v23, v19, v22);
  }
}

uint64_t sub_23BA9E04C()
{
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v6 = v5;
  v3[37] = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_70();
    v8(v7);

    v9 = v3[33];
    v10 = v3[34];
    v11 = sub_23BA9ED14;
  }

  else
  {
    (*(v3[29] + 8))(v3[31], v3[28]);

    v9 = v3[33];
    v10 = v3[34];
    v11 = sub_23BA9E1C0;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_23BA9E1C0()
{
  v6 = v0[37];
  v7 = v0[3];

  v8 = v0[25];
  if (!v7)
  {
    v26 = OUTLINED_FUNCTION_20_9();
    __swift_storeEnumTagSinglePayload(v26, v27, 1, v8);
    goto LABEL_6;
  }

  sub_23BAC74B0(v7, v0[24]);

  v9 = OUTLINED_FUNCTION_20_9();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8) == 1)
  {
LABEL_6:
    v28 = OUTLINED_FUNCTION_19_12();
    sub_23B9846E8(v28, &qword_27E1987F0, &unk_23BBE5E10);
    sub_23BAA26C8();
    v29 = OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_8_25(v29, v30);
    type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
    OUTLINED_FUNCTION_1_35();
    v31 = OUTLINED_FUNCTION_31_1();
    sub_23BAA271C(v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
    OUTLINED_FUNCTION_27_3();
    sub_23BBDBF78();
    OUTLINED_FUNCTION_0_34();
    sub_23BAA2AB8(v6, v33);
    v34 = OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_26_5(v34, v35);
    v25 = v6;
    goto LABEL_7;
  }

  v12 = v0[20];
  v11 = v0[21];
  v13 = OUTLINED_FUNCTION_24_9();
  v14(v13);
  sub_23BBDC8F8();
  v15 = OUTLINED_FUNCTION_20_9();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v11);
  v18 = v0[10];
  if (EnumTagSinglePayload == 1)
  {
    v19 = OUTLINED_FUNCTION_23_6();
    sub_23B9846E8(v19, &qword_27E197B90, &qword_23BBE3F90);
    sub_23BAA26C8();
    v20 = OUTLINED_FUNCTION_16_11();
    *v21 = v6;
    *v1 = v20;
    OUTLINED_FUNCTION_33_3(v1);
    type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
    OUTLINED_FUNCTION_1_35();
    sub_23BAA271C(v1, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
    OUTLINED_FUNCTION_27_3();
    sub_23BBDBF78();
    OUTLINED_FUNCTION_0_34();
    sub_23BAA2AB8(v1, v22);
    v23 = OUTLINED_FUNCTION_16_11();
    *v24 = v6;
    sub_23BA9EE88(v23);
    (*(v5 + 8))(v62, v12);
    v25 = v23;
LABEL_7:

    goto LABEL_8;
  }

  v39 = v0[16];
  v38 = v0[17];
  v40 = OUTLINED_FUNCTION_24_9();
  v41(v40);
  sub_23BBDCA58();
  v42 = swift_task_alloc();
  OUTLINED_FUNCTION_10_15(v42);

  __swift_getEnumTagSinglePayload(v39, 1, v38);
  OUTLINED_FUNCTION_21_11();
  if (v43)
  {
    v44 = v0[13];
    sub_23B9846E8(v0[16], &unk_27E19FEF0, &unk_23BBE3E40);
    sub_23BAA26C8();
    v45 = OUTLINED_FUNCTION_15_17();
    *v46 = 0;
    *v44 = v45;
    OUTLINED_FUNCTION_33_3(v44);
    type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
    OUTLINED_FUNCTION_1_35();
    v47 = OUTLINED_FUNCTION_70();
    sub_23BAA271C(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
    sub_23BBDBF78();
    OUTLINED_FUNCTION_0_34();
    sub_23BAA2AB8(v44, v49);
    v50 = OUTLINED_FUNCTION_15_17();
    *v51 = 0;
    sub_23BA9EE88(v50);
    (*(v5 + 8))();
    (*(v2 + 8))();
    v25 = v50;
    goto LABEL_7;
  }

  v52 = OUTLINED_FUNCTION_12_18();
  v53(v52);
  v54 = OUTLINED_FUNCTION_35_4();
  v55(v54);
  OUTLINED_FUNCTION_39_2();
  sub_23B9A721C(v39, v18, &unk_27E19FEF0, &unk_23BBE3E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5C0, qword_23BBF58A0);
  OUTLINED_FUNCTION_43_3();
  sub_23BBDBF78();
  sub_23B9846E8(v39, &unk_27E19FEF0, &unk_23BBE3E40);
  v56 = OUTLINED_FUNCTION_30_3();
  v57(v56);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_35();
  sub_23BAA271C(v4, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
  OUTLINED_FUNCTION_43_3();
  sub_23BBDBF78();
  OUTLINED_FUNCTION_0_34();
  sub_23BAA2AB8(v4, v58);
  (*(v38 + 8))(v61, v3);
  (*(v60 + 8))();
  (*(v2 + 8))(v18, v39);
LABEL_8:
  OUTLINED_FUNCTION_5_24();

  OUTLINED_FUNCTION_1_16();

  return v36();
}

uint64_t sub_23BA9E6B0()
{
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v6 = v5;
  v3[40] = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_70();
    v8(v7);

    v9 = v3[33];
    v10 = v3[34];
    v11 = sub_23BA9ED14;
  }

  else
  {
    (*(v3[29] + 8))(v3[30], v3[28]);

    v9 = v3[33];
    v10 = v3[34];
    v11 = sub_23BA9E824;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_23BA9E824()
{
  v6 = v0[40];
  v7 = v0[6];

  v8 = v0[25];
  if (!v7)
  {
    v26 = OUTLINED_FUNCTION_20_9();
    __swift_storeEnumTagSinglePayload(v26, v27, 1, v8);
    goto LABEL_6;
  }

  sub_23BAC74B0(v7, v0[24]);

  v9 = OUTLINED_FUNCTION_20_9();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8) == 1)
  {
LABEL_6:
    v28 = OUTLINED_FUNCTION_19_12();
    sub_23B9846E8(v28, &qword_27E1987F0, &unk_23BBE5E10);
    sub_23BAA26C8();
    v29 = OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_8_25(v29, v30);
    type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
    OUTLINED_FUNCTION_1_35();
    v31 = OUTLINED_FUNCTION_31_1();
    sub_23BAA271C(v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
    OUTLINED_FUNCTION_27_3();
    sub_23BBDBF78();
    OUTLINED_FUNCTION_0_34();
    sub_23BAA2AB8(v6, v33);
    v34 = OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_26_5(v34, v35);
    v25 = v6;
    goto LABEL_7;
  }

  v12 = v0[20];
  v11 = v0[21];
  v13 = OUTLINED_FUNCTION_24_9();
  v14(v13);
  sub_23BBDC8F8();
  v15 = OUTLINED_FUNCTION_20_9();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v11);
  v18 = v0[10];
  if (EnumTagSinglePayload == 1)
  {
    v19 = OUTLINED_FUNCTION_23_6();
    sub_23B9846E8(v19, &qword_27E197B90, &qword_23BBE3F90);
    sub_23BAA26C8();
    v20 = OUTLINED_FUNCTION_16_11();
    *v21 = v6;
    *v1 = v20;
    OUTLINED_FUNCTION_33_3(v1);
    type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
    OUTLINED_FUNCTION_1_35();
    sub_23BAA271C(v1, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
    OUTLINED_FUNCTION_27_3();
    sub_23BBDBF78();
    OUTLINED_FUNCTION_0_34();
    sub_23BAA2AB8(v1, v22);
    v23 = OUTLINED_FUNCTION_16_11();
    *v24 = v6;
    sub_23BA9EE88(v23);
    (*(v5 + 8))(v62, v12);
    v25 = v23;
LABEL_7:

    goto LABEL_8;
  }

  v39 = v0[16];
  v38 = v0[17];
  v40 = OUTLINED_FUNCTION_24_9();
  v41(v40);
  sub_23BBDCA58();
  v42 = swift_task_alloc();
  OUTLINED_FUNCTION_10_15(v42);

  __swift_getEnumTagSinglePayload(v39, 1, v38);
  OUTLINED_FUNCTION_21_11();
  if (v43)
  {
    v44 = v0[13];
    sub_23B9846E8(v0[16], &unk_27E19FEF0, &unk_23BBE3E40);
    sub_23BAA26C8();
    v45 = OUTLINED_FUNCTION_15_17();
    *v46 = 0;
    *v44 = v45;
    OUTLINED_FUNCTION_33_3(v44);
    type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
    OUTLINED_FUNCTION_1_35();
    v47 = OUTLINED_FUNCTION_70();
    sub_23BAA271C(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
    sub_23BBDBF78();
    OUTLINED_FUNCTION_0_34();
    sub_23BAA2AB8(v44, v49);
    v50 = OUTLINED_FUNCTION_15_17();
    *v51 = 0;
    sub_23BA9EE88(v50);
    (*(v5 + 8))();
    (*(v2 + 8))();
    v25 = v50;
    goto LABEL_7;
  }

  v52 = OUTLINED_FUNCTION_12_18();
  v53(v52);
  v54 = OUTLINED_FUNCTION_35_4();
  v55(v54);
  OUTLINED_FUNCTION_39_2();
  sub_23B9A721C(v39, v18, &unk_27E19FEF0, &unk_23BBE3E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5C0, qword_23BBF58A0);
  OUTLINED_FUNCTION_43_3();
  sub_23BBDBF78();
  sub_23B9846E8(v39, &unk_27E19FEF0, &unk_23BBE3E40);
  v56 = OUTLINED_FUNCTION_30_3();
  v57(v56);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_35();
  sub_23BAA271C(v4, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
  OUTLINED_FUNCTION_43_3();
  sub_23BBDBF78();
  OUTLINED_FUNCTION_0_34();
  sub_23BAA2AB8(v4, v58);
  (*(v38 + 8))(v61, v3);
  (*(v60 + 8))();
  (*(v2 + 8))(v18, v39);
LABEL_8:
  OUTLINED_FUNCTION_5_24();

  OUTLINED_FUNCTION_1_16();

  return v36();
}

uint64_t sub_23BA9ED14()
{

  __swift_storeEnumTagSinglePayload(*(v1 + 192), 1, 1, *(v1 + 200));
  v2 = OUTLINED_FUNCTION_19_12();
  sub_23B9846E8(v2, &qword_27E1987F0, &unk_23BBE5E10);
  sub_23BAA26C8();
  v3 = OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_8_25(v3, v4);
  type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  OUTLINED_FUNCTION_1_35();
  v5 = OUTLINED_FUNCTION_31_1();
  sub_23BAA271C(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
  OUTLINED_FUNCTION_27_3();
  sub_23BBDBF78();
  OUTLINED_FUNCTION_0_34();
  sub_23BAA2AB8(v0, v7);
  v8 = OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_26_5(v8, v9);

  OUTLINED_FUNCTION_5_24();

  OUTLINED_FUNCTION_1_16();

  return v10();
}

void sub_23BA9EE88(uint64_t a1)
{
  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v3, qword_27E1BFC88);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_23BBDD768();
  MEMORY[0x23EEB5890](0xD00000000000001FLL, 0x800000023BBE1910);
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A450, &unk_23BBEA450);
  sub_23BBDD8B8();
  v4 = (v1 + *(type metadata accessor for SubscriptionOfferViewNoCodeSheet(0) + 32));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_23BBDD5A8();

  v8 = sub_23BBD9988();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446466;
    v13 = v10;
    v14 = 91;
    v15 = 0xE100000000000000;
    MEMORY[0x23EEB5890](v5, v6);
    MEMORY[0x23EEB5890](8285, 0xE200000000000000);
    v11 = sub_23BA5AB90(91, 0xE100000000000000, &v13);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2082;
    v12 = sub_23BA5AB90(0, 0xE000000000000000, &v13);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_23B970000, v8, v7, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v10, -1, -1);
    MEMORY[0x23EEB6DC0](v9, -1, -1);
  }

  else
  {
  }
}

id sub_23BA9F100(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23BBDCFE8();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_23BBD9668();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_23BA9F1F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BBDCC38();
  v5 = *(a2 + 24);
  v6 = v5 == 0;
  if (v4)
  {
    if (v5)
    {
      if (v3 == *(a2 + 16) && v4 == v5)
      {
        v6 = 1;
      }

      else
      {
        v6 = sub_23BBDDA88();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_23BA9F280()
{
  v0 = sub_23BBD98B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E6D0, &qword_23BBF5C70);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_23BBD9898();
  KeyPath = swift_getKeyPath();
  v8 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199D90, &qword_23BBE8FF8) + 36)];
  *v8 = KeyPath;
  v8[8] = 1;
  v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E6D8, &qword_23BBF5CB0) + 36)] = 1;
  (*(v1 + 104))(v3, *MEMORY[0x277D7EC68], v0);
  sub_23BAA3480();
  sub_23BBDB688();
  (*(v1 + 8))(v3, v0);
  return sub_23B9846E8(v6, &qword_27E19E6D0, &qword_23BBF5C70);
}

uint64_t sub_23BA9F48C()
{
  v0 = type metadata accessor for SKLogger(0);
  __swift_allocate_value_buffer(v0, qword_27E19E5A0);
  __swift_project_value_buffer(v0, qword_27E19E5A0);
  return sub_23BBD9998();
}

uint64_t sub_23BA9F50C(uint64_t a1)
{
  if (sub_23BBDC2A8())
  {
    sub_23BBDBD38();
    sub_23BBDBD18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198270, &unk_23BBE65E0);
    sub_23B987F20();
    sub_23B97B518(&qword_27E198298, &qword_27E198270, &unk_23BBE65E0, &unk_23BBEAA18);
    sub_23BBDBDE8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E7C8, qword_23BBF5E50);
    sub_23B97B518(&qword_27E19E7D0, &qword_27E19E7C8, qword_23BBF5E50, &unk_23BBEAB08);
  }

  return sub_23BBD9DF8();
}

uint64_t sub_23BA9F630@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197898, &qword_23BBE38E0);
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v35 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E6F0, &qword_23BBF5CB8);
  sub_23BAA35CC();
  v33 = v5;
  sub_23BBDA368();
  v6 = type metadata accessor for NoCodeOfferView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_23BAA271C(v1, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23BBDD308();
  v9 = sub_23BBDD2F8();
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v9;
  *(v11 + 24) = v12;
  sub_23BAA2A60(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v13 = sub_23BBDD368();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v27 - v16;
  sub_23BBDD328();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v31 = sub_23BBDA268();
    v32 = &v27;
    v30 = *(v31 - 8);
    MEMORY[0x28223BE20](v31);
    v29 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_23BBDD768();

    v37 = 0xD000000000000045;
    v38 = 0x800000023BBE1930;
    v36 = 277;
    v19 = sub_23BBDDA38();
    MEMORY[0x23EEB5890](v19);

    v28 = v3;
    v21 = MEMORY[0x28223BE20](v20);
    (*(v14 + 16))(&v27 - v16, &v27 - v16, v13, v21);
    v22 = v29;
    sub_23BBDA258();
    (*(v14 + 8))(v17, v13);
    (*(v34 + 32))(a1, v33, v28);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1978A0, &qword_23BBE38E8);
    return (*(v30 + 32))(a1 + *(v23 + 36), v22, v31);
  }

  else
  {
    v25 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1978A8, &qword_23BBE38F0) + 36));
    v26 = sub_23BBDA008();
    (*(v14 + 32))(&v25[*(v26 + 20)], &v27 - v16, v13);
    *v25 = &unk_23BBF5D20;
    *(v25 + 1) = v11;
    return (*(v34 + 32))(a1, v33, v3);
  }
}

uint64_t sub_23BA9FB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for NoCodeOfferView(0);
  v4 = (v3 - 8);
  v63 = *(v3 - 8);
  v65 = *(v63 + 8);
  MEMORY[0x28223BE20](v3);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SubscriptionOfferViewNoCodeMarketingContent(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E700, &qword_23BBF5CC0);
  MEMORY[0x28223BE20](v62);
  v11 = &v57 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199748, &unk_23BBE8210);
  v12 = sub_23BBDCDB8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v60 = xmmword_23BBE7F10;
  *(v15 + 16) = xmmword_23BBE7F10;
  v16 = *(v13 + 16);
  v16(v15 + v14, a1, v12);
  *&v59 = sub_23BA96B58(v15, 0, 1);
  swift_setDeallocating();
  sub_23BBD27AC();
  v16(v9 + v7[7], a1, v12);
  v17 = v4[7];
  v18 = v7[8];
  v19 = sub_23BBDCB58();
  (*(*(v19 - 8) + 16))(v9 + v18, a1 + v17, v19);
  v20 = v4[8];
  v21 = v7[9];
  v22 = sub_23BBDCC88();
  (*(*(v22 - 8) + 16))(v9 + v21, a1 + v20, v22);
  v23 = v4[10];
  v24 = (a1 + v4[9]);
  v25 = *(v24 + 4);
  v26 = *(v24 + 5);
  LOBYTE(v4) = *(v24 + 48);
  v28 = *(a1 + v23);
  v27 = *(a1 + v23 + 8);
  v29 = *v24;
  v57 = v24[1];
  v58 = v29;
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  v30 = v9 + v7[10];
  v31 = v57;
  *v30 = v58;
  *(v30 + 1) = v31;
  *(v30 + 4) = v25;
  *(v30 + 5) = v26;
  v30[48] = v4;
  v32 = (v9 + v7[11]);
  *v32 = v28;
  v32[1] = v27;

  sub_23BA3B664(v59, 0, 0, 2, v9, 0, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E798, &qword_23BBF5D70);
  v33 = swift_allocObject();
  *(v33 + 16) = v60;
  *(v33 + 32) = swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E750, &qword_23BBF5CE8);
  v35 = &v11[*(v34 + 36)];
  *v35 = 2;
  *(v35 + 1) = v33;
  v36 = sub_23BA9F50C(v34);
  LOBYTE(v27) = sub_23BBDB398();
  v37 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E740, &qword_23BBF5CE0) + 36)];
  *v37 = v36;
  v37[8] = v27;
  v38 = *(v24 + 4);
  v39 = *(v24 + 5);
  LOBYTE(v26) = *(v24 + 48);
  v40 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E730, &qword_23BBF5CD8) + 36)];
  *(v40 + 11) = 0;
  *(v40 + 72) = 0u;
  *(v40 + 56) = 0u;
  v41 = v24[1];
  v59 = *v24;
  *v40 = v59;
  *(v40 + 1) = v41;
  *(v40 + 4) = v38;
  *(v40 + 5) = v39;
  v40[48] = v26;
  KeyPath = swift_getKeyPath();
  v43 = swift_allocObject();
  *(v43 + 16) = 1;
  v44 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E720, &qword_23BBF5CD0) + 36)];
  *v44 = KeyPath;
  v44[1] = sub_23BAA3D68;
  v44[2] = v43;
  *&v60 = type metadata accessor for NoCodeOfferView;
  v45 = a1;
  v46 = a1;
  v47 = v61;
  sub_23BAA271C(v46, v61);
  v48 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v49 = swift_allocObject();
  v63 = type metadata accessor for NoCodeOfferView;
  sub_23BAA2A60(v47, v49 + v48);
  v50 = swift_getKeyPath();
  v51 = &v11[*(v62 + 36)];
  *v51 = v50;
  v51[8] = 0;
  *(v51 + 2) = &unk_23BBF5DC8;
  *(v51 + 3) = v49;
  v66 = v45;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E708, &qword_23BBF5CC8);
  sub_23BAA36F4();
  sub_23B97B518(&qword_27E19E790, &qword_27E19E708, &qword_23BBF5CC8, MEMORY[0x277CDDF68]);
  v52 = v64;
  sub_23BBDBBC8();
  sub_23B9846E8(v11, &qword_27E19E700, &qword_23BBF5CC0);
  sub_23BAA271C(v45, v47);
  v53 = swift_allocObject();
  sub_23BAA2A60(v47, v53 + v48);
  v54 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E6F0, &qword_23BBF5CB8);
  v56 = v52 + *(result + 36);
  *v56 = v54;
  *(v56 + 8) = 0;
  *(v56 + 16) = &unk_23BBF5E00;
  *(v56 + 24) = v53;
  return result;
}

uint64_t sub_23BAA01E4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_23BBDC928();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_23BBDCBA8();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  v2[15] = swift_task_alloc();
  v5 = sub_23BBDCC88();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  sub_23BBDD308();
  v2[19] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BAA0400, v7, v6);
}

void sub_23BAA0400()
{

  v1 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  v3 = v2;
  if (v1 == _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_23BBDDA88();

    if ((v6 & 1) == 0)
    {
      if (qword_27E1977C0 != -1)
      {
        OUTLINED_FUNCTION_3_25(&qword_27E1977C0);
      }

      v7 = type metadata accessor for SKLogger(0);
      __swift_project_value_buffer(v7, qword_27E19E5A0);
      OUTLINED_FUNCTION_42_3();
      sub_23BBDD768();
      MEMORY[0x23EEB5890](0xD000000000000040, 0x800000023BBE19F0);
      v8 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      MEMORY[0x23EEB5890](v8);

      MEMORY[0x23EEB5890](0x6C6175746341202ELL, 0xEA0000000000203ALL);
      v9 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      MEMORY[0x23EEB5890](v9);

      v11 = v57;
      v10 = v58;
      type metadata accessor for NoCodeOfferView(0);
      v12 = sub_23BBDD5A8();

      v13 = sub_23BBD9988();

      if (os_log_type_enabled(v13, v12))
      {
        v14 = OUTLINED_FUNCTION_132();
        OUTLINED_FUNCTION_131();
        *v14 = 136446466;
        OUTLINED_FUNCTION_40_4();
        OUTLINED_FUNCTION_133();
        sub_23BA5AB90(v57, v58, &v56);

        OUTLINED_FUNCTION_45_2();
        v16 = sub_23BA5AB90(v11, v10, v15);

        *(v14 + 14) = v16;
        v17 = v12;
LABEL_18:
        _os_log_impl(&dword_23B970000, v13, v17, "%{public}s%{public}s", v14, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
LABEL_22:

LABEL_23:

        OUTLINED_FUNCTION_113();

        __asm { BRAA            X2, X16 }
      }

      goto LABEL_21;
    }
  }

  v18 = v0[14];
  sub_23BBDC8F8();
  v19 = sub_23BBDCB58();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v19);
  v22 = v0[15];
  v21 = v0[16];
  v23 = v0[14];
  if (EnumTagSinglePayload == 1)
  {
    sub_23B9846E8(v0[14], &qword_27E197B90, &qword_23BBE3F90);
    v24 = OUTLINED_FUNCTION_20_9();
    __swift_storeEnumTagSinglePayload(v24, v25, 1, v21);
  }

  else
  {
    v26 = v0[7];
    v27 = sub_23BBDCA58();
    OUTLINED_FUNCTION_1_4();
    (*(v28 + 8))(v23, v19);
    *(swift_task_alloc() + 16) = v26;
    sub_23B9FC890(sub_23BAA41B4, v27, v22);

    v29 = OUTLINED_FUNCTION_20_9();
    if (__swift_getEnumTagSinglePayload(v29, v30, v21) != 1)
    {
      v44 = v0[17];
      v43 = v0[18];
      v45 = v0[16];
      v47 = v0[9];
      v46 = v0[10];
      v48 = v0[8];
      v49 = OUTLINED_FUNCTION_24_9();
      v50(v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D2B0, &qword_23BBF21C8);
      sub_23BBDC9A8();
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_23BBE94D0;
      sub_23BBDC948();
      (*(v47 + 104))(v46, *MEMORY[0x277CDD1A8], v48);
      sub_23BBDC938();
      v52 = OUTLINED_FUNCTION_31_1();
      v53(v52);
      sub_23BA6879C(v51);
      (*(v44 + 8))(v43, v45);
      goto LABEL_23;
    }
  }

  sub_23B9846E8(v0[15], &unk_27E19FEF0, &unk_23BBE3E40);
  if (qword_27E1977C0 != -1)
  {
    OUTLINED_FUNCTION_3_25(&qword_27E1977C0);
  }

  v31 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v31, qword_27E19E5A0);
  OUTLINED_FUNCTION_42_3();
  sub_23BBDD768();
  v32 = v58;
  v0[2] = v57;
  v0[3] = v32;
  MEMORY[0x23EEB5890](0xD000000000000015, 0x800000023BBE1A40);
  type metadata accessor for NoCodeOfferView(0);
  sub_23BBDCC48();
  sub_23BBDD8B8();
  v33 = OUTLINED_FUNCTION_70();
  v34(v33);
  MEMORY[0x23EEB5890](32, 0xE100000000000000);
  v0[4] = sub_23BBDCC38();
  v0[5] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D2C0, &unk_23BBF21D0);
  v36 = sub_23BBDD038();
  MEMORY[0x23EEB5890](v36);

  MEMORY[0x23EEB5890](0x20726F6620, 0xE500000000000000);
  v37 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  MEMORY[0x23EEB5890](v37);

  v39 = v0[2];
  v38 = v0[3];
  v40 = sub_23BBDD5A8();

  v13 = sub_23BBD9988();

  if (os_log_type_enabled(v13, v40))
  {
    v14 = OUTLINED_FUNCTION_132();
    OUTLINED_FUNCTION_131();
    *v14 = 136446466;
    OUTLINED_FUNCTION_40_4();
    OUTLINED_FUNCTION_133();
    sub_23BA5AB90(v57, v58, &v56);

    OUTLINED_FUNCTION_45_2();
    v42 = sub_23BA5AB90(v39, v38, v41);

    *(v14 + 14) = v42;
    v17 = v40;
    goto LABEL_18;
  }

LABEL_21:

  goto LABEL_22;
}

uint64_t sub_23BAA0B78(uint64_t a1)
{
  v1 = sub_23BBDCC38();
  v3 = v2;
  type metadata accessor for NoCodeOfferView(0);
  v4 = sub_23BBDCC38();
  if (v3)
  {
    if (v5)
    {
      if (v1 == v4 && v3 == v5)
      {

        v7 = 1;
      }

      else
      {
        v7 = sub_23BBDDA88();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (!v5)
    {
      v7 = 1;
      return v7 & 1;
    }

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_23BAA0C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E7A0, &qword_23BBF5E38);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E7A8, &qword_23BBF5E40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - v8;
  v10 = sub_23BBDADE8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E7B0, &qword_23BBF5E48);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - v13;
  sub_23BBDADC8();
  v17[4] = a1;
  sub_23BAA4118();
  sub_23BBD9C78();
  sub_23BBDADD8();
  type metadata accessor for EnvironmentActionUIKitDismissButton(0);
  sub_23BAA416C(&qword_27E19E7C0, type metadata accessor for EnvironmentActionUIKitDismissButton, &unk_23BBF8E44);
  sub_23BBD9C78();
  v15 = *(v3 + 48);
  (*(v12 + 16))(v5, v14, v11);
  (*(v7 + 16))(&v5[v15], v9, v6);
  sub_23BBDABC8();
  (*(v7 + 8))(v9, v6);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_23BAA0F68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = type metadata accessor for NoCodeOfferView(0);
  v5 = a1 + *(result + 28);
  if (*(v5 + 8))
  {
    v6 = *(v5 + 48);
  }

  else
  {
    v6 = 3;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_23BAA0FB4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199750, &unk_23BBF5AC0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BAA1014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = sub_23BBD9E48();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v5 = sub_23BBDC9B8();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D288, &qword_23BBF5E30);
  v3[12] = swift_task_alloc();
  sub_23BBDD308();
  v3[13] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BAA11AC, v7, v6);
}

uint64_t sub_23BAA11AC()
{
  v1 = v0[12];
  v2 = v0[2];

  sub_23B9A721C(v2, v1, &qword_27E19D288, &qword_23BBF5E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B9846E8(v0[12], &qword_27E19D288, &qword_23BBF5E30);
  }

  else
  {
    v3 = v0[9];
    v4 = v0[7];
    v5 = v0[8];
    (*(v5 + 32))(v0[10], v0[12], v4);
    v6 = OUTLINED_FUNCTION_17_0();
    v7(v6);
    v8 = (*(v5 + 88))(v3, v4);
    v9 = v0[10];
    if (v8 == *MEMORY[0x277CDD1C8])
    {
      (*(v0[8] + 8))(v0[10], v0[7]);
    }

    else
    {
      v10 = v0[8];
      v12 = v0[6];
      v11 = v0[7];
      v13 = v0[4];
      v14 = v0[5];
      type metadata accessor for NoCodeOfferView(0);
      sub_23B9B762C();
      sub_23BBD9E38();
      (*(v14 + 8))(v12, v13);
      v15 = *(v10 + 8);
      v15(v9, v11);
      v16 = OUTLINED_FUNCTION_31_1();
      (v15)(v16);
    }
  }

  OUTLINED_FUNCTION_1_16();

  return v17();
}

uint64_t sub_23BAA13A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_23BBDD308();
  v3[3] = sub_23BBDD2F8();
  v5 = *(type metadata accessor for NoCodeOfferView(0) + 24);
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_23BA31378;

  return sub_23BAA1460(a3 + v5);
}

uint64_t sub_23BAA1460(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5B8, &unk_23BBF5890);
  v2[5] = swift_task_alloc();
  v3 = sub_23BBDC838();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_23BBDD308();
  v2[9] = sub_23BBDD2F8();
  v5 = sub_23BBDD2D8();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x2822009F8](sub_23BAA158C, v5, v4);
}

uint64_t sub_23BAA158C()
{
  v41 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = type metadata accessor for NoCodeOfferView(0);
  sub_23B9A721C(v3 + v4[10], v2, &qword_27E19E5B8, &unk_23BBF5890);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 40);

    sub_23B9846E8(v5, &qword_27E19E5B8, &unk_23BBF5890);
    if (qword_27E1977C0 != -1)
    {
      OUTLINED_FUNCTION_3_25(&qword_27E1977C0);
    }

    v6 = *(v0 + 32);
    v7 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v7, qword_27E19E5A0);
    v8 = (v6 + v4[9]);
    v9 = *v8;
    v10 = v8[1];
    v11 = sub_23BBDD598();

    v12 = sub_23BBD9988();

    if (os_log_type_enabled(v12, v11))
    {
      v13 = OUTLINED_FUNCTION_132();
      v14 = OUTLINED_FUNCTION_131();
      *v13 = 136446466;
      v38 = v14;
      v39 = 91;
      v40 = 0xE100000000000000;
      MEMORY[0x23EEB5890](v9, v10);
      OUTLINED_FUNCTION_133();
      v15 = sub_23BA5AB90(91, 0xE100000000000000, &v38);

      *(v13 + 4) = v15;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_23BA5AB90(0xD00000000000002BLL, 0x800000023BBE1980, &v38);
      _os_log_impl(&dword_23B970000, v12, v11, "%{public}s%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_113();

    __asm { BRAA            X1, X16 }
  }

  (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
  if (qword_27E1977C0 != -1)
  {
    OUTLINED_FUNCTION_3_25(&qword_27E1977C0);
  }

  v18 = *(v0 + 32);
  v19 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v19, qword_27E19E5A0);
  sub_23BBDD768();

  v39 = 0xD00000000000001ELL;
  v40 = 0x800000023BBE19B0;
  *(v0 + 16) = sub_23BBDC828();
  v20 = sub_23BBDDA38();
  MEMORY[0x23EEB5890](v20);

  v21 = v40;
  v22 = (v18 + v4[9]);
  v24 = *v22;
  v23 = v22[1];
  v25 = sub_23BBDD5B8();

  v26 = sub_23BBD9988();

  if (os_log_type_enabled(v26, v25))
  {
    v37 = v39;
    v27 = OUTLINED_FUNCTION_132();
    v38 = OUTLINED_FUNCTION_131();
    *v27 = 136446466;
    v39 = 91;
    v40 = 0xE100000000000000;
    MEMORY[0x23EEB5890](v24, v23);
    OUTLINED_FUNCTION_133();
    v28 = sub_23BA5AB90(91, 0xE100000000000000, &v38);

    *(v27 + 4) = v28;
    *(v27 + 12) = 2082;
    v29 = sub_23BA5AB90(v37, v21, &v38);

    *(v27 + 14) = v29;
    _os_log_impl(&dword_23B970000, v26, v25, "%{public}s%{public}s", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  else
  {
  }

  v30 = *(v0 + 32) + v4[7];
  v31 = *(v30 + 8);
  *(v0 + 96) = v31;
  if (v31)
  {
    v32 = *(v30 + 16);
    v33 = *(v30 + 32);
  }

  else
  {
    v32 = 0uLL;
    v33 = 0uLL;
  }

  *(v0 + 112) = v32;
  *(v0 + 128) = v33;
  *(v0 + 144) = v31 == 0;

  v34 = swift_task_alloc();
  *(v0 + 104) = v34;
  *v34 = v0;
  v34[1] = sub_23BAA1AC0;
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_113();

  return MEMORY[0x28212C590]();
}

uint64_t sub_23BAA1AC0()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_23BAA1BF8, v5, v4);
}

uint64_t sub_23BAA1BF8()
{
  OUTLINED_FUNCTION_4_11();
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_1_16();

  return v4();
}

uint64_t sub_23BAA1C8C(char a1)
{
  if ((a1 & 0xFC) != 0)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * a1);
  }
}

uint64_t sub_23BAA1CD4@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BAA1C8C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23BAA1D00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA9F1E8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_23BAA1D40(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5B8, &unk_23BBF5890);
  OUTLINED_FUNCTION_10_2();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[7];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
    OUTLINED_FUNCTION_10_2();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[9];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5C0, qword_23BBF58A0);
      v10 = a3[10];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_23BAA1E74(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5B8, &unk_23BBF5890);
    OUTLINED_FUNCTION_10_2();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
      OUTLINED_FUNCTION_10_2();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[9];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5C0, qword_23BBF58A0);
        v11 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_23BAA1FBC(uint64_t a1)
{
  sub_23BAA21DC(319, &qword_27E197B20, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23BAA21DC(319, &qword_27E19A3B0, &type metadata for ClientOverrideValues, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23BAA30F0(319, &qword_27E19E5D8, MEMORY[0x277CDD160], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23BAA30F0(319, &qword_27E199198, type metadata accessor for Product.TaskState, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_23BAA2178(319);
          if (v5 <= 0x3F)
          {
            sub_23BAA21DC(319, &qword_27E19E5E8, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
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

void sub_23BAA2178(uint64_t a1)
{
  if (!qword_27E19E5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E19FEF0, &unk_23BBE3E40);
    v1 = sub_23BBDBF98();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19E5E0);
    }
  }
}

void sub_23BAA21DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_23BAA2240()
{
  result = qword_27E19E5F0;
  if (!qword_27E19E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E5F0);
  }

  return result;
}

void sub_23BAA22B4()
{
  v1 = type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  OUTLINED_FUNCTION_13_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_23BA9D850(v3);
}

uint64_t sub_23BAA2310()
{

  return swift_deallocObject();
}

uint64_t sub_23BAA2348()
{
  OUTLINED_FUNCTION_4_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  v1[1] = sub_23BA027BC;
  v3 = OUTLINED_FUNCTION_17_0();

  return v4(v3);
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  OUTLINED_FUNCTION_57();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v1[7];
  v5 = sub_23BBDC838();
  if (!__swift_getEnumTagSinglePayload(v3 + v4, 1, v5))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = (v3 + v1[9]);
  type metadata accessor for Product.TaskState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v9 + 8))(v7);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);

  v10 = v3 + v1[10];
  v11 = sub_23BBDCC88();
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v12 + 8))(v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5C0, qword_23BBF58A0);

  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

uint64_t sub_23BAA2608()
{
  OUTLINED_FUNCTION_3_13();
  v0 = type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  OUTLINED_FUNCTION_13_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4_18(v1);
  *v2 = v3;
  v2[1] = sub_23BA027BC;

  return sub_23BA9D9F4();
}

unint64_t sub_23BAA26C8()
{
  result = qword_27E19E618;
  if (!qword_27E19E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E618);
  }

  return result;
}

uint64_t sub_23BAA271C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

unint64_t sub_23BAA27A4()
{
  result = qword_27E19E620;
  if (!qword_27E19E620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E19E620);
  }

  return result;
}

unint64_t sub_23BAA2808()
{
  result = qword_27E19E658;
  if (!qword_27E19E658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E650, &qword_23BBF5A78);
    sub_23BAA2894();
    sub_23BAA294C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E658);
  }

  return result;
}

unint64_t sub_23BAA2894()
{
  result = qword_27E19E660;
  if (!qword_27E19E660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E668, &unk_23BBF5A80);
    sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0, &unk_23BBF4A10, &unk_23BBEAC40);
    sub_23B9CEBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E660);
  }

  return result;
}

unint64_t sub_23BAA294C()
{
  result = qword_27E19E670;
  if (!qword_27E19E670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E638, &qword_23BBF5A60);
    sub_23BAA2A08();
    sub_23BAA416C(&qword_27E19E680, type metadata accessor for NoCodeOfferView, &unk_23BBF5B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E670);
  }

  return result;
}

unint64_t sub_23BAA2A08()
{
  result = qword_27E19E678;
  if (!qword_27E19E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E678);
  }

  return result;
}

uint64_t sub_23BAA2A60(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

uint64_t sub_23BAA2AB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *sub_23BAA2B14(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x23BAA2BE0);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BAA2C2C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_12_3();
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_23BBDCB58();
    OUTLINED_FUNCTION_10_2();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_23BBDCC88();
      OUTLINED_FUNCTION_10_2();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        if (a2 == 0x7FFFFFFF)
        {
          return OUTLINED_FUNCTION_18_0(*(v3 + a3[8] + 8));
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5B8, &unk_23BBF5890);
        OUTLINED_FUNCTION_10_2();
        if (*(v17 + 84) == a2)
        {
          v8 = v16;
          v12 = a3[10];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ADF0, &unk_23BBEB7B0);
          v12 = a3[11];
        }
      }
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_23BAA2DD8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_12_3();
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_23BBDCB58();
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_23BBDCC88();
      OUTLINED_FUNCTION_10_2();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v4 + a4[8] + 8) = (a2 - 1);
          return;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5B8, &unk_23BBF5890);
        OUTLINED_FUNCTION_10_2();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[10];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ADF0, &unk_23BBEB7B0);
          v14 = a4[11];
        }
      }
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_23BAA2F78(uint64_t a1)
{
  sub_23BBDCDB8();
  if (v1 <= 0x3F)
  {
    sub_23BBDCB58();
    if (v2 <= 0x3F)
    {
      sub_23BBDCC88();
      if (v3 <= 0x3F)
      {
        sub_23BAA21DC(319, &qword_27E19A3B0, &type metadata for ClientOverrideValues, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23BAA30F0(319, &qword_27E19E5D8, MEMORY[0x277CDD160], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23BAA30F0(319, &qword_27E19AE08, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
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

void sub_23BAA30F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_23BAA3168()
{
  result = qword_27E19E698;
  if (!qword_27E19E698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E610, &unk_23BBF5A30);
    sub_23BAA3220();
    sub_23B97B518(qword_27E19A738, &qword_27E19A690, &qword_23BBEA6A8, MEMORY[0x277CDDEB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E698);
  }

  return result;
}

unint64_t sub_23BAA3220()
{
  result = qword_27E19E6A0;
  if (!qword_27E19E6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E600, &qword_23BBF5A00);
    sub_23BAA32D8();
    sub_23B97B518(&qword_27E19E6C0, &qword_27E19E608, &qword_23BC007A0, MEMORY[0x277CDDEB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E6A0);
  }

  return result;
}

unint64_t sub_23BAA32D8()
{
  result = qword_27E19E6A8;
  if (!qword_27E19E6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E5F8, &qword_23BBF59F8);
    sub_23BAA335C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E6A8);
  }

  return result;
}

unint64_t sub_23BAA335C()
{
  result = qword_27E19E6B0;
  if (!qword_27E19E6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E6B8, qword_23BBF5B20);
    sub_23BAA2808();
    sub_23B9CEBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E6B0);
  }

  return result;
}

unint64_t sub_23BAA33EC()
{
  result = qword_27E19E6C8;
  if (!qword_27E19E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E6C8);
  }

  return result;
}

unint64_t sub_23BAA3480()
{
  result = qword_27E19E6E0;
  if (!qword_27E19E6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E6D0, &qword_23BBF5C70);
    sub_23BAA3538();
    sub_23B97B518(&qword_27E1999F0, &qword_27E199938, &unk_23BBE8F30, &unk_23BBFBEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E6E0);
  }

  return result;
}

unint64_t sub_23BAA3538()
{
  result = qword_27E19E6E8;
  if (!qword_27E19E6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E6D8, &qword_23BBF5CB0);
    sub_23B9CF720();
    sub_23B9A243C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E6E8);
  }

  return result;
}

unint64_t sub_23BAA35CC()
{
  result = qword_27E19E6F8;
  if (!qword_27E19E6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E6F0, &qword_23BBF5CB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E700, &qword_23BBF5CC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E708, &qword_23BBF5CC8);
    sub_23BAA36F4();
    sub_23B97B518(&qword_27E19E790, &qword_27E19E708, &qword_23BBF5CC8, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    sub_23BA678CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E6F8);
  }

  return result;
}

unint64_t sub_23BAA36F4()
{
  result = qword_27E19E710;
  if (!qword_27E19E710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E700, &qword_23BBF5CC0);
    sub_23BAA3780();
    sub_23BA677E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E710);
  }

  return result;
}

unint64_t sub_23BAA3780()
{
  result = qword_27E19E718;
  if (!qword_27E19E718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E720, &qword_23BBF5CD0);
    sub_23BAA3838();
    sub_23B97B518(&qword_27E19E780, &qword_27E19E788, &qword_23BBF5D10, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E718);
  }

  return result;
}

unint64_t sub_23BAA3838()
{
  result = qword_27E19E728;
  if (!qword_27E19E728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E730, &qword_23BBF5CD8);
    sub_23BAA38F0();
    sub_23B97B518(&qword_27E19E770, &qword_27E19E778, &qword_23BBF5D08, &unk_23BBF4F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E728);
  }

  return result;
}

unint64_t sub_23BAA38F0()
{
  result = qword_27E19E738;
  if (!qword_27E19E738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E740, &qword_23BBF5CE0);
    sub_23BAA39A8();
    sub_23B97B518(&qword_27E19E760, &qword_27E19E768, &qword_23BBF5D00, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E738);
  }

  return result;
}

unint64_t sub_23BAA39A8()
{
  result = qword_27E19E748;
  if (!qword_27E19E748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E750, &qword_23BBF5CE8);
    sub_23B97B518(&qword_27E19E758, &qword_27E19C4E0, &unk_23BBF5CF0, &protocol conformance descriptor for SubscriptionStoreView<A>);
    sub_23B97B518(qword_27E19B460, &qword_27E19B458, &qword_23BBEC940, &unk_23BBECA8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E748);
  }

  return result;
}

uint64_t sub_23BAA3A8C()
{
  v1 = type metadata accessor for NoCodeOfferView(0);
  OUTLINED_FUNCTION_57();
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  v4 = v0 + ((v3 + 32) & ~v3);
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_12_1();
  (*(v5 + 8))(v4);
  v6 = v1[5];
  sub_23BBDCB58();
  OUTLINED_FUNCTION_12_1();
  (*(v7 + 8))(v4 + v6);
  v8 = v1[6];
  sub_23BBDCC88();
  OUTLINED_FUNCTION_12_1();
  (*(v9 + 8))(v4 + v8);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_38_2();
  v10 = v1[10];
  v11 = sub_23BBDC838();
  if (!OUTLINED_FUNCTION_47_2(v11))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v12 + 8))(v4 + v10, v8);
  }

  v13 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199750, &unk_23BBF5AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBD9E48();
    OUTLINED_FUNCTION_12_1();
    (*(v14 + 8))(v4 + v13);
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

uint64_t sub_23BAA3C78()
{
  OUTLINED_FUNCTION_4_11();
  v1 = type metadata accessor for NoCodeOfferView(0);
  OUTLINED_FUNCTION_13_0(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_18(v6);
  *v7 = v8;
  v7[1] = sub_23BA027BC;

  return sub_23BAA13A0(v4, v5, v0 + v3);
}

uint64_t sub_23BAA3D74()
{
  OUTLINED_FUNCTION_4_11();
  v2 = v1;
  v3 = type metadata accessor for NoCodeOfferView(0);
  OUTLINED_FUNCTION_13_0(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_18(v6);
  *v7 = v8;
  v7[1] = sub_23B9F36B4;

  return sub_23BAA01E4(v2, v0 + v5);
}

uint64_t objectdestroy_57Tm()
{
  v1 = type metadata accessor for NoCodeOfferView(0);
  OUTLINED_FUNCTION_57();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_12_1();
  (*(v4 + 8))(v3);
  v5 = v1[5];
  sub_23BBDCB58();
  OUTLINED_FUNCTION_12_1();
  (*(v6 + 8))(v3 + v5);
  v7 = v1[6];
  sub_23BBDCC88();
  OUTLINED_FUNCTION_12_1();
  (*(v8 + 8))(v3 + v7);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_38_2();
  v9 = v1[10];
  v10 = sub_23BBDC838();
  if (!OUTLINED_FUNCTION_47_2(v10))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v11 + 8))(v3 + v9, v7);
  }

  v12 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199750, &unk_23BBF5AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBD9E48();
    OUTLINED_FUNCTION_12_1();
    (*(v13 + 8))(v3 + v12);
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

uint64_t sub_23BAA4034()
{
  OUTLINED_FUNCTION_4_11();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for NoCodeOfferView(0);
  OUTLINED_FUNCTION_13_0(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4_18(v8);
  *v9 = v10;
  v9[1] = sub_23B9F3414;

  return sub_23BAA1014(v4, v2, v0 + v7);
}

unint64_t sub_23BAA4118()
{
  result = qword_27E19E7B8;
  if (!qword_27E19E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E7B8);
  }

  return result;
}

uint64_t sub_23BAA416C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BAA41D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E6D0, &qword_23BBF5C70);
  sub_23BAA3480();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BAA4238()
{
  v0 = OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_23B97B518(&qword_27E19E7D8, &qword_27E197898, &qword_23BBE38E0, MEMORY[0x277CDDA18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_3_25(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_8_25(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;
  *v2 = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_10_15(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_23B9FC890(sub_23BAA2774, v2, v3);
}

uint64_t OUTLINED_FUNCTION_15_17()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_16_11()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_26_5(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;

  sub_23BA9EE88(a1);
}

uint64_t OUTLINED_FUNCTION_33_3(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_38_2()
{
}

void OUTLINED_FUNCTION_40_4()
{

  JUMPOUT(0x23EEB5890);
}

uint64_t OUTLINED_FUNCTION_47_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t sub_23BAA4628@<X0>(char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v9 = sub_23BBDB038();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0uLL;
  v14 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_23BBD9B18();
    *(&v13 + 1) = v15;
    *(&v14 + 1) = v16;
  }

  v20[0] = v13;
  v20[1] = v14;
  v21 = a3 & 1;
  sub_23BBDB028();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E898, &qword_23BBF6258);
  (*(*(v17 - 8) + 16))(a4, v6, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E8A0, &unk_23BBF6260);
  return (*(v10 + 32))(a4 + *(v18 + 36), v12, v9);
}

uint64_t sub_23BAA47A4@<X0>(char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v9 = sub_23BBDB038();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v15 = v14 - v13;
  if ((a3 & 1) == 0)
  {
    sub_23BBD9B18();
  }

  sub_23BBDB028();
  sub_23B9A721C(v6, a4, &qword_27E19E9C8, &qword_23BBF7480);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E9D0, &unk_23BBF6430);
  return (*(v11 + 32))(a4 + *(v16 + 36), v15, v9);
}

uint64_t sub_23BAA48E0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  type metadata accessor for SubscriptionStoreStandardButtonsSectionView(0, a2, a3, v8);
  return a1();
}

uint64_t sub_23BAA4958@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v4 = sub_23BBDA928();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E980, &qword_23BBF6378);
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x28223BE20](v12);
  v58 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  (*(v8 + 16))(v11, v2 + *(a1 + 36), v7, v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E988, &qword_23BBF6380);
  v19 = sub_23BBDC208();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E990, &qword_23BBF6388);
  v21 = sub_23BAA89FC();
  *&v65 = v19;
  *(&v65 + 1) = MEMORY[0x277CE1350];
  *&v66 = v19;
  *(&v66 + 1) = v20;
  *&v67 = MEMORY[0x277CE12C8];
  *(&v67 + 1) = MEMORY[0x277CE1340];
  *&v68 = MEMORY[0x277CE12C8];
  *(&v68 + 1) = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x23EEB4950](v11, sub_23BAA5010, 0, v18, v7, OpaqueTypeConformance2, *(a1 + 24));
  sub_23BAA50D4(&v88);
  KeyPath = swift_getKeyPath();
  v57 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  v55 = swift_getKeyPath();
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v23 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_23BBDD5A8();
    v27 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v23, 0);
    (*(v53 + 8))(v6, v54);
    if (v80 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    *&v61[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E9B8, &qword_23BBFF310);
    sub_23BBDBF58();
    v24 = *(&v65 + 1);
    v26 = v65;
    v48 = swift_getKeyPath();
    v47 = swift_getKeyPath();
    v54 = swift_getKeyPath();
    v28 = swift_getKeyPath();
    LOBYTE(v65) = 0;
    LOBYTE(v61[0]) = 0;
    LOBYTE(v63[0]) = 0;
    LOBYTE(v62[0]) = 0;
    v53 = 0;
    v25 = 1;
    v49 = 0;
    v50 = v28;
    goto LABEL_6;
  }

  v80 = v23 & 1;
  if (v23)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24 = 0;
  v47 = 0;
  v48 = 0;
  v53 = 0;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v25 = 0;
  v26 = 1;
LABEL_6:
  v45 = 0;
  v46 = v17;
  v29 = v58;
  v30 = *(v59 + 16);
  v31 = v17;
  v32 = v60;
  v30(v58, v31, v60);
  v33 = v51;
  v30(v51, v29, v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E9A0, &qword_23BBF6390);
  v35 = *(v34 + 48);
  v61[0] = v88;
  v61[1] = v89;
  v61[2] = v90;
  v61[3] = v91;
  *&v61[4] = KeyPath;
  BYTE8(v61[4]) = 0;
  *(&v61[4] + 9) = *v87;
  HIDWORD(v61[4]) = *&v87[3];
  *&v61[5] = v57;
  BYTE8(v61[5]) = 0;
  HIDWORD(v61[5]) = *&v86[3];
  *(&v61[5] + 9) = *v86;
  *&v61[6] = v56;
  BYTE8(v61[6]) = 0;
  *(&v61[6] + 9) = *v85;
  HIDWORD(v61[6]) = *&v85[3];
  *&v61[7] = v55;
  BYTE8(v61[7]) = 0;
  memcpy(&v33[v35], v61, 0x79uLL);
  v36 = *(v34 + 64);
  v44 = v25;
  v62[0] = v25;
  v62[1] = v26;
  v37 = v47;
  v38 = v48;
  v62[2] = v24;
  v62[3] = v48;
  v62[4] = v53;
  v62[5] = v47;
  v62[6] = 0;
  v62[7] = v54;
  v39 = v49;
  v40 = v50;
  v62[8] = v49;
  v62[9] = v50;
  LOBYTE(v62[10]) = 0;
  memcpy(&v33[v36], v62, 0x51uLL);
  sub_23B9A721C(v61, &v65, &qword_27E19E9A8, &qword_23BBF6398);
  sub_23B9A721C(v62, &v65, &qword_27E19E9B0, &unk_23BBF63A0);
  v41 = *(v59 + 8);
  v41(v46, v60);
  v63[0] = v44;
  v63[1] = v26;
  v63[2] = v24;
  v63[3] = v38;
  v63[4] = v53;
  v63[5] = v37;
  v63[6] = v45;
  v63[7] = v54;
  v63[8] = v39;
  v63[9] = v40;
  v64 = 0;
  sub_23B979910(v63, &qword_27E19E9B0, &unk_23BBF63A0);
  v65 = v88;
  v66 = v89;
  v67 = v90;
  v68 = v91;
  v69 = KeyPath;
  v70 = 0;
  *v71 = *v87;
  *&v71[3] = *&v87[3];
  v72 = v57;
  v73 = 0;
  *&v74[3] = *&v86[3];
  *v74 = *v86;
  v75 = v56;
  v76 = 0;
  *v77 = *v85;
  *&v77[3] = *&v85[3];
  v78 = v55;
  v79 = 0;
  sub_23B979910(&v65, &qword_27E19E9A8, &qword_23BBF6398);
  return (v41)(v58, v60);
}

uint64_t sub_23BAA5010(uint64_t a1)
{
  sub_23BBDC2B8();
  sub_23BBDC208();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E990, &qword_23BBF6388);
  sub_23BAA89FC();
  return sub_23BBDBC48();
}

uint64_t sub_23BAA50D4@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_23BBDBF58();
  v4 = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v4;
  *(a1 + 56) = 0;
  j__swift_retain_1();
  sub_23BA52D18(v3, 0);

  sub_23BA52D18(v4, 0);

  sub_23B97B5C0(v4, 0);
  j__swift_release(KeyPath);
  return sub_23B97B5C0(v3, 0);
}

double sub_23BAA51DC(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  KeyPath = swift_getKeyPath();
  v6 = 0;
  v7 = swift_getKeyPath();
  v8 = 0;
  v9 = swift_getKeyPath();
  v10 = 0;
  v11 = swift_getKeyPath();
  v12 = 0;
  MEMORY[0x23EEB43C0](&KeyPath, a1, &type metadata for AuxiliaryButtonsStyleModifier, a2);

  return result;
}

void sub_23BAA52D0()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v50 = v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E908, &qword_23BBF6328);
  OUTLINED_FUNCTION_7();
  v47 = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E910, &qword_23BBF6330);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = *(v2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E918, &qword_23BBF6338);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E920, &qword_23BBF6340);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  if (qword_27E1977E0 != -1)
  {
    swift_once();
  }

  if (byte_27E1A04D0 == 1 || byte_27E1A04D0 == 3 && (storekit_dyld_fall_2024_os_versions(), dyld_program_sdk_at_least()))
  {
    sub_23BAA4958(v2, v16);
    (*(v11 + 16))(&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v2);
    v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = *(v2 + 16);
    (*(v11 + 32))(v21 + v20, &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E958, &qword_23BBF6360);
    OUTLINED_FUNCTION_4_21();
    sub_23B97B518(v22, v23, v24, v25);
    sub_23BAA8898();
    sub_23BBDBE08();
    sub_23B9A721C(v19, v10, &qword_27E19E920, &qword_23BBF6340);
    swift_storeEnumTagMultiPayload();
    sub_23BAA8658();
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E948, &unk_23BBF6350);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F10, &qword_23BBE70F8);
    OUTLINED_FUNCTION_3_26();
    v30 = sub_23B97B518(v28, &qword_27E19E948, &unk_23BBF6350, v29);
    OUTLINED_FUNCTION_1_36();
    v33 = sub_23B97B518(v31, &qword_27E198F10, &qword_23BBE70F8, v32);
    v52 = v26;
    v53 = v27;
    v54 = v30;
    v55 = v33;
    OUTLINED_FUNCTION_6_19();
    sub_23BBDACD8();
    sub_23B979910(v19, &qword_27E19E920, &qword_23BBF6340);
  }

  else
  {
    sub_23BAA4958(v2, v16);
    OUTLINED_FUNCTION_4_21();
    sub_23B97B518(v34, &qword_27E19E918, &qword_23BBF6338, v35);
    sub_23BAA59A4();
    sub_23B979910(v16, &qword_27E19E918, &qword_23BBF6338);
    v36 = v47;
    v37 = v51;
    (*(v47 + 16))(v10, v7, v51);
    swift_storeEnumTagMultiPayload();
    v48 = sub_23BAA8658();
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E948, &unk_23BBF6350);
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F10, &qword_23BBE70F8);
    OUTLINED_FUNCTION_3_26();
    v42 = sub_23B97B518(v40, &qword_27E19E948, &unk_23BBF6350, v41);
    OUTLINED_FUNCTION_1_36();
    v45 = sub_23B97B518(v43, &qword_27E198F10, &qword_23BBE70F8, v44);
    v52 = v38;
    v53 = v39;
    v54 = v42;
    v55 = v45;
    OUTLINED_FUNCTION_6_19();
    sub_23BBDACD8();
    (*(v36 + 8))(v7, v37);
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAA5830@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E978, &qword_23BBF6370);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  if (sub_23BA20C8C(v9))
  {

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v7);
  }

  else
  {
    type metadata accessor for SubscriptionStoreStandardButtonsSectionView(0, a2, a3, v12);
    sub_23BBDAA98();
    sub_23BAA59A4();
    (*(v8 + 32))(a4, v11, v7);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v7);
  }
}

void sub_23BAA59A4()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v24[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F10, &qword_23BBE70F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = sub_23BBDC078();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  v17 = v24 - v16;
  sub_23BBDC2A8();
  v18 = *(v5 + 24);
  v24[4] = *(v5 + 16);
  v24[5] = v3;
  v24[6] = v18;
  v24[7] = v1;
  v24[8] = v7;
  sub_23B9BE15C(v3);
  sub_23BBDC068();
  v19 = *MEMORY[0x277CDF9A8];
  v20 = sub_23BBDA308();
  OUTLINED_FUNCTION_4_1();
  (*(v21 + 104))(v11, v19, v20);
  sub_23BAA91C4(&qword_27E198F50, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  if (sub_23BBDCF38())
  {
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_36();
    sub_23B97B518(v22, &qword_27E198F10, &qword_23BBE70F8, v23);
    sub_23BBDB898();
    sub_23B979910(v11, &qword_27E198F10, &qword_23BBE70F8);
    (*(v14 + 8))(v17, v12);
    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23BAA5C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v4 + 8))(v6, a3);
}

uint64_t sub_23BAA5D18(double a1)
{
  v1 = sub_23BBDAD08();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDA568();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E7E0, &qword_23BBF5FC0);
  sub_23B97B518(qword_27E19E7E8, &qword_27E19E7E0, &qword_23BBF5FC0, MEMORY[0x277CE04B0]);
  sub_23BAA91C4(&qword_27E197F30, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  sub_23BBDB758();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_23BAA5E94()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_23BBDC2A8())
  {
    v13 = *(v0 + 24);
    v5 = v0[2];
    v12 = v5;
    if (v13 == 1)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      sub_23BBDD5A8();
      v6 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B979910(&v12, &qword_27E19CC48, &qword_23BBF0C70);
      (*(v2 + 8))(v4, v1);
      if (v10 != 1)
      {
        return 0;
      }
    }

    v11 = *(v0 + 8);
    v10 = *v0;
    if (v11 != 1)
    {

      sub_23BBDD5A8();
      v7 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B979910(&v10, &qword_27E19E900, &qword_23BBF6320);
      (*(v2 + 8))(v4, v1);
    }
  }

  return 0;
}

uint64_t sub_23BAA60DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v70 = a1;
  v77 = a2;
  v60 = sub_23BBDA928();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E870, &qword_23BBF6230);
  v62 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v71 = &v58 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E878, &qword_23BBF6238);
  MEMORY[0x28223BE20](v67);
  v68 = &v58 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E880, &qword_23BBF6240);
  MEMORY[0x28223BE20](v76);
  v66 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v58 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E888, &qword_23BBF6248);
  MEMORY[0x28223BE20](v74);
  v75 = &v58 - v11;
  v12 = sub_23BBDB588();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v61 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v18 = type metadata accessor for StoreKitProminentButtonStyle(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E890, &qword_23BBF6250);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E898, &qword_23BBF6258);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v25 = &v58 - v24;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E8A0, &unk_23BBF6260);
  MEMORY[0x28223BE20](v73);
  v64 = &v58 - v26;
  v27 = sub_23BBDC2A8();
  v72 = v3;
  if ((v27 & 1) == 0)
  {
    v65 = v5;
    v82 = *(v3 + 40);
    v38 = *(v3 + 32);
    v81 = v38;
    if (v82)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E8B0, &qword_23BBF6270);
      sub_23B97B518(&qword_27E19E8B8, &qword_27E19E8B0, &qword_23BBF6270, MEMORY[0x277CE04B0]);
      sub_23BBDBAB8();
      v39 = v38;
    }

    else
    {

      sub_23BBDD5A8();
      v40 = sub_23BBDB338();
      sub_23BBD9978();

      v41 = v58;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B979910(&v81, &qword_27E19E8A8, &qword_23BC01C30);
      v42 = *(v59 + 8);
      v43 = v60;
      v42(v41, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E8B0, &qword_23BBF6270);
      sub_23B97B518(&qword_27E19E8B8, &qword_27E19E8B0, &qword_23BBF6270, MEMORY[0x277CE04B0]);
      sub_23BBDBAB8();

      sub_23BBDD5A8();
      v44 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B979910(&v81, &qword_27E19E8A8, &qword_23BC01C30);
      v42(v41, v43);
      v39 = v79;
    }

    if ((v39 & 0xFE) == 2)
    {
      v80 = *(v72 + 56);
      v45 = *(v72 + 48);
      v79 = v45;
      v46 = v80;

      if ((v46 & 1) == 0)
      {
        sub_23BBDD5A8();
        v47 = sub_23BBDB338();
        sub_23BBD9978();

        v48 = v58;
        sub_23BBDA918();
        swift_getAtKeyPath();
        sub_23B979910(&v79, &qword_27E19E8F8, &qword_23BBF62B8);
        (*(v59 + 8))(v48, v60);
        v45 = v78;
      }

      KeyPath = swift_getKeyPath();
      if (!v45)
      {
        v50 = 0;
LABEL_15:
        v51 = v62;
        v52 = v68;
        v53 = v71;
        v54 = v65;
        (*(v62 + 16))(v68, v71, v65);

        v55 = (v52 + *(v67 + 36));
        *v55 = KeyPath;
        v55[1] = v50;
        (*(v51 + 8))(v53, v54);
        v56 = v66;
        sub_23B9A71D0(v52, v66, &qword_27E19E878, &qword_23BBF6238);
        v36 = &qword_27E19E880;
        v37 = &qword_23BBF6240;
        v35 = v69;
        sub_23B9A71D0(v56, v69, &qword_27E19E880, &qword_23BBF6240);
        sub_23B9A721C(v35, v75, &qword_27E19E880, &qword_23BBF6240);
        goto LABEL_16;
      }
    }

    else
    {
      v45 = sub_23BBDBD68();
      KeyPath = swift_getKeyPath();
    }

    v78 = v45;

    v50 = sub_23BBD9DF8();
    goto LABEL_15;
  }

  v28 = sub_23BBDB578();
  v29 = swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E8B0, &qword_23BBF6270);
  (*(*(v30 - 8) + 16))(v23, v70, v30);
  v31 = &v23[*(v21 + 36)];
  *v31 = v29;
  v31[1] = v28;
  v32 = swift_getKeyPath();
  LOBYTE(v79) = 0;
  *v20 = v32;
  v20[73] = 0;
  (*(v13 + 104))(v17, *MEMORY[0x277CE0AC0], v12);
  if (qword_27E197708 != -1)
  {
    swift_once();
  }

  v81 = qword_27E1BFCB0;
  (*(v13 + 16))(v61, v17, v12);
  sub_23B974940();
  sub_23BBD9D18();
  (*(v13 + 8))(v17, v12);
  v20[*(v18 + 24)] = 1;
  v20[*(v18 + 28)] = 0;
  sub_23BAA835C();
  sub_23BAA91C4(&qword_27E198BD8, type metadata accessor for StoreKitProminentButtonStyle, &unk_23BC03CEC);
  sub_23BBDB738();
  sub_23B9A1B00(v20, v33);
  sub_23B979910(v23, &qword_27E19E890, &qword_23BBF6250);
  sub_23BBDB388();
  sub_23BAA5E94();
  v35 = v64;
  sub_23BAA4628(v34 & 1, v64);
  (*(v63 + 8))(v25, v65);
  v36 = &qword_27E19E8A0;
  v37 = &unk_23BBF6260;
  sub_23B9A721C(v35, v75, &qword_27E19E8A0, &unk_23BBF6260);
LABEL_16:
  swift_storeEnumTagMultiPayload();
  sub_23BAA8214();
  sub_23BAA8440();
  sub_23BBDACD8();
  return sub_23B979910(v35, v36, v37);
}

double sub_23BAA6C3C()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E9F8, &qword_23BBF66C8);
  sub_23B97B518(&qword_27E19EA00, &qword_27E19E9F8, &qword_23BBF66C8, MEMORY[0x277CE04B0]);
  sub_23B9898BC();
  sub_23BBDB728();

  return result;
}

void sub_23BAA6D50()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v46 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA08, &unk_23BBF66D0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1983A0, &qword_23BBE5320);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v44 = &v42 - v14;
  v15 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  v43 = v9;
  if (v1)
  {
    if ((v3 & 1) == 0)
    {
LABEL_3:
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA10, &unk_23BBF66E0);
      v23 = v46;
      v24 = 1;
      goto LABEL_10;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v25 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    OUTLINED_FUNCTION_17_0();
    swift_getAtKeyPath();
    sub_23B97B5C0(v3, 0);
    (*(v17 + 8))(v21, v15);
    if (v47 != 1)
    {
      goto LABEL_3;
    }
  }

  v26 = swift_allocObject();
  v27 = v7 & 1;
  *(v26 + 16) = v7 & 1;
  *(v26 + 24) = v5;
  *(v26 + 32) = v3;
  *(v26 + 40) = v1 & 1;
  sub_23BA52D18(v3, v1 & 1);

  sub_23BBDBFA8();
  LOBYTE(v47) = v7 & 1;
  v48 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  sub_23BBDBF68();
  v28 = v50[0];
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA18, &qword_23BBF6720) + 36)];
  *v31 = KeyPath;
  v31[1] = sub_23B989418;
  v31[2] = v30;
  v32 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA20, &qword_23BBF6728) + 36)];
  if (qword_27E197748 != -1)
  {
    swift_once();
  }

  type metadata accessor for CanMakePaymentsCache(0);
  sub_23BAA91C4(&qword_27E1982E8, type metadata accessor for CanMakePaymentsCache, &unk_23BBEFE88);

  *v32 = sub_23BBDA0E8();
  v32[1] = v33;
  v34 = *(type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0) + 20);
  *(v32 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982F0, &unk_23BBEC890);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v50[0]) = v27;
  v51 = v5;
  sub_23BBDBF88();
  v35 = v47;
  v36 = v48;
  v37 = v49;
  v38 = swift_getKeyPath();
  v53 = 0;
  v52 = 0;
  v39 = &v12[*(v43 + 36)];
  *v39 = v38;
  v39[8] = 0;
  *(v39 + 9) = v47;
  *(v39 + 3) = *(&v47 + 3);
  *(v39 + 2) = v35;
  *(v39 + 3) = v36;
  v39[32] = v37;
  *(v39 + 33) = v50[0];
  *(v39 + 9) = *(v50 + 3);
  *(v39 + 5) = nullsub_1;
  *(v39 + 6) = 0;
  *(v39 + 7) = sub_23BA4293C;
  *(v39 + 8) = 0;
  v39[72] = v52;
  if (qword_27E197648 != -1)
  {
    OUTLINED_FUNCTION_8_26(&qword_27E197648);
  }

  sub_23BAA8EDC();

  v40 = v44;
  sub_23BBDBA28();

  sub_23B979910(v12, &qword_27E19EA08, &unk_23BBF66D0);
  sub_23BBDC2B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA40, &qword_23BBF6798);
  sub_23BAA9108();
  sub_23BAA920C();
  v41 = v46;
  sub_23BBDBC48();
  sub_23B979910(v40, &qword_27E1983A0, &qword_23BBE5320);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA10, &unk_23BBF66E0);
  v23 = v41;
  v24 = 0;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAA7394@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_23BAA7484()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v42 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982A0, qword_23BBEADC0);
  OUTLINED_FUNCTION_7();
  v39 = v10;
  v40 = v9;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1983A8, &qword_23BBF67A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v23 = v22 - v21;

  if ((v5 & 1) == 0)
  {
    sub_23BBDD5A8();
    v24 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_17(v24, &dword_23B970000, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v26, v27, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v7);
    (*(v19 + 8))(v23, v17);
    v7 = v44;
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  if (v1)
  {
    if ((v3 & 1) == 0)
    {
LABEL_6:

LABEL_7:
      v28 = 1;
      v29 = v42;
      goto LABEL_12;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v30 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_17(v30, &dword_23B970000, v31, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v32, v33, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v3, 0);
    (*(v19 + 8))(v23, v17);
    if (v43 != 1)
    {
      goto LABEL_6;
    }
  }

  v35 = *(v7 + 16);
  v34 = *(v7 + 24);
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v34;

  sub_23BBDBFA8();
  if (qword_27E197648 != -1)
  {
    OUTLINED_FUNCTION_8_26(&qword_27E197648);
  }

  sub_23B97B518(&qword_27E1982C8, &qword_27E1982A0, qword_23BBEADC0, MEMORY[0x277CDF028]);

  v37 = v40;
  sub_23BBDBA28();

  (*(v39 + 8))(v13, v37);
  sub_23BBDC2B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA60, &qword_23BBF67B0);
  sub_23BAA92D8();
  sub_23BAA93C0();
  v29 = v42;
  sub_23BBDBC48();

  sub_23B979910(v16, qword_27E1983A8, &qword_23BBF67A0);
  v28 = 0;
LABEL_12:
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA58, &qword_23BBF67A8);
  __swift_storeEnumTagSinglePayload(v29, v28, 1, v38);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAA78F8@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

BOOL sub_23BAA7A00()
{
  sub_23BA17678();
  sub_23BBDA958();
  return v1 == 1;
}

BOOL sub_23BAA7A44()
{
  sub_23BA17678();
  sub_23BBDA958();
  return v1 == 1;
}

BOOL sub_23BAA7A88()
{
  sub_23BA17678();
  sub_23BBDA958();
  if (v2)
  {
    return v2 == 1;
  }

  sub_23BAA8AEC();
  sub_23BBDA958();
  result = v1;
  if (v1)
  {

    return 1;
  }

  return result;
}

BOOL sub_23BAA7B1C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BAA7A00();
  *v0 = result;
  return result;
}

uint64_t sub_23BAA7B60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BAA7BA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_23BAA7C04(uint64_t a1)
{
  sub_23B9D2354();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BAA7C8C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFE)
  {
    v8 = 254;
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

  v10 = ((v7 + 9) & ~v7) + *(*(v4 - 8) + 64);
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
      if (v6 > 0xFE)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 9) & ~v7, v6, v4);
      }

      v16 = *(a1 + 8);
      if (v16 > 1)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
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

void sub_23BAA7E1C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 9) & ~v10) + *(*(v6 - 8) + 64);
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

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
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
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x23BAA8074);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v8 > 0xFE)
        {
          v21 = &a1[v10 + 9] & ~v10;

          __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
        }

        else if (a2 > 0xFE)
        {
          a1[8] = 0;
          *a1 = (a2 - 255);
        }

        else
        {
          a1[8] = -a2;
        }
      }

      return;
  }
}

uint64_t sub_23BAA809C()
{
  v0 = OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_23BBDAD08();
  OUTLINED_FUNCTION_5_25(qword_27E19E7E8);
  sub_23BAA91C4(&qword_27E197F30, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BAA81BC()
{
  OUTLINED_FUNCTION_13_1();
  result = MEMORY[0x23EEB3000]();
  *v0 = result;
  return result;
}

unint64_t sub_23BAA8214()
{
  result = qword_27E19E8C0;
  if (!qword_27E19E8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E8A0, &unk_23BBF6260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E890, &qword_23BBF6250);
    type metadata accessor for StoreKitProminentButtonStyle(255);
    sub_23BAA835C();
    sub_23BAA91C4(&qword_27E198BD8, type metadata accessor for StoreKitProminentButtonStyle, &unk_23BC03CEC);
    swift_getOpaqueTypeConformance2();
    sub_23BAA91C4(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E8C0);
  }

  return result;
}

unint64_t sub_23BAA835C()
{
  result = qword_27E19E8C8;
  if (!qword_27E19E8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E890, &qword_23BBF6250);
    sub_23B97B518(&qword_27E19E8B8, &qword_27E19E8B0, &qword_23BBF6270, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E198388, &qword_27E198390, qword_23BBE52B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E8C8);
  }

  return result;
}

unint64_t sub_23BAA8440()
{
  result = qword_27E19E8D0;
  if (!qword_27E19E8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E880, &qword_23BBF6240);
    sub_23BAA84CC();
    sub_23BAA85F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E8D0);
  }

  return result;
}

unint64_t sub_23BAA84CC()
{
  result = qword_27E19E8D8;
  if (!qword_27E19E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E878, &qword_23BBF6238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E8B0, &qword_23BBF6270);
    sub_23B97B518(&qword_27E19E8B8, &qword_27E19E8B0, &qword_23BBF6270, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E19E8E0, &qword_27E19E8E8, &qword_23BBF62B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E8D8);
  }

  return result;
}

unint64_t sub_23BAA85F4()
{
  result = qword_27E19E8F0;
  if (!qword_27E19E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E8F0);
  }

  return result;
}

unint64_t sub_23BAA8658()
{
  result = qword_27E19E930;
  if (!qword_27E19E930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E920, &qword_23BBF6340);
    sub_23B97B518(&qword_27E19E938, &qword_27E19E940, &qword_23BBF6348, MEMORY[0x277CE04D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E930);
  }

  return result;
}

uint64_t sub_23BAA8708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for SubscriptionStoreStandardButtonsSectionView(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  sub_23B97B5C0(*(v4 + v7), *(v4 + v7 + 8));
  (*(*(v5 - 8) + 8))(v4 + v7 + v6[11], v5);

  return swift_deallocObject();
}

uint64_t sub_23BAA87FC@<X0>(uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  type metadata accessor for SubscriptionStoreStandardButtonsSectionView(0, v5, v6, a2);

  return sub_23BAA5830(v5, v6, a3);
}

unint64_t sub_23BAA8898()
{
  result = qword_27E19E960;
  if (!qword_27E19E960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E958, &qword_23BBF6360);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E968, &qword_23BBF6368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F10, &qword_23BBE70F8);
    sub_23B97B518(&qword_27E19E970, &qword_27E19E968, &qword_23BBF6368, MEMORY[0x277CE1198]);
    sub_23B97B518(&qword_27E198F80, &qword_27E198F10, &qword_23BBE70F8, MEMORY[0x277D84348]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E960);
  }

  return result;
}

unint64_t sub_23BAA89FC()
{
  result = qword_27E19E998;
  if (!qword_27E19E998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E990, &qword_23BBF6388);
    sub_23B9892EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E998);
  }

  return result;
}

BOOL sub_23BAA8A90()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BAA7A88();
  *v0 = result;
  return result;
}

BOOL sub_23BAA8ABC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BAA7A44();
  *v0 = result;
  return result;
}

unint64_t sub_23BAA8AEC()
{
  result = qword_27E19E9C0;
  if (!qword_27E19E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E9C0);
  }

  return result;
}

uint64_t sub_23BAA8B50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BAA8BA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23BAA8C20()
{
  result = qword_27E19E9D8;
  if (!qword_27E19E9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E9E0, &qword_23BBF65C8);
    sub_23BAA8214();
    sub_23BAA8440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E9D8);
  }

  return result;
}

unint64_t sub_23BAA8CB0()
{
  result = qword_27E19E9E8;
  if (!qword_27E19E9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E9F0, qword_23BBF65D0);
    sub_23BAA8658();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E948, &unk_23BBF6350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F10, &qword_23BBE70F8);
    sub_23B97B518(&qword_27E19E950, &qword_27E19E948, &unk_23BBF6350, MEMORY[0x277CE1198]);
    sub_23B97B518(&qword_27E198F80, &qword_27E198F10, &qword_23BBE70F8, MEMORY[0x277D84348]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E9E8);
  }

  return result;
}

uint64_t sub_23BAA8E60()
{

  sub_23B97B5C0(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_23BAA8EDC()
{
  result = qword_27E19EA28;
  if (!qword_27E19EA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA08, &unk_23BBF66D0);
    sub_23BAA8F68();
    sub_23BA44198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA28);
  }

  return result;
}

unint64_t sub_23BAA8F68()
{
  result = qword_27E19EA30;
  if (!qword_27E19EA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA20, &qword_23BBF6728);
    sub_23BAA9024();
    sub_23BAA91C4(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier, &unk_23BBEFFCC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA30);
  }

  return result;
}

unint64_t sub_23BAA9024()
{
  result = qword_27E19EA38;
  if (!qword_27E19EA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA18, &qword_23BBF6720);
    sub_23B97B518(&qword_27E1982C8, &qword_27E1982A0, qword_23BBEADC0, MEMORY[0x277CDF028]);
    sub_23B97B518(&qword_27E198308, &qword_27E198310, &unk_23BBE5200, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA38);
  }

  return result;
}

unint64_t sub_23BAA9108()
{
  result = qword_27E19EA48;
  if (!qword_27E19EA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1983A0, &qword_23BBE5320);
    sub_23BAA8EDC();
    sub_23BAA91C4(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA48);
  }

  return result;
}

uint64_t sub_23BAA91C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23BAA920C()
{
  result = qword_27E19EA50;
  if (!qword_27E19EA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA40, &qword_23BBF6798);
    sub_23BAA9108();
    sub_23B9892EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA50);
  }

  return result;
}

uint64_t sub_23BAA9298()
{

  return swift_deallocObject();
}

unint64_t sub_23BAA92D8()
{
  result = qword_27E19EA68;
  if (!qword_27E19EA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1983A8, &qword_23BBF67A0);
    sub_23B97B518(&qword_27E1982C8, &qword_27E1982A0, qword_23BBEADC0, MEMORY[0x277CDF028]);
    sub_23BAA91C4(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA68);
  }

  return result;
}

unint64_t sub_23BAA93C0()
{
  result = qword_27E19EA70;
  if (!qword_27E19EA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA60, &qword_23BBF67B0);
    sub_23BAA92D8();
    sub_23B9892EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA70);
  }

  return result;
}

uint64_t sub_23BAA944C()
{
  v0 = OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  OUTLINED_FUNCTION_5_25(&qword_27E19EA00);
  sub_23B9898BC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23BAA94DC()
{
  result = qword_27E19EA78;
  if (!qword_27E19EA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA80, &qword_23BBF67B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1983A0, &qword_23BBE5320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA40, &qword_23BBF6798);
    sub_23BAA9108();
    sub_23BAA920C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA78);
  }

  return result;
}

unint64_t sub_23BAA95E4()
{
  result = qword_27E19EA88;
  if (!qword_27E19EA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA90, &unk_23BBF67C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1983A8, &qword_23BBF67A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA60, &qword_23BBF67B0);
    sub_23BAA92D8();
    sub_23BAA93C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_25(unint64_t *a1)
{
  v4 = MEMORY[0x277CE04B0];

  return sub_23B97B518(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_6_19()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_23BBD9978();
}

uint64_t LargeProductViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ProductViewStyleConfiguration(0);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23BA0EFA4(a1, v9, v7);
  sub_23B998028(v9, 0, a2);
  v10 = *(a1 + *(v6 + 36));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA98, &qword_23BBF67D0);
  *(a2 + v11[9]) = v10;
  v12 = v11[10];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
  swift_storeEnumTagMultiPayload();
  v13 = a2 + v11[11];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EAA0, &unk_23BBFD0A0) + 36);
  sub_23BA0EFA4(a1, v14, v15);
  v16 = *(type metadata accessor for ConfigureProductViewEnvironmentViewModifier(0) + 20);
  *&v14[v16] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
}

_BYTE *storeEnumTagSinglePayload for LargeProductViewStyle(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23BAA9A38);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23BAA9A74()
{
  result = qword_27E19EAA8;
  if (!qword_27E19EAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EAA0, &unk_23BBFD0A0);
    sub_23BAA9B00();
    sub_23B9AABBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EAA8);
  }

  return result;
}

unint64_t sub_23BAA9B00()
{
  result = qword_27E19EAB0;
  if (!qword_27E19EAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA98, &qword_23BBF67D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EAB0);
  }

  return result;
}

char *sub_23BAA9BB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  OUTLINED_FUNCTION_2_27();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GradientBlurView.PlatformViewType(0, v4, *(v10 + 24), v11);
  (*(v6 + 16))(v9, v2, v4);
  return sub_23BAA9C94(v9, *(v2 + *(a2 + 36)));
}

void sub_23BAA9D0C(uint64_t a1, double a2)
{
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v17 - v4, v3);
  sub_23BBD9EE8();
  v6 = sub_23BBD9EA8();
  if (v6)
  {
    v7 = v6;
    v8 = sub_23BAAA584();
    if (v8)
    {

      v9 = sub_23BAAA584();
      if (v9)
      {
        v10 = v9;
        sub_23BAAA820(a2);
      }

      v11 = sub_23BAAA584();
      if (v11)
      {
        v12 = v11;
        v13 = v7;
        sub_23BAAA890(v7);
      }

      sub_23BAAA904();
    }

    else
    {
      type metadata accessor for VariableBlurFilter();
      v7 = v7;
      v16 = sub_23BAAA664(v7, 1, 0, a2);
      sub_23BAAA708(v16);
    }
  }

  else
  {
    v14 = sub_23BAAA584();
    if (v14)
    {
      v15 = v14;
      sub_23BAAA820(a2);
    }

    sub_23BAAA904();
  }
}

uint64_t sub_23BAA9F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_23BAA9F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_23BAAA008(uint64_t a1)
{
  swift_getWitnessTable();
  sub_23BBDAC88();
  __break(1u);
}

char *sub_23BAAA048(uint64_t a1, double a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  OUTLINED_FUNCTION_2_27();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  *&v3[qword_27E19EAC0] = 0;
  sub_23BBD9EF8();
  (*(v9 + 16))(v12, a1, v7);
  *&v3[qword_27E19EAB8] = MEMORY[0x23EEB26B0](v12);
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = [v13 layer];
  [v14 setMasksToBounds_];

  sub_23BAA9D0C(a1, a2);
  sub_23BAAA230();
  v16 = v15;
  (*(v9 + 8))(a1, v7);
  *&v13[qword_27E19EAC0] = v16;

  return v13;
}

void sub_23BAAA230()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23BBDD308();

  v8 = sub_23BBDD2F8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = *((v2 & v1) + 0x58);
  v9[5] = *((v2 & v1) + 0x60);
  v9[6] = v7;

  sub_23BB5D2B8();
}

uint64_t sub_23BAAA3A8(void *a1)
{
  swift_getObjectType();

  *(v1 + qword_27E19EAC0) = 0;
  swift_deallocPartialClassInstance();
  return 0;
}

double sub_23BAAA430()
{

  return result;
}

id sub_23BAAA470()
{
  ObjectType = swift_getObjectType();
  v2 = qword_27E19EAC0;
  if (*&v0[qword_27E19EAC0])
  {

    sub_23BBDD378();
  }

  *&v0[v2] = 0;

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_23BAAA538()
{

  return result;
}

uint64_t sub_23BAAA584()
{
  v1 = [v0 layer];
  v2 = [v1 filters];

  if (!v2)
  {
    v6 = 0u;
    v7 = 0u;
    goto LABEL_7;
  }

  v3 = sub_23BBDD248();

  sub_23BAC78F4(v3, &v6);

  if (!*(&v7 + 1))
  {
LABEL_7:
    sub_23B9F4DFC(&v6);
    return 0;
  }

  type metadata accessor for VariableBlurFilter();
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

id sub_23BAAA664(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = [v7 initWithType_];
  sub_23BAAA820(a4);
  v9 = a1;
  sub_23BAAA890(a1);
  sub_23BAAB324();
  sub_23BAAB394();

  return v8;
}

void sub_23BAAA708(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = [v2 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A438, &qword_23BBEB4F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_23BBE7F10;
    *(v5 + 56) = type metadata accessor for VariableBlurFilter();
    *(v5 + 32) = a1;
    v6 = a1;
    v7 = sub_23BBDD238();

    [v4 setFilters_];
  }

  else
  {
    v7 = [v1 layer];
    [v7 setFilters_];
  }
}

void sub_23BAAA820(double a1)
{
  sub_23BBD9878();
  OUTLINED_FUNCTION_1_37();
  sub_23BBDCFE8();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_4_22(v2, sel_setValue_forKey_);
}

void sub_23BAAA890(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_1_37();
  sub_23BBDCFE8();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_4_22(v3, sel_setValue_forKey_);
}

void sub_23BAAA904()
{
  v1 = sub_23BAAA584();
  if (v1)
  {
    v2 = v1;
    v3 = [v0 layer];
    [v3 setFilters_];

    v4 = [v0 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A438, &qword_23BBEB4F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_23BBE7F10;
    *(v5 + 56) = type metadata accessor for VariableBlurFilter();
    *(v5 + 32) = v2;
    v6 = v2;
    v7 = sub_23BBDD238();

    [v4 setFilters_];
  }
}

uint64_t sub_23BAAAA34()
{
  v1 = [v0 traitCollection];
  [v1 displayScale];

  sub_23BBD9EC8();
  [v0 frame];
  if (v3 == 0.0 && v2 == 0.0)
  {
    sub_23BBDA418();
  }

  else
  {
    [v0 frame];
  }

  return sub_23BBD9EB8();
}

uint64_t sub_23BAAAB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19EBD0, qword_23BBF69B0);
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  sub_23BBDD308();
  v6[15] = sub_23BBDD2F8();
  v9 = sub_23BBDD2D8();
  v6[16] = v9;
  v6[17] = v8;

  return MEMORY[0x2822009F8](sub_23BAAAC24, v9, v8);
}

uint64_t sub_23BAAAC24(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v5 = v1[13];
    v4 = v1[14];
    v6 = v1[11];
    v7 = v1[12];

    v8 = sub_23BBD9EF8();
    WitnessTable = swift_getWitnessTable();
    sub_23BA2183C(v8, WitnessTable, v5);

    (*(v7 + 32))(v4, v5, v6);
    swift_beginAccess();
    v10 = swift_task_alloc();
    v1[18] = v10;
    *v10 = v1;
    v11 = OUTLINED_FUNCTION_0_35(v10);

    return MEMORY[0x28210E838](v11);
  }

  else
  {

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_23BAAADE0()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_23BAAAF00, v3, v2);
}

uint64_t sub_23BAAAF00()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);

    (*(v3 + 8))(v1, v2);
LABEL_13:

    v13 = *(v0 + 8);

    return v13();
  }

  if ((sub_23BBDD388() & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));

    goto LABEL_13;
  }

  v5 = Strong;
  sub_23BAAAA34();
  v6 = sub_23BBD9EA8();
  if (v6)
  {
    v7 = v6;
    v8 = v5;
    v9 = sub_23BAAA584();

    if (v9)
    {
      v10 = v7;
      sub_23BAAA890(v7);
    }

    v5 = v7;
  }

  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_0_35(v11);

  return MEMORY[0x28210E838](v12);
}

uint64_t sub_23BAAB118()
{
  sub_23BAAB140();

  return swift_getObjCClassFromMetadata();
}

id sub_23BAAB148(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for BackdropFilterView(0, *((*MEMORY[0x277D85000] & *v8) + 0x50), a7, a8);
  v15.receiver = v8;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_23BAAB1F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BackdropFilterView(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_23BAAB2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for BackdropFilterView(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_23BAAB324()
{
  v0 = sub_23BBDD2C8();
  sub_23BBDCFE8();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_4_22(v1, sel_setValue_forKey_);
}

void sub_23BAAB394()
{
  sub_23BBDD2C8();
  OUTLINED_FUNCTION_1_37();
  sub_23BBDCFE8();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_4_22(v1, sel_setValue_forKey_);
}

id sub_23BAAB44C(uint64_t a1, uint64_t a2, SEL *a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_23BBDCFE8();

  v9.receiver = v3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, *a3, v6);

  return v7;
}

id sub_23BAAB528(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

unint64_t sub_23BAAB5E0()
{
  result = qword_27E19EBC8;
  if (!qword_27E19EBC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E19EBC8);
  }

  return result;
}

uint64_t sub_23BAAB624()
{
  MEMORY[0x23EEB6E70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_23BAAB65C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23BAAB69C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23B9897C0;

  return sub_23BAAAB14(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_23BAAB764(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BAAB7DC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(a1 + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      case 2:
        v12 = *(a1 + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        JUMPOUT(0x23BAAB8E0);
      case 4:
        v12 = *(a1 + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *a1;
        }

        return v5 + (v8 | v13) + 1;
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(a1, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(a1, v5, v4);
}

void sub_23BAAB8F4(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 > v7)
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        return;
      case 2:
        *&a1[v8] = v13;
        return;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 3:
LABEL_34:
      __break(1u);
      JUMPOUT(0x23BAABA8CLL);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

id OUTLINED_FUNCTION_4_22(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

unint64_t sub_23BAABB78()
{
  result = qword_27E19EC58;
  if (!qword_27E19EC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EC60, &qword_23BBF6AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EC58);
  }

  return result;
}

double sub_23BAABBDC@<D0>(uint64_t a1@<X8>)
{
  v6 = sub_23BBDAA88();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0118]);
  sub_23BBDB5A8();
  result = *&v12;
  v10 = v13;
  *a1 = v12;
  *(a1 + 16) = v10;
  *(a1 + 32) = v14;
  return result;
}

double sub_23BAABD0C@<D0>(uint64_t a1@<X8>)
{
  sub_23BAABBDC(v8);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_23BAABD54(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97E318;
}

uint64_t sub_23BAABDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BAABF8C();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_23BAABE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BAABF8C();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_23BAABE90(uint64_t a1)
{
  v2 = sub_23BAABF8C();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_23BAABEE0()
{
  result = qword_27E19EC68;
  if (!qword_27E19EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EC68);
  }

  return result;
}

unint64_t sub_23BAABF38()
{
  result = qword_27E19EC70;
  if (!qword_27E19EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EC70);
  }

  return result;
}

unint64_t sub_23BAABF8C()
{
  result = qword_27E19EC78;
  if (!qword_27E19EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EC78);
  }

  return result;
}

void sub_23BAAC000(uint64_t a1)
{
  sub_23BAAC074();
  if (v1 <= 0x3F)
  {
    sub_23BBDC298();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23BAAC074()
{
  if (!qword_27E19ECA8)
  {
    v0 = sub_23BBDD648();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19ECA8);
    }
  }
}

void *sub_23BAAC0C4()
{
  sub_23BAAC1CC();

  return sub_23BBDA958();
}

uint64_t sub_23BAAC10C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199810, &qword_23BBE8398);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  sub_23BAAE9D4(a1, &v8 - v3, &qword_27E199810, &qword_23BBE8398);
  sub_23BAAC1CC();
  sub_23BBDA968();
  OUTLINED_FUNCTION_18_13();
  return sub_23B979910(v4, v5, v6);
}

unint64_t sub_23BAAC1CC()
{
  result = qword_27E19ECB0;
  if (!qword_27E19ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ECB0);
  }

  return result;
}

void *sub_23BAAC230@<X0>(void *a1@<X8>)
{
  v144 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ECD8, &qword_23BBF6D18);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v120 - v3;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ECE0, &qword_23BBF6D20);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v6);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ECE8, &qword_23BBF6D28);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_2();
  v133 = v8;
  v131 = type metadata accessor for StructuredScrollViewMaterialBackground(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_13_3(v11 - v10);
  v125 = sub_23BBDC298();
  OUTLINED_FUNCTION_7();
  v123 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_13_3(v15 - v14);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ECF0, &qword_23BBF6D30);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22_2();
  v142 = v17;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ECF8, &qword_23BBF6D38);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_2();
  v137 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED00, &qword_23BBF6D40);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v21);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED08, &qword_23BBF6D48);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v23);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED10, &qword_23BBF6D50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22_2();
  v139 = v25;
  v126 = type metadata accessor for StructuredScrollViewGradientMaterialBackground(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v29 = (v28 - v27);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED18, &qword_23BBF6D58);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_22_2();
  v143 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199810, &qword_23BBE8398);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v33);
  v35 = &v120 - v34;
  v36 = _s34StructuredScrollViewBackgroundModeOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v37);
  v39 = (&v120 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v40);
  v42 = &v120 - v41;
  sub_23B9B7858();
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
  {
    sub_23B979910(v35, &qword_27E199810, &qword_23BBE8398);
    *v4 = swift_getKeyPath();
    v4[8] = 0;
    swift_storeEnumTagMultiPayload();
    sub_23BAAE010();
    sub_23BAAE3F8();
    return sub_23BBDACD8();
  }

  else
  {
    v122 = v30;
    v134 = v4;
    sub_23BAAE44C(v35, v42);
    sub_23BAAE558(v42, v39, _s34StructuredScrollViewBackgroundModeOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v45 = v134;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        *&v128 = v1;
        v75 = v123;
        v76 = v129;
        v77 = v125;
        (*(v123 + 32))(v129, v39, v125);
        v78 = v124;
        (*(v75 + 16))(v124, v76, v77);
        v127 = type metadata accessor for StructuredScrollViewMaterialBackground;
        sub_23BAAE558(v78, v132, type metadata accessor for StructuredScrollViewMaterialBackground);
        swift_storeEnumTagMultiPayload();
        v121 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED68, &qword_23BBF6D98);
        OUTLINED_FUNCTION_5_26();
        v81 = sub_23BAAE2F8(v79, v80, &unk_23BBF6F48);
        OUTLINED_FUNCTION_4_23();
        OUTLINED_FUNCTION_18_13();
        sub_23BAAE8FC(v82, v83, v84, v85);
        v39 = v133;
        sub_23BBDACD8();
        sub_23BAAE9D4(v39, v137, &qword_27E19ECE8, &qword_23BBF6D28);
        swift_storeEnumTagMultiPayload();
        sub_23BAAE128();
        sub_23BAAE210();
        OUTLINED_FUNCTION_11_17();
        sub_23BBDACD8();
        OUTLINED_FUNCTION_18_13();
        sub_23B979910(v86, v87, v88);
        v89 = v142;
        sub_23BAAE9D4(v81, v142, &qword_27E19ED10, &qword_23BBF6D50);
        OUTLINED_FUNCTION_21_12(v89);
        sub_23BAAE09C();
        OUTLINED_FUNCTION_13_20();
        sub_23BBDACD8();
        OUTLINED_FUNCTION_18_13();
        v42 = v121;
        sub_23B979910(v90, v91, v92);
        sub_23BAAE5B4(v78, v127);
        (*(v75 + 8))(v129, v77);
        break;
      case 2:
        swift_storeEnumTagMultiPayload();
        sub_23BAAE09C();
        OUTLINED_FUNCTION_13_20();
        sub_23BBDACD8();
        break;
      case 3:
        *v29 = 0x3FF0000000000000;
        v64 = *(v126 + 20);
        *(v29 + v64) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68, &qword_23BBE8360);
        swift_storeEnumTagMultiPayload();
        v133 = type metadata accessor for StructuredScrollViewGradientMaterialBackground;
        sub_23BAAE558(v29, v127, type metadata accessor for StructuredScrollViewGradientMaterialBackground);
        swift_storeEnumTagMultiPayload();
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED48, &qword_23BBF6D90);
        OUTLINED_FUNCTION_2_28();
        sub_23BAAE2F8(v66, v67, &unk_23BBF6F98);
        OUTLINED_FUNCTION_6_20();
        sub_23B97B518(v68, &qword_27E19ED48, &qword_23BBF6D90, v69);
        v70 = v128;
        v45 = v134;
        sub_23BBDACD8();
        v39 = v137;
        sub_23BAAE9D4(v70, v137, &qword_27E19ED08, &qword_23BBF6D48);
        swift_storeEnumTagMultiPayload();
        sub_23BAAE128();
        v71 = v42;
        sub_23BAAE210();
        OUTLINED_FUNCTION_11_17();
        sub_23BBDACD8();
        v72 = OUTLINED_FUNCTION_17_0();
        sub_23B979910(v72, v73, &qword_23BBF6D48);
        v74 = v142;
        sub_23BAAE9D4(v65, v142, &qword_27E19ED10, &qword_23BBF6D50);
        OUTLINED_FUNCTION_21_12(v74);
        sub_23BAAE09C();
        OUTLINED_FUNCTION_13_20();
        v42 = v71;
        sub_23BBDACD8();
        sub_23B979910(v65, &qword_27E19ED10, &qword_23BBF6D50);
        sub_23BAAE5B4(v29, v133);
        break;
      case 4:
        v47 = v127;
        *v127 = sub_23BAAD100;
        *(v47 + 1) = 0;
        swift_storeEnumTagMultiPayload();
        v48 = OUTLINED_FUNCTION_17_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
        OUTLINED_FUNCTION_2_28();
        sub_23BAAE2F8(v50, v51, &unk_23BBF6F98);
        OUTLINED_FUNCTION_6_20();
        OUTLINED_FUNCTION_4_8();
        sub_23B97B518(v52, v53, v54, v55);
        v39 = v128;
        sub_23BBDACD8();
        sub_23BAAE9D4(v39, v137, &qword_27E19ED08, &qword_23BBF6D48);
        swift_storeEnumTagMultiPayload();
        sub_23BAAE128();
        sub_23BAAE210();
        v56 = v139;
        sub_23BBDACD8();
        OUTLINED_FUNCTION_4_8();
        sub_23B979910(v57, v58, v59);
        v60 = v142;
        sub_23BAAE9D4(v56, v142, &qword_27E19ED10, &qword_23BBF6D50);
        OUTLINED_FUNCTION_21_12(v60);
        sub_23BAAE09C();
        OUTLINED_FUNCTION_13_20();
        sub_23BBDACD8();
        OUTLINED_FUNCTION_4_8();
        sub_23B979910(v61, v62, v63);
        break;
      default:
        v46 = *v39;
        v121 = v42;
        if (v46)
        {
          KeyPath = swift_getKeyPath();
          v146 = 0;
          v147 = v46;
          v148 = 0;
          v129 = v46;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED78, &qword_23BBF6DA0);
          sub_23BAAE340();
          sub_23BAAE3F8();
          sub_23BBDACD8();
        }

        else
        {
          v96 = swift_getKeyPath();
          v146 = 0;
          v147 = 0;
          KeyPath = v96;
          v148 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED78, &qword_23BBF6DA0);
          sub_23BAAE340();
          sub_23BAAE3F8();
          sub_23BBDACD8();
          v129 = 0;
        }

        v97 = v150;
        v98 = v151;
        v128 = v149;
        v99 = v132;
        *v132 = v149;
        *(v99 + 2) = v97;
        *(v99 + 24) = v98;
        v144 = v97;
        swift_storeEnumTagMultiPayload();
        v101 = *(&v128 + 1);
        v100 = v128;
        v102 = OUTLINED_FUNCTION_7_28();
        sub_23BAAE4B0(v102, v103, v104, v105);
        v106 = OUTLINED_FUNCTION_7_28();
        sub_23BAAE4B0(v106, v107, v108, v109);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED68, &qword_23BBF6D98);
        OUTLINED_FUNCTION_5_26();
        sub_23BAAE2F8(v110, v111, &unk_23BBF6F48);
        OUTLINED_FUNCTION_4_23();
        sub_23BAAE8FC(v112, &qword_27E19ED68, &qword_23BBF6D98, v113);
        v114 = v133;
        sub_23BBDACD8();
        v39 = &qword_27E19ECE8;
        sub_23BAAE9D4(v114, v137, &qword_27E19ECE8, &qword_23BBF6D28);
        swift_storeEnumTagMultiPayload();
        sub_23BAAE128();
        sub_23BAAE210();
        OUTLINED_FUNCTION_11_17();
        sub_23BBDACD8();
        sub_23B979910(v114, &qword_27E19ECE8, &qword_23BBF6D28);
        v115 = v142;
        sub_23BAAE9D4(v99, v142, &qword_27E19ED10, &qword_23BBF6D50);
        OUTLINED_FUNCTION_21_12(v115);
        sub_23BAAE09C();
        OUTLINED_FUNCTION_13_20();
        sub_23BBDACD8();
        sub_23BAAE504(v100, v101, v144, v98);
        v116 = OUTLINED_FUNCTION_7_28();
        sub_23BAAE504(v116, v117, v118, v119);

        sub_23B979910(v99, &qword_27E19ED10, &qword_23BBF6D50);
        v45 = v134;
        v42 = v121;
        break;
    }

    sub_23BAAE9D4(v39, v45, &qword_27E19ED18, &qword_23BBF6D58);
    swift_storeEnumTagMultiPayload();
    sub_23BAAE010();
    sub_23BAAE3F8();
    sub_23BBDACD8();
    OUTLINED_FUNCTION_4_8();
    sub_23B979910(v93, v94, v95);
    return sub_23BAAE5B4(v42, _s34StructuredScrollViewBackgroundModeOMa);
  }
}

uint64_t sub_23BAAD100@<X0>(double *a1@<X8>)
{
  *a1 = sub_23BAAD178();
  v2 = *(type metadata accessor for StructuredScrollViewGradientMaterialBackground(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68, &qword_23BBE8360);

  return swift_storeEnumTagMultiPayload();
}

double sub_23BAAD178()
{
  v0 = sub_23BBDAD18();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  sub_23BBDAF98();
  sub_23BBD9E88();
  v7 = *(v2 + 8);
  v7(v6, v0);
  MinY = 0.0;
  if ((v14 & 1) == 0)
  {
    v16.origin.x = OUTLINED_FUNCTION_19_13();
    CGRectGetMinX(v16);
    v17.origin.x = OUTLINED_FUNCTION_19_13();
    MinY = CGRectGetMinY(v17);
  }

  sub_23B9C7290();
  sub_23BBDAFA8();
  sub_23BBD9E88();
  v7(v6, v0);
  v9 = 1.0;
  if ((v15 & 1) == 0)
  {
    v18.origin.x = OUTLINED_FUNCTION_15_18();
    CGRectGetMinX(v18);
    v19.origin.x = OUTLINED_FUNCTION_15_18();
    v10 = CGRectGetMinY(v19);
    if ((v14 & 1) == 0)
    {
      v11 = MinY - v10;
      if (v11 <= 50.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 50.0;
      }

      if (v11 >= 0.0)
      {
        return v12 / 50.0;
      }

      else
      {
        return 0.0;
      }
    }
  }

  return v9;
}