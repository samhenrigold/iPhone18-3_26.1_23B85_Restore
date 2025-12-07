void (*sub_1D9B42C30(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x60uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = a2;
  v9[1] = v3;
  v11 = type metadata accessor for StorefrontSignals(0);
  v10[2] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[3] = v12;
  v14 = *(v12 + 64);
  if (v8)
  {
    v10[4] = swift_coroFrameAlloc();
    v10[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[4] = malloc(*(v12 + 64));
    v10[5] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[6] = v15;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FE0, &qword_1D9C93A70) - 8) + 64);
  if (v8)
  {
    v10[7] = swift_coroFrameAlloc();
    v10[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[7] = malloc(v16);
    v10[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[9] = v17;
  v19 = *v4;
  v20 = sub_1D99F0BB0(a2);
  *(v10 + 88) = v21 & 1;
  v22 = *(v19 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
    goto LABEL_22;
  }

  v26 = v21;
  v27 = *(v19 + 24);
  if (v27 < v25 || (a3 & 1) == 0)
  {
    if (v27 >= v25 && (a3 & 1) == 0)
    {
      v28 = v20;
      sub_1D9C147F8();
      v20 = v28;
      goto LABEL_17;
    }

    sub_1D9C0A488(v25, a3 & 1);
    v20 = sub_1D99F0BB0(a2);
    if ((v26 & 1) == (v29 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    result = sub_1D9C7E84C();
    __break(1u);
    return result;
  }

LABEL_17:
  v10[10] = v20;
  if (v26)
  {
    sub_1D9B455C0(*(*v4 + 56) + *(v13 + 72) * v20, v18, type metadata accessor for StorefrontSignals);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v13 + 56))(v18, v30, 1, v11);
  return sub_1D9B42EE8;
}

void sub_1D9B42EE8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = (*(*a1 + 24) + 48);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 7);
    sub_1D99AB100(v5, v6, &qword_1ECB52FE0, &qword_1D9C93A70);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 7);
    if (v7 != 1)
    {
      v10 = *(v2 + 1);
      sub_1D9B455C0(v9, *(v2 + 5), type metadata accessor for StorefrontSignals);
      v11 = *v10;
      v12 = *(v2 + 10);
      v13 = *(v2 + 5);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 4);
        v15 = *v2;
        sub_1D9B455C0(v13, v14, type metadata accessor for StorefrontSignals);
        sub_1D9C12C30(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(v2 + 8);
    sub_1D99AB100(v5, v16, &qword_1ECB52FE0, &qword_1D9C93A70);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 8);
    if (v17 != 1)
    {
      v18 = *(v2 + 1);
      sub_1D9B455C0(v9, *(v2 + 6), type metadata accessor for StorefrontSignals);
      v11 = *v18;
      v12 = *(v2 + 10);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1D9B455C0(v13, v11[7] + *(*(v2 + 3) + 72) * v12, type metadata accessor for StorefrontSignals);
      goto LABEL_10;
    }
  }

  sub_1D99A6AE0(v9, &qword_1ECB52FE0, &qword_1D9C93A70);
  if (v8)
  {
    sub_1D9C0FB00(*(v2 + 10), **(v2 + 1));
  }

LABEL_10:
  v19 = *(v2 + 8);
  v20 = *(v2 + 9);
  v22 = *(v2 + 6);
  v21 = *(v2 + 7);
  v24 = *(v2 + 4);
  v23 = *(v2 + 5);
  sub_1D99A6AE0(v20, &qword_1ECB52FE0, &qword_1D9C93A70);
  free(v20);
  free(v19);
  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t (*sub_1D9B43120(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D9B43148;
}

uint64_t (*sub_1D9B43154(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D9B45B54;
}

void sub_1D9B4317C(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[2];
  v28 = a1[3];
  sub_1D9B456EC(a1, v30);
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = (MEMORY[0x1E69E7CC0] + 32);
  v29 = v2;
  v26 = v2 + 32;
  i = v4;
  v27 = v1;
  if ((v1 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_2:
  if (i < v28)
  {
    v9 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
LABEL_10:
      for (i = v9; !v5; v9 = v4)
      {
        v12 = v6[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51700, &qword_1D9C86D90);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 25;
        }

        v18 = v17 >> 3;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 3);
        v19 = (v15 + 4);
        v20 = v6[3] >> 1;
        if (v6[2])
        {
          v21 = v6 + 4;
          if (v15 != v6 || v19 >= v21 + 8 * v20)
          {
            memmove(v15 + 4, v21, 8 * v20);
          }

          v6[2] = 0;
        }

        v7 = (v19 + 8 * v20);
        v22 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v6 = v15;
        v1 = v27;
        v11 = __OFSUB__(v22, 1);
        v5 = v22 - 1;
        if (v11)
        {
          goto LABEL_33;
        }

LABEL_27:
        *v7++ = v4;
        v4 = v9;
        if (v1)
        {
          goto LABEL_2;
        }

LABEL_6:
        v10 = *(v29 + 16);
        if (v3 >= v10)
        {
          goto LABEL_29;
        }

        if (v3 + 1 < v10)
        {
          if (v3 < -1)
          {
            goto LABEL_36;
          }

          v9 = *(v26 + 8 * ++v3);
          goto LABEL_10;
        }

        ++v3;
      }

      v11 = __OFSUB__(v5--, 1);
      if (!v11)
      {
        goto LABEL_27;
      }

LABEL_33:
      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_29:

  v23 = v6[3];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v11 = __OFSUB__(v24, v5);
    v25 = v24 - v5;
    if (v11)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v6[2] = v25;
  }
}

void sub_1D9B43380(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = a1 + 32;
    while (1)
    {
      v7 = *(v6 + 4 * v4);
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51710, &qword_1D9C86DA0);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v14 = v13 >> 4;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 4);
        v15 = (v11 + 4);
        v16 = v2[3] >> 1;
        v17 = 16 * v16;
        if (v2[2])
        {
          if (v11 != v2 || v15 >= &v2[v17 / 8 + 4])
          {
            memmove(v11 + 4, v2 + 4, v17);
          }

          v2[2] = 0;
        }

        v5 = v15 + v17;
        v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v2 = v11;
      }

      v19 = __OFSUB__(v3--, 1);
      if (v19)
      {
        break;
      }

      *v5 = v4;
      *(v5 + 8) = v7;
      v5 += 16;
      if (v1 == ++v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v20 = v2[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v19 = __OFSUB__(v21, v3);
    v22 = v21 - v3;
    if (v19)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v2[2] = v22;
  }
}

void sub_1D9B43510(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9C7C03C();
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9B43380(a2);
  v39 = v6;

  sub_1D9B3DD2C(&v39);

  v7 = v39;
  v8 = *(v39 + 2);
  if (v8 >= 0x1A)
  {
    sub_1D9A083A4(v39, (v39 + 32), 0, 0x33uLL);
    v10 = v9;

    v8 = *(v10 + 16);
    v7 = v10;
  }

  if (!v8)
  {

    v11 = MEMORY[0x1E69E7CC0];
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_21:

    return;
  }

  v39 = MEMORY[0x1E69E7CC0];
  sub_1D99FE418(0, v8, 0);
  v11 = v39;
  v12 = *(v39 + 2);
  v13 = 32;
  do
  {
    v14 = *&v7[v13];
    v39 = v11;
    v15 = *(v11 + 3);
    if (v12 >= v15 >> 1)
    {
      sub_1D99FE418((v15 > 1), v12 + 1, 1);
      v11 = v39;
    }

    *(v11 + 2) = v12 + 1;
    *&v11[8 * v12 + 32] = v14;
    v13 += 16;
    ++v12;
    --v8;
  }

  while (v8);

  v16 = *(v11 + 2);
  if (!v16)
  {
    goto LABEL_21;
  }

LABEL_9:
  v34 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v33 = a1 + v34;
  v36 = *(a1 + 16);
  v32 = *(a2 + 16);
  v30 = a2 + 32;
  v31 = v37 + 16;
  v17 = (v37 + 32);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = 32;
  v20 = MEMORY[0x1E69E7CC0];
  v35 = v4;
  while (1)
  {
    v21 = *&v11[v19];
    if (v21 >= v36)
    {
      break;
    }

    v22 = *(v37 + 72);
    (*(v37 + 16))(v38, v33 + v22 * v21, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1D9AF9A4C(0, v18[2] + 1, 1, v18);
    }

    v24 = v18[2];
    v23 = v18[3];
    if (v24 >= v23 >> 1)
    {
      v18 = sub_1D9AF9A4C((v23 > 1), v24 + 1, 1, v18);
    }

    v18[2] = v24 + 1;
    v25 = v18 + v34 + v24 * v22;
    v4 = v35;
    (*v17)(v25, v38, v35);
    if (v21 >= v32)
    {
      goto LABEL_25;
    }

    v26 = *(v30 + 4 * v21);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1D9AF84B8(0, *(v20 + 2) + 1, 1, v20);
    }

    v28 = *(v20 + 2);
    v27 = *(v20 + 3);
    if (v28 >= v27 >> 1)
    {
      v20 = sub_1D9AF84B8((v27 > 1), v28 + 1, 1, v20);
    }

    *(v20 + 2) = v28 + 1;
    *&v20[4 * v28 + 32] = v26;
    v19 += 8;
    if (!--v16)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
}

id sub_1D9B438D4(uint64_t a1, char a2)
{
  v22 = sub_1D9C7D8DC();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8, &qword_1D9C94280);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D9C88F90;
  v8 = *(a1 + 16);
  *(v7 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  if (a2)
  {

    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D9C96040;
    sub_1D99CC024();
    *(v7 + 32) = sub_1D9C7E22C();
    *(v7 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  v9 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v10 = v23;
  v11 = sub_1D9C18CFC(v7, 65568);
  if (v10)
  {
    static Logger.argos.getter(v6);
    v12 = sub_1D9C7D8BC();
    v13 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D9962000, v12, v13, "Error: Unable to create MLMultiArray from float", v14, 2u);
      MEMORY[0x1DA7405F0](v14, -1, -1);
    }

    (*(v4 + 8))(v6, v22);
    sub_1D9A74A28();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();
  }

  else
  {
    v23 = 0;
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v17 = *(a1 + 32 + 4 * i);
        v18 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        LODWORD(v19) = v17;
        v20 = [v18 initWithFloat_];
        [v11 setObject:v20 atIndexedSubscript:i];
      }
    }
  }

  return v11;
}

id sub_1D9B43BBC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9C7D8DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8, &qword_1D9C94280);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D9C88F90;
  *(v9 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v10 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  result = sub_1D9C18CFC(v9, 65568);
  v12 = result;
  if (v2)
  {
    static Logger.argos.getter(v8);
    v13 = sub_1D9C7D8BC();
    v14 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D9962000, v13, v14, "Error: Unable to create MLMultiArray for mask", v15, 2u);
      MEMORY[0x1DA7405F0](v15, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    sub_1D9A74A28();
    swift_allocError();
    *v16 = 5;
    swift_willThrow();

    return v12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      sub_1D99CC024();
      v17 = 0;
      do
      {
        v18 = sub_1D9C7E22C();
        [v12 setObject:v18 atIndexedSubscript:v17];

        ++v17;
      }

      while (a2 != v17);
    }

    return v12;
  }

  __break(1u);
  return result;
}

void sub_1D9B43E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9C7D8DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v30 - v13;
  if (*(v12 + 16) == 53)
  {
    v15 = sub_1D9B438D4(v12, 0);
    v16 = v3;
    if (!v3)
    {
      v17 = v15;
      v18 = sub_1D9C7DF5C();
      *(v18 + 16) = 1;
      *(v18 + 32) = a2;
      v27 = sub_1D9B438D4(v18, 0);

      v28 = sub_1D9B43BBC(53, a3);
      type metadata accessor for EncryptedSearchLTRInput();
      v29 = swift_allocObject();
      v29[2] = v17;
      v29[3] = v27;
      v29[4] = v28;
      return;
    }
  }

  else
  {
    static Logger.argos.getter(v30 - v13);
    v19 = sub_1D9C7D8BC();
    v20 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D9962000, v19, v20, "Error: provided feature size not equal to EncryptedSearchLTRInput size", v21, 2u);
      MEMORY[0x1DA7405F0](v21, -1, -1);
    }

    (*(v8 + 8))(v14, v7);
    sub_1D9A74A28();
    v16 = swift_allocError();
    *v22 = 5;
    swift_willThrow();
  }

  static Logger.argos.getter(v10);
  v23 = sub_1D9C7D8BC();
  v24 = sub_1D9C7E0AC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D9962000, v23, v24, "Error: Unable to create EncryptedSearchLTRInput", v25, 2u);
    MEMORY[0x1DA7405F0](v25, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_1D9A74A28();
  swift_allocError();
  *v26 = 5;
  swift_willThrow();
}

uint64_t sub_1D9B44164(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v167 = a3;
  v161 = sub_1D9C7BCBC();
  v6 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v159 = &v156 - v9;
  v10 = type metadata accessor for LandmarkSignals(0);
  v180 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v163 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v169 = &v156 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v181 = (&v156 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v177 = &v156 - v17;
  v18 = sub_1D9C7C03C();
  v179 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v183 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1D9C7D8DC();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v166 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v156 - v23;
  if (*(v22 + 16) != *(a2 + 16))
  {
    static Logger.argos.getter(&v156 - v23);
    v89 = sub_1D9C7D8BC();
    v90 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_1D9962000, v89, v90, "Error: Size of landmarkEntities not equal to size of similarityScores", v91, 2u);
      MEMORY[0x1DA7405F0](v91, -1, -1);
    }

    (*(v164 + 8))(v24, v165);
    sub_1D9A74A28();
    v92 = swift_allocError();
    *v93 = 2;
    swift_willThrow();
LABEL_85:
    v168 = 0;
    static Logger.argos.getter(v166);
    v152 = sub_1D9C7D8BC();
    v153 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&dword_1D9962000, v152, v153, "Error: Failed to process landmark signal", v154, 2u);
      MEMORY[0x1DA7405F0](v154, -1, -1);
    }

    (*(v164 + 8))(v166, v165);
    v150 = sub_1D9A44DB8(MEMORY[0x1E69E7CC0]);

    return v150;
  }

  v157 = v6;
  sub_1D9B43510(v22, a2);
  v26 = v25;
  v162 = v27;
  v28 = MEMORY[0x1E69E7CC0];
  v185 = sub_1D9A44DB8(MEMORY[0x1E69E7CC0]);
  v30 = sub_1D9A44FA0(v29, v28);
  v31 = v26;
  v32 = *(v26 + 16);
  if (v32 >= 0x19)
  {
    v33 = 25;
  }

  else
  {
    v33 = *(v26 + 16);
  }

  v171 = v10;
  v158 = v32;
  v178 = v33;
  if (!v32)
  {
LABEL_42:

    v94 = v30[8];
    v183 = (v30 + 8);
    v95 = 1 << *(v30 + 32);
    v96 = -1;
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    v97 = v96 & v94;
    v98 = (v95 + 63) >> 6;
    v172 = (v157 + 8);
    *&v170 = v162 + 32;
    v181 = (v180 + 48);

    v99 = 0;
    v179 = v30;
    v177 = v98;
    while (v97)
    {
LABEL_51:
      v102 = (v30[6] + ((v99 << 10) | (16 * __clz(__rbit64(v97)))));
      v103 = v102[1];
      v182 = *v102;

      v104 = sub_1D9C7DF5C();
      *(v104 + 16) = 53;
      *(v104 + 32) = 0u;
      *(v104 + 48) = 0u;
      *(v104 + 64) = 0u;
      *(v104 + 80) = 0u;
      *(v104 + 96) = 0u;
      *(v104 + 112) = 0u;
      *(v104 + 128) = 0u;
      *(v104 + 144) = 0u;
      *(v104 + 160) = 0u;
      *(v104 + 176) = 0u;
      *(v104 + 192) = 0u;
      *(v104 + 208) = 0u;
      *(v104 + 224) = 0u;
      *(v104 + 240) = 0;
      v105 = v185;
      if (!*(v185 + 16) || (v106 = sub_1D99ED894(v182, v103), (v107 & 1) == 0))
      {

        goto LABEL_83;
      }

      v108 = *(v105 + 56) + *(v180 + 72) * v106;
      v109 = v163;
      sub_1D9B45558(v108, v163, type metadata accessor for LandmarkSignals);
      sub_1D9B455C0(v109, v169, type metadata accessor for LandmarkSignals);
      if (!v30[2] || (v110 = sub_1D99ED894(v182, v103), (v111 & 1) == 0))
      {
        sub_1D9B45628(v169, type metadata accessor for LandmarkSignals);

LABEL_83:

        sub_1D9A74A28();
        v92 = swift_allocError();
        *v151 = 4;
        swift_willThrow();

LABEL_84:

        goto LABEL_85;
      }

      v112 = *(v30[7] + 8 * v110);

      sub_1D9C7BFCC();
      if (!*(v104 + 16))
      {
        goto LABEL_102;
      }

      *(v104 + 32) = v113;
      sub_1D9C7C01C();
      if (*(v104 + 16) < 2uLL)
      {
        goto LABEL_103;
      }

      *(v104 + 36) = v114;
      if (!v167 || (v174 = v167, v115 = v159, v175 = v112, sub_1D9C7BFDC(), sub_1D9C7BC6C(), v117 = v116, v176 = v103, v173 = *v172, v118 = v115, v119 = v161, v173(v118, v161), v120 = v160, v112 = v175, sub_1D9C7BFDC(), sub_1D9C7BC8C(), v122 = v121, v123 = v120, v10 = v171, v173(v123, v119), v103 = v176, v124 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v117 longitude:v122], v125 = v174, objc_msgSend(v124, sel_distanceFromLocation_, v174), v127 = v126, v125, v124, v128 = 0.0, v127 < 20000.0))
      {
        v128 = 1.0;
      }

      if (*(v104 + 16) < 3uLL)
      {
        goto LABEL_104;
      }

      *(v104 + 40) = v128;
      if (v158)
      {
        v129 = v178;
        v130 = v168;
        if (v178 > *(v162 + 16))
        {
          goto LABEL_105;
        }

        v131 = (v104 + 48);
        v132 = v170;
        v133 = 4;
        do
        {
          if (v133 >= *(v104 + 16))
          {
            __break(1u);
            goto LABEL_91;
          }

          v134 = *v132++;
          *v131 = v134 * 10.0;
          v131 += 2;
          v133 += 2;
          --v129;
        }

        while (v129);
        v135 = v112[2];
        if (v135)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v130 = v168;
        v135 = v112[2];
        if (v135)
        {
LABEL_69:
          v136 = v112 + 4;
          while (1)
          {
            v138 = *v136++;
            v137 = v138;
            if (v138 + 0x4000000000000000 < 0)
            {
              break;
            }

            v139 = 2 * v137;
            v51 = __OFADD__(v139, 3);
            v140 = v139 + 3;
            if (v51)
            {
              goto LABEL_92;
            }

            if ((v140 & 0x8000000000000000) != 0)
            {
              goto LABEL_93;
            }

            if (v140 >= *(v104 + 16))
            {
              goto LABEL_94;
            }

            *(v104 + 32 + 4 * v140) = 1065353216;
            if (!--v135)
            {
              goto LABEL_75;
            }
          }

LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }
      }

LABEL_75:

      sub_1D9B43E24(v104, 1, 53);
      if (v130)
      {
        v92 = v130;
        sub_1D9B45628(v169, type metadata accessor for LandmarkSignals);

        goto LABEL_84;
      }

      v142 = v141;
      v168 = 0;

      v143 = sub_1D9B3E82C(v184, v182, v103);
      v145 = v144;
      v146 = *v181;
      if (!(*v181)(v144, 1, v10))
      {
        *(v145 + *(v10 + 20)) = v142;
      }

      (v143)(v184, 0);
      v147 = sub_1D9B3E82C(v184, v182, v103);
      v149 = v148;
      if (!v146(v148, 1, v10))
      {
        *(v149 + *(v10 + 24)) = v128 == 1.0;
      }

      (v147)(v184, 0);
      v100 = v169;
      v97 &= v97 - 1;

      sub_1D9B45628(v100, type metadata accessor for LandmarkSignals);
      v30 = v179;
      v98 = v177;
    }

    while (1)
    {
      v101 = v99 + 1;
      if (__OFADD__(v99, 1))
      {
        goto LABEL_98;
      }

      if (v101 >= v98)
      {

        v150 = v185;

        return v150;
      }

      v97 = *&v183[8 * v101];
      ++v99;
      if (v97)
      {
        v99 = v101;
        goto LABEL_51;
      }
    }
  }

  v34 = 0;
  v176 = v31 + ((*(v179 + 80) + 32) & ~*(v179 + 80));
  v175 = v179 + 2;
  v172 = (v179 + 1);
  v170 = xmmword_1D9C85660;
  v173 = v31;
  v174 = v18;
  while (v33 != v34)
  {
    if (v34 >= *(v31 + 2))
    {
      goto LABEL_96;
    }

    v36 = v179[9];
    v182 = v34;
    v37 = v179[2];
    v38 = v10;
    v39 = v183;
    v37(v183, v176 + v36 * v34, v18);
    v40 = sub_1D9C7BFFC();
    v42 = v41;
    v43 = v177;
    v44 = v39;
    v10 = v38;
    v37(v177, v44, v18);
    *(v43 + *(v38 + 20)) = 0;
    *(v43 + *(v38 + 24)) = 0;
    sub_1D9B455C0(v43, v181, type metadata accessor for LandmarkSignals);
    v45 = v185;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v184[0] = v45;
    v185 = 0x8000000000000000;
    v47 = sub_1D99ED894(v40, v42);
    v49 = v45[2];
    v50 = (v48 & 1) == 0;
    v51 = __OFADD__(v49, v50);
    v52 = v49 + v50;
    if (v51)
    {
      goto LABEL_97;
    }

    v53 = v48;
    if (v45[3] < v52)
    {
      sub_1D9C09A6C(v52, isUniquelyReferenced_nonNull_native);
      v47 = sub_1D99ED894(v40, v42);
      if ((v53 & 1) != (v54 & 1))
      {
        goto LABEL_106;
      }

LABEL_17:
      if (v53)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v57 = v47;
    sub_1D9C14160();
    v47 = v57;
    if (v53)
    {
LABEL_18:
      v55 = v47;

      v56 = v184[0];
      sub_1D9B45688(v181, v184[0][7] + *(v180 + 72) * v55);
      goto LABEL_22;
    }

LABEL_20:
    v56 = v184[0];
    v184[0][(v47 >> 6) + 8] |= 1 << v47;
    v58 = (v56[6] + 16 * v47);
    *v58 = v40;
    v58[1] = v42;
    sub_1D9B455C0(v181, v56[7] + *(v180 + 72) * v47, type metadata accessor for LandmarkSignals);
    v59 = v56[2];
    v51 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v51)
    {
      goto LABEL_100;
    }

    v56[2] = v60;
LABEL_22:
    v185 = v56;

    v61 = sub_1D9C7BFFC();
    if (v30[2])
    {
      v63 = sub_1D99ED894(v61, v62);
      v65 = v64;

      if (v65)
      {
        v66 = *(v30[7] + 8 * v63);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_1D9AF85BC(0, *(v66 + 2) + 1, 1, v66);
        }

        v35 = v182;
        v68 = *(v66 + 2);
        v67 = *(v66 + 3);
        if (v68 >= v67 >> 1)
        {
          v66 = sub_1D9AF85BC((v67 > 1), v68 + 1, 1, v66);
        }

        *(v66 + 2) = v68 + 1;
        *&v66[8 * v68 + 32] = v35;
        v69 = sub_1D9C7BFFC();
        v71 = v70;
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v184[0] = v30;
        sub_1D9C11480(v66, v69, v71, v72);

        v30 = v184[0];
        v33 = v178;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v73 = sub_1D9C7BFFC();
    v75 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51700, &qword_1D9C86D90);
    v76 = swift_allocObject();
    *(v76 + 16) = v170;
    *(v76 + 32) = v182;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v184[0] = v30;
    v79 = sub_1D99ED894(v73, v75);
    v80 = v30[2];
    v81 = (v78 & 1) == 0;
    v82 = v80 + v81;
    if (__OFADD__(v80, v81))
    {
      goto LABEL_99;
    }

    v83 = v78;
    if (v30[3] >= v82)
    {
      if ((v77 & 1) == 0)
      {
        sub_1D9C143F0();
      }
    }

    else
    {
      sub_1D9C09DE8(v82, v77);
      v84 = sub_1D99ED894(v73, v75);
      if ((v83 & 1) != (v85 & 1))
      {
        goto LABEL_106;
      }

      v79 = v84;
    }

    v10 = v171;
    v30 = v184[0];
    if (v83)
    {
      *(v184[0][7] + 8 * v79) = v76;
    }

    else
    {
      v184[0][(v79 >> 6) + 8] |= 1 << v79;
      v86 = (v30[6] + 16 * v79);
      *v86 = v73;
      v86[1] = v75;
      *(v30[7] + 8 * v79) = v76;
      v87 = v30[2];
      v51 = __OFADD__(v87, 1);
      v88 = v87 + 1;
      if (v51)
      {
        goto LABEL_101;
      }

      v30[2] = v88;
    }

    v33 = v178;
    v35 = v182;
LABEL_9:
    v34 = v35 + 1;
    v18 = v174;
    (*v172)(v183, v174);
    v31 = v173;
    if (v33 == v34)
    {
      goto LABEL_42;
    }
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

void *sub_1D9B451DC(uint64_t a1)
{
  v2 = sub_1D9C7B98C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = sub_1D9A449E0(MEMORY[0x1E69E7CC0]);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v10 = *(sub_1D9C7BCEC() - 8);
  v11 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v41 = v3;
  v43 = (v3 + 8);
  v44 = (v3 + 16);
  v42 = *(v10 + 72);
  while (1)
  {
    v45 = v9;
    sub_1D9C7BCCC();
    sub_1D9C7B95C();
    v14 = *v44;
    v15 = v46;
    v16 = v7;
    v17 = v7;
    v18 = v2;
    (*v44)(v46, v17, v2);
    v19 = sub_1D9C7BCDC();
    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v8;
    v23 = sub_1D99EDF30(v15);
    v25 = v8[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (v8[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = v23;
        sub_1D9C14404();
        v23 = v38;
      }
    }

    else
    {
      sub_1D9C09DFC(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1D99EDF30(v46);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_17;
      }
    }

    v2 = v18;
    v8 = v47;
    if (v29)
    {
      v12 = (v47[7] + 16 * v23);
      *v12 = v19;
      v12[1] = v21;

      v13 = *v43;
      (*v43)(v46, v18);
      v7 = v16;
      v13(v16, v2);
    }

    else
    {
      v47[(v23 >> 6) + 8] |= 1 << v23;
      v31 = v41;
      v32 = v23;
      v33 = v46;
      v14(v8[6] + *(v41 + 72) * v23, v46, v2);
      v34 = (v8[7] + 16 * v32);
      *v34 = v19;
      v34[1] = v21;
      v35 = *(v31 + 8);
      v35(v33, v2);
      v7 = v16;
      v35(v16, v2);
      v36 = v8[2];
      v27 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v27)
      {
        goto LABEL_16;
      }

      v8[2] = v37;
    }

    v11 += v42;
    v9 = v45 - 1;
    if (v45 == 1)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

uint64_t sub_1D9B45558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B455C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B45628(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9B45688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LandmarkSignals(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D9B45770(uint64_t a1)
{
  sub_1D9C7C03C();
  if (v1 <= 0x3F)
  {
    sub_1D9B457FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9B457FC(uint64_t a1)
{
  if (!qword_1ECB53618)
  {
    type metadata accessor for EncryptedSearchLTRInput();
    v1 = sub_1D9C7E27C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECB53618);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_1D9B45A04(uint64_t a1, double a2)
{
  sub_1D9C7BFBC();
  if (v2 <= 0x3F)
  {
    sub_1D9B457FC(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D9B45A9C()
{
  result = qword_1ECB53630;
  if (!qword_1ECB53630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53630);
  }

  return result;
}

unint64_t sub_1D9B45AF0()
{
  result = qword_1ECB53638;
  if (!qword_1ECB53638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53638);
  }

  return result;
}

unint64_t sub_1D9B45B44(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

void sub_1D9B45BA8(uint64_t a1)
{
  sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    sub_1D9B45D70(319, qword_1EDD314D0, type metadata accessor for Argos_Protos_MLModel_FeatureType, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9B45CB4(uint64_t a1)
{
  sub_1D9B45D70(319, qword_1EDD315A0, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9B45D70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D9B45E88(uint64_t a1)
{
  sub_1D99FF6BC(319, &qword_1EDD2C480, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D9B45D70(319, qword_1EDD304B8, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D99FF6BC(319, qword_1EDD30440, &type metadata for Argos_Protos_MLModel_ArrayFeatureType.OneOf_DefaultOptionalValue, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D9C7D3CC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Argos_Protos_MLModel_ArrayFeatureType.OneOf_DefaultOptionalValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Argos_Protos_MLModel_ArrayFeatureType.OneOf_DefaultOptionalValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D9B460C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D9B46364(uint64_t a1)
{
  sub_1D9B45D70(319, qword_1EDD30100, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9B464F4(uint64_t a1)
{
  sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    sub_1D9B45D70(319, qword_1EDD31970, type metadata accessor for Argos_Protos_MLModel_SizeRange, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9B46618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_1D9C7D3CC();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D9B46700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D9C7D3CC();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9B467C4(uint64_t a1)
{
  sub_1D9B45D70(319, &qword_1EDD2C580, type metadata accessor for Argos_Protos_MLModel_FeatureDescription, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9B46898()
{
  if (v0[8])
  {
    return 10 * *v0;
  }

  else
  {
    return *v0;
  }
}

void sub_1D9B468CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = 10 * *v1;
  }

  *a1 = v2;
}

uint64_t sub_1D9B468EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B4FF1C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1D9B46958()
{
  result = qword_1EDD2AEA8;
  if (!qword_1EDD2AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2AEA8);
  }

  return result;
}

unint64_t sub_1D9B469B0()
{
  result = qword_1EDD2AEB0;
  if (!qword_1EDD2AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2AEB0);
  }

  return result;
}

unint64_t sub_1D9B46A08()
{
  result = qword_1EDD2AEA0;
  if (!qword_1EDD2AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2AEA0);
  }

  return result;
}

double sub_1D9B46A5C@<D0>(void *a1@<X8>)
{
  *a1 = qword_1ECB53640;

  return result;
}

BOOL sub_1D9B46A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a1 == *a2;
  if (*(a2 + 8))
  {
    v3 = 0;
  }

  v4 = COERCE_FLOAT(*a1) == COERCE_FLOAT(*a2);
  if (v2 != 1)
  {
    v4 = 0;
  }

  v5 = v2 == 2 && *a1 == *a2;
  if (*(a1 + 8) != 1)
  {
    v4 = v5;
  }

  if (*(a1 + 8))
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9B46AF4@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1D9B46B2C()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1D9C97890[result];
  }

  return result;
}

uint64_t sub_1D9B46B64@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

void sub_1D9B46BA0(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_1D9C97890[v2];
  }

  *a1 = v2;
}

uint64_t sub_1D9B46BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B51FC4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1D9B46C30()
{
  result = qword_1EDD30628;
  if (!qword_1EDD30628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD30628);
  }

  return result;
}

unint64_t sub_1D9B46C88()
{
  result = qword_1EDD30630;
  if (!qword_1EDD30630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD30630);
  }

  return result;
}

unint64_t sub_1D9B46CE0()
{
  result = qword_1EDD30620;
  if (!qword_1EDD30620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD30620);
  }

  return result;
}

double sub_1D9B46D34@<D0>(void *a1@<X8>)
{
  *a1 = qword_1ECB53648;

  return result;
}

uint64_t sub_1D9B46DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B4F184(&qword_1ECB537B0, type metadata accessor for Argos_Protos_MLModel_SizeRange, &unk_1D9C976E8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9B46E90(uint64_t a1)
{
  v2 = sub_1D9B4F184(&qword_1ECB53778, type metadata accessor for Argos_Protos_MLModel_SizeRange, &unk_1D9C97720);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9B46EFC(uint64_t a1, uint64_t a2)
{
  sub_1D9B4F184(&qword_1ECB53778, type metadata accessor for Argos_Protos_MLModel_SizeRange, &unk_1D9C97720);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9B46F78()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41770);
  __swift_project_value_buffer(v0, qword_1EDD41770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C86430;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 21;
  *v12 = "enumeratedSizes";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 31;
  *v14 = "imageSizeRange";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 3;
  *v15 = "colorSpace";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9B4720C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
        sub_1D9C7D56C();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1D9B472FC(a1, v5, a2, a3);
          break;
        case 21:
          sub_1D9B47370(v5, a1, a2, a3);
          break;
        case 31:
          sub_1D9B4793C(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1D9B472FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0);
  sub_1D9B4FF1C();
  return sub_1D9C7D4FC();
}

uint64_t sub_1D9B47370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E58, &qword_1D9C8A448);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB537C0, &qword_1D9C97818);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0) + 24);
  v44 = a1;
  v42 = v29;
  sub_1D99AB100(a1 + v29, v12, &qword_1ECB51E58, &qword_1D9C8A448);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51E58, &qword_1D9C8A448);
    v31 = v13;
    v32 = v50;
  }

  else
  {
    sub_1D9B4FFD0(v12, v19, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
    sub_1D9B4FFD0(v19, v16, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D9B4FF70(v16, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
      v32 = v50;
    }

    else
    {
      sub_1D99A6AE0(v25, &qword_1ECB537C0, &qword_1D9C97818);
      v33 = v16;
      v34 = v46;
      sub_1D9B4FFD0(v33, v46, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes);
      sub_1D9B4FFD0(v34, v25, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes);
      v32 = v50;
      v28(v25, 0, 1, v50);
    }
  }

  v35 = v48;
  sub_1D9B4F184(&qword_1ECB53728, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes, &unk_1D9C972C0);
  v36 = v49;
  sub_1D9C7D60C();
  if (v36)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB537C0, &qword_1D9C97818);
  }

  sub_1D99AB100(v25, v35, &qword_1ECB537C0, &qword_1D9C97818);
  if ((*(v47 + 48))(v35, 1, v32) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB537C0, &qword_1D9C97818);
    return sub_1D99A6AE0(v35, &qword_1ECB537C0, &qword_1D9C97818);
  }

  else
  {
    v38 = v45;
    sub_1D9B4FFD0(v35, v45, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes);
    if (v30 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB537C0, &qword_1D9C97818);
    v39 = v44;
    v40 = v42;
    sub_1D99A6AE0(v44 + v42, &qword_1ECB51E58, &qword_1D9C8A448);
    sub_1D9B4FFD0(v38, v39 + v40, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t sub_1D9B4793C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E58, &qword_1D9C8A448);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB537C8, &unk_1D9C97820);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0) + 24);
  v44 = a1;
  v42 = v29;
  sub_1D99AB100(a1 + v29, v12, &qword_1ECB51E58, &qword_1D9C8A448);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51E58, &qword_1D9C8A448);
    v31 = v13;
  }

  else
  {
    sub_1D9B4FFD0(v12, v19, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
    sub_1D9B4FFD0(v19, v16, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D99A6AE0(v25, &qword_1ECB537C8, &unk_1D9C97820);
      v32 = v16;
      v33 = v46;
      sub_1D9B4FFD0(v32, v46, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange);
      sub_1D9B4FFD0(v33, v25, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    sub_1D9B4FF70(v16, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  sub_1D9B4F184(&qword_1ECB53708, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange, &unk_1D9C97158);
  v36 = v49;
  sub_1D9C7D60C();
  if (v36)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB537C8, &unk_1D9C97820);
  }

  sub_1D99AB100(v25, v35, &qword_1ECB537C8, &unk_1D9C97820);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB537C8, &unk_1D9C97820);
    return sub_1D99A6AE0(v35, &qword_1ECB537C8, &unk_1D9C97820);
  }

  else
  {
    v38 = v45;
    sub_1D9B4FFD0(v35, v45, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange);
    if (v30 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB537C8, &unk_1D9C97820);
    v39 = v44;
    v40 = v42;
    sub_1D99A6AE0(v44 + v42, &qword_1ECB51E58, &qword_1D9C8A448);
    sub_1D9B4FFD0(v38, v39 + v40, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t sub_1D9B47F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E58, &qword_1D9C8A448);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  if (*v3)
  {
    result = sub_1D9C7D79C();
    if (v4)
    {
      return result;
    }

    if (!v3[1])
    {
      goto LABEL_7;
    }

LABEL_6:
    result = sub_1D9C7D79C();
    if (v4)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v3[1])
  {
    goto LABEL_6;
  }

LABEL_7:
  v12 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0);
  v13 = v3 + *(v12 + 28);
  v14 = *v13;
  LOBYTE(v13) = v13[8];
  v16 = v14;
  v17 = v13;
  sub_1D9B4FF1C();
  result = sub_1D9C7D75C();
  if (!v4)
  {
    sub_1D99AB100(v3 + *(v12 + 24), v10, &qword_1ECB51E58, &qword_1D9C8A448);
    v15 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility(0);
    if ((*(*(v15 - 8) + 48))(v10, 1, v15) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D9B4838C(v3, a1, a2, a3);
      }

      else
      {
        sub_1D9B48148(v3, a1, a2, a3);
      }

      sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
    }

    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9B48148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E58, &qword_1D9C8A448);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0);
  sub_1D99AB100(a1 + *(v11 + 24), v7, &qword_1ECB51E58, &qword_1D9C8A448);
  v12 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51E58, &qword_1D9C8A448);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D9B4FFD0(v7, v10, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes);
    sub_1D9B4F184(&qword_1ECB53728, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes, &unk_1D9C972C0);
    sub_1D9C7D80C();
    return sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes);
  }

  result = sub_1D9B4FF70(v7, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
  __break(1u);
  return result;
}

uint64_t sub_1D9B4838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E58, &qword_1D9C8A448);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0);
  sub_1D99AB100(a1 + *(v11 + 24), v7, &qword_1ECB51E58, &qword_1D9C8A448);
  v12 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51E58, &qword_1D9C8A448);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9B4FFD0(v7, v10, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange);
    sub_1D9B4F184(&qword_1ECB53708, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange, &unk_1D9C97158);
    sub_1D9C7D80C();
    return sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange);
  }

  result = sub_1D9B4FF70(v7, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
  __break(1u);
  return result;
}

uint64_t sub_1D9B485D4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];
  *v6 = 0;
  v6[8] = 1;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9B486B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B4F184(&qword_1ECB537B8, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType, &unk_1D9C97580);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9B48750(uint64_t a1)
{
  v2 = sub_1D9B4F184(&unk_1EDD2AE88, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType, &unk_1D9C975B8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9B487BC(uint64_t a1, uint64_t a2)
{
  sub_1D9B4F184(&unk_1EDD2AE88, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType, &unk_1D9C975B8);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9B4883C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41788);
  __swift_project_value_buffer(v0, qword_1EDD41788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "INVALID_COLOR_SPACE";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "GRAYSCALE";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 20;
  *v12 = "RGB";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 30;
  *v14 = "BGR";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9B48AE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D9C85EA0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1D9C7D81C();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = a4;
  *v17 = a5;
  *(v17 + 1) = 6;
  v17[16] = 2;
  v16();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9B48CA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D5EC();
    }

    else if (result == 2)
    {
      a4(v4 + 8, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1D9B48D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, __n128), void (*a5)(void), __n128 a6)
{
  if (!*v6 || (result = sub_1D9C7D7EC(), !v7))
  {
    v13 = v6[1];
    if (!v13 || (result = a4(v13, 2, a2, a3, a6), !v7))
    {
      (a5)(0, a6);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9B48E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B4F184(&qword_1ECB537E0, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSize, &unk_1D9C973F0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9B48F34(uint64_t a1)
{
  v2 = sub_1D9B4F184(&qword_1ECB53748, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSize, &unk_1D9C97428);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9B48FA0(uint64_t a1, uint64_t a2)
{
  sub_1D9B4F184(&qword_1ECB53748, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSize, &unk_1D9C97428);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9B4901C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9B4F184(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9B490CC()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000015, 0x80000001D9CAA960);
  qword_1ECB71438 = 0xD000000000000025;
  qword_1ECB71440 = 0x80000001D9CAA8D0;
  return result;
}

uint64_t sub_1D9B49158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSize(0), sub_1D9B4F184(&qword_1ECB53748, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSize, &unk_1D9C97428), result = sub_1D9C7D7FC(), !v4))
  {
    type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9B492D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B4F184(&qword_1ECB537E8, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes, &unk_1D9C97288);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9B49378(uint64_t a1)
{
  v2 = sub_1D9B4F184(&qword_1ECB53728, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes, &unk_1D9C972C0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9B493E4(uint64_t a1, uint64_t a2)
{
  sub_1D9B4F184(&qword_1ECB53728, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes, &unk_1D9C972C0);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9B49498(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = MEMORY[0x1DA73DF90](0x69536567616D492ELL, a2);
  *a3 = 0xD000000000000025;
  *a4 = 0x80000001D9CAA8D0;
  return result;
}

uint64_t sub_1D9B4952C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D9C85EA0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 10;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1D9C7D81C();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9B496E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9B4977C(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1D9B49830(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1D9B4977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange(0);
  type metadata accessor for Argos_Protos_MLModel_SizeRange(0);
  sub_1D9B4F184(&qword_1ECB53778, type metadata accessor for Argos_Protos_MLModel_SizeRange, &unk_1D9C97720);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9B49830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange(0);
  type metadata accessor for Argos_Protos_MLModel_SizeRange(0);
  sub_1D9B4F184(&qword_1ECB53778, type metadata accessor for Argos_Protos_MLModel_SizeRange, &unk_1D9C97720);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9B498E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v28 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53658, &qword_1D9C96398);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Argos_Protos_MLModel_SizeRange(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v24 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange(0);
  v17 = *(v16 + 20);
  v25 = v3;
  sub_1D99AB100(v3 + v17, v9, &qword_1ECB53658, &qword_1D9C96398);
  v18 = *(v11 + 48);
  if (v18(v9, 1, v10) == 1)
  {
    sub_1D99A6AE0(v9, &qword_1ECB53658, &qword_1D9C96398);
  }

  else
  {
    sub_1D9B4FFD0(v9, v15, type metadata accessor for Argos_Protos_MLModel_SizeRange);
    sub_1D9B4F184(&qword_1ECB53778, type metadata accessor for Argos_Protos_MLModel_SizeRange, &unk_1D9C97720);
    v19 = v29;
    sub_1D9C7D80C();
    result = sub_1D9B4FF70(v15, type metadata accessor for Argos_Protos_MLModel_SizeRange);
    if (v19)
    {
      return result;
    }

    v29 = 0;
  }

  sub_1D99AB100(v25 + *(v16 + 24), v6, &qword_1ECB53658, &qword_1D9C96398);
  if (v18(v6, 1, v10) == 1)
  {
    sub_1D99A6AE0(v6, &qword_1ECB53658, &qword_1D9C96398);
  }

  else
  {
    v21 = v24;
    sub_1D9B4FFD0(v6, v24, type metadata accessor for Argos_Protos_MLModel_SizeRange);
    sub_1D9B4F184(&qword_1ECB53778, type metadata accessor for Argos_Protos_MLModel_SizeRange, &unk_1D9C97720);
    v22 = v29;
    sub_1D9C7D80C();
    result = sub_1D9B4FF70(v21, type metadata accessor for Argos_Protos_MLModel_SizeRange);
    if (v22)
    {
      return result;
    }
  }

  return sub_1D9C7D3AC();
}

uint64_t sub_1D9B49C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D9C7D3BC();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Argos_Protos_MLModel_SizeRange(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1D9B49D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B4F184(&qword_1ECB537F0, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange, &unk_1D9C97120);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9B49E34(uint64_t a1)
{
  v2 = sub_1D9B4F184(&qword_1ECB53708, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange, &unk_1D9C97158);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9B49EA0(uint64_t a1, uint64_t a2)
{
  sub_1D9B4F184(&qword_1ECB53708, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange, &unk_1D9C97158);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9B49F20()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41CD8);
  __swift_project_value_buffer(v0, qword_1EDD41CD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C961F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "shape";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dataType";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 21;
  *v12 = "enumeratedShapes";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 31;
  *v14 = "shapeRange";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 41;
  *v16 = "intDefaultValue";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 51;
  *v18 = "floatDefaultValue";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 61;
  *v20 = "doubleDefaultValue";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9B4A22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D9C7D4CC();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 30)
      {
        switch(result)
        {
          case 1:
            sub_1D9C7D52C();
            break;
          case 2:
            sub_1D9B51FC4();
            sub_1D9C7D4FC();
            break;
          case 21:
            sub_1D9B4A3D4(v5, a1, a2, a3);
            break;
        }
      }

      else
      {
        if (result <= 50)
        {
          if (result == 31)
          {
            sub_1D9B4A9A0(v5, a1, a2, a3);
            goto LABEL_5;
          }

          if (result != 41)
          {
            goto LABEL_5;
          }

          v11 = MEMORY[0x1E69AAC90];
          v12 = a1;
          v13 = v5;
          v14 = a2;
          v15 = a3;
          v16 = 0;
          goto LABEL_21;
        }

        if (result == 51)
        {
          v11 = MEMORY[0x1E69AAC80];
          v12 = a1;
          v13 = v5;
          v14 = a2;
          v15 = a3;
          v16 = 1;
LABEL_21:
          sub_1D9B4AF68(v12, v13, v14, v15, v11, v16);
          goto LABEL_5;
        }

        if (result == 61)
        {
          sub_1D9B4B01C(a1, v5, a2, a3);
        }
      }

LABEL_5:
      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9B4A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53650, &unk_1D9C96260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53800, &qword_1D9C97840);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType(0) + 24);
  v44 = a1;
  v42 = v29;
  sub_1D99AB100(a1 + v29, v12, &qword_1ECB53650, &unk_1D9C96260);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB53650, &unk_1D9C96260);
    v31 = v13;
    v32 = v50;
  }

  else
  {
    sub_1D9B4FFD0(v12, v19, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
    sub_1D9B4FFD0(v19, v16, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D9B4FF70(v16, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
      v32 = v50;
    }

    else
    {
      sub_1D99A6AE0(v25, &qword_1ECB53800, &qword_1D9C97840);
      v33 = v16;
      v34 = v46;
      sub_1D9B4FFD0(v33, v46, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes);
      sub_1D9B4FFD0(v34, v25, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes);
      v32 = v50;
      v28(v25, 0, 1, v50);
    }
  }

  v35 = v48;
  sub_1D9B4F184(&qword_1ECB536B8, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes, &unk_1D9C96CF8);
  v36 = v49;
  sub_1D9C7D60C();
  if (v36)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53800, &qword_1D9C97840);
  }

  sub_1D99AB100(v25, v35, &qword_1ECB53800, &qword_1D9C97840);
  if ((*(v47 + 48))(v35, 1, v32) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53800, &qword_1D9C97840);
    return sub_1D99A6AE0(v35, &qword_1ECB53800, &qword_1D9C97840);
  }

  else
  {
    v38 = v45;
    sub_1D9B4FFD0(v35, v45, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes);
    if (v30 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53800, &qword_1D9C97840);
    v39 = v44;
    v40 = v42;
    sub_1D99A6AE0(v44 + v42, &qword_1ECB53650, &unk_1D9C96260);
    sub_1D9B4FFD0(v38, v39 + v40, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t sub_1D9B4A9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53650, &unk_1D9C96260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53808, &qword_1D9C97848);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType(0) + 24);
  v44 = a1;
  v42 = v29;
  sub_1D99AB100(a1 + v29, v12, &qword_1ECB53650, &unk_1D9C96260);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB53650, &unk_1D9C96260);
    v31 = v13;
  }

  else
  {
    sub_1D9B4FFD0(v12, v19, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
    sub_1D9B4FFD0(v19, v16, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53808, &qword_1D9C97848);
      v32 = v16;
      v33 = v46;
      sub_1D9B4FFD0(v32, v46, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange);
      sub_1D9B4FFD0(v33, v25, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    sub_1D9B4FF70(v16, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  sub_1D9B4F184(&qword_1ECB53698, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange, &unk_1D9C96B90);
  v36 = v49;
  sub_1D9C7D60C();
  if (v36)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53808, &qword_1D9C97848);
  }

  sub_1D99AB100(v25, v35, &qword_1ECB53808, &qword_1D9C97848);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53808, &qword_1D9C97848);
    return sub_1D99A6AE0(v35, &qword_1ECB53808, &qword_1D9C97848);
  }

  else
  {
    v38 = v45;
    sub_1D9B4FFD0(v35, v45, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange);
    if (v30 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53808, &qword_1D9C97848);
    v39 = v44;
    v40 = v42;
    sub_1D99A6AE0(v44 + v42, &qword_1ECB53650, &unk_1D9C96260);
    sub_1D9B4FFD0(v38, v39 + v40, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t sub_1D9B4AF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unsigned int *, uint64_t, uint64_t), char a6)
{
  v12 = 0;
  v13 = 1;
  result = a5(&v12, a3, a4);
  if (!v6 && (v13 & 1) == 0)
  {
    v10 = v12;
    result = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType(0);
    v11 = a2 + *(result + 28);
    if (*(v11 + 8) != 255)
    {
      result = sub_1D9C7D4DC();
    }

    *v11 = v10;
    *(v11 + 8) = a6;
  }

  return result;
}

uint64_t sub_1D9B4B0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53650, &unk_1D9C96260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  if (*(*v3 + 16))
  {
    result = sub_1D9C7D71C();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v14 = *(v3 + 16);
  v17 = *(v3 + 8);
  v18 = v14;
  sub_1D9B51FC4();
  result = sub_1D9C7D75C();
  if (!v5)
  {
    v15 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType(0);
    sub_1D99AB100(v6 + *(v15 + 24), v12, &qword_1ECB53650, &unk_1D9C96260);
    v16 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility(0);
    if ((*(*(v16 - 8) + 48))(v12, 1, v16) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D9B4B584(v6, a1, a2, a3);
      }

      else
      {
        sub_1D9B4B340(v6, a1, a2, a3);
      }

      sub_1D9B4FF70(v12, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
    }

    if (*(v6 + *(v15 + 28) + 8) > 1u)
    {
      if (*(v6 + *(v15 + 28) + 8) == 2)
      {
        sub_1D9B4B8B4(v6, a1, a2, a3);
      }
    }

    else
    {
      sub_1D9B4B7C8(v6, a1, a2, a3);
    }

    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9B4B340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53650, &unk_1D9C96260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType(0);
  sub_1D99AB100(a1 + *(v11 + 24), v7, &qword_1ECB53650, &unk_1D9C96260);
  v12 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB53650, &unk_1D9C96260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D9B4FFD0(v7, v10, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes);
    sub_1D9B4F184(&qword_1ECB536B8, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes, &unk_1D9C96CF8);
    sub_1D9C7D80C();
    return sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes);
  }

  result = sub_1D9B4FF70(v7, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
  __break(1u);
  return result;
}

uint64_t sub_1D9B4B584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53650, &unk_1D9C96260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType(0);
  sub_1D99AB100(a1 + *(v11 + 24), v7, &qword_1ECB53650, &unk_1D9C96260);
  v12 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB53650, &unk_1D9C96260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9B4FFD0(v7, v10, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange);
    sub_1D9B4F184(&qword_1ECB53698, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange, &unk_1D9C96B90);
    sub_1D9C7D80C();
    return sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange);
  }

  result = sub_1D9B4FF70(v7, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
  __break(1u);
  return result;
}

uint64_t sub_1D9B4B7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType(0);
  if (!*(a1 + *(result + 28) + 8))
  {
    return sub_1D9C7D78C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B4B83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType(0);
  if (*(a1 + *(result + 28) + 8) == 1)
  {
    return sub_1D9C7D77C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B4B8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType(0);
  if (*(a1 + *(result + 28) + 8) == 2)
  {
    return sub_1D9C7D7BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B4B930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);
  *v6 = 0;
  *(v6 + 8) = -1;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9B4BA1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B4F184(&qword_1ECB537F8, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType, &unk_1D9C96FB8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9B4BABC(uint64_t a1)
{
  v2 = sub_1D9B4F184(qword_1EDD303A8, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType, &unk_1D9C96FF0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9B4BB28(uint64_t a1, uint64_t a2)
{
  sub_1D9B4F184(qword_1EDD303A8, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType, &unk_1D9C96FF0);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9B4BBA4()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41CF0);
  __swift_project_value_buffer(v0, qword_1EDD41CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D9C86430;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "INVALID_ARRAY_DATA_TYPE";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1D9C7D81C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 65552;
  *v9 = "FLOAT16";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 65568;
  *v11 = "FLOAT32";
  *(v11 + 1) = 7;
  v11[16] = 2;
  *(v11 + 3) = &unk_1F552A740;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 65600;
  *v13 = "FLOAT64";
  *(v13 + 1) = 7;
  v13[16] = 2;
  *(v13 + 3) = &unk_1F552A778;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 131104;
  *v14 = "INT32";
  *(v14 + 8) = 5;
  *(v14 + 16) = 2;
  v8();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9B4BECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D52C();
    }
  }

  return result;
}

uint64_t sub_1D9B4BF3C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*(*v4 + 16) || (result = sub_1D9C7D71C(), !v5))
  {
    type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.Shape(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9B4C01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B4F184(&qword_1ECB53820, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.Shape, &unk_1D9C96E28);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9B4C0BC(uint64_t a1)
{
  v2 = sub_1D9B4F184(&qword_1ECB536D8, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.Shape, &unk_1D9C96E60);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9B4C128(uint64_t a1, uint64_t a2)
{
  sub_1D9B4F184(&qword_1ECB536D8, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.Shape, &unk_1D9C96E60);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9B4C1BC()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000011, 0x80000001D9CAAA90);
  qword_1ECB714B0 = 0xD000000000000025;
  *algn_1ECB714B8 = 0x80000001D9CAA9A0;
  return result;
}

uint64_t sub_1D9B4C248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.Shape(0), sub_1D9B4F184(&qword_1ECB536D8, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.Shape, &unk_1D9C96E60), result = sub_1D9C7D7FC(), !v4))
  {
    type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9B4C3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B4F184(&qword_1ECB53828, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes, &unk_1D9C96CC0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9B4C468(uint64_t a1)
{
  v2 = sub_1D9B4F184(&qword_1ECB536B8, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes, &unk_1D9C96CF8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9B4C4D4(uint64_t a1, uint64_t a2)
{
  sub_1D9B4F184(&qword_1ECB536B8, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes, &unk_1D9C96CF8);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9B4C594(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1DA73DF90](a2, a3);
  *a4 = 0xD000000000000025;
  *a5 = 0x80000001D9CAA9A0;
  return result;
}

uint64_t sub_1D9B4C618(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D9C85660;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v13 = sub_1D9C7D81C();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_1D9C7D82C();
}

uint64_t sub_1D9B4C784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1D9B4F184(a5, a6, a7);
      sub_1D9C7D5FC();
    }
  }

  return result;
}

uint64_t sub_1D9B4C860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_MLModel_SizeRange(0), sub_1D9B4F184(&qword_1ECB53778, type metadata accessor for Argos_Protos_MLModel_SizeRange, &unk_1D9C97720), result = sub_1D9C7D7FC(), !v4))
  {
    type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9B4C9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B4F184(&qword_1ECB53830, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange, &unk_1D9C96B58);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9B4CA80(uint64_t a1)
{
  v2 = sub_1D9B4F184(&qword_1ECB53698, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange, &unk_1D9C96B90);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9B4CAEC(uint64_t a1, uint64_t a2)
{
  sub_1D9B4F184(&qword_1ECB53698, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange, &unk_1D9C96B90);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9B4CB80(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9B4F184(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9B4CC2C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41DC8);
  __swift_project_value_buffer(v0, qword_1EDD41DC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "imageType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "multiArrayType";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 1000;
  *v11 = "isOptional";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9B4CE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1000:
        type metadata accessor for Argos_Protos_MLModel_FeatureType(0);
        sub_1D9C7D4EC();
        break;
      case 5:
        sub_1D9B4D4CC(v5, a1, a2, a3);
        break;
      case 4:
        sub_1D9B4CF10(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1D9B4CF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510A8, &unk_1D9C85830);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53840, &qword_1D9C97860);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB510A8, &unk_1D9C85830);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB510A8, &unk_1D9C85830);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9B4FFD0(v12, v19, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
    sub_1D9B4FFD0(v19, v16, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D9B4FF70(v16, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
      v30 = v45;
    }

    else
    {
      sub_1D99A6AE0(v25, &qword_1ECB53840, &qword_1D9C97860);
      v32 = v41;
      sub_1D9B4FFD0(v16, v41, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
      sub_1D9B4FFD0(v32, v25, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1D9B4F184(&unk_1EDD2AE88, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType, &unk_1D9C975B8);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53840, &qword_1D9C97860);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53840, &qword_1D9C97860);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53840, &qword_1D9C97860);
    return sub_1D99A6AE0(v33, &qword_1ECB53840, &qword_1D9C97860);
  }

  else
  {
    v36 = v40;
    sub_1D9B4FFD0(v33, v40, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53840, &qword_1D9C97860);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB510A8, &unk_1D9C85830);
    sub_1D9B4FFD0(v36, v37, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9B4D4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510A8, &unk_1D9C85830);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53848, &qword_1D9C97868);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB510A8, &unk_1D9C85830);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB510A8, &unk_1D9C85830);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9B4FFD0(v12, v19, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
    sub_1D9B4FFD0(v19, v16, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53848, &qword_1D9C97868);
      v32 = v41;
      sub_1D9B4FFD0(v16, v41, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType);
      sub_1D9B4FFD0(v32, v25, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9B4FF70(v16, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9B4F184(qword_1EDD303A8, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType, &unk_1D9C96FF0);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53848, &qword_1D9C97868);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53848, &qword_1D9C97868);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53848, &qword_1D9C97868);
    return sub_1D99A6AE0(v33, &qword_1ECB53848, &qword_1D9C97868);
  }

  else
  {
    v36 = v40;
    sub_1D9B4FFD0(v33, v40, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53848, &qword_1D9C97868);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB510A8, &unk_1D9C85830);
    sub_1D9B4FFD0(v36, v37, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9B4DA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510A8, &unk_1D9C85830);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - v11;
  sub_1D99AB100(v6, &v15 - v11, &qword_1ECB510A8, &unk_1D9C85830);
  v13 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
LABEL_7:
    if (*(v6 + *(type metadata accessor for Argos_Protos_MLModel_FeatureType(0) + 20)) != 1)
    {
      return sub_1D9C7D3AC();
    }

    result = sub_1D9C7D74C();
    if (!v5)
    {
      return sub_1D9C7D3AC();
    }

    return result;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9B4DE90(v6, a1, a2, a3);
  }

  else
  {
    sub_1D9B4DC58(v6, a1, a2, a3);
  }

  result = sub_1D9B4FF70(v12, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D9B4DC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510A8, &unk_1D9C85830);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB510A8, &unk_1D9C85830);
  v11 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB510A8, &unk_1D9C85830);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D9B4FFD0(v7, v10, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
    sub_1D9B4F184(&unk_1EDD2AE88, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType, &unk_1D9C975B8);
    sub_1D9C7D80C();
    return sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
  }

  result = sub_1D9B4FF70(v7, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1D9B4DE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510A8, &unk_1D9C85830);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB510A8, &unk_1D9C85830);
  v11 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB510A8, &unk_1D9C85830);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9B4FFD0(v7, v10, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType);
    sub_1D9B4F184(qword_1EDD303A8, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType, &unk_1D9C96FF0);
    sub_1D9C7D80C();
    return sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType);
  }

  result = sub_1D9B4FF70(v7, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1D9B4E0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  *(a2 + *(a1 + 20)) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9B4E188(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B4F184(&qword_1ECB53838, type metadata accessor for Argos_Protos_MLModel_FeatureType, &unk_1D9C969F0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9B4E228(uint64_t a1)
{
  v2 = sub_1D9B4F184(&qword_1EDD31520, type metadata accessor for Argos_Protos_MLModel_FeatureType, &unk_1D9C96A28);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9B4E294(uint64_t a1, uint64_t a2)
{
  sub_1D9B4F184(&qword_1EDD31520, type metadata accessor for Argos_Protos_MLModel_FeatureType, &unk_1D9C96A28);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9B4E314()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41C88);
  __swift_project_value_buffer(v0, qword_1EDD41C88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shortDescription";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "type";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9B4E528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_1D9B4E5C8(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      sub_1D9C7D5CC();
    }
  }

  return result;
}

uint64_t sub_1D9B4E5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
  type metadata accessor for Argos_Protos_MLModel_FeatureType(0);
  sub_1D9B4F184(&qword_1EDD31520, type metadata accessor for Argos_Protos_MLModel_FeatureType, &unk_1D9C96A28);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9B4E67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB518E0, &qword_1D9C87450);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v21 - v8;
  v10 = type metadata accessor for Argos_Protos_MLModel_FeatureType(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v3[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (result = sub_1D9C7D7CC(), !v4))
  {
    v17 = v3[3];
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 || (result = sub_1D9C7D7CC(), !v4))
    {
      v21[0] = v4;
      v21[1] = a2;
      v21[3] = a3;
      v19 = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
      sub_1D99AB100(v3 + *(v19 + 28), v9, &qword_1ECB518E0, &qword_1D9C87450);
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_1D99A6AE0(v9, &qword_1ECB518E0, &qword_1D9C87450);
      }

      else
      {
        sub_1D9B4FFD0(v9, v13, type metadata accessor for Argos_Protos_MLModel_FeatureType);
        sub_1D9B4F184(&qword_1EDD31520, type metadata accessor for Argos_Protos_MLModel_FeatureType, &unk_1D9C96A28);
        v20 = v21[0];
        sub_1D9C7D80C();
        result = sub_1D9B4FF70(v13, type metadata accessor for Argos_Protos_MLModel_FeatureType);
        if (v20)
        {
          return result;
        }
      }

      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9B4E92C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_1D9C7D3BC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Argos_Protos_MLModel_FeatureType(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D9B4EA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B4F184(&qword_1ECB53850, type metadata accessor for Argos_Protos_MLModel_FeatureDescription, &unk_1D9C96888);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9B4EAA4(uint64_t a1)
{
  v2 = sub_1D9B4F184(&qword_1EDD2FCE8, type metadata accessor for Argos_Protos_MLModel_FeatureDescription, &unk_1D9C968C0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9B4EB10(uint64_t a1, uint64_t a2)
{
  sub_1D9B4F184(&qword_1EDD2FCE8, type metadata accessor for Argos_Protos_MLModel_FeatureDescription, &unk_1D9C968C0);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9B4EBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9C7D4CC();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1 || result == 10)
      {
        type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
        sub_1D9B4F184(&qword_1EDD2FCE8, type metadata accessor for Argos_Protos_MLModel_FeatureDescription, &unk_1D9C968C0);
        sub_1D9C7D5FC();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9B4ECE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0), sub_1D9B4F184(&qword_1EDD2FCE8, type metadata accessor for Argos_Protos_MLModel_FeatureDescription, &unk_1D9C968C0), result = sub_1D9C7D7FC(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0), sub_1D9B4F184(&qword_1EDD2FCE8, type metadata accessor for Argos_Protos_MLModel_FeatureDescription, &unk_1D9C968C0), result = sub_1D9C7D7FC(), !v4))
    {
      type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9B4EE3C@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9B4EEB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B4F184(&qword_1ECB53858, type metadata accessor for Argos_Protos_MLModel_ModelDescription, &unk_1D9C96720);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9B4EF54(uint64_t a1)
{
  v2 = sub_1D9B4F184(&qword_1EDD2FFE0, type metadata accessor for Argos_Protos_MLModel_ModelDescription, &unk_1D9C96758);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9B4EFC0(uint64_t a1, uint64_t a2)
{
  sub_1D9B4F184(&qword_1EDD2FFE0, type metadata accessor for Argos_Protos_MLModel_ModelDescription, &unk_1D9C96758);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9B4F03C(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4)
{
  if ((sub_1D9A26658(*a1, *a2, a4) & 1) == 0 || (sub_1D9A26658(a1[1], a2[1], v6) & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9B4F184(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9B4F184(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D9B4FF1C()
{
  result = qword_1EDD2AEB8;
  if (!qword_1EDD2AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2AEB8);
  }

  return result;
}

uint64_t sub_1D9B4FF70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9B4FFD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B50038(void *a1, void *a2)
{
  v4 = type metadata accessor for Argos_Protos_MLModel_FeatureType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB518E0, &qword_1D9C87450);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E78, &unk_1D9C97880);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_1D9C7E7DC() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = v7;
  v22 = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
  v14 = *(v22 + 28);
  v15 = *(v11 + 48);
  sub_1D99AB100(a1 + v14, v13, &qword_1ECB518E0, &qword_1D9C87450);
  sub_1D99AB100(a2 + v14, &v13[v15], &qword_1ECB518E0, &qword_1D9C87450);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB518E0, &qword_1D9C87450);
LABEL_14:
      sub_1D9C7D3CC();
      sub_1D9B4F184(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1D9C7DC2C();
      return v17 & 1;
    }

    goto LABEL_11;
  }

  sub_1D99AB100(v13, v10, &qword_1ECB518E0, &qword_1D9C87450);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_FeatureType);
LABEL_11:
    sub_1D99A6AE0(v13, &qword_1ECB51E78, &unk_1D9C97880);
    goto LABEL_12;
  }

  v18 = v21;
  sub_1D9B4FFD0(&v13[v15], v21, type metadata accessor for Argos_Protos_MLModel_FeatureType);
  v19 = sub_1D9B51468(v10, v18);
  sub_1D9B4FF70(v18, type metadata accessor for Argos_Protos_MLModel_FeatureType);
  sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_FeatureType);
  sub_1D99A6AE0(v13, &qword_1ECB518E0, &qword_1D9C87450);
  if (v19)
  {
    goto LABEL_14;
  }

LABEL_12:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D9B503EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_MLModel_SizeRange(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v35 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v37 = (&v35 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53658, &qword_1D9C96398);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v35 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB537D8, &qword_1D9C97838);
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v38 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange(0);
  v39 = v14;
  v19 = *(v38 + 20);
  v20 = *(v14 + 48);
  v41 = a1;
  sub_1D99AB100(a1 + v19, v18, &qword_1ECB53658, &qword_1D9C96398);
  v42 = a2;
  sub_1D99AB100(a2 + v19, &v18[v20], &qword_1ECB53658, &qword_1D9C96398);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) != 1)
  {
    sub_1D99AB100(v18, v13, &qword_1ECB53658, &qword_1D9C96398);
    if (v21(&v18[v20], 1, v4) == 1)
    {
      v25 = v13;
LABEL_16:
      sub_1D9B4FF70(v25, type metadata accessor for Argos_Protos_MLModel_SizeRange);
      goto LABEL_17;
    }

    v26 = v37;
    sub_1D9B4FFD0(&v18[v20], v37, type metadata accessor for Argos_Protos_MLModel_SizeRange);
    if (*v13 == *v26 && v13[1] == v26[1])
    {
      sub_1D9C7D3CC();
      sub_1D9B4F184(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v27 = sub_1D9C7DC2C();
      sub_1D9B4FF70(v26, type metadata accessor for Argos_Protos_MLModel_SizeRange);
      if (v27)
      {
        sub_1D9B4FF70(v13, type metadata accessor for Argos_Protos_MLModel_SizeRange);
        goto LABEL_3;
      }
    }

    else
    {
      sub_1D9B4FF70(v26, type metadata accessor for Argos_Protos_MLModel_SizeRange);
    }

    v28 = v13;
    goto LABEL_24;
  }

  if (v21(&v18[v20], 1, v4) != 1)
  {
LABEL_17:
    v30 = &qword_1ECB537D8;
    v31 = &qword_1D9C97838;
LABEL_25:
    sub_1D99A6AE0(v18, v30, v31);
    v24 = 0;
    return v24 & 1;
  }

LABEL_3:
  sub_1D99A6AE0(v18, &qword_1ECB53658, &qword_1D9C96398);
  v22 = *(v38 + 24);
  v23 = *(v39 + 48);
  v18 = v40;
  sub_1D99AB100(v41 + v22, v40, &qword_1ECB53658, &qword_1D9C96398);
  sub_1D99AB100(v42 + v22, &v18[v23], &qword_1ECB53658, &qword_1D9C96398);
  if (v21(v18, 1, v4) != 1)
  {
    v29 = v36;
    sub_1D99AB100(v18, v36, &qword_1ECB53658, &qword_1D9C96398);
    if (v21(&v18[v23], 1, v4) == 1)
    {
      v25 = v29;
      goto LABEL_16;
    }

    v32 = v35;
    sub_1D9B4FFD0(&v18[v23], v35, type metadata accessor for Argos_Protos_MLModel_SizeRange);
    if (*v29 == *v32 && v29[1] == v32[1])
    {
      sub_1D9C7D3CC();
      sub_1D9B4F184(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v33 = sub_1D9C7DC2C();
      sub_1D9B4FF70(v32, type metadata accessor for Argos_Protos_MLModel_SizeRange);
      if (v33)
      {
        sub_1D9B4FF70(v29, type metadata accessor for Argos_Protos_MLModel_SizeRange);
        goto LABEL_5;
      }
    }

    else
    {
      sub_1D9B4FF70(v32, type metadata accessor for Argos_Protos_MLModel_SizeRange);
    }

    v28 = v29;
LABEL_24:
    sub_1D9B4FF70(v28, type metadata accessor for Argos_Protos_MLModel_SizeRange);
    v30 = &qword_1ECB53658;
    v31 = &qword_1D9C96398;
    goto LABEL_25;
  }

  if (v21(&v18[v23], 1, v4) != 1)
  {
    goto LABEL_17;
  }

LABEL_5:
  sub_1D99A6AE0(v18, &qword_1ECB53658, &qword_1D9C96398);
  sub_1D9C7D3CC();
  sub_1D9B4F184(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v24 = sub_1D9C7DC2C();
  return v24 & 1;
}

void sub_1D9B50A78(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53650, &unk_1D9C96260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53810, &qword_1D9C97850);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = *(*a1 + 16);
  if (v17 != *(*a2 + 16))
  {
    return;
  }

  if (!v17 || v15 == v16)
  {
LABEL_7:
    v20 = a1[1];
    if (!v20)
    {
      return;
    }

    v21 = a2[1];
    if (!v21)
    {
      return;
    }

    if (*(a1 + 16) == 1)
    {
      v20 = qword_1D9C978B8[v20 - 1];
    }

    if (*(a2 + 16))
    {
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          if (v20 != 65600)
          {
            return;
          }
        }

        else if (v20 != 131104)
        {
          return;
        }
      }

      else if (v21 == 1)
      {
        if (v20 != 65552)
        {
          return;
        }
      }

      else if (v20 != 65568)
      {
        return;
      }
    }

    else if (v20 != v21)
    {
      return;
    }

    v22 = v12;
    v35 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType(0);
    v23 = *(v35 + 24);
    v24 = *(v22 + 48);
    sub_1D99AB100(a1 + v23, v14, &qword_1ECB53650, &unk_1D9C96260);
    v36 = v24;
    sub_1D99AB100(a2 + v23, &v14[v24], &qword_1ECB53650, &unk_1D9C96260);
    v25 = *(v5 + 48);
    if (v25(v14, 1, v4) == 1)
    {
      if (v25(&v14[v36], 1, v4) == 1)
      {
        sub_1D99A6AE0(v14, &qword_1ECB53650, &unk_1D9C96260);
        goto LABEL_32;
      }
    }

    else
    {
      sub_1D99AB100(v14, v10, &qword_1ECB53650, &unk_1D9C96260);
      v26 = v36;
      if (v25(&v14[v36], 1, v4) != 1)
      {
        sub_1D9B4FFD0(&v14[v26], v7, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
        v27 = sub_1D9B50F78(v10, v7);
        sub_1D9B4FF70(v7, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
        sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
        sub_1D99A6AE0(v14, &qword_1ECB53650, &unk_1D9C96260);
        if ((v27 & 1) == 0)
        {
          return;
        }

LABEL_32:
        v28 = *(v35 + 28);
        v29 = (a1 + v28);
        v30 = *(a1 + v28 + 8);
        v31 = (a2 + v28);
        v32 = *(v31 + 8);
        if (v30 == 255)
        {
          if (v32 != 255)
          {
            return;
          }
        }

        else
        {
          if (v32 == 255)
          {
            return;
          }

          v33 = *v29;
          v34 = *v31;
          if (v30)
          {
            if (v30 == 1)
            {
              if (v32 != 1 || *&v33 != *&v34)
              {
                return;
              }
            }

            else if (v32 != 2 || v33 != v34)
            {
              return;
            }
          }

          else if (v32 || LODWORD(v33) != LODWORD(v34))
          {
            return;
          }
        }

        sub_1D9C7D3CC();
        sub_1D9B4F184(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        sub_1D9C7DC2C();
        return;
      }

      sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
    }

    sub_1D99A6AE0(v14, &qword_1ECB53810, &qword_1D9C97850);
    return;
  }

  v18 = (v15 + 32);
  v19 = (v16 + 32);
  while (*v18 == *v19)
  {
    ++v18;
    ++v19;
    if (!--v17)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1D9B50F78(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange(0);
  MEMORY[0x1EEE9AC00](v29);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes(0);
  MEMORY[0x1EEE9AC00](v28);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v28 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53818, &qword_1D9C97858);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - v15;
  v18 = *(v17 + 56);
  sub_1D9B52018(a1, &v28 - v15, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
  sub_1D9B52018(a2, &v16[v18], type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9B52018(v16, v10, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D9B4FFD0(&v16[v18], v5, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange);
      if (sub_1D9A279D4(*v10, *v5))
      {
        sub_1D9C7D3CC();
        sub_1D9B4F184(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v19 = sub_1D9C7DC2C();
        sub_1D9B4FF70(v5, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange);
        if (v19)
        {
          v20 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange;
          v21 = v10;
LABEL_13:
          sub_1D9B4FF70(v21, v20);
          sub_1D9B4FF70(v16, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
          return 1;
        }
      }

      else
      {
        sub_1D9B4FF70(v5, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange);
      }

      v26 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange;
      v27 = v10;
LABEL_18:
      sub_1D9B4FF70(v27, v26);
      sub_1D9B4FF70(v16, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
      return 0;
    }

    v22 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.ShapeRange;
    v23 = v10;
  }

  else
  {
    sub_1D9B52018(v16, v13, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.OneOf_ShapeFlexibility);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D9B4FFD0(&v16[v18], v7, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes);
      if (sub_1D9A27770(*v13, *v7))
      {
        sub_1D9C7D3CC();
        sub_1D9B4F184(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v24 = sub_1D9C7DC2C();
        sub_1D9B4FF70(v7, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes);
        if (v24)
        {
          v20 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes;
          v21 = v13;
          goto LABEL_13;
        }
      }

      else
      {
        sub_1D9B4FF70(v7, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes);
      }

      v26 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes;
      v27 = v13;
      goto LABEL_18;
    }

    v22 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.EnumeratedShapes;
    v23 = v13;
  }

  sub_1D9B4FF70(v23, v22);
  sub_1D99A6AE0(v16, &qword_1ECB53818, &qword_1D9C97858);
  return 0;
}

uint64_t sub_1D9B51468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510A8, &unk_1D9C85830);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E70, &unk_1D9C97870);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1D99AB100(a1, &v21 - v12, &qword_1ECB510A8, &unk_1D9C85830);
  sub_1D99AB100(a2, &v13[v15], &qword_1ECB510A8, &unk_1D9C85830);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D99AB100(v13, v10, &qword_1ECB510A8, &unk_1D9C85830);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1D9B4FFD0(&v13[v15], v7, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
      v17 = sub_1D9B52080(v10, v7);
      sub_1D9B4FF70(v7, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
      sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
      sub_1D99A6AE0(v13, &qword_1ECB510A8, &unk_1D9C85830);
      if ((v17 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
LABEL_6:
    sub_1D99A6AE0(v13, &qword_1ECB51E70, &unk_1D9C97870);
    goto LABEL_9;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D99A6AE0(v13, &qword_1ECB510A8, &unk_1D9C85830);
LABEL_8:
  v18 = type metadata accessor for Argos_Protos_MLModel_FeatureType(0);
  if (*(a1 + *(v18 + 20)) == *(a2 + *(v18 + 20)))
  {
    sub_1D9C7D3CC();
    sub_1D9B4F184(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v19 = sub_1D9C7DC2C();
    return v19 & 1;
  }

LABEL_9:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1D9B517C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes(0);
  MEMORY[0x1EEE9AC00](v25);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v24 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB537D0, &qword_1D9C97830);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1D9B52018(a1, &v24 - v16, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
  sub_1D9B52018(a2, &v17[v19], type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D9B52018(v17, v14, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D9B4FFD0(&v17[v19], v8, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes);
      if (sub_1D9A27CD8(*v14, *v8))
      {
        sub_1D9C7D3CC();
        sub_1D9B4F184(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1D9C7DC2C())
        {
          sub_1D9B4FF70(v8, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes);
          sub_1D9B4FF70(v14, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes);
          sub_1D9B4FF70(v17, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
          v20 = 1;
          return v20 & 1;
        }
      }

      sub_1D9B4FF70(v8, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes);
      sub_1D9B4FF70(v14, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes);
      sub_1D9B4FF70(v17, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
LABEL_12:
      v20 = 0;
      return v20 & 1;
    }

    v21 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.EnumeratedImageSizes;
    v22 = v14;
LABEL_7:
    sub_1D9B4FF70(v22, v21);
    sub_1D99A6AE0(v17, &qword_1ECB537D0, &qword_1D9C97830);
    goto LABEL_12;
  }

  sub_1D9B52018(v17, v11, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange;
    v22 = v11;
    goto LABEL_7;
  }

  sub_1D9B4FFD0(&v17[v19], v6, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange);
  v20 = sub_1D9B503EC(v11, v6);
  sub_1D9B4FF70(v6, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange);
  sub_1D9B4FF70(v11, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.ImageSizeRange);
  sub_1D9B4FF70(v17, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
  return v20 & 1;
}

uint64_t sub_1D9B51C0C(void *a1, void *a2)
{
  v4 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E58, &qword_1D9C8A448);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E60, &qword_1D9C8A450);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_11;
  }

  v15 = v12;
  v23 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0);
  v16 = *(v23 + 24);
  v17 = *(v15 + 48);
  sub_1D99AB100(a1 + v16, v14, &qword_1ECB51E58, &qword_1D9C8A448);
  v24 = v17;
  sub_1D99AB100(a2 + v16, &v14[v17], &qword_1ECB51E58, &qword_1D9C8A448);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v24], 1, v4) == 1)
    {
      sub_1D99A6AE0(v14, &qword_1ECB51E58, &qword_1D9C8A448);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_1D99AB100(v14, v10, &qword_1ECB51E58, &qword_1D9C8A448);
  v19 = v24;
  if (v18(&v14[v24], 1, v4) == 1)
  {
    sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
LABEL_7:
    sub_1D99A6AE0(v14, &qword_1ECB51E60, &qword_1D9C8A450);
LABEL_11:
    v21 = 0;
    return v21 & 1;
  }

  sub_1D9B4FFD0(&v14[v19], v7, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
  v20 = sub_1D9B517C4(v10, v7);
  sub_1D9B4FF70(v7, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
  sub_1D9B4FF70(v10, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
  sub_1D99A6AE0(v14, &qword_1ECB51E58, &qword_1D9C8A448);
  if ((v20 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!sub_1D9A4E934(*(a1 + *(v23 + 28)), *(a1 + *(v23 + 28) + 8), *(a2 + *(v23 + 28)), *(a2 + *(v23 + 28) + 8)))
  {
    goto LABEL_11;
  }

  sub_1D9C7D3CC();
  sub_1D9B4F184(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v21 = sub_1D9C7DC2C();
  return v21 & 1;
}

unint64_t sub_1D9B51FC4()
{
  result = qword_1EDD30638;
  if (!qword_1EDD30638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD30638);
  }

  return result;
}

uint64_t sub_1D9B52018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B52080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v28 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E68, &qword_1D9C8A458);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  v20 = *(v19 + 56);
  sub_1D9B52018(a1, &v28 - v17, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
  sub_1D9B52018(a2, &v18[v20], type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9B52018(v18, v12, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D9B4FFD0(&v18[v20], v6, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType);
      sub_1D9B50A78(v12, v6);
      v22 = v21;
      sub_1D9B4FF70(v6, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType);
      v23 = v12;
      v24 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType;
LABEL_9:
      sub_1D9B4FF70(v23, v24);
      sub_1D9B4FF70(v18, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
      return v22 & 1;
    }

    v25 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType;
    v26 = v12;
  }

  else
  {
    sub_1D9B52018(v18, v15, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D9B4FFD0(&v18[v20], v9, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
      v22 = sub_1D9B51C0C(v15, v9);
      sub_1D9B4FF70(v9, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
      v23 = v15;
      v24 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType;
      goto LABEL_9;
    }

    v25 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType;
    v26 = v15;
  }

  sub_1D9B4FF70(v26, v25);
  sub_1D99A6AE0(v18, &qword_1ECB51E68, &qword_1D9C8A458);
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1D9B523EC(uint64_t result)
{
  if (result > 19)
  {
    if (result == 20)
    {
      return 2;
    }

    else if (result == 30)
    {
      return 3;
    }
  }

  else if (result == 10)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1D9B52450(uint64_t result)
{
  if (result <= 65567)
  {
    if (result == 65552)
    {
      return 1;
    }
  }

  else
  {
    switch(result)
    {
      case 65568:
        return 2;
      case 65600:
        return 3;
      case 131104:
        return 4;
    }
  }

  return result;
}

id sub_1D9B52504(char a1, uint64_t a2, CGFloat a3)
{
  if ((a1 & 1) == 0)
  {
    v9 = sub_1D9C7DC4C();
    v6 = [objc_opt_self() filterWithName_];

    if (v6)
    {
      CGAffineTransformMakeScale(&v16, a3, a3);
      v10 = sub_1D9C7E0CC();
      [v6 setValue:v10 forKey:*MEMORY[0x1E695FB38]];

      [v6 setValue:a2 forKey:*MEMORY[0x1E695FAB0]];
      return v6;
    }

    v11 = "CIAffineTransform";
    v12 = 0xD000000000000024;
LABEL_8:
    v13 = v11 | 0x8000000000000000;
    sub_1D9B52BFC();
    swift_allocError();
    *v14 = v12;
    v14[1] = v13;
    swift_willThrow();
    return v6;
  }

  v5 = sub_1D9C7DC4C();
  v6 = [objc_opt_self() filterWithName_];

  if (!v6)
  {
    v11 = "CILanczosScaleTransform";
    v12 = 0xD000000000000030;
    goto LABEL_8;
  }

  [v6 setValue:a2 forKey:*MEMORY[0x1E695FAB0]];
  v7 = sub_1D9C7D1CC();
  [v6 setValue:v7 forKey:*MEMORY[0x1E695FB20]];

  v8 = sub_1D9C7E06C();
  [v6 setValue:v8 forKey:*MEMORY[0x1E695FA40]];

  return v6;
}

void sub_1D9B5272C(void *a1, char a2)
{
  swift_getObjectType();
  v5 = [a1 pixelBuffer];
  if (v5)
  {
    v6 = v5;
    sub_1D9AF6CF8(v23);
    v7 = v24;
    v8 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v9 = (*(v8 + 16))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    v12 = sqrt(3100000.0 / (v9 * v11));
    v13 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
    v14 = v13;
    if (v12 >= 0.9)
    {
      v17 = v13;
    }

    else
    {
      v15 = sub_1D9B52504(a2 & 1, v13, v12);
      if (v2)
      {
LABEL_4:

        return;
      }

      v20 = v15;
      v21 = [v15 outputImage];
      if (!v21)
      {
        sub_1D9B52BFC();
        swift_allocError();
        *v22 = 0xD000000000000015;
        v22[1] = 0x80000001D9CAAC00;
        swift_willThrow();

        goto LABEL_4;
      }

      v17 = v21;
      v9 = v9 * v12;
      v11 = v11 * v12;
    }

    v18 = [v17 imageByClampingToExtent];
    v19 = [v18 imageByCroppingToRect_];

    [v19 imageByApplyingCGOrientation_];
  }

  else
  {
    sub_1D9B52BFC();
    swift_allocError();
    *v16 = 0xD00000000000002CLL;
    v16[1] = 0x80000001D9CAABD0;
    swift_willThrow();
  }
}

uint64_t sub_1D9B529CC(uint64_t a1)
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53868, &unk_1D9C978E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9C85660;
    sub_1D9C7DC7C();
    v6 = sub_1D9C7DC4C();

    *(inited + 32) = v6;
    *(inited + 64) = MEMORY[0x1E69E63B0];
    *(inited + 40) = 0x3FEB333333333333;
    sub_1D9A4742C(inited);
    swift_setDeallocating();
    sub_1D9B52C50(inited + 32);
    type metadata accessor for CIImageRepresentationOption(0);
    sub_1D9B52CB8();
    v7 = sub_1D9C7DB3C();

    v8 = [v4 JPEGRepresentationOfImage:a1 colorSpace:v3 options:v7];

    if (v8)
    {
      a1 = sub_1D9C7B87C();
    }

    else
    {
      a1 = 0x80000001D9CAABB0;
      sub_1D9B52BFC();
      swift_allocError();
      *v10 = 0xD000000000000016;
      v10[1] = 0x80000001D9CAABB0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D9B52BFC();
    swift_allocError();
    *v9 = 0xD000000000000021;
    v9[1] = 0x80000001D9CAAB80;
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_1D9B52BFC()
{
  result = qword_1ECB53860;
  if (!qword_1ECB53860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53860);
  }

  return result;
}

uint64_t sub_1D9B52C50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52200, &qword_1D9C8BA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9B52CB8()
{
  result = qword_1ECB50F88;
  if (!qword_1ECB50F88)
  {
    type metadata accessor for CIImageRepresentationOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB50F88);
  }

  return result;
}

void sub_1D9B52D20(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet(0) - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v50 = *(*v3 + 16);
  if (!v50)
  {
    return;
  }

  v44 = v6;
  v45 = v9;
  v43 = v7;
  v15 = 0;
  v47 = *a1;
  v16 = *(v11 + 80);
  v48 = v11;
  v49 = v14 + ((v16 + 32) & ~v16);
  v17 = a3 + 56;
  v18 = v11;
  while (1)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    sub_1D9B53198(v49 + *(v18 + 72) * v15, v13);
    if (*(a3 + 16))
    {
      v19 = *(v13 + 1);
      v20 = v13[16];
      v51[9] = v19;
      v52 = v20;
      sub_1D9C7E8DC();
      sub_1D9A7EA10();
      sub_1D9C7DBDC();
      v21 = sub_1D9C7E93C();
      v22 = -1 << *(a3 + 32);
      v23 = v21 & ~v22;
      if ((*(v17 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        v24 = ~v22;
        while (1)
        {
          v25 = *(a3 + 48) + 16 * v23;
          if (*(v25 + 8))
          {
            v26 = *v25 != 0;
          }

          else
          {
            v26 = *v25;
          }

          if (!v20)
          {
            if (v26 == v19)
            {
              goto LABEL_19;
            }

            goto LABEL_10;
          }

          if (!v19)
          {
            break;
          }

          if (v26 == 1)
          {
            goto LABEL_19;
          }

LABEL_10:
          v23 = (v23 + 1) & v24;
          if (((*(v17 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        if (v26)
        {
          goto LABEL_10;
        }

LABEL_19:
        v27 = *v13;
        v51[0] = sub_1D9A15C94(v47);
        v51[1] = v28;
        MEMORY[0x1EEE9AC00](v51[0]);
        *(&v42 - 2) = v51;
        v29 = sub_1D9BC1698(sub_1D99A40D8, (&v42 - 4), v27);

        if ((v29 & 1) == 0)
        {
          v18 = v48;
          goto LABEL_4;
        }

        MEMORY[0x1EEE9AC00](v30);
        *(&v42 - 2) = v46;
        *(&v42 - 1) = v13;
        v31 = sub_1D9B09188(sub_1D9B53A04, (&v42 - 4), v27);
        v18 = v48;
        if (v32)
        {
          break;
        }
      }
    }

LABEL_4:
    ++v15;
    sub_1D9B531FC(v13);
    if (v15 == v50)
    {
      return;
    }
  }

  v33 = v31;
  v34 = v32;
  v35 = v45;
  static Logger.argos.getter(v45);

  v36 = sub_1D9C7D8BC();
  v37 = sub_1D9C7E09C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v51[0] = v39;
    *v38 = 136315138;
    v40 = sub_1D9A0E224(v33, v34, v51);

    *(v38 + 4) = v40;
    _os_log_impl(&dword_1D9962000, v36, v37, "Incompatible domain %s", v38, 0xCu);
    v41 = __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x1DA7405F0](v39, -1, -1, v41);
    MEMORY[0x1DA7405F0](v38, -1, -1);
  }

  else
  {
  }

  (*(v43 + 8))(v35, v44);
  sub_1D9B531FC(v13);
}

uint64_t sub_1D9B53198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B531FC(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1D9B53258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 4);
  if (sub_1D9A15C94(*a1) == a2 && v7 == a3)
  {

    return *(a4 + 20) < v6;
  }

  v9 = sub_1D9C7E7DC();

  result = 0;
  if (v9)
  {
    return *(a4 + 20) < v6;
  }

  return result;
}

void sub_1D9B532F8(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (2)
  {
    if (v7)
    {
LABEL_10:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = 0xE300000000000000;
      v14 = 7631457;
      switch(*(*(a2 + 48) + ((v9 << 9) | (8 * v12))))
      {
        case 1:
          v13 = 0xE600000000000000;
          v14 = 0x65727574616ELL;
          break;
        case 2:
          v13 = 0xE800000000000000;
          v14 = 0x6B72616D646E616CLL;
          break;
        case 3:
          v14 = 0x4C6C61727574616ELL;
          v13 = 0xEF6B72616D646E61;
          break;
        case 4:
          v13 = 0xE500000000000000;
          v14 = 0x616964656DLL;
          break;
        case 5:
          v13 = 0xE400000000000000;
          v14 = 1802465122;
          break;
        case 6:
          v13 = 0xE500000000000000;
          v14 = 0x6D75626C61;
          break;
        case 7:
          v13 = 0xE400000000000000;
          v14 = 1937006947;
          break;
        case 8:
          v13 = 0xE400000000000000;
          v14 = 1936158564;
          break;
        case 9:
          v13 = 0xE700000000000000;
          v15 = 1835626081;
          goto LABEL_29;
        case 0xA:
          v13 = 0xE500000000000000;
          v14 = 0x7364726962;
          break;
        case 0xB:
          v13 = 0xE700000000000000;
          v14 = 0x73746365736E69;
          break;
        case 0xC:
          v13 = 0xE800000000000000;
          v14 = 0x73656C6974706572;
          break;
        case 0xD:
          v13 = 0xE700000000000000;
          v15 = 1835884909;
LABEL_29:
          v14 = v15 | 0x736C6100000000;
          break;
        case 0xE:
          v14 = 0xD000000000000010;
          v13 = 0x80000001D9CA2910;
          break;
        case 0xF:
          v13 = 0xE700000000000000;
          v14 = 0x6C657261707061;
          break;
        case 0x10:
          v14 = 0x726F737365636361;
          v13 = 0xEB00000000736569;
          break;
        case 0x11:
          v13 = 0xE400000000000000;
          v14 = 1685024614;
          break;
        case 0x12:
          v14 = 0x6F726665726F7473;
          v13 = 0xEA0000000000746ELL;
          break;
        case 0x13:
          v16 = 1852270963;
          goto LABEL_36;
        case 0x14:
          v14 = 0xD000000000000011;
          v13 = 0x80000001D9CA2950;
          break;
        case 0x15:
          v16 = 1869903201;
LABEL_36:
          v14 = v16 | 0x626D795300000000;
          v13 = 0xEA00000000006C6FLL;
          break;
        case 0x16:
          v14 = 0x676F4C646E617262;
          v13 = 0xEF6C6F626D79536FLL;
          break;
        case 0x17:
          v13 = 0xE700000000000000;
          v14 = 0x65646F63726162;
          break;
        case 0x18:
          v14 = 0x727574706C756373;
          v13 = 0xE900000000000065;
          break;
        case 0x19:
          v13 = 0xE700000000000000;
          v14 = 0x656E696C796B73;
          break;
        case 0x1A:
          v13 = 0xE800000000000000;
          v14 = 0x44327463656A626FLL;
          break;
        default:
          break;
      }

      v17 = 0xE300000000000000;
      v18 = 7631457;
      switch(v3)
      {
        case 1:
          v17 = 0xE600000000000000;
          if (v14 == 0x65727574616ELL)
          {
            goto LABEL_90;
          }

          goto LABEL_4;
        case 2:
          v17 = 0xE800000000000000;
          if (v14 != 0x6B72616D646E616CLL)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 3:
          v17 = 0xEF6B72616D646E61;
          if (v14 != 0x4C6C61727574616ELL)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 4:
          v17 = 0xE500000000000000;
          if (v14 != 0x616964656DLL)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 5:
          v17 = 0xE400000000000000;
          if (v14 != 1802465122)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 6:
          v17 = 0xE500000000000000;
          if (v14 != 0x6D75626C61)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 7:
          v17 = 0xE400000000000000;
          if (v14 != 1937006947)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 8:
          v17 = 0xE400000000000000;
          if (v14 != 1936158564)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 9:
          v17 = 0xE700000000000000;
          v20 = 1835626081;
          goto LABEL_72;
        case 10:
          v17 = 0xE500000000000000;
          if (v14 != 0x7364726962)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 11:
          v17 = 0xE700000000000000;
          v19 = 0x746365736E69;
          goto LABEL_73;
        case 12:
          v17 = 0xE800000000000000;
          if (v14 != 0x73656C6974706572)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 13:
          v17 = 0xE700000000000000;
          v20 = 1835884909;
LABEL_72:
          v19 = v20 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_73:
          if (v14 != (v19 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 14:
          v17 = 0x80000001D9CA2910;
          if (v14 != 0xD000000000000010)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 15:
          v17 = 0xE700000000000000;
          if (v14 != 0x6C657261707061)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 16:
          v17 = 0xEB00000000736569;
          if (v14 != 0x726F737365636361)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 17:
          v17 = 0xE400000000000000;
          if (v14 != 1685024614)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 18:
          v17 = 0xEA0000000000746ELL;
          if (v14 != 0x6F726665726F7473)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 19:
          v21 = 1852270963;
          goto LABEL_86;
        case 20:
          v17 = 0x80000001D9CA2950;
          if (v14 != 0xD000000000000011)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 21:
          v21 = 1869903201;
LABEL_86:
          v17 = 0xEA00000000006C6FLL;
          if (v14 != (v21 | 0x626D795300000000))
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 22:
          v17 = 0xEF6C6F626D79536FLL;
          if (v14 != 0x676F4C646E617262)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 23:
          v17 = 0xE700000000000000;
          v18 = 0x65646F63726162;
          goto LABEL_89;
        case 24:
          v17 = 0xE900000000000065;
          if (v14 != 0x727574706C756373)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 25:
          v17 = 0xE700000000000000;
          if (v14 != 0x656E696C796B73)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        case 26:
          v17 = 0xE800000000000000;
          if (v14 != 0x44327463656A626FLL)
          {
            goto LABEL_4;
          }

          goto LABEL_90;
        default:
LABEL_89:
          if (v14 != v18)
          {
            goto LABEL_4;
          }

LABEL_90:
          if (v13 == v17)
          {

            return;
          }

LABEL_4:
          v10 = sub_1D9C7E7DC();

          if ((v10 & 1) == 0)
          {
            continue;
          }

LABEL_94:

          break;
      }
    }

    else
    {
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v11 >= v8)
        {
          goto LABEL_94;
        }

        v7 = *(v4 + 8 * v11);
        ++v9;
        if (v7)
        {
          v9 = v11;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    break;
  }
}

uint64_t sub_1D9B53A04(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v7[2] = *a1;
  v7[3] = v4;
  v7[4] = v3;
  sub_1D9BC1ABC(sub_1D9B53A50, v7, v2);
  return v5 & 1;
}

void sub_1D9B53A74(void *a1)
{
  v2 = *(type metadata accessor for VisualUnderstanding.ImageRegion(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E9140(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D9B53D60(v5);
  *a1 = v3;
}

uint64_t sub_1D9B53B1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = *(a1 + *(type metadata accessor for MLModelInfo(0) + 36));
  if (*(v9 + 16) && (v10 = sub_1D99EE004(1), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = sub_1D9C7B80C();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v8, v13 + *(v15 + 72) * v12, v14);
    (*(v15 + 56))(v8, 0, 1, v14);
  }

  else
  {
    v16 = sub_1D9C7B80C();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  }

  type metadata accessor for FileMapper();
  swift_allocObject();
  v17 = sub_1D9B1E230(v8);
  sub_1D9B55B98(a1, type metadata accessor for MLModelInfo);
  *(v3 + 16) = v17;
  *(v3 + 24) = a2;
  return v3;
}

uint64_t sub_1D9B53D04()
{

  return swift_deallocClassInstance();
}

void sub_1D9B53D60(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D9C7E79C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for VisualUnderstanding.ImageRegion(0);
        v6 = sub_1D9C7DF5C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for VisualUnderstanding.ImageRegion(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D9B540D8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D9B53E8C(0, v2, 1, a1);
  }
}

void sub_1D9B53E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1D99CC070(v22, v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D99CC070(v19, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v23 = v16[19];
      v24 = v12[19];
      sub_1D9B55B98(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B55B98(v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v24 >= v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_1D99CC158(v22, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D99CC158(v9, v19, type metadata accessor for VisualUnderstanding.ImageRegion);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D9B540D8(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v116 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v112 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v106 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v100 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v100 - v16);
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_1D99E8FDC(a4);
    }

    v117 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_1D9B54A04(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1D99E8FDC(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v117 = v97;
        sub_1D99E8F50(a4 - 1);
        v95 = v117;
        a4 = *(v117 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v107 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = v21;
      v24 = *v114;
      v25 = *(v112 + 72);
      v5 = *v114 + v25 * v22;
      sub_1D99CC070(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D99CC070(v24 + v25 * v23, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      v26 = v17[19];
      v27 = v14[19];
      sub_1D9B55B98(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B55B98(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      v102 = v23;
      v28 = v23 + 2;
      v113 = v25;
      v29 = v24 + v25 * v28;
      while (v18 != v28)
      {
        sub_1D99CC070(v29, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D99CC070(v5, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        v30 = v17[19];
        v31 = v14[19];
        sub_1D9B55B98(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B55B98(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        ++v28;
        v29 += v113;
        v5 += v113;
        if (v27 < v26 == v31 >= v30)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v27 < v26)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18 * v113;
          v111 = v18;
          v34 = v18;
          v35 = v102;
          v36 = v102 * v113;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v37 + v36;
              sub_1D99CC158(v37 + v36, v106, type metadata accessor for VisualUnderstanding.ImageRegion);
              if (v36 < v32 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D99CC158(v106, v37 + v32, type metadata accessor for VisualUnderstanding.ImageRegion);
            }

            ++v35;
            v32 -= v113;
            v33 -= v113;
            v36 += v113;
          }

          while (v35 < v34);
          v6 = v101;
          v21 = v102;
          a4 = v103;
          v18 = v111;
        }
      }
    }

    v38 = v114[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v38)
        {
          v39 = v114[1];
        }

        else
        {
          v39 = v21 + a4;
        }

        if (v39 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v39)
        {
          break;
        }
      }
    }

    v40 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v107;
    }

    else
    {
      v20 = sub_1D99E8FF0(0, *(v107 + 2) + 1, 1, v107);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_1D99E8FF0((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v40;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    v108 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_1D9B54A04(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1D99E8FDC(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v117 = v82;
        sub_1D99E8F50(v44);
        v20 = v117;
        v5 = *(v117 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    v19 = v108;
    a4 = v103;
    if (v108 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = *v114;
  v86 = *(v112 + 72);
  v87 = *v114 + v86 * (v18 - 1);
  v88 = v21;
  v89 = -v86;
  v102 = v88;
  v90 = v88 - v18;
  v105 = v86;
  v5 = v85 + v18 * v86;
  v108 = v39;
LABEL_85:
  v110 = v90;
  v111 = v18;
  v109 = v5;
  v113 = v87;
  v91 = v87;
  while (1)
  {
    sub_1D99CC070(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D99CC070(v91, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    v92 = v17[19];
    v93 = v14[19];
    sub_1D9B55B98(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B55B98(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v93 >= v92)
    {
LABEL_84:
      v18 = v111 + 1;
      v87 = v113 + v105;
      v90 = v110 - 1;
      v40 = v108;
      v5 = v109 + v105;
      if (v111 + 1 != v108)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v108 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v85)
    {
      break;
    }

    a4 = v115;
    sub_1D99CC158(v5, v115, type metadata accessor for VisualUnderstanding.ImageRegion);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D99CC158(a4, v91, type metadata accessor for VisualUnderstanding.ImageRegion);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1D9B54A04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v43 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  MEMORY[0x1EEE9AC00](v43);
  v44 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v39 - v10);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39[1] = v4;
    v23 = a4 + v17;
    if (v17 < 1)
    {
      v26 = a4 + v17;
    }

    else
    {
      v24 = -v13;
      v25 = a4 + v17;
      v26 = v23;
      v41 = v24;
      v42 = a4;
      do
      {
        v39[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v45;
          if (v27 <= a1)
          {
            v48 = v27;
            v46 = v39[0];
            goto LABEL_59;
          }

          v40 = v26;
          v45 += v24;
          v31 = v25 + v24;
          sub_1D99CC070(v31, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
          v32 = v28;
          v33 = v28;
          v34 = v11;
          v35 = v44;
          sub_1D99CC070(v33, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
          v36 = *(v34 + 76);
          v37 = *(v35 + 76);
          v38 = v35;
          v11 = v34;
          sub_1D9B55B98(v38, type metadata accessor for VisualUnderstanding.ImageRegion);
          sub_1D9B55B98(v34, type metadata accessor for VisualUnderstanding.ImageRegion);
          if (v37 < v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v45 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v42;
          v24 = v41;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v45 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v40;
          v24 = v41;
        }

        else
        {
          v26 = v40;
          v24 = v41;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v42);
    }

LABEL_58:
    v48 = a2;
    v46 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < v45)
    {
      do
      {
        sub_1D99CC070(a2, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        v20 = v44;
        sub_1D99CC070(a4, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
        v21 = v11[19];
        v22 = *(v20 + 76);
        sub_1D9B55B98(v20, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B55B98(v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        if (v22 >= v21)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v18 && a2 < v45);
    }
  }

LABEL_59:
  sub_1D9B015E8(&v48, &v47, &v46);
}

void sub_1D9B54EFC(unint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v107 = a4;
  v122 = a3;
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s14DetectedResultVMa(0);
  v123 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v96 - v14;
  v16 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v110 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v101 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v102 = &v96 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v96 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v96 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v108 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v96 - v30;
  v130 = a2;
  v103 = a2;

  sub_1D9B53A74(&v130);
  v32 = v130;
  if (*(a1 + 16) && (v33 = sub_1D99ED894(0x74757074756FLL, 0xE600000000000000), (v34 & 1) != 0))
  {
    v35 = *(*(a1 + 56) + 8 * v33);
    v104 = v32[2];
    v97 = v35;
    if (v104)
    {
      v36 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v106 = v32;
      v98 = v36;
      v105 = v32 + v36;
      v129 = v35;
      v37 = 0;
      v38 = 0;
      v113 = (v122 + 40);
      v39 = MEMORY[0x1E69E7CC0];
      v128 = xmmword_1D9C85EB0;
      v112 = MEMORY[0x1E69E7CC0];
      v114 = v31;
      v115 = v28;
      v116 = v15;
      v117 = v12;
      while (1)
      {
        if (v38 >= v106[2])
        {
          goto LABEL_66;
        }

        v42 = *(v110 + 72);
        v111 = v38;
        v109 = v42;
        sub_1D99CC070(&v105[v42 * v38], v31, type metadata accessor for VisualUnderstanding.ImageRegion);
        if (v31[104] == 1)
        {
          v40 = v31;
        }

        else
        {
          v121 = v107 - v37;
          if (v107 == v37)
          {
LABEL_53:
            sub_1D9B55B98(v31, type metadata accessor for VisualUnderstanding.ImageRegion);
LABEL_54:

            goto LABEL_55;
          }

          sub_1D99CC070(v31, v28, type metadata accessor for VisualUnderstanding.ImageRegion);

          *(v28 + 7) = v39;
          v43 = *(v31 + 7);
          v120 = *(v43 + 16);
          if (v120)
          {
            v44 = 0;
            v118 = v43;
            v119 = v37 ^ 0x7FFFFFFFFFFFFFFFLL;
            v127 = v39;
            while (v44 < *(v43 + 16))
            {
              v45 = (*(v123 + 80) + 32) & ~*(v123 + 80);
              v46 = *(v123 + 72);
              sub_1D99CC070(v43 + v45 + v46 * v44, v15, _s14DetectedResultVMa);
              if (v44 == v121)
              {
                sub_1D9B55B98(v15, _s14DetectedResultVMa);
                v37 = v107;
                goto LABEL_41;
              }

              v124 = v46;
              v126 = v44;
              v47 = sub_1D9A441B8(v39);
              v48 = *(v122 + 16);
              v125 = v45;
              if (v48)
              {
                v49 = 0;
                v50 = v113;
                do
                {
                  v51 = *(v50 - 1);
                  v31 = *v50;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8, &qword_1D9C94280);
                  v52 = swift_allocObject();
                  *(v52 + 16) = v128;

                  *(v52 + 32) = sub_1D9C7E06C();
                  *(v52 + 40) = sub_1D9C7E06C();
                  *(v52 + 48) = sub_1D9C7E06C();
                  sub_1D99CC024();
                  v53 = sub_1D9C7DF1C();

                  v54 = [v129 objectForKeyedSubscript_];

                  [v54 floatValue];
                  v56 = v55;

                  v57 = expf(v56);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v130 = v47;
                  v60 = sub_1D99ED894(v51, v31);
                  v61 = v47[2];
                  v62 = (v59 & 1) == 0;
                  v63 = v61 + v62;
                  if (__OFADD__(v61, v62))
                  {
                    __break(1u);
LABEL_52:
                    __break(1u);
                    goto LABEL_53;
                  }

                  v64 = v59;
                  if (v47[3] >= v63)
                  {
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      if (v59)
                      {
                        goto LABEL_16;
                      }
                    }

                    else
                    {
                      sub_1D9C13E54();
                      if (v64)
                      {
                        goto LABEL_16;
                      }
                    }
                  }

                  else
                  {
                    sub_1D9C09080(v63, isUniquelyReferenced_nonNull_native);
                    v65 = sub_1D99ED894(v51, v31);
                    if ((v64 & 1) != (v66 & 1))
                    {
                      sub_1D9C7E84C();
                      __break(1u);

                      __break(1u);
                      return;
                    }

                    v60 = v65;
                    if (v64)
                    {
LABEL_16:

                      v47 = v130;
                      *(v130[7] + 4 * v60) = v57;
                      goto LABEL_17;
                    }
                  }

                  v47 = v130;
                  v130[(v60 >> 6) + 8] |= 1 << v60;
                  v67 = (v47[6] + 16 * v60);
                  *v67 = v51;
                  v67[1] = v31;
                  *(v47[7] + 4 * v60) = v57;
                  v68 = v47[2];
                  v69 = __OFADD__(v68, 1);
                  v70 = v68 + 1;
                  if (v69)
                  {
                    goto LABEL_52;
                  }

                  v47[2] = v70;
LABEL_17:
                  ++v49;
                  v50 += 2;
                }

                while (v48 != v49);
              }

              v28 = v115;
              v15 = v116;
              v71 = *v116;
              v72 = *(v115 + 8);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v72 = sub_1D9AF8E00(0, *(v72 + 2) + 1, 1, v72);
              }

              v73 = v117;
              v74 = v126;
              v76 = *(v72 + 2);
              v75 = *(v72 + 3);
              if (v76 >= v75 >> 1)
              {
                v72 = sub_1D9AF8E00((v75 > 1), v76 + 1, 1, v72);
              }

              *(v72 + 2) = v76 + 1;
              v77 = &v72[16 * v76];
              *(v77 + 4) = v71;
              *(v77 + 5) = v47;
              *(v28 + 8) = v72;
              sub_1D99CC070(v15, v73, _s14DetectedResultVMa);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v127 = sub_1D9AF9018(0, v127[2] + 1, 1, v127);
              }

              v31 = v114;
              v39 = MEMORY[0x1E69E7CC0];
              a1 = v127[2];
              v78 = v127[3];
              if (a1 >= v78 >> 1)
              {
                v127 = sub_1D9AF9018((v78 > 1), a1 + 1, 1, v127);
              }

              sub_1D9B55B98(v15, _s14DetectedResultVMa);
              v79 = v127;
              v127[2] = a1 + 1;
              sub_1D99CC158(v73, v79 + v125 + a1 * v124, _s14DetectedResultVMa);
              *(v28 + 7) = v79;
              if (v74 == v119)
              {
                goto LABEL_65;
              }

              v44 = v74 + 1;
              ++v37;
              v43 = v118;
              if (v44 == v120)
              {
                goto LABEL_41;
              }
            }

            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

LABEL_41:
          sub_1D99CC070(v28, v108, type metadata accessor for VisualUnderstanding.ImageRegion);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v80 = v112;
          }

          else
          {
            v80 = sub_1D9AF8A90(0, v112[2] + 1, 1, v112);
          }

          v112 = v80;
          a1 = v80[2];
          v81 = v80[3];
          if (a1 >= v81 >> 1)
          {
            v112 = sub_1D9AF8A90((v81 > 1), a1 + 1, 1, v112);
          }

          sub_1D9B55B98(v31, type metadata accessor for VisualUnderstanding.ImageRegion);
          v82 = v112;
          v112[2] = a1 + 1;
          sub_1D99CC158(v108, v82 + v98 + a1 * v109, type metadata accessor for VisualUnderstanding.ImageRegion);
          v40 = v28;
        }

        v41 = v111 + 1;
        sub_1D9B55B98(v40, type metadata accessor for VisualUnderstanding.ImageRegion);
        v38 = v41;
        if (v41 == v104)
        {
          goto LABEL_54;
        }
      }
    }

    v86 = v35;

    v112 = MEMORY[0x1E69E7CC0];
LABEL_55:
    v87 = v103[2];
    v88 = v102;
    if (!v87)
    {
LABEL_59:

      return;
    }

    a1 = (*(v110 + 80) + 32) & ~*(v110 + 80);
    v37 = *(v110 + 72);
    v89 = v103 + a1;
    while (1)
    {
      sub_1D99CC070(v89, v88, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (*(v88 + 104))
      {
        break;
      }

      sub_1D9B55B98(v88, type metadata accessor for VisualUnderstanding.ImageRegion);
      v89 += v37;
      if (!--v87)
      {
        goto LABEL_59;
      }
    }

    v90 = v99;
    sub_1D99CC158(v88, v99, type metadata accessor for VisualUnderstanding.ImageRegion);
    v91 = v90;
    v92 = v100;
    sub_1D99CC158(v91, v100, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D99CC070(v92, v101, type metadata accessor for VisualUnderstanding.ImageRegion);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_67:
      v112 = sub_1D9AF8A90(0, v112[2] + 1, 1, v112);
    }

    v94 = v112[2];
    v93 = v112[3];
    if (v94 >= v93 >> 1)
    {
      v112 = sub_1D9AF8A90((v93 > 1), v94 + 1, 1, v112);
    }

    sub_1D9B55B98(v100, type metadata accessor for VisualUnderstanding.ImageRegion);
    v95 = v112;
    v112[2] = v94 + 1;
    sub_1D99CC158(v101, v95 + a1 + v94 * v37, type metadata accessor for VisualUnderstanding.ImageRegion);
  }

  else
  {

    static Logger.argos.getter(v9);
    v83 = sub_1D9C7D8BC();
    v84 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_1D9962000, v83, v84, "failed to get model output", v85, 2u);
      MEMORY[0x1DA7405F0](v85, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1D9B55B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1D9B55BF8()
{
  if (*v0 >> 62)
  {
    v1 = sub_1D9C7E50C();
  }

  else
  {
    v1 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t sub_1D9B55C48()
{
  v1 = 0x676F6C6F626D7973;
  v2 = 0x6E656469666E6F63;
  if (*v0 != 2)
  {
    v2 = 0x676E69646E756F62;
  }

  if (*v0)
  {
    v1 = 0x65756C6176;
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

uint64_t sub_1D9B55CD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9B56F1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9B55CF8(uint64_t a1)
{
  v2 = sub_1D9B56C8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9B55D34(uint64_t a1)
{
  v2 = sub_1D9B56C8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectedBarcode.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53870, &qword_1D9C979B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v15 = *(v1 + 16);
  v16 = v8;
  v10 = *(v1 + 32);
  v13 = *(v1 + 48);
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B56C8C();
  v11 = v9;
  sub_1D9C7E96C();
  *&v17 = v11;
  v19 = 0;
  type metadata accessor for VNBarcodeSymbology(0);
  sub_1D9B57928(&qword_1ECB53880, &protocol conformance descriptor for VNBarcodeSymbology);
  sub_1D9C7E74C();

  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_1D9C7E6EC();
    LOBYTE(v17) = 2;
    sub_1D9C7E71C();
    v18 = v13;
    v17 = v14;
    v19 = 3;
    sub_1D99EA188();
    sub_1D9C7E74C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DetectedBarcode.hash(into:)(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  sub_1D9C7DC7C();
  sub_1D9C7DD6C();

  sub_1D9C7DD6C();
  sub_1D9C7E91C();
  v11.origin.x = v2;
  v11.origin.y = v3;
  v11.size.width = v4;
  v11.size.height = v5;
  MinX = CGRectGetMinX(v11);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v12.origin.x = v2;
  v12.origin.y = v3;
  v12.size.width = v4;
  v12.size.height = v5;
  MaxX = CGRectGetMaxX(v12);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v13.origin.x = v2;
  v13.origin.y = v3;
  v13.size.width = v4;
  v13.size.height = v5;
  MinY = CGRectGetMinY(v13);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v14.origin.x = v2;
  v14.origin.y = v3;
  v14.size.width = v4;
  v14.size.height = v5;
  MaxY = CGRectGetMaxY(v14);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  return MEMORY[0x1DA73EB00](*&MaxY);
}

uint64_t DetectedBarcode.hashValue.getter()
{
  sub_1D9C7E8DC();
  DetectedBarcode.hash(into:)(v1);
  return sub_1D9C7E93C();
}

void DetectedBarcode.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53888, &qword_1D9C979B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B56C8C();
  sub_1D9C7E95C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    type metadata accessor for VNBarcodeSymbology(0);
    LOBYTE(v22) = 0;
    sub_1D9B57928(&qword_1ECB53890, &protocol conformance descriptor for VNBarcodeSymbology);
    sub_1D9C7E65C();
    v9 = v26[0];
    LOBYTE(v26[0]) = 1;
    v10 = sub_1D9C7E5FC();
    v12 = v11;
    v21 = v10;
    LOBYTE(v26[0]) = 2;
    sub_1D9C7E62C();
    v14 = v13;
    v30 = 3;
    sub_1D99EA7B8();
    sub_1D9C7E65C();
    (*(v6 + 8))(v8, v5);
    v15 = v31;
    v16 = v32;
    *&v22 = v9;
    v17 = v21;
    *(&v22 + 1) = v21;
    *&v23 = v12;
    DWORD2(v23) = v14;
    v24 = v31;
    v25 = v32;
    v18 = v23;
    *a2 = v22;
    a2[1] = v18;
    v19 = v25;
    a2[2] = v24;
    a2[3] = v19;
    sub_1D99DEC94(&v22, v26);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v26[0] = v9;
    v26[1] = v17;
    v26[2] = v12;
    v27 = v14;
    v28 = v15;
    v29 = v16;
    sub_1D99DECF0(v26);
  }
}

uint64_t sub_1D9B56494()
{
  sub_1D9C7E8DC();
  DetectedBarcode.hash(into:)(v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9B564D8()
{
  sub_1D9C7E8DC();
  DetectedBarcode.hash(into:)(v1);
  return sub_1D9C7E93C();
}

void sub_1D9B565FC(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = *v4;
  v33 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511F8, &unk_1D9C8C800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = sub_1D9C7D91C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = 0xD00000000000001DLL;
  v35[1] = 0x80000001D9CA47C0;
  v35[2] = "VI: Barcode";
  v35[3] = 11;
  v36 = 2;
  v16 = type metadata accessor for BarcodeDetectionRequestFactory.Input(0);
  v17 = *(a1 + v16[7]);
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();

  v18 = sub_1D9AFD4B8(v35, v17);

  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v20 = v32;
  v19[4] = v18;
  v19[5] = v20;
  v21 = objc_allocWithZone(MEMORY[0x1E69844A0]);
  aBlock[4] = sub_1D9B570DC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9BD99E0;
  aBlock[3] = &block_descriptor_11;
  v22 = _Block_copy(aBlock);

  v32 = v18;

  v23 = [v21 initWithCompletionHandler_];
  _Block_release(v22);
  sub_1D9A687BC(a1 + v16[5], v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB511F8, &unk_1D9C8C800);
  }

  else
  {
    v24 = v31;
    (*(v14 + 32))(v31, v12, v13);
    v25 = v30;
    (*(v14 + 16))(v30, v24, v13);
    (*(v14 + 56))(v25, 0, 1, v13);
    sub_1D9C7E26C();
    sub_1D99A6AE0(v25, &qword_1ECB511F8, &unk_1D9C8C800);
    (*(v14 + 8))(v24, v13);
  }

  if (*(a1 + v16[6]))
  {
    type metadata accessor for VNBarcodeSymbology(0);
    v26 = sub_1D9C7DF1C();
    [v23 setSymbologies_];
  }

  [v23 setRegionOfInterest_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8, &qword_1D9C94280);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D9C88F90;
  *(v27 + 32) = v23;
  v28 = v33;
  v33[3] = &type metadata for BarcodeDetectionModelRequest;
  v28[4] = &off_1F5532818;

  *v28 = v27;
}

uint64_t sub_1D9B56A6C(void *a1, id a2, void (*a3)(void))
{
  if (a2)
  {
    v5 = a2;
    (a3)(a2, 0, 257);
  }

  else
  {
    v6 = sub_1D9B57100(a1);
    v8 = v7;
    v10 = v9;
    v11 = (v9 >> 8) & 1;
    a3();
    sub_1D99BB0C4(v6, v8, v10, v11);
  }

  return sub_1D9AFCCA4();
}

BOOL _s12VisualLookUp15DetectedBarcodeV2eeoiySbAC_ACtFZ_0(uint64_t a1, float *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v21 = *(a1 + 40);
  v22 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = a2[6];
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = *(a2 + 6);
  v13 = *(a2 + 7);
  v14 = sub_1D9C7DC7C();
  v16 = v15;
  if (v14 == sub_1D9C7DC7C() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_1D9C7E7DC();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v20 = sub_1D9C7E7DC();
  result = 0;
  if ((v20 & 1) != 0 && v4 == v9)
  {
LABEL_11:
    v23.origin.y = v21;
    v23.origin.x = v22;
    v23.size.width = v5;
    v23.size.height = v6;
    v24.origin.x = v10;
    v24.origin.y = v11;
    v24.size.width = v12;
    v24.size.height = v13;
    return CGRectEqualToRect(v23, v24);
  }

  return result;
}

unint64_t sub_1D9B56C8C()
{
  result = qword_1ECB53878;
  if (!qword_1ECB53878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53878);
  }

  return result;
}

unint64_t sub_1D9B56CE4()
{
  result = qword_1ECB53898;
  if (!qword_1ECB53898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53898);
  }

  return result;
}

uint64_t sub_1D9B56D38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D9B56D80(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1D9B56E18()
{
  result = qword_1ECB538A0;
  if (!qword_1ECB538A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB538A0);
  }

  return result;
}

unint64_t sub_1D9B56E70()
{
  result = qword_1ECB538A8;
  if (!qword_1ECB538A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB538A8);
  }

  return result;
}

unint64_t sub_1D9B56EC8()
{
  result = qword_1ECB538B0;
  if (!qword_1ECB538B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB538B0);
  }

  return result;
}

uint64_t sub_1D9B56F1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676F6C6F626D7973 && a2 == 0xE900000000000079;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t type metadata accessor for BarcodeDetectionRequestFactory.Input(uint64_t a1)
{
  result = qword_1EDD2B000;
  if (!qword_1EDD2B000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1D9B57100(void *a1)
{
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v70 = &v62 - v7;
  v8 = [a1 results];
  if (!v8)
  {
    return 0xD00000000000001CLL;
  }

  v9 = v8;
  sub_1D9A68700();
  v10 = sub_1D9C7DF2C();

  v11 = sub_1D9B80630(v10);

  if (!v11)
  {
    return 0xD00000000000001CLL;
  }

  v13 = (v11 & 0xFFFFFFFFFFFFFF8);
  if (v11 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D9C7E50C())
  {
    v15 = 0;
    v71 = v11 & 0xC000000000000001;
    v67 = v11;
    v64 = v11 + 32;
    v65 = v13;
    v13 = v3 + 1;
    v62 = 0x80000001D9CA3A40;
    v63 = &v3[2];
    v16 = MEMORY[0x1E69E7CC0];
    *&v12 = 138412290;
    v66 = v12;
    v68 = i;
    while (1)
    {
      if (v71)
      {
        v20 = MEMORY[0x1DA73E610](v15, v67);
      }

      else
      {
        if (v15 >= v65[2].isa)
        {
          goto LABEL_54;
        }

        v20 = *(v64 + 8 * v15);
      }

      v3 = v20;
      v21 = __OFADD__(v15, 1);
      v15 = (v15 + 1);
      if (v21)
      {
        break;
      }

      v22 = [v20 payloadStringValue];
      if (v22)
      {
        v23 = v22;
        v24 = sub_1D9C7DC7C();
        v26 = v25;

        v27 = v16 + 48;
        v28 = *(v16 + 2) + 1;
        while (--v28)
        {
          if (*(v27 - 1) != v24 || *v27 != v26)
          {
            v27 += 8;
            if ((sub_1D9C7E7DC() & 1) == 0)
            {
              continue;
            }
          }

          v11 = v70;
          static Logger.argos.getter(v70);
          v30 = v3;
          v3 = sub_1D9C7D8BC();
          v31 = sub_1D9C7E09C();

          if (os_log_type_enabled(v3, v31))
          {
            v17 = swift_slowAlloc();
            v11 = swift_slowAlloc();
            *v17 = v66;
            *(v17 + 4) = v30;
            *v11 = v30;
            v18 = v30;
            _os_log_impl(&dword_1D9962000, v3, v31, "Skip duplicate observation %@", v17, 0xCu);
            sub_1D99A6AE0(v11, &qword_1ECB510E8, &qword_1D9C884F0);
            MEMORY[0x1DA7405F0](v11, -1, -1);
            v19 = v17;
            i = v68;
            MEMORY[0x1DA7405F0](v19, -1, -1);
          }

          else
          {
            v18 = v3;
            v3 = v30;
          }

          (v13->isa)(v70, v2);
          goto LABEL_8;
        }

        v37 = [v3 symbology];
        [v3 confidence];
        v39 = v38;
        [v3 boundingBox];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D9AF9D58(0, *(v16 + 2) + 1, 1, v16);
        }

        v11 = *(v16 + 2);
        v48 = *(v16 + 3);
        if (v11 >= v48 >> 1)
        {
          v16 = sub_1D9AF9D58((v48 > 1), v11 + 1, 1, v16);
        }

        *(v16 + 2) = v11 + 1;
        v49 = &v16[64 * v11];
        *(v49 + 4) = v37;
        *(v49 + 5) = v24;
        *(v49 + 6) = v26;
        *(v49 + 14) = v39;
        *(v49 + 8) = v41;
        *(v49 + 9) = v43;
        *(v49 + 10) = v45;
        *(v49 + 11) = v47;
        i = v68;
        if (v15 == v68)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        if (byte_1EDD354C0 != 1)
        {
          goto LABEL_45;
        }

        v32 = [objc_opt_self() mainBundle];
        v33 = [v32 bundleIdentifier];

        if (v33)
        {
          v34 = sub_1D9C7DC7C();
          v36 = v35;

          if (v34 == 0xD00000000000002BLL && v62 == v36)
          {

LABEL_38:
            v51 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v51 = &off_1ECB51BA8;
            }

            goto LABEL_42;
          }

          v50 = sub_1D9C7E7DC();

          if (v50)
          {
            goto LABEL_38;
          }
        }

        v51 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v51 = &qword_1EDD355A8;
        }

LABEL_42:
        v52 = *(*v51 + 32);

        v53 = sub_1D9C7DC4C();
        LODWORD(v52) = [v52 BOOLForKey_];

        i = v68;
        if (v52)
        {
          v54 = qword_1EDD2C990;
          if (qword_1EDD2C988 != -1)
          {
            swift_once();
            v54 = qword_1EDD2C990;
          }

          goto LABEL_47;
        }

LABEL_45:
        v54 = qword_1EDD354D8;
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
          v54 = qword_1EDD354D8;
        }

LABEL_47:
        v55 = __swift_project_value_buffer(v2, v54);
        v11 = v69;
        (*v63)(v69, v55, v2);
        v56 = v3;
        v3 = sub_1D9C7D8BC();
        v57 = sub_1D9C7E09C();

        if (os_log_type_enabled(v3, v57))
        {
          v11 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *v11 = v66;
          *(v11 + 4) = v56;
          *v58 = v56;
          v59 = v56;
          _os_log_impl(&dword_1D9962000, v3, v57, "Skip observation without payload %@", v11, 0xCu);
          sub_1D99A6AE0(v58, &qword_1ECB510E8, &qword_1D9C884F0);
          v60 = v58;
          i = v68;
          MEMORY[0x1DA7405F0](v60, -1, -1);
          MEMORY[0x1DA7405F0](v11, -1, -1);
        }

        else
        {
          v59 = v3;
          v3 = v56;
        }

        (v13->isa)(v69, v2);
LABEL_8:
        if (v15 == i)
        {
LABEL_52:

          return v16;
        }
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D9B57928(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VNBarcodeSymbology(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D9B579B4(uint64_t a1)
{
  sub_1D9B57AFC(319, qword_1EDD2A868, MEMORY[0x1E695FD20]);
  if (v1 <= 0x3F)
  {
    sub_1D9B57A98(319);
    if (v2 <= 0x3F)
    {
      sub_1D9B57AFC(319, qword_1EDD2BF10, type metadata accessor for MetricsBucket);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9B57A98(uint64_t a1)
{
  if (!qword_1EDD2A708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB538B8, &qword_1D9C97CB0);
    v1 = sub_1D9C7E27C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD2A708);
    }
  }
}

void sub_1D9B57AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9C7E27C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t VITextAnnotation.description.getter()
{
  v1 = v0;
  sub_1D9C7E40C();
  v20 = 0;
  v21 = 0xE000000000000000;
  v19.receiver = v0;
  v19.super_class = VITextAnnotation;
  v2 = objc_msgSendSuper2(&v19, sel_description);
  v3 = sub_1D9C7DC7C();
  v5 = v4;

  MEMORY[0x1DA73DF90](v3, v5);

  MEMORY[0x1DA73DF90](0x65740A090A202D20, 0xEC000000203A7478);
  v6 = [v1 text];
  v7 = sub_1D9C7DC7C();
  v9 = v8;

  MEMORY[0x1DA73DF90](v7, v9);

  MEMORY[0x1DA73DF90](0xD00000000000001CLL, 0x80000001D9CAAD90);
  [v1 normalizedBoundingBox];
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  type metadata accessor for CGRect(0);
  sub_1D9C7E4DC();
  MEMORY[0x1DA73DF90](0xD000000000000011, 0x80000001D9CAADB0);
  [v1 confidence];
  sub_1D9C7E00C();
  MEMORY[0x1DA73DF90](663611, 0xE300000000000000);
  return v20;
}

uint64_t VITextBlockAnnotation.description.getter()
{
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1D9C7E40C();
  v12.receiver = v0;
  v12.super_class = VITextBlockAnnotation;
  v1 = objc_msgSendSuper2(&v12, sel_description);
  v2 = sub_1D9C7DC7C();
  v4 = v3;

  v13 = v2;
  v14 = v4;
  MEMORY[0x1DA73DF90](0xD000000000000017, 0x80000001D9CAADD0);
  v5 = [v0 textAnnotations];
  v6 = sub_1D9B57E80();
  v7 = sub_1D9C7DF2C();

  v8 = MEMORY[0x1DA73E110](v7, v6);
  v10 = v9;

  MEMORY[0x1DA73DF90](v8, v10);

  MEMORY[0x1DA73DF90](2592, 0xE200000000000000);
  return v13;
}

unint64_t sub_1D9B57E80()
{
  result = qword_1ECB53218;
  if (!qword_1ECB53218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB53218);
  }

  return result;
}

id sub_1D9B57EE4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1D9C7DC4C();

  return v5;
}

uint64_t VIQueryContext.description.getter()
{
  v1 = v0;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1D9C7E40C();
  v16.receiver = v0;
  v16.super_class = VIQueryContext;
  v2 = objc_msgSendSuper2(&v16, sel_description);
  v3 = sub_1D9C7DC7C();
  v5 = v4;

  MEMORY[0x1DA73DF90](v3, v5);

  MEMORY[0x1DA73DF90](0x75710A090A202D20, 0xEF203A4449797265);
  v15 = [v1 queryID];
  v6 = sub_1D9C7E7AC();
  MEMORY[0x1DA73DF90](v6);

  MEMORY[0x1DA73DF90](0xD00000000000001CLL, 0x80000001D9CAADF0);
  v7 = [v1 applicationIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D9C7DC7C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB518F0, &qword_1D9C87610);
  v12 = sub_1D9C7DCEC();
  MEMORY[0x1DA73DF90](v12);

  MEMORY[0x1DA73DF90](0x5369750A090A203BLL, 0xEE00203A656C6163);
  [v1 uiScale];
  v13 = sub_1D9C7DFFC();
  MEMORY[0x1DA73DF90](v13);

  MEMORY[0x1DA73DF90](663611, 0xE300000000000000);
  return v17;
}

void sub_1D9B58154(char *a1@<X8>)
{
  v30 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AC0, &unk_1D9C88E20);
  MEMORY[0x1EEE9AC00](v32);
  v35 = (&v29 - v2);
  v33 = v1;
  v3 = v1[4];
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v34 = v3;

  v9 = 0;
  for (i = MEMORY[0x1E69E7CC0]; v7; v27[v26 + 32] = v24)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = v11 | (v9 << 6);
      v13 = *(v34 + 56);
      v14 = (*(v34 + 48) + 16 * v12);
      v16 = *v14;
      v15 = v14[1];
      v17 = v13 + *(*(type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0) - 8) + 72) * v12;
      v18 = *(v32 + 48);
      v19 = v35;
      v20 = sub_1D9B58438(v17, v35 + v18);
      *v19 = v16;
      v19[1] = v15;
      v21 = *(v19 + v18);
      v22 = v33[1];
      v36[0] = *v33;
      v36[1] = v22;
      MEMORY[0x1EEE9AC00](v20);
      *(&v29 - 2) = v36;

      if (sub_1D9BC1698(sub_1D99A40D8, (&v29 - 4), v21))
      {

        v23 = sub_1D9A163E0(v16, v15);
        if (v23 != 27)
        {
          break;
        }
      }

      sub_1D99A6AE0(v35, &qword_1ECB51AC0, &unk_1D9C88E20);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v24 = v23;
    sub_1D99A6AE0(v35, &qword_1ECB51AC0, &unk_1D9C88E20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1D9AF8AB8(0, *(i + 2) + 1, 1, i);
    }

    v26 = *(i + 2);
    v25 = *(i + 3);
    if (v26 >= v25 >> 1)
    {
      i = sub_1D9AF8AB8((v25 > 1), v26 + 1, 1, i);
    }

    v27 = i;
    *(i + 2) = v26 + 1;
  }

  while (1)
  {
LABEL_6:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  if (*(i + 2))
  {
    v28 = i[32];
  }

  else
  {
    v28 = 27;
  }

  *v30 = v28;
}

uint64_t sub_1D9B58438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B5849C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D9C7D8DC();
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = sub_1D9C7DCDC();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v46 = type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig(0);
  MEMORY[0x1EEE9AC00](v46);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() defaultManager];
  v45 = a1;
  v18 = sub_1D9C7DC4C();
  v19 = [v17 contentsAtPath_];

  if (v19)
  {
    v44 = v6;
    v20 = sub_1D9C7B87C();
    v22 = v21;

    v23 = sub_1D9B88EB8(v20, v22);
    v40 = v13;
    v31 = v23;
    v33 = v32;
    sub_1D99A5748(v20, v22);

    sub_1D9C7DCBC();
    v41 = v31;
    v42 = v33;
    sub_1D9C7DC9C();
    sub_1D9B58B1C();
    memset(v48, 0, sizeof(v48));
    v49 = 0;
    sub_1D9C7D69C();
    v34 = v40;
    static Logger.argos.getter(v40);
    v35 = sub_1D9C7D8BC();
    v36 = sub_1D9C7E09C();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v44;
    if (v37)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D9962000, v35, v36, "Loaded DomainModelConfig.", v39, 2u);
      MEMORY[0x1DA7405F0](v39, -1, -1);
    }

    sub_1D99A5748(v41, v42);

    (*(v47 + 8))(v34, v38);
    return sub_1D9B58B74(v16, a3);
  }

  else
  {

    static Logger.argos.getter(v10);

    v24 = sub_1D9C7D8BC();
    v25 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v48[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1D9A0E224(v45, a2, v48);
      _os_log_impl(&dword_1D9962000, v24, v25, "Failed to load data at path %s", v26, 0xCu);
      v28 = __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x1DA7405F0](v27, -1, -1, v28);
      MEMORY[0x1DA7405F0](v26, -1, -1);
    }

    (*(v47 + 8))(v10, v6);
    *a3 = 0;
    a3[1] = 0xE000000000000000;
    v29 = MEMORY[0x1E69E7CC0];
    a3[2] = sub_1D9A43FD0(MEMORY[0x1E69E7CC0]);
    a3[3] = sub_1D9A43FD0(v29);
    a3[4] = sub_1D9A43FD0(v29);
    a3[5] = sub_1D9A43FD0(v29);
    return sub_1D9C7D3BC();
  }
}

unint64_t sub_1D9B58B1C()
{
  result = qword_1EDD2E4A8;
  if (!qword_1EDD2E4A8)
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2E4A8);
  }

  return result;
}

uint64_t sub_1D9B58B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B58BD8@<X0>(char *a1@<X8>, float a2@<S0>)
{
  v4 = sub_1D9C7BC0C();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7BC5C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  *&v65 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  sub_1D9C7BCFC();
  v21 = sub_1D9C7BC2C();
  v75 = v22;
  v76 = v21;
  v23 = *(v8 + 8);
  v23(v20, v7);
  sub_1D9C7BCFC();
  v24 = sub_1D9C7BC3C();
  v73 = v25;
  v74 = v24;
  v23(v17, v7);
  sub_1D9B5921C();
  v26 = type metadata accessor for ObjectKnowledge(0);
  sub_1D9C7B7EC();

  sub_1D9C7BCFC();
  v27 = sub_1D9C7BC1C();
  v71 = v28;
  v72 = v27;
  v63 = v23;
  v64 = v7;
  v23(v14, v7);
  sub_1D9C7BD0C();
  v29 = sub_1D9C7BBFC();
  v69 = v30;
  v70 = v29;
  (*(v66 + 8))(v6, v67);
  v31 = v26[10];
  v32 = sub_1D9C7B80C();
  (*(*(v32 - 8) + 56))(&a1[v31], 1, 1, v32);
  v33 = v65;
  sub_1D9C7BCFC();
  v34 = sub_1D9C7BC3C();
  v66 = v35;
  v67 = v34;
  v23(v33, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52518, &unk_1D9C8CD80);
  v36 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520A0, &unk_1D9C953A0) - 8);
  v37 = (*(*v36 + 80) + 32) & ~*(*v36 + 80);
  v38 = swift_allocObject();
  v65 = xmmword_1D9C85660;
  *(v38 + 16) = xmmword_1D9C85660;
  v39 = v38 + v37;
  v40 = (v39 + v36[14]);
  sub_1D9C7B97C();
  v41 = v68;
  sub_1D9C7BCFC();
  v42 = sub_1D9C7BC3C();
  v44 = v43;
  v63(v41, v64);
  *v40 = v42;
  v40[1] = v44;
  v45 = sub_1D9A449E0(v38);
  swift_setDeallocating();
  sub_1D99A6AE0(v39, &qword_1ECB520A0, &unk_1D9C953A0);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52520, &qword_1D9C960B0);
  v46 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52090, &unk_1D9C953B0) - 8);
  v47 = (*(*v46 + 80) + 32) & ~*(*v46 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v65;
  v49 = v48 + v47;
  v50 = v46[14];
  sub_1D9C7B97C();
  *(v49 + v50) = MEMORY[0x1E69E7CD0];
  v51 = sub_1D9A44BD0(v48);
  swift_setDeallocating();
  sub_1D99A6AE0(v49, &qword_1ECB52090, &unk_1D9C953B0);
  swift_deallocClassInstance();
  v52 = v75;
  *a1 = v76;
  *(a1 + 1) = v52;
  v53 = v73;
  *(a1 + 2) = v74;
  *(a1 + 3) = v53;
  *&a1[v26[7]] = 0;
  v54 = &a1[v26[8]];
  v55 = v71;
  *v54 = v72;
  *(v54 + 1) = v55;
  v56 = &a1[v26[9]];
  v57 = v69;
  *v56 = v70;
  *(v56 + 1) = v57;
  *&a1[v26[11]] = MEMORY[0x1E69E7CC0];
  v58 = &a1[v26[12]];
  *(v58 + 2) = 0u;
  *(v58 + 3) = 0u;
  *v58 = 0u;
  *(v58 + 1) = 0u;
  v59 = &a1[v26[13]];
  *v59 = 0;
  v59[8] = 1;
  *&a1[v26[14]] = xmmword_1D9C8CD70;
  v60 = &a1[v26[15]];
  *v60 = 0;
  *(v60 + 4) = 0;
  v61 = v66;
  *(v60 + 2) = v67;
  *(v60 + 3) = v61;
  *(v60 + 4) = v45;
  *(v60 + 5) = 0x3FF0000000000000;
  v60[48] = 0;
  *(v60 + 7) = 0;
  *(v60 + 8) = 0xE000000000000000;
  *(v60 + 9) = 0;
  *(v60 + 10) = 0xE000000000000000;
  *(v60 + 12) = 0;
  *(v60 + 13) = 0;
  *(v60 + 11) = v51;
  *(v60 + 28) = 0;
  *&a1[v26[16]] = a2;
  return (*(*(v26 - 1) + 56))(a1, 0, 1, v26);
}

uint64_t sub_1D9B5921C()
{
  v50 = sub_1D9C7BBDC();
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v1 = &v49 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D9C7BC5C();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9C7BC0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - v9;
  sub_1D9C7BD0C();
  v11 = sub_1D9C7BBEC();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v10, v4);

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    sub_1D9C7BD0C();
    v16 = sub_1D9C7BBEC();
    v14(v7, v4);
    return v16;
  }

  v18 = v50;
  sub_1D9C7BCFC();
  v19 = sub_1D9C7BC4C();
  result = (*(v49 + 8))(v3, v51);
  v20 = *(v19 + 16);
  if (!v20)
  {

    return 0;
  }

  v49 = 0;
  v21 = 0;
  v22 = v52;
  v51 = v19 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
  v23 = (v52 + 8);
  v24 = 0xE000000000000000;
  while (v21 < *(v19 + 16))
  {
    (*(v22 + 16))(v1, v51 + *(v22 + 72) * v21, v18);
    if (sub_1D9C7BBCC() == 3682640 && v26 == 0xE300000000000000)
    {

LABEL_17:
      v28 = sub_1D9C7BBAC();
      v30 = v29;

      v31 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v31 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {

        v48 = sub_1D9C7BBAC();
        goto LABEL_40;
      }

      v32 = sub_1D9C7BBBC();
      v34 = v33;

      v35 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v35 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {

        v48 = sub_1D9C7BBBC();
LABEL_40:
        v16 = v48;
        (*v23)(v1, v18);
        return v16;
      }

      goto LABEL_11;
    }

    v27 = sub_1D9C7E7DC();

    if (v27)
    {
      goto LABEL_17;
    }

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      goto LABEL_11;
    }

    if (sub_1D9C7BBCC() == 959787595 && v36 == 0xE400000000000000)
    {
    }

    else
    {
      v37 = sub_1D9C7E7DC();

      if ((v37 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v38 = sub_1D9C7BBAC();
    v40 = v39;

    v41 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v41 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {

      v42 = sub_1D9C7BBAC();
    }

    else
    {
      v44 = sub_1D9C7BBBC();
      v46 = v45;

      v47 = HIBYTE(v46) & 0xF;
      if ((v46 & 0x2000000000000000) == 0)
      {
        v47 = v44 & 0xFFFFFFFFFFFFLL;
      }

      if (!v47)
      {
        goto LABEL_11;
      }

      v42 = sub_1D9C7BBBC();
    }

    v49 = v42;
    v24 = v43;
LABEL_11:
    v22 = v52;
    ++v21;
    result = (*v23)(v1, v18);
    if (v20 == v21)
    {

      return v49;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B59764()
{
  v0 = [objc_opt_self() weakToStrongObjectsMapTable];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB538C8, &unk_1D9C97CF0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_1ECB538C0 = result;
  return result;
}

void sub_1D9B597D4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D99E92D0(v2);
  }

  v3 = *(v2 + 2);
  v33[0] = (v2 + 32);
  v33[1] = v3;
  v4 = sub_1D9C7E79C();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 96;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12 >= *(v12 + 24))
          {
            break;
          }

          v13 = v12 - 64;
          v14 = *(v12 + 3);
          v27 = *(v12 + 2);
          v28 = v14;
          v15 = *(v12 + 4);
          v16 = *(v12 + 5);
          v17 = *(v12 + 7);
          v31 = *(v12 + 6);
          v32 = v17;
          v29 = v15;
          v30 = v16;
          v18 = *(v12 + 1);
          *(v12 + 6) = *v12;
          *(v12 + 7) = v18;
          v19 = *(v12 - 1);
          *(v12 + 4) = *(v12 - 2);
          *(v12 + 5) = v19;
          v20 = *(v12 - 3);
          *(v12 + 2) = *(v12 - 4);
          *(v12 + 3) = v20;
          v21 = v28;
          *v13 = v27;
          *(v13 + 1) = v21;
          v22 = v29;
          v23 = v30;
          v24 = v32;
          *v12 = v31;
          *(v12 + 1) = v24;
          *(v13 + 2) = v22;
          *(v13 + 3) = v23;
          v12 -= 96;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 96;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D9C7DF5C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v27 = v7 + 32;
    *(&v27 + 1) = v6;
    sub_1D9B5BB00(&v27, v26, v33, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

double VisualUnderstanding.debugData(ontologyGraph:)@<D0>(char *a1@<X0>, char **a2@<X8>)
{
  v136 = a2;
  v4 = sub_1D9C7D8DC();
  v132 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = _s14DetectedResultVMa(0);
  v151 = *(v153 - 1);
  MEMORY[0x1EEE9AC00](v153);
  v164 = (&v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB538D0, &qword_1D9C97D00);
  v131 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v150 = (&v131 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB538D8, &qword_1D9C97D08);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v162 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v131 - v13;
  v14 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v161 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v163 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v143 = &v131 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v131 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220, &unk_1D9C86480);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = (&v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v147 = &v131 - v25;
  v152 = *a1;
  v26 = *v2;
  v27 = *(v2 + 56);
  *&v179[32] = *(v2 + 40);
  *&v179[48] = v27;
  v28 = *(v2 + 24);
  *v179 = *(v2 + 8);
  *&v179[16] = v28;
  v139 = *(v2 + 72);
  v138 = *(v2 + 88);
  v137 = *(v2 + 104);
  v135 = *(v2 + 120);
  v29 = *(v2 + 136);
  v134 = *(v2 + 128);
  v133 = v29;
  v155 = *(v2 + 176);
  v30 = *(v26 + 16);
  v159 = v26;
  v160 = v30;
  if (v30)
  {
    v31 = 0;
    while (1)
    {
      v32 = *(v26 + 16);
      if (v31 >= v32)
      {
        goto LABEL_107;
      }

      sub_1D99CC070(v26 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v31, v20, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v20[104])
      {
        break;
      }

      ++v31;
      sub_1D99CC0F8(v20, type metadata accessor for VisualUnderstanding.ImageRegion);
      v26 = v159;
      if (v160 == v31)
      {
        goto LABEL_6;
      }
    }

    sub_1D9B5B840(v20, v147, type metadata accessor for VisualUnderstanding.ImageRegion);
    v33 = 0;
  }

  else
  {
LABEL_6:
    v33 = 1;
  }

  v2 = v161;
  v31 = v147;
  (*(v161 + 56))(v147, v33, 1, v14);
  sub_1D99AB100(v31, v23, &qword_1ECB51220, &unk_1D9C86480);
  v34 = (*(v2 + 48))(v23, 1, v14);
  v158 = v4;
  v157 = v6;
  v156 = v8;
  if (v34 == 1)
  {
    sub_1D99B1D48(v23);
  }

  else
  {
    v2 = v23[10];
    v31 = v23[11];
    v35 = v23[12];
    sub_1D99CB864(v2, v31, v35);
    sub_1D99CC0F8(v23, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v31)
    {
      v171 = v2;
      v36 = *(v35 + 16);
      v172 = v31;

      if (v36)
      {
        v37 = 0;
        v38 = (v35 + 48);
        a1 = MEMORY[0x1E69E7CC0];
        do
        {
          v32 = *(v35 + 16);
          if (v37 >= v32)
          {
            goto LABEL_109;
          }

          v14 = *(v38 - 2);
          v31 = *(v38 - 1);
          v39 = *v38;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_1D9AFB870(0, *(a1 + 2) + 1, 1, a1);
          }

          v2 = *(a1 + 2);
          v40 = *(a1 + 3);
          if (v2 >= v40 >> 1)
          {
            a1 = sub_1D9AFB870((v40 > 1), v2 + 1, 1, a1);
          }

          ++v37;
          *(a1 + 2) = v2 + 1;
          v41 = &a1[24 * v2];
          *(v41 + 4) = v14;
          *(v41 + 5) = v31;
          *(v41 + 12) = v39;
          v38 += 6;
        }

        while (v36 != v37);
      }

      else
      {
        a1 = MEMORY[0x1E69E7CC0];
      }

      v14 = sub_1D9AFB748(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v2 = *(v14 + 16);
      v32 = *(v14 + 24);
      v31 = v2 + 1;
      if (v2 >= v32 >> 1)
      {
        goto LABEL_116;
      }

      goto LABEL_23;
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v50 = v159;
  if (!v160)
  {
    goto LABEL_53;
  }

  v51 = 0;
  v142 = v159 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
  while (1)
  {
    v32 = *(v50 + 16);
    if (v51 >= v32)
    {
      goto LABEL_114;
    }

    v140 = *(v161 + 72);
    v141 = v51;
    v31 = type metadata accessor for VisualUnderstanding.ImageRegion;
    v2 = v143;
    sub_1D99CC070(v142 + v140 * v51, v143, type metadata accessor for VisualUnderstanding.ImageRegion);
    a1 = *(v2 + 112);

    sub_1D99CC0F8(v2, type metadata accessor for VisualUnderstanding.ImageRegion);
    v52 = a1;
    v53 = *(a1 + 2);
    if (v53)
    {
      break;
    }

LABEL_50:

    v51 = v141 + 1;
    v50 = v159;
    if (v141 + 1 == v160)
    {
      v31 = 0;
      v168 = (v131 + 56);
      v167 = (v131 + 48);
      v148 = 0x80000001D9CA3A40;
      v161 = v132 + 16;
      v75 = MEMORY[0x1E69E7CC0];
      v149 = (v132 + 8);
      v172 = v14;
      while (1)
      {
        v32 = *(v50 + 16);
        if (v31 >= v32)
        {
          goto LABEL_115;
        }

        v146 = v31;
        v87 = v142 + v31 * v140;
        v31 = v163;
        sub_1D99CC070(v87, v163, type metadata accessor for VisualUnderstanding.ImageRegion);
        v88 = *(v31 + 56);
        v32 = *(v88 + 16);
        if (v32)
        {
          break;
        }

LABEL_64:
        v31 = (v146 + 1);
        sub_1D99CC0F8(v163, type metadata accessor for VisualUnderstanding.ImageRegion);
        v50 = v159;
        if (v31 == v160)
        {
          goto LABEL_54;
        }
      }

      v89 = 0;
      *&v166 = *(v31 + 56);
      *&v165 = v32;
LABEL_68:
      if ((v89 & 0x8000000000000000) != 0)
      {
        goto LABEL_111;
      }

      v32 = *(v88 + 16);
      if (v89 < v32)
      {
        a1 = (v89 + 1);
        v90 = v88 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v89;
        v91 = *(v8 + 48);
        v92 = v150;
        *v150 = v89;
        sub_1D99CC070(v90, v92 + v91, _s14DetectedResultVMa);
        sub_1D99B1C20(v92, v162, &qword_1ECB538D0, &qword_1D9C97D00);
        v93 = v162;
        for (i = 0; ; i = 1)
        {
          v95 = v93;
          (*v168)(v93, i, 1, v8);
          v2 = v154;
          sub_1D99B1C20(v95, v154, &qword_1ECB538D8, &qword_1D9C97D08);
          if ((*v167)(v2, 1, v8) == 1)
          {
            v14 = v172;
            goto LABEL_64;
          }

          v31 = *v2;
          sub_1D9B5B840(v2 + *(v8 + 48), v164, _s14DetectedResultVMa);
          v32 = *(v163 + 64);
          v96 = *(v32 + 16);
          v171 = a1;
          if (v31 >= v96)
          {
            break;
          }

          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_113;
          }

          v2 = *(v32 + 16 * v31 + 40);

LABEL_95:
          v111 = v153[7];
          v112 = (v164 + v153[6]);
          v113 = *v112;
          v169 = v112[1];
          v170 = v113;
          v114 = *(v164 + v111);
          v14 = *(v164 + v111 + 8);
          v115 = *(v164 + v111 + 16);
          a1 = *(v164 + v111 + 24);
          v116 = *(v164 + v153[8]);
          v117 = *(v163 + 76);
          v118 = *v164;
          *&v175 = v114;
          *(&v175 + 1) = v14;
          *&v176 = v115;
          *(&v176 + 1) = a1;
          *v174 = v152;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();

          sub_1D9ADD51C(&v175, v174, &v173);
          v119 = v173;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_1D9AFB628(0, *(v75 + 2) + 1, 1, v75);
          }

          v121 = *(v75 + 2);
          v120 = *(v75 + 3);
          v31 = v121 + 1;
          if (v121 >= v120 >> 1)
          {
            v75 = sub_1D9AFB628((v120 > 1), v121 + 1, 1, v75);
          }

          sub_1D99CC0F8(v164, _s14DetectedResultVMa);
          *(v75 + 2) = v31;
          v122 = &v75[96 * v121];
          v123 = v169;
          *(v122 + 2) = v170;
          *(v122 + 3) = v123;
          *(v122 + 8) = v114;
          *(v122 + 9) = v14;
          *(v122 + 10) = v115;
          *(v122 + 11) = a1;
          *(v122 + 24) = v116;
          *(v122 + 25) = v117;
          *(v122 + 13) = v118;
          v122[112] = v119;
          v124 = *(&v175 + 3);
          *(v122 + 113) = v175;
          *(v122 + 29) = v124;
          *(v122 + 15) = v2;
          v4 = v158;
          v6 = v157;
          v8 = v156;
          v93 = v162;
          v88 = v166;
          v32 = v165;
          v89 = v171;
          if (v171 != v165)
          {
            goto LABEL_68;
          }

          a1 = v165;
        }

        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        if (byte_1EDD354C0 != 1)
        {
          goto LABEL_90;
        }

        v97 = [objc_opt_self() mainBundle];
        v98 = [v97 bundleIdentifier];

        if (v98)
        {
          v99 = sub_1D9C7DC7C();
          v101 = v100;

          if (v99 == 0xD00000000000002BLL && v148 == v101)
          {

LABEL_83:
            v103 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v103 = &off_1ECB51BA8;
            }

LABEL_87:
            v104 = *(*v103 + 32);

            v105 = sub_1D9C7DC4C();
            LODWORD(v104) = [v104 BOOLForKey_];

            if (v104)
            {
              v106 = qword_1EDD2C990;
              if (qword_1EDD2C988 != -1)
              {
                swift_once();
                v106 = qword_1EDD2C990;
              }

LABEL_92:
              v107 = __swift_project_value_buffer(v4, v106);
              (*v161)(v6, v107, v4);
              v108 = sub_1D9C7D8BC();
              v109 = sub_1D9C7E0AC();
              if (os_log_type_enabled(v108, v109))
              {
                v110 = swift_slowAlloc();
                *v110 = 0;
                _os_log_impl(&dword_1D9962000, v108, v109, "Index exceeds the range of imageRegion.domainPredictionNetResults.count", v110, 2u);
                MEMORY[0x1DA7405F0](v110, -1, -1);
              }

              (*v149)(v6, v4);
              v2 = MEMORY[0x1E69E7CC8];
              goto LABEL_95;
            }

LABEL_90:
            v106 = qword_1EDD354D8;
            if (qword_1EDD354D0 != -1)
            {
              swift_once();
              v106 = qword_1EDD354D8;
            }

            goto LABEL_92;
          }

          v102 = sub_1D9C7E7DC();

          if (v102)
          {
            goto LABEL_83;
          }
        }

        v103 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v103 = &qword_1EDD355A8;
        }

        goto LABEL_87;
      }

LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      v14 = sub_1D9AFB748((v32 > 1), v31, 1, v14);
LABEL_23:
      v4 = v158;
      v6 = v157;
      v8 = v156;
      v42 = v171;
      *(v14 + 16) = v31;
      v43 = v14 + 56 * v2;
      v44 = v172;
      *(v43 + 32) = v42;
      *(v43 + 40) = v44;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      *(v43 + 48) = a1;
      __asm { FMOV            V0.2D, #1.0 }

      *(v43 + 72) = _Q0;
      goto LABEL_24;
    }
  }

  v54 = 0;
  v55 = a1 + 32;
  v146 = a1;
  v145 = v53;
  v144 = a1 + 32;
LABEL_30:
  v32 = *(v52 + 2);
  if (v54 >= v32)
  {
    goto LABEL_110;
  }

  v56 = &v55[6 * v54];
  a1 = v56[5];
  *&v169 = *(a1 + 2);
  if (!v169)
  {
    goto LABEL_29;
  }

  v149 = v54;
  v57 = *(v56 + 1);
  v166 = *v56;
  v165 = v57;
  v168 = (a1 + 32);
  v148 = v56[4];

  swift_bridgeObjectRetain_n();
  v58 = 0;
  v167 = a1;
  while (1)
  {
    v32 = *(a1 + 2);
    if (v58 >= v32)
    {
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v172 = v14;
    v59 = &v168[3 * v58];
    v60 = v59[1];
    *&v170 = *v59;
    v61 = v59[2];
    v62 = *(v61 + 2);
    v171 = v60;
    swift_bridgeObjectRetain_n();

    if (v62)
    {
      break;
    }

    v64 = MEMORY[0x1E69E7CC0];
LABEL_44:

    v71 = v171;

    v14 = v172;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1D9AFB748(0, *(v14 + 16) + 1, 1, v14);
    }

    a1 = v167;
    v72 = v170;
    v2 = *(v14 + 16);
    v73 = *(v14 + 24);
    v31 = v2 + 1;
    if (v2 >= v73 >> 1)
    {
      v14 = sub_1D9AFB748((v73 > 1), v2 + 1, 1, v14);
    }

    ++v58;
    *(v14 + 16) = v31;
    v74 = v14 + 56 * v2;
    *(v74 + 32) = v72;
    *(v74 + 40) = v71;
    *(v74 + 48) = v64;
    *(v74 + 56) = v166;
    *(v74 + 72) = v165;
    if (v58 == v169)
    {
      swift_bridgeObjectRelease_n();

      v4 = v158;
      v6 = v157;
      v8 = v156;
      v52 = v146;
      v53 = v145;
      v54 = v149;
      v55 = v144;
LABEL_29:
      if (++v54 == v53)
      {
        goto LABEL_50;
      }

      goto LABEL_30;
    }
  }

  v14 = 0;
  v63 = (v61 + 48);
  v64 = MEMORY[0x1E69E7CC0];
  while (v14 < *(v61 + 2))
  {
    v66 = *(v63 - 2);
    v65 = *(v63 - 1);
    v67 = *v63;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_1D9AFB870(0, *(v64 + 2) + 1, 1, v64);
    }

    v69 = *(v64 + 2);
    v68 = *(v64 + 3);
    a1 = (v69 + 1);
    if (v69 >= v68 >> 1)
    {
      v64 = sub_1D9AFB870((v68 > 1), v69 + 1, 1, v64);
    }

    ++v14;
    *(v64 + 2) = a1;
    v70 = &v64[24 * v69];
    *(v70 + 4) = v66;
    *(v70 + 5) = v65;
    *(v70 + 12) = v67;
    v63 += 6;
    if (v62 == v14)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_53:
  v75 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v172 = v14;
  *&v175 = v75;

  sub_1D9B597D4(&v175);
  v2 = v155;

  v31 = v175;
  v76 = *(v2 + 16);

  if (v76)
  {
    v77 = 0;
    v78 = (v2 + 56);
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v32 = *(v2 + 16);
      if (v77 >= v32)
      {
        break;
      }

      v80 = *(v78 - 3);
      v79 = *(v78 - 2);
      v81 = *v78;
      v82 = *(v78 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D9AFB51C(0, *(v14 + 16) + 1, 1, v14);
      }

      v84 = *(v14 + 16);
      v83 = *(v14 + 24);
      a1 = (v84 + 1);
      if (v84 >= v83 >> 1)
      {
        v14 = sub_1D9AFB51C((v83 > 1), v84 + 1, 1, v14);
      }

      ++v77;
      v85 = v82;
      *(v14 + 16) = a1;
      v86 = v14 + 32 * v84;
      *(v86 + 32) = v80;
      *(v86 + 40) = v79;
      *(v86 + 48) = v85;
      *(v86 + 56) = v81;
      v78 += 4;
      v2 = v155;
      if (v76 == v77)
      {
        goto LABEL_102;
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_102:

  if (*v179 == 1)
  {
    v125 = v133;

    sub_1D99B1D48(v147);
    v126 = 0;
  }

  else
  {
    *v174 = *v179;
    *&v174[8] = *&v179[8];
    *&v174[24] = *&v179[24];
    *&v174[40] = *&v179[40];
    *&v174[56] = *&v179[56];
    v125 = v133;

    sub_1D99AB100(v179, &v175, &qword_1ECB514D0, &unk_1D9C86490);
    v126 = sub_1D9B5AE64();
    v175 = *v174;
    v176 = *&v174[16];
    v177 = *&v174[32];
    v178 = *&v174[48];
    sub_1D9B5B7EC(&v175);
    sub_1D99B1D48(v147);
  }

  v127 = v136;
  v128 = v135;
  v129 = v134;
  *v136 = v172;
  v127[1] = v31;
  v127[2] = v129;
  v127[3] = v125;
  v127[4] = v126;
  *(v127 + 5) = v139;
  *(v127 + 7) = v138;
  result = *&v137;
  *(v127 + 9) = v137;
  *(v127 + 88) = v128;
  v127[12] = v14;
  return result;
}

id sub_1D9B5AE64()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v59 = v0[3];
  v4 = MEMORY[0x1E69E7CC0];
  v63 = MEMORY[0x1E69E7CC0];
  v64 = MEMORY[0x1E69E7CC0];
  v61 = MEMORY[0x1E69E7CC0];
  v62 = MEMORY[0x1E69E7CC0];
  if (v0[7])
  {

    sub_1D9B5B620();
    v60 = v5;
  }

  else
  {
    v60 = 0;
  }

  if (v1)
  {
    v6 = v1;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = (v6 + 80);
    do
    {
      v9 = *(v8 - 8);
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 1);
      v13 = *v8;
      v14 = objc_allocWithZone(VIRegionalAnnotation);

      v15 = sub_1D9C7DC4C();
      LODWORD(v16) = v9;
      [v14 initWithLabel:v15 normalizedBoundingBox:v10 confidence:{v11, v12, v13, v16}];

      MEMORY[0x1DA73E0E0]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D9C7DF4C();
      }

      sub_1D9C7DF6C();
      v8 += 7;
      --v7;
    }

    while (v7);
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  if (v2)
  {
    v17 = v2;
  }

  else
  {
    v17 = v4;
  }

  v18 = *(v17 + 16);
  if (v18)
  {

    v19 = (v17 + 80);
    do
    {
      v20 = *(v19 - 8);
      v21 = *(v19 - 3);
      v22 = *(v19 - 2);
      v23 = *(v19 - 1);
      v24 = *v19;
      v25 = objc_allocWithZone(VIRegionalAnnotation);

      v26 = sub_1D9C7DC4C();
      LODWORD(v27) = v20;
      [v25 initWithLabel:v26 normalizedBoundingBox:v21 confidence:{v22, v23, v24, v27}];

      MEMORY[0x1DA73E0E0]();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D9C7DF4C();
      }

      sub_1D9C7DF6C();
      v19 += 7;
      --v18;
    }

    while (v18);
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  if (v3)
  {
    v28 = v3;
  }

  else
  {
    v28 = v4;
  }

  v29 = *(v28 + 16);
  if (v29)
  {

    v30 = (v28 + 80);
    do
    {
      v31 = *(v30 - 8);
      v32 = *(v30 - 3);
      v33 = *(v30 - 2);
      v34 = *(v30 - 1);
      v35 = *v30;
      v36 = objc_allocWithZone(VIRegionalAnnotation);

      v37 = sub_1D9C7DC4C();
      LODWORD(v38) = v31;
      [v36 initWithLabel:v37 normalizedBoundingBox:v32 confidence:{v33, v34, v35, v38}];

      MEMORY[0x1DA73E0E0]();
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D9C7DF4C();
      }

      sub_1D9C7DF6C();
      v30 += 7;
      --v29;
    }

    while (v29);
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  if (v59)
  {
    v39 = v59;
  }

  else
  {
    v39 = v4;
  }

  v40 = *(v39 + 16);
  if (v40)
  {

    v41 = (v39 + 80);
    do
    {
      v42 = *(v41 - 8);
      v43 = *(v41 - 3);
      v44 = *(v41 - 2);
      v45 = *(v41 - 1);
      v46 = *v41;
      v47 = objc_allocWithZone(VITextAnnotation);

      v48 = sub_1D9C7DC4C();
      LODWORD(v49) = v42;
      [v47 initWithText:v48 normalizedBoundingBox:v43 confidence:{v44, v45, v46, v49}];

      MEMORY[0x1DA73E0E0]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D9C7DF4C();
      }

      sub_1D9C7DF6C();
      v41 += 7;
      --v40;
    }

    while (v40);
  }

  else
  {
  }

  v50 = objc_opt_self();
  sub_1D9A0835C(0, &qword_1ECB53218, off_1E85898C8);
  v51 = sub_1D9C7DF1C();

  v52 = [v50 textBlockWithAnnotations_];

  v53 = objc_allocWithZone(VIAnnotation);
  sub_1D9A0835C(0, &qword_1EDD2A688, off_1E8589878);
  v54 = sub_1D9C7DF1C();

  v55 = sub_1D9C7DF1C();

  v56 = sub_1D9C7DF1C();

  v57 = [v53 initWithReducePersonOverTriggerAnnotation:v60 faceAnnotations:v54 humanAnnotations:v55 nsfwAnnotations:v56 textBlockAnnotation:v52 scenenetAnnotation:0 barcodeAnnotation:0];

  return v57;
}