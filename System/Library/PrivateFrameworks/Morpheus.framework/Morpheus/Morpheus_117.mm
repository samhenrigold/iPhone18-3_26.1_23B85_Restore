uint64_t sub_25A927E9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);

  v5 = sub_25A998508();
  v6 = *(v4 + 36);

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  return result;
}

void sub_25A927F20(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = 1 << *(v4 + 32);
  v6 = *(v4 + 36);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
}

void (*sub_25A927F7C(uint64_t *a1, uint64_t *a2))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  v8 = a2[1];
  v9 = *v2;
  swift_beginAccess();
  sub_25A927D44(v7, v8, *(v9 + 16), v6);
  return sub_25A92802C;
}

void sub_25A92802C(uint64_t *a1)
{
  v1 = *a1;
  sub_25A8795A0(*a1);

  free(v1);
}

double sub_25A928068@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v9 = *a1;
  v10[0] = v3;
  *(v10 + 9) = *(a1 + 25);
  sub_25A9280CC(&v9, v6);
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_25A9280CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 16);

  v6 = sub_25A998508();
  v7 = *(v5 + 36);

  v9 = *(v2 + 16);
  if (*(v9 + 36) != v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = 1 << *(v9 + 32);
  if (v10 < v6)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(a1 + 8);
  if (v7 != v11)
  {
    goto LABEL_12;
  }

  if (*a1 < v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v12 = *(a1 + 32);
    if (v7 == v12)
    {
      v13 = *(a1 + 24);
      if (v10 >= v13)
      {
        *a2 = *a1;
        *(a2 + 8) = v11;
        *(a2 + 16) = 0;
        *(a2 + 24) = v13;
        *(a2 + 32) = v12;
        *(a2 + 40) = 0;
        *(a2 + 48) = v2;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

double sub_25A9281F0@<D0>(uint64_t a1@<X8>)
{
  sub_25A928240(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_25A928240@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v4 = sub_25A998508();
  v5 = *(v3 + 36);

  v7 = *(v1 + 16);
  v8 = 1 << *(v7 + 32);
  v9 = *(v7 + 36);
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  return result;
}

void sub_25A9282F4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

void sub_25A928304(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25A928348(*a1, *(a1 + 8), *(a1 + 16), a2);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
}

void sub_25A928348(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = a3 & 1;
  if (a4)
  {
    sub_25A92C654(a1, a2, v9);
    swift_beginAccess();
    v10 = 0;
    v11 = a4 - 1;
    while ((v6 & 1) == 0)
    {
      if ((v8 & 0x8000000000000000) != 0 || (v14 = *(v4 + 16), v12 = 1 << *(v14 + 32), v8 >= v12))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v15 = v8 >> 6;
      v16 = *(v14 + 56 + 8 * (v8 >> 6));
      if (((v16 >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(v14 + 36) != v7)
      {
        goto LABEL_21;
      }

      v17 = v16 & (-2 << (v8 & 0x3F));
      if (v17)
      {
        v12 = __clz(__rbit64(v17)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (v14 + 8 * v15 + 64);
        while (v19 < (v12 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {

            sub_25A92C648(v8, v7, 0);
            v12 = __clz(__rbit64(v21)) + v18;
            goto LABEL_5;
          }
        }

        sub_25A92C648(v8, v7, 0);
      }

LABEL_5:
      v7 = *(v14 + 36);

      v6 = 0;
      v8 = v12;
      if (v10++ == v11)
      {
        return;
      }
    }

    goto LABEL_23;
  }

  sub_25A92C654(a1, a2, v9);
}

void sub_25A928504(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_25A928550(*a1, *(a1 + 8), *(a1 + 16), a2, *a3, *(a3 + 8), *(a3 + 16));
  *a4 = v5;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
}

void sub_25A928550(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (a4 < 0)
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v10 = a2;
    v11 = a1;
    if (!a4)
    {
      sub_25A92C654(a1, a2, a3 & 1);
      return;
    }

    sub_25A92C654(a1, a2, a3 & 1);
    swift_beginAccess();
    v15 = 0;
    v16 = a4 - 1;
    v17 = a3 | a7;
    v30 = v16;
    v31 = a5;
    while ((v17 & 1) == 0)
    {
      if (v10 != a6)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v11 == a5)
      {
        return;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v19 = *(v7 + 16);
      v20 = 1 << *(v19 + 32);
      if (v11 >= v20)
      {
        goto LABEL_24;
      }

      v21 = v11 >> 6;
      v22 = *(v19 + 56 + 8 * (v11 >> 6));
      if (((v22 >> v11) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(v19 + 36) != a6)
      {
        goto LABEL_26;
      }

      v23 = v22 & (-2 << (v11 & 0x3F));
      if (v23)
      {
        v11 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = a7;
        v25 = v21 << 6;
        v26 = v21 + 1;
        v27 = (v19 + 8 * v21 + 64);
        while (v26 < (v20 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {

            sub_25A92C648(v11, v10, 0);
            v11 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        sub_25A92C648(v11, v10, 0);
        v11 = v20;
LABEL_19:
        a7 = v24;
        v16 = v30;
        a5 = v31;
      }

      v10 = *(v19 + 36);

      v17 = a7;
      if (v15++ == v16)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_25A928798(int64_t a1, uint64_t a2, char a3, int64_t a4, uint64_t a5, char a6)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_31;
  }

  v7 = a4;
  v8 = a1;
  if (a4 < a1)
  {
    goto LABEL_29;
  }

  v9 = a5;
  v10 = a2;
  if (a5 != a2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  if (a1 != a4)
  {
    swift_beginAccess();
    v11 = v9;
    v12 = 1;
    v27 = v9;
    while ((v8 & 0x8000000000000000) == 0)
    {
      v13 = *(v6 + 16);
      v14 = 1 << *(v13 + 32);
      if (v8 >= v14)
      {
        break;
      }

      v15 = v8 >> 6;
      v16 = *(v13 + 56 + 8 * (v8 >> 6));
      if (((v16 >> v8) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (*(v13 + 36) != v10)
      {
        goto LABEL_27;
      }

      v17 = v16 & (-2 << (v8 & 0x3F));
      if (v17)
      {
        v8 = __clz(__rbit64(v17)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v7;
        v19 = v9;
        v20 = v15 << 6;
        v21 = v15 + 1;
        v22 = (v13 + 8 * v15 + 64);
        while (v21 < (v14 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {

            sub_25A92C648(v8, v10, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        sub_25A92C648(v8, v10, 0);
        v8 = v14;
LABEL_19:
        v9 = v19;
        v7 = v18;
        v11 = v27;
      }

      v25 = *(v13 + 36);

      if (v25 != v9)
      {
        goto LABEL_28;
      }

      if (v8 == v7)
      {
        return;
      }

      v10 = v11;
      if (__OFADD__(v12++, 1))
      {
        __break(1u);
        break;
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
    goto LABEL_30;
  }
}

uint64_t sub_25A928970(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v2 != *(a2 + 32))
  {
    goto LABEL_11;
  }

  if (*result >= *(a2 + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_25A9289DC(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != v2)
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_25A928A48(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((*(a2 + 40) | *(result + 40)))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_25A928AC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *v2;
  swift_beginAccess();
  v8 = *(v7 + 16);

  v9 = sub_25A92AB48(v4, v5, v6, v8);
  v11 = v10;
  v13 = v12;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  return result;
}

uint64_t sub_25A928B5C(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  swift_beginAccess();
  v7 = *(v3 + 16);

  v8 = sub_25A92AB48(v4, v5, v6, v7);
  v10 = v9;
  v12 = v11;
  sub_25A92C648(v4, v5, v6);

  *a1 = v8;
  a1[1] = v10;
  *(a1 + 16) = v12 & 1;
  return result;
}

double sub_25A928C0C@<D0>(uint64_t a1@<X8>)
{
  sub_25A92BEE4(&v5);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  sub_25A8952F0(v8, &v4, &qword_27FA052C0, &qword_25A9FD550);

  result = *&v5;
  v3 = v6;
  *a1 = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_25A928C8C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 16) + 16);
}

void *sub_25A928CD8()
{
  v1 = sub_25A92C0A0(*v0);

  return v1;
}

double SharedMutableSet.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1 == 6579297 && a2 == 0xE300000000000000;
  if (v5 || (sub_25A9989E8() & 1) != 0)
  {

    v8 = MEMORY[0x277D84F90];
    v9 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    *(v11 + 32) = v8;
    *(v11 + 40) = v8;
    *(v11 + 48) = v8;

    *(v11 + 56) = v8;

    *(v11 + 64) = v8;

    *(v11 + 72) = 0;
    *(v11 + 80) = 0;

    *(v11 + 88) = 0;
    *(v11 + 96) = 0;

    *(v11 + 104) = sub_25A92BDB4(v8);
    *(v11 + 16) = 6579297;
    *(v11 + 24) = 0xE300000000000000;
    v12 = *(v11 + 80);
    v43 = *(v11 + 64);
    v44 = v12;
    v45 = *(v11 + 96);
    v13 = *(v11 + 48);
    v41 = *(v11 + 32);
    v42 = v13;
    *(v11 + 32) = v8;
    *(v11 + 40) = &unk_286C0BAC8;
    *(v11 + 48) = v8;
    *(v11 + 56) = v8;
    *(v11 + 64) = v8;
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0u;
    sub_25A892B80(&v41);
    swift_beginAccess();
    *(v11 + 104) = v9;

    v14 = swift_allocObject();
    *(v14 + 16) = sub_25A92C084;
    *(v14 + 24) = v3;
    v16 = sub_25A8F1D14;
LABEL_7:
    *(v11 + 112) = v16;
    *(v11 + 120) = v14;
    a3[3] = v10;
    *a3 = v11;
    return result;
  }

  if (a1 == 0x65766F6D6572 && a2 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v17 = MEMORY[0x277D84F90];
    v18 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    *(v11 + 32) = v17;
    *(v11 + 40) = v17;
    *(v11 + 48) = v17;

    *(v11 + 56) = v17;

    *(v11 + 64) = v17;

    *(v11 + 72) = 0;
    *(v11 + 80) = 0;

    *(v11 + 88) = 0;
    *(v11 + 96) = 0;

    *(v11 + 104) = sub_25A92BDB4(v17);
    *(v11 + 16) = 0x65766F6D6572;
    *(v11 + 24) = 0xE600000000000000;
    v19 = *(v11 + 80);
    v43 = *(v11 + 64);
    v44 = v19;
    v45 = *(v11 + 96);
    v20 = *(v11 + 48);
    v41 = *(v11 + 32);
    v42 = v20;
    *(v11 + 32) = v17;
    *(v11 + 40) = &unk_286C0BAF8;
    *(v11 + 48) = v17;
    *(v11 + 56) = v17;
    *(v11 + 64) = v17;
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0u;
    sub_25A892B80(&v41);
    swift_beginAccess();
    *(v11 + 104) = v18;

    v14 = swift_allocObject();
    *(v14 + 16) = sub_25A92C068;
    *(v14 + 24) = v3;
    v16 = sub_25A8F1D14;
    goto LABEL_7;
  }

  if (a1 == 0x64726163736964 && a2 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v21 = MEMORY[0x277D84F90];
    v22 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    *(v11 + 32) = v21;
    *(v11 + 40) = v21;
    *(v11 + 48) = v21;

    *(v11 + 56) = v21;

    *(v11 + 64) = v21;

    *(v11 + 72) = 0;
    *(v11 + 80) = 0;

    *(v11 + 88) = 0;
    *(v11 + 96) = 0;

    *(v11 + 104) = sub_25A92BDB4(v21);
    *(v11 + 16) = 0x64726163736964;
    *(v11 + 24) = 0xE700000000000000;
    v23 = *(v11 + 80);
    v43 = *(v11 + 64);
    v44 = v23;
    v45 = *(v11 + 96);
    v24 = *(v11 + 48);
    v41 = *(v11 + 32);
    v42 = v24;
    *(v11 + 32) = v21;
    *(v11 + 40) = &unk_286C0BB28;
    *(v11 + 48) = v21;
    *(v11 + 56) = v21;
    *(v11 + 64) = v21;
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0u;
    sub_25A892B80(&v41);
    swift_beginAccess();
    *(v11 + 104) = v22;

    v14 = swift_allocObject();
    *(v14 + 16) = sub_25A92C04C;
    *(v14 + 24) = v3;
    v16 = sub_25A8F1D14;
    goto LABEL_7;
  }

  if (a1 == 0x7261656C63 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v25 = MEMORY[0x277D84F90];
    v26 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    *(v11 + 32) = v25;
    *(v11 + 40) = v25;
    *(v11 + 48) = v25;

    *(v11 + 56) = v25;

    *(v11 + 64) = v25;

    *(v11 + 72) = 0;
    *(v11 + 80) = 0;

    *(v11 + 88) = 0;
    *(v11 + 96) = 0;

    *(v11 + 104) = sub_25A92BDB4(v25);
    *(v11 + 16) = 0x7261656C63;
    *(v11 + 24) = 0xE500000000000000;
    v27 = *(v11 + 80);
    v43 = *(v11 + 64);
    v44 = v27;
    v45 = *(v11 + 96);
    v28 = *(v11 + 48);
    v41 = *(v11 + 32);
    v42 = v28;
    *(v11 + 32) = v25;
    *(v11 + 40) = v25;
    *(v11 + 48) = v25;
    *(v11 + 56) = v25;
    *(v11 + 64) = v25;
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0u;
    sub_25A892B80(&v41);
    swift_beginAccess();
    *(v11 + 104) = v26;

    v14 = swift_allocObject();
    *(v14 + 16) = sub_25A92BFE4;
    *(v14 + 24) = v3;
    v16 = sub_25A8F1D14;
    goto LABEL_7;
  }

  if (a1 == 0x6E6F696E75 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v29 = MEMORY[0x277D84F90];
    v30 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    *(v11 + 32) = v29;
    *(v11 + 40) = v29;
    *(v11 + 48) = v29;

    *(v11 + 56) = v29;

    *(v11 + 64) = v29;

    *(v11 + 72) = 0;
    *(v11 + 80) = 0;

    *(v11 + 88) = 0;
    *(v11 + 96) = 0;

    *(v11 + 104) = sub_25A92BDB4(v29);
    *(v11 + 16) = 0x6E6F696E75;
    *(v11 + 24) = 0xE500000000000000;
    v31 = *(v11 + 80);
    v43 = *(v11 + 64);
    v44 = v31;
    v45 = *(v11 + 96);
    v32 = *(v11 + 48);
    v41 = *(v11 + 32);
    v42 = v32;
    *(v11 + 32) = v29;
    *(v11 + 40) = v29;
    *(v11 + 48) = v29;
    *(v11 + 56) = v29;
    *(v11 + 64) = v29;
    *(v11 + 72) = xmmword_25A9FD540;
    *(v11 + 88) = 0;
    *(v11 + 96) = 0;
    sub_25A892B80(&v41);
    swift_beginAccess();
    *(v11 + 104) = v30;

    v14 = swift_allocObject();
    *(v14 + 16) = sub_25A92BFC8;
    *(v14 + 24) = v3;
    v16 = sub_25A8F1D14;
    goto LABEL_7;
  }

  if (a1 == 0x6365737265746E69 && a2 == 0xEC0000006E6F6974 || (sub_25A9989E8() & 1) != 0)
  {

    v33 = MEMORY[0x277D84F90];
    v34 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    *(v11 + 32) = v33;
    *(v11 + 40) = v33;
    *(v11 + 48) = v33;

    *(v11 + 56) = v33;

    *(v11 + 64) = v33;

    *(v11 + 72) = 0;
    *(v11 + 80) = 0;

    *(v11 + 88) = 0;
    *(v11 + 96) = 0;

    *(v11 + 104) = sub_25A92BDB4(v33);
    strcpy((v11 + 16), "intersection");
    *(v11 + 29) = 0;
    *(v11 + 30) = -5120;
    v35 = *(v11 + 80);
    v43 = *(v11 + 64);
    v44 = v35;
    v45 = *(v11 + 96);
    v36 = *(v11 + 48);
    v41 = *(v11 + 32);
    v42 = v36;
    *(v11 + 32) = v33;
    *(v11 + 40) = v33;
    *(v11 + 48) = v33;
    *(v11 + 56) = v33;
    *(v11 + 64) = v33;
    *(v11 + 72) = xmmword_25A9FD540;
    *(v11 + 88) = 0;
    *(v11 + 96) = 0;
    sub_25A892B80(&v41);
    swift_beginAccess();
    *(v11 + 104) = v34;

    v14 = swift_allocObject();
    *(v14 + 16) = sub_25A92BFAC;
    *(v14 + 24) = v3;
    v16 = sub_25A8F1D14;
    goto LABEL_7;
  }

  if (a1 == 0x6E65726566666964 && a2 == 0xEA00000000006563 || (sub_25A9989E8() & 1) != 0)
  {

    v37 = MEMORY[0x277D84F90];
    v38 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    *(v11 + 32) = v37;
    *(v11 + 40) = v37;
    *(v11 + 48) = v37;

    *(v11 + 56) = v37;

    *(v11 + 64) = v37;

    *(v11 + 72) = 0;
    *(v11 + 80) = 0;

    *(v11 + 88) = 0;
    *(v11 + 96) = 0;

    *(v11 + 104) = sub_25A92BDB4(v37);
    *(v11 + 16) = 0x6E65726566666964;
    *(v11 + 24) = 0xEA00000000006563;
    v39 = *(v11 + 80);
    v43 = *(v11 + 64);
    v44 = v39;
    v45 = *(v11 + 96);
    v40 = *(v11 + 48);
    v41 = *(v11 + 32);
    v42 = v40;
    *(v11 + 32) = v37;
    *(v11 + 40) = v37;
    *(v11 + 48) = v37;
    *(v11 + 56) = v37;
    *(v11 + 64) = v37;
    *(v11 + 72) = xmmword_25A9FD540;
    *(v11 + 88) = 0;
    *(v11 + 96) = 0;
    sub_25A892B80(&v41);
    swift_beginAccess();
    *(v11 + 104) = v38;

    v14 = swift_allocObject();
    *(v14 + 16) = sub_25A92BF58;
    *(v14 + 24) = v3;
    v16 = sub_25A8F1830;
    goto LABEL_7;
  }

  return sub_25A87385C(a1, a2, v3, a3);
}

uint64_t sub_25A929804@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_25A8F3600(0x746E656D656C65, 0xE700000000000000), (v6 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v5, v9);
    if (swift_dynamicCast())
    {
      if (*(&v11 + 1))
      {
        v13[0] = v10;
        v13[1] = v11;
        v14 = v12;
        sub_25A874FB0(v13, v9);
        swift_beginAccess();
        sub_25A98D328(&v10, v9);
        sub_25A8795A0(&v10);
        swift_endAccess();
        result = sub_25A8795A0(v13);
        *(a3 + 24) = MEMORY[0x277D84F78] + 8;
        return result;
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_25A878194(&v10, &qword_27FA04610, &qword_25A9FDA50);
  sub_25A874F54();
  swift_allocError();
  *v8 = 78;
  return swift_willThrow();
}

uint64_t sub_25A929978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16) || (v6 = sub_25A8F3600(0x746E656D656C65, 0xE700000000000000), (v7 & 1) == 0))
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    goto LABEL_8;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v6, v13);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_8;
  }

  if (!*(&v15 + 1))
  {
LABEL_8:
    sub_25A878194(&v14, &qword_27FA04610, &qword_25A9FDA50);
    sub_25A874F54();
    swift_allocError();
    *v11 = 79;
    return swift_willThrow();
  }

  v17[0] = v14;
  v17[1] = v15;
  v18 = v16;
  swift_beginAccess();
  v8 = *(a2 + 16);

  v9 = sub_25A9197D0(v17, v8);

  if (v9)
  {
    swift_beginAccess();
    sub_25A92ABD0(v17, &v14);
    sub_25A878194(&v14, &qword_27FA04610, &qword_25A9FDA50);
    swift_endAccess();
    result = sub_25A8795A0(v17);
    *(a3 + 24) = MEMORY[0x277D84F78] + 8;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v12 = 79;
    swift_willThrow();
    return sub_25A8795A0(v17);
  }

  return result;
}

uint64_t sub_25A929B70@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_25A8F3600(0x746E656D656C65, 0xE700000000000000), (v6 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v5, &v9);
    if (swift_dynamicCast())
    {
      if (*(&v11 + 1))
      {
        v13[0] = v10;
        v13[1] = v11;
        v14 = v12;
        swift_beginAccess();
        sub_25A92ABD0(v13, &v10);
        sub_25A878194(&v10, &qword_27FA04610, &qword_25A9FDA50);
        swift_endAccess();
        result = sub_25A8795A0(v13);
        *(a3 + 24) = MEMORY[0x277D84F78] + 8;
        return result;
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_25A878194(&v10, &qword_27FA04610, &qword_25A9FDA50);
  sub_25A874F54();
  swift_allocError();
  *v8 = 80;
  return swift_willThrow();
}

void sub_25A929CE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 16) || (v6 = sub_25A8F3600(115, 0xE100000000000000), (v7 & 1) == 0))
  {
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v6, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_13;
  }

  v8 = *(&v30 + 1);
  if (!*(&v30 + 1))
  {
LABEL_13:
    sub_25A878194(&v29, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_14;
  }

  v9 = v31;
  __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
  v10 = (*(v9 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(&v29);
  v11 = sub_25A92FF1C(v10);

  if (!v11)
  {
LABEL_14:
    sub_25A874F54();
    swift_allocError();
    *v20 = 81;
    swift_willThrow();
    return;
  }

  v12 = *(v11 + 16);
  if (v12)
  {
    v32 = a3;
    v28[0] = MEMORY[0x277D84F90];
    sub_25A9379C0(0, v12, 0);
    v13 = v28[0];
    v14 = v11 + 32;
    do
    {
      sub_25A872F24(v14, &v29);
      v15 = *(&v30 + 1);
      v16 = v31;
      __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
      v17 = (*(v16 + 8))(v15, v16);
      __swift_destroy_boxed_opaque_existential_0Tm(&v29);
      v28[0] = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_25A9379C0((v18 > 1), v19 + 1, 1);
        v13 = v28[0];
      }

      *(v13 + 16) = v19 + 1;
      *(v13 + 8 * v19 + 32) = v17;
      v14 += 40;
      --v12;
    }

    while (v12);

    a3 = v32;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v21 = *(a2 + 16);
  v22 = *(v13 + 16);

  if (v22)
  {
    v23 = 0;
    while (v23 < *(v13 + 16))
    {
      v24 = v23 + 1;

      v21 = sub_25A92A008(v25, v21);
      v23 = v24;
      if (v22 == v24)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    v26 = type metadata accessor for SharedMutableSet();
    v27 = swift_allocObject();
    *(v27 + 16) = MEMORY[0x277D84FA0];
    swift_beginAccess();
    *(v27 + 16) = v21;
    a3[3] = v26;
    *a3 = v27;
  }
}

uint64_t sub_25A92A008(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      sub_25A874FB0(*(v2 + 48) + 40 * (v11 | (v10 << 6)), v15);
      v12[0] = v15[0];
      v12[1] = v15[1];
      v13 = v16;
      sub_25A98D328(v14, v12);
      result = sub_25A8795A0(v14);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_25A92A114(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v5 = v3, v8 = sub_25A8F3600(115, 0xE100000000000000), (v9 & 1) == 0))
  {
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v8, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    goto LABEL_13;
  }

  v10 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
LABEL_13:
    sub_25A878194(&v42, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_14;
  }

  v38 = a3;
  v11 = v44;
  __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
  v12 = (*(v11 + 8))(v10, v11);
  __swift_destroy_boxed_opaque_existential_0Tm(&v42);
  v40 = sub_25A92FF1C(v12);

  if (!v40)
  {
LABEL_14:
    sub_25A874F54();
    swift_allocError();
    *v21 = 77;
    swift_willThrow();
    return;
  }

  v13 = *(v40 + 16);
  if (v13)
  {
    v41[0] = MEMORY[0x277D84F90];
    sub_25A9379C0(0, v13, 0);
    v14 = v41[0];
    v15 = v40 + 32;
    do
    {
      sub_25A872F24(v15, &v42);
      v16 = *(&v43 + 1);
      v17 = v44;
      __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
      v18 = (*(v17 + 8))(v16, v17);
      __swift_destroy_boxed_opaque_existential_0Tm(&v42);
      v41[0] = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_25A9379C0((v19 > 1), v20 + 1, 1);
        v14 = v41[0];
      }

      *(v14 + 16) = v20 + 1;
      *(v14 + 8 * v20 + 32) = v18;
      v15 += 40;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v22 = *(a2 + 16);
  v23 = *(v14 + 16);

  v40 = v23;
  if (!v23)
  {
LABEL_28:

    v34 = type metadata accessor for SharedMutableSet();
    v35 = swift_allocObject();
    *(v35 + 16) = MEMORY[0x277D84FA0];
    swift_beginAccess();
    *(v35 + 16) = v22;
    v36 = v38;
    v38[3] = v34;
    *v36 = v35;
    return;
  }

  v24 = 0;
  v39 = v14 + 32;
  while (1)
  {
    if (v24 >= *(v14 + 16))
    {
      __break(1u);
    }

    v25 = *(v39 + 8 * v24);
    v26 = *(v22 + 32);
    v27 = v26 & 0x3F;
    v28 = ((1 << v26) + 63) >> 6;
    v29 = (8 * v28);
    swift_bridgeObjectRetain_n();

    if (v27 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    v29 = swift_slowAlloc();

    v33 = sub_25A92AEC0(v29, v28, v22, v25);
    if (v5)
    {
      goto LABEL_31;
    }

    v32 = v33;

    swift_bridgeObjectRelease_n();
    MEMORY[0x25F852800](v29, -1, -1);
LABEL_23:
    v22 = v32;
    ++v24;

    if (v40 == v24)
    {
      goto LABEL_28;
    }
  }

  MEMORY[0x28223BE20](isStackAllocationSafe);
  bzero(&v37 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0), v29);
  v31 = sub_25A92AF50((&v37 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0)), v28, v22, v25);
  if (!v5)
  {
    v32 = v31;

    goto LABEL_23;
  }

  swift_willThrow();

  __break(1u);
LABEL_31:

  MEMORY[0x25F852800](v29, -1, -1);
  __break(1u);
}

void sub_25A92A5E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

void sub_25A92A5F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 16) || (v6 = sub_25A8F3600(115, 0xE100000000000000), (v7 & 1) == 0))
  {
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v6, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    goto LABEL_13;
  }

  v8 = *(&v41 + 1);
  if (!*(&v41 + 1))
  {
LABEL_13:
    sub_25A878194(&v40, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_14;
  }

  v9 = v42;
  __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
  v10 = (*(v9 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(&v40);
  v11 = sub_25A92FF1C(v10);

  if (!v11)
  {
LABEL_14:
    sub_25A874F54();
    swift_allocError();
    *v20 = 76;
    swift_willThrow();
    return;
  }

  v37 = a3;
  v12 = *(v11 + 16);
  if (v12)
  {
    v39[0] = MEMORY[0x277D84F90];
    sub_25A9379C0(0, v12, 0);
    v13 = v39[0];
    v14 = v11 + 32;
    do
    {
      sub_25A872F24(v14, &v40);
      v15 = *(&v41 + 1);
      v16 = v42;
      __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
      v17 = (*(v16 + 8))(v15, v16);
      __swift_destroy_boxed_opaque_existential_0Tm(&v40);
      v39[0] = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_25A9379C0((v18 > 1), v19 + 1, 1);
        v13 = v39[0];
      }

      *(v13 + 16) = v19 + 1;
      *(v13 + 8 * v19 + 32) = v17;
      v14 += 40;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v21 = *(a2 + 16);
  v22 = *(v13 + 16);

  if (v22)
  {
    v23 = 0;
    v24 = v13 + 32;
    v38 = v22;
    while (v23 < *(v13 + 16))
    {
      v26 = *(v24 + 8 * v23);
      v27 = *(v21 + 16);
      if (*(v26 + 16) > v27 >> 3)
      {

        v21 = sub_25A92B540(v25, v21);
      }

      else
      {
        v43 = v21;
        if (v27)
        {
          v28 = 1 << *(v26 + 32);
          if (v28 < 64)
          {
            v29 = ~(-1 << v28);
          }

          else
          {
            v29 = -1;
          }

          v30 = v29 & *(v26 + 56);
          v31 = (v28 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v32 = 0;
          while (v30)
          {
            v33 = v32;
LABEL_33:
            v34 = __clz(__rbit64(v30));
            v30 &= v30 - 1;
            sub_25A874FB0(*(v26 + 48) + 40 * (v34 | (v33 << 6)), &v40);
            sub_25A92ABD0(&v40, v39);
            sub_25A878194(v39, &qword_27FA04610, &qword_25A9FDA50);
            sub_25A8795A0(&v40);
          }

          while (1)
          {
            v33 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (v33 >= v31)
            {

              v21 = v43;
              v24 = v13 + 32;
              v22 = v38;
              goto LABEL_20;
            }

            v30 = *(v26 + 56 + 8 * v33);
            ++v32;
            if (v30)
            {
              v32 = v33;
              goto LABEL_33;
            }
          }

          __break(1u);
          break;
        }
      }

LABEL_20:
      if (++v23 == v22)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_36:

    v35 = type metadata accessor for SharedMutableSet();
    v36 = swift_allocObject();
    *(v36 + 16) = MEMORY[0x277D84FA0];
    swift_beginAccess();
    *(v36 + 16) = v21;
    v37[3] = v35;
    *v37 = v36;
  }
}

uint64_t SharedMutableSet.description.getter()
{
  swift_beginAccess();

  v0 = sub_25A998228();

  return v0;
}

uint64_t sub_25A92AACC()
{
  swift_beginAccess();

  v0 = sub_25A998228();

  return v0;
}

uint64_t sub_25A92AB48(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      return sub_25A998528();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25A92ABD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  result = sub_25A998558();
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_25A874FB0(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x25F850890](v16, a1);
      result = sub_25A8795A0(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v16[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25A98DD88();
      v13 = v16[0];
    }

    v14 = *(v13 + 48) + 40 * v9;
    v15 = *(v14 + 16);
    *a2 = *v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = *(v14 + 32);
    result = sub_25A92AD08(v9);
    *v3 = v16[0];
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_25A92AD08(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25A998518();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_25A874FB0(*(v3 + 48) + 40 * v6, v22);
        v12 = sub_25A998558();
        sub_25A8795A0(v22);
        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = v16 + 40 * v2;
            v18 = (v16 + 40 * v6);
            if (v2 != v6 || v17 >= v18 + 40)
            {
              v10 = *v18;
              v11 = v18[1];
              *(v17 + 32) = *(v18 + 4);
              *v17 = v10;
              *(v17 + 16) = v11;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t *sub_25A92AEC0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_25A92AF50(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_25A92AF50(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v41 = result;
  v6 = *(a3 + 16);
  v7 = *(a4 + 16);
  v52 = a3;
  if (v7 >= v6)
  {
LABEL_23:
    v44 = 0;
    v25 = 0;
    v26 = v5 + 56;
    v27 = 1 << *(v5 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v5 + 56);
    v30 = (v27 + 63) >> 6;
    v31 = a4 + 56;
    while (v29)
    {
      v32 = __clz(__rbit64(v29));
      v46 = (v29 - 1) & v29;
LABEL_35:
      v43 = v32 | (v25 << 6);
      sub_25A874FB0(*(v5 + 48) + 40 * v43, v50);
      v35 = sub_25A998558();
      v36 = -1 << *(a4 + 32);
      v37 = v35 & ~v36;
      if ((*(v31 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
      {
        v38 = ~v36;
        while (1)
        {
          sub_25A874FB0(*(a4 + 48) + 40 * v37, v48);
          v39 = MEMORY[0x25F850890](v48, v50);
          sub_25A8795A0(v48);
          if (v39)
          {
            break;
          }

          v37 = (v37 + 1) & v38;
          if (((*(v31 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        result = sub_25A8795A0(v50);
        *(v41 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        v29 = v46;
        v24 = __OFADD__(v44++, 1);
        v5 = v52;
        if (v24)
        {
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
LABEL_27:
        result = sub_25A8795A0(v50);
        v5 = v52;
        v29 = v46;
      }
    }

    v33 = v25;
    while (1)
    {
      v25 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v25 >= v30)
      {
        goto LABEL_43;
      }

      v34 = *(v26 + 8 * v25);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v46 = (v34 - 1) & v34;
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v8 = 0;
  v9 = 1 << *(a4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a4 + 56);
  v12 = (v9 + 63) >> 6;
  v44 = 0;
  v45 = a3 + 56;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v42 = (v11 - 1) & v11;
LABEL_15:
    sub_25A874FB0(*(a4 + 48) + 40 * (v13 | (v8 << 6)), v50);
    v48[0] = v50[0];
    v48[1] = v50[1];
    v49 = v51;
    v16 = sub_25A998558();
    v17 = -1 << *(v5 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v45 + 8 * (v18 >> 6))) == 0)
    {
      goto LABEL_6;
    }

    sub_25A874FB0(*(v52 + 48) + 40 * v18, v47);
    v21 = MEMORY[0x25F850890](v47, v48);
    sub_25A8795A0(v47);
    if ((v21 & 1) == 0)
    {
      v22 = ~v17;
      while (1)
      {
        v18 = (v18 + 1) & v22;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v45 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        sub_25A874FB0(*(v52 + 48) + 40 * v18, v47);
        v23 = MEMORY[0x25F850890](v47, v48);
        sub_25A8795A0(v47);
        if (v23)
        {
          goto LABEL_20;
        }
      }

LABEL_6:
      result = sub_25A8795A0(v48);
      v5 = v52;
      goto LABEL_7;
    }

LABEL_20:
    result = sub_25A8795A0(v48);
    v41[v19] |= v20;
    v24 = __OFADD__(v44++, 1);
    v5 = v52;
    if (v24)
    {
      __break(1u);
      goto LABEL_23;
    }

LABEL_7:
    v11 = v42;
  }

  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v12)
    {
LABEL_43:

      return sub_25A92B31C(v41, a2, v44, v5);
    }

    v15 = *(a4 + 56 + 8 * v8);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v42 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_25A92B31C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05310, &unk_25A9FD750);
  result = sub_25A9985A8();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_25A874FB0(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v28);
    result = sub_25A998558();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v6 + 48) + 40 * v19;
    v25 = v28[0];
    v26 = v28[1];
    *(v24 + 32) = v29;
    *v24 = v25;
    *(v24 + 16) = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25A92B540(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v3 = a1;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = -1 << *(a1 + 32);
  v44 = ~v6;
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (63 - v6) >> 6;
  v10 = a2 + 56;
  v11 = 0;
  v12 = 0;
  v45 = a1 + 56;

  {
    v14 = v8;
    if (!v8)
    {
      break;
    }

LABEL_12:
    sub_25A874FB0(*(v3 + 48) + 40 * (__clz(__rbit64(v14)) | (v12 << 6)), &v47);
    if (!*(&v48 + 1))
    {
      goto LABEL_43;
    }

    v50 = v47;
    v51 = v48;
    v52 = v49;
    v16 = sub_25A998558();
    v8 = (v14 - 1) & v14;
    v17 = -1 << *(v2 + 32);
    v11 = v16 & ~v17;
    v3 = v11 >> 6;
    v14 = 1 << v11;
    if (((1 << v11) & *(v10 + 8 * (v11 >> 6))) != 0)
    {
      sub_25A874FB0(*(v2 + 48) + 40 * v11, &v47);
      v18 = MEMORY[0x25F850890](&v47, &v50);
      v19 = ~v17;
      while (1)
      {
        sub_25A8795A0(&v47);
        if (v18)
        {
          break;
        }

        v11 = (v11 + 1) & v19;
        v3 = v11 >> 6;
        v14 = 1 << v11;
        if (((1 << v11) & *(v10 + 8 * (v11 >> 6))) == 0)
        {
          goto LABEL_6;
        }

        sub_25A874FB0(*(v2 + 48) + 40 * v11, &v47);
        v18 = MEMORY[0x25F850890](&v47, &v50);
      }

      v20 = v45;
      v54 = v44;
      v55 = v12;
      v56 = v8;
      v21 = i;
      v53[0] = i;
      v53[1] = v45;
      v22 = sub_25A8795A0(&v50);
      v23 = *(v2 + 32);
      v41[0] = ((1 << v23) + 63) >> 6;
      v13 = 8 * v41[0];
      if ((v23 & 0x3Fu) <= 0xD)
      {
        goto LABEL_20;
      }

      goto LABEL_49;
    }

LABEL_6:
    sub_25A8795A0(&v50);
    v11 = v12;
    v5 = v45;
  }

  v15 = v11;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v38 = v13;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v39 = swift_slowAlloc();
        memcpy(v39, (v2 + 56), v38);
        v40 = sub_25A92BB40(v39, v41[0], v2, v11, v53);

        MEMORY[0x25F852800](v39, -1, -1);
        v21 = v53[0];
        v44 = v54;
        v2 = v40;
LABEL_41:
        v36 = v21;
        goto LABEL_44;
      }

      v20 = v45;
      v21 = i;
LABEL_20:
      v41[1] = v41;
      MEMORY[0x28223BE20](v22);
      v11 = v41 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v11, (v2 + 56), v24);
      v25 = *(v11 + 8 * v3) & ~v14;
      v42 = v11;
      *(v11 + 8 * v3) = v25;
      v43 = *(v2 + 16) - 1;
      while (1)
      {
        while (1)
        {
          if (!v8)
          {
            v26 = v12;
            while (1)
            {
              v27 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                break;
              }

              if (v27 >= v9)
              {
                v49 = 0;
                v47 = 0u;
                v48 = 0u;
                goto LABEL_40;
              }

              v8 = *(v20 + 8 * v27);
              ++v26;
              if (v8)
              {
                v12 = v27;
                goto LABEL_28;
              }
            }

            __break(1u);
            goto LABEL_47;
          }

LABEL_28:
          v28 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
          sub_25A874FB0(*(v21 + 48) + 40 * (v28 | (v12 << 6)), &v47);
          if (!*(&v48 + 1))
          {
LABEL_40:
            v34 = v41[0];
            v35 = v43;
            sub_25A878194(&v47, &qword_27FA04610, &qword_25A9FDA50);
            v2 = sub_25A92B31C(v42, v34, v35, v2);
            v21 = i;
            goto LABEL_41;
          }

          v50 = v47;
          v51 = v48;
          v52 = v49;
          v11 = &v50;
          v29 = sub_25A998558();
          v14 = -1 << *(v2 + 32);
          v30 = v29 & ~v14;
          v3 = v30 >> 6;
          v31 = 1 << v30;
          if (((1 << v30) & *(v10 + 8 * (v30 >> 6))) != 0)
          {
            break;
          }

LABEL_21:
          sub_25A8795A0(&v50);
          v20 = v45;
          v21 = i;
        }

        sub_25A874FB0(*(v2 + 48) + 40 * v30, &v47);
        v11 = MEMORY[0x25F850890](&v47, &v50);
        sub_25A8795A0(&v47);
        if ((v11 & 1) == 0)
        {
          v14 = ~v14;
          do
          {
            v30 = (v30 + 1) & v14;
            v3 = v30 >> 6;
            v31 = 1 << v30;
            if (((1 << v30) & *(v10 + 8 * (v30 >> 6))) == 0)
            {
              goto LABEL_21;
            }

            sub_25A874FB0(*(v2 + 48) + 40 * v30, &v47);
            v11 = MEMORY[0x25F850890](&v47, &v50);
            sub_25A8795A0(&v47);
          }

          while ((v11 & 1) == 0);
        }

        sub_25A8795A0(&v50);
        v32 = v42[v3];
        v42[v3] = v32 & ~v31;
        v20 = v45;
        if ((v32 & v31) != 0)
        {
          v33 = v43 - 1;
          v21 = i;
          if (__OFSUB__(v43, 1))
          {
            goto LABEL_48;
          }

          --v43;
          if (!v33)
          {

            v2 = MEMORY[0x277D84FA0];
            goto LABEL_41;
          }
        }

        else
        {
          v21 = i;
        }
      }
    }

    if (v12 >= v9)
    {
      break;
    }

    v14 = *(v5 + 8 * v12);
    ++v15;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
LABEL_43:
  sub_25A878194(&v47, &qword_27FA04610, &qword_25A9FDA50);
  v36 = v3;
LABEL_44:
  sub_25A874FA8(v36);
  return v2;
}

void sub_25A92BB34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

unint64_t *sub_25A92BB40(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v37 = v7 - 1;
  v8 = a3 + 56;
  while (1)
  {
    do
    {
      while (1)
      {
        v9 = *a5;
        v10 = a5[1];
        v12 = a5[2];
        v11 = a5[3];
        v13 = a5[4];
        if (!v13)
        {
          v15 = (v12 + 64) >> 6;
          v16 = a5[3];
          while (1)
          {
            v14 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
              goto LABEL_25;
            }

            if (v14 >= v15)
            {
              break;
            }

            v13 = *(v10 + 8 * v14);
            ++v16;
            if (v13)
            {
              goto LABEL_9;
            }
          }

          v34 = 0;
          if (v15 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (v12 + 64) >> 6;
          }

          v32 = 0u;
          v33 = 0u;
          *a5 = v9;
          a5[1] = v10;
          a5[2] = v12;
          a5[3] = v29 - 1;
          a5[4] = 0;
LABEL_23:
          sub_25A878194(&v32, &qword_27FA04610, &qword_25A9FDA50);

          return sub_25A92B31C(v31, a2, v37, a3);
        }

        v14 = a5[3];
LABEL_9:
        v17 = (v13 - 1) & v13;
        sub_25A874FB0(*(v9 + 48) + 40 * (__clz(__rbit64(v13)) | (v14 << 6)), &v32);
        v18 = *(&v33 + 1);
        *a5 = v9;
        a5[1] = v10;
        a5[2] = v12;
        a5[3] = v14;
        a5[4] = v17;
        if (!v18)
        {
          goto LABEL_23;
        }

        v35[0] = v32;
        v35[1] = v33;
        v36 = v34;
        v19 = sub_25A998558();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v8 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_2:
        result = sub_25A8795A0(v35);
      }

      sub_25A874FB0(*(a3 + 48) + 40 * v21, &v32);
      v24 = MEMORY[0x25F850890](&v32, v35);
      sub_25A8795A0(&v32);
      if ((v24 & 1) == 0)
      {
        v25 = ~v20;
        do
        {
          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v8 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_2;
          }

          sub_25A874FB0(*(a3 + 48) + 40 * v21, &v32);
          v26 = MEMORY[0x25F850890](&v32, v35);
          sub_25A8795A0(&v32);
        }

        while ((v26 & 1) == 0);
      }

      result = sub_25A8795A0(v35);
      v27 = v31[v22];
      v31[v22] = v27 & ~v23;
    }

    while ((v27 & v23) == 0);
    v28 = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
      break;
    }

    --v37;
    if (!v28)
    {
      return MEMORY[0x277D84FA0];
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_25A92BDB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CC8, &unk_25A9FDC30);
    v3 = sub_25A998888();
    v4 = a1 + 32;

    while (1)
    {
      sub_25A8952F0(v4, &v13, &qword_27FA048E8, &unk_25A9FD760);
      v5 = v13;
      v6 = v14;
      result = sub_25A8F3600(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25A872D74(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_25A92BEE4(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = -1 << *(v3 + 32);
  v5 = ~v4;
  *a1 = v3;
  v8 = *(v3 + 56);
  v6 = v3 + 56;
  v7 = v8;
  v9 = -v4;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a1[1] = v6;
  a1[2] = v5;
  a1[3] = 0;
  a1[4] = v10 & v7;
}

uint64_t sub_25A92BF74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A92BFE4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x277D84FA0];

  *(a1 + 24) = MEMORY[0x277D84F78] + 8;
  return result;
}

void *sub_25A92C0A0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_25A93743C(*(v2 + 16), 0);

  v5 = sub_25A95F8D4(&v7, (v4 + 4), v3);
  sub_25A874FA8(v7);
  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t _s8Morpheus16SharedMutableSetC3has9attributeSbSS_tF_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25A98E844(&unk_286C0D5D8);
  swift_arrayDestroy();
  v5 = sub_25A9198A8(a1, a2, v4);

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = sub_25A91B4A0();
    swift_beginAccess();
    v8 = *(v7 + 16);

    if (*(v8 + 16))
    {
      sub_25A8F3600(a1, a2);
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

unint64_t sub_25A92C22C()
{
  result = qword_27FA052C8;
  if (!qword_27FA052C8)
  {
    type metadata accessor for SharedMutableSet();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA052C8);
  }

  return result;
}

uint64_t sub_25A92C3B4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

double sub_25A92C3FC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);

  return result;
}

uint64_t sub_25A92C648(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

double sub_25A92C654(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t PySpecialFunction.rawValue.getter()
{
  result = 0x5F5F77656E5F5FLL;
  switch(*v0)
  {
    case 1:
      v2 = 1852399455;
      goto LABEL_12;
    case 2:
      v8 = 1701076831;
      return v8 | 0x5F5F6C00000000;
    case 3:
      v9 = 1953718111;
      goto LABEL_99;
    case 4:
      return 0x5F5F727065725F5FLL;
    case 5:
      return 0x5F73657479625F5FLL;
    case 6:
      return 0x74616D726F665F5FLL;
    case 7:
      return 0x5F5F687361685F5FLL;
    case 8:
      v3 = 1852399455;
      goto LABEL_66;
    case 9:
      return 0x5F74616F6C665F5FLL;
    case 0xA:
      return 0x656C706D6F635F5FLL;
    case 0xB:
      return 0x5F7865646E695F5FLL;
    case 0xC:
      return 0x5F5F6C6F6F625F5FLL;
    case 0xD:
      return 0x5F5F736F705F5FLL;
    case 0xE:
      return 0x5F5F67656E5F5FLL;
    case 0xF:
      return 0x747265766E695F5FLL;
    case 0x10:
      return 0x5F5F71655F5FLL;
    case 0x11:
      return 0x5F5F656E5F5FLL;
    case 0x12:
      v10 = 1952931679;
      return (v10 & 0xFFFF0000FFFFFFFFLL | 0x5F5F00000000) + 327680;
    case 0x13:
      v10 = 1701273439;
      return (v10 & 0xFFFF0000FFFFFFFFLL | 0x5F5F00000000) + 327680;
    case 0x14:
      return 0x5F5F74675F5FLL;
    case 0x15:
      return 0x5F5F65675F5FLL;
    case 0x16:
      v4 = 1684103007;
      return v4 | 0x5F5F6400000000;
    case 0x17:
      v5 = 0x646461695F5FLL;
      return (v5 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000) + 589824;
    case 0x18:
      return 0x5F5F646461695F5FLL;
    case 0x19:
      return 0x5F5F6275735F5FLL;
    case 0x1A:
      v5 = 0x627573695F5FLL;
      return (v5 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000) + 589824;
    case 0x1B:
      return 0x5F5F627573695F5FLL;
    case 0x1C:
      v8 = 1970102111;
      return v8 | 0x5F5F6C00000000;
    case 0x1D:
      v5 = 0x6C756D695F5FLL;
      return (v5 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000) + 589824;
    case 0x1E:
      return 0x5F5F6C756D695F5FLL;
    case 0x1F:
      return 0x6964657572745F5FLL;
    case 0x20:
      return 0x6465757274725F5FLL;
    case 0x21:
      return 0x6465757274695F5FLL;
    case 0x22:
      return 0x64726F6F6C665F5FLL;
    case 0x23:
      return 0x726F6F6C66725F5FLL;
    case 0x24:
      return 0x726F6F6C66695F5FLL;
    case 0x25:
      v4 = 1869438815;
      return v4 | 0x5F5F6400000000;
    case 0x26:
      v5 = 0x646F6D695F5FLL;
      return (v5 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000) + 589824;
    case 0x27:
      return 0x5F5F646F6D695F5FLL;
    case 0x28:
      return 0x5F5F776F705F5FLL;
    case 0x29:
      v5 = 0x776F70695F5FLL;
      return (v5 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000) + 589824;
    case 0x2A:
      return 0x5F5F776F70695F5FLL;
    case 0x2B:
      return 0x6C756D74616D5F5FLL;
    case 0x2C:
      return 0x756D74616D725F5FLL;
    case 0x2D:
      return 0x756D74616D695F5FLL;
    case 0x2E:
      v4 = 1851875167;
      return v4 | 0x5F5F6400000000;
    case 0x2F:
      v5 = 0x646E61695F5FLL;
      return (v5 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000) + 589824;
    case 0x30:
      return 0x5F5F646E61695F5FLL;
    case 0x31:
      return 0x5F5F726F5F5FLL;
    case 0x32:
      return 0x5F5F726F725F5FLL;
    case 0x33:
      v9 = 1869176671;
      goto LABEL_99;
    case 0x34:
      return 0x5F5F726F785F5FLL;
    case 0x35:
      v5 = 0x726F78695F5FLL;
      return (v5 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000) + 589824;
    case 0x36:
      return 0x5F5F726F78695F5FLL;
    case 0x37:
      return 0x74666968736C5F5FLL;
    case 0x38:
      v6 = 1818845023;
      goto LABEL_80;
    case 0x39:
      v7 = 1818845023;
      goto LABEL_77;
    case 0x3A:
      return 0x7466696873725F5FLL;
    case 0x3B:
      v6 = 1919508319;
LABEL_80:
      result = (v6 | 0x6669687300000000) + 589824;
      break;
    case 0x3C:
      v7 = 1919508319;
LABEL_77:
      result = v7 | 0x6669687300000000;
      break;
    case 0x3D:
      result = 0x5F5F6E656C5F5FLL;
      break;
    case 0x3E:
      result = 0x6574697465675F5FLL;
      break;
    case 0x3F:
      result = 0x6574697465735F5FLL;
      break;
    case 0x40:
      result = 0x6574696C65645F5FLL;
      break;
    case 0x41:
      result = 0x6961746E6F635F5FLL;
      break;
    case 0x42:
      result = 0x5F5F726574695F5FLL;
      break;
    case 0x43:
      result = 0x5F5F7478656E5F5FLL;
      break;
    case 0x44:
      result = 0x7372657665725F5FLL;
      break;
    case 0x45:
      result = 0x5F5F6C6C61635F5FLL;
      break;
    case 0x46:
      result = 0x5F7265746E655F5FLL;
      break;
    case 0x47:
      v2 = 2019909471;
LABEL_12:
      result = v2 | 0x5F5F746900000000;
      break;
    case 0x48:
      result = 0x7474617465675F5FLL;
      break;
    case 0x49:
      result = 0xD000000000000010;
      break;
    case 0x4A:
      result = 0x7474617465735F5FLL;
      break;
    case 0x4B:
      result = 0x7474616C65645F5FLL;
      break;
    case 0x4C:
      v9 = 1768185695;
LABEL_99:
      result = v9 | 0x5F5F7200000000;
      break;
    case 0x4D:
      v3 = 1701273439;
LABEL_66:
      result = v3 | 0x5F5F7400000000;
      break;
    case 0x4E:
      result = 0x5F5F7465735F5FLL;
      break;
    case 0x4F:
      result = 0x6574656C65645F5FLL;
      break;
    case 0x50:
      result = 0xD000000000000011;
      break;
    case 0x51:
      result = 0xD000000000000011;
      break;
    case 0x52:
      result = 0xD000000000000011;
      break;
    case 0x53:
      result = 0x7261706572705F5FLL;
      break;
    default:
      return result;
  }

  return result;
}

Morpheus::PySpecialFunction_optional __swiftcall PySpecialFunction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25A998A58();

  v5 = 0;
  v6 = 66;
  switch(v3)
  {
    case 0:
      goto LABEL_82;
    case 1:
      v5 = 1;
      goto LABEL_82;
    case 2:
      v5 = 2;
      goto LABEL_82;
    case 3:
      v5 = 3;
      goto LABEL_82;
    case 4:
      v5 = 4;
      goto LABEL_82;
    case 5:
      v5 = 5;
      goto LABEL_82;
    case 6:
      v5 = 6;
      goto LABEL_82;
    case 7:
      v5 = 7;
      goto LABEL_82;
    case 8:
      v5 = 8;
      goto LABEL_82;
    case 9:
      v5 = 9;
      goto LABEL_82;
    case 10:
      v5 = 10;
      goto LABEL_82;
    case 11:
      v5 = 11;
      goto LABEL_82;
    case 12:
      v5 = 12;
      goto LABEL_82;
    case 13:
      v5 = 13;
      goto LABEL_82;
    case 14:
      v5 = 14;
      goto LABEL_82;
    case 15:
      v5 = 15;
      goto LABEL_82;
    case 16:
      v5 = 16;
      goto LABEL_82;
    case 17:
      v5 = 17;
      goto LABEL_82;
    case 18:
      v5 = 18;
      goto LABEL_82;
    case 19:
      v5 = 19;
      goto LABEL_82;
    case 20:
      v5 = 20;
      goto LABEL_82;
    case 21:
      v5 = 21;
      goto LABEL_82;
    case 22:
      v5 = 22;
      goto LABEL_82;
    case 23:
      v5 = 23;
      goto LABEL_82;
    case 24:
      v5 = 24;
      goto LABEL_82;
    case 25:
      v5 = 25;
      goto LABEL_82;
    case 26:
      v5 = 26;
      goto LABEL_82;
    case 27:
      v5 = 27;
      goto LABEL_82;
    case 28:
      v5 = 28;
      goto LABEL_82;
    case 29:
      v5 = 29;
      goto LABEL_82;
    case 30:
      v5 = 30;
      goto LABEL_82;
    case 31:
      v5 = 31;
      goto LABEL_82;
    case 32:
      v5 = 32;
      goto LABEL_82;
    case 33:
      v5 = 33;
      goto LABEL_82;
    case 34:
      v5 = 34;
      goto LABEL_82;
    case 35:
      v5 = 35;
      goto LABEL_82;
    case 36:
      v5 = 36;
      goto LABEL_82;
    case 37:
      v5 = 37;
      goto LABEL_82;
    case 38:
      v5 = 38;
      goto LABEL_82;
    case 39:
      v5 = 39;
      goto LABEL_82;
    case 40:
      v5 = 40;
      goto LABEL_82;
    case 41:
      v5 = 41;
      goto LABEL_82;
    case 42:
      v5 = 42;
      goto LABEL_82;
    case 43:
      v5 = 43;
      goto LABEL_82;
    case 44:
      v5 = 44;
      goto LABEL_82;
    case 45:
      v5 = 45;
      goto LABEL_82;
    case 46:
      v5 = 46;
      goto LABEL_82;
    case 47:
      v5 = 47;
      goto LABEL_82;
    case 48:
      v5 = 48;
      goto LABEL_82;
    case 49:
      v5 = 49;
      goto LABEL_82;
    case 50:
      v5 = 50;
      goto LABEL_82;
    case 51:
      v5 = 51;
      goto LABEL_82;
    case 52:
      v5 = 52;
      goto LABEL_82;
    case 53:
      v5 = 53;
      goto LABEL_82;
    case 54:
      v5 = 54;
      goto LABEL_82;
    case 55:
      v5 = 55;
      goto LABEL_82;
    case 56:
      v5 = 56;
      goto LABEL_82;
    case 57:
      v5 = 57;
      goto LABEL_82;
    case 58:
      v5 = 58;
      goto LABEL_82;
    case 59:
      v5 = 59;
      goto LABEL_82;
    case 60:
      v5 = 60;
      goto LABEL_82;
    case 61:
      v5 = 61;
      goto LABEL_82;
    case 62:
      v5 = 62;
      goto LABEL_82;
    case 63:
      v5 = 63;
      goto LABEL_82;
    case 64:
      v5 = 64;
      goto LABEL_82;
    case 65:
      v5 = 65;
LABEL_82:
      v6 = v5;
      break;
    case 66:
      break;
    case 67:
      v6 = 67;
      break;
    case 68:
      v6 = 68;
      break;
    case 69:
      v6 = 69;
      break;
    case 70:
      v6 = 70;
      break;
    case 71:
      v6 = 71;
      break;
    case 72:
      v6 = 72;
      break;
    case 73:
      v6 = 73;
      break;
    case 74:
      v6 = 74;
      break;
    case 75:
      v6 = 75;
      break;
    case 76:
      v6 = 76;
      break;
    case 77:
      v6 = 77;
      break;
    case 78:
      v6 = 78;
      break;
    case 79:
      v6 = 79;
      break;
    case 80:
      v6 = 80;
      break;
    case 81:
      v6 = 81;
      break;
    case 82:
      v6 = 82;
      break;
    case 83:
      v6 = 83;
      break;
    default:
      v6 = 84;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25A92D3F4()
{
  v0 = PySpecialFunction.rawValue.getter();
  v2 = v1;
  if (v0 == PySpecialFunction.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25A9989E8();
  }

  return v5 & 1;
}

unint64_t sub_25A92D494()
{
  result = qword_27FA05318;
  if (!qword_27FA05318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05318);
  }

  return result;
}

uint64_t sub_25A92D4E8()
{
  sub_25A998B18();
  PySpecialFunction.rawValue.getter();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A92D550(uint64_t a1)
{
  PySpecialFunction.rawValue.getter();
  sub_25A997D58();
}

uint64_t sub_25A92D5B4(uint64_t a1)
{
  sub_25A998B18();
  PySpecialFunction.rawValue.getter();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A92D624@<X0>(uint64_t *a1@<X8>)
{
  result = PySpecialFunction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25A92D650()
{
  result = qword_27FA05320;
  if (!qword_27FA05320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA05328, &qword_25A9FD810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05320);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PySpecialFunction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAD)
  {
    goto LABEL_17;
  }

  if (a2 + 83 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 83) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 83;
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

      return (*a1 | (v4 << 8)) - 83;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 83;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x54;
  v8 = v6 - 84;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PySpecialFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 83 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 83) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAD)
  {
    v4 = 0;
  }

  if (a2 > 0xAC)
  {
    v5 = ((a2 - 173) >> 8) + 1;
    *result = a2 + 83;
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
    *result = a2 + 83;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25A92D814@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v3 = sub_25A998B58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05330, &qword_25A9FD9D0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05338, &qword_25A9FD9D8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v39 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = sub_25A998B88();
  v36 = *(v18 - 8);
  v37 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v45[0] + 1) = MEMORY[0x277D84F70] + 8;
  *&v44 = swift_allocObject();
  v35 = a1;
  sub_25A87500C(a1, v44 + 16);
  sub_25A998B48();
  v40 = v20;
  sub_25A998B68();
  (*(v4 + 104))(v15, *MEMORY[0x277D84C18], v3);
  (*(v4 + 56))(v15, 0, 1, v3);
  v21 = *(v7 + 56);
  sub_25A8952F0(v17, v9, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A8952F0(v15, &v9[v21], &qword_27FA05338, &qword_25A9FD9D8);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v3) == 1)
  {
    sub_25A878194(v15, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v17, &qword_27FA05338, &qword_25A9FD9D8);
    if (v22(&v9[v21], 1, v3) == 1)
    {
      sub_25A878194(v9, &qword_27FA05338, &qword_25A9FD9D8);
      v23 = v40;
      goto LABEL_8;
    }

LABEL_6:
    sub_25A878194(v9, &qword_27FA05330, &qword_25A9FD9D0);
    v23 = v40;
    goto LABEL_11;
  }

  sub_25A8952F0(v9, v39, &qword_27FA05338, &qword_25A9FD9D8);
  if (v22(&v9[v21], 1, v3) == 1)
  {
    sub_25A878194(v15, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v17, &qword_27FA05338, &qword_25A9FD9D8);
    (*(v4 + 8))(v39, v3);
    goto LABEL_6;
  }

  v24 = v34;
  (*(v4 + 32))(v34, &v9[v21], v3);
  v25 = v39;
  v26 = sub_25A997DF8();
  v27 = *(v4 + 8);
  v27(v24, v3);
  sub_25A878194(v15, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A878194(v17, &qword_27FA05338, &qword_25A9FD9D8);
  v27(v25, v3);
  sub_25A878194(v9, &qword_27FA05338, &qword_25A9FD9D8);
  v23 = v40;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_25A998B78();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28 = sub_25A998658();
  swift_getObjectType();
  result = sub_25A998658();
  if (v28 == result)
  {
    v30 = sub_25A998668();
    swift_unknownObjectRelease();
    if ((v30 & 1) == 0)
    {
      sub_25A998808();
      swift_unknownObjectRelease();

      v44 = v41;
      v45[0] = v42;
      v45[1] = v43;
      sub_25A92D814(v45, v38);
      sub_25A878194(&v44, &qword_27FA047F0, &qword_25A9FD9E0);
      return (*(v36 + 8))(v23, v37);
    }

    swift_unknownObjectRelease();

LABEL_11:
    v31 = v38;
    v38[3] = MEMORY[0x277D84F70] + 8;
    v32 = swift_allocObject();
    *v31 = v32;
    sub_25A87500C(v35, v32 + 16);
    return (*(v36 + 8))(v23, v37);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A92DE50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v3 = sub_25A998B58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05330, &qword_25A9FD9D0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05338, &qword_25A9FD9D8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v39 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = sub_25A998B88();
  v36 = *(v18 - 8);
  v37 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  *(&v45[0] + 1) = v34;
  *&v44 = swift_allocObject();
  v35 = a1;
  sub_25A8952F0(a1, v44 + 16, &qword_27FA04458, &unk_25A9F7FB0);
  sub_25A998B48();
  v40 = v20;
  sub_25A998B68();
  (*(v4 + 104))(v15, *MEMORY[0x277D84C18], v3);
  (*(v4 + 56))(v15, 0, 1, v3);
  v21 = *(v7 + 56);
  sub_25A8952F0(v17, v9, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A8952F0(v15, &v9[v21], &qword_27FA05338, &qword_25A9FD9D8);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v3) == 1)
  {
    sub_25A878194(v15, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v17, &qword_27FA05338, &qword_25A9FD9D8);
    if (v22(&v9[v21], 1, v3) == 1)
    {
      sub_25A878194(v9, &qword_27FA05338, &qword_25A9FD9D8);
      v23 = v40;
      goto LABEL_8;
    }

LABEL_6:
    sub_25A878194(v9, &qword_27FA05330, &qword_25A9FD9D0);
    v23 = v40;
    goto LABEL_11;
  }

  sub_25A8952F0(v9, v39, &qword_27FA05338, &qword_25A9FD9D8);
  if (v22(&v9[v21], 1, v3) == 1)
  {
    sub_25A878194(v15, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v17, &qword_27FA05338, &qword_25A9FD9D8);
    (*(v4 + 8))(v39, v3);
    goto LABEL_6;
  }

  v24 = v33;
  (*(v4 + 32))(v33, &v9[v21], v3);
  v25 = v39;
  v26 = sub_25A997DF8();
  v27 = *(v4 + 8);
  v27(v24, v3);
  sub_25A878194(v15, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A878194(v17, &qword_27FA05338, &qword_25A9FD9D8);
  v27(v25, v3);
  sub_25A878194(v9, &qword_27FA05338, &qword_25A9FD9D8);
  v23 = v40;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_25A998B78();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28 = sub_25A998658();
  swift_getObjectType();
  result = sub_25A998658();
  if (v28 == result)
  {
    v30 = sub_25A998668();
    swift_unknownObjectRelease();
    if ((v30 & 1) == 0)
    {
      sub_25A998808();
      swift_unknownObjectRelease();

      v44 = v41;
      v45[0] = v42;
      v45[1] = v43;
      sub_25A92D814(v45, v38);
      sub_25A878194(&v44, &qword_27FA047F0, &qword_25A9FD9E0);
      return (*(v36 + 8))(v23, v37);
    }

    swift_unknownObjectRelease();

LABEL_11:
    v31 = v38;
    v38[3] = v34;
    v32 = swift_allocObject();
    *v31 = v32;
    sub_25A8952F0(v35, v32 + 16, &qword_27FA04458, &unk_25A9F7FB0);
    return (*(v36 + 8))(v23, v37);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A92E494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v3 = sub_25A998B58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v35 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05330, &qword_25A9FD9D0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v33[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05338, &qword_25A9FD9D8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v41 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v33[-v16];
  v18 = sub_25A998B88();
  v38 = *(v18 - 8);
  v39 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v33[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FA05460, &qword_25A9FDD48);
  v37 = a1;
  *(&v46[0] + 1) = v36;
  *&v45 = a1;

  sub_25A998B48();
  sub_25A998B68();
  (*(v4 + 104))(v15, *MEMORY[0x277D84C18], v3);
  (*(v4 + 56))(v15, 0, 1, v3);
  v21 = *(v7 + 56);
  sub_25A8952F0(v17, v9, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A8952F0(v15, &v9[v21], &qword_27FA05338, &qword_25A9FD9D8);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v3) != 1)
  {
    sub_25A8952F0(v9, v41, &qword_27FA05338, &qword_25A9FD9D8);
    if (v22(&v9[v21], 1, v3) != 1)
    {
      v23 = &v9[v21];
      v24 = v35;
      (*(v4 + 32))(v35, v23, v3);
      v25 = v41;
      v34 = sub_25A997DF8();
      v26 = *(v4 + 8);
      v26(v24, v3);
      sub_25A878194(v15, &qword_27FA05338, &qword_25A9FD9D8);
      sub_25A878194(v17, &qword_27FA05338, &qword_25A9FD9D8);
      v26(v25, v3);
      sub_25A878194(v9, &qword_27FA05338, &qword_25A9FD9D8);
      if ((v34 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    sub_25A878194(v15, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v17, &qword_27FA05338, &qword_25A9FD9D8);
    (*(v4 + 8))(v41, v3);
LABEL_6:
    sub_25A878194(v9, &qword_27FA05330, &qword_25A9FD9D0);
    goto LABEL_11;
  }

  sub_25A878194(v15, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A878194(v17, &qword_27FA05338, &qword_25A9FD9D8);
  if (v22(&v9[v21], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_25A878194(v9, &qword_27FA05338, &qword_25A9FD9D8);
LABEL_8:
  sub_25A998B78();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v27 = sub_25A998658();
  swift_getObjectType();
  result = sub_25A998658();
  if (v27 != result)
  {
    __break(1u);
    return result;
  }

  v29 = sub_25A998668();
  swift_unknownObjectRelease();
  if ((v29 & 1) == 0)
  {
    sub_25A998808();
    swift_unknownObjectRelease();

    v45 = v42;
    v46[0] = v43;
    v46[1] = v44;
    sub_25A92D814(v46, v40);
    sub_25A878194(&v45, &qword_27FA047F0, &qword_25A9FD9E0);
    return (*(v38 + 8))(v20, v39);
  }

  swift_unknownObjectRelease();

LABEL_11:
  v30 = v40;
  v31 = v37;
  v40[3] = v36;
  *v30 = v31;
  v32 = *(v38 + 8);

  return v32(v20, v39);
}

uint64_t static MorpheusUtils.unwrap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = a3;
  v5 = sub_25A998B58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05330, &qword_25A9FD9D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05338, &qword_25A9FD9D8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v21 = sub_25A998B88();
  v47 = *(v21 - 8);
  v48 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v55[0] + 1) = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v54);
  v25 = *(a2 - 8);
  v26 = *(v25 + 16);
  v45 = a1;
  v46 = a2;
  v43 = v25 + 16;
  v44 = v26;
  v26(boxed_opaque_existential_0, a1, a2);
  sub_25A998B48();
  v50 = v23;
  sub_25A998B68();
  (*(v6 + 104))(v18, *MEMORY[0x277D84C18], v5);
  (*(v6 + 56))(v18, 0, 1, v5);
  v27 = *(v9 + 56);
  sub_25A8952F0(v20, v11, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A8952F0(v18, &v11[v27], &qword_27FA05338, &qword_25A9FD9D8);
  v28 = *(v6 + 48);
  if (v28(v11, 1, v5) == 1)
  {
    sub_25A878194(v18, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v20, &qword_27FA05338, &qword_25A9FD9D8);
    v29 = v28(&v11[v27], 1, v5);
    v30 = v50;
    if (v29 == 1)
    {
      sub_25A878194(v11, &qword_27FA05338, &qword_25A9FD9D8);
      goto LABEL_8;
    }

LABEL_6:
    sub_25A878194(v11, &qword_27FA05330, &qword_25A9FD9D0);
    goto LABEL_11;
  }

  sub_25A8952F0(v11, v15, &qword_27FA05338, &qword_25A9FD9D8);
  if (v28(&v11[v27], 1, v5) == 1)
  {
    sub_25A878194(v18, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v20, &qword_27FA05338, &qword_25A9FD9D8);
    (*(v6 + 8))(v15, v5);
    v30 = v50;
    goto LABEL_6;
  }

  v31 = &v11[v27];
  v32 = v42;
  (*(v6 + 32))(v42, v31, v5);
  v33 = sub_25A997DF8();
  v34 = *(v6 + 8);
  v34(v32, v5);
  sub_25A878194(v18, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A878194(v20, &qword_27FA05338, &qword_25A9FD9D8);
  v34(v15, v5);
  sub_25A878194(v11, &qword_27FA05338, &qword_25A9FD9D8);
  v30 = v50;
  if ((v33 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_25A998B78();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v35 = sub_25A998658();
  swift_getObjectType();
  result = sub_25A998658();
  if (v35 == result)
  {
    v37 = sub_25A998668();
    swift_unknownObjectRelease();
    if ((v37 & 1) == 0)
    {
      sub_25A998808();
      swift_unknownObjectRelease();

      v54 = v51;
      v55[0] = v52;
      v55[1] = v53;
      sub_25A92D814(v55, v49);
      sub_25A878194(&v54, &qword_27FA047F0, &qword_25A9FD9E0);
      return (*(v47 + 8))(v30, v48);
    }

    swift_unknownObjectRelease();

LABEL_11:
    v38 = v49;
    v39 = v46;
    v49[3] = v46;
    v40 = __swift_allocate_boxed_opaque_existential_0(v38);
    v44(v40, v45, v39);
    return (*(v47 + 8))(v30, v48);
  }

  __break(1u);
  return result;
}

uint64_t static MorpheusUtils.isNil(_:)(char *a1)
{
  v35 = a1;
  v1 = sub_25A998B58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v32 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05330, &qword_25A9FD9D0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05338, &qword_25A9FD9D8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = sub_25A998B88();
  v33 = *(v17 - 8);
  v34 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25A87500C(v35, &v39);
  sub_25A998B48();
  v35 = v19;
  sub_25A998B68();
  (*(v2 + 104))(v14, *MEMORY[0x277D84C18], v1);
  (*(v2 + 56))(v14, 0, 1, v1);
  v20 = *(v5 + 56);
  sub_25A8952F0(v16, v7, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A8952F0(v14, &v7[v20], &qword_27FA05338, &qword_25A9FD9D8);
  v21 = *(v2 + 48);
  if (v21(v7, 1, v1) == 1)
  {
    sub_25A878194(v14, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v16, &qword_27FA05338, &qword_25A9FD9D8);
    if (v21(&v7[v20], 1, v1) == 1)
    {
      sub_25A878194(v7, &qword_27FA05338, &qword_25A9FD9D8);
      v22 = v35;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_25A8952F0(v7, v11, &qword_27FA05338, &qword_25A9FD9D8);
  if (v21(&v7[v20], 1, v1) == 1)
  {
    sub_25A878194(v14, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v16, &qword_27FA05338, &qword_25A9FD9D8);
    (*(v2 + 8))(v11, v1);
LABEL_6:
    sub_25A878194(v7, &qword_27FA05330, &qword_25A9FD9D0);
    v22 = v35;
LABEL_7:
    (*(v33 + 8))(v22, v34);
    v23 = 0;
    return v23 & 1;
  }

  v24 = v32;
  (*(v2 + 32))(v32, &v7[v20], v1);
  v25 = sub_25A997DF8();
  v26 = *(v2 + 8);
  v26(v24, v1);
  sub_25A878194(v14, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A878194(v16, &qword_27FA05338, &qword_25A9FD9D8);
  v26(v11, v1);
  sub_25A878194(v7, &qword_27FA05338, &qword_25A9FD9D8);
  v22 = v35;
  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  sub_25A998B78();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v27 = sub_25A998658();
  swift_getObjectType();
  result = sub_25A998658();
  if (v27 == result)
  {
    v29 = sub_25A998668();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v29)
    {
      (*(v33 + 8))(v22, v34);
      v23 = 1;
      return v23 & 1;
    }

    sub_25A998B78();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v30 = sub_25A998658();
    swift_getObjectType();
    result = sub_25A998658();
    if (v30 == result)
    {
      v31 = sub_25A998668();
      swift_unknownObjectRelease();
      if ((v31 & 1) == 0)
      {
        sub_25A998808();
        swift_unknownObjectRelease();

        v39 = v36;
        v40[0] = v37;
        v40[1] = v38;
        v23 = static MorpheusUtils.isNil(_:)(v40);
        sub_25A878194(&v39, &qword_27FA047F0, &qword_25A9FD9E0);
        (*(v33 + 8))(v22, v34);
        return v23 & 1;
      }

      swift_unknownObjectRelease();

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A92F774(uint64_t a1, __n128 a2)
{
  v7 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_25A998748();
  if (!v3)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_25A87500C(i, v6);
    sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_25A998718();
    sub_25A998758();
    sub_25A998768();
    sub_25A998728();
    if (!--v3)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_25A92F880(uint64_t a1)
{
  v2 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  sub_25A9378E0(0, v2, 0);
  v3 = v16;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25A87500C(i, v15);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v9 = v12;
      v10 = v13;
      v11 = v14;
      v16 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A9378E0((v5 > 1), v6 + 1, 1);
        v3 = v16;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_25A878194(&v12, &qword_27FA04610, &qword_25A9FDA50);
    return 0;
  }

  return v3;
}

uint64_t sub_25A92F9CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_25A937900(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25A87500C(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05178, &qword_25A9FBFA0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_25A87817C(v8, v11);
      sub_25A87817C(v11, v8);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937900((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_25A87817C(v8, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_25A878194(v8, &qword_27FA04CB8, &unk_25A9FDC50);
    return 0;
  }

  return v3;
}

uint64_t sub_25A92FB38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_25A9378A0(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25A87500C(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_25A87817C(v8, v11);
      sub_25A87817C(v11, v8);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A9378A0((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_25A87817C(v8, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_25A878194(v8, &qword_27FA047F8, L"D\a\t");
    return 0;
  }

  return v3;
}

uint64_t sub_25A92FCA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_25A937570(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25A87500C(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937570((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_25A92FDB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_25A937940(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25A87500C(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_25A87817C(v8, v11);
      sub_25A87817C(v11, v8);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937940((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_25A87817C(v8, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_25A878194(v8, &qword_27FA04808, &qword_25A9FDC40);
    return 0;
  }

  return v3;
}

uint64_t sub_25A92FF1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_25A937A00(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25A87500C(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E88, &qword_25A9FBA48);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_25A87817C(v8, v11);
      sub_25A87817C(v11, v8);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937A00((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_25A87817C(v8, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_25A878194(v8, &qword_27FA04E80, &qword_25A9FDCC0);
    return 0;
  }

  return v3;
}

uint64_t sub_25A930088(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25A937550(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_25A872F24(v4, &v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937550((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_25A872D74(&v9, (v2 + 32 * v6 + 32));
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A93019C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25A937550(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      sub_25A87500C(v4, v8);
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937550((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_25A872D74(v8, (v2 + 32 * v6 + 32));
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A93026C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_25A937860(0, v1, 0);
    v2 = v13;
    v4 = a1 + 32;
    do
    {
      sub_25A87500C(v4, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      swift_dynamicCast();
      v13 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937860((v5 > 1), v6 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 32 * v6;
      v8 = v12;
      *(v7 + 32) = v11;
      *(v7 + 48) = v8;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A930380(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25A937570(0, v2, 0);
    result = v9;
    v4 = (a1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        sub_25A937570((v8 > 1), v5 + 1, 1);
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_25A930440(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25A937550(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937550((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_25A872D74(&v8, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A93053C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25A937550(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937550((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_25A872D74(&v8, (v2 + 32 * v6 + 32));
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A930638(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25A937550(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937550((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_25A872D74(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A930770(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25A937550(0, v2, 0);
    v3 = v10;
    v5 = a1 + 32;
    do
    {
      ++v5;
      swift_dynamicCast();
      v10 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_25A937550((v6 > 1), v7 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v7 + 1;
      sub_25A872D74(&v9, (v3 + 32 * v7 + 32));
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_25A930870(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25A937550(0, v2, 0);
    v3 = v10;
    v5 = a1 + 32;
    do
    {
      v5 += 2;
      swift_dynamicCast();
      v10 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_25A937550((v6 > 1), v7 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v7 + 1;
      sub_25A872D74(&v9, (v3 + 32 * v7 + 32));
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_25A930970(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25A937550(0, v2, 0);
    v3 = v10;
    v5 = a1 + 32;
    do
    {
      v5 += 4;
      swift_dynamicCast();
      v10 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_25A937550((v6 > 1), v7 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v7 + 1;
      sub_25A872D74(&v9, (v3 + 32 * v7 + 32));
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_25A930A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25A937550(0, v2, 0);
    v3 = v10;
    v5 = a1 + 32;
    do
    {
      v5 += 8;
      swift_dynamicCast();
      v10 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_25A937550((v6 > 1), v7 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v7 + 1;
      sub_25A872D74(&v9, (v3 + 32 * v7 + 32));
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_25A930B64(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A930BC0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A930C1C(uint64_t a1, uint64_t a2)
{
  sub_25A87500C(a2, &v30);
  if (swift_dynamicCast())
  {
    v41[0] = v36;
    v41[1] = v37;
    v42 = v38;
    v39 = v34;
    v40 = v35;
    v5 = *(&v35 + 1);
    v6 = v36;
    __swift_project_boxed_opaque_existential_1(&v39, *(&v35 + 1));
    (*(v6 + 8))(v41 + 8, a1, v5, v6);
    return sub_25A878128(&v39);
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  sub_25A878194(&v34, &qword_27FA04548, &unk_25A9F86F0);
  sub_25A87500C(a2, &v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_25A878194(&v34, &qword_27FA04728, &unk_25A9FD740);
LABEL_15:
    sub_25A874F54();
    swift_allocError();
    *v26 = 60;
    return swift_willThrow();
  }

  sub_25A87817C(&v34, &v39);
  sub_25A87500C(a1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04868, &qword_25A9F8EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    AssociatedConformanceWitness = 0;
    v30 = 0u;
    v31 = 0u;
    sub_25A878194(&v30, &qword_27FA04850, &unk_25A9FDC60);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0Tm(&v39);
    goto LABEL_15;
  }

  sub_25A87817C(&v30, &v34);
  v8 = *(&v40 + 1);
  v9 = *&v41[0];
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  v10 = *((*(v9 + 8))(v8, v9) + 16);

  __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
  if (v10 != sub_25A998288())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v34);
    goto LABEL_14;
  }

  v43 = v2;
  v11 = __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
  MEMORY[0x28223BE20](v11);
  (*(v13 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(&v31 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v30);
  sub_25A998068();
  v27 = 32;
  for (i = 0; ; i = v23 + 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v15 = sub_25A9983F8();
    v16 = *(v15 - 8);
    MEMORY[0x28223BE20](v15);
    v18 = &v27 - v17;
    sub_25A998448();
    v19 = *(AssociatedTypeWitness - 8);
    if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
    {
      (*(v16 + 8))(v18, v15);
      __swift_destroy_boxed_opaque_existential_0Tm(&v30);
      __swift_destroy_boxed_opaque_existential_0Tm(&v34);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v39);
    }

    v33[3] = AssociatedTypeWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    (*(v19 + 32))(boxed_opaque_existential_0, v18, AssociatedTypeWitness);
    v21 = *(&v40 + 1);
    v22 = *&v41[0];
    __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    result = (*(v22 + 8))(v21, v22);
    v23 = i;
    if (i >= *(result + 16))
    {
      break;
    }

    v24 = v27;
    sub_25A87500C(result + v27, v29);

    v25 = v43;
    sub_25A930C1C(v33, v29);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    if (v25)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v30);
      __swift_destroy_boxed_opaque_existential_0Tm(&v34);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v39);
    }

    v43 = 0;
    v27 = v24 + 32;
  }

  __break(1u);
  return result;
}

uint64_t static MorpheusUtils.isEqual(x:y:)(char *a1, char *a2)
{
  v4 = static MorpheusUtils.isNil(_:)(a1);
  v5 = static MorpheusUtils.isNil(_:)(a2);
  v6 = v4 & v5;
  if (v4 & 1) != 0 || (v5)
  {
    return v6 & 1;
  }

  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  DynamicType = swift_getDynamicType();
  __swift_project_boxed_opaque_existential_1(a2, *(a2 + 3));
  if (DynamicType != swift_getDynamicType())
  {
    v6 = 0;
    return v6 & 1;
  }

  v9 = *(a1 + 3);
  __swift_project_boxed_opaque_existential_1(a1, v9);

  return sub_25A9390C4(a1, a2, v9, v10);
}

BOOL static MorpheusUtils.isIdentical(_:_:)(char *a1, char *a2)
{
  if (static MorpheusUtils.isNil(_:)(a1) & 1) != 0 && (static MorpheusUtils.isNil(_:)(a2))
  {
    return 1;
  }

  if (static MorpheusUtils.isNil(_:)(a1) & 1) != 0 || (static MorpheusUtils.isNil(_:)(a2))
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  v5 = sub_25A9989D8();
  __swift_project_boxed_opaque_existential_1(a2, *(a2 + 3));
  v6 = sub_25A9989D8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5 == v6;
}

uint64_t static MorpheusUtils.toMLTensor(mlxArray:)(uint64_t a1)
{
  sub_25A872F24(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05340, &qword_25A9FD9E8);
  type metadata accessor for MLXArray();
  if (!swift_dynamicCast())
  {
    sub_25A874F54();
    swift_allocError();
    *v5 = 111;
    return swift_willThrow();
  }

  sub_25A9616CC();
  sub_25A9723D0(1, &v10);
  v2 = v10;
  v1 = v11;
  sub_25A8F192C(v10, v11);
  sub_25A8F1980(&v10);
  swift_beginAccess();
  v3 = mlx_array_dtype(*(v8 + 16));
  v4 = sub_25A956420(v3);
  if (v4 > 4)
  {
    if (v4 < 8 || v4 == 9 || v4 == 10)
    {
      goto LABEL_9;
    }

LABEL_11:

    sub_25A874F54();
    swift_allocError();
    *v7 = 112;
    swift_willThrow();
    sub_25A8F1C54(v2, v1);
  }

  if (v4 >= 4)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_25A997BF8();
}

uint64_t static MorpheusUtils.getShape(_:)(uint64_t a1)
{
  sub_25A87500C(a1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (!swift_dynamicCast())
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_25A878194(v31, &qword_27FA04728, &unk_25A9FD740);
    return MEMORY[0x277D84F90];
  }

  sub_25A87817C(v31, v34);
  v2 = v35;
  v3 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v33[0] = MEMORY[0x277D84F90];
    sub_25A937650(0, v5, 0);
    v6 = 0;
    v7 = v33[0];
    v8 = v4 + 32;
    while (v6 < *(v4 + 16))
    {
      sub_25A87500C(v8, v31);
      v9 = static MorpheusUtils.getShape(_:)(v31);
      if (v1)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v31);

        return __swift_destroy_boxed_opaque_existential_0Tm(v34);
      }

      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      v33[0] = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_25A937650((v11 > 1), v12 + 1, 1);
        v7 = v33[0];
      }

      ++v6;
      *(v7 + 16) = v12 + 1;
      *(v7 + 8 * v12 + 32) = v10;
      v8 += 32;
      if (v5 == v6)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_13:
    v14 = *(v7 + 16);
    v15 = (v7 + 32);
    if (v14 < 2)
    {
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_25A9F8D90;
      *(v16 + 32) = v5;
      if (v14)
      {
        v17 = *v15;
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
      }

      *&v31[0] = v16;
      sub_25A932C40(v17);
      v30 = *&v31[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      return v30;
    }

    v18 = 1;
    while (v18 < v14)
    {
      v19 = v15[v18];
      v20 = *v15;
      v21 = *(v19 + 16);
      if (v21 != *(*v15 + 16))
      {
LABEL_29:

        if (qword_27FA043C0 != -1)
        {
          goto LABEL_39;
        }

        goto LABEL_30;
      }

      if (v21)
      {
        v22 = v19 == v20;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v23 = (v19 + 32);
        v24 = (v20 + 32);
        while (v21)
        {
          if (*v23 != *v24)
          {
            goto LABEL_29;
          }

          ++v23;
          ++v24;
          if (!--v21)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_37;
      }

LABEL_17:
      if (++v18 == v14)
      {
        goto LABEL_14;
      }
    }
  }

  __break(1u);
LABEL_39:
  swift_once();
LABEL_30:
  v25 = sub_25A997BD8();
  __swift_project_value_buffer(v25, qword_27FA0FCE8);
  v26 = sub_25A997BB8();
  v27 = sub_25A9983A8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_25A232000, v26, v27, "Inhomogeneous shape", v28, 2u);
    MEMORY[0x25F852800](v28, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v29 = 35;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0Tm(v34);
}

unint64_t static MorpheusUtils.flattenNumericArray(_:)(uint64_t a1)
{
  v2 = v1;
  v56 = MEMORY[0x277D84F90];
  sub_25A87500C(a1, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (!swift_dynamicCast())
  {
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_25A878194(v50, &qword_27FA04728, &unk_25A9FD740);
    sub_25A87500C(a1, v53);
    sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v9 = *&v50[0];
      MEMORY[0x25F850420]();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_56;
      }

      goto LABEL_6;
    }

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v10 = sub_25A997BD8();
    __swift_project_value_buffer(v10, qword_27FA0FCE8);
    v11 = sub_25A997BB8();
    v12 = sub_25A9983A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_25A232000, v11, v12, "Array contains non NSNumber", v13, 2u);
      MEMORY[0x25F852800](v13, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v14 = 12;
    return swift_willThrow();
  }

  sub_25A87817C(v50, v53);
  v4 = v54;
  v5 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v6 = (*(v5 + 1))(v4, v5);
  v8 = sub_25A92F774(v6, v7);

  if (v8)
  {
    sub_25A932F38(v8);
LABEL_48:
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    return v56;
  }

  v16 = v54;
  v9 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v17 = (*(v9 + 1))(v16, v9);
  v18 = v17;
  v47 = *(v17 + 16);
  if (!v47)
  {
LABEL_47:

    goto LABEL_48;
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v46 = v17 + 32;
  v44 = v17;
  while (v19 < *(v18 + 16))
  {
    sub_25A87500C(v46 + 32 * v19, v50);
    v21 = v2;
    v22 = static MorpheusUtils.flattenNumericArray(_:)(v50);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v50);

      return __swift_destroy_boxed_opaque_existential_0Tm(v53);
    }

    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    v24 = v23 >> 62;
    if (v23 >> 62)
    {
      v25 = sub_25A998848();
    }

    else
    {
      v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v20 >> 62;
    if (v20 >> 62)
    {
      v43 = sub_25A998848();
      v28 = v43 + v25;
      if (__OFADD__(v43, v25))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = v27 + v25;
      if (__OFADD__(v27, v25))
      {
        goto LABEL_46;
      }
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v26)
      {
        goto LABEL_29;
      }

LABEL_28:
      sub_25A998848();
      goto LABEL_29;
    }

    if (v26)
    {
      goto LABEL_28;
    }

    v29 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v28 <= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v9 = v25;
      v49 = v20;
      goto LABEL_30;
    }

LABEL_29:
    v9 = v25;
    v49 = sub_25A9986A8();
    v29 = v49 & 0xFFFFFFFFFFFFFF8;
LABEL_30:
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);
    if (v24)
    {
      v33 = v29;
      v34 = sub_25A998848();
      v29 = v33;
      v32 = v34;
      if (!v34)
      {
LABEL_14:

        v20 = v49;
        if (v9 > 0)
        {
          goto LABEL_52;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v32 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_14;
      }
    }

    if (((v31 >> 1) - v30) < v9)
    {
      goto LABEL_53;
    }

    v48 = v9;
    v35 = v29 + 8 * v30 + 32;
    v45 = v29;
    if (v24)
    {
      if (v32 < 1)
      {
        goto LABEL_55;
      }

      sub_25A939EB8(&qword_27FA05350, &qword_27FA05348, &qword_25A9FDA08);
      v36 = 0;
      v9 = v52;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05348, &qword_25A9FDA08);
        v37 = sub_25A93903C(v52, v36, v23);
        v39 = *v38;
        (v37)(v52, 0);
        *(v35 + 8 * v36++) = v39;
      }

      while (v32 != v36);
    }

    else
    {
      sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
      swift_arrayInitWithCopy();
    }

    v2 = v21;
    v18 = v44;
    v20 = v49;
    if (v48 > 0)
    {
      v40 = *(v45 + 16);
      v41 = __OFADD__(v40, v48);
      v42 = v40 + v48;
      if (v41)
      {
        goto LABEL_54;
      }

      *(v45 + 16) = v42;
    }

LABEL_15:
    ++v19;
    v56 = v20;
    if (v19 == v47)
    {
      goto LABEL_47;
    }
  }

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
  sub_25A998128();
LABEL_6:
  sub_25A998178();

  return v56;
}

uint64_t static MorpheusUtils.getType(of:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = 9;
LABEL_9:
    *a2 = v5;
    return result;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = 0;
    return result;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result & 1) != 0 || (sub_25A87500C(a1, v19), result = swift_dynamicCast(), (result) || (sub_25A87500C(a1, v19), result = swift_dynamicCast(), result))
  {
    v5 = 10;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = 1;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = 2;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = 3;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = 4;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = 5;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = 6;
    return result;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = 7;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if ((result & 1) != 0 || (sub_25A87500C(a1, v19), result = swift_dynamicCast(), result))
  {
    v5 = 8;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  if (swift_dynamicCast())
  {

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v6 = sub_25A997BD8();
    __swift_project_value_buffer(v6, qword_27FA0FCE8);
    v7 = sub_25A997BB8();
    v8 = sub_25A9983A8();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_39;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "String isn't a numeric type";
    goto LABEL_38;
  }

  sub_25A87500C(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v16, v19);
    v11 = v20;
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v13 = (*(v12 + 8))(v11, v12);
    sub_25A933508(v13, a2);

    return __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_25A878194(v16, &qword_27FA04728, &unk_25A9FD740);
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v14 = sub_25A997BD8();
  __swift_project_value_buffer(v14, qword_27FA0FCE8);
  v7 = sub_25A997BB8();
  v8 = sub_25A9983A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Invalid numeric type";
LABEL_38:
    _os_log_impl(&dword_25A232000, v7, v8, v10, v9, 2u);
    MEMORY[0x25F852800](v9, -1, -1);
  }

LABEL_39:

  sub_25A874F54();
  swift_allocError();
  *v15 = 36;
  return swift_willThrow();
}

void sub_25A93254C(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 1;
    v5 = 32;
    do
    {
      v6 = *(a2 + v5);
      v7 = v4 * v6;
      if ((v4 * v6) >> 64 != (v4 * v6) >> 63)
      {
        __break(1u);
        return;
      }

      v5 += 8;
      v4 *= v6;
      --v3;
    }

    while (v3);
    if (result[2] != v7)
    {
      goto LABEL_9;
    }

    sub_25A934F80(result, a2, a3);
  }

  else if (result[2] == 1)
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
    v10 = swift_allocObject();
    *a3 = v10;
    sub_25A87500C((result + 4), v10 + 16);
  }

  else
  {
LABEL_9:
    sub_25A874F54();
    swift_allocError();
    *v11 = 92;
    swift_willThrow();
  }
}

uint64_t sub_25A932654(uint64_t a1, uint64_t a2, void *a3)
{
  sub_25A87500C(a2, &v34);
  if (swift_dynamicCast())
  {
    v45[0] = v40;
    v45[1] = v41;
    v46 = v42;
    v43 = v38;
    v44 = v39;
    v7 = a3[3];
    v8 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v7);
    (*(v8 + 8))(v45 + 8, a1, v7, v8);
    return sub_25A878128(&v43);
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  sub_25A878194(&v38, &qword_27FA04548, &unk_25A9F86F0);
  sub_25A87500C(a2, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_25A878194(&v38, &qword_27FA04728, &unk_25A9FD740);
LABEL_15:
    sub_25A874F54();
    swift_allocError();
    *v28 = 60;
    return swift_willThrow();
  }

  sub_25A87817C(&v38, &v43);
  sub_25A87500C(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04868, &qword_25A9F8EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    AssociatedConformanceWitness = 0;
    v34 = 0u;
    v35 = 0u;
    sub_25A878194(&v34, &qword_27FA04850, &unk_25A9FDC60);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0Tm(&v43);
    goto LABEL_15;
  }

  sub_25A87817C(&v34, &v38);
  v10 = *(&v44 + 1);
  v11 = *&v45[0];
  __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  v12 = *((*(v11 + 8))(v10, v11) + 16);

  __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
  if (v12 != sub_25A998288())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v38);
    goto LABEL_14;
  }

  v30 = a3;
  v47 = v3;
  v13 = __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
  MEMORY[0x28223BE20](v13);
  (*(v15 + 16))(&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(&v35 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v34);
  sub_25A998068();
  v31 = 32;
  for (i = 0; ; i = v25 + 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = sub_25A9983F8();
    v18 = *(v17 - 8);
    MEMORY[0x28223BE20](v17);
    v20 = &v29 - v19;
    sub_25A998448();
    v21 = *(AssociatedTypeWitness - 8);
    if ((*(v21 + 48))(v20, 1, AssociatedTypeWitness) == 1)
    {
      (*(v18 + 8))(v20, v17);
      __swift_destroy_boxed_opaque_existential_0Tm(&v34);
      __swift_destroy_boxed_opaque_existential_0Tm(&v38);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v43);
    }

    v37[3] = AssociatedTypeWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
    (*(v21 + 32))(boxed_opaque_existential_0, v20, AssociatedTypeWitness);
    v23 = *(&v44 + 1);
    v24 = *&v45[0];
    __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
    result = (*(v24 + 8))(v23, v24);
    v25 = i;
    if (i >= *(result + 16))
    {
      break;
    }

    v26 = v31;
    sub_25A87500C(result + v31, v33);

    v27 = v47;
    sub_25A932654(v37, v33, v30);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    if (v27)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v34);
      __swift_destroy_boxed_opaque_existential_0Tm(&v38);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v43);
    }

    v47 = 0;
    v31 = v26 + 32;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A932C40(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25A967040(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25A932D2C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_25A967258(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_25A932E24(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_25A967040(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 8 * v15 + 32), (a2 + 8 * a3), 8 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_25A932F38(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_25A998848();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_25A998848();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_25A938DFC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_25A938E9C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25A933028(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25A966F38(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25A933114(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_25A967378(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25A933208(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_25A967488(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t NumericType.hashValue.getter()
{
  v1 = *v0;
  sub_25A998B18();
  MEMORY[0x25F850E50](v1);
  return sub_25A998B38();
}

uint64_t sub_25A9333BC()
{
  v1 = *v0;
  sub_25A998B18();
  MEMORY[0x25F850E50](v1);
  return sub_25A998B38();
}

uint64_t sub_25A933430(uint64_t a1)
{
  v2 = *v1;
  sub_25A998B18();
  MEMORY[0x25F850E50](v2);
  return sub_25A998B38();
}

uint64_t sub_25A9334D4(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A933508@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = result + 32;
    v7 = 11;
    while (1)
    {
      v8 = v7;
      result = static MorpheusUtils.getType(of:)(v6 + 32 * v5, &v13);
      if (v2)
      {
        break;
      }

      v7 = v13;
      if (v8 != 11)
      {
        if (v8 == v13)
        {
          v7 = v8;
        }

        else
        {
          if (!qword_286C0B578)
          {
            goto LABEL_22;
          }

          v9 = 0;
          while (1)
          {
            v10 = *(&unk_286C0B568 + v9 + 32);
            if (v10 == v8)
            {
              break;
            }

            if (qword_286C0B578 == ++v9)
            {
              v9 = 0;
              goto LABEL_14;
            }
          }

          if (!qword_286C0B578)
          {
            goto LABEL_22;
          }

LABEL_14:
          v11 = 0;
          while (*(&unk_286C0B568 + v11 + 32) != v13)
          {
            if (qword_286C0B578 == ++v11)
            {
              goto LABEL_22;
            }
          }

          if (v10 == v8)
          {
            if (v9 > 0xA)
            {
              __break(1u);
LABEL_28:
              __break(1u);
              return result;
            }

            v12 = qword_286C0B7A8[v9 + 4];
            if (v11 >= *(v12 + 16))
            {
              goto LABEL_28;
            }

            v7 = *(v12 + v11 + 32);
          }

          else
          {
LABEL_22:
            v7 = 10;
          }
        }
      }

      if (++v5 == v4)
      {
        if (v7 != 11)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    LOBYTE(v7) = 10;
LABEL_25:
    *a2 = v7;
  }

  return result;
}

_OWORD *static MorpheusUtils.unwrapMorpheusResult(result:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25A87500C(a1, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  if (swift_dynamicCast())
  {
    swift_beginAccess();

    sub_25A936C50(v4);
    v6 = v5;

    v7 = &qword_27FA04738;
    v8 = "^N\a";
LABEL_6:
    *(&v41 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    *&v40 = v6;
LABEL_7:
    static MorpheusUtils.unwrapMorpheusResult(result:)(&v40, a2);

    return __swift_destroy_boxed_opaque_existential_0Tm(&v40);
  }

  sub_25A87500C(a1, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
  if (swift_dynamicCast() || (sub_25A87500C(a1, &v40), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20), swift_dynamicCast()))
  {
    swift_beginAccess();

    v6 = sub_25A93019C(v9);

    v7 = &qword_27FA04460;
    v8 = &qword_25A9FDA30;
    goto LABEL_6;
  }

  sub_25A87500C(a1, &v40);
  type metadata accessor for SharedMutableSet();
  if (swift_dynamicCast())
  {
    v11 = v43[0];
    swift_beginAccess();
    v12 = *(v11 + 16);
    *(&v41 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05360, &qword_25A9FDA40);
    *&v40 = v12;

    goto LABEL_7;
  }

  sub_25A87500C(a1, &v40);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04738, "^N\a");
  if (swift_dynamicCast())
  {
    v14 = v43[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05358, &qword_25A9FDA38);
    result = sub_25A998868();
    v15 = result;
    v16 = 0;
    v17 = 1 << *(v14 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v14 + 64);
    v20 = (v17 + 63) >> 6;
    v38 = result + 4;
    if (v19)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_20:
        v24 = v21 | (v16 << 6);
        sub_25A874FB0(*(v14 + 48) + 40 * v24, &v40);
        sub_25A87500C(*(v14 + 56) + 32 * v24, v43);
        static MorpheusUtils.unwrapMorpheusResult(result:)(v43, v39);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        *(v38 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v25 = v15[6] + 40 * v24;
        v26 = v40;
        v27 = v41;
        *(v25 + 32) = v42;
        *v25 = v26;
        *(v25 + 16) = v27;
        result = sub_25A872D74(v39, (v15[7] + 32 * v24));
        v28 = v15[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          break;
        }

        v15[2] = v30;
        if (!v19)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v22 = v16;
      while (1)
      {
        v16 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v16 >= v20)
        {

          a2[3] = v13;
          *a2 = v15;
          return result;
        }

        v23 = *(v14 + 64 + 8 * v16);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v19 = (v23 - 1) & v23;
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_25A87500C(a1, &v40);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
    if (swift_dynamicCast())
    {
      v32 = v43[0];
      v33 = *(v43[0] + 16);
      if (v33)
      {
        *&v39[0] = MEMORY[0x277D84F90];
        sub_25A937550(0, v33, 0);
        v34 = *&v39[0];
        v35 = v32 + 32;
        do
        {
          sub_25A87500C(v35, v43);
          static MorpheusUtils.unwrapMorpheusResult(result:)(v43, &v40);
          __swift_destroy_boxed_opaque_existential_0Tm(v43);
          *&v39[0] = v34;
          v37 = *(v34 + 16);
          v36 = *(v34 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_25A937550((v36 > 1), v37 + 1, 1);
            v34 = *&v39[0];
          }

          *(v34 + 16) = v37 + 1;
          sub_25A872D74(&v40, (v34 + 32 * v37 + 32));
          v35 += 32;
          --v33;
        }

        while (v33);
      }

      else
      {

        v34 = MEMORY[0x277D84F90];
      }

      a2[3] = v31;
      *a2 = v34;
    }

    else
    {
      return sub_25A87500C(a1, a2);
    }
  }

  return result;
}

uint64_t static MorpheusUtils.toMLXArray(mlTensor:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25A933B7C, 0, 0);
}

uint64_t sub_25A933B7C()
{
  sub_25A997BE8();
  if (swift_dynamicCastMetatype())
  {
    v1 = swift_task_alloc();
    v0[4] = v1;
    *v1 = v0;
    v1[1] = sub_25A93402C;
    v2 = MEMORY[0x277D839B0];
LABEL_19:

    return MEMORY[0x2821118F8](v2);
  }

  if (swift_dynamicCastMetatype())
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_25A9341E0;
    v2 = MEMORY[0x277D84DC8];
    goto LABEL_19;
  }

  if (swift_dynamicCastMetatype())
  {
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_25A934394;
    v2 = MEMORY[0x277D83A90];
    goto LABEL_19;
  }

  if (swift_dynamicCastMetatype())
  {
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_25A934548;
    v2 = MEMORY[0x277D84B78];
    goto LABEL_19;
  }

  if (swift_dynamicCastMetatype())
  {
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_25A9346FC;
    v2 = MEMORY[0x277D84C58];
    goto LABEL_19;
  }

  if (swift_dynamicCastMetatype())
  {
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_25A9348B0;
    v2 = MEMORY[0x277D84CC0];
    goto LABEL_19;
  }

  if (swift_dynamicCastMetatype())
  {
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_25A934A64;
    v2 = MEMORY[0x277D84900];
    goto LABEL_19;
  }

  if (swift_dynamicCastMetatype())
  {
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_25A934C18;
    v2 = MEMORY[0x277D84958];
    goto LABEL_19;
  }

  if (swift_dynamicCastMetatype())
  {
    v10 = swift_task_alloc();
    v0[20] = v10;
    *v10 = v0;
    v10[1] = sub_25A934DCC;
    v2 = MEMORY[0x277D849A8];
    goto LABEL_19;
  }

  sub_25A874F54();
  swift_allocError();
  *v11 = 112;
  swift_willThrow();
  v12 = v0[1];

  return v12();
}

uint64_t sub_25A93402C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_25A93412C, 0, 0);
}

uint64_t sub_25A93412C()
{
  v1 = v0[5];
  v2 = sub_25A997C08();
  v3 = sub_25A939154(v1, v2);
  v4 = v0[2];

  v4[3] = type metadata accessor for MLXArray();
  v4[4] = &off_286C10260;
  *v4 = v3;
  v5 = v0[1];

  return v5();
}

uint64_t sub_25A9341E0(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_25A9342E0, 0, 0);
}

uint64_t sub_25A9342E0()
{
  v1 = v0[7];
  v2 = sub_25A997C08();
  v3 = sub_25A939274(v1, v2);
  v4 = v0[2];

  v4[3] = type metadata accessor for MLXArray();
  v4[4] = &off_286C10260;
  *v4 = v3;
  v5 = v0[1];

  return v5();
}

uint64_t sub_25A934394(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_25A934494, 0, 0);
}

uint64_t sub_25A934494()
{
  v1 = v0[9];
  v2 = sub_25A997C08();
  v3 = sub_25A939394(v1, v2);
  v4 = v0[2];

  v4[3] = type metadata accessor for MLXArray();
  v4[4] = &off_286C10260;
  *v4 = v3;
  v5 = v0[1];

  return v5();
}

uint64_t sub_25A934548(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_25A934648, 0, 0);
}

uint64_t sub_25A934648()
{
  v1 = v0[11];
  v2 = sub_25A997C08();
  v3 = sub_25A939934(v1, v2);
  v4 = v0[2];

  v4[3] = type metadata accessor for MLXArray();
  v4[4] = &off_286C10260;
  *v4 = v3;
  v5 = v0[1];

  return v5();
}

uint64_t sub_25A9346FC(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_25A9347FC, 0, 0);
}

uint64_t sub_25A9347FC()
{
  v1 = v0[13];
  v2 = sub_25A997C08();
  v3 = sub_25A939A54(v1, v2);
  v4 = v0[2];

  v4[3] = type metadata accessor for MLXArray();
  v4[4] = &off_286C10260;
  *v4 = v3;
  v5 = v0[1];

  return v5();
}

uint64_t sub_25A9348B0(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_25A9349B0, 0, 0);
}

uint64_t sub_25A9349B0()
{
  v1 = v0[15];
  v2 = sub_25A997C08();
  v3 = sub_25A939B74(v1, v2);
  v4 = v0[2];

  v4[3] = type metadata accessor for MLXArray();
  v4[4] = &off_286C10260;
  *v4 = v3;
  v5 = v0[1];

  return v5();
}

uint64_t sub_25A934A64(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return MEMORY[0x2822009F8](sub_25A934B64, 0, 0);
}

uint64_t sub_25A934B64()
{
  v1 = v0[17];
  v2 = sub_25A997C08();
  v3 = sub_25A9394B4(v1, v2);
  v4 = v0[2];

  v4[3] = type metadata accessor for MLXArray();
  v4[4] = &off_286C10260;
  *v4 = v3;
  v5 = v0[1];

  return v5();
}

uint64_t sub_25A934C18(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_25A934D18, 0, 0);
}

uint64_t sub_25A934D18()
{
  v1 = v0[19];
  v2 = sub_25A997C08();
  v3 = sub_25A9395D4(v1, v2);
  v4 = v0[2];

  v4[3] = type metadata accessor for MLXArray();
  v4[4] = &off_286C10260;
  *v4 = v3;
  v5 = v0[1];

  return v5();
}

uint64_t sub_25A934DCC(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_25A934ECC, 0, 0);
}

uint64_t sub_25A934ECC()
{
  v1 = v0[21];
  v2 = sub_25A997C08();
  v3 = sub_25A9396F4(v1, v2);
  v4 = v0[2];

  v4[3] = type metadata accessor for MLXArray();
  v4[4] = &off_286C10260;
  *v4 = v3;
  v5 = v0[1];

  return v5();
}

void sub_25A934F80(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
    *a3 = a1;

    return;
  }

  if (!v5)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v6 = *(a2 + 32);
  if (!v6)
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
    *a3 = MEMORY[0x277D84F90];
    return;
  }

  sub_25A93718C(a2, a2 + 32, 1, (2 * v5) | 1);
  v8 = a1[2];
  v9 = v8 / v6;
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v7;

  sub_25A93A090(0, v8, v9, a1, v9);
  v12 = v11;

  v13 = *(v12 + 16);
  if (v13)
  {
    v20 = MEMORY[0x277D84F90];
    sub_25A937550(0, v13, 0);
    v14 = 32;
    v15 = v20;
    do
    {

      sub_25A934F80(v16, v10, v19);

      v20 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_25A937550((v17 > 1), v18 + 1, 1);
        v15 = v20;
      }

      *(v15 + 16) = v18 + 1;
      sub_25A872D74(v19, (v15 + 32 * v18 + 32));
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
  *a3 = v15;
}

void sub_25A935270(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), void (*a8)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v8;
  v86 = a6;
  if ((a2 & 0xC000000000000001) != 0)
  {

    v10 = MEMORY[0x25F8509C0](a1, a2);
LABEL_5:
    v11 = v10[6];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v14 = v10[4];
    v15 = *(v11 + 48);
    swift_unknownObjectRetain();
    v15(Strong, v14, ObjectType, v11);
    swift_unknownObjectRelease();
    v16 = v10[8];
    v17 = swift_getObjectType();
    v18 = swift_unknownObjectWeakLoadStrong();
    v19 = v10[4];
    v20 = *(v16 + 48);
    swift_unknownObjectRetain();
    v20(v18, v19, v17, v16);
    swift_unknownObjectRelease();
    v21 = *(v10[9] + 16);
    if (v21)
    {
      v66 = v9;
      v22 = ( + 40);
      do
      {
        v23 = *v22;
        v24 = swift_getObjectType();
        v25 = swift_unknownObjectWeakLoadStrong();
        v26 = v10[4];
        v27 = *(v23 + 48);
        swift_unknownObjectRetain();
        v27(v25, v26, v24, v23);
        swift_unknownObjectRelease();
        v22 += 2;
        --v21;
      }

      while (v21);

      v9 = v66;
    }

    v28 = v10[6];
    v29 = swift_getObjectType();
    v30 = *(v28 + 64);
    swift_unknownObjectRetain();
    v30(v82, v29, v28);
    if (v9)
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
    sub_25A896580(v85);
    sub_25A872CE0(v82);
    v31 = v10[8];
    v32 = swift_getObjectType();
    v33 = *(v31 + 64);
    swift_unknownObjectRetain();
    v33(&v73, v32, v31);
    swift_unknownObjectRelease();
    sub_25A9119F0(&v79);
    sub_25A872CE0(&v73);
    if (v80)
    {
      sub_25A87817C(&v79, v82);
      v34 = v83;
      v35 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      (*(v35 + 16))(v34, v35);
      sub_25A9988A8();
      if (v78)
      {
        v36 = a4;
        v37 = __OFADD__(a1, 1);
        v58 = v37;
        while (1)
        {
          sub_25A872D74(&v77, v76);
          v38 = swift_getObjectType();
          v39 = (*(v36 + 8))(v38, v36);
          v80 = type metadata accessor for LexicalContext();
          v81 = &protocol witness table for LexicalContext;
          *&v79 = v39;
          sub_25A932654(v76, v85, &v79);
          __swift_destroy_boxed_opaque_existential_0Tm(&v79);
          v40 = v10[9];
          v41 = *(v40 + 16);

          if (v41)
          {
            break;
          }

LABEL_26:

          if (a2 >> 62)
          {
            v51 = sub_25A998848();
          }

          else
          {
            v51 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v52 = v86;
          v36 = a4;
          if (__OFSUB__(v51, 1))
          {
            goto LABEL_48;
          }

          if (v51 - 1 == a1)
          {
            a7(a5, v86);
          }

          else
          {
            if (v58)
            {
              goto LABEL_49;
            }

            a8(a1 + 1, a2, a3, a4, a5, v52);
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v76);
LABEL_35:
          sub_25A9988A8();
          if (!v78)
          {
            goto LABEL_39;
          }
        }

        v42 = 0;
        v43 = (v40 + 40);
        while (v42 < *(v40 + 16))
        {
          v67 = v42;
          v44 = *v43;
          v45 = swift_getObjectType();
          v46 = *(v44 + 64);
          swift_unknownObjectRetain();
          v46(v72, v45, v44);
          sub_25A872C84(v72, v68);
          if (v69)
          {
            sub_25A872CE0(v68);
            sub_25A872C84(v72, v68);
            if (v69 != 1)
            {
              sub_25A872CE0(v72);
              sub_25A872CE0(v68);
              v73 = 0u;
              v74 = 0u;
              v75 = 0;
LABEL_41:

              sub_25A878194(&v73, &qword_27FA047E8, &unk_25A9FBF80);
              sub_25A874F54();
              swift_allocError();
              *v55 = 108;
              swift_willThrow();

              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_0Tm(v76);
              __swift_destroy_boxed_opaque_existential_0Tm(v85);
              goto LABEL_42;
            }
          }

          v70 = v68[0];
          v71 = v68[1];
          *(&v74 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v75 = &protocol witness table for A?;
          v47 = swift_allocObject();
          *&v73 = v47;
          v48 = v71;
          *(v47 + 16) = v70;
          *(v47 + 32) = v48;
          sub_25A872CE0(v72);
          if (!*(&v74 + 1))
          {
            goto LABEL_41;
          }

          sub_25A87817C(&v73, &v79);
          v49 = v80;
          v50 = v81;
          __swift_project_boxed_opaque_existential_1(&v79, v80);
          LOBYTE(v49) = (v50[1])(v49, v50);
          swift_unknownObjectRelease();
          if ((v49 & 1) == 0)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(v76);

            __swift_destroy_boxed_opaque_existential_0Tm(&v79);
            v36 = a4;
            goto LABEL_35;
          }

          v42 = v67 + 1;
          __swift_destroy_boxed_opaque_existential_0Tm(&v79);
          v43 += 2;
          if (v41 == v67 + 1)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_47;
      }

LABEL_39:
      __swift_destroy_boxed_opaque_existential_0Tm(v85);

LABEL_42:
      v54 = v82;
    }

    else
    {
      sub_25A878194(&v79, &qword_27FA04CB8, &unk_25A9FDC50);
      sub_25A874F54();
      swift_allocError();
      *v53 = 108;
      swift_willThrow();

      v54 = v85;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v54);

    return;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v10 = *(a2 + 8 * a1 + 32);

    goto LABEL_5;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t static MorpheusUtils.swiftfy(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25A997AB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25A8952F0(a1, v69, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v70)
  {
    goto LABEL_44;
  }

  sub_25A8952F0(v69, v68, &qword_27FA04458, &unk_25A9F7FB0);
  sub_25A8E6ABC(0, &qword_27FA05368, 0x277CBEAC0);
  v8 = MEMORY[0x277D84F70];
  if (!swift_dynamicCast())
  {
    sub_25A8E6ABC(0, &qword_27FA05370, 0x277CBEA60);
    if (swift_dynamicCast())
    {
      v51 = a2;
      v29 = *&v58[0];
      v30 = [*&v58[0] count];
      *&v57[0] = MEMORY[0x277D84F90];
      sub_25A937550(0, v30 & ~(v30 >> 63), 0);
      v31 = *&v57[0];
      sub_25A9983D8();
      if (v30 < 0)
      {
        goto LABEL_48;
      }

      v52 = v5;
      v50 = v29;
      if (v30)
      {
        sub_25A939DD8();
        do
        {
          sub_25A998448();
          if (!*(&v60 + 1))
          {
            goto LABEL_49;
          }

          sub_25A87500C(&v59, &v54);
          static MorpheusUtils.swiftfy(_:)(&v54, &v63);
          sub_25A878194(&v54, &qword_27FA04458, &unk_25A9F7FB0);
          __swift_destroy_boxed_opaque_existential_0Tm(&v59);
          *&v57[0] = v31;
          v33 = *(v31 + 16);
          v32 = *(v31 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_25A937550((v32 > 1), v33 + 1, 1);
            v31 = *&v57[0];
          }

          *(v31 + 16) = v33 + 1;
          sub_25A872D74(&v63, (v31 + 32 * v33 + 32));
          --v30;
        }

        while (v30);
      }

      sub_25A939DD8();
      sub_25A998448();
      while (*(&v60 + 1))
      {
        sub_25A872D74(&v59, &v63);
        sub_25A87500C(&v63, &v54);
        static MorpheusUtils.swiftfy(_:)(&v54, &v59);
        sub_25A878194(&v54, &qword_27FA04458, &unk_25A9F7FB0);
        __swift_destroy_boxed_opaque_existential_0Tm(&v63);
        *&v57[0] = v31;
        v36 = *(v31 + 16);
        v35 = *(v31 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_25A937550((v35 > 1), v36 + 1, 1);
          v31 = *&v57[0];
        }

        *(v31 + 16) = v36 + 1;
        sub_25A872D74(&v59, (v31 + 32 * v36 + 32));
        sub_25A998448();
      }

      (*(v52 + 8))(v7, v4);
      sub_25A878194(&v59, &qword_27FA04458, &unk_25A9F7FB0);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
      v38 = v50;
      v39 = v51;
      v51[3] = v37;

      *v39 = v31;
      goto LABEL_38;
    }

    sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v34 = v63;
      NSNumber.swiftValue.getter(a2);

LABEL_38:
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      return sub_25A878194(v69, &qword_27FA04458, &unk_25A9F7FB0);
    }

    sub_25A8E6ABC(0, &qword_27FA04A70, 0x277CCACA8);
    if (swift_dynamicCast())
    {
      v43 = v63;
      v44 = sub_25A997E28();
      v46 = v45;
      a2[3] = MEMORY[0x277D837D0];

      *a2 = v44;
      a2[1] = v46;
      goto LABEL_38;
    }

    sub_25A8E6ABC(0, &qword_27FA05378, 0x277CBEB68);
    if (swift_dynamicCast())
    {

      a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      v47 = swift_allocObject();
      *a2 = v47;
      *(v47 + 16) = 0u;
      *(v47 + 32) = 0u;
      goto LABEL_38;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v68);
LABEL_44:
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
    v48 = swift_allocObject();
    *a2 = v48;
    sub_25A8952F0(a1, v48 + 16, &qword_27FA04458, &unk_25A9F7FB0);
    return sub_25A878194(v69, &qword_27FA04458, &unk_25A9F7FB0);
  }

  v51 = a2;
  v50 = v67;
  v9 = sub_25A998368();
  sub_25A998378();
  v63 = v59;
  v64 = v60;
  v65 = v61;
  v66 = v62;
  if (!*(&v60 + 1))
  {
    v10 = MEMORY[0x277D84F98];
LABEL_37:

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048F0, "2K\a");
    v41 = v50;
    v42 = v51;
    v51[3] = v40;

    *v42 = v10;
    goto LABEL_38;
  }

  v10 = MEMORY[0x277D84F98];
  v52 = v9;
  while (1)
  {
    sub_25A872D74(&v65, v58);
    sub_25A872D74(&v63, v57);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    sub_25A878194(&v54, &qword_27FA04610, &qword_25A9FDA50);
LABEL_6:
    sub_25A998378();
    v63 = v59;
    v64 = v60;
    v65 = v61;
    v66 = v62;
    if (!*(&v60 + 1))
    {
      goto LABEL_37;
    }
  }

  v11 = v8;
  v59 = v54;
  v60 = v55;
  *&v61 = v56;
  v12 = sub_25A998548();
  v14 = v13;
  sub_25A87500C(v58, v57);
  static MorpheusUtils.swiftfy(_:)(v57, &v54);
  sub_25A878194(v57, &qword_27FA04458, &unk_25A9F7FB0);
  sub_25A872D74(&v54, v57);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v10;
  v17 = sub_25A8F3600(v12, v14);
  v18 = v10[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (!__OFADD__(v18, v19))
  {
    v21 = v16;
    if (v10[3] < v20)
    {
      sub_25A967C88(v20, isUniquelyReferenced_nonNull_native);
      v22 = sub_25A8F3600(v12, v14);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_50;
      }

      v17 = v22;
      if ((v21 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_15:

      v10 = v53;
      v24 = (v53[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      sub_25A872D74(v57, v24);
      sub_25A8795A0(&v59);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
LABEL_19:
      v8 = v11;
      goto LABEL_6;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_25A968F5C();
      if (v21)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    v10 = v53;
    v53[(v17 >> 6) + 8] |= 1 << v17;
    v25 = (v10[6] + 16 * v17);
    *v25 = v12;
    v25[1] = v14;
    sub_25A872D74(v57, (v10[7] + 32 * v17));
    sub_25A8795A0(&v59);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    v26 = v10[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_47;
    }

    v10[2] = v28;
    goto LABEL_19;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_25A998AA8();
  __break(1u);
  return result;
}

void *sub_25A936284()
{
  type metadata accessor for LexicalContext();
  v0[3] = 0;
  v0[4] = 0;
  v1 = swift_allocObject();
  v1[2] = 0x6E776F6E6B6E55;
  v1[3] = 0xE700000000000000;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v4 + 16) = v3;
  v1[4] = v4;
  v1[5] = sub_25A98E67C(v2);
  v0[2] = v1;
  v1[2] = 0x656E696C6E49;
  v1[3] = 0xE600000000000000;

  return v0;
}

double sub_25A936380@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{

  LexicalContext.attribute(for:)(a1, a2, &v17);

  if (v18)
  {
    sub_25A872D74(&v17, a3);
  }

  else
  {
    sub_25A878194(&v17, &qword_27FA04458, &unk_25A9F7FB0);
    swift_beginAccess();
    if (*(v3 + 24))
    {
      v8 = *(v3 + 32);
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 48);
      swift_unknownObjectRetain();
      v10(a1, a2, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v11 = sub_25A997BD8();
      __swift_project_value_buffer(v11, qword_27FA0FCE8);

      v12 = sub_25A997BB8();
      v13 = sub_25A9983A8();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_25A98CC90(a1, a2, &v16);
        _os_log_impl(&dword_25A232000, v12, v13, "TempBlock> Can't locate name %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x25F852800](v15, -1, -1);
        MEMORY[0x25F852800](v14, -1, -1);
      }

      result = 0.0;
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  return result;
}

uint64_t sub_25A93659C(uint64_t a1, void *a2)
{

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v6 = LexicalContext.has(attribute:)(v5);

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    swift_beginAccess();
    if (*(v2 + 24))
    {
      v8 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 56);
      swift_unknownObjectRetain();
      v7 = v10(a1, a2, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t sub_25A936684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = MEMORY[0x277D837D0];
  v9[0] = a1;
  v9[1] = a2;
  sub_25A87500C(v9, v8);

  if (swift_dynamicCast())
  {

    sub_25A998578();
    sub_25A87500C(a3, v7);
    sub_25A874FB0(v8, &v6);
    sub_25A8952F0(v7, v5, &qword_27FA04458, &unk_25A9F7FB0);
    swift_beginAccess();
    sub_25A8F2E14(v5, &v6);
    swift_endAccess();

    sub_25A878194(v7, &qword_27FA04458, &unk_25A9F7FB0);
    sub_25A8795A0(v8);
  }

  else
  {
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v9);
}

uint64_t sub_25A9367E8()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A936874(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_25A936924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v30 = a2;
  v6 = sub_25A9983F8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - v12;
  v14 = *(a3 - 8);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  sub_25A87500C(a1, v31);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if ((v20 & 1) == 0)
  {
    v21(v13, 1, 1, a3);
    (*(v7 + 8))(v13, v6);
LABEL_6:
    v24 = 0;
    return v24 & 1;
  }

  v28 = v6;
  v21(v13, 0, 1, a3);
  v22 = v13;
  v23 = *(v14 + 32);
  v23(v19, v22, a3);
  sub_25A87500C(v30, v31);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21(v10, 1, 1, a3);
    (*(v14 + 8))(v19, a3);
    (*(v7 + 8))(v10, v28);
    goto LABEL_6;
  }

  v21(v10, 0, 1, a3);
  v23(v17, v10, a3);
  v24 = sub_25A997DF8();
  v25 = *(v14 + 8);
  v25(v17, a3);
  v25(v19, a3);
  return v24 & 1;
}

void sub_25A936C50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05358, &qword_25A9FDA38);
    v2 = sub_25A998888();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_25A874FB0(*(a1 + 48) + 40 * v12, &v35);
    sub_25A87500C(*(a1 + 56) + 32 * v12, v37 + 8);
    v33[0] = v37[0];
    v33[1] = v37[1];
    v34 = v38;
    v32[2] = v35;
    v32[3] = v36;
    v21 = v35;
    v23 = v36;
    v25 = *&v37[0];
    sub_25A872D74((v33 + 8), v27);
    v28 = v21;
    v29 = v23;
    v30 = v25;
    sub_25A872D74(v27, v31);
    v22 = v28;
    v24 = v29;
    v26 = v30;
    sub_25A872D74(v31, v32);
    v13 = sub_25A998558();
    v14 = -1 << *(v2 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v9 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v24;
    *(v10 + 32) = v26;
    sub_25A872D74(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_25A936F00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CC8, &unk_25A9FDC30);
    v1 = sub_25A998888();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v6;
    if (v4)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v15 = *v13;
        v14 = v13[1];
        sub_25A8952F0(*(a1 + 56) + 32 * v12, &v29, &qword_27FA04458, &unk_25A9F7FB0);
        v27 = v15;
        v28 = v14;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
        swift_dynamicCast();
        sub_25A872D74(&v23, v25);
        sub_25A872D74(v25, v26);
        sub_25A872D74(v26, &v24);
        v16 = sub_25A8F3600(v15, v14);
        if (v17)
        {
          v7 = (v1[6] + 16 * v16);
          *v7 = v15;
          v7[1] = v14;
          v8 = v16;

          v9 = (v1[7] + 32 * v8);
          __swift_destroy_boxed_opaque_existential_0Tm(v9);
          sub_25A872D74(&v24, v9);
          v6 = v10;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v1[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_25A872D74(&v24, (v1[7] + 32 * v16));
          v19 = v1[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v1[2] = v21;
          v6 = v10;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v6;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_25A93718C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_25A937260(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053B0, &qword_25A9FDC20);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_25A937334(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053B0, &qword_25A9FDC20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 29;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 2);
  return v4;
}

void *sub_25A9373B8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 25;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 3);
  return v4;
}

void *sub_25A93743C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053D0, &qword_25A9FDC88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 40);
  return v4;
}

void *sub_25A9374CC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 1;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 5);
  return v4;
}

char *sub_25A937550(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A937A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25A937570(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A938CFC(a1, a2, a3, *v3, &qword_27FA04920, &qword_25A9FDA00);
  *v3 = result;
  return result;
}

char *sub_25A9375A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A937B54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25A9375C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A937C64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25A9375E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A937FD8(a1, a2, a3, *v3, &qword_27FA053B0, &qword_25A9FDC20);
  *v3 = result;
  return result;
}

char *sub_25A937610(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A937D6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25A937630(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A937E8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25A937650(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A938A78(a1, a2, a3, *v3, &qword_27FA05458, &qword_25A9FDD38, &qword_27FA04830, &qword_25A9FDD40);
  *v3 = result;
  return result;
}

char *sub_25A937690(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A938CFC(a1, a2, a3, *v3, &qword_27FA05448, &unk_25A9FDD10);
  *v3 = result;
  return result;
}

char *sub_25A9376C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A937FD8(a1, a2, a3, *v3, &qword_27FA05440, &qword_25A9FDD08);
  *v3 = result;
  return result;
}

char *sub_25A9376F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A9380D8(a1, a2, a3, *v3, &qword_27FA05438, &qword_25A9FDD00);
  *v3 = result;
  return result;
}

char *sub_25A937720(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A9381D0(a1, a2, a3, *v3, &qword_27FA053E0, &qword_25A9FDC98);
  *v3 = result;
  return result;
}

char *sub_25A937750(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A938CFC(a1, a2, a3, *v3, &qword_27FA053D8, &qword_25A9FDC90);
  *v3 = result;
  return result;
}

char *sub_25A937780(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A9380D8(a1, a2, a3, *v3, &qword_27FA05430, &qword_25A9FDCF8);
  *v3 = result;
  return result;
}

char *sub_25A9377B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A9381D0(a1, a2, a3, *v3, &qword_27FA05428, &qword_25A9FDCF0);
  *v3 = result;
  return result;
}

char *sub_25A9377E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A9382C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25A937800(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A9383C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25A937820(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A9384C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25A937840(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A9385C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25A937860(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A93870C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25A937880(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A938844(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25A9378A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A938BB0(a1, a2, a3, *v3, &qword_27FA04710, &unk_25A9FDC70, &qword_27FA04800, &qword_25A9F8E90);
  *v3 = result;
  return result;
}

char *sub_25A9378E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A938954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25A937900(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A938BB0(a1, a2, a3, *v3, &qword_27FA05450, &qword_25A9FDD30, &qword_27FA05178, &qword_25A9FBFA0);
  *v3 = result;
  return result;
}

void *sub_25A937940(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A938BB0(a1, a2, a3, *v3, &qword_27FA053C0, &qword_25A9FDC48, &qword_27FA04810, &qword_25A9F8E98);
  *v3 = result;
  return result;
}

void *sub_25A937980(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A938A78(a1, a2, a3, *v3, &qword_27FA053A0, &qword_25A9FDC10, &qword_27FA04460, &qword_25A9FDA30);
  *v3 = result;
  return result;
}

void *sub_25A9379C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A938A78(a1, a2, a3, *v3, &qword_27FA053F8, &unk_25A9FDCB0, &qword_27FA05360, &qword_25A9FDA40);
  *v3 = result;
  return result;
}

void *sub_25A937A00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25A938BB0(a1, a2, a3, *v3, &qword_27FA05400, &qword_25A9FDCC8, &qword_27FA04E88, &qword_25A9FBA48);
  *v3 = result;
  return result;
}

char *sub_25A937A40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
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

char *sub_25A937B54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
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

char *sub_25A937C64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053A8, &qword_25A9FDC18);
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

char *sub_25A937D6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053B8, &qword_25A9FDC28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25A937E8C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053C8, &qword_25A9FDC80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04610, &qword_25A9FDA50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25A937FD8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

char *sub_25A9380D8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

char *sub_25A9381D0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

char *sub_25A9382C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05420, &qword_25A9FDCE8);
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

char *sub_25A9383C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05418, &qword_25A9FDCE0);
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

char *sub_25A9384C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05410, &qword_25A9FDCD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_25A9385C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053E8, &qword_25A9FDCA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053F0, &qword_25A9FDCA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25A93870C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25A938844(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05408, &qword_25A9FDCD0);
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