unsigned __int8 *static MailboxPath.makeRootMailbox(displayName:pathSeparator:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = sub_1B0E44DC8();
    if (a1 > 1000)
    {
      v8 = sub_1B0E44DC8();
LABEL_4:
      sub_1B0DDB530();
      swift_allocError();
      *v9 = 1000;
      v9[1] = v8;
LABEL_10:
      swift_willThrow();
      return v6;
    }
  }

  else if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a1 & 0xFFFFFFFFFFFFuLL) > 0x3E8)
    {
      goto LABEL_4;
    }
  }

  if (a4)
  {
    v27 = a3;
    v28 = a4;
    MEMORY[0x1EEE9AC00](a1);
    v26[2] = &v27;
    if (sub_1B0DDA8EC(sub_1B0DDB4C0, v26, v7, v6))
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1B0E46298();
      MEMORY[0x1B2726E80](v7, v6);
      MEMORY[0x1B2726E80](0xD00000000000001ELL, 0x80000001B0F30400);
      sub_1B0E44858();
      v10 = v27;
      v11 = v28;
      sub_1B0DDB4DC();
      swift_allocError();
      *v12 = v10;
      v12[1] = v11;
      goto LABEL_10;
    }
  }

  v13 = sub_1B0DF1158(v7, v6);
  v15 = v14;
  v17 = HIDWORD(v16);
  v18 = v16;
  swift_beginAccess();
  v19 = v17 - v18;
  if (v19)
  {
    v21 = *(v13 + 24);
    v22 = ((v15 >> 24) & 0xFFFF00 | BYTE6(v15)) + v18;
    v23 = sub_1B0C0C9F0(v19, 0);
    memcpy(v23 + 32, (v21 + v22), v19);
    v20 = v23;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v6 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v20);
  if (a4)
  {
    if ((sub_1B0E447F8() & 0x100) != 0)
    {

      sub_1B0CF9928();
      swift_allocError();
      *v25 = 0xD000000000000029;
      v25[1] = 0x80000001B0F2F3D0;
      swift_willThrow();
    }

    else
    {
      sub_1B0E447F8();
    }
  }

  return v6;
}

uint64_t MailboxPath.makeSubMailbox(displayName:)(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v7 = sub_1B0B9C9AC(BYTE4(a4));
  if (!v8)
  {
    sub_1B0CF9928();
    swift_allocError();
    *v14 = 0xD00000000000002BLL;
    v14[1] = 0x80000001B0F30420;
    goto LABEL_5;
  }

  v9 = v7;
  v10 = v8;
  v40 = v7;
  v41 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v39[2] = &v40;
  if (sub_1B0DDA8EC(sub_1B0DDB70C, v39, a1, a2))
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](a1, a2);
    MEMORY[0x1B2726E80](0xD00000000000001ELL, 0x80000001B0F30400);
    sub_1B0E44858();

    v11 = v40;
    v12 = v41;
    sub_1B0DDB4DC();
    swift_allocError();
    *v13 = v11;
    v13[1] = v12;
LABEL_5:
    swift_willThrow();
    return a1;
  }

  v46 = sub_1B0D8F260(a3, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
  v16 = HIDWORD(v15);
  v47 = v15;
  v48 = v17;
  v49 = v18;
  v50 = v19;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = sub_1B0D4BDD0(v9, v10, &v46, v16);
  if ((v20 & 0x100000000) != 0)
  {
    v21 = sub_1B0D4E9CC(v9, v10, v16);
  }

  else
  {
    v21 = v20;
  }

  if (!__CFADD__(HIDWORD(v47), v21))
  {
    HIDWORD(v47) += v21;
    v42[0] = sub_1B0DF1158(a1, a2);
    v42[1] = v23;
    v43 = v24;
    v45 = v25;
    v44 = v26;
    ByteBuffer.writeBuffer(_:)(v42);
    v27 = v47;
    a1 = HIDWORD(v47);
    v28 = (HIDWORD(v47) - v47);
    if (v28 <= 0x3E8)
    {
      v30 = v49;
      v31 = v50;
      v51 = v46;
      swift_beginAccess();
      if (a1 == v27)
      {
        v32 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v33 = a1 - v27;
        v34 = *(v51 + 24);
        v35 = (v31 | (v30 << 8)) + v27;
        v36 = sub_1B0C0C9F0(v33, 0);
        memcpy(v36 + 32, (v34 + v35), v33);
        v32 = v36;
      }

      a1 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v32);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v37 = sub_1B0E447F8();

      if ((v37 & 0x100) == 0)
      {
        sub_1B0E447F8();

        return a1;
      }

      sub_1B0CF9928();
      swift_allocError();
      *v38 = 0xD000000000000029;
      v38[1] = 0x80000001B0F2F3D0;
      swift_willThrow();
    }

    else
    {

      sub_1B0DDB530();
      swift_allocError();
      *v29 = 1000;
      v29[1] = v28;
      swift_willThrow();
    }

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DDA128()
{
  v0 = ByteBufferAllocator.buffer(string:)(0x584F424E49uLL, 0xE500000000000000, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
  v2 = v1;
  v4 = HIDWORD(v3);
  v5 = v3;
  swift_beginAccess();
  v6 = v4 - v5;
  if (v6)
  {
    v8 = *(v0 + 24);
    v9 = ((v2 >> 24) & 0xFFFF00 | BYTE6(v2)) + v5;
    v10 = sub_1B0C0C9F0(v6, 0);
    memcpy(v10 + 32, (v8 + v9), v6);
    v7 = v10;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v11 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v7);
  v13 = v12;

  static MailboxName.inbox = v11;
  dword_1EB737F18 = v13;
  return result;
}

double static MailboxName.inbox.getter()
{
  if (qword_1EB6DE998 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

void sub_1B0DDA2CC(unint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *, __n128))
{
  v5 = *(a3 + 16);
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v20 = a3 + 32;
  v23 = v6;
  v22 = 4 * v6;
  v7 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v19 = a2 & 0xFFFFFFFFFFFFFFLL;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = 0;
  v10 = 15;
  while (1)
  {
    if (v9 == v5)
    {
      if (v22 == v10 >> 14)
      {
        goto LABEL_31;
      }

      v12 = 0;
      v11 = v5;
    }

    else
    {
      if (v9 >= v5)
      {
        goto LABEL_33;
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_34;
      }

      LOBYTE(v25[0]) = *(v20 + v9);
      (a4)(&v26, v25);
      if (v22 == v10 >> 14)
      {
        goto LABEL_31;
      }

      v12 = v26;
    }

    v13 = v10 & 0xC;
    v14 = v10;
    if (v13 == v8)
    {
      v14 = sub_1B0A6D6C4(v10, a1, a2);
    }

    v15 = v14 >> 16;
    if (v14 >> 16 >= v23)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v17 = sub_1B0E44E08();
      if (v13 != v8)
      {
        goto LABEL_23;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v25[0] = a1;
      v25[1] = v19;
      v17 = *(v25 + v15);
      if (v13 != v8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = v18;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v16 = sub_1B0E46368();
      }

      v17 = *(v16 + v15);
      if (v13 != v8)
      {
LABEL_23:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_27;
      }
    }

    v10 = sub_1B0A6D6C4(v10, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v10 = (v10 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v10 >> 16)
    {
      goto LABEL_35;
    }

    v10 = sub_1B0E44DD8();
LABEL_29:
    if (v9 != v5)
    {
      v9 = v11;
      if (v12 == v17)
      {
        continue;
      }
    }

LABEL_31:

    return;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1B0DDA4FC()
{
  if (qword_1EB6DE998 != -1)
  {
    result = swift_once();
  }

  qword_1EB6DE9C0 = dword_1EB737F18 | (dword_1EB737F18 << 32);
  return result;
}

uint64_t sub_1B0DDA570(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0x220FA12722E887A4;
  if (!a1)
  {
    v4 = 0x220FA12722E887A4;
    if (a2 < 0)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    v4 = 0x220FA12722E887A4;
    goto LABEL_31;
  }

  v3 = &a1[a2];
  v4 = 0x220FA12722E887A4;
  do
  {
    v5 = a1 + 1;
    v6 = *a1;
    if (a1 + 1 != v3)
    {
      v6 = a1[1] | (v6 << 8);
      v7 = a1 + 2;
      if (a1 + 2 == v3)
      {
        goto LABEL_13;
      }

      v6 = a1[2] | (v6 << 8);
      v5 = a1 + 3;
      if (a1 + 3 != v3)
      {
        v6 = a1[3] | (v6 << 8);
        v7 = a1 + 4;
        if (a1 + 4 == v3)
        {
          goto LABEL_13;
        }

        v6 = a1[4] | (v6 << 8);
        v5 = a1 + 5;
        if (a1 + 5 != v3)
        {
          v6 = a1[5] | (v6 << 8);
          v7 = a1 + 6;
          if (a1 + 6 == v3)
          {
            goto LABEL_13;
          }

          v6 = a1[6] | (v6 << 8);
          v5 = a1 + 7;
          if (a1 + 7 != v3)
          {
            v6 = a1[7] | (v6 << 8);
            v7 = a1 + 8;
LABEL_13:
            a1 = v5;
            if (v7 == v3)
            {
              goto LABEL_4;
            }

            goto LABEL_17;
          }
        }
      }

      a1 = v7;
    }

    v7 = v5;
    if (v5 == v3)
    {
      goto LABEL_4;
    }

LABEL_17:
    v7 = a1 + 2;
    if (a1 + 2 != v3)
    {
      v7 = a1 + 3;
      if (a1 + 3 != v3)
      {
        v7 = a1 + 4;
        if (a1 + 4 != v3)
        {
          v7 = a1 + 5;
          if (a1 + 5 != v3)
          {
            v7 = a1 + 6;
            if (a1 + 6 != v3)
            {
              v7 = a1 + 7;
              if (a1 + 7 != v3)
              {
                v7 = a1 + 8;
                v8 = a1 + 9;
                if (v7 != v3)
                {
                  v7 = v8;
                }
              }
            }
          }
        }
      }
    }

LABEL_4:
    v4 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * v6) | ((0x87C37B91114253D5 * v6) >> 33))) ^ v4, 37) + v2) + 1390208809;
    v2 = 10 * v4 + 944331445;
    a1 = v7;
  }

  while (v7 != v3);
  if (a2 < 0)
  {
LABEL_29:
    a2 = 0;
  }

LABEL_31:
  v9 = v2 ^ a2;
  v10 = (v4 ^ a2) + v9;
  v11 = v10 + v9;
  v12 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) >> 33));
  v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) >> 33));
  v14 = ((v13 ^ (v13 >> 33)) + (v12 ^ (v12 >> 33)) + (v13 ^ (v13 >> 33))) ^ ((v13 ^ (v13 >> 33)) + (v12 ^ (v12 >> 33)));
  return HIDWORD(v14) ^ v14;
}

uint64_t sub_1B0DDA7B0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DDA7F4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = (a3 + 64);
    do
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *(v5 + 4);
      v11 = *v5;
      v18 = v11 | (v10 << 32);
      v19[0] = v6;
      v19[1] = v7;
      v19[2] = v8;
      v19[3] = v9;
      v21 = v10;
      v20 = v11;
      v12 = sub_1B0DDB688(v6, v7, v8, v9, v18);
      v13 = v22;
      v14 = (a1)(v19, v12);
      sub_1B0C1BB38(v6, v7, v8, v9, v18);
      v22 = v13;
      if (v13)
      {
        break;
      }

      v15 = v4-- == 0;
      v5 += 10;
    }

    while (((v14 | v15) & 1) == 0);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

uint64_t sub_1B0DDA8EC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E44DB8();
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      v13[0] = v7;
      v13[1] = v9;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v7 = sub_1B0E44DB8();
      v9 = v11;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

void *sub_1B0DDA9BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E77D8, "(\r\a");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 184);
  return result;
}

uint64_t sub_1B0DDAA58@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t (*a3)(char *)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  if (result < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    result = sub_1B0DF661C((a6 > 1), v7, 1, result);
LABEL_32:
    *(result + 16) = v7;
    v26 = (result + 32 * v9);
    v26[4] = v6;
    v26[5] = v6 + 32;
    v26[6] = 0;
    v26[7] = (2 * v10) | 1;
    return result;
  }

  v6 = a5;
  v11 = result;
  v10 = *(a5 + 16);
  if (!result || !v10)
  {
    if (!v10 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    result = sub_1B0DF661C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(result + 16);
    a6 = *(result + 24);
    v7 = (v9 + 1);
    if (v9 < a6 >> 1)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

  v7 = a4;
  v13 = 0;
  v14 = a5 + 32;
  v15 = -v10;
  result = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 == v10)
    {
      v13 = v10;
      goto LABEL_36;
    }

    v32 = v11;
    v33 = v15;
    v35 = v10;
    v36 = result;
    v16 = (2 * v13) | 1;
    v34 = v14;
    v17 = v14 + v13;
LABEL_7:
    v18 = 0;
    v10 = v15 + v13;
    v9 = v16;
    while (1)
    {
      a6 = v13 + v18;
      if (v13 + v18 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_48;
      }

      v38 = *(v17 + v18);
      result = a3(&v38);
      if (v8)
      {
      }

      if (result)
      {
        break;
      }

      ++v18;
      v9 += 2;
      if (!(v10 + v18))
      {
        v10 = v35;
        goto LABEL_34;
      }
    }

    if (!v18 && (a2 & 1) != 0)
    {
      break;
    }

    if ((v13 + v18) < v13)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return result;
    }

    v19 = v36;
    v14 = v34;
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    v20 = *(v6 + 16);
    if (v20 < v13 || v20 < v13 + v18)
    {
      goto LABEL_56;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1B0DF661C(0, v36[2] + 1, 1, v36);
    }

    result = v19;
    v21 = v19[2];
    v22 = *(result + 24);
    v23 = v21 + 1;
    if (v21 >= v22 >> 1)
    {
      result = sub_1B0DF661C((v22 > 1), v21 + 1, 1, result);
      v23 = v21 + 1;
    }

    *(result + 16) = v23;
    v24 = (result + 32 * v21);
    v24[4] = v6;
    v24[5] = v34;
    v24[6] = v13;
    v24[7] = v9;
    v13 += v18 + 1;
    v25 = v23 == v32;
    v11 = v32;
    v10 = v35;
    v15 = v33;
    if (v25)
    {
      goto LABEL_35;
    }
  }

  ++v13;
  v16 += 2;
  ++v17;
  v10 = v35;
  v15 = v33;
  if (v13 != v35)
  {
    goto LABEL_7;
  }

  v13 = v35;
LABEL_34:
  result = v36;
  v14 = v34;
LABEL_35:
  if (v13 != v10)
  {
    goto LABEL_39;
  }

LABEL_36:
  if (a2)
  {
    v27 = result;

    return v27;
  }

LABEL_39:
  if (v10 < v13)
  {
    __break(1u);
    goto LABEL_51;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v28 = *(v6 + 16);
  if (v28 < v13 || v28 < v10)
  {
    goto LABEL_52;
  }

  v7 = result;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_53:
    v7 = sub_1B0DF661C(0, v7[2] + 1, 1, v7);
  }

  result = v7;
  v30 = v7[2];
  v29 = v7[3];
  if (v30 >= v29 >> 1)
  {
    result = sub_1B0DF661C((v29 > 1), v30 + 1, 1, v7);
  }

  *(result + 16) = v30 + 1;
  v31 = (result + 32 * v30);
  v31[4] = v6;
  v31[5] = v14;
  v31[6] = v13;
  v31[7] = (2 * v10) | 1;
  return result;
}

BOOL sub_1B0DDADF4(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return BYTE4(a2) == BYTE4(a4);
  }

  v6 = (result + 32);
  v7 = (a3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return BYTE4(a2) == BYTE4(a4);
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *_s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(unsigned __int8 *a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0DDA2CC(0x584F424E49uLL, 0xE500000000000000, a1, sub_1B0DDA55C);
  v3 = v2;

  if (v3)
  {

    a1 = sub_1B03B7B80(0x584F424E49, 0xE500000000000000);
  }

  sub_1B0DDA570(a1 + 32, *(a1 + 2));
  return a1;
}

unsigned __int8 *sub_1B0DDAF00(uint64_t a1, unsigned int a2, unsigned int a3, unsigned __int16 a4, unsigned __int8 a5)
{
  swift_beginAccess();
  if (a3 == a2)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = a3 - a2;
    v12 = *(a1 + 24);
    v13 = (a5 | (a4 << 8)) + a2;
    v14 = sub_1B0C0C9F0(v11, 0);
    memcpy(v14 + 32, (v12 + v13), v11);
    v10 = v14;
  }

  return _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v10);
}

uint64_t sub_1B0DDAFB4(uint64_t a1)
{
  v19 = 0;
  v20 = 0xE000000000000000;
  v2 = *(a1 + 16);
  MEMORY[0x1B2726D20](v2);
  LODWORD(v3) = 0;
  v4 = 0;
  v5 = (a1 + 32);
  v6 = &v5[v2];
  while (1)
  {
    v17 = v3;
    v18 = v4;
    if (!v4)
    {
      break;
    }

    if ((v3 & 0x80) != 0)
    {
      if (!v5)
      {
        goto LABEL_19;
      }

      v8 = v5;
      if (v5 == v6)
      {
        goto LABEL_19;
      }

LABEL_7:
      v5 = (v8 + 1);
      LODWORD(v3) = (*v8 << v4) | ((-255 << v4) - 1) & v3;
      v10 = v4 + 8;
      if ((v4 + 8) >= 0x20u)
      {
        goto LABEL_18;
      }

      if (v5 == v6)
      {
        goto LABEL_16;
      }

      v5 = (v8 + 2);
      LODWORD(v3) = (v8[1] << (v4 + 8)) | ((-255 << (v4 + 8)) - 1) & v3;
      v10 = v4 + 16;
      if ((v4 + 16) > 0x1Fu)
      {
        goto LABEL_18;
      }

      if (v5 == v6)
      {
        goto LABEL_16;
      }

      v5 = (v8 + 3);
      LODWORD(v3) = (v8[2] << v10) | ((-255 << v10) - 1) & v3;
      v10 = v4 + 24;
      if ((v4 + 24) > 0x1Fu)
      {
        goto LABEL_18;
      }

      if (v5 == v6)
      {
        goto LABEL_16;
      }

      v5 = (v8 + 4);
      LODWORD(v3) = (v8[3] << v10) | ((-255 << v10) - 1) & v3;
      v10 = v4 + 32;
      if (v4 < 0xE0u)
      {
LABEL_18:
        v4 = v10;
        goto LABEL_19;
      }

      if (v5 == v6 || (v5 = (v8 + 5), LODWORD(v3) = (v8[4] << v4) | ((-255 << v4) - 1) & v3, v10 = v4 + 40, v4 += 40, v4 < 0x20u))
      {
LABEL_16:
        v4 = v10;
        if (!v10)
        {
          return v19;
        }
      }

LABEL_19:
      if ((v3 & 0xC0E0) == 0x80C0)
      {
        if ((v3 & 0x1E) != 0)
        {
          v11 = 16;
LABEL_22:
          v17 = v3 >> v11;
          v18 = v4 - v11;
          goto LABEL_23;
        }
      }

      else if ((v3 & 0xC0C0F0) == 0x8080E0)
      {
        if ((v3 & 0x200F) != 0 && (v3 & 0x200F) != 0x200D)
        {
          v11 = 24;
          goto LABEL_22;
        }
      }

      else if ((v3 & 0xC0C0C0F8) == 0x808080F0 && (v3 & 0x3007) != 0 && __rev16(v3 & 0x3007) <= 0x400)
      {
        v11 = 32;
        goto LABEL_22;
      }

      v12 = sub_1B0E46D58();
      v3 = v3 >> ((8 * v12) & 0x38);
      v4 -= 8 * v12;
    }

    else
    {
      sub_1B0CB1F34();
      v13 = sub_1B0C14AB0();
      sub_1B0CB1F88(0);
      (v13)(&v15, 0);
LABEL_23:
      LODWORD(v3) = v17;
      v4 = v18;
      v15 = v19;
      v16 = v20;
      sub_1B0E44C58();
      v19 = v15;
      v20 = v16;
    }
  }

  if (v5 && v6 != v5)
  {
    v7 = *v5++;
    v8 = v5;
    v9 = v7;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    LODWORD(v3) = v3 & 0xFFFFFF00 | v9;
    v4 = 8;
    if (v5 == v6)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  return v19;
}

unint64_t sub_1B0DDB4DC()
{
  result = qword_1EB6E77C8;
  if (!qword_1EB6E77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E77C8);
  }

  return result;
}

unint64_t sub_1B0DDB530()
{
  result = qword_1EB6E77D0;
  if (!qword_1EB6E77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E77D0);
  }

  return result;
}

uint64_t sub_1B0DDB584(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78() & 1;
  }
}

unint64_t sub_1B0DDB5E0()
{
  result = qword_1EB6DE928;
  if (!qword_1EB6DE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE928);
  }

  return result;
}

double sub_1B0DDB688(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5)
{
  v6 = (a5 >> 37) & 7;
  if (v6 == 4 || v6 == 3)
  {

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else if (v6 == 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    return sub_1B0ACE964(a3, a4);
  }

  return result;
}

uint64_t static MailboxPatterns.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 0x100000000000000) == 0)
  {
    if ((a6 & 0x100000000000000) == 0)
    {
      return sub_1B0C2DB54(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
    }

    return 0;
  }

  if ((a6 & 0x100000000000000) == 0)
  {
    return 0;
  }

  return sub_1B0D3CF14();
}

uint64_t MailboxPatterns.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x100000000000000) != 0)
  {
    MEMORY[0x1B2728D70](1, a2, a3);
    v6 = *(a2 + 16);
    result = MEMORY[0x1B2728D70](v6);
    if (v6)
    {
      v7 = a2 + 54;
      do
      {
        v7 += 24;
        swift_beginAccess();
        result = sub_1B0E46C38();
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    swift_beginAccess();
    return sub_1B0E46C38();
  }

  return result;
}

uint64_t MailboxPatterns.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  if ((a3 & 0x100000000000000) != 0)
  {
    MEMORY[0x1B2728D70](1);
    v5 = *(a1 + 16);
    MEMORY[0x1B2728D70](v5);
    if (v5)
    {
      v6 = a1 + 54;
      do
      {
        v6 += 24;
        swift_beginAccess();
        sub_1B0E46C38();
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    swift_beginAccess();
    sub_1B0E46C38();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DDB9C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | ((*(v1 + 20) | (*(v1 + 22) << 16)) << 32);
  v5 = *(v1 + 23);
  sub_1B0E46C28();
  MailboxPatterns.hash(into:)(v7, v2, v3, v4 | (v5 << 56));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DDBA34(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a1 + 23))
  {
    if (*(a2 + 23))
    {
      return sub_1B0D3CF14();
    }

    return 0;
  }

  if (*(a2 + 23))
  {
    return 0;
  }

  return sub_1B0C2DB54(v3, *(a1 + 8), *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32), *a2, *(a2 + 8), (*(a2 + 16) | ((*(a2 + 20) | (*(a2 + 22) << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
}

unint64_t sub_1B0DDBAA0()
{
  result = qword_1EB6E77E0;
  if (!qword_1EB6E77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E77E0);
  }

  return result;
}

uint64_t static MailboxUIDValidity.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = sub_1B0E46A78(), result = 0, (v8 & 1) != 0))
  {
    if ((a3 & 0x100000000) != 0)
    {
      if ((a6 & 0x100000000) != 0)
      {
        return 1;
      }
    }

    else if ((a6 & 0x100000000) == 0 && a3 == a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B0DDBB80(unint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 20);
  result = sub_1B0CFC1B0(a1, a2, v3 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = *(v3 + 20);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v3 + 20) = v13;
  if ((a3 & 0x100000000) != 0)
  {
    v30 = 0;
  }

  else
  {
    v14 = result;
    result = sub_1B0CFC1B0(0x494C41564449553BuLL, 0xED00003D59544944, v3 + 8, v13);
    if (v15)
    {
      v16._countAndFlagsBits = 0x494C41564449553BLL;
      v16._object = 0xED00003D59544944;
      result = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
    }

    v17 = result;
    v18 = *(v3 + 20);
    v19 = (v18 + result);
    if (__CFADD__(v18, result))
    {
      goto LABEL_18;
    }

    *(v3 + 20) = v19;
    v20 = sub_1B0E469C8();
    v22 = v21;
    v23 = sub_1B0CFC1B0(v20, v21, v3 + 8, v19);
    if (v24)
    {
      v25._countAndFlagsBits = v20;
      v25._object = v22;
      v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v19);
    }

    v26 = v23;

    v27 = *(v4 + 20);
    v28 = __CFADD__(v27, v26);
    v29 = v27 + v26;
    if (v28)
    {
      goto LABEL_19;
    }

    *(v4 + 20) = v29;
    v30 = v17 + v26;
    if (__OFADD__(v17, v26))
    {
LABEL_20:
      __break(1u);
      return result;
    }

    result = v14;
  }

  v31 = __OFADD__(result, v30);
  result += v30;
  if (v31)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t MailboxUIDValidity.encodedMailbox.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MailboxUIDValidity.uidValidity.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxUIDValidity.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if ((a4 & 0x100000000) != 0)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return sub_1B0E46C88();
}

uint64_t MailboxUIDValidity.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if ((a3 & 0x100000000) == 0)
  {
    sub_1B0E46C88();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DDBEC4()
{
  v1 = *(v0 + 20);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if (v1 != 1)
  {
    sub_1B0E46C88();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DDBF50(uint64_t a1)
{
  v2 = *(v1 + 20);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v2 == 1)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return sub_1B0E46C88();
}

uint64_t sub_1B0DDBFB4(uint64_t a1)
{
  v2 = *(v1 + 20);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if (v2 != 1)
  {
    sub_1B0E46C88();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DDC03C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 20);
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_1B0E46A78(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1B0DDC0C8()
{
  result = qword_1EB6E77E8;
  if (!qword_1EB6E77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E77E8);
  }

  return result;
}

uint64_t sub_1B0DDC11C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_1B0DDC164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MechanismBase64.init(mechanism:base64:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 38) = BYTE6(a5);
  *(a6 + 36) = WORD2(a5);
  return result;
}

uint64_t MechanismBase64.mechanism.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t MechanismBase64.mechanism.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MechanismBase64.base64.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 38) = BYTE6(a3);
  *(v3 + 36) = WORD2(a3);
  *(v3 + 32) = a3;
  return result;
}

uint64_t MechanismBase64.hash(into:)(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (!*(v1 + 16))
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  swift_beginAccess();
  return sub_1B0E46C38();
}

uint64_t MechanismBase64.hashValue.getter()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (*(v0 + 16))
  {
    sub_1B0E46C68();
    swift_beginAccess();
    sub_1B0E46C38();
  }

  else
  {
    sub_1B0E46C68();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DDC46C(uint64_t a1)
{
  sub_1B0E46C28();
  MechanismBase64.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DDC4A8(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return _s12NIOIMAPCore215MechanismBase64V23__derived_struct_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

uint64_t sub_1B0DDC4F4(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v1 + 20);
  result = sub_1B0CFC1B0(*a1, v4, v1 + 8, v5);
  if (v7)
  {
    v8._countAndFlagsBits = v3;
    v8._object = v4;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = result;
  v10 = *(v1 + 20);
  v11 = (v10 + result);
  if (__CFADD__(v10, result))
  {
    goto LABEL_13;
  }

  *(v1 + 20) = v11;
  if (*(a1 + 16))
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32) | ((*(a1 + 36) | (*(a1 + 38) << 16)) << 32);
    v23[0] = *(a1 + 16);
    v23[1] = v12;
    v24 = v13;
    v25 = WORD2(v13);
    v26 = BYTE6(v13);

    result = sub_1B0CFC1B0(0x3DuLL, 0xE100000000000000, v1 + 8, v11);
    if (v14)
    {
      v15._countAndFlagsBits = 61;
      v15._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v11);
    }

    v16 = result;
    v17 = *(v1 + 20);
    v18 = __CFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      goto LABEL_14;
    }

    *(v1 + 20) = v19;
    EncodeBuffer.writeBuffer(_:)(v23);
    v21 = v20;

    v22 = v16 + v21;
    if (__OFADD__(v16, v21))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    result = v9 + v22;
    if (!__OFADD__(v9, v22))
    {
      return result;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t _s12NIOIMAPCore215MechanismBase64V23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_1B0E46A78(), result = 0, (v5 & 1) != 0))
  {
    v7 = *(a2 + 16);
    if (a1[2])
    {
      if (v7)
      {
        v8 = a1[3];
        v9 = *(a1 + 8) | ((*(a1 + 18) | (*(a1 + 38) << 16)) << 32);
        v10 = *(a2 + 24);
        v11 = *(a2 + 32) | ((*(a2 + 36) | (*(a2 + 38) << 16)) << 32);

        LOBYTE(v11) = sub_1B0C2DB54(v12, v8, v9 & 0xFFFFFFFFFFFFFFLL, v7, v10, v11 & 0xFFFFFFFFFFFFFFLL);

        if (v11)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1B0DDC744()
{
  result = qword_1EB6E77F0;
  if (!qword_1EB6E77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E77F0);
  }

  return result;
}

__n128 __swift_memcpy39_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0DDC7AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 39))
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

uint64_t sub_1B0DDC7F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 38) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 39) = 1;
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

    *(result + 39) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *Media.TopLevelType.application.unsafeMutableAddressor()
{
  if (qword_1EB6DE170 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.application;
}

uint64_t *Media.TopLevelType.audio.unsafeMutableAddressor()
{
  if (qword_1EB6DE160 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.audio;
}

uint64_t *Media.TopLevelType.image.unsafeMutableAddressor()
{
  if (qword_1EB6DE158 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.image;
}

uint64_t *Media.TopLevelType.message.unsafeMutableAddressor()
{
  if (qword_1EB6DE148 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.message;
}

uint64_t *Media.TopLevelType.video.unsafeMutableAddressor()
{
  if (qword_1EB6DE150 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.video;
}

uint64_t static Media.TopLevelType.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t *Media.Subtype.rfc822.unsafeMutableAddressor()
{
  if (qword_1EB6DE128 != -1)
  {
    swift_once();
  }

  return &static Media.Subtype.rfc822;
}

uint64_t *Media.Subtype.alternative.unsafeMutableAddressor()
{
  if (qword_1EB6DE138 != -1)
  {
    swift_once();
  }

  return &static Media.Subtype.alternative;
}

uint64_t *Media.Subtype.mixed.unsafeMutableAddressor()
{
  if (qword_1EB6DE130 != -1)
  {
    swift_once();
  }

  return &static Media.Subtype.mixed;
}

uint64_t *Media.Subtype.related.unsafeMutableAddressor()
{
  if (qword_1EB6DE120 != -1)
  {
    swift_once();
  }

  return &static Media.Subtype.related;
}

uint64_t Media.MediaType.topLevel.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Media.MediaType.sub.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static Media.MediaType.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1B0E46A78(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1B0E46A78();
    }
  }

  return result;
}

uint64_t Media.MediaType.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t Media.MediaType.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

NIOIMAPCore2::Media::MediaType __swiftcall Media.MediaType.init(topLevel:sub:)(Swift::String topLevel, Swift::String sub)
{
  v2 = sub_1B0E44B98();
  v4 = v3;

  v5 = sub_1B0E44B98();
  v7 = v6;

  v8 = v2;
  v9 = v4;
  v10 = v5;
  v11 = v7;
  result.sub.stringValue._object = v11;
  result.sub.stringValue._countAndFlagsBits = v10;
  result.topLevel.stringValue._object = v9;
  result.topLevel.stringValue._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_1B0DDCE40()
{
  result = sub_1B0E44B98();
  static Media.TopLevelType.multipart = result;
  unk_1EB737E10 = v1;
  return result;
}

NIOIMAPCore2::Media::TopLevelType __swiftcall Media.TopLevelType.init(stringLiteral:)(Swift::String stringLiteral)
{
  v1 = sub_1B0E44B98();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result.stringValue._object = v5;
  result.stringValue._countAndFlagsBits = v4;
  return result;
}

uint64_t *Media.TopLevelType.multipart.unsafeMutableAddressor()
{
  if (qword_1EB6DE140 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.multipart;
}

uint64_t sub_1B0DDCF38()
{
  result = sub_1B0E44B98();
  static Media.TopLevelType.text = result;
  unk_1EB737E60 = v1;
  return result;
}

uint64_t *Media.TopLevelType.text.unsafeMutableAddressor()
{
  if (qword_1EB6DE168 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.text;
}

uint64_t sub_1B0DDCFE0()
{
  result = sub_1B0E44B98();
  static Media.TopLevelType.application = result;
  unk_1EB737E70 = v1;
  return result;
}

uint64_t sub_1B0DDD048()
{
  result = sub_1B0E44B98();
  static Media.TopLevelType.audio = result;
  unk_1EB737E50 = v1;
  return result;
}

uint64_t sub_1B0DDD0A4()
{
  result = sub_1B0E44B98();
  static Media.TopLevelType.image = result;
  unk_1EB737E40 = v1;
  return result;
}

uint64_t sub_1B0DDD100()
{
  result = sub_1B0E44B98();
  static Media.TopLevelType.message = result;
  unk_1EB737E20 = v1;
  return result;
}

uint64_t sub_1B0DDD160()
{
  result = sub_1B0E44B98();
  static Media.TopLevelType.video = result;
  unk_1EB737E30 = v1;
  return result;
}

uint64_t sub_1B0DDD1BC()
{
  result = sub_1B0E44B98();
  static Media.TopLevelType.font = result;
  *algn_1EB7387D8 = v1;
  return result;
}

uint64_t *Media.TopLevelType.font.unsafeMutableAddressor()
{
  if (qword_1EB6E6E90 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.font;
}

uint64_t sub_1B0DDD2A0()
{
  result = sub_1B0E44B98();
  static Media.Subtype.alternative = result;
  unk_1EB737E00 = v1;
  return result;
}

uint64_t sub_1B0DDD308()
{
  result = sub_1B0E44B98();
  static Media.Subtype.related = result;
  unk_1EB737DD0 = v1;
  return result;
}

uint64_t sub_1B0DDD368()
{
  result = sub_1B0E44B98();
  static Media.Subtype.mixed = result;
  unk_1EB737DF0 = v1;
  return result;
}

uint64_t sub_1B0DDD3C4()
{
  result = sub_1B0E44B98();
  static Media.Subtype.rfc822 = result;
  unk_1EB737DE0 = v1;
  return result;
}

uint64_t BodyStructure.mediaType.getter()
{
  v1 = *(v0 + 144);
  v11[8] = *(v0 + 128);
  v11[9] = v1;
  v11[10] = *(v0 + 160);
  v12 = *(v0 + 176);
  v2 = *(v0 + 80);
  v11[4] = *(v0 + 64);
  v11[5] = v2;
  v3 = *(v0 + 112);
  v11[6] = *(v0 + 96);
  v11[7] = v3;
  v4 = *(v0 + 16);
  v11[0] = *v0;
  v11[1] = v4;
  v5 = *(v0 + 48);
  v11[2] = *(v0 + 32);
  v11[3] = v5;
  if (sub_1B0717014(v11) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    if (qword_1EB6DE140 != -1)
    {
      swift_once();
    }

    v6 = static Media.TopLevelType.multipart;
    goto LABEL_11;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v8 = *v7 >> 62;
  if (!v8)
  {
    v6 = *((*v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_11:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    goto LABEL_12;
  }

  if (v8 == 1)
  {
    if (qword_1EB6DE148 != -1)
    {
      swift_once();
    }

    v6 = static Media.TopLevelType.message;
    sub_1B0E44B98();
  }

  else
  {
    v10 = qword_1EB6DE168;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v10 != -1)
    {
      swift_once();
    }

    v6 = static Media.TopLevelType.text;
  }

LABEL_12:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v6;
}

unint64_t sub_1B0DDD5EC()
{
  result = qword_1EB6E77F8;
  if (!qword_1EB6E77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E77F8);
  }

  return result;
}

unint64_t sub_1B0DDD644()
{
  result = qword_1EB6E7800;
  if (!qword_1EB6E7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7800);
  }

  return result;
}

unint64_t sub_1B0DDD69C()
{
  result = qword_1EB6E7808;
  if (!qword_1EB6E7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7808);
  }

  return result;
}

unint64_t sub_1B0DDD6F4()
{
  result = qword_1EB6E7810;
  if (!qword_1EB6E7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7810);
  }

  return result;
}

unint64_t sub_1B0DDD74C()
{
  result = qword_1EB6E7818;
  if (!qword_1EB6E7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7818);
  }

  return result;
}

unint64_t sub_1B0DDD7A4()
{
  result = qword_1EB6E7820;
  if (!qword_1EB6E7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7820);
  }

  return result;
}

unint64_t sub_1B0DDD7FC()
{
  result = qword_1EB6E7828;
  if (!qword_1EB6E7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7828);
  }

  return result;
}

unint64_t sub_1B0DDD890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1B0E44BB8();
  MEMORY[0x1B2726E80](v4);

  MEMORY[0x1B2726E80](34, 0xE100000000000000);
  v5 = *(v2 + 20);
  v6 = sub_1B0CFC1B0(0x22uLL, 0xE100000000000000, v3 + 8, *(v3 + 20));
  if (v7)
  {
    v8._countAndFlagsBits = 34;
    v8._object = 0xE100000000000000;
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = v6;

  v11 = *(v3 + 20);
  v12 = __CFADD__(v11, v9);
  v13 = v11 + v9;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 20) = v13;
    return v9;
  }

  return result;
}

uint64_t sub_1B0DDD958(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x22uLL, 0xE100000000000000, v2 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 34;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v2 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v10;
  v11 = sub_1B0E44BB8();
  v13 = v12;
  v14 = sub_1B0CFC1B0(v11, v12, v2 + 8, v10);
  if (v15)
  {
    v16._countAndFlagsBits = v11;
    v16._object = v13;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v10);
  }

  v17 = v14;

  v18 = *(v3 + 20);
  v19 = (v18 + v17);
  if (__CFADD__(v18, v17))
  {
    goto LABEL_14;
  }

  *(v3 + 20) = v19;
  v20 = __OFADD__(v8, v17);
  v21 = v8 + v17;
  if (v20)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1B0CFC1B0(0x22uLL, 0xE100000000000000, v3 + 8, (v18 + v17));
  if (v22)
  {
    v23._countAndFlagsBits = 34;
    v23._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v19);
  }

  v24 = *(v3 + 20);
  v25 = __CFADD__(v24, result);
  v26 = v24 + result;
  if (v25)
  {
    goto LABEL_16;
  }

  *(v3 + 20) = v26;
  v20 = __OFADD__(v21, result);
  result += v21;
  if (v20)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t MessageAttribute.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 144);
  v71[8] = *(v1 + 128);
  v71[9] = v3;
  v71[10] = *(v1 + 160);
  v72 = *(v1 + 176);
  v4 = *(v1 + 80);
  v71[4] = *(v1 + 64);
  v71[5] = v4;
  v5 = *(v1 + 112);
  v71[6] = *(v1 + 96);
  v71[7] = v5;
  v6 = *(v1 + 16);
  v71[0] = *v1;
  v71[1] = v6;
  v7 = *(v1 + 48);
  v71[2] = *(v1 + 32);
  v71[3] = v7;
  switch(sub_1B0D0CC38(v71))
  {
    case 1u:
      v21 = sub_1B0504D0C(v71);
      v63 = *(v21 + 64);
      v64 = *(v21 + 80);
      v65 = *(v21 + 96);
      *&v66 = *(v21 + 112);
      v59 = *v21;
      v60 = *(v21 + 16);
      v61 = *(v21 + 32);
      v62 = *(v21 + 48);
      MEMORY[0x1B2728D70](1);
      return Envelope.hash(into:)(a1);
    case 2u:
      v18 = *sub_1B0504D0C(v71);
      v19 = 2;
      goto LABEL_30;
    case 3u:
      sub_1B0504D0C(v71);
      MEMORY[0x1B2728D70](3);
      return sub_1B0E46C88();
    case 4u:
      v17 = *sub_1B0504D0C(v71);
      MEMORY[0x1B2728D70](4);
      return MEMORY[0x1B2728D70](v17);
    case 5u:
      v22 = sub_1B0504D0C(v71);
      v23 = *(v22 + 144);
      v55 = *(v22 + 128);
      v56 = v23;
      v57 = *(v22 + 160);
      v58 = *(v22 + 176);
      v24 = *(v22 + 80);
      v51 = *(v22 + 64);
      v52 = v24;
      v25 = *(v22 + 112);
      v53 = *(v22 + 96);
      v54 = v25;
      v26 = *(v22 + 16);
      v47 = *v22;
      v48 = v26;
      v27 = *(v22 + 48);
      v49 = *(v22 + 32);
      v50 = v27;
      MEMORY[0x1B2728D70](5);
      v67 = v55;
      v68 = v56;
      v69 = v57;
      v70 = v58;
      v63 = v51;
      v64 = v52;
      v65 = v53;
      v66 = v54;
      v59 = v47;
      v60 = v48;
      v61 = v49;
      v62 = v50;
      if (sub_1B075FACC(&v59) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        MEMORY[0x1B2728D70](0);
        v45[8] = v67;
        v45[9] = v68;
        v45[10] = v69;
        v46 = v70;
        v45[4] = v63;
        v45[5] = v64;
        v45[6] = v65;
        v45[7] = v66;
        v45[0] = v59;
        v45[1] = v60;
        v45[2] = v61;
        v45[3] = v62;
        if (sub_1B0717014(v45) == 1)
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v35 = v34;
          MEMORY[0x1B2728D70](1);
          sub_1B0D48CF0(a1, *v35);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v36 = *(v35 + 72);
          v80 = *(v35 + 56);
          v81 = v36;
          v37 = *(v35 + 104);
          v82 = *(v35 + 88);
          v83 = v37;
          v38 = *(v35 + 40);
          v78 = *(v35 + 24);
          v79 = v38;
          sub_1B0D49DD8(a1);
        }

        else
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v40 = v39;
          MEMORY[0x1B2728D70](0);
          BodyStructure.Singlepart.Kind.hash(into:)(a1, *v40);
          v41 = *(v40 + 24);
          v42 = *(v40 + 56);
          v75 = *(v40 + 40);
          v76 = v42;
          v77 = *(v40 + 72);
          v73 = *(v40 + 8);
          v74 = v41;
          BodyStructure.Fields.hash(into:)(a1);
          v43 = *(v40 + 136);
          v80 = *(v40 + 120);
          v81 = v43;
          v82 = *(v40 + 152);
          *&v83 = *(v40 + 168);
          v44 = *(v40 + 104);
          v78 = *(v40 + 88);
          v79 = v44;
          sub_1B0D4A1BC(a1);
        }
      }

      goto LABEL_35;
    case 6u:
      v28 = sub_1B0504D0C(v71);
      v30 = *v28;
      v29 = v28[1];
      MEMORY[0x1B2728D70](6);
      v31 = *(v30 + 16);
      MEMORY[0x1B2728D70](v31);
      if (v31)
      {
        v32 = (v30 + 32);
        do
        {
          v33 = *v32++;
          MEMORY[0x1B2728D70](v33);
          --v31;
        }

        while (v31);
      }

      return MEMORY[0x1B2728D70](v29);
    case 7u:
      v20 = sub_1B0504D0C(v71);
      v59 = *v20;
      v60 = *(v20 + 16);
      LOBYTE(v61) = *(v20 + 32);
      MEMORY[0x1B2728D70](7);
      return StreamingKind.hash(into:)(a1);
    case 8u:
      v18 = *sub_1B0504D0C(v71);
      v19 = 8;
      goto LABEL_30;
    case 9u:
      v18 = *sub_1B0504D0C(v71);
      v19 = 9;
      goto LABEL_30;
    case 0xAu:
      v18 = *sub_1B0504D0C(v71);
      v19 = 10;
LABEL_30:
      MEMORY[0x1B2728D70](v19);
      return MEMORY[0x1B2728DB0](v18);
    case 0xBu:
      v14 = *sub_1B0504D0C(v71);
      MEMORY[0x1B2728D70](11);
      v15 = *(v14 + 16);
      result = MEMORY[0x1B2728D70](v15);
      if (v15)
      {
        v16 = v14 + 54;
        do
        {
          v16 += 24;
          swift_beginAccess();
          result = sub_1B0E46C38();
          --v15;
        }

        while (v15);
      }

      return result;
    case 0xCu:
      v12 = *(sub_1B0504D0C(v71) + 8);
      v13 = 12;
      goto LABEL_13;
    case 0xDu:
      sub_1B0504D0C(v71);
      MEMORY[0x1B2728D70](13);
      goto LABEL_23;
    case 0xEu:
      v12 = *(sub_1B0504D0C(v71) + 8);
      v13 = 14;
LABEL_13:
      MEMORY[0x1B2728D70](v13);
      if (v12)
      {
        sub_1B0E46C68();
LABEL_23:
        result = _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
LABEL_35:
        result = sub_1B0E46C68();
      }

      break;
    default:
      v8 = *sub_1B0504D0C(v71);
      MEMORY[0x1B2728D70](0);
      v9 = *(v8 + 16);
      result = MEMORY[0x1B2728D70](v9);
      if (v9)
      {
        v11 = v8 + 40;
        do
        {
          sub_1B0E44BB8();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v11 += 16;
          --v9;
        }

        while (v9);
      }

      break;
  }

  return result;
}

uint64_t MessageAttribute.hashValue.getter()
{
  sub_1B0E46C28();
  MessageAttribute.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DDE0A0()
{
  sub_1B0E46C28();
  MessageAttribute.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DDE0E4(uint64_t a1)
{
  sub_1B0E46C28();
  MessageAttribute.hash(into:)(v2);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DDE120(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v15[10] = *(a2 + 160);
  v16 = *(a2 + 176);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return _s12NIOIMAPCore216MessageAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(v13, v15) & 1;
}

void *MessageAttribute.debugDescription.getter()
{
  v1 = v0;
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1EB737EB8;
  v4 = word_1EB737EBC;
  v5 = byte_1EB737EBE;

  LOBYTE(v10) = 0;
  BYTE5(v10) = 0;
  *(&v10 + 1) = 65537;
  *(&v10 + 1) = v2;
  *&v11 = qword_1EB737EB0;
  DWORD2(v11) = v3;
  WORD6(v11) = v4;
  BYTE14(v11) = v5;
  *&v12 = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *(&v12 + 1) = v6;
  v13 = v7;
  result = sub_1B0DDE350(v1);
  if (DWORD1(v11) < v11)
  {
    __break(1u);
  }

  else if (v3 - (v5 | (v4 << 8)) >= DWORD1(v11))
  {
    v14[0] = v2;
    v14[1] = v11;
    v15 = v3;
    v16 = WORD6(v11);
    v17 = v5;
    v18 = v11;
    v19 = DWORD1(v11);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;

    MEMORY[0x1B2726D20](DWORD1(v11) - v11);
    sub_1B0D547AC(v14, v20);
    sub_1B04394F4(v14);
    v9 = *&v20[0];
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    v21 = v13;
    sub_1B0D7E6B4(v20);
    return v9;
  }

  __break(1u);
  return result;
}

void *sub_1B0DDE350(uint64_t a1)
{
  v2 = *(a1 + 144);
  v51[8] = *(a1 + 128);
  v51[9] = v2;
  v51[10] = *(a1 + 160);
  v52 = *(a1 + 176);
  v3 = *(a1 + 80);
  v51[4] = *(a1 + 64);
  v51[5] = v3;
  v4 = *(a1 + 112);
  v51[6] = *(a1 + 96);
  v51[7] = v4;
  v5 = *(a1 + 16);
  v51[0] = *a1;
  v51[1] = v5;
  v6 = *(a1 + 48);
  v51[2] = *(a1 + 32);
  v51[3] = v6;
  v7 = sub_1B0D0CC38(v51);
  result = sub_1B0504D0C(v51);
  switch(v7)
  {
    case 1:
      v36 = *(result + 5);
      v57 = *(result + 4);
      v58 = v36;
      v59 = *(result + 6);
      *&v60 = result[14];
      v37 = *(result + 1);
      v53 = *result;
      v54 = v37;
      v38 = *(result + 3);
      v55 = *(result + 2);
      v56 = v38;
      v39 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x45504F4C45564E45uLL, 0xE900000000000020, v1 + 8, v39);
      if (v40)
      {
        v41._countAndFlagsBits = 0x45504F4C45564E45;
        v41._object = 0xE900000000000020;
        result = ByteBuffer._setStringSlowpath(_:at:)(v41, v39);
      }

      v42 = result;
      v43 = *(v1 + 20);
      v17 = __CFADD__(v43, result);
      v44 = v43 + result;
      if (v17)
      {
        goto LABEL_37;
      }

      *(v1 + 20) = v44;
      sub_1B0D81260(&v53);
      v27 = __OFADD__(v42, v45);
      result = (v42 + v45);
      if (v27)
      {
        __break(1u);
        goto LABEL_29;
      }

      break;
    case 2:
      v19 = *result;
      v20 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x4C414E5245544E49uLL, 0xED00002045544144, v1 + 8, v20);
      if (v21)
      {
        v22._countAndFlagsBits = 0x4C414E5245544E49;
        v22._object = 0xED00002045544144;
        result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
      }

      v23 = result;
      v24 = *(v1 + 20);
      v17 = __CFADD__(v24, result);
      v25 = v24 + result;
      if (v17)
      {
        __break(1u);
        goto LABEL_36;
      }

      *(v1 + 20) = v25;
      v26 = sub_1B0DC7068(v19);
      v27 = __OFADD__(v23, v26);
      result = (v26 + v23);
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }

      break;
    case 3:
LABEL_18:
      *&v53 = 541346133;
      *(&v53 + 1) = 0xE400000000000000;
      v28 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v28);
      v10 = v1;

      v29 = v53;
      v30 = *(v1 + 20);
      v31 = sub_1B0CFC1B0(v53, *(&v53 + 1), v10 + 8, *(v10 + 20));
      if (v32)
      {
        v31 = ByteBuffer._setStringSlowpath(_:at:)(v29, v30);
        v10 = v1;
      }

      v33 = v31;

      v34 = *(v10 + 20);
      result = v33;
      v17 = __CFADD__(v34, v33);
      v18 = v34 + v33;
      if (!v17)
      {
        goto LABEL_21;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      break;
    case 4:
      strcpy(&v53, "RFC822.SIZE ");
      BYTE13(v53) = 0;
      HIWORD(v53) = -5120;
      v9 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v9);
      v10 = v1;

      v11 = v53;
      v12 = *(v1 + 20);
      v13 = sub_1B0CFC1B0(v53, *(&v53 + 1), v10 + 8, *(v10 + 20));
      if (v14)
      {
        v13 = ByteBuffer._setStringSlowpath(_:at:)(v11, v12);
        v10 = v1;
      }

      v15 = v13;

      v16 = *(v10 + 20);
      result = v15;
      v17 = __CFADD__(v16, v15);
      v18 = v16 + v15;
      if (v17)
      {
        __break(1u);
        goto LABEL_10;
      }

LABEL_21:
      *(v10 + 20) = v18;
      break;
    case 5:
LABEL_29:
      v46 = *(result + 9);
      v61 = *(result + 8);
      v62 = v46;
      v63 = *(result + 10);
      v64 = *(result + 176);
      v47 = *(result + 5);
      v57 = *(result + 4);
      v58 = v47;
      v48 = *(result + 7);
      v59 = *(result + 6);
      v60 = v48;
      v49 = *(result + 1);
      v53 = *result;
      v54 = v49;
      v50 = *(result + 3);
      v55 = *(result + 2);
      v56 = v50;
      result = sub_1B0DDE79C(&v53, *(result + 177) & 1);
      break;
    case 6:
      result = sub_1B0DDE918(*result);
      break;
    case 7:
      v35 = *(result + 1);
      v53 = *result;
      v54 = v35;
      LOBYTE(v55) = *(result + 32);
      result = sub_1B0DDECFC(&v53);
      break;
    case 8:
      result = sub_1B0D89160();
      break;
    case 9:
      result = sub_1B0DDEDE4(*result, 0x47534D2D4D472D58uLL);
      break;
    case 10:
      result = sub_1B0DDEDE4(*result, 0x5248542D4D472D58uLL);
      break;
    case 11:
      result = sub_1B0DDEEB8(*result);
      break;
    case 12:
LABEL_10:
      result = sub_1B0DDF18C(*result, result[1]);
      break;
    case 13:
      result = sub_1B0DDF304(*result, result[1]);
      break;
    case 14:
      result = sub_1B0DDF45C(*result, result[1]);
      break;
    default:
      result = sub_1B0DDEA84(*result);
      break;
  }

  return result;
}

uint64_t sub_1B0DDE79C(__int128 *a1, char a2)
{
  v5 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x59444F42uLL, 0xE400000000000000, v2 + 8, v5);
  if (v7)
  {
    v8._countAndFlagsBits = 1497648962;
    v8._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = *(v2 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 20) = v10;
  if (a2)
  {
    v11 = result;
    result = sub_1B0CFC1B0(0x5255544355525453uLL, 0xE900000000000045, v2 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 0x5255544355525453;
      v13._object = 0xE900000000000045;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    LODWORD(v10) = v15 + result;
    if (__CFADD__(v15, result))
    {
      goto LABEL_22;
    }

    result = v11;
    *(v2 + 20) = v10;
  }

  else
  {
    v14 = 0;
  }

  v16 = result + v14;
  if (__OFADD__(result, v14))
  {
    goto LABEL_18;
  }

  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v10);
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v10);
  }

  v19 = *(v2 + 20);
  v20 = __CFADD__(v19, result);
  v21 = v19 + result;
  if (v20)
  {
    goto LABEL_19;
  }

  *(v2 + 20) = v21;
  v22 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = sub_1B0D43DA0(a1);
  v24 = __OFADD__(v22, v23);
  result = v22 + v23;
  if (v24)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0DDE918(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x532E5952414E4942uLL, 0xEB00000000455A49, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x532E5952414E4942;
    v7._object = 0xEB00000000455A49;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v11;
  result = sub_1B0E24940(a1);
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v13);

  v14 = *(v1 + 20);
  v15 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v14);
  if (v16)
  {
    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    v15 = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
  }

  v18 = v15;

  v19 = *(v2 + 20);
  v10 = __CFADD__(v19, v18);
  v20 = v19 + v18;
  if (v10)
  {
    goto LABEL_12;
  }

  *(v2 + 20) = v20;
  result = v12 + v18;
  if (__OFADD__(v12, v18))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0DDEA84(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x205347414C46uLL, 0xE600000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x205347414C46;
    v7._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_28;
  }

  *(v1 + 20) = v10;
  v36 = a1;
  v11 = a1[2];
  if (v11)
  {
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v1 + 20);
    LODWORD(v10) = v15 + result;
    if (__CFADD__(v15, result))
    {
      goto LABEL_35;
    }

    *(v1 + 20) = v10;
  }

  else
  {
    v14 = 0;
  }

  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v10);
  if (v16)
  {
    v17._countAndFlagsBits = 40;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v10);
  }

  v18 = *(v1 + 20);
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_29;
  }

  *(v1 + 20) = v20;
  v21 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  MEMORY[0x1EEE9AC00](result);
  v35[2] = sub_1B0D5C820;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = &v36;
  v35[6] = 32;
  v35[7] = 0xE100000000000000;
  result = sub_1B0DED0F8(0, sub_1B0D3CC60, v35, a1);
  v22 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v23);
  if (v24)
  {
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v2 + 20);
  v27 = (v26 + result);
  if (__CFADD__(v26, result))
  {
    goto LABEL_32;
  }

  *(v2 + 20) = v27;
  v28 = __OFADD__(v22, result);
  v29 = v22 + result;
  if (v28)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v11)
  {
    v34 = v29;
    goto LABEL_24;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v27);
  if (v30)
  {
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v27);
  }

  v32 = *(v2 + 20);
  v19 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v19)
  {
    goto LABEL_36;
  }

  *(v2 + 20) = v33;
  v34 = v29 + result;
  if (__OFADD__(v29, result))
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_24:
  result = v8 + v34;
  if (__OFADD__(v8, v34))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0DDECFC(uint64_t a1)
{
  v2 = sub_1B0E0F3C4(a1);
  v3 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v3);
  if (v5)
  {
    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = *(v1 + 20);
  v8 = (v7 + result);
  if (__CFADD__(v7, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v8;
  v9 = __OFADD__(v2, result);
  v10 = v2 + result;
  if (v9)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v1 + 8, v8);
  if (v11)
  {
    v12._countAndFlagsBits = 4999502;
    v12._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v8);
  }

  v13 = *(v1 + 20);
  v14 = __CFADD__(v13, result);
  v15 = v13 + result;
  if (v14)
  {
    goto LABEL_12;
  }

  *(v1 + 20) = v15;
  v9 = __OFADD__(v10, result);
  result += v10;
  if (v9)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0DDEDE4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v4);

  v5 = *(v2 + 20);
  v6 = sub_1B0CFC1B0(a2, 0xEB00000000204449, v3 + 8, *(v3 + 20));
  if (v7)
  {
    v8._countAndFlagsBits = a2;
    v8._object = 0xEB00000000204449;
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = v6;

  v11 = *(v3 + 20);
  v12 = __CFADD__(v11, v9);
  v13 = v11 + v9;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 20) = v13;
    return v9;
  }

  return result;
}

uint64_t sub_1B0DDEEB8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x42414C2D4D472D58uLL, 0xEB00000000534C45, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x42414C2D4D472D58;
    v7._object = 0xEB00000000534C45;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_32;
  }

  *(v1 + 20) = v10;
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = *(v1 + 20);
  v14 = (v13 + result);
  if (__CFADD__(v13, result))
  {
    goto LABEL_33;
  }

  *(v1 + 20) = v14;
  v15 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v41 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v14);
    if (v17)
    {
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v14);
    }

    v19 = result;
    v20 = *(v1 + 20);
    LODWORD(v14) = v20 + result;
    if (__CFADD__(v20, result))
    {
      goto LABEL_41;
    }

    *(v1 + 20) = v14;
  }

  else
  {
    v19 = 0;
  }

  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v14);
  if (v21)
  {
    v22._countAndFlagsBits = 40;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v14);
  }

  v23 = *(v1 + 20);
  v24 = __CFADD__(v23, result);
  v25 = v23 + result;
  if (v24)
  {
    goto LABEL_35;
  }

  *(v1 + 20) = v25;
  v26 = v19 + result;
  if (__OFADD__(v19, result))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  MEMORY[0x1EEE9AC00](result);
  v40[2] = sub_1B0D8F9B8;
  v40[3] = 0;
  v40[4] = v2;
  v40[5] = &v41;
  v40[6] = 32;
  v40[7] = 0xE100000000000000;
  result = sub_1B0DED0E0(0, sub_1B0D80728, v40, a1);
  v27 = v26 + result;
  if (__OFADD__(v26, result))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v28 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v28);
  if (v29)
  {
    v30._countAndFlagsBits = 41;
    v30._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v30, v28);
  }

  v31 = *(v2 + 20);
  v32 = (v31 + result);
  if (__CFADD__(v31, result))
  {
    goto LABEL_38;
  }

  *(v2 + 20) = v32;
  v33 = __OFADD__(v27, result);
  v34 = v27 + result;
  if (v33)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v16)
  {
    v39 = v34;
    goto LABEL_28;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v32);
  if (v35)
  {
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v36, v32);
  }

  v37 = *(v2 + 20);
  v24 = __CFADD__(v37, result);
  v38 = v37 + result;
  if (v24)
  {
    goto LABEL_42;
  }

  *(v2 + 20) = v38;
  v39 = v34 + result;
  if (__OFADD__(v34, result))
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_28:
  result = v15 + v39;
  if (__OFADD__(v15, v39))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0DDF18C(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x57454956455250uLL, 0xE700000000000000, v2 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x57454956455250;
    v9._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = result;
  v11 = *(v2 + 20);
  v12 = (v11 + result);
  if (__CFADD__(v11, result))
  {
    goto LABEL_17;
  }

  *(v2 + 20) = v12;
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v12);
  if (v13)
  {
    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
  }

  v15 = *(v2 + 20);
  v16 = (v15 + result);
  if (__CFADD__(v15, result))
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v16;
  v17 = __OFADD__(v10, result);
  v18 = v10 + result;
  if (v17)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (a2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0DD55E0(a1, a2);
    v20 = v19;

    result = v18 + v20;
    if (!__OFADD__(v18, v20))
    {
      return result;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v2 + 8, v16);
  if (v21)
  {
    v22._countAndFlagsBits = 4999502;
    v22._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v16);
  }

  v23 = result;
  v24 = *(v3 + 20);
  v25 = __CFADD__(v24, result);
  v26 = v24 + result;
  if (v25)
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v26;
  result += v18;
  if (__OFADD__(v18, v23))
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B0DDF304(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x2044494C49414D45uLL, 0xE900000000000028, v2 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x2044494C49414D45;
    v9._object = 0xE900000000000028;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = result;
  v11 = *(v2 + 20);
  v12 = (v11 + result);
  if (__CFADD__(v11, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v12;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = sub_1B0CFC1B0(a1, a2, v2 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = v13;

  v17 = *(v3 + 20);
  v18 = (v17 + v16);
  if (__CFADD__(v17, v16))
  {
    goto LABEL_14;
  }

  *(v3 + 20) = v18;
  v19 = __OFADD__(v10, v16);
  v20 = v10 + v16;
  if (v19)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v3 + 8, (v17 + v16));
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v18);
  }

  v23 = *(v3 + 20);
  v24 = __CFADD__(v23, result);
  v25 = v23 + result;
  if (v24)
  {
    goto LABEL_16;
  }

  *(v3 + 20) = v25;
  v19 = __OFADD__(v20, result);
  result += v20;
  if (v19)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0DDF45C(unint64_t a1, void *a2)
{
  v3 = v2;
  v4 = 0x4449444145524854;
  if (!a2)
  {
    goto LABEL_15;
  }

  v7 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x4449444145524854uLL, 0xEA00000000002820, v2 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 0x4449444145524854;
    v10._object = 0xEA00000000002820;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v2 + 20);
  v4 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v2 + 20) = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = sub_1B0CFC1B0(a1, a2, v2 + 8, v4);
  if (v14)
  {
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v4);
  }

  v16 = v13;

  v17 = *(v3 + 20);
  v18 = (v17 + v16);
  if (__CFADD__(v17, v16))
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v18;
  v19 = v11 + v16;
  if (__OFADD__(v11, v16))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v3 + 8, (v17 + v16));
  if (v20)
  {
    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v18);
  }

  v22 = *(v3 + 20);
  v23 = __CFADD__(v22, result);
  v24 = v22 + result;
  if (v23)
  {
    goto LABEL_22;
  }

  *(v3 + 20) = v24;
  v25 = __OFADD__(v19, result);
  result += v19;
  if (v25)
  {
    __break(1u);
LABEL_15:
    v26 = *(v3 + 20);
    result = sub_1B0CFC1B0(v4, 0xEC0000004C494E20, v3 + 8, v26);
    if (v27)
    {
      v28._countAndFlagsBits = v4;
      v28._object = 0xEC0000004C494E20;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = *(v3 + 20);
    v23 = __CFADD__(v29, result);
    v30 = v29 + result;
    if (!v23)
    {
      *(v3 + 20) = v30;
      return result;
    }

    goto LABEL_23;
  }

  return result;
}

void *_s12NIOIMAPCore216MessageAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v238[3] = a1[3];
  v238[2] = v5;
  v238[1] = v4;
  v238[0] = v3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v238[7] = a1[7];
  v238[6] = v8;
  v238[5] = v7;
  v238[4] = v6;
  v9 = a1[8];
  v10 = a1[9];
  v11 = a1[10];
  v239 = *(a1 + 88);
  v238[10] = v11;
  v238[9] = v10;
  v238[8] = v9;
  switch(sub_1B0D0CC38(v238))
  {
    case 1u:
      v78 = sub_1B0504D0C(v238);
      v79 = *(v78 + 64);
      v219 = *(v78 + 80);
      v220 = *(v78 + 96);
      *&v221 = *(v78 + 112);
      v80 = *(v78 + 16);
      v214 = *v78;
      v215 = v80;
      v81 = *(v78 + 48);
      v216 = *(v78 + 32);
      v217 = v81;
      v218 = v79;
      v82 = a2[9];
      v234 = a2[8];
      v235 = v82;
      v236 = a2[10];
      v237 = *(a2 + 88);
      v83 = a2[5];
      v230 = a2[4];
      v231 = v83;
      v84 = a2[7];
      v232 = a2[6];
      v233 = v84;
      v85 = a2[1];
      v226 = *a2;
      v227 = v85;
      v86 = a2[3];
      v228 = a2[2];
      v229 = v86;
      if (sub_1B0D0CC38(&v226) != 1)
      {
        goto LABEL_51;
      }

      v87 = sub_1B0504D0C(&v226);
      v206 = *(v87 + 64);
      v207 = *(v87 + 80);
      v208 = *(v87 + 96);
      *&v209 = *(v87 + 112);
      v202 = *v87;
      v203 = *(v87 + 16);
      v204 = *(v87 + 32);
      v205 = *(v87 + 48);
      v20 = _s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v214.i64, &v202);
      return (v20 & 1);
    case 2u:
      v35 = *sub_1B0504D0C(v238);
      v56 = a2[2];
      v229 = a2[3];
      v228 = v56;
      v57 = *a2;
      v227 = a2[1];
      v226 = v57;
      v58 = a2[6];
      v233 = a2[7];
      v232 = v58;
      v59 = a2[4];
      v231 = a2[5];
      v230 = v59;
      v237 = *(a2 + 88);
      v60 = a2[9];
      v236 = a2[10];
      v61 = a2[8];
      v235 = v60;
      v234 = v61;
      if (sub_1B0D0CC38(&v226) != 2)
      {
        goto LABEL_51;
      }

      goto LABEL_44;
    case 3u:
      v62 = *sub_1B0504D0C(v238);
      v63 = a2[2];
      v229 = a2[3];
      v228 = v63;
      v64 = *a2;
      v227 = a2[1];
      v226 = v64;
      v65 = a2[6];
      v233 = a2[7];
      v232 = v65;
      v66 = a2[4];
      v231 = a2[5];
      v230 = v66;
      v237 = *(a2 + 88);
      v67 = a2[9];
      v236 = a2[10];
      v68 = a2[8];
      v235 = v67;
      v234 = v68;
      if (sub_1B0D0CC38(&v226) != 3)
      {
        goto LABEL_51;
      }

      v20 = *sub_1B0504D0C(&v226) == v62;
      return (v20 & 1);
    case 4u:
      v35 = *sub_1B0504D0C(v238);
      v36 = a2[2];
      v229 = a2[3];
      v228 = v36;
      v37 = *a2;
      v227 = a2[1];
      v226 = v37;
      v38 = a2[6];
      v233 = a2[7];
      v232 = v38;
      v39 = a2[4];
      v231 = a2[5];
      v230 = v39;
      v237 = *(a2 + 88);
      v40 = a2[9];
      v236 = a2[10];
      v41 = a2[8];
      v235 = v40;
      v234 = v41;
      if (sub_1B0D0CC38(&v226) != 4)
      {
        goto LABEL_51;
      }

      goto LABEL_44;
    case 5u:
      v88 = sub_1B0504D0C(v238);
      v89 = *(v88 + 144);
      v222 = *(v88 + 128);
      v223 = v89;
      v224 = *(v88 + 160);
      v225 = *(v88 + 176);
      v90 = *(v88 + 64);
      v219 = *(v88 + 80);
      v91 = *(v88 + 112);
      v220 = *(v88 + 96);
      v221 = v91;
      v92 = *(v88 + 16);
      v214 = *v88;
      v215 = v92;
      v93 = *(v88 + 48);
      v216 = *(v88 + 32);
      v217 = v93;
      v218 = v90;
      v94 = *(v88 + 177);
      v95 = a2[9];
      v236 = a2[10];
      v96 = a2[8];
      v235 = v95;
      v234 = v96;
      v97 = a2[6];
      v233 = a2[7];
      v232 = v97;
      v98 = a2[4];
      v231 = a2[5];
      v230 = v98;
      v99 = a2[2];
      v229 = a2[3];
      v228 = v99;
      v100 = *a2;
      v227 = a2[1];
      v226 = v100;
      v237 = *(a2 + 88);
      if (sub_1B0D0CC38(&v226) != 5)
      {
        goto LABEL_51;
      }

      v101 = sub_1B0504D0C(&v226);
      v102 = *(v101 + 144);
      v198 = *(v101 + 128);
      v199 = v102;
      v200 = *(v101 + 160);
      v201 = *(v101 + 176);
      v103 = *(v101 + 80);
      v194 = *(v101 + 64);
      v195 = v103;
      v104 = *(v101 + 112);
      v196 = *(v101 + 96);
      v197 = v104;
      v105 = *(v101 + 16);
      v190 = *v101;
      v191 = v105;
      v106 = *(v101 + 48);
      v192 = *(v101 + 32);
      v193 = v106;
      v107 = *(v101 + 177);
      v213 = v225;
      v211 = v223;
      v212 = v224;
      v209 = v221;
      v210 = v222;
      v207 = v219;
      v208 = v220;
      v205 = v217;
      v206 = v218;
      v203 = v215;
      v204 = v216;
      v202 = v214;
      if (sub_1B075FACC(&v202) == 1)
      {
        v186 = v198;
        v187 = v199;
        v188 = v200;
        v189 = v201;
        v182 = v194;
        v183 = v195;
        v184 = v196;
        v185 = v197;
        v178 = v190;
        v179 = v191;
        v180 = v192;
        v181 = v193;
        if (sub_1B075FACC(&v178) != 1)
        {
          goto LABEL_51;
        }

        goto LABEL_30;
      }

      v186 = v198;
      v187 = v199;
      v188 = v200;
      v189 = v201;
      v182 = v194;
      v183 = v195;
      v184 = v196;
      v185 = v197;
      v178 = v190;
      v179 = v191;
      v180 = v192;
      v181 = v193;
      if (sub_1B075FACC(&v178) == 1)
      {
        goto LABEL_51;
      }

      v176[8] = v210;
      v176[9] = v211;
      v176[10] = v212;
      v177 = v213;
      v176[4] = v206;
      v176[5] = v207;
      v176[6] = v208;
      v176[7] = v209;
      v176[0] = v202;
      v176[1] = v203;
      v176[2] = v204;
      v176[3] = v205;
      if (sub_1B0717014(v176) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v145 = v144[5];
        v244 = v144[4];
        v245 = v145;
        v246 = v144[6];
        *&v247 = *(v144 + 14);
        v146 = v144[1];
        v240 = *v144;
        v241 = v146;
        v147 = v144[3];
        v242 = v144[2];
        v243 = v147;
        v172 = v186;
        v173 = v187;
        v174 = v188;
        v175 = v189;
        v168 = v182;
        v169 = v183;
        v170 = v184;
        v171 = v185;
        v164 = v178;
        v165 = v179;
        v166 = v180;
        v167 = v181;
        if (sub_1B0717014(&v164) == 1)
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v149 = v148[5];
          v255 = v148[4];
          v256 = v149;
          v257 = v148[6];
          *&v258 = *(v148 + 14);
          v150 = v148[1];
          v251 = *v148;
          v252 = v150;
          v151 = v148[3];
          v253 = v148[2];
          v254 = v151;
          if (!_s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(&v240, &v251))
          {
            goto LABEL_51;
          }

LABEL_30:
          v20 = v94 ^ v107 ^ 1;
          return (v20 & 1);
        }
      }

      else
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v153 = v152[9];
        v248 = v152[8];
        v249 = v153;
        v250 = v152[10];
        v154 = v152[5];
        v244 = v152[4];
        v245 = v154;
        v155 = v152[6];
        v247 = v152[7];
        v246 = v155;
        v156 = v152[1];
        v240 = *v152;
        v241 = v156;
        v157 = v152[2];
        v243 = v152[3];
        v242 = v157;
        v175 = v189;
        v173 = v187;
        v174 = v188;
        v171 = v185;
        v172 = v186;
        v169 = v183;
        v170 = v184;
        v167 = v181;
        v168 = v182;
        v165 = v179;
        v166 = v180;
        v164 = v178;
        if (sub_1B0717014(&v164) != 1)
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v159 = v158[9];
          v259 = v158[8];
          v260 = v159;
          v261 = v158[10];
          v160 = v158[5];
          v255 = v158[4];
          v256 = v160;
          v161 = v158[7];
          v257 = v158[6];
          v258 = v161;
          v162 = v158[1];
          v251 = *v158;
          v252 = v162;
          v163 = v158[3];
          v253 = v158[2];
          v254 = v163;
          if (!static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v240, &v251))
          {
            goto LABEL_51;
          }

          goto LABEL_30;
        }
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
LABEL_51:
      v20 = 0;
      return (v20 & 1);
    case 6u:
      v117 = sub_1B0504D0C(v238);
      v119 = *v117;
      v118 = v117[1];
      v120 = a2[9];
      v234 = a2[8];
      v235 = v120;
      v236 = a2[10];
      v237 = *(a2 + 88);
      v121 = a2[5];
      v230 = a2[4];
      v231 = v121;
      v122 = a2[7];
      v232 = a2[6];
      v233 = v122;
      v123 = a2[1];
      v226 = *a2;
      v227 = v123;
      v124 = a2[3];
      v228 = a2[2];
      v229 = v124;
      if (sub_1B0D0CC38(&v226) != 6)
      {
        goto LABEL_51;
      }

      v125 = sub_1B0504D0C(&v226);
      v126 = *v125;
      v127 = *(v119 + 16);
      if (v127 != *(*v125 + 16))
      {
        goto LABEL_51;
      }

      if (!v127 || v119 == v126)
      {
        goto LABEL_42;
      }

      v128 = (v119 + 32);
      v129 = (v126 + 32);
      while (*v128 == *v129)
      {
        ++v128;
        ++v129;
        if (!--v127)
        {
LABEL_42:
          v20 = v118 == v125[1];
          return (v20 & 1);
        }
      }

      goto LABEL_51;
    case 7u:
      v69 = sub_1B0504D0C(v238);
      v70 = *(v69 + 16);
      v214 = *v69;
      v215 = v70;
      LOBYTE(v216) = *(v69 + 32);
      v71 = a2[2];
      v229 = a2[3];
      v228 = v71;
      v72 = *a2;
      v227 = a2[1];
      v226 = v72;
      v73 = a2[6];
      v233 = a2[7];
      v232 = v73;
      v74 = a2[4];
      v231 = a2[5];
      v230 = v74;
      v237 = *(a2 + 88);
      v75 = a2[9];
      v236 = a2[10];
      v76 = a2[8];
      v235 = v75;
      v234 = v76;
      if (sub_1B0D0CC38(&v226) != 7)
      {
        goto LABEL_51;
      }

      v77 = sub_1B0504D0C(&v226);
      v202 = *v77;
      v203 = *(v77 + 16);
      LOBYTE(v204) = *(v77 + 32);
      v20 = _s12NIOIMAPCore213StreamingKindO21__derived_enum_equalsySbAC_ACtFZ_0(v214.i64, &v202);
      return (v20 & 1);
    case 8u:
      v136 = *sub_1B0504D0C(v238);
      v137 = a2[2];
      v229 = a2[3];
      v228 = v137;
      v138 = *a2;
      v227 = a2[1];
      v226 = v138;
      v139 = a2[6];
      v233 = a2[7];
      v232 = v139;
      v140 = a2[4];
      v231 = a2[5];
      v230 = v140;
      v237 = *(a2 + 88);
      v141 = a2[9];
      v236 = a2[10];
      v142 = a2[8];
      v235 = v141;
      v234 = v142;
      if (sub_1B0D0CC38(&v226) != 8)
      {
        goto LABEL_51;
      }

      result = sub_1B0504D0C(&v226);
      if (((*result | v136) & 0x8000000000000000) == 0)
      {
        v20 = *result == v136;
        return (v20 & 1);
      }

      __break(1u);
      return result;
    case 9u:
      v35 = *sub_1B0504D0C(v238);
      v50 = a2[2];
      v229 = a2[3];
      v228 = v50;
      v51 = *a2;
      v227 = a2[1];
      v226 = v51;
      v52 = a2[6];
      v233 = a2[7];
      v232 = v52;
      v53 = a2[4];
      v231 = a2[5];
      v230 = v53;
      v237 = *(a2 + 88);
      v54 = a2[9];
      v236 = a2[10];
      v55 = a2[8];
      v235 = v54;
      v234 = v55;
      if (sub_1B0D0CC38(&v226) != 9)
      {
        goto LABEL_51;
      }

      goto LABEL_44;
    case 0xAu:
      v35 = *sub_1B0504D0C(v238);
      v130 = a2[2];
      v229 = a2[3];
      v228 = v130;
      v131 = *a2;
      v227 = a2[1];
      v226 = v131;
      v132 = a2[6];
      v233 = a2[7];
      v232 = v132;
      v133 = a2[4];
      v231 = a2[5];
      v230 = v133;
      v237 = *(a2 + 88);
      v134 = a2[9];
      v236 = a2[10];
      v135 = a2[8];
      v235 = v134;
      v234 = v135;
      if (sub_1B0D0CC38(&v226) != 10)
      {
        goto LABEL_51;
      }

LABEL_44:
      v20 = v35 == *sub_1B0504D0C(&v226);
      return (v20 & 1);
    case 0xBu:
      sub_1B0504D0C(v238);
      v29 = a2[2];
      v229 = a2[3];
      v228 = v29;
      v30 = *a2;
      v227 = a2[1];
      v226 = v30;
      v31 = a2[6];
      v233 = a2[7];
      v232 = v31;
      v32 = a2[4];
      v231 = a2[5];
      v230 = v32;
      v237 = *(a2 + 88);
      v33 = a2[9];
      v236 = a2[10];
      v34 = a2[8];
      v235 = v33;
      v234 = v34;
      if (sub_1B0D0CC38(&v226) != 11)
      {
        goto LABEL_51;
      }

      sub_1B0504D0C(&v226);
      v20 = sub_1B0D3CF14();
      return (v20 & 1);
    case 0xCu:
      v42 = sub_1B0504D0C(v238);
      v23 = *v42;
      v22 = v42[1];
      v43 = a2[9];
      v234 = a2[8];
      v235 = v43;
      v236 = a2[10];
      v237 = *(a2 + 88);
      v44 = a2[5];
      v230 = a2[4];
      v231 = v44;
      v45 = a2[7];
      v232 = a2[6];
      v233 = v45;
      v46 = a2[1];
      v226 = *a2;
      v227 = v46;
      v47 = a2[3];
      v228 = a2[2];
      v229 = v47;
      if (sub_1B0D0CC38(&v226) == 12)
      {
        goto LABEL_11;
      }

      goto LABEL_51;
    case 0xDu:
      v108 = sub_1B0504D0C(v238);
      v109 = *v108;
      v110 = v108[1];
      v111 = a2[9];
      v234 = a2[8];
      v235 = v111;
      v236 = a2[10];
      v237 = *(a2 + 88);
      v112 = a2[5];
      v230 = a2[4];
      v231 = v112;
      v113 = a2[7];
      v232 = a2[6];
      v233 = v113;
      v114 = a2[1];
      v226 = *a2;
      v227 = v114;
      v115 = a2[3];
      v228 = a2[2];
      v229 = v115;
      if (sub_1B0D0CC38(&v226) != 13)
      {
        goto LABEL_51;
      }

      v116 = sub_1B0504D0C(&v226);
      if (v109 == *v116 && v110 == v116[1])
      {
        goto LABEL_49;
      }

      v20 = sub_1B0E46A78();
      return (v20 & 1);
    case 0xEu:
      v21 = sub_1B0504D0C(v238);
      v23 = *v21;
      v22 = v21[1];
      v24 = a2[9];
      v234 = a2[8];
      v235 = v24;
      v236 = a2[10];
      v237 = *(a2 + 88);
      v25 = a2[5];
      v230 = a2[4];
      v231 = v25;
      v26 = a2[7];
      v232 = a2[6];
      v233 = v26;
      v27 = a2[1];
      v226 = *a2;
      v227 = v27;
      v28 = a2[3];
      v228 = a2[2];
      v229 = v28;
      if (sub_1B0D0CC38(&v226) != 14)
      {
        goto LABEL_51;
      }

LABEL_11:
      v48 = sub_1B0504D0C(&v226);
      v49 = v48[1];
      if (v22)
      {
        if (!v49 || (v23 != *v48 || v22 != v49) && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else if (v49)
      {
        goto LABEL_51;
      }

LABEL_49:
      v20 = 1;
      return (v20 & 1);
    default:
      v12 = *sub_1B0504D0C(v238);
      v13 = a2[2];
      v229 = a2[3];
      v228 = v13;
      v14 = *a2;
      v227 = a2[1];
      v226 = v14;
      v15 = a2[6];
      v233 = a2[7];
      v232 = v15;
      v16 = a2[4];
      v231 = a2[5];
      v230 = v16;
      v237 = *(a2 + 88);
      v17 = a2[9];
      v236 = a2[10];
      v18 = a2[8];
      v235 = v17;
      v234 = v18;
      if (sub_1B0D0CC38(&v226))
      {
        goto LABEL_51;
      }

      v19 = sub_1B0504D0C(&v226);
      v20 = sub_1B03D1B3C(v12, *v19);
      return (v20 & 1);
  }
}

unint64_t sub_1B0DE0288()
{
  result = qword_1EB6E7830;
  if (!qword_1EB6E7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7830);
  }

  return result;
}

uint64_t sub_1B0DE02DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x72 && *(a1 + 178))
  {
    return (*a1 + 114);
  }

  v3 = ((*(a1 + 176) >> 5) & 0x70 | (*(a1 + 176) >> 12)) ^ 0x7F;
  if (v3 >= 0x71)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0DE0330(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 - 114;
    if (a3 >= 0x72)
    {
      *(result + 178) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
    {
      *(result + 178) = 0;
    }

    if (a2)
    {
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 176) = (((-a2 >> 4) & 7) - 8 * a2) << 9;
    }
  }

  return result;
}

uint64_t MessageData.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for MessageData(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0DE14A4(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      MEMORY[0x1B2728D70](0);
      return sub_1B0E46C88();
    }

    sub_1B074BA2C(v7, v4);
    v13 = 1;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1B074BA2C(v7, v4);
    v13 = 2;
LABEL_19:
    MEMORY[0x1B2728D70](v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D328();
    sub_1B0E447C8();
    return sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v9 = *v7;
    MEMORY[0x1B2728D70](3);
    MEMORY[0x1B2728D70](*(v9 + 16));
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v9 + 54;
      do
      {
        v11 += 24;
        swift_beginAccess();
        sub_1B0E46C38();
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v14 = *v7;
    MEMORY[0x1B2728D70](4);
    MEMORY[0x1B2728D70](*(v14 + 16));
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      v19 = v14;
      do
      {
        v18 = *(v14 + v16 + 56);
        v17 = *(v14 + v16 + 64);
        v20 = *(v14 + v16 + 78);
        v21 = *(v14 + v16 + 72);
        v22 = v17;
        swift_beginAccess();
        sub_1B0E46C38();
        sub_1B0E46C68();
        if (v18)
        {
          swift_beginAccess();
          sub_1B0E46C38();
        }

        v16 += 48;
        --v15;
        v14 = v19;
      }

      while (v15);
    }
  }
}

uint64_t MessageData.hashValue.getter()
{
  sub_1B0E46C28();
  MessageData.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DE073C()
{
  sub_1B0E46C28();
  MessageData.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DE0780(uint64_t a1)
{
  sub_1B0E46C28();
  MessageData.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DE07C0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v88 - v8;
  v10 = type metadata accessor for MessageData(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0DE14A4(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v18 = 0x44454853494E4156;
      sub_1B074BA2C(v12, v9);
      v56 = *(v2 + 20);
      result = sub_1B0CFC1B0(0x44454853494E4156uLL, 0xE900000000000020, v2 + 8, v56);
      if (v57)
      {
        v58._countAndFlagsBits = 0x44454853494E4156;
        v58._object = 0xE900000000000020;
        result = ByteBuffer._setStringSlowpath(_:at:)(v58, v56);
      }

      v59 = result;
      v60 = *(v2 + 20);
      v25 = __CFADD__(v60, result);
      v61 = v60 + result;
      if (v25)
      {
        goto LABEL_77;
      }

      *(v2 + 20) = v61;
      v2 = sub_1B0E20018(v2);
      sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = v59 + v2;
      if (!__OFADD__(v59, v2))
      {
        return result;
      }

      __break(1u);
      goto LABEL_42;
    }

    LODWORD(v88[0]) = *v12;
    v12 = v88;
    v27 = sub_1B0E469C8();
    v29 = v28;
    v30 = *(v2 + 20);
    v31 = sub_1B0CFC1B0(v27, v28, v2 + 8, v30);
    if (v32)
    {
      v12 = (v2 + 8);
      v33._countAndFlagsBits = v27;
      v33._object = v29;
      v31 = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
    }

    v6 = v31;

    v34 = *(v2 + 20);
    v35 = (v34 + v6);
    if (__CFADD__(v34, v6))
    {
      goto LABEL_76;
    }

    *(v2 + 20) = v35;
    result = sub_1B0CFC1B0(0x45474E5550584520uLL, 0xE800000000000000, v2 + 8, (v34 + v6));
    if (v36)
    {
      v12 = (v2 + 8);
      v37._countAndFlagsBits = 0x45474E5550584520;
      v37._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v37, v35);
    }

    v38 = *(v2 + 20);
    v25 = __CFADD__(v38, result);
    v39 = v38 + result;
    if (v25)
    {
      goto LABEL_78;
    }

    *(v2 + 20) = v39;
    v40 = __OFADD__(v6, result);
    result += v6;
    if (!v40)
    {
      return result;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_22:
    sub_1B074BA2C(v12, v6);
    v41 = *(v2 + 20);
    result = sub_1B0CFC1B0(0xD000000000000013, 0x80000001B0F30030, v2 + 8, v41);
    if (v42)
    {
      v43._object = 0x80000001B0F30030;
      v43._countAndFlagsBits = 0xD000000000000013;
      result = ByteBuffer._setStringSlowpath(_:at:)(v43, v41);
    }

    v44 = result;
    v45 = *(v2 + 20);
    v25 = __CFADD__(v45, result);
    v46 = v45 + result;
    if (v25)
    {
      goto LABEL_73;
    }

    *(v2 + 20) = v46;
    v12 = v6;
    v2 = sub_1B0E20018(v2);
    sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    result = v44 + v2;
    if (!__OFADD__(v44, v2))
    {
      return result;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v9 = *v12;
    v14 = *(v2 + 20);
    result = sub_1B0CFC1B0(0x55414C52554E4547uLL, 0xEA00000000004854, v2 + 8, v14);
    if (v16)
    {
      v17._countAndFlagsBits = 0x55414C52554E4547;
      v17._object = 0xEA00000000004854;
      result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
    }

    v18 = result;
    v19 = *(v2 + 20);
    v20 = (v19 + result);
    if (__CFADD__(v19, result))
    {
      goto LABEL_74;
    }

    *(v2 + 20) = v20;
    v88[0] = v9;
    if (*(v9 + 2))
    {
      result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v20);
      if (v21)
      {
        v22._countAndFlagsBits = 32;
        v22._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
      }

      v23 = result;
      v24 = *(v2 + 20);
      v25 = __CFADD__(v24, result);
      v26 = v24 + result;
      if (v25)
      {
        goto LABEL_86;
      }

      *(v2 + 20) = v26;
      goto LABEL_43;
    }

LABEL_42:
    v23 = 0;
LABEL_43:
    MEMORY[0x1EEE9AC00](result);
    v88[-6] = sub_1B0DE0F1C;
    v88[-5] = 0;
    v88[-4] = v2;
    v88[-3] = v88;
    v88[-2] = 32;
    v88[-1] = 0xE100000000000000;
    result = sub_1B0DE6128(0, sub_1B0DE163C, &v88[-8], v9);
    v51 = v23 + result;
    if (__OFADD__(v23, result))
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (*(v9 + 2))
    {
      v62 = *(v2 + 20);
      v63 = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v62);
      if (v64)
      {
        v65._countAndFlagsBits = 0;
        v65._object = 0xE000000000000000;
        v63 = ByteBuffer._setStringSlowpath(_:at:)(v65, v62);
      }

      v66 = v63;

      v67 = *(v2 + 20);
      v25 = __CFADD__(v67, v66);
      v68 = v67 + v66;
      if (v25)
      {
        goto LABEL_88;
      }

      *(v2 + 20) = v68;
      v69 = v51 + v66;
      if (__OFADD__(v51, v66))
      {
        __break(1u);
        goto LABEL_71;
      }
    }

    else
    {

      v69 = v51;
    }

    result = v18 + v69;
    if (!__OFADD__(v18, v69))
    {
      return result;
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_28:
  v9 = *v12;
  v47 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x48435445464C5255uLL, 0xE800000000000000, v2 + 8, v47);
  if (v48)
  {
    v49._countAndFlagsBits = 0x48435445464C5255;
    v49._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v49, v47);
  }

  v18 = result;
  v50 = *(v2 + 20);
  v51 = (v50 + result);
  if (__CFADD__(v50, result))
  {
    goto LABEL_75;
  }

  *(v2 + 20) = v51;
  v88[0] = v9;
  if (!*(v9 + 2))
  {
LABEL_52:
    v54 = 0;
    goto LABEL_53;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v51);
  if (v52)
  {
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v53, v51);
  }

  v54 = result;
  v55 = *(v2 + 20);
  LODWORD(v51) = v55 + result;
  if (__CFADD__(v55, result))
  {
    goto LABEL_87;
  }

  *(v2 + 20) = v51;
LABEL_53:
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v2 + 8, v51);
  if (v70)
  {
    v71._countAndFlagsBits = 40;
    v71._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v71, v51);
  }

  v72 = *(v2 + 20);
  v25 = __CFADD__(v72, result);
  v73 = v72 + result;
  if (v25)
  {
    goto LABEL_80;
  }

  *(v2 + 20) = v73;
  v74 = v54 + result;
  if (__OFADD__(v54, result))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  MEMORY[0x1EEE9AC00](result);
  v88[-6] = sub_1B0DE0F5C;
  v88[-5] = 0;
  v88[-4] = v2;
  v88[-3] = v88;
  v88[-2] = 32;
  v88[-1] = 0xE100000000000000;
  result = sub_1B0DE71C4(0, sub_1B0DE1618, &v88[-8], v9);
  v75 = v74 + result;
  if (__OFADD__(v74, result))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v76 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v76);
  if (v77)
  {
    v78._countAndFlagsBits = 41;
    v78._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v78, v76);
  }

  v79 = *(v2 + 20);
  v80 = (v79 + result);
  if (__CFADD__(v79, result))
  {
    goto LABEL_83;
  }

  *(v2 + 20) = v80;
  v40 = __OFADD__(v75, result);
  v51 = v75 + result;
  if (v40)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (!*(v9 + 2))
  {
LABEL_71:

    v87 = v51;
    goto LABEL_67;
  }

  v81 = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v80);
  if (v82)
  {
    v83._countAndFlagsBits = 0;
    v83._object = 0xE000000000000000;
    v81 = ByteBuffer._setStringSlowpath(_:at:)(v83, v80);
  }

  v84 = v81;

  v85 = *(v2 + 20);
  v25 = __CFADD__(v85, v84);
  v86 = v85 + v84;
  if (v25)
  {
    goto LABEL_89;
  }

  *(v2 + 20) = v86;
  v87 = v51 + v84;
  if (__OFADD__(v51, v84))
  {
    __break(1u);
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

LABEL_67:
  result = v18 + v87;
  if (__OFADD__(v18, v87))
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0DE0F5C(__int128 *a1)
{
  v1 = a1[1];
  v3 = *a1;
  v4[0] = v1;
  *(v4 + 15) = *(a1 + 31);
  return sub_1B0E34A20(&v3);
}

uint64_t sub_1B0DE0F9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(__int128 *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, unint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 6);
  v14 = *(a2 + 14);
  v15 = *(a2 + 30);
  v23[2] = a2[2];
  v16 = *(a2 + 2);
  v19 = *(a2 + 12);
  v17 = a2 + 6;
  v18 = v19;
  LOWORD(v19) = *(v17 + 2);
  v20 = *a1;
  v21 = *a6;
  v23[0] = v11;
  v23[1] = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v18;
  v29 = v19;
  v30 = *(v17 + 6);
  result = sub_1B0E243D4(v20, v23, a3, a4, a5, v21, a8, a9);
  if (!v9)
  {
    *a7 = result;
  }

  return result;
}

uint64_t _s12NIOIMAPCore211MessageDataO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v8 = type metadata accessor for MessageData(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v36 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7840, &qword_1B0EF8238);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v36 - v24;
  v27 = *(v26 + 56);
  sub_1B0DE14A4(a1, &v36 - v24);
  sub_1B0DE14A4(v37, &v25[v27]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1B0DE14A4(v25, v13);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v29 = sub_1B0D3CF14();
LABEL_13:
          v30 = v29;

          goto LABEL_18;
        }
      }

      else
      {
        sub_1B0DE14A4(v25, v10);
        v33 = *v10;
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v29 = sub_1B0D38DC8(v33, *&v25[v27]);
          goto LABEL_13;
        }
      }

LABEL_22:
      sub_1B0398EFC(v25, &qword_1EB6E7840, &qword_1B0EF8238);
      v30 = 0;
      return v30 & 1;
    }

    sub_1B0DE14A4(v25, v16);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v31 = v36;
      sub_1B074BA2C(&v25[v27], v36);
      sub_1B03D06F8();
      v30 = sub_1B0E46E08();
      sub_1B0398EFC(v31, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v32 = v16;
LABEL_17:
      sub_1B0398EFC(v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      goto LABEL_18;
    }

    v34 = v16;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1B0DE14A4(v25, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B074BA2C(&v25[v27], v7);
      sub_1B03D06F8();
      v30 = sub_1B0E46E08();
      sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v32 = v19;
      goto LABEL_17;
    }

    v34 = v19;
LABEL_21:
    sub_1B0398EFC(v34, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_22;
  }

  sub_1B0DE14A4(v25, v22);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_22;
  }

  v30 = *&v25[v27] == *v22;
LABEL_18:
  sub_1B0DE1660(v25);
  return v30 & 1;
}

uint64_t type metadata accessor for MessageData(uint64_t a1)
{
  result = qword_1EB6DE918;
  if (!qword_1EB6DE918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0DE14A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0DE150C()
{
  result = qword_1EB6E7838;
  if (!qword_1EB6E7838)
  {
    type metadata accessor for MessageData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7838);
  }

  return result;
}

void sub_1B0DE1564(uint64_t a1)
{
  sub_1B043B29C(319);
  if (v1 <= 0x3F)
  {
    sub_1B041D6E0(319, &unk_1EB6DB650);
    if (v2 <= 0x3F)
    {
      sub_1B041D6E0(319, &qword_1EB6DB618);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B0DE1660(uint64_t a1)
{
  v2 = type metadata accessor for MessageData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static MessageID.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t MessageID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DE1738()
{
  result = qword_1EB6E7848;
  if (!qword_1EB6E7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7848);
  }

  return result;
}

unint64_t sub_1B0DE1790()
{
  result = qword_1EB6E7850;
  if (!qword_1EB6E7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7850);
  }

  return result;
}

unint64_t sub_1B0DE17E8()
{
  result = qword_1EB6E7858;
  if (!qword_1EB6E7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7858);
  }

  return result;
}

uint64_t MessageIdentifier.init<A>(exactly:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a4;
  v35 = a6;
  v36 = a2;
  v33[1] = *(*(a5 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - v14;
  v16 = sub_1B0E45FB8();
  v17 = sub_1B0E45FA8();
  v37 = a1;
  if (v16)
  {
    if (v17 > 64)
    {
      goto LABEL_3;
    }
  }

  else if (v17 > 63)
  {
LABEL_3:
    v38 = 0;
    sub_1B03948EC();
    sub_1B0E45F78();
    v18 = sub_1B0E44908();
    v19 = *(v9 + 8);
    v19(v15, a3);
    if ((v18 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  (*(v9 + 16))(v15, a1, a3);
  v20 = sub_1B0E45F98();
  v19 = *(v9 + 8);
  v19(v15, a3);
  if (v20 <= 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  (*(v9 + 16))(v12, v37, a3);
  if ((sub_1B0E45FB8() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_1B0E46B38(), sub_1B0E46A38(), v21 = sub_1B0E44908(), v19(v15, a3), (v21 & 1) == 0))
  {
    if (sub_1B0E45FA8() < 32)
    {
      goto LABEL_19;
    }

    LODWORD(v38) = -1;
    v22 = sub_1B0E45FB8();
    v23 = sub_1B0E45FA8();
    if (v22)
    {
      if (v23 <= 32)
      {
        swift_getAssociatedConformanceWitness();
        sub_1B0E46B38();
        sub_1B0E46A38();
        v24 = sub_1B0E448F8();
        v19(v15, a3);
        if ((v24 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else if (v23 < 33)
    {
LABEL_18:
      sub_1B0E45F98();
      goto LABEL_19;
    }

    sub_1B07467B8();
    sub_1B0E45F78();
    v25 = sub_1B0E44908();
    v19(v15, a3);
    if ((v25 & 1) == 0)
    {
LABEL_19:
      v29 = sub_1B0E45F98();
      v19(v12, a3);
      v30 = v35;
      v31 = v29;
      v26 = v36;
      (*(v34 + 80))(v31, v36);
      v19(v37, a3);
      v28 = v30;
      v27 = 0;
      return (*(*(v26 - 8) + 56))(v28, v27, 1, v26);
    }
  }

  v19(v12, a3);
LABEL_17:
  v26 = v36;
  v19(v37, a3);
  v27 = 1;
  v28 = v35;
  return (*(*(v26 - 8) + 56))(v28, v27, 1, v26);
}

uint64_t BinaryInteger.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 56))(a3, a5);
  sub_1B07467B8();
  sub_1B0E45FD8();
  return (*(*(a3 - 8) + 8))(a1, a3);
}

BOOL static MessageIdentifier.<= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 56);
  v7 = v6(a3, a4);
  return v6(a3, a4) >= v7;
}

uint64_t sub_1B0DE1F14(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v7 = *(a2 - 1);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 80))(0xFFFFFFFFLL, v8);
  v12 = sub_1B0E44A28();
  (*(v7 + 8))(v10, v6);
  if (v12)
  {
    v14 = v4[5];
    v4 += 5;
    v13 = v14;
    v6 = v4 - 3;
    a3 = 0;
    result = sub_1B0CFC1B0(0x2AuLL, 0xE100000000000000, (v4 - 3), v14);
    if (v16)
    {
      v17._countAndFlagsBits = 42;
      v17._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v17, v13);
    }

    v18 = *v4 + result;
    if (!__CFADD__(*v4, result))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v28[3] = (*(a3 + 56))(v6, a3);
  v19 = sub_1B0E469C8();
  v21 = v20;
  v23 = v4[5];
  v4 += 5;
  v22 = v23;
  v24 = sub_1B0CFC1B0(v19, v20, (v4 - 3), v23);
  if (v25)
  {
    v26._countAndFlagsBits = v19;
    v26._object = v21;
    v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v22);
  }

  v27 = v24;

  result = v27;
  v18 = *v4 + v27;
  if (!__CFADD__(*v4, v27))
  {
LABEL_10:
    *v4 = v18;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1B0DE212C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B0E45D88();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  if (a1 == -1)
  {
    __break(1u);
  }

  else
  {
    v14 = a1 + 1;
    v11 = sub_1B07467B8();
    MessageIdentifier.init<A>(exactly:)(&v14, a2, MEMORY[0x1E69E7668], a3, v11, v10);
    v12 = *(a2 - 8);
    if ((*(v12 + 48))(v10, 1, a2) != 1)
    {
      (*(v12 + 32))(a4, v10, a2);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1B0DE22F8(uint64_t a1)
{
  sub_1B0DE2BF0();

  return sub_1B0E46F28();
}

uint64_t sub_1B0DE2334(uint64_t a1)
{
  sub_1B0DE2BF0();

  return sub_1B0E46F38();
}

uint64_t UnknownMessageIdentifier.encode(to:)(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7860, &qword_1B0EF83A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0DE2BF0();
  sub_1B0E46D48();
  sub_1B0E46988();
  return (*(v4 + 8))(v6, v3);
}

uint64_t UnknownMessageIdentifier.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

void *UnknownMessageIdentifier.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7870, &qword_1B0EF83A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0DE2BF0();
  sub_1B0E46D18();
  if (!v1)
  {
    v7 = sub_1B0E46898();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1B0DE2664@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7870, &qword_1B0EF83A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0DE2BF0();
  sub_1B0E46D18();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_1B0E46898();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_1B0DE27C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7860, &qword_1B0EF83A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0DE2BF0();
  sub_1B0E46D48();
  sub_1B0E46988();
  return (*(v3 + 8))(v5, v2);
}

unint64_t MessageIdentifier.distance(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  v6 = v5(a2, a3);
  return v6 - v5(a2, a3);
}

uint64_t *sub_1B0DE299C@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  if (*result > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *result + *v2;
  if (v3 < 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v3))
  {
    *a2 = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void MessageIdentifier.advanced(by:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B0E45D88();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  if (a1 > 0xFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v15 = a1 + (*(a3 + 56))(a2, a3, v9);
    v12 = sub_1B043B1E8();
    MessageIdentifier.init<A>(exactly:)(&v15, a2, MEMORY[0x1E69E7360], a3, v12, v11);
    v13 = *(a2 - 8);
    if ((*(v13 + 48))(v11, 1, a2) != 1)
    {
      (*(v13 + 32))(a4, v11, a2);
      return;
    }
  }

  __break(1u);
}

_DWORD *sub_1B0DE2B28(_DWORD *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t *a6)
{
  if (*a6 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *a6 + *a4;
  if (v6 < 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v6))
  {
    *result = v6;
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL static MessageIdentifier.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 56);
  v7 = v6(a3, a4);
  return v7 < v6(a3, a4);
}

unint64_t sub_1B0DE2BF0()
{
  result = qword_1EB6E7868;
  if (!qword_1EB6E7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7868);
  }

  return result;
}

unint64_t sub_1B0DE2C44(void *a1)
{
  a1[1] = sub_1B0DE2C94();
  a1[2] = sub_1B0DE2CE8();
  a1[3] = sub_1B0DE2D3C();
  a1[4] = sub_1B0DE2D90();
  a1[5] = sub_1B0DE2DE4();
  result = sub_1B0DE2E38();
  a1[6] = result;
  return result;
}

unint64_t sub_1B0DE2C94()
{
  result = qword_1EB6DE2E8;
  if (!qword_1EB6DE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE2E8);
  }

  return result;
}

unint64_t sub_1B0DE2CE8()
{
  result = qword_1EB6DE300;
  if (!qword_1EB6DE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE300);
  }

  return result;
}

unint64_t sub_1B0DE2D3C()
{
  result = qword_1EB6DE320;
  if (!qword_1EB6DE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE320);
  }

  return result;
}

unint64_t sub_1B0DE2D90()
{
  result = qword_1EB6DE2F0;
  if (!qword_1EB6DE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE2F0);
  }

  return result;
}

unint64_t sub_1B0DE2DE4()
{
  result = qword_1EB6DE318;
  if (!qword_1EB6DE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE318);
  }

  return result;
}

unint64_t sub_1B0DE2E38()
{
  result = qword_1EB6DE2F8;
  if (!qword_1EB6DE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE2F8);
  }

  return result;
}

unint64_t sub_1B0DE2E8C()
{
  result = qword_1EB6DE308;
  if (!qword_1EB6DE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE308);
  }

  return result;
}

unint64_t sub_1B0DE2EE4()
{
  result = qword_1EB6DE310;
  if (!qword_1EB6DE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE310);
  }

  return result;
}

unint64_t sub_1B0DE2F74()
{
  result = qword_1EB6E7878;
  if (!qword_1EB6E7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7878);
  }

  return result;
}

unint64_t sub_1B0DE2FCC()
{
  result = qword_1EB6E7880;
  if (!qword_1EB6E7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7880);
  }

  return result;
}

unint64_t sub_1B0DE3024()
{
  result = qword_1EB6E7888;
  if (!qword_1EB6E7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7888);
  }

  return result;
}

uint64_t static MessageIdentifier.... infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v31 = a5;
  v32 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = sub_1B0E44A08();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v17 = a1;
  v18 = v32;
  result = sub_1B0E44928();
  if (result)
  {
    v20 = *(a3 - 8);
    v21 = v20;
    v29 = v14;
    v22 = *(v20 + 16);
    v28 = v13;
    v22(v12, v17, a3);
    v22(&v12[*(TupleTypeMetadata2 + 48)], v18, a3);
    v23 = v30;
    (*(v8 + 16))(v30, v12, TupleTypeMetadata2);
    v32 = *(TupleTypeMetadata2 + 48);
    v24 = *(v21 + 32);
    v24(v16, v23, a3);
    v25 = *(v21 + 8);
    v25(&v23[v32], a3);
    (*(v8 + 32))(v23, v12, TupleTypeMetadata2);
    v26 = v28;
    v24(&v16[*(v28 + 36)], &v23[*(TupleTypeMetadata2 + 48)], a3);
    v25(v23, a3);
    return (*(v29 + 32))(v31, v16, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0DE338C(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v7 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - v11;
  if (v14)
  {
    v15 = sub_1B0E44A08();
    v16 = *(v7 + 16);
    v16(v13, a1 + *(v15 + 36), a3);
    v17 = v9;
    v18 = a1;
  }

  else
  {
    v16 = *(v7 + 16);
    (v16)(v27 - v11, a1, a3, v12);
    v18 = a1 + *(sub_1B0E44A08() + 36);
    v17 = v9;
  }

  v16(v17, v18, a3);
  v27[0] = a4;
  v19 = a4;
  v20 = v27[1];
  v21 = sub_1B0DE1F14(v13, a3, v19);
  sub_1B0E44A08();
  v22 = 0;
  if (sub_1B0E44908())
  {
    v22 = sub_1B0DE53DC(v20, v9, a3, v27[0]);
  }

  v23 = *(v7 + 8);
  result = v23(v13, a3);
  v25 = __OFADD__(v21, v22);
  v26 = v21 + v22;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v23(v9, a3);
    return v26;
  }

  return result;
}

uint64_t MessageIdentifierRange.upperBound.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_1B0E44A08();
  v7 = *(*(v5 - 8) + 16);
  v8 = v3 + *(v6 + 36);

  return v7(a2, v8, v5);
}

uint64_t MessageIdentifierRange.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v7 = sub_1B0E44A08();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4, a1, v7);
}

uint64_t MessageIdentifierRange.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = sub_1B0E44A08();
  v33 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  result = sub_1B0E44928();
  if (result)
  {
    v18 = *(a2 - 8);
    v31 = v14;
    v19 = v18;
    (*(v18 + 16))(v13, a1, a2);
    v20 = *(TupleTypeMetadata2 + 48);
    v32 = a4;
    v21 = *(v19 + 32);
    v21(&v13[v20], a1, a2);
    (*(v8 + 16))(v10, v13, TupleTypeMetadata2);
    v30 = *(TupleTypeMetadata2 + 48);
    v22 = v16;
    v21(v16, v10, a2);
    v23 = v8;
    v24 = v33;
    v29 = v13;
    v25 = *(v19 + 8);
    v25(&v10[v30], a2);
    (*(v23 + 32))(v10, v29, TupleTypeMetadata2);
    v26 = *(TupleTypeMetadata2 + 48);
    v27 = v31;
    v21(&v22[*(v31 + 36)], &v10[v26], a2);
    v25(v10, a2);
    return (*(v24 + 32))(v32, v22, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MessageIdentifierRange.range.getter@<X0>(uint64_t a2@<X8>)
{
  v5 = sub_1B0E44A08();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3, v5);
}

uint64_t MessageIdentifierRange.range.setter(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1B0E44A08();
  v6 = *(*(v5 - 8) + 40);

  return v6(v3, a1, v5);
}

uint64_t MessageIdentifierRange.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v34 = TupleTypeMetadata2;
  v35 = v8;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v20 = sub_1B0E44A08();
  v36 = *(v20 - 8);
  v37 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  static MessageIdentifier.min.getter(a2, a3);
  (*(v13 + 16))(v16, a1, a2);
  LOBYTE(a3) = sub_1B0E44928();
  v23 = sub_1B0E466D8();
  result = (*(*(v23 - 8) + 8))(a1, v23);
  if (a3)
  {
    v25 = *(v13 + 32);
    v25(v12, v19, a2);
    v26 = v34;
    v25(&v12[*(v34 + 48)], v16, a2);
    v27 = v35;
    v28 = v33;
    (*(v35 + 16))(v33, v12, v26);
    v29 = *(v26 + 48);
    v25(v22, v28, a2);
    v32 = *(v13 + 8);
    v32(&v28[v29], a2);
    (*(v27 + 32))(v28, v12, v26);
    v30 = v37;
    v25(&v22[*(v37 + 36)], &v28[*(v26 + 48)], a2);
    v32(v28, a2);
    return (*(v36 + 32))(v38, v22, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v39 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v35 = TupleTypeMetadata2;
  v36 = v8;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = sub_1B0E44A08();
  v37 = *(v20 - 8);
  v38 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v32 - v22;
  (*(v13 + 16))(v19, a1, a2, v21);
  static MessageIdentifier.max.getter(a2, a3);
  LOBYTE(a3) = sub_1B0E44928();
  v24 = sub_1B0E46538();
  result = (*(*(v24 - 8) + 8))(a1, v24);
  if (a3)
  {
    v26 = *(v13 + 32);
    v26(v12, v19, a2);
    v27 = v35;
    v26(&v12[*(v35 + 48)], v16, a2);
    v28 = v36;
    v29 = v34;
    (*(v36 + 16))(v34, v12, v27);
    v30 = *(v27 + 48);
    v26(v23, v29, a2);
    v33 = *(v13 + 8);
    v33(&v29[v30], a2);
    (*(v28 + 32))(v29, v12, v27);
    v31 = v38;
    v26(&v23[*(v38 + 36)], &v29[*(v27 + 48)], a2);
    v33(v29, a2);
    return (*(v37 + 32))(v39, v23, v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void MessageIdentifierRange.hash(into:)(double a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E44A08();

  JUMPOUT(0x1B2726B30);
}

uint64_t MessageIdentifierRange.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  MessageIdentifierRange.hash(into:)(v2, v4, a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DE4378(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  MessageIdentifierRange.hash(into:)(v3, v5, a2);
  return sub_1B0E46CB8();
}

uint64_t MessageIdentifierRange.init(integerLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MessageIdentifier.init(integerLiteral:)(v8, v9, v10);
  return MessageIdentifierRange.init(_:)(v7, a2, a4);
}

uint64_t static MessageIdentifierRange.all.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = sub_1B0E44A08();
  v30 = *(v18 - 8);
  v31 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  static MessageIdentifier.min.getter(a1, a2);
  static MessageIdentifier.max.getter(a1, a2);
  result = sub_1B0E44928();
  if (result)
  {
    v22 = *(v11 + 32);
    v22(v10, v17, a1);
    v22(&v10[*(TupleTypeMetadata2 + 48)], v14, a1);
    v23 = v29;
    (*(v6 + 16))(v29, v10, TupleTypeMetadata2);
    v28 = *(TupleTypeMetadata2 + 48);
    v22(v20, v23, a1);
    v24 = *(v11 + 8);
    v24(&v23[v28], a1);
    (*(v6 + 32))(v23, v10, TupleTypeMetadata2);
    v25 = *(TupleTypeMetadata2 + 48);
    v26 = v31;
    v22(&v20[*(v31 + 36)], &v23[v25], a1);
    v24(v23, a1);
    return (*(v30 + 32))(v32, v20, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static MessageIdentifier.... prefix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B0E44A08();
  v31 = *(v17 - 8);
  v32 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v28 = &v27 - v18;
  static MessageIdentifier.min.getter(a2, a3);
  v19 = a1;
  result = sub_1B0E44928();
  if (result)
  {
    v21 = TupleTypeMetadata2;
    v22 = *(v13 + 32);
    v22(v12, v16, a2);
    v27 = v22;
    (*(v13 + 16))(&v12[*(v21 + 48)], v19, a2);
    (*(v7 + 16))(v9, v12, v21);
    v23 = *(v21 + 48);
    v24 = v28;
    v22(v28, v9, a2);
    v25 = *(v13 + 8);
    v25(&v9[v23], a2);
    (*(v7 + 32))(v9, v12, v21);
    v26 = v32;
    v27(&v24[*(v32 + 36)], &v9[*(v21 + 48)], a2);
    v25(v9, a2);
    return (*(v31 + 32))(v30, v24, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static MessageIdentifier.... postfix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v27 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B0E44A08();
  v29 = *(v17 - 8);
  v30 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  static MessageIdentifier.max.getter(a2, a3);
  result = sub_1B0E44928();
  if (result)
  {
    (*(v13 + 16))(v12, a1, a2);
    v21 = *(v13 + 32);
    v21(&v12[*(TupleTypeMetadata2 + 48)], v16, a2);
    v22 = v27;
    (*(v8 + 16))(v27, v12, TupleTypeMetadata2);
    v26 = *(TupleTypeMetadata2 + 48);
    v21(v19, v22, a2);
    v23 = *(v13 + 8);
    v23(&v22[v26], a2);
    (*(v8 + 32))(v22, v12, TupleTypeMetadata2);
    v24 = v30;
    v21(&v19[*(v30 + 36)], &v22[*(TupleTypeMetadata2 + 48)], a2);
    v23(v22, a2);
    return (*(v29 + 32))(v28, v19, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MessageIdentifierRange.count.getter(uint64_t a1, double a2)
{
  sub_1B0E44A08();
  sub_1B0A63204();
  swift_getWitnessTable();
  return sub_1B0E45718();
}

uint64_t MessageIdentifierRange.clamped(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v47 = a3;
  v6 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v40 - v10;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = sub_1B0E44A08();
  v44 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v40 - v18;
  if (sub_1B0E448F8())
  {
    v19 = v11;
    v20 = *(v11 + 16);
    v21 = v16;
    v20(v16, a1, v6);
  }

  else
  {
    v21 = v16;
    v22 = *(v17 + 36);
    v23 = sub_1B0E44908();
    v19 = v11;
    v24 = v4;
    v20 = *(v11 + 16);
    if (v23)
    {
      v24 = a1 + v22;
    }

    v20(v21, v24, v6);
  }

  v25 = *(v17 + 36);
  v26 = sub_1B0E44908();
  v45 = v17;
  if (v26)
  {
    v27 = v19;
    v28 = v40;
    v20(v40, a1 + v25, v6);
  }

  else
  {
    if (sub_1B0E448F8())
    {
      v28 = v40;
      v29 = v40;
      v30 = a1;
    }

    else
    {
      v30 = v4 + v25;
      v28 = v40;
      v29 = v40;
    }

    v20(v29, v30, v6);
    v27 = v19;
  }

  v31 = *(v27 + 32);
  v32 = v43;
  v31(v43, v21, v6);
  v31(&v32[*(TupleTypeMetadata2 + 48)], v28, v6);
  v33 = v46;
  v34 = v42;
  (*(v46 + 16))(v42, v32, TupleTypeMetadata2);
  v40 = *(TupleTypeMetadata2 + 48);
  v35 = v41;
  v31(v41, v34, v6);
  v36 = *(v27 + 8);
  v36(&v40[v34], v6);
  (*(v33 + 32))(v34, v32, TupleTypeMetadata2);
  v37 = *(TupleTypeMetadata2 + 48);
  v38 = v45;
  v31(&v35[*(v45 + 36)], &v34[v37], v6);
  v36(v34, v6);
  return (*(v44 + 32))(v47, v35, v38);
}

uint64_t sub_1B0DE5378(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), double a4)
{
  v5 = sub_1B0E44A08();

  return a3(a1, v5);
}

uint64_t sub_1B0DE53DC(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v8 = *(a1 + 20);
  result = sub_1B0CFC1B0(0x3AuLL, 0xE100000000000000, a1 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = 58;
    v11._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = result;
  v13 = *(a1 + 20);
  v14 = __CFADD__(v13, result);
  v15 = v13 + result;
  if (v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(a1 + 20) = v15;
  v16 = sub_1B0DE1F14(a2, a3, a4);
  v17 = __OFADD__(v12, v16);
  result = v12 + v16;
  if (v17)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0DE54B0(uint64_t a1, double a2)
{
  result = sub_1B0E44A08();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0DE5528(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1B0DE5678(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1B0DE58A8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7890, &unk_1B0EF87F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E78B0, &qword_1B0EF8FE8);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v30 = a1;
  sub_1B0DECFB0(v3, v12);
  (*(v7 + 32))(v9, v12, v6);
  sub_1B0D730A0(&qword_1EB6DA2F0, MEMORY[0x1E69E7BB8]);
  sub_1B0E44F08();
  v25 = *(v14 + 44);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E72E0, &qword_1B0EF1360) + 36);
  sub_1B0D730A0(&qword_1EB6DA2E8, MEMORY[0x1E69E7BC8]);
  sub_1B0E456C8();
  if (*&v16[v17] == v29[0])
  {
    v18 = 0;
LABEL_7:
    *&v16[v25] = v18;
    sub_1B0398EFC(v16, &qword_1EB6E78B0, &qword_1B0EF8FE8);
    return a1;
  }

  else
  {
    v19 = 0;
    while (1)
    {
      v20 = sub_1B0E457B8();
      v22 = *v21;
      v20(v29, 0);
      result = sub_1B0E456D8();
      v18 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v29[0] = v19;
      v29[1] = v22;
      v26(&v28, &v30, v29);
      if (!v4)
      {
        a1 = v28;
        v30 = v28;
        sub_1B0E456C8();
        ++v19;
        if (*&v16[v17] != v29[0])
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0DE5BC8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v20 = a1;
  v6 = a4[2];
  if (v6)
  {
    v9 = a4[4];
    v10 = a4[5];
    v17 = 0;
    v18 = v9;
    v19 = v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2(&v16, &v20, &v17);
    if (v4)
    {
    }

    else
    {
      v11 = a4 + 7;
      for (i = 1; ; ++i)
      {

        v5 = v16;
        v20 = v16;
        if (v6 == i)
        {
          break;
        }

        v13 = *(v11 - 1);
        v14 = *v11;
        v17 = i;
        v18 = v13;
        v19 = v14;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        a2(&v16, &v20, &v17);
        v11 += 2;
      }
    }
  }

  return v5;
}

uint64_t sub_1B0DE5CC4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v17 = a1;
  v6 = a4[2];
  if (v6)
  {
    v9 = a4[4];
    v15 = 0;
    v16 = v9;

    a2(&v14, &v17, &v15);
    if (v4)
    {
    }

    else
    {
      v10 = a4 + 5;
      for (i = 1; ; ++i)
      {

        v5 = v14;
        v17 = v14;
        if (v6 == i)
        {
          break;
        }

        v12 = *v10++;
        v15 = i;
        v16 = v12;

        a2(&v14, &v17, &v15);
      }
    }
  }

  return v5;
}

uint64_t sub_1B0DE5DBC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v18 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 56); ; i += 32)
    {
      v10 = *i;
      v12 = *(i - 2);
      v11 = *(i - 1);
      v13 = *(i - 3);
      v16[0] = v8;
      v16[1] = v13;
      v16[2] = v12;
      v16[3] = v11;
      v17 = v10;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      (a2)(&v15, &v18, v16);
      if (v4)
      {
        break;
      }

      ++v8;

      v5 = v15;
      v18 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_1B0DE5F30(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void, double), uint64_t (*a8)(void))
{
  v33 = a5;
  v34 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v30 - v16);
  v36 = a1;
  v30 = a4;
  v32 = *(a4 + 16);
  if (v32)
  {
    v18 = *(a7(0, v15) - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = *(v18 + 72);
    v21 = *(v14 + 48);
    *v17 = 0;
    sub_1B0DED020(v30 + v19, v17 + v21, a8);
    a2(&v35, &v36, v17);
    if (v8)
    {
      sub_1B0398EFC(v17, v33, v34);
    }

    else
    {
      v22 = a8;
      v23 = v14;
      v31 = a2;
      v24 = v22;
      v25 = v20;
      v26 = v30 + v20 + v19;
      for (i = 1; ; ++i)
      {
        sub_1B0398EFC(v17, v33, v34);
        a1 = v35;
        v36 = v35;
        if (v32 == i)
        {
          break;
        }

        v28 = *(v23 + 48);
        *v17 = i;
        sub_1B0DED020(v26, v17 + v28, v24);
        v31(&v35, &v36, v17);
        v26 += v25;
      }
    }
  }

  return a1;
}

uint64_t sub_1B0DE6128(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    v9 = (a4 + 54);
    while (1)
    {
      v10 = *v9;
      v11 = *(v9 - 1);
      v12 = *(v9 - 6);
      v13 = *(v9 - 22);
      v16[0] = v8;
      v16[1] = v13;
      v16[2] = *(v9 - 14);
      v17 = v12;
      v18 = v11;
      v19 = v10;

      a2(&v15, &v20, v16);
      if (v4)
      {
        break;
      }

      v9 += 24;
      ++v8;

      v5 = v15;
      v20 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_1B0DE627C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, _BYTE *), uint64_t a3, uint64_t a4, void (*a5)(_OWORD *, __int128 *), uint64_t *a6, uint64_t *a7)
{
  v31 = a7;
  v8 = a1;
  v30[0] = a1;
  v9 = *(a4 + 16);
  if (v9)
  {
    v12 = 0;
    for (i = (a4 + 32); ; i += 4)
    {
      v14 = i[1];
      v27[0] = *i;
      v27[1] = v14;
      v15 = i[3];
      v17 = *i;
      v16 = i[1];
      v28 = i[2];
      v29 = v15;
      *&v26[8] = v17;
      *&v26[24] = v16;
      *&v26[40] = v28;
      *&v26[56] = i[3];
      *v26 = v12;
      (a5)(v27, &v20, a3);
      a2(&v25, v30, v26);
      if (v7)
      {
        break;
      }

      ++v12;
      v22 = *&v26[32];
      v23 = *&v26[48];
      v24 = *&v26[64];
      v20 = *v26;
      v21 = *&v26[16];
      sub_1B0398EFC(&v20, a6, v31);
      v8 = v25;
      v30[0] = v25;
      if (v9 == v12)
      {
        return v8;
      }
    }

    v22 = *&v26[32];
    v23 = *&v26[48];
    v24 = *&v26[64];
    v20 = *v26;
    v21 = *&v26[16];
    sub_1B0398EFC(&v20, a6, v31);
  }

  return v8;
}

uint64_t sub_1B0DE63D8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v17 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v9 = *(a4 + 32);
    v15 = 0;
    v16 = v9;
    a2(&v14, &v17, &v15);
    if (!v4)
    {
      v10 = (a4 + 33);
      for (i = 1; ; ++i)
      {
        v5 = v14;
        v17 = v14;
        if (v6 == i)
        {
          break;
        }

        v12 = *v10++;
        v15 = i;
        v16 = v12;
        a2(&v14, &v17, &v15);
      }
    }
  }

  return v5;
}

uint64_t sub_1B0DE6490(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *, double), uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v23 = a1;
  v16 = *(a4 + 16);
  if (v16)
  {
    v5 = 0;
    for (i = (a4 + 64); ; i += 10)
    {
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *(i + 4);
      v12 = *i;
      v13 = v12 | (v11 << 32);
      v20[0] = v5;
      v20[1] = v7;
      v20[2] = v8;
      v20[3] = v9;
      v20[4] = v10;
      v22 = v11;
      v21 = v12;
      v14 = sub_1B0DDB688(v7, v8, v9, v10, v13);
      a2(&v19, &v23, v20, v14);
      if (v18)
      {
        break;
      }

      ++v5;
      sub_1B0C1BB38(v7, v8, v9, v10, v13);
      v4 = v19;
      v23 = v19;
      if (v16 == v5)
      {
        return v4;
      }
    }

    sub_1B0C1BB38(v7, v8, v9, v10, v13);
  }

  return v4;
}

uint64_t sub_1B0DE6650(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v16 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    v9 = (a4 + 48);
    while (1)
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v9 - 2);
      v15[0] = v8;
      v15[1] = v12;
      v15[2] = v11;
      v15[3] = v10;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      (a2)(&v14, &v16, v15);
      if (v4)
      {
        break;
      }

      v9 += 3;
      ++v8;

      v5 = v14;
      v16 = v14;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_1B0DE676C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, _BYTE *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v19 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = a4 + 32; ; i += 40)
    {
      v10 = *(i + 16);
      v17[0] = *i;
      v17[1] = v10;
      v18 = *(i + 32);
      *&v16[8] = v17[0];
      *&v16[24] = *(i + 16);
      *&v16[40] = *(i + 32);
      *v16 = v8;
      sub_1B0D3CE64(v17, &v12);
      a2(&v15, &v19, v16);
      if (v4)
      {
        break;
      }

      ++v8;
      v12 = *v16;
      v13 = *&v16[16];
      v14 = *&v16[32];
      sub_1B0398EFC(&v12, &qword_1EB6E7900, &unk_1B0EFCD80);
      v5 = v15;
      v19 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }

    v12 = *v16;
    v13 = *&v16[16];
    v14 = *&v16[32];
    sub_1B0398EFC(&v12, &qword_1EB6E7900, &unk_1B0EFCD80);
  }

  return v5;
}

uint64_t sub_1B0DE68A8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 48); ; i += 6)
    {
      v10 = *(i + 6);
      v11 = *(i + 2);
      v12 = *i;
      v13 = *(i - 2);
      v14 = *(i - 1);
      v17 = v8;
      v18 = v13;
      v19 = v14;
      v20 = v12;
      v22 = v10;
      v21 = v11;
      sub_1B0DED0B0();
      a2(&v16, &v23, &v17);
      if (v4)
      {
        break;
      }

      ++v8;
      sub_1B03D91F8(v18);
      v5 = v16;
      v23 = v16;
      if (v6 == v8)
      {
        return v5;
      }
    }

    sub_1B03D91F8(v18);
  }

  return v5;
}

uint64_t sub_1B0DE69F0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 55); ; i += 24)
    {
      v10 = *i;
      v11 = *(i - 7);
      v12 = *(i - 1);
      v13 = *(i - 3) | (v12 << 16);
      v14 = *(i - 15);
      v15 = *(i - 23);
      v18 = v8;
      v19 = v15;
      v20 = v14;
      v21 = v11;
      v23 = v12;
      v22 = v13;
      v24 = v10;
      sub_1B0D3C8F0(v15, v14, v11 | (v13 << 32), v10);
      a2(&v17, &v25, &v18);
      if (v4)
      {
        break;
      }

      ++v8;
      sub_1B0D3C8FC(v19, v20, v21 | ((v22 | (v23 << 16)) << 32), v24);
      v5 = v17;
      v25 = v17;
      if (v6 == v8)
      {
        return v5;
      }
    }

    sub_1B0D3C8FC(v19, v20, v21 | ((v22 | (v23 << 16)) << 32), v24);
  }

  return v5;
}

uint64_t sub_1B0DE6B60(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    v9 = (a4 + 40);
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v15[0] = v8;
      v15[1] = v10;
      v16 = v11;
      v12 = sub_1B0DED088(v10, v11);
      (a2)(&v14, &v17, v15, v12);
      if (v4)
      {
        break;
      }

      v9 += 16;
      ++v8;
      sub_1B0DED09C(v10, v11);
      v5 = v14;
      v17 = v14;
      if (v6 == v8)
      {
        return v5;
      }
    }

    sub_1B0DED09C(v10, v11);
  }

  return v5;
}

uint64_t sub_1B0DE6C8C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v16 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    v9 = (a4 + 40);
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v14[0] = v8;
      v14[1] = v10;
      v15 = v11;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      (a2)(&v13, &v16, v14);
      if (v4)
      {
        break;
      }

      v9 += 4;
      ++v8;

      v5 = v13;
      v16 = v13;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_1B0DE6D58(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v17 = a1;
  v6 = a4[2];
  if (v6)
  {
    v9 = a4[4];
    v15 = 0;
    v16 = v9;
    a2(&v14, &v17, &v15);
    if (!v4)
    {
      v10 = a4 + 5;
      for (i = 1; ; ++i)
      {
        v5 = v14;
        v17 = v14;
        if (v6 == i)
        {
          break;
        }

        v12 = *v10++;
        v15 = i;
        v16 = v12;
        a2(&v14, &v17, &v15);
      }
    }
  }

  return v5;
}

uint64_t sub_1B0DE6E08(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 56); ; i += 4)
    {
      v10 = *(i - 1);
      v11 = *i;
      v12 = *(i - 3);
      v13 = *(i - 2);
      v16[0] = v8;
      v16[1] = v12;
      v16[2] = v13;
      v16[3] = v10;
      v16[4] = v11;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      (a2)(&v15, &v17, v16);
      if (v4)
      {
        break;
      }

      ++v8;

      v5 = v15;
      v17 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_1B0DE6EF4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v17 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v9 = *(a4 + 32);
    v15 = 0;
    v16 = v9;
    a2(&v14, &v17, &v15);
    if (!v4)
    {
      v10 = (a4 + 36);
      for (i = 1; ; ++i)
      {
        v5 = v14;
        v17 = v14;
        if (v6 == i)
        {
          break;
        }

        v12 = *v10++;
        v15 = i;
        v16 = v12;
        a2(&v14, &v17, &v15);
      }
    }
  }

  return v5;
}

uint64_t sub_1B0DE6FAC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, _BYTE *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v25[0] = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 32); ; i += 4)
    {
      v10 = i[1];
      v22[0] = *i;
      v22[1] = v10;
      v11 = i[3];
      v13 = *i;
      v12 = i[1];
      v23 = i[2];
      v24 = v11;
      *&v21[8] = v13;
      *&v21[24] = v12;
      *&v21[40] = v23;
      *&v21[56] = i[3];
      *v21 = v8;
      sub_1B0D3CB18(v22, &v15);
      a2(&v20, v25, v21);
      if (v4)
      {
        break;
      }

      ++v8;
      v17 = *&v21[32];
      v18 = *&v21[48];
      v19 = *&v21[64];
      v15 = *v21;
      v16 = *&v21[16];
      sub_1B0398EFC(&v15, &qword_1EB6E78A0, &unk_1B0EFCD30);
      v5 = v20;
      v25[0] = v20;
      if (v6 == v8)
      {
        return v5;
      }
    }

    v17 = *&v21[32];
    v18 = *&v21[48];
    v19 = *&v21[64];
    v15 = *v21;
    v16 = *&v21[16];
    sub_1B0398EFC(&v15, &qword_1EB6E78A0, &unk_1B0EFCD30);
  }

  return v5;
}

uint64_t sub_1B0DE710C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v16 = a1;
  v6 = a4[2];
  if (v6)
  {
    v14 = 0;
    v15 = a4[4];
    a2(&v13, &v16, &v14);
    if (!v4)
    {
      v9 = a4 + 5;
      for (i = 1; ; ++i)
      {
        v5 = v13;
        v16 = v13;
        if (v6 == i)
        {
          break;
        }

        v14 = i;
        v11 = *v9++;
        v15 = v11;
        a2(&v13, &v16, &v14);
      }
    }
  }

  return v5;
}

uint64_t sub_1B0DE71C4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, _BYTE *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v19 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 32); ; i += 3)
    {
      v10 = i[1];
      v17 = *i;
      v18[0] = v10;
      *(v18 + 15) = *(i + 31);
      *&v16[8] = v17;
      *&v16[24] = i[1];
      *&v16[39] = *(i + 31);
      *v16 = v8;
      sub_1B0D3C908(&v17, &v12);
      a2(&v15, &v19, v16);
      if (v4)
      {
        break;
      }

      ++v8;
      v12 = *v16;
      v13 = *&v16[16];
      v14[0] = *&v16[32];
      *(v14 + 15) = *&v16[47];
      sub_1B0398EFC(&v12, &qword_1EB6E78A8, &qword_1B0EF8FE0);
      v5 = v15;
      v19 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }

    v12 = *v16;
    v13 = *&v16[16];
    v14[0] = *&v16[32];
    *(v14 + 15) = *&v16[47];
    sub_1B0398EFC(&v12, &qword_1EB6E78A8, &qword_1B0EF8FE0);
  }

  return v5;
}

uint64_t sub_1B0DE7318(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v18 = a1;
  v6 = a4[2];
  if (v6)
  {
    v9 = a4[4];
    v10 = a4[5];
    v16 = 0;
    *&v17 = v9;
    *(&v17 + 1) = v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2(&v15, &v18, &v16);
    if (v4)
    {
    }

    else
    {
      v11 = (a4 + 6);
      for (i = 1; ; ++i)
      {

        v5 = v15;
        v18 = v15;
        if (v6 == i)
        {
          break;
        }

        v16 = i;
        v13 = *v11++;
        v17 = v13;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        a2(&v15, &v18, &v16);
      }
    }
  }

  return v5;
}

uint64_t sub_1B0DE7414(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v23 = a1;
  v7 = *(a4 + 16);
  if (v7)
  {
    v9 = 0;
    for (i = (a4 + 64); ; i += 10)
    {
      v11 = *(i + 2);
      v12 = *i;
      v13 = *(i - 4);
      v14 = *(i - 3);
      v15 = *(i + 6);
      v18[0] = v9;
      v18[1] = v13;
      v18[2] = v14;
      v19 = *(i - 1);
      v22 = v15;
      v21 = v11;
      v20 = v12;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      (a2)(&v17, &v23, v18);
      if (v5)
      {
        break;
      }

      ++v9;

      v6 = v17;
      v23 = v17;
      if (v7 == v9)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t MessageIdentifierSet.init(arrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  type metadata accessor for MessageIdentifierRange(255, a2, a3, a4);
  v5 = sub_1B0E45358();
  swift_getWitnessTable();
  return MessageIdentifierSet.init<A>(_:)(&v7, a2, v5);
}

uint64_t MessageIdentifierSet.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B0E45018();
  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t MessageIdentifierSet.isEmpty.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);

  return sub_1B0E46E98();
}

uint64_t static MessageIdentifierSet.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1B03D06F8();

  return sub_1B0E46E08();
}

uint64_t static MessageIdentifierSet.all.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MessageIdentifierRange(0, a1, a2, a4);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  static MessageIdentifierRange.all.getter(a1, a2, &v10 - v7);
  return MessageIdentifierSet.init(_:)(v8, a1, a2);
}

uint64_t MessageIdentifierSet.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0DECB18(a1, a2, a3);
  sub_1B03D06F8();
  sub_1B0E46F08();
  v7 = type metadata accessor for MessageIdentifierRange(0, a2, a3, v6);
  return (*(*(v7 - 8) + 8))(a1, v7);
}

{
  v6 = *(a3 + 56);
  result = v6(a2, a3);
  v8 = result - 1;
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = v6(a2, a3);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 <= result)
  {
    sub_1B03D06F8();
    sub_1B0E46F08();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  return sub_1B0DE9390(a1, a2, a3, MEMORY[0x1E69E5F90], MessageIdentifierRange.init(_:));
}

{
  return sub_1B0DE9390(a1, a2, a3, MEMORY[0x1E69E6ED0], MessageIdentifierRange.init(_:));
}

{
  return sub_1B0DE9390(a1, a2, a3, MEMORY[0x1E69E6D08], MessageIdentifierRange.init(_:));
}

{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MessageIdentifierRange(0, v9, v10, v11);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v18 - v13;
  v15 = sub_1B0E458B8();
  if (sub_1B0E458A8())
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v16 = *(*(v15 - 8) + 8);

    return v16(a1, v15);
  }

  else
  {
    v18[1] = -1;
    sub_1B0E45EC8();
    static MessageIdentifier.... infix(_:_:)(a1, v8, a2, v14);
    (*(v6 + 8))(v8, a2);
    MessageIdentifierSet.init(_:)(v14, a2, a3);
    return (*(*(v15 - 8) + 8))(a1, v15);
  }
}

uint64_t static MessageIdentifierSet.empty.getter()
{
  sub_1B03D06F8();

  return sub_1B0E46EE8();
}

uint64_t MessageIdentifierSet._ranges.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessageIdentifierSet._ranges.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t sub_1B0DE79C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1B0DECB18(a1, a3, a5);
  v8 = result;
  if (HIDWORD(result) != result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v6 = sub_1B0E46E88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    sub_1B0E46E38();
    return v6(v7, 0);
  }

  return result;
}

unint64_t Range<>.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B0DECB18(a1, a2, a3);
  v8 = type metadata accessor for MessageIdentifierRange(0, a2, a3, v7);
  (*(*(v8 - 8) + 8))(a1, v8);
  return v6;
}

unint64_t MessageIdentificationShiftWrapper.advanced(by:)(uint64_t a1, unsigned int a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t MessageIdentifierSet.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0B0D328();

  return sub_1B0E447C8();
}

uint64_t MessageIdentifierSet.hashValue.getter()
{
  sub_1B0E46C28();
  MessageIdentifierSet.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DE7CD8(uint64_t a1)
{
  sub_1B0E46C28();
  MessageIdentifierSet.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t MessageIdentificationShiftWrapper.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

void *sub_1B0DE7D94@<X0>(void *result@<X0>, _DWORD *a2@<X8>)
{
  v3 = *v2;
  v4 = v3 + *result;
  if (__OFADD__(v3, *result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v4))
  {
    *a2 = v4;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

_DWORD *sub_1B0DE7DC4(_DWORD *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, void *a6)
{
  v6 = *a4;
  v7 = __OFADD__(v6, *a6);
  v8 = v6 + *a6;
  if (v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v8))
  {
    *result = v8;
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1B0DE7E4C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v29 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v26 - v17;
  v28 = sub_1B0E44A08();
  MEMORY[0x1EEE9AC00](v28);
  v20 = v26 - v19;
  sub_1B0DE212C(a1, a2, a3, v18);
  if (HIDWORD(a1))
  {
    sub_1B0DE212C(HIDWORD(a1) - 1, a2, a3, v15);
    if (sub_1B0E44928())
    {
      v26[1] = a3;
      v21 = *(v12 + 32);
      v21(v11, v18, a2);
      v22 = TupleTypeMetadata2;
      v21(&v11[*(TupleTypeMetadata2 + 48)], v15, a2);
      v23 = v27;
      v24 = v29;
      (*(v27 + 16))(v29, v11, v22);
      v26[0] = *(v22 + 48);
      v21(v20, v24, a2);
      v25 = *(v12 + 8);
      v25(&v24[v26[0]], a2);
      (*(v23 + 32))(v24, v11, v22);
      v21(&v20[*(v28 + 36)], &v24[*(v22 + 48)], a2);
      v25(v24, a2);
      MessageIdentifierRange.init(_:)(v20, v30);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t MessageIdentifierSet.min()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = sub_1B0E44A08();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v9 = type metadata accessor for MessageIdentifierSet.RangeView(0, v3, v4, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v14 = type metadata accessor for MessageIdentifierRange(255, v3, v4, v13);
  v15 = sub_1B0E45D88();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  MessageIdentifierSet.ranges.getter(v12);
  swift_getWitnessTable();
  sub_1B0E45728();
  (*(v10 + 8))(v12, v9);
  v19 = *(v14 - 8);
  if ((*(v19 + 48))(v18, 1, v14) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v20 = *(v3 - 8);
    v21 = 1;
    v22 = v30;
  }

  else
  {
    v24 = v28;
    v23 = v29;
    (*(v28 + 16))(v7, v18, v29);
    (*(v19 + 8))(v18, v14);
    v20 = *(v3 - 8);
    v25 = v30;
    (*(v20 + 16))(v30, v7, v3);
    (*(v24 + 8))(v7, v23);
    v21 = 0;
    v22 = v25;
  }

  return (*(v20 + 56))(v22, v21, 1, v3);
}

uint64_t MessageIdentifierSet.ranges.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0E46E68();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  return (*(*(v5 - 8) + 32))(a1, v4, v5);
}

uint64_t MessageIdentifierSet.max()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = sub_1B0E44A08();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v9 = type metadata accessor for MessageIdentifierSet.RangeView(0, v3, v4, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v14 = type metadata accessor for MessageIdentifierRange(255, v3, v4, v13);
  v15 = sub_1B0E45D88();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  MessageIdentifierSet.ranges.getter(v12);
  swift_getWitnessTable();
  sub_1B0E44888();
  (*(v10 + 8))(v12, v9);
  v19 = *(v14 - 8);
  if ((*(v19 + 48))(v18, 1, v14) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v20 = *(v3 - 8);
    v21 = 1;
    v22 = v30;
  }

  else
  {
    v24 = v28;
    v23 = v29;
    (*(v28 + 16))(v7, v18, v29);
    (*(v19 + 8))(v18, v14);
    v20 = *(v3 - 8);
    v25 = v30;
    (*(v20 + 16))(v30, &v7[*(v23 + 36)], v3);
    (*(v24 + 8))(v7, v23);
    v21 = 0;
    v22 = v25;
  }

  return (*(v20 + 56))(v22, v21, 1, v3);
}

BOOL MessageIdentifierSet.isContiguous.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0E46E68();
  v4 = sub_1B0E46E28();
  (*(v1 + 8))(v3, v0);
  return v4 < 2;
}

uint64_t MessageIdentifierSet.RangeView.startIndex.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);

  return sub_1B0E46E18();
}

uint64_t MessageIdentifierSet.RangeView.endIndex.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);

  return sub_1B0E46E28();
}

void MessageIdentifierSet.RangeView.subscript.getter(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  sub_1B0E46E58();
  sub_1B0DE7E4C(v5, *(a2 + 16), *(a2 + 24), a3);
}

uint64_t sub_1B0DE8B64(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_1B0E45628();
}

uint64_t sub_1B0DE8BEC@<X0>(uint64_t *a1@<X8>)
{
  result = MessageIdentifierSet.RangeView.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B0DE8C14@<X0>(uint64_t *a1@<X8>)
{
  result = MessageIdentifierSet.RangeView.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_1B0DE8C3C(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1B0DE8CC8(v6, *a2, a3, v7);
  return sub_1B0DE8CC4;
}

void (*sub_1B0DE8CC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  v6 = type metadata accessor for MessageIdentifierRange(0, *(a3 + 16), *(a3 + 24), a4);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  MessageIdentifierSet.RangeView.subscript.getter(a3, v8);
  return sub_1B0DE8DA0;
}

uint64_t sub_1B0DE8DA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

uint64_t sub_1B0DE8EA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B0DE8F28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t sub_1B0DE8FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_1B0E46528() + 36);
  v7 = MessageIdentifierSet.RangeView.startIndex.getter();
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_1B0DE9088(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t MessageIdentifierSet.RangeView.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for MessageIdentifierSet(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v17 = a1;
  type metadata accessor for MessageIdentifierRange(255, a2, a3, v13);
  v14 = sub_1B0E45358();
  swift_getWitnessTable();
  MessageIdentifierSet.init<A>(_:)(&v17, a2, v14);
  MessageIdentifierSet.ranges.getter(a5);
  return (*(v10 + 8))(v12, v9);
}

uint64_t static MessageIdentifierSet.RangeView.== infix(_:_:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for MessageIdentifierSet.RangeView(0, a4, a5, a5);
  swift_getWitnessTable();
  type metadata accessor for MessageIdentifierRange(255, a4, a5, v7);
  swift_getWitnessTable();
  return sub_1B0E45088() & 1;
}

uint64_t sub_1B0DE9390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void), void (*a5)(char *, uint64_t, uint64_t))
{
  v9 = a4(0, a2, *(*(a3 + 48) + 8));
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v14 = type metadata accessor for MessageIdentifierRange(0, a2, a3, v13);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v19 - v16;
  (*(v10 + 16))(v12, a1, v9, v15);
  a5(v12, a2, a3);
  MessageIdentifierSet.init(_:)(v17, a2, a3);
  return (*(v10 + 8))(a1, v9);
}

uint64_t MessageIdentifierSet.writeIntoBuffer(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7890, &unk_1B0EF87F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29[-v9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0E46E68();
  v30 = *(a2 + 16);
  sub_1B0D730A0(&qword_1EB6DA2E8, MEMORY[0x1E69E7BC8]);
  if (sub_1B0E45698() < 1)
  {
    v15 = 0;
  }

  else
  {
    v11 = *(a1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, a1 + 8, v11);
    if (v13)
    {
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
    }

    v15 = result;
    v16 = *(a1 + 20);
    v17 = __CFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      goto LABEL_17;
    }

    *(a1 + 20) = v18;
  }

  v19 = (*(v8 + 16))(v6, v10, v7);
  MEMORY[0x1EEE9AC00](v19);
  *&v29[-48] = sub_1B0DECBE0;
  *&v29[-40] = v29;
  *&v29[-32] = a1;
  *&v29[-24] = v10;
  *&v29[-16] = 44;
  *&v29[-8] = 0xE100000000000000;
  v20 = sub_1B0DE58A8(0, sub_1B0DECBE8, &v29[-64]);
  result = sub_1B0398EFC(v6, &qword_1EB6E7890, &unk_1B0EF87F0);
  v21 = __OFADD__(v15, v20);
  v22 = v15 + v20;
  if (v21)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1B0E45698() < 1)
  {
    v28 = v22;
    goto LABEL_13;
  }

  v23 = *(a1 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, a1 + 8, v23);
  if (v24)
  {
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(a1 + 20);
  v17 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (!v17)
  {
    *(a1 + 20) = v27;
    v28 = v22 + result;
    if (!__OFADD__(v22, result))
    {
LABEL_13:
      (*(v8 + 8))(v10, v7);
      return v28;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B0DE9AD8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0E46E68();
  v7 = a2(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

void MessageIdentifierSet.index(_:offsetBy:)(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v21 = v3;
  if ((a3 & 0x8000000000000000) != 0)
  {
    v12 = __OFADD__(a2, a3);
    a2 += a3;
    if (v12)
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      a3 = (v8 + 8);
      while (a2 < 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0E46E68();
        v18 = sub_1B0E46E18();
        v19 = *a3;
        (*a3)(v10, v7);
        if (v18 >= a1)
        {
          break;
        }

        sub_1B0E46E68();
        v26 = --a1;
        sub_1B0D730A0(&qword_1EB6DA2E8, MEMORY[0x1E69E7BC8]);
        sub_1B0E45668();
        sub_1B0E456C8();
        v24 = v23;
        v25 = v22;
        sub_1B0E45688();
        v19(v10, v7);
        sub_1B0E46E68();
        sub_1B0E46E58();
        v19(v10, v7);
        v20 = HIDWORD(v24) - v24;
        v12 = __OFADD__(a2, v20);
        a2 += v20;
        if (v12)
        {
          __break(1u);
LABEL_26:
          if (__OFADD__(a2, a3))
          {
            __break(1u);
          }

          return;
        }
      }
    }
  }

  else
  {
    v11 = (v8 + 8);
    while (a3 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      sub_1B0E46E68();
      v14 = sub_1B0E46E28();
      v15 = *v11;
      (*v11)(v10, v7);
      if (a1 >= v14)
      {
        goto LABEL_26;
      }

      sub_1B0E46E68();
      sub_1B0E46E58();
      v15(v10, v7);
      if (__OFADD__(a2, a3))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (a3 + a2 < (HIDWORD(v24) - v24))
      {
        return;
      }

      sub_1B0E46E68();
      v26 = a1;
      sub_1B0D730A0(&qword_1EB6DA2E8, MEMORY[0x1E69E7BC8]);
      sub_1B0E45668();
      sub_1B0E456C8();
      v24 = v23;
      v25 = v22;
      sub_1B0E45688();
      v15(v10, v7);
      sub_1B0E46E68();
      sub_1B0E46E58();
      v15(v10, v7);
      v16 = HIDWORD(v24) - v24;
      if ((v16 ^ a2) < 0)
      {
        if (a2 >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = -a2;
        }

        if (v16 < 0)
        {
          v16 = v24 - HIDWORD(v24);
        }

        v13 = v16 + v17;
        if (v13 < 0)
        {
          goto LABEL_33;
        }

        if (a2 >= 0)
        {
          v13 = -v13;
        }
      }

      else
      {
        v12 = __OFSUB__(v16, a2);
        v13 = v16 - a2;
        if (v12)
        {
          goto LABEL_32;
        }
      }

      a2 = 0;
      ++a1;
      v12 = __OFSUB__(a3, v13);
      a3 = (a3 - v13);
      if (v12)
      {
        goto LABEL_31;
      }
    }
  }
}

void MessageIdentifierSet.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = a1 < a3;
  if (a1 == a3)
  {
    if ((a4 ^ a2) < 0)
    {
      goto LABEL_15;
    }

    v15 = a4 < a2;
    if (!__OFSUB__(a4, a2))
    {
      return;
    }

    __break(1u);
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v29 = v5;
    sub_1B0E46E68();
    sub_1B0E46E58();
    v16 = *(v12 + 8);
    v16(v14, v11);
    v17 = v31[1] - v31[0];
    v18 = __OFSUB__(v17, a2);
    v19 = v17 - a2;
    if (v18)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v27 = v16;
    v28 = v19;
    a2 = v29;
    sub_1B0E46E68();
    v32 = a1;
    sub_1B0D730A0(&qword_1EB6DA2E8, MEMORY[0x1E69E7BC8]);
    sub_1B0E45668();
    sub_1B0E456C8();
    *v31 = v30;
    sub_1B0E45688();
    v27(v14, v11);
    MessageIdentifierSet.distance(from:to:)(a1 + 1, 0, a3, a4, a5);
    if (!__OFADD__(v28, v20))
    {
      return;
    }

    __break(1u);
  }

  MessageIdentifierSet.distance(from:to:)(a3, a4, a1, a2, a5);
  if (!__OFSUB__(0, v21))
  {
    return;
  }

  __break(1u);
LABEL_15:
  if (a2 >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = -a2;
  }

  if (a4 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = -a4;
  }

  v24 = __CFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    goto LABEL_25;
  }

  if (v25 < 0)
  {
LABEL_26:
    __break(1u);
  }
}

uint64_t MessageIdentifierSet.subscript.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0E46E68();
  sub_1B0E46E58();
  (*(v7 + 8))(v9, v6);
  sub_1B0DE212C(v17, v10, *(a3 + 24), v14);
  v17 = a2;
  sub_1B0E45EC8();
  return (*(v11 + 8))(v14, v10);
}

uint64_t MessageIdentifierSet.count.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E72E0, &qword_1B0EF1360);
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0E46E68();
  v20 = v5;
  (*(v5 + 16))(v7, v10, v4);
  sub_1B0D730A0(&qword_1EB6DA2F0, MEMORY[0x1E69E7BB8]);
  sub_1B0E44F08();
  v11 = *(v1 + 44);
  sub_1B0D730A0(&qword_1EB6DA2E8, MEMORY[0x1E69E7BC8]);
  v12 = 0;
  while (1)
  {
    sub_1B0E456C8();
    if (*&v3[v11] == v21[0])
    {
      break;
    }

    v13 = sub_1B0E457B8();
    v16 = *v14;
    v15 = v14[1];
    v13(v21, 0);
    sub_1B0E456D8();
    v17 = __OFADD__(v12, v15 - v16);
    v12 += v15 - v16;
    if (v17)
    {
      __break(1u);
      break;
    }
  }

  sub_1B0398EFC(v3, &qword_1EB6E72E0, &qword_1B0EF1360);
  (*(v20 + 8))(v10, v4);
  return v12;
}

void sub_1B0DEA6DC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  MessageIdentifierSet.index(before:)(*a1, a1[1]);
  *a2 = v3;
  a2[1] = v4;
}

void sub_1B0DEA70C(uint64_t *a1)
{
  MessageIdentifierSet.index(before:)(*a1, a1[1]);
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B0DEA740@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MessageIdentifierSet.startIndex.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B0DEA768@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MessageIdentifierSet.endIndex.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1B0DEA790(void *a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1B0DEA818(v6, *a2, a2[1], a3);
  return sub_1B0DED120;
}

void (*sub_1B0DEA818(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  v7 = *(a4 + 16);
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  v9 = *(v8 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(v9);
  }

  a1[2] = v10;
  MessageIdentifierSet.subscript.getter(a3, a4, v10);
  return sub_1B0DED124;
}

uint64_t sub_1B0DEA8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_1B0E44898();
}

void sub_1B0DEA97C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  MessageIdentifierSet.index(after:)(*a1, a1[1]);
  *a2 = v3;
  a2[1] = v4;
}

void sub_1B0DEA9B0(uint64_t *a1)
{
  MessageIdentifierSet.index(after:)(*a1, a1[1]);
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B0DEA9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = sub_1B0E46528();
  v7 = (a2 + *(v6 + 36));
  v8 = MessageIdentifierSet.startIndex.getter(v6);
  v10 = v9;
  result = (*(v5 + 8))(v2, a1);
  *v7 = v8;
  v7[1] = v10;
  return result;
}

uint64_t sub_1B0DEAAD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1B0DEAB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1B0DECA48(v3, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v3, a1);
  return v6;
}

BOOL static MessageIdentifierSet.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return a2 < a4;
  }

  else
  {
    return a1 < a3;
  }
}

BOOL static MessageIdentifierSet.Index.> infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return a4 < a2;
  }

  else
  {
    return a3 < a1;
  }
}

uint64_t MessageIdentifierSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 24) + 56))(*(a2 + 16));
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    return sub_1B0E46EA8() & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0DEAD0C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  v18 = *(v8 + 16);
  v18(v13, v3, v7, v15);
  (v18)(v10, a1, v7);
  a2(v10, v7);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  return (*(*(v19 - 8) + 32))(a3, v17, v19);
}

BOOL MessageIdentifierSet.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MessageIdentifierSet.contains(_:)(a2, a3);
  v7 = *(a3 + 16);
  if ((v6 & 1) == 0)
  {
    v11 = sub_1B0DEC9B4(a2, *(a3 + 16), *(a3 + 24));
    if (HIDWORD(v11) != v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      v8 = sub_1B0E46E88();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      sub_1B0E46E38();
      v8(v10, 0);
    }
  }

  (*(*(v7 - 8) + 16))(a1, a2, v7);
  return (v6 & 1) == 0;
}

uint64_t MessageIdentifierSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (MessageIdentifierSet.contains(_:)(a1, a2))
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 16);
    sub_1B0DEC9B4(a1, v7, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0E46E78();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a3, a1, v7);
    return (*(v8 + 56))(a3, 0, 1, v7);
  }

  else
  {
    v10 = *(*(*(a2 + 16) - 8) + 56);

    return v10(a3, 1, 1);
  }
}

uint64_t MessageIdentifierSet.update(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MessageIdentifierSet.contains(_:)(a1, a2);
  v7 = *(a2 + 16);
  if (v6)
  {
    v11 = *(v7 - 8);
    (*(v11 + 16))(a3, a1, v7);
    v8 = *(v11 + 56);

    return v8(a3, 0, 1, v7);
  }

  else
  {
    v13 = sub_1B0DEC9B4(a1, *(a2 + 16), *(a2 + 24));
    if (HIDWORD(v13) != v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      v10 = sub_1B0E46E88();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      sub_1B0E46E38();
      v10(v12, 0);
    }

    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }
}

uint64_t MessageIdentifierSet.formIntersection(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);

  return MEMORY[0x1EEE6BA60](a1, v2);
}

uint64_t sub_1B0DEB32C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v5, v6);
  return a3(v8, v5);
}

uint64_t sub_1B0DEB428@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  (*(v14 + 16))(v9, v3, v7, v11);
  a2(a1, v7);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  return (*(*(v15 - 8) + 32))(a3, v13, v15);
}

uint64_t MessageIdentifierSet.isSubset(of:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);

  return sub_1B0E46EB8();
}

uint64_t MessageIdentifierSet.isSuperset(of:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);

  return MEMORY[0x1EEE6BA38](a1, v2);
}

uint64_t MessageIdentifierSet.subtract(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);

  return sub_1B0E46EC8();
}

uint64_t MessageIdentifierSet.isStrictSuperset(of:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);

  return MEMORY[0x1EEE6BA68](a1, v2);
}

uint64_t MessageIdentifierSet.isStrictSubset(of:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);

  return MEMORY[0x1EEE6BA58](a1, v2);
}

uint64_t sub_1B0DEB760(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(a1, a2, a3);
  v8 = *(*(a2 - 8) + 8);
  v8(v4, a2);

  return v8(a1, a2);
}

BOOL sub_1B0DEB7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MessageIdentifierSet.insert(_:)(a1, a2, a3);
  (*(*(*(a3 + 16) - 8) + 8))(a2);
  return v5;
}

uint64_t sub_1B0DEB864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MessageIdentifierSet.update(with:)(a1, a2, a3);
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t sub_1B0DEB904(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(a1, a2, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t sub_1B0DEB98C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(a1, a2, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(v4, a2);
}

void MessageIdentifierSet.suffix(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v108 = a3;
  v5 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v95 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v90 - v8;
  v9 = sub_1B0E45D88();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v104 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v90 - v12;
  v13 = *(a2 + 24);
  v14 = *(v13 + 48);
  v97 = *(v14 + 8);
  v15 = sub_1B0E44A08();
  v99 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v90 - v18;
  v19 = sub_1B0A63204();
  v101 = v14;
  v129 = v14;
  v130 = v19;
  v98 = v19;
  WitnessTable = swift_getWitnessTable();
  v124 = v15;
  v21 = a1;
  v105 = sub_1B0E46C08();
  v92 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v90 - v22;
  v123 = type metadata accessor for MessageIdentifierRange(0, v5, v13, v23);
  v113 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v91 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v117 = &v90 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v90 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v118 = v13;
  v119 = &v90 - v31;
  v33 = type metadata accessor for MessageIdentifierSet.RangeView(0, v5, v13, v32);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v90 - v35;
  v37 = swift_getWitnessTable();
  v38 = sub_1B0E46668();
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v90 - v39;
  v121 = v33;
  v112 = v37;
  v110 = sub_1B0E46658();
  MEMORY[0x1EEE9AC00](v110);
  v42 = &v90 - v41;
  v120 = a2;
  v109 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v116 = &v90 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v122 = &v90 - v47;
  if (v21 < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v102 = v46;
    sub_1B03D06F8();
    if (!v21)
    {
      sub_1B0E46EE8();
      return;
    }

    v114 = v5;
    sub_1B0E46EE8();
    MessageIdentifierSet.ranges.getter(v36);
    v48 = v121;
    MEMORY[0x1B27269E0](v121, v112);
    (*(v34 + 16))(v42, v40, v48);
    v49 = *(v110 + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v50 = sub_1B0E46E28();
    v115 = v49;
    *&v42[v49] = v50;
    (*(v34 + 8))(v40, v48);
    v51 = 0;
    v52 = (v113 + 4);
    v111 = (v113 + 2);
    v112 = (v109 + 8);
    ++v113;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      if (v50 == sub_1B0E46E18())
      {
        goto LABEL_16;
      }

      v128 = v50;
      v53 = v121;
      swift_getWitnessTable();
      v54 = v115;
      sub_1B0E45628();
      v50 = *&v42[v54];
      v55 = v119;
      MessageIdentifierSet.RangeView.subscript.getter(v53, v119);
      (*v52)(v29, v55, v123);
      v56 = sub_1B0E45718();
      if (__OFADD__(v51, v56))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v51 + v56 > v21)
      {
        break;
      }

      v57 = sub_1B0E45718();
      v58 = __OFADD__(v51, v57);
      v51 += v57;
      if (v58)
      {
        goto LABEL_19;
      }

      v59 = v117;
      v60 = WitnessTable;
      v61 = v21;
      v62 = v123;
      (*v111)(v117, v29, v123);
      v63 = v42;
      v64 = v29;
      v65 = v116;
      MessageIdentifierSet.init(_:)(v59, v114, v118);
      MessageIdentifierSet.formUnion(_:)(v65, v66);
      v67 = v65;
      v29 = v64;
      v42 = v63;
      (*v112)(v67, v120);
      v68 = v62;
      v21 = v61;
      WitnessTable = v60;
      (*v113)(v29, v68);
      if (v51 >= v21)
      {
        goto LABEL_16;
      }
    }

    if (__OFSUB__(v21, v51))
    {
      goto LABEL_21;
    }

    (*(v99 + 16))(v100, v29, v124);
    v126 = v101;
    v127 = v98;
    v69 = swift_getWitnessTable();
    sub_1B0E448A8();
    swift_getWitnessTable();
    v70 = v106;
    sub_1B0E45728();
    v71 = v114;
    v72 = *(v114 - 8);
    v73 = v72[6];
    if (v73(v70, 1, v114) == 1)
    {
      goto LABEL_23;
    }

    v125 = v69;
    swift_getWitnessTable();
    v74 = v104;
    sub_1B0E44888();
    if (v73(v74, 1, v71) == 1)
    {
      goto LABEL_24;
    }

    if (sub_1B0E44928())
    {
      v75 = v72[2];
      v76 = v93;
      v75(v93, v70, v71);
      v77 = TupleTypeMetadata2;
      v75(&v76[*(TupleTypeMetadata2 + 48)], v74, v71);
      v78 = v94;
      v79 = v95;
      (*(v94 + 16))(v95, v76, v77);
      v119 = *(v77 + 48);
      v121 = v72[4];
      v121(v103, v79, v71);
      v80 = v72[1];
      v80(&v79[v119], v71);
      (*(v78 + 32))(v79, v76, v77);
      v81 = v103;
      v121(&v103[*(v124 + 36)], &v79[*(v77 + 48)], v71);
      v80(v79, v71);
      v80(v104, v71);
      v80(v106, v71);
      v82 = v91;
      v83 = v81;
      v84 = v118;
      MessageIdentifierRange.init(_:)(v83, v91);
      v85 = v117;
      v86 = v123;
      (*v111)(v117, v82, v123);
      v87 = v116;
      MessageIdentifierSet.init(_:)(v85, v71, v84);
      MessageIdentifierSet.formUnion(_:)(v87, v88);
      (*v112)(v87, v120);
      v89 = *v113;
      (*v113)(v82, v86);
      (*(v92 + 8))(v107, v105);
      v89(v29, v86);
LABEL_16:
      (*(v102 + 8))(v42, v110);
      (*(v109 + 32))(v108, v122, v120);
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_1B0DEC6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1B0DEC764(unint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v7 = type metadata accessor for MessageIdentifierRange(0, a3, a4, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  sub_1B0DE7E4C(*a1, a3, a4, &v13 - v9);
  v11 = sub_1B0DE338C(v10, 0, a3, a4);
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_1B0DEC874@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1B0E228C8(*a1, *a2, a2[1], a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1B0DEC8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1B0E44928();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0DEC9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  result = v5(a2, a3);
  v7 = (result - 1);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = v5(a2, a3);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 <= result)
  {
    return v7 | (result << 32);
  }

LABEL_7:
  __break(1u);
  return result;
}