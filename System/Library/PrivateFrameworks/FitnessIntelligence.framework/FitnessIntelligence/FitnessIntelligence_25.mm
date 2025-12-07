uint64_t sub_1B4BD7944(uint64_t a1)
{
  sub_1B4D1820C();
}

void sub_1B4BD7A5C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0x6C62616E45746F6ELL;
  v5 = 0x80000001B4D48E90;
  v6 = 0xD000000000000018;
  v7 = 0xEC00000065746174;
  v8 = 0x5364696C61766E69;
  if (v2 != 4)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x7964616552746F6ELL;
  if (v2 != 1)
  {
    v10 = 0xD000000000000011;
    v9 = 0x80000001B4D48E70;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t static DeviceInferenceAvailability.ComponentAvailability.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v4 = sub_1B4BD7BB4(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_1B4BD7BB4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v29 = v9;
  v30 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_1B4D18E8C();
    sub_1B4D1820C();

    v16 = sub_1B4D18EDC();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v31 = v12;
    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 2)
      {
        break;
      }

      if (v20 == 3)
      {
        v21 = 0xD000000000000018;
        v22 = 0x80000001B4D48E90;
        if (v15 <= 2)
        {
          goto LABEL_24;
        }
      }

      else if (v20 == 4)
      {
        v21 = 0x5364696C61766E69;
        v22 = 0xEC00000065746174;
        if (v15 <= 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v22 = 0xE500000000000000;
        v21 = 0x726568746FLL;
        if (v15 <= 2)
        {
          goto LABEL_24;
        }
      }

LABEL_38:
      v25 = 0x5364696C61766E69;
      if (v15 != 4)
      {
        v25 = 0x726568746FLL;
      }

      v26 = 0xEC00000065746174;
      if (v15 != 4)
      {
        v26 = 0xE500000000000000;
      }

      if (v15 == 3)
      {
        v27 = 0xD000000000000018;
      }

      else
      {
        v27 = v25;
      }

      if (v15 == 3)
      {
        v24 = 0x80000001B4D48E90;
      }

      else
      {
        v24 = v26;
      }

      if (v21 == v27)
      {
        goto LABEL_51;
      }

LABEL_52:
      v28 = sub_1B4D18DCC();

      if (v28)
      {
        goto LABEL_60;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (!*(*(a2 + 48) + v18))
    {
      v21 = 0x6C62616E45746F6ELL;
      v22 = 0xEA00000000006465;
      if (v15 <= 2)
      {
        goto LABEL_24;
      }

      goto LABEL_38;
    }

    if (v20 == 1)
    {
      v21 = 0x7964616552746F6ELL;
    }

    else
    {
      v21 = 0xD000000000000011;
    }

    if (v20 == 1)
    {
      v22 = 0xE800000000000000;
    }

    else
    {
      v22 = 0x80000001B4D48E70;
    }

    if (v15 > 2)
    {
      goto LABEL_38;
    }

LABEL_24:
    if (v15)
    {
      if (v15 == 1)
      {
        v23 = 0x7964616552746F6ELL;
      }

      else
      {
        v23 = 0xD000000000000011;
      }

      if (v15 == 1)
      {
        v24 = 0xE800000000000000;
      }

      else
      {
        v24 = 0x80000001B4D48E70;
      }

      if (v21 == v23)
      {
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    v24 = 0xEA00000000006465;
    if (v21 != 0x6C62616E45746F6ELL)
    {
      goto LABEL_52;
    }

LABEL_51:
    if (v22 != v24)
    {
      goto LABEL_52;
    }

LABEL_60:
    v9 = v29;
    v3 = v30;
    v8 = v31;
  }

  while (v31);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4BD7FE0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1B4D18E8C();

    sub_1B4D1820C();
    v16 = sub_1B4D18EDC();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1B4D18DCC() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4BD8198(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v4 = sub_1B4BD7BB4(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

double DeviceInferenceAvailability.generativeModels.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

double DeviceInferenceAvailability.siri.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

double DeviceInferenceAvailability.selectedVoiceAsset.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

double DeviceInferenceAvailability.locale.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 24);

  return result;
}

void *DeviceInferenceAvailability.init(generativeModels:siri:selectedVoiceAsset:locale:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  *a5 = *result;
  a5[1] = v5;
  a5[2] = v6;
  a5[3] = v7;
  return result;
}

BOOL _s19FitnessIntelligence27DeviceInferenceAvailabilityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  if (!*a1)
  {

    if (v6)
    {
      return 0;
    }

    if (v2)
    {
      goto LABEL_5;
    }

LABEL_13:

    if (v5)
    {
      return 0;
    }

    if (v4)
    {
      goto LABEL_8;
    }

LABEL_15:

    if (!v8)
    {

      goto LABEL_17;
    }

    return 0;
  }

  if (!v6)
  {
    goto LABEL_22;
  }

  v10 = sub_1B4BD7BB4(v9, v6);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_22;
  }

  v12 = sub_1B4BD7BB4(v11, v5);

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (!v8)
  {
    goto LABEL_22;
  }

  v14 = sub_1B4BD7BB4(v13, v8);

  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if (v3)
  {
    if (v7)
    {

      v16 = sub_1B4BD7BB4(v15, v7);

      return (v16 & 1) != 0;
    }

    goto LABEL_22;
  }

  if (v7)
  {
LABEL_22:

    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

unint64_t sub_1B4BD8414()
{
  result = qword_1EDC3CC48;
  if (!qword_1EDC3CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CC48);
  }

  return result;
}

uint64_t sub_1B4BD8468(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B4BD84C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B4BD8538(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1B4BD8588(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B4BD85DC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B4BD85F4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t DateRangeDescriptor.init(_:)(uint64_t a1)
{
  switch(*(a1 + 8))
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
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      sub_1B4D176CC();
      sub_1B4BD89D0(a1);
      type metadata accessor for DateRangeDescriptor(0);
      result = swift_storeEnumTagMultiPayload();
      break;
    default:
      sub_1B4BD897C();
      swift_allocError();
      swift_willThrow();
      result = sub_1B4BD89D0(a1);
      break;
  }

  return result;
}

unint64_t sub_1B4BD897C()
{
  result = qword_1EB8AC0B0;
  if (!qword_1EB8AC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0B0);
  }

  return result;
}

uint64_t sub_1B4BD89D0(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DateRangeDescriptor.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  sub_1B4BD8CB0(&qword_1EDC3C268, &protocol conformance descriptor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BD8AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DateRangeDescriptor(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B94680(a2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v5 + 32))(v7, v10, v4);
  sub_1B4D176DC();
  v13 = v12;
  result = (*(v5 + 8))(v7, v4);
  *a1 = v13;
  *(a1 + 8) = byte_1B4D3A180[EnumCaseMultiPayload];
  return result;
}

uint64_t sub_1B4BD8CB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BD8CF4()
{
  type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  sub_1B4BD8CB0(&qword_1EDC3C268, &protocol conformance descriptor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4BD8DB4()
{
  result = qword_1EB8AC0B8;
  if (!qword_1EB8AC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0B8);
  }

  return result;
}

void static WorkoutCountByRoundedDistancePropertyGenerator.from(_:for:)(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F20, &qword_1B4D20450);
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v72 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v72 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v81 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v79 = &v72 - v22;
  if (*a2 != 17)
  {
    goto LABEL_8;
  }

  v80 = a3;
  v24 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v25 = (*(v23 + 56))(v24, v23);
  v26 = [v25 effectiveTypeIdentifier];

  a3 = v80;
  v27 = vdupq_n_s64(v26);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_1F2CBAAC0, v27), vceqq_s64(unk_1F2CBAAD0, v27)))) & 1) == 0 && qword_1F2CBAAE0 != v26 && unk_1F2CBAAE8 != v26 && qword_1F2CBAAF0 != v26)
  {
    goto LABEL_8;
  }

  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  (*(v29 + 120))(v28, v29);
  v30 = v81;
  if ((*(v81 + 48))(v11, 1, v12) == 1)
  {
    sub_1B4BD9624(v11);
    a3 = v80;
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v31 = *(v30 + 32);
  v32 = v79;
  v75 = v30 + 32;
  v73 = v14;
  v74 = v31;
  v31(v79, v11, v12);
  v33 = objc_opt_self();
  v34 = [v33 kilometers];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v36 = v35;
  v39 = *(v30 + 8);
  v37 = v30 + 8;
  v38 = v39;
  v39(v20, v12);
  v40 = floor(v36);
  v78 = v33;
  v41 = [v33 miles];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v43 = v42;
  v39(v20, v12);
  v44 = floor(v43);
  if (v40 == v44)
  {
    v38(v32, v12);
    v45 = v80;
    *v80 = 0;
    v45[1] = 0;
    return;
  }

  v76 = v38;
  v77 = v37;
  v46 = MEMORY[0x1E69E7CC0];
  v47 = v78;
  v48 = v74;
  v49 = v73;
  if (v40 > 0.0)
  {
    v50 = [v78 kilometers];
    sub_1B499221C();
    sub_1B4D1741C();
    v51 = sub_1B4A1E48C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    v46 = v51;
    if (v53 >= v52 >> 1)
    {
      v46 = sub_1B4A1E48C((v52 > 1), v53 + 1, 1, v51);
    }

    *(v46 + 2) = v53 + 1;
    v48(&v46[((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v53], v17, v12);
  }

  if (v44 <= 0.0)
  {
    v55 = v46;
  }

  else
  {
    v54 = [v47 miles];
    sub_1B499221C();
    sub_1B4D1741C();
    v55 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_1B4A1E48C(0, *(v46 + 2) + 1, 1, v46);
    }

    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = sub_1B4A1E48C((v56 > 1), v57 + 1, 1, v55);
    }

    *(v55 + 2) = v57 + 1;
    v48(&v55[((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v57], v49, v12);
  }

  v58 = *(v55 + 2);
  if (v58)
  {
    v84 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF5BC(0, v58, 0);
    v59 = v84;
    v60 = v81 + 16;
    v81 = *(v81 + 16);
    v61 = *(v60 + 64);
    v74 = v55;
    v62 = &v55[(v61 + 32) & ~v61];
    v75 = *(v60 + 56);
    do
    {
      v63 = v60;
      (v81)(v20, v62, v12);
      v64 = *(v83 + 48);
      v65 = [v78 meters];
      sub_1B4D1745C();

      v76(v20, v12);
      *&v8[v64] = 1;
      v84 = v59;
      v67 = *(v59 + 16);
      v66 = *(v59 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1B4BCF5BC((v66 > 1), v67 + 1, 1);
        v59 = v84;
      }

      *(v59 + 16) = v67 + 1;
      sub_1B4BD968C(v8, v59 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v67);
      v62 += v75;
      --v58;
      v60 = v63;
    }

    while (v58);

    if (*(v59 + 16))
    {
      goto LABEL_28;
    }

LABEL_30:
    v68 = MEMORY[0x1E69E7CC8];
    goto LABEL_31;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_30;
  }

LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68B8, &qword_1B4D1ABD0);
  v68 = sub_1B4D18AEC();
LABEL_31:
  v69 = v79;
  v84 = v68;

  sub_1B4BD96FC(v70, 1, &v84);
  v76(v69, v12);

  v71 = v80;
  *v80 = v84;
  v71[1] = 0;
}

uint64_t sub_1B4BD9624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4BD968C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F20, &qword_1B4D20450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B4BD96FC(void *a1, char a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F20, &qword_1B4D20450);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v52 - v14;
  v57 = a1[2];
  if (!v57)
  {
    goto LABEL_22;
  }

  v52[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v56 = *(v13 + 72);
  v58 = a1;
  v52[0] = v17;
  sub_1B4BD9CCC(a1 + v17, v52 - v14);
  v53 = v8;
  v59 = *(v8 + 32);
  v60 = v7;
  v59(v10, v15, v7);
  v55 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_1B49E9B90(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_1B49848E0(v25, a2 & 1);
    v20 = sub_1B49E9B90(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_1B4D18E1C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v20;
  sub_1B4988BC4();
  v20 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v63 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v53 + 8))(v10, v60);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v31 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v32 = v31[6];
  v54 = *(v53 + 72);
  v33 = v20;
  v59((v32 + v54 * v20), v10, v60);
  *(v31[7] + 8 * v33) = v18;
  v34 = v31[2];
  v24 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v24)
  {
    v31[2] = v35;
    v36 = v58;
    if (v57 == 1)
    {
LABEL_22:

      return;
    }

    v37 = v58 + v56 + v52[0];
    v38 = 1;
    while (v38 < v36[2])
    {
      sub_1B4BD9CCC(v37, v15);
      v59(v10, v15, v60);
      v39 = *&v15[v55];
      v40 = *a3;
      v41 = sub_1B49E9B90(v10);
      v43 = v40[2];
      v44 = (v42 & 1) == 0;
      v24 = __OFADD__(v43, v44);
      v45 = v43 + v44;
      if (v24)
      {
        goto LABEL_23;
      }

      v46 = v42;
      if (v40[3] < v45)
      {
        sub_1B49848E0(v45, 1);
        v41 = sub_1B49E9B90(v10);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v46)
      {
        goto LABEL_9;
      }

      v48 = *a3;
      *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
      v49 = v41;
      v59((v48[6] + v54 * v41), v10, v60);
      *(v48[7] + 8 * v49) = v39;
      v50 = v48[2];
      v24 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v38;
      v48[2] = v51;
      v37 += v56;
      v36 = v58;
      if (v57 == v38)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](39, 0xE100000000000000);
  sub_1B4D18A9C();
  __break(1u);
}

unint64_t sub_1B4BD9C2C(uint64_t a1)
{
  result = sub_1B4A2FCF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BD9C58()
{
  result = qword_1EDC38298[0];
  if (!qword_1EDC38298[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC0C0, &qword_1B4D3A1B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38298);
  }

  return result;
}

uint64_t sub_1B4BD9CCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F20, &qword_1B4D20450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CacheIndex.date(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - v3;
  v5 = sub_1B4D175FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v12 = _HKActivityCacheDateComponentsFromCacheIndex();
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = v12;
  sub_1B4D1756C();

  (*(v6 + 32))(v11, v8, v5);
  sub_1B4D178FC();
  (*(v6 + 8))(v11, v5);
  v14 = sub_1B4D1777C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v4, 1, v14) == 1)
  {
    sub_1B497A590(v4);
LABEL_4:
    sub_1B4BD9F8C();
    swift_allocError();
    return swift_willThrow();
  }

  return (*(v15 + 32))(a1, v4, v14);
}

unint64_t sub_1B4BD9F8C()
{
  result = qword_1EB8AC0C8;
  if (!qword_1EB8AC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0C8);
  }

  return result;
}

uint64_t CacheIndex.dateComponents(for:)@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  result = CacheIndex.date(for:)(v7);
  if (!v2)
  {
    v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
    v9 = sub_1B4D1794C();
    v10 = *(v9 - 8);
    v11 = v10;
    v19 = v5;
    v12 = *(v10 + 72);
    v13 = *(v10 + 80);
    v18[1] = a1;
    v14 = (v13 + 32) & ~v13;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B4D223E0;
    v16 = v15 + v14;
    v17 = *(v11 + 104);
    v17(v16, *MEMORY[0x1E6969A50], v9);
    v17(v16 + v12, *MEMORY[0x1E6969A68], v9);
    v18[0] = v4;
    v17(v16 + 2 * v12, *MEMORY[0x1E6969A78], v9);
    v17(v16 + 3 * v12, *MEMORY[0x1E6969A10], v9);
    v17(v16 + 4 * v12, *MEMORY[0x1E6969AB0], v9);
    v17(v16 + 5 * v12, *MEMORY[0x1E6969A48], v9);
    sub_1B49B56B4(v15);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1B4D1788C();

    return (*(v19 + 8))(v7, v18[0]);
  }

  return result;
}

uint64_t CacheIndex.CacheIndexError.hashValue.getter()
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](0);
  return sub_1B4D18EDC();
}

uint64_t CacheIndex.add(days:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a1;
  v45 = sub_1B4D1794C();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v38 - v8;
  v47 = sub_1B4D1777C();
  v10 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v41 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v38 - v13;
  v52 = sub_1B4D175FC();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v50 = v38 - v17;
  v18 = sub_1B4D1796C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v18, qword_1EDC3CE48);
  v48 = v19;
  v49 = v18;
  (*(v19 + 16))(v21, v22, v18);
  v23 = _HKActivityCacheDateComponentsFromCacheIndex();
  if (!v23)
  {
    goto LABEL_8;
  }

  v40 = a2;
  v24 = v23;
  sub_1B4D1756C();

  (*(v51 + 32))(v50, v15, v52);
  sub_1B4D178FC();
  v25 = *(v10 + 48);
  v26 = v47;
  if (v25(v9, 1, v47) == 1)
  {
LABEL_7:
    (*(v51 + 8))(v50, v52);
    sub_1B497A590(v9);
LABEL_8:
    sub_1B4BD9F8C();
    swift_allocError();
    swift_willThrow();
    return (*(v48 + 8))(v21, v49);
  }

  v39 = v21;
  v38[0] = *(v10 + 32);
  v38[1] = v10 + 32;
  (v38[0])(v46, v9, v26);
  v28 = v42;
  v27 = v43;
  v29 = v45;
  (*(v43 + 104))(v42, *MEMORY[0x1E6969A48], v45);
  v21 = v39;
  sub_1B4D1790C();
  v30 = v47;
  (*(v27 + 8))(v28, v29);
  if (v25(v6, 1, v30) == 1)
  {
    (*(v10 + 8))(v46, v30);
    v9 = v6;
    goto LABEL_7;
  }

  v32 = v41;
  (v38[0])(v41, v6, v30);
  v33 = v30;
  v34 = sub_1B4D1771C();
  v35 = sub_1B4D178CC();
  v36 = _HKCacheIndexFromDate();

  v37 = *(v10 + 8);
  v37(v32, v33);
  v37(v46, v33);
  (*(v51 + 8))(v50, v52);
  result = (*(v48 + 8))(v21, v49);
  *v40 = v36;
  return result;
}

uint64_t *CacheIndex.days(until:)(uint64_t *a1)
{
  v4 = sub_1B4D175FC();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4D1777C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = *a1;
  v30 = *v1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v15 = sub_1B4D1796C();
  __swift_project_value_buffer(v15, qword_1EDC3CE48);
  v16 = &v30;
  CacheIndex.date(for:)(v13);
  if (!v2)
  {
    v30 = v14;
    CacheIndex.date(for:)(v10);
    v27 = 0;
    v26 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
    v17 = sub_1B4D1794C();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1B4D1A800;
    (*(v18 + 104))(v20 + v19, *MEMORY[0x1E6969A48], v17);
    v25[1] = sub_1B49B56B4(v20);
    swift_setDeallocating();
    (*(v18 + 8))(v20 + v19, v17);
    swift_deallocClassInstance();
    sub_1B4D1787C();

    v21 = sub_1B4D1757C();
    if (v22)
    {
      sub_1B4BD9F8C();
      v16 = swift_allocError();
      swift_willThrow();
    }

    else
    {
      v16 = v21;
    }

    (*(v28 + 8))(v6, v29);
    v23 = *(v26 + 8);
    v23(v10, v7);
    v23(v13, v7);
  }

  return v16;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CacheIndex.isEndOfMonth()()
{
  v2 = sub_1B4D175FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20[-v7];
  v9 = *v0;
  v22 = *v0;
  CacheIndex.add(days:)(1, &v23);
  if (!v1)
  {
    v22 = v23;
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v11 = sub_1B4D1796C();
    __swift_project_value_buffer(v11, qword_1EDC3CE48);
    CacheIndex.dateComponents(for:)(v8);
    v23 = v9;
    CacheIndex.dateComponents(for:)(v5);
    v13 = sub_1B4D175AC();
    v21 = v14;
    v15 = sub_1B4D175AC();
    v17 = v16;
    v18 = *(v3 + 8);
    v18(v5, v2);
    v18(v8, v2);
    v19 = (v13 == v15) & ~v17;
    if (v21)
    {
      v19 = v17;
    }

    v10 = v19 ^ 1;
  }

  return v10 & 1;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CacheIndex.isEndOfTrimester()()
{
  v2 = sub_1B4D175FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *v0;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4D1796C();
  __swift_project_value_buffer(v6, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v5);
  if (!v1)
  {
    v8 = sub_1B4D175AC();
    if (v9)
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }

    v10 = v8;
    v11 = sub_1B4D1757C();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    if (v13)
    {
      return 0;
    }

    if (v10 > 8)
    {
      if (v10 == 9)
      {
        return v11 == 30;
      }

      if (v10 != 12)
      {
        return 0;
      }
    }

    else if (v10 != 3)
    {
      v7 = v11 == 30;
      if (v10 != 6)
      {
        return 0;
      }

      return v7;
    }

    return v11 == 31;
  }

  return v7;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CacheIndex.isEndOfWeek()()
{
  v2 = sub_1B4D175FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *v0;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4D1796C();
  __swift_project_value_buffer(v6, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v5);
  if (!v1)
  {
    v8 = sub_1B4D175CC();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    v7 = (v8 == 1) & ~v10;
  }

  return v7 & 1;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CacheIndex.isBeginningOfMonth()()
{
  v2 = sub_1B4D175FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *v0;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4D1796C();
  __swift_project_value_buffer(v6, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v5);
  if (!v1)
  {
    v8 = sub_1B4D1757C();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    v7 = (v8 == 1) & ~v10;
  }

  return v7 & 1;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CacheIndex.isBeginningOfYear()()
{
  v2 = sub_1B4D175FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *v0;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4D1796C();
  __swift_project_value_buffer(v6, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v5);
  if (!v1)
  {
    v8 = sub_1B4D175AC();
    if (v9)
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }

    v10 = v8;
    v11 = sub_1B4D1757C();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    if (v13)
    {
      return 0;
    }

    v7 = v11 == 1;
    if (v10 != 1)
    {
      return 0;
    }
  }

  return v7;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CacheIndex.isBeginningOfWeek()()
{
  v2 = sub_1B4D1777C();
  v22 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = *v0;
  v23 = *v0;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v12 = sub_1B4D1796C();
  __swift_project_value_buffer(v12, qword_1EDC3CE48);
  v13 = &v23;
  CacheIndex.date(for:)(v7);
  if (!v1)
  {
    v21 = 0;
    v14 = sub_1B4D178CC();
    v15 = sub_1B4D1771C();
    v16 = v2;
    v17 = [v14 hk:v15 startOfFitnessWeekBeforeDate:?];

    sub_1B4D1775C();
    v18 = *(v22 + 8);
    v18(v7, v16);
    v23 = v11;
    v13 = &v23;
    v19 = v21;
    CacheIndex.date(for:)(v4);
    if (!v19)
    {
      LOBYTE(v13) = sub_1B4D1774C();
      v18(v4, v16);
    }

    v18(v10, v16);
  }

  return v13 & 1;
}

uint64_t CacheIndex.monthlyCacheIndexRange()@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v26 = *v1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v14 = sub_1B4D1796C();
  v15 = __swift_project_value_buffer(v14, qword_1EDC3CE48);
  result = CacheIndex.date(for:)(v13);
  if (!v2)
  {
    v25 = a1;
    Date.beginningOfMonth()(v10);
    v17 = sub_1B4D1771C();
    v18 = sub_1B4D178CC();
    v24 = _HKCacheIndexFromDate();

    v19 = *(v5 + 8);
    v19(v10, v4);
    Date.endOfMonth(calendar:)(v15, v7);
    v20 = sub_1B4D1771C();
    v21 = sub_1B4D178CC();
    v22 = _HKCacheIndexFromDate();

    v19(v7, v4);
    result = (v19)(v13, v4);
    if (v22 < v24)
    {
      __break(1u);
    }

    else
    {
      v23 = v25;
      *v25 = v24;
      v23[1] = v22;
    }
  }

  return result;
}

char *CacheIndex.allMonthlyCacheIndexRanges()()
{
  v3 = *v1;
  result = CacheIndex.monthlyCacheIndexRange()(v9);
  if (v2)
  {
    return i;
  }

  v5 = v9[0];
  if (v3 >= v9[0])
  {
    for (i = MEMORY[0x1E69E7CC0]; v9[0] >= 410227200; v3 = v9[1])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_1B4A1E900(0, *(i + 2) + 1, 1, i);
      }

      v7 = *(i + 2);
      v6 = *(i + 3);
      if (v7 >= v6 >> 1)
      {
        i = sub_1B4A1E900((v6 > 1), v7 + 1, 1, i);
      }

      *(i + 2) = v7 + 1;
      v8 = &i[16 * v7];
      *(v8 + 4) = v5;
      *(v8 + 5) = v3;
      CacheIndex.add(days:)(-1, &v10);
      CacheIndex.monthlyCacheIndexRange()(v9);
      v5 = v9[0];
    }

    return i;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B4BDBD4C()
{
  result = qword_1EB8AC0D0;
  if (!qword_1EB8AC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0D0);
  }

  return result;
}

unint64_t sub_1B4BDBDC0()
{
  result = qword_1EB8AC0D8;
  if (!qword_1EB8AC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0D8);
  }

  return result;
}

uint64_t sub_1B4BDBE38()
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BDBEA4(uint64_t a1)
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](1);
  return sub_1B4D18EDC();
}

FitnessIntelligence::FactType_optional __swiftcall FactType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18DFC();

  v5 = 0;
  v6 = 19;
  switch(v3)
  {
    case 0:
      goto LABEL_33;
    case 1:
      v5 = 1;
      goto LABEL_33;
    case 2:
      v5 = 2;
      goto LABEL_33;
    case 3:
      v5 = 3;
      goto LABEL_33;
    case 4:
      v5 = 4;
      goto LABEL_33;
    case 5:
      v5 = 5;
      goto LABEL_33;
    case 6:
      v5 = 6;
      goto LABEL_33;
    case 7:
      v5 = 7;
      goto LABEL_33;
    case 8:
      v5 = 8;
      goto LABEL_33;
    case 9:
      v5 = 9;
      goto LABEL_33;
    case 10:
      v5 = 10;
      goto LABEL_33;
    case 11:
      v5 = 11;
      goto LABEL_33;
    case 12:
      v5 = 12;
      goto LABEL_33;
    case 13:
      v5 = 13;
      goto LABEL_33;
    case 14:
      v5 = 14;
      goto LABEL_33;
    case 15:
      v5 = 15;
      goto LABEL_33;
    case 16:
      v5 = 16;
      goto LABEL_33;
    case 17:
      v5 = 17;
      goto LABEL_33;
    case 18:
      v5 = 18;
LABEL_33:
      v6 = v5;
      break;
    case 19:
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
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    default:
      v6 = 37;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t FactType.rawValue.getter()
{
  result = 0x4474756F6B726F77;
  switch(*v0)
  {
    case 1:
      result = 0x4D74756F6B726F77;
      break;
    case 2:
      v2 = 1953718630;
      goto LABEL_14;
    case 3:
      v2 = 1735290732;
LABEL_14:
      result = v2 | 0x4474736500000000;
      break;
    case 4:
    case 8:
    case 0x1C:
      result = 0xD00000000000001BLL;
      break;
    case 5:
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 9:
    case 0x1F:
      result = 0xD000000000000012;
      break;
    case 0xB:
      result = 0xD00000000000001CLL;
      break;
    case 0xC:
      result = 0xD00000000000001ELL;
      break;
    case 0xD:
      result = 0x74617453676E6972;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0x73676E69526C6C61;
      break;
    case 0x10:
    case 0x11:
      result = 0xD000000000000015;
      break;
    case 0x12:
      result = 0x7461527472616568;
      break;
    case 0x13:
      result = 0x4174756F6B726F77;
      break;
    case 0x14:
      result = 0x676E696E69617274;
      break;
    case 0x15:
      result = 0x736C61746976;
      break;
    case 0x16:
      result = 0x44746E6572727563;
      break;
    case 0x17:
      result = 0xD000000000000016;
      break;
    case 0x18:
      result = 0xD00000000000002ALL;
      break;
    case 0x19:
    case 0x1A:
      result = 0xD000000000000024;
      break;
    case 0x1B:
      result = 0xD000000000000019;
      break;
    case 0x1D:
    case 0x22:
      result = 0xD00000000000001DLL;
      break;
    case 0x1E:
      result = 0xD000000000000018;
      break;
    case 0x20:
      result = 0x5774756F6B726F77;
      break;
    case 0x21:
      result = 0x746165576576696CLL;
      break;
    case 0x23:
      result = 0xD000000000000019;
      break;
    case 0x24:
      result = 0x614679636167656CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B4BDC578()
{
  v0 = FactType.rawValue.getter();
  v2 = v1;
  if (v0 == FactType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B4D18DCC();
  }

  return v5 & 1;
}

uint64_t sub_1B4BDC614()
{
  sub_1B4D18E8C();
  FactType.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BDC67C(uint64_t a1)
{
  FactType.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4BDC6E0(uint64_t a1)
{
  sub_1B4D18E8C();
  FactType.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BDC750@<X0>(uint64_t *a1@<X8>)
{
  result = FactType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t LegacyFact.prompt.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LegacyFact.nativeEncoded.getter()
{
  v1 = *(v0 + 24);
  sub_1B498FC0C(v1, *(v0 + 32));
  return v1;
}

uint64_t LegacyFact.resolve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = v3[1];
  v19 = *v3;
  v6 = *(v3 + 16);
  v16 = v3[4];
  v17 = v3[3];
  v7 = *(a3 + 40);
  v7(v20, a2, a3);
  v24 = v6;
  v8 = FactType.rawValue.getter();
  v10 = v9;
  if (v8 == FactType.rawValue.getter() && v10 == v11)
  {

LABEL_5:
    v20[0] = v19;
    v20[1] = v18;
    v21 = v6;
    v22 = v17;
    v23 = v16;
    return static FactGenerating.resolve<A>(from:)(v20, a2, a2, a3, a3);
  }

  v12 = sub_1B4D18DCC();

  if (v12)
  {
    goto LABEL_5;
  }

  v7(v20, a2, a3);
  v14 = v20[0];
  sub_1B4BDCA80();
  swift_allocError();
  *v15 = v6;
  v15[1] = v14;
  return swift_willThrow();
}

unint64_t sub_1B4BDCA80()
{
  result = qword_1EB8AC0E0;
  if (!qword_1EB8AC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0E0);
  }

  return result;
}

uint64_t sub_1B4BDCAD8()
{
  v1 = 0x6570795474636166;
  if (*v0 != 1)
  {
    v1 = 0x6E4565766974616ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t sub_1B4BDCB3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4BDDF64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4BDCB64(uint64_t a1)
{
  v2 = sub_1B4BDD8C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BDCBA0(uint64_t a1)
{
  v2 = sub_1B4BDD8C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LegacyFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC0E8, &qword_1B4D3A470);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v18 = *(v1 + 16);
  v7 = *(v1 + 24);
  v13 = *(v1 + 32);
  v14 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BDD8C0();
  sub_1B4D18EFC();
  LOBYTE(v16) = 0;
  v8 = v15;
  sub_1B4D18CBC();
  if (!v8)
  {
    v10 = v13;
    v9 = v14;
    LOBYTE(v16) = v18;
    v19 = 1;
    sub_1B4BDD914();
    sub_1B4D18D0C();
    v16 = v9;
    v17 = v10;
    v19 = 2;
    sub_1B498FC0C(v9, v10);
    sub_1B49DDCD8();
    sub_1B4D18D0C();
    sub_1B49DDD2C(v16, v17);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t LegacyFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC100, &qword_1B4D3A478);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BDD8C0();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v16[0]) = 0;
  v9 = sub_1B4D18BBC();
  v11 = v10;
  v12 = v9;
  v18 = 1;
  sub_1B4BDD968();
  sub_1B4D18C0C();
  v17 = LOBYTE(v16[0]);
  v18 = 2;
  sub_1B49DDFEC();
  sub_1B4D18C0C();
  (*(v6 + 8))(v8, v5);
  v13 = v16[0];
  v14 = v16[1];
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;

  sub_1B498FC0C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_1B49DDD2C(v13, v14);
}

uint64_t Array<A>.resolve<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a2 + 16);
  if (v7)
  {
    v10 = (a2 + 64);
    while (1)
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = *(v10 - 16);
      v14 = *(v10 - 3);
      v22[0] = *(v10 - 4);
      v22[1] = v14;
      v23 = v13;
      v24 = v12;
      v25 = v11;

      sub_1B498FC0C(v12, v11);
      if (sub_1B4BDD4AC(v22, a1, a3, a4))
      {
        break;
      }

      v10 += 5;
      v15 = v24;
      v16 = v25;

      sub_1B49DDD2C(v15, v16);
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    v18 = v24;
    v19 = v25;
    static FactGenerating.resolve<A>(from:)(v22, a3, a3, a4, a4);

    sub_1B49DDD2C(v18, v19);
    v17 = 0;
  }

  else
  {
LABEL_5:
    v17 = 1;
  }

  v20 = *(*(a3 - 8) + 56);

  return v20(a5, v17, 1, a3);
}

uint64_t Array<A>.resolve<A>(_:)(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = isUniquelyReferenced_nonNull_native;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = (a2 + 64);
    v9 = MEMORY[0x1E69E7CC0];
    v25 = isUniquelyReferenced_nonNull_native;
    do
    {
      v13 = *(v8 - 1);
      v12 = *v8;
      v14 = *(v8 - 16);
      v15 = *(v8 - 3);
      v29 = *(v8 - 4);
      v30 = v15;
      v31 = v14;
      v32 = v13;
      v33 = v12;

      sub_1B498FC0C(v13, v12);
      if (sub_1B4BDD4AC(&v29, v6, v5, v4))
      {
        v17 = v29;
        v16 = v30;
        v18 = v31;
        v19 = v32;
        v28 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1B4BCF79C(0, *(v9 + 16) + 1, 1);
          v9 = v34;
        }

        v21 = *(v9 + 16);
        v20 = *(v9 + 24);
        if (v21 >= v20 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1B4BCF79C((v20 > 1), v21 + 1, 1);
          v9 = v34;
        }

        *(v9 + 16) = v21 + 1;
        v22 = v9 + 40 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v16;
        *(v22 + 48) = v18;
        v5 = a3;
        *(v22 + 56) = v19;
        *(v22 + 64) = v28;
        v6 = v25;
        v4 = a4;
      }

      else
      {
        v10 = v32;
        v11 = v33;

        isUniquelyReferenced_nonNull_native = sub_1B49DDD2C(v10, v11);
      }

      v8 += 5;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v29 = v9;
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC108, &qword_1B4D3A480);
  sub_1B49B0578(&qword_1EB8AC110, &qword_1EB8AC108, &qword_1B4D3A480, MEMORY[0x1E69E6328]);
  v23 = sub_1B4D182BC();

  return v23;
}

uint64_t sub_1B4BDD4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  (*(a4 + 40))(&v12, a3, a4);
  BYTE1(v12) = v4;
  v5 = FactType.rawValue.getter();
  v7 = v6;
  if (v5 == FactType.rawValue.getter() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4BDD56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v7;
  v12 = v8;
  v13 = *(a1 + 24);
  static FactGenerating.resolve<A>(from:)(v11, a2, a2, a3, a3);
  if (v4)
  {

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return (*(*(a2 - 8) + 56))(a4, v9, 1, a2);
}

BOOL sub_1B4BDD628(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1B498FC0C(a3, a4);
          return sub_1B4A1CD44(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s19FitnessIntelligence10LegacyFactV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v7 = FactType.rawValue.getter();
  v9 = v8;
  if (v7 != FactType.rawValue.getter() || v9 != v10)
  {
    v11 = sub_1B4D18DCC();

    if (v11)
    {
      goto LABEL_10;
    }

    return 0;
  }

LABEL_10:

  return sub_1B4BDD628(v2, v3, v4, v5);
}

unint64_t sub_1B4BDD8C0()
{
  result = qword_1EB8AC0F0;
  if (!qword_1EB8AC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0F0);
  }

  return result;
}

unint64_t sub_1B4BDD914()
{
  result = qword_1EB8AC0F8;
  if (!qword_1EB8AC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0F8);
  }

  return result;
}

unint64_t sub_1B4BDD968()
{
  result = qword_1EDC36E90;
  if (!qword_1EDC36E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36E90);
  }

  return result;
}

unint64_t sub_1B4BDD9E0()
{
  result = qword_1EB8AC118;
  if (!qword_1EB8AC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC118);
  }

  return result;
}

unint64_t sub_1B4BDDA38()
{
  result = qword_1EB8AC120;
  if (!qword_1EB8AC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC120);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FactType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FactType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B4BDDC4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B4BDDC94(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ResolveError(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 65316 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65316 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65316;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65316;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65316;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ResolveError(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65316 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65316 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 16) + 1;
    *result = a2 - 220;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4BDDE60()
{
  result = qword_1EB8AC138;
  if (!qword_1EB8AC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC138);
  }

  return result;
}

unint64_t sub_1B4BDDEB8()
{
  result = qword_1EB8AC140;
  if (!qword_1EB8AC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC140);
  }

  return result;
}

unint64_t sub_1B4BDDF10()
{
  result = qword_1EB8AC148;
  if (!qword_1EB8AC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC148);
  }

  return result;
}

uint64_t sub_1B4BDDF64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795474636166 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E4565766974616ELL && a2 == 0xED00006465646F63)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

unint64_t sub_1B4BDE080()
{
  result = qword_1EDC36E98;
  if (!qword_1EDC36E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36E98);
  }

  return result;
}

unint64_t sub_1B4BDE0D4()
{
  result = qword_1EB8AC150;
  if (!qword_1EB8AC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC150);
  }

  return result;
}

uint64_t SnapshotPropertiesType.analyticsKey.getter()
{
  v1 = 0x7374756F6B726F77;
  if (*v0 != 1)
  {
    v1 = 0x507373656E746966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73676E6972;
  }
}

uint64_t static SnapshotProperties.empty(cacheIndex:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = v7;
  swift_getAssociatedTypeWitness();
  v5 = sub_1B4D1843C();
  return (*(a3 + 112))(&v8, &v7, v5, a2, a3);
}

uint64_t static SnapshotProperties.add(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *(a4 + 104);
  v35 = v19(a3, a4);
  v32 = a3;
  v33 = a4;
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = KeyPath;
  v28 = a3;
  v29 = a4;
  v30 = sub_1B4BE0BD4;
  v31 = v8;
  swift_getAssociatedTypeWitness();
  v9 = sub_1B4D184BC();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  WitnessTable = swift_getWitnessTable();
  v17 = *(swift_getAssociatedConformanceWitness() + 16);
  Sequence.groupBy<A>(key:)(sub_1B4BE07F4, v27, v9, AssociatedTypeWitness, WitnessTable, v17);

  v35 = v19(a3, a4);
  v25 = a3;
  v26 = a4;
  v12 = swift_getKeyPath();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v21 = a3;
  v22 = a4;
  v23 = sub_1B4BE0814;
  v24 = v13;

  Sequence.groupBy<A>(key:)(sub_1B4BE0BD8, v20, v9, AssociatedTypeWitness, WitnessTable, v17);

  result = sub_1B4D1800C();
  if (!v18)
  {
    v35 = result;
    MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v15);
    sub_1B4D1801C();
    swift_getWitnessTable();
    v16 = sub_1B4D182FC();

    (*(a4 + 88))(&v35, a3, a4);
    (*(a4 + 96))(&v34, a3, a4);
    return (*(a4 + 112))(&v35, &v34, v16, a3, a4);
  }

  return result;
}

uint64_t sub_1B4BDE744@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a8;
  v15 = sub_1B4D1880C();
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v45 = &v39 - v22;
  v23 = *a2;
  v55 = a1;
  v48 = a6;
  v49 = a7;
  v24 = a7;
  v25 = v23;
  v50 = v23;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC160, &qword_1B4D3AA28);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  v28 = sub_1B49B0578(&qword_1EDC36E18, &qword_1EB8AC160, &qword_1B4D3AA28, MEMORY[0x1E69E6340]);
  v29 = v46;
  result = sub_1B498D2F0(sub_1B4BE0B58, v47, v26, a6, v27, v28, MEMORY[0x1E69E7288], &v54);
  if (!v29)
  {
    v40 = v25;
    v41 = v17;
    v46 = result;
    v55 = result;
    v31 = *(a6 - 8);
    v32 = (*(v31 + 56))(v20, 1, 1, a6);
    MEMORY[0x1EEE9AC00](v32);
    *(&v39 - 2) = a6;
    *(&v39 - 1) = v24;
    sub_1B4D184BC();
    swift_getWitnessTable();
    v33 = v44;
    sub_1B4D182DC();
    v39 = v24;
    v34 = v31;
    v35 = v43;
    v36 = *(v43 + 8);
    v36(v20, v33);

    v37 = v41;
    (*(v35 + 16))(v41, v45, v33);
    v38 = *(v34 + 48);
    if (v38(v37, 1, a6) == 1)
    {
      v55 = v40;
      static SnapshotProperties.empty(cacheIndex:)(&v55, a6, v39);
      v36(v45, v44);
      result = v38(v37, 1, a6);
      if (result != 1)
      {
        return (v36)(v37, v44);
      }
    }

    else
    {
      v36(v45, v44);
      return (*(v34 + 32))(v42, v37, a6);
    }
  }

  return result;
}

FitnessIntelligence::SnapshotPropertiesType_optional __swiftcall SnapshotPropertiesType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SnapshotPropertiesType.rawValue.getter()
{
  v1 = 0x74756F6B726F77;
  if (*v0 != 1)
  {
    v1 = 0x507373656E746966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73676E6972;
  }
}

uint64_t SnapshotProperties.adding(_:filters:groupBy:propertyKinds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = a4;
  v19[1] = a7;
  v20 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v16 + 8))(&v23, v15, v16);
  v17 = v22;
  result = (*(a6 + 64))(a1, &v23, a2, a3, v21, a5, a6);
  if (!v17)
  {
    static SnapshotProperties.add(_:_:)(v19[2], v13, a5, a6);
    return (*(v20 + 8))(v13, a5);
  }

  return result;
}

uint64_t sub_1B4BDEDA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x74756F6B726F77;
  if (v2 != 1)
  {
    v4 = 0x507373656E746966;
    v3 = 0xEB0000000073756CLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73676E6972;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x74756F6B726F77;
  if (*a2 != 1)
  {
    v8 = 0x507373656E746966;
    v7 = 0xEB0000000073756CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73676E6972;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4BDEEB8()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BDEF60(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BDEFF4(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4BDF0A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x74756F6B726F77;
  if (v2 != 1)
  {
    v5 = 0x507373656E746966;
    v4 = 0xEB0000000073756CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73676E6972;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t SnapshotPropertiesType.serialized()()
{
  sub_1B4D173DC();
  swift_allocObject();
  sub_1B4D173CC();
  v0 = sub_1B4D173BC();

  return v0;
}

uint64_t SnapshotPropertiesType.init(serialized:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_1B4D173AC();
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B4D1738C();
  if (v3)
  {
    sub_1B49DDD2C(a1, a2);
  }

  else
  {

    v8 = sub_1B4D18B1C();

    if (v8 >= 3)
    {
      sub_1B4BE0890();
      swift_allocError();
      *v9 = v10;
      v9[1] = v11;
      swift_willThrow();
      return sub_1B49DDD2C(a1, a2);
    }

    else
    {

      result = sub_1B49DDD2C(a1, a2);
      *a3 = v8;
    }
  }

  return result;
}

Swift::Bool __swiftcall SnapshotProperties.isEmpty()()
{
  (*(v0 + 104))();
  swift_getAssociatedTypeWitness();
  sub_1B4D184BC();
  swift_getWitnessTable();
  v1 = sub_1B4D186AC();

  return v1 & 1;
}

uint64_t static SnapshotProperties.make(startCacheIndex:endCacheIndex:records:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24[2] = a6;
  v25 = *a1;
  v27 = *a2;
  v47 = a3;
  v44 = a4;
  v45 = a5;
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = KeyPath;
  v24[3] = KeyPath;
  v40 = a4;
  v41 = a5;
  v42 = sub_1B4BE0BD4;
  v43 = v9;
  swift_getAssociatedTypeWitness();
  v10 = sub_1B4D184BC();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  WitnessTable = swift_getWitnessTable();
  v13 = *(swift_getAssociatedConformanceWitness() + 16);
  v24[1] = WitnessTable;
  v14 = WitnessTable;
  v15 = v10;
  v16 = Sequence.groupBy<A>(key:)(sub_1B4BE0BD8, v39, v10, AssociatedTypeWitness, v14, v13);

  v47 = v16;
  v34 = a4;
  v35 = a5;
  v17 = v25;
  v36 = v26;
  v37 = v25;
  v38 = v27;
  v29 = a4;
  v30 = a5;
  v31 = sub_1B4BE08E4;
  v32 = &v33;
  v18 = sub_1B4D1801C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  v20 = swift_getWitnessTable();
  v21 = sub_1B498D2F0(sub_1B4BE0940, v28, v18, v15, v19, v20, MEMORY[0x1E69E7288], v46);

  if (!v24[4])
  {
    v26 = v24;
    v47 = v21;
    MEMORY[0x1EEE9AC00](result);
    sub_1B4D184BC();
    swift_getWitnessTable();
    v23 = sub_1B4D182FC();

    v47 = v17;
    v46[0] = v27;
    return (*(a5 + 112))(&v47, v46, v23, a4, a5);
  }

  return result;
}

uint64_t sub_1B4BDF82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 72);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

uint64_t sub_1B4BDF8D8@<X0>(void (*a1)(void)@<X1>, uint64_t a4@<X8>)
{
  a1();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a4, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_1B4BDF9C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, void *a5@<X5>, uint64_t *a6@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1B4D184BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  if (v6)
  {
    *a5 = v6;
  }

  else
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_1B4BDFADC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v55 = a4;
  v56 = a5;
  v57 = a3;
  v60 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = sub_1B4D1880C();
  v68 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v58 = a6;
  v59 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_1B4D1880C();
  v63 = *(v18 - 8);
  v64 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v49 - v22;
  v69 = v17;
  v70 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v54 = &v49 - v24;
  v25 = *a1;
  v66 = *a2;
  v53 = v25;
  v72 = v25;
  sub_1B4D184BC();
  swift_getWitnessTable();
  sub_1B4D1868C();
  v26 = *(AssociatedTypeWitness - 8);
  v27 = *(v26 + 48);
  if (v27(v16, 1, AssociatedTypeWitness) == 1)
  {
    v28 = *(v68 + 8);
    v68 += 8;
    v49 = v28;
    v28(v16, v62);
    v29 = *(v70 + 56);
    v51 = v20;
    v50 = v29;
    v29(v20, 1, 1, v69);
    v72 = v66;
    v30 = v52;
    sub_1B4D1868C();
    if (v27(v30, 1, AssociatedTypeWitness) == 1)
    {
      v49(v30, v62);
      v31 = v65;
      v32 = v65;
      v33 = 1;
    }

    else
    {
      v31 = v65;
      (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness);
      (*(v26 + 8))(v30, AssociatedTypeWitness);
      v32 = v31;
      v33 = 0;
    }

    v39 = v69;
    v50(v32, v33, 1, v69);
    v37 = v67;
    v34 = v39;
    v35 = v70;
    v40 = *(v70 + 48);
    v41 = v51;
    if (v40(v51, 1, v34) != 1)
    {
      (*(v63 + 8))(v41, v64);
    }

    v38 = v40(v31, 1, v34);
  }

  else
  {
    (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness);
    (*(v26 + 8))(v16, AssociatedTypeWitness);
    v34 = v69;
    v35 = v70;
    v36 = *(v70 + 56);
    v36(v20, 0, 1, v69);
    v31 = v65;
    (*(v35 + 32))(v65, v20, v34);
    v36(v31, 0, 1, v34);
    v37 = v67;
    v38 = (*(v35 + 48))(v31, 1, v34);
  }

  if (v38 == 1)
  {
    (*(v63 + 8))(v31, v64);
    result = sub_1B4D1843C();
    *v60 = result;
  }

  else
  {
    v43 = v54;
    (*(v35 + 32))(v54, v31, v34);
    v45 = v58;
    v44 = v59;
    (*(v59 + 88))(&v72, v58, v59);
    (*(v44 + 96))(v71, v45, v44);
    v46 = sub_1B4D1842C();
    v47 = (*(v44 + 72))(&v72, v71, v43, v46, v45, v44);
    if (v37)
    {
      (*(v35 + 8))(v43, v34);
    }

    else
    {
      v48 = v47;
      (*(v35 + 8))(v43, v34);

      *v60 = v48;
    }
  }

  return result;
}

uint64_t sub_1B4BE0198@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, uint64_t *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1B4D184BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  *a5 = result;
  return result;
}

uint64_t SnapshotProperties.adding(_:filters:groupBy:propertyKinds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC160, &qword_1B4D3AA28);
  sub_1B49B0578(&qword_1EB8AC168, &qword_1EB8AC160, &qword_1B4D3AA28, MEMORY[0x1E69E6328]);
  return sub_1B4D182DC();
}

uint64_t static SnapshotProperties.add(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v34 = a5;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v31 - v11;
  v12 = sub_1B4D1880C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v16 = &v31 - v15;
  v18 = *(v17 + 56);
  v19 = *(*(v12 - 8) + 16);
  v19(&v31 - v15, a1, v12, v14);
  (v19)(&v16[v18], a2, v12);
  v20 = *(v8 + 48);
  LODWORD(v12) = v20(v16, 1, a3);
  v21 = v20(&v16[v18], 1, a3);
  if (v12 == 1)
  {
    if (v21 == 1)
    {
      v22 = 1;
      v23 = v34;
      return (*(v8 + 56))(v23, v22, 1, a3);
    }

    v23 = v34;
    (*(v8 + 32))(v34, &v16[v18], a3);
LABEL_7:
    v22 = 0;
    return (*(v8 + 56))(v23, v22, 1, a3);
  }

  v24 = *(v8 + 32);
  if (v21 == 1)
  {
    v23 = v34;
    v24(v34, v16, a3);
    goto LABEL_7;
  }

  v26 = v31;
  v24(v31, v16, a3);
  v27 = &v16[v18];
  v28 = v32;
  v24(v32, v27, a3);
  v23 = v34;
  v29 = v35;
  static SnapshotProperties.add(_:_:)(v26, v28, a3, v33);
  v30 = *(v8 + 8);
  v30(v28, a3);
  result = (v30)(v26, a3);
  if (!v29)
  {
    v22 = 0;
    return (*(v8 + 56))(v23, v22, 1, a3);
  }

  return result;
}

uint64_t sub_1B4BE0680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1B4D1880C();
  v11 = *(v10 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  v15 = *(a3 - 8);
  (*(v15 + 16))(&v17 - v13, a2, a3, v12);
  (*(v15 + 56))(v14, 0, 1, a3);
  static SnapshotProperties.add(_:_:)(a1, v14, a3, a4, a5);
  return (*(v11 + 8))(v14, v10);
}

double sub_1B4BE0840()
{
  nullsub_1();

  return result;
}

unint64_t sub_1B4BE0890()
{
  result = qword_1EB8AC158;
  if (!qword_1EB8AC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC158);
  }

  return result;
}

uint64_t sub_1B4BE08E4(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v7 = v2[5];
  return (*(v4 + 72))(&v7, &v6, a1, a2, v3);
}

double sub_1B4BE0964@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

unint64_t sub_1B4BE09C4()
{
  result = qword_1EB8AC170;
  if (!qword_1EB8AC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC170);
  }

  return result;
}

uint64_t sub_1B4BE0B58(uint64_t a1, void *a2)
{
  v5 = v2[3];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v10 = v2[4];
  result = (*(v5 + 64))(a1, &v10, v6, v7, v8);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t RingStateFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t RingStateFact.TemplateString.rawValue.getter()
{
  v1 = 0xD00000000000002ALL;
  v2 = 0xD0000000000000C4;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000084;
  }

  if (*v0)
  {
    v1 = 0xD0000000000000A8;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B4BE0CEC()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BE0DA4(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BE0E48(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4BE0F08(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002ALL;
  v3 = "ng";
  v4 = "e> is <ring_percentage>.";
  v5 = 0xD0000000000000C4;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000084;
    v4 = "s <ring_percentage>.";
  }

  if (*v1)
  {
    v2 = 0xD0000000000000A8;
    v3 = "l my activity rings today.";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t RingStateFact.placeholders()()
{
  v1 = type metadata accessor for RingStateFact(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D1CBF0;
  v6 = sub_1B4B0793C(*(v0 + *(v2 + 28)));
  v8 = v7;
  *(v5 + 32) = 0x7079745F676E6972;
  *(v5 + 40) = 0xE900000000000065;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v5 + 48) = sub_1B4993DFC;
  *(v5 + 56) = v9;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  sub_1B4BE35A8(v0, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RingStateFact);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1B4BE2FEC(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v5 + 80) = 0xD000000000000012;
  *(v5 + 88) = 0x80000001B4D62E90;
  *(v5 + 96) = sub_1B4BE3050;
  *(v5 + 104) = v11;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  sub_1B4BE35A8(v0, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RingStateFact);
  v12 = swift_allocObject();
  sub_1B4BE2FEC(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  *(v5 + 128) = 0x6C61765F676E6972;
  *(v5 + 136) = 0xEA00000000006575;
  *(v5 + 144) = sub_1B4BE3068;
  *(v5 + 152) = v12;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  sub_1B4BE35A8(v0, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RingStateFact);
  v13 = swift_allocObject();
  sub_1B4BE2FEC(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v10);
  *(v5 + 176) = 0x6C61765F6C616F67;
  *(v5 + 184) = 0xEA00000000006575;
  *(v5 + 192) = sub_1B4BE3080;
  *(v5 + 200) = v13;
  *(v5 + 208) = 0;
  *(v5 + 216) = 0;
  sub_1B4BE35A8(v0, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RingStateFact);
  v14 = swift_allocObject();
  sub_1B4BE2FEC(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v10);
  *(v5 + 224) = 0x7265705F676E6972;
  *(v5 + 232) = 0xEF656761746E6563;
  *(v5 + 240) = sub_1B4BE351C;
  *(v5 + 248) = v14;
  *(v5 + 256) = 0;
  *(v5 + 264) = 0;
  return v5;
}

uint64_t sub_1B4BE1298(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v39 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4BE35A8(v2, v20, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v38 = *(v22 + 48);
      v23 = v39;
      (*(v39 + 32))(v17, v20 + *(v22 + 64), v13);
      v24 = [objc_opt_self() minutes];
      v25 = v40;
      sub_1B4D1745C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
      sub_1B4D18F8C();
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1B4D1B2D0;
      sub_1B4D18F4C();
      sub_1B4D18F5C();
      sub_1B4D18F6C();
      sub_1B4D18F7C();
      v27 = sub_1B4BCA7BC(v26);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v28 = sub_1B4D15F5C(v25, v27);

      v29 = *(v23 + 8);
      v29(v25, v13);
      v29(v17, v13);
      v29(v20 + v38, v13);
      v29(v20, v13);
    }

    else
    {
      sub_1B4BE3810(v20);
      return 0;
    }
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
    v40 = *(v30 + 48);
    (*(v4 + 32))(v12, v20 + *(v30 + 64), v3);
    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v31);
    v33 = v32;
    sub_1B4D1745C();
    v34 = sub_1B4D12160();
    v28 = sub_1B4D12A28(v6);

    v35 = *(v4 + 8);
    v35(v6, v3);
    v35(v9, v3);
    v35(v12, v3);
    v35((v20 + v40), v3);
    v35(v20, v3);
  }

  return v28;
}

uint64_t sub_1B4BE1818(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v10 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - v15;
  sub_1B4BE35A8(v2, v12, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
      v26 = *(v25 + 48);
      v27 = *(v25 + 64);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v29 = *(*(v28 - 8) + 8);
      v29(&v12[v27], v28);
      v29(&v12[v26], v28);
      v29(v12, v28);
    }

    else
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
      v39 = v38[12];
      v50 = v38[20];
      v51 = v39;
      v49 = v38[24];
      v40 = v38[32];
      v41 = v38[36];
      v42 = v38[44];
      v43 = v38[48];
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v45 = *(*(v44 - 8) + 8);
      v45(&v12[v43], v44);
      v45(&v12[v42], v44);
      v46 = *(v14 + 8);
      v46(&v12[v41], v13);
      v46(&v12[v40], v13);
      sub_1B4975024(&v12[v49], &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(&v12[v50], &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(&v12[v51], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      sub_1B4975024(v12, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    }

    return 0;
  }

  else if ((EnumCaseMultiPayload - 1) >= 2)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
    v50 = *(v30 + 48);
    v31 = *(v30 + 64);
    v32 = v4;
    (*(v4 + 32))(v9, v12, v3);
    FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v33);
    v35 = v34;
    sub_1B4D1745C();
    v36 = sub_1B4D12160();
    v24 = sub_1B4D12A28(v6);

    v37 = *(v32 + 8);
    v37(v6, v3);
    v37(v9, v3);
    v37(&v12[v31], v3);
    v37(&v12[v50], v3);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v19 = *(v18 + 48);
    v20 = *(v18 + 64);
    (*(v14 + 32))(v16, v12, v13);
    v21 = *(v14 + 8);
    v21(&v12[v20], v13);
    v21(&v12[v19], v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v23 = sub_1B4BCA7BC(v22);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v24 = sub_1B4D15F5C(v16, v23);

    v21(v16, v13);
  }

  return v24;
}

uint64_t sub_1B4BE1E5C(uint64_t a1)
{
  v2 = v1;
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - v15;
  sub_1B4BE35A8(v2, v12, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
      v25 = *(v24 + 48);
      v26 = *(v24 + 64);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v28 = *(*(v27 - 8) + 8);
      v28(&v12[v26], v27);
      v28(&v12[v25], v27);
      v28(v12, v27);
    }

    else
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
      v38 = v37[12];
      v49 = v37[20];
      v50 = v38;
      v48 = v37[24];
      v39 = v37[32];
      v40 = v37[36];
      v41 = v37[44];
      v42 = v37[48];
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v44 = *(*(v43 - 8) + 8);
      v44(&v12[v42], v43);
      v44(&v12[v41], v43);
      v45 = *(v14 + 8);
      v45(&v12[v40], v13);
      v45(&v12[v39], v13);
      sub_1B4975024(&v12[v48], &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(&v12[v49], &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(&v12[v50], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      sub_1B4975024(v12, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    }

    return 0;
  }

  else if ((EnumCaseMultiPayload - 1) >= 2)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
    v30 = *(v29 + 64);
    v31 = v4;
    (*(v4 + 32))(v9, &v12[*(v29 + 48)], v3);
    FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v32);
    v34 = v33;
    sub_1B4D1745C();
    v35 = sub_1B4D12160();
    v23 = sub_1B4D12A28(v6);

    v36 = *(v31 + 8);
    v36(v6, v3);
    v36(v9, v3);
    v36(&v12[v30], v3);
    v36(v12, v3);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v19 = *(v18 + 64);
    (*(v14 + 32))(v16, &v12[*(v18 + 48)], v13);
    v20 = *(v14 + 8);
    v20(&v12[v19], v13);
    v20(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v22 = sub_1B4BCA7BC(v21);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v23 = sub_1B4D15F5C(v16, v22);

    v20(v16, v13);
  }

  return v23;
}

uint64_t sub_1B4BE2498()
{
  v1 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4BE35A8(v0, v3, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v11 = v10[12];
      v12 = v10[16];
      v13 = *&v3[v10[20]];
      v14 = &qword_1EB8A6868;
      v15 = &unk_1B4D1AB80;
      goto LABEL_8;
    }

LABEL_7:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v11 = v16[12];
    v12 = v16[16];
    v13 = *&v3[v16[20]];
    v14 = &qword_1EB8A6850;
    v15 = &unk_1B4D1BC10;
LABEL_8:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    v18 = *(*(v17 - 8) + 8);
    v18(&v3[v12], v17);
    v18(&v3[v11], v17);
    v18(v3, v17);
    v19 = sub_1B4D1270C();
    v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v21 = [v19 stringFromNumber_];

    if (!v21)
    {
      return 0;
    }

    v22 = sub_1B4D1818C();

    return v22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
    v6 = *(v5 + 48);
    v7 = *(v5 + 64);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v9 = *(*(v8 - 8) + 8);
    v9(&v3[v7], v8);
    v9(&v3[v6], v8);
    v9(v3, v8);
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
    v36 = v24[12];
    v25 = v24[20];
    v26 = v24[24];
    v27 = v24[32];
    v28 = v24[36];
    v29 = v24[44];
    v30 = v24[48];
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v32 = *(*(v31 - 8) + 8);
    v32(&v3[v30], v31);
    v32(&v3[v29], v31);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v34 = *(*(v33 - 8) + 8);
    v34(&v3[v28], v33);
    v34(&v3[v27], v33);
    sub_1B4975024(&v3[v26], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v3[v25], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v3[v36], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v3, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  }

  return 0;
}

uint64_t RingStateFact.selectTemplate(formatter:)@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4BE35A8(v1, v5, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
        v8 = *(v7 + 48);
        v9 = *(v7 + 64);
        *a1 = 4;
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
        v11 = *(*(v10 - 8) + 8);
        v11(&v5[v9], v10);
        v11(&v5[v8], v10);
        return (v11)(v5, v10);
      }

      else
      {
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
        v34 = v22[12];
        v23 = v22[20];
        v32 = v22[24];
        v33 = v23;
        v24 = v22[32];
        v25 = v22[36];
        v26 = v22[44];
        v27 = v22[48];
        *a1 = 0;
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
        v29 = *(*(v28 - 8) + 8);
        v29(&v5[v27], v28);
        v29(&v5[v26], v28);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        v31 = *(*(v30 - 8) + 8);
        v31(&v5[v25], v30);
        v31(&v5[v24], v30);
        sub_1B4975024(&v5[v32], &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(&v5[v33], &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(&v5[v34], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        return sub_1B4975024(v5, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      }
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload)
  {
LABEL_7:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v14 = *(v18 + 48);
    v15 = *(v18 + 64);
    v16 = &qword_1EB8A6850;
    v17 = &unk_1B4D1BC10;
    goto LABEL_8;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
  v14 = *(v13 + 48);
  v15 = *(v13 + 64);
  v16 = &qword_1EB8A6868;
  v17 = &unk_1B4D1AB80;
LABEL_8:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  v20 = *(*(v19 - 8) + 8);
  v20(&v5[v15], v19);
  v20(&v5[v14], v19);
  v20(v5, v19);
  result = sub_1B4BE2C88();
  if (result)
  {
    v21 = 1;
  }

  else
  {
    result = type metadata accessor for RingStateFact(0);
    if (*(v1 + *(result + 24)) == 1)
    {
      v21 = 2;
    }

    else
    {
      v21 = 3;
    }
  }

  *a1 = v21;
  return result;
}

BOOL sub_1B4BE2C88()
{
  v1 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4BE35A8(v0, v3, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v6 = v11[12];
      v7 = v11[16];
      v8 = *&v3[v11[20]];
      v9 = &qword_1EB8A6868;
      v10 = &unk_1B4D1AB80;
      goto LABEL_8;
    }

LABEL_7:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v6 = v12[12];
    v7 = v12[16];
    v8 = *&v3[v12[20]];
    v9 = &qword_1EB8A6850;
    v10 = &unk_1B4D1BC10;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
    v6 = v5[12];
    v7 = v5[16];
    v8 = *&v3[v5[20]];
    v9 = &qword_1EB8A6870;
    v10 = &unk_1B4D1C2C0;
LABEL_8:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    v14 = *(*(v13 - 8) + 8);
    v14(&v3[v7], v13);
    v14(&v3[v6], v13);
    v14(v3, v13);
    return v8 >= 1.0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
  v28 = v16[12];
  v17 = v16[20];
  v18 = v16[24];
  v19 = v16[32];
  v20 = v16[36];
  v21 = v16[44];
  v22 = v16[48];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v24 = *(*(v23 - 8) + 8);
  v24(&v3[v22], v23);
  v24(&v3[v21], v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v26 = *(*(v25 - 8) + 8);
  v26(&v3[v20], v25);
  v26(&v3[v19], v25);
  sub_1B4975024(&v3[v18], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(&v3[v17], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(&v3[v28], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4975024(v3, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  return 1;
}

uint64_t sub_1B4BE2FEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RingStateFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm_1()
{
  v1 = *(type metadata accessor for RingStateFact(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  type metadata accessor for RingProgressType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
      v23 = *(*(v22 - 8) + 8);
      v23(v0 + v3, v22);
      v24 = &qword_1EB8AA3F0;
      v25 = &qword_1B4D2E810;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
LABEL_16:
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      v23 = *(*(v22 - 8) + 8);
      v23(v0 + v3, v22);
      v24 = &qword_1EB8AA3D8;
      v25 = &qword_1B4D2E808;
LABEL_19:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      v23(v5 + *(v26 + 48), v22);
      v23(v5 + *(v26 + 64), v22);
      break;
    case 3:
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v23 = *(*(v22 - 8) + 8);
      v23(v0 + v3, v22);
      v24 = &qword_1EB8AA3C8;
      v25 = &qword_1B4D2E800;
      goto LABEL_19;
    case 4:
      v28 = v4;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
      v8 = *(v7 - 8);
      v9 = *(v8 + 48);
      if (!v9(v0 + v3, 1, v7))
      {
        (*(v8 + 8))(v0 + v3, v7);
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
      v11 = v10[12];
      if (!v9(v5 + v11, 1, v7))
      {
        (*(v8 + 8))(v5 + v11, v7);
      }

      v12 = v10[20];
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      v14 = *(v13 - 8);
      v15 = *(v14 + 48);
      if (!v15(v5 + v12, 1, v13))
      {
        (*(v14 + 8))(v5 + v12, v13);
      }

      v16 = v10[24];
      v17 = v15(v5 + v16, 1, v13);
      v18 = *(v14 + 8);
      if (!v17)
      {
        v18(v5 + v16, v13);
      }

      v18(v5 + v10[32], v13);
      v18(v5 + v10[36], v13);
      v19 = v10[44];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v21 = *(*(v20 - 8) + 8);
      v21(v5 + v19, v20);
      v21(v5 + v10[48], v20);
      v4 = v28;
      break;
  }

LABEL_20:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4BE35A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4BE3614()
{
  result = qword_1EB8AC188;
  if (!qword_1EB8AC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC188);
  }

  return result;
}

unint64_t sub_1B4BE366C()
{
  result = qword_1EB8AC190;
  if (!qword_1EB8AC190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC198, &qword_1B4D3AD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC190);
  }

  return result;
}

unint64_t sub_1B4BE36D4()
{
  result = qword_1EB8AC1A0;
  if (!qword_1EB8AC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1A0);
  }

  return result;
}

unint64_t sub_1B4BE372C()
{
  result = qword_1EB8AC1A8;
  if (!qword_1EB8AC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1A8);
  }

  return result;
}

unint64_t sub_1B4BE3780(uint64_t a1)
{
  result = sub_1B4BE37A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BE37A8()
{
  result = qword_1EB8AC1B0;
  if (!qword_1EB8AC1B0)
  {
    type metadata accessor for RingStateFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1B0);
  }

  return result;
}

uint64_t sub_1B4BE3810(uint64_t a1)
{
  v2 = type metadata accessor for RingProgressType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StreamingAudioChunk.streamIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StreamingAudioChunk.rawAudioData.getter()
{
  v1 = *(v0 + 24);
  sub_1B498FC0C(v1, *(v0 + 32));
  return v1;
}

uint64_t StreamingAudioChunk.packetDescriptions.getter()
{
  v1 = *(v0 + 48);
  sub_1B498FC0C(v1, *(v0 + 56));
  return v1;
}

void StreamingAudioChunk.init(streamIdentifier:chunkIndex:audioData:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = sub_1B4D17A3C();
  *(a5 + 32) = v7;
  *(a5 + 40) = sub_1B4D17A5C();
  v8 = sub_1B4D17A7C();
  v10 = v9;

  *(a5 + 48) = v8;
  *(a5 + 56) = v10;
}

uint64_t StreamingAudioChunk.init(streamIdentifier:chunkIndex:rawAudioData:packetCount:packetDescriptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

id StreamingAudioChunk.toAudioData(streamDescription:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v6 = objc_allocWithZone(sub_1B4D17AAC());
  sub_1B498FC0C(v2, v3);
  sub_1B498FC0C(v4, v5);
  v7 = [v6 init];
  sub_1B4D17A9C();
  sub_1B4D17A4C();
  sub_1B4D17A6C();
  sub_1B4D17A8C();
  return v7;
}

uint64_t sub_1B4BE3A44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B4BE3A8C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t InferenceAvailability.protobuf()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
  sub_1B4BE3F84(qword_1EDC3BD10, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceAvailability);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BE3BA8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *result = 1;
    *(result + 8) = 1;
    v5 = (result + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0) + 24));

    *v5 = a2;
    v5[1] = a3;
  }

  else
  {
    *result = 0;
    *(result + 8) = 1;
  }

  return result;
}

uint64_t sub_1B4BE3C2C(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v7 = sub_1B4BE3FC8();
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4BE3F84(qword_1EDC3BD10, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceAvailability);
    v4 = sub_1B4D17D6C();
    sub_1B4BE401C(v6);
  }

  return v4;
}

char *sub_1B4BE3D4C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  result = sub_1B4B29B0C(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1B4BE3D78()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
  sub_1B4BE3F84(qword_1EDC3BD10, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceAvailability);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BE3E14@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1B4BE3E40(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1B4BE3E40(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    if (*a1)
    {
      v2 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0) + 24));
      v4 = *v2;
      v3 = v2[1];

      sub_1B4BE401C(a1);
      if (v3)
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B4BE401C(a1);
      return 0;
    }
  }

  else
  {
    sub_1B4B29E0C();
    swift_allocError();
    swift_willThrow();
    return sub_1B4BE401C(a1);
  }
}

uint64_t sub_1B4BE3F84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4BE3FC8()
{
  result = qword_1EDC394B0[0];
  if (!qword_1EDC394B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC394B0);
  }

  return result;
}

uint64_t sub_1B4BE401C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4BE408C()
{
  result = qword_1EB8AC1B8;
  if (!qword_1EB8AC1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1B8);
  }

  return result;
}

uint64_t AudioSynthesisIntensity.init(_:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[8] == 1)
  {
    v7 = *a1;
    result = sub_1B4BE4400(a1);
  }

  else
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B4D17F6C();
    __swift_project_value_buffer(v9, qword_1EDC3CED0);
    sub_1B4BE439C(a1, v6);
    v10 = sub_1B4D17F5C();
    v11 = sub_1B4D1871C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      v14 = v6[8];
      v20[1] = *v6;
      v21 = v14;
      v15 = sub_1B4D181AC();
      v17 = v16;
      sub_1B4BE4400(v6);
      v18 = sub_1B49558AC(v15, v17, &v22);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_1B4953000, v10, v11, "Unrecognized intensity: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1B8C7DDA0](v13, -1, -1);
      MEMORY[0x1B8C7DDA0](v12, -1, -1);

      v19 = a1;
    }

    else
    {

      sub_1B4BE4400(a1);
      v19 = v6;
    }

    result = sub_1B4BE4400(v19);
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t AudioSynthesisIntensity.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  sub_1B4BE46F8(&qword_1EB8A76F0, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BE439C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BE4400(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4BE445C(uint64_t result, unsigned __int8 a2)
{
  *result = a2;
  *(result + 8) = 1;
  return result;
}

uint64_t sub_1B4BE4470(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v7 = sub_1B4BE473C();
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4BE46F8(&qword_1EB8A76F0, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
    v4 = sub_1B4D17D6C();
    sub_1B4BE4400(v6);
  }

  return v4;
}

uint64_t sub_1B4BE458C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B25D70(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4BE45C0()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  sub_1B4BE46F8(&qword_1EB8A76F0, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BE467C(uint64_t result)
{
  *result = *(v1 + 16);
  *(result + 8) = 1;
  return result;
}

uint64_t sub_1B4BE46F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4BE473C()
{
  result = qword_1EB8AC1C0;
  if (!qword_1EB8AC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1C0);
  }

  return result;
}

unint64_t sub_1B4BE47A8(void *a1)
{
  a1[1] = sub_1B4BE47E0();
  a1[2] = sub_1B49E05D4();
  result = sub_1B49E02B0();
  a1[3] = result;
  return result;
}

unint64_t sub_1B4BE47E0()
{
  result = qword_1EB8AC1C8;
  if (!qword_1EB8AC1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1C8);
  }

  return result;
}

uint64_t sub_1B4BE48E4(uint64_t a1)
{
  sub_1B4D173DC();
  swift_allocObject();
  sub_1B4D173CC();
  sub_1B49E02B0();
  v1 = sub_1B4D173BC();

  return v1;
}

uint64_t sub_1B4BE4964(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B4D173AC();
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B49E05D4();
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);
}

unint64_t sub_1B4BE4A00()
{
  result = qword_1EB8AC1D0;
  if (!qword_1EB8AC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1D0);
  }

  return result;
}

uint64_t FitnessPlusCatalogWorkout.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  FitnessPlusModalityKind.init(rawValue:)(v6);
  if (v11 == 15)
  {
    sub_1B49916EC();
    swift_allocError();
    swift_willThrow();
    return sub_1B4BE4BB4(a1);
  }

  else
  {
    v9 = *a1;
    v8 = a1[1];
    v10 = a1[2];

    result = sub_1B4BE4BB4(a1);
    *a2 = v9;
    *(a2 + 8) = v8;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
  }

  return result;
}

uint64_t FitnessPlusCatalogWorkout.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  sub_1B4BE4E10();
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BE4BB4(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4BE4C10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  *a1 = a2;
  a1[1] = a3;

  a1[2] = a4;
  v10 = 0xE800000000000000;
  v11 = 0x6E776F646C6F6F63;
  switch(a5)
  {
    case 1:
      v10 = 0xE400000000000000;
      v11 = 1701998435;
      break;
    case 2:
      v10 = 0xE700000000000000;
      v11 = 0x676E696C637963;
      break;
    case 3:
      v10 = 0xE500000000000000;
      v11 = 0x65636E6164;
      break;
    case 4:
      v10 = 0xE90000000000006ELL;
      v11 = 0x7552646564697567;
      break;
    case 5:
      v10 = 0xEA00000000006B6CLL;
      v11 = 0x6157646564697567;
      break;
    case 6:
      v10 = 0xE400000000000000;
      v11 = 1953065320;
      break;
    case 7:
      v11 = 0x69786F626B63696BLL;
      v10 = 0xEA0000000000676ELL;
      break;
    case 8:
      v10 = 0xEA00000000006E6FLL;
      v11 = 0x697461746964656DLL;
      break;
    case 9:
      v10 = 0xE700000000000000;
      v11 = 0x736574616C6970;
      break;
    case 10:
      v10 = 0xE600000000000000;
      v11 = 0x676E69776F72;
      break;
    case 11:
      v11 = 0x6874676E65727473;
      break;
    case 12:
      v11 = 0x6C696D6461657274;
      v10 = 0xE90000000000006CLL;
      break;
    case 13:
      v10 = 0xE400000000000000;
      v11 = 1634168697;
      break;
    case 14:
      v10 = 0xE500000000000000;
      v11 = 0x726568746FLL;
      break;
    default:
      break;
  }

  a1[3] = v11;
  a1[4] = v10;
  return result;
}

unint64_t sub_1B4BE4E10()
{
  result = qword_1EB8A6A80;
  if (!qword_1EB8A6A80)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A80);
  }

  return result;
}

unint64_t sub_1B4BE4E7C()
{
  result = qword_1EB8AC1D8;
  if (!qword_1EB8AC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1D8);
  }

  return result;
}

uint64_t sub_1B4BE4ED0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[13] = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4BE4F00, 0, 0);
}

uint64_t sub_1B4BE4F00()
{
  v15 = v0;
  v1 = v0[13];
  v11 = v0[11];
  v13 = &type metadata for FitnessContext;
  v14 = &protocol witness table for FitnessContext;
  *&v12 = v1;
  v0[14] = swift_getAssociatedTypeWitness();
  v0[15] = swift_getAssociatedConformanceWitness();
  FactContext.init(context:)(&v12, (v0 + 2));
  v2 = *(v11 + 48);

  v10 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1B4BE50B0;
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];

  return (v10)(v0 + 2, v7, v8, v5, v6, v4);
}

uint64_t sub_1B4BE50B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_1B4BE5274;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_1B4BE51D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4BE51D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FactContext(0, v4[14], v4[15], a4);
  (*(*(v5 - 8) + 8))(v4 + 2, v5);
  v6 = v4[1];
  v7 = v4[18];

  return v6(v7);
}

uint64_t sub_1B4BE5274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FactContext(0, v4[14], v4[15], a4);
  (*(*(v5 - 8) + 8))(v4 + 2, v5);
  v6 = v4[1];

  return v6();
}

uint64_t SnapshotContainers.ringsContainer.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1B4BE5358(v8, &v7);
}

uint64_t SnapshotContainers.workoutContainer.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v9 = v1[7];
  v10 = v2;
  v11 = v1[9];
  v3 = v11;
  v4 = v1[6];
  v8[0] = v1[5];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1B4BE5400(v8, &v7);
}

uint64_t SnapshotContainers.fitnessPlusContainer.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[13];
  v9 = v1[12];
  v10 = v2;
  v11 = v1[14];
  v3 = v11;
  v4 = v1[11];
  v8[0] = v1[10];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1B4BE54A8(v8, &v7);
}

__n128 SnapshotContainers.init(ringsContainer:workoutContainer:fitnessPlusContainer:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = a1[3];
  a4[2] = a1[2];
  a4[3] = v4;
  v5 = a1[1];
  *a4 = *a1;
  a4[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = *a2;
  a4[6] = a2[1];
  a4[7] = v6;
  v9 = a2[4];
  a4[8] = v7;
  a4[9] = v9;
  a4[4] = a1[4];
  a4[5] = v8;
  v10 = *(a3 + 64);
  a4[13] = *(a3 + 48);
  a4[14] = v10;
  v11 = *(a3 + 32);
  a4[11] = *(a3 + 16);
  a4[12] = v11;
  result = *a3;
  a4[10] = *a3;
  return result;
}

uint64_t SnapshotContainers.cacheIndex.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[10];
  v5 = v1[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7110, &qword_1B4D1D080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1BE00;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  if (v4 >= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v5 >= v7)
  {
    v5 = v7;
  }

  result = swift_setDeallocating();
  *a1 = v5;
  return result;
}

uint64_t *static SnapshotContainers.empty(cacheIndex:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  a2[1] = v2;
  v3 = MEMORY[0x1E69E7CC0];
  a2[2] = v2;
  a2[3] = v3;
  a2[4] = v2;
  a2[5] = v2;
  a2[6] = v3;
  a2[7] = v2;
  a2[8] = v2;
  a2[9] = v3;
  a2[10] = v2;
  a2[11] = v2;
  a2[12] = v2;
  a2[13] = v3;
  a2[14] = v2;
  a2[15] = v2;
  a2[16] = v3;
  a2[17] = v2;
  a2[18] = v2;
  a2[19] = v3;
  a2[20] = v2;
  a2[21] = v2;
  a2[22] = v2;
  a2[23] = v3;
  a2[24] = v2;
  a2[25] = v2;
  a2[26] = v3;
  a2[27] = v2;
  a2[28] = v2;
  a2[29] = v3;
  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1B4BE5660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4BE56A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B4BE5734(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v29 = v1;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF4FC(0, v5, 0);
    v27 = a1 + 64;
    v28 = v34;
    result = sub_1B4D188DC();
    v7 = result;
    v8 = 0;
    v31 = *(a1 + 36);
    v24 = a1 + 72;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v27 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      if (v31 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v11 = *(*(a1 + 56) + 8 * v7);
      v33 = *(*(a1 + 48) + v7);
      v32 = v11;
      MEMORY[0x1EEE9AC00](result);
      *(&v24 - 2) = &v33;
      *(&v24 - 1) = &v32;
      sub_1B4BF5CF8(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);

      v12 = v29;
      sub_1B4D17DAC();
      if (v12)
      {
      }

      v29 = 0;

      v13 = v28;
      v34 = v28;
      v15 = *(v28 + 16);
      v14 = *(v28 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B4BCF4FC((v14 > 1), v15 + 1, 1);
        v13 = v34;
      }

      *(v13 + 16) = v15 + 1;
      v16 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v28 = v13;
      result = sub_1B4BF5D94(v30, v13 + v16 + *(v25 + 72) * v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_27;
      }

      v17 = *(v27 + 8 * v10);
      if ((v17 & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      if (v31 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v18 = v17 & (-2 << (v7 & 0x3F));
      if (v18)
      {
        v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (v24 + 8 * v10);
        while (v20 < (v9 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1B497CD6C(v7, v31, 0);
            v9 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_1B497CD6C(v7, v31, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v5)
      {
        return v28;
      }
    }

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
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4BE5AF8(uint64_t a1)
{
  v2 = v1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D8, &unk_1B4D3B2B0);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v39 - v6;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v55 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF4FC(0, v9, 0);
  v10 = v55;
  v11 = a1 + 64;
  result = sub_1B4D188DC();
  v13 = result;
  v14 = 0;
  v53 = *(a1 + 36);
  v39 = a1 + 72;
  v40 = v9;
  v41 = a1 + 64;
  v42 = a1;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_24;
    }

    if (v53 != *(a1 + 36))
    {
      goto LABEL_25;
    }

    v49 = 1 << v13;
    v50 = v13 >> 6;
    v48 = v14;
    v17 = v10;
    v18 = v47;
    v19 = *(v47 + 48);
    v20 = *(a1 + 48);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    v22 = *(v21 - 8);
    v10 = *(v22 + 16);
    v51 = v2;
    v23 = v20 + *(v22 + 72) * v13;
    v24 = v45;
    (v10)(v45, v23, v21);
    *(v24 + v19) = *(*(a1 + 56) + 8 * v13);
    v25 = v46;
    (v10)(v46, v24, v21);
    v26 = *(v18 + 48);
    v27 = *(v24 + v19);
    v28 = sub_1B4975024(v24, &qword_1EB8A81D8, &unk_1B4D3B2B0);
    *(v25 + v26) = v27;
    v54 = v27;
    MEMORY[0x1EEE9AC00](v28);
    *(&v39 - 2) = v25;
    *(&v39 - 1) = &v54;
    sub_1B4BF5CF8(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    v29 = v51;
    sub_1B4D17DAC();
    v2 = v29;
    if (v29)
    {
      sub_1B4975024(v25, &qword_1EB8A81D8, &unk_1B4D3B2B0);

      return v10;
    }

    sub_1B4975024(v25, &qword_1EB8A81D8, &unk_1B4D3B2B0);
    v10 = v17;
    v55 = v17;
    v31 = *(v17 + 16);
    v30 = *(v17 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1B4BCF4FC((v30 > 1), v31 + 1, 1);
      v10 = v55;
    }

    *(v10 + 16) = v31 + 1;
    result = sub_1B4BF5D94(v52, v10 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v31, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    a1 = v42;
    v15 = 1 << *(v42 + 32);
    if (v13 >= v15)
    {
      goto LABEL_26;
    }

    v11 = v41;
    v32 = *(v41 + 8 * v50);
    if ((v32 & v49) == 0)
    {
      goto LABEL_27;
    }

    if (v53 != *(v42 + 36))
    {
      goto LABEL_28;
    }

    v33 = v32 & (-2 << (v13 & 0x3F));
    if (v33)
    {
      v15 = __clz(__rbit64(v33)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v16 = v40;
    }

    else
    {
      v34 = v50 << 6;
      v35 = v50 + 1;
      v16 = v40;
      v36 = (v39 + 8 * v50);
      while (v35 < (v15 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_1B497CD6C(v13, v53, 0);
          v15 = __clz(__rbit64(v37)) + v34;
          goto LABEL_4;
        }
      }

      result = sub_1B497CD6C(v13, v53, 0);
    }

LABEL_4:
    v14 = v48 + 1;
    v13 = v15;
    if (v48 + 1 == v16)
    {
      return v10;
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
  return result;
}

uint64_t sub_1B4BE5FE8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF4FC(0, v6, 0);
    v28 = a1 + 64;
    v29 = v34;
    result = sub_1B4D188DC();
    v8 = result;
    v9 = 0;
    v31 = *(a1 + 36);
    v24 = a1 + 72;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v28 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      if (v31 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v12 = *(*(a1 + 48) + 8 * v8);
      v32 = *(*(a1 + 56) + 8 * v8);
      v33 = v12;
      MEMORY[0x1EEE9AC00](result);
      *(&v24 - 2) = &v33;
      *(&v24 - 1) = &v32;
      sub_1B4BF5CF8(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      sub_1B4D17DAC();
      if (v2)
      {
      }

      v27 = 0;
      v13 = v29;
      v34 = v29;
      v15 = *(v29 + 16);
      v14 = *(v29 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B4BCF4FC((v14 > 1), v15 + 1, 1);
        v13 = v34;
      }

      *(v13 + 16) = v15 + 1;
      v16 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v29 = v13;
      result = sub_1B4BF5D94(v30, v13 + v16 + *(v25 + 72) * v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_27;
      }

      v17 = *(v28 + 8 * v11);
      if ((v17 & (1 << v8)) == 0)
      {
        goto LABEL_28;
      }

      if (v31 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v18 = v17 & (-2 << (v8 & 0x3F));
      if (v18)
      {
        v10 = __clz(__rbit64(v18)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v11 << 6;
        v20 = v11 + 1;
        v21 = (v24 + 8 * v11);
        while (v20 < (v10 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1B497CD6C(v8, v31, 0);
            v10 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_1B497CD6C(v8, v31, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      v2 = v27;
      if (v9 == v6)
      {
        return v29;
      }
    }

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
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4BE6388(uint64_t a1)
{
  v2 = v1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
  MEMORY[0x1EEE9AC00](v52);
  v51 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v42 - v6;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v58 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF53C(0, v10, 0);
    v57 = v58;
    v12 = a1 + 64;
    result = sub_1B4D188DC();
    v13 = result;
    v14 = 0;
    v15 = *(a1 + 36);
    v43 = a1 + 72;
    v44 = v10;
    v45 = v15;
    v46 = a1 + 64;
    v47 = a1;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_23;
      }

      if (v15 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v54 = 1 << v13;
      v55 = v13 >> 6;
      v53 = v14;
      v17 = v9;
      v18 = v52;
      v19 = *(v52 + 48);
      v20 = *(a1 + 56);
      v21 = v50;
      *v50 = *(*(a1 + 48) + 8 * v13);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v23 = *(v22 - 8);
      v56 = v2;
      v24 = v23;
      (*(v23 + 16))(&v21[v19], v20 + *(v23 + 72) * v13, v22);
      v25 = v51;
      *v51 = *v21;
      v26 = *(v18 + 48);
      v9 = v17;
      v27 = v25 + v26;
      v28 = (*(v24 + 32))(v25 + v26, &v21[v19], v22);
      MEMORY[0x1EEE9AC00](v28);
      *(&v42 - 2) = v29;
      *(&v42 - 1) = v27;
      sub_1B4BF5CF8(qword_1EDC3ACD8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      v30 = v56;
      sub_1B4D17DAC();
      v2 = v30;
      sub_1B4975024(v25, &qword_1EB8A81C8, &unk_1B4D20E30);
      v31 = v57;
      v58 = v57;
      v33 = *(v57 + 16);
      v32 = *(v57 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B4BCF53C((v32 > 1), v33 + 1, 1);
        v31 = v58;
      }

      *(v31 + 16) = v33 + 1;
      v34 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v57 = v31;
      result = sub_1B4BF5D94(v17, v31 + v34 + *(v48 + 72) * v33, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      a1 = v47;
      v16 = 1 << *(v47 + 32);
      if (v13 >= v16)
      {
        goto LABEL_25;
      }

      v12 = v46;
      v35 = *(v46 + 8 * v55);
      if ((v35 & v54) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v15) = v45;
      if (v45 != *(v47 + 36))
      {
        goto LABEL_27;
      }

      v36 = v35 & (-2 << (v13 & 0x3F));
      if (v36)
      {
        v16 = __clz(__rbit64(v36)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v37 = v55 << 6;
        v38 = v55 + 1;
        v39 = (v43 + 8 * v55);
        while (v38 < (v16 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            result = sub_1B497CD6C(v13, v45, 0);
            v16 = __clz(__rbit64(v40)) + v37;
            goto LABEL_4;
          }
        }

        result = sub_1B497CD6C(v13, v45, 0);
      }

LABEL_4:
      v14 = v53 + 1;
      v13 = v16;
      if (v53 + 1 == v44)
      {
        return v57;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4BE6870@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = &v52 - v12;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC200, &unk_1B4D3B300);
  v17 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v19 = (&v52 - v18);
  v20 = a1[1];
  v60 = *a1;
  v62 = a1;
  v21 = *(v20 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v53 = v6;
    v54 = a2;
    v67 = MEMORY[0x1E69E7CC0];
    sub_1B4BCEEFC(0, v21, 0);
    v65 = type metadata accessor for UnitCount();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = v67;
    v24 = v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v63 = *(v14 + 72);
    v64 = ObjCClassFromMetadata;
    do
    {
      sub_1B4BF5DFC(v24, v16, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      *v19 = *v16;
      v25 = [v64 baseUnit];
      sub_1B4D1741C();
      sub_1B4BF5E64(v16, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      v67 = v22;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1B4BCEEFC((v26 > 1), v27 + 1, 1);
        v22 = v67;
      }

      *(v22 + 16) = v27 + 1;
      sub_1B498B270(v19, v22 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v27, &qword_1EB8AC200, &unk_1B4D3B300);
      v24 += v63;
      --v21;
    }

    while (v21);
    v6 = v53;
    a2 = v54;
  }

  v28 = v62;
  v29 = v58;
  if (*(v22 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6918, &qword_1B4D1AC30);
    v30 = sub_1B4D18AEC();
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC8];
  }

  v31 = v59;
  v67 = v30;

  v33 = v56;
  sub_1B4BF4528(v32, 1, &v67);
  if (v33)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    v66 = v67;
    v34 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
    v35 = v57;
    sub_1B4974FBC(v28 + v34, v57, &qword_1EB8A69A0, &qword_1B4D27A90);
    v36 = *(v29 + 48);
    if (v36(v35, 1, v31) == 1)
    {
      sub_1B4BF5E64(v28, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
      sub_1B4975024(v35, &qword_1EB8A69A0, &qword_1B4D27A90);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
      v38 = v61;
      (*(*(v37 - 8) + 56))(v61, 1, 1, v37);
    }

    else
    {
      v65 = 0;
      sub_1B4975024(v35, &qword_1EB8A69A0, &qword_1B4D27A90);
      v39 = v28 + v34;
      v40 = v55;
      sub_1B4974FBC(v39, v55, &qword_1EB8A69A0, &qword_1B4D27A90);
      if (v36(v40, 1, v31) == 1)
      {
        *(v6 + 1) = 0u;
        *(v6 + 2) = 0u;
        *v6 = 0u;
        sub_1B4D17BBC();
        if (v36(v40, 1, v31) != 1)
        {
          sub_1B4975024(v40, &qword_1EB8A69A0, &qword_1B4D27A90);
        }
      }

      else
      {
        sub_1B4BF5D94(v40, v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      }

      v64 = *(v6 + 1);
      type metadata accessor for UnitCount();
      v41 = swift_getObjCClassFromMetadata();
      v42 = [v41 baseUnit];
      v43 = v6;
      v38 = v61;
      sub_1B4D1741C();
      v44 = [v41 baseUnit];
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
      sub_1B4D1741C();
      v46 = [v41 baseUnit];
      sub_1B4D1741C();
      v47 = [v41 baseUnit];
      sub_1B4D1741C();
      v48 = [v41 baseUnit];
      sub_1B4D1741C();
      sub_1B4BF5E64(v43, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4BF5E64(v28, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
      *(v38 + *(v45 + 28)) = v64;
      (*(*(v45 - 8) + 56))(v38, 0, 1, v45);
    }

    v49 = v66;
    *a2 = v60;
    a2[1] = v49;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
    return sub_1B498B270(v38, a2 + *(v50 + 32), &qword_1EB8A8370, &unk_1B4D21F00);
  }

  return result;
}

uint64_t sub_1B4BE7074(char *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = a2[1];
  *a1 = *a2;
  v14 = sub_1B4BE6388(v13);

  *(a1 + 1) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  sub_1B4974FBC(a2 + *(v15 + 32), v8, &qword_1EB8A8370, &unk_1B4D21F00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A8370, &unk_1B4D21F00);
  }

  v17 = sub_1B498B270(v8, v12, &qword_1EB8A6928, &qword_1B4D20480);
  MEMORY[0x1EEE9AC00](v17);
  *(&v20 - 2) = v12;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v18 = v21;
  sub_1B4D17DAC();
  sub_1B4975024(v12, &qword_1EB8A6928, &qword_1B4D20480);
  v19 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
  sub_1B4975024(&a1[v19], &qword_1EB8A69A0, &qword_1B4D27A90);
  sub_1B4BF5D94(v18, &a1[v19], type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return (*(v22 + 56))(&a1[v19], 0, 1, v4);
}

uint64_t sub_1B4BE73D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v87 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v102 = v85 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v108 = v85 - v7;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v91 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for LocalizedDate(0);
  MEMORY[0x1EEE9AC00](v101);
  v12 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v100 = v85 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v85 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93B8, &unk_1B4D3B2E0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v107 = v85 - v19;
  v90 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v106 = v85 - v22;
  v105 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v95 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v24 = v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v88 = v85 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v112 = v85 - v28;
  v29 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80);
  v98 = *(v33 - 8);
  v99 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v111 = v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v97 = v85 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v96 = v85 - v38;
  v39 = *a1;
  v40 = *(*a1 + 16);
  if (!v40)
  {
    result = sub_1B4BF5E64(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    *v87 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v109 = v8;
  v110 = v24;
  v85[1] = v2;
  v86 = a1;
  v116 = MEMORY[0x1E69E7CC0];
  v103 = v40;
  v104 = v39;
  result = sub_1B4BCEF7C(0, v40, 0);
  v42 = 0;
  v43 = v104;
  v94 = v104 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v113 = v116;
  v95 += 7;
  v91 += 6;
  v93 = v17;
  v92 = v30;
  while (v42 < *(v43 + 16))
  {
    sub_1B4BF5DFC(v94 + *(v30 + 72) * v42, v32, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    v44 = v106;
    sub_1B4974FBC(v32, v106, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    v45 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {
      v114 = 0u;
      v115 = 0u;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v46 = v88;
        sub_1B4BF5D94(v44, v88, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        v47 = v105;
        *(&v115 + 1) = v105;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
        sub_1B4BF5D94(v46, boxed_opaque_existential_1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        goto LABEL_10;
      }

      v49 = v44;
      v50 = v89;
      sub_1B4BF5D94(v49, v89, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      *(&v115 + 1) = v90;
      v51 = __swift_allocate_boxed_opaque_existential_1(&v114);
      sub_1B4BF5D94(v50, v51, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    }

    v47 = v105;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
    v52 = v107;
    v53 = swift_dynamicCast();
    v54 = *v95;
    if (!v53)
    {
      v54(v52, 1, 1, v47);
      sub_1B4975024(v52, &qword_1EB8A93B8, &unk_1B4D3B2E0);
      sub_1B4A089F0();
      swift_allocError();
      *v84 = 1;
      swift_willThrow();
      sub_1B4BF5E64(v32, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
      sub_1B4BF5E64(v86, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    v55 = v42;
    v56 = v10;
    v57 = v32;
    v58 = v12;
    v54(v52, 0, 1, v47);
    v59 = v112;
    sub_1B4BF5D94(v52, v112, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v60 = v110;
    sub_1B4BF5DFC(v59, v110, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4D1778C();
    v61 = sub_1B4D177CC();
    v62 = v47;
    v63 = *(v61 - 8);
    result = (*(v63 + 48))(v17, 1, v61);
    if (result == 1)
    {
      goto LABEL_26;
    }

    (*(v63 + 32))(v111, v17, v61);
    v64 = v108;
    sub_1B4974FBC(v60 + *(v62 + 28), v108, &qword_1EB8A7158, &unk_1B4D20310);
    v65 = *v91;
    v66 = v109;
    if ((*v91)(v64, 1, v109) == 1)
    {
      v10 = v56;
      *v56 = 0;
      *(v56 + 8) = 0;
      *(v56 + 16) = 0;
      sub_1B4D17BBC();
      v67 = (v56 + *(v66 + 40));
      *v67 = 0;
      v67[1] = 0;
      v68 = v65(v64, 1, v66);
      v69 = v102;
      v12 = v58;
      if (v68 != 1)
      {
        sub_1B4975024(v108, &qword_1EB8A7158, &unk_1B4D20310);
      }
    }

    else
    {
      v10 = v56;
      sub_1B4BF5D94(v64, v56, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v69 = v102;
      v12 = v58;
    }

    v70 = *(v10 + 1);
    *&v71 = *v10;
    *(&v71 + 1) = HIDWORD(*v10);
    v72 = v71;
    *&v71 = v70;
    *(&v71 + 1) = SHIDWORD(v70);
    *v12 = v72;
    *(v12 + 1) = v71;
    *(v12 + 4) = *(v10 + 4);
    v32 = v57;
    if (*&v10[*(v109 + 40) + 8])
    {

      sub_1B4D1797C();

      sub_1B4BF5E64(v10, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    }

    else
    {
      sub_1B4BF5E64(v10, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v73 = sub_1B4D179BC();
      (*(*(v73 - 8) + 56))(v69, 1, 1, v73);
    }

    sub_1B498B270(v69, &v12[*(v101 + 36)], &qword_1EB8A6C20, &unk_1B4D1FBF0);
    v74 = v100;
    sub_1B4BF5D94(v12, v100, type metadata accessor for LocalizedDate);
    v75 = v111;
    sub_1B4BF5D94(v74, &v111[*(v99 + 28)], type metadata accessor for LocalizedDate);
    v76 = v110;
    type metadata accessor for UnitPace();
    v77 = [swift_getObjCClassFromMetadata() baseUnit];
    sub_1B4D1741C();
    sub_1B4BF5E64(v76, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v78 = v97;
    sub_1B498B270(v75, v97, &qword_1EB8A6CF8, &unk_1B4D1BC80);
    sub_1B4BF5E64(v112, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4BF5E64(v32, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    v79 = v96;
    sub_1B498B270(v78, v96, &qword_1EB8A6CF8, &unk_1B4D1BC80);
    v80 = v113;
    v116 = v113;
    v82 = *(v113 + 16);
    v81 = *(v113 + 24);
    if (v82 >= v81 >> 1)
    {
      sub_1B4BCEF7C((v81 > 1), v82 + 1, 1);
      v80 = v116;
    }

    v42 = v55 + 1;
    *(v80 + 16) = v82 + 1;
    v83 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v113 = v80;
    result = sub_1B498B270(v79, v80 + v83 + *(v98 + 72) * v82, &qword_1EB8A6CF8, &unk_1B4D1BC80);
    v43 = v104;
    v17 = v93;
    v30 = v92;
    if (v103 == v55 + 1)
    {
      result = sub_1B4BF5E64(v86, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      *v87 = v113;
      return result;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B4BE8108@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void, uint64_t, void, double)@<X3>, unint64_t *a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v122 = a5;
  v123 = a6;
  v103 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v101 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v120 = v101 - v16;
  v119 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v111 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v18 = v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for LocalizedDate(0);
  MEMORY[0x1EEE9AC00](v118);
  v130 = (v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v117 = v101 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v128 = v101 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93B8, &unk_1B4D3B2E0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v127 = v101 - v25;
  v106 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  MEMORY[0x1EEE9AC00](v106);
  v105 = v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v126 = v101 - v28;
  v125 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v113 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v30 = v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v104 = v101 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v131 = v101 - v34;
  v35 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v133 = v101 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = a3;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v129 = v101 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v114 = v101 - v40;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v44 = *a1;
  v45 = *(*a1 + 16);
  if (!v45)
  {
    result = sub_1B4BF5E64(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    *v103 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v109 = a2;
  v101[1] = v7;
  v102 = a1;
  v136 = MEMORY[0x1E69E7CC0];
  v110 = v101 - v42;
  v124 = v45;
  result = a4(0, v45, 0, v43);
  v47 = 0;
  v112 = v44 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v132 = v136;
  v113 += 7;
  v111 += 6;
  v101[0] = a4;
  v108 = v36;
  v107 = v44;
  while (v47 < *(v44 + 16))
  {
    v48 = v133;
    sub_1B4BF5DFC(v112 + *(v36 + 72) * v47, v133, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    v49 = v126;
    sub_1B4974FBC(v48, v126, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    v50 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {
      v134 = 0u;
      v135 = 0u;
      v52 = v127;
      v51 = v128;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v52 = v127;
      v51 = v128;
      if (EnumCaseMultiPayload == 1)
      {
        v54 = v30;
        v55 = v14;
        v56 = v104;
        sub_1B4BF5D94(v49, v104, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        v57 = v125;
        *(&v135 + 1) = v125;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v134);
        v59 = v56;
        v14 = v55;
        v30 = v54;
        sub_1B4BF5D94(v59, boxed_opaque_existential_1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        goto LABEL_10;
      }

      v60 = v49;
      v61 = v105;
      sub_1B4BF5D94(v60, v105, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      *(&v135 + 1) = v106;
      v62 = __swift_allocate_boxed_opaque_existential_1(&v134);
      sub_1B4BF5D94(v61, v62, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    }

    v57 = v125;
LABEL_10:
    v63 = v113;
    v64 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
    v65 = swift_dynamicCast();
    v66 = *v63;
    if (!v65)
    {
      v66(v52, 1, 1, v57);
      sub_1B4975024(v52, &qword_1EB8A93B8, &unk_1B4D3B2E0);
      sub_1B4A089F0();
      swift_allocError();
      *v100 = 1;
      swift_willThrow();
      sub_1B4BF5E64(v133, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
      sub_1B4BF5E64(v102, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    v66(v52, 0, 1, v57);
    v67 = v52;
    v68 = v131;
    sub_1B4BF5D94(v67, v131, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4BF5DFC(v68, v30, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4D1778C();
    v69 = sub_1B4D177CC();
    v70 = v57;
    v71 = *(v69 - 8);
    result = (*(v71 + 48))(v51, 1, v69);
    if (result == 1)
    {
      goto LABEL_26;
    }

    (*(v71 + 32))(v129, v51, v69);
    v72 = &v30[*(v70 + 28)];
    v73 = v120;
    sub_1B4974FBC(v72, v120, &qword_1EB8A7158, &unk_1B4D20310);
    v74 = *v64;
    v75 = v119;
    if ((*v64)(v73, 1, v119) == 1)
    {
      *v18 = 0;
      *(v18 + 1) = 0;
      *(v18 + 4) = 0;
      sub_1B4D17BBC();
      v76 = &v18[*(v75 + 40)];
      *v76 = 0;
      *(v76 + 1) = 0;
      v77 = v74(v73, 1, v75);
      v78 = v121;
      if (v77 != 1)
      {
        sub_1B4975024(v73, &qword_1EB8A7158, &unk_1B4D20310);
      }
    }

    else
    {
      sub_1B4BF5D94(v73, v18, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v78 = v121;
    }

    v79 = *(v18 + 1);
    *&v80 = *v18;
    *(&v80 + 1) = HIDWORD(*v18);
    v81 = v80;
    *&v80 = v79;
    *(&v80 + 1) = SHIDWORD(v79);
    v82 = v130;
    *v130 = v81;
    v82[1] = v80;
    *(v82 + 4) = *(v18 + 4);
    if (*&v18[*(v75 + 40) + 8])
    {

      sub_1B4D1797C();

      sub_1B4BF5E64(v18, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    }

    else
    {
      sub_1B4BF5E64(v18, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v83 = sub_1B4D179BC();
      (*(*(v83 - 8) + 56))(v14, 1, 1, v83);
    }

    v84 = v130;
    v85 = v14;
    sub_1B498B270(v14, v130 + *(v118 + 36), &qword_1EB8A6C20, &unk_1B4D1FBF0);
    v86 = v84;
    v87 = v117;
    sub_1B4BF5D94(v86, v117, type metadata accessor for LocalizedDate);
    v88 = v129;
    sub_1B4BF5D94(v87, &v129[*(v116 + 28)], type metadata accessor for LocalizedDate);
    sub_1B498AFB8(0, v122, v123);
    v89 = [swift_getObjCClassFromMetadata() baseUnit];
    sub_1B4D1741C();
    sub_1B4BF5E64(v30, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v90 = v88;
    v91 = v114;
    v92 = v109;
    sub_1B498B270(v90, v114, v109, v78);
    sub_1B4BF5E64(v131, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4BF5E64(v133, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    v93 = v91;
    v94 = v110;
    sub_1B498B270(v93, v110, v92, v78);
    v95 = v132;
    v136 = v132;
    v96 = v78;
    v98 = *(v132 + 16);
    v97 = *(v132 + 24);
    if (v98 >= v97 >> 1)
    {
      (v101[0])(v97 > 1, v98 + 1, 1);
      v94 = v110;
      v95 = v136;
    }

    ++v47;
    *(v95 + 16) = v98 + 1;
    v99 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v132 = v95;
    result = sub_1B498B270(v94, v95 + v99 + *(v115 + 72) * v98, v92, v96);
    v14 = v85;
    v36 = v108;
    v44 = v107;
    if (v124 == v47)
    {
      result = sub_1B4BF5E64(v102, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      *v103 = v132;
      return result;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B4BE8E70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93B0, &unk_1B4D27AB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50 - v7;
  v55 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v69 = &v50 - v11;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v64 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v50 - v18;
  v19 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v68 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  v61 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v65 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = *a1;
  v27 = *(*a1 + 16);
  if (v27)
  {
    v59 = &v50 - v25;
    v51 = a2;
    v52 = a1;
    v72 = MEMORY[0x1E69E7CC0];
    v57 = v27;
    result = sub_1B4BCEF9C(0, v27, 0);
    v29 = 0;
    v62 = v26 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v30 = v72;
    v63 = (v13 + 56);
    v66 = v12;
    v60 = v20;
    v58 = v26;
    while (v29 < *(v26 + 16))
    {
      v31 = v68;
      sub_1B4BF5DFC(v62 + *(v20 + 72) * v29, v68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
      v32 = v69;
      sub_1B4974FBC(v31, v69, &qword_1EB8A7BC8, &unk_1B4D1FD60);
      v33 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        v70 = 0u;
        v71 = 0u;
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v34 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry;
          v35 = v54;
          sub_1B4BF5D94(v69, v54, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
          *(&v71 + 1) = v55;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v70);
          v37 = v35;
          v12 = v66;
        }

        else
        {
          v34 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry;
          v56 = v3;
          v38 = v53;
          sub_1B4BF5D94(v69, v53, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
          *(&v71 + 1) = v12;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v70);
          v37 = v38;
          v3 = v56;
        }

        sub_1B4BF5D94(v37, boxed_opaque_existential_1, v34);
      }

      v39 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
      v40 = swift_dynamicCast();
      v41 = *v39;
      v42 = v65;
      if (!v40)
      {
        v41(v8, 1, 1, v12);
        sub_1B4975024(v8, &qword_1EB8A93B0, &unk_1B4D27AB0);
        sub_1B4A089F0();
        swift_allocError();
        *v49 = 1;
        swift_willThrow();
LABEL_19:
        sub_1B4BF5E64(v68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
        sub_1B4BF5E64(v52, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      }

      v41(v8, 0, 1, v12);
      v43 = v67;
      sub_1B4BF5D94(v8, v67, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      v44 = v64;
      sub_1B4BF5DFC(v43, v64, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      sub_1B4BEA208(v44, v42);
      if (v3)
      {
        sub_1B4BF5E64(v67, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
        goto LABEL_19;
      }

      v45 = v8;
      sub_1B4BF5E64(v67, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      sub_1B4BF5E64(v68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
      v46 = v59;
      sub_1B498B270(v42, v59, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v72 = v30;
      v48 = *(v30 + 16);
      v47 = *(v30 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1B4BCEF9C((v47 > 1), v48 + 1, 1);
        v30 = v72;
      }

      ++v29;
      *(v30 + 16) = v48 + 1;
      result = sub_1B498B270(v46, v30 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v48, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v26 = v58;
      v8 = v45;
      v12 = v66;
      v20 = v60;
      if (v57 == v29)
      {
        result = sub_1B4BF5E64(v52, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        *v51 = v30;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1B4BF5E64(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    *a2 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1B4BE961C(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v32 = a5;
  v8 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
  v30 = *(v15 - 8);
  v31 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  if (v18)
  {
    v27 = a1;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF51C(0, v18, 0);
    v35 = v36;
    v19 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v28 = *(v12 + 72);
    v29 = v14;
    while (1)
    {
      v34 = v18;
      v20 = sub_1B4974FBC(v19, v14, a3, a4);
      MEMORY[0x1EEE9AC00](v20);
      *(&v26 - 2) = v14;
      sub_1B4BF5CF8(qword_1EDC3A998, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
      sub_1B4D17DAC();
      if (v8)
      {
        break;
      }

      v33 = 0;
      sub_1B4975024(v14, a3, a4);
      v21 = v35;
      v36 = v35;
      v23 = *(v35 + 16);
      v22 = *(v35 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B4BCF51C((v22 > 1), v23 + 1, 1);
        v21 = v36;
      }

      *(v21 + 16) = v23 + 1;
      v24 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v35 = v21;
      sub_1B4BF5D94(v17, v21 + v24 + *(v30 + 72) * v23, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
      v19 += v28;
      v18 = v34 - 1;
      v14 = v29;
      v8 = v33;
      if (v34 == 1)
      {
        a1 = v27;
        goto LABEL_10;
      }
    }

    sub_1B4975024(v14, a3, a4);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_10:

    *a1 = v35;
  }

  return result;
}

uint64_t sub_1B4BE9948(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  v14 = a2;
  sub_1B4BF5CF8(qword_1EDC3BB10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    sub_1B4BF5D94(v10, v7, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    sub_1B4975024(a1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4BF5D94(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  return result;
}

uint64_t sub_1B4BE9B08(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  v14 = a2;
  sub_1B4BF5CF8(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    sub_1B4BF5D94(v10, v7, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4975024(a1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4BF5D94(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  return result;
}

uint64_t sub_1B4BE9CC8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  v14 = a2;
  sub_1B4BF5CF8(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    sub_1B4BF5D94(v10, v7, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4975024(a1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4BF5D94(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  return result;
}

uint64_t sub_1B4BE9E88(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  v14 = a2;
  sub_1B4BF5CF8(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    sub_1B4BF5D94(v10, v7, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4975024(a1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4BF5D94(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  return result;
}

uint64_t sub_1B4BEA048(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  v14 = a2;
  sub_1B4BF5CF8(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    sub_1B4BF5D94(v10, v7, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4975024(a1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4BF5D94(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  return result;
}

uint64_t sub_1B4BEA208@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v59 - v7;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v62 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for LocalizedDate(0);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v67 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC1F0, &qword_1B4D3B2D8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v59 - v14;
  v16 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v69 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = (&v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B90, &unk_1B4D3B2C0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v59 - v25;
  v60 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v27 = *(v60 + 20);
  v72 = a1;
  sub_1B4974FBC(a1 + v27, v26, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v28 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  if ((*(*(v28 - 8) + 48))(v26, 1, v28) == 1)
  {
    v74 = 0u;
    v75 = 0u;
  }

  else
  {
    sub_1B4BF5D94(v26, v23, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    sub_1B4BF5DFC(v23, v20, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    *(&v75 + 1) = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v74);
    *boxed_opaque_existential_1 = *v20;
    boxed_opaque_existential_1[1] = v20[1];
    v30 = objc_opt_self();
    v31 = [v30 meters];
    v59 = v2;
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    sub_1B4D1741C();
    v32 = [v30 meters];
    sub_1B4D1741C();
    v33 = [objc_opt_self() seconds];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    sub_1B4BF5E64(v20, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    sub_1B4BF5E64(v23, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  }

  sub_1B4974FBC(&v74, v73, &qword_1EB8A6DE8, &qword_1B4D1FC10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  v34 = swift_dynamicCast();
  v35 = v70;
  v36 = *(v69 + 56);
  v38 = v71;
  v37 = v72;
  if (v34)
  {
    v36(v15, 0, 1, v16);
    sub_1B4BF5D94(v15, v68, type metadata accessor for DistanceSampleIntervalRecord);
    v39 = v67;
    sub_1B4D1778C();
    v40 = sub_1B4D177CC();
    v41 = *(v40 - 8);
    result = (*(v41 + 48))(v39, 1, v40);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v43 = v66;
      (*(v41 + 32))(v66, v39, v40);
      v44 = v61;
      sub_1B4974FBC(v37 + *(v60 + 28), v61, &qword_1EB8A7158, &unk_1B4D20310);
      v45 = *(v35 + 48);
      v46 = v45(v44, 1, v38);
      v47 = v64;
      v48 = v62;
      if (v46 == 1)
      {
        *v62 = 0;
        v48[1] = 0;
        *(v48 + 4) = 0;
        sub_1B4D17BBC();
        v49 = (v48 + *(v38 + 40));
        *v49 = 0;
        v49[1] = 0;
        v50 = v45(v44, 1, v38) == 1;
        v51 = v44;
        v52 = v65;
        if (!v50)
        {
          sub_1B4975024(v51, &qword_1EB8A7158, &unk_1B4D20310);
        }
      }

      else
      {
        sub_1B4BF5D94(v44, v62, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v52 = v65;
      }

      v54 = v48[1];
      *&v55 = *v48;
      *(&v55 + 1) = HIDWORD(*v48);
      v56 = v55;
      *&v55 = v54;
      *(&v55 + 1) = SHIDWORD(v54);
      *v47 = v56;
      *(v47 + 16) = v55;
      *(v47 + 32) = *(v48 + 4);
      if (*(v48 + *(v38 + 40) + 8))
      {

        sub_1B4D1797C();

        sub_1B4BF5E64(v48, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      }

      else
      {
        sub_1B4BF5E64(v48, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v57 = sub_1B4D179BC();
        (*(*(v57 - 8) + 56))(v52, 1, 1, v57);
      }

      sub_1B498B270(v52, v47 + *(v63 + 36), &qword_1EB8A6C20, &unk_1B4D1FBF0);
      sub_1B4975024(&v74, &qword_1EB8A6DE8, &qword_1B4D1FC10);
      sub_1B4BF5E64(v37, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
      sub_1B4BF5D94(v47, v43 + *(v58 + 36), type metadata accessor for LocalizedDate);
      return sub_1B4BF5D94(v68, v43 + *(v58 + 40), type metadata accessor for DistanceSampleIntervalRecord);
    }
  }

  else
  {
    v36(v15, 1, 1, v16);
    sub_1B4975024(v15, &qword_1EB8AC1F0, &qword_1B4D3B2D8);
    sub_1B4A089F0();
    swift_allocError();
    *v53 = 0;
    swift_willThrow();
    sub_1B4975024(&v74, &qword_1EB8A6DE8, &qword_1B4D1FC10);
    return sub_1B4BF5E64(v37, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  }

  return result;
}

uint64_t sub_1B4BEABB4(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v26 - v8;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4D1779C();
  v15 = v14;

  *a1 = v13;
  a1[1] = v15;
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80) + 36);
  sub_1B4BF5CF8(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4D17DAC();
  v16 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v17 = *(v16 + 28);
  sub_1B4975024(a1 + v17, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4BF5D94(v12, a1 + v17, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v10 + 56))(a1 + v17, 0, 1, v9);
  v18 = sub_1B4BF5CF8(&qword_1EDC388E0, type metadata accessor for DistanceSampleIntervalRecord, &protocol conformance descriptor for DistanceSampleIntervalRecord);
  v19 = *(v18 + 32);
  v20 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v21 = v29;
  result = v19(v20, v18);
  if (!v2)
  {
    v23 = v27;
    sub_1B4BF5D94(v21, v27, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    v24 = *(v16 + 20);
    sub_1B4975024(a1 + v24, &qword_1EB8A7B90, &unk_1B4D3B2C0);
    sub_1B4BF5D94(v23, a1 + v24, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    v25 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
    return (*(*(v25 - 8) + 56))(a1 + v24, 0, 1, v25);
  }

  return result;
}

uint64_t sub_1B4BEAF04(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B4D1779C();
  v13 = v12;

  *a1 = v11;
  a1[1] = v13;
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80) + 28);
  sub_1B4BF5CF8(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  v14 = v20;
  sub_1B4D17DAC();
  v20 = v14;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0) + 28);
  sub_1B4975024(a1 + v15, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4BF5D94(v10, a1 + v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v8 + 56))(a1 + v15, 0, 1, v7);
  type metadata accessor for UnitPace();
  v16 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v18 = v17;
  result = (*(v21 + 8))(v6, v4);
  a1[2] = v18;
  return result;
}

uint64_t sub_1B4BEB1D0(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B4D1779C();
  v13 = v12;

  *a1 = v11;
  a1[1] = v13;
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30) + 28);
  sub_1B4BF5CF8(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  v14 = v20;
  sub_1B4D17DAC();
  v20 = v14;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0) + 28);
  sub_1B4975024(a1 + v15, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4BF5D94(v10, a1 + v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v8 + 56))(a1 + v15, 0, 1, v7);
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v16 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v18 = v17;
  result = (*(v21 + 8))(v6, v4);
  a1[2] = v18;
  return result;
}

uint64_t sub_1B4BEB4AC(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B4D1779C();
  v13 = v12;

  *a1 = v11;
  a1[1] = v13;
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF0, &unk_1B4D1BC70) + 28);
  sub_1B4BF5CF8(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  v14 = v20;
  sub_1B4D17DAC();
  v20 = v14;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0) + 28);
  sub_1B4975024(a1 + v15, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4BF5D94(v10, a1 + v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v8 + 56))(a1 + v15, 0, 1, v7);
  sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  v16 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v18 = v17;
  result = (*(v21 + 8))(v6, v4);
  a1[2] = v18;
  return result;
}

uint64_t sub_1B4BEB788(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B4D1779C();
  v13 = v12;

  *a1 = v11;
  a1[1] = v13;
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72E0, &unk_1B4D1D790) + 28);
  sub_1B4BF5CF8(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  v14 = v20;
  sub_1B4D17DAC();
  v20 = v14;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0) + 28);
  sub_1B4975024(a1 + v15, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4BF5D94(v10, a1 + v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v8 + 56))(a1 + v15, 0, 1, v7);
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  v16 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v18 = v17;
  result = (*(v21 + 8))(v6, v4);
  a1[2] = v18;
  return result;
}

uint64_t WorkoutProperty.protobuf()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  sub_1B4BF5CF8(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BEBBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  sub_1B4BF5CF8(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BEBD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  sub_1B4BF5CF8(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BEBED0()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  sub_1B4BF5CF8(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BEBFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  sub_1B4BF5CF8(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BEC0A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v9, type metadata accessor for WorkoutDistanceStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v13 = v9;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v9, type metadata accessor for WorkoutDistanceStatisticsProperty);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  return sub_1B4BF0A84(v6, a1);
}

uint64_t sub_1B4BEC28C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = type metadata accessor for PaceStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v9, type metadata accessor for PaceStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v13 = v9;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v9, type metadata accessor for PaceStatisticsProperty);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  return sub_1B4BF0A84(v6, a1);
}

uint64_t sub_1B4BEC470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = type metadata accessor for ElevationGainStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v9, type metadata accessor for ElevationGainStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v13 = v9;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v9, type metadata accessor for ElevationGainStatisticsProperty);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  return sub_1B4BF0A84(v6, a1);
}

uint64_t sub_1B4BEC654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = type metadata accessor for AverageHeartRateStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v9, type metadata accessor for AverageHeartRateStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v13 = v9;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v9, type metadata accessor for AverageHeartRateStatisticsProperty);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  return sub_1B4BF0A84(v6, a1);
}

uint64_t sub_1B4BEC838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = type metadata accessor for DiveDepthStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v9, type metadata accessor for DiveDepthStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v13 = v9;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v9, type metadata accessor for DiveDepthStatisticsProperty);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  return sub_1B4BF0A84(v6, a1);
}

uint64_t sub_1B4BECA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = type metadata accessor for WorkoutCaloriesStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v9, type metadata accessor for WorkoutCaloriesStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v13 = v9;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v9, type metadata accessor for WorkoutCaloriesStatisticsProperty);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  return sub_1B4BF0A84(v6, a1);
}

uint64_t sub_1B4BECC00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = type metadata accessor for WorkoutDurationStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v9, type metadata accessor for WorkoutDurationStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v13 = v9;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v9, type metadata accessor for WorkoutDurationStatisticsProperty);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  return sub_1B4BF0A84(v6, a1);
}

uint64_t sub_1B4BECDE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = type metadata accessor for WeatherTemperatureStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v9, type metadata accessor for WeatherTemperatureStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v13 = v9;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v9, type metadata accessor for WeatherTemperatureStatisticsProperty);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  return sub_1B4BF0A84(v6, a1);
}

uint64_t sub_1B4BECFC8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13[-v6];
  v8 = type metadata accessor for WorkoutWeeklyCountStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v10, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v14 = v10;
  sub_1B4BF5CF8(qword_1EDC3AC30, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  sub_1B4D17DAC();
  result = sub_1B4BF5E64(v10, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
  if (!v2)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    return sub_1B4BF0A84(v7, a1);
  }

  return result;
}

uint64_t sub_1B4BED1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v171 = a1;
  v141 = type metadata accessor for WorkoutWeeklyCountStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v141);
  v145 = v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v143 = v139 - v7;
  v148 = type metadata accessor for WeatherTemperatureStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v148);
  v146 = v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v147 = v139 - v10;
  v151 = type metadata accessor for WorkoutDurationStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v151);
  v149 = v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v150 = v139 - v13;
  v154 = type metadata accessor for WorkoutCaloriesStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v154);
  v152 = v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v153 = v139 - v16;
  v157 = type metadata accessor for DiveDepthStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v157);
  v155 = v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v156 = v139 - v19;
  v160 = type metadata accessor for AverageHeartRateStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v160);
  v158 = v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v159 = v139 - v22;
  v163 = type metadata accessor for ElevationGainStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v163);
  v161 = v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v162 = v139 - v25;
  v166 = type metadata accessor for PaceStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v166);
  v164 = v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v165 = v139 - v28;
  v169 = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
  MEMORY[0x1EEE9AC00](v169);
  v167 = v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v139 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v140 = v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v142 = v139 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v144 = v139 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v168 = v139 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v170 = v139 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = v139 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = v139 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = v139 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = v139 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = v139 - v56;
  v59 = MEMORY[0x1EEE9AC00](v58);
  v61 = v139 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v62;
  v63 = *(v62 + 16);
  v139[1] = a2;
  v63(v61, a2, a3, v59);
  if (!swift_dynamicCast())
  {
    v69 = a3;
    if (swift_dynamicCast())
    {
      v68 = a3;
      v70 = DynamicType;
      v71 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
      MEMORY[0x1EEE9AC00](v71);
      v139[-2] = v70;
      sub_1B4BF5CF8(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v72 = v175;
      sub_1B4D17DAC();

      if (v72)
      {
        return (*(v172 + 8))(v61, v68);
      }

      v73 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v73 - 8) + 56))(v54, 0, 1, v73);
      v74 = v54;
      goto LABEL_7;
    }

    if (swift_dynamicCast())
    {
      v75 = DynamicType;
      v76 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
      MEMORY[0x1EEE9AC00](v76);
      v139[-2] = v75;
      sub_1B4BF5CF8(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v77 = v175;
      sub_1B4D17DAC();
      if (v77)
      {

        v68 = a3;
        return (*(v172 + 8))(v61, v68);
      }

      v88 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v88 - 8) + 56))(v51, 0, 1, v88);
      sub_1B4BF0A84(v51, v171);
      return (*(v172 + 8))(v61, v69);
    }

    if (swift_dynamicCast())
    {
      v68 = a3;
      v80 = DynamicType;
      v81 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
      MEMORY[0x1EEE9AC00](v81);
      v139[-2] = v80;
      sub_1B4BF5CF8(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v82 = v175;
      sub_1B4D17DAC();
      if (!v82)
      {

        v83 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v83 - 8) + 56))(v48, 0, 1, v83);
        v74 = v48;
LABEL_7:
        sub_1B4BF0A84(v74, v171);
        v69 = v68;
        return (*(v172 + 8))(v61, v69);
      }
    }

    else if (swift_dynamicCast())
    {
      v68 = a3;
      v84 = DynamicType;
      v85 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
      MEMORY[0x1EEE9AC00](v85);
      v139[-2] = v84;
      sub_1B4BF5CF8(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v86 = v175;
      sub_1B4D17DAC();
      if (!v86)
      {

        v87 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v87 - 8) + 56))(v45, 0, 1, v87);
        v74 = v45;
        goto LABEL_7;
      }
    }

    else
    {
      v89 = swift_dynamicCast();
      v90 = v175;
      if (!v89)
      {
        if (swift_dynamicCast())
        {
          v94 = v167;
          sub_1B4BF5D94(v32, v167, type metadata accessor for WorkoutDistanceStatisticsProperty);
          v95 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
          MEMORY[0x1EEE9AC00](v95);
          v139[-2] = v94;
          sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
          v96 = v168;
          sub_1B4D17DAC();
          sub_1B4BF5E64(v94, type metadata accessor for WorkoutDistanceStatisticsProperty);
          v97 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
        }

        else
        {
          v98 = v165;
          if (swift_dynamicCast())
          {
            v99 = v164;
            sub_1B4BF5D94(v98, v164, type metadata accessor for PaceStatisticsProperty);
            v100 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
            MEMORY[0x1EEE9AC00](v100);
            v139[-2] = v99;
            sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
            v96 = v168;
            sub_1B4D17DAC();
            sub_1B4BF5E64(v99, type metadata accessor for PaceStatisticsProperty);
            v97 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
          }

          else
          {
            v102 = v162;
            if (swift_dynamicCast())
            {
              v103 = v161;
              sub_1B4BF5D94(v102, v161, type metadata accessor for ElevationGainStatisticsProperty);
              v104 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
              MEMORY[0x1EEE9AC00](v104);
              v139[-2] = v103;
              sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
              v96 = v168;
              sub_1B4D17DAC();
              sub_1B4BF5E64(v103, type metadata accessor for ElevationGainStatisticsProperty);
              v97 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
            }

            else
            {
              v105 = v159;
              if (swift_dynamicCast())
              {
                v106 = v158;
                sub_1B4BF5D94(v105, v158, type metadata accessor for AverageHeartRateStatisticsProperty);
                v107 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
                MEMORY[0x1EEE9AC00](v107);
                v139[-2] = v106;
                sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
                v96 = v168;
                sub_1B4D17DAC();
                sub_1B4BF5E64(v106, type metadata accessor for AverageHeartRateStatisticsProperty);
                v97 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
              }

              else
              {
                v108 = v156;
                if (swift_dynamicCast())
                {
                  v109 = v155;
                  sub_1B4BF5D94(v108, v155, type metadata accessor for DiveDepthStatisticsProperty);
                  v110 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
                  MEMORY[0x1EEE9AC00](v110);
                  v139[-2] = v109;
                  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
                  v96 = v168;
                  sub_1B4D17DAC();
                  sub_1B4BF5E64(v109, type metadata accessor for DiveDepthStatisticsProperty);
                  v97 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                }

                else
                {
                  v111 = v153;
                  if (swift_dynamicCast())
                  {
                    v112 = v152;
                    sub_1B4BF5D94(v111, v152, type metadata accessor for WorkoutCaloriesStatisticsProperty);
                    v113 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
                    MEMORY[0x1EEE9AC00](v113);
                    v139[-2] = v112;
                    sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
                    v96 = v168;
                    sub_1B4D17DAC();
                    sub_1B4BF5E64(v112, type metadata accessor for WorkoutCaloriesStatisticsProperty);
                    v97 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                  }

                  else
                  {
                    v114 = v150;
                    if (swift_dynamicCast())
                    {
                      v115 = v149;
                      sub_1B4BF5D94(v114, v149, type metadata accessor for WorkoutDurationStatisticsProperty);
                      v116 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
                      MEMORY[0x1EEE9AC00](v116);
                      v139[-2] = v115;
                      sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
                      v96 = v168;
                      sub_1B4D17DAC();
                      sub_1B4BF5E64(v115, type metadata accessor for WorkoutDurationStatisticsProperty);
                      v97 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                    }

                    else
                    {
                      v117 = v147;
                      if (!swift_dynamicCast())
                      {
                        v120 = v145;
                        v68 = a3;
                        if (swift_dynamicCast())
                        {
                          v121 = DynamicType;
                          v122 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
                          MEMORY[0x1EEE9AC00](v122);
                          v139[-2] = v121;
                          sub_1B4BF5CF8(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
                          v123 = v168;
                          sub_1B4D17DAC();
                          v124 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                        }

                        else if (swift_dynamicCast())
                        {
                          v125 = DynamicType;
                          v126 = v174;
                          v127 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
                          MEMORY[0x1EEE9AC00](v127);
                          v139[-2] = v125;
                          v139[-1] = v126;
                          sub_1B4BF5CF8(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
                          v128 = v175;
                          sub_1B4D17DAC();
                          if (v128)
                          {
                            goto LABEL_22;
                          }

                          v124 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                          v123 = v144;
                        }

                        else if (swift_dynamicCast())
                        {
                          v129 = DynamicType;
                          v130 = v174;
                          v131 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
                          MEMORY[0x1EEE9AC00](v131);
                          v139[-2] = v129;
                          v139[-1] = v130;
                          sub_1B4BF5CF8(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
                          v132 = v175;
                          sub_1B4D17DAC();
                          if (v132)
                          {
                            goto LABEL_22;
                          }

                          v124 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                          v123 = v142;
                        }

                        else
                        {
                          if (!swift_dynamicCast())
                          {
                            DynamicType = swift_getDynamicType();
                            swift_getMetatypeMetadata();
                            v135 = sub_1B4D181AC();
                            v137 = v136;
                            sub_1B4BF5CA4();
                            swift_allocError();
                            *v138 = v135;
                            v138[1] = v137;
                            swift_willThrow();
                            return (*(v172 + 8))(v61, v68);
                          }

                          sub_1B4BF5D94(v143, v120, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
                          v133 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
                          MEMORY[0x1EEE9AC00](v133);
                          v139[-2] = v120;
                          sub_1B4BF5CF8(qword_1EDC3AC30, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
                          v134 = v175;
                          sub_1B4D17DAC();
                          if (v134)
                          {
                            sub_1B4BF5E64(v120, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
                            return (*(v172 + 8))(v61, v68);
                          }

                          sub_1B4BF5E64(v120, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
                          v124 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                          v123 = v140;
                        }

                        swift_storeEnumTagMultiPayload();
                        (*(*(v124 - 8) + 56))(v123, 0, 1, v124);
                        v74 = v123;
                        goto LABEL_7;
                      }

                      v118 = v146;
                      sub_1B4BF5D94(v117, v146, type metadata accessor for WeatherTemperatureStatisticsProperty);
                      v119 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
                      MEMORY[0x1EEE9AC00](v119);
                      v139[-2] = v118;
                      sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
                      v96 = v168;
                      sub_1B4D17DAC();
                      sub_1B4BF5E64(v118, type metadata accessor for WeatherTemperatureStatisticsProperty);
                      v97 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                    }
                  }
                }
              }
            }
          }
        }

        swift_storeEnumTagMultiPayload();
        (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
        sub_1B4BF0A84(v96, v171);
        return (*(v172 + 8))(v61, v69);
      }

      v68 = a3;
      v91 = DynamicType;
      v92 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
      MEMORY[0x1EEE9AC00](v92);
      v139[-2] = v91;
      sub_1B4BF5CF8(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v93 = v170;
      sub_1B4D17DAC();
      if (!v90)
      {

        v101 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v101 - 8) + 56))(v93, 0, 1, v101);
        v74 = v93;
        goto LABEL_7;
      }
    }

LABEL_22:

    return (*(v172 + 8))(v61, v68);
  }

  v64 = DynamicType;
  v65 = v174;
  v66 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  MEMORY[0x1EEE9AC00](v66);
  v139[-2] = v64;
  v139[-1] = v65;
  sub_1B4BF5CF8(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v67 = v175;
  sub_1B4D17DAC();

  if (!v67)
  {
    v78 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v78 - 8) + 56))(v57, 0, 1, v78);
    sub_1B4BF0A84(v57, v171);
    v69 = a3;
    return (*(v172 + 8))(v61, v69);
  }

  v68 = a3;
  return (*(v172 + 8))(v61, v68);
}

uint64_t static WorkoutPropertySerialization.from(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = a2;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_1B498FC0C(a1, a2);
  sub_1B4D17BDC();
  sub_1B4BF5CF8(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperty);
  result = sub_1B4D17D7C();
  if (!v3)
  {
    sub_1B4BEEFE8(v10, a3);
    return sub_1B4BF5E64(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  }

  return result;
}

uint64_t sub_1B4BEEFE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v177 = a1;
  v175 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v172 = (&v159 - v3);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v170 = (&v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v171 = &v159 - v7;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v169 = (&v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v173 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v174 = &v159 - v13;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v166 = (&v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v168 = &v159 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v165 = (&v159 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v167 = &v159 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v163 = (&v159 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v164 = &v159 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v161 = (&v159 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v162 = &v159 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v159 = (&v159 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v160 = &v159 - v33;
  v34 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = (&v159 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v159 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = (&v159 - v41);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v159 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = (&v159 - v47);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v159 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v54 = &v159 - v53;
  sub_1B4974FBC(v177, &v159 - v53, &qword_1EB8A7CC8, &qword_1B4D20180);
  v55 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
  {
    sub_1B4BF5CA4();
    swift_allocError();
    *v56 = 0;
    v56[1] = 0;
    return swift_willThrow();
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v115 = v54;
        v116 = v160;
        sub_1B4BF5D94(v115, v160, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v117 = v159;
        sub_1B4BF5DFC(v116, v159, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v118 = v176;
        sub_1B4BE73D8(v117, &v178);
        result = sub_1B4BF5E64(v116, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        if (!v118)
        {
          v83 = v178;
          v84 = v175;
          v175[3] = &type metadata for FastestPaceProperty;
          result = sub_1B4AE5EE8();
          goto LABEL_39;
        }

        return result;
      case 2u:
        v99 = v54;
        v100 = v162;
        sub_1B4BF5D94(v99, v162, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v101 = v161;
        sub_1B4BF5DFC(v100, v161, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v102 = v176;
        sub_1B4BE8108(v101, &qword_1EB8A6818, &unk_1B4D1AB30, sub_1B4BCEF5C, &qword_1EDC3CB80, 0x1E696B058, &v178);
        result = sub_1B4BF5E64(v100, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        if (!v102)
        {
          v83 = v178;
          v84 = v175;
          v175[3] = &type metadata for LongestDistanceProperty;
          result = sub_1B498ADA8();
          goto LABEL_39;
        }

        return result;
      case 3u:
        v104 = v54;
        v105 = v164;
        sub_1B4BF5D94(v104, v164, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v106 = v163;
        sub_1B4BF5DFC(v105, v163, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v107 = v176;
        sub_1B4BE8108(v106, &qword_1EB8A6818, &unk_1B4D1AB30, sub_1B4BCEF5C, &qword_1EDC3CB80, 0x1E696B058, &v178);
        result = sub_1B4BF5E64(v105, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        if (!v107)
        {
          v83 = v178;
          v84 = v175;
          v175[3] = &type metadata for GreatestElevationProperty;
          result = sub_1B4AE5F90();
          goto LABEL_39;
        }

        return result;
      case 4u:
        v79 = v54;
        v80 = v167;
        sub_1B4BF5D94(v79, v167, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v81 = v165;
        sub_1B4BF5DFC(v80, v165, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v82 = v176;
        sub_1B4BE8108(v81, &qword_1EB8A6CF0, &unk_1B4D1BC70, sub_1B4BCEF3C, &qword_1EDC378C8, 0x1E696B030, &v178);
        if (v82)
        {
          goto LABEL_26;
        }

        sub_1B4BF5E64(v80, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v83 = v178;
        v84 = v175;
        v175[3] = &type metadata for MostCaloriesBurnedProperty;
        result = sub_1B4AE5FE4();
        goto LABEL_39;
      case 5u:
        v124 = v54;
        v80 = v168;
        sub_1B4BF5D94(v124, v168, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v125 = v166;
        sub_1B4BF5DFC(v80, v166, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v126 = v176;
        sub_1B4BE8108(v125, &qword_1EB8A72E0, &unk_1B4D1D790, sub_1B4BCEF1C, &qword_1EDC378C0, 0x1E696B008, &v178);
        if (v126)
        {
LABEL_26:
          v123 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
          return sub_1B4BF5E64(v80, v123);
        }

        sub_1B4BF5E64(v80, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v83 = v178;
        v84 = v175;
        v175[3] = &type metadata for GreatestDurationProperty;
        result = sub_1B4AE6038();
LABEL_39:
        v84[4] = result;
        *v84 = v83;
        return result;
      case 6u:
        v66 = v174;
        sub_1B4BF5D94(v54, v174, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v67 = v173;
        sub_1B4BF5DFC(v66, v173, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v68 = *(v67 + 8);
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v135 = [ObjCClassFromMetadata baseUnit];
        v136 = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
        v137 = v175;
        v175[3] = v136;
        v137[4] = sub_1B4BF5CF8(&qword_1EDC38008, type metadata accessor for WorkoutDistanceStatisticsProperty, &protocol conformance descriptor for WorkoutDistanceStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v137);
        sub_1B4D1741C();
        v138 = [ObjCClassFromMetadata baseUnit];
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
        sub_1B4D1741C();
        v139 = [ObjCClassFromMetadata baseUnit];
        sub_1B4D1741C();
        v140 = [ObjCClassFromMetadata baseUnit];
        sub_1B4D1741C();
        v78 = [ObjCClassFromMetadata baseUnit];
        goto LABEL_32;
      case 7u:
        v66 = v174;
        sub_1B4BF5D94(v54, v174, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v67 = v173;
        sub_1B4BF5DFC(v66, v173, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v68 = *(v67 + 8);
        type metadata accessor for UnitPace();
        v108 = swift_getObjCClassFromMetadata();
        v109 = [v108 baseUnit];
        v110 = type metadata accessor for PaceStatisticsProperty(0);
        v111 = v175;
        v175[3] = v110;
        v111[4] = sub_1B4BF5CF8(&qword_1EDC392B0, type metadata accessor for PaceStatisticsProperty, &protocol conformance descriptor for PaceStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v111);
        sub_1B4D1741C();
        v112 = [v108 baseUnit];
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
        sub_1B4D1741C();
        v113 = [v108 baseUnit];
        sub_1B4D1741C();
        v114 = [v108 baseUnit];
        sub_1B4D1741C();
        v78 = [v108 baseUnit];
        goto LABEL_32;
      case 8u:
        v66 = v174;
        sub_1B4BF5D94(v54, v174, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v67 = v173;
        sub_1B4BF5DFC(v66, v173, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v68 = *(v67 + 8);
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        v148 = swift_getObjCClassFromMetadata();
        v149 = [v148 baseUnit];
        v150 = type metadata accessor for ElevationGainStatisticsProperty(0);
        v151 = v175;
        v175[3] = v150;
        v151[4] = sub_1B4BF5CF8(&qword_1EDC38270, type metadata accessor for ElevationGainStatisticsProperty, &protocol conformance descriptor for ElevationGainStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v151);
        sub_1B4D1741C();
        v152 = [v148 baseUnit];
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
        sub_1B4D1741C();
        v153 = [v148 baseUnit];
        sub_1B4D1741C();
        v154 = [v148 baseUnit];
        sub_1B4D1741C();
        v78 = [v148 baseUnit];
        goto LABEL_32;
      case 9u:
        v66 = v174;
        sub_1B4BF5D94(v54, v174, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v67 = v173;
        sub_1B4BF5DFC(v66, v173, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v68 = *(v67 + 8);
        sub_1B498AFB8(0, &qword_1EDC378B8, 0x1E696B038);
        v92 = swift_getObjCClassFromMetadata();
        v93 = [v92 baseUnit];
        v94 = type metadata accessor for AverageHeartRateStatisticsProperty(0);
        v95 = v175;
        v175[3] = v94;
        v95[4] = sub_1B4BF5CF8(&qword_1EDC37E90, type metadata accessor for AverageHeartRateStatisticsProperty, &protocol conformance descriptor for AverageHeartRateStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v95);
        sub_1B4D1741C();
        v96 = [v92 baseUnit];
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
        sub_1B4D1741C();
        v97 = [v92 baseUnit];
        sub_1B4D1741C();
        v98 = [v92 baseUnit];
        sub_1B4D1741C();
        v78 = [v92 baseUnit];
        goto LABEL_32;
      case 0xAu:
        v66 = v174;
        sub_1B4BF5D94(v54, v174, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v67 = v173;
        sub_1B4BF5DFC(v66, v173, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v68 = *(v67 + 8);
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        v141 = swift_getObjCClassFromMetadata();
        v142 = [v141 baseUnit];
        v143 = type metadata accessor for DiveDepthStatisticsProperty(0);
        v144 = v175;
        v175[3] = v143;
        v144[4] = sub_1B4BF5CF8(&qword_1EDC38A68, type metadata accessor for DiveDepthStatisticsProperty, &protocol conformance descriptor for DiveDepthStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v144);
        sub_1B4D1741C();
        v145 = [v141 baseUnit];
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
        sub_1B4D1741C();
        v146 = [v141 baseUnit];
        sub_1B4D1741C();
        v147 = [v141 baseUnit];
        sub_1B4D1741C();
        v78 = [v141 baseUnit];
        goto LABEL_32;
      case 0xBu:
        v66 = v174;
        sub_1B4BF5D94(v54, v174, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v67 = v173;
        sub_1B4BF5DFC(v66, v173, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v68 = *(v67 + 8);
        sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
        v69 = swift_getObjCClassFromMetadata();
        v70 = [v69 baseUnit];
        v71 = type metadata accessor for WorkoutCaloriesStatisticsProperty(0);
        v72 = v175;
        v175[3] = v71;
        v72[4] = sub_1B4BF5CF8(&qword_1EDC380B8, type metadata accessor for WorkoutCaloriesStatisticsProperty, &protocol conformance descriptor for WorkoutCaloriesStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
        sub_1B4D1741C();
        v74 = [v69 baseUnit];
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
        sub_1B4D1741C();
        v76 = [v69 baseUnit];
        sub_1B4D1741C();
        v77 = [v69 baseUnit];
        sub_1B4D1741C();
        v78 = [v69 baseUnit];
        goto LABEL_32;
      case 0xCu:
        v66 = v174;
        sub_1B4BF5D94(v54, v174, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v67 = v173;
        sub_1B4BF5DFC(v66, v173, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v68 = *(v67 + 8);
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        v85 = swift_getObjCClassFromMetadata();
        v86 = [v85 baseUnit];
        v87 = type metadata accessor for WorkoutDurationStatisticsProperty(0);
        v88 = v175;
        v175[3] = v87;
        v88[4] = sub_1B4BF5CF8(&qword_1EDC37F58, type metadata accessor for WorkoutDurationStatisticsProperty, &protocol conformance descriptor for WorkoutDurationStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
        sub_1B4D1741C();
        v89 = [v85 baseUnit];
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
        sub_1B4D1741C();
        v90 = [v85 baseUnit];
        sub_1B4D1741C();
        v91 = [v85 baseUnit];
        sub_1B4D1741C();
        v78 = [v85 baseUnit];
        goto LABEL_32;
      case 0xDu:
        v66 = v174;
        sub_1B4BF5D94(v54, v174, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v67 = v173;
        sub_1B4BF5DFC(v66, v173, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v68 = *(v67 + 8);
        sub_1B498AFB8(0, &qword_1EDC378B0, 0x1E696B080);
        v127 = swift_getObjCClassFromMetadata();
        v128 = [v127 baseUnit];
        v129 = type metadata accessor for WeatherTemperatureStatisticsProperty(0);
        v130 = v175;
        v175[3] = v129;
        v130[4] = sub_1B4BF5CF8(&qword_1EDC37C98, type metadata accessor for WeatherTemperatureStatisticsProperty, &protocol conformance descriptor for WeatherTemperatureStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v130);
        sub_1B4D1741C();
        v131 = [v127 baseUnit];
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
        sub_1B4D1741C();
        v132 = [v127 baseUnit];
        sub_1B4D1741C();
        v133 = [v127 baseUnit];
        sub_1B4D1741C();
        v78 = [v127 baseUnit];
LABEL_32:
        v155 = v78;
        sub_1B4D1741C();
        sub_1B4BF5E64(v67, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        result = sub_1B4BF5E64(v66, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        *(boxed_opaque_existential_1 + *(v75 + 28)) = v68;
        return result;
      case 0xEu:
        v63 = v169;
        sub_1B4BF5D94(v54, v169, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v64 = *v63;
        sub_1B4BF5E64(v63, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v65 = v175;
        v175[3] = &type metadata for WorkoutTotalCountProperty;
        result = sub_1B498AF48();
        v65[4] = result;
        *v65 = v64;
        return result;
      case 0xFu:
        sub_1B4BF5D94(v54, v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        sub_1B4BF5DFC(v45, v42, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        v103 = v176;
        sub_1B4BF0E28(v42, &v178);
        if (v103)
        {
          return sub_1B4BF5E64(v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        }

        sub_1B4BF5E64(v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        v59 = v178;
        v60 = v179;
        v61 = v175;
        v175[3] = &type metadata for WorkoutCountByWeatherConditionProperty;
        result = sub_1B4AE608C();
        goto LABEL_36;
      case 0x10u:
        sub_1B4BF5D94(v54, v39, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        sub_1B4BF5DFC(v39, v36, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        v62 = v176;
        sub_1B4BF1130(v36, &v178);
        if (v62)
        {
          result = sub_1B4BF5E64(v39, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        }

        else
        {
          sub_1B4BF5E64(v39, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
          v59 = v178;
          v60 = v179;
          v61 = v175;
          v175[3] = &type metadata for WorkoutCountByRoundedDistanceProperty;
          result = sub_1B4AE60E0();
LABEL_36:
          v61[4] = result;
          *v61 = v59;
          v61[1] = v60;
        }

        break;
      case 0x11u:
        v119 = v54;
        v80 = v171;
        sub_1B4BF5D94(v119, v171, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
        v120 = v170;
        sub_1B4BF5DFC(v80, v170, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
        v121 = v172;
        v122 = v176;
        sub_1B4BE6870(v120, v172);
        if (v122)
        {
          v123 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue;
          return sub_1B4BF5E64(v80, v123);
        }

        else
        {
          sub_1B4BF5E64(v80, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
          v156 = type metadata accessor for WorkoutWeeklyCountStatisticsProperty(0);
          v157 = v175;
          v175[3] = v156;
          v157[4] = sub_1B4BF5CF8(&qword_1EDC37BE0, type metadata accessor for WorkoutWeeklyCountStatisticsProperty, &protocol conformance descriptor for WorkoutWeeklyCountStatisticsProperty);
          v158 = __swift_allocate_boxed_opaque_existential_1(v157);
          return sub_1B498B270(v121, v158, &qword_1EB8A79B0, &qword_1B4D20FC0);
        }

      default:
        sub_1B4BF5D94(v54, v51, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        sub_1B4BF5DFC(v51, v48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        v58 = v176;
        sub_1B4BF0B10(v48, &v178);
        result = sub_1B4BF5E64(v51, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        if (v58)
        {
          return result;
        }

        v59 = v178;
        v60 = v179;
        v61 = v175;
        v175[3] = &type metadata for FastestByDistanceProperty;
        result = sub_1B4AE5F3C();
        goto LABEL_36;
    }
  }

  return result;
}

uint64_t sub_1B4BF0A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BF0B10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (v10)
  {
    v11 = 0;
    v29 = v10 - 1;
    v12 = MEMORY[0x1E69E7CC0];
    v32 = a2;
    while (2)
    {
      v13 = v11;
      while (1)
      {
        if (v13 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        sub_1B4BF5DFC(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
        sub_1B4BF266C(v8, &v30);
        if (v2)
        {
          sub_1B4BF5E64(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
          sub_1B4BF5E64(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
        }

        sub_1B4BF5E64(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
        v14 = v31;
        if (v31)
        {
          break;
        }

        ++v13;

        if (v10 == v13)
        {
          a2 = v32;
          if (v12[2])
          {
            goto LABEL_17;
          }

          goto LABEL_20;
        }
      }

      v27 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = a1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_1B4A1D320(0, v12[2] + 1, 1, v12);
      }

      v17 = v12[2];
      v16 = v12[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v26 = v17 + 1;
        v20 = sub_1B4A1D320((v16 > 1), v17 + 1, 1, v12);
        v18 = v26;
        v12 = v20;
      }

      v11 = v13 + 1;
      v12[2] = v18;
      v19 = &v12[2 * v17];
      a1 = v28;
      *(v19 + 32) = v27;
      v19[5] = v14;
      a2 = v32;
      if (v29 != v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v12[2])
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68A0, &qword_1B4D1ABB8);
    v21 = sub_1B4D18AEC();
  }

  else
  {
LABEL_20:
    v21 = MEMORY[0x1E69E7CC8];
  }

  v30 = v21;
  sub_1B4C4E108(v12, 1, &v30);
  if (v2)
  {
LABEL_24:
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v23 = v30;
    v24 = a1;
    v25 = a1[1];
    result = sub_1B4BF5E64(v24, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    *a2 = v23;
    a2[1] = v25;
  }

  return result;
}

uint64_t sub_1B4BF0E28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 - 1;
    v13 = MEMORY[0x1E69E7CC0];
    v31 = a2;
LABEL_3:
    v14 = v11;
    do
    {
      if (v14 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      sub_1B4BF5DFC(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      sub_1B4BF1F34(v8, &v29);
      if (v2)
      {
        sub_1B4BF5E64(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        sub_1B4BF5E64(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      }

      sub_1B4BF5E64(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      if ((v30 & 1) == 0)
      {
        v27 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = sub_1B4A1D21C(0, *(v13 + 2) + 1, 1, v13);
        }

        v17 = *(v13 + 2);
        v16 = *(v13 + 3);
        v18 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          v26 = v17 + 1;
          v20 = sub_1B4A1D21C((v16 > 1), v17 + 1, 1, v13);
          v18 = v26;
          v13 = v20;
        }

        v11 = v14 + 1;
        *(v13 + 2) = v18;
        *&v13[16 * v17 + 32] = v27;
        v12 = v28;
        v19 = v28 == v14;
        a2 = v31;
        if (v19)
        {
          goto LABEL_17;
        }

        goto LABEL_3;
      }

      ++v14;
    }

    while (v10 != v14);
    a2 = v31;
    if (*(v13 + 2))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_17:
    if (*(v13 + 2))
    {
LABEL_18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6910, &qword_1B4D1AC28);
      v21 = sub_1B4D18AEC();
      goto LABEL_22;
    }
  }

  v21 = MEMORY[0x1E69E7CC8];
LABEL_22:
  *&v29 = v21;
  sub_1B4BF4A78(v13, 1, &v29);
  if (v2)
  {
LABEL_25:
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v23 = v29;
    v24 = a1[1];
    result = sub_1B4BF5E64(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    *a2 = v23;
    a2[1] = v24;
  }

  return result;
}

uint64_t sub_1B4BF1130@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC1F8, &unk_1B4D3B2F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F20, &qword_1B4D20450);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v29 - v11;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v37 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v15 = *a1;
  v16 = *(*a1 + 16);
  if (v16)
  {
    v17 = 0;
    v33 = v8;
    v38 = MEMORY[0x1E69E7CC0];
    v34 = v7;
    v32 = v16;
    while (v17 < *(v15 + 16))
    {
      sub_1B4BF5DFC(v15 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v17, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      sub_1B4BF15E0(v14, v6);
      if (v2)
      {
        sub_1B4BF5E64(v31, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        sub_1B4BF5E64(v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      }

      sub_1B4BF5E64(v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_1B4975024(v6, &qword_1EB8AC1F8, &unk_1B4D3B2F0);
      }

      else
      {
        v18 = v35;
        sub_1B498B270(v6, v35, &qword_1EB8A7F20, &qword_1B4D20450);
        sub_1B498B270(v18, v36, &qword_1EB8A7F20, &qword_1B4D20450);
        v19 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1B4A1D1F8(0, v19[2] + 1, 1, v19);
        }

        v21 = v19[2];
        v20 = v19[3];
        v38 = v19;
        if (v21 >= v20 >> 1)
        {
          v38 = sub_1B4A1D1F8((v20 > 1), v21 + 1, 1, v38);
        }

        v22 = v38;
        v38[2] = v21 + 1;
        sub_1B498B270(v36, v22 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21, &qword_1EB8A7F20, &qword_1B4D20450);
        v7 = v34;
        v16 = v32;
      }

      if (v16 == ++v17)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_14:
    if (v38[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68B8, &qword_1B4D1ABD0);
      v23 = sub_1B4D18AEC();
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC8];
    }

    v39 = v23;

    sub_1B4BD96FC(v25, 1, &v39);
    if (!v2)
    {

      v26 = v39;
      v27 = v31[1];
      result = sub_1B4BF5E64(v31, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      v28 = v30;
      *v30 = v26;
      v28[1] = v27;
      return result;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B4BF15E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v57 - v6;
  v61 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v57 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v70 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v58 = &v57 - v23;
  v65 = v3;
  v24 = *(v3 + 20);
  v67 = a1;
  sub_1B4974FBC(a1 + v24, v15, &qword_1EB8A7EA0, &unk_1B4D42260);
  v25 = *(v17 + 48);
  if (v25(v15, 1, v16) == 1)
  {
    *v21 = 0;
    *(v21 + 1) = 0;
    v21[16] = -1;
    sub_1B4D17BBC();
    if (v25(v15, 1, v16) != 1)
    {
      sub_1B4975024(v15, &qword_1EB8A7EA0, &unk_1B4D42260);
    }
  }

  else
  {
    sub_1B4BF5D94(v15, v21, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  sub_1B4BF2D8C(v21, v69);
  sub_1B4BF5E64(v21, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  v26 = swift_dynamicCast();
  v27 = v70;
  v28 = *(v70 + 56);
  if (v26)
  {
    v28(v10, 0, 1, v22);
    v29 = *(v27 + 32);
    v30 = v58;
    v29(v58, v10, v22);
    v31 = v62;
    sub_1B4974FBC(v67 + *(v65 + 24), v62, &qword_1EB8A7E90, &unk_1B4D25C60);
    v32 = *(v59 + 48);
    v33 = v61;
    if (v32(v31, 1, v61) == 1)
    {
      v34 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
      v35 = v63;
      (*(*(v34 - 8) + 56))(v63, 1, 1, v34);
      sub_1B4D17BBC();
      v36 = v32(v31, 1, v33);
      v37 = v68;
      if (v36 != 1)
      {
        sub_1B4975024(v31, &qword_1EB8A7E90, &unk_1B4D25C60);
      }
    }

    else
    {
      v35 = v63;
      sub_1B4BF5D94(v31, v63, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      v37 = v68;
    }

    sub_1B4BF3114(v35, v69);
    sub_1B4BF5E64(v35, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    if (v37)
    {
      return (*(v70 + 8))(v30, v22);
    }

    else
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F20, &qword_1B4D20450);
      v50 = *(v49 + 48);
      v51 = v64;
      v29(v64, v30, v22);
      *&v51[v50] = v69[0];
      return (*(*(v49 - 8) + 56))(v51, 0, 1, v49);
    }
  }

  else
  {
    v28(v10, 1, 1, v22);
    sub_1B4975024(v10, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if (qword_1EDC3CBB8[0] != -1)
    {
      swift_once();
    }

    v38 = sub_1B4D17F6C();
    __swift_project_value_buffer(v38, qword_1EDC37A40);
    v39 = v66;
    sub_1B4BF5DFC(v67, v66, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    v40 = sub_1B4D17F5C();
    v41 = sub_1B4D1871C();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v60;
    if (v42)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v69[0] = v45;
      *v44 = 136315138;
      v46 = v39 + *(v65 + 20);
      v47 = v57;
      sub_1B4974FBC(v46, v57, &qword_1EB8A7EA0, &unk_1B4D42260);
      if (v25(v47, 1, v16) == 1)
      {
        *v43 = 0;
        *(v43 + 8) = 0;
        *(v43 + 16) = -1;
        sub_1B4D17BBC();
        if (v25(v47, 1, v16) != 1)
        {
          sub_1B4975024(v47, &qword_1EB8A7EA0, &unk_1B4D42260);
        }
      }

      else
      {
        sub_1B4BF5D94(v47, v43, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
      }

      v52 = sub_1B4D181AC();
      v54 = v53;
      sub_1B4BF5E64(v66, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      v55 = sub_1B49558AC(v52, v54, v69);

      *(v44 + 4) = v55;
      _os_log_impl(&dword_1B4953000, v40, v41, "Unexpected key = %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1B8C7DDA0](v45, -1, -1);
      MEMORY[0x1B8C7DDA0](v44, -1, -1);
    }

    else
    {

      sub_1B4BF5E64(v39, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    }

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F20, &qword_1B4D20450);
    return (*(*(v56 - 8) + 56))(v64, 1, 1, v56);
  }
}

void sub_1B4BF1F34(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = (&v47 - v6);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v47 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v54 = v3;
  v21 = *(v3 + 20);
  v22 = a1;
  sub_1B4974FBC(a1 + v21, v14, &qword_1EB8A7EA0, &unk_1B4D42260);
  v23 = *(v16 + 48);
  if (v23(v14, 1, v15) == 1)
  {
    *v20 = 0;
    *(v20 + 1) = 0;
    v20[16] = -1;
    sub_1B4D17BBC();
    if (v23(v14, 1, v15) != 1)
    {
      sub_1B4975024(v14, &qword_1EB8A7EA0, &unk_1B4D42260);
    }
  }

  else
  {
    sub_1B4BF5D94(v14, v20, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  sub_1B4BF2D8C(v20, v56);
  sub_1B4BF5E64(v20, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  type metadata accessor for _HKPrivateWeatherCondition(0);
  if (swift_dynamicCast())
  {
    v24 = v55;
    v25 = v22 + *(v54 + 24);
    v26 = v50;
    sub_1B4974FBC(v25, v50, &qword_1EB8A7E90, &unk_1B4D25C60);
    v27 = v49;
    v28 = *(v48 + 48);
    if (v28(v26, 1, v49) == 1)
    {
      v29 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
      (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
      sub_1B4D17BBC();
      if (v28(v26, 1, v27) != 1)
      {
        sub_1B4975024(v26, &qword_1EB8A7E90, &unk_1B4D25C60);
      }
    }

    else
    {
      sub_1B4BF5D94(v26, v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    }

    v38 = v56[5];
    sub_1B4BF3114(v9, v56);
    sub_1B4BF5E64(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    if (!v38)
    {
      v39 = v56[0];
      v40 = v53;
      *v53 = v24;
      v40[1] = v39;
      *(v40 + 16) = 0;
    }
  }

  else
  {
    if (qword_1EDC3CBB8[0] != -1)
    {
      swift_once();
    }

    v30 = sub_1B4D17F6C();
    __swift_project_value_buffer(v30, qword_1EDC37A40);
    v31 = v52;
    sub_1B4BF5DFC(v22, v52, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    v32 = sub_1B4D17F5C();
    v33 = sub_1B4D1871C();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v51;
    if (v34)
    {
      v36 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v56[0] = v50;
      *v36 = 136315138;
      sub_1B4974FBC(v31 + *(v54 + 20), v35, &qword_1EB8A7EA0, &unk_1B4D42260);
      if (v23(v35, 1, v15) == 1)
      {
        v37 = v47;
        *v47 = 0;
        v37[1] = 0;
        *(v37 + 16) = -1;
        sub_1B4D17BBC();
        if (v23(v35, 1, v15) != 1)
        {
          sub_1B4975024(v35, &qword_1EB8A7EA0, &unk_1B4D42260);
        }
      }

      else
      {
        sub_1B4BF5D94(v35, v47, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
      }

      v41 = sub_1B4D181AC();
      v43 = v42;
      sub_1B4BF5E64(v31, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      v44 = sub_1B49558AC(v41, v43, v56);

      *(v36 + 4) = v44;
      _os_log_impl(&dword_1B4953000, v32, v33, "Unexpected key = %s", v36, 0xCu);
      v45 = v50;
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x1B8C7DDA0](v45, -1, -1);
      MEMORY[0x1B8C7DDA0](v36, -1, -1);
    }

    else
    {

      sub_1B4BF5E64(v31, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    }

    v46 = v53;
    *v53 = 0;
    v46[1] = 0;
    *(v46 + 16) = 1;
  }
}

void sub_1B4BF266C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v43 - v6;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v46 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  sub_1B4974FBC(a1 + *(v3 + 20), v13, &qword_1EB8A7EA0, &unk_1B4D42260);
  v21 = *(v15 + 48);
  if (v21(v13, 1, v14) == 1)
  {
    *v20 = 0;
    *(v20 + 1) = 0;
    v20[16] = -1;
    sub_1B4D17BBC();
    if (v21(v13, 1, v14) != 1)
    {
      sub_1B4975024(v13, &qword_1EB8A7EA0, &unk_1B4D42260);
    }
  }

  else
  {
    sub_1B4BF5D94(v13, v20, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  sub_1B4BF2D8C(v20, v51);
  sub_1B4BF5E64(v20, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  if ((swift_dynamicCast() & 1) != 0 && (v22 = v52, v52 != 16))
  {
    v30 = v45;
    sub_1B4974FBC(a1 + *(v3 + 24), v45, &qword_1EB8A7E90, &unk_1B4D25C60);
    v31 = v44;
    v32 = *(v43 + 48);
    if (v32(v30, 1, v44) == 1)
    {
      v33 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
      v34 = v46;
      (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
      sub_1B4D17BBC();
      if (v32(v30, 1, v31) != 1)
      {
        sub_1B4975024(v30, &qword_1EB8A7E90, &unk_1B4D25C60);
      }
    }

    else
    {
      v34 = v46;
      sub_1B4BF5D94(v30, v46, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    }

    v41 = v49;
    sub_1B4BF3370(v34, v51);
    sub_1B4BF5E64(v34, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    if (!v41)
    {
      v42 = v48;
      *v48 = v22;
      *(v42 + 1) = v51[0];
    }
  }

  else
  {
    if (qword_1EDC3CBB8[0] != -1)
    {
      swift_once();
    }

    v23 = sub_1B4D17F6C();
    __swift_project_value_buffer(v23, qword_1EDC37A40);
    v24 = v50;
    sub_1B4BF5DFC(a1, v50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    v25 = sub_1B4D17F5C();
    v26 = sub_1B4D1871C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51[0] = v46;
      *v27 = 136315138;
      v28 = v24 + *(v3 + 20);
      v29 = v47;
      sub_1B4974FBC(v28, v47, &qword_1EB8A7EA0, &unk_1B4D42260);
      if (v21(v29, 1, v14) == 1)
      {
        *v17 = 0;
        *(v17 + 1) = 0;
        v17[16] = -1;
        sub_1B4D17BBC();
        if (v21(v29, 1, v14) != 1)
        {
          sub_1B4975024(v29, &qword_1EB8A7EA0, &unk_1B4D42260);
        }
      }

      else
      {
        sub_1B4BF5D94(v29, v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
      }

      v35 = sub_1B4D181AC();
      v37 = v36;
      sub_1B4BF5E64(v50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      v38 = sub_1B49558AC(v35, v37, v51);

      *(v27 + 4) = v38;
      _os_log_impl(&dword_1B4953000, v25, v26, "Unexpected key = %s", v27, 0xCu);
      v39 = v46;
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1B8C7DDA0](v39, -1, -1);
      MEMORY[0x1B8C7DDA0](v27, -1, -1);
    }

    else
    {

      sub_1B4BF5E64(v24, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    }

    v40 = v48;
    *v48 = 0;
    *(v40 + 1) = 0;
  }
}