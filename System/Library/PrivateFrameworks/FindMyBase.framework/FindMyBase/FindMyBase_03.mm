uint64_t sub_1DF5E2DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v9[3] = &type metadata for _BinaryDecoder;
  v9[4] = &off_1F5A94D08;
  v9[0] = v6;
  v7 = *(a3 + 8);

  return v7(v9, a2, a3);
}

uint64_t sub_1DF5E2E6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v4 + 32);

  result = sub_1DF5FA238(a1, v5);
  v7 = result;
  v9 = v8;
  if (v2)
  {

    return v7;
  }

  v10 = *(v4 + 32);
  v11 = __OFADD__(v10, a1);
  v12 = v10 + a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(v4 + 32) = v12;

  v13 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v13 != 2)
    {
      if (!a1)
      {
        return v7;
      }

      goto LABEL_11;
    }

    v15 = *(v7 + 16);
    v14 = *(v7 + 24);
    v11 = __OFSUB__(v14, v15);
    v16 = v14 - v15;
    if (!v11)
    {
      if (v16 == a1)
      {
        return v7;
      }

LABEL_11:
      sub_1DF5E3264();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();
      sub_1DF5B33C0(v7, v9);
      return v7;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v13)
  {
    if (BYTE6(v9) == a1)
    {
      return v7;
    }

    goto LABEL_11;
  }

  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    if (HIDWORD(v7) - v7 == a1)
    {
      return v7;
    }

    goto LABEL_11;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1DF5E2FA4()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v6 = 0;
      goto LABEL_11;
    }

    v8 = *(v2 + 16);
    v7 = *(v2 + 24);
    v6 = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v3);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v2), v2))
  {
    goto LABEL_14;
  }

  v6 = HIDWORD(v2) - v2;
LABEL_11:
  if (v6 >= v4)
  {

    sub_1DF5A3A94(v2, v3);
    sub_1DF63241C();
    sub_1DF5B33C0(v2, v3);

    return;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1DF5E3088()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DF5E31D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DF5E3218(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1DF5E3264()
{
  result = qword_1ECE42C20;
  if (!qword_1ECE42C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C20);
  }

  return result;
}

void *sub_1DF5E32D4(void *result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      return memmove(result, v2, *(v1 + 24) - v2);
    }
  }

  return result;
}

uint64_t Bit.description.getter()
{
  if (*v0)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

FindMyBase::Bit_optional __swiftcall Bit.init(rawValue:)(FindMyBase::Bit_optional rawValue)
{
  if (rawValue.value == FindMyBase_Bit_one)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == FindMyBase_Bit_zero)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DF5E3334()
{
  result = qword_1ECE42C28;
  if (!qword_1ECE42C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C28);
  }

  return result;
}

uint64_t sub_1DF5E3388()
{
  sub_1DF633A6C();
  sub_1DF633A8C();
  return sub_1DF633AAC();
}

uint64_t sub_1DF5E33FC(uint64_t a1)
{
  sub_1DF633A6C();
  sub_1DF633A8C();
  return sub_1DF633AAC();
}

_BYTE *sub_1DF5E3440@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DF5E3460()
{
  if (*v0)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

uint64_t withinActor<A, B>(_:block:)(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DF59D2C8;

  return v8(a1, a2);
}

uint64_t MultiAwait.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t MultiAwait.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t sub_1DF5E360C(uint64_t a1, uint64_t a2)
{
  sub_1DF5E37F8(a1, a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1DF5E36E8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1DF5E36E8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DF5AD2A8, v1, 0);
}

unint64_t sub_1DF5E37F8(uint64_t a1, uint64_t a2)
{
  result = qword_1ECE42C30;
  if (!qword_1ECE42C30)
  {
    type metadata accessor for MultiAwait();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C30);
  }

  return result;
}

uint64_t sub_1DF5E3870(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429F8, &qword_1DF638C28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_1DF6325AC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF63259C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v5, a1, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_1DF5C5BDC(v5, v8);
  return swift_endAccess();
}

uint64_t sub_1DF5E39F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - v3;
  swift_beginAccess();
  v5 = *(v0 + 112);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v15 = v0;
  v16 = v2 + 16;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v8; result = (*(v2 + 8))(v4, v1))
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v2 + 16))(v4, *(v5 + 56) + *(v2 + 72) * (v13 | (v12 << 6)), v1);
    sub_1DF632E3C();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      *(v15 + 112) = MEMORY[0x1E69E7CC8];
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t MultiAwait.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MultiAwait.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of MultiAwait.await()()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DF59D2C8;

  return v4();
}

uint64_t XPCActivity.Criteria.Options.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1DF5C1294(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1DF5C1294((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x614E7265776F702ELL;
  *(v5 + 5) = 0xE900000000000070;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1DF5C1294((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x766544656B61772ELL;
    *(v8 + 5) = 0xEB00000000656369;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1DF5C1294((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD00000000000001ALL;
    *(v11 + 5) = 0x80000001DF635150;
  }

  if ((v1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_1DF5C1294((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0xD000000000000017;
    *(v14 + 5) = 0x80000001DF635130;
  }

  if ((v1 & 0x10) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_1DF5C1294((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x657269757165722ELL;
    *(v17 + 5) = 0xEF417373616C4373;
    if ((v1 & 0x20) == 0)
    {
LABEL_26:
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_48;
    }
  }

  else if ((v1 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_1DF5C1294((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x657269757165722ELL;
  *(v20 + 5) = 0xEF427373616C4373;
  if ((v1 & 0x40) == 0)
  {
LABEL_27:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_48:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_1DF5C1294((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x657269757165722ELL;
  *(v23 + 5) = 0xEF437373616C4373;
  if ((v1 & 0x80) == 0)
  {
LABEL_28:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_53:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_1DF5C1294((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0xD000000000000010;
  *(v26 + 5) = 0x80000001DF635110;
  if ((v1 & 0x100) == 0)
  {
LABEL_29:
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_1DF5C1294((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD00000000000001BLL;
  *(v29 + 5) = 0x80000001DF6350F0;
  if ((v1 & 0x200) == 0)
  {
LABEL_30:
    if ((v1 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_1DF5C1294((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  strcpy(v32 + 32, ".allowBattery");
  *(v32 + 23) = -4864;
  if ((v1 & 0x400) == 0)
  {
LABEL_31:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_68:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_1DF5C1294((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0xD000000000000010;
  *(v35 + 5) = 0x80000001DF6350D0;
  if ((v1 & 0x800) == 0)
  {
LABEL_32:
    if ((v1 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_78;
  }

LABEL_73:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_1DF5C1294((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  strcpy(v38 + 32, ".cpuIntensive");
  *(v38 + 23) = -4864;
  if ((v1 & 0x1000) == 0)
  {
LABEL_33:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_83;
  }

LABEL_78:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_1DF5C1294((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  strcpy(v41 + 32, ".diskIntensive");
  v41[47] = -18;
  if ((v1 & 0x2000) == 0)
  {
LABEL_34:
    if ((v1 & 0x4000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_88;
  }

LABEL_83:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_1DF5C1294((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0xD000000000000019;
  *(v44 + 5) = 0x80000001DF6350B0;
  if ((v1 & 0x4000) == 0)
  {
LABEL_35:
    if ((v1 & 0x8000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_93;
  }

LABEL_88:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_1DF5C1294((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  *(v47 + 4) = 0xD000000000000012;
  *(v47 + 5) = 0x80000001DF635090;
  if ((v1 & 0x8000) == 0)
  {
LABEL_36:
    if ((v1 & 0x10000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_98;
  }

LABEL_93:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v49 = *(v2 + 2);
  v48 = *(v2 + 3);
  if (v49 >= v48 >> 1)
  {
    v2 = sub_1DF5C1294((v48 > 1), v49 + 1, 1, v2);
  }

  *(v2 + 2) = v49 + 1;
  v50 = &v2[16 * v49];
  *(v50 + 4) = 0xD000000000000013;
  *(v50 + 5) = 0x80000001DF635070;
  if ((v1 & 0x10000) != 0)
  {
LABEL_98:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
    }

    v52 = *(v2 + 2);
    v51 = *(v2 + 3);
    if (v52 >= v51 >> 1)
    {
      v2 = sub_1DF5C1294((v51 > 1), v52 + 1, 1, v2);
    }

    *(v2 + 2) = v52 + 1;
    v53 = &v2[16 * v52];
    *(v53 + 4) = 0xD000000000000013;
    *(v53 + 5) = 0x80000001DF635050;
  }

LABEL_103:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5BC754();
  v54 = sub_1DF6328DC();
  v56 = v55;

  MEMORY[0x1E12D82E0](v54, v56);

  MEMORY[0x1E12D82E0](93, 0xE100000000000000);
  return 91;
}

_BYTE *XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a6;
  *a7 = *result;
  *(a7 + 1) = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = v7;
  return result;
}

uint64_t XPCActivity.Criteria.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DF63347C();
  MEMORY[0x1E12D82E0](60, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C38, &qword_1DF639D70);
  v3 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v3);

  MEMORY[0x1E12D82E0](0x7469726F69727020, 0xEB00000000203A79);
  if (v1)
  {
    v4 = 0x6E65746E69616D2ELL;
  }

  else
  {
    v4 = 0x7974696C6974752ELL;
  }

  if (v1)
  {
    v5 = 0xEC00000065636E61;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  MEMORY[0x1E12D82E0](v4, v5);

  MEMORY[0x1E12D82E0](0x746165706572203BLL, 0xED0000203A676E69);
  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1E12D82E0](v6, v7);

  MEMORY[0x1E12D82E0](0x3A79616C6564203BLL, 0xE900000000000020);
  v8 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v8);

  MEMORY[0x1E12D82E0](0x506563617267203BLL, 0xEF203A646F697265);
  v9 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v9);

  MEMORY[0x1E12D82E0](0x767265746E69203BLL, 0xEC000000203A6C61);
  v10 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v10);

  MEMORY[0x1E12D82E0](0x6E6F6974706F203BLL, 0xEB00000000203A73);
  v11 = XPCActivity.Criteria.Options.description.getter();
  MEMORY[0x1E12D82E0](v11);

  return 0;
}

uint64_t sub_1DF5E4BC4()
{
  v1 = *v0;
  v2 = 0x797469726F697270;
  v3 = 0x7265506563617267;
  v4 = 0x6C61767265746E69;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E69746165706572;
  if (v1 != 1)
  {
    v5 = 0x79616C6564;
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

uint64_t sub_1DF5E4C88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF5E6294(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF5E4CBC(uint64_t a1)
{
  v2 = sub_1DF5E5C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5E4CF8(uint64_t a1)
{
  v2 = sub_1DF5E5C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCActivity.Criteria.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C40, &qword_1DF639D78);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v14 = v1[1];
  v9 = *(v1 + 1);
  v13[2] = *(v1 + 2);
  v13[3] = v9;
  v10 = *(v1 + 3);
  v13[0] = *(v1 + 4);
  v13[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF5E5C74();
  sub_1DF633AFC();
  v22 = v8;
  v21 = 0;
  sub_1DF5E5CC8();
  sub_1DF63385C();
  if (!v2)
  {
    v11 = v13[0];
    v20 = 1;
    sub_1DF63384C();
    v19 = 2;
    sub_1DF63386C();
    v18 = 3;
    sub_1DF63386C();
    v17 = 4;
    sub_1DF63386C();
    v15 = v11;
    v16 = 5;
    sub_1DF5E5D1C();
    sub_1DF63385C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t XPCActivity.Criteria.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C60, &qword_1DF639D80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF5E5C74();
  sub_1DF633ADC();
  if (!v2)
  {
    v24 = 0;
    sub_1DF5E5D70();
    sub_1DF6337CC();
    v9 = v25;
    v23 = 1;
    v10 = sub_1DF6337BC();
    v22 = 2;
    v17 = sub_1DF6337DC();
    v21 = 3;
    v16 = sub_1DF6337DC();
    v20 = 4;
    v15 = sub_1DF6337DC();
    v19 = 5;
    sub_1DF5E5DC4();
    sub_1DF6337CC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 1) = v10 & 1;
    v12 = v18;
    v13 = v15;
    v14 = v16;
    *(a2 + 8) = v17;
    *(a2 + 16) = v14;
    *(a2 + 24) = v13;
    *(a2 + 32) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_1DF5E526C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9D68]))
  {
    v4 = sub_1DF632B2C();
    if (qword_1ED8E4B58 != -1)
    {
      v16 = v4;
      v17 = v5;
      swift_once();
      v4 = v16;
      v5 = v17;
    }

    if (v4 == qword_1ED8E4B60 && v5 == *algn_1ED8E4B68)
    {

      v8 = 0;
    }

    else
    {
      v7 = sub_1DF63394C();

      v8 = ~v7 & 1;
    }

    v10 = xpc_dictionary_get_BOOL(a1, *MEMORY[0x1E69E9D88]);
    int64 = xpc_dictionary_get_int64(a1, *MEMORY[0x1E69E9C68]);
    v12 = xpc_dictionary_get_int64(a1, *MEMORY[0x1E69E9C98]);
    v13 = xpc_dictionary_get_int64(a1, *MEMORY[0x1E69E9CB0]);
    result = sub_1DF5E5400(a1, &v18);
    v14 = v18;
    v15 = 256;
    if (!v10)
    {
      v15 = 0;
    }

    *a2 = v15 | v8;
    a2[1] = int64;
    a2[2] = v12;
    a2[3] = v13;
    a2[4] = v14;
  }

  else
  {
    result = swift_unknownObjectRelease();
    *a2 = 2;
    *(a2 + 1) = 0u;
    *(a2 + 3) = 0u;
  }

  return result;
}

uint64_t sub_1DF5E5400@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (!*MEMORY[0x1E69E9D58])
  {
    __break(1u);
    goto LABEL_54;
  }

  v3 = result;
  result = xpc_dictionary_get_BOOL(result, *MEMORY[0x1E69E9D58]);
  if (!*MEMORY[0x1E69E9DC8])
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v4 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DC8]);
  if (!*MEMORY[0x1E69E9DD8])
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v5 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DD8]);
  if (!*MEMORY[0x1E69E9DF0])
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v6 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DF0]);
  if (!*MEMORY[0x1E69E9D98])
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v7 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9D98]);
  if (!*MEMORY[0x1E69E9DA0])
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v8 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DA0]);
  if (!*MEMORY[0x1E69E9DA8])
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v9 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DA8]);
  if (!*MEMORY[0x1E69E9DB8])
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v10 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DB8]);
  if (!*MEMORY[0x1E69E9DB0])
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v11 = v4;
  if (v5)
  {
    v11 = v4 | 4;
  }

  if (v6)
  {
    v11 |= 2uLL;
  }

  if (v7)
  {
    v11 |= 8uLL;
  }

  if (v8)
  {
    v11 |= 0x10uLL;
  }

  if (v9)
  {
    v11 |= 0x20uLL;
  }

  if (v10)
  {
    v11 |= 0x40uLL;
  }

  if (result)
  {
    v12 = v11 | 0x80;
  }

  else
  {
    v12 = v11;
  }

  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DB0]);
  if (result)
  {
    v13 = v12 | 0x100;
  }

  else
  {
    v13 = v12;
  }

  if (!*MEMORY[0x1E69E9C80])
  {
    goto LABEL_62;
  }

  v14 = xpc_dictionary_get_dictionary(v3, *MEMORY[0x1E69E9C80]);
  if (v14)
  {
    v15 = v14;
    v16 = sub_1DF632A7C();
    string = xpc_dictionary_get_string(v15, (v16 + 32));

    swift_unknownObjectRelease();
    if (string)
    {
      v13 |= 0x2000uLL;
    }
  }

  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9C40]);
  if (!*MEMORY[0x1E69E9D00])
  {
    goto LABEL_63;
  }

  v18 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9D00]);
  if (!*MEMORY[0x1E69E9C60])
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v19 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9C60]);
  if (!*MEMORY[0x1E69E9C78])
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v20 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9C78]);
  if (!*MEMORY[0x1E69E9C58])
  {
LABEL_66:
    __break(1u);
    return result;
  }

  v21 = v13 | 0x200;
  if (!v18)
  {
    v21 = v13;
  }

  if (v19)
  {
    v21 |= 0x400uLL;
  }

  if (v20)
  {
    v21 |= 0x800uLL;
  }

  if (result)
  {
    v22 = v21 | 0x1000;
  }

  else
  {
    v22 = v21;
  }

  if (xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9C58]))
  {
    v22 |= 0x4000uLL;
  }

  if (xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9D60]))
  {
    v23 = v22 | 0x8000;
  }

  else
  {
    v23 = v22;
  }

  v24 = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DC0]);
  result = swift_unknownObjectRelease();
  v25 = v23 | 0x10000;
  if (!v24)
  {
    v25 = v23;
  }

  *a2 = v25;
  return result;
}

void sub_1DF5E5758()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  v9 = MEMORY[0x1E69E9D78];
  if (v1)
  {
    v9 = MEMORY[0x1E69E9D70];
  }

  xpc_dictionary_set_string(v7, *MEMORY[0x1E69E9D68], *v9);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9D88], v2);
  xpc_dictionary_set_int64(v8, *MEMORY[0x1E69E9C68], v3);
  xpc_dictionary_set_int64(v8, *MEMORY[0x1E69E9C98], v4);
  if (v2 == 1)
  {
    xpc_dictionary_set_int64(v8, *MEMORY[0x1E69E9CB0], v5);
  }

  if (v6)
  {
    if (!*MEMORY[0x1E69E9D58])
    {
      __break(1u);
      goto LABEL_55;
    }

    xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9D58], 1);
  }

  if ((v6 & 4) == 0)
  {
    goto LABEL_11;
  }

  if (!*MEMORY[0x1E69E9DC8])
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DC8], 1);
LABEL_11:
  if ((v6 & 2) == 0)
  {
    goto LABEL_14;
  }

  if (!*MEMORY[0x1E69E9DD8])
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DD8], 1);
LABEL_14:
  if ((v6 & 8) == 0)
  {
    goto LABEL_17;
  }

  if (!*MEMORY[0x1E69E9DF0])
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DF0], 1);
LABEL_17:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_20;
  }

  if (!*MEMORY[0x1E69E9D98])
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9D98], 1);
LABEL_20:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  if (!*MEMORY[0x1E69E9DA0])
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DA0], 1);
LABEL_23:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_26;
  }

  if (!*MEMORY[0x1E69E9DA8])
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DA8], 1);
LABEL_26:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_29;
  }

  if (!*MEMORY[0x1E69E9DB8])
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DB8], 1);
LABEL_29:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_32;
  }

  if (!*MEMORY[0x1E69E9DB0])
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DB0], 1);
LABEL_32:
  if ((v6 & 0x2000) == 0)
  {
    goto LABEL_35;
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = sub_1DF632A7C();
  v12 = sub_1DF632A7C();
  xpc_dictionary_set_string(v10, (v11 + 32), (v12 + 32));

  if (!*MEMORY[0x1E69E9C80])
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x1E69E9C80], v10);
  swift_unknownObjectRelease();
LABEL_35:
  if ((v6 & 0x200) != 0)
  {
    xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9C40], 1);
  }

  if ((v6 & 0x400) != 0)
  {
    if (*MEMORY[0x1E69E9D00])
    {
      xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9D00], 1);
      goto LABEL_40;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_40:
  if ((v6 & 0x800) == 0)
  {
    goto LABEL_43;
  }

  if (!*MEMORY[0x1E69E9C60])
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9C60], 1);
LABEL_43:
  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

  if (!*MEMORY[0x1E69E9C78])
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9C78], 1);
LABEL_46:
  if ((v6 & 0x4000) != 0)
  {
    if (*MEMORY[0x1E69E9C58])
    {
      xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9C58], 1);
      goto LABEL_49;
    }

LABEL_67:
    __break(1u);
    return;
  }

LABEL_49:
  if ((v6 & 0x8000) != 0)
  {
    xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9D60], 1);
  }

  if ((v6 & 0x10000) != 0)
  {
    xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DC0], 1);
  }
}

BOOL _s10FindMyBase11XPCActivityC8CriteriaV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a2 + 1);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a1 + 24);
  v10 = *a1 == 0;
  if (*a1)
  {
    v11 = 0x616E65746E69616DLL;
  }

  else
  {
    v11 = 0x7974696C697475;
  }

  if (v10)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xEB0000000065636ELL;
  }

  if (*a2)
  {
    v13 = 0x616E65746E69616DLL;
  }

  else
  {
    v13 = 0x7974696C697475;
  }

  if (*a2)
  {
    v14 = 0xEB0000000065636ELL;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (v11 != v13 || v12 != v14)
  {
    v18 = v5;
    v16 = sub_1DF63394C();

    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }

    if (v2 != v6)
    {
      return result;
    }

    if (v4 != v7)
    {
      return result;
    }

    if (v3 != v8)
    {
      return result;
    }

    v5 = v18;
    if (v20 != v9)
    {
      return result;
    }

    return v5 == v19;
  }

  result = 0;
  if (v2 == v6 && v4 == v7 && v3 == v8 && v20 == v9)
  {
    return v5 == v19;
  }

  return result;
}

unint64_t sub_1DF5E5C74()
{
  result = qword_1ECE42C48;
  if (!qword_1ECE42C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C48);
  }

  return result;
}

unint64_t sub_1DF5E5CC8()
{
  result = qword_1ECE42C50;
  if (!qword_1ECE42C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C50);
  }

  return result;
}

unint64_t sub_1DF5E5D1C()
{
  result = qword_1ECE42C58;
  if (!qword_1ECE42C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C58);
  }

  return result;
}

unint64_t sub_1DF5E5D70()
{
  result = qword_1ECE42C68;
  if (!qword_1ECE42C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C68);
  }

  return result;
}

unint64_t sub_1DF5E5DC4()
{
  result = qword_1ECE42C70;
  if (!qword_1ECE42C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C70);
  }

  return result;
}

unint64_t sub_1DF5E5E1C()
{
  result = qword_1ECE42C78;
  if (!qword_1ECE42C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C78);
  }

  return result;
}

unint64_t sub_1DF5E5E74()
{
  result = qword_1ECE42C80;
  if (!qword_1ECE42C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C80);
  }

  return result;
}

unint64_t sub_1DF5E5ECC()
{
  result = qword_1ECE42518;
  if (!qword_1ECE42518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42518);
  }

  return result;
}

unint64_t sub_1DF5E5F24()
{
  result = qword_1ECE42510;
  if (!qword_1ECE42510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42510);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF5E5F8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DF5E5FD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t _s8CriteriaV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8CriteriaV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF5E6190()
{
  result = qword_1ECE42C88;
  if (!qword_1ECE42C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C88);
  }

  return result;
}

unint64_t sub_1DF5E61E8()
{
  result = qword_1ECE42C90;
  if (!qword_1ECE42C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C90);
  }

  return result;
}

unint64_t sub_1DF5E6240()
{
  result = qword_1ECE42C98;
  if (!qword_1ECE42C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C98);
  }

  return result;
}

uint64_t sub_1DF5E6294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469726F697270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DF63394C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69746165706572 && a2 == 0xE900000000000067 || (sub_1DF63394C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265506563617267 && a2 == 0xEB00000000646F69 || (sub_1DF63394C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DF63394C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DF5E6498()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E4C18);
  v1 = __swift_project_value_buffer(v0, qword_1ED8E4C18);
  if (qword_1ED8E4C38 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8E4C40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AsyncStreamProvider.finished.getter()
{
  v1 = *(v0 + 16);
  sub_1DF6325AC();
  type metadata accessor for Transaction();
  swift_getTupleTypeMetadata2();
  sub_1DF632F0C();
  sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);
  sub_1DF63288C();
  sub_1DF5A61A8(sub_1DF5E664C, v0, v1);
  return v3;
}

uint64_t AsyncStreamProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  AsyncStreamProvider.init()();
  return v0;
}

uint64_t *AsyncStreamProvider.init()()
{
  sub_1DF6325AC();
  type metadata accessor for Transaction();
  swift_getTupleTypeMetadata2();
  sub_1DF632F0C();
  sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);
  v4 = sub_1DF6327DC();
  v1 = sub_1DF63288C();
  v2 = sub_1DF5A6090(&v4, v1);

  *(v0 + 16) = v2;
  *(v0 + 24) = 0;
  return v0;
}

Swift::Void __swiftcall AsyncStreamProvider.finish()()
{
  v1 = *v0;
  type metadata accessor for Transaction();
  v2 = *(v1 + 80);
  swift_getTupleTypeMetadata2();
  v3 = sub_1DF632F0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v20 = v0;
  v7 = v0[2];
  v23 = v2;
  sub_1DF6325AC();
  sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);
  v8 = sub_1DF63288C();
  sub_1DF63286C();
  v18[2] = v8;
  v19 = v7;
  sub_1DF5A61A8(sub_1DF5E91D0, v22, v7);
  v18[1] = 0;
  v9 = v24;
  v10 = v24 + 64;
  v11 = 1 << *(v24 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v24 + 64);
  v14 = (v11 + 63) >> 6;
  v21 = v4 + 16;

  v15 = 0;
  while (v13)
  {
    v16 = v15;
LABEL_9:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v4 + 16))(v6, *(v9 + 56) + *(v4 + 72) * (v17 | (v16 << 6)), v3);
    sub_1DF632EFC();
    (*(v4 + 8))(v6, v3);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      sub_1DF5A61A8(sub_1DF5E91EC, v20, v19);

      return;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1DF5E6A3C@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_1DF6325AC();
  type metadata accessor for Transaction();
  swift_getTupleTypeMetadata2();
  sub_1DF632F0C();
  sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);

  v6 = sub_1DF6327DC();

  *a1 = v6;
  *a3 = v5;
  return result;
}

uint64_t AsyncStreamProvider.stream(initialEvents:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1DF6325AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF5E6BE4(v7, a2, a1);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DF5E6BE4(uint64_t a1, char *a2, uint64_t a3)
{
  v70 = a2;
  v62 = a1;
  v5 = *v3;
  v6 = type metadata accessor for Transaction();
  v61 = v3;
  v7 = *(v5 + 80);
  v58 = v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v67 = (&v54 - v9);
  v66 = sub_1DF632EBC();
  v59 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v54 - v10;
  v69 = *(v7 - 8);
  v57 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v54 - v12;
  v13 = sub_1DF632EDC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  v71 = sub_1DF632F0C();
  v60 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v18 = &v54 - v17;
  v19 = sub_1DF6325AC();
  v63 = *(v19 - 8);
  v64 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v54 - v23;
  sub_1DF63259C();
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8650], v13);
  v70 = v18;
  v68 = TupleTypeMetadata2;
  sub_1DF632EAC();
  (*(v14 + 8))(v16, v13);
  if (qword_1ED8E4C10 != -1)
  {
    swift_once();
  }

  v25 = sub_1DF6326AC();
  __swift_project_value_buffer(v25, qword_1ED8E4C18);
  v27 = v63;
  v26 = v64;
  (*(v63 + 16))(v21, v24, v64);
  swift_bridgeObjectRetain_n();
  v28 = sub_1DF63268C();
  v29 = sub_1DF63318C();
  v30 = v24;
  if (os_log_type_enabled(v28, v29))
  {
    v31 = swift_slowAlloc();
    v56 = v29;
    v32 = v31;
    v55 = swift_slowAlloc();
    v73[0] = v55;
    *v32 = 136446466;
    sub_1DF5A9208(&unk_1ED8E4A10, MEMORY[0x1E69695E0]);
    v33 = v28;
    v34 = sub_1DF6338DC();
    v36 = v35;
    (*(v27 + 8))(v21, v26);
    v37 = sub_1DF59EEC8(v34, v36, v73);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2048;
    v38 = sub_1DF632D9C();

    *(v32 + 14) = v38;

    _os_log_impl(&dword_1DF59A000, v33, v56, "%{public}s: initialEvents: %ld", v32, 0x16u);
    v39 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x1E12D9D80](v39, -1, -1);
    MEMORY[0x1E12D9D80](v32, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v27 + 8))(v21, v26);
  }

  if (qword_1ED8E6098 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  v40 = v73[0];
  if (v73[0])
  {
    if (sub_1DF632D9C())
    {
      v58 = v30;
      v41 = 0;
      v42 = (v69 + 16);
      v43 = (v69 + 32);
      v44 = (v59 + 8);
      while (1)
      {
        v45 = sub_1DF632D8C();
        sub_1DF632D5C();
        if (v45)
        {
          (*(v69 + 16))(v72, a3 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v41, v7);
          v46 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          result = sub_1DF6334BC();
          if (v57 != 8)
          {
            __break(1u);
            return result;
          }

          v73[0] = result;
          (*v42)(v72, v73, v7);
          swift_unknownObjectRelease();
          v46 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:

            v51 = v62;
            v27 = v63;
            v26 = v64;
            v52 = v70;
            v30 = v58;
            goto LABEL_23;
          }
        }

        v47 = v67;
        v48 = *(v68 + 48);
        *v67 = v40;
        (*v43)(v47 + v48, v72, v7);

        v49 = v65;
        sub_1DF632EEC();
        (*v44)(v49, v66);
        ++v41;
        if (v46 == sub_1DF632D9C())
        {
          goto LABEL_19;
        }
      }
    }

    v52 = v70;
  }

  else
  {
    swift_allocObject();
    sub_1DF5B2178("AsyncStreamProvider.yield", 25, 2);
    v52 = v70;
    sub_1DF5E81F8(v53, a3, v70, v7);
  }

  v51 = v62;
LABEL_23:
  sub_1DF5E8520(v30, v52);
  (*(v60 + 8))(v52, v71);
  return (*(v27 + 32))(v51, v30, v26);
}

uint64_t AsyncStreamProvider.description.getter()
{
  v1 = *v0;
  WitnessTable = swift_getWitnessTable();
  v3 = CustomStringConvertible.typeDescription.getter(v1, WitnessTable);
  MEMORY[0x1E12D82E0](v3);

  MEMORY[0x1E12D82E0](8250, 0xE200000000000000);
  v4 = CustomStringConvertible<>.addressDescription.getter();
  MEMORY[0x1E12D82E0](v4);

  MEMORY[0x1E12D82E0](15913, 0xE200000000000000);
  return 60;
}

uint64_t AsyncStreamProvider.yield(value:transaction:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    sub_1DF5E75F8(a1, a2);
  }

  else
  {
    if (qword_1ED8E6098 != -1)
    {
      swift_once();
    }

    sub_1DF633C5C();
    v5 = v7;
    if (!v7)
    {
      type metadata accessor for Transaction();
      swift_allocObject();
      sub_1DF5B2178("AsyncStreamProvider.yield", 25, 2);
      v5 = v6;
    }

    sub_1DF5E75F8(a1, v5);
  }
}

uint64_t sub_1DF5E75F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v108 = a1;
  v109 = a2;
  v4 = *v2;
  type metadata accessor for Transaction();
  v5 = *(v4 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v106 = (&v87 - v7);
  v105 = sub_1DF632EBC();
  v120 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v87 - v8;
  v107 = TupleTypeMetadata2;
  v9 = sub_1DF632F0C();
  v92 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v87 - v12;
  v13 = sub_1DF6325AC();
  v91 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v87 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v87 - v18;
  v19 = swift_getTupleTypeMetadata2();
  v113 = sub_1DF63327C();
  v110 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v112 = &v87 - v23;
  v24 = *(v3 + 16);
  v115 = v5;
  v125 = v5;
  sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);
  sub_1DF63288C();
  sub_1DF5A61A8(sub_1DF5E928C, v124, v24);
  v93 = v126;
  v25 = sub_1DF63285C();
  if (qword_1ED8E4C10 != -1)
  {
LABEL_27:
    swift_once();
  }

  v26 = sub_1DF6326AC();
  v27 = __swift_project_value_buffer(v26, qword_1ED8E4C18);

  v101 = v27;
  v28 = sub_1DF63268C();
  v29 = sub_1DF63315C();
  v30 = os_log_type_enabled(v28, v29);
  v31 = &unk_1DF638000;
  v116 = v3;
  v114 = v13;
  v121 = v21;
  if (v30)
  {
    v32 = v25;
    v33 = v9;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v126 = v35;
    *v34 = 136446466;
    v36 = AsyncStreamProvider.description.getter();
    v38 = v37;

    v39 = sub_1DF59EEC8(v36, v38, &v126);

    *(v34 + 4) = v39;
    v31 = &unk_1DF638000;
    *(v34 + 12) = 2048;
    *(v34 + 14) = v32;
    _os_log_impl(&dword_1DF59A000, v28, v29, "%{public}s: Yielding value to %ld clients.", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E12D9D80](v35, -1, -1);
    v40 = v34;
    v21 = v121;
    v9 = v33;
    MEMORY[0x1E12D9D80](v40, -1, -1);
  }

  else
  {
  }

  v25 = 0;
  v42 = v93 + 64;
  v43 = 1 << *(v93 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v3 = v44 & *(v93 + 64);
  v45 = (v43 + 63) >> 6;
  v111 = v19 - 8;
  v119 = (v91 + 16);
  v88 = v92 + 16;
  v118 = (v91 + 32);
  v117 = (v92 + 32);
  v110 += 4;
  v98 = (v91 + 8);
  v97 = v115 - 8;
  v96 = (v120 + 8);
  v95 = (v92 + 8);
  *&v41 = v31[478];
  v87 = v41;
  v120 = v19;
  v100 = v93 + 64;
  v99 = v45;
  v103 = v9;
  while (1)
  {
    if (!v3)
    {
      if (v45 <= v25 + 1)
      {
        v53 = v25 + 1;
      }

      else
      {
        v53 = v45;
      }

      v54 = v53 - 1;
      v13 = v114;
      while (1)
      {
        v52 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v52 >= v45)
        {
          v3 = 0;
          v66 = 1;
          v25 = v54;
          goto LABEL_21;
        }

        v3 = *(v42 + 8 * v52);
        ++v25;
        if (v3)
        {
          v25 = v52;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

    v52 = v25;
    v13 = v114;
LABEL_20:
    v55 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v56 = v55 | (v52 << 6);
    v57 = v93;
    v58 = v91;
    v59 = v89;
    (*(v91 + 16))(v89, *(v93 + 48) + *(v91 + 72) * v56, v13);
    v60 = *(v57 + 56);
    v61 = v92;
    v62 = v90;
    (*(v92 + 16))(v90, v60 + *(v92 + 72) * v56, v9);
    v63 = *(v120 + 48);
    v64 = *(v58 + 32);
    v21 = v121;
    v65 = v59;
    v19 = v120;
    v64(v121, v65, v13);
    (*(v61 + 32))(&v21[v63], v62, v9);
    v66 = 0;
LABEL_21:
    v67 = *(v19 - 8);
    (*(v67 + 56))(v21, v66, 1, v19);
    v68 = v112;
    (*v110)(v112, v21, v113);
    if ((*(v67 + 48))(v68, 1, v19) == 1)
    {
    }

    v69 = *(v19 + 48);
    v70 = v122;
    (*v118)(v122, v68, v13);
    (*v117)(v123, &v68[v69], v9);
    v71 = v102;
    (*v119)(v102, v70, v13);

    v72 = sub_1DF63268C();
    v73 = sub_1DF63315C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v71;
      v75 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v126 = v94;
      *v75 = v87;
      v76 = AsyncStreamProvider.description.getter();
      v78 = v77;

      v79 = sub_1DF59EEC8(v76, v78, &v126);

      *(v75 + 4) = v79;
      *(v75 + 12) = 2082;
      sub_1DF5A9208(&unk_1ED8E4A10, MEMORY[0x1E69695E0]);
      v80 = sub_1DF6338DC();
      v82 = v81;
      v83 = v74;
      v46 = *v98;
      (*v98)(v83, v13);
      v84 = sub_1DF59EEC8(v80, v82, &v126);

      *(v75 + 14) = v84;
      _os_log_impl(&dword_1DF59A000, v72, v73, "%{public}s: Yielding value to %{public}s.", v75, 0x16u);
      v85 = v94;
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v85, -1, -1);
      MEMORY[0x1E12D9D80](v75, -1, -1);
    }

    else
    {

      v46 = *v98;
      (*v98)(v71, v13);
    }

    v47 = *(v107 + 48);
    v48 = v106;
    v49 = v108;
    *v106 = v109;
    (*(*(v115 - 8) + 16))(v48 + v47, v49);

    v50 = v104;
    v9 = v103;
    v51 = v123;
    sub_1DF632EEC();
    (*v96)(v50, v105);
    (*v95)(v51, v9);
    v46(v122, v13);
    v19 = v120;
    v21 = v121;
    v42 = v100;
    v45 = v99;
  }
}

uint64_t AsyncStreamProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DF5E81F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  type metadata accessor for Transaction();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = (&v22 - v7);
  v28 = v9;
  v27 = sub_1DF632EBC();
  v10 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v22 - v11;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v22 = v14;
  v30 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1DF632D9C();
  if (result)
  {
    v16 = 0;
    v24 = (v12 + 32);
    v25 = (v12 + 16);
    v23 = (v10 + 8);
    v17 = v29;
    do
    {
      v18 = sub_1DF632D8C();
      sub_1DF632D5C();
      if (v18)
      {
        result = (*(v12 + 16))(v30, a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v16, a4);
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1DF6334BC();
        if (v22 != 8)
        {
          __break(1u);
          return result;
        }

        v31 = result;
        (*v25)(v30, &v31, a4);
        result = swift_unknownObjectRelease();
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      v20 = *(v28 + 48);
      *v8 = v17;
      (*v24)(v8 + v20, v30, a4);
      sub_1DF632F0C();

      v21 = v26;
      sub_1DF632EEC();
      (*v23)(v21, v27);
      result = sub_1DF632D9C();
      ++v16;
    }

    while (v19 != result);
  }

  return result;
}

uint64_t sub_1DF5E8520(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v38 = *v2;
  v5 = sub_1DF6325AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v39 = v7;
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  if (qword_1ED8E4C10 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF6326AC();
  __swift_project_value_buffer(v11, qword_1ED8E4C18);
  v12 = *(v6 + 16);
  v41 = a1;
  v36 = v12;
  v37 = v6 + 16;
  v12(v10, a1, v5);

  v13 = sub_1DF63268C();
  v14 = sub_1DF63318C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v43[0] = v16;
    *v15 = 136446466;

    v17 = AsyncStreamProvider.description.getter();
    v19 = v18;

    v20 = sub_1DF59EEC8(v17, v19, v43);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    sub_1DF5A9208(&unk_1ED8E4A10, MEMORY[0x1E69695E0]);
    v21 = sub_1DF6338DC();
    v23 = v22;
    (*(v6 + 8))(v10, v5);
    v24 = sub_1DF59EEC8(v21, v23, v43);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_1DF59A000, v13, v14, "%{public}s: Added new client: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v16, -1, -1);
    MEMORY[0x1E12D9D80](v15, -1, -1);
  }

  else
  {

    v25 = (*(v6 + 8))(v10, v5);
  }

  v26 = v3[2];
  MEMORY[0x1EEE9AC00](v25);
  v27 = *(v38 + 80);
  v29 = v41;
  v28 = v42;
  *(&v35 - 4) = v27;
  *(&v35 - 3) = v29;
  *(&v35 - 2) = v28;
  type metadata accessor for Transaction();
  swift_getTupleTypeMetadata2();
  sub_1DF632F0C();
  sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);
  v30 = sub_1DF63288C();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)(sub_1DF5E92AC, (&v35 - 6), v26, v30, MEMORY[0x1E69E7CA8] + 8);
  v31 = v40;
  v36(v40, v29, v5);
  v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  *(v33 + 24) = v3;
  (*(v6 + 32))(v33 + v32, v31, v5);

  return sub_1DF632ECC();
}

uint64_t sub_1DF5E89B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Transaction();
  swift_getTupleTypeMetadata2();
  v6 = sub_1DF632F0C();
  v7 = sub_1DF63327C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1DF6325AC();
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10, v11);
  v14 = *(v6 - 8);
  (*(v14 + 16))(v9, a3, v6);
  (*(v14 + 56))(v9, 0, 1, v6);
  sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);
  sub_1DF63288C();
  return sub_1DF6328AC();
}

void sub_1DF5E8BB4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1DF6325AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8E4C10 != -1)
  {
    swift_once();
  }

  v9 = sub_1DF6326AC();
  __swift_project_value_buffer(v9, qword_1ED8E4C18);
  (*(v6 + 16))(v8, a1, v5);

  v10 = sub_1DF63268C();
  v11 = sub_1DF63318C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136446466;

    v15 = AsyncStreamProvider.description.getter();
    v26 = v4;
    v17 = v16;

    v18 = sub_1DF59EEC8(v15, v17, v28);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    sub_1DF5A9208(&unk_1ED8E4A10, MEMORY[0x1E69695E0]);
    v19 = sub_1DF6338DC();
    v21 = v20;
    (*(v6 + 8))(v8, v5);
    v22 = sub_1DF59EEC8(v19, v21, v28);
    v4 = v26;

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1DF59A000, v10, v11, "%{public}s: Removing terminated client: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v14, -1, -1);
    v23 = v13;
    a1 = v27;
    MEMORY[0x1E12D9D80](v23, -1, -1);
  }

  else
  {

    v24 = (*(v6 + 8))(v8, v5);
  }

  v25 = v2[2];
  MEMORY[0x1EEE9AC00](v24);
  *(&v26 - 2) = *(v4 + 80);
  *(&v26 - 1) = a1;
  type metadata accessor for Transaction();
  swift_getTupleTypeMetadata2();
  sub_1DF632F0C();
  sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);
  sub_1DF63288C();
  sub_1DF5A61A8(sub_1DF5E9330, (&v26 - 4), v25);
}

uint64_t sub_1DF5E8F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Transaction();
  swift_getTupleTypeMetadata2();
  v4 = sub_1DF632F0C();
  v5 = sub_1DF63327C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = sub_1DF6325AC();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8, v9);
  (*(*(v4 - 8) + 56))(v7, 1, 1, v4);
  sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);
  sub_1DF63288C();
  return sub_1DF6328AC();
}

uint64_t sub_1DF5E9150()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E4C40);
  __swift_project_value_buffer(v0, qword_1ED8E4C40);
  return sub_1DF63269C();
}

uint64_t sub_1DF5E934C()
{
  v0 = sub_1DF6325DC();
  __swift_allocate_value_buffer(v0, qword_1ED8E4BD8);
  __swift_project_value_buffer(v0, qword_1ED8E4BD8);
  return sub_1DF6325BC();
}

uint64_t static Locale.en_US_POSIX.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED8E4BD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF6325DC();
  v3 = __swift_project_value_buffer(v2, qword_1ED8E4BD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Locale.acceptLanguageCode.getter()
{
  if (*(sub_1DF6325CC() + 16))
  {
    v0 = objc_opt_self();
    v1 = sub_1DF632D2C();

    v2 = [v0 minimizedLanguagesFromLanguages_];

    sub_1DF632D3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
    sub_1DF5BC754();
    v3 = sub_1DF6328DC();
  }

  else
  {

    return 0x53552D6E65;
  }

  return v3;
}

uint64_t DateIntervalParsingStrategy.Error.hashValue.getter()
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](0);
  return sub_1DF633AAC();
}

uint64_t DateIntervalParsingStrategy.parse(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42CA0, &qword_1DF63A230);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = &v55 - v7;
  v61[0] = 47;
  v61[1] = 0xE100000000000000;
  v60 = v61;

  v9 = sub_1DF5EA7B4(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DF5EABCC, v59, a1, a2, v8);
  v57 = v3;
  v10 = *(v9 + 16);
  if (v10)
  {
    v61[0] = MEMORY[0x1E69E7CC0];
    sub_1DF5DB1D8(0, v10, 0);
    v11 = v61[0];
    v12 = (v9 + 56);
    do
    {
      v14 = *(v12 - 3);
      v13 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = *v12;

      v17 = MEMORY[0x1E12D8260](v14, v13, v15, v16);
      v19 = v18;

      v61[0] = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1DF5DB1D8((v20 > 1), v21 + 1, 1);
        v11 = v61[0];
      }

      *(v11 + 16) = v21 + 1;
      v22 = v11 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v12 += 4;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  if (*(v11 + 16) != 2)
  {
    goto LABEL_12;
  }

  result = sub_1DF632A6C();
  if (*(v11 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v25 = result;
    v26 = v24;

    v27 = sub_1DF632A6C();
    v29 = v28;

    v56 = v25;
    v30 = sub_1DF5EAC78(1, v25, v26);
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v37 = MEMORY[0x1E12D8260](v30, v32, v34, v36);
    v39 = v38;

    v40 = v27;
    v41 = sub_1DF5EAC78(1, v27, v29);
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v48 = MEMORY[0x1E12D8260](v41, v43, v45, v47);
    v50 = v49;

    v51 = sub_1DF5EAD14(v37, v39, v48, v50);
    if (v51 == 3)
    {

LABEL_12:

LABEL_13:
      sub_1DF5EAC24();
      swift_allocError();
      return swift_willThrow();
    }

    v52 = v62;
    sub_1DF5E99EC(v56, v26, v40, v29, v51, v62);

    v53 = sub_1DF6320DC();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v52, 1, v53) == 1)
    {
      sub_1DF59CB50(v52, &qword_1ECE42CA0, &qword_1DF63A230);
      goto LABEL_13;
    }

    return (*(v54 + 32))(v58, v52, v53);
  }

  return result;
}

uint64_t sub_1DF5E99EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v79 = a3;
  v80 = a4;
  v83 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  v20 = sub_1DF63252C();
  v21 = *(v20 - 8);
  v81 = v20;
  v82 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v75 - v28;
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v77 = &v75 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v78 = &v75 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v75 - v37;
  if (!a5)
  {
    v46 = v36;
    v84 = a1;
    v85 = a2;
    sub_1DF5EB884();

    sub_1DF63253C();
    v48 = v81;
    v49 = v82;
    (*(v82 + 56))(v16, 0, 1, v81);
    (*(v49 + 32))(v29, v16, v48);
    v50 = v80;

    sub_1DF5EAEB8(v79, v50);
    if ((v51 & 1) == 0)
    {
      v64 = v78;
      sub_1DF63249C();
      v65 = *(v49 + 16);
      v65(v77, v29, v48);
      v65(v46, v64, v48);
      v62 = v83;
      sub_1DF6320CC();
      v66 = *(v49 + 8);
      v66(v64, v48);
      v66(v29, v48);
      goto LABEL_14;
    }

    (*(v49 + 8))(v29, v48);
LABEL_12:
    v58 = sub_1DF6320DC();
    return (*(*(v58 - 8) + 56))(v83, 1, 1, v58);
  }

  if (a5 != 1)
  {
    v84 = a1;
    v85 = a2;
    sub_1DF5EB884();

    sub_1DF63253C();
    v53 = v81;
    v52 = v82;
    v75 = *(v82 + 56);
    v75(v13, 0, 1, v81);
    v54 = *(v52 + 32);
    v55 = v13;
    v56 = v53;
    v54(v26, v55, v53);
    v84 = v79;
    v85 = v80;

    v57 = v76;
    sub_1DF63253C();
    v75(v57, 0, 1, v56);
    v54(v23, v57, v56);
    sub_1DF5EB8D8();
    v68 = sub_1DF6328FC();
    if ((v68 & 1) == 0)
    {
      v70 = v82;
      v71 = *(v82 + 16);
      v71(v78, v26, v56);
      v71(v77, v23, v56);
      v72 = v83;
      sub_1DF6320CC();
      v73 = *(v70 + 8);
      v73(v23, v56);
      v73(v26, v56);
      v74 = sub_1DF6320DC();
      return (*(*(v74 - 8) + 56))(v72, 0, 1, v74);
    }

    v69 = *(v82 + 8);
    v69(v23, v56);
    v69(v26, v56);
    goto LABEL_12;
  }

  v39 = v36;

  sub_1DF5EAEB8(a1, a2);
  if ((v40 & 1) == 0)
  {
    v84 = v79;
    v85 = v80;
    sub_1DF5EB884();

    sub_1DF63253C();
    v47 = v82;
    v59 = v81;
    (*(v82 + 56))(v19, 0, 1, v81);
    (*(v47 + 32))(v38, v19, v59);
    v60 = v78;
    sub_1DF6324AC();
    v61 = *(v47 + 16);
    v61(v77, v60, v59);
    v61(v39, v38, v59);
    v62 = v83;
    sub_1DF6320CC();
    v63 = *(v47 + 8);
    v63(v60, v59);
    v63(v38, v59);
LABEL_14:
    v67 = sub_1DF6320DC();
    return (*(*(v67 - 8) + 56))(v62, 0, 1, v67);
  }

  v41 = sub_1DF6320DC();
  v42 = *(*(v41 - 8) + 56);
  v43 = v41;
  v44 = v83;

  return v42(v44, 1, 1, v43);
}

uint64_t sub_1DF5EA2D4(uint64_t a1)
{
  v2 = sub_1DF5EAE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5EA310(uint64_t a1)
{
  v2 = sub_1DF5EAE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateIntervalParsingStrategy.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42CB0, &qword_1DF63A238);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF5EAE64();
  sub_1DF633AFC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DF5EA50C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42CB0, &qword_1DF63A238);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF5EAE64();
  sub_1DF633AFC();
  return (*(v3 + 8))(v5, v2);
}

Swift::Double_optional __swiftcall Double.init(string:)(Swift::String string)
{
  v1 = sub_1DF5EAEB8(string._countAndFlagsBits, string._object);
  result.value = v2;
  result.is_nil = v1;
  return result;
}

uint64_t sub_1DF5EA6A8()
{
  sub_1DF6321AC();
  sub_1DF6321CC();
  sub_1DF63216C();
  sub_1DF63218C();
  return sub_1DF6321EC();
}

unint64_t sub_1DF5EA7B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1DF632C0C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1DF5C13A0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1DF5C13A0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1DF632BEC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1DF632AEC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1DF632AEC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1DF632C0C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1DF5C13A0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1DF632C0C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DF5C13A0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1DF5C13A0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1DF632AEC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF5EAB74(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF63394C() & 1;
  }
}

uint64_t sub_1DF5EABCC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF63394C() & 1;
  }
}

unint64_t sub_1DF5EAC24()
{
  result = qword_1ECE42CA8;
  if (!qword_1ECE42CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CA8);
  }

  return result;
}

uint64_t sub_1DF5EAC78(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DF632AFC();

    return sub_1DF632C0C();
  }

  return result;
}

uint64_t sub_1DF5EAD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 == 80 && a2 == 0xE100000000000000;
  v7 = v6;
  if (v6 || (sub_1DF63394C() & 1) != 0)
  {
    if ((a3 != 80 || a4 != 0xE100000000000000) && (sub_1DF63394C() & 1) == 0)
    {

      return 1;
    }

    if (v7)
    {

LABEL_15:

      return 2;
    }
  }

  v8 = sub_1DF63394C();

  if (v8)
  {
    goto LABEL_15;
  }

  if (a3 == 80 && a4 == 0xE100000000000000)
  {

    return 0;
  }

  else
  {
    v10 = sub_1DF63394C();

    result = 0;
    if ((v10 & 1) == 0)
    {
      return 2;
    }
  }

  return result;
}

unint64_t sub_1DF5EAE64()
{
  result = qword_1ECE42CB8;
  if (!qword_1ECE42CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CB8);
  }

  return result;
}

uint64_t sub_1DF5EAEB8(uint64_t a1, uint64_t a2)
{
  v55[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DF63209C();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE42BF8, &qword_1DF639A58);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42CF8, &qword_1DF63A4E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - v11;
  v50 = sub_1DF63221C();
  v13 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DF6325EC();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = sub_1DF63262C();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_1DF63220C();
  sub_1DF63207C();
  v54 = a2;
  v55[0] = 0;
  v53 = a1;
  sub_1DF632BFC();
  v18 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v19 = sub_1DF63295C();

  v20 = [v18 initWithString_];

  sub_1DF63324C();
  if (v21)
  {

    sub_1DF63324C();
    v23 = v22 != 0;
    if (v22)
    {
    }

    while (([v20 isAtEnd] & 1) == 0)
    {
      if (![v20 scanInteger_])
      {
        goto LABEL_56;
      }

      v25 = sub_1DF63325C();
      if (!v26)
      {
        goto LABEL_56;
      }

      v27 = v25;
      v28 = v26;
      if (v25 == 89 && v26 == 0xE100000000000000 || (sub_1DF63394C() & 1) != 0 || v27 == 21593 && v28 == 0xE200000000000000 || (sub_1DF63394C() & 1) != 0)
      {
        sub_1DF6321BC();
      }

      else if (v27 == 77 && v28 == 0xE100000000000000 || ((v39 = sub_1DF63394C(), v27 == 21581) ? (v40 = v28 == 0xE200000000000000) : (v40 = 0), !v40 ? (v41 = 0) : (v41 = 1), (v39 & 1) != 0 || (v41 & 1) != 0 || (sub_1DF63394C() & 1) != 0))
      {
        if (v23)
        {
          sub_1DF6321FC();
        }

        else
        {
          sub_1DF6321DC();
        }
      }

      else if (v27 == 68 && v28 == 0xE100000000000000 || ((v42 = sub_1DF63394C(), v27 == 21572) ? (v43 = v28 == 0xE200000000000000) : (v43 = 0), !v43 ? (v44 = 0) : (v44 = 1), (v42 & 1) != 0 || (v44 & 1) != 0 || (sub_1DF63394C() & 1) != 0))
      {
        sub_1DF63217C();
      }

      else if (v27 == 72 && v28 == 0xE100000000000000 || (sub_1DF63394C() & 1) != 0)
      {
        sub_1DF63219C();
      }

      if ((v28 & 0x2000000000000000) != 0)
      {
        v29 = HIBYTE(v28) & 0xF;
      }

      else
      {
        v29 = v27 & 0xFFFFFFFFFFFFLL;
      }

      v30 = sub_1DF632AFC();
      if (v31)
      {
        v30 = 15;
      }

      if (4 * v29 < v30 >> 14)
      {
        __break(1u);
      }

      v32 = sub_1DF632C0C();
      v34 = v33;
      v36 = v35;
      v38 = v37;

      if (v36 == 84 && v38 == 0xE100000000000000 && !(v32 >> 16) && v34 >> 16 == 1)
      {

        v23 = 1;
      }

      else
      {
        v24 = sub_1DF6338CC();

        v23 |= v24;
      }
    }

    sub_1DF5EA6A8();
    v47 = v46;

    v45 = v47;
  }

  else
  {
LABEL_56:

    v45 = 0;
  }

  (*(v51 + 8))(v6, v52);
  (*(v13 + 8))(v15, v50);
  return v45;
}

unint64_t sub_1DF5EB5F0()
{
  result = qword_1ECE42CC0;
  if (!qword_1ECE42CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CC0);
  }

  return result;
}

unint64_t sub_1DF5EB648()
{
  result = qword_1ECE42CC8;
  if (!qword_1ECE42CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CC8);
  }

  return result;
}

unint64_t sub_1DF5EB6A0()
{
  result = qword_1ECE42CD0;
  if (!qword_1ECE42CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CD0);
  }

  return result;
}

unint64_t sub_1DF5EB6F8()
{
  result = qword_1ECE42CD8;
  if (!qword_1ECE42CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CD8);
  }

  return result;
}

unint64_t sub_1DF5EB750()
{
  result = qword_1ECE42CE0;
  if (!qword_1ECE42CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CE0);
  }

  return result;
}

unint64_t sub_1DF5EB7D8()
{
  result = qword_1ECE42CE8;
  if (!qword_1ECE42CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CE8);
  }

  return result;
}

unint64_t sub_1DF5EB830()
{
  result = qword_1ECE42CF0;
  if (!qword_1ECE42CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CF0);
  }

  return result;
}

unint64_t sub_1DF5EB884()
{
  result = qword_1ECE42D08;
  if (!qword_1ECE42D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42D08);
  }

  return result;
}

unint64_t sub_1DF5EB8D8()
{
  result = qword_1ECE42D10;
  if (!qword_1ECE42D10)
  {
    sub_1DF63252C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42D10);
  }

  return result;
}

uint64_t Duration.formattedDescription.getter(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v2 = sub_1DF633B5C();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DF633B3C();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF633BAC();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DF633BBC();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D18, &qword_1DF63A4E8);
  v17 = sub_1DF633B7C();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DF638990;
  sub_1DF633B6C();
  sub_1DF5EC2B4(v20);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v17);
  swift_deallocClassInstance();
  sub_1DF633B9C();
  sub_1DF633B2C();
  sub_1DF633B4C();
  sub_1DF63200C();

  (*(v29 + 8))(v4, v30);
  (*(v27 + 8))(v7, v28);
  (*(v25 + 8))(v10, v26);
  if (qword_1ED8E4BD0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DF6325DC();
  __swift_project_value_buffer(v21, qword_1ED8E4BD8);
  sub_1DF633B8C();
  v22 = v32;
  v23 = *(v31 + 8);
  v23(v13, v32);
  sub_1DF5EC7C8(&qword_1ED8E4B78, MEMORY[0x1E696A218], MEMORY[0x1E696A210]);
  sub_1DF633BCC();
  v23(v16, v22);
  return v35;
}

uint64_t static Duration.description<A>(_:_:units:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v5 = sub_1DF633B5C();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF633B3C();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DF633BAC();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DF633BBC();
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  sub_1DF6335EC();
  v32 = v41;
  v33 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D18, &qword_1DF63A4E8);
  v20 = sub_1DF633B7C();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DF638990;
  (*(v21 + 16))(v23 + v22, v29, v20);
  sub_1DF5EC2B4(v23);
  swift_setDeallocating();
  (*(v21 + 8))(v23 + v22, v20);
  swift_deallocClassInstance();
  sub_1DF633B9C();
  sub_1DF633B2C();
  sub_1DF633B4C();
  sub_1DF63200C();

  (*(v36 + 8))(v7, v37);
  (*(v34 + 8))(v10, v35);
  (*(v30 + 8))(v13, v31);
  if (qword_1ED8E4BD0 != -1)
  {
    swift_once();
  }

  v24 = sub_1DF6325DC();
  __swift_project_value_buffer(v24, qword_1ED8E4BD8);
  sub_1DF633B8C();
  v25 = v39;
  v26 = *(v38 + 8);
  v26(v16, v39);
  sub_1DF5EC7C8(&qword_1ED8E4B78, MEMORY[0x1E696A218], MEMORY[0x1E696A210]);
  sub_1DF633BCC();
  v26(v19, v25);
  return v40;
}

uint64_t Duration.nanoseconds.getter()
{
  result = _ss8DurationV10FindMyBaseE7secondss5Int64Vvg_0();
  v2 = 1000000000 * result;
  if ((result * 1000000000) >> 64 != (1000000000 * result) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = v2 + v1 / 1000000000;
  if (__OFADD__(v2, v1 / 1000000000))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF5EC2B4(uint64_t a1)
{
  v2 = sub_1DF633B7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D28, &qword_1DF63A500);
    v9 = sub_1DF63342C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1DF5EC7C8(&unk_1ED8E4B80, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
      v16 = sub_1DF6328BC();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1DF5EC7C8(&qword_1ECE42D30, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1D0]);
          v23 = sub_1DF63292C();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1DF5EC5D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D20, &qword_1DF63A4F8);
    v3 = sub_1DF63342C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1DF63298C();
      sub_1DF633A6C();
      v27 = v7;
      sub_1DF632ACC();
      v8 = sub_1DF633AAC();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1DF63298C();
        v18 = v17;
        if (v16 == sub_1DF63298C() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1DF63394C();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1DF5EC7C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF5EC810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v3 = sub_1DF633B5C();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DF633B3C();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DF633BAC();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DF633BBC();
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  sub_1DF6335AC();
  sub_1DF5F22D0(&qword_1ECE422D8, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1DF6335EC();
  v28 = v39;
  v29 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D18, &qword_1DF63A4E8);
  v18 = sub_1DF633B7C();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DF638990;
  (*(v19 + 16))(v21 + v20, v27, v18);
  sub_1DF5EC2B4(v21);
  swift_setDeallocating();
  (*(v19 + 8))(v21 + v20, v18);
  swift_deallocClassInstance();
  sub_1DF633B9C();
  sub_1DF633B2C();
  sub_1DF633B4C();
  sub_1DF63200C();

  (*(v34 + 8))(v5, v35);
  (*(v32 + 8))(v8, v33);
  (*(v30 + 8))(v11, v31);
  if (qword_1ED8E4BD0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DF6325DC();
  __swift_project_value_buffer(v22, qword_1ED8E4BD8);
  sub_1DF633B8C();
  v23 = v37;
  v24 = *(v36 + 8);
  v24(v14, v37);
  sub_1DF5F22D0(&qword_1ED8E4B78, MEMORY[0x1E696A218], MEMORY[0x1E696A210]);
  sub_1DF633BCC();
  v24(v17, v23);
  return v38;
}

uint64_t sub_1DF5ECCFC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_lastCheckpointName);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1DF5ECD68()
{
  v1 = (v0 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_lastCheckpointName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t TimeTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1DF6335BC();
  v1 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  *(v0 + v1) = sub_1DF5C8F38(MEMORY[0x1E69E7CC0]);
  v2 = (v0 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_lastCheckpointName);
  *v2 = 0;
  v2[1] = 0;
  return v0;
}

uint64_t TimeTracker.init()()
{
  swift_defaultActor_initialize();
  sub_1DF6335BC();
  v1 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  *(v0 + v1) = sub_1DF5C8F38(MEMORY[0x1E69E7CC0]);
  v2 = (v0 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_lastCheckpointName);
  *v2 = 0;
  v2[1] = 0;
  return v0;
}

uint64_t sub_1DF5ECE90(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11[-v6];
  v8 = (v2 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_lastCheckpointName);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;

  sub_1DF63356C();
  v9 = sub_1DF6335AC();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  swift_beginAccess();
  sub_1DF5C5A04(v7, a1, a2);
  return swift_endAccess();
}

uint64_t sub_1DF5ECFE8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_1DF59F184(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v17 = sub_1DF6335AC();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v16 = 0;
    goto LABEL_6;
  }

  v12 = v10;
  v13 = *(v9 + 56);
  v14 = sub_1DF6335AC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v7, v13 + *(v15 + 72) * v12, v14);

  v16 = 1;
  (*(v15 + 56))(v7, 0, 1, v14);
LABEL_6:
  sub_1DF59CB50(v7, &qword_1ECE42A20, &qword_1DF638C58);
  return v16;
}

uint64_t sub_1DF5ED1D0(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v64 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D40, &qword_1DF63A508);
  MEMORY[0x1EEE9AC00](v74);
  v73 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A28, &qword_1DF638C60);
  v8 = *(v7 - 8);
  v75 = v7;
  v76 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = (&v62 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  v15 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v16 = *(v2 + v15);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v82 = MEMORY[0x1E69E7CC0];

    sub_1DF5DB1F8(0, v17, 0);
    v18 = v82;
    v19 = v16 + 64;
    v20 = sub_1DF6333DC();
    v21 = 0;
    v22 = *(v16 + 36);
    v66 = v16 + 72;
    v67 = v17;
    v70 = v16 + 64;
    v71 = v14;
    v68 = v22;
    v69 = v16;
    while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v16 + 32))
    {
      if ((*(v19 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
      {
        goto LABEL_37;
      }

      if (v22 != *(v16 + 36))
      {
        goto LABEL_38;
      }

      v78 = 1 << v20;
      v79 = v20 >> 6;
      v77 = v21;
      v24 = v74;
      v25 = *(v74 + 48);
      v26 = *(v16 + 56);
      v27 = (*(v16 + 48) + 16 * v20);
      v29 = *v27;
      v28 = v27[1];
      v30 = v20;
      v31 = sub_1DF6335AC();
      v32 = *(v31 - 8);
      v33 = *(v32 + 72);
      v80 = v18;
      v81 = v30;
      v34 = v26 + v33 * v30;
      v35 = *(v32 + 16);
      v36 = v72;
      v35(&v72[v25], v34, v31);
      v37 = v73;
      *v73 = v29;
      *(v37 + 8) = v28;
      v38 = *(v24 + 48);
      v39 = &v36[v25];
      v18 = v80;
      (*(v32 + 32))(v37 + v38, v39, v31);
      v40 = v71;
      v35(v71 + *(v75 + 48), v37 + v38, v31);
      *v40 = v29;
      v40[1] = v28;
      swift_bridgeObjectRetain_n();
      sub_1DF59CB50(v37, &qword_1ECE42D40, &qword_1DF63A508);
      v82 = v18;
      v3 = *(v18 + 16);
      v41 = *(v18 + 24);
      if (v3 >= v41 >> 1)
      {
        sub_1DF5DB1F8((v41 > 1), v3 + 1, 1);
        v18 = v82;
      }

      *(v18 + 16) = v3 + 1;
      sub_1DF5F2268(v40, v18 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v3, &qword_1ECE42A28, &qword_1DF638C60);
      v16 = v69;
      v19 = v70;
      v23 = 1 << *(v69 + 32);
      if (v81 >= v23)
      {
        goto LABEL_39;
      }

      v42 = *(v70 + 8 * v79);
      if ((v42 & v78) == 0)
      {
        goto LABEL_40;
      }

      LODWORD(v22) = v68;
      if (v68 != *(v69 + 36))
      {
        goto LABEL_41;
      }

      v43 = v42 & (-2 << (v81 & 0x3F));
      if (v43)
      {
        v23 = __clz(__rbit64(v43)) | v81 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v3 = v79 << 6;
        v44 = v79 + 1;
        v45 = (v66 + 8 * v79);
        while (v44 < (v23 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v3 += 64;
          ++v44;
          if (v47)
          {
            sub_1DF5DC9EC(v81, v68, 0);
            v23 = __clz(__rbit64(v46)) + v3;
            goto LABEL_4;
          }
        }

        sub_1DF5DC9EC(v81, v68, 0);
      }

LABEL_4:
      v21 = v77 + 1;
      v20 = v23;
      if (v77 + 1 == v67)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
LABEL_21:
    v82 = v18;

    sub_1DF5EFFF4(&v82, &qword_1ECE42A28, &qword_1DF638C60, sub_1DF5F1F3C);

    v48 = v82;
    v49 = *(v82 + 16);
    if (!v49)
    {
LABEL_35:

      return 0;
    }

    v50 = 0;
    v3 = &qword_1DF638C60;
    while (v50 < *(v48 + 16))
    {
      v51 = v48 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
      v52 = *(v76 + 72);
      v53 = v63;
      sub_1DF59CC98(v51 + v52 * v50, v63, &qword_1ECE42A28, &qword_1DF638C60);
      if (*v53 == v64 && v53[1] == v65)
      {
        sub_1DF59CB50(v53, &qword_1ECE42A28, &qword_1DF638C60);
LABEL_32:
        if (!v50)
        {
          goto LABEL_35;
        }

        if (v50 <= *(v48 + 16))
        {
          v57 = v62;
          sub_1DF59CC98(v51 + v52 * (v50 - 1), v62, &qword_1ECE42A28, &qword_1DF638C60);

          v58 = *v57;
          v59 = *(v75 + 48);
          v60 = sub_1DF6335AC();
          (*(*(v60 - 8) + 8))(&v57[v59], v60);
          return v58;
        }

        goto LABEL_43;
      }

      v55 = v53;
      v56 = sub_1DF63394C();
      sub_1DF59CB50(v55, &qword_1ECE42A28, &qword_1DF638C60);
      if (v56)
      {
        goto LABEL_32;
      }

      if (v49 == ++v50)
      {
        goto LABEL_35;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1DF5ED878(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DF633B7C();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DF6335AC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v20 = *(v3 + v19);
  if (*(v20 + 16))
  {

    v21 = sub_1DF59F184(a1, a2);
    if (v22)
    {
      (*(v10 + 16))(v15, *(v20 + 56) + *(v10 + 72) * v21, v9);

      (*(v10 + 32))(v18, v15, v9);
      sub_1DF63356C();
      sub_1DF633B6C();
      v23 = sub_1DF5EC810(v18, v12, v8);
      (*(v27 + 8))(v8, v28);
      v24 = *(v10 + 8);
      v24(v12, v9);
      v24(v18, v9);
      return v23;
    }
  }

  return 7104878;
}

uint64_t sub_1DF5EDB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = a3;
  v40 = a4;
  v8 = sub_1DF6335AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v20 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v21 = *(v4 + v20);
  if (*(v21 + 16))
  {

    v22 = sub_1DF59F184(a1, a2);
    if (v23)
    {
      v24 = *(v21 + 56);
      v35 = v9[9];
      v36 = v9[2];
      v37 = v13;
      v36(v16, v24 + v35 * v22, v8);

      v25 = v9[4];
      v25(v19, v16, v8);
      v26 = *(v5 + v20);
      if (*(v26 + 16))
      {

        v27 = sub_1DF59F184(v39, v40);
        if (v28)
        {
          v29 = v38;
          v36(v38, *(v26 + 56) + v27 * v35, v8);

          v30 = v37;
          v25(v37, v29, v8);
          v31 = sub_1DF63359C();
          v32 = v9[1];
          v32(v30, v8);
          v32(v19, v8);
          return v31;
        }
      }

      (v9[1])(v19, v8);
    }

    else
    {
    }
  }

  return sub_1DF633C0C();
}

uint64_t sub_1DF5EDDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a3;
  v46 = a4;
  v8 = sub_1DF633B7C();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DF6335AC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v23 = *(v4 + v22);
  if (*(v23 + 16))
  {

    v24 = sub_1DF59F184(a1, a2);
    if (v25)
    {
      v26 = *(v23 + 56) + v11[9] * v24;
      v27 = v11[2];
      v39 = v11[9];
      v40 = v27;
      v27(v18, v26, v10);

      v28 = v18;
      v29 = v11[4];
      v29(v21, v28, v10);
      v30 = *(v5 + v22);
      if (*(v30 + 16))
      {

        v31 = sub_1DF59F184(v45, v46);
        if (v32)
        {
          v40(v13, *(v30 + 56) + v31 * v39, v10);

          v33 = v41;
          v29(v41, v13, v10);
          v34 = v42;
          sub_1DF633B6C();
          v35 = sub_1DF5EC810(v21, v33, v34);
          (*(v43 + 8))(v34, v44);
          v36 = v11[1];
          v36(v33, v10);
          v36(v21, v10);
          return v35;
        }
      }

      (v11[1])(v21, v10);
    }

    else
    {
    }
  }

  return 7104878;
}

void *sub_1DF5EE120()
{
  v98 = sub_1DF633B7C();
  v94 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v94 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1DF6335AC();
  v2 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v96 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v94 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v94 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v94 - v9;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D40, &qword_1DF63A508);
  MEMORY[0x1EEE9AC00](v115);
  v114 = (&v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v94 - v12;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A28, &qword_1DF638C60);
  v13 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v102 = (&v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v94 - v16);
  v18 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v104 = v0;
  v103 = v18;
  v19 = *(v0 + v18);
  v20 = *(v19 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  v117 = v2;
  if (!v20)
  {
LABEL_21:
    v124 = v21;

    sub_1DF5EFFF4(&v124, &qword_1ECE42A28, &qword_1DF638C60, sub_1DF5F1F3C);

    v52 = v124;
    v53 = *(v124 + 16);
    if (!v53)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v54 = *(v116 + 48);
    v55 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v56 = v102;
    sub_1DF59CC98(v124 + v55, v102, &qword_1ECE42A28, &qword_1DF638C60);
    v58 = *v56;
    v57 = v56[1];
    v59 = v2[1];
    v119 = v54;
    v120 = v59;
    v121 = (v2 + 1);
    v59(v56 + v54, v123);
    v60 = v53 - 1;
    v111 = v52;
    if (v53 == 1)
    {
      v61 = MEMORY[0x1E69E7CC0];
LABEL_24:

      return v61;
    }

    v63 = *(v13 + 72);
    v115 = (v2 + 4);
    v116 = (v2 + 2);
    v112 = v94 + 8;
    v118 = v63;
    v64 = v52 + v63 + v55;
    v61 = MEMORY[0x1E69E7CC0];
    v65 = v57;
    v66 = v102;
    while (1)
    {
      sub_1DF59CC98(v64, v66, &qword_1ECE42A28, &qword_1DF638C60);
      v67 = v66[1];
      v122 = *v66;
      v68 = *(v104 + v103);
      if (!*(v68 + 16))
      {
        goto LABEL_36;
      }

      v69 = sub_1DF59F184(v58, v65);
      if ((v70 & 1) == 0)
      {
        break;
      }

      v71 = *(v68 + 56);
      v72 = v2;
      v113 = v2[9];
      v73 = v2[2];
      v74 = v99;
      v75 = v123;
      v114 = v73;
      v73(v99, v71 + v113 * v69, v123);

      v76 = v72[4];
      v76(v101, v74, v75);
      v77 = *(v104 + v103);
      if (!*(v77 + 16))
      {
        goto LABEL_35;
      }

      v78 = sub_1DF59F184(v122, v67);
      if ((v79 & 1) == 0)
      {

LABEL_35:
        (v120)(v101, v123);
LABEL_36:
        v87 = 0xE300000000000000;
        v85 = 7104878;
        goto LABEL_37;
      }

      v80 = v96;
      v81 = v123;
      v114(v96, *(v77 + 56) + v78 * v113, v123);

      v82 = v95;
      v76(v95, v80, v81);
      v83 = v97;
      sub_1DF633B6C();
      v84 = v82;
      v85 = sub_1DF5EC810(v101, v82, v83);
      v87 = v86;
      (*v112)(v83, v98);
      v88 = v84;
      v89 = v120;
      (v120)(v88, v123);
      v89(v101, v123);
LABEL_37:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_1DF5C15B0(0, v61[2] + 1, 1, v61);
      }

      v91 = v61[2];
      v90 = v61[3];
      if (v91 >= v90 >> 1)
      {
        v61 = sub_1DF5C15B0((v90 > 1), v91 + 1, 1, v61);
      }

      v61[2] = v91 + 1;
      v92 = &v61[6 * v91];
      v92[4] = v58;
      v92[5] = v65;
      v58 = v122;
      v93 = v123;
      v92[6] = v122;
      v92[7] = v67;
      v92[8] = v85;
      v92[9] = v87;
      v66 = v102;
      (v120)(v102 + v119, v93);
      v2 = v117;
      v64 += v118;
      v65 = v67;
      if (!--v60)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_36;
  }

  v124 = MEMORY[0x1E69E7CC0];

  sub_1DF5DB1F8(0, v20, 0);
  v21 = v124;
  v22 = v19 + 64;
  v23 = sub_1DF6333DC();
  v24 = v2;
  v25 = 0;
  v26 = *(v19 + 36);
  v111 = (v24 + 2);
  v109 = v24 + 4;
  v100 = v19 + 72;
  v112 = v13;
  v105 = v20;
  v107 = v19 + 64;
  v106 = v26;
  v110 = v17;
  v108 = v19;
  while ((v23 & 0x8000000000000000) == 0 && v23 < 1 << *(v19 + 32))
  {
    if ((*(v22 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
    {
      goto LABEL_44;
    }

    if (v26 != *(v19 + 36))
    {
      goto LABEL_45;
    }

    v119 = 1 << v23;
    v120 = v23 >> 6;
    v118 = v25;
    v28 = v115;
    v29 = *(v115 + 48);
    v30 = *(v19 + 56);
    v31 = (*(v19 + 48) + 16 * v23);
    v32 = *v31;
    v33 = v31[1];
    v34 = v117;
    v35 = v30 + v117[9] * v23;
    v36 = v117[2];
    v37 = v113;
    v121 = v23;
    v122 = v21;
    v38 = v123;
    v36(&v113[v29], v35, v123);
    v39 = v114;
    *v114 = v32;
    *(v39 + 8) = v33;
    v40 = *(v28 + 48);
    v41 = v34[4];
    v17 = v110;
    v41(v39 + v40, &v37[v29], v38);
    v42 = v38;
    v21 = v122;
    v36(v17 + *(v116 + 48), v39 + v40, v42);
    *v17 = v32;
    v17[1] = v33;
    swift_bridgeObjectRetain_n();
    sub_1DF59CB50(v39, &qword_1ECE42D40, &qword_1DF63A508);
    v124 = v21;
    v44 = *(v21 + 16);
    v43 = *(v21 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_1DF5DB1F8((v43 > 1), v44 + 1, 1);
      v21 = v124;
    }

    *(v21 + 16) = v44 + 1;
    v13 = v112;
    sub_1DF5F2268(v17, v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v112 + 72) * v44, &qword_1ECE42A28, &qword_1DF638C60);
    v19 = v108;
    v27 = 1 << *(v108 + 32);
    if (v121 >= v27)
    {
      goto LABEL_46;
    }

    v22 = v107;
    v45 = *(v107 + 8 * v120);
    if ((v45 & v119) == 0)
    {
      goto LABEL_47;
    }

    LODWORD(v26) = v106;
    if (v106 != *(v108 + 36))
    {
      goto LABEL_48;
    }

    v46 = v45 & (-2 << (v121 & 0x3F));
    if (v46)
    {
      v27 = __clz(__rbit64(v46)) | v121 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v47 = v120 << 6;
      v48 = v120 + 1;
      v49 = (v100 + 8 * v120);
      while (v48 < (v27 + 63) >> 6)
      {
        v51 = *v49++;
        v50 = v51;
        v47 += 64;
        ++v48;
        if (v51)
        {
          sub_1DF5DC9EC(v121, v106, 0);
          v27 = __clz(__rbit64(v50)) + v47;
          goto LABEL_4;
        }
      }

      sub_1DF5DC9EC(v121, v106, 0);
    }

LABEL_4:
    v25 = v118 + 1;
    v23 = v27;
    if (v118 + 1 == v105)
    {

      v2 = v117;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1DF5EEB6C(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v67 = a1;
  v64 = sub_1DF633B7C();
  v86 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A28, &qword_1DF638C60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v80 = (&v61 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D40, &qword_1DF63A508);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v79 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v78 = (&v61 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D48, &qword_1DF63A510);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = *(v5 + 56);
  v70 = (&v61 - v21);
  v76 = v20;
  v77 = v5 + 56;
  v20(v19);
  v22 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v23 = *(v2 + v22);
  v24 = *(v23 + 16);
  v85 = v8;
  if (v24)
  {
    v25 = v5;
    v26 = v7;
    v27 = sub_1DF5EF6B4(v24, 0);
    sub_1DF5F1B10(&v87, (v27 + ((*(v8 + 80) + 32) & ~*(v8 + 80))), v24, v23);
    v28 = v87;
    v83 = v89;
    v84 = v29;
    v81 = v91;
    v82 = v90;
    swift_bridgeObjectRetain_n();
    sub_1DF5DF418(v28);
    if (v84 != v24)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v7 = v26;
    v5 = v25;
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  v81 = v12;
  v87 = v27;
  sub_1DF5EFFF4(&v87, &qword_1ECE42D40, &qword_1DF63A508, sub_1DF5F1F84);

  v30 = v87[2];
  v31 = v70;
  if (v30)
  {
    v75 = v17;
    v74 = *(v7 + 48);
    v73 = *(v4 + 48);
    v32 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v61 = v87;
    v33 = v87 + v32;
    v72 = (v5 + 48);
    v69 = MEMORY[0x1E69E7CC0];
    v62 = (v86 + 8);
    v71 = *(v85 + 72);
    v34 = v81;
    v66 = v4;
    v65 = v7;
    do
    {
      v86 = v30;
      v38 = v78;
      sub_1DF59CC98(v33, v78, &qword_1ECE42D40, &qword_1DF63A508);
      v39 = v38[1];
      v40 = *(v7 + 48);
      v82 = *v38;
      *v34 = v82;
      *(v34 + 1) = v39;
      v41 = sub_1DF6335AC();
      v42 = *(v41 - 8);
      v84 = *(v42 + 32);
      v85 = v41;
      v83 = v42 + 32;
      v84(&v34[v40], v38 + v74);
      v43 = v75;
      sub_1DF59CC98(v31, v75, &qword_1ECE42D48, &qword_1DF63A510);
      if ((*v72)(v43, 1, v4) == 1)
      {
        sub_1DF59CB50(v31, &qword_1ECE42D48, &qword_1DF63A510);
        sub_1DF59CB50(v43, &qword_1ECE42D48, &qword_1DF63A510);
      }

      else
      {
        v44 = v43;
        v45 = v80;
        sub_1DF5F2268(v44, v80, &qword_1ECE42A28, &qword_1DF638C60);
        v46 = *(v4 + 48);
        sub_1DF63359C();
        if (sub_1DF633BFC())
        {
          v31 = v70;
          sub_1DF59CB50(v70, &qword_1ECE42D48, &qword_1DF63A510);
          v7 = v65;
        }

        else
        {
          v47 = v45[1];
          v87 = *v45;
          v88 = v47;

          MEMORY[0x1E12D82E0](15917, 0xE200000000000000);
          MEMORY[0x1E12D82E0](v82, v39);
          MEMORY[0x1E12D82E0](8250, 0xE200000000000000);
          v48 = v63;
          sub_1DF633B6C();
          v49 = sub_1DF5EC810(v45 + v46, &v34[v40], v48);
          v51 = v50;
          (*v62)(v48, v64);
          MEMORY[0x1E12D82E0](v49, v51);

          v52 = v87;
          v53 = v88;
          v54 = v69;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1DF5C1294(0, *(v54 + 2) + 1, 1, v54);
          }

          v7 = v65;
          v56 = *(v54 + 2);
          v55 = *(v54 + 3);
          v31 = v70;
          if (v56 >= v55 >> 1)
          {
            v54 = sub_1DF5C1294((v55 > 1), v56 + 1, 1, v54);
          }

          sub_1DF59CB50(v31, &qword_1ECE42D48, &qword_1DF63A510);
          *(v54 + 2) = v56 + 1;
          v69 = v54;
          v57 = &v54[16 * v56];
          *(v57 + 4) = v52;
          *(v57 + 5) = v53;
        }

        sub_1DF59CB50(v80, &qword_1ECE42A28, &qword_1DF638C60);
        v4 = v66;
      }

      v34 = v81;
      v35 = v79;
      sub_1DF59CC98(v81, v79, &qword_1ECE42D40, &qword_1DF63A508);
      v36 = v35[1];
      v37 = *(v7 + 48);
      *v31 = *v35;
      v31[1] = v36;
      (v84)(v31 + v73, v35 + v37, v85);
      (v76)(v31, 0, 1, v4);
      sub_1DF59CB50(v34, &qword_1ECE42D40, &qword_1DF63A508);
      v33 += v71;
      v30 = v86 - 1;
    }

    while (v86 != 1);

    v58 = v69;
  }

  else
  {

    v58 = MEMORY[0x1E69E7CC0];
  }

  v87 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5BC754();
  v59 = sub_1DF6328DC();

  sub_1DF59CB50(v31, &qword_1ECE42D48, &qword_1DF63A510);
  return v59;
}

uint64_t sub_1DF5EF418()
{
  v1 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CC8];
}

uint64_t TimeTracker.deinit()
{
  v1 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_clock;
  v2 = sub_1DF6335CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TimeTracker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_clock;
  v2 = sub_1DF6335CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_1DF5EF5A0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42918, &qword_1DF638908);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1DF5EF624(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D78, &qword_1DF63A5B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_1DF5EF6B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D58, &qword_1DF63A598);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D40, &qword_1DF63A508) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DF5EF7BC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D68, &qword_1DF63A5A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B60, &qword_1DF6393E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF5EF904(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D80, &qword_1DF63A5C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DF5EFA10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42980, &qword_1DF638970);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void *sub_1DF5EFB04(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D70, &qword_1DF63A5B0);
  v10 = *(type metadata accessor for ImageOffset(0) - 8);
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
  v15 = *(type metadata accessor for ImageOffset(0) - 8);
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

char *sub_1DF5EFCDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42918, &qword_1DF638908);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1DF5EFE0C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void sub_1DF5EFFF4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a4(v9);
  }

  v10 = *(v9 + 16);
  v11[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v11[1] = v10;
  sub_1DF5F00C8(v11, a2, a3);
  *a1 = v9;
}

void sub_1DF5F00C8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  v7 = sub_1DF6338BC();
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v10 = sub_1DF632D7C();
        *(v10 + 16) = v9;
      }

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      sub_1DF5F0474(v12, v13, a1, v8, a2, a3);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    sub_1DF5F0224(0, v6, 1, a1, a2, a3);
  }
}

void sub_1DF5F0224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - v18;
  v30 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v35 = -v21;
    v36 = v20;
    v23 = a1 - a3;
    v29 = v21;
    v24 = v20 + v21 * a3;
LABEL_5:
    v33 = v22;
    v34 = a3;
    v31 = v24;
    v32 = v23;
    while (1)
    {
      sub_1DF59CC98(v24, v19, a5, a6);
      sub_1DF59CC98(v22, v15, a5, a6);
      v25 = sub_1DF63358C();
      sub_1DF59CB50(v15, a5, a6);
      sub_1DF59CB50(v19, a5, a6);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v22 = v33 + v29;
        v23 = v32 - 1;
        v24 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_1DF5F2268(v24, v37, a5, a6);
      swift_arrayInitWithTakeFrontToBack();
      sub_1DF5F2268(v26, v22, a5, a6);
      v22 += v35;
      v24 += v35;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1DF5F0474(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v113 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v125 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v118 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v127 = &v111 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v129 = &v111 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v111 - v17;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v130 = *v113;
    if (!v130)
    {
      goto LABEL_138;
    }

    v10 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v114;
    if (isUniquelyReferenced_nonNull_native)
    {
      v105 = v10;
LABEL_102:
      v131 = v105;
      v10 = *(v105 + 2);
      if (v10 >= 2)
      {
        do
        {
          v106 = *a3;
          if (!*a3)
          {
            goto LABEL_136;
          }

          v107 = a3;
          v108 = *&v105[16 * v10];
          v109 = v105;
          a3 = *&v105[16 * v10 + 24];
          sub_1DF5F0DAC(v106 + *(v125 + 72) * v108, v106 + *(v125 + 72) * *&v105[16 * v10 + 16], v106 + *(v125 + 72) * a3, v130, a5, a6);
          if (v36)
          {
            break;
          }

          if (a3 < v108)
          {
            goto LABEL_125;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_1DF5F1340(v109);
          }

          if (v10 - 2 >= *(v109 + 2))
          {
            goto LABEL_126;
          }

          v110 = &v109[16 * v10];
          *v110 = v108;
          v110[1] = a3;
          v131 = v109;
          sub_1DF5F12B4(v10 - 1);
          v105 = v131;
          v10 = *(v131 + 2);
          a3 = v107;
        }

        while (v10 > 1);
      }

LABEL_110:

      return;
    }

LABEL_132:
    v105 = sub_1DF5F1340(v10);
    goto LABEL_102;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v112 = a4;
  v130 = v10;
  v115 = a3;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v119 = v20;
    v117 = v21;
    if (v22 >= v18)
    {
      v35 = v22;
      v36 = v114;
    }

    else
    {
      v23 = v21;
      v24 = *a3;
      v25 = *(v125 + 72);
      v26 = *a3 + v25 * v22;
      v27 = v128;
      sub_1DF59CC98(v26, v128, a5, a6);
      v28 = v24 + v25 * v23;
      v29 = v129;
      sub_1DF59CC98(v28, v129, a5, a6);
      LODWORD(v124) = sub_1DF63358C();
      sub_1DF59CB50(v29, a5, a6);
      sub_1DF59CB50(v27, a5, a6);
      v30 = v117 + 2;
      v126 = v25;
      v31 = v24 + v25 * (v117 + 2);
      while (v18 != v30)
      {
        v32 = v128;
        sub_1DF59CC98(v31, v128, a5, a6);
        v33 = v129;
        sub_1DF59CC98(v26, v129, a5, a6);
        v34 = sub_1DF63358C() & 1;
        sub_1DF59CB50(v33, a5, a6);
        sub_1DF59CB50(v32, a5, a6);
        ++v30;
        v31 += v126;
        v26 += v126;
        if ((v124 & 1) != v34)
        {
          v35 = v30 - 1;
          goto LABEL_12;
        }
      }

      v35 = v18;
LABEL_12:
      a4 = v112;
      v10 = v130;
      v36 = v114;
      a3 = v115;
      v21 = v117;
      if (v124)
      {
        if (v35 < v117)
        {
          goto LABEL_129;
        }

        if (v117 < v35)
        {
          v37 = v126 * (v35 - 1);
          v38 = v35;
          v39 = v35 * v126;
          v124 = v35;
          v40 = v117;
          v41 = v117 * v126;
          do
          {
            if (v40 != --v38)
            {
              v42 = *v115;
              if (!*v115)
              {
                goto LABEL_135;
              }

              sub_1DF5F2268(v42 + v41, v118, a5, a6);
              if (v41 < v37 || v42 + v41 >= v42 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1DF5F2268(v118, v42 + v37, a5, a6);
            }

            ++v40;
            v37 -= v126;
            v39 -= v126;
            v41 += v126;
          }

          while (v40 < v38);
          v36 = v114;
          a3 = v115;
          a4 = v112;
          v10 = v130;
          v21 = v117;
          v35 = v124;
        }
      }
    }

    v43 = *(a3 + 8);
    if (v35 >= v43)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v35, v21))
    {
      goto LABEL_128;
    }

    if (v35 - v21 >= a4)
    {
LABEL_35:
      v45 = v35;
      goto LABEL_36;
    }

    if (__OFADD__(v21, a4))
    {
      goto LABEL_130;
    }

    if (v21 + a4 >= v43)
    {
      v44 = *(a3 + 8);
    }

    else
    {
      v44 = v21 + a4;
    }

    if (v44 < v21)
    {
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (v35 == v44)
    {
      goto LABEL_35;
    }

    v114 = v36;
    v93 = *(v125 + 72);
    v94 = *a3 + v93 * (v35 - 1);
    v95 = -v93;
    v96 = v117 - v35;
    v126 = *a3;
    v116 = v93;
    v97 = v126 + v35 * v93;
    v120 = v44;
LABEL_90:
    v123 = v94;
    v124 = v35;
    v121 = v97;
    v122 = v96;
    v98 = v94;
LABEL_91:
    v99 = v128;
    sub_1DF59CC98(v97, v128, a5, a6);
    v100 = v129;
    sub_1DF59CC98(v98, v129, a5, a6);
    v101 = sub_1DF63358C();
    sub_1DF59CB50(v100, a5, a6);
    sub_1DF59CB50(v99, a5, a6);
    if (v101)
    {
      break;
    }

    v10 = v130;
LABEL_89:
    v35 = v124 + 1;
    v94 = v123 + v116;
    v96 = v122 - 1;
    v97 = v121 + v116;
    v45 = v120;
    if (v124 + 1 != v120)
    {
      goto LABEL_90;
    }

    v36 = v114;
    a3 = v115;
LABEL_36:
    if (v45 < v117)
    {
      goto LABEL_127;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v119;
    }

    else
    {
      v20 = sub_1DF5C14AC(0, *(v119 + 2) + 1, 1, v119);
    }

    v47 = *(v20 + 2);
    v46 = *(v20 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v20 = sub_1DF5C14AC((v46 > 1), v47 + 1, 1, v20);
    }

    *(v20 + 2) = v48;
    v49 = &v20[16 * v47];
    *(v49 + 4) = v117;
    *(v49 + 5) = v45;
    v126 = *v113;
    if (!v126)
    {
      goto LABEL_137;
    }

    v120 = v45;
    if (v47)
    {
      v10 = v130;
      while (1)
      {
        v50 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v51 = *(v20 + 4);
          v52 = *(v20 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_57:
          if (v54)
          {
            goto LABEL_116;
          }

          v67 = &v20[16 * v48];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_119;
          }

          v73 = &v20[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_123;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v48 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v77 = &v20[16 * v48];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_71:
        if (v72)
        {
          goto LABEL_118;
        }

        v80 = &v20[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_121;
        }

        if (v83 < v71)
        {
          goto LABEL_4;
        }

LABEL_78:
        v10 = v50 - 1;
        if (v50 - 1 >= v48)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
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
          goto LABEL_131;
        }

        v88 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v89 = a3;
        v90 = v20;
        v91 = *&v20[16 * v10 + 32];
        a3 = *&v20[16 * v50 + 40];
        sub_1DF5F0DAC(v88 + *(v125 + 72) * v91, v88 + *(v125 + 72) * *&v20[16 * v50 + 32], v88 + *(v125 + 72) * a3, v126, a5, a6);
        if (v36)
        {
          goto LABEL_110;
        }

        if (a3 < v91)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_1DF5F1340(v90);
        }

        if (v10 >= *(v90 + 2))
        {
          goto LABEL_113;
        }

        v92 = &v90[16 * v10];
        *(v92 + 4) = v91;
        *(v92 + 5) = a3;
        v131 = v90;
        sub_1DF5F12B4(v50);
        v20 = v131;
        v48 = *(v131 + 2);
        v10 = v130;
        a3 = v89;
        if (v48 <= 1)
        {
          goto LABEL_4;
        }
      }

      v55 = &v20[16 * v48 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_114;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_115;
      }

      v62 = &v20[16 * v48];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_117;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_120;
      }

      if (v66 >= v58)
      {
        v84 = &v20[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_124;
        }

        if (v53 < v87)
        {
          v50 = v48 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

    v10 = v130;
LABEL_4:
    v114 = v36;
    v18 = *(a3 + 8);
    v19 = v120;
    a4 = v112;
    if (v120 >= v18)
    {
      goto LABEL_99;
    }
  }

  if (v126)
  {
    v102 = v127;
    sub_1DF5F2268(v97, v127, a5, a6);
    v10 = v130;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DF5F2268(v102, v98, a5, a6);
    v98 += v95;
    v97 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

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
}

void sub_1DF5F0DAC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v47 = a3;
  v45 = a6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v37 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v50 = a1;
  v49 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v40 = a1;
      v41 = a4;
      v39 = v25;
      do
      {
        v37 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v42 = v27;
        while (1)
        {
          v29 = v47;
          if (v27 <= a1)
          {
            v50 = v27;
            v48 = v37;
            goto LABEL_59;
          }

          v38 = v24;
          v47 += v25;
          v30 = v26 + v25;
          v31 = v43;
          v32 = v45;
          sub_1DF59CC98(v26 + v25, v43, a5, v45);
          v33 = v28;
          v34 = v28;
          v35 = v44;
          sub_1DF59CC98(v34, v44, a5, v32);
          v36 = sub_1DF63358C();
          sub_1DF59CB50(v35, a5, v32);
          sub_1DF59CB50(v31, a5, v32);
          if (v36)
          {
            break;
          }

          v24 = v30;
          if (v29 < v26 || v47 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v33;
            v25 = v39;
          }

          else
          {
            v28 = v33;
            v25 = v39;
            if (v29 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v30;
          a1 = v40;
          v27 = v42;
          if (v30 <= v41)
          {
            a2 = v42;
            goto LABEL_58;
          }
        }

        if (v29 < v42 || v47 >= v42)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          v25 = v39;
        }

        else
        {
          a2 = v33;
          v24 = v38;
          v25 = v39;
          if (v29 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v40;
      }

      while (v26 > v41);
    }

LABEL_58:
    v50 = a2;
    v48 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v17;
    v48 = a4 + v17;
    if (v17 >= 1 && a2 < v47)
    {
      v20 = v43;
      do
      {
        v21 = v45;
        sub_1DF59CC98(a2, v20, a5, v45);
        v22 = v44;
        sub_1DF59CC98(a4, v44, a5, v21);
        v23 = sub_1DF63358C();
        sub_1DF59CB50(v22, a5, v21);
        sub_1DF59CB50(v20, a5, v21);
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v50 = a1;
      }

      while (a4 < v42 && a2 < v47);
    }
  }

LABEL_59:
  sub_1DF5F1354(&v50, &v49, &v48, a5, v45);
}

uint64_t sub_1DF5F12B4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DF5F1340(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1DF5F1354(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1DF5F143C(void (*a1)(char *, uint64_t, uint64_t), char *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v17 = sub_1DF6322FC();
  v39 = *(v17 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v38 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || !a3)
  {
    goto LABEL_21;
  }

  if (a3 < 0)
  {
    __break(1u);
    return;
  }

  v33 = v10;
  v20 = (v39 + 32);
  v21 = (v39 + 48);
  v22 = 1;
  v36 = a3;
  v37 = (v39 + 56);
  v34 = (v39 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v31 = a1;
  v32 = (v39 + 48);
  while (a4)
  {
    v23 = a4;
    v40 = MEMORY[0x1E12D9570]();
    if ([v23 nextObject])
    {
      v35 = a4;
      v24 = v13;
      sub_1DF63339C();
      swift_unknownObjectRelease();
      sub_1DF5A27C4(v41, v42);
      sub_1DF5A27C4(v42, v41);
      v25 = v33;
      if (swift_dynamicCast())
      {
        v26 = *v37;
        (*v37)(v25, 0, 1, v17);
        v27 = v25;
        v13 = v24;
        (*v20)(v24, v27, v17);
        (v26)(v24, 0, 1, v17);
        v21 = v32;
        a4 = v35;
        goto LABEL_12;
      }

      v28 = *v37;
      (*v37)(v25, 1, 1, v17);
      sub_1DF59CB50(v25, &qword_1ECE42D50, &qword_1DF63AAE0);
      v13 = v24;
      (v28)(v24, 1, 1, v17);
    }

    else
    {

      (*v37)(v13, 1, 1, v17);
    }

    a4 = 0;
LABEL_12:
    objc_autoreleasePoolPop(v40);

    sub_1DF5F2268(v13, v16, &qword_1ECE42D50, &qword_1DF63AAE0);
    if ((*v21)(v16, 1, v17) == 1)
    {
      goto LABEL_19;
    }

    a1 = *v20;
    v29 = v38;
    (*v20)(v38, v16, v17);
    a1(a2, v29, v17);
    if (v36 == v22)
    {
      goto LABEL_20;
    }

    a2 += *(v39 + 72);
    if (__OFADD__(v22++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  (*v37)(v16, 1, 1, v17, v18);
LABEL_19:
  sub_1DF59CB50(v16, &qword_1ECE42D50, &qword_1DF63AAE0);
LABEL_20:
  a1 = v31;
LABEL_21:
  *a1 = a4;
}

uint64_t sub_1DF5F1844(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (v8)
    {
      v9 = a4 >> 32;
    }

    else
    {
      v9 = BYTE6(a5);
    }

    if (a2)
    {
      goto LABEL_6;
    }

LABEL_43:
    v10 = 0;
    goto LABEL_45;
  }

LABEL_38:
  if (v8 == 2)
  {
    v9 = *(a4 + 24);
    if (!a2)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_43;
    }
  }

LABEL_6:
  if (!a3)
  {
    v10 = 0;
    goto LABEL_45;
  }

  if (a3 < 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  v20 = a3;
  v21 = a1;
  v10 = 0;
  v11 = a3 - 1;
  while (1)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v12 = *(a4 + 16);
LABEL_14:
        if (v9 == v12)
        {
          goto LABEL_46;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v12 = a4;
      if (v8)
      {
        goto LABEL_14;
      }
    }

    if (!v9)
    {
LABEL_46:
      a1 = v21;
      goto LABEL_45;
    }

LABEL_17:
    if (__OFSUB__(v9--, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v8 > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_55;
      }

      if (v9 < *(a4 + 16))
      {
        goto LABEL_49;
      }

      if (v9 >= *(a4 + 24))
      {
        goto LABEL_51;
      }

      v15 = sub_1DF63211C();
      if (!v15)
      {
        goto LABEL_57;
      }

      v16 = v15;
      a1 = sub_1DF63214C();
      v17 = v9 - a1;
      if (__OFSUB__(v9, a1))
      {
        goto LABEL_53;
      }

      goto LABEL_33;
    }

    if (v8)
    {
      if (v9 < a4 || v9 >= a4 >> 32)
      {
        goto LABEL_50;
      }

      v18 = sub_1DF63211C();
      if (!v18)
      {
        goto LABEL_56;
      }

      v16 = v18;
      a1 = sub_1DF63214C();
      v17 = v9 - a1;
      if (__OFSUB__(v9, a1))
      {
        goto LABEL_52;
      }

LABEL_33:
      v14 = *(v16 + v17);
      goto LABEL_34;
    }

    if (v9 >= BYTE6(a5))
    {
      goto LABEL_48;
    }

    v22 = a4;
    v23 = a5;
    v24 = BYTE2(a5);
    v25 = BYTE3(a5);
    v26 = BYTE4(a5);
    v27 = BYTE5(a5);
    v14 = *(&v22 + v9);
LABEL_34:
    *(a2 + v10) = v14;
    if (v11 == v10)
    {
      break;
    }

    if (__OFADD__(++v10, 1))
    {
      __break(1u);
      goto LABEL_38;
    }
  }

  v10 = v20;
  a1 = v21;
LABEL_45:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v9;
  return v10;
}

void sub_1DF5F1B10(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D40, &qword_1DF63A508);
  v41 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v38 - v10;
  v11 = a4 + 64;
  v12 = -1 << *(a4 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 64);
  v45 = a2;
  if (!a2)
  {
LABEL_18:
    v21 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v11;
    a1[2] = ~v12;
    a1[3] = v21;
    a1[4] = v14;
    return;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v38 = v12;
    v39 = a1;
    v15 = 0;
    v16 = (63 - v12) >> 6;
    v17 = 1;
    v40 = a3;
    while (v14)
    {
LABEL_14:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v15;
      v22 = v20 | (v15 << 6);
      v23 = *(a4 + 56);
      v24 = a4;
      v25 = (*(a4 + 48) + 16 * v22);
      v26 = *v25;
      v27 = v25[1];
      v28 = sub_1DF6335AC();
      v29 = *(v28 - 8);
      v30 = v23 + *(v29 + 72) * v22;
      v31 = v43;
      (*(v29 + 16))(&v43[*(v44 + 48)], v30, v28);
      *v31 = v26;
      v31[1] = v27;
      v32 = v31;
      v33 = v42;
      sub_1DF5F2268(v32, v42, &qword_1ECE42D40, &qword_1DF63A508);
      v34 = v33;
      v35 = v45;
      sub_1DF5F2268(v34, v45, &qword_1ECE42D40, &qword_1DF63A508);
      if (v17 == v40)
      {

        a1 = v39;
        a4 = v24;
        goto LABEL_23;
      }

      a1 = (v35 + *(v41 + 72));
      v45 = a1;

      v36 = __OFADD__(v17++, 1);
      a4 = v24;
      v15 = v21;
      if (v36)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v18 = v15;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v19 >= v16)
      {
        break;
      }

      v14 = *(v11 + 8 * v19);
      ++v18;
      if (v14)
      {
        v15 = v19;
        goto LABEL_14;
      }
    }

    v14 = 0;
    if (v16 <= v15 + 1)
    {
      v37 = v15 + 1;
    }

    else
    {
      v37 = v16;
    }

    v21 = v37 - 1;
    a1 = v39;
LABEL_23:
    v12 = v38;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1DF5F1DE4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TimeTracker(uint64_t a1)
{
  result = qword_1ECE42520;
  if (!qword_1ECE42520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF5F2020(uint64_t a1)
{
  result = sub_1DF6335CC();
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

uint64_t sub_1DF5F2268(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DF5F22D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t KeyedThrottle.__allocating_init(throttleInterval:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  KeyedThrottle.init(throttleInterval:)(a1, a2);
  return v4;
}

uint64_t KeyedThrottle.throttle(key:block:)(uint64_t a1, uint64_t (*a2)(uint64_t), char *a3)
{
  v65 = a3;
  v66 = a2;
  v5 = *v3;
  v6 = sub_1DF6335CC();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D88, &qword_1DF63A5C8);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - v10;
  v12 = sub_1DF6335AC();
  v73 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v60 - v21;
  v23 = *(v3 + qword_1ED8E4B38);
  v63 = a1;
  v74 = a1;
  v75 = v3;
  v24 = *(v5 + 80);
  v67 = v3;
  v61 = *(v5 + 88);
  v62 = v24;
  sub_1DF63288C();
  v25 = *(*v23 + *MEMORY[0x1E69E6B68] + 16);
  v26 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v23 + v26));
  sub_1DF5F34F0((v23 + v25), v11);
  os_unfair_lock_unlock((v23 + v26));
  LODWORD(v26) = *v11;
  v27 = *(v9 + 72);
  v28 = &v11[*(v9 + 56)];
  v71 = v22;
  sub_1DF5F350C(v28, v22);
  v29 = v73;
  v30 = *(v73 + 32);
  v72 = v19;
  v30(v19, &v11[v27], v12);
  if (v26 == 1)
  {
    v31 = v70;
    sub_1DF6335BC();
    v32 = sub_1DF63356C();
    v33 = v66(v32);
    v34 = v64;
    sub_1DF63356C();
    v65 = v16;
    sub_1DF63359C();
    v66 = v35;
    v64 = *(v29 + 8);
    v36 = (v64)(v34, v12);
    v37 = v12;
    if ((v33 & 1) == 0)
    {
      v60 = v12;
      MEMORY[0x1EEE9AC00](v36);
      v38 = v61;
      *(&v60 - 6) = v62;
      *(&v60 - 5) = v38;
      v39 = v71;
      v40 = v72;
      *(&v60 - 4) = v63;
      *(&v60 - 3) = v40;
      *(&v60 - 2) = v39;
      v41 = *(*v23 + *MEMORY[0x1E69E6B68] + 16);
      v42 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v23 + v42));
      sub_1DF5F3F90((v23 + v41));
      os_unfair_lock_unlock((v23 + v42));
      v37 = v60;
    }

    if (sub_1DF633BFC())
    {
      if (qword_1ED8E5958 != -1)
      {
        swift_once();
      }

      v43 = sub_1DF6326AC();
      __swift_project_value_buffer(v43, qword_1ED8E69A0);
      swift_retain_n();
      v44 = sub_1DF63268C();
      v45 = sub_1DF63316C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v76[0] = v63;
        *v46 = 136446466;
        v47 = sub_1DF633BEC();
        v49 = sub_1DF59EEC8(v47, v48, v76);

        *(v46 + 4) = v49;
        *(v46 + 12) = 2082;

        v50 = sub_1DF633BEC();
        v52 = v51;

        v53 = sub_1DF59EEC8(v50, v52, v76);

        *(v46 + 14) = v53;
        _os_log_impl(&dword_1DF59A000, v44, v45, "KeyedThrottle: Running time of block (%{public}s) was longer than throttleInterval (%{public}s)", v46, 0x16u);
        v54 = v63;
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v54, -1, -1);
        MEMORY[0x1E12D9D80](v46, -1, -1);

        (v64)(v65, v37);
        (*(v68 + 8))(v70, v69);
LABEL_16:
        v29 = v73;
        goto LABEL_17;
      }
    }

    (v64)(v65, v37);
    (*(v68 + 8))(v31, v69);
    goto LABEL_16;
  }

  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v55 = sub_1DF6326AC();
  __swift_project_value_buffer(v55, qword_1ED8E69A0);
  v56 = sub_1DF63268C();
  v57 = sub_1DF63318C();
  v37 = v12;
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_1DF59A000, v56, v57, "KeyedThrottle: Not dispatching, event is throttled", v58, 2u);
    MEMORY[0x1E12D9D80](v58, -1, -1);
  }

LABEL_17:
  (*(v29 + 8))(v72, v37);
  return sub_1DF59CB50(v71, &qword_1ECE42A20, &qword_1DF638C58);
}

uint64_t *KeyedThrottle.init(throttleInterval:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DF6335BC();
  v6 = qword_1ED8E4B38;
  v7 = *(v5 + 80);
  v8 = sub_1DF6335AC();
  swift_getTupleTypeMetadata2();
  v9 = sub_1DF632D6C();
  v10 = sub_1DF5F4198(v9, v7, v8, *(v5 + 88));

  v15 = v10;
  v11 = sub_1DF63288C();
  v12 = sub_1DF5A610C(&v15, v11);

  *(v2 + v6) = v12;
  v13 = (v2 + qword_1ED8E4B40);
  *v13 = a1;
  v13[1] = a2;
  return v2;
}

uint64_t KeyedThrottle.__allocating_init(throttleInterval:)(double a1)
{
  v2 = swift_allocObject();
  KeyedThrottle.init(throttleInterval:)(v2, a1);
  return v2;
}

uint64_t *KeyedThrottle.init(throttleInterval:)(uint64_t a1, double a2)
{
  v3 = *v2;
  sub_1DF6335BC();
  v4 = qword_1ED8E4B38;
  v5 = *(v3 + 80);
  v6 = sub_1DF6335AC();
  swift_getTupleTypeMetadata2();
  v7 = sub_1DF632D6C();
  v8 = sub_1DF5F4198(v7, v5, v6, *(v3 + 88));

  v15 = v8;
  v9 = sub_1DF63288C();
  v10 = sub_1DF5A610C(&v15, v9);

  *(v2 + v4) = v10;
  v11 = sub_1DF633C1C();
  v12 = (v2 + qword_1ED8E4B40);
  *v12 = v11;
  v12[1] = v13;
  return v2;
}

uint64_t sub_1DF5F2D50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v40 = a4;
  v42 = a5;
  v8 = sub_1DF6335AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v38[0] = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v38 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v38 - v21;
  v38[1] = a1;
  v39 = a3;
  v23 = *a1;
  v24 = *(v23 + 16);
  v41 = a2;
  if (v24 && (v25 = sub_1DF59F184(a2, a3), (v26 & 1) != 0))
  {
    (*(v9 + 16))(v22, *(v23 + 56) + *(v9 + 72) * v25, v8);
    v27 = *(v9 + 56);
    v27(v22, 0, 1, v8);
  }

  else
  {
    v27 = *(v9 + 56);
    v27(v22, 1, 1, v8);
  }

  sub_1DF63356C();
  sub_1DF5F45A4(v22, v19);
  if ((*(v9 + 48))(v19, 1, v8) == 1)
  {
    sub_1DF59CB50(v19, &qword_1ECE42A20, &qword_1DF638C58);
    v28 = v41;
  }

  else
  {
    v29 = v38[0];
    (*(v9 + 32))(v38[0], v19, v8);
    sub_1DF63359C();
    v30 = sub_1DF633BFC();
    (*(v9 + 8))(v29, v8);
    v28 = v41;
    if ((v30 & 1) == 0)
    {
      v31 = 0;
      goto LABEL_10;
    }
  }

  (*(v9 + 16))(v16, v13, v8);
  v31 = 1;
  v27(v16, 0, 1, v8);
  v32 = v39;

  sub_1DF5C5A04(v16, v28, v32);
LABEL_10:
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D88, &qword_1DF63A5C8);
  v34 = *(v33 + 48);
  v35 = *(v33 + 64);
  v36 = v42;
  *v42 = v31;
  sub_1DF5F350C(v22, &v36[v34]);
  return (*(v9 + 32))(&v36[v35], v13, v8);
}

uint64_t sub_1DF5F30F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v37 = a2;
  v38 = a4;
  v5 = *a3;
  v6 = *(*a3 + 80);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = v32 - v7;
  v8 = sub_1DF6335AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v32[0] = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v33 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v32 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v32 - v20;
  v36 = a1;
  v22 = v37;
  v32[1] = *(v5 + 88);
  sub_1DF63289C();
  sub_1DF63356C();
  sub_1DF5F45A4(v21, v18);
  if ((*(v9 + 48))(v18, 1, v8) == 1)
  {
    sub_1DF59CB50(v18, &qword_1ECE42A20, &qword_1DF638C58);
  }

  else
  {
    v23 = v32[0];
    (*(v9 + 32))(v32[0], v18, v8);
    sub_1DF63359C();
    v24 = sub_1DF633BFC();
    (*(v9 + 8))(v23, v8);
    if ((v24 & 1) == 0)
    {
      v26 = 0;
      goto LABEL_6;
    }
  }

  (*(v34 + 16))(v35, v22, v6);
  v25 = v33;
  (*(v9 + 16))(v33, v13, v8);
  v26 = 1;
  (*(v9 + 56))(v25, 0, 1, v8);
  sub_1DF63288C();
  sub_1DF6328AC();
LABEL_6:
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D88, &qword_1DF63A5C8);
  v28 = *(v27 + 48);
  v29 = *(v27 + 64);
  v30 = v38;
  *v38 = v26;
  sub_1DF5F350C(v21, &v30[v28]);
  return (*(v9 + 32))(&v30[v29], v13, v8);
}

uint64_t sub_1DF5F350C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF5F357C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a3;
  v44 = a6;
  v39 = a4;
  v36 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DF6335AC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D98, &qword_1DF63A610);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v35 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v42 = &v33 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v33 - v25;
  v40 = a5;
  v41 = a1;
  v37 = a2;
  sub_1DF63289C();
  (*(v11 + 16))(v23, v43, v10);
  (*(v11 + 56))(v23, 0, 1, v10);
  v27 = *(v14 + 56);
  sub_1DF5F45A4(v26, v16);
  sub_1DF5F45A4(v23, &v16[v27]);
  v28 = *(v11 + 48);
  if (v28(v16, 1, v10) != 1)
  {
    v29 = v42;
    sub_1DF5F45A4(v16, v42);
    if (v28(&v16[v27], 1, v10) != 1)
    {
      v31 = v34;
      (*(v11 + 32))(v34, &v16[v27], v10);
      sub_1DF5F4614();
      LODWORD(v43) = sub_1DF63292C();
      v32 = *(v11 + 8);
      v32(v31, v10);
      sub_1DF59CB50(v23, &qword_1ECE42A20, &qword_1DF638C58);
      sub_1DF59CB50(v26, &qword_1ECE42A20, &qword_1DF638C58);
      v32(v29, v10);
      result = sub_1DF59CB50(v16, &qword_1ECE42A20, &qword_1DF638C58);
      if ((v43 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_1DF59CB50(v23, &qword_1ECE42A20, &qword_1DF638C58);
    sub_1DF59CB50(v26, &qword_1ECE42A20, &qword_1DF638C58);
    (*(v11 + 8))(v29, v10);
    return sub_1DF59CB50(v16, &qword_1ECE42D98, &qword_1DF63A610);
  }

  sub_1DF59CB50(v23, &qword_1ECE42A20, &qword_1DF638C58);
  sub_1DF59CB50(v26, &qword_1ECE42A20, &qword_1DF638C58);
  if (v28(&v16[v27], 1, v10) != 1)
  {
    return sub_1DF59CB50(v16, &qword_1ECE42D98, &qword_1DF63A610);
  }

  sub_1DF59CB50(v16, &qword_1ECE42A20, &qword_1DF638C58);
LABEL_8:
  (*(v36 + 16))(v38, v37, v40);
  sub_1DF5F45A4(v39, v35);
  sub_1DF63288C();
  return sub_1DF6328AC();
}

Swift::Void __swiftcall KeyedThrottle.clearThrottleForKeysExcept(keys:)(Swift::OpaquePointer keys)
{
  v2 = *(v1 + qword_1ED8E4B38);
  sub_1DF6335AC();
  sub_1DF63288C();
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1DF5F4484((v2 + v3));
  os_unfair_lock_unlock((v2 + v4));
}

uint64_t sub_1DF5F3B78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v35 = &v26 - v10;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v26 - v15;
  v16 = sub_1DF6335AC();
  swift_getTupleTypeMetadata2();
  v17 = sub_1DF632D6C();
  v33 = v16;
  v36 = a4;
  v18 = sub_1DF5F4198(v17, a3, v16, a4);

  v40 = v18;
  if (!sub_1DF632D9C())
  {
LABEL_12:

    *a1 = v18;
    return result;
  }

  v28 = a1;
  v29 = v4;
  v19 = 0;
  v20 = *a1;
  v37 = (v11 + 16);
  v30 = (v11 + 8);
  v31 = v20;
  v32 = a2;
  while (1)
  {
    v21 = sub_1DF632D8C();
    sub_1DF632D5C();
    if (v21)
    {
      v22 = *(v11 + 16);
      v22(v38, (a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19), a3);
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1DF6334BC();
    if (v27 != 8)
    {
      break;
    }

    v39 = result;
    v22 = *v37;
    (*v37)(v38, &v39, a3);
    swift_unknownObjectRelease();
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
LABEL_10:
      __break(1u);
LABEL_11:
      v18 = v40;
      a1 = v28;
      goto LABEL_12;
    }

LABEL_5:
    v24 = v38;
    v22(v34, v38, a3);
    sub_1DF63289C();
    (*v30)(v24, a3);
    a2 = v32;
    sub_1DF63288C();
    sub_1DF6328AC();
    ++v19;
    if (v23 == sub_1DF632D9C())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t KeyedThrottle.deinit()
{
  v1 = qword_1ECE42D90;
  v2 = sub_1DF6335CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t KeyedThrottle.__deallocating_deinit()
{
  KeyedThrottle.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1DF5F3FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF6328BC();

  return sub_1DF5F4010(a1, v6, a2, a3);
}

unint64_t sub_1DF5F4010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1DF63292C();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_1DF5F4198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1DF632D9C())
  {
    sub_1DF63374C();
    v13 = sub_1DF63373C();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1DF632D9C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1DF632D8C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1DF6334BC();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1DF5F3FB4(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1DF5F44A4(uint64_t a1)
{
  result = sub_1DF6335CC();
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

uint64_t dispatch thunk of KeyedThrottle.__allocating_init(throttleInterval:)()
{
  return (*(v0 + 120))();
}

{
  return (*(v0 + 128))();
}

uint64_t sub_1DF5F45A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DF5F4614()
{
  result = qword_1ECE42DA0;
  if (!qword_1ECE42DA0)
  {
    sub_1DF6335AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42DA0);
  }

  return result;
}

__CFNotificationCenter *sub_1DF5F466C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v62 = a4;
  v63 = a5;
  v8 = sub_1DF6335CC();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D88, &qword_1DF63A5C8);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v57 - v12;
  v14 = sub_1DF6335AC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v57 - v24;
  v70[0] = a1;
  v70[1] = a2;
  v26 = *(a3 + qword_1ED8E4B38);
  v67 = v70;
  v68 = a3;
  v64 = a3;
  os_unfair_lock_lock((v26 + 24));
  sub_1DF5F4CCC((v26 + 16), v13);
  v27 = (v26 + 24);
  v28 = v22;
  v29 = v14;
  v30 = v15;
  os_unfair_lock_unlock(v27);
  LODWORD(a3) = *v13;
  v31 = *(v11 + 72);
  v32 = &v13[*(v11 + 56)];
  v66 = v25;
  sub_1DF5F350C(v32, v25);
  (*(v15 + 32))(v28, &v13[v31], v29);
  if (a3 != 1)
  {
    if (qword_1ED8E5958 != -1)
    {
      swift_once();
    }

    v53 = sub_1DF6326AC();
    __swift_project_value_buffer(v53, qword_1ED8E69A0);
    v54 = sub_1DF63268C();
    v55 = sub_1DF63318C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1DF59A000, v54, v55, "KeyedThrottle: Not dispatching, event is throttled", v56, 2u);
      MEMORY[0x1E12D9D80](v56, -1, -1);
    }

    goto LABEL_16;
  }

  v33 = v65;
  sub_1DF6335BC();
  sub_1DF63356C();
  v34 = sub_1DF63295C();
  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (result)
  {
    v36 = result;
    v37 = v19;
    CFNotificationCenterPostNotification(result, v34, 0, 0, 1u);

    v38 = v59;
    sub_1DF63356C();
    sub_1DF63359C();
    v39 = *(v30 + 8);
    v39(v38, v29);
    v63 = *(v64 + qword_1ED8E4B40 + 8);
    if (sub_1DF633BFC())
    {
      v58 = v39;
      v59 = v37;
      if (qword_1ED8E5958 != -1)
      {
        swift_once();
      }

      v40 = sub_1DF6326AC();
      __swift_project_value_buffer(v40, qword_1ED8E69A0);
      swift_retain_n();
      v41 = sub_1DF63268C();
      v42 = sub_1DF63316C();
      v62 = v41;
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v69[0] = v57;
        *v43 = 136446466;
        v44 = sub_1DF633BEC();
        v46 = sub_1DF59EEC8(v44, v45, v69);

        *(v43 + 4) = v46;
        *(v43 + 12) = 2082;

        v47 = sub_1DF633BEC();
        v49 = v48;

        v50 = sub_1DF59EEC8(v47, v49, v69);

        *(v43 + 14) = v50;
        v51 = v62;
        _os_log_impl(&dword_1DF59A000, v62, v42, "KeyedThrottle: Running time of block (%{public}s) was longer than throttleInterval (%{public}s)", v43, 0x16u);
        v52 = v57;
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v52, -1, -1);
        MEMORY[0x1E12D9D80](v43, -1, -1);
      }

      else
      {
      }

      v58(v59, v29);
      (*(v60 + 8))(v65, v61);
    }

    else
    {
      v39(v37, v29);
      (*(v60 + 8))(v33, v61);
    }

LABEL_16:
    (*(v30 + 8))(v28, v29);
    return sub_1DF59CB50(v66, &qword_1ECE42A20, &qword_1DF638C58);
  }

  __break(1u);
  return result;
}

uint64_t DateInterval.init<A>(_:strategy:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a5;
  v34 = a3;
  v31 = a1;
  v32 = a2;
  v35 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42CA0, &qword_1DF63A230);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_1DF63252C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42DA8, &qword_1DF63A618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF638990;
  *(inited + 32) = 5721934;
  *(inited + 40) = 0xE300000000000000;
  sub_1DF63251C();
  if (qword_1ECE42358 != -1)
  {
    swift_once();
  }

  v15 = qword_1ECE42360;
  v16 = sub_1DF63248C();
  v17 = [v15 stringFromDate_];

  v18 = sub_1DF63298C();
  v20 = v19;

  (*(v11 + 8))(v13, v10);
  *(inited + 48) = v18;
  *(inited + 56) = v20;
  v21 = sub_1DF5C9138(inited);
  swift_setDeallocating();
  sub_1DF59CB50(inited + 32, &qword_1ECE42DB0, &unk_1DF63A620);
  MyBaseE5remap_15substitutionMapS2S_SDyS2SGtFZ_0 = _s10Foundation12DateIntervalV10FindMyBaseE5remap_15substitutionMapS2S_SDyS2SGtFZ_0(v31, v32, v21);
  v24 = v23;

  v36 = MyBaseE5remap_15substitutionMapS2S_SDyS2SGtFZ_0;
  v37 = v24;
  v25 = v34;
  sub_1DF6320EC();
  (*(*(a4 - 8) + 8))(v25, a4);

  v26 = sub_1DF6320DC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v28(v9, 0, 1, v26);
  v29 = v35;
  (*(v27 + 32))(v35, v9, v26);
  return (v28)(v29, 0, 1, v26);
}

char *_s10Foundation12DateIntervalV10FindMyBaseE5remap_15substitutionMapS2S_SDyS2SGtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v38[0] = 47;
  v38[1] = 0xE100000000000000;
  v37[2] = v38;

  v7 = sub_1DF5EA7B4(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DF5F53E0, v37, a1, a2, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v38[0] = MEMORY[0x1E69E7CC0];
    sub_1DF5DB1D8(0, v8, 0);
    v9 = v38[0];
    v10 = (v7 + 56);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;

      v15 = MEMORY[0x1E12D8260](v11, v12, v13, v14);
      v17 = v16;

      v38[0] = v9;
      v19 = *(v9 + 2);
      v18 = *(v9 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1DF5DB1D8((v18 > 1), v19 + 1, 1);
        v9 = v38[0];
      }

      *(v9 + 2) = v19 + 1;
      v20 = &v9[16 * v19];
      *(v20 + 4) = v15;
      *(v20 + 5) = v17;
      v10 += 4;
      --v8;
    }

    while (v8);

    if (!*(v9 + 2))
    {
      goto LABEL_15;
    }
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_15;
    }
  }

  v21 = sub_1DF632A6C();
  if (!*(a3 + 16))
  {
LABEL_14:

    goto LABEL_15;
  }

  v23 = sub_1DF59F184(v21, v22);
  v25 = v24;

  if (v25)
  {
    v26 = (*(a3 + 56) + 16 * v23);
    v28 = *v26;
    v27 = v26[1];

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (*(v9 + 2))
      {
LABEL_13:
        *(v9 + 4) = v28;
        *(v9 + 5) = v27;
        goto LABEL_14;
      }
    }

    else
    {
      v9 = sub_1DF5F50E4(v9);
      if (*(v9 + 2))
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    result = sub_1DF5F50E4(v9);
    v9 = result;
    goto LABEL_19;
  }

LABEL_15:
  if (*(v9 + 2) < 2uLL)
  {
    goto LABEL_22;
  }

  v29 = sub_1DF632A6C();
  if (!*(a3 + 16))
  {
LABEL_21:

    goto LABEL_22;
  }

  v31 = sub_1DF59F184(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_22:
    v38[0] = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
    sub_1DF5BC754();
    v36 = sub_1DF6328DC();
    swift_bridgeObjectRelease_n();
    return v36;
  }

  v34 = (*(a3 + 56) + 16 * v31);
  v28 = *v34;
  v27 = v34[1];

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (*(v9 + 2) >= 2uLL)
  {
    *(v9 + 6) = v28;
    *(v9 + 7) = v27;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t BinaryEncodingError.hashValue.getter()
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](0);
  return sub_1DF633AAC();
}

uint64_t RawRepresentable<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v16[-1] - v8;
  v11 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v10 + 8))(v16, v11, v10);
  sub_1DF632CAC();
  v12 = v17;
  v13 = v18;
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  (*(v13 + 16))(v9, AssociatedTypeWitness, v15, v12, v13);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t RawRepresentable<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DF632A1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 8))(v17, v9, v10);
  sub_1DF632CAC();
  v11 = v16[1];
  v12 = v16[2];
  sub_1DF6329EC();
  v13 = v18;
  v14 = v19;
  __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  (*(v14 + 8))(v11, v12, v8, v13, v14);
  (*(v6 + 8))(v8, v5);

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_1DF5F57F8()
{
  result = qword_1ECE42DB8;
  if (!qword_1ECE42DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42DB8);
  }

  return result;
}

uint64_t dispatch thunk of BinaryEncodingContaining.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

{
  return (*(a5 + 32))(a1, a2, a3, a4);
}

uint64_t CodableBox.encode(to:)(void *a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v11[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v11];
  v5 = v11[0];
  if (v4)
  {
    v6 = sub_1DF6323CC();
    v8 = v7;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DF633AEC();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1DF5F5AA8();
    sub_1DF63397C();
    sub_1DF5B33C0(v6, v8);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v10 = v5;
    sub_1DF63228C();

    return swift_willThrow();
  }
}

unint64_t sub_1DF5F5AA8()
{
  result = qword_1ECE42DC0;
  if (!qword_1ECE42DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42DC0);
  }

  return result;
}

uint64_t CodableBox.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF633ACC();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_1DF5F5C78();
    sub_1DF63396C();
    sub_1DF5F5CCC();
    v7 = sub_1DF63319C();
    if (v7)
    {
      v11 = v7;
      sub_1DF5B33C0(v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v14);
      *a3 = v11;
    }

    else
    {
      type metadata accessor for CodableBox.Error(0, a2, v8, v9);
      swift_getWitnessTable();
      swift_allocError();
      swift_willThrow();
      sub_1DF5B33C0(v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DF5F5C78()
{
  result = qword_1ECE42DC8;
  if (!qword_1ECE42DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42DC8);
  }

  return result;
}

unint64_t sub_1DF5F5CCC()
{
  result = qword_1ECE42DD0[0];
  if (!qword_1ECE42DD0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ECE42DD0);
  }

  return result;
}

uint64_t CodableBox.Error.hashValue.getter()
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](0);
  return sub_1DF633AAC();
}

uint64_t sub_1DF5F5DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DF5F5E3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1DF5F5E84(uint64_t result, int a2, int a3)
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

uint64_t UnsafeSendableBox.contents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  v4 = sub_1DF63327C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t UnsafeSendableBox.contents.setter(uint64_t a1)
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  v4 = sub_1DF63327C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t UnsafeSendableBox.__allocating_init()()
{
  v0 = swift_allocObject();
  (*(*(*(*v0 + 80) - 8) + 56))(v0 + *(*v0 + 88), 1, 1);
  return v0;
}

uint64_t UnsafeSendableBox.deinit()
{
  v1 = *(*v0 + 88);
  v2 = sub_1DF63327C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t UnsafeSendableBox.__deallocating_deinit()
{
  v1 = *(*v0 + 88);
  v2 = sub_1DF63327C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF5F62FC(uint64_t a1)
{
  result = sub_1DF63327C();
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

void sub_1DF5F63EC(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), double a5)
{
  v9 = sub_1DF5F80AC(a1, a2, a5);
  v10 = sub_1DF5F7314(v9);

  if (!v5)
  {
    if (qword_1ECE42548 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF6326AC();
    __swift_project_value_buffer(v11, qword_1ECE4BD78);

    v12 = sub_1DF63268C();
    v13 = sub_1DF63318C();

    v22 = a1;
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = v10;
      v16 = swift_slowAlloc();
      v23 = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_1DF59EEC8(a1, a2, &v23);
      *(v14 + 12) = 1024;
      v17 = v15;
      *(v14 + 14) = v15;
      _os_log_impl(&dword_1DF59A000, v12, v13, "Successfully created power assertion %s:%u", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E12D9D80](v16, -1, -1);
      MEMORY[0x1E12D9D80](v14, -1, -1);
    }

    else
    {
      v17 = v10;
    }

    a4();
    sub_1DF5F755C(v17);

    v18 = sub_1DF63268C();
    v19 = sub_1DF63318C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_1DF59EEC8(v22, a2, &v23);
      *(v20 + 12) = 1024;
      *(v20 + 14) = v17;
      _os_log_impl(&dword_1DF59A000, v18, v19, "Successfully released power assertion %s:%u", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12D9D80](v21, -1, -1);
      MEMORY[0x1E12D9D80](v20, -1, -1);
    }
  }
}

uint64_t withPowerAssertion<A>(reason:type:timeout:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1DF5F68E0;

  return sub_1DF5F6A2C(a1, a2, a3, a4, v16, a6, a7, a8);
}

uint64_t sub_1DF5F68E0()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5F6A14, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DF5F6A2C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 48) = a6;
  *(v8 + 40) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5F6A5C, 0, 0);
}

uint64_t sub_1DF5F6A5C()
{
  v15 = v0;
  v1 = sub_1DF5F80AC(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v2 = sub_1DF5F7314(v1);
  *(v0 + 96) = v2;

  if (qword_1ECE42548 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF6326AC();
  *(v0 + 72) = __swift_project_value_buffer(v3, qword_1ECE4BD78);

  v4 = sub_1DF63268C();
  v5 = sub_1DF63318C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1DF59EEC8(v7, v6, &v14);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v2;
    _os_log_impl(&dword_1DF59A000, v4, v5, "Successfully created power assertion %s:%u", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12D9D80](v9, -1, -1);
    MEMORY[0x1E12D9D80](v8, -1, -1);
  }

  v13 = (*(v0 + 48) + **(v0 + 48));
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_1DF5F6CF8;
  v11 = *(v0 + 16);

  return v13(v11);
}

uint64_t sub_1DF5F6CF8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1DF5F70C4;
  }

  else
  {
    v2 = sub_1DF5F6E0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF5F6E0C()
{
  v20 = v0;
  v1 = *(v0 + 88);
  sub_1DF5F755C(*(v0 + 96));
  if (v1)
  {
    (*(*(*(v0 + 64) - 8) + 8))(*(v0 + 16));
    sub_1DF5F755C(*(v0 + 96));

    v10 = sub_1DF63268C();
    v11 = sub_1DF63318C();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 96);
      v15 = *(v0 + 24);
      v14 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_1DF59EEC8(v15, v14, v19);
      *(v16 + 12) = 1024;
      *(v16 + 14) = v13;
      _os_log_impl(&dword_1DF59A000, v10, v11, "Successfully released power assertion %s:%u", v16, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1E12D9D80](v17, -1, -1);
      MEMORY[0x1E12D9D80](v16, -1, -1);
    }

    swift_willThrow();
    v9 = *(v0 + 8);
  }

  else
  {

    v2 = sub_1DF63268C();
    v3 = sub_1DF63318C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 96);
      v6 = *(v0 + 24);
      v5 = *(v0 + 32);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19[0] = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_1DF59EEC8(v6, v5, v19);
      *(v7 + 12) = 1024;
      *(v7 + 14) = v4;
      _os_log_impl(&dword_1DF59A000, v2, v3, "Successfully released power assertion %s:%u", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1E12D9D80](v8, -1, -1);
      MEMORY[0x1E12D9D80](v7, -1, -1);
    }

    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_1DF5F70C4()
{
  v11 = v0;
  sub_1DF5F755C(*(v0 + 96));

  v1 = sub_1DF63268C();
  v2 = sub_1DF63318C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 96);
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF59EEC8(v5, v4, &v10);
    *(v6 + 12) = 1024;
    *(v6 + 14) = v3;
    _os_log_impl(&dword_1DF59A000, v1, v2, "Successfully released power assertion %s:%u", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12D9D80](v7, -1, -1);
    MEMORY[0x1E12D9D80](v6, -1, -1);
  }

  swift_willThrow();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1DF5F724C()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ECE4BD78);
  v1 = __swift_project_value_buffer(v0, qword_1ECE4BD78);
  if (qword_1ECE42550 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ECE4BD90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1DF5F7314(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  AssertionID = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE42FA8, &unk_1DF63A9A0);
  v1 = sub_1DF63282C();
  v2 = IOPMAssertionCreateWithProperties(v1, &AssertionID);

  if (!v2)
  {
    return AssertionID;
  }

  if (qword_1ECE42548 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF6326AC();
  __swift_project_value_buffer(v3, qword_1ECE4BD78);

  v4 = sub_1DF63268C();
  v5 = sub_1DF63316C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315394;
    v8 = sub_1DF63284C();
    v10 = sub_1DF59EEC8(v8, v9, v13);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v2;
    _os_log_impl(&dword_1DF59A000, v4, v5, "IOPMAssertionCreateWithProperties %s failed with error: %d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12D9D80](v7, -1, -1);
    MEMORY[0x1E12D9D80](v6, -1, -1);
  }

  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v2 userInfo:0];
  return swift_willThrow();
}

uint64_t sub_1DF5F755C(IOPMAssertionID a1)
{
  result = IOPMAssertionRelease(a1);
  if (result)
  {
    v2 = result;
    if (qword_1ECE42548 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF6326AC();
    __swift_project_value_buffer(v3, qword_1ECE4BD78);
    v4 = sub_1DF63268C();
    v5 = sub_1DF63316C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v2;
      _os_log_impl(&dword_1DF59A000, v4, v5, "IOPMAssertionRelease failed with error: %d", v6, 8u);
      MEMORY[0x1E12D9D80](v6, -1, -1);
    }

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v2 userInfo:0];
    return swift_willThrow();
  }

  return result;
}

uint64_t PowerAssertion.AssertionType.hashValue.getter()
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](0);
  return sub_1DF633AAC();
}

unint64_t sub_1DF5F770C()
{
  result = qword_1ECE42FA0;
  if (!qword_1ECE42FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42FA0);
  }

  return result;
}

uint64_t sub_1DF5F7780()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ECE4BD90);
  __swift_project_value_buffer(v0, qword_1ECE4BD90);
  return sub_1DF63269C();
}

uint64_t sub_1DF5F7804(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  type metadata accessor for CFString(0);
  v11 = v10;
  v30[3] = v10;
  v30[0] = a1;
  v12 = *a5;
  v14 = sub_1DF59F184(a2, a3);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a4 & 1) != 0)
  {
LABEL_7:
    v20 = *a5;
    if (v18)
    {
LABEL_8:
      v21 = (v20[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v21);
      return sub_1DF5A27C4(v30, v21);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a4 & 1) == 0)
  {
    sub_1DF5DEF6C();
    goto LABEL_7;
  }

  sub_1DF5DE0BC(v17, a4 & 1);
  v23 = sub_1DF59F184(a2, a3);
  if ((v18 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

  v14 = v23;
  v20 = *a5;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v30, v11);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = (v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  sub_1DF5F8008(v14, a2, a3, *v28, v20);

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_1DF5F79F0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, double a5)
{
  *v23 = a5;
  v23[3] = MEMORY[0x1E69E63B0];
  v9 = *a4;
  v11 = sub_1DF59F184(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_1DF5A27C4(v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_1DF5DEF6C();
    goto LABEL_7;
  }

  sub_1DF5DE0BC(v14, a3 & 1);
  v20 = sub_1DF59F184(a1, a2);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v23, MEMORY[0x1E69E63B0]);
  sub_1DF5F7F84(v11, a1, a2, v17, *v22);

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1DF5F7B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x1E69E6158];
  v29[3] = MEMORY[0x1E69E6158];
  v29[0] = a1;
  v29[1] = a2;
  v11 = *a6;
  v13 = sub_1DF59F184(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_1DF5A27C4(v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_1DF5DEF6C();
    goto LABEL_7;
  }

  sub_1DF5DE0BC(v16, a5 & 1);
  v22 = sub_1DF59F184(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v29, v10);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = (v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  sub_1DF5F7F00(v13, a3, a4, *v27, v27[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_1DF5F7D24(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v23[0] = a1;
  v23[3] = MEMORY[0x1E69E6530];
  v9 = *a5;
  v11 = sub_1DF59F184(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_1DF5A27C4(v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_1DF5DEF6C();
    goto LABEL_7;
  }

  sub_1DF5DE0BC(v14, a4 & 1);
  v20 = sub_1DF59F184(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v23, MEMORY[0x1E69E6530]);
  sub_1DF5F7E7C(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1DF5F7E7C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11[0] = a4;
  v11[3] = MEMORY[0x1E69E6530];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DF5A27C4(v11, a5[7] + 32 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}