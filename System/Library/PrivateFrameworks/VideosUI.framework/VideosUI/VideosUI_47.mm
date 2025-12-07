unint64_t sub_1E39DB998(__int16 a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1E3928950(a2);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30238, &unk_1E42B0EE8);
  result = sub_1E4207644();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1E3928950(a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7] + 16 * v12;
    *v17 = a4;
    *(v17 + 8) = a1;
    *(v17 + 9) = HIBYTE(a1) & 1;
  }

  else
  {

    return sub_1E39DBACC(v12, a2, a1 & 0x1FF, v16, a4);
  }

  return result;
}

unint64_t sub_1E39DBACC(unint64_t result, uint64_t a2, __int16 a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v5 = a4[7] + 16 * result;
  *v5 = a5;
  *(v5 + 8) = a3;
  *(v5 + 9) = HIBYTE(a3) & 1;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void (*sub_1E39DBB20(void *a1, uint64_t a2))(uint64_t)
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_1E39DC064(v4);
  v4[9] = sub_1E39DBC4C(v4 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1E39DC8E4;
}

void (*sub_1E39DBBB0(void *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1E377F45C(v6);
  v6[9] = sub_1E39DBE48(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1E39DBC48;
}

void (*sub_1E39DBC4C(void *a1, uint64_t a2, char a3))(double **a1)
{
  v4 = v3;
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[2] = a2;
  v7[3] = v3;
  v8 = *v3;
  v9 = sub_1E3928950(a2);
  *(v7 + 10) = v10 & 1;
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30238, &unk_1E42B0EE8);
  if (sub_1E4207644())
  {
    v13 = sub_1E3928950(a2);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[4] = v11;
  if (v12)
  {
    v15 = *(*v4 + 56) + 16 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    if (*(v15 + 9))
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18 | v17;
  }

  else
  {
    v16 = 0;
    v19 = 512;
  }

  *v7 = v16;
  *(v7 + 4) = v19;
  return sub_1E39DBD98;
}

void sub_1E39DBD98(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  v3 = *(*a1 + 10);
  if ((v2 & 0xFF00) == 0x200)
  {
    if (*(*a1 + 10))
    {
      sub_1E4207664();
    }
  }

  else
  {
    v4 = *v1;
    v6 = *(v1 + 3);
    v5 = *(v1 + 4);
    if (v3)
    {
      v7 = (*v6)[7] + 16 * v5;
      *v7 = v4;
      *(v7 + 8) = v2;
      *(v7 + 9) = HIBYTE(v2) & 1;
    }

    else
    {
      sub_1E39DBACC(v5, *(v1 + 2), v2 & 0x1FF, *v6, v4);
    }
  }

  free(v1);
}

void (*sub_1E39DBE48(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_1E327D33C(a2, a3);
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30220, &qword_1E42B0E88);
  if (sub_1E4207644())
  {
    v15 = sub_1E327D33C(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[4] = v13;
  if (v14)
  {
    v17 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v9 = v17;
  return sub_1E39DBF88;
}

void sub_1E39DBF88(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1E377E1B0(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_1E3782C70(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    sub_1E4207664();
  }

  free(v1);
}

uint64_t (*sub_1E39DC064(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1E39DC8DC;
}

char *sub_1E39DC08C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E39DC0CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E39DC0AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E39DC1D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E39DC0CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30240, &unk_1E42B0EF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1E39DC1D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30248, &qword_1E42B0F08);
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
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void sub_1E39DC2D0(uint64_t a1, char a2, void *a3)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
LABEL_13:

    return;
  }

  v26 = a1;
  v4 = 0;
  v5 = (a1 + 49);
  while (1)
  {
    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1E4207A74();
      __break(1u);
      goto LABEL_22;
    }

    v6 = *(v5 - 17);
    v7 = *(v5 - 9);
    v8 = *v5;
    v9 = *(v5 - 1);
    v10 = *a3;
    v12 = sub_1E3928950(v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30238, &unk_1E42B0EE8);
      sub_1E4207654();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v19[6] + 8 * v12) = v6;
    v20 = v19[7] + 16 * v12;
    *v20 = v7;
    *(v20 + 8) = v9;
    *(v20 + 9) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v4;
    v19[2] = v23;
    v5 += 24;
    a2 = 1;
    a1 = v26;
    if (v27 == v4)
    {
      goto LABEL_13;
    }
  }

  sub_1E39DB714(v15, a2 & 1);
  v17 = sub_1E3928950(v6);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0xD00000000000001BLL, 0x80000001E426B040);
  sub_1E4207614();
  MEMORY[0x1E69109E0](39, 0xE100000000000000);
  sub_1E42076B4();
  __break(1u);
}

void *sub_1E39DC5B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30260, &qword_1E42B0F20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30268, &qword_1E42B0F28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E39DC6E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30250, &qword_1E42B0F10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30258, &qword_1E42B0F18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E39DC834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30228;
  if (!qword_1ECF30228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30228);
  }

  return result;
}

unint64_t sub_1E39DC888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30270;
  if (!qword_1ECF30270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30270);
  }

  return result;
}

unint64_t sub_1E39DC8E8()
{
  result = qword_1EE283350;
  if (!qword_1EE283350)
  {
    type metadata accessor for AppEnvironment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE283350);
  }

  return result;
}

double sub_1E39DC940@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for AppEnvironment(0);
  sub_1E39DC8E8();
  a3[2] = sub_1E4201754();
  a3[3] = v8;
  v9 = type metadata accessor for RoomBanner(0);
  v10 = *(v9 + 28);
  *(a3 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for CGSize(0);
  sub_1E42038E4();
  v11 = a3 + *(v9 + 32);
  result = *&v13;
  *v11 = v13;
  *(v11 + 2) = v14;
  return result;
}

uint64_t type metadata accessor for RoomBanner(uint64_t a1)
{
  result = qword_1EE2A9150;
  if (!qword_1EE2A9150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E39DCA78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30278, &qword_1E42B0F60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v17 - v3;
  *v4 = sub_1E4201D44();
  *(v4 + 1) = 0;
  v4[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30280, &qword_1E42B0F68);
  sub_1E39DCBF4();
  v5 = (v0 + *(type metadata accessor for RoomBanner(0) + 32));
  v6 = *(v5 + 2);
  v18 = *v5;
  v19 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E4203914();
  v7 = v17[0];
  v8 = v17[1];
  v9 = *&v17[2];
  v10 = *&v17[3];
  OUTLINED_FUNCTION_1_112();
  v14 = sub_1E32752B0(v11, v12, &qword_1E42B0F60, v13);
  v15 = OUTLINED_FUNCTION_51_1();
  sub_1E41DBF30(v7, v8, v15 & 1, v1, v14, v9, v10);

  return sub_1E325F6F0(v4, &qword_1ECF30278, &qword_1E42B0F60);
}

void sub_1E39DCBF4()
{
  OUTLINED_FUNCTION_21_5();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30290, &qword_1E42B0FD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30298, &qword_1E42B0FD8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  sub_1E39DCF54(&v41 - v19);
  sub_1E39DD580();
  if (!*v4 || (v21 = sub_1E39C408C()) == 0 || (v22 = *v21, , v22 != _TtC8VideosUI13TextViewModel))
  {
    v42 = 0;
    v43 = 1;
    v34 = 0.0;
    v29 = 0.0;
    v0 = 0;
    v1 = 0;
    v2 = 0;
LABEL_10:
    sub_1E3294EE4(v20, v17, &qword_1ECF30298, &qword_1E42B0FD8);
    sub_1E3294EE4(v13, v10, &qword_1ECF30290, &qword_1E42B0FD0);
    sub_1E3294EE4(v17, v6, &qword_1ECF30298, &qword_1E42B0FD8);
    v36 = v10;
    v37 = v6;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF302A0, &qword_1E42B0FE0);
    sub_1E3294EE4(v36, v37 + *(v38 + 48), &qword_1ECF30290, &qword_1E42B0FD0);
    v39 = v37 + *(v38 + 64);
    *v39 = v34;
    *(v39 + 8) = v42;
    *(v39 + 16) = v29;
    *(v39 + 24) = v0;
    *(v39 + 32) = v1;
    *(v39 + 40) = v2;
    *(v39 + 48) = 0;
    *(v39 + 49) = v43;
    sub_1E325F6F0(v13, &qword_1ECF30290, &qword_1E42B0FD0);
    sub_1E325F6F0(v20, &qword_1ECF30298, &qword_1E42B0FD8);
    sub_1E325F6F0(v36, &qword_1ECF30290, &qword_1E42B0FD0);
    sub_1E325F6F0(v17, &qword_1ECF30298, &qword_1E42B0FD8);
    OUTLINED_FUNCTION_20_0();
    return;
  }

  v23 = v4[2];
  if (v23)
  {
    v24 = *(*v23 + 184);

    v26 = COERCE_DOUBLE(v24(v25));
    v28 = v27;

    if (v28)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v26;
    }

    type metadata accessor for LayoutGrid();
    sub_1E3A258E4(v29);
    j_nullsub_1(v30, v31, v32, v33);
    OUTLINED_FUNCTION_3();
    v34 = sub_1E3FFE5B8(0, 1);
    v35 = sub_1E4202734();
    v43 = 0;
    v44 = 0;
    v42 = v35;
    goto LABEL_10;
  }

  type metadata accessor for AppEnvironment(0);
  v40 = sub_1E39DC8E8();
  OUTLINED_FUNCTION_6_46(v40);
  __break(1u);
}

uint64_t sub_1E39DCF54@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF302C0, &qword_1E42B1000);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v51 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF302C8, &qword_1E42B1008);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF302D0, &qword_1E42B1010);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v51 - v18;
  if (*v1 && sub_1E39C408C())
  {
    v55 = v3;
    type metadata accessor for ImageViewModel();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = v19;
      v54 = a1;
      v21 = v1 + *(type metadata accessor for RoomBanner(0) + 32);
      v22 = *(v21 + 2);
      v59 = *v21;
      v60 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
      sub_1E42038F4();
      v23 = v58;
      v24 = *(*v20 + 392);

      v26 = v24(v25);

      if (v26)
      {
        type metadata accessor for ImageLayout();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
        }
      }

      else
      {
        v27 = 0;
      }

      type metadata accessor for LayoutGrid();
      v33 = sub_1E3A2579C(*&v23);
      v34 = sub_1E3A24FDC(v33);
      v51 = v27;
      if (v27)
      {
        if (v34)
        {
          v35 = 3;
        }

        else
        {
          v35 = 4;
        }

        (*(*v27 + 1664))(&v59, 6, v35, MEMORY[0x1E69E7DE0]);
        if (BYTE8(v59))
        {
          v36 = 0.0;
        }

        else
        {
          v36 = *&v59;
        }
      }

      else
      {
        v36 = 0.0;
      }

      *v6 = sub_1E4203D84();
      v6[1] = v37;
      v38 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF302D8, &unk_1E42B1018) + 44);
      v39 = j__OUTLINED_FUNCTION_18();
      v40 = j__OUTLINED_FUNCTION_18();
      sub_1E3EB9C0C(0, 0, 1, v23, 0, 0, 0, 2, &v59, 0, 1, 0, 1, 0, 2, v39 & 1, v40 & 1);
      v41 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v20, &v59, 0, v41 & 1, 0, 0, v38);
      sub_1E375C31C(&v59);
      *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEC0, &unk_1E42C8F40) + 36)) = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB88, &unk_1E42D97B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4299720;
      v43 = sub_1E42026E4();
      *(inited + 32) = v43;
      v44 = sub_1E4202704();
      *(inited + 33) = v44;
      sub_1E42026F4();
      sub_1E42026F4();
      if (sub_1E42026F4() != v43)
      {
        sub_1E42026F4();
      }

      sub_1E42026F4();
      v45 = sub_1E42026F4();
      v53 = v7;
      v52 = v9;
      if (v45 != v44)
      {
        sub_1E42026F4();
      }

      sub_1E4203D84();
      *(swift_allocObject() + 16) = v36;
      sub_1E32752B0(&qword_1ECF302E0, &qword_1ECF302C0, &qword_1E42B1000, MEMORY[0x1E6981880]);
      v46 = v57;
      sub_1E42032A4();

      sub_1E325F6F0(v6, &qword_1ECF302C0, &qword_1E42B1000);
      (*(v52 + 32))(v16, v46, v53);
      *(v16 + *(v12 + 36)) = 0;
      OUTLINED_FUNCTION_11_68(v16, &v62);
      OUTLINED_FUNCTION_11_68(v6, &v61);
      OUTLINED_FUNCTION_8_11();
      return __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    }
  }

  OUTLINED_FUNCTION_8_11();

  return __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
}

void sub_1E39DD580()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF302A8, &qword_1E42B0FE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v51 - v5;
  v7 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8, &unk_1E42B3940);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v51 - v14;
  v16 = *v0;
  if (v16)
  {
    v17 = sub_1E39C408C();
    if (v17)
    {
      if (*v17 == _TtC8VideosUI13TextViewModel)
      {
        v18 = (*(*v16 + 392))();
        if (v18)
        {
          v19 = v18;
          type metadata accessor for RoomBannerLayout();
          v20 = swift_dynamicCastClass();
          if (v20)
          {
            v55 = v3;
            v56 = v20;
            v53 = v19;
            v54 = v9;
            v21 = v1[2];
            if (v21)
            {
              v22 = *(*v21 + 184);

              v24 = COERCE_DOUBLE(v22(v23));
              LOBYTE(v22) = v25;

              if (v22)
              {
                v26 = 0.0;
              }

              else
              {
                v26 = v24;
              }

              type metadata accessor for LayoutGrid();
              sub_1E3A258E4(v26);
              j_nullsub_1(v27, v28, v29, v30);
              OUTLINED_FUNCTION_3();
              v31 = (*(*v56 + 1760))();
              v32 = (*(*v31 + 1688))();
              if (v32 == 27)
              {
                v33 = sub_1E4202A94();
                __swift_storeEnumTagSinglePayload(v15, 1, 1, v33);
              }

              else
              {
                sub_1E3E3B33C(v32, v15);
              }

              v39 = (*v31 + 152);
              v52 = *v39;
              v40 = v52;
              v51[1] = v39;
              v56 = v31;

              v40(&v57, v41);
              v42 = 0.0;
              if (v58)
              {
                v43 = 0.0;
              }

              else
              {
                v43 = v57;
              }

              v51[0] = *(type metadata accessor for RoomBanner(0) + 28);
              sub_1E3746E10(v12);
              sub_1E405EA04(v43, v15, v12);
              v44 = *(v54 + 8);
              v45 = v44(v12, v7);
              v52(v59, v45);

              if ((v60 & 1) == 0)
              {
                v42 = *&v59[2];
              }

              sub_1E3746E10(v12);
              sub_1E405EA04(v42, v15, v12);
              v44(v12, v7);
              *v6 = sub_1E4201D44();
              *(v6 + 1) = 0;
              v6[16] = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF302B0, &qword_1E42B0FF0);
              sub_1E39DDA8C();

              sub_1E39DE02C(v15);
              sub_1E329E454(v6, v55, &qword_1ECF302A8, &qword_1E42B0FE8);
              OUTLINED_FUNCTION_8_11();
              __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
              OUTLINED_FUNCTION_20_0();
            }

            else
            {
              type metadata accessor for AppEnvironment(0);
              v50 = sub_1E39DC8E8();
              OUTLINED_FUNCTION_6_46(v50);
              __break(1u);
            }

            return;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_20_0();

  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
}

void sub_1E39DDA8C()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  if (v11 <= 0.0)
  {
    v44 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
    v22 = 0;
    v43 = 1;
  }

  else
  {
    sub_1E4203DA4();
    sub_1E4200D94();
    v43 = 0;
    v44 = v49;
    v42 = v51;
    v41 = v53;
    v40 = v54;
    v48 = 1;
    v47 = v50;
    v46 = v52;
    v22 = 1;
    v38 = v50;
    v39 = v52;
    LOBYTE(v55) = 0;
  }

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  v23 = sub_1E4202734();
  v24 = &v21[*(v14 + 36)];
  *v24 = v23;
  *(v24 + 1) = v9;
  *(v24 + 2) = v7;
  *(v24 + 3) = v5;
  *(v24 + 4) = v3;
  v24[40] = 0;
  if (v1 <= 0.0)
  {
    v37 = 0;
    v35 = 0;
    v34 = 0;
    v25 = 0;
    v28 = 0;
    v27 = 0;
    v26 = 0;
    v36 = 1;
  }

  else
  {
    sub_1E4203DA4();
    sub_1E4200D94();
    v36 = 0;
    v37 = v55;
    v35 = v57;
    v25 = v60;
    v34 = v59;
    v47 = 1;
    v46 = v56;
    v45 = v58;
    v26 = 1;
    v27 = v56;
    v28 = v58;
    v48 = 0;
  }

  sub_1E3294EE4(v21, v18, &qword_1ECF28CC0, &qword_1E4298440);
  *v13 = 0;
  *(v13 + 8) = v22;
  v29 = v38;
  *(v13 + 16) = v44;
  *(v13 + 24) = v29;
  v30 = v39;
  *(v13 + 32) = v42;
  *(v13 + 40) = v30;
  v31 = v40;
  *(v13 + 48) = v41;
  *(v13 + 56) = v31;
  *(v13 + 64) = v43;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF302B8, &qword_1E42B0FF8);
  sub_1E3294EE4(v18, v13 + *(v32 + 48), &qword_1ECF28CC0, &qword_1E4298440);
  v33 = v13 + *(v32 + 64);
  *v33 = 0;
  *(v33 + 8) = v26;
  *(v33 + 16) = v37;
  *(v33 + 24) = v27;
  *(v33 + 32) = v35;
  *(v33 + 40) = v28;
  *(v33 + 48) = v34;
  *(v33 + 56) = v25;
  *(v33 + 64) = v36;
  sub_1E325F6F0(v21, &qword_1ECF28CC0, &qword_1E4298440);
  sub_1E325F6F0(v18, &qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E39DDE6C(uint64_t a1)
{
  sub_1E39DDFC8(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ShowcaseValue(319);
    if (v2 <= 0x3F)
    {
      sub_1E381EC50(319);
      if (v3 <= 0x3F)
      {
        sub_1E39DDFC8(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1E39DDFC8(319, &qword_1EE288648, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E39DDFC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E39DE02C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8, &unk_1E42B3940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1E39DE094(char a1)
{
  if (a1)
  {
    return *(v1 + 16);
  }

  return result;
}

id sub_1E39DE0A4(char a1, uint64_t a2)
{
  v4 = sub_1E37FAF8C();
  v5 = *v4;
  v6 = v4[1];

  sub_1E3277E60(v5, v6, a2, &v75);

  if (*(&v76 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v73 = 0;
      v71 = 0u;
      v72 = 0u;
    }
  }

  else
  {
    sub_1E325F748(&v75, &unk_1ECF296E0, &unk_1E4298030);
    v71 = 0u;
    v72 = 0u;
    v73 = 0;
  }

  switch(a1)
  {
    case 1:
      sub_1E3751BA0(&v71, &v88);
      if (v89)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
        if (swift_dynamicCast())
        {
          v7 = *(&v76 + 1);
          sub_1E325F748(&v75, &qword_1ECF2A778, &unk_1E429E340);
          if (v7)
          {
            v7 = [objc_allocWithZone(VUIEventDataSource) init];
            v30 = [objc_allocWithZone(VUIDocumentDataSource) init];
            [v30 setDocumentRef_];
            sub_1E3280A90(0, &qword_1EE23B078, off_1E87282B8);
            v31 = sub_1E3744600(a2);
            v32 = sub_1E37766C4(v31);
            OUTLINED_FUNCTION_13_0(v32, sel_setContextData_);

            v33 = [objc_allocWithZone(VUIDocumentUIConfiguration) init];
            v34 = OUTLINED_FUNCTION_3_91([v33 setType_], sel_setAnimated_);
            OUTLINED_FUNCTION_13_0(v34, sel_setUiConfiguration_);
            [v7 setDocumentDataSource_];
            goto LABEL_26;
          }

          goto LABEL_41;
        }

        v77 = 0;
        v75 = 0u;
        v76 = 0u;
      }

      else
      {
        sub_1E325F748(&v88, &qword_1ECF28EB8, &unk_1E4298890);
        v75 = 0u;
        v76 = 0u;
        v77 = 0;
      }

      v67 = &qword_1ECF2A778;
      v68 = &unk_1E429E340;
      v69 = &v75;
      goto LABEL_39;
    case 2:
      sub_1E39DEABC(&v71);
      goto LABEL_40;
    case 3:
      sub_1E3751BA0(&v71, &v86);
      if (v87)
      {
        sub_1E3251BE8(&v86, &v88);
        v7 = [objc_allocWithZone(VUIEventDataSource) init];
        v10 = [objc_allocWithZone(VUIDocumentDataSource) init];
        [v10 setDocumentRef_];
        sub_1E3280A90(0, &qword_1EE23B078, off_1E87282B8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        *&v86 = sub_1E4205F14();
        *(&v86 + 1) = v12;
        sub_1E4207414();
        v13 = v89;
        v14 = __swift_project_boxed_opaque_existential_1(&v88, v89);
        *(inited + 96) = v13;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
        (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
        v16 = sub_1E4205CB4();
        v17 = sub_1E37766C4(v16);
        OUTLINED_FUNCTION_13_0(v17, sel_setContextData_);

        v18 = [objc_allocWithZone(VUIDocumentUIConfigurationModal) init];
        v19 = OUTLINED_FUNCTION_3_91([v18 setType_], sel_setAnimated_);
        OUTLINED_FUNCTION_13_0(v19, sel_setUiConfiguration_);
        [v7 setDocumentDataSource_];

        v20 = &v88;
        goto LABEL_24;
      }

      v67 = &qword_1ECF28EB8;
      v68 = &unk_1E4298890;
      v69 = &v86;
      goto LABEL_39;
    case 4:
      v7 = [objc_allocWithZone(VUIEventDataSource) init];
      v8 = [objc_allocWithZone(VUIDocumentDataSource) init];
      v9 = [objc_allocWithZone(VUIDocumentUIConfiguration) init];
      [v9 setType_];
      [v8 setUiConfiguration_];
      [v7 setDocumentDataSource_];

      goto LABEL_41;
    case 5:
      sub_1E3751BA0(&v71, &v86);
      if (!v87)
      {
        sub_1E325F748(&v86, &qword_1ECF28EB8, &unk_1E4298890);
        OUTLINED_FUNCTION_2_85();
        v90 = 0;
        goto LABEL_37;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
      if ((OUTLINED_FUNCTION_1_113(v35, v36, v37, v38, v39, v40, v41, v42, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, *(&v75 + 1), v76, *(&v76 + 1), v77, v78, v79, v80, v81, v82, v83, v84, v85, v86) & 1) == 0)
      {
        v90 = 0;
        OUTLINED_FUNCTION_2_85();
        goto LABEL_37;
      }

      if (!v89)
      {
LABEL_37:
        v67 = &qword_1ECF2A778;
        v68 = &unk_1E429E340;
        goto LABEL_38;
      }

      sub_1E3251BE8(&v88, &v75);
      v43 = *(&v76 + 1);
      v44 = v77;
      __swift_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
      v45 = (*(*(v44 + 8) + 88))(v43);
      if (v46)
      {
        v47 = v45;
        v48 = v46;
        v49 = [objc_allocWithZone(VUIDocumentDataSource) init];
        v50 = sub_1E4205F14();
        sub_1E37FB7F0(v50, v51, v49, &selRef_setControllerRef_);
        v52 = sub_1E4205F14();
        sub_1E37FB7F0(v52, v53, v49, &selRef_setDocumentType_);
        [v49 setDocumentRef_];
        v54 = objc_allocWithZone(VUIDocumentContextDataTVShow);
        v55 = sub_1E39DF1C8(v47, v48, 0, 0);
        [v49 setContextData_];

        v56 = [objc_allocWithZone(VUIDocumentUIConfiguration) init];
        [v56 setType_];
        [v56 setAnimated_];
        [v49 setUiConfiguration_];
        v7 = [objc_allocWithZone(VUIEventDataSource) init];
        type metadata accessor for ActionTabSwitch();
        v57 = sub_1E4205F14();
        v59 = v58;
        v60 = v49;
        v61 = sub_1E3FC7430(v57, v59, v60);
        [v7 setAction_];

        goto LABEL_23;
      }

      __swift_destroy_boxed_opaque_existential_1(&v75);
LABEL_40:
      v7 = 0;
LABEL_41:
      sub_1E325F748(&v71, &qword_1ECF28EB8, &unk_1E4298890);
      return v7;
    case 6:
      v30 = [objc_allocWithZone(VUIDocumentDataSource) init];
      [v30 setDocumentRef_];
      sub_1E3280A90(0, &qword_1EE23B078, off_1E87282B8);
      v62 = sub_1E3744600(a2);
      v63 = sub_1E37766C4(v62);
      [v30 setContextData_];

      v33 = [objc_allocWithZone(VUIDocumentUIConfiguration) init];
      v64 = OUTLINED_FUNCTION_3_91([v33 setType_], sel_setAnimated_);
      OUTLINED_FUNCTION_13_0(v64, sel_setUiConfiguration_);
      v7 = [objc_allocWithZone(VUIEventDataSource) init];
      [v7 setDocumentDataSource_];
LABEL_26:

      goto LABEL_41;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      v65 = sub_1E4205F14();
      v7 = sub_1E39DEDB4(v65, v66, a2);

      goto LABEL_41;
    default:
      sub_1E3751BA0(&v71, &v86);
      if (v87)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
        if (OUTLINED_FUNCTION_1_113(v21, v22, v23, v24, v25, v26, v27, v28, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, *(&v75 + 1), v76, *(&v76 + 1), v77, v78, v79, v80, v81, v82, v83, v84, v85, v86))
        {
          if (v89)
          {
            sub_1E3251BE8(&v88, &v75);
            v7 = [objc_allocWithZone(VUIEventDataSource) init];
            sub_1E3280A90(0, &qword_1ECF302F0, off_1E87281B0);
            sub_1E327F454(&v75, &v88);
            v29 = sub_1E40397A0(&v88, 0, 3, 0);
            [v7 setAction_];

LABEL_23:
            v20 = &v75;
LABEL_24:
            __swift_destroy_boxed_opaque_existential_1(v20);
            goto LABEL_41;
          }
        }

        else
        {
          v90 = 0;
          OUTLINED_FUNCTION_2_85();
        }
      }

      else
      {
        sub_1E325F748(&v86, &qword_1ECF28EB8, &unk_1E4298890);
        OUTLINED_FUNCTION_2_85();
        v90 = 0;
      }

      v67 = &unk_1ECF2CE78;
      v68 = &unk_1E42C61E0;
LABEL_38:
      v69 = &v88;
LABEL_39:
      sub_1E325F748(v69, v67, v68);
      goto LABEL_40;
  }
}

uint64_t sub_1E39DEABC(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E3751BA0(a1, v22);
  if (!v22[3])
  {
    sub_1E325F748(v22, &qword_1ECF28EB8, &unk_1E4298890);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    return sub_1E325F748(&v19, &qword_1ECF2CEA0, &unk_1E42A8980);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88, &unk_1E42C61F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    return sub_1E325F748(&v19, &qword_1ECF2CEA0, &unk_1E42A8980);
  }

  if (!*(&v20 + 1))
  {
    return sub_1E325F748(&v19, &qword_1ECF2CEA0, &unk_1E42A8980);
  }

  sub_1E3251BE8(&v19, v22);
  v6 = sub_1E41A3110();
  (*(v3 + 16))(v5, v6, v2);
  sub_1E327F454(v22, &v19);
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
    v11 = sub_1E4207944();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v14 = sub_1E3270FC8(v11, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1E323F000, v7, v8, "Construct document data source for %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E69143B0](v10, -1, -1);
    MEMORY[0x1E69143B0](v9, -1, -1);

    (*(v3 + 8))(v5, v2);
    v15 = v22;
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v15 = &v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

id sub_1E39DEDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(VUIEventDataSource) init];
  v7 = [objc_allocWithZone(VUIDocumentDataSource) init];
  v8 = sub_1E4205ED4();
  OUTLINED_FUNCTION_13_0(v8, sel_setDocumentRef_);

  sub_1E3280A90(0, &qword_1EE23B078, off_1E87282B8);
  v9 = sub_1E3744600(a3);
  v10 = sub_1E37766C4(v9);
  OUTLINED_FUNCTION_13_0(v10, sel_setContextData_);

  v11 = sub_1E37FAFD4();
  v12 = *v11;
  v13 = v11[1];

  sub_1E3277E60(v12, v13, a3, &v24);

  if (v25)
  {
    if (swift_dynamicCast())
    {
      v14 = v23;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E325F748(&v24, &unk_1ECF296E0, &unk_1E4298030);
  }

  v14 = 0;
LABEL_6:
  v15 = [objc_allocWithZone(VUIDocumentUIConfiguration) init];
  if (v14)
  {
    v16 = sub_1E4205ED4();
  }

  else
  {
    v16 = 0;
  }

  [v15 setViewControllerIdentifier_];

  if (sub_1E4205F14() == a1 && v17 == a2)
  {

    v20 = 15;
  }

  else
  {
    v19 = sub_1E42079A4();

    if (v19)
    {
      v20 = 15;
    }

    else
    {
      v20 = 1;
    }
  }

  v21 = OUTLINED_FUNCTION_3_91([v15 setType_], sel_setAnimated_);
  OUTLINED_FUNCTION_13_0(v21, sel_setUiConfiguration_);
  [v6 setDocumentDataSource_];

  return v6;
}

unint64_t sub_1E39DF010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF302E8;
  if (!qword_1ECF302E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF302E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VUILibRouterEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VUILibRouterEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

id sub_1E39DF1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1E4205ED4();

  if (a4)
  {
    v7 = sub_1E4205ED4();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithShowID:v6 episodeID:v7];

  return v8;
}

uint64_t sub_1E39DF25C()
{

  sub_1E3B50380(&v1);

  return v1;
}

double sub_1E39DF2A0(char a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);

  return result;
}

uint64_t sub_1E39DF2E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1E39DF364()
{
  v1 = sub_1E41FFBF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF302F8, &unk_1E42B10B0);
  v23 = 0;
  *(v0 + 104) = sub_1E3B508D0();
  *(v0 + 112) = xmmword_1E4297170;
  *(v0 + 128) = 0;
  type metadata accessor for ViewLayout();
  *(v0 + 136) = sub_1E3C2F968();
  *(v0 + 144) = sub_1E3C2F968();
  type metadata accessor for TextLayout();
  *(v0 + 152) = sub_1E383BCC0();
  *(v0 + 160) = sub_1E383BCC0();
  *(v0 + 168) = sub_1E383BCC0();
  *(v0 + 176) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v0 + 184) = sub_1E3BD61D8();
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = sub_1E3BD61D8();
  v5 = sub_1E383BCC0();
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 216) = v5;
  *(v0 + 240) = 1;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  *(v0 + 248) = 0;
  *(v0 + 272) = sub_1E3BD61D8();
  *(v0 + 280) = sub_1E383BCC0();
  *(v0 + 288) = sub_1E3C2F968();
  v6 = sub_1E4206BA4();
  v7 = VUISignpostLogObject(v6);
  v8 = sub_1E41FFBE4();
  OUTLINED_FUNCTION_4_89(v8, &dword_1E323F000, v9, "Perf.SportsScoreboardLayout.init");

  v10 = *(v2 + 8);
  v10(v4, v1);
  v11 = sub_1E3C2F9A0();

  sub_1E3C2C6A0();
  v12 = v22;
  if (v22 == 3)
  {
    v21[13] = 0;
    sub_1E3C2CA00();
    v12 = 0;
  }

  sub_1E39DF2A0(v12);
  sub_1E39DF6B8();
  sub_1E37EC0A4();
  sub_1E3BF41B8();
  v13 = v11[18];
  sub_1E3C37CBC(v11[19], 23);
  sub_1E3C37CBC(v11[20], 10);
  sub_1E3C37CBC(v11[23], 36);
  v14 = v11[17];
  sub_1E3C37CBC(v13, 240);
  sub_1E3C37CBC(v14, 239);
  v15 = v11[21];
  sub_1E3C37CBC(v15, 17);
  sub_1E3C37CBC(v15, 18);
  sub_1E3C37CBC(v15, 19);
  sub_1E3C37CBC(v11[22], 5);
  sub_1E3C37CBC(v11[27], 237);
  v16 = sub_1E4206B94();
  v17 = VUISignpostLogObject(v16);
  v18 = sub_1E41FFBE4();
  OUTLINED_FUNCTION_4_89(v18, &dword_1E323F000, v19, "Perf.SportsScoreboardLayout.init");

  v10(v4, v1);
  return v11;
}

uint64_t sub_1E39DF6B8()
{
  v0 = sub_1E39DF25C();
  if (sub_1E39DFA50(v0, 0, v1))
  {

    return sub_1E414707C();
  }

  else
  {

    return sub_1E3D52A10();
  }
}

void sub_1E39DF704(uint64_t a1)
{
  sub_1E3C34E14();
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_10:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = v8 | (v7 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    sub_1E328438C(*(a1 + 56) + 32 * v9, v25);
    *&v26 = v12;
    *(&v26 + 1) = v11;
    sub_1E329504C(v25, &v27);

LABEL_11:
    v29 = v26;
    v30[0] = v27;
    v30[1] = v28;
    if (!*(&v26 + 1))
    {

      return;
    }

    sub_1E329504C(v30, &v26);
    v13 = sub_1E3D46B48();
    if (v13 != 123)
    {
      v16 = v13;
      sub_1E39DF9A8(v13, v14, v15);
      sub_1E4206254();
      sub_1E4206254();
      if (*&v25[0] == v23 && *(&v25[0] + 1) == v24)
      {
      }

      else
      {
        v18 = sub_1E42079A4();

        if ((v18 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      sub_1E328438C(&v26, v25);
      sub_1E3C3AC6C(v25, v16, 1);
      sub_1E329505C(v25);
      sub_1E3C2C6A0();
      v19 = v25[0];
      if (LOBYTE(v25[0]) != 3)
      {
        v20 = sub_1E39DF25C();
        LOBYTE(v25[0]) = v20;
        LOBYTE(v23) = v19;
        sub_1E39DF9FC(v20, v21, v22);
        if ((sub_1E4205E84() & 1) == 0)
        {
          sub_1E39DF2A0(v19);
          sub_1E39DF6B8();
        }
      }
    }

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      v4 = 0;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      goto LABEL_11;
    }

    v4 = *(a1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
}

unint64_t sub_1E39DF9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE280F78;
  if (!qword_1EE280F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE280F78);
  }

  return result;
}

unint64_t sub_1E39DF9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE281960;
  if (!qword_1EE281960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE281960);
  }

  return result;
}

uint64_t sub_1E39DFA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E39DFE78(a1, a2, a3);
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t sub_1E39DFB00(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v5 = a3;
  v7 = a1;
  sub_1E3C35CF4(a1, a2);
  v8 = *(v4 + 112);
  v9 = *(v4 + 120);
  *(v4 + 112) = v7;
  *(v4 + 120) = a2;
  *(v4 + 128) = v5;
  sub_1E39DFB80(v8, v9);
  v10 = a2;
  sub_1E3C2C6A0();
  if (v12 != 3)
  {
    sub_1E39DF2A0(v12);
  }

  return sub_1E39DF6B8();
}

void sub_1E39DFB80(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }
}

double sub_1E39DFB90()
{

  sub_1E39DFB80(*(v0 + 112), *(v0 + 120));

  sub_1E37EC9B0(*(v0 + 248), *(v0 + 256), *(v0 + 264));

  return result;
}

uint64_t sub_1E39DFC30()
{
  v0 = sub_1E3C36C6C();

  sub_1E39DFB80(*(v0 + 112), *(v0 + 120));

  sub_1E37EC9B0(*(v0 + 248), *(v0 + 256), *(v0 + 264));

  return v0;
}

uint64_t sub_1E39DFCD8()
{
  v0 = sub_1E39DFC30();

  return MEMORY[0x1EEE6BDC0](v0, 296, 7);
}

uint64_t sub_1E39DFD08()
{
  sub_1E39DF25C();
  sub_1E3C2C6A0();
  if (v5 == 3)
  {
    v3 = 1;
  }

  else
  {
    sub_1E39DF9FC(v0, v1, v2);
    v3 = sub_1E4205E84() ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1E39DFD8C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = sub_1E3C2F6A0(a2, a3);
  if (v5 >= 2)
  {
    v8 = v4;
    v9 = v5;
    v10 = [v5 preferredContentSizeCategory];
    sub_1E39DFB80(v8, v9);

    return sub_1E4201304();
  }

  else
  {
    v6 = sub_1E42012F4();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  }
}

unint64_t sub_1E39DFE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE281958;
  if (!qword_1EE281958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE281958);
  }

  return result;
}

uint64_t TVAppFeature.hashValue.getter(unsigned __int8 a1)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a1);
  return sub_1E4207BA4();
}

uint64_t sub_1E39DFF7C(uint64_t a1)
{
  v2 = *v1;
  sub_1E4207B44();
  TVAppFeature.hash(into:)(v4, v2);
  return sub_1E4207BA4();
}

unint64_t sub_1E39DFFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30300;
  if (!qword_1ECF30300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30300);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TVAppFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TVAppFeature(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E39E0210(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_1E4207B44();
  v4 = a2(v3);
  OUTLINED_FUNCTION_0_101(v4, v5, v6, v7, v8, v9, v10, v11, v13);
  return sub_1E4207BA4();
}

uint64_t sub_1E39E0260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E39E0E4C(a1, a2, a3);

  return MEMORY[0x1EEDC2D70](a1, a2, v5);
}

uint64_t sub_1E39E02E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1E4207B44();
  v5 = a3(v4);
  OUTLINED_FUNCTION_0_101(v5, v6, v7, v8, v9, v10, v11, v12, v14);
  return sub_1E4207BA4();
}

uint64_t sub_1E39E0330@<X0>(uint64_t a1@<X8>)
{
  result = VUILocationServiceProxyObjCError.AuthorizationRequestError.init(rawValue:)();
  *a1 = 0;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E39E0364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E39E0E4C(a1, a2, a3);

  return MEMORY[0x1EEDC2D80](a1, v4);
}

uint64_t sub_1E39E03A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E39E0E4C(a1, a2, a3);

  return MEMORY[0x1EEDC2D78](a1, v4);
}

uint64_t sub_1E39E03FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E39E0E4C(a1, a2, a3);

  return MEMORY[0x1EEDC2D68](a1, a2, v5);
}

unint64_t VUILocationServiceProxyObjCError.RetrieveLocationError.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E39E04B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E39E0DF8(a1, a2, a3);

  return MEMORY[0x1EEDC2D70](a1, a2, v5);
}

unint64_t sub_1E39E053C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VUILocationServiceProxyObjCError.RetrieveLocationError.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1E39E0570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E39E0DF8(a1, a2, a3);

  return MEMORY[0x1EEDC2D80](a1, v4);
}

uint64_t sub_1E39E05AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E39E0DF8(a1, a2, a3);

  return MEMORY[0x1EEDC2D78](a1, v4);
}

uint64_t sub_1E39E0608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E39E0DF8(a1, a2, a3);

  return MEMORY[0x1EEDC2D68](a1, a2, v5);
}

id VUILocationServiceProxyObjCError.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1E39E08D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3 = sub_1E4205ED4();

  return v3;
}

id sub_1E39E0940(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1E39E09D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1E39E0A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30308;
  if (!qword_1ECF30308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30308);
  }

  return result;
}

unint64_t sub_1E39E0A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30310;
  if (!qword_1ECF30310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30310);
  }

  return result;
}

unint64_t sub_1E39E0AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30318;
  if (!qword_1ECF30318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30318);
  }

  return result;
}

unint64_t sub_1E39E0B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30320;
  if (!qword_1ECF30320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30320);
  }

  return result;
}

unint64_t sub_1E39E0B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE23B638;
  if (!qword_1EE23B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B638);
  }

  return result;
}

unint64_t sub_1E39E0BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30328;
  if (!qword_1ECF30328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30328);
  }

  return result;
}

unint64_t sub_1E39E0C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30330;
  if (!qword_1ECF30330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30330);
  }

  return result;
}

unint64_t sub_1E39E0C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30338;
  if (!qword_1ECF30338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30338);
  }

  return result;
}

unint64_t sub_1E39E0CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30340;
  if (!qword_1ECF30340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30340);
  }

  return result;
}

unint64_t sub_1E39E0D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30348;
  if (!qword_1ECF30348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30348);
  }

  return result;
}

unint64_t sub_1E39E0D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30350;
  if (!qword_1ECF30350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30350);
  }

  return result;
}

unint64_t sub_1E39E0DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30358;
  if (!qword_1ECF30358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30358);
  }

  return result;
}

unint64_t sub_1E39E0E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30360;
  if (!qword_1ECF30360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30360);
  }

  return result;
}

uint64_t sub_1E39E0EB8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v87 = a1;
  v98 = a3;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30368, &qword_1E42B1630);
  OUTLINED_FUNCTION_0_10();
  v88 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v87 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30370, &qword_1E42B1638);
  OUTLINED_FUNCTION_0_10();
  v89 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v99 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30378, &qword_1E42B1640);
  OUTLINED_FUNCTION_0_10();
  v91 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v100 = v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30380, &qword_1E42B1648);
  OUTLINED_FUNCTION_0_10();
  v93 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v101 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30388, &qword_1E42B1650);
  OUTLINED_FUNCTION_0_10();
  v96 = v22;
  v97 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v102 = a2;
  v94 = v27;
  v92 = v14;
  if (v4 != 8)
  {
    LOBYTE(v113) = a2;
    LOBYTE(v110) = 4;
    sub_1E37E6B30(v24, v25, v26);
    sub_1E4205E84();
  }

  v90 = v10;
  nullsub_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30390, &qword_1E42B1658);
  v29 = sub_1E39E15AC();
  v32 = sub_1E39E1610(v29, v30, v31);
  sub_1E3E35E58();
  v36 = v102;
  if (v4 != 8)
  {
    LOBYTE(v113) = v102;
    LOBYTE(v110) = 6;
    sub_1E37E6B30(v33, v34, v35);
    v33 = sub_1E4205E84();
  }

  v37 = v36;
  sub_1E3FFF230(&v110, v33);
  v119 = v110;
  v120 = v111;
  v121 = v112;
  v113 = v110;
  v114 = v111;
  v115 = v112;
  *&v107 = v28;
  *(&v107 + 1) = &unk_1F5D91B50;
  *&v108 = v29;
  *(&v108 + 1) = v32;
  OUTLINED_FUNCTION_0_102();
  v40 = OUTLINED_FUNCTION_6_70(v38, v39);
  v43 = sub_1E39E1664(v40, v41, v42);
  sub_1E3E35E58();
  sub_1E325F748(&v119, &qword_1ECF303B0, &unk_1E42B1660);
  sub_1E325F748(&v120, &qword_1ECF29028, &qword_1E42992D0);
  v44 = (*(v88 + 8))(v9, v5);
  if (v36 != 8)
  {
    LOBYTE(v113) = v36;
    LOBYTE(v107) = 3;
    sub_1E37E6B30(v44, v45, v46);
    v44 = sub_1E4205E84();
  }

  sub_1E3FFED6C(&v113, v44);
  v116 = v113;
  v117 = v114;
  v118 = v115;
  v107 = v113;
  v108 = v114;
  v109 = v115;
  v103 = v5;
  v104 = &unk_1F5D91BC8;
  v105 = v40;
  v106 = v43;
  OUTLINED_FUNCTION_0_102();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = sub_1E39E16B8(OpaqueTypeConformance2, v48, v49);
  v51 = v99;
  v52 = v90;
  sub_1E3E35E58();
  sub_1E325F748(&v116, &qword_1ECF303B0, &unk_1E42B1660);
  sub_1E325F748(&v117, &qword_1ECF29028, &qword_1E42992D0);
  v53 = (*(v89 + 8))(v51, v52);
  v56 = v102;
  if (v37 != 8)
  {
    LOBYTE(v107) = v102;
    LOBYTE(v103) = 1;
    sub_1E37E6B30(v53, v54, v55);
    OUTLINED_FUNCTION_4_90();
  }

  v57 = v92;
  nullsub_1();
  *&v107 = v52;
  *(&v107 + 1) = &unk_1F5D91C48;
  *&v108 = OpaqueTypeConformance2;
  *(&v108 + 1) = v50;
  OUTLINED_FUNCTION_0_102();
  v60 = OUTLINED_FUNCTION_6_70(v58, v59);
  v63 = sub_1E39E170C(v60, v61, v62);
  v64 = v100;
  sub_1E3E35E58();
  v65 = (*(v91 + 8))(v64, v57);
  if (v56 != 8)
  {
    LOBYTE(v107) = v56;
    LOBYTE(v103) = 2;
    sub_1E37E6B30(v65, v66, v67);
    OUTLINED_FUNCTION_4_90();
  }

  v69 = v94;
  v68 = v95;
  nullsub_1();
  *&v107 = v57;
  *(&v107 + 1) = &unk_1F5D9A920;
  *&v108 = v60;
  *(&v108 + 1) = v63;
  OUTLINED_FUNCTION_0_102();
  v72 = OUTLINED_FUNCTION_6_70(v70, v71);
  v75 = sub_1E39E1760(v72, v73, v74);
  v76 = v101;
  sub_1E3E35E58();
  v77 = (*(v93 + 8))(v76, v68);
  if (v56 != 8)
  {
    LOBYTE(v107) = v56;
    LOBYTE(v103) = 5;
    sub_1E37E6B30(v77, v78, v79);
    OUTLINED_FUNCTION_4_90();
  }

  nullsub_1();
  *&v107 = v68;
  *(&v107 + 1) = &unk_1F5D9A940;
  *&v108 = v72;
  *(&v108 + 1) = v75;
  OUTLINED_FUNCTION_0_102();
  v82 = OUTLINED_FUNCTION_6_70(v80, v81);
  sub_1E39E17B4(v82, v83, v84);
  v85 = v97;
  sub_1E3E35E58();
  return (*(v96 + 8))(v69, v85);
}

unint64_t sub_1E39E15AC()
{
  result = qword_1ECF30398;
  if (!qword_1ECF30398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30390, &qword_1E42B1658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30398);
  }

  return result;
}

unint64_t sub_1E39E1610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF303A0;
  if (!qword_1ECF303A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF303A0);
  }

  return result;
}

unint64_t sub_1E39E1664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF303A8;
  if (!qword_1ECF303A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF303A8);
  }

  return result;
}

unint64_t sub_1E39E16B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF303B8;
  if (!qword_1ECF303B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF303B8);
  }

  return result;
}

unint64_t sub_1E39E170C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF303C0;
  if (!qword_1ECF303C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF303C0);
  }

  return result;
}

unint64_t sub_1E39E1760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF303C8;
  if (!qword_1ECF303C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF303C8);
  }

  return result;
}

unint64_t sub_1E39E17B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF303D0;
  if (!qword_1ECF303D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF303D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CollectionDecorator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 9;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 9;
  if (v6 < 8)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CollectionDecorator(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E39E19A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  v40 = *(v6 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v39 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF303D8, &qword_1E42B1700);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF303E0, &qword_1E42B1708);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF303E8, &qword_1E42B1710);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF303F0, &qword_1E42B1718);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v39 - v23;
  if (a1)
  {
    v42 = a3;
    v25 = *(a1 + 98);
    if ((v25 - 138) < 2)
    {
      goto LABEL_5;
    }

    if (v25 != 147)
    {
      if (v25 != 142)
      {
        v26 = v22;
        swift_storeEnumTagMultiPayload();
        sub_1E39E1F08();
        OUTLINED_FUNCTION_2_87();
        goto LABEL_16;
      }

LABEL_5:
      v26 = v22;

      v27 = swift_retain_n();
      sub_1E3EE4C70(v27, a2, 0, 0, v46);
      sub_1E39E1F94(v46, v17);
      v28 = swift_storeEnumTagMultiPayload();
      sub_1E3812710(v28, v29, v30);
      sub_1E37AC5F4();
      sub_1E4201F44();
      sub_1E37E93E8(v20, v14, &qword_1ECF303E8, &qword_1E42B1710);
      swift_storeEnumTagMultiPayload();
      sub_1E39E1F08();
      OUTLINED_FUNCTION_2_87();

      sub_1E325F6F0(v20, &qword_1ECF303E8, &qword_1E42B1710);
      sub_1E39E1FF0(v46);
LABEL_16:
      v38 = v42;
      sub_1E32BE718(v24, v42);
      return __swift_storeEnumTagSinglePayload(v38, 0, 1, v26);
    }

    v26 = v22;

    v32 = sub_1E39C408C();
    if (v32)
    {
      if (*v32 == _TtC8VideosUI13TextViewModel)
      {
        OUTLINED_FUNCTION_18();
        sub_1E3F23370();

        (*(v40 + 32))(v41, v9, v6);
        v33 = 0;
LABEL_15:
        v34 = v41;
        __swift_storeEnumTagSinglePayload(v41, v33, 1, v6);
        sub_1E37E93E8(v34, v17, &qword_1ECF29210, &qword_1E4299980);
        v35 = swift_storeEnumTagMultiPayload();
        sub_1E3812710(v35, v36, v37);
        sub_1E37AC5F4();
        sub_1E4201F44();
        sub_1E37E93E8(v20, v14, &qword_1ECF303E8, &qword_1E42B1710);
        swift_storeEnumTagMultiPayload();
        sub_1E39E1F08();
        OUTLINED_FUNCTION_2_87();

        sub_1E325F6F0(v20, &qword_1ECF303E8, &qword_1E42B1710);
        sub_1E325F6F0(v34, &qword_1ECF29210, &qword_1E4299980);
        goto LABEL_16;
      }
    }

    v33 = 1;
    goto LABEL_15;
  }

  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v22);
}

unint64_t sub_1E39E1F08()
{
  result = qword_1EE289200;
  if (!qword_1EE289200)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF303E8, &qword_1E42B1710);
    sub_1E3812710(v1, v2, v3);
    sub_1E37AC5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289200);
  }

  return result;
}

unint64_t sub_1E39E2054()
{
  result = qword_1EE288D18;
  if (!qword_1EE288D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF303F8, &qword_1E42B1738);
    sub_1E39E20D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D18);
  }

  return result;
}

unint64_t sub_1E39E20D8()
{
  result = qword_1EE288D20;
  if (!qword_1EE288D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF303F0, &qword_1E42B1718);
    sub_1E39E1F08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D20);
  }

  return result;
}

uint64_t sub_1E39E2164(uint64_t a1, uint64_t a2)
{
  sub_1E4205634();
  sub_1E4205614();
  sub_1E4205264();
  swift_allocObject();
  sub_1E4205254();
  return a2;
}

void sub_1E39E21D4()
{
  OUTLINED_FUNCTION_31_1();
  v29[0] = v0;
  v29[1] = v1;
  v3 = v2;
  v4 = sub_1E4205834();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30400, &qword_1E42B1740);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30408, &qword_1E42B1748);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - v15;
  if (v3 == 2)
  {
    *v16 = sub_1E4201D44();
    *(v16 + 1) = 0;
    v16[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30430, &qword_1E42B1760);
    sub_1E39E2540();
    sub_1E3294EE4(v16, v13, &qword_1ECF30408, &qword_1E42B1748);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30418, &qword_1E42B1758);
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v17, &qword_1ECF30408, &qword_1E42B1748, v18);
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v19, &qword_1ECF30418, &qword_1E42B1758, v20);
    sub_1E4201F44();
    sub_1E325F6F0(v16, &qword_1ECF30408, &qword_1E42B1748);
  }

  else
  {
    sub_1E4205314();
    v21 = sub_1E4201B84();
    v33 = 0;
    sub_1E39E2E7C();
    memcpy(v34, v31, sizeof(v34));
    memcpy(v35, v31, 0x88uLL);
    sub_1E3294EE4(v34, &v30, &qword_1ECF30410, &qword_1E42B1750);
    sub_1E325F6F0(v35, &qword_1ECF30410, &qword_1E42B1750);
    memcpy(&v32[7], v34, 0x88uLL);
    v22 = v33;
    (*(v6 + 8))(v10, v4);
    *v13 = v21;
    *(v13 + 1) = 0x4008000000000000;
    v13[16] = v22;
    memcpy(v13 + 17, v32, 0x8FuLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30418, &qword_1E42B1758);
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v23, v24, v25, v26);
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v27, &qword_1ECF30418, &qword_1E42B1758, v28);
    OUTLINED_FUNCTION_5_88();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E39E2540()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v51 = v2;
  v3 = sub_1E4205834();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30470, &qword_1E42B1838);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  sub_1E39E28A0(v1, &v46 - v16);
  sub_1E4205314();
  v50 = sub_1E4201B84();
  v55 = 0;
  sub_1E39E2E7C();
  memcpy(v56, v53, sizeof(v56));
  memcpy(v57, v53, 0x88uLL);
  sub_1E3294EE4(v56, v52, &qword_1ECF30410, &qword_1E42B1750);
  sub_1E325F6F0(v57, &qword_1ECF30410, &qword_1E42B1750);
  memcpy(&v54[7], v56, 0x88uLL);
  v49 = v55;
  (*(v5 + 8))(v9, v3);
  v18 = sub_1E4205354();
  if (v19)
  {
    v53[0] = v18;
    v53[1] = v19;
    sub_1E32822E0(v18, v19, v20);
    v21 = sub_1E4202C44();
    v23 = v22;
    v25 = v24;
    v27 = v26 & 1;
    sub_1E37E6F1C(v21, v22, v26 & 1);
  }

  else
  {
    v21 = 0;
    v23 = 0;
    v27 = 0;
    v25 = 0;
  }

  sub_1E3294EE4(v17, v14, &qword_1ECF30470, &qword_1E42B1838);
  v28 = v51;
  sub_1E3294EE4(v14, v51, &qword_1ECF30470, &qword_1E42B1838);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30480, &unk_1E42B1848);
  v47 = v17;
  v48 = v14;
  v30 = *(v29 + 48);
  v31 = v50;
  v52[0] = v50;
  v52[1] = 0x4008000000000000;
  v32 = v49;
  LOBYTE(v52[2]) = v49;
  memcpy(&v52[2] + 1, v54, 0x8FuLL);
  memcpy((v28 + v30), v52, 0xA0uLL);
  v33 = (v28 + *(v29 + 64));
  sub_1E3294EE4(v52, v53, &qword_1ECF30418, &qword_1E42B1758);
  v34 = OUTLINED_FUNCTION_6_71();
  sub_1E39E38F4(v34, v35, v36, v37);
  v38 = OUTLINED_FUNCTION_6_71();
  sub_1E39E3938(v38, v39, v40, v41);
  *v33 = v21;
  v33[1] = v23;
  v33[2] = v27;
  v33[3] = v25;
  sub_1E325F6F0(v47, &qword_1ECF30470, &qword_1E42B1838);
  v42 = OUTLINED_FUNCTION_6_71();
  sub_1E39E3938(v42, v43, v44, v45);
  v53[0] = v31;
  v53[1] = 0x4008000000000000;
  LOBYTE(v53[2]) = v32;
  memcpy(&v53[2] + 1, v54, 0x8FuLL);
  sub_1E325F6F0(v53, &qword_1ECF30418, &qword_1E42B1758);
  sub_1E325F6F0(v48, &qword_1ECF30470, &qword_1E42B1838);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39E28A0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v60 = a1;
  v66 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30438, &qword_1E42B1768);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v63 = (v58 - v4);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30440, &qword_1E42B1770);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v62 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v61 = v58 - v9;
  v10 = sub_1E4205654();
  OUTLINED_FUNCTION_0_10();
  v59 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30448, &qword_1E42B1778);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v58 - v18;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30450, &qword_1E42B1780);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v58 - v21;
  v23 = sub_1E4205834();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  sub_1E4205314();
  v30 = sub_1E42057F4();
  v32 = v31;
  (*(v25 + 8))(v29, v23);
  if (v32)
  {
    v58[1] = v30;
    sub_1E42052F4();
    if (__swift_getEnumTagSinglePayload(v19, 1, v10))
    {

      sub_1E325F6F0(v19, &qword_1ECF30448, &qword_1E42B1778);
      v33 = 1;
      v34 = v64;
    }

    else
    {
      v37 = v59;
      (*(v59 + 16))(v15, v19, v10);
      sub_1E325F6F0(v19, &qword_1ECF30448, &qword_1E42B1778);
      sub_1E4205644();
      (*(v37 + 8))(v15, v10);
      v38 = sub_1E4201B84();
      sub_1E4205244();
      sub_1E4205624();
      v40 = v39;

      v41 = v63;
      *v63 = v38;
      v41[1] = v40;
      *(v41 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30458, &qword_1E42B1788);
      sub_1E39E33C4();

      v42 = sub_1E4202724();
      v43 = sub_1E4202774();
      sub_1E4202774();
      if (sub_1E4202774() != v42)
      {
        v43 = sub_1E4202774();
      }

      sub_1E4200A54();
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v52 = v41;
      v53 = v62;
      sub_1E329E454(v52, v62, &qword_1ECF30438, &qword_1E42B1768);
      v34 = v64;
      v54 = v53 + *(v64 + 36);
      *v54 = v43;
      *(v54 + 8) = v45;
      *(v54 + 16) = v47;
      *(v54 + 24) = v49;
      *(v54 + 32) = v51;
      *(v54 + 40) = 0;
      v55 = v53;
      v56 = v61;
      sub_1E329E454(v55, v61, &qword_1ECF30440, &qword_1E42B1770);
      sub_1E329E454(v56, v22, &qword_1ECF30440, &qword_1E42B1770);
      v33 = 0;
    }

    __swift_storeEnumTagSinglePayload(v22, v33, 1, v34);
    v36 = v66;
    sub_1E329E454(v22, v66, &qword_1ECF30450, &qword_1E42B1780);
    v35 = 0;
  }

  else
  {
    v35 = 1;
    v36 = v66;
  }

  return __swift_storeEnumTagSinglePayload(v36, v35, 1, v65);
}

double sub_1E39E2D88@<D0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *v11;
  v14 = v11[1];
  v15 = v11[2];
  v16 = v11[3];
  v22 = *(v11 + 32);
  v17 = *v12;
  v20 = v12[2];
  v21 = v12[1];
  v19 = v12[3];
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v13;
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  *(a2 + 88) = v16;
  *(a2 + 96) = v22;
  *(a2 + 104) = v17;
  *(a2 + 112) = v21;
  *(a2 + 120) = v20;
  *(a2 + 128) = v19;
  sub_1E39E38F4(v4, v3, v5, v6);
  sub_1E39E38F4(v8, v7, v9, v10);
  sub_1E39E397C(v13, v14, v15, v16);

  return sub_1E39E38F4(v17, v21, v20, v19);
}

void sub_1E39E2E7C()
{
  OUTLINED_FUNCTION_31_1();
  v67 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  *&v59 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30488, &qword_1E42B1858);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30490, &unk_1E42B1860);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - v8;
  v10 = sub_1E42057D4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E4205814();
  if (v18)
  {
    OUTLINED_FUNCTION_10_63(v17, v18, v19);
    v66 = sub_1E4202C44();
    v65 = v20;
    v64 = v21;
    v63 = v22 & 1;
  }

  else
  {
    v66 = 0;
    v65 = 0;
    v63 = 0;
    v64 = 0;
  }

  sub_1E4205814();
  if (v23 && (, sub_1E4205384(), __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1)), v24 = sub_1E42054B4(), __swift_destroy_boxed_opaque_existential_1(&v68), (v24 & 1) != 0))
  {
    sub_1E4201C14();
    v25 = sub_1E4202C24();
    v27 = v26;
    v29 = v28 & 1;
    v62 = v25;
    v61 = v30;
    sub_1E37E6F1C(v25, v30, v28 & 1);
    v60 = v27;
  }

  else
  {
    v62 = 0;
    v61 = 0;
    v29 = 0;
    v60 = 0;
  }

  sub_1E42057E4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1E325F6F0(v9, &qword_1ECF30490, &unk_1E42B1860);
    v31 = sub_1E4205804();
    OUTLINED_FUNCTION_10_63(v31, v32, v33);
    v83 = sub_1E4202C44();
    v84 = v34;
    v85 = (v35 & 1);
    v86 = v36;
    v87 = 1;
    OUTLINED_FUNCTION_14_70(v83, MEMORY[0x1E6981148]);
  }

  else
  {
    (*(v12 + 32))(v16, v9, v10);
    sub_1E42057A4();
    sub_1E42057B4();
    sub_1E42057C4();
    v83 = sub_1E4202B74();
    v84 = v37;
    v85 = (v38 & 1);
    v86 = v39;
    v87 = 0;
    OUTLINED_FUNCTION_14_70(v83, MEMORY[0x1E6981148]);
    (*(v12 + 8))(v16, v10);
  }

  v40 = v70;
  v58 = v68;
  v59 = v69;
  v41 = OUTLINED_FUNCTION_5_88();
  sub_1E39E397C(v41, v42, v43, v44);
  v45 = sub_1E4205824();
  if (v46)
  {
    OUTLINED_FUNCTION_10_63(v45, v46, v47);
    v48 = sub_1E4202C44();
    v51 = v50 & 1;
  }

  else
  {
    v48 = 0;
    v51 = 0;
    v49 = 0;
  }

  v79 = v66;
  v80 = v65;
  v81 = v63;
  v82 = v64;
  v83 = &v79;
  v52 = v62;
  v53 = v61;
  v75 = v62;
  v76 = v61;
  v54 = v60;
  v77 = v29;
  v78 = v60;
  v69 = v59;
  v68 = v58;
  LOBYTE(v70) = v40;
  v84 = &v75;
  v85 = &v68;
  v71 = v48;
  v72 = v46;
  v73 = v51;
  v74 = v49;
  v86 = &v71;
  sub_1E39E2D88(&v83, v67);
  v55 = OUTLINED_FUNCTION_5_88();
  sub_1E39E39B8(v55, v56, v57);
  sub_1E39E3938(v52, v53, v29, v54);
  sub_1E39E3938(v71, v72, v73, v74);
  sub_1E39E39B8(v68, *(&v68 + 1), v69);
  sub_1E39E3938(v75, v76, v77, v78);
  sub_1E39E3938(v79, v80, v81, v82);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39E33C4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v53 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E4205764();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E42054A4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v24 = MEMORY[0x1EEE9AC00](v20);
  v56 = &v49 - v25;
  v26 = *(v4 + 16);
  if (v26)
  {
    v54 = v23;
    v55 = v21;
    v51 = v22;
    v52 = v6;
    v50 = v9;
    v27 = *(v9 + 16);
    v28 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v29 = v7;
    v49 = v27;
    (v27)(v13, v28, v7, v24);
    sub_1E4205244();
    v30 = sub_1E4205494();
    v57 = v53;
    v58 = v1;
    sub_1E32822E0(v30, v31, v32);

    v33 = sub_1E4202C44();
    if (v26 != 1)
    {
      v37 = *(v50 + 72);
      v53 = v34;
      v50 = v36;
      v38 = v33;
      v39 = v35;
      v49(v13, v28 + v37, v29);
      sub_1E4205244();
      v40 = v54;
      sub_1E4205494();
      v41 = *(v16 + 16);
      v42 = v55;
      v41(v55, v56, v14);
      LOBYTE(v57) = v39 & 1;
      v43 = v51;
      v41(v51, v40, v14);
      v44 = v52;
      v41(v52, v42, v14);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30478, &qword_1E42B1840);
      v46 = v44 + *(v45 + 48);
      LOBYTE(v42) = v57;
      v47 = v53;
      *v46 = v38;
      *(v46 + 8) = v47;
      *(v46 + 16) = v42;
      *(v46 + 24) = v50;
      v41(v44 + *(v45 + 64), v43, v14);
      sub_1E37E6F1C(v38, v47, v42);
      v48 = *(v16 + 8);

      v48(v54, v14);
      v48(v56, v14);
      v48(v43, v14);
      sub_1E37434B8(v38, v47, v57);

      v48(v55, v14);
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E39E3780(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1E39E37C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1E39E3810()
{
  result = qword_1ECF30460;
  if (!qword_1ECF30460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30468, &qword_1E42B1830);
    sub_1E32752B0(&qword_1ECF30420, &qword_1ECF30408, &qword_1E42B1748, MEMORY[0x1E6981870]);
    sub_1E32752B0(&qword_1ECF30428, &qword_1ECF30418, &qword_1E42B1758, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30460);
  }

  return result;
}

double sub_1E39E38F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E37E6F1C(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E39E3938(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E37434B8(result, a2, a3 & 1);
  }

  return result;
}

double sub_1E39E397C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1E37E6F1C(a1, a2, a3 & 1);

  return result;
}

uint64_t sub_1E39E39B8(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E37434B8(a1, a2, a3 & 1);
}

double sub_1E39E3A00()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1E39E3A48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI27SplitOfferTemplateViewModel_templates;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = a1;
}

uint64_t sub_1E39E3ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC8VideosUI27SplitOfferTemplateViewModel_templates) = MEMORY[0x1E69E7CC0];
  if ((sub_1E39E3C28(a1, 12, a3) & 1) == 0)
  {

    type metadata accessor for SplitOfferTemplateViewModel(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_1E410D51C();
  v5 = v4;
  if (v4)
  {
    v6 = *(*v4 + 464);

    v8 = v6(v7);

    if (v8)
    {
      v9 = sub_1E39E3D24(v8);

      if (v9)
      {
        v11 = OBJC_IVAR____TtC8VideosUI27SplitOfferTemplateViewModel_templates;
        OUTLINED_FUNCTION_37(v10);
        *(v5 + v11) = v9;

        return v5;
      }
    }

    return 0;
  }

  return v5;
}

uint64_t sub_1E39E3C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E39E42E0(a1, a2, a3);
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t type metadata accessor for SplitOfferTemplateViewModel(uint64_t a1)
{
  result = qword_1EE294790;
  if (!qword_1EE294790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E39E3D24(unint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for TemplateViewModel(0);
    if (!swift_dynamicCastClass())
    {

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1E39E3E54(uint64_t a1)
{
  type metadata accessor for SplitOfferTemplateViewModel(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(*v1 + 1272);

    v6 = v4(v5);
    v7 = (*(*v3 + 1272))();
    v8 = sub_1E39E3F70(v6, v7);

    if (v8)
    {
      v9 = sub_1E39C0504(v3);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1E39E3F70(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v14 = 0;
      return v14 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v14 = 1;
      return v14 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for TemplateViewModel(0);
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }
      }

      sub_1E39E4288();
      v14 = sub_1E4205E84();

      if (v14)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v14 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t SplitOfferTemplateViewModel.deinit()
{
  v0 = TemplateViewModel.deinit();

  return v0;
}

uint64_t SplitOfferTemplateViewModel.__deallocating_deinit()
{
  v0 = TemplateViewModel.deinit();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E39E4288()
{
  result = qword_1EE279850;
  if (!qword_1EE279850)
  {
    type metadata accessor for TemplateViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE279850);
  }

  return result;
}

unint64_t sub_1E39E42E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE279860;
  if (!qword_1EE279860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE279860);
  }

  return result;
}

void sub_1E39E4334(uint64_t a1, double a2)
{
  if (sub_1E39DFFC8())
  {
    if ((a1 & 0xA) != 0)
    {
      [v2 setClipsToBounds_];
      v5 = [v2 vuiLayer];
      if (v5)
      {
        v6 = v5;
        v7 = [objc_opt_self() vuiMeshTransformWithEdges:a1 mirrorPercentage:a2];
        [v6 setMeshTransform_];
      }

      v8 = [v2 vuiLayer];
      if (v8)
      {
        v9 = v8;
        [v8 setShouldRasterize_];
      }
    }

    else
    {

      [v2 setClipsToBounds_];
    }
  }
}

void sub_1E39E4488(char a1, double a2, double a3)
{
  v4 = v3;
  v64.receiver = v4;
  v64.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v64, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (a1)
  {
    return;
  }

  v8 = OBJC_IVAR____TtC8VideosUI19ProductGradientView_gradientLayouts;
  OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI19ProductGradientView_gradientLayouts], v63);
  v9 = *&v4[v8];
  v10 = sub_1E32AE9B0(v9);
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = v10;
  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  v12 = OBJC_IVAR____TtC8VideosUI19ProductGradientView_gradientViews;
  v13 = v9 & 0xC000000000000001;

  v14 = 0;
  v61 = v11;
  do
  {
    if (v13)
    {
      v15 = MEMORY[0x1E6911E60](v14, v9);
    }

    else
    {
      v15 = *(v9 + 8 * v14 + 32);
    }

    swift_beginAccess();
    v16 = *&v4[v12];
    if (!*(v16 + 16) || (v17 = sub_1E39E6224(v15 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id), (v18 & 1) == 0))
    {
      swift_endAccess();

      goto LABEL_21;
    }

    v19 = v13;
    v20 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    v21 = *(*v15 + 504);
    v22 = v20;

    v24 = (v21)(v23);
    if (v24 != 18)
    {
      v62[0] = v24;
      sub_1E39E67F4(v24, v25, v26);
      if (sub_1E4205E84())
      {
        v27 = (*(*v15 + 304))();
        if ((v28 & 1) == 0)
        {
          v38 = *&v27;

          v39 = v38;
          v40 = v22;
          [v4 bounds];
          v42 = v41 - v39;
          [v4 bounds];
          [v40 setFrame_];
          v13 = v19;
          goto LABEL_20;
        }
      }
    }

    v29 = v21();
    if (v29 == 18 || (v62[0] = v29, sub_1E39E67F4(v29, v30, v31), (sub_1E4205E84() & 1) == 0))
    {

      v13 = v19;
LABEL_19:
      v35 = v22;
      [v4 bounds];
      [v35 setFrame_];
      goto LABEL_20;
    }

    (*(*v15 + 304))();
    v33 = v32;

    v13 = v19;
    if (v33)
    {
      goto LABEL_19;
    }

    v34 = v22;
    [v4 bounds];
    [v34 setFrame_];
LABEL_20:
    v11 = v61;

    sub_1E396030C(v15);

LABEL_21:
    ++v14;
  }

  while (v11 != v14);

LABEL_24:
  v43 = OBJC_IVAR____TtC8VideosUI19ProductGradientView_imageView;
  OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI19ProductGradientView_imageView], v62);
  if (*&v4[v43])
  {
    v44 = OUTLINED_FUNCTION_10_64();
    [v45 v46];
  }

  v47 = *&v4[OBJC_IVAR____TtC8VideosUI19ProductGradientView_productBlurLayout];
  if (v47)
  {
    v48 = *(*v47 + 504);

    v50 = v48(v49);
    if (v50 == 18 || (sub_1E39E67F4(v50, v51, v52), (sub_1E4205E84() & 1) == 0) || ((*(*v47 + 304))(), (v53 & 1) != 0))
    {

      goto LABEL_31;
    }

    [v4 bounds];
    CGRectGetHeight(v65);
    [v4 bounds];
    CGRectGetWidth(v66);
  }

  else
  {
LABEL_31:
    [v4 bounds];
  }

  v54 = *&v4[OBJC_IVAR____TtC8VideosUI19ProductGradientView_productBlurView];
  if (v54)
  {
    [v54 setFrame_];
  }

  v55 = *&v4[OBJC_IVAR____TtC8VideosUI19ProductGradientView_productBlurGradientLayer];
  if (v55)
  {
    v56 = v55;
    v57 = OUTLINED_FUNCTION_10_64();
    sub_1E3D54B34(v57, v58, v59, v60);
  }
}

double sub_1E39E4A50(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1 + 104, v7);

  v3 = sub_1E39E4ACC(v2);
  sub_1E39E4B5C(v3);

  OUTLINED_FUNCTION_5_0(a1 + 128, &v6);

  sub_1E39E57B4(v4);

  return result;
}

void *sub_1E39E4ACC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1E37FEA14(*(a1 + 16), 0);
  v4 = sub_1E39E6CC0(&v6, v3 + 4, v2, a1);
  sub_1E34AF4DC(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1E39E4B5C(unint64_t a1)
{
  v103 = sub_1E41FE624();
  v105 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC8VideosUI19ProductGradientView_gradientLayouts;
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI19ProductGradientView_gradientLayouts], v116);
  v112 = v4;
  v113 = v1;
  v5 = *&v1[v4];
  v107 = MEMORY[0x1E69E7CC0];
  v118 = MEMORY[0x1E69E7CC0];
  v6 = sub_1E32AE9B0(v5);
  v7 = v5 & 0xC000000000000001;
  v108 = v5 + 32;
  v114 = a1 & 0xC000000000000001;
  v109 = a1 + 32;
  v110 = v6;
  v111 = v5;

  v8 = 0;
  v106 = 0;
LABEL_2:
  if (v8 != v110)
  {
    sub_1E34AF4E4(v8, v7 == 0, v111);
    if (v7)
    {
      MEMORY[0x1E6911E60](v8, v111);
    }

    else
    {
    }

    v9 = __OFADD__(v8++, 1);
    if (!v9)
    {
      v10 = sub_1E32AE9B0(a1);
      v11 = 0;
      while (1)
      {
        if (v10 == v11)
        {
          sub_1E4207544();
          OUTLINED_FUNCTION_7_91();
          sub_1E4207594();
          sub_1E4207554();
          goto LABEL_2;
        }

        if (v114)
        {
          MEMORY[0x1E6911E60](v11, a1);
        }

        else
        {
          if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_141;
          }
        }

        if (__OFADD__(v11, 1))
        {
          break;
        }

        v5 = sub_1E41FE604();

        ++v11;
        if (v5)
        {

          goto LABEL_2;
        }
      }

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
    }

    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
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
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v108 = v118;
  v118 = MEMORY[0x1E69E7CC0];
  v110 = sub_1E32AE9B0(a1);
  v12 = 0;
LABEL_18:
  while (v12 != v110)
  {
    OUTLINED_FUNCTION_6_72();
    if (v5)
    {
      MEMORY[0x1E6911E60](v12, a1);
    }

    else
    {
    }

    v9 = __OFADD__(v12, 1);
    v13 = v12 + 1;
    if (v9)
    {
      goto LABEL_147;
    }

    v111 = v13;
    v14 = *&v113[v112];
    v15 = sub_1E32AE9B0(v14);

    v16 = 0;
    while (v15 != v16)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_143;
        }
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_142;
      }

      v5 = sub_1E41FE604();

      ++v16;
      if (v5)
      {

        v12 = v111;
        goto LABEL_18;
      }
    }

    sub_1E4207544();
    OUTLINED_FUNCTION_7_91();
    sub_1E4207594();
    sub_1E4207554();
    v12 = v111;
  }

  v17 = 0;
  v104 = v118;
  v18 = MEMORY[0x1E69E7CC0];
  v118 = MEMORY[0x1E69E7CC0];
  while (v17 != v110)
  {
    OUTLINED_FUNCTION_6_72();
    if (v5)
    {
      MEMORY[0x1E6911E60](v17, a1);
    }

    else
    {
    }

    v9 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v9)
    {
      goto LABEL_148;
    }

    v111 = v19;
    v20 = *&v113[v112];
    v21 = sub_1E32AE9B0(v20);

    v22 = 0;
    while (v21 != v22)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v22, v20);
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_145;
        }
      }

      if (__OFADD__(v22, 1))
      {
        goto LABEL_144;
      }

      v5 = sub_1E41FE604();

      ++v22;
      if (v5)
      {

        sub_1E4207544();
        OUTLINED_FUNCTION_7_91();
        sub_1E4207594();
        sub_1E4207554();
        goto LABEL_48;
      }
    }

LABEL_48:
    v18 = MEMORY[0x1E69E7CC0];
    v17 = v111;
  }

  v101 = v118;
  v115 = v18;
  v23 = v108;
  v24 = 0;
  v110 = sub_1E32AE9B0(v108);
  v111 = OBJC_IVAR____TtC8VideosUI19ProductGradientView_gradientViews;
  v109 = v23 & 0xC000000000000001;
  v100 = (v105 + 16);
  v99 = (v105 + 8);
  v26 = v112;
  v25 = v113;
  while (v110 != v24)
  {
    if (v109)
    {
      v27 = MEMORY[0x1E6911E60](v24, v23);
    }

    else
    {
      if (v24 >= *(v23 + 16))
      {
        goto LABEL_150;
      }

      v27 = *(v23 + 8 * v24 + 32);
    }

    if (__OFADD__(v24, 1))
    {
      goto LABEL_149;
    }

    OUTLINED_FUNCTION_27_11(&v25[v26]);

    v28 = v106;
    sub_1E39E6450(&v25[v26], v27);
    if (v28)
    {
      goto LABEL_162;
    }

    v30 = v29;
    v106 = 0;
    v31 = *&v25[v26];
    v32 = v31 >> 62;
    if (v31 >> 62)
    {
      OUTLINED_FUNCTION_11_18(v31 & 0xFFFFFFFFFFFFFF8);
      v33 = sub_1E4207384();
    }

    else
    {
      v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = v33 - v30;
    if (v33 < v30)
    {
      goto LABEL_151;
    }

    if (v30 < 0)
    {
      goto LABEL_152;
    }

    if (v32)
    {
      OUTLINED_FUNCTION_11_18(v31 & 0xFFFFFFFFFFFFFF8);
      v35 = sub_1E4207384();
    }

    else
    {
      v35 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v35 < v33)
    {
      goto LABEL_153;
    }

    v36 = v30 - v33;
    if (__OFSUB__(0, v34))
    {
      goto LABEL_154;
    }

    if (v32)
    {
      OUTLINED_FUNCTION_11_18(v31 & 0xFFFFFFFFFFFFFF8);
      v37 = sub_1E4207384();
    }

    else
    {
      v37 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v37 - v34;
    if (__OFADD__(v37, v36))
    {
      goto LABEL_155;
    }

    v105 = v24 + 1;
    v114 = v27;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v113[v112] = v31;
    if (v32)
    {
      v40 = 0;
    }

    else
    {
      v40 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    if (v40 != 1 || (v41 = v31 & 0xFFFFFFFFFFFFFF8, v38 > *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v32)
      {
        OUTLINED_FUNCTION_11_18(v31 & 0xFFFFFFFFFFFFFF8);
        sub_1E4207384();
      }

      v31 = sub_1E4207514();
      *&v113[v112] = v31;
      v41 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    type metadata accessor for ViewGradientLayout(0);
    swift_arrayDestroy();
    if (v34)
    {
      if (v31 >> 62)
      {
        v42 = sub_1E4207384();
      }

      else
      {
        v42 = *(v41 + 16);
      }

      v43 = v42 - v33;
      if (__OFSUB__(v42, v33))
      {
        goto LABEL_156;
      }

      v44 = (v41 + 32 + 8 * v33);
      if (v33 != v30 || v41 + 32 + 8 * v30 >= v44 + 8 * v43)
      {
        memmove((v41 + 32 + 8 * v30), v44, 8 * v43);
      }

      if (v31 >> 62)
      {
        v46 = sub_1E4207384();
      }

      else
      {
        v46 = *(v41 + 16);
      }

      if (__OFADD__(v46, v36))
      {
        goto LABEL_157;
      }

      *(v41 + 16) = v46 - v34;
    }

    v26 = v112;
    v25 = v113;
    *&v113[v112] = v31;
    swift_endAccess();
    v47 = v111;
    swift_beginAccess();
    v48 = *&v25[v47];
    v49 = v114;
    if (*(v48 + 16) && (v50 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id, v51 = sub_1E39E6224(v114 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id), (v52 & 1) != 0))
    {
      v53 = *(*(v48 + 56) + 8 * v51);
      swift_endAccess();
      v54 = v49 + v50;
      v55 = v102;
      v56 = v103;
      (*v100)(v102, v54, v103);
      OUTLINED_FUNCTION_27_11(&v25[v111]);
      v57 = v53;
      v58 = sub_1E39E66C8(v55);
      (*v99)(v55, v56);
      swift_endAccess();

      v59 = v57;
      MEMORY[0x1E6910BF0]();
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();

      v107 = v115;
      v24 = v105;
      v26 = v112;
      v25 = v113;
      v23 = v108;
    }

    else
    {
      swift_endAccess();

      ++v24;
      v23 = v108;
    }
  }

  v60 = sub_1E32AE9B0(v104);
  if (v60)
  {
    v61 = v60;
    if (v60 < 1)
    {
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v62 = 0;
    v114 = v104 & 0xC000000000000001;
    do
    {
      if (v114)
      {
        v63 = MEMORY[0x1E6911E60](v62, v104);
      }

      else
      {
        v63 = *(v104 + 8 * v62 + 32);
      }

      v64 = v107 >> 62;
      if (v107 >> 62)
      {
        if (!sub_1E4207384())
        {
LABEL_118:
          v71 = v113;
LABEL_119:
          type metadata accessor for GradientView();
          [v71 bounds];
          v70 = sub_1E3890DAC();
          v69 = 0;
          goto LABEL_120;
        }
      }

      else if (!*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_118;
      }

      v65 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v64 || (v65 & 1) == 0)
      {
        v66 = sub_1E37EFA58(v107);
      }

      else
      {
        v66 = v107;
      }

      v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v67)
      {
        goto LABEL_158;
      }

      v107 = v66;
      v68 = v67 - 1;
      v69 = *((v66 & 0xFFFFFFFFFFFFFF8) + 8 * (v67 - 1) + 0x20);
      *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) = v68;
      v70 = v69;
      v71 = v113;
      if (!v69)
      {
        goto LABEL_119;
      }

LABEL_120:
      ++v62;
      v72 = v69;
      [v71 addSubview_];
      v73 = OBJC_IVAR____TtC8VideosUI19ProductGradientView_gradientLayouts;
      OUTLINED_FUNCTION_27_11(v71 + OBJC_IVAR____TtC8VideosUI19ProductGradientView_gradientLayouts);

      MEMORY[0x1E6910BF0](v74);
      sub_1E38C5A18(*((*(v71 + v73) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1E4206324();
      swift_endAccess();
      v75 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id;
      v76 = OBJC_IVAR____TtC8VideosUI19ProductGradientView_gradientViews;
      OUTLINED_FUNCTION_27_11(v71 + OBJC_IVAR____TtC8VideosUI19ProductGradientView_gradientViews);
      v77 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = *(v71 + v76);
      sub_1E39E68B0(v77, v63 + v75, isUniquelyReferenced_nonNull_native);
      *(v71 + v76) = v117;
      swift_endAccess();
      [v71 vui_setNeedsLayout];
    }

    while (v61 != v62);
  }

  v79 = v107;
  v80 = sub_1E32AE9B0(v107);
  v81 = v79;
  v82 = v101;
  if (!v80)
  {
LABEL_128:

    v88 = sub_1E32AE9B0(v82);
    if (v88)
    {
      v89 = v88;
      if (v88 < 1)
      {
        goto LABEL_161;
      }

      for (i = 0; i != v89; ++i)
      {
        if ((v82 & 0xC000000000000001) != 0)
        {
          v91 = MEMORY[0x1E6911E60](i, v82);
        }

        else
        {
          v91 = *(v82 + 8 * i + 32);
        }

        v92 = v113;
        v93 = v111;
        swift_beginAccess();
        v94 = *&v92[v93];
        if (*(v94 + 16) && (v95 = sub_1E39E6224(v91 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id), (v96 & 1) != 0))
        {
          v97 = *(*(v94 + 56) + 8 * v95);
          swift_endAccess();
          v98 = v97;
          sub_1E396030C(v91);
        }

        else
        {
          swift_endAccess();
        }
      }
    }

    return;
  }

  v83 = v80;
  if (v80 >= 1)
  {
    v84 = 0;
    v85 = v79 & 0xC000000000000001;
    do
    {
      if (v85)
      {
        v86 = MEMORY[0x1E6911E60](v84, v81);
      }

      else
      {
        v86 = *(v81 + 8 * v84 + 32);
      }

      v87 = v86;
      ++v84;
      [v86 removeFromSuperview];

      v81 = v107;
    }

    while (v83 != v84);
    goto LABEL_128;
  }

LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  swift_endAccess();
  __break(1u);
}

void sub_1E39E57B4(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = *(*a1 + 936);

    v5 = v4();
    if (v5 == 2 || (v5 & 1) == 0)
    {
      v6 = (*(*a1 + 1888))();
      if (v6)
      {
        v7 = v6;
        *&v1[OBJC_IVAR____TtC8VideosUI19ProductGradientView_productBlurLayout] = a1;

        v9 = OBJC_IVAR____TtC8VideosUI19ProductGradientView_productBlurView;
        v28 = *&v1[OBJC_IVAR____TtC8VideosUI19ProductGradientView_productBlurView];
        MEMORY[0x1EEE9AC00](v8);
        v11 = v10;
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF389B0, &unk_1E42D1640);
        sub_1E4148C68(sub_1E39E686C, v12, &v29);

        v13 = v29;
        [v13 setHidden_];
        [v13 setEffect_];
        [v2 vui:v13 addSubview:0 oldView:?];
        v14 = *&v2[v9];
        *&v2[v9] = v13;
        v15 = v13;

        v16 = OBJC_IVAR____TtC8VideosUI19ProductGradientView_productBlurGradientLayer;
        if (*&v2[OBJC_IVAR____TtC8VideosUI19ProductGradientView_productBlurGradientLayer])
        {
        }

        else
        {
          v18 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
          [v18 setHidden_];
          sub_1E39E5D44(v18);
          [v2 bounds];
          v23 = sub_1E3D54B34(v19, v20, v21, v22);
          v24 = (*(*a1 + 1936))(v23);
          [v18 setCompositingFilter_];

          v25 = [v15 vuiLayer];
          [v25 addSublayer_];

          v26 = [v15 vuiLayer];
          if (v26)
          {
            [v26 setAllowsGroupBlending_];
          }

          [v2 vui_setNeedsLayout];

          v27 = *&v2[v16];
          *&v2[v16] = v18;
        }

        return;
      }
    }
  }

  v17 = *&v1[OBJC_IVAR____TtC8VideosUI19ProductGradientView_productBlurView];
  if (v17)
  {
    [v17 setHidden_];
  }

  *&v1[OBJC_IVAR____TtC8VideosUI19ProductGradientView_productBlurLayout] = 0;
}

id sub_1E39E5B54()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI19ProductGradientView_gradientLayouts) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_103(&OBJC_IVAR____TtC8VideosUI19ProductGradientView_gradientLayouts);
  *(v0 + OBJC_IVAR____TtC8VideosUI19ProductGradientView_imageView) = 0;
  v6 = v1;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E39E5BFC(void *a1)
{
  swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI19ProductGradientView_gradientLayouts] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_103(&OBJC_IVAR____TtC8VideosUI19ProductGradientView_gradientLayouts);
  *&v1[OBJC_IVAR____TtC8VideosUI19ProductGradientView_imageView] = 0;
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

char *sub_1E39E5D44(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setDisableActions_];
  OUTLINED_FUNCTION_3_11();
  v6 = (*(v5 + 1792))();
  v7 = v6;
  v8 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v9 = sub_1E32AE9B0(v6);
    if (v9)
    {
      v10 = v9;
      v44 = v8;
      result = sub_1E37EBF70(0, v9 & ~(v9 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v40 = v1;
      v41 = v4;
      v12 = 0;
      v13 = v44;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1E6911E60](v12, v7);
        }

        else
        {
          v14 = *(v7 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = [v14 CGColor];
        type metadata accessor for CGColor();
        v43 = v17;

        *&v42 = v16;
        v44 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1E37EBF70((v18 > 1), v19 + 1, 1);
          v13 = v44;
        }

        ++v12;
        *(v13 + 16) = v19 + 1;
        sub_1E329504C(&v42, (v13 + 32 * v19 + 32));
      }

      while (v10 != v12);

      v2 = v40;
      v4 = v41;
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }

    v7 = sub_1E42062A4();
  }

  [a1 setColors_];

  OUTLINED_FUNCTION_3_11();
  v21 = (*(v20 + 1816))();
  v22 = v21;
  if (v21)
  {
    v23 = *(v21 + 16);
    if (v23)
    {
      v40 = v2;
      v41 = v4;
      *&v42 = v8;
      sub_1E4207574();
      v24 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
        v24 += 8;
        --v23;
      }

      while (v23);

      v4 = v41;
      v2 = v40;
    }

    else
    {
    }

    sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
    v22 = sub_1E42062A4();
  }

  [a1 setLocations_];

  OUTLINED_FUNCTION_3_11();
  v26 = (*(v25 + 1720))();
  v29 = OUTLINED_FUNCTION_5_89(v26, v27, v28);
  MEMORY[0x1EEE9AC00](v29);
  v39[2] = a1;
  v39[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED20, &unk_1E42AD6F0);
  sub_1E4148DE0(sub_1E39E6C34);
  OUTLINED_FUNCTION_3_11();
  v31 = (*(v30 + 1744))();
  v34 = OUTLINED_FUNCTION_5_89(v31, v32, v33);
  MEMORY[0x1EEE9AC00](v34);
  v39[-2] = a1;
  v39[-1] = v2;
  sub_1E4148DE0(sub_1E39E6C40);
  OUTLINED_FUNCTION_3_11();
  v36 = (*(v35 + 1768))();
  if (v36 == 5)
  {
    v37 = *MEMORY[0x1E6979DA0];
  }

  else
  {
    v37 = sub_1E40C2190(v36);
  }

  v38 = v37;
  [a1 setType_];

  return [v4 commit];
}

unint64_t sub_1E39E6224(uint64_t a1)
{
  sub_1E41FE624();
  sub_1E32AC3CC(&qword_1EE28A440, MEMORY[0x1E69695B8]);
  v2 = sub_1E4205DA4();

  return sub_1E39E62A8(a1, v2);
}

unint64_t sub_1E39E62A8(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1E41FE624();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    sub_1E32AC3CC(&qword_1EE28A438, MEMORY[0x1E69695C8]);
    v10 = sub_1E4205E84();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

void sub_1E39E6450(unint64_t *a1, uint64_t a2)
{
  v4 = a1;
  v5 = *a1;

  sub_1E39E6B28(v5, a2);
  v8 = v6;
  if (v2)
  {
    goto LABEL_38;
  }

  if (v7)
  {
    sub_1E32AE9B0(v5);
LABEL_38:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v5 >> 62 ? sub_1E4207384() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_38;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v9, v5);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
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
LABEL_46:
          __break(1u);
          break;
        }

        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }
      }

      v11 = sub_1E41FE604();

      if ((v11 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1E6911E60](v8, v5);
            v13 = MEMORY[0x1E6911E60](v9, v5);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }

            v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v14)
            {
              goto LABEL_45;
            }

            if (v9 >= v14)
            {
              goto LABEL_46;
            }

            v12 = *(v5 + 32 + 8 * v8);
            v13 = *(v5 + 32 + 8 * v9);
          }

          v15 = v4;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
          {
            v5 = sub_1E37EFA58(v5);
            v16 = (v5 >> 62) & 1;
          }

          else
          {
            LODWORD(v16) = 0;
          }

          v17 = v5 & 0xFFFFFFFFFFFFFF8;
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v13;

          if ((v5 & 0x8000000000000000) != 0 || v16)
          {
            v5 = sub_1E37EFA58(v5);
            v17 = v5 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v9 >= *(v17 + 16))
          {
            goto LABEL_43;
          }

          v4 = v15;
          *(v17 + 8 * v9 + 32) = v12;

          *v15 = v5;
        }

        v18 = __OFADD__(v8++, 1);
        if (v18)
        {
          goto LABEL_42;
        }
      }

      v18 = __OFADD__(v9++, 1);
      if (v18)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1E39E66C8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E39E6224(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A0, &qword_1E42B18B0);
  sub_1E4207644();
  v6 = *(v10 + 48);
  v7 = sub_1E41FE624();
  (*(*(v7 - 8) + 8))(v6 + *(*(v7 - 8) + 72) * v5, v7);
  v8 = *(*(v10 + 56) + 8 * v5);
  type metadata accessor for GradientView();
  sub_1E32AC3CC(&qword_1EE28A440, MEMORY[0x1E69695B8]);
  sub_1E4207664();
  *v2 = v10;
  return v8;
}

unint64_t sub_1E39E67F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE287230;
  if (!qword_1EE287230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287230);
  }

  return result;
}

id sub_1E39E686C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  *a1 = result;
  return result;
}

void sub_1E39E68B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_1E41FE624();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_1E39E6224(a2);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A0, &qword_1E42B18B0);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1E39E6224(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v14);
    *(v19 + 8 * v14) = a1;
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    sub_1E39E6A70(v14, v10, a1, v18);
  }
}

uint64_t sub_1E39E6A70(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1E41FE624();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_1E39E6B28(unint64_t a1, uint64_t a2)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
LABEL_11:

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v4, a1);
      goto LABEL_6;
    }

    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_6:
    v5 = sub_1E41FE604();

    if (v5)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

id sub_1E39E6C4C(double *a1, const char **a2)
{
  v4 = *(v2 + 16);
  v6 = *a1;
  v5 = a1[1];
  v7 = [*(v2 + 24) vuiIsRTL];
  v8 = 1.0 - v6;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = *a2;

  return [v4 v9];
}

void *sub_1E39E6CC0(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E39E6E90()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  sub_1E41FDFB4();
  v14 = sub_1E4205CB4();
  sub_1E39E72C4(v13, v10);
  v15 = sub_1E41FE004();
  if (__swift_getEnumTagSinglePayload(v10, 1, v15) == 1)
  {
    sub_1E325F7FC(v13, &qword_1ECF304A8, &unk_1E42B18D0);
    v13 = v10;
LABEL_24:
    sub_1E325F7FC(v13, &qword_1ECF304A8, &unk_1E42B18D0);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  sub_1E41FDF84();
  OUTLINED_FUNCTION_37_1();
  v17 = v15;
  v19 = v18;
  (*(v16 + 8))(v10, v17);
  if (!v19)
  {
    goto LABEL_24;
  }

  v55 = v13;
  v63 = *(v19 + 16);
  if (!v63)
  {
LABEL_23:

    v13 = v55;
    goto LABEL_24;
  }

  v20 = 0;
  v62 = v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v60 = v2 + 8;
  v61 = v2 + 16;
  v57 = v6;
  v58 = v0;
  v56 = v2;
  while (v20 < *(v19 + 16))
  {
    (*(v2 + 16))(v6, v62 + *(v2 + 72) * v20, v0);
    sub_1E41FDF54();
    v22 = v21;
    OUTLINED_FUNCTION_2_30();
    if (!v24 || (v25 = v23, sub_1E41FDF64(), !v26))
    {
      v44 = OUTLINED_FUNCTION_5_90();
      v45(v44, v0);
LABEL_17:

      goto LABEL_22;
    }

    v27 = v26;
    OUTLINED_FUNCTION_2_30();
    if (!v29)
    {
      v46 = OUTLINED_FUNCTION_5_90();
      v47(v46, v0);

      goto LABEL_17;
    }

    v59 = v28;
    swift_isUniquelyReferenced_nonNull_native();
    v64 = v14;
    v30 = OUTLINED_FUNCTION_95_0();
    v32 = sub_1E327D33C(v30, v31);
    if (__OFADD__(v14[2], (v33 & 1) == 0))
    {
      goto LABEL_26;
    }

    v34 = v32;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570, &qword_1E429DC30);
    if (sub_1E4207644())
    {
      v36 = OUTLINED_FUNCTION_95_0();
      v38 = sub_1E327D33C(v36, v37);
      if ((v35 & 1) != (v39 & 1))
      {
        goto LABEL_28;
      }

      v34 = v38;
    }

    v6 = v57;
    v40 = v59;
    if (v35)
    {

      v14 = v64;
      v41 = (v64[7] + 16 * v34);
      *v41 = v40;
      v41[1] = v27;

      v42 = OUTLINED_FUNCTION_5_90();
      v0 = v58;
      v43(v42, v58);
    }

    else
    {
      v14 = v64;
      v64[(v34 >> 6) + 8] |= 1 << v34;
      v48 = (v14[6] + 16 * v34);
      *v48 = v25;
      v48[1] = v22;
      v49 = (v14[7] + 16 * v34);
      *v49 = v40;
      v49[1] = v27;
      v50 = OUTLINED_FUNCTION_5_90();
      v0 = v58;
      v51(v50, v58);
      v52 = v14[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_27;
      }

      v14[2] = v54;
    }

    v2 = v56;
LABEL_22:
    if (v63 == ++v20)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_1E4207A74();
  __break(1u);
}

uint64_t sub_1E39E72C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E39E7334()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = *(v1 + 16);
  if (!v9)
  {
LABEL_17:
    sub_1E39E7688();

    OUTLINED_FUNCTION_25_2();
    return;
  }

  v11 = *(v4 + 16);
  v10 = v4 + 16;
  v42 = v11;
  v12 = v1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v41 = *(v10 + 56);
  v13 = MEMORY[0x1E69E7CC8];
  v40 = v2;
  while (1)
  {
    v42(v8, v12, v2);
    v14 = sub_1E41FDF54();
    v16 = v15;
    v17 = sub_1E41FDF64();
    if (!v18)
    {
      sub_1E327D33C(v14, v16);
      v8 = v34;

      if (v8)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v44 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570, &qword_1E429DC30);
        v8 = &v44;
        sub_1E4207644();
        v13 = v44;

        sub_1E4207664();
      }

      v35 = OUTLINED_FUNCTION_6_73();
      v36(v35, v2);
      goto LABEL_16;
    }

    v19 = v18;
    v43 = v9;
    v20 = v17;
    swift_isUniquelyReferenced_nonNull_native();
    v44 = v13;
    v21 = sub_1E327D33C(v14, v16);
    if (__OFADD__(v13[2], (v22 & 1) == 0))
    {
      break;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570, &qword_1E429DC30);
    v8 = &v44;
    if (sub_1E4207644())
    {
      v8 = v44;
      v25 = sub_1E327D33C(v14, v16);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_20;
      }

      v23 = v25;
      if ((v24 & 1) == 0)
      {
LABEL_8:
        v13 = v44;
        OUTLINED_FUNCTION_1_114(&v44[v23 >> 6]);
        v27 = (v13[6] + 16 * v23);
        *v27 = v14;
        v27[1] = v16;
        v28 = (v13[7] + 16 * v23);
        *v28 = v20;
        v28[1] = v19;
        v29 = OUTLINED_FUNCTION_6_73();
        v2 = v40;
        v30(v29, v40);
        v31 = v13[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_19;
        }

        v13[2] = v33;
        goto LABEL_15;
      }
    }

    else if ((v24 & 1) == 0)
    {
      goto LABEL_8;
    }

    v13 = v44;
    v37 = (v44[7] + 16 * v23);
    *v37 = v20;
    v37[1] = v19;

    v38 = OUTLINED_FUNCTION_6_73();
    v2 = v40;
    v39(v38, v40);
LABEL_15:
    v9 = v43;
LABEL_16:
    v12 += v41;
    if (!--v9)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_1E4207A74();
  __break(1u);
}

void sub_1E39E7688()
{
  OUTLINED_FUNCTION_31_1();
  v62 = v1;
  v2 = sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v67 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  sub_1E41FDFB4();
  v12 = sub_1E41FE004();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1E325F7FC(v11, &qword_1ECF304A8, &unk_1E42B18D0);
LABEL_21:
    v15 = 0;
LABEL_22:
    v39 = v62 + 64;
    OUTLINED_FUNCTION_3_92();
    v65 = v40;

    v41 = 0;
    v66 = v39;
    while (1)
    {
      if (!v0)
      {
        do
        {
          v57 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v57 >= v65)
          {

            goto LABEL_37;
          }

          v0 = *(v39 + 8 * v57);
          ++v41;
        }

        while (!v0);
        v41 = v57;
        if (v15)
        {
          goto LABEL_25;
        }

LABEL_33:

        goto LABEL_37;
      }

      if (!v15)
      {
        goto LABEL_33;
      }

LABEL_25:
      OUTLINED_FUNCTION_17_54();
      v43 = (*(v62 + 48) + v42);
      v44 = (*(v62 + 56) + v42);
      v45 = v44[1];
      v67 = *v44;
      v46 = v43[1];
      v71 = *v43;
      v72 = v46;
      sub_1E32822E0(v47, v48, v49);

      v50 = sub_1E42071C4();
      if (!*(v15 + 16))
      {
        break;
      }

      sub_1E327D33C(v50, v51);
      if ((v52 & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_16_57();
      v54 = *v53;
      v55 = v53[1];

      v69 = v54;
      v70 = v55;
      v68[0] = v67;
      v68[1] = v45;
      v56 = OUTLINED_FUNCTION_8_62(v68);

      v39 = v66;

      if (v56)
      {

        goto LABEL_36;
      }
    }

LABEL_36:

LABEL_37:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v13 = sub_1E41FDF84();
  OUTLINED_FUNCTION_37_1();
  (*(v14 + 8))(v11, v12);
  if (!v13)
  {
    goto LABEL_21;
  }

  v15 = sub_1E4205CB4();
  v66 = *(v13 + 16);
  if (!v66)
  {
LABEL_20:

    goto LABEL_22;
  }

  v16 = 0;
  v65 = v13 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
  v63 = (v67 + 8);
  v64 = v67 + 16;
  v60 = v2;
  v61 = v13;
  v59 = v7;
  while (v16 < *(v13 + 16))
  {
    (*(v67 + 16))(v7, v65 + *(v67 + 72) * v16, v2);
    v71 = sub_1E41FDF54();
    v72 = v17;
    sub_1E32822E0(v71, v17, v18);
    v19 = sub_1E42071C4();
    v0 = v20;

    v21 = sub_1E41FDF64();
    if (!v22)
    {
      sub_1E327D33C(v19, v0);
      v37 = v36;

      if (v37)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v69 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570, &qword_1E429DC30);
        v13 = v61;
        sub_1E4207644();
        v15 = v69;

        sub_1E4207664();
      }

      (*v63)(v7, v2);
      goto LABEL_19;
    }

    v23 = v22;
    v24 = v21;
    swift_isUniquelyReferenced_nonNull_native();
    v69 = v15;
    sub_1E327D33C(v19, v0);
    OUTLINED_FUNCTION_15_62();
    if (v27)
    {
      goto LABEL_40;
    }

    v28 = v25;
    v29 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570, &qword_1E429DC30);
    if (sub_1E4207644())
    {
      v30 = sub_1E327D33C(v19, v0);
      v13 = v61;
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_42;
      }

      v28 = v30;
      if (v29)
      {
LABEL_18:

        v15 = v69;
        OUTLINED_FUNCTION_14_71();
        *v38 = v24;
        v38[1] = v23;

        v7 = v59;
        v2 = v60;
        (*v63)(v59, v60);
        goto LABEL_19;
      }
    }

    else
    {
      v13 = v61;
      if (v29)
      {
        goto LABEL_18;
      }
    }

    v15 = v69;
    OUTLINED_FUNCTION_1_114(v69 + 8 * (v28 >> 6));
    v32 = (*(v15 + 48) + 16 * v28);
    *v32 = v19;
    v32[1] = v0;
    OUTLINED_FUNCTION_14_71();
    *v33 = v24;
    v33[1] = v23;
    v7 = v59;
    v2 = v60;
    (*v63)(v59, v60);
    v34 = *(v15 + 16);
    v27 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v27)
    {
      goto LABEL_41;
    }

    *(v15 + 16) = v35;
LABEL_19:
    if (v66 == ++v16)
    {
      goto LABEL_20;
    }
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  sub_1E4207A74();
  __break(1u);
}

uint64_t sub_1E39E7C6C(uint64_t a1)
{
  v2 = sub_1E41FE324();
  v3 = sub_1E39E7FEC(1, v2);
  v6 = 0;
  v7 = 0;
  v57 = v8 >> 1;
  v58 = v5;
  v56 = v4 + 16 * v5;
  v60 = v5 - (v8 >> 1);
  v9 = MEMORY[0x1E69E7CC8];
  while (v60 + v7)
  {
    if (v58 + v7 >= v57)
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v10 = *(v56 + v6 + 8);
    v66 = *(v56 + v6);
    v67 = v10;
    sub_1E32822E0(v3, v4, v5);
    v11 = sub_1E42071C4();
    v13 = v12;
    v14 = sub_1E41FE324();
    if ((v7 + 1) >= *(v14 + 16))
    {
      goto LABEL_28;
    }

    v61 = v7;
    v15 = v6;
    v16 = v14 + v6;
    v18 = *(v14 + v6 + 48);
    v17 = *(v16 + 56);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v9;
    v19 = OUTLINED_FUNCTION_95_0();
    sub_1E327D33C(v19, v20);
    OUTLINED_FUNCTION_15_62();
    if (v23)
    {
      goto LABEL_29;
    }

    v24 = v21;
    v25 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570, &qword_1E429DC30);
    if (sub_1E4207644())
    {
      v26 = OUTLINED_FUNCTION_95_0();
      v28 = sub_1E327D33C(v26, v27);
      if ((v25 & 1) != (v29 & 1))
      {
        goto LABEL_32;
      }

      v24 = v28;
    }

    if (v25)
    {

      v9 = v64;
      OUTLINED_FUNCTION_14_71();
      *v30 = v18;
      v30[1] = v17;
    }

    else
    {
      v9 = v64;
      OUTLINED_FUNCTION_1_114(v64 + 8 * (v24 >> 6));
      v31 = (*(v64 + 48) + 16 * v24);
      *v31 = v11;
      v31[1] = v13;
      OUTLINED_FUNCTION_14_71();
      *v32 = v18;
      v32[1] = v17;
      v33 = *(v9 + 16);
      v23 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v23)
      {
        goto LABEL_31;
      }

      *(v9 + 16) = v34;
    }

    v6 = v15 + 16;
    v7 = v61 + 1;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_92();
  v59 = v35;

  v36 = 0;
  while (isUniquelyReferenced_nonNull_native)
  {
LABEL_20:
    OUTLINED_FUNCTION_17_54();
    v39 = (*(a1 + 48) + v38);
    v40 = v39[1];
    v41 = (*(a1 + 56) + v38);
    v43 = *v41;
    v42 = v41[1];
    v66 = *v39;
    v67 = v40;
    sub_1E32822E0(v44, v45, v46);

    v47 = sub_1E42071C4();
    if (!*(v9 + 16) || (sub_1E327D33C(v47, v48), (v49 & 1) == 0))
    {

      return 0;
    }

    OUTLINED_FUNCTION_16_57();
    v62 = v43;
    v51 = *v50;
    v52 = v50[1];

    v64 = v51;
    v65 = v52;
    v63[0] = v62;
    v63[1] = v42;
    v53 = OUTLINED_FUNCTION_8_62(v63);

    if (v53)
    {

      return 0;
    }
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v59)
    {

      return 1;
    }

    isUniquelyReferenced_nonNull_native = *(a1 + 64 + 8 * v37);
    ++v36;
    if (isUniquelyReferenced_nonNull_native)
    {
      v36 = v37;
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E39E7FEC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1E380055C(0, (v3 - result) & ~((v3 - result) >> 63), v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_1E39E8C20(0, v5, a2);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_1E39E80B0()
{
  OUTLINED_FUNCTION_31_1();
  v51 = v1;
  v45 = v3;
  v46 = v2;
  v4 = v0;
  v48 = v5;
  v49 = v6;
  v47 = v7;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v43 - v12;
  v50 = sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v23 = sub_1E41FE004();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  v30 = sub_1E41FE414();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v9, v4, v30);
  sub_1E41FDFB4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    v32 = &qword_1ECF304A8;
    v33 = &unk_1E42B18D0;
    v34 = v22;
  }

  else
  {
    v35 = (*(v25 + 32))(v29, v22, v23);
    v36 = v45(v35);
    if (v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    sub_1E41FDF44();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_1E39E8924(0, v37[2] + 1, 1, v37);
    }

    v40 = v37[2];
    v39 = v37[3];
    if (v40 >= v39 >> 1)
    {
      v37 = sub_1E39E8924((v39 > 1), v40 + 1, 1, v37);
    }

    v37[2] = v40 + 1;
    (*(v14 + 32))(v37 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v40, v18, v50);
    v51(v37);
    v41 = v52;
    sub_1E41FDFC4();
    (*(v25 + 8))(v29, v23);
    if (__swift_getEnumTagSinglePayload(v41, 1, v30) != 1)
    {
      v42 = v44;
      (*(v31 + 8))(v44, v30);
      (*(v31 + 32))(v42, v41, v30);
      goto LABEL_14;
    }

    v32 = &unk_1ECF363C0;
    v33 = &unk_1E42A9420;
    v34 = v41;
  }

  sub_1E325F7FC(v34, v32, v33);
LABEL_14:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39E8468()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = (*(v0 + 8))(v2, v0);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    OUTLINED_FUNCTION_2_30();
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
      inited = swift_initStackObject();
      v20 = xmmword_1E4297BE0;
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = 6447476;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = v8;
      *(inited + 56) = v9;

      v12 = sub_1E4205CB4();
      v13 = sub_1E39E7C6C(v12);

      if (v13)
      {

        goto LABEL_11;
      }

      v14 = swift_initStackObject();
      *(v14 + 16) = v20;
      *(v14 + 32) = 6447476;
      *(v14 + 40) = 0xE300000000000000;
      *(v14 + 48) = v8;
      *(v14 + 56) = v9;
      sub_1E4205CB4();
      sub_1E39E7688();
      v16 = v15;

      if (v16)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v17 = (*(v1 + 16))(v3, v1);
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v17);
  v19[2] = v5;
  sub_1E39E8850(sub_1E39E8A10, v19, v18);

LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39E8668(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - v3;
  v5 = sub_1E41FE3D4();
  if (v6)
  {
    v25 = v5;
    v26 = v6;
    v7 = sub_1E41FE3D4();
    v10 = v8 ? v7 : 0;
    v11 = v8 ? v8 : 0xE000000000000000;
    v23 = v10;
    v24 = v11;
    v12 = sub_1E32822E0(v7, v8, v9);
    v13 = OUTLINED_FUNCTION_9_63(v12, MEMORY[0x1E69E6158]);

    if (!v13)
    {
      v25 = sub_1E41FE3E4();
      v26 = v14;
      v23 = sub_1E41FE3E4();
      v24 = v15;
      v16 = OUTLINED_FUNCTION_9_63(v23, MEMORY[0x1E69E6158]);

      if (!v16)
      {
        sub_1E41FDFB4();
        v19 = sub_1E41FE004();
        if (__swift_getEnumTagSinglePayload(v4, 1, v19) == 1)
        {
          sub_1E325F7FC(v4, &qword_1ECF304A8, &unk_1E42B18D0);
        }

        else
        {
          v20 = sub_1E41FDF84();
          OUTLINED_FUNCTION_37_1();
          (*(v21 + 8))(v4, v19);
          if (v20)
          {
LABEL_16:
            sub_1E39E7334();
            v17 = v22;

            return v17 & 1;
          }
        }

        goto LABEL_16;
      }
    }
  }

  v17 = 0;
  return v17 & 1;
}

BOOL sub_1E39E8850(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_1E41FE414() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

void *sub_1E39E8924(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E39E8A50(v8, v7);
  v10 = *(sub_1E41FDF74() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E39E8B4C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1E39E8A50(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0, &qword_1E42C4B90);
  v4 = *(sub_1E41FDF74() - 8);
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

uint64_t sub_1E39E8B4C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1E41FDF74(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E41FDF74();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1E39E8C20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

Swift::Void __swiftcall MetricsLocalRecorder.recordPagePerfRenderEvent(vuiDictionary:)(Swift::OpaquePointer vuiDictionary)
{
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E39E8F48();
  if (v6)
  {
    v7 = v6;
    v8 = *(v1 + OBJC_IVAR___VUIMetricsLocalRecorder_currentSession);
    if (v8)
    {
      v16 = v8;
      sub_1E41380B8(v7);
      v9 = *(v1 + OBJC_IVAR___VUIMetricsLocalRecorder_storageManager);
      [v9 writeSession_];
      [v9 writeEvent_];

      v10 = v16;

      return;
    }
  }

  v11 = sub_1E324FBDC();
  (*(v3 + 16))(v5, v11, v2);
  v12 = sub_1E41FFC94();
  v13 = sub_1E42067F4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1E323F000, v12, v13, "Could not record MetricsEvent due to event or current session being nil", v14, 2u);
    MEMORY[0x1E69143B0](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_1E39E8F48()
{
  type metadata accessor for MetricsRenderEvent();
  v1 = OUTLINED_FUNCTION_0_104();
  v4 = sub_1E3A9F6FC(v1, v2, v3);
  v5 = v4;
  if (v4)
  {
    v6 = OBJC_IVAR___VUIMetricsLocalRecorder_currentSession;
    if (!*(v0 + OBJC_IVAR___VUIMetricsLocalRecorder_currentSession) || *(v4 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_isAppLaunch) == 1)
    {
      type metadata accessor for MetricsRenderSession();
      v7 = OUTLINED_FUNCTION_0_104();
      v10 = sub_1E4137BF8(v7, v8, v9);
      v11 = *(v0 + v6);
      *(v0 + v6) = v10;
    }
  }

  return v5;
}

id MetricsLocalRecorder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MetricsLocalRecorder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsLocalRecorder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1E39E90D0(uint64_t a1)
{
  sub_1E3ED94AC();
  type metadata accessor for TemplateViewModel(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v4 = *(*v2 + 1096);

    v6 = v4(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8);
      v9 = v8();
      v10 = [v9 backgroundView];

      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;

        v13 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
        v14 = sub_1E3D9DBC0(v12);

        v15 = [v14 vuiView];
      }

      else
      {
        v17 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
        v26 = 0;
        memset(v25, 0, sizeof(v25));
        v18 = v17;
        v15 = sub_1E393D9C4(v7, v10, v25, 0);

        sub_1E373C624(v25);
      }

      v19 = v15;
      v24 = (v8)(v19, v20, v21, v22, v23);
      [v24 setBackgroundView_];
    }

    else
    {
      v16 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8))();
      [v16 setBackgroundView_];
    }
  }

  return result;
}

id sub_1E39E93B0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MultiDocumentTemplateController(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  return v3;
}

uint64_t type metadata accessor for MultiDocumentTemplateController(uint64_t a1)
{
  result = qword_1EE2927B0;
  if (!qword_1EE2927B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E39E9478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiDocumentTemplateController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E39E94F0()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    (*(*v1 + 1160))(0x3FF0000000000000, 0);
    v4[0] = xmmword_1E42B1960;
    v4[1] = xmmword_1E42B1970;
    v5 = 0;
    (*(*v1 + 184))(v4);
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E39E95D8()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    (*(*v1 + 1984))(1);
    OUTLINED_FUNCTION_9_2();
    v4 = *(v3 + 464);

    v4(1);
    OUTLINED_FUNCTION_9_2();
    (*(v5 + 2176))(4, 0);
    OUTLINED_FUNCTION_9_2();
    (*(v6 + 2056))(0, 0);
    sub_1E39E993C(0x4070400000000000, 0, 25.0, 50.0, 125.0);
    OUTLINED_FUNCTION_11_69();
    v7();
    v8 = *sub_1E3E5FDEC();
    v9 = *(*v1 + 680);
    v10 = v8;
    v9(v8);
    OUTLINED_FUNCTION_9_2();
    (*(v11 + 1792))(4);
    OUTLINED_FUNCTION_9_2();
    (*(v12 + 1696))(17);
    sub_1E39E993C(0, 1, 32.0, 20.0, 18.0);
    sub_1E39E94F0();
    OUTLINED_FUNCTION_2_1();
    (*(v13 + 1152))();

    sub_1E3952C94();
    v19[0] = v14;
    v19[1] = v15;
    v19[2] = v16;
    v19[3] = v17;
    v20 = 0;
    (*(*v1 + 160))(v19);

    *(v2 + 112) = v1;
  }

  return v1;
}

double sub_1E39E993C(uint64_t a1, char a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_12_62(a1);
  v11 = *(v5 + 136);
  v12 = sub_1E4205F14();
  v14 = v13;
  v15 = sub_1E4205F14();
  v17 = v16;
  v18 = v12 == v15 && v14 == v16;
  if (v18)
  {
    goto LABEL_19;
  }

  v19 = sub_1E42079A4();
  v20 = v11;

  if (v19)
  {
LABEL_6:

    return a3;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_3_93();
  OUTLINED_FUNCTION_4_91();
  if (v18 && v14 == v22)
  {

LABEL_19:

    return a3;
  }

  OUTLINED_FUNCTION_0_105(v21);
  OUTLINED_FUNCTION_9_64();

  if (v19)
  {
    goto LABEL_6;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_3_93();
  OUTLINED_FUNCTION_4_91();
  if (v18 && v14 == v25)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_0_105(v24);
  OUTLINED_FUNCTION_9_64();

  if (v19)
  {
LABEL_17:

    return a4;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_3_93();
  OUTLINED_FUNCTION_4_91();
  if (v18 && v14 == v29)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_0_105(v28);
  OUTLINED_FUNCTION_9_64();

  if (v19)
  {
    goto LABEL_17;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_3_93();
  OUTLINED_FUNCTION_4_91();
  if (v18 && v14 == v32)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_0_105(v31);
  OUTLINED_FUNCTION_9_64();

  if (v19)
  {
    goto LABEL_17;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_3_93();
  OUTLINED_FUNCTION_4_91();
  if (v18 && v14 == v35)
  {
LABEL_42:

    return a4;
  }

  OUTLINED_FUNCTION_0_105(v34);
  OUTLINED_FUNCTION_9_64();

  if (v19)
  {
    goto LABEL_17;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_3_93();
  OUTLINED_FUNCTION_4_91();
  if (!v18 || v14 != v38)
  {
    OUTLINED_FUNCTION_0_105(v37);
    OUTLINED_FUNCTION_9_64();

    if (v19)
    {
LABEL_41:

      goto LABEL_56;
    }

    sub_1E4205F14();
    OUTLINED_FUNCTION_3_93();
    OUTLINED_FUNCTION_4_91();
    if (!v18 || v14 != v41)
    {
      OUTLINED_FUNCTION_0_105(v40);
      OUTLINED_FUNCTION_9_64();

      if (v19)
      {
        goto LABEL_41;
      }

      sub_1E4205F14();
      if (v14 != OUTLINED_FUNCTION_7_92() || v17 != v43)
      {
        OUTLINED_FUNCTION_6_74();
        v45 = sub_1E42079A4();

        if ((v45 & 1) == 0)
        {
          return a5;
        }

        goto LABEL_56;
      }
    }
  }

LABEL_56:
  if (a2)
  {
    return a5;
  }

  else
  {
    return *&a1;
  }
}

void *sub_1E39E9C54()
{
  if (!*(v0 + 120))
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBB724();
    v3 = (*v1 + 2048);
    v4 = *v3;
    (*v3)();
    OUTLINED_FUNCTION_2_1();
    (*(v5 + 2056))(1, 0);

    (v4)(v6);
    OUTLINED_FUNCTION_2_1();
    (*(v7 + 2344))(1);

    OUTLINED_FUNCTION_9_2();
    v9 = *(v8 + 464);

    v9(2);
    OUTLINED_FUNCTION_9_2();
    (*(v10 + 1792))(3);
    OUTLINED_FUNCTION_9_2();
    (*(v11 + 336))(0, 0);
    sub_1E39E993C(0x4051800000000000, 0, 44.0, 44.0, 55.0);
    OUTLINED_FUNCTION_11_69();
    v12();
    OUTLINED_FUNCTION_9_2();
    (*(v13 + 360))(0, 1);
    swift_beginAccess();
    v14 = *(v0 + 136);
    v15 = sub_1E4205F14();
    v17 = v16;
    v18 = sub_1E4205F14();
    v20 = v19;
    v21 = v15 == v18 && v17 == v19;
    if (!v21)
    {
      v22 = sub_1E42079A4();
      v23 = v14;

      if (v22)
      {
        goto LABEL_54;
      }

      sub_1E4205F14();
      OUTLINED_FUNCTION_3_93();
      OUTLINED_FUNCTION_4_91();
      if (!v21 || v17 != v25)
      {
        OUTLINED_FUNCTION_0_105(v24);
        OUTLINED_FUNCTION_10_65();

        if (v22)
        {
          goto LABEL_54;
        }

        sub_1E4205F14();
        OUTLINED_FUNCTION_3_93();
        OUTLINED_FUNCTION_4_91();
        if (!v21 || v17 != v28)
        {
          OUTLINED_FUNCTION_0_105(v27);
          OUTLINED_FUNCTION_10_65();

          if (v22)
          {
            goto LABEL_54;
          }

          sub_1E4205F14();
          OUTLINED_FUNCTION_3_93();
          OUTLINED_FUNCTION_4_91();
          if (!v21 || v17 != v31)
          {
            OUTLINED_FUNCTION_0_105(v30);
            OUTLINED_FUNCTION_10_65();

            if (v22)
            {
              goto LABEL_54;
            }

            sub_1E4205F14();
            OUTLINED_FUNCTION_3_93();
            OUTLINED_FUNCTION_4_91();
            if (!v21 || v17 != v34)
            {
              OUTLINED_FUNCTION_0_105(v33);
              OUTLINED_FUNCTION_10_65();

              if (v22)
              {
                goto LABEL_54;
              }

              sub_1E4205F14();
              OUTLINED_FUNCTION_3_93();
              OUTLINED_FUNCTION_4_91();
              if (!v21 || v17 != v37)
              {
                OUTLINED_FUNCTION_0_105(v36);
                OUTLINED_FUNCTION_10_65();

                if (v22)
                {
                  goto LABEL_54;
                }

                sub_1E4205F14();
                if (v17 != OUTLINED_FUNCTION_7_92() || v20 != v39)
                {
                  OUTLINED_FUNCTION_6_74();
                  v42 = v41;
                  v43 = sub_1E42079A4();

                  if (v43)
                  {
                    goto LABEL_54;
                  }

                  sub_1E4205F14();
                  v44 = OUTLINED_FUNCTION_7_92();
                  v85 = v45;
                  if (v42 != v44 || v20 != v45)
                  {
                    OUTLINED_FUNCTION_6_74();
                    v47 = sub_1E42079A4();

                    if ((v47 & 1) == 0)
                    {
                      sub_1E4205F14();
                      if (v85 != OUTLINED_FUNCTION_7_92() || v20 != v48)
                      {
                        OUTLINED_FUNCTION_6_74();
                        sub_1E42079A4();

LABEL_51:
                        OUTLINED_FUNCTION_11_69();
                        v50();
                        v51 = objc_opt_self();
                        v52 = [v51 clearColor];
                        OUTLINED_FUNCTION_9_2();
                        (*(v53 + 752))();
                        v54 = [v51 clearColor];
                        OUTLINED_FUNCTION_9_2();
                        (*(v55 + 872))();

                        v57 = (v4)(v56);
                        v58 = sub_1E3E60700();
                        v59 = *v58;
                        v60 = *(*v57 + 680);
                        v61 = *v58;
                        v60(v59);

                        v63 = (v4)(v62);
                        v64 = *sub_1E3E60824();
                        v65 = *(*v63 + 872);
                        v66 = v64;
                        v65(v64);

                        (v4)(v67);
                        OUTLINED_FUNCTION_2_1();
                        (*(v68 + 1696))(15);

                        (v4)(v69);
                        OUTLINED_FUNCTION_2_1();
                        (*(v70 + 1792))(4);

                        (v4)(v71);
                        OUTLINED_FUNCTION_2_1();
                        (*(v72 + 464))(2);

                        (v4)(v73);
                        OUTLINED_FUNCTION_2_1();
                        (*(v74 + 1984))(5);

                        (v4)(v75);
                        OUTLINED_FUNCTION_2_1();
                        (*(v76 + 2080))(1, 0);

                        (v4)(v77);
                        OUTLINED_FUNCTION_2_1();
                        (*(v78 + 2104))(1, 0);

                        OUTLINED_FUNCTION_9_2();
                        v80 = (*(v79 + 2096))();
                        v81 = *v58;
                        v82 = *(*v80 + 680);
                        v83 = v81;
                        v82(v81);

                        *(v2 + 120) = v1;

                        goto LABEL_52;
                      }

                      goto LABEL_53;
                    }

LABEL_54:

                    goto LABEL_51;
                  }
                }

LABEL_53:

                goto LABEL_54;
              }
            }
          }
        }
      }
    }

    goto LABEL_51;
  }

  v1 = *(v0 + 120);
LABEL_52:

  return v1;
}

uint64_t sub_1E39EA5DC()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    OUTLINED_FUNCTION_11_69();
    v3();
    v4 = *sub_1E3E60170();
    v5 = *(*v1 + 752);
    v6 = v4;
    v5(v4);
    v7 = sub_1E39E94F0();
    (*(*v7 + 176))(v12);

    v13[0] = sub_1E3952CA4();
    v13[1] = v8;
    v13[2] = v9;
    v13[3] = v10;
    v14 = 0;
    (*(*v1 + 184))(v13);
    *(v2 + 128) = v1;
  }

  return v1;
}

uint64_t sub_1E39EA7AC()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = [objc_opt_self() current];
  v2 = [v1 preferredContentSizeCategory];

  *(v0 + 136) = v2;
  v3 = sub_1E3C2F9A0();

  sub_1E39E993C(0x407CC00000000000, 0, 170.0, 194.0, 325.0);
  sub_1E3C2D0A0();
  v4 = sub_1E39E94F0();
  sub_1E3C37CBC(v4, 97);

  v5 = sub_1E39E95D8();
  sub_1E3C37CBC(v5, 23);

  v6 = sub_1E39E9C54();
  sub_1E3C37CBC(v6, 59);

  v7 = sub_1E39EA5DC();
  sub_1E3C37CBC(v7, 113);

  return v3;
}

void sub_1E39EA8CC()
{

  v1 = *(v0 + 136);
}

uint64_t sub_1E39EA914()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E39EA964()
{
  v0 = sub_1E39EA914();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

uint64_t sub_1E39EA9D8(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  a2(a1);

  v4 = sub_1E4205ED4();

  *a3 = v4;
  return result;
}

void sub_1E39EAA30()
{
  if ((v0[289] & 1) == 0)
  {
    v0[289] = 1;
    OUTLINED_FUNCTION_8();
    v2 = (*(v1 + 1000))();
    (*(*v0 + 928))(v2);
    if (v3)
    {

      v4 = [objc_opt_self() defaultCenter];
      if (qword_1EE28E6D0 != -1)
      {
        OUTLINED_FUNCTION_0_106(&qword_1EE28E6D0);
      }

      OUTLINED_FUNCTION_5_0(&qword_1EE2AA780, v5);
      [v4 addObserver:v0 selector:sel_handleMessageDidUpdateWithNotification_ name:qword_1EE2AA780 object:0];
    }
  }
}

uint64_t sub_1E39EAB8C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 248, a2);
  *(v2 + 256) = a2;
  swift_unknownObjectWeakAssign();
  sub_1E39EAA30();
  return swift_unknownObjectRelease();
}

void (*sub_1E39EABE4(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 256);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E39EAC64;
}

void sub_1E39EAC64(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 256) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1E39EAA30();
  }

  free(v3);
}

void *sub_1E39EACF0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 264, a2);
  v3 = *(v2 + 264);
  v4 = v3;
  return v3;
}

void sub_1E39EAD28(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 264, a2);
  v4 = *(v2 + 264);
  *(v2 + 264) = a1;
}

id sub_1E39EADA8()
{
  v0 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();

  return v0;
}

uint64_t sub_1E39EADD4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 272, a2);
  v3 = *(v2 + 272);

  return v3;
}

uint64_t sub_1E39EAE14(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 272, a2);
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
}

uint64_t sub_1E39EAE84(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 288, a2);
  *(v2 + 288) = a1;
  return result;
}

uint64_t sub_1E39EAEB8(__int16 a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 256) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 264) = 0;
  *(v3 + 272) = 0;
  *(v3 + 288) = 0;
  *(v3 + 280) = 0;

  v7 = sub_1E39BEDCC(a1, a2, a3);
  if (v7)
  {
    LOBYTE(v14[0]) = 0;
    OUTLINED_FUNCTION_8();
    v9 = *(v8 + 776);

    v9(v15, v14, &unk_1F5D5D1C8, &off_1F5D5C798);

    if (v15[3])
    {
      v10 = swift_dynamicCast();
      if (v10)
      {
        v11 = v14[0];
      }

      else
      {
        v11 = 0;
      }

      if (v10)
      {
        v12 = v14[1];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      sub_1E325F748(v15, &unk_1ECF296E0, &unk_1E4298030);
      v11 = 0;
      v12 = 0;
    }

    OUTLINED_FUNCTION_3_0(v7 + 272, v15);
    *(v7 + 272) = v11;
    *(v7 + 280) = v12;
  }

  else
  {
  }

  return v7;
}

void sub_1E39EB014()
{
  v0 = sub_1E3D54BE8();
  v2 = *v0;
  v1 = *(v0 + 1);
  v3 = objc_opt_self();

  v4 = [v3 defaultLocationManager];
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = v1;
    v7[4] = v6;
    v9[4] = sub_1E39EB728;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1E39EBA28;
    v9[3] = &block_descriptor_39;
    v8 = _Block_copy(v9);

    [v5 fetchAuthorizationStatus_];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E39EB158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = *sub_1E3D54C24();
  type metadata accessor for UnifiedMessagingSignalProvider();
  v16 = v15;
  v17 = sub_1E3D595AC(a1);
  v18 = sub_1E3D595C0(a2, a3, v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v20 = sub_1E3B58240();
  v21 = *(v20 + 1);
  *(inited + 32) = *v20;
  *(inited + 40) = v21;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0, &qword_1E429FAB0);
  *(inited + 48) = v18;

  v22 = sub_1E4205CB4();
  OUTLINED_FUNCTION_5_0(a4 + 16, v57);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v58 = 0u;
    v59 = 0u;
    goto LABEL_6;
  }

  LOBYTE(v54[0]) = 1;
  (*(*Strong + 776))(&v58, v54, &unk_1F5D5D1C8, &off_1F5D5C798);

  if (!*(&v59 + 1))
  {
LABEL_6:
    sub_1E325F748(&v58, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (swift_dynamicCast())
  {
    v25 = *&v54[0];
    v26 = sub_1E3B5824C();
    v27 = *v26;
    v28 = v26[1];
    *(&v59 + 1) = v24;
    *&v58 = v25;
    sub_1E329504C(&v58, v54);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56[0] = v22;
    sub_1E32A87C0(v54, v27, v28, isUniquelyReferenced_nonNull_native);
  }

LABEL_7:
  OUTLINED_FUNCTION_5_0(a4 + 16, &v58);
  if (!swift_weakLoadStrong())
  {
  }

  OUTLINED_FUNCTION_30();
  v31 = (*(v30 + 928))();
  v33 = v32;

  if (!v33)
  {
  }

  v34 = sub_1E3B58264();
  v35 = v31 == *v34 && v33 == v34[1];
  if (v35 || (sub_1E42079A4() & 1) != 0)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_5_0(a4 + 16, v54);
  v37 = swift_weakLoadStrong();
  if (v37)
  {
    v38 = v37;
    OUTLINED_FUNCTION_3_0(v37 + 288, v56);
    *(v38 + 288) = 1;
  }

  v39 = sub_1E3B58258();
  v40 = v31 == *v39 && v33 == *(v39 + 1);
  if (!v40 && (sub_1E42079A4() & 1) == 0)
  {
    OUTLINED_FUNCTION_5_0(a4 + 16, v55);
    if (swift_weakLoadStrong())
    {
      OUTLINED_FUNCTION_30();
      v53 = (*(v52 + 920))();

      sub_1E3B584A8();
    }

    goto LABEL_14;
  }

  v41 = sub_1E3286BF0();
  v42 = *((*MEMORY[0x1E69E7D40] & **v41) + 0xE0);
  v43 = *v41;
  LOBYTE(v42) = v42();

  if ((v42 & 1) == 0)
  {
    OUTLINED_FUNCTION_5_0(a4 + 16, v55);
    if (!swift_weakLoadStrong())
    {
    }

    OUTLINED_FUNCTION_30();
    v51 = (*(v50 + 920))();

    sub_1E3B584A8();

LABEL_14:
  }

  v44 = sub_1E324FBDC();
  (*(v10 + 16))(v14, v44, v8);
  v45 = sub_1E41FFC94();
  v46 = sub_1E4206814();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1E323F000, v45, v46, "UnifiedMessagingViewModel: suppress fetching app level sheet", v47, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v48 = OUTLINED_FUNCTION_11_6();
  return v49(v48);
}

uint64_t sub_1E39EB734(uint64_t a1, void *a2)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if (a2)
  {
    v12 = a2;
    v13 = sub_1E324FBDC();
    (*(v7 + 16))(v11, v13, v5);
    v14 = a2;
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067E4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_1E323F000, v15, v16, "UnifiedMessagingViewModel:: didFetchMessage error: %@", v17, 0xCu);
      sub_1E325F748(v18, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    v24 = OUTLINED_FUNCTION_11_6();
    return v25(v24);
  }

  else
  {
    if (a1)
    {
      v21 = swift_dynamicCastObjCProtocolConditional();
      if (v21)
      {
        ObjectType = swift_getObjectType();
        v23 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
        v21 = dynamic_cast_existential_0_superclass_conditional(v21, ObjectType, v23);
        if (v21)
        {
          swift_unknownObjectRetain();
        }
      }
    }

    else
    {
      v21 = 0;
    }

    OUTLINED_FUNCTION_8();
    (*(v27 + 904))(v21);
    v28 = OUTLINED_FUNCTION_3_0((v2 + 288), v32);
    v2[288] = 0;
    result = (*(*v2 + 872))(v28);
    if (result)
    {
      v30 = v29;
      v31 = swift_getObjectType();
      (*(v30 + 8))(v2, v31, v30);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_1E39EBA28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_1E39EBA7C()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 928))();
  if (v4)
  {
    v5 = (*(*v0 + 920))();
    sub_1E3B5AE20();

    v6 = (*(*v1 + 904))(0);
    result = (*(*v1 + 872))(v6);
    if (result)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(v1, ObjectType, v8);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1E39EBBF0()
{
  sub_1E32AF6F8(v0 + 248);
}

uint64_t sub_1E39EBC28()
{
  if (*(v0 + 289) == 1)
  {
    OUTLINED_FUNCTION_8();
    (*(v1 + 928))();
    if (v2)
    {

      v3 = [objc_opt_self() defaultCenter];
      if (qword_1EE28E6D0 != -1)
      {
        OUTLINED_FUNCTION_0_106(&qword_1EE28E6D0);
      }

      OUTLINED_FUNCTION_5_0(&qword_1EE2AA780, v6);
      [v3 removeObserver:v0 name:qword_1EE2AA780 object:0];
    }
  }

  v4 = ViewModel.deinit();
  sub_1E32AF6F8(v4 + 248);

  return v4;
}

uint64_t sub_1E39EBD84(void *a1)
{
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v47 = v5 - v4;
  v6 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v46 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  if ([a1 object])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  aBlock = v54;
  v49 = v55;
  if (!*(&v55 + 1))
  {
    return sub_1E325F748(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v44 = a1;
  v45 = v6;
  v20 = v53;
  OUTLINED_FUNCTION_8();
  v22 = *(v21 + 928);

  v24 = v22(v23);
  if (!v25)
  {
    return swift_bridgeObjectRelease_n();
  }

  v26 = v52 == v24 && v25 == v53;
  v27 = v52;
  if (v26)
  {

    v29 = v1;
  }

  else
  {
    v28 = sub_1E42079A4();

    v29 = v1;
    if ((v28 & 1) == 0)
    {
    }
  }

  v30 = sub_1E324FBDC();
  (*(v14 + 16))(v18, v30, v12);

  v31 = sub_1E41FFC94();
  v32 = sub_1E42067E4();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v43 = v29;
    v34 = v32;
    v35 = swift_slowAlloc();
    *&aBlock = v35;
    *v33 = 136315138;
    *(v33 + 4) = sub_1E3270FC8(v27, v20, &aBlock);
    v36 = v34;
    v29 = v43;
    _os_log_impl(&dword_1E323F000, v31, v36, "UnifiedMessagingViewModel:: message did update for %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v14 + 8))(v18, v12);
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v37 = sub_1E4206A04();
  v38 = swift_allocObject();
  v38[2] = v29;
  v38[3] = v27;
  v38[4] = v20;
  v38[5] = v44;
  v50 = sub_1E39EC310;
  v51 = v38;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v49 = sub_1E378AEA4;
  *(&v49 + 1) = &block_descriptor_14;
  v39 = _Block_copy(&aBlock);

  v40 = v44;

  sub_1E4203FE4();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E378AD28();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v11, v47, v39);
  _Block_release(v39);

  v41 = OUTLINED_FUNCTION_11_6();
  v42(v41);
  return (*(v46 + 8))(v11, v45);
}

void sub_1E39EC310()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = (*(*v2 + 920))();
  sub_1E3B5AB8C();
  v7 = v6;

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = swift_dynamicCastObjCProtocolConditional();
  if (!v8 || (v9 = v8, ObjectType = swift_getObjectType(), v11 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), (v12 = dynamic_cast_existential_0_superclass_conditional(v9, ObjectType, v11)) == 0))
  {
    swift_unknownObjectRelease();
LABEL_5:
    v12 = 0;
  }

  v13 = (*(*v2 + 904))(v12);
  if ((*(*v2 + 872))(v13))
  {
    v15 = v14;
    v16 = swift_getObjectType();
    (*(v15 + 8))(v2, v16, v15);
    swift_unknownObjectRelease();
  }

  v17 = sub_1E39EC5E0(v4);
  if (!v17)
  {
    v28 = 0u;
    v29 = 0u;
    goto LABEL_18;
  }

  v18 = v17;
  sub_1E3B58288();

  sub_1E4207414();
  sub_1E375D7E8(v18, &v28, v27);

  sub_1E375D84C(v27);
  if (!*(&v29 + 1))
  {
LABEL_18:
    sub_1E325F748(&v28, &unk_1ECF296E0, &unk_1E4298030);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v20 = v27[0];
  v19 = v27[1];
  v21 = sub_1E3B58294();
  if (v20 == *v21 && v19 == v21[1])
  {
  }

  else
  {
    v23 = sub_1E42079A4();

    if ((v23 & 1) == 0)
    {
      return;
    }
  }

  v24 = sub_1E3B58264();
  v25 = *v24 == v1 && v24[1] == v3;
  if (v25 || (sub_1E42079A4() & 1) != 0)
  {
    v26 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
    sub_1E3B5845C();
  }
}

uint64_t sub_1E39EC5E0(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205C64();

  return v3;
}

uint64_t dynamic_cast_existential_0_superclass_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_dynamicCastMetatype())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_1E39EC680(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  if (swift_weakLoadStrong())
  {
    v4 = OUTLINED_FUNCTION_11_6();
    sub_1E39EB734(v4, v5);
  }

  return result;
}

uint64_t sub_1E39EC6E8()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1ECF713D8);
  __swift_project_value_buffer(v0, qword_1ECF713D8);
  return sub_1E41FFCA4();
}

uint64_t static VUIUserCloudStoreSettingsService.update(settings:)()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v2 = sub_1E41FDDF4();
  v0[4] = v2;
  v0[5] = *(v2 - 8);
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39EC84C()
{
  OUTLINED_FUNCTION_27_2();
  if (qword_1EE291AB0 != -1)
  {
    OUTLINED_FUNCTION_0_107(&qword_1EE291AB0);
  }

  v1 = sub_1E41FFCB4();
  *(v0 + 56) = __swift_project_value_buffer(v1, qword_1ECF713D8);
  v2 = sub_1E41FFC94();
  v3 = sub_1E42067D4();
  if (OUTLINED_FUNCTION_16_53(v3))
  {
    v4 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_9_11(v4);
    OUTLINED_FUNCTION_3_12(&dword_1E323F000, v5, v6, "user cloud store settings. Updating new settings.");
    OUTLINED_FUNCTION_51_2();
  }

  sub_1E41FEFD4();
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_1E39EC994;
  OUTLINED_FUNCTION_7_93();

  return MEMORY[0x1EEE436E8](v8, v9, v10);
}

uint64_t sub_1E39EC994()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E39ECAC0()
{
  v1 = objc_opt_self();
  v2 = sub_1E4205C44();
  *(v0 + 16) = 0;
  v3 = [v1 dataWithJSONObject:v2 options:0 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = sub_1E41FE464();
    v7 = v6;

    *(v0 + 80) = v5;
    *(v0 + 88) = v7;
    v8 = OUTLINED_FUNCTION_27_0();
    sub_1E38DCD14(v8, v9);
    OUTLINED_FUNCTION_27_0();
    sub_1E41FDDE4();
    sub_1E41FDD64();
    sub_1E41FDDD4();
    sub_1E41FEE44();
    *(v0 + 96) = sub_1E41FEE24();
    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v10[1] = sub_1E39ECD9C;
    v11 = *(v0 + 48);

    return MEMORY[0x1EEE43620](v11);
  }

  else
  {
    v12 = v4;
    v13 = sub_1E41FE274();

    swift_willThrow();
    v14 = sub_1E41FFC94();
    v15 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_16_53(v15))
    {
      v16 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v16);
      OUTLINED_FUNCTION_3_12(&dword_1E323F000, v17, v18, "User settings input is invalid.");
      OUTLINED_FUNCTION_51_2();
    }

    v20 = *(v0 + 40);
    v19 = *(v0 + 48);
    v21 = *(v0 + 32);

    sub_1E39EDF48(v22, v23, v24);
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    (*(v20 + 8))(v19, v21);

    OUTLINED_FUNCTION_54();

    return v26();
  }
}

uint64_t sub_1E39ECD9C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  *(v7 + 112) = v6;
  *(v7 + 120) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E39ECEF4()
{
  v1 = [*(v0 + 112) data];
  sub_1E41FE464();

  OUTLINED_FUNCTION_27_0();
  v2 = sub_1E41FE434();
  v3 = OUTLINED_FUNCTION_27_0();
  v5 = sub_1E38DCCB0(v3, v4);
  if (v2)
  {
    v6 = *(v0 + 112);
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32), v5);

    sub_1E38DCCB0(v8, v7);

    v9 = *(v0 + 8);

    return v9(v2);
  }

  else
  {
    v11 = sub_1E41FFC94();
    v12 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_16_53(v12))
    {
      v13 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v13);
      OUTLINED_FUNCTION_3_12(&dword_1E323F000, v14, v15, "User settings update response is empty.");
      OUTLINED_FUNCTION_51_2();
    }

    v16 = *(v0 + 112);
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v20 = *(v0 + 40);
    v19 = *(v0 + 48);
    v21 = *(v0 + 32);

    sub_1E39EDF48(v22, v23, v24);
    v25 = swift_allocError();
    OUTLINED_FUNCTION_18_47(v25, v26);

    v27 = sub_1E38DCCB0(v18, v17);
    (*(v20 + 8))(v19, v21, v27);

    OUTLINED_FUNCTION_54();

    return v28();
  }
}

uint64_t sub_1E39ED110()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E39ED198()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_1E38DCCB0(v0[10], v0[11]);
  (*(v2 + 8))(v1, v3, v4);

  OUTLINED_FUNCTION_54();

  return v5();
}

uint64_t sub_1E39ED2D4(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v2[3] = sub_1E4205C64();
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1E39ED3A0;

  return static VUIUserCloudStoreSettingsService.update(settings:)();
}

uint64_t sub_1E39ED3A0()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0;
  OUTLINED_FUNCTION_39();
  v4 = v3;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  if (v2)
  {
    v8 = sub_1E41FE264();

    v9 = v8;
  }

  else
  {
    v10 = sub_1E4205C44();

    v9 = v10;
  }

  v11 = OUTLINED_FUNCTION_14_72();
  v12(v11);

  _Block_release(v4);
  OUTLINED_FUNCTION_54();

  return v13();
}

uint64_t static VUIUserCloudStoreSettingsService.fetch()()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FDDF4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E39ED5CC()
{
  OUTLINED_FUNCTION_27_2();
  if (qword_1EE291AB0 != -1)
  {
    OUTLINED_FUNCTION_0_107(&qword_1EE291AB0);
  }

  v1 = sub_1E41FFCB4();
  *(v0 + 40) = __swift_project_value_buffer(v1, qword_1ECF713D8);
  v2 = sub_1E41FFC94();
  v3 = sub_1E42067D4();
  if (OUTLINED_FUNCTION_16_53(v3))
  {
    v4 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_9_11(v4);
    OUTLINED_FUNCTION_3_12(&dword_1E323F000, v5, v6, "user cloud store settings. Fetching new settings.");
    OUTLINED_FUNCTION_51_2();
  }

  sub_1E41FEFD4();
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_1E39ED6E8;
  OUTLINED_FUNCTION_7_93();

  return MEMORY[0x1EEE436E8](v8, v9, v10);
}

uint64_t sub_1E39ED6E8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E39ED7E4()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEE44();
  v0[8] = sub_1E41FEE24();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1E39ED890;
  v2 = v0[4];

  return MEMORY[0x1EEE43620](v2);
}

uint64_t sub_1E39ED890()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v7 + 80) = v6;
  *(v7 + 88) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E39ED9AC()
{
  v1 = [*(v0 + 80) data];
  sub_1E41FE464();

  OUTLINED_FUNCTION_27_0();
  v2 = sub_1E41FE434();
  v3 = OUTLINED_FUNCTION_27_0();
  v5 = sub_1E38DCCB0(v3, v4);
  if (v2)
  {
    v6 = *(v0 + 80);
    (*(*(v0 + 24) + 8))(*(v0 + 32), *(v0 + 16), v5);

    v7 = *(v0 + 8);

    return v7(v2);
  }

  else
  {
    v9 = sub_1E41FFC94();
    v10 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_16_53(v10))
    {
      v11 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v11);
      OUTLINED_FUNCTION_3_12(&dword_1E323F000, v12, v13, "User settings fetch response is empty.");
      OUTLINED_FUNCTION_51_2();
    }

    v14 = *(v0 + 80);
    v16 = *(v0 + 24);
    v15 = *(v0 + 32);
    v17 = *(v0 + 16);

    sub_1E39EDF48(v18, v19, v20);
    v21 = swift_allocError();
    OUTLINED_FUNCTION_18_47(v21, v22);

    (*(v16 + 8))(v15, v17);

    OUTLINED_FUNCTION_54();

    return v23();
  }
}

uint64_t sub_1E39EDB58()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E39EDBB4()
{
  OUTLINED_FUNCTION_24();
  (*(v0[3] + 8))(v0[4], v0[2]);

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E39EDC94(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E39EDD28;

  return static VUIUserCloudStoreSettingsService.fetch()();
}

uint64_t sub_1E39EDD28()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0;
  OUTLINED_FUNCTION_39();
  v4 = v3;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  if (v2)
  {
    v8 = sub_1E41FE264();

    v9 = v8;
  }

  else
  {
    v10 = sub_1E4205C44();

    v9 = v10;
  }

  v11 = OUTLINED_FUNCTION_14_72();
  v12(v11);

  _Block_release(v4);
  OUTLINED_FUNCTION_54();

  return v13();
}

id VUIUserCloudStoreSettingsService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUIUserCloudStoreSettingsService.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIUserCloudStoreSettingsService();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUIUserCloudStoreSettingsService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIUserCloudStoreSettingsService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E39EDF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30520;
  if (!qword_1ECF30520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30520);
  }

  return result;
}

unint64_t sub_1E39EDFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30528;
  if (!qword_1ECF30528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30528);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VUIUserCloudStoreSettingsServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E39EE0F4()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_0(v2);
  *v3 = v4;
  v3[1] = sub_1E3286A7C;

  return sub_1E39EDC94(v1);
}

uint64_t sub_1E39EE198()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;
  v3 = OUTLINED_FUNCTION_27_0();

  return v4(v3);
}

double sub_1E39EE24C(uint64_t a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);

  return result;
}

uint64_t sub_1E39EE2A8()
{
  v0 = OUTLINED_FUNCTION_78_6(OBJC_IVAR____TtC8VideosUI28NavigationBarObservableModel__navigationBarViewModel);
  OUTLINED_FUNCTION_77_7(v0);
  return OUTLINED_FUNCTION_116();
}

double sub_1E39EE2F0(uint64_t a1)
{
  *(v1 + 8) = OUTLINED_FUNCTION_48_0(a1);
  if (v2)
  {

    sub_1E3B50420(v1 + 8);
  }

  else
  {
    sub_1E3B50420(v1 + 8);
  }

  return result;
}

uint64_t sub_1E39EE384()
{
  v0 = OUTLINED_FUNCTION_78_6(OBJC_IVAR____TtC8VideosUI28NavigationBarObservableModel__titleOpacity);
  OUTLINED_FUNCTION_77_7(v0);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E39EE3F0()
{
  v0 = OUTLINED_FUNCTION_78_6(OBJC_IVAR____TtC8VideosUI28NavigationBarObservableModel__navBarOpacity);
  OUTLINED_FUNCTION_77_7(v0);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E39EE45C()
{
  v0 = OUTLINED_FUNCTION_78_6(OBJC_IVAR____TtC8VideosUI28NavigationBarObservableModel__navBarHeight);
  OUTLINED_FUNCTION_77_7(v0);
  return OUTLINED_FUNCTION_116();
}

double sub_1E39EE4C0(void *a1)
{
  OUTLINED_FUNCTION_72_12(a1);
  sub_1E3B50380(&v2);

  return v2;
}

double sub_1E39EE508(double a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);

  return result;
}

uint64_t sub_1E39EE550()
{
  v0 = OUTLINED_FUNCTION_78_6(OBJC_IVAR____TtC8VideosUI28NavigationBarObservableModel__upNextButtonOpacity);
  OUTLINED_FUNCTION_77_7(v0);
  return OUTLINED_FUNCTION_116();
}

double sub_1E39EE598(void *a1)
{
  a1[1] = *a1;
  sub_1E3B50420((a1 + 1));

  return result;
}

uint64_t sub_1E39EE5E4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

double sub_1E39EE628(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI28NavigationBarObservableModel_fullscreenButtonModel;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1E39EE70C()
{
  v1 = OBJC_IVAR____TtC8VideosUI28NavigationBarObservableModel__navigationBarViewModel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30530, &qword_1E42B1BC0);
  *(v0 + v1) = OUTLINED_FUNCTION_66_14(v2, v3, v4, v5, v6, v7, v8, v9, v39, v43);
  v10 = OBJC_IVAR____TtC8VideosUI28NavigationBarObservableModel__titleOpacity;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30538, &qword_1E42B1BC8);
  v11 = sub_1E3B508D0();
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC8VideosUI28NavigationBarObservableModel__navBarOpacity;
  v20 = OUTLINED_FUNCTION_66_14(v11, v13, v14, v15, v16, v17, v18, v19, v40, 0x3FF0000000000000);
  *(v0 + v12) = v20;
  v21 = OBJC_IVAR____TtC8VideosUI28NavigationBarObservableModel__navBarHeight;
  v29 = OUTLINED_FUNCTION_66_14(v20, v22, v23, v24, v25, v26, v27, v28, v41, v44);
  *(v0 + v21) = v29;
  v30 = OBJC_IVAR____TtC8VideosUI28NavigationBarObservableModel__upNextButtonOpacity;
  *(v0 + v30) = OUTLINED_FUNCTION_66_14(v29, v31, v32, v33, v34, v35, v36, v37, v42, v45);
  *(v0 + OBJC_IVAR____TtC8VideosUI28NavigationBarObservableModel_fullscreenButtonModel) = 0;
  return sub_1E3B500B4();
}

double sub_1E39EE7D0()
{

  return result;
}

uint64_t sub_1E39EE84C(uint64_t a1)
{
  v1 = sub_1E3B4FF80();

  return v1;
}

uint64_t sub_1E39EE8C8(uint64_t a1)
{
  v1 = sub_1E39EE84C(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1E39EE930@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E39EE9DC())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(KeyPath);
  return sub_1E3844B3C;
}

void (*sub_1E39EEA6C())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  v1[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI24FullScreenBarButtonModel__isFullscreenButtonVisible, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E39EEB7C;
}

uint64_t sub_1E39EEBA8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();

  return v3;
}

uint64_t sub_1E39EEC10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E39EECBC())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(KeyPath);
  return sub_1E3846A58;
}

uint64_t sub_1E39EED4C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_77();
  v5();
  OUTLINED_FUNCTION_11_3(v2 + *a2, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200654();
  swift_endAccess();
  v6 = OUTLINED_FUNCTION_27_0();
  return v7(v6);
}

void (*sub_1E39EEE5C())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  v1[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI24FullScreenBarButtonModel__isPlayingFullscreen, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E39EEF6C;
}

void sub_1E39EEF84()
{
  OUTLINED_FUNCTION_82_2();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 56);
  if (v6)
  {
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    v9 = OUTLINED_FUNCTION_34();
    v10(v9);
    v2(v4);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v1(*(*v0 + 56));
  }

  free(v5);
  free(v4);
  OUTLINED_FUNCTION_95();

  free(v11);
}

uint64_t sub_1E39EF040()
{
  v1 = OBJC_IVAR____TtC8VideosUI24FullScreenBarButtonModel__isFullscreenButtonVisible;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI24FullScreenBarButtonModel__isPlayingFullscreen, v2);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1E39EF110()
{
  v0 = swift_allocObject();
  sub_1E39EF148();
  return v0;
}

void sub_1E39EF148()
{
  OUTLINED_FUNCTION_82_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19_2();
  sub_1E4200634();
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_59_1();
  v3();
  sub_1E4200634();
  OUTLINED_FUNCTION_59_1();
  v3();
  OUTLINED_FUNCTION_95();
}

uint64_t sub_1E39EF254@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FullScreenBarButtonModel(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t sub_1E39EF2EC(void *a1)
{
  OUTLINED_FUNCTION_72_12(a1);
  sub_1E3B50380(&v2);

  return v2;
}

double sub_1E39EF334(uint64_t a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);

  return result;
}

uint64_t sub_1E39EF388(void *a1)
{
  OUTLINED_FUNCTION_72_12(a1);
  v1 = sub_1E38074D0();

  return v1;
}

void sub_1E39EF3BC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel_viewModel) = a1;

  sub_1E39EF404();
}

void sub_1E39EF404()
{
  v3 = v0;
  if (!*(v0 + OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel_viewModel) || (OUTLINED_FUNCTION_8(), v5 = *(v4 + 488), v6 = , v5(v6), OUTLINED_FUNCTION_106_8(), !v1))
  {
    v8 = type metadata accessor for ViewModel();
    sub_1E37414E0(v8, v9, v10);
    v1 = sub_1E4205CB4();
  }

  v11 = sub_1E373E010(23, v1, v7);
  v13 = sub_1E373E010(39, v1, v12);
  if (sub_1E373E010(104, v1, v14) && (OUTLINED_FUNCTION_30(), (*(v16 + 464))(), OUTLINED_FUNCTION_6_19(), , v2))
  {
    v35 = v13;
    v36 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
    v17 = sub_1E32AE9B0(v2);
    v18 = 0;
    while (1)
    {
      if (v17 == v18)
      {

        v13 = v35;
        v22 = v36;
        goto LABEL_20;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v21 = OUTLINED_FUNCTION_97_1();
        v20 = MEMORY[0x1E6911E60](v21);
        v19 = v20;
      }

      else
      {
        if (v18 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v19 = *(v2 + 8 * v18 + 32);
      }

      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (*v19 == _TtC8VideosUI13TextViewModel)
      {
        MEMORY[0x1E6910BF0](v20);
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
        v36 = v37;
        ++v18;
      }

      else
      {

        ++v18;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
    v22 = 0;
LABEL_20:
    if (sub_1E373E010(101, v1, v15))
    {
      OUTLINED_FUNCTION_30();
      (*(v24 + 464))();
      OUTLINED_FUNCTION_6_19();
    }

    else
    {
      v2 = 0;
    }

    v25 = sub_1E373E010(102, v1, v23);
    if (v25)
    {
      v26 = (*(*v25 + 464))();
    }

    else
    {
      v26 = 0;
    }

    v27 = sub_1E39EF8C0(v26);

    sub_1E39EF2A4(v2);
    sub_1E39EF2C8(v27);
    v29 = sub_1E373E010(103, v1, v28);

    if (v29)
    {
      OUTLINED_FUNCTION_8();
      (*(v30 + 464))();
      OUTLINED_FUNCTION_106_8();
    }

    else
    {
      v1 = 0;
    }

    sub_1E39EF328(v1);
    v31 = OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel_titleViewModel;
    if (*(v3 + OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel_titleViewModel))
    {
      if (v11)
      {
        type metadata accessor for ViewModel();
        OUTLINED_FUNCTION_26_39();
        sub_1E39F096C(v32);
        OUTLINED_FUNCTION_6_19();

        v33 = sub_1E4205E84();
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = v11 == 0;
    }

    *(v3 + v31) = v11;

    *(v3 + OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel_imageViewModel) = v13;

    *(v3 + OBJC_IVAR____TtCV8VideosUI18NavigationBarItemsP33_5133CB66105ED2D3505EC048220E1B1330InternalNavigationBarViewModel_pickerModelChildren) = v22;

    if ((v33 & 1) == 0)
    {
      type metadata accessor for NavigationBarItems.InternalNavigationBarViewModel(0);
      OUTLINED_FUNCTION_4_92();
      sub_1E39F096C(v34);
      sub_1E4200514();
      sub_1E4200594();
    }
  }
}