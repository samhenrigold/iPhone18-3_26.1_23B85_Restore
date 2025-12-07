void sub_1DA3D7D14(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 24)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1DA4223E4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1DA3B76EC(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2B0, &qword_1DA426858);
      sub_1DA4221B4();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_1DA3D6ABC(v14, a2 & 1);
  v16 = sub_1DA3B76EC(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECC0, &unk_1DA423980);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1DA422094();
  MEMORY[0x1DA74D370](0xD00000000000001BLL, 0x80000001DA42DD10);
  sub_1DA422194();
  MEMORY[0x1DA74D370](39, 0xE100000000000000);
  sub_1DA4221D4();
  __break(1u);
}

uint64_t sub_1DA3D7FE8(uint64_t a1, char a2, void *a3)
{
  v3 = a3;
  v5 = a1;
  v6 = 0;
  v46 = *(a1 + 16);
  v7 = (a1 + 48);
  while (1)
  {
    if (v46 == v6)
    {
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v47 = v7;
    v48 = v6;
    v8 = *(v7 - 2);
    v9 = *(v7 - 1);
    v10 = *v7;
    v11 = *v3;

    v12 = v10;
    v14 = sub_1DA3B76EC(v8, v9);
    v15 = v11[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_22;
    }

    v17 = v13;
    if (v11[3] >= v15 + v16)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2B8, &unk_1DA426860);
        sub_1DA4221B4();
      }
    }

    else
    {
      sub_1DA3D6D6C();
      v18 = sub_1DA3B76EC(v8, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_24;
      }

      v14 = v18;
    }

    v20 = *v3;
    if (v17)
    {
      v21 = qword_1ECBAE838;
      v22 = *(v20[7] + 8 * v14);
      if (v21 != -1)
      {
        swift_once();
      }

      v23 = sub_1DA421A94();
      __swift_project_value_buffer(v23, static Logger.inferenceCategory);
      v24 = v22;
      v25 = sub_1DA421A74();
      v26 = sub_1DA421F74();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v49 = v42;
        *v27 = 136315138;
        v43 = v24;
        v28 = [v24 description];
        v29 = sub_1DA421B94();
        log = v25;
        v31 = v30;

        v32 = sub_1DA3A5FE8(v29, v31, &v49);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_1DA39E000, log, v26, "Duplicate feature found under: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x1DA74E430](v42, -1, -1);
        MEMORY[0x1DA74E430](v27, -1, -1);

        v33 = v20[7];
        v34 = *(v33 + 8 * v14);
        *(v33 + 8 * v14) = v43;
      }

      else
      {

        v39 = v20[7];
        v34 = *(v39 + 8 * v14);
        *(v39 + 8 * v14) = v24;
      }

      v5 = a1;
    }

    else
    {
      v20[(v14 >> 6) + 8] |= 1 << v14;
      v35 = (v20[6] + 16 * v14);
      *v35 = v8;
      v35[1] = v9;
      *(v20[7] + 8 * v14) = v12;
      v36 = v20[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_23;
      }

      v20[2] = v38;
    }

    v7 = v47 + 3;
    v6 = v48 + 1;
    a2 = 1;
    v3 = a3;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1DA4223E4();
  __break(1u);
  return result;
}

void sub_1DA3D8360(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1DA4223E4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_1DA3B76EC(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v15 = v11;
    if (v9[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2C8, &qword_1DA426878);
      sub_1DA4221B4();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v12) = v10;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_1DA3D6D6C();
  v16 = sub_1DA3B76EC(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v12 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECC0, &unk_1DA423980);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1DA422094();
  MEMORY[0x1DA74D370](0xD00000000000001BLL, 0x80000001DA42DD10);
  sub_1DA422194();
  MEMORY[0x1DA74D370](39, 0xE100000000000000);
  sub_1DA4221D4();
  __break(1u);
}

void sub_1DA3D8650(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 56)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1DA4223E4();
      __break(1u);
      goto LABEL_22;
    }

    sub_1DA3D9A90(i, &v30, &qword_1ECBAEA50, &qword_1DA4246D0);
    v8 = v30;
    v7 = v31;
    v28 = v30;
    v29 = v31;
    sub_1DA3A1FF8(v32, v27);
    v9 = *a3;
    v11 = sub_1DA3B76EC(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2D0, &qword_1DA426890);
      sub_1DA4221B4();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    sub_1DA3A1FF8(v27, v18[7] + 40 * v11);
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v5;
    v18[2] = v22;
    a2 = 1;
    if (v25 == v5)
    {

      return;
    }
  }

  sub_1DA3D6F18(v14, a2 & 1);
  v16 = sub_1DA3B76EC(v8, v7);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v33 = v23;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECC0, &unk_1DA423980);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0(v27);

    return;
  }

LABEL_22:
  sub_1DA422094();
  MEMORY[0x1DA74D370](0xD00000000000001BLL, 0x80000001DA42DD10);
  sub_1DA422194();
  MEMORY[0x1DA74D370](39, 0xE100000000000000);
  sub_1DA4221D4();
  __break(1u);
}

void sub_1DA3D896C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  v5 = (a1 + 64);
  while (1)
  {
    if (v28 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1DA4223E4();
      __break(1u);
      goto LABEL_22;
    }

    v30 = v4;
    v7 = *(v5 - 4);
    v6 = *(v5 - 3);
    v9 = *(v5 - 2);
    v8 = *(v5 - 1);
    v10 = v5;
    v11 = *v5;
    v12 = *a3;

    v14 = sub_1DA3B7820(v7, v6, v9, v8);
    v15 = v12[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_19;
    }

    v18 = v13;
    if (v12[3] < v17)
    {
      break;
    }

    if (a2)
    {
      if (v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2F8, &qword_1DA4268B8);
      sub_1DA4221B4();
      if (v18)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    v22 = (v21[6] + 32 * v14);
    *v22 = v7;
    v22[1] = v6;
    v22[2] = v9;
    v22[3] = v8;
    *(v21[7] + 8 * v14) = v11;
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v21[2] = v25;
    v5 = v10 + 5;
    v4 = v30 + 1;
    a2 = 1;
  }

  sub_1DA3D7388(v17, a2 & 1);
  v19 = sub_1DA3B7820(v7, v6, v9, v8);
  if ((v18 & 1) != (v20 & 1))
  {
    goto LABEL_21;
  }

  v14 = v19;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();

  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECC0, &unk_1DA423980);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1DA422094();
  MEMORY[0x1DA74D370](0xD00000000000001BLL, 0x80000001DA42DD10);
  sub_1DA422194();
  MEMORY[0x1DA74D370](39, 0xE100000000000000);
  sub_1DA4221D4();
  __break(1u);
}

void sub_1DA3D8C94(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1DA4223E4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1DA3B76EC(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2E8, &qword_1DA4268A8);
      sub_1DA4221B4();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_1DA3D7654(v14, a2 & 1);
  v16 = sub_1DA3B76EC(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();

  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECC0, &unk_1DA423980);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1DA422094();
  MEMORY[0x1DA74D370](0xD00000000000001BLL, 0x80000001DA42DD10);
  sub_1DA422194();
  MEMORY[0x1DA74D370](39, 0xE100000000000000);
  sub_1DA4221D4();
  __break(1u);
}

uint64_t sub_1DA3D8F78(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DA3CCC98();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DA3D9008(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1DA3D9008(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DA422344();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA60, &unk_1DA4268C0);
        v6 = sub_1DA421D74();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DA3D918C(v7, v8, a1, v4);
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
    return sub_1DA3D910C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DA3D910C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 1);
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DA3D918C(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = v24[2];
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[2] = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 - 1) >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 1);
                *v35 = *(v35 - 3);
                v35[2] = *(v35 - 1);
                *(v35 - 2) = v37;
                *(v35 - 1) = v33;
                *(v35 - 3) = v36;
                v35 -= 3;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA3A54F8(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1DA3A54F8(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v7;
      v43[1] = v87;
      v88 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_56:
            if (v50)
            {
              goto LABEL_96;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_99;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_104;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v41 < 2)
          {
            goto LABEL_98;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_71:
          if (v65)
          {
            goto LABEL_101;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_103;
          }

          if (v72 < v64)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
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
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_1DA3D97D8((*a3 + 24 * *v76), (*a3 + 24 * *v78), *a3 + 24 * v79, v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v79 < v77)
          {
            goto LABEL_91;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_92;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_93;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          v5 = 0;
          if (!v82)
          {
            goto LABEL_85;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_94;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_95;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_97;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_100;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_105;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1DA3D96A0(&v90, *result, a3);
LABEL_89:
}

uint64_t sub_1DA3D96A0(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DA3C691C(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1DA3D97D8((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1DA3D97D8(char *a1, char *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1DA3A1FD0(a1, (a2 - a1) / 24, a4);
    v10 = &v4[3 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[2] >= v6[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 3;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = v12[2];
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1DA3A1FD0(a2, (a3 - a2) / 24, a4);
  v10 = &v4[3 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v17 = v6 - 3;
      v13 = v5 + 24 == v6;
      v6 -= 3;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = v17[2];
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 3);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 3;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[3 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

uint64_t sub_1DA3D9980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0A8, &unk_1DA425510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA3D99E8()
{
  result = qword_1EE102230;
  if (!qword_1EE102230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102230);
  }

  return result;
}

unint64_t sub_1DA3D9A3C()
{
  result = qword_1EE102AE8;
  if (!qword_1EE102AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102AE8);
  }

  return result;
}

uint64_t sub_1DA3D9A90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return a2;
}

double sub_1DA3D9AF4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 < 2u || a4 == 4 || a4 == 3)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_9@<X0>(uint64_t a1@<X8>)
{

  return sub_1DA3D78F8(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return sub_1DA422204();
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_1DA421BF4();
}

uint64_t OUTLINED_FUNCTION_32_1(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6C130](v2, a2, 22, 1, 490);
}

void static SiriSuggestionsIntelligence.FeatureId.indexFeatures(_:)(uint64_t a1)
{
  v2 = 0;
  *&v22 = MEMORY[0x1E69E7CC0];
  v3 = sub_1DA3A6D84();
  while (v3 != v2)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1DA74D830](v2, a1);
    }

    else
    {
      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v4 = *(a1 + 8 * v2 + 32);
    }

    v5 = v4;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    v6 = *&v4[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature] == 0x726F727265 && *&v4[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature + 8] == 0xE500000000000000;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {
    }

    else
    {
      sub_1DA422114();
      sub_1DA422144();
      sub_1DA422154();
      sub_1DA422124();
    }

    ++v2;
  }

  v7 = v22;
  v8 = sub_1DA3A6D84();
  v9 = 0;
  v20 = v22 & 0xC000000000000001;
  v10 = MEMORY[0x1E69E7CC0];
  while (v8 != v9)
  {
    if (v20)
    {
      v11 = MEMORY[0x1DA74D830](v9, v7);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_34;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_33;
    }

    v26 = v11;
    sub_1DA3DA4EC(&v26, &v22);

    v13 = v25;
    if (v25)
    {
      v21 = v22;
      v14 = v23;
      v15 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA3A5758();
        v10 = v18;
      }

      v16 = *(v10 + 16);
      if (v16 >= *(v10 + 24) >> 1)
      {
        sub_1DA3A5758();
        v10 = v19;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 40 * v16;
      *(v17 + 32) = v21;
      *(v17 + 48) = v14;
      *(v17 + 56) = v15;
      *(v17 + 64) = v13;
    }

    ++v9;
  }

  sub_1DA3DA444(v10);
}

uint64_t SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(char a1)
{
  result = 0x6974736567677573;
  switch(a1)
  {
    case 1:
      return 0x79726576696C6564;
    case 2:
      v4 = 0x656372756F73;
      return v4 & 0xFFFFFFFFFFFFLL | 0x774F000000000000;
    case 3:
      v4 = 0x746567726174;
      return v4 & 0xFFFFFFFFFFFFLL | 0x774F000000000000;
    case 4:
      return 0x6C656E6E616863;
    case 5:
      return 0x6E656469666E6F63;
    case 6:
      v3 = 1769172848;
      return v3 | 0x6E6F697400000000;
    case 7:
      return 1919248756;
    case 8:
      return 0x6979616C50776F6ELL;
    case 9:
      return 0x63416E6F69746F6DLL;
    case 10:
      return 0x646F4D7375636F66;
    case 11:
      return 0xD000000000000011;
    case 12:
      v3 = 1633906540;
      return v3 | 0x6E6F697400000000;
    case 13:
    case 38:
      return 0xD000000000000014;
    case 14:
      return 0xD000000000000011;
    case 15:
      return 0xD000000000000010;
    case 16:
    case 26:
      return 0xD000000000000012;
    case 17:
      return 0xD000000000000011;
    case 18:
      return 0x616C707269416E69;
    case 19:
      v5 = 0x6574754D7369;
      goto LABEL_38;
    case 20:
      return 0x6863746157736168;
    case 21:
      v5 = 0x615049736168;
LABEL_38:
      result = v5 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 22:
      result = 0x50656D6F48736168;
      break;
    case 23:
      result = 0x656C707041736168;
      break;
    case 24:
      result = 0x6E6F685049736168;
      break;
    case 25:
      result = 0x6D754E6C61746F74;
      break;
    case 27:
      result = 0xD000000000000011;
      break;
    case 28:
      result = 0x56646C697542736FLL;
      break;
    case 29:
      result = 0xD000000000000017;
      break;
    case 30:
      result = 0xD000000000000013;
      break;
    case 31:
      result = 0x7373615041736168;
      break;
    case 32:
      result = 0x7374726F70707573;
      break;
    case 33:
      result = 0x6144664F72756F68;
      break;
    case 34:
      result = 0x656557664F796164;
      break;
    case 35:
      result = 0x6D6954796C696164;
      break;
    case 36:
      result = 0x726F727265;
      break;
    case 37:
      result = 0x6D67655372657375;
      break;
    case 39:
    case 40:
    case 41:
      result = 0x7461654674736574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA3DA444(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF300, &unk_1DA4268D0);
    v3 = sub_1DA422214();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1DA3DD368(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_1DA3DA4EC(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *a1 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature;
  v5 = *(v4 + 1);
  *&v75 = *v4;
  *(&v75 + 1) = v5;
  v6 = sub_1DA3A6A84();

  v7 = MEMORY[0x1DA74D750](2302755, 0xE300000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v6);

  v8 = v7[2];
  if (!v8)
  {

    if (qword_1EE100EF8 != -1)
    {
      swift_once();
    }

    v34 = sub_1DA421A94();
    __swift_project_value_buffer(v34, static Logger.conversionCategory);
    v35 = v3;
    v36 = sub_1DA421A74();
    v37 = sub_1DA421F74();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v75 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_1DA3A5FE8(*v4, *(v4 + 1), &v75);
      _os_log_impl(&dword_1DA39E000, v36, v37, "Unknown components in featureKey: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1DA74E430](v39, -1, -1);
      MEMORY[0x1DA74E430](v38, -1, -1);
    }

LABEL_13:

LABEL_24:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v78 = v3;
  if (v8 != 1)
  {
    v40 = v7[4];
    v41 = v7[5];
    v42 = v7[6];
    v43 = v7[7];
    if (sub_1DA3DD2D0(0x6974736567677573, 0xEA00000000006E6FLL, v40, v41, v42, v43))
    {
      v44 = sub_1DA3DACA0(v7, *v4, *(v4 + 1));
    }

    else
    {
      if ((sub_1DA3DD2D0(0x6E6F69746361, 0xE600000000000000, v40, v41, v42, v43) & 1) == 0)
      {

        goto LABEL_24;
      }

      v44 = sub_1DA3DAF08(v7, *v4, *(v4 + 1));
    }

    v48 = v44;
    v49 = v45;
    v50 = v46;
    v51 = v47;

    if (v51 == 0xFF)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  v74 = *(v7 + 2);
  v9 = v7[6];
  v10 = v7[7];

  v75 = v74;
  v76 = v9;
  v77 = v10;
  v11 = sub_1DA3DE834();
  v12 = MEMORY[0x1DA74D750](95, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E67B0], v11);

  if (!v12[2])
  {
    goto LABEL_23;
  }

  v71 = v12[5];
  v72 = v12[4];
  v13 = v12[7];
  v73 = v12[6];
  v14 = sub_1DA3DABE8(v12);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if (!v20)
  {
    goto LABEL_23;
  }

  *&v75 = v14;
  *(&v75 + 1) = v16;
  v76 = v18;
  v77 = v20;
  v21 = MEMORY[0x1DA74D750](64, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E67B0], v11);

  if (v21[2] == 2)
  {
    v68 = v21[4];
    v69 = v21[5];
    v22 = v21[7];
    v70 = v21[6];
    v23 = sub_1DA3DABE8(v21);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    if (v29)
    {
      v30 = MEMORY[0x1DA74D340](v23, v25, v27, v29);
      v32 = v31;

      v33 = sub_1DA3F404C(v30, v32);

      if (v33 != 5)
      {
        if (sub_1DA3DDA3C(v72, v71, v73, v13, 0x6567617355707061, 0xE800000000000000))
        {

          v48 = MEMORY[0x1DA74D340](v68, v69, v70, v22);
          v49 = v57;

          v50 = v33;
          v51 = 3;
          goto LABEL_26;
        }

        if (sub_1DA3DDA3C(v72, v71, v73, v13, 0x6567617355746163, 0xE800000000000000))
        {

          v48 = MEMORY[0x1DA74D340](v68, v69, v70, v22);
          v49 = v58;

          v50 = v33;
          v51 = 4;
          goto LABEL_26;
        }

        if (qword_1EE100EF8 != -1)
        {
          swift_once();
        }

        v59 = sub_1DA421A94();
        __swift_project_value_buffer(v59, static Logger.conversionCategory);

        v60 = v78;
        v36 = sub_1DA421A74();
        v61 = sub_1DA421F74();

        if (os_log_type_enabled(v36, v61))
        {
          v62 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *&v75 = v78;
          *v62 = 136315394;
          *(v62 + 4) = sub_1DA3A5FE8(*v4, *(v4 + 1), &v75);
          *(v62 + 12) = 2080;
          v63 = MEMORY[0x1DA74D340](v72, v71, v73, v13);
          v65 = v64;

          v66 = sub_1DA3A5FE8(v63, v65, &v75);

          *(v62 + 14) = v66;
          _os_log_impl(&dword_1DA39E000, v36, v61, "Unknown usage component type in featureKey: %s of %s", v62, 0x16u);
          v67 = v78;
          swift_arrayDestroy();
          MEMORY[0x1DA74E430](v67, -1, -1);
          MEMORY[0x1DA74E430](v62, -1, -1);
        }

        else
        {
        }

        goto LABEL_13;
      }
    }
  }

LABEL_23:

  v53 = *v4;
  v52 = *(v4 + 1);

  v54 = SiriSuggestionsIntelligence.FeatureIdType.init(rawValue:)(v53, v52);
  if (v54 == 42)
  {
    goto LABEL_24;
  }

  v49 = 0;
  v50 = 0;
  v48 = v54;
  v51 = 2;
LABEL_26:
  *a2 = v48;
  *(a2 + 8) = v49;
  *(a2 + 16) = v50;
  *(a2 + 24) = v51;
  v55 = v78;
  *(a2 + 32) = v78;
  v56 = v55;
}

uint64_t sub_1DA3DABE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

unint64_t SiriSuggestionsIntelligence.FeatureIdType.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA4223B4();

  if (v2 >= 0x2A)
  {
    return 42;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DA3DACA0(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1[2] != 3)
  {
    if (qword_1EE100EF8 != -1)
    {
      swift_once();
    }

    v18 = sub_1DA421A94();
    __swift_project_value_buffer(v18, static Logger.conversionCategory);

    v19 = sub_1DA421A74();
    v20 = sub_1DA421F74();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315394;
      v23 = MEMORY[0x1DA74D4B0](a1, MEMORY[0x1E69E67B0]);
      v25 = sub_1DA3A5FE8(v23, v24, &v28);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1DA3A5FE8(a2, a3, &v28);
      _os_log_impl(&dword_1DA39E000, v19, v20, "Unknown suggestion components in featureKey: %s from: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA74E430](v22, -1, -1);
      MEMORY[0x1DA74E430](v21, -1, -1);
    }

    return 0;
  }

  v4 = a1[8];
  v5 = a1[9];
  v7 = a1[10];
  v6 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  v11 = a1[14];
  v10 = a1[15];

  v12 = MEMORY[0x1DA74D340](v8, v9, v11, v10);
  v14 = v13;

  v15 = SiriSuggestionsIntelligence.FeatureIdType.init(rawValue:)(v12, v14);
  if (v15 == 42)
  {

    return 0;
  }

  v27 = v15;
  MEMORY[0x1DA74D340](v4, v5, v7, v6);

  return v27;
}

uint64_t sub_1DA3DAF08(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1[2] != 3)
  {
    if (qword_1EE100EF8 != -1)
    {
      swift_once();
    }

    v18 = sub_1DA421A94();
    __swift_project_value_buffer(v18, static Logger.conversionCategory);

    v19 = sub_1DA421A74();
    v20 = sub_1DA421F74();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315394;
      v23 = MEMORY[0x1DA74D4B0](a1, MEMORY[0x1E69E67B0]);
      v25 = sub_1DA3A5FE8(v23, v24, &v28);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1DA3A5FE8(a2, a3, &v28);
      _os_log_impl(&dword_1DA39E000, v19, v20, "Unknown suggestion components in featureKey: %s from: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA74E430](v22, -1, -1);
      MEMORY[0x1DA74E430](v21, -1, -1);
    }

    return 0;
  }

  v4 = a1[8];
  v5 = a1[9];
  v7 = a1[10];
  v6 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  v11 = a1[14];
  v10 = a1[15];

  v12 = MEMORY[0x1DA74D340](v8, v9, v11, v10);
  v14 = v13;

  v15 = SiriSuggestionsIntelligence.FeatureIdType.init(rawValue:)(v12, v14);
  if (v15 == 42)
  {

    return 0;
  }

  v27 = v15;
  MEMORY[0x1DA74D340](v4, v5, v7, v6);

  return v27;
}

uint64_t sub_1DA3DB170(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496E6F69746361 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DA3DB238(char a1)
{
  if (a1)
  {
    return 0x64496E6F69746361;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1DA3DB268(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DA42DD30 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DA3DB334(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6449707061;
  }
}

uint64_t sub_1DA3DB36C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DA42DD30 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DA3DB43C(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_1DA3DB478(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x75747865746E6F63 && a2 == 0xEA00000000006C61;
      if (v7 || (sub_1DA4223A4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7368801 && a2 == 0xE300000000000000;
        if (v8 || (sub_1DA4223A4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DA4223A4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1DA3DB630(char a1)
{
  result = 0x6974736567677573;
  switch(a1)
  {
    case 1:
      result = 0x6E6F69746361;
      break;
    case 2:
      result = 0x75747865746E6F63;
      break;
    case 3:
      result = 7368801;
      break;
    case 4:
      result = 0x79726F6765746163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA3DB6D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEC00000064496E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DA3DB79C(char a1)
{
  if (a1)
  {
    return 0x6974736567677573;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1DA3DB7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3DB170(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3DB804(uint64_t a1)
{
  v2 = sub_1DA3DD994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3DB840(uint64_t a1)
{
  v2 = sub_1DA3DD994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3DB884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3DB268(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3DB8AC(uint64_t a1)
{
  v2 = sub_1DA3DD898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3DB8E8(uint64_t a1)
{
  v2 = sub_1DA3DD898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3DB92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3DB36C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3DB954(uint64_t a1)
{
  v2 = sub_1DA3DD7F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3DB990(uint64_t a1)
{
  v2 = sub_1DA3DD7F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3DB9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3DB478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3DB9FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA3DB628();
  *a1 = result;
  return result;
}

uint64_t sub_1DA3DBA24(uint64_t a1)
{
  v2 = sub_1DA3DD79C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3DBA60(uint64_t a1)
{
  v2 = sub_1DA3DD79C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3DBA9C(uint64_t a1)
{
  v2 = sub_1DA3DD8EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3DBAD8(uint64_t a1)
{
  v2 = sub_1DA3DD8EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3DBB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3DB6D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3DBB44(uint64_t a1)
{
  v2 = sub_1DA3DD9E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3DBB80(uint64_t a1)
{
  v2 = sub_1DA3DD9E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static SiriSuggestionsIntelligence.FeatureId.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a5;
  switch(a4)
  {
    case 1:
      if (a8 != 1)
      {
        return 0;
      }

      goto LABEL_20;
    case 2:
      if (a8 != 2)
      {
        return 0;
      }

      v13 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
      v15 = v14;
      if (v13 != SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v10) || v15 != v16)
      {
        v18 = sub_1DA4223A4();

        return v18 & 1;
      }

      return 1;
    case 3:
      if (a8 == 3)
      {
        goto LABEL_13;
      }

      return 0;
    case 4:
      if (a8 != 4)
      {
        return 0;
      }

LABEL_13:
      v20 = a1 == a5 && a2 == a6;
      if (!v20 && (sub_1DA4223A4() & 1) == 0)
      {
        return 0;
      }

      return a7 == a3;
    default:
      if (a8)
      {
        return 0;
      }

LABEL_20:
      v21 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
      v23 = v22;
      if (v21 == SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v10) && v23 == v24)
      {
      }

      else
      {
        v26 = sub_1DA4223A4();

        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }

      if (a2 == a6 && a3 == a7)
      {
        return 1;
      }

      return sub_1DA4223A4();
  }
}

uint64_t SiriSuggestionsIntelligence.FeatureId.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a2;
  v67 = a3;
  v68 = a5;
  v66 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF308, &qword_1DA426910);
  OUTLINED_FUNCTION_3_1();
  v64 = v8;
  v65 = v7;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_5();
  v63 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF310, &qword_1DA426918);
  OUTLINED_FUNCTION_3_1();
  v61 = v12;
  v62 = v11;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10_5();
  v60 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF318, &qword_1DA426920);
  OUTLINED_FUNCTION_3_1();
  v58 = v16;
  v59 = v15;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF320, &qword_1DA426928);
  OUTLINED_FUNCTION_3_1();
  v56 = v21;
  v57 = v20;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v55 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF328, &qword_1DA426930);
  OUTLINED_FUNCTION_3_1();
  v55 = v26;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v55 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF330, &qword_1DA426938);
  OUTLINED_FUNCTION_3_1();
  v71 = v30;
  v72 = v31;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v55 - v33;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3DD79C();
  v35 = v34;
  sub_1DA422494();
  switch(v68)
  {
    case 1:
      v74 = 1;
      sub_1DA3DD994();
      v52 = v71;
      sub_1DA4222D4();
      v74 = v69;
      v73 = 0;
      sub_1DA3DD940();
      v53 = v57;
      v54 = v70;
      sub_1DA422334();
      if (!v54)
      {
        v74 = 1;
        sub_1DA4222F4();
      }

      (*(v56 + 8))(v24, v53);
      OUTLINED_FUNCTION_4_10();
      v38 = v35;
      v50 = v52;
      return v37(v38, v50);
    case 2:
      v74 = 2;
      sub_1DA3DD8EC();
      OUTLINED_FUNCTION_6_10();
      v40 = v34;
      sub_1DA4222D4();
      v74 = v69;
      sub_1DA3DD940();
      v46 = v59;
      sub_1DA422334();
      (*(v58 + 8))(v19, v46);
      goto LABEL_13;
    case 3:
      v74 = 3;
      sub_1DA3DD898();
      v39 = v60;
      OUTLINED_FUNCTION_6_10();
      v40 = v34;
      sub_1DA4222D4();
      OUTLINED_FUNCTION_14_3();
      v41 = v62;
      sub_1DA4222F4();
      if (!v5)
      {
        v74 = v66;
        OUTLINED_FUNCTION_10_7();
        v47 = sub_1DA3DD844();
        OUTLINED_FUNCTION_12_5(v47, v48, v49, &type metadata for SiriSuggestionsIntelligence.RelativeTimePartition, v47);
      }

      v45 = v61;
      goto LABEL_12;
    case 4:
      v74 = 4;
      sub_1DA3DD7F0();
      v39 = v63;
      OUTLINED_FUNCTION_6_10();
      v40 = v34;
      sub_1DA4222D4();
      OUTLINED_FUNCTION_14_3();
      v41 = v65;
      sub_1DA4222F4();
      if (!v5)
      {
        v74 = v66;
        OUTLINED_FUNCTION_10_7();
        v42 = sub_1DA3DD844();
        OUTLINED_FUNCTION_12_5(v42, v43, v44, &type metadata for SiriSuggestionsIntelligence.RelativeTimePartition, v42);
      }

      v45 = v64;
LABEL_12:
      (*(v45 + 8))(v39, v41);
LABEL_13:
      OUTLINED_FUNCTION_4_10();
      v38 = v40;
      break;
    default:
      v74 = 0;
      sub_1DA3DD9E8();
      OUTLINED_FUNCTION_6_10();
      sub_1DA4222D4();
      v74 = v69;
      v73 = 0;
      sub_1DA3DD940();
      v36 = v70;
      sub_1DA422334();
      if (!v36)
      {
        v74 = 1;
        sub_1DA4222F4();
      }

      (*(v55 + 8))(v29, v25);
      OUTLINED_FUNCTION_4_10();
      v38 = v34;
      break;
  }

  v50 = v24;
  return v37(v38, v50);
}

uint64_t SiriSuggestionsIntelligence.FeatureId.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a4;
  v6 = a2;
  switch(a5)
  {
    case 1:
      v7 = 1;
      goto LABEL_10;
    case 2:
      MEMORY[0x1DA74DBB0](2);
      SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v6);
      sub_1DA421BF4();

    case 3:
      v8 = 3;
      goto LABEL_8;
    case 4:
      v8 = 4;
LABEL_8:
      MEMORY[0x1DA74DBB0](v8);
      sub_1DA421BF4();
      result = MEMORY[0x1DA74DBB0](v5);
      break;
    default:
      v7 = 0;
LABEL_10:
      MEMORY[0x1DA74DBB0](v7);
      SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v6);
      sub_1DA421BF4();

      result = sub_1DA421BF4();
      break;
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.FeatureId.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1DA422434();
  SiriSuggestionsIntelligence.FeatureId.hash(into:)(v9, a1, a2, a3, a4);
  return sub_1DA422474();
}

uint64_t SiriSuggestionsIntelligence.FeatureId.init(from:)(void *a1)
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF378, &qword_1DA426940);
  OUTLINED_FUNCTION_3_1();
  v82 = v2;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_5();
  v86 = v4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF380, &qword_1DA426948);
  OUTLINED_FUNCTION_3_1();
  v81 = v5;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_5();
  v84 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF388, &qword_1DA426950);
  OUTLINED_FUNCTION_3_1();
  v77 = v9;
  v78 = v8;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_5();
  v83 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF390, &qword_1DA426958);
  OUTLINED_FUNCTION_3_1();
  v79 = v13;
  v80 = v12;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF398, &qword_1DA426960);
  OUTLINED_FUNCTION_3_1();
  v76 = v18;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF3A0, &unk_1DA426968);
  OUTLINED_FUNCTION_3_1();
  v24 = v23;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v70 - v26;
  v28 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1DA3DD79C();
  v29 = v89;
  sub_1DA422484();
  if (v29)
  {
    goto LABEL_11;
  }

  v72 = v17;
  v73 = v21;
  v74 = v16;
  v75 = 0;
  v89 = v24;
  sub_1DA4222C4();
  result = sub_1DA3C2AA0();
  v34 = v22;
  if (v32 == v33 >> 1)
  {
    v35 = v27;
LABEL_10:
    v43 = sub_1DA4220F4();
    swift_allocError();
    v27 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620);
    *v27 = &type metadata for SiriSuggestionsIntelligence.FeatureId;
    sub_1DA422254();
    sub_1DA4220E4();
    (*(*(v43 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_4_10();
    v45(v35, v34);
LABEL_11:
    v42 = v88;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(v42);
    return v27;
  }

  if (v32 < (v33 >> 1))
  {
    v71 = *(v31 + v32);
    sub_1DA3C2A9C();
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();
    if (v37 == v39 >> 1)
    {
      v40 = v22;
      switch(v71)
      {
        case 1:
          v91 = 1;
          sub_1DA3DD994();
          v51 = v75;
          OUTLINED_FUNCTION_2_12();
          sub_1DA422244();
          if (v51)
          {
            goto LABEL_20;
          }

          v90 = 0;
          sub_1DA3DDB04();
          OUTLINED_FUNCTION_15_2();
          OUTLINED_FUNCTION_17_4();
          v56 = v89;
          v60 = v27;
          v27 = v91;
          OUTLINED_FUNCTION_10_7();
          OUTLINED_FUNCTION_18_4();
          v75 = 0;
          swift_unknownObjectRelease();
          v68 = OUTLINED_FUNCTION_5_10();
          v69(v68);
          (*(v56 + 8))(v60, v40);
          v42 = v88;
          break;
        case 2:
          v91 = 2;
          sub_1DA3DD8EC();
          OUTLINED_FUNCTION_2_12();
          v47 = v75;
          sub_1DA422244();
          v42 = v88;
          if (v47)
          {
            goto LABEL_16;
          }

          sub_1DA3DDB04();
          sub_1DA4222B4();
          v55 = v89;
          v75 = 0;
          swift_unknownObjectRelease();
          v57 = OUTLINED_FUNCTION_16_2();
          v58(v57);
          (*(v55 + 8))(v27, v40);
          v27 = v91;
          break;
        case 3:
          v91 = 3;
          sub_1DA3DD898();
          OUTLINED_FUNCTION_2_12();
          v50 = v75;
          sub_1DA422244();
          v42 = v88;
          if (v50)
          {
            goto LABEL_16;
          }

          OUTLINED_FUNCTION_13_3();
          v27 = sub_1DA422274();
          OUTLINED_FUNCTION_10_7();
          sub_1DA3DDAB0();
          OUTLINED_FUNCTION_15_2();
          sub_1DA4222B4();
          v75 = 0;
          swift_unknownObjectRelease();
          v61 = OUTLINED_FUNCTION_7_7();
          goto LABEL_25;
        case 4:
          v91 = 4;
          sub_1DA3DD7F0();
          OUTLINED_FUNCTION_2_12();
          v46 = v75;
          sub_1DA422244();
          if (v46)
          {
LABEL_20:
            v52 = OUTLINED_FUNCTION_1_12();
            v53(v52);
            swift_unknownObjectRelease();
            v42 = v88;
          }

          else
          {
            OUTLINED_FUNCTION_13_3();
            v54 = sub_1DA422274();
            v42 = v88;
            v27 = v54;
            OUTLINED_FUNCTION_10_7();
            sub_1DA3DDAB0();
            OUTLINED_FUNCTION_15_2();
            sub_1DA4222B4();
            v75 = 0;
            swift_unknownObjectRelease();
            v61 = OUTLINED_FUNCTION_9_9();
LABEL_25:
            v62(v61);
            v63 = OUTLINED_FUNCTION_8_10();
            v64(v63);
          }

          break;
        default:
          v91 = 0;
          sub_1DA3DD9E8();
          OUTLINED_FUNCTION_2_12();
          v41 = v75;
          sub_1DA422244();
          v42 = v88;
          if (v41)
          {
LABEL_16:
            v48 = OUTLINED_FUNCTION_1_12();
            v49(v48);
            swift_unknownObjectRelease();
          }

          else
          {
            v90 = 0;
            sub_1DA3DDB04();
            OUTLINED_FUNCTION_15_2();
            OUTLINED_FUNCTION_17_4();
            v59 = v27;
            v27 = v91;
            OUTLINED_FUNCTION_10_7();
            OUTLINED_FUNCTION_18_4();
            v75 = 0;
            swift_unknownObjectRelease();
            v65 = OUTLINED_FUNCTION_5_10();
            v66(v65);
            OUTLINED_FUNCTION_4_10();
            v67(v59, v40);
          }

          break;
      }

      goto LABEL_12;
    }

    v35 = v27;
    v34 = v22;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA3DD088@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = SiriSuggestionsIntelligence.FeatureId.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_1DA3DD100(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1DA422434();
  SiriSuggestionsIntelligence.FeatureId.hash(into:)(v7, v2, v3, v4, v5);
  return sub_1DA422474();
}

unint64_t sub_1DA3DD1B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.FeatureIdType.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DA3DD1E4@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DA3DD2D0(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a1 == a5 && a2 == a6;
  if (v8 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1DA422354() & 1;
  }
}

unint64_t sub_1DA3DD344(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DA3DD368(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v42 = *(a1 + 16);
  for (i = (a1 + 64); ; i += 5)
  {
    if (v42 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v45 = v4;
    v7 = *(i - 4);
    v6 = *(i - 3);
    v8 = *(i - 2);
    v9 = *(i - 8);
    v10 = *i;
    v11 = *a3;
    sub_1DA3D9AF4(v7, v6, v8, *(i - 8));
    v46 = v10;
    v13 = sub_1DA3B77A8(v7, v6, v8, v9);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_22;
    }

    v17 = v12;
    if (v11[3] >= v16)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF470, &unk_1DA427300);
        sub_1DA4221B4();
      }
    }

    else
    {
      sub_1DA3D67EC(v16, a2 & 1);
      v18 = sub_1DA3B77A8(v7, v6, v8, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_24;
      }

      v13 = v18;
    }

    v20 = *a3;
    if (v17)
    {
      v41 = i;
      v21 = qword_1EE102E00;
      v22 = *(v20[7] + 8 * v13);
      if (v21 != -1)
      {
        swift_once();
      }

      v23 = sub_1DA421A94();
      __swift_project_value_buffer(v23, static Logger.extractionCategory);
      v24 = v22;
      v25 = sub_1DA421A74();
      v26 = sub_1DA421F74();
      v44 = v24;

      if (os_log_type_enabled(v25, v26))
      {
        buf = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v48 = v40;
        *buf = 136315138;
        log = v25;
        v28 = *&v24[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature];
        v27 = *&v24[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature + 8];

        v29 = sub_1DA3A5FE8(v28, v27, &v48);

        *(buf + 4) = v29;
        _os_log_impl(&dword_1DA39E000, log, v26, "We shouldnt have duplicate keys. Please check feature extraction for: %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x1DA74E430](v40, -1, -1);
        MEMORY[0x1DA74E430](buf, -1, -1);
      }

      else
      {
      }

      sub_1DA3B8188(v7, v6, v8, v9);
      v35 = v20[7];
      v36 = *(v35 + 8 * v13);
      *(v35 + 8 * v13) = v44;

      v34 = v45;
      i = v41;
    }

    else
    {
      v20[(v13 >> 6) + 8] |= 1 << v13;
      v30 = v20[6] + 32 * v13;
      *v30 = v7;
      *(v30 + 8) = v6;
      *(v30 + 16) = v8;
      *(v30 + 24) = v9;
      *(v20[7] + 8 * v13) = v46;
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_23;
      }

      v20[2] = v33;
      v34 = v45;
    }

    v4 = v34 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1DA4223E4();
  __break(1u);
  return result;
}

void (*sub_1DA3DD708(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1DA3DD338(a3);
  sub_1DA3DD344(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1DA74D830](a2, a3);
  }

  *a1 = v7;
  return sub_1DA3DD794;
}

unint64_t sub_1DA3DD79C()
{
  result = qword_1ECBAF338;
  if (!qword_1ECBAF338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF338);
  }

  return result;
}

unint64_t sub_1DA3DD7F0()
{
  result = qword_1ECBAF340;
  if (!qword_1ECBAF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF340);
  }

  return result;
}

unint64_t sub_1DA3DD844()
{
  result = qword_1ECBAF348;
  if (!qword_1ECBAF348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF348);
  }

  return result;
}

unint64_t sub_1DA3DD898()
{
  result = qword_1ECBAF350;
  if (!qword_1ECBAF350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF350);
  }

  return result;
}

unint64_t sub_1DA3DD8EC()
{
  result = qword_1ECBAF358;
  if (!qword_1ECBAF358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF358);
  }

  return result;
}

unint64_t sub_1DA3DD940()
{
  result = qword_1ECBAF360;
  if (!qword_1ECBAF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF360);
  }

  return result;
}

unint64_t sub_1DA3DD994()
{
  result = qword_1ECBAF368;
  if (!qword_1ECBAF368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF368);
  }

  return result;
}

unint64_t sub_1DA3DD9E8()
{
  result = qword_1ECBAF370;
  if (!qword_1ECBAF370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF370);
  }

  return result;
}

uint64_t sub_1DA3DDA3C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v7 = a3 == a5 && a4 == a6;
  if (v7 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1DA422354() & 1;
  }
}

unint64_t sub_1DA3DDAB0()
{
  result = qword_1ECBAF3A8;
  if (!qword_1ECBAF3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF3A8);
  }

  return result;
}

unint64_t sub_1DA3DDB04()
{
  result = qword_1ECBAF3B0;
  if (!qword_1ECBAF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF3B0);
  }

  return result;
}

unint64_t sub_1DA3DDB5C()
{
  result = qword_1ECBAF3B8;
  if (!qword_1ECBAF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF3B8);
  }

  return result;
}

unint64_t sub_1DA3DDBB4()
{
  result = qword_1ECBAF3C0;
  if (!qword_1ECBAF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF3C0);
  }

  return result;
}

unint64_t sub_1DA3DDC0C()
{
  result = qword_1ECBAF3C8;
  if (!qword_1ECBAF3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAF3D0, &qword_1DA426AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF3C8);
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

uint64_t sub_1DA3DDC90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 4)
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

uint64_t sub_1DA3DDCD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t _s13FeatureIdTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD7)
  {
    if (a2 + 41 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 41) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 42;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2A;
  v5 = v6 - 42;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13FeatureIdTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 41 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 41) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD6)
  {
    v6 = ((a2 - 215) >> 8) + 1;
    *result = a2 + 41;
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
          *result = a2 + 41;
        }

        break;
    }
  }

  return result;
}

uint64_t _s9FeatureIdO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s9FeatureIdO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s9FeatureIdO20ContextualCodingKeysOwst(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1DA3DE0D4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA3DE1B4()
{
  result = qword_1ECBAF3D8;
  if (!qword_1ECBAF3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF3D8);
  }

  return result;
}

unint64_t sub_1DA3DE20C()
{
  result = qword_1ECBAF3E0;
  if (!qword_1ECBAF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF3E0);
  }

  return result;
}

unint64_t sub_1DA3DE264()
{
  result = qword_1ECBAF3E8;
  if (!qword_1ECBAF3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF3E8);
  }

  return result;
}

unint64_t sub_1DA3DE2BC()
{
  result = qword_1ECBAF3F0;
  if (!qword_1ECBAF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF3F0);
  }

  return result;
}

unint64_t sub_1DA3DE314()
{
  result = qword_1ECBAF3F8;
  if (!qword_1ECBAF3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF3F8);
  }

  return result;
}

unint64_t sub_1DA3DE36C()
{
  result = qword_1ECBAF400;
  if (!qword_1ECBAF400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF400);
  }

  return result;
}

unint64_t sub_1DA3DE3C4()
{
  result = qword_1ECBAF408;
  if (!qword_1ECBAF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF408);
  }

  return result;
}

unint64_t sub_1DA3DE41C()
{
  result = qword_1ECBAF410;
  if (!qword_1ECBAF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF410);
  }

  return result;
}

unint64_t sub_1DA3DE474()
{
  result = qword_1ECBAF418;
  if (!qword_1ECBAF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF418);
  }

  return result;
}

unint64_t sub_1DA3DE4CC()
{
  result = qword_1ECBAF420;
  if (!qword_1ECBAF420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF420);
  }

  return result;
}

unint64_t sub_1DA3DE524()
{
  result = qword_1ECBAF428;
  if (!qword_1ECBAF428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF428);
  }

  return result;
}

unint64_t sub_1DA3DE57C()
{
  result = qword_1ECBAF430;
  if (!qword_1ECBAF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF430);
  }

  return result;
}

unint64_t sub_1DA3DE5D4()
{
  result = qword_1ECBAF438;
  if (!qword_1ECBAF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF438);
  }

  return result;
}

unint64_t sub_1DA3DE62C()
{
  result = qword_1ECBAF440;
  if (!qword_1ECBAF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF440);
  }

  return result;
}

unint64_t sub_1DA3DE684()
{
  result = qword_1ECBAF448;
  if (!qword_1ECBAF448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF448);
  }

  return result;
}

unint64_t sub_1DA3DE6DC()
{
  result = qword_1ECBAF450;
  if (!qword_1ECBAF450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF450);
  }

  return result;
}

unint64_t sub_1DA3DE734()
{
  result = qword_1ECBAF458;
  if (!qword_1ECBAF458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF458);
  }

  return result;
}

unint64_t sub_1DA3DE78C()
{
  result = qword_1ECBAF460;
  if (!qword_1ECBAF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF460);
  }

  return result;
}

unint64_t sub_1DA3DE7E0()
{
  result = qword_1ECBAF468;
  if (!qword_1ECBAF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF468);
  }

  return result;
}

unint64_t sub_1DA3DE834()
{
  result = qword_1ECBAF478;
  if (!qword_1ECBAF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF478);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DA422334();
}

uint64_t OUTLINED_FUNCTION_13_3()
{
  *(v1 - 136) = v0;
  *(v1 - 65) = 0;
  return v1 - 65;
}

void *OUTLINED_FUNCTION_17_4()
{

  return sub_1DA4222B4();
}

uint64_t OUTLINED_FUNCTION_18_4()
{

  return sub_1DA422274();
}

uint64_t sub_1DA3DE9E8(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = a3;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1DA3B03D0(0, v4, 0);
    v8 = sub_1DA3E31C0(v6);
    result = v46;
    v10 = v9;
    v11 = 0;
    v12 = v6 + 56;
    v36 = v6 + 64;
    v37 = v4;
    v40 = v6;
    v38 = v6 + 56;
    if ((v8 & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(v6 + 32))
      {
        v13 = v8 >> 6;
        v14 = 1 << v8;
        if ((*(v12 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v6 + 36) != v7)
        {
          goto LABEL_27;
        }

        v41 = v11;
        v42 = v7;
        v15 = result;
        v16 = v8;
        v17 = (*(v6 + 48) + 16 * v8);
        v18 = v17[1];
        v43[0] = *v17;
        v43[1] = v18;

        (a1)(&v44, v43);
        if (v3)
        {
          goto LABEL_31;
        }

        v19 = v44;
        v20 = v45;
        result = v15;
        v46 = v15;
        v21 = *(v15 + 16);
        v22 = *(result + 24);
        if (v21 >= v22 >> 1)
        {
          v35 = v45;
          sub_1DA3B03D0(v22 > 1, v21 + 1, 1);
          v20 = v35;
          result = v46;
        }

        *(result + 16) = v21 + 1;
        v23 = result + 24 * v21;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        if (v10)
        {
          goto LABEL_32;
        }

        v6 = v40;
        v24 = 1 << *(v40 + 32);
        v12 = v38;
        if (v16 >= v24)
        {
          goto LABEL_28;
        }

        v25 = *(v38 + 8 * v13);
        if ((v25 & v14) == 0)
        {
          goto LABEL_29;
        }

        if (*(v40 + 36) != v42)
        {
          goto LABEL_30;
        }

        v3 = 0;
        v26 = v25 & (-2 << (v16 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v16 & 0x7FFFFFFFFFFFFFC0;
          v27 = v37;
        }

        else
        {
          v28 = v13 << 6;
          v29 = v13 + 1;
          v27 = v37;
          v30 = (v36 + 8 * v13);
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              v33 = result;
              sub_1DA3A2020(v16, v42, 0);
              result = v33;
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_20;
            }
          }

          v34 = result;
          sub_1DA3A2020(v16, v42, 0);
          result = v34;
LABEL_20:
          v6 = v40;
        }

        v11 = v41 + 1;
        if (v41 + 1 == v27)
        {
          return result;
        }

        v10 = 0;
        v7 = *(v6 + 36);
        v8 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:

    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA3DECB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF690, &qword_1DA4275A0);
    v3 = sub_1DA422214();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1DA3E2F94(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_1DA3DED4C(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF680, &qword_1DA427598);
    OUTLINED_FUNCTION_17_3();
    v2 = sub_1DA422214();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_3_3();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (a1[6] + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(a1[7] + 8 * v11);
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);

    v16 = v15;
    swift_dynamicCast();
    sub_1DA3E4034(&v26, v28);
    sub_1DA3E4034(v28, v29);
    sub_1DA3E4034(v29, &v27);
    v17 = sub_1DA3B76EC(v14, v13);
    v18 = v17;
    if (v19)
    {
      v20 = (v2[6] + 16 * v17);
      *v20 = v14;
      v20[1] = v13;

      v21 = (v2[7] + 32 * v18);
      __swift_destroy_boxed_opaque_existential_0(v21);
      sub_1DA3E4034(&v27, v21);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      v22 = (v2[6] + 16 * v17);
      *v22 = v14;
      v22[1] = v13;
      sub_1DA3E4034(&v27, (v2[7] + 32 * v17));
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v2[2] = v25;
      v8 = v9;
    }
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

    v5 = a1[v9 + 8];
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1DA3DEF90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF5C8, &qword_1DA427548);
    OUTLINED_FUNCTION_17_3();
    v2 = sub_1DA422214();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v8 << 6)));

    v11 = v10;
    swift_dynamicCast();
    v12 = sub_1DA422024();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    *(*(v2 + 56) + 8 * v16) = v11;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1DA3DF1E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF670, &qword_1DA427590);
    v2 = sub_1DA422214();
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

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);
    v25 = type metadata accessor for SiriSuggestionsIntelligence.NormalDistribution();
    v26 = sub_1DA3E3FF0(&unk_1ECBAF678);
    *&v24 = v14;
    sub_1DA3A1FF8(&v24, v28);
    sub_1DA3A1FF8(v28, v29);
    sub_1DA3A1FF8(v29, &v27);

    v15 = sub_1DA3B76EC(v13, v12);
    v16 = v15;
    if (v17)
    {
      v18 = (v2[6] + 16 * v15);
      *v18 = v13;
      v18[1] = v12;

      v19 = (v2[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_0(v19);
      sub_1DA3A1FF8(&v27, v19);
      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      v20 = (v2[6] + 16 * v15);
      *v20 = v13;
      v20[1] = v12;
      sub_1DA3A1FF8(&v27, v2[7] + 40 * v15);
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1DA3DF458(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001DA42DDC0 == a2;
  if (v3 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000001DA42DDE0 == a2;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x756F437373616C63 && a2 == 0xEB0000000073746ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DA4223A4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DA3DF578(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0x756F437373616C63;
}

uint64_t sub_1DA3DF5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3DF458(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3DF614(uint64_t a1)
{
  v2 = sub_1DA3DF8A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3DF650(uint64_t a1)
{
  v2 = sub_1DA3DF8A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.FeatureCountsData.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF480, &qword_1DA427310);
  OUTLINED_FUNCTION_3_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3DF8A8();
  sub_1DA422494();
  v20 = a2;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF490, &qword_1DA427318);
  v14 = sub_1DA3DF8FC();
  OUTLINED_FUNCTION_4_11(v14);
  if (!v4)
  {
    v20 = v18;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF4B8, &qword_1DA427328);
    v15 = sub_1DA3DFA08(&unk_1ECBAF4C0);
    OUTLINED_FUNCTION_4_11(v15);
    v20 = a4;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF4E0, &qword_1DA427338);
    v16 = sub_1DA3E0010(&unk_1ECBAF4E8);
    OUTLINED_FUNCTION_4_11(v16);
  }

  return (*(v10 + 8))(v13, v8);
}

unint64_t sub_1DA3DF8A8()
{
  result = qword_1EE1007C8[0];
  if (!qword_1EE1007C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1007C8);
  }

  return result;
}

unint64_t sub_1DA3DF8FC()
{
  result = qword_1ECBAF498;
  if (!qword_1ECBAF498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAF490, &qword_1DA427318);
    sub_1DA3DFE88(&unk_1ECBAF4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF498);
  }

  return result;
}

unint64_t sub_1DA3DF9B4()
{
  result = qword_1ECBAF4B0;
  if (!qword_1ECBAF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF4B0);
  }

  return result;
}

unint64_t sub_1DA3DFA08(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_4(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_7_8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAF4B8, &qword_1DA427328);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA3DFA80()
{
  result = qword_1ECBAF4C8;
  if (!qword_1ECBAF4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECBAF4D0, &qword_1DA427330);
    sub_1DA3E3FF0(&qword_1ECBAEF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF4C8);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.FeatureCountsData.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF4F0, &qword_1DA427340);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x1EEE9AC00](v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3DF8A8();
  sub_1DA422484();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF490, &qword_1DA427318);
  sub_1DA3DFDD0();
  OUTLINED_FUNCTION_0_13();
  sub_1DA4222B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF4B8, &qword_1DA427328);
  sub_1DA3DFA08(&unk_1EE1000B0);
  OUTLINED_FUNCTION_0_13();
  sub_1DA4222B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF4E0, &qword_1DA427338);
  sub_1DA3E0010(&unk_1EE1000A8);
  OUTLINED_FUNCTION_0_13();
  sub_1DA4222B4();
  v4 = OUTLINED_FUNCTION_9_10();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

unint64_t sub_1DA3DFDD0()
{
  result = qword_1EE1000B8;
  if (!qword_1EE1000B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAF490, &qword_1DA427318);
    sub_1DA3DFE88(&unk_1EE1000D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1000B8);
  }

  return result;
}

unint64_t sub_1DA3DFE88(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_4(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_7_8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAF4A8, &qword_1DA427320);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA3DFF00()
{
  result = qword_1EE100858;
  if (!qword_1EE100858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100858);
  }

  return result;
}

unint64_t sub_1DA3DFF54()
{
  result = qword_1EE1000C8;
  if (!qword_1EE1000C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECBAF4D0, &qword_1DA427330);
    sub_1DA3E3FF0(qword_1EE1006A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1000C8);
  }

  return result;
}

unint64_t sub_1DA3E0010(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_4(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_7_8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAF4E0, &qword_1DA427338);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DA3E0074@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.FeatureCountsData.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void *SiriSuggestionsIntelligence.NaiveBayesClassifier.init(modelDescription:parameters:)(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = sub_1DA3E01C4(a2);

  if (v2)
  {
  }

  else
  {
    v6 = objc_allocWithZone(type metadata accessor for SiriSuggestionsIntelligence.NaiveBayesClassifier());
    v5 = sub_1DA3E0504(a1, v5);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

void *sub_1DA3E01C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6A0, &unk_1DA426880);
  result = sub_1DA4221F4();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v27 = result + 8;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      sub_1DA3A69D0(*(a1 + 56) + 32 * v12, v26);
      sub_1DA3A69D0(v26, v24);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF510, &qword_1DA427348);
      if (!swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v26);
      sub_1DA3A1FF8(v22, v25);
      *(v27 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v16 = (v3[6] + 16 * v12);
      *v16 = v14;
      v16[1] = v15;
      result = sub_1DA3A1FF8(v25, v3[7] + 40 * v12);
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_17;
      }

      v3[2] = v19;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_1DA3A6A2C(v22, &qword_1ECBAF5B0, &qword_1DA427530);
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    DynamicType = swift_getDynamicType();
    sub_1DA3E4044();
    swift_allocError();
    *v21 = DynamicType;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v26);
    return v3;
  }

  else
  {
LABEL_5:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

id sub_1DA3E0504(void *a1, uint64_t a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR___NaiveBayesClassifier_modelDescription] = a1;
  *&v3[OBJC_IVAR___NaiveBayesClassifier_parameters] = a2;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  result = a1;
  v20 = result;
  v12 = 0;
  for (i = 0.0; v9; result = __swift_destroy_boxed_opaque_existential_0(v22))
  {
    v14 = v12;
LABEL_9:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_1DA3A7ED4(*(a2 + 56) + 40 * (v15 | (v14 << 6)), v22);
    v16 = v23;
    v17 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v18 = (*(v17 + 24))(v16, v17);
    if (i <= v18)
    {
      i = v18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      *&v3[OBJC_IVAR___NaiveBayesClassifier_numSamples] = i;
      v21.receiver = v3;
      v21.super_class = type metadata accessor for SiriSuggestionsIntelligence.NaiveBayesClassifier();
      v19 = objc_msgSendSuper2(&v21, sel_init);

      return v19;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void SiriSuggestionsIntelligence.NaiveBayesClassifier.prediction(from:options:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  swift_getObjectType();
  v39 = a1;
  v6 = MLFeatureProvider.getRequiredClasses()();
  v8 = v7;
  v40 = v4;
  v9 = [*(v4 + OBJC_IVAR___NaiveBayesClassifier_modelDescription) outputDescriptionsByName];
  sub_1DA3A6990(0, &qword_1EE100078, 0x1E695FE50);
  v10 = sub_1DA421AC4();

  v11 = *(v10 + 16);
  if (v11)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0390(0, v11, 0);
    v12 = v43;
    v14 = sub_1DA3A68F4(v10);
    v15 = v10 + 64;
    v16 = v11 - 1;
    v37 = v8;
    v38 = v10;
    v36 = v10 + 64;
    if ((v14 & 0x8000000000000000) == 0)
    {
      while (v14 < 1 << *(v10 + 32))
      {
        if ((*(v15 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
        {
          goto LABEL_20;
        }

        if (v13 != *(v10 + 36))
        {
          goto LABEL_21;
        }

        v41 = v16;
        v42 = v13;
        v17 = *(v10 + 56);
        v18 = (*(v10 + 48) + 16 * v14);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(v17 + 8 * v14);

        v22 = v21;
        v23 = sub_1DA3E09B8(v19, v20, v22, v8, v40, v39);
        if (v3)
        {

          return;
        }

        v26 = v23;
        v27 = v24;
        v28 = v25;

        v30 = *(v43 + 16);
        v29 = *(v43 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1DA3B0390(v29 > 1, v30 + 1, 1);
        }

        *(v43 + 16) = v30 + 1;
        v31 = (v43 + 24 * v30);
        v31[4] = v26;
        v31[5] = v27;
        v31[6] = v28;
        v10 = v38;
        if (v14 >= -(-1 << *(v38 + 32)))
        {
          goto LABEL_22;
        }

        v15 = v36;
        if ((*(v36 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
        {
          goto LABEL_23;
        }

        if (v42 != *(v38 + 36))
        {
          goto LABEL_24;
        }

        v32 = sub_1DA422014();
        if (!v41)
        {

          goto LABEL_18;
        }

        v14 = v32;
        v13 = *(v38 + 36);
        v16 = v41 - 1;
        v3 = 0;
        v8 = v37;
        if (v32 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v33 = sub_1DA3DECB4(v12);
    sub_1DA3DED4C(v33);

    v34 = objc_allocWithZone(MEMORY[0x1E695FE48]);
    v35 = OUTLINED_FUNCTION_17_3();
    sub_1DA3E24DC(v35);
  }
}

uint64_t sub_1DA3E09B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a4 && !sub_1DA3E0D20(a1, a2, a4))
  {
    if (qword_1ECBAE838 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA421A94();
    __swift_project_value_buffer(v16, static Logger.inferenceCategory);

    v17 = sub_1DA421A74();
    v18 = sub_1DA421F64();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_1DA3A5FE8(a1, a2, &v28);
      *(v19 + 12) = 2080;
      v21 = sub_1DA421EC4();
      v23 = sub_1DA3A5FE8(v21, v22, &v28);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_1DA39E000, v17, v18, "class %s is not in the required classes list: %s. Skipping likelihood computation", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA74E430](v20, -1, -1);
      MEMORY[0x1DA74E430](v19, -1, -1);
    }

    v24 = 0.0;
    goto LABEL_15;
  }

  if (qword_1ECBAE838 != -1)
  {
    swift_once();
  }

  v10 = sub_1DA421A94();
  __swift_project_value_buffer(v10, static Logger.inferenceCategory);

  v11 = sub_1DA421A74();
  v12 = sub_1DA421F64();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1DA3A5FE8(a1, a2, &v28);
    _os_log_impl(&dword_1DA39E000, v11, v12, "Required class asked for: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1DA74E430](v14, -1, -1);
    MEMORY[0x1DA74E430](v13, -1, -1);
  }

  sub_1DA3E0EDC(a6, a1, a2);
  if (!v6)
  {
    v24 = exp(v15);
LABEL_15:
    v25 = objc_opt_self();

    v26 = [v25 featureValueWithDouble_];
  }

  return a1;
}

BOOL sub_1DA3E0D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DA422434();
  sub_1DA421BF4();
  v6 = sub_1DA422474();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_1DA4223A4();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void sub_1DA3E0EDC(void *a1, uint64_t a2, unint64_t a3)
{
  swift_getObjectType();
  v41 = a1;
  v5 = [a1 featureNames];
  v6 = sub_1DA421EB4();

  v7 = 0;
  v8 = v6 + 56;
  v48 = v6;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 56);
  v47 = OBJC_IVAR___NaiveBayesClassifier_parameters;
  v42 = OBJC_IVAR___NaiveBayesClassifier_numSamples;
  v12 = (v9 + 63) >> 6;
  v13 = 0.0;
  v46 = v6 + 56;
  while (v11)
  {
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = (*(v48 + 48) + ((v7 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    v3 = *(v49 + v47);

    v19 = sub_1DA3E1478();
    if (v3[2])
    {
      v21 = sub_1DA3B76EC(v19, v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_16;
      }

      sub_1DA3A7ED4(v3[7] + 40 * v21, v50);
      sub_1DA3A6A2C(v50, &qword_1ECBAF5B0, &qword_1DA427530);
      v24 = sub_1DA421B64();
      v3 = [v41 featureValueForName_];

      if (v3)
      {
        v25 = sub_1DA3E14BC(v18, v17, v3, a2, a3);
        if (v44)
        {
          goto LABEL_37;
        }

        if (v26)
        {
        }

        else
        {
          v27 = *&v25;

          if (v27 != 0.0)
          {

            v8 = v46;
            goto LABEL_24;
          }
        }
      }

      if (qword_1ECBAE838 != -1)
      {
        OUTLINED_FUNCTION_1_11();
        swift_once();
      }

      v28 = sub_1DA421A94();
      __swift_project_value_buffer(v28, static Logger.inferenceCategory);

      v3 = a3;

      v29 = sub_1DA421A74();
      v30 = sub_1DA421F74();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *&v50[0] = swift_slowAlloc();
        *v31 = 136315394;
        v32 = sub_1DA3A5FE8(v18, v17, v50);

        *(v31 + 4) = v32;
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_1DA3A5FE8(a2, a3, v50);
        _os_log_impl(&dword_1DA39E000, v29, v30, "Unknown posterior probability found for feature: %s and class %s. Assigning a global nominal probability", v31, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_17();
      }

      else
      {
      }

      v8 = v46;
      v27 = 1.0 / (*(v49 + v42) + 1.0);
LABEL_24:
      v13 = v13 + log(v27);
    }

    else
    {

LABEL_16:
      v51 = 0;
      memset(v50, 0, sizeof(v50));

      sub_1DA3A6A2C(v50, &qword_1ECBAF5B0, &qword_1DA427530);
      v8 = v46;
    }
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      v33 = COERCE_DOUBLE(sub_1DA3E1644(a2, a3));
      if (v44)
      {

        goto LABEL_30;
      }

      if ((v34 & 1) != 0 || (v35 = v33, v33 == 0.0))
      {
LABEL_30:
        if (qword_1ECBAE838 != -1)
        {
          OUTLINED_FUNCTION_1_11();
          swift_once();
        }

        v36 = sub_1DA421A94();
        __swift_project_value_buffer(v36, static Logger.inferenceCategory);

        v37 = sub_1DA421A74();
        v38 = sub_1DA421F74();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *&v50[0] = v40;
          *v39 = 136315138;
          *(v39 + 4) = sub_1DA3A5FE8(a2, a3, v50);
          _os_log_impl(&dword_1DA39E000, v37, v38, "Unknown prior probability found for class %s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v40);
          OUTLINED_FUNCTION_17();
          OUTLINED_FUNCTION_17();
        }

        v35 = 1.0 / (*(v49 + v42) + 1.0);
      }

      log(v35);
      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v7;
    if (v11)
    {
      v7 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_37:
}

uint64_t sub_1DA3E14BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  sub_1DA3E1478();
  sub_1DA3EE998();

  sub_1DA3E3E80(v17, v14, &qword_1ECBAF5B0, &qword_1DA427530);
  v9 = v15;
  if (v15)
  {
    v10 = v16;
    v11 = COERCE_DOUBLE(__swift_project_boxed_opaque_existential_1(v14, v15));
    v12 = (*(v10 + 32))(a3, a4, a5, 1, v9, v10);
    sub_1DA3A6A2C(v17, &qword_1ECBAF5B0, &qword_1DA427530);
    if (!v5)
    {
      v11 = v12;
    }

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_1DA3A6A2C(v17, &qword_1ECBAF5B0, &qword_1DA427530);
    sub_1DA3A6A2C(v14, &qword_1ECBAF5B0, &qword_1DA427530);
    v11 = 0.0;
  }

  return *&v11;
}

uint64_t sub_1DA3E1644(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + OBJC_IVAR___NaiveBayesClassifier_parameters);
  if (*(v6 + 16) && (v7 = sub_1DA3B76EC(0x6572507373616C63, 0xEF6E6F6974636964), (v8 & 1) != 0))
  {
    sub_1DA3A7ED4(*(v6 + 56) + 40 * v7, v17);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  sub_1DA3E3E80(v17, v14, &qword_1ECBAF5B0, &qword_1DA427530);
  v9 = v15;
  if (v15)
  {
    v10 = v16;
    v11 = COERCE_DOUBLE(__swift_project_boxed_opaque_existential_1(v14, v15));
    v12 = (*(v10 + 32))(a1, a2, 0, 0, v9, v10);
    sub_1DA3A6A2C(v17, &qword_1ECBAF5B0, &qword_1DA427530);
    if (!v3)
    {
      v11 = v12;
    }

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_1DA3A6A2C(v17, &qword_1ECBAF5B0, &qword_1DA427530);
    sub_1DA3A6A2C(v14, &qword_1ECBAF5B0, &qword_1DA427530);
    v11 = 0.0;
  }

  return *&v11;
}

void sub_1DA3E17D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = a1;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1DA3B03D0(0, v1, 0);
    v2 = v51;
    v4 = sub_1DA3A68F4(v3);
    v6 = v5;
    v37 = v3;
    sub_1DA3A6990(0, &qword_1EE100078, 0x1E695FE50);
    v7 = 0;
    v8 = v3 + 64;
    v9 = *(v3 + 32);
    v33 = v3 + 72;
    v34 = v1;
    v35 = v6;
    v36 = v3 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << v9)
    {
      v10 = v4 >> 6;
      if ((*(v8 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      if (*(v3 + 36) != v6)
      {
        goto LABEL_22;
      }

      v38 = v7;
      v11 = (*(v3 + 48) + 16 * v4);
      v41 = v2;
      v12 = *v11;
      v13 = v11[1];
      sub_1DA3A7ED4(*(v3 + 56) + 40 * v4, v50);
      v46[0] = v12;
      v46[1] = v13;
      sub_1DA3A1FF8(v50, v47);
      sub_1DA3E3E80(v46, v44, &qword_1ECBAF5E8, qword_1DA427568);
      v39 = v44[1];
      v40 = v44[0];
      sub_1DA3E3E80(v46, v42, &qword_1ECBAF5E8, qword_1DA427568);
      v14 = v42[0];
      v15 = v42[1];
      v17 = v48;
      v16 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v18 = *(v16 + 8);

      v19 = v18(v17, v16);
      v2 = v41;
      v20 = sub_1DA3E1AFC(v14, v15, v19, 1, 0);
      __swift_destroy_boxed_opaque_existential_0(v43);
      __swift_destroy_boxed_opaque_existential_0(v45);
      sub_1DA3A6A2C(v46, &qword_1ECBAF5E8, qword_1DA427568);
      v51 = v41;
      v22 = *(v41 + 16);
      v21 = *(v41 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DA3B03D0(v21 > 1, v22 + 1, 1);
        v2 = v51;
      }

      *(v2 + 16) = v22 + 1;
      v23 = (v2 + 24 * v22);
      v23[4] = v40;
      v23[5] = v39;
      v23[6] = v20;
      v3 = v37;
      v9 = *(v37 + 32);
      v24 = 1 << v9;
      if (v4 >= 1 << v9)
      {
        goto LABEL_23;
      }

      v8 = v36;
      v25 = *(v36 + 8 * v10);
      if ((v25 & (1 << v4)) == 0)
      {
        goto LABEL_24;
      }

      v6 = v35;
      if (*(v37 + 36) != v35)
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v4 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v4 & 0x7FFFFFFFFFFFFFC0;
        v27 = v34;
      }

      else
      {
        v28 = v10 << 6;
        v29 = v10 + 1;
        v27 = v34;
        v30 = (v33 + 8 * v10);
        while (v29 < (v24 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            v24 = __clz(__rbit64(v31)) + v28;
            break;
          }
        }
      }

      v4 = v24;
      v7 = v38 + 1;
      if (v38 + 1 == v27)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
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

  else
  {
LABEL_19:
    sub_1DA3D59D0(v2);
  }
}

id sub_1DA3E1AFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = sub_1DA421B64();

  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF660, &unk_1DA427580);
    v9 = sub_1DA421D14();
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() featureDescriptionWithName:v8 type:a3 optional:a4 & 1 constraints:v9];

  return v10;
}

id sub_1DA3E1BC0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  a3[1] = v5;
  sub_1DA3A6990(0, &qword_1EE100078, 0x1E695FE50);

  v6 = sub_1DA421B64();
  v7 = [v6 key];

  v8 = sub_1DA421B94();
  v10 = v9;

  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v13 = (*(v12 + 8))(v11, v12);
  result = sub_1DA3E1AFC(v8, v10, v13, 0, 0);
  a3[2] = result;
  return result;
}

uint64_t sub_1DA3E1CC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1DA3E1478();
  a2[1] = v4;
  sub_1DA3E3E80(a1, v6, &qword_1ECBAF5E8, qword_1DA427568);

  return sub_1DA3A1FF8(&v7, (a2 + 2));
}

void static SiriSuggestionsIntelligence.NaiveBayesClassifier.createFromPlist(path:)(uint64_t a1, unint64_t a2)
{
  v59 = a1;
  v3 = sub_1DA420FD4();
  OUTLINED_FUNCTION_3_1();
  v57 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DA421A94();
  OUTLINED_FUNCTION_3_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF510, &qword_1DA427348);
  v14 = sub_1DA421AE4();
  sub_1DA4219C4();

  v15 = sub_1DA421A74();
  v16 = sub_1DA421F54();

  v17 = os_log_type_enabled(v15, v16);
  v58 = v3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v60 = v14;
    v20 = v19;
    *&v62 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1DA3A5FE8(v59, a2, &v62);
    _os_log_impl(&dword_1DA39E000, v15, v16, "loading naive bayes data from %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v14 = v60;
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_17();
  }

  (*(v10 + 8))(v13, v8);
  sub_1DA420FC4();
  v21 = v56;
  v22 = sub_1DA420FE4();
  if (v21)
  {
    (*(v57 + 8))(v7, v58);
  }

  else
  {
    v24 = v22;
    v25 = v23;
    (*(v57 + 8))(v7, v58);
    sub_1DA420F54();
    swift_allocObject();
    v26 = sub_1DA420F44();
    sub_1DA3E316C();
    sub_1DA420F34();
    v55[2] = v26;
    v56 = v24;
    v60 = v14;
    v57 = v25;
    v58 = v62;
    v55[1] = v63;
    v27 = *(&v62 + 1) + 64;
    OUTLINED_FUNCTION_3_3();
    v30 = v29 & v28;
    v32 = (v31 + 63) >> 6;
    v59 = v33;

    v34 = 0;
    if (!v30)
    {
      goto LABEL_7;
    }

    do
    {
      v35 = v34;
LABEL_10:

      sub_1DA3DF1E4(v36);
      v38 = v37;

      v39 = _s24ParameterizedProbabilityCMa();
      swift_allocObject();
      sub_1DA40EE2C(v38, 2);
      v64 = v39;
      v65 = &off_1F55EBAA0;
      v30 &= v30 - 1;
      *&v62 = v40;
      sub_1DA3A1FF8(&v62, v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_11_6(isUniquelyReferenced_nonNull_native);

      v60 = v66;
      v34 = v35;
    }

    while (v30);
    while (1)
    {
LABEL_7:
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v35 >= v32)
      {
        break;
      }

      v30 = *(v27 + 8 * v35);
      ++v34;
      if (v30)
      {
        goto LABEL_10;
      }
    }

    v42 = v58 + 64;
    OUTLINED_FUNCTION_3_3();
    v45 = v44 & v43;
    v47 = (v46 + 63) >> 6;

    v48 = 0;
    if (!v45)
    {
      goto LABEL_14;
    }

    do
    {
      v49 = v48;
LABEL_17:

      sub_1DA40C060();
      v51 = v50;
      v45 &= v45 - 1;

      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF520, &qword_1DA427350);
      v65 = &off_1F55EBA78;
      *&v62 = v51;
      sub_1DA3A1FF8(&v62, v61);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_11_6(v52);

      v60 = v66;
      v48 = v49;
    }

    while (v45);
LABEL_14:
    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v49 >= v47)
      {

        sub_1DA40C230();
        v54 = v53;

        type metadata accessor for SiriSuggestionsIntelligence.NaiveBayesClassifier();
        sub_1DA3E3200(v60, v54);

        sub_1DA3B5D30(v56, v57);

        return;
      }

      v45 = *(v42 + 8 * v49);
      ++v48;
      if (v45)
      {
        goto LABEL_17;
      }
    }

LABEL_21:
    __break(1u);
  }
}

id SiriSuggestionsIntelligence.NaiveBayesClassifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSuggestionsIntelligence.NaiveBayesClassifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSuggestionsIntelligence.NaiveBayesClassifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1DA3E24DC(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1DA421AB4();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1DA420FB4();

    swift_willThrow();
  }

  return v3;
}

id sub_1DA3E25C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DA3A6990(0, &qword_1EE100078, 0x1E695FE50);
  v10 = sub_1DA421AB4();

  v11 = sub_1DA421AB4();

  if (a4)
  {
    v12 = sub_1DA421B64();

    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v12 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = sub_1DA421B64();

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for MLModelMetadataKey(0);
  sub_1DA3E3FF0(&qword_1ECBAEB18);
  v14 = sub_1DA421AB4();

LABEL_8:
  v15 = [v18 initWithInputDescriptions:v10 outputDescriptions:v11 predictedFeatureName:v12 predictedProbabilitiesName:v13 metadata:{v14, a5}];

  return v15;
}

void sub_1DA3E278C(uint64_t a1, void *a2, char a3)
{
  sub_1DA3B74F4(a2);
  OUTLINED_FUNCTION_2_13();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE9E0, &qword_1DA4232D0);
  if ((sub_1DA4221A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_1DA3B74F4(a2);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    type metadata accessor for AIDAServiceType(0);
    sub_1DA4223E4();
    __break(1u);
    return;
  }

  v8 = v10;
LABEL_5:
  v12 = *v3;
  if (v9)
  {
    v13 = v12[7];
    v14 = *(v13 + 8 * v8);
    *(v13 + 8 * v8) = a1;
  }

  else
  {
    sub_1DA3E2DA0(v8, a2, a1, v12);

    v15 = a2;
  }
}

void sub_1DA3E28C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  OUTLINED_FUNCTION_13_4(a1, a2, a3);
  OUTLINED_FUNCTION_2_13();
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2B0, &qword_1DA426858);
  OUTLINED_FUNCTION_6_11();
  if ((sub_1DA4221A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1DA3B76EC(a2, a3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    sub_1DA4223E4();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    *(v14[7] + v10) = v6 & 1;
  }

  else
  {
    sub_1DA3E2DE4(v10, a2, a3, v6 & 1, v14);
  }
}

void sub_1DA3E29E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_13_4(a1, a2, a3);
  OUTLINED_FUNCTION_2_13();
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_6_11();
  if ((sub_1DA4221A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_1DA3B76EC(a2, a3);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_13:
    sub_1DA4223E4();
    __break(1u);
    return;
  }

  v15 = v17;
LABEL_5:
  v19 = *v6;
  if (v16)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v15);
    *(v20 + 8 * v15) = a1;
  }

  else
  {
    sub_1DA3E2E2C(v15, a2, a3, a1, v19);
  }
}

void sub_1DA3E2B08(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DA3B76EC(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2D0, &qword_1DA426890);
  if ((sub_1DA4221A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DA3B76EC(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1DA4223E4();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 40 * v12);
    __swift_destroy_boxed_opaque_existential_0(v17);

    sub_1DA3A1FF8(a1, v17);
  }

  else
  {
    sub_1DA3E2E74(v12, a2, a3, a1, v16);
  }
}

void sub_1DA3E2C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_13_4(a1, a2, a3);
  OUTLINED_FUNCTION_2_13();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF5A8, &qword_1DA429400);
  OUTLINED_FUNCTION_6_11();
  if ((sub_1DA4221A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1DA3B76EC(a2, a3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_1DA4223E4();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    v15 = v14[7];
    sub_1DA4213B4();
    OUTLINED_FUNCTION_9();
    v17 = *(v16 + 40);
    v19 = v18;
    v20 = v15 + *(v16 + 72) * v10;

    v17(v20, a1, v19);
  }

  else
  {
    sub_1DA3E2EE4(v10, a2, a3, a1, v14);
  }
}

unint64_t sub_1DA3E2DA0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1DA3E2DE4(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1DA3E2E2C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1DA3E2E74(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DA3A1FF8(a4, a5[7] + 40 * a1);
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

uint64_t sub_1DA3E2EE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1DA4213B4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1DA3E2F94(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v28 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_1DA3B76EC(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v9[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2B8, &unk_1DA426860);
        sub_1DA4221B4();
      }
    }

    else
    {
      sub_1DA3D6D58(v15, a2 & 1);
      v17 = sub_1DA3B76EC(v7, v6);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v12 = v17;
    }

    v19 = *a3;
    if (v16)
    {
      v20 = *(v19[7] + 8 * v12);

      v21 = v19[7];
      v22 = *(v21 + 8 * v12);
      *(v21 + 8 * v12) = v20;
    }

    else
    {
      v19[(v12 >> 6) + 8] |= 1 << v12;
      v23 = (v19[6] + 16 * v12);
      *v23 = v7;
      v23[1] = v6;
      *(v19[7] + 8 * v12) = v10;
      v24 = v19[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v19[2] = v26;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1DA4223E4();
  __break(1u);
  return result;
}

unint64_t sub_1DA3E316C()
{
  result = qword_1EE1007A8;
  if (!qword_1EE1007A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1007A8);
  }

  return result;
}

id sub_1DA3E3200(uint64_t a1, uint64_t a2)
{
  v125[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF5E0, &qword_1DA427560);
  v125[4] = &off_1F55EBA78;
  v125[0] = a2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  v103 = a1;
  v97 = a2;
  if (v4)
  {
    *&v112 = MEMORY[0x1E69E7CC0];

    sub_1DA3B0410(0, v4, 0);
    v6 = v112;
    v8 = sub_1DA3A68F4(a1);
    v10 = v9;
    v11 = 0;
    v107 = a1 + 64;
    v100 = v9;
    v98 = a1 + 72;
    v12 = a1;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v12 + 32))
    {
      v13 = v8 >> 6;
      if ((*(v107 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_68;
      }

      if (*(v12 + 36) != v10)
      {
        goto LABEL_69;
      }

      v104 = v7;
      v14 = v4;
      v15 = (*(v12 + 48) + 16 * v8);
      v16 = *v15;
      v17 = v15[1];
      sub_1DA3A7ED4(*(v12 + 56) + 40 * v8, v120);
      v115 = v16;
      v116 = v17;
      sub_1DA3A1FF8(v120, &v117);

      sub_1DA3E1CC0(&v115, &v121);
      sub_1DA3A6A2C(&v115, &qword_1ECBAF5E8, qword_1DA427568);
      *&v112 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DA3B0410((v18 > 1), v19 + 1, 1);
        v6 = v112;
      }

      *(v6 + 16) = v19 + 1;
      v20 = v6 + 56 * v19;
      v21 = v121;
      v22 = v122;
      v23 = v123;
      *(v20 + 80) = v124;
      *(v20 + 48) = v22;
      *(v20 + 64) = v23;
      *(v20 + 32) = v21;
      v12 = v103;
      v24 = 1 << *(v103 + 32);
      if (v8 >= v24)
      {
        goto LABEL_70;
      }

      v25 = *(v107 + 8 * v13);
      if ((v25 & (1 << v8)) == 0)
      {
        goto LABEL_71;
      }

      if (*(v103 + 36) != v10)
      {
        goto LABEL_72;
      }

      v26 = v25 & (-2 << (v8 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v4 = v14;
      }

      else
      {
        v27 = v13 << 6;
        v28 = v13 + 1;
        v29 = (v98 + 8 * v13);
        v4 = v14;
        while (v28 < (v24 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            sub_1DA3A2020(v8, v10, v104 & 1);
            v12 = v103;
            v24 = __clz(__rbit64(v30)) + v27;
            goto LABEL_19;
          }
        }

        sub_1DA3A2020(v8, v10, v104 & 1);
        v12 = v103;
      }

LABEL_19:
      v7 = 0;
      ++v11;
      v8 = v24;
      v10 = v100;
      if (v11 == v4)
      {
        v5 = MEMORY[0x1E69E7CC0];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v32 = sub_1DA3D59F8(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF5F0, &unk_1DA423330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA4238F0;
  *(inited + 32) = 0x6572507373616C63;
  *(inited + 40) = 0xEF6E6F6974636964;
  sub_1DA3A7ED4(v125, inited + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF510, &qword_1DA427348);
  v96 = sub_1DA421AE4();
  v34 = *(v32 + 16);
  if (v34)
  {
    v114 = v5;
    sub_1DA3B0410(0, v34, 0);
    v108 = v5;
    v36 = sub_1DA3A68F4(v32);
    v38 = v37;
    v39 = 0;
    v40 = v32 + 64;
    v101 = v34;
    if ((v36 & 0x8000000000000000) == 0)
    {
      while (v36 < 1 << *(v32 + 32))
      {
        v41 = v36 >> 6;
        if ((*(v40 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
        {
          goto LABEL_74;
        }

        if (*(v32 + 36) != v38)
        {
          goto LABEL_75;
        }

        v105 = v35;
        v42 = (*(v32 + 48) + 16 * v36);
        v44 = *v42;
        v43 = v42[1];
        sub_1DA3A7ED4(*(v32 + 56) + 40 * v36, v120);
        v115 = v44;
        v116 = v43;
        sub_1DA3A1FF8(v120, &v117);
        sub_1DA3E3E80(&v115, &v112, &qword_1ECBAF5E8, qword_1DA427568);
        v121 = v112;
        v109 = v117;
        v110 = v118;
        v111 = v119;

        sub_1DA3A1FF8(&v109, &v122);
        __swift_destroy_boxed_opaque_existential_0(v113);
        v45 = v108;
        v114 = v108;
        v47 = *(v108 + 16);
        v46 = *(v108 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1DA3B0410((v46 > 1), v47 + 1, 1);
          v45 = v114;
        }

        *(v45 + 16) = v47 + 1;
        v108 = v45;
        v48 = v45 + 56 * v47;
        v49 = v121;
        v50 = v122;
        v51 = v123;
        *(v48 + 80) = v124;
        *(v48 + 48) = v50;
        *(v48 + 64) = v51;
        *(v48 + 32) = v49;
        v52 = 1 << *(v32 + 32);
        if (v36 >= v52)
        {
          goto LABEL_76;
        }

        v53 = *(v40 + 8 * v41);
        if ((v53 & (1 << v36)) == 0)
        {
          goto LABEL_77;
        }

        if (*(v32 + 36) != v38)
        {
          goto LABEL_78;
        }

        v54 = v53 & (-2 << (v36 & 0x3F));
        if (v54)
        {
          v52 = __clz(__rbit64(v54)) | v36 & 0x7FFFFFFFFFFFFFC0;
          v55 = v101;
        }

        else
        {
          v56 = v41 << 6;
          v57 = v41 + 1;
          v58 = (v32 + 72 + 8 * v41);
          v55 = v101;
          while (v57 < (v52 + 63) >> 6)
          {
            v60 = *v58++;
            v59 = v60;
            v56 += 64;
            ++v57;
            if (v60)
            {
              sub_1DA3A2020(v36, v38, v105 & 1);
              v52 = __clz(__rbit64(v59)) + v56;
              goto LABEL_39;
            }
          }

          sub_1DA3A2020(v36, v38, v105 & 1);
        }

LABEL_39:
        if (++v39 == v55)
        {

          v5 = MEMORY[0x1E69E7CC0];
          goto LABEL_44;
        }

        v35 = 0;
        v38 = *(v32 + 36);
        v36 = v52;
        if (v52 < 0)
        {
          break;
        }
      }
    }

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
    goto LABEL_79;
  }

  v108 = MEMORY[0x1E69E7CC0];
LABEL_44:
  v61 = *(v96 + 16);
  if (v61)
  {
    v114 = v5;
    sub_1DA3B0410(0, v61, 0);
    v62 = v114;
    v64 = sub_1DA3A68F4(v96);
    v66 = v65;
    v67 = 0;
    v106 = v96 + 64;
    v99 = v61;
    if ((v64 & 0x8000000000000000) == 0)
    {
      while (v64 < 1 << *(v96 + 32))
      {
        v68 = v64 >> 6;
        if ((*(v106 + 8 * (v64 >> 6)) & (1 << v64)) == 0)
        {
          goto LABEL_80;
        }

        if (*(v96 + 36) != v66)
        {
          goto LABEL_81;
        }

        v102 = v63;
        v69 = (*(v96 + 48) + 16 * v64);
        v71 = *v69;
        v70 = v69[1];
        sub_1DA3A7ED4(*(v96 + 56) + 40 * v64, v120);
        v115 = v71;
        v116 = v70;
        sub_1DA3A1FF8(v120, &v117);
        sub_1DA3E3E80(&v115, &v112, &qword_1ECBAF5E8, qword_1DA427568);
        v121 = v112;
        v109 = v117;
        v110 = v118;
        v111 = v119;

        sub_1DA3A1FF8(&v109, &v122);
        __swift_destroy_boxed_opaque_existential_0(v113);
        v114 = v62;
        v73 = *(v62 + 16);
        v72 = *(v62 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_1DA3B0410((v72 > 1), v73 + 1, 1);
          v62 = v114;
        }

        *(v62 + 16) = v73 + 1;
        v74 = v62 + 56 * v73;
        v75 = v121;
        v76 = v122;
        v77 = v123;
        *(v74 + 80) = v124;
        *(v74 + 48) = v76;
        *(v74 + 64) = v77;
        *(v74 + 32) = v75;
        v78 = 1 << *(v96 + 32);
        if (v64 >= v78)
        {
          goto LABEL_82;
        }

        v79 = *(v106 + 8 * v68);
        if ((v79 & (1 << v64)) == 0)
        {
          goto LABEL_83;
        }

        if (*(v96 + 36) != v66)
        {
          goto LABEL_84;
        }

        v80 = v79 & (-2 << (v64 & 0x3F));
        if (v80)
        {
          v78 = __clz(__rbit64(v80)) | v64 & 0x7FFFFFFFFFFFFFC0;
          v81 = v99;
        }

        else
        {
          v82 = v68 << 6;
          v83 = v68 + 1;
          v81 = v99;
          v84 = (v96 + 72 + 8 * v68);
          while (v83 < (v78 + 63) >> 6)
          {
            v86 = *v84++;
            v85 = v86;
            v82 += 64;
            ++v83;
            if (v86)
            {
              sub_1DA3A2020(v64, v66, v102 & 1);
              v78 = __clz(__rbit64(v85)) + v82;
              goto LABEL_61;
            }
          }

          sub_1DA3A2020(v64, v66, v102 & 1);
        }

LABEL_61:
        if (++v67 == v81)
        {

          goto LABEL_66;
        }

        v63 = 0;
        v66 = *(v96 + 36);
        v64 = v78;
        if (v78 < 0)
        {
          break;
        }
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    sub_1DA3A6A2C(&v115, &qword_1ECBAF5E8, qword_1DA427568);

    __break(1u);
    return result;
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_66:
  *&v121 = v108;
  sub_1DA3BD164(v62);
  v87 = sub_1DA3D59F8(v121);
  sub_1DA3E17D8(v103);
  v89 = v88;
  v90 = sub_1DA3E3EE0(v97);
  v91 = objc_allocWithZone(MEMORY[0x1E695FEC0]);
  v92 = sub_1DA3E25C4(v89, v90, 0, 0, 0, 0, 0);
  v93 = objc_allocWithZone(type metadata accessor for SiriSuggestionsIntelligence.NaiveBayesClassifier());
  v94 = sub_1DA3E0504(v92, v87);
  __swift_destroy_boxed_opaque_existential_0(v125);
  return v94;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DA3E3C0C(uint64_t *a1, int a2)
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

uint64_t sub_1DA3E3C4C(uint64_t result, int a2, int a3)
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

_BYTE *_s17FeatureCountsDataV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DA3E3D7C()
{
  result = qword_1ECBAF5A0;
  if (!qword_1ECBAF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF5A0);
  }

  return result;
}

unint64_t sub_1DA3E3DD4()
{
  result = qword_1EE1007B8;
  if (!qword_1EE1007B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1007B8);
  }

  return result;
}

unint64_t sub_1DA3E3E2C()
{
  result = qword_1EE1007C0;
  if (!qword_1EE1007C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1007C0);
  }

  return result;
}

uint64_t sub_1DA3E3E80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DA3E3EE0(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF5E0, &qword_1DA427560);
  v10 = &off_1F55EBA78;
  v8[0] = a1;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v2 = off_1F55EBA88[0];

  v2();
  v7[2] = v8;
  v4 = sub_1DA3DE9E8(sub_1DA3E3FD0, v7, v3);

  v5 = sub_1DA3D59D0(v4);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

unint64_t sub_1DA3E3FF0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_4(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_OWORD *sub_1DA3E4034(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1DA3E4044()
{
  result = qword_1ECBAF6A8;
  if (!qword_1ECBAF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF6A8);
  }

  return result;
}

uint64_t _s20NaiveBayesClassifierC6ErrorsOwet(uint64_t *a1, int a2)
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

uint64_t _s20NaiveBayesClassifierC6ErrorsOwst(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_4_11(uint64_t a1)
{

  return sub_1DA422334();
}

void OUTLINED_FUNCTION_11_6(char a1)
{
  *(v4 - 72) = v1;

  sub_1DA3E2B08((v4 - 160), v2, v3, a1);
}

unint64_t OUTLINED_FUNCTION_13_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DA3B76EC(a2, a3);
}

uint64_t DailyTimePeriod.rawValue.getter(char a1)
{
  result = 0x676E696E726F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x79616464696DLL;
      break;
    case 2:
      result = 0x6F6F6E7265746661;
      break;
    case 3:
      result = 0x676E696E657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.TimeFeatureExtractor.__allocating_init(clock:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1DA3A1FF8(a1, v2 + 16);
  return v2;
}

uint64_t SiriSuggestionsIntelligence.TimeFeatureExtractor.extract(_:)()
{
  v1[2] = v0;
  v2 = sub_1DA4210B4();
  v1[3] = v2;
  OUTLINED_FUNCTION_5_2(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v4 = sub_1DA421124();
  v1[6] = v4;
  OUTLINED_FUNCTION_5_2(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v6 = sub_1DA421144();
  v1[9] = v6;
  OUTLINED_FUNCTION_5_2(v6);
  v1[10] = v7;
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3E445C);
}

void sub_1DA3E445C(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v5 = v1[5];
  v4 = v1[6];
  v29 = v1[4];
  v38 = v4;
  v40 = v1[3];
  v6 = v1[2];
  v34 = v1[11];
  sub_1DA421114();
  v32 = *(v3 + 104);
  v32(v2, *MEMORY[0x1E6969A58], v4);
  __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  sub_1DA421934();
  sub_1DA421024();
  v36 = sub_1DA421134();
  v30 = *(v29 + 8);
  v30(v5, v40);
  v7 = *(v3 + 8);
  v7(v2, v4);
  v32(v2, *MEMORY[0x1E6969AB0], v4);
  __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  sub_1DA421934();
  sub_1DA421024();
  v8 = sub_1DA421134();
  v30(v5, v40);
  v7(v2, v4);
  v9 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DA4275F0;
  sub_1DA3B3AE0(33, v9, 24, v9, v11, v12, v13, v14, v27, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v1);
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = v1[10];
    v15 = v1[11];
    v17 = v1[9];
    v18 = sub_1DA3E471C(v9);
    sub_1DA3B3AE0(34, v8, 7, v8 - 1, v19, v20, v21, v22, v28, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v58);
    v23 = sub_1DA3B3768(v18, &unk_1F55E7F60);
    if (v24)
    {
      v25 = 4;
    }

    else
    {
      v25 = v23;
    }

    sub_1DA3B3C64(35, v18, 4, v25, v10 + 176);
    (*(v16 + 8))(v15, v17);

    v26 = v1[1];

    v26(v10);
  }
}

uint64_t sub_1DA3E471C(uint64_t a1)
{
  if ((a1 - 15) < 4)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  if ((a1 - 10) >= 5)
  {
    v2 = v1;
  }

  else
  {
    v2 = 1;
  }

  if ((a1 - 6) >= 4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SiriSuggestionsIntelligence.TimeFeatureExtractor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1DA3E47A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3D25B4;

  return SiriSuggestionsIntelligence.TimeFeatureExtractor.extract(_:)();
}

SiriSuggestionsIntelligence::DailyTimePeriod_optional __swiftcall DailyTimePeriod.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1DA422234();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

SiriSuggestionsIntelligence::DailyTimePeriod_optional sub_1DA3E48B0@<W0>(Swift::String *a1@<X0>, SiriSuggestionsIntelligence::DailyTimePeriod_optional *a2@<X8>)
{
  result.value = DailyTimePeriod.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1DA3E48E0@<X0>(uint64_t *a1@<X8>)
{
  result = DailyTimePeriod.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DA3E49D0()
{
  result = qword_1ECBAF6B0;
  if (!qword_1ECBAF6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF6B0);
  }

  return result;
}

unint64_t sub_1DA3E4A28()
{
  result = qword_1ECBAF6B8;
  if (!qword_1ECBAF6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAF6C0, &qword_1DA427728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF6B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DailyTimePeriod(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DA3E4B8C()
{
  result = qword_1EE102C98;
  if (!qword_1EE102C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102C98);
  }

  return result;
}

uint64_t sub_1DA3E4BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[23] = a1;
  v4[24] = a2;

  v6 = swift_task_alloc();
  v4[27] = v6;
  *v6 = v4;
  v6[1] = sub_1DA3E4C90;

  return sub_1DA413B20((v4 + 17), a4);
}

uint64_t sub_1DA3E4C90()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1DA3E5000;
  }

  else
  {
    v2 = sub_1DA3E4DA4;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1DA3E4DA4()
{
  v18 = v0;
  if (v0[20])
  {
    v1 = v0[24];
    v2 = v0[23];
    sub_1DA3B3334((v0 + 17), v0 + 11);
    sub_1DA3B239C((v0 + 11), (v0 + 4));
    v0[2] = v2;
    v0[3] = v1;
    v0[10] = 0;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v0[25];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DA3A5520();
      v4 = v15;
    }

    v5 = *(v4 + 16);
    if (v5 >= *(v4 + 24) >> 1)
    {
      sub_1DA3A5520();
      v4 = v16;
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 11);
    *(v4 + 16) = v5 + 1;
    memcpy((v4 + 72 * v5 + 32), v0 + 2, 0x48uLL);
  }

  else
  {
    sub_1DA3A8CA8((v0 + 17), &qword_1ECBAF6C8, &qword_1DA427820);
    if (qword_1EE102E00 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EE102E00);
    }

    v6 = sub_1DA421A94();
    __swift_project_value_buffer(v6, static Logger.extractionCategory);

    v7 = sub_1DA421A74();
    v8 = sub_1DA421F74();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[23];
      v9 = v0[24];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1DA3A5FE8(v10, v9, &v17);
      _os_log_impl(&dword_1DA39E000, v7, v8, "No feature value returned for %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_17();
    }

    v4 = v0[25];
  }

  v13 = v0[1];

  return v13(v4);
}

uint64_t sub_1DA3E5000()
{
  v21 = v0;
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EE102E00);
  }

  v1 = v0[28];
  v2 = sub_1DA421A94();
  __swift_project_value_buffer(v2, static Logger.extractionCategory);

  v3 = v1;
  v4 = sub_1DA421A74();
  v5 = sub_1DA421F74();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  if (v6)
  {
    v9 = v0[23];
    v8 = v0[24];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_1DA3A5FE8(v9, v8, &v20);
    *(v10 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    OUTLINED_FUNCTION_2_14(&dword_1DA39E000, v15, v16, "Unable to get feature for: %s. Error: %@");
    sub_1DA3A8CA8(v11, &qword_1ECBAEC70, &qword_1DA42A510);
    OUTLINED_FUNCTION_17();
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_17();
  }

  else
  {
  }

  v17 = v0[25];
  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_1DA3E51EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DA3E5260);
}

uint64_t sub_1DA3E5260()
{
  v19 = v0;
  sub_1DA3E546C();
  v1 = swift_allocError();
  swift_willThrow();
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EE102E00);
  }

  v2 = sub_1DA421A94();
  __swift_project_value_buffer(v2, static Logger.extractionCategory);

  v3 = v1;
  v4 = sub_1DA421A74();
  v5 = sub_1DA421F74();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1DA3A5FE8(v7, v6, &v18);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    OUTLINED_FUNCTION_2_14(&dword_1DA39E000, v13, v14, "Unable to get feature for: %s. Error: %@");
    sub_1DA3A8CA8(v9, &qword_1ECBAEC70, &qword_1DA42A510);
    OUTLINED_FUNCTION_17();
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_17();
  }

  else
  {
  }

  v15 = v0[1];
  v16 = v0[4];

  return v15(v16);
}

unint64_t sub_1DA3E546C()
{
  result = qword_1EE102C88;
  if (!qword_1EE102C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102C88);
  }

  return result;
}

void OUTLINED_FUNCTION_2_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_1DA3E5508()
{
  OUTLINED_FUNCTION_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D0, &qword_1DA427848);
  sub_1DA421E44();
  OUTLINED_FUNCTION_4_0();

  return v0();
}

uint64_t sub_1DA3E5598()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
  *v1 = v0;
  v1[1] = sub_1DA3E567C;
  v3 = *(v0 + 24);

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0x2874636172747865, 0xE900000000000029, sub_1DA3E7FF4, v3, v2);
}

uint64_t sub_1DA3E567C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA3E5778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6F8, &qword_1DA427B10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  sub_1DA3E5918(a2 + 24, sub_1DA3E7FFC, v9);
}

uint64_t sub_1DA3E58C8(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6F8, &qword_1DA427B10);
  return sub_1DA421DF4();
}

uint64_t sub_1DA3E5918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF700, &qword_1DA427B18);
  OUTLINED_FUNCTION_3_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-v10 - 8];
  sub_1DA3A7ED4(a1, v14);
  v15 = a2;
  v16 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D0, &qword_1DA427848);
  sub_1DA421E34();
  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1DA3E5A34(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_2_15();
}

uint64_t sub_1DA3E5A48()
{
  OUTLINED_FUNCTION_16();
  sub_1DA3A7ED4(*(v0 + 56), v0 + 16);
  swift_allocObject();
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v0 + 72) = v1;
  *v1 = v2;
  v1[1] = sub_1DA3E5AF4;

  return sub_1DA3E5D60(v0 + 16);
}

uint64_t sub_1DA3E5AF4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_0();

  return v4(v3);
}

uint64_t SiriSuggestionsIntelligence.QueuedContextFeatureExtractors.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return v0;
}

uint64_t SiriSuggestionsIntelligence.QueuedContextFeatureExtractors.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1DA3E5C40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3AD53C;

  return sub_1DA3E5584();
}

uint64_t sub_1DA3E5CD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3A8004;

  return SiriSuggestionsIntelligence.QueuedContextFeatureExtractors.destroy()();
}

uint64_t sub_1DA3E5D60(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D0, &qword_1DA427848);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3E5E2C);
}

uint64_t sub_1DA3E5E2C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[8] = v3;
  *v3 = v4;
  v3[1] = sub_1DA3E5F14;
  v5 = v0[6];
  v6 = v0[4];

  return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0x6F6C632874696E69, 0xEC000000293A6B63, sub_1DA3E8078, v2, v6);
}

uint64_t sub_1DA3E5F14()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA3E6014()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[2];
  (*(v0[5] + 32))(v0[3] + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence29ContextFeatureExtractionQueue_queue, v0[6], v0[4]);
  __swift_destroy_boxed_opaque_existential_0(v1);

  v2 = v0[1];
  v3 = v0[3];

  return v2(v3);
}

uint64_t sub_1DA3E60A8(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC60, &qword_1DA423710);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF708, &qword_1DA427B38);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D8, &qword_1DA427850);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v23 = a1;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8650], v6);
  sub_1DA421E74();
  v17 = sub_1DA421E24();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v17);
  (*(v11 + 16))(v14, v16, v10);
  sub_1DA3A7ED4(v22, v24);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v11 + 32))(v19 + v18, v14, v10);
  sub_1DA3A1FF8(v24, v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1DA3A80E4(0, 0, v5, &unk_1DA427B48, v19);

  sub_1DA3E81A4(v5, &qword_1ECBAEC60, &qword_1DA423710);
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_1DA3E63C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D0, &qword_1DA427848);
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF710, &unk_1DA427B50);
  return sub_1DA421DF4();
}

uint64_t sub_1DA3E64A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D8, &qword_1DA427850);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3E6574);
}

uint64_t sub_1DA3E6574()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  (*(*(v0 + 80) + 16))(v1, *(v0 + 56), *(v0 + 72));
  sub_1DA3A7ED4(v2, v0 + 16);
  type metadata accessor for SiriSuggestionsIntelligence.ContextExtractorQueueProcessor(0);
  *(v0 + 96) = swift_allocObject();
  sub_1DA3E689C(v1, (v0 + 16));
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1DA3E665C;

  return sub_1DA3E6958();
}

uint64_t sub_1DA3E665C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA3E6740()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_4_0();

  return v0();
}

uint64_t SiriSuggestionsIntelligence.ContextFeatureExtractionQueue.deinit()
{
  v1 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence29ContextFeatureExtractionQueue_queue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D0, &qword_1DA427848);
  OUTLINED_FUNCTION_3_13();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SiriSuggestionsIntelligence.ContextFeatureExtractionQueue.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence29ContextFeatureExtractionQueue_queue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D0, &qword_1DA427848);
  OUTLINED_FUNCTION_3_13();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1DA3E689C(uint64_t a1, __int128 *a2)
{
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence30ContextExtractorQueueProcessor_stream;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D8, &qword_1DA427850);
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence30ContextExtractorQueueProcessor_cachedResults) = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence30ContextExtractorQueueProcessor_lastUpdateAt) = 0;
  sub_1DA3A1FF8(a2, v2 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence30ContextExtractorQueueProcessor_clock);
  return v2;
}

uint64_t sub_1DA3E6958()
{
  OUTLINED_FUNCTION_16();
  v1[16] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6E0, &qword_1DA427AD0);
  v1[17] = v2;
  OUTLINED_FUNCTION_5_2(v2);
  v1[18] = v3;
  v1[19] = swift_task_alloc();
  v4 = sub_1DA421A94();
  v1[20] = v4;
  OUTLINED_FUNCTION_5_2(v4);
  v1[21] = v5;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_12_6();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1DA3E6A94()
{
  sub_1DA4219C4();
  v1 = sub_1DA421A74();
  v2 = sub_1DA421F54();
  if (OUTLINED_FUNCTION_8_11(v2))
  {
    v3 = OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_15_3(v3);
    OUTLINED_FUNCTION_4_12();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_7_9();
  }

  v9 = v0[21];

  v0[27] = *(v9 + 8);
  v10 = OUTLINED_FUNCTION_24();
  v11(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D8, &qword_1DA427850);
  sub_1DA421E54();
  v12 = sub_1DA3E7F7C(&qword_1EE101598, 255, type metadata accessor for SiriSuggestionsIntelligence.ContextExtractorQueueProcessor, &protocol conformance descriptor for SiriSuggestionsIntelligence.ContextExtractorQueueProcessor);
  v13 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence30ContextExtractorQueueProcessor_clock;
  v0[28] = v12;
  v0[29] = v13;
  v14 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence30ContextExtractorQueueProcessor_cachedResults;
  v0[30] = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence30ContextExtractorQueueProcessor_lastUpdateAt;
  v0[31] = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[32] = v15;
  *v15 = v16;
  v17 = OUTLINED_FUNCTION_0_14(v15);

  return MEMORY[0x1EEE6D9C8](v17);
}

uint64_t sub_1DA3E6C14()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_6();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA3E6D0C()
{
  if (!*(v0 + 40))
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    sub_1DA4219C4();
    v34 = sub_1DA421A74();
    v35 = sub_1DA421F54();
    if (OUTLINED_FUNCTION_8_11(v35))
    {
      v36 = OUTLINED_FUNCTION_19_4();
      OUTLINED_FUNCTION_15_3(v36);
      OUTLINED_FUNCTION_4_12();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    v42 = *(v0 + 216);
    v43 = *(v0 + 176);
    v44 = *(v0 + 160);

    v42(v43, v44);

    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_16_3();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 128);
  v3 = (v2 + *(v0 + 232));
  v4 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v4;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 120) = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_24();
  sub_1DA421934();
  v6 = v5;
  *(v0 + 264) = v5;
  v7 = vabdd_f64(v5, *(v2 + v1));
  if (v7 > 5.0)
  {
    sub_1DA4219C4();

    v8 = sub_1DA421A74();
    v9 = sub_1DA421F54();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 240);
      v11 = *(v0 + 128);
      v12 = swift_slowAlloc();
      *v12 = 134218752;
      *(v12 + 4) = v6;
      *(v12 + 12) = 2048;
      *(v12 + 14) = *(v11 + v10);
      *(v12 + 22) = 2048;
      *(v12 + 24) = v7;
      *(v12 + 32) = 2048;
      *(v12 + 34) = 0x4014000000000000;
      OUTLINED_FUNCTION_4_12();
      _os_log_impl(v13, v14, v15, v16, v17, 0x2Au);
      OUTLINED_FUNCTION_7_9();
    }

    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 160);

    v18(v19, v20);
    sub_1DA4219C4();
    v21 = sub_1DA421A74();
    v22 = sub_1DA421F54();
    if (OUTLINED_FUNCTION_8_11(v22))
    {
      v23 = OUTLINED_FUNCTION_19_4();
      OUTLINED_FUNCTION_15_3(v23);
      OUTLINED_FUNCTION_4_12();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    v29 = *(v0 + 216);

    v30 = OUTLINED_FUNCTION_24();
    v29(v30);
    __swift_project_boxed_opaque_existential_1((v0 + 72), *(v0 + 96));
    v31 = swift_task_alloc();
    *(v0 + 272) = v31;
    *v31 = v0;
    v31[1] = sub_1DA3E71B0;
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_16_3();

    __asm { BRAA            X2, X16 }
  }

  sub_1DA4219C4();
  sub_1DA421A74();
  v47 = sub_1DA421F54();
  if (OUTLINED_FUNCTION_8_11(v47))
  {
    v48 = OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_15_3(v48);
    OUTLINED_FUNCTION_4_12();
    _os_log_impl(v49, v50, v51, v52, v53, 2u);
    OUTLINED_FUNCTION_7_9();
  }

  OUTLINED_FUNCTION_18_5();
  v54 = OUTLINED_FUNCTION_24();
  v2(v54);
  v55 = *(v0 + 112);

  v55(v56);

  sub_1DA3E7FC4(v0 + 72);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v0 + 256) = v57;
  *v57 = v58;
  OUTLINED_FUNCTION_0_14(v57);
  OUTLINED_FUNCTION_16_3();

  return MEMORY[0x1EEE6D9C8](v59);
}

uint64_t sub_1DA3E71B0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;
  *(v4 + 280) = v3;

  v5 = OUTLINED_FUNCTION_12_6();

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1DA3E72B0()
{
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[16];
  *(v4 + v0[31]) = v0[35];

  *(v4 + v3) = v2;
  sub_1DA4219C4();
  sub_1DA421A74();
  v5 = sub_1DA421F54();
  if (OUTLINED_FUNCTION_8_11(v5))
  {
    v6 = OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_15_3(v6);
    OUTLINED_FUNCTION_4_12();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_7_9();
  }

  OUTLINED_FUNCTION_18_5();
  v12 = OUTLINED_FUNCTION_24();
  v1(v12);
  v13 = v0[14];

  v13(v14);

  sub_1DA3E7FC4((v0 + 9));
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[32] = v15;
  *v15 = v16;
  v17 = OUTLINED_FUNCTION_0_14(v15);

  return MEMORY[0x1EEE6D9C8](v17);
}

uint64_t SiriSuggestionsIntelligence.ContextExtractorQueueProcessor.deinit()
{
  v1 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence30ContextExtractorQueueProcessor_stream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D8, &qword_1DA427850);
  OUTLINED_FUNCTION_3_13();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence30ContextExtractorQueueProcessor_clock));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SiriSuggestionsIntelligence.ContextExtractorQueueProcessor.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.ContextExtractorQueueProcessor.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DA3E74C8()
{
  OUTLINED_FUNCTION_16();
  *(v0 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6E8, &qword_1DA427AE0);
  *(v0 + 24) = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1DA3E7558()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6F0, &qword_1DA427AE8);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA30, &qword_1DA423970);
  type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
  *v3 = v0;
  v3[1] = sub_1DA3E7658;
  v4 = v0[2];

  return MEMORY[0x1EEE40720](v4);
}

void sub_1DA3E7658(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;

  if (v1)
  {
  }

  else
  {
    sub_1DA3E81A4(*(v5 + 24), &qword_1ECBAF6E8, &qword_1DA427AE0);

    v8 = *(v6 + 8);

    v8(a1);
  }
}

uint64_t sub_1DA3E77C4()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  type metadata accessor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService();
  sub_1DA3E7F7C(&qword_1EE102C78, 255, type metadata accessor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService, &protocol conformance descriptor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService);
  sub_1DA3AF774();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1DA3E7924;

  return sub_1DA3AC480();
}

uint64_t sub_1DA3E7924()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_0();

  return v4(v3);
}

uint64_t sub_1DA3E7A28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3B2D04;

  return sub_1DA3E74C8();
}

uint64_t protocol witness for Destroyable.destroy() in conformance SiriSuggestionsIntelligence.DefaultContextFeatureExtractors()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3A8D08;

  return sub_1DA3E54E0();
}

uint64_t sub_1DA3E7B58(uint64_t a1, uint64_t a2)
{
  result = sub_1DA3E7F7C(qword_1EE101488, a2, type metadata accessor for SiriSuggestionsIntelligence.QueuedContextFeatureExtractors, &protocol conformance descriptor for SiriSuggestionsIntelligence.QueuedContextFeatureExtractors);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DA3E7BD4(uint64_t a1)
{
  result = sub_1DA3E7BFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DA3E7BFC()
{
  result = qword_1EE102D70;
  if (!qword_1EE102D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102D70);
  }

  return result;
}

void sub_1DA3E7C78(uint64_t a1)
{
  sub_1DA3E7E60(319, &qword_1EE100FC0, MEMORY[0x1E69E8660]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DA3E7D4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA3E7D84(uint64_t a1)
{
  sub_1DA3E7E60(319, &qword_1EE100FB8, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DA3E7E60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SiriSuggestionsIntelligence.ContextFeatureExtractionAction);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DA3E7ED0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DA3E7F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DA3E7F7C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1DA3E7FFC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6F8, &qword_1DA427B10);

  return sub_1DA3E58C8(a1);
}

uint64_t sub_1DA3E8088(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D8, &qword_1DA427850);
  OUTLINED_FUNCTION_5_2(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v2 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1DA3A8004;

  return sub_1DA3E64A8(a1, v9, v10, v1 + v6, v1 + v8);
}

uint64_t sub_1DA3E81A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_13();
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_7_9()
{

  JUMPOUT(0x1DA74E430);
}

BOOL OUTLINED_FUNCTION_8_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_18_5()
{
}

uint64_t OUTLINED_FUNCTION_19_4()
{

  return swift_slowAlloc();
}

uint64_t sub_1DA3E8314()
{
  (*(v0 + 56))(v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v1 = (*(v2 + 40))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    sub_1DA3BA470(v4);
  }

  return v1;
}

uint64_t *sub_1DA3E83B0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return a3;
  }

  v44 = a3;
  v45 = a4;
  sub_1DA3A6A84();
  v8 = &v44;
  result = sub_1DA421FC4();
  if (!result[2])
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:

    v14 = sub_1DA3E97E8(v4, v5, 10);
    v43 = v42;

    if (v43)
    {
      goto LABEL_83;
    }

    goto LABEL_66;
  }

  v8 = result;
  v4 = result[4];
  v5 = result[5];
  v10 = HIBYTE(v5) & 0xF;
  v11 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v12 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_81;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    goto LABEL_82;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v4 & 0x1000000000000000) == 0)
    {
      goto LABEL_87;
    }

    for (result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = sub_1DA422104())
    {
      v13 = *result;
      if (v13 == 43)
      {
        if (v11 < 1)
        {
          goto LABEL_90;
        }

        v10 = v11 - 1;
        if (v11 != 1)
        {
          v14 = 0;
          if (!result)
          {
            goto LABEL_56;
          }

          v21 = result + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else if (v13 == 45)
      {
        if (v11 < 1)
        {
          __break(1u);
          goto LABEL_89;
        }

        v10 = v11 - 1;
        if (v11 != 1)
        {
          v14 = 0;
          if (!result)
          {
            goto LABEL_56;
          }

          v15 = result + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            v17 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              break;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else if (v11)
      {
        v14 = 0;
        if (!result)
        {
LABEL_56:
          LOBYTE(v10) = 0;
          goto LABEL_65;
        }

        while (1)
        {
          v27 = *result - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v28 + v27;
          if (__OFADD__(v28, v27))
          {
            break;
          }

          result = (result + 1);
          if (!--v11)
          {
            goto LABEL_56;
          }
        }
      }

LABEL_64:
      v14 = 0;
      LOBYTE(v10) = 1;
LABEL_65:
      if (v10)
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_66:
      v32 = __OFSUB__(a1, v14);
      v33 = &a1[-v14];
      if (v32)
      {
        goto LABEL_84;
      }

      if (v8[2] < 2)
      {
        goto LABEL_85;
      }

      v34 = v8[6];
      v35 = v8[7];

      result = sub_1DA3E8844(v34, v35, v36);
      if (v37)
      {
        goto LABEL_95;
      }

      a1 = result;

      v38 = a2 - a1;
      if (!__OFSUB__(a2, a1))
      {
        if (v33 < 0 || !v33 && v38 < 0)
        {
          sub_1DA3BA340();
          swift_allocError();
          *v39 = 0;
          *(v39 + 8) = 1;
          swift_willThrow();
          return a3;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
LABEL_78:
          v44 = sub_1DA422364();
          v45 = v40;
          MEMORY[0x1DA74D370](46, 0xE100000000000000);
          v41 = sub_1DA422364();
          MEMORY[0x1DA74D370](v41);

          return v44;
        }

        if (__OFSUB__(7, a1))
        {
          goto LABEL_92;
        }

        if (!__OFADD__(7 - a1, 1))
        {
          if (__OFADD__(a2, 8 - a1))
          {
            goto LABEL_94;
          }

          goto LABEL_78;
        }

        goto LABEL_93;
      }

LABEL_86:
      __break(1u);
LABEL_87:
      ;
    }
  }

  v44 = result[4];
  v45 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v4 == 43)
  {
    if (v10)
    {
      if (--v10)
      {
        v14 = 0;
        v24 = &v44 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v10)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }
  }

  else
  {
    if (v4 != 45)
    {
      if (v10)
      {
        v14 = 0;
        v29 = &v44;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            break;
          }

          v29 = (v29 + 1);
          if (!--v10)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v10)
    {
      if (--v10)
      {
        v14 = 0;
        v18 = &v44 + 1;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v20 - v19;
          if (__OFSUB__(v20, v19))
          {
            break;
          }

          ++v18;
          if (!--v10)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unint64_t sub_1DA3E8844(unint64_t result, unint64_t a2, __n128 a3)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v4)
        {
          if (--v4)
          {
            v8 = 0;
            v18 = v28 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                break;
              }

              v20 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                break;
              }

              ++v18;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v4)
        {
          v8 = 0;
          v23 = v28;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v4)
      {
        if (--v4)
        {
          v8 = 0;
          v12 = v28 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              break;
            }

            v14 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            ++v12;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1DA422104();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v5 >= 1)
        {
          v4 = v5 - 1;
          if (v5 != 1)
          {
            v8 = 0;
            if (result)
            {
              v15 = (result + 1);
              while (1)
              {
                v16 = *v15 - 48;
                if (v16 > 9)
                {
                  goto LABEL_61;
                }

                v17 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_61;
                }

                v8 = v17 + v16;
                if (__OFADD__(v17, v16))
                {
                  goto LABEL_61;
                }

                ++v15;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v7 != 45)
      {
        if (v5)
        {
          v8 = 0;
          if (result)
          {
            while (1)
            {
              v21 = *result - 48;
              if (v21 > 9)
              {
                goto LABEL_61;
              }

              v22 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v5)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v8 = 0;
        LOBYTE(v4) = 1;
        goto LABEL_62;
      }

      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v9 = (result + 1);
            while (1)
            {
              v10 = *v9 - 48;
              if (v10 > 9)
              {
                goto LABEL_61;
              }

              v11 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_61;
              }

              ++v9;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v4) = 0;
LABEL_62:
          v29 = v4;
          v26 = v4;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v8 = sub_1DA3E97E8(result, a2, 10);
  v26 = v27;
LABEL_63:

  if (v26)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}