void *sub_1C97BA4DC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&unk_1EC3C6A90, &qword_1C9A9D548);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1C97E8434(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&unk_1EC3CAD30, &qword_1C9A9D550);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C97BA5EC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6CC0, &qword_1C9A9D680);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C97E84F4(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6CC8, &qword_1C9A9D688);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C97BA704(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6C18, &qword_1C9A9D5E0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C97E71C4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6C20, &qword_1C9A9D5E8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C97BA81C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6A20, &qword_1C9A9D4D8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1C979B00C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6A28, &qword_1C9A9D4E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C97BA92C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6A30, &qword_1C9A9D4E8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C979AFE4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6A38, &qword_1C9A9D4F0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C97BAA44(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6A40, &qword_1C9A9D4F8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1C979B00C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6A48, &qword_1C9A9D500);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C97BAB54()
{
  sub_1C97BE544();
  if ((v5 & 1) == 0)
  {
    v9 = v4;
    goto LABEL_7;
  }

  sub_1C97BDFD4();
  if (v10 == v11)
  {
LABEL_7:
    v12 = *(v0 + 16);
    if (v9 <= v12)
    {
      v13 = *(v0 + 16);
    }

    else
    {
      v13 = v9;
    }

    if (v13)
    {
      sub_1C97BE398(v3, v4, v5, v6, v7, v8);
      v14 = sub_1C97BE490();
      v15 = j__malloc_size(v14);
      v14[2] = v12;
      v14[3] = 2 * ((v15 - 32) / 32);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v12, v14 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    sub_1C97BE5D4();
    goto LABEL_15;
  }

  sub_1C97BE12C();
  if (!v10)
  {
    sub_1C97BDFC4();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1C97BAC1C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C68F8, &unk_1C9A9D3B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1C97E8434(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6900, &unk_1C9A9FF70);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C97BAD2C()
{
  sub_1C97BE054();
  if ((v4 & 1) == 0 || (sub_1C97BDFD4(), v5 == v6))
  {
LABEL_6:
    sub_1C97BE044();
    if (v3)
    {
      sub_1C97BE398(v7, v8, v9, v10, v11, v12);
      v13 = sub_1C97BE490();
      sub_1C97BE624(v13);
      sub_1C97BE10C(v14);
      if (v2)
      {
LABEL_8:
        v15 = sub_1C97BE064();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v16 = sub_1C97BE380();
    memcpy(v16, v17, v18);
    goto LABEL_11;
  }

  sub_1C97BE12C();
  if (!v5)
  {
    sub_1C97BDFC4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C97BADDC()
{
  sub_1C97BE054();
  if ((v5 & 1) == 0 || (sub_1C97BDFD4(), v6 == v7))
  {
LABEL_6:
    sub_1C97BE044();
    if (v4)
    {
      sub_1C97BE398(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      v14[2] = v3;
      v14[3] = 2 * v15 - 64;
      if (v2)
      {
LABEL_8:
        v16 = sub_1C97BE064();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = sub_1C97BE380();
    memcpy(v17, v18, v3);
    goto LABEL_11;
  }

  sub_1C97BE12C();
  if (!v6)
  {
    sub_1C97BDFC4();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1C97BAE98(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&unk_1EC3C6A10, &qword_1C9A9D4C8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C97E84F8(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3CD680, &qword_1C9A9D4D0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C97BAFB0()
{
  sub_1C97BE544();
  if ((v5 & 1) == 0)
  {
    v9 = v4;
    goto LABEL_7;
  }

  sub_1C97BDFD4();
  if (v10 == v11)
  {
LABEL_7:
    v12 = *(v0 + 16);
    if (v9 <= v12)
    {
      v13 = *(v0 + 16);
    }

    else
    {
      v13 = v9;
    }

    if (v13)
    {
      sub_1C97BE398(v3, v4, v5, v6, v7, v8);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      v14[2] = v12;
      v14[3] = 2 * ((v15 - 32) / 24);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v12, v14 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    sub_1C97BE5D4();
    goto LABEL_15;
  }

  sub_1C97BE12C();
  if (!v10)
  {
    sub_1C97BDFC4();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1C97BB088(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C68B0, &qword_1C9A9D368);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C979AFE4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C68B8, &qword_1C9A9D370);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C97BB1A0()
{
  sub_1C97BE054();
  if ((v4 & 1) == 0 || (sub_1C97BDFD4(), v5 == v6))
  {
LABEL_6:
    sub_1C97BE044();
    if (v3)
    {
      sub_1C97BE398(v7, v8, v9, v10, v11, v12);
      v13 = sub_1C97BE490();
      sub_1C97BE624(v13);
      sub_1C97BE10C(v14);
      if (v2)
      {
LABEL_8:
        v15 = sub_1C97BE064();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v16 = sub_1C97BE380();
    memcpy(v16, v17, v18);
    goto LABEL_11;
  }

  sub_1C97BE12C();
  if (!v5)
  {
    sub_1C97BDFC4();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C97BB250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C97BDF7C(a1, a2, a3);
  sub_1C97C4F68();
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v9 = sub_1C97BE264();
    v7 = MEMORY[0x1CCA912B0](v9);
  }

  *v3 = v7;
  return sub_1C97BE074();
}

uint64_t sub_1C97BB334(uint64_t a1)
{
  v2 = type metadata accessor for KShotSegment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C97BB398(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C97BB450()
{
  result = qword_1EC3C6858;
  if (!qword_1EC3C6858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6858);
  }

  return result;
}

unint64_t sub_1C97BB4A8()
{
  result = qword_1EC3C6860;
  if (!qword_1EC3C6860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6860);
  }

  return result;
}

uint64_t sub_1C97BB53C(uint64_t a1)
{
  result = type metadata accessor for KShotSegment(319);
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

uint64_t dispatch thunk of SNKShotSegment.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v5[0] = *a1;
  v5[1] = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = v2;
  return v3(v5);
}

__n128 sub_1C97BC2D4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C97BC2E0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C97BC320(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C97BC370(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1C97BC384(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_1C97BC3C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1C97BC414(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C97BC428(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C97BC468(uint64_t result, int a2, int a3)
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

uint64_t sub_1C97BC4C8(uint64_t *a1, int a2)
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

uint64_t sub_1C97BC508(uint64_t result, int a2, int a3)
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

uint64_t sub_1C97BC560(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 68))
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

uint64_t sub_1C97BC5A0(uint64_t result, int a2, int a3)
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
      *(result + 68) = 1;
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

    *(result + 68) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C97BC62C(uint64_t a1)
{
  result = sub_1C9A91558();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C97BC6F4()
{
  result = qword_1EC3C6878;
  if (!qword_1EC3C6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6878);
  }

  return result;
}

unint64_t sub_1C97BC74C()
{
  result = qword_1EC3C6880;
  if (!qword_1EC3C6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6880);
  }

  return result;
}

unint64_t sub_1C97BC7A4()
{
  result = qword_1EC3C6888;
  if (!qword_1EC3C6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6888);
  }

  return result;
}

unint64_t sub_1C97BC7FC()
{
  result = qword_1EC3C6890;
  if (!qword_1EC3C6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6890);
  }

  return result;
}

unint64_t sub_1C97BC854()
{
  result = qword_1EC3C6898;
  if (!qword_1EC3C6898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6898);
  }

  return result;
}

uint64_t sub_1C97BC8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C97BDF7C(a1, a2, a3);
  sub_1C97C4F68();
  if (v4)
  {
    v5 = swift_unknownObjectRetain();
  }

  else
  {
    v7 = sub_1C97BE264();
    v5 = MEMORY[0x1CCA912B0](v7);
  }

  *v3 = v5;
  return sub_1C97BE074();
}

uint64_t sub_1C97BC918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C97BDF7C(a1, a2, a3);
  sub_1C97C4F68();
  if (v4)
  {
    v5 = swift_unknownObjectRetain();
  }

  else
  {
    v7 = sub_1C97BE264();
    v5 = MEMORY[0x1CCA912B0](v7);
  }

  *v3 = v5;
  return sub_1C97BE074();
}

uint64_t sub_1C97BC97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C97BDF7C(a1, a2, a3);
  sub_1C97C4F68();
  if (v4)
  {
  }

  else
  {
    v7 = sub_1C97BE264();
    v5 = MEMORY[0x1CCA912B0](v7);
  }

  *v3 = v5;
  return sub_1C97BE074();
}

unint64_t sub_1C97BC9E4()
{
  result = qword_1EC3C6AA8;
  if (!qword_1EC3C6AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6AA8);
  }

  return result;
}

unint64_t sub_1C97BCA38()
{
  result = qword_1EC3C6AB0;
  if (!qword_1EC3C6AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6AB0);
  }

  return result;
}

unint64_t sub_1C97BCA8C()
{
  result = qword_1EC3C6F50;
  if (!qword_1EC3C6F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6F50);
  }

  return result;
}

unint64_t sub_1C97BCAE0()
{
  result = qword_1EC3C6AC8;
  if (!qword_1EC3C6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6AC8);
  }

  return result;
}

unint64_t sub_1C97BCB34()
{
  result = qword_1EC3C6AD0;
  if (!qword_1EC3C6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6AD0);
  }

  return result;
}

unint64_t sub_1C97BCB88()
{
  result = qword_1EC3C6AE8;
  if (!qword_1EC3C6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6AE8);
  }

  return result;
}

unint64_t sub_1C97BCBDC()
{
  result = qword_1EC3C6AF0;
  if (!qword_1EC3C6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6AF0);
  }

  return result;
}

unint64_t sub_1C97BCC30()
{
  result = qword_1EC3C6AF8;
  if (!qword_1EC3C6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6AF8);
  }

  return result;
}

unint64_t sub_1C97BCC84()
{
  result = qword_1EC3C6B08;
  if (!qword_1EC3C6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6B08);
  }

  return result;
}

unint64_t sub_1C97BCCD8()
{
  result = qword_1EC3C6B10;
  if (!qword_1EC3C6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6B10);
  }

  return result;
}

unint64_t sub_1C97BCD2C()
{
  result = qword_1EC3C6B20;
  if (!qword_1EC3C6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6B20);
  }

  return result;
}

unint64_t sub_1C97BCD80(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C97AA4F0(&qword_1EC3C6B38, &qword_1C9A9D588);
    v4();
    sub_1C97BE0B8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C97BCDEC(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C97AA4F0(&qword_1EC3C6B28, &qword_1C9A9D580);
    v4();
    sub_1C97BE0B8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C97BCE58()
{
  result = qword_1EC3C6B68;
  if (!qword_1EC3C6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6B68);
  }

  return result;
}

unint64_t sub_1C97BCEAC(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C97BCEF0(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C97AA4F0(&qword_1EC3C6B70, &qword_1C9A9D5A0);
    sub_1C97BCEAC(v4);
    sub_1C97BE0B8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C97BCF80()
{
  result = qword_1EC3C6BB0;
  if (!qword_1EC3C6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6BB0);
  }

  return result;
}

unint64_t sub_1C97BCFD4(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C97AA4F0(&qword_1EC3C6BB8, &qword_1C9A9D5B8);
    sub_1C97BDF64();
    sub_1C97BCEAC(v4);
    sub_1C97BE0B8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C97BD084()
{
  result = qword_1EC3C6BF0;
  if (!qword_1EC3C6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6BF0);
  }

  return result;
}

unint64_t sub_1C97BD0D8()
{
  result = qword_1EC3C6F30;
  if (!qword_1EC3C6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6F30);
  }

  return result;
}

unint64_t sub_1C97BD12C()
{
  result = qword_1EC3C6F70;
  if (!qword_1EC3C6F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6F70);
  }

  return result;
}

uint64_t sub_1C97BD180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C97BDF7C(a1, a2, a3);
  sub_1C97C4F68();
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v9 = sub_1C97BE264();
    v7 = MEMORY[0x1CCA912B0](v9);
  }

  *v3 = v7;
  return sub_1C97BE074();
}

uint64_t sub_1C97BD200(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return sub_1C97BE15C(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1C97BD264()
{
  result = qword_1EC3C6C80;
  if (!qword_1EC3C6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6C80);
  }

  return result;
}

unint64_t sub_1C97BD2B8()
{
  result = qword_1EC3C6C88;
  if (!qword_1EC3C6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6C88);
  }

  return result;
}

uint64_t sub_1C97BD318(double a1, uint64_t a2, unint64_t *a3, void *a4)
{
  result = *a3;
  if (!*a3)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a3);
  }

  return result;
}

uint64_t sub_1C97BD360(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C97BD3EC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C97BE3EC(-1);
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
      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 6);
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

      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 6);
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

  return sub_1C97BE3EC(v8);
}

_BYTE *sub_1C97BD470(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
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
          result = sub_1C97BE280(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C97BD53C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C97BE3EC(-1);
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
      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 3);
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

      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 3);
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

  return sub_1C97BE3EC(v8);
}

_BYTE *sub_1C97BD5C0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
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
          result = sub_1C97BE280(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C97BD68C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C97BE3EC(-1);
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
      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 2);
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

      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 2);
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

  return sub_1C97BE3EC(v8);
}

_BYTE *sub_1C97BD710(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
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
          result = sub_1C97BE280(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C97BD7F0()
{
  result = qword_1EC3C6D50;
  if (!qword_1EC3C6D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6D50);
  }

  return result;
}

unint64_t sub_1C97BD848()
{
  result = qword_1EC3C6D58;
  if (!qword_1EC3C6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6D58);
  }

  return result;
}

unint64_t sub_1C97BD8A0()
{
  result = qword_1EC3C6D60;
  if (!qword_1EC3C6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6D60);
  }

  return result;
}

unint64_t sub_1C97BD8F8()
{
  result = qword_1EC3C6D68;
  if (!qword_1EC3C6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6D68);
  }

  return result;
}

unint64_t sub_1C97BD950()
{
  result = qword_1EC3C6D70;
  if (!qword_1EC3C6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6D70);
  }

  return result;
}

unint64_t sub_1C97BD9A8()
{
  result = qword_1EC3C6D78;
  if (!qword_1EC3C6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6D78);
  }

  return result;
}

unint64_t sub_1C97BDA00()
{
  result = qword_1EC3C6D80;
  if (!qword_1EC3C6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6D80);
  }

  return result;
}

unint64_t sub_1C97BDA58()
{
  result = qword_1EC3C6D88;
  if (!qword_1EC3C6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6D88);
  }

  return result;
}

unint64_t sub_1C97BDAB0()
{
  result = qword_1EC3C6D90;
  if (!qword_1EC3C6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6D90);
  }

  return result;
}

unint64_t sub_1C97BDB08()
{
  result = qword_1EC3C6D98;
  if (!qword_1EC3C6D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6D98);
  }

  return result;
}

unint64_t sub_1C97BDB60()
{
  result = qword_1EC3C6DA0;
  if (!qword_1EC3C6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6DA0);
  }

  return result;
}

unint64_t sub_1C97BDBB8()
{
  result = qword_1EC3C6DA8;
  if (!qword_1EC3C6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6DA8);
  }

  return result;
}

unint64_t sub_1C97BDC10()
{
  result = qword_1EC3C6DB0;
  if (!qword_1EC3C6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6DB0);
  }

  return result;
}

unint64_t sub_1C97BDC68()
{
  result = qword_1EC3C6DB8;
  if (!qword_1EC3C6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6DB8);
  }

  return result;
}

unint64_t sub_1C97BDCC0()
{
  result = qword_1EC3C6DC0;
  if (!qword_1EC3C6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6DC0);
  }

  return result;
}

unint64_t sub_1C97BDD18()
{
  result = qword_1EC3C6DC8;
  if (!qword_1EC3C6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6DC8);
  }

  return result;
}

unint64_t sub_1C97BDD70()
{
  result = qword_1EC3C6DD0;
  if (!qword_1EC3C6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6DD0);
  }

  return result;
}

unint64_t sub_1C97BDDC8()
{
  result = qword_1EC3C6DD8;
  if (!qword_1EC3C6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6DD8);
  }

  return result;
}

unint64_t sub_1C97BDE20()
{
  result = qword_1EC3C6DE0;
  if (!qword_1EC3C6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6DE0);
  }

  return result;
}

uint64_t sub_1C97BDE74(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1C97BE008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_1C9A92F68();
}

uint64_t sub_1C97BE088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1C9A936A8();
}

uint64_t sub_1C97BE0C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = (v4 + a4);
  v5[5] = result;
  v5[6] = a2;
  v5[7] = a3;
  return result;
}

uint64_t sub_1C97BE138()
{

  return sub_1C9A934C8();
}

uint64_t sub_1C97BE164()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C97BE194()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C97BE224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A938F8();
}

uint64_t sub_1C97BE244()
{

  return sub_1C9A931E8();
}

void *sub_1C97BE2EC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[1] = v2;
  result[2] = a2;
  *result = *(v2 + a2);
  return result;
}

void *sub_1C97BE32C(uint64_t a1, ...)
{

  return sub_1C9A93CC8();
}

uint64_t sub_1C97BE398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_1C97A2CEC(a5, a6);
}

void sub_1C97BE3B0(unint64_t a1@<X8>)
{

  sub_1C97B7978(a1 > 1, v1, 1);
}

void sub_1C97BE3F4()
{

  sub_1C97B7978(0, v0 & ~(v0 >> 63), 0);
}

uint64_t sub_1C97BE418(uint64_t a1)
{

  return sub_1C9A93DD8();
}

uint64_t sub_1C97BE43C(uint64_t a1)
{

  return sub_1C9A93DD8();
}

uint64_t sub_1C97BE490()
{

  return swift_allocObject();
}

uint64_t sub_1C97BE510(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t sub_1C97BE564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A93A18();
}

uint64_t sub_1C97BE584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1C9A936A8();
}

uint64_t sub_1C97BE5D4()
{

  return swift_arrayInitWithCopy();
}

id sub_1C97BE5F4()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_1C97BE60C()
{
}

void sub_1C97BE640()
{

  JUMPOUT(0x1CCA912B0);
}

uint64_t sub_1C97BE658(uint64_t a1)
{

  return sub_1C9A93678();
}

void *sub_1C97BE670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 48) = 1936614497;
  sub_1C97A2CEC(&qword_1EC3C6DF8, &qword_1C9A9DE50);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v4 + 64) = v10;
  *(v4 + 80) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  type metadata accessor for SafeLock(v11);
  v12 = swift_allocObject();

  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  *(v4 + 56) = v12;
  v14 = [objc_allocWithZone(MEMORY[0x1E698D6F8]) initWithIsolatedAudioUseCaseID_];
  if (!v14)
  {
    sub_1C97C000C();
    swift_allocError();
    *v27 = 0;
    *(v27 + 4) = 2;
    swift_willThrow();

    swift_deallocPartialClassInstance();
    return v5;
  }

  v15 = v14;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v16 = sub_1C9A91B58();
  sub_1C97BFF6C(v16, qword_1EC3D3108);
  v17 = sub_1C9A91B38();
  v18 = sub_1C9A92FC8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C9788000, v17, v18, "AVAudioSecureSession created for soundAnalysis", v19, 2u);
    MEMORY[0x1CCA93280](v19, -1, -1);
  }

  *(v4 + 72) = v15;
  v20 = v15;
  RegisterForIsolatedAudio();
  v21 = sub_1C9A91B38();
  v22 = sub_1C9A92FC8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C9788000, v21, v22, "IsolatedCoreAudioClient RegisterForIsolatedAudio called", v23, 2u);
    MEMORY[0x1CCA93280](v23, -1, -1);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v25 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    if (exclaveCapability)
    {
      SetAudioLapseHandler();
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97BE9B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1C9A91AE8();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C9A91AA8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v16;
  if (qword_1EC3C57A8 != -1)
  {
    swift_once();
  }

  v61 = v12;
  v18 = sub_1C9A91AD8();
  v19 = sub_1C97BFF6C(v18, qword_1EC3D3120);
  sub_1C9A91A98();
  v60 = v19;
  v20 = sub_1C9A91AB8();
  v21 = sub_1C9A93078();
  if (sub_1C9A93238())
  {
    v22 = swift_slowAlloc();
    v62 = a3;
    v23 = v9;
    v24 = a1;
    v25 = a2;
    v26 = v22;
    *v22 = 0;
    v27 = sub_1C9A91A88();
    _os_signpost_emit_with_name_impl(&dword_1C9788000, v20, v21, v27, "ICAC AudioAvailabilityCallback", "", v26, 2u);
    v28 = v26;
    a2 = v25;
    a1 = v24;
    v9 = v23;
    a3 = v62;
    MEMORY[0x1CCA93280](v28, -1, -1);
  }

  (*(v9 + 16))(v15, v17, v8);
  sub_1C9A91B18();
  swift_allocObject();
  v62 = sub_1C9A91B08();
  v29 = *(v9 + 8);
  result = v29(v17, v8);
  if (a3)
  {

    v31 = RequestIsolatedAudio();
    v32 = sub_1C9A91BF8();
    v33 = *(*a3[8] + 136);
    if (v31 == v32)
    {
      v55 = v29;
      v56 = v8;
      v34 = a3[2];

      v36 = *v33(v35);

      v34(v36, a1, a2);

      v37 = sub_1C9A91AB8();
      v38 = v61;
      sub_1C9A91AF8();
      v39 = sub_1C9A93068();
      if (sub_1C9A93238())
      {

        v40 = v57;
        sub_1C9A91B28();

        v42 = v58;
        v41 = v59;
        v43 = (*(v58 + 88))(v40, v59);
        v44 = v56;
        if (v43 == *MEMORY[0x1E69E93E8])
        {
          v45 = "[Error] Interval already ended";
        }

        else
        {
          (*(v42 + 8))(v40, v41);
          v45 = "";
        }

        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = sub_1C9A91A88();
        _os_signpost_emit_with_name_impl(&dword_1C9788000, v37, v39, v54, "ICAC AudioAvailabilityCallback", v45, v53, 2u);
        MEMORY[0x1CCA93280](v53, -1, -1);

        v51 = v38;
        v52 = v44;
      }

      else
      {

        v51 = v38;
        v52 = v56;
      }

      return v55(v51, v52);
    }

    else
    {
      v46 = a3[4];

      v48 = *v33(v47);

      sub_1C97C000C();
      v49 = swift_allocError();
      *v50 = v31;
      *(v50 + 4) = 1;
      v46(v48, v49);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C97BEF10(int a1, void *a2)
{
  v40 = a1;
  v3 = sub_1C9A91AE8();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C9A91AA8();
  v6 = *(v42 - 8);
  v7 = MEMORY[0x1EEE9AC00](v42);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - v12;
  if (qword_1EC3C57A8 != -1)
  {
    swift_once();
  }

  v37 = v5;
  v14 = sub_1C9A91AD8();
  sub_1C97BFF6C(v14, qword_1EC3D3120);
  sub_1C9A91A98();
  v15 = sub_1C9A91AB8();
  v16 = sub_1C9A93078();
  if (sub_1C9A93238())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_1C9A91A88();
    _os_signpost_emit_with_name_impl(&dword_1C9788000, v15, v16, v18, "ICAC Lapse Callback", "", v17, 2u);
    MEMORY[0x1CCA93280](v17, -1, -1);
  }

  v19 = v42;
  (*(v6 + 16))(v11, v13, v42);
  sub_1C9A91B18();
  swift_allocObject();
  sub_1C9A91B08();
  v20 = *(v6 + 8);
  result = v20(v13, v19);
  if (a2)
  {
    v22 = a2[4];
    v23 = *(*a2[8] + 136);

    v25 = *v23(v24);

    sub_1C97C000C();
    v26 = swift_allocError();
    *v27 = v40;
    *(v27 + 4) = 0;
    v22(v25, v26);

    v28 = sub_1C9A91AB8();
    v29 = v41;
    sub_1C9A91AF8();
    v30 = sub_1C9A93068();
    if (sub_1C9A93238())
    {

      v31 = v37;
      sub_1C9A91B28();

      v33 = v38;
      v32 = v39;
      if ((*(v38 + 88))(v31, v39) == *MEMORY[0x1E69E93E8])
      {
        v34 = "[Error] Interval already ended";
      }

      else
      {
        (*(v33 + 8))(v31, v32);
        v34 = "";
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = sub_1C9A91A88();
      _os_signpost_emit_with_name_impl(&dword_1C9788000, v28, v30, v36, "ICAC Lapse Callback", v34, v35, 2u);
      MEMORY[0x1CCA93280](v35, -1, -1);
    }

    else
    {
    }

    return v20(v29, v42);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C97BF3B0()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 72);
  v2 = *MEMORY[0x1E698D530];
  v3 = *MEMORY[0x1E698D5F8];
  v18[0] = 0;
  v4 = [v1 setCategory:v2 mode:v3 options:0 error:v18];
  v5 = v18[0];
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = qword_1EC3C5520;
  v7 = v18[0];
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_1C9A91B58();
  sub_1C97BFF6C(v8, qword_1EC3D3108);
  v9 = sub_1C9A91B38();
  v10 = sub_1C9A92FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C9788000, v9, v10, "AVAudioSecureSession mode set to soundRecognition", v11, 2u);
    MEMORY[0x1CCA93280](v11, -1, -1);
  }

  v18[0] = 0;
  v12 = [v1 setActive:1 error:v18];
  v5 = v18[0];
  if (v12)
  {
    v13 = v18[0];
    v14 = sub_1C9A91B38();
    v15 = sub_1C9A92FC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C9788000, v14, v15, "AVAudioSecureSession setActive TRUE", v16, 2u);
      MEMORY[0x1CCA93280](v16, -1, -1);
    }
  }

  else
  {
LABEL_10:
    v17 = v5;
    sub_1C9A913C8();

    swift_willThrow();
  }
}

void sub_1C97BF5C8()
{
  v1 = v0;
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 72);
  v19[0] = 0;
  if ([v2 setActive:0 error:v19])
  {
    v3 = qword_1EC3C5520;
    v4 = v19[0];
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1C9A91B58();
    sub_1C97BFF6C(v5, qword_1EC3D3108);
    v6 = sub_1C9A91B38();
    v7 = sub_1C9A92FC8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C9788000, v6, v7, "AVAudioSecureSession setActive FALSE", v8, 2u);
      MEMORY[0x1CCA93280](v8, -1, -1);
    }

    v9 = [objc_opt_self() defaultCenter];
    [v9 removeObserver:v1];
    goto LABEL_11;
  }

  v10 = v19[0];
  v11 = sub_1C9A913C8();

  swift_willThrow();
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v12 = sub_1C9A91B58();
  sub_1C97BFF6C(v12, qword_1EC3D3108);
  v13 = v11;
  v9 = sub_1C9A91B38();
  v14 = sub_1C9A92FC8();

  if (os_log_type_enabled(v9, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_1C9788000, v9, v14, "Secure session deactivation failed with error:%@", v15, 0xCu);
    sub_1C97BFFA4(v16);
    MEMORY[0x1CCA93280](v16, -1, -1);
    MEMORY[0x1CCA93280](v15, -1, -1);

LABEL_11:
    return;
  }
}

void sub_1C97BF884()
{
  v1 = *(*(v0 + 56) + 16);
  os_unfair_lock_lock(v1);
  sub_1C97BF8D0(v0);
  os_unfair_lock_unlock(v1);
}

void sub_1C97BF8D0(uint64_t a1)
{
  v3 = *(a1 + 80);
  if (v3)
  {
    if (v3 < 1)
    {
      goto LABEL_7;
    }

    if (qword_1EC3C5520 != -1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v4 = sub_1C9A91B58();
      sub_1C97BFF6C(v4, qword_1EC3D3108);
      v5 = sub_1C9A91B38();
      v6 = sub_1C9A92FC8();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1C9788000, v5, v6, "IsolatedCoreAudioClient StartIsolatedAudio() called when audio already running", v7, 2u);
        MEMORY[0x1CCA93280](v7, -1, -1);
      }

LABEL_7:
      v8 = *(a1 + 80);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (!v9)
      {
        break;
      }

      __break(1u);
LABEL_20:
      swift_once();
    }

    *(a1 + 80) = v10;
  }

  else
  {
    atomic_fetch_add_explicit((*(**(a1 + 64) + 136))(), 1uLL, memory_order_relaxed);
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v11 = sub_1C9A91B58();
    sub_1C97BFF6C(v11, qword_1EC3D3108);
    v12 = sub_1C9A91B38();
    v13 = sub_1C9A92FC8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C9788000, v12, v13, "Starting ICAC I/O...", v14, 2u);
      MEMORY[0x1CCA93280](v14, -1, -1);
    }

    sub_1C97BF3B0();
    if (!v1)
    {
      started = StartIsolatedAudio();
      v16 = sub_1C9A91B38();
      v17 = sub_1C9A92FC8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109120;
        *(v18 + 4) = started;
        _os_log_impl(&dword_1C9788000, v16, v17, "IsolatedCoreAudioClient StartIsolatedAudio() called with status %d", v18, 8u);
        MEMORY[0x1CCA93280](v18, -1, -1);
      }

      if (started == sub_1C9A91BF8())
      {
        goto LABEL_7;
      }

      sub_1C97C000C();
      swift_allocError();
      *v19 = 1;
      *(v19 + 4) = 2;
      swift_willThrow();
    }
  }
}

void sub_1C97BFBA8()
{
  v1 = *(*(v0 + 56) + 16);
  os_unfair_lock_lock(v1);
  sub_1C97BFC1C(v0);

  os_unfair_lock_unlock(v1);
}

void sub_1C97BFC1C(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  v1 = a1;
  *(a1 + 80) = v4;
  if (v4)
  {
    goto LABEL_9;
  }

  if (qword_1EC3C5520 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v5 = sub_1C9A91B58();
  sub_1C97BFF6C(v5, qword_1EC3D3108);
  v6 = sub_1C9A91B38();
  v7 = sub_1C9A92FC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C9788000, v6, v7, "Stopping ICAC I/O...", v8, 2u);
    MEMORY[0x1CCA93280](v8, -1, -1);
  }

  StopIsolatedAudio();
  v9 = sub_1C9A91B38();
  v10 = sub_1C9A92FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C9788000, v9, v10, "IsolatedCoreAudioClient StopIsolatedAudio() called", v11, 2u);
    MEMORY[0x1CCA93280](v11, -1, -1);
  }

  sub_1C97BF5C8();
  v4 = *(v1 + 80);
LABEL_9:
  *(v1 + 80) = v4 & ~(v4 >> 63);
}

uint64_t sub_1C97BFDA4()
{
  StopIsolatedAudio();

  return v0;
}

uint64_t sub_1C97BFDE8()
{
  sub_1C97BFDA4();

  return swift_deallocClassInstance();
}

uint64_t *sub_1C97BFE40(uint64_t a1)
{
  sub_1C97BF884();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = a1;
  }

  return v1;
}

uint64_t sub_1C97BFED0()
{

  sub_1C97BFBA8();

  return v0;
}

uint64_t sub_1C97BFF14()
{
  sub_1C97BFED0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C97BFF6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C97BFFA4(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&unk_1EC3C86A0, &qword_1C9A9F830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C97C000C()
{
  result = qword_1EC3C6DF0;
  if (!qword_1EC3C6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6DF0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ICACConnection.DomainError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ICACConnection.DomainError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 5))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 4);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for ICACConnection.DomainError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1C97C00F8(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C97C0110(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

BOOL sub_1C97C0138(int a1, int a2, int a3, unsigned int a4, double a5, double a6, double a7, double a8)
{
  v8 = a5 != a7;
  if (a6 != a8)
  {
    v8 = 1;
  }

  if (a1 != a3)
  {
    v8 = 1;
  }

  return ((v8 | a2 ^ a4 | ((a2 ^ a4) >> 8)) & 1) == 0;
}

uint64_t sub_1C97C0168(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152656C706D6173 && a2 == 0xEA00000000006574;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7A69536B636F6C62 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001C9AD46A0 == a2;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C9AD46C0 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x80000001C9AD46E0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9A93B18();

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

uint64_t sub_1C97C032C(unsigned __int8 a1)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](a1);
  return sub_1C9A93D18();
}

unint64_t sub_1C97C0374(char a1)
{
  result = 0x6152656C706D6173;
  switch(a1)
  {
    case 1:
      result = 0x7A69536B636F6C62;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C97C042C(void *a1, uint64_t a2, unsigned int a3, double a4, double a5)
{
  v7 = sub_1C97A2CEC(&qword_1EC3C6E50, &qword_1C9A9E0E8);
  sub_1C97AE9DC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C97C27F0();
  sub_1C9A93DD8();
  v19 = 0;
  sub_1C9A939E8();
  if (!v5)
  {
    v18 = 1;
    sub_1C97C2CE8();
    sub_1C9A93A58();
    v17 = 2;
    sub_1C9A939E8();
    v16 = 3;
    sub_1C97C2CE8();
    sub_1C9A939D8();
    v15 = 4;
    sub_1C97C2CE8();
    sub_1C9A939D8();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1C97C0600(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1CCA919B0](*&a1, a4, a5);
  sub_1C9A93CF8();
  if (a2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a2;
  }

  MEMORY[0x1CCA919B0](*&v6);
  sub_1C9A93CE8();
  return sub_1C9A93CE8();
}

uint64_t sub_1C97C0678(uint64_t a1, __int16 a2, double a3, double a4)
{
  sub_1C9A93CC8();
  sub_1C97C0600(a3, a4, v9, a1, a2 & 0x101);
  return sub_1C9A93D18();
}

uint64_t sub_1C97C06E4(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C6E40, &qword_1C9A9E0E0);
  sub_1C97AE9DC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10[-v6];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C97C27F0();
  sub_1C9A93DB8();
  v10[15] = 0;
  sub_1C97C2CA4();
  sub_1C9A938C8();
  v10[14] = 1;
  sub_1C97C2CA4();
  v8 = sub_1C9A93938();
  v10[13] = 2;
  sub_1C97C2CA4();
  sub_1C9A938C8();
  v10[12] = 3;
  sub_1C97C2CA4();
  sub_1C9A938B8();
  v10[11] = 4;
  sub_1C97C2CA4();
  sub_1C9A938B8();
  (*(v4 + 8))(v7, v2);
  sub_1C97A592C(a1);
  return v8;
}

uint64_t sub_1C97C08F4()
{
  v1 = *v0;
  sub_1C9A93CC8();
  sub_1C978C430(v3, v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C97C0940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97C0168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97C0968@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C97C0324();
  *a1 = result;
  return result;
}

uint64_t sub_1C97C0990(uint64_t a1)
{
  v2 = sub_1C97C27F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97C09CC(uint64_t a1)
{
  v2 = sub_1C97C27F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97C0A08()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1C97C0678(*(v0 + 8), v1 | *(v0 + 24), *v0, *(v0 + 16));
}

uint64_t sub_1C97C0A30(uint64_t a1)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1C97C0600(*v1, *(v1 + 16), a1, *(v1 + 8), v2 | *(v1 + 24));
}

uint64_t sub_1C97C0A58()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  sub_1C9A93CC8();
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_1C97C0600(v1, v3, v8, v2, v6 | v4);
  return sub_1C9A93D18();
}

uint64_t sub_1C97C0AD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C97C06E4(a1);
  if (!v2)
  {
    *a2 = v6;
    *(a2 + 8) = result;
    *(a2 + 16) = v7;
    *(a2 + 24) = v5 & 1;
    *(a2 + 25) = HIBYTE(v5) & 1;
  }

  return result;
}

uint64_t sub_1C97C0B18(void *a1)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1C97C042C(a1, *(v1 + 8), v2 | *(v1 + 24), *v1, *(v1 + 16));
}

BOOL sub_1C97C0B54(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1C97C0138(*(a1 + 8), v2 | *(a1 + 24), *(a2 + 8), v3 | *(a2 + 24), *a1, *(a1 + 16), *a2, *(a2 + 16));
}

uint64_t sub_1C97C0DDC()
{
  sub_1C97C2D28();
  v4 = *(v3 + 24);
  v5 = *(v3 + 25);
  type metadata accessor for SNNullDetector(v6);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 40) = v0;
  *(result + 24) = v1;
  *(result + 32) = v2;
  *(result + 44) = v4;
  *(result + 45) = v5;
  return result;
}

id sub_1C97C0E50()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___SNNullRequest_impl];
  *v2 = 0;
  *(v2 + 2) = 1;
  *(v2 + 2) = 0;
  *(v2 + 12) = 1;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

void *SNNullRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C97C2D28();
  v7 = *(v6 + 24);
  v8 = *(v6 + 25);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR___SNNullRequest_impl];
  *v11 = v2;
  *(v11 + 2) = v1;
  *(v11 + 2) = v3;
  v11[24] = v7;
  v11[25] = v8;
  v13.receiver = v10;
  v13.super_class = ObjectType;
  result = objc_msgSendSuper2(&v13, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNNullRequest.hash.getter()
{
  v1 = v0 + OBJC_IVAR___SNNullRequest_impl;
  v2 = *(v0 + OBJC_IVAR___SNNullRequest_impl);
  v3 = *(v0 + OBJC_IVAR___SNNullRequest_impl + 8);
  v4 = *(v0 + OBJC_IVAR___SNNullRequest_impl + 16);
  v5 = *(v0 + OBJC_IVAR___SNNullRequest_impl + 24);
  v6 = *(v1 + 25);
  sub_1C9A93CC8();
  if (v6)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  sub_1C97C0600(v2, v4, v9, v3, v7 | v5);
  return sub_1C9A93D18();
}

uint64_t SNNullRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v8);
  if (v9)
  {
    sub_1C97A2D34(&v8, v7);
    sub_1C97BD360(v7, v6);
    if (swift_dynamicCast() && v5)
    {
      v3 = sub_1C9859E30(v1, v5);
    }

    else
    {
      v3 = 0;
    }

    sub_1C97A592C(v7);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id SNNullRequest.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1C97A115C(1819307369, 0xE400000000000000);
  v5 = v4;
  v6 = v3;
  v8 = v7;
  v10 = v9;
  v11 = objc_allocWithZone(ObjectType);
  v12 = &v11[OBJC_IVAR___SNNullRequest_impl];
  *v12 = v5;
  *(v12 + 2) = v6;
  *(v12 + 2) = v8;
  v12[24] = v10 & 1;
  v12[25] = HIBYTE(v10) & 1;
  v16.receiver = v11;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, sel_init);

  v14 = swift_getObjectType();
  sub_1C97C2D3C(v14);
  return v13;
}

Swift::Void __swiftcall SNNullRequest.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR___SNNullRequest_impl + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_1C979E9C4(*(v1 + OBJC_IVAR___SNNullRequest_impl + 8), v2 | *(v1 + OBJC_IVAR___SNNullRequest_impl + 24), *(v1 + OBJC_IVAR___SNNullRequest_impl), *(v1 + OBJC_IVAR___SNNullRequest_impl + 16));
}

id SNNullRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_UNKNOWN **sub_1C97C147C()
{
  result = sub_1C97C0DDC();
  if (v0)
  {
    return &off_1F492D8A0;
  }

  return result;
}

uint64_t sub_1C97C14B0()
{
  v1 = *v0;
  sub_1C9A93CC8();
  sub_1C979AF70(v3, v1);
  return sub_1C9A93D18();
}

id sub_1C97C14F4(uint64_t a1, char a2, double a3)
{
  v4 = a1;
  v34 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_self();
  *&v33 = 0;
  v8 = sub_1C9A761F8(v6, &v33, v7);
  if (v8)
  {
    v9 = v33;
    v10 = sub_1C9A92478();
    v11 = sub_1C97C2D14();
    v14 = sub_1C9A72FAC(v11, v12, v10, v13);

    if (v14)
    {
      v15 = v33;
      if (a2)
      {
        v16 = sub_1C9A92478();
        *&v33 = 0;
        v17 = sub_1C9A7347C(v6, v8, v16, 1, &v33);
      }

      else
      {
        v16 = sub_1C9A92478();
        v20 = sub_1C97C2D14();
        v17 = sub_1C9A73214(v20, v21, v16, v22);
      }

      v23 = v17;

      if (v23)
      {
        v24 = v33;
        v25 = v23;
        if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (a3 > -1.0)
        {
          if (a3 < 4294967300.0)
          {
            v26 = v25;
            sub_1C9A76554(a3, v4, 1, &v33);
            v32 = 0;
            v27 = sub_1C9A762F8(v6, v8, v14, v26, 0, 0, &v33, &v32);

            if (!v27)
            {
              v30 = v32;
              sub_1C9A913C8();

              swift_willThrow();
              goto LABEL_19;
            }

            if (a3 > -9.22337204e18)
            {
              if (a3 < 9.22337204e18)
              {
                v28 = v32;
                sub_1C9A695C8(v8, 0x2000, a3, 1);
                sub_1C9A69B8C(v8);

LABEL_19:
                return v8;
              }

LABEL_25:
              __break(1u);
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        __break(1u);
        goto LABEL_23;
      }

      v29 = v33;
      sub_1C9A913C8();

      swift_willThrow();
    }

    else
    {
      v19 = v33;
      sub_1C9A913C8();

      swift_willThrow();
    }
  }

  else
  {
    v18 = v33;
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v8;
}

CMTimeValue sub_1C97C180C(void *a1, int64_t a2, void (*a3)(uint64_t), double a4)
{
  v7 = v5;
  v34 = *MEMORY[0x1E69E9840];
  if (*(v5 + 45) != 1)
  {
    v12 = [objc_allocWithZone(type metadata accessor for SNNullResult(a4)) init];
    v13 = objc_opt_self();
    v29.start.value = 0;
    v14 = sub_1C9A76EE8(v13, a1, &v29);
    value = v29.start.value;
    if (!v14)
    {
      v24 = v29.start.value;
      sub_1C9A913C8();

      swift_willThrow();
      return value;
    }

    v15 = v14;
    v28 = v12;
    v16 = v29.start.value;
    v17 = sub_1C9A93C88();
    v18 = sub_1C9A67138(a1);
    if (v18 < 0)
    {
      __break(1u);
    }

    else
    {
      v19 = a2;
      CMTimeMake(&v29.start, v17, v18);
      value = v29.start.value;
      v20 = *&v29.start.timescale;
      epoch = v29.start.epoch;
      v22 = sub_1C9A67138(a1);
      if ((v22 & 0x80000000) == 0)
      {
        CMTimeMake(&v29.start, v19, v22);
        duration = v29.start;
        start.value = value;
        *&start.timescale = v20;
        start.epoch = epoch;
        CMTimeRangeMake(&v29, &start, &duration);
        v33 = v29;
        (a3)();
        if (v6)
        {

          return value;
        }

        v23 = sub_1C9A92F08();
        a3(v23);
        sub_1C9A92F18();
        SNNullResult.timeRange.setter(v32);
        v26 = *(v7 + 32) * v19;
        v27 = v26 / sub_1C9A67138(a1) * 1000000.0;
        if (COERCE__INT64(fabs(v27)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v27 > -1.0)
          {
            if (v27 < 4294967300.0)
            {
              usleep(v27);
              sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
              value = swift_allocObject();
              *(value + 16) = xmmword_1C9A9DF30;
              *(value + 32) = v28;

              return value;
            }

LABEL_19:
            __break(1u);
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_1C97C2528();
  sub_1C97A7A80(&type metadata for SNNullDetector.DomainError);
  *v8 = 0;
  swift_willThrow();
  return value;
}

id sub_1C97C1B28()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C97C2528();
  sub_1C97A7A80(&type metadata for SNNullDetector.DomainError);
  *v3 = 1;
  return swift_willThrow();
}

void sub_1C97C1B84(double a1)
{
  v3 = *v1;
  if (v1[3] <= 0.0)
  {
    v4 = a1;
  }

  else
  {
    v4 = v1[3];
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;

  v6 = sub_1C97C1C8C();

  if (!v2)
  {
    v7 = *(v1 + 2);
    *(v1 + 2) = v6;
  }
}

id sub_1C97C1C54@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  result = sub_1C97C14F4(*(a1 + 40), *(a1 + 44), a3);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C97C1C8C()
{
  sub_1C97C2CD8();
  v23[4] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  sub_1C97AA878();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  sub_1C97C2CB4();
  aBlock[1] = 1107296256;
  sub_1C97C2C90();
  aBlock[2] = v3;
  aBlock[3] = &unk_1F492D920;
  v4 = _Block_copy(aBlock);

  v13 = sub_1C97C2D5C(v5, v6, v7, v8, v9, v10, v11, v12, v20, aBlock[0]);
  _Block_release(v4);
  v14 = aBlock[0];
  if (v13)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
    sub_1C97BD360(v23, aBlock);
    sub_1C97C2658(v15);
    if (swift_dynamicCast())
    {
      sub_1C97A592C(v23);
      return v21;
    }

    else
    {
      sub_1C97C269C();
      v18 = sub_1C97A7A80(&type metadata for DSPGraphUtils.DomainError);
      sub_1C97C2CF8(v18, v19);
      return sub_1C97A592C(v23);
    }
  }

  else
  {
    v17 = v14;
    sub_1C9A913C8();

    return swift_willThrow();
  }
}

uint64_t sub_1C97C1E20()
{
  sub_1C97C2CD8();
  v14[4] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  sub_1C97AA878();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = v0;
  aBlock[4] = sub_1C97C27E8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  sub_1C97C2C90();
  aBlock[2] = v4;
  aBlock[3] = &unk_1F492D970;
  v5 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v6 = sub_1C9A72EA0(v2, v5, aBlock);
  _Block_release(v5);
  v7 = aBlock[0];
  if (v6)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
    sub_1C97BD360(v14, aBlock);
    sub_1C97A2CEC(&qword_1EC3C6E38, &qword_1C9A9E0D8);
    if (swift_dynamicCast())
    {
      sub_1C97A592C(v14);
      return v12;
    }

    else
    {
      sub_1C97C269C();
      v10 = sub_1C97A7A80(&type metadata for DSPGraphUtils.DomainError);
      sub_1C97C2CF8(v10, v11);
      return sub_1C97A592C(v14);
    }
  }

  else
  {
    v9 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }
}

uint64_t sub_1C97C1FF0()
{
  sub_1C97C2CD8();
  v21[4] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  sub_1C97AA878();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  sub_1C97C2CB4();
  aBlock[1] = 1107296256;
  sub_1C97C2C90();
  aBlock[2] = v3;
  aBlock[3] = &unk_1F492D9C0;
  v4 = _Block_copy(aBlock);

  v13 = sub_1C97C2D5C(v5, v6, v7, v8, v9, v10, v11, v12, v19, aBlock[0]);
  _Block_release(v4);
  v14 = aBlock[0];
  if (v13)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
    sub_1C97BD360(v21, aBlock);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C97C269C();
      v15 = sub_1C97A7A80(&type metadata for DSPGraphUtils.DomainError);
      sub_1C97C2CF8(v15, v16);
    }

    return sub_1C97A592C(v21);
  }

  else
  {
    v18 = v14;
    sub_1C9A913C8();

    return swift_willThrow();
  }
}

void sub_1C97C2174()
{
  v1 = sub_1C97C1B28();
  if (!v0)
  {
    v2 = v1;
    v3 = sub_1C9A6BD8C(v1, 0);

    if (!v3)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C97C21D0()
{

  return swift_deallocClassInstance();
}

id sub_1C97C2270(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(v12, a2);

  v4 = v13;
  if (v13)
  {
    sub_1C97A5A8C(v12, v13);
    sub_1C97AE9DC();
    v6 = v5;
    MEMORY[0x1EEE9AC00](v7);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = sub_1C9A93B08();
    (*(v6 + 8))(v9, v4);
    sub_1C97A592C(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

__n128 sub_1C97C2418(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1C97C242C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 26))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_1C97C2478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1C97C24D4()
{
  result = qword_1EC3C6E10;
  if (!qword_1EC3C6E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6E10);
  }

  return result;
}

unint64_t sub_1C97C2528()
{
  result = qword_1EC3C6E18;
  if (!qword_1EC3C6E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6E18);
  }

  return result;
}

double sub_1C97C259C@<D0>(void (*a1)(__int128 *__return_ptr)@<X1>, _OWORD *a2@<X8>, double a3@<D0>)
{
  *(&v8 + 1) = sub_1C97C2658(a3);
  a1(&v7);
  result = *&v7;
  v6 = v8;
  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t sub_1C97C2640(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C97C2658(double a1)
{
  result = qword_1EC3C56D8;
  if (!qword_1EC3C56D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C56D8);
  }

  return result;
}

unint64_t sub_1C97C269C()
{
  result = qword_1EC3C6E30;
  if (!qword_1EC3C6E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6E30);
  }

  return result;
}

uint64_t sub_1C97C26F0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1CCA93280);
  }

  return result;
}

double sub_1C97C2740@<D0>(void (*a1)(__int128 *__return_ptr)@<X1>, _OWORD *a2@<X8>)
{
  *(&v7 + 1) = sub_1C97A2CEC(&qword_1EC3C6E38, &qword_1C9A9E0D8);
  a1(&v6);
  result = *&v6;
  v5 = v7;
  *a2 = v6;
  a2[1] = v5;
  return result;
}

unint64_t sub_1C97C27F0()
{
  result = qword_1EC3C6E48;
  if (!qword_1EC3C6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6E48);
  }

  return result;
}

double sub_1C97C2844@<D0>(void (*a1)(__int128 *__return_ptr)@<X1>, _OWORD *a2@<X8>)
{
  *(&v6 + 1) = MEMORY[0x1E69E7CA8] + 8;
  a1(&v5);
  result = *&v5;
  v4 = v6;
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for NullRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for NullRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SNNullDetector.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C97C2B24()
{
  result = qword_1EC3C6E58;
  if (!qword_1EC3C6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6E58);
  }

  return result;
}

unint64_t sub_1C97C2B7C()
{
  result = qword_1EC3C6E60;
  if (!qword_1EC3C6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6E60);
  }

  return result;
}

unint64_t sub_1C97C2BD4()
{
  result = qword_1EC3C6E68;
  if (!qword_1EC3C6E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6E68);
  }

  return result;
}

unint64_t sub_1C97C2C2C()
{
  result = qword_1EC3C6E70;
  if (!qword_1EC3C6E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6E70);
  }

  return result;
}

uint64_t sub_1C97C2CF8(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

uint64_t sub_1C97C2D3C(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

id sub_1C97C2D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return sub_1C9A72EA0(v11, v10, &a10);
}

BOOL sub_1C97C2D7C(int a1, int a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 == a5;
  if (a4 != a6)
  {
    v6 = 0;
  }

  return a1 == a2 && v6;
}

uint64_t sub_1C97C2D98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152656C706D6173 && a2 == 0xEA00000000006574;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7A69536B636F6C62 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001C9AD4740 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

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

uint64_t sub_1C97C2EC0(char a1)
{
  if (!a1)
  {
    return 0x6152656C706D6173;
  }

  if (a1 == 1)
  {
    return 0x7A69536B636F6C62;
  }

  return 0xD000000000000012;
}

uint64_t sub_1C97C2F24(void *a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_1C97A2CEC(&qword_1EC3C6EC0, &qword_1C9A9E498);
  sub_1C97AE9C8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13[-v10];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C97C4B74();
  sub_1C9A93DD8();
  v13[15] = 0;
  sub_1C9A939E8();
  if (!v4)
  {
    v13[14] = 1;
    sub_1C9A93A58();
    v13[13] = 2;
    sub_1C9A939E8();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C97C30B4(double a1, double a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1CCA919B0](*&a1, a4);
  sub_1C9A93CF8();
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  return MEMORY[0x1CCA919B0](*&v5);
}

uint64_t sub_1C97C3110(uint64_t a1, double a2, double a3)
{
  sub_1C9A93CC8();
  sub_1C97C30B4(a2, a3, v7, a1);
  return sub_1C9A93D18();
}

uint64_t sub_1C97C3170(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C6EB0, &qword_1C9A9E490);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10[-v6];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C97C4B74();
  sub_1C9A93DB8();
  v10[15] = 0;
  sub_1C97C2CA4();
  sub_1C9A938C8();
  v10[14] = 1;
  sub_1C97C2CA4();
  v9 = sub_1C9A93938();
  v10[13] = 2;
  sub_1C97C2CA4();
  sub_1C9A938C8();
  (*(v4 + 8))(v7, v2);
  sub_1C97A592C(a1);
  return v9;
}

uint64_t sub_1C97C332C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97C2D98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97C3354(uint64_t a1)
{
  v2 = sub_1C97C4B74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97C3390(uint64_t a1)
{
  v2 = sub_1C97C4B74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97C33EC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C9A93CC8();
  sub_1C97C30B4(v1, v3, v5, v2);
  return sub_1C9A93D18();
}

uint64_t sub_1C97C3448@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C97C3170(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = result;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1C97C3610()
{
  sub_1C97C2D28();
  type metadata accessor for SNDetectSignalThresholdRequestImpl(v3);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  *(result + 32) = v0;
  *(result + 40) = v2;
  return result;
}

id sub_1C97C3670()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___SNDetectSignalThresholdRequest_impl];
  *v2 = 0;
  *(v2 + 2) = 1;
  *(v2 + 2) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

void *SNDetectSignalThresholdRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C97C2D28();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___SNDetectSignalThresholdRequest_impl];
  *v8 = v2;
  *(v8 + 2) = v1;
  *(v8 + 2) = v3;
  v10.receiver = v7;
  v10.super_class = ObjectType;
  result = objc_msgSendSuper2(&v10, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNDetectSignalThresholdRequest.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNDetectSignalThresholdRequest_impl);
  v2 = *(v0 + OBJC_IVAR___SNDetectSignalThresholdRequest_impl + 8);
  v3 = *(v0 + OBJC_IVAR___SNDetectSignalThresholdRequest_impl + 16);
  sub_1C9A93CC8();
  sub_1C97C30B4(v1, v3, v5, v2);
  return sub_1C9A93D18();
}

BOOL SNDetectSignalThresholdRequest.isEqual(_:)(uint64_t a1)
{
  sub_1C97A2C7C(a1, &v5);
  if (v6)
  {
    sub_1C97A2D34(&v5, v4);
    v2 = sub_1C9859820(v4, v1);
    sub_1C97A592C(v4);
  }

  else
  {
    return 0;
  }

  return v2;
}

id SNDetectSignalThresholdRequest.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1C97A1284(1819307369, 0xE400000000000000);
  v5 = v4;
  v6 = v3;
  v8 = v7;
  v9 = objc_allocWithZone(ObjectType);
  v10 = &v9[OBJC_IVAR___SNDetectSignalThresholdRequest_impl];
  *v10 = v5;
  *(v10 + 2) = v6;
  *(v10 + 2) = v8;
  v14.receiver = v9;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_init);

  v12 = swift_getObjectType();
  sub_1C97C4F9C(v12);
  return v11;
}

id SNDetectSignalThresholdRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_UNKNOWN **sub_1C97C3BE0()
{
  result = sub_1C97C3610();
  if (v0)
  {
    return &off_1F492DBE8;
  }

  return result;
}

id sub_1C97C3C0C(uint64_t a1, double a2, double a3)
{
  v4 = a1;
  v28 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_self();
  *&v27 = 0;
  v8 = sub_1C9A761F8(v6, &v27, v7);
  if (!v8)
  {
    v20 = v27;
    sub_1C9A913C8();

    swift_willThrow();
    return v8;
  }

  v9 = v27;
  v10 = sub_1C9A92478();
  *&v27 = 0;
  v11 = sub_1C9A72FAC(v6, v8, v10, &v27);

  if (!v11)
  {
    v21 = v27;
    sub_1C9A913C8();

    swift_willThrow();
LABEL_18:

    return v8;
  }

  v12 = v27;
  v13 = sub_1C97C4F6C();
  *&v27 = 0;
  v14 = sub_1C9A73A24(v6, v8, v13, 1, &v27);

  v15 = v27;
  if (!v14)
  {
    v22 = v27;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_18;
  }

  *&v27 = 0;
  v17 = v15;
  v16 = a3;
  if (!sub_1C9A74280(v6, v14, &v27, v16))
  {
    v23 = v27;
    sub_1C9A913C8();

LABEL_17:
    swift_willThrow();

    goto LABEL_18;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (a2 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 >= 4294967300.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v27;
  sub_1C9A76554(a2, v4, 1, &v27);
  v26 = 0;
  if (!sub_1C9A762F8(v6, v8, v11, v14, 0, 0, &v27, &v26))
  {
    v24 = v26;
    sub_1C9A913C8();

    goto LABEL_17;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  if (a2 >= 9.22337204e18)
  {
    goto LABEL_24;
  }

  v19 = v26;
  sub_1C9A695C8(v8, 0x2000, a2, 1);
  sub_1C9A69B8C(v8);

  return v8;
}

unint64_t sub_1C97C3F24(void *a1, double a2, uint64_t a3, unint64_t a4)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  v28[0] = 0;
  v8 = sub_1C9A74480(v7, a1, v28);
  v9 = v28[0];
  if (!v8)
  {
    v24 = v28[0];
LABEL_15:
    sub_1C9A913C8();

    goto LABEL_16;
  }

  v10 = v8;
  sub_1C97A2CEC(&unk_1EC3C6EA0, qword_1C9A9E478);
  v11 = sub_1C9A92798();
  v12 = v9;

  v28[0] = 0;
  v13 = sub_1C9A7472C(v7, a1, v28);
  v14 = v28[0];
  if (!v13)
  {
    v24 = v28[0];

    goto LABEL_15;
  }

  v15 = v13;
  v16 = sub_1C9A92798();
  v17 = v14;

  if (*(v11 + 16) != 1 || (v18 = *(v11 + 32), *(v18 + 16) != 1) || *(v16 + 16) != 1 || *(*(v16 + 32) + 16) != 1)
  {

    sub_1C97C4ABC();
    swift_allocError();
    *v25 = 0;
LABEL_16:
    swift_willThrow();
    return a4;
  }

  if (!*(v18 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v19 = *(v18 + 32);

  v20 = *(v16 + 32);

  if (!*(v20 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = *(v20 + 32);

  MEMORY[0x1EEE9AC00](v22);
  sub_1C97C43E4(v19, v21, sub_1C97C4B10);
  a4 = v23;

  if (!v4)
  {
    if (!(a4 >> 62))
    {

      sub_1C9A93B78();

      return a4;
    }

LABEL_20:

    sub_1C97A2CEC(&unk_1EC3C8670, &unk_1C9AA0730);
    v27 = sub_1C9A93788();
    swift_bridgeObjectRelease_n();
    return v27;
  }

  return a4;
}

CMTime *sub_1C97C4234(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = [a1 integerValue];
  v9 = [a2 integerValue];
  result = sub_1C9A67138(a3);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = CMTimeMake(&v23, v8, result);
  v11 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  value = v23.value;
  timescale = v23.timescale;
  flags = v23.flags;
  epoch = v23.epoch;
  result = sub_1C9A67138(a3);
  if ((result & 0x80000000) != 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  CMTimeMake(&v23, v11, result);
  v16 = v23.value;
  v17 = v23.epoch;
  v19 = type metadata accessor for SNSignalThresholdResult(v18);
  v20 = *&v23.timescale;
  v21 = [objc_allocWithZone(v19) init];
  v25 = value;
  v26 = timescale;
  v27 = flags;
  v28 = epoch;
  v29 = v16;
  v30 = v20;
  v31 = v17;
  (a4)(value, timescale | (flags << 32), epoch);
  if (v4)
  {
  }

  else
  {
    v22 = sub_1C9A92F08();
    a4(v22);
    sub_1C9A92F18();
    SNSignalThresholdResult.timeRange.setter(v24);
  }

  return v21;
}

void sub_1C97C43E4(unint64_t a1, unint64_t a2, uint64_t (*a3)(void *, id))
{
  v7 = sub_1C97BDEE0();
  v8 = sub_1C97BDEE0();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  sub_1C9A93698();
  if (v9 < 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:

    __break(1u);
  }

  else
  {
    v10 = v9;
    v34 = a1 >> 62;
    v32 = a2 >> 62;
    if (v9)
    {
      v33 = a1 & 0xC000000000000001;
      v4 = (a1 & 0xFFFFFFFFFFFFFF8);
      v11 = a2 & 0xFFFFFFFFFFFFFF8;
      v28 = a2;
      v31 = a2 & 0xC000000000000001;
      v12 = 4;
      v27 = v10;
      v13 = v10;
      while (1)
      {
        if (v34)
        {
          v14 = sub_1C9A934C8();
        }

        else
        {
          v14 = v4[2];
        }

        v15 = v12 - 4;
        if (v12 - 4 == v14)
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
          goto LABEL_57;
        }

        if (v33)
        {
          v16 = MEMORY[0x1CCA912B0](v12 - 4, a1);
        }

        else
        {
          if (v15 >= v4[2])
          {
            goto LABEL_56;
          }

          v16 = *(a1 + 8 * v12);
        }

        v4 = v16;
        if (v32)
        {
          v17 = sub_1C9A934C8();
        }

        else
        {
          v17 = *(v11 + 16);
        }

        if (v15 == v17)
        {
          goto LABEL_58;
        }

        if (v31)
        {
          v18 = MEMORY[0x1CCA912B0](v12 - 4, v28);
        }

        else
        {
          if (v15 >= *(v11 + 16))
          {
            goto LABEL_52;
          }

          v18 = *(v28 + 8 * v12);
        }

        v19 = v18;
        a3(v4, v18);
        if (v3)
        {
          break;
        }

        sub_1C9A93678();
        sub_1C9A936A8();
        sub_1C9A936B8();
        sub_1C9A93688();
        ++v12;
        --v13;
        v4 = (a1 & 0xFFFFFFFFFFFFFF8);
        if (!v13)
        {
          a2 = v28;
          v10 = v27;
          goto LABEL_28;
        }
      }

LABEL_50:
    }

    else
    {
      v4 = (a1 & 0xFFFFFFFFFFFFFF8);
      v33 = a1 & 0xC000000000000001;
      v11 = a2 & 0xFFFFFFFFFFFFFF8;
      v31 = a2 & 0xC000000000000001;
LABEL_28:
      v20 = v10 + 4;
      for (i = v4; ; v4 = i)
      {
        v21 = v34 ? sub_1C9A934C8() : v4[2];
        v22 = v20 - 4;
        if (v20 - 4 == v21)
        {
          break;
        }

        if (v33)
        {
          v23 = MEMORY[0x1CCA912B0](v20 - 4, a1);
        }

        else
        {
          if (v22 >= v4[2])
          {
            goto LABEL_54;
          }

          v23 = *(a1 + 8 * v20);
        }

        v4 = v23;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_53;
        }

        if (v32)
        {
          v24 = sub_1C9A934C8();
        }

        else
        {
          v24 = *(v11 + 16);
        }

        if (v22 == v24)
        {

          return;
        }

        if (v31)
        {
          v25 = MEMORY[0x1CCA912B0](v20 - 4, a2);
        }

        else
        {
          if (v22 >= *(v11 + 16))
          {
            goto LABEL_55;
          }

          v25 = *(a2 + 8 * v20);
        }

        v26 = v25;
        a3(v4, v25);

        if (v3)
        {
          goto LABEL_50;
        }

        sub_1C9A93678();
        sub_1C9A936A8();
        sub_1C9A936B8();
        sub_1C9A93688();
        ++v20;
      }
    }
  }
}

id sub_1C97C476C(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2;
  }

  sub_1C97C4ABC();
  swift_allocError();
  *v4 = 1;
  return swift_willThrow();
}

void sub_1C97C47D0(double a1)
{
  v3 = *v1;
  if (v1[3] <= 0.0)
  {
    v4 = a1;
  }

  else
  {
    v4 = v1[3];
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;

  v6 = sub_1C97C1C8C();

  if (!v2)
  {
    v7 = *(v1 + 2);
    *(v1 + 2) = v6;
  }
}

id sub_1C97C48A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  result = sub_1C97C3C0C(*(a1 + 32), a3, *(a1 + 40));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_1C97C48D8(uint64_t a1)
{
  result = sub_1C97C476C(a1);
  if (!v1)
  {
    v3 = result;
    v4 = sub_1C97C4F6C();
    v5 = sub_1C9A6AEE4(v3, v4);

    return v5;
  }

  return result;
}

uint64_t sub_1C97C493C()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for Time(uint64_t a1, int a2)
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

unint64_t sub_1C97C4A68()
{
  result = qword_1EC3C6E90;
  if (!qword_1EC3C6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6E90);
  }

  return result;
}

unint64_t sub_1C97C4ABC()
{
  result = qword_1EC3C6E98;
  if (!qword_1EC3C6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6E98);
  }

  return result;
}

unint64_t sub_1C97C4B30(unint64_t result, char a2, uint64_t a3)
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

unint64_t sub_1C97C4B74()
{
  result = qword_1EC3C6EB8;
  if (!qword_1EC3C6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6EB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetectSignalThresholdRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DetectSignalThresholdRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SNDetectSignalThresholdRequestImpl.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C97C4E0C()
{
  result = qword_1EC3C6EC8;
  if (!qword_1EC3C6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6EC8);
  }

  return result;
}

unint64_t sub_1C97C4E64()
{
  result = qword_1EC3C6ED0;
  if (!qword_1EC3C6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6ED0);
  }

  return result;
}

unint64_t sub_1C97C4EBC()
{
  result = qword_1EC3C6ED8;
  if (!qword_1EC3C6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6ED8);
  }

  return result;
}

unint64_t sub_1C97C4F14()
{
  result = qword_1EC3C6EE0;
  if (!qword_1EC3C6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6EE0);
  }

  return result;
}

uint64_t sub_1C97C4F6C()
{

  return sub_1C9A92478();
}

uint64_t sub_1C97C4F9C(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

BOOL sub_1C97C4FBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v45 = a1[2];
  v46 = a1[3];
  v44 = a1[4];
  v47 = a1[5];
  v4 = *(a1 + 48);
  v5 = *a2;
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = *(a2 + 48);
  if (v4)
  {
    if (a2[6])
    {
      v42 = HIDWORD(a2[1]);
      v11 = sub_1C97C924C();
      v13 = v12;
      sub_1C97A6390(v11, v14, v45, v46, v44, v47, 1);
      sub_1C97C9178();
      sub_1C97A6390(v15, v16, v17, v18, v19, v20, 1);
      v55[0] = v2;
      v55[1] = v3;
      v55[2] = v45;
      v55[3] = v46;
      v55[4] = v44;
      v55[5] = v47;
      v48 = v5;
      v49 = v13;
      v50 = v42;
      v51 = v7;
      v52 = v6;
      v53 = v9;
      v54 = v8;
      return static TimeRange.== infix(_:_:)(v55, &v48);
    }

LABEL_6:
    sub_1C97C9178();
    sub_1C97C6634(v23, v24, v25, v26, v27, v28, v10);
    v29 = sub_1C97C924C();
    sub_1C97A6390(v29, v30, v45, v46, v44, v47, v4);
    sub_1C97C9178();
    sub_1C97A6390(v31, v32, v33, v34, v35, v36, v10);
    return 0;
  }

  v22 = a2[1];
  if (a2[6])
  {

    goto LABEL_6;
  }

  v43 = sub_1C98092F4(v2, *a2);
  sub_1C97C6634(v5, v22, v7, v6, v9, v8, 0);
  v38 = sub_1C97C924C();
  sub_1C97C6634(v38, v39, v45, v46, v44, v47, 0);
  v40 = sub_1C97C924C();
  sub_1C97A6390(v40, v41, v45, v46, v44, v47, 0);
  sub_1C97A6390(v5, v22, v7, v6, v9, v8, 0);
  return v43;
}

uint64_t sub_1C97C51D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746172656D756E65 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

uint64_t sub_1C97C52A4(char a1)
{
  if (a1)
  {
    return 0x65676E6172;
  }

  else
  {
    return 0x746172656D756E65;
  }
}

uint64_t sub_1C97C52E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C97C5358()
{
  sub_1C9A93CC8();
  sub_1C97C92D8();
  return sub_1C9A93D18();
}

uint64_t sub_1C97C5394(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3C6F58, &qword_1C9A9E818);
  sub_1C97AE9C8();
  v34 = v4;
  v35 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v27 - v6;
  sub_1C97A2CEC(&qword_1EC3C6F60, &qword_1C9A9E820);
  sub_1C97AE9C8();
  v31 = v8;
  v32 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  sub_1C97A2CEC(&qword_1EC3C6F68, &qword_1C9A9E828);
  sub_1C97AE9C8();
  v37 = v13;
  v38 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = v1[1];
  v36 = *v1;
  v18 = v1[2];
  v28 = v1[3];
  v29 = v18;
  v19 = v1[4];
  v30 = v1[5];
  v20 = *(v1 + 48);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C97C8764();
  sub_1C9A93DD8();
  if (v20)
  {
    LOBYTE(v39) = 1;
    sub_1C97C87B8();
    v21 = v33;
    v22 = v38;
    sub_1C9A93988();
    v39 = v36;
    v40 = v17;
    v41 = v29;
    v42 = v28;
    v43 = v19;
    v44 = v30;
    sub_1C97BD12C();
    v23 = v35;
    sub_1C9A93A18();
    (*(v34 + 8))(v21, v23);
    return (*(v37 + 8))(v16, v22);
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_1C97C880C();
    v25 = v38;
    sub_1C9A93988();
    v39 = v36;
    sub_1C97A2CEC(&qword_1EC3C6F40, &qword_1C9A9E810);
    sub_1C97C8860(&unk_1EC3C6F78, sub_1C97BCB34, MEMORY[0x1E69E6300]);
    v26 = v32;
    sub_1C9A93A18();
    (*(v31 + 8))(v11, v26);
    return (*(v37 + 8))(v16, v25);
  }
}

void sub_1C97C5720()
{
  v1 = *v0;
  if (v0[6])
  {
    v2 = v0[5];
    v4 = v0[2];
    v3 = v0[3];
    MEMORY[0x1CCA91980](1);
    MEMORY[0x1CCA919B0](v1);
    sub_1C9A93CF8();
    sub_1C9A93CF8();
    MEMORY[0x1CCA919B0](v4);
    MEMORY[0x1CCA919B0](v3);
    sub_1C9A93CF8();
    sub_1C9A93CF8();
    MEMORY[0x1CCA919B0](v2);
    sub_1C97BE478();
  }

  else
  {
    MEMORY[0x1CCA91980](0);
    sub_1C97BE478();

    sub_1C97C8590();
  }
}

uint64_t sub_1C97C57F4()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[5];
  v5 = *(v0 + 48);
  sub_1C9A93CC8();
  if (v5)
  {
    sub_1C97C9298();
    MEMORY[0x1CCA919B0](v1);
    sub_1C9A93CF8();
    sub_1C9A93CF8();
    MEMORY[0x1CCA919B0](v3);
    MEMORY[0x1CCA919B0](v2);
    sub_1C9A93CF8();
    sub_1C9A93CF8();
    MEMORY[0x1CCA919B0](v4);
  }

  else
  {
    sub_1C97C92D8();
    sub_1C97C8590();
  }

  return sub_1C9A93D18();
}

uint64_t sub_1C97C58D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  sub_1C97A2CEC(&qword_1EC3C6F00, &qword_1C9A9E7F0);
  sub_1C97AE9C8();
  v42[4] = v4;
  v43 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C97A2CEC(&qword_1EC3C6F08, &qword_1C9A9E7F8);
  sub_1C97AE9C8();
  v42[3] = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v42 - v9;
  sub_1C97A2CEC(&qword_1EC3C6F10, &unk_1C9A9E800);
  sub_1C97AE9C8();
  v44 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C97C8764();
  v13 = v50;
  sub_1C9A93DB8();
  if (v13)
  {
    return sub_1C97A592C(a1);
  }

  v42[1] = v6;
  v42[2] = v10;
  v50 = a1;
  v14 = v45;
  sub_1C9A93958();
  result = sub_1C98EE524();
  if (v17 == v18 >> 1)
  {
    goto LABEL_7;
  }

  v42[0] = 0;
  if (v17 >= (v18 >> 1))
  {
    __break(1u);
    return result;
  }

  v19 = *(v16 + v17);
  sub_1C98EE520();
  v21 = v20;
  v23 = v22;
  swift_unknownObjectRelease();
  if (v21 != v23 >> 1)
  {
LABEL_7:
    v25 = sub_1C9A93648();
    swift_allocError();
    v27 = v26;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v27 = &type metadata for TimeDurationConstraint;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    v28 = sub_1C97C918C();
    v29(v28);
    a1 = v50;
    return sub_1C97A592C(a1);
  }

  v24 = v19;
  if (v19)
  {
    LOBYTE(v46) = 1;
    sub_1C97C87B8();
    sub_1C97C92B8(&type metadata for TimeDurationConstraint.RangeCodingKeys, &v46);
    sub_1C97BD0D8();
    sub_1C9A938F8();
    v42[0] = 0;
    swift_unknownObjectRelease();
    v30 = sub_1C97C9258();
    v31(v30);
    v32 = sub_1C97C918C();
    v33(v32);
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v37 = v49;
  }

  else
  {
    LODWORD(v43) = v19;
    LOBYTE(v46) = 0;
    sub_1C97C880C();
    sub_1C97C92B8(&type metadata for TimeDurationConstraint.EnumeratedCodingKeys, &v46);
    sub_1C97A2CEC(&qword_1EC3C6F40, &qword_1C9A9E810);
    sub_1C97C8860(&qword_1EC3C6F48, sub_1C97BCA8C, MEMORY[0x1E69E6330]);
    sub_1C9A938F8();
    v42[0] = 0;
    swift_unknownObjectRelease();
    v38 = sub_1C97C9238();
    v39(v38);
    v40 = sub_1C97C918C();
    v41(v40);
    v37 = 0;
    v34 = v46;
    v35 = 0uLL;
    v36 = 0uLL;
    v24 = v43;
  }

  *v14 = v34;
  *(v14 + 8) = v35;
  *(v14 + 24) = v36;
  *(v14 + 40) = v37;
  *(v14 + 48) = v24;
  return sub_1C97A592C(v50);
}

uint64_t sub_1C97C5EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97C51D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97C5EC8(uint64_t a1)
{
  v2 = sub_1C97C8764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97C5F04(uint64_t a1)
{
  v2 = sub_1C97C8764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97C5F64@<X0>(_BYTE *a1@<X8>)
{
  result = _s13SoundAnalysis31SNEstimateSpeechDistanceRequestC20supportsSecureCodingSbvgZ_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C97C5F90(uint64_t a1)
{
  v2 = sub_1C97C880C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97C5FCC(uint64_t a1)
{
  v2 = sub_1C97C880C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97C6008()
{
  sub_1C9A93CC8();
  sub_1C97C92D8();
  return sub_1C9A93D18();
}

uint64_t sub_1C97C6040(uint64_t a1)
{
  v2 = sub_1C97C87B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97C607C(uint64_t a1)
{
  v2 = sub_1C97C87B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97C60C0()
{
  sub_1C9A93CC8();
  sub_1C97C5720();
  return sub_1C9A93D18();
}

id sub_1C97C614C()
{
  sub_1C97C926C();
  ObjectType = swift_getObjectType();
  if (!v0)
  {
    v0 = MEMORY[0x1E69E7CC0];
  }

  v2 = objc_allocWithZone(ObjectType);
  v3 = v0;
  v4 = v2;
  sub_1C97C6200(v3);
  sub_1C97C926C();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

id sub_1C97C6200(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1C97BDEE0();
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C97B7A1C(0, v4 & ~(v4 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v7 = 0;
    v8 = v34;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1CCA912B0](v7, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v7 + 32);
      }

      v10 = v9;
      [v9 CMTimeValue];
      v11 = v33[0];
      v12 = v33[1];
      v13 = v33[2];

      v34 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1C97B7A1C(v14 > 1, v15 + 1, 1);
        v8 = v34;
      }

      *(v8 + 16) = v15 + 1;
      v16 = (v8 + 24 * v15);
      v16[4] = v11;
      ++v7;
      v16[5] = v12;
      v16[6] = v13;
    }

    while (v6 != v7);

    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v33[0] = v8;

  sub_1C97C6F14(v33);

  v17 = v33[0];
  v18 = *(v33[0] + 16);
  if (v18)
  {
    v33[0] = v5;
    sub_1C97B79FC(0, v18, 0);
    v19 = 0;
    v20 = v33[0];
    v21 = *(v33[0] + 16);
    v22 = 24 * v21;
    do
    {
      v23 = *(v17 + v19 + 32);
      v24 = *(v17 + v19 + 40);
      v25 = *(v17 + v19 + 48);
      v33[0] = v20;
      v26 = *(v20 + 24);
      v27 = v21 + 1;
      if (v21 >= v26 >> 1)
      {
        sub_1C97B79FC((v26 > 1), v21 + 1, 1);
        v20 = v33[0];
      }

      *(v20 + 16) = v27;
      v28 = (v20 + v22 + v19);
      v28[4] = v23;
      v28[5] = v24;
      v28[6] = v25;
      v19 += 24;
      v21 = v27;
      --v18;
    }

    while (v18);
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v29 = &v2[OBJC_IVAR____SNTimeDurationConstraint_impl];
  *v29 = v20;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  *(v29 + 33) = 0u;
  v32.receiver = v2;
  v32.super_class = ObjectType;
  return objc_msgSendSuper2(&v32, sel_init);
}

id sub_1C97C64A4(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____SNTimeDurationConstraint_impl];
  v5 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = a1[2];
  v4[48] = 1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void *_SNTimeDurationConstraint.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = v1 + OBJC_IVAR____SNTimeDurationConstraint_impl;
  v5 = *(v1 + OBJC_IVAR____SNTimeDurationConstraint_impl);
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  v11 = *(v4 + 48);
  v12 = objc_allocWithZone(ObjectType);
  v13 = &v12[OBJC_IVAR____SNTimeDurationConstraint_impl];
  *v13 = v5;
  *(v13 + 1) = v6;
  *(v13 + 2) = v7;
  *(v13 + 3) = v8;
  *(v13 + 4) = v9;
  *(v13 + 5) = v10;
  v13[48] = v11;
  sub_1C97C6634(v5, v6, v7, v8, v9, v10, v11);
  v15.receiver = v12;
  v15.super_class = ObjectType;
  result = objc_msgSendSuper2(&v15, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1C97C6634(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }

  return v7;
}

uint64_t _SNTimeDurationConstraint.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____SNTimeDurationConstraint_impl);
  v3 = *(v0 + OBJC_IVAR____SNTimeDurationConstraint_impl + 16);
  v2 = *(v0 + OBJC_IVAR____SNTimeDurationConstraint_impl + 24);
  v4 = *(v0 + OBJC_IVAR____SNTimeDurationConstraint_impl + 40);
  v5 = *(v0 + OBJC_IVAR____SNTimeDurationConstraint_impl + 48);
  sub_1C9A93CC8();
  if (v5)
  {
    sub_1C97C9298();
    MEMORY[0x1CCA919B0](v1);
    sub_1C9A93CF8();
    sub_1C9A93CF8();
    MEMORY[0x1CCA919B0](v3);
    MEMORY[0x1CCA919B0](v2);
    sub_1C9A93CF8();
    sub_1C9A93CF8();
    MEMORY[0x1CCA919B0](v4);
  }

  else
  {
    sub_1C97C92D8();
    sub_1C97C8590();
  }

  return sub_1C9A93D18();
}

BOOL _SNTimeDurationConstraint.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v8);
  if (v9)
  {
    sub_1C97A2D34(&v8, v7);
    sub_1C97BD360(v7, v6);
    if (swift_dynamicCast() && v5)
    {
      v3 = sub_1C9859E98(v1, v5);
    }

    else
    {
      v3 = 0;
    }

    sub_1C97A592C(v7);
  }

  else
  {
    return 0;
  }

  return v3;
}

id _SNTimeDurationConstraint.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1C97C926C();
  return _SNTimeDurationConstraint.init(coder:)(v2);
}

id _SNTimeDurationConstraint.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A13A0(1819307369, 0xE400000000000000);
  v3 = v15;
  v4 = v16;
  v5 = v17;
  v11 = v14;
  v6 = objc_allocWithZone(ObjectType);
  v7 = &v6[OBJC_IVAR____SNTimeDurationConstraint_impl];
  *v7 = v13;
  *(v7 + 1) = v11;
  *(v7 + 4) = v3;
  *(v7 + 5) = v4;
  v7[48] = v5;
  v12.receiver = v6;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, sel_init);

  v9 = swift_getObjectType();
  sub_1C97C9278(v9);
  return v8;
}

Swift::Void __swiftcall _SNTimeDurationConstraint.encode(with:)(NSCoder with)
{
  v2 = *(v1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 16);
  v3[0] = *(v1 + OBJC_IVAR____SNTimeDurationConstraint_impl);
  v3[1] = v2;
  v3[2] = *(v1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 32);
  v4 = *(v1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 48);
  sub_1C979ED8C(v3, 1819307369, 0xE400000000000000, with.super.isa);
}

uint64_t sub_1C97C6B8C()
{
  if (*(v0 + OBJC_IVAR____SNTimeDurationConstraint_impl + 48))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_1C97C6C08(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____SNTimeDurationConstraint_impl;
  if (*(v1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 48) == 1)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 36);
    v5 = *(v2 + 8);
    v6 = *(v2 + 12);
  }

  else
  {
    v2 = MEMORY[0x1E6960C98];
    v5 = *(MEMORY[0x1E6960C98] + 8);
    v6 = *(MEMORY[0x1E6960C98] + 12);
    v3 = *(MEMORY[0x1E6960C98] + 32);
    v4 = *(MEMORY[0x1E6960C98] + 36);
  }

  v7 = *(v2 + 40);
  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  *a1 = *v2;
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 32) = v3;
  *(a1 + 36) = v4;
  *(a1 + 40) = v7;
}

uint64_t sub_1C97C6CC4()
{
  v1 = (v0 + OBJC_IVAR____SNTimeDurationConstraint_impl);
  if (*(v0 + OBJC_IVAR____SNTimeDurationConstraint_impl + 48))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *v1;
  v4 = *(*v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v5 = objc_opt_self();
    v6 = (v3 + 48);
    do
    {
      v7 = *v6;
      v8 = *(v6 - 1);
      v10[0] = *(v6 - 2);
      v10[1] = v8;
      v10[2] = v7;
      v9 = [v5 valueWithCMTime_];
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      v6 += 3;
      --v4;
    }

    while (v4);
    return v11;
  }

  return result;
}

id _SNTimeDurationConstraint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _SNTimeDurationConstraint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C97C6E9C()
{
  v1 = [v0 impl];
  sub_1C9A93318();
  swift_unknownObjectRelease();
  type metadata accessor for _SNTimeDurationConstraint(v2);
  swift_dynamicCast();
  return v4;
}

uint64_t sub_1C97C6F14(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C98254AC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C97C6F80(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C97C6F80(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C9A93A88();
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
        type metadata accessor for CMTime(0);
        v6 = sub_1C9A92838();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C97C717C(v7, v8, a1, v4);
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
    return sub_1C97C7078(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C97C7078(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = sub_1C9A93108();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 + 32);
        v11 = *(v10 + 36);
        v13 = *(v10 + 40);
        v14 = *(v10 + 16);
        result = *(v10 + 24);
        *(v10 + 24) = *v10;
        *(v10 + 40) = v14;
        *v10 = result;
        *(v10 + 8) = v12;
        *(v10 + 12) = v11;
        *(v10 + 16) = v13;
        v10 -= 24;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C97C717C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v94 = *result;
    if (!*result)
    {
      goto LABEL_130;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_91:
      v84 = v6 + 16;
      v85 = *(v6 + 2);
      while (v85 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_127;
        }

        v86 = v6;
        v6 += 16 * v85;
        v87 = *v6;
        v88 = &v84[2 * v85];
        v89 = *(v88 + 1);
        sub_1C97C778C((*a3 + 24 * *v6), (*a3 + 24 * *v88), *a3 + 24 * v89, v94);
        if (v96)
        {
          break;
        }

        if (v89 < v87)
        {
          goto LABEL_115;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_116;
        }

        *v6 = v87;
        *(v6 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_117;
        }

        v96 = 0;
        v85 = *v84 - 1;
        sub_1C984A028(v88 + 16, v90, v88);
        *v84 = v85;
        v6 = v86;
      }

LABEL_99:

      return;
    }

LABEL_124:
    v6 = sub_1C984A014(v6);
    goto LABEL_91;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = *a3 + 24 * v7;
      v9 = 24 * v7;
      v10 = sub_1C9A93108();
      v11 = v8 + 64;
      v12 = v7 + 2;
      while (1)
      {
        v13 = v12;
        if (++v5 >= v4)
        {
          break;
        }

        v14 = sub_1C9A93108();
        v11 += 24;
        v12 = v13 + 1;
        if ((v10 & 1) != (v14 & 1))
        {
          if ((v10 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_10;
        }
      }

      v5 = v4;
      if ((v10 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_10:
      if (v5 < v7)
      {
        goto LABEL_121;
      }

      if (v7 < v5)
      {
        if (v4 >= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v4;
        }

        v16 = 24 * v15 - 8;
        v17 = v5;
        v18 = v7;
        do
        {
          if (v18 != --v17)
          {
            v19 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v20 = (v19 + v9);
            v21 = (v19 + v16);
            v22 = *v20;
            v23 = v20[2];
            v24 = v20[1];
            v25 = *v21;
            *v20 = *(v21 - 1);
            v20[2] = v25;
            *(v21 - 2) = v22;
            *(v21 - 1) = v24;
            *v21 = v23;
          }

          ++v18;
          v16 -= 24;
          v9 += 24;
        }

        while (v18 < v17);
      }
    }

LABEL_20:
    v26 = a3[1];
    if (v5 < v26)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_120;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_37:
    if (v5 < v7)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C97E510C(0, *(v6 + 2) + 1, 1, v6);
      v6 = v82;
    }

    v41 = *(v6 + 2);
    v40 = *(v6 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      sub_1C97E510C(v40 > 1, v41 + 1, 1, v6);
      v6 = v83;
    }

    *(v6 + 2) = v42;
    v43 = v6 + 32;
    v44 = &v6[16 * v41 + 32];
    *v44 = v7;
    *(v44 + 1) = v5;
    v94 = *result;
    if (!*result)
    {
      goto LABEL_129;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        v46 = &v43[16 * v42 - 16];
        v47 = &v6[16 * v42];
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v48 = *(v6 + 4);
          v49 = *(v6 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_57:
          if (v51)
          {
            goto LABEL_106;
          }

          v63 = *v47;
          v62 = *(v47 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_109;
          }

          v67 = *(v46 + 1);
          v68 = v67 - *v46;
          if (__OFSUB__(v67, *v46))
          {
            goto LABEL_112;
          }

          if (__OFADD__(v65, v68))
          {
            goto LABEL_114;
          }

          if (v65 + v68 >= v50)
          {
            if (v50 < v68)
            {
              v45 = v42 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v42 < 2)
        {
          goto LABEL_108;
        }

        v70 = *v47;
        v69 = *(v47 + 1);
        v58 = __OFSUB__(v69, v70);
        v65 = v69 - v70;
        v66 = v58;
LABEL_72:
        if (v66)
        {
          goto LABEL_111;
        }

        v72 = *v46;
        v71 = *(v46 + 1);
        v58 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v73 < v65)
        {
          goto LABEL_86;
        }

LABEL_79:
        if (v45 - 1 >= v42)
        {
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
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v77 = v6;
        v78 = &v43[16 * v45 - 16];
        v79 = *v78;
        v6 = &v43[16 * v45];
        v80 = *(v6 + 1);
        sub_1C97C778C((*a3 + 24 * *v78), (*a3 + 24 * *v6), *a3 + 24 * v80, v94);
        if (v96)
        {
          goto LABEL_99;
        }

        if (v80 < v79)
        {
          goto LABEL_101;
        }

        v81 = *(v77 + 2);
        if (v45 > v81)
        {
          goto LABEL_102;
        }

        *v78 = v79;
        *(v78 + 1) = v80;
        if (v45 >= v81)
        {
          goto LABEL_103;
        }

        v96 = 0;
        v42 = v81 - 1;
        sub_1C984A028(v6 + 16, v81 - 1 - v45, &v43[16 * v45]);
        v6 = v77;
        *(v77 + 2) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_86;
        }
      }

      v52 = &v43[16 * v42];
      v53 = *(v52 - 8);
      v54 = *(v52 - 7);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_104;
      }

      v57 = *(v52 - 6);
      v56 = *(v52 - 5);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_105;
      }

      v59 = *(v47 + 1);
      v60 = v59 - *v47;
      if (__OFSUB__(v59, *v47))
      {
        goto LABEL_107;
      }

      v58 = __OFADD__(v50, v60);
      v61 = v50 + v60;
      if (v58)
      {
        goto LABEL_110;
      }

      if (v61 >= v55)
      {
        v75 = *v46;
        v74 = *(v46 + 1);
        v58 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v50 < v76)
        {
          v45 = v42 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_86:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_89;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_122;
  }

  if (v7 + a4 >= v26)
  {
    v27 = a3[1];
  }

  else
  {
    v27 = v7 + a4;
  }

  if (v27 < v7)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v5 == v27)
  {
    goto LABEL_37;
  }

  v94 = v6;
  v28 = *a3;
  v29 = *a3 + 24 * v5 - 24;
  v91 = v7;
  v30 = v7 - v5;
LABEL_30:
  v31 = v27;
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if ((sub_1C9A93108() & 1) == 0)
    {
LABEL_35:
      ++v5;
      v29 += 24;
      --v30;
      v27 = v31;
      if (v5 == v31)
      {
        v5 = v31;
        v7 = v91;
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    if (!v28)
    {
      break;
    }

    v35 = *(v33 + 32);
    v34 = *(v33 + 36);
    v36 = *(v33 + 40);
    v38 = *(v33 + 16);
    v37 = *(v33 + 24);
    *(v33 + 24) = *v33;
    *(v33 + 40) = v38;
    *v33 = v37;
    *(v33 + 8) = v35;
    *(v33 + 12) = v34;
    *(v33 + 16) = v36;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_35;
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
}

uint64_t sub_1C97C778C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C979AFE4(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if ((sub_1C9A93108() & 1) == 0)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1C979AFE4(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = sub_1C9A93108();
    v18 = (v5 + 24);
    if (v17)
    {
      v13 = v18 == v6;
      v6 -= 24;
      if (!v13)
      {
        v20 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v20;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v18)
    {
      v19 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v19;
    }

    v10 -= 24;
  }

LABEL_28:
  v21 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

void sub_1C97C7940(uint64_t a1, uint64_t a2)
{
  sub_1C97C91C8();
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    v64 = a2 + 32;
    v63 = v3;
    do
    {
      v7 = v6 + 56 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v13 = *(v7 + 32);
      v12 = *(v7 + 40);
      v14 = *(v7 + 48);
      switch(v11 >> 28)
      {
        case 1u:
          sub_1C97C91E8();

          sub_1C984AA08(v2, v9);
          goto LABEL_15;
        case 2u:
          sub_1C97C91E8();

          sub_1C9A92528();
          sub_1C984AA08(v2, 56);
          sub_1C9A93CE8();
          goto LABEL_15;
        case 3u:
        case 4u:
          sub_1C97C91E8();

          sub_1C9A92528();
LABEL_15:
          v25 = v9;
          v26 = v8;
          v27 = 56;
          v28 = v11;
          v6 = v64;
          v3 = v63;
          goto LABEL_16;
        case 5u:
          MEMORY[0x1CCA91980](10);
          MEMORY[0x1CCA91980](v9);
          v29 = v8;
          goto LABEL_42;
        case 6u:
          MEMORY[0x1CCA91980](13);
          v30 = *(v9 + 16);
          MEMORY[0x1CCA91980](v30);
          if (v30)
          {

            v31 = v9 + 40;
            do
            {

              sub_1C9A92528();

              v31 += 16;
              --v30;
            }

            while (v30);
            v32 = sub_1C97C9160();
            sub_1C97C8FE4(v32, v33, v34, v35);
          }

          break;
        case 7u:
          MEMORY[0x1CCA91980](14);
          v19 = *(v9 + 16);
          MEMORY[0x1CCA91980](v19);
          if (v19)
          {

            v20 = (v9 + 56);
            do
            {
              v21 = *(v20 - 1);
              v23 = *v20;
              v20 += 4;
              v22 = v23;

              sub_1C9A92528();
              if (v21 == 0.0)
              {
                v24 = 0.0;
              }

              else
              {
                v24 = v21;
              }

              MEMORY[0x1CCA919B0](*&v24);
              MEMORY[0x1CCA91980](*&v22);

              --v19;
            }

            while (v19);
          }

          else
          {
          }

          MEMORY[0x1CCA91980](v8);
          v44 = sub_1C97C9160();
          sub_1C97C8FE4(v44, v45, v46, v47);
          v6 = v64;
          break;
        case 8u:
          v36 = v10 | v8;
          v37 = v10 | v8 | v9 | v13 | v12;
          if (v14)
          {
            v38 = 0;
          }

          else
          {
            v38 = v11 == 0x80000000;
          }

          if (v38 && v37 == 0)
          {
            v29 = 0;
          }

          else
          {
            v40 = v36 | v13 | v12;
            if (v14)
            {
              v41 = 0;
            }

            else
            {
              v41 = v11 == 0x80000000;
            }

            if (v41 && v9 == 1 && v40 == 0)
            {
              v29 = 1;
            }

            else
            {
              if (v14)
              {
                v50 = 0;
              }

              else
              {
                v50 = v11 == 0x80000000;
              }

              if (v50 && v9 == 2 && v40 == 0)
              {
                v29 = 3;
              }

              else
              {
                if (v14)
                {
                  v53 = 0;
                }

                else
                {
                  v53 = v11 == 0x80000000;
                }

                if (v53 && v9 == 3 && v40 == 0)
                {
                  v29 = 4;
                }

                else
                {
                  if (v14)
                  {
                    v56 = 0;
                  }

                  else
                  {
                    v56 = v11 == 0x80000000;
                  }

                  if (v56 && v9 == 4 && v40 == 0)
                  {
                    v29 = 5;
                  }

                  else if (v14 || (v11 == 0x80000000 ? (v59 = v9 == 5) : (v59 = 0), !v59 || v40))
                  {
                    v29 = 12;
                  }

                  else
                  {
                    v29 = 11;
                  }
                }
              }
            }
          }

LABEL_42:
          MEMORY[0x1CCA91980](v29);
          break;
        default:
          v60 = HIDWORD(v10);
          v61 = HIDWORD(v12);
          v62 = HIDWORD(v13);
          v15 = *(v7 + 40);
          v16 = *(v7 + 32);
          v17 = *(v7 + 16);
          MEMORY[0x1CCA91980](2);
          *&v65[13] = v9;
          *&v65[15] = v8;
          v65[17] = v17;
          v65[18] = v60;
          v66 = v11 & 1;
          v67 = HIDWORD(v11);
          v68 = v16;
          v69 = v62;
          v70 = v15;
          v71 = v61;
          v72 = v14;
          sub_1C99F495C();
          v48 = *(v18 + 16);
          if (v48)
          {
            v49 = v18 + 32;
            v3 = v63;
            v6 = v64;
            do
            {
              sub_1C97C9078(v49, v65);
              sub_1C9A93538();
              sub_1C97C90D4(v65);
              v49 += 40;
              --v48;
            }

            while (v48);
          }

          else
          {

            v3 = v63;
            v6 = v64;
          }

          v25 = sub_1C97C9160();
LABEL_16:
          sub_1C97C8FE4(v25, v26, v27, v28);
          break;
      }

      ++v5;
    }

    while (v5 != v3);
  }
}

void sub_1C97C7EF4()
{
  sub_1C97C9140();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      sub_1C97C9208();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_1C97C7F50()
{
  sub_1C97C9140();
  if (v0)
  {
    v2 = (v1 + 56);
    do
    {
      v3 = *(v2 - 1);
      v5 = *v2;
      v2 += 4;
      v4 = v5;

      sub_1C97C9208();
      if (v3 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = v3;
      }

      MEMORY[0x1CCA919B0](*&v6);
      MEMORY[0x1CCA91980](*&v4);

      --v0;
    }

    while (v0);
  }
}

void sub_1C97C7FD4()
{
  sub_1C97C9140();
  if (v0)
  {
    v2 = 0;
    v3 = v1 + 32;
    do
    {
      v4 = *(v3 + 8 * v2);
      MEMORY[0x1CCA91980](*(v4 + 16));
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = (v4 + 32);
        do
        {
          v7 = *v6++;
          MEMORY[0x1CCA91980](v7);
          --v5;
        }

        while (v5);
      }

      ++v2;
    }

    while (v2 != v0);
  }
}

void sub_1C97C8044()
{
  sub_1C97C9140();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x1CCA91980](v3);
      --v0;
    }

    while (v0);
  }
}

void sub_1C97C8084()
{
  sub_1C97C9140();
  if (v0)
  {
    v2 = (v1 + 40);
    do
    {
      v3 = *v2;
      MEMORY[0x1CCA91980](*(v2 - 1));
      MEMORY[0x1CCA91980](v3);
      v2 += 2;
      --v0;
    }

    while (v0);
  }
}

void sub_1C97C80D0()
{
  sub_1C97C9140();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      v2 += 4;
      sub_1C9A93CF8();
      --v0;
    }

    while (v0);
  }
}

void sub_1C97C8128(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CLAP.DetectorAudioFile(0);
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97C9198();
  if (v3)
  {
    sub_1C97C9224();
    v8 = *(v6 + 72);
    do
    {
      sub_1C97C8974(a2, v2, type metadata accessor for CLAP.DetectorAudioFile);
      sub_1C9A91558();
      sub_1C97C88D8();
      sub_1C9A92398();
      sub_1C9A92528();
      sub_1C97C89DC(v2, type metadata accessor for CLAP.DetectorAudioFile);
      a2 += v8;
      --v3;
    }

    while (v3);
  }

  sub_1C97BE478();
}

void sub_1C97C8244()
{
  sub_1C97C9140();
  if (v0)
  {
    v2 = v1 + 56;
    do
    {

      sub_1C97C9208();
      sub_1C9A92528();

      v2 += 32;
      --v0;
    }

    while (v0);
  }
}

void sub_1C97C82CC(uint64_t a1, uint64_t a2)
{
  sub_1C97C91C8();
  if (v2)
  {
    v4 = *(sub_1C9A91558() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    sub_1C97C88D8();
    do
    {
      sub_1C9A92398();
      v5 += v6;
      --v2;
    }

    while (v2);
  }
}

void sub_1C97C8388()
{
  sub_1C97C9140();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x1CCA91980](v3);
      --v0;
    }

    while (v0);
  }
}

void sub_1C97C83C8(uint64_t a1, uint64_t a2)
{
  sub_1C97C91C8();
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1C97C926C();
      sub_1C9A931F8();

      --v3;
    }

    while (v3);
  }
}

void sub_1C97C8418(uint64_t a1, uint64_t a2)
{
  type metadata accessor for KShotSegment(0);
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97C9198();
  if (v3)
  {
    sub_1C97C9224();
    v10 = *(v6 + 72);
    do
    {
      sub_1C97C8974(a2, v2, type metadata accessor for KShotSegment);
      v8 = v2[2];
      v9 = v2[3];
      v11 = v2[5];
      MEMORY[0x1CCA919B0](*v2);
      sub_1C9A93CF8();
      sub_1C9A93CF8();
      MEMORY[0x1CCA919B0](v8);
      MEMORY[0x1CCA919B0](v9);
      sub_1C9A93CF8();
      sub_1C9A93CF8();
      MEMORY[0x1CCA919B0](v11);
      sub_1C9A91558();
      sub_1C97C88D8();
      sub_1C9A92398();
      sub_1C97C89DC(v2, type metadata accessor for KShotSegment);
      a2 += v10;
      --v3;
    }

    while (v3);
  }

  sub_1C97BE478();
}

void sub_1C97C8590()
{
  sub_1C97C9140();
  if (v0)
  {
    v2 = (v1 + 48);
    do
    {
      v3 = *(v2 - 2);
      v4 = *v2;
      v2 += 3;
      MEMORY[0x1CCA919B0](v3);
      sub_1C9A93CF8();
      sub_1C9A93CF8();
      MEMORY[0x1CCA919B0](v4);
      --v0;
    }

    while (v0);
  }
}

__n128 sub_1C97C8640(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C97C865C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
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

uint64_t sub_1C97C869C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C97C8710()
{
  result = qword_1EC3C6EF8;
  if (!qword_1EC3C6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6EF8);
  }

  return result;
}

unint64_t sub_1C97C8764()
{
  result = qword_1EC3C6F18;
  if (!qword_1EC3C6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6F18);
  }

  return result;
}

unint64_t sub_1C97C87B8()
{
  result = qword_1EC3C6F28;
  if (!qword_1EC3C6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6F28);
  }

  return result;
}

unint64_t sub_1C97C880C()
{
  result = qword_1EC3C6F38;
  if (!qword_1EC3C6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6F38);
  }

  return result;
}

uint64_t sub_1C97C8860(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C6F40, &qword_1C9A9E810);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C97C88D8()
{
  result = qword_1EC3C6BA0;
  if (!qword_1EC3C6BA0)
  {
    sub_1C9A91558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6BA0);
  }

  return result;
}

unint64_t sub_1C97C8930(double a1)
{
  result = qword_1EC3C5690;
  if (!qword_1EC3C5690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C5690);
  }

  return result;
}

uint64_t sub_1C97C8974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C97C89DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C97C8A3C()
{
  sub_1C97C9140();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      v4 = v3;
      if (v3 == 0.0)
      {
        v4 = 0.0;
      }

      MEMORY[0x1CCA919B0](*&v4);
      --v0;
    }

    while (v0);
  }
}

void sub_1C97C8A94()
{
  sub_1C97C9140();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      v2 += 4;
      sub_1C9A93CF8();
      --v0;
    }

    while (v0);
  }
}

void sub_1C97C8AD4()
{
  sub_1C97C9140();
  if (v0)
  {
    v2 = v1 + 36;
    do
    {
      v2 += 8;
      sub_1C9A93CF8();
      sub_1C9A93CF8();
      --v0;
    }

    while (v0);
  }
}

_BYTE *storeEnumTagSinglePayload for TimeDurationConstraint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C97C8C20(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C97C8CD0()
{
  result = qword_1EC3C6F88;
  if (!qword_1EC3C6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6F88);
  }

  return result;
}

unint64_t sub_1C97C8D28()
{
  result = qword_1EC3C6F90;
  if (!qword_1EC3C6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6F90);
  }

  return result;
}

unint64_t sub_1C97C8D80()
{
  result = qword_1EC3C6F98;
  if (!qword_1EC3C6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6F98);
  }

  return result;
}

unint64_t sub_1C97C8DD8()
{
  result = qword_1EC3C6FA0;
  if (!qword_1EC3C6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6FA0);
  }

  return result;
}

unint64_t sub_1C97C8E30()
{
  result = qword_1EC3C6FA8;
  if (!qword_1EC3C6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6FA8);
  }

  return result;
}

unint64_t sub_1C97C8E88()
{
  result = qword_1EC3C6FB0;
  if (!qword_1EC3C6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6FB0);
  }

  return result;
}

unint64_t sub_1C97C8EE0()
{
  result = qword_1EC3C6FB8;
  if (!qword_1EC3C6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6FB8);
  }

  return result;
}

unint64_t sub_1C97C8F38()
{
  result = qword_1EC3C6FC0;
  if (!qword_1EC3C6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6FC0);
  }

  return result;
}

unint64_t sub_1C97C8F90()
{
  result = qword_1EC3C6FC8;
  if (!qword_1EC3C6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6FC8);
  }

  return result;
}

uint64_t sub_1C97C8FE4(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  switch(a4 >> 28)
  {
    case 1u:
    case 6u:
    case 7u:

      goto LABEL_4;
    case 2u:

      goto LABEL_4;
    case 3u:
    case 4u:

LABEL_4:

      break;
    default:
      return v5;
  }

  return v5;
}

void sub_1C97C9140()
{

  JUMPOUT(0x1CCA91980);
}

void sub_1C97C9198()
{

  JUMPOUT(0x1CCA91980);
}

void sub_1C97C91C8()
{

  JUMPOUT(0x1CCA91980);
}

void sub_1C97C91E8()
{

  JUMPOUT(0x1CCA91980);
}

uint64_t sub_1C97C9208()
{

  return sub_1C9A92528();
}

uint64_t sub_1C97C9278(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

void sub_1C97C9298()
{

  JUMPOUT(0x1CCA91980);
}

uint64_t sub_1C97C92B8(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

void sub_1C97C92D8()
{

  JUMPOUT(0x1CCA91980);
}

double SNNullResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNNullResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

BOOL sub_1C97C9328(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = a1[2];
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = a2[2];
  return static TimeRange.== infix(_:_:)(v6, v5);
}

uint64_t sub_1C97C9374(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C97C9410(void *a1)
{
  v2 = v1;
  v4 = sub_1C97A2CEC(&unk_1EC3C6FF8, &qword_1C9A9ECB0);
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C97CA400();
  sub_1C9A93DD8();
  v10 = v2[1];
  v12[0] = *v2;
  v12[1] = v10;
  v12[2] = v2[2];
  sub_1C97BD12C();
  sub_1C9A93A18();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C97C9558()
{
  sub_1C97CA620();
  MEMORY[0x1CCA919B0]();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v0);
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  return MEMORY[0x1CCA919B0](v2);
}

uint64_t sub_1C97C95E0(uint64_t a1)
{
  v5 = *v1;
  sub_1C97CA620();
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](v5);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  return sub_1C9A93D18();
}

uint64_t sub_1C97C96A0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3C6FE0, &qword_1C9A9ECA8);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C97CA400();
  sub_1C9A93DB8();
  if (!v2)
  {
    sub_1C97BD0D8();
    sub_1C9A938F8();
    (*(v7 + 8))(v10, v5);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
    a2[2] = v13[2];
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C97C9810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97C9374(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C97C983C(uint64_t a1)
{
  v2 = sub_1C97CA400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97C9878(uint64_t a1)
{
  v2 = sub_1C97CA400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97C98BC()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  return sub_1C9A93D18();
}

double SNNullResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNNullResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNNullResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNNullResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double sub_1C97C9AA4@<D0>(_OWORD *a1@<X8>)
{
  SNNullResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNNullResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNNullResult.timeRange.getter((v3 + 1));
  return sub_1C97C9B4C;
}

void sub_1C97C9B4C(void **a1)
{
  v1 = *a1;
  SNNullResult.timeRange.setter(*a1 + 8);

  free(v1);
}

id sub_1C97C9B8C()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E6960C98];
  v3 = *(MEMORY[0x1E6960C98] + 40);
  v4 = &v0[OBJC_IVAR___SNNullResult_impl];
  *v4 = *MEMORY[0x1E6960C98];
  *(v4 + 1) = *(v2 + 8);
  *(v4 + 1) = *(v2 + 16);
  *(v4 + 4) = *(v2 + 32);
  *(v4 + 5) = v3;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

void *SNNullResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C97CA608(OBJC_IVAR___SNNullResult_impl);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNNullResult_impl];
  v6 = v8[2];
  *v5 = v8[1];
  v5[1] = v6;
  v5[2] = v8[3];
  v8[0].receiver = v4;
  v8[0].super_class = ObjectType;
  result = [(objc_super *)v8 init];
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNNullResult.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNNullResult_impl);
  v2 = *(v0 + OBJC_IVAR___SNNullResult_impl + 16);
  v3 = *(v0 + OBJC_IVAR___SNNullResult_impl + 24);
  v4 = *(v0 + OBJC_IVAR___SNNullResult_impl + 40);
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  return sub_1C9A93D18();
}

uint64_t SNNullResult.isEqual(_:)(uint64_t a1)
{
  sub_1C97A2C7C(a1, &v5);
  if (v6)
  {
    sub_1C97A2D34(&v5, v4);
    v2 = sub_1C98598E0(v4, v1);
    sub_1C97A592C(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id SNNullResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A14BC(a1, v10);
  v3 = objc_allocWithZone(ObjectType);
  v4 = &v3[OBJC_IVAR___SNNullResult_impl];
  v5 = v10[1];
  *v4 = v10[0];
  v4[1] = v5;
  v4[2] = v10[2];
  v9.receiver = v3;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, sel_init);

  v7 = swift_getObjectType();
  sub_1C97CA634(v7);
  return v6;
}

uint64_t SNNullResult.description.getter()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v13, sel_description);
  v2 = sub_1C9A924A8();
  v4 = v3;

  v14 = v2;
  v15 = v4;
  MEMORY[0x1CCA90230](0x203A656D6954203BLL, 0xE800000000000000);
  SNNullResult.timeRange.getter(v16);
  v5 = objc_opt_self();
  v12[0] = v16[0];
  v12[1] = v16[1];
  v12[2] = v16[2];
  v6 = [v5 valueWithCMTimeRange_];
  v7 = [v6 description];
  v8 = sub_1C9A924A8();
  v10 = v9;

  MEMORY[0x1CCA90230](v8, v10);

  return v14;
}

id SNNullResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C97CA2E4@<D0>(_OWORD *a1@<X8>)
{
  SNNullResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_1C97CA364(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C97CA378(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C97CA3AC()
{
  result = qword_1EC3C6FD8;
  if (!qword_1EC3C6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6FD8);
  }

  return result;
}

unint64_t sub_1C97CA400()
{
  result = qword_1EC3C6FE8;
  if (!qword_1EC3C6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6FE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NullResult.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C97CA504()
{
  result = qword_1EC3C7008;
  if (!qword_1EC3C7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7008);
  }

  return result;
}

unint64_t sub_1C97CA55C()
{
  result = qword_1EC3C7010;
  if (!qword_1EC3C7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7010);
  }

  return result;
}

unint64_t sub_1C97CA5B4()
{
  result = qword_1EC3C7018[0];
  if (!qword_1EC3C7018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3C7018);
  }

  return result;
}

uint64_t sub_1C97CA634(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

void static Tools.printModelInfo(url:)(uint64_t a1)
{
  v2 = sub_1C99B6778(a1);
  if (!v1)
  {
    v4 = v2;
    v5 = v3;
    if ((v3 & 0x8000000000000000) != 0)
    {
      sub_1C97A2CEC(&qword_1EC3C68F0, &qword_1C9AB28D0);
      v10 = swift_allocObject();
      v11 = MEMORY[0x1E69E6158];
      *(v10 + 16) = xmmword_1C9A9EDD0;
      *(v10 + 56) = v11;
      *(v10 + 32) = 0x6C65646F4D203545;
      *(v10 + 40) = 0xE800000000000000;

      sub_1C97CAFFC(v10);

      v12 = sub_1C97CB038();
      sub_1C97CB01C(v12, v13, v14, v15, v16, v17, v18, v19, v20, v185, v194, v203, v212, v221, v230, v239, v247, v256, v265, v21);
      v22[7] = v11;
      v22[4] = 10;
      v22[5] = 0xE100000000000000;
      sub_1C97CAFFC(v22);

      v23 = sub_1C97CB038();
      sub_1C97CB01C(v23, v24, v25, v26, v27, v28, v29, v30, v31, v186, v195, v204, v213, v222, v231, v240, v248, v257, v266, v32);
      *(v33 + 56) = v11;
      strcpy((v33 + 32), "Input names:");
      *(v33 + 45) = 0;
      *(v33 + 46) = -5120;
      sub_1C97CAFFC(v33);

      sub_1C987E9B0();
      v251 = v4;
      v260 = v5;
      v269 = 0;
      v243 = v34;
      v60 = *(v34 + 16);
      if (v60)
      {
        sub_1C97CB070();
        do
        {
          v61 = *(v5 - 1);
          v62 = *v5;
          v63 = sub_1C97CB038();
          sub_1C97CB02C(v63, v64, v65, v66, v67, v68, v69, v70, v71, v187, v196, v205, v214, v223, v232, v243, v251, v260, v269, v72);
          v276 = 0xE100000000000000;
          v277 = 10;

          MEMORY[0x1CCA90230](v61, v62);
          v11 = MEMORY[0x1E69E6158];

          MEMORY[0x1CCA90230](34, 0xE100000000000000);
          v63[3].n128_u64[1] = v11;
          v63[2].n128_u64[0] = 0xE100000000000000;
          v63[2].n128_u64[1] = 10;
          sub_1C97CAFFC(v63);

          v5 += 2;
          --v60;
        }

        while (v60);
      }

      v73 = sub_1C97CB038();
      sub_1C97CB01C(v73, v74, v75, v76, v77, v78, v79, v80, v81, v187, v196, v205, v214, v223, v232, v243, v251, v260, v269, v82);
      v83[7] = v11;
      v83[4] = 10;
      v83[5] = 0xE100000000000000;
      sub_1C97CAFFC(v83);

      v84 = sub_1C97CB038();
      sub_1C97CB01C(v84, v85, v86, v87, v88, v89, v90, v91, v92, v190, v199, v208, v217, v226, v235, v244, v252, v261, v270, v93);
      *(v94 + 56) = v11;
      strcpy((v94 + 32), "Output names:");
      *(v94 + 46) = -4864;
      sub_1C97CAFFC(v94);

      v95 = v262;
      sub_1C987EA14();
      if (v271)
      {
        sub_1C97CADF0(v253, v262);
      }

      else
      {
        v272 = 0;
        v245 = v96;
        v124 = *(v96 + 16);
        if (v124)
        {
          sub_1C97CB070();
          do
          {
            v125 = *(v5 - 1);
            v126 = *v5;
            v127 = sub_1C97CB038();
            sub_1C97CB02C(v127, v128, v129, v130, v131, v132, v133, v134, v135, v191, v200, v209, v218, v227, v236, v245, v253, v262, v272, v136);
            v276 = v95;
            v277 = 10;

            MEMORY[0x1CCA90230](v125, v126);
            v11 = MEMORY[0x1E69E6158];

            MEMORY[0x1CCA90230](34, 0xE100000000000000);
            v127[3].n128_u64[1] = v11;
            v127[2].n128_u64[0] = v95;
            v127[2].n128_u64[1] = 10;
            sub_1C97CAFFC(v127);

            v5 += 2;
            --v124;
          }

          while (v124);
        }

        v137 = sub_1C97CB038();
        sub_1C97CB01C(v137, v138, v139, v140, v141, v142, v143, v144, v145, v191, v200, v209, v218, v227, v236, v245, v253, v262, v272, v146);
        v147[7] = v11;
        v147[4] = 10;
        v147[5] = 0xE100000000000000;
        sub_1C97CAFFC(v147);
        sub_1C97CADF0(v254, v263);
      }
    }

    else
    {
      v6 = objc_allocWithZone(SNClassifySoundRequest);
      v7 = sub_1C97CB088();
      sub_1C97CAF04(v7, v8);
      v35 = sub_1C97CAE3C(v4);
      sub_1C97A2CEC(&qword_1EC3C68F0, &qword_1C9AB28D0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1C9A9EDD0;
      v37 = MEMORY[0x1E69E6158];
      *(v36 + 56) = MEMORY[0x1E69E6158];
      *(v36 + 32) = 0xD00000000000001CLL;
      *(v36 + 40) = 0x80000001C9AD48C0;
      sub_1C97CAFFC(v36);

      SNClassifySoundRequest.windowDurationConstraint.getter(&v276);
      if (v282)
      {
        v283 = v276;
        v284 = v277;
        v285 = v278;
        v286 = v279;
        v287 = v280;
        v288 = v281;
        v38 = sub_1C97CB054();
        sub_1C97CB01C(v38, v39, v40, v41, v42, v43, v44, v45, v46, v185, v194, v203, v212, v221, v230, v35, v4, v5, 0, v47);
        v48[7] = v37;
        v48[4] = 0xD00000000000001ELL;
        v48[5] = 0x80000001C9AD48E0;
        sub_1C97CAFFC(v48);

        v49 = sub_1C97CB054();
        sub_1C97CB02C(v49, v50, v51, v52, v53, v54, v55, v56, v57, v188, v197, v206, v215, v224, v233, v241, v249, v258, v267, v58);
        v59 = sub_1C985943C();
        MEMORY[0x1CCA90230](v59);

        MEMORY[0x1CCA90230](10, 0xE100000000000000);
        v49[3].n128_u64[1] = v37;
        v49[2].n128_u64[0] = 538976288;
        v49[2].n128_u64[1] = 0xE400000000000000;
        sub_1C97CAFFC(v49);
      }

      else
      {
        v192 = v277;
        v201 = v278;
        v210 = v279;
        v219 = v280;
        v228 = v281;
        v237 = v276;
        v97 = sub_1C97CB054();
        sub_1C97CB01C(v97, v98, v99, v100, v101, v102, v103, v104, v105, v192, v201, v210, v219, v228, v237, v35, v4, v5, 0, v106);
        v107[7] = v37;
        v107[4] = 0xD00000000000001FLL;
        v107[5] = 0x80000001C9AD4900;
        sub_1C97CAFFC(v107);

        v108 = *(v234 + 16);
        if (v108)
        {
          v109 = (v234 + 40);
          do
          {
            v110 = *(v109 - 1);
            v111 = *v109;
            v109 += 6;
            v112 = sub_1C97CB054();
            sub_1C97CB02C(v112, v113, v114, v115, v116, v117, v118, v119, v120, v189, v198, v207, v216, v225, v234, v242, v250, v259, v268, v121);
            v289 = v110;
            v274 = sub_1C9A93A98();
            v275 = v122;
            MEMORY[0x1CCA90230](47, 0xE100000000000000);
            LODWORD(v289) = v111;
            v123 = sub_1C9A93A98();
            MEMORY[0x1CCA90230](v123);

            MEMORY[0x1CCA90230](v274, v275);

            MEMORY[0x1CCA90230](10, 0xE100000000000000);
            v112[3].n128_u64[1] = MEMORY[0x1E69E6158];
            v112[2].n128_u64[0] = 538976288;
            v112[2].n128_u64[1] = 0xE400000000000000;
            sub_1C97CAFFC(v112);

            --v108;
          }

          while (v108);
          sub_1C97A6390(v234, v189, v198, v207, v216, v225, 0);
          v35 = v242;
          v37 = MEMORY[0x1E69E6158];
        }

        else
        {
          sub_1C97A6390(v234, v189, v198, v207, v216, v225, 0);
        }
      }

      v148 = sub_1C97CB054();
      sub_1C97CB01C(v148, v149, v150, v151, v152, v153, v154, v155, v156, v189, v198, v207, v216, v225, v234, v242, v250, v259, v268, v157);
      v158[7] = v37;
      v158[4] = 0xA3A736C6562614CLL;
      v158[5] = 0xE800000000000000;
      sub_1C97CAFFC(v158);

      v159 = [v35 knownClassifications];
      v160 = sub_1C9A92798();

      v161 = *(v160 + 16);
      if (v161)
      {
        v238 = v160;
        v162 = (v160 + 40);
        do
        {
          v163 = v37;
          v164 = *(v162 - 1);
          v165 = *v162;
          v166 = swift_allocObject();
          sub_1C97CB02C(v166, v167, v168, v169, v170, v171, v172, v173, v174, v193, v202, v211, v220, v229, v238, v246, v255, v264, v273, v175);
          v276 = 2236461;
          v277 = 0xE300000000000000;

          MEMORY[0x1CCA90230](v164, v165);
          v37 = v163;

          MEMORY[0x1CCA90230](2594, 0xE200000000000000);
          v176 = v276;
          v177 = v277;
          v166[3].n128_u64[1] = v163;
          v166[2].n128_u64[0] = v176;
          v166[2].n128_u64[1] = v177;
          sub_1C97CAFFC(v166);

          v162 += 2;
          --v161;
        }

        while (v161);

        v178 = sub_1C97CB094();
        sub_1C97CADF0(v178, v179);
        v180 = sub_1C97CB094();
        sub_1C97CADF0(v180, v181);
      }

      else
      {

        v182 = sub_1C97CB094();
        sub_1C97CADF0(v182, v183);
        v184 = sub_1C97CB094();
        sub_1C97CADF0(v184, v9);
      }
    }
  }
}