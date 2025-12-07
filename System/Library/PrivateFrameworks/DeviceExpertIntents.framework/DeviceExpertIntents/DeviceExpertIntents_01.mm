uint64_t AttributionItem.group.setter()
{
  OUTLINED_FUNCTION_4_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AttributionItem.title.setter()
{
  OUTLINED_FUNCTION_4_1();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t AttributionItem.subtitle.setter()
{
  OUTLINED_FUNCTION_4_1();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t AttributionItem.thumbnailImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributionItem(0) + 32);
  sub_1DA34C0C0();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AttributionItem.thumbnailImage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttributionItem(0) + 32);
  sub_1DA34C0C0();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t AttributionItem.appPunchOut.getter()
{
  type metadata accessor for AttributionItem(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A98, &qword_1DA34EA68);
  return sub_1DA34C030();
}

uint64_t AttributionItem.appPunchOut.setter(uint64_t a1)
{
  type metadata accessor for AttributionItem(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A98, &qword_1DA34EA68);
  return sub_1DA34C040();
}

void (*AttributionItem.appPunchOut.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for AttributionItem(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A98, &qword_1DA34EA68);
  v2[4] = sub_1DA34C020();
  return sub_1DA2F2748;
}

uint64_t AttributionItem.init(id:group:title:subtitle:thumbnailImage:punchOutUri:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  v12 = *(type metadata accessor for AttributionItem(0) + 32);
  v13 = sub_1DA34C0C0();
  OUTLINED_FUNCTION_9_0();
  v17 = v14;
  (*(v14 + 16))(&a9[v12], a10, v13);
  sub_1DA2FA2E0(a11);
  sub_1DA2FCA60();
  sub_1DA34C010();
  sub_1DA2FCAA4(a11);
  v15 = *(v17 + 8);

  return v15(a10, v13);
}

id sub_1DA2FA2E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_27_1();
  v4 = sub_1DA34B940();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  v11 = [objc_allocWithZone(MEMORY[0x1E69C7B00]) init];
  sub_1DA34B930();
  v12 = sub_1DA34B920();
  v14 = v13;
  (*(v6 + 8))(v10, v4);
  sub_1DA2FCCA0(v12, v14, v11);

  [v11 setAppAvailableInStorefront_];
  sub_1DA2FD46C(a1, v1);
  v15 = sub_1DA34B8C0();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(v1, 1, v15) != 1)
  {
    v16 = sub_1DA34B890();
    (*(*(v15 - 8) + 8))(v1, v15);
  }

  [v11 setPunchOutUri_];

  return v11;
}

uint64_t sub_1DA2FA4BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DA34D160() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x69616E626D756874 && a2 == 0xEE006567616D496CLL;
          if (v9 || (sub_1DA34D160() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x68636E7550707061 && a2 == 0xEB0000000074754FLL)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DA34D160();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DA2FA6A8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x70756F7267;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x656C746974627573;
      break;
    case 4:
      result = 0x69616E626D756874;
      break;
    case 5:
      result = 0x68636E7550707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA2FA764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2FA4BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA2FA78C(uint64_t a1)
{
  v2 = sub_1DA2FCB0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2FA7C8(uint64_t a1)
{
  v2 = sub_1DA2FCB0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributionItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AA0, &qword_1DA34EA78);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_3();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2FCB0C();
  sub_1DA34D250();
  OUTLINED_FUNCTION_10_1();
  sub_1DA34D0F0();
  if (!v1)
  {
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D0F0();
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D0F0();
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D0F0();
    type metadata accessor for AttributionItem(0);
    sub_1DA34C0C0();
    OUTLINED_FUNCTION_3_5();
    sub_1DA2FCE44(v8, v9, MEMORY[0x1E69D3738]);
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D120();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A98, &qword_1DA34EA68);
    sub_1DA2FCB60(&qword_1EE10ACC0, MEMORY[0x1E69D3720]);
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D120();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t AttributionItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A98, &qword_1DA34EA68);
  OUTLINED_FUNCTION_0();
  v27 = v5;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_3();
  v31 = sub_1DA34C0C0();
  OUTLINED_FUNCTION_0();
  v29 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AA8, &qword_1DA34EA80);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_27_1();
  v30 = type metadata accessor for AttributionItem(v13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_4();
  v17 = (v16 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2FCB0C();
  sub_1DA34D240();
  if (v32)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = 0;
  *v17 = OUTLINED_FUNCTION_15_1(&v36);
  v17[1] = v18;
  OUTLINED_FUNCTION_29_1();
  v17[2] = OUTLINED_FUNCTION_15_1(&v35);
  v17[3] = v19;
  OUTLINED_FUNCTION_28_0();
  v17[4] = OUTLINED_FUNCTION_15_1(&v34);
  v17[5] = v20;
  v33 = 3;
  v17[6] = OUTLINED_FUNCTION_15_1(&v33);
  v17[7] = v21;
  OUTLINED_FUNCTION_3_5();
  sub_1DA2FCE44(v22, v23, MEMORY[0x1E69D3740]);
  sub_1DA34D090();
  (*(v29 + 32))(v17 + *(v30 + 32), v11, v31);
  sub_1DA2FCB60(&qword_1EE109F00, MEMORY[0x1E69D3728]);
  sub_1DA34D090();
  v24 = OUTLINED_FUNCTION_2_5();
  v25(v24);
  (*(v27 + 32))(v17 + *(v30 + 36), v2, v4);
  sub_1DA2FBD70(v17, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA2FC134(v17);
}

uint64_t static AttributionItem.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DA34D160();
  }
}

uint64_t AttributionItem.hashValue.getter()
{
  sub_1DA34D210();
  sub_1DA34CBE0();
  return sub_1DA34D230();
}

uint64_t sub_1DA2FAFDC(uint64_t a1)
{
  sub_1DA34D210();
  sub_1DA34CBE0();
  return sub_1DA34D230();
}

uint64_t AttributionGroup.displayLabel.setter()
{
  OUTLINED_FUNCTION_4_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AttributionGroup.attributions.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall AttributionGroup.init(name:displayLabel:attributions:)(DeviceExpertIntents::AttributionGroup *__return_ptr retstr, Swift::String name, Swift::String_optional displayLabel, Swift::OpaquePointer attributions)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  if (!displayLabel.value._object)
  {

    displayLabel.value._countAndFlagsBits = countAndFlagsBits;
    displayLabel.value._object = object;
  }

  retstr->name._countAndFlagsBits = countAndFlagsBits;
  retstr->name._object = object;
  retstr->displayLabel = displayLabel.value;
  retstr->attributions = attributions;
}

uint64_t sub_1DA2FB164(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C79616C70736964 && a2 == 0xEC0000006C656261;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7475626972747461 && a2 == 0xEC000000736E6F69)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DA34D160();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DA2FB27C(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x4C79616C70736964;
  }

  return 0x7475626972747461;
}

uint64_t sub_1DA2FB2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2FB164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA2FB30C(uint64_t a1)
{
  v2 = sub_1DA2FCBB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2FB348(uint64_t a1)
{
  v2 = sub_1DA2FCBB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributionGroup.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AB0, &unk_1DA34EA88);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_3();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2FCBB0();
  sub_1DA34D250();
  sub_1DA34D0F0();
  if (!v8)
  {
    OUTLINED_FUNCTION_29_1();
    sub_1DA34D0F0();
    OUTLINED_FUNCTION_28_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5850, &qword_1DA34DEA0);
    sub_1DA2FCC04(qword_1EE109F78, &qword_1EE10AAC8, &protocol conformance descriptor for AttributionItem, MEMORY[0x1E69E6300]);
    sub_1DA34D120();
  }

  return (*(v5 + 8))(v1, v3);
}

uint64_t AttributionGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AB8, &qword_1DA34EA98);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2FCBB0();
  sub_1DA34D240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1DA34D060();
  v14 = v7;
  OUTLINED_FUNCTION_29_1();
  v12 = sub_1DA34D060();
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5850, &qword_1DA34DEA0);
  OUTLINED_FUNCTION_28_0();
  sub_1DA2FCC04(&qword_1EE109018, qword_1EE109AD8, &protocol conformance descriptor for AttributionItem, MEMORY[0x1E69E6330]);
  sub_1DA34D090();
  v9 = OUTLINED_FUNCTION_10_2();
  v10(v9);
  *a2 = v6;
  a2[1] = v14;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DA2FB840@<X0>(uint64_t *a1@<X8>)
{
  result = AttributionGroup.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static AttributionGroup.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1DA34D160() & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_40();

  return sub_1DA2FB968(v3, v4);
}

uint64_t sub_1DA2FB8DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DA34D160() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DA2FB968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionItem(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    do
    {
      sub_1DA2FBD70(v13, v10);
      sub_1DA2FBD70(v14, v7);
      if (*v10 == *v7 && v10[1] == v7[1])
      {
        sub_1DA2FC134(v7);
        sub_1DA2FC134(v10);
      }

      else
      {
        v17 = sub_1DA34D160();
        sub_1DA2FC134(v7);
        sub_1DA2FC134(v10);
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      --v11;
    }

    while (v11);
  }

  return 1;
}

uint64_t AttributionGroup.hash(into:)(uint64_t a1)
{

  sub_1DA34CBE0();

  v1 = OUTLINED_FUNCTION_40();

  return sub_1DA2FCD04(v1, v2);
}

uint64_t AttributionGroup.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1DA34D210();
  sub_1DA34CBE0();
  sub_1DA2FCD04(v3, v1);
  return sub_1DA34D230();
}

uint64_t sub_1DA2FBBC0(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1DA34D210();
  sub_1DA34CBE0();
  sub_1DA2FCD04(v4, v2);
  return sub_1DA34D230();
}

uint64_t sub_1DA2FBC24(uint64_t *a1, uint64_t a2)
{
  if (*a1 == *(a2 + 16) && a1[1] == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1DA34D160() & 1;
  }
}

uint64_t sub_1DA2FBC7C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = 0;
  v7 = *(a3 + 16);
  for (i = (a3 + 64); ; i += 5)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v9 = *(i - 3);
    v10 = *(i - 2);
    v11 = *(i - 1);
    v12 = *i;
    v15[0] = *(i - 4);
    v15[1] = v9;
    v15[2] = v10;
    v15[3] = v11;
    v15[4] = v12;

    v13 = a1(v15);

    if (v4)
    {
      return result;
    }

    if (v13)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_1DA2FBD70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA2FBE24(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DA2FBEC8(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1DA2FBF10(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1DA34CC80();
  }

  return result;
}

void sub_1DA2FBF54()
{
  OUTLINED_FUNCTION_8_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_3();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_31(v2, v5, &qword_1ECBA5A90, &qword_1DA34EA60);
  v8 = OUTLINED_FUNCTION_20_1();
  type metadata accessor for AttributionItem(v8);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_25_1();
  if (v1)
  {
    OUTLINED_FUNCTION_14_1(type metadata accessor for AttributionItem, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
  }
}

void sub_1DA2FC02C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_19_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_17_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B08, &qword_1DA34EF38);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[40 * v9] <= v13)
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1DA2FC134(uint64_t a1)
{
  v2 = type metadata accessor for AttributionItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DA2FC190(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_19_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_17_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5828, &qword_1DA34EF30);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_30_1();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DA2FC27C()
{
  OUTLINED_FUNCTION_8_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_3();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_31(v2, v5, &qword_1ECBA5AE0, &qword_1DA34EF08);
  OUTLINED_FUNCTION_20_1();
  sub_1DA34BA10();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_25_1();
  if (v1)
  {
    OUTLINED_FUNCTION_14_1(MEMORY[0x1E69BCCB0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
  }
}

void sub_1DA2FC354()
{
  OUTLINED_FUNCTION_8_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_3();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_31(v2, v5, &qword_1ECBA5B00, &qword_1DA34EF28);
  OUTLINED_FUNCTION_20_1();
  sub_1DA34B9B0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_25_1();
  if (v1)
  {
    OUTLINED_FUNCTION_14_1(MEMORY[0x1E69BCC90], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
  }
}

void sub_1DA2FC42C()
{
  OUTLINED_FUNCTION_8_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_3();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_31(v2, v5, &qword_1ECBA5AD8, &qword_1DA34EF00);
  OUTLINED_FUNCTION_20_1();
  sub_1DA34C930();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_25_1();
  if (v1)
  {
    OUTLINED_FUNCTION_14_1(MEMORY[0x1E69DA398], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
  }
}

void sub_1DA2FC504(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_19_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_17_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AF8, &qword_1DA34EF20);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_30_1();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

void *sub_1DA2FC5E8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DA2FC788(v9, a2, &qword_1ECBA5AE8, &qword_1DA34EF10, MEMORY[0x1E69D2C98]);
  v11 = *(sub_1DA34C6D0() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DA2FC928(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D2C98]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DA2FC70C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AF0, &qword_1DA34EF18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

void *sub_1DA2FC788(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_20_1();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1DA2FC8C8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

char *sub_1DA2FC900(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

void sub_1DA2FC928(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_12(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_24_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_24_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1DA2FC9FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA2FCA60()
{
  result = qword_1EE109F48;
  if (!qword_1EE109F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE109F48);
  }

  return result;
}

uint64_t sub_1DA2FCAA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA2FCB0C()
{
  result = qword_1EE10AAE0;
  if (!qword_1EE10AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10AAE0);
  }

  return result;
}

uint64_t sub_1DA2FCB60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5A98, &qword_1DA34EA68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA2FCBB0()
{
  result = qword_1EE10A8E8[0];
  if (!qword_1EE10A8E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE10A8E8);
  }

  return result;
}

uint64_t sub_1DA2FCC04(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5850, &qword_1DA34DEA0);
    sub_1DA2FCE44(a2, type metadata accessor for AttributionItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DA2FCCA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DA34CB30();

  [a3 setAceId_];
}

uint64_t sub_1DA2FCD04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AttributionItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x1DA74ACB0](v7);
  if (v7)
  {
    v9 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_1DA2FBD70(v9, v6);
      sub_1DA34CBE0();
      result = sub_1DA2FC134(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1DA2FCE44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DA2FCE9C()
{
  result = qword_1EE10A8C0;
  if (!qword_1EE10A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8C0);
  }

  return result;
}

void sub_1DA2FCF18(uint64_t a1)
{
  sub_1DA34C0C0();
  if (v1 <= 0x3F)
  {
    sub_1DA2FCFB0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DA2FCFB0(uint64_t a1)
{
  if (!qword_1EE10ACB8)
  {
    sub_1DA2FCA60();
    v1 = sub_1DA34C050();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE10ACB8);
    }
  }
}

uint64_t sub_1DA2FD008(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DA2FD048(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for AttributionGroup.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AttributionItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA2FD25C()
{
  result = qword_1ECBA5AC8;
  if (!qword_1ECBA5AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5AC8);
  }

  return result;
}

unint64_t sub_1DA2FD2B4()
{
  result = qword_1ECBA5AD0;
  if (!qword_1ECBA5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5AD0);
  }

  return result;
}

unint64_t sub_1DA2FD30C()
{
  result = qword_1EE10A8D8;
  if (!qword_1EE10A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8D8);
  }

  return result;
}

unint64_t sub_1DA2FD364()
{
  result = qword_1EE10A8E0;
  if (!qword_1EE10A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8E0);
  }

  return result;
}

unint64_t sub_1DA2FD3BC()
{
  result = qword_1EE10AAD0;
  if (!qword_1EE10AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10AAD0);
  }

  return result;
}

unint64_t sub_1DA2FD414()
{
  result = qword_1EE10AAD8;
  if (!qword_1EE10AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10AAD8);
  }

  return result;
}

uint64_t sub_1DA2FD46C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_14_1(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_1DA2FC928(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1)
{

  return sub_1DA34D060();
}

void *OUTLINED_FUNCTION_31(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DA2FC788(v5, a2, a3, a4, v4);
}

uint64_t sub_1DA2FD6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B10, &qword_1DA34FBC0);
  v4[6] = swift_task_alloc();
  v5 = sub_1DA34C600();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA2FD798()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  sub_1DA34C5F0();
  (*(v2 + 16))(v4, v1, v3);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1DA2FD8B4;

  return sub_1DA3078A0();
}

uint64_t sub_1DA2FD8B4()
{
  OUTLINED_FUNCTION_2_6();
  v3 = v2;
  v4 = *v1;
  v4[11] = v0;

  v5 = v4[6];
  if (!v0)
  {
    v4[12] = v3;
  }

  sub_1DA2E7E4C(v5, &qword_1ECBA5B10, &qword_1DA34FBC0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA2FDA14()
{
  OUTLINED_FUNCTION_2_6();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_1DA34C660();
  v6 = v5;

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_1_8();

  return v7(v4, v6);
}

uint64_t sub_1DA2FDAC8()
{
  if (v0[4] == 1)
  {
    v1 = v0[11];
    v3 = v0[8];
    v2 = v0[9];
    v4 = v0[7];
    MEMORY[0x1DA74A690](v0[2], v0[3]);

    v6 = 0xA0C2BFA3EFLL;
    v5 = 0xA500000000000000;
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1EE109058);
    }

    v7 = v0[11];
    v8 = sub_1DA34C8E0();
    __swift_project_value_buffer(v8, qword_1EE109060);
    v9 = v7;
    v10 = sub_1DA34C8C0();
    v11 = sub_1DA34CDA0();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[11];
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v13;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      OUTLINED_FUNCTION_4_5(&dword_1DA2E0000, v18, v19, "Error getting attributionGroupAsLabels : %@");
      sub_1DA2E7E4C(v15, &qword_1ECBA5820, &unk_1DA34DD00);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
    v6 = 0;
    v5 = 0;
  }

  OUTLINED_FUNCTION_1_8();

  return v20(v6, v5);
}

uint64_t sub_1DA2FDCD4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1DA34C600();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA2FDD90()
{
  v1 = v0[2];
  v2 = v1[2];
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = v1[4];
      v4 = v1[5];

      OUTLINED_FUNCTION_1_8();

      return v6(v5, v4);
    }

    v8 = v0[5];
    v15 = MEMORY[0x1E69E7CC0];
    sub_1DA3489F4(0, v2, 0);
    v3 = v15;
    v9 = v1 + 5;
    do
    {

      sub_1DA34C5F0();
      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1DA3489F4(v10 > 1, v11 + 1, 1);
      }

      v12 = v0[6];
      v13 = v0[4];
      *(v15 + 16) = v11 + 1;
      (*(v8 + 32))(v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, v12, v13);
      v9 += 2;
      --v2;
    }

    while (v2);
  }

  v0[7] = v3;
  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  v14[1] = sub_1DA2FDF88;

  return sub_1DA307D84(v3);
}

uint64_t sub_1DA2FDF88()
{
  OUTLINED_FUNCTION_2_6();
  v3 = v2;
  v4 = *v1;
  *(*v1 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA2FE0CC(uint64_t a1)
{
  v1 = sub_1DA34C660();
  v3 = v2;

  OUTLINED_FUNCTION_1_8();

  return v4(v1, v3);
}

uint64_t sub_1DA2FE150()
{
  OUTLINED_FUNCTION_2_6();
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v1 = *(v0 + 72);
  v2 = sub_1DA34C8E0();
  __swift_project_value_buffer(v2, qword_1EE109060);
  v3 = v1;
  v4 = sub_1DA34C8C0();
  v5 = sub_1DA34CDA0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_4_5(&dword_1DA2E0000, v12, v13, "Error calling attributionListAsLabels: %@");
    sub_1DA2E7E4C(v9, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_8();

  return v14(0, 0);
}

void OUTLINED_FUNCTION_4_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t ContextualRewriteResult.resolvedResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DA34BFB0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContextualRewriteResult.resolvedResult.setter()
{
  OUTLINED_FUNCTION_21_0();
  v2 = sub_1DA34BFB0();
  v3 = *(*(v2 - 8) + 40);

  return v3(v1, v0, v2);
}

__n128 ContextualRewriteResult.rewriteSummary.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContextualRewriteResult(0) + 20);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v3 + 48);
  return result;
}

uint64_t type metadata accessor for ContextualRewriteResult(uint64_t a1)
{
  result = qword_1EE109530;
  if (!qword_1EE109530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ContextualRewriteResult.rewriteSummary.setter()
{
  v2 = OUTLINED_FUNCTION_21_0();
  v3 = v1 + *(type metadata accessor for ContextualRewriteResult(v2) + 20);
  v4 = *(v0 + 16);
  *v3 = *v0;
  *(v3 + 16) = v4;
  result = *(v0 + 32);
  *(v3 + 32) = result;
  *(v3 + 48) = *(v0 + 48);
  return result;
}

void (*ContextualRewriteResult.rewriteSummary.modify())()
{
  v0 = OUTLINED_FUNCTION_21_0();
  type metadata accessor for ContextualRewriteResult(v0);
  return nullsub_1;
}

uint64_t sub_1DA2FE534(uint64_t a1)
{
  result = sub_1DA34BFB0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AttributionModel.init(label:)(char *a1)
{
  v2 = sub_1DA34B700();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  sub_1DA34B6F0();
  v12 = *(v4 + 16);
  v12(v8, v11, v2);
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.DeviceExpertIntentAttributes(0);
  OUTLINED_FUNCTION_1_9();
  sub_1DA2FFE00(v13, v14);
  sub_1DA34B7B0();
  v15 = *(v4 + 8);
  v15(v11, v2);
  v12(v11, a1, v2);
  v12(v8, v11, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);
  sub_1DA34B7A0();
  v15(a1, v2);
  return (v15)(v11, v2);
}

void sub_1DA2FE838()
{
  sub_1DA2EF134();
  sub_1DA34B7D0();
  __break(1u);
}

uint64_t sub_1DA2FE86C@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.deviceExpert.getter();
  result = type metadata accessor for AttributeScopes.DeviceExpertIntentAttributes(0);
  *a1 = result;
  return result;
}

uint64_t AttributionModel.label.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);

  return sub_1DA34B790();
}

uint64_t sub_1DA2FE8E4(uint64_t a1)
{
  v2 = sub_1DA34B700();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return AttributionModel.label.setter(v4);
}

uint64_t AttributionModel.label.setter(uint64_t a1)
{
  v2 = sub_1DA34B700();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  v12 = *(v4 + 16);
  v12(&v15 - v10, a1, v2);
  v12(v8, v11, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);
  sub_1DA34B7A0();
  v13 = *(v4 + 8);
  v13(a1, v2);
  return (v13)(v11, v2);
}

void (*AttributionModel.label.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1DA34B700();
  v3[1] = v4;
  v3[2] = *(v4 - 8);
  v3[3] = OUTLINED_FUNCTION_5_4();
  v3[4] = OUTLINED_FUNCTION_5_4();
  v3[5] = OUTLINED_FUNCTION_5_4();
  v3[6] = OUTLINED_FUNCTION_5_4();
  v3[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);
  sub_1DA34B790();
  return sub_1DA2FEBDC;
}

void sub_1DA2FEBDC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*(*a1 + 16) + 16);
  v6(v3, *(*a1 + 48), v5);
  v6(v4, v3, v5);
  v7 = v2[6];
  v8 = v2[4];
  v14 = v2[5];
  v10 = v2[2];
  v9 = v2[3];
  v11 = v2[1];
  if (a2)
  {
    v6(v2[3], v8, v2[1]);
    sub_1DA34B7A0();
    v12 = *(v10 + 8);
    v12(v8, v11);
  }

  else
  {
    sub_1DA34B7A0();
    v12 = *(v10 + 8);
  }

  v12(v14, v11);
  v12(v7, v11);
  free(v7);
  free(v14);
  free(v8);
  free(v9);

  free(v2);
}

char *AttributionModel.attributionGroups.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B20, &qword_1DA34EFD0);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v44 - v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B28, &qword_1DA34EFD8);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B30, &qword_1DA34EFE0);
  OUTLINED_FUNCTION_0();
  v47 = v7;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B38, &qword_1DA34EFE8);
  OUTLINED_FUNCTION_0();
  v48 = v12;
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_1();
  v50 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  sub_1DA34B6C0();
  OUTLINED_FUNCTION_0();
  v45 = v19;
  v46 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_4();
  v22 = v21 - v20;
  v23 = sub_1DA34B700();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1_4();
  v29 = v28 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);
  sub_1DA34B790();
  sub_1DA34B6E0();
  (*(v25 + 8))(v29, v23);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1DA2EF134();
  sub_1DA34B6D0();

  (*(v45 + 8))(v22, v46);
  v30 = *(v48 + 16);
  v46 = v17;
  v30(v50, v17, v49);
  sub_1DA2FFBE8(&qword_1ECBA5B40, &qword_1ECBA5B38, &qword_1DA34EFE8, MEMORY[0x1E6968778]);
  sub_1DA34CC30();
  sub_1DA2FFBE8(&qword_1ECBA5B48, &qword_1ECBA5B30, &qword_1DA34EFE0, MEMORY[0x1E6968760]);
  v50 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DA34CE30();
    if (__swift_getEnumTagSinglePayload(v6, 1, v0) == 1)
    {
      break;
    }

    sub_1DA2FF228(v6, v3);
    v32 = *v3;
    v31 = v3[1];
    v33 = v3[2];
    v34 = v3[3];
    v35 = v3[4];
    sub_1DA2FF298(v3 + *(v0 + 48));
    if (v31)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA2FC02C(0, *(v50 + 2) + 1, 1, v50);
        v50 = v41;
      }

      v37 = *(v50 + 2);
      v36 = *(v50 + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v44 = *(v50 + 2);
        v45 = v37 + 1;
        sub_1DA2FC02C(v36 > 1, v37 + 1, 1, v50);
        v37 = v44;
        v38 = v45;
        v50 = v42;
      }

      v39 = v50;
      *(v50 + 2) = v38;
      v40 = &v39[40 * v37];
      *(v40 + 4) = v32;
      *(v40 + 5) = v31;
      *(v40 + 6) = v33;
      *(v40 + 7) = v34;
      *(v40 + 8) = v35;
    }
  }

  (*(v47 + 8))(v10, v51);
  (*(v48 + 8))(v46, v49);
  return v50;
}

uint64_t sub_1DA2FF228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B20, &qword_1DA34EFD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA2FF298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5868, &qword_1DA34F040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AttributionModel.attributionItems.getter()
{
  result = AttributionModel.attributionGroups.getter();
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  for (i = 64; ; i += 40)
  {
    if (v3 == v2)
    {

      return v4;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v6 = *(v1 + i);
    v7 = *(v6 + 16);
    v8 = *(v4 + 16);
    if (__OFADD__(v8, v7))
    {
      goto LABEL_17;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v8 + v7 > *(v4 + 24) >> 1)
    {
      sub_1DA2FBF54();
      v4 = v9;
    }

    if (*(v6 + 16))
    {
      v10 = (*(v4 + 24) >> 1) - *(v4 + 16);
      result = type metadata accessor for AttributionItem(0);
      if (v10 < v7)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v7)
      {
        v11 = *(v4 + 16);
        v12 = __OFADD__(v11, v7);
        v13 = v11 + v7;
        if (v12)
        {
          goto LABEL_20;
        }

        *(v4 + 16) = v13;
      }
    }

    else
    {

      if (v7)
      {
        goto LABEL_18;
      }
    }

    ++v2;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DA2FF480(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001DA354D30 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DA34D160();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DA2FF520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2FF480(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DA2FF54C(uint64_t a1)
{
  v2 = sub_1DA2FFAEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2FF588(uint64_t a1)
{
  v2 = sub_1DA2FFAEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributionModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B50, &qword_1DA34F048);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2FFAEC();
  sub_1DA34D250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);
  sub_1DA2FFBE8(&qword_1EE10ACE8, &qword_1ECBA5B18, &qword_1DA34EFC8, MEMORY[0x1E6968A08]);
  sub_1DA34D120();
  return (*(v4 + 8))(v7, v2);
}

uint64_t AttributionModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);
  OUTLINED_FUNCTION_0();
  v34 = v3;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v33 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B58, &qword_1DA34F050);
  OUTLINED_FUNCTION_0();
  v35 = v7;
  v36 = v6;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = sub_1DA34B700();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  v21 = type metadata accessor for AttributionModel(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_1_4();
  v24 = v23 - v22;
  sub_1DA34B6F0();
  (*(v13 + 16))(v17, v20, v11);
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.DeviceExpertIntentAttributes(0);
  OUTLINED_FUNCTION_1_9();
  sub_1DA2FFE00(v25, v26);
  sub_1DA34B7B0();
  (*(v13 + 8))(v20, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2FFAEC();
  v27 = v39;
  sub_1DA34D240();
  if (!v27)
  {
    v28 = v34;
    sub_1DA2FFBE8(&qword_1EE109F30, &qword_1ECBA5B18, &qword_1DA34EFC8, MEMORY[0x1E6968A10]);
    v30 = v37;
    v29 = v38;
    v31 = v36;
    sub_1DA34D090();
    (*(v35 + 8))(v10, v31);
    (*(v28 + 40))(v24, v30, v29);
    sub_1DA2FFC30(v24, v33);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA2FFB8C(v24);
}

unint64_t sub_1DA2FFAEC()
{
  result = qword_1EE10A8B8;
  if (!qword_1EE10A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8B8);
  }

  return result;
}

uint64_t type metadata accessor for AttributionModel(uint64_t a1)
{
  result = qword_1EE10A860;
  if (!qword_1EE10A860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA2FFB8C(uint64_t a1)
{
  v2 = type metadata accessor for AttributionModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA2FFBE8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1DA2FFC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DA2FFCBC(uint64_t a1)
{
  sub_1DA2FFD28(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DA2FFD28(uint64_t a1)
{
  if (!qword_1EE10ACE0)
  {
    sub_1DA34B700();
    type metadata accessor for AttributeScopes.DeviceExpertIntentAttributes(255);
    sub_1DA2FFE00(&qword_1EE10AD88, &protocol conformance descriptor for AttributeScopes.DeviceExpertIntentAttributes);
    sub_1DA2FFE00(&qword_1EE10AD80, &protocol conformance descriptor for AttributeScopes.DeviceExpertIntentAttributes);
    v1 = sub_1DA34B7C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE10ACE0);
    }
  }
}

uint64_t sub_1DA2FFE00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttributeScopes.DeviceExpertIntentAttributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AttributionModel.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA2FFEF4()
{
  result = qword_1ECBA5B60;
  if (!qword_1ECBA5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5B60);
  }

  return result;
}

unint64_t sub_1DA2FFF4C()
{
  result = qword_1EE10A8A8;
  if (!qword_1EE10A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8A8);
  }

  return result;
}

unint64_t sub_1DA2FFFA4()
{
  result = qword_1EE10A8B0;
  if (!qword_1EE10A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8B0);
  }

  return result;
}

void *OUTLINED_FUNCTION_5_4()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t sub_1DA300028()
{
  sub_1DA34CBC0();
  has_internal_diagnostics = os_variant_has_internal_diagnostics();

  byte_1EE10E058 = has_internal_diagnostics;
  return result;
}

id sub_1DA300080()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_1EE10E060 = result;
  return result;
}

uint64_t static DeviceExpertPreferences.shouldForceContextualRewriteInLowPowerMode.getter()
{
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_1EE109E70);
  }

  OUTLINED_FUNCTION_2_7();
  if (v1)
  {
    if (qword_1EE109E78 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EE109E78);
    }

    v2 = qword_1EE10E060;
    OUTLINED_FUNCTION_6_4();
    v3 = sub_1DA34CB30();
    v4 = OUTLINED_FUNCTION_5_5();
    v6 = [v4 v5];

    if (v6)
    {
      OUTLINED_FUNCTION_8_2(v7, v8);
      v9 = swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_7_2();
    }

    OUTLINED_FUNCTION_3_6(v9, v10, v11, v12, v13, v14, v15, v16, v26, v28, v31, v33, v35);
    if (v24)
    {
      if (OUTLINED_FUNCTION_4_6(v17, v18, v19, MEMORY[0x1E69E6370], v20, v21, v22, v23, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29), v32, v34, v36, v37, v38[0]))
      {
        return v30;
      }
    }

    else
    {
      sub_1DA2F1E40(v38);
    }
  }

  return 0;
}

unint64_t sub_1DA3001CC(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002ELL;
      break;
    case 2:
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static DeviceExpertPreferences.shouldShowFeedback.getter()
{
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_1EE109E70);
  }

  OUTLINED_FUNCTION_2_7();
  if (!v1)
  {
    return 0;
  }

  if (qword_1EE109E78 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1EE109E78);
  }

  v2 = qword_1EE10E060;
  OUTLINED_FUNCTION_6_4();
  v3 = sub_1DA34CB30();
  v4 = OUTLINED_FUNCTION_5_5();
  v6 = [v4 v5];

  if (v6)
  {
    OUTLINED_FUNCTION_8_2(v7, v8);
    v9 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_3_6(v9, v10, v11, v12, v13, v14, v15, v16, v26, v28, v31, v33, v35);
  if (v25)
  {
    if (OUTLINED_FUNCTION_4_6(v18, v19, v20, MEMORY[0x1E69E6370], v21, v22, v23, v24, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29), v32, v34, v36, v37, v38[0]))
    {
      return v30;
    }
  }

  else
  {
    sub_1DA2F1E40(v38);
  }

  return 1;
}

uint64_t static DeviceExpertPreferences.shouldSendAnalytics.getter()
{
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_1EE109E70);
  }

  OUTLINED_FUNCTION_2_7();
  if (v1)
  {
    if (qword_1EE109E78 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EE109E78);
    }

    v2 = qword_1EE10E060;
    OUTLINED_FUNCTION_6_4();
    v3 = sub_1DA34CB30();
    v4 = OUTLINED_FUNCTION_5_5();
    v6 = [v4 v5];

    if (v6)
    {
      OUTLINED_FUNCTION_8_2(v7, v8);
      v9 = swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_7_2();
    }

    OUTLINED_FUNCTION_3_6(v9, v10, v11, v12, v13, v14, v15, v16, v26, v28, v31, v33, v35);
    if (v24)
    {
      if (OUTLINED_FUNCTION_4_6(v17, v18, v19, MEMORY[0x1E69E6370], v20, v21, v22, v23, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29), v32, v34, v36, v37, v38[0]))
      {
        return v30;
      }
    }

    else
    {
      sub_1DA2F1E40(v38);
    }
  }

  return 1;
}

uint64_t static DeviceExpertPreferences.shouldLogContextualPrompt.getter()
{
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_1EE109E70);
  }

  OUTLINED_FUNCTION_2_7();
  if (v1)
  {
    if (qword_1EE109E78 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EE109E78);
    }

    v2 = qword_1EE10E060;
    OUTLINED_FUNCTION_6_4();
    v3 = sub_1DA34CB30();
    v4 = OUTLINED_FUNCTION_5_5();
    v6 = [v4 v5];

    if (v6)
    {
      OUTLINED_FUNCTION_8_2(v7, v8);
      v9 = swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_7_2();
    }

    OUTLINED_FUNCTION_3_6(v9, v10, v11, v12, v13, v14, v15, v16, v26, v28, v31, v33, v35);
    if (v24)
    {
      if (OUTLINED_FUNCTION_4_6(v17, v18, v19, MEMORY[0x1E69E6370], v20, v21, v22, v23, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29), v32, v34, v36, v37, v38[0]))
      {
        return v30;
      }
    }

    else
    {
      sub_1DA2F1E40(v38);
    }
  }

  return 0;
}

uint64_t static DeviceExpertPreferences.troubleshootingFlowOverride.getter()
{
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_1EE109E70);
  }

  OUTLINED_FUNCTION_2_7();
  if (!v1)
  {
    return 0;
  }

  if (qword_1EE109E78 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1EE109E78);
  }

  v2 = qword_1EE10E060;
  OUTLINED_FUNCTION_6_4();
  v3 = sub_1DA34CB30();
  v4 = OUTLINED_FUNCTION_5_5();
  v6 = [v4 v5];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1DA34CB40();

  return v7;
}

uint64_t static DeviceExpertPreferences.troubleshootingFlowClusterIDMap.getter()
{
  v29[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1DA34CB80();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_1EE109E70);
  }

  OUTLINED_FUNCTION_2_7();
  if (v4)
  {
    if (qword_1EE109E78 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EE109E78);
    }

    v5 = qword_1EE10E060;
    v6 = sub_1DA34CB30();
    v7 = [v5 stringForKey_];

    if (!v7)
    {
      return sub_1DA34CAC0();
    }

    sub_1DA34CB40();

    sub_1DA34CB70();
    v8 = sub_1DA34CB50();
    v10 = v9;

    (*(v1 + 8))(v3, v0);
    if (v10 >> 60 == 15)
    {
      return sub_1DA34CAC0();
    }

    objc_opt_self();
    v13 = sub_1DA34B8D0();
    v29[0] = 0;
    v14 = OUTLINED_FUNCTION_5_5();
    v16 = [v14 v15];

    if (v16)
    {
      v17 = v29[0];
      sub_1DA34CE80();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B70, &qword_1DA34F208);
      if (swift_dynamicCast())
      {
        v11 = v28[1];
        if (qword_1EE109058 != -1)
        {
          swift_once();
        }

        v18 = sub_1DA34C8E0();
        __swift_project_value_buffer(v18, qword_1EE109060);

        v19 = sub_1DA34C8C0();
        v20 = sub_1DA34CD80();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v29[0] = v22;
          *v21 = 136315138;
          v23 = sub_1DA34CAB0();
          v25 = sub_1DA300D78(v23, v24, v29);

          *(v21 + 4) = v25;
          _os_log_impl(&dword_1DA2E0000, v19, v20, "Using troubleshooting flow cluster ID map from UserDefaults: %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v22);
          MEMORY[0x1DA74B3A0](v22, -1, -1);
          MEMORY[0x1DA74B3A0](v21, -1, -1);
        }

        sub_1DA300C94(v8, v10);

        return v11;
      }
    }

    else
    {
      v26 = v29[0];
      v27 = sub_1DA34B7E0();

      swift_willThrow();
    }

    v11 = sub_1DA34CAC0();
    sub_1DA300C94(v8, v10);
    return v11;
  }

  return sub_1DA34CAC0();
}

uint64_t static DeviceExpertPreferences.contextualTimeoutOverride.getter()
{
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_1EE109E70);
  }

  OUTLINED_FUNCTION_2_7();
  if (!v1)
  {
    return 0;
  }

  if (qword_1EE109E78 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1EE109E78);
  }

  v2 = qword_1EE10E060;
  OUTLINED_FUNCTION_6_4();
  v3 = sub_1DA34CB30();
  v4 = OUTLINED_FUNCTION_5_5();
  v6 = [v4 v5];

  if (v6)
  {
    OUTLINED_FUNCTION_8_2(v7, v8);
    v9 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_3_6(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20, v22, v23, v24);
  if (!v17)
  {
    sub_1DA2F1E40(v25);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA300C94(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DA2E62C4(result, a2);
  }

  return result;
}

uint64_t sub_1DA300CA8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1DA300D1C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1DA300D78(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1DA300D78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DA300E3C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1DA3013A4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1DA300E3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DA300F3C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1DA34CF00();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1DA300F3C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DA300F88(a1, a2);
  sub_1DA3010A0(&unk_1F55DEED0);
  return v3;
}

uint64_t sub_1DA300F88(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1DA34CC10())
  {
    result = sub_1DA301184(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DA34CEB0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1DA34CF00();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DA3010A0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1DA3011F4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1DA301184(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B78, &qword_1DA34F258);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1DA3011F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B78, &qword_1DA34F258);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_1DA3012E8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceExpertPreferences(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DA3013A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_6(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_8_2(uint64_t a1, uint64_t a2, ...)
{

  return sub_1DA34CE80();
}

uint64_t ContextualRewriteSummary.rewriteElapsedTime.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t ContextualRewriteSummary.rewritePromptWordCount.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t ContextualRewriteSummary.rewriteOutputWordCount.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void sub_1DA3015D0()
{
  LOWORD(xmmword_1EE109478) = 0;
  *(&xmmword_1EE109478 + 1) = 0;
  OUTLINED_FUNCTION_1_11(&xmmword_1EE109478);
}

double static ContextualRewriteSummary.noRewrite.getter()
{
  if (qword_1EE109470 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_2_8(&xmmword_1EE109478).n128_u64[0];
  return result;
}

void sub_1DA301644()
{
  LOWORD(xmmword_1EE109438) = 1;
  *(&xmmword_1EE109438 + 1) = 0;
  OUTLINED_FUNCTION_1_11(&xmmword_1EE109438);
}

double static ContextualRewriteSummary.attemptedButNotShown.getter()
{
  if (qword_1EE109430 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_2_8(&xmmword_1EE109438).n128_u64[0];
  return result;
}

uint64_t static ContextualRewriteSummary.attemptedAndShown(promptWordCount:outputWordCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 257;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = result;
  *(a3 + 32) = 0;
  *(a3 + 40) = a2;
  *(a3 + 48) = 0;
  return result;
}

uint64_t sub_1DA3016E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4165746972776572 && a2 == 0xEE0074706D657474;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5365746972776572 && a2 == 0xEC0000006E776F68;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001DA354E80 == a2;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001DA354EA0 == a2;
        if (v8 || (sub_1DA34D160() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x80000001DA354EC0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DA34D160();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1DA3018A0(char a1)
{
  result = 0x4165746972776572;
  switch(a1)
  {
    case 1:
      result = 0x5365746972776572;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA301960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3016E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA301988@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA301898();
  *a1 = result;
  return result;
}

uint64_t sub_1DA3019B0(uint64_t a1)
{
  v2 = sub_1DA301C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3019EC(uint64_t a1)
{
  v2 = sub_1DA301C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContextualRewriteSummary.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B80, &qword_1DA34F260);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v18 = *(v1 + 1);
  v17 = *(v1 + 8);
  v16 = *(v1 + 16);
  v15 = *(v1 + 24);
  v10 = *(v1 + 32);
  v12 = *(v1 + 40);
  v13 = *(v1 + 48);
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA301C3C();
  sub_1DA34D250();
  v23 = 0;
  OUTLINED_FUNCTION_3_7();
  sub_1DA34D100();
  if (!v2)
  {
    v22 = 1;
    OUTLINED_FUNCTION_3_7();
    sub_1DA34D100();
    v21 = 2;
    OUTLINED_FUNCTION_3_7();
    sub_1DA34D0D0();
    v20 = 3;
    OUTLINED_FUNCTION_3_7();
    sub_1DA34D0D0();
    v19 = 4;
    OUTLINED_FUNCTION_3_7();
    sub_1DA34D0D0();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1DA301C3C()
{
  result = qword_1EE10A748;
  if (!qword_1EE10A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A748);
  }

  return result;
}

uint64_t ContextualRewriteSummary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B88, &qword_1DA34F268);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA301C3C();
  sub_1DA34D240();
  if (!v2)
  {
    v33 = 0;
    OUTLINED_FUNCTION_0_9();
    v11 = sub_1DA34D070();
    v32 = 1;
    OUTLINED_FUNCTION_0_9();
    v12 = sub_1DA34D070();
    v31 = 2;
    OUTLINED_FUNCTION_0_9();
    v25 = sub_1DA34D040();
    v28 = v13 & 1;
    v30 = 3;
    OUTLINED_FUNCTION_0_9();
    v24 = sub_1DA34D040();
    v27 = v14 & 1;
    v29 = 4;
    OUTLINED_FUNCTION_0_9();
    v15 = sub_1DA34D040();
    v18 = v17;
    v23 = v11 & 1;
    v19 = v15;
    (*(v7 + 8))(v10, v5);
    v26 = v18 & 1;
    v20 = v28;
    v21 = v27;
    *a2 = v23;
    *(a2 + 1) = v12 & 1;
    *(a2 + 8) = v25;
    *(a2 + 16) = v20;
    *(a2 + 24) = v24;
    *(a2 + 32) = v21;
    *(a2 + 40) = v19;
    *(a2 + 48) = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t sub_1DA301F1C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[49])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1DA301F68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextualRewriteSummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContextualRewriteSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DA302134()
{
  result = qword_1ECBA5B90;
  if (!qword_1ECBA5B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5B90);
  }

  return result;
}

unint64_t sub_1DA30218C()
{
  result = qword_1EE10A738;
  if (!qword_1EE10A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A738);
  }

  return result;
}

unint64_t sub_1DA3021E4()
{
  result = qword_1EE10A740;
  if (!qword_1EE10A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A740);
  }

  return result;
}

void OUTLINED_FUNCTION_1_11(uint64_t a1@<X8>)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = 0;
  *(a1 + 32) = v1;
  *(a1 + 40) = 0;
  *(a1 + 48) = v1;
}

__n128 OUTLINED_FUNCTION_2_8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

uint64_t TipKitEventSender.donateUserPerformedAction(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1DA34CD30();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  OUTLINED_FUNCTION_3_8();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1DA302998(0, 0, v2, &unk_1DA34F450, v4);
}

uint64_t sub_1DA302354()
{
  v1 = sub_1DA34C4A0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA302410, 0, 0);
}

uint64_t sub_1DA302410()
{
  OUTLINED_FUNCTION_59();
  sub_1DA34C4B0();
  sub_1DA34C490();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3024FC;
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE49A98](0xD000000000000017, 0x80000001DA354EE0, 0xD000000000000015, 0x80000001DA354F00, v2);
}

uint64_t sub_1DA3024FC()
{
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v4 = v2[4];
  v5 = v2[3];
  v6 = v2[2];
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v3[6] = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA302694, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_15();

    return v9();
  }
}

uint64_t sub_1DA302694()
{
  v11 = v0;
  if (qword_1EE109058 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA34C8E0();
  __swift_project_value_buffer(v1, qword_1EE109060);
  v2 = sub_1DA34C8C0();
  v3 = sub_1DA34CDA0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 48);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DA300D78(0xD000000000000017, 0x80000001DA354EE0, &v10);
    _os_log_impl(&dword_1DA2E0000, v2, v3, "Failed to invalidate tip with identifier: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1DA74B3A0](v7, -1, -1);
    MEMORY[0x1DA74B3A0](v6, -1, -1);
  }

  OUTLINED_FUNCTION_15();

  return v8();
}

uint64_t sub_1DA302820()
{
  OUTLINED_FUNCTION_59();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v1[1] = sub_1DA3028B4;
  OUTLINED_FUNCTION_1_12();

  return sub_1DA302354();
}

uint64_t sub_1DA3028B4()
{
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_1DA302998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1DA302E18(a3, v24 - v10);
  v12 = sub_1DA34CD30();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1DA302E88(v11);
  }

  else
  {
    sub_1DA34CD20();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DA34CCF0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1DA34CBC0() + 32;
      OUTLINED_FUNCTION_3_8();
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1DA302E88(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DA302E88(a3);
  OUTLINED_FUNCTION_3_8();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t DeviceExpertTip.hashValue.getter()
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](0);
  return sub_1DA34D230();
}

unint64_t sub_1DA302CF4()
{
  result = qword_1ECBA5BA0;
  if (!qword_1ECBA5BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5BA0);
  }

  return result;
}

_BYTE *sub_1DA302D6C(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DA302E18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA302E88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA302EF0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DA302FE8;

  return v6(a1);
}

uint64_t sub_1DA302FE8()
{
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_1DA3030D0()
{
  OUTLINED_FUNCTION_59();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v1[1] = sub_1DA303214;
  v3 = OUTLINED_FUNCTION_1_12();

  return v4(v3);
}

uint64_t sub_1DA303170()
{
  OUTLINED_FUNCTION_59();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v1[1] = sub_1DA3028B4;
  v3 = OUTLINED_FUNCTION_1_12();

  return v4(v3);
}

uint64_t Action.init(identifier:label:href:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DA34BE00();
  OUTLINED_FUNCTION_0_10();
  sub_1DA303954(v6, v7, MEMORY[0x1E69BCD70]);
  sub_1DA34C7B0();
}

uint64_t sub_1DA303358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DA34BF70();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);

  OUTLINED_FUNCTION_5_6();
  sub_1DA34BDB0();

  sub_1DA34BBC0();
  sub_1DA303954(&qword_1ECBA5BC0, MEMORY[0x1E69BCDA0], MEMORY[0x1E69BCD98]);
  sub_1DA34C7B0();
  return sub_1DA34BDC0();
}

uint64_t Action.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5BA8, &qword_1DA34F560);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - v6;
  sub_1DA34BDF0();
  v8 = sub_1DA34BD80();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_1DA303744(v7, v5);
    v9 = OUTLINED_FUNCTION_5_6();
    v11 = v10(v9);
    if (v11 == *MEMORY[0x1E69BCD60])
    {
      v12 = OUTLINED_FUNCTION_5_6();
      v13(v12);
      v14 = sub_1DA34BF70();
LABEL_6:
      (*(*(v14 - 8) + 32))(a1, v5);
      type metadata accessor for Action.Value(0);
      swift_storeEnumTagMultiPayload();
      return sub_1DA30386C(v7);
    }

    if (v11 == *MEMORY[0x1E69BCD68])
    {
      v15 = OUTLINED_FUNCTION_5_6();
      v16(v15);
      v14 = sub_1DA34BAC0();
      goto LABEL_6;
    }

    v18 = OUTLINED_FUNCTION_5_6();
    v19(v18);
  }

  result = sub_1DA34CFC0();
  __break(1u);
  return result;
}

uint64_t sub_1DA303744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5BA8, &qword_1DA34F560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA3037E4@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a2(0);
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 32);

  return v7(a3, a1, v5);
}

uint64_t sub_1DA30386C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5BA8, &qword_1DA34F560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Action.hash(into:)(uint64_t a1)
{
  sub_1DA34BE00();
  OUTLINED_FUNCTION_0_10();
  sub_1DA303954(v1, v2, MEMORY[0x1E69BCD80]);

  return sub_1DA34CAD0();
}

uint64_t sub_1DA303954(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Action.hashValue.getter()
{
  sub_1DA34D210();
  sub_1DA34BE00();
  OUTLINED_FUNCTION_0_10();
  sub_1DA303954(v0, v1, MEMORY[0x1E69BCD80]);
  sub_1DA34CAD0();
  return sub_1DA34D230();
}

uint64_t sub_1DA303A4C@<X0>(uint64_t *a1@<X8>)
{
  result = Action.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA303A7C(uint64_t a1)
{
  sub_1DA34D210();
  sub_1DA34BE00();
  sub_1DA303954(&qword_1ECBA5BB0, MEMORY[0x1E69BCD78], MEMORY[0x1E69BCD80]);
  sub_1DA34CAD0();
  return sub_1DA34D230();
}

uint64_t sub_1DA303B70@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t sub_1DA303DA4(uint64_t a1)
{
  result = type metadata accessor for Action.URLConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Action.AppIntentConfiguration(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA303ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DA303FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a5;
  v52 = a4;
  v55 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57C8, &unk_1DA34DA10);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_1();
  v9 = type metadata accessor for Action(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_1();
  v49 = v14 - v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v48 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v45 - v19;
  v20 = sub_1DA34BF10();
  v21 = *(v20 + 16);
  v53 = a2;
  v54 = a1;
  if (v21)
  {
    *&v47 = v5;
    *&v58 = MEMORY[0x1E69E7CC0];
    sub_1DA348214(0, v21, 0);
    v22 = v58;
    v23 = sub_1DA34BE00();
    v24 = *(v23 - 8);
    *&v57 = *(v24 + 16);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *&v46 = v20;
    v26 = v20 + v25;
    v27 = *(v24 + 72);
    do
    {
      (v57)(v12, v26, v23);
      *&v58 = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1DA348214(v28 > 1, v29 + 1, 1);
        v22 = v58;
      }

      *(v22 + 16) = v29 + 1;
      sub_1DA306620(v12, v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v29);
      v26 += v27;
      --v21;
    }

    while (v21);

    a2 = v53;
    a1 = v54;
    v5 = v47;
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA2F81F4(a2, v56, &qword_1ECBA5840, "lt");
  v30 = v55;
  if (v55)
  {
    v31 = sub_1DA34BFB0();
    OUTLINED_FUNCTION_12();
    (*(v32 + 16))(v5, a1, v31);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v31);
    v33 = v30;
    TipCollectionModel.init(result:collection:)(v5, v30, &v58);
    v47 = v59;
    v57 = v58;
    v55 = v33;
    v45 = v61;
    v46 = v60;
  }

  else
  {
    v57 = xmmword_1DA34DDC0;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
  }

  v34 = type metadata accessor for SupplementarySnippetModel(0);
  v35 = *(v34 + 20);
  v36 = type metadata accessor for AttributionModel(0);
  v37 = v48;
  __swift_storeEnumTagSinglePayload(v48, 1, 1, v36);
  v38 = v49;
  sub_1DA2F81F4(v37, v49, &qword_1ECBA5840, "lt");
  v39 = v51;
  sub_1DA34C0D0();
  sub_1DA2EF188(v37, &qword_1ECBA5840, "lt");
  v40 = *(v34 + 24);
  v58 = xmmword_1DA34DDC0;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5888, &unk_1DA34DEE0);
  sub_1DA34C0D0();
  *&v58 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5890, &unk_1DA34F7F0);
  sub_1DA34C0D0();
  sub_1DA2F81F4(v56, v37, &qword_1ECBA5840, "lt");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_12();
  (*(v41 + 8))(v39 + v35);
  sub_1DA2F81F4(v37, v38, &qword_1ECBA5840, "lt");
  sub_1DA34C0D0();
  sub_1DA2EF188(v37, &qword_1ECBA5840, "lt");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
  OUTLINED_FUNCTION_12();
  (*(v42 + 8))(v39 + v40);
  v58 = v57;
  v59 = v47;
  v60 = v46;
  v61 = v45;
  sub_1DA34C0D0();
  *&v58 = v52;
  type metadata accessor for FlowContext();

  sub_1DA34C0D0();

  sub_1DA2EF188(v53, &qword_1ECBA5840, "lt");
  sub_1DA34BFB0();
  OUTLINED_FUNCTION_12();
  (*(v43 + 8))(v54);
  return sub_1DA2EF188(v56, &qword_1ECBA5840, "lt");
}

BOOL sub_1DA3045EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  sub_1DA34C0F0();
  v0 = *(*&v7[0] + 16);

  if (v0)
  {
    return 1;
  }

  type metadata accessor for SupplementarySnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
  sub_1DA34C0F0();
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = v6;
  v1 = *(&v3 + 1) != 1;
  if (*(&v3 + 1) != 1)
  {
    sub_1DA2EF188(v7, &qword_1ECBA5888, &unk_1DA34DEE0);
  }

  return v1;
}

uint64_t SupplementarySnippetModel.init(actions:attributionModel:tipCollectionModel:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a1;
  v27 = a4;
  v25 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = a3[1];
  v32 = *a3;
  v33 = v15;
  v16 = a3[3];
  v34 = a3[2];
  v35 = v16;
  v17 = type metadata accessor for SupplementarySnippetModel(0);
  v18 = *(v17 + 20);
  v19 = type metadata accessor for AttributionModel(0);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
  sub_1DA2F81F4(v14, v11, &qword_1ECBA5840, "lt");
  sub_1DA34C0D0();
  sub_1DA2EF188(v14, &qword_1ECBA5840, "lt");
  v20 = *(v17 + 24);
  v28 = xmmword_1DA34DDC0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5888, &unk_1DA34DEE0);
  sub_1DA34C0D0();
  *&v28 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5890, &unk_1DA34F7F0);
  sub_1DA34C0D0();
  sub_1DA2F81F4(a2, v14, &qword_1ECBA5840, "lt");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_12();
  (*(v21 + 8))(a5 + v18);
  sub_1DA2F81F4(v14, v11, &qword_1ECBA5840, "lt");
  sub_1DA34C0D0();
  sub_1DA2EF188(v14, &qword_1ECBA5840, "lt");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
  OUTLINED_FUNCTION_12();
  (*(v22 + 8))(a5 + v20);
  v28 = v32;
  v29 = v33;
  v30 = v34;
  v31 = v35;
  sub_1DA34C0D0();
  *&v28 = v27;
  type metadata accessor for FlowContext();
  sub_1DA34C0D0();
  return sub_1DA2EF188(v25, &qword_1ECBA5840, "lt");
}

uint64_t type metadata accessor for SupplementarySnippetModel(uint64_t a1)
{
  result = qword_1EE10A720;
  if (!qword_1EE10A720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SupplementarySnippetModel.actions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  sub_1DA34C0F0();
  return v1;
}

uint64_t (*SupplementarySnippetModel.actions.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

void *SupplementarySnippetModel.attributionModel.getter()
{
  type metadata accessor for SupplementarySnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  return sub_1DA34C0F0();
}

uint64_t sub_1DA304B2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1DA2F81F4(a1, &v6 - v3, &qword_1ECBA5840, "lt");
  return SupplementarySnippetModel.attributionModel.setter(v4);
}

uint64_t SupplementarySnippetModel.attributionModel.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12_1();
  sub_1DA2F81F4(a1, v1, &qword_1ECBA5840, "lt");
  type metadata accessor for SupplementarySnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  sub_1DA34C100();
  return sub_1DA2EF188(a1, &qword_1ECBA5840, "lt");
}

uint64_t (*SupplementarySnippetModel.attributionModel.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0(v3);
  return sub_1DA2F25B0;
}

void *SupplementarySnippetModel.tipCollectionModel.getter()
{
  type metadata accessor for SupplementarySnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
  return sub_1DA34C0F0();
}

uint64_t sub_1DA304D64(_OWORD *a1)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  sub_1DA2F81F4(v6, &v5, &qword_1ECBA5888, &unk_1DA34DEE0);
  return SupplementarySnippetModel.tipCollectionModel.setter(a1);
}

uint64_t SupplementarySnippetModel.tipCollectionModel.setter(_OWORD *a1)
{
  type metadata accessor for SupplementarySnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
  return sub_1DA34C100();
}

uint64_t (*SupplementarySnippetModel.tipCollectionModel.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0(v3);
  return sub_1DA2F3614;
}

uint64_t SupplementarySnippetModel.context.getter()
{
  type metadata accessor for SupplementarySnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  sub_1DA34C0F0();
  return v1;
}

uint64_t SupplementarySnippetModel.context.setter(uint64_t a1)
{
  type metadata accessor for SupplementarySnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  return sub_1DA34C100();
}

uint64_t (*SupplementarySnippetModel.context.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0(v3);
  return sub_1DA2F3614;
}

uint64_t sub_1DA304FD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DA354F50 == a2;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001DA354F70 == a2;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DA34D160();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DA30513C(char a1)
{
  result = 0x736E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA3051D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA304FD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3051F8(uint64_t a1)
{
  v2 = sub_1DA3054AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA305234(uint64_t a1)
{
  v2 = sub_1DA3054AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SupplementarySnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5C00, &qword_1DA34F808);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3054AC();
  sub_1DA34D250();
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  OUTLINED_FUNCTION_1_6();
  sub_1DA305F68(v11);
  OUTLINED_FUNCTION_4_8(v3, &v24);
  if (!v2)
  {
    v12 = type metadata accessor for SupplementarySnippetModel(0);
    v13 = v12[5];
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    OUTLINED_FUNCTION_1_6();
    sub_1DA305590(v14);
    OUTLINED_FUNCTION_4_8(v3 + v13, &v23);
    v15 = v12[6];
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
    OUTLINED_FUNCTION_1_6();
    sub_1DA30603C(v16);
    OUTLINED_FUNCTION_4_8(v3 + v15, &v22);
    v17 = v12[7];
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    OUTLINED_FUNCTION_1_6();
    sub_1DA305808(v18);
    OUTLINED_FUNCTION_4_8(v3 + v17, &v21);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1DA3054AC()
{
  result = qword_1ECBA5C08;
  if (!qword_1ECBA5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5C08);
  }

  return result;
}

unint64_t sub_1DA305500(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5890, &unk_1DA34F7F0);
    sub_1DA306250(v4);
    OUTLINED_FUNCTION_10_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA305590(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    sub_1DA305664(&unk_1EE10A850);
    sub_1DA305664(&unk_1EE10A858);
    result = OUTLINED_FUNCTION_8_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA305664(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5840, "lt");
    sub_1DA306250(v4);
    OUTLINED_FUNCTION_10_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA3056F4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5888, &unk_1DA34DEE0);
    v4();
    OUTLINED_FUNCTION_10_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA305760()
{
  result = qword_1ECBA5C48;
  if (!qword_1ECBA5C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5C48);
  }

  return result;
}

unint64_t sub_1DA3057B4()
{
  result = qword_1ECBA5C58;
  if (!qword_1ECBA5C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5C58);
  }

  return result;
}

unint64_t sub_1DA305808(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5880, &qword_1DA34E250);
    sub_1DA306250(&unk_1EE10AC10);
    sub_1DA306250(&unk_1EE10AC18);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t SupplementarySnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v56 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_0();
  v55 = v2;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17_2();
  v57 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
  OUTLINED_FUNCTION_0();
  v68 = v6;
  v69 = v5;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17_2();
  v59 = v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_0();
  v71 = v9;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17_2();
  v60 = v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  OUTLINED_FUNCTION_0();
  v61 = v12;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17_2();
  v64 = v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5C60, &qword_1DA34F810);
  OUTLINED_FUNCTION_0();
  v62 = v15;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_1();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - v22;
  v24 = type metadata accessor for SupplementarySnippetModel(0);
  OUTLINED_FUNCTION_12();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v26 + 20);
  v30 = type metadata accessor for AttributionModel(0);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v30);
  sub_1DA2F81F4(v23, v20, &qword_1ECBA5840, "lt");
  v70 = v29;
  v31 = v66;
  sub_1DA34C0D0();
  sub_1DA2EF188(v23, &qword_1ECBA5840, "lt");
  v32 = *(v24 + 24);
  v72 = xmmword_1DA34DDC0;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5888, &unk_1DA34DEE0);
  sub_1DA34C0D0();
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_1DA3054AC();
  v33 = v67;
  sub_1DA34D240();
  if (v33)
  {
    v41 = v68;
    v40 = v69;
    __swift_destroy_boxed_opaque_existential_1(v31);
    (*(v71 + 8))(&v28[v70], v76);
    return (*(v41 + 8))(&v28[v32], v40);
  }

  else
  {
    LOBYTE(v72) = 0;
    OUTLINED_FUNCTION_2_4();
    sub_1DA305F68(v34);
    OUTLINED_FUNCTION_15_2();
    v35 = v63;
    OUTLINED_FUNCTION_18_0(v63, v36, v37, v38, v39);
    (*(v61 + 32))(v28, v64, v35);
    LOBYTE(v72) = 1;
    OUTLINED_FUNCTION_2_4();
    sub_1DA305590(v42);
    OUTLINED_FUNCTION_15_2();
    v43 = v76;
    OUTLINED_FUNCTION_18_0(v76, v44, v45, v46, v47);
    v48 = v69;
    (*(v71 + 40))(&v28[v70], v60, v43);
    LOBYTE(v72) = 2;
    OUTLINED_FUNCTION_2_4();
    sub_1DA30603C(v49);
    OUTLINED_FUNCTION_15_2();
    sub_1DA34D090();
    (*(v68 + 40))(&v28[v32], v59, v48);
    LOBYTE(v72) = 3;
    OUTLINED_FUNCTION_2_4();
    sub_1DA305808(v50);
    OUTLINED_FUNCTION_15_2();
    sub_1DA34D090();
    v51 = OUTLINED_FUNCTION_5_7();
    v52(v51, v65);
    (*(v55 + 32))(&v28[*(v24 + 28)], v57, v58);
    sub_1DA306100(v28, v56);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return sub_1DA306164(v28);
  }
}

unint64_t sub_1DA305F68(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5878, &unk_1DA34DED0);
    sub_1DA305500(&unk_1ECBA5C18);
    sub_1DA305500(&unk_1ECBA5C28);
    result = OUTLINED_FUNCTION_8_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA30603C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA58A0, &qword_1DA34F800);
    sub_1DA3056F4(&unk_1ECBA5C40);
    sub_1DA3056F4(&unk_1ECBA5C50);
    result = OUTLINED_FUNCTION_8_3();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DA306100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupplementarySnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA306164(uint64_t a1)
{
  v2 = type metadata accessor for SupplementarySnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA306250(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1DA3062EC(uint64_t a1)
{
  sub_1DA3063E8(319, &qword_1EE10AC60, &qword_1ECBA5890, &unk_1DA34F7F0);
  if (v1 <= 0x3F)
  {
    sub_1DA3063E8(319, &qword_1EE10AC88, &qword_1ECBA5840, "lt");
    if (v2 <= 0x3F)
    {
      sub_1DA3063E8(319, &qword_1EE10AC80, &qword_1ECBA5888, &unk_1DA34DEE0);
      if (v3 <= 0x3F)
      {
        sub_1DA2F33D8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DA3063E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1DA34C110();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SupplementarySnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DA30651C()
{
  result = qword_1ECBA5C88;
  if (!qword_1ECBA5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5C88);
  }

  return result;
}

unint64_t sub_1DA306574()
{
  result = qword_1ECBA5C90;
  if (!qword_1ECBA5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5C90);
  }

  return result;
}

unint64_t sub_1DA3065CC()
{
  result = qword_1ECBA5C98;
  if (!qword_1ECBA5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5C98);
  }

  return result;
}

uint64_t sub_1DA306620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Action(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_8(uint64_t a1, uint64_t a2)
{

  return sub_1DA34D120();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for SupplementarySnippetModel(0);
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DA34D090();
}

uint64_t sub_1DA306750(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 138))
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

uint64_t sub_1DA306790(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 138) = 1;
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

    *(result + 138) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DA306804(char a1)
{
  result = 0x5F72657473756C63;
  switch(a1)
  {
    case 1:
      result = 0x747865746E6F63;
      break;
    case 2:
      result = 0x626D79735F736168;
      break;
    case 3:
      result = 0x6574616C706D6574;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
    case 6:
      result = 0x5F65746972776572;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0x6867696C68676968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA306964()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 65);
  v4 = *(v0 + 80);
  v51 = *(v0 + 104);
  v52 = *(v0 + 120);
  v53 = *(v0 + 136);
  sub_1DA306F34();
  sub_1DA34CAC0();
  v5 = sub_1DA34CB30();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_2_11();
  sub_1DA30F908(v5, 0x5F72657473756C63, 0xEA00000000006469, v6);
  if (v1)
  {
    v7 = sub_1DA34CB30();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_11();
    sub_1DA30F908(v7, 0x747865746E6F63, 0xE700000000000000, v8);
  }

  else
  {
    v9 = sub_1DA30F7DC(0x747865746E6F63, 0xE700000000000000);
    if (v10)
    {
      v11 = v9;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA0, &qword_1DA350BF0);
      sub_1DA34CFA0();

      v12 = *(*(v54 + 56) + 8 * v11);
      sub_1DA34CFB0();
    }
  }

  sub_1DA34CCE0();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_11();
  sub_1DA30F908(v2, 0x626D79735F736168, 0xEB00000000736C6FLL, v13);
  sub_1DA33BA48(v3);
  v14 = sub_1DA34CB30();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DA30F908(v14, 0x6574616C706D6574, 0xED0000657079745FLL, isUniquelyReferenced_nonNull_native);
  if (v4)
  {
    sub_1DA34CB30();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_2_11();
    v16 = OUTLINED_FUNCTION_4_9();
    sub_1DA30F908(v16, v17, v18, v19);
  }

  else
  {
    sub_1DA30F7DC(0xD000000000000012, 0x80000001DA354F90);
    if (v20)
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_3_9();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA0, &qword_1DA350BF0);
      OUTLINED_FUNCTION_1_14(v21);
      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_5_8(v22, v23, MEMORY[0x1E69E6158]);
    }
  }

  sub_1DA34CCE0();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_11();
  sub_1DA30F908(v54, 0x5F65746972776572, 0xEF74706D65747461, v24);
  v25 = sub_1DA34CCE0();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DA30F908(v25, 0x5F65746972776572, 0xED00006E776F6873, v26);
  if (v51)
  {
    sub_1DA30F7DC(0xD000000000000014, 0x80000001DA354FB0);
    if (v27)
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_3_9();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA0, &qword_1DA350BF0);
      OUTLINED_FUNCTION_1_14(v28);
      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_5_8(v29, v30, MEMORY[0x1E69E6158]);
    }
  }

  else
  {
    sub_1DA34CD60();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_2_11();
    v31 = OUTLINED_FUNCTION_4_9();
    sub_1DA30F908(v31, v32, v33, v34);
  }

  if (v52)
  {
    sub_1DA30F7DC(0xD000000000000019, 0x80000001DA354FD0);
    if (v35)
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_3_9();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA0, &qword_1DA350BF0);
      OUTLINED_FUNCTION_1_14(v36);
      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_5_8(v37, v38, MEMORY[0x1E69E6158]);
    }
  }

  else
  {
    sub_1DA34CD60();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_2_11();
    v39 = OUTLINED_FUNCTION_4_9();
    sub_1DA30F908(v39, 0xD000000000000019, v40, v41);
  }

  if (v53)
  {
    sub_1DA30F7DC(0xD000000000000019, 0x80000001DA354FF0);
    if (v42)
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_3_9();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA0, &qword_1DA350BF0);
      OUTLINED_FUNCTION_1_14(v43);
      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_5_8(v44, v45, MEMORY[0x1E69E6158]);
    }
  }

  else
  {
    sub_1DA34CD60();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_2_11();
    v46 = OUTLINED_FUNCTION_4_9();
    sub_1DA30F908(v46, 0xD000000000000019, v47, v48);
  }

  sub_1DA34CCE0();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_11();
  sub_1DA30F908(v54, 0x6867696C68676968, 0xE900000000000074, v49);
  return v54;
}

uint64_t sub_1DA306ED0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DA306F00()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1DA306F34()
{
  result = qword_1EE108FE8;
  if (!qword_1EE108FE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE108FE8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_11()
{
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1)
{

  return sub_1DA34CFA0();
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DA34CFB0();
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1DA307058(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6F4E746C75736572;
  }
}

uint64_t sub_1DA3070C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = a4;
  v28 = a2;
  v29 = a3;
  v31 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  v8 = OUTLINED_FUNCTION_0_12(v7);
  v32 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CB0, qword_1DA34FAE8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - v15;
  v17 = sub_1DA34C290();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  (*(v18 + 16))(&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17);
  v30 = "rewrite_output_word_count";
  v20 = sub_1DA34C1A0();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v16, a3, v20);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v20);
  sub_1DA30755C(a2, v13);
  v22 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v23 = v22 + v11;
  v24 = swift_allocObject();
  sub_1DA3075CC(v13, v24 + v22);
  *(v24 + v23) = v33;
  v25 = sub_1DA34C1D0();
  (*(v21 + 8))(v29, v20);
  sub_1DA3076D0(v28);
  (*(v18 + 8))(v31, v17);
  return v25;
}

uint64_t sub_1DA3073B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1DA30755C(a2, &v9 - v5);
  v7 = sub_1DA34C410();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1DA3076D0(v6);
  }

  else
  {
    sub_1DA34C400();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  sub_1DA34C1C0();
  return sub_1DA34C1B0();
}

uint64_t sub_1DA30755C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA3075CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA30763C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  OUTLINED_FUNCTION_0_12(v3);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_1DA3073B8(a1, v6, v7);
}

uint64_t sub_1DA3076D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DeviceExpertCATsSimple(uint64_t a1)
{
  result = qword_1EE109EA8;
  if (!qword_1EE109EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1DA3077D4()
{
  OUTLINED_FUNCTION_20_2();
  sub_1DA34CFF0();
  OUTLINED_FUNCTION_23_2();
  return v0 != 0;
}

BOOL sub_1DA30783C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DA3077D4();
  *a1 = result;
  return result;
}

unint64_t sub_1DA307870@<X0>(void *a1@<X8>)
{
  result = sub_1DA307810();
  *a1 = 0xD00000000000001BLL;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA3078A0()
{
  OUTLINED_FUNCTION_16();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B10, &qword_1DA34FBC0);
  OUTLINED_FUNCTION_15_3(v5);
  *(v1 + 40) = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA307938()
{
  OUTLINED_FUNCTION_2_6();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CC0, &qword_1DA34FBC8);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_1DA34DA00;
  *(v3 + 32) = 0xD000000000000014;
  *(v3 + 40) = 0x80000001DA3551C0;
  sub_1DA3094C0(v2, v1, &qword_1ECBA5B10, &qword_1DA34FBC0);
  v4 = sub_1DA34C600();
  if (OUTLINED_FUNCTION_9_1(v4) == 1)
  {
    sub_1DA2E7E4C(*(v0 + 40), &qword_1ECBA5B10, &qword_1DA34FBC0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_19_2();
    v5();
  }

  v6 = *(v0 + 72);
  *(v3 + 80) = 0xD000000000000019;
  *(v3 + 88) = 0x80000001DA3551E0;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = MEMORY[0x1E69E63B0];
  }

  *(v3 + 96) = v7;
  *(v3 + 120) = v8;
  OUTLINED_FUNCTION_4_10(MEMORY[0x1E69CE3E0]);
  v13 = v9;
  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  sub_1DA3095DC();
  OUTLINED_FUNCTION_10_4();
  *v10 = v11;
  v10[1] = sub_1DA307B28;

  return v13(0xD00000000000001DLL, 0x80000001DA355200, v3, &type metadata for DeviceExpertCATsSimple.AttributionGroupDialogIds);
}

uint64_t sub_1DA307B28()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_3_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_9();

    return v11(v10);
  }
}

uint64_t sub_1DA307C58()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_15();

  return v0();
}

BOOL sub_1DA307CBC()
{
  OUTLINED_FUNCTION_20_2();
  sub_1DA34CFF0();
  OUTLINED_FUNCTION_23_2();
  return v0 != 0;
}

BOOL sub_1DA307D20@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DA307CBC();
  *a1 = result;
  return result;
}

unint64_t sub_1DA307D54@<X0>(void *a1@<X8>)
{
  result = sub_1DA307CF8();
  *a1 = 0xD00000000000001CLL;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA307D84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA307D98()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CC0, &qword_1DA34FBC8);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_1DA34DC80;
  *(v2 + 32) = 0xD000000000000015;
  *(v2 + 40) = 0x80000001DA3551A0;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CD0, &qword_1DA34FBD8);
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_11_1(MEMORY[0x1E69CE3E0]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  sub_1DA309588();
  OUTLINED_FUNCTION_10_4();
  *v3 = v4;
  v3[1] = sub_1DA307EE8;

  return v6(0xD00000000000001CLL, 0x80000001DA355180, v2, &type metadata for DeviceExpertCATsSimple.AttributionListDialogIds);
}

uint64_t sub_1DA307EE8()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_3_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_6_6();

    return v11(v10);
  }
}

uint64_t sub_1DA308010(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA308024()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CC0, &qword_1DA34FBC8);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_1DA34DC80;
  OUTLINED_FUNCTION_18_1();
  *(v3 + 32) = v4;
  *(v3 + 40) = 0xE700000000000000;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CD0, &qword_1DA34FBD8);
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_11_1(MEMORY[0x1E69CE3E8]);

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1DA308150;

  return v7(0xD00000000000001ALL, 0x80000001DA355160, v2);
}

uint64_t sub_1DA308150()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_3_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_6_6();

    return v11(v10);
  }
}

uint64_t sub_1DA308278()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_1DA3082D4()
{
  OUTLINED_FUNCTION_16();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  *(v1 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B10, &qword_1DA34FBC0);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 32) = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA308368()
{
  OUTLINED_FUNCTION_2_6();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CC0, &qword_1DA34FBC8);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = xmmword_1DA34DA00;
  *(v4 + 32) = 0x7069547369;
  *(v4 + 40) = 0xE500000000000000;
  v5 = MEMORY[0x1E69E6370];
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x74706D6F7270;
  *(v4 + 88) = 0xE600000000000000;
  sub_1DA3094C0(v2, v1, &qword_1ECBA5B10, &qword_1DA34FBC0);
  v6 = sub_1DA34C600();
  if (OUTLINED_FUNCTION_9_1(v6) == 1)
  {
    sub_1DA2E7E4C(*(v0 + 32), &qword_1ECBA5B10, &qword_1DA34FBC0);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_0((v4 + 96));
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_19_2();
    v7();
  }

  OUTLINED_FUNCTION_4_10(MEMORY[0x1E69CE3E8]);
  v11 = v8;
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_16_0(v9);

  return v11(0xD000000000000014);
}

uint64_t sub_1DA30851C()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_3_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_9();

    return v11(v10);
  }
}

uint64_t sub_1DA30864C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA308664()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CC0, &qword_1DA34FBC8);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_1DA34DA00;
  *(v3 + 32) = 0x7370657473;
  *(v3 + 40) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CC8, &qword_1DA34FBD0);
  *(v3 + 48) = v2;
  OUTLINED_FUNCTION_18_1();
  *(v3 + 72) = v4;
  *(v3 + 80) = v5;
  *(v3 + 88) = 0xE700000000000000;
  *(v3 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CD0, &qword_1DA34FBD8);
  *(v3 + 96) = v1;
  OUTLINED_FUNCTION_11_1(MEMORY[0x1E69CE3E8]);

  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1DA3087D4;

  return v8(0xD000000000000017, 0x80000001DA355120, v3);
}

uint64_t sub_1DA3087D4()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_3_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_6_6();

    return v11(v10);
  }
}

uint64_t sub_1DA3088FC()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_1DA308958()
{
  OUTLINED_FUNCTION_16();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B10, &qword_1DA34FBC0);
  OUTLINED_FUNCTION_15_3(v3);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA3089E8()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CC0, &qword_1DA34FBC8);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_1DA34DC80;
  *(v3 + 32) = 0x7079546575737369;
  *(v3 + 40) = 0xE900000000000065;
  sub_1DA3094C0(v2, v1, &qword_1ECBA5B10, &qword_1DA34FBC0);
  v4 = sub_1DA34C600();
  if (OUTLINED_FUNCTION_9_1(v4) == 1)
  {
    sub_1DA2E7E4C(v0[4], &qword_1ECBA5B10, &qword_1DA34FBC0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_19_2();
    v5();
  }

  OUTLINED_FUNCTION_4_10(MEMORY[0x1E69CE3E8]);
  v9 = v6;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_16_0(v7);

  return v9(0xD000000000000020);
}

uint64_t sub_1DA308B7C()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_3_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_9();

    return v11(v10);
  }
}

uint64_t sub_1DA308CAC()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_15();

  return v0();
}

unint64_t sub_1DA308D10()
{
  OUTLINED_FUNCTION_20_2();
  sub_1DA34CFF0();
  OUTLINED_FUNCTION_23_2();
  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DA308D50(char a1)
{
  result = 0x73646F50726961;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x79726574746162;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x64656C6261736964;
      break;
    case 5:
      result = 0x6150746F67726F66;
      break;
    case 6:
      result = 1818845549;
      break;
    case 7:
      result = 0x736567617373656DLL;
      break;
    case 8:
      result = 0x6573616863727570;
      break;
    case 9:
      result = 0x6572617774666F73;
      break;
    case 10:
      result = 1768319351;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

unint64_t sub_1DA308EB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA308D10();
  *a1 = result;
  return result;
}

unint64_t sub_1DA308EE4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DA308D50(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_1DA308F10()
{
  OUTLINED_FUNCTION_20_2();
  sub_1DA34CFF0();
  OUTLINED_FUNCTION_23_2();
  return v0 != 0;
}

BOOL sub_1DA308F68@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DA308F10();
  *a1 = result;
  return result;
}

uint64_t sub_1DA308FB0()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_4_10(MEMORY[0x1E69CE3E0]);
  v6 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  sub_1DA30946C();
  OUTLINED_FUNCTION_10_4();
  *v2 = v3;
  v2[1] = sub_1DA309078;
  v4 = MEMORY[0x1E69E7CC0];

  return v6(0xD000000000000026, 0x80000001DA3550C0, v4, &type metadata for DeviceExpertCATsSimple.TroubleshootingHelpLabelsDialogIds);
}

uint64_t sub_1DA309078()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1DA30916C(uint64_t a1)
{
  swift_allocObject();
  OUTLINED_FUNCTION_19_2();
  return sub_1DA3091BC(v1, v2, v3);
}

uint64_t sub_1DA3091BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DA34C680();
  OUTLINED_FUNCTION_14_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  v12 = OUTLINED_FUNCTION_15_3(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DA3094C0(a1, &v16 - v13, &qword_1ECBA59B0, &qword_1DA34EA70);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_1DA34C610();
  (*(v7 + 8))(a2, v3);
  sub_1DA2E7E4C(a1, &qword_1ECBA59B0, &qword_1DA34EA70);
  return v14;
}

uint64_t sub_1DA309334(uint64_t a1, uint64_t a2)
{
  sub_1DA34C680();
  OUTLINED_FUNCTION_14_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_1DA34C620();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_1DA309434()
{
  sub_1DA34C640();

  return swift_deallocClassInstance();
}

unint64_t sub_1DA30946C()
{
  result = qword_1ECBA5CB8;
  if (!qword_1ECBA5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5CB8);
  }

  return result;
}

uint64_t sub_1DA3094C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_1DA309588()
{
  result = qword_1EE109EC0;
  if (!qword_1EE109EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109EC0);
  }

  return result;
}

unint64_t sub_1DA3095DC()
{
  result = qword_1EE109EB8;
  if (!qword_1EE109EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109EB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceExpertCATsSimple.TroubleshootingHelpDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceExpertCATsSimple.TroubleshootingHelpDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DA3097B4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA309864()
{
  result = qword_1ECBA5CD8;
  if (!qword_1ECBA5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5CD8);
  }

  return result;
}

unint64_t sub_1DA3098BC()
{
  result = qword_1ECBA5CE0;
  if (!qword_1ECBA5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5CE0);
  }

  return result;
}

unint64_t sub_1DA309914()
{
  result = qword_1ECBA5CE8;
  if (!qword_1ECBA5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5CE8);
  }

  return result;
}

unint64_t sub_1DA30996C()
{
  result = qword_1ECBA5CF0;
  if (!qword_1ECBA5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5CF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_23_2()
{
}

uint64_t TroubleshootingSnippetModel.actions.getter()
{
  type metadata accessor for TroubleshootingSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  OUTLINED_FUNCTION_13_2(v0);
  return v2;
}

uint64_t type metadata accessor for TroubleshootingSnippetModel(uint64_t a1)
{
  result = qword_1EE10A4E8;
  if (!qword_1EE10A4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TroubleshootingSnippetModel.context.getter()
{
  type metadata accessor for TroubleshootingSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_13_2(v0);
  return v2;
}

uint64_t TroubleshootingSnippetModel.init(issueType:actions:body:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58B8, &qword_1DA34FEF0);
  type metadata accessor for TextRun(0);
  *(swift_allocObject() + 16) = xmmword_1DA34DC80;
  sub_1DA34BA10();
  sub_1DA30B224(&qword_1EE10ACC8);
  sub_1DA34C7B0();

  *a7 = a1;
  a7[1] = a2;
  type metadata accessor for TroubleshootingSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5890, &unk_1DA34F7F0);
  sub_1DA34C0D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  sub_1DA34C0D0();
  type metadata accessor for FlowContext();
  return sub_1DA34C0D0();
}

uint64_t TroubleshootingSnippetModel.issueType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TroubleshootingSnippetModel.actions.setter()
{
  type metadata accessor for TroubleshootingSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  return OUTLINED_FUNCTION_10_5(v0, v1);
}

uint64_t (*TroubleshootingSnippetModel.actions.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_7_4(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0(v2);
  return sub_1DA2F3614;
}

uint64_t TroubleshootingSnippetModel.body.getter()
{
  type metadata accessor for TroubleshootingSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2(v0);
  return v2;
}

uint64_t TroubleshootingSnippetModel.body.setter()
{
  type metadata accessor for TroubleshootingSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  return OUTLINED_FUNCTION_10_5(v0, v1);
}

uint64_t (*TroubleshootingSnippetModel.body.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_7_4(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0(v2);
  return sub_1DA2F25B0;
}

uint64_t TroubleshootingSnippetModel.context.setter()
{
  type metadata accessor for TroubleshootingSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  return OUTLINED_FUNCTION_10_5(v0, v1);
}

uint64_t (*TroubleshootingSnippetModel.context.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_7_4(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0(v2);
  return sub_1DA2F3614;
}

uint64_t TroubleshootingSnippetModel.init(issueType:actions:body:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  type metadata accessor for TroubleshootingSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5890, &unk_1DA34F7F0);
  sub_1DA34C0D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  sub_1DA34C0D0();
  type metadata accessor for FlowContext();
  return sub_1DA34C0D0();
}

uint64_t TroubleshootingSnippetModel.selectableComponents.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A80, &unk_1DA34EA50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DA34DC80;
  type metadata accessor for TroubleshootingSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  *(v0 + 64) = &protocol witness table for [A];
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_1DA30A2A0()
{
  type metadata accessor for TroubleshootingSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2(v0);
  sub_1DA3462B8();
  v2 = v1;

  return v2 & 1;
}

uint64_t sub_1DA30A304(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546575737369 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 2036625250 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DA34D160();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DA30A464(char a1)
{
  result = 0x7079546575737369;
  switch(a1)
  {
    case 1:
      result = 0x736E6F69746361;
      break;
    case 2:
      result = 2036625250;
      break;
    case 3:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA30A4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA30A304(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA30A514(uint64_t a1)
{
  v2 = sub_1DA30ACFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30A550(uint64_t a1)
{
  v2 = sub_1DA30ACFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TroubleshootingSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CF8, &qword_1DA34FEF8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA30ACFC();
  sub_1DA34D250();
  v22[1] = 0;
  sub_1DA34D0F0();
  if (!v2)
  {
    v11 = type metadata accessor for TroubleshootingSnippetModel(0);
    v12 = v11[5];
    v22[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
    OUTLINED_FUNCTION_1_6();
    sub_1DA30AFFC(v13);
    OUTLINED_FUNCTION_4_8(v3 + v12, v22);
    v14 = v11[6];
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
    OUTLINED_FUNCTION_1_6();
    sub_1DA30ADD8(v15);
    OUTLINED_FUNCTION_4_8(v3 + v14, &v21);
    v16 = v11[7];
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    OUTLINED_FUNCTION_1_6();
    sub_1DA30AF38(v17);
    OUTLINED_FUNCTION_4_8(v3 + v16, &v20);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t TroubleshootingSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_0();
  v40 = v3;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v4);
  v43 = v37 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_0();
  v44 = v6;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v7);
  v47 = v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  OUTLINED_FUNCTION_0();
  v45 = v10;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D08, &qword_1DA34FF00);
  OUTLINED_FUNCTION_0();
  v46 = v14;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v37 - v16;
  v18 = type metadata accessor for TroubleshootingSnippetModel(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA30ACFC();
  v49 = v17;
  v21 = v51;
  sub_1DA34D240();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v47;
  v38 = v18;
  v39 = v20;
  v51 = v9;
  v23 = v48;
  v55 = 0;
  v24 = sub_1DA34D060();
  v25 = v39;
  *v39 = v24;
  v25[1] = v26;
  v37[1] = v26;
  v54 = 1;
  OUTLINED_FUNCTION_2_4();
  sub_1DA30AFFC(v27);
  v28 = v51;
  sub_1DA34D090();
  (*(v45 + 32))(v39 + *(v38 + 20), v13, v28);
  v53 = 2;
  OUTLINED_FUNCTION_2_4();
  sub_1DA30ADD8(v29);
  v30 = v23;
  sub_1DA34D090();
  v31 = v38;
  (*(v44 + 32))(v39 + *(v38 + 24), v22, v30);
  v52 = 3;
  OUTLINED_FUNCTION_2_4();
  sub_1DA30AF38(v32);
  sub_1DA34D090();
  v33 = OUTLINED_FUNCTION_6_7();
  v34(v33);
  v35 = v39;
  (*(v40 + 32))(v39 + *(v31 + 28), v43, v42);
  sub_1DA30B0D4(v35, v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA30B138(v35);
}

unint64_t sub_1DA30ACFC()
{
  result = qword_1ECBA5D00;
  if (!qword_1ECBA5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D00);
  }

  return result;
}

unint64_t sub_1DA30AD50(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5890, &unk_1DA34F7F0);
    sub_1DA30B224(v4);
    result = OUTLINED_FUNCTION_12_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA30ADD8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5A88, &qword_1DA352620);
    sub_1DA30AEB0(&unk_1EE109F68);
    sub_1DA30AEB0(&unk_1EE109F70);
    result = OUTLINED_FUNCTION_8_4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA30AEB0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    sub_1DA30B224(v4);
    result = OUTLINED_FUNCTION_12_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA30AF38(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5880, &qword_1DA34E250);
    sub_1DA30B224(&unk_1EE10AC10);
    sub_1DA30B224(&unk_1EE10AC18);
    result = OUTLINED_FUNCTION_8_4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA30AFFC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5878, &unk_1DA34DED0);
    sub_1DA30AD50(&unk_1ECBA5C18);
    sub_1DA30AD50(&unk_1ECBA5C28);
    result = OUTLINED_FUNCTION_8_4();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DA30B0D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TroubleshootingSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA30B138(uint64_t a1)
{
  v2 = type metadata accessor for TroubleshootingSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA30B224(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1DA30B290(uint64_t a1)
{
  sub_1DA3063E8(319, &qword_1EE10AC60, &qword_1ECBA5890, &unk_1DA34F7F0);
  if (v1 <= 0x3F)
  {
    sub_1DA3063E8(319, &qword_1EE10AC50, &qword_1ECBA58C0, &qword_1DA34DF10);
    if (v2 <= 0x3F)
    {
      sub_1DA2F33D8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TroubleshootingSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DA30B44C()
{
  result = qword_1ECBA5D20;
  if (!qword_1ECBA5D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D20);
  }

  return result;
}

unint64_t sub_1DA30B4A4()
{
  result = qword_1ECBA5D28;
  if (!qword_1ECBA5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D28);
  }

  return result;
}

unint64_t sub_1DA30B4FC()
{
  result = qword_1ECBA5D30;
  if (!qword_1ECBA5D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for TroubleshootingSnippetModel(0);
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2, ...)
{

  return sub_1DA34C100();
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_13_2(uint64_t a1, ...)
{

  return sub_1DA34C0F0();
}

uint64_t sub_1DA30B5E8()
{
  type metadata accessor for TellMeGeneratedSnippetModels(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_34_0(v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      type metadata accessor for LearnMoreSnippetModel(0);
      OUTLINED_FUNCTION_17_3();
      v5 = &off_1F55E2D60;
      break;
    case 2u:
      type metadata accessor for ListStyleAnswerSnippetModel(0);
      OUTLINED_FUNCTION_20_3();
      v5 = &off_1F55E2518;
      break;
    case 3u:
      type metadata accessor for SummarizedAnswerSnippetModel(0);
      OUTLINED_FUNCTION_18_2();
      v5 = &off_1F55E2C88;
      break;
    case 4u:
      type metadata accessor for SupplementarySnippetModel(0);
      OUTLINED_FUNCTION_21_1();
      v5 = &off_1F55E0B50;
      break;
    case 5u:
      type metadata accessor for TipSnippetModel(0);
      OUTLINED_FUNCTION_16_1();
      v5 = &off_1F55E0490;
      break;
    case 6u:
      type metadata accessor for TroubleshootingSnippetModel(0);
      OUTLINED_FUNCTION_15_4();
      v5 = &off_1F55E0F28;
      break;
    default:
      type metadata accessor for AttributionListSnippetModel(0);
      OUTLINED_FUNCTION_22_2();
      v5 = &off_1F55E0350;
      break;
  }

  v12 = v4;
  v13 = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  sub_1DA30DE10(v0, boxed_opaque_existential_0, v1);
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v7 = OUTLINED_FUNCTION_31_0();
  v9 = v8(v7);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9 & 1;
}

uint64_t sub_1DA30B76C()
{
  type metadata accessor for TellMeGeneratedSnippetModels(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_34_0(v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      type metadata accessor for LearnMoreSnippetModel(0);
      OUTLINED_FUNCTION_17_3();
      v5 = &off_1F55E2D50;
      break;
    case 2u:
      type metadata accessor for ListStyleAnswerSnippetModel(0);
      OUTLINED_FUNCTION_20_3();
      v5 = &off_1F55E2508;
      break;
    case 3u:
      type metadata accessor for SummarizedAnswerSnippetModel(0);
      OUTLINED_FUNCTION_18_2();
      v5 = &off_1F55E2C78;
      break;
    case 4u:
      type metadata accessor for SupplementarySnippetModel(0);
      OUTLINED_FUNCTION_21_1();
      v5 = &off_1F55E0B40;
      break;
    case 5u:
      type metadata accessor for TipSnippetModel(0);
      OUTLINED_FUNCTION_16_1();
      v5 = &off_1F55E0480;
      break;
    case 6u:
      type metadata accessor for TroubleshootingSnippetModel(0);
      OUTLINED_FUNCTION_15_4();
      v5 = &off_1F55E0F18;
      break;
    default:
      type metadata accessor for AttributionListSnippetModel(0);
      OUTLINED_FUNCTION_22_2();
      v5 = &off_1F55E0340;
      break;
  }

  v12 = v4;
  v13 = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  sub_1DA30DE10(v0, boxed_opaque_existential_0, v1);
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v7 = OUTLINED_FUNCTION_31_0();
  v9 = v8(v7);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9 & 1;
}

uint64_t sub_1DA30B918(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEF7473694C6E6F69;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F4D6E7261656CLL && a2 == 0xE900000000000065;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C7974537473696CLL && a2 == 0xEF726577736E4165;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001DA355270 == a2;
        if (v8 || (sub_1DA34D160() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656D656C70707573 && a2 == 0xED0000797261746ELL;
          if (v9 || (sub_1DA34D160() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7367028 && a2 == 0xE300000000000000;
            if (v10 || (sub_1DA34D160() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x73656C62756F7274 && a2 == 0xEF676E69746F6F68)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DA34D160();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DA30BB80(char a1)
{
  result = 0x7475626972747461;
  switch(a1)
  {
    case 1:
      result = 0x726F4D6E7261656CLL;
      break;
    case 2:
      result = 0x6C7974537473696CLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x656D656C70707573;
      break;
    case 5:
      result = 7367028;
      break;
    case 6:
      result = 0x73656C62756F7274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA30BC7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DA34D160();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DA30BCF0(uint64_t a1)
{
  v2 = sub_1DA30CFA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30BD2C(uint64_t a1)
{
  v2 = sub_1DA30CFA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA30BD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA30B918(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA30BD98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA30BB78();
  *a1 = result;
  return result;
}

uint64_t sub_1DA30BDC0(uint64_t a1)
{
  v2 = sub_1DA30CCF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30BDFC(uint64_t a1)
{
  v2 = sub_1DA30CCF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA30BE38(uint64_t a1)
{
  v2 = sub_1DA30CF54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30BE74(uint64_t a1)
{
  v2 = sub_1DA30CF54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA30BEB0(uint64_t a1)
{
  v2 = sub_1DA30CF00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30BEEC(uint64_t a1)
{
  v2 = sub_1DA30CF00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA30BF28(uint64_t a1)
{
  v2 = sub_1DA30CEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30BF64(uint64_t a1)
{
  v2 = sub_1DA30CEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA30BFA0(uint64_t a1)
{
  v2 = sub_1DA30CE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30BFDC(uint64_t a1)
{
  v2 = sub_1DA30CE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA30C018(uint64_t a1)
{
  v2 = sub_1DA30CE04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30C054(uint64_t a1)
{
  v2 = sub_1DA30CE04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA30C090(uint64_t a1)
{
  v2 = sub_1DA30CDB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30C0CC(uint64_t a1)
{
  v2 = sub_1DA30CDB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TellMeGeneratedSnippetModels.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D38, &qword_1DA350120);
  OUTLINED_FUNCTION_0();
  v130 = v3;
  v131 = v2;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_2();
  v129 = v5;
  v127 = type metadata accessor for TroubleshootingSnippetModel(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_11();
  v128 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D40, &qword_1DA350128);
  OUTLINED_FUNCTION_0();
  v125 = v9;
  v126 = v8;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17_2();
  v124 = v11;
  v122 = type metadata accessor for TipSnippetModel(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_11();
  v123 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D48, &qword_1DA350130);
  OUTLINED_FUNCTION_0();
  v120 = v15;
  v121 = v14;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_2();
  v119 = v17;
  v117 = type metadata accessor for SupplementarySnippetModel(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_11();
  v118 = v19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D50, &qword_1DA350138);
  OUTLINED_FUNCTION_0();
  v115 = v20;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_29_2(v22);
  v113 = type metadata accessor for SummarizedAnswerSnippetModel(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_29_2(v24);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D58, &qword_1DA350140);
  OUTLINED_FUNCTION_0();
  v111 = v25;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_29_2(v27);
  v109 = type metadata accessor for ListStyleAnswerSnippetModel(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_29_2(v29);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D60, &qword_1DA350148);
  OUTLINED_FUNCTION_0();
  v107 = v30;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_29_2(v32);
  v105 = type metadata accessor for LearnMoreSnippetModel(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_29_2(v34);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D68, &qword_1DA350150);
  OUTLINED_FUNCTION_0();
  v103 = v35;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v103 - v37;
  type metadata accessor for AttributionListSnippetModel(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1_4();
  v42 = v41 - v40;
  v43 = type metadata accessor for TellMeGeneratedSnippetModels(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_1_4();
  v47 = v46 - v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D70, &qword_1DA350158);
  OUTLINED_FUNCTION_0();
  v134 = v49;
  v135 = v48;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v103 - v51;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA30CCF8();
  v133 = v52;
  sub_1DA34D250();
  sub_1DA30CD4C(v132, v47);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v59 = v106;
      sub_1DA30DE10(v47, v106, type metadata accessor for LearnMoreSnippetModel);
      v137 = 1;
      v82 = sub_1DA30CF54();
      OUTLINED_FUNCTION_3_11(&type metadata for TellMeGeneratedSnippetModels.LearnMoreCodingKeys, &v137, v83, v84, v82);
      OUTLINED_FUNCTION_19_3();
      sub_1DA30DF00(v85, v86, &protocol conformance descriptor for LearnMoreSnippetModel);
      OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_32_0();
      v87 = OUTLINED_FUNCTION_10_6();
      v88(v87);
      v67 = type metadata accessor for LearnMoreSnippetModel;
      goto LABEL_9;
    case 2u:
      v59 = v110;
      sub_1DA30DE10(v47, v110, type metadata accessor for ListStyleAnswerSnippetModel);
      v138 = 2;
      v68 = sub_1DA30CF00();
      OUTLINED_FUNCTION_3_11(&type metadata for TellMeGeneratedSnippetModels.ListStyleAnswerCodingKeys, &v138, v69, v70, v68);
      OUTLINED_FUNCTION_25_2();
      sub_1DA30DF00(v71, v72, &protocol conformance descriptor for ListStyleAnswerSnippetModel);
      OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_32_0();
      v73 = OUTLINED_FUNCTION_10_6();
      v74(v73);
      v67 = type metadata accessor for ListStyleAnswerSnippetModel;
      goto LABEL_9;
    case 3u:
      v59 = v114;
      sub_1DA30DE10(v47, v114, type metadata accessor for SummarizedAnswerSnippetModel);
      v139 = 3;
      v75 = sub_1DA30CEAC();
      OUTLINED_FUNCTION_3_11(&type metadata for TellMeGeneratedSnippetModels.SummarizedAnswerCodingKeys, &v139, v76, v77, v75);
      OUTLINED_FUNCTION_23_3();
      sub_1DA30DF00(v78, v79, &protocol conformance descriptor for SummarizedAnswerSnippetModel);
      OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_32_0();
      v80 = OUTLINED_FUNCTION_10_6();
      v81(v80);
      v67 = type metadata accessor for SummarizedAnswerSnippetModel;
      goto LABEL_9;
    case 4u:
      v59 = v118;
      sub_1DA30DE10(v47, v118, type metadata accessor for SupplementarySnippetModel);
      v140 = 4;
      v60 = sub_1DA30CE58();
      OUTLINED_FUNCTION_3_11(&type metadata for TellMeGeneratedSnippetModels.SupplementaryCodingKeys, &v140, v61, v62, v60);
      OUTLINED_FUNCTION_13_3();
      sub_1DA30DF00(v63, v64, &protocol conformance descriptor for SupplementarySnippetModel);
      OUTLINED_FUNCTION_30_2();
      sub_1DA34D120();
      v65 = OUTLINED_FUNCTION_10_6();
      v66(v65);
      v67 = type metadata accessor for SupplementarySnippetModel;
      goto LABEL_9;
    case 5u:
      v59 = v123;
      sub_1DA30DE10(v47, v123, type metadata accessor for TipSnippetModel);
      v141 = 5;
      v89 = sub_1DA30CE04();
      OUTLINED_FUNCTION_3_11(&type metadata for TellMeGeneratedSnippetModels.TipCodingKeys, &v141, v90, v91, v89);
      OUTLINED_FUNCTION_14_4();
      sub_1DA30DF00(v92, v93, &protocol conformance descriptor for TipSnippetModel);
      OUTLINED_FUNCTION_30_2();
      sub_1DA34D120();
      v94 = OUTLINED_FUNCTION_10_6();
      v95(v94);
      v67 = type metadata accessor for TipSnippetModel;
      goto LABEL_9;
    case 6u:
      v59 = v128;
      sub_1DA30DE10(v47, v128, type metadata accessor for TroubleshootingSnippetModel);
      v142 = 6;
      v96 = sub_1DA30CDB0();
      OUTLINED_FUNCTION_3_11(&type metadata for TellMeGeneratedSnippetModels.TroubleshootingCodingKeys, &v142, v97, v98, v96);
      OUTLINED_FUNCTION_26_1();
      sub_1DA30DF00(v99, v100, &protocol conformance descriptor for TroubleshootingSnippetModel);
      OUTLINED_FUNCTION_30_2();
      sub_1DA34D120();
      v101 = OUTLINED_FUNCTION_10_6();
      v102(v101);
      v67 = type metadata accessor for TroubleshootingSnippetModel;
LABEL_9:
      sub_1DA30CFFC(v59, v67);
      result = (*(v134 + 8))(v43, v38);
      break;
    default:
      sub_1DA30DE10(v47, v42, type metadata accessor for AttributionListSnippetModel);
      v136 = 0;
      sub_1DA30CFA8();
      v53 = v135;
      v54 = v133;
      sub_1DA34D0B0();
      OUTLINED_FUNCTION_24_1();
      sub_1DA30DF00(v55, v56, &protocol conformance descriptor for AttributionListSnippetModel);
      v57 = v104;
      sub_1DA34D120();
      (*(v103 + 8))(v38, v57);
      sub_1DA30CFFC(v42, type metadata accessor for AttributionListSnippetModel);
      result = (*(v134 + 8))(v54, v53);
      break;
  }

  return result;
}

uint64_t type metadata accessor for TellMeGeneratedSnippetModels(uint64_t a1)
{
  result = qword_1EE10A310;
  if (!qword_1EE10A310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DA30CCF8()
{
  result = qword_1EE10A3B8[0];
  if (!qword_1EE10A3B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE10A3B8);
  }

  return result;
}

uint64_t sub_1DA30CD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TellMeGeneratedSnippetModels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA30CDB0()
{
  result = qword_1ECBA5D78;
  if (!qword_1ECBA5D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D78);
  }

  return result;
}

unint64_t sub_1DA30CE04()
{
  result = qword_1ECBA5D80;
  if (!qword_1ECBA5D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D80);
  }

  return result;
}

unint64_t sub_1DA30CE58()
{
  result = qword_1ECBA5D88;
  if (!qword_1ECBA5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D88);
  }

  return result;
}

unint64_t sub_1DA30CEAC()
{
  result = qword_1ECBA5D90;
  if (!qword_1ECBA5D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D90);
  }

  return result;
}

unint64_t sub_1DA30CF00()
{
  result = qword_1EE10A360;
  if (!qword_1EE10A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A360);
  }

  return result;
}

unint64_t sub_1DA30CF54()
{
  result = qword_1ECBA5DA0;
  if (!qword_1ECBA5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5DA0);
  }

  return result;
}

unint64_t sub_1DA30CFA8()
{
  result = qword_1ECBA5DB0;
  if (!qword_1ECBA5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5DB0);
  }

  return result;
}

uint64_t sub_1DA30CFFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t TellMeGeneratedSnippetModels.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DB8, &qword_1DA350160);
  OUTLINED_FUNCTION_0();
  v151 = v4;
  v152 = v3;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17_2();
  v162 = v6;
  v150[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DC0, &qword_1DA350168);
  OUTLINED_FUNCTION_0();
  v150[15] = v7;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_2();
  v161 = v9;
  v150[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DC8, &qword_1DA350170);
  OUTLINED_FUNCTION_0();
  v150[13] = v10;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17_2();
  v168 = v12;
  v150[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DD0, &qword_1DA350178);
  OUTLINED_FUNCTION_0();
  v150[11] = v13;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17_2();
  v160 = v15;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DD8, &qword_1DA350180);
  OUTLINED_FUNCTION_0();
  v150[10] = v16;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_2();
  v159 = v18;
  v150[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DE0, &qword_1DA350188);
  OUTLINED_FUNCTION_0();
  v150[8] = v19;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17_2();
  v158 = v21;
  v150[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DE8, &qword_1DA350190);
  OUTLINED_FUNCTION_0();
  v150[6] = v22;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17_2();
  v157 = v24;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DF0, &qword_1DA350198);
  OUTLINED_FUNCTION_0();
  v164 = v25;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v150 - v27;
  v163 = type metadata accessor for TellMeGeneratedSnippetModels(0);
  OUTLINED_FUNCTION_12();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v155 = v150 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v154 = v150 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v153 = v150 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = v150 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = v150 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = v150 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = v150 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = v150 - v48;
  v50 = a1[3];
  v169 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v50);
  sub_1DA30CCF8();
  v165 = v28;
  v51 = v170;
  sub_1DA34D240();
  if (v51)
  {
    goto LABEL_8;
  }

  v150[2] = v44;
  v150[3] = v41;
  v150[4] = v38;
  v150[5] = v47;
  v170 = v49;
  v52 = sub_1DA34D0A0();
  result = sub_1DA30DDC8(v52, 0);
  if (v55 == v56 >> 1)
  {
LABEL_7:
    v70 = v163;
    v71 = sub_1DA34CEF0();
    swift_allocError();
    v73 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DF8, &qword_1DA3501A0);
    *v73 = v70;
    sub_1DA34D020();
    sub_1DA34CEE0();
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x1E69E6AF8], v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    v74 = OUTLINED_FUNCTION_28_1();
    v75(v74);
LABEL_8:
    v76 = v169;
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v150[1] = 0;
  if (v55 < (v56 >> 1))
  {
    v150[0] = *(v54 + v55);
    sub_1DA30EAD4(v55 + 1, v56 >> 1, result, v54, v55, v56);
    v58 = v57;
    v60 = v59;
    swift_unknownObjectRelease();
    v61 = v170;
    if (v58 == v60 >> 1)
    {
      switch(v150[0])
      {
        case 1:
          v173 = 1;
          sub_1DA30CF54();
          OUTLINED_FUNCTION_6_8(&type metadata for TellMeGeneratedSnippetModels.LearnMoreCodingKeys, &v173);
          v125 = type metadata accessor for LearnMoreSnippetModel(0);
          OUTLINED_FUNCTION_19_3();
          sub_1DA30DF00(v98, v99, &protocol conformance descriptor for LearnMoreSnippetModel);
          v100 = OUTLINED_FUNCTION_33_0();
          OUTLINED_FUNCTION_8_5(v100, v101, v102, v103, v104);
          OUTLINED_FUNCTION_9_2();
          swift_unknownObjectRelease();
          v140 = OUTLINED_FUNCTION_1_15();
          v141(v140);
          v142 = OUTLINED_FUNCTION_7_5();
          v143(v142);
          OUTLINED_FUNCTION_27_2(&v168);
          goto LABEL_16;
        case 2:
          v174 = 2;
          sub_1DA30CF00();
          OUTLINED_FUNCTION_6_8(&type metadata for TellMeGeneratedSnippetModels.ListStyleAnswerCodingKeys, &v174);
          v125 = type metadata accessor for ListStyleAnswerSnippetModel(0);
          OUTLINED_FUNCTION_25_2();
          sub_1DA30DF00(v84, v85, &protocol conformance descriptor for ListStyleAnswerSnippetModel);
          v86 = OUTLINED_FUNCTION_33_0();
          OUTLINED_FUNCTION_8_5(v86, v87, v88, v89, v90);
          OUTLINED_FUNCTION_9_2();
          swift_unknownObjectRelease();
          v126 = OUTLINED_FUNCTION_1_15();
          v127(v126);
          v128 = OUTLINED_FUNCTION_7_5();
          v129(v128);
          OUTLINED_FUNCTION_27_2(&v169);
          goto LABEL_16;
        case 3:
          v175 = 3;
          sub_1DA30CEAC();
          OUTLINED_FUNCTION_6_8(&type metadata for TellMeGeneratedSnippetModels.SummarizedAnswerCodingKeys, &v175);
          v125 = type metadata accessor for SummarizedAnswerSnippetModel(0);
          OUTLINED_FUNCTION_23_3();
          sub_1DA30DF00(v91, v92, &protocol conformance descriptor for SummarizedAnswerSnippetModel);
          v93 = OUTLINED_FUNCTION_33_0();
          OUTLINED_FUNCTION_8_5(v93, v94, v95, v96, v97);
          swift_unknownObjectRelease();
          v130 = OUTLINED_FUNCTION_1_15();
          v131(v130);
          v132 = OUTLINED_FUNCTION_28_1();
          v133(v132);
          OUTLINED_FUNCTION_27_2(&v170);
          goto LABEL_16;
        case 4:
          v176 = 4;
          sub_1DA30CE58();
          OUTLINED_FUNCTION_6_8(&type metadata for TellMeGeneratedSnippetModels.SupplementaryCodingKeys, &v176);
          v77 = type metadata accessor for SupplementarySnippetModel(0);
          OUTLINED_FUNCTION_13_3();
          v80 = sub_1DA30DF00(v78, v79, &protocol conformance descriptor for SupplementarySnippetModel);
          OUTLINED_FUNCTION_8_5(v77, v81, v82, v83, v80);
          OUTLINED_FUNCTION_9_2();
          swift_unknownObjectRelease();
          v121 = OUTLINED_FUNCTION_1_15();
          v122(v121);
          v123 = OUTLINED_FUNCTION_7_5();
          v124(v123);
          v125 = v153;
          goto LABEL_16;
        case 5:
          v177 = 5;
          sub_1DA30CE04();
          OUTLINED_FUNCTION_6_8(&type metadata for TellMeGeneratedSnippetModels.TipCodingKeys, &v177);
          v105 = type metadata accessor for TipSnippetModel(0);
          OUTLINED_FUNCTION_14_4();
          v108 = sub_1DA30DF00(v106, v107, &protocol conformance descriptor for TipSnippetModel);
          OUTLINED_FUNCTION_8_5(v105, v109, v110, v111, v108);
          OUTLINED_FUNCTION_9_2();
          swift_unknownObjectRelease();
          v144 = OUTLINED_FUNCTION_1_15();
          v145(v144);
          v146 = OUTLINED_FUNCTION_7_5();
          v147(v146);
          v125 = v154;
          goto LABEL_16;
        case 6:
          v178 = 6;
          sub_1DA30CDB0();
          v112 = v162;
          OUTLINED_FUNCTION_6_8(&type metadata for TellMeGeneratedSnippetModels.TroubleshootingCodingKeys, &v178);
          v113 = type metadata accessor for TroubleshootingSnippetModel(0);
          OUTLINED_FUNCTION_26_1();
          v116 = sub_1DA30DF00(v114, v115, &protocol conformance descriptor for TroubleshootingSnippetModel);
          v117 = v152;
          OUTLINED_FUNCTION_8_5(v113, v118, v119, v120, v116);
          OUTLINED_FUNCTION_9_2();
          swift_unknownObjectRelease();
          (*(v151 + 8))(v112, v117);
          v148 = OUTLINED_FUNCTION_7_5();
          v149(v148);
          v125 = v155;
LABEL_16:
          swift_storeEnumTagMultiPayload();
          v139 = v125;
          v138 = v169;
          break;
        default:
          v172 = 0;
          sub_1DA30CFA8();
          OUTLINED_FUNCTION_6_8(&type metadata for TellMeGeneratedSnippetModels.AttributionListCodingKeys, &v172);
          v62 = type metadata accessor for AttributionListSnippetModel(0);
          OUTLINED_FUNCTION_24_1();
          sub_1DA30DF00(v63, v64, &protocol conformance descriptor for AttributionListSnippetModel);
          v65 = OUTLINED_FUNCTION_33_0();
          OUTLINED_FUNCTION_8_5(v65, v66, v67, v68, v69);
          OUTLINED_FUNCTION_9_2();
          swift_unknownObjectRelease();
          v134 = OUTLINED_FUNCTION_1_15();
          v135(v134);
          v136 = OUTLINED_FUNCTION_7_5();
          v137(v136);
          OUTLINED_FUNCTION_27_2(&v171);
          swift_storeEnumTagMultiPayload();
          v138 = v169;
          v139 = v62;
          break;
      }

      sub_1DA30DE10(v139, v61, type metadata accessor for TellMeGeneratedSnippetModels);
      sub_1DA30DE10(v61, v156, type metadata accessor for TellMeGeneratedSnippetModels);
      v76 = v138;
      return __swift_destroy_boxed_opaque_existential_1(v76);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA30DDC8(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA30DE10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DA30DF00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA30DF48(uint64_t a1)
{
  result = type metadata accessor for AttributionListSnippetModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LearnMoreSnippetModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ListStyleAnswerSnippetModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for SummarizedAnswerSnippetModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for SupplementarySnippetModel(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for TipSnippetModel(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for TroubleshootingSnippetModel(319);
              if (v8 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SnippetResponseType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TellMeGeneratedSnippetModels.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DA30E1E4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA30E294()
{
  result = qword_1ECBA5E10;
  if (!qword_1ECBA5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E10);
  }

  return result;
}

unint64_t sub_1DA30E2EC()
{
  result = qword_1ECBA5E18;
  if (!qword_1ECBA5E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E18);
  }

  return result;
}

unint64_t sub_1DA30E344()
{
  result = qword_1ECBA5E20;
  if (!qword_1ECBA5E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E20);
  }

  return result;
}

unint64_t sub_1DA30E39C()
{
  result = qword_1ECBA5E28;
  if (!qword_1ECBA5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E28);
  }

  return result;
}

unint64_t sub_1DA30E3F4()
{
  result = qword_1ECBA5E30;
  if (!qword_1ECBA5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E30);
  }

  return result;
}

unint64_t sub_1DA30E44C()
{
  result = qword_1ECBA5E38;
  if (!qword_1ECBA5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E38);
  }

  return result;
}

unint64_t sub_1DA30E4A4()
{
  result = qword_1ECBA5E40;
  if (!qword_1ECBA5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E40);
  }

  return result;
}

unint64_t sub_1DA30E4FC()
{
  result = qword_1ECBA5E48;
  if (!qword_1ECBA5E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5E48);
  }

  return result;
}

unint64_t sub_1DA30E554()
{
  result = qword_1EE10A368;
  if (!qword_1EE10A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A368);
  }

  return result;
}

unint64_t sub_1DA30E5AC()
{
  result = qword_1EE10A370;
  if (!qword_1EE10A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A370);
  }

  return result;
}

unint64_t sub_1DA30E604()
{
  result = qword_1EE10A388;
  if (!qword_1EE10A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A388);
  }

  return result;
}

unint64_t sub_1DA30E65C()
{
  result = qword_1EE10A390;
  if (!qword_1EE10A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A390);
  }

  return result;
}

unint64_t sub_1DA30E6B4()
{
  result = qword_1EE10A350;
  if (!qword_1EE10A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A350);
  }

  return result;
}

unint64_t sub_1DA30E70C()
{
  result = qword_1EE10A358;
  if (!qword_1EE10A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A358);
  }

  return result;
}

unint64_t sub_1DA30E764()
{
  result = qword_1EE10A330;
  if (!qword_1EE10A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A330);
  }

  return result;
}

unint64_t sub_1DA30E7BC()
{
  result = qword_1EE10A338;
  if (!qword_1EE10A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A338);
  }

  return result;
}

unint64_t sub_1DA30E814()
{
  result = qword_1EE10A378;
  if (!qword_1EE10A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A378);
  }

  return result;
}

unint64_t sub_1DA30E86C()
{
  result = qword_1EE10A380;
  if (!qword_1EE10A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A380);
  }

  return result;
}

unint64_t sub_1DA30E8C4()
{
  result = qword_1EE10A398;
  if (!qword_1EE10A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A398);
  }

  return result;
}

unint64_t sub_1DA30E91C()
{
  result = qword_1EE10A3A0;
  if (!qword_1EE10A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A3A0);
  }

  return result;
}

unint64_t sub_1DA30E974()
{
  result = qword_1EE10A340;
  if (!qword_1EE10A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A340);
  }

  return result;
}

unint64_t sub_1DA30E9CC()
{
  result = qword_1EE10A348;
  if (!qword_1EE10A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A348);
  }

  return result;
}

unint64_t sub_1DA30EA24()
{
  result = qword_1EE10A3A8;
  if (!qword_1EE10A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A3A8);
  }

  return result;
}

unint64_t sub_1DA30EA7C()
{
  result = qword_1EE10A3B0;
  if (!qword_1EE10A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A3B0);
  }

  return result;
}

uint64_t sub_1DA30EAD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DA34D0B0();
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AC30](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DA34D090();
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return sub_1DA34D120();
}

uint64_t OUTLINED_FUNCTION_34_0@<X0>(uint64_t a1@<X8>)
{

  return sub_1DA30CD4C(v2, v1 - a1);
}

uint64_t LinkUsedEvent.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LinkUsedEvent.sessionIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LinkUsedEvent.clusterIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t LinkUsedEvent.linkUsed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LinkUsedEvent(0) + 28);

  return sub_1DA30EF08(v3, a1);
}

uint64_t sub_1DA30EF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkUsedEvent.LinkType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 LinkUsedEvent.rewriteSummary.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LinkUsedEvent(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v3 + 48);
  return result;
}

void __swiftcall LinkUsedEvent.AppIntentConfiguration.init(bundleID:name:param:)(DeviceExpertIntents::LinkUsedEvent::AppIntentConfiguration *__return_ptr retstr, Swift::String bundleID, Swift::String name, Swift::String_optional param)
{
  retstr->bundleID = bundleID;
  retstr->name = name;
  retstr->param = param;
}

uint64_t sub_1DA30F008()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5828, &qword_1DA34EF30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA350BE0;
  *(inited + 32) = 0x68746C616568;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0x7373656E746966;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = 0x7065656C73;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = 0x646F69726570;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0x6C61636964656DLL;
  *(inited + 104) = 0xE700000000000000;
  sub_1DA2EEFDC();

  for (i = 0; i != 80; i += 16)
  {
    v1 = sub_1DA34CE70();
  }

  swift_setDeallocating();
  sub_1DA30F798();
  return v1;
}

__n128 LinkUsedEvent.init(sessionIdentifier:clusterIdentifier:linkUsed:rewriteSummary:highlight:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, void *a8@<X8>)
{
  *a8 = 0xD000000000000016;
  a8[1] = 0x80000001DA355290;
  a8[2] = a1;
  a8[3] = a2;
  a8[4] = a3;
  a8[5] = a4;
  v12 = type metadata accessor for LinkUsedEvent(0);
  sub_1DA30F22C(a5, a8 + v12[7]);
  v13 = a8 + v12[8];
  v14 = *(a6 + 16);
  *v13 = *a6;
  *(v13 + 1) = v14;
  result = *(a6 + 32);
  *(v13 + 2) = result;
  v13[48] = *(a6 + 48);
  *(a8 + v12[9]) = a7;
  return result;
}

uint64_t sub_1DA30F22C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkUsedEvent.LinkType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LinkUsedEvent.dictionaryRepresentation.getter()
{
  v1 = sub_1DA34B8C0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LinkUsedEvent.LinkType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40[2] = sub_1DA306F34();
  sub_1DA34CAC0();
  v8 = sub_1DA34CB30();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_14();
  sub_1DA30F908(v8, 0x5F72657473756C63, 0xEA00000000006469, v9);
  v10 = v42;
  v11 = type metadata accessor for LinkUsedEvent(0);
  sub_1DA30EF08(v0 + *(v11 + 28), v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1DA34B880();
    v12 = sub_1DA34CB30();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v10;
    sub_1DA30F908(v12, 0xD000000000000010, 0x80000001DA3552B0, isUniquelyReferenced_nonNull_native);
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v40[1] = v11;
    v14 = *v7;
    v15 = v7[1];
    v16 = v7[2];
    v17 = v7[3];
    v19 = v7[4];
    v18 = v7[5];
    v20 = sub_1DA34CB30();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v10;
    sub_1DA30F908(v20, 0xD000000000000010, 0x80000001DA3552D0, v21);
    v22 = v42;
    v42 = v14;
    v43 = v15;
    v44 = v16;
    v45 = v17;
    v46 = v19;
    v47 = v18;
    sub_1DA30F008();
    v23 = sub_1DA34CB30();

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v22;
    sub_1DA30F908(v23, 0x6E5F746E65746E69, 0xEB00000000656D61, v24);
    v25 = v41;
    if (v18)
    {

      v26 = sub_1DA34CB30();
      swift_bridgeObjectRelease_n();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_0_14();
      sub_1DA30F908(v26, 0x705F746E65746E69, 0xEC0000006D617261, v27);
    }

    else
    {

      v28 = sub_1DA30F7DC(0x705F746E65746E69, 0xEC0000006D617261);
      if (v29)
      {
        v30 = v28;
        swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA0, &qword_1DA350BF0);
        sub_1DA34CFA0();
        v31 = v42;

        v32 = *(*(v31 + 56) + 8 * v30);
        sub_1DA34CFB0();
      }
    }
  }

  v33 = sub_1DA34CCE0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_14();
  sub_1DA30F908(v33, 0x5F65746972776572, 0xEF74706D65747461, v34);
  v35 = sub_1DA34CCE0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_14();
  sub_1DA30F908(v35, 0x5F65746972776572, 0xED00006E776F6873, v36);
  v37 = sub_1DA34CCE0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_14();
  sub_1DA30F908(v37, 0x6867696C68676968, 0xE900000000000074, v38);
  return v42;
}