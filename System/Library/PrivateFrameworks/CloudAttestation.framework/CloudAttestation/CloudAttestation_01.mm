unint64_t sub_22FEB1ECC()
{
  result = qword_281491020[0];
  if (!qword_281491020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281491020);
  }

  return result;
}

CloudAttestation::Environment_optional sub_22FEB1F20()
{
  v0 = sub_22FFB1488();
  v1 = sub_22FFB1488();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (v2 && (swift_dynamicCast() & 1) != 0)
  {
    v3 = v6;
    v4 = v7;
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  return Environment.init(rawValue:)(*&v3);
}

CloudAttestation::Environment_optional __swiftcall Environment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22FFB1B28();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22FEB20A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF19D0, &unk_22FFB3580);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = *v3;
  if (v19 <= 5)
  {
    v33 = a1;
    v34 = a2;
    v31 = 1685025392;
    v32 = 0xE400000000000000;
    v29 = 3236209;
    v30 = 0xE300000000000000;
    sub_22FEB2CAC();
    sub_22FFB18B8();
    sub_22FFB0688();

    v20 = sub_22FFB06B8();
    v21 = *(v20 - 8);
    result = (*(v21 + 48))(v16, 1, v20);
    if (result != 1)
    {
      return (*(v21 + 32))(a3, v16, v20);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v19 - 6 < 3)
  {
    v33 = a1;
    v34 = a2;
    v31 = 1685025392;
    v32 = 0xE400000000000000;
    v29 = 0x7972726163;
    v30 = 0xE500000000000000;
    sub_22FEB2CAC();
    sub_22FFB18B8();
    sub_22FFB0688();

    v23 = sub_22FFB06B8();
    v24 = *(v23 - 8);
    result = (*(v24 + 48))(v13, 1, v23);
    if (result != 1)
    {
      return (*(v24 + 32))(a3, v13, v23);
    }

    goto LABEL_14;
  }

  if (v19 - 10 >= 2)
  {
    sub_22FFB0688();
    v27 = sub_22FFB06B8();
    v28 = *(v27 - 8);
    result = (*(v28 + 48))(v10, 1, v27);
    if (result != 1)
    {
      return (*(v28 + 32))(a3, v10, v27);
    }

    goto LABEL_16;
  }

  v33 = a1;
  v34 = a2;
  v31 = 1685025392;
  v32 = 0xE400000000000000;
  v29 = 3301745;
  v30 = 0xE300000000000000;
  sub_22FEB2CAC();
  sub_22FFB18B8();
  sub_22FFB0688();

  v25 = sub_22FFB06B8();
  v26 = *(v25 - 8);
  result = (*(v26 + 48))(v18, 1, v25);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  return (*(v26 + 32))(a3, v18, v25);
}

uint64_t sub_22FEB25DC(uint64_t a1)
{
  v1 = Environment.description.getter(a1);
  v3 = v2;
  if (v1 == Environment.description.getter(v1) && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_22FFB1BC8();
  }

  return v6 & 1;
}

uint64_t sub_22FEB2678()
{
  v0 = sub_22FFB1CA8();
  Environment.description.getter(v0);
  sub_22FFB1548();

  return sub_22FFB1CF8();
}

uint64_t sub_22FEB26E0(uint64_t a1)
{
  Environment.description.getter(a1);
  sub_22FFB1548();
}

uint64_t sub_22FEB2744()
{
  v0 = sub_22FFB1CA8();
  Environment.description.getter(v0);
  sub_22FFB1548();

  return sub_22FFB1CF8();
}

uint64_t sub_22FEB27B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Environment.description.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_22FEB2890()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x69746375646F7270;
    v8 = 0x616D697250326171;
    if (v1 != 10)
    {
      v8 = 0x7265746E49326171;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 7627125;
    v10 = 0x7972726163;
    if (v1 != 7)
    {
      v10 = 0x6E6F6576696CLL;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 7759204;
    v3 = 0x69746E6172617571;
    v4 = 24945;
    if (v1 != 4)
    {
      v4 = 0x676E6967617473;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x6172656D65687065;
    if (v1 != 1)
    {
      v5 = 1718773104;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_22FEB2A24()
{
  result = qword_27DAF19C0;
  if (!qword_27DAF19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF19C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FEB2C58()
{
  result = qword_27DAF19C8;
  if (!qword_27DAF19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF19C8);
  }

  return result;
}

unint64_t sub_22FEB2CAC()
{
  result = qword_27DAF19D8;
  if (!qword_27DAF19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF19D8);
  }

  return result;
}

void DeviceIdentifiers.chipID.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v5 = *(v1 + 18);
  v6 = *(v1 + 20);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 18) = v5;
  *(a1 + 20) = v6;
}

uint64_t DeviceIdentifiers.udid.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84CC0];
  *(v3 + 16) = xmmword_22FFB2D20;
  v5 = MEMORY[0x277D84D30];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  v6 = MEMORY[0x277D84D90];
  *(v3 + 96) = MEMORY[0x277D84D38];
  *(v3 + 104) = v6;
  *(v3 + 72) = v2;

  return sub_22FFB14D8();
}

uint64_t DeviceIdentifiers.init(chipID:boardID:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 17);
  v6 = *(result + 18);
  v7 = *(result + 20);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 17) = v5;
  *(a3 + 18) = v6;
  *(a3 + 20) = v7;
  *(a3 + 24) = a2;
  return result;
}

uint64_t sub_22FEB2E28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v21[0] = 0;
  v14 = 0;
  v15 = v21;
  v16 = &v14;
  sub_22FED55F8(v5, v6, sub_22FEB341C);
  v7 = v19;
  if (v19 == 2)
  {
    sub_22FEA55AC(v4, v3);
    sub_22FEA55AC(v5, v6);
    v8 = 0;
  }

  else
  {
    v9 = v17;
    v13 = v18;
    v17 = v4;
    v18 = v3;
    v19 = v5;
    v20 = v6;
    v10 = SEP.Attestation.boardID.getter();
    sub_22FEA55AC(v4, v3);
    result = sub_22FEA55AC(v5, v6);
    if ((v10 & 0x100000000) == 0)
    {
      *a2 = v9;
      *(a2 + 8) = v13;
      *(a2 + 16) = v7 & 1;
      *(a2 + 17) = BYTE1(v7) & 1;
      *(a2 + 18) = BYTE2(v7);
      *(a2 + 20) = HIDWORD(v7);
      *(a2 + 24) = v10;
      return result;
    }

    v8 = 1;
  }

  sub_22FEB3438();
  swift_allocError();
  *v12 = v8;
  return swift_willThrow();
}

uint64_t static DeviceIdentifiers.== infix(_:_:)(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 16);
  v12 = *(a2 + 17);
  v13 = *(a2 + 18);
  v14 = a2[6];
  v21 = a2[5];
  v22 = v2;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  return _s16CloudAttestation3SEPO8IdentityV2eeoiySbAE_AEtFZ_0(&v22, &v16) & (v8 == v14);
}

uint64_t DeviceIdentifiers.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_22FFB1CD8();
  MEMORY[0x23190E490](v1);
  sub_22FFB1CC8();
  sub_22FFB1CD8();
  return sub_22FFB1CD8();
}

uint64_t DeviceIdentifiers.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_22FFB1CA8();
  sub_22FFB1CD8();
  MEMORY[0x23190E490](v1);
  sub_22FFB1CC8();
  sub_22FFB1CD8();
  sub_22FFB1CD8();
  return sub_22FFB1CF8();
}

uint64_t sub_22FEB31AC()
{
  v1 = *(v0 + 8);
  sub_22FFB1CA8();
  sub_22FFB1CD8();
  MEMORY[0x23190E490](v1);
  sub_22FFB1CC8();
  sub_22FFB1CD8();
  sub_22FFB1CD8();
  return sub_22FFB1CF8();
}

uint64_t sub_22FEB326C(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 16);
  v12 = *(a2 + 17);
  v13 = *(a2 + 18);
  v14 = a2[6];
  v21 = a2[5];
  v22 = v2;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  return _s16CloudAttestation3SEPO8IdentityV2eeoiySbAE_AEtFZ_0(&v22, &v16) & (v8 == v14);
}

unint64_t sub_22FEB3308()
{
  result = qword_27DAF19E0;
  if (!qword_27DAF19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF19E0);
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_22FEB3370(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 28))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22FEB33C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_22FEB3438()
{
  result = qword_27DAF19E8;
  if (!qword_27DAF19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF19E8);
  }

  return result;
}

uint64_t _s5ErrorOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s5ErrorOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22FEB35E0()
{
  result = qword_27DAF19F0;
  if (!qword_27DAF19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF19F0);
  }

  return result;
}

uint64_t EnsembleAttestor.attestingKey.getter()
{
  if (qword_27DAF14C8 != -1)
  {
    swift_once();
  }

  if (qword_27DB05B28)
  {
    v1 = qword_27DB05B28;
    Duplicate = SecKeyCreateDuplicate();
    if (Duplicate)
    {
      v0 = Duplicate;
    }

    else
    {
      type metadata accessor for NodeAttestor.Error(0);
      sub_22FEAF398();
      swift_allocError();
      v0 = v6;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
      (*(*(v7 - 8) + 56))(v0, 1, 7, v7);
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for NodeAttestor.Error(0);
    sub_22FEAF398();
    swift_allocError();
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
    (*(*(v5 - 8) + 56))(v4, 1, 7, v5);
    swift_willThrow();
  }

  return v0;
}

double sub_22FEB37F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  *(a2 + 8) = xmmword_22FFB3760;
  *(a2 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a2 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a2 + 147) = 0;
  *(v12 + 8) = xmmword_22FFB3760;
  *(&v16 + 1) = &type metadata for SEP.PhysicalDevice;
  *&v17 = &protocol witness table for SEP.PhysicalDevice;
  *(&v19[1] + 3) = 0;
  static Environment.default.getter(&v9);
  sub_22FF9A7CC(v2, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v17 = v10[6];
  v18 = v10[7];
  v19[0] = *v11;
  *(v19 + 13) = *&v11[13];
  v13 = v10[2];
  v14 = v10[3];
  v15 = v10[4];
  v16 = v10[5];
  v12[0] = v10[0];
  v12[1] = v10[1];
  __swift_destroy_boxed_opaque_existential_1((a2 + 64));
  v4 = v18;
  *(a2 + 96) = v17;
  *(a2 + 112) = v4;
  *(a2 + 128) = v19[0];
  *(a2 + 141) = *(v19 + 13);
  v5 = v14;
  *(a2 + 32) = v13;
  *(a2 + 48) = v5;
  v6 = v16;
  *(a2 + 64) = v15;
  *(a2 + 80) = v6;
  result = *v12;
  v8 = v12[1];
  *a2 = v12[0];
  *(a2 + 16) = v8;
  return result;
}

__n128 EnsembleAttestor.init(attestor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 141) = *(a1 + 141);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  return result;
}

uint64_t EnsembleAttestor.init<A>(assetProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  (*(v8 + 16))(v10, a1, a2);
  v11 = NodeAttestor.init<A, B>(transparencyProver:assetProvider:)(&v14, v10, &type metadata for NopTransparencyLog, a2, &protocol witness table for NopTransparencyLog, a3, a4);
  return (*(v8 + 8))(a1, a2, v11);
}

uint64_t EnsembleAttestor.attest(key:using:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return NodeAttestor.attest(key:using:expiration:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FEB3B54()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB059A0);
  __swift_project_value_buffer(v0, qword_27DB059A0);
  return sub_22FFB12E8();
}

uint64_t type metadata accessor for EnsembleValidator(uint64_t a1)
{
  result = qword_27DAF1A38;
  if (!qword_27DAF1A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnsembleValidator.strictCertificateValidation.setter(char a1)
{
  result = type metadata accessor for EnsembleValidator(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t EnsembleValidator.roots.getter()
{
  type metadata accessor for EnsembleValidator(0);
}

uint64_t EnsembleValidator.roots.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EnsembleValidator(0) + 72);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EnsembleValidator.clock.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EnsembleValidator(0) + 76);

  return sub_22FEB3E04(a1, v3);
}

uint64_t sub_22FEB3E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EnsembleValidator.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnsembleValidator(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + v4[15]);
  *v7 = 0;
  v7[1] = 0;
  *(a1 + v4[16]) = 0;
  *(a1 + v4[17]) = 1;
  *(a1 + v4[18]) = 1;
  *(a1 + v4[19]) = 1;
  v8 = v4[21];
  v9 = sub_22FFB0908();
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v12[3] = &type metadata for SEP.PhysicalDevice;
  v12[4] = &protocol witness table for SEP.PhysicalDevice;
  sub_22FEB4010(v12, v6);
  result = sub_22FEAEA34(a1 + v8, &qword_27DAF1510, &qword_22FFB3800);
  if (!v1)
  {
    return sub_22FEBF7D4(v6, a1, type metadata accessor for EnsembleValidator);
  }

  return result;
}

uint64_t sub_22FEB4010@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  static DeviceMode.local.getter(v7);
  v4 = LOWORD(v7[0]) | (BYTE2(v7[0]) << 16);
  if (LOBYTE(v7[0]) == 2)
  {
    sub_22FEB44C8();
    swift_allocError();
    *v5 = 11;
    swift_willThrow();
  }

  else
  {
    sub_22FEAF43C(a1, v7);
    sub_22FEB451C(v7, v4 & 0x1010101, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EnsembleValidator.init<A>(sepProtocol:assetProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DeviceMode.local.getter(v17);
  v13 = LOWORD(v17[0]) | (BYTE2(v17[0]) << 16);
  if (LOBYTE(v17[0]) == 2)
  {
    sub_22FEB44C8();
    swift_allocError();
    *v14 = 11;
    swift_willThrow();
  }

  else
  {
    sub_22FEAF43C(a1, v17);
    (*(v10 + 16))(v12, a2, a3);
    v18 = v13 & 0x101;
    v19 = BYTE2(v13) & 1;
    sub_22FEB4AC0(v17, v12, &v18, a3, a4, a5);
  }

  (*(v10 + 8))(a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EnsembleValidator.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v25 = a2;
  v4 = type metadata accessor for EnsembleValidator(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = (a3 + v8[13]);
  *v11 = 0;
  v11[1] = 0;
  *(a3 + v8[14]) = 0;
  *(a3 + v8[15]) = 1;
  *(a3 + v8[16]) = 1;
  *(a3 + v8[17]) = 1;
  v12 = v8[19];
  v13 = sub_22FFB0908();
  v14 = *(*(v13 - 8) + 56);
  v14(a3 + v12, 1, 1, v13);
  v15 = &v10[v4[13]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v10[v4[14]] = 0;
  v10[v4[15]] = 1;
  v10[v4[16]] = 1;
  v10[v4[17]] = 1;
  v16 = v4[19];
  v14(&v10[v16], 1, 1, v13);
  v24[3] = &type metadata for SEP.PhysicalDevice;
  v24[4] = &protocol witness table for SEP.PhysicalDevice;
  v17 = v23;
  sub_22FEB4010(v24, v7);
  sub_22FEAEA34(&v10[v16], &qword_27DAF1510, &qword_22FFB3800);
  if (v17)
  {

    return sub_22FEAEA34(a3 + v12, &qword_27DAF1510, &qword_22FFB3800);
  }

  else
  {
    sub_22FEBF7D4(v7, v10, type metadata accessor for EnsembleValidator);
    sub_22FEAEA34(a3 + v12, &qword_27DAF1510, &qword_22FFB3800);
    sub_22FEBF7D4(v10, a3, type metadata accessor for EnsembleValidator);
    v19 = (a3 + v4[11]);

    v20 = v25;
    *v19 = v22;
    v19[1] = v20;
  }

  return result;
}

unint64_t sub_22FEB44C8()
{
  result = qword_27DAF19F8;
  if (!qword_27DAF19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF19F8);
  }

  return result;
}

void sub_22FEB451C(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for EnsembleValidator(0);
  v8 = (a3 + v7[13]);
  *v8 = 0;
  v8[1] = 0;
  *(a3 + v7[14]) = 0;
  *(a3 + v7[15]) = 1;
  *(a3 + v7[16]) = 1;
  *(a3 + v7[17]) = 1;
  v9 = v7[19];
  v10 = sub_22FFB0908();
  v11 = *(*(v10 - 8) + 56);
  v11(a3 + v9, 1, 1, v10);
  *(a3 + v7[18]) = MEMORY[0x277D84F90];
  sub_22FEAEA34(a3 + v9, &qword_27DAF1510, &qword_22FFB3800);
  v11(a3 + v9, 1, 1, v10);
  sub_22FEB5254(&v43);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_22FEAEA34(a3 + v9, &qword_27DAF1510, &qword_22FFB3800);
    return;
  }

  v12 = v44;
  v13 = v45;
  v14 = v46;
  v15 = v47;
  v16 = a3 + v7[5];
  *v16 = v43;
  *(v16 + 8) = v12;
  *(v16 + 16) = v13;
  *(v16 + 17) = v14;
  *(v16 + 18) = v15;
  *(v16 + 20) = v48;
  v17 = type metadata accessor for Release(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FEBB004(0, v19);
  sub_22FEBF7D4(v19, a3, type metadata accessor for Release);
  if (a2)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  *(a3 + v7[6]) = v20;
  if ((a2 & 0x100) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  *(a3 + v7[7]) = v21;
  if ((a2 & 0x10000) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  *(a3 + v7[8]) = v22;
  v23 = sub_22FEA2AC0();
  if (qword_281490280 != -1)
  {
    swift_once();
  }

  v24 = sub_22FFB0958();
  v25 = __swift_project_value_buffer(v24, qword_281491418);
  if (*(v23 + 16) && (v26 = sub_22FFA6214(v25), (v27 & 1) != 0) && (v28 = *(*(v23 + 56) + 8 * v26), , , (v29 = *(v28 + 16)) != 0))
  {
    v30 = *(v28 + (v29 << 6));

    v31 = (v30 >> 2) & 1;
  }

  else
  {

    LOBYTE(v31) = 0;
  }

  *(a3 + v7[9]) = v31;
  v32 = (a3 + v7[11]);
  *v32 = sub_22FEB5580;
  v32[1] = 0;
  v33 = a3 + v7[12];
  *(v33 + 24) = &type metadata for PCC.AssetProvider;
  *(v33 + 32) = &protocol witness table for PCC.AssetProvider;
  if (!MEMORY[0x277CDBC48] || !MEMORY[0x277CDBC58] || !MEMORY[0x277CDBC60] || !MEMORY[0x277CDBC38] || !MEMORY[0x277CDBC40] || !MEMORY[0x277CDBC50])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    *(a3 + v7[10]) = 2;
    return;
  }

  sub_22FFB0A68();
  v34 = sub_22FFB0A48();
  v35 = sub_22FFB0A58();
  if (v35 <= 1)
  {
    if (!v35)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);

      *(a3 + v7[10]) = 0;
      return;
    }

    if (v35 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);

LABEL_42:
      v36 = v7[10];
      v37 = 2;
      goto LABEL_43;
    }

LABEL_34:
    if (qword_27DAF1248 != -1)
    {
      swift_once();
    }

    v38 = sub_22FFB12F8();
    __swift_project_value_buffer(v38, qword_27DB059A0);
    v39 = v34;
    v40 = sub_22FFB12D8();
    v41 = sub_22FFB1838();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134349056;
      sub_22FFB0A58();
      *(v42 + 4) = sub_22FFB0A78();

      _os_log_impl(&dword_22FE99000, v40, v41, "Unknown config security policy %{public}ld, defaulting to customer", v42, 0xCu);
      MEMORY[0x23190EFF0](v42, -1, -1);
    }

    else
    {

      v40 = v39;
    }

    __swift_destroy_boxed_opaque_existential_1(a1);
    goto LABEL_42;
  }

  if (v35 == 2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    v36 = v7[10];
    v37 = 3;
  }

  else
  {
    if (v35 != 3)
    {
      goto LABEL_34;
    }

    __swift_destroy_boxed_opaque_existential_1(a1);

    v36 = v7[10];
    v37 = 1;
  }

LABEL_43:
  *(a3 + v36) = v37;
}

uint64_t sub_22FEB4AC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a5;
  v76 = a2;
  v10 = *a3;
  v65 = a3[1];
  v66 = a3[2];
  LODWORD(v67) = v10;
  v11 = type metadata accessor for EnsembleValidator(0);
  v12 = (a6 + v11[13]);
  *v12 = 0;
  v12[1] = 0;
  *(a6 + v11[14]) = 0;
  *(a6 + v11[15]) = 1;
  *(a6 + v11[16]) = 1;
  *(a6 + v11[17]) = 1;
  v13 = v11[19];
  v14 = sub_22FFB0908();
  v15 = *(*(v14 - 8) + 56);
  v15(a6 + v13, 1, 1, v14);
  *(a6 + v11[18]) = MEMORY[0x277D84F90];
  sub_22FEAEA34(a6 + v13, &qword_27DAF1510, &qword_22FFB3800);
  v69 = v13;
  v15(a6 + v13, 1, 1, v14);
  sub_22FEB5254(&v70);
  if (v6)
  {
    (*(*(a4 - 8) + 8))(v76, a4);
    v16 = a1;
    goto LABEL_3;
  }

  v17 = v67;
  v64 = a1;
  v18 = v71;
  v19 = v72;
  v20 = v73;
  v21 = v74;
  v22 = a6 + v11[5];
  *v22 = v70;
  *(v22 + 8) = v18;
  *(v22 + 16) = v19;
  *(v22 + 17) = v20;
  *(v22 + 18) = v21;
  *(v22 + 20) = v75;
  v23 = type metadata accessor for Release(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v68;
  static Release.local<A>(assetProvider:)(a4, v68, v25);
  sub_22FEBF7D4(v25, a6, type metadata accessor for Release);
  if (v17)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  *(a6 + v11[6]) = v27;
  if (v65)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  *(a6 + v11[7]) = v28;
  if (v66)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  *(a6 + v11[8]) = v29;
  v30 = (*(v26 + 24))(a4, v26);
  v67 = 0;
  v32 = v30;
  if (qword_281490280 != -1)
  {
    swift_once();
  }

  v33 = sub_22FFB0958();
  v34 = __swift_project_value_buffer(v33, qword_281491418);
  if (*(v32 + 16) && (v35 = sub_22FFA6214(v34), (v36 & 1) != 0) && (v37 = *(*(v32 + 56) + 8 * v35), , , (v38 = *(v37 + 16)) != 0))
  {
    v39 = *(v37 + (v38 << 6));

    v40 = (v39 >> 2) & 1;
  }

  else
  {

    LOBYTE(v40) = 0;
  }

  *(a6 + v11[9]) = v40;
  v41 = (a6 + v11[11]);
  *v41 = sub_22FEB5580;
  v41[1] = 0;
  v42 = (a6 + v11[12]);
  v42[3] = a4;
  v42[4] = v26;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  v44 = a4;
  v45 = *(a4 - 8);
  v46 = v45;
  v47 = v44;
  (*(v45 + 16))(boxed_opaque_existential_1, v76);
  if (!MEMORY[0x277CDBC48] || !MEMORY[0x277CDBC58] || !MEMORY[0x277CDBC60] || !MEMORY[0x277CDBC38] || !MEMORY[0x277CDBC40] || !MEMORY[0x277CDBC50])
  {
    (*(v45 + 8))(v76, v47);
    result = __swift_destroy_boxed_opaque_existential_1(v64);
    *(a6 + v11[10]) = 2;
    return result;
  }

  sub_22FFB0A68();
  v48 = v67;
  v49 = sub_22FFB0A48();
  if (v48)
  {
    (*(v45 + 8))(v76, v47);
    __swift_destroy_boxed_opaque_existential_1(v64);
    sub_22FEBF83C(a6, type metadata accessor for Release);
    if (v67)
    {
      return sub_22FEAEA34(a6 + v69, &qword_27DAF1510, &qword_22FFB3800);
    }

    v16 = (a6 + v11[12]);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v16);
    return sub_22FEAEA34(a6 + v69, &qword_27DAF1510, &qword_22FFB3800);
  }

  v50 = v49;
  v51 = sub_22FFB0A58();
  if (v51 <= 1)
  {
    v52 = v47;
    if (!v51)
    {

      (*(v45 + 8))(v76, v47);
      result = __swift_destroy_boxed_opaque_existential_1(v64);
      *(a6 + v11[10]) = 0;
      return result;
    }

    v53 = v11;
    if (v51 == 1)
    {

      (*(v45 + 8))(v76, v52);
      v54 = v64;
LABEL_49:
      result = __swift_destroy_boxed_opaque_existential_1(v54);
      v55 = v53[10];
      v56 = 2;
      goto LABEL_50;
    }

LABEL_41:
    if (qword_27DAF1248 != -1)
    {
      swift_once();
    }

    v57 = sub_22FFB12F8();
    __swift_project_value_buffer(v57, qword_27DB059A0);
    v58 = v50;
    v59 = sub_22FFB12D8();
    v60 = sub_22FFB1838();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 134349056;
      LODWORD(v69) = v60;
      sub_22FFB0A58();
      *(v61 + 4) = sub_22FFB0A78();

      _os_log_impl(&dword_22FE99000, v59, v69, "Unknown config security policy %{public}ld, defaulting to customer", v61, 0xCu);
      MEMORY[0x23190EFF0](v61, -1, -1);
    }

    else
    {
    }

    v62 = v64;

    (*(v46 + 8))(v76, v52);
    v54 = v62;
    goto LABEL_49;
  }

  v52 = v47;
  if (v51 == 2)
  {

    (*(v45 + 8))(v76, v47);
    result = __swift_destroy_boxed_opaque_existential_1(v64);
    v55 = v11[10];
    v56 = 3;
  }

  else
  {
    v53 = v11;
    if (v51 != 3)
    {
      goto LABEL_41;
    }

    (*(v45 + 8))(v76, v52);
    result = __swift_destroy_boxed_opaque_existential_1(v64);
    v55 = v11[10];
    v56 = 1;
  }

LABEL_50:
  *(a6 + v55) = v56;
  return result;
}

uint64_t sub_22FEB5254@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for IORegistryEntry();
  inited = swift_initStackObject();
  v3 = *MEMORY[0x277CD2898];
  v4 = sub_22FFB1488();
  v5 = IORegistryEntryCopyFromPath(v3, v4);

  *(inited + 16) = v5;
  if (!v5)
  {
    swift_setDeallocating();
    IOObjectRelease(0);
    sub_22FEB44C8();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  result = sub_22FF95280(0x7974697275636573);
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_9;
  }

  if ((result & 0xFFFFFF00) != 0)
  {
    __break(1u);
    return result;
  }

  if (result > 3u)
  {
LABEL_9:
    sub_22FEB44C8();
    swift_allocError();
    v15 = 1;
    goto LABEL_10;
  }

  v7 = result;
  v8 = sub_22FF95280(0xD00000000000001ALL);
  if ((v8 & 0x100000000) != 0)
  {
    sub_22FEB44C8();
    swift_allocError();
    v15 = 2;
    goto LABEL_10;
  }

  v9 = v8;
  v10 = sub_22FF95280(0xD00000000000001ELL);
  if ((v10 & 0x100000000) != 0)
  {
    sub_22FEB44C8();
    swift_allocError();
    v15 = 3;
    goto LABEL_10;
  }

  v11 = v10;
  v12 = sub_22FF95474(0x632D657571696E75);
  if (v13)
  {
    sub_22FEB44C8();
    swift_allocError();
    v15 = 6;
LABEL_10:
    *v14 = v15;
    swift_willThrow();
    swift_setDeallocating();
    return IOObjectRelease(v5);
  }

  v21 = v12;
  v17 = sub_22FF95280(0x64692D70696863);
  if ((v17 & 0x100000000) != 0)
  {
    sub_22FEB44C8();
    swift_allocError();
    v15 = 5;
    goto LABEL_10;
  }

  v18 = v17;
  v19 = sub_22FF95280(0x64692D6472616F62);
  if ((v19 & 0x100000000) != 0)
  {
    sub_22FEB44C8();
    swift_allocError();
    v15 = 4;
    goto LABEL_10;
  }

  v20 = v19;
  swift_setDeallocating();
  result = IOObjectRelease(v5);
  *a1 = v18;
  *(a1 + 8) = v21;
  *(a1 + 16) = v11 == 1;
  *(a1 + 17) = v9 == 1;
  *(a1 + 18) = v7;
  *(a1 + 20) = 0;
  *(a1 + 24) = v20;
  return result;
}

uint64_t EnsembleValidator.policy.getter@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v2 = type metadata accessor for SoftwareReleasePolicy(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v101 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v98 = &v79 - v5;
  v94 = sub_22FFB0A08();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for KeyOptionsPolicy(0);
  v7 = MEMORY[0x28223BE20](v92);
  v99 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v96 = &v79 - v9;
  v10 = type metadata accessor for SecureConfigPolicy(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v97 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v79 - v13;
  v14 = type metadata accessor for EnsembleValidator(0);
  v88 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v89 = v15;
  v90 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A00, &qword_22FFB3808);
  v86 = *(v87 - 1);
  MEMORY[0x28223BE20](v87);
  v84 = &v79 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A08, &unk_22FFB3810);
  v17 = MEMORY[0x28223BE20](v81);
  v82 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v83 = &v79 - v20;
  MEMORY[0x28223BE20](v19);
  v80 = &v79 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A10, &qword_22FFC02F0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v95 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v102 = &v79 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v79 - v27;
  v29 = type metadata accessor for X509Policy(0);
  v30 = (v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v103 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v79 - v33;
  v35 = *(v1 + v14[17]);
  v36 = v1;
  v37 = sub_22FEB6388();
  sub_22FEBF3A4(v36 + v14[19], v28, &qword_27DAF1510, &qword_22FFB3800);
  *(v34 + 1) = MEMORY[0x277D84F90];
  v38 = v30[8];
  v39 = sub_22FFB0908();
  v40 = 1;
  (*(*(v39 - 8) + 56))(&v34[v38], 1, 1, v39);
  v41 = &v34[v30[9]];
  *v41 = 0;
  v41[8] = 1;
  v42 = &v34[v30[10]];
  v85 = v35;
  *v34 = v35;
  v43 = v14;
  sub_22FED2C04(v37);
  sub_22FEB3E04(v28, &v34[v38]);
  *v42 = 0;
  *(v42 + 1) = 0;
  *v41 = 0;
  v41[8] = 1;
  v44 = *(v36 + v14[14]);
  if (v44)
  {

    v45 = v80;
    sub_22FFB12E8();
    v46 = sub_22FEBE724(v44);

    *(v45 + *(v81 + 36)) = v46;
    v47 = v83;
    sub_22FEBF3A4(v45, v83, &qword_27DAF1A08, &unk_22FFB3810);
    v48 = v82;
    sub_22FEBF3A4(v47, v82, &qword_27DAF1A08, &unk_22FFB3810);
    v49 = v48;
    v50 = v84;
    sub_22FEBF4E4(v49, v84, &qword_27DAF1A08, &unk_22FFB3810);
    sub_22FEAEA34(v45, &qword_27DAF1A08, &unk_22FFB3810);
    sub_22FEAEA34(v47, &qword_27DAF1A08, &unk_22FFB3810);
    v51 = v102;
    sub_22FEBF4E4(v50, v102, &qword_27DAF1A00, &qword_22FFB3808);
    v40 = 0;
  }

  else
  {
    v51 = v102;
  }

  (*(v86 + 56))(v51, v40, 1, v87);
  SEPAttestationPolicy.init(insecure:)(v85 ^ 1, &v119);
  v52 = v120;
  v87 = v119;
  v53 = v121;
  v54 = v90;
  sub_22FEBF40C(v36, v90, type metadata accessor for EnsembleValidator);
  v55 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v89 = swift_allocObject();
  sub_22FEBF7D4(v54, v89 + v55, type metadata accessor for EnsembleValidator);
  sub_22FEA5C80(v52, v53);
  LODWORD(v90) = *(v36 + v43[9]);
  v56 = type metadata accessor for SEP.SealedHash(0);
  (*(*(v56 - 8) + 56))(v104, 1, 1, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A18, &unk_22FFB3820);
  v57 = v93;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_22FFB2D20;
  sub_22FFB09E8();
  sub_22FFB09D8();
  v119 = v58;
  sub_22FEBF300(&qword_281491308, MEMORY[0x277CEE010], MEMORY[0x277CEE020]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A20, &unk_22FFC0180);
  sub_22FEBF78C(&qword_28148F150, &qword_27DAF1A20, &unk_22FFC0180, MEMORY[0x277D83970]);
  v59 = v91;
  v60 = v94;
  sub_22FFB1938();
  v61 = v96;
  (*(v57 + 32))(v96, v59, v60);
  type metadata accessor for KeyOptionsPolicy.Assertion(0);
  swift_storeEnumTagMultiPayload();
  v62 = *(v92 + 20);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  (*(*(v63 - 8) + 56))(v61 + v62, 1, 1, v63);
  v64 = v98;
  sub_22FEBF40C(v36, v98, type metadata accessor for Release);
  v65 = v43[6];
  v66 = v36 + v43[5];
  LODWORD(v94) = *(v66 + 16);
  LODWORD(v93) = *(v66 + 17);
  LODWORD(v92) = *(v66 + 18);
  LODWORD(v91) = *v66;
  LODWORD(v88) = *(v66 + 24);
  LOBYTE(v66) = *(v36 + v65);
  LOBYTE(v65) = *(v36 + v43[7]);
  v67 = *(v36 + v43[8]);
  LODWORD(v86) = 0x10002u >> (8 * v66);
  v85 = 0x10002u >> (8 * v65);
  LODWORD(v60) = 0x10002u >> (8 * v67);
  v68 = *(v36 + v43[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A30, &qword_22FFB4C70);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_22FFB2D10;
  *(v69 + 32) = v68;
  v70 = v103;
  sub_22FEBF40C(v34, v103, type metadata accessor for X509Policy);
  v119 = v70;
  v71 = v95;
  sub_22FEBF3A4(v51, v95, &qword_27DAF1A10, &qword_22FFC02F0);
  v116 = v87;
  v117 = sub_22FEBAF78;
  v118 = v89;
  v114 = 0;
  v115 = v90;
  v120 = v71;
  v121 = &v116;
  v122 = &v114;
  v90 = v34;
  v72 = v104;
  v73 = v97;
  sub_22FEBF40C(v104, v97, type metadata accessor for SecureConfigPolicy);
  v123 = v73;
  v74 = v99;
  sub_22FEBF40C(v61, v99, type metadata accessor for KeyOptionsPolicy);
  v124 = v74;
  v75 = v101;
  sub_22FEBF40C(v64, v101, type metadata accessor for SoftwareReleasePolicy);
  v109[0] = v94;
  v109[1] = v93;
  v109[2] = v92;
  v110 = v91;
  v111 = v88;
  v112 = 2;
  v113 = 0;
  v125 = v75;
  v126 = v109;
  v106[0] = v86;
  v106[1] = v85;
  v106[2] = v60;
  v108 = 0;
  v107 = 2;
  v105[0] = v69;
  v105[1] = MEMORY[0x277D84F90];
  v127 = v106;
  v128 = v105;
  sub_22FFA20EC(&v119, v100);
  sub_22FEBF83C(v64, type metadata accessor for SoftwareReleasePolicy);
  sub_22FEBF83C(v61, type metadata accessor for KeyOptionsPolicy);
  sub_22FEBF83C(v72, type metadata accessor for SecureConfigPolicy);
  sub_22FEAEA34(v102, &qword_27DAF1A10, &qword_22FFC02F0);
  sub_22FEBF83C(v90, type metadata accessor for X509Policy);

  sub_22FEBF83C(v75, type metadata accessor for SoftwareReleasePolicy);
  sub_22FEBF83C(v74, type metadata accessor for KeyOptionsPolicy);
  sub_22FEBF83C(v73, type metadata accessor for SecureConfigPolicy);

  v76 = v117;
  v77 = v118;
  sub_22FEBAFF4(v116);
  sub_22FEA5C80(v76, v77);
  sub_22FEAEA34(v71, &qword_27DAF1A10, &qword_22FFC02F0);
  return sub_22FEBF83C(v103, type metadata accessor for X509Policy);
}

uint64_t sub_22FEB6388()
{
  v1 = type metadata accessor for EnsembleValidator(0);
  if (*(v0 + *(v1 + 60)) == 1)
  {
    if (qword_281490B50 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v3 = *(v0 + *(v1 + 72));
    v4 = qword_281490B50;

    if (v4 != -1)
    {
      swift_once();
    }

    sub_22FECB2C8(v5);
    if (qword_27DAF1268 != -1)
    {
      swift_once();
    }

    sub_22FECB2C8(v6);
    return v3;
  }
}

uint64_t sub_22FEB64AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v61 = a3;
  v80 = *MEMORY[0x277D85DE8];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AB8, &qword_22FFB3A90);
  MEMORY[0x28223BE20](v63);
  v62 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AC0, &qword_22FFB3A98);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v65 = &v57 - v10;
  v11 = type metadata accessor for PolicyBuilder.PredicatePolicy(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v64 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v57 - v15;
  MEMORY[0x28223BE20](v14);
  v70 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AC8, &qword_22FFB3AA0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v66 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - v20;
  v22 = *a1;
  v67 = a1[1];
  v68 = v22;
  v23 = a1[2];
  v24 = a1[3];
  v25 = type metadata accessor for EnsembleValidator(0);
  v26 = v25;
  v27 = (a2 + *(v25 + 52));
  v28 = v27[1];
  v69 = v21;
  if (v28)
  {
    v58 = v9;
    v59 = v8;
    v60 = a2;
    v29 = *v27;
    v76[0] = 0;
    v72 = 0;
    MEMORY[0x28223BE20](v25);
    *(&v57 - 2) = v76;
    *(&v57 - 1) = &v72;
    sub_22FED55F8(v23, v24, sub_22FEBFA54);
    v30 = 0;
    v31 = 0;
    if (v75 != 2)
    {
      v32 = v73;
      v33 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_22FFB2D20;
      v35 = MEMORY[0x277D84D30];
      *(v34 + 56) = MEMORY[0x277D84CC0];
      *(v34 + 64) = v35;
      v36 = MEMORY[0x277D84D38];
      *(v34 + 32) = v32;
      v37 = MEMORY[0x277D84D90];
      *(v34 + 96) = v36;
      *(v34 + 104) = v37;
      *(v34 + 72) = v33;
      v30 = sub_22FFB14D8();
      v31 = v38;
    }

    *(&v57 - 4) = MEMORY[0x28223BE20](v30);
    *(&v57 - 3) = v31;
    *(&v57 - 2) = v29;
    *(&v57 - 1) = v28;
    v39 = v70;
    sub_22FFB0998();

    v40 = v71;
    sub_22FEBF40C(v39, v71, type metadata accessor for PolicyBuilder.PredicatePolicy);
    v41 = v64;
    sub_22FEBF40C(v40, v64, type metadata accessor for PolicyBuilder.PredicatePolicy);
    v42 = v41;
    v43 = v65;
    sub_22FEBF7D4(v42, v65, type metadata accessor for PolicyBuilder.PredicatePolicy);
    sub_22FEBF83C(v39, type metadata accessor for PolicyBuilder.PredicatePolicy);
    sub_22FEBF83C(v40, type metadata accessor for PolicyBuilder.PredicatePolicy);
    v21 = v69;
    sub_22FEBF4E4(v43, v69, &qword_27DAF1AC0, &qword_22FFB3A98);
    (*(v58 + 56))(v21, 0, 1, v59);
    v4 = v3;
    a2 = v60;
  }

  else
  {
    (*(v9 + 56))(v21, 1, 1, v8);
  }

  v44 = *(a2 + *(v26 + 44));
  v73 = v68;
  v74 = v67;
  *&v75 = v23;
  *(&v75 + 1) = v24;
  sub_22FEA5608(v68, v67);
  sub_22FEA5608(v23, v24);
  sub_22FEB2E28(&v73, v76);
  if (v4)
  {
    return sub_22FEAEA34(v21, &qword_27DAF1AC8, &qword_22FFB3AA0);
  }

  LODWORD(v73) = v76[0];
  v74 = v76[1];
  LOWORD(v75) = v77;
  BYTE2(v75) = v78;
  *(&v75 + 4) = v79;
  v46 = v44(&v73);
  v68 = &v57;
  *(&v57 - 16) = MEMORY[0x28223BE20](v46) & 1;
  v47 = v70;
  sub_22FFB0998();
  v48 = v66;
  sub_22FEBF3A4(v21, v66, &qword_27DAF1AC8, &qword_22FFB3AA0);
  v49 = v71;
  sub_22FEBF40C(v47, v71, type metadata accessor for PolicyBuilder.PredicatePolicy);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AD0, &qword_22FFB3AA8);
  v51 = v61;
  *(v61 + 24) = v50;
  v51[4] = &protocol witness table for PolicyBuilder.TuplePolicy<Pack{repeat A}>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
  v53 = v48;
  v54 = v62;
  sub_22FEBF3A4(v53, v62, &qword_27DAF1AC8, &qword_22FFB3AA0);
  v55 = v63;
  v56 = *(v63 + 48);
  sub_22FEBF40C(v49, v54 + v56, type metadata accessor for PolicyBuilder.PredicatePolicy);
  sub_22FEBF4E4(v54, boxed_opaque_existential_1, &qword_27DAF1AC8, &qword_22FFB3AA0);
  sub_22FEBF7D4(v54 + v56, boxed_opaque_existential_1 + *(v55 + 48), type metadata accessor for PolicyBuilder.PredicatePolicy);
  sub_22FEBF83C(v47, type metadata accessor for PolicyBuilder.PredicatePolicy);
  sub_22FEAEA34(v69, &qword_27DAF1AC8, &qword_22FFB3AA0);
  sub_22FEBF83C(v49, type metadata accessor for PolicyBuilder.PredicatePolicy);
  return sub_22FEAEA34(v66, &qword_27DAF1AC8, &qword_22FFB3AA0);
}

uint64_t sub_22FEB6BFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AD8, &qword_22FFB3AB0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  v19 = a1;
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AE0, &qword_22FFB3AB8);
  sub_22FFB0638();
  v19 = a3;
  v20 = a4;
  sub_22FFB0638();
  a5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AE8, &qword_22FFB3AC0);
  a5[4] = sub_22FEBF68C(&qword_27DAF1AF0, &qword_27DAF1AE8, &qword_22FFB3AC0, sub_22FEBF54C);
  __swift_allocate_boxed_opaque_existential_1(a5);
  sub_22FEBF78C(&qword_27DAF1B10, &qword_27DAF1AD8, &qword_22FFB3AB0, MEMORY[0x277CC9080]);
  sub_22FEBF620(&qword_27DAF1B18, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
  sub_22FFB0628();
  v17 = *(v11 + 8);
  v17(v14, v10);
  return (v17)(v16, v10);
}

uint64_t sub_22FEB6E3C@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B20, &qword_22FFB3AC8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-v9];
  v13[15] = a1;
  sub_22FFB0638();
  v13[14] = 1;
  sub_22FFB0638();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B28, &unk_22FFB3AD0);
  a2[4] = sub_22FEBF68C(&qword_27DAF1B30, &qword_27DAF1B28, &unk_22FFB3AD0, sub_22FEBF708);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_22FEBF78C(&qword_27DAF1B40, &qword_27DAF1B20, &qword_22FFB3AC8, MEMORY[0x277CC9080]);
  sub_22FFB0628();
  v11 = *(v5 + 8);
  v11(v8, v4);
  return (v11)(v10, v4);
}

uint64_t EnsembleValidator.validate(bundle:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = type metadata accessor for EnsembleValidator(0);
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEB70DC, 0, 0);
}

uint64_t sub_22FEB70DC()
{
  v1 = (v0[8] + *(v0[9] + 48));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_22FEB7208;

  return v6(v2, v3);
}

uint64_t sub_22FEB7208(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_22FEB761C;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_22FEB7334;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FEB7334()
{
  v1 = v0[12];
  sub_22FEBF40C(v0[8], v0[10], type metadata accessor for EnsembleValidator);
  if (v1)
  {
    v2 = v0[12];
    v4 = v0[9];
    v3 = v0[10];
    *(v3 + *(v4 + 68)) = *(v2 + 16) != 0;
    v5 = sub_22FEBE9A0(v2);

    *(v3 + *(v4 + 60)) = v5 & 1;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    v8 = v0[9];
    v7 = v0[10];
    *(v7 + *(v8 + 68)) = 0;
    *(v7 + *(v8 + 60)) = 0;
  }

  *(v0[10] + *(v0[9] + 64)) = v6;
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_22FEB7484;
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[2];
  v15 = v0[3];

  return sub_22FEB7794(v14, v15, v12, v13, v10, v11);
}

uint64_t sub_22FEB7484()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_22FEB7710;
  }

  else
  {
    v2 = sub_22FEB7598;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEB7598()
{
  sub_22FEBF83C(*(v0 + 80), type metadata accessor for EnsembleValidator);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FEB761C()
{
  sub_22FEBF40C(v0[8], v0[10], type metadata accessor for EnsembleValidator);
  v2 = v0[9];
  v1 = v0[10];
  *(v1 + *(v2 + 68)) = 0;
  *(v1 + *(v2 + 60)) = 0;
  *(v0[10] + *(v0[9] + 64)) = 0;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_22FEB7484;
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_22FEB7794(v8, v9, v6, v7, v4, v5);
}

uint64_t sub_22FEB7710()
{
  sub_22FEBF83C(*(v0 + 80), type metadata accessor for EnsembleValidator);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FEB7794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  type metadata accessor for AttestationBundle(0);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v7[39] = swift_task_alloc();
  v8 = sub_22FFB0EE8();
  v7[40] = v8;
  v7[41] = *(v8 - 8);
  v7[42] = swift_task_alloc();
  v9 = sub_22FFB0908();
  v7[43] = v9;
  v7[44] = *(v9 - 8);
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v10 = sub_22FFB13C8();
  v7[47] = v10;
  v7[48] = *(v10 - 8);
  v7[49] = swift_task_alloc();
  v11 = sub_22FFB1398();
  v7[50] = v11;
  v7[51] = *(v11 - 8);
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AA0, &qword_22FFB3A78);
  v7[54] = swift_task_alloc();
  v12 = sub_22FFB12F8();
  v7[55] = v12;
  v7[56] = *(v12 - 8);
  v7[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEB7ABC, 0, 0);
}

uint64_t sub_22FEB7ABC()
{
  v1 = v0[54];
  v0[22] = type metadata accessor for EnsembleValidator(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AA8, &qword_22FFB3A80);
  sub_22FFB1508();
  sub_22FFB12E8();
  v0[23] = sub_22FFA7050(MEMORY[0x277D84F90]);
  EnsembleValidator.policy.getter(v1);
  v2 = swift_task_alloc();
  v0[58] = v2;
  *v2 = v0;
  v2[1] = sub_22FEB7C20;
  v3 = v0[33];

  return sub_22FFA3330(v3, (v0 + 23));
}

uint64_t sub_22FEB7C20()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  sub_22FEAEA34(*(v2 + 432), &qword_27DAF1AA0, &qword_22FFB3A78);
  if (v0)
  {
    v3 = sub_22FEB90C8;
  }

  else
  {
    v3 = sub_22FEB7D90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEB7D90()
{
  v173 = v0;
  v1 = v0;
  v172 = *MEMORY[0x277D85DE8];
  v3 = v0 + 184;
  v2 = *(v0 + 184);
  v4 = (v0 + 16);
  if (*(v2 + 16) && (v5 = sub_22FFA62AC(&type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy, 0xD000000000000014, 0x800000022FFC9B50), (v6 & 1) != 0))
  {
    sub_22FEBF2A4(*(v2 + 56) + 32 * v5, v4);
  }

  else
  {
    *v4 = 0u;
    *(v0 + 32) = 0u;
  }

  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
    if (swift_dynamicCast())
    {
      v166 = *(v0 + 64);
      v167 = *(v0 + 48);
      v7 = *(v0 + 472);
      goto LABEL_11;
    }
  }

  else
  {
    sub_22FEAEA34(v4, &qword_27DAF1A78, &unk_22FFB3A50);
  }

  v7 = *(v0 + 472);
  v8 = *(v0 + 264);
  v9 = *(v8 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  sub_22FEA5608(v10, v11);
  SEP.Attestation.init(from:)(v10, v11, &v168);
  if (v7)
  {
LABEL_13:

LABEL_14:
    v21 = v7;
    v22 = sub_22FFB12D8();
    v23 = sub_22FFB1838();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v22;
      v25 = v7;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v25;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_22FE99000, v24, v23, "AttestationBundle validation failed: %@", v26, 0xCu);
      sub_22FEAEA34(v27, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v27, -1, -1);
      v22 = v24;
      MEMORY[0x23190EFF0](v26, -1, -1);
    }

    v31 = v1[56];
    v30 = v1[57];
    v32 = v1[55];

    swift_willThrow();
    (*(v31 + 8))(v30, v32);

    v33 = v1[1];
    goto LABEL_17;
  }

  v166 = v169;
  v167 = v168;
LABEL_11:
  v12 = v3 + 8;
  v13 = v3 + 16;
  v14 = v1[57];
  v16 = v1[34];
  v15 = v1[35];
  v164 = v3;
  v17 = v1[33];
  v1[24] = 0;
  v1[25] = 0;
  v18 = swift_task_alloc();
  *(v18 + 16) = v12;
  *(v18 + 24) = v13;
  v19 = *(&v166 + 1);
  sub_22FED55F8(v166, *(&v166 + 1), sub_22FEBFA3C);

  v20 = v168;
  sub_22FF85468(v16, v15, v168, *(&v168 + 1), v17, v14);
  sub_22FEA56EC(v20, *(&v20 + 1));
  if (v7)
  {
    sub_22FEA55AC(v167, *(&v167 + 1));
    sub_22FEA55AC(v166, *(&v166 + 1));
    goto LABEL_13;
  }

  v163 = v166;
  v168 = v167;
  v169 = v166;
  SEP.Attestation.publicKeyData.getter(&v170);
  *&v166 = v171;
  if ((~v171 & 0x3000000000000000) == 0)
  {

    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    v35 = swift_allocError();
    *v36 = 0xD000000000000017;
    v36[1] = 0x800000022FFC9B70;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v35;
LABEL_22:
    sub_22FEA55AC(v167, *(&v167 + 1));
    sub_22FEA55AC(v163, v19);
    goto LABEL_14;
  }

  v37 = v164;
  v38 = v170;
  sub_22FEA5600(v170, v171);
  v39 = sub_22FFB12D8();
  v40 = sub_22FFB1848();
  sub_22FEBF27C(v38, v166);
  v162 = v38;
  if (os_log_type_enabled(v39, v40))
  {
    v41 = v1[53];
    v158 = v1[51];
    v154 = v1[50];
    v42 = v1[49];
    v149 = v1[48];
    v43 = v1[47];
    buf = swift_slowAlloc();
    v160 = swift_slowAlloc();
    *&v168 = v160;
    *buf = 136315138;
    sub_22FEA5600(v38, v166);
    sub_22FEBF300(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    log = v39;
    sub_22FFB1388();
    sub_22FEA5600(v38, v166);
    sub_22FF9EA78(v38, v166 & 0xDFFFFFFFFFFFFFFFLL, v42);
    sub_22FEBF27C(v38, v166);
    sub_22FFB1368();
    sub_22FEBF27C(v38, v166);
    v44 = v43;
    v37 = v164;
    (*(v149 + 8))(v42, v44);
    sub_22FEBF300(&qword_28148F1B0, MEMORY[0x277CC5290], MEMORY[0x277CC52B0]);
    v45 = sub_22FFB1BA8();
    v47 = v46;
    (*(v158 + 8))(v41, v154);
    v48 = sub_22FF9E448(v45, v47, &v168);

    *(buf + 4) = v48;
    _os_log_impl(&dword_22FE99000, log, v40, "AttestationBundle passed validation for public key: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v160);
    MEMORY[0x23190EFF0](v160, -1, -1);
    MEMORY[0x23190EFF0](buf, -1, -1);
  }

  else
  {
  }

  v49 = v1[33];
  v50 = type metadata accessor for Proto_AttestationBundle(0);
  v51 = *(v49 + *(v50 + 20));
  v52 = (v51 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v53 = *v52;
  v54 = v52[1];
  v55 = v54 >> 62;
  if ((v54 >> 62) > 1)
  {
    if (v55 != 2 || *(v53 + 16) == *(v53 + 24))
    {
      goto LABEL_40;
    }
  }

  else if (v55)
  {
    if (v53 == v53 >> 32)
    {
      goto LABEL_40;
    }
  }

  else if ((v54 & 0xFF000000000000) == 0)
  {
    goto LABEL_40;
  }

  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  v56 = swift_task_alloc();
  *(v56 + 16) = v37 + 24;
  *(v56 + 24) = v37 + 32;
  sub_22FED55F8(v163, *(&v166 + 1), sub_22FEBFA3C);

  if (*(&v168 + 1) >> 60 == 15)
  {

    v57 = sub_22FFB12D8();
    v58 = sub_22FFB1838();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_22FE99000, v57, v58, "Bundle AppData is non-empty, but attestation contains no nonce", v59, 2u);
      MEMORY[0x23190EFF0](v59, -1, -1);
    }

    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    v60 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v60;
    sub_22FEBF27C(v162, v166);
    sub_22FEA55AC(v167, *(&v167 + 1));
    sub_22FEA55AC(v163, *(&v166 + 1));
    goto LABEL_14;
  }

  v152 = v50;
  v61 = v1[52];
  v161 = v1[51];
  v62 = v1[49];
  bufa = v1[50];
  v159 = v168;
  v63 = v1[47];
  v64 = v1[48];
  v141 = v1;
  v65 = *v52;
  v66 = v52[1];
  sub_22FEA5608(*v52, v66);
  sub_22FEBF300(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  sub_22FEA5608(v65, v66);
  sub_22FF9EA78(v65, v66, v62);
  sub_22FEA55AC(v65, v66);
  sub_22FFB1368();
  sub_22FEA55AC(v65, v66);
  v67 = *(v64 + 8);
  v68 = v63;
  v69 = *(&v159 + 1);
  v67(v62, v68);
  v70 = v159;
  v71 = sub_22FECAD68(v159, *(&v159 + 1));
  v72 = *(v161 + 8);
  v72(v61, bufa);
  if ((v71 & 1) == 0)
  {
    v119 = v141[37];
    v120 = v141[33];

    sub_22FEBF40C(v120, v119, type metadata accessor for AttestationBundle);
    sub_22FEA5608(v159, *(&v159 + 1));
    v121 = sub_22FFB12D8();
    v122 = sub_22FFB1838();
    sub_22FEA56EC(v159, *(&v159 + 1));
    if (os_log_type_enabled(v121, v122))
    {
      bufb = v122;
      v123 = v141[52];
      v124 = v141[49];
      v150 = v141[50];
      v125 = v141[47];
      v126 = v141[37];
      v147 = v126;
      v148 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      *&v168 = v165;
      *v148 = 136446466;
      v127 = *(v126 + SHIDWORD(v152[2].isa));
      v153 = v121;
      v128 = (v127 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
      swift_beginAccess();
      v130 = *v128;
      v129 = v128[1];
      sub_22FEA5608(v130, v129);
      sub_22FFB1388();
      sub_22FEA5608(v130, v129);
      sub_22FF9EA78(v130, v129, v124);
      sub_22FEA55AC(v130, v129);
      sub_22FFB1368();
      sub_22FEA55AC(v130, v129);
      v131 = v125;
      v69 = *(&v159 + 1);
      v70 = v159;
      v67(v124, v131);
      v132 = sub_22FF95DBC();
      v134 = v133;
      v72(v123, v150);
      sub_22FEBF83C(v147, type metadata accessor for AttestationBundle);
      v135 = sub_22FF9E448(v132, v134, &v168);

      *(v148 + 4) = v135;
      *(v148 + 12) = 2082;
      v136 = sub_22FEB0B54(v159, *(&v159 + 1));
      v138 = sub_22FF9E448(v136, v137, &v168);

      *(v148 + 14) = v138;
      _os_log_impl(&dword_22FE99000, v153, bufb, "Bundle AppData failed integrity check: (digest:%{public}s != nonce:%{public}s", v148, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190EFF0](v165, -1, -1);
      MEMORY[0x23190EFF0](v148, -1, -1);

      v1 = v141;
    }

    else
    {
      v1 = v141;
      v139 = v141[37];

      sub_22FEBF83C(v139, type metadata accessor for AttestationBundle);
    }

    v19 = *(&v166 + 1);
    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    v140 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v140;
    sub_22FEBF27C(v162, v166);
    sub_22FEA56EC(v70, v69);
    goto LABEL_22;
  }

  sub_22FEA56EC(v159, *(&v159 + 1));
  v1 = v141;
LABEL_40:
  v73 = v1[40];
  v74 = v1[41];
  v75 = v1[39];
  v76 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v51 + v76, v75, &qword_27DAF1520, &qword_22FFB3A30);
  v77 = *(v74 + 48);
  if (v77(v75, 1, v73) == 1)
  {
    v78 = v1[39];
    v79 = v1[40];
    sub_22FFB0ED8();
    if (v77(v78, 1, v79) != 1)
    {
      sub_22FEAEA34(v1[39], &qword_27DAF1520, &qword_22FFB3A30);
    }
  }

  else
  {
    (*(v1[41] + 32))(v1[42], v1[39], v1[40]);
  }

  v80 = v1[45];
  v82 = v1[43];
  v81 = v1[44];
  v84 = v1[41];
  v83 = v1[42];
  v85 = v1[40];
  sub_22FFB0EB8();
  (*(v84 + 8))(v83, v85);
  sub_22FFB08E8();
  LOBYTE(v85) = sub_22FFB0888();
  v86 = *(v81 + 8);
  v86(v80, v82);
  v87 = v1[46];
  v88 = v1[43];
  v89 = v1[44];
  if ((v85 & 1) == 0)
  {

    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    v117 = swift_allocError();
    (*(v89 + 16))(v118, v87, v88);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v117;
    sub_22FEA55AC(v167, *(&v167 + 1));
    sub_22FEA55AC(v163, *(&v166 + 1));
    sub_22FEBF27C(v162, v166);
    v86(v87, v88);
    goto LABEL_14;
  }

  v90 = v1[38];
  v91 = v1[33];
  v93 = v1[30];
  v92 = v1[31];
  *v93 = v38;
  v93[1] = v166;
  (*(v89 + 16))(v92, v87, v88);
  sub_22FEBF40C(v91, v90, type metadata accessor for AttestationBundle);
  v1[28] = 0;
  v1[29] = 0;
  v94 = swift_task_alloc();
  *(v94 + 16) = v164 + 40;
  *(v94 + 24) = v164 + 48;
  sub_22FEBF290(v38, v166);
  sub_22FED55F8(v163, *(&v166 + 1), sub_22FEBFA54);

  v95 = 0;
  v96 = 0;
  if (v169 != 2)
  {
    v97 = v168;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_22FFB2D20;
    v99 = MEMORY[0x277D84D30];
    *(v98 + 56) = MEMORY[0x277D84CC0];
    *(v98 + 64) = v99;
    v100 = MEMORY[0x277D84D38];
    *(v98 + 32) = v97;
    v101 = MEMORY[0x277D84D90];
    *(v98 + 96) = v100;
    *(v98 + 104) = v101;
    *(v98 + 72) = *(&v97 + 1);
    v95 = sub_22FFB14D8();
  }

  v144 = v96;
  v103 = v1[56];
  v102 = v1[57];
  v104 = v1[55];
  v105 = v1[46];
  v142 = v95;
  v106 = v1[43];
  v143 = v1[38];
  v107 = v1[32];
  v170 = v1[23];
  v108 = sub_22FEE2580();
  v145 = v109;
  v146 = v108;
  *&v168 = v1[23];
  v110 = AttestationPolicyContext.releaseDigest.getter();
  v112 = v111;
  sub_22FEA55AC(v167, *(&v167 + 1));
  sub_22FEA55AC(v163, *(&v166 + 1));
  sub_22FEBF27C(v162, v166);
  v86(v105, v106);
  (*(v103 + 8))(v102, v104);

  v113 = type metadata accessor for Validated.AttestationBundle(0);
  *(v107 + v113[8]) = 0;
  sub_22FEBF7D4(v143, v107, type metadata accessor for AttestationBundle);
  v114 = (v107 + v113[5]);
  *v114 = v142;
  v114[1] = v144;
  v115 = (v107 + v113[6]);
  *v115 = v146;
  v115[1] = v145;
  v116 = (v107 + v113[7]);
  *v116 = v110;
  v116[1] = v112;

  v33 = v1[1];
LABEL_17:

  return v33();
}

uint64_t sub_22FEB90C8()
{

  v1 = v0[59];
  v2 = v1;
  v3 = sub_22FFB12D8();
  v4 = sub_22FFB1838();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_22FE99000, v3, v4, "AttestationBundle validation failed: %@", v5, 0xCu);
    sub_22FEAEA34(v6, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v6, -1, -1);
    MEMORY[0x23190EFF0](v5, -1, -1);
  }

  v9 = v0[56];
  v10 = v0[57];
  v11 = v0[55];

  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_22FEB9308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  type metadata accessor for AttestationBundle(0);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v7[39] = swift_task_alloc();
  v8 = sub_22FFB0EE8();
  v7[40] = v8;
  v7[41] = *(v8 - 8);
  v7[42] = swift_task_alloc();
  v9 = sub_22FFB0908();
  v7[43] = v9;
  v7[44] = *(v9 - 8);
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v10 = sub_22FFB13C8();
  v7[47] = v10;
  v7[48] = *(v10 - 8);
  v7[49] = swift_task_alloc();
  v11 = sub_22FFB1398();
  v7[50] = v11;
  v7[51] = *(v11 - 8);
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A68, &qword_22FFB3A38);
  v7[54] = swift_task_alloc();
  v12 = sub_22FFB12F8();
  v7[55] = v12;
  v7[56] = *(v12 - 8);
  v7[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEB9630, 0, 0);
}

uint64_t sub_22FEB9630()
{
  v1 = v0[54];
  v0[22] = type metadata accessor for PCC.ComputeNodeValidator(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A70, &unk_22FFB3A40);
  sub_22FFB1508();
  sub_22FFB12E8();
  v0[23] = sub_22FFA7050(MEMORY[0x277D84F90]);
  PCC.ComputeNodeValidator.policy.getter(v1);
  v2 = swift_task_alloc();
  v0[58] = v2;
  *v2 = v0;
  v2[1] = sub_22FEB9794;
  v3 = v0[33];

  return sub_22FFA3FB4(v3, (v0 + 23));
}

uint64_t sub_22FEB9794()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  sub_22FEAEA34(*(v2 + 432), &qword_27DAF1A68, &qword_22FFB3A38);
  if (v0)
  {
    v3 = sub_22FEBF9C8;
  }

  else
  {
    v3 = sub_22FEB9904;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEB9904()
{
  v173 = v0;
  v1 = v0;
  v172 = *MEMORY[0x277D85DE8];
  v3 = v0 + 184;
  v2 = *(v0 + 184);
  v4 = (v0 + 16);
  if (*(v2 + 16) && (v5 = sub_22FFA62AC(&type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy, 0xD000000000000014, 0x800000022FFC9B50), (v6 & 1) != 0))
  {
    sub_22FEBF2A4(*(v2 + 56) + 32 * v5, v4);
  }

  else
  {
    *v4 = 0u;
    *(v0 + 32) = 0u;
  }

  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
    if (swift_dynamicCast())
    {
      v166 = *(v0 + 64);
      v167 = *(v0 + 48);
      v7 = *(v0 + 472);
      goto LABEL_11;
    }
  }

  else
  {
    sub_22FEAEA34(v4, &qword_27DAF1A78, &unk_22FFB3A50);
  }

  v7 = *(v0 + 472);
  v8 = *(v0 + 264);
  v9 = *(v8 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  sub_22FEA5608(v10, v11);
  SEP.Attestation.init(from:)(v10, v11, &v168);
  if (v7)
  {
LABEL_13:

LABEL_14:
    v21 = v7;
    v22 = sub_22FFB12D8();
    v23 = sub_22FFB1838();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v22;
      v25 = v7;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v25;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_22FE99000, v24, v23, "AttestationBundle validation failed: %@", v26, 0xCu);
      sub_22FEAEA34(v27, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v27, -1, -1);
      v22 = v24;
      MEMORY[0x23190EFF0](v26, -1, -1);
    }

    v31 = v1[56];
    v30 = v1[57];
    v32 = v1[55];

    swift_willThrow();
    (*(v31 + 8))(v30, v32);

    v33 = v1[1];
    goto LABEL_17;
  }

  v166 = v169;
  v167 = v168;
LABEL_11:
  v12 = v3 + 8;
  v13 = v3 + 16;
  v14 = v1[57];
  v16 = v1[34];
  v15 = v1[35];
  v164 = v3;
  v17 = v1[33];
  v1[24] = 0;
  v1[25] = 0;
  v18 = swift_task_alloc();
  *(v18 + 16) = v12;
  *(v18 + 24) = v13;
  v19 = *(&v166 + 1);
  sub_22FED55F8(v166, *(&v166 + 1), sub_22FEBF260);

  v20 = v168;
  sub_22FF85468(v16, v15, v168, *(&v168 + 1), v17, v14);
  sub_22FEA56EC(v20, *(&v20 + 1));
  if (v7)
  {
    sub_22FEA55AC(v167, *(&v167 + 1));
    sub_22FEA55AC(v166, *(&v166 + 1));
    goto LABEL_13;
  }

  v163 = v166;
  v168 = v167;
  v169 = v166;
  SEP.Attestation.publicKeyData.getter(&v170);
  *&v166 = v171;
  if ((~v171 & 0x3000000000000000) == 0)
  {

    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    v35 = swift_allocError();
    *v36 = 0xD000000000000017;
    v36[1] = 0x800000022FFC9B70;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v35;
LABEL_22:
    sub_22FEA55AC(v167, *(&v167 + 1));
    sub_22FEA55AC(v163, v19);
    goto LABEL_14;
  }

  v37 = v164;
  v38 = v170;
  sub_22FEA5600(v170, v171);
  v39 = sub_22FFB12D8();
  v40 = sub_22FFB1848();
  sub_22FEBF27C(v38, v166);
  v162 = v38;
  if (os_log_type_enabled(v39, v40))
  {
    v41 = v1[53];
    v158 = v1[51];
    v154 = v1[50];
    v42 = v1[49];
    v149 = v1[48];
    v43 = v1[47];
    buf = swift_slowAlloc();
    v160 = swift_slowAlloc();
    *&v168 = v160;
    *buf = 136315138;
    sub_22FEA5600(v38, v166);
    sub_22FEBF300(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    log = v39;
    sub_22FFB1388();
    sub_22FEA5600(v38, v166);
    sub_22FF9EA78(v38, v166 & 0xDFFFFFFFFFFFFFFFLL, v42);
    sub_22FEBF27C(v38, v166);
    sub_22FFB1368();
    sub_22FEBF27C(v38, v166);
    v44 = v43;
    v37 = v164;
    (*(v149 + 8))(v42, v44);
    sub_22FEBF300(&qword_28148F1B0, MEMORY[0x277CC5290], MEMORY[0x277CC52B0]);
    v45 = sub_22FFB1BA8();
    v47 = v46;
    (*(v158 + 8))(v41, v154);
    v48 = sub_22FF9E448(v45, v47, &v168);

    *(buf + 4) = v48;
    _os_log_impl(&dword_22FE99000, log, v40, "AttestationBundle passed validation for public key: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v160);
    MEMORY[0x23190EFF0](v160, -1, -1);
    MEMORY[0x23190EFF0](buf, -1, -1);
  }

  else
  {
  }

  v49 = v1[33];
  v50 = type metadata accessor for Proto_AttestationBundle(0);
  v51 = *(v49 + *(v50 + 20));
  v52 = (v51 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v53 = *v52;
  v54 = v52[1];
  v55 = v54 >> 62;
  if ((v54 >> 62) > 1)
  {
    if (v55 != 2 || *(v53 + 16) == *(v53 + 24))
    {
      goto LABEL_40;
    }
  }

  else if (v55)
  {
    if (v53 == v53 >> 32)
    {
      goto LABEL_40;
    }
  }

  else if ((v54 & 0xFF000000000000) == 0)
  {
    goto LABEL_40;
  }

  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  v56 = swift_task_alloc();
  *(v56 + 16) = v37 + 24;
  *(v56 + 24) = v37 + 32;
  sub_22FED55F8(v163, *(&v166 + 1), sub_22FEBFA3C);

  if (*(&v168 + 1) >> 60 == 15)
  {

    v57 = sub_22FFB12D8();
    v58 = sub_22FFB1838();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_22FE99000, v57, v58, "Bundle AppData is non-empty, but attestation contains no nonce", v59, 2u);
      MEMORY[0x23190EFF0](v59, -1, -1);
    }

    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    v60 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v60;
    sub_22FEBF27C(v162, v166);
    sub_22FEA55AC(v167, *(&v167 + 1));
    sub_22FEA55AC(v163, *(&v166 + 1));
    goto LABEL_14;
  }

  v152 = v50;
  v61 = v1[52];
  v161 = v1[51];
  v62 = v1[49];
  bufa = v1[50];
  v159 = v168;
  v63 = v1[47];
  v64 = v1[48];
  v141 = v1;
  v65 = *v52;
  v66 = v52[1];
  sub_22FEA5608(*v52, v66);
  sub_22FEBF300(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  sub_22FEA5608(v65, v66);
  sub_22FF9EA78(v65, v66, v62);
  sub_22FEA55AC(v65, v66);
  sub_22FFB1368();
  sub_22FEA55AC(v65, v66);
  v67 = *(v64 + 8);
  v68 = v63;
  v69 = *(&v159 + 1);
  v67(v62, v68);
  v70 = v159;
  v71 = sub_22FECAD68(v159, *(&v159 + 1));
  v72 = *(v161 + 8);
  v72(v61, bufa);
  if ((v71 & 1) == 0)
  {
    v119 = v141[37];
    v120 = v141[33];

    sub_22FEBF40C(v120, v119, type metadata accessor for AttestationBundle);
    sub_22FEA5608(v159, *(&v159 + 1));
    v121 = sub_22FFB12D8();
    v122 = sub_22FFB1838();
    sub_22FEA56EC(v159, *(&v159 + 1));
    if (os_log_type_enabled(v121, v122))
    {
      bufb = v122;
      v123 = v141[52];
      v124 = v141[49];
      v150 = v141[50];
      v125 = v141[47];
      v126 = v141[37];
      v147 = v126;
      v148 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      *&v168 = v165;
      *v148 = 136446466;
      v127 = *(v126 + SHIDWORD(v152[2].isa));
      v153 = v121;
      v128 = (v127 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
      swift_beginAccess();
      v130 = *v128;
      v129 = v128[1];
      sub_22FEA5608(v130, v129);
      sub_22FFB1388();
      sub_22FEA5608(v130, v129);
      sub_22FF9EA78(v130, v129, v124);
      sub_22FEA55AC(v130, v129);
      sub_22FFB1368();
      sub_22FEA55AC(v130, v129);
      v131 = v125;
      v69 = *(&v159 + 1);
      v70 = v159;
      v67(v124, v131);
      v132 = sub_22FF95DBC();
      v134 = v133;
      v72(v123, v150);
      sub_22FEBF83C(v147, type metadata accessor for AttestationBundle);
      v135 = sub_22FF9E448(v132, v134, &v168);

      *(v148 + 4) = v135;
      *(v148 + 12) = 2082;
      v136 = sub_22FEB0B54(v159, *(&v159 + 1));
      v138 = sub_22FF9E448(v136, v137, &v168);

      *(v148 + 14) = v138;
      _os_log_impl(&dword_22FE99000, v153, bufb, "Bundle AppData failed integrity check: (digest:%{public}s != nonce:%{public}s", v148, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190EFF0](v165, -1, -1);
      MEMORY[0x23190EFF0](v148, -1, -1);

      v1 = v141;
    }

    else
    {
      v1 = v141;
      v139 = v141[37];

      sub_22FEBF83C(v139, type metadata accessor for AttestationBundle);
    }

    v19 = *(&v166 + 1);
    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    v140 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v140;
    sub_22FEBF27C(v162, v166);
    sub_22FEA56EC(v70, v69);
    goto LABEL_22;
  }

  sub_22FEA56EC(v159, *(&v159 + 1));
  v1 = v141;
LABEL_40:
  v73 = v1[40];
  v74 = v1[41];
  v75 = v1[39];
  v76 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v51 + v76, v75, &qword_27DAF1520, &qword_22FFB3A30);
  v77 = *(v74 + 48);
  if (v77(v75, 1, v73) == 1)
  {
    v78 = v1[39];
    v79 = v1[40];
    sub_22FFB0ED8();
    if (v77(v78, 1, v79) != 1)
    {
      sub_22FEAEA34(v1[39], &qword_27DAF1520, &qword_22FFB3A30);
    }
  }

  else
  {
    (*(v1[41] + 32))(v1[42], v1[39], v1[40]);
  }

  v80 = v1[45];
  v82 = v1[43];
  v81 = v1[44];
  v84 = v1[41];
  v83 = v1[42];
  v85 = v1[40];
  sub_22FFB0EB8();
  (*(v84 + 8))(v83, v85);
  sub_22FFB08E8();
  LOBYTE(v85) = sub_22FFB0888();
  v86 = *(v81 + 8);
  v86(v80, v82);
  v87 = v1[46];
  v88 = v1[43];
  v89 = v1[44];
  if ((v85 & 1) == 0)
  {

    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    v117 = swift_allocError();
    (*(v89 + 16))(v118, v87, v88);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v117;
    sub_22FEA55AC(v167, *(&v167 + 1));
    sub_22FEA55AC(v163, *(&v166 + 1));
    sub_22FEBF27C(v162, v166);
    v86(v87, v88);
    goto LABEL_14;
  }

  v90 = v1[38];
  v91 = v1[33];
  v93 = v1[30];
  v92 = v1[31];
  *v93 = v38;
  v93[1] = v166;
  (*(v89 + 16))(v92, v87, v88);
  sub_22FEBF40C(v91, v90, type metadata accessor for AttestationBundle);
  v1[28] = 0;
  v1[29] = 0;
  v94 = swift_task_alloc();
  *(v94 + 16) = v164 + 40;
  *(v94 + 24) = v164 + 48;
  sub_22FEBF290(v38, v166);
  sub_22FED55F8(v163, *(&v166 + 1), sub_22FEB341C);

  v95 = 0;
  v96 = 0;
  if (v169 != 2)
  {
    v97 = v168;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_22FFB2D20;
    v99 = MEMORY[0x277D84D30];
    *(v98 + 56) = MEMORY[0x277D84CC0];
    *(v98 + 64) = v99;
    v100 = MEMORY[0x277D84D38];
    *(v98 + 32) = v97;
    v101 = MEMORY[0x277D84D90];
    *(v98 + 96) = v100;
    *(v98 + 104) = v101;
    *(v98 + 72) = *(&v97 + 1);
    v95 = sub_22FFB14D8();
  }

  v144 = v96;
  v103 = v1[56];
  v102 = v1[57];
  v104 = v1[55];
  v105 = v1[46];
  v142 = v95;
  v106 = v1[43];
  v143 = v1[38];
  v107 = v1[32];
  v170 = v1[23];
  v108 = sub_22FEE2580();
  v145 = v109;
  v146 = v108;
  *&v168 = v1[23];
  v110 = AttestationPolicyContext.releaseDigest.getter();
  v112 = v111;
  sub_22FEA55AC(v167, *(&v167 + 1));
  sub_22FEA55AC(v163, *(&v166 + 1));
  sub_22FEBF27C(v162, v166);
  v86(v105, v106);
  (*(v103 + 8))(v102, v104);

  v113 = type metadata accessor for Validated.AttestationBundle(0);
  *(v107 + v113[8]) = 0;
  sub_22FEBF7D4(v143, v107, type metadata accessor for AttestationBundle);
  v114 = (v107 + v113[5]);
  *v114 = v142;
  v114[1] = v144;
  v115 = (v107 + v113[6]);
  *v115 = v146;
  v115[1] = v145;
  v116 = (v107 + v113[7]);
  *v116 = v110;
  v116[1] = v112;

  v33 = v1[1];
LABEL_17:

  return v33();
}

uint64_t sub_22FEBAC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return EnsembleValidator.validate(bundle:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FEBAD18(uint64_t a1)
{
  v2 = sub_22FFB0958();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_22FEBF300(&qword_281491320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x23190DF70](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_22FEBC51C(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22FEBAFF4(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_22FEBB004@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v117 = *MEMORY[0x277D85DE8];
  v5 = sub_22FFB06B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() sharedDataAccessor];
  *&v113 = 0;
  v10 = [v9 copyPathForPersonalizedData:2 error:&v113];

  v11 = v113;
  if (!v10)
  {
    v18 = v113;
    v17 = sub_22FFB0648();

    swift_willThrow();
    goto LABEL_5;
  }

  v103 = a2;
  sub_22FFB1498();
  v13 = v12;
  v14 = v11;

  sub_22FFB0668();

  v15 = sub_22FFB06D8();
  v17 = v2;
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
LABEL_5:
    sub_22FEBF89C();
    swift_allocError();
    *v19 = v17;
    *(v19 + 8) = 0;
    *(v19 + 16) = 1;
    return swift_willThrow();
  }

  v21 = v15;
  v22 = v16;
  (*(v6 + 8))(v8, v5);
  v23 = sub_22FEA2AC0();
  if (qword_281490280 != -1)
  {
    swift_once();
  }

  v24 = sub_22FFB0958();
  v25 = __swift_project_value_buffer(v24, qword_281491418);
  v26 = MEMORY[0x277CC9318];
  v27 = MEMORY[0x277CC9300];
  if (!*(v23 + 16) || (v28 = sub_22FFA6214(v25), (v29 & 1) == 0))
  {

    v102 = 0;
    goto LABEL_68;
  }

  v30 = *(*(v23 + 56) + 8 * v28);

  v31 = *(v30 + 16);
  if (!v31)
  {
    v102 = MEMORY[0x277D84F90];
LABEL_67:

    v26 = MEMORY[0x277CC9318];
    v27 = MEMORY[0x277CC9300];
LABEL_68:
    *(&v114 + 1) = v26;
    *&v115 = v27;
    *&v113 = v21;
    *(&v113 + 1) = v22;
    v66 = __swift_project_boxed_opaque_existential_1(&v113, v26);
    v67 = *v66;
    v68 = v66[1];
    v69 = v68 >> 62;
    if ((v68 >> 62) > 1)
    {
      if (v69 != 2)
      {
        *(v112 + 6) = 0;
        *&v112[0] = 0;
        sub_22FEA5608(v21, v22);
        v70 = v112;
        goto LABEL_90;
      }

      v71 = *(v67 + 16);
      v72 = *(v67 + 24);
      sub_22FEA5608(v21, v22);
      v73 = sub_22FFB0588();
      if (v73)
      {
        v74 = sub_22FFB05B8();
        v67 = v71 - v74;
        if (__OFSUB__(v71, v74))
        {
          goto LABEL_97;
        }

        v73 += v67;
      }

      v75 = __OFSUB__(v72, v71);
      v76 = v72 - v71;
      if (!v75)
      {
        goto LABEL_82;
      }

      __break(1u);
    }

    else if (!v69)
    {
      *&v112[0] = *v66;
      WORD4(v112[0]) = v68;
      BYTE10(v112[0]) = BYTE2(v68);
      BYTE11(v112[0]) = BYTE3(v68);
      BYTE12(v112[0]) = BYTE4(v68);
      BYTE13(v112[0]) = BYTE5(v68);
      sub_22FEA5608(v21, v22);
      v70 = v112 + BYTE6(v68);
LABEL_90:
      sub_22FF9E9E4(v112, v70, &v109);
LABEL_91:
      v84 = v109;
      __swift_destroy_boxed_opaque_existential_1(&v113);
      v113 = v84;
      LOBYTE(v114) = 0;
      sub_22FEC1A38(1, &__dst);
      sub_22FEA55AC(v84, *(&v84 + 1));
      v85 = __dst;
      v86 = MEMORY[0x277D84F90];
      if (v102)
      {
        v87 = v102;
      }

      else
      {
        v87 = MEMORY[0x277D84F90];
      }

      sub_22FEA5608(__dst, *(&__dst + 1));
      sub_22FEC623C(v85, *(&v85 + 1));
      v88 = v103;
      sub_22FFB0BF8();
      v89 = sub_22FF67DCC(v87);

      v90 = sub_22FEBE804(v89);

      v91 = type metadata accessor for Release(0);
      *(v88 + *(v91 + 20)) = v90;
      sub_22FEA55AC(v85, *(&v85 + 1));
      result = sub_22FEA55AC(v21, v22);
      *(v88 + *(v91 + 24)) = v86;
      return result;
    }

    v77 = v67;
    v78 = v67 >> 32;
    v76 = v78 - v77;
    if (v78 >= v77)
    {
      sub_22FEA5608(v21, v22);
      v73 = sub_22FFB0588();
      if (!v73)
      {
LABEL_82:
        v80 = sub_22FFB05A8();
        if (v80 >= v76)
        {
          v81 = v76;
        }

        else
        {
          v81 = v80;
        }

        v82 = &v73[v81];
        if (v73)
        {
          v83 = v82;
        }

        else
        {
          v83 = 0;
        }

        sub_22FF9E9E4(v73, v83, &v109);
        goto LABEL_91;
      }

      v79 = sub_22FFB05B8();
      if (!__OFSUB__(v77, v79))
      {
        v73 += v77 - v79;
        goto LABEL_82;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
    }

    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v32 = 0;
  if (a1)
  {
    v33 = 1;
  }

  else
  {
    v33 = 3;
  }

  v101 = v33;
  v34 = v31 - 1;
  v102 = MEMORY[0x277D84F90];
  while (1)
  {
    v35 = (v32 << 6) | 0x20;
    v36 = v32;
    while (1)
    {
      if (v36 >= *(v30 + 16))
      {
        __break(1u);

        sub_22FEBF960(&v113);
        sub_22FEA55AC(v21, v22);
        sub_22FEA56EC(v99, v13);
        sub_22FEA55AC(v100, &v113);
      }

      v37 = *(v30 + v35 + 48);
      v38 = *(v30 + v35);
      v39 = *(v30 + v35 + 16);
      v115 = *(v30 + v35 + 32);
      v116 = v37;
      v113 = v38;
      v114 = v39;
      v13 = *(&v39 + 1);
      if (*(&v39 + 1) >> 60 != 15 && v115 != 4)
      {
        break;
      }

      ++v36;
      v35 += 64;
      if (v31 == v36)
      {
        goto LABEL_67;
      }
    }

    v40 = v114;
    v110 = MEMORY[0x277CC9318];
    v111 = MEMORY[0x277CC9300];
    v109 = __PAIR128__(*(&v39 + 1), v114);
    v41 = __swift_project_boxed_opaque_existential_1(&v109, MEMORY[0x277CC9318]);
    v42 = *v41;
    *&v100 = v41[1];
    v43 = v100 >> 62;
    v98 = v34;
    v99 = v40;
    if ((v100 >> 62) <= 1)
    {
      break;
    }

    if (v43 != 2)
    {
      v44 = v42;
      sub_22FEBF8F0(v40, v13);
      sub_22FEBF8F0(v40, v13);
      sub_22FEBF904(&v113, &__dst);
      v45 = v100;
      goto LABEL_59;
    }

    v46 = *(v42 + 24);
    v96 = *(v42 + 16);
    v95 = v46;
    sub_22FEBF8F0(v40, v13);
    sub_22FEBF8F0(v40, v13);
    sub_22FEBF904(&v113, &__dst);
    v47 = sub_22FFB0588();
    if (v47)
    {
      v97 = v47;
      result = sub_22FFB05B8();
      v48 = v96;
      if (__OFSUB__(v96, result))
      {
        __break(1u);
        goto LABEL_102;
      }

      v97 = v97 + v96 - result;
    }

    else
    {
      v97 = 0;
      v48 = v96;
    }

    v51 = v95 - v48;
    if (__OFSUB__(v95, v48))
    {
      goto LABEL_100;
    }

    v52 = sub_22FFB05A8();
    if (v52 >= v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = v52;
    }

    v45 = 0xC000000000000000;
    if (!v97 || !v53)
    {
      goto LABEL_54;
    }

    if (v53 < 15)
    {
      *(&__dst + 6) = 0;
      *&__dst = 0;
      BYTE14(__dst) = v53;
      memcpy(&__dst, v97, v53);
      v44 = __dst;
      v45 = v93 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
      v93 = v45;
      goto LABEL_59;
    }

    v54 = v53;
LABEL_52:
    sub_22FFB05D8();
    swift_allocObject();
    v57 = sub_22FFB0578();
    v58 = v57;
    if (v54 >= 0x7FFFFFFF)
    {
      sub_22FFB0738();
      v62 = swift_allocObject();
      *(v62 + 16) = 0;
      *(v62 + 24) = v54;
      v45 = v58 | 0x8000000000000000;
      v44 = v62;
    }

    else
    {
      v59 = v54 << 32;
      v45 = v57 | 0x4000000000000000;
      v44 = v59;
    }

LABEL_59:
    __swift_destroy_boxed_opaque_existential_1(&v109);
    *&v100 = v44;
    *&__dst = v44;
    *(&__dst + 1) = v45;
    v108 = v101;
    sub_22FEC1A38(1, v112);
    sub_22FEBF960(&v113);
    sub_22FEA56EC(v99, v13);
    sub_22FEA55AC(v100, v45);
    v100 = v112[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = sub_22FEC334C(0, *(v102 + 2) + 1, 1, v102);
    }

    v64 = *(v102 + 2);
    v63 = *(v102 + 3);
    if (v64 >= v63 >> 1)
    {
      v102 = sub_22FEC334C((v63 > 1), v64 + 1, 1, v102);
    }

    v32 = v36 + 1;
    v65 = v102;
    *(v102 + 2) = v64 + 1;
    *&v65[16 * v64 + 32] = v100;
    v34 = v98;
    if (v98 == v36)
    {
      goto LABEL_67;
    }
  }

  if (!v43)
  {
    __src = v42;
    v105 = v100;
    v106 = WORD2(v100);
    if (BYTE6(v100))
    {
      if (BYTE6(v100) <= 0xEuLL)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = BYTE6(v100);
        memcpy(&__dst, &__src, BYTE6(v100));
        *&v100 = __dst;
        v60 = v40;
        v45 = v94 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        sub_22FEBF8F0(v60, v13);
        v61 = v60;
        v44 = v100;
        sub_22FEBF8F0(v61, v13);
        sub_22FEBF904(&v113, &__dst);
        v94 = v45;
      }

      else
      {
        *&v100 = BYTE6(v100);
        sub_22FFB05D8();
        swift_allocObject();
        sub_22FEBF8F0(v40, v13);
        sub_22FEBF8F0(v40, v13);
        sub_22FEBF904(&v113, &__dst);
        v44 = v100 << 32;
        v45 = sub_22FFB0578() | 0x4000000000000000;
      }
    }

    else
    {
      sub_22FEBF8F0(v40, v13);
      sub_22FEBF8F0(v40, v13);
      sub_22FEBF904(&v113, &__dst);
      v44 = 0;
      v45 = 0xC000000000000000;
    }

    goto LABEL_59;
  }

  v97 = v42;
  v96 = (v42 >> 32) - v42;
  if (v42 >> 32 < v42)
  {
    goto LABEL_99;
  }

  v49 = v99;
  sub_22FEBF8F0(v99, v13);
  sub_22FEBF8F0(v49, v13);
  sub_22FEBF904(&v113, &__dst);
  v50 = sub_22FFB0588();
  if (!v50)
  {
    v97 = 0;
LABEL_45:
    v55 = sub_22FFB05A8();
    if (v55 >= v96)
    {
      v56 = v96;
    }

    else
    {
      v56 = v55;
    }

    v45 = 0xC000000000000000;
    if (!v97 || !v56)
    {
LABEL_54:
      v44 = 0;
      goto LABEL_59;
    }

    if (v56 < 15)
    {
      *(&__dst + 6) = 0;
      *&__dst = 0;
      BYTE14(__dst) = v56;
      memcpy(&__dst, v97, v56);
      v44 = __dst;
      v45 = v92 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
      v92 = v45;
      goto LABEL_59;
    }

    v54 = v56;
    goto LABEL_52;
  }

  v95 = v50;
  result = sub_22FFB05B8();
  if (!__OFSUB__(v97, result))
  {
    v97 = v97 + v95 - result;
    goto LABEL_45;
  }

LABEL_102:
  __break(1u);
  return result;
}

uint64_t sub_22FEBBDB4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22FFB0C28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22FEBF300(&qword_28148F1F0, MEMORY[0x277D6A8E8], MEMORY[0x277D6A8F0]);
  v33 = a2;
  v11 = sub_22FFB1428();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_22FEBF300(&qword_28148F1E8, MEMORY[0x277D6A8E8], MEMORY[0x277D6A8F8]);
      v21 = sub_22FFB1478();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_22FEBD114(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22FEBC094(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  sub_22FFB1CA8();
  sub_22FFB07F8();
  v7 = sub_22FFB1CF8();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_22FEA5608(a2, a3);
    sub_22FEBD3DC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_22FEA5608(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_22FEA5608(v18, v17);
      v32 = sub_22FFB0588();
      if (v32)
      {
        v34 = sub_22FFB05B8();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_22FEA5608(v18, v17);
    v32 = sub_22FFB0588();
    if (v32)
    {
      v33 = sub_22FFB05B8();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    sub_22FFB05A8();
    a3 = v44;
    sub_22FEEBB68(v32, a2, v44, v50);
    sub_22FEA55AC(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_22FEA5608(v18, v17);
LABEL_60:
  sub_22FEEBB68(v50, a2, a3, &v49);
  sub_22FEA55AC(v18, v17);
  if ((v49 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_22FEA55AC(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_22FEA5608(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_22FEBC51C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22FFB0958();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22FEBF300(&qword_281491320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_22FFB1428();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_22FEBF300(&qword_281491318, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_22FFB1478();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_22FEBD854(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22FEBC7FC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22FFB0C28();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A98, &qword_22FFB3A70);
  result = sub_22FFB1988();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_22FEBF300(&qword_28148F1F0, MEMORY[0x277D6A8E8], MEMORY[0x277D6A8F0]);
      result = sub_22FFB1428();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_22FEBCB58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AB0, &qword_22FFB3A88);
  result = sub_22FFB1988();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22FFB1CA8();
      sub_22FFB07F8();
      result = sub_22FFB1CF8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22FEBCDB8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22FFB0958();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A90, &qword_22FFB3A68);
  result = sub_22FFB1988();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_22FEBF300(&qword_281491320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22FFB1428();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_22FEBD114(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22FFB0C28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22FEBC7FC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22FEBDC78(MEMORY[0x277D6A8E8], &qword_27DAF1A98, &qword_22FFB3A70);
      goto LABEL_12;
    }

    sub_22FEBDEB0(v10 + 1);
  }

  v12 = *v3;
  sub_22FEBF300(&qword_28148F1F0, MEMORY[0x277D6A8E8], MEMORY[0x277D6A8F0]);
  v13 = sub_22FFB1428();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_22FEBF300(&qword_28148F1E8, MEMORY[0x277D6A8E8], MEMORY[0x277D6A8F8]);
      v21 = sub_22FFB1478();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22FFB1C08();
  __break(1u);
  return result;
}

uint64_t sub_22FEBD3DC(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v51 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_22FEBCB58(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_22FEBDB1C();
        goto LABEL_68;
      }

      sub_22FEBE1CC(v8 + 1);
    }

    v10 = *v4;
    sub_22FFB1CA8();
    sub_22FFB07F8();
    result = sub_22FFB1CF8();
    v11 = v10 + 56;
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      if (v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = a2 == 0xC000000000000000;
      }

      v15 = !v14;
      v48 = v15;
      v16 = a2 >> 62;
      v17 = __OFSUB__(HIDWORD(v7), v7);
      v45 = v17;
      v44 = HIDWORD(v7) - v7;
      v46 = v13;
      v47 = BYTE6(a2);
      v41 = v7;
      v42 = a2;
      while (1)
      {
        v18 = (*(v10 + 48) + 16 * a3);
        v20 = *v18;
        v19 = v18[1];
        v21 = v19 >> 62;
        if (v19 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_32;
          }

          v31 = *(v20 + 16);
          v30 = *(v20 + 24);
          v29 = __OFSUB__(v30, v31);
          v25 = v30 - v31;
          if (v29)
          {
            goto LABEL_73;
          }
        }

        else if (v21)
        {
          LODWORD(v25) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_74;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v19);
        }

LABEL_33:
        if (v16 > 1)
        {
          if (v16 != 2)
          {
            if (!v25)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v28 = *(v7 + 16);
          v27 = *(v7 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v26 = v47;
          if (v16)
          {
            v26 = v44;
            if (v45)
            {
              goto LABEL_71;
            }
          }
        }

        if (v25 == v26)
        {
          if (v25 < 1)
          {
            goto LABEL_67;
          }

          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v33 = *(v20 + 16);
              v32 = *(v20 + 24);
              sub_22FEA5608(v20, v19);
              v34 = sub_22FFB0588();
              if (v34)
              {
                v35 = sub_22FFB05B8();
                if (__OFSUB__(v33, v35))
                {
                  goto LABEL_77;
                }

                v34 += v33 - v35;
              }

              if (__OFSUB__(v32, v33))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v50[6] = 0;
            *v50 = 0;
            sub_22FEA5608(v20, v19);
          }

          else
          {
            if (v21)
            {
              if (v20 >> 32 < v20)
              {
                goto LABEL_75;
              }

              sub_22FEA5608(v20, v19);
              v34 = sub_22FFB0588();
              if (v34)
              {
                v36 = sub_22FFB05B8();
                if (__OFSUB__(v20, v36))
                {
                  goto LABEL_78;
                }

                v34 += v20 - v36;
              }

LABEL_63:
              sub_22FFB05A8();
              v7 = v41;
              a2 = v42;
              sub_22FEEBB68(v34, v41, v42, v50);
              result = sub_22FEA55AC(v20, v19);
              v11 = v10 + 56;
              v13 = v46;
              if (v50[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v50 = v20;
            *&v50[8] = v19;
            v50[10] = BYTE2(v19);
            v50[11] = BYTE3(v19);
            v50[12] = BYTE4(v19);
            v50[13] = BYTE5(v19);
            sub_22FEA5608(v20, v19);
            v13 = v46;
          }

          sub_22FEEBB68(v50, v7, a2, &v49);
          result = sub_22FEA55AC(v20, v19);
          if (v49)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v13;
        if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || v16 < 3;
      if (((v24 | v48) & 1) == 0)
      {
LABEL_67:
        result = sub_22FFB1C08();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v37 = *v43;
  *(*v43 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v38 = (*(v37 + 48) + 16 * a3);
  *v38 = v7;
  v38[1] = a2;
  v39 = *(v37 + 16);
  v29 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (v29)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v37 + 16) = v40;
  return result;
}

uint64_t sub_22FEBD854(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22FFB0958();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22FEBCDB8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22FEBDC78(MEMORY[0x277CC95F0], &qword_27DAF1A90, &qword_22FFB3A68);
      goto LABEL_12;
    }

    sub_22FEBE408(v10 + 1);
  }

  v12 = *v3;
  sub_22FEBF300(&qword_281491320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_22FFB1428();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_22FEBF300(&qword_281491318, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_22FFB1478();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22FFB1C08();
  __break(1u);
  return result;
}

void *sub_22FEBDB1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AB0, &qword_22FFB3A88);
  v2 = *v0;
  v3 = sub_22FFB1978();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_22FEA5608(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_22FEBDC78(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_22FFB1978();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_22FEBDEB0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22FFB0C28();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A98, &qword_22FFB3A70);
  v7 = sub_22FFB1988();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_22FEBF300(&qword_28148F1F0, MEMORY[0x277D6A8E8], MEMORY[0x277D6A8F0]);
      result = sub_22FFB1428();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_22FEBE1CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AB0, &qword_22FFB3A88);
  result = sub_22FFB1988();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22FFB1CA8();
      sub_22FEA5608(v18, v19);
      sub_22FFB07F8();
      result = sub_22FFB1CF8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22FEBE408(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22FFB0958();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A90, &qword_22FFB3A68);
  v7 = sub_22FFB1988();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_22FEBF300(&qword_281491320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22FFB1428();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_22FEBE724(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22FEBF348();
  result = MEMORY[0x23190DF70](v2, MEMORY[0x277CC9318], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_22FEA5608(v7, *v5);
      sub_22FEBC094(v8, v7, v6);
      sub_22FEA55AC(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22FEBE804(uint64_t a1)
{
  v2 = sub_22FFB0C28();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_22FEBF300(&qword_28148F1F0, MEMORY[0x277D6A8E8], MEMORY[0x277D6A8F0]);
  result = MEMORY[0x23190DF70](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_22FEBBDB4(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_22FEBE9A0(uint64_t a1)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = type metadata accessor for X509Policy(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  if (qword_281490B50 != -1)
  {
    swift_once();
  }

  v24 = qword_2814916A0;
  v12 = sub_22FFB0908();
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 1, 1, v12);
  v14 = MEMORY[0x277D84F90];
  *(v11 + 1) = MEMORY[0x277D84F90];
  v15 = v6[6];
  v13(&v11[v15], 1, 1, v12);
  v16 = &v11[v6[7]];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v11[v6[8]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = v25;
  sub_22FEBF3A4(v5, v25, &qword_27DAF1510, &qword_22FFB3800);
  *(v9 + 1) = v14;
  v19 = v6[6];
  v13(&v9[v19], 1, 1, v12);
  v20 = &v9[v6[7]];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v9[v6[8]];
  *v9 = 1;

  sub_22FED2C04(v22);
  sub_22FEAEA34(v5, &qword_27DAF1510, &qword_22FFB3800);
  sub_22FEB3E04(v18, &v9[v19]);
  *v21 = 0;
  *(v21 + 1) = 0;
  *v20 = 0;
  v20[8] = 1;
  sub_22FEAEA34(&v11[v15], &qword_27DAF1510, &qword_22FFB3800);
  sub_22FEBF7D4(v9, v11, type metadata accessor for X509Policy);
  sub_22FED22EC(v26);
  sub_22FEBF83C(v11, type metadata accessor for X509Policy);
  return 1;
}

void sub_22FEBED14(uint64_t a1)
{
  type metadata accessor for Release(319);
  if (v1 <= 0x3F)
  {
    sub_22FEBEEA8();
    if (v2 <= 0x3F)
    {
      sub_22FEBEEF8();
      if (v3 <= 0x3F)
      {
        sub_22FEBEF5C();
        if (v4 <= 0x3F)
        {
          sub_22FEBEFAC(319);
          if (v5 <= 0x3F)
          {
            sub_22FEBF010(319, &qword_28148F120, type metadata accessor for SecCertificate, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_22FEBF010(319, &qword_281491328, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22FEBEEA8()
{
  result = qword_27DAF1A48;
  if (!qword_27DAF1A48)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27DAF1A48);
  }

  return result;
}

unint64_t sub_22FEBEEF8()
{
  result = qword_27DAF1A50;
  if (!qword_27DAF1A50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DAF1A50);
  }

  return result;
}

void sub_22FEBEF5C()
{
  if (!qword_28148F168)
  {
    v0 = sub_22FFB1888();
    if (!v1)
    {
      atomic_store(v0, &qword_28148F168);
    }
  }
}

void sub_22FEBEFAC(uint64_t a1)
{
  if (!qword_27DAF1A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1A60, &qword_22FFB3928);
    v1 = sub_22FFB1888();
    if (!v2)
    {
      atomic_store(v1, &qword_27DAF1A58);
    }
  }
}

void sub_22FEBF010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_16CloudAttestation17EnsembleValidatorV5ErrorO013IntrospectionE0O(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16CloudAttestation17EnsembleValidatorV5ErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 12;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FEBF0B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF2 && *(a1 + 8))
  {
    return (*a1 + 2147483635);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 < 0xD)
  {
    v5 = 0;
  }

  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEBF114(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF3)
  {
    *result = 0;
    *result = a2 - 2147483635;
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 12;
    }
  }

  return result;
}

void *sub_22FEBF164(void *result, unsigned int a2)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *result = a2 - 2147483636;
  }

  else if (a2)
  {
    *result = a2 + 11;
  }

  return result;
}

uint64_t sub_22FEBF1A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 8))
  {
    return (*a1 + 2147483636);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEBF200(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 11;
    }
  }

  return result;
}

uint64_t sub_22FEBF27C(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_22FEA55A4(a1, a2);
  }

  return a1;
}

uint64_t sub_22FEBF290(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_22FEA5600(a1, a2);
  }

  return a1;
}

uint64_t sub_22FEBF2A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22FEBF300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22FEBF348()
{
  result = qword_281491350;
  if (!qword_281491350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281491350);
  }

  return result;
}

uint64_t sub_22FEBF3A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22FEBF40C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22FEBF4E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_22FEBF54C()
{
  result = qword_27DAF1AF8;
  if (!qword_27DAF1AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1AD8, &qword_22FFB3AB0);
    sub_22FEBF620(&qword_27DAF1B00, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
    sub_22FEBF620(&qword_27DAF1B08, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1AF8);
  }

  return result;
}

uint64_t sub_22FEBF620(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1AE0, &qword_22FFB3AB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FEBF68C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_22FEBF708()
{
  result = qword_27DAF1B38;
  if (!qword_27DAF1B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1B20, &qword_22FFB3AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1B38);
  }

  return result;
}

uint64_t sub_22FEBF78C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_22FEBF7D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEBF83C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FEBF89C()
{
  result = qword_27DAF1B48;
  if (!qword_27DAF1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1B48);
  }

  return result;
}

uint64_t sub_22FEBF8F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22FEA5608(result, a2);
  }

  return result;
}

uint64_t sub_22FEBF9C8()
{

  return sub_22FEB90C8();
}

uint64_t sub_22FEBFA6C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB059B8);
  __swift_project_value_buffer(v0, qword_27DB059B8);
  return sub_22FFB12E8();
}

double GenericAttestor.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = SecKeyCopySystemKey();
  *(a1 + 24) = &type metadata for SEP.PhysicalDevice;
  *(a1 + 32) = &protocol witness table for SEP.PhysicalDevice;
  *(a1 + 64) = &type metadata for GenericAttestor.AssetProvider;
  *(a1 + 72) = &off_2844D9CB0;
  result = -30564.724;
  *(a1 + 80) = xmmword_22FFB3760;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = v2;
  return result;
}

uint64_t GenericAttestor.defaultKeyDuration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2;
  return result;
}

void GenericAttestor.enforcementOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 97);
  *a1 = *(v1 + 96);
  a1[1] = v2;
}

_BYTE *GenericAttestor.enforcementOptions.setter(_BYTE *result)
{
  v2 = result[1];
  *(v1 + 96) = *result;
  *(v1 + 97) = v2;
  return result;
}

uint64_t GenericAttestor.sealedHashes.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 104) = v2;
  return result;
}

uint64_t GenericAttestor.attestingKey.getter()
{
  v2 = *(v0 + 112);
  if (v2)
  {
    v3 = v2;
    Duplicate = SecKeyCreateDuplicate();
    if (Duplicate)
    {
      v1 = Duplicate;
    }

    else
    {
      v1 = type metadata accessor for CloudAttestationError(0);
      sub_22FEC1144(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for CloudAttestationError(0);
    sub_22FEC1144(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v1;
}

void sub_22FEBFE04(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 97);
  *a1 = *(v1 + 96);
  a1[1] = v2;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_22FEBFE50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_22FEBFE98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22FEBFF14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FEABC3C;

  return sub_22FEC0A9C();
}

uint64_t sub_22FEBFFB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_22FFB16E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_22FEC0050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B80, &unk_22FFB3BA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  sub_22FEC0240(a3);
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  v11 = sub_22FFB1408();
  aBlock[4] = sub_22FEC11F8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FEBFFB4;
  aBlock[3] = &block_descriptor_1;
  v12 = _Block_copy(aBlock);
  MAEIssueDCRTWithCompletion();

  _Block_release(v12);
}

uint64_t sub_22FEC0240(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B90, &qword_22FFB3BB0);
    v2 = sub_22FFB1AE8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22FEBF2A4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_22FEA2968(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_22FEA2968(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_22FEA2968(v31, v32);
    result = sub_22FFB1968();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_22FEA2968(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *sub_22FEC0508(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_27DAF1250 != -1)
    {
      swift_once();
    }

    v4 = sub_22FFB12F8();
    __swift_project_value_buffer(v4, qword_27DB059B8);
    v5 = a2;
    v6 = sub_22FFB12D8();
    v7 = sub_22FFB1838();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_22FE99000, v6, v7, "failed to issue DCRT: %@", v8, 0xCu);
      sub_22FEAA1C8(v9);
      MEMORY[0x23190EFF0](v9, -1, -1);
      MEMORY[0x23190EFF0](v8, -1, -1);
    }

LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B80, &unk_22FFB3BA0);
    return sub_22FFB1788();
  }

  if (!a1 || (v12 = sub_22FEC0928(a1)) == 0)
  {
    if (qword_27DAF1250 != -1)
    {
      swift_once();
    }

    v25 = sub_22FFB12F8();
    __swift_project_value_buffer(v25, qword_27DB059B8);
    v26 = sub_22FFB12D8();
    v27 = sub_22FFB1838();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22FE99000, v26, v27, "dcrt chain not castable to [SecCertificate]", v28, 2u);
      MEMORY[0x23190EFF0](v28, -1, -1);
    }

    sub_22FEC129C();
    swift_allocError();
    *v29 = 1;
    goto LABEL_23;
  }

  v13 = v12;
  if (!(v12 >> 62))
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_30:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B80, &unk_22FFB3BA0);
    return sub_22FFB1798();
  }

  v14 = sub_22FFB1AB8();
  if (!v14)
  {
    goto LABEL_30;
  }

LABEL_11:
  v39 = MEMORY[0x277D84F90];
  result = sub_22FECD9FC(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      do
      {
        v17 = MEMORY[0x23190E180](v16, v13);
        v18 = SecCertificateCopyData(v17);
        v19 = sub_22FFB07E8();
        v21 = v20;
        swift_unknownObjectRelease();

        v23 = *(v39 + 16);
        v22 = *(v39 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_22FECD9FC((v22 > 1), v23 + 1, 1);
        }

        ++v16;
        *(v39 + 16) = v23 + 1;
        v24 = v39 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
      }

      while (v14 != v16);
    }

    else
    {
      v30 = (v13 + 32);
      do
      {
        v31 = *v30;
        v32 = SecCertificateCopyData(v31);
        v33 = sub_22FFB07E8();
        v35 = v34;

        v37 = *(v39 + 16);
        v36 = *(v39 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_22FECD9FC((v36 > 1), v37 + 1, 1);
        }

        *(v39 + 16) = v37 + 1;
        v38 = v39 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
        ++v30;
        --v14;
      }

      while (v14);
    }

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEC0928(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22FFB1A38();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_22FEBF2A4(i, v5);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22FFB1A08();
    sub_22FFB1A48();
    sub_22FFB1A58();
    sub_22FFB1A18();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void (*sub_22FEC0A14(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23190E180](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22FEC0A94;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEC0A9C()
{
  v1 = sub_22FFB1868();
  v0[20] = v1;
  v0[21] = *(v1 - 8);
  v0[22] = swift_task_alloc();
  v0[23] = sub_22FFB1858();
  v0[24] = swift_task_alloc();
  sub_22FFB1348();
  v0[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEC0BB4, 0, 0);
}

uint64_t sub_22FEC0BB4()
{
  v11 = v0[22];
  v1 = v0[21];
  v12 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B50, &unk_22FFB3B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FFB2D20;
  *(inited + 32) = sub_22FFB1498();
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v3;
  *(inited + 48) = 60;
  *(inited + 80) = sub_22FFB1498();
  *(inited + 88) = v4;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 0;
  v5 = sub_22FFA6C20(inited);
  v0[26] = v5;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B58, &qword_22FFC02B0);
  swift_arrayDestroy();
  sub_22FEC10F8();
  sub_22FFB1338();
  v0[18] = MEMORY[0x277D84F90];
  sub_22FEC1144(&qword_27DAF1B68, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B70, &unk_22FFB3B90);
  sub_22FEC118C();
  sub_22FFB1938();
  (*(v1 + 104))(v11, *MEMORY[0x277D85260], v12);
  v6 = sub_22FFB1878();
  v0[27] = v6;
  v7 = swift_task_alloc();
  v0[28] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  v0[29] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A60, &qword_22FFB3928);
  *v8 = v0;
  v8[1] = sub_22FEC0E94;

  return MEMORY[0x2822008A0](v0 + 19, 0, 0, 0x5243446863746566, 0xEB00000000292854, sub_22FEC11F0, v7, v9);
}

uint64_t sub_22FEC0E94()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_22FEC1050;
  }

  else
  {

    v2 = sub_22FEC0FBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEC0FBC()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22FEC1050()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_22FEC10F8()
{
  result = qword_27DAF1B60;
  if (!qword_27DAF1B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAF1B60);
  }

  return result;
}

uint64_t sub_22FEC1144(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22FEC118C()
{
  result = qword_27DAF1B78;
  if (!qword_27DAF1B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1B70, &unk_22FFB3B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1B78);
  }

  return result;
}

char *sub_22FEC11F8(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B80, &unk_22FFB3BA0);

  return sub_22FEC0508(a1, a2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22FEC129C()
{
  result = qword_27DAF1B88;
  if (!qword_27DAF1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1B88);
  }

  return result;
}

unint64_t sub_22FEC1304()
{
  result = qword_27DAF1B98[0];
  if (!qword_27DAF1B98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAF1B98);
  }

  return result;
}

uint64_t sub_22FEC13F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FEC1468(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_22FEC15A8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t Image4Manifest.data.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t Image4Manifest.init<A>(data:kind:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = sub_22FEC4190(a1, a3, *(*(*(*(a4 + 8) + 8) + 8) + 8));
  v11 = v10;
  result = (*(*(a3 - 8) + 8))(a1, a3);
  *a5 = v9;
  *(a5 + 8) = v11;
  *(a5 + 16) = v8;
  return result;
}

uint64_t Image4Manifest.init(file:kind:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = sub_22FFB06D8();
  if (v3)
  {
    v9 = sub_22FFB06B8();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = v8;
    v13 = sub_22FFB06B8();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v6;
  }

  return result;
}

uint64_t Image4Manifest.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FEC1A38@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v80 = *MEMORY[0x277D85DE8];
  v7 = *v3;
  v6 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    if (*(v7 + 16) == *(v7 + 24))
    {
LABEL_12:
      sub_22FEC4B30();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 0;
      goto LABEL_13;
    }

LABEL_14:
    v12 = a1;
    sub_22FEA5608(v7, v6);
    sub_22FEA5608(v7, v6);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_15:
    sub_22FEA55AC(v7, v6);
    sub_22FEA55AC(v7, v6);
    v13 = image4_environment_new();
    if (v13)
    {
      v73 = v13;
      if (v9 == 2)
      {
        v17 = *(v7 + 16);
        v18 = *(v7 + 24);
        v15 = sub_22FFB0588();
        if (v15)
        {
          v19 = sub_22FFB05B8();
          if (__OFSUB__(v17, v19))
          {
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

          v15 += v17 - v19;
        }

        v20 = __OFSUB__(v18, v17);
        v14 = v18 - v17;
        if (!v20)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v9 != 1)
        {
          v75 = v7;
          LOWORD(v76) = v6;
          BYTE2(v76) = BYTE2(v6);
          BYTE3(v76) = BYTE3(v6);
          BYTE4(v76) = BYTE4(v6);
          BYTE5(v76) = BYTE5(v6);
          v24 = &v75 + BYTE6(v6);
          v25 = &v75;
LABEL_37:
          sub_22FEC21C0(v25, v24, &v73, v7, v6);
          return image4_environment_destroy();
        }

        v14 = (v7 >> 32) - v7;
        if (v7 >> 32 >= v7)
        {
          v15 = sub_22FFB0588();
          if (!v15)
          {
LABEL_29:
            v21 = sub_22FFB05A8();
            if (v21 >= v14)
            {
              v22 = v14;
            }

            else
            {
              v22 = v21;
            }

            v23 = (v22 + v15);
            if (v15)
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }

            v25 = v15;
            goto LABEL_37;
          }

          v16 = sub_22FFB05B8();
          if (!__OFSUB__(v7, v16))
          {
            v15 += v7 - v16;
            goto LABEL_29;
          }

          goto LABEL_95;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_94;
    }

    sub_22FEC4B30();
    swift_allocError();
    *v10 = xmmword_22FFB3CC0;
LABEL_13:
    *(v10 + 16) = 2;
    return swift_willThrow();
  }

  if (v9)
  {
    if (v7 == v7 >> 32)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if ((v6 & 0xFF000000000000) == 0)
  {
LABEL_10:
    sub_22FEA55AC(v7, v6);
    sub_22FEA55AC(v7, v6);
    goto LABEL_12;
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (v8 <= 1 || v8 == 2)
  {
    goto LABEL_15;
  }

  v26 = MEMORY[0x277CC9318];
  v27 = MEMORY[0x277CC9300];
  v78 = MEMORY[0x277CC9318];
  v79 = MEMORY[0x277CC9300];
  v75 = v7;
  v76 = v6;
  v28 = __swift_project_boxed_opaque_existential_1(&v75, MEMORY[0x277CC9318]);
  v29 = *v28;
  v30 = v28[1];
  v31 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v31 != 2)
    {
      memset(v72, 0, 14);
      v32 = v72;
      goto LABEL_66;
    }

    v34 = *(v29 + 16);
    v33 = *(v29 + 24);
    v35 = sub_22FFB0588();
    if (v35)
    {
      v36 = sub_22FFB05B8();
      if (__OFSUB__(v34, v36))
      {
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v35 += v34 - v36;
    }

    v20 = __OFSUB__(v33, v34);
    v37 = v33 - v34;
    if (v20)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v38 = sub_22FFB05A8();
    if (v38 >= v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = v38;
    }

    v40 = &v35[v39];
    if (v35)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    sub_22FF9E9E4(v35, v41, &v73);
    v26 = MEMORY[0x277CC9318];
LABEL_64:
    v27 = MEMORY[0x277CC9300];
    goto LABEL_67;
  }

  if (v31)
  {
    v42 = v29;
    v43 = v29 >> 32;
    v44 = v43 - v42;
    if (v43 < v42)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v45 = sub_22FFB0588();
    if (v45)
    {
      v46 = sub_22FFB05B8();
      if (__OFSUB__(v42, v46))
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v45 += v42 - v46;
    }

    v26 = MEMORY[0x277CC9318];
    v47 = sub_22FFB05A8();
    if (v47 >= v44)
    {
      v48 = v44;
    }

    else
    {
      v48 = v47;
    }

    v49 = &v45[v48];
    if (v45)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    sub_22FF9E9E4(v45, v50, &v73);
    goto LABEL_64;
  }

  v72[0] = *v28;
  LOWORD(v72[1]) = v30;
  BYTE2(v72[1]) = BYTE2(v30);
  BYTE3(v72[1]) = BYTE3(v30);
  BYTE4(v72[1]) = BYTE4(v30);
  BYTE5(v72[1]) = BYTE5(v30);
  v32 = v72 + BYTE6(v30);
LABEL_66:
  sub_22FF9E9E4(v72, v32, &v73);
LABEL_67:
  v51 = v73;
  v52 = v74;
  __swift_destroy_boxed_opaque_existential_1(&v75);
  v75 = v51;
  v76 = v52;
  v77 = 1;
  sub_22FEC1A38(1, 0, a3);
  if (!v4)
  {
    sub_22FEA55AC(v7, v6);
    return sub_22FEA55AC(v51, v52);
  }

  sub_22FEA55AC(v51, v52);
  v78 = v26;
  v79 = v27;
  v75 = v7;
  v76 = v6;
  v53 = __swift_project_boxed_opaque_existential_1(&v75, v26);
  v54 = *v53;
  v55 = v53[1];
  v56 = v55 >> 62;
  if ((v55 >> 62) > 1)
  {
    if (v56 != 2)
    {
      memset(v72, 0, 14);
      v58 = v72;
      v57 = v72;
      goto LABEL_91;
    }

    v59 = *(v54 + 16);
    v60 = *(v54 + 24);
    v61 = sub_22FFB0588();
    if (v61)
    {
      v62 = sub_22FFB05B8();
      v54 = v59 - v62;
      if (__OFSUB__(v59, v62))
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
      }

      v61 += v54;
    }

    v20 = __OFSUB__(v60, v59);
    v63 = v60 - v59;
    if (!v20)
    {
LABEL_83:
      v67 = sub_22FFB05A8();
      if (v67 >= v63)
      {
        v68 = v63;
      }

      else
      {
        v68 = v67;
      }

      v69 = (v68 + v61);
      if (v61)
      {
        v57 = v69;
      }

      else
      {
        v57 = 0;
      }

      v58 = v61;
      goto LABEL_91;
    }

    __break(1u);
LABEL_79:
    v64 = v54;
    v65 = v54 >> 32;
    v63 = v65 - v64;
    if (v65 < v64)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v61 = sub_22FFB0588();
    if (v61)
    {
      v66 = sub_22FFB05B8();
      if (__OFSUB__(v64, v66))
      {
        goto LABEL_102;
      }

      v61 += v64 - v66;
    }

    goto LABEL_83;
  }

  if (v56)
  {
    goto LABEL_79;
  }

  v72[0] = *v53;
  LOWORD(v72[1]) = v55;
  BYTE2(v72[1]) = BYTE2(v55);
  BYTE3(v72[1]) = BYTE3(v55);
  BYTE4(v72[1]) = BYTE4(v55);
  BYTE5(v72[1]) = BYTE5(v55);
  v57 = v72 + BYTE6(v55);
  v58 = v72;
LABEL_91:
  sub_22FF9E9E4(v58, v57, &v73);
  v70 = v73;
  v71 = v74;
  __swift_destroy_boxed_opaque_existential_1(&v75);
  v75 = v70;
  v76 = v71;
  v77 = 2;
  sub_22FEC1A38(1, 0, a3);

  return sub_22FEA55AC(v70, v71);
}

uint64_t sub_22FEC21C0(uint64_t a1, void x1_0, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_14;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(a3 + 16);
    v7 = *(a3 + 24);
    a3 = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (v6)
  {
LABEL_9:
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_10;
    }

    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_14:
    __break(1u);
  }

LABEL_10:
  v9 = image4_trust_new();
  if (v9)
  {
    v13 = v9;
    v14 = 0;
    v15 = 0;
    v16 = -256;
    image4_trust_evaluate();
    sub_22FEC4B30();
    swift_allocError();
    *v10 = xmmword_22FFB3CD0;
    *(v10 + 16) = 2;
    swift_willThrow();
    sub_22FEC4B84(v14, v15, v16);
    return image4_trust_destroy();
  }

  else
  {
    sub_22FEC4B30();
    swift_allocError();
    *v11 = xmmword_22FFB3CE0;
    *(v11 + 16) = 2;
    return swift_willThrow();
  }
}

uint64_t Image4Manifest.digest<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  sub_22FEA5608(*v3, v6);
  sub_22FEB0E54();
  sub_22FFB1378();
  return sub_22FEA55AC(v5, v6);
}

uint64_t static Image4Manifest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

uint64_t sub_22FEC26B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

uint64_t Image4Manifest.Error.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 8);
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x23190E460](5);

      return sub_22FFB1548();
    }

    else
    {
      if (v2 > 1)
      {
        if (v2 ^ 2 | v3)
        {
          v5 = 4;
        }

        else
        {
          v5 = 2;
        }
      }

      else
      {
        v5 = (v2 | v3) != 0;
      }

      return MEMORY[0x23190E460](v5);
    }
  }

  else
  {
    MEMORY[0x23190E460](3);
    return sub_22FFB1CD8();
  }
}

uint64_t Image4Manifest.Error.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_22FFB1CA8();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x23190E460](5);
      sub_22FFB1548();
    }

    else
    {
      if (v1 > 1)
      {
        if (v1 ^ 2 | v2)
        {
          v4 = 4;
        }

        else
        {
          v4 = 2;
        }
      }

      else
      {
        v4 = (v1 | v2) != 0;
      }

      MEMORY[0x23190E460](v4);
    }
  }

  else
  {
    MEMORY[0x23190E460](3);
    sub_22FFB1CD8();
  }

  return sub_22FFB1CF8();
}

uint64_t sub_22FEC28B8(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 8);
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x23190E460](5);

      return sub_22FFB1548();
    }

    else
    {
      if (v2 > 1)
      {
        if (v2 ^ 2 | v3)
        {
          v5 = 4;
        }

        else
        {
          v5 = 2;
        }
      }

      else
      {
        v5 = (v2 | v3) != 0;
      }

      return MEMORY[0x23190E460](v5);
    }
  }

  else
  {
    MEMORY[0x23190E460](3);
    return sub_22FFB1CD8();
  }
}

uint64_t sub_22FEC2990()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_22FFB1CA8();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x23190E460](5);
      sub_22FFB1548();
    }

    else
    {
      if (v1 > 1)
      {
        if (v1 ^ 2 | v2)
        {
          v4 = 4;
        }

        else
        {
          v4 = 2;
        }
      }

      else
      {
        v4 = (v1 | v2) != 0;
      }

      MEMORY[0x23190E460](v4);
    }
  }

  else
  {
    MEMORY[0x23190E460](3);
    sub_22FFB1CD8();
  }

  return sub_22FFB1CF8();
}

uint64_t Image4Manifest.description.getter()
{
  v1 = sub_22FFB13C8();
  *&v32 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22FFB1398();
  v31 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = *v0;
  v11 = v0[1];
  sub_22FEC471C(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  sub_22FEA5608(v10, v11);
  sub_22FF9EA78(v10, v11, v3);
  sub_22FEA55AC(v10, v11);
  sub_22FFB1368();
  (*(v32 + 8))(v3, v1);
  v12 = *(v31 + 16);
  v29 = v9;
  v12(v7, v9, v4);
  sub_22FEC471C(&qword_28148F1B8, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  v30 = v4;
  result = sub_22FFB1608();
  v14 = v33;
  v15 = v34;
  v16 = *(v33 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v34 == v16)
  {
LABEL_2:
    (*(v31 + 8))(v29, v30);

    v33 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
    sub_22FEB0F00();
    v18 = sub_22FFB1458();

    return v18;
  }

  else
  {
    v32 = xmmword_22FFB2D10;
    v19 = v34;
    while ((v15 & 0x8000000000000000) == 0)
    {
      if (v19 >= *(v14 + 16))
      {
        goto LABEL_13;
      }

      v20 = *(v14 + 32 + v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
      v21 = swift_allocObject();
      *(v21 + 16) = v32;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v22 = sub_22FFB14D8();
      v24 = v23;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22FEC2E8C(0, *(v17 + 16) + 1, 1, v17);
        v17 = result;
      }

      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_22FEC2E8C((v25 > 1), v26 + 1, 1, v17);
        v17 = result;
      }

      ++v19;
      *(v17 + 16) = v26 + 1;
      v27 = v17 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      if (v16 == v19)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

char *sub_22FEC2E8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1538, &qword_22FFB2D70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FEC2F98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C38, &qword_22FFB3FA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_22FEC30E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[3] = 2 * ((v17 - 32) / 48);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[6 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 48 * v14);
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

char *sub_22FEC322C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C60, &qword_22FFB3FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FEC334C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C58, &qword_22FFB3FC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FEC3458(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C50, &qword_22FFB3FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FEC3580(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_22FEC369C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C40, &unk_22FFB3FB0);
  v10 = *(sub_22FFB0CC8() - 8);
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
  v15 = *(sub_22FFB0CC8() - 8);
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

char *sub_22FEC3874(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C30, &qword_22FFB3FA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22FEC3980@<X0>(_BYTE *__src@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_22FF55698(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_22FFB05D8();
      swift_allocObject();
      v8 = sub_22FFB0578();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_22FFB0738();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_22FEC3A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_22FEC3C68(MEMORY[0x277D84B78], sub_22FEC4D50, v10, a1, a2, MEMORY[0x277D84B78], MEMORY[0x277D84A98], TupleTypeMetadata2, MEMORY[0x277D84AC0], v9);
}

uint64_t sub_22FEC3B20@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v9 + 16))(v11, a3, a4);
  result = sub_22FFB1618();
  *(a6 + v12) = result;
  return result;
}

uint64_t sub_22FEC3C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v22 = v24 - v21;
  if (v17)
  {
    v23 = *(*(v19 - 8) + 72);
    if (v23)
    {
      if (v18 - v17 != 0x8000000000000000 || v23 != -1)
      {
        result = v20(v17, (v18 - v17) / v23, v15);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v15, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v20(0, 0, v24 - v21);
  v15 = v22;
  if (v10)
  {
    return (*(v12 + 32))(a10, v15, a7);
  }

  return result;
}

BOOL sub_22FEC3DC8(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_22FEA5608(a3, a4);
          return sub_22FEEBD98(v13, a2, a3, a4) & 1;
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

BOOL _s16CloudAttestation14Image4ManifestV5ErrorO2eeoiySbAE_AEtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_22FEC4B18(*a1, v3, 0);
      sub_22FEC4B18(v5, v6, 0);
      return v2 == v5;
    }

    goto LABEL_17;
  }

  if (v4 != 1)
  {
    if (v2 > 1)
    {
      if (v2 ^ 2 | v3)
      {
        if (v7 != 2 || v5 != 3 || v6)
        {
          goto LABEL_17;
        }

        sub_22FEC4B18(*a1, v3, 2);
        v12 = 3;
      }

      else
      {
        if (v7 != 2 || v5 != 2 || v6)
        {
          goto LABEL_17;
        }

        sub_22FEC4B18(*a1, v3, 2);
        v12 = 2;
      }

LABEL_33:
      sub_22FEC4B18(v12, 0, 2);
      return 1;
    }

    if (v2 | v3)
    {
      if (v7 == 2 && v5 == 1 && !v6)
      {
        sub_22FEC4B18(*a1, v3, 2);
        v11 = 1;
        sub_22FEC4B18(1, 0, 2);
        return v11;
      }

      goto LABEL_17;
    }

    if (v7 == 2 && !(v6 | v5))
    {
      sub_22FEC4B18(*a1, v3, 2);
      v12 = 0;
      goto LABEL_33;
    }

LABEL_17:
    sub_22FEC4B00(v5, v6, v7);
    sub_22FEC4B18(v2, v3, v4);
    sub_22FEC4B18(v5, v6, v7);
    return 0;
  }

  if (v7 != 1)
  {

    goto LABEL_17;
  }

  if (v2 != v5 || v3 != v6)
  {
    v9 = sub_22FFB1BC8();
    sub_22FEC4B00(v5, v6, 1);
    sub_22FEC4B00(v2, v3, 1);
    sub_22FEC4B18(v2, v3, 1);
    sub_22FEC4B18(v5, v6, 1);
    return v9 & 1;
  }

  v11 = 1;
  sub_22FEC4B00(*a1, v3, 1);
  sub_22FEC4B00(v2, v3, 1);
  sub_22FEC4B18(v2, v3, 1);
  sub_22FEC4B18(v2, v3, 1);
  return v11;
}

uint64_t sub_22FEC4190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v29 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v12);
  (*(v16 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C88, &unk_22FFC0140);
  if (swift_dynamicCast())
  {
    sub_22FE9B84C(v32, &v34);
    __swift_project_boxed_opaque_existential_1(&v34, v35);
    sub_22FFB0618();
    v32[0] = v31;
    __swift_destroy_boxed_opaque_existential_1(&v34);
    goto LABEL_34;
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_22FEC4CC8(v32);
  sub_22FFB1638();
  if (*(&v34 + 1) >> 60 != 15)
  {
    v32[0] = v34;
    goto LABEL_34;
  }

  v30 = v34;
  v17 = sub_22FFB1628();
  *&v32[0] = sub_22FF9F498(v17);
  *(&v32[0] + 1) = v18;
  MEMORY[0x28223BE20](*&v32[0]);
  *(&v29 - 4) = a2;
  *(&v29 - 3) = a3;
  *(&v29 - 2) = a1;
  sub_22FFB0768();
  v19 = *&v10[*(TupleTypeMetadata2 + 48)];
  (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
  v20 = *(&v32[0] + 1) >> 62;
  if ((*(&v32[0] + 1) >> 62) <= 1)
  {
    if (v20)
    {
      if (__OFSUB__(DWORD1(v32[0]), v32[0]))
      {
        goto LABEL_38;
      }

      if (v19 == DWORD1(v32[0]) - LODWORD(v32[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v19 == BYTE14(v32[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v20 == 2)
  {
    v22 = *(*&v32[0] + 16);
    v21 = *(*&v32[0] + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v19 == v24)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v20 == 2)
    {
      v25 = *(*&v32[0] + 24);
    }

    else if (v20 == 1)
    {
      v25 = *&v32[0] >> 32;
    }

    else
    {
      v25 = BYTE14(v32[0]);
    }

LABEL_31:
    if (v25 >= v19)
    {
      sub_22FFB0758();
LABEL_33:
      (*(v11 + 8))(v14, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v19)
  {
    v25 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v34 = 0;
  *(&v34 + 7) = 0;
  sub_22FFB18A8();
  if (BYTE1(v31) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v26) = 0;
  do
  {
    *(&v34 + v26) = v31;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v26 == 14)
    {
      *&v31 = v34;
      *(&v31 + 6) = *(&v34 + 6);
      sub_22FFB0778();
      LOBYTE(v26) = 0;
    }

    sub_22FFB18A8();
  }

  while ((BYTE1(v31) & 1) == 0);
  if (v26)
  {
    *&v31 = v34;
    *(&v31 + 6) = *(&v34 + 6);
    sub_22FFB0778();
    sub_22FEA56EC(v30, *(&v30 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  sub_22FEA56EC(v30, *(&v30 + 1));
LABEL_34:
  v27 = v32[0];
  sub_22FEA5608(*&v32[0], *(&v32[0] + 1));
  sub_22FEA55AC(v27, *(&v27 + 1));
  return v27;
}

uint64_t sub_22FEC471C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22FEC4768()
{
  result = qword_27DAF1C20;
  if (!qword_27DAF1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1C20);
  }

  return result;
}

unint64_t sub_22FEC47C0()
{
  result = qword_27DAF1C28;
  if (!qword_27DAF1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1C28);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22FEC4844(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22FEC4888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DarwinInit.SecureConfigSecurityPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DarwinInit.SecureConfigSecurityPolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}