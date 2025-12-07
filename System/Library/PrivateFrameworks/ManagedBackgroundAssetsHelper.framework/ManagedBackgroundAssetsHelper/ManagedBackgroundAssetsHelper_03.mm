char *sub_1D3029084(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C10, &qword_1D30F32B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D30291A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1D30292A0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1D302947C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CF8, &qword_1D30F3430);
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

unint64_t sub_1D3029588(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D30E93EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1D30E989C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D302974C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D30E93EC() + 1) & ~v5;
    do
    {
      sub_1D30E98AC();

      sub_1D30E90BC();
      v9 = sub_1D30E98EC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D302992C(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    v6 = v5 - 1;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for LicenseManagerError(uint64_t a1)
{
  result = qword_1EC749D08;
  if (!qword_1EC749D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D3029A10()
{
  result = qword_1EC749BD0;
  if (!qword_1EC749BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749BB0, &qword_1D30F3260);
    sub_1D2FF1768(&qword_1EC749BD8, &qword_1EC749BA8, &qword_1D30F3258, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749BD0);
  }

  return result;
}

unint64_t sub_1D3029AC0()
{
  result = qword_1EC749BE0;
  if (!qword_1EC749BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749BA0, &qword_1D30F3250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749BE0);
  }

  return result;
}

char *sub_1D3029B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v33[0] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v33 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v9 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v11 = v33 - v10;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v12 = sub_1D30E8B3C();
  v13 = __swift_project_value_buffer(v12, qword_1EE313888);
  v14 = sub_1D30E928C();
  v33[1] = v13;
  v15 = sub_1D30E8B1C();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39[0] = v17;
    *v16 = 134218242;
    *(v16 + 4) = a1;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, v39);
    _os_log_impl(&dword_1D2FD9000, v15, v14, "With record of license with ID: %llu body: %{public}s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1D38B3760](v17, -1, -1);
    MEMORY[0x1D38B3760](v16, -1, -1);
  }

  v18 = *(a2 + 128);
  v19 = sub_1D30E8E7C();
  v36 = v33;
  MEMORY[0x1EEE9AC00](v19);
  v33[-2] = a1;
  v41 = type metadata accessor for LicenseRecord(0);
  sub_1D30E8ACC();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8EBC();
  v21 = v35;
  v22 = sub_1D30E8E1C();
  (*(v9 + 8))(v11, v34);
  if (v21)
  {

LABEL_7:

    return v11;
  }

  v35 = v18;

  v42 = v22;
  v24 = sub_1D3028020(sub_1D30E701C);
  if (!v24)
  {

    v11 = type metadata accessor for LicenseManagerError(0);
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
    swift_allocError();
    *v28 = a1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_7;
  }

  v25 = v24;
  if (v42 >> 62)
  {
    v29 = sub_1D30E958C();

    if (v29)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v26 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v26)
    {
LABEL_12:
      v11 = type metadata accessor for LicenseManagerError(0);
      sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError, &unk_1D30F34AC);
      swift_allocError();
      *v27 = a1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_7;
    }
  }

  v38 = v25;
  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF7FF8();
  sub_1D30E8F0C();

  v11 = v39[0];
  if ((v40 & 0x3000000000000000) == 0x1000000000000000)
  {
    v30 = sub_1D30E8B1C();
    v31 = sub_1D30E92BC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v33[0];
      _os_log_impl(&dword_1D2FD9000, v30, v31, "Removing the record of the license with the ID “%llu” from the database…", v32, 0xCu);
      MEMORY[0x1D38B3760](v32, -1, -1);
    }

    sub_1D30E8E7C();
    sub_1D30E8E3C();
  }

  else
  {
    sub_1D2FF804C(v39[0], v39[1], v39[2], v39[3], v39[4], v40);
    v11 = 0;
  }

  sub_1D30E8E7C();
  sub_1D30E8E0C();

  return v11;
}

uint64_t sub_1D302A30C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D302A36C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_1D2FF1804(a3, a4);

    sub_1D2FF1804(a5, a6);
  }
}

void sub_1D302A3D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_1D2FF17B0(a3, a4);

    sub_1D2FF17B0(a5, a6);
  }
}

uint64_t sub_1D302A444(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1D3029A10();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D302A4C8()
{
  result = qword_1EC749C48;
  if (!qword_1EC749C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749C28, &qword_1D30F32D0);
    sub_1D302A54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749C48);
  }

  return result;
}

unint64_t sub_1D302A54C()
{
  result = qword_1EC749C50;
  if (!qword_1EC749C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749C20, &qword_1D30F32C8);
    sub_1D2FF8748();
    sub_1D2FF87F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749C50);
  }

  return result;
}

unint64_t sub_1D302A5D8()
{
  result = qword_1EC749218;
  if (!qword_1EC749218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749208, &qword_1D30EEC18);
    sub_1D302B150(&qword_1EC749220, 255, type metadata accessor for LicenseRecord.ElementID, &protocol conformance descriptor for LicenseRecord.ElementID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749218);
  }

  return result;
}

uint64_t sub_1D302A690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D302B664;

  return sub_1D301D7D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D302A758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v28 = a5;
  v29 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C70, &qword_1D30F3368);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1D30E91AC();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1D302B0DC(a3, v13, &qword_1EC749C70, &qword_1D30F3368);
  v18 = sub_1D30E921C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1D2FF14DC(v13, &qword_1EC749C70, &qword_1D30F3368);
  }

  else
  {
    sub_1D30E920C();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    *(v25 + 24) = a7;
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v36[0] = 0;
      v36[1] = 0;
      v26 = v36;
      v36[2] = v14;
      v36[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v23 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v23;
        }

        goto LABEL_12;
      }
    }

    v35[4] = 6;
    v35[5] = v26;
    v35[6] = a4;
    v35[7] = v28;
    goto LABEL_17;
  }

  v20 = sub_1D30E90AC() + 32;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a7;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v35[0] = 0;
    v35[1] = 0;
    v22 = v35;
    v35[2] = v14;
    v35[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v34[0] = 6;
    v34[1] = v22;
    v34[2] = a4;
    v34[3] = v28;
    v22 = v34;
  }

LABEL_11:
  v31 = 7;
  v32 = v22;
  v33 = v20;
  v23 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v23;
}

uint64_t sub_1D302AAD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D302B664;

  return sub_1D3028940(a1, v4);
}

uint64_t sub_1D302AB88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D302AC40;

  return sub_1D3028940(a1, v4);
}

uint64_t sub_1D302AC40()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D302AD40(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C88, &qword_1D30F33A0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D302B664;

  return sub_1D301E0B4(a1, v6, v1 + v5, v7);
}

unint64_t sub_1D302AE74()
{
  result = qword_1EC749C90;
  if (!qword_1EC749C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749C90);
  }

  return result;
}

uint64_t sub_1D302AEC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C80, &qword_1D30F3398);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D302AF74()
{
  result = qword_1EC749CC8;
  if (!qword_1EC749CC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC749CC8);
  }

  return result;
}

unint64_t sub_1D302AFC0()
{
  result = qword_1EC749CD0;
  if (!qword_1EC749CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749CD0);
  }

  return result;
}

unint64_t sub_1D302B014()
{
  result = qword_1EC749CD8;
  if (!qword_1EC749CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749CD8);
  }

  return result;
}

uint64_t sub_1D302B068(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_1D2FF1804(result, a2);
  }

  return result;
}

uint64_t sub_1D302B074(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_1D2FF17B0(result, a2);
  }

  return result;
}

uint64_t sub_1D302B0DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D302B150(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D302B198(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LicenseRecord.ElementID(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140) - 8);
  v9 = (v7 + *(v8 + 80) + 136) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D302AC40;

  return sub_1D301864C(a1, v10, v11, v12, v1 + v6, v1 + v7, v1 + v9);
}

void sub_1D302B314(uint64_t a1)
{
  sub_1D302B478(319, &qword_1EC749D18, sub_1D2FE39EC);
  if (v1 <= 0x3F)
  {
    sub_1D302B418();
    if (v2 <= 0x3F)
    {
      sub_1D302B448();
      if (v3 <= 0x3F)
      {
        sub_1D302B478(319, &qword_1EC749D30, type metadata accessor for AssetPackRecord.StaticRepresentation);
        if (v4 <= 0x3F)
        {
          sub_1D302B4C4();
          if (v5 <= 0x3F)
          {
            type metadata accessor for ManifestDataSource(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D302B418()
{
  result = qword_1EC749D20;
  if (!qword_1EC749D20)
  {
    result = MEMORY[0x1E69E76D8];
    atomic_store(MEMORY[0x1E69E76D8], &qword_1EC749D20);
  }

  return result;
}

uint64_t sub_1D302B448()
{
  result = qword_1EC749D28;
  if (!qword_1EC749D28)
  {
    result = MEMORY[0x1E69E76D8];
    atomic_store(MEMORY[0x1E69E76D8], &qword_1EC749D28);
  }

  return result;
}

void sub_1D302B478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D302B4C4()
{
  if (!qword_1EC749D38)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC749D38);
    }
  }
}

uint64_t sub_1D302B574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D302B5DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D302B670()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D302B6A4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D302B6D8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 50;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t AssetPackHost.description.getter()
{
  v1 = v0;
  v2 = sub_1D30E8A4C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - v7;
  v9 = type metadata accessor for AssetPackHost(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D302BA94(v1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    return 0xD00000000000001FLL;
  }

  v14 = *(v12 + 48);
  v15 = *&v11[*(v12 + 64)];
  v16 = *(v3 + 32);
  v16(v8, v11, v2);
  v16(v6, &v11[v14], v2);
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0xD00000000000001DLL, 0x80000001D30EC2F0);
  sub_1D302D060(&qword_1EC749490, MEMORY[0x1E69695E0]);
  v17 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v17);

  MEMORY[0x1D38B2610](0x6E6F697372657620, 0xED0000203A444920);
  v18 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v18);

  MEMORY[0x1D38B2610](0xD000000000000016, 0x80000001D30EB1C0);
  v22[1] = v15;
  v19 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v19);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  v13 = v23;
  v20 = *(v3 + 8);
  v20(v6, v2);
  v20(v8, v2);
  return v13;
}

uint64_t type metadata accessor for AssetPackHost(uint64_t a1)
{
  result = qword_1EE314690;
  if (!qword_1EE314690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D302BA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPackHost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D302BAFC()
{
  v1 = 0x496E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D302BB54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D302D484(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D302BB7C(uint64_t a1)
{
  v2 = sub_1D302D00C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302BBB8(uint64_t a1)
{
  v2 = sub_1D302D00C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D302BBF4()
{
  if (*v0)
  {
    return 0x7261506472696874;
  }

  else
  {
    return 0x656C707061;
  }
}

uint64_t sub_1D302BC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C707061 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261506472696874 && a2 == 0xEA00000000007974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D302BD10(uint64_t a1)
{
  v2 = sub_1D302CF64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302BD4C(uint64_t a1)
{
  v2 = sub_1D302CF64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D302BD88(uint64_t a1)
{
  v2 = sub_1D302CFB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302BDC4(uint64_t a1)
{
  v2 = sub_1D302CFB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetPackHost.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749D40, &qword_1D30F34F8);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749D48, &qword_1D30F3500);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v30 - v6;
  v7 = sub_1D30E8A4C();
  v36 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v30 - v10;
  v11 = type metadata accessor for AssetPackHost(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749D50, &qword_1D30F3508);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D302CF64();
  sub_1D30E992C();
  sub_1D302BA94(v35, v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
  if ((*(*(v18 - 8) + 48))(v13, 1, v18) == 1)
  {
    v44 = 1;
    sub_1D302CFB8();
    sub_1D30E96DC();
    (*(v31 + 8))(v4, v32);
    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v35 = v15;
    v20 = *(v18 + 48);
    v32 = *&v13[*(v18 + 64)];
    v21 = *(v36 + 32);
    v22 = v30;
    v21(v30, v13, v7);
    v21(v38, &v13[v20], v7);
    v43 = 0;
    sub_1D302D00C();
    sub_1D30E96DC();
    v42 = 0;
    sub_1D302D060(&qword_1EC7494B0, MEMORY[0x1E69695B0]);
    v23 = v34;
    v24 = v37;
    sub_1D30E974C();
    v25 = v36;
    v26 = v22;
    if (v24)
    {
      (*(v33 + 8))(v39, v23);
      v27 = *(v25 + 8);
      v27(v38, v7);
      v27(v22, v7);
      v28 = v35;
    }

    else
    {
      v41 = 1;
      sub_1D30E974C();
      v28 = v35;
      v40 = 2;
      sub_1D30E975C();
      (*(v33 + 8))(v39, v23);
      v29 = *(v25 + 8);
      v29(v38, v7);
      v29(v26, v7);
    }

    return (*(v28 + 8))(v17, v14);
  }
}

uint64_t AssetPackHost.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749D70, &qword_1D30F3510);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749D78, &qword_1D30F3518);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749D80, &unk_1D30F3520);
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for AssetPackHost(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - v15;
  v17 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D302CF64();
  v18 = v52;
  sub_1D30E990C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v52 = v11;
  v20 = v48;
  v19 = v49;
  v43 = v16;
  v44 = v14;
  v21 = v50;
  v22 = v10;
  v23 = sub_1D30E96AC();
  if (*(v23 + 16) != 1)
  {
    v29 = sub_1D30E94EC();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30);
    *v31 = v52;
    sub_1D30E960C();
    sub_1D30E94DC();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v51 + 8))(v10, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v52 = v23;
  if (*(v23 + 32))
  {
    v58 = 1;
    sub_1D302CFB8();
    sub_1D30E95FC();
    v24 = v51;
    v25 = v21;
    (*(v45 + 8))(v19, v46);
    (*(v24 + 8))(v10, v8);
    swift_unknownObjectRelease();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
    v27 = v43;
    (*(*(v26 - 8) + 56))(v43, 1, 1, v26);
  }

  else
  {
    v57 = 0;
    sub_1D302D00C();
    v32 = v7;
    sub_1D30E95FC();
    v33 = v51;
    v25 = v21;
    v46 = v22;
    v49 = v8;
    sub_1D30E8A4C();
    v56 = 0;
    sub_1D302D060(&qword_1EC7494C8, MEMORY[0x1E69695D0]);
    v34 = v20;
    sub_1D30E967C();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
    v35 = *(v45 + 48);
    v55 = 1;
    sub_1D30E967C();
    v36 = v47;
    v42 = v35;
    v37 = v45;
    v54 = 2;
    v38 = sub_1D30E969C();
    v39 = *(v37 + 64);
    (*(v36 + 8))(v32, v34);
    (*(v33 + 8))(v46, v49);
    swift_unknownObjectRelease();
    v40 = v44;
    *&v44[v39] = v38;
    (*(*(v37 - 8) + 56))(v40, 0, 1, v37);
    v41 = v40;
    v27 = v43;
    sub_1D3011828(v41, v43);
  }

  sub_1D3011828(v27, v25);
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

BOOL _s29ManagedBackgroundAssetsHelper13AssetPackHostO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D30E8A4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v40 = &v35 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for AssetPackHost(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749DC8, &qword_1D30F38E8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v35 - v17;
  v19 = &v35 + *(v16 + 56) - v17;
  sub_1D302BA94(a1, &v35 - v17);
  sub_1D302BA94(a2, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
  v21 = *(*(v20 - 8) + 48);
  if (v21(v18, 1, v20) == 1)
  {
    if (v21(v19, 1, v20) == 1)
    {
      sub_1D302D60C(v18);
      return 1;
    }

    goto LABEL_6;
  }

  v38 = v11;
  sub_1D302BA94(v18, v14);
  v23 = *(v20 + 48);
  v24 = *(v20 + 64);
  v37 = *&v14[v24];
  if (v21(v19, 1, v20) == 1)
  {
    v25 = *(v5 + 8);
    v25(&v14[v23], v4);
    v25(v14, v4);
LABEL_6:
    sub_1D302D5A4(v18);
    return 0;
  }

  v36 = *&v19[v24];
  v26 = *(v5 + 32);
  v27 = v38;
  v26(v38, v19, v4);
  v26(v40, &v14[v23], v4);
  v28 = &v19[v23];
  v29 = v39;
  v26(v39, v28, v4);
  v30 = sub_1D30E8A3C();
  v31 = *(v5 + 8);
  v31(v14, v4);
  if (v30)
  {
    v32 = v40;
    v33 = sub_1D30E8A3C();
    v31(v29, v4);
    v31(v32, v4);
    v31(v27, v4);
    if (v33)
    {
      v34 = v37 == v36;
      sub_1D302D60C(v18);
      return v34;
    }
  }

  else
  {
    v31(v29, v4);
    v31(v40, v4);
    v31(v27, v4);
  }

  sub_1D302D60C(v18);
  return 0;
}

unint64_t sub_1D302CF64()
{
  result = qword_1EC749D58;
  if (!qword_1EC749D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749D58);
  }

  return result;
}

unint64_t sub_1D302CFB8()
{
  result = qword_1EC749D60;
  if (!qword_1EC749D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749D60);
  }

  return result;
}

unint64_t sub_1D302D00C()
{
  result = qword_1EC749D68;
  if (!qword_1EC749D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749D68);
  }

  return result;
}

uint64_t sub_1D302D060(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D30E8A4C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D302D0CC(uint64_t a1)
{
  sub_1D302D124(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1D302D124(uint64_t a1)
{
  if (!qword_1EE315258)
  {
    sub_1D30E8A4C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE315258);
    }
  }
}

unint64_t sub_1D302D1C8()
{
  result = qword_1EC749D88;
  if (!qword_1EC749D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749D88);
  }

  return result;
}

unint64_t sub_1D302D220()
{
  result = qword_1EC749D90;
  if (!qword_1EC749D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749D90);
  }

  return result;
}

unint64_t sub_1D302D278()
{
  result = qword_1EC749D98;
  if (!qword_1EC749D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749D98);
  }

  return result;
}

unint64_t sub_1D302D2D0()
{
  result = qword_1EC749DA0;
  if (!qword_1EC749DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749DA0);
  }

  return result;
}

unint64_t sub_1D302D328()
{
  result = qword_1EC749DA8;
  if (!qword_1EC749DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749DA8);
  }

  return result;
}

unint64_t sub_1D302D380()
{
  result = qword_1EC749DB0;
  if (!qword_1EC749DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749DB0);
  }

  return result;
}

unint64_t sub_1D302D3D8()
{
  result = qword_1EC749DB8;
  if (!qword_1EC749DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749DB8);
  }

  return result;
}

unint64_t sub_1D302D430()
{
  result = qword_1EC749DC0;
  if (!qword_1EC749DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749DC0);
  }

  return result;
}

uint64_t sub_1D302D484(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EB250 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D302D5A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749DC8, &qword_1D30F38E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D302D60C(uint64_t a1)
{
  v2 = type metadata accessor for AssetPackHost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FilePath.ResolutionError.description.getter()
{
  type metadata accessor for FilePath.ResolutionError(0);
  sub_1D302DAF8(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);

  return sub_1D30E984C();
}

uint64_t type metadata accessor for FilePath.ResolutionError(uint64_t a1)
{
  result = qword_1EC749DD0;
  if (!qword_1EC749DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FilePath.ResolutionError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1D30E8D9C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = type metadata accessor for FilePath.ResolutionError(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D302DA94(v1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = v11[1];
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1D30E948C();

    v21 = 0x1000000000000011;
    v22 = 0x80000001D30EC330;
    MEMORY[0x1D38B2610](v12, v13);

    MEMORY[0x1D38B2610](0x69207369209D80E2, 0xAF2E64696C61766ELL);
    return v21;
  }

  else
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749930, &qword_1D30F38F0) + 48);
    v16 = *(v3 + 32);
    v16(v8, v11, v2);
    v16(v6, (v11 + v15), v2);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0x1000000000000014, 0x80000001D30EC350);
    sub_1D302DAF8(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v17 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v17);

    MEMORY[0x1D38B2610](0x100000000000001DLL, 0x80000001D30EC370);
    v18 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v18);

    MEMORY[0x1D38B2610](782074082, 0xA400000000000000);
    v14 = v21;
    v19 = *(v3 + 8);
    v19(v6, v2);
    v19(v8, v2);
  }

  return v14;
}

uint64_t sub_1D302DA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath.ResolutionError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D302DAF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D302DB40(uint64_t a1)
{
  sub_1D302DAF8(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);

  return sub_1D30E984C();
}

void sub_1D302DBF8(uint64_t a1)
{
  sub_1D302DC60(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1D302DC60(uint64_t a1)
{
  if (!qword_1EC749DE0)
  {
    sub_1D30E8D9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC749DE0);
    }
  }
}

uint64_t sub_1D302DCC8()
{
  v0 = sub_1D30E8D9C();
  __swift_allocate_value_buffer(v0, qword_1EC75A8D8);
  __swift_project_value_buffer(v0, qword_1EC75A8D8);
  return MEMORY[0x1D38B2220](0xD00000000000001CLL, 0x80000001D30EC3B0);
}

uint64_t sub_1D302DD2C()
{
  v0 = sub_1D30E8D9C();
  __swift_allocate_value_buffer(v0, qword_1EE3152D0);
  __swift_project_value_buffer(v0, qword_1EE3152D0);
  return MEMORY[0x1D38B2220](0x2F7972617262694CLL, 0xEF2F736568636143);
}

uint64_t sub_1D302DD9C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749928, &unk_1D30F1B00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_1D30E8D9C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  v31 = v2;
  if ((sub_1D30E8CDC() & 1) == 0)
  {
    return (*(v9 + 16))(a2, v31, v8);
  }

  v28 = a2;
  v29 = v3;
  v18 = [objc_opt_self() defaultManager];
  v19 = [v18 currentDirectoryPath];

  v20 = sub_1D30E908C();
  v22 = v21;

  MEMORY[0x1D38B22D0](v20, v22);
  v23 = *(v9 + 16);
  v23(v15, v17, v8);
  v23(v12, v31, v8);
  sub_1D30E8D1C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D2FF14DC(v7, &qword_1EC749928, &unk_1D30F1B00);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749930, &qword_1D30F38F0) + 48);
    v25 = v30;
    v23(v30, v17, v8);
    v23(&v25[v24], v31, v8);
    type metadata accessor for FilePath.ResolutionError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D302DAF8(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    swift_willThrowTypedImpl();
    return (*(v9 + 8))(v17, v8);
  }

  else
  {
    (*(v9 + 8))(v17, v8);
    return (*(v9 + 32))(v28, v7, v8);
  }
}

uint64_t sub_1D302E150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a6;
  v26 = a4;
  v28 = a5;
  v29 = a3;
  v30 = a7;
  v9 = sub_1D30E8D9C();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - v13;
  v15 = sub_1D30E8D5C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - v20;

  sub_1D30E8D6C();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D2FF14DC(v14, &qword_1EC749940, &qword_1D30F1B10);
    v22 = v29;
    *v29 = a1;
    v22[1] = a2;
    type metadata accessor for FilePath.ResolutionError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D302DAF8(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);

    return swift_willThrowTypedImpl();
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    if (*v26 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v9, v28);
    (*(v27 + 16))(v11, v24, v9);
    (*(v16 + 16))(v19, v21, v15);
    sub_1D30E8D7C();
    return (*(v16 + 8))(v21, v15);
  }
}

uint64_t sub_1D302E494()
{
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0x1000000000000031, 0x80000001D30EC3D0);
  v0 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v0);

  MEMORY[0x1D38B2610](782074082, 0xA400000000000000);
  return 0;
}

uint64_t sub_1D302E548(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = &OBJC_INSTANCE_METHODS_NSCoding;
  }

  else
  {
    v4 = "ald-encryption-cert";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (*a2)
  {
    v7 = "ald-encryption-cert";
  }

  else
  {
    v7 = &OBJC_INSTANCE_METHODS_NSCoding;
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();
  }

  return v9 & 1;
}

uint64_t sub_1D302E5F4()
{
  sub_1D30E98AC();
  sub_1D30E90BC();

  return sub_1D30E98EC();
}

uint64_t sub_1D302E674(uint64_t a1)
{
  sub_1D30E90BC();
}

uint64_t sub_1D302E6E0(uint64_t a1)
{
  sub_1D30E98AC();
  sub_1D30E90BC();

  return sub_1D30E98EC();
}

void sub_1D302E768(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "ald-encryption-cert";
  }

  else
  {
    v3 = &OBJC_INSTANCE_METHODS_NSCoding;
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1D302E7A8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1D302E7F0(uint64_t a1)
{
  v2 = sub_1D3030044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302E82C(uint64_t a1)
{
  v2 = sub_1D3030044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D302E868()
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D302E8EC(uint64_t a1)
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D302E9A0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1D30E95DC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1D302E9F8(uint64_t a1)
{
  v2 = sub_1D302FFF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302EA34(uint64_t a1)
{
  v2 = sub_1D302FFF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D302EA70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x737574617473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x80000001D30EA460;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x737574617473;
  }

  if (*a2)
  {
    v6 = 0x80000001D30EA460;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D30E97CC();
  }

  return v8 & 1;
}

uint64_t sub_1D302EB18()
{
  sub_1D30E98AC();
  sub_1D30E90BC();

  return sub_1D30E98EC();
}

uint64_t sub_1D302EB9C(uint64_t a1)
{
  sub_1D30E90BC();
}

uint64_t sub_1D302EC0C(uint64_t a1)
{
  sub_1D30E98AC();
  sub_1D30E90BC();

  return sub_1D30E98EC();
}

uint64_t sub_1D302EC98@<X0>(char *a3@<X8>)
{
  v4 = sub_1D30E95DC();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1D302ECF4(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D30EA460;
  v3 = 0x737574617473;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1D302ED34()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_1D302ED7C@<X0>(char *a4@<X8>)
{
  v5 = sub_1D30E95DC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1D302EDDC(uint64_t a1)
{
  v2 = sub_1D302FF9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302EE18(uint64_t a1)
{
  v2 = sub_1D302FF9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D302EE54@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D302FA48(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D302EEBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D302EF04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D302EF8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D302EFD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D302F030(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x737574617473;
  v5 = 0x80000001D30EA490;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001D30EA490;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 25705;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 0x737574617473;
  if (*a2 == 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D30E97CC();
  }

  return v11 & 1;
}

uint64_t sub_1D302F11C()
{
  sub_1D30E98AC();
  sub_1D30E90BC();

  return sub_1D30E98EC();
}

uint64_t sub_1D302F1B4(uint64_t a1)
{
  sub_1D30E90BC();
}

uint64_t sub_1D302F238(uint64_t a1)
{
  sub_1D30E98AC();
  sub_1D30E90BC();

  return sub_1D30E98EC();
}

unint64_t sub_1D302F2CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D3030098(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D302F2FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x737574617473;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001D30EA490;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D302F350()
{
  v1 = 0x737574617473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_1D302F3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D3030098(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D302F3C8(uint64_t a1)
{
  v2 = sub_1D30306F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302F404(uint64_t a1)
{
  v2 = sub_1D30306F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D302F440()
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D302F4B4(uint64_t a1)
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D302F550@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1D30E95DC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1D302F5A8(uint64_t a1)
{
  v2 = sub_1D3030654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302F5E4(uint64_t a1)
{
  v2 = sub_1D3030654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D302F620()
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D302F694(uint64_t a1)
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D302F6F4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1D30E95DC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1D302F780@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1D30E95DC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1D302F7D8(uint64_t a1)
{
  v2 = sub_1D3030600();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302F814(uint64_t a1)
{
  v2 = sub_1D3030600();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D302F850(unint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    v10 = 0;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](540689481, 0xE400000000000000);
    v5 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v5);

    MEMORY[0x1D38B2610](0x6572756C69616620, 0xEA0000000000203ALL);
    sub_1D30E955C();
  }

  else
  {
    sub_1D302B074(a2, a3, 0);
    sub_1D30E948C();

    v10 = 540689481;
    v7 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v7);

    MEMORY[0x1D38B2610](0x7373656363757320, 0xEA0000000000203ALL);
    v8 = sub_1D30E88EC();
    MEMORY[0x1D38B2610](v8);

    sub_1D302B068(a2, a3, 0);
  }

  return v10;
}

uint64_t sub_1D302FA00@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D30300E4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

double sub_1D302FA48@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749DE8, &qword_1D30F3D58);
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749DF0, &qword_1D30F3D60);
  *&v30 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v32 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749DF8, &qword_1D30F3D68);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D302FF9C();
  v17 = v33;
  sub_1D30E990C();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v27 = v11;
    *&v33 = v13;
    v19 = v31;
    LOBYTE(v35) = 1;
    sub_1D302FFF0();
    sub_1D30E95FC();
    v26 = v15;
    v20 = v30;
    v21 = v7;
    (*(v30 + 32))();
    sub_1D3030044();
    sub_1D30E95FC();
    v32 = 0;
    v36 = 0;
    sub_1D2FF96E8();
    v22 = v28;
    sub_1D30E967C();
    v25 = v35;
    v36 = 1;
    sub_1D30E967C();
    (*(v29 + 8))(v6, v22);
    (*(v20 + 8))(v27, v21);
    (*(v33 + 8))(v26, v12);
    v33 = v35;
    v30 = v25;
    v23 = v32;
    __swift_destroy_boxed_opaque_existential_1(v34);
    v24 = v33;
    result = *&v30;
    *v19 = v30;
    *(v19 + 16) = v24;
    *(v19 + 32) = v23 != 0;
  }

  return result;
}

unint64_t sub_1D302FF9C()
{
  result = qword_1EC749E00;
  if (!qword_1EC749E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E00);
  }

  return result;
}

unint64_t sub_1D302FFF0()
{
  result = qword_1EC749E08;
  if (!qword_1EC749E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E08);
  }

  return result;
}

unint64_t sub_1D3030044()
{
  result = qword_1EC749E10;
  if (!qword_1EC749E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E10);
  }

  return result;
}

unint64_t sub_1D3030098(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D30E95DC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D30300E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749E18, &qword_1D30F3D70);
  v3 = *(v2 - 8);
  v24 = v2;
  v25 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749E20, &qword_1D30F3D78);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749E28, &qword_1D30F3D80);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D3030600();
  v14 = v27;
  sub_1D30E990C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v15 = v26;
  sub_1D3030654();
  sub_1D30E95FC();
  sub_1D30E95EC();
  v22 = v6;
  v23 = v8;
  v27 = v9;
  __swift_mutable_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_1D30306F8();
  v16 = v5;
  sub_1D30E979C();
  v21 = v12;
  LOBYTE(v29) = 0;
  v17 = v24;
  v20 = sub_1D30E965C();
  v32 = 2;
  sub_1D2FF96E8();
  sub_1D30E962C();
  v18 = v25;
  if (v30 >> 60 == 15)
  {
    LOBYTE(v29) = 1;
    sub_1D30E968C();
    (*(v18 + 8))(v16, v17);
  }

  else
  {
    (*(v25 + 8))(v16, v17);
  }

  (*(v15 + 8))(v23, v22);
  (*(v10 + 8))(v21, v27);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v20;
}

unint64_t sub_1D3030600()
{
  result = qword_1EC749E30;
  if (!qword_1EC749E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E30);
  }

  return result;
}

unint64_t sub_1D3030654()
{
  result = qword_1EC749E38;
  if (!qword_1EC749E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E38);
  }

  return result;
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

unint64_t sub_1D30306F8()
{
  result = qword_1EC749E40;
  if (!qword_1EC749E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E40);
  }

  return result;
}

unint64_t sub_1D30307C0()
{
  result = qword_1EC749E48;
  if (!qword_1EC749E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E48);
  }

  return result;
}

unint64_t sub_1D3030818()
{
  result = qword_1EC749E50;
  if (!qword_1EC749E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E50);
  }

  return result;
}

unint64_t sub_1D3030870()
{
  result = qword_1EC749E58;
  if (!qword_1EC749E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E58);
  }

  return result;
}

unint64_t sub_1D30308C8()
{
  result = qword_1EC749E60;
  if (!qword_1EC749E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E60);
  }

  return result;
}

unint64_t sub_1D3030920()
{
  result = qword_1EC749E68;
  if (!qword_1EC749E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E68);
  }

  return result;
}

unint64_t sub_1D3030978()
{
  result = qword_1EC749E70;
  if (!qword_1EC749E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E70);
  }

  return result;
}

unint64_t sub_1D30309D0()
{
  result = qword_1EC749E78;
  if (!qword_1EC749E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E78);
  }

  return result;
}

unint64_t sub_1D3030A28()
{
  result = qword_1EC749E80;
  if (!qword_1EC749E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E80);
  }

  return result;
}

unint64_t sub_1D3030A80()
{
  result = qword_1EC749E88;
  if (!qword_1EC749E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E88);
  }

  return result;
}

unint64_t sub_1D3030AD8()
{
  result = qword_1EC749E90;
  if (!qword_1EC749E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E90);
  }

  return result;
}

unint64_t sub_1D3030B30()
{
  result = qword_1EC749E98;
  if (!qword_1EC749E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E98);
  }

  return result;
}

unint64_t sub_1D3030B88()
{
  result = qword_1EC749EA0;
  if (!qword_1EC749EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749EA0);
  }

  return result;
}

unint64_t sub_1D3030BE0()
{
  result = qword_1EC749EA8;
  if (!qword_1EC749EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749EA8);
  }

  return result;
}

unint64_t sub_1D3030C38()
{
  result = qword_1EC749EB0;
  if (!qword_1EC749EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749EB0);
  }

  return result;
}

unint64_t sub_1D3030C90()
{
  result = qword_1EC749EB8;
  if (!qword_1EC749EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749EB8);
  }

  return result;
}

unint64_t sub_1D3030CE8()
{
  result = qword_1EC749EC0;
  if (!qword_1EC749EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749EC0);
  }

  return result;
}

unint64_t sub_1D3030D40()
{
  result = qword_1EC749EC8;
  if (!qword_1EC749EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749EC8);
  }

  return result;
}

unint64_t sub_1D3030D98()
{
  result = qword_1EC749ED0;
  if (!qword_1EC749ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749ED0);
  }

  return result;
}

uint64_t sub_1D3030DF0(uint64_t a1)
{
  if (a1 == MEMORY[0x1E69E6448] || a1 == MEMORY[0x1E69E63B0] || a1 == MEMORY[0x1E69E6370] || a1 == MEMORY[0x1E69E6530])
  {
    v6 = &unk_1EC749EE8;
    v7 = 0x1E696AD98;
  }

  else if (sub_1D30E88CC() == a1 || sub_1D2FF1494(0, &qword_1EC749410, 0x1E695DFF8) == a1)
  {
    v6 = &qword_1EC749410;
    v7 = 0x1E695DFF8;
  }

  else
  {
    v5 = swift_conformsToProtocol2();
    if (a1 && v5)
    {
      v6 = &unk_1EC749400;
      v7 = 0x1E696AEC0;
    }

    else
    {
      v9 = swift_conformsToProtocol2();
      if (a1 && v9)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        sub_1D3030DF0(AssociatedTypeWitness);
        v6 = &unk_1EC749EE0;
        v7 = 0x1E695DF20;
      }

      else
      {
        v11 = swift_conformsToProtocol2();
        if (a1 && v11)
        {
          v12 = swift_getAssociatedTypeWitness();
          sub_1D3030DF0(v12);
          v6 = &unk_1EC749ED8;
          v7 = 0x1E695DEC8;
        }

        else
        {
          v6 = &qword_1EE313000;
          v7 = 0x1E69E58C0;
        }
      }
    }
  }

  return sub_1D2FF1494(0, v6, v7);
}

BOOL sub_1D3030FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D3030DF0(a3);
  if (v4)
  {
    v5 = sub_1D30E906C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [v3 objectForKey:v5 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];
  }

  else
  {
    v5 = sub_1D30E906C();
    v7 = [v3 objectForKey:v5 ofClass:swift_getObjCClassFromMetadata()];
  }

  v8 = v7;

  if (v8)
  {
    sub_1D30E93AC();
    swift_unknownObjectRelease();
    sub_1D2FDCC64(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_1D30310D8(v11);
  return v8 != 0;
}

uint64_t sub_1D30310D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749418, &qword_1D30F4A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CertificateRole.description.getter()
{
  if (*v0)
  {
    return 0x676E696E676973;
  }

  else
  {
    return 0x6974707972636E65;
  }
}

uint64_t sub_1D3031198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974707972636E65 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696E676973 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D303127C(uint64_t a1)
{
  v2 = sub_1D30316A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30312B8(uint64_t a1)
{
  v2 = sub_1D30316A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30312F4(uint64_t a1)
{
  v2 = sub_1D3031748();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3031330(uint64_t a1)
{
  v2 = sub_1D3031748();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D303136C(uint64_t a1)
{
  v2 = sub_1D30316F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30313A8(uint64_t a1)
{
  v2 = sub_1D30316F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CertificateRole.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749EF0, &qword_1D30F45F0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749EF8, &qword_1D30F45F8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F00, &qword_1D30F4600);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30316A0();
  sub_1D30E992C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D30316F4();
    v14 = v18;
    sub_1D30E96DC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D3031748();
    sub_1D30E96DC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1D30316A0()
{
  result = qword_1EC749F08;
  if (!qword_1EC749F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F08);
  }

  return result;
}

unint64_t sub_1D30316F4()
{
  result = qword_1EC749F10;
  if (!qword_1EC749F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F10);
  }

  return result;
}

unint64_t sub_1D3031748()
{
  result = qword_1EC749F18;
  if (!qword_1EC749F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F18);
  }

  return result;
}

uint64_t CertificateRole.hashValue.getter()
{
  v1 = *v0;
  sub_1D30E98AC();
  MEMORY[0x1D38B2DE0](v1);
  return sub_1D30E98EC();
}

uint64_t CertificateRole.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F20, &qword_1D30F4608);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F28, &qword_1D30F4610);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F30, &unk_1D30F4618);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30316A0();
  v12 = v31;
  sub_1D30E990C();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1D30E96AC();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D302B6A4();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D30E94EC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30);
      *v22 = &type metadata for CertificateRole;
      sub_1D30E960C();
      sub_1D30E94DC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1D30316F4();
        sub_1D30E95FC();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D3031748();
        sub_1D30E95FC();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_1D3031CD0()
{
  result = qword_1EC749F38;
  if (!qword_1EC749F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F38);
  }

  return result;
}

unint64_t sub_1D3031D28()
{
  result = qword_1EC749F40;
  if (!qword_1EC749F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749F48, &qword_1D30F4690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F40);
  }

  return result;
}

unint64_t sub_1D3031E10()
{
  result = qword_1EC749F50;
  if (!qword_1EC749F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F50);
  }

  return result;
}

unint64_t sub_1D3031E68()
{
  result = qword_1EC749F58;
  if (!qword_1EC749F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F58);
  }

  return result;
}

unint64_t sub_1D3031EC0()
{
  result = qword_1EC749F60;
  if (!qword_1EC749F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F60);
  }

  return result;
}

unint64_t sub_1D3031F18()
{
  result = qword_1EC749F68;
  if (!qword_1EC749F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F68);
  }

  return result;
}

unint64_t sub_1D3031F70()
{
  result = qword_1EC749F70;
  if (!qword_1EC749F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F70);
  }

  return result;
}

unint64_t sub_1D3031FC8()
{
  result = qword_1EC749F78;
  if (!qword_1EC749F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F78);
  }

  return result;
}

unint64_t sub_1D3032020()
{
  result = qword_1EC749F80;
  if (!qword_1EC749F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F80);
  }

  return result;
}

id LicenseRequestMessage.Subject.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  result = [objc_allocWithZone(ObjectType) init];
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

id LicenseRequestMessage.Subject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D303220C()
{
  result = sub_1D30E906C();
  qword_1EC749F88 = result;
  return result;
}

id static LicenseRequestMessage.name.getter()
{
  if (qword_1EC749048 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC749F88;

  return v1;
}

uint64_t static LicenseRequestMessage.makeMessage(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D30E857C();
  if (qword_1EC749048 != -1)
  {
    swift_once();
  }

  v3 = sub_1D30E908C();
  v5 = v4;
  if (v3 == sub_1D30E908C() && v5 == v6)
  {

LABEL_10:
    v13 = sub_1D30E858C();
    if (v13)
    {
      v14 = v13;
      *&v18 = 0x736E6563694C4142;
      *(&v18 + 1) = 0xEB00000000444965;
      sub_1D30E941C();
      if (*(v14 + 16))
      {
        v15 = sub_1D3032710(v17);
        if (v16)
        {
          sub_1D2FF1430(*(v14 + 56) + 32 * v15, &v18);
          sub_1D3032754(v17);

          if (*(&v19 + 1))
          {
            result = swift_dynamicCast();
            v10 = v17[0];
            if (!result)
            {
              v10 = 0;
            }

            v11 = result ^ 1;
            goto LABEL_20;
          }

LABEL_19:
          result = sub_1D30310D8(&v18);
          v10 = 0;
          v11 = 1;
LABEL_20:
          v12 = 0;
          goto LABEL_21;
        }
      }

      sub_1D3032754(v17);
    }

    v18 = 0u;
    v19 = 0u;
    goto LABEL_19;
  }

  v8 = sub_1D30E97CC();

  if (v8)
  {
    goto LABEL_10;
  }

  v10 = 0;
  v11 = 0;
  v12 = 1;
LABEL_21:
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 9) = v12;
  return result;
}

uint64_t static LicenseRequestMessage.makeNotification(_:object:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_1D3034AE8(MEMORY[0x1E69E7CC0]);
  if ((v4 & 1) == 0)
  {
    *(&v13 + 1) = 0xEB00000000444965;
    sub_1D30E941C();
    v14 = MEMORY[0x1E69E76D8];
    *&v13 = v3;
    sub_1D2FDCC64(&v13, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3033A50(v12, v15, isUniquelyReferenced_nonNull_native);
    sub_1D3032754(v15);
  }

  if (qword_1EC749048 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC749F88;
  if (a2)
  {
    v7 = type metadata accessor for LicenseRequestMessage.Subject();
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v8;
  v15[3] = v7;
  v9 = v6;
  v10 = a2;
  return sub_1D30E856C();
}

id sub_1D30325F4()
{
  if (qword_1EC749048 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC749F88;

  return v1;
}

unint64_t sub_1D3032654(uint64_t a1)
{
  v2 = sub_1D30E989C();

  return sub_1D30327A8(a1, v2);
}

unint64_t sub_1D3032698(uint64_t a1, uint64_t a2)
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  v4 = sub_1D30E98EC();

  return sub_1D3032814(a1, a2, v4);
}

unint64_t sub_1D3032710(uint64_t a1)
{
  v2 = sub_1D30E93FC();

  return sub_1D30328CC(a1, v2);
}

unint64_t sub_1D30327A8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D3032814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D30E97CC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D30328CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D3034EA4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D38B2930](v9, a1);
      sub_1D3032754(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1D3032994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F98, &unk_1D30F4AC0);
  v34 = v4;
  result = sub_1D30E95BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_1D30E989C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D3032C18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v34 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FA0, &qword_1D30F4AD0);
  v37 = v4;
  result = sub_1D30E95BC();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_1D30E989C();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1D3032F6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FC0, &qword_1D30F4AF0);
  result = sub_1D30E95BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1D2FDCC64((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1D3034EA4(v23, &v36);
        sub_1D2FF1430(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1D30E93FC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1D2FDCC64(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D3033224(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FD0, &qword_1D30F4B00);
  v33 = v4;
  result = sub_1D30E95BC();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1D2FDCC64(v24, v34);
      }

      else
      {
        sub_1D2FF1430(v24, v34);
      }

      sub_1D30E98AC();
      sub_1D30E90BC();
      result = sub_1D30E98EC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D2FDCC64(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D30334DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FA8, &qword_1D30F4AD8);
  v34 = v4;
  result = sub_1D30E95BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D30E98AC();
      sub_1D30E90BC();
      result = sub_1D30E98EC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1D303377C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D3032654(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D3032994(v16, a4 & 1);
      result = sub_1D3032654(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1D30E981C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D3033E34();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_1D30338DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D3032654(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D3033F9C();
      goto LABEL_7;
    }

    sub_1D3032C18(v13, a3 & 1);
    v24 = sub_1D3032654(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1D30E981C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1D3033D00(v10, a2, a1, v16);
}

_OWORD *sub_1D3033A50(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D3032710(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D303420C();
      goto LABEL_7;
    }

    sub_1D3032F6C(v13, a3 & 1);
    v19 = sub_1D3032710(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D3034EA4(a2, v21);
      return sub_1D3033DB8(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1D30E981C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_1D2FDCC64(a1, v17);
}

unint64_t sub_1D3033B9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D3032698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D30334DC(v16, a4 & 1);
      result = sub_1D3032698(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1D30E981C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D3034554();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1D3033D00(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_1D3033DB8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1D2FDCC64(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_1D3033E34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F98, &unk_1D30F4AC0);
  v2 = *v0;
  v3 = sub_1D30E95AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D3033F9C()
{
  v1 = v0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FA0, &qword_1D30F4AD0);
  v3 = *v0;
  v4 = sub_1D30E95AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1D303420C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FC0, &qword_1D30F4AF0);
  v2 = *v0;
  v3 = sub_1D30E95AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1D3034EA4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1D2FF1430(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1D2FDCC64(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D30343B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FD0, &qword_1D30F4B00);
  v2 = *v0;
  v3 = sub_1D30E95AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D2FF1430(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D2FDCC64(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1D3034554()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FA8, &qword_1D30F4AD8);
  v2 = *v0;
  v3 = sub_1D30E95AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D30346BC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F98, &unk_1D30F4AC0);
  v3 = sub_1D30E95CC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1D3032654(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1D3032654(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D30347D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FB8, &qword_1D30F4AE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FA0, &qword_1D30F4AD0);
    v7 = sub_1D30E95CC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1D302B0DC(v9, v5, &qword_1EC749FB8, &qword_1D30F4AE8);
      v11 = *v5;
      result = sub_1D3032654(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D30349B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F90, &unk_1D30F4AB0);
    v3 = sub_1D30E95CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D302B0DC(v4, &v13, &qword_1EC749CC0, &qword_1D30F33E8);
      v5 = v13;
      v6 = v14;
      result = sub_1D3032698(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D2FDCC64(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D3034AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FC0, &qword_1D30F4AF0);
    v3 = sub_1D30E95CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D302B0DC(v4, v13, &qword_1EC749FC8, &qword_1D30F4AF8);
      result = sub_1D3032710(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D2FDCC64(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LicenseRequestMessage(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LicenseRequestMessage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_1D3034CA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FB0, &qword_1D30F4AE0);
    v3 = sub_1D30E95CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D3032698(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D3034DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FA8, &qword_1D30F4AD8);
    v3 = sub_1D30E95CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D3032698(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D3034F00(_BYTE *a1)
{
  *(v2 + 24) = v1;
  v4 = sub_1D30E881C();
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 - 8);
  *(v2 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  *(v2 + 56) = swift_task_alloc();
  v5 = sub_1D30E88CC();
  *(v2 + 64) = v5;
  *(v2 + 72) = *(v5 - 8);
  *(v2 + 80) = swift_task_alloc();
  v6 = sub_1D30E8D9C();
  *(v2 + 88) = v6;
  *(v2 + 96) = *(v6 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 219) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3035120, 0, 0);
}

uint64_t sub_1D3035120()
{
  v109 = v0;
  v108[1] = *MEMORY[0x1E69E9840];
  if (qword_1EE313200 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313208);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 219);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v108[0] = v6;
    *v5 = 136446210;
    if (v4)
    {
      v7 = 0x676E696E676973;
    }

    else
    {
      v7 = 0x6974707972636E65;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xEA00000000006E6FLL;
    }

    v9 = sub_1D2FFEA04(v7, v8, v108);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Contents of certificate for role: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D38B3760](v6, -1, -1);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v11 = *(v0 + 136);
  LOBYTE(v108[0]) = *(v0 + 219);
  v10 = v108[0];
  sub_1D3036990(v108, v11);
  v106 = v10;
  v15 = *(v0 + 128);
  v14 = *(v0 + 136);
  v16 = *(v0 + 88);
  v17 = *(v0 + 96);
  v18 = sub_1D30E927C();
  v19 = *(v17 + 16);
  v19(v15, v14, v16);
  v20 = sub_1D30E8B1C();
  if (os_log_type_enabled(v20, v18))
  {
    v22 = *(v0 + 219);
    v23 = *(v0 + 128);
    v24 = *(v0 + 88);
    v25 = *(v0 + 96);
    v26 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v108[0] = v102;
    *v26 = 136446466;
    if (v22)
    {
      v27 = 0x676E696E676973;
    }

    else
    {
      v27 = 0x6974707972636E65;
    }

    if (v22)
    {
      v28 = 0xE700000000000000;
    }

    else
    {
      v28 = 0xEA00000000006E6FLL;
    }

    v103 = v19;
    v29 = sub_1D2FFEA04(v27, v28, v108);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_1D3038D90(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v30 = sub_1D30E977C();
    v32 = v31;
    v33 = *(v25 + 8);
    v33(v23, v24);
    v34 = sub_1D2FFEA04(v30, v32, v108);
    v19 = v103;

    *(v26 + 14) = v34;
    _os_log_impl(&dword_1D2FD9000, v20, v18, "Loading the %{public}s certificate at “%{public}s”…", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v102, -1, -1);
    MEMORY[0x1D38B3760](v26, -1, -1);
  }

  else
  {
    v35 = *(v0 + 128);
    v36 = *(v0 + 88);
    v37 = *(v0 + 96);

    v33 = *(v37 + 8);
    v33(v35, v36);
  }

  *(v0 + 144) = v33;
  *(v0 + 216) = 1;
  v38 = objc_opt_self();
  v39 = [v38 defaultManager];
  sub_1D30E8D3C();
  v40 = sub_1D30E906C();

  v41 = [v39 fileExistsAtPath:v40 isDirectory:v0 + 216];

  if ((v41 & 1) == 0)
  {
    v19(*(v0 + 120), *(v0 + 136), *(v0 + 88));
    v58 = sub_1D30E8B1C();
    v59 = sub_1D30E92BC();
    if (os_log_type_enabled(v58, v59))
    {
      v105 = v33;
      v60 = *(v0 + 219);
      v61 = *(v0 + 120);
      v62 = *(v0 + 88);
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v108[0] = v64;
      *v63 = 136315394;
      if (v60)
      {
        v65 = 0x676E696E676973;
      }

      else
      {
        v65 = 0x6974707972636E65;
      }

      if (v60)
      {
        v66 = 0xE700000000000000;
      }

      else
      {
        v66 = 0xEA00000000006E6FLL;
      }

      v67 = sub_1D2FFEA04(v65, v66, v108);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2082;
      sub_1D3038D90(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v68 = sub_1D30E977C();
      v70 = v69;
      v105(v61, v62);
      v71 = sub_1D2FFEA04(v68, v70, v108);

      *(v63 + 14) = v71;
      _os_log_impl(&dword_1D2FD9000, v58, v59, "The %s certificate doesn’t exist locally at “%{public}s”; downloading the certificates from the Commerce server…", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v64, -1, -1);
      MEMORY[0x1D38B3760](v63, -1, -1);
    }

    else
    {
      v84 = *(v0 + 120);
      v85 = *(v0 + 88);

      v33(v84, v85);
    }

    *(v0 + 217) = v106;
    v86 = swift_task_alloc();
    *(v0 + 152) = v86;
    *v86 = v0;
    v86[1] = sub_1D3035DCC;
    v87 = (v0 + 217);
    goto LABEL_40;
  }

  v104 = v33;
  v42 = *(v0 + 136);
  v43 = *(v0 + 88);
  if (*(v0 + 216) == 1)
  {
    v44 = *(v0 + 112);
    v45 = sub_1D30E92AC();
    v19(v44, v42, v43);
    v46 = sub_1D30E8B1C();
    v47 = os_log_type_enabled(v46, v45);
    v48 = *(v0 + 112);
    v49 = *(v0 + 88);
    if (v47)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v108[0] = v51;
      *v50 = 136446210;
      sub_1D3038D90(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v52 = sub_1D30E977C();
      v54 = v53;
      v55 = v49;
      v56 = v104;
      v104(v48, v55);
      v57 = sub_1D2FFEA04(v52, v54, v108);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_1D2FD9000, v46, v45, "The item at “%{public}s” is unexpectedly a directory; removing it and redownloading the certificates from the Commerce server…", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1D38B3760](v51, -1, -1);
      MEMORY[0x1D38B3760](v50, -1, -1);
    }

    else
    {

      v88 = v49;
      v56 = v104;
      v104(v48, v88);
    }

    v89 = [v38 defaultManager];
    sub_1D30E8D3C();
    v90 = sub_1D30E906C();

    *(v0 + 16) = 0;
    v91 = [v89 removeItemAtPath:v90 error:v0 + 16];

    v92 = *(v0 + 16);
    if (v91)
    {
      *(v0 + 218) = v106;
      v93 = v92;
      v94 = swift_task_alloc();
      *(v0 + 184) = v94;
      *v94 = v0;
      v94[1] = sub_1D303604C;
      v87 = (v0 + 218);
LABEL_40:

      return sub_1D3036E08(v87);
    }

    v96 = *(v0 + 136);
    v97 = *(v0 + 88);
    v98 = v92;
    sub_1D30E87DC();

    swift_willThrow();
    v56(v96, v97);
    goto LABEL_12;
  }

  v72 = *(v0 + 104);
  v73 = *(v0 + 64);
  v74 = *(v0 + 72);
  v76 = *(v0 + 48);
  v75 = *(v0 + 56);
  v77 = v19;
  v78 = *(v0 + 32);
  v79 = *(v0 + 40);
  v80 = v77;
  v77(v72, *(v0 + 136), *(v0 + 88));
  (*(v79 + 104))(v76, *MEMORY[0x1E6968F68], v78);
  sub_1D3040AB4(v72, v76, v75);
  if ((*(v74 + 48))(v75, 1, v73) == 1)
  {
    v81 = *(v0 + 136);
    v82 = *(v0 + 88);
    sub_1D3038CDC(*(v0 + 56));
    type metadata accessor for CertificateManagerError(0);
    sub_1D3038D90(&qword_1EC749FD8, type metadata accessor for CertificateManagerError, &unk_1D30F4BC0);
    swift_allocError();
    v80(v83, v81, v82);
    swift_willThrow();
    v104(v81, v82);
LABEL_12:

    v12 = *(v0 + 8);

    return v12();
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
  v95 = sub_1D30E88DC();
  v107 = v99;
  v100 = v95;
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  (*(v0 + 144))(*(v0 + 136), *(v0 + 88));

  v101 = *(v0 + 8);

  return v101(v100, v107);
}

uint64_t sub_1D3035DCC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 160) = v2;

  if (v2)
  {
    v7 = sub_1D30362CC;
  }

  else
  {
    *(v6 + 168) = a2;
    *(v6 + 176) = a1;
    v7 = sub_1D3035F28;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D3035F28()
{
  v1 = *(v0 + 168);
  v4 = *(v0 + 176);
  (*(v0 + 144))(*(v0 + 136), *(v0 + 88));

  v2 = *(v0 + 8);

  return v2(v4, v1);
}

uint64_t sub_1D303604C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v7 = sub_1D30363DC;
  }

  else
  {
    *(v6 + 200) = a2;
    *(v6 + 208) = a1;
    v7 = sub_1D30361A8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D30361A8()
{
  v1 = *(v0 + 200);
  v4 = *(v0 + 208);
  (*(v0 + 144))(*(v0 + 136), *(v0 + 88));

  v2 = *(v0 + 8);

  return v2(v4, v1);
}

uint64_t sub_1D30362CC()
{
  (*(v0 + 144))(*(v0 + 136), *(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D30363DC()
{
  (*(v0 + 144))(*(v0 + 136), *(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D30364EC(uint64_t a1, void *a2, char a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v6 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA8, &qword_1D30F33C8);
    sub_1D30E91CC();
  }

  else if (a2)
  {
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA8, &qword_1D30F33C8);
    sub_1D30E91DC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D30365A4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA0, &qword_1D30F33C0);
    sub_1D30E91CC();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA0, &qword_1D30F33C0);
    sub_1D30E91DC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D3036654()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE313208);
  __swift_project_value_buffer(v0, qword_1EE313208);
  return sub_1D30E8B2C();
}

uint64_t sub_1D30366D4(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE313200 != -1)
  {
    swift_once();
  }

  v4 = sub_1D30E8B3C();
  __swift_project_value_buffer(v4, qword_1EE313208);
  v5 = sub_1D30E928C();

  v6 = sub_1D30E8B1C();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    type metadata accessor for ContainerManager();

    v9 = sub_1D30E909C();
    v11 = sub_1D2FFEA04(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D2FD9000, v6, v5, "Init container manager: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1D3036854()
{
  v1 = v0;
  if (qword_1EE313200 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313208);
  v3 = sub_1D30E928C();
  v4 = sub_1D30E8B1C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Deinit", v5, 2u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  return v1;
}

uint64_t sub_1D3036938()
{
  sub_1D3036854();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D3036990@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a2;
  v42[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D30E8D9C();
  v41 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  v14 = *a1;
  if (qword_1EE313200 != -1)
  {
    swift_once();
  }

  v15 = sub_1D30E8B3C();
  __swift_project_value_buffer(v15, qword_1EE313208);
  v16 = sub_1D30E928C();
  v17 = sub_1D30E8B1C();
  v18 = os_log_type_enabled(v17, v16);
  v39 = v8;
  v38 = v14;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v36 = v5;
    v37 = v13;
    v20 = v19;
    v21 = swift_slowAlloc();
    v42[0] = v21;
    *v20 = 136446210;
    if (v14)
    {
      v22 = 0x676E696E676973;
    }

    else
    {
      v22 = 0x6974707972636E65;
    }

    if (v14)
    {
      v23 = 0xE700000000000000;
    }

    else
    {
      v23 = 0xEA00000000006E6FLL;
    }

    v24 = sub_1D2FFEA04(v22, v23, v42);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_1D2FD9000, v17, v16, "Path to certificate for role: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v25 = v21;
    v3 = v2;
    MEMORY[0x1D38B3760](v25, -1, -1);
    v5 = v36;
    v13 = v37;
    MEMORY[0x1D38B3760](v20, -1, -1);
  }

  if (qword_1EC749040 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v5, qword_1EE3152D0);
  result = sub_1D3003CF4(v26, 0, v11);
  if (!v3)
  {
    v28 = v5;
    sub_1D30E8D8C();
    v29 = [objc_opt_self() defaultManager];
    sub_1D30E8D3C();
    v30 = sub_1D30E906C();

    v42[0] = 0;
    v31 = [v29 createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:0 error:v42];

    v32 = v42[0];
    if (v31)
    {
      v33 = v41 + 16;
      (*(v41 + 16))(v39, v13, v28);
      v34 = v32;
      sub_1D30E8D8C();
      return (*(v33 - 8))(v13, v28);
    }

    else
    {
      v35 = v42[0];
      sub_1D30E87DC();

      swift_willThrow();
      return (*(v41 + 8))(v13, v28);
    }
  }

  return result;
}

uint64_t sub_1D3036E08(_BYTE *a1)
{
  *(v2 + 336) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA0, &qword_1D30F33C0);
  *(v2 + 344) = v4;
  *(v2 + 352) = *(v4 - 8);
  *(v2 + 360) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA8, &qword_1D30F33C8);
  *(v2 + 368) = v5;
  *(v2 + 376) = *(v5 - 8);
  *(v2 + 384) = swift_task_alloc();
  *(v2 + 305) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3036F48, 0, 0);
}

uint64_t sub_1D3036F48()
{
  v25 = v0;
  if (qword_1EE313200 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313208);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 305);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446210;
    if (v4)
    {
      v7 = 0x676E696E676973;
    }

    else
    {
      v7 = 0x6974707972636E65;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xEA00000000006E6FLL;
    }

    v9 = sub_1D2FFEA04(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Download certificates returning contents for role: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D38B3760](v6, -1, -1);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v10 = sub_1D30E927C();
  v11 = sub_1D30E8B1C();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D2FD9000, v11, v10, "Fetching the bag…", v12, 2u);
    MEMORY[0x1D38B3760](v12, -1, -1);
  }

  v14 = *(v0 + 376);
  v13 = *(v0 + 384);
  v15 = *(v0 + 368);

  v16 = objc_opt_self();
  *(v0 + 392) = v16;
  v17 = sub_1D30E906C();
  v18 = sub_1D30E906C();
  v19 = [v16 bagForProfile:v17 profileVersion:v18 processInfo:0];

  v20 = sub_1D30E906C();
  v21 = [v19 URLForKey_];
  *(v0 + 400) = v21;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 312;
  *(v0 + 24) = sub_1D3037380;
  swift_continuation_init();
  *(v0 + 200) = v15;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 176));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CB0, &unk_1D30F33D0);
  *(v0 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
  sub_1D30E91BC();
  (*(v14 + 32))(boxed_opaque_existential_0Tm, v13, v15);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1D30364EC;
  *(v0 + 168) = &block_descriptor_2;
  [v21 valueWithCompletion_];
  (*(v14 + 8))(boxed_opaque_existential_0Tm, v15);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D3037380()
{
  v1 = *(*v0 + 48);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = sub_1D3037C50;
  }

  else
  {
    v2 = sub_1D3037490;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3037490()
{
  v1 = v0[50];
  v2 = v0[49];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v6 = v0[39];
  v0[53] = v6;

  v7 = sub_1D30E906C();
  v8 = sub_1D30E906C();
  v9 = [v2 bagForProfile:v7 profileVersion:v8 processInfo:0];

  v10 = [objc_allocWithZone(MEMORY[0x1E698CB88]) initWithBag_];
  v0[54] = v10;

  v11 = [v10 requestWithMethod:2 URL:v6 parameters:0];
  v0[55] = v11;
  v12 = [objc_opt_self() defaultSession];
  v13 = [v12 dataTaskPromiseWithRequestPromise_];
  v0[56] = v13;

  v0[10] = v0;
  v0[15] = v0 + 41;
  v0[11] = sub_1D303774C;
  swift_continuation_init();
  v0[33] = v5;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 30);
  sub_1D302AF74();
  sub_1D30E91BC();
  (*(v4 + 32))(boxed_opaque_existential_0Tm, v3, v5);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1D30365A4;
  v0[29] = &block_descriptor_7;
  [v13 resultWithCompletion_];
  (*(v4 + 8))(boxed_opaque_existential_0Tm, v5);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1D303774C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 456) = v1;
  if (v1)
  {
    v2 = sub_1D3037CD8;
  }

  else
  {
    v2 = sub_1D303785C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D303785C()
{
  v30 = v0;
  v1 = *(v0 + 328);
  v2 = [v1 data];

  v3 = sub_1D30E893C();
  v5 = v4;

  sub_1D30E855C();
  swift_allocObject();
  sub_1D30E854C();
  sub_1D3038DF0();
  sub_1D30E853C();
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v8 = *(v0 + 288);
  v9 = *(v0 + 296);
  if (*(v0 + 304))
  {
    v23 = *(v0 + 448);
    v25 = *(v0 + 440);
    v27 = *(v0 + 288);
    v22 = *(v0 + 296);
    v11 = *(v0 + 424);
    v10 = *(v0 + 432);
    *(v0 + 308) = v7;
    sub_1D302B014();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v12 = v7;

    sub_1D3038E44(v7, v6, v27, v22, 1);

    sub_1D2FF1804(v3, v5);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v28 = 0;
    sub_1D3038E8C(v7, v6, v8, v9, 0);
    sub_1D3037D78(&v28, v7, v6);
    v29[0] = 1;
    sub_1D3037D78(v29, v8, v9);
    v24 = *(v0 + 448);
    v26 = *(v0 + 440);
    v13 = *(v0 + 432);
    v16 = *(v0 + 305);

    sub_1D3038E44(v7, v6, v8, v9, 0);

    sub_1D2FF1804(v3, v5);

    if (v16)
    {
      v17 = v6;
    }

    else
    {
      v17 = v9;
    }

    if (v16)
    {
      v18 = v7;
    }

    else
    {
      v18 = v8;
    }

    if (v16)
    {
      v19 = v8;
    }

    else
    {
      v19 = v7;
    }

    if (v16)
    {
      v20 = v9;
    }

    else
    {
      v20 = v6;
    }

    sub_1D2FF1804(v18, v17);

    v21 = *(v0 + 8);

    return v21(v19, v20);
  }
}

uint64_t sub_1D3037C50(uint64_t a1)
{
  v2 = *(v1 + 400);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D3037CD8(uint64_t a1)
{
  v2 = v1[56];
  v4 = v1[54];
  v3 = v1[55];
  v5 = v1[53];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_1D3037D78(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1D30E881C();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = &v66 - v10;
  v11 = sub_1D30E88CC();
  v77 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D30E8D9C();
  v14 = *(v13 - 8);
  v81 = v13;
  v82 = v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v72 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v66 - v20;
  v80 = *a1;
  if (qword_1EE313200 != -1)
  {
    swift_once();
  }

  v22 = sub_1D30E8B3C();
  v23 = __swift_project_value_buffer(v22, qword_1EE313208);
  v24 = sub_1D30E928C();
  sub_1D2FF17B0(a2, a3);
  v68 = v23;
  v25 = sub_1D30E8B1C();
  sub_1D2FF1804(a2, a3);
  v26 = os_log_type_enabled(v25, v24);
  v71 = a3;
  v69 = v17;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v67 = v8;
    v29 = v28;
    v83 = v28;
    *v27 = 136446466;
    v30 = v80;
    if (v80)
    {
      v31 = 0x676E696E676973;
    }

    else
    {
      v31 = 0x6974707972636E65;
    }

    v70 = v11;
    v76 = v21;
    if (v80)
    {
      v32 = 0xE700000000000000;
    }

    else
    {
      v32 = 0xEA00000000006E6FLL;
    }

    v33 = a2;
    v34 = sub_1D2FFEA04(v31, v32, &v83);

    *(v27 + 4) = v34;
    a2 = v33;
    *(v27 + 12) = 2082;
    v35 = sub_1D30E88EC();
    v37 = sub_1D2FFEA04(v35, v36, &v83);

    *(v27 + 14) = v37;
    v21 = v76;
    v11 = v70;
    _os_log_impl(&dword_1D2FD9000, v25, v24, "Install certificate for role: %{public}s from: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    v38 = v29;
    v8 = v67;
    MEMORY[0x1D38B3760](v38, -1, -1);
    MEMORY[0x1D38B3760](v27, -1, -1);
  }

  else
  {

    v30 = v80;
  }

  LOBYTE(v83) = v30;
  v39 = v78;
  result = sub_1D3036990(&v83, v21);
  v41 = v79;
  if (!v39)
  {
    v42 = *(v82 + 16);
    v43 = v72;
    v42(v72, v21, v81);
    (*(v73 + 104))(v8, *MEMORY[0x1E6968F68], v74);
    sub_1D3040AB4(v43, v8, v41);
    v44 = v77;
    if ((*(v77 + 48))(v41, 1, v11) == 1)
    {
      sub_1D3038CDC(v41);
      type metadata accessor for CertificateManagerError(0);
      sub_1D3038D90(&qword_1EC749FD8, type metadata accessor for CertificateManagerError, &unk_1D30F4BC0);
      swift_allocError();
      v42(v45, v21, v81);
      swift_willThrow();
      v46 = v21;
      v47 = *(v82 + 8);
      v82 += 8;
      return v47(v46, v81);
    }

    else
    {
      v78 = a2;
      (*(v44 + 32))(v75, v41, v11);
      v48 = v69;
      v76 = v21;
      v42(v69, v21, v81);
      v49 = sub_1D30E8B1C();
      v50 = sub_1D30E92BC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v70 = v11;
        v53 = v52;
        v83 = v52;
        *v51 = 136446466;
        v54 = v80 == 0;
        if (v80)
        {
          v55 = 0x676E696E676973;
        }

        else
        {
          v55 = 0x6974707972636E65;
        }

        v80 = v50;
        if (v54)
        {
          v56 = 0xEA00000000006E6FLL;
        }

        else
        {
          v56 = 0xE700000000000000;
        }

        v57 = sub_1D2FFEA04(v55, v56, &v83);

        *(v51 + 4) = v57;
        *(v51 + 12) = 2082;
        sub_1D3038D90(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v58 = v81;
        v59 = sub_1D30E977C();
        v61 = v60;
        v62 = *(v82 + 8);
        v62(v48, v58);
        v63 = sub_1D2FFEA04(v59, v61, &v83);

        *(v51 + 14) = v63;
        _os_log_impl(&dword_1D2FD9000, v49, v80, "Installing the %{public}s certificate at “%{public}s”…", v51, 0x16u);
        swift_arrayDestroy();
        v64 = v53;
        v11 = v70;
        MEMORY[0x1D38B3760](v64, -1, -1);
        MEMORY[0x1D38B3760](v51, -1, -1);
      }

      else
      {

        v62 = *(v82 + 8);
        v62(v48, v81);
      }

      v65 = v75;
      sub_1D30E894C();
      (*(v77 + 8))(v65, v11);
      return (v62)(v76, v81);
    }
  }

  return result;
}

uint64_t sub_1D303856C(unsigned __int8 *a1)
{
  v2 = v1;
  v55[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D30E8D9C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v49 - v9;
  v10 = *a1;
  if (qword_1EE313200 != -1)
  {
    swift_once();
  }

  v11 = sub_1D30E8B3C();
  __swift_project_value_buffer(v11, qword_1EE313208);
  v12 = sub_1D30E928C();
  v13 = sub_1D30E8B1C();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v52 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v53 = v8;
    v17 = v16;
    v55[0] = v16;
    *v15 = 136446210;
    if (v10)
    {
      v18 = 0x676E696E676973;
    }

    else
    {
      v18 = 0x6974707972636E65;
    }

    v51 = v4;
    if (v10)
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xEA00000000006E6FLL;
    }

    v20 = sub_1D2FFEA04(v18, v19, v55);
    v50 = v12;
    v21 = v10;
    v22 = v5;
    v23 = v20;
    v4 = v51;

    *(v15 + 4) = v23;
    v5 = v22;
    v10 = v21;
    _os_log_impl(&dword_1D2FD9000, v13, v50, "Uninstall certificate for role: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v24 = v17;
    v8 = v53;
    MEMORY[0x1D38B3760](v24, -1, -1);
    v25 = v15;
    v2 = v52;
    MEMORY[0x1D38B3760](v25, -1, -1);
  }

  LOBYTE(v55[0]) = v10;
  result = sub_1D3036990(v55, v54);
  if (!v2)
  {
    v53 = 0;
    (*(v5 + 16))(v8, v54, v4);
    v27 = sub_1D30E8B1C();
    v28 = sub_1D30E92BC();
    v29 = os_log_type_enabled(v27, v28);
    v49 = v5;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v55[0] = v31;
      *v30 = 136446466;
      v32 = v10 == 0;
      if (v10)
      {
        v33 = 0x676E696E676973;
      }

      else
      {
        v33 = 0x6974707972636E65;
      }

      v34 = v8;
      if (v32)
      {
        v35 = 0xEA00000000006E6FLL;
      }

      else
      {
        v35 = 0xE700000000000000;
      }

      v36 = sub_1D2FFEA04(v33, v35, v55);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2082;
      sub_1D3038D90(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v37 = sub_1D30E977C();
      v39 = v38;
      v40 = *(v5 + 8);
      v41 = v34;
      v42 = v4;
      v40(v41, v4);
      v43 = sub_1D2FFEA04(v37, v39, v55);

      *(v30 + 14) = v43;
      _os_log_impl(&dword_1D2FD9000, v27, v28, "Uninstalling the %{public}s certificate at “%{public}s”…", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v31, -1, -1);
      MEMORY[0x1D38B3760](v30, -1, -1);
    }

    else
    {

      v40 = *(v5 + 8);
      v42 = v4;
      v40(v8, v4);
    }

    v44 = [objc_opt_self() defaultManager];
    sub_1D30E8D3C();
    v45 = sub_1D30E906C();

    v55[0] = 0;
    v46 = [v44 removeItemAtPath:v45 error:v55];

    if (v46)
    {
      v47 = v55[0];
    }

    else
    {
      v48 = v55[0];
      sub_1D30E87DC();

      swift_willThrow();
    }

    return (v40)(v54, v42);
  }

  return result;
}

uint64_t sub_1D3038AE8()
{
  v1 = sub_1D30E8D9C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CertificateManagerError(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D303911C(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0x1000000000000011, 0x80000001D30EA860);
  sub_1D3038D90(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
  v8 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v8);

  MEMORY[0x1D38B2610](0x1000000000000027, 0x80000001D30EA880);
  v9 = v11[0];
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_1D3038CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CertificateManagerError(uint64_t a1)
{
  result = qword_1EC749FF0;
  if (!qword_1EC749FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D3038D90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D3038DF0()
{
  result = qword_1EC749FE0;
  if (!qword_1EC749FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749FE0);
  }

  return result;
}

uint64_t sub_1D3038E44(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1D2FF1804(result, a2);

    return sub_1D2FF1804(a3, a4);
  }

  return result;
}

uint64_t sub_1D3038E8C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1D2FF17B0(result, a2);

    return sub_1D2FF17B0(a3, a4);
  }

  return result;
}

uint64_t sub_1D3038ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FE8, &unk_1D30F4B50);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D3038F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FE8, &unk_1D30F4B50);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1D3038FD4(uint64_t a1)
{
  sub_1D303908C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1D30E8D9C();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_1D303908C()
{
  if (!qword_1EE313098)
  {
    v0 = sub_1D30E8D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE313098);
    }
  }
}

uint64_t sub_1D303911C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CertificateManagerError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3039188(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 >> 62)
  {
LABEL_11:
    v5 = sub_1D30E958C();
    v6 = a1;
    if (a1 && v5 < a1)
    {
      v6 = sub_1D30E958C();
    }

    v7 = v6;
    result = sub_1D30E958C();
    if (result < v7)
    {
      goto LABEL_21;
    }

    v8 = result;
    result = sub_1D30E958C();
    if ((result & 0x8000000000000000) == 0)
    {
      if (v7 < 0)
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      v9 = result;
      result = v7;
      if (v9 >= v8)
      {
        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D3039270()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE314400);
  __swift_project_value_buffer(v0, qword_1EE314400);
  return sub_1D30E8B2C();
}

uint64_t sub_1D30392F0(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE3143F8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D30E8B3C();
  __swift_project_value_buffer(v4, qword_1EE314400);
  v5 = sub_1D30E928C();

  v6 = sub_1D30E8B1C();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    sub_1D30E8EAC();

    v9 = sub_1D30E909C();
    v11 = sub_1D2FFEA04(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D2FD9000, v6, v5, "Init model container: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1D3039470(char a1)
{
  LOBYTE(v1) = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v153 = &v134 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v154 = *(v4 - 8);
  v155 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v152 = &v134 - v5;
  v6 = sub_1D30E8A6C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v143 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D30E898C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v142 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D30E89AC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v139 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D30E87FC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v137 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D30E89CC();
  v140 = *(v14 - 8);
  v141 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v138 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1D30E8AAC();
  v149 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v147 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1D30E8ABC();
  v146 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  KeyPath = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C8, &qword_1D30EEC10);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v145 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v134 - v22;
  v157 = sub_1D30E8A2C();
  v159 = *(v157 - 8);
  v24 = MEMORY[0x1EEE9AC00](v157);
  v144 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v156 = &v134 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v134 - v28;
  if (qword_1EE3143F8 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v30 = sub_1D30E8B3C();
    v31 = __swift_project_value_buffer(v30, qword_1EE314400);
    v32 = sub_1D30E928C();
    v33 = sub_1D30E8B1C();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109120;
      *(v34 + 4) = v1 & 1;
      _os_log_impl(&dword_1D2FD9000, v33, v32, "Collect weekly analytics bypassing rate limit: %{BOOL}d", v34, 8u);
      MEMORY[0x1D38B3760](v34, -1, -1);
    }

    v35 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v36 = sub_1D30E906C();
    v37 = [v35 initWithSuiteName_];

    v158 = v37;
    if ((v1 & 1) == 0)
    {
      v150 = v31;
      if (v37)
      {
        v47 = v37;
        v48 = sub_1D30E906C();
        v49 = [v47 objectForKey_];

        if (v49)
        {
          sub_1D30E93AC();
          swift_unknownObjectRelease();
        }

        else
        {
          v166 = 0u;
          v167 = 0u;
        }

        v60 = v157;
        v61 = v159;
        v171 = v166;
        v172 = v167;
        if (*(&v167 + 1))
        {
          v62 = swift_dynamicCast();
          (*(v61 + 56))(v23, v62 ^ 1u, 1, v60);
          v63 = *(v61 + 48);
          if (v63(v23, 1, v60) != 1)
          {
            (*(v61 + 32))(v29, v23, v60);
            goto LABEL_27;
          }

LABEL_25:
          sub_1D30E896C();
          v63 = *(v61 + 48);
          if (v63(v23, 1, v60) != 1)
          {
            sub_1D2FF14DC(v23, &qword_1EC7491C8, &qword_1D30EEC10);
          }

LABEL_27:
          v64 = v156;
          sub_1D30E8A0C();
          sub_1D303B6BC(&qword_1EE313FC0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          v136 = v29;
          v65 = sub_1D30E904C();
          v66 = v159 + 8;
          v67 = *(v159 + 8);
          v67(v64, v60);
          if (v65)
          {
            v68 = KeyPath;
            sub_1D30E8A9C();
            v69 = v149;
            v70 = v66;
            v71 = v147;
            (*(v149 + 13))(v147, *MEMORY[0x1E6969A48], v151);
            sub_1D30E8A0C();
            v135 = v63;
            v72 = v60;
            v73 = v145;
            sub_1D30E8A8C();
            v74 = v64;
            v75 = v70;
            v67(v74, v72);
            (*(v69 + 1))(v71, v151);
            (*(v146 + 8))(v68, v148);
            v76 = v159;
            v77 = v67;
            if (v135(v73, 1, v72) == 1)
            {
              sub_1D2FF14DC(v73, &qword_1EC7491C8, &qword_1D30EEC10);
              v78 = sub_1D30E92AC();
              v79 = sub_1D30E8B1C();
              v80 = os_log_type_enabled(v79, v78);
              v81 = v136;
              if (v80)
              {
                v82 = swift_slowAlloc();
                *v82 = 0;
                _os_log_impl(&dword_1D2FD9000, v79, v78, "A one-week-ago date couldn’t be calculated.", v82, 2u);
                MEMORY[0x1D38B3760](v82, -1, -1);
              }

              else
              {
              }

              v77(v81, v72);
            }

            else
            {
              v149 = v67;
              v151 = v75;
              v89 = *(v76 + 32);
              v90 = v144;
              v89(v144, v73, v72);
              sub_1D30E87EC();
              sub_1D30E899C();
              sub_1D30E897C();
              sub_1D30E8A5C();
              sub_1D30E8A7C();
              v91 = v138;
              sub_1D30E89BC();
              sub_1D303B6BC(&qword_1EE315260, MEMORY[0x1E69693E8], MEMORY[0x1E69693E0]);
              v92 = v141;
              v93 = v136;
              sub_1D30E8A1C();
              (*(v140 + 8))(v91, v92);
              v94 = v171;
              v95 = sub_1D30E89EC();
              v31 = v150;
              if (v95)
              {

                v96 = sub_1D30E8B1C();
                v97 = sub_1D30E92BC();

                if (os_log_type_enabled(v96, v97))
                {
                  v98 = v31;
                  v99 = swift_slowAlloc();
                  v100 = swift_slowAlloc();
                  *&v171 = v100;
                  *v99 = 136446210;
                  v101 = sub_1D2FFEA04(v94, *(&v94 + 1), &v171);

                  *(v99 + 4) = v101;
                  _os_log_impl(&dword_1D2FD9000, v96, v97, "Collecting weekly analytics now because they were last collected %{public}s…", v99, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v100);
                  MEMORY[0x1D38B3760](v100, -1, -1);
                  v102 = v99;
                  v31 = v98;
                  MEMORY[0x1D38B3760](v102, -1, -1);

                  v103 = v144;
                }

                else
                {

                  v103 = v90;
                }

                v130 = v157;
                v131 = v149;
                v149(v103, v157);
                v131(v93, v130);
                goto LABEL_8;
              }

              v125 = sub_1D30E927C();

              v126 = sub_1D30E8B1C();

              if (os_log_type_enabled(v126, v125))
              {
                v127 = swift_slowAlloc();
                v128 = swift_slowAlloc();
                *&v171 = v128;
                *v127 = 136446210;
                v129 = sub_1D2FFEA04(v94, *(&v94 + 1), &v171);

                *(v127 + 4) = v129;
                _os_log_impl(&dword_1D2FD9000, v126, v125, "Weekly analytics won’t be collected now because they were last collected only %{public}s.", v127, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v128);
                MEMORY[0x1D38B3760](v128, -1, -1);
                MEMORY[0x1D38B3760](v127, -1, -1);
              }

              else
              {
              }

              v132 = v157;
              v133 = v149;
              v149(v90, v157);
              v133(v93, v132);
            }
          }

          else
          {
            v83 = sub_1D30E92AC();
            v84 = sub_1D30E8B1C();
            if (os_log_type_enabled(v84, v83))
            {
              v85 = v60;
              v86 = swift_slowAlloc();
              *v86 = 0;
              _os_log_impl(&dword_1D2FD9000, v84, v83, "Someone invented time travel.", v86, 2u);
              MEMORY[0x1D38B3760](v86, -1, -1);

              v87 = v136;
              v88 = v85;
            }

            else
            {

              v87 = v136;
              v88 = v60;
            }

            v67(v87, v88);
          }

          return 0;
        }
      }

      else
      {
        v171 = 0u;
        v172 = 0u;
        v60 = v157;
        v61 = v159;
      }

      sub_1D2FF14DC(&v171, &qword_1EC749418, &qword_1D30F4A10);
      (*(v61 + 56))(v23, 1, 1, v60);
      goto LABEL_25;
    }

    v38 = sub_1D30E8B1C();
    v39 = sub_1D30E92BC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D2FD9000, v38, v39, "Collecting weekly analytics now, bypassing the rate limit…", v40, 2u);
      MEMORY[0x1D38B3760](v40, -1, -1);
    }

LABEL_8:
    v41 = v155;
    v42 = v153;
    sub_1D30E8E7C();
    v177[0] = type metadata accessor for AssetPackRecord(0);
    sub_1D30E8ACC();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    sub_1D303B6BC(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    v44 = MEMORY[0x1E69E7CC0];
    v45 = v152;
    sub_1D30E8EBC();
    v46 = sub_1D30E8E1C();
    (*(v154 + 8))(v45, v41);

    v50 = sub_1D303ABD4(v46);

    KeyPath = swift_getKeyPath();
    v29 = v50[2];
    if (v29)
    {
      v150 = v31;
      v176 = v44;
      v155 = v50;
      sub_1D3028C48(0, v29, 0);
      v51 = v155;
      v52 = v176;
      v53 = v29 - 1;
      for (i = 32; ; i += 80)
      {
        v166 = *(v51 + i);
        v55 = *(v51 + i + 16);
        v56 = *(v51 + i + 32);
        v57 = *(v51 + i + 64);
        v169 = *(v51 + i + 48);
        v170 = v57;
        v167 = v55;
        v168 = v56;
        v163 = v56;
        v164 = v169;
        v165 = v57;
        v161 = v166;
        v162 = v55;
        sub_1D303B600(&v166, v160);
        sub_1D303B600(&v166, v160);
        v29 = KeyPath;
        swift_getAtKeyPath();
        sub_1D2FF14DC(&v166, &qword_1EC74A018, &qword_1D30F4C90);
        v173 = v163;
        v174 = v164;
        v175 = v165;
        v171 = v161;
        v172 = v162;
        sub_1D2FF14DC(&v171, &qword_1EC74A018, &qword_1D30F4C90);
        KeyPath = v160[0];
        v176 = v52;
        v59 = v52[2];
        v58 = v52[3];
        if (v59 >= v58 >> 1)
        {
          sub_1D3028C48((v58 > 1), v59 + 1, 1);
          v51 = v155;
          v52 = v176;
        }

        v52[2] = v59 + 1;
        v52[v59 + 4] = KeyPath;
        if (!v53)
        {
          break;
        }

        --v53;
        KeyPath = v29;
      }
    }

    else
    {

      v52 = MEMORY[0x1E69E7CC0];
    }

    v104 = sub_1D303B4D4(v52);
    v23 = (v106 & 1) != 0 ? 0 : v105;
    v107 = (v106 & 1) != 0 ? 0 : v104;
    v108 = v52[2];
    if (!v108)
    {
      break;
    }

    v109 = 0;
    v1 = 0;
    while (1)
    {
      v110 = v52[v109 + 4];
      v111 = __OFADD__(v1, v110);
      v1 += v110;
      if (v111)
      {
        break;
      }

      if (v108 == ++v109)
      {
        v112 = v1 / v108;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_67:
    swift_once();
  }

  v1 = 0;
  v112 = 0.0;
LABEL_51:
  v113 = sub_1D30E927C();

  v114 = sub_1D30E8B1C();
  if (os_log_type_enabled(v114, v113))
  {
    v115 = swift_slowAlloc();
    *v115 = 134219008;
    *(v115 + 4) = v52[2];

    *(v115 + 12) = 2048;
    *(v115 + 14) = lround(v112);
    *(v115 + 22) = 2048;
    *(v115 + 24) = v1;
    *(v115 + 32) = 2048;
    *(v115 + 34) = v107;
    *(v115 + 42) = 2048;
    *(v115 + 44) = v23;
    _os_log_impl(&dword_1D2FD9000, v114, v113, "The %ld apps on this device that actively use Managed Background Assets have an average of %ld and a total of %ld asset packs downloaded and available. The least that an app has is %ld, and the most is %ld.", v115, 0x34u);
    MEMORY[0x1D38B3760](v115, -1, -1);
  }

  else
  {
  }

  v155 = sub_1D30E906C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A020, &qword_1D30F4C98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D30F2300;
  *(inited + 32) = 7235949;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = 7889261;
  *(inited + 64) = 0xE300000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 80) = 1851876717;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 104) = 7173491;
  *(inited + 112) = 0xE300000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 128) = 0x6E756F4373707061;
  *(inited + 136) = 0xE900000000000074;
  v117 = v52[2];

  *(inited + 144) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1D3034CA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A028, &qword_1D30F4CA0);
  swift_arrayDestroy();
  sub_1D303B670();
  v118 = sub_1D30E901C();

  v119 = v155;
  AnalyticsSendEvent();

  if (v158)
  {
    v120 = v158;
    v121 = v156;
    sub_1D30E8A0C();
    v122 = sub_1D30E89DC();
    (*(v159 + 8))(v121, v157);
    v123 = sub_1D30E906C();
    [v120 setObject:v122 forKey:v123];
  }

  return 1;
}

uint64_t sub_1D303AA08@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A030, &qword_1D30F4CD0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D303B7A4(&qword_1EE313FC8, MEMORY[0x1E6968DA8]);
  sub_1D30E87BC();
  swift_getKeyPath();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A038, &unk_1D30F4D00);
  a2[4] = sub_1D303B704();
  __swift_allocate_boxed_opaque_existential_0Tm(a2);
  sub_1D30E876C();

  (*(v4 + 8))(v6, v3);
}

void *sub_1D303ABD4(unint64_t a1)
{
  v8 = a1;
  v46 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_93:
  v1 = v3;
  v9 = sub_1D30E958C();
  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v45 = v8 & 0xC000000000000001;
  v44 = v9;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1D38B29E0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v10 = *(v8 + 32);
  }

  swift_getKeyPath();
  sub_1D303B6BC(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D303B6BC(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();

  v2 = v60;
  v65 = v10;
  v1 = v61;
  v6 = v62;
  v7 = v64;
  v59 = v63;
  v11 = sub_1D3039188(1uLL, v8);
  v13 = v12;
  v3 = v14;

  if (v11 == v13)
  {
    v5 = 0;
    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_65;
  }

  v15 = v13;
  v5 = 0;
  v41 = v8 & 0xFFFFFFFFFFFFFF8;
  v38 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
  v47 = MEMORY[0x1E69E7CC0];
  v39 = v8;
  v40 = v13 - 1;
  v16 = v11;
  v51 = v13;
  v52 = v11;
  do
  {
    v49 = v5;
    v57 = v65;
    v55 = v2;
    v50 = v1;
    v58 = v6;
    v56 = v59;
    v54 = v7;
    v5 = v16;
    v17 = (2 * v16) | 1;
    v4 = v16;
    while (1)
    {
      if (v16 < v11 || v5 >= v15)
      {
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1D38B29E0](v5, v3);
      }

      else
      {
        if (v5 < 0)
        {
          goto LABEL_91;
        }

        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        v18 = *(v3 + 32 + 8 * v5);
      }

      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v2 = v60;
      v65 = v18;
      v6 = v62;
      v7 = v64;
      v59 = v63;
      v53 = v61;
      if (!v58 || !v62)
      {
        v1 = 1;
        if (v57 != v18 || v55 != v60)
        {
          goto LABEL_32;
        }

        if (v56 != v63 || v54 != v64)
        {
          goto LABEL_35;
        }

        goto LABEL_37;
      }

      if (v50 != v61 || v58 != v62)
      {
        break;
      }

      v1 = 1;
      if (v57 != v18 || v55 != v60)
      {
        goto LABEL_32;
      }

      if (v56 != v63 || v54 != v64)
      {
        goto LABEL_35;
      }

LABEL_38:
      ++v5;
      v17 += 2;
      v15 = v51;
      v11 = v52;
      v16 = v4;
      if (v51 == v5)
      {
        v5 = v49;
        v6 = v58;
        v65 = v57;
        v2 = v55;
        v1 = v50;
        v59 = v56;
        v7 = v54;
        goto LABEL_65;
      }
    }

    v1 = sub_1D30E97CC();
    if (v57 != v18 || v55 != v60)
    {
LABEL_32:
      if ((sub_1D30E97CC() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (v56 != v63 || v54 != v64)
    {
LABEL_35:
      if ((sub_1D30E97CC() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (v1)
    {
LABEL_37:

      goto LABEL_38;
    }

LABEL_41:
    if (v5 < v49)
    {
      goto LABEL_98;
    }

    if (v46)
    {
      v1 = v47;
      if (sub_1D30E958C() < v49)
      {
        goto LABEL_99;
      }

      result = sub_1D30E958C();
    }

    else
    {
      result = *(v41 + 16);
      v1 = v47;
      if (result < v49)
      {
        goto LABEL_99;
      }
    }

    if (result < v5)
    {
      goto LABEL_100;
    }

    v48 = v1;
    if (!v45 || v49 == v5)
    {

      if (!v46)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v49 >= v5)
      {
        __break(1u);
        goto LABEL_105;
      }

      type metadata accessor for AssetPackRecord(0);

      v20 = v49;
      do
      {
        v21 = v20 + 1;
        sub_1D30E94AC();
        v20 = v21;
      }

      while (v5 != v21);
      if (!v46)
      {
LABEL_55:
        v22 = v41;
        v42 = v38;
        goto LABEL_58;
      }
    }

    v22 = sub_1D30E959C();
    v42 = v23;
    v49 = v24;
    v17 = v25;
LABEL_58:
    v26 = v48;

    v43 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1D30D7F80(0, v48[2] + 1, 1, v48);
    }

    v28 = v26[2];
    v27 = v26[3];
    if (v28 >= v27 >> 1)
    {
      v47 = sub_1D30D7F80((v27 > 1), v28 + 1, 1, v26);
    }

    else
    {
      v47 = v26;
    }

    v47[2] = v28 + 1;
    v29 = &v47[10 * v28];
    v29[4] = v57;
    v29[5] = v55;
    v29[6] = v50;
    v29[7] = v58;
    v29[8] = v56;
    v29[9] = v54;
    v29[10] = v43;
    v29[11] = v42;
    v29[12] = v49;
    v29[13] = v17;

    v16 = v5 + 1;
    v8 = v39;
    v1 = v61;
    v15 = v51;
    v11 = v52;
  }

  while (v40 != v5);
LABEL_65:

  v4 = v44;
  if (v5 == v44)
  {

    v4 = v47;
    goto LABEL_89;
  }

  if (v44 < v5)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v53 = v1;
  if (v46)
  {
    if (v8 < 0)
    {
      v1 = v8;
    }

    else
    {
      v1 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1D30E958C() >= v5)
    {
      result = sub_1D30E958C();
      goto LABEL_76;
    }

LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < v5)
  {
    goto LABEL_102;
  }

LABEL_76:
  if (result < v44)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (!v45)
  {

    if (!v46)
    {
      goto LABEL_82;
    }

    goto LABEL_84;
  }

  if (v5 >= v44)
  {
LABEL_105:
    __break(1u);
    return result;
  }

  type metadata accessor for AssetPackRecord(0);

  v30 = v5;
  do
  {
    v31 = v30 + 1;
    sub_1D30E94AC();
    v30 = v31;
  }

  while (v44 != v31);
  if (!v46)
  {
LABEL_82:
    v1 = v8 & 0xFFFFFFFFFFFFFF8;
    v58 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v8 = (2 * v44) | 1;
    goto LABEL_85;
  }

LABEL_84:

  v1 = sub_1D30E959C();
  v58 = v32;
  v5 = v33;
  v8 = v34;
LABEL_85:

  v4 = v47;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_104:
    v4 = sub_1D30D7F80(0, v4[2] + 1, 1, v4);
  }

  v36 = v4[2];
  v35 = v4[3];
  if (v36 >= v35 >> 1)
  {
    v4 = sub_1D30D7F80((v35 > 1), v36 + 1, 1, v4);
  }

  v4[2] = v36 + 1;
  v37 = &v4[10 * v36];
  v37[4] = v65;
  v37[5] = v2;
  v37[6] = v53;
  v37[7] = v6;
  v37[8] = v59;
  v37[9] = v7;
  v37[10] = v1;
  v37[11] = v58;
  v37[12] = v5;
  v37[13] = v8;

LABEL_89:

  return v4;
}

uint64_t sub_1D303B4D4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  v4 = a1 + 4;
  result = a1[4];
  if (v1 != 1)
  {
    v5 = a1[5];
    if (v5 <= result)
    {
      v6 = result;
    }

    else
    {
      v6 = v5;
    }

    if (v5 < result)
    {
      result = v5;
    }

    if (v1 != 2)
    {
      v7 = 2;
      v8 = result;
      v9 = v6;
      while (v7 < v1)
      {
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_29;
        }

        v11 = v4[v7];
        v7 = v1;
        v13 = v11;
        if (v12 != v1)
        {
          if (v12 >= v1)
          {
            goto LABEL_30;
          }

          v7 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_31;
          }

          v13 = v4[v12];
        }

        if (v13 <= v11)
        {
          v10 = v11;
        }

        else
        {
          v10 = v13;
        }

        if (v13 < v11)
        {
          v11 = v13;
        }

        if (v11 < v8)
        {
          result = v11;
          v8 = v11;
        }

        if (v10 > v9)
        {
          v9 = v10;
        }

        if (v7 == v1)
        {
          return result;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D303B5A4()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D303B600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A018, &qword_1D30F4C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D303B670()
{
  result = qword_1EE313000;
  if (!qword_1EE313000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE313000);
  }

  return result;
}

uint64_t sub_1D303B6BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D303B704()
{
  result = qword_1EE313FE8;
  if (!qword_1EE313FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A038, &unk_1D30F4D00);
    sub_1D303B7A4(&qword_1EE313FD0, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE313FE8);
  }

  return result;
}

uint64_t sub_1D303B7A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A030, &qword_1D30F4CD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D303B7F4(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v2 = MEMORY[0x1E698C6A0];
    }

    else
    {
      v2 = MEMORY[0x1E698C6B0];
    }
  }

  else if (a1)
  {
    v2 = MEMORY[0x1E698C6A8];
  }

  else
  {
    v1 = objc_opt_self();
    if ([v1 deviceIsiPad])
    {
      v2 = MEMORY[0x1E698C6B8];
    }

    else
    {
      v4 = [v1 deviceIsMac];
      v2 = MEMORY[0x1E698C6B8];
      if ((v4 & 1) == 0 && ![v1 deviceIsRealityDevice])
      {
        v2 = MEMORY[0x1E698C6C0];
      }
    }
  }

  return *v2;
}

uint64_t sub_1D303B8B4()
{
  v1 = v0;
  v2 = [v0 infoDictionary];
  v3 = sub_1D2FEBF78(0xD000000000000012, 0x80000001D30EC600);

  if (v3)
  {
    v4 = [v1 infoDictionary];
    v5 = sub_1D3030FBC(0x6566696E614D4142, 0xED00004C52557473, MEMORY[0x1E69E6158]);

    if (v5)
    {
      v6 = [v1 bundleIdentifier];
      if (v6)
      {
        v7 = v6;
        v8 = sub_1D30E908C();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      sub_1D303B9FC();
      swift_allocError();
      *v12 = v8;
      v12[1] = v10;
      swift_willThrow();
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_1D303B9FC()
{
  result = qword_1EC74A040;
  if (!qword_1EC74A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A040);
  }

  return result;
}

uint64_t sub_1D303BA64(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x1000000000000071;
  }

  sub_1D30E948C();
  MEMORY[0x1D38B2610](0x1000000000000035, 0x80000001D30EC6A0);
  MEMORY[0x1D38B2610](a1, a2);
  MEMORY[0x1D38B2610](0x1000000000000059, 0x80000001D30EC6E0);
  return 0;
}

unint64_t sub_1D303BB38()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CB8, &qword_1D30F33E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D30EE930;
    *(inited + 32) = sub_1D30E908C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v4;
    *(inited + 48) = v2;
    *(inited + 56) = v1;

    v5 = sub_1D30349B8(inited);
    swift_setDeallocating();
    sub_1D303DB58(inited + 32);
    return v5;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];

    return sub_1D30349B8(v7);
  }
}

uint64_t sub_1D303BC60()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D303BC90(uint64_t a1)
{
  v2 = sub_1D303DB04();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D303BCCC(uint64_t a1)
{
  v2 = sub_1D303DB04();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D303BD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ErrorCoding.NSErrorProjection(0, a5, a6, a4);
  swift_getWitnessTable();
  return sub_1D30E984C();
}

unint64_t sub_1D303BD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a2;
    v7 = sub_1D30E908C();
    v9 = v8;
    v21 = MEMORY[0x1E69E6158];
    *&v20 = a1;
    *(&v20 + 1) = v5;
    sub_1D2FDCC64(&v20, &v18);

    LOBYTE(v5) = swift_isUniquelyReferenced_nonNull_native();
    v17 = a4;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(&v18, v19);
    MEMORY[0x1EEE9AC00](v10);
    v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    sub_1D303D6E4(*v12, v12[1], v7, v9, v5, &v17);

    __swift_destroy_boxed_opaque_existential_1(&v18);
    a4 = v17;
  }

  else
  {
  }

  v14 = sub_1D303BF20(a4);

  return v14;
}

unint64_t sub_1D303BF20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F90, &unk_1D30F4AB0);
    v2 = sub_1D30E95CC();
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_1D2FF1430(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_1D2FDCC64(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A138, &qword_1D30F5388);
        swift_dynamicCast();
        sub_1D2FDCC64(&v23, v25);
        sub_1D2FDCC64(v25, v26);
        sub_1D2FDCC64(v26, &v24);
        result = sub_1D3032698(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_1D2FDCC64(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_1D2FDCC64(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D303C1E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDC6AD0](a1, WitnessTable);
}

uint64_t sub_1D303C23C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDC6AC0](a1, WitnessTable);
}

unint64_t sub_1D303C290()
{
  v1 = *v0;
  v2 = 0x656D614E65707974;
  v3 = 0x6E69616D6F64;
  v4 = 1701080931;
  if (v1 != 3)
  {
    v4 = 0x6F666E4972657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D303C324@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D303D94C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D303C34C(uint64_t a1)
{
  v2 = sub_1D303CC8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D303C388(uint64_t a1)
{
  v2 = sub_1D303CC8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D303C404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, a2);
  v11 = sub_1D30E97AC();
  if (v11)
  {
    v12 = v11;
    v13 = *(v8 + 8);
    v13(v10, a2);
  }

  else
  {
    v12 = swift_allocError();
    (*(v8 + 32))(v14, v10, a2);
    v13 = *(v8 + 8);
  }

  DynamicType = swift_getDynamicType();
  *a4 = v12;
  a4[1] = DynamicType;
  a4[2] = a3;
  return (v13)(a1, a2);
}

uint64_t ErrorCoding.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v54[4] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A048, &qword_1D30F4DD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D303CC8C();
  sub_1D30E990C();
  if (!v2)
  {
    LOBYTE(v54[0]) = 0;
    v9 = sub_1D30E963C();
    v11 = v10;
    v50 = v9;
    LOBYTE(v54[0]) = 1;
    sub_1D30E961C();
    if (!v12 || (v13 = sub_1D30E949C(), , !v13))
    {
      v29 = sub_1D303CCE0();
      v24 = &type metadata for ErrorCoding.SwiftErrorProjection;
      v30 = swift_allocError();
      *v31 = v50;
      v31[1] = v11;
      v28 = v30;
      (*(v6 + 8))(v8, v5);
      goto LABEL_11;
    }

    v14 = dynamic_cast_existential_2_conditional(v13, v13, MEMORY[0x1E6968190], MEMORY[0x1E6968EF0]);
    if (v14)
    {
      v48 = v16;
      v49 = v15;
      v17 = v14;
      LOBYTE(v54[0]) = 3;
      v47 = sub_1D30E965C();
      LOBYTE(v51) = 4;
      sub_1D2FF96E8();
      sub_1D30E967C();
      v44 = v17;
      v46 = objc_opt_self();
      v19 = v52;
      v18 = v53;
      v45 = sub_1D30E891C();
      sub_1D2FF1804(v19, v18);
      v52 = 0;
      v20 = v45;
      v21 = [v46 propertyListWithData:v45 options:0 format:0 error:&v52];

      v22 = v52;
      if (v21)
      {
        sub_1D30E93AC();
        swift_unknownObjectRelease();
        sub_1D2FF1430(v54, &v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A080, &qword_1D30F4DE0);
        if (swift_dynamicCast())
        {
          v23 = v51;
          v45 = v51;
          v46 = objc_opt_self();
          v24 = v44;
          v25 = sub_1D303CDBC(v44, v50, v11, v47, v23, v44, v49);

          v26 = sub_1D30E87CC();

          v27 = [v46 launderError_];
          v28 = v27;
          __swift_destroy_boxed_opaque_existential_1(v54);
          (*(v6 + 8))(v8, v5);
          v29 = *(v49 + 8);
LABEL_11:
          *a2 = v28;
          a2[1] = v24;
          a2[2] = v29;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        goto LABEL_19;
      }

      v40 = v22;

      sub_1D30E87DC();

      swift_willThrow();
    }

    else
    {

      LOBYTE(v51) = 4;
      sub_1D2FF96E8();
      sub_1D30E967C();
      v50 = objc_opt_self();
      v33 = v52;
      v34 = v53;
      v35 = sub_1D30E891C();
      sub_1D2FF1804(v33, v34);
      v52 = 0;
      v36 = v35;
      v37 = [v50 propertyListWithData:v35 options:0 format:0 error:&v52];

      v38 = v52;
      if (v37)
      {
        sub_1D30E93AC();
        swift_unknownObjectRelease();
        sub_1D2FF1430(v54, &v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A060, &qword_1D30F4DD8);
        if (swift_dynamicCast())
        {
          LOBYTE(v52) = 2;
          v50 = sub_1D30E963C();
          LOBYTE(v52) = 3;
          v49 = sub_1D30E965C();
          v48 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v41 = sub_1D30E906C();

          v42 = sub_1D30E901C();

          v28 = [v48 initWithDomain:v41 code:v49 userInfo:v42];

          __swift_destroy_boxed_opaque_existential_1(v54);
          (*(v6 + 8))(v8, v5);
          v24 = sub_1D303D400();
          v29 = sub_1D303D44C();
          goto LABEL_11;
        }

LABEL_19:
        sub_1D303D3AC();
        swift_allocError();
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v54);
        goto LABEL_3;
      }

      v39 = v38;
      sub_1D30E87DC();

      swift_willThrow();
    }

LABEL_3:
    (*(v6 + 8))(v8, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D303CC8C()
{
  result = qword_1EC74A050;
  if (!qword_1EC74A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A050);
  }

  return result;
}

unint64_t sub_1D303CCE0()
{
  result = qword_1EC74A058;
  if (!qword_1EC74A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A058);
  }

  return result;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D303CDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for ErrorCoding.NSErrorProjection(0, a6, a7, a4);
  swift_getWitnessTable();
  v11 = swift_allocError();
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;

  return v11;
}

void ErrorCoding.encode(to:)(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A088, &qword_1D30F4DE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D303CC8C();
  v8 = v3;
  sub_1D30E992C();
  swift_getErrorValue();
  sub_1D30E984C();
  LOBYTE(v26) = 0;
  v9 = v24;
  sub_1D30E970C();
  if (v9)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v10 = v4;

    if ((swift_conformsToProtocol2() && v7 || v7 == sub_1D303D400()) && (sub_1D30E956C(), v11))
    {
      LOBYTE(v26) = 1;
      sub_1D30E970C();

      v12 = sub_1D30E87CC();
      v13 = [v12 domain];
      sub_1D30E908C();

      LOBYTE(v26) = 2;
      sub_1D30E970C();

      [v12 code];
      LOBYTE(v26) = 3;
      sub_1D30E972C();
      v23 = v8;
      v24 = objc_opt_self();
      v14 = [v12 userInfo];
      sub_1D30E902C();

      v15 = sub_1D30E901C();

      v26 = 0;
      v16 = [v24 dataWithPropertyList:v15 format:200 options:0 error:&v26];

      v17 = v26;
      if (v16)
      {
        v18 = sub_1D30E893C();
        v20 = v19;

        v26 = v18;
        v27 = v20;
        v25 = 4;
        sub_1D2FF92C4();
        v21 = v23;
        sub_1D30E974C();

        sub_1D2FF1804(v26, v27);
        (*(v10 + 8))(v6, v21);
      }

      else
      {
        v22 = v17;
        sub_1D30E87DC();

        swift_willThrow();
        (*(v4 + 8))(v6, v23);
      }
    }

    else
    {
      (*(v4 + 8))(v6, v3);
    }
  }
}

unint64_t sub_1D303D3AC()
{
  result = qword_1EC74A068;
  if (!qword_1EC74A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A068);
  }

  return result;
}

unint64_t sub_1D303D400()
{
  result = qword_1EC74A070;
  if (!qword_1EC74A070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC74A070);
  }

  return result;
}

unint64_t sub_1D303D44C()
{
  result = qword_1EC74A078;
  if (!qword_1EC74A078)
  {
    sub_1D303D400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A078);
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

uint64_t sub_1D303D4B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D303D500(uint64_t result, int a2, int a3)
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

unint64_t sub_1D303D584()
{
  result = qword_1EC74A090;
  if (!qword_1EC74A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A090);
  }

  return result;
}

unint64_t sub_1D303D5E0()
{
  result = qword_1EC74A098;
  if (!qword_1EC74A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A098);
  }

  return result;
}

unint64_t sub_1D303D638()
{
  result = qword_1EC74A0A0;
  if (!qword_1EC74A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A0A0);
  }

  return result;
}

unint64_t sub_1D303D690()
{
  result = qword_1EC74A0A8;
  if (!qword_1EC74A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A0A8);
  }

  return result;
}

_OWORD *sub_1D303D6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E69E6158];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = sub_1D3032698(a3, a4);
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
      return sub_1D2FDCC64(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_1D30343B0();
    goto LABEL_7;
  }

  sub_1D3033224(v16, a5 & 1);
  v22 = sub_1D3032698(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1D30E981C();
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
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v10);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_1D303D8C8(v13, a3, a4, *v26, v26[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(&v28);
}

_OWORD *sub_1D303D8C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x1E69E6158];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_1D2FDCC64(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_1D303D94C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001D30EC740 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E65707974 && a2 == 0xE800000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D30E97CC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1D303DB04()
{
  result = qword_1EC74A0B0[0];
  if (!qword_1EC74A0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC74A0B0);
  }

  return result;
}

uint64_t sub_1D303DB58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CC0, &qword_1D30F33E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D303DBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D303DC14(uint64_t a1, int a2)
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

uint64_t sub_1D303DC5C(uint64_t result, int a2, int a3)
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

uint64_t sub_1D303DE54()
{
  v0 = sub_1D30E8D9C();
  __swift_allocate_value_buffer(v0, qword_1EE3139D8);
  __swift_project_value_buffer(v0, qword_1EE3139D8);
  return MEMORY[0x1D38B2220](0xD000000000000013, 0x80000001D30EC800);
}

uint64_t sub_1D303DEB8()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE3139B0);
  __swift_project_value_buffer(v0, qword_1EE3139B0);
  return sub_1D30E8B2C();
}