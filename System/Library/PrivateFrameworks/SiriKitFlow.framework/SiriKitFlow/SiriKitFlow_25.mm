void sub_1DCD948F4(void *a1@<X0>, uint64_t a2@<X3>, int64_t a3@<X4>, uint64_t *a4@<X8>, uint64_t a5@<X1>, unint64_t a6@<X2>)
{
  sub_1DCD938C8(a1, &v24, a5, a6);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B38, &qword_1DD103310);
    if (swift_dynamicCast())
    {
      v9 = v22;
      if (*(v22 + 16) > a3)
      {
        goto LABEL_4;
      }

LABEL_11:
      sub_1DCB28B08(a2, &v22, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      if (!v23)
      {
        sub_1DCB16D50(&v22, &dword_1ECCA3CE0, &unk_1DD0E4F80);
        goto LABEL_22;
      }

      sub_1DCB20B30(&v22, &v24);
      sub_1DCB0DF6C(&v24, &v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DCB1C394(0, *(v9 + 16) + 1, 1, v9);
        v9 = v18;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1DCB1C394(v13 > 1, v14 + 1, 1, v9);
        v9 = v19;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v24);
      *(v9 + 16) = v14 + 1;
      v11 = &v22;
      v12 = (v9 + 32 * v14 + 32);
LABEL_17:
      sub_1DCB20B30(v11, v12);
LABEL_22:
      a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B38, &qword_1DD103310);
      *a4 = v9;
      return;
    }
  }

  else
  {
    sub_1DCB16D50(&v24, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if ((a3 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  sub_1DCB28B08(a2, &v22, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  if (!v23)
  {
    sub_1DCB16D50(&v22, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  sub_1DCB20B30(&v22, &v24);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1DCF3444C(v9);
    v9 = v20;
    if ((a3 & 0x8000000000000000) == 0)
    {
LABEL_7:
      if (*(v9 + 16) > a3)
      {
        v10 = v9 + 32 * a3;
        __swift_destroy_boxed_opaque_existential_1Tm((v10 + 32));
        v11 = &v24;
        v12 = (v10 + 32);
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1DCF3444C(v9);
  v9 = v21;
LABEL_20:
  v15 = *(v9 + 16);
  if (v15 > a3)
  {
    v16 = v15 - 1;
    v17 = v9 + 32 * a3;
    __swift_destroy_boxed_opaque_existential_1Tm((v17 + 32));
    sub_1DCB5DF38((v17 + 64), v16 - a3, (v17 + 32));
    *(v9 + 16) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_1DCD94B88(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  memset(v5, 0, sizeof(v5));
  sub_1DCD93B8C(a1, a2, a3, v5, a4, 0);
  return sub_1DCB16D50(v5, &dword_1ECCA3CE0, &unk_1DD0E4F80);
}

uint64_t sub_1DCD94BD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B60, &qword_1DD0F3C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0F3C10;
  v1 = MEMORY[0x1E69E6370];
  *(inited + 32) = 1;
  *(inited + 40) = v1;
  v2 = MEMORY[0x1E6969080];
  *(inited + 48) = 2;
  *(inited + 56) = v2;
  v3 = MEMORY[0x1E69E63B0];
  *(inited + 64) = 3;
  *(inited + 72) = v3;
  v4 = MEMORY[0x1E69E6448];
  *(inited + 80) = 4;
  *(inited + 88) = v4;
  v5 = MEMORY[0x1E69E72F0];
  *(inited + 96) = 5;
  *(inited + 104) = v5;
  v6 = MEMORY[0x1E69E7360];
  *(inited + 112) = 6;
  *(inited + 120) = v6;
  v7 = MEMORY[0x1E69E6158];
  *(inited + 128) = 7;
  *(inited + 136) = v7;
  v8 = MEMORY[0x1E69E7668];
  *(inited + 144) = 8;
  *(inited + 152) = v8;
  v9 = MEMORY[0x1E69E76D8];
  *(inited + 160) = 9;
  *(inited + 168) = v9;
  *(inited + 176) = 21;
  *(inited + 184) = v3;
  *(inited + 192) = 22;
  *(inited + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B68, &qword_1DD0F3C28);
  *(inited + 208) = 24;
  *(inited + 216) = MEMORY[0x1E69E6530];
  *(inited + 224) = 25;
  *(inited + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B70, &qword_1DD0F3C30);
  *(inited + 240) = 30;
  *(inited + 248) = v7;
  *(inited + 256) = 31;
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
  type metadata accessor for INIntentSlotValueType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC360, &qword_1DD0FE290);
  sub_1DCD94D7C();
  result = sub_1DD0DDE9C();
  qword_1ECCA5B58 = result;
  return result;
}

unint64_t sub_1DCD94D7C()
{
  result = qword_1ECCA5B78;
  if (!qword_1ECCA5B78)
  {
    type metadata accessor for INIntentSlotValueType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5B78);
  }

  return result;
}

uint64_t INPerson.debugDescriptionLite.getter()
{
  v1 = v0;
  v2 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDE57E18;
  v17 = sub_1DD0DE6DC();
  if (!os_log_type_enabled(v16, v17))
  {
    return 0xD00000000000001BLL;
  }

  v28 = v4;
  v29 = v2;
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_1EDE57DD0);
  (*(v11 + 16))(v15, v18, v9);
  sub_1DD0DD84C();
  v19 = swift_slowAlloc();
  *v19 = 0;
  v20 = sub_1DD0DD87C();
  v21 = sub_1DD0DE7FC();
  v22 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v20, v21, v22, "INIntent.debugDescriptionLite", "", v19, 2u);
  sub_1DCD950C4(v1, &v30);
  v23 = sub_1DD0DE7EC();
  v24 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v20, v23, v24, "INIntent.debugDescriptionLite", "", v19, 2u);

  v25 = v30;
  MEMORY[0x1E12A8390](v19, -1, -1);
  (*(v28 + 8))(v8, v29);
  (*(v11 + 8))(v15, v9);
  return v25;
}

uint64_t sub_1DCD950C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 displayName];
  v5 = sub_1DD0DDFBC();
  v7 = v6;

  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC5FCB4(v5, v7, 0x4E79616C70736964, 0xEB00000000656D61);
  v8 = [a1 personHandle];
  if (v8)
  {
    v9 = v8;
    v10 = INPersonHandle.debugDescriptionLite.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0x3E6C696E3CLL;
    v12 = 0xE500000000000000;
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC5FCB4(v10, v12, 0x61486E6F73726570, 0xEC000000656C646ELL);
  v13 = sub_1DCB35468(a1, &selRef_contactIdentifier);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x3E6C696E3CLL;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC5FCB4(v15, v16, 0xD000000000000011, 0x80000001DD11CFC0);
  v17 = sub_1DCB35468(a1, &selRef_customIdentifier);
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0x3E6C696E3CLL;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC5FCB4(v19, v20, 0xD000000000000010, 0x80000001DD11CFE0);
  swift_getObjectType();
  sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](40, 0xE100000000000000);
  v21 = sub_1DD0DDE7C();
  v23 = v22;

  MEMORY[0x1E12A6780](v21, v23);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  sub_1DCB1C4D8();
  v24 = sub_1DD0DEA3C();
  v26 = v25;

  *a2 = v24;
  a2[1] = v26;
  return result;
}

uint64_t INPersonHandle.debugDescriptionLite.getter()
{
  v1 = v0;
  v2 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDE57E18;
  v17 = sub_1DD0DE6DC();
  if (!os_log_type_enabled(v16, v17))
  {
    return 0xD00000000000001BLL;
  }

  v28 = v4;
  v29 = v2;
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_1EDE57DD0);
  (*(v11 + 16))(v15, v18, v9);
  sub_1DD0DD84C();
  v19 = swift_slowAlloc();
  *v19 = 0;
  v20 = sub_1DD0DD87C();
  v21 = sub_1DD0DE7FC();
  v22 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v20, v21, v22, "INIntent.debugDescriptionLite", "", v19, 2u);
  sub_1DCD956CC(v1, &v30);
  v23 = sub_1DD0DE7EC();
  v24 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v20, v23, v24, "INIntent.debugDescriptionLite", "", v19, 2u);

  v25 = v30;
  MEMORY[0x1E12A8390](v19, -1, -1);
  (*(v28 + 8))(v8, v29);
  (*(v11 + 8))(v15, v9);
  return v25;
}

uint64_t sub_1DCD956CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 label];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B80, &qword_1DD0F3C80);
  v5 = sub_1DD0DE02C();
  v7 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC5FCB4(v5, v7, 0x6C6562616CLL, 0xE500000000000000);
  v8 = sub_1DCB5DE54(a1);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC5FCB4(v10, v11, 0x65756C6176, 0xE500000000000000);
  }

  else
  {
    sub_1DCB21038(0x65756C6176, 0xE500000000000000);
    if (v12)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2810, &qword_1DD0F4B30);
      sub_1DD0DEDCC();

      sub_1DD0DEDEC();
    }
  }

  swift_getObjectType();
  v18 = sub_1DD0DF2AC();
  v19 = v13;
  MEMORY[0x1E12A6780](40, 0xE100000000000000);
  v14 = sub_1DD0DDE7C();
  v16 = v15;

  MEMORY[0x1E12A6780](v14, v16);

  result = MEMORY[0x1E12A6780](41, 0xE100000000000000);
  *a2 = v18;
  a2[1] = v19;
  return result;
}

void static Acceptance.no()(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  OUTLINED_FUNCTION_0_58(a1);
}

void static Acceptance.yes()(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  OUTLINED_FUNCTION_0_58(a1);
}

void sub_1DCD95A08(uint64_t a1@<X1>, unint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v10 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(a5 + 24) = type metadata accessor for LifeCycleModifierFlow(0, AssociatedTypeWitness, v8, v9);
  *(a5 + 32) = swift_getWitnessTable();
  ActingFlow.attach(option:)(&v10, a1);
}

void *destroy for AcceptanceType(void *a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 <= 1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return a1;
}

uint64_t initializeWithCopy for AcceptanceType(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1);
    *(a1 + 40) = 1;
  }

  else if (v3)
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 25) = *(a2 + 25);
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 40) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for AcceptanceType(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 <= 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v7 = *(a2 + 3);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 4);
      (**(v7 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else if (v5)
    {
      v8 = *a2;
      v9 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v8;
      *(a1 + 16) = v9;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for AcceptanceType(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 <= 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = 1;
    }

    else
    {
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      if (v5)
      {
        *(a1 + 25) = *(a2 + 25);
      }

      else
      {
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 0;
      }
    }
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for AcceptanceType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AcceptanceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void *destroy for Acceptance(void *a1)
{
  if (*(a1 + 40) <= 1u)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return a1;
}

uint64_t initializeWithCopy for Acceptance(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 40) = 1;
  }

  else if (*(a2 + 40))
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 25) = *(a2 + 25);
  }

  else
  {
    v3 = *(a2 + 24);
    *(a1 + 24) = v3;
    (**(v3 - 8))(a1);
    *(a1 + 40) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for Acceptance(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    sub_1DCD96000(a1);
    if (*(a2 + 40) == 1)
    {
      v5 = *(a2 + 3);
      *(a1 + 24) = v5;
      *(a1 + 32) = *(a2 + 4);
      (**(v5 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else if (*(a2 + 40))
    {
      v6 = *a2;
      v7 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v6;
      *(a1 + 16) = v7;
    }

    else
    {
      v4 = *(a2 + 3);
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for Acceptance(uint64_t a1, _OWORD *a2)
{
  if (a1 != a2)
  {
    sub_1DCD96000(a1);
    v4 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v4;
    *(a1 + 25) = *(a2 + 25);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for Acceptance(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for Acceptance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCD96188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v6 = &v12 - v5;
  (*(v7 + 16))(&v12 - v5);
  v10 = type metadata accessor for InputBinding(0, v4, v8, v9);
  return InputBinding.wrappedValue.setter(v6, v10);
}

uint64_t InputBinding.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[3];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  (*(v5 + 16))(v7, a1, v4);
  (*(v9 + 32))(v7, v8, v9);
  return (*(v5 + 8))(a1, v4);
}

void (*InputBinding.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v5[5] = __swift_coroFrameAllocStub(v8);
  InputBinding.wrappedValue.getter();
  return sub_1DCD96444;
}

void sub_1DCD96444(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    InputBinding.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    InputBinding.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1DCD96540()
{
  OUTLINED_FUNCTION_16_30();
  result = (*(v2 + 48))(v1, v2);
  *v0 = result;
  return result;
}

uint64_t InputBinding.entity<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DCD967D4(a1, a2);
}

{
  return sub_1DCD968AC(a1, a2);
}

{
  return sub_1DCD967D4(a1, a2);
}

{
  return sub_1DCD968AC(a1, a2);
}

uint64_t sub_1DCD967D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_40(a1, a2);
  v7 = *(v5 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v3);
  v10 = type metadata accessor for ProjectedStorage(0, v7, v8, v9);
  v6[3] = v10;
  v6[4] = OUTLINED_FUNCTION_0_59(v10, v10);
  OUTLINED_FUNCTION_126();
  *v6 = swift_allocObject();

  v19 = OUTLINED_FUNCTION_12_37(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);
  return v2(v19);
}

uint64_t sub_1DCD968AC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_40(a1, a2);
  v7 = *(v5 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v3);
  v10 = type metadata accessor for ProjectedStorage(0, v7, v8, v9);
  v6[3] = v10;
  v6[4] = OUTLINED_FUNCTION_0_59(v10, v10);
  OUTLINED_FUNCTION_126();
  *v6 = swift_allocObject();

  v19 = OUTLINED_FUNCTION_12_37(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);
  return v2(v19);
}

uint64_t InputBinding.entities<A>(_:)(uint64_t a1, uint64_t a2)
{
  return sub_1DCD968AC(a1, a2);
}

{
  return sub_1DCD967D4(a1, a2);
}

{
  return sub_1DCD968AC(a1, a2);
}

{
  return sub_1DCD967D4(a1, a2);
}

void InputBinding.subscript.getter()
{
  OUTLINED_FUNCTION_5_53();
  sub_1DCD970D0();
}

{
  OUTLINED_FUNCTION_5_53();
  sub_1DCD970D0();
}

{
  OUTLINED_FUNCTION_4_62();
  sub_1DCD970D0();
}

{
  OUTLINED_FUNCTION_4_62();
  sub_1DCD970D0();
}

{
  OUTLINED_FUNCTION_5_53();
  sub_1DCD970D0();
}

{
  OUTLINED_FUNCTION_5_53();
  sub_1DCD970D0();
}

{
  OUTLINED_FUNCTION_4_62();
  sub_1DCD970D0();
}

{
  OUTLINED_FUNCTION_4_62();
  sub_1DCD970D0();
}

void InputBinding.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  sub_1DCD972B4(a1, a2, a5);
}

{
  sub_1DCD972B4(a1, a2, a5);
}

void sub_1DCD972B4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  sub_1DCB17CA0(v5, v11);
  v10 = type metadata accessor for ProjectedStorage(0, *(a2 + 16), *(v8 + *MEMORY[0x1E69E6CE8] + 8), v9);
  a5[3] = v10;
  a5[4] = OUTLINED_FUNCTION_0_59(v10, v10);
  OUTLINED_FUNCTION_126();
  *a5 = swift_allocObject();
  sub_1DD0DCF8C();
}

void InputBinding.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  sub_1DCD972B4(a1, a2, a4);
}

{
  sub_1DCD972B4(a1, a2, a4);
}

{
  sub_1DCD972B4(a1, a2, a4);
}

{
  sub_1DCD972B4(a1, a2, a4);
}

uint64_t sub_1DCD97554@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DCD975BC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1DCD97628(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = OUTLINED_FUNCTION_0_59(v5, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1DCD976DC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DCD9778C()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  *(v0 + 40) = sub_1DCD9ECAC;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_126();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v9);
  OUTLINED_FUNCTION_27_20(v10);
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD9782C()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  *(v0 + 40) = sub_1DCD9EC1C;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_126();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v9);
  OUTLINED_FUNCTION_27_20(v10);
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD978CC()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  *(v0 + 40) = sub_1DCD9EB50;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_126();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v9);
  OUTLINED_FUNCTION_27_20(v10);
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD9796C()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  *(v0 + 40) = sub_1DCD9EAE4;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_126();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v9);
  OUTLINED_FUNCTION_27_20(v10);
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD97A0C()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9EA08;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9ED7C;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_126();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v10);
  OUTLINED_FUNCTION_27_20(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9EA48;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9ED80;
  v0[8] = v12;

  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD97AFC()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E960;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9ED7C;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_126();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v10);
  OUTLINED_FUNCTION_27_20(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E9A0;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9ED80;
  v0[8] = v12;

  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD97BEC()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E8AC;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9ED7C;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_126();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v10);
  OUTLINED_FUNCTION_27_20(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E910;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9ED80;
  v0[8] = v12;

  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD97CDC()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E81C;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9E85C;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_126();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v10);
  OUTLINED_FUNCTION_27_20(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E864;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9E8A4;
  v0[8] = v12;

  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD97DCC()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_47_13(v1, v2);
  v3 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_7_3();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v5);
  OUTLINED_FUNCTION_90_4(v6);
  *(v0 + 40) = sub_1DCD9E764;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_7_3();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v9);
  OUTLINED_FUNCTION_26_19(v10);
  OUTLINED_FUNCTION_87_5();
}

void sub_1DCD97E70()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_47_13(v1, v2);
  v3 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_7_3();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v5);
  OUTLINED_FUNCTION_90_4(v6);
  *(v0 + 40) = sub_1DCD9E6FC;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_7_3();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v9);
  OUTLINED_FUNCTION_26_19(v10);
  OUTLINED_FUNCTION_87_5();
}

void sub_1DCD97F14()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_67_9();
  sub_1DCB17D04(v1, v2);
  v3 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_7_3();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v5);
  OUTLINED_FUNCTION_91_3(v6);
  OUTLINED_FUNCTION_41_4();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_10_40(v7, *MEMORY[0x1E69E6CE8]);
  v9 = OUTLINED_FUNCTION_81_4(v8);
  v0[5] = sub_1DCD9ED68;
  v0[6] = v9;
  v10 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v10, v11);
  OUTLINED_FUNCTION_7_3();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v12);
  OUTLINED_FUNCTION_26_19(v13);
  OUTLINED_FUNCTION_41_4();
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_79_7(v14);
  v15[6] = sub_1DCD9E6B4;
  v15[7] = v12;
  v0[7] = sub_1DCD9ED84;
  v0[8] = v15;
  sub_1DD0DCF8C();
}

void sub_1DCD98048()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_67_9();
  sub_1DCB17D04(v1, v2);
  v3 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_7_3();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v5);
  OUTLINED_FUNCTION_91_3(v6);
  OUTLINED_FUNCTION_41_4();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_10_40(v7, *MEMORY[0x1E69E6CE8]);
  v9 = OUTLINED_FUNCTION_81_4(v8);
  v0[5] = sub_1DCD9ED68;
  v0[6] = v9;
  v10 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v10, v11);
  OUTLINED_FUNCTION_7_3();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v12);
  OUTLINED_FUNCTION_26_19(v13);
  OUTLINED_FUNCTION_41_4();
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_79_7(v14);
  v15[6] = sub_1DCD9E64C;
  v15[7] = v12;
  v0[7] = sub_1DCD9ED84;
  v0[8] = v15;
  sub_1DD0DCF8C();
}

void sub_1DCD9817C()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_11_41(v1, v2);
  v3 = OUTLINED_FUNCTION_29_18();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v5);
  OUTLINED_FUNCTION_49_12(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E58C;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9ED78;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_29_18();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v10);
  OUTLINED_FUNCTION_48_13(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E608;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9ED6C;
  v0[8] = v12;
  sub_1DD0DCF8C();
}

void sub_1DCD9826C()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_11_41(v1, v2);
  v3 = OUTLINED_FUNCTION_29_18();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v5);
  OUTLINED_FUNCTION_49_12(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E538;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9E548;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_29_18();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v10);
  OUTLINED_FUNCTION_48_13(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E54C;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9E55C;
  v0[8] = v12;
  sub_1DD0DCF8C();
}

void sub_1DCD9835C()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_11_41(v1, v2);
  v3 = OUTLINED_FUNCTION_29_18();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v5);
  OUTLINED_FUNCTION_49_12(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E518;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD976D4;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_29_18();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v10);
  OUTLINED_FUNCTION_48_13(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E528;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD976D8;
  v0[8] = v12;
  sub_1DD0DCF8C();
}

void sub_1DCD9844C()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_11_41(v1, v2);
  v3 = OUTLINED_FUNCTION_29_18();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v5);
  OUTLINED_FUNCTION_49_12(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E4F8;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD975BC;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_29_18();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v10);
  OUTLINED_FUNCTION_48_13(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E508;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCCC34BC;
  v0[8] = v12;
  sub_1DD0DCF8C();
}

void sub_1DCD9853C()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_11_41(v1, v2);
  v3 = OUTLINED_FUNCTION_29_18();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v5);
  OUTLINED_FUNCTION_49_12(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E468;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9ED70;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_29_18();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v10);
  OUTLINED_FUNCTION_48_13(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E4B0;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9ED74;
  v0[8] = v12;
  sub_1DD0DCF8C();
}

void sub_1DCD9862C()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_11_41(v1, v2);
  v3 = OUTLINED_FUNCTION_29_18();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v5);
  OUTLINED_FUNCTION_49_12(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E43C;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9E44C;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_29_18();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v10);
  OUTLINED_FUNCTION_48_13(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E450;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9E464;
  v0[8] = v12;
  sub_1DD0DCF8C();
}

void sub_1DCD9871C()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_47_13(v1, v2);
  v3 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_7_3();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v5);
  OUTLINED_FUNCTION_90_4(v6);
  *(v0 + 40) = sub_1DCD9E3C0;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_7_3();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v9);
  OUTLINED_FUNCTION_26_19(v10);
  OUTLINED_FUNCTION_87_5();
}

void sub_1DCD987C0()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_47_13(v1, v2);
  v3 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_7_3();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v5);
  OUTLINED_FUNCTION_90_4(v6);
  *(v0 + 40) = sub_1DCD9E358;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_7_3();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v9);
  OUTLINED_FUNCTION_26_19(v10);
  OUTLINED_FUNCTION_87_5();
}

void sub_1DCD98864()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_67_9();
  sub_1DCB17D04(v1, v2);
  v3 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_7_3();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v5);
  OUTLINED_FUNCTION_91_3(v6);
  OUTLINED_FUNCTION_41_4();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_10_40(v7, *MEMORY[0x1E69E6CE8]);
  v9 = OUTLINED_FUNCTION_81_4(v8);
  v0[5] = sub_1DCD9ED68;
  v0[6] = v9;
  v10 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v10, v11);
  OUTLINED_FUNCTION_7_3();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v12);
  OUTLINED_FUNCTION_26_19(v13);
  OUTLINED_FUNCTION_41_4();
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_79_7(v14);
  v15[6] = sub_1DCD9E310;
  v15[7] = v12;
  v0[7] = sub_1DCD9ED84;
  v0[8] = v15;
  sub_1DD0DCF8C();
}

void sub_1DCD98998()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_67_9();
  sub_1DCB17D04(v1, v2);
  v3 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_7_3();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v5);
  OUTLINED_FUNCTION_91_3(v6);
  OUTLINED_FUNCTION_41_4();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_10_40(v7, *MEMORY[0x1E69E6CE8]);
  v9 = OUTLINED_FUNCTION_81_4(v8);
  v0[5] = sub_1DCD9E24C;
  v0[6] = v9;
  v10 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v10, v11);
  OUTLINED_FUNCTION_7_3();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v12);
  OUTLINED_FUNCTION_26_19(v13);
  OUTLINED_FUNCTION_41_4();
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_79_7(v14);
  v15[6] = sub_1DCD9E27C;
  v15[7] = v12;
  v0[7] = sub_1DCD9E2B0;
  v0[8] = v15;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD98ACC(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 80);
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v14 - v6;
  v9 = *(v8 + 112);
  v10 = *(v2 + v9);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v9) = v12;
    v13 = *(*v2 + 88);
    swift_beginAccess();
    (*(v4 + 16))(v7, v2 + v13, v3);
    sub_1DD0DDB3C();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_1DCD98C30@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 88);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_112();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1DCD98CC4(uint64_t a1)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 88);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_112();
  v8 = v7;
  (*(v7 + 24))(v1 + v4, a1, v6);
  v9 = swift_endAccess();
  sub_1DCD98ACC(v9, v10);
  return (*(v8 + 8))(a1, v6);
}

uint64_t (*sub_1DCD98DA0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DCD98E10;
}

uint64_t sub_1DCD98E10(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1DCD98ACC(result, v4);
  }

  return result;
}

void sub_1DCD98E84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v12 - v7;
  *(v3 + *(v9 + 112)) = 0;
  v10 = *(v6 + 16);
  v10((v3 + *(*v3 + 88)), a1, v5);
  sub_1DD0DDB6C();
  v10(v8, a1, v5);
  v11 = sub_1DD0DDB7C();
  *(v3 + *(*v3 + 104)) = v11;
  v12[1] = v11;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD99068()
{
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + v2);

  return v0;
}

uint64_t sub_1DCD9910C()
{
  sub_1DCD99068();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD9917C(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void sub_1DCD991BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  sub_1DD0DCF8C();
}

void sub_1DCD99248(void *a1, void *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD992AC(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t sub_1DCD99308(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1DCD99348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*sub_1DCD993F8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1DCD98DA0(v2);
  return sub_1DCBFD490;
}

uint64_t sub_1DCD99478(uint64_t a1)
{
  (*(v1 + 56))();
  OUTLINED_FUNCTION_112();
  v4 = *(v3 + 8);

  return v4(a1);
}

void sub_1DCD994E8()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v14 = *(v2 + 16);
  sub_1DD0DDAEC();
  v4 = *(v3 + 24);
  swift_getWitnessTable();
  v5 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_179();
  v11 = v0[3];
  v10 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v11);
  v16 = (*(v10 + 48))(v11, v10);
  OUTLINED_FUNCTION_112();
  (*(v12 + 16))(v15, v0, v3);
  v13 = swift_allocObject();
  v13[2] = v14;
  v13[3] = v4;
  memcpy(v13 + 4, v15, 0x48uLL);
  sub_1DD0DDC3C();

  swift_getWitnessTable();
  sub_1DD0DDBFC();
  (*(v7 + 8))(v1, v5);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD996F8(void *a1, void *a2, uint64_t a3)
{
  v4 = sub_1DD0DC6BC();
  v5 = sub_1DD0DE97C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 24))(v10, v11);
  v12 = 0;
  if (!__swift_getEnumTagSinglePayload(v9, 1, v4))
  {
    v12 = sub_1DD0DC63C();
  }

  (*(v6 + 8))(v9, v5);
  return v12;
}

uint64_t sub_1DCD99888(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v46 = a5;
  v47 = a2;
  v43 = a1;
  v44 = a4;
  v6 = *(*a4 + *MEMORY[0x1E69E6CE8]);
  v7 = sub_1DD0DB9FC();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v38 = &v37 - v9;
  v41 = v6;
  v10 = sub_1DD0DC6BC();
  v45 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v42 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v48 = &v37 - v15;
  v16 = sub_1DD0DE97C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v18);
  v21 = &v37 - v20;
  v22 = *(v16 - 8);
  v24 = MEMORY[0x1EEE9AC00](v19, v23);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v37 - v28;
  v30 = a3[3];
  v31 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v30);
  (*(v31 + 24))(v30, v31);
  (*(v22 + 32))(v21, v29, v16);
  result = __swift_getEnumTagSinglePayload(v21, 1, v10);
  if (result != 1)
  {
    v35 = v45;
    v36 = v48;
    (*(v45 + 32))(v48, v21, v10);
    (*(v35 + 16))(v42, v36, v10);

    sub_1DD0DCF8C();
  }

  v42 = v26;
  if (v47)
  {
    v33 = v38;
    sub_1DD0DBB3C();
    v34 = v40;
    sub_1DD0DB9DC();
    (*(v39 + 8))(v33, v34);
    sub_1DD0DC5FC();

    sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCD99DC0(void *a1, void *a2, uint64_t a3)
{
  v4 = sub_1DD0DC6BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 24))(v9, v10);
  v11 = sub_1DD0DC63C();
  (*(v5 + 8))(v8, v4);
  return v11;
}

void sub_1DCD99F1C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  v7 = *(v6 + 40);

  v7(&v8, v5, v6);
  sub_1DD0DC6BC();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD9A030(void *a1, void *a2, uint64_t a3)
{
  v4 = sub_1DD0DC6BC();
  v5 = sub_1DD0DE97C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 24))(v10, v11);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4))
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = sub_1DD0DC67C();
  }

  (*(v6 + 8))(v9, v5);
  return v12;
}

uint64_t sub_1DCD9A1BC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v46 = a1;
  v47 = a4;
  v45 = a3;
  v5 = *(*a3 + *MEMORY[0x1E69E6CE8]);
  v6 = sub_1DD0DB9FC();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v39 = &v39 - v8;
  v42 = v5;
  v9 = sub_1DD0DC6BC();
  v44 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v48 = &v39 - v14;
  v15 = sub_1DD0DE97C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v17);
  v20 = &v39 - v19;
  v21 = *(v15 - 8);
  v23 = MEMORY[0x1EEE9AC00](v18, v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v39 - v27;
  v29 = a2[3];
  v30 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v29);
  v31 = v29;
  v32 = v46;
  (*(v30 + 24))(v31, v30);
  v33 = *(v32 + 16);
  (*(v21 + 32))(v20, v28, v15);
  result = __swift_getEnumTagSinglePayload(v20, 1, v9);
  if (result != 1)
  {
    v37 = v44;
    v38 = v48;
    (*(v44 + 32))(v48, v20, v9);
    (*(v37 + 16))(v43, v38, v9);

    sub_1DD0DCF8C();
  }

  v43 = v25;
  if (v33)
  {
    v35 = v39;
    sub_1DD0DBB3C();
    v36 = v41;
    sub_1DD0DB9DC();
    (*(v40 + 8))(v35, v36);
    sub_1DD0DC5FC();

    sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCD9A6EC(void *a1, void *a2, uint64_t a3)
{
  v4 = sub_1DD0DC6BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 24))(v9, v10);
  v11 = sub_1DD0DC67C();
  (*(v5 + 8))(v8, v4);
  return v11;
}

void sub_1DCD9A840(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = *(v5 + 40);

  v6(&v7, v4, v5);
  sub_1DD0DC6BC();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD9A94C(void *a1, void *a2, uint64_t a3)
{
  v4 = sub_1DD0DC6BC();
  v5 = sub_1DD0DE97C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 24))(v10, v11);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4))
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1DD0DC69C();
  }

  (*(v6 + 8))(v9, v5);
  return v12;
}

uint64_t sub_1DCD9AAE0(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v45 = a2;
  v44 = a1;
  v6 = *(*a4 + *MEMORY[0x1E69E6CE8]);
  v7 = sub_1DD0DB9FC();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v38 = &v37 - v9;
  v41 = v6;
  v10 = sub_1DD0DC6BC();
  v43 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v42 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v48 = &v37 - v15;
  v16 = sub_1DD0DE97C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v18);
  v21 = &v37 - v20;
  v22 = *(v16 - 8);
  v24 = MEMORY[0x1EEE9AC00](v19, v23);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v37 - v28;
  v30 = a3[3];
  v31 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v30);
  (*(v31 + 24))(v30, v31);
  (*(v22 + 32))(v21, v29, v16);
  result = __swift_getEnumTagSinglePayload(v21, 1, v10);
  if (result != 1)
  {
    v35 = v43;
    v36 = v48;
    (*(v43 + 32))(v48, v21, v10);
    (*(v35 + 16))(v42, v36, v10);
    sub_1DD0DCF8C();
  }

  v42 = v26;
  if ((v45 & 1) == 0)
  {
    v33 = v38;
    sub_1DD0DBB3C();
    v34 = v40;
    sub_1DD0DB9DC();
    (*(v39 + 8))(v33, v34);
    sub_1DD0DC5FC();
    sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCD9B008(void *a1, void *a2, uint64_t a3)
{
  v4 = sub_1DD0DC6BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 24))(v9, v10);
  v11 = sub_1DD0DC69C();
  (*(v5 + 8))(v8, v4);
  return v11;
}

void sub_1DCD9B164(uint64_t a1, char a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  (*(v6 + 40))(&v7, v5, v6);
  sub_1DD0DC6BC();
  sub_1DD0DCF8C();
}

void sub_1DCD9B270()
{
  OUTLINED_FUNCTION_50();
  v24 = v0;
  v25 = v1;
  v23 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(255, *(*v3 + *MEMORY[0x1E69E6CE8]));
  v9 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - v14;
  v16 = v6[3];
  v17 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v16);
  (*(v17 + 24))(v16, v17);
  if (__swift_getEnumTagSinglePayload(v15, 1, v8))
  {
    (*(v11 + 8))(v15, v9);
    OUTLINED_FUNCTION_82_2();
    sub_1DD0DC6BC();
    v18 = OUTLINED_FUNCTION_37_19();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }

  else
  {
    v25(v4, v8, v23, v24);
    (*(v11 + 8))(v15, v9);
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCD9B42C()
{
  OUTLINED_FUNCTION_50();
  v85 = v1;
  v77 = v2;
  v4 = v3;
  v83 = v5;
  v89 = v6;
  v90 = v7;
  v9 = v8;
  v11 = *v10;
  v82 = v10;
  v12 = (v11 + *MEMORY[0x1E69E6CE8]);
  sub_1DD0DC6BC();
  OUTLINED_FUNCTION_76_1();
  v79 = v13;
  v14 = sub_1DD0DE97C();
  v87 = v14;
  OUTLINED_FUNCTION_0_1();
  v91 = v15;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_34_0();
  v81 = v18;
  v19 = *v12;
  sub_1DD0DB9FC();
  OUTLINED_FUNCTION_9();
  v74 = v21;
  v75 = v20;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_34_0();
  v73 = v24;
  v25 = OUTLINED_FUNCTION_12();
  v76 = v19;
  v26 = v4(v25, v19);
  OUTLINED_FUNCTION_9();
  v84 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_10_2();
  v78 = v30 - v31;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v32, v33);
  v88 = &v73 - v34;
  v35 = sub_1DD0DE97C();
  v36 = OUTLINED_FUNCTION_88_2(0, v35, v14) - 8;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_0_1();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_10_2();
  v45 = v43 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v73 - v48;
  v51 = v9[3];
  v50 = v9[4];
  v86 = v9;
  __swift_project_boxed_opaque_existential_1(v9, v51);
  v52 = OUTLINED_FUNCTION_80_3();
  v53(v52, v50);
  v54 = v0;
  v55 = *(v36 + 56);
  v56 = v0;
  v57 = v35;
  v58 = v89;
  v59 = v87;
  (*(v40 + 32))(v56, v49, v57);
  v60 = *(v91 + 16);
  v60(v55 + v54, v58, v59);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v26);
  v80 = v45;
  if (EnumTagSinglePayload != 1)
  {
    v77 = v55;
    v69 = v84;
    OUTLINED_FUNCTION_70_7();
    v70 = v88;
    v71(v88, v54, v26);
    v79 = v60;
    (*(v69 + 16))(v78, v70, v26);
    v72 = OUTLINED_FUNCTION_58_8();
    v79(v72);
    sub_1DD0DCF8C();
  }

  if (__swift_getEnumTagSinglePayload(v55 + v54, 1, v79) != 1)
  {
    v62 = v73;
    v79 = v54;
    v63 = v60;
    v64 = v76;
    sub_1DD0DBB3C();
    v65 = v75;
    v66 = sub_1DD0DB9DC();
    v68 = v67;
    (*(v74 + 8))(v62, v65);
    v77(v66, v68, v64);
    v63(v81, v89, v59);
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCD9BA3C()
{
  OUTLINED_FUNCTION_50();
  v15 = v5;
  OUTLINED_FUNCTION_24_21();
  v7 = v6;
  v9 = v8(0, *(*v6 + *MEMORY[0x1E69E6CE8]));
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_13_40();
  OUTLINED_FUNCTION_38_16();
  v14(v3, v4);
  v15(v7, v9, v1, v0);
  (*(v11 + 8))(v2, v9);
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9BB6C()
{
  OUTLINED_FUNCTION_50();
  v20[2] = v0;
  v20[3] = v1;
  v3 = v2;
  v20[1] = v4;
  v6 = v5;
  v8 = v7;
  v10 = *v9;
  OUTLINED_FUNCTION_82_2();
  sub_1DD0DC6BC();
  OUTLINED_FUNCTION_76_1();
  v11 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v20 - v16;
  v18 = v6[3];
  v19 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v18);
  (*(v13 + 16))(v17, v8, v11);
  (*(v19 + 40))(&v21, v18, v19);
  v3(0, *(v10 + *MEMORY[0x1E69E6CE8]));
  sub_1DD0DCF8C();
}

void sub_1DCD9BD18()
{
  OUTLINED_FUNCTION_50();
  v21 = v0;
  v22 = v1;
  v20 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(255, *(*v3 + *MEMORY[0x1E69E6CE8]));
  v9 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v19 - v14;
  v16 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v17 = OUTLINED_FUNCTION_80_3();
  v18(v17, v16);
  if (__swift_getEnumTagSinglePayload(v15, 1, v8))
  {
    (*(v11 + 8))(v15, v9);
    OUTLINED_FUNCTION_82_2();
    sub_1DD0DC6BC();
    OUTLINED_FUNCTION_76_1();
    sub_1DD0DE37C();
  }

  else
  {
    v22(v4, v8, v20, v21);
    (*(v11 + 8))(v15, v9);
  }

  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9BEBC()
{
  OUTLINED_FUNCTION_50();
  v65 = v0;
  v66 = v1;
  v62 = v2;
  v4 = v3;
  v70 = v5;
  v71 = v6;
  v8 = v7;
  v68 = *v5;
  v69 = v9;
  v10 = *(v68 + *MEMORY[0x1E69E6CE8]);
  sub_1DD0DB9FC();
  OUTLINED_FUNCTION_9();
  v59 = v12;
  v60 = v11;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_34_0();
  v58 = v15;
  v16 = OUTLINED_FUNCTION_12();
  v61 = v10;
  v17 = v4(v16, v10);
  OUTLINED_FUNCTION_9();
  v67 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_10_2();
  v63 = v21 - v22;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v23, v24);
  v72 = &v58 - v25;
  v26 = sub_1DD0DE97C();
  v27 = OUTLINED_FUNCTION_25_0();
  v30 = OUTLINED_FUNCTION_88_2(v27, v28, v29);
  OUTLINED_FUNCTION_20_0(v30);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v58 - v33;
  OUTLINED_FUNCTION_0_1();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_10_2();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v58 - v44;
  v46 = v8[3];
  v47 = v8[4];
  v64 = v8;
  __swift_project_boxed_opaque_existential_1(v8, v46);
  OUTLINED_FUNCTION_38_16();
  v48 = v47;
  v49 = v69;
  v50(v46, v48);
  v73 = v49;
  OUTLINED_FUNCTION_82_2();
  sub_1DD0DC6BC();
  OUTLINED_FUNCTION_76_1();
  sub_1DD0DE40C();
  swift_getWitnessTable();
  v51 = sub_1DD0DE65C();
  (*(v36 + 32))(v34, v45, v26);
  OUTLINED_FUNCTION_38_2(v34);
  if (!v52)
  {
    v55 = v67;
    OUTLINED_FUNCTION_70_7();
    v56 = v72;
    v57(v72, v34, v17);
    (*(v55 + 16))(v63, v56, v17);

    sub_1DD0DCF8C();
  }

  v68 = v41;
  if ((v51 & 1) == 0)
  {
    v53 = v58;
    sub_1DD0DBB3C();
    v54 = v60;
    sub_1DD0DB9DC();
    (*(v59 + 8))(v53, v54);
    OUTLINED_FUNCTION_26_18();
    v62();

    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCD9C3B4()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_24_21();
  v5 = v4;
  v7 = v6(0, *(*v4 + *MEMORY[0x1E69E6CE8]));
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_15_3();
  v10 = OUTLINED_FUNCTION_9_41();
  v11(v10);
  v3(v5, v7, v1, v0);
  v12 = OUTLINED_FUNCTION_49_3();
  v13(v12);
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD9C614()
{
  OUTLINED_FUNCTION_15_40();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  OUTLINED_FUNCTION_20_0(v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_179();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v5 = OUTLINED_FUNCTION_51_13();
  v6(v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
  if (OUTLINED_FUNCTION_86_6(v7))
  {
    sub_1DCB185D0(v1, &qword_1ECCA5B88, &qword_1DD0F3EC0);
    v8 = OUTLINED_FUNCTION_37_19();
    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v0);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_19();
    MEMORY[0x1E12A4D20](v12);
    return sub_1DCB185D0(v1, &qword_1ECCA5B88, &qword_1DD0F3EC0);
  }
}

void sub_1DCD9C748()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  OUTLINED_FUNCTION_15_40();
  v3(0, v2);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_15_3();
  v6 = OUTLINED_FUNCTION_9_41();
  v7(v6);
  v8 = OUTLINED_FUNCTION_19();
  v1(v8);
  v9 = OUTLINED_FUNCTION_49_3();
  v10(v9);
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9C824()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_24_21();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  OUTLINED_FUNCTION_20_0(v4);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_13_40();
  v7 = OUTLINED_FUNCTION_35_22();
  sub_1DCD9EA74(v7, v8);
  v9 = *(v1 + 40);

  v10 = v9(&v15, v0, v1);
  v11 = OUTLINED_FUNCTION_25_0();
  v3(v11);
  v12 = OUTLINED_FUNCTION_59_13();
  v13(v12);
  v14 = OUTLINED_FUNCTION_54_12();
  v10(v14);
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9C90C()
{
  OUTLINED_FUNCTION_50();
  v21 = v3;
  v5 = v4;
  v7 = v6;
  v10 = v9(255, v8);
  v11 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_13_40();
  OUTLINED_FUNCTION_38_16();
  v16(v1, v2);
  if (__swift_getEnumTagSinglePayload(v0, 1, v10))
  {
    (*(v13 + 8))(v0, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
    v17 = OUTLINED_FUNCTION_37_19();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  else
  {
    v21(v7, v5, v10);
    (*(v13 + 8))(v0, v11);
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCD9CA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_50();
  v117 = v21;
  v23 = v22;
  v115 = v24;
  v26 = v25;
  v120 = v28;
  v121 = v27;
  v30 = v29;
  v125 = v31;
  v122 = a21;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_34_0();
  v124 = v35;
  OUTLINED_FUNCTION_12();
  sub_1DD0DB9FC();
  OUTLINED_FUNCTION_9();
  v113 = v37;
  v114 = v36;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_34_0();
  v112 = v40;
  v41 = OUTLINED_FUNCTION_12();
  v116 = v26;
  v42 = v23(v41, v26);
  OUTLINED_FUNCTION_9();
  v123 = v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  OUTLINED_FUNCTION_10_2();
  v118 = v46 - v47;
  OUTLINED_FUNCTION_29_0();
  v50 = MEMORY[0x1EEE9AC00](v48, v49);
  v58 = OUTLINED_FUNCTION_57_7(v50, v51, v52, v53, v54, v55, v56, v57, v111);
  v59 = OUTLINED_FUNCTION_88_2(0, v58, v32) - 8;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v111 - v62;
  OUTLINED_FUNCTION_0_1();
  v65 = v64;
  MEMORY[0x1EEE9AC00](v66, v67);
  OUTLINED_FUNCTION_10_2();
  v70 = v68 - v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = &v111 - v73;
  v75 = v30[3];
  v76 = v30[4];
  v119 = v30;
  __swift_project_boxed_opaque_existential_1(v30, v75);
  (*(v76 + 24))(v75, v76);
  v77 = v125;
  v78 = *(v59 + 56);
  v79 = v74;
  v80 = v63;
  (*(v65 + 32))(v63, v79, v58);
  sub_1DCD9EA74(v77, v78 + v63);
  OUTLINED_FUNCTION_38_2(v63);
  if (!v81)
  {
    v99 = v123;
    OUTLINED_FUNCTION_70_7();
    v100 = v126;
    v101(v126, v80, v42);
    v102 = *(v99 + 16);
    v117 = v78;
    v103 = v118;
    v102(v118, v100, v42);
    sub_1DCD9EA74(v77, v124);

    OUTLINED_FUNCTION_53_11();
    v104();
    v105 = v119[3];
    v106 = v119[4];
    OUTLINED_FUNCTION_57_1(v119, v105);
    v107 = OUTLINED_FUNCTION_49_3();
    (v102)(v107);
    OUTLINED_FUNCTION_8_43(v70);
    v108(v70, v105, v106);
    v109 = *(v99 + 8);
    v110 = v103;
    v78 = v117;
    v109(v110, v42);
    v109(v126, v42);
LABEL_5:
    sub_1DCB185D0(v78 + v80, &qword_1ECCA5B88, &qword_1DD0F3EC0);
    goto LABEL_6;
  }

  v118 = v70;
  v82 = v124;
  v83 = v126;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
  if (__swift_getEnumTagSinglePayload(v78 + v63, 1, v84) != 1)
  {
    v85 = v112;
    v86 = v116;
    sub_1DD0DBB3C();
    v87 = v114;
    v88 = sub_1DD0DB9DC();
    v90 = v89;
    (*(v113 + 8))(v85, v87);
    v91 = v86;
    v80 = v63;
    v117(v88, v90, v91);
    sub_1DCD9EA74(v125, v82);

    OUTLINED_FUNCTION_53_11();
    v92();
    v93 = v119[3];
    v94 = v119[4];
    OUTLINED_FUNCTION_57_1(v119, v93);
    v95 = v118;
    (*(v123 + 16))(v118, v83, v42);
    OUTLINED_FUNCTION_8_43(v95);
    v96(v95, v93, v94);
    v97 = OUTLINED_FUNCTION_58_8();
    v98(v97);
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9CFAC()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  OUTLINED_FUNCTION_15_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_15_3();
  v6 = OUTLINED_FUNCTION_9_41();
  v7(v6);
  v8 = OUTLINED_FUNCTION_19();
  v1(v8);
  v9 = OUTLINED_FUNCTION_49_3();
  v10(v9);
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9D0AC()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_24_21();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  OUTLINED_FUNCTION_20_0(v6);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_13_40();
  v9 = OUTLINED_FUNCTION_35_22();
  sub_1DCD9EA74(v9, v10);
  v11 = *(v1 + 40);

  v12 = v11(&v16, v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  v13 = OUTLINED_FUNCTION_59_13();
  v14(v13);
  v15 = OUTLINED_FUNCTION_54_12();
  v12(v15);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD9D194()
{
  OUTLINED_FUNCTION_15_40();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5D98, &qword_1DD0F3EB0);
  OUTLINED_FUNCTION_20_0(v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_179();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v5 = OUTLINED_FUNCTION_51_13();
  v6(v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28A8, &unk_1DD0FE400);
  if (OUTLINED_FUNCTION_86_6(v7))
  {
    sub_1DCB185D0(v1, &qword_1ECCA5D98, &qword_1DD0F3EB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
    v8 = OUTLINED_FUNCTION_37_19();
    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_19();
    MEMORY[0x1E12A4110](v13);
    return sub_1DCB185D0(v1, &qword_1ECCA5D98, &qword_1DD0F3EB0);
  }
}

void sub_1DCD9D2DC()
{
  OUTLINED_FUNCTION_50();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_24_21();
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  OUTLINED_FUNCTION_20_0(v13);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_40_3();
  v16 = *(v10 + 24);
  v17 = *(v10 + 32);
  v18 = OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_57_1(v18, v19);
  v20 = (*(v17 + 40))(&v25, v16, v17);
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v6);
  if (!__swift_getEnumTagSinglePayload(v22, 1, v23))
  {
    sub_1DCD9EA74(v12, v2);

    v4(v2, v1, v0, v23);
  }

  v24 = OUTLINED_FUNCTION_54_12();
  v20(v24);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD9D448(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  OUTLINED_FUNCTION_20_0(v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v12 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = OUTLINED_FUNCTION_50_8();
  v8(v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
  if (OUTLINED_FUNCTION_85_5(v9))
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    OUTLINED_FUNCTION_75_6();
    v10 = sub_1DD0DC60C();
  }

  sub_1DCB185D0(v6, &qword_1ECCA5B88, &qword_1DD0F3EC0);
  return v10;
}

void sub_1DCD9D560()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  OUTLINED_FUNCTION_15_40();
  v3(0, v2);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_40_3();
  v6 = OUTLINED_FUNCTION_68_2();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v8 = OUTLINED_FUNCTION_35_22();
  v9(v8);
  v10 = OUTLINED_FUNCTION_19();
  v1(v10);
  v11 = OUTLINED_FUNCTION_72_7();
  v12(v11);
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9D70C()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v9 = v8(255, v7);
  OUTLINED_FUNCTION_25_0();
  v10 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_15_3();
  v15 = OUTLINED_FUNCTION_9_41();
  v16(v15);
  if (!__swift_getEnumTagSinglePayload(v0, 1, v9))
  {
    v2(v6, v4, v9);
  }

  (*(v12 + 8))(v0, v10);
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9D820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(__n128))
{
  OUTLINED_FUNCTION_50();
  v112 = v22;
  v24 = v23;
  v109 = v25;
  v27 = v26;
  v117 = v28;
  v118 = v29;
  v31 = v30;
  v114 = v32;
  v115 = a21;
  v110 = sub_1DD0DB9FC();
  OUTLINED_FUNCTION_9();
  v108 = v33;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_34_0();
  v107 = v36;
  v37 = OUTLINED_FUNCTION_12();
  v111 = v27;
  v38 = v24(v37, v27);
  OUTLINED_FUNCTION_9();
  v116 = v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_10_2();
  v113 = v42 - v43;
  OUTLINED_FUNCTION_29_0();
  v46 = MEMORY[0x1EEE9AC00](v44, v45);
  v54 = OUTLINED_FUNCTION_57_7(v46, v47, v48, v49, v50, v51, v52, v53, v106);
  v55 = OUTLINED_FUNCTION_25_0();
  v58 = OUTLINED_FUNCTION_88_2(v55, v56, v57);
  OUTLINED_FUNCTION_20_0(v58);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v59, v60);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_0_1();
  v62 = v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  OUTLINED_FUNCTION_10_2();
  v67 = v65 - v66;
  MEMORY[0x1EEE9AC00](v68, v69);
  v71 = &v106 - v70;
  v72 = *(v31 + 24);
  v73 = *(v31 + 32);
  v74 = OUTLINED_FUNCTION_19();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v76 = v72;
  v77 = v117;
  (*(v73 + 24))(v76, v73);
  v78 = *(v77 + 16);
  (*(v62 + 32))(v21, v71, v54);
  OUTLINED_FUNCTION_38_2(v21);
  if (v79)
  {
    v113 = v67;
    v81 = v118;
    v80 = v119;
    if (v78)
    {
      v82 = v107;
      v83 = v111;
      sub_1DD0DBB3C();
      v84 = v110;
      v85 = sub_1DD0DB9DC();
      v87 = v86;
      (*(v108 + 8))(v82, v84);
      v112(v85, v87, v83);

      (v115)(v88, v114, v81, v38);
      v89 = OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_57_1(v89, v90);
      v91 = v116;
      v92 = v113;
      (*(v116 + 16))(v113, v80, v38);
      OUTLINED_FUNCTION_8_43(v92);
      OUTLINED_FUNCTION_26_18();
      v93();
      (*(v91 + 8))(v80, v38);
    }
  }

  else
  {
    v94 = v116;
    OUTLINED_FUNCTION_70_7();
    v95 = v119;
    v96 = OUTLINED_FUNCTION_68_2();
    v97(v96);
    v98 = *(v94 + 16);
    v99 = v113;
    v98(v113, v95, v38);

    OUTLINED_FUNCTION_53_11();
    v100();
    v101 = OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_57_1(v101, v102);
    v98(v67, v99, v38);
    OUTLINED_FUNCTION_8_43(v67);
    OUTLINED_FUNCTION_26_18();
    v103();
    v104 = *(v94 + 8);
    v105 = OUTLINED_FUNCTION_58_8();
    v104(v105);
    (v104)(v119, v38);
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCD9DC80()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  OUTLINED_FUNCTION_15_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_40_3();
  v6 = OUTLINED_FUNCTION_68_2();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v8 = OUTLINED_FUNCTION_35_22();
  v9(v8);
  v10 = OUTLINED_FUNCTION_19();
  v1(v10);
  v11 = OUTLINED_FUNCTION_72_7();
  v12(v11);
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD9DE48(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5D98, &qword_1DD0F3EB0);
  OUTLINED_FUNCTION_20_0(v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v12 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = OUTLINED_FUNCTION_50_8();
  v8(v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28A8, &unk_1DD0FE400);
  if (OUTLINED_FUNCTION_85_5(v9))
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    OUTLINED_FUNCTION_75_6();
    v10 = sub_1DD0DBA3C();
  }

  sub_1DCB185D0(v6, &qword_1ECCA5D98, &qword_1DD0F3EB0);
  return v10;
}

uint64_t sub_1DCD9DF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_24_21();
  v13 = v12[3];
  v14 = v12[4];
  OUTLINED_FUNCTION_57_1(v12, v13);
  v15 = (*(v14 + 40))(v21, v13, v14);
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
  {

    a7(v19, v8, v7, v18);
  }

  return v15(v21, 0);
}

void (*sub_1DCD9E058(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = v2;
  v5[1] = a2;
  v6 = *(a2 + 24);
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v5[5] = __swift_coroFrameAllocStub(v8);
  sub_1DCD1B1E8();
  return sub_1DCD9E12C;
}

void sub_1DCD9E12C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    sub_1DCD99478(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1DCD99478(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1DCD9E24C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 48))();
  *a1 = result;
  return result;
}

uint64_t sub_1DCD9E478@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1DCD9E59C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t objectdestroy_45Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t objectdestroy_9Tm_1()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  OUTLINED_FUNCTION_7_3();

  return swift_deallocObject();
}

uint64_t sub_1DCD9EA74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_159Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  OUTLINED_FUNCTION_126();

  return swift_deallocObject();
}

void *OUTLINED_FUNCTION_81_4(void *result)
{
  result[5] = v2;
  result[6] = v1;
  result[7] = v3;
  return result;
}

double OUTLINED_FUNCTION_89_6()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = v2;

  return result;
}

void sub_1DCD9EDAC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5D98, &qword_1DD0F3EB0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v9 - v6;
  *(v2 + *(*v2 + 112)) = 0;
  sub_1DCB09910(a1, v2 + *(*v2 + 88), &qword_1ECCA5D98, &qword_1DD0F3EB0);
  sub_1DCB09910(a1, v7, &qword_1ECCA5D98, &qword_1DD0F3EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5E98, &qword_1DD0F3F38);
  swift_allocObject();
  v8 = sub_1DD0DDB8C();
  *(v2 + *(*v2 + 104)) = v8;
  v9[1] = v8;
  sub_1DCBF7DC0(&qword_1ECCA5EA0, &qword_1ECCA5E98, &qword_1DD0F3F38, MEMORY[0x1E695BFB0]);
  sub_1DD0DCF8C();
}

void sub_1DCD9EF78(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28A8, &unk_1DD0FE400);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - v7;
  *(v2 + *(*v2 + 112)) = 0;
  v9 = *(v5 + 16);
  v9((v2 + *(*v2 + 88)), a1, v4);
  v9(v8, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5E88, &qword_1DD0F3F30);
  swift_allocObject();
  v10 = sub_1DD0DDB8C();
  *(v2 + *(*v2 + 104)) = v10;
  v11[1] = v10;
  sub_1DCBF7DC0(&qword_1ECCA5E90, &qword_1ECCA5E88, &qword_1DD0F3F30, MEMORY[0x1E695BFB0]);
  sub_1DD0DCF8C();
}

void sub_1DCD9F188(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v9 - v6;
  *(v2 + *(*v2 + 112)) = 0;
  sub_1DCB09910(a1, v2 + *(*v2 + 88), &qword_1ECCA5B88, &qword_1DD0F3EC0);
  sub_1DCB09910(a1, v7, &qword_1ECCA5B88, &qword_1DD0F3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5E78, &qword_1DD0F3F28);
  swift_allocObject();
  v8 = sub_1DD0DDB8C();
  *(v2 + *(*v2 + 104)) = v8;
  v9[1] = v8;
  sub_1DCBF7DC0(&qword_1ECCA5E80, &qword_1ECCA5E78, &qword_1DD0F3F28, MEMORY[0x1E695BFB0]);
  sub_1DD0DCF8C();
}

void sub_1DCD9F354(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - v7;
  *(v2 + *(*v2 + 112)) = 0;
  v9 = *(v5 + 16);
  v9((v2 + *(*v2 + 88)), a1, v4);
  v9(v8, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5E68, &qword_1DD0F3F20);
  swift_allocObject();
  v10 = sub_1DD0DDB8C();
  *(v2 + *(*v2 + 104)) = v10;
  v11[1] = v10;
  sub_1DCBF7DC0(&qword_1ECCA5E70, &qword_1ECCA5E68, &qword_1DD0F3F20, MEMORY[0x1E695BFB0]);
  sub_1DD0DCF8C();
}

uint64_t InputValue.wrappedValue.getter()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_131();
  return v2(v1);
}

uint64_t sub_1DCD9F5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v6 = &v12 - v5;
  (*(v7 + 16))(&v12 - v5);
  v10 = type metadata accessor for InputValue(0, v4, v8, v9);
  return InputValue.wrappedValue.setter(v6, v10);
}

uint64_t InputValue.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[3];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v11);
  (*(v6 + 16))(v10, a1, v4);
  (*(v12 + 32))(v10, v11, v12);
  return (*(v6 + 8))(a1, v4);
}

void (*InputValue.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v5[2] = *(a2 + 16);
  OUTLINED_FUNCTION_0_1();
  *(v6 + 24) = v7;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v5[5] = __swift_coroFrameAllocStub(v9);
  InputValue.wrappedValue.getter();
  return sub_1DCD9F88C;
}

void sub_1DCD9F88C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    v8 = OUTLINED_FUNCTION_131();
    v9(v8);
    InputValue.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    InputValue.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t InputValue.projectedValue.getter()
{
  OUTLINED_FUNCTION_11_42();
  sub_1DCB17CA0(v0, v3);
  return sub_1DCD96538(v3, v1);
}

void InputValue.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v18 - v6;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v8 = sub_1DD0DD8FC();
  v9 = __swift_project_value_buffer(v8, qword_1EDE57E00);
  v10 = *(v8 - 8);
  (*(v10 + 16))(v7, v9, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_1DCB09910(v7, v4, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_1DCB0E9D8(v4, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315650;
      v15 = sub_1DD0DEC3C();
      v17 = sub_1DCB10E9C(v15, v16, &v19);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2048;
      *(v13 + 14) = 39;
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_1DCB10E9C(0xD00000000000001CLL, 0x80000001DD11D010, &v19);
      _os_log_impl(&dword_1DCAFC000, v11, v12, "FatalError at %s:%lu - %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v14, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

    (*(v10 + 8))(v4, v8);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000001CLL, 0x80000001DD11D010);
}

void InputValue.init<A>()(uint64_t a1@<X0>, uint64_t *x8_0@<X8>)
{
  sub_1DCD9FF1C(a1, MEMORY[0x1E69D1718], MEMORY[0x1E69D16F0], x8_0);
}

{
  sub_1DCD9FF1C(a1, MEMORY[0x1E69D2310], MEMORY[0x1E69D22D8], x8_0);
}

void InputValue.init<A>()(uint64_t a1, uint64_t a2)
{
  sub_1DCDA0150(a1, a2, MEMORY[0x1E69D1718]);
}

{
  sub_1DCDA0150(a1, a2, MEMORY[0x1E69D2310]);
}

void InputValue.init<A>()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5D98, &qword_1DD0F3EB0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_4_64();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28A8, &unk_1DD0FE400);
  OUTLINED_FUNCTION_12_7(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_73_1(v6);
  v7 = OUTLINED_FUNCTION_6_44();
  sub_1DCD9EDAC(v7);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_4_64();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
  OUTLINED_FUNCTION_12_7(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_73_1(v6);
  v7 = OUTLINED_FUNCTION_6_44();
  sub_1DCD9F188(v7);
}

void InputValue.init<A>(wrappedValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DCDA030C();
}

{
  sub_1DCDA030C();
}

void InputValue.init<A>(wrappedValue:)()
{
  OUTLINED_FUNCTION_11_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28A8, &unk_1DD0FE400);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_4_64();
  v2 = OUTLINED_FUNCTION_5_55();
  v3(v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DB8, &qword_1DD0F3ED0);
  OUTLINED_FUNCTION_73_1(v4);
  v5 = OUTLINED_FUNCTION_6_44();
  sub_1DCD9EF78(v5);
}

{
  OUTLINED_FUNCTION_11_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_4_64();
  v2 = OUTLINED_FUNCTION_5_55();
  v3(v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DD8, &qword_1DD0F3EE0);
  OUTLINED_FUNCTION_73_1(v4);
  v5 = OUTLINED_FUNCTION_6_44();
  sub_1DCD9F354(v5);
}

void sub_1DCD9FF1C(uint64_t a1@<X0>, uint64_t (*a3)(void, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v30[0] = a4;
  v30[1] = a5;
  v7 = sub_1DD0DB9FC();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v30 - v12;
  v14 = a3(0, a1);
  OUTLINED_FUNCTION_9();
  v16 = v15;
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = v30 - v23;
  sub_1DD0DBB3C();
  v25 = sub_1DD0DB9DC();
  v27 = v26;
  (*(v9 + 8))(v13, v7);
  (v30[0])(v25, v27, a1);
  type metadata accessor for RootStorage(0, v14, v28, v29);
  (*(v16 + 16))(v21, v24, v14);
  sub_1DCD98E44(v21);
}

void sub_1DCDA0150(uint64_t a1, void x1_0, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = a2(255, a1);
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11 - v6;
  type metadata accessor for RootStorage(0, v8, v9, v10);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v3);
  sub_1DCD98E44(v7);
}

void sub_1DCDA030C()
{
  OUTLINED_FUNCTION_11_42();
  v2 = v1(0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_4_64();
  type metadata accessor for RootStorage(0, v2, v5, v6);
  v7 = OUTLINED_FUNCTION_5_55();
  v8(v7);
  sub_1DCD98E44(v0);
}

void InputValue.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RootStorage(0, v11, v12, v13);
  (*(v6 + 16))(v10, a1, a2);
  sub_1DCD98E44(v10);
}

uint64_t sub_1DCDA063C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCDA065C, 0, 0);
}

uint64_t sub_1DCDA065C()
{
  v17 = v0;
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57DA0);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = [v6 qualifiedMessageName];
    v10 = sub_1DD0DDFBC();
    v12 = v11;

    v13 = sub_1DCB10E9C(v10, v12, &v16);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "SiriAnalyticsInstrumentationClient: emitting message to SiriAnalytics: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A8390](v8, -1, -1);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }

  [*(v0[3] + 16) emitMessage_];
  v14 = v0[1];

  return v14();
}

void sub_1DCDA0828(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DD0DEB3C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1DCB38954();
    v36 = v41;
    v38 = sub_1DCDA1488(v1);
    v39 = v3;
    v40 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v38;
        v8 = v40;
        v35 = v39;
        v9 = v1;
        sub_1DCDA14E8(v38, v39, v40, v1);
        v11 = v10;
        v12 = [v10 eventId];
        v13 = sub_1DD0DDFBC();
        v15 = v14;

        v16 = v36;
        v41 = v36;
        v17 = *(v36 + 16);
        if (v17 >= *(v36 + 24) >> 1)
        {
          sub_1DCB38954();
          v16 = v41;
        }

        *(v16 + 16) = v17 + 1;
        v18 = v16 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        v36 = v16;
        if (v34)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (sub_1DD0DEB0C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v23 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F08, &unk_1DD0F4020);
          v24 = sub_1DD0DE59C();
          sub_1DD0DEB8C();
          v24(v37, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v19 = 1 << *(v9 + 32);
          if (v7 >= v19)
          {
            goto LABEL_32;
          }

          v20 = v7 >> 6;
          v21 = *(v32 + 8 * (v7 >> 6));
          if (((v21 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v35)
          {
            goto LABEL_34;
          }

          v22 = v21 & (-2 << (v7 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v23 = v33;
          }

          else
          {
            v25 = v20 << 6;
            v26 = v20 + 1;
            v27 = (v31 + 8 * v20);
            v23 = v33;
            while (v26 < (v19 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1DCDA16F4(v7, v35, 0);
                v19 = __clz(__rbit64(v28)) + v25;
                goto LABEL_27;
              }
            }

            sub_1DCDA16F4(v7, v35, 0);
          }

LABEL_27:
          v30 = *(v9 + 36);
          v38 = v19;
          v39 = v30;
          v40 = 0;
        }

        if (v5 == v23)
        {
          sub_1DCDA16F4(v38, v39, v40);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

void sub_1DCDA0B44(uint64_t a1)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_1DCB0DF6C(*(a1 + 56) + 32 * v11, v17);
    v16[0] = v13;
    v16[1] = v14;

    v15 = sub_1DD0DDF8C();
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    [v1 setVariable:v15 withValue:sub_1DD0DF09C()];

    swift_unknownObjectRelease();
    sub_1DCC60A8C(v16);
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

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1DCDA0C98()
{
  v1 = [v0 activeEvents];
  sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
  sub_1DCC5CE28();
  v2 = sub_1DD0DE57C();

  sub_1DCDA0828(v2);
  v4 = v3;

  v5 = sub_1DCDA58AC(v4);
  v6 = [v0 getEvents];
  v7 = sub_1DD0DE57C();

  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_1DD0DEAFC();
    sub_1DD0DE5AC();
    v7 = v34;
    v8 = v35;
    v9 = v36;
    v10 = v37;
    v11 = v38;
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v7 + 56);
  }

  v15 = (v9 + 64) >> 6;
  v31 = v7;
LABEL_8:
  while (v7 < 0)
  {
    if (!sub_1DD0DEB6C() || (swift_dynamicCast(), v20 = v33, v18 = v10, v19 = v11, !v33))
    {
LABEL_28:

      sub_1DCC5EE88(v7);
      return;
    }

LABEL_17:
    v32 = v19;
    v21 = [v20 eventId];
    v22 = sub_1DD0DDFBC();
    v24 = v23;

    if (*(v5 + 16))
    {
      sub_1DD0DF1DC();
      sub_1DD0DDF2C();
      v25 = sub_1DD0DF20C();
      v26 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v27 = v25 & v26;
        if (((*(v5 + 56 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
        {
          break;
        }

        v28 = (*(v5 + 48) + 16 * v27);
        if (*v28 != v22 || v28[1] != v24)
        {
          v30 = sub_1DD0DF0AC();
          v25 = v27 + 1;
          if ((v30 & 1) == 0)
          {
            continue;
          }
        }

        v10 = v18;
        v7 = v31;
        v11 = v32;
        goto LABEL_8;
      }

      v7 = v31;
    }

    sub_1DD0DECDC();
    sub_1DD0DED1C();
    sub_1DD0DED2C();
    sub_1DD0DECEC();
    v10 = v18;
    v11 = v32;
  }

  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (v11)
  {
LABEL_13:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_28;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_28;
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1DCDA1004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DCB10E5C(0, &qword_1EDE46110, 0x1E69D01C8);

  sub_1DCD10120(a1, a2);
  sub_1DCDAC09C(a3);
}

uint64_t sub_1DCDA1488(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1DD0DEAEC();
  }

  else
  {
    return sub_1DD0DEACC();
  }
}

void sub_1DCDA14E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1E12A71B0](a1, a2, v7);
      sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
    if (sub_1DD0DEB1C() == *(a4 + 36))
    {
      sub_1DD0DEB2C();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_1DD0DE8DC();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_1DD0DE8EC();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

uint64_t sub_1DCDA16F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void *IntentConfirmationConcept.intentResponse.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t IntentConfirmationConcept.conceptType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

double IntentConfirmationConcept.__allocating_init(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3();
  v6 = swift_allocObject();
  *(v6 + 56) = 0x80000001DD0F4020;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  result = 0.0;
  *(v6 + 40) = xmmword_1DD0F4030;
  return result;
}

uint64_t IntentConfirmationConcept.init(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = 0x80000001DD0F4020;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 40) = xmmword_1DD0F4030;
  return v3;
}

void *IntentConfirmationConcept.__allocating_init(app:intent:intentResponse:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_3();
  result = swift_allocObject();
  result[6] = 0xD000000000000019;
  result[7] = 0x80000001DD0F4020;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *IntentConfirmationConcept.init(app:intent:intentResponse:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = 0xD000000000000019;
  v4[7] = 0x80000001DD0F4020;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t IntentConfirmationConcept.deinit()
{

  return v0;
}

uint64_t IntentConfirmationConcept.__deallocating_deinit()
{
  IntentConfirmationConcept.deinit();
  OUTLINED_FUNCTION_0_3();

  return swift_deallocClassInstance();
}

void IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v13 - v9;
  v11 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DD0F40B8;
  v12[5] = 0;
  v12[6] = a4;
  v12[7] = a5;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDA1B00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB193FC;

  return sub_1DCCDC444();
}

double IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(&v14, a1);
  v7 = v14;
  if (v14)
  {
    v9 = v18;
    v8 = v19;
    v11 = v16;
    v10 = v17;
    v12 = v15;
    type metadata accessor for SiriKitIntentExecutionBehavior();
    v14 = v7;
    v15 = v12;
    v16 = v11;
    v17 = v10;
    v18 = v9;
    v19 = v8;
    static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)(&v14);
  }

  v13 = (*(a4 + 16))(a2, a3, a4);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  if (v13)
  {
    static SiriKitIntentExecutionBehavior.companionExecution()();
  }

  else
  {
    static SiriKitIntentExecutionBehavior.standard()();
  }
}

uint64_t IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 32))(a1, a2, a5, a6);
  a3();
}

uint64_t sub_1DCDA1D3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCDA1DC8;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)();
}

uint64_t sub_1DCDA1DC8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void static SiriKitIntentExecutionBehavior.companionExecution()()
{
  type metadata accessor for SiriKitIntentExecutionBehavior();
  OUTLINED_FUNCTION_5_13();
  v0 = swift_allocObject();
  *(v0 + 88) = 0xD000000000000012;
  *(v0 + 96) = 0x80000001DD11D170;
  OUTLINED_FUNCTION_0_62(v0);
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 1;
}

void static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for SiriKitIntentExecutionBehavior();
  OUTLINED_FUNCTION_5_13();
  v4 = swift_allocObject();
  *(v4 + 88) = 0xD000000000000015;
  *(v4 + 96) = 0x80000001DD11D190;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = *(a1 + 2);
  *(v4 + 32) = *(a1 + 1);
  *(v4 + 48) = v5;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0xE000000000000000;
  *(v4 + 80) = 0;
  sub_1DD0DCF8C();
}

void static SiriKitIntentExecutionBehavior.remoteIntentExecution(targetDevice:)()
{
  v0 = sub_1DD0DD7DC();
  v2 = v1;
  type metadata accessor for SiriKitIntentExecutionBehavior();
  OUTLINED_FUNCTION_5_13();
  v3 = swift_allocObject();
  *(v3 + 88) = 0xD000000000000015;
  *(v3 + 96) = 0x80000001DD11D1B0;
  OUTLINED_FUNCTION_0_62(v3);
  *(v4 + 64) = v0;
  *(v4 + 72) = v2;
  *(v4 + 80) = 0;
}

uint64_t dispatch thunk of IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCDA1DC8;

  return v11(a1, a2, a3, a4);
}

void sub_1DCDA2288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  v8 = a5(0, *(a3 + 80), *(a3 + 88));

  IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v8, a4);
}

uint64_t sub_1DCDA2300(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, void))
{
  v12 = a7(0, *(a5 + 80), *(a5 + 88));

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v12, a6);
}

void *IntentHandledConcept.intentResponse.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t IntentHandledConcept.conceptType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *IntentHandledConcept.__allocating_init(app:intent:intentResponse:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[6] = 0xD000000000000014;
  result[7] = 0x80000001DD0F41C0;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *IntentHandledConcept.init(app:intent:intentResponse:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = 0xD000000000000014;
  v4[7] = 0x80000001DD0F41C0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t IntentHandledConcept.deinit()
{

  return v0;
}

uint64_t IntentHandledConcept.__deallocating_deinit()
{
  IntentHandledConcept.deinit();

  return swift_deallocClassInstance();
}

__n128 IntentPromptAnswer.init(answeredValue:updatedIntent:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = a2;
  return result;
}

void sub_1DCDA25B4(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v2 = a1[4];
}

uint64_t sub_1DCDA25F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  v7 = v6;
  return a1;
}

uint64_t sub_1DCDA2674(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      *(a1 + 24) = v4;
      (**(v4 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    goto LABEL_8;
  }

  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(a1, a2);
LABEL_8:
  v6 = *(a2 + 32);
  v7 = *(a1 + 32);
  *(a1 + 32) = v6;
  v8 = v6;

  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        sub_1DD0DCF8C();
      }

      v11 = *(v10 + 24);

      return v11();
    }

    else
    {
      result[3] = v5;
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
          sub_1DD0DCF8C();
        }

        (*(v7 + 16))(result, a2, v5);
      }

      else
      {
        (*(v6 + 32))(v12, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
          sub_1DD0DCF8C();
        }

        (*(v8 + 16))(v3, a2, v5);
        return (*(v6 + 8))(v12, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1DCDA2934(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t sub_1DCDA2984(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1DCDA29C4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_1DCDA2A24(uint64_t a1)
{

  v2 = *(a1 + 16);
}

void sub_1DCDA2A68(void *a1, void *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  a1[2] = a2[2];
  sub_1DD0DCF8C();
}

void *sub_1DCDA2B20(void *a1, uint64_t a2)
{

  v4 = a1[1];
  *a1 = *a2;

  v5 = a1[2];
  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for HandleProcessingResult(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HandleProcessingResult(uint64_t result, int a2, int a3)
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

void sub_1DCDA2C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = a6;
  v14 = a5;
  v16 = *(v10 + 16);
  if (*(v16 + 16))
  {
    v17 = sub_1DCB21038(a5, a6);
    if (v18)
    {
      v19 = (*(v16 + 56) + 16 * v17);
      v14 = *v19;
      v13 = v19[1];
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v20 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v20, qword_1EDE57E00);

  v21 = sub_1DD0DD8EC();
  v22 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = a7;
    v25 = a8;
    v26 = swift_slowAlloc();
    v32 = v26;
    *v23 = 136315138;
    *(v23 + 4) = sub_1DCB10E9C(v14, v13, &v32);
    _os_log_impl(&dword_1DCAFC000, v21, v22, "Grounded bundleId=%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    a8 = v25;
    a7 = v24;
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v27 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);

  v28 = sub_1DCDA45E8(a3, a4, a1, a2);
  sub_1DCDA3B4C(v28, v14, v13, a7, a8, a9, a10);
}

uint64_t sub_1DCDA2EA8(unint64_t a1, void *a2, unint64_t a3, void (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v8;
  v162 = a6;
  v160 = a4;
  *&v161 = a5;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F40, &unk_1DD0F4368);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v158 = &v141 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DE8, &unk_1DD0EFFC0);
  OUTLINED_FUNCTION_9();
  v156 = v17;
  v157 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  OUTLINED_FUNCTION_44_0();
  v165 = v20;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v141 - v23;
  sub_1DD0DD3CC();
  OUTLINED_FUNCTION_9();
  v168 = v26;
  v169 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  OUTLINED_FUNCTION_44_0();
  v164 = v28;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v29, v30);
  v159 = &v141 - v31;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v32, v33);
  v149 = &v141 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F48, &qword_1DD0F4378);
  v36 = OUTLINED_FUNCTION_20_0(v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_44_0();
  v153 = v38;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v39, v40);
  v155 = &v141 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F20, &qword_1DD0F4350);
  OUTLINED_FUNCTION_20_0(v42);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v141 - v45;
  v47 = *(v7 + 16);
  if (*(v47 + 16))
  {
    v48 = sub_1DCB21038(a2, a3);
    if (v49)
    {
      v50 = (*(v47 + 56) + 16 * v48);
      a2 = *v50;
      a3 = v50[1];
    }
  }

  v167 = a2;
  v150 = v24;

  if (qword_1EDE4F900 != -1)
  {
LABEL_60:
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v51 = sub_1DD0DD8FC();
  v52 = __swift_project_value_buffer(v51, qword_1EDE57E00);

  v166 = v52;
  v53 = sub_1DD0DD8EC();
  v54 = sub_1DD0DE6DC();

  v55 = os_log_type_enabled(v53, v54);
  v163 = v46;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v171 = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_1DCB10E9C(v167, a3, &v171);
    _os_log_impl(&dword_1DCAFC000, v53, v54, "Grounded bundleId=%s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    v46 = v163;
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v58 = MEMORY[0x1E69E7CC0];
  v171 = MEMORY[0x1E69E7CC0];
  v59 = *(a1 + 16);
  v148 = v59;
  if (v59)
  {
    v151 = a7;
    v152 = v9;
    v60 = a3;
    v61 = (a1 + 56);
    do
    {
      v62 = *(v61 - 3);
      v63 = *(v61 - 2);
      v64 = *(v61 - 1);
      v65 = *v61;
      objc_allocWithZone(MEMORY[0x1E69AC7E0]);

      sub_1DCDA45E8(v64, v65, v62, v63);
      MEMORY[0x1E12A6920]();
      if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();
      v61 += 4;
      --v59;
    }

    while (v59);
    v58 = v171;
    v46 = v163;
    a3 = v60;
    v9 = v152;
  }

  sub_1DCDA3C84(v46);
  if (v9)
  {
  }

  else
  {
    v66 = v155;
    sub_1DCDA3DF8(v46, v155);
    v67 = sub_1DCDA3F24(v46);
    v68 = v153;
    sub_1DCB09910(v66, v153, &qword_1ECCA5F48, &qword_1DD0F4378);
    a7 = v169;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, 1, v169);
    v151 = 0;
    if (EnumTagSinglePayload == 1)
    {
      sub_1DCB0E9D8(v68, &qword_1ECCA5F48, &qword_1DD0F4378);
      if (v67[2])
      {
        v142 = a1;
        v143 = a3;
        v70 = (v67 + 8);
        OUTLINED_FUNCTION_10_16();
        a1 = v72 & v71;
        v74 = (v73 + 63) >> 6;
        v162 = v168 + 16;
        v145 = v168 + 32;
        v144 = v168 + 40;

        v46 = 0;
        v75 = MEMORY[0x1E69E7CC8];
        v9 = MEMORY[0x1E69E7CC0];
        v150 = v58;
        v149 = (v67 + 8);
        v146 = v74;
        v147 = v67;
        while (1)
        {
          v167 = v75;
          if (!a1)
          {
            break;
          }

          v152 = v9;
LABEL_24:
          v77 = __clz(__rbit64(a1)) | (v46 << 6);
          v78 = v67[7];
          v79 = *(v67[6] + 8 * v77);
          *&v161 = *(v168 + 72);
          v80 = *(v154 + 48);
          v81 = *(v168 + 16);
          v82 = v158;
          v83 = a7;
          a7 = v162;
          v81(&v158[v80], (v78 + v161 * v77), v83);
          *v82 = v79;
          v153 = v79;
          v84 = [v153 instanceIdentifier];
          v85 = sub_1DD0DDFBC();
          a3 = v86;

          v81(v159, &v82[v80], v169);
          v87 = v167;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v170 = v87;
          v160 = v85;
          v89 = sub_1DCB21038(v85, a3);
          v91 = *(v87 + 16);
          if (__OFADD__(v91, (v90 & 1) == 0))
          {
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v80 = v89;
          a7 = v90;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F50, &unk_1DD0F4380);
          if (sub_1DD0DEDCC())
          {
            isUniquelyReferenced_nonNull_native = a3;
            v92 = sub_1DCB21038(v160, a3);
            if ((a7 & 1) != (v93 & 1))
            {
              result = sub_1DD0DF12C();
              __break(1u);
              return result;
            }

            v80 = v92;
            v94 = v153;
          }

          else
          {
            v94 = v153;
            isUniquelyReferenced_nonNull_native = a3;
          }

          v75 = v170;
          if (a7)
          {
            OUTLINED_FUNCTION_9_43();
            v95();
          }

          else
          {
            v170[(v80 >> 6) + 8] |= 1 << v80;
            v96 = (v75[6] + 16 * v80);
            *v96 = v160;
            v96[1] = isUniquelyReferenced_nonNull_native;
            OUTLINED_FUNCTION_9_43();
            v97();
            v98 = v75[2];
            v99 = __OFADD__(v98, 1);
            v91 = v98 + 1;
            if (v99)
            {
              goto LABEL_62;
            }

            v75[2] = v91;
          }

          sub_1DCB0E9D8(v158, &qword_1ECCA5F40, &unk_1DD0F4368);
          v9 = v152;
          v100 = swift_isUniquelyReferenced_nonNull_native();
          v67 = v147;
          if ((v100 & 1) == 0)
          {
            sub_1DCE19A70(0, *(v9 + 16) + 1, 1, v9);
            v9 = v104;
          }

          v102 = *(v9 + 16);
          v101 = *(v9 + 24);
          v103 = v102 + 1;
          if (v102 >= v101 >> 1)
          {
            v105 = OUTLINED_FUNCTION_5_56(v101);
            sub_1DCE19A70(v105, v106, v107, v9);
            v9 = v108;
          }

          a1 &= a1 - 1;
          *(v9 + 16) = v103;
          v70 = v149;
          v74 = v146;
        }

        while (1)
        {
          v76 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            __break(1u);
            goto LABEL_60;
          }

          if (v76 >= v74)
          {
            break;
          }

          a1 = *&v70[8 * v76];
          ++v46;
          if (a1)
          {
            v152 = v9;
            v46 = v76;
            goto LABEL_24;
          }
        }

        v115 = v148;
        if (v148)
        {
          v160 = (v168 + 8);
          v46 = MEMORY[0x1E69E7CC0];
          v116 = (v142 + 40);
          *&v114 = 136315138;
          v161 = v114;
          do
          {
            v118 = *(v116 - 1);
            v117 = *v116;
            v119 = v75[2];

            if (v119 && (v120 = sub_1DCB21038(v118, v117), (v121 & 1) != 0))
            {
              v122 = v120;

              v123 = v169;
              v124 = v75[7] + *(v168 + 72) * v122;
              v125 = *(v168 + 16);
              v126 = v164;
              v125(v164, v124, v169);
              v127 = *(v156 + 48);
              v128 = v165;
              v125(v165, v126, v123);
              *(v128 + v127) = 0;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1DCE19A98();
                v46 = v137;
              }

              v129 = *(v46 + 24);
              if (*(v46 + 16) >= v129 >> 1)
              {
                OUTLINED_FUNCTION_5_56(v129);
                sub_1DCE19A98();
                v46 = v138;
              }

              (*v160)(v164, v123);
              OUTLINED_FUNCTION_6_45();
              sub_1DCDA46C8(v165, v130);
              v75 = v167;
            }

            else
            {

              v131 = sub_1DD0DD8EC();
              v132 = sub_1DD0DE6EC();

              if (os_log_type_enabled(v131, v132))
              {
                v133 = v115;
                v134 = swift_slowAlloc();
                v135 = swift_slowAlloc();
                v170 = v135;
                *v134 = v161;
                v136 = sub_1DCB10E9C(v118, v117, &v170);

                *(v134 + 4) = v136;
                _os_log_impl(&dword_1DCAFC000, v131, v132, "Missing appIntentSpecification for instanceId=%s", v134, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v135);
                OUTLINED_FUNCTION_80();
                v115 = v133;
                v75 = v167;
                OUTLINED_FUNCTION_80();
              }

              else
              {
              }
            }

            v116 += 4;
            --v115;
          }

          while (v115);
        }

        else
        {
          v46 = MEMORY[0x1E69E7CC0];
        }

        sub_1DCB0E9D8(v155, &qword_1ECCA5F48, &qword_1DD0F4378);
        sub_1DCB0E9D8(v163, &qword_1ECCA5F20, &qword_1DD0F4350);
      }

      else
      {

        sub_1DCB0E9D8(v155, &qword_1ECCA5F48, &qword_1DD0F4378);
        sub_1DCB0E9D8(v46, &qword_1ECCA5F20, &qword_1DD0F4350);

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v109 = v168;
      isUniquelyReferenced_nonNull_native = v149;
      (*(v168 + 32))(v149, v68, a7);
      v110 = *(v156 + 48);
      v111 = *(v109 + 16);
      v80 = v150;
      v111(v150, isUniquelyReferenced_nonNull_native, a7);
      *(v80 + v110) = 1;
      sub_1DCE19A98();
      v46 = v112;
      v91 = *(v112 + 24);
      if (*(v112 + 16) >= v91 >> 1)
      {
LABEL_63:
        OUTLINED_FUNCTION_5_56(v91);
        sub_1DCE19A98();
        v46 = v140;
      }

      (*(v168 + 8))(isUniquelyReferenced_nonNull_native, a7);
      sub_1DCB0E9D8(v155, &qword_1ECCA5F48, &qword_1DD0F4378);
      sub_1DCB0E9D8(v163, &qword_1ECCA5F20, &qword_1DD0F4350);
      OUTLINED_FUNCTION_6_45();
      sub_1DCDA46C8(v80, v113);
    }
  }

  return v46;
}

uint64_t sub_1DCDA3B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = sub_1DD0DD39C();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  sub_1DD0DD3DC();
  sub_1DCC60D38();
  sub_1DCDA4670();
  sub_1DD0DD34C();
  return (*(v9 + 8))(v14, v7);
}

uint64_t sub_1DCDA3C84@<X0>(uint64_t a8@<X8>)
{
  v9 = sub_1DD0DD39C();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  sub_1DD0DD3DC();
  sub_1DCC60D38();
  sub_1DCDA4670();
  sub_1DD0DD35C();
  if (v19)
  {
    return (*(v11 + 8))(v16, v9);
  }

  (*(v11 + 8))(v16, v9);
  v18 = sub_1DD0DD38C();
  return __swift_storeEnumTagSinglePayload(a8, 0, 1, v18);
}

uint64_t sub_1DCDA3DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F20, &qword_1DD0F4350);
  OUTLINED_FUNCTION_20_0(v4);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v12 - v7;
  sub_1DCB09910(a1, &v12 - v7, &qword_1ECCA5F20, &qword_1DD0F4350);
  v9 = sub_1DD0DD38C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1DCB0E9D8(v8, &qword_1ECCA5F20, &qword_1DD0F4350);
    v10 = sub_1DD0DD3CC();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v10);
  }

  else
  {
    sub_1DD0DD37C();
    return (*(*(v9 - 8) + 8))(v8, v9);
  }
}

void *sub_1DCDA3F24(uint64_t a1)
{
  v84 = sub_1DD0DD3CC();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F18, &qword_1DD0F4348);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v83 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F20, &qword_1DD0F4350);
  OUTLINED_FUNCTION_20_0(v12);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v66 - v15;
  v17 = sub_1DD0DD38C();
  OUTLINED_FUNCTION_9();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_16();
  v24 = v23 - v22;
  sub_1DCB09910(a1, v16, &qword_1ECCA5F20, &qword_1DD0F4350);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1DCB0E9D8(v16, &qword_1ECCA5F20, &qword_1DD0F4350);
    return MEMORY[0x1E69E7CC8];
  }

  else
  {
    v68 = v19;
    v26 = *(v19 + 32);
    v69 = v17;
    v26(v24, v16, v17);
    v67 = v24;
    v27 = sub_1DD0DD36C() + 64;
    OUTLINED_FUNCTION_10_16();
    v30 = v29 & v28;
    v32 = (v31 + 63) >> 6;
    v82 = v3 + 16;
    v70 = (v3 + 40);
    v71 = (v3 + 32);
    v76 = v33;

    v34 = 0;
    v25 = MEMORY[0x1E69E7CC8];
    v72 = v32;
    v73 = v27;
    v74 = v3;
    v75 = v8;
    if (!v30)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v81 = v25;
LABEL_9:
      v36 = __clz(__rbit64(v30)) | (v34 << 6);
      v37 = v76;
      v38 = *(v76 + 48);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F28, &qword_1DD0F4358);
      OUTLINED_FUNCTION_2();
      v41 = *(v40 + 16);
      v42 = v83;
      (v41)(v83, v38 + *(v40 + 72) * v36, v39);
      v43 = *(v37 + 56) + *(v3 + 72) * v36;
      v44 = *(v77 + 48);
      v78 = *(v3 + 72);
      v79 = v44;
      v80 = *(v3 + 16);
      v45 = v84;
      v80(v42 + v44, v43, v84);
      v87 = v39;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1Tm(v86);
      v41();
      __swift_project_boxed_opaque_existential_1(v86, v87);
      v46 = sub_1DD0DD3AC();
      v48 = v47;
      v49 = sub_1DD0DD3AC();
      v51 = v50;
      v52 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
      v53 = sub_1DCDA45E8(v46, v48, v49, v51);
      v54 = v75;
      v80(v75, v42 + v79, v45);
      v55 = v81;
      swift_isUniquelyReferenced_nonNull_native();
      v85 = v55;
      v56 = sub_1DCC5F998(v53);
      if (__OFADD__(v55[2], (v57 & 1) == 0))
      {
        break;
      }

      v58 = v56;
      v59 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F30, &qword_1DD0F4360);
      if (sub_1DD0DEDCC())
      {
        v60 = sub_1DCC5F998(v53);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_24;
        }

        v58 = v60;
      }

      v25 = v85;
      if (v59)
      {
        (*v70)(v85[7] + v58 * v78, v54, v84);
      }

      else
      {
        v85[(v58 >> 6) + 8] |= 1 << v58;
        *(v25[6] + 8 * v58) = v53;
        (*v71)(v25[7] + v58 * v78, v54, v84);
        v62 = v25[2];
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_23;
        }

        v25[2] = v64;
      }

      v30 &= v30 - 1;
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      sub_1DCB9CE50(v83);
      v27 = v73;
      v3 = v74;
      v32 = v72;
      if (!v30)
      {
LABEL_5:
        while (1)
        {
          v35 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (v35 >= v32)
          {

            (*(v68 + 8))(v67, v69);

            return v25;
          }

          v30 = *(v27 + 8 * v35);
          ++v34;
          if (v30)
          {
            v81 = v25;
            v34 = v35;
            goto LABEL_9;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_1DCC60D38();
    result = sub_1DD0DF12C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DCDA44F0(uint64_t a1)
{
  result = sub_1DD0DD39C();
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

id sub_1DCDA45E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DD0DDF8C();

  v6 = sub_1DD0DDF8C();

  v7 = [v4 initWithTypeIdentifier:v5 instanceIdentifier:v6];

  return v7;
}

unint64_t sub_1DCDA4670()
{
  result = qword_1ECCA5F38;
  if (!qword_1ECCA5F38)
  {
    sub_1DCC60D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5F38);
  }

  return result;
}

uint64_t sub_1DCDA46C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DE8, &unk_1DD0EFFC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IntentSlotDucConcept.conceptType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *IntentSlotDucConcept.__allocating_init(app:intent:parameterName:value:typeName:valueTypeNamesByValueType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  result = OUTLINED_FUNCTION_0_63(v16, "IntentSlotConcept");
  result[4] = a1;
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  result[8] = a5;
  result[9] = a6;
  result[10] = a7;
  result[11] = a8;
  return result;
}

void *IntentSlotDucConcept.init(app:intent:parameterName:value:typeName:valueTypeNamesByValueType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = 0xD000000000000011;
  v8[3] = 0x80000001DD11D370;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  v8[7] = a4;
  v8[8] = a5;
  v8[9] = a6;
  v8[10] = a7;
  v8[11] = a8;
  return v8;
}

void *IntentSlotDucConcept.__allocating_init(app:intent:value:typeName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for INIntentSlotValueType(0);
  sub_1DCD94D7C();
  v10 = sub_1DD0DDE9C();
  type metadata accessor for IntentSlotDucConcept();
  v11 = swift_allocObject();
  result = OUTLINED_FUNCTION_0_63(v11, "IntentSlotConcept");
  result[4] = a1;
  result[5] = a2;
  result[6] = 0;
  result[7] = 0;
  result[8] = a3;
  result[9] = a4;
  result[10] = a5;
  result[11] = v10;
  return result;
}

uint64_t IntentSlotDucConcept.deinit()
{

  return v0;
}

uint64_t IntentSlotDucConcept.__deallocating_deinit()
{
  IntentSlotDucConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDA4A34(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_86_7();
      break;
    case 3:
      OUTLINED_FUNCTION_57_8();
      break;
    default:
      break;
  }

  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4AE8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_57_8();
      break;
    default:
      break;
  }

  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4BC0(uint64_t a1, char a2)
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4C28(uint64_t a1, unsigned __int8 a2)
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4D38(uint64_t a1, char a2)
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4DCC(uint64_t a1, char a2)
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4EA8(uint64_t a1, unsigned __int8 a2)
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4F40(uint64_t a1, char a2)
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4FF4(uint64_t a1, unsigned __int8 a2)
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA50A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  OUTLINED_FUNCTION_67_10(v3, v4);
}

uint64_t sub_1DCDA50E4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_57_8();
      break;
    case 5:
      OUTLINED_FUNCTION_86_7();
      break;
    default:
      break;
  }

  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA51F0(uint64_t a1, unsigned __int8 a2)
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA5278(uint64_t a1, char a2)
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA5334(uint64_t a1, char a2)
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA53C4(uint64_t a1, char a2)
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA5424(uint64_t a1, char a2)
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA548C(uint64_t a1, char a2)
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA5558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  OUTLINED_FUNCTION_67_10(v3, v4);
}

uint64_t sub_1DCDA55A8(uint64_t result, uint64_t *a2)
{
  v4 = *(result + 16);
  v5 = (result + 32);
  if (v4)
  {
    while (1)
    {
      v6 = *v5;

      sub_1DCDA7B68(&v6, a2);
      if (v2)
      {
        break;
      }

      ++v5;
      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

char *IntentTopic.init(type:version:entity:verb:)@<X0>(char *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *result;
  v8 = *a2;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *a7 = v7;
  *(a7 + 1) = v8;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t sub_1DCDA5654(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DCDAA6E0();
  result = MEMORY[0x1E12A6BE0](v2, &type metadata for IntentTopic, v3);
  v5 = 0;
  v13 = result;
  v6 = *(a1 + 16);
  for (i = 32; ; i += 64)
  {
    if (v6 == v5)
    {

      return v13;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(a1 + i + 16);
    v14[0] = *(a1 + i);
    v14[1] = v8;
    v15[0] = *(a1 + i + 32);
    *(v15 + 9) = *(a1 + i + 41);
    ++v5;
    sub_1DCB32880(v14, v11);
    sub_1DCD3F85C(v9, v14);
    v11[0] = v9[0];
    v11[1] = v9[1];
    v12[0] = v10[0];
    *(v12 + 9) = *(v10 + 9);
    result = sub_1DCB340B4(v11);
  }

  __break(1u);
  return result;
}

void sub_1DCDA5740()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v2 = sub_1DD0DB3AC();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_10_2();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v23 - v12;
  v14 = *(v1 + 16);
  v15 = sub_1DCDAA750();
  v23[1] = MEMORY[0x1E12A6BE0](v14, v2, v15);
  v16 = *(v1 + 16);
  if (v16)
  {
    v19 = *(v4 + 16);
    v17 = v4 + 16;
    v18 = v19;
    v20 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v23[0] = v1;
    v21 = v1 + v20;
    v22 = *(v17 + 56);
    do
    {
      v18(v9, v21, v2);
      sub_1DCD3FE54();
      (*(v17 - 8))(v13, v2);
      v21 += v22;
      --v16;
    }

    while (v16);
  }

  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCDA58AC(uint64_t a1)
{
  result = MEMORY[0x1E12A6BE0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v6 = result;
  v4 = *(a1 + 16);
  for (i = a1 + 40; ; i += 16)
  {
    if (v4 == v3)
    {

      return v6;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;

    sub_1DCB88110();
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCDA596C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD0DE0CC();
  v5 = MEMORY[0x1E12A6BE0](v2, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E5EE8]);
  while (1)
  {
    sub_1DD0DE13C();
    if (!v3)
    {
      break;
    }

    sub_1DCD40540();
  }

  return v5;
}

void sub_1DCDA5A0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_1DD0DE1AC())
  {
    *&v65 = a1;
    *(&v65 + 1) = a2;
    sub_1DCDA70D4(6);
    sub_1DCDA715C(1uLL, v6);
    v56 = v65;
    sub_1DCB1C4D8();
    v7 = MEMORY[0x1E69E6158];
    v8 = sub_1DD0DEA5C();

    v9 = MEMORY[0x1E12A64E0](5, v7, v7, MEMORY[0x1E69E6168]);
    v10 = 0;
    v11 = *(v8 + 16);
LABEL_3:
    v12 = 32 * v10;
    while (v11 != v10)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v13 = *(v8 + v12 + 48);
      v14 = *(v8 + v12 + 56);
      v56 = *(v8 + v12 + 32);
      v57 = v13;
      v58 = v14;
      sub_1DCD00128();

      v15 = sub_1DD0DEA5C();
      v16 = v15[2];
      if (v16)
      {
        v48 = a3;
        v17 = v15[4];
        v18 = v15[5];
        v19 = v9;
        v20 = v15[7];
        v21 = &v15[4 * v16];
        v52 = v21[1];
        v54 = *v21;
        v22 = v21[3];
        v49 = v15[6];
        v50 = v21[2];

        v23 = MEMORY[0x1E12A66E0](v17, v18, v49, v20);
        v25 = v24;

        v51 = MEMORY[0x1E12A66E0](v54, v52, v50, v22);
        v53 = v26;

        swift_isUniquelyReferenced_nonNull_native();
        v55 = v23;
        *&v56 = v19;
        v27 = sub_1DCB21038(v23, v25);
        if (!__OFADD__(v19[2], (v28 & 1) == 0))
        {
          v29 = v27;
          v30 = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2810, &qword_1DD0F4B30);
          if ((sub_1DD0DEDCC() & 1) == 0)
          {
            goto LABEL_12;
          }

          v31 = sub_1DCB21038(v55, v25);
          if ((v30 & 1) == (v32 & 1))
          {
            v29 = v31;
LABEL_12:
            v9 = v56;
            if (v30)
            {
              v33 = (*(v56 + 56) + 16 * v29);
              *v33 = v51;
              v33[1] = v53;

LABEL_16:
              a3 = v48;
              ++v10;

              goto LABEL_3;
            }

            *(v56 + 8 * (v29 >> 6) + 64) |= 1 << v29;
            v34 = (v9[6] + 16 * v29);
            *v34 = v55;
            v34[1] = v25;
            v35 = (v9[7] + 16 * v29);
            *v35 = v51;
            v35[1] = v53;
            v36 = v9[2];
            v37 = __OFADD__(v36, 1);
            v38 = v36 + 1;
            if (!v37)
            {
              v9[2] = v38;
              goto LABEL_16;
            }

LABEL_31:
            __break(1u);
          }

          sub_1DD0DF12C();
          __break(1u);
          return;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v12 += 32;
      ++v10;
    }

    IntentTopic.init(dictionary:)(v9, &v56);
    v45 = v56;
    v44 = BYTE1(v56);
    v63 = *(&v56 + 2);
    v64 = WORD3(v56);
    v39 = *(&v56 + 1);
    v42 = v57;
    v40 = v58;
    v41 = v59;
    a1 = v60;
    a2 = v61;
    v43 = v62;
    if (v57 != 1)
    {
      goto LABEL_27;
    }

    *a3 = v56;
    *(a3 + 1) = v44;
    *(a3 + 2) = v63;
    *(a3 + 6) = v64;
    v42 = 1;
  }

  else
  {
    if (sub_1DD0DE1AC())
    {
      OUTLINED_FUNCTION_15_41();
      v44 = 1;
      v45 = 3;
    }

    else
    {
      sub_1DD0DE04C();
      v46 = sub_1DD0DE1AC();

      if (v46)
      {
        OUTLINED_FUNCTION_15_41();
        v44 = 1;
        v45 = 4;
      }

      else
      {
        sub_1DD0DE1AC();
        OUTLINED_FUNCTION_15_41();
        if (v47)
        {
          v45 = 8;
        }

        else
        {
          v45 = 0;
        }

        v44 = 1;
      }
    }

LABEL_27:
    *a3 = v45;
    v43 &= 1u;
    *(a3 + 1) = v44 & 1;
  }

  *(a3 + 8) = v39;
  *(a3 + 16) = v42;
  *(a3 + 24) = v40;
  *(a3 + 32) = v41;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
  *(a3 + 56) = v43;
}

void static IntentTopic.makeFromBundleInfoPlist(dictionary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0xD000000000000010;
  v7 = MEMORY[0x1E69E7CC0];
  v92 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_61_14(a1, a2, a3);
  v8 = &off_1EDE4F000;
  v9 = &xmmword_1DD0E4000;
  if (v91)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    v13 = OUTLINED_FUNCTION_9_44(v10, v11, v12);
    if (v13)
    {
      OUTLINED_FUNCTION_33_15();
      if (!v16)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v17 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_10_41(v17, qword_1EDE57E00);

      v18 = sub_1DD0DD8EC();
      v19 = sub_1DD0DE70C();
      if (OUTLINED_FUNCTION_61_1(v19))
      {
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_34_2();
        OUTLINED_FUNCTION_79_8();
        OUTLINED_FUNCTION_29_19(3.8521e-34);
        OUTLINED_FUNCTION_80_4();
        v20 = MEMORY[0x1E12A6960](v3, MEMORY[0x1E69E6158]);
        v22 = sub_1DCB10E9C(v20, v21, v90);
        v7 = MEMORY[0x1E69E7CC0];

        *(v4 + 14) = v22;
        v9 = &xmmword_1DD0E4000;
        v8 = &off_1EDE4F000;
        OUTLINED_FUNCTION_28_19(&dword_1DCAFC000, v23, v24, "Found supportedDomains : %ld : %s");
        OUTLINED_FUNCTION_44_1();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_52();
      }

      else
      {
      }

      if (*(v3 + 16))
      {
        v84 = v5;
        OUTLINED_FUNCTION_14_39();
        OUTLINED_FUNCTION_32_17();
        while (1)
        {
          v5 = 1;
          OUTLINED_FUNCTION_27_21();
          OUTLINED_FUNCTION_13_41();
          v4 = v90[0];
          OUTLINED_FUNCTION_78_10();
          *(v25 + 32) = 256;
          OUTLINED_FUNCTION_3_67(v25, v84, v88, v89, SWORD2(v89));
          OUTLINED_FUNCTION_83_5(v26);
          if (!v7)
          {
            break;
          }

          OUTLINED_FUNCTION_77_7();
        }

        v7 = MEMORY[0x1E69E7CC0];
        v9 = &xmmword_1DD0E4000;
        v8 = &off_1EDE4F000;
        OUTLINED_FUNCTION_16_31();
      }

      else
      {

        v4 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_94_4();
    }
  }

  else
  {
    v13 = sub_1DCB0E9D8(v90, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  OUTLINED_FUNCTION_61_14(v13, v14, v15);
  if (v91)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    if (OUTLINED_FUNCTION_9_44(v27, v28, v29))
    {
      OUTLINED_FUNCTION_33_15();
      if (!v16)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v30 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_10_41(v30, qword_1EDE57E00);

      v31 = sub_1DD0DD8EC();
      v32 = sub_1DD0DE70C();
      v85 = v5;
      if (OUTLINED_FUNCTION_61_1(v32))
      {
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_34_2();
        OUTLINED_FUNCTION_79_8();
        OUTLINED_FUNCTION_29_19(COERCE_FLOAT(*(v9 + 275)));
        OUTLINED_FUNCTION_80_4();
        v33 = MEMORY[0x1E12A6960](v3, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_90_5(v33, v34, v35, v36, v37, v38, v39, v40, v5);
        OUTLINED_FUNCTION_68_11();
        *(v4 + 14) = v9;
        v9 = 0xD000000000000010;
        OUTLINED_FUNCTION_28_19(&dword_1DCAFC000, v41, v42, "Found supportedIntents : %ld : %s");
        OUTLINED_FUNCTION_44_1();
        OUTLINED_FUNCTION_16_31();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_52();
      }

      else
      {
      }

      if (*(v3 + 16))
      {
        OUTLINED_FUNCTION_14_39();
        OUTLINED_FUNCTION_32_17();
        while (1)
        {
          v5 = *(v9 - 1);
          OUTLINED_FUNCTION_27_21();
          OUTLINED_FUNCTION_13_41();
          v4 = v90[0];
          OUTLINED_FUNCTION_78_10();
          *(v43 + 32) = 259;
          OUTLINED_FUNCTION_3_67(v43, v85, v88, v89, SWORD2(v89));
          OUTLINED_FUNCTION_83_5(v44);
          if (!v7)
          {
            break;
          }

          OUTLINED_FUNCTION_77_7();
        }

        v7 = MEMORY[0x1E69E7CC0];
        v9 = &xmmword_1DD0E4000;
        v8 = &off_1EDE4F000;
        OUTLINED_FUNCTION_16_31();
      }

      else
      {

        v4 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_94_4();
    }
  }

  else
  {
    sub_1DCB0E9D8(v90, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  sub_1DCB90D40();
  if (v91)
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    if (OUTLINED_FUNCTION_9_44(v45, v46, v47))
    {
      OUTLINED_FUNCTION_33_15();
      if (!v16)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v48 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_10_41(v48, qword_1EDE57E00);

      v49 = sub_1DD0DD8EC();
      v50 = sub_1DD0DE70C();
      v86 = v5;
      if (OUTLINED_FUNCTION_61_1(v50))
      {
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_34_2();
        OUTLINED_FUNCTION_79_8();
        OUTLINED_FUNCTION_29_19(COERCE_FLOAT(*(v9 + 275)));
        OUTLINED_FUNCTION_80_4();
        v51 = MEMORY[0x1E12A6960](v3, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_90_5(v51, v52, v53, v54, v55, v56, v57, v58, v5);
        OUTLINED_FUNCTION_68_11();
        *(v4 + 14) = v9;
        v9 = 0xD000000000000010;
        OUTLINED_FUNCTION_28_19(&dword_1DCAFC000, v59, v60, "Found supportedInvocations : %ld : %s");
        OUTLINED_FUNCTION_44_1();
        OUTLINED_FUNCTION_16_31();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_52();
      }

      else
      {
      }

      if (*(v3 + 16))
      {
        OUTLINED_FUNCTION_14_39();
        OUTLINED_FUNCTION_32_17();
        while (1)
        {
          OUTLINED_FUNCTION_27_21();
          OUTLINED_FUNCTION_13_41();
          v4 = v90[0];
          OUTLINED_FUNCTION_78_10();
          *(v61 + 32) = 260;
          OUTLINED_FUNCTION_3_67(v61, v86, v88, v89, SWORD2(v89));
          OUTLINED_FUNCTION_83_5(v62);
          if (!v7)
          {
            break;
          }

          OUTLINED_FUNCTION_77_7();
        }

        v7 = MEMORY[0x1E69E7CC0];
        v9 = &xmmword_1DD0E4000;
        v8 = &off_1EDE4F000;
        OUTLINED_FUNCTION_16_31();
      }

      else
      {

        v4 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_94_4();
    }
  }

  else
  {
    sub_1DCB0E9D8(v90, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  sub_1DCB90D40();
  if (v91)
  {
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F68, &unk_1DD0F4460);
    if (OUTLINED_FUNCTION_9_44(v63, v64, v65))
    {
      v4 = v89;
      if (v8[288] != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v66 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v66, qword_1EDE57E00);

      v67 = sub_1DD0DD8EC();
      v68 = sub_1DD0DE70C();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = OUTLINED_FUNCTION_151();
        *v69 = 134217984;
        *(v69 + 4) = *(v89 + 16);

        _os_log_impl(&dword_1DCAFC000, v67, v68, "Found supportedTopics SET : %ld", v69, 0xCu);
        OUTLINED_FUNCTION_80();
      }

      else
      {
      }

      sub_1DCDA55A8(v89, &v92);
    }
  }

  else
  {
    sub_1DCB0E9D8(v90, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  sub_1DCB90D40();
  if (v91)
  {
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    if (OUTLINED_FUNCTION_9_44(v70, v71, v72))
    {
      v87 = 0;
      OUTLINED_FUNCTION_33_15();
      if (!v16)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v73 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_10_41(v73, qword_1EDE57E00);

      v74 = sub_1DD0DD8EC();
      v75 = sub_1DD0DE70C();
      if (OUTLINED_FUNCTION_61_1(v75))
      {
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_34_2();
        OUTLINED_FUNCTION_79_8();
        OUTLINED_FUNCTION_29_19(COERCE_FLOAT(*(v9 + 275)));
        OUTLINED_FUNCTION_80_4();
        v76 = MEMORY[0x1E12A6960](0, MEMORY[0x1E69E6158]);
        v6 = v7;
        v9 = sub_1DCB10E9C(v76, v77, v90);

        *(v4 + 14) = v9;
        OUTLINED_FUNCTION_28_19(&dword_1DCAFC000, v78, v79, "Found supportedPegasusComponents : %ld : %s");
        OUTLINED_FUNCTION_44_1();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_52();
      }

      else
      {
      }

      if (MEMORY[0x10])
      {
        OUTLINED_FUNCTION_14_39();
        OUTLINED_FUNCTION_32_17();
        while (1)
        {
          v81 = *(v9 - 1);
          v80 = *v9;
          OUTLINED_FUNCTION_27_21();
          if (v6 >= v74 >> 1)
          {
            OUTLINED_FUNCTION_13_41();
          }

          OUTLINED_FUNCTION_78_10();
          *(v82 + 32) = 261;
          OUTLINED_FUNCTION_3_67(v82, v87, v88, v89, SWORD2(v89));
          *(v83 + 72) = v81;
          *(v83 + 80) = v80;
          *(v83 + 88) = 0;
          if (!v7)
          {
            break;
          }

          OUTLINED_FUNCTION_77_7();
        }
      }

      OUTLINED_FUNCTION_94_4();
    }
  }

  else
  {
    sub_1DCB0E9D8(v90, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  OUTLINED_FUNCTION_88_5();
}

_BYTE *IntentTopic.init(type:version:entity:verb:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  *a7 = *result;
  *(a7 + 1) = v7;
  v8 = 0x627265566F6ELL;
  if (a6)
  {
    v8 = a5;
  }

  v9 = 0xE600000000000000;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  if (a6)
  {
    v9 = a6;
  }

  *(a7 + 24) = v8;
  *(a7 + 32) = v9;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  return result;
}

uint64_t IntentTopic.init(type:version:entity:verb:identifier:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{

  v15 = *a1;
  v16 = *a2;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *a7 = v15;
  *(a7 + 1) = v16;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

void IntentTopic.init(dictionary:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = OUTLINED_FUNCTION_48_14();
  if (!v8)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  IntentTopic.IntentTopicType.init(rawValue:)(*&v7);
  v9 = v71;
  if (v71 == 9)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v10 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_10_41(v10, qword_1EDE57E00);

    v11 = sub_1DD0DD8EC();
    sub_1DD0DE6CC();
    OUTLINED_FUNCTION_96_3();
    if (OUTLINED_FUNCTION_95_2())
    {
      v12 = OUTLINED_FUNCTION_151();
      v73 = OUTLINED_FUNCTION_83();
      *v12 = 136315138;
      OUTLINED_FUNCTION_48_14();
      OUTLINED_FUNCTION_54_13();
      v71 = v3;
      v72 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
      v13 = sub_1DD0DE02C();
      v15 = sub_1DCB10E9C(v13, v14, &v73);

      *(v12 + 4) = v15;
      v16 = "Invalid topic type: %s";
LABEL_51:
      _os_log_impl(&dword_1DCAFC000, v11, v2, v16, v12, 0xCu);
      OUTLINED_FUNCTION_44_1();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
LABEL_53:

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0;
      return;
    }

    goto LABEL_52;
  }

  sub_1DCB6B180(0x6E6F6973726576, 0xE700000000000000, a1);
  if (v17)
  {
    LOBYTE(v2) = v17;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  v18 = sub_1DD0DEE9C();

  if (v18)
  {
    if (v18 != 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v29 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_10_41(v29, qword_1EDE57E00);

      v11 = sub_1DD0DD8EC();
      sub_1DD0DE6CC();
      OUTLINED_FUNCTION_96_3();
      if (OUTLINED_FUNCTION_95_2())
      {
        v12 = OUTLINED_FUNCTION_151();
        v73 = OUTLINED_FUNCTION_83();
        *v12 = 136315138;
        OUTLINED_FUNCTION_48_14();
        OUTLINED_FUNCTION_54_13();
        v71 = v3;
        v72 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
        v30 = sub_1DD0DE02C();
        v32 = sub_1DCB10E9C(v30, v31, &v73);

        *(v12 + 4) = v32;
        v16 = "Invalid topic version: %s";
        goto LABEL_51;
      }

LABEL_52:

      goto LABEL_53;
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_1DCB6B180(0x797469746E65, 0xE600000000000000, a1);
  if (!v21)
  {
    if (v19)
    {
      v33 = OUTLINED_FUNCTION_45_11();

      if ((v33 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v35 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_10_41(v35, qword_1EDE57E00);

    v11 = sub_1DD0DD8EC();
    sub_1DD0DE6CC();
    OUTLINED_FUNCTION_96_3();
    if (OUTLINED_FUNCTION_95_2())
    {
      v12 = OUTLINED_FUNCTION_151();
      v71 = OUTLINED_FUNCTION_83();
      *v12 = 136315138;
      sub_1DD0DDE7C();
      OUTLINED_FUNCTION_54_13();
      v36 = sub_1DCB10E9C(v3, v4, &v71);

      *(v12 + 4) = v36;
      v16 = "Missing topic entity in dict: %s";
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  v22 = v20;
  v2 = v21;
  v23 = v20 == 42 && v21 == 0xE100000000000000;
  if (v23 || (sub_1DD0DF0AC() & 1) != 0)
  {

LABEL_22:
    v22 = 0;
    v2 = 0;
  }

  v24 = sub_1DCB6B180(1651664246, 0xE400000000000000, a1);
  if (!v25)
  {
    if (v19)
    {
      v34 = OUTLINED_FUNCTION_45_11();

      if ((v34 & 1) == 0)
      {
        v70 = v19;
        goto LABEL_30;
      }
    }

    else
    {
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v37 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_10_41(v37, qword_1EDE57E00);

    v11 = sub_1DD0DD8EC();
    sub_1DD0DE6CC();
    OUTLINED_FUNCTION_96_3();
    if (OUTLINED_FUNCTION_95_2())
    {
      v12 = OUTLINED_FUNCTION_151();
      v71 = OUTLINED_FUNCTION_83();
      *v12 = 136315138;
      sub_1DD0DDE7C();
      OUTLINED_FUNCTION_54_13();
      v38 = sub_1DCB10E9C(v22, v4, &v71);

      *(v12 + 4) = v38;
      v16 = "Missing topic verb in dict: %s";
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  v26 = v24;
  v27 = v25;
  v28 = v24 == 42 && v25 == 0xE100000000000000;
  v70 = v19;
  if (v28 || (sub_1DD0DF0AC() & 1) != 0)
  {

LABEL_30:
    v67 = 0;
    v68 = 0;
    goto LABEL_55;
  }

  v67 = v26;
  v68 = v27;
LABEL_55:
  v69 = v22;
  v39 = sub_1DCDA596C(7942516, 0xE300000000000000);
  v40 = sub_1DCDA596C(7221350, 0xE300000000000000);
  v41 = sub_1DCB6B180(0x766973756C637865, 0xE900000000000065, a1);
  if (!v42)
  {
LABEL_60:

LABEL_61:

    v50 = 0;
    goto LABEL_62;
  }

  v43 = v42;
  v65 = v41;
  v44 = sub_1DD0DE04C();
  v46 = sub_1DCC624D8(v44, v45);
  v48 = v47;

  if (!v48)
  {

    goto LABEL_60;
  }

  v49 = sub_1DCCE6D1C(v46, v48, v39);

  if ((v49 & 1) == 0)
  {
    v55 = sub_1DCCE6D1C(v46, v48, v40);

    if ((v55 & 1) == 0)
    {
      v51 = v70;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v56 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_10_41(v56, qword_1EDE57E00);

      v57 = sub_1DD0DD8EC();
      v58 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = OUTLINED_FUNCTION_43_0();
        v71 = swift_slowAlloc();
        *v59 = 136315394;
        v60 = sub_1DCB10E9C(v65, v43, &v71);
        v66 = v58;
        v61 = v60;

        *(v59 + 4) = v61;
        *(v59 + 12) = 2080;
        v62 = sub_1DD0DDE7C();
        v64 = sub_1DCB10E9C(v62, v63, &v71);

        *(v59 + 14) = v64;
        _os_log_impl(&dword_1DCAFC000, v57, v66, "Value %s for 'exclusive' key in dict: %s is malformed; ignoring it", v59, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {
      }

      v50 = 0;
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  v50 = 1;
LABEL_62:
  v51 = v70;
LABEL_63:
  v52 = sub_1DCB6B180(0x696669746E656469, 0xEA00000000007265, a1);
  v54 = v53;

  *a2 = v9;
  *(a2 + 1) = v51;
  *(a2 + 8) = v69;
  *(a2 + 16) = v2;
  *(a2 + 24) = v67;
  *(a2 + 32) = v68;
  *(a2 + 40) = v52;
  *(a2 + 48) = v54;
  *(a2 + 56) = v50;
}

SiriKitFlow::IntentTopic::IntentTopicType_optional __swiftcall IntentTopic.IntentTopicType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DEE9C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

SiriKitFlow::IntentTopic::IntentTopicVersion_optional __swiftcall IntentTopic.IntentTopicVersion.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DEE9C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DCDA70D4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_1DD0DE0FC();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x1EEE68E00](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v1);
  }

  return result;
}

unint64_t sub_1DCDA715C(unint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = v2[1];
      if ((v3 & 0x2000000000000000) != 0)
      {
        v4 = HIBYTE(v3) & 0xF;
      }

      else
      {
        v4 = *v2 & 0xFFFFFFFFFFFFLL;
      }

      v5 = 7;
      if (((v3 >> 60) & ((*v2 & 0x800000000000000) == 0)) != 0)
      {
        v5 = 11;
      }

      v6 = v5 | (v4 << 16);
      result = sub_1DD0DE0FC();
      if (a2)
      {
        goto LABEL_16;
      }

      if (4 * v4 >= result >> 14)
      {
        a2 = v6;

        return MEMORY[0x1EEE68E00](result, a2);
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return MEMORY[0x1EEE68E00](result, a2);
  }

  return result;
}

uint64_t sub_1DCDA720C(uint64_t a1)
{
  v1 = a1;
  if (sub_1DCB08B14(a1))
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12A72C0](0, v1);
      sub_1DCDA749C();
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      sub_1DD0DCF8C();
    }

    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v2 = sub_1DCDA5654(MEMORY[0x1E69E7CC0]);
  v1 = sub_1DCC516CC(v2);
  if (*(v1 + 16))
  {
    return v1;
  }

  if (qword_1EDE4F900 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "No topics found in dialog act", v6, 2u);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }

  return v1;
}

void sub_1DCDA749C()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void static IntentTopic.makeFromTasks(userDialogAct:parserIdentifier:)(uint64_t a1)
{
  v1 = sub_1DD0DB7DC();
  if (sub_1DCB08B14(v1) || (v3 = sub_1DD0DB55C(), !v4))
  {
    v2 = OUTLINED_FUNCTION_16_18();
    sub_1DCDA720C(v2);
    OUTLINED_FUNCTION_76_8();
  }

  else
  {
    v5 = v3;
    v6 = v4;

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
    v8 = OUTLINED_FUNCTION_40_9(v7);
    *(v8 + 16) = xmmword_1DD0E07C0;
    OUTLINED_FUNCTION_8_44(v8, 1);
    *(v9 + 72) = v5;
    *(v9 + 80) = v6;
    *(v9 + 88) = 0;
  }
}

uint64_t static IntentTopic.makeFromTasks(userDialogAct:parserIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F70, &unk_1DD0F4470);
  OUTLINED_FUNCTION_20_0(v3);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  OUTLINED_FUNCTION_20_0(v8);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v25 - v11;
  v13 = sub_1DD0DBC6C();
  if (sub_1DCB08B14(v13))
  {
    goto LABEL_7;
  }

  sub_1DD0DB7BC();
  v14 = sub_1DD0DB4BC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v14) == 1)
  {
    v15 = &qword_1ECCA5F70;
    v16 = &unk_1DD0F4470;
    v17 = v7;
LABEL_6:
    sub_1DCB0E9D8(v17, v15, v16);
    goto LABEL_7;
  }

  v18 = sub_1DD0DB46C();
  OUTLINED_FUNCTION_112();
  (*(v19 + 8))(v7, v14);
  sub_1DCC621EC(v18);

  v20 = sub_1DD0DB5BC();
  if (__swift_getEnumTagSinglePayload(v12, 1, v20) == 1)
  {
    v15 = &qword_1ECCA29B8;
    v16 = &qword_1DD0E96C0;
    v17 = v12;
    goto LABEL_6;
  }

  sub_1DD0DB55C();
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_112();
  (*(v22 + 8))(v12, v20);
  if (v14)
  {

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
    a2 = OUTLINED_FUNCTION_40_9(v23);
    *(a2 + 16) = xmmword_1DD0E07C0;
    OUTLINED_FUNCTION_8_44(a2, 1);
    *(v24 + 72) = v12;
    *(v24 + 80) = v14;
    *(v24 + 88) = 0;
    return a2;
  }

LABEL_7:
  sub_1DCDA720C(v13);
  OUTLINED_FUNCTION_76_8();

  return a2;
}

void sub_1DCDA7B68(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);

  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE70C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v53 = a2;
    v9 = swift_slowAlloc();
    *&v44 = v9;
    *v8 = 136315138;
    v10 = sub_1DD0DDE7C();
    v12 = sub_1DCB10E9C(v10, v11, &v44);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DCAFC000, v6, v7, "Processing supportedTopics : %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v13 = v9;
    v3 = v2;
    a2 = v53;
    MEMORY[0x1E12A8390](v13, -1, -1);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  IntentTopic.init(dictionary:)(v14, &v44);
  v52 = v44;
  v15 = v45;
  v49 = v46;
  v50 = v47;
  v51 = v48;

  if (v15 == 1)
  {
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v39 = v19;
      *v18 = 136315138;
      v20 = sub_1DD0DDE7C();
      v22 = sub_1DCB10E9C(v20, v21, &v39);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1DCAFC000, v16, v17, "Processing topic failed to generate cache entry: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1E12A8390](v19, -1, -1);
      MEMORY[0x1E12A8390](v18, -1, -1);
    }
  }

  else
  {
    sub_1DCB099BC(&v44, &v39, &qword_1ECCA4F40, &qword_1DD0F0410);
    v23 = sub_1DD0DD8EC();
    v24 = sub_1DD0DE70C();

    sub_1DCB0E9D8(&v44, &qword_1ECCA4F40, &qword_1DD0F0410);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v53 = v3;
      v27 = v26;
      v38 = v26;
      *v25 = 136315394;
      v28 = sub_1DD0DDE7C();
      v30 = sub_1DCB10E9C(v28, v29, &v38);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v39 = v52;
      v40 = v15;
      v41 = v49;
      v42 = v50;
      v43 = v51;
      v31 = IntentTopic.cacheKey.getter();
      v33 = sub_1DCB10E9C(v31, v32, &v38);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_1DCAFC000, v23, v24, "Processing topic : %s -> %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v27, -1, -1);
      MEMORY[0x1E12A8390](v25, -1, -1);
    }

    else
    {
    }

    sub_1DCD4B7D4();
    v34 = *(*a2 + 16);
    sub_1DCBBF6E4(v34);
    v35 = *a2;
    *(v35 + 16) = v34 + 1;
    v36 = v35 + (v34 << 6);
    *(v36 + 32) = v52;
    *(v36 + 48) = v15;
    v37 = v50;
    *(v36 + 56) = v49;
    *(v36 + 72) = v37;
    *(v36 + 88) = v51;
  }
}

uint64_t sub_1DCDA7FF8(uint64_t a1)
{
  v2 = type metadata accessor for USOParse(0);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v39 - v12;
  v14 = sub_1DD0DB3EC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1E69E7CD0];
  *&v42 = &type metadata for FeatureFlagDefinitions.Core;
  *(&v42 + 1) = sub_1DCBF3744();
  LOBYTE(v41[0]) = 4;
  v19 = sub_1DD0DB2AC();
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  if ((v19 & 1) != 0 && *(a1 + *(v2 + 24) + 8))
  {
    LOWORD(v41[0]) = 1;
    v41[1] = 0xD000000000000013;
    v41[2] = 0x80000001DD11D580;
    v42 = xmmword_1DD0F4430;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    sub_1DCD3F85C(v39, v41);
    sub_1DCB340B4(v39);
  }

  sub_1DCB099BC(a1 + *(v2 + 20), v13, &qword_1ECCA2560, &unk_1DD0E5820);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1DCB0E9D8(v13, &qword_1ECCA2560, &unk_1DD0E5820);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v20, qword_1EDE57E00);
    sub_1DCB24740(a1, v9, type metadata accessor for USOParse);
    v21 = sub_1DD0DD8EC();
    v22 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v39[0] = v24;
      *v23 = 136315138;
      sub_1DCB24740(v9, v6, type metadata accessor for USOParse);
      v25 = sub_1DD0DE02C();
      v27 = v26;
      sub_1DCB285E0(v9, type metadata accessor for USOParse);
      v28 = sub_1DCB10E9C(v25, v27, v39);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1DCAFC000, v21, v22, "IntentTopic creation failed: parser was unidentified. Parse: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1E12A8390](v24, -1, -1);
      MEMORY[0x1E12A8390](v23, -1, -1);
    }

    else
    {

      sub_1DCB285E0(v9, type metadata accessor for USOParse);
    }

    v32 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v29 = sub_1DD0DB46C();
    MEMORY[0x1EEE9AC00](v29, v30);
    *&v39[-1] = &v40;
    *(&v39[-1] + 1) = v18;
    sub_1DCC34BBC();

    v31 = v40;
    if (*(v40 + 16))
    {
    }

    else
    {
      v33 = qword_1EDE4F900;

      if (v33 != -1)
      {
        swift_once();
      }

      v34 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v34, qword_1EDE57E00);
      v35 = sub_1DD0DD8EC();
      v36 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1DCAFC000, v35, v36, "IntentTopic creation failed: FlowPlugin did not receive at least one UserDialogAct with .uso parse", v37, 2u);
        MEMORY[0x1E12A8390](v37, -1, -1);
      }
    }

    v32 = sub_1DCC516CC(v31);
    (*(v15 + 8))(v18, v14);
  }

  return v32;
}

uint64_t sub_1DCDA85C4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  for (i = 32; ; i += 64)
  {
    if (v3 == v2)
    {
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v5 = *(v1 + i + 16);
    v10[0] = *(v1 + i);
    v10[1] = v5;
    v11[0] = *(v1 + i + 32);
    *(v11 + 9) = *(v1 + i + 41);
    ++v2;
    sub_1DCB32880(v10, v8);
    sub_1DCD3F85C(v6, v10);
    v8[0] = v6[0];
    v8[1] = v6[1];
    v9[0] = v7[0];
    *(v9 + 9) = *(v7 + 9);
    result = sub_1DCB340B4(v8);
  }

  __break(1u);
  return result;
}

unint64_t IntentTopic.IntentTopicType.rawValue.getter()
{
  result = 863390798;
  switch(*v0)
  {
    case 1:
      result = 880168014;
      break;
    case 2:
      result = 1885430133;
      break;
    case 3:
      result = 0x4974694B69726973;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x726574756F526C6ELL;
      break;
    case 7:
      result = 0x746E65696C436669;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t IntentTopic.IntentTopicVersion.rawValue.getter()
{
  if (*v0)
  {
    return 1701736302;
  }

  else
  {
    return 0x33764F5355;
  }
}

unint64_t sub_1DCDA87CC@<X0>(unint64_t *a1@<X8>)
{
  result = IntentTopic.IntentTopicType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCDA88A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD0DEE9C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCDA88F8(char a1)
{
  if (a1)
  {
    return 0x64726163646C6977;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DCDA895C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentTopic.IntentTopicVersion.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCDA8A58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DCDA88A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DCDA8A88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCDA88F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DCDA8ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCDA88A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCDA8AE4(uint64_t a1)
{
  v2 = sub_1DCDA9B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDA8B20(uint64_t a1)
{
  v2 = sub_1DCDA9B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IntentTopic.IntentTopicWildcardString.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_20_3();
  v25 = v24;
  v45 = v26;
  sub_1DD0DECAC();
  OUTLINED_FUNCTION_9();
  v44 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_16();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F78, &qword_1DD0F4480);
  OUTLINED_FUNCTION_9();
  v46 = v31;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v42 - v34;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1DCDA9B1C();
  sub_1DD0DF23C();
  if (v23)
  {
    v41 = v25;
  }

  else
  {
    v36 = v46;
    v43 = v25;
    v37 = sub_1DD0DEF0C();
    v39 = v38;
    (*(v36 + 8))(v35, v30);
    v40 = v45;
    v41 = v43;
    *v45 = v37;
    v40[1] = v39;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  OUTLINED_FUNCTION_19_19();
}

void IntentTopic.IntentTopicWildcardString.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_20_3();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F88, &qword_1DD0F4490);
  OUTLINED_FUNCTION_9();
  v28 = v27;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v34 - v31;
  v33 = *(v23 + 8);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1DCDA9B1C();
  sub_1DD0DF24C();
  if (v33)
  {
    sub_1DD0DEFBC();
  }

  else
  {
    sub_1DD0DEFCC();
  }

  (*(v28 + 8))(v32, v26);
  OUTLINED_FUNCTION_19_19();
}

uint64_t IntentTopic.IntentTopicWildcardString.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1E12A7840](1);
  }

  MEMORY[0x1E12A7840](0);

  return sub_1DD0DDF2C();
}

uint64_t IntentTopic.IntentTopicWildcardString.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1DD0DF1DC();
  if (v1)
  {
    MEMORY[0x1E12A7840](0);
    sub_1DD0DDF2C();
  }

  else
  {
    MEMORY[0x1E12A7840](1);
  }

  return sub_1DD0DF20C();
}

uint64_t sub_1DCDA9090(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1DD0DF1DC();
  if (v2)
  {
    MEMORY[0x1E12A7840](0);
    sub_1DD0DDF2C();
  }

  else
  {
    MEMORY[0x1E12A7840](1);
  }

  return sub_1DD0DF20C();
}

uint64_t sub_1DCDA9130(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1651664246 && a2 == 0xE400000000000000;
        if (v8 || (sub_1DD0DF0AC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
          if (v9 || (sub_1DD0DF0AC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000015 && 0x80000001DD11D560 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD0DF0AC();

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

unint64_t sub_1DCDA9324(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x797469746E65;
      break;
    case 3:
      result = 1651664246;
      break;
    case 4:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCDA93D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCDA9130(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCDA93F8(uint64_t a1)
{
  v2 = sub_1DCDA9B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDA9434(uint64_t a1)
{
  v2 = sub_1DCDA9B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IntentTopic.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F90, &qword_1DD0F4498);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v20 - v9;
  v11 = *v0;
  v29 = v0[1];
  v12 = *(v0 + 1);
  v25 = *(v0 + 2);
  v26 = v12;
  v13 = *(v0 + 3);
  v23 = *(v0 + 4);
  v24 = v13;
  v14 = *(v0 + 6);
  v21 = *(v0 + 5);
  v22 = v14;
  v20[3] = v0[56];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DCDA9B70();
  v15 = v4;
  sub_1DD0DF24C();
  LOBYTE(v27) = v11;
  sub_1DCDA9BC4();
  OUTLINED_FUNCTION_56_2();
  sub_1DD0DEFFC();
  if (!v1)
  {
    v17 = v25;
    v16 = v26;
    v18 = v23;
    v19 = v24;
    LOBYTE(v27) = v29;
    sub_1DCDA9C18();
    OUTLINED_FUNCTION_60_7();
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFFC();
    v27 = v16;
    v28 = v17;
    sub_1DCDA9C6C();

    OUTLINED_FUNCTION_60_7();
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFFC();

    v27 = v19;
    v28 = v18;

    OUTLINED_FUNCTION_60_7();
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFFC();

    LOBYTE(v27) = 4;
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEF8C();
    LOBYTE(v27) = 5;
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFCC();
  }

  (*(v6 + 8))(v10, v15);
  OUTLINED_FUNCTION_19_19();
}

uint64_t IntentTopic.hashValue.getter()
{
  sub_1DD0DF1DC();
  IntentTopic.hash(into:)();
  return sub_1DD0DF20C();
}

void IntentTopic.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F98, &qword_1DD0F44A0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DCDA9B70();
  sub_1DD0DF23C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    sub_1DCDA9CC0();
    OUTLINED_FUNCTION_12_38();
    OUTLINED_FUNCTION_53_12();
    sub_1DD0DEF4C();
    sub_1DCDA9D14();
    OUTLINED_FUNCTION_12_38();
    OUTLINED_FUNCTION_53_12();
    sub_1DD0DEF4C();
    v31 = v23;
    sub_1DCDA9D68();
    OUTLINED_FUNCTION_12_38();
    OUTLINED_FUNCTION_53_12();
    sub_1DD0DEF4C();
    v18 = v23;
    v19 = v24;
    LOBYTE(v20) = 3;
    OUTLINED_FUNCTION_12_38();
    OUTLINED_FUNCTION_53_12();
    sub_1DD0DEF4C();
    v16 = v23;
    v17 = v23;
    v7 = v24;
    LOBYTE(v23) = 4;
    OUTLINED_FUNCTION_53_12();
    v8 = sub_1DD0DEEDC();
    v10 = v9;
    v15 = v8;
    OUTLINED_FUNCTION_53_12();
    v11 = sub_1DD0DEF1C();
    v12 = OUTLINED_FUNCTION_20_20();
    v13(v12);
    LOBYTE(v20) = v31;
    BYTE1(v20) = v18;
    *(&v20 + 1) = v16;
    *&v21 = v19;
    *(&v21 + 1) = v17;
    *v22 = v7;
    *&v22[8] = v15;
    *&v22[16] = v10;
    v22[24] = v11 & 1;
    v14 = v21;
    *v4 = v20;
    v4[1] = v14;
    v4[2] = *v22;
    *(v4 + 41) = *&v22[9];
    sub_1DCB32880(&v20, &v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    LOBYTE(v23) = v31;
    BYTE1(v23) = v18;
    v24 = v16;
    v25 = v19;
    v26 = v17;
    v27 = v7;
    v28 = v15;
    v29 = v10;
    v30 = v11 & 1;
    sub_1DCB340B4(&v23);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCDA9AC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_33_1();
  v5(v4);
  return a2;
}

unint64_t sub_1DCDA9B1C()
{
  result = qword_1EDE4A020;
  if (!qword_1EDE4A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4A020);
  }

  return result;
}

unint64_t sub_1DCDA9B70()
{
  result = qword_1EDE49FD8;
  if (!qword_1EDE49FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FD8);
  }

  return result;
}

unint64_t sub_1DCDA9BC4()
{
  result = qword_1EDE4A008;
  if (!qword_1EDE4A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4A008);
  }

  return result;
}

unint64_t sub_1DCDA9C18()
{
  result = qword_1EDE49FF0;
  if (!qword_1EDE49FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FF0);
  }

  return result;
}

unint64_t sub_1DCDA9C6C()
{
  result = qword_1EDE4A018;
  if (!qword_1EDE4A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4A018);
  }

  return result;
}

unint64_t sub_1DCDA9CC0()
{
  result = qword_1EDE49FF8;
  if (!qword_1EDE49FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FF8);
  }

  return result;
}

unint64_t sub_1DCDA9D14()
{
  result = qword_1EDE49FE0;
  if (!qword_1EDE49FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FE0);
  }

  return result;
}

unint64_t sub_1DCDA9D68()
{
  result = qword_1EDE4A010;
  if (!qword_1EDE4A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4A010);
  }

  return result;
}

unint64_t sub_1DCDA9DC0()
{
  result = qword_1ECCA5FA0;
  if (!qword_1ECCA5FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5FA0);
  }

  return result;
}

unint64_t sub_1DCDA9E18()
{
  result = qword_1ECCA5FA8;
  if (!qword_1ECCA5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5FA8);
  }

  return result;
}

unint64_t sub_1DCDA9E70()
{
  result = qword_1ECCA5FB0;
  if (!qword_1ECCA5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5FB0);
  }

  return result;
}

unint64_t sub_1DCDA9EC8()
{
  result = qword_1EDE49FB8;
  if (!qword_1EDE49FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FB8);
  }

  return result;
}

uint64_t assignWithCopy for IntentTopic(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for IntentTopic(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for IntentTopic(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for IntentTopic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentTopic.IntentTopicType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntentTopic.IntentTopicWildcardString(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for IntentTopic.IntentTopicWildcardString(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentTopic.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DCDAA350(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCDAA42C()
{
  result = qword_1ECCA5FB8;
  if (!qword_1ECCA5FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5FB8);
  }

  return result;
}

unint64_t sub_1DCDAA484()
{
  result = qword_1ECCA5FC0;
  if (!qword_1ECCA5FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5FC0);
  }

  return result;
}

unint64_t sub_1DCDAA4DC()
{
  result = qword_1EDE49FC8;
  if (!qword_1EDE49FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FC8);
  }

  return result;
}

unint64_t sub_1DCDAA534()
{
  result = qword_1EDE49FD0;
  if (!qword_1EDE49FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FD0);
  }

  return result;
}

unint64_t sub_1DCDAA58C()
{
  result = qword_1EDE4A030;
  if (!qword_1EDE4A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4A030);
  }

  return result;
}

unint64_t sub_1DCDAA5E4()
{
  result = qword_1EDE4A028;
  if (!qword_1EDE4A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4A028);
  }

  return result;
}

unint64_t sub_1DCDAA638()
{
  result = qword_1EDE49FE8;
  if (!qword_1EDE49FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FE8);
  }

  return result;
}

unint64_t sub_1DCDAA68C()
{
  result = qword_1EDE4A000;
  if (!qword_1EDE4A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4A000);
  }

  return result;
}

unint64_t sub_1DCDAA6E0()
{
  result = qword_1EDE49FC0;
  if (!qword_1EDE49FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FC0);
  }

  return result;
}

unint64_t sub_1DCDAA750()
{
  result = qword_1EDE464E0;
  if (!qword_1EDE464E0)
  {
    sub_1DD0DB3AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE464E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_68_11()
{
}

void sub_1DCDAA7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _FlowPlanEvent(255, a5, a3, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DF21C();
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DDB2C();
  OUTLINED_FUNCTION_2_60();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_66();
  sub_1DD0DDABC();
  OUTLINED_FUNCTION_7_7();
  sub_1DD0DDA9C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a1;
  v14[7] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDAAA0C@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40[1] = a3;
  v41 = a2;
  *&v45 = a1;
  v54 = a8;
  v44 = a6;
  v11 = type metadata accessor for _FlowPlanEvent(0, a6, a3, a4);
  MEMORY[0x1EEE9AC00](v11, v12);
  v51 = v40 - v13;
  v14 = sub_1DD0DDBAC();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v49 = v40 - v16;
  swift_getAssociatedTypeWitness();
  v43 = a7;
  v42 = a4;
  swift_getAssociatedConformanceWitness();
  v50 = sub_1DD0DF21C();
  v48 = *(v50 - 8);
  v18 = MEMORY[0x1EEE9AC00](v50, v17);
  v47 = v40 - v19;
  v40[0] = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for _FlowPlanEvent(0, a5, v23, v24);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = (v40 - v28);
  v46 = sub_1DD0DDB2C();
  v30 = sub_1DD0DDB1C();
  (*(v26 + 16))(v29, v45, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v40[0] + 32))(v22, v29, a5);
    v41(v57, v22);
    *&v45 = __swift_project_boxed_opaque_existential_1(v57, v57[3]);
    v31 = swift_allocObject();
    v31[2] = v42;
    v31[3] = a5;
    v31[4] = v43;
    v31[5] = v30;
    v32 = sub_1DD0DF22C();
    v55 = type metadata accessor for LifeCycleModifierFlow(0, v32, v33, v34);
    WitnessTable = swift_getWitnessTable();
    sub_1DD0DCF8C();
  }

  sub_1DCAFF9E8(v29, v58);
  sub_1DCB17CA0(v58, v51);
  swift_storeEnumTagMultiPayload();
  v35 = v49;
  sub_1DD0DDBBC();
  v36 = v47;
  v37 = v53;
  sub_1DD0DDB9C();
  (*(v52 + 8))(v35, v37);
  v57[0] = v30;
  v38 = v50;
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DD0DDC6C();
  (*(v48 + 8))(v36, v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
}

uint64_t sub_1DCDAB04C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(*a2 + *MEMORY[0x1E695BF78]) + 16);
  WitnessTable = swift_getWitnessTable();
  return sub_1DCDAB0F0(a1, v3, v4, WitnessTable);
}

uint64_t sub_1DCDAB0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v44 = a1;
  OUTLINED_FUNCTION_2_4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = a2;
  OUTLINED_FUNCTION_8_45();
  swift_getAssociatedConformanceWitness();
  sub_1DD0DDADC();
  OUTLINED_FUNCTION_9();
  v42 = v8;
  v43 = v7;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v40 - v11;
  v41 = *(AssociatedTypeWitness - 8);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - v15;
  v17 = OUTLINED_FUNCTION_7_7();
  v21 = type metadata accessor for _FlowPlanEvent(v17, v18, v19, v20);
  OUTLINED_FUNCTION_9();
  v40 = v22;
  OUTLINED_FUNCTION_10();
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v40 - v26;
  v28 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v25, v29);
  v31 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_45();
  v32 = sub_1DD0DF22C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v40 - v35;
  (*(v37 + 16))(&v40 - v35, v44, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v41;
    (*(v41 + 32))(v16, v36, AssociatedTypeWitness);
    (*(v38 + 16))(v12, v16, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, AssociatedTypeWitness);
    sub_1DD0DDBCC();
    (*(v42 + 8))(v12, v43);
    return (*(v38 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    (*(v28 + 32))(v31, v36, a3);
    (*(v28 + 16))(v27, v31, a3);
    swift_storeEnumTagMultiPayload();
    sub_1DD0DDBDC();
    (*(v40 + 8))(v27, v21);
    return (*(v28 + 8))(v31, a3);
  }
}

void sub_1DCDAB4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _FlowPlanEvent(255, a4, a3, a4);
  OUTLINED_FUNCTION_8_45();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DF21C();
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DDB2C();
  OUTLINED_FUNCTION_2_60();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_66();
  sub_1DD0DDABC();
  OUTLINED_FUNCTION_1_72();
  swift_getWitnessTable();
  sub_1DD0DDAAC();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  swift_getWitnessTable();
  sub_1DD0DDA9C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a1;
  v13[6] = a2;
  sub_1DD0DCF8C();
}

void sub_1DCDAB814(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a5;
  v41 = a7;
  v11 = type metadata accessor for _FlowPlanEvent(0, a5, a3, a4);
  MEMORY[0x1EEE9AC00](v11, v12);
  v37 = &AssociatedConformanceWitness - v13;
  v14 = sub_1DD0DDBAC();
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v36 = &AssociatedConformanceWitness - v17;
  v31 = a6;
  v30 = a4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = sub_1DD0DF21C();
  v38 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v18);
  v33 = &AssociatedConformanceWitness - v19;
  v20 = swift_checkMetadataState();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &AssociatedConformanceWitness - v23;
  v32 = sub_1DD0DDB2C();
  v25 = sub_1DD0DDB1C();
  a2(v42, a1);
  __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  (*(v21 + 16))(v24, a1, v20);
  v26 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v27 = swift_allocObject();
  v28 = v34;
  *(v27 + 2) = v30;
  *(v27 + 3) = v28;
  *(v27 + 4) = v31;
  *(v27 + 5) = v25;
  (*(v21 + 32))(&v27[v26], v24, v20);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDABCBC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*a2 + *MEMORY[0x1E695BF78] + 8);
  v5 = sub_1DD0DDADC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - v8;
  (*(*(v4 - 8) + 16))(&v11 - v8, a3, v4);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v4);
  sub_1DD0DDB0C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DCDABE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _FlowPlanEvent(0, a3, a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - v8;
  v10 = sub_1DD0DDBAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v16 - v13;
  (*(v6 + 16))(v9, a1, v5);
  sub_1DD0DDBBC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1DD0DDB9C();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1DCDABFFC(uint64_t a1)
{
  OUTLINED_FUNCTION_7_7();
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = *(v1 + 40);
  v5 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1DCDABCBC(a1, v4, v5);
}

void sub_1DCDAC09C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FE0, &qword_1DD0F4BA8);
    OUTLINED_FUNCTION_5_57();
  }

  sub_1DD0DCF8C();
}

void sub_1DCDAC354(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2A10, &qword_1DD0E7EE0);
    OUTLINED_FUNCTION_5_57();
  }

  OUTLINED_FUNCTION_3_68();
  sub_1DD0DCF8C();
}

void sub_1DCDAC57C(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2A10, &qword_1DD0E7EE0);
    OUTLINED_FUNCTION_5_57();
  }

  OUTLINED_FUNCTION_3_68();
  sub_1DD0DCF8C();
}

void sub_1DCDAC840()
{
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_7_42();
  sub_1DCD10120(0xD000000000000029, 0x80000001DD11D6C0);
  OUTLINED_FUNCTION_6_47();
}

void sub_1DCDAC8F8()
{
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_8_46();
  OUTLINED_FUNCTION_6_47();
}

void sub_1DCDAC9A0()
{
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_8_46();
  OUTLINED_FUNCTION_6_47();
}

id sub_1DCDACA48(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

void static SiriKitDirectInvocationPayloads.makeSubmit(userData:)()
{
  OUTLINED_FUNCTION_7_42();
  v0 = OUTLINED_FUNCTION_2_61();
  sub_1DCD10120(v0, v1);
  OUTLINED_FUNCTION_6_47();
}

unint64_t sub_1DCDACAD8()
{
  result = qword_1EDE46110;
  if (!qword_1EDE46110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46110);
  }

  return result;
}

id static SiriKitDirectInvocationPayloads.makeSelect(id:)(unint64_t a1, unint64_t a2)
{
  sub_1DCDACAD8();
  v4 = OUTLINED_FUNCTION_2_61();
  v6 = sub_1DCD10120(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4918, &qword_1DD0ED840);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_73(inited, xmmword_1DD0E07C0);
  v8 = MEMORY[0x1E69E6158];
  sub_1DD0DEBBC();
  inited[6].n128_u64[0] = v8;
  inited[4].n128_u64[1] = a1;
  inited[5].n128_u64[0] = a2;

  v9 = sub_1DD0DDE9C();
  sub_1DCDAD634(v9, v6);
  return v6;
}

id static SiriKitDirectInvocationPayloads.makeIndexBasedSelect(index:)()
{
  OUTLINED_FUNCTION_7_42();
  v1 = sub_1DCD10120(0xD00000000000002ELL, 0x80000001DD1196F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4918, &qword_1DD0ED840);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_73(inited, xmmword_1DD0E07C0);
  sub_1DD0DEBBC();
  inited[6].n128_u64[0] = MEMORY[0x1E69E6530];
  inited[4].n128_u64[1] = v0;
  v3 = sub_1DD0DDE9C();
  sub_1DCDAD634(v3, v1);
  return v1;
}

id static InvocationFactory.makeConfirmAndRejectActions()()
{
  v0 = objc_opt_self();
  v1 = [objc_allocWithZone(MEMORY[0x1E69D01C0]) init];
  if (qword_1ECCA12D0 != -1)
  {
    swift_once();
  }

  v2 = [v0 runSiriKitExecutorCommandWithContext:v1 payload:qword_1ECCA5FC8];

  v3 = [objc_allocWithZone(MEMORY[0x1E69D01C0]) init];
  if (qword_1ECCA12D8 != -1)
  {
    swift_once();
  }

  v4 = [v0 runSiriKitExecutorCommandWithContext:v3 payload:qword_1ECCA5FD0];

  return v2;
}

void static InvocationFactory.makeSubmitAction(userData:)()
{
  objc_opt_self();
  [objc_allocWithZone(MEMORY[0x1E69D01C0]) init];
  sub_1DCDACAD8();
  v0 = OUTLINED_FUNCTION_2_61();
  sub_1DCD10120(v0, v1);
  OUTLINED_FUNCTION_6_47();
}

id static InvocationFactory.makeSelectAction(id:)(unint64_t a1, unint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [objc_allocWithZone(MEMORY[0x1E69D01C0]) init];
  v6 = static SiriKitDirectInvocationPayloads.makeSelect(id:)(a1, a2);
  v7 = [v4 runSiriKitExecutorCommandWithContext:v5 payload:v6];

  return v7;
}

void sub_1DCDAD634(uint64_t a1, void *a2)
{
  v3 = sub_1DD0DDE4C();

  [a2 setUserData_];
}

_BYTE *sub_1DCDAD740(_BYTE *result, int a2, int a3)
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

void *sub_1DCDAD7F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FF0, &qword_1DD0F4BD8);
  inited = swift_initStackObject();
  v1 = MEMORY[0x1E696E5D0];
  *(inited + 16) = xmmword_1DD0EBAB0;
  v2 = *v1;
  *(inited + 32) = *v1;
  v3 = sub_1DD0DDFBC();
  v5 = v4;
  v6 = v2;
  v7 = sub_1DCDADB34(v3, v5);

  v8 = *MEMORY[0x1E696E608];
  *(inited + 40) = v7;
  *(inited + 48) = v8;
  v9 = sub_1DD0DDFBC();
  v11 = v10;
  v12 = v8;
  v13 = sub_1DCDADB34(v9, v11);

  v14 = *MEMORY[0x1E696E5F0];
  *(inited + 56) = v13;
  *(inited + 64) = v14;
  v15 = sub_1DD0DDFBC();
  v17 = v16;
  v18 = v14;
  v19 = sub_1DCDADB34(v15, v17);

  v20 = *MEMORY[0x1E696E618];
  *(inited + 72) = v19;
  *(inited + 80) = v20;
  v21 = sub_1DD0DDFBC();
  v23 = v22;
  v24 = v20;
  v25 = sub_1DCDADB34(v21, v23);

  v26 = *MEMORY[0x1E696E5E8];
  *(inited + 88) = v25;
  *(inited + 96) = v26;
  v27 = sub_1DD0DDFBC();
  v29 = v28;
  v30 = v26;
  v31 = sub_1DCDADB34(v27, v29);

  v32 = *MEMORY[0x1E696E5E0];
  *(inited + 104) = v31;
  *(inited + 112) = v32;
  v33 = sub_1DD0DDFBC();
  v35 = v34;
  v36 = v32;
  v37 = sub_1DCDADB34(v33, v35);

  v38 = *MEMORY[0x1E696E5D8];
  *(inited + 120) = v37;
  *(inited + 128) = v38;
  v39 = sub_1DD0DDFBC();
  v41 = v40;
  v42 = v38;
  v43 = sub_1DCDADB34(v39, v41);

  v44 = *MEMORY[0x1E696E610];
  *(inited + 136) = v43;
  *(inited + 144) = v44;
  v45 = sub_1DD0DDFBC();
  v47 = v46;
  v48 = v44;
  v49 = sub_1DCDADB34(v45, v47);

  v50 = *MEMORY[0x1E696E5F8];
  *(inited + 152) = v49;
  *(inited + 160) = v50;
  v51 = sub_1DD0DDFBC();
  v53 = v52;
  v54 = v50;
  v55 = sub_1DCDADB34(v51, v53);

  v56 = *MEMORY[0x1E696E600];
  *(inited + 168) = v55;
  *(inited + 176) = v56;
  v57 = sub_1DD0DDFBC();
  v59 = v58;
  v60 = v56;
  v61 = sub_1DCDADB34(v57, v59);

  *(inited + 184) = v61;
  type metadata accessor for INPersonHandleLabel(0);
  sub_1DCDADE6C();
  sub_1DCDADEB0();
  result = sub_1DD0DDE9C();
  off_1EDE492B0 = result;
  return result;
}

id sub_1DCDADB34(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FF8, &qword_1DD0F4BE0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  v6 = sub_1DD0DDFBC();
  v8 = v7;

  v9 = [objc_opt_self() bundleForClass_];
  v10 = objc_allocWithZone(MEMORY[0x1E696E818]);

  return sub_1DCDADD0C(a1, a2, v6, v8, v9, 0);
}

uint64_t sub_1DCDADC04(uint64_t a1, uint64_t a2)
{

  v2 = sub_1DD0DE0CC();
  v3 = sub_1DCB594B0(v2);
  v4 = MEMORY[0x1E12A66E0](v3);

  v5 = sub_1DD0DE0CC();
  sub_1DCDA715C(v5, v6);
  return v4;
}

uint64_t sub_1DCDADC94(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DCDADC04(a1, a2);
  MEMORY[0x1E12A6780](v2);

  v3 = sub_1DD0DDF8C();

  return v3;
}

id sub_1DCDADD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1DD0DDF8C();

  if (a4)
  {
    v12 = sub_1DD0DDF8C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithDeferredFormat:v11 fromTable:v12 bundle:a5 arguments:a6];

  return v13;
}

_BYTE *storeEnumTagSinglePayload for LabelMappingUtil(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCDADE6C()
{
  result = qword_1EDE46140;
  if (!qword_1EDE46140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46140);
  }

  return result;
}

unint64_t sub_1DCDADEB0()
{
  result = qword_1EDE46198;
  if (!qword_1EDE46198)
  {
    type metadata accessor for INPersonHandleLabel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46198);
  }

  return result;
}

uint64_t sub_1DCDADF08(char a1, uint64_t a2)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  *(v3 + 128) = a1;
  return OUTLINED_FUNCTION_0_12(sub_1DCDADF24);
}

uint64_t sub_1DCDADF24()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  strcpy((inited + 32), "responseMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v2 = sub_1DD0DDE9C();
  *(v0 + 112) = v2;
  OUTLINED_FUNCTION_32_2(&unk_1DD0F4C88);
  v8 = v3;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_1DCDAE048;
  v5 = *(v0 + 96);
  v6 = *(v0 + 128);

  return v8(v6, v5, v2);
}

uint64_t sub_1DCDAE048()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  OUTLINED_FUNCTION_22_22();
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_1DCDAE160(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 176) = a1;
  v7 = swift_task_alloc();
  *(v3 + 160) = v7;
  *v7 = v3;
  v7[1] = sub_1DCDAE21C;

  return sub_1DCC6FFB0(v3 + 16, a1, a2, 0, a3);
}

uint64_t sub_1DCDAE21C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCDAE31C()
{
  OUTLINED_FUNCTION_33();
  memcpy((v0 + 88), (v0 + 16), 0x48uLL);
  v1 = *(v0 + 128);
  if (v1[2] || (v1 = *(v0 + 120), v1[2]))
  {
    v3 = v1[4];
    v2 = v1[5];

    sub_1DCBF48A4(v0 + 88);
    OUTLINED_FUNCTION_22_22();

    return v4(v3, v2);
  }

  else
  {
    v6 = *(v0 + 176);
    sub_1DCBF48A4(v0 + 88);
    v7 = sub_1DCC677D8(v6);
    v9 = v8;
    sub_1DCDB021C();
    swift_allocError();
    *v10 = v7;
    v10[1] = v9;
    swift_willThrow();
    OUTLINED_FUNCTION_29();

    return v11();
  }
}

void sub_1DCDAE4A4()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_8_47(v0, v0, &off_1F58563F0);
}

uint64_t sub_1DCDAE584()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v5[9] = v1;

  if (!v1)
  {
    v5[10] = v0;
    v5[11] = v3;
  }

  OUTLINED_FUNCTION_6_48();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCDAE6B8()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_8_47(v0, v0, &off_1F58563F0);
}

uint64_t sub_1DCDAE798()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v5[9] = v1;

  if (!v1)
  {
    v5[10] = v0;
    v5[11] = v3;
  }

  OUTLINED_FUNCTION_6_48();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCDAE8B8()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_22_22();
  v3 = v0[10];
  v2 = v0[11];

  return v1(v2, v3);
}

void static LabelTemplates.openApp(appDisplayInfo:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v7 = OUTLINED_FUNCTION_99(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v23 - v17;
  v19 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  sub_1DCDAF5E8(a1, v14);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1DCD0506C(v14, v21 + v20);
  v22 = (v21 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = a2;
  v22[1] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDAEB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_1DCDAEBB0;

  return static LabelTemplates.cancel()();
}

uint64_t sub_1DCDAEBB0()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v5[5] = v1;

  if (!v1)
  {
    v5[6] = v0;
    v5[7] = v3;
  }

  OUTLINED_FUNCTION_6_48();
  OUTLINED_FUNCTION_152();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCDAECC8()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_8_47(v0, v0, &off_1F58563F0);
}

void sub_1DCDAEDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v11 - v7;
  v9 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDAEEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_1DCDAEBB0;

  return static LabelTemplates.confirm()();
}

void sub_1DCDAEF54()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_8_47(v0, v0, &off_1F58563F0);
}