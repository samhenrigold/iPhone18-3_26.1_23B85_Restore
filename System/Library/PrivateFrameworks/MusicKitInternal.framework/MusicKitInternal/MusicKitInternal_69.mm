void sub_1D54E35E4()
{
  if (!qword_1EC7F76E0)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F76E0);
    }
  }
}

uint64_t sub_1D54E3634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (sqlite3_value_type(v1) != 5)
  {
    sub_1D5615B68();

    sqlite3_value_type(v1);
    v2 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v2);

    MEMORY[0x1DA6EAC70](0x65756C617620, 0xE600000000000000);
    sub_1D51D2CAC();
    swift_allocError();
    *v3 = 0xD00000000000001ELL;
    v3[1] = 0x80000001D568F500;
    swift_willThrow();
  }
}

uint64_t sub_1D54E3740(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sqlite3_value_text(v1);
  sqlite3_value_bytes(v1);
  v3 = sub_1D54EBCE8(v2);

  return v3;
}

uint64_t sub_1D54E3814(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v9 = *(a1 + 16);
  v10 = sqlite3_value_blob(v9);
  v11 = sqlite3_value_bytes(v9);
  v12 = sub_1D54ED308(v10, v11);
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    sub_1D560B9C8();
    swift_allocObject();
    sub_1D560B9B8();
    sub_1D54E4304(a4, a2, a3);
    sub_1D560B948();
    sub_1D4E55E1C(v14, v15);
  }
}

unint64_t sub_1D54E3960(uint64_t a1)
{
  result = sqlite3_value_type(*(a1 + 16));
  if ((result - 1) <= 4)
  {
    return 0x4030201uLL >> (8 * (result - 1));
  }

  __break(1u);
  return result;
}

void sub_1D54E399C(uint64_t a1@<X0>, sqlite3_int64 *a2@<X8>)
{
  switch(sub_1D54E3960(a1))
  {
    case 1u:
      a2[3] = MEMORY[0x1E69E6530];
      a2[4] = &off_1F50BFF10;
      *a2 = sqlite3_value_int64(*(a1 + 16));
      return;
    case 2u:
      a2[3] = MEMORY[0x1E69E63B0];
      a2[4] = &off_1F50C02D0;
      *a2 = sqlite3_value_double(*(a1 + 16));
      return;
    case 3u:
      a2[3] = MEMORY[0x1E69E6158];
      a2[4] = &off_1F50C04B0;

      v9 = sub_1D54E3740(v11);
      goto LABEL_7;
    case 4u:
      a2[3] = MEMORY[0x1E6969080];
      a2[4] = sub_1D52EF058();
      v6 = *(a1 + 16);
      v7 = sqlite3_value_blob(v6);
      v8 = sqlite3_value_bytes(v6);
      v9 = sub_1D54ED308(v7, v8);
LABEL_7:
      if (v2)
      {
        goto LABEL_8;
      }

      *a2 = v9;
      a2[1] = v10;
      break;
    default:
      a2[3] = &type metadata for SQLNull;
      a2[4] = sub_1D54E42B0();

      sub_1D54E3634(v5);
      if (!v2)
      {
        return;
      }

LABEL_8:
      __swift_deallocate_boxed_opaque_existential_1(a2);
      break;
  }
}

sqlite3_value *sub_1D54E3AEC(const sqlite3_value *a1)
{
  result = sqlite3_value_dup(a1);
  if (result)
  {
    *(v1 + 16) = result;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E3B14()
{
  sqlite3_value_free(*(v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D54E3B9C()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](*(v0 + 16));
  return sub_1D5616328();
}

uint64_t sub_1D54E3C50(uint64_t a1)
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](*(a1 + 16));
  return sub_1D5616328();
}

uint64_t sub_1D54E3CA8(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D54E3B70();
  return sub_1D5616328();
}

uint64_t sub_1D54E3CE8(uint64_t a1)
{
  sub_1D54E399C(a1, &v3);
  sub_1D4E48324(&v3, v4);
  sub_1D4E628D4(v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1638, &unk_1D566AD90);
  v1 = sub_1D5614DB8();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1;
}

uint64_t sub_1D54E3DBC(uint64_t a1)
{
  sub_1D54E399C(a1, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(*(v2 + 8) + 16))(v1);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

sqlite3_stmt *sub_1D54E3EA8(sqlite3_stmt *result, uint64_t iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (iCol > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v2 = sqlite3_column_value(result, iCol);
  if (v2)
  {
    v3 = v2;
    type metadata accessor for SQLDynamicValue.Box();
    swift_allocObject();
    return sub_1D54E3AEC(v3);
  }

  else
  {
    sub_1D5615B68();

    v4 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v4);

    sub_1D51D2CAC();
    swift_allocError();
    *v5 = 0xD000000000000022;
    v5[1] = 0x80000001D568F520;
    return swift_willThrow();
  }
}

sqlite3_stmt *sub_1D54E3FD0@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X8>)
{
  result = sub_1D54E3EA8(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D54E3FFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_value(result, a2, *(a3 + 16));
  if (result)
  {
    sub_1D5615B68();

    v3 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v3);

    sub_1D51D2CAC();
    swift_allocError();
    *v4 = 0xD00000000000001ELL;
    v4[1] = 0x80000001D568F550;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1D54E4118(uint64_t a1)
{
  result = sub_1D54E4140();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D54E4140()
{
  result = qword_1EC7F76E8;
  if (!qword_1EC7F76E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F76E8);
  }

  return result;
}

unint64_t sub_1D54E4198()
{
  result = qword_1EC7F76F0;
  if (!qword_1EC7F76F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F76F0);
  }

  return result;
}

unint64_t sub_1D54E41F0()
{
  result = qword_1EC7F76F8;
  if (!qword_1EC7F76F8)
  {
    type metadata accessor for SQLDynamicValue.Box();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F76F8);
  }

  return result;
}

uint64_t sub_1D54E4248(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7700, &qword_1D566AD88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D54E42B0()
{
  result = qword_1EC7F7708;
  if (!qword_1EC7F7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7708);
  }

  return result;
}

uint64_t sub_1D54E4304(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D54E4370@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1D54E43D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D4E79B90(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D54E4400@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D4E79B98(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D54E4430@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D4E79BA0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D54E4464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D4E79BC4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D54E44A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D4E79BE8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D54E44E0(sqlite3 *a1)
{
  v2 = v1;
  v4 = sub_1D5614DA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[3];
  v17[0] = v1[2];
  v17[1] = v8;

  sub_1D5614D98();
  sub_1D4F53278();
  v9 = sub_1D5615998();
  (*(v5 + 8))(v7, v4);

  v11 = v2[4];
  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v12 = v2[5];
  if (v12)
  {
    v13 = 526336;
  }

  else
  {
    v13 = 0x80000;
  }

  if ((v12 & 2) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = (v12 & 1) << 11;
  }

  if (v9)
  {
    v15 = (v9 + 32);
  }

  else
  {
    v15 = 0;
  }

  function_v2 = sqlite3_create_function_v2(a1, v15, v11, v14 | 1, v2, sub_1D54E497C, 0, 0, sub_1D54E498C);

  return function_v2;
}

void sub_1D54E46A4(sqlite3_context *a1, int a2, uint64_t *a3)
{
  v6 = sub_1D5614DA8();
  MEMORY[0x1EEE9AC00](v6);
  if (!a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = sqlite3_user_data(a1);
  if (v7)
  {
    v8 = v7;

    if ((a2 & 0x80000000) == 0)
    {
      v9 = MEMORY[0x1E69E7CC0];
      if (!a2)
      {
LABEL_13:
        v15 = v8[6];

        v15(&v20, v9);

        v16 = a1;
        v17 = v21;
        v18 = v22;
        __swift_project_boxed_opaque_existential_1(&v20, v21);
        (*(v18 + 16))(v16, v17, v18);

        __swift_destroy_boxed_opaque_existential_1(&v20);
        return;
      }

      v19 = a1;
      v10 = a2;
      v20 = MEMORY[0x1E69E7CC0];
      sub_1D4F04B0C(0, a2, 0);
      v9 = v20;
      v11 = a3;
      while (v10)
      {
        if (!a3)
        {
          goto LABEL_17;
        }

        v12 = *v11;
        if (!*v11)
        {
          goto LABEL_16;
        }

        v20 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1D4F04B0C(v13 > 1, v14 + 1, 1);
          v9 = v20;
        }

        *(v9 + 16) = v14 + 1;
        *(v9 + 8 * v14 + 32) = v12;
        ++v11;
        if (!--v10)
        {
          a1 = v19;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_1D54E4980(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D54E4990()
{

  return v0;
}

uint64_t sub_1D54E49B8()
{
  sub_1D54E4990();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

unint64_t sub_1D54E4A34()
{
  result = qword_1EC7F7728;
  if (!qword_1EC7F7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7728);
  }

  return result;
}

unint64_t sub_1D54E4A8C()
{
  result = qword_1EC7F7730;
  if (!qword_1EC7F7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7730);
  }

  return result;
}

unint64_t sub_1D54E4AE4()
{
  result = qword_1EC7F7738;
  if (!qword_1EC7F7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7738);
  }

  return result;
}

unint64_t sub_1D54E4B3C()
{
  result = qword_1EC7F7740;
  if (!qword_1EC7F7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7740);
  }

  return result;
}

uint64_t sub_1D54E4BD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1D4F0B2EC();
  sub_1D4EFEE08();
  v4 = v3;
  sub_1D4E6456C(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1D54E4CB8(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_1D4E6456C(v9);
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

const char *sub_1D54E4D58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char **a6)
{
  OUTLINED_FUNCTION_146();
  result = swift_beginAccess();
  v12 = *(a1 + 136);
  if (!v12)
  {
    goto LABEL_15;
  }

  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_beginAccess();
  v13 = sqlite3_prepare_v3(v12, a2, a4, 1u, (a5 + 48), a6);
  swift_endAccess();
  sub_1D54EF4CC(v13);
  OUTLINED_FUNCTION_17_88();
  if (v16)
  {
  }

  v16 = v15 == 14 && v14 == 16;
  if (v16)
  {
  }

  v17 = sqlite3_extended_errcode(*(a1 + 136));
  result = sqlite3_errstr(v13);
  if (!result)
  {
    goto LABEL_16;
  }

  sub_1D5614E98();
  result = sqlite3_errmsg(*(a1 + 136));
  if (result)
  {
    sub_1D5614E98();
    sub_1D54EF4CC(v17);
    sub_1D51D2BD0();
    OUTLINED_FUNCTION_29();
    v18 = swift_allocError();
    OUTLINED_FUNCTION_23_74(v18, v19);
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1D54E4EC8(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v5 = *(a1 + 136);
  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = sub_1D54E05C8(v5, a2);
  if (!v2)
  {
    v7 = v6;
    sub_1D54EF4CC(v6);
    OUTLINED_FUNCTION_17_88();
    if (!v10)
    {
      v10 = v9 == 14 && v8 == 16;
      if (!v10)
      {
        v11 = sqlite3_extended_errcode(*(a1 + 136));
        if (sqlite3_errstr(v7))
        {
          v12 = sub_1D5614E98();
          v14 = v13;
          if (sqlite3_errmsg(*(a1 + 136)))
          {
            v15 = sub_1D5614E98();
            v17 = v16;
            v18 = sub_1D54EF4CC(v11);
            v19 = v18;
            v20 = HIDWORD(v18);
            sub_1D51D2BD0();
            OUTLINED_FUNCTION_29();
            swift_allocError();
            *v21 = v11;
            *(v21 + 4) = v19;
            *(v21 + 8) = v20;
            *(v21 + 16) = v12;
            *(v21 + 24) = v14;
            *(v21 + 32) = v15;
            *(v21 + 40) = v17;
            swift_willThrow();
            return;
          }

LABEL_14:
          __break(1u);
          return;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }
  }
}

void sub_1D54E5028(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  if (!*(a1 + 136))
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_146();
  v6 = sqlite3_exec(v2, v3, v4, v5, 0);
  sub_1D54EF4CC(v6);
  OUTLINED_FUNCTION_17_88();
  if (!v9)
  {
    v9 = v8 == 14 && v7 == 16;
    if (!v9)
    {
      v10 = sqlite3_extended_errcode(*(a1 + 136));
      if (sqlite3_errstr(v6))
      {
        v11 = sub_1D5614E98();
        v13 = v12;
        if (sqlite3_errmsg(*(a1 + 136)))
        {
          v14 = sub_1D5614E98();
          v16 = v15;
          v17 = sub_1D54EF4CC(v10);
          v18 = v17;
          v19 = HIDWORD(v17);
          sub_1D51D2BD0();
          OUTLINED_FUNCTION_29();
          swift_allocError();
          *v20 = v10;
          *(v20 + 4) = v18;
          *(v20 + 8) = v19;
          *(v20 + 16) = v11;
          *(v20 + 24) = v13;
          *(v20 + 32) = v14;
          *(v20 + 40) = v16;
          swift_willThrow();
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }
}

char *sub_1D54E5144(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  result = *(a1 + 136);
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = sub_1D54EDE80(result);
  sub_1D54EF4CC(v3);
  OUTLINED_FUNCTION_17_88();
  if (v6)
  {
  }

  v6 = v5 == 14 && v4 == 16;
  if (v6)
  {
  }

  v7 = sqlite3_extended_errcode(*(a1 + 136));
  result = sqlite3_errstr(v3);
  if (!result)
  {
    goto LABEL_12;
  }

  sub_1D5614E98();
  result = sqlite3_errmsg(*(a1 + 136));
  if (result)
  {
    sub_1D5614E98();
    sub_1D54EF4CC(v7);
    sub_1D51D2BD0();
    OUTLINED_FUNCTION_29();
    v8 = swift_allocError();
    OUTLINED_FUNCTION_23_74(v8, v9);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D54E5260()
{
  OUTLINED_FUNCTION_60();
  v1[75] = v0;
  v1[74] = v2;
  v1[76] = *(_s16AttachedLocationVMa(0) - 8);
  v1[77] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D54E531C, 0, 0);
}

uint64_t sub_1D54E531C()
{
  v1 = *(v0 + 600);
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 136) = 0;
  v2 = sub_1D523FAF8(MEMORY[0x1E69E7CC0]);
  sub_1D54E6C34(v2, v3, v4, 0, 1, 20, 0, 0, (v0 + 176), 0);
  memcpy((v1 + 144), (v0 + 176), 0x41uLL);
  _s9StatementCMa();
  sub_1D54E6D90();
  *(v1 + 216) = sub_1D5614BD8();
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  *(v1 + 240) = 0;
  *(v1 + 248) = 1;
  v5 = OUTLINED_FUNCTION_0_249();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

const char *sub_1D54E5420()
{
  v1 = v0[75];
  v2 = v0[74];
  sub_1D54E6F54();
  v3 = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_options;
  v0[78] = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_options;
  v4 = (v2 + v3);
  v5 = *(v2 + v3);
  v6 = 256;
  if ((v4[1] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  if (v4[2])
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0x1000000;
  if ((v4[3] & 1) == 0)
  {
    v9 = 0;
  }

  v10 = v7 | v8 | v9;
  v11 = 0x100000000;
  if ((v4[4] & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000000000;
  if ((v4[5] & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000000000;
  if ((v4[6] & 1) == 0)
  {
    v13 = 0;
  }

  v14 = v11 | v12;
  v15 = 0x100000000000000;
  if ((v4[7] & 1) == 0)
  {
    v15 = 0;
  }

  v16 = v10 | v14 | v13;
  if (v4[10])
  {
    v17 = 0x10000;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1D54E7FA0(v16 | v15, v17 | (v4[11] << 24) | v4[8] & 1 | (v4[9] << 8));
  v19 = sub_1D5614DE8();

  swift_beginAccess();
  v20 = sqlite3_open_v2((v19 + 32), (v1 + 136), v18, 0);
  swift_endAccess();

  v21 = *(v1 + 136);
  if (v20)
  {
    v22 = sqlite3_extended_errcode(v21);
    result = sqlite3_errstr(v20);
    if (result)
    {
      v24 = v0[75];
      v62 = sub_1D5614E98();
      v26 = v25;
      result = sqlite3_errmsg(*(v24 + 136));
      if (result)
      {
        v27 = v0[75];
        v28 = sub_1D5614E98();
        v30 = v29;
        v31 = sub_1D54EF4CC(v22);
        v32 = v31;
        v33 = HIDWORD(v31);
        sub_1D51D2BD0();
        OUTLINED_FUNCTION_29();
        swift_allocError();
        *v34 = v22;
        *(v34 + 4) = v32;
        *(v34 + 8) = v33;
        *(v34 + 16) = v62;
        *(v34 + 24) = v26;
        *(v34 + 32) = v28;
        *(v34 + 40) = v30;
        swift_willThrow();
        sqlite3_close_v2(*(v27 + 136));

        OUTLINED_FUNCTION_55();

        return v35();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sqlite3_extended_result_codes(v21, 1);
  v36 = *v4;
  v37 = v4[1];
  v38 = v4[2];
  v39 = v4[3];
  v40 = v4[4];
  v41 = v4[5];
  v42 = v4[6];
  v43 = v4[7];
  v61 = v4[9];
  v63 = v4[8];
  v60 = v4[10];
  v44 = v4[11];
  v45 = swift_task_alloc();
  v46 = 256;
  if ((v37 & 1) == 0)
  {
    v46 = 0;
  }

  v47 = v46 & 0xFFFFFFFFFFFFFFFELL | v36 & 1;
  v0[79] = v45;
  if (v38)
  {
    v48 = 0x10000;
  }

  else
  {
    v48 = 0;
  }

  v49 = 0x1000000;
  if ((v39 & 1) == 0)
  {
    v49 = 0;
  }

  v50 = v47 | v48 | v49;
  v51 = 0x100000000;
  if ((v40 & 1) == 0)
  {
    v51 = 0;
  }

  v52 = 0x10000000000;
  if ((v41 & 1) == 0)
  {
    v52 = 0;
  }

  v53 = 0x1000000000000;
  if ((v42 & 1) == 0)
  {
    v53 = 0;
  }

  v54 = v51 | v52;
  v55 = 0x100000000000000;
  if ((v43 & 1) == 0)
  {
    v55 = 0;
  }

  v56 = v50 | v54 | v53;
  if (v60)
  {
    v57 = 0x10000;
  }

  else
  {
    v57 = 0;
  }

  v58 = v57 | (v44 << 24);
  *v45 = v0;
  v45[1] = sub_1D54E57EC;
  v59 = v0[75];

  return sub_1D54E7FE8(v59, v56 | v55, v58 | v63 & 1 | (v61 << 8));
}

uint64_t sub_1D54E57EC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 640) = v0;

  v4 = sub_1D54E6DE4();
  if (v0)
  {
    swift_getObjectType();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v7 = sub_1D54E67AC;
  }

  else
  {
    *(v2 + 648) = v4;
    swift_getObjectType();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v7 = sub_1D54E595C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D54E595C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(*(v0 + 592) + *(v0 + 624));
  *(*(v0 + 600) + 112) = (v1 & 1) == 0;
  if (v1)
  {
    *(v0 + 440) = 0xD00000000000001DLL;
    *(v0 + 448) = 0x80000001D568F720;
    *(v0 + 456) = 0;
    *(v0 + 464) = 0;
    *(v0 + 472) = 0;
    v2 = swift_task_alloc();
    *(v0 + 656) = v2;
    *v2 = v0;
    v2[1] = sub_1D54E5A80;

    return sub_1D54F2350();
  }

  else
  {
    OUTLINED_FUNCTION_9_123();
    OUTLINED_FUNCTION_7_134();
    *(v0 + 672) = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_attachedLocations;
    v4 = OUTLINED_FUNCTION_0_249();

    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }
}

uint64_t sub_1D54E5A80()
{
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 664) = v0;

  swift_getObjectType();
  v5 = sub_1D5615338();
  if (v0)
  {
    v6 = sub_1D54E681C;
  }

  else
  {
    v6 = sub_1D54E5BD8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D54E5BD8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_123();
  OUTLINED_FUNCTION_7_134();
  *(v0 + 672) = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_attachedLocations;
  v1 = OUTLINED_FUNCTION_0_249();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D54E5C44()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 680) = OUTLINED_FUNCTION_28_66(*(v0 + 672));

  swift_getObjectType();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  v1 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D54E5CBC()
{
  v5 = v1[85];
  v6 = v1[77];
  v7 = v1[76];
  v8 = *(v5 + 16);
  v1[86] = v8;
  v1[87] = 0;
  if (v8)
  {
    if (*(v5 + 16))
    {
      v2 = 0x80000001D568F740;
      sub_1D54E6E38(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
      sub_1D4F0029C();
      v10 = v9;
      v3 = *(v9 + 16);
      v0 = v3 + 1;
      if (v3 < *(v9 + 24) >> 1)
      {
LABEL_4:
        *(v10 + 16) = v0;
        v11 = v10 + 80 * v3;
        *(v11 + 32) = 0xD000000000000010;
        *(v11 + 40) = v2;
        *(v11 + 104) = 0;
        v12 = sub_1D54E9B64();
        v13 = MEMORY[0x1E69E6158];
        OUTLINED_FUNCTION_32_59(v12, v14);
        OUTLINED_FUNCTION_24_70();
        if (v4 >= v2 >> 1)
        {
          OUTLINED_FUNCTION_1_187();
        }

        OUTLINED_FUNCTION_19_82();
        __swift_destroy_boxed_opaque_existential_1(v1 + 45);

        OUTLINED_FUNCTION_8_132();
        if (v15)
        {
          OUTLINED_FUNCTION_75();
        }

        OUTLINED_FUNCTION_3_189();
        OUTLINED_FUNCTION_25_64();
        if (v0 > (v13 >> 1))
        {
          OUTLINED_FUNCTION_1_187();
        }

        OUTLINED_FUNCTION_15_91();
        __swift_destroy_boxed_opaque_existential_1(v1 + 50);
        sub_1D54E6E9C(v2);
        OUTLINED_FUNCTION_8_132();
        if (v15)
        {
          OUTLINED_FUNCTION_75();
        }

        OUTLINED_FUNCTION_5_144();
        OUTLINED_FUNCTION_29_58(v16, v17, v18, MEMORY[0x1E69E7CC0]);
        v19 = swift_task_alloc();
        v1[90] = v19;
        *v19 = v1;
        OUTLINED_FUNCTION_4_145(v19);
        OUTLINED_FUNCTION_25_3();

        return sub_1D54F2350();
      }
    }

    else
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_1_187();
    v10 = v26;
    goto LABEL_4;
  }

  v1[88] = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_scalarFunctions;
  OUTLINED_FUNCTION_0_249();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1D54E5EEC()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 712) = OUTLINED_FUNCTION_28_66(*(v0 + 704));

  swift_getObjectType();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  v1 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D54E5F64()
{
  v4 = 0;
  OUTLINED_FUNCTION_10_119();
  OUTLINED_FUNCTION_27_71();
  if (!v3)
  {
    while (1)
    {
LABEL_2:
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v8 >= v2)
      {
        break;
      }

      v3 = *(v1 + 8 * v8);
      ++v4;
      if (v3)
      {
        v4 = v8;
        goto LABEL_6;
      }
    }

    *(v0 + 736) = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_tableFunctions;
    OUTLINED_FUNCTION_0_249();
    OUTLINED_FUNCTION_63_0();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  while (1)
  {
LABEL_6:
    v9 = *(*(v0 + 600) + 136);
    if (!v9)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_14_93();
    v10 = sub_1D54E44E0(v9);
    sub_1D54EF4CC(v10);
    OUTLINED_FUNCTION_17_88();
    if (!v13)
    {
      v13 = v12 == 14 && v11 == 16;
      if (!v13)
      {
        break;
      }
    }

    v3 &= v3 - 1;
    OUTLINED_FUNCTION_18_88();

    if (!v3)
    {
      goto LABEL_2;
    }
  }

  v15 = sqlite3_extended_errcode(*(*(v0 + 600) + 136));
  v5 = sqlite3_errstr(v10);
  if (!v5)
  {
    goto LABEL_25;
  }

  v16 = *(v0 + 600);
  sub_1D5614E98();
  v5 = sqlite3_errmsg(*(v16 + 136));
  if (v5)
  {
    OUTLINED_FUNCTION_30_68(v5, v6, v7, v17);
    sub_1D54EF4CC(v15);
    sub_1D51D2BD0();
    OUTLINED_FUNCTION_29();
    v18 = swift_allocError();
    OUTLINED_FUNCTION_21_79(v18, v19);
    OUTLINED_FUNCTION_18_88();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_63_0();

    __asm { BRAA            X1, X16 }
  }

LABEL_26:
  __break(1u);
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D54E6150()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v2 + 728) = v0;

  if (v0)
  {

    sub_1D51D2984(v2 + 480);
    swift_getObjectType();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v8 = sub_1D54E688C;
  }

  else
  {
    sub_1D51D2984(v2 + 480);
    swift_getObjectType();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v8 = sub_1D54E62B4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1D54E62B4()
{
  v4 = v1[87] + 1;
  v1[87] = v4;
  v5 = v1[85];
  if (v4 == v1[86])
  {

    v1[88] = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_scalarFunctions;
    OUTLINED_FUNCTION_0_249();
    OUTLINED_FUNCTION_25_3();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  if (v4 >= *(v5 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1D54E6E38(v5 + ((*(v1[76] + 80) + 32) & ~*(v1[76] + 80)) + *(v1[76] + 72) * v4, v1[77]);
  sub_1D4F0029C();
  v11 = v10;
  v2 = *(v10 + 16);
  v0 = v2 + 1;
  if (v2 >= *(v10 + 24) >> 1)
  {
LABEL_19:
    OUTLINED_FUNCTION_1_187();
    v11 = v22;
  }

  *(v11 + 16) = v0;
  v12 = v11 + 80 * v2;
  *(v12 + 32) = 0xD000000000000010;
  *(v12 + 40) = 0x80000001D568F740;
  *(v12 + 104) = 0;
  v13 = sub_1D54E9B64();
  v14 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_32_59(v13, v15);
  OUTLINED_FUNCTION_24_70();
  if (v3 >= v2 >> 1)
  {
    OUTLINED_FUNCTION_1_187();
  }

  OUTLINED_FUNCTION_19_82();
  __swift_destroy_boxed_opaque_existential_1(v1 + 45);

  OUTLINED_FUNCTION_8_132();
  if (v16)
  {
    OUTLINED_FUNCTION_75();
  }

  OUTLINED_FUNCTION_3_189();
  OUTLINED_FUNCTION_25_64();
  if (v0 > (v14 >> 1))
  {
    OUTLINED_FUNCTION_1_187();
  }

  OUTLINED_FUNCTION_15_91();
  __swift_destroy_boxed_opaque_existential_1(v1 + 50);
  sub_1D54E6E9C(v2);
  OUTLINED_FUNCTION_8_132();
  if (v16)
  {
    OUTLINED_FUNCTION_75();
  }

  OUTLINED_FUNCTION_5_144();
  OUTLINED_FUNCTION_29_58(v17, v18, v19, MEMORY[0x1E69E7CC0]);
  v20 = swift_task_alloc();
  v1[90] = v20;
  *v20 = v1;
  OUTLINED_FUNCTION_4_145(v20);
  OUTLINED_FUNCTION_25_3();

  return sub_1D54F2350();
}

uint64_t sub_1D54E64F8()
{
  v1 = v0[92];
  v2 = v0[74];
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v0[93] = *(v2 + v1);

  swift_getObjectType();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  v3 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1D54E6598()
{
  v4 = 0;
  OUTLINED_FUNCTION_10_119();
  OUTLINED_FUNCTION_27_71();
  if (v3)
  {
LABEL_6:
    while (1)
    {
      v6 = *(*(v0 + 600) + 136);
      if (!v6)
      {
        break;
      }

      OUTLINED_FUNCTION_14_93();
      v7 = sub_1D54EDE80(v6);
      sub_1D54EF4CC(v7);
      OUTLINED_FUNCTION_17_88();
      if (!v10)
      {
        v10 = v9 == 14 && v8 == 16;
        if (!v10)
        {
          v14 = sqlite3_extended_errcode(*(*(v0 + 600) + 136));
          if (!sqlite3_errstr(v7))
          {
            goto LABEL_25;
          }

          v15 = *(v0 + 600);
          sub_1D5614E98();
          v16 = sqlite3_errmsg(*(v15 + 136));
          if (v16)
          {
            OUTLINED_FUNCTION_30_68(v16, v17, v18, v19);
            sub_1D54EF4CC(v14);
            sub_1D51D2BD0();
            OUTLINED_FUNCTION_29();
            v20 = swift_allocError();
            OUTLINED_FUNCTION_21_79(v20, v21);
            OUTLINED_FUNCTION_18_88();

            OUTLINED_FUNCTION_55();
            OUTLINED_FUNCTION_63_0();

            __asm { BRAA            X1, X16 }
          }

          goto LABEL_26;
        }
      }

      v3 &= v3 - 1;
      OUTLINED_FUNCTION_18_88();

      if (!v3)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v5 >= v2)
      {
        v11 = *(v0 + 600);

        *(v11 + 128) = &off_1F50C0A38;
        swift_unknownObjectWeakAssign();

        OUTLINED_FUNCTION_63_0();

        __asm { BRAA            X2, X16 }
      }

      v3 = *(v1 + 8 * v5);
      ++v4;
      if (v3)
      {
        v4 = v5;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1D54E67AC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54E681C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54E688C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54E6934()
{
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v1 = *(v0 + 136);
  if (!v1)
  {
LABEL_12:
    sub_1D53A4820(v0 + 120);
    sub_1D4EA7420(*(v0 + 144), *(v0 + 152));

    swift_defaultActor_destroy();
    return v0;
  }

  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  OUTLINED_FUNCTION_146();
  v2 = swift_beginAccess();
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  MEMORY[0x1EEE9AC00](v2);
  _s9StatementCMa();
  v21[0] = v3;
  v21[1] = v4;
  v21[2] = v5;
  v21[3] = sub_1D54E6D88;
  v21[4] = swift_getKeyPath();
  v18 = *(v0 + 112);
  v19 = *(v0 + 113);

  v20 = sub_1D54E4BD0(v6);

  sub_1D4EF3128(v21);
  result = sub_1D4E62628(v20);
  if (!result)
  {
LABEL_9:

    if (!(v18 & 1 | ((v19 & 1) == 0)))
    {
      OUTLINED_FUNCTION_146();
      sqlite3_exec(v10, v11, v12, v13, 0);
      OUTLINED_FUNCTION_146();
      sqlite3_exec(v14, v15, v16, v17, 0);
    }

    sqlite3_close_v2(v1);

    goto LABEL_12;
  }

  v8 = result;
  if (result >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6EB9B0](i, v20);
      }

      else
      {
      }

      sub_1D54F634C();
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54E6BB4()
{
  sub_1D54E6934();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t getEnumTagSinglePayload for AudioAnalysis.Statistics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *sub_1D54E6C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  sub_1D523FAF8(MEMORY[0x1E69E7CC0]);

  __src[2] = a1;
  __src[3] = a2;
  __src[4] = a3;
  __src[5] = a4;
  LOBYTE(__src[6]) = a5 & 1;
  __src[7] = a6;
  LOBYTE(__src[8]) = a7 & 1;
  __src[0] = a8;
  __src[1] = a10;
  sub_1D54FA7FC();

  return memcpy(a9, __src, 0x41uLL);
}

uint64_t sub_1D54E6D3C@<X0>(void *a3@<X8>)
{
  result = swift_getAtKeyPath();
  *a3 = v5;
  return result;
}

unint64_t sub_1D54E6D90()
{
  result = qword_1EDD54928[0];
  if (!qword_1EDD54928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD54928);
  }

  return result;
}

unint64_t sub_1D54E6DE4()
{
  result = qword_1EDD586B0;
  if (!qword_1EDD586B0)
  {
    _s10ConnectionCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD586B0);
  }

  return result;
}

uint64_t sub_1D54E6E38(uint64_t a1, uint64_t a2)
{
  v4 = _s16AttachedLocationVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D54E6E9C(uint64_t a1)
{
  v2 = _s16AttachedLocationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_23_74(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 4) = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = v6;

  return swift_willThrow();
}

double OUTLINED_FUNCTION_25_64()
{
  *(v0 + 168) = 1;

  return result;
}

uint64_t sub_1D54E6F54()
{
  v1 = v0;
  v2 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  type metadata accessor for SQLDatabase.Location(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = (v11 - v10);
  sub_1D52FA270(v1, v11 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v8, v12, v2);
    v13 = sub_1D560BF08();
    (*(v4 + 8))(v8, v2);
  }

  else
  {
    v14 = *v12;
    v15 = v12[1];
    sub_1D5615B68();

    MEMORY[0x1DA6EAC70](v14, v15);

    MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D568F810);
    return 0x3A656C6966;
  }

  return v13;
}

uint64_t sub_1D54E7104(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  type metadata accessor for SQLDatabase.Location(0);
  OUTLINED_FUNCTION_14();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v29 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7750, &qword_1D566B198);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v29 - v19;
  v21 = (&v29 + *(v18 + 56) - v19);
  sub_1D52FA270(a1, &v29 - v19);
  sub_1D52FA270(a2, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D52FA270(v20, v16);
    v25 = *v16;
    v24 = v16[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v25 == *v21 && v24 == v21[1])
      {
      }

      else
      {
        v27 = sub_1D5616168();

        if ((v27 & 1) == 0)
        {
          sub_1D52FA2D4(v20);
          goto LABEL_8;
        }
      }

      sub_1D52FA2D4(v20);
      v22 = 1;
      return v22 & 1;
    }

LABEL_7:
    sub_1D54E7CB8(v20);
LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  sub_1D52FA270(v20, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v6 + 8))(v14, v4);
    goto LABEL_7;
  }

  (*(v6 + 32))(v10, v21, v4);
  v22 = sub_1D560BFB8();
  v23 = *(v6 + 8);
  v23(v10, v4);
  v23(v14, v4);
  sub_1D52FA2D4(v20);
  return v22 & 1;
}

uint64_t sub_1D54E73DC(uint64_t a1)
{
  v2 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  type metadata accessor for SQLDatabase.Location(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1D52FA270(v1, v11 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v8, v12, v2);
    MEMORY[0x1DA6EC0D0](1);
    sub_1D54E7D20(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    return (*(v4 + 8))(v8, v2);
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5614E28();
  }
}

uint64_t sub_1D54E7594(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54E75BC, 0, 0);
}

uint64_t sub_1D54E75BC()
{
  v1 = *(v0 + 32);
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  if (sub_1D4E62628(MEMORY[0x1E69E7CC0]))
  {
    sub_1D5011C30(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 64);
  v7 = *(v0 + 16);
  *(v4 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_transactions) = v3;
  *(v4 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_isDeserialized) = 0;
  *(v4 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_attachedLocations) = v2;
  v8 = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_scalarFunctions;
  _s14ScalarFunctionCMa();
  *(v4 + v8) = sub_1D5614BD8();
  v9 = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_tableFunctions;
  _s13TableFunctionCMa();
  *(v4 + v9) = sub_1D5614BD8();
  sub_1D52FA270(v7, v4 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_location);
  v10 = v4 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_options;
  *v10 = v5;
  *(v10 + 8) = v6;
  _s10ConnectionCMa();
  swift_allocObject();

  v11 = swift_task_alloc();
  *(v0 + 40) = v11;
  *v11 = v0;
  v11[1] = sub_1D54E778C;

  return sub_1D54E5260();
}

uint64_t sub_1D54E778C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  sub_1D54E7D20(qword_1EDD57FC0, type metadata accessor for SQLDatabase, &unk_1D566B170);
  swift_getObjectType();
  v6 = sub_1D5615338();
  if (v1)
  {
    v7 = sub_1D54E79A4;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_1D54E7920;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D54E7920()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_1D52FA2D4(v0[2]);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection) = v1;

  v3 = v0[1];
  v4 = v0[4];

  return v3(v4);
}

uint64_t sub_1D54E79A4()
{
  v1 = *(v0 + 16);

  sub_1D52FA2D4(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D54E7A14()
{
  sub_1D52FA2D4(v0 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_location);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D54E7A94()
{
  sub_1D54E7A14();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D54E7AE8(uint64_t a1)
{
  result = type metadata accessor for SQLDatabase.Location(319);
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

uint64_t sub_1D54E7BD4(uint64_t a1)
{
  result = sub_1D54E7C48();
  if (v2 <= 0x3F)
  {
    result = sub_1D560C0A8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D54E7C48()
{
  result = qword_1EDD528C8;
  if (!qword_1EDD528C8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EDD528C8);
  }

  return result;
}

uint64_t sub_1D54E7CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7750, &qword_1D566B198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D54E7D20(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D54E7D88()
{
  result = qword_1EC7F7758;
  if (!qword_1EC7F7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7758);
  }

  return result;
}

unint64_t sub_1D54E7DEC()
{
  result = qword_1EC7F7760;
  if (!qword_1EC7F7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7760);
  }

  return result;
}

unint64_t sub_1D54E7E50()
{
  result = qword_1EC7F7768;
  if (!qword_1EC7F7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7768);
  }

  return result;
}

uint64_t __swift_memcpy12_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1D54E7EBC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[12])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t sub_1D54E7EF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D54E7F4C()
{
  result = qword_1EC7F7770;
  if (!qword_1EC7F7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7770);
  }

  return result;
}

uint64_t sub_1D54E7FA0(uint64_t a1, unsigned int a2)
{
  if ((a1 & 1) == 0)
  {
    v2 = 1;
    if ((a1 & 0x100000000) == 0)
    {
      return (v2 | (HIBYTE(a2) << 20)) + 0x100000;
    }

LABEL_5:
    v2 |= 0x10u;
    return (v2 | (HIBYTE(a2) << 20)) + 0x100000;
  }

  if ((a1 & 0x100) != 0)
  {
    v2 = 14;
    v3 = 6;
  }

  else
  {
    v2 = 10;
    v3 = 2;
  }

  if ((a1 & 0x10000) == 0)
  {
    v2 = v3;
  }

  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_5;
  }

  return (v2 | (HIBYTE(a2) << 20)) + 0x100000;
}

uint64_t sub_1D54E7FE8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(v3 + 64) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = a3 >> 8;
  OUTLINED_FUNCTION_27_0(&unk_1D566B3C0);
  v8 = v5;
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  *v6 = v3;
  v6[1] = sub_1D54E8098;

  return v8(v4);
}

uint64_t sub_1D54E8098()
{
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_71_0();

    return v7();
  }

  else
  {
    v9 = HIWORD(*(v3 + 24)) & 1;
    OUTLINED_FUNCTION_27_0(&unk_1D566B3C8);
    v12 = v10;
    v11 = swift_task_alloc();
    *(v3 + 40) = v11;
    *v11 = v5;
    v11[1] = sub_1D54E8210;

    return v12(v9);
  }
}

uint64_t sub_1D54E8210()
{
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_71_0();

    return v7();
  }

  else
  {
    v9 = *(v3 + 24);
    OUTLINED_FUNCTION_27_0(&unk_1D566B3D0);
    v12 = v10;
    v11 = swift_task_alloc();
    *(v3 + 48) = v11;
    *v11 = v5;
    v11[1] = sub_1D54E8380;

    return v12(HIBYTE(v9) & 1);
  }
}

uint64_t sub_1D54E8380()
{
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_71_0();

    return v7();
  }

  else
  {
    v9 = *(v3 + 64);
    OUTLINED_FUNCTION_27_0(&unk_1D566B3D8);
    v12 = v10;
    v11 = swift_task_alloc();
    *(v3 + 56) = v11;
    *v11 = v5;
    v11[1] = sub_1D54E84F4;

    return v12(v9 & 1);
  }
}

uint64_t sub_1D54E84F4()
{
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_1D54E85DC(uint64_t a1)
{
  v1 = sub_1D5615EF8();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D54E8628(char a1)
{
  result = 0x4554454C4544;
  switch(a1)
  {
    case 1:
      result = 0x455441434E555254;
      break;
    case 2:
      result = 0x54534953524550;
      break;
    case 3:
      result = 0x59524F4D454DLL;
      break;
    case 4:
      result = 4997463;
      break;
    case 5:
      result = 4605519;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D54E86C0(uint64_t a1)
{
  v1 = sub_1D5615EF8();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D54E8714(char a1)
{
  if (a1)
  {
    return 0x564953554C435845;
  }

  else
  {
    return 0x4C414D524F4ELL;
  }
}

uint64_t sub_1D54E874C(unint64_t a1, int a2, unint64_t a3, int a4)
{
  result = 0;
  if (((a1 ^ a3) & 1) == 0 && ((a1 >> 8) & 1) == ((a3 >> 8) & 1) && ((a1 >> 16) & 1) == ((a3 >> 16) & 1) && ((a1 >> 24) & 1) == ((a3 >> 24) & 1) && (BYTE4(a1) & 1) == (BYTE4(a3) & 1) && ((a1 >> 40) & 1) == ((a3 >> 40) & 1) && (HIWORD(a1) & 1) == (HIWORD(a3) & 1) && (HIBYTE(a1) & 1) == (HIBYTE(a3) & 1))
  {
    v6 = BYTE1(a4);
    v7 = BYTE2(a2);
    v8 = a2 ^ a4;
    if (((a2 ^ a4) & 1) == 0)
    {
      v9 = sub_1D54E8628(SBYTE1(a2));
      v11 = v10;
      if (v9 == sub_1D54E8628(v6) && v11 == v12)
      {
      }

      else
      {
        v14 = sub_1D5616168();

        result = 0;
        if ((v14 & 1) == 0)
        {
          return result;
        }
      }

      return sub_1D4F3C198(v7 & 1) & (HIBYTE(v8) == 0);
    }
  }

  return result;
}

uint64_t sub_1D54E889C(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = a3 >> 8;
  MEMORY[0x1DA6EC0D0](a2 & 1);
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D54E8628(v4);
  sub_1D5614E28();

  sub_1D5614E28();

  return MEMORY[0x1DA6EC0D0](HIBYTE(a3));
}

uint64_t sub_1D54E8994(uint64_t a1, int a2)
{
  sub_1D56162D8();
  sub_1D54E889C(v5, a1 & 0x101010101010101, a2 & 0xFF01FF01);
  return sub_1D5616328();
}

unint64_t sub_1D54E8A08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D54E85DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D54E8A38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D54E8628(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D54E8A88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D54E86C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D54E8AB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D54E8714(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D54E8AE4(_BYTE *a1, _BYTE *a2)
{
  v3 = 256;
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFFFFFFFFFELL | *a1 & 1;
  if (a1[2])
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if (a1[3])
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 | v6 | v8;
  if (a1[4])
  {
    v10 = 0x100000000;
  }

  else
  {
    v10 = 0;
  }

  if (a1[5])
  {
    v11 = 0x10000000000;
  }

  else
  {
    v11 = 0;
  }

  if (a1[6])
  {
    v12 = 0x1000000000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = v10 | v11;
  if (a1[7])
  {
    v14 = 0x100000000000000;
  }

  else
  {
    v14 = 0;
  }

  v15 = v9 | v13 | v12;
  v16 = a1[8] & 1 | (a1[9] << 8);
  if (a1[10])
  {
    v17 = 0x10000;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | (a1[11] << 24);
  if ((a2[1] & 1) == 0)
  {
    v3 = 0;
  }

  v19 = v3 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  if (a2[2])
  {
    v20 = 0x10000;
  }

  else
  {
    v20 = 0;
  }

  if ((a2[3] & 1) == 0)
  {
    v7 = 0;
  }

  v21 = v19 | v20 | v7;
  if (a2[4])
  {
    v22 = 0x100000000;
  }

  else
  {
    v22 = 0;
  }

  if (a2[5])
  {
    v23 = 0x10000000000;
  }

  else
  {
    v23 = 0;
  }

  if (a2[6])
  {
    v24 = 0x1000000000000;
  }

  else
  {
    v24 = 0;
  }

  v25 = v22 | v23;
  if (a2[7])
  {
    v26 = 0x100000000000000;
  }

  else
  {
    v26 = 0;
  }

  v27 = v21 | v25 | v24;
  v28 = a2[8] & 1 | (a2[9] << 8);
  if (a2[10])
  {
    v29 = 0x10000;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29 | (a2[11] << 24);

  return sub_1D54E874C(v15 | v14, v18 | v16, v27 | v26, v30 | v28);
}

uint64_t sub_1D54E8C70()
{
  v1 = 256;
  if ((v0[1] & 1) == 0)
  {
    v1 = 0;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFFFELL | *v0 & 1;
  if (v0[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((v0[3] & 1) == 0)
  {
    v4 = 0;
  }

  v5 = v2 | v3 | v4;
  v6 = 0x100000000;
  if ((v0[4] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x10000000000;
  if ((v0[5] & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x1000000000000;
  if ((v0[6] & 1) == 0)
  {
    v8 = 0;
  }

  v9 = v6 | v7;
  v10 = 0x100000000000000;
  if ((v0[7] & 1) == 0)
  {
    v10 = 0;
  }

  v11 = v5 | v9 | v8;
  if (v0[10])
  {
    v12 = 0x10000;
  }

  else
  {
    v12 = 0;
  }

  return sub_1D54E8994(v11 | v10, v12 | (v0[11] << 24) | v0[8] & 1 | (v0[9] << 8));
}

uint64_t sub_1D54E8D2C(uint64_t a1)
{
  v2 = 256;
  if ((v1[1] & 1) == 0)
  {
    v2 = 0;
  }

  v3 = v2 & 0xFFFFFFFFFFFFFFFELL | *v1 & 1;
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if ((v1[3] & 1) == 0)
  {
    v5 = 0;
  }

  v6 = v3 | v4 | v5;
  v7 = 0x100000000;
  if ((v1[4] & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x10000000000;
  if ((v1[5] & 1) == 0)
  {
    v8 = 0;
  }

  v9 = 0x1000000000000;
  if ((v1[6] & 1) == 0)
  {
    v9 = 0;
  }

  v10 = v7 | v8;
  v11 = 0x100000000000000;
  if ((v1[7] & 1) == 0)
  {
    v11 = 0;
  }

  v12 = v6 | v10 | v9;
  if (v1[10])
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  return sub_1D54E889C(a1, v12 | v11, v13 | (v1[11] << 24) | v1[8] & 1 | (v1[9] << 8));
}

uint64_t sub_1D54E8DE8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v25 = v1[10];
  v26 = v1[9];
  v11 = v1[11];
  sub_1D56162D8();
  v12 = 256;
  if ((v3 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  if (v4)
  {
    v14 = 0x10000;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0x1000000;
  if ((v5 & 1) == 0)
  {
    v15 = 0;
  }

  v16 = v13 | v14 | v15;
  v17 = 0x100000000;
  if ((v6 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = 0x10000000000;
  if ((v7 & 1) == 0)
  {
    v18 = 0;
  }

  v19 = 0x1000000000000;
  if ((v8 & 1) == 0)
  {
    v19 = 0;
  }

  v20 = v17 | v18;
  v21 = 0x100000000000000;
  if ((v9 & 1) == 0)
  {
    v21 = 0;
  }

  v22 = v16 | v20 | v19;
  if (v25)
  {
    v23 = 0x10000;
  }

  else
  {
    v23 = 0;
  }

  sub_1D54E889C(v27, v22 | v21, v23 | (v11 << 24) | v10 & 1 | (v26 << 8));
  return sub_1D5616328();
}

uint64_t sub_1D54E8F04(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54E8F28, 0, 0);
}

uint64_t sub_1D54E8F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_101(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = *(v4 + 24) >> 1;
  v8 = v6 + 1;
  if (v7 <= v6)
  {
    sub_1D4F0029C();
    v5 = v23;
    v7 = *(v23 + 24) >> 1;
  }

  v9 = *(v3 + 49);
  *(v5 + 16) = v8;
  v10 = v5 + 80 * v6;
  *(v10 + 32) = 0xD000000000000016;
  *(v10 + 40) = 0x80000001D568F890;
  *(v10 + 104) = 0;
  v11 = sub_1D54E8628(v9);
  v13 = v12;
  v14 = v6 + 2;

  if (v7 < v14)
  {
    sub_1D4F0029C();
    v5 = v24;
  }

  *(v5 + 16) = v14;
  v15 = v5 + 80 * v8;
  *(v15 + 32) = v11;
  *(v15 + 40) = v13;
  OUTLINED_FUNCTION_3_99(v15, v26, v28, v30, v32);

  v17 = *(v5 + 16);
  v16 = *(v5 + 24);
  if (v17 >= v16 >> 1)
  {
    OUTLINED_FUNCTION_25(v16);
    sub_1D4F0029C();
    v5 = v25;
  }

  *(v5 + 16) = v17 + 1;
  v18 = v5 + 80 * v17;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  OUTLINED_FUNCTION_3_99(v18, v27, v29, v31, v33);
  sub_1D54F08F4(v5, 0, 0, MEMORY[0x1E69E7CC0], v3 + 16);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_54_3(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_4_146(v20);

  return sub_1D54F2350();
}

uint64_t sub_1D54E90F4()
{
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  sub_1D51D2984(v2 + 16);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1D54E91E0(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54E9204, 0, 0);
}

uint64_t sub_1D54E9204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_101(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_2_185();
  if (!(!v7 & v6))
  {
    OUTLINED_FUNCTION_1_188();
    OUTLINED_FUNCTION_17_89();
  }

  OUTLINED_FUNCTION_16_92();
  OUTLINED_FUNCTION_15_92();
  *(v11 + 32) = v12;
  *(v11 + 40) = v5;
  *(v11 + 104) = 0;
  if (v7)
  {
    v13 = 0x65736C6166;
  }

  else
  {
    v13 = 1702195828;
  }

  if (v7)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = v3 + 2;
  if (v10 <= v4)
  {
    OUTLINED_FUNCTION_25(v8);
    sub_1D4F0029C();
    v9 = v26;
  }

  *(v9 + 16) = v15;
  v16 = v9 + 80 * v4;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  OUTLINED_FUNCTION_0_250(v16, v28, v30, v32, v34, v36);
  OUTLINED_FUNCTION_14_94();
  if (v6)
  {
    OUTLINED_FUNCTION_1_188();
    v17 = v27;
  }

  *(v17 + 16) = v4;
  v18 = v17 + 80 * v15;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  OUTLINED_FUNCTION_0_250(v18, v29, v31, v33, v35, v37);
  OUTLINED_FUNCTION_11_118(v19, v20, v21, MEMORY[0x1E69E7CC0]);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_54_3(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_4_146(v23);

  return sub_1D54F2350();
}

uint64_t sub_1D54E9368(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54E938C, 0, 0);
}

uint64_t sub_1D54E938C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_101(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_2_185();
  if (!(!v7 & v6))
  {
    OUTLINED_FUNCTION_1_188();
    OUTLINED_FUNCTION_17_89();
  }

  OUTLINED_FUNCTION_16_92();
  OUTLINED_FUNCTION_15_92();
  *(v11 + 32) = v12;
  *(v11 + 40) = v5;
  *(v11 + 104) = 0;
  if (v7)
  {
    v13 = 0x65736C6166;
  }

  else
  {
    v13 = 1702195828;
  }

  if (v7)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = v3 + 2;
  if (v10 <= v4)
  {
    OUTLINED_FUNCTION_25(v8);
    sub_1D4F0029C();
    v9 = v26;
  }

  *(v9 + 16) = v15;
  v16 = v9 + 80 * v4;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  OUTLINED_FUNCTION_0_250(v16, v28, v30, v32, v34, v36);
  OUTLINED_FUNCTION_14_94();
  if (v6)
  {
    OUTLINED_FUNCTION_1_188();
    v17 = v27;
  }

  *(v17 + 16) = v4;
  v18 = v17 + 80 * v15;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  OUTLINED_FUNCTION_0_250(v18, v29, v31, v33, v35, v37);
  OUTLINED_FUNCTION_11_118(v19, v20, v21, MEMORY[0x1E69E7CC0]);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_54_3(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_4_146(v23);

  return sub_1D54F2350();
}

uint64_t sub_1D54E94F0(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54E9514, 0, 0);
}

uint64_t sub_1D54E9514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_101(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_2_185();
  if (!(!v7 & v6))
  {
    OUTLINED_FUNCTION_1_188();
    OUTLINED_FUNCTION_17_89();
  }

  OUTLINED_FUNCTION_16_92();
  OUTLINED_FUNCTION_15_92();
  *(v11 + 32) = v12;
  *(v11 + 40) = v5;
  *(v11 + 104) = 0;
  if (v7)
  {
    v13 = 0x65736C6166;
  }

  else
  {
    v13 = 1702195828;
  }

  if (v7)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = v3 + 2;
  if (v10 <= v4)
  {
    OUTLINED_FUNCTION_25(v8);
    sub_1D4F0029C();
    v9 = v26;
  }

  *(v9 + 16) = v15;
  v16 = v9 + 80 * v4;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  OUTLINED_FUNCTION_0_250(v16, v28, v30, v32, v34, v36);
  OUTLINED_FUNCTION_14_94();
  if (v6)
  {
    OUTLINED_FUNCTION_1_188();
    v17 = v27;
  }

  *(v17 + 16) = v4;
  v18 = v17 + 80 * v15;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  OUTLINED_FUNCTION_0_250(v18, v29, v31, v33, v35, v37);
  OUTLINED_FUNCTION_11_118(v19, v20, v21, MEMORY[0x1E69E7CC0]);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_54_3(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_4_146(v23);

  return sub_1D54F2350();
}

_BYTE *sub_1D54E9678(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D54E975C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D54E9834(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D54E9910()
{
  result = qword_1EC7F7778;
  if (!qword_1EC7F7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7778);
  }

  return result;
}

unint64_t sub_1D54E9968()
{
  result = qword_1EC7F7780;
  if (!qword_1EC7F7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7780);
  }

  return result;
}

unint64_t sub_1D54E99C0()
{
  result = qword_1EC7F7788;
  if (!qword_1EC7F7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7788);
  }

  return result;
}

unint64_t sub_1D54E9A18()
{
  result = qword_1EC7F7790;
  if (!qword_1EC7F7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7790);
  }

  return result;
}

uint64_t _s16AttachedLocationVMa(uint64_t a1)
{
  result = qword_1EDD58248;
  if (!qword_1EDD58248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D54E9AE8(uint64_t a1)
{
  result = type metadata accessor for SQLDatabase.Location(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D54E9B64()
{
  v1 = sub_1D560C0A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SQLDatabase.Location(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = _s16AttachedLocationVMa(0);
  sub_1D52FA270(v0 + *(v8 + 20), v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v7, v1);
    v9 = sub_1D560BF08();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v10 = *v7;
    v11 = v7[1];
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1D5615B68();

    v13 = 0x3A656C6966;
    v14 = 0xE500000000000000;
    MEMORY[0x1DA6EAC70](v10, v11);

    MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D568F810);
    return v13;
  }

  return v9;
}

uint64_t sub_1D54E9DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_16();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  result = (*(a3 + 64))(a2, a3);
  if (!v4)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(*(AssociatedConformanceWitness + 24) + 16) + 16))(a1, v3);
    return (*(v9 + 8))(v12, v3);
  }

  return result;
}

uint64_t sub_1D54E9F34()
{
  MEMORY[0x1DA6EAC70]();
  MEMORY[0x1DA6EAC70](39, 0xE100000000000000);
  return 39;
}

uint64_t sub_1D54E9F80(char a1)
{
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2 = 0x564953554C435845;
  }

  else
  {
    v2 = 0x4C414D524F4ELL;
  }

  if (v1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE900000000000045;
  }

  MEMORY[0x1DA6EAC70](v2, v3);
  MEMORY[0x1DA6EAC70](39, 0xE100000000000000);

  return 39;
}

uint64_t sub_1D54EA00C(char a1)
{
  v1 = sub_1D54EAC5C(a1);
  MEMORY[0x1DA6EAC70](v1);
  MEMORY[0x1DA6EAC70](39, 0xE100000000000000);

  return 39;
}

uint64_t sub_1D54EA0D8(uint64_t a1)
{
  sub_1D560C208();
  sub_1D5615568();
  return 0;
}

uint64_t sub_1D54EA160(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_16();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  (*(a2 + 64))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(*(AssociatedConformanceWitness + 8) + 16))(v2);
  (*(v6 + 8))(v9, v2);
  return v11;
}

uint64_t sub_1D54EA2CC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_251();
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E9DD8(a1, a2, WitnessTable);
}

const char *sub_1D54EA378(sqlite3_stmt *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a4 + 32);
  swift_unknownObjectRetain();
  result = v10(a3, a4);
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result)
  {
    return sqlite3_bind_pointer(a1, a2, v5, result, sub_1D54EA518);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1D54EA46C(sqlite3_context *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 32);
  swift_unknownObjectRetain();
  v9 = v8(a2, a3);
  if (v10)
  {
    __break(1u);
  }

  else if (v9)
  {
    sqlite3_result_pointer(a1, v4, v9, sub_1D54EA514);
    return;
  }

  __break(1u);
}

uint64_t sub_1D54EA508(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void sub_1D54EA538(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = 1;
  }

  else if (a1)
  {
    if (qword_1EDD5D8A0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D560C758();
    __swift_project_value_buffer(v4, qword_1EDD76DB0);
    v5 = sub_1D560C738();
    v6 = sub_1D56156C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      type metadata accessor for ICExplicitContentTreatment();
      v9 = sub_1D5614DB8();
      v11 = sub_1D4E6835C(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1D4E3F000, v5, v6, "Unknown ICExplicitContentTreatment: %{public}s. Treating as .none.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1DA6ED200](v8, -1, -1);
      MEMORY[0x1DA6ED200](v7, -1, -1);
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
}

uint64_t UserState.ExplicitContentTreatment.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D54EA7A4()
{
  result = qword_1EC7F7798;
  if (!qword_1EC7F7798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F77A0, &qword_1D566B7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7798);
  }

  return result;
}

unint64_t sub_1D54EA80C()
{
  result = qword_1EC7F77A8;
  if (!qword_1EC7F77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77A8);
  }

  return result;
}

_BYTE *_s24ExplicitContentTreatmentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D54EA970(void *a1@<X8>)
{
  nullsub_1();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1D54EA9A0(uint64_t a1, uint64_t a2)
{

  v3 = sub_1D54E86C0(a1);
  if (v3 == 2)
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D568F910);
    MEMORY[0x1DA6EAC70](0x4D676E696B636F4CLL, 0xEB0000000065646FLL);
    MEMORY[0x1DA6EAC70](0x206D6F726620, 0xE600000000000000);
    sub_1D5615D48();
    sub_1D51D2CAC();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0xE000000000000000;
    swift_willThrow();
  }

  else
  {
    v6 = v3;

    return v6 & 1;
  }
}

unint64_t sub_1D54EAAE8(uint64_t a1, uint64_t a2)
{

  v3 = sub_1D54E85DC(a1);
  if (v3 == 6)
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D568F910);
    MEMORY[0x1DA6EAC70](0x4D6C616E72756F4ALL, 0xEB0000000065646FLL);
    MEMORY[0x1DA6EAC70](0x206D6F726620, 0xE600000000000000);
    sub_1D5615D48();
    sub_1D51D2CAC();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0xE000000000000000;
    swift_willThrow();
  }

  return v3;
}

void sub_1D54EAC2C(void *a1@<X8>)
{
  nullsub_1();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1D54EAC5C(char a1)
{
  result = 0x4554454C4544;
  switch(a1)
  {
    case 1:
      result = 0x455441434E555254;
      break;
    case 2:
      result = 0x54534953524550;
      break;
    case 3:
      result = 0x59524F4D454DLL;
      break;
    case 4:
      result = 4997463;
      break;
    case 5:
      result = 4605519;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D54EAD60(sqlite3_context *a1, char a2)
{
  sub_1D54E8628(a2);
  sub_1D54EC04C(a1);
}

sqlite3_stmt *sub_1D54EADE8(sqlite3_stmt *a1, uint64_t a2)
{
  result = sub_1D54EBE18(a1, a2);
  if (!v2)
  {
    v4 = result;

    v5 = sub_1D54E86C0(v4);
    if (v5 == 2)
    {
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D568F910);
      MEMORY[0x1DA6EAC70](0x4D676E696B636F4CLL, 0xEB0000000065646FLL);
      MEMORY[0x1DA6EAC70](0x206D6F726620, 0xE600000000000000);
      sub_1D5615D48();
      sub_1D51D2CAC();
      swift_allocError();
      *v6 = 0;
      v6[1] = 0xE000000000000000;
      swift_willThrow();
    }

    else
    {
      v7 = v5;

      return (v7 & 1);
    }
  }

  return result;
}

unint64_t sub_1D54EAF38(sqlite3_stmt *a1, uint64_t a2)
{
  v4 = sub_1D54EBE18(a1, a2);
  if (!v2)
  {
    v5 = v4;

    v6 = sub_1D54E85DC(v5);
    if (v6 == 6)
    {
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D568F910);
      MEMORY[0x1DA6EAC70](0x4D6C616E72756F4ALL, 0xEB0000000065646FLL);
      MEMORY[0x1DA6EAC70](0x206D6F726620, 0xE600000000000000);
      sub_1D5615D48();
      v3 = 0xE000000000000000;
      sub_1D51D2CAC();
      swift_allocError();
      *v7 = 0;
      v7[1] = 0xE000000000000000;
      swift_willThrow();
    }

    else
    {
      v3 = v6;
    }
  }

  return v3;
}

sqlite3_stmt *sub_1D54EB088(sqlite3_stmt *result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_column_int64(result, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EB0D0(sqlite3_stmt *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0x564953554C435845;
  }

  else
  {
    v3 = 0x4C414D524F4ELL;
  }

  sub_1D54EBEB8(a1, a2, v3);
}

uint64_t sub_1D54EB13C(sqlite3_stmt *a1, uint64_t a2, char a3)
{
  v5 = sub_1D54E8628(a3);
  sub_1D54EBEB8(a1, a2, v5);
}

sqlite3_stmt *sub_1D54EB1A0(sqlite3_stmt *result, uint64_t a2, sqlite3_int64 a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_int64(result, a2, a3);
  }

  __break(1u);
  return result;
}

unint64_t sub_1D54EB1E8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_7_135(a1);
  result = sub_1D54EAAE8(v3, v4);
  if (!v2)
  {
    *v1 = result;
  }

  return result;
}

uint64_t sub_1D54EB214@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D54EAC5C(*v1);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_1D54EB260@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D54EAF38(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D54EB2A8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_7_135(a1);
  result = sub_1D54EA9A0(v3, v4);
  if (!v2)
  {
    *v1 = result & 1;
  }

  return result;
}

uint64_t sub_1D54EB2D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D54E8714(*v1);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

sqlite3_stmt *sub_1D54EB324@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D54EADE8(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_1D54EB370@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return sub_1D4F48DE4(result, a2);
}

uint64_t sub_1D54EB380@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1D54EB408(uint64_t result, uint64_t iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = iCol;
  if (iCol > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = result;
  result = sqlite3_column_type(result, iCol);
  if (result != 5)
  {
    OUTLINED_FUNCTION_16_93();
    sub_1D5615B68();

    sqlite3_column_type(v3, v2);
    v4 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v4);

    MEMORY[0x1DA6EAC70](0x65756C617620, 0xE600000000000000);
    v5 = sub_1D51D2CAC();
    OUTLINED_FUNCTION_121_0(&type metadata for SQLValueError, v5);
    *v6 = 0xD00000000000001ELL;
    v6[1] = 0x80000001D568F500;
    return swift_willThrow();
  }

  return result;
}

sqlite3_stmt *sub_1D54EB53C(sqlite3_stmt *result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_null(result, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EB59C(char a1)
{
  if (a1)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

sqlite3_stmt *sub_1D54EB5B0(sqlite3_stmt *result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return (sqlite3_column_int(result, a2) != 0);
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1D54EB600(sqlite3_stmt *result, uint64_t a2, char a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_int(result, a2, a3 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EB678@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D54EB378(*a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1D54EB6AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D54EB378(*v1);
  *a1 = result & 1;
  return result;
}

sqlite3_stmt *sub_1D54EB700@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D54EB5B0(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

sqlite3_int64 sub_1D54EB870(sqlite3_int64 result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sqlite3_column_int64(result, a2);
  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

sqlite3_stmt *sub_1D54EB8C0(sqlite3_stmt *result, uint64_t a2, sqlite3_int64 a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    return sqlite3_bind_int64(result, a2, a3);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D54EB910(sqlite3_context *a1, sqlite3_int64 a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    sqlite3_result_int64(a1, a2);
  }
}

uint64_t sub_1D54EB94C()
{
  OUTLINED_FUNCTION_16_93();
  sub_1D5615568();
  return v1;
}

void sub_1D54EB988(sqlite3_stmt *a1, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    sqlite3_column_double(a1, a2);
    return;
  }

  __break(1u);
}

sqlite3_stmt *sub_1D54EB9D0(sqlite3_stmt *result, uint64_t a2, double a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_double(result, a2, a3);
  }

  __break(1u);
  return result;
}

void sub_1D54EBA40(void *a1@<X8>)
{
  nullsub_1();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1D54EBAC0(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D54EB988(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t sub_1D54EBB14()
{
  OUTLINED_FUNCTION_16_93();
  sub_1D5615588();
  return v1;
}

void sub_1D54EBB50(sqlite3_stmt *a1, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    sqlite3_column_double(a1, a2);
    return;
  }

  __break(1u);
}

sqlite3_stmt *sub_1D54EBB9C(sqlite3_stmt *result, uint64_t a2, float a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_double(result, a2, a3);
  }

  __break(1u);
  return result;
}

void sub_1D54EBC14(_DWORD *a1@<X8>)
{
  nullsub_1();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1D54EBC94(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  sub_1D54EBB50(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t sub_1D54EBCE8(uint64_t a1)
{
  if (a1)
  {
    result = sub_1D5614D28();
    if (v2)
    {
      return result;
    }

    OUTLINED_FUNCTION_16_93();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D56877D0);
    sub_1D5615D48();
    v4 = v8;
    v3 = v9;
    v5 = sub_1D51D2CAC();
    OUTLINED_FUNCTION_121_0(&type metadata for SQLValueError, v5);
  }

  else
  {
    v3 = 0x80000001D56877A0;
    v7 = sub_1D51D2CAC();
    OUTLINED_FUNCTION_121_0(&type metadata for SQLValueError, v7);
    v4 = 0xD00000000000002DLL;
  }

  *v6 = v4;
  v6[1] = v3;
  return swift_willThrow();
}

void sub_1D54EBDEC(uint64_t a1)
{
  OUTLINED_FUNCTION_7_135(a1);
  nullsub_1();
  if (!v2)
  {
    *v1 = v3;
    v1[1] = v4;
  }
}

sqlite3_stmt *sub_1D54EBE18(sqlite3_stmt *result, uint64_t iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v2 = iCol;
    if (iCol <= 0x7FFFFFFF)
    {
      v3 = result;
      v4 = sqlite3_column_text(result, iCol);
      sqlite3_column_bytes(v3, v2);
      return sub_1D54EBCE8(v4);
    }
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1D54EBE8C@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X8>)
{
  result = sub_1D54EBE18(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1D54EBEB8(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5614DA8();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1D5614D98();
  sub_1D4F53278();
  v13 = sub_1D5615998();
  result = (*(v8 + 8))(v12, v6);
  if (v13)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      a3 = *(v13 + 16);
      if (a3)
      {
        if (qword_1EDD56B70 == -1)
        {
LABEL_6:
          sqlite3_bind_text64(a1, a2, (v13 + 32), a3 - 1, qword_1EDD76B88, 1u);
        }

LABEL_10:
        OUTLINED_FUNCTION_0_252(&qword_1EDD56B70);
        goto LABEL_6;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EC04C(sqlite3_context *a1)
{
  v2 = sub_1D5614DA8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1D5614D98();
  sub_1D4F53278();
  v9 = sub_1D5615998();
  result = (*(v4 + 8))(v8, v2);
  if (v9)
  {
    v11 = *(v9 + 16);
    if (v11)
    {
      if (qword_1EDD56B70 == -1)
      {
LABEL_4:
        sqlite3_result_text64(a1, (v9 + 32), v11 - 1, qword_1EDD76B88, 1u);
      }
    }

    else
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_0_252(&qword_1EDD56B70);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EC1B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_2_186();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_190();
  OUTLINED_FUNCTION_2_186();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_190();
  v7 = OUTLINED_FUNCTION_11_119();
  v8(v7);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    return 1280070990;
  }

  v9 = OUTLINED_FUNCTION_10_120();
  v10(v9);
  (*(a2 + 16))(v4, a2);
  v11 = OUTLINED_FUNCTION_12_102();
  v12(v11);
  return v2;
}

void sub_1D54EC324()
{
  OUTLINED_FUNCTION_25_1();
  v22 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_2_186();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_190();
  v12 = v10 - v11;
  v14 = *(v13 + 16);
  OUTLINED_FUNCTION_2_186();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_190();
  v20 = v18 - v19;
  (*(v8 + 16))(v12, v21);
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) != 1)
  {
    (*(v16 + 32))(v20, v12, v14);
    (*(v22 + 8))(v6, v4, v14);
    (*(v16 + 8))(v20, v14);
    goto LABEL_6;
  }

  (*(v8 + 8))(v12, v2);
  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v4 <= 0x7FFFFFFF)
  {
    sqlite3_bind_null(v6, v4);
LABEL_6:
    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_26();
    return;
  }

  __break(1u);
}

void sub_1D54EC530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  if (v28 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v28 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (sqlite3_column_type(v30, v28) == 5)
  {
    OUTLINED_FUNCTION_20_92(v32, 1);
  }

  else
  {
    (*(v24 + 8))(v30, v28, v26, v24);
    if (!v20)
    {
      OUTLINED_FUNCTION_20_92(v38, 0);
      (*(v35 + 32))(v32, v38, v33);
    }
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void sub_1D54EC710()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v32 = v7;
  sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v28 = v9;
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v27 - v10;
  v30 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v27 - v23;
  (*(v14 + 16))(v18, v6, v12);
  if (__swift_getEnumTagSinglePayload(v18, 1, AssociatedTypeWitness) == 1)
  {
    v25 = *(v14 + 8);
    v25(v6, v12);
    v25(v18, v12);
    OUTLINED_FUNCTION_20_92(v32, 1);
  }

  else
  {
    (*(v19 + 32))(v24, v18, AssociatedTypeWitness);
    (*(v19 + 16))(v22, v24, AssociatedTypeWitness);
    v26 = v31;
    (*(v30 + 56))(v22, v4);
    (*(v14 + 8))(v6, v12);
    (*(v19 + 8))(v24, AssociatedTypeWitness);
    if (!v0)
    {
      OUTLINED_FUNCTION_20_92(v26, 0);
      (*(v28 + 32))(v32, v26, v29);
    }
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void sub_1D54ECA54()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  (*(v8 + 16))(v12, v19, v4);
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
  {
    (*(v8 + 8))(v12, v4);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = 1;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v6, v21, 1, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v22 = OUTLINED_FUNCTION_15_93();
  v23(v22);
  (*(v2 + 64))(v14, v2);
  (*(v15 + 8))(v18, v14);
  if (!v0)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = 0;
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D54ECCA0(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_1D54ECD84(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_1D54ECEA8(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D54ECF60(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_2_186();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_190();
  OUTLINED_FUNCTION_2_186();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_190();
  v7 = OUTLINED_FUNCTION_11_119();
  v8(v7);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    return 1280070990;
  }

  v9 = OUTLINED_FUNCTION_10_120();
  v10(v9);
  (*(a2 + 8))(v4, a2);
  v11 = OUTLINED_FUNCTION_12_102();
  v12(v11);
  return v2;
}

void sub_1D54ED0D4()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_2_186();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_190();
  v11 = v9 - v10;
  v13 = *(v12 + 16);
  OUTLINED_FUNCTION_2_186();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_190();
  v19 = v17 - v18;
  (*(v7 + 16))(v11, v20, v3);
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) == 1)
  {
    (*(v7 + 8))(v11, v3);
    sqlite3_result_null(v5);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_15_93();
    v22(v21);
    (*(v1 + 16))(v5, v13, v1);
    (*(v15 + 8))(v19, v13);
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D54ED2A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D560C178();
  MEMORY[0x1DA6EAC70](v2);

  return 0x28343665736162;
}

uint64_t sub_1D54ED308(uint64_t a1, unsigned int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  if (a1)
  {
    return MEMORY[0x1DA6E1FA0](a1, a2);
  }

  v3 = sub_1D51D2CAC();
  OUTLINED_FUNCTION_121_0(&type metadata for SQLValueError, v3);
  *v4 = 0xD00000000000002BLL;
  v4[1] = 0x80000001D568F8E0;
  return swift_willThrow();
}

unint64_t sub_1D54ED3D8(uint64_t a1)
{
  result = sub_1D54ED400();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D54ED400()
{
  result = qword_1EC7F77B0;
  if (!qword_1EC7F77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77B0);
  }

  return result;
}

void sub_1D54ED454(sqlite3_context *a1, uint64_t a2, unint64_t a3)
{
  v19[2] = *MEMORY[0x1E69E9840];
  switch(a3 >> 62)
  {
    case 1uLL:
      if (a2 >> 32 < a2)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 = sub_1D560BCA8();
      if (!v11)
      {
        goto LABEL_14;
      }

      v15 = sub_1D560BCC8();
      if (__OFSUB__(a2, v15))
      {
LABEL_26:
        __break(1u);
      }

      v11 += a2 - v15;
LABEL_14:
      v14 = (a2 >> 32) - a2;
LABEL_15:
      v16 = sub_1D560BCB8();
      if (v16 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = v16;
      }

      v18 = v17 + v11;
      if (v11)
      {
        LODWORD(v7) = v18;
      }

      else
      {
        LODWORD(v7) = 0;
      }

      v8 = v11;
LABEL_22:
      sub_1D54ED66C(v8, v7, a1, a2, a3);
      sub_1D4E55E1C(a2, a3);
      if (v3)
      {

        __break(1u);
      }

      return;
    case 2uLL:
      v9 = *(a2 + 16);
      v10 = *(a2 + 24);

      v11 = sub_1D560BCA8();
      if (!v11)
      {
        goto LABEL_6;
      }

      v12 = sub_1D560BCC8();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_25;
      }

      v11 += v9 - v12;
LABEL_6:
      v13 = __OFSUB__(v10, v9);
      v14 = v10 - v9;
      if (!v13)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_9:
      memset(v19, 0, 14);
      v8 = v19;
      v7 = v19;
      goto LABEL_22;
    case 3uLL:
      goto LABEL_9;
    default:
      v19[0] = a2;
      LOWORD(v19[1]) = a3;
      BYTE2(v19[1]) = BYTE2(a3);
      BYTE3(v19[1]) = BYTE3(a3);
      BYTE4(v19[1]) = BYTE4(a3);
      BYTE5(v19[1]) = BYTE5(a3);
      v7 = v19 + BYTE6(a3);
      v8 = v19;
      goto LABEL_22;
  }
}

void sub_1D54ED66C(void *a1, int a2, sqlite3_context *a3, uint64_t a4, unint64_t a5)
{
  v7 = 0;
  switch(a5 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        v7 = HIDWORD(a4) - a4;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v9 = *(a4 + 16);
      v8 = *(a4 + 24);
      v7 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
LABEL_6:
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
LABEL_7:
          if (qword_1EDD56B70 == -1)
          {
LABEL_8:
            sqlite3_result_blob64(a3, a1, v7, qword_1EDD76B88);
            return;
          }
        }

        swift_once();
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
      return;
    case 3uLL:
      goto LABEL_7;
    default:
      v7 = BYTE6(a5);
      goto LABEL_7;
  }
}

sqlite3_stmt *sub_1D54ED764(sqlite3_stmt *result, uint64_t iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v2 = iCol;
    if (iCol <= 0x7FFFFFFF)
    {
      v3 = result;
      v4 = sqlite3_column_blob(result, iCol);
      v5 = sqlite3_column_bytes(v3, v2);
      return sub_1D54ED308(v4, v5);
    }
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1D54ED7DC@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X8>)
{
  result = sub_1D54ED764(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1D54ED808(sqlite3_stmt *a1, int64_t a2, uint64_t a3, unint64_t a4)
{
  v28[2] = *MEMORY[0x1E69E9840];
  switch(a4 >> 62)
  {
    case 1uLL:
      if (a3 > a3 >> 32)
      {
        goto LABEL_36;
      }

      v13 = sub_1D560BCA8();
      if (!v13)
      {
        goto LABEL_26;
      }

      v23 = sub_1D560BCC8();
      if (__OFSUB__(a3, v23))
      {
        goto LABEL_46;
      }

      v13 += a3 - v23;
LABEL_26:
      sub_1D560BCB8();
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_18_89();
      if (!(v8 ^ v9 | v7))
      {
        goto LABEL_43;
      }

      v24 = OUTLINED_FUNCTION_75_2();
      v16 = MEMORY[0x1DA6E1FB0](v24);
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_44;
    case 2uLL:
      goto LABEL_7;
    case 3uLL:
      goto LABEL_15;
    default:
      v28[0] = a3;
      LOWORD(v28[1]) = a4;
      BYTE2(v28[1]) = BYTE2(a4);
      BYTE3(v28[1]) = BYTE3(a4);
      BYTE4(v28[1]) = BYTE4(a4);
      BYTE5(v28[1]) = BYTE5(a4);
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_18_89();
      if (!(v8 ^ v9 | v7))
      {
        goto LABEL_39;
      }

      v10 = OUTLINED_FUNCTION_75_2();
      v11 = MEMORY[0x1DA6E1FB0](v10);
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_7:
      v12 = *(a3 + 16);

      v13 = sub_1D560BCA8();
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = sub_1D560BCC8();
      if (__OFSUB__(v12, v14))
      {
        goto LABEL_45;
      }

      v13 += v12 - v14;
LABEL_10:
      sub_1D560BCB8();
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_18_89();
      if (!(v8 ^ v9 | v7))
      {
        goto LABEL_40;
      }

      v15 = OUTLINED_FUNCTION_75_2();
      v16 = MEMORY[0x1DA6E1FB0](v15);
      if (v16 < 0)
      {
        __break(1u);
LABEL_15:
        memset(v28, 0, 14);
        if (a2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
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
        }

        OUTLINED_FUNCTION_18_89();
        if (!(v8 ^ v9 | v7))
        {
          goto LABEL_38;
        }

        v17 = OUTLINED_FUNCTION_75_2();
        v11 = MEMORY[0x1DA6E1FB0](v17);
        if (v11 < 0)
        {
          goto LABEL_42;
        }

LABEL_19:
        v18 = v11;
        if (qword_1EDD56B70 != -1)
        {
          OUTLINED_FUNCTION_0_252(&qword_1EDD56B70);
        }

        v19 = qword_1EDD76B88;
        v20 = v28;
        v21 = a1;
        v22 = a2;
      }

      else
      {
LABEL_30:
        v18 = v16;
        if (qword_1EDD56B70 != -1)
        {
          OUTLINED_FUNCTION_0_252(&qword_1EDD56B70);
        }

        v19 = qword_1EDD76B88;
        v21 = a1;
        v22 = a2;
        v20 = v13;
      }

      sqlite3_bind_blob64(v21, v22, v20, v18, v19);
      v25 = OUTLINED_FUNCTION_75_2();
      return sub_1D4E55E1C(v25, v26);
  }
}

unint64_t sub_1D54EDAFC()
{
  result = qword_1EC7F77B8;
  if (!qword_1EC7F77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77B8);
  }

  return result;
}

unint64_t sub_1D54EDB50(uint64_t a1)
{
  result = sub_1D54EDB78();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D54EDB78()
{
  result = qword_1EC7F77C0;
  if (!qword_1EC7F77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLDataType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D54EDCC0()
{
  result = qword_1EC7F77C8;
  if (!qword_1EC7F77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_92(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

void *sub_1D54EDDE0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6[72] = 1;
  LODWORD(__src[0]) = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = MEMORY[0x1E69E7CC0];
  LOBYTE(__src[4]) = 0;
  __src[5] = 0;
  LOBYTE(__src[6]) = 1;
  __src[7] = 25;
  LOBYTE(__src[8]) = 0;
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v15 = 25;
  v16 = 0;
  sub_1D51D2D00(__src, v6);
  sub_1D51D2D5C(&v8);
  return memcpy(a4, __src, 0x41uLL);
}

uint64_t sub_1D54EDE80(sqlite3 *a1)
{
  v2 = v1;
  v4 = sub_1D5614DA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[3];
  v13[1] = v1[2];
  v13[2] = v8;

  sub_1D5614D98();
  sub_1D4F53278();
  v9 = sub_1D5615998();
  (*(v5 + 8))(v7, v4);

  if (qword_1EDD58488 != -1)
  {
    swift_once();
  }

  if (v9)
  {
    v10 = (v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  swift_beginAccess();

  module_v2 = sqlite3_create_module_v2(a1, v10, &dword_1EDD76BC0, v2, sub_1D54EED08);
  swift_endAccess();

  return module_v2;
}

uint64_t sub_1D54EE030(uint64_t a1)
{
  switch(a1)
  {
    case '@':
      result = 5;
      break;
    case 'A':
      result = 6;
      break;
    case 'B':
      result = 7;
      break;
    case 'C':
      result = 8;
      break;
    case 'D':
      result = 9;
      break;
    case 'E':
      result = 10;
      break;
    case 'F':
      result = 11;
      break;
    case 'G':
      result = 12;
      break;
    case 'H':
      result = 13;
      break;
    case 'I':
      result = 14;
      break;
    case 'J':
      result = 15;
      break;
    default:
      if (a1 == 8)
      {
        v2 = 2;
      }

      else
      {
        v2 = 17;
      }

      if (a1 == 32)
      {
        v3 = 4;
      }

      else
      {
        v3 = v2;
      }

      if (a1 == 16)
      {
        v4 = 3;
      }

      else
      {
        v4 = v3;
      }

      if (a1 == 150)
      {
        v5 = 16;
      }

      else
      {
        v5 = v4;
      }

      if (a1 == 4)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      if (a1 == 2)
      {
        result = 0;
      }

      else
      {
        result = v6;
      }

      break;
  }

  return result;
}

uint64_t sub_1D54EE138@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D54EE030(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D54EE164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D54EE100(*v1);
  *a1 = result;
  return result;
}

void sub_1D54EE190(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v50 = a2[4];
  v5 = *(a2 + 3);
  v53 = *(a2 + 11);
  sub_1D4F032C4();
  v56 = v6;
  v57 = a1;
  if (v4 && v3)
  {
    v7 = 0;
    v54 = (v4 + 12 * v3);
    v51 = a1 + 32;
    v8 = (v4 + 4);
    do
    {
      v10 = v8 - 4;
      v9 = *(v8 - 1);
      if (v8[1])
      {
        v11 = sub_1D54EE030(*v8);
        if (v11 == 17)
        {

          sub_1D5615B68();

          v48 = sub_1D56160F8();
          MEMORY[0x1DA6EAC70](v48);

          sub_1D51D2CAC();
          swift_allocError();
          *v49 = 0xD000000000000024;
          v49[1] = 0x80000001D568F9E0;
          swift_willThrow();

          return;
        }

        if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_38;
        }

        if (*(a1 + 16) <= v9)
        {
          goto LABEL_39;
        }

        v12 = v11;
        v13 = (v51 + 16 * v9);
        v14 = *v13;
        v15 = v13[1];
        v17 = *(v56 + 16);
        v16 = *(v56 + 24);

        if (v17 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_1_189();
          sub_1D4F032C4();
          v56 = v19;
        }

        *(v56 + 16) = v17 + 1;
        v18 = v56 + 40 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        *(v18 + 48) = v12;
        *(v18 + 49) = 1;
        *(v18 + 56) = v7;
        *(v18 + 64) = a2;
        a1 = v57;
      }

      v8 += 12;
      ++v7;
    }

    while (v10 + 12 != v54);
  }

  sub_1D4F031D0(0, v50 & ~(v50 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v21 = v20;
  if (!v5 || !v50)
  {
LABEL_20:
    v58 = MEMORY[0x1E69E7CC0];
    v34 = *(a1 + 16);
    if (!v34)
    {
LABEL_32:

      return;
    }

    v35 = 0;
    v36 = (a1 + 40);
    v37 = MEMORY[0x1E69E7CC0];
    while (v35 <= 0x3F)
    {
      if ((v53 >> v35))
      {
        goto LABEL_26;
      }

LABEL_31:
      ++v35;
      v36 += 2;
      if (v34 == v35)
      {
        goto LABEL_32;
      }
    }

    if (*(a1 + 16) < 0x3FuLL)
    {
      goto LABEL_37;
    }

    sub_1D4EF3910(v38);
    v37 = v58;
LABEL_26:
    v39 = *(v36 - 1);
    v40 = *v36;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D4F010A0(0, *(v37 + 16) + 1, 1, v37);
      v37 = v43;
    }

    v41 = *(v37 + 16);
    if (v41 >= *(v37 + 24) >> 1)
    {
      v44 = OUTLINED_FUNCTION_1_189();
      sub_1D4F010A0(v44, v45, v46, v37);
      v37 = v47;
    }

    *(v37 + 16) = v41 + 1;
    v42 = v37 + 16 * v41;
    *(v42 + 32) = v39;
    *(v42 + 40) = v40;
    v58 = v37;
    a1 = v57;
    goto LABEL_31;
  }

  v55 = &v5[2 * v50];
  while (1)
  {
    v22 = *v5;
    if ((v22 & 0x80000000) != 0)
    {
      break;
    }

    if (*(a1 + 16) <= v22)
    {
      goto LABEL_36;
    }

    v23 = *(v5 + 4);
    v24 = (a1 + 32 + 16 * v22);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(v21 + 16);
    v28 = *(v21 + 24);

    if (v27 >= v28 >> 1)
    {
      v30 = OUTLINED_FUNCTION_1_189();
      sub_1D4F031D0(v30, v31, v32, v21);
      v21 = v33;
    }

    *(v21 + 16) = v27 + 1;
    v29 = v21 + 24 * v27;
    *(v29 + 32) = v25;
    *(v29 + 40) = v26;
    *(v29 + 48) = v23 != 0;
    v5 += 2;
    if (v5 == v55)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

char *sub_1D54EE59C(char *result)
{
  v2 = v1;
  v3 = result;
  v4 = *v1;
  v6 = *(v1 + 1);
  v5 = *(v1 + 2);
  *(result + 10) = v4;
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D561C050;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D51D2C58();
    *(inited + 32) = v6;
    *(inited + 40) = v5;

    v8 = sub_1D5616468();
    swift_setDeallocating();
    sub_1D4EFF2B4();
    result = sqlite3_vmprintf("%s", v8);
    *(v3 + 6) = result;
    *(v3 + 14) = 1;
  }

  v9 = *(v2 + 3);
  v10 = *(v9 + 16);
  v11 = (v9 + 72);
  v12 = 1;
  v13 = 0x7FFFFFFFLL;
  if (v10)
  {
    while (1)
    {
      v14 = *(v3 + 4);
      if (!v14)
      {
        break;
      }

      if (!v13)
      {
        __break(1u);
        break;
      }

      v15 = *(v11 - 2);
      v16 = *v11;
      v11 += 48;
      v17 = v14 + 8 * v15;
      *v17 = v12;
      *(v17 + 4) = v16;
      --v13;
      ++v12;
      if (!--v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    if ((v2[12] & 1) == 0)
    {
      *(v3 + 8) = *(v2 + 5);
    }

    *(v3 + 9) = *(v2 + 7);
    if (v2[16])
    {
      *(v3 + 20) = 1;
    }
  }

  return result;
}

double sub_1D54EE6E4()
{
  dword_1EDD76BC0 = 4;
  unk_1EDD76BC4 = 0;
  dword_1EDD76BCC = 0;
  qword_1EDD76BD0 = sub_1D54EE92C;
  qword_1EDD76BD8 = sub_1D54EE9A8;
  qword_1EDD76BE0 = sub_1D54EEA14;
  unk_1EDD76BE8 = 0;
  qword_1EDD76BF0 = sub_1D54EEA90;
  qword_1EDD76BF8 = sub_1D54EEAFC;
  qword_1EDD76C00 = sub_1D54EEBC4;
  qword_1EDD76C08 = sub_1D54EEC2C;
  qword_1EDD76C10 = sub_1D54EEC40;
  qword_1EDD76C18 = sub_1D54EECCC;
  qword_1EDD76C20 = sub_1D54EED04;
  result = 0.0;
  unk_1EDD76C28 = 0u;
  unk_1EDD76C38 = 0u;
  unk_1EDD76C48 = 0u;
  unk_1EDD76C58 = 0u;
  unk_1EDD76C68 = 0u;
  unk_1EDD76C78 = 0u;
  return result;
}

uint64_t sub_1D54EE7BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);

  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a5)
  {

    v9 = v8(v6, a5);
    sub_1D4EA7420(v8, v7);

    return v9;
  }

LABEL_9:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1D54EE930(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = *(result + 24);
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    v5 = *(v3 + 80);

    v6 = v5(v2, a2);

    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D54EE9AC(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      v3 = *(v2 + 64);

      v3(v1);

      sqlite3_free(v1);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EEA18(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = *(result + 24);
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    v5 = *(v3 + 96);

    v6 = v5(v2, a2);

    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D54EEA94(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      v3 = *(v2 + 112);

      v3(v1);

      sqlite3_free(v1);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EEB00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v8 = result;
  if (a3)
  {
    result = sub_1D5614E98();
    v9 = result;
    v11 = v10;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = 0;
  v11 = 0;
  if (!result)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = *(v8 + 8);
  if (v12)
  {
    v13 = *(v12 + 128);

    v14 = v13(v8, a2, v9, v11, a5, v6);

    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D54EEBC8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *(v2 + 144);

      v4 = v3(v1);

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EEC30(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EEC44(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  v4 = *(result + 8);
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    v7 = *(v4 + 160);

    v8 = v7(v3, a2, a3);

    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D54EECD0(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 24))
    {
      return 12;
    }

    if (a2)
    {
      result = 0;
      *a2 = *(v2 + 16);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EED0C()
{

  sub_1D4EA7420(*(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t sub_1D54EED6C()
{
  sub_1D54EED0C();

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D54EEDD8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1D54EEE2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D54EEE94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_1D54EEEE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1D54EEF64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1D54EEFA4(uint64_t result, int a2, int a3)
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

uint64_t sub_1D54EF004(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1D54EF044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1D54EF0A4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D54EF180()
{
  result = qword_1EC7F77D0;
  if (!qword_1EC7F77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77D0);
  }

  return result;
}

uint64_t sub_1D54EF1D8(uint64_t a1, uint64_t a2)
{
  switch(BYTE4(a1))
  {
    case 1:
      if (BYTE4(a2) != 1)
      {
        return 0;
      }

      goto LABEL_27;
    case 2:
      if (BYTE4(a2) != 2)
      {
        return 0;
      }

      goto LABEL_43;
    case 3:
      if (BYTE4(a2) != 3)
      {
        return 0;
      }

      goto LABEL_31;
    case 4:
      if (BYTE4(a2) != 4)
      {
        return 0;
      }

      goto LABEL_43;
    case 5:
      if (BYTE4(a2) == 5)
      {
        goto LABEL_27;
      }

      return 0;
    case 6:
      if (BYTE4(a2) == 6)
      {
        goto LABEL_35;
      }

      return 0;
    case 7:
      if (BYTE4(a2) != 7)
      {
        return 0;
      }

      if (a1 == 33)
      {
        if (a2 == 33)
        {
          return OUTLINED_FUNCTION_53_0();
        }
      }

      else if (a2 != 33)
      {
        goto LABEL_58;
      }

      return 0;
    case 8:
      if (BYTE4(a2) != 8)
      {
        return 0;
      }

LABEL_43:
      if (a1 == 3)
      {
        if (a2 == 3)
        {
          return OUTLINED_FUNCTION_53_0();
        }
      }

      else if (a2 != 3)
      {
        goto LABEL_58;
      }

      return 0;
    case 9:
      if (BYTE4(a2) != 9)
      {
        return 0;
      }

LABEL_35:
      if (a1 == 6)
      {
        if (a2 == 6)
        {
          return OUTLINED_FUNCTION_53_0();
        }
      }

      else if (a2 != 6)
      {
        goto LABEL_58;
      }

      return 0;
    case 0xA:
      if (BYTE4(a2) != 10)
      {
        return 0;
      }

      if (a1 == 12)
      {
        if (a2 == 12)
        {
          return OUTLINED_FUNCTION_53_0();
        }

        return 0;
      }

      if (a2 == 12)
      {
        return 0;
      }

LABEL_58:
      if (a2 == a1)
      {
        return OUTLINED_FUNCTION_53_0();
      }

      return 0;
    case 0xB:
      if (BYTE4(a2) != 11)
      {
        return 0;
      }

      goto LABEL_31;
    case 0xC:
      if (BYTE4(a2) != 12)
      {
        return 0;
      }

LABEL_27:
      if (a1 == 2)
      {
        if (a2 == 2)
        {
          return OUTLINED_FUNCTION_53_0();
        }
      }

      else if (a2 != 2 && ((a2 ^ a1) & 1) == 0)
      {
        return OUTLINED_FUNCTION_53_0();
      }

      return 0;
    case 0xD:
      if (BYTE4(a2) != 13)
      {
        return 0;
      }

LABEL_31:
      if ((a1 & 1) == 0)
      {
        if (a2)
        {
          return 0;
        }

        return OUTLINED_FUNCTION_53_0();
      }

      if (a2)
      {
        return OUTLINED_FUNCTION_53_0();
      }

      return 0;
    case 0xE:
      switch(a1)
      {
        case 1:
          if (BYTE4(a2) != 14 || a2 != 1)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 2:
          if (BYTE4(a2) != 14 || a2 != 2)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 3:
          if (BYTE4(a2) != 14 || a2 != 3)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 4:
          if (BYTE4(a2) != 14 || a2 != 4)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 5:
          if (BYTE4(a2) != 14 || a2 != 5)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 6:
          if (BYTE4(a2) != 14 || a2 != 6)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 7:
          if (BYTE4(a2) != 14 || a2 != 7)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 8:
          if (BYTE4(a2) != 14 || a2 != 8)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 9:
          if (BYTE4(a2) != 14 || a2 != 9)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 10:
          if (BYTE4(a2) != 14 || a2 != 10)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 11:
          if (BYTE4(a2) != 14 || a2 != 11)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 12:
          if (BYTE4(a2) != 14 || a2 != 12)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 13:
          if (BYTE4(a2) != 14 || a2 != 13)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 14:
          if (BYTE4(a2) != 14 || a2 != 14)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 15:
          if (BYTE4(a2) != 14 || a2 != 15)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 16:
          if (BYTE4(a2) != 14 || a2 != 16)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 17:
          if (BYTE4(a2) != 14 || a2 != 17)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        default:
          if (BYTE4(a2) != 14 || a2)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
      }

    default:
      if (BYTE4(a2))
      {
        return 0;
      }

      return a1 == a2;
  }
}

uint64_t sub_1D54EF4CC(unsigned int a1)
{
  v1 = 0;
  v2 = a1 & 0xFFFFFF00;
  v3 = 0xE00000000;
  switch(a1)
  {
    case 0:
      v3 = 0x100000000;
      v4 = v2 == 512;
      v5 = 0x100000000;
      v6 = 0x100000000;
      goto LABEL_38;
    case 1:
      v3 = 0x200000000;
      v7 = 0x200000000;
      v8 = v2 == 512;
      v6 = 0x200000000;
      v9 = 0x200000000;
      goto LABEL_23;
    case 2:
      return v3 | v1;
    case 3:
      v1 = 1;
      return v3 | v1;
    case 4:
      v1 = v2 != 512;
      v3 = 0x300000000;
      return v3 | v1;
    case 5:
      v3 = 0x400000000;
      v7 = 0x400000000;
      v8 = v2 == 512;
      v6 = 0x400000000;
      v9 = 0x400000000;
      goto LABEL_23;
    case 6:
      v3 = 0x500000000;
      v4 = v2 == 512;
      v5 = 0x500000000;
      v6 = 0x500000000;
      goto LABEL_38;
    case 7:
      v1 = 2;
      return v3 | v1;
    case 8:
      if ((a1 - 256) >> 8 >= 6)
      {
        v1 = 6;
      }

      else
      {
        v1 = (a1 - 256) >> 8;
      }

      v3 = 0x600000000;
      return v3 | v1;
    case 9:
      v1 = 3;
      return v3 | v1;
    case 10:
      if ((a1 - 256) >> 8 >= 0x21)
      {
        v1 = 33;
      }

      else
      {
        v1 = (a1 - 256) >> 8;
      }

      v3 = 0x700000000;
      return v3 | v1;
    case 11:
      v3 = 0x800000000;
      v7 = 0x800000000;
      v8 = v2 == 512;
      v6 = 0x800000000;
      v9 = 0x800000000;
LABEL_23:
      if (v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = 3;
      }

      if (v8)
      {
        v6 = v9;
      }

      if (v2 == 768)
      {
        v11 = 2;
      }

      else
      {
        v11 = v10;
      }

      if (v2 == 768)
      {
        v6 = v7;
      }

      goto LABEL_43;
    case 12:
      v1 = 4;
      return v3 | v1;
    case 13:
      v1 = 5;
      return v3 | v1;
    case 14:
      if ((a1 - 256) >> 8 >= 6)
      {
        v1 = 6;
      }

      else
      {
        v1 = (a1 - 256) >> 8;
      }

      v3 = 0x900000000;
      return v3 | v1;
    case 15:
      v1 = 6;
      return v3 | v1;
    case 16:
      v1 = 7;
      return v3 | v1;
    case 17:
      v1 = 8;
      return v3 | v1;
    case 18:
      v1 = 9;
      return v3 | v1;
    case 19:
      if ((a1 - 256) >> 8 >= 0xC)
      {
        v1 = 12;
      }

      else
      {
        v1 = (a1 - 256) >> 8;
      }

      v3 = 0xA00000000;
      return v3 | v1;
    case 20:
      v1 = 10;
      return v3 | v1;
    case 21:
      v1 = 11;
      return v3 | v1;
    case 22:
      v1 = 12;
      return v3 | v1;
    case 23:
      v1 = v2 != 256;
      v3 = 0xB00000000;
      return v3 | v1;
    case 24:
      v1 = 13;
      return v3 | v1;
    case 25:
      v1 = 14;
      return v3 | v1;
    case 26:
      v1 = 15;
      return v3 | v1;
    case 27:
      v3 = 0xC00000000;
      v4 = v2 == 512;
      v5 = 0xC00000000;
      v6 = 0xC00000000;
LABEL_38:
      if (v4)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (!v4)
      {
        v6 = v5;
      }

LABEL_43:
      if (v2 == 256)
      {
        v1 = 0;
      }

      else
      {
        v1 = v11;
      }

      if (v2 != 256)
      {
        v3 = v6;
      }

      break;
    case 28:
      v1 = v2 != 256;
      v3 = 0xD00000000;
      break;
    default:
      v1 = a1;
      v3 = 0;
      break;
  }

  return v3 | v1;
}

uint64_t sub_1D54EF774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D54EF7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D54EF840(uint64_t a1)
{
  v2 = sub_1D54EF9DC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D54EF87C(uint64_t a1)
{
  v2 = sub_1D54EF9DC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D54EF8DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D8, &qword_1D561C200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D561C050;
  *(inited + 32) = sub_1D5614D68();
  *(inited + 40) = v2;
  v7 = *(v0 + 16);
  v6 = v7;
  sub_1D508AD84(&v7, &v5);
  MEMORY[0x1DA6EAC70](2112032, 0xE300000000000000);
  MEMORY[0x1DA6EAC70](*(v0 + 32), *(v0 + 40));
  v3 = v6;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  return sub_1D5614BD8();
}

unint64_t sub_1D54EF9DC()
{
  result = qword_1EC7F77D8;
  if (!qword_1EC7F77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77D8);
  }

  return result;
}

uint64_t sub_1D54EFA3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF2 && *(a1 + 5))
    {
      v2 = *a1 + 241;
    }

    else
    {
      v3 = *(a1 + 4);
      if (v3 <= 0xE)
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

uint64_t sub_1D54EFA7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 4) = 0;
    *result = a2 - 242;
    if (a3 >= 0xF2)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D54EFAC0(uint64_t a1)
{
  if (*(a1 + 4) <= 0xDu)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 14);
  }
}

uint64_t sub_1D54EFAD8(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xE)
  {
    *result = a2 - 14;
    LOBYTE(a2) = 14;
  }

  *(result + 4) = a2;
  return result;
}

_BYTE *sub_1D54EFB20(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D54EFC10(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
    if (a2 + 32 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 32) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1D54EFC98(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D54EFD70(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_4_147(-1);
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
      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 6);
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

  return OUTLINED_FUNCTION_4_147(v8);
}

_BYTE *sub_1D54EFDF4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_7_136(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_5_145(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_6_148(result, v6);
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
          result = OUTLINED_FUNCTION_35(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D54EFED4(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D54EFF7C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_4_147(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_4_147(v8);
}

_BYTE *sub_1D54F0000(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_7_136(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_5_145(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_6_148(result, v6);
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
          result = OUTLINED_FUNCTION_35(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D54F00D4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_4_147(-1);
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
      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_4_147(v8);
}

_BYTE *sub_1D54F0158(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_7_136(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_5_145(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_6_148(result, v6);
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
          result = OUTLINED_FUNCTION_35(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D54F0224()
{
  result = qword_1EC7F77E0;
  if (!qword_1EC7F77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77E0);
  }

  return result;
}

unint64_t sub_1D54F027C()
{
  result = qword_1EC7F77E8;
  if (!qword_1EC7F77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77E8);
  }

  return result;
}

unint64_t sub_1D54F02D4()
{
  result = qword_1EC7F77F0;
  if (!qword_1EC7F77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77F0);
  }

  return result;
}

unint64_t sub_1D54F032C()
{
  result = qword_1EC7F77F8;
  if (!qword_1EC7F77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77F8);
  }

  return result;
}

unint64_t sub_1D54F0384()
{
  result = qword_1EC7F7800;
  if (!qword_1EC7F7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7800);
  }

  return result;
}

unint64_t sub_1D54F03DC()
{
  result = qword_1EC7F7808;
  if (!qword_1EC7F7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7808);
  }

  return result;
}

unint64_t sub_1D54F0434()
{
  result = qword_1EC7F7810;
  if (!qword_1EC7F7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7810);
  }

  return result;
}

unint64_t sub_1D54F048C()
{
  result = qword_1EC7F7818;
  if (!qword_1EC7F7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7818);
  }

  return result;
}

unint64_t sub_1D54F04E4()
{
  result = qword_1EC7F7820;
  if (!qword_1EC7F7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7820);
  }

  return result;
}

unint64_t sub_1D54F053C()
{
  result = qword_1EC7F7828;
  if (!qword_1EC7F7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7828);
  }

  return result;
}

unint64_t sub_1D54F0594()
{
  result = qword_1EC7F7830;
  if (!qword_1EC7F7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7830);
  }

  return result;
}

unint64_t sub_1D54F05EC()
{
  result = qword_1EC7F7838;
  if (!qword_1EC7F7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7838);
  }

  return result;
}

unint64_t sub_1D54F0644()
{
  result = qword_1EC7F7840;
  if (!qword_1EC7F7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7840);
  }

  return result;
}

uint64_t sub_1D54F06B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
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

uint64_t sub_1D54F06F8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D54F076C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D54F07A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D54F07FC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 80) = a2;
  return result;
}

void sub_1D54F0834(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  OUTLINED_FUNCTION_0_253(a1);
}

void sub_1D54F083C(uint64_t a1, uint64_t a2)
{
  if (__OFADD__(a2, 2))
  {
    __break(1u);
  }

  else
  {
    sub_1D4F0029C();
  }
}

uint64_t sub_1D54F088C(uint64_t a1, uint64_t a2)
{

  sub_1D4EFF470();
  v5 = *(*v2 + 16);
  result = sub_1D4EFF6D8(v5);
  v7 = *v2;
  *(v7 + 16) = v5 + 1;
  v8 = v7 + 80 * v5;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 104) = 0;
  *v2 = v7;
  return result;
}

uint64_t sub_1D54F08F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  result = sub_1D54F0A30();
  v7 = *(a4 + 16);
  if (v7)
  {

    v8 = a2;

    v9 = a1;
    v10 = a3;
    v11 = a4;
LABEL_5:

    *a5 = v9;
    *(a5 + 8) = v8;
    *(a5 + 16) = v10;
    *(a5 + 24) = v11;
    *(a5 + 32) = v7 != 0;
    return result;
  }

  if (a3)
  {
    v9 = a2;

    v10 = 0;
    v11 = 0;
    v8 = a3;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54F0A30()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  v29 = 0;
  v30 = 0xE000000000000000;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = *v1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D54F1BBC(v4, v23);
      if (v28)
      {
        if (v28 == 1)
        {
          sub_1D4E48324(v23, v21);
          MEMORY[0x1DA6EAC70](63, 0xE100000000000000);
          __src[0] = *(v5 + 16) + 1;
          __src[1] = 0;
          LOBYTE(__src[2]) = 0;
          sub_1D4E628D4(v21, &__src[3]);
          LOBYTE(__src[10]) = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D4F0036C();
            v5 = v14;
          }

          v6 = *(v5 + 16);
          if (v6 >= *(v5 + 24) >> 1)
          {
            sub_1D4F0036C();
            v5 = v15;
          }

          __swift_destroy_boxed_opaque_existential_1(v21);
          *(v5 + 16) = v6 + 1;
          memcpy((v5 + 88 * v6 + 32), __src, 0x51uLL);
        }

        else
        {
          v7 = v24;
          v8 = v25;
          v10 = v26;
          v9 = v27;
          sub_1D4E48324(v23, v21);
          __src[0] = v7;
          __src[1] = v8;
          MEMORY[0x1DA6EAC70](2703144, 0xE300000000000000);
          MEMORY[0x1DA6EAC70](__src[0], __src[1]);

          __src[0] = *(v5 + 16) + 1;
          __src[1] = 0;
          LOBYTE(__src[2]) = 0;
          v11 = v22;
          v12 = __swift_project_boxed_opaque_existential_1(v21, v22);
          sub_1D54F0CEC(v12, v11, &__src[3]);
          __src[8] = v10;
          __src[9] = v9;
          LOBYTE(__src[10]) = 1;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D4F0036C();
            v5 = v16;
          }

          v13 = *(v5 + 16);
          if (v13 >= *(v5 + 24) >> 1)
          {
            sub_1D4F0036C();
            v5 = v17;
          }

          *(v5 + 16) = v13 + 1;
          memcpy((v5 + 88 * v13 + 32), __src, 0x51uLL);
          __swift_destroy_boxed_opaque_existential_1(v21);
        }
      }

      else
      {
        MEMORY[0x1DA6EAC70](*&v23[0], *(&v23[0] + 1));
      }

      v4 += 80;
      --v3;
    }

    while (v3);
    v18 = v29;
    v2 = v30;
  }

  else
  {
    v18 = 0;
    v5 = MEMORY[0x1E69E7CC0];
  }

  v1[1] = v18;
  v1[2] = v2;
  if (!*(v5 + 16))
  {
  }

  v1[3] = v5;
  return result;
}

uint64_t sub_1D54F0CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s12ReferenceBoxCMa(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  result = sub_1D54E1628(v8);
  a3[3] = v12;
  a3[4] = &off_1F50BF670;
  *a3 = result;
  return result;
}

uint64_t sub_1D54F0DD8(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_1D54F1BBC(v2, v16);
      if (v17)
      {
        if (v17 == 1)
        {
          sub_1D4E48324(v16, v13);
          v3 = v14;
          v4 = v15;
          __swift_project_boxed_opaque_existential_1(v13, v14);
          v5 = (*(v4 + 16))(v3, v4);
          v7 = v6;
          swift_beginAccess();
          MEMORY[0x1DA6EAC70](v5, v7);
          swift_endAccess();
        }

        else
        {

          sub_1D4E48324(v16, v13);
          v9 = v14;
          v10 = v15;
          v11 = __swift_project_boxed_opaque_existential_1(v13, v14);
          sub_1D54F0F5C(v11, v18, v9, v10);
        }

        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
        v8 = v16[0];
        swift_beginAccess();
        MEMORY[0x1DA6EAC70](v8, *(&v8 + 1));
        swift_endAccess();
      }

      v2 += 80;
      --v1;
    }

    while (v1);
  }

  swift_beginAccess();
  return v18[0];
}

uint64_t sub_1D54F0F5C(void (**a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a1;
  v6 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v57 = v40 - v8;
  v52 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = sub_1D56158D8();
  v42 = *(v49 - 8);
  v10 = MEMORY[0x1EEE9AC00](v49);
  v48 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = v40 - v12;
  v41 = sub_1D5615E58();
  MEMORY[0x1EEE9AC00](v41);
  v40[1] = v40 - v13;
  v44 = v6;
  v50 = sub_1D5615E48();
  v40[0] = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v51 = v40 - v14;
  swift_beginAccess();
  MEMORY[0x1DA6EAC70](0x205443454C455328, 0xE800000000000000);
  swift_endAccess();
  v15 = (*(a4 + 16))(a3, a4);
  v16 = *(v15 + 16);
  v58 = (v16 - 1);
  v55 = v16;
  v56 = v15;
  v17 = (v15 + 40);
  v18 = v16;
  v19 = 0;
  if (v16)
  {
    while (v19 < *(v56 + 16))
    {
      v54 = v18;
      v20 = *(v17 - 1);
      v21 = *v17;
      v22 = v17;
      v60 = 0x6E6D756C6F63;
      v61 = 0xE600000000000000;
      v53 = (v19 + 1);
      v59 = v19 + 1;

      v23 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v23);

      MEMORY[0x1DA6EAC70](542327072, 0xE400000000000000);
      MEMORY[0x1DA6EAC70](v20, v21);

      v24 = v60;
      v25 = v61;
      swift_beginAccess();
      MEMORY[0x1DA6EAC70](v24, v25);
      swift_endAccess();

      if (v19 != v58)
      {
        swift_beginAccess();
        MEMORY[0x1DA6EAC70](8236, 0xE200000000000000);
        swift_endAccess();
      }

      v17 = v22 + 3;
      v19 = v53;
      v18 = (v54 - 1);
      if (v54 == 1)
      {
        goto LABEL_6;
      }
    }

LABEL_19:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_6:
    swift_beginAccess();
    MEMORY[0x1DA6EAC70](0x5628204D4F524620, 0xEE00205345554C41);
    swift_endAccess();
    MEMORY[0x1DA6EAE20](a3, v44);
    sub_1D5615E28();
    v53 = (v42 + 32);
    v45 = (v43 + 4);
    ++v43;
    v44 = (v56 + 40);
    while (1)
    {
      v26 = TupleTypeMetadata2;
      v27 = v48;
      sub_1D5615E38();
      v28 = v47;
      (*v53)(v47, v27, v49);
      if (__swift_getEnumTagSinglePayload(v28, 1, v26) == 1)
      {
        break;
      }

      v54 = *v28;
      (*v45)(v57, &v28[*(v26 + 48)], v52);
      swift_beginAccess();
      MEMORY[0x1DA6EAC70](8232, 0xE200000000000000);
      swift_endAccess();
      v29 = 0;
      v30 = v44;
      while (v55 != v29)
      {
        if (v29 >= *(v56 + 16))
        {
          __break(1u);
          goto LABEL_19;
        }

        v31 = *(v30 - 1);
        v32 = *v30;
        v33 = *(a4 + 32);

        v33(&v60, v31, v32, v57, a3, a4);

        v35 = v62;
        v34 = v63;
        __swift_project_boxed_opaque_existential_1(&v60, v62);
        v36 = (*(*(v34 + 8) + 8))(v35);
        v38 = v37;
        swift_beginAccess();
        MEMORY[0x1DA6EAC70](v36, v38);
        swift_endAccess();

        if (v58 != v29)
        {
          swift_beginAccess();
          MEMORY[0x1DA6EAC70](8236, 0xE200000000000000);
          swift_endAccess();
        }

        __swift_destroy_boxed_opaque_existential_1(&v60);
        v30 += 3;
        v29 = (v29 + 1);
      }

      swift_beginAccess();
      MEMORY[0x1DA6EAC70](10528, 0xE200000000000000);
      swift_endAccess();
      if (v54 != v58)
      {
        swift_beginAccess();
        MEMORY[0x1DA6EAC70](8236, 0xE200000000000000);
        swift_endAccess();
      }

      (*v43)(v57, v52);
    }

    (*(v40[0] + 8))(v51, v50);

    swift_beginAccess();
    MEMORY[0x1DA6EAC70](2697504, 0xE300000000000000);
    return swift_endAccess();
  }

  return result;
}

void sub_1D54F1734(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D54F083C(a1, a2);
  *a3 = v4;
  a3[1] = 0;
  v5 = MEMORY[0x1E69E7CC0];
  a3[2] = 0;
  a3[3] = v5;
}

uint64_t sub_1D54F1774()
{
  v1 = sub_1D560BAB8();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  result = MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[1];
  if ((v0[4] & 1) == 0)
  {
    v9 = *v0;
    goto LABEL_5;
  }

  if (v0[2])
  {
    v9 = v0[1];
    v8 = v0[2];
LABEL_5:
    v11[0] = v9;
    v11[1] = v8;
    sub_1D560BAA8();
    sub_1D4F53278();
    v10 = sub_1D5615958();
    (*(v3 + 8))(v7, v1);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54F188C()
{
  v1 = *(v0 + 8);
  v2 = sub_1D560BAB8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  if (*(v0 + 32))
  {
    v8 = sub_1D54F0DD8(*v0);
    v1 = v9;
  }

  else
  {
  }

  v12[0] = v8;
  v12[1] = v1;
  sub_1D560BAA8();
  sub_1D4F53278();
  v10 = sub_1D5615958();
  (*(v4 + 8))(v7, v2);

  return v10;
}

double sub_1D54F19B0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D54F0834(v5, *a1, a1[1]);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_1D54F19FC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D54F08F4(*a1, a1[1], a1[2], a1[3], v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_1D54F1A50()
{
  result = qword_1EC7F7848;
  if (!qword_1EC7F7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7848);
  }

  return result;
}

unint64_t sub_1D54F1AA8()
{
  result = qword_1EC7F7850;
  if (!qword_1EC7F7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7850);
  }

  return result;
}

unint64_t sub_1D54F1B00()
{
  result = qword_1EC7F7858;
  if (!qword_1EC7F7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7858);
  }

  return result;
}

unint64_t sub_1D54F1B58()
{
  result = qword_1EC7F7860;
  if (!qword_1EC7F7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7860);
  }

  return result;
}

uint64_t sub_1D54F1BF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  if (a1[4])
  {
    v9 = a1[2];
    v8 = a1[3];
    v10 = *a2;
    v11 = *(a2 + 8);
    if (*(a2 + 32))
    {
      v26 = a1[3];
      v13 = *(a2 + 16);
      v12 = *(a2 + 24);
      v31 = *a1;
      v32 = v7;
      sub_1D51D2F74(a1, &v27);
      sub_1D51D2F74(a2, &v27);
      sub_1D54F1E94(&v32, &v27);
      sub_1D4EF329C(v10);
      v35 = v11;
      v36 = v13;
      sub_1D4E6C9CC(&v35, &qword_1EC7EC3B0, &qword_1D5630D90);
      v37 = v12;
      sub_1D4E6C9CC(&v37, &qword_1EC7F7870, &unk_1D566CFA8);
      sub_1D4E6C9CC(&v32, &qword_1EC7F7868, &unk_1D566CF98);
      v33[0] = v6;
      v33[1] = v9;
      sub_1D4E6C9CC(v33, &qword_1EC7EC3B0, &qword_1D5630D90);
      v34 = v26;
      sub_1D4E6C9CC(&v34, &qword_1EC7F7870, &unk_1D566CFA8);
      v14 = v31;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC48, &unk_1D561DA60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D561C050;
      *(inited + 32) = v10;
      *(inited + 40) = v11;
      *(inited + 104) = 0;
      v37 = v7;
      sub_1D51D2F74(a1, &v27);
      sub_1D51D2F74(a2, &v27);
      sub_1D4EF329C(inited);
      v35 = v6;
      v36 = v9;
      sub_1D4E6C9CC(&v35, &qword_1EC7EC3B0, &qword_1D5630D90);
      v33[0] = v8;
      sub_1D4E6C9CC(v33, &qword_1EC7F7870, &unk_1D566CFA8);
      v14 = v37;
    }
  }

  else
  {
    v15 = *a2;
    if ((*(a2 + 32) & 1) == 0)
    {
      v25 = *(a2 + 8);
      v27 = *a1;

      result = MEMORY[0x1DA6EAC70](v15, v25);
      v23 = 0;
      v24 = 0;
      v22 = 0;
      v20 = v27;
      v21 = v6;
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC48, &unk_1D561DA60);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D561C050;
    *(v16 + 32) = v7;
    *(v16 + 40) = v6;
    *(v16 + 104) = 0;
    v35 = v16;
    sub_1D51D2F74(a1, &v27);

    sub_1D4EF329C(v17);
    v14 = v35;
  }

  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v27 = v14;
  v28 = 0;
  result = sub_1D54F0A30();
  v20 = v27;
  v21 = v28;
  v22 = 1;
  v23 = v29;
  v24 = v30;
LABEL_9:
  *a3 = v20;
  *(a3 + 8) = v21;
  *(a3 + 16) = v23;
  *(a3 + 24) = v24;
  *(a3 + 32) = v22;
  return result;
}

uint64_t sub_1D54F1E94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7868, &unk_1D566CF98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D54F1F18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D54F1F54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D54F1FA4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_1D54F1FF0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F200C, v1);
}

uint64_t sub_1D54F200C()
{
  OUTLINED_FUNCTION_60();
  v0[4] = *(v0[3] + 128);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_28_67(v1);

  return sub_1D54F2350();
}

uint64_t sub_1D54F20A8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v7 = *(v3 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1D54F21C8, v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D54F21C8()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54F2224(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F2240, v1);
}

void sub_1D54F2240()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection);
  v0[4] = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_60();

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_28_67(v2);

    sub_1D54F2350();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D54F22F0(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 56) = a1;
  v4 = *(a2 + 16);
  *(v3 + 80) = *a2;
  *(v3 + 96) = v4;
  *(v3 + 49) = *(a2 + 32);
  return OUTLINED_FUNCTION_12_6(sub_1D52AF3C0, v2);
}

uint64_t sub_1D54F2320(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 56) = a1;
  v4 = *(a2 + 16);
  *(v3 + 80) = *a2;
  *(v3 + 96) = v4;
  *(v3 + 49) = *(a2 + 32);
  return OUTLINED_FUNCTION_12_6(sub_1D52AF4E0, v2);
}

uint64_t sub_1D54F2350()
{
  OUTLINED_FUNCTION_80();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D54F2414;

  return (sub_1D54F273C)();
}

uint64_t sub_1D54F2414()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    v7 = sub_1D4F8FB5C;
  }

  else
  {
    v7 = sub_1D54F252C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v3, 0);
}

uint64_t sub_1D54F254C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D54F2568, a2, 0);
}

const char *sub_1D54F2568()
{
  do
  {
    do
    {
      v1 = sub_1D54F6448();
      sub_1D54EF4CC(v1);
      OUTLINED_FUNCTION_17_88();
    }

    while (v4);
    v4 = v3 == 14 && v2 == 16;
  }

  while (v4);
  v5 = *(v0 + 96);
  swift_beginAccess();
  v6 = sqlite3_extended_errcode(*(v5 + 136));
  result = sqlite3_errstr(v1);
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = sub_1D5614E98();
  v10 = v9;
  result = sqlite3_errmsg(*(v5 + 136));
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v11 = sub_1D5614E98();
  v13 = v12;
  v14 = sub_1D54EF4CC(v6);
  v15 = v14;
  v16 = HIDWORD(v14);
  v17 = sub_1D51D2BD0();
  v18 = OUTLINED_FUNCTION_121_0(&unk_1F50C0D60, v17);
  *v19 = v6;
  *(v19 + 4) = v15;
  *(v19 + 8) = v16;
  *(v19 + 16) = v8;
  *(v19 + 24) = v10;
  *(v19 + 32) = v11;
  *(v19 + 40) = v13;
  swift_willThrow();
  *(v0 + 88) = v18;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  if (swift_dynamicCast() && (v21 = *(v0 + 20), v22 = *(v0 + 24), , , (sub_1D54EF1D8(v21 | (v22 << 32), 0xE00000011) & 1) != 0))
  {

    OUTLINED_FUNCTION_22_1();
  }

  else
  {

    OUTLINED_FUNCTION_55();
  }

  return v23();
}

uint64_t sub_1D54F273C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v7 = swift_task_alloc();
  v5[8] = v7;
  *v7 = v5;
  v7[1] = sub_1D54F27DC;

  return sub_1D54F9828(a2);
}

uint64_t sub_1D54F27DC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 72) = v6;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_204();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1D54F2910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_160();
  if (qword_1EDD58A80 != -1)
  {
    OUTLINED_FUNCTION_10_121(&qword_1EDD58A80);
  }

  v14 = v12[9];
  v15 = v12[7];
  v16 = v12[4];
  v12[2] = v14;
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_29_59(v17);
  v18[4] = v15;
  v18[5] = v14;
  v18[6] = v16;
  v19 = sub_1D54E6DE4();

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v12[11] = v20;
  *v20 = v21;
  v20[1] = sub_1D54F2A70;
  v22 = v12[3];

  return MEMORY[0x1EEE6DE98](v22, v12 + 2, &unk_1D566D108, v13, v15, v19, 0xD00000000000002CLL, 0x80000001D568FA60, a9, a10, a11, a12);
}

uint64_t sub_1D54F2A70()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 96) = v0;

  v7 = *(v3 + 56);
  if (v0)
  {
    v8 = sub_1D54F2C08;
  }

  else
  {
    v8 = sub_1D54F2BB0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}