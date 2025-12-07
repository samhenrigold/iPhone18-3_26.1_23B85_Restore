double sub_26C69E1C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8CD8, &qword_26C6DBDE8);
  v0 = swift_allocObject();
  *&result = 3;
  *(v0 + 16) = xmmword_26C6DAAA0;
  *(v0 + 32) = &type metadata for LegacyPreAuthObject;
  *(v0 + 40) = &off_287D2EF48;
  *(v0 + 48) = &type metadata for LegacyPreAuthResponseObject;
  *(v0 + 56) = &off_287D2E740;
  *(v0 + 64) = &type metadata for LegacySetupDataObject;
  *(v0 + 72) = &off_287D2B7C0;
  off_2804A8CD0 = v0;
  return result;
}

uint64_t getEnumTagSinglePayload for TransmittableObjectError(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for TransmittableObjectError(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_26C69E36C(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_26C69E38C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

void *sub_26C69E3C0(void *a1, void *a2, char a3)
{
  v29 = *MEMORY[0x277D85DE8];
  sub_26C6D86A8();
  swift_allocObject();
  sub_26C6D8698();
  sub_26C6A00D8();
  v7 = sub_26C6D8688();
  v9 = v8;

  if (!v3)
  {
    v11 = objc_opt_self();
    v12 = sub_26C6D8798();
    v27[0] = 0;
    v13 = [v11 JSONObjectWithData:v12 options:0 error:v27];

    if (v13)
    {
      v14 = v27[0];
      sub_26C6D8C78();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8968, &qword_26C6DBE50);
      if (swift_dynamicCast())
      {
        sub_26C678418(v7, v9);
        return v26;
      }

      if (qword_2804A85A8 != -1)
      {
        swift_once();
      }

      v16 = sub_26C6D8898();
      __swift_project_value_buffer(v16, qword_2804AD258);

      v17 = sub_26C6D8878();
      v18 = sub_26C6D8BA8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = a3 & 1;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26 = v21;
        v27[0] = a1;
        *v20 = 136446210;
        v27[1] = a2;
        v28 = v19;
        v22 = sub_26C6D8A18();
        v24 = sub_26C67A77C(v22, v23, &v26);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_26C66B000, v17, v18, "Failed to encode %{public}s into dictionary.", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x26D6A7490](v21, -1, -1);
        MEMORY[0x26D6A7490](v20, -1, -1);
      }

      else
      {
      }

      sub_26C676694();
      swift_allocError();
      *v25 = 1;
    }

    else
    {
      v15 = v27[0];
      sub_26C6D86F8();
    }

    swift_willThrow();
    return sub_26C678418(v7, v9);
  }

  return result;
}

void *sub_26C69E828(void *a1, void *a2, void *a3, void *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v38 = *MEMORY[0x277D85DE8];
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  sub_26C6D86A8();
  swift_allocObject();
  sub_26C6D8698();
  a5();
  v8 = sub_26C6D8688();
  v10 = v9;

  if (!v6)
  {
    v12 = objc_opt_self();
    v13 = sub_26C6D8798();
    v33[0] = 0;
    v14 = [v12 JSONObjectWithData:v13 options:0 error:v33];

    if (v14)
    {
      v15 = v33[0];
      sub_26C6D8C78();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8968, &qword_26C6DBE50);
      if (swift_dynamicCast())
      {
        sub_26C678418(v8, v10);
        return v32;
      }

      if (qword_2804A85A8 != -1)
      {
        swift_once();
      }

      v17 = sub_26C6D8898();
      __swift_project_value_buffer(v17, qword_2804AD258);
      v19 = v34;
      v18 = v35;
      v20 = v36;
      v21 = v37;

      sub_26C67ED2C(v20, v21);

      sub_26C67ED2C(v20, v21);
      v22 = sub_26C6D8878();
      v23 = sub_26C6D8BA8();

      sub_26C678418(v20, v21);
      if (os_log_type_enabled(v22, v23))
      {
        v30 = v19;
        v24 = swift_slowAlloc();
        log = v22;
        v32 = swift_slowAlloc();
        v25 = v32;
        *v24 = 136446210;
        v33[0] = v30;
        v33[1] = v18;
        v33[2] = v20;
        v33[3] = v21;
        v26 = sub_26C6D8A18();
        v28 = sub_26C67A77C(v26, v27, &v32);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_26C66B000, log, v23, "Failed to encode %{public}s into dictionary.", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x26D6A7490](v25, -1, -1);
        MEMORY[0x26D6A7490](v24, -1, -1);
      }

      else
      {

        sub_26C678418(v20, v21);
      }

      sub_26C676694();
      swift_allocError();
      *v29 = 1;
    }

    else
    {
      v16 = v33[0];
      sub_26C6D86F8();
    }

    swift_willThrow();
    return sub_26C678418(v8, v10);
  }

  return result;
}

void *sub_26C69EBA0(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = a1;
  v29 = a2;
  sub_26C6D86A8();
  swift_allocObject();
  sub_26C6D8698();
  a3();
  v6 = sub_26C6D8688();
  v8 = v7;

  if (!v4)
  {
    v10 = objc_opt_self();
    v11 = sub_26C6D8798();
    v27[0] = 0;
    v12 = [v10 JSONObjectWithData:v11 options:0 error:v27];

    if (v12)
    {
      v13 = v27[0];
      sub_26C6D8C78();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8968, &qword_26C6DBE50);
      if (swift_dynamicCast())
      {
        sub_26C678418(v6, v8);
        return v26;
      }

      if (qword_2804A85A8 != -1)
      {
        swift_once();
      }

      v15 = sub_26C6D8898();
      __swift_project_value_buffer(v15, qword_2804AD258);
      v16 = v28;
      v17 = v29;
      sub_26C67ED2C(v28, v29);
      sub_26C67ED2C(v16, v17);
      v18 = sub_26C6D8878();
      v19 = sub_26C6D8BA8();
      sub_26C678418(v16, v17);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26 = v21;
        v27[0] = v16;
        *v20 = 136446210;
        v27[1] = v17;
        v22 = sub_26C6D8A18();
        v24 = sub_26C67A77C(v22, v23, &v26);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_26C66B000, v18, v19, "Failed to encode %{public}s into dictionary.", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x26D6A7490](v21, -1, -1);
        MEMORY[0x26D6A7490](v20, -1, -1);
      }

      else
      {
        sub_26C678418(v16, v17);
      }

      sub_26C676694();
      swift_allocError();
      *v25 = 1;
    }

    else
    {
      v14 = v27[0];
      sub_26C6D86F8();
    }

    swift_willThrow();
    return sub_26C678418(v6, v8);
  }

  return result;
}

unint64_t sub_26C69EF44(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA100;
  v9 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  *(inited + 96) = MEMORY[0x277CC9318];
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  sub_26C67ED2C(a1, a2);
  sub_26C6D8CD8();
  *(inited + 168) = v9;
  *(inited + 144) = a3;
  *(inited + 152) = a4;

  v10 = sub_26C689E88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_26C69F0AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  sub_26C6D8CD8();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  v1 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C6A012C(inited + 32);
  return v1;
}

uint64_t sub_26C69F174@<X0>(_BYTE *a1@<X1>, uint64_t *a2@<X8>, uint64_t a3@<X0>)
{
  result = sub_26C69F6FC(a3);
  if (v3)
  {
    *a1 = result;
  }

  else
  {
    *a2 = result;
    a2[1] = v7;
    a2[2] = v8;
    a2[3] = v9;
  }

  return result;
}

uint64_t sub_26C69F378(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D10, &qword_26C6DC040);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6A0084();
  sub_26C6D8F38();
  v11 = a2;
  v12 = a3;
  sub_26C67ED2C(a2, a3);
  sub_26C686938();
  sub_26C6D8E18();
  sub_26C678418(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_26C69F504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C62755072656570 && a2 == 0xED000079654B6369)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26C6D8E48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26C69F594(uint64_t a1)
{
  v2 = sub_26C6A0084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C69F5D0(uint64_t a1)
{
  v2 = sub_26C6A0084();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26C69F60C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26C6A01E8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_26C69F654()
{
  result = qword_2804A8CE0;
  if (!qword_2804A8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8CE0);
  }

  return result;
}

unint64_t sub_26C69F6A8()
{
  result = qword_2804A8CE8;
  if (!qword_2804A8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8CE8);
  }

  return result;
}

uint64_t sub_26C69F6FC(uint64_t a1)
{
  sub_26C6D8CD8();
  if (!*(a1 + 16) || (v2 = sub_26C689928(v23), (v3 & 1) == 0))
  {
    sub_26C678324(v23);
    goto LABEL_9;
  }

  sub_26C676984(*(a1 + 56) + 32 * v2, v24);
  sub_26C678324(v23);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v7 = sub_26C6D8898();
    __swift_project_value_buffer(v7, qword_2804AD258);

    v8 = sub_26C6D8878();
    v9 = sub_26C6D8BA8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v10 = 136380931;
      *(v10 + 4) = sub_26C67A77C(0x654B63696C627570, 0xE900000000000079, v23);
      *(v10 + 12) = 2082;
      v12 = sub_26C6D89C8();
      v14 = sub_26C67A77C(v12, v13, v23);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_26C66B000, v8, v9, "Unable to load %{private}s from %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v11, -1, -1);
      MEMORY[0x26D6A7490](v10, -1, -1);
    }

    LOBYTE(v23[0]) = 1;
    sub_26C676694();
    swift_willThrowTypedImpl();
    return 1;
  }

  sub_26C6D8CD8();
  if (*(a1 + 16) && (v4 = sub_26C689928(v23), (v5 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v4, v24);
    sub_26C678324(v23);
    if (swift_dynamicCast())
    {
      return 0x654B63696C627570;
    }
  }

  else
  {
    sub_26C678324(v23);
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v15 = sub_26C6D8898();
  __swift_project_value_buffer(v15, qword_2804AD258);

  v16 = sub_26C6D8878();
  v17 = sub_26C6D8BA8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23[0] = v19;
    *v18 = 136380931;
    *(v18 + 4) = sub_26C67A77C(0x6449746567726174, 0xE800000000000000, v23);
    *(v18 + 12) = 2082;
    v20 = sub_26C6D89C8();
    v22 = sub_26C67A77C(v20, v21, v23);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_26C66B000, v16, v17, "Unable to load %{private}s from %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v19, -1, -1);
    MEMORY[0x26D6A7490](v18, -1, -1);
  }

  LOBYTE(v23[0]) = 1;
  sub_26C676694();
  swift_willThrowTypedImpl();
  sub_26C678418(0x654B63696C627570, 0xE900000000000079);
  return 1;
}

uint64_t sub_26C69FB90(uint64_t a1)
{
  v2 = v1;
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v4 = sub_26C6D89A8();
  v24 = 0;
  v5 = [v3 dataWithJSONObject:v4 options:0 error:&v24];

  v6 = v24;
  if (v5)
  {
    v7 = sub_26C6D87A8();
    v9 = v8;

    sub_26C6D8678();
    swift_allocObject();
    sub_26C6D8668();
    sub_26C69FEE0();
    sub_26C6D8658();
    if (!v1)
    {

      sub_26C678418(v7, v9);
      return v25[0];
    }

    sub_26C678418(v7, v9);
  }

  else
  {
    v10 = v6;
    v2 = sub_26C6D86F8();

    swift_willThrow();
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v11 = sub_26C6D8898();
  __swift_project_value_buffer(v11, qword_2804AD258);

  v12 = sub_26C6D8878();
  v13 = sub_26C6D8BA8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = &type metadata for RapportSetupConnectionResponse;
    v25[0] = v15;
    *v14 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8CF0, &qword_26C6DBE58);
    v16 = sub_26C6D8A18();
    v18 = sub_26C67A77C(v16, v17, v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = sub_26C6D89C8();
    v21 = sub_26C67A77C(v19, v20, v25);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_26C66B000, v12, v13, "Unabled to decode %{public}s from %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v15, -1, -1);
    MEMORY[0x26D6A7490](v14, -1, -1);
  }

  v22 = 2;
  LOBYTE(v25[0]) = 2;
  sub_26C676694();
  swift_willThrowTypedImpl();

  return v22;
}

unint64_t sub_26C69FEE0()
{
  result = qword_2804A8CF8;
  if (!qword_2804A8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8CF8);
  }

  return result;
}

unint64_t sub_26C69FF34()
{
  result = qword_2804A8D00;
  if (!qword_2804A8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D00);
  }

  return result;
}

unint64_t sub_26C69FF88()
{
  result = qword_2804A8D08;
  if (!qword_2804A8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D08);
  }

  return result;
}

uint64_t sub_26C69FFEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26C6A0034(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26C6A0084()
{
  result = qword_2804A8D18;
  if (!qword_2804A8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D18);
  }

  return result;
}

unint64_t sub_26C6A00D8()
{
  result = qword_2804A8D20;
  if (!qword_2804A8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D20);
  }

  return result;
}

uint64_t sub_26C6A012C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C6A0194()
{
  result = qword_2804A8D28;
  if (!qword_2804A8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D28);
  }

  return result;
}

void *sub_26C6A01E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D30, &qword_26C6DC048);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6A0084();
  sub_26C6D8F28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_26C686AFC();
    sub_26C6D8DE8();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

unint64_t sub_26C6A0370()
{
  result = qword_2804A8D38;
  if (!qword_2804A8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D38);
  }

  return result;
}

unint64_t sub_26C6A03C8()
{
  result = qword_2804A8D40;
  if (!qword_2804A8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D40);
  }

  return result;
}

unint64_t sub_26C6A0420()
{
  result = qword_2804A8D48;
  if (!qword_2804A8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D48);
  }

  return result;
}

unint64_t SetupServerStateChange.to()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v4 <= 2)
  {
    if (*(v0 + 24))
    {
      if (v4 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26C6DA0F0;
        v19[0] = 0xD000000000000012;
        v19[1] = 0x800000026C6DFC00;
        sub_26C6D8CD8();
        *(inited + 96) = type metadata accessor for WFSetupServerState();
        *(inited + 72) = v2;
        sub_26C69A68C(v2, v1, v3, 1u);
        sub_26C689E88(inited);
        swift_setDeallocating();
        sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
        return 1;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
        v15 = swift_initStackObject();
        *(v15 + 16) = xmmword_26C6DA100;
        sub_26C6D8CD8();
        *(v15 + 96) = type metadata accessor for WFSetupServerState();
        *(v15 + 72) = v2;
        strcpy(v19, "messageSession");
        HIBYTE(v19[1]) = -18;
        v16 = v2;
        sub_26C6D8CD8();
        *(v15 + 168) = sub_26C6779D0(0, &qword_2804A8D50, 0x277D02880);
        *(v15 + 144) = v1;
        v17 = v1;
        sub_26C689E88(v15);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
        swift_arrayDestroy();
        return 2;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_26C6DA100;
      sub_26C6D8CD8();
      *(v9 + 96) = type metadata accessor for WFSetupServerState();
      *(v9 + 72) = v2;
      strcpy(v19, "messageSession");
      HIBYTE(v19[1]) = -18;
      v10 = v2;
      sub_26C6D8CD8();
      *(v9 + 168) = sub_26C6779D0(0, &qword_2804A8D50, 0x277D02880);
      *(v9 + 144) = v1;
      v11 = v1;
      v12 = sub_26C689E88(v9);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
      swift_arrayDestroy();
      result = sub_26C6A1058(v3, 0x4470757465536677, 0xEB00000000617461);
      if (result)
      {
        v13 = result;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19[0] = v12;
        sub_26C6A37DC(v13, sub_26C6A3538, 0, isUniquelyReferenced_nonNull_native, v19);

        return 0;
      }
    }
  }

  else if (*(v0 + 24) > 4u)
  {
    if (v4 == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_26C6DA0F0;
      strcpy(v19, "messageSession");
      HIBYTE(v19[1]) = -18;
      sub_26C6D8CD8();
      *(v8 + 96) = sub_26C6779D0(0, &qword_2804A8D50, 0x277D02880);
      *(v8 + 72) = v2;
      sub_26C69A68C(v2, v1, v3, 5u);
      sub_26C689E88(v8);
      swift_setDeallocating();
      sub_26C677B60(v8 + 32, &qword_2804A86B8, &qword_26C6DA550);
      return 7;
    }

    else if (v3 | v1 | v2)
    {
      if (v2 != 1 || v3 | v1)
      {
        sub_26C689E88(MEMORY[0x277D84F90]);
        return 8;
      }

      else
      {
        sub_26C689E88(MEMORY[0x277D84F90]);
        return 6;
      }
    }

    else
    {
      sub_26C689E88(MEMORY[0x277D84F90]);
      return 3;
    }
  }

  else if (v4 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_26C6DA0F0;
    v19[0] = 0xD000000000000012;
    v19[1] = 0x800000026C6DFC00;
    sub_26C6D8CD8();
    *(v5 + 96) = type metadata accessor for WFSetupServerState();
    *(v5 + 72) = v2;
    sub_26C69A68C(v2, v1, v3, 3u);
    sub_26C689E88(v5);
    swift_setDeallocating();
    sub_26C677B60(v5 + 32, &qword_2804A86B8, &qword_26C6DA550);
    return 4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_26C6DA0F0;
    v19[0] = 0xD000000000000012;
    v19[1] = 0x800000026C6DFC00;
    sub_26C6D8CD8();
    *(v18 + 96) = type metadata accessor for WFSetupServerState();
    *(v18 + 72) = v2;
    sub_26C69A68C(v2, v1, v3, 4u);
    sub_26C689E88(v18);
    swift_setDeallocating();
    sub_26C677B60(v18 + 32, &qword_2804A86B8, &qword_26C6DA550);
    return 5;
  }

  return result;
}

uint64_t SetupServerData.to()()
{
  v1 = *v0;
  v2 = *(v0 + 1) | ((*(v0 + 5) | (v0[7] << 16)) << 32);
  v3 = *(v0 + 8);
  v4 = (v3 >> 60) & 3;
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = (v1 | (v2 << 8));
      v6 = sub_26C689E88(MEMORY[0x277D84F90]);
      v7 = sub_26C6A1058(v5, 0x4470757465536677, 0xEB00000000617461);
      if (v7)
      {
        v8 = v7;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v6;
        sub_26C6A37DC(v8, sub_26C6A3538, 0, isUniquelyReferenced_nonNull_native, &v29);
      }

      return 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C6DA0F0;
      v29 = 0xD000000000000015;
      v30 = 0x800000026C6DFC20;
      sub_26C6D8CD8();
      *(inited + 96) = MEMORY[0x277D839B0];
      *(inited + 72) = v1 & 1;
      sub_26C689E88(inited);
      swift_setDeallocating();
      sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
      return 2;
    }
  }

  else
  {
    v12 = *(v0 + 6);
    v11 = *(v0 + 7);
    v13 = *(v0 + 4);
    v24 = *(v0 + 10);
    v25 = *(v0 + 5);
    v14 = *(v0 + 2);
    v22 = *(v0 + 9);
    v23 = *(v0 + 3);
    v15 = v3 & 0xCFFFFFFFFFFFFFFFLL;
    v16 = v1 | (v2 << 8);
    v17 = *(v0 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_26C6DAAC0;

    v19 = MEMORY[0x277D837D0];
    sub_26C6D8CD8();
    *(v18 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D58, &unk_26C6DC170);
    *(v18 + 72) = v16;
    sub_26C6D8CD8();
    *(v18 + 168) = v19;
    *(v18 + 144) = v17;
    *(v18 + 152) = v14;
    sub_26C6D8CD8();
    *(v18 + 240) = v19;
    *(v18 + 216) = v23;
    *(v18 + 224) = v13;
    sub_26C6D8CD8();
    *(v18 + 312) = v19;
    *(v18 + 288) = v25;
    *(v18 + 296) = v12;
    v29 = 0xD000000000000015;
    v30 = 0x800000026C6DEAE0;
    sub_26C6D8CD8();
    *(v18 + 384) = MEMORY[0x277CC9318];
    *(v18 + 360) = v11;
    *(v18 + 368) = v15;
    sub_26C67ED2C(v11, v15);
    sub_26C689E88(v18);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
    swift_arrayDestroy();
    if (v24)
    {
      sub_26C6D8CD8();
      v28 = v19;
      *&v27 = v22;
      *(&v27 + 1) = v24;
      sub_26C68A024(&v27, v26);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_26C689CC0(v26, &v29, v20);
      sub_26C678324(&v29);
    }

    return 0;
  }
}

uint64_t SetupServerError.to()()
{
  v1 = *v0;
  if (v1)
  {
    if (v1 == 1)
    {
      sub_26C689E88(MEMORY[0x277D84F90]);
      return 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C6DA0F0;
      sub_26C6D8CD8();
      swift_getErrorValue();
      *(inited + 96) = v5;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
      (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
      sub_26C689E88(inited);
      swift_setDeallocating();
      sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
      return 2;
    }
  }

  else
  {
    sub_26C689E88(MEMORY[0x277D84F90]);
    return 0;
  }
}

unint64_t sub_26C6A1058(void *a1, void *a2, void *a3)
{
  v30[15] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v6 = objc_opt_self();
    v30[0] = 0;
    v7 = a1;
    v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:v30];
    v9 = v30[0];
    if (v8)
    {
      v10 = sub_26C6D87A8();
      v12 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C6DA0F0;
      v30[0] = a2;
      v30[1] = a3;

      sub_26C6D8CD8();
      *(inited + 96) = MEMORY[0x277CC9318];
      *(inited + 72) = v10;
      *(inited + 80) = v12;
      sub_26C67ED2C(v10, v12);
      v14 = sub_26C689E88(inited);
      swift_setDeallocating();
      sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);

      sub_26C678418(v10, v12);
      return v14;
    }

    v21 = v9;
    v22 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v23 = sub_26C6D8898();
    __swift_project_value_buffer(v23, qword_2804AD228);

    v17 = sub_26C6D8878();
    v24 = sub_26C6D8BA8();

    if (os_log_type_enabled(v17, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30[0] = v26;
      *v25 = 136446466;
      type metadata accessor for WFSetupData();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D60, &qword_26C6DC4E0);
      v27 = sub_26C6D8A18();
      v29 = sub_26C67A77C(v27, v28, v30);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_26C67A77C(a2, a3, v30);
      _os_log_impl(&dword_26C66B000, v17, v24, "Unable to archive %{public}s for key: %{public}s.", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v26, -1, -1);
      MEMORY[0x26D6A7490](v25, -1, -1);
    }
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v16 = sub_26C6D8898();
    __swift_project_value_buffer(v16, qword_2804AD228);

    v17 = sub_26C6D8878();
    v18 = sub_26C6D8BA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_26C67A77C(a2, a3, v30);
      _os_log_impl(&dword_26C66B000, v17, v18, "Unable to archive nil object for key: %{public}s.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x26D6A7490](v20, -1, -1);
      MEMORY[0x26D6A7490](v19, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_26C6A1490(uint64_t a1, uint64_t a2, unint64_t a3)
{

  sub_26C6D8CD8();
  if (*(a1 + 16) && (v6 = sub_26C689928(v17), (v7 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v6, v18);
    sub_26C678324(v17);
    if (swift_dynamicCast())
    {
      sub_26C6779D0(0, &qword_2804A8768, 0x277CCAAC8);
      type metadata accessor for WFSetupData();
      v13 = sub_26C6D8BC8();
      sub_26C678418(a2, a3);
      return v13;
    }
  }

  else
  {
    sub_26C678324(v17);
  }

  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v8 = sub_26C6D8898();
  __swift_project_value_buffer(v8, qword_2804AD228);

  v9 = sub_26C6D8878();
  v10 = sub_26C6D8BA8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_26C67A77C(a2, a3, v17);
    _os_log_impl(&dword_26C66B000, v9, v10, "No value for key %{public}s when unpacking.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D6A7490](v12, -1, -1);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  return 0;
}

void static SetupServerStateChange.from(_:metaData:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        v5 = 1;
        goto LABEL_36;
      }

      if (a1 != 7)
      {
        if (a1 == 8)
        {
          v5 = 2;
LABEL_36:
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *a3 = v5;
          v8 = 6;
          goto LABEL_82;
        }

        goto LABEL_45;
      }

      strcpy(v74, "messageSession");
      HIBYTE(v74[1]) = -18;
      sub_26C6D8CD8();
      if (*(a2 + 16) && (v27 = sub_26C689928(v75), (v28 & 1) != 0))
      {
        sub_26C676984(*(a2 + 56) + 32 * v27, v76);
        sub_26C678324(v75);
        sub_26C6779D0(0, &qword_2804A8D50, 0x277D02880);
        if (swift_dynamicCast())
        {
          v29 = v74[0];
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *a3 = v29;
          v8 = 5;
          goto LABEL_82;
        }
      }

      else
      {
        sub_26C678324(v75);
      }

      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v67 = sub_26C6D8898();
      __swift_project_value_buffer(v67, qword_2804AD228);

      v32 = sub_26C6D8878();
      v33 = sub_26C6D8BA8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v75[0] = v35;
        *v34 = 136446466;
        v76[0] = 7;
        type metadata accessor for WFSetupServerStateChangeEvent(0);
        v68 = sub_26C6D8A18();
        v70 = sub_26C67A77C(v68, v69, v75);

        *(v34 + 4) = v70;
        *(v34 + 12) = 2082;
        v71 = sub_26C6D89C8();
        v73 = sub_26C67A77C(v71, v72, v75);

        *(v34 + 14) = v73;
        v42 = "Unable to decode: %{public}s with data: %{public}s";
        goto LABEL_80;
      }

LABEL_81:

      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v8 = -1;
      goto LABEL_82;
    }

    if (a1 == 4)
    {
      v74[0] = 0xD000000000000012;
      v74[1] = 0x800000026C6DFC00;
      sub_26C6D8CD8();
      if (*(a2 + 16) && (v24 = sub_26C689928(v75), (v25 & 1) != 0))
      {
        sub_26C676984(*(a2 + 56) + 32 * v24, v76);
        sub_26C678324(v75);
        type metadata accessor for WFSetupServerState();
        if (swift_dynamicCast())
        {
          v26 = v74[0];
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *a3 = v26;
          v8 = 3;
          goto LABEL_82;
        }
      }

      else
      {
        sub_26C678324(v75);
      }

      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v60 = sub_26C6D8898();
      __swift_project_value_buffer(v60, qword_2804AD228);

      v32 = sub_26C6D8878();
      v33 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_81;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v75[0] = v35;
      *v34 = 136446466;
      v51 = 4;
    }

    else
    {
      v74[0] = 0xD000000000000012;
      v74[1] = 0x800000026C6DFC00;
      sub_26C6D8CD8();
      if (*(a2 + 16) && (v9 = sub_26C689928(v75), (v10 & 1) != 0))
      {
        sub_26C676984(*(a2 + 56) + 32 * v9, v76);
        sub_26C678324(v75);
        type metadata accessor for WFSetupServerState();
        if (swift_dynamicCast())
        {
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *a3 = v74[0];
          v8 = 4;
          goto LABEL_82;
        }
      }

      else
      {
        sub_26C678324(v75);
      }

      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v50 = sub_26C6D8898();
      __swift_project_value_buffer(v50, qword_2804AD228);

      v32 = sub_26C6D8878();
      v33 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_81;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v75[0] = v35;
      *v34 = 136446466;
      v51 = 5;
    }

LABEL_74:
    v76[0] = v51;
    type metadata accessor for WFSetupServerStateChangeEvent(0);
    v61 = sub_26C6D8A18();
    v63 = sub_26C67A77C(v61, v62, v75);

    *(v34 + 4) = v63;
    *(v34 + 12) = 2082;
    v64 = sub_26C6D89C8();
    v66 = sub_26C67A77C(v64, v65, v75);

    *(v34 + 14) = v66;
    v42 = "Unable to decode enum sessionStarted: %{public}s with data: %{public}s";
LABEL_80:
    _os_log_impl(&dword_26C66B000, v32, v33, v42, v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v35, -1, -1);
    MEMORY[0x26D6A7490](v34, -1, -1);
    goto LABEL_81;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v74[0] = 0xD000000000000012;
      v74[1] = 0x800000026C6DFC00;
      sub_26C6D8CD8();
      if (*(a2 + 16) && (v11 = sub_26C689928(v75), (v12 & 1) != 0))
      {
        sub_26C676984(*(a2 + 56) + 32 * v11, v76);
        sub_26C678324(v75);
        type metadata accessor for WFSetupServerState();
        if (swift_dynamicCast())
        {
          v13 = v74[0];
          strcpy(v74, "messageSession");
          HIBYTE(v74[1]) = -18;
          sub_26C6D8CD8();
          if (*(a2 + 16) && (v14 = sub_26C689928(v75), (v15 & 1) != 0))
          {
            sub_26C676984(*(a2 + 56) + 32 * v14, v76);
            sub_26C678324(v75);
            sub_26C6779D0(0, &qword_2804A8D50, 0x277D02880);
            if (swift_dynamicCast())
            {
              v16 = v74[0];
              v17 = sub_26C6A1490(a2, 0x4470757465536677, 0xEB00000000617461);
              *a3 = v13;
              *(a3 + 8) = v16;
              *(a3 + 16) = v17;
              *(a3 + 24) = 0;
              return;
            }
          }

          else
          {
            sub_26C678324(v75);
          }
        }
      }

      else
      {
        sub_26C678324(v75);
      }

      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v52 = sub_26C6D8898();
      __swift_project_value_buffer(v52, qword_2804AD228);

      v32 = sub_26C6D8878();
      v33 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_81;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v75[0] = v35;
      *v34 = 136446466;
      v76[0] = 0;
      type metadata accessor for WFSetupServerStateChangeEvent(0);
      v53 = sub_26C6D8A18();
      v55 = sub_26C67A77C(v53, v54, v75);

      *(v34 + 4) = v55;
      *(v34 + 12) = 2082;
      v56 = sub_26C6D89C8();
      v58 = sub_26C67A77C(v56, v57, v75);

      *(v34 + 14) = v58;
      v42 = "Unable to decode enum resumed: %{public}s with data: %{public}s";
      goto LABEL_80;
    }

    if (a1 != 1)
    {
LABEL_45:
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v31 = sub_26C6D8898();
      __swift_project_value_buffer(v31, qword_2804AD228);

      v32 = sub_26C6D8878();
      v33 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_81;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v75[0] = v35;
      *v34 = 136446466;
      v76[0] = a1;
      type metadata accessor for WFSetupServerStateChangeEvent(0);
      v36 = sub_26C6D8A18();
      v38 = sub_26C67A77C(v36, v37, v75);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      v39 = sub_26C6D89C8();
      v41 = sub_26C67A77C(v39, v40, v75);

      *(v34 + 14) = v41;
      v42 = "Unable to decode unknown enum type: %{public}s with data: %{public}s";
      goto LABEL_80;
    }

    v74[0] = 0xD000000000000012;
    v74[1] = 0x800000026C6DFC00;
    sub_26C6D8CD8();
    if (*(a2 + 16) && (v6 = sub_26C689928(v75), (v7 & 1) != 0))
    {
      sub_26C676984(*(a2 + 56) + 32 * v6, v76);
      sub_26C678324(v75);
      type metadata accessor for WFSetupServerState();
      if (swift_dynamicCast())
      {
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *a3 = v74[0];
        v8 = 1;
        goto LABEL_82;
      }
    }

    else
    {
      sub_26C678324(v75);
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v43 = sub_26C6D8898();
    __swift_project_value_buffer(v43, qword_2804AD228);

    v32 = sub_26C6D8878();
    v33 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_81;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v75[0] = v35;
    *v34 = 136446466;
    v76[0] = 1;
    type metadata accessor for WFSetupServerStateChangeEvent(0);
    v44 = sub_26C6D8A18();
    v46 = sub_26C67A77C(v44, v45, v75);

    *(v34 + 4) = v46;
    *(v34 + 12) = 2082;
    v47 = sub_26C6D89C8();
    v49 = sub_26C67A77C(v47, v48, v75);

    *(v34 + 14) = v49;
    v42 = "Unable to decode enum activated: %{public}s with data: %{public}s";
    goto LABEL_80;
  }

  if (a1 == 2)
  {
    v74[0] = 0xD000000000000012;
    v74[1] = 0x800000026C6DFC00;
    sub_26C6D8CD8();
    if (*(a2 + 16) && (v18 = sub_26C689928(v75), (v19 & 1) != 0))
    {
      sub_26C676984(*(a2 + 56) + 32 * v18, v76);
      sub_26C678324(v75);
      type metadata accessor for WFSetupServerState();
      if (swift_dynamicCast())
      {
        v20 = v74[0];
        strcpy(v74, "messageSession");
        HIBYTE(v74[1]) = -18;
        sub_26C6D8CD8();
        if (*(a2 + 16) && (v21 = sub_26C689928(v75), (v22 & 1) != 0))
        {
          sub_26C676984(*(a2 + 56) + 32 * v21, v76);
          sub_26C678324(v75);
          sub_26C6779D0(0, &qword_2804A8D50, 0x277D02880);
          if (swift_dynamicCast())
          {
            v23 = v74[0];
            *a3 = v20;
            *(a3 + 8) = v23;
            *(a3 + 16) = 0;
            v8 = 2;
            goto LABEL_82;
          }
        }

        else
        {
          sub_26C678324(v75);
        }
      }
    }

    else
    {
      sub_26C678324(v75);
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v59 = sub_26C6D8898();
    __swift_project_value_buffer(v59, qword_2804AD228);

    v32 = sub_26C6D8878();
    v33 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_81;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v75[0] = v35;
    *v34 = 136446466;
    v51 = 2;
    goto LABEL_74;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v8 = 6;
LABEL_82:
  *(a3 + 24) = v8;
}

void static SetupServerData.from(_:metaData:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    sub_26C6D8CD8();
    if (*(a2 + 16) && (v22 = sub_26C689928(v52), (v23 & 1) != 0))
    {
      sub_26C676984(*(a2 + 56) + 32 * v22, v53);
      sub_26C678324(v52);
      if (swift_dynamicCast())
      {
        *a3 = 21;
        v21 = 0x2000000000000000;
        goto LABEL_50;
      }
    }

    else
    {
      sub_26C678324(v52);
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v37 = sub_26C6D8898();
    __swift_project_value_buffer(v37, qword_2804AD228);

    v26 = sub_26C6D8878();
    v27 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_49;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52[0] = v29;
    *v28 = 136446466;
    v53[0] = 2;
    type metadata accessor for WFSetupServerData(0);
    v38 = sub_26C6D8A18();
    v40 = sub_26C67A77C(v38, v39, v52);

    *(v28 + 4) = v40;
    *(v28 + 12) = 2082;
    v41 = sub_26C6D89C8();
    v43 = sub_26C67A77C(v41, v42, v52);

    *(v28 + 14) = v43;
    v36 = "Unable to decode WFSetupServerDataWFEnrollmentsSaveResult: %{public}s with data: %{public}s";
    goto LABEL_48;
  }

  if (a1 == 1)
  {
    v20 = sub_26C6A1490(a2, 0x4470757465536677, 0xEB00000000617461);
    if (!v20)
    {
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v45 = sub_26C6D8898();
      __swift_project_value_buffer(v45, qword_2804AD228);

      v26 = sub_26C6D8878();
      v27 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_49;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v52[0] = v29;
      *v28 = 136446467;
      v53[0] = 1;
LABEL_47:
      type metadata accessor for WFSetupServerData(0);
      v46 = sub_26C6D8A18();
      v48 = sub_26C67A77C(v46, v47, v52);

      *(v28 + 4) = v48;
      *(v28 + 12) = 2081;
      v49 = sub_26C6D89C8();
      v51 = sub_26C67A77C(v49, v50, v52);

      *(v28 + 14) = v51;
      v36 = "Unable to decode WFSetupServerData: %{public}s with data: %{private}s";
LABEL_48:
      _os_log_impl(&dword_26C66B000, v26, v27, v36, v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v29, -1, -1);
      MEMORY[0x26D6A7490](v28, -1, -1);
LABEL_49:

      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v21 = 0x3000000000000000;
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      goto LABEL_50;
    }

    *a3 = v20;
    v21 = 0x1000000000000000;
LABEL_50:
    *(a3 + 64) = v21;
    return;
  }

  if (a1)
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v25 = sub_26C6D8898();
    __swift_project_value_buffer(v25, qword_2804AD228);

    v26 = sub_26C6D8878();
    v27 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_49;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52[0] = v29;
    *v28 = 136446467;
    v53[0] = a1;
    type metadata accessor for WFSetupServerData(0);
    v30 = sub_26C6D8A18();
    v32 = sub_26C67A77C(v30, v31, v52);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2081;
    v33 = sub_26C6D89C8();
    v35 = sub_26C67A77C(v33, v34, v52);

    *(v28 + 14) = v35;
    v36 = "Unable to decode unknown WFSetupServerData: %{public}s with data: %{private}s";
    goto LABEL_48;
  }

  sub_26C6D8CD8();
  if (!*(a2 + 16) || (v5 = sub_26C689928(v52), (v6 & 1) == 0))
  {
    sub_26C678324(v52);
    goto LABEL_39;
  }

  sub_26C676984(*(a2 + 56) + 32 * v5, v53);
  sub_26C678324(v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D58, &unk_26C6DC170);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v44 = sub_26C6D8898();
    __swift_project_value_buffer(v44, qword_2804AD228);

    v26 = sub_26C6D8878();
    v27 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_49;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52[0] = v29;
    *v28 = 136446467;
    v53[0] = 0;
    goto LABEL_47;
  }

  sub_26C6D8CD8();
  if (!*(a2 + 16) || (v7 = sub_26C689928(v52), (v8 & 1) == 0))
  {
    sub_26C678324(v52);
    goto LABEL_52;
  }

  sub_26C676984(*(a2 + 56) + 32 * v7, v53);
  sub_26C678324(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:

    goto LABEL_39;
  }

  sub_26C6D8CD8();
  if (!*(a2 + 16) || (v9 = sub_26C689928(v52), (v10 & 1) == 0))
  {
    sub_26C678324(v52);
    goto LABEL_54;
  }

  sub_26C676984(*(a2 + 56) + 32 * v9, v53);
  sub_26C678324(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_54:

    goto LABEL_52;
  }

  sub_26C6D8CD8();
  if (!*(a2 + 16) || (v11 = sub_26C689928(v52), (v12 & 1) == 0))
  {
    sub_26C678324(v52);
    goto LABEL_56;
  }

  sub_26C676984(*(a2 + 56) + 32 * v11, v53);
  sub_26C678324(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:

    goto LABEL_54;
  }

  sub_26C6D8CD8();
  if (!*(a2 + 16) || (v13 = sub_26C689928(v52), (v14 & 1) == 0))
  {
    sub_26C678324(v52);
    goto LABEL_58;
  }

  sub_26C676984(*(a2 + 56) + 32 * v13, v53);
  sub_26C678324(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_58:

    goto LABEL_56;
  }

  v53[0] = 0xD000000000000015;
  v53[1] = 0x800000026C6DEAE0;
  sub_26C6D8CD8();
  if (*(a2 + 16) && (v15 = sub_26C689928(v52), (v16 & 1) != 0))
  {
    sub_26C676984(*(a2 + 56) + 32 * v15, v53);
    sub_26C678324(v52);
    v17 = swift_dynamicCast();
    v18 = 0xD000000000000015;
    v19 = 0x800000026C6DEAE0;
    if (!v17)
    {
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    sub_26C678324(v52);
    v18 = 0;
    v19 = 0;
  }

  strcpy(a3, "languagelocale");
  *(a3 + 15) = 0;
  *(a3 + 16) = 0xE600000000000000;
  *(a3 + 24) = 0x6C65646F6DLL;
  *(a3 + 32) = 0xE500000000000000;
  *(a3 + 40) = 0x6C43656369766564;
  *(a3 + 48) = 0xEB00000000737361;
  *(a3 + 56) = 0xD000000000000015;
  *(a3 + 64) = 0x800000026C6DEAE0 & 0xCFFFFFFFFFFFFFFFLL;
  *(a3 + 72) = v18;
  *(a3 + 80) = v19;
}

void static SetupServerError.from(_:metaData:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a1;
  if (a1 >= 2)
  {
    if (a1 == 2)
    {
      sub_26C6D8CD8();
      if (*(a2 + 16) && (v6 = sub_26C689928(v27), (v7 & 1) != 0))
      {
        sub_26C676984(*(a2 + 56) + 32 * v6, v28);
        sub_26C678324(v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
        if (swift_dynamicCast())
        {
          v3 = 0x726F727265;
          goto LABEL_18;
        }
      }

      else
      {
        sub_26C678324(v27);
      }

      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v19 = sub_26C6D8898();
      __swift_project_value_buffer(v19, qword_2804AD228);

      v9 = sub_26C6D8878();
      v20 = sub_26C6D8BA8();

      if (os_log_type_enabled(v9, v20))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v27[0] = v12;
        *v11 = 136446466;
        v3 = 2;
        v28[0] = 2;
        type metadata accessor for WFSetupServerError(0);
        v21 = sub_26C6D8A18();
        v23 = sub_26C67A77C(v21, v22, v27);

        *(v11 + 4) = v23;
        *(v11 + 12) = 2082;
        v24 = sub_26C6D89C8();
        v26 = sub_26C67A77C(v24, v25, v27);

        *(v11 + 14) = v26;
        _os_log_impl(&dword_26C66B000, v9, v20, "Unable to decode WFSetupServerError: %{public}s with data: %{public}s", v11, 0x16u);
        goto LABEL_16;
      }
    }

    else
    {
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v8 = sub_26C6D8898();
      __swift_project_value_buffer(v8, qword_2804AD228);

      v9 = sub_26C6D8878();
      v10 = sub_26C6D8BA8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v27[0] = v12;
        *v11 = 136446466;
        v28[0] = v3;
        type metadata accessor for WFSetupServerError(0);
        v13 = sub_26C6D8A18();
        v15 = sub_26C67A77C(v13, v14, v27);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2082;
        v16 = sub_26C6D89C8();
        v18 = sub_26C67A77C(v16, v17, v27);

        *(v11 + 14) = v18;
        _os_log_impl(&dword_26C66B000, v9, v10, "Unable to decode unknown WFSetupServerError type: %{public}s with data: %{public}s", v11, 0x16u);
        v3 = 2;
LABEL_16:
        swift_arrayDestroy();
        MEMORY[0x26D6A7490](v12, -1, -1);
        MEMORY[0x26D6A7490](v11, -1, -1);

        goto LABEL_18;
      }
    }

    v3 = 2;
  }

LABEL_18:
  *a3 = v3;
}

uint64_t sub_26C6A3538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26C68ADDC(a1, a2);

  return sub_26C676984(a1 + 40, a2 + 40);
}

_OWORD *sub_26C6A357C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_26C68ADDC(*(v3 + 48) + 40 * v13, &v17);
    sub_26C676984(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = sub_26C68A024(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return sub_26C677B60(&v17, &qword_2804A8D68, qword_26C6DC4E8);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26C6A3704(uint64_t a1)
{
  v7[0] = 0x726F727245;
  v7[1] = 0xE500000000000000;
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v2 = sub_26C689928(v6), (v3 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v2, v7);
    sub_26C678324(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_26C678324(v6);
  }

  return 0;
}

uint64_t sub_26C6A37DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v41 = a1;
  v42 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v43 = v8;
  v44 = 0;
  v45 = v11 & v9;
  v46 = a2;
  v47 = a3;

  sub_26C6A357C(&v37);
  if (!*(&v38 + 1))
  {
LABEL_18:
    sub_26C6A3D74(v41);
  }

  while (1)
  {
    v34 = v37;
    v35 = v38;
    v36 = v39;
    sub_26C68A024(&v40, v33);
    v15 = *a5;
    v16 = sub_26C689928(&v34);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v15 + 24) < v21)
    {
      sub_26C6CE658(v21, a4 & 1);
      v16 = sub_26C689928(&v34);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v30 = v16;
    sub_26C6CEE70();
    v16 = v30;
    if (v22)
    {
LABEL_6:
      v12 = *a5;
      v13 = 32 * v16;
      sub_26C676984(*(*a5 + 56) + 32 * v16, v32);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      sub_26C678324(&v34);
      v14 = *(v12 + 56);
      __swift_destroy_boxed_opaque_existential_1Tm((v14 + v13));
      sub_26C68A024(v32, (v14 + v13));
      goto LABEL_7;
    }

LABEL_14:
    v24 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v25 = v24[6] + 40 * v16;
    v26 = v34;
    v27 = v35;
    *(v25 + 32) = v36;
    *v25 = v26;
    *(v25 + 16) = v27;
    sub_26C68A024(v33, (v24[7] + 32 * v16));
    v28 = v24[2];
    v20 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v24[2] = v29;
LABEL_7:
    sub_26C6A357C(&v37);
    a4 = 1;
    if (!*(&v38 + 1))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_26C6D8E78();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing22SetupServerStateChangeO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 5)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26C6A3AA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 25))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 24);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C6A3AE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C6A3B30(uint64_t result, unsigned int a2)
{
  v2 = a2 - 6;
  if (a2 >= 6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 6;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26C6A3B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 88))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 64) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_26C6A3BD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 72) = 0;
      *(result + 80) = 0;
      *(result + 64) = 0x3000000000000000;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing16SetupServerErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26C6A3C94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C6A3CE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_26C6A3D44(void *result, int a2)
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

uint64_t sub_26C6A3DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26C676B2C;

  return v11(a1, a2, a3, a4);
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing19SharingServiceEventO5IssueO(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 4)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing19SharingServiceEventO(uint64_t a1)
{
  if ((*(a1 + 56) & 7u) <= 4)
  {
    return *(a1 + 56) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SharingServiceAgentError(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFFFF) >> 24 == 255)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    if ((a2 + 0xFFFFFF) >> 24)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      return v3;
    }

    if (v3 == 2)
    {
      v3 = *(a1 + 3);
      if (!*(a1 + 3))
      {
        return v3;
      }
    }

    else
    {
      v3 = *(a1 + 3);
      if (!*(a1 + 3))
      {
        return v3;
      }
    }

    return (*a1 | (*(a1 + 2) << 16) | (v3 << 24)) - 0xFFFFFF;
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for SharingServiceAgentError(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFFFF) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 0xFFFFFF) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v4)
    {
      v5 = ((a2 - 1) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else if (v4)
  {
    if (v4 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

uint64_t sub_26C6A40E0(unsigned __int16 *a1)
{
  if (*(a1 + 2))
  {
    return (*a1 | (*(a1 + 2) << 16)) - 0xFFFF;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C6A4104(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = ((a2 - 1) >> 16) + 1;
  }

  else
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing20SharingServiceActionO(uint64_t a1)
{
  if ((*(a1 + 56) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 56) & 7;
  }
}

uint64_t sub_26C6A4154(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C6A4190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C6A41E0(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 56) = a2;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26C6A4230(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C6A426C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_26C6A42B8(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26C6A4304(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_26C6A434C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C6A439C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26C6D8C98();
  if (result == 1 << *(a1 + 32))
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v5 = sub_26C6A4510(&v8, result, *(a1 + 36), 0, a1);
    v6 = v8;
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v6;

    sub_26C67ED2C(v6, *(&v6 + 1));

    sub_26C67ED2C(v6, *(&v6 + 1));

    sub_26C678418(v6, *(&v6 + 1));

    return sub_26C678418(v6, *(&v6 + 1));
  }

  return result;
}

uint64_t sub_26C6A44D0@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  result = sub_26C6A45B4(a3);
  if (v3)
  {
    *a1 = result;
  }

  else
  {
    *a2 = result;
    *(a2 + 8) = v7;
  }

  return result;
}

_OWORD *sub_26C6A4510(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 16 * a2);
    *result = v6;

    sub_26C67ED2C(v6, *(&v6 + 1));
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26C6A45B4(uint64_t a1)
{
  v2 = sub_26C6CFEFC(a1);
  if (!v2)
  {
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v6 = sub_26C6D8898();
    __swift_project_value_buffer(v6, qword_2804AD258);

    v7 = sub_26C6D8878();
    v8 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_28;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v57 = v10;
    *v9 = 136315138;
    v11 = sub_26C6D89C8();
    v13 = sub_26C67A77C(v11, v12, &v57);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Failed to retrieve anisette data dict from request: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    v14 = v9;
    goto LABEL_26;
  }

  v3 = v2;
  sub_26C6A439C(v2, &v57);
  v4 = v58;
  if (v58)
  {
    v5 = v57;
    sub_26C678418(v59, v60);
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  if (sub_26C6CC7EC(v5, v4) == 5)
  {
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v15 = sub_26C6D8898();
    __swift_project_value_buffer(v15, qword_2804AD258);

    v7 = sub_26C6D8878();
    v16 = sub_26C6D8BA8();

    if (os_log_type_enabled(v7, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v57 = v18;
      *v17 = 136315138;
      v19 = sub_26C6D89C8();
      v21 = v20;

      v22 = sub_26C67A77C(v19, v21, &v57);

      *(v17 + 4) = v22;
      v23 = "Failed to retrieve anisette service id from: %s";
LABEL_25:
      _os_log_impl(&dword_26C66B000, v7, v16, v23, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x26D6A7490](v18, -1, -1);
      v14 = v17;
LABEL_26:
      MEMORY[0x26D6A7490](v14, -1, -1);
LABEL_28:

      LOBYTE(v57) = 1;
      sub_26C676694();
      swift_willThrowTypedImpl();
      return 1;
    }

    goto LABEL_27;
  }

  sub_26C6A439C(v3, &v57);
  if (!v58)
  {
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v40 = sub_26C6D8898();
    __swift_project_value_buffer(v40, qword_2804AD258);

    v7 = sub_26C6D8878();
    v16 = sub_26C6D8BA8();

    if (os_log_type_enabled(v7, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v57 = v18;
      *v17 = 136315138;
      v41 = sub_26C6D89C8();
      v43 = v42;

      v44 = sub_26C67A77C(v41, v43, &v57);

      *(v17 + 4) = v44;
      v23 = "Failed to retrieve anisette request data blob from: %s";
      goto LABEL_25;
    }

LABEL_27:

    goto LABEL_28;
  }

  v24 = v59;
  v25 = v60;

  sub_26C6783CC();
  type metadata accessor for AnisetteRequest();
  v26 = sub_26C6D8BC8();
  if (v1)
  {
LABEL_16:
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v27 = sub_26C6D8898();
    __swift_project_value_buffer(v27, qword_2804AD258);
    sub_26C67ED2C(v24, v25);
    v28 = v1;
    v29 = sub_26C6D8878();
    v30 = sub_26C6D8BA8();
    sub_26C678418(v24, v25);

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v57 = v32;
      *v31 = 136315394;
      v33 = sub_26C6D8788();
      v35 = sub_26C67A77C(v33, v34, &v57);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v61 = v1;
      v36 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v37 = sub_26C6D8A18();
      v39 = sub_26C67A77C(v37, v38, &v57);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_26C66B000, v29, v30, "Failed to unarchive anisette request from: %s with error: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v32, -1, -1);
      MEMORY[0x26D6A7490](v31, -1, -1);
    }

    LOBYTE(v57) = 1;
    sub_26C676694();
    swift_willThrowTypedImpl();

    sub_26C678418(v24, v25);
    return 1;
  }

  if (!v26)
  {
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v47 = sub_26C6D8898();
    __swift_project_value_buffer(v47, qword_2804AD258);
    sub_26C67ED2C(v24, v25);
    v48 = sub_26C6D8878();
    v49 = sub_26C6D8BA8();
    sub_26C678418(v24, v25);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v57 = v51;
      *v50 = 136315138;
      v52 = sub_26C6D8788();
      v54 = sub_26C67A77C(v52, v53, &v57);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_26C66B000, v48, v49, "Failed to unarchive anisette request from: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x26D6A7490](v51, -1, -1);
      MEMORY[0x26D6A7490](v50, -1, -1);
    }

    sub_26C676694();
    v55 = swift_allocError();
    *v56 = 1;
    swift_willThrow();
    v1 = v55;
    goto LABEL_16;
  }

  v46 = v26;
  sub_26C678418(v24, v25);
  return v46;
}

uint64_t sub_26C6A4DB4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_26C6A4E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *, uint64_t *))
{
  v6 = a2;
  v7 = a1;
  v5 = a3;
  return a4(&v7, &v6, &v5);
}

uint64_t sub_26C6A4ED8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_26C6D89B8();
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a4)
  {
LABEL_3:
    v4 = sub_26C6D89B8();
  }

LABEL_4:

  v8 = a2;
  v6(a2, v7, v4);
}

uint64_t sub_26C6A4FBC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = sub_26C6D89B8();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_26C6D89B8();
  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v5(v6, v7, sub_26C69A2D4, v9);
}

void sub_26C6A50D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = sub_26C6D86E8();
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
    a2 = sub_26C6D89A8();
  }

  if (a3)
  {
    v8 = sub_26C6D89A8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, a2);
}

uint64_t sub_26C6A51B4(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DB8, &qword_26C6DCAA0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = v34 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DC0, &qword_26C6DCAA8) - 8;
  v5 = MEMORY[0x28223BE20](v37);
  v39 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = v34 - v7;
  v35 = sub_26C6D8BD8();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C6D8C08();
  MEMORY[0x28223BE20](v11);
  v12 = sub_26C6D8978();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_26C6A9BB8();
  v34[1] = "v20@?0I8@NSString12";
  v34[2] = v13;
  sub_26C6D8968();
  v43 = MEMORY[0x277D84F90];
  sub_26C6A9C04(&qword_2804A8720, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8728, &qword_26C6DA580);
  sub_26C677B18(&qword_2804A8730, &qword_2804A8728, &qword_26C6DA580, MEMORY[0x277D83970]);
  sub_26C6D8C88();
  (*(v8 + 104))(v10, *MEMORY[0x277D85268], v35);
  *(v1 + 16) = sub_26C6D8C18();
  v15 = v37;
  v14 = v38;
  v17 = v40;
  v16 = v41;
  (*(v40 + 104))(v38, *MEMORY[0x277D85778], v41);
  v18 = v36;
  sub_26C6D8B18();
  (*(v17 + 8))(v14, v16);
  v19 = v39;
  sub_26C6A9C4C(v18, v39);
  v20 = *(v15 + 56);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DC8, &unk_26C6DCAB0);
  *(v2 + 64) = v21;
  *(v2 + 72) = sub_26C677B18(&qword_2804A8DD0, &qword_2804A8DC8, &unk_26C6DCAB0, &protocol conformance descriptor for AsyncStream<A>);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 40));
  v23 = *(v21 - 8);
  (*(v23 + 32))(boxed_opaque_existential_1, v19, v21);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  v25 = *(v24 - 8);
  (*(v25 + 8))(v19 + v20, v24);
  sub_26C6A9C4C(v18, v19);
  (*(v25 + 32))(v2 + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v19 + *(v15 + 56), v24);
  (*(v23 + 8))(v19, v21);
  v26 = [objc_allocWithZone(MEMORY[0x277D54C48]) init];
  v27 = v42;
  v28 = sub_26C6D87F8();
  [v26 setIdentifier_];

  *(v2 + 24) = v26;
  v29 = objc_allocWithZone(MEMORY[0x277D54CE8]);
  v30 = v26;
  v31 = [v29 init];
  *(v2 + 32) = v31;
  [v31 setDispatchQueue_];
  [*(v2 + 32) setServiceIdentifier_];
  [*(v2 + 32) setSessionFlags_];
  [*(v2 + 32) setPeerDevice_];

  v32 = sub_26C6D8838();
  (*(*(v32 - 8) + 8))(v27, v32);
  sub_26C677B60(v18, &qword_2804A8DC0, &qword_26C6DCAA8);
  return v2;
}

uint64_t sub_26C6A57FC()
{
  v1 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD228);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_26C67A77C(0x74696E696564, 0xE600000000000000, &v10);
    _os_log_impl(&dword_26C66B000, v3, v4, "Running SFSessionAgent::%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 40));
  v7 = OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  return v1;
}

uint64_t sub_26C6A59A8()
{
  sub_26C6A57FC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SFSessionAgent(uint64_t a1)
{
  result = qword_2804A8D78;
  if (!qword_2804A8D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26C6A5A54(uint64_t a1)
{
  sub_26C6A6CD0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26C6A5B00()
{
  type metadata accessor for SFSessionAgent(0);
  sub_26C6A9C04(&qword_2804A8D90, type metadata accessor for SFSessionAgent, &unk_26C6DCA10);
  v2 = sub_26C6D8AD8();
  *(v0 + 144) = v2;
  *(v0 + 152) = v1;

  return MEMORY[0x2822009F8](sub_26C6A5BB4, v2, v1);
}

uint64_t sub_26C6A5BB4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D54C30]) init];
  v0[20] = v1;
  v0[2] = v0;
  v0[3] = sub_26C6A5CE8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F0, &qword_26C6DA3C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C6A4DB4;
  v0[13] = &block_descriptor_29;
  v0[14] = v2;
  [v1 reenableProxCardType:36 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C6A5CE8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  v3 = *(v1 + 152);
  v4 = *(v1 + 144);
  if (v2)
  {
    v5 = sub_26C6A5E7C;
  }

  else
  {
    v5 = sub_26C6A5E18;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26C6A5E18()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26C6A5E7C()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_26C6A5EEC()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  swift_weakInit();
  v16 = sub_26C6A9930;
  v17 = v2;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_26C6AABE4;
  v15 = &block_descriptor_46;
  v3 = _Block_copy(&v12);

  [v1 setErrorHandler_];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v16 = sub_26C6A9968;
  v17 = v4;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_26C670B0C;
  v15 = &block_descriptor_50;
  v5 = _Block_copy(&v12);

  [v1 setInvalidationHandler_];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v16 = sub_26C6A9970;
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_26C670B0C;
  v15 = &block_descriptor_54;
  v7 = _Block_copy(&v12);

  [v1 setInterruptionHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v16 = sub_26C6A9978;
  v17 = v8;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_26C6A81B4;
  v15 = &block_descriptor_58;
  v9 = _Block_copy(&v12);

  [v1 setShowPINHandlerEx_];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v16 = sub_26C6A9980;
  v17 = v10;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_26C6AABE4;
  v15 = &block_descriptor_62;
  v11 = _Block_copy(&v12);

  [v1 setPairSetupCompletionHandler_];
  _Block_release(v11);
}

void sub_26C6A623C()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  swift_weakInit();
  v9 = sub_26C6A9844;
  v10 = v2;
  v5 = MEMORY[0x277D85DD0];
  v6 = 1107296256;
  v7 = sub_26C6A9560;
  v8 = &block_descriptor_34;
  v3 = _Block_copy(&v5);

  [v1 setReceivedObjectHandler_];
  _Block_release(v3);
  v9 = sub_26C675DD4;
  v10 = 0;
  v5 = MEMORY[0x277D85DD0];
  v6 = 1107296256;
  v7 = sub_26C675FCC;
  v8 = &block_descriptor_37;
  v4 = _Block_copy(&v5);
  [v1 setReceivedRequestHandler_];
  _Block_release(v4);
}

id sub_26C6A6390()
{
  v1 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD228);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_26C67A77C(0x6164696C61766E69, 0xEC00000029286574, &v9);
    _os_log_impl(&dword_26C66B000, v3, v4, "Running SFSessionAgent::%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  v7 = *(v1 + 32);
  [v7 setErrorHandler_];
  [v7 setInvalidationHandler_];
  [v7 setInterruptionHandler_];
  [v7 setShowPINHandlerEx_];
  [v7 setPairSetupCompletionHandler_];
  [v7 setReceivedObjectHandler_];

  return [v7 invalidate];
}

uint64_t sub_26C6A6570(uint64_t a1)
{
  sub_26C6A96B8(a1, v36);
  if (v39)
  {
    sub_26C676744(v36, aBlock);
    v3 = *(v1 + 32);
    v4 = v30;
    v5 = v31;
    __swift_project_boxed_opaque_existential_1(aBlock, v30);
    v6 = (*(v5 + 3))(v4, v5);
    v7 = v30;
    v8 = v31;
    __swift_project_boxed_opaque_existential_1(aBlock, v30);
    v9 = (*(v8 + 4))(v7, v8);
    if (v2)
    {
      v10 = (v9 >> 8) & 1;
      LOWORD(v33[0]) = v9 & 0x1FF;
      v11 = v9;
      sub_26C6A9714();
      swift_willThrowTypedImpl();
      __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
      return v11 | (v10 << 8);
    }

    v19 = sub_26C6D89A8();

    [v3 sendWithFlags:v6 object:v19];

    v20 = aBlock;
  }

  else
  {
    v13 = v37;
    v14 = v38;
    sub_26C676744(v36, v33);
    v28 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    swift_getDynamicType();
    (*(v35 + 8))();
    v15 = sub_26C6D89E8();

    v16 = v34;
    v17 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    if ((*(v17 + 16))(v16, v17))
    {
      v18 = sub_26C6D89A8();
    }

    else
    {
      v18 = 0;
    }

    v21 = v34;
    v22 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    (*(v22 + 24))(v21, v22);
    v23 = sub_26C6D89A8();

    if (v13)
    {
      v24 = swift_allocObject();
      *(v24 + 16) = v13;
      *(v24 + 24) = v14;
      v25 = sub_26C6A97E4;
    }

    else
    {
      v25 = nullsub_1;
      v24 = 0;
    }

    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v24;
    v31 = sub_26C6A97A0;
    v32 = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26C6A4ED8;
    v30 = &block_descriptor_23;
    v27 = _Block_copy(aBlock);
    sub_26C676954(v13, v14);

    [v28 sendRequestID:v15 options:v18 request:v23 responseHandler:v27];
    _Block_release(v27);

    sub_26C676904(v13, v14);
    v20 = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

void sub_26C6A6934(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD240);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446210;
    v11 = (*(a2 + 8))(a1, a2);
    v13 = sub_26C67A77C(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Registering to receive request: %{public}s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA100;
  v22 = 0x746365726964;
  v23 = 0xE600000000000000;
  sub_26C6D8CD8();
  v15 = MEMORY[0x277D839B0];
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  v22 = 0xD000000000000010;
  v23 = 0x800000026C6DEEB0;
  sub_26C6D8CD8();
  *(inited + 168) = v15;
  *(inited + 144) = 1;
  sub_26C689E88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
  swift_arrayDestroy();
  v16 = *(v3 + 32);
  (*(a2 + 8))(a1, a2);
  v17 = sub_26C6D89E8();

  v18 = sub_26C6D89A8();

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v19;
  v26 = sub_26C6A965C;
  v27 = v20;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_26C6A4FBC;
  v25 = &block_descriptor_1;
  v21 = _Block_copy(&v22);

  [v16 registerRequestID:v17 options:v18 handler:v21];
  _Block_release(v21);
}

void sub_26C6A6CD0()
{
  if (!qword_2804A8D88)
  {
    v0 = sub_26C6D8B48();
    if (!v1)
    {
      atomic_store(v0, &qword_2804A8D88);
    }
  }
}

uint64_t sub_26C6A6D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  v49 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v48 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA0, &qword_26C6DCA60);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v46 = &v44 - v18;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v19 = sub_26C6D8898();
  __swift_project_value_buffer(v19, qword_2804AD240);

  v20 = sub_26C6D8878();
  v21 = sub_26C6D8BB8();

  v22 = os_log_type_enabled(v20, v21);
  v23 = a2;
  v47 = v17;
  if (v22)
  {
    v24 = swift_slowAlloc();
    v45 = v12;
    v25 = v24;
    v26 = swift_slowAlloc();
    v51[0] = v26;
    *v25 = 136446466;
    v27 = (*(a6 + 8))(a5, a6);
    v29 = sub_26C67A77C(v27, v28, v51);
    v44 = a3;
    v30 = a4;
    v31 = v29;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2082;
    v32 = sub_26C6D89C8();
    v34 = sub_26C67A77C(v32, v33, v51);

    *(v25 + 14) = v34;
    a4 = v30;
    a3 = v44;
    _os_log_impl(&dword_26C66B000, v20, v21, "Request %{public}s invoked with request: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v26, -1, -1);
    v35 = v25;
    v12 = v45;
    MEMORY[0x26D6A7490](v35, -1, -1);
  }

  v36 = *(a6 + 32);
  v54[3] = a5;
  v54[4] = a6;
  __swift_allocate_boxed_opaque_existential_1(v54);
  v36(v23, v53, a5, a6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v38 = v49;
    v39 = v48;
    (*(v49 + 16))(v48, Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v12);

    sub_26C67749C(v54, v51);
    v51[5] = a3;
    v51[6] = a4;
    v52 = 3;

    v40 = v46;
    sub_26C6D8B28();
    (*(v38 + 8))(v39, v12);
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v40 = v46;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
  (*(*(v42 - 8) + 56))(v40, v41, 1, v42);
  sub_26C677B60(v40, &qword_2804A8DA0, &qword_26C6DCA60);
  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

uint64_t sub_26C6A73D8(uint64_t a1)
{
  result = sub_26C6A9C04(&qword_2804A8D90, type metadata accessor for SFSessionAgent, &unk_26C6DCA10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26C6A7430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA0, &qword_26C6DCA60);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6A7578, 0, 0);
}

uint64_t sub_26C6A7578()
{
  if (*(v0 + 128))
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v2 = *(v0 + 128);
      (*(*(v0 + 168) + 16))(*(v0 + 176), Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, *(v0 + 160));
      v3 = v2;

      swift_beginAccess();
      v4 = swift_weakLoadStrong();
      *(v0 + 192) = v4;
      if (v4)
      {
        type metadata accessor for SFSessionAgent(0);
        sub_26C6A9C04(&qword_2804A8D90, type metadata accessor for SFSessionAgent, &unk_26C6DCA10);
        v6 = sub_26C6D8AD8();

        return MEMORY[0x2822009F8](sub_26C6A77D8, v6, v5);
      }

      v8 = *(v0 + 176);
      v9 = *(v0 + 160);
      v10 = *(v0 + 168);
      v11 = *(v0 + 128) | 0x8000000000000000;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v11;
      *(v0 + 72) = 4;
      sub_26C6D8B28();
      (*(v10 + 8))(v8, v9);
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v12 = *(v0 + 184);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
    (*(*(v13 - 8) + 56))(v12, v7, 1, v13);
    sub_26C677B60(v12, &qword_2804A8DA0, &qword_26C6DCA60);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_26C6A77D8()
{
  v1 = *(*(v0 + 192) + 32);
  *(v0 + 200) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_26C6A7850, 0, 0);
}

uint64_t sub_26C6A7850()
{
  v1 = *(v0 + 200);
  v2 = [v1 identifier];

  if (v2)
  {
    sub_26C6D8818();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = sub_26C6D8838();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v5, v3, 1, v6);
  sub_26C6767B0(v5, v4);
  v8 = (*(v7 + 48))(v4, 1, v6);
  v9 = *(v0 + 152);
  if (v8 == 1)
  {
    sub_26C677B60(*(v0 + 152), &qword_2804A86E0, &qword_26C6DA3B8);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = sub_26C6D87D8();
    v11 = v12;
    (*(v7 + 8))(v9, v6);
  }

  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  v15 = *(v0 + 168);
  v16 = *(v0 + 128) | 0x8000000000000000;
  *(v0 + 16) = v10;
  *(v0 + 24) = v11;
  *(v0 + 32) = v16;
  *(v0 + 72) = 4;
  sub_26C6D8B28();
  (*(v15 + 8))(v13, v14);
  v17 = *(v0 + 184);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  sub_26C677B60(v17, &qword_2804A8DA0, &qword_26C6DCA60);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_26C6A7AC8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA0, &qword_26C6DCA60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v8 = sub_26C6D8898();
  __swift_project_value_buffer(v8, qword_2804AD240);
  v9 = sub_26C6D8878();
  v10 = sub_26C6D8BB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26C66B000, v9, v10, "SFSessionAgent::session.invalidationHandler triggered", v11, 2u);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v2 + 16))(v4, Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v1);

    v16[1] = 0;
    v16[2] = 0;
    v16[3] = 0xC000000000000000;
    v17 = 4;
    sub_26C6D8B28();
    (*(v2 + 8))(v4, v1);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
  (*(*(v14 - 8) + 56))(v7, v13, 1, v14);
  return sub_26C677B60(v7, &qword_2804A8DA0, &qword_26C6DCA60);
}

uint64_t sub_26C6A7D8C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA0, &qword_26C6DCA60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v2 + 16))(v4, Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v1);

    v12 = xmmword_26C6DC980;
    v13 = 0xC000000000000000;
    v14 = 4;
    sub_26C6D8B28();
    (*(v2 + 8))(v4, v1);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
  (*(*(v10 - 8) + 56))(v7, v9, 1, v10);
  return sub_26C677B60(v7, &qword_2804A8DA0, &qword_26C6DCA60);
}

uint64_t sub_26C6A7F98(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA0, &qword_26C6DCA60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v18 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v8 + 16))(v10, Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v7);

    v18[1] = a2;
    v18[2] = a3;
    v19 = a1;
    v20 = 0;

    sub_26C6D8B28();
    (*(v8 + 8))(v10, v7);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
  (*(*(v16 - 8) + 56))(v13, v15, 1, v16);
  return sub_26C677B60(v13, &qword_2804A8DA0, &qword_26C6DCA60);
}

uint64_t sub_26C6A81B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_26C6D8A08();
  v7 = v6;

  v4(a2, v5, v7);
}

uint64_t sub_26C6A8230(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_26C6D8B08();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = v10;
  v12 = a1;
  sub_26C68AF90(0, 0, v8, a4, v11);
}

uint64_t sub_26C6A838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[38] = a4;
  v5[39] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  v5[40] = v6;
  v5[41] = *(v6 - 8);
  v5[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA0, &qword_26C6DCA60);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6A84A8, 0, 0);
}

uint64_t sub_26C6A84A8()
{
  v1 = *(v0 + 304);
  if (v1)
  {
    v2 = v1;
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v3 = sub_26C6D8898();
    __swift_project_value_buffer(v3, qword_2804AD240);
    v4 = v1;
    v5 = sub_26C6D8878();
    v6 = sub_26C6D8BA8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_26C66B000, v5, v6, "Failed to establish encrypted channel with error: %{public}@", v7, 0xCu);
      sub_26C677B60(v8, &qword_2804A9070, &qword_26C6DA3C0);
      MEMORY[0x26D6A7490](v8, -1, -1);
      MEMORY[0x26D6A7490](v7, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = (v0 + 360);
      v14 = *(v0 + 328);
      v13 = *(v0 + 336);
      v15 = *(v0 + 320);
      (*(v14 + 16))(v13, Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v15);

      *(v0 + 144) = xmmword_26C6DC990;
      *(v0 + 160) = 0xC000000000000000;
      *(v0 + 200) = 4;
      sub_26C6D8B28();

      (*(v14 + 8))(v13, v15);
LABEL_8:
      v16 = 0;
LABEL_15:
      v20 = *v12;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
      (*(*(v21 - 8) + 56))(v20, v16, 1, v21);
      sub_26C677B60(v20, &qword_2804A8DA0, &qword_26C6DCA60);

      v22 = *(v0 + 8);

      return v22();
    }

    v12 = (v0 + 360);
    goto LABEL_14;
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  *(v0 + 368) = v17;
  if (!v17)
  {
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v23 = sub_26C6D8898();
    __swift_project_value_buffer(v23, qword_2804AD240);
    v24 = sub_26C6D8878();
    v25 = sub_26C6D8BA8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26C66B000, v24, v25, "After establishing encryption SFSession::messageSessionTemplate was nil", v26, 2u);
      MEMORY[0x26D6A7490](v26, -1, -1);
    }

    swift_beginAccess();
    v27 = swift_weakLoadStrong();
    v12 = (v0 + 344);
    if (v27)
    {
      v28 = *(v0 + 336);
      v29 = *(v0 + 320);
      v30 = *(v0 + 328);
      (*(v30 + 16))(v28, v27 + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v29);

      *(v0 + 16) = xmmword_26C6DC9A0;
      *(v0 + 32) = 0xC000000000000000;
      *(v0 + 72) = 4;
      sub_26C6D8B28();
      (*(v30 + 8))(v28, v29);
      goto LABEL_8;
    }

LABEL_14:
    v16 = 1;
    goto LABEL_15;
  }

  type metadata accessor for SFSessionAgent(0);
  sub_26C6A9C04(&qword_2804A8D90, type metadata accessor for SFSessionAgent, &unk_26C6DCA10);
  v19 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6A89CC, v19, v18);
}

uint64_t sub_26C6A89CC()
{
  v1 = *(*(v0 + 368) + 32);
  *(v0 + 376) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_26C6A8A44, 0, 0);
}

uint64_t sub_26C6A8A44()
{
  v1 = *(v0 + 376);
  v2 = [v1 messageSessionTemplate];

  if (v2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = (v0 + 352);
      v6 = *(v0 + 328);
      v5 = *(v0 + 336);
      v7 = *(v0 + 320);
      (*(v6 + 16))(v5, Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v7);

      *(v0 + 80) = v2;
      *(v0 + 136) = 1;
      sub_26C6D8B28();
      (*(v6 + 8))(v5, v7);
LABEL_10:
      v16 = 0;
      goto LABEL_13;
    }

    v4 = (v0 + 352);
  }

  else
  {
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v8 = sub_26C6D8898();
    __swift_project_value_buffer(v8, qword_2804AD240);
    v9 = sub_26C6D8878();
    v10 = sub_26C6D8BA8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26C66B000, v9, v10, "After establishing encryption SFSession::messageSessionTemplate was nil", v11, 2u);
      MEMORY[0x26D6A7490](v11, -1, -1);
    }

    swift_beginAccess();
    v12 = swift_weakLoadStrong();
    v4 = (v0 + 344);
    if (v12)
    {
      v13 = *(v0 + 336);
      v14 = *(v0 + 320);
      v15 = *(v0 + 328);
      (*(v15 + 16))(v13, v12 + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v14);

      *(v0 + 16) = xmmword_26C6DC9A0;
      *(v0 + 32) = 0xC000000000000000;
      *(v0 + 72) = 4;
      sub_26C6D8B28();
      (*(v15 + 8))(v13, v14);
      goto LABEL_10;
    }
  }

  v16 = 1;
LABEL_13:
  v17 = *v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
  (*(*(v18 - 8) + 56))(v17, v16, 1, v18);
  sub_26C677B60(v17, &qword_2804A8DA0, &qword_26C6DCA60);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_26C6A8D84(int a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_26C6D8B08();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a2;
  *(v10 + 40) = v9;
  *(v10 + 48) = a1;

  sub_26C68AF90(0, 0, v7, &unk_26C6DCA78, v10);
}

uint64_t sub_26C6A8EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 76) = a6;
  *(v6 + 408) = a4;
  *(v6 + 416) = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  *(v6 + 424) = v7;
  *(v6 + 432) = *(v7 - 8);
  *(v6 + 440) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA0, &qword_26C6DCA60);
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6A9014, 0, 0);
}

uint64_t sub_26C6A9014()
{
  v26 = v0;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  __swift_project_value_buffer(v1, qword_2804AD240);

  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25 = v5;
    *v4 = 136446210;
    v6 = sub_26C6D89C8();
    v8 = sub_26C67A77C(v6, v7, &v25);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_26C66B000, v2, v3, "Received the following objects: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v9 = *(v0 + 408);
  *(v0 + 392) = 0xD000000000000022;
  *(v0 + 400) = 0x800000026C6DEF30;
  sub_26C6D8CD8();
  if (!*(v9 + 16) || (v10 = sub_26C689928(v0 + 208), (v11 & 1) == 0))
  {
    sub_26C678324(v0 + 208);
    goto LABEL_13;
  }

  sub_26C676984(*(*(v0 + 408) + 56) + 32 * v10, v0 + 288);
  sub_26C678324(v0 + 208);
  if ((swift_dynamicCast() & 1) == 0 || *(v0 + 75) != 1)
  {
LABEL_13:
    sub_26C69DDF0(*(v0 + 408), *(v0 + 76), (v0 + 73), v0 + 248);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v20 = *(v0 + 432);
      v19 = *(v0 + 440);
      v21 = *(v0 + 424);
      (*(v20 + 16))(v19, Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v21);

      sub_26C67749C(v0 + 248, v0 + 80);
      *(v0 + 136) = 2;
      sub_26C6D8B28();
      (*(v20 + 8))(v19, v21);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
      v16 = 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
      v16 = 1;
    }

    v17 = *(v0 + 456);
    goto LABEL_17;
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v14 = *(v0 + 432);
    v13 = *(v0 + 440);
    v15 = *(v0 + 424);
    (*(v14 + 16))(v13, v12 + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v15);

    *(v0 + 192) = 0;
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 200) = 5;
    sub_26C6D8B28();
    (*(v14 + 8))(v13, v15);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = *(v0 + 464);
LABEL_17:
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
  (*(*(v22 - 8) + 56))(v17, v16, 1, v22);
  sub_26C677B60(v17, &qword_2804A8DA0, &qword_26C6DCA60);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_26C6A9560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_26C6D89B8();

  v4(a2, v5);
}

uint64_t sub_26C6A95EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C6A9624()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C6A9680()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_26C6A9714()
{
  result = qword_2804A8DB0;
  if (!qword_2804A8DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8DB0);
  }

  return result;
}

uint64_t sub_26C6A9768()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C6A97A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a2;
  v8 = a1;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

uint64_t sub_26C6A9868(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26C676B2C;

  return sub_26C6A8EF4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26C6A99D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26C677C9C;

  return sub_26C6A838C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_40Tm(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_26C6A9AF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26C677C9C;

  return sub_26C6A7430(a1, v4, v5, v7, v6);
}

unint64_t sub_26C6A9BB8()
{
  result = qword_2804A8718;
  if (!qword_2804A8718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804A8718);
  }

  return result;
}

uint64_t sub_26C6A9C04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26C6A9C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DC0, &qword_26C6DCAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C6A9D04(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t FileTransferTargetAgentError.hashValue.getter()
{
  v1 = *v0;
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](v1);
  return sub_26C6D8F08();
}

uint64_t FileTransferTargetEvent.Issue.hashValue.getter()
{
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](0);
  return sub_26C6D8F08();
}

unint64_t sub_26C6A9E44()
{
  result = qword_2804A8DD8;
  if (!qword_2804A8DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8DD8);
  }

  return result;
}

unint64_t sub_26C6A9E9C()
{
  result = qword_2804A8DE0;
  if (!qword_2804A8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8DE0);
  }

  return result;
}

uint64_t sub_26C6A9FC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C6A9FFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_26C6AA048(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_26C6AA0A0(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA100;
  sub_26C6D8CD8();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = a1 + 5;
  sub_26C6D8CD8();
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 1;
  v3 = sub_26C689E88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_26C6AA1FC@<X0>(_BYTE *a1@<X1>, _BYTE *a2@<X8>, uint64_t a3@<X0>)
{
  result = sub_26C6AA344(a3);
  if (v3)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  *v7 = result;
  return result;
}

uint64_t sub_26C6AA238()
{
  v1 = *v0;
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](v1 + 5);
  return sub_26C6D8F08();
}

uint64_t sub_26C6AA2B0(uint64_t a1)
{
  v2 = *v1;
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](v2 + 5);
  return sub_26C6D8F08();
}

uint64_t sub_26C6AA2F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26C6AA330(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26C6AA330(uint64_t a1)
{
  if ((a1 - 5) >= 5)
  {
    return 5;
  }

  else
  {
    return a1 - 5;
  }
}

uint64_t sub_26C6AA344(uint64_t a1)
{
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v2 = sub_26C689928(v13), (v3 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v2, v14);
    sub_26C678324(v13);
    swift_dynamicCast();
  }

  else
  {
    sub_26C678324(v13);
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD258);

  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BA8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_26C67A77C(0xD000000000000014, 0x800000026C6DFD10, v13);
    *(v7 + 12) = 2082;
    v9 = sub_26C6D89C8();
    v11 = sub_26C67A77C(v9, v10, v13);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26C66B000, v5, v6, "Unable to get raw value for key: %{public}s, from payload: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  LOBYTE(v13[0]) = 1;
  sub_26C676694();
  swift_willThrowTypedImpl();
  return 1;
}

unint64_t sub_26C6AA5E0()
{
  result = qword_2804A8DE8;
  if (!qword_2804A8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8DE8);
  }

  return result;
}

uint64_t sub_26C6AA64C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DF8, &qword_26C6DCF30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6AA94C();
  sub_26C6D8F38();
  v13 = 0;
  sub_26C6D8DF8();
  if (!v2)
  {
    v12 = 1;
    sub_26C6D8DF8();
    v11 = *(v3 + 32);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C50, &qword_26C6DB9C8);
    sub_26C69B7E8();
    sub_26C6D8E18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26C6AA840(uint64_t a1)
{
  v2 = sub_26C6AA94C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C6AA87C(uint64_t a1)
{
  v2 = sub_26C6AA94C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_26C6AA8D0(uint64_t a1)
{
  result = sub_26C6AA8F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26C6AA8F8()
{
  result = qword_2804A8DF0;
  if (!qword_2804A8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8DF0);
  }

  return result;
}

unint64_t sub_26C6AA94C()
{
  result = qword_2804A8E00;
  if (!qword_2804A8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8E00);
  }

  return result;
}

unint64_t sub_26C6AA9B4()
{
  result = qword_2804A8E08;
  if (!qword_2804A8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8E08);
  }

  return result;
}

unint64_t sub_26C6AAA0C()
{
  result = qword_2804A8E10;
  if (!qword_2804A8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8E10);
  }

  return result;
}

unint64_t sub_26C6AAA64()
{
  result = qword_2804A8E18;
  if (!qword_2804A8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8E18);
  }

  return result;
}

uint64_t WFSetupServerActivationFlow.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0xD000000000000010;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1398035026;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x7473657567;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0xD000000000000012;
  }
}

unint64_t sub_26C6AAB68()
{
  result = qword_2804A8E20;
  if (!qword_2804A8E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A8E28, &qword_26C6DD050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8E20);
  }

  return result;
}

void sub_26C6AABE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_26C6AAC78(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v4();
}

void sub_26C6AAD30(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_26C6D86E8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void *sub_26C6AAD94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E98, &qword_26C6DD1D8);
  v32 = *(v0 - 8);
  v33 = v0;
  MEMORY[0x28223BE20](v0);
  v31 = v27 - v1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8EA0, &unk_26C6DD1E0) - 8;
  v2 = MEMORY[0x28223BE20](v30);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v29 = v27 - v5;
  v28 = sub_26C6D8BD8();
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C6D8C08();
  MEMORY[0x28223BE20](v9);
  v10 = sub_26C6D8978();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_26C6779D0(0, &qword_2804A8718, 0x277D85C90);
  v27[0] = "/private/var/tmp/byoe/";
  v27[1] = v11;
  sub_26C6D8968();
  v35 = MEMORY[0x277D84F90];
  sub_26C6AFAE0(&qword_2804A8720, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8728, &qword_26C6DA580);
  sub_26C677B18(&qword_2804A8730, &qword_2804A8728, &qword_26C6DA580, MEMORY[0x277D83970]);
  sub_26C6D8C88();
  (*(v6 + 104))(v8, *MEMORY[0x277D85268], v28);
  v12 = sub_26C6D8C18();
  v13 = v33;
  v14 = v34;
  v34[2] = v12;
  v16 = v30;
  v15 = v31;
  v17 = v32;
  (*(v32 + 104))(v31, *MEMORY[0x277D85778], v13);
  v18 = v29;
  sub_26C6D8B18();
  (*(v17 + 8))(v15, v13);
  sub_26C6AFB28(v18, v4);
  v19 = *(v16 + 56);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8EA8, &unk_26C6DD1F0);
  v14[7] = v20;
  v14[8] = sub_26C677B18(&qword_2804A8EB0, &qword_2804A8EA8, &unk_26C6DD1F0, &protocol conformance descriptor for AsyncStream<A>);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14 + 4);
  v22 = *(v20 - 8);
  (*(v22 + 32))(boxed_opaque_existential_1, v4, v20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E58, &qword_26C6DD1A8);
  v24 = *(v23 - 8);
  (*(v24 + 8))(&v4[v19], v23);
  sub_26C6AFB28(v18, v4);
  (*(v24 + 32))(v14 + OBJC_IVAR____TtC10TDGSharing30RapportFileTransferSourceAgent_output, &v4[*(v16 + 56)], v23);
  (*(v22 + 8))(v4, v20);
  v25 = [objc_allocWithZone(MEMORY[0x277D44190]) init];
  v14[3] = v25;
  [v25 setDispatchQueue_];
  sub_26C677B60(v18, &qword_2804A8EA0, &unk_26C6DD1E0);
  return v14;
}

void *sub_26C6AB310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86[1] = *MEMORY[0x277D85DE8];
  v85 = sub_26C6D8778();
  v82 = *(v85 - 8);
  v5 = MEMORY[0x28223BE20](v85);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v76 - v9;
  MEMORY[0x28223BE20](v8);
  v84 = &v76 - v11;
  v12 = *(v4 + 24);
  v86[0] = 0;
  if ([v12 prepareTemplateAndReturnError_])
  {
    v13 = v86[0];
    v14 = sub_26C6D8798();
    [v12 setPeerPublicKey_];

    v15 = sub_26C6D89E8();
    [v12 setTargetID_];

    v16 = [v12 selfPublicKey];
    if (v16)
    {
      v17 = v16;
      v18 = sub_26C6D87A8();
      v81 = v19;

      if (qword_2804A85B8 != -1)
      {
        swift_once();
      }

      v20 = sub_26C6D8898();
      __swift_project_value_buffer(v20, qword_2804AD288);
      v21 = sub_26C6D8878();
      v22 = sub_26C6D8BB8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_26C66B000, v21, v22, "Rapport Peer Keys Set", v23, 2u);
        MEMORY[0x26D6A7490](v23, -1, -1);
      }

      sub_26C6AED54();
      v24 = v84;
      sub_26C6D8728();
      v25 = [objc_opt_self() defaultManager];
      v26 = sub_26C6D8738();
      v86[0] = 0;
      v27 = [v25 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:v86];

      v28 = v86[0];
      if (v27)
      {
        v29 = v82;
        v30 = v85;
        (*(v82 + 16))(v10, v24, v85);
        v31 = v28;
        v32 = sub_26C6D8878();
        v33 = sub_26C6D8BB8();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v79 = v34;
          v80 = swift_slowAlloc();
          v86[0] = v80;
          *v34 = 136446210;
          sub_26C6AFAE0(&qword_2804A87B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v35 = sub_26C6D8E28();
          v37 = v36;
          v38 = *(v29 + 8);
          v38(v10, v85);
          v39 = sub_26C67A77C(v35, v37, v86);
          v30 = v85;

          v40 = v79;
          *(v79 + 1) = v39;
          v41 = v40;
          _os_log_impl(&dword_26C66B000, v32, v33, "Setting Rapport source temp dir to %{public}s", v40, 0xCu);
          v42 = v80;
          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          MEMORY[0x26D6A7490](v42, -1, -1);
          MEMORY[0x26D6A7490](v41, -1, -1);
        }

        else
        {

          v38 = *(v29 + 8);
          v38(v10, v30);
        }

        v73 = v84;
        v74 = sub_26C6D8738();
        [v12 setTemporaryDirectoryURL_];
      }

      else
      {
        v56 = v86[0];
        v57 = sub_26C6D86F8();

        swift_willThrow();
        v83 = 0;
        v58 = v82;
        v30 = v85;
        (*(v82 + 16))(v7, v24, v85);
        v59 = v57;
        v60 = sub_26C6D8878();
        v61 = sub_26C6D8BA8();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          LODWORD(v79) = v61;
          v63 = v62;
          v78 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v86[0] = v80;
          *v63 = 136446466;
          sub_26C6AFAE0(&qword_2804A87B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v77 = v60;
          v64 = sub_26C6D8E28();
          v66 = v65;
          v38 = *(v58 + 8);
          v38(v7, v85);
          v67 = sub_26C67A77C(v64, v66, v86);
          v30 = v85;

          *(v63 + 4) = v67;
          *(v63 + 12) = 2114;
          v68 = v57;
          v69 = _swift_stdlib_bridgeErrorToNSError();
          *(v63 + 14) = v69;
          v71 = v77;
          v70 = v78;
          *v78 = v69;
          _os_log_impl(&dword_26C66B000, v71, v79, "Failed to create rapport temp directory at %{public}s: %{public}@", v63, 0x16u);
          sub_26C677B60(v70, &qword_2804A9070, &qword_26C6DA3C0);
          MEMORY[0x26D6A7490](v70, -1, -1);
          v72 = v80;
          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          MEMORY[0x26D6A7490](v72, -1, -1);
          MEMORY[0x26D6A7490](v63, -1, -1);
        }

        else
        {

          v38 = *(v58 + 8);
          v38(v7, v30);
        }

        v73 = v84;
      }

      [v12 activate];
      v38(v73, v30);
    }

    else
    {
      if (qword_2804A85B8 != -1)
      {
        swift_once();
      }

      v52 = sub_26C6D8898();
      __swift_project_value_buffer(v52, qword_2804AD288);
      v53 = sub_26C6D8878();
      v54 = sub_26C6D8BA8();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_26C66B000, v53, v54, "Failed to retreive selfPublicKey", v55, 2u);
        MEMORY[0x26D6A7490](v55, -1, -1);
      }

      v86[0] = 0;
      sub_26C6AFA8C();
      swift_willThrowTypedImpl();
      return 0;
    }
  }

  else
  {
    v43 = v86[0];
    v18 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v44 = sub_26C6D8898();
    __swift_project_value_buffer(v44, qword_2804AD288);
    v45 = v18;
    v46 = sub_26C6D8878();
    v47 = sub_26C6D8BA8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = v18;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_26C66B000, v46, v47, "Failed to prepare file transfer template: %@", v48, 0xCu);
      sub_26C677B60(v49, &qword_2804A9070, &qword_26C6DA3C0);
      MEMORY[0x26D6A7490](v49, -1, -1);
      MEMORY[0x26D6A7490](v48, -1, -1);
    }

    v86[0] = v18;
    sub_26C6AFA8C();
    swift_willThrowTypedImpl();
  }

  return v18;
}

void sub_26C6ABCA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_26C6D8778();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v12 = sub_26C6D8898();
  __swift_project_value_buffer(v12, qword_2804AD288);
  (*(v9 + 16))(v11, a3, v8);

  v13 = sub_26C6D8878();
  v14 = sub_26C6D8BB8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = a1;
    v16 = v15;
    v27 = swift_slowAlloc();
    v29 = v27;
    *v16 = 136446466;
    *(v16 + 4) = sub_26C67A77C(v28, a2, &v29);
    *(v16 + 12) = 2082;
    sub_26C6AFAE0(&qword_2804A87B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    HIDWORD(v26) = v14;
    v17 = sub_26C6D8E28();
    v18 = v4;
    v20 = v19;
    (*(v9 + 8))(v11, v8);
    v21 = sub_26C67A77C(v17, v20, &v29);
    v4 = v18;

    *(v16 + 14) = v21;
    _os_log_impl(&dword_26C66B000, v13, BYTE4(v26), "Rapport Send File with %{public}s, url: %{public}s", v16, 0x16u);
    v22 = v27;
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v22, -1, -1);
    MEMORY[0x26D6A7490](v16, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v23 = [objc_allocWithZone(MEMORY[0x277D44180]) init];
  v24 = sub_26C6D89E8();
  [v23 setFilename_];

  v25 = sub_26C6D8738();
  [v23 setItemURL_];

  [*(v4 + 24) addItem_];
}

uint64_t sub_26C6ABFF8(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = sub_26C6D8778();
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  v6 = sub_26C6D8948();
  *(v3 + 64) = v6;
  *(v3 + 72) = *(v6 - 8);
  *(v3 + 80) = swift_task_alloc();
  v7 = sub_26C6D88A8();
  *(v3 + 88) = v7;
  *(v3 + 96) = *(v7 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v8 = sub_26C6D8918();
  *(v3 + 120) = v8;
  *(v3 + 128) = *(v8 - 8);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = *a3;
  type metadata accessor for RapportFileTransferSourceAgent(0);
  sub_26C6AFAE0(&qword_2804A8E50, type metadata accessor for RapportFileTransferSourceAgent, &unk_26C6DD160);
  v10 = sub_26C6D8AD8();
  *(v3 + 160) = v10;
  *(v3 + 168) = v9;

  return MEMORY[0x2822009F8](sub_26C6AC24C, v10, v9);
}

uint64_t sub_26C6AC24C()
{
  v12 = v0;
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  *(v0 + 176) = __swift_project_value_buffer(v1, qword_2804AD288);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_26C67A77C(0xD000000000000028, 0x800000026C6DFDF0, &v11);
    _os_log_impl(&dword_26C66B000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  sub_26C6D8908();
  v6 = sub_26C6D8878();
  v7 = sub_26C6D8BB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26C66B000, v6, v7, "Activating EnrollmentAssetService", v8, 2u);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  *v9 = v0;
  v9[1] = sub_26C6AC474;

  return MEMORY[0x28215A838]();
}

uint64_t sub_26C6AC474()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_26C6AC594, v3, v2);
}

uint64_t sub_26C6AC594(uint64_t a1)
{
  v38 = v1;
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26C66B000, v2, v3, "Activated EnrollmentAssetService", v4, 2u);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v5 = v1[19];

  if (v5 >> 60 == 15)
  {
    v6 = sub_26C6D8878();
    v7 = sub_26C6D8BA8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26C66B000, v6, v7, "Missing enrollmentAssetRequestData", v8, 2u);
      MEMORY[0x26D6A7490](v8, -1, -1);
    }

    v10 = v1[16];
    v9 = v1[17];
    v11 = v1[15];

    sub_26C676694();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    (*(v10 + 8))(v9, v11);

    v15 = v1[1];

    return v15();
  }

  else
  {
    v14 = v1[18];
    v13 = v1[19];
    sub_26C6D8678();
    swift_allocObject();
    sub_26C67ED2C(v14, v13);
    sub_26C6D8668();
    sub_26C6AFAE0(&qword_2804A8E80, MEMORY[0x277D04DB0], MEMORY[0x277D04DB8]);
    sub_26C6D8658();
    v18 = v1[13];
    v17 = v1[14];
    v19 = v1[11];
    v20 = v1[12];

    (*(v20 + 16))(v18, v17, v19);
    v21 = sub_26C6D8878();
    v22 = sub_26C6D8BB8();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v1[12];
    v24 = v1[13];
    v26 = v1[11];
    if (v23)
    {
      v27 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v27 = 136446210;
      sub_26C6AFAE0(&qword_2804A8E88, MEMORY[0x277D04DB0], MEMORY[0x277D04DC0]);
      v28 = sub_26C6D8E28();
      v30 = v29;
      v31 = *(v25 + 8);
      v31(v24, v26);
      v32 = sub_26C67A77C(v28, v30, &v37);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_26C66B000, v21, v22, "Will get enrollment assets using request %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x26D6A7490](v36, -1, -1);
      MEMORY[0x26D6A7490](v27, -1, -1);
    }

    else
    {

      v31 = *(v25 + 8);
      v31(v24, v26);
    }

    v1[24] = v31;
    v33 = swift_task_alloc();
    v1[25] = v33;
    *v33 = v1;
    v33[1] = sub_26C6ACA58;
    v34 = v1[14];
    v35 = v1[10];

    return MEMORY[0x28215A800](v35, v34);
  }
}

uint64_t sub_26C6ACA58()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_26C6ACEC0;
  }

  else
  {
    v5 = sub_26C6ACB94;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26C6ACB94()
{
  v36 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_26C6D8938();
  v34 = *(v4 + 16);
  v34(v2, v1, v3);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136446210;
    sub_26C6AFAE0(&qword_2804A87B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v13 = sub_26C6D8E28();
    v15 = v14;
    v33 = *(v9 + 8);
    v33(v8, v10);
    v16 = sub_26C67A77C(v13, v15, &v35);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_26C66B000, v5, v6, "Enrollments assets zip generated to %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D6A7490](v12, -1, -1);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  else
  {

    v33 = *(v9 + 8);
    v33(v8, v10);
  }

  v17 = v0[18];
  v19 = v0[16];
  v18 = v0[17];
  v31 = v0[24];
  v32 = v0[15];
  v30 = v0[14];
  v28 = v0[19];
  v20 = v0[10];
  v29 = v0[11];
  v21 = v0[8];
  v22 = v0[9];
  v23 = v0[7];
  v24 = v0[3];
  v25 = v0[4];
  (*(v22 + 16))(v0[2], v20, v21);
  v34(v24, v23, v25);
  sub_26C6AEC70();
  sub_26C67EE70(v17, v28);
  v33(v23, v25);
  (*(v22 + 8))(v20, v21);
  v31(v30, v29);
  (*(v19 + 8))(v18, v32);

  v26 = v0[1];

  return v26();
}

uint64_t sub_26C6ACEC0()
{
  v1 = v0[24];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
  sub_26C67EE70(v0[18], v0[19]);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26C6ACFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E70, &qword_26C6DD1C0);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v5 = sub_26C6D8778();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  type metadata accessor for RapportFileTransferSourceAgent(0);
  sub_26C6AFAE0(&qword_2804A8E50, type metadata accessor for RapportFileTransferSourceAgent, &unk_26C6DD160);
  v6 = sub_26C6D8AD8();
  v4[29] = v6;
  v4[30] = v7;

  return MEMORY[0x2822009F8](sub_26C6AD19C, v6, v7);
}

uint64_t sub_26C6AD19C()
{
  v102 = v0;
  v101[1] = *MEMORY[0x277D85DE8];
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[13];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 16))(v5, v6);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26C677B60(v0[18], &qword_2804A8E70, &qword_26C6DD1C0);
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v7 = v0[13];
    v8 = sub_26C6D8898();
    __swift_project_value_buffer(v8, qword_2804AD288);
    sub_26C67749C(v7, (v0 + 2));
    v9 = sub_26C6D8878();
    v10 = sub_26C6D8BA8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v101[0] = v12;
      *v11 = 136446210;
      sub_26C67749C((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E78, &unk_26C6DD1C8);
      v13 = sub_26C6D8A18();
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v16 = sub_26C67A77C(v13, v15, v101);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_26C66B000, v9, v10, "Unable to save data: %{public}s without valid item URL.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x26D6A7490](v12, -1, -1);
      MEMORY[0x26D6A7490](v11, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    }

    sub_26C676694();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();
    goto LABEL_22;
  }

  (*(v0[20] + 32))(v0[28], v0[18], v0[19]);
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v18 = v0[27];
  v17 = v0[28];
  v19 = v0[19];
  v20 = v0[20];
  v21 = sub_26C6D8898();
  __swift_project_value_buffer(v21, qword_2804AD288);
  v100 = *(v20 + 16);
  v100(v18, v17, v19);
  v22 = sub_26C6D8878();
  v23 = sub_26C6D8BB8();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[27];
  v27 = v0[19];
  v26 = v0[20];
  if (v24)
  {
    buf = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v101[0] = v97;
    *buf = 136315138;
    sub_26C6AFAE0(&qword_2804A87B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v28 = sub_26C6D8E28();
    v30 = v29;
    v31 = *(v26 + 8);
    v31(v25, v27);
    v32 = sub_26C67A77C(v28, v30, v101);
    v33 = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

    *(buf + 4) = v32;
    _os_log_impl(&dword_26C66B000, v22, v23, "Rapport file is at %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    MEMORY[0x26D6A7490](v97, -1, -1);
    MEMORY[0x26D6A7490](buf, -1, -1);
  }

  else
  {

    v31 = *(v26 + 8);
    v33 = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v25, v27);
  }

  v0[31] = v31;
  v35 = v0[25];
  v36 = v0[26];
  v37 = v0[24];
  v38 = v0[19];
  sub_26C6D88E8();
  sub_26C6D8748();
  v0[32] = v33;
  v31(v35, v38);
  v100(v37, v36, v38);
  v39 = sub_26C6D8878();
  v40 = sub_26C6D8BB8();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[24];
  v43 = v0[19];
  if (v41)
  {
    v44 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v101[0] = v98;
    *v44 = 136446210;
    sub_26C6AFAE0(&qword_2804A87B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v45 = sub_26C6D8E28();
    v47 = v46;
    v31(v42, v43);
    v48 = sub_26C67A77C(v45, v47, v101);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_26C66B000, v39, v40, "EnrollmentAssetService prefers assetDirectoryURL %{public}s, attempting to create directory", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    MEMORY[0x26D6A7490](v98, -1, -1);
    MEMORY[0x26D6A7490](v44, -1, -1);
  }

  else
  {

    v31(v42, v43);
  }

  v99 = v31;
  v49 = objc_opt_self();
  v50 = [v49 defaultManager];
  v51 = sub_26C6D8738();
  v0[12] = 0;
  v52 = [v50 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:0 error:v0 + 12];

  v53 = v0[12];
  if (!v52)
  {
    v70 = v0[28];
    v71 = v0[26];
    v72 = v0[19];
    v73 = v53;
    sub_26C6D86F8();

    swift_willThrow();
    v99(v71, v72);
    v99(v70, v72);
LABEL_22:

    v76 = v0[1];

    return v76();
  }

  v55 = v0[22];
  v54 = v0[23];
  v56 = v0[19];
  v57 = v53;
  sub_26C6D8748();
  v100(v55, v54, v56);
  v58 = sub_26C6D8878();
  v59 = sub_26C6D8B98();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v0[22];
  v62 = v0[19];
  if (v60)
  {
    v63 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v101[0] = v95;
    *v63 = 136446210;
    v64 = v49;
    v65 = sub_26C6D8708();
    v67 = v66;
    v99(v61, v62);
    v68 = v65;
    v49 = v64;
    v69 = sub_26C67A77C(v68, v67, v101);

    *(v63 + 4) = v69;
    _os_log_impl(&dword_26C66B000, v58, v59, "Attempting copy of Enrollments data to %{public}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    MEMORY[0x26D6A7490](v95, -1, -1);
    MEMORY[0x26D6A7490](v63, -1, -1);
  }

  else
  {

    v99(v61, v62);
  }

  v74 = [v49 defaultManager];
  sub_26C6D8B88();
  v75 = v0[19];
  v78 = v0[23];
  v79 = v0[21];
  sub_26C677B60(v0[17], &qword_2804A8E70, &qword_26C6DD1C0);

  v100(v79, v78, v75);
  v80 = sub_26C6D8878();
  v81 = sub_26C6D8B98();
  v82 = os_log_type_enabled(v80, v81);
  v83 = v0[21];
  v84 = v0[19];
  if (v82)
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v101[0] = v86;
    *v85 = 136446210;
    v87 = sub_26C6D8708();
    v89 = v88;
    v99(v83, v84);
    v90 = sub_26C67A77C(v87, v89, v101);

    *(v85 + 4) = v90;
    _os_log_impl(&dword_26C66B000, v80, v81, "Enrollments data successfully copied to %{public}s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    MEMORY[0x26D6A7490](v86, -1, -1);
    MEMORY[0x26D6A7490](v85, -1, -1);
  }

  else
  {

    v99(v83, v84);
  }

  v91 = swift_task_alloc();
  v0[33] = v91;
  *v91 = v0;
  v91[1] = sub_26C6ADCF0;
  v92 = v0[23];
  v93 = v0[15];
  v94 = v0[14];

  return sub_26C6AE0DC(v94, v93, v92);
}

uint64_t sub_26C6ADCF0()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_26C6ADF98;
  }

  else
  {
    v5 = sub_26C6ADE58;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26C6ADE58()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[19];
  v1(v0[23], v4);
  v1(v3, v4);
  v1(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26C6ADF98()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[19];
  v1(v0[23], v4);
  v1(v3, v4);
  v1(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26C6AE0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_26C6D8948();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_26C6D8778();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_26C6D8918();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  type metadata accessor for RapportFileTransferSourceAgent(0);
  sub_26C6AFAE0(&qword_2804A8E50, type metadata accessor for RapportFileTransferSourceAgent, &unk_26C6DD160);
  v8 = sub_26C6D8AD8();
  v3[14] = v8;
  v3[15] = v7;

  return MEMORY[0x2822009F8](sub_26C6AE2AC, v8, v7);
}

uint64_t sub_26C6AE2AC()
{
  v12 = v0;
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  *(v0 + 128) = __swift_project_value_buffer(v1, qword_2804AD288);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_26C67A77C(0xD00000000000002FLL, 0x800000026C6DFDA0, &v11);
    _os_log_impl(&dword_26C66B000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  sub_26C6D8908();
  v6 = sub_26C6D8878();
  v7 = sub_26C6D8BB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26C66B000, v6, v7, "Activating EnrollmentAssetService", v8, 2u);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_26C6AE4D4;

  return MEMORY[0x28215A838]();
}

uint64_t sub_26C6AE4D4()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_26C6AE5F4, v3, v2);
}

uint64_t sub_26C6AE5F4()
{
  v20 = v0;
  (*(v0[9] + 16))(v0[10], v0[4], v0[8]);
  v1 = sub_26C6D8878();
  v2 = sub_26C6D8BB8();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    sub_26C6AFAE0(&qword_2804A87B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v9 = sub_26C6D8E28();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_26C67A77C(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26C66B000, v1, v2, "Decoding EnrollmentAssets with update URL %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  sub_26C6D8928();
  v13 = sub_26C6D8878();
  v14 = sub_26C6D8BB8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26C66B000, v13, v14, "Calling storeEnrollmentAssets", v15, 2u);
    MEMORY[0x26D6A7490](v15, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[18] = v16;
  *v16 = v0;
  v16[1] = sub_26C6AE928;
  v17 = v0[7];

  return MEMORY[0x28215A808](v17);
}

uint64_t sub_26C6AE928()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_26C6AEBA8;
  }

  else
  {
    v5 = sub_26C6AEA64;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26C6AEA64(uint64_t a1)
{
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26C66B000, v2, v3, "Finished storing enrollmentAssets", v4, 2u);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[11];
  v9 = v1[6];
  v8 = v1[7];
  v10 = v1[5];

  (*(v9 + 8))(v8, v10);
  sub_26C6AEC70();
  (*(v6 + 8))(v5, v7);

  v11 = v1[1];

  return v11();
}

uint64_t sub_26C6AEBA8()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_26C6AEC70();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26C6AEC70()
{
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v0 = sub_26C6D8898();
  __swift_project_value_buffer(v0, qword_2804AD288);
  v1 = sub_26C6D8878();
  v2 = sub_26C6D8BB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26C66B000, v1, v2, "Invalidating EnrollmentAssetService", v3, 2u);
    MEMORY[0x26D6A7490](v3, -1, -1);
  }

  return sub_26C6D88D8();
}

void sub_26C6AED54()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_26C6AF9BC;
  *(v2 + 24) = v0;
  v10 = sub_26C6AF9FC;
  v11 = v2;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_26C6AAC78;
  v9 = &block_descriptor_2;
  v3 = _Block_copy(&v6);

  [v1 setReceivedItemHandler_];
  _Block_release(v3);
  v10 = sub_26C6AFA3C;
  v11 = v0;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_26C671E20;
  v9 = &block_descriptor_11;
  v4 = _Block_copy(&v6);

  [v1 setProgressHandler_];
  _Block_release(v4);
  v10 = sub_26C6AFA44;
  v11 = v0;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_26C6AABE4;
  v9 = &block_descriptor_14;
  v5 = _Block_copy(&v6);

  [v1 setCompletionHandler_];
  _Block_release(v5);
}

uint64_t sub_26C6AEF58(void *a1, uint64_t (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E60, &unk_26C6DD1B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v10[3] = sub_26C6779D0(0, &qword_2804A87E8, 0x277D44180);
  v10[4] = &protocol witness table for RPFileTransferItem;
  v10[0] = a1;
  v11 = 0;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E58, &qword_26C6DD1A8);
  sub_26C6D8B28();
  (*(v5 + 8))(v7, v4);
  return a2(0);
}

uint64_t sub_26C6AF0AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E60, &unk_26C6DD1B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD288);
  v7 = a1;
  v8 = sub_26C6D8878();
  v9 = sub_26C6D8BB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25 = v3;
    v11 = v10;
    v23 = swift_slowAlloc();
    v26[0] = v23;
    *v11 = 136315138;
    v12 = v7;
    v13 = [v12 description];
    v14 = sub_26C6D8A08();
    v24 = v5;
    v16 = v15;

    v17 = sub_26C67A77C(v14, v16, v26);
    v5 = v24;

    *(v11 + 4) = v17;
    _os_log_impl(&dword_26C66B000, v8, v9, "Source Progress Event: %s", v11, 0xCu);
    v18 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x26D6A7490](v18, -1, -1);
    v19 = v11;
    v3 = v25;
    MEMORY[0x26D6A7490](v19, -1, -1);
  }

  v26[3] = sub_26C6779D0(0, &qword_2804A8E68, 0x277D44188);
  v26[4] = &off_287D2D6F8;
  v26[0] = v7;
  v27 = 1;
  v20 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E58, &qword_26C6DD1A8);
  sub_26C6D8B28();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26C6AF364(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E60, &unk_26C6DD1B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - v6;
  if (a1)
  {
    v8 = a1;
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v9 = sub_26C6D8898();
    __swift_project_value_buffer(v9, qword_2804AD288);
    v10 = a1;
    v11 = sub_26C6D8878();
    v12 = sub_26C6D8BB8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v26[0] = a2;
      v14 = v13;
      v15 = swift_slowAlloc();
      v26[1] = a1;
      *&v27[0] = v15;
      *v14 = 136315138;
      v16 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v17 = sub_26C6D8A18();
      v19 = sub_26C67A77C(v17, v18, v27);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_26C66B000, v11, v12, "Source Transfer Failed: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x26D6A7490](v15, -1, -1);
      MEMORY[0x26D6A7490](v14, -1, -1);
    }

    *&v27[0] = a1;
    v29 = 2;
    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E58, &qword_26C6DD1A8);
    sub_26C6D8B28();
  }

  else
  {
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v21 = sub_26C6D8898();
    __swift_project_value_buffer(v21, qword_2804AD288);
    v22 = sub_26C6D8878();
    v23 = sub_26C6D8BB8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26C66B000, v22, v23, "Source Transfer Complete", v24, 2u);
      MEMORY[0x26D6A7490](v24, -1, -1);
    }

    v28 = 0;
    memset(v27, 0, sizeof(v27));
    v29 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E58, &qword_26C6DD1A8);
    sub_26C6D8B28();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26C6AF6E0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = OBJC_IVAR____TtC10TDGSharing30RapportFileTransferSourceAgent_output;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E58, &qword_26C6DD1A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_26C6AF7A0()
{
  v1 = *(v0 + 24);
  [v1 finish];
  [v1 invalidate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E58, &qword_26C6DD1A8);
  return sub_26C6D8B38();
}

uint64_t type metadata accessor for RapportFileTransferSourceAgent(uint64_t a1)
{
  result = qword_2804A8E38;
  if (!qword_2804A8E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26C6AF868(uint64_t a1)
{
  sub_26C6AF914();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26C6AF914()
{
  if (!qword_2804A8E48)
  {
    v0 = sub_26C6D8B48();
    if (!v1)
    {
      atomic_store(v0, &qword_2804A8E48);
    }
  }
}

uint64_t sub_26C6AF964(uint64_t a1)
{
  result = sub_26C6AFAE0(&qword_2804A8E50, type metadata accessor for RapportFileTransferSourceAgent, &unk_26C6DD160);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26C6AF9C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C6AFA4C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_26C6AFA8C()
{
  result = qword_2804A8E90;
  if (!qword_2804A8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8E90);
  }

  return result;
}

uint64_t sub_26C6AFAE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26C6AFB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8EA0, &unk_26C6DD1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for WFSetupClientState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[16])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WFSetupClientState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_26C6AFC50()
{
  result = qword_2804A8EB8;
  if (!qword_2804A8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8EB8);
  }

  return result;
}

unint64_t sub_26C6AFCB8()
{
  result = qword_2804A8EC0;
  if (!qword_2804A8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8EC0);
  }

  return result;
}

uint64_t sub_26C6AFD0C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_interruptionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26C68AF8C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26C676954(v4, v5);
}

uint64_t sub_26C6AFDAC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26C6C11BC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_interruptionHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26C676954(v3, v4);
  return sub_26C676904(v8, v9);
}

uint64_t sub_26C6AFF14@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_invalidationHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26C68A0F8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26C676954(v4, v5);
}

uint64_t sub_26C6AFFB4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26C6C0DD4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_invalidationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26C676954(v3, v4);
  return sub_26C676904(v8, v9);
}

uint64_t sub_26C6B0130@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26C6C0DA4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26C676954(v4, v5);
}

uint64_t sub_26C6B01D0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26C6C0D68;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26C676954(v3, v4);
  return sub_26C676904(v8, v9);
}

uint64_t sub_26C6B0338@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_userInteractionProgressEventHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26C6C0D3C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26C676954(v4, v5);
}

uint64_t sub_26C6B03D8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26C6C0CD8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_userInteractionProgressEventHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26C676954(v3, v4);
  return sub_26C676904(v8, v9);
}

uint64_t sub_26C6B0540@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupSecurePairingCompletionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26C6C0D10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26C676954(v4, v5);
}

uint64_t sub_26C6B05E0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26C6C0CD8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupSecurePairingCompletionHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26C676954(v3, v4);
  return sub_26C676904(v8, v9);
}

uint64_t sub_26C6B0748@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_showPinHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26C6C0CA4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26C676954(v4, v5);
}

uint64_t sub_26C6B07E8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26C6C0C64;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_showPinHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26C676954(v3, v4);
  return sub_26C676904(v8, v9);
}

uint64_t sub_26C6B08D0(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_26C6B0958(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_26C6B0A20()
{
  v1 = sub_26C6D8838();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = [*(*(v0 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent) + 24) identifier];
  if (v11)
  {
    v12 = v11;
    sub_26C6D8818();

    (*(v2 + 56))(v8, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v8, 1, 1, v1);
  }

  sub_26C6767B0(v8, v10);
  if ((*(v2 + 48))(v10, 1, v1))
  {
    sub_26C677B60(v10, &qword_2804A86E0, &qword_26C6DA3B8);
    return 0;
  }

  else
  {
    (*(v2 + 16))(v4, v10, v1);
    sub_26C677B60(v10, &qword_2804A86E0, &qword_26C6DA3B8);
    v14 = sub_26C6D87D8();
    (*(v2 + 8))(v4, v1);
    return v14;
  }
}

id WFSetupClient.__allocating_init(queue:deviceIdentifier:activationFlow:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v41 = a1;
  v42 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_26C6D8838();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v13 = sub_26C6D8898();
  __swift_project_value_buffer(v13, qword_2804AD240);

  v14 = sub_26C6D8878();
  v15 = sub_26C6D8BB8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v44[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_26C67A77C(a2, a3, v44);
    _os_log_impl(&dword_26C66B000, v14, v15, "Initializing WFSetupClient with deviceIdentifier: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x26D6A7490](v17, -1, -1);
    MEMORY[0x26D6A7490](v16, -1, -1);
  }

  sub_26C6D87C8();

  v18 = *(v10 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_26C6D8828();
    if (v18(v8, 1, v9) != 1)
    {
      sub_26C677B60(v8, &qword_2804A86E0, &qword_26C6DA3B8);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  type metadata accessor for SFSessionAgent(0);
  swift_allocObject();
  v40 = sub_26C6A51B4(v12);
  v19 = [objc_allocWithZone(type metadata accessor for SFAnisetteAgent()) init];
  type metadata accessor for RapportFileTransferSourceAgent(0);
  swift_allocObject();
  v20 = sub_26C6AAD94();
  v21 = sub_26C6C0BE4(&qword_2804A8F00, type metadata accessor for SFSessionAgent, &unk_26C6DCA38);
  v22 = sub_26C6C0BE4(&qword_2804A8F08, type metadata accessor for RapportFileTransferSourceAgent, &unk_26C6DD188);
  v23 = type metadata accessor for WFSetupClient();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_interruptionHandler];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v24[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_invalidationHandler];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v24[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v24[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_userInteractionProgressEventHandler];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v24[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupSecurePairingCompletionHandler];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v24[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_showPinHandler];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v24[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgentListeningTask] = 0;
  *&v24[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgentListeningTask] = 0;
  v31 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_analyticsManager;
  v44[3] = &type metadata for CoreAnalyticsBackend;
  v44[4] = &off_287D2B788;
  type metadata accessor for AnalyticsManager();
  v32 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v44, &type metadata for CoreAnalyticsBackend);
  *(v32 + 40) = &type metadata for CoreAnalyticsBackend;
  *(v32 + 48) = &off_287D2B788;
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  *&v24[v31] = v32;
  v33 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_incomingFileInfo;
  *&v24[v33] = sub_26C68AA04(MEMORY[0x277D84F90]);
  v34 = &v24[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent];
  *v34 = v40;
  v34[1] = v21;
  v35 = &v24[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_anisetteAgent];
  *v35 = v19;
  *(v35 + 1) = &off_287D2E2E8;
  v36 = &v24[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgent];
  *v36 = v20;
  *(v36 + 1) = v22;
  v37 = v42;
  *&v24[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue] = v41;
  v38 = &v24[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state];
  *v38 = 0;
  *(v38 + 1) = v37;
  v43.receiver = v24;
  v43.super_class = v23;
  return objc_msgSendSuper2(&v43, sel_init);
}

id WFSetupClient.__deallocating_deinit()
{
  v1 = v0;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD240);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_26C67A77C(0x74696E696564, 0xE600000000000000, &v9);
    _os_log_impl(&dword_26C66B000, v3, v4, "Running WFSetupClient::%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  v7 = type metadata accessor for WFSetupClient();
  v10.receiver = v1;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_26C6B13F8()
{
  v1 = sub_26C6D8958();
  v32 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26C6D8978();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v10 = sub_26C6D8898();
  __swift_project_value_buffer(v10, qword_2804AD240);
  v11 = sub_26C6D8878();
  v12 = sub_26C6D8BB8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_26C67A77C(0x6164696C61766E69, 0xEC00000029286574, aBlock);
    _os_log_impl(&dword_26C66B000, v11, v12, "Running WFSetupClient::%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26D6A7490](v14, -1, -1);
    MEMORY[0x26D6A7490](v13, -1, -1);
  }

  v15 = &v0[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state];
  if (v0[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state + 1] - 1 > 3)
  {
    v19 = v0;
    v20 = sub_26C6D8878();
    v21 = sub_26C6D8BA8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136446210;
      LOBYTE(v33) = v15[1];
      v24 = sub_26C6D8A18();
      v26 = sub_26C67A77C(v24, v25, aBlock);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_26C66B000, v20, v21, "Calling invalidate on a non-active session state: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x26D6A7490](v23, -1, -1);
      MEMORY[0x26D6A7490](v22, -1, -1);
    }

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_26C6C11AC;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26C670B0C;
    aBlock[3] = &block_descriptor_3;
    v28 = _Block_copy(aBlock);

    sub_26C6D8968();
    v33 = MEMORY[0x277D84F90];
    sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
    sub_26C6BFEC4();
    sub_26C6D8C88();
    MEMORY[0x26D6A6AF0](0, v6, v3, v28);
    _Block_release(v28);
    (*(v32 + 8))(v3, v1);
    (*(v30 + 8))(v6, v31);
  }

  else
  {
    v15[1] = 6;
    v16 = sub_26C6D8B08();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v0;
    v18 = v0;
    sub_26C68AF90(0, 0, v9, &unk_26C6DD380, v17);
  }
}

uint64_t sub_26C6B19A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_26C6D8958();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_26C6D8978();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6B1AC4, 0, 0);
}

uint64_t sub_26C6B1AC4()
{
  *(v0 + 128) = *(*(v0 + 72) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent);
  type metadata accessor for SFSessionAgent(0);
  sub_26C6C0BE4(&qword_2804A8D90, type metadata accessor for SFSessionAgent, &unk_26C6DCA10);
  swift_unknownObjectRetain();
  v2 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B1BA0, v2, v1);
}

uint64_t sub_26C6B1BA0()
{
  sub_26C6A6390();
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B1C10, 0, 0);
}

uint64_t sub_26C6B1C10()
{
  v1 = v0[9];
  *(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state + 1) = 5;
  v2 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgentListeningTask;
  if (*(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgentListeningTask))
  {

    sub_26C6D8B58();
  }

  v3 = v0[9];
  *(v1 + v2) = 0;

  v0[17] = *(v3 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgent);
  swift_getObjectType();
  v4 = sub_26C6C0BE4(&qword_2804A8F08, type metadata accessor for RapportFileTransferSourceAgent, &unk_26C6DD188);
  v0[18] = v4;
  v0[19] = *(v4 + 56);
  v0[20] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xF33D000000000000;
  v6 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B1D64, v6, v5);
}

uint64_t sub_26C6B1D64()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);
  v3 = type metadata accessor for RapportFileTransferSourceAgent(0);
  v1(v3, v2);

  return MEMORY[0x2822009F8](sub_26C6B1DE4, 0, 0);
}

uint64_t sub_26C6B1DE4()
{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgentListeningTask;
  if (*(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgentListeningTask))
  {

    sub_26C6D8B58();
  }

  v3 = v0[15];
  v4 = v0[12];
  v11 = v0[14];
  v12 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  *(v1 + v2) = 0;

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_26C6C10FC;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_26C670B0C;
  v0[5] = &block_descriptor_187;
  v8 = _Block_copy(v0 + 2);

  sub_26C6D8968();
  v0[8] = MEMORY[0x277D84F90];
  sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
  sub_26C6BFEC4();
  sub_26C6D8C88();
  MEMORY[0x26D6A6AF0](0, v3, v4, v8);
  _Block_release(v8);
  (*(v6 + 8))(v4, v5);
  (*(v11 + 8))(v3, v12);

  v9 = v0[1];

  return v9();
}

void sub_26C6B2068(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_invalidationHandler;
    v3 = Strong;
    swift_beginAccess();
    v5 = *v2;
    v4 = *(v2 + 8);
    sub_26C676954(v5, v4);

    if (v5)
    {
      v5();
      sub_26C676904(v5, v4);
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_26C6B2134();
  }
}

uint64_t sub_26C6B2134()
{
  v1 = v0;
  v2 = sub_26C6D8988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_26C6D8998();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_2804A85A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = sub_26C6D8898();
  __swift_project_value_buffer(v8, qword_2804AD240);
  v9 = sub_26C6D8878();
  v10 = sub_26C6D8BB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_26C67A77C(0xD000000000000011, 0x800000026C6E0180, v33);
    _os_log_impl(&dword_26C66B000, v9, v10, "Running WFSetupClient::%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D6A7490](v12, -1, -1);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  v13 = (v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_interruptionHandler);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = 0;
  v13[1] = 0;
  sub_26C676904(v14, v15);
  v16 = (v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_invalidationHandler);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  sub_26C676904(v17, v18);
  v19 = (v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *v19 = 0;
  v19[1] = 0;
  sub_26C676904(v20, v21);
  v22 = (v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_userInteractionProgressEventHandler);
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  *v22 = 0;
  v22[1] = 0;
  sub_26C676904(v23, v24);
  v25 = (v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupSecurePairingCompletionHandler);
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  *v25 = 0;
  v25[1] = 0;
  sub_26C676904(v26, v27);
  v28 = (v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_showPinHandler);
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  *v28 = 0;
  v28[1] = 0;
  return sub_26C676904(v29, v30);
}

uint64_t sub_26C6B2460()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v5 = sub_26C6D8898();
  __swift_project_value_buffer(v5, qword_2804AD240);
  v6 = sub_26C6D8878();
  v7 = sub_26C6D8BB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_26C67A77C(0x6574617669746361, 0xEA00000000002928, &v15);
    _os_log_impl(&dword_26C66B000, v6, v7, "Running WFSetupClient::%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  v10 = sub_26C6D8B08();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v12 = v1;
  sub_26C68AF90(0, 0, v4, &unk_26C6DD390, v11);
}

uint64_t sub_26C6B2680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[47] = a4;
  v5 = sub_26C6D8958();
  v4[48] = v5;
  v4[49] = *(v5 - 8);
  v4[50] = swift_task_alloc();
  v6 = sub_26C6D8978();
  v4[51] = v6;
  v4[52] = *(v6 - 8);
  v4[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v4[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6B27D4, 0, 0);
}

uint64_t sub_26C6B27D4()
{
  v1 = v0[47];
  v2 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state;
  v0[55] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state;
  v3 = v1 + v2;
  if (*(v1 + v2 + 1) - 1 >= 4)
  {
    v10 = v0[54];
    v0[56] = *(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
    *(swift_task_alloc() + 16) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C38, &qword_26C6DB550);
    sub_26C6D8BE8();
    v0[57] = 0;

    v11 = sub_26C6D8B08();
    v0[58] = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    v0[59] = v13;
    v0[60] = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v13(v10, 1, 1, v11);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v14;
    *(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgentListeningTask) = sub_26C68AF90(0, 0, v10, &unk_26C6DD430, v15);

    *(v3 + 1) = 1;
    v16 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent;
    v0[61] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent;
    v0[62] = *(v1 + v16);
    v0[63] = type metadata accessor for SFSessionAgent(0);
    v0[64] = sub_26C6C0BE4(&qword_2804A8D90, type metadata accessor for SFSessionAgent, &unk_26C6DCA10);
    swift_unknownObjectRetain();
    v18 = sub_26C6D8AD8();
    v0[65] = v18;
    v0[66] = v17;

    return MEMORY[0x2822009F8](sub_26C6B2B40, v18, v17);
  }

  else
  {
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v4 = sub_26C6D8898();
    __swift_project_value_buffer(v4, qword_2804AD240);
    v5 = sub_26C6D8878();
    v6 = sub_26C6D8BB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26C66B000, v5, v6, "WFSetupClient is already activated.", v7, 2u);
      MEMORY[0x26D6A7490](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_26C6B2B40()
{
  v1 = v0[62];
  sub_26C6A5EEC();
  sub_26C6A623C();
  v2 = *(v1 + 32);
  v0[2] = v0;
  v0[3] = sub_26C6B2C60;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F0, &qword_26C6DA3C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C6A4DB4;
  v0[13] = &block_descriptor_162;
  v0[14] = v3;
  [v2 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C6B2C60()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 536) = v2;
  v3 = *(v1 + 528);
  v4 = *(v1 + 520);
  if (v2)
  {
    v5 = sub_26C6B2F64;
  }

  else
  {
    v5 = sub_26C6B2D90;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26C6B2D90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B2DF8, 0, 0);
}

uint64_t sub_26C6B2DF8()
{
  *(v0[47] + v0[55] + 1) = 2;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  v0[68] = __swift_project_value_buffer(v1, qword_2804AD240);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26C66B000, v2, v3, "Activation Successful, registering for requests.", v4, 2u);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v5 = v0[61];
  v6 = v0[47];

  v0[69] = *(v6 + v5);
  swift_unknownObjectRetain();
  v8 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B34A4, v8, v7);
}

uint64_t sub_26C6B2F64()
{
  swift_willThrow();
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B2FE0, 0, 0);
}

uint64_t sub_26C6B2FE0()
{
  v1 = v0[67];
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD240);
  v3 = v1;
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_26C66B000, v4, v5, "Error activating session: %{public}@", v6, 0xCu);
    sub_26C677B60(v7, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v7, -1, -1);
    MEMORY[0x26D6A7490](v6, -1, -1);
  }

  v10 = v0[53];
  v11 = v0[50];
  v32 = v0[52];
  v33 = v0[51];
  v13 = v0[48];
  v12 = v0[49];

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v1;
  v0[38] = sub_26C6C11C0;
  v0[39] = v15;
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = sub_26C670B0C;
  v0[37] = &block_descriptor_169;
  v16 = _Block_copy(v0 + 34);
  v17 = v1;

  sub_26C6D8968();
  v0[45] = MEMORY[0x277D84F90];
  sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
  sub_26C6BFEC4();
  sub_26C6D8C88();
  MEMORY[0x26D6A6AF0](0, v10, v11, v16);
  _Block_release(v16);
  (*(v12 + 8))(v11, v13);
  (*(v32 + 8))(v10, v33);

  v18 = sub_26C6B0A20();
  v20 = v19;
  v21 = sub_26C6D86E8();
  v22 = [v21 code];

  v0[46] = v22;
  v23 = sub_26C6D8E28();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8BE0, &qword_26C6DB4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  *(inited + 32) = 0x646F43726F727265;
  v27 = inited + 32;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v23;
  *(inited + 56) = v25;
  v28 = sub_26C68A7EC(inited);
  swift_setDeallocating();
  sub_26C677B60(v27, &qword_2804A8BE8, &qword_26C6DB4F8);
  v0[43] = &type metadata for DisconnectedProximitySetupClientAnalyticsEvent;
  v0[44] = sub_26C6C08B8();
  v29 = swift_allocObject();
  v0[40] = v29;
  v29[2] = 0xD000000000000044;
  v29[3] = 0x800000026C6E0070;
  v29[4] = v18;
  v29[5] = v20;
  v29[6] = v28;
  sub_26C6CDF0C(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  v30 = v0[1];

  return v30();
}

uint64_t sub_26C6B34A4()
{
  sub_26C6A6934(&type metadata for SetupActionRequest, &off_287D2E230);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B3524, 0, 0);
}

uint64_t sub_26C6B3524(uint64_t a1, uint64_t a2)
{
  v2[70] = *(v2[47] + v2[61]);
  swift_unknownObjectRetain();
  v4 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B35BC, v4, v3);
}

uint64_t sub_26C6B35BC()
{
  sub_26C6A6934(&type metadata for UserInteractionRequest, &off_287D2F1F0);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B363C, 0, 0);
}

uint64_t sub_26C6B363C(uint64_t a1, uint64_t a2)
{
  v2[71] = *(v2[47] + v2[61]);
  swift_unknownObjectRetain();
  v4 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B36D4, v4, v3);
}

uint64_t sub_26C6B36D4()
{
  sub_26C6A6934(&type metadata for SecurityRequest, &off_287D2D528);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B3754, 0, 0);
}

uint64_t sub_26C6B3754(uint64_t a1, uint64_t a2)
{
  v2[72] = *(v2[47] + v2[61]);
  swift_unknownObjectRetain();
  v4 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B37EC, v4, v3);
}

uint64_t sub_26C6B37EC()
{
  sub_26C6A6934(&type metadata for RapportSetupConnectionRequest, &off_287D2CA78);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B386C, 0, 0);
}

uint64_t sub_26C6B386C(uint64_t a1, uint64_t a2)
{
  v2[73] = *(v2[47] + v2[61]);
  swift_unknownObjectRetain();
  v4 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B3904, v4, v3);
}

uint64_t sub_26C6B3904()
{
  sub_26C6A6934(&type metadata for RapportRetrieveDataRequest, &off_287D2E918);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B3984, 0, 0);
}

uint64_t sub_26C6B3984(uint64_t a1, uint64_t a2)
{
  v2[74] = *(v2[47] + v2[61]);
  swift_unknownObjectRetain();
  v4 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B3A1C, v4, v3);
}

uint64_t sub_26C6B3A1C()
{
  sub_26C6A6934(&type metadata for RapportPrepareToSendDataRequest, &off_287D2E0F8);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B3A9C, 0, 0);
}

uint64_t sub_26C6B3A9C()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 376);
  v3 = v2 + *(v0 + 440);
  (*(v0 + 472))(v1, 1, 1, *(v0 + 464));
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  *(v2 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgentListeningTask) = sub_26C68AF90(0, 0, v1, &unk_26C6DD440, v5);

  if ((*(v3 + 8) | 2) == 3)
  {
    *(v0 + 600) = *(*(v0 + 376) + *(v0 + 488));
    swift_unknownObjectRetain();
    v6 = sub_26C6D8AD8();
    v8 = v7;
    v9 = sub_26C6B3CC4;
  }

  else
  {
    v10 = sub_26C6D8878();
    v11 = sub_26C6D8BB8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26C66B000, v10, v11, "Registrations complete. Automatically sending LegacyPreAuthObject.", v12, 2u);
      MEMORY[0x26D6A7490](v12, -1, -1);
    }

    v13 = *(v0 + 488);
    v14 = *(v0 + 376);

    *(v0 + 608) = *(v14 + v13);
    swift_unknownObjectRetain();
    v15 = sub_26C6C9DF4();
    *(v0 + 232) = &type metadata for LegacyPreAuthObject;
    *(v0 + 240) = &off_287D2EF48;
    *(v0 + 208) = v15;
    *(v0 + 264) = 1;
    v6 = sub_26C6D8AD8();
    v8 = v16;
    v9 = sub_26C6B3E78;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_26C6B3CC4()
{
  sub_26C6A6934(&type metadata for AnisetteTransmittableRequest, &off_287D2CFA0);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B3D44, 0, 0);
}

uint64_t sub_26C6B3D44(uint64_t a1)
{
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26C66B000, v2, v3, "Registrations complete. Automatically sending LegacyPreAuthObject.", v4, 2u);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v5 = *(v1 + 488);
  v6 = *(v1 + 376);

  *(v1 + 608) = *(v6 + v5);
  swift_unknownObjectRetain();
  v7 = sub_26C6C9DF4();
  *(v1 + 232) = &type metadata for LegacyPreAuthObject;
  *(v1 + 240) = &off_287D2EF48;
  *(v1 + 208) = v7;
  *(v1 + 264) = 1;
  v9 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B3E78, v9, v8);
}

uint64_t sub_26C6B3E78()
{
  v1 = *(v0 + 456);
  *(v0 + 266) = sub_26C6A6570(v0 + 208);
  swift_unknownObjectRelease();
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26C6B3F58, 0, 0);
  }

  else
  {
    sub_26C6C0984(v0 + 208);

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_26C6B3F58()
{
  v1 = *(v0 + 266);
  sub_26C6A9714();
  v2 = swift_allocError();
  *v3 = v1;
  v3[1] = HIBYTE(v1) & 1;
  sub_26C6C0984(v0 + 208);
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD240);
  v5 = v2;
  v6 = sub_26C6D8878();
  v7 = sub_26C6D8BA8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_26C66B000, v6, v7, "Error activating session: %{public}@", v8, 0xCu);
    sub_26C677B60(v9, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  v12 = *(v0 + 424);
  v13 = *(v0 + 400);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v15 = *(v0 + 384);
  v14 = *(v0 + 392);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v2;
  *(v0 + 304) = sub_26C6C11C0;
  *(v0 + 312) = v17;
  *(v0 + 272) = MEMORY[0x277D85DD0];
  *(v0 + 280) = 1107296256;
  *(v0 + 288) = sub_26C670B0C;
  *(v0 + 296) = &block_descriptor_169;
  v18 = _Block_copy((v0 + 272));
  v19 = v2;

  sub_26C6D8968();
  *(v0 + 360) = MEMORY[0x277D84F90];
  sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
  sub_26C6BFEC4();
  sub_26C6D8C88();
  MEMORY[0x26D6A6AF0](0, v12, v13, v18);
  _Block_release(v18);
  (*(v14 + 8))(v13, v15);
  (*(v34 + 8))(v12, v35);

  v20 = sub_26C6B0A20();
  v22 = v21;
  v23 = sub_26C6D86E8();
  v24 = [v23 code];

  *(v0 + 368) = v24;
  v25 = sub_26C6D8E28();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8BE0, &qword_26C6DB4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  *(inited + 32) = 0x646F43726F727265;
  v29 = inited + 32;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v25;
  *(inited + 56) = v27;
  v30 = sub_26C68A7EC(inited);
  swift_setDeallocating();
  sub_26C677B60(v29, &qword_2804A8BE8, &qword_26C6DB4F8);
  *(v0 + 344) = &type metadata for DisconnectedProximitySetupClientAnalyticsEvent;
  *(v0 + 352) = sub_26C6C08B8();
  v31 = swift_allocObject();
  *(v0 + 320) = v31;
  v31[2] = 0xD000000000000044;
  v31[3] = 0x800000026C6E0070;
  v31[4] = v20;
  v31[5] = v22;
  v31[6] = v30;
  sub_26C6CDF0C((v0 + 320));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 320));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_26C6B4450@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler;
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);
    sub_26C676954(v5, v6);
    v7 = sub_26C689E88(MEMORY[0x277D84F90]);
    v5(0, v7);
    sub_26C676904(v5, v6);
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_26C6B4528()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_26C691F84;

    return sub_26C6B69A0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_26C6B4630()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_26C6C112C;

    return sub_26C6B4718();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_26C6B4738()
{
  v10 = v0;
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  v0[81] = __swift_project_value_buffer(v1, qword_2804AD288);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_26C67A77C(0xD000000000000022, 0x800000026C6E01C0, &v9);
    _os_log_impl(&dword_26C66B000, v2, v3, "Running WFSetupClient::%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v0[82] = *(v0[80] + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgent);
  swift_getObjectType();
  v7 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B48EC, v7, v6);
}

uint64_t sub_26C6B48EC()
{
  sub_26C67749C(*(v0 + 656) + 32, v0 + 296);

  return MEMORY[0x2822009F8](sub_26C6B495C, 0, 0);
}

uint64_t sub_26C6B495C()
{
  v1 = v0[40];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 37, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[35] = swift_getAssociatedTypeWitness();
  v0[36] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 32);
  sub_26C6D8B68();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  v0[83] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_incomingFileInfo;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 32), v0[35]);
  v5 = swift_task_alloc();
  v0[84] = v5;
  *v5 = v0;
  v5[1] = sub_26C6B4B44;

  return MEMORY[0x282200310](v0 + 2, 0, 0);
}

uint64_t sub_26C6B4B44()
{

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_26C6B4C54, 0, 0);
  }

  return result;
}

uint64_t sub_26C6B4C54()
{
  v81 = v0;
  if (*(v0 + 56) != 255)
  {
    v1 = *(v0 + 32);
    *(v0 + 64) = *(v0 + 16);
    *(v0 + 80) = v1;
    *(v0 + 89) = *(v0 + 41);
    sub_26C6C1008(v0 + 64, v0 + 112);
    v2 = sub_26C6D8878();
    v3 = sub_26C6D8BB8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v80 = v5;
      *v4 = 136315138;
      sub_26C6C1008(v0 + 112, v0 + 208);
      v6 = sub_26C6D8A18();
      v8 = v7;
      sub_26C6C1064(v0 + 112);
      v9 = sub_26C67A77C(v6, v8, &v80);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_26C66B000, v2, v3, "File Transfer Agent Event Received: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x26D6A7490](v5, -1, -1);
      MEMORY[0x26D6A7490](v4, -1, -1);
    }

    else
    {

      sub_26C6C1064(v0 + 112);
    }

    sub_26C6C1008(v0 + 64, v0 + 160);
    if (*(v0 + 200) <= 1u)
    {
      v12 = (v0 + 160);
      if (!*(v0 + 200))
      {
        sub_26C676744(v12, v0 + 416);
        sub_26C67749C(v0 + 416, v0 + 456);
        v13 = sub_26C6D8878();
        v14 = sub_26C6D8B98();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v80 = v16;
          *v15 = 136315138;
          v17 = *(v0 + 480);
          v18 = *(v0 + 488);
          __swift_project_boxed_opaque_existential_1((v0 + 456), v17);
          *(v0 + 616) = (*(v18 + 8))(v17, v18);
          *(v0 + 624) = v19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87B0, &qword_26C6DA5A8);
          v20 = sub_26C6D8A18();
          v22 = v21;
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));
          v23 = sub_26C67A77C(v20, v22, &v80);

          *(v15 + 4) = v23;
          _os_log_impl(&dword_26C66B000, v13, v14, "File Transfer Item Received: %s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v16);
          MEMORY[0x26D6A7490](v16, -1, -1);
          MEMORY[0x26D6A7490](v15, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));
        }

        v46 = *(v0 + 440);
        v47 = *(v0 + 448);
        __swift_project_boxed_opaque_existential_1((v0 + 416), v46);
        v48 = (*(v47 + 8))(v46, v47);
        if (v49)
        {
          v50 = v49;
          v51 = *(*(v0 + 640) + *(v0 + 664));
          if (*(v51 + 16))
          {
            v52 = v48;

            v53 = sub_26C689AC8(v52, v50);
            if (v54)
            {
              v55 = (*(v51 + 56) + 16 * v53);
              v56 = *v55;
              *(v0 + 680) = *v55;
              v57 = v55[1];
              *(v0 + 688) = v57;
              sub_26C67ED2C(v56, v57);

              sub_26C67749C(v0 + 416, v0 + 496);
              v58 = sub_26C6D8878();
              v59 = sub_26C6D8B98();
              if (os_log_type_enabled(v58, v59))
              {
                v79 = v57;
                v60 = swift_slowAlloc();
                v78 = swift_slowAlloc();
                v80 = v78;
                *v60 = 136315138;
                v61 = *(v0 + 520);
                v62 = *(v0 + 528);
                __swift_project_boxed_opaque_existential_1((v0 + 496), v61);
                *(v0 + 600) = (*(v62 + 8))(v61, v62);
                *(v0 + 608) = v63;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87B0, &qword_26C6DA5A8);
                v64 = sub_26C6D8A18();
                v66 = v65;
                __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
                v67 = sub_26C67A77C(v64, v66, &v80);

                *(v60 + 4) = v67;
                _os_log_impl(&dword_26C66B000, v58, v59, "Received file info for: %s", v60, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v78);
                MEMORY[0x26D6A7490](v78, -1, -1);
                v68 = v60;
                v57 = v79;
                MEMORY[0x26D6A7490](v68, -1, -1);
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
              }

              swift_beginAccess();
              sub_26C6BFC14(v52, v50, (v0 + 584));
              v74 = *(v0 + 584);
              v75 = *(v0 + 592);
              swift_endAccess();
              sub_26C67EE70(v74, v75);

              v77 = swift_task_alloc();
              *(v0 + 696) = v77;
              *v77 = v0;
              v77[1] = sub_26C6B5634;

              return sub_26C6BECA4(v0 + 416, v76, v56, v57);
            }
          }
        }

        v70 = sub_26C6D8878();
        v71 = sub_26C6D8BA8();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_26C66B000, v70, v71, "File Transfer sent without RapportPrepareToSendDataRequest.", v72, 2u);
          MEMORY[0x26D6A7490](v72, -1, -1);
        }

        sub_26C6C1064(v0 + 64);
        v69 = (v0 + 416);
        goto LABEL_34;
      }

      sub_26C676744(v12, v0 + 336);
      sub_26C67749C(v0 + 336, v0 + 376);
      v34 = sub_26C6D8878();
      v35 = sub_26C6D8B98();
      if (!os_log_type_enabled(v34, v35))
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
        sub_26C6C1064(v0 + 64);
        v69 = (v0 + 376);
LABEL_34:
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        goto LABEL_35;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v80 = v37;
      *v36 = 136315138;
      v38 = *(v0 + 400);
      v39 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1((v0 + 376), v38);
      (*(v39 + 8))(v38, v39);
      v40 = sub_26C6D8B78();
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
      v43 = sub_26C67A77C(v40, v42, &v80);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_26C66B000, v34, v35, "File Transfer Progress Update - Remaining Seconds: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x26D6A7490](v37, -1, -1);
      MEMORY[0x26D6A7490](v36, -1, -1);

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
LABEL_27:
      sub_26C6C1064(v0 + 64);
LABEL_35:
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, *(v0 + 280));
      v73 = swift_task_alloc();
      *(v0 + 672) = v73;
      *v73 = v0;
      v73[1] = sub_26C6B4B44;

      return MEMORY[0x282200310](v0 + 16, 0, 0);
    }

    if (*(v0 + 200) == 2)
    {
      v24 = *(v0 + 160);
      v25 = v24;
      v26 = sub_26C6D8878();
      v27 = sub_26C6D8BA8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v80 = v29;
        *v28 = 136315138;
        *(v0 + 632) = v24;
        v30 = v24;
        v31 = sub_26C6D8A18();
        v33 = sub_26C67A77C(v31, v32, &v80);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_26C66B000, v26, v27, "Error completing file transfer: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x26D6A7490](v29, -1, -1);
        MEMORY[0x26D6A7490](v28, -1, -1);

        goto LABEL_27;
      }
    }

    else
    {
      v26 = sub_26C6D8878();
      v44 = sub_26C6D8B98();
      if (os_log_type_enabled(v26, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_26C66B000, v26, v44, "File Transfer Complete", v45, 2u);
        MEMORY[0x26D6A7490](v45, -1, -1);
      }
    }

    goto LABEL_27;
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26C6B5634()
{

  return MEMORY[0x2822009F8](sub_26C6B5730, 0, 0);
}

uint64_t sub_26C6B5730()
{
  sub_26C678418(v0[85], v0[86]);
  sub_26C6C1064((v0 + 8));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 52);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 32), v0[35]);
  v1 = swift_task_alloc();
  v0[84] = v1;
  *v1 = v0;
  v1[1] = sub_26C6B4B44;

  return MEMORY[0x282200310](v0 + 2, 0, 0);
}

void sub_26C6B5810(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v7 = sub_26C6D8898();
  __swift_project_value_buffer(v7, qword_2804AD240);
  v8 = sub_26C6D8878();
  v9 = sub_26C6D8BB8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_26C67A77C(0xD00000000000001DLL, 0x800000026C6DFE80, &v20);
    _os_log_impl(&dword_26C66B000, v8, v9, "Running WFSetupClient::%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D6A7490](v11, -1, -1);
    MEMORY[0x26D6A7490](v10, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state + 1) == 4)
  {
    v12 = sub_26C6D8B08();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v2;
    v13[5] = a1;
    v14 = v2;
    v15 = a1;
    sub_26C68B290(0, 0, v6, &unk_26C6DD3A0, v13);
  }

  else
  {
    v19 = sub_26C6D8878();
    v16 = sub_26C6D8BA8();
    if (os_log_type_enabled(v19, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26C66B000, v19, v16, "Sending WFSetupData requires an encrypted connection.", v17, 2u);
      MEMORY[0x26D6A7490](v17, -1, -1);
    }

    v18 = v19;
  }
}

uint64_t sub_26C6B5AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_26C6B5B14, 0, 0);
}

uint64_t sub_26C6B5B14()
{
  v1 = *(v0 + 96);
  *(v0 + 104) = *(*(v0 + 88) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent);
  *(v0 + 40) = &type metadata for LegacySetupDataObject;
  *(v0 + 48) = &off_287D2B7C0;
  *(v0 + 16) = v1;
  *(v0 + 72) = 1;
  type metadata accessor for SFSessionAgent(0);
  sub_26C6C0BE4(&qword_2804A8D90, type metadata accessor for SFSessionAgent, &unk_26C6DCA10);
  swift_unknownObjectRetain();
  v2 = v1;
  v4 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B5C14, v4, v3);
}

uint64_t sub_26C6B5C14()
{
  sub_26C6A6570(v0 + 16);
  *(v0 + 112) = 0;
  swift_unknownObjectRelease();
  sub_26C6C0984(v0 + 16);

  return MEMORY[0x2822009F8](sub_26C6B5CB4, 0, 0);
}

uint64_t sub_26C6B5CDC()
{
  sub_26C6C0984(v0 + 16);
  **(v0 + 80) = *(v0 + 112) != 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26C6B5D50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_26C6D8B08();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_26C68AF90(0, 0, v3, &unk_26C6DD3B0, v5);
}

uint64_t sub_26C6B5E74()
{
  v9 = v0;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  v0[3] = __swift_project_value_buffer(v1, qword_2804AD240);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_26C67A77C(0xD000000000000017, 0x800000026C6E01A0, &v8);
    _os_log_impl(&dword_26C66B000, v2, v3, "Running WFSetupClient::%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v0[4] = *(v0[2] + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent);
  swift_unknownObjectRetain();
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_26C6B6040;

  return sub_26C6A5B00();
}

uint64_t sub_26C6B6040()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26C6B6190, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26C6B6190()
{
  v1 = *(v0 + 48);
  v2 = v1;
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BA8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 48);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26C66B000, v3, v4, "Error enabling service relaunch: %@", v7, 0xCu);
    sub_26C677B60(v8, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26C6B62F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26C6B6310, 0, 0);
}

uint64_t sub_26C6B6310()
{
  v21 = v0;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  *(v0 + 32) = __swift_project_value_buffer(v1, qword_2804AD240);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_26C67A77C(0xD00000000000002FLL, 0x800000026C6E0150, &v20);
    _os_log_impl(&dword_26C66B000, v2, v3, "Running WFSetupClient::%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state;
  *(v0 + 40) = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state;
  if (*(v6 + v7))
  {
    v8 = v6;
    v9 = sub_26C6D8878();
    v10 = sub_26C6D8BA8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      *(v0 + 64) = *(v6 + v7);
      v13 = sub_26C6D8A18();
      v15 = sub_26C67A77C(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_26C66B000, v9, v10, "CoreCDPSetupState is %s. Skipping startCDPApprovalServer.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x26D6A7490](v12, -1, -1);
      MEMORY[0x26D6A7490](v11, -1, -1);
    }

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    *(v6 + v7) = 1;
    v18 = swift_task_alloc();
    *(v0 + 48) = v18;
    *v18 = v0;
    v18[1] = sub_26C6B661C;
    v19 = *(v0 + 16);

    return sub_26C6C45A8(v19);
  }
}

uint64_t sub_26C6B661C(char a1)
{
  v3 = *v2;
  *(v3 + 65) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_26C6B6830;
  }

  else
  {
    v4 = sub_26C6B6734;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26C6B6734(uint64_t a1)
{
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 65);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_26C66B000, v2, v3, "startCDPApprovalServer returned success: %{BOOL,public}d", v5, 8u);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  v6 = *(v1 + 65);

  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  *(*(v1 + 24) + *(v1 + 40)) = v7;
  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_26C6B6830()
{
  v1 = v0[7];
  v2 = v1;
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BA8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26C66B000, v3, v4, "startCDPApprovalServer failed with error: %{public}@", v7, 0xCu);
    sub_26C677B60(v8, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  else
  {
  }

  *(v0[3] + v0[5]) = 3;
  v11 = v0[1];

  return v11();
}

uint64_t sub_26C6B69A0()
{
  v1[133] = v0;
  v2 = sub_26C6D8958();
  v1[134] = v2;
  v1[135] = *(v2 - 8);
  v1[136] = swift_task_alloc();
  v3 = sub_26C6D8978();
  v1[137] = v3;
  v1[138] = *(v3 - 8);
  v1[139] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6B6ABC, 0, 0);
}

uint64_t sub_26C6B6ABC()
{
  v12 = v0;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  v0[140] = v1;
  v0[141] = __swift_project_value_buffer(v1, qword_2804AD240);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_26C67A77C(0xD00000000000001DLL, 0x800000026C6E00C0, &v11);
    _os_log_impl(&dword_26C66B000, v2, v3, "Running WFSetupClient::%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v6 = v0[133];
  v7 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent;
  v0[142] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent;
  v0[143] = *(v6 + v7);
  v0[144] = type metadata accessor for SFSessionAgent(0);
  v0[145] = sub_26C6C0BE4(&qword_2804A8D90, type metadata accessor for SFSessionAgent, &unk_26C6DCA10);
  swift_unknownObjectRetain();
  v9 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B6CC0, v9, v8);
}

uint64_t sub_26C6B6CC0()
{
  sub_26C67749C(*(v0 + 1144) + 40, v0 + 800);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B6D38, 0, 0);
}

uint64_t sub_26C6B6D38()
{
  v1 = v0[103];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 100, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[108] = swift_getAssociatedTypeWitness();
  v0[109] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 105);
  sub_26C6D8B68();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 100);
  v0[146] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_incomingFileInfo;
  v0[147] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state;
  v0[148] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_interruptionHandler;
  v0[149] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
  v5 = swift_task_alloc();
  v0[150] = v5;
  *v5 = v0;
  v5[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 10, 0, 0);
}

uint64_t sub_26C6B6F4C()
{
  *(*v1 + 1208) = v0;

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_26C6B7060, 0, 0);
  }

  return result;
}

uint64_t sub_26C6B7060()
{
  v115 = v0;
  if (*(v0 + 136) == 255)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 840));

    v10 = *(v0 + 8);

    return v10();
  }

  v1 = *(v0 + 96);
  *(v0 + 144) = *(v0 + 80);
  *(v0 + 160) = v1;
  *(v0 + 176) = *(v0 + 112);
  *(v0 + 185) = *(v0 + 121);
  sub_26C6C0A28(v0 + 144, v0 + 208);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v114 = v5;
    *v4 = 136315138;
    sub_26C6C0A28(v0 + 208, v0 + 16);
    v6 = sub_26C6D8A18();
    v8 = v7;
    sub_26C6C0A84(v0 + 208);
    v9 = sub_26C67A77C(v6, v8, &v114);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26C66B000, v2, v3, "Session Agent Event Received: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  else
  {

    sub_26C6C0A84(v0 + 208);
  }

  sub_26C6C0A28(v0 + 144, v0 + 272);
  v12 = *(v0 + 328);
  if (v12 <= 2)
  {
    if (!*(v0 + 328))
    {
      v111 = *(v0 + 1104);
      v112 = *(v0 + 1096);
      v34 = *(v0 + 1088);
      v110 = *(v0 + 1080);
      v35 = *(v0 + 1072);
      v37 = *(v0 + 272);
      v36 = *(v0 + 280);
      v38 = *(v0 + 288);
      v109 = *(v0 + 1112);
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = v38;
      *(v40 + 32) = v37;
      *(v40 + 40) = v36;
      *(v0 + 496) = sub_26C6C0B54;
      *(v0 + 504) = v40;
      *(v0 + 464) = MEMORY[0x277D85DD0];
      *(v0 + 472) = 1107296256;
      *(v0 + 480) = sub_26C670B0C;
      *(v0 + 488) = &block_descriptor_98;
      v41 = _Block_copy((v0 + 464));

      sub_26C6D8968();
      *(v0 + 1056) = MEMORY[0x277D84F90];
      sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
      sub_26C6BFEC4();
      sub_26C6D8C88();
      MEMORY[0x26D6A6AF0](0, v109, v34, v41);
      _Block_release(v41);
      (*(v110 + 8))(v34, v35);
      (*(v111 + 8))(v109, v112);
      sub_26C6C0A84(v0 + 144);

      goto LABEL_47;
    }

    if (v12 == 1)
    {
      v13 = *(v0 + 272);
      *(v0 + 1216) = v13;
      v14 = v13;
      v15 = sub_26C6D8878();
      v16 = sub_26C6D8BB8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v114 = v18;
        *v17 = 136446210;
        v19 = v14;
        v20 = [v19 description];
        v21 = sub_26C6D8A08();
        v23 = v22;

        v24 = sub_26C67A77C(v21, v23, &v114);

        *(v17 + 4) = v24;
        _os_log_impl(&dword_26C66B000, v15, v16, "Successfully established encrypted channel: %{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x26D6A7490](v18, -1, -1);
        MEMORY[0x26D6A7490](v17, -1, -1);
      }

      *(v0 + 1224) = *(*(v0 + 1064) + *(v0 + 1136));
      *(v0 + 360) = &type metadata for SecurityRequest;
      *(v0 + 368) = &off_287D2D528;
      *(v0 + 336) = 1;
      v25 = swift_allocObject();
      *(v25 + 16) = 1;
      *(v0 + 376) = sub_26C6C0AD8;
      *(v0 + 384) = v25;
      *(v0 + 392) = 0;
      swift_unknownObjectRetain();
      v26 = sub_26C6D8AD8();
      v28 = v27;
      v29 = sub_26C6B8054;
      goto LABEL_14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C10, &qword_26C6DB508);
    if (swift_dynamicCast())
    {
      v44 = *(v0 + 1064);
      if (*(v44 + *(v0 + 1176) + 8) == 1)
      {
        *(v0 + 1240) = *(v44 + *(v0 + 1136));
        *(v0 + 424) = &type metadata for LegacyPreAuthResponseObject;
        *(v0 + 432) = &off_287D2E740;
        *(v0 + 456) = 1;
        swift_unknownObjectRetain();
        v26 = sub_26C6D8AD8();
        v28 = v45;
        v29 = sub_26C6B894C;
LABEL_14:

        return MEMORY[0x2822009F8](v29, v26, v28);
      }

      sub_26C6C0A84(v0 + 144);
      goto LABEL_42;
    }

    sub_26C676744((v0 + 272), v0 + 680);
    sub_26C67749C(v0 + 680, v0 + 720);
    v54 = sub_26C6D8878();
    v55 = sub_26C6D8BA8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v114 = v57;
      *v56 = 136446210;
      sub_26C67749C(v0 + 720, v0 + 760);
      v58 = sub_26C6D8A18();
      v60 = v59;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 720));
      v61 = sub_26C67A77C(v58, v60, &v114);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_26C66B000, v54, v55, "Received unexpected Object Type: %{public}s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x26D6A7490](v57, -1, -1);
      MEMORY[0x26D6A7490](v56, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 720));
    }

    v65 = (v0 + 680);
    goto LABEL_45;
  }

  if (v12 == 3)
  {
    v43 = *(v0 + 312);
    v42 = *(v0 + 320);
    *(v0 + 1248) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C00, &qword_26C6DB500);
    if (swift_dynamicCast())
    {
      sub_26C6BCB44(*(v0 + 74), v43, v42);
      goto LABEL_34;
    }

    if (swift_dynamicCast())
    {
      sub_26C6BD19C(*(v0 + 73), v43, v42);
      goto LABEL_34;
    }

    if (swift_dynamicCast())
    {
      v62 = *(v0 + 1024);
      *(v0 + 1256) = v62;
      v63 = *(v0 + 1032);
      v64 = swift_task_alloc();
      *(v0 + 1264) = v64;
      *v64 = v0;
      v64[1] = sub_26C6B8BA0;

      return sub_26C6B940C(v62, v63, v43, v42);
    }

    if (swift_dynamicCast())
    {
      v70 = *(v0 + 880);
      *(v0 + 1272) = v70;
      v71 = *(v0 + 888);
      *(v0 + 1280) = v71;
      v72 = *(v0 + 896);
      v73 = *(v0 + 904);
      *(v0 + 1288) = v73;
      v74 = swift_task_alloc();
      *(v0 + 1296) = v74;
      *v74 = v0;
      v74[1] = sub_26C6B8D88;

      return sub_26C6BB7B0(v70, v71, v72, v73, v43, v42);
    }

    if (swift_dynamicCast())
    {
      v75 = *(v0 + 992);
      *(v0 + 1304) = v75;
      v76 = *(v0 + 1000);
      *(v0 + 1312) = v76;
      *(v0 + 1008) = v75;
      *(v0 + 1016) = v76;
      v77 = swift_task_alloc();
      *(v0 + 1320) = v77;
      *v77 = v0;
      v77[1] = sub_26C6B8F80;

      return sub_26C6BBBB4((v0 + 1008), v43, v42);
    }

    if (swift_dynamicCast())
    {
      v78 = *(v0 + 1168);
      v79 = *(v0 + 1064);
      v80 = *(v0 + 912);
      v81 = *(v0 + 920);
      v82 = *(v0 + 936);
      v113 = *(v0 + 928);
      sub_26C67ED2C(v113, v82);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = *(v79 + v78);
      *(v0 + 1040) = v84;
      *(v79 + v78) = 0x8000000000000000;
      v67 = sub_26C689AC8(v80, v81);
      v85 = *(v84 + 16);
      v86 = (v68 & 1) == 0;
      v87 = __OFADD__(v85, v86);
      v88 = v85 + v86;
      if (!v87)
      {
        v89 = v68;
        if (*(v84 + 24) >= v88)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v108 = v67;
            sub_26C6CF180();
            v67 = v108;
          }
        }

        else
        {
          sub_26C6CEBB4(v88, isUniquelyReferenced_nonNull_native);
          v67 = sub_26C689AC8(v80, v81);
          if ((v89 & 1) != (v68 & 1))
          {

            return sub_26C6D8E78();
          }
        }

        v100 = *(v0 + 1040);
        if (v89)
        {
          v101 = (v100[7] + 16 * v67);
          v102 = *v101;
          v103 = v101[1];
          *v101 = v113;
          v101[1] = v82;
          sub_26C678418(v102, v103);
        }

        else
        {
          v100[(v67 >> 6) + 8] |= 1 << v67;
          v104 = (v100[6] + 16 * v67);
          *v104 = v80;
          v104[1] = v81;
          v105 = (v100[7] + 16 * v67);
          *v105 = v113;
          v105[1] = v82;
          v106 = v100[2];
          v87 = __OFADD__(v106, 1);
          v107 = v106 + 1;
          if (v87)
          {
            __break(1u);
            return MEMORY[0x282200310](v67, v68, v69);
          }

          v100[2] = v107;
        }

        *(*(v0 + 1064) + *(v0 + 1168)) = v100;
        swift_endAccess();
        v43(0, 0, MEMORY[0x277D84F98]);

        sub_26C678418(v113, v82);
LABEL_34:
        sub_26C6C0A84(v0 + 144);

LABEL_42:
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 272));
        goto LABEL_47;
      }

      __break(1u);
    }

    else
    {
      sub_26C676744((v0 + 272), v0 + 600);
      if (qword_2804A8598 == -1)
      {
LABEL_66:
        __swift_project_value_buffer(*(v0 + 1120), qword_2804AD228);
        sub_26C67749C(v0 + 600, v0 + 560);
        v90 = sub_26C6D8878();
        v91 = sub_26C6D8BA8();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v114 = v93;
          *v92 = 136446210;
          sub_26C67749C(v0 + 560, v0 + 640);
          v94 = sub_26C6D8A18();
          v96 = v95;
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 560));
          v97 = sub_26C67A77C(v94, v96, &v114);

          *(v92 + 4) = v97;
          _os_log_impl(&dword_26C66B000, v90, v91, "Received unexpected Request Type: %{public}s", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v93);
          MEMORY[0x26D6A7490](v93, -1, -1);
          MEMORY[0x26D6A7490](v92, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 560));
        }

        sub_26C676694();
        v98 = swift_allocError();
        *v99 = 0;
        v43(v98, 0, MEMORY[0x277D84F98]);

        v65 = (v0 + 600);
LABEL_45:
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
LABEL_46:
        sub_26C6C0A84(v0 + 144);
LABEL_47:
        __swift_mutable_project_boxed_opaque_existential_1(v0 + 840, *(v0 + 864));
        v66 = swift_task_alloc();
        *(v0 + 1200) = v66;
        *v66 = v0;
        v66[1] = sub_26C6B6F4C;
        v67 = v0 + 80;
        v68 = 0;
        v69 = 0;

        return MEMORY[0x282200310](v67, v68, v69);
      }
    }

    swift_once();
    goto LABEL_66;
  }

  if (v12 != 4)
  {
    v46 = sub_26C6D8878();
    v47 = sub_26C6D8BB8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26C66B000, v46, v47, "Server requests dismissal due to other session already paired", v48, 2u);
      MEMORY[0x26D6A7490](v48, -1, -1);
    }

    v49 = *(v0 + 1184);
    v50 = *(v0 + 1064);

    v51 = *(v50 + v49);
    if (v51)
    {
      v52 = *(*(v0 + 1064) + *(v0 + 1184) + 8);

      v51(v53);
      sub_26C676904(v51, v52);
    }

    goto LABEL_46;
  }

  v31 = *(v0 + 272);
  v30 = *(v0 + 280);
  *(v0 + 1328) = v31;
  *(v0 + 1336) = v30;
  v32 = *(v0 + 288);
  *(v0 + 1344) = v32;
  v33 = swift_task_alloc();
  *(v0 + 1352) = v33;
  *v33 = v0;
  v33[1] = sub_26C6B916C;

  return sub_26C6BD8F8(v31, v30, v32);
}