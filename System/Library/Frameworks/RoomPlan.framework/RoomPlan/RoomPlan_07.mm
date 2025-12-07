uint64_t sub_23A937F14()
{
  v1 = 0x6154676E696E6964;
  if (*v0 != 1)
  {
    v1 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6154656566666F63;
  }
}

unint64_t TableShapeType.shortIdentifier.getter()
{
  v1 = 0x75676E6174636572;
  v2 = 0x6465706168536CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

RoomPlan::TableShapeType_optional __swiftcall TableShapeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AA0DA64();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TableShapeType.rawValue.getter()
{
  v1 = 0x75676E6174636572;
  v2 = 0x6465706168536CLL;
  if (*v0 != 2)
  {
    v2 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_23A93812C()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A938204(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A9382C8()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

void sub_23A9383A8(unint64_t *a1@<X8>)
{
  v2 = 0xEB0000000072616CLL;
  v3 = 0x75676E6174636572;
  v4 = 0xE700000000000000;
  v5 = 0x6465706168536CLL;
  if (*v1 != 2)
  {
    v5 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000023AA1CE10;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_23A938448()
{
  v1 = 0x75676E6174636572;
  v2 = 0x6465706168536CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t StorageType.shortIdentifier.getter()
{
  if (*v0)
  {
    return 0x666C656873;
  }

  else
  {
    return 0x74656E69626163;
  }
}

void sub_23A938538(char *a4@<X8>)
{
  v5 = sub_23AA0DA64();

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a4 = v6;
}

uint64_t sub_23A9385A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x666C656873;
  }

  else
  {
    v3 = 0x74656E69626163;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x666C656873;
  }

  else
  {
    v5 = 0x74656E69626163;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23AA0DBD4();
  }

  return v8 & 1;
}

uint64_t sub_23A938648()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A9386C8(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A938734()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

void sub_23A9387BC(char *a3@<X8>)
{
  v4 = sub_23AA0DA64();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

void sub_23A938818(uint64_t *a1@<X8>)
{
  v2 = 0x74656E69626163;
  if (*v1)
  {
    v2 = 0x666C656873;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23A938860()
{
  if (*v0)
  {
    return 0x666C656873;
  }

  else
  {
    return 0x74656E69626163;
  }
}

char *sub_23A9388F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF598, &qword_23AA18B40);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_23A938A28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_23A938B2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF5B0, &unk_23AA14330);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_23A938C30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF660, &qword_23AA143F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF668, &qword_23AA14400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23A938D78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF608, &qword_23AA143A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_23A938E7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF610, &qword_23AA143A8);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_23A938F80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF618, &qword_23AA143B0);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_23A9390C0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_23A939208(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF120, &qword_23AA12AA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_23A93930C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF118, &unk_23AA14320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_23A939440(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF658, &qword_23AA143F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

char *sub_23A939544(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF650, &qword_23AA143E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 5 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
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

char *sub_23A93964C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF5E0, &unk_23AA14370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_23A939750(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1760, &unk_23AA1A7C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23A939884(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_23A9399B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF5C8, &unk_23AA14348);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23A939AE8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

void *sub_23A939C08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_23A939D64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF628, &unk_23AA143C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_23A939E68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF620, &qword_23AA143B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_23A939F80(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 32 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_23A93A08C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_23A93A1C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

uint64_t _s8RoomPlan23CapturedElementCategoryO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((a1[1] & 1) == 0)
  {
    if (a2[1])
    {
      return 0;
    }

    if (*a1 > 3u)
    {
      if (v2 != 4)
      {
        if (v2 == 5)
        {
          return v3 == 5;
        }

        return (v3 - 2) >= 4u && ((v3 ^ v2) & 1) == 0;
      }

      if (v3 == 4)
      {
        return 1;
      }
    }

    else
    {
      if (v2 != 2)
      {
        if (v2 == 3)
        {
          return v3 == 3;
        }

        return (v3 - 2) >= 4u && ((v3 ^ v2) & 1) == 0;
      }

      if (v3 == 2)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*a1 == v3)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_23A93A45C()
{
  result = qword_27DFAF368;
  if (!qword_27DFAF368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF368);
  }

  return result;
}

unint64_t sub_23A93A4B0()
{
  result = qword_27DFAF370;
  if (!qword_27DFAF370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF370);
  }

  return result;
}

unint64_t sub_23A93A504()
{
  result = qword_27DFAF378;
  if (!qword_27DFAF378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF378);
  }

  return result;
}

unint64_t sub_23A93A558()
{
  result = qword_27DFAF380;
  if (!qword_27DFAF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF380);
  }

  return result;
}

unint64_t sub_23A93A5AC()
{
  result = qword_27DFAF388;
  if (!qword_27DFAF388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF388);
  }

  return result;
}

unint64_t sub_23A93A600()
{
  result = qword_27DFAF3B0;
  if (!qword_27DFAF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF3B0);
  }

  return result;
}

unint64_t sub_23A93A654()
{
  result = qword_27DFAF3B8;
  if (!qword_27DFAF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF3B8);
  }

  return result;
}

unint64_t sub_23A93A6A8()
{
  result = qword_27DFAF3C8;
  if (!qword_27DFAF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF3C8);
  }

  return result;
}

unint64_t sub_23A93A700()
{
  result = qword_27DFAF3E0;
  if (!qword_27DFAF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF3E0);
  }

  return result;
}

unint64_t sub_23A93A780()
{
  result = qword_27DFAF3E8;
  if (!qword_27DFAF3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF3E8);
  }

  return result;
}

unint64_t sub_23A93A7D4()
{
  result = qword_27DFAF3F0;
  if (!qword_27DFAF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF3F0);
  }

  return result;
}

unint64_t sub_23A93A85C()
{
  result = qword_27DFAF408;
  if (!qword_27DFAF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF408);
  }

  return result;
}

unint64_t sub_23A93A8DC()
{
  result = qword_27DFAF410;
  if (!qword_27DFAF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF410);
  }

  return result;
}

unint64_t sub_23A93A930()
{
  result = qword_27DFAF418;
  if (!qword_27DFAF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF418);
  }

  return result;
}

unint64_t sub_23A93A9B8()
{
  result = qword_27DFAF430;
  if (!qword_27DFAF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF430);
  }

  return result;
}

unint64_t sub_23A93AA38()
{
  result = qword_27DFAF438;
  if (!qword_27DFAF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF438);
  }

  return result;
}

unint64_t sub_23A93AA8C()
{
  result = qword_27DFAF440;
  if (!qword_27DFAF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF440);
  }

  return result;
}

unint64_t sub_23A93AB14()
{
  result = qword_27DFAF458;
  if (!qword_27DFAF458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF458);
  }

  return result;
}

unint64_t sub_23A93AB94()
{
  result = qword_27DFAF460;
  if (!qword_27DFAF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF460);
  }

  return result;
}

unint64_t sub_23A93ABE8()
{
  result = qword_27DFAF468;
  if (!qword_27DFAF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF468);
  }

  return result;
}

unint64_t sub_23A93AC70()
{
  result = qword_27DFAF480;
  if (!qword_27DFAF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF480);
  }

  return result;
}

unint64_t sub_23A93ACF0()
{
  result = qword_27DFAF488;
  if (!qword_27DFAF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF488);
  }

  return result;
}

unint64_t sub_23A93AD44()
{
  result = qword_27DFAF490;
  if (!qword_27DFAF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF490);
  }

  return result;
}

unint64_t sub_23A93ADCC()
{
  result = qword_27DFAF4A8;
  if (!qword_27DFAF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF4A8);
  }

  return result;
}

unint64_t sub_23A93AE4C()
{
  result = qword_27DFAF4B0;
  if (!qword_27DFAF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF4B0);
  }

  return result;
}

unint64_t sub_23A93AEA0()
{
  result = qword_27DFAF4B8;
  if (!qword_27DFAF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF4B8);
  }

  return result;
}

unint64_t sub_23A93AF28()
{
  result = qword_27DFAF4D0;
  if (!qword_27DFAF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF4D0);
  }

  return result;
}

unint64_t sub_23A93AFA8()
{
  result = qword_27DFAF4D8;
  if (!qword_27DFAF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF4D8);
  }

  return result;
}

unint64_t sub_23A93AFFC()
{
  result = qword_27DFAF4E0;
  if (!qword_27DFAF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF4E0);
  }

  return result;
}

unint64_t sub_23A93B084()
{
  result = qword_27DFAF4F8;
  if (!qword_27DFAF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF4F8);
  }

  return result;
}

uint64_t sub_23A93B104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23A93B140()
{
  result = qword_27DFAF500;
  if (!qword_27DFAF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF500);
  }

  return result;
}

unint64_t sub_23A93B194()
{
  result = qword_27DFAF508;
  if (!qword_27DFAF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF508);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapturedElementCategory(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for CapturedElementCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23A93B3C4(uint64_t *a1, int a2)
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

uint64_t sub_23A93B40C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AnimationOrigin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimationOrigin(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GlyphSnapState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GlyphSnapState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t sub_23A93B784(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23A93B7CC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23A93B838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_23A93B880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapturedRoom.Surface.Category.DoorCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CapturedRoom.Surface.Category.DoorCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_23A93B9E0()
{
  result = qword_27DFAF520;
  if (!qword_27DFAF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF520);
  }

  return result;
}

unint64_t sub_23A93BA38()
{
  result = qword_27DFAF528;
  if (!qword_27DFAF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF528);
  }

  return result;
}

unint64_t sub_23A93BA90()
{
  result = qword_27DFAF530;
  if (!qword_27DFAF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF530);
  }

  return result;
}

unint64_t sub_23A93BAF4()
{
  result = qword_27DFAF538;
  if (!qword_27DFAF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF538);
  }

  return result;
}

unint64_t sub_23A93BB58()
{
  result = qword_27DFAF540;
  if (!qword_27DFAF540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF540);
  }

  return result;
}

unint64_t sub_23A93BBBC()
{
  result = qword_27DFAF548;
  if (!qword_27DFAF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF548);
  }

  return result;
}

unint64_t sub_23A93BC14()
{
  result = qword_27DFAF550;
  if (!qword_27DFAF550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF550);
  }

  return result;
}

unint64_t sub_23A93BC6C()
{
  result = qword_27DFAF558;
  if (!qword_27DFAF558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF558);
  }

  return result;
}

unint64_t sub_23A93BCC4()
{
  result = qword_27DFAF560;
  if (!qword_27DFAF560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF560);
  }

  return result;
}

unint64_t sub_23A93BD1C()
{
  result = qword_27DFAF568;
  if (!qword_27DFAF568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF568);
  }

  return result;
}

unint64_t sub_23A93BD74()
{
  result = qword_27DFAF570;
  if (!qword_27DFAF570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF570);
  }

  return result;
}

unint64_t sub_23A93BDCC()
{
  result = qword_27DFAF578;
  if (!qword_27DFAF578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF578);
  }

  return result;
}

unint64_t sub_23A93BE24()
{
  result = qword_27DFAF580;
  if (!qword_27DFAF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF580);
  }

  return result;
}

unint64_t sub_23A93BE7C()
{
  result = qword_27DFAF588;
  if (!qword_27DFAF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF588);
  }

  return result;
}

unint64_t sub_23A93BED4()
{
  result = qword_27DFAF590;
  if (!qword_27DFAF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF590);
  }

  return result;
}

id sub_23A93BFA4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
LABEL_5:
    swift_unknownObjectRetain();
    return v1;
  }

  v2 = MTLCreateSystemDefaultDevice();
  if (v2)
  {
    v1 = v2;
    *(v0 + 16) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  result = sub_23AA0D9E4();
  __break(1u);
  return result;
}

id sub_23A93C058()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_23A93C0B8(v0);
    *(v0 + 24) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

id sub_23A93C0B8(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  type metadata accessor for MetalConstants();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v8 = 0;
  v3 = [sub_23A93BFA4() newDefaultLibraryWithBundle:v2 error:&v8];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = v8;

    return v3;
  }

  else
  {
    v6 = v8;
    sub_23AA0BE74();

    swift_willThrow();
    v8 = 0;
    v9 = 0xE000000000000000;
    sub_23AA0D8A4();

    v8 = 0xD00000000000001DLL;
    v9 = 0x800000023AA1EC50;
    swift_getErrorValue();
    v7 = sub_23AA0DC34();
    MEMORY[0x23EE8FCA0](v7);

    result = sub_23AA0D9E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_23A93C24C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_23A93C2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A93C3A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AnimationGraph(uint64_t a1)
{
  result = qword_27DFAF690;
  if (!qword_27DFAF690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A93C4A0(uint64_t a1)
{
  sub_23A93C5A8(319, &qword_27DFAF6A0, &qword_27DFAF6A8, qword_23AA14560);
  if (v1 <= 0x3F)
  {
    sub_23A93C5A8(319, &qword_27DFAF6B0, &qword_27DFAF648, &qword_23AA143E0);
    if (v2 <= 0x3F)
    {
      sub_23A8ECAC8(319);
      if (v3 <= 0x3F)
      {
        sub_23A93C60C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23A93C5A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23AA0D044();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23A93C60C()
{
  if (!qword_27DFAF6B8)
  {
    v0 = sub_23AA0D344();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFAF6B8);
    }
  }
}

unint64_t sub_23A93C660()
{
  result = qword_27DFAF6C0;
  if (!qword_27DFAF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF6C0);
  }

  return result;
}

void sub_23A93C6B4(int a1, float32x4_t a2)
{
  v3 = (~a1 & 0x44) == 0;
  sub_23A93EF80(0, 1, v3, a2);
  sub_23A93EF80(1, 0, v3, a2);
  sub_23A93EF80(4, 5, (~a1 & 0x88) == 0, a2);
  sub_23A93EF80(5, 4, (~a1 & 0x88) == 0, a2);
  sub_23A93EF80(1, 5, (~a1 & 0xC0) == 0, a2);
  sub_23A93EF80(5, 1, (~a1 & 0xC0) == 0, a2);
  sub_23A93EF80(0, 4, (~a1 & 0xC) == 0, a2);
  sub_23A93EF80(4, 0, (~a1 & 0xC) == 0, a2);
  sub_23A93EF80(1, 2, (~a1 & 0x60) == 0, a2);
  sub_23A93EF80(2, 1, (~a1 & 0x60) == 0, a2);
  sub_23A93EF80(5, 6, (~a1 & 0x90) == 0, a2);
  sub_23A93EF80(6, 5, (~a1 & 0x90) == 0, a2);
  sub_23A93EF80(2, 3, (~a1 & 0x22) == 0, a2);
  sub_23A93EF80(3, 2, (~a1 & 0x22) == 0, a2);
  sub_23A93EF80(6, 7, (~a1 & 0x11) == 0, a2);
  sub_23A93EF80(7, 6, (~a1 & 0x11) == 0, a2);
  sub_23A93EF80(2, 6, (~a1 & 0x30) == 0, a2);
  sub_23A93EF80(6, 2, (~a1 & 0x30) == 0, a2);
  sub_23A93EF80(3, 7, (~a1 & 3) == 0, a2);
  sub_23A93EF80(7, 3, (~a1 & 3) == 0, a2);
  sub_23A93EF80(0, 3, (~a1 & 6) == 0, a2);
  sub_23A93EF80(3, 0, (~a1 & 6) == 0, a2);
  v4 = (~a1 & 9) == 0;
  sub_23A93EF80(4, 7, v4, a2);

  sub_23A93EF80(7, 4, v4, a2);
}

void sub_23A93C968(unsigned int a1, float32x4_t a2)
{
  sub_23A93EF80(0, 1, a1 & 1, a2);
  sub_23A93EF80(1, 0, a1 & 1, a2);
  sub_23A93EF80(4, 5, a1 & 1, a2);
  sub_23A93EF80(5, 4, a1 & 1, a2);
  sub_23A93EF80(1, 5, a1 & 1, a2);
  sub_23A93EF80(5, 1, a1 & 1, a2);
  sub_23A93EF80(0, 4, a1 & 1, a2);
  sub_23A93EF80(4, 0, a1 & 1, a2);
  sub_23A93EF80(1, 2, (a1 >> 3) & 1, a2);
  sub_23A93EF80(2, 1, (a1 >> 3) & 1, a2);
  sub_23A93EF80(5, 6, (a1 >> 3) & 1, a2);
  sub_23A93EF80(6, 5, (a1 >> 3) & 1, a2);
  sub_23A93EF80(2, 3, (a1 >> 1) & 1, a2);
  sub_23A93EF80(3, 2, (a1 >> 1) & 1, a2);
  sub_23A93EF80(6, 7, (a1 >> 1) & 1, a2);
  sub_23A93EF80(7, 6, (a1 >> 1) & 1, a2);
  sub_23A93EF80(2, 6, (a1 >> 1) & 1, a2);
  sub_23A93EF80(6, 2, (a1 >> 1) & 1, a2);
  sub_23A93EF80(3, 7, (a1 >> 1) & 1, a2);
  sub_23A93EF80(7, 3, (a1 >> 1) & 1, a2);
  v3 = (a1 >> 2) & 1;
  sub_23A93EF80(0, 3, v3, a2);
  sub_23A93EF80(3, 0, v3, a2);
  sub_23A93EF80(4, 7, v3, a2);

  sub_23A93EF80(7, 4, v3, a2);
}

uint64_t (*sub_23A93CB90(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_23A940BCC(v4, a2);
  return sub_23A941118;
}

uint64_t (*sub_23A93CC08(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_23A940C70(v4, a2);
  return sub_23A93CC80;
}

void sub_23A93CC84(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_23A93CCD0(uint64_t a1, simd_float4 a2, simd_float4 a3, simd_float4 a4, simd_float4 a5, float32x4_t a6)
{
  v7 = v6;
  v118 = a6;
  v141.columns[3] = a5;
  v141.columns[2] = a4;
  v141.columns[1] = a3;
  v141.columns[0] = a2;
  v9 = type metadata accessor for LineAnimation(0);
  v109 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v108 - v13);
  v129 = sub_23AA0C064();
  v15 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v128 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v121 = &v108 - v18;
  MEMORY[0x28223BE20](v19);
  isUniquelyReferenced_nonNull_native = &v108 - v20;
  if (qword_27DFAE518 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v22 = off_27DFB17B0;
    swift_beginAccess();
    v23 = v22[17];
    sub_23A93EE14(isUniquelyReferenced_nonNull_native);
    if (v23 <= 0.0)
    {
      v127 = *(v15 + 8);
      v127(isUniquelyReferenced_nonNull_native, v129);
      v31 = 1.0;
    }

    else
    {
      v24 = v23;
      v25 = v121;
      sub_23AA0C044();
      sub_23AA0C014();
      v27 = v26;
      v28 = *(v15 + 8);
      v29 = v25;
      v30 = v129;
      v28(v29, v129);
      v127 = v28;
      v28(isUniquelyReferenced_nonNull_native, v30);
      v31 = 0.0;
      if (v27 / v24 > 0.0)
      {
        v32 = 1.0;
        if (v27 / v24 <= 1.0)
        {
          v32 = v27 / v24;
        }

        v31 = v32;
      }
    }

    v148 = v141;
    *(v7 + 4) = v31;
    v149 = __invert_f4(v148);
    v117 = v149.columns[0];
    v116 = v149.columns[1];
    v115 = v149.columns[2];
    v114 = v149.columns[3];
    v135 = *&v7[*(type metadata accessor for AnimationGraph(0) + 44)];
    v110 = *(v135 + 16);
    if (!v110)
    {
      break;
    }

    v33 = 0;
    v113 = (v22 + 20);
    v123 = v22 + 22;
    v119 = v22 + 21;
    v120 = v22 + 19;
    v134 = v135 + 32;
    v34 = vmul_f32(*v118.f32, 0x3F0000003F000000);
    v35 = vmuls_lane_f32(0.5, v118, 2);
    v36 = vneg_f32(v34);
    v37 = -(v118.f32[2] * 0.5);
    v124 = v15 + 8;
    v15 = 1120403456;
    v38 = 1.0;
    v122 = xmmword_23AA11C10;
    v126 = a1;
    v125 = v11;
    v108 = v7;
    while (1)
    {
      v39 = *(v7 + 5);
      if (!*(v39 + 16))
      {
        goto LABEL_71;
      }

      v40 = sub_23A9EDF54(v33);
      if ((v41 & 1) == 0)
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      isUniquelyReferenced_nonNull_native = *(*(v39 + 56) + 8 * v40);
      v42 = *(isUniquelyReferenced_nonNull_native + 16);
      if (v42)
      {
        break;
      }

      v96 = MEMORY[0x277D84F90];
LABEL_59:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v142 = *(v7 + 5);
      v97 = v142;
      v98 = sub_23A9EDF54(v33);
      v100 = *(v97 + 16);
      v101 = (v99 & 1) == 0;
      v102 = __OFADD__(v100, v101);
      v103 = v100 + v101;
      if (v102)
      {
        goto LABEL_73;
      }

      v15 = v99;
      if (*(v97 + 24) >= v103)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = v98;
          sub_23A90DD80();
          v98 = isUniquelyReferenced_nonNull_native;
        }
      }

      else
      {
        sub_23A908130(v103, isUniquelyReferenced_nonNull_native);
        v98 = sub_23A9EDF54(v33);
        if ((v15 & 1) != (v104 & 1))
        {
          sub_23AA0DC24();
          __break(1u);
          return;
        }
      }

      v105 = v142;
      if (v15)
      {
        *(*(v142 + 56) + 8 * v98) = v96;
      }

      else
      {
        *(v142 + 8 * (v98 >> 6) + 64) |= 1 << v98;
        *(v105[6] + 8 * v98) = v33;
        *(v105[7] + 8 * v98) = v96;
        v106 = v105[2];
        v102 = __OFADD__(v106, 1);
        v107 = v106 + 1;
        if (v102)
        {
          goto LABEL_75;
        }

        v105[2] = v107;
      }

      ++v33;
      *(v7 + 5) = v105;
      v15 = 1120403456;
      if (v33 == v110)
      {
        return;
      }
    }

    v147 = MEMORY[0x277D84F90];

    sub_23A975F84(0, v42, 0);
    if (v33 < *(v135 + 16))
    {
      v133 = *v7;
      v7 = v147;
      v43 = v109;
      v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v111 = isUniquelyReferenced_nonNull_native;
      v132 = v44;
      v45 = isUniquelyReferenced_nonNull_native + v44;
      v112 = v33;
      v131 = (v134 + 5 * v33);
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v130 = *(v43 + 72);
      while (1)
      {
        sub_23A9400FC(v45, v11);
        sub_23A9400FC(v11, v14);
        if (*(a1 + 16) && (v47 = sub_23A9F573C(*(v11 + 104)), (v48 & 1) != 0))
        {
          v49 = *(a1 + 56) + 40 * v47;
          v50 = *v49;
          isUniquelyReferenced_nonNull_native = *(v49 + 8);
          v51 = *(v49 + 16);
          a1 = *(v49 + 24);
          v11 = *(v49 + 32);
        }

        else
        {
          v50 = 0;
          isUniquelyReferenced_nonNull_native = 0;
          v51 = 0;
          a1 = 0;
          v11 = 0;
        }

        v52 = v14[1].u64[0];
        if ((v52 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        if (v52 >= *(v135 + 16))
        {
          goto LABEL_70;
        }

        v53 = (v134 + 5 * v52);
        if (v53[2])
        {
          *v46.i32 = v35;
        }

        else
        {
          *v46.i32 = v37;
        }

        v136 = v46;
        v141.columns[3].i64[0] = v7;
        v141.columns[1].i64[0] = v50;
        v141.columns[0].i64[0] = isUniquelyReferenced_nonNull_native;
        v140 = v51;
        v139 = a1;
        v138 = v11;
        if (v133 <= 2)
        {
          v54 = v120;
          if (v133 < 2)
          {
            v55 = &v145;
            goto LABEL_32;
          }
        }

        else
        {
          v54 = v123;
          if ((v133 - 4) >= 2)
          {
            v54 = v119;
            if (v133 != 3)
            {
              v55 = &v136.i64[1];
LABEL_32:
              v54 = *(v55 - 32);
            }
          }
        }

        v56 = *v131;
        v57 = v131[1];
        v58 = *v53;
        v59 = v53[1];
        v60 = *v54;
        if (v131[2])
        {
          *v46.i32 = v35;
        }

        else
        {
          *v46.i32 = v37;
        }

        v137 = v46;
        v61 = v14[4].f32[0];
        v62 = v128;
        sub_23A8ECC7C(v128);
        v141.columns[2].i64[0] = v42;
        if (v60 <= 0.0)
        {
          v127(v62, v129);
          v72 = 100.0;
        }

        else
        {
          v63 = v60;
          v64 = v60 * v61;
          v65 = v121;
          sub_23AA0C044();
          sub_23AA0C014();
          v67 = v66;
          v68 = v65;
          v69 = v129;
          v70 = v127;
          v127(v68, v129);
          v70(v62, v69);
          v15 = 1120403456;
          *v71.i64 = (v67 - v64) / v63;
          v38 = 1.0;
          v72 = 0.0;
          if (*v71.i64 > 0.0)
          {
            v73 = 1.0;
            if (*v71.i64 <= 1.0)
            {
              v73 = *v71.i64;
            }

            v74 = v73;
            v72 = v74 * 100.0;
          }
        }

        *v71.i8 = vbsl_s8(vcltz_s32(vshl_n_s32(__PAIR64__(v59, v58), 0x1FuLL)), v34, v36);
        v71.i32[2] = v136.i32[0];
        v75 = vbsl_s8(vcltz_s32(vshl_n_s32(__PAIR64__(v57, v56), 0x1FuLL)), v34, v36);
        *v77.i8 = v75;
        v76 = *v137.i32;
        v77.i64[1] = v137.u32[0];
        v78 = roundf(v72) / 100.0;
        v14[6].i32[0] = 0;
        v79 = v14->u8[0];
        v80 = v38 - v78;
        if (v14->i8[0])
        {
          v81 = -1;
        }

        else
        {
          v80 = 0.0;
          v81 = 0;
        }

        v82 = vbslq_s8(vdupq_n_s32(v81), v71, v77);
        *v83.f32 = vadd_f32(v75, vmul_n_f32(vsub_f32(*v82.i8, v75), v78));
        v83.f32[2] = v76 + (v78 * (*&v82.i32[2] - v76));
        v14[6].f32[1] = v80;
        v83.i32[3] = 0;
        v137 = v77;
        v14[2] = v77;
        v14[3] = v83;
        v136 = v83;
        v84 = v141.columns[1].i64[0];
        v85 = v141.columns[0].i64[0];
        v86 = v140;
        if (v79 == 1 && v141.columns[1].i64[0] && *(v141.columns[1].i64[0] + 16) >= 2uLL && v78 > 0.0)
        {
          v87 = v14[5];
          v142 = v141.columns[1].i64[0];
          v143 = v141.columns[0].i8[0];
          v144 = v140;
          v88 = v139;
          v145 = v139;
          v146 = v138;
          v89 = sub_23A8ECDE8(&v142, v78, v117, v116, v115, v114, v118, v87);
          v11 = v125;
          v7 = v141.columns[3].i64[0];
          if (v89)
          {
            v90 = v89;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
            v90 = swift_allocObject();
            v92 = v137;
            v90[1] = v122;
            v90[2] = v92;
            v90[3] = v136;
          }

          sub_23A9401BC(v84, v85, v86, v88);
          v15 = 1120403456;
          a1 = v126;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
          v90 = swift_allocObject();
          v91 = v137;
          v90[1] = v122;
          v90[2] = v91;
          v90[3] = v136;
          sub_23A9401BC(v84, v85, v86, v139);
          a1 = v126;
          v11 = v125;
          v7 = v141.columns[3].i64[0];
        }

        sub_23A940160(v11);

        v14[7].i64[0] = v90;
        v147 = v7;
        v94 = *(v7 + 2);
        v93 = *(v7 + 3);
        if (v94 >= v93 >> 1)
        {
          sub_23A975F84((v93 > 1), v94 + 1, 1);
          v7 = v147;
        }

        *(v7 + 2) = v94 + 1;
        v95 = v130;
        sub_23A940208(v14, &v7[v132 + v94 * v130]);
        v45 += v95;
        v42 = v141.columns[2].i64[0] - 1;
        if (v141.columns[2].i64[0] == 1)
        {
          v96 = v7;

          v7 = v108;
          v33 = v112;
          goto LABEL_59;
        }
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }
}

void sub_23A93D8CC(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = a1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = MEMORY[0x277D84F98];
  v7 = type metadata accessor for AnimationGraph(0);
  v8 = *(v7 + 40);
  v9 = sub_23AA0C064();
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  *(a3 + *(v7 + 44)) = &unk_284D80428;
  *a3 = a1;
  if (v6 == 3)
  {
    sub_23AA08410(v3);
  }

  else if (qword_27DFAE428 != -1)
  {
LABEL_20:
    swift_once();
  }

  v10 = 0;

  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a3 + 40);
    v14 = sub_23A9EDF54(v10);
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v20 = v15;
    if (v13[3] < v19)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v24 = v14;
    sub_23A90DD80();
    v14 = v24;
    if (v20)
    {
LABEL_5:
      *(v13[7] + 8 * v14) = v11;

      goto LABEL_6;
    }

LABEL_13:
    v13[(v14 >> 6) + 8] |= 1 << v14;
    *(v13[6] + 8 * v14) = v10;
    *(v13[7] + 8 * v14) = v11;
    v22 = v13[2];
    v18 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v18)
    {
      goto LABEL_19;
    }

    v13[2] = v23;
LABEL_6:
    ++v10;
    *(a3 + 40) = v13;
    if (v10 == 8)
    {
      return;
    }
  }

  sub_23A908130(v19, isUniquelyReferenced_nonNull_native);
  v14 = sub_23A9EDF54(v10);
  if ((v20 & 1) == (v21 & 1))
  {
LABEL_12:
    if (v20)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  sub_23AA0DC24();
  __break(1u);
}

uint64_t sub_23A93DB10(__n128 a1, float32x4_t a2)
{
  v3 = *(v2 + *(type metadata accessor for AnimationGraph(0) + 44));
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = v3 + 34;
  v8 = 1;
  v9 = 3.4028e38;
  do
  {
    v7 += 5;
    v10 = v6 + 1;
    sub_23AA0DCB4();
    if (v11 < v9)
    {
      v5 = v6;
    }

    v8 &= v11 >= v9;
    if (v11 < v9)
    {
      v9 = v11;
    }

    ++v6;
  }

  while (v4 != v10);
  return v5;
}

void sub_23A93DC20(char **a1, uint64_t a2, __n128 a3)
{
  v5 = a1;
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_23A977EA8(v6);
  }

  v7 = *(v6 + 2);
  v24[0] = (v6 + 32);
  v24[1] = v7;
  v8 = sub_23AA0DBA4();
  if (v8 >= v7)
  {
    if (v7 >= 2)
    {
      v12 = -1;
      v13 = 1;
      v14 = (v6 + 32);
      v21 = v5;
      while (2)
      {
        v15 = *&v6[8 * v13 + 32];
        v16 = v12;
        v17 = v14;
        do
        {
          v23[0] = v15;
          v25 = *v17;
          v18 = sub_23A93FCF8(v23, &v25, a2, a3);
          if (v3)
          {
            v5 = v21;
            goto LABEL_18;
          }

          if ((v18 & 1) == 0)
          {
            break;
          }

          v19 = *v17;
          v15 = v17[1];
          *v17 = v15;
          v17[1] = v19;
          --v17;
        }

        while (!__CFADD__(v16++, 1));
        ++v13;
        ++v14;
        --v12;
        v5 = v21;
        if (v13 != v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v9 = v8;
    v10 = (v7 >> 1);
    if (v7 >= 2)
    {
      v11 = sub_23AA0D324();
      *(v11 + 16) = v10;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v23[0] = (v11 + 32);
    v23[1] = v10;
    sub_23A94026C(v23, a3, &v25, v24, v9, a2);
    *(v11 + 16) = 0;
  }

LABEL_18:
  *v5 = v6;
}

void sub_23A93DDA4()
{
  v1 = *(v0 + 40);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v4)
  {
LABEL_10:
    v9 = *(*(v1 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
    v10 = *(v9 + 16);
    v11 = v7[2];
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      goto LABEL_24;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v12 > v7[3] >> 1)
    {
      if (v11 <= v12)
      {
        v14 = v11 + v10;
      }

      else
      {
        v14 = v11;
      }

      v7 = sub_23A939084(isUniquelyReferenced_nonNull_native, v14, 1, v7);
    }

    v4 &= v4 - 1;
    if (*(v9 + 16))
    {
      v15 = (v7[3] >> 1) - v7[2];
      type metadata accessor for LineAnimation(0);
      if (v15 < v10)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v16 = v7[2];
        v17 = __OFADD__(v16, v10);
        v18 = v16 + v10;
        if (v17)
        {
          goto LABEL_27;
        }

        v7[2] = v18;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v6;
    if (v4)
    {
      v6 = v8;
      goto LABEL_10;
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
}

void sub_23A93DF80(float32x4_t *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v97 = a9;
  v94 = a5;
  v95 = a8;
  v92 = a6;
  v93 = a7;
  v91 = a4;
  v89 = a3;
  v88 = a2;
  v85 = type metadata accessor for LineAnimation(0);
  v10 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  MEMORY[0x28223BE20](v16);
  v73 = &v72 - v17;
  MEMORY[0x28223BE20](v18);
  v96 = &v72 - v19;
  MEMORY[0x28223BE20](v20);
  v90 = &v72 - v21;
  sub_23A93DDA4();
  v84 = *(v22 + 16);
  if (v84)
  {
    v23 = 0;
    v24 = v97;
    v83 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v88.f32[0]), v93, *v88.f32, 1), v95, v88, 2), v97, v88, 3);
    v82 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v89.f32[0]), v93, *v89.f32, 1), v95, v89, 2), v97, v89, 3);
    v81 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v91.f32[0]), v93, *v91.f32, 1), v95, v91, 2), v97, v91, 3);
    v80 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v94.f32[0]), v93, *v94.f32, 1), v95, v94, 2), v97, v94, 3);
    v79 = a1[1].i64[0];
    v92.i64[0] = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v78 = v22 + v92.i64[0];
    v25 = MEMORY[0x277D84F90];
    v75 = a1 + 2;
    v26 = xmmword_23AA11C10;
    v72 = xmmword_23AA11C10;
    v77 = v10;
    v76 = v22;
    while (v23 < *(v22 + 16))
    {
      v27 = *(v10 + 72);
      v91.i64[0] = v23;
      v95.i64[0] = v27;
      v28 = v90;
      v97 = v24;
      v94 = v26;
      sub_23A9400FC(v78 + v27 * v23, v90);
      v29 = *(v28 + 48);
      v30 = vaddq_f32(v80, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, COERCE_FLOAT(*(v28 + 32))), v82, *(v28 + 32), 1), v81, *(v28 + 32), 2));
      v93 = v30;
      v30.i32[3] = v94.i32[3];
      v31 = vaddq_f32(v80, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, v29.f32[0]), v82, *v29.f32, 1), v81, v29, 2));
      v89 = v31;
      v31.i32[3] = v97.i32[3];
      v87 = v30;
      v30.i32[2] = 0;
      v97 = v30;
      v86 = v31;
      v31.i32[2] = 0;
      v94 = v31;
      v32 = *v28;
      v33 = *(v28 + 8);
      v34 = *(v28 + 16);
      v35 = *(v28 + 64);
      v88 = *(v28 + 80);
      v36 = *(v28 + 104);
      v37 = *(v85 + 60);
      v38 = *(v28 + 96);
      v39 = v96;
      sub_23A8ECC7C(v96 + v37);
      v40 = sub_23AA0C064();
      (*(*(v40 - 8) + 56))(v39 + v37, 0, 1, v40);
      *v39 = v32;
      *(v39 + 8) = v33;
      *(v39 + 16) = v34;
      v41 = v94;
      *(v39 + 32) = v97;
      *(v39 + 48) = v41;
      *(v39 + 64) = v35;
      *(v39 + 80) = v88;
      *(v39 + 96) = v38;
      *(v39 + 104) = v36;
      v42 = MEMORY[0x277D84F90];
      *(v39 + 112) = MEMORY[0x277D84F90];
      v43 = v79;
      if (v79)
      {
        v98 = v42;
        sub_23A975EA4(0, v79, 0);
        v42 = v98;
        v44 = *(v98 + 16);
        v45 = v75;
        do
        {
          v46 = *v45;
          v98 = v42;
          v47 = *(v42 + 24);
          if (v44 >= v47 >> 1)
          {
            v88 = v46;
            sub_23A975EA4((v47 > 1), v44 + 1, 1);
            v46.i64[0] = v88.i64[0];
            v42 = v98;
          }

          *(v42 + 16) = v44 + 1;
          *(v42 + 8 * v44 + 32) = v46.i64[0];
          ++v45;
          ++v44;
          --v43;
        }

        while (v43);
      }

      type metadata accessor for CDTPolygon();
      swift_initStackObject();
      v48 = sub_23A99A810(v42);
      type metadata accessor for CDTEdge();
      swift_allocObject();
      v49 = sub_23A947224(*v93.i64, *v89.i64);
      v50 = sub_23A99AA3C();
      v51 = v91.i64[0];
      if (v50 & 1) != 0 && (sub_23A8EDA7C(v48, 0.00000011921, v49[2]) & 1) != 0 && (sub_23A8EDA7C(v48, 0.00000011921, v49[3]))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
        v52 = swift_allocObject();
        v53 = v97;
        *(v52 + 16) = v72;
        *(v52 + 32) = v53;
        *(v52 + 48) = v94;
        v54 = v96;
        *(v96 + 112) = v52;
        sub_23A9400FC(v54, v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_23A939084(0, v25[2] + 1, 1, v25);
        }

        v10 = v77;
        v56 = v25[2];
        v55 = v25[3];
        if (v56 >= v55 >> 1)
        {
          v25 = sub_23A939084((v55 > 1), v56 + 1, 1, v25);
        }

        sub_23A940160(v90);
        v25[2] = v56 + 1;
        sub_23A940208(v73, v25 + v92.i64[0] + v56 * v95.i64[0]);
      }

      else
      {
        v57 = sub_23A99AD2C(v49);
        v94.i64[0] = *(v57 + 16);
        if (v94.i64[0])
        {
          v88.i64[0] = v49;
          v89.i64[0] = v48;
          v58 = 0;
          v93.i64[0] = v57 + 32;
          v59 = MEMORY[0x277D84F90];
          v60 = v57;
          while (v58 < *(v60 + 16))
          {
            v61 = *(v93.i64[0] + 8 * v58);
            sub_23A9400FC(v96, v15);
            v62 = *(v61 + 16);
            if (v62)
            {
              v97.i64[0] = v25;
              v63 = v15;
              v64 = v60;
              v98 = v59;

              sub_23A975DC0(0, v62, 0);
              v66 = v98;
              v67 = *(v98 + 16);
              v68 = 32;
              do
              {
                *&v65 = *(v61 + v68);
                v98 = v66;
                v69 = *(v66 + 24);
                if (v67 >= v69 >> 1)
                {
                  v74 = v65;
                  sub_23A975DC0((v69 > 1), v67 + 1, 1);
                  v65 = v74;
                  v66 = v98;
                }

                *(v66 + 16) = v67 + 1;
                *(v66 + 16 * v67 + 32) = v65;
                v68 += 8;
                ++v67;
                --v62;
              }

              while (v62);

              v59 = MEMORY[0x277D84F90];
              v60 = v64;
              v15 = v63;
              v25 = v97.i64[0];
            }

            else
            {
              v66 = v59;
            }

            *(v15 + 14) = v66;
            sub_23A9400FC(v15, v12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_23A939084(0, v25[2] + 1, 1, v25);
            }

            v71 = v25[2];
            v70 = v25[3];
            if (v71 >= v70 >> 1)
            {
              v25 = sub_23A939084((v70 > 1), v71 + 1, 1, v25);
            }

            ++v58;
            v25[2] = v71 + 1;
            sub_23A940208(v12, v25 + v92.i64[0] + v71 * v95.i64[0]);
            sub_23A940160(v15);
            if (v58 == v94.i64[0])
            {

              sub_23A940160(v90);
              v10 = v77;
              v51 = v91.i64[0];
              goto LABEL_3;
            }
          }

          __break(1u);
          break;
        }

        sub_23A940160(v90);

        v10 = v77;
      }

LABEL_3:
      v23 = v51 + 1;
      sub_23A940160(v96);
      v22 = v76;
      v26 = v87;
      v24 = v86;
      if (v23 == v84)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_35:
  }
}

void *sub_23A93E81C(uint64_t a1, uint64_t a2, int a3)
{
  v79 = type metadata accessor for LineAnimation(0);
  MEMORY[0x28223BE20](v79);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v69 - v10);
  MEMORY[0x28223BE20](v12);
  v15 = (&v69 - v14);
  if (*(a2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) != 3)
  {
    return MEMORY[0x277D84F90];
  }

  v75.i64[0] = v3;
  *&v71 = v13;
  v16 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
  v82 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
  v73 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
  v17 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
  v72 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
  v18 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
  v83 = xmmword_23AA11AF0;
  *v19.i64 = MEMORY[0x23EE8FF80](v17, v18);
  v80 = v20;
  v81 = v19;
  v77 = v22;
  v78 = v21;
  v76 = *(a2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
  v23 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
  v24 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
  *v25.i64 = MEMORY[0x23EE8FF80](*(a2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition), *(a2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation), v83);
  sub_23A902044(a3, v84, v82, v81, v80, v78, v77, v76, v25, v26, v27, v28);
  if (v85)
  {
    return MEMORY[0x277D84F90];
  }

  v29 = vdivq_f32(v84[1], *(a1 + v16));
  v29.i32[3] = 0;
  v81 = v84[0];
  v82 = v29;
  *v30.i64 = MEMORY[0x23EE8FF80](*(a2 + v23), *(a2 + v24), v83);
  v81 = vaddq_f32(v33, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, v81.f32[0]), v31, *v81.f32, 1), v32, v81, 2));
  v34 = v73;
  v35 = v72;
  *v86.columns[0].i64 = MEMORY[0x23EE8FF80](*(a1 + v73), *(a1 + v72), v83);
  v87 = __invert_f4(v86);
  *v36.i64 = MEMORY[0x23EE8FF80](vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87.columns[0], v81.f32[0]), v87.columns[1], *v81.f32, 1), v87.columns[2], v81, 2), v87.columns[3], v81, 3), xmmword_23AA11AE0, v82);
  v78 = v36;
  v80 = v37;
  v81 = v38;
  v82 = v39;
  *v88.columns[0].i64 = MEMORY[0x23EE8FF80](*(a2 + v23), *(a2 + v24), v83);
  v89 = __invert_f4(v88);
  v69 = v89.columns[0];
  v70 = v89.columns[1];
  v76 = v89.columns[2];
  v77 = v89.columns[3];
  MEMORY[0x23EE8FF80](*(a1 + v34), *(a1 + v35), v83);
  v83 = v40;
  sub_23A93DDA4();
  v42 = *(v41 + 16);
  if (!v42)
  {

    return MEMORY[0x277D84F90];
  }

  v43 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v69, v83.n128_f32[0]), v70, v83.n128_u64[0], 1), v76, v83, 2), v77, v83, 3);
  v43.i32[3] = 1.0;
  v78 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v78.f32[0]), xmmword_23AA12220, *v78.f32, 1), xmmword_23AA12250, v78, 2), v43, v78, 3);
  v77 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v80.n128_f32[0]), xmmword_23AA12220, v80.n128_u64[0], 1), xmmword_23AA12250, v80, 2), v43, v80, 3);
  v76 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v81.f32[0]), xmmword_23AA12220, *v81.f32, 1), xmmword_23AA12250, v81, 2), v43, v81, 3);
  v75 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v82.f32[0]), xmmword_23AA12220, *v82.f32, 1), xmmword_23AA12250, v82, 2), v43, v82, 3);
  v44 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v70.i64[0] = v41;
  v73 = v44;
  v45 = v41 + v44;
  v72 = *(v71 + 72);
  v46 = MEMORY[0x277D84F90];
  v71 = xmmword_23AA11C10;
  v74 = v15;
  do
  {
    v81.i64[0] = v42;
    sub_23A9400FC(v45, v15);
    v47 = v15[3];
    v48 = vaddq_f32(v75, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*&v15[2])), v77, *v15[2].f32, 1), v76, v15[2], 2));
    v48.i32[3] = v83.n128_i32[3];
    v83 = v48;
    v49 = vaddq_f32(v75, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, v47.f32[0]), v77, *v47.f32, 1), v76, v47, 2));
    v49.i32[3] = v82.i32[3];
    v82 = v49;
    v50 = v15->i8[0];
    v51 = v15->i64[1];
    v52 = v15;
    v53 = v46;
    v54 = v8;
    v55 = v52[1].i64[0];
    v56 = v52[4].i32[0];
    v80 = v52[5];
    v57 = v52[6].i8[8];
    v58 = *(v79 + 60);
    v59 = v52[6].i64[0];
    sub_23A8ECC7C(v11 + v58);
    v60 = sub_23AA0C064();
    (*(*(v60 - 8) + 56))(v11 + v58, 0, 1, v60);
    v11->n128_u8[0] = v50;
    v11->n128_u64[1] = v51;
    v11[1].n128_u64[0] = v55;
    v8 = v54;
    v46 = v53;
    v61 = v82;
    v11[2] = v83;
    v11[3] = v61;
    v11[4].n128_u32[0] = v56;
    v11[5] = v80;
    v11[6].n128_u64[0] = v59;
    v11[6].n128_u8[8] = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
    v62 = swift_allocObject();
    v63 = v82;
    v64 = v83;
    v62[1] = v71;
    v62[2] = v64;
    v62[3] = v63;
    v11[7].n128_u64[0] = v62;
    sub_23A9400FC(v11, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_23A939084(0, v53[2] + 1, 1, v53);
    }

    v66 = v46[2];
    v65 = v46[3];
    v15 = v74;
    if (v66 >= v65 >> 1)
    {
      v46 = sub_23A939084((v65 > 1), v66 + 1, 1, v46);
    }

    sub_23A940160(v15);
    v46[2] = v66 + 1;
    v67 = v72;
    sub_23A940208(v8, v46 + v73 + v66 * v72);
    sub_23A940160(v11);
    v45 += v67;
    v42 = v81.i64[0] - 1;
  }

  while (v81.i64[0] != 1);

  return v46;
}

uint64_t sub_23A93EE14@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = *(type metadata accessor for AnimationGraph(0) + 40);
  sub_23A8ED91C(v1 + v6, v5);
  v7 = sub_23AA0C064();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_23A8ED8B4(v5);
  sub_23AA0C044();
  sub_23A8ED8B4(v1 + v6);
  (*(v8 + 16))(v1 + v6, a1, v7);
  return (*(v8 + 56))(v1 + v6, 0, 1, v7);
}

void sub_23A93EF80(uint64_t a1, uint64_t a2, int a3, float32x4_t a4)
{
  v6 = v4;
  v29 = a4;
  LODWORD(v7) = a3;
  v10 = type metadata accessor for LineAnimation(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 5);
  if (!*(v14 + 16))
  {
    return;
  }

  v15 = sub_23A9EDF54(a1);
  if ((v16 & 1) == 0)
  {
    i = 0;
    v19 = 1;
    if (*(v14 + 16))
    {
      goto LABEL_17;
    }

    return;
  }

  v28 = v7;
  v5 = *(*(v14 + 56) + 8 * v15);
  v7 = *(v5 + 2);
  if (!v7)
  {
    i = 0;
    v19 = 1;
    goto LABEL_16;
  }

  v27 = v6;
  v6 = &v5[(*(v11 + 80) + 32) & ~*(v11 + 80)];

  for (i = 0; i != v7; ++i)
  {
    if (i >= *(v5 + 2))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      swift_once();
LABEL_22:
      v23 = off_27DFB17B0;
      swift_beginAccess();
      if (*(v23 + 64) != 1)
      {
        goto LABEL_26;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_48;
      }

      while (i < *(a2 + 16))
      {
LABEL_30:
        v13[a2 + v11] = v7 & 1;
LABEL_31:
        v24 = *v6;
        if (v24 > 2)
        {
          if (v24 - 4 >= 2)
          {
            if (v24 == 3)
            {
              v23 += 21;
            }

            else
            {
              v23 += 20;
            }

            goto LABEL_37;
          }

LABEL_36:
          v23 += 22;
          goto LABEL_37;
        }

        if (v24 < 2)
        {
          goto LABEL_36;
        }

        v23 += 19;
LABEL_37:
        swift_beginAccess();
        v25 = *v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_23A975CC4(a2);
        }

        if (i < *(a2 + 16))
        {
          sub_23A8ED604(v29, v25);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = *(v6 + 5);
          sub_23A9DA53C(a2, a1, isUniquelyReferenced_nonNull_native);

          *(v6 + 5) = v30;
          return;
        }

        __break(1u);
LABEL_48:
        a2 = sub_23A975CC4(a2);
      }

      __break(1u);
LABEL_26:
      if (i >= *(a2 + 16))
      {
        __break(1u);
      }

      else
      {
        if (v5[v11])
        {
          goto LABEL_31;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_29;
        }
      }

      a2 = sub_23A975CC4(a2);
LABEL_29:
      if (i >= *(a2 + 16))
      {
        __break(1u);
        return;
      }

      goto LABEL_30;
    }

    sub_23A9400FC(&v6[*(v11 + 72) * i], v13);
    if (*(v13 + 1) == a1)
    {
      v18 = *(v13 + 2);
      sub_23A940160(v13);
      if (v18 == a2)
      {
        v19 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      sub_23A940160(v13);
    }
  }

  i = 0;
  v19 = 1;
LABEL_14:

  v6 = v27;
LABEL_16:
  LOBYTE(v7) = v28;
  if (!*(v14 + 16))
  {
    return;
  }

LABEL_17:
  v20 = sub_23A9EDF54(a1);
  if (v21 & 1) == 0 || (v19)
  {
    return;
  }

  a2 = *(*(v14 + 56) + 8 * v20);
  if (i >= *(a2 + 16))
  {
    goto LABEL_45;
  }

  v13 = ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v5 = &v13[a2];
  v11 = *(v11 + 72) * i;
  if (v13[a2 + v11] != (v7 & 1))
  {
    v22 = qword_27DFAE518;

    if (v22 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }
}

void sub_23A93F33C(float32x4_t a1)
{
  v120 = a1;
  v111 = type metadata accessor for LineAnimation(0);
  v107 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v4 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v103 = &v101 - v6;
  MEMORY[0x28223BE20](v7);
  v114 = &v101 - v8;
  v9 = *(v1 + 24);
  v10 = type metadata accessor for AnimationGraph(0);
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v13 = *(v10 + 44);
  v14 = *(v1 + v13);
  if (v9 >= *(v14 + 16))
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v15 = (v14 + 5 * v9);
  v16 = v15[32];
  v17 = v15[33];
  v18 = v15[34];
  LODWORD(v11) = -1.0;
  if (v16)
  {
    *&v12 = 1.0;
  }

  else
  {
    *&v12 = -1.0;
  }

  v123 = v12;
  if (v17)
  {
    *&v12 = 1.0;
  }

  else
  {
    *&v12 = -1.0;
  }

  if (v18)
  {
    *&v11 = 1.0;
  }

  v121 = v11;
  v122 = v12;
  v113 = v1;
  v19 = *(v1 + 8);
  v20 = *(v19 + 16);
  v102 = v13;
  if (!v20)
  {

    v21 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v21 = sub_23A9EDAA0(v20, 0);
  v22 = sub_23A9F4494(v124, v21 + 4, v20, v19);
  v23 = v124[0];
  v2 = v124[4];
  swift_bridgeObjectRetain_n();
  sub_23A8CA904(v23);
  if (v22 == v20)
  {
    v13 = v102;
LABEL_15:
    v24.n128_u64[0] = __PAIR64__(v122, v123);
    v24.n128_u64[1] = v121;
    v124[0] = v21;
    v25 = v113;
    v2 = 0;
    sub_23A93DC20(v124, v113, v24);

    v26 = v124[0];
    v104 = v124[0][2];
    if (!v104)
    {
LABEL_84:

      return;
    }

    v27 = 0;
    v105 = v124[0] + 4;
    v28 = vmul_f32(*v120.f32, 0x3F0000003F000000);
    v110 = vmuls_lane_f32(0.5, v120, 2);
    v109 = vneg_f32(v28);
    v29 = -(v120.f32[2] * 0.5);
    __asm { FMOV            V15.2S, #1.0 }

    v101 = v124[0];
    while (v27 < v26[2])
    {
      v35 = v105[v27];
      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_91;
      }

      v36 = *(v25 + v13);
      if (v35 >= *(v36 + 2))
      {
        goto LABEL_92;
      }

      v108 = v27;
      v117 = v35;
      v37 = 5 * v35;
      v38 = &v36[5 * v35];
      v39 = v38[32];
      v40 = v38[33];
      v2 = v38[34];
      v41 = v38[36];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_23A975CB0(v36);
      }

      v42 = v36 + 32;
      v43 = &v36[v37 + 32];
      *v43 = v39;
      v43[1] = v40;
      v43[2] = v2;
      v43[3] = 1;
      v43[4] = v41;
      v44 = v113;
      *(v113 + v13) = v36;
      v45 = *(v44 + 8);
      if (!*(v45 + 16))
      {
        goto LABEL_84;
      }

      v46 = sub_23A9EDF54(v117);
      if ((v47 & 1) == 0)
      {
        goto LABEL_84;
      }

      v48 = *(*(v45 + 56) + 8 * v46);
      v49 = *(v48 + 16);
      if (v49)
      {
        if (v39)
        {
          v50 = 1.0;
        }

        else
        {
          v50 = -1.0;
        }

        if (v40)
        {
          v51 = 1.0;
        }

        else
        {
          v51 = -1.0;
        }

        if (v2)
        {
          v52 = 1.0;
        }

        else
        {
          v52 = -1.0;
        }

        v53.i64[0] = __PAIR64__(LODWORD(v51), LODWORD(v50));
        v53.i64[1] = LODWORD(v52);
        v115 = v53;
        v54 = v48 + 32;
        v55 = (vabds_f32(v50, *&v123) + vabds_f32(v51, *&v122)) + vabds_f32(v52, *&v121);
        v106 = v48;
        v116 = v49;

        v56 = v116;
        v2 = 0;
        v57 = v113;
        v58 = 0x27DFAE000;
        v59 = v117;
        v112 = v36 + 32;
        while (1)
        {
          v60 = *(v54 + 8 * v2);
          if (v60 < 0)
          {
            break;
          }

          if (v60 >= *(v36 + 2))
          {
            goto LABEL_86;
          }

          v61 = &v42[5 * v60];
          if ((v61[3] & 1) == 0)
          {
            if (*v61)
            {
              v62 = 1.0;
            }

            else
            {
              v62 = -1.0;
            }

            if (v61[1])
            {
              v63 = 1.0;
            }

            else
            {
              v63 = -1.0;
            }

            if (v61[2])
            {
              v64 = 1.0;
            }

            else
            {
              v64 = -1.0;
            }

            v65.i64[0] = __PAIR64__(LODWORD(v63), LODWORD(v62));
            v65.i64[1] = LODWORD(v64);
            v66 = vabds_f32(v63, *&v122) + vabds_f32(v62, *&v123);
            v67 = v121;
            if (v55 >= (vabds_f32(v64, *&v121) + v66))
            {
              v68 = v59;
              v69 = v115;
            }

            else
            {
              v68 = *(v54 + 8 * v2);
              v60 = v59;
              v69 = v65;
              v65 = v115;
            }

            v70 = vsubq_f32(v65, v69);
            v71 = fabsf(v70.f32[2]);
            if (v71 <= 1.0)
            {
              *&v67 = v71;
            }

            else
            {
              *&v67 = 1.0;
            }

            if (*(v58 + 1104) != -1)
            {
              v120 = v65;
              v119 = v67;
              v118 = v70;
              swift_once();
              v70 = v118;
              v67 = v119;
              v65 = v120;
              v56 = v116;
              v59 = v117;
            }

            if (v60 > 0x7FFFFFFF)
            {
              goto LABEL_87;
            }

            if (v68 > 0x7FFFFFFF)
            {
              goto LABEL_88;
            }

            v72 = qword_27DFC06D0;
            if (*(qword_27DFC06D0 + 16))
            {
              v120 = v65;
              v119 = v67;
              v118 = v70;
              v73 = sub_23A9EE050(__PAIR64__(v68, v60));
              v56 = v116;
              v59 = v117;
              if (v74)
              {
                if (v60 >= *(v36 + 2))
                {
                  goto LABEL_89;
                }

                v75 = vabs_f32(*v118.f32);
                *&v76 = vbsl_s8(vcgt_f32(v75, _D15), _D15, v75);
                *(&v76 + 1) = v119;
                v119 = v76;
                v77 = (vabds_f32(*&v121, v120.f32[2]) + (vabds_f32(*&v123, v120.f32[0]) + vabds_f32(*&v122, v120.f32[1]))) * 0.5;
                v78 = *(*(v72 + 56) + v73);
                v79 = &v42[5 * v60];
                *v80.f32 = vbsl_s8(vcltz_s32(vshl_n_s32(__PAIR64__(v79[1], *v79), 0x1FuLL)), v28, v109);
                v81 = v110;
                if (!v79[2])
                {
                  v81 = v29;
                }

                v80.i64[1] = LODWORD(v81);
                v120 = v80;
                v82 = *(v111 + 60);
                v83 = sub_23AA0C064();
                v84 = v54;
                v85 = v114;
                (*(*(v83 - 8) + 56))(v114 + v82, 1, 1, v83);
                *v85 = 0;
                *(v85 + 8) = v60;
                *(v85 + 16) = v68;
                v86 = v120;
                *(v85 + 32) = v120;
                *(v85 + 48) = v86;
                *(v85 + 64) = v77;
                *(v85 + 80) = v119;
                *(v85 + 96) = 0x3F80000000000000;
                *(v85 + 104) = v78;
                *(v85 + 112) = MEMORY[0x277D84F90];
                v54 = v84;
                v87 = *(v57 + 40);
                if (*(v87 + 16))
                {
                  v88 = sub_23A9EDF54(v60);
                  if (v89)
                  {
                    v90 = *(*(v87 + 56) + 8 * v88);
                    v91 = *(v90 + 16);
                    v120.i64[0] = v90;

                    if (v91)
                    {
                      v92 = v120.i64[0] + ((*(v107 + 80) + 32) & ~*(v107 + 80));
                      v93 = *(v107 + 72);
                      do
                      {
                        sub_23A9400FC(v92, v4);
                        if (*(v4 + 1) == v60)
                        {
                          v94 = *(v4 + 2);
                          sub_23A940160(v4);
                          _ZF = v94 == v68;
                          v54 = v84;
                          if (_ZF)
                          {

                            goto LABEL_83;
                          }
                        }

                        else
                        {
                          sub_23A940160(v4);
                        }

                        v92 += v93;
                        --v91;
                      }

                      while (v91);
                    }

                    v57 = v113;
                    v120.i64[0] = sub_23A93CB90(v124, v60);
                    if (*v95)
                    {
                      v96 = v95;
                      sub_23A9400FC(v114, v103);
                      v97 = *v96;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      *v96 = v97;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v97 = sub_23A939084(0, v97[2] + 1, 1, v97);
                        *v96 = v97;
                      }

                      v100 = v97[2];
                      v99 = v97[3];
                      if (v100 >= v99 >> 1)
                      {
                        v97 = sub_23A939084((v99 > 1), v100 + 1, 1, v97);
                        *v96 = v97;
                      }

                      v97[2] = v100 + 1;
                      sub_23A940208(v103, v97 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v100);
                      (v120.i64[0])(v124, 0);
LABEL_83:
                      v57 = v113;
                    }

                    else
                    {
                      (v120.i64[0])(v124, 0);
                    }
                  }
                }

                sub_23A940160(v114);
                v58 = 0x27DFAE000uLL;
                v59 = v117;
                v56 = v116;
                v42 = v112;
              }
            }
          }

          v2 = (v2 + 1);
          if (v2 == v56)
          {

            v13 = v102;
            v26 = v101;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        break;
      }

LABEL_18:
      v27 = v108 + 1;
      v25 = v113;
      if (v108 + 1 == v104)
      {
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_95:
  __break(1u);

  __break(1u);
}

uint64_t sub_23A93FCF8(unint64_t *a1, unint64_t *a2, uint64_t a3, __n128 a4)
{
  v5 = *a1;
  v6 = *a2;
  result = type metadata accessor for AnimationGraph(0);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = *(a3 + *(result + 44));
  v9 = *(v8 + 16);
  if (v5 >= v9)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v9)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v10 = v8 + 32;
  v11 = (v10 + 5 * v5);
  v12 = (v10 + 5 * v6);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = -1.0;
  if (*v11)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = -1.0;
  }

  if (v11[1])
  {
    v18 = 1.0;
  }

  else
  {
    v18 = -1.0;
  }

  if (v11[2])
  {
    v19 = 1.0;
  }

  else
  {
    v19 = -1.0;
  }

  if (v13)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = -1.0;
  }

  if (v14)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = -1.0;
  }

  if (v15)
  {
    v16 = 1.0;
  }

  return (vabds_f32(v19, a4.n128_f32[2]) + (vabds_f32(v18, a4.n128_f32[1]) + vabds_f32(v17, a4.n128_f32[0]))) < ((vabds_f32(v20, a4.n128_f32[0]) + vabds_f32(v21, a4.n128_f32[1])) + vabds_f32(v16, a4.n128_f32[2]));
}

uint64_t sub_23A93FE9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_23A9DC7F8(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF6D0, qword_23AA145D8);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t sub_23A93FF00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF6C8, &qword_23AA145D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA14460;
  *(inited + 32) = 0x100000000;
  *(inited + 40) = 3;
  *(inited + 48) = 1;
  *(inited + 56) = 3;
  *(inited + 64) = 0x500000004;
  *(inited + 72) = 3;
  *(inited + 80) = 0x400000005;
  *(inited + 88) = 3;
  *(inited + 96) = 0x200000001;
  *(inited + 104) = 0;
  *(inited + 112) = 0x100000002;
  *(inited + 120) = 0;
  *(inited + 128) = 0x600000005;
  *(inited + 136) = 0;
  *(inited + 144) = 0x500000006;
  *(inited + 152) = 0;
  *(inited + 160) = 0x500000001;
  *(inited + 168) = 0;
  *(inited + 176) = 0x100000005;
  *(inited + 184) = 0;
  *(inited + 192) = 0x600000002;
  *(inited + 200) = 0;
  *(inited + 208) = 0x200000006;
  *(inited + 216) = 0;
  *(inited + 224) = 0x300000002;
  *(inited + 232) = 1;
  *(inited + 240) = 0x200000003;
  *(inited + 248) = 1;
  *(inited + 256) = 0x700000006;
  *(inited + 264) = 1;
  *(inited + 272) = 0x600000007;
  *(inited + 280) = 1;
  *(inited + 288) = 0x300000000;
  *(inited + 296) = 2;
  *(inited + 304) = 3;
  *(inited + 312) = 2;
  *(inited + 320) = 0x400000000;
  *(inited + 328) = 2;
  *(inited + 336) = 4;
  *(inited + 344) = 2;
  *(inited + 352) = 0x700000003;
  *(inited + 360) = 2;
  *(inited + 368) = 0x300000007;
  *(inited + 376) = 2;
  *(inited + 384) = 0x700000004;
  *(inited + 392) = 2;
  *(inited + 400) = 0x400000007;
  *(inited + 408) = 2;
  v1 = sub_23A9DC900(inited);
  result = swift_setDeallocating();
  qword_27DFC06D0 = v1;
  return result;
}

uint64_t sub_23A9400FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LineAnimation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A940160(uint64_t a1)
{
  v2 = type metadata accessor for LineAnimation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_23A9401BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_23A940208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LineAnimation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23A94026C(char **a1, __n128 a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = a4[1];
  v105 = a2;
  if (v10 < 1)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_110:
    v7 = *a1;
    if (*a1)
    {
      v8 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_112;
    }

    goto LABEL_151;
  }

  v11 = 0;
  v12 = a2.n128_f32[1];
  v13 = a2.n128_f32[2];
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    v15 = v11++;
    if (v11 < v10)
    {
      v16 = *a4;
      v17 = *(*a4 + 8 * v11);
      v106 = *(*a4 + 8 * v15);
      v107 = v17;
      v18 = sub_23A93FCF8(&v107, &v106, a6, a2);
      if (v6)
      {
        goto LABEL_120;
      }

      v19 = v18;
      v7 = (v15 + 2);
      v20 = (v16 + 8 * v15 + 16);
      while (v10 != v7)
      {
        v21 = *v20;
        v106 = *(v20 - 1);
        v107 = v21;
        ++v7;
        ++v20;
        if ((v19 ^ sub_23A93FCF8(&v107, &v106, a6, v105)))
        {
          v10 = (v7 - 1);
          break;
        }
      }

      if (v19)
      {
        if (v10 < v15)
        {
          goto LABEL_145;
        }

        if (v15 < v10)
        {
          v22 = v10 - 1;
          v23 = v15;
          do
          {
            if (v23 != v22)
            {
              v25 = *a4;
              if (!*a4)
              {
                goto LABEL_149;
              }

              v26 = *(v25 + 8 * v23);
              *(v25 + 8 * v23) = *(v25 + 8 * v22);
              *(v25 + 8 * v22) = v26;
            }
          }

          while (++v23 < v22--);
        }
      }

      v11 = v10;
    }

    v27 = a4[1];
    if (v11 >= v27)
    {
      goto LABEL_59;
    }

    if (__OFSUB__(v11, v15))
    {
      goto LABEL_141;
    }

    if (v11 - v15 >= a5)
    {
      goto LABEL_59;
    }

    if (__OFADD__(v15, a5))
    {
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
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
      return;
    }

    if (v15 + a5 >= v27)
    {
      v28 = a4[1];
    }

    else
    {
      v28 = v15 + a5;
    }

    if (v28 < v15)
    {
      goto LABEL_144;
    }

    if (v11 != v28)
    {
      break;
    }

LABEL_59:
    if (v11 < v15)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_23A938B2C(0, *(v14 + 2) + 1, 1, v14);
    }

    v7 = *(v14 + 2);
    v52 = *(v14 + 3);
    v53 = (v7 + 1);
    a2 = v105;
    if (v7 >= v52 >> 1)
    {
      v96 = sub_23A938B2C((v52 > 1), (v7 + 1), 1, v14);
      a2 = v105;
      v14 = v96;
    }

    *(v14 + 2) = v53;
    v54 = &v14[16 * v7];
    *(v54 + 4) = v15;
    *(v54 + 5) = v11;
    v55 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if (v7)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v14 + 4);
          v58 = *(v14 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_79:
          if (v60)
          {
            goto LABEL_129;
          }

          v73 = &v14[16 * v53];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_132;
          }

          v79 = &v14[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_136;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v83 = &v14[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_93:
        if (v78)
        {
          goto LABEL_131;
        }

        v86 = &v14[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_134;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_100:
        v8 = v56 - 1;
        if (v56 - 1 >= v53)
        {
          goto LABEL_124;
        }

        if (!*a4)
        {
          goto LABEL_147;
        }

        v94 = *&v14[16 * v8 + 32];
        v7 = *&v14[16 * v56 + 40];
        sub_23A940904((*a4 + 8 * v94), (*a4 + 8 * *&v14[16 * v56 + 32]), (*a4 + 8 * v7), v55, a6, a2);
        if (v6)
        {
          goto LABEL_120;
        }

        if (v7 < v94)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_23A977E20(v14);
        }

        if (v8 >= *(v14 + 2))
        {
          goto LABEL_126;
        }

        v95 = &v14[16 * v8];
        *(v95 + 4) = v94;
        *(v95 + 5) = v7;
        v108 = v14;
        sub_23A977D94(v56);
        v14 = v108;
        v53 = *(v108 + 2);
        a2 = v105;
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v14[16 * v53 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_127;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_128;
      }

      v68 = &v14[16 * v53];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_130;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_133;
      }

      if (v72 >= v64)
      {
        v90 = &v14[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_139;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    v10 = a4[1];
    if (v11 >= v10)
    {
      goto LABEL_110;
    }
  }

  v29 = *a4;
  v30 = *(type metadata accessor for AnimationGraph(0) + 44);
  v31 = v29 + 8 * v11 - 8;
  v32 = v15 - v11;
LABEL_31:
  v33 = *(v29 + 8 * v11);
  v34 = v32;
  v35 = v31;
  while ((v33 & 0x8000000000000000) == 0)
  {
    v36 = *(a6 + v30);
    v37 = *(v36 + 16);
    if (v33 >= v37)
    {
      goto LABEL_122;
    }

    v38 = *v35;
    if (*v35 >= v37)
    {
      goto LABEL_123;
    }

    v39 = v36 + 32;
    v40 = (v39 + 5 * v33);
    v41 = (v39 + 5 * v38);
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    if (*v40)
    {
      v45 = 1.0;
    }

    else
    {
      v45 = -1.0;
    }

    if (v40[1])
    {
      v46 = 1.0;
    }

    else
    {
      v46 = -1.0;
    }

    if (v40[2])
    {
      v47 = 1.0;
    }

    else
    {
      v47 = -1.0;
    }

    if (v42)
    {
      v48 = 1.0;
    }

    else
    {
      v48 = -1.0;
    }

    if (v43)
    {
      v49 = 1.0;
    }

    else
    {
      v49 = -1.0;
    }

    if (v44)
    {
      v50 = 1.0;
    }

    else
    {
      v50 = -1.0;
    }

    if ((vabds_f32(v47, v13) + (vabds_f32(v46, v12) + vabds_f32(v45, v105.n128_f32[0]))) < ((vabds_f32(v48, v105.n128_f32[0]) + vabds_f32(v49, v12)) + vabds_f32(v50, v13)))
    {
      if (!v29)
      {
        goto LABEL_146;
      }

      *v35 = v33;
      v35[1] = v38;
      --v35;
      if (!__CFADD__(v34++, 1))
      {
        continue;
      }
    }

    ++v11;
    v31 += 8;
    --v32;
    if (v11 == v28)
    {
      v11 = v28;
      goto LABEL_59;
    }

    goto LABEL_31;
  }

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
  v14 = sub_23A977E20(v14);
LABEL_112:
  v108 = v14;
  v97 = *(v14 + 2);
  v98 = v105;
  if (v97 >= 2)
  {
    while (*a4)
    {
      v99 = *&v14[16 * v97];
      v100 = *&v14[16 * v97 + 24];
      sub_23A940904((*a4 + 8 * v99), (*a4 + 8 * *&v14[16 * v97 + 16]), (*a4 + 8 * v100), v7, a6, v98);
      if (v8)
      {
        goto LABEL_120;
      }

      if (v100 < v99)
      {
        goto LABEL_137;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_23A977E20(v14);
      }

      if (v97 - 2 >= *(v14 + 2))
      {
        goto LABEL_138;
      }

      v101 = &v14[16 * v97];
      *v101 = v99;
      *(v101 + 1) = v100;
      v108 = v14;
      sub_23A977D94(v97 - 1);
      v14 = v108;
      v97 = *(v108 + 2);
      v98 = v105;
      if (v97 <= 1)
      {
        goto LABEL_120;
      }
    }

    goto LABEL_148;
  }

LABEL_120:
}

uint64_t sub_23A940904(char *__src, char *a2, char *a3, char *__dst, uint64_t a5, __n128 a6)
{
  v8 = __dst;
  v9 = a3;
  v10 = a2;
  v11 = __src;
  v12 = a2 - __src;
  v13 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v13 = a2 - __src;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2;
  v16 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v16 = a3 - a2;
  }

  v17 = v16 >> 3;
  if (v14 < v16 >> 3)
  {
    if (__dst != __src || &__src[8 * v14] <= __dst)
    {
      memmove(__dst, __src, 8 * v14);
    }

    v18 = &v8[8 * v14];
    if (v12 < 8)
    {
LABEL_10:
      v10 = v11;
LABEL_47:
      v29 = v18 - v8 + 7;
      if (v18 - v8 >= 0)
      {
        v29 = v18 - v8;
      }

      goto LABEL_49;
    }

    while (1)
    {
      if (v10 >= v9)
      {
        goto LABEL_10;
      }

      v36 = *v10;
      v35 = *v8;
      v21 = sub_23A93FCF8(&v36, &v35, a5, a6);
      if (v6)
      {
        v30 = v18 - v8 + 7;
        if (v18 - v8 >= 0)
        {
          v30 = v18 - v8;
        }

        if (v11 < v8 || v11 >= &v8[v30 & 0xFFFFFFFFFFFFFFF8] || v11 != v8)
        {
          v31 = 8 * (v30 >> 3);
          v32 = v11;
          goto LABEL_53;
        }

        return 1;
      }

      if (v21)
      {
        break;
      }

      v19 = v8;
      v20 = v11 == v8;
      v8 += 8;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v11 += 8;
      if (v8 >= v18)
      {
        goto LABEL_10;
      }
    }

    v19 = v10;
    v20 = v11 == v10++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v11 = *v19;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[8 * v17] <= __dst)
  {
    memmove(__dst, a2, 8 * v17);
  }

  v18 = &v8[8 * v17];
  if (v15 < 8 || v10 <= v11)
  {
    goto LABEL_47;
  }

  v22 = -v8;
LABEL_26:
  v23 = v10 - 1;
  v24 = v18 + v22;
  v9 -= 8;
  v25 = v18;
  while (1)
  {
    v26 = *(v25 - 1);
    v25 -= 8;
    v36 = v26;
    v35 = *v23;
    v27 = sub_23A93FCF8(&v36, &v35, a5, a6);
    if (v6)
    {
      break;
    }

    v28 = (v9 + 8);
    if (v27)
    {
      if (v28 != v10)
      {
        *v9 = *v23;
      }

      if (v18 <= v8 || (--v10, v22 = -v8, v23 <= v11))
      {
        v10 = v23;
        goto LABEL_47;
      }

      goto LABEL_26;
    }

    if (v28 != v18)
    {
      *v9 = *v25;
    }

    v24 -= 8;
    v9 -= 8;
    v18 = v25;
    if (v25 <= v8)
    {
      v18 = v25;
      goto LABEL_47;
    }
  }

  if (v24 >= 0)
  {
    v29 = v24;
  }

  else
  {
    v29 = v24 + 7;
  }

LABEL_49:
  if (v10 < v8 || v10 >= &v8[v29 & 0xFFFFFFFFFFFFFFF8] || v10 != v8)
  {
    v31 = 8 * (v29 >> 3);
    v32 = v10;
LABEL_53:
    memmove(v32, v8, v31);
  }

  return 1;
}

uint64_t (*sub_23A940BCC(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_23A9410B8(v5);
  v5[9] = sub_23A940D78(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_23A94111C;
}

uint64_t (*sub_23A940C70(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_23A9410E0(v5);
  v5[9] = sub_23A940F54((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_23A940D14;
}

void sub_23A940D18(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_23A940D78(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_23A9EDF54(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_23A90DD80();
      v11 = v19;
      goto LABEL_11;
    }

    sub_23A908130(v16, a3 & 1);
    v11 = sub_23A9EDF54(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_23A940EC0;
}

void sub_23A940EC0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_23A9DBB30(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    sub_23A90BFA4(v1[3], *v1[2]);
  }

  free(v1);
}

unint64_t (*sub_23A940F54(uint64_t a1, uint64_t a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_23A9F573C(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_23A90E07C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_23A908698(v14, a3 & 1);
    v9 = sub_23A9F573C(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_23A941070;
}

unint64_t sub_23A941070(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_23A9DBBCC(*(result + 16), *(result + 24), v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_23A90C114(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_23A9410B8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_23A941114;
}

uint64_t (*sub_23A9410E0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_23A941108;
}

void sub_23A941120(uint64_t *a1)
{
  v2 = *(type metadata accessor for LineAnimation(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23A977E5C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_23A941F0C(v5);
  *a1 = v3;
}

uint64_t type metadata accessor for EdgeEntity(uint64_t a1)
{
  result = qword_27DFAF700;
  if (!qword_27DFAF700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A941308(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v55 = sub_23AA0C184();
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LineAnimation(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23AA0C2E4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (a4 & 1) == 0 && (a2 & 0x100000000) == 0)
  {
    v49 = a3;
    v50 = v19;
    v48 = v17;
    *&v53[0] = sub_23A94321C(a1);

    sub_23A941120(v53);
    if (v5)
    {

      __break(1u);
      return;
    }

    v20 = *&v53[0];
    v21 = *(*&v53[0] + 16);
    if (!v21)
    {
      goto LABEL_22;
    }

    v46 = v16;
    v47 = 0;
    v22 = v49;
    v23 = *&a2;
    *&v53[0] = MEMORY[0x277D84F90];
    v49 = v4;
    sub_23A975EE4(0, v21, 0);
    v24 = v49;
    v25 = *&v53[0];
    v26 = *(v12 + 80);
    v45 = v20;
    v27 = v20 + ((v26 + 32) & ~v26);
    v28 = *(v12 + 72);
    do
    {
      sub_23A9400FC(v27, v14);
      v29 = *(*(v14 + 14) + 16);
      sub_23A940160(v14);
      *&v53[0] = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_23A975EE4((v30 > 1), v31 + 1, 1);
        v24 = v49;
        v25 = *&v53[0];
      }

      *(v25 + 16) = v31 + 1;
      *(v25 + 8 * v31 + 32) = v29;
      v27 += v28;
      --v21;
    }

    while (v21);
    v32 = qword_27DFAF6F8;
    v33 = sub_23A946C14(v25, *(v24 + qword_27DFAF6F8));
    *(v24 + v32) = v25;

    if (qword_27DFAE490 != -1)
    {
      swift_once();
    }

    v34 = v50;
    v35 = v45;
    sub_23A998434(v45);
    v36 = qword_27DFAF6E8;
    v37 = v49;
    v39 = v46;
    v38 = v47;
    if (*(v49 + qword_27DFAF6E8))
    {
      if ((v33 & 1) == 0)
      {
        v40 = sub_23A94340C();
        v41 = v37;
        v42 = v50;
        sub_23A99620C(v41, v40, v50);
        if (v38)
        {
          (*(v39 + 8))(v42, v48);
LABEL_22:

          return;
        }

        v37 = v49;
      }
    }

    else
    {
      v43 = sub_23A94340C();
      v54 = 0;
      memset(v53, 0, sizeof(v53));
      sub_23A998954(v37, v43, v34, v53);
      if (v38)
      {

        sub_23A8EBAC4(v53);
        (*(v39 + 8))(v34, v48);
        return;
      }

      sub_23A8EBAC4(v53);
    }

    v44 = v51;
    sub_23AA0C9A4();
    sub_23AA0C114();
    (*(v52 + 8))(v44, v55);
    REMeshComponentGetComponentType();
    *(v37 + v36) = REEntityGetComponentByClass();
    sub_23A9417C0(v35, v23, v22);
    (*(v39 + 8))(v50, v48);
    goto LABEL_22;
  }
}

uint64_t sub_23A9417C0(float32x4_t *a1, float a2, float32x2_t a3)
{
  v5 = v3;
  v49[1] = *MEMORY[0x277D85DE8];
  v9 = sub_23AA0CE84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v48 = 0uLL;
  if (qword_27DFAE490 != -1)
  {
    swift_once();
  }

  v16 = sub_23A999088(a1, &v48);
  v17 = *(v16 + 2);
  if (v17 >> 59)
  {
    __break(1u);
    goto LABEL_34;
  }

  v18 = v16;
  v45 = v10;
  v46 = v9;
  v47 = v4;
  v19 = qword_27DFAF6F0;
  v20 = *(v5 + qword_27DFAF6F0);
  if (!v20 || (16 * v17) != [v20 length])
  {
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v21 = [sub_23A93BFA4() newBufferWithLength:16 * v17 options:0];
    swift_unknownObjectRelease();
    *(v5 + v19) = v21;
    swift_unknownObjectRelease();
  }

  v22 = *(v5 + v19);
  if (!v22)
  {

    sub_23A8D4E5C();
    if (qword_27DFAE3A0 == -1)
    {
LABEL_17:

      sub_23AA0D644();
      sub_23AA0CE94();

      v26 = sub_23AA0CE54();
      v27 = sub_23AA0D494();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v49[0] = v29;
        *v28 = 136315138;
        v30 = sub_23AA0CA64();
        v32 = sub_23A9A65A4(v30, v31, v49);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_23A8B4000, v26, v27, " pointArrayBuffer for %s is nil", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x23EE91710](v29, -1, -1);
        MEMORY[0x23EE91710](v28, -1, -1);
      }

      return (*(v45 + 8))(v12, v46);
    }

LABEL_34:
    swift_once();
    goto LABEL_17;
  }

  v23 = [swift_unknownObjectRetain_n() contents];
  v24 = v22;
  if (v23 != v18 + 32 || v23 >= &v18[16 * v17 + 32])
  {
    memmove(v23, v18 + 32, 16 * v17);
  }

  REMaterialParameterBlockSetBuffer();
  LODWORD(v49[0]) = 0;
  sub_23AA0D1B4();
  REMaterialParameterBlockGetFloat();

  if (*v49 != a2)
  {
    sub_23AA0D1B4();
    REMaterialParameterBlockSetFloat();

    sub_23AA0A2BC(0x74726F7077656976, 0xEC000000657A6953, a3);
    goto LABEL_21;
  }

  if (sub_23AA0A2BC(0x74726F7077656976, 0xEC000000657A6953, a3))
  {
LABEL_21:
    v34 = v47;
    sub_23AA0A128();
    v35 = v34;
    if (v34)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_24;
  }

  v35 = v47;
LABEL_24:
  if (*(v5 + qword_27DFAF6E8))
  {
    REMeshComponentSetBoundsMargin();
    return swift_unknownObjectRelease();
  }

  sub_23A8D4E5C();
  if (qword_27DFAE3A0 != -1)
  {
    swift_once();
  }

  sub_23AA0D644();
  sub_23AA0CE94();

  v36 = sub_23AA0CE54();
  v37 = sub_23AA0D494();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v47 = v35;
    v39 = v38;
    v40 = swift_slowAlloc();
    v49[0] = v40;
    *v39 = 136315138;
    v41 = sub_23AA0CA64();
    v43 = sub_23A9A65A4(v41, v42, v49);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_23A8B4000, v36, v37, "MeshComponent for %s is nil", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x23EE91710](v40, -1, -1);
    MEMORY[0x23EE91710](v39, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return (*(v45 + 8))(v15, v46);
}

double sub_23A941E30()
{

  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_23A941E80(__n128 a1)
{
  sub_23AA0CAC4();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_23A941F0C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23AA0DBA4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LineAnimation(0);
        v6 = sub_23AA0D324();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LineAnimation(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23A94226C(v8, v9, a1, v4);
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
    sub_23A942038(0, v2, 1, a1);
  }
}

void sub_23A942038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = type metadata accessor for LineAnimation(0);
  MEMORY[0x28223BE20](v39);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v38 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      sub_23A9400FC(v22, v16);
      sub_23A9400FC(v19, v12);
      v23 = v16[104];
      v24 = v12[104];
      if (v23 == v24)
      {
        v25 = (*(v16 + 14) + 16);
        v26 = (*(v12 + 14) + 16);
      }

      else
      {
        v27 = v24;
        v25 = (&unk_23AA14678 + 8 * v23);
        v26 = (&unk_23AA14678 + 8 * v27);
      }

      v28 = *v25;
      v29 = *v26;
      sub_23A940160(v12);
      sub_23A940160(v16);
      if (v28 >= v29)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      sub_23A940208(v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      sub_23A940208(v9, v19);
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

void sub_23A94226C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v134 = a1;
  v149 = type metadata accessor for LineAnimation(0);
  v144 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v137 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v148 = &v129 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v129 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v129 - v15;
  MEMORY[0x28223BE20](v17);
  v140 = &v129 - v18;
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v131 = &v129 - v21;
  MEMORY[0x28223BE20](v22);
  v130 = &v129 - v24;
  v25 = *(a3 + 8);
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_101:
    v28 = *v134;
    if (!*v134)
    {
      goto LABEL_139;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_133:
      v27 = sub_23A977E20(v27);
    }

    v150 = v27;
    v124 = *(v27 + 16);
    if (v124 >= 2)
    {
      while (*a3)
      {
        v125 = v27;
        v27 = *(v27 + 16 * v124);
        v126 = v125;
        v127 = *&v125[16 * v124 + 24];
        sub_23A942C0C(*a3 + *(v144 + 72) * v27, *a3 + *(v144 + 72) * *&v125[16 * v124 + 16], *a3 + *(v144 + 72) * v127, v28);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v127 < v27)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_23A977E20(v126);
        }

        if (v124 - 2 >= *(v126 + 2))
        {
          goto LABEL_127;
        }

        v128 = &v126[16 * v124];
        *v128 = v27;
        v128[1] = v127;
        v150 = v126;
        sub_23A977D94(v124 - 1);
        v27 = v150;
        v124 = *(v150 + 16);
        if (v124 <= 1)
        {
          goto LABEL_111;
        }
      }

      goto LABEL_137;
    }

LABEL_111:

    return;
  }

  v139 = v23;
  v129 = a4;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v145 = a3;
  v138 = v13;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    if (v26 + 1 >= v25)
    {
      goto LABEL_30;
    }

    v141 = v25;
    v30 = *a3;
    v31 = *(v144 + 72);
    a3 = v26 + 1;
    v32 = v130;
    sub_23A9400FC(v30 + v31 * v29, v130);
    v135 = v28;
    v146 = v31;
    v33 = v30 + v31 * v28;
    v34 = v131;
    sub_23A9400FC(v33, v131);
    v35 = *(v32 + 104);
    v36 = *(v34 + 104);
    v133 = v5;
    if (v35 == v36)
    {
      v37 = (*(v32 + 112) + 16);
      v38 = (*(v34 + 112) + 16);
    }

    else
    {
      v39 = v36;
      v37 = (&unk_23AA14678 + 8 * v35);
      v38 = (&unk_23AA14678 + 8 * v39);
    }

    v132 = v27;
    v40 = *v37;
    v142 = *v38;
    v143 = v40;
    sub_23A940160(v34);
    sub_23A940160(v32);
    v41 = v135 + 2;
    v42 = v146 * (v135 + 2);
    v43 = v30 + v42;
    v44 = a3;
    v45 = v146 * a3;
    v46 = v30 + v146 * a3;
    do
    {
      v51 = v41;
      v52 = v44;
      v5 = v45;
      v27 = v42;
      v147 = v41;
      if (v41 >= v141)
      {
        break;
      }

      v53 = v139;
      sub_23A9400FC(v43, v139);
      v54 = v140;
      sub_23A9400FC(v46, v140);
      v55 = v54;
      v56 = *(v53 + 104);
      v57 = *(v54 + 104);
      if (v56 == v57)
      {
        v48 = (*(v53 + 112) + 16);
        v49 = (*(v54 + 112) + 16);
      }

      else
      {
        v47 = v57;
        v48 = (&unk_23AA14678 + 8 * v56);
        v49 = (&unk_23AA14678 + 8 * v47);
      }

      a3 = v143 < v142;
      v50 = *v48 < *v49;
      sub_23A940160(v55);
      sub_23A940160(v53);
      v51 = v147;
      v41 = v147 + 1;
      v43 += v146;
      v46 += v146;
      v44 = v52 + 1;
      v45 = v5 + v146;
      v42 = v27 + v146;
      v13 = v138;
    }

    while (a3 == v50);
    if (v143 >= v142)
    {
      goto LABEL_28;
    }

    v28 = v135;
    if (v51 < v135)
    {
      goto LABEL_130;
    }

    if (v135 < v51)
    {
      v58 = v135 * v146;
      do
      {
        if (v28 != v52)
        {
          v60 = *v145;
          if (!*v145)
          {
            goto LABEL_136;
          }

          sub_23A940208(v60 + v58, v137);
          if (v58 < v5 || v60 + v58 >= (v60 + v27))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v58 != v5)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_23A940208(v137, v60 + v5);
          v51 = v147;
        }

        ++v28;
        v5 -= v146;
        v27 -= v146;
        v58 += v146;
      }

      while (v28 < v52--);
LABEL_28:
      v29 = v51;
      v27 = v132;
      v5 = v133;
      a3 = v145;
      v28 = v135;
      goto LABEL_30;
    }

    v29 = v51;
    v27 = v132;
    v5 = v133;
    a3 = v145;
LABEL_30:
    v61 = *(a3 + 8);
    if (v29 < v61)
    {
      if (__OFSUB__(v29, v28))
      {
        goto LABEL_129;
      }

      if (v29 - v28 < v129)
      {
        v62 = v28 + v129;
        if (__OFADD__(v28, v129))
        {
          goto LABEL_131;
        }

        if (v62 >= v61)
        {
          v62 = *(a3 + 8);
        }

        if (v62 < v28)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v29 != v62)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v29 < v28)
    {
      goto LABEL_128;
    }

    v147 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_23A938B2C(0, *(v27 + 16) + 1, 1, v27);
    }

    v78 = *(v27 + 16);
    v77 = *(v27 + 24);
    v79 = v78 + 1;
    v26 = v147;
    if (v78 >= v77 >> 1)
    {
      v123 = sub_23A938B2C((v77 > 1), v78 + 1, 1, v27);
      v26 = v147;
      v27 = v123;
    }

    *(v27 + 16) = v79;
    v80 = v27 + 16 * v78;
    *(v80 + 32) = v28;
    *(v80 + 40) = v26;
    v28 = *v134;
    if (!*v134)
    {
      goto LABEL_138;
    }

    if (v78)
    {
      while (1)
      {
        a3 = v79 - 1;
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v81 = *(v27 + 32);
          v82 = *(v27 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_70:
          if (v84)
          {
            goto LABEL_117;
          }

          v97 = (v27 + 16 * v79);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_120;
          }

          v103 = (v27 + 32 + 16 * a3);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_124;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              a3 = v79 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v107 = (v27 + 16 * v79);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_84:
        if (v102)
        {
          goto LABEL_119;
        }

        v110 = v27 + 16 * a3;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_122;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_91:
        v118 = a3 - 1;
        if (a3 - 1 >= v79)
        {
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
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v145)
        {
          goto LABEL_135;
        }

        v119 = v27;
        v120 = v27 + 32;
        v27 = *(v27 + 32 + 16 * v118);
        v121 = *(v120 + 16 * a3 + 8);
        sub_23A942C0C(*v145 + *(v144 + 72) * v27, *v145 + *(v144 + 72) * *(v120 + 16 * a3), *v145 + *(v144 + 72) * v121, v28);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v121 < v27)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_23A977E20(v119);
        }

        if (v118 >= *(v119 + 2))
        {
          goto LABEL_114;
        }

        v122 = &v119[16 * v118];
        *(v122 + 4) = v27;
        *(v122 + 5) = v121;
        v150 = v119;
        sub_23A977D94(a3);
        v27 = v150;
        v79 = *(v150 + 16);
        v26 = v147;
        if (v79 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v27 + 32 + 16 * v79;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_115;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_116;
      }

      v92 = (v27 + 16 * v79);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_118;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_121;
      }

      if (v96 >= v88)
      {
        v114 = (v27 + 32 + 16 * a3);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_125;
        }

        if (v83 < v117)
        {
          a3 = v79 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    a3 = v145;
    v25 = v145[1];
    if (v26 >= v25)
    {
      goto LABEL_101;
    }
  }

  v132 = v27;
  v133 = v5;
  v63 = *a3;
  v64 = *(v144 + 72);
  v65 = *a3 + v64 * (v29 - 1);
  v66 = -v64;
  v135 = v28;
  v136 = v64;
  v67 = v28 - v29;
  v68 = v63 + v29 * v64;
  v141 = v62;
LABEL_40:
  v146 = v65;
  v147 = v29;
  v142 = v68;
  v143 = v67;
  while (1)
  {
    sub_23A9400FC(v68, v16);
    sub_23A9400FC(v65, v13);
    v69 = v16[104];
    v70 = v13[104];
    if (v69 == v70)
    {
      v71 = (*(v16 + 14) + 16);
      v72 = (*(v13 + 14) + 16);
    }

    else
    {
      v73 = v70;
      v71 = (&unk_23AA14678 + 8 * v69);
      v72 = (&unk_23AA14678 + 8 * v73);
    }

    a3 = *v71;
    v74 = *v72;
    sub_23A940160(v13);
    sub_23A940160(v16);
    if (a3 >= v74)
    {
LABEL_39:
      v29 = v147 + 1;
      v65 = v146 + v136;
      v67 = v143 - 1;
      v68 = v142 + v136;
      if (v147 + 1 != v141)
      {
        goto LABEL_40;
      }

      v29 = v141;
      v27 = v132;
      v5 = v133;
      v28 = v135;
      goto LABEL_50;
    }

    if (!v63)
    {
      break;
    }

    v75 = v148;
    sub_23A940208(v68, v148);
    swift_arrayInitWithTakeFrontToBack();
    sub_23A940208(v75, v65);
    v65 += v66;
    v68 += v66;
    if (__CFADD__(v67++, 1))
    {
      goto LABEL_39;
    }
  }

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
}

void sub_23A942C0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = type metadata accessor for LineAnimation(0);
  MEMORY[0x28223BE20](v55);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_67;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_68;
  }

  v21 = (a2 - a1) / v19;
  v59 = a1;
  v58 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    v54 = v15;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v23;
    if (v23 < 1)
    {
      v35 = a4 + v23;
    }

    else
    {
      v33 = a4 + v23;
      v51 = a4;
      v34 = -v19;
      v35 = v32;
      do
      {
        v49 = v35;
        v36 = a2;
        v37 = a2 + v34;
        v52 = v36;
        v53 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v59 = v36;
            v57 = v49;
            goto LABEL_65;
          }

          v38 = a3;
          v50 = v35;
          v56 = v33 + v34;
          sub_23A9400FC(v33 + v34, v10);
          v39 = v54;
          sub_23A9400FC(v37, v54);
          v40 = v39;
          v41 = v10[104];
          v42 = *(v39 + 104);
          if (v41 == v42)
          {
            v43 = (*(v10 + 14) + 16);
            v44 = (*(v39 + 112) + 16);
          }

          else
          {
            v45 = v42;
            v43 = (&unk_23AA14678 + 8 * v41);
            v44 = (&unk_23AA14678 + 8 * v45);
          }

          v46 = *v43;
          v47 = *v44;
          a3 += v34;
          sub_23A940160(v40);
          sub_23A940160(v10);
          if (v46 < v47)
          {
            break;
          }

          v35 = v56;
          v37 = v53;
          if (v38 < v33 || a3 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v38 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v33 = v35;
          v36 = v52;
          if (v56 <= v51)
          {
            a2 = v52;
            goto LABEL_64;
          }
        }

        a2 = v53;
        if (v38 < v52 || a3 >= v52)
        {
          swift_arrayInitWithTakeFrontToBack();
          v35 = v50;
        }

        else
        {
          v35 = v50;
          if (v38 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_64:
    v59 = a2;
    v57 = v35;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v22;
    v57 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      do
      {
        sub_23A9400FC(a2, v17);
        sub_23A9400FC(a4, v13);
        v25 = v17[104];
        v26 = v13[104];
        if (v25 == v26)
        {
          v27 = (*(v17 + 14) + 16);
          v28 = (*(v13 + 14) + 16);
        }

        else
        {
          v29 = v26;
          v27 = (&unk_23AA14678 + 8 * v25);
          v28 = (&unk_23AA14678 + 8 * v29);
        }

        v30 = *v27;
        v31 = *v28;
        sub_23A940160(v13);
        sub_23A940160(v17);
        if (v30 >= v31)
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = a4 + v19;
          a4 += v19;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
        }

        a1 += v19;
        v59 = a1;
      }

      while (a4 < v56 && a2 < a3);
    }
  }

LABEL_65:
  sub_23A943138(&v59, &v58, &v57);
}

uint64_t sub_23A943138(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for LineAnimation(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_23A94321C(uint64_t a1)
{
  v2 = type metadata accessor for LineAnimation(0) - 8;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a1 + v10;
  v12 = *(v6 + 72);
  v13 = MEMORY[0x277D84F90];
  do
  {
    sub_23A9400FC(v11, v8);
    v14 = *(v8 + 14);
    v15 = v14[1].i64[0];
    if (v15 && (v16 = vsubq_f32(v14[2], v14[v15 + 1]), v17 = vmulq_f32(v16, v16), (v17.f32[2] + vaddv_f32(*v17.f32)) >= 0.00000001))
    {
      sub_23A9400FC(v8, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_23A939084(0, v13[2] + 1, 1, v13);
      }

      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        v13 = sub_23A939084((v18 > 1), v19 + 1, 1, v13);
      }

      sub_23A940160(v8);
      v13[2] = v19 + 1;
      sub_23A940208(v4, v13 + v10 + v19 * v12);
    }

    else
    {
      sub_23A940160(v8);
    }

    v11 += v12;
    --v9;
  }

  while (v9);
  return v13;
}

unint64_t sub_23A94340C()
{
  result = qword_27DFAF778;
  if (!qword_27DFAF778)
  {
    type metadata accessor for EdgeEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF778);
  }

  return result;
}

uint64_t sub_23A943464(float a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC70, &qword_23AA11F18);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  type metadata accessor for EdgeEntity(0);
  v6 = swift_allocObject();
  *(v6 + qword_27DFAF6E8) = 0;
  *(v6 + qword_27DFAF6F0) = 0;
  *(v6 + qword_27DFAF6F8) = MEMORY[0x277D84F90];
  type metadata accessor for RERoomsMaterial();
  swift_allocObject();
  v7 = sub_23AA09CA0(0x6D65722E65676465, 0xEF6C616972657461);
  if (v1)
  {
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v6 + qword_27DFAF6E0) = v7;
    v6 = sub_23AA0C1A4();
    HIDWORD(v15) = 0;
    sub_23AA0D1B4();

    REMaterialParameterBlockGetFloat();

    if (*(&v15 + 1) != a1)
    {
      sub_23AA0D1B4();
      REMaterialParameterBlockSetFloat();
    }

    __asm { FMOV            V0.4S, #1.0 }

    sub_23AA0A3A0(0x6F6C6F43656E696CLL, 0xE900000000000072, _Q0);
    HIDWORD(v15) = 0;
    sub_23AA0D1B4();
    REMaterialParameterBlockGetFloat();

    if (*(&v15 + 1) != 1.0)
    {
      sub_23AA0D1B4();
      REMaterialParameterBlockSetFloat();
    }

    HIDWORD(v15) = 0;
    sub_23AA0D1B4();
    REMaterialParameterBlockGetFloat();

    if (*(&v15 + 1) != 0.000006)
    {
      sub_23AA0D1B4();
      REMaterialParameterBlockSetFloat();
    }

    v13 = sub_23AA0C664();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    sub_23AA0C604();
  }

  return v6;
}

BOOL sub_23A943874(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_23A9438A4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_23A9438D0@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_23A943968@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void sub_23A943984(_DWORD *a2@<X8>)
{
  v3 = sub_23A8CADC8();

  *a2 = v3;
}

unint64_t sub_23A9439C8()
{
  result = qword_27DFAF788;
  if (!qword_27DFAF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF788);
  }

  return result;
}

unint64_t sub_23A943A20()
{
  result = qword_27DFAF790;
  if (!qword_27DFAF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF790);
  }

  return result;
}

unint64_t sub_23A943A78()
{
  result = qword_27DFAF798;
  if (!qword_27DFAF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF798);
  }

  return result;
}

unint64_t sub_23A943AD0()
{
  result = qword_27DFAF7A0;
  if (!qword_27DFAF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF7A0);
  }

  return result;
}

uint64_t sub_23A943EE8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_23A943F54(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = a1[1];
  *&v20.a = *a1;
  *&v20.c = v11;
  *&v20.tx = a1[2];
  CGAffineTransformInvert(&v19, &v20);
  *(&v12 + 1) = *&v19.b;
  *&v12 = vcvt_f32_f64(*&v19.a);
  v18 = v12;
  *&v12 = vcvt_f32_f64(*&v19.c);
  v17 = v12;
  *&v13 = vcvt_f32_f64(*&v19.tx);
  *(&v13 + 1) = 1065353216;
  v16 = v13;
  type metadata accessor for FrameTextures();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 48) = v18;
  *(v14 + 64) = v17;
  *(v14 + 80) = v16;
  *(v14 + 96) = a6;
  swift_beginAccess();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v15 = swift_unknownObjectRetain();
  MEMORY[0x23EE8FD70](v15);
  if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23AA0D314();
  }

  sub_23AA0D334();
  swift_endAccess();
}

void sub_23A9440B0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, unint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    v13 = *(v12 + 16);
    if (v13 >> 62)
    {
      if (!sub_23AA0D7F4())
      {
        goto LABEL_25;
      }
    }

    else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {

      v14 = MEMORY[0x23EE90360](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v14 = *(v13 + 32);
    }

    *a2 = *(v14 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *a3 = *(v14 + 24);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *a4 = *(v14 + 32);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *a5 = *(v14 + 96);
    v15 = *(v14 + 64);
    v16 = *(v14 + 80);
    *a6 = *(v14 + 48);
    *(a6 + 16) = v15;
    *(a6 + 32) = v16;
    swift_beginAccess();
    a6 = *(v12 + 16);
    a4 = (a6 >> 62);
    if (!(a6 >> 62))
    {
      if (*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_9;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (!sub_23AA0D7F4())
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (sub_23AA0D7F4())
    {
LABEL_9:
      if ((a6 & 0xC000000000000001) == 0)
      {
        if (!*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (!a4)
        {
          goto LABEL_12;
        }

        goto LABEL_22;
      }

LABEL_21:
      MEMORY[0x23EE90360](0, a6);
      if (!a4)
      {
LABEL_12:
        v18 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_23;
      }

LABEL_22:
      v18 = sub_23AA0D7F4();
LABEL_23:
      if (v18)
      {
        sub_23A945E44(0, 1, sub_23A914060, v17, type metadata accessor for FrameTextures);
        swift_endAccess();

LABEL_25:

        return;
      }

      goto LABEL_28;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_23A94432C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A944390()
{
  v8[0] = sub_23AA0D524();
  v1 = *(v8[0] - 8);
  MEMORY[0x28223BE20](v8[0]);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0D504();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23AA0CF24();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_23A9164A0();
  sub_23AA0CEE4();
  v8[1] = v6;
  sub_23A9468FC(&qword_27DFB1150, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A916544();
  sub_23AA0D764();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v8[0]);
  *(v0 + 24) = sub_23AA0D554();
  return v0;
}

uint64_t sub_23A944614()
{
  sub_23AA0DD14();
  v0 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v0);
  v1 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v1);
  v2 = sub_23AA0DD64();
  MEMORY[0x23EE907C0](v2);
  return sub_23AA0DD54();
}

uint64_t sub_23A944680()
{
  v0 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v0);
  v1 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v1);
  v2 = sub_23AA0DD64();
  return MEMORY[0x23EE907C0](v2);
}

uint64_t sub_23A9446D4()
{
  sub_23AA0DD14();
  v0 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v0);
  v1 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v1);
  v2 = sub_23AA0DD64();
  MEMORY[0x23EE907C0](v2);
  return sub_23AA0DD54();
}

void sub_23A94473C(void *a1, _OWORD *a2)
{
  v3 = v2;
  v6 = [a1 capturedImage];
  v7 = sub_23A944D38(v6);

  v8 = sub_23AA085E4();
  if (v8)
  {
    v9 = v8;
    v10 = sub_23A944BEC(v8, 0, MTLPixelFormatR32Float);

    swift_unknownObjectRetain();
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1 smoothedSceneDepth];
  if (v11 && (v12 = v11, v13 = [v11 confidenceMap], v12, v13) || (v14 = objc_msgSend(a1, sel_sceneDepth), v13 = objc_msgSend(v14, sel_confidenceMap), v14, v13))
  {
    v15 = sub_23A944BEC(v13, 0, MTLPixelFormatR8Uint);

    swift_unknownObjectRetain();
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v3 + 24);
  [a1 timestamp];
  v18 = v17;
  v19 = *(v16 + 24);
  v20 = swift_allocObject();
  v21 = a2[1];
  *(v20 + 16) = *a2;
  *(v20 + 32) = v21;
  *(v20 + 48) = a2[2];
  *(v20 + 64) = v7;
  *(v20 + 72) = v10;
  *(v20 + 80) = v15;
  *(v20 + 88) = v18;
  *(v20 + 96) = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_23A9469FC;
  *(v22 + 24) = v20;
  v25[4] = sub_23A916670;
  v25[5] = v22;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_23AA08C40;
  v25[3] = &block_descriptor_1;
  v23 = _Block_copy(v25);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  dispatch_sync(v19, v23);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease_n();
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_23A944A1C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v7 = *(v3 + 72);
  swift_unknownObjectRetain();
  if ((v7 & 1) == 0)
  {
    sub_23A9451E0([a3 width], objc_msgSend(a3, sel_height));
    *(v3 + 72) = 1;
  }

  v8 = *(v3 + 88);
  if (!v8 || (v9 = *(v3 + 96)) == 0 || (v10 = *(v3 + 104)) == 0)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v11 = *(v3 + 112);
  if (v11)
  {
    v12 = *(v3 + 64);
    v15 = *(v3 + 88);
    if (v12)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      [v12 encodeToCommandBuffer:a1 sourceTexture:a2 destinationTexture:v8];
      [v12 encodeToCommandBuffer:a1 sourceTexture:a2 destinationTexture:v9];
      v13 = *(v3 + 56);
      if (!v13)
      {
LABEL_11:
        [v13 encodeReconstructionToCommandBuffer:a1 guidanceTexture:v15 coefficientsTexture:v10 destinationTexture:v11];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_13;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v13 = *(v3 + 56);
      if (!v13)
      {
        goto LABEL_11;
      }
    }

    [v13 encodeRegressionToCommandBuffer:a1 sourceTexture:a3 guidanceTexture:v9 weightsTexture:0 destinationCoefficientsTexture:v10];
    goto LABEL_11;
  }

LABEL_13:
  swift_unknownObjectRelease();
  return v11;
}

id sub_23A944BEC(__CVBuffer *a1, size_t a2, MTLPixelFormat a3)
{
  textureOut[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v7 = *(v3 + 128);
  if (v7)
  {
    v8 = v7;
    v9 = sub_23A944E74(a1);
    if (v9)
    {
      v10 = v9;
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(v9, a2);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(v10, a2);
      textureOut[0] = 0;
      TextureFromImage = CVMetalTextureCacheCreateTextureFromImage(0, v8, v10, 0, a3, WidthOfPlane, HeightOfPlane, a2, textureOut);
      v14 = textureOut[0];
      if (TextureFromImage)
      {
        textureOut[0] = 0;

        v14 = textureOut[0];
      }

      if (v14)
      {
        v15 = v14;
        v16 = CVMetalTextureGetTexture(v15);

        return v16;
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_23A944D38(__CVBuffer *a1)
{
  textureOut[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v3 = *(v1 + 128);
  if (v3)
  {
    v4 = v3;
    v5 = sub_23A944E74(a1);
    if (v5)
    {
      v6 = v5;
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(v5, 0);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(v6, 0);
      textureOut[0] = 0;
      TextureFromImage = CVMetalTextureCacheCreateTextureFromImage(0, v4, v6, 0, 0x208uLL, WidthOfPlane, HeightOfPlane, 0, textureOut);
      v10 = textureOut[0];
      if (TextureFromImage)
      {
        textureOut[0] = 0;

        v10 = textureOut[0];
      }

      if (v10)
      {
        v11 = v10;
        v12 = CVMetalTextureGetTexture(v11);

        return v12;
      }
    }

    else
    {
    }
  }

  return 0;
}

CVPixelBufferRef sub_23A944E74(__CVBuffer *a1)
{
  pixelBufferOut[6] = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  type metadata accessor for PixelBufferFormat();
  v6 = swift_allocObject();
  *(v6 + 16) = Width;
  *(v6 + 24) = Height;
  *(v6 + 32) = PixelFormatType;
  swift_beginAccess();
  v7 = *(v1 + 32);

  v8 = sub_23A94EDF0(v6, v7);

  if (v8)
  {
  }

  else
  {

    v9 = sub_23A94652C(a1);
    swift_beginAccess();
    if (v9)
    {
      v11 = *(v1 + 32);
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (v11 < 0)
        {
          v12 = *(v1 + 32);
        }

        else
        {
          v12 = v11 & 0xFFFFFFFFFFFFFF8;
        }

        v13 = sub_23AA0D7F4();
        if (__OFADD__(v13, 1))
        {
          goto LABEL_31;
        }

        *(v1 + 32) = sub_23A905E4C(v12, v13 + 1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v1 + 32);
      sub_23A9DAF10(v9, v6, isUniquelyReferenced_nonNull_native);
      *(v1 + 32) = v31;
    }

    else
    {
      v15 = sub_23A905890(v6, v10);
    }

    swift_endAccess();
  }

  v16 = *(v1 + 32);

  v17 = sub_23A94EDF0(v6, v16);

  if (!v17)
  {

    return 0;
  }

  pixelBufferOut[0] = 0;
  CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], v17, pixelBufferOut);
  if (!pixelBufferOut[0])
  {
LABEL_19:

    return 0;
  }

  v18 = pixelBufferOut[0];
  v19 = pixelBufferOut[0];
  if (CVPixelBufferLockBaseAddress(a1, 1uLL))
  {
LABEL_18:

    goto LABEL_19;
  }

  if (CVPixelBufferLockBaseAddress(v19, 0))
  {
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    goto LABEL_18;
  }

  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  if (PlaneCount >= 2)
  {
    v22 = PlaneCount;
    v23 = 0;
    while (1)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v23);
      v25 = CVPixelBufferGetBaseAddressOfPlane(v19, v23);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v23);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v23);
      if ((BytesPerRowOfPlane * HeightOfPlane) >> 64 != (BytesPerRowOfPlane * HeightOfPlane) >> 63)
      {
        break;
      }

      ++v23;
      memcpy(v25, BaseAddressOfPlane, BytesPerRowOfPlane * HeightOfPlane);
      if (v22 == v23)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(v19, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v29 = CVPixelBufferGetBaseAddress(v19);
  DataSize = CVPixelBufferGetDataSize(a1);
  memcpy(v29, BaseAddress, DataSize);
LABEL_29:
  CVPixelBufferUnlockBaseAddress(v19, 0);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);

  return v18;
}

uint64_t sub_23A9451E0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = v3 * result;
  if (v4 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = fabs(v3 * result);
  v7 = v3 * a2;
  if (v6 > 0x7FEFFFFFFFFFFFFFLL || (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = v4;
  v19 = v7;
  v10 = *(v2 + 120);
  v11 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v11 setPixelFormat_];
  [v11 setWidth_];
  [v11 setHeight_];
  [v11 setUsage_];
  v20 = a2;
  v12 = [v10 newTextureWithDescriptor_];

  *(v2 + 104) = v12;
  swift_unknownObjectRelease();
  v13 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v13 setPixelFormat_];
  [v13 setWidth_];
  [v13 setHeight_];
  [v13 setUsage_];
  v14 = [v10 newTextureWithDescriptor_];

  *(v2 + 112) = v14;
  swift_unknownObjectRelease();
  v15 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v15 setPixelFormat_];
  [v15 &off_278B65878];
  [v15 &selRef:v19 step:?];
  [v15 setUsage_];
  v16 = [v10 newTextureWithDescriptor_];

  *(v2 + 88) = v16;
  swift_unknownObjectRelease();
  v17 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v17 setPixelFormat_];
  [v17 &off_278B65878];
  [v17 &selRef:v20 step:?];
  [v17 setUsage_];
  v18 = [v10 newTextureWithDescriptor_];

  *(v2 + 96) = v18;

  return swift_unknownObjectRelease();
}

id *sub_23A945500()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_23A945570()
{
  sub_23A945500();

  return swift_deallocClassInstance();
}

void *sub_23A945610(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_23A964308(a1);

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void sub_23A9456CC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a5;
  v12 = *v7;
  v13 = (v12 + 32 + 24 * a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF668, &qword_23AA14400);
  a1 = swift_arrayDestroy();
  v14 = __OFSUB__(a3, v8);
  v15 = a3 - v8;
  if (v14)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = *(v12 + 16);
  v14 = __OFSUB__(v16, a2);
  v17 = v16 - a2;
  if (v14)
  {
    goto LABEL_18;
  }

  a1 = &v13[3 * a3];
  v18 = (v12 + 32 + 24 * a2);
  if (a1 != v18 || a1 >= v18 + 24 * v17)
  {
    a1 = memmove(a1, v18, 24 * v17);
  }

  v19 = *(v12 + 16);
  v14 = __OFADD__(v19, v15);
  v20 = v19 + v15;
  if (v14)
  {
    goto LABEL_19;
  }

  *(v12 + 16) = v20;
LABEL_10:
  if (a3 > 0)
  {
    a1 = a4;
    *v13 = a4;
    v13[1] = v6;
    v13[2] = a6;
    if (a3 == 1)
    {
      return;
    }

LABEL_20:
    v21 = a1;
    v22 = v6;
    __break(1u);
    return;
  }
}

uint64_t sub_23A945828(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for HullPoint();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23A945890(uint64_t a1, uint64_t (*a2)(void *, uint64_t, __n128))
{
  v3 = sub_23A945610(a1);
  v4 = v3[2];

  return (a2)(v3 + 4, v4);
}

void sub_23A945960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for HullPoint();
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = sub_23AA0D7F4();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = sub_23AA0D7F4();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x28223BE20](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_23A945890(v4, sub_23A946A3C);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

void sub_23A945AF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (sub_23AA0D7F4() < v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v4 >> 62))
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v11 = sub_23AA0D7F4();
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v9)
  {
    v14 = sub_23AA0D7F4();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFADD__(v14, v13))
  {
    goto LABEL_21;
  }

  sub_23A914060();

  sub_23A945960(v7, v6, v11, v4);
}

char *sub_23A945C0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for HullPoint();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_23AA0D7F4();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_23AA0D7F4();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_23A945D28(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_23AA0D7F4();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_23AA0D7F4();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_23A914060();

  return sub_23A945C0C(v7, v6, 1, v4);
}