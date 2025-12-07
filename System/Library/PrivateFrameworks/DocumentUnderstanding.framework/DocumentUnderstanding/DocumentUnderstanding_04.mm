void *sub_232B64944(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_232B66B0C(a1, a2, a3, a4, a5);
  result = memcpy((v8 + 88 * v7), v9, 0x58uLL);
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

_OWORD *sub_232B64990(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_232B66B0C(a1, a2, a3, a4, a5);
  result = sub_232B20510(v9, (v8 + 32 * v7));
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

void *sub_232B649D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B64CE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64A9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B64EF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64ABC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B65000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64ADC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B65110(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64B40(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B65310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64B60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B65420(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64BC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B65524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64C28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B657C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64C48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B658D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64C68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B659E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64C88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B65AF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64CA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B65C00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64CC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B65D10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64CE8(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_232B124A8(&qword_27DDC7290, &qword_232CF8930);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_232B377C4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC7298, &qword_232CF8938);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_232B64E00(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  sub_232B37A48();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      *(v11 + 16) = v9;
      *(v11 + 24) = 2 * ((v12 - 32) / 16);
      if (a1)
      {
LABEL_12:
        sub_232B377A4((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    sub_232B37A38();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_232B64EF0(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_232B124A8(&qword_27DDC72A0, &unk_232CF8940);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC6700, &qword_232CF5D48);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B65000(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_232B124A8(&qword_27DDC72A8, &qword_232CF8950);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC72B0, &qword_232CF8958);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B65110(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_232B124A8(&qword_27DDC6B58, &unk_232CF6EE0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC6B60, &qword_232CF8970);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_232B65220(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_232B37A48();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_232B124A8(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 4);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 4 * v13);
    goto LABEL_15;
  }

  if (v10 + 0x4000000000000000 >= 0)
  {
    sub_232B37A38();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_232B65310(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_232B124A8(&qword_27DDC72E8, &qword_232CF89C0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_232B377A4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC72F0, &qword_232CF89C8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B65420(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_232B124A8(&qword_27DDC72D0, &unk_232CF8990);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_232B378F8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B65524(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_232B124A8(&qword_27DDC72D8, &qword_232CF89A8);
  v10 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_232B37918(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_232B656D8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_232B37A48();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_232B124A8(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  if (v10 + 0x4000000000000000 >= 0)
  {
    sub_232B37A38();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_232B657C8(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_232B124A8(&qword_27DDC6B38, &qword_232CF6EC0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC6B40, &qword_232CF6EC8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B658D8(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_232B124A8(&qword_27DDC7270, &qword_232CF88F0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC7278, qword_232CF88F8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B659E8(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_232B124A8(&qword_27DDC6B08, &unk_232CF6E90);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC6B10, &unk_232CF8910);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B65AF8(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_232B124A8(&qword_27DDC6BC0, &qword_232CF6F50);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_232B379F8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B65C00(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_232B124A8(&qword_27DDC6C50, &unk_232CF6FE0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC6C58, &qword_232CF89A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B65D10(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_232B124A8(&qword_27DDC72C0, &unk_232CF8980);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC72C8, &qword_232CFF860);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_232B65E20(uint64_t a1, char a2, void *a3)
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
      sub_232CEA7A0();
      __break(1u);
      goto LABEL_22;
    }

    sub_232B2036C(i, &v30, &qword_27DDC6C48, &qword_232CF89E0);
    v8 = v30;
    v7 = v31;
    v28 = v30;
    v29 = v31;
    sub_232B0D220(v32, v27);
    v9 = *a3;
    v11 = sub_232B1F160(v8, v7);
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
      sub_232B124A8(&qword_27DDC7318, &qword_232CF89E8);
      sub_232CEA5D0();
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
    sub_232B0D220(v27, v18[7] + 40 * v11);
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

  sub_232B63F94(v14, a2 & 1);
  v16 = sub_232B1F160(v8, v7);
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
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_232B2040C(v27);

    return;
  }

LABEL_22:
  sub_232CEA4F0();
  MEMORY[0x238391C30](0xD00000000000001BLL, 0x8000000232D04EB0);
  sub_232CEA5B0();
  MEMORY[0x238391C30](39, 0xE100000000000000);
  sub_232CEA5F0();
  __break(1u);
}

void sub_232B6613C(uint64_t a1, char a2, void *a3)
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
      sub_232CEA7A0();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_232B1F160(v7, v6);
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
      sub_232B124A8(&qword_27DDC7288, &unk_232CF8920);
      sub_232CEA5D0();
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

  sub_232B64268(v14, a2 & 1, &qword_27DDC7280, &unk_232CFAAD0);
  v16 = sub_232B1F160(v7, v6);
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
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_232CEA4F0();
  MEMORY[0x238391C30](0xD00000000000001BLL, 0x8000000232D04EB0);
  sub_232CEA5B0();
  MEMORY[0x238391C30](39, 0xE100000000000000);
  sub_232CEA5F0();
  __break(1u);
}

void sub_232B66430(uint64_t a1, char a2, void *a3)
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
      sub_232CEA7A0();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 1);
    v7 = *i;
    v9 = *a3;
    v10 = sub_232B20520(v8);
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
      sub_232B124A8(&qword_27DDC67A8, &qword_232CF5E08);
      sub_232CEA5D0();
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

  sub_232B64504(v14, a2 & 1);
  v18 = sub_232B20520(v8);
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
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_232CEA4F0();
  MEMORY[0x238391C30](0xD00000000000001BLL, 0x8000000232D04EB0);
  sub_232CEA5B0();
  MEMORY[0x238391C30](39, 0xE100000000000000);
  sub_232CEA5F0();
  __break(1u);
}

uint64_t sub_232B66734(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  v4 = sub_232B2080C();
  v5(v4);
  return a2;
}

uint64_t sub_232B66790(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_232B667E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B66A10(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232B66A58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  v4 = sub_232B2080C();
  v5(v4);
  return a2;
}

unint64_t sub_232B66B0C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

double sub_232B66BF0()
{

  return result;
}

uint64_t sub_232B66C14(uint64_t a1, uint64_t a2)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_232B66C40(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v121 = a3;
  v134 = *MEMORY[0x277D85DE8];
  v119 = sub_232CE89D0();
  MEMORY[0x28223BE20](v119);
  v118 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 + 16);
  if (v11)
  {
    v12 = a5 + 32;
    v117[0] = v9 + 8;

    v13 = 0;
    v120 = 0;
    v123 = a4;
    v124 = v11;
    v122 = a5 + 32;
    v14 = a2;
    while (1)
    {
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = a1;
      }

      v117[1] = (v15 << 16) | 7;
      v16 = v13;
      v127 = v14;
LABEL_6:
      if (v16 >= v11)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v17 = a1;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_115;
      }

      switch(*(v12 + v16))
      {
        case 1:
          if (!v14)
          {
            return 0;
          }

          if (a4)
          {
            v125 = v16 + 1;
            v132 = sub_232CE9DD0();
            v133 = v109;
            v130 = sub_232CE9DD0();
            v131 = v110;
            sub_232B48080();
            v111 = sub_232CEA3F0();

            if (v111)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v14)
          {
            return 0;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v125 = v16 + 1;
          v19 = v118;
          sub_232CE89A0();
          v132 = sub_232CE9DD0();
          v133 = v20;
          sub_232B48080();
          v21 = sub_232CEA380();

          v132 = v21;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, MEMORY[0x277D83958]);
          v22 = sub_232CE9CD0();
          v24 = v23;

          v132 = sub_232CE9DD0();
          v133 = v25;
          v26 = sub_232CEA380();

          v132 = v26;
          v27 = sub_232CE9CD0();
          v29 = v28;

          v132 = v27;
          v133 = v29;
          v130 = v22;
          v131 = v24;
          LOBYTE(v27) = sub_232CEA3F0();
          (*v117[0])(v19, v119);

          if ((v27 & 1) == 0)
          {
            goto LABEL_109;
          }

          v11 = v124;
          v16 = v125;
          v30 = v125 == v124;
          v12 = v122;
          a4 = v123;
          goto LABEL_39;
        case 3:
          v125 = v16 + 1;
          a1 = v17;
          sub_232B714B8();
          if ((v56 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v14)
          {
            return v17;
          }

          v94 = v16 + 1;
          v95 = sub_232CE9D20();
          v96 = v14;
          v97 = v95;
          if ((v96 & 0x1000000000000000) != 0)
          {
            v98 = sub_232CE9F10();
          }

          else
          {
            v98 = sub_232CE9F20();
          }

          v99 = v98;
          v100 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v101 = [v100 scanString:v97 range:0 configuration:{v99, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v102 = sub_232CE9FE0();

          if (v102 >> 62)
          {
            v103 = sub_232CEA610();
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          v104 = 0;
          while (1)
          {
            if ((v102 & 0xC000000000000001) != 0)
            {
              v105 = MEMORY[0x2383922C0](v104, v102);
            }

            else
            {
              if (v104 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v105 = *(v102 + 8 * v104 + 32);
            }

            v106 = v105;
            v107 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v105 category] == 2)
            {
              v108 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v108)
              {
                break;
              }
            }

            ++v104;
            if (v107 == v103)
            {
              goto LABEL_31;
            }
          }

          v112 = v108;

          v113 = [v112 phoneNumber];
          a1 = sub_232CE9D50();
          v115 = v114;

          v14 = v115;
          a4 = v123;
          v11 = v124;
          v13 = v94;
          v12 = v122;
          if (v94 == v124)
          {
            return a1;
          }

          continue;
        case 5:
          if (!v14)
          {
            return 0;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v47 = sub_232B80670(v17, v14);
          v132 = 0;
          if (![v47 scanInteger_])
          {

            goto LABEL_109;
          }

          v48 = [v47 isAtEnd];

          if ((v48 & 1) == 0)
          {
            goto LABEL_109;
          }

          v16 = v18;
          v30 = v18 == v11;
LABEL_39:
          a1 = v17;
LABEL_40:
          v14 = v127;
          if (v30)
          {
            return a1;
          }

          goto LABEL_6;
        case 6:
          if (!v14)
          {
            return v17;
          }

          v49 = v16 + 1;
          sub_232B48080();
          v50 = 0;
          v51 = 0;
          do
          {
            v54 = (&unk_28480D370 + 16 * v51 + 32);
            v52 = *v54;
            v53 = v54[1];
            v55 = v50;
            v132 = v17;
            v133 = v14;
            v130 = v52;
            v131 = v53;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v50 = 1;
            v51 = 1;
            v14 = v127;
          }

          while ((v55 & 1) == 0);
          v16 = v49;
          a1 = v17;
          if (v49 == v11)
          {
            return a1;
          }

          goto LABEL_6;
        case 7:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v126 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v132 = 25180;
            v133 = 0xE200000000000000;

            v66 = sub_232CE9D20();

            v67 = [v63 escapedPatternForString_];

            v68 = sub_232CE9D50();
            v70 = v69;

            MEMORY[0x238391C30](v68, v70);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v71 = v132;
            v72 = v133;
            v73 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v74 = v72;
            v75 = v120;
            v76 = sub_232BA1978(v71, v74, 0);
            if (v75)
            {

              v120 = 0;
            }

            else
            {
              v77 = v76;
              v120 = 0;
              if (v76)
              {
                v130 = 15;
                v132 = v126;
                v133 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0, MEMORY[0x277D84338]);
                sub_232B48080();
                v78 = sub_232CEA320();
                v80 = v79;
                v81 = sub_232CE9D20();
                v42 = [v77 firstMatchInString:v81 options:0 range:{v78, v80}];

                if (v42)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 16;
            --v65;
          }

          while (v65);

          v12 = v122;
          a4 = v123;
LABEL_94:
          a1 = v17;
          goto LABEL_97;
        case 8:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v31 = sub_232CE9D20();
          v32 = v14;
          v33 = v31;
          if ((v32 & 0x1000000000000000) != 0)
          {
            v34 = sub_232CE9F10();
          }

          else
          {
            v34 = sub_232CE9F20();
          }

          v35 = v34;
          v36 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v37 = [v36 scanString:v33 range:0 configuration:{v35, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v38 = sub_232CE9FE0();

          if (v38 >> 62)
          {
            v39 = sub_232CEA610();
          }

          else
          {
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v17;
          if (!v39)
          {
            goto LABEL_34;
          }

          v40 = 0;
          v126 = v38 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x2383922C0](v40, v38);
            }

            else
            {
              if (v40 >= *(v126 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v41 = *(v38 + 8 * v40 + 32);
            }

            v42 = v41;
            v43 = v40 + 1;
            if (!__OFADD__(v40, 1))
            {
              [v41 urlificationRange];
              sub_232CEA110();
              if (v44)
              {
              }

              else
              {
                v45 = sub_232CE9FB0();
                MEMORY[0x238391B80](v45);

                if ([v42 category] == 4)
                {
                  v46 = sub_232B756EC(v42);

                  a1 = v17;
                  if (v46)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v17;
                }
              }

              ++v40;
              if (v43 == v39)
              {
LABEL_34:

                v11 = v124;
                v16 = v125;
                v30 = v125 == v124;
                v12 = v122;
                a4 = v123;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v125 = v16 + 1;
          a1 = v17;
          if (sub_232B72018(v17, v14, v121, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v14)
          {
            goto LABEL_97;
          }

          return a1;
        case 0xA:
          if (!v14)
          {
            return v17;
          }

          sub_232B486F4(v17, v14);
          v58 = v57;
          v14 = v59;

          v60 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v13 = v18;
          v30 = v18 == v11;
          a1 = v58;
          if (!v30)
          {
            continue;
          }

          return a1;
        default:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v132 = v17;
          v133 = v14;
          v82 = v118;
          sub_232CE89B0();
          sub_232B48080();
          v83 = sub_232CEA3A0();
          v85 = v84;
          (*v117[0])(v82, v119);
          v132 = v83;
          v133 = v85;
          v130 = 2847580;
          v131 = 0xE300000000000000;
          v128 = 32;
          v129 = 0xE100000000000000;
          v86 = sub_232CEA3B0();
          v88 = v87;

          v89 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v89 = v86 & 0xFFFFFFFFFFFFLL;
          }

          if (!v89)
          {
            goto LABEL_31;
          }

          v90 = sub_232C0D410(&unk_28480D2E0);
          v91 = sub_232CE9DD0();
          v93 = sub_232BA7F18(v91, v92, v90);
          a1 = v86;

          v127 = v88;
          if (v93)
          {
LABEL_109:

            return 0;
          }

LABEL_97:
          v11 = v124;
          v13 = v125;
          v14 = v127;
          if (v125 == v124)
          {
            return a1;
          }

          break;
      }
    }
  }

  return a1;
}

uint64_t sub_232B679D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v121 = a3;
  v134 = *MEMORY[0x277D85DE8];
  v119 = sub_232CE89D0();
  MEMORY[0x28223BE20](v119);
  v118 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 + 16);
  if (v11)
  {
    v12 = a5 + 32;
    v117[0] = v9 + 8;

    v13 = 0;
    v120 = 0;
    v123 = a4;
    v124 = v11;
    v122 = a5 + 32;
    v14 = a2;
    while (1)
    {
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = a1;
      }

      v117[1] = (v15 << 16) | 7;
      v16 = v13;
      v127 = v14;
LABEL_6:
      if (v16 >= v11)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v17 = a1;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_115;
      }

      switch(*(v12 + v16))
      {
        case 1:
          if (!v14)
          {
            return 0;
          }

          if (a4)
          {
            v125 = v16 + 1;
            v132 = sub_232CE9DD0();
            v133 = v109;
            v130 = sub_232CE9DD0();
            v131 = v110;
            sub_232B48080();
            v111 = sub_232CEA3F0();

            if (v111)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v14)
          {
            return 0;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v125 = v16 + 1;
          v19 = v118;
          sub_232CE89A0();
          v132 = sub_232CE9DD0();
          v133 = v20;
          sub_232B48080();
          v21 = sub_232CEA380();

          v132 = v21;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, MEMORY[0x277D83958]);
          v22 = sub_232CE9CD0();
          v24 = v23;

          v132 = sub_232CE9DD0();
          v133 = v25;
          v26 = sub_232CEA380();

          v132 = v26;
          v27 = sub_232CE9CD0();
          v29 = v28;

          v132 = v27;
          v133 = v29;
          v130 = v22;
          v131 = v24;
          LOBYTE(v27) = sub_232CEA3F0();
          (*v117[0])(v19, v119);

          if ((v27 & 1) == 0)
          {
            goto LABEL_109;
          }

          v11 = v124;
          v16 = v125;
          v30 = v125 == v124;
          v12 = v122;
          a4 = v123;
          goto LABEL_39;
        case 3:
          v125 = v16 + 1;
          a1 = v17;
          sub_232B714B8();
          if ((v56 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v14)
          {
            return v17;
          }

          v94 = v16 + 1;
          v95 = sub_232CE9D20();
          v96 = v14;
          v97 = v95;
          if ((v96 & 0x1000000000000000) != 0)
          {
            v98 = sub_232CE9F10();
          }

          else
          {
            v98 = sub_232CE9F20();
          }

          v99 = v98;
          v100 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v101 = [v100 scanString:v97 range:0 configuration:{v99, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v102 = sub_232CE9FE0();

          if (v102 >> 62)
          {
            v103 = sub_232CEA610();
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          v104 = 0;
          while (1)
          {
            if ((v102 & 0xC000000000000001) != 0)
            {
              v105 = MEMORY[0x2383922C0](v104, v102);
            }

            else
            {
              if (v104 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v105 = *(v102 + 8 * v104 + 32);
            }

            v106 = v105;
            v107 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v105 category] == 2)
            {
              v108 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v108)
              {
                break;
              }
            }

            ++v104;
            if (v107 == v103)
            {
              goto LABEL_31;
            }
          }

          v112 = v108;

          v113 = [v112 phoneNumber];
          a1 = sub_232CE9D50();
          v115 = v114;

          v14 = v115;
          a4 = v123;
          v11 = v124;
          v13 = v94;
          v12 = v122;
          if (v94 == v124)
          {
            return a1;
          }

          continue;
        case 5:
          if (!v14)
          {
            return 0;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v47 = sub_232B80670(v17, v14);
          v132 = 0;
          if (![v47 scanInteger_])
          {

            goto LABEL_109;
          }

          v48 = [v47 isAtEnd];

          if ((v48 & 1) == 0)
          {
            goto LABEL_109;
          }

          v16 = v18;
          v30 = v18 == v11;
LABEL_39:
          a1 = v17;
LABEL_40:
          v14 = v127;
          if (v30)
          {
            return a1;
          }

          goto LABEL_6;
        case 6:
          if (!v14)
          {
            return v17;
          }

          v49 = v16 + 1;
          sub_232B48080();
          v50 = 0;
          v51 = 0;
          do
          {
            v54 = (&unk_28480D370 + 16 * v51 + 32);
            v52 = *v54;
            v53 = v54[1];
            v55 = v50;
            v132 = v17;
            v133 = v14;
            v130 = v52;
            v131 = v53;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v50 = 1;
            v51 = 1;
            v14 = v127;
          }

          while ((v55 & 1) == 0);
          v16 = v49;
          a1 = v17;
          if (v49 == v11)
          {
            return a1;
          }

          goto LABEL_6;
        case 7:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v126 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v132 = 25180;
            v133 = 0xE200000000000000;

            v66 = sub_232CE9D20();

            v67 = [v63 escapedPatternForString_];

            v68 = sub_232CE9D50();
            v70 = v69;

            MEMORY[0x238391C30](v68, v70);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v71 = v132;
            v72 = v133;
            v73 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v74 = v72;
            v75 = v120;
            v76 = sub_232BA1978(v71, v74, 0);
            if (v75)
            {

              v120 = 0;
            }

            else
            {
              v77 = v76;
              v120 = 0;
              if (v76)
              {
                v130 = 15;
                v132 = v126;
                v133 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0, MEMORY[0x277D84338]);
                sub_232B48080();
                v78 = sub_232CEA320();
                v80 = v79;
                v81 = sub_232CE9D20();
                v42 = [v77 firstMatchInString:v81 options:0 range:{v78, v80}];

                if (v42)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 16;
            --v65;
          }

          while (v65);

          v12 = v122;
          a4 = v123;
LABEL_94:
          a1 = v17;
          goto LABEL_97;
        case 8:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v31 = sub_232CE9D20();
          v32 = v14;
          v33 = v31;
          if ((v32 & 0x1000000000000000) != 0)
          {
            v34 = sub_232CE9F10();
          }

          else
          {
            v34 = sub_232CE9F20();
          }

          v35 = v34;
          v36 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v37 = [v36 scanString:v33 range:0 configuration:{v35, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v38 = sub_232CE9FE0();

          if (v38 >> 62)
          {
            v39 = sub_232CEA610();
          }

          else
          {
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v17;
          if (!v39)
          {
            goto LABEL_34;
          }

          v40 = 0;
          v126 = v38 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x2383922C0](v40, v38);
            }

            else
            {
              if (v40 >= *(v126 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v41 = *(v38 + 8 * v40 + 32);
            }

            v42 = v41;
            v43 = v40 + 1;
            if (!__OFADD__(v40, 1))
            {
              [v41 urlificationRange];
              sub_232CEA110();
              if (v44)
              {
              }

              else
              {
                v45 = sub_232CE9FB0();
                MEMORY[0x238391B80](v45);

                if ([v42 category] == 4)
                {
                  v46 = sub_232B756EC(v42);

                  a1 = v17;
                  if (v46)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v17;
                }
              }

              ++v40;
              if (v43 == v39)
              {
LABEL_34:

                v11 = v124;
                v16 = v125;
                v30 = v125 == v124;
                v12 = v122;
                a4 = v123;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v125 = v16 + 1;
          a1 = v17;
          if (sub_232B72018(v17, v14, v121, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v14)
          {
            goto LABEL_97;
          }

          return a1;
        case 0xA:
          if (!v14)
          {
            return v17;
          }

          sub_232B486F4(v17, v14);
          v58 = v57;
          v14 = v59;

          v60 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v13 = v18;
          v30 = v18 == v11;
          a1 = v58;
          if (!v30)
          {
            continue;
          }

          return a1;
        default:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v132 = v17;
          v133 = v14;
          v82 = v118;
          sub_232CE89B0();
          sub_232B48080();
          v83 = sub_232CEA3A0();
          v85 = v84;
          (*v117[0])(v82, v119);
          v132 = v83;
          v133 = v85;
          v130 = 2847580;
          v131 = 0xE300000000000000;
          v128 = 32;
          v129 = 0xE100000000000000;
          v86 = sub_232CEA3B0();
          v88 = v87;

          v89 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v89 = v86 & 0xFFFFFFFFFFFFLL;
          }

          if (!v89)
          {
            goto LABEL_31;
          }

          v90 = sub_232C0D410(&unk_28480D880);
          v91 = sub_232CE9DD0();
          v93 = sub_232BA7F18(v91, v92, v90);
          a1 = v86;

          v127 = v88;
          if (v93)
          {
LABEL_109:

            return 0;
          }

LABEL_97:
          v11 = v124;
          v13 = v125;
          v14 = v127;
          if (v125 == v124)
          {
            return a1;
          }

          break;
      }
    }
  }

  return a1;
}

uint64_t sub_232B68770(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v121 = a3;
  v134 = *MEMORY[0x277D85DE8];
  v119 = sub_232CE89D0();
  MEMORY[0x28223BE20](v119);
  v118 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 + 16);
  if (v11)
  {
    v12 = a5 + 32;
    v117[0] = v9 + 8;

    v13 = 0;
    v120 = 0;
    v123 = a4;
    v124 = v11;
    v122 = a5 + 32;
    v14 = a2;
    while (1)
    {
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = a1;
      }

      v117[1] = (v15 << 16) | 7;
      v16 = v13;
      v127 = v14;
LABEL_6:
      if (v16 >= v11)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v17 = a1;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_115;
      }

      switch(*(v12 + v16))
      {
        case 1:
          if (!v14)
          {
            return 0;
          }

          if (a4)
          {
            v125 = v16 + 1;
            v132 = sub_232CE9DD0();
            v133 = v109;
            v130 = sub_232CE9DD0();
            v131 = v110;
            sub_232B48080();
            v111 = sub_232CEA3F0();

            if (v111)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v14)
          {
            return 0;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v125 = v16 + 1;
          v19 = v118;
          sub_232CE89A0();
          v132 = sub_232CE9DD0();
          v133 = v20;
          sub_232B48080();
          v21 = sub_232CEA380();

          v132 = v21;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, MEMORY[0x277D83958]);
          v22 = sub_232CE9CD0();
          v24 = v23;

          v132 = sub_232CE9DD0();
          v133 = v25;
          v26 = sub_232CEA380();

          v132 = v26;
          v27 = sub_232CE9CD0();
          v29 = v28;

          v132 = v27;
          v133 = v29;
          v130 = v22;
          v131 = v24;
          LOBYTE(v27) = sub_232CEA3F0();
          (*v117[0])(v19, v119);

          if ((v27 & 1) == 0)
          {
            goto LABEL_109;
          }

          v11 = v124;
          v16 = v125;
          v30 = v125 == v124;
          v12 = v122;
          a4 = v123;
          goto LABEL_39;
        case 3:
          v125 = v16 + 1;
          a1 = v17;
          sub_232B714B8();
          if ((v56 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v14)
          {
            return v17;
          }

          v94 = v16 + 1;
          v95 = sub_232CE9D20();
          v96 = v14;
          v97 = v95;
          if ((v96 & 0x1000000000000000) != 0)
          {
            v98 = sub_232CE9F10();
          }

          else
          {
            v98 = sub_232CE9F20();
          }

          v99 = v98;
          v100 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v101 = [v100 scanString:v97 range:0 configuration:{v99, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v102 = sub_232CE9FE0();

          if (v102 >> 62)
          {
            v103 = sub_232CEA610();
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          v104 = 0;
          while (1)
          {
            if ((v102 & 0xC000000000000001) != 0)
            {
              v105 = MEMORY[0x2383922C0](v104, v102);
            }

            else
            {
              if (v104 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v105 = *(v102 + 8 * v104 + 32);
            }

            v106 = v105;
            v107 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v105 category] == 2)
            {
              v108 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v108)
              {
                break;
              }
            }

            ++v104;
            if (v107 == v103)
            {
              goto LABEL_31;
            }
          }

          v112 = v108;

          v113 = [v112 phoneNumber];
          a1 = sub_232CE9D50();
          v115 = v114;

          v14 = v115;
          a4 = v123;
          v11 = v124;
          v13 = v94;
          v12 = v122;
          if (v94 == v124)
          {
            return a1;
          }

          continue;
        case 5:
          if (!v14)
          {
            return 0;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v47 = sub_232B80670(v17, v14);
          v132 = 0;
          if (![v47 scanInteger_])
          {

            goto LABEL_109;
          }

          v48 = [v47 isAtEnd];

          if ((v48 & 1) == 0)
          {
            goto LABEL_109;
          }

          v16 = v18;
          v30 = v18 == v11;
LABEL_39:
          a1 = v17;
LABEL_40:
          v14 = v127;
          if (v30)
          {
            return a1;
          }

          goto LABEL_6;
        case 6:
          if (!v14)
          {
            return v17;
          }

          v49 = v16 + 1;
          sub_232B48080();
          v50 = 0;
          v51 = 0;
          do
          {
            v54 = (&unk_28480D370 + 16 * v51 + 32);
            v52 = *v54;
            v53 = v54[1];
            v55 = v50;
            v132 = v17;
            v133 = v14;
            v130 = v52;
            v131 = v53;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v50 = 1;
            v51 = 1;
            v14 = v127;
          }

          while ((v55 & 1) == 0);
          v16 = v49;
          a1 = v17;
          if (v49 == v11)
          {
            return a1;
          }

          goto LABEL_6;
        case 7:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v126 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v132 = 25180;
            v133 = 0xE200000000000000;

            v66 = sub_232CE9D20();

            v67 = [v63 escapedPatternForString_];

            v68 = sub_232CE9D50();
            v70 = v69;

            MEMORY[0x238391C30](v68, v70);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v71 = v132;
            v72 = v133;
            v73 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v74 = v72;
            v75 = v120;
            v76 = sub_232BA1978(v71, v74, 0);
            if (v75)
            {

              v120 = 0;
            }

            else
            {
              v77 = v76;
              v120 = 0;
              if (v76)
              {
                v130 = 15;
                v132 = v126;
                v133 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0, MEMORY[0x277D84338]);
                sub_232B48080();
                v78 = sub_232CEA320();
                v80 = v79;
                v81 = sub_232CE9D20();
                v42 = [v77 firstMatchInString:v81 options:0 range:{v78, v80}];

                if (v42)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 16;
            --v65;
          }

          while (v65);

          v12 = v122;
          a4 = v123;
LABEL_94:
          a1 = v17;
          goto LABEL_97;
        case 8:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v31 = sub_232CE9D20();
          v32 = v14;
          v33 = v31;
          if ((v32 & 0x1000000000000000) != 0)
          {
            v34 = sub_232CE9F10();
          }

          else
          {
            v34 = sub_232CE9F20();
          }

          v35 = v34;
          v36 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v37 = [v36 scanString:v33 range:0 configuration:{v35, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v38 = sub_232CE9FE0();

          if (v38 >> 62)
          {
            v39 = sub_232CEA610();
          }

          else
          {
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v17;
          if (!v39)
          {
            goto LABEL_34;
          }

          v40 = 0;
          v126 = v38 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x2383922C0](v40, v38);
            }

            else
            {
              if (v40 >= *(v126 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v41 = *(v38 + 8 * v40 + 32);
            }

            v42 = v41;
            v43 = v40 + 1;
            if (!__OFADD__(v40, 1))
            {
              [v41 urlificationRange];
              sub_232CEA110();
              if (v44)
              {
              }

              else
              {
                v45 = sub_232CE9FB0();
                MEMORY[0x238391B80](v45);

                if ([v42 category] == 4)
                {
                  v46 = sub_232B756EC(v42);

                  a1 = v17;
                  if (v46)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v17;
                }
              }

              ++v40;
              if (v43 == v39)
              {
LABEL_34:

                v11 = v124;
                v16 = v125;
                v30 = v125 == v124;
                v12 = v122;
                a4 = v123;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v125 = v16 + 1;
          a1 = v17;
          if (sub_232B72018(v17, v14, v121, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v14)
          {
            goto LABEL_97;
          }

          return a1;
        case 0xA:
          if (!v14)
          {
            return v17;
          }

          sub_232B486F4(v17, v14);
          v58 = v57;
          v14 = v59;

          v60 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v13 = v18;
          v30 = v18 == v11;
          a1 = v58;
          if (!v30)
          {
            continue;
          }

          return a1;
        default:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v132 = v17;
          v133 = v14;
          v82 = v118;
          sub_232CE89B0();
          sub_232B48080();
          v83 = sub_232CEA3A0();
          v85 = v84;
          (*v117[0])(v82, v119);
          v132 = v83;
          v133 = v85;
          v130 = 2847580;
          v131 = 0xE300000000000000;
          v128 = 32;
          v129 = 0xE100000000000000;
          v86 = sub_232CEA3B0();
          v88 = v87;

          v89 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v89 = v86 & 0xFFFFFFFFFFFFLL;
          }

          if (!v89)
          {
            goto LABEL_31;
          }

          v90 = sub_232C0D410(&unk_28480DC30);
          v91 = sub_232CE9DD0();
          v93 = sub_232BA7F18(v91, v92, v90);
          a1 = v86;

          v127 = v88;
          if (v93)
          {
LABEL_109:

            return 0;
          }

LABEL_97:
          v11 = v124;
          v13 = v125;
          v14 = v127;
          if (v125 == v124)
          {
            return a1;
          }

          break;
      }
    }
  }

  return a1;
}

uint64_t sub_232B69508(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v121 = a3;
  v134 = *MEMORY[0x277D85DE8];
  v119 = sub_232CE89D0();
  MEMORY[0x28223BE20](v119);
  v118 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 + 16);
  if (v11)
  {
    v12 = a5 + 32;
    v117[0] = v9 + 8;

    v13 = 0;
    v120 = 0;
    v123 = a4;
    v124 = v11;
    v122 = a5 + 32;
    v14 = a2;
    while (1)
    {
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = a1;
      }

      v117[1] = (v15 << 16) | 7;
      v16 = v13;
      v127 = v14;
LABEL_6:
      if (v16 >= v11)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v17 = a1;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_115;
      }

      switch(*(v12 + v16))
      {
        case 1:
          if (!v14)
          {
            return 0;
          }

          if (a4)
          {
            v125 = v16 + 1;
            v132 = sub_232CE9DD0();
            v133 = v109;
            v130 = sub_232CE9DD0();
            v131 = v110;
            sub_232B48080();
            v111 = sub_232CEA3F0();

            if (v111)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v14)
          {
            return 0;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v125 = v16 + 1;
          v19 = v118;
          sub_232CE89A0();
          v132 = sub_232CE9DD0();
          v133 = v20;
          sub_232B48080();
          v21 = sub_232CEA380();

          v132 = v21;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, MEMORY[0x277D83958]);
          v22 = sub_232CE9CD0();
          v24 = v23;

          v132 = sub_232CE9DD0();
          v133 = v25;
          v26 = sub_232CEA380();

          v132 = v26;
          v27 = sub_232CE9CD0();
          v29 = v28;

          v132 = v27;
          v133 = v29;
          v130 = v22;
          v131 = v24;
          LOBYTE(v27) = sub_232CEA3F0();
          (*v117[0])(v19, v119);

          if ((v27 & 1) == 0)
          {
            goto LABEL_109;
          }

          v11 = v124;
          v16 = v125;
          v30 = v125 == v124;
          v12 = v122;
          a4 = v123;
          goto LABEL_39;
        case 3:
          v125 = v16 + 1;
          a1 = v17;
          sub_232B714B8();
          if ((v56 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v14)
          {
            return v17;
          }

          v94 = v16 + 1;
          v95 = sub_232CE9D20();
          v96 = v14;
          v97 = v95;
          if ((v96 & 0x1000000000000000) != 0)
          {
            v98 = sub_232CE9F10();
          }

          else
          {
            v98 = sub_232CE9F20();
          }

          v99 = v98;
          v100 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v101 = [v100 scanString:v97 range:0 configuration:{v99, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v102 = sub_232CE9FE0();

          if (v102 >> 62)
          {
            v103 = sub_232CEA610();
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          v104 = 0;
          while (1)
          {
            if ((v102 & 0xC000000000000001) != 0)
            {
              v105 = MEMORY[0x2383922C0](v104, v102);
            }

            else
            {
              if (v104 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v105 = *(v102 + 8 * v104 + 32);
            }

            v106 = v105;
            v107 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v105 category] == 2)
            {
              v108 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v108)
              {
                break;
              }
            }

            ++v104;
            if (v107 == v103)
            {
              goto LABEL_31;
            }
          }

          v112 = v108;

          v113 = [v112 phoneNumber];
          a1 = sub_232CE9D50();
          v115 = v114;

          v14 = v115;
          a4 = v123;
          v11 = v124;
          v13 = v94;
          v12 = v122;
          if (v94 == v124)
          {
            return a1;
          }

          continue;
        case 5:
          if (!v14)
          {
            return 0;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v47 = sub_232B80670(v17, v14);
          v132 = 0;
          if (![v47 scanInteger_])
          {

            goto LABEL_109;
          }

          v48 = [v47 isAtEnd];

          if ((v48 & 1) == 0)
          {
            goto LABEL_109;
          }

          v16 = v18;
          v30 = v18 == v11;
LABEL_39:
          a1 = v17;
LABEL_40:
          v14 = v127;
          if (v30)
          {
            return a1;
          }

          goto LABEL_6;
        case 6:
          if (!v14)
          {
            return v17;
          }

          v49 = v16 + 1;
          sub_232B48080();
          v50 = 0;
          v51 = 0;
          do
          {
            v54 = (&unk_28480D370 + 16 * v51 + 32);
            v52 = *v54;
            v53 = v54[1];
            v55 = v50;
            v132 = v17;
            v133 = v14;
            v130 = v52;
            v131 = v53;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v50 = 1;
            v51 = 1;
            v14 = v127;
          }

          while ((v55 & 1) == 0);
          v16 = v49;
          a1 = v17;
          if (v49 == v11)
          {
            return a1;
          }

          goto LABEL_6;
        case 7:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v126 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v132 = 25180;
            v133 = 0xE200000000000000;

            v66 = sub_232CE9D20();

            v67 = [v63 escapedPatternForString_];

            v68 = sub_232CE9D50();
            v70 = v69;

            MEMORY[0x238391C30](v68, v70);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v71 = v132;
            v72 = v133;
            v73 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v74 = v72;
            v75 = v120;
            v76 = sub_232BA1978(v71, v74, 0);
            if (v75)
            {

              v120 = 0;
            }

            else
            {
              v77 = v76;
              v120 = 0;
              if (v76)
              {
                v130 = 15;
                v132 = v126;
                v133 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0, MEMORY[0x277D84338]);
                sub_232B48080();
                v78 = sub_232CEA320();
                v80 = v79;
                v81 = sub_232CE9D20();
                v42 = [v77 firstMatchInString:v81 options:0 range:{v78, v80}];

                if (v42)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 16;
            --v65;
          }

          while (v65);

          v12 = v122;
          a4 = v123;
LABEL_94:
          a1 = v17;
          goto LABEL_97;
        case 8:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v31 = sub_232CE9D20();
          v32 = v14;
          v33 = v31;
          if ((v32 & 0x1000000000000000) != 0)
          {
            v34 = sub_232CE9F10();
          }

          else
          {
            v34 = sub_232CE9F20();
          }

          v35 = v34;
          v36 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v37 = [v36 scanString:v33 range:0 configuration:{v35, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v38 = sub_232CE9FE0();

          if (v38 >> 62)
          {
            v39 = sub_232CEA610();
          }

          else
          {
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v17;
          if (!v39)
          {
            goto LABEL_34;
          }

          v40 = 0;
          v126 = v38 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x2383922C0](v40, v38);
            }

            else
            {
              if (v40 >= *(v126 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v41 = *(v38 + 8 * v40 + 32);
            }

            v42 = v41;
            v43 = v40 + 1;
            if (!__OFADD__(v40, 1))
            {
              [v41 urlificationRange];
              sub_232CEA110();
              if (v44)
              {
              }

              else
              {
                v45 = sub_232CE9FB0();
                MEMORY[0x238391B80](v45);

                if ([v42 category] == 4)
                {
                  v46 = sub_232B756EC(v42);

                  a1 = v17;
                  if (v46)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v17;
                }
              }

              ++v40;
              if (v43 == v39)
              {
LABEL_34:

                v11 = v124;
                v16 = v125;
                v30 = v125 == v124;
                v12 = v122;
                a4 = v123;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v125 = v16 + 1;
          a1 = v17;
          if (sub_232B72018(v17, v14, v121, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v14)
          {
            goto LABEL_97;
          }

          return a1;
        case 0xA:
          if (!v14)
          {
            return v17;
          }

          sub_232B486F4(v17, v14);
          v58 = v57;
          v14 = v59;

          v60 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v13 = v18;
          v30 = v18 == v11;
          a1 = v58;
          if (!v30)
          {
            continue;
          }

          return a1;
        default:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v132 = v17;
          v133 = v14;
          v82 = v118;
          sub_232CE89B0();
          sub_232B48080();
          v83 = sub_232CEA3A0();
          v85 = v84;
          (*v117[0])(v82, v119);
          v132 = v83;
          v133 = v85;
          v130 = 2847580;
          v131 = 0xE300000000000000;
          v128 = 32;
          v129 = 0xE100000000000000;
          v86 = sub_232CEA3B0();
          v88 = v87;

          v89 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v89 = v86 & 0xFFFFFFFFFFFFLL;
          }

          if (!v89)
          {
            goto LABEL_31;
          }

          v90 = sub_232C0D410(&unk_28480DEA0);
          v91 = sub_232CE9DD0();
          v93 = sub_232BA7F18(v91, v92, v90);
          a1 = v86;

          v127 = v88;
          if (v93)
          {
LABEL_109:

            return 0;
          }

LABEL_97:
          v11 = v124;
          v13 = v125;
          v14 = v127;
          if (v125 == v124)
          {
            return a1;
          }

          break;
      }
    }
  }

  return a1;
}

void sub_232B6A2A0()
{
  sub_232B35110();
  v119 = v1;
  v3 = v2;
  v113 = v4;
  v114 = v5;
  v7 = v6;
  v9 = v8;
  v124 = *MEMORY[0x277D85DE8];
  v112 = sub_232CE89D0();
  sub_232BA64E0();
  MEMORY[0x28223BE20](v10);
  sub_232BA64CC();
  v111 = v12;
  v13 = *(v3 + 16);
  if (v13)
  {
    v14 = (v3 + 32);
    v109 = (v11 + 8);

    v15 = 0;
    v115 = (v3 + 32);
    v116 = v13;
LABEL_3:
    v16 = v15;
    v121 = v9;
    while (2)
    {
      if (v16 < v13)
      {
        v15 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          goto LABEL_108;
        }

        switch(v14[v16])
        {
          case 1:
            if (!v7)
            {
              goto LABEL_103;
            }

            if (v114)
            {
              v98 = sub_232CE9DD0();
              sub_232BA6C98(v98, v99);
              sub_232BA61E0();
              sub_232CE9DD0();
              LOBYTE(v0) = v100;
              sub_232B48080();
              sub_232BA6444();
              v101 = sub_232CEA3F0();

              if (v101)
              {
                goto LABEL_91;
              }
            }

            goto LABEL_102;
          case 2:
            if (!v7)
            {
              goto LABEL_103;
            }

            if (!v114)
            {
              goto LABEL_102;
            }

            v14 = v111;
            sub_232CE89A0();
            sub_232BA61E0();
            v122 = sub_232CE9DD0();
            v123 = v17;
            sub_232B48080();
            sub_232B45AB0();
            v18 = sub_232CEA380();

            v122 = v18;
            sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
            sub_232BA5560();
            sub_232BA67A4();
            sub_232B48E4C(v19, v20, v21, v22);
            sub_232BA7280();
            v13 = sub_232CE9CD0();
            LOBYTE(v0) = v23;

            v24 = sub_232CE9DD0();
            v26 = v25;
            v122 = v24;
            v123 = v25;
            v27 = sub_232CEA380();

            v122 = v27;
            sub_232BA7280();
            v28 = sub_232CE9CD0();
            sub_232BA5EA0();

            v122 = v28;
            v123 = v26;
            v29 = sub_232BA6444();
            LOBYTE(v28) = sub_232BA73F4(v29, v30, v31);
            (*v109)(v111, v112);

            if ((v28 & 1) == 0)
            {
              goto LABEL_102;
            }

            sub_232BA71BC();
            v9 = v121;
            if (!v32)
            {
              continue;
            }

            goto LABEL_103;
          case 3:
            sub_232BA61E0();
            sub_232B714B8();
            if ((v102 & 1) == 0)
            {
              goto LABEL_102;
            }

            goto LABEL_90;
          case 4:
            if (!v7)
            {
              goto LABEL_103;
            }

            v86 = (v16 + 1);
            sub_232BA61E0();
            v87 = sub_232CE9D20();
            if ((v7 & 0x1000000000000000) != 0)
            {
              sub_232BA61E0();
              sub_232CE9F10();
            }

            else
            {
              sub_232CE9F20();
            }

            v88 = objc_opt_self();
            if (qword_27DDC6368 != -1)
            {
              v88 = swift_once();
            }

            v89 = sub_232BA5E44(v88, sel_scanString_range_configuration_);

            v90 = sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
            v91 = sub_232BA6E54(v90);

            if (v91 >> 62)
            {
              v92 = sub_232BA6DC4();
              if (!v92)
              {
LABEL_30:

                goto LABEL_102;
              }
            }

            else
            {
              v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v92)
              {
                goto LABEL_30;
              }
            }

            v0 = 0;
            while (1)
            {
              if ((v91 & 0xC000000000000001) != 0)
              {
                v93 = sub_232BA67F4();
                v94 = MEMORY[0x2383922C0](v93);
              }

              else
              {
                if (v0 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_111;
                }

                v94 = *(v91 + 8 * v0 + 32);
              }

              v95 = v94;
              v96 = (v0 + 1);
              if (__OFADD__(v0, 1))
              {
                __break(1u);
LABEL_111:
                __break(1u);
              }

              if ([v94 category] == 2)
              {
                v97 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
                if (v97)
                {
                  break;
                }
              }

              ++v0;
              if (v96 == v92)
              {
                goto LABEL_30;
              }
            }

            v105 = v97;

            v106 = [v105 phoneNumber];
            v9 = sub_232CE9D50();
            v108 = v107;

            v7 = v108;
            v13 = v116;
            v15 = v86;
            v32 = v86 == v116;
            v14 = v115;
            if (!v32)
            {
              goto LABEL_3;
            }

            goto LABEL_103;
          case 5:
            if (!v7)
            {
              goto LABEL_103;
            }

            sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);
            sub_232B26CE8();

            v45 = sub_232BA61E0();
            v47 = sub_232B80670(v45, v46);
            v122 = 0;
            if (![v47 scanInteger_])
            {

              goto LABEL_102;
            }

            v0 = v15;
            v48 = [v47 isAtEnd];

            if ((v48 & 1) == 0)
            {
              goto LABEL_102;
            }

            v16 = v0;
            if (v0 == v13)
            {
              goto LABEL_103;
            }

            continue;
          case 6:
            if (!v7)
            {
              goto LABEL_103;
            }

            sub_232B48080();
            sub_232BA6B3C();
            do
            {
              sub_232BA6ADC();
              v122 = v9;
              v123 = v7;
              v49 = sub_232BA6444();
              if (sub_232BA73F4(v49, v50, v51))
              {
                goto LABEL_102;
              }
            }

            while ((v0 & 1) == 0);
            v16 = v15;
            if (v15 == v13)
            {
              goto LABEL_103;
            }

            continue;
          case 7:
            if (!v7)
            {
              goto LABEL_103;
            }

            v117 = (v16 + 1);
            sub_232BA61E0();
            v120 = sub_232CE9DD0();
            v110 = v58;
            v59 = objc_opt_self();
            v60 = &unk_28480D3D8;
            v61 = 25;
            sub_232BA69CC(v59);
            do
            {
              v62 = *(v60 - 1);
              sub_232BA63EC();
              sub_232CE9D20();
              sub_232B26D70();

              v63 = sub_232BA69D8();
              v65 = [v63 v64];

              sub_232CE9D50();
              sub_232BA5EAC();

              v66 = sub_232B41C8C();
              MEMORY[0x238391C30](v66);

              sub_232BA73C4();
              v67 = objc_allocWithZone(MEMORY[0x277CCAC68]);
              v68 = sub_232BA6110();
              v71 = sub_232BA1978(v68, v69, v70);
              if (v71)
              {
                v122 = v120;
                v123 = v110;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232BA5548();
                sub_232BA720C();
                LOBYTE(v0) = sub_232B48E4C(v72, v73, v74, v75);
                sub_232B48080();
                sub_232BA63A8();
                sub_232CEA320();
                sub_232BA5EAC();
                v76 = sub_232CE9D20();
                v39 = sub_232BA6E6C(v71, sel_firstMatchInString_options_range_, v76);

                if (v39)
                {
                  goto LABEL_105;
                }
              }

              v60 += 2;
              --v61;
            }

            while (v61);

            v13 = v116;
            v15 = v117;
LABEL_91:
            v9 = v121;
            if (v15 == v13)
            {
              goto LABEL_103;
            }

            goto LABEL_3;
          case 8:
            if (!v7)
            {
              goto LABEL_103;
            }

            sub_232BA61E0();
            v33 = sub_232CE9D20();
            if ((v7 & 0x1000000000000000) != 0)
            {
              sub_232BA61E0();
              sub_232CE9F10();
            }

            else
            {
              sub_232CE9F20();
            }

            v34 = objc_opt_self();
            LOBYTE(v0) = v34;
            if (qword_27DDC6368 != -1)
            {
              v34 = swift_once();
            }

            v35 = sub_232BA5E44(v34, sel_scanString_range_configuration_);

            v36 = sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
            v37 = sub_232BA6E54(v36);

            if (v37 >> 62)
            {
              v38 = sub_232CEA610();
              if (v38)
              {
LABEL_20:
                v39 = 0;
                v13 = v37 & 0xC000000000000001;
                while (1)
                {
                  if (v13)
                  {
                    v40 = MEMORY[0x2383922C0](v39, v37);
                  }

                  else
                  {
                    if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_107;
                    }

                    v40 = *(v37 + 8 * v39 + 32);
                  }

                  v0 = v40;
                  v14 = (v39 + 1);
                  if (__OFADD__(v39, 1))
                  {
                    break;
                  }

                  [v40 urlificationRange];
                  sub_232CEA110();
                  if (v41)
                  {
                  }

                  else
                  {
                    v42 = sub_232CE9FB0();
                    MEMORY[0x238391B80](v42);
                    sub_232BA5EA0();

                    if ([v0 category] == 4)
                    {
                      v43 = sub_232BA67F4();
                      v44 = v119(v43);

                      v9 = v121;
                      if (v44)
                      {
                        goto LABEL_30;
                      }
                    }

                    else
                    {

                      v9 = v121;
                    }
                  }

                  ++v39;
                  if (v14 == v38)
                  {
                    goto LABEL_33;
                  }
                }

                __break(1u);
LABEL_105:

                goto LABEL_102;
              }
            }

            else
            {
              v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v38)
              {
                goto LABEL_20;
              }
            }

LABEL_33:

            sub_232BA71BC();
            if (v32)
            {
              goto LABEL_103;
            }

            continue;
          case 9:
            v103 = sub_232BA61E0();
            if (sub_232B72018(v103, v104, v113, v114))
            {
              goto LABEL_102;
            }

LABEL_90:
            if (v7)
            {
              goto LABEL_91;
            }

            goto LABEL_103;
          case 10:
            if (!v7)
            {
              goto LABEL_103;
            }

            v52 = sub_232BA61E0();
            sub_232B486F4(v52, v53);
            v9 = v54;
            v56 = v55;

            v57 = HIBYTE(v56) & 0xF;
            if ((v56 & 0x2000000000000000) == 0)
            {
              v57 = v9 & 0xFFFFFFFFFFFFLL;
            }

            if (!v57)
            {
              goto LABEL_102;
            }

            v7 = v56;
            if (v15 == v13)
            {
              goto LABEL_103;
            }

            goto LABEL_3;
          default:
            if (!v7)
            {
              goto LABEL_103;
            }

            v118 = (v16 + 1);
            v122 = v9;
            v123 = v7;
            sub_232CE89B0();
            v77 = sub_232B48080();
            sub_232CEA3A0();
            sub_232BA6210();
            (*v109)(v111, v112);
            sub_232BA57C8();
            sub_232BA6388();
            v78 = sub_232CEA3B0();
            v80 = v79;

            sub_232BA7178();
            if (!v81)
            {
              goto LABEL_30;
            }

            v82 = sub_232C0D410(v77);
            v121 = v78;
            sub_232BA71E8();
            v83 = sub_232CE9DD0();
            LOBYTE(v0) = v84;
            v85 = sub_232BA7F18(v83, v84, v82);

            v7 = v80;
            v15 = v118;
            if (v85)
            {
              goto LABEL_102;
            }

            goto LABEL_91;
        }
      }

      break;
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_102:
  }

  else
  {
  }

LABEL_103:
  sub_232BA61E0();
  sub_232B20A00();
}

uint64_t sub_232B6ADF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v121 = a3;
  v134 = *MEMORY[0x277D85DE8];
  v119 = sub_232CE89D0();
  MEMORY[0x28223BE20](v119);
  v118 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 + 16);
  if (v11)
  {
    v12 = a5 + 32;
    v117[0] = v9 + 8;

    v13 = 0;
    v120 = 0;
    v123 = a4;
    v124 = v11;
    v122 = a5 + 32;
    v14 = a2;
    while (1)
    {
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = a1;
      }

      v117[1] = (v15 << 16) | 7;
      v16 = v13;
      v127 = v14;
LABEL_6:
      if (v16 >= v11)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v17 = a1;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_115;
      }

      switch(*(v12 + v16))
      {
        case 1:
          if (!v14)
          {
            return 0;
          }

          if (a4)
          {
            v125 = v16 + 1;
            v132 = sub_232CE9DD0();
            v133 = v109;
            v130 = sub_232CE9DD0();
            v131 = v110;
            sub_232B48080();
            v111 = sub_232CEA3F0();

            if (v111)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v14)
          {
            return 0;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v125 = v16 + 1;
          v19 = v118;
          sub_232CE89A0();
          v132 = sub_232CE9DD0();
          v133 = v20;
          sub_232B48080();
          v21 = sub_232CEA380();

          v132 = v21;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, MEMORY[0x277D83958]);
          v22 = sub_232CE9CD0();
          v24 = v23;

          v132 = sub_232CE9DD0();
          v133 = v25;
          v26 = sub_232CEA380();

          v132 = v26;
          v27 = sub_232CE9CD0();
          v29 = v28;

          v132 = v27;
          v133 = v29;
          v130 = v22;
          v131 = v24;
          LOBYTE(v27) = sub_232CEA3F0();
          (*v117[0])(v19, v119);

          if ((v27 & 1) == 0)
          {
            goto LABEL_109;
          }

          v11 = v124;
          v16 = v125;
          v30 = v125 == v124;
          v12 = v122;
          a4 = v123;
          goto LABEL_39;
        case 3:
          v125 = v16 + 1;
          a1 = v17;
          sub_232B714B8();
          if ((v56 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v14)
          {
            return v17;
          }

          v94 = v16 + 1;
          v95 = sub_232CE9D20();
          v96 = v14;
          v97 = v95;
          if ((v96 & 0x1000000000000000) != 0)
          {
            v98 = sub_232CE9F10();
          }

          else
          {
            v98 = sub_232CE9F20();
          }

          v99 = v98;
          v100 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v101 = [v100 scanString:v97 range:0 configuration:{v99, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v102 = sub_232CE9FE0();

          if (v102 >> 62)
          {
            v103 = sub_232CEA610();
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          v104 = 0;
          while (1)
          {
            if ((v102 & 0xC000000000000001) != 0)
            {
              v105 = MEMORY[0x2383922C0](v104, v102);
            }

            else
            {
              if (v104 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v105 = *(v102 + 8 * v104 + 32);
            }

            v106 = v105;
            v107 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v105 category] == 2)
            {
              v108 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v108)
              {
                break;
              }
            }

            ++v104;
            if (v107 == v103)
            {
              goto LABEL_31;
            }
          }

          v112 = v108;

          v113 = [v112 phoneNumber];
          a1 = sub_232CE9D50();
          v115 = v114;

          v14 = v115;
          a4 = v123;
          v11 = v124;
          v13 = v94;
          v12 = v122;
          if (v94 == v124)
          {
            return a1;
          }

          continue;
        case 5:
          if (!v14)
          {
            return 0;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v47 = sub_232B80670(v17, v14);
          v132 = 0;
          if (![v47 scanInteger_])
          {

            goto LABEL_109;
          }

          v48 = [v47 isAtEnd];

          if ((v48 & 1) == 0)
          {
            goto LABEL_109;
          }

          v16 = v18;
          v30 = v18 == v11;
LABEL_39:
          a1 = v17;
LABEL_40:
          v14 = v127;
          if (v30)
          {
            return a1;
          }

          goto LABEL_6;
        case 6:
          if (!v14)
          {
            return v17;
          }

          v49 = v16 + 1;
          sub_232B48080();
          v50 = 0;
          v51 = 0;
          do
          {
            v54 = (&unk_28480D370 + 16 * v51 + 32);
            v52 = *v54;
            v53 = v54[1];
            v55 = v50;
            v132 = v17;
            v133 = v14;
            v130 = v52;
            v131 = v53;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v50 = 1;
            v51 = 1;
            v14 = v127;
          }

          while ((v55 & 1) == 0);
          v16 = v49;
          a1 = v17;
          if (v49 == v11)
          {
            return a1;
          }

          goto LABEL_6;
        case 7:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v126 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v132 = 25180;
            v133 = 0xE200000000000000;

            v66 = sub_232CE9D20();

            v67 = [v63 escapedPatternForString_];

            v68 = sub_232CE9D50();
            v70 = v69;

            MEMORY[0x238391C30](v68, v70);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v71 = v132;
            v72 = v133;
            v73 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v74 = v72;
            v75 = v120;
            v76 = sub_232BA1978(v71, v74, 0);
            if (v75)
            {

              v120 = 0;
            }

            else
            {
              v77 = v76;
              v120 = 0;
              if (v76)
              {
                v130 = 15;
                v132 = v126;
                v133 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0, MEMORY[0x277D84338]);
                sub_232B48080();
                v78 = sub_232CEA320();
                v80 = v79;
                v81 = sub_232CE9D20();
                v42 = [v77 firstMatchInString:v81 options:0 range:{v78, v80}];

                if (v42)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 16;
            --v65;
          }

          while (v65);

          v12 = v122;
          a4 = v123;
LABEL_94:
          a1 = v17;
          goto LABEL_97;
        case 8:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v31 = sub_232CE9D20();
          v32 = v14;
          v33 = v31;
          if ((v32 & 0x1000000000000000) != 0)
          {
            v34 = sub_232CE9F10();
          }

          else
          {
            v34 = sub_232CE9F20();
          }

          v35 = v34;
          v36 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v37 = [v36 scanString:v33 range:0 configuration:{v35, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v38 = sub_232CE9FE0();

          if (v38 >> 62)
          {
            v39 = sub_232CEA610();
          }

          else
          {
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v17;
          if (!v39)
          {
            goto LABEL_34;
          }

          v40 = 0;
          v126 = v38 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x2383922C0](v40, v38);
            }

            else
            {
              if (v40 >= *(v126 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v41 = *(v38 + 8 * v40 + 32);
            }

            v42 = v41;
            v43 = v40 + 1;
            if (!__OFADD__(v40, 1))
            {
              [v41 urlificationRange];
              sub_232CEA110();
              if (v44)
              {
              }

              else
              {
                v45 = sub_232CE9FB0();
                MEMORY[0x238391B80](v45);

                if ([v42 category] == 4)
                {
                  v46 = sub_232B756EC(v42);

                  a1 = v17;
                  if (v46)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v17;
                }
              }

              ++v40;
              if (v43 == v39)
              {
LABEL_34:

                v11 = v124;
                v16 = v125;
                v30 = v125 == v124;
                v12 = v122;
                a4 = v123;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v125 = v16 + 1;
          a1 = v17;
          if (sub_232B72018(v17, v14, v121, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v14)
          {
            goto LABEL_97;
          }

          return a1;
        case 0xA:
          if (!v14)
          {
            return v17;
          }

          sub_232B486F4(v17, v14);
          v58 = v57;
          v14 = v59;

          v60 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v13 = v18;
          v30 = v18 == v11;
          a1 = v58;
          if (!v30)
          {
            continue;
          }

          return a1;
        default:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v132 = v17;
          v133 = v14;
          v82 = v118;
          sub_232CE89B0();
          sub_232B48080();
          v83 = sub_232CEA3A0();
          v85 = v84;
          (*v117[0])(v82, v119);
          v132 = v83;
          v133 = v85;
          v130 = 2847580;
          v131 = 0xE300000000000000;
          v128 = 32;
          v129 = 0xE100000000000000;
          v86 = sub_232CEA3B0();
          v88 = v87;

          v89 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v89 = v86 & 0xFFFFFFFFFFFFLL;
          }

          if (!v89)
          {
            goto LABEL_31;
          }

          v90 = sub_232C0D410(&unk_28480E578);
          v91 = sub_232CE9DD0();
          v93 = sub_232BA7F18(v91, v92, v90);
          a1 = v86;

          v127 = v88;
          if (v93)
          {
LABEL_109:

            return 0;
          }

LABEL_97:
          v11 = v124;
          v13 = v125;
          v14 = v127;
          if (v125 == v124)
          {
            return a1;
          }

          break;
      }
    }
  }

  return a1;
}

uint64_t sub_232B6BB90(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v121 = a3;
  v134 = *MEMORY[0x277D85DE8];
  v119 = sub_232CE89D0();
  MEMORY[0x28223BE20](v119);
  v118 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 + 16);
  if (v11)
  {
    v12 = a5 + 32;
    v117[0] = v9 + 8;

    v13 = 0;
    v120 = 0;
    v123 = a4;
    v124 = v11;
    v122 = a5 + 32;
    v14 = a2;
    while (1)
    {
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = a1;
      }

      v117[1] = (v15 << 16) | 7;
      v16 = v13;
      v127 = v14;
LABEL_6:
      if (v16 >= v11)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v17 = a1;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_115;
      }

      switch(*(v12 + v16))
      {
        case 1:
          if (!v14)
          {
            return 0;
          }

          if (a4)
          {
            v125 = v16 + 1;
            v132 = sub_232CE9DD0();
            v133 = v109;
            v130 = sub_232CE9DD0();
            v131 = v110;
            sub_232B48080();
            v111 = sub_232CEA3F0();

            if (v111)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v14)
          {
            return 0;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v125 = v16 + 1;
          v19 = v118;
          sub_232CE89A0();
          v132 = sub_232CE9DD0();
          v133 = v20;
          sub_232B48080();
          v21 = sub_232CEA380();

          v132 = v21;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, MEMORY[0x277D83958]);
          v22 = sub_232CE9CD0();
          v24 = v23;

          v132 = sub_232CE9DD0();
          v133 = v25;
          v26 = sub_232CEA380();

          v132 = v26;
          v27 = sub_232CE9CD0();
          v29 = v28;

          v132 = v27;
          v133 = v29;
          v130 = v22;
          v131 = v24;
          LOBYTE(v27) = sub_232CEA3F0();
          (*v117[0])(v19, v119);

          if ((v27 & 1) == 0)
          {
            goto LABEL_109;
          }

          v11 = v124;
          v16 = v125;
          v30 = v125 == v124;
          v12 = v122;
          a4 = v123;
          goto LABEL_39;
        case 3:
          v125 = v16 + 1;
          a1 = v17;
          sub_232B714B8();
          if ((v56 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v14)
          {
            return v17;
          }

          v94 = v16 + 1;
          v95 = sub_232CE9D20();
          v96 = v14;
          v97 = v95;
          if ((v96 & 0x1000000000000000) != 0)
          {
            v98 = sub_232CE9F10();
          }

          else
          {
            v98 = sub_232CE9F20();
          }

          v99 = v98;
          v100 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v101 = [v100 scanString:v97 range:0 configuration:{v99, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v102 = sub_232CE9FE0();

          if (v102 >> 62)
          {
            v103 = sub_232CEA610();
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          v104 = 0;
          while (1)
          {
            if ((v102 & 0xC000000000000001) != 0)
            {
              v105 = MEMORY[0x2383922C0](v104, v102);
            }

            else
            {
              if (v104 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v105 = *(v102 + 8 * v104 + 32);
            }

            v106 = v105;
            v107 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v105 category] == 2)
            {
              v108 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v108)
              {
                break;
              }
            }

            ++v104;
            if (v107 == v103)
            {
              goto LABEL_31;
            }
          }

          v112 = v108;

          v113 = [v112 phoneNumber];
          a1 = sub_232CE9D50();
          v115 = v114;

          v14 = v115;
          a4 = v123;
          v11 = v124;
          v13 = v94;
          v12 = v122;
          if (v94 == v124)
          {
            return a1;
          }

          continue;
        case 5:
          if (!v14)
          {
            return 0;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v47 = sub_232B80670(v17, v14);
          v132 = 0;
          if (![v47 scanInteger_])
          {

            goto LABEL_109;
          }

          v48 = [v47 isAtEnd];

          if ((v48 & 1) == 0)
          {
            goto LABEL_109;
          }

          v16 = v18;
          v30 = v18 == v11;
LABEL_39:
          a1 = v17;
LABEL_40:
          v14 = v127;
          if (v30)
          {
            return a1;
          }

          goto LABEL_6;
        case 6:
          if (!v14)
          {
            return v17;
          }

          v49 = v16 + 1;
          sub_232B48080();
          v50 = 0;
          v51 = 0;
          do
          {
            v54 = (&unk_28480D370 + 16 * v51 + 32);
            v52 = *v54;
            v53 = v54[1];
            v55 = v50;
            v132 = v17;
            v133 = v14;
            v130 = v52;
            v131 = v53;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v50 = 1;
            v51 = 1;
            v14 = v127;
          }

          while ((v55 & 1) == 0);
          v16 = v49;
          a1 = v17;
          if (v49 == v11)
          {
            return a1;
          }

          goto LABEL_6;
        case 7:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v126 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v132 = 25180;
            v133 = 0xE200000000000000;

            v66 = sub_232CE9D20();

            v67 = [v63 escapedPatternForString_];

            v68 = sub_232CE9D50();
            v70 = v69;

            MEMORY[0x238391C30](v68, v70);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v71 = v132;
            v72 = v133;
            v73 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v74 = v72;
            v75 = v120;
            v76 = sub_232BA1978(v71, v74, 0);
            if (v75)
            {

              v120 = 0;
            }

            else
            {
              v77 = v76;
              v120 = 0;
              if (v76)
              {
                v130 = 15;
                v132 = v126;
                v133 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0, MEMORY[0x277D84338]);
                sub_232B48080();
                v78 = sub_232CEA320();
                v80 = v79;
                v81 = sub_232CE9D20();
                v42 = [v77 firstMatchInString:v81 options:0 range:{v78, v80}];

                if (v42)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 16;
            --v65;
          }

          while (v65);

          v12 = v122;
          a4 = v123;
LABEL_94:
          a1 = v17;
          goto LABEL_97;
        case 8:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v31 = sub_232CE9D20();
          v32 = v14;
          v33 = v31;
          if ((v32 & 0x1000000000000000) != 0)
          {
            v34 = sub_232CE9F10();
          }

          else
          {
            v34 = sub_232CE9F20();
          }

          v35 = v34;
          v36 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v37 = [v36 scanString:v33 range:0 configuration:{v35, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v38 = sub_232CE9FE0();

          if (v38 >> 62)
          {
            v39 = sub_232CEA610();
          }

          else
          {
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v17;
          if (!v39)
          {
            goto LABEL_34;
          }

          v40 = 0;
          v126 = v38 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x2383922C0](v40, v38);
            }

            else
            {
              if (v40 >= *(v126 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v41 = *(v38 + 8 * v40 + 32);
            }

            v42 = v41;
            v43 = v40 + 1;
            if (!__OFADD__(v40, 1))
            {
              [v41 urlificationRange];
              sub_232CEA110();
              if (v44)
              {
              }

              else
              {
                v45 = sub_232CE9FB0();
                MEMORY[0x238391B80](v45);

                if ([v42 category] == 4)
                {
                  v46 = sub_232B756EC(v42);

                  a1 = v17;
                  if (v46)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v17;
                }
              }

              ++v40;
              if (v43 == v39)
              {
LABEL_34:

                v11 = v124;
                v16 = v125;
                v30 = v125 == v124;
                v12 = v122;
                a4 = v123;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v125 = v16 + 1;
          a1 = v17;
          if (sub_232B72018(v17, v14, v121, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v14)
          {
            goto LABEL_97;
          }

          return a1;
        case 0xA:
          if (!v14)
          {
            return v17;
          }

          sub_232B486F4(v17, v14);
          v58 = v57;
          v14 = v59;

          v60 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v13 = v18;
          v30 = v18 == v11;
          a1 = v58;
          if (!v30)
          {
            continue;
          }

          return a1;
        default:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v132 = v17;
          v133 = v14;
          v82 = v118;
          sub_232CE89B0();
          sub_232B48080();
          v83 = sub_232CEA3A0();
          v85 = v84;
          (*v117[0])(v82, v119);
          v132 = v83;
          v133 = v85;
          v130 = 2847580;
          v131 = 0xE300000000000000;
          v128 = 32;
          v129 = 0xE100000000000000;
          v86 = sub_232CEA3B0();
          v88 = v87;

          v89 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v89 = v86 & 0xFFFFFFFFFFFFLL;
          }

          if (!v89)
          {
            goto LABEL_31;
          }

          v90 = sub_232C0D410(&unk_28480E6F8);
          v91 = sub_232CE9DD0();
          v93 = sub_232BA7F18(v91, v92, v90);
          a1 = v86;

          v127 = v88;
          if (v93)
          {
LABEL_109:

            return 0;
          }

LABEL_97:
          v11 = v124;
          v13 = v125;
          v14 = v127;
          if (v125 == v124)
          {
            return a1;
          }

          break;
      }
    }
  }

  return a1;
}

uint64_t sub_232B6C928(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v121 = a3;
  v134 = *MEMORY[0x277D85DE8];
  v119 = sub_232CE89D0();
  MEMORY[0x28223BE20](v119);
  v118 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 + 16);
  if (v11)
  {
    v12 = a5 + 32;
    v117[0] = v9 + 8;

    v13 = 0;
    v120 = 0;
    v123 = a4;
    v124 = v11;
    v122 = a5 + 32;
    v14 = a2;
    while (1)
    {
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = a1;
      }

      v117[1] = (v15 << 16) | 7;
      v16 = v13;
      v127 = v14;
LABEL_6:
      if (v16 >= v11)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v17 = a1;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_115;
      }

      switch(*(v12 + v16))
      {
        case 1:
          if (!v14)
          {
            return 0;
          }

          if (a4)
          {
            v125 = v16 + 1;
            v132 = sub_232CE9DD0();
            v133 = v109;
            v130 = sub_232CE9DD0();
            v131 = v110;
            sub_232B48080();
            v111 = sub_232CEA3F0();

            if (v111)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v14)
          {
            return 0;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v125 = v16 + 1;
          v19 = v118;
          sub_232CE89A0();
          v132 = sub_232CE9DD0();
          v133 = v20;
          sub_232B48080();
          v21 = sub_232CEA380();

          v132 = v21;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, MEMORY[0x277D83958]);
          v22 = sub_232CE9CD0();
          v24 = v23;

          v132 = sub_232CE9DD0();
          v133 = v25;
          v26 = sub_232CEA380();

          v132 = v26;
          v27 = sub_232CE9CD0();
          v29 = v28;

          v132 = v27;
          v133 = v29;
          v130 = v22;
          v131 = v24;
          LOBYTE(v27) = sub_232CEA3F0();
          (*v117[0])(v19, v119);

          if ((v27 & 1) == 0)
          {
            goto LABEL_109;
          }

          v11 = v124;
          v16 = v125;
          v30 = v125 == v124;
          v12 = v122;
          a4 = v123;
          goto LABEL_39;
        case 3:
          v125 = v16 + 1;
          a1 = v17;
          sub_232B714B8();
          if ((v56 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v14)
          {
            return v17;
          }

          v94 = v16 + 1;
          v95 = sub_232CE9D20();
          v96 = v14;
          v97 = v95;
          if ((v96 & 0x1000000000000000) != 0)
          {
            v98 = sub_232CE9F10();
          }

          else
          {
            v98 = sub_232CE9F20();
          }

          v99 = v98;
          v100 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v101 = [v100 scanString:v97 range:0 configuration:{v99, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v102 = sub_232CE9FE0();

          if (v102 >> 62)
          {
            v103 = sub_232CEA610();
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          v104 = 0;
          while (1)
          {
            if ((v102 & 0xC000000000000001) != 0)
            {
              v105 = MEMORY[0x2383922C0](v104, v102);
            }

            else
            {
              if (v104 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v105 = *(v102 + 8 * v104 + 32);
            }

            v106 = v105;
            v107 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v105 category] == 2)
            {
              v108 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v108)
              {
                break;
              }
            }

            ++v104;
            if (v107 == v103)
            {
              goto LABEL_31;
            }
          }

          v112 = v108;

          v113 = [v112 phoneNumber];
          a1 = sub_232CE9D50();
          v115 = v114;

          v14 = v115;
          a4 = v123;
          v11 = v124;
          v13 = v94;
          v12 = v122;
          if (v94 == v124)
          {
            return a1;
          }

          continue;
        case 5:
          if (!v14)
          {
            return 0;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v47 = sub_232B80670(v17, v14);
          v132 = 0;
          if (![v47 scanInteger_])
          {

            goto LABEL_109;
          }

          v48 = [v47 isAtEnd];

          if ((v48 & 1) == 0)
          {
            goto LABEL_109;
          }

          v16 = v18;
          v30 = v18 == v11;
LABEL_39:
          a1 = v17;
LABEL_40:
          v14 = v127;
          if (v30)
          {
            return a1;
          }

          goto LABEL_6;
        case 6:
          if (!v14)
          {
            return v17;
          }

          v49 = v16 + 1;
          sub_232B48080();
          v50 = 0;
          v51 = 0;
          do
          {
            v54 = (&unk_28480D370 + 16 * v51 + 32);
            v52 = *v54;
            v53 = v54[1];
            v55 = v50;
            v132 = v17;
            v133 = v14;
            v130 = v52;
            v131 = v53;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v50 = 1;
            v51 = 1;
            v14 = v127;
          }

          while ((v55 & 1) == 0);
          v16 = v49;
          a1 = v17;
          if (v49 == v11)
          {
            return a1;
          }

          goto LABEL_6;
        case 7:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v126 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v132 = 25180;
            v133 = 0xE200000000000000;

            v66 = sub_232CE9D20();

            v67 = [v63 escapedPatternForString_];

            v68 = sub_232CE9D50();
            v70 = v69;

            MEMORY[0x238391C30](v68, v70);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v71 = v132;
            v72 = v133;
            v73 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v74 = v72;
            v75 = v120;
            v76 = sub_232BA1978(v71, v74, 0);
            if (v75)
            {

              v120 = 0;
            }

            else
            {
              v77 = v76;
              v120 = 0;
              if (v76)
              {
                v130 = 15;
                v132 = v126;
                v133 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0, MEMORY[0x277D84338]);
                sub_232B48080();
                v78 = sub_232CEA320();
                v80 = v79;
                v81 = sub_232CE9D20();
                v42 = [v77 firstMatchInString:v81 options:0 range:{v78, v80}];

                if (v42)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 16;
            --v65;
          }

          while (v65);

          v12 = v122;
          a4 = v123;
LABEL_94:
          a1 = v17;
          goto LABEL_97;
        case 8:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v31 = sub_232CE9D20();
          v32 = v14;
          v33 = v31;
          if ((v32 & 0x1000000000000000) != 0)
          {
            v34 = sub_232CE9F10();
          }

          else
          {
            v34 = sub_232CE9F20();
          }

          v35 = v34;
          v36 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v37 = [v36 scanString:v33 range:0 configuration:{v35, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v38 = sub_232CE9FE0();

          if (v38 >> 62)
          {
            v39 = sub_232CEA610();
          }

          else
          {
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v17;
          if (!v39)
          {
            goto LABEL_34;
          }

          v40 = 0;
          v126 = v38 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x2383922C0](v40, v38);
            }

            else
            {
              if (v40 >= *(v126 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v41 = *(v38 + 8 * v40 + 32);
            }

            v42 = v41;
            v43 = v40 + 1;
            if (!__OFADD__(v40, 1))
            {
              [v41 urlificationRange];
              sub_232CEA110();
              if (v44)
              {
              }

              else
              {
                v45 = sub_232CE9FB0();
                MEMORY[0x238391B80](v45);

                if ([v42 category] == 4)
                {
                  v46 = sub_232B756EC(v42);

                  a1 = v17;
                  if (v46)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v17;
                }
              }

              ++v40;
              if (v43 == v39)
              {
LABEL_34:

                v11 = v124;
                v16 = v125;
                v30 = v125 == v124;
                v12 = v122;
                a4 = v123;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v125 = v16 + 1;
          a1 = v17;
          if (sub_232B72018(v17, v14, v121, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v14)
          {
            goto LABEL_97;
          }

          return a1;
        case 0xA:
          if (!v14)
          {
            return v17;
          }

          sub_232B486F4(v17, v14);
          v58 = v57;
          v14 = v59;

          v60 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v13 = v18;
          v30 = v18 == v11;
          a1 = v58;
          if (!v30)
          {
            continue;
          }

          return a1;
        default:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v132 = v17;
          v133 = v14;
          v82 = v118;
          sub_232CE89B0();
          sub_232B48080();
          v83 = sub_232CEA3A0();
          v85 = v84;
          (*v117[0])(v82, v119);
          v132 = v83;
          v133 = v85;
          v130 = 2847580;
          v131 = 0xE300000000000000;
          v128 = 32;
          v129 = 0xE100000000000000;
          v86 = sub_232CEA3B0();
          v88 = v87;

          v89 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v89 = v86 & 0xFFFFFFFFFFFFLL;
          }

          if (!v89)
          {
            goto LABEL_31;
          }

          v90 = sub_232C0D410(&unk_28480E968);
          v91 = sub_232CE9DD0();
          v93 = sub_232BA7F18(v91, v92, v90);
          a1 = v86;

          v127 = v88;
          if (v93)
          {
LABEL_109:

            return 0;
          }

LABEL_97:
          v11 = v124;
          v13 = v125;
          v14 = v127;
          if (v125 == v124)
          {
            return a1;
          }

          break;
      }
    }
  }

  return a1;
}

uint64_t sub_232B6D6C0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v121 = a3;
  v134 = *MEMORY[0x277D85DE8];
  v119 = sub_232CE89D0();
  MEMORY[0x28223BE20](v119);
  v118 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 + 16);
  if (v11)
  {
    v12 = a5 + 32;
    v117[0] = v9 + 8;

    v13 = 0;
    v120 = 0;
    v123 = a4;
    v124 = v11;
    v122 = a5 + 32;
    v14 = a2;
    while (1)
    {
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = a1;
      }

      v117[1] = (v15 << 16) | 7;
      v16 = v13;
      v127 = v14;
LABEL_6:
      if (v16 >= v11)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v17 = a1;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_115;
      }

      switch(*(v12 + v16))
      {
        case 1:
          if (!v14)
          {
            return 0;
          }

          if (a4)
          {
            v125 = v16 + 1;
            v132 = sub_232CE9DD0();
            v133 = v109;
            v130 = sub_232CE9DD0();
            v131 = v110;
            sub_232B48080();
            v111 = sub_232CEA3F0();

            if (v111)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v14)
          {
            return 0;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v125 = v16 + 1;
          v19 = v118;
          sub_232CE89A0();
          v132 = sub_232CE9DD0();
          v133 = v20;
          sub_232B48080();
          v21 = sub_232CEA380();

          v132 = v21;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, MEMORY[0x277D83958]);
          v22 = sub_232CE9CD0();
          v24 = v23;

          v132 = sub_232CE9DD0();
          v133 = v25;
          v26 = sub_232CEA380();

          v132 = v26;
          v27 = sub_232CE9CD0();
          v29 = v28;

          v132 = v27;
          v133 = v29;
          v130 = v22;
          v131 = v24;
          LOBYTE(v27) = sub_232CEA3F0();
          (*v117[0])(v19, v119);

          if ((v27 & 1) == 0)
          {
            goto LABEL_109;
          }

          v11 = v124;
          v16 = v125;
          v30 = v125 == v124;
          v12 = v122;
          a4 = v123;
          goto LABEL_39;
        case 3:
          v125 = v16 + 1;
          a1 = v17;
          sub_232B714B8();
          if ((v56 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v14)
          {
            return v17;
          }

          v94 = v16 + 1;
          v95 = sub_232CE9D20();
          v96 = v14;
          v97 = v95;
          if ((v96 & 0x1000000000000000) != 0)
          {
            v98 = sub_232CE9F10();
          }

          else
          {
            v98 = sub_232CE9F20();
          }

          v99 = v98;
          v100 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v101 = [v100 scanString:v97 range:0 configuration:{v99, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v102 = sub_232CE9FE0();

          if (v102 >> 62)
          {
            v103 = sub_232CEA610();
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          v104 = 0;
          while (1)
          {
            if ((v102 & 0xC000000000000001) != 0)
            {
              v105 = MEMORY[0x2383922C0](v104, v102);
            }

            else
            {
              if (v104 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v105 = *(v102 + 8 * v104 + 32);
            }

            v106 = v105;
            v107 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v105 category] == 2)
            {
              v108 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v108)
              {
                break;
              }
            }

            ++v104;
            if (v107 == v103)
            {
              goto LABEL_31;
            }
          }

          v112 = v108;

          v113 = [v112 phoneNumber];
          a1 = sub_232CE9D50();
          v115 = v114;

          v14 = v115;
          a4 = v123;
          v11 = v124;
          v13 = v94;
          v12 = v122;
          if (v94 == v124)
          {
            return a1;
          }

          continue;
        case 5:
          if (!v14)
          {
            return 0;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v47 = sub_232B80670(v17, v14);
          v132 = 0;
          if (![v47 scanInteger_])
          {

            goto LABEL_109;
          }

          v48 = [v47 isAtEnd];

          if ((v48 & 1) == 0)
          {
            goto LABEL_109;
          }

          v16 = v18;
          v30 = v18 == v11;
LABEL_39:
          a1 = v17;
LABEL_40:
          v14 = v127;
          if (v30)
          {
            return a1;
          }

          goto LABEL_6;
        case 6:
          if (!v14)
          {
            return v17;
          }

          v49 = v16 + 1;
          sub_232B48080();
          v50 = 0;
          v51 = 0;
          do
          {
            v54 = (&unk_28480D370 + 16 * v51 + 32);
            v52 = *v54;
            v53 = v54[1];
            v55 = v50;
            v132 = v17;
            v133 = v14;
            v130 = v52;
            v131 = v53;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v50 = 1;
            v51 = 1;
            v14 = v127;
          }

          while ((v55 & 1) == 0);
          v16 = v49;
          a1 = v17;
          if (v49 == v11)
          {
            return a1;
          }

          goto LABEL_6;
        case 7:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v126 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v132 = 25180;
            v133 = 0xE200000000000000;

            v66 = sub_232CE9D20();

            v67 = [v63 escapedPatternForString_];

            v68 = sub_232CE9D50();
            v70 = v69;

            MEMORY[0x238391C30](v68, v70);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v71 = v132;
            v72 = v133;
            v73 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v74 = v72;
            v75 = v120;
            v76 = sub_232BA1978(v71, v74, 0);
            if (v75)
            {

              v120 = 0;
            }

            else
            {
              v77 = v76;
              v120 = 0;
              if (v76)
              {
                v130 = 15;
                v132 = v126;
                v133 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0, MEMORY[0x277D84338]);
                sub_232B48080();
                v78 = sub_232CEA320();
                v80 = v79;
                v81 = sub_232CE9D20();
                v42 = [v77 firstMatchInString:v81 options:0 range:{v78, v80}];

                if (v42)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 16;
            --v65;
          }

          while (v65);

          v12 = v122;
          a4 = v123;
LABEL_94:
          a1 = v17;
          goto LABEL_97;
        case 8:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v31 = sub_232CE9D20();
          v32 = v14;
          v33 = v31;
          if ((v32 & 0x1000000000000000) != 0)
          {
            v34 = sub_232CE9F10();
          }

          else
          {
            v34 = sub_232CE9F20();
          }

          v35 = v34;
          v36 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v37 = [v36 scanString:v33 range:0 configuration:{v35, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v38 = sub_232CE9FE0();

          if (v38 >> 62)
          {
            v39 = sub_232CEA610();
          }

          else
          {
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v17;
          if (!v39)
          {
            goto LABEL_34;
          }

          v40 = 0;
          v126 = v38 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x2383922C0](v40, v38);
            }

            else
            {
              if (v40 >= *(v126 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v41 = *(v38 + 8 * v40 + 32);
            }

            v42 = v41;
            v43 = v40 + 1;
            if (!__OFADD__(v40, 1))
            {
              [v41 urlificationRange];
              sub_232CEA110();
              if (v44)
              {
              }

              else
              {
                v45 = sub_232CE9FB0();
                MEMORY[0x238391B80](v45);

                if ([v42 category] == 4)
                {
                  v46 = sub_232B756EC(v42);

                  a1 = v17;
                  if (v46)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v17;
                }
              }

              ++v40;
              if (v43 == v39)
              {
LABEL_34:

                v11 = v124;
                v16 = v125;
                v30 = v125 == v124;
                v12 = v122;
                a4 = v123;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v125 = v16 + 1;
          a1 = v17;
          if (sub_232B72018(v17, v14, v121, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v14)
          {
            goto LABEL_97;
          }

          return a1;
        case 0xA:
          if (!v14)
          {
            return v17;
          }

          sub_232B486F4(v17, v14);
          v58 = v57;
          v14 = v59;

          v60 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v13 = v18;
          v30 = v18 == v11;
          a1 = v58;
          if (!v30)
          {
            continue;
          }

          return a1;
        default:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v132 = v17;
          v133 = v14;
          v82 = v118;
          sub_232CE89B0();
          sub_232B48080();
          v83 = sub_232CEA3A0();
          v85 = v84;
          (*v117[0])(v82, v119);
          v132 = v83;
          v133 = v85;
          v130 = 2847580;
          v131 = 0xE300000000000000;
          v128 = 32;
          v129 = 0xE100000000000000;
          v86 = sub_232CEA3B0();
          v88 = v87;

          v89 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v89 = v86 & 0xFFFFFFFFFFFFLL;
          }

          if (!v89)
          {
            goto LABEL_31;
          }

          v90 = sub_232C0D410(&unk_28480EC00);
          v91 = sub_232CE9DD0();
          v93 = sub_232BA7F18(v91, v92, v90);
          a1 = v86;

          v127 = v88;
          if (v93)
          {
LABEL_109:

            return 0;
          }

LABEL_97:
          v11 = v124;
          v13 = v125;
          v14 = v127;
          if (v125 == v124)
          {
            return a1;
          }

          break;
      }
    }
  }

  return a1;
}

uint64_t sub_232B6E458(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v121 = a3;
  v134 = *MEMORY[0x277D85DE8];
  v119 = sub_232CE89D0();
  MEMORY[0x28223BE20](v119);
  v118 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 + 16);
  if (v11)
  {
    v12 = a5 + 32;
    v117[0] = v9 + 8;

    v13 = 0;
    v120 = 0;
    v123 = a4;
    v124 = v11;
    v122 = a5 + 32;
    v14 = a2;
    while (1)
    {
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = a1;
      }

      v117[1] = (v15 << 16) | 7;
      v16 = v13;
      v127 = v14;
LABEL_6:
      if (v16 >= v11)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v17 = a1;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_115;
      }

      switch(*(v12 + v16))
      {
        case 1:
          if (!v14)
          {
            return 0;
          }

          if (a4)
          {
            v125 = v16 + 1;
            v132 = sub_232CE9DD0();
            v133 = v109;
            v130 = sub_232CE9DD0();
            v131 = v110;
            sub_232B48080();
            v111 = sub_232CEA3F0();

            if (v111)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v14)
          {
            return 0;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v125 = v16 + 1;
          v19 = v118;
          sub_232CE89A0();
          v132 = sub_232CE9DD0();
          v133 = v20;
          sub_232B48080();
          v21 = sub_232CEA380();

          v132 = v21;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, MEMORY[0x277D83958]);
          v22 = sub_232CE9CD0();
          v24 = v23;

          v132 = sub_232CE9DD0();
          v133 = v25;
          v26 = sub_232CEA380();

          v132 = v26;
          v27 = sub_232CE9CD0();
          v29 = v28;

          v132 = v27;
          v133 = v29;
          v130 = v22;
          v131 = v24;
          LOBYTE(v27) = sub_232CEA3F0();
          (*v117[0])(v19, v119);

          if ((v27 & 1) == 0)
          {
            goto LABEL_109;
          }

          v11 = v124;
          v16 = v125;
          v30 = v125 == v124;
          v12 = v122;
          a4 = v123;
          goto LABEL_39;
        case 3:
          v125 = v16 + 1;
          a1 = v17;
          sub_232B714B8();
          if ((v56 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v14)
          {
            return v17;
          }

          v94 = v16 + 1;
          v95 = sub_232CE9D20();
          v96 = v14;
          v97 = v95;
          if ((v96 & 0x1000000000000000) != 0)
          {
            v98 = sub_232CE9F10();
          }

          else
          {
            v98 = sub_232CE9F20();
          }

          v99 = v98;
          v100 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v101 = [v100 scanString:v97 range:0 configuration:{v99, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v102 = sub_232CE9FE0();

          if (v102 >> 62)
          {
            v103 = sub_232CEA610();
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          v104 = 0;
          while (1)
          {
            if ((v102 & 0xC000000000000001) != 0)
            {
              v105 = MEMORY[0x2383922C0](v104, v102);
            }

            else
            {
              if (v104 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v105 = *(v102 + 8 * v104 + 32);
            }

            v106 = v105;
            v107 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v105 category] == 2)
            {
              v108 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v108)
              {
                break;
              }
            }

            ++v104;
            if (v107 == v103)
            {
              goto LABEL_31;
            }
          }

          v112 = v108;

          v113 = [v112 phoneNumber];
          a1 = sub_232CE9D50();
          v115 = v114;

          v14 = v115;
          a4 = v123;
          v11 = v124;
          v13 = v94;
          v12 = v122;
          if (v94 == v124)
          {
            return a1;
          }

          continue;
        case 5:
          if (!v14)
          {
            return 0;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v47 = sub_232B80670(v17, v14);
          v132 = 0;
          if (![v47 scanInteger_])
          {

            goto LABEL_109;
          }

          v48 = [v47 isAtEnd];

          if ((v48 & 1) == 0)
          {
            goto LABEL_109;
          }

          v16 = v18;
          v30 = v18 == v11;
LABEL_39:
          a1 = v17;
LABEL_40:
          v14 = v127;
          if (v30)
          {
            return a1;
          }

          goto LABEL_6;
        case 6:
          if (!v14)
          {
            return v17;
          }

          v49 = v16 + 1;
          sub_232B48080();
          v50 = 0;
          v51 = 0;
          do
          {
            v54 = (&unk_28480D370 + 16 * v51 + 32);
            v52 = *v54;
            v53 = v54[1];
            v55 = v50;
            v132 = v17;
            v133 = v14;
            v130 = v52;
            v131 = v53;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v50 = 1;
            v51 = 1;
            v14 = v127;
          }

          while ((v55 & 1) == 0);
          v16 = v49;
          a1 = v17;
          if (v49 == v11)
          {
            return a1;
          }

          goto LABEL_6;
        case 7:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v126 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v132 = 25180;
            v133 = 0xE200000000000000;

            v66 = sub_232CE9D20();

            v67 = [v63 escapedPatternForString_];

            v68 = sub_232CE9D50();
            v70 = v69;

            MEMORY[0x238391C30](v68, v70);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v71 = v132;
            v72 = v133;
            v73 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v74 = v72;
            v75 = v120;
            v76 = sub_232BA1978(v71, v74, 0);
            if (v75)
            {

              v120 = 0;
            }

            else
            {
              v77 = v76;
              v120 = 0;
              if (v76)
              {
                v130 = 15;
                v132 = v126;
                v133 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0, MEMORY[0x277D84338]);
                sub_232B48080();
                v78 = sub_232CEA320();
                v80 = v79;
                v81 = sub_232CE9D20();
                v42 = [v77 firstMatchInString:v81 options:0 range:{v78, v80}];

                if (v42)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 16;
            --v65;
          }

          while (v65);

          v12 = v122;
          a4 = v123;
LABEL_94:
          a1 = v17;
          goto LABEL_97;
        case 8:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v31 = sub_232CE9D20();
          v32 = v14;
          v33 = v31;
          if ((v32 & 0x1000000000000000) != 0)
          {
            v34 = sub_232CE9F10();
          }

          else
          {
            v34 = sub_232CE9F20();
          }

          v35 = v34;
          v36 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v37 = [v36 scanString:v33 range:0 configuration:{v35, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v38 = sub_232CE9FE0();

          if (v38 >> 62)
          {
            v39 = sub_232CEA610();
          }

          else
          {
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v17;
          if (!v39)
          {
            goto LABEL_34;
          }

          v40 = 0;
          v126 = v38 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x2383922C0](v40, v38);
            }

            else
            {
              if (v40 >= *(v126 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v41 = *(v38 + 8 * v40 + 32);
            }

            v42 = v41;
            v43 = v40 + 1;
            if (!__OFADD__(v40, 1))
            {
              [v41 urlificationRange];
              sub_232CEA110();
              if (v44)
              {
              }

              else
              {
                v45 = sub_232CE9FB0();
                MEMORY[0x238391B80](v45);

                if ([v42 category] == 4)
                {
                  v46 = sub_232B756EC(v42);

                  a1 = v17;
                  if (v46)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v17;
                }
              }

              ++v40;
              if (v43 == v39)
              {
LABEL_34:

                v11 = v124;
                v16 = v125;
                v30 = v125 == v124;
                v12 = v122;
                a4 = v123;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v125 = v16 + 1;
          a1 = v17;
          if (sub_232B72018(v17, v14, v121, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v14)
          {
            goto LABEL_97;
          }

          return a1;
        case 0xA:
          if (!v14)
          {
            return v17;
          }

          sub_232B486F4(v17, v14);
          v58 = v57;
          v14 = v59;

          v60 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v13 = v18;
          v30 = v18 == v11;
          a1 = v58;
          if (!v30)
          {
            continue;
          }

          return a1;
        default:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v132 = v17;
          v133 = v14;
          v82 = v118;
          sub_232CE89B0();
          sub_232B48080();
          v83 = sub_232CEA3A0();
          v85 = v84;
          (*v117[0])(v82, v119);
          v132 = v83;
          v133 = v85;
          v130 = 2847580;
          v131 = 0xE300000000000000;
          v128 = 32;
          v129 = 0xE100000000000000;
          v86 = sub_232CEA3B0();
          v88 = v87;

          v89 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v89 = v86 & 0xFFFFFFFFFFFFLL;
          }

          if (!v89)
          {
            goto LABEL_31;
          }

          v90 = sub_232C0D410(&unk_28480EDD0);
          v91 = sub_232CE9DD0();
          v93 = sub_232BA7F18(v91, v92, v90);
          a1 = v86;

          v127 = v88;
          if (v93)
          {
LABEL_109:

            return 0;
          }

LABEL_97:
          v11 = v124;
          v13 = v125;
          v14 = v127;
          if (v125 == v124)
          {
            return a1;
          }

          break;
      }
    }
  }

  return a1;
}

uint64_t sub_232B6F1F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v121 = a3;
  v134 = *MEMORY[0x277D85DE8];
  v119 = sub_232CE89D0();
  MEMORY[0x28223BE20](v119);
  v118 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 + 16);
  if (v11)
  {
    v12 = a5 + 32;
    v117[0] = v9 + 8;

    v13 = 0;
    v120 = 0;
    v123 = a4;
    v124 = v11;
    v122 = a5 + 32;
    v14 = a2;
    while (1)
    {
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = a1;
      }

      v117[1] = (v15 << 16) | 7;
      v16 = v13;
      v127 = v14;
LABEL_6:
      if (v16 >= v11)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v17 = a1;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_115;
      }

      switch(*(v12 + v16))
      {
        case 1:
          if (!v14)
          {
            return 0;
          }

          if (a4)
          {
            v125 = v16 + 1;
            v132 = sub_232CE9DD0();
            v133 = v109;
            v130 = sub_232CE9DD0();
            v131 = v110;
            sub_232B48080();
            v111 = sub_232CEA3F0();

            if (v111)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v14)
          {
            return 0;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v125 = v16 + 1;
          v19 = v118;
          sub_232CE89A0();
          v132 = sub_232CE9DD0();
          v133 = v20;
          sub_232B48080();
          v21 = sub_232CEA380();

          v132 = v21;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, MEMORY[0x277D83958]);
          v22 = sub_232CE9CD0();
          v24 = v23;

          v132 = sub_232CE9DD0();
          v133 = v25;
          v26 = sub_232CEA380();

          v132 = v26;
          v27 = sub_232CE9CD0();
          v29 = v28;

          v132 = v27;
          v133 = v29;
          v130 = v22;
          v131 = v24;
          LOBYTE(v27) = sub_232CEA3F0();
          (*v117[0])(v19, v119);

          if ((v27 & 1) == 0)
          {
            goto LABEL_109;
          }

          v11 = v124;
          v16 = v125;
          v30 = v125 == v124;
          v12 = v122;
          a4 = v123;
          goto LABEL_39;
        case 3:
          v125 = v16 + 1;
          a1 = v17;
          sub_232B714B8();
          if ((v56 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v14)
          {
            return v17;
          }

          v94 = v16 + 1;
          v95 = sub_232CE9D20();
          v96 = v14;
          v97 = v95;
          if ((v96 & 0x1000000000000000) != 0)
          {
            v98 = sub_232CE9F10();
          }

          else
          {
            v98 = sub_232CE9F20();
          }

          v99 = v98;
          v100 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v101 = [v100 scanString:v97 range:0 configuration:{v99, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v102 = sub_232CE9FE0();

          if (v102 >> 62)
          {
            v103 = sub_232CEA610();
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v103)
            {
              goto LABEL_31;
            }
          }

          v104 = 0;
          while (1)
          {
            if ((v102 & 0xC000000000000001) != 0)
            {
              v105 = MEMORY[0x2383922C0](v104, v102);
            }

            else
            {
              if (v104 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v105 = *(v102 + 8 * v104 + 32);
            }

            v106 = v105;
            v107 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v105 category] == 2)
            {
              v108 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v108)
              {
                break;
              }
            }

            ++v104;
            if (v107 == v103)
            {
              goto LABEL_31;
            }
          }

          v112 = v108;

          v113 = [v112 phoneNumber];
          a1 = sub_232CE9D50();
          v115 = v114;

          v14 = v115;
          a4 = v123;
          v11 = v124;
          v13 = v94;
          v12 = v122;
          if (v94 == v124)
          {
            return a1;
          }

          continue;
        case 5:
          if (!v14)
          {
            return 0;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v47 = sub_232B80670(v17, v14);
          v132 = 0;
          if (![v47 scanInteger_])
          {

            goto LABEL_109;
          }

          v48 = [v47 isAtEnd];

          if ((v48 & 1) == 0)
          {
            goto LABEL_109;
          }

          v16 = v18;
          v30 = v18 == v11;
LABEL_39:
          a1 = v17;
LABEL_40:
          v14 = v127;
          if (v30)
          {
            return a1;
          }

          goto LABEL_6;
        case 6:
          if (!v14)
          {
            return v17;
          }

          v49 = v16 + 1;
          sub_232B48080();
          v50 = 0;
          v51 = 0;
          do
          {
            v54 = (&unk_28480D370 + 16 * v51 + 32);
            v52 = *v54;
            v53 = v54[1];
            v55 = v50;
            v132 = v17;
            v133 = v14;
            v130 = v52;
            v131 = v53;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v50 = 1;
            v51 = 1;
            v14 = v127;
          }

          while ((v55 & 1) == 0);
          v16 = v49;
          a1 = v17;
          if (v49 == v11)
          {
            return a1;
          }

          goto LABEL_6;
        case 7:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v126 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v132 = 25180;
            v133 = 0xE200000000000000;

            v66 = sub_232CE9D20();

            v67 = [v63 escapedPatternForString_];

            v68 = sub_232CE9D50();
            v70 = v69;

            MEMORY[0x238391C30](v68, v70);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v71 = v132;
            v72 = v133;
            v73 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v74 = v72;
            v75 = v120;
            v76 = sub_232BA1978(v71, v74, 0);
            if (v75)
            {

              v120 = 0;
            }

            else
            {
              v77 = v76;
              v120 = 0;
              if (v76)
              {
                v130 = 15;
                v132 = v126;
                v133 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0, MEMORY[0x277D84338]);
                sub_232B48080();
                v78 = sub_232CEA320();
                v80 = v79;
                v81 = sub_232CE9D20();
                v42 = [v77 firstMatchInString:v81 options:0 range:{v78, v80}];

                if (v42)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 16;
            --v65;
          }

          while (v65);

          v12 = v122;
          a4 = v123;
LABEL_94:
          a1 = v17;
          goto LABEL_97;
        case 8:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v31 = sub_232CE9D20();
          v32 = v14;
          v33 = v31;
          if ((v32 & 0x1000000000000000) != 0)
          {
            v34 = sub_232CE9F10();
          }

          else
          {
            v34 = sub_232CE9F20();
          }

          v35 = v34;
          v36 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v37 = [v36 scanString:v33 range:0 configuration:{v35, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v38 = sub_232CE9FE0();

          if (v38 >> 62)
          {
            v39 = sub_232CEA610();
          }

          else
          {
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v17;
          if (!v39)
          {
            goto LABEL_34;
          }

          v40 = 0;
          v126 = v38 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x2383922C0](v40, v38);
            }

            else
            {
              if (v40 >= *(v126 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v41 = *(v38 + 8 * v40 + 32);
            }

            v42 = v41;
            v43 = v40 + 1;
            if (!__OFADD__(v40, 1))
            {
              [v41 urlificationRange];
              sub_232CEA110();
              if (v44)
              {
              }

              else
              {
                v45 = sub_232CE9FB0();
                MEMORY[0x238391B80](v45);

                if ([v42 category] == 4)
                {
                  v46 = sub_232B75D18(v42);

                  a1 = v17;
                  if (v46)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v17;
                }
              }

              ++v40;
              if (v43 == v39)
              {
LABEL_34:

                v11 = v124;
                v16 = v125;
                v30 = v125 == v124;
                v12 = v122;
                a4 = v123;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v125 = v16 + 1;
          a1 = v17;
          if (sub_232B72018(v17, v14, v121, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v14)
          {
            goto LABEL_97;
          }

          return a1;
        case 0xA:
          if (!v14)
          {
            return v17;
          }

          sub_232B486F4(v17, v14);
          v58 = v57;
          v14 = v59;

          v60 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v13 = v18;
          v30 = v18 == v11;
          a1 = v58;
          if (!v30)
          {
            continue;
          }

          return a1;
        default:
          if (!v14)
          {
            return v17;
          }

          v125 = v16 + 1;
          v132 = v17;
          v133 = v14;
          v82 = v118;
          sub_232CE89B0();
          sub_232B48080();
          v83 = sub_232CEA3A0();
          v85 = v84;
          (*v117[0])(v82, v119);
          v132 = v83;
          v133 = v85;
          v130 = 2847580;
          v131 = 0xE300000000000000;
          v128 = 32;
          v129 = 0xE100000000000000;
          v86 = sub_232CEA3B0();
          v88 = v87;

          v89 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v89 = v86 & 0xFFFFFFFFFFFFLL;
          }

          if (!v89)
          {
            goto LABEL_31;
          }

          v90 = sub_232C0D410(&unk_28480F188);
          v91 = sub_232CE9DD0();
          v93 = sub_232BA7F18(v91, v92, v90);
          a1 = v86;

          v127 = v88;
          if (v93)
          {
LABEL_109:

            return 0;
          }

LABEL_97:
          v11 = v124;
          v13 = v125;
          v14 = v127;
          if (v125 == v124)
          {
            return a1;
          }

          break;
      }
    }
  }

  return a1;
}

void sub_232B6FF88()
{
  sub_232B35110();
  sub_232BA6998(v5, v6, v7);
  v102 = *MEMORY[0x277D85DE8];
  sub_232CE89D0();
  sub_232BA64E0();
  MEMORY[0x28223BE20](v8);
  sub_232BA64CC();
  v10 = *(v1 + 16);
  if (!v10)
  {

    goto LABEL_103;
  }

  sub_232BA7334(v9);
  v95 = v4;
  v96 = v10;
  v94 = v3;
  v11 = v0;
  while (2)
  {
    sub_232BA676C();
LABEL_4:
    if (v12 >= v10)
    {
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_29:

      goto LABEL_102;
    }

    v14 = v2;
    v2 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_108;
    }

    switch(*(v3 + v12))
    {
      case 1:
        if (!v11)
        {
          goto LABEL_103;
        }

        if (v4)
        {
          v97 = v12 + 1;
          v86 = sub_232BA73AC();
          sub_232BA6C98(v86, v87);
          sub_232B2080C();
          sub_232CE9DD0();
          sub_232B48080();
          sub_232BA5A3C();
          v88 = sub_232CEA3F0();

          if (v88)
          {
            goto LABEL_86;
          }
        }

        goto LABEL_102;
      case 2:
        if (!v11)
        {
          goto LABEL_103;
        }

        if (!v4)
        {
          goto LABEL_102;
        }

        v97 = v12 + 1;
        sub_232CE89A0();
        sub_232B2080C();
        v15 = sub_232CE9DD0();
        sub_232BA6C98(v15, v16);
        v10 = sub_232B48080();
        sub_232BA678C();
        v17 = sub_232CEA380();

        v100 = v17;
        sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
        sub_232BA5560();
        sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, v18);
        sub_232BA62D4();

        v19 = sub_232BA73AC();
        v21 = v20;
        v100 = v19;
        v101 = v20;
        v22 = sub_232CEA380();

        v100 = v22;
        sub_232BA62D4();
        sub_232BA6210();

        v100 = &v100;
        v101 = v21;
        sub_232BA5A3C();
        sub_232CEA3F0();
        v23 = sub_232BA6D10();
        v24(v23);

        if ((&v100 & 1) == 0)
        {
          goto LABEL_102;
        }

        sub_232BA6364();
        v3 = v94;
        v4 = v95;
        goto LABEL_37;
      case 3:
        v97 = v12 + 1;
        sub_232BA5BC0();
        sub_232B714B8();
        if ((v47 & 1) == 0)
        {
          goto LABEL_102;
        }

        goto LABEL_88;
      case 4:
        if (!v11)
        {
          goto LABEL_103;
        }

        sub_232B2080C();
        sub_232CE9D20();
        sub_232BA71A4();
        if ((v77 & 0x1000000000000000) != 0)
        {
          sub_232CE9F10();
        }

        else
        {
          sub_232CE9F20();
        }

        v78 = objc_opt_self();
        if (qword_27DDC6368 != -1)
        {
          sub_232BA506C();
          v78 = swift_once();
        }

        v79 = sub_232BA5E44(v78, sel_scanString_range_configuration_);

        v80 = sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
        v81 = sub_232BA6E54(v80);

        if (v81 >> 62)
        {
          v82 = sub_232BA6DC4();
          if (!v82)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v82)
          {
            goto LABEL_29;
          }
        }

        v10 = 0;
        while (1)
        {
          if ((v81 & 0xC000000000000001) != 0)
          {
            v83 = sub_232BA71E8();
            v84 = MEMORY[0x2383922C0](v83);
          }

          else
          {
            if (v10 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_111;
            }

            v84 = *(v81 + 8 * v10 + 32);
          }

          v3 = v84;
          v4 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_111:
            __break(1u);
          }

          if ([v84 category] == 2)
          {
            v85 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
            if (v85)
            {
              break;
            }
          }

          ++v10;
          if (v4 == v82)
          {
            goto LABEL_29;
          }
        }

        v93 = v85;

        v11 = [v93 phoneNumber];
        v2 = sub_232CE9D50();

        sub_232BA6C5C();
        if (v25)
        {
          goto LABEL_103;
        }

        continue;
      case 5:
        if (!v11)
        {
          goto LABEL_103;
        }

        sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

        v39 = sub_232BA5FEC();
        v41 = sub_232B80670(v39, v40);
        v100 = 0;
        if ([v41 scanInteger_])
        {
          v42 = [v41 isAtEnd];

          if ((v42 & 1) == 0)
          {
            goto LABEL_102;
          }

          v12 = v2;
          v25 = v2 == v10;
LABEL_37:
          v2 = v14;
LABEL_38:
          v11 = v99;
          if (v25)
          {
            goto LABEL_103;
          }

          goto LABEL_4;
        }

LABEL_102:

LABEL_103:
        sub_232BA67F4();
        sub_232B20A00();
        return;
      case 6:
        if (!v11)
        {
          goto LABEL_103;
        }

        v43 = v12 + 1;
        sub_232B48080();
        sub_232BA6B3C();
        do
        {
          sub_232BA6ADC();
          v100 = v14;
          v101 = v11;
          v44 = sub_232BA5A3C();
          if (sub_232BA73F4(v44, v45, v46))
          {
            goto LABEL_102;
          }

          v11 = v99;
        }

        while ((v2 & 1) == 0);
        v12 = v2;
        v2 = v14;
        if (v43 == v10)
        {
          goto LABEL_103;
        }

        goto LABEL_4;
      case 7:
        if (!v11)
        {
          goto LABEL_103;
        }

        v97 = v12 + 1;
        sub_232B2080C();
        v98 = sub_232CE9DD0();
        objc_opt_self();
        v52 = &unk_28480D3D8;
        v53 = 25;
        do
        {
          v54 = *(v52 - 1);
          sub_232BA63EC();
          sub_232CE9D20();
          sub_232B26D70();

          v55 = sub_232BA69D8();
          v57 = [v55 v56];

          sub_232CE9D50();
          sub_232BA5EAC();

          v58 = sub_232B41C8C();
          MEMORY[0x238391C30](v58);

          sub_232BA73C4();
          v59 = objc_allocWithZone(MEMORY[0x277CCAC68]);
          v60 = sub_232BA6110();
          v63 = sub_232BA1978(v60, v61, v62);
          if (v63)
          {
            sub_232BA6DE0();
            sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
            sub_232BA5548();
            sub_232BA67C8();
            sub_232B48E4C(v64, v65, v66, v67);
            sub_232B48080();
            sub_232BA63A8();
            sub_232CEA320();
            sub_232BA5EAC();
            v68 = sub_232CE9D20();
            v33 = sub_232BA6E6C(v63, sel_firstMatchInString_options_range_, v68);

            if (v33)
            {
              goto LABEL_105;
            }
          }

          v52 += 2;
          --v53;
        }

        while (v53);

        v3 = v94;
        v4 = v95;
LABEL_86:
        v2 = v14;
LABEL_89:
        v10 = v96;
        v11 = v99;
        if (v97 == v96)
        {
          goto LABEL_103;
        }

        continue;
      case 8:
        if (!v11)
        {
          goto LABEL_103;
        }

        v97 = v12 + 1;
        sub_232B2080C();
        sub_232CE9D20();
        sub_232BA71A4();
        if ((v26 & 0x1000000000000000) != 0)
        {
          sub_232CE9F10();
        }

        else
        {
          sub_232CE9F20();
        }

        v27 = objc_opt_self();
        if (qword_27DDC6368 != -1)
        {
          sub_232BA506C();
          v27 = swift_once();
        }

        v28 = sub_232BA5E44(v27, sel_scanString_range_configuration_);

        v29 = sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
        v10 = sub_232BA6E54(v29);

        if (v10 >> 62)
        {
          v30 = sub_232CEA610();
        }

        else
        {
          v30 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v2 = v14;
        if (!v30)
        {
          goto LABEL_32;
        }

        sub_232BA706C();
        while (2)
        {
          if (v4)
          {
            v31 = sub_232BA5C94();
            v32 = MEMORY[0x2383922C0](v31);
          }

          else
          {
            if (v3 >= *(v98 + 16))
            {
              __break(1u);
              goto LABEL_107;
            }

            v32 = *(v10 + 8 * v3 + 32);
          }

          v33 = v32;
          v34 = (v3 + 1);
          if (!__OFADD__(v3, 1))
          {
            [v32 urlificationRange];
            sub_232BA7200();
            sub_232CEA110();
            if (v35)
            {
            }

            else
            {
              sub_232BA7200();
              v36 = sub_232CE9FB0();
              MEMORY[0x238391B80](v36);
              sub_232BA6210();

              if ([v33 category] == 4)
              {
                sub_232BA67A4();
                v38 = sub_232B756EC(v37);

                v2 = v14;
                if (v38)
                {
                  goto LABEL_29;
                }
              }

              else
              {

                v2 = v14;
              }
            }

            ++v3;
            if (v34 == v30)
            {
LABEL_32:

              sub_232BA6364();
              v3 = v94;
              v4 = v95;
              goto LABEL_38;
            }

            continue;
          }

          break;
        }

        __break(1u);
LABEL_105:

        goto LABEL_102;
      case 9:
        v97 = v12 + 1;
        v89 = sub_232BA5BC0();
        if (sub_232B72018(v89, v90, v91, v92))
        {
          goto LABEL_102;
        }

LABEL_88:
        if (v11)
        {
          goto LABEL_89;
        }

        goto LABEL_103;
      case 0xA:
        if (!v11)
        {
          goto LABEL_103;
        }

        v48 = sub_232B2080C();
        sub_232B486F4(v48, v49);
        sub_232B26D00();
        v11 = v50;

        sub_232BA5FC4();
        if (!v51)
        {
          goto LABEL_102;
        }

        v25 = v2 == v10;
        v2 = v14;
        if (!v25)
        {
          continue;
        }

        goto LABEL_103;
      default:
        if (!v11)
        {
          goto LABEL_103;
        }

        sub_232BA7314(v13);
        v69 = sub_232B48080();
        sub_232BA6BBC(v69);
        sub_232BA6210();
        v70 = sub_232BA7080();
        v71(v70);
        sub_232BA57C8();
        sub_232BA6388();
        sub_232CEA3B0();
        sub_232BA7354();
        sub_232BA5FC4();
        if (!v72)
        {
          goto LABEL_29;
        }

        v73 = sub_232C0D410(&unk_28480F4A0);
        sub_232B2080C();
        v74 = sub_232CE9DD0();
        v76 = sub_232BA7F18(v74, v75, v73);
        v2 = v14;

        v99 = v11;
        if (v76)
        {
          goto LABEL_102;
        }

        goto LABEL_89;
    }
  }
}

void sub_232B70A14()
{
  sub_232B35110();
  sub_232BA6998(v5, v6, v7);
  v102 = *MEMORY[0x277D85DE8];
  sub_232CE89D0();
  sub_232BA64E0();
  MEMORY[0x28223BE20](v8);
  sub_232BA64CC();
  v10 = *(v1 + 16);
  if (!v10)
  {

    goto LABEL_103;
  }

  sub_232BA7334(v9);
  v95 = v4;
  v96 = v10;
  v94 = v3;
  v11 = v0;
  while (2)
  {
    sub_232BA676C();
LABEL_4:
    if (v12 >= v10)
    {
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_29:

      goto LABEL_102;
    }

    v14 = v2;
    v2 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_108;
    }

    switch(*(v3 + v12))
    {
      case 1:
        if (!v11)
        {
          goto LABEL_103;
        }

        if (v4)
        {
          v97 = v12 + 1;
          v86 = sub_232BA73AC();
          sub_232BA6C98(v86, v87);
          sub_232B2080C();
          sub_232CE9DD0();
          sub_232B48080();
          sub_232BA5A3C();
          v88 = sub_232CEA3F0();

          if (v88)
          {
            goto LABEL_86;
          }
        }

        goto LABEL_102;
      case 2:
        if (!v11)
        {
          goto LABEL_103;
        }

        if (!v4)
        {
          goto LABEL_102;
        }

        v97 = v12 + 1;
        sub_232CE89A0();
        sub_232B2080C();
        v15 = sub_232CE9DD0();
        sub_232BA6C98(v15, v16);
        v10 = sub_232B48080();
        sub_232BA678C();
        v17 = sub_232CEA380();

        v100 = v17;
        sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
        sub_232BA5560();
        sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, v18);
        sub_232BA62D4();

        v19 = sub_232BA73AC();
        v21 = v20;
        v100 = v19;
        v101 = v20;
        v22 = sub_232CEA380();

        v100 = v22;
        sub_232BA62D4();
        sub_232BA6210();

        v100 = &v100;
        v101 = v21;
        sub_232BA5A3C();
        sub_232CEA3F0();
        v23 = sub_232BA6D10();
        v24(v23);

        if ((&v100 & 1) == 0)
        {
          goto LABEL_102;
        }

        sub_232BA6364();
        v3 = v94;
        v4 = v95;
        goto LABEL_37;
      case 3:
        v97 = v12 + 1;
        sub_232BA5BC0();
        sub_232B714B8();
        if ((v47 & 1) == 0)
        {
          goto LABEL_102;
        }

        goto LABEL_88;
      case 4:
        if (!v11)
        {
          goto LABEL_103;
        }

        sub_232B2080C();
        sub_232CE9D20();
        sub_232BA71A4();
        if ((v77 & 0x1000000000000000) != 0)
        {
          sub_232CE9F10();
        }

        else
        {
          sub_232CE9F20();
        }

        v78 = objc_opt_self();
        if (qword_27DDC6368 != -1)
        {
          sub_232BA506C();
          v78 = swift_once();
        }

        v79 = sub_232BA5E44(v78, sel_scanString_range_configuration_);

        v80 = sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
        v81 = sub_232BA6E54(v80);

        if (v81 >> 62)
        {
          v82 = sub_232BA6DC4();
          if (!v82)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v82)
          {
            goto LABEL_29;
          }
        }

        v10 = 0;
        while (1)
        {
          if ((v81 & 0xC000000000000001) != 0)
          {
            v83 = sub_232BA71E8();
            v84 = MEMORY[0x2383922C0](v83);
          }

          else
          {
            if (v10 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_111;
            }

            v84 = *(v81 + 8 * v10 + 32);
          }

          v3 = v84;
          v4 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_111:
            __break(1u);
          }

          if ([v84 category] == 2)
          {
            v85 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
            if (v85)
            {
              break;
            }
          }

          ++v10;
          if (v4 == v82)
          {
            goto LABEL_29;
          }
        }

        v93 = v85;

        v11 = [v93 phoneNumber];
        v2 = sub_232CE9D50();

        sub_232BA6C5C();
        if (v25)
        {
          goto LABEL_103;
        }

        continue;
      case 5:
        if (!v11)
        {
          goto LABEL_103;
        }

        sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

        v39 = sub_232BA5FEC();
        v41 = sub_232B80670(v39, v40);
        v100 = 0;
        if ([v41 scanInteger_])
        {
          v42 = [v41 isAtEnd];

          if ((v42 & 1) == 0)
          {
            goto LABEL_102;
          }

          v12 = v2;
          v25 = v2 == v10;
LABEL_37:
          v2 = v14;
LABEL_38:
          v11 = v99;
          if (v25)
          {
            goto LABEL_103;
          }

          goto LABEL_4;
        }

LABEL_102:

LABEL_103:
        sub_232BA67F4();
        sub_232B20A00();
        return;
      case 6:
        if (!v11)
        {
          goto LABEL_103;
        }

        v43 = v12 + 1;
        sub_232B48080();
        sub_232BA6B3C();
        do
        {
          sub_232BA6ADC();
          v100 = v14;
          v101 = v11;
          v44 = sub_232BA5A3C();
          if (sub_232BA73F4(v44, v45, v46))
          {
            goto LABEL_102;
          }

          v11 = v99;
        }

        while ((v2 & 1) == 0);
        v12 = v2;
        v2 = v14;
        if (v43 == v10)
        {
          goto LABEL_103;
        }

        goto LABEL_4;
      case 7:
        if (!v11)
        {
          goto LABEL_103;
        }

        v97 = v12 + 1;
        sub_232B2080C();
        v98 = sub_232CE9DD0();
        objc_opt_self();
        v52 = &unk_28480D3D8;
        v53 = 25;
        do
        {
          v54 = *(v52 - 1);
          sub_232BA63EC();
          sub_232CE9D20();
          sub_232B26D70();

          v55 = sub_232BA69D8();
          v57 = [v55 v56];

          sub_232CE9D50();
          sub_232BA5EAC();

          v58 = sub_232B41C8C();
          MEMORY[0x238391C30](v58);

          sub_232BA73C4();
          v59 = objc_allocWithZone(MEMORY[0x277CCAC68]);
          v60 = sub_232BA6110();
          v63 = sub_232BA1978(v60, v61, v62);
          if (v63)
          {
            sub_232BA6DE0();
            sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
            sub_232BA5548();
            sub_232BA67C8();
            sub_232B48E4C(v64, v65, v66, v67);
            sub_232B48080();
            sub_232BA63A8();
            sub_232CEA320();
            sub_232BA5EAC();
            v68 = sub_232CE9D20();
            v33 = sub_232BA6E6C(v63, sel_firstMatchInString_options_range_, v68);

            if (v33)
            {
              goto LABEL_105;
            }
          }

          v52 += 2;
          --v53;
        }

        while (v53);

        v3 = v94;
        v4 = v95;
LABEL_86:
        v2 = v14;
LABEL_89:
        v10 = v96;
        v11 = v99;
        if (v97 == v96)
        {
          goto LABEL_103;
        }

        continue;
      case 8:
        if (!v11)
        {
          goto LABEL_103;
        }

        v97 = v12 + 1;
        sub_232B2080C();
        sub_232CE9D20();
        sub_232BA71A4();
        if ((v26 & 0x1000000000000000) != 0)
        {
          sub_232CE9F10();
        }

        else
        {
          sub_232CE9F20();
        }

        v27 = objc_opt_self();
        if (qword_27DDC6368 != -1)
        {
          sub_232BA506C();
          v27 = swift_once();
        }

        v28 = sub_232BA5E44(v27, sel_scanString_range_configuration_);

        v29 = sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
        v10 = sub_232BA6E54(v29);

        if (v10 >> 62)
        {
          v30 = sub_232CEA610();
        }

        else
        {
          v30 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v2 = v14;
        if (!v30)
        {
          goto LABEL_32;
        }

        sub_232BA706C();
        while (2)
        {
          if (v4)
          {
            v31 = sub_232BA5C94();
            v32 = MEMORY[0x2383922C0](v31);
          }

          else
          {
            if (v3 >= *(v98 + 16))
            {
              __break(1u);
              goto LABEL_107;
            }

            v32 = *(v10 + 8 * v3 + 32);
          }

          v33 = v32;
          v34 = (v3 + 1);
          if (!__OFADD__(v3, 1))
          {
            [v32 urlificationRange];
            sub_232BA7200();
            sub_232CEA110();
            if (v35)
            {
            }

            else
            {
              sub_232BA7200();
              v36 = sub_232CE9FB0();
              MEMORY[0x238391B80](v36);
              sub_232BA6210();

              if ([v33 category] == 4)
              {
                sub_232BA67A4();
                v38 = sub_232B756EC(v37);

                v2 = v14;
                if (v38)
                {
                  goto LABEL_29;
                }
              }

              else
              {

                v2 = v14;
              }
            }

            ++v3;
            if (v34 == v30)
            {
LABEL_32:

              sub_232BA6364();
              v3 = v94;
              v4 = v95;
              goto LABEL_38;
            }

            continue;
          }

          break;
        }

        __break(1u);
LABEL_105:

        goto LABEL_102;
      case 9:
        v97 = v12 + 1;
        v89 = sub_232BA5BC0();
        if (sub_232B72018(v89, v90, v91, v92))
        {
          goto LABEL_102;
        }

LABEL_88:
        if (v11)
        {
          goto LABEL_89;
        }

        goto LABEL_103;
      case 0xA:
        if (!v11)
        {
          goto LABEL_103;
        }

        v48 = sub_232B2080C();
        sub_232B486F4(v48, v49);
        sub_232B26D00();
        v11 = v50;

        sub_232BA5FC4();
        if (!v51)
        {
          goto LABEL_102;
        }

        v25 = v2 == v10;
        v2 = v14;
        if (!v25)
        {
          continue;
        }

        goto LABEL_103;
      default:
        if (!v11)
        {
          goto LABEL_103;
        }

        sub_232BA7314(v13);
        v69 = sub_232B48080();
        sub_232BA6BBC(v69);
        sub_232BA6210();
        v70 = sub_232BA7080();
        v71(v70);
        sub_232BA57C8();
        sub_232BA6388();
        sub_232CEA3B0();
        sub_232BA7354();
        sub_232BA5FC4();
        if (!v72)
        {
          goto LABEL_29;
        }

        v73 = sub_232C0D410(&unk_28480F738);
        sub_232B2080C();
        v74 = sub_232CE9DD0();
        v76 = sub_232BA7F18(v74, v75, v73);
        v2 = v14;

        v99 = v11;
        if (v76)
        {
          goto LABEL_102;
        }

        goto LABEL_89;
    }
  }
}

void sub_232B714B8()
{
  sub_232B35110();
  v60 = v0;
  v61 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_232CE89D0();
  sub_232B48F0C();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_232B3516C();
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  if (v5 && v3)
  {
    sub_232CE89B0();
    sub_232CE89A0();
    v58 = v3;
    sub_232CE89C0();
    v19 = *(v8 + 8);
    v20 = sub_232BA7198();
    v19(v20);
    (v19)(v12, v6);
    sub_232CE8980();
    sub_232CE89C0();
    (v19)(v12, v6);
    v56 = v8 + 8;
    v57 = v6;
    v55 = v19;
    (v19)(v15, v6);
    sub_232B35128();
    v62 = sub_232CE9DD0();
    v63 = v21;
    v22 = sub_232B48080();
    v59 = v18;
    v23 = sub_232CEA380();

    v24 = 0;
    v25 = *(v23 + 16);
    v26 = v23 + 40;
    v27 = MEMORY[0x277D84F90];
    while (v25 != v24)
    {
      if (v24 >= *(v23 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

      ++v24;
      sub_232BA6958();
      if (v28)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v27;
        v53 = v26;
        v54 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_232BA72B4(v27[2]);
          v27 = v62;
        }

        v31 = v27[2];
        v30 = v27[3];
        if (v31 >= v30 >> 1)
        {
          sub_232B649F4(v30 > 1, v31 + 1, 1);
          v27 = v62;
        }

        v27[2] = v31 + 1;
        v32 = &v27[2 * v31];
        v32[4] = v6;
        v32[5] = v15;
        v26 = v53;
        v22 = v54;
      }
    }

    v33 = sub_232CE9DD0();
    v35 = v34;
    v62 = v33;
    v63 = v34;
    v36 = sub_232CEA380();

    v37 = 0;
    v38 = *(v36 + 16);
    v39 = v36 + 40;
    v40 = MEMORY[0x277D84F90];
    while (v38 != v37)
    {
      if (v37 >= *(v36 + 16))
      {
        goto LABEL_29;
      }

      ++v37;
      sub_232BA6958();
      if (v41)
      {

        v42 = swift_isUniquelyReferenced_nonNull_native();
        v62 = v40;
        v60 = v39;
        if ((v42 & 1) == 0)
        {
          sub_232BA72B4(*(v40 + 16));
          v40 = v62;
        }

        v44 = *(v40 + 16);
        v43 = *(v40 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_232B649F4(v43 > 1, v44 + 1, 1);
          v40 = v62;
        }

        *(v40 + 16) = v44 + 1;
        v45 = v40 + 16 * v44;
        *(v45 + 32) = v6;
        *(v45 + 40) = v35;
        v39 = v60;
      }
    }

    v47 = v27 + 5;
    v48 = -v27[2];
    v49 = -1;
    while (v48 + v49 != -1)
    {
      if (++v49 >= v27[2])
      {
        goto LABEL_30;
      }

      v50 = v47 + 2;
      v51 = *v47;
      v62 = *(v47 - 1);
      v63 = v51;
      MEMORY[0x28223BE20](v46);
      *(&v53 - 2) = &v62;

      v52 = sub_232C0A5F8();

      v47 = v50;
      if (!v52)
      {
        v55(v59, v57);

        goto LABEL_27;
      }
    }

    v55(v59, v57);
  }

LABEL_27:
  sub_232B20A00();
}