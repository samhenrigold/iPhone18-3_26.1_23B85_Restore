uint64_t sub_1B7C92F38(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA53200, &qword_1B7D10890);
  v6 = off_1F2FA8A90;
  off_1F2FA8A90(*(a2 + 16), 0, (v20 + *(v5 + 32)));
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = v2;
    *(v7 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v22 = a1;
    v9 = sub_1B7C107FC(&qword_1EBA53200, &qword_1B7D10890);
    v6(*(a2 + 16), 1, (v20 + *(v9 + 48)));
    v10 = sub_1B7C107FC(&qword_1EBA53200, &qword_1B7D10890);
    v6(*(a2 + 16), 2, (v20 + *(v10 + 64)));
    v11 = sub_1B7C107FC(&qword_1EBA53200, &qword_1B7D10890);
    off_1F2FA8B70((v20 + *(v11 + 80)), *(a2 + 16), 3);
    v18 = v20[1];
    v19 = v20[0];
    v12 = v21;
    v13 = v22;
    v14 = *v22;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA1F34(0, v14[2] + 1, 1, v14);
      v14 = result;
      *v13 = result;
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_1B7CA1F34((v15 > 1), v16 + 1, 1, v14);
      v14 = result;
      *v13 = result;
    }

    v14[2] = v16 + 1;
    v17 = &v14[5 * v16];
    *(v17 + 2) = v19;
    *(v17 + 3) = v18;
    v17[8] = v12;
  }

  return result;
}

uint64_t sub_1B7C9328C(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA531D8, &unk_1B7D10860);
  v6 = off_1F2FA8B70;
  off_1F2FA8B70((v21 + *(v5 + 32)), *(a2 + 16), 0);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v8 = 1;
    *(v8 + 8) = v2;
    *(v8 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v7 = sub_1B7C107FC(&qword_1EBA531D8, &unk_1B7D10860);
    v6(*(a2 + 16), 1, (v21 + *(v7 + 48)));
    v10 = v21[0];
    v11 = v21[1];
    v12 = v21[2];
    v13 = v21[3];
    v14 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA1F58(0, v14[2] + 1, 1, v14);
      v14 = result;
      *a1 = result;
    }

    v15 = v14[2];
    v16 = v14[3];
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v19 = v14;
      v20 = v14[2];
      result = sub_1B7CA1F58((v16 > 1), v15 + 1, 1, v19);
      v15 = v20;
      v14 = result;
      *a1 = result;
    }

    v14[2] = v17;
    v18 = &v14[4 * v15];
    v18[4] = v10;
    v18[5] = v11;
    v18[6] = v12;
    v18[7] = v13;
  }

  return result;
}

uint64_t sub_1B7C934A0(uint64_t *a1, uint64_t a2)
{
  sub_1B7C107FC(&qword_1EBA531F8, &qword_1B7D10888);
  v5 = off_1F2FA8AB0;
  off_1F2FA8AB0(*(a2 + 16), 0);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v6 = 1;
    *(v6 + 8) = v2;
    *(v6 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v23 = a1;
    v8 = sub_1B7C107FC(&qword_1EBA531F8, &qword_1B7D10888);
    v5(*(a2 + 16), 1, (v21 + *(v8 + 48)));
    v9 = sub_1B7C107FC(&qword_1EBA531F8, &qword_1B7D10888);
    v5(*(a2 + 16), 2, (v21 + *(v9 + 64)));
    v10 = sub_1B7C107FC(&qword_1EBA531F8, &qword_1B7D10888);
    v11 = off_1F2FA8A10;
    off_1F2FA8A10(*(a2 + 16), 3, (v21 + *(v10 + 80)));
    v12 = sub_1B7C107FC(&qword_1EBA531F8, &qword_1B7D10888);
    v11(*(a2 + 16), 4, (v21 + *(v12 + 96)));
    v19 = v21[1];
    v20 = v21[0];
    v13 = v22;
    v14 = v23;
    v15 = *v23;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA2518(0, *(v15 + 16) + 1, 1, v15);
      v15 = result;
      *v14 = result;
    }

    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_1B7CA2518((v16 > 1), v17 + 1, 1, v15);
      v15 = result;
      *v14 = result;
    }

    *(v15 + 16) = v17 + 1;
    v18 = v15 + 40 * v17;
    *(v18 + 32) = v20;
    *(v18 + 48) = v19;
    *(v18 + 64) = v13;
  }

  return result;
}

uint64_t sub_1B7C93948(uint64_t *a1, uint64_t a2)
{
  off_1F2FA8B90(&v10, *(a2 + 16), 0);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = v2;
    *(v4 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v9 = v10;
    v6 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v6;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA28E4(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
      *a1 = result;
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      result = sub_1B7CA28E4((v7 > 1), v8 + 1, 1, v6);
      v6 = result;
      *a1 = result;
    }

    *(v6 + 16) = v8 + 1;
    *(v6 + 16 * v8 + 32) = v9;
  }

  return result;
}

uint64_t sub_1B7C93A84(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA531F0, &qword_1B7D10880);
  v6 = off_1F2FA8B70;
  off_1F2FA8B70((v23 + *(v5 + 32)), *(a2 + 16), 0);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = v2;
    *(v7 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v9 = sub_1B7C107FC(&qword_1EBA531F0, &qword_1B7D10880);
    v6(*(a2 + 16), 1, (v23 + *(v9 + 48)));
    v10 = sub_1B7C107FC(&qword_1EBA531F0, &qword_1B7D10880);
    off_1F2FA89F0(*(a2 + 16), 2, v23 + *(v10 + 64));
    v11 = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
    v12 = sub_1B7C1547C();
    sub_1B7C107FC(&qword_1EBA531F0, &qword_1B7D10880);
    (*(v12 + 24))(*(a2 + 16), 3, v11, v12);
    v13 = v23[1];
    v27 = v23[0];
    v14 = v23[2];
    v15 = v23[3];
    v16 = v24;
    v21 = v26;
    v22 = v25;
    v17 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v17;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA2D58(0, v17[2] + 1, 1, v17);
      v17 = result;
      *a1 = result;
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      result = sub_1B7CA2D58((v18 > 1), v19 + 1, 1, v17);
      v17 = result;
      *a1 = result;
    }

    v17[2] = v19 + 1;
    v20 = &v17[7 * v19];
    v20[4] = v27;
    v20[5] = v13;
    v20[6] = v14;
    v20[7] = v15;
    *(v20 + 64) = v16;
    v20[9] = v22;
    v20[10] = v21;
  }

  return result;
}

uint64_t sub_1B7C93E7C(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA531E8, &qword_1B7D11410);
  off_1F2FA8B70((v21 + *(v5 + 32)), *(a2 + 16), 0);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v8 = 1;
    *(v8 + 8) = v2;
    *(v8 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v6 = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
    v7 = sub_1B7C1547C();
    sub_1B7C107FC(&qword_1EBA531E8, &qword_1B7D11410);
    (*(v7 + 24))(*(a2 + 16), 1, v6, v7);
    v10 = v21[0];
    v11 = v21[1];
    v12 = v21[2];
    v13 = v21[3];
    v14 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA3478(0, v14[2] + 1, 1, v14);
      v14 = result;
      *a1 = result;
    }

    v15 = v14[2];
    v16 = v14[3];
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v19 = v14;
      v20 = v14[2];
      result = sub_1B7CA3478((v16 > 1), v15 + 1, 1, v19);
      v15 = v20;
      v14 = result;
      *a1 = result;
    }

    v14[2] = v17;
    v18 = &v14[4 * v15];
    v18[4] = v10;
    v18[5] = v11;
    v18[6] = v12;
    v18[7] = v13;
  }

  return result;
}

uint64_t sub_1B7C940A8(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C1547C();
  v6 = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
  sub_1B7C107FC(&qword_1EBA531E0, &unk_1B7D10870);
  v7 = *(v5 + 24);
  v7(*(a2 + 16), 0, v6, v5);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v9 = 1;
    *(v9 + 8) = v2;
    *(v9 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v8 = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
    sub_1B7C107FC(&qword_1EBA531E0, &unk_1B7D10870);
    v7(*(a2 + 16), 1, v8, v5);
    v11 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v11;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA35AC(0, v11[2] + 1, 1, v11);
      v11 = result;
      *a1 = result;
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      result = sub_1B7CA35AC((v12 > 1), v13 + 1, 1, v11);
      v11 = result;
      *a1 = result;
    }

    v11[2] = v13 + 1;
    v14 = &v11[4 * v13];
    *(v14 + 2) = v15;
    *(v14 + 3) = v16;
  }

  return result;
}

void sub_1B7C942E8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a2 + 16);
  v9 = sqlite3_db_handle(v8);
  if (!v9)
  {
    sub_1B7C95194();
    swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0;
    *(v20 + 56) = 4;
LABEL_18:
    swift_willThrow();
    goto LABEL_19;
  }

  v30 = v9;
  sub_1B7AEA57C(a1);
  if (v4)
  {
LABEL_19:

    return;
  }

  v29 = a4;
  v10 = 0;
  while (1)
  {
    v11 = sqlite3_step(v8);
    if (v11 != 100)
    {
      break;
    }

    if (__OFADD__(v10++, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = sqlite3_column_count(v8);
    if (v13 < 0)
    {
      goto LABEL_25;
    }

    v14 = v13;
    if (v13)
    {
      v15 = sub_1B7CA2FB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v16 = 0;
      do
      {
        v18 = *(v15 + 2);
        v17 = *(v15 + 3);
        if (v18 >= v17 >> 1)
        {
          v15 = sub_1B7CA2FB4((v17 > 1), v18 + 1, 1, v15);
        }

        v19 = &v15[16 * v18];
        *(v19 + 4) = v8;
        *(v19 + 5) = v16;
        *(v15 + 2) = v18 + 1;
        ++v16;
      }

      while (v14 != v16);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    sub_1B7C14214(v15);
    MEMORY[0x1B8CADDF0]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7CFED00();
    }

    sub_1B7CFED40();
  }

  if (v11 == 101)
  {
    sqlite3_reset(v8);

    return;
  }

  sub_1B7C95194();
  swift_allocError();
  v22 = v21;
  a4 = v29;
  if (sqlite3_errmsg(v30))
  {
    v23 = sub_1B7CFEB70();
    v25 = v24;
    v26 = sqlite3_extended_errcode(v30);
    sub_1B7C951E8();
    v27 = swift_allocError();
    *v28 = v26;
    v28[1] = v23;
    v28[2] = v25;
    *v22 = v27;
    *(v22 + 56) = 3;
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1B7C945B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 16);
  v7 = sqlite3_db_handle(v6);
  if (v7)
  {
    v8 = v7;
    result = sub_1B7AEA57C(a1);
    if (!v3)
    {
      v27 = v8;
      v10 = 0;
      while (1)
      {
        result = sqlite3_step(v6);
        if (result != 100)
        {
          break;
        }

        if (__OFADD__(v10++, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        result = sqlite3_column_count(v6);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        v12 = result;
        if (result)
        {
          v13 = sub_1B7CA2FB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v14 = 0;
          do
          {
            v16 = *(v13 + 2);
            v15 = *(v13 + 3);
            if (v16 >= v15 >> 1)
            {
              v13 = sub_1B7CA2FB4((v15 > 1), v16 + 1, 1, v13);
            }

            v17 = &v13[16 * v16];
            *(v17 + 4) = v6;
            *(v17 + 5) = v14;
            *(v13 + 2) = v16 + 1;
            ++v14;
          }

          while (v12 != v14);
        }

        else
        {
          v13 = MEMORY[0x1E69E7CC0];
        }

        sub_1B7C92120(v13, a3);
      }

      if (result == 101)
      {
        return sqlite3_reset(v6);
      }

      sub_1B7C95194();
      swift_allocError();
      v20 = v19;
      result = sqlite3_errmsg(v27);
      if (result)
      {
        v21 = sub_1B7CFEB70();
        v23 = v22;
        v24 = sqlite3_extended_errcode(v27);
        sub_1B7C951E8();
        v25 = swift_allocError();
        *v26 = v24;
        v26[1] = v21;
        v26[2] = v23;
        *v20 = v25;
        *(v20 + 56) = 3;
        return swift_willThrow();
      }

LABEL_24:
      __break(1u);
    }
  }

  else
  {
    sub_1B7C95194();
    swift_allocError();
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0;
    *(v18 + 56) = 4;
    return swift_willThrow();
  }

  return result;
}

void sub_1B7C94814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = *(a2 + 16);
  v9 = sqlite3_db_handle(v8);
  if (!v9)
  {
    sub_1B7C95194();
    swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0;
    *(v20 + 56) = 4;
LABEL_16:
    swift_willThrow();
    goto LABEL_17;
  }

  v29 = v9;
  sub_1B7AEA57C(a1);
  if (v5)
  {
LABEL_17:

    return;
  }

  v10 = 0;
  while (1)
  {
    v11 = sqlite3_step(v8);
    if (v11 != 100)
    {
      break;
    }

    if (__OFADD__(v10++, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v13 = sqlite3_column_count(v8);
    if (v13 < 0)
    {
      goto LABEL_23;
    }

    v14 = v13;
    if (v13)
    {
      v15 = sub_1B7CA2FB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v16 = 0;
      do
      {
        v18 = *(v15 + 2);
        v17 = *(v15 + 3);
        if (v18 >= v17 >> 1)
        {
          v15 = sub_1B7CA2FB4((v17 > 1), v18 + 1, 1, v15);
        }

        v19 = &v15[16 * v18];
        *(v19 + 4) = v8;
        *(v19 + 5) = v16;
        *(v15 + 2) = v18 + 1;
        ++v16;
      }

      while (v14 != v16);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    sub_1B7C91C00(v15, a3, a4, a5);
  }

  if (v11 == 101)
  {
    sqlite3_reset(v8);
    goto LABEL_17;
  }

  sub_1B7C95194();
  swift_allocError();
  v22 = v21;
  if (sqlite3_errmsg(v29))
  {
    v23 = sub_1B7CFEB70();
    v25 = v24;
    v26 = sqlite3_extended_errcode(v29);
    sub_1B7C951E8();
    v27 = swift_allocError();
    *v28 = v26;
    v28[1] = v23;
    v28[2] = v25;
    *v22 = v27;
    *(v22 + 56) = 3;
    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
}

void sub_1B7C94A8C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a2 + 16);
  v9 = sqlite3_db_handle(v8);
  if (!v9)
  {
    sub_1B7C95194();
    swift_allocError();
    *v22 = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *(v22 + 48) = 0;
    *(v22 + 56) = 4;
LABEL_20:
    swift_willThrow();
    goto LABEL_21;
  }

  v32 = v9;
  sub_1B7AEA57C(a1);
  if (v4)
  {
LABEL_21:

    return;
  }

  v31 = a3;
  v10 = 0;
  while (1)
  {
    v11 = sqlite3_step(v8);
    if (v11 != 100)
    {
      break;
    }

    if (__OFADD__(v10++, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 = sqlite3_column_count(v8);
    if (v13 < 0)
    {
      goto LABEL_27;
    }

    v14 = v13;
    if (v13)
    {
      v15 = sub_1B7CA2FB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v16 = 0;
      do
      {
        v18 = *(v15 + 2);
        v17 = *(v15 + 3);
        if (v18 >= v17 >> 1)
        {
          v15 = sub_1B7CA2FB4((v17 > 1), v18 + 1, 1, v15);
        }

        v19 = &v15[16 * v18];
        *(v19 + 4) = v8;
        *(v19 + 5) = v16;
        *(v15 + 2) = v18 + 1;
        ++v16;
      }

      while (v14 != v16);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v20 = sub_1B7C3AA1C(v15);
    if (v20)
    {
      v21 = v20;
      MEMORY[0x1B8CADDF0]();
      if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7CFED00();
      }

      sub_1B7CFED40();
    }

    else
    {
    }
  }

  if (v11 == 101)
  {
    sqlite3_reset(v8);

    return;
  }

  sub_1B7C95194();
  swift_allocError();
  v24 = v23;
  a3 = v31;
  if (sqlite3_errmsg(v32))
  {
    v25 = sub_1B7CFEB70();
    v27 = v26;
    v28 = sqlite3_extended_errcode(v32);
    sub_1B7C951E8();
    v29 = swift_allocError();
    *v30 = v28;
    v30[1] = v25;
    v30[2] = v27;
    *v24 = v29;
    *(v24 + 56) = 3;
    goto LABEL_20;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1B7C94D70(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = *(a2 + 16);
  v8 = sqlite3_db_handle(v7);
  if (v8)
  {
    v9 = v8;
    result = sub_1B7AEA57C(a1);
    if (!v4)
    {
      v28 = v9;
      v11 = 0;
      while (1)
      {
        result = sqlite3_step(v7);
        if (result != 100)
        {
          break;
        }

        if (__OFADD__(v11++, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        result = sqlite3_column_count(v7);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        v13 = result;
        if (result)
        {
          v14 = sub_1B7CA2FB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v15 = 0;
          do
          {
            v17 = *(v14 + 2);
            v16 = *(v14 + 3);
            if (v17 >= v16 >> 1)
            {
              v14 = sub_1B7CA2FB4((v16 > 1), v17 + 1, 1, v14);
            }

            v18 = &v14[16 * v17];
            *(v18 + 4) = v7;
            *(v18 + 5) = v15;
            *(v14 + 2) = v17 + 1;
            ++v15;
          }

          while (v13 != v15);
        }

        else
        {
          v14 = MEMORY[0x1E69E7CC0];
        }

        sub_1B7C1EC88(v14, a3, a4);
      }

      if (result == 101)
      {
        return sqlite3_reset(v7);
      }

      sub_1B7C95194();
      swift_allocError();
      v21 = v20;
      result = sqlite3_errmsg(v28);
      if (result)
      {
        v22 = sub_1B7CFEB70();
        v24 = v23;
        v25 = sqlite3_extended_errcode(v28);
        sub_1B7C951E8();
        v26 = swift_allocError();
        *v27 = v25;
        v27[1] = v22;
        v27[2] = v24;
        *v21 = v26;
        *(v21 + 56) = 3;
        return swift_willThrow();
      }

LABEL_24:
      __break(1u);
    }
  }

  else
  {
    sub_1B7C95194();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0;
    *(v19 + 56) = 4;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B7C95194()
{
  result = qword_1EBA531B0;
  if (!qword_1EBA531B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA531B0);
  }

  return result;
}

unint64_t sub_1B7C951E8()
{
  result = qword_1EBA531B8;
  if (!qword_1EBA531B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA531B8);
  }

  return result;
}

uint64_t sub_1B7C9523C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v75 = a4;
  v14 = sub_1B7CFE7C0();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v80 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1B7CFE6C0();
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v79 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v68 - v18;
  v20 = *(a2 + 16);
  v21 = sqlite3_db_handle(v20);
  if (!v21)
  {
    sub_1B7C95194();
    swift_allocError();
    *v56 = 0u;
    *(v56 + 16) = 0u;
    *(v56 + 32) = 0u;
    *(v56 + 48) = 0;
    *(v56 + 56) = 4;
LABEL_27:
    swift_willThrow();
  }

  v81 = v19;
  v68[0] = v21;
  sub_1B7AEA57C(a1);
  v22 = v7;
  if (v7)
  {
  }

  v72 = a5;
  v73 = a3;
  result = sqlite3_step(v20);
  v24 = 0;
  v68[2] = (v76 + 1);
  v69 = v76 + 2;
  v68[1] = (v76 + 4);
  v70 = a6;
  v71 = a7;
  if (result == 100)
  {
    while (1)
    {
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      result = sqlite3_column_count(v20);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_35;
      }

      v27 = result;
      v85 = v22;
      v77 = v26;
      if (result)
      {
        v28 = sub_1B7CA2FB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v29 = 0;
        do
        {
          v31 = *(v28 + 2);
          v30 = *(v28 + 3);
          if (v31 >= v30 >> 1)
          {
            v28 = sub_1B7CA2FB4((v30 > 1), v31 + 1, 1, v28);
          }

          v32 = &v28[16 * v31];
          *(v32 + 4) = v20;
          *(v32 + 5) = v29;
          *(v28 + 2) = v31 + 1;
          ++v29;
        }

        while (v27 != v29);
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      v33 = sub_1B7CFE880();
      v35 = v34;
      v36 = *(a6 + 24);
      v78 = *(a6 + 16);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v37 = v72;
      swift_bridgeObjectRetain_n();
      v38 = v73;
      swift_retain_n();

      v39 = MEMORY[0x1E69E7CC0];
      v40 = sub_1B7C249D0(MEMORY[0x1E69E7CC0]);
      v83 = &type metadata for SQLEntityResultDecoder.RowDecoder;
      v84 = sub_1B7C95B1C();
      v41 = swift_allocObject();
      v82 = v41;
      v41[2] = v33;
      v41[3] = v35;
      v41[4] = v28;
      v41[5] = v38;
      v42 = v78;
      v41[6] = v37;
      v41[7] = v42;
      v41[8] = v36;
      v41[9] = v39;
      v41[10] = v40;
      sub_1B7C95B70();
      v43 = v74;
      v44 = v85;
      sub_1B7CFEDF0();
      v85 = v44;
      if (v44)
      {

        swift_bridgeObjectRelease_n();

        sub_1B7C95194();
        swift_allocError();
        v66 = v85;
        *v67 = v77;
        *(v67 + 8) = v66;
        *(v67 + 56) = 1;
        swift_willThrow();
      }

      result = sub_1B7CFE6B0();
      if (!*(v28 + 2))
      {
        goto LABEL_36;
      }

      v45 = *(v28 + 5);
      if (v45 < 0xFFFFFFFF80000000)
      {
        goto LABEL_37;
      }

      if (v45 > 0x7FFFFFFF)
      {
        goto LABEL_38;
      }

      v46 = *(v28 + 4);
      v47 = sqlite3_column_type(v46, *(v28 + 5));
      if (v47 == 5)
      {
        v48 = 0;
      }

      else
      {
        v48 = sqlite3_column_int64(v46, v45);
      }

      a6 = v70;
      v49 = v71;
      v22 = v85;
      swift_beginAccess();
      sub_1B7CE0B50(v48, v47 == 5, v80);
      swift_endAccess();
      (*v69)(v79, v81, v43);
      v50 = *v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v49 = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v50 = sub_1B7CA3428(0, *(v50 + 2) + 1, 1, v50);
        *v49 = v50;
      }

      v53 = *(v50 + 2);
      v52 = *(v50 + 3);
      if (v53 >= v52 >> 1)
      {
        *v49 = sub_1B7CA3428((v52 > 1), v53 + 1, 1, v50);
      }

      v54 = v76;
      (v76[1])(v81, v43);
      v55 = *v49;
      *(v55 + 2) = v53 + 1;
      v54[4](&v55[((*(v54 + 80) + 32) & ~*(v54 + 80)) + v54[9] * v53], v79, v43);

      result = sqlite3_step(v20);
      v24 = v77;
      if (result != 100)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_29:
  if (result == 101)
  {
    sqlite3_reset(v20);
  }

  sub_1B7C95194();
  swift_allocError();
  v58 = v57;
  v59 = v68[0];
  result = sqlite3_errmsg(v68[0]);
  if (result)
  {
    v60 = sub_1B7CFEB70();
    v62 = v61;
    v63 = sqlite3_extended_errcode(v59);
    sub_1B7C951E8();
    v64 = swift_allocError();
    *v65 = v63;
    v65[1] = v60;
    v65[2] = v62;
    *v58 = v64;
    *(v58 + 56) = 3;
    goto LABEL_27;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1B7C958A4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v8 = *(a2 + 16);
  v9 = sqlite3_db_handle(v8);
  if (!v9)
  {
    sub_1B7C95194();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0;
    *(v19 + 56) = 4;
LABEL_16:
    swift_willThrow();
  }

  v28 = v9;
  sub_1B7AEA57C(a1);
  if (v5)
  {
  }

  v10 = 0;
  while (1)
  {
    result = sqlite3_step(v8);
    if (result != 100)
    {
      break;
    }

    if (__OFADD__(v10++, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    result = sqlite3_column_count(v8);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_23;
    }

    v13 = result;
    if (result)
    {
      v14 = sub_1B7CA2FB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = 0;
      do
      {
        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        if (v17 >= v16 >> 1)
        {
          v14 = sub_1B7CA2FB4((v16 > 1), v17 + 1, 1, v14);
        }

        v18 = &v14[16 * v17];
        *(v18 + 4) = v8;
        *(v18 + 5) = v15;
        *(v14 + 2) = v17 + 1;
        ++v15;
      }

      while (v13 != v15);
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    sub_1B7CAFBE0(v14, a3, a4, a5);
  }

  if (result == 101)
  {
    sqlite3_reset(v8);
  }

  sub_1B7C95194();
  swift_allocError();
  v21 = v20;
  result = sqlite3_errmsg(v28);
  if (result)
  {
    v22 = sub_1B7CFEB70();
    v24 = v23;
    v25 = sqlite3_extended_errcode(v28);
    sub_1B7C951E8();
    v26 = swift_allocError();
    *v27 = v25;
    v27[1] = v22;
    v27[2] = v24;
    *v21 = v26;
    *(v21 + 56) = 3;
    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1B7C95B1C()
{
  result = qword_1EBA531C8;
  if (!qword_1EBA531C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA531C8);
  }

  return result;
}

unint64_t sub_1B7C95B70()
{
  result = qword_1EBA531D0;
  if (!qword_1EBA531D0)
  {
    sub_1B7CFE6C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA531D0);
  }

  return result;
}

uint64_t sub_1B7C95BC8(uint64_t a1)
{
  if ((*(a1 + 56) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 56) & 7;
  }
}

__n128 sub_1B7C95BE4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B7C95C00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7C95C3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B7C95C8C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_1B7C95CE0()
{
  v1 = (v0 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile____lazy_storage___path);
  if (*(v0 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile____lazy_storage___path + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_1B7CFDFC0();
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_1B7C95D64()
{
  v1 = v0;
  v2 = sub_1B7CFE420();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B7C962FC();
  v3 = OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL;
  v4 = sub_1B7CFDFF0();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return v1;
}

uint64_t sub_1B7C96054()
{
  sub_1B7C95D64();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StorageInspectorReportFile(uint64_t a1)
{
  result = qword_1EBA53220;
  if (!qword_1EBA53220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7C96100(uint64_t a1)
{
  result = sub_1B7CFDFF0();
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

id sub_1B7C961A4(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B7CFDF40();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1B7CFDFF0();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1B7CFDEC0();

    swift_willThrow();
    v9 = sub_1B7CFDFF0();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

void sub_1B7C962FC()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1B7CFE420();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle;
  v6 = *(v0 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle);
  if (v6)
  {
    v28[0] = 0;
    v7 = v6;
    if ([v7 closeAndReturnError_])
    {
      v8 = v28[0];

      v9 = *(v0 + v5);
      *(v0 + v5) = 0;
    }

    else
    {
      v10 = v28[0];
      v11 = sub_1B7CFDEC0();

      swift_willThrow();
      sub_1B7CFE410();

      v12 = v11;
      v13 = sub_1B7CFE400();
      v14 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v26 = v14;
        v16 = v15;
        v25 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28[0] = v27;
        *v16 = 136315394;
        v17 = sub_1B7C95CE0();
        v19 = sub_1B7AED1B8(v17, v18, v28);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2112;
        v20 = v11;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 14) = v21;
        v22 = v25;
        *v25 = v21;
        _os_log_impl(&dword_1B7AD5000, v13, v26, "Error closing report file %s: %@", v16, 0x16u);
        sub_1B7C20434(v22);
        MEMORY[0x1B8CB0E70](v22, -1, -1);
        v23 = v27;
        sub_1B7AE9168(v27);
        MEMORY[0x1B8CB0E70](v23, -1, -1);
        MEMORY[0x1B8CB0E70](v16, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      swift_willThrow();
    }
  }
}

uint64_t sub_1B7C965F8()
{
  v15[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1B7CFDFF0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFDF80();
  sub_1B7CFDFC0();
  LOBYTE(v15[0]) = 0;
  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  v6 = sub_1B7CFEA30();

  v7 = [v5 fileExistsAtPath:v6 isDirectory:v15];

  if (!v7 || (v15[0] & 1) == 0)
  {
    v8 = [v4 defaultManager];
    v9 = sub_1B7CFDF40();
    v15[0] = 0;
    v10 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:v15];

    if (v10)
    {
      v11 = *(v1 + 8);
      v12 = v15[0];
      return v11(v3, v0);
    }

    v14 = v15[0];
    sub_1B7CFDEC0();

    swift_willThrow();
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1B7C96838()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1B7C965F8();
  if (!v0)
  {
    sub_1B7CFDFC0();
    v7 = 0;
    v1 = objc_opt_self();
    v2 = [v1 defaultManager];
    v3 = sub_1B7CFEA30();

    v4 = [v2 fileExistsAtPath:v3 isDirectory:&v7];

    if ((v4 & 1) == 0)
    {
      v5 = [v1 defaultManager];
      sub_1B7C95CE0();
      v6 = sub_1B7CFEA30();

      [v5 createFileAtPath:v6 contents:0 attributes:0];
    }
  }
}

void sub_1B7C96998(uint64_t a1)
{
  v42 = a1;
  v3 = sub_1B7CFE420();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B7CFEAA0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7CFDFF0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C96838();
  if (v2)
  {
    v13 = 0;
    v14 = v46;
    sub_1B7CFE410();

    v26 = v2;
    v27 = sub_1B7CFE400();
    v28 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = 0;
      v32 = v31;
      v45[0] = v31;
      *v29 = 136315394;
      v33 = sub_1B7C95CE0();
      v35 = sub_1B7AED1B8(v33, v34, v45);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2112;
      v36 = v2;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v37;
      *v30 = v37;
      _os_log_impl(&dword_1B7AD5000, v27, v28, "Error appending to report file %s: %@", v29, 0x16u);
      sub_1B7C20434(v30);
      MEMORY[0x1B8CB0E70](v30, -1, -1);
      sub_1B7AE9168(v32);
      v38 = v32;
      v13 = v42;
      MEMORY[0x1B8CB0E70](v38, -1, -1);
      MEMORY[0x1B8CB0E70](v29, -1, -1);

      (*(v43 + 8))(v46, v44);
    }

    else
    {

      (*(v43 + 8))(v14, v44);
    }

    sub_1B7C962FC();
    if (v13)
    {
    }

    else
    {
      swift_willThrow();
    }
  }

  else
  {
    v40 = v6;
    v15 = v42;
    v41 = OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle;
    if (*(v1 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle))
    {
      v16 = v5;
    }

    else
    {
      sub_1B7C203E8();
      (*(v10 + 16))(v12, v1 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v9);
      v23 = sub_1B7C961A4(v12);
      v16 = v5;
      v24 = *(v1 + v41);
      *(v1 + v41) = v23;
    }

    v45[0] = v15;
    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    sub_1B7AF7FAC();
    v45[0] = sub_1B7CFEA10();
    v45[1] = v17;

    MEMORY[0x1B8CADCA0](10, 0xE100000000000000);

    sub_1B7CFEA90();
    v18 = sub_1B7CFEA70();
    v20 = v19;
    (*(v40 + 8))(v8, v16);
    if (v20 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {

      v21 = *(v1 + v41);
      if (v21)
      {
        v22 = v21;
        sub_1B7CFEEA0();
        v25 = sub_1B7CFE010();
        [v22 writeData_];
      }

      sub_1B7C962FC();
      sub_1B7C2049C(v18, v20);
    }
  }
}

uint64_t sub_1B7C96F08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v50 = a4;
  v54 = a3;
  v7 = sub_1B7CFE420();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7CFEAA0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B7CFDFF0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C96838();
  if (v4)
  {
    v17 = 0;
    v18 = v56;
    sub_1B7CFE410();

    v33 = v4;
    v34 = sub_1B7CFE400();
    v35 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v54 = 0;
      v37 = v36;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53 = a2;
      v40 = v39;
      v55[0] = v39;
      *v37 = 136315394;
      v41 = sub_1B7C95CE0();
      v43 = sub_1B7AED1B8(v41, v42, v55);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2112;
      v44 = v4;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v45;
      *v38 = v45;
      _os_log_impl(&dword_1B7AD5000, v34, v35, "Error appending to report file %s: %@", v37, 0x16u);
      sub_1B7C20434(v38);
      MEMORY[0x1B8CB0E70](v38, -1, -1);
      sub_1B7AE9168(v40);
      MEMORY[0x1B8CB0E70](v40, -1, -1);
      v46 = v37;
      v17 = v54;
      MEMORY[0x1B8CB0E70](v46, -1, -1);

      (*(v51 + 8))(v56, v52);
    }

    else
    {

      (*(v51 + 8))(v18, v52);
    }

    sub_1B7C962FC();
    if (v17)
    {
    }

    else
    {
      swift_willThrow();
    }
  }

  else
  {
    v47 = v10;
    v48 = v9;
    v49 = OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle;
    v19 = a1;
    if (!*(a1 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle))
    {
      sub_1B7C203E8();
      (*(v14 + 16))(v16, a1 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v13);
      v31 = sub_1B7C961A4(v16);
      v32 = *(a1 + v49);
      *(a1 + v49) = v31;
    }

    v20 = v50;
    v21 = sub_1B7CDF584(a2, v54, v50);
    v53 = a2;
    v22 = (v47 + 8);
    while (1)
    {
      if (!v21)
      {
        goto LABEL_14;
      }

      if (!*(v21 + 16))
      {

LABEL_14:
        sub_1B7C962FC();
      }

      v55[0] = v21;
      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7AF7FAC();
      v55[0] = sub_1B7CFEA10();
      v55[1] = v23;

      MEMORY[0x1B8CADCA0](10, 0xE100000000000000);

      sub_1B7CFEA90();
      v24 = sub_1B7CFEA70();
      v26 = v25;
      result = (*v22)(v12, v48);
      if (v26 >> 60 == 15)
      {
        break;
      }

      v28 = *(v19 + v49);
      if (v28)
      {
        v29 = v28;
        sub_1B7CFEEA0();
        v30 = sub_1B7CFE010();
        [v29 writeData_];
        sub_1B7C2049C(v24, v26);

        v20 = v50;
      }

      else
      {
        sub_1B7C2049C(v24, v26);
      }

      v21 = sub_1B7CDF584(v53, v54, v20);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C9752C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static IMDPersistenceService.withThrowUponDisconnect<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7C97560, 0, 0);
}

uint64_t sub_1B7C97560()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1B7C9765C;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD00000000000001BLL, 0x80000001B7D53A40, sub_1B7C986DC, v2, v5);
}

uint64_t sub_1B7C9765C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B7C97798, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B7C97798()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7C977FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B7C996F4(a3, v25 - v10);
  v12 = sub_1B7CFEDD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B7C99764(v11);
  }

  else
  {
    sub_1B7CFEDC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B7CFED80();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B7CFEAD0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1B7C107FC(&qword_1EBA53230, &qword_1B7D10C88);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1B7C99764(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B7C99764(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1B7C107FC(&qword_1EBA53230, &qword_1B7D10C88);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B7C97AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B7C996F4(a3, v25 - v10);
  v12 = sub_1B7CFEDD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B7C99764(v11);
  }

  else
  {
    sub_1B7CFEDC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B7CFED80();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B7CFEAD0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1B7C99764(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B7C99764(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B7C97D90()
{
  v1 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_1B7CFEDD0();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_1B7C97AD0(0, 0, v3, &unk_1B7D10C48, v5);
}

uint64_t sub_1B7C97EB8()
{
  sub_1B7C980E0(sub_1B7C99638);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7C97F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B7CFDC70();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFDC60();

  sub_1B7C97D90();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B7C98034()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EDBE39F0 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:qword_1EDBE39F8 object:0];

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;

  return sub_1B7AE15D4(v2, v3);
}

void sub_1B7C980E0(void (*a1)(uint64_t))
{
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v3 = sub_1B7CFF810();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 112);
  if (v7)
  {
    v8 = *(v1 + 120);

    a1(v9);
    v7(v6);
    (*(v4 + 8))(v6, v3);
    sub_1B7C98034();
    sub_1B7AE15D4(v7, v8);
  }
}

uint64_t sub_1B7C98288@<X0>(void *a2@<X8>)
{
  *a2 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A798] code:4097 userInfo:0];
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  sub_1B7CFF810();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B7C98380@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v5 = sub_1B7CFF810();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_1B7C9841C()
{
  sub_1B7AE15D4(*(v0 + 112), *(v0 + 120));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B7C98464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v7 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v10 = sub_1B7CFEDB0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  _s31DisconnectHandlingResultHandlerCMa(0, a4, v14, v15);
  (*(v11 + 16))(v13, a1, v10);
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  (*(v11 + 32))(v17 + v16, v13, v10);
  v20 = sub_1B7C9A778(sub_1B7C9AA18, v17, v18, v19);

  v21 = sub_1B7CFEDD0();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v25;
  v22[5] = a3;
  v22[6] = v20;

  sub_1B7C97AD0(0, 0, v9, &unk_1B7D10CA0, v22);
}

uint64_t sub_1B7C986E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v4 = sub_1B7CFEDB0();
  return sub_1B7C98750(a1, v4);
}

uint64_t sub_1B7C98750(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B7CFF810();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v16, v8);
    return sub_1B7CFED90();
  }

  else
  {
    (*(v4 + 32))(v6, v16, v3);
    return sub_1B7CFEDA0();
  }
}

uint64_t sub_1B7C9898C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a6;
  v8 = *(*a6 + 80);
  v6[11] = v8;
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v9 = sub_1B7CFF810();
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = *(v8 - 8);
  v10 = swift_task_alloc();
  v6[16] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v6[17] = v11;
  *v11 = v6;
  v11[1] = sub_1B7C98B78;

  return v13(v10);
}

uint64_t sub_1B7C98B78()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1B7C98E6C;
  }

  else
  {
    v2 = sub_1B7C98C8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7C98C8C()
{
  v1 = v0[10];
  (*(v0[15] + 16))(v0[14], v0[16], v0[11]);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B7C98D28, v1, 0);
}

uint64_t sub_1B7C98D28()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  *(v0 + 64) = *(**(v0 + 80) + 80);
  *(v0 + 72) = v1;
  sub_1B7C980E0(sub_1B7C99630);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B7C98DE8, 0, 0);
}

uint64_t sub_1B7C98DE8()
{
  (*(v0[15] + 8))(v0[16], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B7C98E6C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);
  **(v0 + 112) = v1;
  swift_storeEnumTagMultiPayload();
  v3 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7C98EF0, v2, 0);
}

uint64_t sub_1B7C98EF0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  *(v0 + 32) = *(**(v0 + 80) + 80);
  *(v0 + 40) = v1;
  sub_1B7C980E0(sub_1B7C99630);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B7C98FB0, 0, 0);
}

uint64_t sub_1B7C98FB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static IMDPersistenceService.withThrowingQueryProviderUponDisconnect<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7C9904C, 0, 0);
}

uint64_t sub_1B7C9904C()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1B7C9914C;
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD00000000000002DLL, 0x80000001B7D575A0, sub_1B7C995B8, v2, v5);
}

uint64_t sub_1B7C9914C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B7C99288, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B7C99288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7C992EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a4;
  v30 = a5;
  v27 = *a3;
  v28 = a2;
  v9 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v12 = sub_1B7CFEDB0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  _s31DisconnectHandlingResultHandlerCMa(0, a6, v16, v17);
  (*(v13 + 16))(v15, a1, v12);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = *(*(v27 + *MEMORY[0x1E69E77B0] + 8) + 16);
  *(v19 + 24) = a6;
  (*(v13 + 32))(v19 + v18, v15, v12);
  v22 = sub_1B7C9A778(sub_1B7C9A4C8, v19, v20, v21);

  v23 = sub_1B7CFEDD0();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v25 = v29;
  v24[4] = v28;
  v24[5] = a3;
  v24[6] = v22;
  v24[7] = v25;
  v24[8] = v30;

  sub_1B7C97AD0(0, 0, v11, &unk_1B7D10C70, v24);
}

uint64_t sub_1B7C99640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7C9AB84;

  return sub_1B7C97E98(a1, v4, v5, v6);
}

uint64_t sub_1B7C996F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7C99764(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C997CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v5 = sub_1B7CFEDB0();
  return sub_1B7C98750(a1, v5);
}

uint64_t sub_1B7C99834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v9 = *a5;
  v10 = *(*a6 + 80);
  v8[19] = v10;
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v11 = sub_1B7CFF810();
  v8[20] = v11;
  v8[21] = *(v11 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = *(v10 - 8);
  v8[24] = swift_task_alloc();
  v12 = *(v9 + *MEMORY[0x1E69E77B0] + 8);
  v8[25] = v12;
  v8[26] = *(v12 - 8);
  v8[27] = swift_task_alloc();
  v13 = *(v12 + 16);
  v8[28] = v13;
  v8[29] = *(v13 - 8);
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7C99A74, 0, 0);
}

uint64_t sub_1B7C99A74()
{
  v0[13] = v0[14];
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  swift_getAtKeyPath();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[16];
    (*(v0[26] + 8))(v0[27], v0[25]);

    return MEMORY[0x1EEE6DFA0](sub_1B7C99C28, v4, 0);
  }

  else
  {
    v5 = v0[17];
    (*(v0[29] + 32))(v0[30], v0[27], v0[28]);
    v10 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[31] = v6;
    *v6 = v0;
    v6[1] = sub_1B7C99CEC;
    v7 = v0[30];
    v8 = v0[24];

    return v10(v8, v7);
  }
}

uint64_t sub_1B7C99C28()
{
  *(v0 + 96) = *(**(v0 + 128) + 80);
  sub_1B7C980E0(sub_1B7C99638);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7C99CEC()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1B7C9A020;
  }

  else
  {
    v2 = sub_1B7C99E00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7C99E00()
{
  v1 = v0[16];
  (*(v0[23] + 16))(v0[22], v0[24], v0[19]);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B7C99E9C, v1, 0);
}

uint64_t sub_1B7C99E9C()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  *(v0 + 64) = *(**(v0 + 128) + 80);
  *(v0 + 72) = v1;
  sub_1B7C980E0(sub_1B7C99630);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B7C99F5C, 0, 0);
}

uint64_t sub_1B7C99F5C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  (*(v0[23] + 8))(v0[24], v0[19]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B7C9A020()
{
  v1 = v0[32];
  v2 = v0[22];
  v3 = v0[16];
  (*(v0[29] + 8))(v0[30], v0[28]);
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v4 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7C9A0CC, v3, 0);
}

uint64_t sub_1B7C9A0CC()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  *(v0 + 32) = *(**(v0 + 128) + 80);
  *(v0 + 40) = v1;
  sub_1B7C980E0(sub_1B7C99630);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B7C9A18C, 0, 0);
}

uint64_t sub_1B7C9A18C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7C9A220(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B7C9A318;

  return v6(a1);
}

uint64_t sub_1B7C9A318()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B7C9A410(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7C9AB84;

  return sub_1B7C9A220(a1, v4);
}

uint64_t sub_1B7C9A4C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v5 = *(sub_1B7CFEDB0() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1B7C997CC(a1, v6, v3, v4);
}

uint64_t sub_1B7C9A570(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1B7C9A664;

  return v5(v2 + 32);
}

uint64_t sub_1B7C9A664()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1B7C9A778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s31DisconnectHandlingResultHandlerCMa(0, *(v4 + 80), a3, a4);
  swift_allocObject();
  return sub_1B7C416F0(a1, a2);
}

uint64_t sub_1B7C9A7CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B7C9AB84;

  return sub_1B7C99834(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B7C9A8A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7C9AB84;

  return sub_1B7C9A570(a1, v4);
}

uint64_t sub_1B7C9A960(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7C40EE4;

  return sub_1B7C9A570(a1, v4);
}

uint64_t sub_1B7C9AA18(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v4 = *(sub_1B7CFEDB0() - 8);
  v5 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_1B7C986E8(a1, v5, v3);
}

uint64_t sub_1B7C9AABC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7C40EE4;

  return sub_1B7C9898C(a1, v4, v5, v6, v7, v8);
}

void *sub_1B7C9ABE8()
{

  sub_1B7AE15D4(*(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t sub_1B7C9AC18()
{
  sub_1B7C9ABE8();

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C9AC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7C9ACA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7C9ACFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B7C9AD4C()
{
  v0 = sub_1B7CCB02C(&unk_1F2FA1A40);
  v2 = v1;
  v4 = v3;
  sub_1B7C107FC(&qword_1EBA53238, &unk_1B7D10D70);
  result = swift_arrayDestroy();
  qword_1EBA5DA80 = v0;
  qword_1EBA5DA88 = v2;
  qword_1EBA5DA90 = v4;
  return result;
}

void sub_1B7C9ADC0()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isInternalInstall];

    if (v3)
    {
      sub_1B7AE3B2C(0xD000000000000020, 0x80000001B7D57B30, 0);
      if (!v0)
      {
        sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B7C9AF18(uint64_t a1)
{

  sub_1B7AE3B2C(0xD000000000000080, 0x80000001B7D57AA0, 0);
  if (!v1)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }
}

const char *sub_1B7C9B04C()
{
  result = sub_1B7AE3B2C(0xD00000000000002CLL, 0x80000001B7D578E0, 0);
  if (!v0)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

    sub_1B7AE3B2C(0xD000000000000034, 0x80000001B7D57910, 0);
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t sub_1B7C9B1B0(uint64_t a1)
{

  sub_1B7AE3B2C(0xD00000000000008BLL, 0x80000001B7D57850, 0);
  if (!v1)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }
}

void sub_1B7C9B2E4(uint64_t a1)
{
  if (qword_1EDBE3F50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ChatLookupRecord(0);
  sub_1B7AE1118(&qword_1EDBE3F90, type metadata accessor for ChatLookupRecord, &unk_1B7D12950);
  sub_1B7CC1208(v2);
  if (v3)
  {
    sub_1B7C2EBBC(v3, 0x797469726F697270, 0xE800000000000000);
    if (v1 || (v4 = [objc_opt_self() sharedFeatureFlags], v5 = objc_msgSend(v4, sel_isMissingMessagesEnabled), v4, (v5 & 1) == 0))
    {
    }

    else
    {

      sub_1B7AE3B2C(0xD000000000000132, 0x80000001B7D57710, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1B7C9B550()
{
  sub_1B7AE3B2C(0xD00000000000001CLL, 0x80000001B7D57950, 0);
  if (!v0)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

    sub_1B7C2E8B4(0xD000000000000010, 0x80000001B7D57970, 0x6F72675F67616C66, 0xEA00000000007075, 0xD00000000000001BLL, 0x80000001B7D57990);
    sub_1B7C2E8B4(0xD000000000000010, 0x80000001B7D57970, 0x6972705F67616C66, 0xED0000797469726FLL, 0xD00000000000001ALL, 0x80000001B7D579B0);
    sub_1B7C2E8B4(0xD000000000000010, 0x80000001B7D57970, 0x705F6E6F73616572, 0xEF797469726F6972, 0xD00000000000001ALL, 0x80000001B7D579B0);
    sub_1B7AE3B2C(0xD00000000000002ALL, 0x80000001B7D579D0, 0);
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

    sub_1B7AE3B2C(0xD000000000000031, 0x80000001B7D57A00, 0);
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

    sub_1B7AE3B2C(0xD00000000000002CLL, 0x80000001B7D57A40, 0);
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

    sub_1B7AE3B2C(0xD00000000000002ALL, 0x80000001B7D57A70, 0);
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }
}

void sub_1B7C9BA3C()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isMissingMessagesEnabled];

  if (v1)
  {
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v2 = sub_1B7CFE420();
    sub_1B7AD9040(v2, qword_1EBA5DA20);
    v3 = sub_1B7CFE400();
    v4 = sub_1B7CFEF00();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1B7AD5000, v3, v4, "Performing regular chat lookup migration", v5, 2u);
      MEMORY[0x1B8CB0E70](v5, -1, -1);
    }

    sub_1B7CBD01C();
  }
}

void sub_1B7C9BB84(const char *a1)
{
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 _isOneChatOptedOut];

  if ((v3 & 1) == 0)
  {
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B7CFE420();
    sub_1B7AD9040(v4, qword_1EBA5DA20);
    v5 = sub_1B7CFE400();
    v6 = sub_1B7CFEF00();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B7AD5000, v5, v6, "Performing regular chat merge migration", v7, 2u);
      MEMORY[0x1B8CB0E70](v7, -1, -1);
    }

    sub_1B7AE3B2C(0xD000000000000012, 0x80000001B7D57610, 0);
    if (!v1)
    {
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      sub_1B7CA4B58(0);
      sub_1B7AE3B2C(0xD000000000000011, 0x80000001B7D57650, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
    }
  }
}

void sub_1B7C9BF3C(const char *a1)
{
  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isInternalInstall];

    if (v5)
    {
      v6 = [objc_opt_self() sharedFeatureFlags];
      v7 = [v6 _isOneChatOptedOut];

      if ((v7 & 1) == 0)
      {
        v28 = &v27;
        *&v24 = sub_1B7CFEA60();
        *(&v24 + 1) = v8;

        MEMORY[0x1B8CADCA0](59, 0xE100000000000000);

        v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v11 = v9[2];
        v10 = v9[3];
        if (v11 >= v10 >> 1)
        {
          v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
        }

        v25 = MEMORY[0x1E69E6158];
        v26 = &off_1F2FA8B58;
        v9[2] = v11 + 1;
        v12 = v9;
        sub_1B7AE910C(&v24, &v9[5 * v11 + 4]);

        sub_1B7AF45D8(0xD00000000000005BLL, 0x80000001B7D57670, v12, 0, &v28);

        if (!v1)
        {
          v13 = v27;
          if (v27 < 1)
          {
            if (qword_1EBA50EB8 != -1)
            {
              swift_once();
            }

            v20 = sub_1B7CFE420();
            sub_1B7AD9040(v20, qword_1EBA5DA20);
            v21 = sub_1B7CFE400();
            v22 = sub_1B7CFEF00();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              *v23 = 0;
              _os_log_impl(&dword_1B7AD5000, v21, v22, "No legacy chat GUIDs found, not re-running chat table migration.", v23, 2u);
              MEMORY[0x1B8CB0E70](v23, -1, -1);
            }
          }

          else
          {
            if (qword_1EBA50EB8 != -1)
            {
              swift_once();
            }

            v14 = sub_1B7CFE420();
            sub_1B7AD9040(v14, qword_1EBA5DA20);
            v15 = sub_1B7CFE400();
            v16 = sub_1B7CFEEF0();
            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              *v17 = 134217984;
              *(v17 + 4) = v13;
              _os_log_impl(&dword_1B7AD5000, v15, v16, "Has %ld legacy chats! Re-running chat table migration.", v17, 0xCu);
              MEMORY[0x1B8CB0E70](v17, -1, -1);
            }

            v18 = sub_1B7CFEA30();
            v19 = sub_1B7CFEA30();
            IMSetDomainIntForKey();

            sub_1B7C9BB84(a1);
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B7C9C2F8()
{
  sub_1B7C107FC(&qword_1EBA53248, &qword_1B7D10D98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D10D80;
  sub_1B7CFF180();
  *(inited + 72) = 2;
  sub_1B7CFF180();
  *(inited + 120) = 1;
  sub_1B7CFF180();
  *(inited + 168) = 3;
  sub_1B7CFF180();
  *(inited + 216) = 2;
  sub_1B7CFF180();
  *(inited + 264) = 2;
  sub_1B7CFF180();
  *(inited + 312) = 1;
  sub_1B7CFF180();
  *(inited + 360) = 3;
  sub_1B7CFF180();
  *(inited + 408) = 3;
  sub_1B7CFF180();
  *(inited + 456) = 3;
  sub_1B7CFF180();
  *(inited + 504) = 3;
  sub_1B7CFF180();
  *(inited + 552) = 1;
  v1 = sub_1B7C24490(inited);
  swift_setDeallocating();
  sub_1B7C107FC(&qword_1EBA52230, &unk_1B7D10DA0);
  result = swift_arrayDestroy();
  qword_1EBA53240 = v1;
  return result;
}

uint64_t sub_1B7C9C5CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (v12)
  {
    v16 = v15;
LABEL_16:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v19 | (v16 << 6);
    sub_1B7C41078(*(a1 + 48) + 40 * v20, v25);
    sub_1B7AED284(*(a1 + 56) + 32 * v20, v24);
    v27 = v25[0];
    v28 = v25[1];
    *&v29 = v26;
    sub_1B7C255E0(v24, (&v29 + 8));
LABEL_17:
    v34[0] = v29;
    v34[1] = v30;
    v35 = v31;
    v32 = v27;
    v33 = v28;
    if (!*(&v28 + 1))
    {
    }

    v27 = v32;
    v28 = v33;
    *&v29 = *&v34[0];
    sub_1B7C255E0((v34 + 8), v25);
    if (!*(a3 + 16) || (v21 = sub_1B7C40388(&v27), (v22 & 1) == 0))
    {
LABEL_4:
      sub_1B7C9C808(&v27, v25, a2, a3, a4, a5);
      goto LABEL_5;
    }

    if (*(*(a3 + 56) + v21) > 1u)
    {
      if (*(*(a3 + 56) + v21) == 2)
      {
        sub_1B7C9D230(&v27, v25, a2, a3, a4, a5);
      }

      else
      {
        sub_1B7C9D7F8(&v27, v25, a2, a3, a4, a5);
      }
    }

    else
    {
      if (!*(*(a3 + 56) + v21))
      {
        goto LABEL_4;
      }

      sub_1B7C9CB98(&v27, v25, a2, a3, a4, a5);
    }

LABEL_5:
    sub_1B7AE9168(v25);
    result = sub_1B7C410D4(&v27);
  }

  if (v13 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  else
  {
    v17 = v13;
  }

  v18 = v17 - 1;
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      v12 = 0;
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v15 = v18;
      v27 = 0u;
      v28 = 0u;
      goto LABEL_17;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1B7C9C808(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = *a3;
  if (*(*a3 + 16) && (v11 = sub_1B7C40388(a1), (v12 & 1) != 0))
  {
    sub_1B7AED284(*(v10 + 56) + 32 * v11, v29);
    sub_1B7AEE190(v29, &qword_1EBA51FA8, qword_1B7D0B230);
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v13 = sub_1B7CFE420();
    sub_1B7AD9040(v13, qword_1EBA5DA20);
    sub_1B7C41078(a1, v29);

    v14 = sub_1B7CFE400();
    v15 = sub_1B7CFEEE0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_1B7AED1B8(a5, a6, v28);
      *(v16 + 12) = 2080;
      v18 = sub_1B7CFF150();
      v20 = v19;
      sub_1B7C410D4(v29);
      v21 = sub_1B7AED1B8(v18, v20, v28);

      *(v16 + 14) = v21;
      v22 = "%s%s skipped from sibling";
LABEL_11:
      _os_log_impl(&dword_1B7AD5000, v14, v15, v22, v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB0E70](v17, -1, -1);
      MEMORY[0x1B8CB0E70](v16, -1, -1);

      return;
    }
  }

  else
  {
    memset(v29, 0, 32);
    sub_1B7AEE190(v29, &qword_1EBA51FA8, qword_1B7D0B230);
    sub_1B7C41078(a1, v29);
    sub_1B7AED284(a2, v28);
    sub_1B7CE0A94(v28, v29);
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v23 = sub_1B7CFE420();
    sub_1B7AD9040(v23, qword_1EBA5DA20);
    sub_1B7C41078(a1, v29);

    v14 = sub_1B7CFE400();
    v15 = sub_1B7CFEEE0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_1B7AED1B8(a5, a6, v28);
      *(v16 + 12) = 2080;
      v24 = sub_1B7CFF150();
      v26 = v25;
      sub_1B7C410D4(v29);
      v27 = sub_1B7AED1B8(v24, v26, v28);

      *(v16 + 14) = v27;
      v22 = "%s%s taken from sibling";
      goto LABEL_11;
    }
  }

  sub_1B7C410D4(v29);
}

void sub_1B7C9CB98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = *a3;
  if (*(*a3 + 16) && (v11 = sub_1B7C40388(a1), (v12 & 1) != 0))
  {
    sub_1B7AED284(*(v10 + 56) + 32 * v11, &v51);
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v50[0] = v51;
  v50[1] = v52;
  if (*(&v52 + 1))
  {
    sub_1B7C255E0(v50, &v48);
  }

  else
  {
    v13 = sub_1B7C24230(MEMORY[0x1E69E7CC0]);
    v49 = sub_1B7C107FC(&unk_1EBA52580, &qword_1B7D10D90);
    *&v48 = v13;
    sub_1B7AEE190(v50, &qword_1EBA51FA8, qword_1B7D0B230);
  }

  v14 = sub_1B7C107FC(&unk_1EBA52580, &qword_1B7D10D90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v26 = sub_1B7CFE420();
    sub_1B7AD9040(v26, qword_1EBA5DA20);
    sub_1B7C41078(a1, &v48);

    v27 = sub_1B7CFE400();
    v28 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v51 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_1B7AED1B8(a5, a6, &v51);
      *(v29 + 12) = 2080;
      v31 = sub_1B7CFF150();
      v33 = v32;
      sub_1B7C410D4(&v48);
      v34 = sub_1B7AED1B8(v31, v33, &v51);

      *(v29 + 14) = v34;
      v35 = "%s%s has recursive rule but is not a dictionary";
LABEL_18:
      _os_log_impl(&dword_1B7AD5000, v27, v28, v35, v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB0E70](v30, -1, -1);
      MEMORY[0x1B8CB0E70](v29, -1, -1);

      return;
    }

LABEL_25:

    sub_1B7C410D4(&v48);
    return;
  }

  v53 = v51;
  sub_1B7AED284(a2, &v48);
  if (!swift_dynamicCast())
  {

    if (!*(v10 + 16))
    {
      return;
    }

    sub_1B7C40388(a1);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      return;
    }

    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v38 = sub_1B7CFE420();
    sub_1B7AD9040(v38, qword_1EBA5DA20);
    sub_1B7C41078(a1, &v48);

    v27 = sub_1B7CFE400();
    v28 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v51 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_1B7AED1B8(a5, a6, &v51);
      *(v29 + 12) = 2080;
      v39 = sub_1B7CFF150();
      v41 = v40;
      sub_1B7C410D4(&v48);
      v42 = sub_1B7AED1B8(v39, v41, &v51);

      *(v29 + 14) = v42;
      v35 = "%s%s has recursive rule but is not a dictionary for sibling";
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v15 = a5;
  v47 = v51;
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v16 = sub_1B7CFE420();
  sub_1B7AD9040(v16, qword_1EBA5DA20);
  sub_1B7C41078(a1, &v48);

  v17 = sub_1B7CFE400();
  v18 = sub_1B7CFEEE0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v51 = v20;
    *v19 = 136315394;
    v46 = v15;
    *(v19 + 4) = sub_1B7AED1B8(v15, a6, &v51);
    *(v19 + 12) = 2080;
    v21 = sub_1B7CFF150();
    v23 = v22;
    sub_1B7C410D4(&v48);
    v24 = sub_1B7AED1B8(v21, v23, &v51);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_1B7AD5000, v17, v18, "%s%s being recursively merged", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB0E70](v20, -1, -1);
    MEMORY[0x1B8CB0E70](v19, -1, -1);

    v25 = v46;
  }

  else
  {

    sub_1B7C410D4(&v48);
    v25 = v15;
  }

  v43 = sub_1B7C24490(MEMORY[0x1E69E7CC0]);
  *&v48 = sub_1B7CFF150();
  *(&v48 + 1) = v44;
  MEMORY[0x1B8CADCA0](46, 0xE100000000000000);
  v45 = v48;
  *&v48 = v25;
  *(&v48 + 1) = a6;

  MEMORY[0x1B8CADCA0](v45, *(&v45 + 1));

  sub_1B7C9C5CC(v47, &v53, v43, v48, *(&v48 + 1));

  sub_1B7C41078(a1, &v48);
  *(&v52 + 1) = v14;
  *&v51 = v53;
  sub_1B7CE0A94(&v51, &v48);
}

void sub_1B7C9D230(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = *a3;
  if (!*(*a3 + 16) || (v11 = sub_1B7C40388(a1), (v12 & 1) == 0) || (sub_1B7AED284(*(v9 + 56) + 32 * v11, v45), (swift_dynamicCast() & 1) == 0))
  {
    if (!*(v9 + 16))
    {
      return;
    }

    sub_1B7C40388(a1);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      return;
    }

    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v27 = sub_1B7CFE420();
    sub_1B7AD9040(v27, qword_1EBA5DA20);
    sub_1B7C41078(a1, v45);

    v28 = sub_1B7CFE400();
    v29 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_1B7AED1B8(a5, a6, v44);
      *(v30 + 12) = 2080;
      v32 = sub_1B7CFF150();
      v34 = v33;
      sub_1B7C410D4(v45);
      v35 = sub_1B7AED1B8(v32, v34, v44);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_1B7AD5000, v28, v29, "%s%s has add rule but is not an int for sibling", v30, 0x16u);
LABEL_19:
      swift_arrayDestroy();
      MEMORY[0x1B8CB0E70](v31, -1, -1);
      MEMORY[0x1B8CB0E70](v30, -1, -1);

      return;
    }

LABEL_20:

    sub_1B7C410D4(v45);
    return;
  }

  sub_1B7AED284(a2, v45);
  if (!swift_dynamicCast())
  {
    if (qword_1EBA50EB8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  v13 = v44[0];
  if (__OFADD__(v44[0], v44[0]))
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_17:
    v36 = sub_1B7CFE420();
    sub_1B7AD9040(v36, qword_1EBA5DA20);
    sub_1B7C41078(a1, v45);

    v28 = sub_1B7CFE400();
    v37 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v28, v37))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_1B7AED1B8(a5, a6, v44);
      *(v30 + 12) = 2080;
      v38 = sub_1B7CFF150();
      v40 = v39;
      sub_1B7C410D4(v45);
      v41 = sub_1B7AED1B8(v38, v40, v44);

      *(v30 + 14) = v41;
      _os_log_impl(&dword_1B7AD5000, v28, v37, "%s%s has add rule but is not an int", v30, 0x16u);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v42 = v44[0];
  v43 = 2 * v44[0];
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v14 = sub_1B7CFE420();
  sub_1B7AD9040(v14, qword_1EBA5DA20);
  sub_1B7C41078(a1, v45);

  v15 = sub_1B7CFE400();
  v16 = sub_1B7CFEEE0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v44[0] = v18;
    *v17 = 136316162;
    *(v17 + 4) = sub_1B7AED1B8(a5, a6, v44);
    *(v17 + 12) = 2080;
    v19 = sub_1B7CFF150();
    v21 = v20;
    sub_1B7C410D4(v45);
    v22 = sub_1B7AED1B8(v19, v21, v44);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2048;
    v23 = v43;
    *(v17 + 24) = v43;
    *(v17 + 32) = 2048;
    *(v17 + 34) = v42;
    *(v17 + 42) = 2048;
    *(v17 + 44) = v13;
    _os_log_impl(&dword_1B7AD5000, v15, v16, "%s%s set to %ld (%ld + %ld)", v17, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB0E70](v18, -1, -1);
    MEMORY[0x1B8CB0E70](v17, -1, -1);

    v24 = MEMORY[0x1E69E6530];
  }

  else
  {

    sub_1B7C410D4(v45);
    v24 = MEMORY[0x1E69E6530];
    v23 = 2 * v44[0];
  }

  sub_1B7C41078(a1, v45);
  v44[3] = v24;
  v44[0] = v23;
  sub_1B7CE0A94(v44, v45);
}

uint64_t sub_1B7C9D7F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a4;
  v69 = a6;
  v67 = a5;
  v70 = a2;
  v8 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v66 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v66 - v15;
  v17 = sub_1B7CFE120();
  v72 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v66 - v22;
  v24 = *a3;
  v25 = *(*a3 + 16);
  v71 = a1;
  if (!v25 || (v26 = sub_1B7C40388(a1), (v27 & 1) == 0))
  {
    v31 = v72;
    v30 = *(v72 + 56);
    v30(v16, 1, 1, v17, v21);
LABEL_6:
    sub_1B7AEE190(v16, &unk_1EBA51980, &unk_1B7D0A1B0);
    v32 = v71;
    if (*(v24 + 16))
    {

      sub_1B7C40388(v32);
      v34 = v33;

      if (v34)
      {
        if (qword_1EBA50EB8 != -1)
        {
          swift_once();
        }

        v35 = sub_1B7CFE420();
        sub_1B7AD9040(v35, qword_1EBA5DA20);
        sub_1B7C41078(v32, v76);

        v36 = v69;

        v37 = sub_1B7CFE400();
        v38 = sub_1B7CFEEF0();

        LODWORD(v72) = v38;
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *&v74 = v40;
          *v39 = 136315394;
          *(v39 + 4) = sub_1B7AED1B8(v67, v36, &v74);
          *(v39 + 12) = 2080;
          v41 = v37;
          v42 = sub_1B7CFF150();
          v44 = v43;
          sub_1B7C410D4(v76);
          v45 = sub_1B7AED1B8(v42, v44, &v74);

          *(v39 + 14) = v45;
          _os_log_impl(&dword_1B7AD5000, v41, v72, "%s%s has most recent date rule but is not a date", v39, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B8CB0E70](v40, -1, -1);
          v46 = v39;
          v32 = v71;
          MEMORY[0x1B8CB0E70](v46, -1, -1);
        }

        else
        {

          sub_1B7C410D4(v76);
        }
      }
    }

    sub_1B7C41078(v32, v76);
    sub_1B7AED284(v70, v73);
    if (swift_dynamicCast())
    {
      (v30)(v10, 0, 1, v17);
      *(&v75 + 1) = v17;
      v51 = sub_1B7C1A14C(&v74);
      (*(v31 + 32))(v51, v10, v17);
    }

    else
    {
      (v30)(v10, 1, 1, v17);
      sub_1B7AEE190(v10, &unk_1EBA51980, &unk_1B7D0A1B0);
      v74 = 0u;
      v75 = 0u;
    }

    return sub_1B7CE0A94(&v74, v76);
  }

  v66[1] = a3;
  sub_1B7AED284(*(v24 + 56) + 32 * v26, v76);
  v28 = swift_dynamicCast();
  v29 = v72;
  v30 = *(v72 + 56);
  (v30)(v16, v28 ^ 1u, 1, v17);
  if ((*(v29 + 48))(v16, 1, v17) == 1)
  {
    v31 = v29;
    goto LABEL_6;
  }

  v47 = *(v29 + 32);
  v48 = v23;
  v47(v23, v16, v17);
  sub_1B7AED284(v70, v76);
  if (swift_dynamicCast())
  {
    (v30)(v13, 0, 1, v17);
    v47(v19, v13, v17);
    if (sub_1B7CFE0B0())
    {
      sub_1B7C41078(v71, v76);
      *(&v75 + 1) = v17;
      v49 = sub_1B7C1A14C(&v74);
      v50 = v72;
      (*(v72 + 16))(v49, v19, v17);
      sub_1B7CE0A94(&v74, v76);
    }

    else
    {
      v50 = v72;
    }

    v65 = *(v50 + 8);
    v65(v19, v17);
    return (v65)(v48, v17);
  }

  else
  {
    (v30)(v13, 1, 1, v17);
    sub_1B7AEE190(v13, &unk_1EBA51980, &unk_1B7D0A1B0);
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v53 = sub_1B7CFE420();
    sub_1B7AD9040(v53, qword_1EBA5DA20);
    sub_1B7C41078(v71, v76);

    v54 = v69;

    v55 = sub_1B7CFE400();
    v56 = sub_1B7CFEEF0();

    v57 = os_log_type_enabled(v55, v56);
    v58 = v72;
    if (v57)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v74 = v60;
      *v59 = 136315394;
      *(v59 + 4) = sub_1B7AED1B8(v67, v54, &v74);
      *(v59 + 12) = 2080;
      v61 = sub_1B7CFF150();
      v63 = v62;
      sub_1B7C410D4(v76);
      v64 = sub_1B7AED1B8(v61, v63, &v74);

      *(v59 + 14) = v64;
      _os_log_impl(&dword_1B7AD5000, v55, v56, "%s%s has most recent date rule but is not a date for sibling", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB0E70](v60, -1, -1);
      MEMORY[0x1B8CB0E70](v59, -1, -1);
    }

    else
    {

      sub_1B7C410D4(v76);
    }

    return (*(v58 + 8))(v48, v17);
  }
}

unint64_t sub_1B7C9E018()
{
  result = qword_1EBA53250;
  if (!qword_1EBA53250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53250);
  }

  return result;
}

uint64_t sub_1B7C9E06C(uint64_t a1, uint64_t a2)
{
  v206 = (a1 + 312);
  v207 = (a2 + 312);
  result = swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  do
  {
    if (!v7)
    {
LABEL_19:
      v26 = *(a1 + 16);
      v27 = *(v26 + 16);
      v28 = (v26 + 32);
      while (v27)
      {
        v29 = *v28++;
        --v27;
        if (v29 == 2)
        {
          result = swift_beginAccess();
          v30 = *(a2 + 16);
          v31 = *(v30 + 16);
          v32 = (v30 + 32);
          while (v31)
          {
            v33 = *v32++;
            --v31;
            if (v33 == 2)
            {
              swift_beginAccess();
              v34 = *(a1 + 32);
              result = swift_beginAccess();
              v35 = *(a2 + 32);
              if (v34 == v35)
              {
                v36 = 0;
                v200 = 0xE200000000000000;
                v37 = 15677;
              }

              else
              {
                v36 = v35 - v34;
                if (v35 >= v34)
                {
                  if ((v35 - v34) < 0)
                  {
                    goto LABEL_173;
                  }

                  v200 = 0xE100000000000000;
                  v37 = 60;
                }

                else
                {
                  v36 = v34 - v35;
                  if ((v34 - v35) < 0)
                  {
                    goto LABEL_172;
                  }

                  v200 = 0xE100000000000000;
                  v37 = 62;
                }
              }

              swift_beginAccess();
              v38 = *(v2 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 16) = v38;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v38 = sub_1B7CA208C(0, *(v38 + 2) + 1, 1, v38);
                *(v2 + 16) = v38;
              }

              v41 = *(v38 + 2);
              v40 = *(v38 + 3);
              v42 = v41 + 1;
              if (v41 >= v40 >> 1)
              {
                v193 = sub_1B7CA208C((v40 > 1), v41 + 1, 1, v38);
                v42 = v41 + 1;
                v38 = v193;
              }

              *(v38 + 2) = v42;
              v43 = &v38[64 * v41];
              *(v43 + 4) = v34;
              *(v43 + 5) = v35;
              *(v43 + 6) = v36;
              *(v43 + 7) = v37;
              *(v43 + 8) = v200;
              v43[72] = 1;
              v44 = *(&v208 + 3);
              *(v43 + 73) = v208;
              *(v43 + 19) = v44;
              *(v43 + 10) = 0xD000000000000010;
              *(v43 + 11) = 0x80000001B7D57D90;
              *(v2 + 16) = v38;
              result = swift_endAccess();
              goto LABEL_37;
            }
          }

          break;
        }
      }

LABEL_37:
      v45 = *(a1 + 16);
      v46 = *(v45 + 16);
      v47 = (v45 + 32);
      while (v46)
      {
        v48 = *v47++;
        --v46;
        if (v48 == 4)
        {
          result = swift_beginAccess();
          v49 = *(a2 + 16);
          v50 = *(v49 + 16);
          v51 = (v49 + 32);
          while (v50)
          {
            v52 = *v51++;
            --v50;
            if (v52 == 4)
            {
              swift_beginAccess();
              v53 = *(a1 + 40);
              result = swift_beginAccess();
              v54 = *(a2 + 40);
              if (v53 == v54)
              {
                v55 = 0;
                v56 = 0xE200000000000000;
                v57 = 15677;
              }

              else
              {
                v55 = v54 - v53;
                if (v54 >= v53)
                {
                  if ((v54 - v53) < 0)
                  {
                    goto LABEL_175;
                  }

                  v56 = 0xE100000000000000;
                  v57 = 60;
                }

                else
                {
                  v55 = v53 - v54;
                  if ((v53 - v54) < 0)
                  {
                    goto LABEL_174;
                  }

                  v56 = 0xE100000000000000;
                  v57 = 62;
                }
              }

              swift_beginAccess();
              v58 = *(v2 + 16);
              v59 = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 16) = v58;
              if ((v59 & 1) == 0)
              {
                v58 = sub_1B7CA208C(0, *(v58 + 2) + 1, 1, v58);
                *(v2 + 16) = v58;
              }

              v61 = *(v58 + 2);
              v60 = *(v58 + 3);
              v62 = v61 + 1;
              if (v61 >= v60 >> 1)
              {
                v194 = sub_1B7CA208C((v60 > 1), v61 + 1, 1, v58);
                v62 = v61 + 1;
                v58 = v194;
              }

              *(v58 + 2) = v62;
              v63 = &v58[64 * v61];
              *(v63 + 4) = v53;
              *(v63 + 5) = v54;
              *(v63 + 6) = v55;
              *(v63 + 7) = v57;
              *(v63 + 8) = v56;
              v63[72] = 1;
              v64 = *(&v208 + 3);
              *(v63 + 73) = v208;
              *(v63 + 19) = v64;
              strcpy(v63 + 80, "Message Count");
              *(v63 + 47) = -4864;
              *(v2 + 16) = v58;
              result = swift_endAccess();
              goto LABEL_55;
            }
          }

          break;
        }
      }

LABEL_55:
      v65 = *(a1 + 16);
      v66 = *(v65 + 16);
      v67 = (v65 + 32);
      while (v66)
      {
        v68 = *v67++;
        --v66;
        if (v68 == 8)
        {
          result = swift_beginAccess();
          v69 = *(a2 + 16);
          v70 = *(v69 + 16);
          v71 = (v69 + 32);
          while (v70)
          {
            v72 = *v71++;
            --v70;
            if (v72 == 8)
            {
              swift_beginAccess();
              v73 = *(a1 + 48);
              result = swift_beginAccess();
              v74 = *(a2 + 48);
              if (v73 == v74)
              {
                v75 = 0;
                v201 = 0xE200000000000000;
                v76 = 15677;
              }

              else
              {
                v75 = v74 - v73;
                if (v74 >= v73)
                {
                  if ((v74 - v73) < 0)
                  {
                    goto LABEL_177;
                  }

                  v201 = 0xE100000000000000;
                  v76 = 60;
                }

                else
                {
                  v75 = v73 - v74;
                  if ((v73 - v74) < 0)
                  {
                    goto LABEL_176;
                  }

                  v201 = 0xE100000000000000;
                  v76 = 62;
                }
              }

              swift_beginAccess();
              v77 = *(v2 + 16);
              v78 = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 16) = v77;
              if ((v78 & 1) == 0)
              {
                v77 = sub_1B7CA208C(0, *(v77 + 2) + 1, 1, v77);
                *(v2 + 16) = v77;
              }

              v80 = *(v77 + 2);
              v79 = *(v77 + 3);
              v81 = v80 + 1;
              if (v80 >= v79 >> 1)
              {
                v195 = sub_1B7CA208C((v79 > 1), v80 + 1, 1, v77);
                v81 = v80 + 1;
                v77 = v195;
              }

              *(v77 + 2) = v81;
              v82 = &v77[64 * v80];
              *(v82 + 4) = v73;
              *(v82 + 5) = v74;
              *(v82 + 6) = v75;
              *(v82 + 7) = v76;
              *(v82 + 8) = v201;
              v82[72] = 1;
              v83 = *(&v208 + 3);
              *(v82 + 73) = v208;
              *(v82 + 19) = v83;
              *(v82 + 10) = 0xD000000000000016;
              *(v82 + 11) = 0x80000001B7D57DB0;
              *(v2 + 16) = v77;
              result = swift_endAccess();
              goto LABEL_73;
            }
          }

          break;
        }
      }

LABEL_73:
      v84 = *(a1 + 16);
      v85 = *(v84 + 16);
      v86 = (v84 + 32);
      while (v85)
      {
        v87 = *v86++;
        --v85;
        if (v87 == 16)
        {
          result = swift_beginAccess();
          v88 = *(a2 + 16);
          v89 = *(v88 + 16);
          v90 = (v88 + 32);
          while (v89)
          {
            v91 = *v90++;
            --v89;
            if (v91 == 16)
            {
              swift_beginAccess();
              v92 = *(a1 + 56);
              result = swift_beginAccess();
              v93 = *(a2 + 56);
              if (v92 == v93)
              {
                v94 = 0;
                v202 = 0xE200000000000000;
                v95 = 15677;
              }

              else
              {
                v94 = v93 - v92;
                if (v93 >= v92)
                {
                  if ((v93 - v92) < 0)
                  {
                    goto LABEL_179;
                  }

                  v202 = 0xE100000000000000;
                  v95 = 60;
                }

                else
                {
                  v94 = v92 - v93;
                  if ((v92 - v93) < 0)
                  {
                    goto LABEL_178;
                  }

                  v202 = 0xE100000000000000;
                  v95 = 62;
                }
              }

              swift_beginAccess();
              v96 = *(v2 + 16);
              v97 = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 16) = v96;
              if ((v97 & 1) == 0)
              {
                v96 = sub_1B7CA208C(0, *(v96 + 2) + 1, 1, v96);
                *(v2 + 16) = v96;
              }

              v99 = *(v96 + 2);
              v98 = *(v96 + 3);
              v100 = v99 + 1;
              if (v99 >= v98 >> 1)
              {
                v196 = sub_1B7CA208C((v98 > 1), v99 + 1, 1, v96);
                v100 = v99 + 1;
                v96 = v196;
              }

              *(v96 + 2) = v100;
              v101 = &v96[64 * v99];
              *(v101 + 4) = v92;
              *(v101 + 5) = v93;
              *(v101 + 6) = v94;
              *(v101 + 7) = v95;
              *(v101 + 8) = v202;
              v101[72] = 1;
              v102 = *(&v208 + 3);
              *(v101 + 73) = v208;
              *(v101 + 19) = v102;
              *(v101 + 10) = 0xD000000000000015;
              *(v101 + 11) = 0x80000001B7D57DD0;
              *(v2 + 16) = v96;
              result = swift_endAccess();
              goto LABEL_91;
            }
          }

          break;
        }
      }

LABEL_91:
      v103 = *(a1 + 16);
      v104 = *(v103 + 16);
      v105 = (v103 + 32);
      while (v104)
      {
        v106 = *v105++;
        --v104;
        if (v106 == 32)
        {
          result = swift_beginAccess();
          v107 = *(a2 + 16);
          v108 = *(v107 + 16);
          v109 = (v107 + 32);
          while (v108)
          {
            v110 = *v109++;
            --v108;
            if (v110 == 32)
            {
              swift_beginAccess();
              v111 = *(a1 + 64);
              result = swift_beginAccess();
              v112 = *(a2 + 64);
              if (v111 == v112)
              {
                v113 = 0;
                v203 = 0xE200000000000000;
                v114 = 15677;
              }

              else
              {
                v113 = v112 - v111;
                if (v112 >= v111)
                {
                  if ((v112 - v111) < 0)
                  {
                    goto LABEL_181;
                  }

                  v203 = 0xE100000000000000;
                  v114 = 60;
                }

                else
                {
                  v113 = v111 - v112;
                  if ((v111 - v112) < 0)
                  {
                    goto LABEL_180;
                  }

                  v203 = 0xE100000000000000;
                  v114 = 62;
                }
              }

              swift_beginAccess();
              v115 = *(v2 + 16);
              v116 = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 16) = v115;
              if ((v116 & 1) == 0)
              {
                v115 = sub_1B7CA208C(0, *(v115 + 2) + 1, 1, v115);
                *(v2 + 16) = v115;
              }

              v118 = *(v115 + 2);
              v117 = *(v115 + 3);
              v119 = v118 + 1;
              if (v118 >= v117 >> 1)
              {
                v197 = sub_1B7CA208C((v117 > 1), v118 + 1, 1, v115);
                v119 = v118 + 1;
                v115 = v197;
              }

              *(v115 + 2) = v119;
              v120 = &v115[64 * v118];
              *(v120 + 4) = v111;
              *(v120 + 5) = v112;
              *(v120 + 6) = v113;
              *(v120 + 7) = v114;
              *(v120 + 8) = v203;
              v120[72] = 1;
              v121 = *(&v208 + 3);
              *(v120 + 73) = v208;
              *(v120 + 19) = v121;
              *(v120 + 10) = 0xD000000000000019;
              *(v120 + 11) = 0x80000001B7D57DF0;
              *(v2 + 16) = v115;
              result = swift_endAccess();
              goto LABEL_109;
            }
          }

          break;
        }
      }

LABEL_109:
      v122 = *(a1 + 16);
      v123 = *(v122 + 16);
      v124 = (v122 + 32);
      while (v123)
      {
        v125 = *v124++;
        --v123;
        if (v125 == 512)
        {
          result = swift_beginAccess();
          v126 = *(a2 + 16);
          v127 = *(v126 + 16);
          v128 = (v126 + 32);
          while (v127)
          {
            v129 = *v128++;
            --v127;
            if (v129 == 512)
            {
              swift_beginAccess();
              v130 = *(a1 + 296);
              result = swift_beginAccess();
              v131 = *(a2 + 296);
              if (v130 == v131)
              {
                v132 = 0;
                v204 = 0xE200000000000000;
                v133 = 15677;
              }

              else
              {
                v132 = v131 - v130;
                if (v131 >= v130)
                {
                  if ((v131 - v130) < 0)
                  {
                    goto LABEL_183;
                  }

                  v204 = 0xE100000000000000;
                  v133 = 60;
                }

                else
                {
                  v132 = v130 - v131;
                  if ((v130 - v131) < 0)
                  {
                    goto LABEL_182;
                  }

                  v204 = 0xE100000000000000;
                  v133 = 62;
                }
              }

              swift_beginAccess();
              v134 = *(v2 + 16);
              v135 = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 16) = v134;
              if ((v135 & 1) == 0)
              {
                v134 = sub_1B7CA208C(0, *(v134 + 2) + 1, 1, v134);
                *(v2 + 16) = v134;
              }

              v137 = *(v134 + 2);
              v136 = *(v134 + 3);
              v138 = v137 + 1;
              if (v137 >= v136 >> 1)
              {
                v198 = sub_1B7CA208C((v136 > 1), v137 + 1, 1, v134);
                v138 = v137 + 1;
                v134 = v198;
              }

              *(v134 + 2) = v138;
              v139 = &v134[64 * v137];
              *(v139 + 4) = v130;
              *(v139 + 5) = v131;
              *(v139 + 6) = v132;
              *(v139 + 7) = v133;
              *(v139 + 8) = v204;
              v139[72] = 1;
              v140 = *(&v208 + 3);
              *(v139 + 73) = v208;
              *(v139 + 19) = v140;
              *(v139 + 10) = 0xD00000000000001BLL;
              *(v139 + 11) = 0x80000001B7D57E10;
              *(v2 + 16) = v134;
              result = swift_endAccess();
              goto LABEL_127;
            }
          }

          break;
        }
      }

LABEL_127:
      v141 = *(a1 + 16);
      v142 = *(v141 + 16);
      v143 = (v141 + 32);
      while (v142)
      {
        v144 = *v143++;
        --v142;
        if (v144 == 1024)
        {
          result = swift_beginAccess();
          v145 = *(a2 + 16);
          v146 = *(v145 + 16);
          v147 = (v145 + 32);
          while (v146)
          {
            v148 = *v147++;
            --v146;
            if (v148 == 1024)
            {
              swift_beginAccess();
              v149 = *(a1 + 304);
              result = swift_beginAccess();
              v150 = *(a2 + 304);
              if (v149 == v150)
              {
                v151 = 0;
                v205 = 0xE200000000000000;
                v152 = 15677;
              }

              else
              {
                v151 = v150 - v149;
                if (v150 >= v149)
                {
                  if ((v150 - v149) < 0)
                  {
                    goto LABEL_185;
                  }

                  v205 = 0xE100000000000000;
                  v152 = 60;
                }

                else
                {
                  v151 = v149 - v150;
                  if ((v149 - v150) < 0)
                  {
                    goto LABEL_184;
                  }

                  v205 = 0xE100000000000000;
                  v152 = 62;
                }
              }

              swift_beginAccess();
              v153 = *(v2 + 16);
              v154 = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + 16) = v153;
              if ((v154 & 1) == 0)
              {
                v153 = sub_1B7CA208C(0, *(v153 + 2) + 1, 1, v153);
                *(v2 + 16) = v153;
              }

              v156 = *(v153 + 2);
              v155 = *(v153 + 3);
              v157 = v156 + 1;
              if (v156 >= v155 >> 1)
              {
                v199 = sub_1B7CA208C((v155 > 1), v156 + 1, 1, v153);
                v157 = v156 + 1;
                v153 = v199;
              }

              *(v153 + 2) = v157;
              v158 = &v153[64 * v156];
              *(v158 + 4) = v149;
              *(v158 + 5) = v150;
              *(v158 + 6) = v151;
              *(v158 + 7) = v152;
              *(v158 + 8) = v205;
              v158[72] = 1;
              v159 = *(&v208 + 3);
              *(v158 + 73) = v208;
              *(v158 + 19) = v159;
              *(v158 + 10) = 0xD000000000000021;
              *(v158 + 11) = 0x80000001B7D57E30;
              *(v2 + 16) = v153;
              result = swift_endAccess();
              goto LABEL_145;
            }
          }

          break;
        }
      }

LABEL_145:
      v160 = *(a1 + 16);
      v161 = *(v160 + 16);
      v162 = (v160 + 32);
      while (v161)
      {
        v163 = *v162++;
        --v161;
        if (v163 == 64)
        {
          result = swift_beginAccess();
          v164 = *(a2 + 16);
          v165 = *(v164 + 16);
          v166 = (v164 + 32);
          while (v165)
          {
            v167 = *v166++;
            --v165;
            if (v167 == 64)
            {
              swift_beginAccess();
              v168 = *(a1 + 88);
              v210 = *(a1 + 72);
              v211 = v168;
              swift_beginAccess();
              v169 = *(a2 + 88);
              v208 = *(a2 + 72);
              v209 = v169;
              result = sub_1B7CA0F3C(&v210, &v208, 0xD000000000000016, 0x80000001B7D57E60);
              goto LABEL_152;
            }
          }

          break;
        }
      }

LABEL_152:
      v170 = *(a1 + 16);
      v171 = *(v170 + 16);
      v172 = (v170 + 32);
      while (v171)
      {
        v173 = *v172++;
        --v171;
        if (v173 == 128)
        {
          result = swift_beginAccess();
          v174 = *(a2 + 16);
          v175 = *(v174 + 16);
          v176 = (v174 + 32);
          while (v175)
          {
            v177 = *v176++;
            --v175;
            if (v177 == 128)
            {
              swift_beginAccess();
              v178 = *(a1 + 120);
              v210 = *(a1 + 104);
              v211 = v178;
              swift_beginAccess();
              v179 = *(a2 + 120);
              v208 = *(a2 + 104);
              v209 = v179;
              result = sub_1B7CA0F3C(&v210, &v208, 0xD000000000000018, 0x80000001B7D57E80);
              goto LABEL_159;
            }
          }

          break;
        }
      }

LABEL_159:
      v180 = *(a1 + 16);
      v181 = *(v180 + 16);
      v182 = (v180 + 32);
      while (v181)
      {
        v183 = *v182++;
        --v181;
        if (v183 == 256)
        {
          swift_beginAccess();
          result = sub_1B7C6A644(256, *(a2 + 16));
          if (result)
          {
            swift_beginAccess();
            v184 = *(a1 + 152);
            v210 = *(a1 + 136);
            v211 = v184;
            swift_beginAccess();
            v185 = *(a2 + 152);
            v208 = *(a2 + 136);
            v209 = v185;
            result = sub_1B7CA1518(&v210, &v208, 0xD000000000000015, 0x80000001B7D57EA0);
          }

          break;
        }
      }

      v186 = *(a1 + 16);
      v187 = *(v186 + 16);
      v188 = (v186 + 32);
      while (v187)
      {
        v189 = *v188++;
        --v187;
        if (v189 == 2048)
        {
          swift_beginAccess();
          result = sub_1B7C6A644(2048, *(a2 + 16));
          if (result)
          {
            swift_beginAccess();
            v190 = v206[1];
            v210 = *v206;
            v211 = v190;
            swift_beginAccess();
            v191 = v207[1];
            v208 = *v207;
            v209 = v191;
            return sub_1B7CA0F3C(&v210, &v208, 0x4320656C646E6148, 0xED000073746E756FLL);
          }

          return result;
        }
      }

      return result;
    }

    v9 = *v8++;
    --v7;
  }

  while (v9 != 1);
  result = swift_beginAccess();
  v10 = *(a2 + 16);
  v11 = *(v10 + 16);
  v12 = (v10 + 32);
  do
  {
    if (!v11)
    {
      goto LABEL_19;
    }

    v13 = *v12++;
    --v11;
  }

  while (v13 != 1);
  swift_beginAccess();
  v14 = *(a1 + 24);
  result = swift_beginAccess();
  v15 = *(a2 + 24);
  if (v14 == v15)
  {
    v16 = 0;
    v17 = 0xE200000000000000;
    v18 = 15677;
LABEL_14:
    swift_beginAccess();
    v19 = *(v2 + 16);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v19;
    if ((v20 & 1) == 0)
    {
      v19 = sub_1B7CA208C(0, *(v19 + 2) + 1, 1, v19);
      *(v2 + 16) = v19;
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      v192 = sub_1B7CA208C((v21 > 1), v22 + 1, 1, v19);
      v23 = v22 + 1;
      v19 = v192;
    }

    *(v19 + 2) = v23;
    v24 = &v19[64 * v22];
    *(v24 + 4) = v14;
    *(v24 + 5) = v15;
    *(v24 + 6) = v16;
    *(v24 + 7) = v18;
    *(v24 + 8) = v17;
    v24[72] = 1;
    v25 = *(&v208 + 3);
    *(v24 + 73) = v208;
    *(v24 + 19) = v25;
    *(v24 + 10) = 0x756F432074616843;
    *(v24 + 11) = 0xEA0000000000746ELL;
    *(v2 + 16) = v19;
    result = swift_endAccess();
    goto LABEL_19;
  }

  v16 = v15 - v14;
  if (v15 >= v14)
  {
    if ((v15 - v14) >= 0)
    {
      v17 = 0xE100000000000000;
      v18 = 60;
      goto LABEL_14;
    }
  }

  else
  {
    v16 = v14 - v15;
    if ((v14 - v15) >= 0)
    {
      v17 = 0xE100000000000000;
      v18 = 62;
      goto LABEL_14;
    }

    __break(1u);
  }

  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
  return result;
}

uint64_t StorageInspectionCrossCheckReport.init(from:)(void *a1)
{
  v3 = v1;
  v14 = sub_1B7C107FC(&qword_1EBA53258, &qword_1B7D10E30);
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = &v14 - v6;
  v8 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = v8;
  v9 = a1[3];
  v15 = a1;
  sub_1B7AE9124(a1, v9);
  sub_1B7C9F444();
  sub_1B7CFF820();
  if (v2)
  {
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA53268, &unk_1B7D10E38);
    v17 = 0;
    sub_1B7CA1B14(&qword_1EBA53270, sub_1B7C9F498, MEMORY[0x1E69E6330]);
    v10 = v14;
    sub_1B7CFF440();
    v11 = v16;
    swift_beginAccess();
    *(v3 + 16) = v11;

    sub_1B7C107FC(&qword_1EBA52C10, &qword_1B7D0E600);
    LOBYTE(v16) = 1;
    sub_1B7C9F4EC(&qword_1EBA52C18, &qword_1EBA52A78, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
    sub_1B7CFF440();
    (*(v5 + 8))(v7, v10);
    v13 = v18;
    swift_beginAccess();
    *(v3 + 24) = v13;
  }

  sub_1B7AE9168(v15);
  return v3;
}

unint64_t sub_1B7C9F444()
{
  result = qword_1EBA53260;
  if (!qword_1EBA53260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53260);
  }

  return result;
}

unint64_t sub_1B7C9F498()
{
  result = qword_1EBA53278;
  if (!qword_1EBA53278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53278);
  }

  return result;
}

uint64_t sub_1B7C9F4EC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA52C10, &qword_1B7D0E600);
    sub_1B7CA1BE0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t StorageInspectionCrossCheckReport.deinit()
{

  return v0;
}

void sub_1B7C9F5D4(uint64_t a1)
{
  v3 = sub_1B7CFDFF0();
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C219E4(0x73697261706D6F43, 0xEB00000000736E6FLL);
  v6 = *(a1 + 24);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    goto LABEL_30;
  }

  v50 = v3;
  *(a1 + 24) = v8;
  swift_beginAccess();
  v48 = v1;
  v9 = *(v1 + 16);
  v10 = *(v9 + 16);

  v49 = v10;
  if (v10)
  {
    v11 = 0;
    v12 = (v9 + 32);
    while (v11 < *(v9 + 16))
    {
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[3];
      v60 = v12[2];
      v61 = v15;
      v59[0] = v13;
      v59[1] = v14;
      v57 = 0;
      v58 = 0xE000000000000000;
      v53 = *v12;
      v54 = v12[1];
      v55 = v12[2];
      v56 = v12[3];
      if (BYTE8(v60))
      {
        sub_1B7CA0740(v59, v52);
        v16 = sub_1B7CA05CC();
      }

      else
      {
        sub_1B7CA0740(v59, v52);
        v16 = sub_1B7CA038C();
      }

      MEMORY[0x1B8CADCA0](v16);

      if (*(a1 + 24) + 0x4000000000000000 < 0)
      {
        goto LABEL_28;
      }

      v17 = v57;
      v18 = v58;
      *&v53 = sub_1B7CFEC10();
      *(&v53 + 1) = v19;
      MEMORY[0x1B8CADCA0](v17, v18);

      v20 = v53;
      swift_beginAccess();
      v21 = *(a1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_1B7AF182C(0, *(v21 + 2) + 1, 1, v21);
        *(a1 + 16) = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_1B7AF182C((v23 > 1), v24 + 1, 1, v21);
      }

      ++v11;
      *(v21 + 2) = v24 + 1;
      *&v21[16 * v24 + 32] = v20;
      *(a1 + 16) = v21;
      swift_endAccess();
      sub_1B7CA1AE4(v59);
      v12 += 4;
      if (v49 == v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_14:

  v25 = *(a1 + 24);
  v7 = __OFSUB__(v25, 1);
  v26 = v25 - 1;
  if (v7)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(a1 + 24) = v26;
  sub_1B7C219E4(0xD000000000000021, 0x80000001B7D54790);
  v27 = *(a1 + 24);
  v7 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v7)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *(a1 + 24) = v28;
  v29 = v48;
  swift_beginAccess();
  v30 = *(v29 + 24);
  v31 = *(v30 + 16);
  if (v31)
  {
    v49 = *(v51 + 16);
    v32 = v30 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v48 = *(v51 + 72);
    v51 += 16;
    v33 = (v51 - 8);
    v47[1] = v30;

    v34 = v50;
    while (1)
    {
      (v49)(v5, v32, v34);
      v35 = sub_1B7CFDFC0();
      if (*(a1 + 24) + 0x4000000000000000 < 0)
      {
        break;
      }

      v37 = v35;
      v38 = v36;
      *&v53 = sub_1B7CFEC10();
      *(&v53 + 1) = v39;
      MEMORY[0x1B8CADCA0](v37, v38);

      v40 = v53;
      swift_beginAccess();
      v41 = *(a1 + 16);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = v41;
      if ((v42 & 1) == 0)
      {
        v41 = sub_1B7AF182C(0, *(v41 + 2) + 1, 1, v41);
        *(a1 + 16) = v41;
      }

      v44 = *(v41 + 2);
      v43 = *(v41 + 3);
      if (v44 >= v43 >> 1)
      {
        v41 = sub_1B7AF182C((v43 > 1), v44 + 1, 1, v41);
      }

      *(v41 + 2) = v44 + 1;
      *&v41[16 * v44 + 32] = v40;
      *(a1 + 16) = v41;
      swift_endAccess();
      v34 = v50;
      (*v33)(v5, v50);
      v32 += v48;
      if (!--v31)
      {

        goto LABEL_25;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_25:
  v45 = *(a1 + 24);
  v7 = __OFSUB__(v45, 1);
  v46 = v45 - 1;
  if (!v7)
  {
    *(a1 + 24) = v46;
    return;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1B7C9FB00(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA53280, &unk_1B7D10E48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C9F444();
  sub_1B7CFF830();
  swift_beginAccess();
  v12 = *(v3 + 16);
  LOBYTE(v11) = 0;
  sub_1B7C107FC(&qword_1EBA53268, &unk_1B7D10E38);
  sub_1B7CA1B14(&qword_1EBA53288, sub_1B7CA1B8C, MEMORY[0x1E69E6300]);
  sub_1B7CFF500();
  if (!v2)
  {
    swift_beginAccess();
    v11 = *(v3 + 24);
    v10[7] = 1;
    sub_1B7C107FC(&qword_1EBA52C10, &qword_1B7D0E600);
    sub_1B7C9F4EC(&qword_1EBA52C28, &qword_1EBA52AB8, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
    sub_1B7CFF500();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_1B7C9FD4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;

  return result;
}

uint64_t StorageInspectionCrossCheckReport.Comparison.description.getter(uint64_t a1)
{
  if (*(v1 + 40))
  {
    return sub_1B7CA05CC();
  }

  else
  {
    return sub_1B7CA038C();
  }
}

uint64_t sub_1B7C9FE34()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x73697261706D6F63;
  }
}

void sub_1B7C9FE7C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73697261706D6F63 && a2 == 0xEC000000736E6F69;
  if (v6 || (sub_1B7CFF590() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7D57D50 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B7CFF590();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7C9FF64(uint64_t a1)
{
  v2 = sub_1B7C9F444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C9FFA0(uint64_t a1)
{
  v2 = sub_1B7C9F444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StorageInspectionCrossCheckReport.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t StorageInspectionCrossCheckReport.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  StorageInspectionCrossCheckReport.init(from:)(a1);
  return v2;
}

uint64_t sub_1B7CA006C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t StorageInspectionCrossCheckReport.description.getter(__n128 a1)
{
  v6 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](663610, 0xE300000000000000);
  type metadata accessor for StorageInspectorReportStringBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  *(inited + 24) = 0;
  sub_1B7C9F5D4(inited);
  swift_beginAccess();
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v2 = sub_1B7CFEA10();
  v4 = v3;

  MEMORY[0x1B8CADCA0](v2, v4);

  return v6;
}

IMDPersistence::StorageInspectionCrossCheckReport::Comparison::ComparisonType_optional __swiftcall StorageInspectionCrossCheckReport.Comparison.ComparisonType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t StorageInspectionCrossCheckReport.Comparison.sign.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t StorageInspectionCrossCheckReport.Comparison.comparisionDescription.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1B7CA038C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  v23 = v0[2];
  v4 = v0[4];
  v5 = v0[6];
  sub_1B7CFF210();

  v24 = v5;
  MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
  v6 = objc_opt_self();
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v8 = [v6 stringFromHugeNumber_];

  v9 = sub_1B7CFEA60();
  v11 = v10;

  MEMORY[0x1B8CADCA0](v9, v11);

  MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
  MEMORY[0x1B8CADCA0](v3, v4);
  MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v13 = [v6 stringFromHugeNumber_];

  v14 = sub_1B7CFEA60();
  v16 = v15;

  MEMORY[0x1B8CADCA0](v14, v16);

  MEMORY[0x1B8CADCA0](0x726566666964203ALL, 0xEE00203A65636E65);
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v18 = [v6 stringFromHugeNumber_];

  v19 = sub_1B7CFEA60();
  v21 = v20;

  MEMORY[0x1B8CADCA0](v19, v21);

  return v24;
}

uint64_t sub_1B7CA05CC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[6];
  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
  v4 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v4);

  MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
  MEMORY[0x1B8CADCA0](v1, v2);
  MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
  v5 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v5);

  MEMORY[0x1B8CADCA0](0x726566666964203ALL, 0xEE00203A65636E65);
  v6 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v6);

  return v3;
}

uint64_t sub_1B7CA077C()
{
  v1 = 7563372;
  v2 = *v0;
  v3 = 1852270963;
  v4 = 0x73697261706D6F63;
  if (v2 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 7563378;
  if (v2 != 1)
  {
    v5 = 0x6E65726566666964;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7CA0830@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7CA3FC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7CA0864(uint64_t a1)
{
  v2 = sub_1B7CA3A7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7CA08A0(uint64_t a1)
{
  v2 = sub_1B7CA3A7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StorageInspectionCrossCheckReport.Comparison.encode(to:)(void *a1)
{
  v3 = sub_1B7C107FC(&qword_1EBA53298, &qword_1B7D10E58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v18 = *(v1 + 16);
  v19 = v7;
  v16 = *(v1 + 32);
  v17 = v8;
  v15 = *(v1 + 40);
  v9 = *(v1 + 56);
  v14[1] = *(v1 + 48);
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CA3A7C();
  v10 = v3;
  sub_1B7CFF830();
  v27 = 0;
  v11 = v20;
  sub_1B7CFF520();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = v15;
  v20 = v9;
  v26 = 1;
  sub_1B7CFF520();
  v25 = 2;
  sub_1B7CFF510();
  v24 = 3;
  sub_1B7CFF4E0();
  v23 = v12;
  v22 = 4;
  sub_1B7CA3AD0();
  sub_1B7CFF500();
  v21 = 5;
  sub_1B7CFF4E0();
  return (*(v4 + 8))(v6, v10);
}

void StorageInspectionCrossCheckReport.Comparison.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1B7C107FC(&qword_1EBA532B0, &qword_1B7D10E60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CA3A7C();
  sub_1B7CFF820();
  if (v2)
  {
    sub_1B7AE9168(a1);
  }

  else
  {
    LOBYTE(v27[0]) = 0;
    v9 = sub_1B7CFF460();
    LOBYTE(v27[0]) = 1;
    v10 = sub_1B7CFF460();
    LOBYTE(v27[0]) = 2;
    v22 = sub_1B7CFF450();
    LOBYTE(v27[0]) = 3;
    v20 = sub_1B7CFF420();
    v21 = v11;
    LOBYTE(v23) = 4;
    sub_1B7CA3B24();
    sub_1B7CFF440();
    v31 = LOBYTE(v27[0]);
    v32 = 5;
    v12 = sub_1B7CFF420();
    v13 = v8;
    v15 = v14;
    (*(v6 + 8))(v13, v5);
    *&v23 = v9;
    *(&v23 + 1) = v10;
    v17 = v21;
    v16 = v22;
    *&v24 = v22;
    *(&v24 + 1) = v20;
    *&v25 = v21;
    BYTE8(v25) = v31;
    *&v26 = v12;
    *(&v26 + 1) = v15;
    v18 = v24;
    *a2 = v23;
    a2[1] = v18;
    v19 = v26;
    a2[2] = v25;
    a2[3] = v19;
    sub_1B7CA0740(&v23, v27);
    sub_1B7AE9168(a1);
    v27[0] = v9;
    v27[1] = v10;
    v27[2] = v16;
    v27[3] = v20;
    v27[4] = v17;
    v28 = v31;
    v29 = v12;
    v30 = v15;
    sub_1B7CA1AE4(v27);
  }
}

uint64_t sub_1B7CA0EB4()
{
  if (*(v0 + 40))
  {
    return sub_1B7CA05CC();
  }

  else
  {
    return sub_1B7CA038C();
  }
}

uint64_t sub_1B7CA0F3C(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v6 = *a1;
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v45 = a2[1];
  v46 = a1[1];
  v44 = a2[2];
  v48 = a2[3];

  result = MEMORY[0x1B8CADCA0](0x6C61746F5420, 0xE600000000000000);
  if (v6 == v9)
  {
    v11 = 0;
    v43 = 0xE200000000000000;
    v12 = 15677;
    goto LABEL_8;
  }

  v11 = v9 - v6;
  if (v9 < v6)
  {
    v11 = v6 - v9;
    if ((v6 - v9) >= 0)
    {
      v43 = 0xE100000000000000;
      v12 = 62;
      goto LABEL_8;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((v9 - v6) < 0)
  {
    goto LABEL_47;
  }

  v43 = 0xE100000000000000;
  v12 = 60;
LABEL_8:
  swift_beginAccess();
  v13 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v13;
  v47 = v8;
  v42 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1B7CA208C(0, *(v13 + 2) + 1, 1, v13);
    *(v5 + 16) = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1B7CA208C((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[64 * v16];
  *(v17 + 4) = v6;
  *(v17 + 5) = v9;
  *(v17 + 6) = v11;
  *(v17 + 7) = v12;
  *(v17 + 8) = v43;
  v17[72] = 1;
  *(v17 + 73) = *v56;
  *(v17 + 19) = *&v56[3];
  *(v17 + 10) = a3;
  *(v17 + 11) = a4;
  *(v5 + 16) = v13;
  swift_endAccess();
  sub_1B7CFF210();

  result = MEMORY[0x1B8CADCA0](0x65746E6572615020, 0xEF746E756F432064);
  if (v47 == v48)
  {
    v18 = 0;
    v19 = 0xE200000000000000;
    v20 = 15677;
    goto LABEL_19;
  }

  v18 = v48 - v47;
  if (v48 < v47)
  {
    v18 = v47 - v48;
    if ((v47 - v48) >= 0)
    {
      v19 = 0xE100000000000000;
      v20 = 62;
      goto LABEL_19;
    }

    goto LABEL_48;
  }

  if ((v48 - v47) < 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v19 = 0xE100000000000000;
  v20 = 60;
LABEL_19:
  swift_beginAccess();
  v21 = *(v5 + 16);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v21;
  if ((v22 & 1) == 0)
  {
    v21 = sub_1B7CA208C(0, *(v21 + 2) + 1, 1, v21);
    *(v5 + 16) = v21;
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1B7CA208C((v23 > 1), v24 + 1, 1, v21);
  }

  *(v21 + 2) = v24 + 1;
  v25 = &v21[64 * v24];
  *(v25 + 4) = v47;
  *(v25 + 5) = v48;
  *(v25 + 6) = v18;
  *(v25 + 7) = v20;
  *(v25 + 8) = v19;
  v25[72] = 1;
  *(v25 + 73) = *v53;
  *(v25 + 19) = *&v53[3];
  *(v25 + 10) = a3;
  *(v25 + 11) = a4;
  *(v5 + 16) = v21;
  swift_endAccess();
  sub_1B7CFF210();

  result = MEMORY[0x1B8CADCA0](0x656E616870724F20, 0xEF746E756F432064);
  if (v46 == v45)
  {
    v26 = 0;
    v27 = 0xE200000000000000;
    v28 = 15677;
    goto LABEL_30;
  }

  v26 = v45 - v46;
  if (v45 < v46)
  {
    v26 = v46 - v45;
    if ((v46 - v45) >= 0)
    {
      v27 = 0xE100000000000000;
      v28 = 62;
      goto LABEL_30;
    }

    goto LABEL_50;
  }

  if ((v45 - v46) < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v27 = 0xE100000000000000;
  v28 = 60;
LABEL_30:
  swift_beginAccess();
  v29 = *(v5 + 16);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v29;
  if ((v30 & 1) == 0)
  {
    v29 = sub_1B7CA208C(0, *(v29 + 2) + 1, 1, v29);
    *(v5 + 16) = v29;
  }

  v32 = *(v29 + 2);
  v31 = *(v29 + 3);
  if (v32 >= v31 >> 1)
  {
    v29 = sub_1B7CA208C((v31 > 1), v32 + 1, 1, v29);
  }

  *(v29 + 2) = v32 + 1;
  v33 = &v29[64 * v32];
  *(v33 + 4) = v46;
  *(v33 + 5) = v45;
  *(v33 + 6) = v26;
  *(v33 + 7) = v28;
  *(v33 + 8) = v27;
  v33[72] = 1;
  *(v33 + 73) = *v52;
  *(v33 + 19) = *&v52[3];
  *(v33 + 10) = a3;
  *(v33 + 11) = a4;
  *(v5 + 16) = v29;
  swift_endAccess();
  sub_1B7CFF210();

  result = MEMORY[0x1B8CADCA0](0xD000000000000021, 0x80000001B7D57EF0);
  if (v7 != v44)
  {
    v34 = v44 - v7;
    if (v44 >= v42)
    {
      if ((v44 - v42) >= 0)
      {
        v35 = 0xE100000000000000;
        v36 = 60;
        goto LABEL_41;
      }

LABEL_53:
      __break(1u);
      return result;
    }

    v34 = v42 - v44;
    if ((v42 - v44) >= 0)
    {
      v35 = 0xE100000000000000;
      v36 = 62;
      goto LABEL_41;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v34 = 0;
  v35 = 0xE200000000000000;
  v36 = 15677;
LABEL_41:
  swift_beginAccess();
  v37 = *(v5 + 16);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v37;
  if ((v38 & 1) == 0)
  {
    v37 = sub_1B7CA208C(0, *(v37 + 2) + 1, 1, v37);
    *(v5 + 16) = v37;
  }

  v40 = *(v37 + 2);
  v39 = *(v37 + 3);
  if (v40 >= v39 >> 1)
  {
    v37 = sub_1B7CA208C((v39 > 1), v40 + 1, 1, v37);
  }

  *(v37 + 2) = v40 + 1;
  v41 = &v37[64 * v40];
  *(v41 + 4) = v42;
  *(v41 + 5) = v44;
  *(v41 + 6) = v34;
  *(v41 + 7) = v36;
  *(v41 + 8) = v35;
  v41[72] = 1;
  *(v41 + 73) = *v51;
  *(v41 + 19) = *&v51[3];
  *(v41 + 10) = a3;
  *(v41 + 11) = a4;
  *(v5 + 16) = v37;
  return swift_endAccess();
}

uint64_t sub_1B7CA1518(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v6 = *a1;
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v45 = a2[1];
  v46 = a1[1];
  v44 = a2[2];
  v48 = a2[3];

  result = MEMORY[0x1B8CADCA0](0x657A695320, 0xE500000000000000);
  if (v6 == v9)
  {
    v11 = 0;
    v43 = 0xE200000000000000;
    v12 = 15677;
    goto LABEL_8;
  }

  v11 = v9 - v6;
  if (v9 < v6)
  {
    v11 = v6 - v9;
    if ((v6 - v9) >= 0)
    {
      v43 = 0xE100000000000000;
      v12 = 62;
      goto LABEL_8;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((v9 - v6) < 0)
  {
    goto LABEL_47;
  }

  v43 = 0xE100000000000000;
  v12 = 60;
LABEL_8:
  swift_beginAccess();
  v13 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v13;
  v47 = v8;
  v42 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1B7CA208C(0, *(v13 + 2) + 1, 1, v13);
    *(v5 + 16) = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1B7CA208C((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[64 * v16];
  *(v17 + 4) = v6;
  *(v17 + 5) = v9;
  *(v17 + 6) = v11;
  *(v17 + 7) = v12;
  *(v17 + 8) = v43;
  v17[72] = 0;
  *(v17 + 73) = *v56;
  *(v17 + 19) = *&v56[3];
  *(v17 + 10) = a3;
  *(v17 + 11) = a4;
  *(v5 + 16) = v13;
  swift_endAccess();
  sub_1B7CFF210();

  result = MEMORY[0x1B8CADCA0](0x65746E6572615020, 0xEE00657A69532064);
  if (v47 == v48)
  {
    v18 = 0;
    v19 = 0xE200000000000000;
    v20 = 15677;
    goto LABEL_19;
  }

  v18 = v48 - v47;
  if (v48 < v47)
  {
    v18 = v47 - v48;
    if ((v47 - v48) >= 0)
    {
      v19 = 0xE100000000000000;
      v20 = 62;
      goto LABEL_19;
    }

    goto LABEL_48;
  }

  if ((v48 - v47) < 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v19 = 0xE100000000000000;
  v20 = 60;
LABEL_19:
  swift_beginAccess();
  v21 = *(v5 + 16);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v21;
  if ((v22 & 1) == 0)
  {
    v21 = sub_1B7CA208C(0, *(v21 + 2) + 1, 1, v21);
    *(v5 + 16) = v21;
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1B7CA208C((v23 > 1), v24 + 1, 1, v21);
  }

  *(v21 + 2) = v24 + 1;
  v25 = &v21[64 * v24];
  *(v25 + 4) = v47;
  *(v25 + 5) = v48;
  *(v25 + 6) = v18;
  *(v25 + 7) = v20;
  *(v25 + 8) = v19;
  v25[72] = 0;
  *(v25 + 73) = *v53;
  *(v25 + 19) = *&v53[3];
  *(v25 + 10) = a3;
  *(v25 + 11) = a4;
  *(v5 + 16) = v21;
  swift_endAccess();
  sub_1B7CFF210();

  result = MEMORY[0x1B8CADCA0](0x656E616870724F20, 0xEE00657A69532064);
  if (v46 == v45)
  {
    v26 = 0;
    v27 = 0xE200000000000000;
    v28 = 15677;
    goto LABEL_30;
  }

  v26 = v45 - v46;
  if (v45 < v46)
  {
    v26 = v46 - v45;
    if ((v46 - v45) >= 0)
    {
      v27 = 0xE100000000000000;
      v28 = 62;
      goto LABEL_30;
    }

    goto LABEL_50;
  }

  if ((v45 - v46) < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v27 = 0xE100000000000000;
  v28 = 60;
LABEL_30:
  swift_beginAccess();
  v29 = *(v5 + 16);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v29;
  if ((v30 & 1) == 0)
  {
    v29 = sub_1B7CA208C(0, *(v29 + 2) + 1, 1, v29);
    *(v5 + 16) = v29;
  }

  v32 = *(v29 + 2);
  v31 = *(v29 + 3);
  if (v32 >= v31 >> 1)
  {
    v29 = sub_1B7CA208C((v31 > 1), v32 + 1, 1, v29);
  }

  *(v29 + 2) = v32 + 1;
  v33 = &v29[64 * v32];
  *(v33 + 4) = v46;
  *(v33 + 5) = v45;
  *(v33 + 6) = v26;
  *(v33 + 7) = v28;
  *(v33 + 8) = v27;
  v33[72] = 0;
  *(v33 + 73) = *v52;
  *(v33 + 19) = *&v52[3];
  *(v33 + 10) = a3;
  *(v33 + 11) = a4;
  *(v5 + 16) = v29;
  swift_endAccess();
  sub_1B7CFF210();

  result = MEMORY[0x1B8CADCA0](0xD000000000000020, 0x80000001B7D57EC0);
  if (v7 != v44)
  {
    v34 = v44 - v7;
    if (v44 >= v42)
    {
      if ((v44 - v42) >= 0)
      {
        v35 = 0xE100000000000000;
        v36 = 60;
        goto LABEL_41;
      }

LABEL_53:
      __break(1u);
      return result;
    }

    v34 = v42 - v44;
    if ((v42 - v44) >= 0)
    {
      v35 = 0xE100000000000000;
      v36 = 62;
      goto LABEL_41;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v34 = 0;
  v35 = 0xE200000000000000;
  v36 = 15677;
LABEL_41:
  swift_beginAccess();
  v37 = *(v5 + 16);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v37;
  if ((v38 & 1) == 0)
  {
    v37 = sub_1B7CA208C(0, *(v37 + 2) + 1, 1, v37);
    *(v5 + 16) = v37;
  }

  v40 = *(v37 + 2);
  v39 = *(v37 + 3);
  if (v40 >= v39 >> 1)
  {
    v37 = sub_1B7CA208C((v39 > 1), v40 + 1, 1, v37);
  }

  *(v37 + 2) = v40 + 1;
  v41 = &v37[64 * v40];
  *(v41 + 4) = v42;
  *(v41 + 5) = v44;
  *(v41 + 6) = v34;
  *(v41 + 7) = v36;
  *(v41 + 8) = v35;
  v41[72] = 0;
  *(v41 + 73) = *v51;
  *(v41 + 19) = *&v51[3];
  *(v41 + 10) = a3;
  *(v41 + 11) = a4;
  *(v5 + 16) = v37;
  return swift_endAccess();
}

uint64_t sub_1B7CA1B14(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA53268, &unk_1B7D10E38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7CA1B8C()
{
  result = qword_1EBA53290;
  if (!qword_1EBA53290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53290);
  }

  return result;
}

uint64_t sub_1B7CA1BE0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B7CFDFF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1B7CA1C24(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA53328, &qword_1B7D113A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B7CA1DEC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_1B7C107FC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1B7CA1F58(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B7C107FC(&qword_1EBA53360, &qword_1B7D113E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1B7C107FC(&qword_1EBA531D8, &unk_1B7D10860);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7CA208C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA53350, &qword_1B7D113D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7CA21D4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_1B7C107FC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
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

char *sub_1B7CA22F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA53390, &unk_1B7D11440);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B7CA23F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B7CA2518(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA53398, &qword_1B7D11450);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

void *sub_1B7CA2634(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B7C107FC(&qword_1EBA533A0, &qword_1B7D11458);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1B7C107FC(&qword_1EBA533A8, &unk_1B7D11460);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7CA27B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_1B7C107FC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
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
    v16 = MEMORY[0x1E69E7CC0];
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
    sub_1B7C107FC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1B7CA28E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA533E0, &qword_1B7D114A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1B7CA2A3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA53388, &qword_1B7D11438);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1B7CA2B48(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA53308, &qword_1B7D11378);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1B7CA2C54(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA533F8, &qword_1B7D114D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B7CA2D58(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B7C107FC(&qword_1EBA53378, &unk_1B7D11418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA531F0, &qword_1B7D10880);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7CA2EA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA52468, &qword_1B7D0CA58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1B7CA2FC8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_1B7C107FC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
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
    v12 = MEMORY[0x1E69E7CC0];
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

char *sub_1B7CA30C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA533E8, &unk_1B7D114B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B7CA31C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA533D8, &qword_1B7D114A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B7CA32D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B7C107FC(&qword_1EBA53400, &qword_1B7D114D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA53408, &unk_1B7D114E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7CA3478(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B7C107FC(&qword_1EBA53370, &qword_1B7D11408);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1B7C107FC(&qword_1EBA531E8, &qword_1B7D11410);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7CA35AC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B7C107FC(&qword_1EBA53368, &unk_1B7D113F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1B7C107FC(&qword_1EBA531E0, &unk_1B7D10870);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7CA3704(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA53320, &unk_1B7D11390);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B7CA384C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1B7C107FC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

uint64_t _s14IMDPersistence33StorageInspectionCrossCheckReportC10ComparisonV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    if (v5 == *(a2 + 48) && v6 == *(a2 + 56))
    {
      return 1;
    }

    else
    {
      return sub_1B7CFF590();
    }
  }

  return result;
}

unint64_t sub_1B7CA3A7C()
{
  result = qword_1EBA532A0;
  if (!qword_1EBA532A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532A0);
  }

  return result;
}

unint64_t sub_1B7CA3AD0()
{
  result = qword_1EBA532A8;
  if (!qword_1EBA532A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532A8);
  }

  return result;
}

unint64_t sub_1B7CA3B24()
{
  result = qword_1EBA532B8;
  if (!qword_1EBA532B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532B8);
  }

  return result;
}

unint64_t sub_1B7CA3B7C()
{
  result = qword_1EBA532C0;
  if (!qword_1EBA532C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532C0);
  }

  return result;
}

uint64_t sub_1B7CA3CD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7CA3D20(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_1B7CA3DB4()
{
  result = qword_1EBA532C8;
  if (!qword_1EBA532C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532C8);
  }

  return result;
}

unint64_t sub_1B7CA3E0C()
{
  result = qword_1EBA532D0;
  if (!qword_1EBA532D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532D0);
  }

  return result;
}

unint64_t sub_1B7CA3E64()
{
  result = qword_1EBA532D8;
  if (!qword_1EBA532D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532D8);
  }

  return result;
}

unint64_t sub_1B7CA3EBC()
{
  result = qword_1EBA532E0;
  if (!qword_1EBA532E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532E0);
  }

  return result;
}

unint64_t sub_1B7CA3F14()
{
  result = qword_1EBA532E8;
  if (!qword_1EBA532E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532E8);
  }

  return result;
}

unint64_t sub_1B7CA3F6C()
{
  result = qword_1EBA532F0;
  if (!qword_1EBA532F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA532F0);
  }

  return result;
}

uint64_t sub_1B7CA3FC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7563378 && a2 == 0xE300000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65726566666964 && a2 == 0xEA00000000006563 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1852270963 && a2 == 0xE400000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73697261706D6F63 && a2 == 0xEE00657079546E6FLL || (sub_1B7CFF590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7D57D70 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1B7CA41D0()
{
  result = qword_1EBA533C0;
  if (!qword_1EBA533C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA533C0);
  }

  return result;
}

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.rowCount(forTable:)(Swift::String forTable)
{
  v3 = v2;
  v4 = v1;
  object = forTable._object;
  countAndFlagsBits = forTable._countAndFlagsBits;
  v18 = *MEMORY[0x1E69E9840];
  sub_1B7CFF210();

  v16 = 0xD000000000000015;
  v17 = 0x80000001B7D57F20;
  MEMORY[0x1B8CADCA0](countAndFlagsBits, object);
  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  v7 = objc_autoreleasePoolPush();
  v8 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery((v4 + 16), v8);
  swift_endAccess();

  swift_beginAccess();
  v15 = 0;
  IMDSqlOperationGetError(v4 + 16, &v15);
  v9 = v15;
  swift_endAccess();
  if (v9)
  {
    swift_willThrow();
    v9;
LABEL_8:
    objc_autoreleasePoolPop(v7);
  }

  sub_1B7CA4484(v4, &v16);
  if (v2)
  {
LABEL_6:
    swift_beginAccess();
    IMDSqlOperationFinishQuery(v4 + 16);
    v15 = 0;
    IMDSqlOperationGetError(v4 + 16, &v15);
    v13 = v15;
    swift_endAccess();
    swift_willThrow();
    if (v13)
    {
      v13;
    }

    goto LABEL_8;
  }

  v10 = v16;
  v11 = v17;
  swift_beginAccess();
  IMDSqlOperationFinishQuery(v4 + 16);
  v15 = 0;
  IMDSqlOperationGetError(v4 + 16, &v15);
  v12 = v15;
  swift_endAccess();
  if (v12)
  {
    swift_willThrow();
    v3 = v12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);

  if (v11)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_1B7CA4484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  if (!HasRows)
  {
LABEL_8:

    v15 = 0;
    v17 = 1;
    goto LABEL_9;
  }

  type metadata accessor for SqlOperation.Row();
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = v5;
    swift_beginAccess();
    v8 = IMDSqlStatementColumnCount((a1 + 48));
    swift_endAccess();
    if (v8)
    {
      swift_beginAccess();
      IMDSqlStatementColumnByIndex((a1 + 48), 0, &v18);
      v9 = v18;
      v10 = v19;
      v11 = v20;
      swift_endAccess();
      v21 = v9;
      v22 = v10;
      v23 = v11;
      if (IMDSqlColumnGetType(&v21) == 1)
      {
        break;
      }
    }

    swift_beginAccess();

    v6 = IMDSqlOperationHasRows(a1 + 16);
    swift_endAccess();
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((a1 + 48), 0, &v18);
  v12 = v18;
  v13 = v19;
  v14 = v20;
  swift_endAccess();
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v15 = IMDInt64FromSqlColumn(&v21);

  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
LABEL_9:
    *a2 = v15;
    *(a2 + 8) = v17;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CA4670()
{

  return swift_deallocClassInstance();
}

double sub_1B7CA46D8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 4) != 0)
  {
    sub_1B7CA4FAC(a1, a2, a3);
  }

  sub_1B7AE3B2C(a1, a2, a4);
  if (!v4)
  {
    sub_1B7AF3FE4(a3);
  }

  return result;
}

void sub_1B7CA47E0(char a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x54414944454D4D49;
    }

    else
    {
      v5 = 0x564953554C435845;
    }

    v6 = 0xE900000000000045;
  }

  else
  {
    v6 = 0xE800000000000000;
    v5 = 0x4445525245464544;
  }

  MEMORY[0x1B8CADCA0](v5, v6);

  sub_1B7AF3098(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1B8CADCA0](0x4341534E41525420, 0xEC0000004E4F4954);
  sub_1B7AE3B2C(0x204E49474542, 0xE600000000000000, 0);
  if (v3)
  {
  }

  else
  {
    sub_1B7AF3FE4(v7);

    sub_1B7C49AEC(a3);
    sub_1B7AE3B2C(0xD000000000000012, 0x80000001B7D57610, 0);
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }
}

void sub_1B7CA4B58(char a1)
{
  v4 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x54414944454D4D49;
    }

    else
    {
      v2 = 0x564953554C435845;
    }

    v3 = 0xE900000000000045;
  }

  else
  {
    v3 = 0xE800000000000000;
    v2 = 0x4445525245464544;
  }

  MEMORY[0x1B8CADCA0](v2, v3);

  sub_1B7AF3098(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1B8CADCA0](0x4341534E41525420, 0xEC0000004E4F4954);
  sub_1B7AE3B2C(0x204E49474542, 0xE600000000000000, 0);
  if (v1)
  {
  }

  else
  {
    sub_1B7AF3FE4(v4);

    sub_1B7CD3FA4();
    sub_1B7AE3B2C(0xD000000000000012, 0x80000001B7D57610, 0);
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1B7CA4ED8(uint64_t a1)
{
  result = type metadata accessor for SQLConnectionConfiguration(319);
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

uint64_t sub_1B7CA4FAC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_1B7C107FC(&qword_1EBA53418, &unk_1B7D11640);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v63 - v8;
  v10 = type metadata accessor for SQLConnectionConfiguration(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B7CFE420();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7AE3EA4(v3 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration, v13);
  sub_1B7CA6CD4(&v13[*(v11 + 36)], v9);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    return sub_1B7AEE190(v9, &qword_1EBA53418, &unk_1B7D11640);
  }

  (*(v15 + 32))(v17, v9, v14);
  v71 = 0xD000000000000013;
  v72 = 0x80000001B7D58080;

  MEMORY[0x1B8CADCA0](a1, a2);
  v19 = sub_1B7AE3B2C(v71, v72, 1);
  v68 = v15;

  v71 = MEMORY[0x1E69E7CC0];

  v20 = sub_1B7C95008(a3, v19, &v71, v19);
  v65 = v19;
  v66 = v14;
  v64 = v71;
  v71 = 10;
  v72 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v20);
  *(&v63 - 2) = &v71;
  v67 = sub_1B7CA57D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B7C1A1B0, (&v63 - 4), a1, a2, &v63);
  v21 = sub_1B7CFE400();
  v22 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1B7AD5000, v21, v22, "EXPLAIN QUERY PLAN FOR:", v23, 2u);
    MEMORY[0x1B8CB0E70](v23, -1, -1);
  }

  v25 = *(v67 + 16);
  v70 = v17;
  if (v25)
  {
    v26 = (v67 + 56);
    *&v24 = 136315138;
    v69 = v24;
    do
    {
      v34 = *(v26 - 3);
      v35 = *(v26 - 2);
      v37 = *(v26 - 1);
      v36 = *v26;

      v38 = sub_1B7CFE400();
      v39 = sub_1B7CFEEE0();
      if (os_log_type_enabled(v38, v39))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v71 = v28;
        *v27 = v69;
        v29 = MEMORY[0x1B8CADC20](v34, v35, v37, v36);
        v31 = v30;

        v32 = sub_1B7AED1B8(v29, v31, &v71);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_1B7AD5000, v38, v39, "  %s", v27, 0xCu);
        sub_1B7AE9168(v28);
        MEMORY[0x1B8CB0E70](v28, -1, -1);
        v33 = v27;
        v17 = v70;
        MEMORY[0x1B8CB0E70](v33, -1, -1);
      }

      else
      {
      }

      v26 += 4;
      --v25;
    }

    while (v25);
  }

  v40 = sub_1B7CFE400();
  v41 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1B7AD5000, v40, v41, "PLAN:", v42, 2u);
    MEMORY[0x1B8CB0E70](v42, -1, -1);
  }

  v43 = v64;
  v44 = *(v64 + 16);
  if (v44)
  {
    v71 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v44, 0);
    v45 = v71;
    v46 = (v43 + 64);
    do
    {
      v47 = *(v46 - 1);
      v48 = *v46;
      v71 = v45;
      v50 = *(v45 + 16);
      v49 = *(v45 + 24);

      if (v50 >= v49 >> 1)
      {
        sub_1B7AECEEC((v49 > 1), v50 + 1, 1);
        v45 = v71;
      }

      *(v45 + 16) = v50 + 1;
      v51 = v45 + 16 * v50;
      *(v51 + 32) = v47;
      *(v51 + 40) = v48;
      v46 += 5;
      --v44;
    }

    while (v44);

    v53 = *(v45 + 16);
    if (!v53)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v45 = MEMORY[0x1E69E7CC0];
  v53 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v53)
  {
LABEL_21:
    v54 = (v45 + 40);
    *&v52 = 136315138;
    v69 = v52;
    do
    {
      v59 = *(v54 - 1);
      v60 = *v54;

      v61 = sub_1B7CFE400();
      v62 = sub_1B7CFEEE0();
      if (os_log_type_enabled(v61, v62))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v71 = v56;
        *v55 = v69;
        v57 = sub_1B7AED1B8(v59, v60, &v71);

        *(v55 + 4) = v57;
        _os_log_impl(&dword_1B7AD5000, v61, v62, "  %s", v55, 0xCu);
        sub_1B7AE9168(v56);
        MEMORY[0x1B8CB0E70](v56, -1, -1);
        v58 = v55;
        v17 = v70;
        MEMORY[0x1B8CB0E70](v58, -1, -1);
      }

      else
      {
      }

      v54 += 2;
      --v53;
    }

    while (v53);
  }

LABEL_26:

  return (*(v68 + 8))(v17, v66);
}

unint64_t sub_1B7CA57D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1B7CFEC40();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1B7CA1C24(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1B7CA1C24((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1B7CFEC20();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1B7CFEB30();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1B7CFEB30();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1B7CFEC40();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1B7CA1C24(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1B7CFEC40();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B7CA1C24(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1B7CA1C24((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1B7CFEB30();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7CA5B98(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1B7AE1160(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1B7CE3244(v14, a3 & 1);
      result = sub_1B7AE1160(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1B7CFF740();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1B7CE7BE8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v21 = (v19[7] + (result << 6));
    v22 = *a1;
    v23 = a1[1];
    v24 = a1[3];
    v21[2] = a1[2];
    v21[3] = v24;
    *v21 = v22;
    v21[1] = v23;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + (result << 6);

  return sub_1B7CA6D44(a1, v20);
}

uint64_t sub_1B7CA5D1C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B7AE11D0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B7CE8638();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B7CE42D8(v16, a4 & 1);
    v11 = sub_1B7AE11D0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1B7CFF740();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    sub_1B7AE9168(v22);

    return sub_1B7AE910C(a1, v22);
  }

  else
  {
    sub_1B7CA65A0(v11, a2, a3, a1, v21);
  }
}

void sub_1B7CA5E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v27 = a1;
  v28 = a2;
  v10 = sub_1B7CFDD90();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1B7C40208(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_1B7CE87E0();
      goto LABEL_9;
    }

    sub_1B7CE459C(v19, a5 & 1);
    v22 = sub_1B7C40208(a4);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    sub_1B7CFF740();
    __break(1u);
    return;
  }

LABEL_9:
  v24 = v28;
  v25 = *v6;
  if (v20)
  {
    v26 = (v25[7] + 24 * v16);
    *v26 = v27;
    v26[1] = v24;
    v26[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v13, a4, v10);
    sub_1B7CA6610(v16, v13, v27, v24, a3, v25);
  }
}

_OWORD *sub_1B7CA6064(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B7C40388(a2);
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
      sub_1B7CE91A4();
      goto LABEL_7;
    }

    sub_1B7CE5934(v13, a3 & 1);
    v19 = sub_1B7C40388(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1B7C41078(a2, v21);
      return sub_1B7CA6778(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1B7CFF740();
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
  sub_1B7AE9168(v17);

  return sub_1B7C255E0(a1, v17);
}

uint64_t sub_1B7CA61DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B7CFE7C0();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1B7C40430(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1B7CE97C8();
      goto LABEL_9;
    }

    sub_1B7CE6164(v16, a3 & 1);
    v19 = sub_1B7C40430(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1B7CFF740();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return sub_1B7CA67F4(v13, v10, a1, v21);
  }
}

uint64_t sub_1B7CA63EC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), void (*a5)(void))
{
  v24 = a4;
  v25 = a5;
  v6 = v5;
  v10 = sub_1B7CFE7C0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1B7C40430(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *v6;
    if (v20)
    {
LABEL_8:
      *(v22[7] + 8 * v16) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v21 >= result && (a3 & 1) == 0)
  {
    result = v24();
    goto LABEL_7;
  }

  v25();
  result = sub_1B7C40430(a2);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1B7CFF740();
    __break(1u);
    return result;
  }

  v16 = result;
  v22 = *v6;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v11 + 16))(v13, a2, v10);
  return sub_1B7CA68D0(v16, v13, a1, v22);
}

uint64_t sub_1B7CA65A0(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B7AE910C(a4, a5[7] + 40 * a1);
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

uint64_t sub_1B7CA6610(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_1B7CFDD90();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

unint64_t sub_1B7CA66E4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_1B7CA6728(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

_OWORD *sub_1B7CA6778(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1B7C255E0(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1B7CA67F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B7CFE7C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_1B7CA68D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B7CFE7C0();
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

uint64_t sub_1B7CA6988(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B7CFF590() & 1;
  }
}

uint64_t sub_1B7CA69E0(uint64_t a1, _BYTE *a2)
{
  ppDb[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for SQLConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (ppDb - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  ppDb[0] = 0;
  sub_1B7CFDFD0();
  if (*a2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1B7CFEAD0();

  v9 = sqlite3_open_v2((v8 + 32), ppDb, v7, 0);

  if (!v9)
  {
    v14 = ppDb[0];
    if (ppDb[0])
    {
      sub_1B7AE3EA4(a2, v6);
      type metadata accessor for SQLConnection(0);
      v11 = swift_allocObject();
      v15 = (v11 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
      v16 = MEMORY[0x1E69E7CC8];
      *v15 = MEMORY[0x1E69E7CC8];
      v15[1] = v16;
      v15[2] = 32;
      *(v11 + 16) = v14;
      *(v11 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 1;
      sub_1B7AE3EA4(v6, v11 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
      if (v6[2])
      {
LABEL_12:
        sub_1B7AE3F08(v6);
        sub_1B7AE3F08(a2);
        v18 = sub_1B7CFDFF0();
        (*(*(v18 - 8) + 8))(a1, v18);
        return v11;
      }

      v17 = v6[1] * 1000.0;
      if (COERCE__INT64(fabs(v17)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v17 > -2147483650.0)
      {
        if (v17 < 2147483650.0)
        {
          sqlite3_busy_timeout(v14, v17);
          goto LABEL_12;
        }

LABEL_16:
        __break(1u);
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  type metadata accessor for SQLConnectionError(0);
  sub_1B7C14C5C();
  swift_allocError();
  v11 = v10;
  v12 = sub_1B7CFDFF0();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1B7AE3F08(a2);
  (*(v13 + 8))(a1, v12);
  return v11;
}