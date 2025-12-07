uint64_t sub_1BF90D930(uint64_t a1)
{
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v14 = v1[3];
  v15 = v1[2];
  v7 = v1[6];
  v8 = (v1 + ((v5 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1BF90DDB8;

  return sub_1BF90BD4C(a1, v15, v14, v7, v1 + v5, v9, v10, v11);
}

id sub_1BF90DA94(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
    v4 = result;
  }

  else if (!a4)
  {

    return result;
  }

  return result;
}

unint64_t sub_1BF90DB0C()
{
  result = qword_1EBDE9258;
  if (!qword_1EBDE9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9258);
  }

  return result;
}

uint64_t sub_1BF90DB60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_16_3();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF90DBB4(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestions.Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF90DC10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9250, &qword_1BF9BD218);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for TranformerError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BF90DD60()
{
  result = qword_1EBDE9260;
  if (!qword_1EBDE9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9260);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_8()
{
}

uint64_t OUTLINED_FUNCTION_21_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{

  return swift_dynamicCast();
}

SiriSuggestionsKit::AppBundleIdentifier_optional __swiftcall AppBundleIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5718();

  v5 = 0;
  v6 = 14;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
LABEL_25:
      v6 = v5;
      break;
    case 14:
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    default:
      v6 = 32;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t AppBundleIdentifier.rawValue.getter()
{
  result = 0x6C7070612E6D6F63;
  switch(*v0)
  {
    case 1:
    case 0xE:
    case 0x16:
    case 0x1B:
      return 0xD000000000000013;
    case 2:
      return 0xD000000000000010;
    case 3:
    case 0x12:
    case 0x13:
    case 0x18:
      v2 = 5;
      goto LABEL_14;
    case 4:
      v2 = 11;
      goto LABEL_14;
    case 5:
    case 0xB:
    case 0x15:
      return 0xD000000000000012;
    case 6:
    case 0x17:
      return 0xD000000000000016;
    case 7:
      return 0xD000000000000010;
    case 8:
    case 0xA:
    case 0x1F:
      return 0xD000000000000011;
    case 9:
      return 0xD000000000000010;
    case 0xC:
    case 0x1E:
      return 0xD000000000000014;
    case 0xD:
    case 0xF:
    case 0x11:
    case 0x19:
    case 0x1C:
    case 0x1D:
      return result;
    case 0x10:
      v2 = 10;
      goto LABEL_14;
    case 0x14:
      v2 = 9;
LABEL_14:
      result = v2 | 0xD000000000000010;
      break;
    case 0x1A:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_1BF90E25C@<X0>(unint64_t *a1@<X8>)
{
  result = AppBundleIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1BF90E284()
{
  result = sub_1BF9B4988();
  off_1EDBF1EB0 = result;
  return result;
}

uint64_t sub_1BF90E2E4()
{
  if (qword_1EDBF1EA8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v0 = off_1EDBF1EB0;
    v1 = *(off_1EDBF1EB0 + 2);
    v2 = MEMORY[0x1E69E7CC0];
    if (!v1)
    {
      break;
    }

    v33 = MEMORY[0x1E69E7CC0];

    sub_1BF8D05A8(0, v1, 0);
    v2 = v33;
    v5 = sub_1BF95FA38();
    v6 = 0;
    v7 = (v0 + 16);
    v26 = v3;
    v27 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v0 + 32))
    {
      v8 = v5 >> 6;
      if ((*&v7[8 * (v5 >> 6)] & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v0[9] != v3)
      {
        goto LABEL_25;
      }

      v29 = v6;
      v30 = v3;
      v28 = v4;
      v9 = (*(v0 + 6) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];
      v12 = (*(v0 + 7) + 16 * v5);
      v13 = v12[1];
      v31 = *v12;
      v32 = v10;
      v14 = *(v33 + 16);
      v15 = *(v33 + 24);

      if (v14 >= v15 >> 1)
      {
        sub_1BF8D05A8(v15 > 1, v14 + 1, 1);
      }

      *(v33 + 16) = v14 + 1;
      v16 = (v33 + 32 * v14);
      v16[4] = v31;
      v16[5] = v13;
      v16[6] = v32;
      v16[7] = v11;
      v17 = 1 << *(v0 + 32);
      if (v5 >= v17)
      {
        goto LABEL_26;
      }

      v7 = (v0 + 16);
      v18 = *&v0[2 * v8 + 16];
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_27;
      }

      if (v0[9] != v30)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v8 << 6;
        v21 = v8 + 1;
        v22 = &v0[2 * v8 + 18];
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1BF90E758(v5, v30, v28 & 1);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_20;
          }
        }

        sub_1BF90E758(v5, v30, v28 & 1);
      }

LABEL_20:
      v4 = 0;
      v6 = v29 + 1;
      v5 = v17;
      v3 = v26;
      if (v29 + 1 == v27)
      {

        goto LABEL_22;
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
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_22:
  result = sub_1BF978CB0(v2);
  qword_1EDBF1E98 = result;
  return result;
}

unint64_t sub_1BF90E5A0()
{
  result = qword_1EBDE9268;
  if (!qword_1EBDE9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9268);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppBundleIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppBundleIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF90E758(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void OnInAppConnectionEvent.deliveryVehicle.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  sub_1BF8C0D00(v2, v3, v4, v5, v6);
}

uint64_t OnInAppConnectionEvent.inAppDetails.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v6 = v1[10];
  v5 = v1[11];
  *a1 = v1[6];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

unint64_t OnInAppConnectionEvent.description.getter()
{
  v1 = *(v0 + 80);

  sub_1BF9B5288();

  sub_1BF90F19C(v1);

  v2 = InAppDetailsKey.description.getter();
  v4 = v3;

  MEMORY[0x1BFB5DE90](v2, v4);

  return 0xD000000000000017;
}

__n128 OnInAppConnectionEvent.init(deliveryVehicle:receivedTS:inAppDetails:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *(a1 + 32);
  v5 = a2->n128_u64[0];
  v6 = a2->n128_u64[1];
  v7 = a2[2].n128_u64[0];
  v8 = a2[2].n128_u64[1];
  v9 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v9;
  *(a3 + 32) = v4;
  *(a3 + 40) = a4;
  *(a3 + 48) = v5;
  *(a3 + 56) = v6;
  result = a2[1];
  *(a3 + 64) = result;
  *(a3 + 80) = v7;
  *(a3 + 88) = v8;
  return result;
}

uint64_t sub_1BF90E94C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726576696C6564 && a2 == 0xEF656C6369686556;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766965636572 && a2 == 0xEA00000000005354;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7465447070416E69 && a2 == 0xEC000000736C6961)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF9B56D8();

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

uint64_t sub_1BF90EA70(char a1)
{
  if (!a1)
  {
    return 0x79726576696C6564;
  }

  if (a1 == 1)
  {
    return 0x6465766965636572;
  }

  return 0x7465447070416E69;
}

uint64_t sub_1BF90EAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF90E94C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF90EB10(uint64_t a1)
{
  v2 = sub_1BF90F350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF90EB4C(uint64_t a1)
{
  v2 = sub_1BF90F350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OnInAppConnectionEvent.encode(to:)(void *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9270, &qword_1BF9BD450);
  OUTLINED_FUNCTION_1();
  v36 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 48);
  v31 = *(v1 + 56);
  v32 = v11;
  v12 = *(v1 + 64);
  v29 = *(v1 + 72);
  v30 = v12;
  v13 = *(v1 + 80);
  v27 = *(v1 + 88);
  v28 = v13;
  v14 = a1[3];
  v33 = a1[4];
  v15 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BF8C0D00(v7, v8, v9, v10, v15);
  sub_1BF90F350();
  sub_1BF9B5898();
  v37 = v7;
  v38 = v8;
  v16 = v34;
  v39 = v9;
  v40 = v10;
  v17 = v6;
  LOBYTE(v41) = v15;
  v43 = 0;
  sub_1BF8D4298();
  v18 = v35;
  sub_1BF9B5638();
  sub_1BF8C0CB8(v37, v38, v39, v40, v41);
  if (v18)
  {
    return (*(v36 + 8))(v6, v16);
  }

  v20 = v30;
  v21 = v31;
  v22 = v32;
  v23 = v28;
  v24 = v29;
  v25 = v27;
  LOBYTE(v37) = 1;
  sub_1BF9B5618();
  v37 = v22;
  v38 = v21;
  v39 = v20;
  v40 = v24;
  v41 = v23;
  v42 = v25;
  v43 = 2;
  sub_1BF90F3A4();

  sub_1BF9B5638();

  return (*(v36 + 8))(v17, v16);
}

uint64_t OnInAppConnectionEvent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9288, &qword_1BF9BD458);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF90F350();
  sub_1BF9B5868();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(__src[0]) = 0;
  sub_1BF8D4394();
  OUTLINED_FUNCTION_2_12(&type metadata for DeliveryVehicle, __src);
  v6 = v23;
  v7 = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  LOBYTE(v23) = 1;
  sub_1BF9B5538();
  v9 = v8;
  v35 = 2;
  sub_1BF90F3F8();
  OUTLINED_FUNCTION_2_12(&type metadata for InAppDetails, &v35);
  v10 = OUTLINED_FUNCTION_60();
  v11(v10);
  v18 = v36;
  v17 = v37;
  v12 = v39;
  v16 = v38;
  v15 = v40;
  v14 = v41;
  __src[0] = v6;
  __src[1] = v7;
  __src[2] = v19;
  __src[3] = v20;
  LOBYTE(__src[4]) = v21;
  __src[5] = v9;
  __src[6] = v36;
  __src[7] = v37;
  __src[8] = v38;
  __src[9] = v39;
  __src[10] = v40;
  __src[11] = v41;
  memcpy(a2, __src, 0x60uLL);
  sub_1BF90F44C(__src, &v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v23 = v6;
  v24 = v7;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v28 = v9;
  v29 = v18;
  v30 = v17;
  v31 = v16;
  v32 = v12;
  v33 = v15;
  v34 = v14;
  return sub_1BF90F484(&v23);
}

void *sub_1BF90F19C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92B0, &qword_1BF9C9210);
  result = sub_1BF9B5458();
  v3 = 0;
  v30 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v26 = result + 8;
  v27 = result;
  if ((v8 & v4) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = (*(v30 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      sub_1BF8D7914(*(v30 + 56) + 48 * v14, v29);
      sub_1BF8D7914(v29, v28);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
      v18 = sub_1BF9B4B08();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1(v29);
      result = v27;
      *(v26 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v21 = (v27[6] + 16 * v14);
      *v21 = v16;
      v21[1] = v17;
      v22 = (v27[7] + 16 * v14);
      *v22 = v18;
      v22[1] = v20;
      v23 = v27[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v27[2] = v25;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF90F350()
{
  result = qword_1EBDE9278;
  if (!qword_1EBDE9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9278);
  }

  return result;
}

unint64_t sub_1BF90F3A4()
{
  result = qword_1EBDE9280;
  if (!qword_1EBDE9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9280);
  }

  return result;
}

unint64_t sub_1BF90F3F8()
{
  result = qword_1EBDE9290;
  if (!qword_1EBDE9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9290);
  }

  return result;
}

unint64_t sub_1BF90F4B4(uint64_t a1)
{
  *(a1 + 8) = sub_1BF90F4E4();
  result = sub_1BF90F538();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BF90F4E4()
{
  result = qword_1EDBF2320;
  if (!qword_1EDBF2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF2320);
  }

  return result;
}

unint64_t sub_1BF90F538()
{
  result = qword_1EDBF2328[0];
  if (!qword_1EDBF2328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF2328);
  }

  return result;
}

uint64_t sub_1BF90F5BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1BF90F5FC(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t dispatch thunk of EventDispatcher.submit(event:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF8E8FFC;

  return v9(a1, a2, a3);
}

_BYTE *storeEnumTagSinglePayload for OnInAppConnectionEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF90F86C()
{
  result = qword_1EBDE9298;
  if (!qword_1EBDE9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9298);
  }

  return result;
}

unint64_t sub_1BF90F8C4()
{
  result = qword_1EBDE92A0;
  if (!qword_1EBDE92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE92A0);
  }

  return result;
}

unint64_t sub_1BF90F91C()
{
  result = qword_1EBDE92A8;
  if (!qword_1EBDE92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE92A8);
  }

  return result;
}

uint64_t sub_1BF90F970()
{
  result = sub_1BF9B4B58();
  qword_1EBDFB4D0 = result;
  return result;
}

uint64_t sub_1BF90F99C()
{
  result = sub_1BF9B4B58();
  qword_1EBDFB4D8 = result;
  return result;
}

uint64_t sub_1BF90F9C4()
{
  result = sub_1BF9B4B58();
  qword_1EBDFB4E0 = result;
  return result;
}

uint64_t DialogSpeakableString.print.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DialogSpeakableString.speak.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

SiriSuggestionsKit::DialogSpeakableString __swiftcall DialogSpeakableString.init(print:speak:)(Swift::String print, Swift::String_optional speak)
{
  object = print._object;
  countAndFlagsBits = print._countAndFlagsBits;
  v5 = v2;
  if (!speak.value._object)
  {

    OUTLINED_FUNCTION_4_10();
  }

  v5->value._countAndFlagsBits = countAndFlagsBits;
  v5->value._object = object;
  v5[1] = speak;
  result.speak = speak.value;
  result.print = print;
  return result;
}

SiriSuggestionsKit::DialogSpeakableString __swiftcall DialogSpeakableString.init(serializedValue:)(Swift::String serializedValue)
{
  object = serializedValue._object;
  countAndFlagsBits = serializedValue._countAndFlagsBits;
  v6 = v1;
  OUTLINED_FUNCTION_4_10();
  if (sub_1BF9B4C08())
  {
    OUTLINED_FUNCTION_4_10();
    if (sub_1BF9B4C18())
    {
      if (qword_1EBDE81A8 != -1)
      {
        swift_once();
      }

      v42 = v6;
      sub_1BF90FD84(qword_1EBDFB4D0, countAndFlagsBits, object);
      OUTLINED_FUNCTION_3_9();
      if (qword_1EBDE81B0 != -1)
      {
        swift_once();
      }

      v7 = sub_1BF90FF00(qword_1EBDFB4D8, object, countAndFlagsBits, v2, v3);
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = v9 >> 14;
      object = 0x3A7374742FLL;
      while (1)
      {
        v16 = v7;
        v6 = (v7 >> 14);
        if (v7 >> 14 >= v15)
        {
          countAndFlagsBits = MEMORY[0x1BFB5DE30](v8, v10, v12, v14);
          object = v28;

          v26 = countAndFlagsBits;
          v27 = object;
          v6 = v42;
          goto LABEL_12;
        }

        v17 = OUTLINED_FUNCTION_0_11(v7, v10);
        countAndFlagsBits = v18;
        v21 = sub_1BF91048C(0x3A7374742FLL, 0xE500000000000000, v17, v19, v20, v18);

        if (v21)
        {
          break;
        }

        v7 = sub_1BF9B5108();
      }

      if (v6 < v8 >> 14)
      {
        __break(1u);
      }

      else
      {

        v29 = OUTLINED_FUNCTION_0_11(v8, v16);
        v31 = v30;
        v33 = v32;
        v35 = v34;

        countAndFlagsBits = MEMORY[0x1BFB5DE30](v29, v31, v33, v35);
        object = v36;

        v12 = OUTLINED_FUNCTION_0_11(v16, v10);
        v10 = v37;
        v8 = v38;
        v16 = v39;

        v6 = v42;
        if (qword_1EBDE81B8 == -1)
        {
LABEL_16:
          v40 = sub_1BF90FE48(qword_1EBDFB4E0, v12, v10, v8, v16);
          v26 = MEMORY[0x1BFB5DE30](v40);
          v27 = v41;

          goto LABEL_12;
        }
      }

      swift_once();
      goto LABEL_16;
    }
  }

  v26 = countAndFlagsBits;
  v27 = object;
LABEL_12:
  *v6 = countAndFlagsBits;
  v6[1] = object;
  v6[2] = v26;
  v6[3] = v27;
  result.speak._object = v25;
  result.speak._countAndFlagsBits = v24;
  result.print._object = v23;
  result.print._countAndFlagsBits = v22;
  return result;
}

unint64_t sub_1BF90FD84(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v4 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v5 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v5 = 11;
    }

    v6 = v5 | (v4 << 16);
    OUTLINED_FUNCTION_4_10();
    result = sub_1BF9B4B78();
    if (v7)
    {
      result = v6;
    }

    if (4 * v4 >= result >> 14)
    {
      sub_1BF9B4C58();
      OUTLINED_FUNCTION_3_9();

      return a2;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF90FE48(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1BF9B5118();
    if (v6)
    {
      result = a3;
    }

    if (a3 >> 14 >= result >> 14)
    {
      v7 = sub_1BF9B5148();

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF90FF00(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1BF9B5118();
    if (v6)
    {
      v7 = a2;
    }

    else
    {
      v7 = result;
    }

    if (v7 >> 14 >= a2 >> 14)
    {
      v8 = sub_1BF9B5148();

      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t DialogSpeakableString.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_13();
  sub_1BF9B5858();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_2_13();
    v5._countAndFlagsBits = sub_1BF9B56E8();
    DialogSpeakableString.init(serializedValue:)(v5);
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DialogSpeakableString.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9B5888();
  DialogSpeakableString.toString.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF9B56F8();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t DialogSpeakableString.toString.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *v0 == v1 && v0[1] == v2;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {
    v4 = OUTLINED_FUNCTION_1_11();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_1_11();
    MEMORY[0x1BFB5DE90](v6);
    MEMORY[0x1BFB5DE90](0x3A7374742FLL, 0xE500000000000000);
    v4 = v1;
    v5 = v2;
  }

  MEMORY[0x1BFB5DE90](v4, v5);
  MEMORY[0x1BFB5DE90](93, 0xE100000000000000);
  return v8;
}

uint64_t static DialogSpeakableString.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BF9B56D8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1BF9B56D8();
    }
  }

  return result;
}

uint64_t DialogSpeakableString.toDialog(dialogProvider:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  sub_1BF8D2004(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92B8, &qword_1BF9BD710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92C0, &qword_1BF9BD718);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (qword_1EDBF0910 != -1)
    {
      swift_once();
    }

    v8 = sub_1BF9B47C8();
    __swift_project_value_buffer(v8, qword_1EDBF0918);
    v9 = sub_1BF9B47A8();
    v10 = sub_1BF9B5038();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BF8B8000, v9, v10, "Mapping DialogSpeakableString to CAT instance for dialogging", v11, 2u);
      MEMORY[0x1BFB5F320](v11, -1, -1);
    }

    v16[0] = v5;
    v16[1] = v4;
    v16[2] = v7;
    v16[3] = v6;
    result = DialogSpeakableString.toString.getter();
    a2[3] = MEMORY[0x1E69E6158];
    *a2 = result;
    a2[1] = v13;
  }

  else
  {
    a2[3] = &type metadata for DialogSpeakableString;
    v14 = swift_allocObject();
    *a2 = v14;
    v14[2] = v5;
    v14[3] = v4;
    v14[4] = v7;
    v14[5] = v6;
  }

  return result;
}

uint64_t sub_1BF91048C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{

  v8 = a3;
  while ((v8 ^ a4) >= 0x4000)
  {
    v9 = sub_1BF9B5138();
    v11 = v10;
    v8 = sub_1BF9B5108();
    v12 = sub_1BF9B4B98();
    if (!v13)
    {

      return 1;
    }

    if (v9 == v12 && v13 == v11)
    {
    }

    else
    {
      v15 = sub_1BF9B56D8();

      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  sub_1BF9B4B98();
  v17 = v16;

  if (!v17)
  {
    return 1;
  }

LABEL_15:

  return 0;
}

SiriSuggestionsKit::SiriSuggestions::SuggestionRequestType_optional __swiftcall SiriSuggestions.SuggestionRequestType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SiriSuggestions.SuggestionRequestType.rawValue.getter()
{
  v1 = 0x5869726973;
  if (*v0 != 1)
  {
    v1 = 0x6E65746E49707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_1BF9106D0@<X0>(unint64_t *a1@<X8>)
{
  result = SiriSuggestions.SuggestionRequestType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BF9107AC()
{
  result = qword_1EBDE92C8;
  if (!qword_1EBDE92C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE92C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriSuggestions(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SiriSuggestions.SuggestionRequestType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF9109A0()
{
  result = qword_1EDBF45A8;
  if (!qword_1EDBF45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF45A8);
  }

  return result;
}

uint64_t DialogConfig.templateDirectory.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

SiriSuggestionsKit::DialogConfig __swiftcall DialogConfig.init(catId:templateDirectory:)(Swift::String catId, Swift::String_optional templateDirectory)
{
  v2->value = catId;
  v2[1] = templateDirectory;
  result.templateDirectory = templateDirectory;
  result.catId = catId;
  return result;
}

uint64_t sub_1BF910A30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746163 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BF9CB540 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF910AFC(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6449746163;
  }
}

uint64_t sub_1BF910B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF910A30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF910B7C(uint64_t a1)
{
  v2 = sub_1BF910D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF910BB8(uint64_t a1)
{
  v2 = sub_1BF910D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DialogConfig.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92D0, &qword_1BF9BD980);
  OUTLINED_FUNCTION_1();
  v30 = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_11_0();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1BF910D48();
  sub_1BF9B5898();
  sub_1BF9B55F8();
  if (!v23)
  {
    sub_1BF9B55B8();
  }

  (*(v30 + 8))(v24, v27);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF910D48()
{
  result = qword_1EBDE92D8;
  if (!qword_1EBDE92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE92D8);
  }

  return result;
}

void DialogConfig.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92E0, &qword_1BF9BD988);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v43 - v32;
  OUTLINED_FUNCTION_8();
  v34 = sub_1BF910D48();
  OUTLINED_FUNCTION_53(&type metadata for DialogConfig.CodingKeys, v35, v34);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    OUTLINED_FUNCTION_11_9();
    v36 = sub_1BF9B5518();
    v38 = v37;
    OUTLINED_FUNCTION_11_9();
    v39 = sub_1BF9B54D8();
    v41 = v40;
    v42 = *(v30 + 8);
    v44 = v39;
    v42(v33, v28);
    *v27 = v36;
    v27[1] = v38;
    v27[2] = v44;
    v27[3] = v41;

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_37();
}

SiriSuggestionsKit::HintsDonotShowTreatmentType_optional __swiftcall HintsDonotShowTreatmentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HintsDonotShowTreatmentType.rawValue.getter()
{
  v1 = 0x6568744F776F6873;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6853746F6E6F64;
  }
}

uint64_t sub_1BF911058@<X0>(uint64_t *a1@<X8>)
{
  result = HintsDonotShowTreatmentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriSuggestionsKit::EnableDisableExpInfo __swiftcall EnableDisableExpInfo.init(suggestionEnablementState:hintsDonotShowTreatmentType:)(SiriSuggestionsKit::SuggestionEnablementState suggestionEnablementState, SiriSuggestionsKit::HintsDonotShowTreatmentType hintsDonotShowTreatmentType)
{
  v3 = *hintsDonotShowTreatmentType;
  *v2 = *suggestionEnablementState;
  v2[1] = v3;
  result.suggestionEnablementState = suggestionEnablementState;
  return result;
}

uint64_t sub_1BF91115C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x80000001BF9CB820 == a2;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001BF9CB840 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

unint64_t sub_1BF911230(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1BF911268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF9112BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF91115C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9112E4(uint64_t a1)
{
  v2 = sub_1BF9114C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF911320(uint64_t a1)
{
  v2 = sub_1BF9114C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EnableDisableExpInfo.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92E8, &qword_1BF9BD990);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_0();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF9114C0();
  sub_1BF9B5898();
  sub_1BF911514();
  OUTLINED_FUNCTION_4_11();
  sub_1BF9B5638();
  if (!v0)
  {
    sub_1BF911568();
    OUTLINED_FUNCTION_4_11();
    sub_1BF9B5638();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF9114C0()
{
  result = qword_1EBDE92F0;
  if (!qword_1EBDE92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE92F0);
  }

  return result;
}

unint64_t sub_1BF911514()
{
  result = qword_1EBDE92F8;
  if (!qword_1EBDE92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE92F8);
  }

  return result;
}

unint64_t sub_1BF911568()
{
  result = qword_1EBDE9300;
  if (!qword_1EBDE9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9300);
  }

  return result;
}

void EnableDisableExpInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9308, &qword_1BF9BD998);
  OUTLINED_FUNCTION_1();
  v33 = v32;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &a9 - v35;
  OUTLINED_FUNCTION_8();
  sub_1BF9114C0();
  sub_1BF9B5868();
  if (!v24)
  {
    a13 = 0;
    sub_1BF911740();
    OUTLINED_FUNCTION_21_6(&type metadata for SuggestionEnablementState, &a13);
    v37 = a14;
    a11 = 1;
    sub_1BF911794();
    OUTLINED_FUNCTION_21_6(&type metadata for HintsDonotShowTreatmentType, &a11);
    (*(v33 + 8))(v36, v31);
    v38 = a12;
    *v30 = v37;
    v30[1] = v38;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF911740()
{
  result = qword_1EBDE9310;
  if (!qword_1EBDE9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9310);
  }

  return result;
}

unint64_t sub_1BF911794()
{
  result = qword_1EBDE9318;
  if (!qword_1EBDE9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9318);
  }

  return result;
}

uint64_t SuggestionDetailsConfig.suggestionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SuggestionDetailsConfig.dialogConfig.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1BF911868(v2, v3);
}

uint64_t sub_1BF911868(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void __swiftcall SuggestionDetailsConfig.init(suggestionId:enableDisableExpInfo:dialogConfig:)(SiriSuggestionsKit::SuggestionDetailsConfig *__return_ptr retstr, Swift::String suggestionId, SiriSuggestionsKit::EnableDisableExpInfo_optional enableDisableExpInfo, SiriSuggestionsKit::DialogConfig_optional *dialogConfig)
{
  v4 = **&enableDisableExpInfo.value.suggestionEnablementState;
  retstr->suggestionId = suggestionId;
  retstr->enableDisableExpInfo = v4;
  templateDirectory = dialogConfig->value.templateDirectory;
  *(&retstr->dialogConfig.value.catId + 6) = dialogConfig->value.catId;
  *(&retstr->dialogConfig.value.templateDirectory + 6) = templateDirectory;
}

uint64_t sub_1BF9118C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736567677573 && a2 == 0xEC00000064496E6FLL;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001BF9CB860 == a2;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F43676F6C616964 && a2 == 0xEC0000006769666ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF9B56D8();

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

uint64_t sub_1BF9119E8(char a1)
{
  if (!a1)
  {
    return 0x6974736567677573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x6F43676F6C616964;
}

uint64_t sub_1BF911A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9118C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF911A84(uint64_t a1)
{
  v2 = sub_1BF911CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF911AC0(uint64_t a1)
{
  v2 = sub_1BF911CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SuggestionDetailsConfig.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9320, &qword_1BF9BD9A0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_0();
  v9 = *(v0 + 32);
  v10 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BF911CCC();
  sub_1BF9B5898();
  sub_1BF9B55F8();
  if (!v1)
  {
    sub_1BF911D20();
    OUTLINED_FUNCTION_4_11();
    sub_1BF9B55E8();
    sub_1BF911868(v10, v9);
    sub_1BF911D74();
    OUTLINED_FUNCTION_4_11();
    sub_1BF9B55E8();
    sub_1BF911DC8(v10, v9);
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF911CCC()
{
  result = qword_1EBDE9328;
  if (!qword_1EBDE9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9328);
  }

  return result;
}

unint64_t sub_1BF911D20()
{
  result = qword_1EBDE9330;
  if (!qword_1EBDE9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9330);
  }

  return result;
}

unint64_t sub_1BF911D74()
{
  result = qword_1EBDE9338;
  if (!qword_1EBDE9338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9338);
  }

  return result;
}

uint64_t sub_1BF911DC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void SuggestionDetailsConfig.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9340, &qword_1BF9BD9A8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v6 = sub_1BF911CCC();
  OUTLINED_FUNCTION_53(&type metadata for SuggestionDetailsConfig.CodingKeys, v7, v6);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v17) = 0;
    OUTLINED_FUNCTION_11_9();
    v8 = sub_1BF9B5518();
    v10 = v9;
    sub_1BF911FE4();
    OUTLINED_FUNCTION_12_7(&type metadata for EnableDisableExpInfo);
    sub_1BF912038();
    OUTLINED_FUNCTION_12_7(&type metadata for DialogConfig);
    v11 = OUTLINED_FUNCTION_60();
    v12(v11);
    *v4 = v8;
    *(v4 + 8) = v10;
    *(v4 + 16) = v17;
    *(v4 + 24) = v17;
    *(v4 + 32) = v18;
    *(v4 + 40) = v19;
    *(v4 + 48) = v20;

    v13 = OUTLINED_FUNCTION_19_7();
    sub_1BF911868(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v2);

    v15 = OUTLINED_FUNCTION_19_7();
    sub_1BF911DC8(v15, v16);
  }

  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF911FE4()
{
  result = qword_1EBDE9348;
  if (!qword_1EBDE9348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9348);
  }

  return result;
}

unint64_t sub_1BF912038()
{
  result = qword_1EBDE9350;
  if (!qword_1EBDE9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9350);
  }

  return result;
}

uint64_t OwnerConfig.ownerId.getter()
{
  v1 = *v0;

  return v1;
}

SiriSuggestionsKit::OwnerConfig __swiftcall OwnerConfig.init(ownerId:suggestionDetailsConfigs:ownerAdopterConfigs:)(Swift::String ownerId, Swift::OpaquePointer suggestionDetailsConfigs, Swift::OpaquePointer ownerAdopterConfigs)
{
  *v3 = ownerId;
  *(v3 + 16) = ownerAdopterConfigs;
  *(v3 + 24) = suggestionDetailsConfigs;
  result.ownerId = ownerId;
  result.suggestionDetailsConfigs = ownerAdopterConfigs;
  result.ownerAdopterConfigs = suggestionDetailsConfigs;
  return result;
}

uint64_t AllOwnerConfigs.__allocating_init(ownerConfigs:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3();
  v2 = swift_allocObject();
  AllOwnerConfigs.init(ownerConfigs:)(a1);
  return v2;
}

uint64_t AllOwnerConfigs.init(ownerConfigs:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BF9B44C8();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  sub_1BF9B44B8();
  sub_1BF9B4478();
  v11 = v10;
  (*(v6 + 8))(v9, v4);
  *(v2 + 24) = v11;
  return v2;
}

uint64_t AllOwnerConfigs.__allocating_init(ownerConfigs:creationTime:)(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_10_3();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AllOwnerConfigs.init(ownerConfigs:creationTime:)(uint64_t a1, double a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AllOwnerConfigs.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_10_3();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

SiriSuggestionsKit::ProviderStatusForOwnerConfig_optional __swiftcall ProviderStatusForOwnerConfig.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ProviderStatusForOwnerConfig.rawValue.getter()
{
  v1 = 0x7553646E416E6172;
  if (*v0 != 1)
  {
    v1 = 0x6146646E416E6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7552746F6E646964;
  }
}

uint64_t sub_1BF9123D4@<X0>(uint64_t *a1@<X8>)
{
  result = ProviderStatusForOwnerConfig.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OwnerConfigProvider.bundleLoaded(globalLifecyclecontainer:)()
{
  OUTLINED_FUNCTION_7();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[6] = v5;
  v7 = sub_1BF9B4E28();
  v1[11] = v7;
  v1[12] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BF912488, v7, v6);
}

uint64_t sub_1BF912488()
{
  OUTLINED_FUNCTION_6();
  v14 = v0;
  (*(v0[9] + 40))(&v13, v0[8]);
  if (v13)
  {
    v1 = sub_1BF9B56D8();

    if ((v1 & 1) == 0)
    {
      v2 = v0[1];

      return v2();
    }
  }

  else
  {
  }

  if (qword_1EDBF57F0 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF9B47C8();
  v0[13] = __swift_project_value_buffer(v4, qword_1EDBF57F8);
  v5 = sub_1BF9B47A8();
  v6 = sub_1BF9B5038();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BF8B8000, v5, v6, "loading domain configs on bundle loaded", v7, 2u);
    MEMORY[0x1BFB5F320](v7, -1, -1);
  }

  OUTLINED_FUNCTION_5_0();
  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1BF912738;
  v10 = v0[9];
  v11 = v0[8];

  return v12(v11, v10);
}

uint64_t sub_1BF912738()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  if (v0)
  {
    v5 = v3[1];

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v11 = (v7 + *v7);
    v8 = swift_task_alloc();
    v2[15] = v8;
    *v8 = v3;
    v8[1] = sub_1BF912910;
    v9 = v2[9];
    v10 = v2[8];

    return v11(v10, v9);
  }
}

uint64_t sub_1BF912910()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  *(*v0 + 128) = v2;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1BF912A34, v4, v3);
}

uint64_t sub_1BF912A34()
{
  v17 = v0;

  v1 = sub_1BF9B47A8();
  v2 = sub_1BF9B5038();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v16 = v4;
    *v3 = 136315138;

    v5 = sub_1BF9B49B8();
    v7 = v6;

    v8 = sub_1BF8DE810(v5, v7, &v16);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_1BF8B8000, v1, v2, "allOwnerConfigs - %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x1BFB5F320](v4, -1, -1);
    MEMORY[0x1BFB5F320](v3, -1, -1);
  }

  v9 = v0[16];
  v15 = v0[7];
  swift_getObjectType();
  v0[5] = type metadata accessor for AllOwnerConfigs();
  v0[2] = v9;
  v10 = *(v15 + 64);

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_1BF912C94;
  v12 = OUTLINED_FUNCTION_9_6();

  return v14(v12);
}

uint64_t sub_1BF912C94()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *v3 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1BF912DB8, v5, v4);
}

uint64_t sub_1BF912DB8()
{
  OUTLINED_FUNCTION_7();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1BF912E40()
{
  result = qword_1EBDE9358;
  if (!qword_1EBDE9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9358);
  }

  return result;
}

unint64_t sub_1BF912E98()
{
  result = qword_1EBDE9360;
  if (!qword_1EBDE9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9360);
  }

  return result;
}

unint64_t sub_1BF912EF0()
{
  result = qword_1EBDE9368;
  if (!qword_1EBDE9368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE9370, &qword_1BF9BDC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9368);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnableDisableExpInfo(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EnableDisableExpInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit12DialogConfigVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF9130E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BF913128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of OwnerConfigProvider.getAllOwnersConfigs()()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1BF913318;
  v3 = OUTLINED_FUNCTION_9_6();

  return v5(v3);
}

uint64_t sub_1BF913318()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of OwnerConfigProvider.loadAllOwnerConfigs()()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1BF8BD504;
  v3 = OUTLINED_FUNCTION_9_6();

  return v5(v3);
}

_BYTE *sub_1BF913520(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_31(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BF913608(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_31(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF9136E4()
{
  result = qword_1EBDE9378;
  if (!qword_1EBDE9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9378);
  }

  return result;
}

unint64_t sub_1BF91373C()
{
  result = qword_1EBDE9380;
  if (!qword_1EBDE9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9380);
  }

  return result;
}

unint64_t sub_1BF913794()
{
  result = qword_1EBDE9388;
  if (!qword_1EBDE9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9388);
  }

  return result;
}

unint64_t sub_1BF9137EC()
{
  result = qword_1EBDE9390;
  if (!qword_1EBDE9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9390);
  }

  return result;
}

unint64_t sub_1BF913844()
{
  result = qword_1EBDE9398;
  if (!qword_1EBDE9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9398);
  }

  return result;
}

unint64_t sub_1BF91389C()
{
  result = qword_1EBDE93A0;
  if (!qword_1EBDE93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE93A0);
  }

  return result;
}

unint64_t sub_1BF9138F4()
{
  result = qword_1EBDE93A8;
  if (!qword_1EBDE93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE93A8);
  }

  return result;
}

unint64_t sub_1BF91394C()
{
  result = qword_1EBDE93B0;
  if (!qword_1EBDE93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE93B0);
  }

  return result;
}

unint64_t sub_1BF9139A4()
{
  result = qword_1EBDE93B8;
  if (!qword_1EBDE93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE93B8);
  }

  return result;
}

unint64_t sub_1BF9139F8()
{
  result = qword_1EBDE93C0;
  if (!qword_1EBDE93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE93C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1, uint64_t a2)
{

  return sub_1BF9B5558();
}

double static StatisticalUtils.getStats(values:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    v4 = 0uLL;
    v5 = 0.0;
    v6 = *(a1 + 16);
    v7 = 0.0;
    do
    {
      v8 = *v3++;
      v7 = v7 + v8;
      *&v9.f64[1] = v4.i64[1];
      v9.f64[0] = v8;
      *&v10.f64[0] = v4.i64[0];
      v10.f64[1] = v8;
      v5 = v5 + v8 * v8;
      v4 = vbslq_s8(vcgtq_f64(v10, v9), vdupq_lane_s64(*&v8, 0), v4);
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0uLL;
    v5 = 0.0;
    v7 = 0.0;
  }

  v11 = v7 / v2;
  *a2 = v11;
  *(a2 + 8) = sqrt(v5 / v2 - v11 * v11);
  *(a2 + 16) = v4;
  return *v4.i64;
}

_BYTE *storeEnumTagSinglePayload for StatisticalUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF913BE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF913C08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1BF913C58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265766F63736964 && a2 == 0xEF7974696C696261;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x706D6F436B736174 && a2 == 0xEE006E6F6974656CLL;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D656761676E65 && a2 == 0xEA0000000000746ELL;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74616E7265746C61 && a2 == 0xEC00000073657669)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BF9B56D8();

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

uint64_t sub_1BF913DCC(char a1)
{
  result = 0x7265766F63736964;
  switch(a1)
  {
    case 1:
      result = 0x706D6F436B736174;
      break;
    case 2:
      result = 0x656D656761676E65;
      break;
    case 3:
      result = 0x74616E7265746C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF913E74(uint64_t a1)
{
  v2 = sub_1BF914518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF913EB0(uint64_t a1)
{
  v2 = sub_1BF914518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF913EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF913C58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF913F1C(uint64_t a1)
{
  v2 = sub_1BF9144C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF913F58(uint64_t a1)
{
  v2 = sub_1BF9144C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF913F94(uint64_t a1)
{
  v2 = sub_1BF914614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF913FD0(uint64_t a1)
{
  v2 = sub_1BF914614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF91400C(uint64_t a1)
{
  v2 = sub_1BF91456C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF914048(uint64_t a1)
{
  v2 = sub_1BF91456C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF914084(uint64_t a1)
{
  v2 = sub_1BF9145C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9140C0(uint64_t a1)
{
  v2 = sub_1BF9145C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Objective.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE93C8, &qword_1BF9BE240);
  OUTLINED_FUNCTION_1();
  v40 = v4;
  v41 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v39 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE93D0, &qword_1BF9BE248);
  OUTLINED_FUNCTION_1();
  v37 = v8;
  v38 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v36 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE93D8, &qword_1BF9BE250);
  OUTLINED_FUNCTION_1();
  v34 = v12;
  v35 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE93E0, &qword_1BF9BE258);
  OUTLINED_FUNCTION_1();
  v31 = v16;
  v32 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE93E8, &qword_1BF9BE260);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9144C4();
  sub_1BF9B5898();
  switch(v26)
  {
    case 1:
      v43 = 1;
      sub_1BF9145C0();
      v27 = v33;
      OUTLINED_FUNCTION_3_10(&type metadata for Objective.TaskCompletionCodingKeys, &v43);
      v29 = v34;
      v28 = v35;
      goto LABEL_6;
    case 2:
      v44 = 2;
      sub_1BF91456C();
      v27 = v36;
      OUTLINED_FUNCTION_3_10(&type metadata for Objective.EngagementCodingKeys, &v44);
      v29 = v37;
      v28 = v38;
      goto LABEL_6;
    case 3:
      v45 = 3;
      sub_1BF914518();
      v27 = v39;
      OUTLINED_FUNCTION_3_10(&type metadata for Objective.AlternativesCodingKeys, &v45);
      v29 = v40;
      v28 = v41;
LABEL_6:
      (*(v29 + 8))(v27, v28);
      break;
    default:
      v42 = 0;
      sub_1BF914614();
      sub_1BF9B5598();
      (*(v31 + 8))(v19, v32);
      break;
  }

  return (*(v22 + 8))(v25, v20);
}

unint64_t sub_1BF9144C4()
{
  result = qword_1EDBF47B8;
  if (!qword_1EDBF47B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47B8);
  }

  return result;
}

unint64_t sub_1BF914518()
{
  result = qword_1EBDE93F0;
  if (!qword_1EBDE93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE93F0);
  }

  return result;
}

unint64_t sub_1BF91456C()
{
  result = qword_1EBDE93F8;
  if (!qword_1EBDE93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE93F8);
  }

  return result;
}

unint64_t sub_1BF9145C0()
{
  result = qword_1EBDE9400;
  if (!qword_1EBDE9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9400);
  }

  return result;
}

unint64_t sub_1BF914614()
{
  result = qword_1EDBF4770;
  if (!qword_1EDBF4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4770);
  }

  return result;
}

uint64_t Objective.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

uint64_t Objective.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v64 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9408, &qword_1BF9BE268);
  OUTLINED_FUNCTION_1();
  v63 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v66 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9410, &qword_1BF9BE270);
  OUTLINED_FUNCTION_1();
  v60 = v7;
  v61 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v62 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9418, &qword_1BF9BE278);
  OUTLINED_FUNCTION_1();
  v58 = v11;
  v59 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9420, &qword_1BF9BE280);
  OUTLINED_FUNCTION_1();
  v57 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9428, &unk_1BF9BE288);
  OUTLINED_FUNCTION_1();
  v65 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9144C4();
  v25 = v68;
  sub_1BF9B5868();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54 = v15;
  v55 = v19;
  v56 = v14;
  v26 = v66;
  v27 = v67;
  v68 = a1;
  v28 = v24;
  sub_1BF9B5568();
  result = sub_1BF8D21BC();
  if (v31 == v32 >> 1)
  {
    goto LABEL_8;
  }

  v53 = 0;
  if (v31 >= (v32 >> 1))
  {
    __break(1u);
    return result;
  }

  v33 = *(v30 + v31);
  sub_1BF8D21AC();
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  if (v35 != v37 >> 1)
  {
LABEL_8:
    v43 = v65;
    v44 = sub_1BF9B5308();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400);
    *v46 = &type metadata for Objective;
    sub_1BF9B54B8();
    sub_1BF9B52F8();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v28, v20);
    a1 = v68;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v64;
  v39 = v65;
  v52 = v33;
  v40 = v33;
  v41 = v63;
  switch(v40)
  {
    case 1:
      v70 = 1;
      sub_1BF9145C0();
      v47 = v56;
      OUTLINED_FUNCTION_2_14(&type metadata for Objective.TaskCompletionCodingKeys, &v70);
      swift_unknownObjectRelease();
      v49 = v58;
      v48 = v59;
      goto LABEL_18;
    case 2:
      v71[0] = 2;
      sub_1BF91456C();
      v47 = v62;
      OUTLINED_FUNCTION_2_14(&type metadata for Objective.EngagementCodingKeys, v71);
      swift_unknownObjectRelease();
      v49 = v60;
      v48 = v61;
LABEL_18:
      (*(v49 + 8))(v47, v48);
      goto LABEL_19;
    case 3:
      v71[1] = 3;
      sub_1BF914518();
      v50 = v53;
      sub_1BF9B54A8();
      if (v50)
      {
        (*(v39 + 8))(v28, v20);
        swift_unknownObjectRelease();
        a1 = v68;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      swift_unknownObjectRelease();
      (*(v41 + 8))(v26, v27);
LABEL_19:
      (*(v39 + 8))(v28, v20);
      *v38 = v52;
      result = __swift_destroy_boxed_opaque_existential_1(v68);
      break;
    default:
      v69 = 0;
      sub_1BF914614();
      v42 = v55;
      OUTLINED_FUNCTION_2_14(&type metadata for Objective.DiscoverabilityCodingKeys, &v69);
      swift_unknownObjectRelease();
      (*(v57 + 8))(v42, v54);
      goto LABEL_19;
  }

  return result;
}

unint64_t sub_1BF914D2C()
{
  result = qword_1EDBF06F8;
  if (!qword_1EDBF06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF06F8);
  }

  return result;
}

unint64_t sub_1BF914D84()
{
  result = qword_1EBDE9430;
  if (!qword_1EBDE9430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE9438, &qword_1BF9BE300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9430);
  }

  return result;
}

_BYTE *sub_1BF914DF8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF914F18()
{
  result = qword_1EBDE9440;
  if (!qword_1EBDE9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9440);
  }

  return result;
}

unint64_t sub_1BF914F70()
{
  result = qword_1EDBF4760;
  if (!qword_1EDBF4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4760);
  }

  return result;
}

unint64_t sub_1BF914FC8()
{
  result = qword_1EDBF4768;
  if (!qword_1EDBF4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4768);
  }

  return result;
}

unint64_t sub_1BF915020()
{
  result = qword_1EDBF4778;
  if (!qword_1EDBF4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4778);
  }

  return result;
}

unint64_t sub_1BF915078()
{
  result = qword_1EDBF4780;
  if (!qword_1EDBF4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4780);
  }

  return result;
}

unint64_t sub_1BF9150D0()
{
  result = qword_1EDBF4798;
  if (!qword_1EDBF4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4798);
  }

  return result;
}

unint64_t sub_1BF915128()
{
  result = qword_1EDBF47A0;
  if (!qword_1EDBF47A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47A0);
  }

  return result;
}

unint64_t sub_1BF915180()
{
  result = qword_1EDBF4788;
  if (!qword_1EDBF4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4788);
  }

  return result;
}

unint64_t sub_1BF9151D8()
{
  result = qword_1EDBF4790;
  if (!qword_1EDBF4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4790);
  }

  return result;
}

unint64_t sub_1BF915230()
{
  result = qword_1EDBF47A8;
  if (!qword_1EDBF47A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47A8);
  }

  return result;
}

unint64_t sub_1BF915288()
{
  result = qword_1EDBF47B0;
  if (!qword_1EDBF47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47B0);
  }

  return result;
}

uint64_t sub_1BF9152E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95C0, &unk_1BF9C2AD0);
    v2 = sub_1BF9B5478();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v7 = v2;
  v3 = OUTLINED_FUNCTION_28_4();
  sub_1BF918840(v3, v4, v5);
  if (v1)
  {
  }

  return v7;
}

uint64_t sub_1BF915378(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9618, &qword_1BF9BF000);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF918A74(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t UtteranceAction.__allocating_init(utteranceOverride:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_3();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t UtteranceAction.__allocating_init()()
{
  OUTLINED_FUNCTION_10_3();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t InvocationAction.getInvocationAction(dialogProperties:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1Tm, v3, a1);
}

uint64_t InvocationContext.init(directInvocationContext:displayedUtterance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void *DirectInvocationAction.__allocating_init(siriKitIdentifier:payload:suggestionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *DirectInvocationAction.init(siriKitIdentifier:payload:suggestionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

void DirectInvocationAction.__allocating_init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9450, &unk_1BF9BE7F0);
  OUTLINED_FUNCTION_1();
  v28 = v27;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v42 - v30;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1BF917894();
  sub_1BF9B5868();
  if (!v23)
  {
    v32 = sub_1BF9B5518();
    v34 = v33;
    v35 = sub_1BF9B5518();
    v37 = v36;
    v43 = v35;
    v38 = sub_1BF915934(1, v31);
    v39 = *(v28 + 8);
    v42 = v38;
    v39(v31, v26);
    v40 = swift_allocObject();
    v40[2] = v32;
    v40[3] = v34;
    v41 = v43;
    v40[4] = v42;
    v40[5] = v41;
    v40[6] = v37;
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF915750(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_11_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95E8, &unk_1BF9BEFD0);
  sub_1BF919B68();
  OUTLINED_FUNCTION_31_4(&type metadata for CodableWrapper.IterableWrapper, v4);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    OUTLINED_FUNCTION_10_1(&qword_1EDBF0578, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_23_6();
    sub_1BF9B5558();
    sub_1BF989BCC();
    v7 = sub_1BF919C28(v10, v6, &qword_1EBDE95D8, &unk_1BF9BEFC0);

    a1 = sub_1BF9152E4(v7);
    v8 = OUTLINED_FUNCTION_1_12();
    v9(v8);
  }

  return a1;
}

uint64_t sub_1BF915934(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9450, &unk_1BF9BE7F0);
  sub_1BF919B68();
  sub_1BF9B54A8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    v14 = 0;
    sub_1BF919BBC(&qword_1EDBF0578, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1BF9B5558();
    v9 = v13[1];
    sub_1BF98A098();
    v12 = sub_1BF919C28(v9, v11, &unk_1EBDE9630, &qword_1BF9BF018);

    a2 = sub_1BF915378(v12);
    (*(v6 + 8))(v8, v5);
  }

  return a2;
}

uint64_t sub_1BF915B7C(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_11_0();
  v12 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE95B0, &unk_1BF9BEFA0);
  sub_1BF919B68();
  OUTLINED_FUNCTION_31_4(&type metadata for CodableWrapper.IterableWrapper, &v12);
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    OUTLINED_FUNCTION_10_1(&qword_1EDBF0578, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_23_6();
    sub_1BF9B5558();
    sub_1BF989BCC();
    v8 = sub_1BF919C28(v11, v7, &qword_1EBDE95D8, &unk_1BF9BEFC0);

    a2 = sub_1BF9152E4(v8);
    v9 = OUTLINED_FUNCTION_1_12();
    v10(v9);
  }

  return a2;
}

id DirectInvocationAction.getCommand(context:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  sub_1BF9178E8();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  v6 = sub_1BF915FB8(v4, v5);
  v7 = sub_1BF91C5CC();
  sub_1BF918CA8(v7, v6);
  v8 = objc_opt_self();
  v9 = [v8 runSiriKitExecutorCommandWithContext:v3 payload:v6];
  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v10 = sub_1BF9B47C8();
  __swift_project_value_buffer(v10, qword_1EDBF5570);
  v11 = v9;

  v12 = sub_1BF9B47A8();
  v13 = sub_1BF9B5038();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    v18 = *(v2 + 40);
    v17 = *(v2 + 48);
    v19 = v11;
    *(v14 + 14) = sub_1BF8DE810(v18, v17, &v22);
    _os_log_impl(&dword_1BF8B8000, v12, v13, "suggestion direct invocation command: %@ for %s", v14, 0x16u);
    sub_1BF8DFBF0(v15, &qword_1EBDE9468, &unk_1BF9C2470);
    MEMORY[0x1BFB5F320](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1BFB5F320](v16, -1, -1);
    MEMORY[0x1BFB5F320](v14, -1, -1);
  }

  v20 = [v8 wrapCommandInStartLocalRequest_];
  return v20;
}

id sub_1BF915FB8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BF9B4A98();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

uint64_t DirectInvocationAction.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9470, &qword_1BF9BE800);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_8_5();
  v3 = sub_1BF917894();
  OUTLINED_FUNCTION_15_10(&type metadata for DirectInvocationAction.CodingKeys, v4, v3);
  sub_1BF9B55F8();
  if (v1)
  {
    v5 = OUTLINED_FUNCTION_25();
    return v6(v5);
  }

  else
  {
    sub_1BF9B55F8();
    sub_1BF91B7B0(*(v0 + 32));
    v8 = v7;
    v9 = OUTLINED_FUNCTION_28_4();
    sub_1BF9164D8(v9, v10, v8);
    v11 = OUTLINED_FUNCTION_25();
    v12(v11);
  }
}

void sub_1BF91619C()
{
  OUTLINED_FUNCTION_39();
  v27[0] = v0;
  v4 = v3;
  v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  OUTLINED_FUNCTION_1();
  v27[2] = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v27 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95E0, &qword_1BF9C77D0);
  sub_1BF919B68();
  v27[1] = v8;
  sub_1BF9B5598();
  v10 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_9_7();
  sub_1BF8DD6D4();
  v12 = v11;
  OUTLINED_FUNCTION_9_7();
  sub_1BF8DD618();
  OUTLINED_FUNCTION_3_11();
  v27[4] = v4;

  v13 = 0;
  v14 = 40;
  if (!v10)
  {
    goto LABEL_3;
  }

  do
  {
    v32 = v9;
LABEL_7:
    OUTLINED_FUNCTION_14_4(__clz(__rbit64(v10)) | (v13 << 6));
    v30[0] = v8;
    v30[1] = v4;
    sub_1BF8C2C9C((v9 + 16), v31);
    v16 = OUTLINED_FUNCTION_30_4();
    sub_1BF8DFB90(v16, v17, &qword_1EBDE95A0, &qword_1BF9BEF98);
    v18 = v28[1];
    OUTLINED_FUNCTION_16_6(v28[0]);
    if (v12 >= v0 >> 1)
    {
      OUTLINED_FUNCTION_12_8();
      sub_1BF8DD6D4();
      v8 = v22;
    }

    v8[2] = v14;
    v19 = &v8[2 * v12];
    v12 = v8;
    v19[4] = v27[5];
    v19[5] = v18;
    v8 = v28;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v20 = OUTLINED_FUNCTION_30_4();
    sub_1BF8DFB90(v20, v21, &qword_1EBDE95A0, &qword_1BF9BEF98);

    v9 = v32;
    v4 = *(v32 + 16);
    v14 = v4 + 1;
    if (v4 >= *(v32 + 24) >> 1)
    {
      OUTLINED_FUNCTION_12_8();
      sub_1BF8DD618();
      v9 = v23;
    }

    v10 &= v10 - 1;
    sub_1BF8DFBF0(v30, &qword_1EBDE95A0, &qword_1BF9BEF98);
    OUTLINED_FUNCTION_26_5();
  }

  while (v10);
  while (1)
  {
LABEL_3:
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v1)
    {
      break;
    }

    v10 = *(v2 + 8 * v15);
    ++v13;
    if (v10)
    {
      v32 = v9;
      v13 = v15;
      goto LABEL_7;
    }
  }

  v31[5] = v12;
  LOBYTE(v30[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  OUTLINED_FUNCTION_11_10(&qword_1EDBF4B20, MEMORY[0x1E69E6160]);
  OUTLINED_FUNCTION_23_6();
  v24 = v27[0];
  sub_1BF9B5638();

  if (!v24)
  {
    OUTLINED_FUNCTION_28_4();
    sub_1BF995FDC();
  }

  v25 = OUTLINED_FUNCTION_25();
  v26(v25);

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF9164D8(uint64_t a1, char a2, uint64_t a3)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = v35 - v5;
  v47 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9470, &qword_1BF9BE800);
  sub_1BF919B68();
  v36 = v6;
  sub_1BF9B5598();
  sub_1BF8DD6D4();
  v8 = v7;
  sub_1BF8DD618();
  v10 = v9;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = a3;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v41 = v10;
LABEL_9:
      v19 = __clz(__rbit64(v14)) | (v17 << 6);
      v20 = (*(v39 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      sub_1BF8D2004(*(v39 + 56) + 40 * v19, v46);
      v44[0] = v21;
      v44[1] = v22;
      sub_1BF8C2C9C(v46, v45);
      sub_1BF8DFB90(v44, v42, &qword_1EBDE95A0, &qword_1BF9BEF98);
      v23 = v42[1];
      v40 = v42[0];
      v24 = v8;
      v25 = *(v8 + 16);
      v26 = v24;
      v27 = *(v24 + 24);

      if (v25 >= v27 >> 1)
      {
        sub_1BF8DD6D4();
        v26 = v30;
      }

      *(v26 + 16) = v25 + 1;
      v28 = v26 + 16 * v25;
      v8 = v26;
      *(v28 + 32) = v40;
      *(v28 + 40) = v23;
      __swift_destroy_boxed_opaque_existential_1(v43);
      sub_1BF8DFB90(v44, v42, &qword_1EBDE95A0, &qword_1BF9BEF98);

      v10 = v41;
      v29 = *(v41 + 16);
      if (v29 >= *(v41 + 24) >> 1)
      {
        sub_1BF8DD618();
        v10 = v31;
      }

      v14 &= v14 - 1;
      sub_1BF8DFBF0(v44, &qword_1EBDE95A0, &qword_1BF9BEF98);
      *(v10 + 16) = v29 + 1;
      result = sub_1BF8C2C9C(v43, v10 + 40 * v29 + 32);
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v41 = v10;
      v17 = v18;
      goto LABEL_9;
    }
  }

  v45[5] = v8;
  LOBYTE(v44[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF919BBC(&qword_1EDBF4B20, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  v32 = v38;
  v33 = v36;
  v34 = v35[1];
  sub_1BF9B5638();

  if (!v34)
  {
    sub_1BF995FDC();
  }

  (*(v37 + 8))(v33, v32);
}

void sub_1BF916914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v54 = v23;
  v27 = v26;
  v29 = v28;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  OUTLINED_FUNCTION_1();
  v56 = v30;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v53 - v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE9590, &qword_1BF9BEF90);
  sub_1BF919B68();
  v55 = v33;
  sub_1BF9B5598();
  v34 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_9_7();
  sub_1BF8DD6D4();
  v36 = v35;
  OUTLINED_FUNCTION_9_7();
  sub_1BF8DD618();
  OUTLINED_FUNCTION_3_11();
  v58 = v27;

  v37 = 0;
  v38 = 40;
  if (!v34)
  {
    goto LABEL_3;
  }

  do
  {
    v60 = v29;
LABEL_7:
    OUTLINED_FUNCTION_14_4(__clz(__rbit64(v34)) | (v37 << 6));
    v63[0] = v33;
    v63[1] = v27;
    sub_1BF8C2C9C((v29 + 16), v64);
    v40 = OUTLINED_FUNCTION_30_4();
    sub_1BF8DFB90(v40, v41, &qword_1EBDE95A0, &qword_1BF9BEF98);
    v42 = v61[1];
    OUTLINED_FUNCTION_16_6(v61[0]);
    if (v36 >= v23 >> 1)
    {
      OUTLINED_FUNCTION_12_8();
      sub_1BF8DD6D4();
      v33 = v46;
    }

    v33[2] = v38;
    v43 = &v33[2 * v36];
    v36 = v33;
    v43[4] = v59;
    v43[5] = v42;
    v33 = v61;
    __swift_destroy_boxed_opaque_existential_1(&v62);
    v44 = OUTLINED_FUNCTION_30_4();
    sub_1BF8DFB90(v44, v45, &qword_1EBDE95A0, &qword_1BF9BEF98);

    v29 = v60;
    v27 = *(v60 + 16);
    v38 = v27 + 1;
    if (v27 >= *(v60 + 24) >> 1)
    {
      OUTLINED_FUNCTION_12_8();
      sub_1BF8DD618();
      v29 = v47;
    }

    v34 &= v34 - 1;
    sub_1BF8DFBF0(v63, &qword_1EBDE95A0, &qword_1BF9BEF98);
    OUTLINED_FUNCTION_26_5();
  }

  while (v34);
  while (1)
  {
LABEL_3:
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      return;
    }

    if (v39 >= v24)
    {
      break;
    }

    v34 = *(v25 + 8 * v39);
    ++v37;
    if (v34)
    {
      v60 = v29;
      v37 = v39;
      goto LABEL_7;
    }
  }

  v64[5] = v36;
  LOBYTE(v63[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  OUTLINED_FUNCTION_11_10(&qword_1EDBF4B20, MEMORY[0x1E69E6160]);
  OUTLINED_FUNCTION_23_6();
  v48 = v54;
  sub_1BF9B5638();
  if (v48)
  {
    v49 = OUTLINED_FUNCTION_25();
    v50(v49);
  }

  else
  {

    OUTLINED_FUNCTION_28_4();
    sub_1BF995FDC();
    v51 = OUTLINED_FUNCTION_25();
    v52(v51);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF916C90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001BF9CB8C0 == a2;
  if (v3 || (OUTLINED_FUNCTION_70(0xD000000000000011, 0x80000001BF9CB8C0) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_70(0x64616F6C796170, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6974736567677573 && a2 == 0xEC00000064496E6FLL)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_70(0x6974736567677573, 0xEC00000064496E6FLL);

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

uint64_t sub_1BF916D88(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x64616F6C796170;
  }

  return 0x6974736567677573;
}

uint64_t sub_1BF916DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF916C90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF916E1C(uint64_t a1)
{
  v2 = sub_1BF917894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF916E58(uint64_t a1)
{
  v2 = sub_1BF917894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DirectInvocationAction.deinit()
{

  return v0;
}

uint64_t DirectInvocationAction.__deallocating_deinit()
{
  DirectInvocationAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t UrlPunchOutInvocationAction.__allocating_init(appBundleId:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_29_2();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC18SiriSuggestionsKit27UrlPunchOutInvocationAction_url;
  sub_1BF9B4378();
  OUTLINED_FUNCTION_13();
  (*(v8 + 32))(v6 + v7, a3);
  return v6;
}

uint64_t UrlPunchOutInvocationAction.init(appBundleId:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = OBJC_IVAR____TtC18SiriSuggestionsKit27UrlPunchOutInvocationAction_url;
  sub_1BF9B4378();
  OUTLINED_FUNCTION_13();
  (*(v6 + 32))(v3 + v5, a3);
  return v3;
}

id UrlPunchOutInvocationAction.getCommand(context:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69C7B00]) init];
  v1 = sub_1BF9B4A98();
  [v0 setBundleId_];

  v2 = sub_1BF9B4368();
  [v0 setPunchOutUri_];

  return v0;
}

uint64_t sub_1BF9170E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF9171B4(char a1)
{
  if (a1)
  {
    return 7107189;
  }

  else
  {
    return 0x6C646E7542707061;
  }
}

uint64_t sub_1BF9171F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9170E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF91721C(uint64_t a1)
{
  v2 = sub_1BF918D28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF917258(uint64_t a1)
{
  v2 = sub_1BF918D28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UrlPunchOutInvocationAction.deinit()
{

  v1 = OBJC_IVAR____TtC18SiriSuggestionsKit27UrlPunchOutInvocationAction_url;
  sub_1BF9B4378();
  OUTLINED_FUNCTION_13();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t UrlPunchOutInvocationAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18SiriSuggestionsKit27UrlPunchOutInvocationAction_url;
  sub_1BF9B4378();
  OUTLINED_FUNCTION_13();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t UrlPunchOutInvocationAction.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9480, &qword_1BF9BE808);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-v5];
  OUTLINED_FUNCTION_8_5();
  v7 = sub_1BF918D28();
  OUTLINED_FUNCTION_15_10(&type metadata for UrlPunchOutInvocationAction.CodingKeys, v8, v7);
  v12[15] = 0;
  sub_1BF9B55F8();
  if (!v0)
  {
    v12[14] = 1;
    sub_1BF9B4378();
    OUTLINED_FUNCTION_5_9();
    sub_1BF9191E0(v9, 255, v10, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_23_6();
    sub_1BF9B5638();
  }

  return (*(v3 + 8))(v6, v1);
}

void UrlPunchOutInvocationAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v49 = v24;
  v26 = v25;
  v27 = *v23;
  v28 = sub_1BF9B4378();
  OUTLINED_FUNCTION_1();
  v46 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9498, &unk_1BF9BE810);
  OUTLINED_FUNCTION_1();
  v47 = v34;
  v48 = v33;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v45 - v36;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1BF918D28();
  v38 = v49;
  sub_1BF9B5868();
  if (v38)
  {
    swift_deallocPartialClassInstance();
    v44 = v26;
  }

  else
  {
    v40 = v47;
    v39 = v48;
    v49 = v26;
    v45[1] = v27;
    v23[2] = sub_1BF9B5518();
    v23[3] = v41;
    OUTLINED_FUNCTION_5_9();
    sub_1BF9191E0(v42, 255, v43, MEMORY[0x1E6968FD0]);
    sub_1BF9B5558();
    (*(v40 + 8))(v37, v39);
    (*(v46 + 32))(v23 + OBJC_IVAR____TtC18SiriSuggestionsKit27UrlPunchOutInvocationAction_url, v32, v28);
    v44 = v49;
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF917838@<X0>(uint64_t *a1@<X8>)
{
  result = UrlPunchOutInvocationAction.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t UtteranceAction.init(utteranceOverride:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

unint64_t sub_1BF917894()
{
  result = qword_1EBDE9458;
  if (!qword_1EBDE9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9458);
  }

  return result;
}

unint64_t sub_1BF9178E8()
{
  result = qword_1EBDE9460;
  if (!qword_1EBDE9460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDE9460);
  }

  return result;
}

id UtteranceAction.getCommand(context:)(__int128 *a1)
{
  v10 = *a1;
  v1 = *(a1 + 2);
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7AB0]) init];
  v3 = sub_1BF9B4AA8();
  sub_1BF918D7C(v3, v4, v2, &selRef_setOrigin_);
  v11 = v10;
  v12 = v1;
  v5 = sub_1BF917A18(&v11);
  sub_1BF918D7C(v5, v6, v2, &selRef_setUtterance_);
  v7 = [objc_allocWithZone(MEMORY[0x1E69C7A48]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8DD8, &unk_1BF9B9750);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BF9B8710;
  *(v8 + 32) = v2;
  sub_1BF918DE8(v8, v7);
  return v7;
}

uint64_t sub_1BF917A18(uint64_t a1)
{
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = *(a1 + 8);
  }

  return v2;
}

uint64_t sub_1BF917A68(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001BF9CB960 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF917B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF917A68(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF917B34(uint64_t a1)
{
  v2 = sub_1BF918E68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF917B70(uint64_t a1)
{
  v2 = sub_1BF918E68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UtteranceAction.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_10_3();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t UtteranceAction.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE94B0, &qword_1BF9BE820);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  OUTLINED_FUNCTION_8_5();
  v6 = sub_1BF918E68();
  OUTLINED_FUNCTION_15_10(&type metadata for UtteranceAction.CodingKeys, v7, v6);
  sub_1BF9B55B8();
  return (*(v2 + 8))(v5, v0);
}

void UtteranceAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_21_7();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE94C0, &qword_1BF9BE828);
  OUTLINED_FUNCTION_1();
  a10 = v26;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v30 = sub_1BF918E68();
  OUTLINED_FUNCTION_27_1(&type metadata for UtteranceAction.CodingKeys, v31, v30);
  if (v21)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v32 = a10;
    v33 = sub_1BF9B54D8();
    v35 = v34;
    (*(v32 + 8))(v29, v25);
    *(v20 + 16) = v33;
    *(v20 + 24) = v35;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF917ED8@<X0>(uint64_t *a1@<X8>)
{
  result = UtteranceAction.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t MachineUtteranceAction.__allocating_init(dialogProperties:)(void *a1)
{
  OUTLINED_FUNCTION_19_8();
  v2 = swift_allocObject();
  MachineUtteranceAction.init(dialogProperties:)(a1);
  return v2;
}

uint64_t MachineUtteranceAction.init(dialogProperties:)(void *a1)
{
  v2 = v1;
  v4 = sub_1BF917FE4(a1);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for UtteranceAction();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  *(v2 + 16) = v7;
  return v2;
}

uint64_t sub_1BF917FE4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 16))(v1, v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0(0, v4, 0);
    v5 = v25;
    result = sub_1BF95FA38();
    v7 = result;
    LODWORD(v9) = v8;
    v11 = v10;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
    {
      if (((*(v3 + 64 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_14;
      }

      if (*(v3 + 36) != v9)
      {
        goto LABEL_15;
      }

      v12 = (*(v3 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_1BF8C187C(*(v3 + 56) + 32 * v7, v24);
      v21[0] = v13;
      v21[1] = v14;
      sub_1BF8C192C(v24, &v22);

      MEMORY[0x1BFB5DE90](v13, v14);
      MEMORY[0x1BFB5DE90](6176094, 0xE300000000000000);
      sub_1BF9B5378();
      MEMORY[0x1BFB5DE90](94, 0xE100000000000000);

      MEMORY[0x1BFB5DE90](0, 0xE000000000000000);

      sub_1BF8DFBF0(v21, &unk_1EBDE9600, &qword_1BF9C9160);
      v25 = v5;
      v16 = *(v5 + 16);
      v15 = *(v5 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1BF8D01C0(v15 > 1, v16 + 1, 1);
        v5 = v25;
      }

      *(v5 + 16) = v16 + 1;
      v17 = v5 + 16 * v16;
      *(v17 + 32) = 94;
      *(v17 + 40) = 0xE100000000000000;
      result = sub_1BF91A1F0(v7, v9, v11 & 1, v3);
      v7 = result;
      v9 = v18;
      v11 = v19;
      if (!--v4)
      {

        sub_1BF90E758(v7, v9, v11 & 1);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v23 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    sub_1BF8C47C8();
    v20 = sub_1BF9B4A78();

    return v20;
  }

  return result;
}

id MachineUtteranceAction.getCommand(context:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return UtteranceAction.getCommand(context:)(&v3);
}

uint64_t sub_1BF918314(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636E617265747475 && a2 == 0xEF6E6F6974634165)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF9183BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF918314(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF9183E8(uint64_t a1)
{
  v2 = sub_1BF918EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF918424(uint64_t a1)
{
  v2 = sub_1BF918EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MachineUtteranceAction.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_19_8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t MachineUtteranceAction.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE94C8, &qword_1BF9BE830);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - v5;
  OUTLINED_FUNCTION_8_5();
  v7 = sub_1BF918EE0();
  OUTLINED_FUNCTION_15_10(&type metadata for MachineUtteranceAction.CodingKeys, v8, v7);
  v13[1] = *(v0 + 16);
  type metadata accessor for UtteranceAction();
  OUTLINED_FUNCTION_6_9();
  sub_1BF9191E0(v9, v10, v11, &protocol conformance descriptor for UtteranceAction);
  sub_1BF9B5638();
  return (*(v3 + 8))(v6, v1);
}

uint64_t MachineUtteranceAction.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_19_8();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_17_8();
  MachineUtteranceAction.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  return v0;
}

void MachineUtteranceAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_21_7();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE94E0, &qword_1BF9BE838);
  OUTLINED_FUNCTION_1();
  v24 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v18 = sub_1BF918EE0();
  OUTLINED_FUNCTION_27_1(&type metadata for MachineUtteranceAction.CodingKeys, v19, v18);
  if (v11)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for UtteranceAction();
    OUTLINED_FUNCTION_6_9();
    sub_1BF9191E0(v20, v21, v22, &protocol conformance descriptor for UtteranceAction);
    sub_1BF9B5558();
    (*(v24 + 8))(v17, v13);
    *(v10 + 16) = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF9187F0@<X0>(uint64_t *a1@<X8>)
{
  result = MachineUtteranceAction.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BF918840(uint64_t a1, char a2, uint64_t *a3)
{
  v31 = a3;
  v26 = *(a1 + 16);
  if (!v26)
  {
  }

  v5 = 0;
  v6 = a1 + 32;
  while (v5 < *(a1 + 16))
  {
    sub_1BF8DFB90(v6, v29, &qword_1EBDE95C8, &unk_1BF9BEFB0);
    v8 = v29[0];
    v7 = v29[1];
    sub_1BF8C530C(v30, v28);
    v9 = *v31;
    v11 = sub_1BF8C2E64(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95D0, &unk_1BF9C1030);
        sub_1BF9B53B8();
        if (v15)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_1BF95B748(v14, a2 & 1);
      v16 = sub_1BF8C2E64(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_22;
      }

      v11 = v16;
      if (v15)
      {
LABEL_11:
        v18 = *v31;
        sub_1BF8D7914(*(*v31 + 56) + 48 * v11, v27);
        __swift_destroy_boxed_opaque_existential_1(v28);

        v19 = (*(v18 + 56) + 48 * v11);
        __swift_destroy_boxed_opaque_existential_1(v19);
        sub_1BF8C530C(v27, v19);
        goto LABEL_15;
      }
    }

    v20 = *v31;
    v20[(v11 >> 6) + 8] |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_1BF8C530C(v28, (v20[7] + 48 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v20[2] = v24;
LABEL_15:
    ++v5;
    v6 += 64;
    a2 = 1;
    if (v26 == v5)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF918A74(uint64_t a1, char a2, uint64_t *a3)
{
  v31 = a3;
  v26 = *(a1 + 16);
  if (!v26)
  {
  }

  v5 = 0;
  v6 = a1 + 32;
  while (v5 < *(a1 + 16))
  {
    sub_1BF8DFB90(v6, v29, &qword_1EBDE9620, &qword_1BF9BF008);
    v8 = v29[0];
    v7 = v29[1];
    sub_1BF8C530C(v30, v28);
    v9 = *v31;
    v11 = sub_1BF8C2E64(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9628, &qword_1BF9BF010);
        sub_1BF9B53B8();
        if (v15)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_1BF95B770(v14, a2 & 1);
      v16 = sub_1BF8C2E64(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_22;
      }

      v11 = v16;
      if (v15)
      {
LABEL_11:
        v18 = *v31;
        sub_1BF8D7914(*(*v31 + 56) + 48 * v11, v27);
        __swift_destroy_boxed_opaque_existential_1(v28);

        v19 = (*(v18 + 56) + 48 * v11);
        __swift_destroy_boxed_opaque_existential_1(v19);
        sub_1BF8C530C(v27, v19);
        goto LABEL_15;
      }
    }

    v20 = *v31;
    v20[(v11 >> 6) + 8] |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_1BF8C530C(v28, (v20[7] + 48 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v20[2] = v24;
LABEL_15:
    ++v5;
    v6 += 64;
    a2 = 1;
    if (v26 == v5)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

void sub_1BF918CA8(uint64_t a1, void *a2)
{
  v3 = sub_1BF9B4958();

  [a2 setUserData_];
}

unint64_t sub_1BF918D28()
{
  result = qword_1EBDE9488;
  if (!qword_1EBDE9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9488);
  }

  return result;
}

void sub_1BF918D7C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1BF9B4A98();

  [a3 *a4];
}

void sub_1BF918DE8(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9610, &qword_1BF9BEFF8);
  v3 = sub_1BF9B4CF8();

  [a2 setCommands_];
}

unint64_t sub_1BF918E68()
{
  result = qword_1EDBF49A8;
  if (!qword_1EDBF49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF49A8);
  }

  return result;
}

unint64_t sub_1BF918EE0()
{
  result = qword_1EBDE94D0;
  if (!qword_1EBDE94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE94D0);
  }

  return result;
}

uint64_t sub_1BF918F34(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1BF9191E0(&qword_1EBDE94F0, a2, type metadata accessor for DirectInvocationAction, &protocol conformance descriptor for DirectInvocationAction);
  result = sub_1BF9191E0(&qword_1EBDE94F8, v3, type metadata accessor for DirectInvocationAction, &protocol conformance descriptor for DirectInvocationAction);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BF918FDC(uint64_t a1)
{
  *(a1 + 8) = sub_1BF9191E0(&qword_1EBDE9500, 255, type metadata accessor for UrlPunchOutInvocationAction, &protocol conformance descriptor for UrlPunchOutInvocationAction);
  result = sub_1BF9191E0(&qword_1EBDE9508, 255, type metadata accessor for UrlPunchOutInvocationAction, &protocol conformance descriptor for UrlPunchOutInvocationAction);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for UrlPunchOutInvocationAction(uint64_t a1)
{
  result = qword_1EBDE9520;
  if (!qword_1EBDE9520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF9190B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1BF9191E0(&unk_1EDBF4978, a2, type metadata accessor for UtteranceAction, &protocol conformance descriptor for UtteranceAction);
  result = sub_1BF9191E0(&unk_1EDBF4988, v3, type metadata accessor for UtteranceAction, &protocol conformance descriptor for UtteranceAction);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BF919138(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1BF9191E0(&qword_1EBDE9510, a2, type metadata accessor for MachineUtteranceAction, &protocol conformance descriptor for MachineUtteranceAction);
  result = sub_1BF9191E0(&qword_1EBDE9518, v3, type metadata accessor for MachineUtteranceAction, &protocol conformance descriptor for MachineUtteranceAction);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BF9191E0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BF919250(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BF919290(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BF91933C(uint64_t a1)
{
  result = sub_1BF9B4378();
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

_BYTE *sub_1BF9194E4(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for UrlPunchOutInvocationAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DirectInvocationAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF91974C()
{
  result = qword_1EBDE9538;
  if (!qword_1EBDE9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9538);
  }

  return result;
}

unint64_t sub_1BF9197A4()
{
  result = qword_1EBDE9540;
  if (!qword_1EBDE9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9540);
  }

  return result;
}

unint64_t sub_1BF9197FC()
{
  result = qword_1EBDE9548;
  if (!qword_1EBDE9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9548);
  }

  return result;
}

unint64_t sub_1BF919854()
{
  result = qword_1EBDE9550;
  if (!qword_1EBDE9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9550);
  }

  return result;
}

unint64_t sub_1BF9198AC()
{
  result = qword_1EBDE9558;
  if (!qword_1EBDE9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9558);
  }

  return result;
}

unint64_t sub_1BF919904()
{
  result = qword_1EBDE9560;
  if (!qword_1EBDE9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9560);
  }

  return result;
}

unint64_t sub_1BF91995C()
{
  result = qword_1EDBF4998;
  if (!qword_1EDBF4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4998);
  }

  return result;
}

unint64_t sub_1BF9199B4()
{
  result = qword_1EDBF49A0;
  if (!qword_1EDBF49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF49A0);
  }

  return result;
}

unint64_t sub_1BF919A0C()
{
  result = qword_1EBDE9568;
  if (!qword_1EBDE9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9568);
  }

  return result;
}

unint64_t sub_1BF919A64()
{
  result = qword_1EBDE9570;
  if (!qword_1EBDE9570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9570);
  }

  return result;
}

unint64_t sub_1BF919ABC()
{
  result = qword_1EBDE9578;
  if (!qword_1EBDE9578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9578);
  }

  return result;
}

unint64_t sub_1BF919B14()
{
  result = qword_1EBDE9580;
  if (!qword_1EBDE9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9580);
  }

  return result;
}

unint64_t sub_1BF919B68()
{
  result = qword_1EDBF50D8;
  if (!qword_1EDBF50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF50D8);
  }

  return result;
}

uint64_t sub_1BF919BBC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1BF919C28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a2;
  v6 = a1;
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v8 >= v7)
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = swift_allocObject();
    v11 = 2 * ((_swift_stdlib_malloc_size(v10) - 32) / 64);
    v10[2] = v9;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = *(MEMORY[0x1E69E7CC0] + 24);
  }

  v13 = v10 + 4;
  v14 = v11 >> 1;
  v43 = v8;
  if (v9)
  {
    v40 = v6;
    v41 = v4;
    v39 = v5;
    v15 = v5 + 32;
    v16 = (v6 + 40);
    v14 -= v9;
    v17 = v9;
    do
    {
      v18 = *v16;
      *&v46 = *(v16 - 1);
      *(&v46 + 1) = v18;
      sub_1BF8D7914(v15, &v47);
      v19 = v49;
      v21 = v46;
      v20 = v47;
      v13[2] = v48;
      v13[3] = v19;
      *v13 = v21;
      v13[1] = v20;
      v13 += 4;

      v15 += 48;
      v16 += 2;
      --v17;
    }

    while (v17);
    v6 = v40;
    v4 = v41;
    v5 = v39;
  }

  v22 = v5 + 48 * v9 + 32;
  for (i = v6 + 16 * v9 + 40; ; i += 16)
  {
    if (v7 == v9)
    {
LABEL_35:
      v36 = v10[3];
      if (v36 >= 2)
      {
        v37 = v36 >> 1;
        v32 = __OFSUB__(v37, v14);
        v38 = v37 - v14;
        if (v32)
        {
          goto LABEL_44;
        }

        v10[2] = v38;
      }

      return v10;
    }

    if (v9 >= v7)
    {
      break;
    }

    if (__OFADD__(v9, 1))
    {
      goto LABEL_40;
    }

    if (v8 == v9)
    {
      goto LABEL_35;
    }

    if (v9 >= v8)
    {
      goto LABEL_41;
    }

    v44 = *(i - 8);
    result = sub_1BF8D7914(v22, v45);
    v46 = v44;
    v47 = v45[0];
    v48 = v45[1];
    v49 = v45[2];
    if (v14)
    {

      v24 = v10;
    }

    else
    {
      v25 = v10[3];
      if (((v25 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_43;
      }

      v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(a3, v4);
      v24 = swift_allocObject();
      v28 = (_swift_stdlib_malloc_size(v24) - 32) / 64;
      v24[2] = v27;
      v24[3] = 2 * v28;
      v29 = v24 + 4;
      v30 = v10[3] >> 1;
      v13 = &v24[8 * v30 + 4];
      v14 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;
      if (v10[2])
      {
        if (v24 != v10 || v29 >= &v10[8 * v30 + 4])
        {
          memmove(v29, v10 + 4, v30 << 6);
        }

        v10[2] = 0;
      }

      else
      {
      }
    }

    v32 = __OFSUB__(v14--, 1);
    if (v32)
    {
      goto LABEL_42;
    }

    v33 = v46;
    v34 = v47;
    v35 = v49;
    v13[2] = v48;
    v13[3] = v35;
    *v13 = v33;
    v13[1] = v34;
    v13 += 4;
    ++v9;
    v22 += 48;
    v10 = v24;
    v8 = v43;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

char *sub_1BF919EE8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F8, qword_1BF9BEFE0);
    v7 = swift_allocObject();
    v8 = 2 * ((_swift_stdlib_malloc_size(v7) - 32) / 72);
    *(v7 + 2) = v6;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 24);
  }

  v10 = v7 + 32;
  v11 = v8 >> 1;
  v34 = v4;
  if (v6)
  {
    v33 = v3;
    v32 = v2;
    v12 = v2 + 32;
    v13 = (v3 + 40);
    v11 -= v6;
    v14 = v6;
    do
    {
      v15 = *v13;
      __src[0] = *(v13 - 1);
      __src[1] = v15;
      sub_1BF8DFB90(v12, &__src[2], &qword_1EBDE95F0, &qword_1BF9B85D0);
      memcpy(v10, __src, 0x48uLL);
      v10 += 72;

      v12 += 56;
      v13 += 2;
      --v14;
    }

    while (v14);
    v4 = v34;
    v3 = v33;
    v2 = v32;
  }

  v16 = v2 + 56 * v6 + 32;
  for (i = (v3 + 16 * v6 + 40); ; i += 2)
  {
    if (v4 == v6)
    {
LABEL_35:
      v29 = *(v7 + 3);
      if (v29 >= 2)
      {
        v30 = v29 >> 1;
        v28 = __OFSUB__(v30, v11);
        v31 = v30 - v11;
        if (v28)
        {
          goto LABEL_44;
        }

        *(v7 + 2) = v31;
      }

      return v7;
    }

    if (v6 >= v4)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_40;
    }

    if (v5 == v6)
    {
      goto LABEL_35;
    }

    if (v6 >= v5)
    {
      goto LABEL_41;
    }

    v18 = v5;
    v19 = *i;
    v35[0] = *(i - 1);
    v35[1] = v19;
    sub_1BF8DFB90(v16, &v35[2], &qword_1EBDE95F0, &qword_1BF9B85D0);
    result = memcpy(__src, v35, 0x48uLL);
    if (v11)
    {

      v20 = v7;
    }

    else
    {
      v21 = *(v7 + 3);
      if (((v21 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_43;
      }

      v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F8, qword_1BF9BEFE0);
      v20 = swift_allocObject();
      v24 = (_swift_stdlib_malloc_size(v20) - 32) / 72;
      *(v20 + 2) = v23;
      *(v20 + 3) = 2 * v24;
      v25 = v20 + 32;
      v26 = *(v7 + 3) >> 1;
      v10 = &v20[72 * v26 + 32];
      v11 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v26;
      if (*(v7 + 2))
      {
        if (v20 != v7 || v25 >= &v7[72 * v26 + 32])
        {
          memmove(v25, v7 + 32, 72 * v26);
        }

        *(v7 + 2) = 0;
      }

      else
      {
      }
    }

    v28 = __OFSUB__(v11--, 1);
    if (v28)
    {
      goto LABEL_42;
    }

    v5 = v18;
    result = memcpy(v10, __src, 0x48uLL);
    v10 += 72;
    ++v6;
    v16 += 56;
    v7 = v20;
    v4 = v34;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1BF91A1F0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_1BF9B51E8();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_10(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E6300];

  return sub_1BF919BBC(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1, uint64_t a2)
{

  return sub_1BF9B54A8();
}

unint64_t sub_1BF91A2FC(char a1)
{
  if (a1)
  {
    return 0xD000000000000029;
  }

  else
  {
    return 0xD000000000000027;
  }
}

uint64_t BaseNotificationObserver.notificationName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t BaseNotificationObserver.notificationCallback.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t BaseNotificationObserver.__allocating_init(notificationName:notificationReceivedCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0();
  v8 = swift_allocObject();
  BaseNotificationObserver.init(notificationName:notificationReceivedCallback:)(a1, a2, a3, a4);
  return v8;
}

uint64_t BaseNotificationObserver.init(notificationName:notificationReceivedCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = -1;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  v5 = sub_1BF9B4B18();
  swift_beginAccess();

  notify_register_check((v5 + 32), (v4 + 16));
  swift_endAccess();

  return v4;
}

Swift::Void __swiftcall BaseNotificationObserver.registerNotify()()
{
  v1 = v0;
  v2 = sub_1BF9B48C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  sub_1BF91B320();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E7F98], v2);
  v8 = sub_1BF9B5058();
  (*(v3 + 8))(v5, v2);
  aBlock[4] = sub_1BF91B364;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF91AC20;
  aBlock[3] = &block_descriptor;
  v9 = _Block_copy(aBlock);

  v10 = sub_1BF9B4B18();
  swift_beginAccess();
  v11 = notify_register_dispatch((v10 + 32), (v1 + 16), v8, v9);
  swift_endAccess();

  _Block_release(v9);

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v12 = sub_1BF9B47C8();
  __swift_project_value_buffer(v12, qword_1EDBF5570);

  v13 = sub_1BF9B47A8();
  v14 = sub_1BF9B5038();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_1BF8DE810(v6, v7, aBlock);
    *(v15 + 12) = 1024;
    *(v15 + 14) = v11;
    *(v15 + 18) = 2080;
    if (v11)
    {
      v16 = 0x64656C696146;
    }

    else
    {
      v16 = 0x73736563637553;
    }

    if (v11)
    {
      v17 = 0xE600000000000000;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    v18 = sub_1BF8DE810(v16, v17, aBlock);

    *(v15 + 20) = v18;
    _os_log_impl(&dword_1BF8B8000, v13, v14, "DarwinNotification notify_register for notification: %s. Registration result: %u (i.e %s)", v15, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }
}

uint64_t sub_1BF91A7C4(int a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1BF9B4EB8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  sub_1BF939C48(0, 0, v6, &unk_1BF9BF1E8, v8);
}

uint64_t sub_1BF91A8B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 40) = a4;

  return MEMORY[0x1EEE6DFA0](sub_1BF91A948, 0, 0);
}

uint64_t sub_1BF91A948()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  *(v0 + 16) = 0;
  notify_get_state(v2, (v0 + 16));
  v3 = *(v0 + 16);
  v6 = (*(v1 + 40) + **(v1 + 40));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1BF91AA84;

  return v6(v3);
}

uint64_t sub_1BF91AA84()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BF91ABA0, 0, 0);
}

uint64_t sub_1BF91ABA0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BF91AC20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

Swift::Void __swiftcall BaseNotificationObserver.cancel()()
{
  v1 = v0;
  swift_beginAccess();
  if (*(v0 + 16) != -1)
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v2 = sub_1BF9B47C8();
    __swift_project_value_buffer(v2, qword_1EDBF5570);

    v3 = sub_1BF9B47A8();
    v4 = sub_1BF9B5038();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1BF8DE810(*(v1 + 24), *(v1 + 32), &v7);
      _os_log_impl(&dword_1BF8B8000, v3, v4, "DarwinNotificationObserver notify_cancel for notification: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    notify_cancel(*(v1 + 16));
    *(v1 + 16) = -1;
  }
}

uint64_t BaseNotificationObserver.deinit()
{
  BaseNotificationObserver.cancel()();

  return v0;
}

uint64_t BaseNotificationObserver.__deallocating_deinit()
{
  BaseNotificationObserver.deinit();
  v0 = OUTLINED_FUNCTION_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t GMAvailableNotificationObserver.__allocating_init(lifecycleContainer:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_83();
  GMAvailableNotificationObserver.init(lifecycleContainer:)(v4, a2);
  return v2;
}

void *GMAvailableNotificationObserver.init(lifecycleContainer:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[4] = 0xD000000000000027;
  v3[5] = 0x80000001BF9CB9E0;
  v3[2] = a1;
  v3[3] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for BaseNotificationObserver();
  swift_allocObject();
  OUTLINED_FUNCTION_83();
  swift_unknownObjectRetain();
  BaseNotificationObserver.init(notificationName:notificationReceivedCallback:)(0xD000000000000027, 0x80000001BF9CB9E0, &unk_1BF9BF038, v6);
  v3[6] = a2;
  return v3;
}

uint64_t sub_1BF91AF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BF91B6A8;

  return GlobalLifeCycleContainer.gmStatusChanged(status:)();
}

uint64_t SiriLocaleChangeNotificationObserver.notificationName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SiriLocaleChangeNotificationObserver.__allocating_init(lifecycleContainer:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_83();
  SiriLocaleChangeNotificationObserver.init(lifecycleContainer:)(v4, a2);
  return v2;
}

void *SiriLocaleChangeNotificationObserver.init(lifecycleContainer:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[4] = 0xD000000000000029;
  v3[5] = 0x80000001BF9CBA10;
  v3[2] = a1;
  v3[3] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for BaseNotificationObserver();
  swift_allocObject();
  OUTLINED_FUNCTION_83();
  swift_unknownObjectRetain();
  BaseNotificationObserver.init(notificationName:notificationReceivedCallback:)(0xD000000000000029, 0x80000001BF9CBA10, &unk_1BF9BF048, v6);
  v3[6] = a2;
  return v3;
}

uint64_t sub_1BF91B1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BF8BD504;

  return GlobalLifeCycleContainer.siriLocaleChange()();
}

uint64_t sub_1BF91B2A4()
{
  BaseNotificationObserver.cancel()();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SiriLocaleChangeNotificationObserver.__deallocating_deinit()
{
  SiriLocaleChangeNotificationObserver.deinit();
  v0 = OUTLINED_FUNCTION_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1BF91B320()
{
  result = qword_1EDBF0568;
  if (!qword_1EDBF0568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBF0568);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BF91B384()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_12(v1);

  return sub_1BF91AF88(v2, v3, v4);
}

uint64_t sub_1BF91B440()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_12(v1);

  return sub_1BF91B1A0(v2, v3, v4);
}

uint64_t sub_1BF91B5E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BF91B6A8;

  return sub_1BF91A8B4(a1, v4, v5, v6, v7);
}

uint64_t sub_1BF91B6CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1BF9B5448();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1BF91B6F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9788, &qword_1BF9BF9A8);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF921488(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_1BF91B7D8()
{
  OUTLINED_FUNCTION_57_3();
  if (v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9748, &qword_1BF9BF958);
    v3 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_1_2();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  OUTLINED_FUNCTION_35_3();

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_10:
    OUTLINED_FUNCTION_52_2();
    OUTLINED_FUNCTION_51_2();
    sub_1BF921650(v12 + 48 * v11, v38);
    *&v37 = v1;
    *(&v37 + 1) = v2;
    *&v35[5] = v37;
    v36[0] = v38[0];
    v36[1] = v38[1];
    v36[2] = v38[2];
    v13 = v2;
    v27(v36, v31);

    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B40, &qword_1BF9B8660);
    swift_dynamicCast();
    sub_1BF8C2C9C(&v32, v34);
    sub_1BF8C2C9C(v34, v35);
    sub_1BF8C2C9C(v35, &v33);
    v14 = OUTLINED_FUNCTION_65_2();
    v2 = sub_1BF8C2E64(v14, v15);
    if (v16)
    {
      OUTLINED_FUNCTION_66_2();
      OUTLINED_FUNCTION_28_5();
      v1 = (v17 + v2 * v18);
      __swift_destroy_boxed_opaque_existential_1(v1);
      sub_1BF8C2C9C(&v33, v1);
      v9 = v10;
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      if (v19)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_9_8(v20);
      v22 = (v21 + 16 * v2);
      *v22 = v1;
      v22[1] = v13;
      OUTLINED_FUNCTION_28_5();
      sub_1BF8C2C9C(&v33, v23 + v2 * v24);
      OUTLINED_FUNCTION_26_6();
      if (v26)
      {
        goto LABEL_18;
      }

      *(v3 + 16) = v25;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v6 = *(v30 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1BF91BA00(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9768, &unk_1BF9BF980);
    v1 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_1_2();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  v25 = v1 + 64;

  v7 = 0;
  v8 = &qword_1EBDE8AB8;
  v26 = v1;
  while (v4)
  {
    v9 = v8;
    v10 = v7;
LABEL_11:
    v11 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v12 = (a1[6] + 16 * (v11 | (v10 << 6)));
    v14 = *v12;
    v13 = v12[1];
    sub_1BF921368();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
    v8 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, &qword_1BF9B85C0);
    swift_dynamicCast();
    v28 = v29;
    v29 = v30;
    *&v30 = v31;
    v15 = sub_1BF8C2E64(v14, v13);
    if (v16)
    {
      OUTLINED_FUNCTION_38_4();
      *v17 = v14;
      v17[1] = v13;

      OUTLINED_FUNCTION_28_5();
      sub_1BF9213C0();
      v7 = v10;
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      if (v18)
      {
        goto LABEL_18;
      }

      *(v25 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      OUTLINED_FUNCTION_38_4();
      *v19 = v14;
      v19[1] = v13;
      OUTLINED_FUNCTION_28_5();
      v22 = v20 + v15 * v21;
      *(v22 + 32) = v31;
      *v22 = v28;
      *(v22 + 16) = v29;
      OUTLINED_FUNCTION_26_6();
      if (v24)
      {
        goto LABEL_19;
      }

      *(v26 + 16) = v23;
      v7 = v10;
    }
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v4 = a1[v10 + 8];
    ++v7;
    if (v4)
    {
      v9 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

unint64_t sub_1BF91BC8C(uint64_t a1)
{
  v47 = sub_1BF9B4898();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9780, &qword_1BF9BF9A0);
  v3 = MEMORY[0x1EEE9AC00](v45);
  v44 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v38 - v5;
  v49 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9648, &qword_1BF9BF200);
    v6 = sub_1BF9B5478();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v7 = v49 + 64;
  v8 = 1 << *(v49 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v49 + 64);
  v11 = (v8 + 63) >> 6;
  v42 = v48 + 16;
  v41 = v48 + 32;
  v38 = v6 + 8;

  v13 = 0;
  v39 = v7;
  for (i = v6; v10; v7 = v39)
  {
    v14 = v13;
LABEL_11:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = (*(v49 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = v48;
    v21 = v45;
    v22 = v43;
    v23 = v47;
    (*(v48 + 16))(&v43[*(v45 + 48)], *(v49 + 56) + *(v48 + 72) * v16, v47);
    *v22 = v19;
    v22[1] = v18;
    v24 = v44;
    sub_1BF921418(v22, v44);
    v25 = *(v21 + 48);
    v26 = *v24;
    v27 = v24[1];
    (*(v20 + 32))(v46, v24 + v25, v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9640, &qword_1BF9BF1F8);
    swift_dynamicCast();
    sub_1BF8C17FC(v50, v52);
    v28 = v26;
    sub_1BF8C17FC(v52, &v53);
    sub_1BF8C17FC(&v53, &v51);
    v29 = v26;
    v6 = i;
    result = sub_1BF8C2E64(v29, v27);
    v30 = result;
    if (v31)
    {
      v32 = (v6[6] + 16 * result);
      *v32 = v28;
      v32[1] = v27;

      v33 = (v6[7] + 56 * v30);
      __swift_destroy_boxed_opaque_existential_1(v33);
      result = sub_1BF8C17FC(&v51, v33);
    }

    else
    {
      if (v6[2] >= v6[3])
      {
        goto LABEL_20;
      }

      *(v38 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v34 = (v6[6] + 16 * result);
      *v34 = v28;
      v34[1] = v27;
      result = sub_1BF8C17FC(&v51, (v6[7] + 56 * result));
      v35 = v6[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_21;
      }

      v6[2] = v37;
    }

    v13 = v14;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v6;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1BF91C0EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9648, &qword_1BF9BF200);
    v2 = sub_1BF9B5478();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v9 << 6)));
    v13 = *v11;
    v12 = v11[1];
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9640, &qword_1BF9BF1F8);
    swift_dynamicCast();
    sub_1BF8C17FC(v22, v24);
    sub_1BF8C17FC(v24, v25);
    sub_1BF8C17FC(v25, &v23);
    result = sub_1BF8C2E64(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 56 * v14);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = sub_1BF8C17FC(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_1BF8C17FC(&v23, (v2[7] + 56 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1BF91C340(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9778, &unk_1BF9BF990);
    v1 = sub_1BF9B5478();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
    swift_dynamicCast();
    v21 = v22;
    v22 = v23;
    v23 = v24;
    *&v24 = v25;
    result = sub_1BF8C2E64(v12, v11);
    if (v13)
    {
      v14 = (v1[6] + 16 * result);
      *v14 = v12;
      v14[1] = v11;

      result = sub_1BF9213C0();
      v7 = v8;
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_19;
      }

      *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v1[6] + 16 * result);
      *v15 = v12;
      v15[1] = v11;
      v16 = v1[7] + 56 * result;
      *(v16 + 48) = v25;
      *(v16 + 16) = v22;
      *(v16 + 32) = v23;
      *v16 = v21;
      v17 = v1[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_20;
      }

      v1[2] = v19;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BF91C5CC()
{
  OUTLINED_FUNCTION_64_2();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE97B8, &qword_1BF9BF9C0);
    v2 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(v0 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(v0 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1BF921650(*(v0 + 56) + 48 * v11, v35);
    v34.n128_u64[0] = v14;
    v34.n128_u64[1] = v13;
    *&v32[5] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v33[2] = v35[2];
    v24[3] = v34;

    swift_dynamicCast();
    sub_1BF8BAFC8(v33, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89C0, &unk_1BF9B84C0);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1BF8C192C(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1BF8C192C(v32, v24);
    result = sub_1BF9B5208();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v25;
    *(v23 + 16) = v26;
    *(v23 + 32) = v27;
    result = sub_1BF8C192C(v24, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1BF91C8E4()
{
  OUTLINED_FUNCTION_64_2();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9770, &qword_1BF9C2940);
    v2 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_1_2();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  OUTLINED_FUNCTION_35_3();

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(v0 + 48) + 16 * (v10 | (v9 << 6)));
    v13 = *v11;
    v12 = v11[1];
    type metadata accessor for ResolvableParameter(0);

    swift_dynamicCast();
    sub_1BF8C192C(&v25, v27);
    sub_1BF8C192C(v27, v28);
    sub_1BF8C192C(v28, &v26);
    v14 = sub_1BF8C2E64(v13, v12);
    v15 = v14;
    if (v16)
    {
      v17 = (v2[6] + 16 * v14);
      *v17 = v13;
      v17[1] = v12;

      v18 = (v2[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_1(v18);
      sub_1BF8C192C(&v26, v18);
      v8 = v9;
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      if (v19)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_9_8(v20);
      v22 = (v21 + 16 * v15);
      *v22 = v13;
      v22[1] = v12;
      sub_1BF8C192C(&v26, (v2[7] + 32 * v15));
      OUTLINED_FUNCTION_26_6();
      if (v24)
      {
        goto LABEL_18;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v5 = *(v0 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1BF91CAF0()
{
  OUTLINED_FUNCTION_64_2();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9750, &qword_1BF9BF960);
    v2 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_1_2();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  OUTLINED_FUNCTION_35_3();

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    OUTLINED_FUNCTION_17_9();
    v11 = v10 | (v9 << 6);
    v12 = (*(v0 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_1BF8C2240(*(v0 + 56) + 56 * v11, &__src[2]);
    __src[0] = v13;
    __src[1] = v14;
    memcpy(__dst, __src, sizeof(__dst));
    v15 = *__dst;
    v16 = *&__dst[8];
    sub_1BF8C17FC(&__dst[16], v31);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9760, &qword_1BF9BF978);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
    swift_dynamicCast();
    sub_1BF8C2C9C(&v32, v34);
    sub_1BF8C2C9C(v34, v35);
    sub_1BF8C2C9C(v35, &v33);
    v17 = sub_1BF8C2E64(v15, v16);
    if (v18)
    {
      OUTLINED_FUNCTION_38_4();
      *v19 = v15;
      v19[1] = v16;

      OUTLINED_FUNCTION_28_5();
      v22 = (v20 + v17 * v21);
      __swift_destroy_boxed_opaque_existential_1(v22);
      sub_1BF8C2C9C(&v33, v22);
      v8 = v9;
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      if (v23)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_9_8(v24);
      v26 = (v25 + 16 * v17);
      *v26 = v15;
      v26[1] = v16;
      OUTLINED_FUNCTION_28_5();
      sub_1BF8C2C9C(&v33, v27 + v17 * v28);
      OUTLINED_FUNCTION_26_6();
      if (v30)
      {
        goto LABEL_18;
      }

      *(v2 + 16) = v29;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v5 = *(v0 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1BF91CD30()
{
  OUTLINED_FUNCTION_64_2();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9750, &qword_1BF9BF960);
    v2 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_1_2();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    OUTLINED_FUNCTION_17_9();
    v11 = (*(v0 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9758, &qword_1BF9BF968);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
    swift_dynamicCast();
    sub_1BF8C2C9C(&v28, v30);
    sub_1BF8C2C9C(v30, v31);
    sub_1BF8C2C9C(v31, &v29);
    v14 = sub_1BF8C2E64(v13, v12);
    if (v15)
    {
      OUTLINED_FUNCTION_38_4();
      *v16 = v13;
      v16[1] = v12;

      OUTLINED_FUNCTION_28_5();
      v19 = (v17 + v14 * v18);
      __swift_destroy_boxed_opaque_existential_1(v19);
      sub_1BF8C2C9C(&v29, v19);
      v8 = v9;
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      if (v20)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_9_8(v21);
      v23 = (v22 + 16 * v14);
      *v23 = v13;
      v23[1] = v12;
      OUTLINED_FUNCTION_28_5();
      sub_1BF8C2C9C(&v29, v24 + v14 * v25);
      OUTLINED_FUNCTION_26_6();
      if (v27)
      {
        goto LABEL_18;
      }

      *(v2 + 16) = v26;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v5 = *(v0 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void SiriSuggestions.AppIntent.identifier.getter()
{
  OUTLINED_FUNCTION_65_0();
  v4 = sub_1BF9B4748();
  OUTLINED_FUNCTION_1();
  v24 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_44_3();
  v7 = sub_1BF9B47F8();
  OUTLINED_FUNCTION_1();
  v23 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_47_3();
  v10 = sub_1BF9B4848();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v14 = OUTLINED_FUNCTION_12_9();
  type metadata accessor for SiriSuggestions.AppIntent(v14);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_60_2();
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_58_2();
  sub_1BF8C14B0();
  OUTLINED_FUNCTION_65_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *v3;

      v18 = [v17 identifier];
      sub_1BF9B4AA8();
    }

    else
    {
      (*(v24 + 32))(v0, v3, v4);
      sub_1BF9B4728();
      v21 = OUTLINED_FUNCTION_33();
      v22(v21);
    }
  }

  else
  {
    (*(v12 + 32))(v2, v3, v10);
    sub_1BF9B4808();
    sub_1BF9B47E8();
    (*(v23 + 8))(v1, v7);
    v19 = OUTLINED_FUNCTION_25_4();
    v20(v19, v10);
  }

  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_64();
}

void SiriSuggestions.AppIntent.parameters.getter()
{
  OUTLINED_FUNCTION_65_0();
  v3 = sub_1BF9B46A8();
  OUTLINED_FUNCTION_1();
  v71 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_105();
  v6 = sub_1BF9B4748();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v65 = v11 - v10;
  OUTLINED_FUNCTION_55_2();
  v12 = sub_1BF9B4848();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_60_2();
  type metadata accessor for SiriSuggestions.AppIntent(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_1_13();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v35 = OUTLINED_FUNCTION_65_2();
    v36(v35);
    v37 = sub_1BF9B4828();
    sub_1BF91BC8C(v37);

    (*(v14 + 8))(v1, v12);
LABEL_27:
    OUTLINED_FUNCTION_64();
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v18 = *v2;

    v19 = [v18 parameters];
    sub_1BF8BE93C(0, &qword_1EBDE9650, 0x1E69AC948);
    v20 = sub_1BF9B4D08();

    v21 = sub_1BF91B6CC(v20);
    if (!v21)
    {

      v24 = MEMORY[0x1E69E7CC0];
LABEL_26:
      v61 = sub_1BF91B6F0(v24);
      sub_1BF91C0EC(v61);

      goto LABEL_27;
    }

    v22 = v21;
    v72 = v18;
    v73[0].n128_u64[0] = MEMORY[0x1E69E7CC0];
    sub_1BF8D05C8(0, v21 & ~(v21 >> 63), 0);
    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = 0;
      v24 = v73[0].n128_u64[0];
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1BFB5E5E0](v23, v20);
        }

        else
        {
          v25 = *(v20 + 8 * v23 + 32);
        }

        v26 = v25;
        v27 = [v25 identifier];
        v28 = sub_1BF9B4AA8();
        v30 = v29;

        v31 = [v26 value];
        v73[0].n128_u64[0] = v24;
        v33 = *(v24 + 16);
        v32 = *(v24 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1BF8D05C8(v32 > 1, v33 + 1, 1);
          v24 = v73[0].n128_u64[0];
        }

        ++v23;
        *(v24 + 16) = v33 + 1;
        v34 = (v24 + 24 * v33);
        v34[4] = v28;
        v34[5] = v30;
        v34[6] = v31;
      }

      while (v22 != v23);

      v18 = v72;
      goto LABEL_26;
    }
  }

  else
  {
    v68 = v0;
    v69 = v3;
    v64 = v8;
    (*(v8 + 32))(v65, v2, v6);
    v38 = sub_1BF9B46B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9648, &qword_1BF9BF200);
    sub_1BF9B5458();
    v39 = 0;
    v20 = 0;
    v40 = v38 + 64;
    v70 = v38;
    OUTLINED_FUNCTION_1_2();
    v43 = v42 & v41;
    v45 = (v44 + 63) >> 6;
    v66 = v46 + 8;
    v67 = v46;
    if ((v42 & v41) != 0)
    {
      while (1)
      {
        v47 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
LABEL_21:
        v50 = v47 | (v39 << 6);
        v51 = (*(v70 + 48) + 16 * v50);
        v52 = *v51;
        v53 = v51[1];
        (*(v71 + 16))(v68, *(v70 + 56) + *(v71 + 72) * v50, v69);

        sub_1BF91D7B8(v68, v73);
        v54 = OUTLINED_FUNCTION_24_4();
        v55(v54);
        OUTLINED_FUNCTION_31_5();
        *(v66 + v57) |= v56 << v50;
        v58 = (v67[6] + 16 * v50);
        *v58 = v52;
        v58[1] = v53;
        sub_1BF8C17FC(v73, (v67[7] + 56 * v50));
        OUTLINED_FUNCTION_26_6();
        if (v60)
        {
          break;
        }

        v67[2] = v59;
        if (!v43)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v48 = v39;
      while (1)
      {
        v39 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v39 >= v45)
        {

          (*(v64 + 8))(v65, v6);
          goto LABEL_27;
        }

        v49 = *(v40 + 8 * v39);
        ++v48;
        if (v49)
        {
          v47 = __clz(__rbit64(v49));
          v43 = (v49 - 1) & v49;
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);

  v62 = OUTLINED_FUNCTION_24_4();
  v63(v62);
  __break(1u);
}

uint64_t sub_1BF91D7B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a2;
  v3 = sub_1BF9B46A8();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BF9B46F8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v60 - v9;
  v66 = sub_1BF9B46D8();
  v61 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF9B4708();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - v16;
  v67 = a1;
  sub_1BF9B4698();
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x1E69A8E48])
  {
    v19 = *(v14 + 96);
    v66 = v13;
    v19(v17, v13);
    (*(v6 + 32))(v10, v17, v5);
    if (qword_1EDBF08E8 != -1)
    {
      swift_once();
    }

    v20 = sub_1BF9B47C8();
    __swift_project_value_buffer(v20, qword_1EDBF08F0);
    v21 = v65;
    (*(v6 + 16))(v65, v10, v5);
    v22 = sub_1BF9B47A8();
    v23 = sub_1BF9B5038();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v64 = v5;
      v25 = v24;
      v63 = swift_slowAlloc();
      v69 = v63;
      *v25 = 136315138;
      v26 = sub_1BF9B46E8();
      v27 = v21;
      v28 = v10;
      v30 = v29;
      v31 = *(v6 + 8);
      v31(v27, v64);
      v32 = sub_1BF8DE810(v26, v30, &v69);
      v10 = v28;

      *(v25 + 4) = v32;
      _os_log_impl(&dword_1BF8B8000, v22, v23, "actionWillExecute's parameter is .reference type with variableName: %s. Will not be able to convert to TypedValue", v25, 0xCu);
      v33 = v63;
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1BFB5F320](v33, -1, -1);
      v34 = v25;
      v5 = v64;
      MEMORY[0x1BFB5F320](v34, -1, -1);
    }

    else
    {

      v31 = *(v6 + 8);
      v31(v21, v5);
    }

    v41 = v68;
    v68[3] = v66;
    v42 = MEMORY[0x1E69A8E50];
    v41[4] = sub_1BF9209A0(&qword_1EBDE9798, MEMORY[0x1E69A8E50], MEMORY[0x1E69A8E68]);
    v41[5] = sub_1BF9209A0(&qword_1EBDE97A0, v42, MEMORY[0x1E69A8E58]);
    v41[6] = sub_1BF9209A0(&qword_1EBDE97A8, v42, MEMORY[0x1E69A8E60]);
    __swift_allocate_boxed_opaque_existential_1Tm(v41);
    sub_1BF9B4698();
    return (v31)(v10, v5);
  }

  else if (v18 == *MEMORY[0x1E69A8E40])
  {
    (*(v14 + 96))(v17, v13);
    v35 = v61;
    v36 = v66;
    (v61[4])(v12, v17, v66);
    v37 = sub_1BF9B4868();
    v38 = v68;
    v68[3] = v37;
    v39 = MEMORY[0x1E69DAE88];
    v38[4] = sub_1BF9209A0(&qword_1EBDE88F0, MEMORY[0x1E69DAE88], MEMORY[0x1E69DAEA8]);
    v38[5] = sub_1BF9209A0(&qword_1EBDE88F8, v39, MEMORY[0x1E69DAE90]);
    v38[6] = sub_1BF9209A0(&qword_1EBDE97B0, v39, MEMORY[0x1E69DAEA0]);
    __swift_allocate_boxed_opaque_existential_1Tm(v38);
    sub_1BF9B46C8();
    return (v35[1])(v12, v36);
  }

  else
  {
    v66 = v13;
    if (qword_1EDBF08E8 != -1)
    {
      swift_once();
    }

    v43 = sub_1BF9B47C8();
    __swift_project_value_buffer(v43, qword_1EDBF08F0);
    v45 = v62;
    v44 = v63;
    v46 = v64;
    (v63[2])(v62, v67, v64);
    v47 = sub_1BF9B47A8();
    v48 = sub_1BF9B5048();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      LODWORD(v65) = v48;
      v50 = v45;
      v51 = v49;
      v61 = swift_slowAlloc();
      v69 = v61;
      *v51 = 136315138;
      sub_1BF9B4698();
      v52 = sub_1BF9B4B08();
      v54 = v53;
      (v44[1])(v50, v46);
      v55 = sub_1BF8DE810(v52, v54, &v69);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_1BF8B8000, v47, v65, "actionWillExecute's parameter has unsupported type of %s.", v51, 0xCu);
      v56 = v61;
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1BFB5F320](v56, -1, -1);
      MEMORY[0x1BFB5F320](v51, -1, -1);
    }

    else
    {

      (v44[1])(v45, v46);
    }

    v57 = v66;
    v58 = v68;
    v68[3] = v66;
    v59 = MEMORY[0x1E69A8E50];
    v58[4] = sub_1BF9209A0(&qword_1EBDE9798, MEMORY[0x1E69A8E50], MEMORY[0x1E69A8E68]);
    v58[5] = sub_1BF9209A0(&qword_1EBDE97A0, v59, MEMORY[0x1E69A8E58]);
    v58[6] = sub_1BF9209A0(&qword_1EBDE97A8, v59, MEMORY[0x1E69A8E60]);
    __swift_allocate_boxed_opaque_existential_1Tm(v58);
    sub_1BF9B4698();
    return (*(v14 + 8))(v17, v57);
  }
}

void SiriSuggestions.AppIntent.description.getter()
{
  OUTLINED_FUNCTION_65_0();
  v2 = sub_1BF9B4748();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v8 = v7 - v6;
  v9 = sub_1BF9B4848();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_56_3();
  type metadata accessor for SiriSuggestions.AppIntent(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_24_4();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *v1;
      v16 = *(v1 + 8);
      v17 = *(v1 + 16);
      v18 = [v15 debugDescription];
      v19 = sub_1BF9B4AA8();
      v21 = v20;

      MEMORY[0x1BFB5DE90](v19, v21);

      MEMORY[0x1BFB5DE90](2108704, 0xE300000000000000);
      if (v17)
      {
        v22 = v16;
      }

      else
      {
        v22 = 16718;
      }

      if (v17)
      {
        v23 = v17;
      }

      else
      {
        v23 = 0xE200000000000000;
      }

      MEMORY[0x1BFB5DE90](v22, v23);
    }

    else
    {
      (*(v4 + 32))(v8, v1, v2);
      sub_1BF9B5288();

      OUTLINED_FUNCTION_8_6();
      sub_1BF9209A0(v27, v28, MEMORY[0x1E69A8E78]);
      v29 = sub_1BF9B4A18();
      MEMORY[0x1BFB5DE90](v29);

      (*(v4 + 8))(v8, v2);
    }
  }

  else
  {
    (*(v11 + 32))(v0, v1, v9);
    v24 = sub_1BF9B4818();
    MEMORY[0x1BFB5DE90](v24);

    v25 = OUTLINED_FUNCTION_43_3();
    v26(v25);
  }

  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_64();
}

void SiriSuggestions.AppIntent.appBundleId.getter()
{
  OUTLINED_FUNCTION_65_0();
  sub_1BF9B4748();
  OUTLINED_FUNCTION_1();
  v25 = v5;
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_44_3();
  sub_1BF9B48B8();
  OUTLINED_FUNCTION_1();
  v23 = v7;
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_105();
  v8 = sub_1BF9B47F8();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_60_2();
  v12 = sub_1BF9B4848();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_54_0();
  type metadata accessor for SiriSuggestions.AppIntent(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  v19 = (v18 - v17);
  OUTLINED_FUNCTION_1_13();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }

    else
    {
      (*(v25 + 32))(v0, v19, v26);
      sub_1BF9B4738();
      v21 = OUTLINED_FUNCTION_33();
      v22(v21);
    }
  }

  else
  {
    (*(v14 + 32))(v3, v19, v12);
    sub_1BF9B4808();
    sub_1BF9B47D8();
    (*(v10 + 8))(v2, v8);
    sub_1BF9B48A8();
    (*(v23 + 8))(v1, v24);
    (*(v14 + 8))(v3, v12);
  }

  OUTLINED_FUNCTION_64();
}

void SiriSuggestions.AppIntent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v28 = v27;
  v67 = sub_1BF9B4748();
  OUTLINED_FUNCTION_1();
  v65 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_17();
  v66 = v32 - v31;
  OUTLINED_FUNCTION_55_2();
  v33 = sub_1BF9B4848();
  OUTLINED_FUNCTION_1();
  v64 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_56_3();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9660, &qword_1BF9BF208);
  OUTLINED_FUNCTION_1();
  v68 = v37;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  v39 = OUTLINED_FUNCTION_12_9();
  type metadata accessor for SiriSuggestions.AppIntent(v39);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_54_0();
  v41 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_28(v41, v42);
  sub_1BF92094C();
  sub_1BF9B5868();
  if (!v23)
  {
    v43 = sub_1BF9B5568();
    if (*(v43 + 16))
    {
      v44 = *(v43 + 32);

      if (v44)
      {
        if (v44 == 1)
        {
          sub_1BF9209E8();
          sub_1BF9B5558();
          objc_opt_self();
          v57 = swift_dynamicCastObjCClass();
          if (!v57)
          {
            swift_unknownObjectRelease();

            v60 = sub_1BF9B5308();
            OUTLINED_FUNCTION_67_2(v60, MEMORY[0x1E69E6B28]);
            v62 = v61;
            sub_1BF9B54B8();
            OUTLINED_FUNCTION_29_3();
            sub_1BF9B52F8();
            OUTLINED_FUNCTION_11();
            (*(v63 + 104))(v62);
            swift_willThrow();
            (*(v68 + 8))(v25, v36);
            goto LABEL_2;
          }

          v58 = v57;
          v59 = *(v68 + 8);
          swift_unknownObjectRetain();
          v59(v25, v36);
          swift_unknownObjectRelease();
          *v26 = v58;
          v26[1] = v69;
          v26[2] = v70;
        }

        else
        {
          OUTLINED_FUNCTION_8_6();
          sub_1BF9209A0(v53, v54, MEMORY[0x1E69A8E80]);
          OUTLINED_FUNCTION_61_2();
          sub_1BF9B5558();
          v55 = OUTLINED_FUNCTION_20_7();
          v56(v55);
          (*(v65 + 32))(v26, v66, v67);
        }
      }

      else
      {
        OUTLINED_FUNCTION_14_5();
        sub_1BF9209A0(v49, v50, MEMORY[0x1E69DAA38]);
        OUTLINED_FUNCTION_61_2();
        sub_1BF9B5558();
        v51 = OUTLINED_FUNCTION_20_7();
        v52(v51);
        (*(v64 + 32))(v26, v24, v33);
      }

      OUTLINED_FUNCTION_58_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_12();
      sub_1BF920B90();
    }

    else
    {

      v45 = sub_1BF920A3C();
      OUTLINED_FUNCTION_67_2(&_s20IntentDecodingErrorsON, v45);
      *v46 = 0;
      swift_willThrow();
      v47 = OUTLINED_FUNCTION_20_7();
      v48(v47);
    }
  }

LABEL_2:
  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_37();
}

void SiriSuggestions.AppIntent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  sub_1BF9B4748();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_12_9();
  v27 = sub_1BF9B4848();
  OUTLINED_FUNCTION_1();
  v47 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_54_0();
  type metadata accessor for SiriSuggestions.AppIntent(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_105();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9690, &qword_1BF9BF210);
  OUTLINED_FUNCTION_1();
  v48 = v32;
  v49 = v31;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_56_3();
  v34 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_28(v34, v35);
  sub_1BF92094C();
  sub_1BF9B5898();
  OUTLINED_FUNCTION_1_13();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v47 + 32))(v25, v23, v27);
    OUTLINED_FUNCTION_14_5();
    sub_1BF9209A0(v37, v38, MEMORY[0x1E69DAA30]);
    OUTLINED_FUNCTION_61_2();
    v39 = v49;
    sub_1BF9B5638();
    (*(v47 + 8))(v25, v27);
LABEL_6:
    (*(v48 + 8))(v24, v39);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v40 = OUTLINED_FUNCTION_59_3();
    v41(v40);
    OUTLINED_FUNCTION_8_6();
    sub_1BF9209A0(v42, v43, MEMORY[0x1E69A8E78]);
    OUTLINED_FUNCTION_61_2();
    v39 = v49;
    sub_1BF9B5638();
    v44 = OUTLINED_FUNCTION_59_3();
    v46(v44, v45);
    goto LABEL_6;
  }

  sub_1BF920A90();
  sub_1BF9B5638();
  swift_unknownObjectRelease();

  (*(v48 + 8))(v24, v49);
LABEL_7:
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF91EF10()
{
  OUTLINED_FUNCTION_34_3();
  v3 = v1 == 0x74696B6C6F6F74 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_70(0x74696B6C6F6F74, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 1802398060 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_70(1802398060, 0xE400000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0xD000000000000011 && 0x80000001BF9CBBC0 == v0)
    {

      return 2;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_70(0xD000000000000011, 0x80000001BF9CBBC0);

      if (v7)
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

uint64_t sub_1BF91F000(char a1)
{
  if (!a1)
  {
    return 0x74696B6C6F6F74;
  }

  if (a1 == 1)
  {
    return 1802398060;
  }

  return 0xD000000000000011;
}

uint64_t sub_1BF91F054(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449707061 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF91F114(char a1)
{
  if (a1)
  {
    return 0x6449707061;
  }

  else
  {
    return 0x746E65746E69;
  }
}

void sub_1BF91F144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9740, &qword_1BF9BF950);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_28(v23, v23[3]);
  sub_1BF921314();
  swift_unknownObjectRetain();
  sub_1BF9B5898();
  sub_1BF920C90();
  sub_1BF9B5638();
  swift_unknownObjectRelease();
  if (!v20)
  {
    sub_1BF9B55B8();
  }

  (*(v26 + 8))(v21, v24);
  OUTLINED_FUNCTION_37();
}

void sub_1BF91F2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9730, &qword_1BF9BF948);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_28(v12, v12[3]);
  sub_1BF921314();
  sub_1BF9B5868();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1BF920BE8();
    sub_1BF9B5558();
    v17 = sub_1BF9B54D8();
    v19 = v18;
    v20 = OUTLINED_FUNCTION_25_4();
    v21(v20, v15);
    *v14 = a10;
    v14[1] = v17;
    v14[2] = v19;

    swift_unknownObjectRetain();
    __swift_destroy_boxed_opaque_existential_1(v12);

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF91F4B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF91EF10();
  *a1 = result;
  return result;
}

uint64_t sub_1BF91F4E0(uint64_t a1)
{
  v2 = sub_1BF92094C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF91F51C(uint64_t a1)
{
  v2 = sub_1BF92094C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF91F560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF91F054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF91F588(uint64_t a1)
{
  v2 = sub_1BF921314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF91F5C4(uint64_t a1)
{
  v2 = sub_1BF921314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static SiriSuggestions.AppIntent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_65_0();
  v47 = v1;
  sub_1BF9B4748();
  OUTLINED_FUNCTION_1();
  v44 = v3;
  v45 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  v43 = v5 - v4;
  OUTLINED_FUNCTION_55_2();
  v6 = sub_1BF9B4848();
  OUTLINED_FUNCTION_1();
  v46 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_47_3();
  type metadata accessor for SiriSuggestions.AppIntent(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_11();
  v12 = v10 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96A8, &qword_1BF9BF218);
  OUTLINED_FUNCTION_72(v17);
  OUTLINED_FUNCTION_9();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - v20;
  v22 = &v42 + *(v19 + 56) - v20;
  sub_1BF8C14B0();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_1_13();
      sub_1BF8C14B0();
      v25 = *v16;
      v24 = *(v16 + 1);
      v26 = *(v16 + 2);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = *v22;
        v27 = *(v22 + 1);
        v29 = *(v22 + 2);
        sub_1BF8BE93C(0, &qword_1EDBF0550, 0x1E69E58C0);
        v30 = sub_1BF9B50B8();

        if (v30)
        {
          if (v26)
          {
            if (v29)
            {
              if (v24 == v27 && v26 == v29)
              {
              }

              else
              {
                sub_1BF9B56D8();
              }

              goto LABEL_20;
            }
          }

          else if (!v29)
          {
            goto LABEL_20;
          }
        }

        else
        {
        }

LABEL_20:
        OUTLINED_FUNCTION_2_15();
        sub_1BF920AE4(v21, v41);
        goto LABEL_21;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_13();
      sub_1BF8C14B0();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = v43;
        v35 = v44;
        v37 = v45;
        (*(v44 + 32))(v43, v22, v45);
        sub_1BF9B4718();
        v38 = *(v35 + 8);
        v38(v36, v37);
        v38(v12, v37);
        goto LABEL_20;
      }

      (*(v44 + 8))(v12, v45);
    }
  }

  else
  {
    v32 = v46;
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_43();
    sub_1BF8C14B0();
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v32 + 32))(v0, v22, v6);
      OUTLINED_FUNCTION_24_4();
      sub_1BF9B4838();
      v39 = *(v32 + 8);
      v39(v0, v6);
      v40 = OUTLINED_FUNCTION_23_7();
      (v39)(v40);
      goto LABEL_20;
    }

    v33 = OUTLINED_FUNCTION_23_7();
    v34(v33);
  }

  sub_1BF8DFBF0(v21, &qword_1EBDE96A8, &qword_1BF9BF218);
LABEL_21:
  OUTLINED_FUNCTION_64();
}

Swift::String __swiftcall SiriSuggestions.Intent.getIdentifier()()
{
  v2 = type metadata accessor for SiriSuggestions.AppIntent(0);
  v3 = OUTLINED_FUNCTION_72(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_44_3();
  type metadata accessor for SiriSuggestions.Intent(v4);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_0_12();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BF920B90();
      SiriSuggestions.AppIntent.identifier.getter();
      v8 = v7;
      v10 = v9;
      OUTLINED_FUNCTION_2_15();
      sub_1BF920AE4(v0, v11);
    }

    else
    {
      v8 = *(v1 + 24);
      v10 = *(v1 + 32);
    }
  }

  else
  {
    v12 = *v1;
    v13 = [*v1 typeName];
    v8 = sub_1BF9B4AA8();
    v10 = v14;
  }

  v15 = v8;
  v16 = v10;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

SiriSuggestionsKit::AppIdDetails_optional __swiftcall SiriSuggestions.Intent.getAppIdDetails()()
{
  v1 = v0;
  v2 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v3 = OUTLINED_FUNCTION_72(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v6 = v5 - v4;
  SiriSuggestions.Intent.getIntentQuery()();
  v8 = *(v6 + 32);
  v7 = *(v6 + 40);
  v9 = *(v6 + 48);

  v10 = sub_1BF920AE4(v6, type metadata accessor for SiriSuggestions.IntentQuery);
  *v1 = v8;
  *(v1 + 8) = v7;
  *(v1 + 16) = v9;
  result.value.appId._object = v11;
  result.value.appId._countAndFlagsBits = v10;
  result.is_nil = v13;
  result.value.party = v12;
  return result;
}