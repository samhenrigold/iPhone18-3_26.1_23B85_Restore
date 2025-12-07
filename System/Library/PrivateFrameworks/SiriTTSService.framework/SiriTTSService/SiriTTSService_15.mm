uint64_t sub_1B1BDA094(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B1C2C1C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v6 = [objc_opt_self() defaultManager];
  (*(v3 + 16))(v5, a1 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v2);
  v7 = sub_1B1C2C118();
  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B1C361C0;
  v9 = *MEMORY[0x1E695DA90];
  *(v8 + 32) = *MEMORY[0x1E695DA90];
  v28[0] = 0;
  v10 = v9;
  v11 = sub_1B1BDE408(v7, v8, 5, v28, v6);

  v12 = v28[0];
  if (v11)
  {
    v13 = sub_1B1C2CE78();
    v14 = v12;
  }

  else
  {
    v15 = v28[0];
    v16 = sub_1B1C2C058();

    swift_willThrow();
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v17 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v17, qword_1ED9A9120);
    v18 = v16;
    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = sub_1B1C2D828();
      v25 = sub_1B1A930E4(v23, v24, v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1B1A8A000, v19, v20, "Unable to list directory, error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1B2739FD0](v22, -1, -1);
      MEMORY[0x1B2739FD0](v21, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v13;
}

uint64_t sub_1B1BDA3E8(uint64_t a1, unint64_t a2)
{
  v17 = a1;

  v5 = 0;
  sub_1B1BDBA90(&v17);
  v6 = *(v17 + 16);
  v7 = __OFSUB__(v6, a2);
  v8 = v6 - a2;
  if (v7)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  a2 = sub_1B1BDAA88(0, v8 & ~(v8 >> 63), v17);
  v2 = v9;
  v5 = v10;
  v3 = v11;

  if ((v3 & 1) == 0)
  {
LABEL_3:
    sub_1B1B372A0(a2, v2, v5, v3);
    v13 = v12;
LABEL_10:
    swift_unknownObjectRelease();
    return v13;
  }

  sub_1B1C2D7C8();
  swift_unknownObjectRetain_n();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(v14 + 16);

  if (__OFSUB__(v3 >> 1, v5))
  {
    goto LABEL_13;
  }

  if (v15 != (v3 >> 1) - v5)
  {
LABEL_14:
    swift_unknownObjectRelease_n();
    goto LABEL_3;
  }

  v13 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v13)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  return v13;
}

BOOL sub_1B1BDA53C(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB0, &unk_1B1C40E10);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v13 = sub_1B1C2C428();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v35 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v31 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
  inited = swift_initStackObject();
  v33 = xmmword_1B1C361C0;
  *(inited + 16) = xmmword_1B1C361C0;
  v19 = *MEMORY[0x1E695DA90];
  *(inited + 32) = *MEMORY[0x1E695DA90];
  v32 = v19;
  sub_1B1B7037C(inited);
  v20 = v31;
  sub_1B1C2C0D8();
  if (v20)
  {

    v21 = sub_1B1C2BFD8();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v21);
    sub_1B1BDE4BC(v7, &qword_1EB761DB0, &unk_1B1C40E10);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  }

  else
  {

    v22 = sub_1B1C2BFD8();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v22);
    sub_1B1C2BFB8();
    (*(*(v22 - 8) + 8))(v7, v22);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v37, v12, v13);
      v23 = v36;
      goto LABEL_7;
    }
  }

  v23 = v36;
  sub_1B1C2C358();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    sub_1B1BDE4BC(v12, &qword_1EB761D88, &qword_1B1C36488);
  }

LABEL_7:
  v24 = swift_initStackObject();
  *(v24 + 16) = v33;
  *(v24 + 32) = v32;
  sub_1B1B7037C(v24);
  sub_1B1C2C0D8();

  v25 = sub_1B1C2BFD8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v25);
  sub_1B1C2BFB8();
  (*(*(v25 - 8) + 8))(v5, v25);
  if (__swift_getEnumTagSinglePayload(v23, 1, v13) == 1)
  {
    v26 = v35;
    sub_1B1C2C358();
    if (__swift_getEnumTagSinglePayload(v23, 1, v13) != 1)
    {
      sub_1B1BDE4BC(v23, &qword_1EB761D88, &qword_1B1C36488);
    }
  }

  else
  {
    v26 = v35;
    (*(v14 + 32))(v35, v23, v13);
  }

  v27 = v37;
  v28 = sub_1B1C2C3F8();
  v29 = *(v14 + 8);
  v29(v26, v13);
  v29(v27, v13);
  return v28 == -1;
}

unint64_t sub_1B1BDAA88(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_1B1C2C1C8();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B1BDAB30(uint64_t a1)
{
  v2 = sub_1B1C2C428();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  (*(v4 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_1B1BD9A5C();
}

unint64_t sub_1B1BDAC5C(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;

  return sub_1B1B08BA4(sub_1B1BDE49C, v4, a1);
}

uint64_t sub_1B1BDACB8(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v25 = sub_1B1C2C428();
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB0, &unk_1B1C40E10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_1B1C2BFD8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  v16 = *MEMORY[0x1E695DA90];
  *(inited + 32) = *MEMORY[0x1E695DA90];
  v17 = v16;
  sub_1B1B7037C(inited);
  sub_1B1C2C0D8();
  if (v2)
  {

    v18 = 1;
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    sub_1B1BDE4BC(v10, &qword_1EB761DB0, &unk_1B1C40E10);
  }

  else
  {

    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    (*(v12 + 32))(v14, v10, v11);
    sub_1B1C2BFB8();
    v19 = v25;
    if (__swift_getEnumTagSinglePayload(v5, 1, v25) == 1)
    {
      (*(v12 + 8))(v14, v11);
      sub_1B1BDE4BC(v5, &qword_1EB761D88, &qword_1B1C36488);
      v18 = 1;
    }

    else
    {
      v20 = v23;
      (*(v23 + 32))(v7, v5, v19);
      v18 = sub_1B1C2C388();
      (*(v20 + 8))(v7, v19);
      (*(v12 + 8))(v14, v11);
    }
  }

  return v18 & 1;
}

uint64_t CacheStorage.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL;
  sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t CacheStorage.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL;
  sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1B1BDB124()
{
  v0 = sub_1B1C2CBC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2CBB8();
  v4 = sub_1B1C2CB68();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1ED9A5140 = v4;
    *algn_1ED9A5148 = v6;
  }

  return result;
}

void *SynthesisCacheFile.voice.getter()
{
  v1 = *(v0 + *(type metadata accessor for SynthesisCacheFile(0) + 24));
  v2 = v1;
  return v1;
}

void *SynthesisCacheFile.resource.getter()
{
  v1 = *(v0 + *(type metadata accessor for SynthesisCacheFile(0) + 28));
  v2 = v1;
  return v1;
}

uint64_t sub_1B1BDB29C()
{
  SynthesisCacheFile.makeIterator()();

  return sub_1B1ACD41C(v0);
}

uint64_t sub_1B1BDB2D4()
{
  v1 = sub_1B1BDD948(v0);
  sub_1B1ACD41C(v0);
  return v1;
}

unint64_t sub_1B1BDB334(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1C2D6C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B1BDB3A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1BDB334(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B1BDB3D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1AA9D2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B1BDB400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1BDB334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1BDB434(uint64_t a1)
{
  v2 = sub_1B1AA9CD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1BDB470(uint64_t a1)
{
  v2 = sub_1B1AA9CD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B1BDB4AC(uint64_t a1)
{
  v3 = *(sub_1B1C2C428() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B1BDAC5C(a1, v4);
}

unint64_t sub_1B1BDB520()
{
  result = qword_1EB764018;
  if (!qword_1EB764018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB764018);
  }

  return result;
}

void sub_1B1BDB6A8(uint64_t a1)
{
  sub_1B1C2C1C8();
  if (v1 <= 0x3F)
  {
    sub_1B1A8E474(319, &qword_1ED9A4F20, 0x1E696AC00);
    if (v2 <= 0x3F)
    {
      sub_1B1BDB7A4(319, &unk_1EB7611F8, type metadata accessor for SynthesisVoice);
      if (v3 <= 0x3F)
      {
        sub_1B1BDB7A4(319, &qword_1EB761150, type metadata accessor for SynthesisResource);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B1BDB7A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B1C2D2B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B1BDB804(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1B1BDB844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B1BDB8B4()
{
  result = qword_1EB764020;
  if (!qword_1EB764020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB764020);
  }

  return result;
}

unint64_t sub_1B1BDB90C()
{
  result = qword_1ED9A5198;
  if (!qword_1ED9A5198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5198);
  }

  return result;
}

unint64_t sub_1B1BDB964()
{
  result = qword_1ED9A51A0;
  if (!qword_1ED9A51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A51A0);
  }

  return result;
}

uint64_t sub_1B1BDB9B8(uint64_t a1)
{
  v2 = sub_1B1C2BF08();
  if (v2)
  {
    v3 = v2;
    result = sub_1B1C2BF38();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - result + v3);
  }

  else
  {
    v5 = 0;
  }

  result = sub_1B1C2BF28();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B1BDBA24(uint64_t a1)
{
  v2 = sub_1B1C2BF08();
  if (v2)
  {
    v3 = v2;
    result = sub_1B1C2BF38();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1B1C2BF28();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B1BDBA90(uint64_t *a1)
{
  v2 = *(sub_1B1C2C1C8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B1BDE524(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1B1BDBB38(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1B1BDBB38(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1B1C2D768();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B1C2C1C8();
        v6 = sub_1B1C2CEB8();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1B1C2C1C8() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1B1BDBF48(v8, v9, a1, v4);
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
    return sub_1B1BDBC68(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B1BDBC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = sub_1B1C2C1C8();
  v9 = *(v42 - 8);
  v10 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v37 = a2;
  if (a3 != a2)
  {
    v50 = &v35 - v16;
    v17 = *a4;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v20 = *(v18 + 56);
    v48 = v19;
    v49 = (v18 - 8);
    v21 = (v17 + v20 * (a3 - 1));
    v43 = -v20;
    v44 = (v18 + 16);
    v22 = a1 - a3;
    v45 = v17;
    v46 = v18;
    v36 = v20;
    v23 = v17 + v20 * a3;
    v24 = v4;
    while (2)
    {
      v40 = v21;
      v41 = a3;
      v38 = v23;
      v39 = v22;
      v25 = v42;
      while (1)
      {
        v26 = v50;
        v27 = v48;
        v48(v50, v23, v25);
        v27(v14, v21, v25);
        v28 = sub_1B1BDA53C(v26, v14);
        v51 = v24;
        if (v24)
        {
          v34 = *v49;
          (*v49)(v14, v25);
          return (v34)(v26, v25);
        }

        v29 = v28;
        v30 = *v49;
        (*v49)(v14, v25);
        result = (v30)(v26, v25);
        if (!v29)
        {
          break;
        }

        if (!v45)
        {
          __break(1u);
          return result;
        }

        v31 = *v44;
        v32 = v47;
        (*v44)(v47, v23, v25);
        swift_arrayInitWithTakeFrontToBack();
        result = v31(v21, v32, v25);
        v21 += v43;
        v23 += v43;
        v33 = __CFADD__(v22++, 1);
        v24 = v51;
        if (v33)
        {
          goto LABEL_11;
        }
      }

      v24 = v51;
LABEL_11:
      a3 = v41 + 1;
      v21 = &v40[v36];
      v22 = v39 - 1;
      v23 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B1BDBF48(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v165 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB0, &unk_1B1C40E10);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v159 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v187 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v159 - v17;
  v19 = sub_1B1C2C428();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v196 = &v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v195 = &v159 - v23;
  v191 = sub_1B1C2C1C8();
  v24 = MEMORY[0x1EEE9AC00](v191);
  v166 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v179 = &v159 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v197 = &v159 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v194 = &v159 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v169 = &v159 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v160 = &v159 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v162 = &v159 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v161 = &v159 - v39;
  v175 = a3;
  v40 = a3[1];
  v174 = v38;
  if (v40 < 1)
  {
    v42 = MEMORY[0x1E69E7CC0];
LABEL_112:
    v197 = *v165;
    if (v197)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_114;
    }

    goto LABEL_155;
  }

  v41 = 0;
  v189 = v38 + 16;
  v190 = (v38 + 8);
  v188 = (v38 + 32);
  v182 = *MEMORY[0x1E695DA90];
  v176 = (v20 + 32);
  v181 = (v20 + 8);
  v193 = xmmword_1B1C361C0;
  v164 = a4;
  v186 = v11;
  v185 = v13;
  v42 = MEMORY[0x1E69E7CC0];
  v184 = v18;
  v183 = v19;
  while (1)
  {
    v43 = v41 + 1;
    if (v41 + 1 >= v40)
    {
      goto LABEL_34;
    }

    v178 = v40;
    v163 = v42;
    v44 = *v175;
    v45 = *(v38 + 72);
    v173 = v41 + 1;
    v46 = &v44[v45 * v43];
    v47 = *(v38 + 16);
    v48 = v161;
    v49 = v191;
    v47(v161, v46, v191);
    v180 = v44;
    v50 = &v44[v45 * v41];
    v51 = v162;
    v172 = v47;
    v47(v162, v50, v49);
    LODWORD(v177) = sub_1B1BDA53C(v48, v51);
    if (v5)
    {
      v158 = *v190;
      (*v190)(v51, v49);
      (v158)(v48, v49);
      goto LABEL_122;
    }

    v192 = 0;
    v52 = *v190;
    (*v190)(v51, v49);
    v171 = v52;
    (v52)(v48, v49);
    v159 = v41;
    v53 = v41 + 2;
    v54 = &v180[v45 * (v41 + 2)];
    v55 = v160;
    v43 = v173;
    v56 = v169;
    v57 = v45;
    v180 = v45;
    v58 = v178;
    while (1)
    {
      v59 = v53;
      if (v43 + 1 >= v58)
      {
        break;
      }

      v60 = v43;
      v61 = v191;
      v62 = v172;
      (v172)(v55, v54, v191);
      v62(v56, v46, v61);
      v63 = v192;
      v64 = sub_1B1BDA53C(v55, v56);
      v192 = v63;
      if (v63)
      {
        v157 = v171;
        (v171)(v56, v61);
        v157(v55, v61);

        return;
      }

      v65 = v64;
      v66 = v171;
      (v171)(v56, v61);
      v66(v55, v61);
      v56 = v169;
      v57 = v180;
      v54 = &v180[v54];
      v46 = &v180[v46];
      v43 = v60 + 1;
      v53 = v59 + 1;
      v58 = v178;
      if ((v177 ^ v65))
      {
        goto LABEL_11;
      }
    }

    v43 = v58;
LABEL_11:
    a4 = v164;
    if ((v177 & 1) == 0)
    {
      v38 = v174;
      v41 = v159;
LABEL_33:
      v42 = v163;
      v5 = v192;
      goto LABEL_34;
    }

    v41 = v159;
    if (v43 < v159)
    {
      goto LABEL_149;
    }

    if (v159 >= v43)
    {
      v38 = v174;
      goto LABEL_33;
    }

    v67 = v58 >= v59 ? v59 : v58;
    v68 = v57 * (v67 - 1);
    v69 = v57 * v67;
    v70 = v159 * v57;
    v71 = v43;
    v5 = v192;
    v173 = v43;
    do
    {
      if (v41 != --v71)
      {
        v72 = *v175;
        if (!*v175)
        {
          goto LABEL_153;
        }

        v73 = v191;
        v192 = *v188;
        (v192)(v166, &v72[v70], v191);
        v74 = v70 < v68 || &v72[v70] >= &v72[v69];
        if (v74)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v70 != v68)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        (v192)(&v72[v68], v166, v73);
        v43 = v173;
        v57 = v180;
      }

      ++v41;
      v68 -= v57;
      v69 -= v57;
      v70 += v57;
    }

    while (v41 < v71);
    v38 = v174;
    a4 = v164;
    v41 = v159;
    v42 = v163;
LABEL_34:
    v75 = v175[1];
    if (v43 < v75)
    {
      if (__OFSUB__(v43, v41))
      {
        goto LABEL_145;
      }

      if (v43 - v41 < a4)
      {
        v76 = (v41 + a4);
        if (__OFADD__(v41, a4))
        {
          __break(1u);
        }

        else
        {
          if (v76 >= v75)
          {
            v76 = v175[1];
          }

          if (v76 >= v41)
          {
            if (v43 == v76)
            {
              goto LABEL_60;
            }

            v163 = v42;
            v77 = *v175;
            v78 = *(v38 + 72);
            v180 = *(v38 + 16);
            v79 = &v77[v78 * (v43 - 1)];
            v177 = -v78;
            v159 = v41;
            v80 = (v41 - v43);
            v178 = v77;
            v167 = v78;
            v81 = &v77[v43 * v78];
            v82 = v191;
            v168 = v76;
            while (1)
            {
              v173 = v43;
              v170 = v81;
              v171 = v80;
              v83 = v80;
              v172 = v79;
              do
              {
                v192 = v83;
                v84 = v180;
                (v180)(v194, v81, v82);
                v84(v197, v79, v82);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
                inited = swift_initStackObject();
                *(inited + 16) = v193;
                v86 = v182;
                *(inited + 32) = v182;
                v87 = v86;
                sub_1B1B7037C(inited);
                v88 = v185;
                sub_1B1C2C0D8();
                if (v5)
                {

                  v89 = sub_1B1C2BFD8();
                  __swift_storeEnumTagSinglePayload(v88, 1, 1, v89);
                  sub_1B1BDE4BC(v88, &qword_1EB761DB0, &unk_1B1C40E10);
                  v90 = v184;
                  v91 = v183;
                  __swift_storeEnumTagSinglePayload(v184, 1, 1, v183);
LABEL_47:
                  v93 = v187;
                  sub_1B1C2C358();
                  if (__swift_getEnumTagSinglePayload(v90, 1, v91) != 1)
                  {
                    sub_1B1BDE4BC(v90, &qword_1EB761D88, &qword_1B1C36488);
                  }

                  goto LABEL_50;
                }

                v92 = sub_1B1C2BFD8();
                __swift_storeEnumTagSinglePayload(v88, 0, 1, v92);
                v90 = v184;
                sub_1B1C2BFB8();
                (*(*(v92 - 8) + 8))(v88, v92);
                v91 = v183;
                if (__swift_getEnumTagSinglePayload(v90, 1, v183) == 1)
                {
                  goto LABEL_47;
                }

                (*v176)(v195, v90, v91);
                v93 = v187;
LABEL_50:
                v94 = swift_initStackObject();
                *(v94 + 16) = v193;
                *(v94 + 32) = v87;
                sub_1B1B7037C(v94);
                v95 = v186;
                sub_1B1C2C0D8();

                v96 = sub_1B1C2BFD8();
                __swift_storeEnumTagSinglePayload(v95, 0, 1, v96);
                sub_1B1C2BFB8();
                (*(*(v96 - 8) + 8))(v95, v96);
                if (__swift_getEnumTagSinglePayload(v93, 1, v91) == 1)
                {
                  sub_1B1C2C358();
                  if (__swift_getEnumTagSinglePayload(v93, 1, v91) != 1)
                  {
                    sub_1B1BDE4BC(v93, &qword_1EB761D88, &qword_1B1C36488);
                  }
                }

                else
                {
                  (*v176)(v196, v93, v91);
                }

                v98 = v195;
                v97 = v196;
                v99 = sub_1B1C2C3F8();
                v100 = *v181;
                (*v181)(v97, v91);
                v100(v98, v91);
                v82 = v191;
                v101 = *v190;
                (*v190)(v197, v191);
                (v101)(v194, v82);
                v5 = 0;
                if (v99 != -1)
                {
                  break;
                }

                v102 = v192;
                if (!v178)
                {
                  goto LABEL_150;
                }

                v103 = *v188;
                v104 = v179;
                (*v188)(v179, v81, v82);
                swift_arrayInitWithTakeFrontToBack();
                v103(v79, v104, v82);
                v79 += v177;
                v81 += v177;
                v74 = __CFADD__(v102, 1);
                v83 = v102 + 1;
              }

              while (!v74);
              v43 = v173 + 1;
              v79 = &v172[v167];
              v80 = v171 - 1;
              v81 = &v170[v167];
              if ((v173 + 1) == v168)
              {
                v43 = v168;
                v42 = v163;
                v41 = v159;
                goto LABEL_60;
              }
            }
          }
        }

        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }
    }

LABEL_60:
    if (v43 < v41)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B1B04838();
      v42 = v148;
    }

    v106 = *(v42 + 2);
    v105 = *(v42 + 3);
    v107 = v106 + 1;
    v173 = v43;
    if (v106 >= v105 >> 1)
    {
      sub_1B1B04838();
      v42 = v149;
    }

    *(v42 + 2) = v107;
    v108 = v42 + 32;
    v109 = &v42[16 * v106 + 32];
    v110 = v173;
    *v109 = v41;
    *(v109 + 1) = v110;
    v192 = *v165;
    if (!v192)
    {
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
      return;
    }

    if (v106)
    {
      break;
    }

LABEL_109:
    v40 = v175[1];
    v41 = v173;
    v38 = v174;
    a4 = v164;
    if (v173 >= v40)
    {
      goto LABEL_112;
    }
  }

  while (1)
  {
    v111 = v107 - 1;
    v112 = &v108[16 * v107 - 16];
    v113 = &v42[16 * v107];
    if (v107 >= 4)
    {
      v118 = &v108[16 * v107];
      v119 = *(v118 - 8);
      v120 = *(v118 - 7);
      v124 = __OFSUB__(v120, v119);
      v121 = v120 - v119;
      if (v124)
      {
        goto LABEL_132;
      }

      v123 = *(v118 - 6);
      v122 = *(v118 - 5);
      v124 = __OFSUB__(v122, v123);
      v116 = v122 - v123;
      v117 = v124;
      if (v124)
      {
        goto LABEL_133;
      }

      v125 = *(v113 + 1);
      v126 = v125 - *v113;
      if (__OFSUB__(v125, *v113))
      {
        goto LABEL_135;
      }

      v124 = __OFADD__(v116, v126);
      v127 = v116 + v126;
      if (v124)
      {
        goto LABEL_138;
      }

      if (v127 >= v121)
      {
        v141 = *v112;
        v140 = *(v112 + 1);
        v124 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v124)
        {
          goto LABEL_143;
        }

        if (v116 < v142)
        {
          v111 = v107 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_80;
    }

    if (v107 == 3)
    {
      v114 = *(v42 + 4);
      v115 = *(v42 + 5);
      v124 = __OFSUB__(v115, v114);
      v116 = v115 - v114;
      v117 = v124;
LABEL_80:
      if (v117)
      {
        goto LABEL_134;
      }

      v129 = *v113;
      v128 = *(v113 + 1);
      v130 = __OFSUB__(v128, v129);
      v131 = v128 - v129;
      v132 = v130;
      if (v130)
      {
        goto LABEL_137;
      }

      v133 = *(v112 + 1);
      v134 = v133 - *v112;
      if (__OFSUB__(v133, *v112))
      {
        goto LABEL_140;
      }

      if (__OFADD__(v131, v134))
      {
        goto LABEL_142;
      }

      if (v131 + v134 >= v116)
      {
        if (v116 < v134)
        {
          v111 = v107 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_95;
    }

    if (v107 < 2)
    {
      goto LABEL_136;
    }

    v136 = *v113;
    v135 = *(v113 + 1);
    v124 = __OFSUB__(v135, v136);
    v131 = v135 - v136;
    v132 = v124;
LABEL_95:
    if (v132)
    {
      goto LABEL_139;
    }

    v138 = *v112;
    v137 = *(v112 + 1);
    v124 = __OFSUB__(v137, v138);
    v139 = v137 - v138;
    if (v124)
    {
      goto LABEL_141;
    }

    if (v139 < v131)
    {
      goto LABEL_109;
    }

LABEL_102:
    if (v111 - 1 >= v107)
    {
      break;
    }

    if (!*v175)
    {
      goto LABEL_151;
    }

    v143 = &v108[16 * v111 - 16];
    v144 = *v143;
    v145 = &v108[16 * v111];
    v146 = *(v145 + 1);
    sub_1B1BDD0D4(&(*v175)[*(v174 + 72) * *v143], &(*v175)[*(v174 + 72) * *v145], &(*v175)[*(v174 + 72) * v146], v192);
    if (v5)
    {
      goto LABEL_122;
    }

    if (v146 < v144)
    {
      goto LABEL_126;
    }

    v147 = *(v42 + 2);
    if (v111 > v147)
    {
      goto LABEL_127;
    }

    *v143 = v144;
    *(v143 + 1) = v146;
    if (v111 >= v147)
    {
      goto LABEL_128;
    }

    v107 = v147 - 1;
    memmove(&v108[16 * v111], v145 + 16, 16 * (v147 - 1 - v111));
    *(v42 + 2) = v147 - 1;
    if (v147 <= 2)
    {
      goto LABEL_109;
    }
  }

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
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  v42 = sub_1B1BDD728(v42);
LABEL_114:
  v150 = (v42 + 16);
  for (i = *(v42 + 2); i >= 2; *v150 = i)
  {
    if (!*v175)
    {
      goto LABEL_152;
    }

    v152 = &v42[16 * i];
    v153 = *v152;
    v154 = &v150[2 * i];
    v155 = v154[1];
    sub_1B1BDD0D4(&(*v175)[*(v174 + 72) * *v152], &(*v175)[*(v174 + 72) * *v154], &(*v175)[*(v174 + 72) * v155], v197);
    if (v5)
    {
      break;
    }

    if (v155 < v153)
    {
      goto LABEL_129;
    }

    if (i - 2 >= *v150)
    {
      goto LABEL_130;
    }

    *v152 = v153;
    *(v152 + 1) = v155;
    v156 = *v150 - i;
    if (*v150 < i)
    {
      goto LABEL_131;
    }

    i = *v150 - 1;
    memmove(v154, v154 + 2, 16 * v156);
  }

LABEL_122:
}

uint64_t sub_1B1BDD0D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1B1C2C1C8();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v81 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v73 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v73 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v20 = &v73 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  v23 = a2 - a1 == 0x8000000000000000 && v22 == -1;
  if (v23)
  {
    goto LABEL_66;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_67;
  }

  v89 = a1;
  v88 = a4;
  v82 = a3;
  v83 = (v18 + 16);
  v84 = (v18 + 8);
  v26 = v24 / v22;
  v27 = v22;
  if ((a2 - a1) / v22 >= v24 / v22)
  {
    v78 = v13;
    sub_1B1B04B98(a2, v24 / v22, a4);
    v43 = a2;
    v44 = a4 + v26 * v27;
    v45 = -v27;
    v46 = v44;
    v47 = v82;
    v48 = a1;
    v49 = v86;
    v75 = v45;
    v76 = a1;
    v77 = a4;
LABEL_39:
    v79 = v43;
    v80 = (v43 + v45);
    v50 = v47;
    v73 = v46;
    v51 = v46;
    v52 = v81;
    while (1)
    {
      if (v44 <= a4)
      {
        v86 = v49;
        v87 = v51;
        v89 = v43;
        goto LABEL_64;
      }

      if (v43 <= v48)
      {
        v89 = v43;
        v86 = v49;
        v87 = v73;
        goto LABEL_64;
      }

      v53 = v52;
      v54 = v50;
      v74 = v51;
      v55 = v49;
      v82 = v44;
      v56 = v44 + v45;
      v57 = *v83;
      v58 = v78;
      (*v83)(v78, v44 + v45, v8);
      (v57)(v53, v80, v8);
      v59 = sub_1B1BDA53C(v58, v53);
      v86 = v55;
      if (v55)
      {
        break;
      }

      v60 = v59;
      v47 = v54 + v45;
      v61 = *v84;
      (*v84)(v53, v8);
      v61(v58, v8);
      if (v60)
      {
        v65 = v54 < v79 || v47 >= v79;
        a4 = v77;
        if (v65)
        {
          v66 = v80;
          swift_arrayInitWithTakeFrontToBack();
          v43 = v66;
          v46 = v74;
          v45 = v75;
          v48 = v76;
          v49 = v86;
          v44 = v82;
        }

        else
        {
          v45 = v75;
          v46 = v74;
          v23 = v54 == v79;
          v67 = v80;
          v43 = v80;
          v48 = v76;
          v49 = v86;
          v44 = v82;
          if (!v23)
          {
            v68 = v86;
            v69 = v75;
            v70 = v74;
            swift_arrayInitWithTakeBackToFront();
            v44 = v82;
            v49 = v68;
            v43 = v67;
            v46 = v70;
            v45 = v69;
          }
        }

        goto LABEL_39;
      }

      v62 = v54 < v82 || v47 >= v82;
      a4 = v77;
      if (v62)
      {
        swift_arrayInitWithTakeFrontToBack();
        v50 = v54 + v45;
        v44 = v56;
        v51 = v56;
        v43 = v79;
        v45 = v75;
        v48 = v76;
        v49 = v86;
        v52 = v81;
      }

      else
      {
        v51 = v56;
        v23 = v82 == v54;
        v50 = v54 + v45;
        v44 = v56;
        v43 = v79;
        v45 = v75;
        v48 = v76;
        v49 = v86;
        v52 = v81;
        if (!v23)
        {
          v63 = v79;
          v64 = v86;
          swift_arrayInitWithTakeBackToFront();
          v49 = v64;
          v43 = v63;
          v50 = v47;
          v44 = v56;
          v51 = v56;
        }
      }
    }

    v72 = *v84;
    (*v84)(v53, v8);
    v72(v58, v8);
    v89 = v79;
    v87 = v74;
  }

  else
  {
    v28 = v8;
    v29 = (a2 - a1) / v22;
    sub_1B1B04B98(a1, v29, a4);
    v30 = a2;
    v80 = v20;
    v81 = (a4 + v29 * v27);
    v87 = v81;
    v31 = v82;
    v32 = a1;
    v85 = v28;
    v79 = v16;
    while (a4 < v81 && v30 < v31)
    {
      v34 = v27;
      v35 = *v83;
      v36 = v30;
      (*v83)(v20);
      (v35)(v16, a4, v28);
      v37 = v86;
      v38 = sub_1B1BDA53C(v20, v16);
      v86 = v37;
      if (v37)
      {
        v71 = *v84;
        (*v84)(v16, v28);
        v71(v20, v28);
        break;
      }

      v39 = v38;
      v40 = *v84;
      (*v84)(v16, v28);
      v40(v20, v28);
      v27 = v34;
      if (v39)
      {
        if (v32 < v36 || v32 >= v36 + v34)
        {
          swift_arrayInitWithTakeFrontToBack();
          v30 = v36 + v34;
          v16 = v79;
        }

        else
        {
          v16 = v79;
          if (v32 != v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v30 = v36 + v34;
        }

        v20 = v80;
      }

      else
      {
        if (v32 < a4 || v32 >= a4 + v34)
        {
          swift_arrayInitWithTakeFrontToBack();
          v16 = v79;
        }

        else
        {
          v16 = v79;
          if (v32 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v88 = a4 + v34;
        a4 += v34;
        v20 = v80;
        v30 = v36;
      }

      v32 += v34;
      v89 = v32;
      v31 = v82;
      v28 = v85;
    }
  }

LABEL_64:
  sub_1B1BDD73C(&v89, &v88, &v87);
  return 1;
}

uint64_t sub_1B1BDD73C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1B1C2C1C8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1B1BDD81C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1B1BDD848(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C20, &qword_1B1C35D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1B1BDD948(uint64_t a1)
{
  v2 = type metadata accessor for SynthesisCacheFile(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1AD0F78(a1, v5);
  v6 = *&v5[*(v3 + 28)];
  sub_1B1ACD41C(v5);
  v7 = 0;
  v40 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  while (2)
  {
    result = sub_1B1C2D068();
    v11 = v10;
    if (v10 >> 60 == 15)
    {

      goto LABEL_47;
    }

    v12 = result;
    v13 = 0;
    switch(v10 >> 62)
    {
      case 1uLL:
        if (result > result >> 32)
        {
          goto LABEL_53;
        }

        v14 = sub_1B1C2BF08();
        if (!v14)
        {
          goto LABEL_9;
        }

        result = sub_1B1C2BF38();
        if (__OFSUB__(v12, result))
        {
          goto LABEL_57;
        }

        v14 = (v14 + v12 - result);
LABEL_9:
        result = sub_1B1C2BF28();
        if (!v14)
        {
          goto LABEL_60;
        }

LABEL_15:
        v13 = *v14;
LABEL_16:
        v16 = v13;
        v17 = v6;
        result = sub_1B1C2D068();
        v19 = v18;
        if (v18 >> 60 == 15)
        {
          goto LABEL_46;
        }

        break;
      case 2uLL:
        v15 = *(result + 16);
        v14 = sub_1B1C2BF08();
        if (!v14)
        {
          goto LABEL_14;
        }

        result = sub_1B1C2BF38();
        if (__OFSUB__(v15, result))
        {
          goto LABEL_56;
        }

        v14 = (v14 + v15 - result);
LABEL_14:
        result = sub_1B1C2BF28();
        if (v14)
        {
          goto LABEL_15;
        }

        goto LABEL_59;
      case 3uLL:
        goto LABEL_16;
      default:
        v13 = result;
        goto LABEL_16;
    }

    v20 = result;
    switch(v18 >> 62)
    {
      case 1uLL:
        LODWORD(v21) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_54;
        }

        v21 = v21;
        goto LABEL_26;
      case 2uLL:
        v23 = *(result + 16);
        v22 = *(result + 24);
        v24 = __OFSUB__(v22, v23);
        v21 = v22 - v23;
        if (v24)
        {
          goto LABEL_55;
        }

        goto LABEL_26;
      case 3uLL:
        if (v16)
        {
          goto LABEL_45;
        }

        goto LABEL_27;
      default:
        v21 = BYTE6(v18);
LABEL_26:
        if (v21 == v16)
        {
LABEL_27:
          sub_1B1C2C008();
          swift_allocObject();
          sub_1B1C2BFF8();
          sub_1B1AD76E8();
          sub_1B1C2BFE8();
          sub_1B1AA9670(v20, v19);
          sub_1B1AA9670(v12, v11);

          v25 = v41;
          if (v7)
          {
            v6 = v17;
            v26 = v40;
          }

          else
          {
            v27 = v40;
            v28 = *(v40 + 24);
            if (((v28 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_52;
            }

            v6 = v17;
            v39 = v41;
            v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
            if (v29 <= 1)
            {
              v30 = 1;
            }

            else
            {
              v30 = v29;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764028, &qword_1B1C40E08);
            v26 = swift_allocObject();
            v31 = (_swift_stdlib_malloc_size(v26) - 32) / 16;
            v26[2] = v30;
            v26[3] = 2 * v31;
            v32 = (v26 + 4);
            v33 = v27[3];
            v34 = v33 >> 1;
            if (v27[2])
            {
              if (v26 != v27 || v32 >= &v27[2 * v34 + 4])
              {
                memmove(v26 + 4, v27 + 4, 16 * v34);
              }

              v27[2] = 0;
            }

            v8 = (v32 + 16 * v34);
            v7 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - (v33 >> 1);

            v25 = v39;
          }

          v24 = __OFSUB__(v7--, 1);
          if (v24)
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            return result;
          }

          v40 = v26;
          *v8++ = v25;
          continue;
        }

LABEL_45:
        sub_1B1AA9670(result, v18);
LABEL_46:
        sub_1B1AA9670(v12, v11);

LABEL_47:
        result = v40;
        v36 = *(v40 + 24);
        if (v36 >= 2)
        {
          v37 = v36 >> 1;
          v24 = __OFSUB__(v37, v7);
          v38 = v37 - v7;
          if (v24)
          {
            goto LABEL_58;
          }

          *(v40 + 16) = v38;
        }

        return result;
    }
  }
}

void *sub_1B1BDDD5C(uint64_t a1)
{
  result = sub_1B1A9547C();
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
  v27 = a1;
  while (1)
  {
    if (v3 == v4)
    {
      v23 = v7[3];
      if (v23 >= 2)
      {
        v24 = v23 >> 1;
        v22 = __OFSUB__(v24, v5);
        v25 = v24 - v5;
        if (v22)
        {
          goto LABEL_32;
        }

        v7[2] = v25;
      }

      return v7;
    }

    if (v6)
    {
      result = MEMORY[0x1B2738A20](v4, a1);
    }

    else
    {
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      result = *(a1 + 8 * v4 + 32);
    }

    v10 = result;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (!v5)
    {
      v11 = v7[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v12 = v3;
      v13 = v6;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762498, &qword_1B1C37E78);
      v16 = swift_allocObject();
      v17 = (_swift_stdlib_malloc_size(v16) - 32) / 16;
      v16[2] = v15;
      v16[3] = 2 * v17;
      v18 = (v16 + 4);
      v19 = v7[3];
      v20 = v19 >> 1;
      if (v7[2])
      {
        if (v16 != v7 || v18 >= &v7[2 * v20 + 4])
        {
          memmove(v16 + 4, v7 + 4, 16 * v20);
        }

        v7[2] = 0;
      }

      v8 = (v18 + 16 * v20);
      v5 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v7 = v16;
      v6 = v13;
      v3 = v12;
      v9 = v26;
      a1 = v27;
    }

    v22 = __OFSUB__(v5--, 1);
    if (v22)
    {
      goto LABEL_30;
    }

    *v8 = v4;
    v8[1] = v10;
    v8 += 2;
    ++v4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B1BDDF14(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = *(v3 + *(type metadata accessor for SynthesisCacheFile(0) + 20));
  result = sub_1B1ACD41C(v3);
  v8 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_41;
  }

  v24 = a1;
  v8 = 0;
  while (2)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
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
LABEL_45:
      __break(1u);
      return result;
    }

    result = sub_1B1C2D068();
    v11 = v10;
    if (v10 >> 60 == 15)
    {
      goto LABEL_35;
    }

    v12 = result;
    v13 = 0;
    switch(v10 >> 62)
    {
      case 1uLL:
        if (result > result >> 32)
        {
          goto LABEL_38;
        }

        v14 = sub_1B1C2BF08();
        if (!v14)
        {
          goto LABEL_13;
        }

        result = sub_1B1C2BF38();
        if (__OFSUB__(v12, result))
        {
          goto LABEL_43;
        }

        v14 = (v14 + v12 - result);
LABEL_13:
        result = sub_1B1C2BF28();
        if (!v14)
        {
          goto LABEL_45;
        }

LABEL_19:
        v13 = *v14;
LABEL_20:
        v16 = v13;
        result = sub_1B1C2D068();
        v18 = v17;
        if (v17 >> 60 == 15)
        {
          goto LABEL_34;
        }

        break;
      case 2uLL:
        v15 = *(result + 16);
        v14 = sub_1B1C2BF08();
        if (!v14)
        {
          goto LABEL_18;
        }

        result = sub_1B1C2BF38();
        if (__OFSUB__(v15, result))
        {
          goto LABEL_42;
        }

        v14 = (v14 + v15 - result);
LABEL_18:
        result = sub_1B1C2BF28();
        if (v14)
        {
          goto LABEL_19;
        }

        goto LABEL_44;
      case 3uLL:
        goto LABEL_20;
      default:
        v13 = result;
        goto LABEL_20;
    }

    v19 = result;
    switch(v17 >> 62)
    {
      case 1uLL:
        LODWORD(v20) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_39;
        }

        v20 = v20;
        goto LABEL_30;
      case 2uLL:
        v22 = *(result + 16);
        v21 = *(result + 24);
        v23 = __OFSUB__(v21, v22);
        v20 = v21 - v22;
        if (v23)
        {
          goto LABEL_40;
        }

        goto LABEL_30;
      case 3uLL:
        if (v16)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      default:
        v20 = BYTE6(v17);
LABEL_30:
        if (v20 == v16)
        {
LABEL_31:
          sub_1B1C2C008();
          swift_allocObject();
          sub_1B1C2BFF8();
          sub_1B1AD76E8();
          sub_1B1C2BFE8();
          sub_1B1AA9670(v19, v18);
          sub_1B1AA9670(v12, v11);

          *(a2 + 16 * v8++) = v26;
          if (v9 == a3)
          {
            v8 = a3;
            goto LABEL_35;
          }

          continue;
        }

LABEL_33:
        sub_1B1AA9670(result, v17);
LABEL_34:
        sub_1B1AA9670(v12, v11);
LABEL_35:
        a1 = v24;
LABEL_36:
        *a1 = v25;
        return v8;
    }
  }
}

void sub_1B1BDE214()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_8_29();
  if (!v6)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_20_13(v8);
    OUTLINED_FUNCTION_26_1();
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_15_18();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v2 + 8 * v11);
          ++v8;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      v12 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v13 = *(*(v0 + 48) + ((v11 << 9) | (8 * v12)));
      *v1 = v13;
      if (v10 == v7)
      {
        v15 = v13;
        v8 = v11;
        goto LABEL_17;
      }

      ++v1;
      v14 = v13;
      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1B1BDE30C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_8_29();
  if (!v6)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_20_13(v8);
    OUTLINED_FUNCTION_26_1();
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_15_18();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v2 + 8 * v11);
          ++v8;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      v12 = (*(v0 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v3)))));
      v13 = v12[1];
      v3 &= v3 - 1;
      *v1 = *v12;
      v1[1] = v13;
      if (v10 == v7)
      {

        v8 = v11;
        goto LABEL_17;
      }

      v1 += 2;

      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

id sub_1B1BDE408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey(0);
  v9 = sub_1B1C2CE68();

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:v9 options:a3 error:a4];

  return v10;
}

uint64_t sub_1B1BDE4BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1B1BDE538(uint64_t result, unint64_t a2, uint64_t *a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v7 = v8;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v5 = *(result + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v7 = v5;
LABEL_8:
      sub_1B1BE1FB8(result, v7, v6, a3);
      break;
    case 3uLL:
      result = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_1B1BE1F3C(result, v4, a3);
      break;
  }
}

uint64_t sub_1B1BDE5D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764058, &qword_1B1C40E80);
    v2 = sub_1B1C2D6A8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v4 = v2;
  sub_1B1BE2BC0(a1, 1, &v4);
  return v4;
}

uint64_t sub_1B1BDE668(int a1)
{
  v2 = sub_1B1C2CBC8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C80, &qword_1B1C35DF8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B1C364E0;
  *(v3 + 32) = HIBYTE(a1);
  *(v3 + 33) = BYTE2(a1);
  *(v3 + 34) = BYTE1(a1);
  *(v3 + 35) = a1;
  v4 = sub_1B1BDE7BC(v3);
  v6 = v5;
  sub_1B1C2CBA8();
  v7 = sub_1B1C2CB78();
  if (!v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E7668];
    *(v9 + 16) = xmmword_1B1C361C0;
    v11 = MEMORY[0x1E69E76D0];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = a1;
    v7 = sub_1B1C2CB98();
  }

  v12 = v7;
  sub_1B1A94524(v4, v6);
  return v12;
}

uint64_t sub_1B1BDE7BC(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764068, &unk_1B1C40E90);
  v8 = sub_1B1AA624C(&qword_1EB764070, &qword_1EB764068, &unk_1B1C40E90, MEMORY[0x1E6969E08]);
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_1B1BE2EEC(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3;
}

uint64_t sub_1B1BDE88C()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc;
  if (*(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc);
  }

  else
  {
    v2 = sub_1B1BDE93C();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1B1BDE8F0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc] = 0;
  *&v1[OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTSAssetLegacyAsset();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1B1BDE93C()
{
  v1 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  v8 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset);
  OUTLINED_FUNCTION_75();
  v10 = sub_1B1BE34F8(0xD000000000000010, v9, 0, 0xE000000000000000, v8);
  if (v10)
  {
    v11 = v10;
    sub_1B1C2C168();

    v12 = sub_1B1BDEBC0(v7);
    (*(v3 + 8))(v7, v1);
  }

  else
  {
    sub_1B1AE309C();
    v12 = sub_1B1C2CAB8();
  }

  v31 = v12;
  v13 = [v8 bundleIdentifier];
  if (v13)
  {
    v14 = v13;
    sub_1B1C2CB58();

    v28 = 45;
    v29 = 0xE100000000000000;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1B1A8EDAC();
    v15 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_13_24();
    v16 = sub_1B1C2D398();
    v18 = v17;

    v30[3] = v15;
    v30[0] = v16;
    v30[1] = v18;
    sub_1B1AE3710(v30, 5);
  }

  v19 = [v8 infoDictionary];
  if (!v19)
  {
    return v31;
  }

  v20 = v19;
  v21 = sub_1B1C2CA98();

  v22 = sub_1B1BDF010(v21);

  v23 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = v23;
  sub_1B1BE29AC(v22, sub_1B1BE2EB8, 0, isUniquelyReferenced_nonNull_native, v30);
  return v30[0];
}

uint64_t sub_1B1BDEBC0(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC8];
  v1 = sub_1B1C2C208();
  v3 = v2;
  sub_1B1BDE538(v1, v2, &v5);
  sub_1B1A94524(v1, v3);
  return v5;
}

uint64_t sub_1B1BDEC3C(unsigned __int8 *a1)
{
  v1 = sub_1B1C2CBC8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1B1C2CBB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764040, &qword_1B1C40E60);
  sub_1B1AA624C(&qword_1EB764048, &qword_1EB764040, &qword_1B1C40E60, MEMORY[0x1E69E6058]);
  result = sub_1B1C2CB88();
  if (!v3)
  {
    return 0;
  }

  return result;
}

void sub_1B1BDED2C(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!result || (a2 - result + 363) <= 0x2D6)
  {
    *a4 = 0;
    return;
  }

  v6 = *(result + 4);
  v7 = *(result + 336);
  v8 = *(result + 338);
  v9 = *(result + 340);
  v10 = *(result + 342);
  v11 = *(result + 344);
  v27 = *(result + 346);
  v28 = *(result + 8);
  v12 = *(result + 348);
  memmove(&v30, (result + 12), 0x144uLL);
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v35 = v10;
  v36 = v11;
  v37 = v27;
  v38 = v12;
  v13 = *(result + 360);
  v39 = *(result + 352);
  v40 = v13;
  v14 = MEMORY[0x1E69E7668];
  v43 = MEMORY[0x1E69E7668];
  LODWORD(v41) = bswap32(v6);
  sub_1B1AE3710(&v41, 0);
  v43 = v14;
  LODWORD(v41) = bswap32(v28);
  sub_1B1AE3710(&v41, 1);
  v15 = sub_1B1BDEC3C(&v30 + 4);
  v16 = MEMORY[0x1E69E6158];
  v43 = MEMORY[0x1E69E6158];
  v41 = v15;
  v42 = v17;
  sub_1B1AE3710(&v41, 4);
  sub_1B1B29F40(4, *a3);
  sub_1B1AE3710(&v41, 2);
  v18 = sub_1B1BDEC3C(v31);
  v43 = v16;
  v41 = v18;
  v42 = v19;
  sub_1B1AE3710(&v41, 8);
  v20 = bswap32(v7) >> 16;
  if (v20 == 2)
  {
    v21 = "VoiceGenderFemale";
LABEL_9:
    v43 = v16;
    v41 = 0xD000000000000011;
    v42 = (v21 - 32) | 0x8000000000000000;
    goto LABEL_10;
  }

  if (v20 != 1)
  {
    v21 = "VoiceGenderNeuter";
    goto LABEL_9;
  }

  v43 = v16;
  v41 = 0x6E65476563696F56;
  v42 = 0xEF656C614D726564;
LABEL_10:
  sub_1B1AE3710(&v41, 7);
  v43 = MEMORY[0x1E69E7290];
  LOWORD(v41) = __rev16(v8);
  sub_1B1AE3710(&v41, 6);
  CanonicalLocaleIdentifierFromScriptManagerCodes = CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes(*MEMORY[0x1E695E480], bswap32(v10) >> 16, bswap32(v11) >> 16);
  if (CanonicalLocaleIdentifierFromScriptManagerCodes)
  {
    v23 = CanonicalLocaleIdentifierFromScriptManagerCodes;
    type metadata accessor for CFString(0);
    v43 = v24;
    v41 = v23;
    sub_1B1AE3710(&v41, 10);
  }

  v25 = bswap32(v9) >> 16;
  v26 = bswap32(v12);
  if (v25 < 0)
  {
    v25 = v26;
  }

  v43 = MEMORY[0x1E69E72F0];
  LODWORD(v41) = v25;
  sub_1B1AE3710(&v41, 12);
  *a4 = 0;
}

void *sub_1B1BDF010(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621E0, &qword_1B1C37470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  *(inited + 32) = 12;
  *(inited + 64) = MEMORY[0x1E69E7668];
  *(inited + 40) = 134217984;
  sub_1B1AE309C();
  v3 = sub_1B1C2CAB8();
  sub_1B1A93AEC(0x7474416563696F56, 0xEF73657475626972, a1);
  if (!*(&v37[0] + 1))
  {

    sub_1B1A90C78(&v36, &qword_1EB761DE0, &qword_1B1C352C0);
    return sub_1B1C2CAB8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return sub_1B1C2CAB8();
  }

  v4 = 0;
  v5 = v33 + 64;
  v31 = v33;
  v6 = 1 << *(v33 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v33 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v4;
LABEL_12:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(v31 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1B1A93378(*(v31 + 56) + 32 * v12, v32);
    *&v33 = v15;
    *(&v33 + 1) = v14;
    sub_1B1A9EEE0(v32, &v34);

LABEL_13:
    v36 = v33;
    v37[0] = v34;
    v37[1] = v35;
    v16 = *(&v33 + 1);
    if (!*(&v33 + 1))
    {

      return v3;
    }

    v17 = v36;
    sub_1B1A9EEE0(v37, &v33);
    v18 = sub_1B1B1991C(v17, v16);
    if (v18 != 21)
    {
      v19 = v18;
      sub_1B1A93378(&v33, v32);
      swift_isUniquelyReferenced_nonNull_native();
      v20 = sub_1B1AE3960(v19);
      if (__OFADD__(v3[2], (v21 & 1) == 0))
      {
        goto LABEL_31;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762500, &unk_1B1C380A8);
      if (sub_1B1C2D628())
      {
        v24 = sub_1B1AE3960(v19);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_33;
        }

        v22 = v24;
      }

      if (v23)
      {
        v26 = (v3[7] + 32 * v22);
        __swift_destroy_boxed_opaque_existential_0(v26);
        sub_1B1A9EEE0(v32, v26);
      }

      else
      {
        v3[(v22 >> 6) + 8] |= 1 << v22;
        *(v3[6] + v22) = v19;
        sub_1B1A9EEE0(v32, (v3[7] + 32 * v22));
        v27 = v3[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_32;
        }

        v3[2] = v29;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v33);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      v8 = 0;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      goto LABEL_13;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1B1C2D818();
  __break(1u);
  return result;
}

id sub_1B1BDF414()
{
  sub_1B1BDE88C();
  OUTLINED_FUNCTION_8_30();
  sub_1B1B29F40(0, v0);

  if (v18)
  {
    v1 = swift_dynamicCast() ^ 1;
  }

  else
  {
    sub_1B1A90C78(v17, &qword_1EB761DE0, &qword_1B1C352C0);
    v1 = 1;
  }

  sub_1B1AE3480();
  if ((v2 & 0x100000000) != 0)
  {
    if (v1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    if ((v3 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_1B1AE3480();
  if ((v4 & 0x100000000) != 0)
  {
    if (v1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    if ((v5 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_1B1AE3480();
  if ((v6 & 0x100000000) != 0)
  {
    if (v1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_1B1AE3480();
  if ((v11 & 0x100000000) != 0)
  {
    if (v1)
    {
LABEL_28:
      if (qword_1ED9A9850 != -1)
      {
        OUTLINED_FUNCTION_22(&qword_1ED9A9850);
      }

      v8 = &qword_1ED9A97E0;
      goto LABEL_19;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    if ((v12 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_1B1AE3480();
  if ((v13 & 0x100000000) != 0)
  {
    if (v1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    if ((v14 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_1B1AE3480();
  if ((v15 & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_12_18();
    if ((v16 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_16:
    if (qword_1ED9A98A8 != -1)
    {
      OUTLINED_FUNCTION_21(&qword_1ED9A98A8);
    }

    v8 = &qword_1ED9A98B0;
    goto LABEL_19;
  }

  if (!v1)
  {
    goto LABEL_16;
  }

LABEL_36:
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

  v8 = &qword_1ED9A9980;
LABEL_19:
  v9 = *v8;

  return v9;
}

id sub_1B1BDF660()
{
  if (qword_1EB7615D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB7625D0;

  return v1;
}

id sub_1B1BDF700()
{
  v1 = v0;
  v2 = sub_1B1BDF414();
  v3 = qword_1ED9A98A8;
  v4 = v2;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_21(&qword_1ED9A98A8);
  }

  v5 = qword_1ED9A98B0;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v6 = v5;
  v7 = sub_1B1C2D248();

  if (v7)
  {

    if (qword_1ED9A5280 != -1)
    {
      swift_once();
    }

    v8 = &qword_1ED9A5288;
    goto LABEL_50;
  }

  v9 = qword_1ED9A9850;
  v10 = v4;
  if (v9 != -1)
  {
    OUTLINED_FUNCTION_22(&qword_1ED9A9850);
  }

  v11 = qword_1ED9A97E0;
  v12 = sub_1B1C2D248();

  if (v12)
  {

    sub_1B1BDE88C();
    OUTLINED_FUNCTION_8_30();
    sub_1B1B29F40(13, v1);

    if (v43)
    {
      if (OUTLINED_FUNCTION_8_18(v13, v14, v15, MEMORY[0x1E69E6158], v16, v17, v18, v19, v36, v39, v42[0]))
      {
        OUTLINED_FUNCTION_75();
        v21 = v37 == 0xD000000000000010 && v20 == v40;
        if (v21 || (OUTLINED_FUNCTION_3(0xD000000000000010, v20) & 1) != 0 || ((OUTLINED_FUNCTION_75(), v37 == 0xD000000000000017) ? (v23 = v22 == v40) : (v23 = 0), v23))
        {

LABEL_39:
          if (qword_1ED9A97B8 != -1)
          {
            swift_once();
          }

          v8 = &qword_1ED9A97C0;
          goto LABEL_50;
        }

        OUTLINED_FUNCTION_3(0xD000000000000017, v22);
        OUTLINED_FUNCTION_121();
        if (v37)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      sub_1B1A90C78(v42, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    goto LABEL_35;
  }

  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

  v24 = qword_1ED9A9980;
  v25 = sub_1B1C2D248();

  if ((v25 & 1) == 0)
  {
LABEL_35:
    if (qword_1ED9A9890 != -1)
    {
      swift_once();
    }

    v8 = &qword_1ED9A9818;
    goto LABEL_50;
  }

  sub_1B1BDE88C();
  OUTLINED_FUNCTION_8_30();
  sub_1B1B29F40(14, v1);

  if (v43)
  {
    if (OUTLINED_FUNCTION_8_18(v26, v27, v28, MEMORY[0x1E69E6158], v29, v30, v31, v32, v36, v39, v42[0]))
    {
      if (v38 == 0x6C617275656ELL && v41 == 0xE600000000000000)
      {

LABEL_47:
        if (qword_1ED9A9820 != -1)
        {
          swift_once();
        }

        v8 = &qword_1ED9A9828;
        goto LABEL_50;
      }

      sub_1B1C2D7A8();
      OUTLINED_FUNCTION_121();
      if (v1)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    sub_1B1A90C78(v42, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  if (qword_1ED9A97A8 != -1)
  {
    swift_once();
  }

  v8 = &qword_1ED9A9898;
LABEL_50:
  v34 = *v8;

  return v34;
}

id sub_1B1BDFB24()
{
  v1 = v0;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v2 = sub_1B1BDF414();
  if (qword_1ED9A98A8 != -1)
  {
    OUTLINED_FUNCTION_21(&qword_1ED9A98A8);
  }

  v3 = qword_1ED9A98B0;
  v4 = sub_1B1C2D248();

  if (v4)
  {
    v5 = sub_1B1BDE88C();
    sub_1B1B29F40(0, v5);

    if (v52)
    {
      v13 = OUTLINED_FUNCTION_8_18(v6, v7, v8, MEMORY[0x1E69E7668], v9, v10, v11, v12, v45, v48, v51[0]);
      if (v13)
      {
        v14 = v45;
      }

      else
      {
        v14 = 0;
      }

      v15 = v13 ^ 1;
    }

    else
    {
      sub_1B1A90C78(v51, &qword_1EB761DE0, &qword_1B1C352C0);
      v14 = 0;
      v15 = 1;
    }

    sub_1B1AE3480();
    if ((v29 & 0x100000000) != 0)
    {
      if (v15)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v14 == v29)
      {
        v30 = v15;
      }

      else
      {
        v30 = 1;
      }

      if ((v30 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    sub_1B1AE3480();
    if ((v31 & 0x100000000) == 0)
    {
      if (v14 == v31)
      {
        v32 = v15;
      }

      else
      {
        v32 = 1;
      }

      if ((v32 & 1) == 0)
      {
        goto LABEL_55;
      }

LABEL_42:
      v33 = *(v1 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc);

      sub_1B1B29F40(13, v33);

      if (v52)
      {
        if (OUTLINED_FUNCTION_8_18(v34, v35, v36, MEMORY[0x1E69E6158], v37, v38, v39, v40, v45, v48, v51[0]))
        {
          if (v47 != 0xD000000000000011 || 0x80000001B1C4A5B0 != v50)
          {
            sub_1B1C2D7A8();
            OUTLINED_FUNCTION_121();
            if (v14)
            {
              goto LABEL_55;
            }

            goto LABEL_51;
          }

          goto LABEL_54;
        }

LABEL_51:
        if (qword_1ED9A9100 != -1)
        {
          swift_once();
        }

        v42 = &qword_1ED9A90A8;
        goto LABEL_58;
      }

LABEL_50:
      sub_1B1A90C78(v51, &qword_1EB761DE0, &qword_1B1C352C0);
      goto LABEL_51;
    }

    if (!v15)
    {
      goto LABEL_42;
    }

LABEL_55:
    if (qword_1ED9A97D8 != -1)
    {
      swift_once();
    }

    v42 = &qword_1ED9A9830;
    goto LABEL_58;
  }

  sub_1B1BDE88C();
  OUTLINED_FUNCTION_8_30();
  sub_1B1B29F40(13, v1);

  if (!v52)
  {
    goto LABEL_50;
  }

  if ((OUTLINED_FUNCTION_8_18(v16, v17, v18, MEMORY[0x1E69E6158], v19, v20, v21, v22, v45, v48, v51[0]) & 1) == 0)
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_75();
  v24 = v46 == 0xD000000000000011 && v23 == v49;
  if (v24 || (OUTLINED_FUNCTION_3(0xD000000000000011, v23) & 1) != 0 || ((OUTLINED_FUNCTION_75(), v46 == 0xD000000000000017) ? (v26 = v25 == v49) : (v26 = 0), v26 || (OUTLINED_FUNCTION_3(0xD000000000000017, v25) & 1) != 0))
  {
LABEL_54:

    goto LABEL_55;
  }

  OUTLINED_FUNCTION_75();
  if (v46 == 0xD000000000000010 && v27 == v49)
  {
  }

  else
  {
    OUTLINED_FUNCTION_3(0xD000000000000010, v27);
    OUTLINED_FUNCTION_121();
    if ((v46 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  if (qword_1ED9A9628 != -1)
  {
    swift_once();
  }

  v42 = &qword_1ED9A9598;
LABEL_58:
  v43 = *v42;

  return v43;
}

uint64_t sub_1B1BDFEF0()
{
  sub_1B1BDE88C();
  OUTLINED_FUNCTION_8_30();
  sub_1B1B29F40(4, v0);

  if (v20)
  {
    OUTLINED_FUNCTION_17_15(v2, v3, v4, MEMORY[0x1E69E6158], v5, v6, v7, v8, v18);
    if (swift_dynamicCast())
    {
      return v18;
    }
  }

  else
  {
    sub_1B1A90C78(v19, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v9 = *(v1 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc);

  sub_1B1B29F40(2, v9);

  if (v20)
  {
    OUTLINED_FUNCTION_17_15(v10, v11, v12, MEMORY[0x1E69E6158], v13, v14, v15, v16, v18);
    if (swift_dynamicCast())
    {
      return v18;
    }
  }

  else
  {
    sub_1B1A90C78(v19, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return 0;
}

uint64_t sub_1B1BE0010()
{
  sub_1B1BDE88C();
  OUTLINED_FUNCTION_8_30();
  sub_1B1B29F40(5, v0);

  if (v59)
  {
    v9 = OUTLINED_FUNCTION_17_15(v2, v3, v4, MEMORY[0x1E69E6158], v5, v6, v7, v8, v55);
    if (OUTLINED_FUNCTION_19_11(v9, v10, v11, v12))
    {
      return v55;
    }
  }

  else
  {
    sub_1B1A90C78(&v57, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v14 = OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc;
  v15 = *(v1 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc);

  sub_1B1B29F40(4, v15);

  if (!v59)
  {
    sub_1B1A90C78(&v57, &qword_1EB761DE0, &qword_1B1C352C0);
LABEL_9:
    v27 = 1061109567;
    v28 = *(v1 + v14);

    sub_1B1B29F40(0, v28);

    if (v59)
    {
      v36 = OUTLINED_FUNCTION_17_15(v29, v30, v31, MEMORY[0x1E69E7668], v32, v33, v34, v35, v55);
      if (OUTLINED_FUNCTION_19_11(v36, v37, v38, v39))
      {
        sub_1B1BDE668(v55);
      }
    }

    else
    {
      sub_1B1A90C78(&v57, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    v40 = *(v1 + v14);

    sub_1B1B29F40(1, v40);

    if (v59)
    {
      v48 = OUTLINED_FUNCTION_17_15(v41, v42, v43, MEMORY[0x1E69E7668], v44, v45, v46, v47, v55);
      if (OUTLINED_FUNCTION_19_11(v48, v49, v50, v51))
      {
        v27 = sub_1B1BDE668(v56);
        v53 = v52;
LABEL_18:
        v57 = 0;
        v58 = 0xE000000000000000;
        sub_1B1C2D538();

        OUTLINED_FUNCTION_15_19();
        v54 = OUTLINED_FUNCTION_33();
        MEMORY[0x1B27381B0](v54);

        MEMORY[0x1B27381B0](46, 0xE100000000000000);
        MEMORY[0x1B27381B0](v27, v53);
        goto LABEL_19;
      }
    }

    else
    {
      sub_1B1A90C78(&v57, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    v53 = 0xE400000000000000;
    goto LABEL_18;
  }

  v23 = OUTLINED_FUNCTION_17_15(v16, v17, v18, MEMORY[0x1E69E6158], v19, v20, v21, v22, v55);
  if ((OUTLINED_FUNCTION_19_11(v23, v24, v25, v26) & 1) == 0)
  {
    goto LABEL_9;
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1B1C2D538();

  OUTLINED_FUNCTION_15_19();
  MEMORY[0x1B27381B0](v55);
LABEL_19:

  return v57;
}

void sub_1B1BE02D4()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset);
  OUTLINED_FUNCTION_75();
  v2 = sub_1B1C2CB28();
  v3 = [v1 objectForInfoDictionaryKey_];

  if (v3)
  {
    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (!*(&v26 + 1))
  {
    sub_1B1A90C78(v27, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_29;
  }

  v4 = swift_dynamicCast();
  if ((v4 & 1) == 0)
  {
LABEL_29:
    OUTLINED_FUNCTION_26_1();
    return;
  }

  *&v27[0] = 46;
  *(&v27[0] + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v4);
  v24[2] = v27;
  v7 = sub_1B1BE1BA0(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B1ABAB38, v24, v5, v6);
  v8 = 0;
  v9 = (v7 + 56);
  v10 = -*(v7 + 16);
  v11 = -1;
  while (1)
  {
    if (v10 + v11 == -1)
    {

      goto LABEL_29;
    }

    if (++v11 >= *(v7 + 16))
    {
      break;
    }

    v12 = 100 * v8;
    if ((v8 * 100) >> 64 != (100 * v8) >> 63)
    {
      goto LABEL_31;
    }

    v14 = *(v9 - 3);
    v13 = *(v9 - 2);
    if ((v13 ^ v14) < 0x4000)
    {
      v22 = 0;
    }

    else
    {
      v16 = *(v9 - 1);
      v15 = *v9;
      if ((*v9 & 0x1000000000000000) != 0)
      {

        v19 = sub_1B1BE2F64(v14, v13, v16, v15, 10);
        v21 = v23;
      }

      else
      {
        if ((v15 & 0x2000000000000000) != 0)
        {
          v18 = HIBYTE(v15) & 0xF;
          *&v27[0] = *(v9 - 1);
          *(&v27[0] + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
          v17 = v27;
        }

        else if ((v16 & 0x1000000000000000) != 0)
        {
          v17 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v18 = v16 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = sub_1B1C2D578();
        }

        v19 = sub_1B1BE36C4(v17, v18, v14, v13, v16, v15, 10);
        LOBYTE(v25) = v20 & 1;

        v21 = v25;
      }

      if (v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19;
      }
    }

    v9 += 4;
    v8 = v12 + v22;
    if (__OFADD__(v12, v22))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  swift_bridgeObjectRetain_n();

  __break(1u);
}

id sub_1B1BE059C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CB28();

  return v5;
}

uint64_t sub_1B1BE060C()
{
  v1 = sub_1B1BDE88C();
  sub_1B1B29F40(11, v1);

  if (*(&v33 + 1))
  {
    if (OUTLINED_FUNCTION_10_29(v2, v3, v4, MEMORY[0x1E69E6158], v5, v6, v7, v8, v30[0], v30[1], v31, *(&v31 + 1), v32))
    {
      return v30[0];
    }
  }

  else
  {
    sub_1B1A90C78(&v32, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v9 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset____lazy_storage___voiceDesc);

  sub_1B1B29F40(11, v9);

  if (!*(&v33 + 1))
  {
    sub_1B1A90C78(&v32, &qword_1EB761DE0, &qword_1B1C352C0);
LABEL_9:
    v19 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset);
    OUTLINED_FUNCTION_75();
    v20 = sub_1B1C2CB28();
    v21 = [v19 objectForInfoDictionaryKey_];

    if (v21)
    {
      sub_1B1C2D3F8();
      v22 = swift_unknownObjectRelease();
    }

    else
    {
      *v30 = 0u;
      v31 = 0u;
    }

    v32 = *v30;
    v33 = v31;
    if (*(&v31 + 1))
    {
      if (OUTLINED_FUNCTION_10_29(v22, v23, v24, MEMORY[0x1E69E6158], v25, v26, v27, v28, v30[0], v30[1], v31, *(&v31 + 1), v32))
      {
        return v30[0];
      }
    }

    else
    {
      sub_1B1A90C78(&v32, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    return 0x6E776F6E6B6E555BLL;
  }

  v10 = sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
  if ((OUTLINED_FUNCTION_10_29(v10, v11, v12, v10, v13, v14, v15, v16, v30[0], v30[1], v31, *(&v31 + 1), v32) & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = [v30[0] description];

  v18 = sub_1B1C2CB58();
  return v18;
}

uint64_t sub_1B1BE0870()
{
  v0 = sub_1B1BDE88C();
  sub_1B1B29F40(10, v0);

  if (!v8[3])
  {
    sub_1B1A90C78(v8, &qword_1EB761DE0, &qword_1B1C352C0);
    return MEMORY[0x1E69E7CC0];
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B1C361C0;
  v8[0] = v6;
  v8[1] = v7;
  sub_1B1A8EDAC();
  OUTLINED_FUNCTION_13_24();
  v2 = sub_1B1C2D398();
  v4 = v3;

  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  return v1;
}

uint64_t sub_1B1BE09DC()
{
  sub_1B1BDE88C();
  OUTLINED_FUNCTION_8_30();
  sub_1B1B29F40(7, v0);

  if (v14)
  {
    if (OUTLINED_FUNCTION_8_18(v1, v2, v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v9, v11, v13[0]))
    {
      return qword_1B1C40EA0[sub_1B1B19970(v10, v12)];
    }
  }

  else
  {
    sub_1B1A90C78(v13, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return 0;
}

uint64_t sub_1B1BE0AB8()
{
  sub_1B1BDE88C();
  OUTLINED_FUNCTION_8_30();
  sub_1B1B29F40(6, v0);

  if (v4)
  {
    sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B1A90C78(v3, &qword_1EB761DE0, &qword_1B1C352C0);
    return 0;
  }
}

void sub_1B1BE0BA8()
{
  OUTLINED_FUNCTION_25();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB0, &unk_1B1C40E10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v51 - v2;
  v63 = sub_1B1C2BFD8();
  OUTLINED_FUNCTION_7();
  v58 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v61 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51 - v9;
  sub_1B1C2C078();
  OUTLINED_FUNCTION_7();
  v55 = v12;
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16();
  v57 = v14 - v13;
  v15 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v51 - v22;
  v24 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset) bundleURL];
  sub_1B1C2C168();

  v25 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  v27 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v28 = v27;
  sub_1B1B483DC(inited);
  v30 = v29;

  sub_1B1BD6ECC(v31);
  OUTLINED_FUNCTION_13_24();
  v32 = sub_1B1C2D088();

  if (v32)
  {
    v65 = v30;
    v53 = v23;
    v33 = v57;
    v52 = v32;
    sub_1B1C2D058();
    v54 = 0;
    v62 = (v17 + 32);
    v64 = (v17 + 8);
    v34 = (v58 + 4);
    ++v58;
    v59 = v34;
    v35 = v33;
    v36 = v25;
    v60 = v25;
    while (1)
    {
      sub_1B1C2C068();
      if (!v66)
      {
        break;
      }

      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v15);
        (*v62)(v21, v10, v15);
        sub_1B1C2C0D8();
        v37 = v3;
        v38 = v21;
        v39 = v35;
        v40 = v3;
        v41 = v63;
        __swift_storeEnumTagSinglePayload(v37, 0, 1, v63);
        v42 = v61;
        (*v59)(v61, v40, v41);
        v43 = sub_1B1C2BFC8();
        v45 = v44;
        v46 = v41;
        v3 = v40;
        v35 = v39;
        v21 = v38;
        v36 = v60;
        (*v58)(v42, v46);
        v47 = OUTLINED_FUNCTION_16_20();
        v48(v47);
        if ((v45 & 1) == 0)
        {
          v49 = __OFADD__(v54, v43);
          v54 += v43;
          if (v49)
          {
            __break(1u);
            break;
          }
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v10, 1, 1, v15);
        sub_1B1A90C78(v10, &unk_1EB761F00, &qword_1B1C36480);
      }
    }

    (*(v55 + 8))(v35, v56);

    v50 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    [v50 initWithInteger_];

    (*v64)(v53, v15);
  }

  else
  {
    (*(v17 + 8))(v23, v15);
  }

  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BE11B0()
{
  v1 = sub_1B1BDE88C();
  v2 = *(v1 + 16);
  if (v2)
  {
    v33 = v0;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1B1AE5B70(0, v2, 0);
    v3 = v49;
    result = sub_1B1B60118(v1);
    v6 = result;
    v8 = v7;
    v9 = 0;
    v37 = v1 + 64;
    v34 = v7;
    v35 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v37 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v1 + 36) != v8)
      {
        goto LABEL_25;
      }

      v36 = v5;
      v11 = *(*(v1 + 48) + v6);
      sub_1B1A93378(*(v1 + 56) + 32 * v6, v46);
      v42[0] = v11;
      sub_1B1A9EEE0(v46, &v43);
      sub_1B1B50850(v42, v40, &qword_1EB7621F0, &qword_1B1C37478);
      *&v47 = sub_1B1AE3168(v40[0]);
      *(&v47 + 1) = v12;
      *(&v38[0] + 1) = v43;
      v38[1] = v44;
      v39 = v45;
      sub_1B1A9EEE0((v38 + 8), v48);
      result = __swift_destroy_boxed_opaque_existential_0(v41);
      v13 = v3;
      v49 = v3;
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1B1AE5B70((v14 > 1), v15 + 1, 1);
        v13 = v49;
      }

      *(v13 + 16) = v15 + 1;
      v16 = (v13 + 48 * v15);
      v17 = v47;
      v18 = v48[1];
      v16[3] = v48[0];
      v16[4] = v18;
      v16[2] = v17;
      v19 = 1 << *(v1 + 32);
      if (v6 >= v19)
      {
        goto LABEL_26;
      }

      v20 = *(v37 + 8 * v10);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      v3 = v13;
      if (*(v1 + 36) != v8)
      {
        goto LABEL_28;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v22 = v35;
      }

      else
      {
        v23 = v10 << 6;
        v24 = v10 + 1;
        v25 = (v1 + 72 + 8 * v10);
        v22 = v35;
        while (v24 < (v19 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1B1B1A544(v6, v8, v36 & 1);
            v19 = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        result = sub_1B1B1A544(v6, v8, v36 & 1);
      }

LABEL_19:
      v5 = 0;
      ++v9;
      v6 = v19;
      v8 = v34;
      if (v9 == v22)
      {

        v0 = v33;
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
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C361C0;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 40) = 0x80000001B1C41F80;
    v29 = [v0 description];
    v30 = sub_1B1C2CB58();
    v32 = v31;

    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v30;
    *(inited + 56) = v32;
    *&v47 = v3;
    sub_1B1C003EC(inited);
    return sub_1B1ADFBB4(v47);
  }

  return result;
}

void *sub_1B1BE1570()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset);
  v2 = v1;
  return v1;
}

BOOL sub_1B1BE15D4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset) bundlePath];
  sub_1B1C2CB58();

  sub_1B1A8EDAC();
  LOBYTE(v1) = sub_1B1C2D3D8();

  return (v1 & 1) == 0;
}

void sub_1B1BE168C()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v11 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetLegacyAsset_asset);
  v12 = [v11 bundleURL];
  sub_1B1C2C168();

  v13 = sub_1B1C2C118();
  (*(v5 + 8))(v9, v3);
  v32[0] = 0;
  LODWORD(v3) = [v10 removeItemAtURL:v13 error:v32];

  if (!v3)
  {
    v15 = v32[0];
    v16 = sub_1B1C2C058();

    swift_willThrow();
    v17 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v18 = qword_1ED9AA668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1B1C36280;
    v20 = [v11 bundlePath];
    v21 = sub_1B1C2CB58();
    v23 = v22;

    v24 = MEMORY[0x1E69E6158];
    *(v19 + 56) = MEMORY[0x1E69E6158];
    v25 = sub_1B1AC9204();
    *(v19 + 64) = v25;
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    swift_getErrorValue();
    v26 = sub_1B1C2D828();
    *(v19 + 96) = v24;
    *(v19 + 104) = v25;
    *(v19 + 72) = v26;
    *(v19 + 80) = v27;
    sub_1B1C2C7C8(v17, &dword_1B1A8A000, v18, "Failed to delete legacy asset %@: %@", 36, 2, v19);

    if (v2)
    {
      v28 = v16;
      v2(v16);
    }

    goto LABEL_9;
  }

  if (v2)
  {
    v14 = v32[0];
    v2(0);
LABEL_9:
    OUTLINED_FUNCTION_26_1();
    return;
  }

  OUTLINED_FUNCTION_26_1();

  v31 = v29;
}

id TTSAssetLegacyAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B1BE1AE0()
{
}

id TTSAssetLegacyAsset.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTSAssetLegacyAsset();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B1BE1BA0(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v6 = sub_1B1C2CE08();
    v10 = v29;
    v11 = v30;
    v12 = v31;

    sub_1B1B04580();
    v15 = v32;
    v8 = *(v32 + 16);
    v33 = *(v32 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v33 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v37 = (v15 + 32 * v8);
      v37[4] = v6;
      v37[5] = v10;
      v37[6] = v11;
      v37[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1B1B04580();
    v15 = v38;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v47 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v45 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v45;
        goto LABEL_30;
      }

      v17 = sub_1B1C2CDD8();
      v11 = v18;
      v48[0] = v17;
      v48[1] = v18;
      v19 = v49(v48);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_1B1C2CC78();
    }

    v22 = (v45 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v45 >> 14)
    {
      break;
    }

    v46 = sub_1B1C2CE08();
    v41 = v24;
    v42 = v23;
    v40 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B1B04580();
      v47 = v27;
    }

    v12 = *(v47 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v47 + 24) >> 1)
    {
      sub_1B1B04580();
      v47 = v28;
    }

    *(v47 + 16) = v11;
    v26 = (v47 + 32 * v12);
    v26[4] = v46;
    v26[5] = v42;
    v26[6] = v41;
    v26[7] = v40;
LABEL_20:
    v16 = sub_1B1C2CC78();
    if ((v22 & 1) == 0 && *(v47 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v47;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_1B1C2CE08();
        v10 = v34;
        v11 = v35;
        v12 = v36;

        v15 = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v33 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_1B1B04580();
      v15 = v39;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void sub_1B1BE1F3C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5 = WORD2(a2);
  v4 = a2;
  sub_1B1BDED2C(&v3, &v3 + BYTE6(a2), a3, &v6);
}

void sub_1B1BE1FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1B1C2BF08();
  if (v7)
  {
    v8 = sub_1B1C2BF38();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1B1C2BF28();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v7;
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1B1BDED2C(v7, v14, a4, &v15);
}

uint64_t sub_1B1BE2064(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B1BE20D0(sub_1B1BE20CC, 0, a1, a2);
  v6 = sub_1B1BE2104(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1B1BE2104(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B1C2D308();
    if (!v9 || (v10 = v9, v11 = sub_1B1AB59F8(v9, 0), v12 = sub_1B1BE2264(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B1C2CC38();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B1C2CC38();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B1C2D578();
LABEL_4:

  return sub_1B1C2CC38();
}

unint64_t sub_1B1BE2264(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1B1B276E0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B1C2CD58();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B1C2D578();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1B1B276E0(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1B1C2CD28();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B1BE2474(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764050, &qword_1B1C40E68);
  result = sub_1B1C2D698();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      sub_1B1ADFF70(0, (v29 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + v18);
    v20 = (*(v5 + 56) + 32 * v18);
    if (v4)
    {
      sub_1B1A9EEE0(v20, v30);
    }

    else
    {
      sub_1B1A93378(v20, v30);
    }

    sub_1B1C2D888();
    sub_1B1AE3168(v19);
    sub_1B1C2CC48();

    result = sub_1B1C2D8E8();
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + v24) = v19;
    result = sub_1B1A9EEE0(v30, (*(v7 + 56) + 32 * v24));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1B1BE2720(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764058, &qword_1B1C40E80);
  v30 = v4;
  result = sub_1B1C2D698();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      sub_1B1ADFF70(0, (v29 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v30 & 1) == 0)
    {
      swift_unknownObjectRetain();
    }

    sub_1B1C2D888();
    MEMORY[0x1B2738D60](v19);
    result = sub_1B1C2D8E8();
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + 8 * v24) = v19;
    *(*(v7 + 56) + 8 * v24) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1B1BE29AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1B1A9E6C0(a1, a2, a3, v33);
  v29 = v33[0];
  v30 = v33[1];
  v31 = v33[2];
  v32 = v34;

  while (1)
  {
    sub_1B1BE358C(&v26);
    if (!v28)
    {
      sub_1B1A9D350(v29);
    }

    v7 = v26;
    sub_1B1A9EEE0(&v27, v25);
    v8 = *a5;
    v10 = sub_1B1AE3960(v7);
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v8[3] >= v13)
    {
      if (a4)
      {
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762500, &unk_1B1C380A8);
        sub_1B1C2D638();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1B1BE2474(v13, a4 & 1);
      v15 = sub_1B1AE3960(v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v10 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        sub_1B1A93378(v25, v24);
        __swift_destroy_boxed_opaque_existential_0(v25);
        v18 = (v17[7] + 32 * v10);
        __swift_destroy_boxed_opaque_existential_0(v18);
        sub_1B1A9EEE0(v24, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v19[6] + v10) = v7;
    sub_1B1A9EEE0(v25, (v19[7] + 32 * v10));
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_17;
    }

    v19[2] = v22;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1B1C2D818();
  __break(1u);
  return result;
}

void sub_1B1BE2BC0(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v26 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      type metadata accessor for TTSAssetProperty(0);
      sub_1B1C2D818();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 1);
    v7 = *i;
    v9 = *a3;
    v10 = sub_1B1AB2870(v8);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];
    swift_unknownObjectRetain();
    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764060, &qword_1B1C40E88);
      sub_1B1C2D638();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v20[6] + 8 * v15) = v8;
    *(v20[7] + 8 * v15) = v7;
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v20[2] = v23;
    ++v5;
    a2 = 1;
  }

  sub_1B1BE2720(v14, a2 & 1);
  v18 = sub_1B1AB2870(v8);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v15 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();

  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762090, &qword_1B1C38450);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();

    return;
  }

LABEL_22:
  sub_1B1C2D538();
  MEMORY[0x1B27381B0](0xD00000000000001BLL, 0x80000001B1C52DB0);
  type metadata accessor for TTSAssetProperty(0);
  sub_1B1C2D618();
  MEMORY[0x1B27381B0](39, 0xE100000000000000);
  sub_1B1C2D658();
  __break(1u);
}

uint64_t sub_1B1BE2EB8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1BE2E88((a2 + 8), *a1, (a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1B1BE2EEC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1B1C2C1D8();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1B27376C0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1B2737700]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

unsigned __int8 *sub_1B1BE2F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1B1B3B7CC();

  result = sub_1B1C2CDF8();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1B1BE2064(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B1C2D578();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

id sub_1B1BE34F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1B1C2CB28();

  v7 = sub_1B1C2CB28();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

_OWORD *sub_1B1BE358C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = *(*(v3 + 48) + v10);
    sub_1B1A93378(*(v3 + 56) + 32 * v10, v15);
    LOBYTE(v17) = v11;
    result = sub_1B1A9EEE0(v15, (&v17 + 8));
    v13 = v19;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v13)
    {
      v14 = v1[5];
      v15[0] = v17;
      v15[1] = v18;
      v16 = v13;
      v14(v15);
      return sub_1B1A90C78(v15, &qword_1EB7621F0, &qword_1B1C37478);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v13 = 0;
        v9 = 0;
        v19 = 0;
        v17 = 0u;
        v18 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1BE36C4(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1B1B276E0(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1B1C2CD48();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1B1B276E0(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1B1B276E0(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1B1C2CD48();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1B1BE3B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762320, &unk_1B1C39760);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v22 - v5;
  if (qword_1ED9A52A8 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED9AA508;
  if (*(qword_1ED9AA508 + 16) && (v8 = sub_1B1A8EB10(), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 16 * v8);
  }

  else
  {
    v10 = 0x53552D6E65;
    v22[2] = a1;
    v22[3] = a2;
    v22[0] = 45;
    v22[1] = 0xE100000000000000;
    v11 = sub_1B1C2C4D8();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
    sub_1B1A8EDAC();
    sub_1B1C2D3C8();
    v13 = v12;
    sub_1B1BE3DE4(v6);
    if ((v13 & 1) == 0)
    {
      v14 = sub_1B1C2CE08();
      v15 = MEMORY[0x1B27380D0](v14);
      v17 = v16;

      v18 = sub_1B1A945F4(v15, v17, v7);
      v20 = v19;

      if (v20)
      {
        return v18;
      }
    }
  }

  return v10;
}

id Languages.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Languages.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Languages();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Languages.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Languages();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B1BE3DE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762320, &unk_1B1C39760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1BE3E70()
{
  v0 = sub_1B1C2C9D8();
  __swift_allocate_value_buffer(v0, qword_1ED9A4ED8);
  __swift_project_value_buffer(v0, qword_1ED9A4ED8);
  return sub_1B1C2C9B8();
}

uint64_t static OS_dispatch_queue.synthesisQoS.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED9A4ED0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B1C2C9D8();
  v3 = __swift_project_value_buffer(v2, qword_1ED9A4ED8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_1B1BE3F64()
{
  result = sub_1B1BE3F84();
  qword_1ED9A4FD0 = result;
  return result;
}

id sub_1B1BE3F84()
{
  v29 = sub_1B1C2C0A8();
  v0 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1B1C2C1C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v26 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  if (qword_1ED9A9588 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED9AA640;
  sub_1B1B268F0();
  v16 = sub_1B1B26C98(0xD000000000000017, 0x80000001B1C4AEA0);
  if (!v16)
  {
    v16 = v15;
  }

  v17 = v16;
  result = [v15 resourceURL];
  if (result)
  {
    v19 = result;
    sub_1B1C2C168();

    sub_1B1C2C088();
    v26 = *(v3 + 8);
    v27 = v12;
    v26(v9, v2);
    v20 = [v17 bundleURL];
    v21 = v6;
    sub_1B1C2C168();

    v22 = v28;
    v23 = v29;
    (*(v0 + 104))(v28, *MEMORY[0x1E6968F58], v29);
    sub_1B1A8EDAC();
    sub_1B1C2C1A8();

    (*(v0 + 8))(v22, v23);
    v26(v21, v2);
    type metadata accessor for PreinstalledAudioStorage(0);
    v24 = swift_allocObject();
    v25 = *(v3 + 32);
    v25(v24 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_storageURL, v14, v2);
    v25(v24 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_previewURL, v27, v2);
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B1BE4300()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v26 = v3;
  v4 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v18 = (v2 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  OUTLINED_FUNCTION_65(v2 + OBJC_IVAR___SiriTTSSynthesisVoice_name, &v28);
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    v21 = (*(v13 + 16))(v17, v0 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_storageURL, v11);
    v22 = (v2 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
    OUTLINED_FUNCTION_26_2(v21, v27);
    v23 = *v22;
    v24 = v22[1];
    v27[3] = v23;
    v27[4] = v24;

    OUTLINED_FUNCTION_8_8();
    MEMORY[0x1B27381B0](v20, v19);

    (*(v6 + 104))(v10, *MEMORY[0x1E6968F58], v4);
    sub_1B1A8EDAC();
    sub_1B1C2C1B8();
    (*(v6 + 8))(v10, v4);

    (*(v13 + 8))(v17, v11);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v26, v25, 1, v11);
  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BE4550()
{
  OUTLINED_FUNCTION_25();
  v77 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v73 = v9;
  v75 = v10;
  v12 = v11;
  v14 = v13;
  v15 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16();
  v79 = v20 - v19;
  v81 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_7_1();
  v72 = v25;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_7_1();
  v76 = v27;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_7_1();
  v80 = v29;
  OUTLINED_FUNCTION_16_0();
  v31 = MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_11_24(v31, v32, v33, v34, v35, v36, v37, v38, v65);
  v69 = v39;
  if (v2 > 2)
  {
    v82 = v2;
    sub_1B1C2D7E8();
    __break(1u);
    return;
  }

  v40 = v73;
  v70 = v22;
  if (v4)
  {
    v41 = v6 == v73 && v12 == v4;
    if (!v41 && (sub_1B1C2D7A8() & 1) == 0)
    {
      v82 = v73;
      v83 = v12;

      OUTLINED_FUNCTION_8_8();
      MEMORY[0x1B27381B0](v75, v8);
      OUTLINED_FUNCTION_8_8();
      MEMORY[0x1B27381B0](v6, v4);
      OUTLINED_FUNCTION_16_21();
      OUTLINED_FUNCTION_4_29();
      (*(v22 + 16))(v76, v77 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_previewURL, v81);
      OUTLINED_FUNCTION_2_36();
      OUTLINED_FUNCTION_16_21();
      v67 = *(v17 + 104);
      v67(v79, *MEMORY[0x1E6968F58], v15);
      sub_1B1A8EDAC();
      sub_1B1C2C1B8();
      v66 = *(v17 + 8);
      v66(v79, v15);

      v42 = *(v22 + 8);
      v42(v76, v81);
      v82 = v73;
      v83 = v12;
      v67(v79, *MEMORY[0x1E6968F68], v15);
      sub_1B1C2C1B8();
      v66(v79, v15);
      v43 = v42;
      v42(v80, v81);

      v44 = [objc_opt_self() defaultManager];
      sub_1B1C2C098();
      v45 = sub_1B1C2CB28();

      v46 = [v44 fileExistsAtPath_];

      if (v46)
      {

        v47 = OUTLINED_FUNCTION_13_25();
        v49 = v71;
        goto LABEL_14;
      }

      v43(v71, v81);
      v22 = v70;
      v40 = v73;
    }
  }

  v82 = v40;
  v83 = v12;

  OUTLINED_FUNCTION_8_8();
  MEMORY[0x1B27381B0](v75, v8);
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_4_29();
  v74 = v12;
  v68 = *(v22 + 16);
  v68(v76, v77 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_previewURL, v81);
  OUTLINED_FUNCTION_2_36();
  OUTLINED_FUNCTION_16_21();

  v78 = *(v17 + 104);
  v78(v79, *MEMORY[0x1E6968F58], v15);
  sub_1B1A8EDAC();
  sub_1B1C2C1B8();
  v50 = *(v17 + 8);
  v50(v79, v15);

  v51 = *(v22 + 8);
  v51(v76, v81);
  v82 = v40;
  v83 = v74;
  v78(v79, *MEMORY[0x1E6968F68], v15);
  sub_1B1C2C1B8();
  v50(v79, v15);
  v52 = v51;
  v51(v80, v81);

  v44 = [objc_opt_self() defaultManager];
  sub_1B1C2C098();
  v53 = sub_1B1C2CB28();

  v54 = [v44 fileExistsAtPath_];

  if ((v54 & 1) == 0)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v56 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v56, qword_1ED9A9120);
    v68(v69, v72, v81);
    v57 = sub_1B1C2C888();
    v58 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v82 = v60;
      *v59 = 136315138;
      v61 = sub_1B1C2C098();
      v63 = v62;
      v52(v69, v81);
      v64 = sub_1B1A930E4(v61, v63, &v82);

      *(v59 + 4) = v64;
      _os_log_impl(&dword_1B1A8A000, v57, v58, "Unable to locate preview sample file at '%s'", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    else
    {

      v52(v69, v81);
    }

    v52(v72, v81);
    v55 = 1;
    v44 = v14;
    goto LABEL_21;
  }

  v47 = OUTLINED_FUNCTION_13_25();
  v49 = v72;
LABEL_14:
  v48(v47, v49, v81);
  v55 = 0;
LABEL_21:
  __swift_storeEnumTagSinglePayload(v44, v55, 1, v81);
  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BE4D58()
{
  OUTLINED_FUNCTION_25();
  v88 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v92 = v7;
  v90 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v93 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v87 = v11 - v10;
  v94 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_1();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7_1();
  v20 = v19;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7_1();
  v95 = v22;
  OUTLINED_FUNCTION_16_0();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v91 = &v78 - v25;
  v26 = (v6 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  v27 = OUTLINED_FUNCTION_26_2(v24, &v101);
  v28 = v26[1];
  v89 = v6;
  if (v28)
  {
    v29 = *v26;
    v30 = (v6 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
    OUTLINED_FUNCTION_26_2(v27, v100);
    v31 = *v30;
    v32 = v30[1];
    *&v99 = v31;
    *(&v99 + 1) = v32;

    OUTLINED_FUNCTION_8_8();
    MEMORY[0x1B27381B0](v29, v28);

    v34 = *(&v99 + 1);
    v33 = v99;
    if (v2)
    {
LABEL_3:
      *&v99 = v4;
      *&v99 = sub_1B1C2D778();
      *(&v99 + 1) = v35;
      MEMORY[0x1B27381B0](0x544341504D4F435FLL, 0xE800000000000000);
      v36 = *(&v99 + 1);
      v37 = v99;
      goto LABEL_6;
    }
  }

  else
  {
    v38 = (v6 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
    OUTLINED_FUNCTION_26_2(v27, v100);
    v33 = *v38;
    v34 = v38[1];

    if (v2)
    {
      goto LABEL_3;
    }
  }

  *&v99 = v4;
  v37 = sub_1B1C2D778();
  v36 = v39;
LABEL_6:
  *&v99 = v33;
  *(&v99 + 1) = v34;
  OUTLINED_FUNCTION_8_8();
  MEMORY[0x1B27381B0](v37, v36);

  if (v4 == 1)
  {
    v40 = sub_1B1BE554C(v99);
    v42 = v41;

    *&v99 = v40;
    *(&v99 + 1) = v42;
  }

  OUTLINED_FUNCTION_4_29();
  v85 = *(&v99 + 1);
  v86 = v99;
  v43 = v13;
  v44 = *(v13 + 16);
  v45 = v94;
  v81 = v13 + 16;
  v80 = v44;
  v44(v17, v88 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_previewURL, v94);
  strcpy(&v99, "AudioHintFiles");
  HIBYTE(v99) = -18;
  LODWORD(v88) = *MEMORY[0x1E6968F58];
  v46 = v93;
  v48 = v93 + 104;
  v47 = *(v93 + 13);
  v49 = v87;
  v50 = v90;
  v47(v87);
  v83 = v48;
  v82 = v47;
  v84 = sub_1B1A8EDAC();
  sub_1B1C2C1B8();
  v93 = *(v46 + 1);
  v93(v49, v50);
  v79 = v43;
  v51 = *(v43 + 8);
  v51(v17, v45);
  v52 = (v89 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  OUTLINED_FUNCTION_65(v89 + OBJC_IVAR___SiriTTSSynthesisVoice_language, &v99);
  v53 = *v52;
  v54 = v52[1];
  v96 = v53;
  v97 = v54;
  (v47)(v49, v88, v50);

  sub_1B1C2C1B8();
  v93(v49, v50);

  v89 = v20;
  v55 = v94;
  v51(v20, v94);
  v96 = v86;
  v97 = v85;
  (v82)(v49, *MEMORY[0x1E6968F68], v50);
  v56 = v91;
  v57 = v95;
  sub_1B1C2C1B8();
  v93(v49, v50);

  v93 = v51;
  v51(v57, v55);
  v58 = objc_opt_self();
  v59 = [v58 defaultManager];
  sub_1B1C2C098();
  v60 = sub_1B1C2CB28();

  LOBYTE(v47) = [v59 fileExistsAtPath_];

  v61 = v56;
  if (v47 & 1) != 0 || (v62 = v89, sub_1B1C2C128(), sub_1B1C2C138(), v93(v62, v55), (*(v79 + 40))(v61, v57, v55), v63 = [v58 defaultManager], sub_1B1C2C098(), v64 = sub_1B1C2CB28(), , v65 = objc_msgSend(v63, sel_fileExistsAtPath_, v64), v63, v64, (v65))
  {
    v66 = v92;
    v80(v92, v61, v55);
    v67 = 0;
  }

  else
  {
    v68 = v61;
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v69 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v69, qword_1ED9A9120);
    v70 = sub_1B1C2C888();
    v71 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v98 = v73;
      *v72 = 136315138;
      OUTLINED_FUNCTION_65(v68, &v96);
      v74 = sub_1B1C2C098();
      v76 = sub_1B1A930E4(v74, v75, &v98);

      *(v72 + 4) = v76;
      v77 = v71;
      v61 = v68;
      _os_log_impl(&dword_1B1A8A000, v70, v77, "Unable to locate audio hint file at '%s'", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();

      v67 = 1;
      v66 = v92;
    }

    else
    {

      v67 = 1;
      v66 = v92;
      v61 = v68;
    }
  }

  __swift_storeEnumTagSinglePayload(v66, v67, 1, v55);
  v93(v61, v55);
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BE554C(uint64_t a1)
{
  if (qword_1EB761578 != -1)
  {
    swift_once();
  }

  if (byte_1EB762331 == 1)
  {
    v6 = a1;

    v2 = 0x454E4F4850495FLL;
    v3 = 0xE700000000000000;
  }

  else
  {
    if (qword_1EB761588 != -1)
    {
      swift_once();
    }

    if (byte_1EB762333 == 1)
    {
      v6 = a1;

      v4 = 1095780703;
    }

    else
    {
      if (qword_1EB761580 != -1)
      {
        swift_once();
      }

      if (byte_1EB762332 != 1)
      {

        return a1;
      }

      v6 = a1;

      v4 = 1330661727;
    }

    v2 = v4 & 0xFFFF0000FFFFFFFFLL | 0x4400000000;
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1B27381B0](v2, v3);
  return v6;
}

uint64_t PreinstalledAudioStorage.deinit()
{
  v2 = OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_storageURL;
  sub_1B1C2C1C8();
  OUTLINED_FUNCTION_12_19();
  v4 = *(v3 + 8);
  v4(v1 + v2, v0);
  v4(v1 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_previewURL, v0);
  return v1;
}

uint64_t PreinstalledAudioStorage.__deallocating_deinit()
{
  v2 = OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_storageURL;
  sub_1B1C2C1C8();
  OUTLINED_FUNCTION_12_19();
  v4 = *(v3 + 8);
  v4(v1 + v2, v0);
  v4(v1 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_previewURL, v0);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v5, v6);
}

uint64_t sub_1B1BE5800(uint64_t a1)
{
  result = sub_1B1C2C1C8();
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

uint64_t OspreyBuiltInConfig.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0x3FE8000000000000;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &unk_1F28BFDE0;
  return result;
}

uint64_t sub_1B1BE59B8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_19_2(v2 + 16, a2);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3 & 1;
  return result;
}

uint64_t sub_1B1BE5AA4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_19_2(v2 + 32, a2);
  *(v2 + 32) = a1;
  *(v2 + 40) = v3 & 1;
  return result;
}

uint64_t sub_1B1BE5B5C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_2(v2 + 48, a2);
  *(v2 + 48) = a1;
}

uint64_t OspreyChainedConfigs.__allocating_init(configs:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1B1BE5C88()
{
  result = OUTLINED_FUNCTION_1_40();
  v3 = -v2;
  v4 = -1;
  while (1)
  {
    if (v3 + v4 == -1)
    {
      return 0;
    }

    if (++v4 >= *(v0 + 16))
    {
      break;
    }

    v5 = result + 40;
    sub_1B1A94FC4(result, v11);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v6 = OUTLINED_FUNCTION_0_39();
    v8 = v7(v6);
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0(v11);
    result = v5;
    if ((v10 & 1) == 0)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BE5D50()
{
  result = OUTLINED_FUNCTION_1_40();
  v3 = -v2;
  v4 = -1;
  while (1)
  {
    if (v3 + v4 == -1)
    {
      return 0;
    }

    if (++v4 >= *(v0 + 16))
    {
      break;
    }

    v5 = result + 40;
    sub_1B1A94FC4(result, v11);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v6 = OUTLINED_FUNCTION_0_39();
    v8 = v7(v6);
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0(v11);
    result = v5;
    if ((v10 & 1) == 0)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1B1BE61B4(void *a1)
{
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v2 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v2, qword_1ED9A9120);
  v3 = a1;
  oslog = sub_1B1C2C888();
  v4 = sub_1B1C2D0B8();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1B1C2D828();
    v9 = sub_1B1A930E4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B1A8A000, oslog, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2739FD0](v6, -1, -1);
    MEMORY[0x1B2739FD0](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B1BE633C(void *a1, uint64_t (*a2)(void *))
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v4 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v4, qword_1ED9A9120);
  v5 = a1;
  v6 = sub_1B1C2C888();
  v7 = sub_1B1C2D0B8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1B1C2D828();
    v12 = sub_1B1A930E4(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B1A8A000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2739FD0](v9, -1, -1);
    MEMORY[0x1B2739FD0](v8, -1, -1);
  }

  return a2(a1);
}

uint64_t sub_1B1BE6524(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1C2BE28();
  swift_allocObject();
  sub_1B1C2BE18();
  v1 = sub_1B1C2BE08();

  return v1;
}

uint64_t sub_1B1BE65B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B1C2BD98();
  swift_allocObject();
  sub_1B1C2BD88();
  sub_1B1C2BD78();
}

void sub_1B1BE67AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double sub_1B1BE6834()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  mach_timebase_info(v3);
  LODWORD(v0) = v3[0].denom;
  LODWORD(v1) = v3[0].numer;
  return v1 / v0 / 1000000000.0;
}

void *sub_1B1BE696C()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_voice;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B1BE6A0C(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_voice;
  OUTLINED_FUNCTION_8_2(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B1BE6A54(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B1BE6A0C(v1);
}

void *sub_1B1BE6B04()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_resource;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B1BE6BA4(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_resource;
  OUTLINED_FUNCTION_8_2(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B1BE6BEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B1BE6BA4(v1);
}

id sub_1B1BE6C80(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v3 = a1;
  a3(a1, a2);
  if (v4)
  {
    sub_1B1C2CB28();
    OUTLINED_FUNCTION_24();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1B1BE6CFC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    sub_1B1C2CB58();
  }

  v7 = a1;
  v6 = OUTLINED_FUNCTION_51();
  a4(v6);
}

uint64_t sub_1B1BE6D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_33();
  return a5(v6);
}

uint64_t sub_1B1BE6F6C(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_requestCreatedTime;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = a1;
  return result;
}

double sub_1B1BE701C()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_eagerRequestGapInterval;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1B1BE707C(double a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_eagerRequestGapInterval;
  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B1BE7134()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisBeginTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7198(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisBeginTime;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE7248()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisEndTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE72AC(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisEndTime;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE7360(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechBeginTime;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE7414(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechEndTime;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE74C4()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechEstimatedOutputBeginTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7528(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechEstimatedOutputBeginTime;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = a1;
  return result;
}

double sub_1B1BE75D8()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1B1BE7638(double a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency;
  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B1BE76F0()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_serverFirstPacketTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7754(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_serverFirstPacketTime;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE7804()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_serverLastPacketTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7868(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_serverLastPacketTime;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = a1;
  return result;
}

double sub_1B1BE7918()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_serverStreamedAudioDuration;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1B1BE7978(double a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_serverStreamedAudioDuration;
  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_1B1BE7A30()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioDuration;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1B1BE7A90(double a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioDuration;
  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B1BE7B4C()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7BB0(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_1B1BE7C3C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = InstrumentationMetrics.SourceOfTTS.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B1BE7C94()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7CF8(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE7DAC()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_privacySensitive;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7E10(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_privacySensitive;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B1BE7EC4()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_minimizeDeviceUsage;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7F28(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_minimizeDeviceUsage;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B1BE7FD8()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_errorCode;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE803C(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_errorCode;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE811C()
{
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
}

uint64_t sub_1B1BE81C4(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_encounteredIssues;
  OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = a1;
}

uint64_t sub_1B1BE82AC()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isServerTTSRacing;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE8310(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isServerTTSRacing;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B1BE83C0()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE8424(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE84D8()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAlignmentStall;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE853C(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAlignmentStall;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B1BE85F0()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAudioClick;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE8654(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAudioClick;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B1BE8708()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisQualityIssue;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE876C(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisQualityIssue;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B1BE8820()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_useHydraFrontend;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE8884(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_useHydraFrontend;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B1BE8938()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralFallback;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE899C(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralFallback;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B1BE8A50()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isAudibleRequest;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE8AB4(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isAudibleRequest;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B1BE8B64()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE8BC8(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE8C78()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE8CDC(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = v2;
  return result;
}

void static InstrumentationMetrics.supportsSecureCoding.setter(char a1)
{
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  byte_1EB7640A0 = a1;
}

void sub_1B1BE8F88(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_1EB7640A0 = v1;
}

void InstrumentationMetrics.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_129_1());
  v1 = OUTLINED_FUNCTION_24();
  InstrumentationMetrics.init(coder:)(v1);
}

void sub_1B1BE9014()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  sub_1B1C2D538();
  OUTLINED_FUNCTION_76_4();
  v44 = v2;
  MEMORY[0x1B27381B0]();
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  sub_1B1C2CF18();
  OUTLINED_FUNCTION_76_4();
  v42 = v3;
  MEMORY[0x1B27381B0]();
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v5 = OUTLINED_FUNCTION_157_0();
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v4)
  {
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x1B27381B0](v7, v8);

  MEMORY[0x1B27381B0](0xD00000000000001BLL, 0x80000001B1C53210);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  sub_1B1C2CF18();
  OUTLINED_FUNCTION_76_4();
  v43 = v9;
  MEMORY[0x1B27381B0]();
  v10 = v0 + OBJC_IVAR___SiriTTSInstrumentationMetrics_utterance;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (*(v10 + 8))
  {

    sub_1B1C2CC68();
  }

  v11 = MEMORY[0x1E69E6530];
  v12 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v12);

  MEMORY[0x1B27381B0](0x65696C6322200A2CLL, 0xEE0022203A22746ELL);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v14 = OUTLINED_FUNCTION_157_0();
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  if (v13)
  {
    v17 = 0xE000000000000000;
  }

  else
  {
    v17 = v14;
  }

  MEMORY[0x1B27381B0](v16, v17);

  MEMORY[0x1B27381B0](0xD000000000000012, 0x80000001B1C53250);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v18 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v18);

  MEMORY[0x1B27381B0](0xD000000000000019, 0x80000001B1C53270);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();

  v20 = MEMORY[0x1B2738350](v19, v11);
  v22 = v21;

  MEMORY[0x1B27381B0](v20, v22);

  MEMORY[0x1B27381B0](0xD000000000000012, 0x80000001B1C53290);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_157_0();

  v23 = OUTLINED_FUNCTION_159();
  MEMORY[0x1B27381B0](v23);

  MEMORY[0x1B27381B0](0xD000000000000019, 0x80000001B1C532B0);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_139_0();

  MEMORY[0x1B27381B0](v42, 0x80000001B1C532D0);
  v24 = OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v25 = *(v0 + v24) & 0xFFFFFFFFFFFFFFFELL;
  if (v25 == 8)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (v25 == 8)
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x1B27381B0](v26, v27);

  MEMORY[0x1B27381B0](0xD000000000000014, 0x80000001B1C532F0);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_139_0();

  OUTLINED_FUNCTION_43_8();
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_139_0();

  MEMORY[0x1B27381B0](0xD00000000000001ELL, 0x80000001B1C53330);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_139_0();

  MEMORY[0x1B27381B0](0xD000000000000019, 0x80000001B1C53350);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_139_0();

  MEMORY[0x1B27381B0](v43, 0x80000001B1C53370);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_139_0();

  MEMORY[0x1B27381B0](0xD000000000000013, 0x80000001B1C53390);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v28 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v28);

  MEMORY[0x1B27381B0](0xD000000000000017, 0x80000001B1C533B0);
  InstrumentationMetrics.realTimeFactor.getter();
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_76_4();
  MEMORY[0x1B27381B0]();
  InstrumentationMetrics.serverFirstPacketLatency.getter();
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_76_4();
  MEMORY[0x1B27381B0]();
  InstrumentationMetrics.serverLastPacketLatency.getter();
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_76_4();
  MEMORY[0x1B27381B0](v44);
  v29 = InstrumentationMetrics.SourceOfTTS.description.getter();
  MEMORY[0x1B27381B0](v29);

  MEMORY[0x1B27381B0](0xD000000000000024, 0x80000001B1C53450);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_76_4();
  MEMORY[0x1B27381B0]();
  InstrumentationMetrics.synthesisLatency.getter();
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_76_4();
  MEMORY[0x1B27381B0]();
  InstrumentationMetrics.customerPerceivedLatency.getter();
  OUTLINED_FUNCTION_67_3();
  MEMORY[0x1B27381B0](0x63696F7622200A2CLL, 0xED000022203A2265);
  v30 = OBJC_IVAR___SiriTTSInstrumentationMetrics_voice;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v31 = *(v1 + v30);
  if (v31)
  {
    v32 = [v31 description];
    sub_1B1C2CB58();
  }

  v33 = OUTLINED_FUNCTION_159();
  MEMORY[0x1B27381B0](v33);

  MEMORY[0x1B27381B0](0xD000000000000017, 0x80000001B1C534C0);
  v34 = OBJC_IVAR___SiriTTSInstrumentationMetrics_resource;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v35 = *(v1 + v34);
  if (v35)
  {
    v36 = [v35 description];
    sub_1B1C2CB58();
  }

  v37 = OUTLINED_FUNCTION_33();
  MEMORY[0x1B27381B0](v37);

  OUTLINED_FUNCTION_43_8();
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v38 = NSProcessInfoThermalState.description.getter();
  MEMORY[0x1B27381B0](v38);

  OUTLINED_FUNCTION_43_8();
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v39 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v39);

  OUTLINED_FUNCTION_43_8();
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_157_0();

  v40 = OUTLINED_FUNCTION_51();
  MEMORY[0x1B27381B0](v40);

  OUTLINED_FUNCTION_43_8();
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();

  v41 = OUTLINED_FUNCTION_92();
  MEMORY[0x1B27381B0](v41);

  MEMORY[0x1B27381B0](8194594, 0xE300000000000000);
  OUTLINED_FUNCTION_26_1();
}

uint64_t InstrumentationMetrics.SourceOfTTS.init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_3(0x656369766564, 0xE600000000000000) & 1) != 0)
  {

    return 1;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001B1C53560 == a2;
    if (v6 || (OUTLINED_FUNCTION_3(0xD000000000000013, 0x80000001B1C53560) & 1) != 0)
    {

      return 2;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001B1C53580 == a2;
      if (v7 || (OUTLINED_FUNCTION_3(0xD000000000000013, 0x80000001B1C53580) & 1) != 0)
      {

        return 3;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_133_0();
        v10 = a1 == v8 && a2 == v9;
        if (v10 || (OUTLINED_FUNCTION_3(v8, v9) & 1) != 0)
        {

          return 4;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_134_0();
          v13 = a1 == v11 && a2 == v12;
          if (v13 || (OUTLINED_FUNCTION_3(v11, v12) & 1) != 0)
          {

            return 5;
          }

          else
          {
            v14 = a1 == 0xD000000000000011 && 0x80000001B1C535A0 == a2;
            if (v14 || (OUTLINED_FUNCTION_3(0xD000000000000011, 0x80000001B1C535A0) & 1) != 0)
            {

              return 6;
            }

            else
            {
              v15 = OUTLINED_FUNCTION_148();
              v17 = a1 == v15 && a2 == v16;
              if (v17 || (OUTLINED_FUNCTION_3(v15, v16) & 1) != 0)
              {

                return 7;
              }

              else
              {
                v18 = a1 == 0x6143656369766564 && a2 == 0xEB00000000656863;
                if (v18 || (OUTLINED_FUNCTION_3(0x6143656369766564, 0xEB00000000656863) & 1) != 0)
                {

                  return 8;
                }

                else
                {
                  v19 = a1 == 0x614379657270736FLL && a2 == 0xEB00000000656863;
                  if (v19 || (OUTLINED_FUNCTION_3(0x614379657270736FLL, 0xEB00000000656863) & 1) != 0)
                  {

                    return 9;
                  }

                  else
                  {
                    v20 = a1 == 0x73757361676570 && a2 == 0xE700000000000000;
                    if (v20 || (OUTLINED_FUNCTION_3(0x73757361676570, 0xE700000000000000) & 1) != 0)
                    {

                      return 10;
                    }

                    else
                    {
                      v21 = a1 == 0x656E69706C61 && a2 == 0xE600000000000000;
                      if (v21 || (OUTLINED_FUNCTION_3(0x656E69706C61, 0xE600000000000000) & 1) != 0)
                      {

                        return 11;
                      }

                      else
                      {
                        if (a1 != 0x6E776F6E6B6E75 || a2 != 0xE700000000000000)
                        {
                          OUTLINED_FUNCTION_3(0x6E776F6E6B6E75, 0xE700000000000000);
                        }

                        return 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B1BE9CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = InstrumentationMetrics.SourceOfTTS.init(_:)(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

id sub_1B1BE9D30(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    OUTLINED_FUNCTION_49();
    sub_1B1C2CB28();
    OUTLINED_FUNCTION_24();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1B1BE9DC8(uint64_t *a1, void (*a2)(void))
{
  v4 = *a1;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = v5;
    a2();
  }

  return OUTLINED_FUNCTION_43_0();
}

id sub_1B1BE9E74()
{
  v1 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B1BE9F1C(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  OUTLINED_FUNCTION_8_2(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B1BE9FF4()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();

  return OUTLINED_FUNCTION_49();
}

uint64_t sub_1B1BEA0B4()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_29(OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *v1 = v2;
  v1[1] = v0;
}

id SynthesisVoiceSubscription.init(voice:clientId:accessoryId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = &v5[OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v5[OBJC_IVAR___SiriTTSVoiceSubscription_voice] = a1;
  v9 = &v5[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
  *v9 = a2;
  *(v9 + 1) = a3;
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *v8 = a4;
  *(v8 + 1) = a5;
  v11.receiver = v5;
  v11.super_class = type metadata accessor for SynthesisVoiceSubscription();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1B1BEA32C(uint64_t a1)
{
  sub_1B1A91CD0(a1, v22, &qword_1EB761DE0, &qword_1B1C352C0);
  if (!v23)
  {
    sub_1B1A90CD8(v22, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_20;
  }

  type metadata accessor for SynthesisVoiceSubscription();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v19 = 0;
    return v19 & 1;
  }

  v2 = (v1 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = &v21[OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId];
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v6 = *(v5 + 1);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    if (v3 != *v5 || v4 != v6)
    {
      OUTLINED_FUNCTION_92();
      if ((sub_1B1C2D7A8() & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else if (v6)
  {
LABEL_19:

    goto LABEL_20;
  }

  v8 = (v1 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v11 = &v21[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (v9 != *v11 || v10 != *(v11 + 1))
  {
    OUTLINED_FUNCTION_92();
    if ((sub_1B1C2D7A8() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  sub_1B1A8E474(0, &qword_1ED9A9880, 0x1E69E58C0);
  v13 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  v16 = *&v21[v15];
  v17 = v14;
  v18 = v16;
  OUTLINED_FUNCTION_51();
  v19 = sub_1B1C2D248();

  return v19 & 1;
}

uint64_t sub_1B1BEA5D0()
{
  v1 = v0;
  sub_1B1C2D8F8();
  v2 = v0 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (*(v2 + 8))
  {
    sub_1B1C2D8A8();

    sub_1B1C2CC48();
  }

  else
  {
    sub_1B1C2D8A8();
  }

  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();

  sub_1B1C2CC48();

  v3 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v4 = *(v1 + v3);
  sub_1B1C2D258();

  return sub_1B1C2D8D8();
}

uint64_t static SynthesisVoiceSubscription.supportsSecureCoding.getter()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  return byte_1EB7640A1;
}

void static SynthesisVoiceSubscription.supportsSecureCoding.setter(char a1)
{
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  byte_1EB7640A1 = a1;
}

void sub_1B1BEA838(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_1EB7640A1 = v1;
}

void sub_1B1BEA880(void *a1)
{
  v3 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_1B1C2CB28();
  OUTLINED_FUNCTION_25_1(v5, sel_encodeObject_forKey_);

  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();

  OUTLINED_FUNCTION_33();
  v6 = sub_1B1C2CB28();

  v7 = sub_1B1C2CB28();
  [a1 encodeObject:v6 forKey:v7];

  OUTLINED_FUNCTION_29(OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (*(v1 + 8))
  {

    OUTLINED_FUNCTION_67_0();
    sub_1B1C2CB28();
  }

  v8 = sub_1B1C2CB28();
  OUTLINED_FUNCTION_149(a1, sel_encodeObject_forKey_);
  swift_unknownObjectRelease();
}

id SynthesisVoiceSubscription.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_129_1());
  v1 = OUTLINED_FUNCTION_24();
  return SynthesisVoiceSubscription.init(coder:)(v1);
}

id SynthesisVoiceSubscription.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId];
  type metadata accessor for SynthesisVoice();
  *v4 = 0;
  v4[1] = 0;
  result = sub_1B1C2D1E8();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  *&v2[OBJC_IVAR___SiriTTSVoiceSubscription_voice] = result;
  sub_1B1A8E474(0, &qword_1ED9A90E0, 0x1E696AEC0);
  result = sub_1B1C2D1E8();
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = sub_1B1C2CB58();
  v9 = v8;

  v10 = &v2[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
  *v10 = v7;
  v10[1] = v9;
  v11 = sub_1B1C2D1E8();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1B1C2CB58();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *v4 = v13;
  v4[1] = v15;

  v17.receiver = v2;
  v17.super_class = type metadata accessor for SynthesisVoiceSubscription();
  v16 = objc_msgSendSuper2(&v17, sel_init);

  return v16;
}

uint64_t sub_1B1BEAC48()
{
  v1 = v0;
  sub_1B1C2D538();

  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();

  v2 = OUTLINED_FUNCTION_51();
  MEMORY[0x1B27381B0](v2);

  MEMORY[0x1B27381B0](0x737365636361202CLL, 0xEF203A644979726FLL);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();

  v3 = OUTLINED_FUNCTION_33();
  MEMORY[0x1B27381B0](v3);

  MEMORY[0x1B27381B0](0x3A6563696F76202CLL, 0xE900000000000020);
  v4 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = [v5 description];
  sub_1B1C2CB58();

  v7 = OUTLINED_FUNCTION_51();
  MEMORY[0x1B27381B0](v7);

  return 0x6449746E65696C63;
}

id sub_1B1BEAF00(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  a3(a1, a2);
  sub_1B1C2CB28();
  OUTLINED_FUNCTION_24();

  return a1;
}

id InlineStreamingSignal.__allocating_init(text:identifier:)()
{
  OUTLINED_FUNCTION_160_0();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5_13();
  return InlineStreamingSignal.init(text:identifier:)(v2, v3, v4, v5);
}

id InlineStreamingSignal.init(text:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___SiriTTSInlineStreamingSignal_text];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for InlineStreamingSignal();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t static InlineStreamingSignal.supportsSecureCoding.getter()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  return byte_1EB7640A2;
}

void static InlineStreamingSignal.supportsSecureCoding.setter(char a1)
{
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  byte_1EB7640A2 = a1;
}

void sub_1B1BEB1D4(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_1EB7640A2 = v1;
}

void sub_1B1BEB21C(void *a1)
{
  v2 = sub_1B1C2CB28();
  v3 = sub_1B1C2CB28();
  OUTLINED_FUNCTION_25_1(v3, sel_encodeObject_forKey_);

  v4 = sub_1B1C2CB28();
  v5 = sub_1B1C2CB28();
  [a1 encodeObject:v4 forKey:v5];
}

id InlineStreamingSignal.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_129_1());
  v1 = OUTLINED_FUNCTION_24();
  return InlineStreamingSignal.init(coder:)(v1);
}

id InlineStreamingSignal.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1B1A8E474(0, &qword_1ED9A90E0, 0x1E696AEC0);
  result = sub_1B1C2D1E8();
  if (result)
  {
    v5 = result;
    v6 = sub_1B1C2CB58();
    v8 = v7;

    v9 = &v2[OBJC_IVAR___SiriTTSInlineStreamingSignal_text];
    *v9 = v6;
    v9[1] = v8;
    result = sub_1B1C2D1E8();
    if (result)
    {
      v10 = result;
      v11 = sub_1B1C2CB58();
      v13 = v12;

      v14 = &v2[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
      *v14 = v11;
      v14[1] = v13;
      v16.receiver = v2;
      v16.super_class = type metadata accessor for InlineStreamingSignal();
      v15 = objc_msgSendSuper2(&v16, sel_init);

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B1BEB4D8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  OUTLINED_FUNCTION_92();
  v5 = sub_1B1C2CB28();

  return v5;
}

uint64_t sub_1B1BEB544()
{
  v1 = v0;
  sub_1B1C2D538();

  MEMORY[0x1B27381B0](*(v1 + OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier), *(v1 + OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier + 8));
  MEMORY[0x1B27381B0](0x203A74786574202CLL, 0xE900000000000022);
  MEMORY[0x1B27381B0](*(v1 + OBJC_IVAR___SiriTTSInlineStreamingSignal_text), *(v1 + OBJC_IVAR___SiriTTSInlineStreamingSignal_text + 8));
  MEMORY[0x1B27381B0](34, 0xE100000000000000);
  return 540697705;
}

id sub_1B1BEB654(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_1B1BEB768(char a1)
{
  v2 = OBJC_IVAR___SiriTTSDaemonSession__keepActive;
  if (v1[OBJC_IVAR___SiriTTSDaemonSession__keepActive] != (a1 & 1))
  {
    v3 = v1;
    v1[OBJC_IVAR___SiriTTSDaemonSession__keepActive] = a1 & 1;
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v5 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v5, qword_1ED9A9120);
    v6 = v1;
    v7 = sub_1B1C2C888();
    v8 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = OUTLINED_FUNCTION_17_2();
      *v9 = 138412546;
      *(v9 + 4) = v6;
      *v10 = v6;
      *(v9 + 12) = 1024;
      *(v9 + 14) = a1 & 1;
      v11 = v6;
      _os_log_impl(&dword_1B1A8A000, v7, v8, "DaemonSession %@ sets keepActive: %{BOOL}d", v9, 0x12u);
      sub_1B1A90CD8(v10, &qword_1EB7625C0, &qword_1B1C37990);
      OUTLINED_FUNCTION_39_8();
      OUTLINED_FUNCTION_29_1();
    }

    v12 = sub_1B1A9CB84();
    v13 = *&v12[OBJC_IVAR____TtC14SiriTTSService16DaemonConnection_asyncProxy];
    swift_unknownObjectRetain();

    v14 = v3[v2];
    v22 = nullsub_1;
    v23 = 0;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    OUTLINED_FUNCTION_13_1();
    v20 = v15;
    v21 = &block_descriptor_28;
    v16 = _Block_copy(&v18);
    [v13 keepActive:v14 reply:{v16, v18, v19}];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  return result;
}

double (*sub_1B1BEB95C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR___SiriTTSDaemonSession__keepActive);
  return sub_1B1BEB990;
}

uint64_t sub_1B1BEB9C4()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();

  return OUTLINED_FUNCTION_49();
}

uint64_t sub_1B1BEBA1C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_29(*v3);
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *v1 = v2;
  v1[1] = v0;
}

id DaemonSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void DaemonSession.__allocating_init(accessoryId:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_129_1());
  OUTLINED_FUNCTION_24();
  DaemonSession.init(accessoryId:)();
}

void DaemonSession.init(accessoryId:)()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = sub_1B1C2C478();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v9 = (v8 - v7);
  *&v0[OBJC_IVAR___SiriTTSDaemonSession____lazy_storage____sessionConnection] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762200, &unk_1B1C41080);
  v11 = OUTLINED_FUNCTION_172_0(v10);
  OUTLINED_FUNCTION_156_0(v11);
  v12 = OUTLINED_FUNCTION_172_0(v10);
  OUTLINED_FUNCTION_156_0(v12);
  v13 = OBJC_IVAR___SiriTTSDaemonSession_requests;
  type metadata accessor for BaseRequest(0);
  *&v0[v13] = sub_1B1C2CAB8();
  v0[OBJC_IVAR___SiriTTSDaemonSession__keepActive] = 0;
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSDaemonSession__clientId);
  v14 = OBJC_IVAR___SiriTTSDaemonSession_accessoryId;
  v15 = *(v5 + 16);
  v15(&v0[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v2, v3);
  __swift_storeEnumTagSinglePayload(&v0[v14], 0, 1, v3);
  v31.receiver = v0;
  v31.super_class = type metadata accessor for DaemonSession(0);
  v16 = objc_msgSendSuper2(&v31, sel_init);
  v17 = qword_1ED9A9288;
  v18 = v16;
  if (v17 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v19 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v19, qword_1ED9A9120);
  v15(v9, v2, v3);
  v20 = sub_1B1C2C888();
  v21 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v20, v21))
  {
    swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_69_3();
    v30 = OUTLINED_FUNCTION_19_0();
    *v2 = 138412546;
    *(v2 + 4) = v18;
    *v28 = v18;
    *(v2 + 12) = 2080;
    sub_1B1BF83C4(&unk_1EB764220, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v29 = v18;
    OUTLINED_FUNCTION_92();
    sub_1B1C2D778();
    v22 = *(v5 + 8);
    v22(v9, v3);
    v23 = OUTLINED_FUNCTION_67_0();
    v26 = sub_1B1A930E4(v23, v24, v25);

    *(v2 + 14) = v26;
    _os_log_impl(&dword_1B1A8A000, v20, v21, "Init DaemonSession %@, with accessory %s", v2, 0x16u);
    sub_1B1A90CD8(v28, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_39_8();

    v22(v2, v3);
  }

  else
  {

    v27 = *(v5 + 8);
    v27(v2, v3);
    v27(v9, v3);
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BEBF28()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_75_4();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v7);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v59 - v9;
  OUTLINED_FUNCTION_2_11();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v0;
  v60 = sub_1B1BF82F4;
  v61 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v66 = sub_1B1C2D7F8();
  if (OUTLINED_FUNCTION_47_7())
  {

    if (qword_1ED9A96B8 != -1)
    {
      OUTLINED_FUNCTION_5_27(&qword_1ED9A96B8);
    }

    sub_1B1A91998();
    OUTLINED_FUNCTION_33_5();
    if (v13 || (v12 & 1) == 0)
    {
      v29 = mach_absolute_time();
      v30 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *&v30[v6] = v29;
      v31 = sub_1B1A919FC();
      v33 = v32;
      v34 = (v6 + OBJC_IVAR___SiriTTSBaseRequest_clientBundleId);
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *v34 = v31;
      v34[1] = v33;

      sub_1B1A91CD0(v2 + OBJC_IVAR___SiriTTSDaemonSession_accessoryId, v10, &qword_1EB761DF8, qword_1B1C40850);
      v35 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      sub_1B1A91B74(v10, v6 + v35);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      v36 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v36, qword_1ED9A9120);
      v37 = v6;
      v59[1] = v35;
      v38 = sub_1B1C2C888();
      v39 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_21_0();
        v41 = OUTLINED_FUNCTION_19_0();
        v59[0] = v4;
        v42 = v41;
        v60 = v41;
        *v40 = 136446210;
        v43 = [v37 description];
        v30 = sub_1B1C2CB58();

        v44 = OUTLINED_FUNCTION_51();
        sub_1B1A930E4(v44, v45, v46);
        OUTLINED_FUNCTION_104();

        *(v40 + 4) = v30;
        _os_log_impl(&dword_1B1A8A000, v38, v39, "Start #PrewarmRequest, %{public}s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        v4 = v59[0];
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_45_6();
      }

      if (qword_1EB7612A8 != -1)
      {
        swift_once();
      }

      if (byte_1EB7612B0 == 1 && (*(v2 + OBJC_IVAR___SiriTTSDaemonSession__keepActive) & 1) == 0)
      {
        v47 = sub_1B1C2C888();
        v48 = sub_1B1C2D0C8();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = OUTLINED_FUNCTION_20_0();
          OUTLINED_FUNCTION_15_2(v49);
          _os_log_impl(&dword_1B1A8A000, v47, v48, "DaemonSession keepActive must be true before prewarming.", v30, 2u);
          OUTLINED_FUNCTION_9_1();
        }
      }

      v50 = sub_1B1A9CB84();
      OUTLINED_FUNCTION_2_11();
      v51 = swift_allocObject();
      *(v51 + 16) = v4;
      *(v51 + 24) = v0;

      v52 = OUTLINED_FUNCTION_89_3();
      v54 = sub_1B1A927C4(v52, v53);

      OUTLINED_FUNCTION_66();
      v55 = swift_allocObject();
      v55[2] = v37;
      v55[3] = v4;
      v55[4] = v0;
      v64 = sub_1B1ABEABC;
      v65 = v55;
      v60 = MEMORY[0x1E69E9820];
      v61 = 1107296256;
      OUTLINED_FUNCTION_13_1();
      v62 = v56;
      v63 = &block_descriptor_34_0;
      v57 = _Block_copy(&v60);

      v58 = v37;

      [v54 prewarmWithRequest:v58 reply:v57];
      _Block_release(v57);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      v14 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v14, qword_1ED9A9120);
      v15 = sub_1B1C2C888();
      v16 = sub_1B1C2D0D8();
      if (OUTLINED_FUNCTION_22_8(v16))
      {
        v17 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_49_7(v17);
        OUTLINED_FUNCTION_7_24();
        _os_log_impl(v18, v19, v20, v21, v22, 2u);
        OUTLINED_FUNCTION_10_1();
      }

      (v4)(0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v23 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v23, qword_1ED9A9120);
    v24 = sub_1B1C2C888();
    v25 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_22_8(v25))
    {
      v26 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_15_2(v26);
      _os_log_impl(&dword_1B1A8A000, v24, v2, "prewarmWithRequest:didFinish: requires correct parameters", v1, 2u);
      OUTLINED_FUNCTION_9_1();
    }

    v27 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v28 = OUTLINED_FUNCTION_3_27();
    v4();
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BEC518(char *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_1B1C2C7F8();
  v74 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B1C2C8A8();
  v70 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B1C2C828();
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v65 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B1A95808;
  *(v18 + 24) = v17;
  aBlock = sub_1B1BFB48C;
  v76 = v18;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v81 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A96B8 != -1)
    {
      swift_once();
    }

    sub_1B1A91998();
    if (v19 == 2 || (v19 & 1) == 0)
    {
      v67 = v6;
      v68 = a3;
      v29 = mach_absolute_time();
      v30 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      v66 = v30;
      *&a1[v30] = v29;
      v31 = sub_1B1A919FC();
      v33 = v32;
      v69 = a2;
      v34 = &a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
      swift_beginAccess();
      *v34 = v31;
      *(v34 + 1) = v33;

      sub_1B1A91CD0(&v69[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v16, &qword_1EB761DF8, qword_1B1C40850);
      v35 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      swift_beginAccess();
      sub_1B1A91B74(v16, &a1[v35]);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v36 = __swift_project_value_buffer(v8, qword_1ED9A9120);
      (*(v70 + 16))(v10, v36, v8);
      sub_1B1C2C808();
      v37 = a1;
      v38 = v73;
      sub_1B1C2C7E8();
      v39 = sub_1B1C2C818();
      v40 = sub_1B1C2D198();
      if (sub_1B1C2D278())
      {
        v41 = swift_slowAlloc();
        *v41 = 134217984;
        *(v41 + 4) = *&a1[v66];

        v42 = sub_1B1C2C7D8();
        _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v39, v40, v42, "TTSRequestReceived", "id %llu", v41, 0xCu);
        MEMORY[0x1B2739FD0](v41, -1, -1);
      }

      else
      {
      }

      (*(v74 + 8))(v38, v67);
      (*(v71 + 8))(v13, v72);
      v43 = v37;
      v44 = sub_1B1C2C888();
      v45 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock = v47;
        *v46 = 136446210;
        v48 = [v43 description];
        v49 = sub_1B1C2CB58();
        v51 = v50;

        v52 = sub_1B1A930E4(v49, v51, &aBlock);

        *(v46 + 4) = v52;
        _os_log_impl(&dword_1B1A8A000, v44, v45, "Start #SynthesisRequest %{public}s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x1B2739FD0](v47, -1, -1);
        MEMORY[0x1B2739FD0](v46, -1, -1);
      }

      v53 = v69;
      v54 = *&v69[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
      v56 = MEMORY[0x1EEE9AC00](v55);
      *(&v65 - 2) = v53;
      *(&v65 - 1) = v43;
      MEMORY[0x1EEE9AC00](v56);
      *(&v65 - 2) = sub_1B1BFB388;
      *(&v65 - 1) = v57;
      os_unfair_lock_lock(v54 + 4);
      sub_1B1BFB494();
      os_unfair_lock_unlock(v54 + 4);
      v58 = sub_1B1A9CB84();
      v59 = swift_allocObject();
      *(v59 + 16) = sub_1B1A95808;
      *(v59 + 24) = v17;

      v60 = sub_1B1A927C4(sub_1B1BFB4C8, v59);

      v61 = swift_allocObject();
      v61[2] = v43;
      v61[3] = v53;
      v61[4] = sub_1B1A95808;
      v61[5] = v17;
      v79 = sub_1B1BFB384;
      v80 = v61;
      aBlock = MEMORY[0x1E69E9820];
      v76 = 1107296256;
      v77 = sub_1B1A955E0;
      v78 = &block_descriptor_552;
      v62 = _Block_copy(&aBlock);

      v63 = v43;
      v64 = v53;

      [v60 synthesizeWithRequest:v63 reply:v62];
      _Block_release(v62);

      swift_unknownObjectRelease();
      a3 = v68;
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v8, qword_1ED9A9120);
      v20 = sub_1B1C2C888();
      v21 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1B1A8A000, v20, v21, "Skipped #SynthesisRequest: TTS is disabled.", v22, 2u);
        MEMORY[0x1B2739FD0](v22, -1, -1);
      }

      a3[2](a3, 0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_1ED9A9120);
    v23 = sub_1B1C2C888();
    v24 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B1A8A000, v23, v24, "synthesizeWithRequest:didFinish: requires correct parameters", v25, 2u);
      MEMORY[0x1B2739FD0](v25, -1, -1);
    }

    v26 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v27 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v28 = sub_1B1C2C048();
    (a3)[2](a3, v28);
  }

  _Block_release(a3);
}

void sub_1B1BECF30()
{
  OUTLINED_FUNCTION_25();
  v86 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B1C2C7F8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v10 = OUTLINED_FUNCTION_135_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v13);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_2_11();
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *(v15 + 24) = v3;
  v87 = sub_1B1BFB48C;
  v88 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v91 = sub_1B1C2D7F8();
  if (OUTLINED_FUNCTION_47_7())
  {

    if (qword_1ED9A96B8 != -1)
    {
      OUTLINED_FUNCTION_5_27(&qword_1ED9A96B8);
    }

    sub_1B1A91998();
    OUTLINED_FUNCTION_33_5();
    if (v17 || (v16 & 1) == 0)
    {
      v83 = v8;
      v84 = v5;
      v85 = v3;
      v35 = mach_absolute_time();
      v36 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *&v7[v36] = v35;
      v37 = sub_1B1A919FC();
      v39 = v38;
      v40 = &v7[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *v40 = v37;
      v40[1] = v39;

      sub_1B1A91CD0(&v86[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v1, &qword_1EB761DF8, qword_1B1C40850);
      v41 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      sub_1B1A91B74(v1, &v7[v41]);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      __swift_project_value_buffer(v10, qword_1ED9A9120);
      v42 = OUTLINED_FUNCTION_32_12();
      v43(v42);
      sub_1B1C2C808();
      v44 = v7;
      sub_1B1C2C7E8();
      v45 = sub_1B1C2C818();
      sub_1B1C2D198();
      if (sub_1B1C2D278())
      {
        v46 = OUTLINED_FUNCTION_21_0();
        v47 = OUTLINED_FUNCTION_122_1(v46, 3.852e-34);
        *(v47 + 1) = *&v7[v48];

        v49 = sub_1B1C2C7D8();
        OUTLINED_FUNCTION_164_0(&dword_1B1A8A000, v50, v51, v49, "TTSRequestReceived", "id %llu");
        OUTLINED_FUNCTION_72_4();
      }

      else
      {
      }

      v52 = OUTLINED_FUNCTION_120_1();
      v53(v52, v83);
      v54 = OUTLINED_FUNCTION_119_2();
      v55(v54);
      v56 = v44;
      v57 = sub_1B1C2C888();
      sub_1B1C2D0D8();

      if (OUTLINED_FUNCTION_151_0())
      {
        v58 = OUTLINED_FUNCTION_21_0();
        v59 = OUTLINED_FUNCTION_19_0();
        v87 = v59;
        *v58 = 136446210;
        v60 = [v56 description];
        v61 = sub_1B1C2CB58();
        v63 = v62;

        v64 = sub_1B1A930E4(v61, v63, &v87);

        *(v58 + 4) = v64;
        OUTLINED_FUNCTION_61_4();
        _os_log_impl(v65, v66, v67, v68, v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        OUTLINED_FUNCTION_29_1();
        OUTLINED_FUNCTION_10_1();
      }

      v69 = *&v86[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
      MEMORY[0x1EEE9AC00](v70);
      OUTLINED_FUNCTION_65_3();
      *(v71 - 16) = v86;
      *(v71 - 8) = v56;
      MEMORY[0x1EEE9AC00](v72);
      OUTLINED_FUNCTION_66_5();
      *(v73 - 16) = sub_1B1BF8320;
      *(v73 - 8) = v74;
      os_unfair_lock_lock(v69 + 4);
      sub_1B1BF833C();
      os_unfair_lock_unlock(v69 + 4);
      v75 = sub_1B1A9CB84();
      OUTLINED_FUNCTION_2_11();
      v76 = swift_allocObject();
      *(v76 + 16) = v84;
      *(v76 + 24) = v85;

      v77 = sub_1B1A927C4(sub_1B1BF8364, v76);

      OUTLINED_FUNCTION_38_1();
      v78 = swift_allocObject();
      v78[2] = v56;
      v78[3] = v86;
      v78[4] = v84;
      v78[5] = v85;
      OUTLINED_FUNCTION_1_27(v78);
      v88 = 1107296256;
      OUTLINED_FUNCTION_13_1();
      v89 = v79;
      v90 = &block_descriptor_47;
      v80 = _Block_copy(&v87);

      v81 = v56;
      v82 = v86;

      [v77 synthesizeWithRequest:v81 reply:v80];
      _Block_release(v80);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      OUTLINED_FUNCTION_12_1(v10, qword_1ED9A9120);
      v18 = sub_1B1C2C888();
      v19 = sub_1B1C2D0D8();
      if (OUTLINED_FUNCTION_81(v19))
      {
        *OUTLINED_FUNCTION_20_0() = 0;
        OUTLINED_FUNCTION_29_8();
        _os_log_impl(v20, v21, v22, v23, v24, 2u);
        OUTLINED_FUNCTION_11_23();
      }

      (v5)(0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v25 = v5;
    OUTLINED_FUNCTION_12_1(v10, qword_1ED9A9120);
    v26 = sub_1B1C2C888();
    v27 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_81(v27))
    {
      v28 = OUTLINED_FUNCTION_20_0();
      *v28 = 0;
      OUTLINED_FUNCTION_61_4();
      _os_log_impl(v29, v30, v31, v32, v28, 2u);
      OUTLINED_FUNCTION_72_4();
    }

    v33 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v34 = OUTLINED_FUNCTION_3_27();
    v25();
  }

  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BED69C(id a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    v8 = a1;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v9 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v9, qword_1ED9A9120);
    v10 = a1;
    v11 = a2;
    v12 = sub_1B1C2C888();
    v13 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = a4;
      v16 = swift_slowAlloc();
      v31 = v16;
      *v14 = 134218242;
      v17 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *(v14 + 4) = *&v11[v17];

      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v18 = sub_1B1C2D828();
      v20 = sub_1B1A930E4(v18, v19, &v31);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_1B1A8A000, v12, v13, "#Error #SynthesisRequest id %llu, error: %s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v21 = v16;
      a4 = v15;
      MEMORY[0x1B2739FD0](v21, -1, -1);
      MEMORY[0x1B2739FD0](v14, -1, -1);

LABEL_12:
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v22 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v22, qword_1ED9A9120);
    v12 = a2;
    v23 = sub_1B1C2C888();
    v24 = sub_1B1C2D0D8();
    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_12;
    }

    v25 = swift_slowAlloc();
    *v25 = 134217984;
    v26 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *(v25 + 4) = *(v12 + v26);

    _os_log_impl(&dword_1B1A8A000, v23, v24, "#Success #SynthesisRequest id %llu", v25, 0xCu);
    MEMORY[0x1B2739FD0](v25, -1, -1);
  }

LABEL_13:
  v28 = *(a3 + OBJC_IVAR___SiriTTSDaemonSession_requestsLock);
  v29 = MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v29);
  os_unfair_lock_lock(v28 + 4);
  sub_1B1BFB494();
  os_unfair_lock_unlock(v28 + 4);
  return a4(a1);
}

void sub_1B1BEDA40()
{
  OUTLINED_FUNCTION_25();
  v82 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B1C2C7F8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v10 = OUTLINED_FUNCTION_135_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v13);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_2_11();
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *(v15 + 24) = v3;
  v83 = sub_1B1BFB48C;
  v84 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v87 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {
    v81 = v8;

    if (qword_1ED9A96B8 != -1)
    {
      OUTLINED_FUNCTION_5_27(&qword_1ED9A96B8);
    }

    sub_1B1A91998();
    OUTLINED_FUNCTION_33_5();
    if (v17 || (v16 & 1) == 0)
    {
      v79 = v5;
      v80 = v3;
      v30 = mach_absolute_time();
      v31 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *&v7[v31] = v30;
      v32 = sub_1B1A919FC();
      v34 = v33;
      v35 = &v7[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *v35 = v32;
      v35[1] = v34;

      sub_1B1A91CD0(&v82[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v1, &qword_1EB761DF8, qword_1B1C40850);
      v36 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      sub_1B1A91B74(v1, &v7[v36]);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      __swift_project_value_buffer(v10, qword_1ED9A9120);
      v37 = OUTLINED_FUNCTION_32_12();
      v38(v37);
      sub_1B1C2C808();
      v39 = v7;
      sub_1B1C2C7E8();
      v40 = sub_1B1C2C818();
      v41 = sub_1B1C2D198();
      if (sub_1B1C2D278())
      {
        v42 = OUTLINED_FUNCTION_21_0();
        v43 = OUTLINED_FUNCTION_122_1(v42, 3.852e-34);
        *(v43 + 1) = *&v7[v44];

        v45 = sub_1B1C2C7D8();
        _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v40, v41, v45, "TTSRequestReceived", "id %llu", v42, 0xCu);
        OUTLINED_FUNCTION_9_1();
      }

      else
      {
      }

      v46 = OUTLINED_FUNCTION_120_1();
      v47(v46, v81);
      v48 = OUTLINED_FUNCTION_119_2();
      v49(v48);
      v50 = v39;
      v51 = sub_1B1C2C888();
      sub_1B1C2D0D8();

      if (OUTLINED_FUNCTION_151_0())
      {
        v52 = OUTLINED_FUNCTION_21_0();
        v53 = OUTLINED_FUNCTION_19_0();
        v83 = v53;
        *v52 = 136446210;
        v54 = [v50 description];
        v55 = sub_1B1C2CB58();
        v57 = v56;

        v58 = sub_1B1A930E4(v55, v57, &v83);

        *(v52 + 4) = v58;
        OUTLINED_FUNCTION_61_4();
        _os_log_impl(v59, v60, v61, v62, v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        OUTLINED_FUNCTION_29_1();
        OUTLINED_FUNCTION_10_1();
      }

      v63 = sub_1B1AD6C0C();
      if (!v63)
      {
        v64 = [objc_opt_self() sharedInstance];
        [v64 opaqueSessionID];

        v63 = sub_1B1BCF6C4();
      }

      v65 = *&v82[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
      MEMORY[0x1EEE9AC00](v63);
      OUTLINED_FUNCTION_65_3();
      *(v66 - 16) = v82;
      *(v66 - 8) = v50;
      MEMORY[0x1EEE9AC00](v67);
      OUTLINED_FUNCTION_66_5();
      *(v68 - 16) = sub_1B1BFB388;
      *(v68 - 8) = v69;
      os_unfair_lock_lock(v65 + 4);
      sub_1B1BFB494();
      os_unfair_lock_unlock(v65 + 4);
      v70 = sub_1B1A9CB84();
      OUTLINED_FUNCTION_66();
      v71 = swift_allocObject();
      v71[2] = v50;
      v71[3] = v79;
      v71[4] = v80;

      v72 = v50;
      sub_1B1A927C4(sub_1B1BFB3E0, v71);

      OUTLINED_FUNCTION_38_1();
      v73 = swift_allocObject();
      v73[2] = v72;
      v73[3] = v82;
      v73[4] = v79;
      v73[5] = v80;
      OUTLINED_FUNCTION_1_27(v73);
      v84 = 1107296256;
      OUTLINED_FUNCTION_13_1();
      v85 = v74;
      v86 = &block_descriptor_61;
      v75 = _Block_copy(&v83);

      v72;
      v76 = v82;

      OUTLINED_FUNCTION_5_13();
      [v77 v78];
      _Block_release(v75);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      OUTLINED_FUNCTION_12_1(v10, qword_1ED9A9120);
      v18 = sub_1B1C2C888();
      v19 = sub_1B1C2D0D8();
      if (OUTLINED_FUNCTION_82_3(v19))
      {
        v20 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_15_2(v20);
        OUTLINED_FUNCTION_44_6(&dword_1B1A8A000, v21, v22, "Skipped #SpeechRequest: TTS is disabled.");
        OUTLINED_FUNCTION_11();
      }

      (v5)(0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    OUTLINED_FUNCTION_12_1(v10, qword_1ED9A9120);
    v23 = sub_1B1C2C888();
    v24 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_82_3(v24))
    {
      v25 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_15_2(v25);
      OUTLINED_FUNCTION_44_6(&dword_1B1A8A000, v26, v27, "speakWithSpeechRequest:didFinish: requires correct parameters");
      OUTLINED_FUNCTION_11();
    }

    v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v29 = OUTLINED_FUNCTION_3_27();
    v5();
  }

  OUTLINED_FUNCTION_26_1();
}