unint64_t sub_1DD96D6CC(unint64_t result)
{
  if (result >= 8)
  {
  }

  return result;
}

uint64_t sub_1DD96D708()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  v0 = sub_1DDA155B0();

  return sub_1DD96D6DC(v0);
}

double sub_1DD96D78C(uint64_t a1)
{
  type metadata accessor for JSONSchema();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = 2;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 88) = 0;
  return result;
}

uint64_t sub_1DD96D7E4(uint64_t a1)
{
  type metadata accessor for JSONSchema();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = xmmword_1DDA1A350;
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 80) = 2;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 88) = 0;

  return v2;
}

uint64_t sub_1DD96D84C(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 5;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = a1;
  *(v2 + 80) = 2;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 88) = 0;

  return v2;
}

uint64_t sub_1DD96D8DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1DD9AF11C(0, v1, 0);
    v4 = v30;
    v5 = (a1 + 72);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v9[2] = *(v5 - 3);
      v9[3] = v8;
      swift_bridgeObjectRetain_n();

      if (v10 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83498, &qword_1DDA1A5B0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1DDA1A2F0;
        v12 = v9[4];
        *(v11 + 32) = v12;
        *(v11 + 40) = 0;
        sub_1DD96D6CC(v12);
      }

      else
      {

        v11 = v9[4];
        sub_1DD96D6CC(v11);
      }

      v13 = v9[4];
      v9[4] = v11;
      sub_1DD96D364(v13);
      v30 = v4;
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DD9AF11C((v14 > 1), v15 + 1, 1);
        v4 = v30;
      }

      *(v4 + 16) = v15 + 1;
      v16 = (v4 + 24 * v15);
      v16[4] = v6;
      v16[5] = v7;
      v16[6] = v9;
      v5 += 48;
      --v1;
    }

    while (v1);
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (*(sub_1DD965EB0(v4) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83490, &qword_1DDA1C160);
    v17 = sub_1DDA151C0();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC8];
  }

  v30 = v17;

  sub_1DD96B400(v18, 1, &v30);

  v19 = v30;
  v20 = *(v4 + 16);
  if (v20)
  {
    v30 = v2;
    sub_1DD9AF0BC(0, v20, 0);
    v21 = v30;
    v22 = (v4 + 40);
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      v30 = v21;
      v25 = *(v21 + 16);
      v26 = *(v21 + 24);

      if (v25 >= v26 >> 1)
      {
        sub_1DD9AF0BC((v26 > 1), v25 + 1, 1);
        v21 = v30;
      }

      *(v21 + 16) = v25 + 1;
      v27 = v21 + 16 * v25;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v22 += 3;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for JSONSchema();
  v28 = swift_allocObject();
  *(v28 + 16) = 0u;
  *(v28 + 32) = 6;
  *(v28 + 40) = v19;
  *(v28 + 48) = v21;
  *(v28 + 56) = v21;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 0;
  *(v28 + 88) = 0;
  *(v28 + 96) = 0u;

  return v28;
}

uint64_t sub_1DD96DBE4(uint64_t a1)
{
  type metadata accessor for JSONSchema();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 7;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = 2;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 88) = a1;

  return v2;
}

uint64_t sub_1DD96DC58(uint64_t a1, uint64_t a2)
{
  sub_1DDA15070();

  MEMORY[0x1E12B7AB0](a1, a2);
  MEMORY[0x1E12B7AB0](39, 0xE100000000000000);
  type metadata accessor for JSONSchema();
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000024;
  *(v4 + 24) = 0x80000001DDA28050;
  *(v4 + 32) = 4;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0;
  *(v4 + 80) = 2;
  *(v4 + 88) = 0;
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;

  return v4;
}

unint64_t sub_1DD96DD3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD96DD88(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15610();
  if (!v1)
  {
    sub_1DD8FEEB0(v26, v28);
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v4 = sub_1DDA15450();
    v6 = v5;
    v3 = 1;
    *&v26[0] = 1;
    if (sub_1DDA14B70() != v4 || v7 != v6)
    {
      v9 = sub_1DDA15440();

      if (v9)
      {
        v3 = 1;
LABEL_12:

        goto LABEL_13;
      }

      v3 = 2;
      *&v26[0] = 2;
      if (sub_1DDA14B70() != v4 || v10 != v6)
      {
        v12 = sub_1DDA15440();

        if (v12)
        {
          v3 = 2;
          goto LABEL_12;
        }

        v3 = 3;
        *&v26[0] = 3;
        if (sub_1DDA14B70() != v4 || v13 != v6)
        {
          v14 = sub_1DDA15440();

          if (v14)
          {
            v3 = 3;
            goto LABEL_12;
          }

          v3 = 4;
          *&v26[0] = 4;
          if (sub_1DDA14B70() != v4 || v15 != v6)
          {
            v16 = sub_1DDA15440();

            if (v16)
            {
              v3 = 4;
              goto LABEL_12;
            }

            v3 = 5;
            *&v26[0] = 5;
            if (sub_1DDA14B70() != v4 || v17 != v6)
            {
              v18 = sub_1DDA15440();

              if (v18)
              {
                v3 = 5;
                goto LABEL_12;
              }

              v3 = 6;
              *&v26[0] = 6;
              if (sub_1DDA14B70() != v4 || v19 != v6)
              {
                v20 = sub_1DDA15440();

                if (v20)
                {
                  v3 = 6;
                  goto LABEL_12;
                }

                v3 = 7;
                *&v26[0] = 7;
                if (sub_1DDA14B70() != v4 || v21 != v6)
                {
                  v22 = sub_1DDA15440();

                  if ((v22 & 1) == 0)
                  {
                    v23 = sub_1DDA150D0();
                    swift_allocError();
                    v25 = v24;
                    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
                    sub_1DDA155F0();
                    *&v26[0] = 0;
                    *(&v26[0] + 1) = 0xE000000000000000;
                    sub_1DDA15070();

                    *&v26[0] = v4;
                    *(&v26[0] + 1) = v6;
                    v3 = v26;
                    MEMORY[0x1E12B7AB0](0xD000000000000014, 0x80000001DDA27FF0);
                    sub_1DDA150B0();
                    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6B00], v23);
                    swift_willThrow();
                    goto LABEL_13;
                  }

                  v3 = 7;
                  goto LABEL_12;
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_12;
  }

  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1DD90D378(v26, &qword_1ECD83470, &qword_1DDA1A5A0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83478, &qword_1DDA1A5A8);
  __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  sub_1DD96E28C();
  sub_1DDA15410();
  v3 = *&v26[0];
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_1DD96E28C()
{
  result = qword_1ECD83480;
  if (!qword_1ECD83480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83478, &qword_1DDA1A5A8);
    sub_1DD96A358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83480);
  }

  return result;
}

void sub_1DD96E310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 1u)
  {
    if (a7 != 2)
    {
      if (a7 != 3)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:

LABEL_12:

    return;
  }

  if (a7)
  {
    if (a7 != 1)
    {
      return;
    }

    goto LABEL_11;
  }

  sub_1DD96E3CC(a2, a3, a4 & 1);
}

void sub_1DD96E3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 1u)
  {
    if (a7 != 2)
    {
      if (a7 != 3)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:

LABEL_12:

    return;
  }

  if (a7)
  {
    if (a7 != 1)
    {
      return;
    }

    goto LABEL_11;
  }

  sub_1DD96E3D8(a2, a3, a4 & 1);
}

uint64_t sub_1DD96E4A0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD96E4FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1DD96E544(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DD96E6F4()
{
  result = qword_1ECD834B8;
  if (!qword_1ECD834B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD834B8);
  }

  return result;
}

unint64_t sub_1DD96E74C()
{
  result = qword_1ECD834C0;
  if (!qword_1ECD834C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD834C0);
  }

  return result;
}

unint64_t sub_1DD96E7A4()
{
  result = qword_1ECD834C8;
  if (!qword_1ECD834C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD834C8);
  }

  return result;
}

uint64_t sub_1DD96E7F8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DD940DFC(result, a2, a3);
  }

  return result;
}

uint64_t sub_1DD96E80C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DD96E820(result, a2, a3);
  }

  return result;
}

uint64_t sub_1DD96E820(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 3)
  {
  }

  return v3;
}

void sub_1DD96E950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6 == 1)
  {
  }

  else if (!(a6 >> 6))
  {
  }
}

void sub_1DD96E9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6 == 1)
  {
  }

  else if (!(a6 >> 6))
  {
  }
}

uint64_t sub_1DD96EA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD96EA98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD96EB00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1DD96EB64(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Vault(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DD975C58(v2, v8, type metadata accessor for Vault);

  v9 = sub_1DDA147F0();
  v10 = sub_1DDA14ED0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v23[0] = v12;
    *v11 = 136315650;
    v13 = *v8;
    v14 = v8[1];

    sub_1DD975CC0(v8, type metadata accessor for Vault);
    v15 = sub_1DD93FA54(v13, v14, v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1DD93FA54(a1, a2, v23);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_1DD93FA54(0x6465724372657355, 0xEF736C6169746E65, v23);
    _os_log_impl(&dword_1DD8F8000, v9, v10, "Creating vault value %s.%s with type: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v12, -1, -1);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
  }

  else
  {

    sub_1DD975CC0(v8, type metadata accessor for Vault);
  }

  sub_1DDA13230();
  swift_allocObject();
  v16 = sub_1DDA13220();
  sub_1DDA13190();
  swift_allocObject();
  v17 = sub_1DDA13180();
  sub_1DD929A28((v3 + 2), v23);
  v19 = *v3;
  v18 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD835A0, &qword_1DDA1AD78);
  v20 = swift_allocObject();

  sub_1DDA14800();
  sub_1DD8FEEB0(v23, (v20 + 6));
  v20[4] = v19;
  v20[5] = v18;
  v20[2] = a1;
  v20[3] = a2;
  v20[11] = sub_1DD976698;
  v20[12] = v16;
  v20[13] = sub_1DD976768;
  v20[14] = v17;

  return v20;
}

void *sub_1DD96EEA8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Vault(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DD975C58(v2, v8, type metadata accessor for Vault);

  v9 = sub_1DDA147F0();
  v10 = sub_1DDA14ED0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v23[0] = v12;
    *v11 = 136315650;
    v13 = *v8;
    v14 = v8[1];

    sub_1DD975CC0(v8, type metadata accessor for Vault);
    v15 = sub_1DD93FA54(v13, v14, v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1DD93FA54(a1, a2, v23);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_1DD93FA54(0x6C6C694272657355, 0xEF6E616C50676E69, v23);
    _os_log_impl(&dword_1DD8F8000, v9, v10, "Creating vault value %s.%s with type: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v12, -1, -1);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
  }

  else
  {

    sub_1DD975CC0(v8, type metadata accessor for Vault);
  }

  sub_1DDA13230();
  swift_allocObject();
  v16 = sub_1DDA13220();
  sub_1DDA13190();
  swift_allocObject();
  v17 = sub_1DDA13180();
  sub_1DD929A28((v3 + 2), v23);
  v19 = *v3;
  v18 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83588, &qword_1DDA1AD70);
  v20 = swift_allocObject();

  sub_1DDA14800();
  sub_1DD8FEEB0(v23, (v20 + 6));
  v20[4] = v19;
  v20[5] = v18;
  v20[2] = a1;
  v20[3] = a2;
  v20[11] = sub_1DD9765B8;
  v20[12] = v16;
  v20[13] = sub_1DD9765D4;
  v20[14] = v17;

  return v20;
}

void *sub_1DD96F1EC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Vault(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DD975C58(v2, v8, type metadata accessor for Vault);

  v9 = sub_1DDA147F0();
  v10 = sub_1DDA14ED0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v23[0] = v12;
    *v11 = 136315650;
    v13 = *v8;
    v14 = v8[1];

    sub_1DD975CC0(v8, type metadata accessor for Vault);
    v15 = sub_1DD93FA54(v13, v14, v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1DD93FA54(a1, a2, v23);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_1DD93FA54(1819242306, 0xE400000000000000, v23);
    _os_log_impl(&dword_1DD8F8000, v9, v10, "Creating vault value %s.%s with type: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v12, -1, -1);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
  }

  else
  {

    sub_1DD975CC0(v8, type metadata accessor for Vault);
  }

  sub_1DDA13230();
  swift_allocObject();
  v16 = sub_1DDA13220();
  sub_1DDA13190();
  swift_allocObject();
  v17 = sub_1DDA13180();
  sub_1DD929A28((v3 + 2), v23);
  v19 = *v3;
  v18 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83580, &qword_1DDA1AD68);
  v20 = swift_allocObject();

  sub_1DDA14800();
  sub_1DD8FEEB0(v23, (v20 + 6));
  v20[4] = v19;
  v20[5] = v18;
  v20[2] = a1;
  v20[3] = a2;
  v20[11] = sub_1DD97652C;
  v20[12] = v16;
  v20[13] = sub_1DD976568;
  v20[14] = v17;

  return v20;
}

void *sub_1DD96F51C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Vault(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DD975C58(v2, v8, type metadata accessor for Vault);

  v9 = sub_1DDA147F0();
  v10 = sub_1DDA14ED0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v23[0] = v12;
    *v11 = 136315650;
    v13 = *v8;
    v14 = v8[1];

    sub_1DD975CC0(v8, type metadata accessor for Vault);
    v15 = sub_1DD93FA54(v13, v14, v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1DD93FA54(a1, a2, v23);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_1DD93FA54(0x696D694C65746152, 0xEA00000000007374, v23);
    _os_log_impl(&dword_1DD8F8000, v9, v10, "Creating vault value %s.%s with type: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v12, -1, -1);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
  }

  else
  {

    sub_1DD975CC0(v8, type metadata accessor for Vault);
  }

  sub_1DDA13230();
  swift_allocObject();
  v16 = sub_1DDA13220();
  sub_1DDA13190();
  swift_allocObject();
  v17 = sub_1DDA13180();
  sub_1DD929A28((v3 + 2), v23);
  v19 = *v3;
  v18 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83568, &qword_1DDA1AD60);
  v20 = swift_allocObject();

  sub_1DDA14800();
  sub_1DD8FEEB0(v23, (v20 + 6));
  v20[4] = v19;
  v20[5] = v18;
  v20[2] = a1;
  v20[3] = a2;
  v20[11] = sub_1DD976470;
  v20[12] = v16;
  v20[13] = sub_1DD9764CC;
  v20[14] = v17;

  return v20;
}

uint64_t sub_1DD96F87C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v56 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D08, &unk_1DDA185D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v49 - v3;
  v5 = type metadata accessor for Vault(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v54 = &v49 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v58 = &v49 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v57 = &v49 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v49 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v49 - v18);
  v53 = v17;
  sub_1DDA14800();
  v20 = sub_1DDA147F0();
  v21 = sub_1DDA14ED0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v62[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_1DD93FA54(0xD000000000000010, 0x80000001DDA27030, v62);
    *(v22 + 12) = 2080;
    v61[0] = 1;
    v24 = sub_1DDA14B70();
    v26 = sub_1DD93FA54(v24, v25, v62);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_1DD8F8000, v20, v21, "Creating vault:%s security:%s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v23, -1, -1);
    MEMORY[0x1E12B8CE0](v22, -1, -1);
  }

  *v19 = 0xD000000000000010;
  v19[1] = 0x80000001DDA27030;
  v27 = type metadata accessor for ManagedKeychainValueStore(0);
  v19[5] = v27;
  v19[6] = &off_1F58F2328;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19 + 2);
  sub_1DDA141C0();
  sub_1DDA14040();
  v29 = sub_1DDA14050();
  v30 = *(v29 - 8);
  result = (*(v30 + 48))(v4, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = v59;
    v33 = HIDWORD(v59) & 1;
    (*(v30 + 32))(boxed_opaque_existential_1 + v27[5], v4, v29);
    v34 = v27[6];
    v35 = *MEMORY[0x1E69A1490];
    v36 = sub_1DDA14060();
    (*(*(v36 - 8) + 104))(boxed_opaque_existential_1 + v34, v35, v36);
    v37 = boxed_opaque_existential_1 + v27[7];
    *v37 = v32;
    v52 = v33;
    v37[4] = BYTE4(v32) & 1;
    sub_1DDA14800();
    *v16 = 0xD000000000000010;
    v16[1] = 0x80000001DDA27030;
    v16[5] = type metadata accessor for UserDefaultsValueStore(0);
    v16[6] = &off_1F58F2310;
    v38 = __swift_allocate_boxed_opaque_existential_1(v16 + 2);
    LOBYTE(v62[0]) = v33;
    v39 = v32;
    sub_1DD9C74C8(v32 | (v33 << 32), v38);
    sub_1DD94BC74(1, v62);
    v40 = v57;
    sub_1DD975C58(v19, v57, type metadata accessor for Vault);
    v41 = v58;
    sub_1DD975C58(v16, v58, type metadata accessor for Vault);
    sub_1DD929A8C(v62, v61);
    v42 = v54;
    sub_1DD975C58(v40, v54, type metadata accessor for Vault);
    v43 = v55;
    sub_1DD975C58(v41, v55, type metadata accessor for Vault);
    v53 = sub_1DD96EB64(0x69746E6564657263, 0xEB00000000736C61);
    v51 = sub_1DD96EEA8(0x50676E696C6C6962, 0xEB000000006E616CLL);
    v50 = sub_1DD96F1EC(0x696D694C65746172, 0xEB00000000646574);
    v44 = sub_1DD96F51C(0x696D694C65746172, 0xEA00000000007374);
    sub_1DD975CC0(v43, type metadata accessor for Vault);
    sub_1DD975CC0(v42, type metadata accessor for Vault);
    sub_1DD929A8C(v61, v60);
    v45 = type metadata accessor for OpenAIAuthenticationService(0);
    v46 = v56;
    *(v56 + 64) = v45;
    *(v46 + 72) = &off_1F58F1458;
    v47 = __swift_allocate_boxed_opaque_existential_1((v46 + 40));
    sub_1DD979F04(v60, 0x69746E6568747561, 0xED0000726F746163, 0, v47);
    sub_1DD926314(v61);
    sub_1DD975CC0(v41, type metadata accessor for Vault);
    sub_1DD975CC0(v40, type metadata accessor for Vault);
    sub_1DD926314(v62);
    sub_1DD975CC0(v19, type metadata accessor for Vault);
    v48 = v51;
    *v46 = v53;
    *(v46 + 8) = v48;
    *(v46 + 16) = v50;
    *(v46 + 24) = v44;
    *(v46 + 32) = v39;
    *(v46 + 36) = v52;
    return sub_1DD975CC0(v16, type metadata accessor for Vault);
  }

  return result;
}

uint64_t static OpenAIAuthenticator.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EE16F1A8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1DD96FFFC(&unk_1EE16F1B0, v2);
}

uint64_t OpenAIAuthenticator.credentials.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Credentials(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25[-1] - v11;
  v13 = v1[1];
  v24 = *v1;
  v25[0] = v13;
  *(v25 + 13) = *(v1 + 29);
  sub_1DD9122F0(&v25[-1] - v11);
  sub_1DD9702B0(v12, v10);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    v14 = type metadata accessor for OpenAIAuthenticator.Credentials(0);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  else
  {
    sub_1DD975BF0(v10, v6, type metadata accessor for Credentials);
    v16 = *(v6 + 3);
    *(a1 + 16) = *(v6 + 2);
    *(a1 + 24) = v16;
    *a1 = *v6;
    v17 = *(v3 + 28);
    v18 = type metadata accessor for OpenAIAuthenticator.Credentials(0);
    v19 = *(v18 + 28);
    v20 = sub_1DDA13680();
    (*(*(v20 - 8) + 32))(a1 + v19, &v6[v17], v20);
    v21 = *(v6 + 40);
    v22 = *(v6 + 7);
    v23 = *(v6 + 8);
    *(a1 + 32) = v6[32];
    *(a1 + 40) = v21;
    *(a1 + 56) = v22;
    *(a1 + 64) = v23;
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }
}

uint64_t sub_1DD9702B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OpenAIAuthenticator.startSignInSession(redirectURI:)(__int128 *a1@<X8>)
{
  v77 = type metadata accessor for OpenAIAuthenticator.Session(0);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1DDA134E0();
  v78 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1DDA13250();
  v71 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD929A28(v1 + 40, v93);
  sub_1DD96FFFC(v1, &v87);
  v7 = swift_allocObject();
  v8 = v90;
  v7[3] = v89;
  v7[4] = v8;
  v7[5] = v91;
  v9 = v88;
  v7[1] = v87;
  v7[2] = v9;
  v10 = sub_1DD9562F0(32);
  v69 = v11;
  v70 = v10;
  v12 = v11;
  v13 = sub_1DD9562F0(32);
  v72 = v14;
  v73 = v13;
  v15 = sub_1DDA14CC0();
  *(v15 + 16) = 32;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  v86 = v15;

  v16 = sub_1DD901910(v10, v12);
  v18 = v17;
  sub_1DD909CD4(v16, v17);
  v67 = v18;
  v68 = v16;
  sub_1DD974B4C(v16, v18, v16, v18, &v86);

  v20 = sub_1DD90D1C8(v19);
  v65 = v21;
  v66 = v20;

  v84 = sub_1DDA13580();
  v85 = v22;
  v82 = 43;
  v83 = 0xE100000000000000;
  v80 = 45;
  v81 = 0xE100000000000000;
  sub_1DD9313D4();
  v23 = sub_1DDA14F80();
  v25 = v24;

  v84 = v23;
  v85 = v25;
  v82 = 47;
  v83 = 0xE100000000000000;
  v80 = 95;
  v81 = 0xE100000000000000;
  v26 = sub_1DDA14F80();
  v28 = v27;

  v84 = v26;
  v85 = v28;
  v29 = v6;
  sub_1DDA13240();
  v30 = sub_1DDA14F70();
  v32 = v31;
  (*(v71 + 8))(v29, v74);

  v84 = v30;
  v85 = v32;
  v82 = 61;
  v83 = 0xE100000000000000;
  v33 = 0xE000000000000000;
  v80 = 0;
  v81 = 0xE000000000000000;
  v34 = sub_1DDA14F80();
  v36 = v35;

  sub_1DD909D28(v66, v65);
  v37 = v75;
  sub_1DD909D28(v68, v67);

  v92[0] = v73;
  v92[1] = v72;
  v92[2] = v34;
  v92[3] = v36;
  v92[4] = v70;
  v92[5] = v69;
  v95 = sub_1DD970E40;
  v96 = v7;
  v38 = v77;
  sub_1DD930D90(v92, a1);
  v39 = v38[5];
  __swift_project_boxed_opaque_existential_1(a1 + 6, *(a1 + 9));
  v40 = __swift_project_boxed_opaque_existential_1(a1 + 6, *(a1 + 9));
  v41 = type metadata accessor for OpenAIAuthenticationService(0);
  v42 = v78;
  v43 = v40 + *(v41 + 40);
  v44 = v76;
  (*(v78 + 16))(v76, v43, v37);
  v45 = a1[1];
  v87 = *a1;
  v88 = v45;
  v89 = a1[2];
  sub_1DD97A2B8(v44, a1 + v39);
  (*(v42 + 8))(v44, v37);
  v46 = __swift_project_boxed_opaque_existential_1(v93, v94);
  v47 = v46[18];
  if (v46[19])
  {
    v48 = v46[19];
  }

  else
  {
    v47 = 0;
    v48 = 0xE000000000000000;
  }

  v49 = (a1 + v38[6]);
  *v49 = v47;
  v49[1] = v48;
  v50 = __swift_project_boxed_opaque_existential_1(v93, v94);
  v51 = v50[21];
  if (v51)
  {
    v52 = v50[20];
  }

  else
  {
    v52 = 0;
  }

  if (v51)
  {
    v33 = v50[21];
  }

  sub_1DD975B7C(v92);
  v53 = (a1 + v38[7]);
  *v53 = v52;
  v53[1] = v33;
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v54 = sub_1DDA14810();
  __swift_project_value_buffer(v54, qword_1EE16FA80);
  v55 = v79;
  sub_1DD975C58(a1, v79, type metadata accessor for OpenAIAuthenticator.Session);
  v56 = sub_1DDA147F0();
  v57 = sub_1DDA14ED0();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v92[0] = v59;
    *v58 = 136380675;
    sub_1DD975D20(&qword_1ECD82CE8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v60 = sub_1DDA15400();
    v62 = v61;
    sub_1DD975CC0(v55, type metadata accessor for OpenAIAuthenticator.Session);
    v63 = sub_1DD93FA54(v60, v62, v92);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_1DD8F8000, v56, v57, "Starting session with authentication URL: %{private}s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x1E12B8CE0](v59, -1, -1);
    MEMORY[0x1E12B8CE0](v58, -1, -1);
  }

  else
  {

    sub_1DD975CC0(v55, type metadata accessor for OpenAIAuthenticator.Session);
  }
}

void sub_1DD970A90(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  v26 = *(a2 + 1);
  v6 = *(a2 + 3);
  v24 = *(a2 + 4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25[-1] - v11;
  sub_1DD975C58(a1, &v25[-1] - v11, type metadata accessor for UserCredentials);
  v13 = type metadata accessor for UserCredentials(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_1DD931B18(v12);
  if (v2)
  {
    sub_1DD90D378(v12, &qword_1ECD82D00, &qword_1DDA18B10);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DDA14810();
    __swift_project_value_buffer(v15, qword_1EE16FA80);
    v16 = v2;
    v17 = sub_1DDA147F0();
    v18 = sub_1DDA14EE0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1DD8F8000, v17, v18, "Failed store tokens: %@", v19, 0xCu);
      sub_1DD90D378(v20, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v20, -1, -1);
      MEMORY[0x1E12B8CE0](v19, -1, -1);
    }

    sub_1DD97641C();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();
  }

  else
  {
    sub_1DD90D378(v12, &qword_1ECD82D00, &qword_1DDA18B10);
    v25[0] = v4 & 1;
    v25[1] = v26;
    v25[2] = v5;
    v25[3] = v6;
    v25[4] = v24;
    sub_1DD931F58(v25);
    sub_1DD9314B0(2);
    v14 = type metadata accessor for ChatChunk.RateLimits(0);
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_1DD9316D8(v9);
    sub_1DD90D378(v9, &qword_1ECD82CF8, &unk_1DDA1AD50);
  }
}

uint64_t OpenAIAuthenticator.signOut()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD9165BC;

  return ExternalPartnerAuthenticator.signOut()();
}

uint64_t OpenAIAuthenticator.refreshBillingPlan()(uint64_t a1)
{
  *(v1 + 56) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1DD970F88;

  return ExternalPartnerAuthenticator.retrieveLatestBillingPlan()(v1 + 16);
}

uint64_t sub_1DD970F88()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1DD9710D0;
  }

  else
  {
    v2 = sub_1DD97109C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD97109C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v2;
  return (*(v0 + 8))();
}

uint64_t OpenAIAuthenticator.lastRateLimitBudgets.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for RateLimitBudgets(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D18, &qword_1DDA185E8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21[-1] - v14;
  v16 = v1[1];
  v20 = *v1;
  v21[0] = v16;
  *(v21 + 13) = *(v1 + 29);
  sub_1DD912800(&v21[-1] - v14);
  sub_1DD90ADB4(v15, v13, &qword_1ECD82D18, &qword_1DDA185E8);
  v17 = 1;
  if ((*(v4 + 48))(v13, 1, v3) != 1)
  {
    sub_1DD975BF0(v13, v9, type metadata accessor for RateLimitBudgets);
    sub_1DD975C58(v9, v7, type metadata accessor for RateLimitBudgets);
    sub_1DD97135C(v7, a1);
    sub_1DD975CC0(v9, type metadata accessor for RateLimitBudgets);
    v17 = 0;
  }

  sub_1DD90D378(v15, &qword_1ECD82D18, &qword_1DDA185E8);
  v18 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets(0);
  return (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
}

uint64_t sub_1DD97135C@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834D8, &unk_1DDA1A788);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets(0);
  v11 = v10[5];
  v12 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0);
  v13 = *(*(v12 - 8) + 56);
  v13(&a2[v11], 1, 1, v12);
  v14 = v10[6];
  v13(&a2[v14], 1, 1, v12);
  v17 = v10[7];
  v13(&a2[v17], 1, 1, v12);
  v18 = v10[8];
  v13(&a2[v18], 1, 1, v12);
  *a2 = *a1;
  v15 = type metadata accessor for RateLimitBudgets(0);
  sub_1DD90ADB4(&a1[v15[5]], v6, &qword_1ECD82830, &unk_1DDA16350);
  sub_1DD97302C(v6, v9);
  sub_1DD90AE1C(v9, &a2[v11], &qword_1ECD834D8, &unk_1DDA1A788);
  sub_1DD90ADB4(&a1[v15[6]], v6, &qword_1ECD82830, &unk_1DDA16350);
  sub_1DD97302C(v6, v9);
  sub_1DD90AE1C(v9, &a2[v14], &qword_1ECD834D8, &unk_1DDA1A788);
  sub_1DD90ADB4(&a1[v15[7]], v6, &qword_1ECD82830, &unk_1DDA16350);
  sub_1DD97302C(v6, v9);
  sub_1DD90AE1C(v9, &a2[v17], &qword_1ECD834D8, &unk_1DDA1A788);
  sub_1DD90ADB4(&a1[v15[8]], v6, &qword_1ECD82830, &unk_1DDA16350);
  sub_1DD97302C(v6, v9);
  sub_1DD975CC0(a1, type metadata accessor for RateLimitBudgets);
  return sub_1DD90AE1C(v9, &a2[v18], &qword_1ECD834D8, &unk_1DDA1A788);
}

uint64_t OpenAIAuthenticator.checkRateLimitBudgets()(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for RateLimitBudgets(0);
  v1[3] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[4] = v2;
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = sub_1DD97170C;

  return ExternalPartnerAuthenticator.retrieveLatestRateLimitBudgets()(v2);
}

uint64_t sub_1DD97170C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1DD9718E4;
  }

  else
  {
    v2 = sub_1DD971820;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD971820()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1DD975C58(v2, v1, type metadata accessor for RateLimitBudgets);
  sub_1DD97135C(v1, v3);
  sub_1DD975CC0(v2, type metadata accessor for RateLimitBudgets);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DD9718E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t OpenAIAuthenticator.SignOutFailure.hashValue.getter()
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](0);
  return sub_1DDA155B0();
}

uint64_t OpenAIAuthenticator.Credentials.userName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OpenAIAuthenticator.Credentials.userName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OpenAIAuthenticator.Credentials.email.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OpenAIAuthenticator.Credentials.email.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OpenAIAuthenticator.Credentials.billingPlan.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 OpenAIAuthenticator.Credentials.billingPlan.setter(char *a1)
{
  v2 = *a1;
  v6 = *(a1 + 8);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);

  *(v1 + 32) = v2;
  result = v6;
  *(v1 + 40) = v6;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t OpenAIAuthenticator.Credentials.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenAIAuthenticator.Credentials(0) + 28);
  v4 = sub_1DDA13680();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OpenAIAuthenticator.Credentials.expirationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OpenAIAuthenticator.Credentials(0) + 28);
  v4 = sub_1DDA13680();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

char *OpenAIAuthenticator.Credentials.credentialsID.getter()
{
  v1 = sub_1DDA148A0();
  *&v35 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DDA14890();
  v34 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v11 = *v0;
  v10 = v0[1];

  v12 = sub_1DD901910(v11, v10);
  v14 = v13;
  sub_1DD975D20(&qword_1ECD82800, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1DDA14880();
  sub_1DD909CD4(v12, v14);
  sub_1DD909AF4(v12, v14, v3);
  sub_1DD909D28(v12, v14);
  sub_1DDA14870();
  sub_1DD909D28(v12, v14);
  (*(v35 + 8))(v3, v1);
  v15 = *(v34 + 16);
  v32 = v9;
  v15(v7, v9, v4);
  sub_1DD975D20(&qword_1ECD82808, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
  v33 = v4;
  result = sub_1DDA14C70();
  v17 = v36;
  v18 = v37;
  v19 = *(v36 + 2);
  v20 = MEMORY[0x1E69E7CC0];
  if (v37 == v19)
  {
LABEL_2:
    (*(v34 + 8))(v32, v33);

    v36 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
    sub_1DD975D68();
    v21 = sub_1DDA14AE0();

    return v21;
  }

  else
  {
    v35 = xmmword_1DDA16320;
    v22 = v37;
    while ((v18 & 0x8000000000000000) == 0)
    {
      if (v22 >= *(v17 + 2))
      {
        goto LABEL_13;
      }

      v23 = v17[v22 + 32];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82810, &unk_1DDA16340);
      v24 = swift_allocObject();
      *(v24 + 16) = v35;
      *(v24 + 56) = MEMORY[0x1E69E7508];
      *(v24 + 64) = MEMORY[0x1E69E7558];
      *(v24 + 32) = v23;
      v25 = sub_1DDA14B40();
      v27 = v26;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DD908634(0, *(v20 + 2) + 1, 1, v20);
        v20 = result;
      }

      v29 = *(v20 + 2);
      v28 = *(v20 + 3);
      if (v29 >= v28 >> 1)
      {
        result = sub_1DD908634((v28 > 1), v29 + 1, 1, v20);
        v20 = result;
      }

      ++v22;
      *(v20 + 2) = v29 + 1;
      v30 = &v20[16 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v27;
      if (v19 == v22)
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

uint64_t static OpenAIAuthenticator.BillingPlan.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v7 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_1DDA15440();
}

uint64_t OpenAIAuthenticator.Credentials.hash(into:)(uint64_t a1)
{
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v1 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  type metadata accessor for OpenAIAuthenticator.Credentials(0);
  sub_1DDA13680();
  sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  return sub_1DDA14AD0();
}

uint64_t OpenAIAuthenticator.Credentials.hashValue.getter()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v0 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  type metadata accessor for OpenAIAuthenticator.Credentials(0);
  sub_1DDA13680();
  sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9723E8()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v0 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA13680();
  sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9724E4(uint64_t a1)
{
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v1 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA13680();
  sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  return sub_1DDA14AD0();
}

uint64_t sub_1DD9725C4(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v1 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA13680();
  sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

BOOL OpenAIAuthenticator.RateLimitBudgets.isRateLimited.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834D8, &unk_1DDA1A788);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v39 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v39 - v17);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v39 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v24 = (&v39 - v23);
  if (*v0)
  {
    return 1;
  }

  v39 = v22;
  v42 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets(0);
  sub_1DD90ADB4(&v0[v42[5]], v12, &qword_1ECD834D8, &unk_1DDA1A788);
  v40 = *(v14 + 48);
  v26 = v40(v12, 1, v13);
  v41 = v4;
  if (v26 == 1)
  {
    sub_1DD90D378(v12, &qword_1ECD834D8, &unk_1DDA1A788);
  }

  else
  {
    sub_1DD975BF0(v12, v24, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    v28 = *v24;
    v27 = v24[1];
    sub_1DD975CC0(v24, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    if (v28 >= v27)
    {
      return 1;
    }
  }

  sub_1DD90ADB4(&v0[v42[6]], v10, &qword_1ECD834D8, &unk_1DDA1A788);
  v29 = v40;
  if (v40(v10, 1, v13) == 1)
  {
    sub_1DD90D378(v10, &qword_1ECD834D8, &unk_1DDA1A788);
    v30 = v41;
  }

  else
  {
    sub_1DD975BF0(v10, v21, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    v31 = *v21;
    v32 = v21[1];
    sub_1DD975CC0(v21, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    v33 = v31 < v32;
    v30 = v41;
    if (!v33)
    {
      return 1;
    }
  }

  sub_1DD90ADB4(&v0[v42[7]], v7, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v29(v7, 1, v13) == 1)
  {
    sub_1DD90D378(v7, &qword_1ECD834D8, &unk_1DDA1A788);
  }

  else
  {
    sub_1DD975BF0(v7, v18, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    v34 = *v18;
    v35 = v18[1];
    sub_1DD975CC0(v18, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    if (v34 >= v35)
    {
      return 1;
    }
  }

  sub_1DD90ADB4(&v0[v42[8]], v30, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v29(v30, 1, v13) == 1)
  {
    sub_1DD90D378(v30, &qword_1ECD834D8, &unk_1DDA1A788);
    return 0;
  }

  v36 = v39;
  sub_1DD975BF0(v30, v39, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  v37 = *v36;
  v38 = v36[1];
  sub_1DD975CC0(v36, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  return v37 >= v38;
}

uint64_t sub_1DD97302C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RateLimitBudgets.Limits(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 24);
  v14 = sub_1DDA13680();
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    sub_1DD90D378(a1, &qword_1ECD82830, &unk_1DDA16350);
    sub_1DD90D378(&v12[v13], &qword_1ECD82838, &unk_1DDA185F0);
    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  else
  {
    sub_1DD975BF0(a1, v7, type metadata accessor for RateLimitBudgets.Limits);
    *v12 = *v7;
    sub_1DD90AE1C(v7 + *(v4 + 24), &v12[v13], &qword_1ECD82838, &unk_1DDA185F0);
    sub_1DD975C58(v12, a2, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    (*(v9 + 56))(a2, 0, 1, v8);
    return sub_1DD975CC0(v12, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  }
}

uint64_t OpenAIAuthenticator.RateLimitBudgets.Limits.hash(into:)(uint64_t a1)
{
  v2 = sub_1DDA13680();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v1[1]);
  v9 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0);
  sub_1DD90ADB4(v1 + *(v9 + 24), v8, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_1DDA15590();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1DDA15590();
  sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DDA14AD0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t OpenAIAuthenticator.RateLimitBudgets.Limits.hashValue.getter()
{
  v1 = sub_1DDA13680();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v0);
  MEMORY[0x1E12B8440](v0[1]);
  v8 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0);
  sub_1DD90ADB4(v0 + *(v8 + 24), v7, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1DDA15590();
    sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DDA14AD0();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9736D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DDA13680();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v2);
  MEMORY[0x1E12B8440](v2[1]);
  sub_1DD90ADB4(v2 + *(a2 + 24), v10, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1DDA15590();
    sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DDA14AD0();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1DDA155B0();
}

uint64_t OpenAIAuthenticator.RateLimitBudgets.hash(into:)(uint64_t a1)
{
  v2 = sub_1DDA13680();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v63 = &v60 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v62 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v60 - v11;
  v12 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v65 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v71 = (&v60 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v68 = (&v60 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v60 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834D8, &unk_1DDA1A788);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v72 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v69 = &v60 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v60 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v60 - v30;
  sub_1DDA15590();
  v75 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets(0);
  v32 = v75[5];
  v73 = v1;
  sub_1DD90ADB4(v1 + v32, v31, &qword_1ECD834D8, &unk_1DDA1A788);
  v70 = *(v13 + 48);
  if (v70(v31, 1, v12) == 1)
  {
    sub_1DDA15590();
    v33 = v66;
    v34 = v67;
  }

  else
  {
    sub_1DD975BF0(v31, v21, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v21);
    MEMORY[0x1E12B8440](v21[1]);
    v35 = v61;
    sub_1DD90ADB4(v21 + *(v12 + 24), v61, &qword_1ECD82838, &unk_1DDA185F0);
    v37 = v66;
    v36 = v67;
    if ((*(v66 + 48))(v35, 1, v67) == 1)
    {
      v34 = v36;
      v33 = v37;
      sub_1DDA15590();
    }

    else
    {
      v38 = v74;
      (*(v37 + 32))(v74, v35, v36);
      sub_1DDA15590();
      sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1DDA14AD0();
      v39 = v36;
      v33 = v37;
      v40 = v38;
      v34 = v39;
      (*(v37 + 8))(v40);
    }

    sub_1DD975CC0(v21, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  }

  v41 = v73;
  sub_1DD90ADB4(v73 + v75[6], v29, &qword_1ECD834D8, &unk_1DDA1A788);
  v42 = v70;
  v43 = v70(v29, 1, v12);
  v44 = v68;
  if (v43 == 1)
  {
    sub_1DDA15590();
    v45 = v33;
    v46 = v34;
  }

  else
  {
    sub_1DD975BF0(v29, v68, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v44);
    MEMORY[0x1E12B8440](v44[1]);
    v47 = v62;
    sub_1DD90ADB4(v44 + *(v12 + 24), v62, &qword_1ECD82838, &unk_1DDA185F0);
    v45 = v33;
    v48 = *(v33 + 48);
    v46 = v34;
    if (v48(v47, 1, v34) == 1)
    {
      sub_1DDA15590();
    }

    else
    {
      v49 = v74;
      (*(v45 + 32))(v74, v47, v46);
      sub_1DDA15590();
      sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1DDA14AD0();
      (*(v45 + 8))(v49, v46);
    }

    sub_1DD975CC0(v44, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  }

  v50 = v69;
  sub_1DD90ADB4(v41 + v75[7], v69, &qword_1ECD834D8, &unk_1DDA1A788);
  v51 = v42(v50, 1, v12);
  v52 = v71;
  if (v51 == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    sub_1DD975BF0(v50, v71, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v52);
    MEMORY[0x1E12B8440](v52[1]);
    v53 = v63;
    sub_1DD90ADB4(v52 + *(v12 + 24), v63, &qword_1ECD82838, &unk_1DDA185F0);
    if ((*(v45 + 48))(v53, 1, v46) == 1)
    {
      sub_1DDA15590();
    }

    else
    {
      v54 = v74;
      (*(v45 + 32))(v74, v53, v46);
      sub_1DDA15590();
      sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1DDA14AD0();
      (*(v45 + 8))(v54, v46);
    }

    sub_1DD975CC0(v52, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  }

  v55 = v72;
  sub_1DD90ADB4(v41 + v75[8], v72, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v42(v55, 1, v12) == 1)
  {
    return sub_1DDA15590();
  }

  v57 = v65;
  sub_1DD975BF0(v55, v65, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  sub_1DDA15590();
  MEMORY[0x1E12B8440](*v57);
  MEMORY[0x1E12B8440](v57[1]);
  v58 = v64;
  sub_1DD90ADB4(v57 + *(v12 + 24), v64, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v45 + 48))(v58, 1, v46) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v59 = v74;
    (*(v45 + 32))(v74, v58, v46);
    sub_1DDA15590();
    sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DDA14AD0();
    (*(v45 + 8))(v59, v46);
  }

  return sub_1DD975CC0(v57, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
}

uint64_t OpenAIAuthenticator.RateLimitBudgets.hashValue.getter()
{
  sub_1DDA15570();
  OpenAIAuthenticator.RateLimitBudgets.hash(into:)(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD974330()
{
  sub_1DDA15570();
  OpenAIAuthenticator.RateLimitBudgets.hash(into:)(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD974374(uint64_t a1)
{
  sub_1DDA15570();
  OpenAIAuthenticator.RateLimitBudgets.hash(into:)(v2);
  return sub_1DDA155B0();
}

uint64_t OpenAIAuthenticator.BillingPlan.planName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t OpenAIAuthenticator.BillingPlan.workspaceID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t OpenAIAuthenticator.BillingPlan.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  return sub_1DDA155B0();
}

uint64_t OpenAIAuthenticator.BillingPlan.hash(into:)(uint64_t a1)
{
  MEMORY[0x1E12B8440](*v1);
  sub_1DDA14BC0();

  return sub_1DDA14BC0();
}

uint64_t OpenAIAuthenticator.BillingPlan.hashValue.getter()
{
  v1 = *v0;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t OpenAIAuthenticator.Session.authorizationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenAIAuthenticator.Session(0) + 20);
  v4 = sub_1DDA134E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OpenAIAuthenticator.Session.openAIBundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for OpenAIAuthenticator.Session(0) + 24));

  return v1;
}

uint64_t OpenAIAuthenticator.Session.openAITeamID.getter()
{
  v1 = *(v0 + *(type metadata accessor for OpenAIAuthenticator.Session(0) + 28));

  return v1;
}

uint64_t OpenAIAuthenticator.Session.handleAuthorizationRedirect(url:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = type metadata accessor for Credentials(0);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97473C, 0, 0);
}

uint64_t sub_1DD97473C()
{
  v1 = v0[17];
  sub_1DD930D90(v1, (v0 + 2));
  sub_1DD975CC0(v1, type metadata accessor for OpenAIAuthenticator.Session);
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_1DD974808;
  v3 = v0[20];
  v4 = v0[16];

  return ExternalPartnerAuthenticator.AuthenticationSession.exchangeCredentialedURLForCredentials(url:)(v3, v4);
}

uint64_t sub_1DD974808()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  sub_1DD975B7C(v2 + 16);
  if (v0)
  {
    v3 = sub_1DD974A40;
  }

  else
  {
    v3 = sub_1DD974924;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD974924()
{
  v1 = v0[19];
  v2 = v0[18];
  v3 = v0[15];
  sub_1DD975BF0(v0[20], v1, type metadata accessor for Credentials);
  v4 = *(v1 + 24);
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 24) = v4;
  v5 = *(v1 + 8);
  *v3 = *v1;
  *(v3 + 8) = v5;
  v6 = *(v2 + 28);
  v7 = *(type metadata accessor for OpenAIAuthenticator.Credentials(0) + 28);
  v8 = sub_1DDA13680();
  (*(*(v8 - 8) + 32))(v3 + v7, v1 + v6, v8);
  v9 = *(v1 + 40);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  *(v3 + 32) = *(v1 + 32);
  *(v3 + 40) = v9;
  *(v3 + 56) = v10;
  *(v3 + 64) = v11;

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DD974A40()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1DD974AAC(uint64_t a1, uint64_t a2, void x2_0, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1DD975D20(a4, a5, a6);
  return sub_1DDA13170();
}

uint64_t sub_1DD974B4C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v5 = a4;
  v6 = a3;
  v25[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v25[0] = a1;
      LOWORD(v25[1]) = a2;
      BYTE2(v25[1]) = BYTE2(a2);
      BYTE3(v25[1]) = BYTE3(a2);
      BYTE4(v25[1]) = BYTE4(a2);
      BYTE5(v25[1]) = BYTE5(a2);
      v8 = v25 + BYTE6(a2);
      v9 = v25;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a5;
      v13 = sub_1DDA13320();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1DDA13350();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1DDA13340();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v7 != 2)
  {
    memset(v25, 0, 14);
    v9 = v25;
    v8 = v25;
    goto LABEL_24;
  }

  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1DDA13320();
  if (v13)
  {
    v14 = sub_1DDA13350();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1DDA13340();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v8 = v23;
  }

  else
  {
    v8 = 0;
  }

  v9 = v13;
  a3 = v6;
  a4 = v5;
  a5 = v10;
LABEL_24:
  sub_1DD9541E0(v9, v8, a3, a4, a5);
  return sub_1DD909D28(v6, v5);
}

__n128 sub_1DD974DC4@<Q0>(uint64_t a3@<X8>)
{
  sub_1DD9765F0();
  sub_1DDA13170();
  if (!v3)
  {
    result = v7;
    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 24) = v8;
    *(a3 + 32) = v9;
  }

  return result;
}

uint64_t _s5Anvil19OpenAIAuthenticatorV11CredentialsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v7 = a1[7];
  v8 = a1[8];
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  if ((a1[5] != *(a2 + 40) || a1[6] != *(a2 + 48)) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if ((v7 != v9 || v8 != v10) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for OpenAIAuthenticator.Credentials(0);

  return sub_1DDA13650();
}

BOOL _s5Anvil19OpenAIAuthenticatorV16RateLimitBudgetsV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834D8, &unk_1DDA1A788);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v63 = (&v55 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v64 = (&v55 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v55 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83558, &qword_1DDA1AD48);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v27 = &v55 - v26;
  if (*a1 != *a2)
  {
    return 0;
  }

  v56 = v24;
  v57 = v25;
  v55 = v11;
  v59 = v7;
  v60 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets(0);
  v61 = v18;
  v28 = v60[5];
  v29 = *(v18 + 48);
  v58 = a1;
  sub_1DD90ADB4(&a1[v28], v27, &qword_1ECD834D8, &unk_1DDA1A788);
  v62 = a2;
  sub_1DD90ADB4(&a2[v28], &v27[v29], &qword_1ECD834D8, &unk_1DDA1A788);
  v30 = *(v5 + 48);
  if (v30(v27, 1, v4) == 1)
  {
    if (v30(&v27[v29], 1, v4) == 1)
    {
      sub_1DD90D378(v27, &qword_1ECD834D8, &unk_1DDA1A788);
      v31 = v59;
      goto LABEL_9;
    }

LABEL_7:
    v32 = v27;
LABEL_29:
    sub_1DD90D378(v32, &qword_1ECD83558, &qword_1DDA1AD48);
    return 0;
  }

  sub_1DD90ADB4(v27, v17, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v30(&v27[v29], 1, v4) == 1)
  {
    sub_1DD975CC0(v17, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    goto LABEL_7;
  }

  v33 = &v27[v29];
  v31 = v59;
  sub_1DD975BF0(v33, v59, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  v34 = _s5Anvil19OpenAIAuthenticatorV16RateLimitBudgetsV6LimitsV2eeoiySbAG_AGtFZ_0(v17, v31);
  sub_1DD975CC0(v31, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  sub_1DD975CC0(v17, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  sub_1DD90D378(v27, &qword_1ECD834D8, &unk_1DDA1A788);
  if (!v34)
  {
    return 0;
  }

LABEL_9:
  v59 = v30;
  v35 = v60[6];
  v36 = *(v61 + 48);
  v37 = v58;
  sub_1DD90ADB4(&v58[v35], v23, &qword_1ECD834D8, &unk_1DDA1A788);
  v38 = &v62[v35];
  v39 = v59;
  sub_1DD90ADB4(v38, &v23[v36], &qword_1ECD834D8, &unk_1DDA1A788);
  if (v39(v23, 1, v4) == 1)
  {
    if (v39(&v23[v36], 1, v4) == 1)
    {
      sub_1DD90D378(v23, &qword_1ECD834D8, &unk_1DDA1A788);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v40 = v64;
  sub_1DD90ADB4(v23, v64, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v39(&v23[v36], 1, v4) == 1)
  {
    sub_1DD975CC0(v40, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
LABEL_14:
    v32 = v23;
    goto LABEL_29;
  }

  sub_1DD975BF0(&v23[v36], v31, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  v41 = _s5Anvil19OpenAIAuthenticatorV16RateLimitBudgetsV6LimitsV2eeoiySbAG_AGtFZ_0(v40, v31);
  sub_1DD975CC0(v31, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  sub_1DD975CC0(v40, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  sub_1DD90D378(v23, &qword_1ECD834D8, &unk_1DDA1A788);
  if (!v41)
  {
    return 0;
  }

LABEL_16:
  v42 = v60[7];
  v43 = *(v61 + 48);
  v44 = v39;
  v45 = v57;
  sub_1DD90ADB4(&v37[v42], v57, &qword_1ECD834D8, &unk_1DDA1A788);
  sub_1DD90ADB4(&v62[v42], v45 + v43, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v44(v45, 1, v4) == 1)
  {
    if (v44(v45 + v43, 1, v4) != 1)
    {
LABEL_28:
      v32 = v45;
      goto LABEL_29;
    }

    sub_1DD90D378(v45, &qword_1ECD834D8, &unk_1DDA1A788);
LABEL_22:
    v49 = v60[8];
    v50 = *(v61 + 48);
    v45 = v56;
    sub_1DD90ADB4(&v37[v49], v56, &qword_1ECD834D8, &unk_1DDA1A788);
    sub_1DD90ADB4(&v62[v49], v45 + v50, &qword_1ECD834D8, &unk_1DDA1A788);
    v51 = v59;
    if (v59(v45, 1, v4) == 1)
    {
      if (v51(v45 + v50, 1, v4) == 1)
      {
        sub_1DD90D378(v45, &qword_1ECD834D8, &unk_1DDA1A788);
        return 1;
      }

      goto LABEL_28;
    }

    v52 = v55;
    sub_1DD90ADB4(v45, v55, &qword_1ECD834D8, &unk_1DDA1A788);
    if (v51(v45 + v50, 1, v4) == 1)
    {
      v47 = v52;
      goto LABEL_27;
    }

    sub_1DD975BF0(v45 + v50, v31, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    v54 = _s5Anvil19OpenAIAuthenticatorV16RateLimitBudgetsV6LimitsV2eeoiySbAG_AGtFZ_0(v52, v31);
    sub_1DD975CC0(v31, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    sub_1DD975CC0(v52, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    sub_1DD90D378(v45, &qword_1ECD834D8, &unk_1DDA1A788);
    return v54;
  }

  v46 = v63;
  sub_1DD90ADB4(v45, v63, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v44(v45 + v43, 1, v4) == 1)
  {
    v47 = v46;
LABEL_27:
    sub_1DD975CC0(v47, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    goto LABEL_28;
  }

  sub_1DD975BF0(v45 + v43, v31, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  v48 = _s5Anvil19OpenAIAuthenticatorV16RateLimitBudgetsV6LimitsV2eeoiySbAG_AGtFZ_0(v46, v31);
  sub_1DD975CC0(v31, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  sub_1DD975CC0(v46, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  sub_1DD90D378(v45, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v48)
  {
    goto LABEL_22;
  }

  return 0;
}

BOOL _s5Anvil19OpenAIAuthenticatorV16RateLimitBudgetsV6LimitsV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1DDA13680();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A58, &qword_1DDA16E70);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = v12;
  v16 = *(type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0) + 24);
  v17 = *(v15 + 48);
  sub_1DD90ADB4(a1 + v16, v14, &qword_1ECD82838, &unk_1DDA185F0);
  sub_1DD90ADB4(a2 + v16, &v14[v17], &qword_1ECD82838, &unk_1DDA185F0);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_1DD90ADB4(v14, v10, &qword_1ECD82838, &unk_1DDA185F0);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v17], v4);
      sub_1DD975D20(&qword_1ECD82A60, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v20 = sub_1DDA14AF0();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_1DD90D378(v14, &qword_1ECD82838, &unk_1DDA185F0);
      return (v20 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1DD90D378(v14, &qword_1ECD82A58, &qword_1DDA16E70);
    return 0;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1DD90D378(v14, &qword_1ECD82838, &unk_1DDA185F0);
  return 1;
}

uint64_t sub_1DD975BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD975C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD975CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD975D20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DD975D68()
{
  result = qword_1ECD82820;
  if (!qword_1ECD82820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82818, &qword_1DDA1A780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82820);
  }

  return result;
}

unint64_t sub_1DD975DF0()
{
  result = qword_1ECD834E0;
  if (!qword_1ECD834E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD834E0);
  }

  return result;
}

unint64_t sub_1DD975E48()
{
  result = qword_1ECD834E8;
  if (!qword_1ECD834E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD834E8);
  }

  return result;
}

unint64_t sub_1DD975EA0()
{
  result = qword_1ECD834F0;
  if (!qword_1ECD834F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD834F0);
  }

  return result;
}

unint64_t sub_1DD975FD0()
{
  result = qword_1ECD83510;
  if (!qword_1ECD83510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83510);
  }

  return result;
}

unint64_t sub_1DD976028()
{
  result = qword_1ECD83518;
  if (!qword_1ECD83518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83518);
  }

  return result;
}

uint64_t sub_1DD9760E4(uint64_t a1)
{
  result = sub_1DDA13680();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DD976198(uint64_t a1)
{
  sub_1DD9762F4(319, &qword_1ECD83530, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD97625C(uint64_t a1)
{
  sub_1DD9762F4(319, &qword_1EE16F8F0, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD9762F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DDA14F50();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DD976390(uint64_t a1)
{
  result = sub_1DDA134E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DD97641C()
{
  result = qword_1ECD83560;
  if (!qword_1ECD83560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83560);
  }

  return result;
}

void *sub_1DD976568@<X0>(_BYTE *a3@<X8>)
{
  result = sub_1DDA13170();
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

unint64_t sub_1DD9765F0()
{
  result = qword_1ECD83590;
  if (!qword_1ECD83590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83590);
  }

  return result;
}

unint64_t sub_1DD976644()
{
  result = qword_1ECD83598;
  if (!qword_1ECD83598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83598);
  }

  return result;
}

uint64_t sub_1DD9766F4(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(0);
  sub_1DD975D20(a3, a4, a5);
  return sub_1DDA13210();
}

uint64_t sub_1DD9767D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 232) = a3;
  *(v4 + 48) = a1;
  *(v4 + 56) = a4;
  v5 = sub_1DDA147A0();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v6 = sub_1DDA14760();
  *(v4 + 96) = v6;
  *(v4 + 104) = *(v6 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v7 = sub_1DDA14810();
  *(v4 + 144) = v7;
  *(v4 + 152) = *(v7 - 8);
  *(v4 + 160) = swift_task_alloc();
  v8 = sub_1DDA14790();
  *(v4 + 168) = v8;
  *(v4 + 176) = *(v8 - 8);
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9769DC, 0, 0);
}

uint64_t sub_1DD9769DC()
{
  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 56), *(v0 + 144));
  sub_1DDA14770();
  sub_1DDA14750();
  v1 = sub_1DDA14780();
  v2 = sub_1DDA14F30();
  result = sub_1DDA14F40();
  if (result)
  {
    v4 = *(v0 + 48);
    if ((*(v0 + 232) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v1, v2, v6, v4, "", v5, 2u);
        MEMORY[0x1E12B8CE0](v5, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 40);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v7 = *(v0 + 136);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  (*(v9 + 16))(*(v0 + 128), v7, v8);
  sub_1DDA147D0();
  swift_allocObject();
  *(v0 + 192) = sub_1DDA147C0();
  v10 = *(v9 + 8);
  *(v0 + 200) = v10;
  *(v0 + 208) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v8);
  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = sub_1DD976BF0;

  return sub_1DD943E14(v0 + 16);
}

uint64_t sub_1DD976BF0()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1DD976F68;
  }

  else
  {
    v2 = sub_1DD976D04;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD976D04(uint64_t a1)
{
  v2 = sub_1DDA14780();
  sub_1DDA147B0();
  v3 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v5 = *(v1 + 48);
    if ((*(v1 + 232) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 88);
        v8 = *(v1 + 64);
        v7 = *(v1 + 72);

        sub_1DDA147E0();

        if ((*(v7 + 88))(v6, v8) == *MEMORY[0x1E69E93E8])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 72) + 8))(*(v1 + 88), *(v1 + 64));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x1E12B8CE0](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 32);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 200);
  v13 = *(v1 + 184);
  v14 = *(v1 + 168);
  v15 = *(v1 + 176);
  v16 = *(v1 + 120);
  v17 = *(v1 + 96);

  v12(v16, v17);
  (*(v15 + 8))(v13, v14);
  v18 = *(v1 + 16);

  v19 = *(v1 + 8);

  return v19(v18);
}

uint64_t sub_1DD976F68(uint64_t a1)
{
  v2 = sub_1DDA14780();
  sub_1DDA147B0();
  v3 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v5 = *(v1 + 48);
    if ((*(v1 + 232) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 72);
        v7 = *(v1 + 80);
        v8 = *(v1 + 64);

        sub_1DDA147E0();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x1E69E93E8])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 72) + 8))(*(v1 + 80), *(v1 + 64));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x1E12B8CE0](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = v2;
  v13 = *(v1 + 200);
  v14 = *(v1 + 184);
  v15 = *(v1 + 168);
  v16 = *(v1 + 176);
  v17 = *(v1 + 112);
  v18 = *(v1 + 96);

  v13(v17, v18);
  swift_willThrow();

  (*(v16 + 8))(v14, v15);

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_1DD9771D8()
{
  v0 = sub_1DDA14810();
  __swift_allocate_value_buffer(v0, qword_1ECDA20C8);
  __swift_project_value_buffer(v0, qword_1ECDA20C8);
  return sub_1DDA14800();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1DD9772F0()
{
  v0 = sub_1DDA14810();
  __swift_allocate_value_buffer(v0, qword_1ECDA20F8);
  __swift_project_value_buffer(v0, qword_1ECDA20F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD835B8, &qword_1DDA1AD80);
  sub_1DDA14B70();
  return sub_1DDA14800();
}

uint64_t sub_1DD977434(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DDA14810();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1DDA14800();
}

uint64_t sub_1DD9774B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = a7;
  *(v7 + 160) = a4;
  *(v7 + 168) = a5;
  *(v7 + 352) = a3;
  *(v7 + 152) = a1;
  v8 = sub_1DDA147A0();
  *(v7 + 192) = v8;
  *(v7 + 200) = *(v8 - 8);
  *(v7 + 208) = swift_task_alloc();
  v9 = sub_1DDA14760();
  *(v7 + 216) = v9;
  *(v7 + 224) = *(v9 - 8);
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  v10 = sub_1DDA14810();
  *(v7 + 256) = v10;
  *(v7 + 264) = *(v10 - 8);
  *(v7 + 272) = swift_task_alloc();
  v11 = sub_1DDA14790();
  *(v7 + 280) = v11;
  *(v7 + 288) = *(v11 - 8);
  *(v7 + 296) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9776B0, 0, 0);
}

uint64_t sub_1DD9776B0()
{
  (*(*(v0 + 264) + 16))(*(v0 + 272), *(v0 + 160), *(v0 + 256));
  sub_1DDA14770();
  sub_1DDA14750();
  v1 = sub_1DDA14780();
  v2 = sub_1DDA14F30();
  v3 = sub_1DDA14F40();
  if (v3)
  {
    v6 = *(v0 + 152);
    if ((*(v0 + 352) & 1) == 0)
    {
      if (v6)
      {
LABEL_9:
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v1, v2, v8, v6, "", v7, 2u);
        MEMORY[0x1E12B8CE0](v7, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v3, v4, v5);
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 144);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v9 = *(v0 + 248);
  v10 = *(v0 + 216);
  v11 = *(v0 + 224);
  v12 = *(v0 + 168);
  (*(v11 + 16))(*(v0 + 240), v9, v10);
  sub_1DDA147D0();
  swift_allocObject();
  *(v0 + 304) = sub_1DDA147C0();
  v13 = *(v11 + 8);
  *(v0 + 312) = v13;
  *(v0 + 320) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v10);
  *(v0 + 328) = __swift_project_boxed_opaque_existential_1((v12 + 176), *(v12 + 200));
  v3 = sub_1DD9778A4;
  v4 = v12;
  v5 = 0;

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DD9778A4()
{
  v1 = *(v0 + 168);
  swift_beginAccess();
  sub_1DD928DF4(v1 + 216, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DD977928, 0, 0);
}

uint64_t sub_1DD977928()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = sub_1DD913FF8();
  v5 = v4;
  v0[42] = v4;
  sub_1DD9291B0((v0 + 2));
  v6 = *(v2 + 144);
  v7 = *(v2 + 152);
  v8 = swift_task_alloc();
  v0[43] = v8;
  *v8 = v0;
  v8[1] = sub_1DD977A0C;
  v9 = v0[22];

  return sub_1DD911340(v3, v5, v6, v7, v9, v1);
}

uint64_t sub_1DD977A0C(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 120) = v1;
  *(v2 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD977B28, 0, 0);
}

uint64_t sub_1DD977B28(uint64_t a1)
{
  v2 = sub_1DDA14780();
  sub_1DDA147B0();
  v3 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v5 = *(v1 + 152);
    if ((*(v1 + 352) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 200);
        v7 = *(v1 + 208);
        v8 = *(v1 + 192);

        sub_1DDA147E0();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x1E69E93E8])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 200) + 8))(*(v1 + 208), *(v1 + 192));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x1E12B8CE0](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 136);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 312);
  v13 = *(v1 + 296);
  v14 = v2;
  v15 = *(v1 + 280);
  v16 = *(v1 + 288);
  v17 = *(v1 + 232);
  v18 = *(v1 + 216);
  v20 = *(v1 + 128);

  v12(v17, v18);
  (*(v16 + 8))(v13, v15);

  v19 = *(v1 + 8);

  return v19(v20);
}

uint64_t sub_1DD977D78(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = a6;
  *(v6 + 296) = a3;
  *(v6 + 64) = a1;
  *(v6 + 72) = a4;
  v7 = sub_1DDA147A0();
  *(v6 + 96) = v7;
  *(v6 + 104) = *(v7 - 8);
  *(v6 + 112) = swift_task_alloc();
  v8 = sub_1DDA14760();
  *(v6 + 120) = v8;
  *(v6 + 128) = *(v8 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  v9 = sub_1DDA14810();
  *(v6 + 160) = v9;
  *(v6 + 168) = *(v9 - 8);
  *(v6 + 176) = swift_task_alloc();
  v10 = sub_1DDA14790();
  *(v6 + 184) = v10;
  *(v6 + 192) = *(v10 - 8);
  *(v6 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD977F6C, 0, 0);
}

uint64_t sub_1DD977F6C()
{
  (*(*(v0 + 168) + 16))(*(v0 + 176), *(v0 + 72), *(v0 + 160));
  sub_1DDA14770();
  sub_1DDA14750();
  v1 = sub_1DDA14780();
  v2 = sub_1DDA14F30();
  v3 = sub_1DDA14F40();
  if (v3)
  {
    v11 = *(v0 + 64);
    if ((*(v0 + 296) & 1) == 0)
    {
      if (v11)
      {
LABEL_9:
        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v1, v2, v13, v11, "", v12, 2u);
        MEMORY[0x1E12B8CE0](v12, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v11 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v11 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return MEMORY[0x1EEE6DBF8](v3, v4, v5, v6, v7, v8, v9, v10);
      }

      if (v11 >> 16 <= 0x10)
      {
        v11 = (v0 + 56);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v14 = *(v0 + 152);
  v15 = *(v0 + 120);
  v16 = *(v0 + 128);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);
  (*(v16 + 16))(*(v0 + 144), v14, v15);
  sub_1DDA147D0();
  swift_allocObject();
  *(v0 + 208) = sub_1DDA147C0();
  v19 = *(v16 + 8);
  *(v0 + 216) = v19;
  *(v0 + 224) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v14, v15);
  *(v0 + 232) = *v18;
  *(v0 + 240) = v18[1];
  *(v0 + 248) = v18[2];
  v20 = swift_allocObject();
  *(v0 + 256) = v20;
  *(v20 + 16) = 0;

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829D8, &qword_1DDA16DF8);
  v22 = swift_task_alloc();
  *(v0 + 264) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD835C0, &qword_1DDA1ADB0);
  v24 = swift_task_alloc();
  *(v0 + 272) = v24;
  *v24 = v0;
  v24[1] = sub_1DD978248;
  v8 = &unk_1DDA1ADA8;
  v3 = v0 + 40;
  v4 = v21;
  v5 = v23;
  v6 = 0;
  v7 = 0;
  v9 = v22;
  v10 = v21;

  return MEMORY[0x1EEE6DBF8](v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD978248()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD978360, 0, 0);
}

uint64_t sub_1DD978360()
{
  v1 = v0[32];
  v2 = v0[30];
  v0[35] = v0[5];
  swift_beginAccess();
  v3 = *(v1 + 16);
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_1DD978478;

  return v6(v3);
}

uint64_t sub_1DD978478()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD978574, 0, 0);
}

uint64_t sub_1DD978574()
{

  v1 = sub_1DDA14780();
  sub_1DDA147B0();
  v2 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v4 = *(v0 + 64);
    if ((*(v0 + 296) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v6 = *(v0 + 104);
        v5 = *(v0 + 112);
        v7 = *(v0 + 96);

        sub_1DDA147E0();

        if ((*(v6 + 88))(v5, v7) == *MEMORY[0x1E69E93E8])
        {
          v8 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
          v8 = "";
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v1, v2, v10, v4, v8, v9, 2u);
        MEMORY[0x1E12B8CE0](v9, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 48);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v11 = *(v0 + 216);
  v12 = *(v0 + 200);
  v13 = *(v0 + 184);
  v14 = *(v0 + 192);
  v15 = *(v0 + 136);
  v16 = *(v0 + 120);

  v11(v15, v16);
  (*(v14 + 8))(v12, v13);

  v17 = *(v0 + 8);
  v18 = *(v0 + 280);

  return v17(v18);
}

uint64_t sub_1DD9787D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  *(v6 + 248) = a3;
  *(v6 + 48) = a1;
  *(v6 + 56) = a4;
  v7 = sub_1DDA147A0();
  *(v6 + 80) = v7;
  *(v6 + 88) = *(v7 - 8);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  v8 = sub_1DDA14760();
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  v9 = sub_1DDA14810();
  *(v6 + 160) = v9;
  *(v6 + 168) = *(v9 - 8);
  *(v6 + 176) = swift_task_alloc();
  v10 = sub_1DDA14790();
  *(v6 + 184) = v10;
  *(v6 + 192) = *(v10 - 8);
  *(v6 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9789E4, 0, 0);
}

uint64_t sub_1DD9789E4()
{
  (*(*(v0 + 168) + 16))(*(v0 + 176), *(v0 + 56), *(v0 + 160));
  sub_1DDA14770();
  sub_1DDA14750();
  v1 = sub_1DDA14780();
  v2 = sub_1DDA14F30();
  result = sub_1DDA14F40();
  if (result)
  {
    v4 = *(v0 + 48);
    if ((*(v0 + 248) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v1, v2, v6, v4, "", v5, 2u);
        MEMORY[0x1E12B8CE0](v5, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 40);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v7 = *(v0 + 152);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  (*(v9 + 16))(*(v0 + 144), v7, v8);
  sub_1DDA147D0();
  swift_allocObject();
  *(v0 + 208) = sub_1DDA147C0();
  v10 = *(v9 + 8);
  *(v0 + 216) = v10;
  *(v0 + 224) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v8);
  v11 = swift_task_alloc();
  *(v0 + 232) = v11;
  *v11 = v0;
  v11[1] = sub_1DD978BFC;
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);

  return sub_1DD942EF8(v0 + 16, v12, v13);
}

uint64_t sub_1DD978BFC()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1DD978F74;
  }

  else
  {
    v2 = sub_1DD978D10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD978D10(uint64_t a1)
{
  v2 = sub_1DDA14780();
  sub_1DDA147B0();
  v3 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v5 = *(v1 + 48);
    if ((*(v1 + 248) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 104);
        v8 = *(v1 + 80);
        v7 = *(v1 + 88);

        sub_1DDA147E0();

        if ((*(v7 + 88))(v6, v8) == *MEMORY[0x1E69E93E8])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 88) + 8))(*(v1 + 104), *(v1 + 80));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x1E12B8CE0](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 32);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 216);
  v13 = *(v1 + 200);
  v14 = *(v1 + 184);
  v15 = *(v1 + 192);
  v16 = *(v1 + 136);
  v17 = *(v1 + 112);

  v12(v16, v17);
  (*(v15 + 8))(v13, v14);
  v18 = *(v1 + 16);

  v19 = *(v1 + 8);

  return v19(v18);
}

uint64_t sub_1DD978F74(uint64_t a1)
{
  v2 = sub_1DDA14780();
  sub_1DDA147B0();
  v3 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v5 = *(v1 + 48);
    if ((*(v1 + 248) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 88);
        v7 = *(v1 + 96);
        v8 = *(v1 + 80);

        sub_1DDA147E0();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x1E69E93E8])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 88) + 8))(*(v1 + 96), *(v1 + 80));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x1E12B8CE0](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = v2;
  v13 = *(v1 + 216);
  v14 = *(v1 + 200);
  v15 = *(v1 + 184);
  v16 = *(v1 + 192);
  v17 = *(v1 + 128);
  v18 = *(v1 + 112);

  v13(v17, v18);
  swift_willThrow();

  (*(v16 + 8))(v14, v15);

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_1DD9791E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 232) = a3;
  *(v7 + 32) = a1;
  v8 = sub_1DDA147A0();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  v9 = sub_1DDA14760();
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  v10 = sub_1DDA14810();
  *(v7 + 136) = v10;
  *(v7 + 144) = *(v10 - 8);
  *(v7 + 152) = swift_task_alloc();
  v11 = sub_1DDA14790();
  *(v7 + 160) = v11;
  *(v7 + 168) = *(v11 - 8);
  *(v7 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9793DC, 0, 0);
}

uint64_t sub_1DD9793DC()
{
  (*(*(v0 + 144) + 16))(*(v0 + 152), *(v0 + 40), *(v0 + 136));
  sub_1DDA14770();
  sub_1DDA14750();
  v1 = sub_1DDA14780();
  v2 = sub_1DDA14F30();
  result = sub_1DDA14F40();
  if (result)
  {
    v4 = *(v0 + 32);
    if ((*(v0 + 232) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v1, v2, v6, v4, "", v5, 2u);
        MEMORY[0x1E12B8CE0](v5, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_10:

  v7 = *(v0 + 128);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v10 = *(v0 + 48);
  (*(v9 + 16))(*(v0 + 120), v7, v8);
  sub_1DDA147D0();
  swift_allocObject();
  *(v0 + 184) = sub_1DDA147C0();
  v11 = *(v9 + 8);
  *(v0 + 192) = v11;
  *(v0 + 200) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v8);
  if (*v10)
  {
    v12 = *(v0 + 56);
    v13 = *(v0 + 64);

    v14 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
    result = sub_1DD9C13D0(v12, v13, v14);
    if (v16)
    {
      sub_1DD928DD4(result, v15, 1);
      v17 = &unk_1F58EC580;
      goto LABEL_20;
    }

LABEL_17:
    if (v15 == 2)
    {
      sub_1DD928DD4(result, 2uLL, 0);
      v17 = &unk_1F58EC530;
    }

    else
    {
      sub_1DD928DD4(result, v15, 0);
      v17 = &unk_1F58EC558;
    }

LABEL_20:
    *(v0 + 208) = v17;
    v22 = swift_task_alloc();
    *(v0 + 216) = v22;
    *v22 = v0;
    v22[1] = sub_1DD9798A0;

    return sub_1DD9424E4(v17);
  }

  v18 = sub_1DD9404B4(MEMORY[0x1E69E7CC0]);
  v19 = sub_1DDA14780();
  sub_1DDA147B0();
  v20 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v21 = *(v0 + 32);
    if ((*(v0 + 232) & 1) == 0)
    {
      if (!v21)
      {
        __break(1u);
        goto LABEL_17;
      }

      goto LABEL_27;
    }

    if (!(v21 >> 32))
    {
      if ((*(v0 + 32) & 0xFFFFF800) == 0xD800)
      {
LABEL_39:
        __break(1u);
        return result;
      }

      if (v21 >> 16 <= 0x10)
      {
        v21 = (v0 + 16);
LABEL_27:
        v23 = *(v0 + 80);
        v24 = *(v0 + 88);
        v25 = *(v0 + 72);

        sub_1DDA147E0();

        if ((*(v23 + 88))(v24, v25) == *MEMORY[0x1E69E93E8])
        {
          v26 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
          v26 = "";
        }

        v27 = swift_slowAlloc();
        *v27 = 0;
        v28 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v19, v20, v28, v21, v26, v27, 2u);
        MEMORY[0x1E12B8CE0](v27, -1, -1);
        goto LABEL_31;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_31:
  v29 = *(v0 + 192);
  v30 = *(v0 + 176);
  v31 = *(v0 + 160);
  v32 = *(v0 + 168);
  v33 = *(v0 + 112);
  v34 = *(v0 + 96);

  v29(v33, v34);
  (*(v32 + 8))(v30, v31);

  v35 = *(v0 + 8);

  return v35(v18);
}

uint64_t sub_1DD9798A0(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD9799C0, 0, 0);
}

uint64_t sub_1DD9799C0(uint64_t a1)
{
  v2 = *(v1 + 224);
  v3 = sub_1DDA14780();
  sub_1DDA147B0();
  v4 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v6 = *(v1 + 32);
    if ((*(v1 + 232) & 1) == 0)
    {
      if (v6)
      {
LABEL_9:
        v7 = *(v1 + 80);
        v8 = *(v1 + 88);
        v9 = *(v1 + 72);

        sub_1DDA147E0();

        if ((*(v7 + 88))(v8, v9) == *MEMORY[0x1E69E93E8])
        {
          v10 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 80) + 8))(*(v1 + 88), *(v1 + 72));
          v10 = "";
        }

        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v3, v4, v12, v6, v10, v11, 2u);
        MEMORY[0x1E12B8CE0](v11, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v13 = *(v1 + 192);
  v14 = *(v1 + 176);
  v15 = *(v1 + 160);
  v16 = *(v1 + 168);
  v17 = *(v1 + 112);
  v18 = *(v1 + 96);

  v13(v17, v18);
  (*(v16 + 8))(v14, v15);

  v19 = *(v1 + 8);

  return v19(v2);
}

uint64_t sub_1DD979C10(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DD9165BC;

  return sub_1DD944B98(a1, a2, v7, v6);
}

uint64_t type metadata accessor for OpenAIAuthenticationService(uint64_t a1)
{
  result = qword_1EE16F6E0;
  if (!qword_1EE16F6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD979D38(uint64_t a1)
{
  sub_1DD979E5C(319, qword_1EE16F100, &protocol descriptor for ExternalLanguageModelOverrides);
  if (v1 <= 0x3F)
  {
    sub_1DD979E5C(319, &qword_1EE16F0F8, &protocol descriptor for ExternalLanguageModelProviding);
    if (v2 <= 0x3F)
    {
      sub_1DD979EB8(319, &unk_1EE16F3B8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1DDA134E0();
        if (v4 <= 0x3F)
        {
          sub_1DD979EB8(319, qword_1EE16F298, &type metadata for TicketingType);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1DD979E5C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1DD979EB8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DDA14F50();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1DD979F04@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  *(a5 + 144) = xmmword_1DDA1ADE0;
  *(a5 + 160) = xmmword_1DDA1ADF0;
  *(a5 + 176) = 1;
  sub_1DDA134C0();
  v13 = sub_1DDA134E0();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = type metadata accessor for OpenAIAuthenticationService(0);
    (*(v14 + 32))(a5 + *(v16 + 40), v12, v13);
    if ((a4 & 1) == 0)
    {
      sub_1DD981DC8(v28);
      *(a5 + 24) = &type metadata for Overrides.BlackPowder;
      *(a5 + 32) = &off_1F58F1660;
      v22 = swift_allocObject();
      *a5 = v22;
      v23 = v28[3];
      *(v22 + 48) = v28[2];
      *(v22 + 64) = v23;
      *(v22 + 80) = v28[4];
      *(v22 + 96) = v29;
      v24 = v28[1];
      *(v22 + 16) = v28[0];
      *(v22 + 32) = v24;
      if (qword_1EE16F290 != -1)
      {
        swift_once();
      }

      *(a5 + 64) = &type metadata for ChatGPTProvider;
      *(a5 + 72) = &off_1F58EF288;
      v25 = swift_allocObject();
      *(a5 + 40) = v25;
      sub_1DD9183EC(&qword_1EE16FA98, v25 + 16);
      result = sub_1DD928DD4(a2, a3, 0);
      v21 = 0;
      goto LABEL_8;
    }

    v27 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v17 = result;
      internalBuild = MobileGestalt_get_internalBuild();

      *(a5 + 24) = &type metadata for Overrides.ChatGPTXcode;
      *(a5 + 32) = &off_1F58F16E8;
      v19 = swift_allocObject();
      *a5 = v19;
      sub_1DD928DD4(a2, a3, 1);
      strcpy((v19 + 16), "chatgptXcode");
      *(v19 + 29) = 0;
      *(v19 + 30) = -5120;
      *(v19 + 32) = 0xD00000000000001CLL;
      *(v19 + 40) = 0x80000001DDA27170;
      *(v19 + 48) = 0xD00000000000001CLL;
      *(v19 + 56) = 0x80000001DDA27190;
      *(v19 + 64) = 0xD00000000000001CLL;
      *(v19 + 72) = 0x80000001DDA27190;
      *(v19 + 80) = 0xD00000000000001CLL;
      *(v19 + 88) = 0x80000001DDA271B0;
      *(v19 + 96) = internalBuild;
      *(v19 + 104) = v27;
      *(a5 + 64) = &type metadata for ChatGPTProvider;
      *(a5 + 72) = &off_1F58EF288;
      v20 = swift_allocObject();
      *(a5 + 40) = v20;
      result = sub_1DD929A28(a5, v20 + 24);
      *(v20 + 16) = 4;
      *(v20 + 64) = 1;
      v21 = 2;
LABEL_8:
      *(a5 + *(v16 + 44)) = v21;
      v26 = a1[1];
      *(a5 + 80) = *a1;
      *(a5 + 96) = v26;
      *(a5 + 112) = a1[2];
      *(a5 + 121) = *(a1 + 41);
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD97A2B8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22 = a3;
  v23 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v24 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83050, &qword_1DDA1AE90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1DDA132F0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA132E0();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v11 + 32);
    v21 = v10;
    v15(v13, v9, v10);
    MEMORY[0x1E12B6190](0xD000000000000010, 0x80000001DDA28210);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83608, &qword_1DDA1AE98);
    sub_1DDA13290();
    *(swift_allocObject() + 16) = xmmword_1DDA1AE00;
    v16 = v4[3];
    v17 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v16);
    (*(v17 + 8))(v16, v17);
    sub_1DDA13260();

    sub_1DDA13260();
    sub_1DDA13440();
    sub_1DDA13260();

    sub_1DDA13260();
    sub_1DDA13260();
    sub_1DDA13260();
    sub_1DDA13260();
    sub_1DDA132B0();
    v18 = v24;
    sub_1DDA132C0();
    v19 = sub_1DDA134E0();
    v20 = *(v19 - 8);
    result = (*(v20 + 48))(v18, 1, v19);
    if (result != 1)
    {
      (*(v11 + 8))(v13, v21);
      return (*(v20 + 32))(v22, v18, v19);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD97A780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[132] = a8;
  v9[131] = v8;
  v9[130] = a7;
  v9[129] = a6;
  v9[128] = a5;
  v9[127] = a4;
  v9[126] = a3;
  v9[125] = a2;
  v9[124] = a1;
  v10 = sub_1DDA13680();
  v9[133] = v10;
  v9[134] = *(v10 - 8);
  v9[135] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v9[136] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97A898, 0, 0);
}

uint64_t sub_1DD97A898()
{
  v1 = *(v0 + 1088);
  sub_1DD929A8C(*(v0 + 1048) + 80, v0 + 928);
  sub_1DDA134C0();
  v2 = sub_1DDA134E0();
  *(v0 + 1096) = v2;
  v3 = *(v2 - 8);
  *(v0 + 1104) = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 1048);
    v6 = *(v0 + 1040);
    v7 = *(v0 + 1024);
    v25 = *(v0 + 1032);
    v26 = *(v0 + 1016);
    v8 = *(v0 + 1008);
    v9 = *(v0 + 1000);
    v10 = v5[3];
    v11 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v10);
    v12 = *(v11 + 8);

    v13 = v12(v10, v11);
    *(v0 + 640) = 0xD000000000000012;
    *(v0 + 648) = 0x80000001DDA26F10;
    *(v0 + 656) = v9;
    *(v0 + 664) = v8;
    *(v0 + 672) = v25;
    *(v0 + 680) = v6;
    *(v0 + 688) = v13;
    *(v0 + 696) = v14;
    *(v0 + 704) = 0u;
    *(v0 + 720) = v26;
    *(v0 + 728) = v7;

    v15 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
    *(v0 + 1112) = v15;
    v16 = *(v0 + 688);
    *(v0 + 768) = *(v0 + 672);
    *(v0 + 784) = v16;
    v17 = *(v0 + 720);
    *(v0 + 800) = *(v0 + 704);
    *(v0 + 816) = v17;
    v18 = *(v0 + 656);
    *(v0 + 736) = *(v0 + 640);
    *(v0 + 752) = v18;
    sub_1DD90FDF0(v0 + 640, v0 + 832);
    sub_1DD97FC94();
    v19 = sub_1DDA13210();
    *(v0 + 1120) = v19;
    *(v0 + 1128) = v20;
    v21 = v19;
    v22 = v20;
    sub_1DD90FE28(v0 + 640);
    v23 = swift_task_alloc();
    *(v0 + 1136) = v23;
    *v23 = v0;
    v23[1] = sub_1DD97AB70;
    v24 = *(v0 + 1088);

    return sub_1DD950D48(v24, v21, v22, 0, v15, 0, 1, 0);
  }

  return result;
}

uint64_t sub_1DD97AB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[143] = a1;
  v5[144] = a2;
  v5[145] = v3;

  if (v3)
  {
    v6 = sub_1DD97B240;
  }

  else
  {

    v6 = sub_1DD97ACCC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD97ACCC()
{
  v60 = v0;
  v1 = *(v0 + 1160);
  sub_1DD97FB78();
  sub_1DDA13170();
  if (v1)
  {
    v2 = *(v0 + 1152);
    v3 = *(v0 + 1144);
    v4 = *(v0 + 1128);
    v5 = *(v0 + 1120);
    sub_1DD90FE28(v0 + 640);
    sub_1DD909D28(v3, v2);
    sub_1DD909D28(v5, v4);
    v6 = *(v0 + 1104);
    v7 = *(v0 + 1096);
    v8 = *(v0 + 1088);
    sub_1DD926314(v0 + 928);
    (*(v6 + 8))(v8, v7);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v9 = sub_1DDA14810();
    __swift_project_value_buffer(v9, qword_1EE16FA80);
    v10 = v1;
    v11 = sub_1DDA147F0();
    v12 = sub_1DDA14EE0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1DD8F8000, v11, v12, "Failed get authentication tokens request: %@", v13, 0xCu);
      sub_1DD90D378(v14, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v14, -1, -1);
      MEMORY[0x1E12B8CE0](v13, -1, -1);
    }

    v17 = *(v0 + 1056);

    *v17 = 1;
    *(v0 + 985) = 1;
    sub_1DD930D3C();
    swift_willThrowTypedImpl();

    v18 = *(v0 + 8);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v19 = sub_1DDA14810();
    __swift_project_value_buffer(v19, qword_1ECDA20F8);
    v20 = *(v0 + 48);
    *(v0 + 168) = *(v0 + 64);
    v21 = *(v0 + 96);
    *(v0 + 184) = *(v0 + 80);
    *(v0 + 200) = v21;
    v22 = *(v0 + 32);
    *(v0 + 120) = *(v0 + 16);
    *(v0 + 136) = v22;
    *(v0 + 216) = *(v0 + 112);
    *(v0 + 152) = v20;
    sub_1DD90FD34(v0 + 120, v0 + 224);
    sub_1DD90FD34(v0 + 120, v0 + 328);
    v23 = sub_1DDA147F0();
    v24 = sub_1DDA14ED0();
    sub_1DD90FD6C(v0 + 120);
    v25 = os_log_type_enabled(v23, v24);
    v58 = *(v0 + 1152);
    v26 = *(v0 + 1144);
    v27 = *(v0 + 1128);
    v28 = *(v0 + 1120);
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v59 = v30;
      *v29 = 136315138;
      v31 = *(v0 + 168);
      v32 = *(v0 + 200);
      *(v0 + 600) = *(v0 + 184);
      *(v0 + 616) = v32;
      *(v0 + 632) = *(v0 + 216);
      v33 = *(v0 + 136);
      *(v0 + 536) = *(v0 + 120);
      *(v0 + 552) = v33;
      *(v0 + 568) = *(v0 + 152);
      *(v0 + 584) = v31;
      v34 = sub_1DDA14B70();
      v36 = sub_1DD93FA54(v34, v35, &v59);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_1DD8F8000, v23, v24, "Decoded response: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E12B8CE0](v30, -1, -1);
      MEMORY[0x1E12B8CE0](v29, -1, -1);
      sub_1DD90FE28(v0 + 640);
    }

    else
    {
      sub_1DD90FE28(v0 + 640);
      sub_1DD90FD6C(v0 + 120);
    }

    sub_1DD909D28(v28, v27);
    sub_1DD909D28(v26, v58);

    v37 = *(v0 + 1104);
    v38 = *(v0 + 1096);
    v39 = *(v0 + 1088);
    v40 = *(v0 + 1080);
    v41 = *(v0 + 1072);
    v42 = *(v0 + 1064);
    v43 = *(v0 + 992);
    v44 = *(v0 + 96);
    *(v0 + 496) = *(v0 + 80);
    *(v0 + 512) = v44;
    *(v0 + 528) = *(v0 + 112);
    v45 = *(v0 + 32);
    *(v0 + 432) = *(v0 + 16);
    *(v0 + 448) = v45;
    v46 = *(v0 + 64);
    *(v0 + 464) = *(v0 + 48);
    *(v0 + 480) = v46;
    sub_1DD926314(v0 + 928);
    (*(v37 + 8))(v39, v38);
    v47 = *(v0 + 440);
    *v43 = *(v0 + 432);
    v43[1] = v47;
    v48 = *(v0 + 456);
    v43[2] = *(v0 + 448);
    v43[3] = v48;

    sub_1DDA13660();
    v49 = *(v0 + 496);
    v50 = type metadata accessor for UserTokens(0);
    sub_1DDA135F0();
    (*(v41 + 8))(v40, v42);
    v51 = v43 + v50[7];
    *v51 = v49;
    v51[8] = 0;
    v52 = *(v0 + 528);
    v53 = (v43 + v50[8]);
    *v53 = *(v0 + 520);
    v53[1] = v52;
    v55 = *(v0 + 464);
    v54 = *(v0 + 472);

    sub_1DD90FD6C(v0 + 432);
    v56 = (v43 + v50[9]);
    *v56 = v55;
    v56[1] = v54;

    v18 = *(v0 + 8);
  }

  return v18();
}

uint64_t sub_1DD97B240()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  sub_1DD90FE28(v0 + 640);
  sub_1DD909D28(v2, v1);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1104);
  v5 = *(v0 + 1096);
  v6 = *(v0 + 1088);
  sub_1DD926314(v0 + 928);
  (*(v4 + 8))(v6, v5);
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v7 = sub_1DDA14810();
  __swift_project_value_buffer(v7, qword_1EE16FA80);
  v8 = v3;
  v9 = sub_1DDA147F0();
  v10 = sub_1DDA14EE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v3;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1DD8F8000, v9, v10, "Failed get authentication tokens request: %@", v11, 0xCu);
    sub_1DD90D378(v12, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v12, -1, -1);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
  }

  v15 = *(v0 + 1056);

  *v15 = 1;
  *(v0 + 985) = 1;
  sub_1DD930D3C();
  swift_willThrowTypedImpl();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1DD97B45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[36] = v4;
  v5[37] = a4;
  v5[34] = a2;
  v5[35] = a3;
  v5[33] = a1;
  v6 = sub_1DDA13420();
  v5[38] = v6;
  v5[39] = *(v6 - 8);
  v5[40] = swift_task_alloc();
  v7 = sub_1DDA134E0();
  v5[41] = v7;
  v5[42] = *(v7 - 8);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97B58C, 0, 0);
}

uint64_t sub_1DD97B58C()
{
  v1 = v0[43];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[38];
  v13 = v0[34];
  v14 = v0[35];
  __swift_project_boxed_opaque_existential_1((v0[36] + 40), *(v0[36] + 64));
  sub_1DD910E48(v1);
  v0[31] = 6647087;
  v0[32] = 0xE300000000000000;
  (*(v4 + 104))(v5, *MEMORY[0x1E6968F70], v6);
  sub_1DD9313D4();
  sub_1DDA134D0();
  (*(v4 + 8))(v5, v6);
  v7 = *(v2 + 8);
  v0[45] = v7;
  v0[46] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829C0, &unk_1DDA16DE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DDA16320;
  strcpy((inited + 32), "Authorization");
  *(inited + 46) = -4864;
  MEMORY[0x1E12B7AB0](v13, v14);
  *(inited + 48) = 0x20726572616542;
  *(inited + 56) = 0xE700000000000000;
  v9 = sub_1DD93FF08(inited);
  v0[47] = v9;
  swift_setDeallocating();
  sub_1DD90D378(inited + 32, &qword_1ECD829C8, &qword_1DDA1E380);
  v10 = swift_task_alloc();
  v0[48] = v10;
  *v10 = v0;
  v10[1] = sub_1DD97B7E8;
  v11 = v0[44];

  return sub_1DD950D48(v11, 0, 0xF000000000000000, 1, v9, 0, 1, 0);
}

uint64_t sub_1DD97B7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[49] = a1;
  v5[50] = a2;
  v5[51] = v3;

  if (v3)
  {
    v6 = sub_1DD97BDCC;
  }

  else
  {

    v6 = sub_1DD97B940;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD97B940()
{
  v38 = v0;
  v1 = *(v0 + 408);
  sub_1DD97F918();
  sub_1DDA13170();
  if (v1)
  {
    sub_1DD909D28(*(v0 + 392), *(v0 + 400));
    (*(v0 + 360))(*(v0 + 352), *(v0 + 328));
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v2 = sub_1DDA14810();
    __swift_project_value_buffer(v2, qword_1EE16FA80);
    v3 = v1;
    v4 = sub_1DDA147F0();
    v5 = sub_1DDA14EE0();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_1DD8F8000, v4, v5, "Failed get user info request: %@", v6, 0xCu);
      sub_1DD90D378(v7, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v7, -1, -1);
      MEMORY[0x1E12B8CE0](v6, -1, -1);
    }

    v10 = *(v0 + 296);

    sub_1DD962448(3u);
    *v10 = 2;
    *(v0 + 129) = 2;
    sub_1DD930D3C();
    swift_willThrowTypedImpl();

    v11 = *(v0 + 8);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1DDA14810();
    __swift_project_value_buffer(v12, qword_1ECDA20F8);
    v13 = *(v0 + 144);
    v14 = *(v0 + 160);
    v33 = *(v0 + 152);
    v34 = *(v0 + 136);
    v15 = *(v0 + 176);
    v32 = *(v0 + 168);
    v31 = *(v0 + 184);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v16 = sub_1DDA147F0();
    v17 = sub_1DDA14ED0();

    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 392);
    v19 = *(v0 + 400);
    v21 = *(v0 + 360);
    v35 = *(v0 + 328);
    v36 = *(v0 + 352);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v30 = v21;
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136315138;
      *(v0 + 192) = v34;
      *(v0 + 200) = v13;
      *(v0 + 208) = v33;
      *(v0 + 216) = v14;
      *(v0 + 224) = v32;
      *(v0 + 232) = v15;
      *(v0 + 240) = v31;
      v24 = sub_1DDA14B70();
      v26 = sub_1DD93FA54(v24, v25, &v37);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1DD8F8000, v16, v17, "Decoded response: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E12B8CE0](v23, -1, -1);
      MEMORY[0x1E12B8CE0](v22, -1, -1);
      sub_1DD909D28(v20, v19);

      v30(v36, v35);
    }

    else
    {
      sub_1DD909D28(v20, v19);

      v21(v36, v35);
    }

    v27 = *(v0 + 264);
    v28 = *(v0 + 152);
    *(v0 + 80) = *(v0 + 136);
    *(v0 + 96) = v28;
    *(v0 + 112) = *(v0 + 168);
    *(v0 + 128) = *(v0 + 184);
    sub_1DD904060(v0 + 80, v27);

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_1DD97BDCC()
{
  v1 = *(v0 + 408);
  (*(v0 + 360))(*(v0 + 352), *(v0 + 328));
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1EE16FA80);
  v3 = v1;
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14EE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Failed get user info request: %@", v6, 0xCu);
    sub_1DD90D378(v7, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v10 = *(v0 + 296);

  sub_1DD962448(3u);
  *v10 = 2;
  *(v0 + 129) = 2;
  sub_1DD930D3C();
  swift_willThrowTypedImpl();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DD97BFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = v4;
  v5[24] = a4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97C068, 0, 0);
}

uint64_t sub_1DD97C068()
{
  v1 = v0[22];
  __swift_project_boxed_opaque_existential_1((v0[23] + 40), *(v0[23] + 64));
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_1DD97C128;
  v3 = v0[21];

  return sub_1DD911340(v3, v1, 0, 0, 0, 0);
}

uint64_t sub_1DD97C128(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD97C228, 0, 0);
}

uint64_t sub_1DD97C228()
{
  v1 = v0[25];
  sub_1DD929A8C(v0[23] + 80, (v0 + 2));
  sub_1DDA134C0();
  v2 = sub_1DDA134E0();
  v0[28] = v2;
  v3 = *(v2 - 8);
  v0[29] = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[30] = v5;
    *v5 = v0;
    v5[1] = sub_1DD97C370;
    v6 = v0[27];
    v7 = v0[25];

    return sub_1DD950D48(v7, 0, 0xF000000000000000, 1, v6, 0, 1, 0);
  }

  return result;
}

uint64_t sub_1DD97C370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[31] = a1;
  v5[32] = a2;
  v5[33] = v3;

  if (v3)
  {
    v6 = sub_1DD97C904;
  }

  else
  {

    v6 = sub_1DD97C4C8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD97C4C8()
{
  v44 = v0;
  v1 = *(v0 + 264);
  sub_1DD97FA28();
  sub_1DDA13170();
  if (v1)
  {
    sub_1DD909D28(*(v0 + 248), *(v0 + 256));
    v2 = *(v0 + 224);
    v3 = *(v0 + 232);
    v4 = *(v0 + 200);
    sub_1DD926314(v0 + 16);
    (*(v3 + 8))(v4, v2);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v5 = sub_1DDA14810();
    __swift_project_value_buffer(v5, qword_1EE16FA80);
    v6 = v1;
    v7 = sub_1DDA147F0();
    v8 = sub_1DDA14EE0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1DD8F8000, v7, v8, "Failed get workspace request: %@", v9, 0xCu);
      sub_1DD90D378(v10, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v10, -1, -1);
      MEMORY[0x1E12B8CE0](v9, -1, -1);
    }

    v13 = *(v0 + 192);

    sub_1DD962448(7u);
    *v13 = 2;
    *(v0 + 73) = 2;
    sub_1DD930D3C();
    swift_willThrowTypedImpl();

    v14 = *(v0 + 8);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DDA14810();
    __swift_project_value_buffer(v15, qword_1ECDA20F8);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 96);
    v20 = *(v0 + 104);
    v19 = *(v0 + 112);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v21 = sub_1DDA147F0();
    v22 = sub_1DDA14ED0();

    v23 = os_log_type_enabled(v21, v22);
    v25 = *(v0 + 248);
    v24 = *(v0 + 256);
    if (v23)
    {
      v42 = *(v0 + 256);
      v26 = swift_slowAlloc();
      v41 = v25;
      v27 = swift_slowAlloc();
      v43 = v27;
      *v26 = 136315138;
      *(v0 + 120) = v17;
      *(v0 + 128) = v16;
      *(v0 + 136) = v18;
      *(v0 + 144) = v20;
      *(v0 + 152) = v19;
      v28 = sub_1DDA14B70();
      v40 = v20;
      v30 = sub_1DD93FA54(v28, v29, &v43);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1DD8F8000, v21, v22, "Decoded response: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v31 = v27;
      v32 = v40;
      MEMORY[0x1E12B8CE0](v31, -1, -1);
      v33 = v26;
      v34 = v18;
      MEMORY[0x1E12B8CE0](v33, -1, -1);
      sub_1DD909D28(v41, v42);
    }

    else
    {

      sub_1DD909D28(v25, v24);

      v32 = v20;
      v34 = v18;
    }

    v35 = *(v0 + 224);
    v36 = *(v0 + 232);
    v37 = *(v0 + 200);
    v38 = *(v0 + 160);
    sub_1DD926314(v0 + 16);
    (*(v36 + 8))(v37, v35);

    *v38 = v34;
    *(v38 + 8) = v32;
    *(v38 + 16) = v19;
    *(v38 + 24) = v17;
    *(v38 + 32) = v16;
    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_1DD97C904()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 200);
  sub_1DD926314(v0 + 16);
  (*(v3 + 8))(v4, v2);
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1EE16FA80);
  v6 = v1;
  v7 = sub_1DDA147F0();
  v8 = sub_1DDA14EE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1DD8F8000, v7, v8, "Failed get workspace request: %@", v9, 0xCu);
    sub_1DD90D378(v10, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v10, -1, -1);
    MEMORY[0x1E12B8CE0](v9, -1, -1);
  }

  v13 = *(v0 + 192);

  sub_1DD962448(7u);
  *v13 = 2;
  *(v0 + 73) = 2;
  sub_1DD930D3C();
  swift_willThrowTypedImpl();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DD97CAFC(uint64_t a1)
{
  v2[46] = a1;
  v2[47] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v2[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97CB98, 0, 0);
}

uint64_t sub_1DD97CB98()
{
  v1 = *(v0 + 384);
  sub_1DD929A8C(*(v0 + 376) + 80, v0 + 208);
  sub_1DDA134C0();
  v2 = sub_1DDA134E0();
  *(v0 + 392) = v2;
  v3 = *(v2 - 8);
  *(v0 + 400) = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 368);
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    strcpy((v0 + 16), "access_token");
    *(v0 + 29) = 0;
    *(v0 + 30) = -5120;
    *(v0 + 32) = v7;
    *(v0 + 40) = v6;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;

    v8 = sub_1DD93FF08(&unk_1F58EC440);
    *(v0 + 408) = v8;
    sub_1DD90D378(&unk_1F58EC460, &qword_1ECD829C8, &qword_1DDA1E380);
    v9 = *(v0 + 32);
    *(v0 + 80) = *(v0 + 16);
    *(v0 + 96) = v9;
    v10 = *(v0 + 64);
    *(v0 + 112) = *(v0 + 48);
    *(v0 + 128) = v10;
    sub_1DD90FEC0(v0 + 16, v0 + 144);
    sub_1DD97FA7C();
    v11 = sub_1DDA13210();
    *(v0 + 416) = v11;
    *(v0 + 424) = v12;
    v13 = v11;
    v14 = v12;
    sub_1DD90FEF8(v0 + 16);
    v15 = swift_task_alloc();
    *(v0 + 432) = v15;
    *v15 = v0;
    v15[1] = sub_1DD97CDE8;
    v16 = *(v0 + 384);

    return sub_1DD950D48(v16, v13, v14, 0, v8, 0, 1, 0);
  }

  return result;
}

uint64_t sub_1DD97CDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[55] = a1;
  v5[56] = a2;
  v5[57] = v3;

  if (v3)
  {
    v6 = sub_1DD97D258;
  }

  else
  {

    v6 = sub_1DD97CF40;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD97CF40()
{
  v38 = v0;
  v1 = v0[57];
  sub_1DD97FAD0();
  sub_1DDA13170();
  if (v1)
  {
    v2 = v0[55];
    v3 = v0[56];
    v5 = v0[52];
    v4 = v0[53];
    sub_1DD90FEF8((v0 + 2));
    sub_1DD909D28(v2, v3);
    sub_1DD909D28(v5, v4);
    v6 = v0[49];
    v7 = v0[50];
    v8 = v0[48];
    sub_1DD926314((v0 + 26));
    (*(v7 + 8))(v8, v6);

    v9 = v0[1];
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v10 = sub_1DDA14810();
    __swift_project_value_buffer(v10, qword_1ECDA20F8);
    v11 = v0[35];
    v12 = v0[37];
    v35 = v0[36];
    v36 = v0[34];
    v13 = v0[39];
    v34 = v0[38];

    v14 = sub_1DDA147F0();
    v15 = sub_1DDA14ED0();

    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[55];
    v17 = v0[56];
    v20 = v0[52];
    v19 = v0[53];
    if (v16)
    {
      v33 = v0[56];
      v21 = swift_slowAlloc();
      v32 = v18;
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 136315138;
      v0[40] = v36;
      v0[41] = v11;
      v0[42] = v35;
      v0[43] = v12;
      v0[44] = v34;
      v0[45] = v13;
      v23 = sub_1DDA14B70();
      v25 = sub_1DD93FA54(v23, v24, &v37);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1DD8F8000, v14, v15, "Decoded response: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12B8CE0](v22, -1, -1);
      MEMORY[0x1E12B8CE0](v21, -1, -1);
      sub_1DD90FEF8((v0 + 2));
      sub_1DD909D28(v20, v19);
      v26 = v32;
      v27 = v33;
    }

    else
    {
      sub_1DD90FEF8((v0 + 2));

      sub_1DD909D28(v20, v19);
      v26 = v18;
      v27 = v17;
    }

    sub_1DD909D28(v26, v27);

    v28 = v0[49];
    v29 = v0[50];
    v30 = v0[48];
    sub_1DD926314((v0 + 26));
    (*(v29 + 8))(v30, v28);

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_1DD97D258()
{
  v1 = v0[52];
  v2 = v0[53];
  sub_1DD90FEF8((v0 + 2));
  sub_1DD909D28(v1, v2);
  v3 = v0[49];
  v4 = v0[50];
  v5 = v0[48];
  sub_1DD926314((v0 + 26));
  (*(v4 + 8))(v5, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DD97D304(uint64_t a1, uint64_t a2)
{
  v3[114] = v2;
  v3[113] = a2;
  v3[112] = a1;
  v4 = sub_1DDA13680();
  v3[115] = v4;
  v3[116] = *(v4 - 8);
  v3[117] = swift_task_alloc();
  v3[118] = type metadata accessor for UserTokens(0);
  v3[119] = swift_task_alloc();
  v3[120] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v3[121] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97D440, 0, 0);
}

uint64_t sub_1DD97D440()
{
  v1 = *(v0 + 968);
  sub_1DD929A8C(*(v0 + 912) + 80, v0 + 832);
  sub_1DDA134C0();
  v2 = sub_1DDA134E0();
  *(v0 + 976) = v2;
  v3 = *(v2 - 8);
  *(v0 + 984) = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 912);
    v6 = *(v0 + 904);
    v7 = v5[3];
    v8 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = *(v6 + 48);
    v10 = *(v6 + 56);
    strcpy((v0 + 640), "refresh_token");
    *(v0 + 654) = -4864;
    *(v0 + 656) = v9;
    *(v0 + 664) = v12;
    *(v0 + 672) = 0u;
    *(v0 + 688) = v11;
    *(v0 + 696) = v10;

    v13 = sub_1DD93FF08(&unk_1F58EC038);
    *(v0 + 992) = v13;
    sub_1DD90D378(&unk_1F58EC058, &qword_1ECD829C8, &qword_1DDA1E380);
    v14 = *(v0 + 656);
    *(v0 + 704) = *(v0 + 640);
    *(v0 + 720) = v14;
    v15 = *(v0 + 688);
    *(v0 + 736) = *(v0 + 672);
    *(v0 + 752) = v15;
    sub_1DD90FE58(v0 + 640, v0 + 768);
    sub_1DD97FB24();
    v16 = sub_1DDA13210();
    *(v0 + 1000) = v16;
    *(v0 + 1008) = v17;
    v18 = v16;
    v19 = v17;
    sub_1DD90FE90(v0 + 640);
    v20 = swift_task_alloc();
    *(v0 + 1016) = v20;
    *v20 = v0;
    v20[1] = sub_1DD97D6E0;
    v21 = *(v0 + 968);

    return sub_1DD950D48(v21, v18, v19, 0, v13, 0, 1, 0);
  }

  return result;
}

uint64_t sub_1DD97D6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[128] = a1;
  v5[129] = a2;
  v5[130] = v3;

  if (v3)
  {
    v6 = sub_1DD97DDE0;
  }

  else
  {

    v6 = sub_1DD97D83C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD97D83C()
{
  v78 = v0;
  v1 = *(v0 + 1040);
  sub_1DD97FB78();
  sub_1DDA13170();
  if (v1)
  {
    v2 = *(v0 + 1032);
    v3 = *(v0 + 1024);
    v4 = *(v0 + 1008);
    v5 = *(v0 + 1000);
    sub_1DD90FE90(v0 + 640);
    sub_1DD909D28(v3, v2);
    sub_1DD909D28(v5, v4);
    v6 = *(v0 + 984);
    v7 = *(v0 + 976);
    v8 = *(v0 + 968);
    sub_1DD926314(v0 + 832);
    (*(v6 + 8))(v8, v7);

    v9 = *(v0 + 8);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v10 = sub_1DDA14810();
    __swift_project_value_buffer(v10, qword_1ECDA20F8);
    v11 = *(v0 + 48);
    *(v0 + 168) = *(v0 + 64);
    v12 = *(v0 + 96);
    *(v0 + 184) = *(v0 + 80);
    *(v0 + 200) = v12;
    v13 = *(v0 + 32);
    *(v0 + 120) = *(v0 + 16);
    *(v0 + 136) = v13;
    *(v0 + 216) = *(v0 + 112);
    *(v0 + 152) = v11;
    sub_1DD90FD34(v0 + 120, v0 + 224);
    sub_1DD90FD34(v0 + 120, v0 + 328);
    v14 = sub_1DDA147F0();
    v15 = sub_1DDA14ED0();
    sub_1DD90FD6C(v0 + 120);
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 1032);
    v18 = *(v0 + 1024);
    v19 = *(v0 + 1008);
    v20 = *(v0 + 1000);
    if (v16)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v77 = v22;
      *v21 = 136315138;
      v23 = *(v0 + 168);
      v24 = *(v0 + 200);
      *(v0 + 600) = *(v0 + 184);
      *(v0 + 616) = v24;
      *(v0 + 632) = *(v0 + 216);
      v25 = *(v0 + 136);
      *(v0 + 536) = *(v0 + 120);
      *(v0 + 552) = v25;
      *(v0 + 568) = *(v0 + 152);
      *(v0 + 584) = v23;
      v26 = sub_1DDA14B70();
      v75 = v17;
      v28 = sub_1DD93FA54(v26, v27, &v77);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_1DD8F8000, v14, v15, "Decoded response: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12B8CE0](v22, -1, -1);
      MEMORY[0x1E12B8CE0](v21, -1, -1);
      sub_1DD90FE90(v0 + 640);
      sub_1DD909D28(v20, v19);
      v29 = v18;
      v30 = v75;
    }

    else
    {
      sub_1DD90FE90(v0 + 640);
      sub_1DD90FD6C(v0 + 120);
      sub_1DD909D28(v20, v19);
      v29 = v18;
      v30 = v17;
    }

    sub_1DD909D28(v29, v30);

    v31 = *(v0 + 984);
    v32 = *(v0 + 976);
    v33 = *(v0 + 968);
    v34 = *(v0 + 960);
    v35 = *(v0 + 952);
    v36 = *(v0 + 944);
    v76 = *(v0 + 936);
    v74 = *(v0 + 928);
    v37 = *(v0 + 920);
    v73 = v37;
    v38 = *(v0 + 904);
    v39 = *(v0 + 896);
    v40 = *(v0 + 96);
    *(v0 + 496) = *(v0 + 80);
    *(v0 + 512) = v40;
    *(v0 + 528) = *(v0 + 112);
    v41 = *(v0 + 32);
    *(v0 + 432) = *(v0 + 16);
    *(v0 + 448) = v41;
    v42 = *(v0 + 64);
    *(v0 + 464) = *(v0 + 48);
    *(v0 + 480) = v42;
    sub_1DD926314(v0 + 832);
    (*(v31 + 8))(v33, v32);
    v43 = *(v0 + 440);
    *v34 = *(v0 + 432);
    v34[1] = v43;
    v44 = *(v0 + 456);
    v34[2] = *(v0 + 448);
    v34[3] = v44;

    sub_1DDA13660();
    v45 = *(v0 + 496);
    sub_1DDA135F0();
    (*(v74 + 8))(v76, v37);
    v46 = v34 + v36[7];
    *v46 = v45;
    v46[8] = 0;
    v47 = *(v0 + 528);
    v48 = (v34 + v36[8]);
    *v48 = *(v0 + 520);
    v48[1] = v47;
    v49 = *(v0 + 464);
    v50 = *(v0 + 472);

    sub_1DD90FD6C(v0 + 432);
    v51 = (v34 + v36[9]);
    *v51 = v49;
    v51[1] = v50;
    v53 = *v38;
    v52 = v38[1];
    v55 = v38[2];
    v54 = v38[3];
    sub_1DD97FBCC(v34, v35, type metadata accessor for UserTokens);
    v56 = type metadata accessor for UserCredentials(0);
    v70 = &v39[v56[9]];
    v71 = &v39[v56[10]];
    v72 = &v39[v56[11]];
    *v39 = v53;
    *(v39 + 1) = v52;
    *(v39 + 2) = v55;
    *(v39 + 3) = v54;
    v57 = *(v35 + 1);
    *(v39 + 4) = *v35;
    *(v39 + 5) = v57;
    v58 = *(v35 + 3);
    *(v39 + 6) = *(v35 + 2);
    *(v39 + 7) = v58;
    v59 = v36[6];
    v60 = v56[8];
    v61 = *(v74 + 16);

    v61(&v39[v60], &v35[v59], v73);
    v62 = &v35[v36[7]];
    v63 = *v62;
    LOBYTE(v62) = v62[8];
    *v70 = v63;
    v70[8] = v62;
    v64 = &v35[v36[8]];
    v65 = *(v64 + 1);
    *v71 = *v64;
    *(v71 + 1) = v65;
    v66 = &v35[v36[9]];
    v67 = *v66;
    v68 = v66[1];

    sub_1DD97FC34(v35, type metadata accessor for UserTokens);
    *v72 = v67;
    *(v72 + 1) = v68;

    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_1DD97DDE0()
{
  v1 = v0[126];
  v2 = v0[125];
  sub_1DD90FE90((v0 + 80));
  sub_1DD909D28(v2, v1);
  v3 = v0[123];
  v4 = v0[122];
  v5 = v0[121];
  sub_1DD926314((v0 + 104));
  (*(v3 + 8))(v5, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DD97DEC8(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v3[14] = type metadata accessor for ChatChunk.RateLimits(0);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97DFB0, 0, 0);
}

uint64_t sub_1DD97DFB0()
{
  v1 = v0[12];
  __swift_project_boxed_opaque_existential_1((v0[13] + 40), *(v0[13] + 64));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1DD97E074;

  return sub_1DD911340(v2, v3, 0, 0, 0, 0);
}

uint64_t sub_1DD97E074(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD97E174, 0, 0);
}

uint64_t sub_1DD97E174()
{
  v0[10] = v0[20];
  v1 = v0[18];
  v2 = v0[13];
  sub_1DD9C70C8(0, 0, 0x2D54504774616843, 0xEC00000061746542);
  v3 = v0[10];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DD9CB364(0x2D38302D34323032, 0xEA00000000003832, 0x2D54504774616843, 0xEF6E6F6973726556, isUniquelyReferenced_nonNull_native);
  v0[21] = v3;
  sub_1DD929A8C(v2 + 80, (v0 + 2));
  sub_1DDA134C0();
  v5 = sub_1DDA134E0();
  v0[22] = v5;
  v6 = *(v5 - 8);
  v0[23] = v6;
  result = (*(v6 + 48))(v1, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_1DD97E364;
    v9 = v0[18];

    return sub_1DD950D48(v9, 0, 0xF000000000000000, 1, v3, 0, 1, 0);
  }

  return result;
}

uint64_t sub_1DD97E364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[25] = a1;
  v5[26] = a2;
  v5[27] = v3;

  if (v3)
  {

    v6 = sub_1DD97E7E0;
  }

  else
  {

    v6 = sub_1DD97E4BC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD97E4BC()
{
  v27 = v0;
  v1 = v0[27];
  sub_1DD97F96C();
  sub_1DDA13170();
  if (v1)
  {
    sub_1DD909D28(v0[25], v0[26]);
    v2 = v0[22];
    v3 = v0[23];
    v4 = v0[18];
    sub_1DD926314((v0 + 2));
    (*(v3 + 8))(v4, v2);

    v5 = v0[1];
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v6 = v0[16];
    v7 = v0[17];
    v8 = sub_1DDA14810();
    __swift_project_value_buffer(v8, qword_1ECDA20F8);
    sub_1DD97F9C4(v7, v6);
    v9 = sub_1DDA147F0();
    v10 = sub_1DDA14ED0();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[25];
    v12 = v0[26];
    v14 = v0[16];
    if (v11)
    {
      v15 = v0[15];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      sub_1DD97F9C4(v14, v15);
      v18 = sub_1DDA14B70();
      v20 = v19;
      sub_1DD97FC34(v14, type metadata accessor for ChatChunk.RateLimits);
      v21 = sub_1DD93FA54(v18, v20, &v26);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1DD8F8000, v9, v10, "Decoded response: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1E12B8CE0](v17, -1, -1);
      MEMORY[0x1E12B8CE0](v16, -1, -1);
      sub_1DD909D28(v13, v12);
    }

    else
    {
      sub_1DD909D28(v0[25], v0[26]);

      sub_1DD97FC34(v14, type metadata accessor for ChatChunk.RateLimits);
    }

    v22 = v0[22];
    v23 = v0[23];
    v24 = v0[18];
    sub_1DD97FBCC(v0[17], v0[11], type metadata accessor for ChatChunk.RateLimits);
    sub_1DD926314((v0 + 2));
    (*(v23 + 8))(v24, v22);

    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_1DD97E7E0()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[18];
  sub_1DD926314((v0 + 2));
  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DD97E8A0(uint64_t a1)
{
  v2[132] = v1;
  v2[131] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v2[133] = swift_task_alloc();
  v3 = sub_1DDA136B0();
  v2[134] = v3;
  v2[135] = *(v3 - 8);
  v2[136] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v2[137] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97E9D4, 0, 0);
}

uint64_t sub_1DD97E9D4()
{
  v1 = v0[137];
  v2 = v0[131];
  sub_1DD929A28(v0[132] + 40, (v0 + 126));
  __swift_project_boxed_opaque_existential_1(v0 + 126, v0[129]);
  sub_1DD97F6F4(v2, v1);
  v3 = type metadata accessor for UserCredentials(0);
  v4 = *(*(v3 - 8) + 48);
  v5 = v4(v1, 1, v3);
  v6 = v0[137];
  if (v5 == 1)
  {
    sub_1DD90D378(v0[137], &qword_1ECD82D00, &qword_1DDA18B10);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);

    sub_1DD97FC34(v6, type metadata accessor for UserCredentials);
  }

  v0[138] = v8;
  if (v4(v0[131], 1, v3) == 1)
  {
    v9 = v0[136];
    v10 = v0[135];
    v11 = v0[134];
    sub_1DDA136A0();
    v12 = sub_1DDA13690();
    v14 = v13;
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[139] = v14;
  v15 = swift_task_alloc();
  v0[140] = v15;
  *v15 = v0;
  v15[1] = sub_1DD97EBD0;

  return sub_1DD911340(v7, v8, v12, v14, 0, 0);
}

uint64_t sub_1DD97EBD0(uint64_t a1)
{
  *(*v1 + 1128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD97ED0C, 0, 0);
}

uint64_t sub_1DD97ED0C()
{
  v1 = v0[133];
  v2 = v0[132];
  __swift_destroy_boxed_opaque_existential_1(v0 + 126);
  sub_1DD929A8C(v2 + 80, (v0 + 70));
  sub_1DDA134C0();
  v3 = sub_1DDA134E0();
  v0[142] = v3;
  v4 = *(v3 - 8);
  v0[143] = v4;
  result = (*(v4 + 48))(v1, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[144] = v6;
    *v6 = v0;
    v6[1] = sub_1DD97EE5C;
    v7 = v0[141];
    v8 = v0[133];

    return sub_1DD950D48(v8, 0, 0xF000000000000000, 1, v7, 0, 1, 0);
  }

  return result;
}

uint64_t sub_1DD97EE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[145] = a1;
  v5[146] = a2;
  v5[147] = v3;

  if (v3)
  {
    v6 = sub_1DD97F63C;
  }

  else
  {

    v6 = sub_1DD97EFB8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD97EFB8()
{
  v81 = v0;
  v1 = (v0 + 78);
  v2 = v0[147];
  sub_1DD97F764();
  sub_1DDA13170();
  if (v2)
  {
    sub_1DD909D28(v0[145], v0[146]);
    v3 = v0[143];
    v4 = v0[142];
    v5 = v0[133];
    sub_1DD926314((v0 + 70));
    (*(v3 + 8))(v5, v4);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0 + 86;
    v9 = v0;
    if (qword_1ECD827B0 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v10 = v9 + 110;
      v11 = sub_1DDA14810();
      __swift_project_value_buffer(v11, qword_1ECDA20F8);
      v12 = *(v1 + 16);
      *v8 = *v1;
      v8[1] = v12;
      v8[2] = *(v1 + 32);
      *(v8 + 41) = *(v1 + 41);
      sub_1DD97F7B8(v8, (v9 + 94));
      sub_1DD97F7B8(v8, (v9 + 102));
      v13 = sub_1DDA147F0();
      v14 = sub_1DDA14ED0();
      sub_1DD97F814(v8);
      v15 = os_log_type_enabled(v13, v14);
      v16 = v9[146];
      v17 = v9[145];
      v62 = (v9 + 110);
      if (v15)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v80 = v19;
        *v18 = 136315138;
        v20 = v8[1];
        *(v9 + 59) = *v8;
        *(v9 + 60) = v20;
        *(v9 + 61) = v8[2];
        *(v9 + 985) = *(v8 + 41);
        v21 = sub_1DDA14B70();
        v8 = sub_1DD93FA54(v21, v22, &v80);

        *(v18 + 4) = v8;
        _os_log_impl(&dword_1DD8F8000, v13, v14, "Decoded response: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        v23 = v19;
        v10 = v9 + 110;
        MEMORY[0x1E12B8CE0](v23, -1, -1);
        MEMORY[0x1E12B8CE0](v18, -1, -1);
      }

      else
      {
        sub_1DD97F814(v8);
      }

      sub_1DD909D28(v17, v16);

      v24 = v9[143];
      v25 = v9[142];
      v26 = v9[133];
      v27 = *(v1 + 16);
      *v10 = *v1;
      v10[1] = v27;
      v10[2] = *(v1 + 32);
      *(v10 + 41) = *(v1 + 41);
      sub_1DD926314((v9 + 70));
      (*(v24 + 8))(v26, v25);
      v28 = v9[112];
      v29 = *(v28 + 16);
      v30 = v9;
      if (!v29)
      {
        sub_1DD97F814(v10);
        v60 = MEMORY[0x1E69E7CC0];
        goto LABEL_28;
      }

      v76 = MEMORY[0x1E69E7CC0];
      v63 = v9;
      sub_1DD9AF19C(0, v29, 0);
      v30 = v9;
      if (*(v28 + 16))
      {
        break;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
    }

    v31 = 0;
    v64 = v28;
    v65 = v28 + 32;
    v32 = v76;
    v33 = 1;
    v66 = v29;
    while (1)
    {
      v34 = v65 + 136 * v31;
      *(v30 + 1) = *v34;
      v35 = *(v34 + 16);
      v36 = *(v34 + 32);
      v37 = *(v34 + 64);
      *(v30 + 4) = *(v34 + 48);
      *(v30 + 5) = v37;
      *(v30 + 2) = v35;
      *(v30 + 3) = v36;
      v38 = *(v34 + 80);
      v39 = *(v34 + 96);
      v40 = *(v34 + 112);
      *(v30 + 144) = *(v34 + 128);
      *(v30 + 7) = v39;
      *(v30 + 8) = v40;
      *(v30 + 6) = v38;
      v71 = *(v30 + 144);
      v41 = v30[17];
      v72 = v33;
      v73 = v32;
      if (v41)
      {
        v42 = *(v41 + 16);
        if (v42)
        {
          sub_1DD97F868((v30 + 2), (v30 + 36));
          v80 = MEMORY[0x1E69E7CC0];
          sub_1DD9AF1BC(0, v42, 0);
          v43 = 0;
          v1 = v80;
          v44 = v80[2];
          v74 = 24 * v44;
          do
          {
            v45 = v41;
            v46 = *(v41 + v43 + 32);
            v47 = *(v41 + v43 + 40);
            v48 = *(v41 + v43 + 48);
            v80 = v1;
            v49 = v44 + 1;
            v50 = *(v1 + 24);

            if (v44 >= v50 >> 1)
            {
              sub_1DD9AF1BC((v50 > 1), v49, 1);
              v1 = v80;
            }

            *(v1 + 16) = v49;
            v51 = v1 + v74 + v43;
            *(v51 + 32) = v46;
            *(v51 + 40) = v47;
            *(v51 + 48) = v48;
            v43 += 24;
            ++v44;
            --v42;
            v41 = v45;
          }

          while (v42);
          v30 = v63;
        }

        else
        {
          sub_1DD97F868((v30 + 2), (v30 + 53));
          v1 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        sub_1DD97F868((v30 + 2), (v30 + 19));
        v1 = 0;
      }

      v75 = *(v30 + 130);
      v70 = *(v30 + 129);
      v52 = *(v30 + 128);
      v68 = v30[14];
      v69 = v30[15];
      v8 = v30[12];
      v53 = v30[13];
      v54 = v30[8];
      v9 = v30[9];
      v55 = v30[7];
      v67 = v30[6];

      sub_1DD97F8C4((v30 + 2));
      LODWORD(v80) = *v77;
      *(&v80 + 3) = *&v77[3];
      v32 = v73;
      v57 = *(v73 + 16);
      v56 = *(v73 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1DD9AF19C((v56 > 1), v57 + 1, 1);
        v30 = v63;
        v32 = v73;
      }

      *(v32 + 16) = v57 + 1;
      v58 = v32 + 88 * v57;
      *(v58 + 32) = (v52 & 1) == 0;
      v59 = *(&v80 + 3);
      *(v58 + 33) = v80;
      *(v58 + 36) = v59;
      *(v58 + 40) = v8;
      *(v58 + 48) = v53;
      *(v58 + 56) = v54;
      *(v58 + 64) = v9;
      *(v58 + 72) = v67;
      *(v58 + 80) = v55;
      *(v58 + 88) = v68;
      *(v58 + 96) = v69;
      *(v58 + 104) = v70;
      *(v58 + 105) = v75;
      *(v58 + 106) = 0x3020001u >> (8 * v71);
      *(v58 + 107) = v78;
      *(v58 + 111) = v79;
      *(v58 + 112) = v1;
      v31 = v72;
      if (v72 == v66)
      {
        break;
      }

      v33 = v72 + 1;
      if (v72 >= *(v64 + 16))
      {
        goto LABEL_31;
      }
    }

    v60 = v32;
    sub_1DD97F814(v62);
LABEL_28:

    v61 = v30[1];

    return v61(v60);
  }
}

uint64_t sub_1DD97F63C()
{
  v1 = v0[143];
  v2 = v0[142];
  v3 = v0[133];
  sub_1DD926314((v0 + 70));
  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DD97F6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD97F764()
{
  result = qword_1ECD835C8;
  if (!qword_1ECD835C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD835C8);
  }

  return result;
}

unint64_t sub_1DD97F918()
{
  result = qword_1ECD835D0;
  if (!qword_1ECD835D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD835D0);
  }

  return result;
}

unint64_t sub_1DD97F96C()
{
  result = qword_1ECD83570;
  if (!qword_1ECD83570)
  {
    type metadata accessor for ChatChunk.RateLimits(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83570);
  }

  return result;
}

uint64_t sub_1DD97F9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChatChunk.RateLimits(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD97FA28()
{
  result = qword_1ECD835D8;
  if (!qword_1ECD835D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD835D8);
  }

  return result;
}

unint64_t sub_1DD97FA7C()
{
  result = qword_1ECD835E0;
  if (!qword_1ECD835E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD835E0);
  }

  return result;
}

unint64_t sub_1DD97FAD0()
{
  result = qword_1ECD835E8;
  if (!qword_1ECD835E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD835E8);
  }

  return result;
}

unint64_t sub_1DD97FB24()
{
  result = qword_1ECD835F0;
  if (!qword_1ECD835F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD835F0);
  }

  return result;
}

unint64_t sub_1DD97FB78()
{
  result = qword_1ECD835F8;
  if (!qword_1ECD835F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD835F8);
  }

  return result;
}

uint64_t sub_1DD97FBCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD97FC34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DD97FC94()
{
  result = qword_1ECD83600;
  if (!qword_1ECD83600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83600);
  }

  return result;
}

uint64_t sub_1DD97FCE8()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v16 = 0u;
    v17 = 0u;
LABEL_15:
    sub_1DD90D378(&v16, &qword_1ECD83618, &qword_1DDA1AF98);
    v5 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  v18 = *v0;
  v16 = *v0;
  sub_1DD90D2EC(&v18, &v14);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0x4449707061, 0xE500000000000000);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    goto LABEL_15;
  }

  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = v14;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = *(&v14 + 1);
  }

  else
  {
    v6 = 0;
  }

LABEL_16:
  v7 = *(v0 + 2);
  v8 = *(v0 + 4);
  v13 = *(v0 + 6);
  v9 = *(v0 + 8);
  v10 = *(v0 + 80);
  v11 = sub_1DD980208();
  if (v10)
  {
    if (v11 <= 1u)
    {
      if (v11)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }
    }

    else if (v11 != 3)
    {
      v9 = v13;
    }
  }

  if (!v6)
  {
    return v9;
  }

  return v5;
}

uint64_t sub_1DD97FF00(uint64_t a1, uint64_t a2)
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_12:
    sub_1DD90D378(&v11, &qword_1ECD83618, &qword_1DDA1AF98);
    return 0;
  }

  v13 = *v2;
  v11 = *v2;
  sub_1DD90D2EC(&v13, &v9);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](a1, a2);
  v6 = sub_1DDA14B00();

  v7 = [v5 valueForKey_];

  if (v7)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD980080()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_12:
    sub_1DD90D378(&v7, &qword_1ECD83618, &qword_1DDA1AF98);
    return 0;
  }

  v9 = *v0;
  v7 = *v0;
  sub_1DD90D2EC(&v9, &v5);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0x6973726556697061, 0xEA00000000006E6FLL);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DD980208()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_1DD90D378(&v8, &qword_1ECD83618, &qword_1DDA1AF98);
    return 4;
  }

  v10 = *v0;
  v5 = *v0;
  sub_1DD90D2EC(&v10, v7);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0x6D6E6F7269766E65, 0xEB00000000746E65);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v8 = v5;
  v9 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return sub_1DD917508(v5, *(&v5 + 1));
  }

  return 4;
}

uint64_t sub_1DD98038C()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_12:
    sub_1DD90D378(&v7, &qword_1ECD83618, &qword_1DDA1AF98);
    return 0;
  }

  v9 = *v0;
  v7 = *v0;
  sub_1DD90D2EC(&v9, &v5);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0xD000000000000015, 0x80000001DDA28360);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD980518()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_12:
    sub_1DD90D378(&v7, &qword_1ECD83618, &qword_1DDA1AF98);
    return 0;
  }

  v9 = *v0;
  v7 = *v0;
  sub_1DD90D2EC(&v9, &v5);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0xD00000000000001ALL, 0x80000001DDA28340);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD9806A0()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_12:
    sub_1DD90D378(&v7, &qword_1ECD83618, &qword_1DDA1AF98);
    return 2;
  }

  v9 = *v0;
  v7 = *v0;
  sub_1DD90D2EC(&v9, &v5);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0xD000000000000011, 0x80000001DDA28320);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1DD980824()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_12:
    sub_1DD90D378(&v7, &qword_1ECD83618, &qword_1DDA1AF98);
    return 2;
  }

  v9 = *v0;
  v7 = *v0;
  sub_1DD90D2EC(&v9, &v5);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0xD000000000000018, 0x80000001DDA283A0);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1DD9809A8()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_12:
    sub_1DD90D378(&v7, &qword_1ECD83618, &qword_1DDA1AF98);
    return 0;
  }

  v9 = *v0;
  v7 = *v0;
  sub_1DD90D2EC(&v9, &v5);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0xD00000000000001CLL, 0x80000001DDA28300);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DD980B30()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_1DD90D378(&v8, &qword_1ECD83618, &qword_1DDA1AF98);
    return sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  }

  v10 = *v0;
  v5 = *v0;
  sub_1DD90D2EC(&v10, v7);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0xD000000000000013, 0x80000001DDA28380);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v8 = v5;
  v9 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83620, &qword_1DDA1AFA0);
  if (swift_dynamicCast())
  {
    return v5;
  }

  return sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
}

void sub_1DD980CC4()
{
  if (qword_1EE16F3E0 != -1)
  {
    swift_once();
  }

  if (byte_1EE16FAD8 == 1)
  {
    v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v1 = sub_1DDA14B00();
    v2 = [v0 initWithSuiteName_];
  }

  else
  {
    v2 = 0;
  }

  qword_1EE16FAD0 = v2;
}

void sub_1DD980D84(uint64_t a1)
{
  v1 = MobileGestalt_get_current_device();
  if (v1)
  {
    v2 = v1;
    internalBuild = MobileGestalt_get_internalBuild();

    byte_1EE16FAD8 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

id sub_1DD98127C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if ((a3 & 1) == 0)
  {
    goto LABEL_4;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v8 = result;
    internalBuild = MobileGestalt_get_internalBuild();

    if (!internalBuild)
    {
      return 0;
    }

LABEL_4:
    if (qword_1EE16F3D8 != -1)
    {
      swift_once();
    }

    v10 = qword_1EE16FAD0;
    if (qword_1EE16FAD0)
    {
      v11 = v4[1];
      *&v23 = *v4;
      *(&v23 + 1) = v11;

      MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
      MEMORY[0x1E12B7AB0](a1, a2);
      v12 = sub_1DDA14B00();

      v13 = [v10 valueForKey_];

      if (v13)
      {
        sub_1DDA14FB0();
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0u;
        v22 = 0u;
      }

      v23 = v21;
      v24 = v22;
      if (*(&v22 + 1))
      {
        v15 = swift_dynamicCast();
        if (v15)
        {
          v14 = v21;
        }

        else
        {
          v14 = 0;
        }

        if (v15)
        {
          v16 = *(&v21 + 1);
        }

        else
        {
          v16 = 0;
        }

LABEL_20:
        v17 = v4[11];
        if (*(v17 + 16) && (v18 = sub_1DD96AC38(a1, a2), (v19 & 1) != 0))
        {
          v20 = *(*(v17 + 56) + 16 * v18);

          if (!v16)
          {
            return v20;
          }
        }

        else
        {
          v20 = 0;
          if (!v16)
          {
            return v20;
          }
        }

        return v14;
      }
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    sub_1DD90D378(&v23, &qword_1ECD83618, &qword_1DDA1AF98);
    v14 = 0;
    v16 = 0;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD981484()
{
  v1 = MEMORY[0x1E69E7CC0];
  v49 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  sub_1DD981F8C(*(v0 + 88), sub_1DD981F84);

  if (qword_1EE16F3D8 != -1)
  {
    goto LABEL_35;
  }

  while (qword_1EE16FAD0)
  {
    v2 = qword_1EE16FAD0;
    v3 = [v2 dictionaryRepresentation];
    v4 = sub_1DDA14AA0();

    v5 = *(v4 + 16);
    if (!v5)
    {

      return v49;
    }

    v39 = v2;
    v48 = v1;
    sub_1DD9AF014(0, v5, 0);
    v1 = v48;
    v6 = v4 + 64;
    v7 = sub_1DDA14FD0();
    v8 = 0;
    v41 = *(v4 + 36);
    v9 = v5;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_30;
      }

      if (v41 != *(v4 + 36))
      {
        goto LABEL_31;
      }

      v11 = (*(v4 + 48) + 16 * v7);
      v13 = *v11;
      v12 = v11[1];
      sub_1DD9410C8(*(v4 + 56) + 32 * v7, v47);
      v45[0] = v13;
      v45[1] = v12;
      sub_1DD940DE4(v47, v46);

      if (sub_1DDA14C50())
      {
        sub_1DD9410C8(v46, v44);
        if (swift_dynamicCast())
        {

          v14 = sub_1DDA14BD0();
          v15 = sub_1DD954D60(v14, v13, v12);
          v17 = v16;
          v19 = v18;
          v40 = v1;
          v21 = v20;

          v22 = MEMORY[0x1E12B7A50](v15, v17, v19, v21);
          v24 = v23;
          v1 = v40;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44[0] = v49;
          v26 = v22;
          v9 = v5;
          sub_1DD9CB364(v42, v43, v26, v24, isUniquelyReferenced_nonNull_native);

          v49 = v44[0];
        }
      }

      sub_1DD90D378(v45, &qword_1ECD83610, &qword_1DDA1AF90);
      v48 = v1;
      v28 = *(v1 + 16);
      v27 = *(v1 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_1DD9AF014((v27 > 1), v28 + 1, 1);
        v1 = v48;
      }

      v30 = v1;
      *(v1 + 16) = v29;
      v1 = 1 << *(v4 + 32);
      if (v7 >= v1)
      {
        goto LABEL_32;
      }

      v6 = v4 + 64;
      v31 = *(v4 + 64 + 8 * v10);
      if ((v31 & (1 << v7)) == 0)
      {
        goto LABEL_33;
      }

      if (v41 != *(v4 + 36))
      {
        goto LABEL_34;
      }

      v32 = v31 & (-2 << (v7 & 0x3F));
      if (v32)
      {
        v1 = __clz(__rbit64(v32)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v10 << 6;
        v34 = v10 + 1;
        v35 = (v4 + 72 + 8 * v10);
        while (v34 < (v1 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            sub_1DD982204(v7, v41, 0);
            v1 = __clz(__rbit64(v36)) + v33;
            goto LABEL_25;
          }
        }

        sub_1DD982204(v7, v41, 0);
LABEL_25:
        v9 = v5;
      }

      ++v8;
      v7 = v1;
      v1 = v30;
      if (v8 == v9)
      {

        return v49;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  return v49;
}

uint64_t sub_1DD9818F0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = sub_1DDA14C50();
  if (result)
  {

    v11 = sub_1DDA14BD0();
    v12 = sub_1DD954D60(v11, a1, a2);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = MEMORY[0x1E12B7A50](v12, v14, v16, v18);
    v21 = v20;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *a5;
    *a5 = 0x8000000000000000;
    sub_1DD9CB364(a3, a4, v19, v21, isUniquelyReferenced_nonNull_native);

    *a5 = v23;
  }

  return result;
}

void sub_1DD981DC8(uint64_t a2@<X8>)
{
  v3 = MobileGestalt_get_current_device();
  if (v3)
  {
    v4 = v3;
    internalBuild = MobileGestalt_get_internalBuild();

    *a2 = 0x776F506B63616C62;
    *(a2 + 8) = 0xEB00000000726564;
    *(a2 + 16) = 0xD00000000000001CLL;
    *(a2 + 24) = 0x80000001DDA28280;
    *(a2 + 32) = 0xD00000000000001CLL;
    *(a2 + 40) = 0x80000001DDA282A0;
    *(a2 + 48) = 0xD00000000000001CLL;
    *(a2 + 56) = 0x80000001DDA282C0;
    *(a2 + 64) = 0xD00000000000001CLL;
    *(a2 + 72) = 0x80000001DDA282E0;
    *(a2 + 80) = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DD981EC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1DD981F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD981F8C(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1DD9AF014(0, v2, 0);
  v3 = v30;
  v28 = a1 + 64;
  result = sub_1DDA14FD0();
  v6 = result;
  v7 = 0;
  v29 = *(a1 + 36);
  v26 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v28 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v12 = *v10;
    v11 = v10[1];
    v13 = (*(a1 + 56) + 16 * v6);
    v14 = *v13;
    v15 = v13[1];

    a2(v12, v11, v14, v15);

    v17 = *(v30 + 16);
    v16 = *(v30 + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      result = sub_1DD9AF014((v16 > 1), v17 + 1, 1);
    }

    *(v30 + 16) = v18;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v19 = *(v28 + 8 * v9);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v9 << 6;
      v22 = v9 + 1;
      v23 = (a1 + 72 + 8 * v9);
      while (v22 < (v8 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1DD982204(v6, v29, 0);
          v8 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1DD982204(v6, v29, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v26)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1DD982204(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1DD982210@<X0>(void (*a1)(_OWORD *__return_ptr, char *, uint64_t *)@<X0>, _OWORD *a2@<X8>)
{
  v16 = a1;
  v17 = a2;
  v4 = sub_1DDA13F30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  sub_1DD90ADB4(v2, &v16 - v9, &qword_1ECD82FD0, &qword_1DDA189A8);
  result = (*(v5 + 48))(v10, 1, v4);
  if (result == 1)
  {
    v12 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v16(v18, v7, &v20);
    if (v3)
    {
      return (*(v5 + 8))(v7, v4);
    }

    result = (*(v5 + 8))(v7, v4);
    v13 = v18[0];
    v14 = v18[1];
    v12 = v19;
  }

  v15 = v17;
  *v17 = v13;
  v15[1] = v14;
  *(v15 + 4) = v12;
  return result;
}

uint64_t sub_1DD982410(uint64_t a1)
{
  v35 = sub_1DDA14180();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1DD9AF0BC(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_1DDA14FD0();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_1DDA14160();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1DD9AF0BC((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1DD982204(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1DD982204(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD982718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DD90ADB4(a3, v25 - v10, &qword_1ECD82D30, &qword_1DDA188D0);
  v12 = sub_1DDA14D60();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DD90D378(v11, &qword_1ECD82D30, &qword_1DDA188D0);
  }

  else
  {
    sub_1DDA14D50();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DDA14CD0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DDA14B80() + 32;
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

      sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);

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

  sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);
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

uint64_t sub_1DD982A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DD90ADB4(a3, v25 - v10, &qword_1ECD82D30, &qword_1DDA188D0);
  v12 = sub_1DDA14D60();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DD90D378(v11, &qword_1ECD82D30, &qword_1DDA188D0);
  }

  else
  {
    sub_1DDA14D50();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DDA14CD0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DDA14B80() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);

      return v22;
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

  sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1DD982D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DD90ADB4(a3, v25 - v10, &qword_1ECD82D30, &qword_1DDA188D0);
  v12 = sub_1DDA14D60();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DD90D378(v11, &qword_1ECD82D30, &qword_1DDA188D0);
  }

  else
  {
    sub_1DDA14D50();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DDA14CD0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DDA14B80() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837B8, &qword_1DDA1B378);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);

      return v22;
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

  sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837B8, &qword_1DDA1B378);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1DD983040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DD90ADB4(a3, v25 - v10, &qword_1ECD82D30, &qword_1DDA188D0);
  v12 = sub_1DDA14D60();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DD90D378(v11, &qword_1ECD82D30, &qword_1DDA188D0);
  }

  else
  {
    sub_1DDA14D50();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DDA14CD0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DDA14B80() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);

      return v22;
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

  sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1DD983354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v7 = sub_1DDA13420();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1DDA134E0();
  v11 = *(v28 - 8);
  v12 = MEMORY[0x1EEE9AC00](v28);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  if (a2)
  {
    v32 = 47;
    v33 = 0xE100000000000000;
    MEMORY[0x1E12B7AB0](a1, a2);
    v17 = v33;
    v27 = v32;
  }

  else
  {
    v27 = 0;
    v17 = 0xE000000000000000;
  }

  sub_1DD910E48(v14);
  v32 = 0x6E6F69737365732FLL;
  v33 = 0xE900000000000073;
  v26 = *MEMORY[0x1E6968F70];
  v25 = *(v8 + 104);
  v25(v10);
  v24 = sub_1DD9313D4();
  sub_1DDA134D0();
  v22 = v16;
  v18 = *(v8 + 8);
  v18(v10, v7);
  v23 = *(v11 + 8);
  v19 = v28;
  v23(v14, v28);
  v32 = v27;
  v33 = v17;

  MEMORY[0x1E12B7AB0](v29, v30);

  (v25)(v10, v26, v7);
  v20 = v22;
  sub_1DDA134D0();
  v18(v10, v7);

  return (v23)(v20, v19);
}

uint64_t sub_1DD983648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v23 = a1;
  v24 = a2;
  v27 = a5;
  v5 = sub_1DDA13420();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DDA134E0();
  v20 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - v14;
  sub_1DD910E48(v13);
  v28 = 0x6E6F69737365732FLL;
  v29 = 0xE900000000000073;
  v22 = *MEMORY[0x1E6968F70];
  v21 = *(v6 + 104);
  v21(v8);
  v19[1] = sub_1DD9313D4();
  sub_1DDA134D0();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1DDA15070();

  v28 = 47;
  v29 = 0xE100000000000000;
  MEMORY[0x1E12B7AB0](v23, v24);
  MEMORY[0x1E12B7AB0](0x7364616F6C70752FLL, 0xE90000000000002FLL);
  MEMORY[0x1E12B7AB0](v25, v26);
  MEMORY[0x1E12B7AB0](0x74656C706D6F632FLL, 0xE900000000000065);
  (v21)(v8, v22, v5);
  sub_1DDA134D0();
  v16(v8, v5);

  return (v17)(v15, v20);
}

uint64_t sub_1DD983948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v23 = a1;
  v24 = a2;
  v27 = a5;
  v5 = sub_1DDA13420();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DDA134E0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  sub_1DD910E48(v13);
  v28 = 0x6E6F69737365732FLL;
  v29 = 0xE900000000000073;
  v22 = *MEMORY[0x1E6968F70];
  v21 = *(v6 + 104);
  v21(v8);
  v20 = sub_1DD9313D4();
  sub_1DDA134D0();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v19 = *(v10 + 8);
  v19(v13, v9);
  v28 = 47;
  v29 = 0xE100000000000000;
  MEMORY[0x1E12B7AB0](v23, v24);
  MEMORY[0x1E12B7AB0](0x2F73656C69662FLL, 0xE700000000000000);
  MEMORY[0x1E12B7AB0](v25, v26);
  (v21)(v8, v22, v5);
  sub_1DDA134D0();
  v16(v8, v5);

  return (v19)(v15, v9);
}

id sub_1DD983C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v650 = a8;
  v656 = a6;
  v633 = a4;
  v634 = a5;
  v626 = a9;
  v627 = a3;
  v624 = a1;
  v625 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v672 = &v573 - v16;
  v701 = sub_1DDA134E0();
  v652 = *(v701 - 1);
  MEMORY[0x1EEE9AC00](v701);
  v700 = &v573 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v686 = type metadata accessor for MessageContent(0);
  v685 = *(v686 - 8);
  v18 = MEMORY[0x1EEE9AC00](v686);
  v690 = &v573 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v675 = (&v573 - v20);
  v674 = sub_1DDA13DA0();
  v654 = *(v674 - 8);
  v21 = MEMORY[0x1EEE9AC00](v674);
  v629 = &v573 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v673 = &v573 - v23;
  *&v692 = sub_1DDA13DC0();
  v24 = *(v692 - 8);
  MEMORY[0x1EEE9AC00](v692);
  *&v702 = &v573 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v697 = sub_1DDA13EB0();
  v26 = *(v697 - 1);
  MEMORY[0x1EEE9AC00](v697);
  v696 = (&v573 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83710, &qword_1DDA1B2B8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v645 = &v573 - v29;
  v649 = sub_1DDA13D80();
  v30 = *(v649 - 8);
  MEMORY[0x1EEE9AC00](v649);
  v637 = &v573 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v682 = sub_1DDA13E70();
  v655 = *(v682 - 8);
  v32 = MEMORY[0x1EEE9AC00](v682);
  v644 = &v573 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v681 = &v573 - v34;
  v699 = COERCE_DOUBLE(sub_1DDA13EC0());
  v684 = *(*&v699 - 8);
  v35 = MEMORY[0x1EEE9AC00](*&v699);
  v643 = &v573 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v698 = &v573 - v37;
  v679 = sub_1DDA13DF0();
  v38 = *(v679 - 8);
  v39 = MEMORY[0x1EEE9AC00](v679);
  v646 = &v573 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v677 = &v573 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v678 = &v573 - v43;
  *&v695 = sub_1DDA13E10();
  *&v694 = *(v695 - 8);
  v44 = MEMORY[0x1EEE9AC00](v695);
  v640 = &v573 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v676 = &v573 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v628 = &v573 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v693 = (&v573 - v51);
  MEMORY[0x1EEE9AC00](v50);
  *&v703 = &v573 - v52;
  v661 = sub_1DDA13E40();
  v660 = *(v661 - 8);
  v53 = MEMORY[0x1EEE9AC00](v661);
  v623 = &v573 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v687 = &v573 - v55;
  v665 = sub_1DDA14700();
  v642 = *(v665 - 8);
  MEMORY[0x1EEE9AC00](v665);
  v668 = &v573 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v663 = sub_1DDA14660();
  v636 = *(v663 - 8);
  MEMORY[0x1EEE9AC00](v663);
  v662 = &v573 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v688 = sub_1DDA146A0();
  isa = v688[-1].isa;
  v58 = MEMORY[0x1EEE9AC00](v688);
  v667 = &v573 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v669 = &v573 - v60;
  v632 = sub_1DDA13A80();
  v630 = *(v632 - 8);
  MEMORY[0x1EEE9AC00](v632);
  v631 = &v573 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v639 = sub_1DDA14420();
  v638 = *(v639 - 8);
  MEMORY[0x1EEE9AC00](v639);
  v670 = &v573 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v683 = &v573 - v64;
  v666 = sub_1DDA144B0();
  v657 = *(v666 - 8);
  v65 = MEMORY[0x1EEE9AC00](v666);
  v664 = &v573 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v635 = (&v573 - v67);
  v658 = sub_1DDA144A0();
  v653 = *(v658 - 8);
  MEMORY[0x1EEE9AC00](v658);
  v648 = &v573 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83718, &qword_1DDA1B2C0);
  v70 = MEMORY[0x1EEE9AC00](v69 - 8);
  v647 = &v573 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v659 = &v573 - v72;
  v691 = sub_1DDA14720();
  v689 = *(v691 - 8);
  v73 = MEMORY[0x1EEE9AC00](v691);
  v680 = &v573 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v671 = &v573 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83720, &qword_1DDA1B2C8);
  MEMORY[0x1EEE9AC00](v76 - 8);
  v78 = &v573 - v77;
  v705 = sub_1DDA13840();
  v706 = *(v705 - 1);
  MEMORY[0x1EEE9AC00](v705);
  v704 = (&v573 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  v708 = sub_1DDA13830();
  v741 = *(v708 - 8);
  MEMORY[0x1EEE9AC00](v708);
  v707 = (&v573 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DDA139F0();
  if ((v81 & 1) == 0)
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v98 = sub_1DDA14810();
    __swift_project_value_buffer(v98, qword_1ECDA20E0);
    v99 = sub_1DDA147F0();
    v100 = sub_1DDA14EE0();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v726[0] = v102;
      *v101 = 136315138;
      v717 = &type metadata for ChatGPTProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
      v103 = sub_1DDA14B70();
      v105 = sub_1DD93FA54(v103, v104, v726);

      *(v101 + 4) = v105;
      _os_log_impl(&dword_1DD8F8000, v99, v100, "%s does not support random seeds!", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v102);
      MEMORY[0x1E12B8CE0](v102, -1, -1);
      MEMORY[0x1E12B8CE0](v101, -1, -1);
    }

    v726[0] = 0;
    v726[1] = 0xE000000000000000;
    sub_1DDA15070();

    v726[0] = &type metadata for ChatGPTProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
    v726[0] = sub_1DDA14B70();
    v726[1] = v106;
    v107 = "t frequency penalty!";
    v108 = 0xD00000000000001FLL;
    goto LABEL_22;
  }

  sub_1DDA13A40();
  if ((v82 & 1) == 0)
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v109 = sub_1DDA14810();
    __swift_project_value_buffer(v109, qword_1ECDA20E0);
    v110 = sub_1DDA147F0();
    v111 = sub_1DDA14EE0();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v726[0] = v113;
      *v112 = 136315138;
      v717 = &type metadata for ChatGPTProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
      v114 = sub_1DDA14B70();
      v116 = sub_1DD93FA54(v114, v115, v726);

      *(v112 + 4) = v116;
      _os_log_impl(&dword_1DD8F8000, v110, v111, "%s does not support frequency penalty!", v112, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v113);
      MEMORY[0x1E12B8CE0](v113, -1, -1);
      MEMORY[0x1E12B8CE0](v112, -1, -1);
    }

    v726[0] = 0;
    v726[1] = 0xE000000000000000;
    sub_1DDA15070();

    v726[0] = &type metadata for ChatGPTProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
    v726[0] = sub_1DDA14B70();
    v726[1] = v117;
    v107 = "t length penalty!";
    v108 = 0xD000000000000024;
    goto LABEL_22;
  }

  sub_1DDA13A10();
  if ((v83 & 1) == 0)
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v119 = sub_1DDA14810();
    __swift_project_value_buffer(v119, qword_1ECDA20E0);
    v120 = sub_1DDA147F0();
    v121 = sub_1DDA14EE0();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v726[0] = v123;
      *v122 = 136315138;
      v717 = &type metadata for ChatGPTProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
      v124 = sub_1DDA14B70();
      v126 = sub_1DD93FA54(v124, v125, v726);

      *(v122 + 4) = v126;
      _os_log_impl(&dword_1DD8F8000, v120, v121, "%s does not support length penalty!", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v123);
      MEMORY[0x1E12B8CE0](v123, -1, -1);
      MEMORY[0x1E12B8CE0](v122, -1, -1);
    }

    v726[0] = 0;
    v726[1] = 0xE000000000000000;
    sub_1DDA15070();

    v726[0] = &type metadata for ChatGPTProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
    v726[0] = sub_1DDA14B70();
    v726[1] = v127;
    v97 = " does not support length penalty!";
    goto LABEL_32;
  }

  sub_1DDA13A20();
  if ((v84 & 1) == 0)
  {
    if (qword_1ECD827A8 != -1)
    {
      goto LABEL_275;
    }

    goto LABEL_29;
  }

  sub_1DDA13A70();
  v85 = sub_1DDA139C0();
  v86 = (*(*(v85 - 8) + 48))(v78, 1, v85);
  sub_1DD90D378(v78, &qword_1ECD83720, &qword_1DDA1B2C8);
  if (v86 != 1)
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v145 = sub_1DDA14810();
    __swift_project_value_buffer(v145, qword_1ECDA20E0);
    v146 = sub_1DDA147F0();
    v147 = sub_1DDA14EE0();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v726[0] = v149;
      *v148 = 136315138;
      v717 = &type metadata for ChatGPTProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
      v150 = sub_1DDA14B70();
      v152 = sub_1DD93FA54(v150, v151, v726);

      *(v148 + 4) = v152;
      _os_log_impl(&dword_1DD8F8000, v146, v147, "%s does not support sampling strategies!", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v149);
      MEMORY[0x1E12B8CE0](v149, -1, -1);
      MEMORY[0x1E12B8CE0](v148, -1, -1);
    }

    v726[0] = 0;
    v726[1] = 0xE000000000000000;
    sub_1DDA15070();

    v726[0] = &type metadata for ChatGPTProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
    v726[0] = sub_1DDA14B70();
    v726[1] = v153;
    v107 = "Unknown tool call kind: ";
    v108 = 0xD000000000000026;
LABEL_22:
    v118 = v107 | 0x8000000000000000;
    goto LABEL_33;
  }

  v87 = *(sub_1DDA13A30() + 16);

  if (v87)
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v88 = sub_1DDA14810();
    __swift_project_value_buffer(v88, qword_1ECDA20E0);
    v89 = sub_1DDA147F0();
    v90 = sub_1DDA14EE0();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v726[0] = v92;
      *v91 = 136315138;
      v717 = &type metadata for ChatGPTProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
      v93 = sub_1DDA14B70();
      v95 = sub_1DD93FA54(v93, v94, v726);

      *(v91 + 4) = v95;
      _os_log_impl(&dword_1DD8F8000, v89, v90, "%s does not support stop sequences!", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x1E12B8CE0](v92, -1, -1);
      MEMORY[0x1E12B8CE0](v91, -1, -1);
    }

    v726[0] = 0;
    v726[1] = 0xE000000000000000;
    sub_1DDA15070();

    v726[0] = &type metadata for ChatGPTProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
    v726[0] = sub_1DDA14B70();
    v726[1] = v96;
    v97 = " does not support stop sequences!";
    goto LABEL_32;
  }

  v581 = a7;
  v154 = sub_1DD9C5CA4(v656);
  v585 = v154[2];
  v589 = v154;
  if (!v585)
  {
    v602 = 0;
    v606 = 0;
    v159 = MEMORY[0x1E69E7CC0];
    v588 = MEMORY[0x1E69E7CC0];
    v230 = v683;
    v259 = v657;
    v260 = v658;
    v261 = v659;
LABEL_115:
    v590 = v159;
    v262 = *(v650 + 16);
    v687 = v262;
    if (!v262)
    {
      v337 = MEMORY[0x1E69E7CC0];
      v741 = MEMORY[0x1E69E7CC0];
      v315 = v670;
      v338 = v653;
LABEL_154:
      v701 = v337;
      v708 = a12;
      if (*(a11 + 16))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v741 = sub_1DD90889C(0, *(v741 + 2) + 1, 1, v741);
        }

        v339 = v741;
        v341 = *(v741 + 2);
        v340 = *(v741 + 3);
        if (v341 >= v340 >> 1)
        {
          v339 = sub_1DD90889C((v340 > 1), v341 + 1, 1, v741);
        }

        v741 = v339;
        *(v339 + 2) = v341 + 1;
        v342 = &v339[48 * v341];
        *(v342 + 4) = 1;
        *(v342 + 40) = 0u;
        *(v342 + 56) = 0u;
        v342[72] = 0x80;
        v315 = v670;
        v260 = v658;
        v338 = v653;
        v261 = v659;
      }

      if (*(v708 + 16))
      {
        (*(v338 + 16))(v261, v708 + ((*(v338 + 80) + 32) & ~*(v338 + 80)), v260);
        v261 = v659;
        v338 = v653;
        v260 = v658;
        v343 = 0;
      }

      else
      {
        v343 = 1;
      }

      v353 = v260;
      v354 = v261;
      (*(v338 + 56))(v261, v343, 1, v260);
      v355 = v647;
      sub_1DD90ADB4(v354, v647, &qword_1ECD83718, &qword_1DDA1B2C0);
      if ((*(v338 + 48))(v355, 1, v353) == 1)
      {
        sub_1DD90D378(v354, &qword_1ECD83718, &qword_1DDA1B2C0);
        v733 = 0u;
        v734 = 0u;
        memset(v735, 0, 25);
      }

      else
      {
        (*(v338 + 32))(v648, v355, v353);
        v356 = swift_allocObject();
        *(v356 + 16) = v708;
        v357 = v635;
        *v635 = v356;
        v358 = v657;
        v359 = v666;
        (*(v657 + 104))(v357, *MEMORY[0x1E69A0B70]);

        v360 = sub_1DD9C25C0(v357);
        if (v13)
        {

          (*(v358 + 8))(v357, v359);
          (*(v338 + 8))(v648, v353);
          sub_1DD90D378(v659, &qword_1ECD83718, &qword_1DDA1B2C0);
        }

        v384 = *(v358 + 8);
        v708 = v360;
        v384(v357, v359);
        v385 = v648;
        v386 = sub_1DDA14470();
        v388 = v387;
        (*(v338 + 8))(v385, v353);
        sub_1DD90D378(v659, &qword_1ECD83718, &qword_1DDA1B2C0);
        *&v733 = 0x6863735F6E6F736ALL;
        *(&v733 + 1) = 0xEB00000000616D65;
        *&v734 = 0x65736E6F70736572;
        *(&v734 + 1) = 0xE800000000000000;
        *&v735[0] = v708;
        *(&v735[0] + 1) = v386;
        *&v735[1] = v388;
        v315 = v670;
        BYTE8(v735[1]) = 1;
      }

      sub_1DD90ADB4(a10, v230, &qword_1ECD82FC0, &qword_1DDA18998);
      v389 = v638;
      v390 = v639;
      if ((*(v638 + 48))(v230, 1, v639) == 1)
      {
        v391 = 0;
        v392 = 3;
      }

      else
      {
        (*(v389 + 32))(v315, v230, v390);
        sub_1DD92BD18(v315, &v717, v726);
        if (v13)
        {
          (*(v389 + 8))(v315, v390);

          sub_1DD90D378(&v733, &qword_1ECD83748, &unk_1DDA227C0);
        }

        v13 = 0;
        (*(v389 + 8))(v315, v390);
        v391 = v726[0];
        v392 = v726[1];
      }

      v393 = v741;
      v708 = v391;
      if (v687)
      {
        sub_1DD9B3384(v391, v392);
        v394 = v392;
      }

      else
      {
        v391 = 0;
        v394 = 3;
      }

      v707 = v392;
      v741 = v393;
      v656 = v13;
      result = MobileGestalt_get_current_device();
      if (!result)
      {
        __break(1u);
        goto LABEL_286;
      }

      v395 = result;
      internalBuild = MobileGestalt_get_internalBuild();

      v726[0] = v391;
      v726[1] = v394;
      v727 = v391;
      v728 = v394;
      v729 = v391;
      v730 = v394;
      v397 = &v731 + 1;
      v731 = xmmword_1DDA1AFF0;
      v732 = internalBuild;
      v398 = v651[4];
      v399 = v651[5];
      __swift_project_boxed_opaque_existential_1(v651 + 1, v398);
      v400 = *(v399 + 32);
      sub_1DD9B3384(v391, v394);
      sub_1DD9B3384(v391, v394);
      v706 = v391;
      v705 = v394;
      sub_1DD9B3384(v391, v394);
      v401 = v400(v398, v399);
      if (v732 == 1)
      {
        v402 = v634;
        if (v401 <= 1u)
        {
          if (v401)
          {
            v397 = &v728;
            v403 = v727;
          }

          else
          {
            v397 = &v726[1];
            v403 = v726[0];
          }
        }

        else if (v401 == 3)
        {
          v403 = v731;
        }

        else
        {
          v397 = &v730;
          v403 = v729;
        }
      }

      else
      {
        v403 = v731;
        v402 = v634;
      }

      v404 = *v397;
      sub_1DD9B3384(v403, *v397);
      v26 = v651;
      v405 = v656;
      sub_1DD988FC4(&v736);
      v13 = v405;
      if (v405)
      {

        sub_1DD90D378(v726, &qword_1ECD83740, &qword_1DDA1B2D8);
        sub_1DD90D378(&v733, &qword_1ECD83748, &unk_1DDA227C0);

        sub_1DD9B33A8(v403, v404);
        sub_1DD9B33A8(v706, v705);
        sub_1DD9B33A8(v708, v707);
      }

      v704 = v403;
      v694 = v737;
      v695 = v736;
      v693 = v738;
      v406 = *(v26 + 32);
      v407 = *(v26 + 40);
      __swift_project_boxed_opaque_existential_1((v26 + 8), v406);
      v408 = (*(v407 + 56))(v406, v407);
      *&v703 = v404;
      if (v408 == 2 || (v408 & 1) == 0)
      {
        goto LABEL_203;
      }

      v409 = sub_1DDA13F30();
      if ((*(*(v409 - 8) + 48))(v402, 1, v409) == 1)
      {
        if (qword_1ECD827A8 != -1)
        {
          goto LABEL_284;
        }

        goto LABEL_198;
      }

LABEL_202:

      v602 = 0;
      v606 = 0;
      goto LABEL_203;
    }

    v708 = *(v689 + 16);
    v263 = v650 + ((*(v689 + 80) + 32) & ~*(v689 + 80));
    v706 = *(v689 + 72);
    v707 = (isa + 88);
    LODWORD(v703) = *MEMORY[0x1E69A0DD0];
    v689 += 16;
    v741 = (v689 - 8);
    v697 = (isa + 8);
    v700 = isa + 96;
    *&v694 = v642 + 32;
    *&v695 = v259 + 8;
    v696 = (v642 + 8);
    v701 = MEMORY[0x1E69E7CC0];
    v685 = v263;
    v264 = v691;
    v265 = v668;
    v266 = v667;
    v267 = v671;
    (v708)(v671, v263, v691);
    while (1)
    {
      sub_1DDA146B0();
      v268 = v688;
      v705 = *v707;
      v269 = v705(v266, v688);
      if (v269 == v703)
      {
        (*v700)(v266, v268);
        v270 = v665;
        (*v694)(v265, v266, v665);
        v271 = v265;
        v699 = COERCE_DOUBLE(sub_1DDA146F0());
        *&v702 = v272;
        v273 = sub_1DDA146E0();
        v275 = v274;
        v276 = v664;
        sub_1DDA146D0();
        v277 = sub_1DD9C25C0(v276);
        if (v13)
        {

          (*v695)(v276, v666);
          (*v696)(v271, v270);
          (*v741)(v671, v691);
        }

        v698 = v277;
        (*v695)(v276, v666);
        (*v696)(v271, v270);
        v704 = *v741;
        (v704)(v671, v691);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v656 = 0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v701 = sub_1DD90889C(0, *(v701 + 2) + 1, 1, v701);
        }

        v279 = v702;
        v280 = *&v699;
        v281 = v701;
        v283 = *(v701 + 2);
        v282 = *(v701 + 3);
        if (v283 >= v282 >> 1)
        {
          v281 = sub_1DD90889C((v282 > 1), v283 + 1, 1, v701);
        }

        *(v281 + 2) = v283 + 1;
        v701 = v281;
        v284 = &v281[48 * v283];
        *(v284 + 4) = v280;
        *(v284 + 5) = v279;
        *(v284 + 6) = v273;
        *(v284 + 7) = v275;
        *(v284 + 8) = v698;
        v284[72] = 1;
        v13 = v656;
        v264 = v691;
        v265 = v668;
        v266 = v667;
        v267 = v671;
      }

      else
      {
        v704 = *v741;
        (v704)(v267, v264);
        (*v697)(v266, v268);
      }

      v263 += v706;
      if (!--v262)
      {
        break;
      }

      (v708)(v267, v263, v264);
    }

    v656 = v13;
    LODWORD(v699) = *MEMORY[0x1E69A0DB8];
    LODWORD(v696) = *MEMORY[0x1E69A0DB0];
    LODWORD(v693) = *MEMORY[0x1E69A0DC8];
    LODWORD(v690) = *MEMORY[0x1E69A0DC0];
    *&v695 = v636 + 32;
    *&v694 = v636 + 8;
    v313 = MEMORY[0x1E69E7CC0];
    v692 = xmmword_1DDA1AFE0;
    v686 = xmmword_1DDA1AFD0;
    v314 = v687;
    v315 = v670;
    v316 = v669;
    v317 = v680;
    v318 = v685;
    v319 = v691;
    while (1)
    {
      v320 = v318;
      v321 = v317;
      (v708)();
      sub_1DDA146B0();
      v322 = v688;
      v323 = v705(v316, v688);
      if (v323 == LODWORD(v699))
      {
        break;
      }

      if (v323 == v696)
      {
        (v704)(v680, v691);
        (*v697)(v316, v322);
        v327 = 0;
        v703 = 0u;
        v328 = 0x80;
        v702 = v692;
        v329 = v320;
        goto LABEL_145;
      }

      v329 = v320;
      if (v323 == v693)
      {
        (v704)(v680, v691);
        v327 = 0;
        v702 = 0u;
        v328 = 0x80;
        v703 = 0u;
        goto LABEL_145;
      }

      v330 = v323;
      (v704)(v680, v691);
      if (v330 == v690)
      {
        v327 = 0;
        v703 = 0u;
        v328 = 0x80;
        v702 = v686;
        goto LABEL_145;
      }

      (*v697)(v316, v688);
LABEL_150:
      v318 = v329 + v706;
      --v314;
      v317 = v680;
      if (!v314)
      {
        v741 = v313;
        v13 = v656;
        v337 = v701;
        v230 = v683;
        v260 = v658;
        v338 = v653;
        v261 = v659;
        goto LABEL_154;
      }
    }

    (*v700)(v316, v322);
    v324 = v316;
    v325 = v662;
    v326 = v663;
    (*v695)(v662, v324, v663);
    sub_1DD9FFEF4(v739);
    v703 = v739[1];
    v702 = v739[0];
    v327 = v740;
    (*v694)(v325, v326);
    (v704)(v321, v319);
    v328 = v698 & 1 | 0x40;
    LODWORD(v698) = v698 & 1 | 0x40;
    v329 = v320;
LABEL_145:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v313 = sub_1DD90889C(0, *(v313 + 2) + 1, 1, v313);
    }

    v331 = v313;
    v332 = *(v313 + 2);
    v333 = v331;
    v334 = *(v331 + 3);
    if (v332 >= v334 >> 1)
    {
      v333 = sub_1DD90889C((v334 > 1), v332 + 1, 1, v333);
    }

    *(v333 + 2) = v332 + 1;
    v335 = &v333[48 * v332];
    v313 = v333;
    v336 = v703;
    *(v335 + 2) = v702;
    *(v335 + 3) = v336;
    *(v335 + 8) = v327;
    v335[72] = v328;
    v315 = v670;
    v316 = v669;
    goto LABEL_150;
  }

  v602 = 0;
  v606 = 0;
  v155 = 0;
  v156 = v154 + ((*(v660 + 80) + 32) & ~*(v660 + 80));
  v618 = v694 + 88;
  v619 = v694 + 16;
  v617 = *MEMORY[0x1E69DA7E8];
  v601 = *MEMORY[0x1E69DA7F0];
  v615 = (v694 + 96);
  v600 = (v24 + 32);
  v599 = *MEMORY[0x1E69DA730];
  v595 = (v652 + 32);
  v596 = (v652 + 48);
  v593 = (v652 + 8);
  v594 = (v652 + 16);
  v592 = *MEMORY[0x1E69DA728];
  v597 = (v24 + 8);
  v603 = (v38 + 104);
  v604 = (v38 + 8);
  v605 = *MEMORY[0x1E69DA7A0];
  v608 = (v26 + 8);
  v609 = (v26 + 32);
  v577 = (v30 + 32);
  v575 = (v30 + 8);
  v579 = (v38 + 88);
  v580 = (v30 + 48);
  *(&v157 + 1) = 1;
  v578 = xmmword_1DDA18A90;
  *&v157 = 134217984;
  v591 = v157;
  v613 = *MEMORY[0x1E69DA808];
  v576 = *MEMORY[0x1E69DA7B8];
  v158 = *MEMORY[0x1E69DA7B0];
  v573 = *MEMORY[0x1E69DA7A8];
  v574 = v158;
  v598 = (v654 + 88);
  v616 = (v694 + 8);
  v614 = v684 + 16;
  v607 = (v655 + 96);
  v611 = (v684 + 8);
  v612 = (v655 + 88);
  v587 = (v660 + 8);
  v588 = MEMORY[0x1E69E7CC0];
  v159 = MEMORY[0x1E69E7CC0];
  v656 = v12;
  v160 = v687;
  v161 = v695;
  v583 = v156;
  v584 = v660 + 16;
  while (1)
  {
    v590 = v159;
    if (v155 >= v154[2])
    {
      __break(1u);
      goto LABEL_281;
    }

    v162 = *(v660 + 72);
    v586 = v155;
    v582 = *(v660 + 16);
    v582(v160, &v156[v162 * v155], v661);
    v163 = sub_1DDA13E20();
    v164 = v163;
    v652 = *(v163 + 16);
    if (v652)
    {
      break;
    }

    v166 = MEMORY[0x1E69E7CC0];
LABEL_75:
    v620 = v166;

    v208 = sub_1DDA13E30();
    v610 = *(v208 + 16);
    if (v610)
    {
      v209 = 0;
      v210 = MEMORY[0x1E69E7CC0];
      while (v209 < *(v208 + 16))
      {
        v211 = v208;
        v212 = v208 + ((*(v684 + 80) + 32) & ~*(v684 + 80)) + *(v684 + 72) * v209;
        v213 = *(v684 + 16);
        v214 = v698;
        v215 = *&v699;
        v213(v698, v212, *&v699);
        v216 = v681;
        sub_1DDA13E80();
        v217 = v682;
        v218 = (*v612)(v216, v682);
        if (v218 != v613)
        {

          if (qword_1ECD827A8 != -1)
          {
            swift_once();
          }

          v285 = sub_1DDA14810();
          __swift_project_value_buffer(v285, qword_1ECDA20E0);
          v286 = v643;
          v287 = v214;
          v213(v643, v214, v215);
          v288 = sub_1DDA147F0();
          v289 = sub_1DDA14EE0();
          if (os_log_type_enabled(v288, v289))
          {
            v290 = v286;
            v291 = swift_slowAlloc();
            v726[0] = swift_slowAlloc();
            v292 = v726[0];
            *v291 = 136315138;
            sub_1DDA13E80();
            v701 = sub_1DDA14B70();
            v294 = v293;
            v295 = *v611;
            *&v702 = v611 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            *&v703 = v295;
            v295(v290, v215);
            v296 = sub_1DD93FA54(v701, v294, v726);

            *(v291 + 4) = v296;
            _os_log_impl(&dword_1DD8F8000, v288, v289, "Unknown tool call kind: %s", v291, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v292);
            v297 = v292;
            v287 = v698;
            MEMORY[0x1E12B8CE0](v297, -1, -1);
            MEMORY[0x1E12B8CE0](v291, -1, -1);
          }

          else
          {

            v344 = *v611;
            *&v702 = v611 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            *&v703 = v344;
            v344(v286, v215);
          }

          v726[0] = 0;
          v726[1] = 0xE000000000000000;
          sub_1DDA15070();

          v726[0] = 0xD000000000000018;
          v726[1] = 0x80000001DDA28710;
          sub_1DDA13E80();
          v345 = sub_1DDA14B70();
          MEMORY[0x1E12B7AB0](v345);

          v346 = v707;
          sub_1DDA13800();
          v347 = v741;
          v348 = v704;
          v349 = v708;
          (*(v741 + 2))(v704, v346, v708);
          v350 = v706;
          v351 = v705;
          (*(v706 + 104))(v348, *MEMORY[0x1E69DA4C0], v705);
          sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
          swift_allocError();
          (*(v350 + 16))(v352, v348, v351);
          swift_willThrow();
          (*(v350 + 8))(v348, v351);
          (*(v347 + 1))(v346, v349);
          (v703)(v287, *&v699);
          (*v587)(v687, v661);
          return (*(v655 + 8))(v681, v682);
        }

        (*v607)(v216, v217);
        (*v609)(v696, v216, v697);
        v652 = sub_1DDA13E60();
        v622 = v219;
        v621 = sub_1DDA13E90();
        v221 = v220;
        v222 = sub_1DDA13EA0();
        v224 = v223;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v210 = sub_1DD908BE8(0, *(v210 + 2) + 1, 1, v210);
        }

        v226 = *(v210 + 2);
        v225 = *(v210 + 3);
        if (v226 >= v225 >> 1)
        {
          v210 = sub_1DD908BE8((v225 > 1), v226 + 1, 1, v210);
        }

        ++v209;
        (*v608)(v696, v697);
        (*v611)(v698, *&v699);
        *(v210 + 2) = v226 + 1;
        v227 = &v210[48 * v226];
        v228 = v621;
        v229 = v622;
        *(v227 + 4) = v652;
        *(v227 + 5) = v229;
        *(v227 + 6) = v228;
        *(v227 + 7) = v221;
        *(v227 + 8) = v222;
        *(v227 + 9) = v224;
        v13 = v656;
        v230 = v683;
        v208 = v211;
        if (v610 == v209)
        {
          goto LABEL_86;
        }
      }

      __break(1u);
LABEL_275:
      swift_once();
LABEL_29:
      v128 = sub_1DDA14810();
      __swift_project_value_buffer(v128, qword_1ECDA20E0);
      v129 = sub_1DDA147F0();
      v130 = sub_1DDA14EE0();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v726[0] = v132;
        *v131 = 136315138;
        v717 = &type metadata for ChatGPTProvider;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
        v133 = sub_1DDA14B70();
        v135 = sub_1DD93FA54(v133, v134, v726);

        *(v131 + 4) = v135;
        _os_log_impl(&dword_1DD8F8000, v129, v130, "%s does not support maximum tokens!", v131, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v132);
        MEMORY[0x1E12B8CE0](v132, -1, -1);
        MEMORY[0x1E12B8CE0](v131, -1, -1);
      }

      v726[0] = 0;
      v726[1] = 0xE000000000000000;
      sub_1DDA15070();

      v726[0] = &type metadata for ChatGPTProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
      v726[0] = sub_1DDA14B70();
      v726[1] = v136;
      v97 = " does not support maximum tokens!";
LABEL_32:
      v118 = (v97 - 32) | 0x8000000000000000;
      v108 = 0xD000000000000021;
LABEL_33:
      MEMORY[0x1E12B7AB0](v108, v118);
      v137 = v707;
      sub_1DDA13800();
      v138 = v741;
      v139 = v704;
      v140 = v708;
      (*(v741 + 2))(v704, v137, v708);
      v141 = v706;
      v142 = v705;
      (*(v706 + 104))(v139, *MEMORY[0x1E69DA4C0], v705);
      sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
      swift_allocError();
      (*(v141 + 16))(v143, v139, v142);
      swift_willThrow();
      (*(v141 + 8))(v139, v142);
      return (*(v138 + 1))(v137, v140);
    }

    v230 = v683;
LABEL_86:

    v231 = v678;
    sub_1DDA13E00();
    v232 = v677;
    v26 = v679;
    (*v603)(v677, v605, v679);
    sub_1DD9B48D0(&qword_1ECD83738, 255, MEMORY[0x1E69DA7C0], MEMORY[0x1E69DA7C8]);
    v233 = sub_1DDA14AF0();
    v234 = *v604;
    (*v604)(v232, v26);
    v652 = v234;
    (v234)(v231, v26);
    if (v233)
    {
      v160 = v687;
      (*v587)(v687, v661);

      v154 = v589;
      v161 = v695;
    }

    else
    {
      v235 = v645;
      sub_1DDA13DD0();
      v236 = v649;
      v237 = (*v580)(v235, 1, v649);
      v161 = v695;
      if (v237 == 1)
      {
        sub_1DD90D378(v235, &qword_1ECD83710, &qword_1DDA1B2B8);
      }

      else
      {
        v238 = v637;
        (*v577)();
        v239 = sub_1DDA13D70();
        if (*(v239 + 16))
        {
          v240 = v694;
          v241 = v628;
          (*(v694 + 16))(v628, v239 + ((*(v240 + 80) + 32) & ~*(v240 + 80)), v161);

          v242 = (*(v240 + 88))(v241, v161);
          if (v242 == v617)
          {
            (*v615)(v241, v161);
            v243 = *v241;
            v244 = *(v241 + 1);
            v245 = sub_1DDA13D60();
            v247 = v246;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v590 = sub_1DD908ADC(0, *(v590 + 2) + 1, 1, v590);
            }

            v249 = *(v590 + 2);
            v248 = *(v590 + 3);
            if (v249 >= v248 >> 1)
            {
              v590 = sub_1DD908ADC((v248 > 1), v249 + 1, 1, v590);
            }

            (*v575)(v637, v649);
            v250 = v590;
            *(v590 + 2) = v249 + 1;
            v251 = &v250[32 * v249];
            *(v251 + 4) = v245;
            *(v251 + 5) = v247;
            *(v251 + 6) = v243;
            *(v251 + 7) = v244;
            v13 = v656;
            v161 = v695;
          }

          else
          {
            (*v575)(v238, v236);
            (*v616)(v241, v161);
          }
        }

        else
        {
          (*v575)(v238, v236);
        }
      }

      v26 = v646;
      sub_1DDA13E00();
      v252 = (*v579)(v26, v679);
      if (v252 == v605)
      {
        v26 = 0;
LABEL_105:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v588 = sub_1DD9089B8(0, *(v588 + 2) + 1, 1, v588);
        }

        v255 = *(v588 + 2);
        v254 = *(v588 + 3);
        if (v255 >= v254 >> 1)
        {
          v588 = sub_1DD9089B8((v254 > 1), v255 + 1, 1, v588);
        }

        v160 = v687;
        (*v587)(v687, v661);
        v256 = v588;
        v154 = v589;
        *(v588 + 2) = v255 + 1;
        v257 = &v256[56 * v255];
        v258 = v620;
        *(v257 + 4) = v26;
        *(v257 + 5) = v258;
        *(v257 + 3) = v578;
        *(v257 + 8) = 0;
        *(v257 + 9) = 0;
        v257[80] = 0;
        goto LABEL_110;
      }

      v253 = v589;
      if (v252 == v576)
      {
        v26 = 1;
        goto LABEL_105;
      }

      if (v252 == v574)
      {
        v26 = 2;
        goto LABEL_105;
      }

      if (v252 != v573)
      {

        if (qword_1ECD827A8 != -1)
        {
          swift_once();
        }

        v553 = sub_1DDA14810();
        __swift_project_value_buffer(v553, qword_1ECDA20E0);
        v582(v623, v687, v661);
        v26 = sub_1DDA147F0();
        v554 = sub_1DDA14EE0();
        if (os_log_type_enabled(v26, v554))
        {
          v555 = swift_slowAlloc();
          v556 = swift_slowAlloc();
          v726[0] = v556;
          *v555 = 136315138;
          v557 = v623;
          sub_1DDA13E00();
          v558 = sub_1DDA14B70();
          v560 = v559;
          v561 = *v587;
          *&v703 = v587 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          *&v702 = v561;
          v561(v557, v661);
          v562 = sub_1DD93FA54(v558, v560, v726);

          *(v555 + 4) = v562;
          _os_log_impl(&dword_1DD8F8000, v26, v554, "Unknown role: %s", v555, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v556);
          MEMORY[0x1E12B8CE0](v556, -1, -1);
          MEMORY[0x1E12B8CE0](v555, -1, -1);

LABEL_282:
          v726[0] = 0;
          v726[1] = 0xE000000000000000;
          sub_1DDA15070();

          strcpy(v726, "Unknown role: ");
          HIBYTE(v726[1]) = -18;
          v564 = v687;
          sub_1DDA13E00();
          v565 = sub_1DDA14B70();
          MEMORY[0x1E12B7AB0](v565);

          v566 = v707;
          sub_1DDA13800();
          v567 = v741;
          v568 = v704;
          v569 = v708;
          (*(v741 + 2))(v704, v566, v708);
          v570 = v706;
          v571 = v705;
          (*(v706 + 104))(v568, *MEMORY[0x1E69DA4C0], v705);
          sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
          swift_allocError();
          (*(v570 + 16))(v572, v568, v571);
          swift_willThrow();
          (*(v570 + 8))(v568, v571);
          (*(v567 + 1))(v566, v569);
          (v702)(v564, v661);
          return (v652)(v646, v679);
        }

LABEL_281:

        v563 = *v587;
        *&v703 = v587 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        *&v702 = v563;
        v563(v623, v661);
        goto LABEL_282;
      }

      v160 = v687;
      (*v587)(v687, v661);

      v154 = v253;
    }

LABEL_110:
    v155 = v586 + 1;
    v159 = v590;
    v259 = v657;
    v260 = v658;
    v261 = v659;
    v156 = v583;
    if (v586 + 1 == v585)
    {
      goto LABEL_115;
    }
  }

  v165 = 0;
  v166 = MEMORY[0x1E69E7CC0];
  v622 = v163;
  while (1)
  {
    if (v165 >= *(v164 + 16))
    {
      __break(1u);
      goto LABEL_202;
    }

    v169 = v694;
    v170 = v164 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v694 + 72) * v165;
    v171 = *(v694 + 16);
    v172 = v703;
    v171(v703, v170, v161);
    v173 = v693;
    v171(v693, v172, v161);
    v174 = (*(v169 + 88))(v173, v161);
    if (v174 != v617)
    {
      break;
    }

    v620 = v166;
    (*v615)(v173, v161);
    v175 = *v173;
    v176 = v173[1];
    v621 = v175;
    v26 = v678;
    sub_1DDA13E00();
    v177 = v677;
    v178 = v679;
    (*v603)(v677, v605, v679);
    v179 = sub_1DDA13DE0();
    v180 = *v604;
    (*v604)(v177, v178);
    v180(v26, v178);
    if (v179)
    {
      v181 = v602;
      if (v606)
      {
        v182 = v606;
      }

      else
      {
        v181 = 0;
        v182 = 0xE000000000000000;
      }

      v726[0] = v181;
      v726[1] = v182;

      MEMORY[0x1E12B7AB0](v621, v176);

      v602 = v726[0];
      v606 = v726[1];
      v161 = v695;
      (*v616)(v703, v695);
      v13 = v656;
      v166 = v620;
      v164 = v622;
      goto LABEL_46;
    }

    v188 = v675;
    *v675 = v621;
    v188[1] = v176;
    swift_storeEnumTagMultiPayload();
    v166 = v620;
    v189 = swift_isUniquelyReferenced_nonNull_native();
    v164 = v622;
    if ((v189 & 1) == 0)
    {
      v166 = sub_1DD908D08(0, v166[2] + 1, 1, v166);
    }

    v13 = v656;
    v161 = v695;
    v191 = v166[2];
    v190 = v166[3];
    if (v191 >= v190 >> 1)
    {
      v166 = sub_1DD908D08((v190 > 1), v191 + 1, 1, v166);
    }

    (*v616)(v703, v161);
    v166[2] = v191 + 1;
    v167 = v166 + ((*(v685 + 80) + 32) & ~*(v685 + 80)) + *(v685 + 72) * v191;
    v168 = v675;
LABEL_45:
    sub_1DD9B4978(v168, v167, type metadata accessor for MessageContent);
LABEL_46:
    if (v652 == ++v165)
    {
      goto LABEL_75;
    }
  }

  v183 = v676;
  if (v174 == v601)
  {
    (*v615)(v173, v161);
    (*v600)(v702, v173, v692);
    v184 = v673;
    sub_1DDA13DB0();
    v185 = (*v598)(v184, v674);
    if (v185 == v599)
    {
      v26 = v166;
      v186 = 0xE900000000000067;
      v187 = 0x6E702F6567616D69;
    }

    else
    {
      if (v185 != v592)
      {

        v726[0] = 0;
        v726[1] = 0xE000000000000000;
        sub_1DDA15070();

        v726[0] = 0xD00000000000001ALL;
        v726[1] = 0x80000001DDA286F0;
        v372 = v629;
        sub_1DDA13DB0();
        sub_1DD9B48D0(&qword_1ECD83730, 255, MEMORY[0x1E69DA738], MEMORY[0x1E69DA740]);
        v373 = v674;
        v374 = sub_1DDA15400();
        v376 = v375;
        v701 = *(v654 + 8);
        (v701)(v372, v373);
        MEMORY[0x1E12B7AB0](v374, v376);

        v377 = v707;
        sub_1DDA13800();
        v378 = v741;
        v379 = v704;
        v380 = v708;
        (*(v741 + 2))(v704, v377, v708);
        v381 = v706;
        v382 = v705;
        (*(v706 + 104))(v379, *MEMORY[0x1E69DA4C0], v705);
        sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
        swift_allocError();
        (*(v381 + 16))(v383, v379, v382);
        swift_willThrow();
        (*(v381 + 8))(v379, v382);
        (*(v378 + 1))(v377, v380);
        (*v597)(v702, v692);
        (*v616)(v703, v695);
        (*v587)(v687, v661);
        return (v701)(v673, v674);
      }

      v26 = v166;
      v186 = 0xEA00000000006765;
      v187 = 0x706A2F6567616D69;
    }

    v192 = sub_1DDA13D90();
    v13 = v193;
    v194 = sub_1DDA13580();
    v196 = v195;
    sub_1DD909D28(v192, v13);
    v726[0] = 0;
    v726[1] = 0xE000000000000000;
    sub_1DDA15070();

    v726[0] = 0x3A61746164;
    v726[1] = 0xE500000000000000;
    MEMORY[0x1E12B7AB0](v187, v186);
    MEMORY[0x1E12B7AB0](0x2C3436657361623BLL, 0xE800000000000000);
    MEMORY[0x1E12B7AB0](v194, v196);
    v197 = v672;
    sub_1DDA134C0();

    v198 = v701;
    if ((*v596)(v197, 1, v701) == 1)
    {
      __break(1u);
LABEL_284:
      swift_once();
LABEL_198:
      v410 = sub_1DDA14810();
      __swift_project_value_buffer(v410, qword_1ECDA20E0);
      v411 = sub_1DDA147F0();
      v412 = sub_1DDA14F00();
      if (os_log_type_enabled(v411, v412))
      {
        v413 = swift_slowAlloc();
        *v413 = 0;
        _os_log_impl(&dword_1DD8F8000, v411, v412, "PromptTemplate not passed, keeping instructions.", v413, 2u);
        MEMORY[0x1E12B8CE0](v413, -1, -1);
      }

      v26 = v651;
LABEL_203:
      v414 = *(v26 + 32);
      v415 = *(v26 + 40);
      __swift_project_boxed_opaque_existential_1((v26 + 8), v414);
      v416 = (*(v415 + 64))(v414, v415);
      v656 = v13;
      if (v416 == 2 || (v416 & 1) == 0)
      {
        v418 = 0;
        v419 = 0;
      }

      else
      {

        v418 = v602;
        v419 = v417;
      }

      v420 = v651[4];
      v421 = v651[5];
      __swift_project_boxed_opaque_existential_1(v651 + 1, v420);
      v422 = (*(v421 + 64))(v420, v421);
      if (v422 == 2 || (v422 & 1) == 0)
      {
        v424 = 0;
        v423 = 0;
      }

      else
      {
        v423 = v606;

        v424 = v602;
      }

      result = MobileGestalt_get_current_device();
      if (result)
      {
        v425 = result;
        v426 = MobileGestalt_get_internalBuild();

        v717 = v602;
        v718 = v606;
        v719 = v602;
        v720 = v606;
        v721 = v418;
        v722 = v419;
        v427 = &v724;
        v723 = v424;
        v724 = v423;
        v725 = v426;
        v428 = v651;
        v429 = v651[4];
        v430 = v651[5];
        __swift_project_boxed_opaque_existential_1(v651 + 1, v429);
        v431 = *(v430 + 32);

        v432 = v431(v429, v430);
        if (v725 != 1)
        {
          goto LABEL_215;
        }

        if (v432 <= 1u)
        {
          if (v432)
          {
            v427 = &v720;
            v433 = v719;
          }

          else
          {
            v427 = &v718;
            v433 = v717;
          }
        }

        else if (v432 == 3)
        {
LABEL_215:
          v433 = v723;
        }

        else
        {
          v427 = &v722;
          v433 = v721;
        }

        v434 = *v427;

        result = MobileGestalt_get_current_device();
        if (result)
        {
          v435 = result;
          v436 = MobileGestalt_get_internalBuild();

          v437 = v428;
          v438 = v428[4];
          v439 = v428[5];
          __swift_project_boxed_opaque_existential_1(v437 + 1, v438);
          v440 = (*(v439 + 32))(v438, v439);
          v441 = 0;
          v442 = 1;
          v443 = v581;
          if (v436)
          {
            v444 = v651;
            if (v440 != 4)
            {
              if (v440 - 2 >= 2)
              {
                v442 = 0;
                v441 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                v441 = 0;
              }
            }
          }

          else
          {
            v444 = v651;
          }

          *&v692 = v434;
          v716 = v441;
          result = MobileGestalt_get_current_device();
          if (result)
          {
            v445 = result;

            sub_1DD90D378(v726, &qword_1ECD83740, &qword_1DDA1B2D8);
            sub_1DD90D378(&v717, &qword_1ECD83750, &qword_1DDA1B2E0);
            sub_1DD9B33A8(v706, v705);
            sub_1DD9B33A8(v708, v707);
            v446 = MobileGestalt_get_internalBuild();

            v714[0] = xmmword_1DDA1B000;
            v714[1] = xmmword_1DDA1B000;
            memset(&v714[2], 0, 32);
            v715 = v446;
            v447 = v444;
            v448 = v444[4];
            v449 = v444[5];
            __swift_project_boxed_opaque_existential_1(v447 + 1, v448);
            v450 = (*(v449 + 32))(v448, v449);
            if (v446)
            {
              v451 = v651;
              if (v450 - 2 >= 3)
              {
                v454 = 0;
                v452 = 0x7463757274736E69;
                v453 = 0xEC000000736E6F69;
              }

              else
              {
                v452 = 0;
                v453 = 0;
                v454 = 1;
              }
            }

            else
            {
              v452 = 0;
              v453 = 0;
              v454 = 1;
              v451 = v651;
            }

            sub_1DD90D378(v714, &qword_1ECD83750, &qword_1DDA1B2E0);
            if ((v454 & 1) == 0)
            {
              if (v442)
              {
              }

              else
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v441 = sub_1DD908634(0, *(v441 + 2) + 1, 1, v441);
                }

                v456 = *(v441 + 2);
                v455 = *(v441 + 3);
                if (v456 >= v455 >> 1)
                {
                  v441 = sub_1DD908634((v455 > 1), v456 + 1, 1, v441);
                }

                *(v441 + 2) = v456 + 1;
                v457 = &v441[16 * v456];
                *(v457 + 4) = v452;
                *(v457 + 5) = v453;
                v716 = v441;
                v443 = v581;
              }
            }

            v458 = *(v590 + 2);
            v691 = v433;
            if (v458)
            {
            }

            else
            {
              v708 = 0;
            }

            v459 = v631;
            v460 = v632;
            v461 = v625;

            LODWORD(v705) = sub_1DD9FFD7C(v624, v461);
            v462 = sub_1DDA13A50();
            v699 = *&v463;
            v464 = v443;
            if (v463)
            {
              v465 = 0x746E65746E6F63;
            }

            else
            {
              v465 = 0;
            }

            v466 = 0xE700000000000000;
            if (!v463)
            {
              v466 = 0;
            }

            v697 = v466;
            v689 = v462;
            if (v463)
            {
              v467 = v462;
            }

            else
            {
              v467 = 0;
            }

            v696 = v467;
            v468 = v451;
            v469 = v451[4];
            v470 = v451[5];
            __swift_project_boxed_opaque_existential_1(v468 + 1, v469);
            v700 = (*(v470 + 80))(v469, v470);
            v707 = v471;
            v472 = v468[4];
            v473 = v468[5];
            __swift_project_boxed_opaque_existential_1(v468 + 1, v472);
            *&v702 = (*(v473 + 112))(v472, v473);
            v706 = v474;
            if (qword_1ECD827A8 != -1)
            {
              swift_once();
            }

            v475 = sub_1DDA14810();
            __swift_project_value_buffer(v475, qword_1ECDA20E0);
            (*(v630 + 16))(v459, v464, v460);
            v476 = v708;

            sub_1DD9B3384(v704, v703);

            v708 = v476;

            sub_1DD90ADB4(&v736, &v711, &qword_1ECD83758, &qword_1DDA1B2E8);

            v698 = v465;
            v477 = v465;
            v478 = v697;
            v479 = v696;
            v480 = *&v699;
            sub_1DD9B33CC(v477, v697, v696, *&v699);
            sub_1DD90ADB4(&v733, &v711, &qword_1ECD83748, &unk_1DDA227C0);

            v481 = sub_1DDA147F0();
            LODWORD(v476) = sub_1DDA14F00();

            sub_1DD90D378(&v736, &qword_1ECD83758, &qword_1DDA1B2E8);

            sub_1DD9B33A8(v704, v703);
            v482 = v698;
            sub_1DD9B3410(v698, v478, v479, v480);
            sub_1DD90D378(&v733, &qword_1ECD83748, &unk_1DDA227C0);

            LODWORD(v690) = v476;
            if (os_log_type_enabled(v481, v476))
            {
              v688 = v481;
              v483 = swift_slowAlloc();
              v687 = swift_slowAlloc();
              v710 = v687;
              *v483 = 136318210;
              *&v711 = v627;
              *(&v711 + 1) = v633;

              v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA8, &qword_1DDA1B930);
              v485 = sub_1DDA14B70();
              v487 = sub_1DD93FA54(v485, v486, &v710);

              *(v483 + 4) = v487;
              *(v483 + 12) = 2080;
              v711 = v736;
              v712 = v737;
              *&v713[0] = v738;
              sub_1DD90ADB4(&v736, v709, &qword_1ECD83758, &qword_1DDA1B2E8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83758, &qword_1DDA1B2E8);
              v488 = sub_1DDA14B70();
              v490 = sub_1DD93FA54(v488, v489, &v710);

              *(v483 + 14) = v490;
              *(v483 + 22) = 2080;
              *&v711 = v700;
              *(&v711 + 1) = v707;

              *&v686 = v484;
              v491 = sub_1DDA14B70();
              v493 = sub_1DD93FA54(v491, v492, &v710);

              *(v483 + 24) = v493;
              *(v483 + 32) = 2080;
              LOBYTE(v711) = v705;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83760, &qword_1DDA1B2F0);
              v494 = sub_1DDA14B70();
              v496 = sub_1DD93FA54(v494, v495, &v710);

              *(v483 + 34) = v496;
              *(v483 + 42) = 2080;
              v497 = MEMORY[0x1E12B7B70](v701, &type metadata for ToolingDescription);
              v499 = sub_1DD93FA54(v497, v498, &v710);

              *(v483 + 44) = v499;
              *(v483 + 52) = 2080;
              v500 = MEMORY[0x1E12B7B70](v741, &type metadata for ToolingDescription);
              v502 = sub_1DD93FA54(v500, v501, &v710);

              *(v483 + 54) = v502;
              *(v483 + 62) = 2080;
              *&v711 = v704;
              *(&v711 + 1) = v703;
              sub_1DD9B3384(v704, v703);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83768, &qword_1DDA1B2F8);
              v503 = sub_1DDA14B70();
              v505 = sub_1DD93FA54(v503, v504, &v710);

              *(v483 + 64) = v505;
              *(v483 + 72) = 2048;
              if (v708)
              {
                v506 = *(v708 + 16);
              }

              else
              {
                v506 = 0;
              }

              v508 = v632;
              v509 = v630;
              *(v483 + 74) = v506;

              *(v483 + 82) = 2080;
              v510 = v631;
              *&v711 = sub_1DDA13A00();
              BYTE8(v711) = v511 & 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83770, &qword_1DDA1B920);
              v512 = sub_1DDA14B70();
              v514 = v513;
              (*(v509 + 8))(v510, v508);
              v515 = sub_1DD93FA54(v512, v514, &v710);

              *(v483 + 84) = v515;
              *(v483 + 92) = 2080;
              v516 = *&v699;
              if (v699 == 0.0)
              {
                v517 = 0;
                v507 = v626;
              }

              else
              {

                v507 = v626;
                v517 = v689;
              }

              *&v711 = v517;
              *(&v711 + 1) = v516;
              v518 = sub_1DDA14B70();
              v520 = v519;
              sub_1DD9B3410(v698, v697, v696, v516);
              v521 = sub_1DD93FA54(v518, v520, &v710);

              *(v483 + 94) = v521;
              *(v483 + 102) = 2080;
              v711 = v733;
              v712 = v734;
              v713[0] = v735[0];
              *(v713 + 9) = *(v735 + 9);
              sub_1DD90ADB4(&v733, v709, &qword_1ECD83748, &unk_1DDA227C0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83748, &unk_1DDA227C0);
              v522 = sub_1DDA14B70();
              v524 = sub_1DD93FA54(v522, v523, &v710);

              *(v483 + 104) = v524;
              *(v483 + 112) = 2080;
              swift_beginAccess();
              *&v711 = v716;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83778, &qword_1DDA1B300);
              v525 = sub_1DDA14B70();
              v527 = sub_1DD93FA54(v525, v526, &v710);

              *(v483 + 114) = v527;
              *(v483 + 122) = 2080;
              *&v711 = v702;
              *(&v711 + 1) = v706;

              v528 = sub_1DDA14B70();
              v530 = sub_1DD93FA54(v528, v529, &v710);

              *(v483 + 124) = v530;
              v531 = v688;
              _os_log_impl(&dword_1DD8F8000, v688, v690, "Preparing request:\n  previousChoiceID: %s\n  configuration: %s\n  model: %s\n  input: <private>\n  inputHint: %s\n  clientTools: %s\n  serverTools: %s\n  toolChoice: %s\n  toolCallOutputs: <count=%ld>\n  temperature: %s\n  prediction: %s\n  responseFormat: %s\n  include: %s\n  reasoning: %s", v483, 0x84u);
              v532 = v687;
              swift_arrayDestroy();
              MEMORY[0x1E12B8CE0](v532, -1, -1);
              MEMORY[0x1E12B8CE0](v483, -1, -1);
            }

            else
            {

              sub_1DD9B3410(v482, v478, v479, v480);

              (*(v630 + 8))(v631, v632);
              v507 = v626;
            }

            v533 = v588;

            v534 = COERCE_DOUBLE(sub_1DDA13A00());
            v535 = v534 * 0.5;
            v537 = v536 & 1;
            if (v536)
            {
              v535 = v534;
            }

            v699 = v535;
            v538 = sub_1DDA13A50();
            v540 = v539;

            v541 = v741;

            if (v540)
            {
              v542 = 0x746E65746E6F63;
            }

            else
            {
              v542 = 0;
            }

            if (v540)
            {
              v543 = 0xE700000000000000;
            }

            else
            {
              v543 = 0;
            }

            if (!v540)
            {
              v538 = 0;
            }

            swift_beginAccess();
            v544 = v716;
            LOBYTE(v710) = v537;
            v545 = v633;
            *v507 = v627;
            *(v507 + 8) = v545;
            v546 = v694;
            *(v507 + 16) = v695;
            *(v507 + 32) = v546;
            v547 = v700;
            *(v507 + 48) = v693;
            *(v507 + 56) = v547;
            v548 = v691;
            *(v507 + 64) = v707;
            *(v507 + 72) = v548;
            *(v507 + 80) = v692;
            *(v507 + 88) = v533;
            *(v507 + 96) = v705;
            *(v507 + 104) = v701;
            *(v507 + 112) = v541;
            v549 = v703;
            *(v507 + 120) = v704;
            *(v507 + 128) = v549;
            v550 = *&v699;
            *(v507 + 136) = v708;
            *(v507 + 144) = v550;
            *(v507 + 152) = v537;
            *(v507 + 160) = v542;
            *(v507 + 168) = v543;
            *(v507 + 176) = v538;
            *(v507 + 184) = v540;
            v551 = v734;
            *(v507 + 192) = v733;
            *(v507 + 208) = v551;
            *(v507 + 224) = v735[0];
            *(v507 + 233) = *(v735 + 9);
            *(v507 + 249) = 1;
            *(v507 + 256) = v544;
            v552 = v706;
            *(v507 + 264) = v702;
            *(v507 + 272) = v552;
          }

LABEL_288:
          __break(1u);
          return result;
        }

LABEL_287:
        __break(1u);
        goto LABEL_288;
      }

LABEL_286:
      __break(1u);
      goto LABEL_287;
    }

    (*v595)(v700, v197, v198);
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v199 = sub_1DDA14810();
    __swift_project_value_buffer(v199, qword_1ECDA20E0);

    v200 = sub_1DDA147F0();
    v201 = sub_1DDA14F00();
    v202 = os_log_type_enabled(v200, v201);
    v164 = v622;
    if (v202)
    {
      v203 = swift_slowAlloc();
      *v203 = v591;
      v204 = sub_1DDA14BD0();

      *(v203 + 4) = v204;

      _os_log_impl(&dword_1DD8F8000, v200, v201, "Attaching prompt image with size: %ld", v203, 0xCu);
      MEMORY[0x1E12B8CE0](v203, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v13 = v656;
    (*v594)(v690, v700, v701);
    swift_storeEnumTagMultiPayload();
    v166 = v26;
    v205 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v695;
    if ((v205 & 1) == 0)
    {
      v166 = sub_1DD908D08(0, *(v26 + 16) + 1, 1, v26);
    }

    v207 = v166[2];
    v206 = v166[3];
    if (v207 >= v206 >> 1)
    {
      v166 = sub_1DD908D08((v206 > 1), v207 + 1, 1, v166);
    }

    (*v593)(v700, v701);
    (*v597)(v702, v692);
    (*v616)(v703, v161);
    v166[2] = v207 + 1;
    v167 = v166 + ((*(v685 + 80) + 32) & ~*(v685 + 80)) + *(v685 + 72) * v207;
    v168 = v690;
    goto LABEL_45;
  }

  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v298 = sub_1DDA14810();
  __swift_project_value_buffer(v298, qword_1ECDA20E0);
  v171(v183, v703, v161);
  v299 = sub_1DDA147F0();
  v300 = sub_1DDA14EE0();
  v301 = os_log_type_enabled(v299, v300);
  v302 = v640;
  if (v301)
  {
    v303 = swift_slowAlloc();
    v304 = swift_slowAlloc();
    v726[0] = v304;
    *v303 = 136315138;
    v171(v302, v183, v695);
    v305 = sub_1DDA14B70();
    v306 = v183;
    v307 = v305;
    v309 = v308;
    v310 = *v616;
    v701 = (v616 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    *&v702 = v310;
    v310(v306, v695);
    v311 = sub_1DD93FA54(v307, v309, v726);

    *(v303 + 4) = v311;
    _os_log_impl(&dword_1DD8F8000, v299, v300, "Unknown segment type. %s", v303, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v304);
    v312 = v304;
    v161 = v695;
    MEMORY[0x1E12B8CE0](v312, -1, -1);
    MEMORY[0x1E12B8CE0](v303, -1, -1);
  }

  else
  {

    v361 = *v616;
    v701 = (v616 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    *&v702 = v361;
    v361(v183, v161);
  }

  v726[0] = 0;
  v726[1] = 0xE000000000000000;
  sub_1DDA15070();

  v726[0] = 0xD000000000000016;
  v726[1] = 0x80000001DDA286D0;
  v171(v302, v703, v161);
  v362 = sub_1DDA14B70();
  MEMORY[0x1E12B7AB0](v362);

  v363 = v707;
  sub_1DDA13800();
  v364 = v741;
  v365 = v704;
  v366 = v708;
  (*(v741 + 2))(v704, v363, v708);
  v367 = v161;
  v368 = v706;
  v369 = v705;
  (*(v706 + 104))(v365, *MEMORY[0x1E69DA4C0], v705);
  sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
  swift_allocError();
  (*(v368 + 16))(v370, v365, v369);
  swift_willThrow();
  (*(v368 + 8))(v365, v369);
  (*(v364 + 1))(v363, v366);
  v371 = v702;
  (v702)(v703, v367);
  (*v587)(v687, v661);
  return v371(v693, v367);
}