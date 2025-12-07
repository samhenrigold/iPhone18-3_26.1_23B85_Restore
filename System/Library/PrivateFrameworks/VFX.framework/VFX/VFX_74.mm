uint64_t sub_1AF6D4098(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v9 = v8;
    v12 = a3[2];
    v10 = (v12 + v6);
    if (v7)
    {
LABEL_14:
      os_unfair_lock_lock(*(a3[4] + 32 * v9 + 24));
      os_unfair_recursive_lock_unlock();
      v13 = *v10;
      v14 = *(a3[4] + 32 * v9 + 24);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock(v14);
      return v13;
    }

    sub_1AF6412CC(v12 + v6, 1, a1);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 > 0x40)
    {
      v11 = 0;
    }

LABEL_13:
    a3[15] |= v11;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v18);
  if (v21 + v20 <= 4096)
  {
    v9 = v18;
    v10 = (a3[2] + v21);
    sub_1AF6412CC(v10, 1, v19);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 >= 0x41)
    {
      v11 = 0;
    }

    goto LABEL_13;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v16 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v16);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v22 = 4096;
  v17 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v17);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6D42E8(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v9 = v8;
    v12 = a3[2];
    v10 = v12 + v6;
    if (v7)
    {
LABEL_14:
      os_unfair_lock_lock(*(a3[4] + 32 * v9 + 24));
      os_unfair_recursive_lock_unlock();
      v13 = *(v10 + 16);
      os_unfair_lock_unlock(*(a3[4] + 32 * v9 + 24));
      return v13;
    }

    sub_1AF6412CC(v12 + v6, 1, a1);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 > 0x40)
    {
      v11 = 0;
    }

LABEL_13:
    a3[15] |= v11;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v17);
  if (v20 + v19 <= 4096)
  {
    v9 = v17;
    v10 = a3[2] + v20;
    sub_1AF6412CC(v10, 1, v18);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 >= 0x41)
    {
      v11 = 0;
    }

    goto LABEL_13;
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v15 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v15);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v21 = 4096;
  v16 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v16);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF6D452C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  os_unfair_recursive_lock_lock_with_options();
  v8 = sub_1AF6D2A6C(a1);
  if (v9 != 2)
  {
    v11 = v10;
    v14 = a3[2];
    v12 = (v14 + v8);
    if (v9)
    {
LABEL_14:
      os_unfair_lock_lock(*(a3[4] + 32 * v11 + 24));
      os_unfair_recursive_lock_unlock();
      v15 = v12[1];
      v16 = v12[2];
      v17 = v12[3];
      v18 = v12[4];
      v19 = v12[5];
      v20 = v12[6];
      *a4 = *v12;
      a4[1] = v15;
      a4[2] = v16;
      a4[3] = v17;
      a4[4] = v18;
      a4[5] = v19;
      a4[6] = v20;
      os_unfair_lock_unlock(*(a3[4] + 32 * v11 + 24));
      return;
    }

    sub_1AF6412CC(v14 + v8, 1, a1);
    v13 = 1 << v11;
    if (v11 == 64)
    {
      v13 = 0;
    }

    if (v11 > 0x40)
    {
      v13 = 0;
    }

LABEL_13:
    a3[15] |= v13;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v23);
  if (v26 + v25 <= 4096)
  {
    v11 = v23;
    v12 = (a3[2] + v26);
    sub_1AF6412CC(v12, 1, v24);
    v13 = 1 << v11;
    if (v11 == 64)
    {
      v13 = 0;
    }

    if (v11 >= 0x41)
    {
      v13 = 0;
    }

    goto LABEL_13;
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v21 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v21);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v22 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v22);

  sub_1AFDFE518();
  __break(1u);
}

void sub_1AF6D47A4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  os_unfair_recursive_lock_lock_with_options();
  v8 = sub_1AF6D2A6C(a1);
  if (v9 != 2)
  {
    v11 = v10;
    v14 = a3[2];
    v12 = (v14 + v8);
    if (v9)
    {
LABEL_14:
      v15 = 32 * v11;
      os_unfair_lock_lock(*(a3[4] + 32 * v11 + 24));
      os_unfair_recursive_lock_unlock();
      v16 = *v12;
      v17 = v12[1];
      v18 = v12[2];
      v19 = v12[3];
      v21 = v12[4];
      v20 = v12[5];
      v22 = *(a3[4] + v15 + 24);

      os_unfair_lock_unlock(v22);
      *a4 = v16;
      a4[1] = v17;
      a4[2] = v18;
      a4[3] = v19;
      a4[4] = v21;
      a4[5] = v20;
      return;
    }

    sub_1AF6412CC(v14 + v8, 1, a1);
    v13 = 1 << v11;
    if (v11 == 64)
    {
      v13 = 0;
    }

    if (v11 > 0x40)
    {
      v13 = 0;
    }

LABEL_13:
    a3[15] |= v13;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v25);
  if (v28 + v27 <= 4096)
  {
    v11 = v25;
    v12 = (a3[2] + v28);
    sub_1AF6412CC(v12, 1, v26);
    v13 = 1 << v11;
    if (v11 == 64)
    {
      v13 = 0;
    }

    if (v11 >= 0x41)
    {
      v13 = 0;
    }

    goto LABEL_13;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v23 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v23);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v29 = 4096;
  v24 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v24);

  sub_1AFDFE518();
  __break(1u);
}

void sub_1AF6D4A34(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v7 = sub_1AF6D2A6C(a1);
  if (v8 == 2)
  {
    sub_1AF64FC94(a1, *(a2 + 8), &v28);
    v10 = v30;
    if ((v30 + *(&v29 + 1)) > 4096)
    {
      v28.i64[0] = 0;
      v28.i64[1] = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
      v26 = sub_1AFDFF4B8();
      MEMORY[0x1B2718AE0](v26);

      MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
      v27 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v27);

      sub_1AFDFE518();
      __break(1u);
      return;
    }

    v11 = v28.i64[0];
    v12 = a3[2];
    sub_1AF6412CC(v12 + v30, 1, v28.i64[1]);
    v13 = 1 << v11;
    if (v11 >= 0x40)
    {
      v13 = 0;
    }

    v16 = a3[4];
    v15 = a3 + 4;
    v14 = v16;
    if (v11 > 0x40)
    {
      v13 = 0;
    }

    v15[11] |= v13;
    os_unfair_lock_lock(*(v14 + 32 * v11 + 24));
    os_unfair_recursive_lock_unlock();
    v18 = v12 + v10;
  }

  else
  {
    v19 = v7;
    v11 = v9;
    v20 = a3[2];
    if (v8)
    {
      v21 = a3[4];
      v15 = a3 + 4;
      v22 = v21 + 32 * v9;
    }

    else
    {
      sub_1AF6412CC(v20 + v7, 1, a1);
      v23 = 1 << v11;
      if (v11 >= 0x40)
      {
        v23 = 0;
      }

      v25 = a3[4];
      v15 = a3 + 4;
      v24 = v25;
      if (v11 > 0x40)
      {
        v23 = 0;
      }

      v15[11] |= v23;
      v22 = v24 + 32 * v11;
    }

    os_unfair_lock_lock(*(v22 + 24));
    os_unfair_recursive_lock_unlock();
    v18 = v20 + v19;
  }

  sub_1AFB1DC30(v18, v17, &v28);
  if (v3)
  {
    os_unfair_lock_unlock(*(*v15 + 32 * v11 + 24));
  }

  else
  {
    os_unfair_lock_unlock(*(*v15 + 32 * v11 + 24));
  }
}

void sub_1AF6D4CE0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  os_unfair_recursive_lock_lock_with_options();
  v8 = sub_1AF6D2A6C(a1);
  if (v9 != 2)
  {
    v12 = v10;
    v15 = a3[2];
    v13 = (v15 + v8);
    if (v9)
    {
LABEL_11:
      os_unfair_lock_lock(*(a3[4] + 32 * v12 + 24));
      os_unfair_recursive_lock_unlock();
      *a4 = *v13;
      v17 = v13[1];
      v18 = v13[2];
      v19 = v13[4];
      a4[3] = v13[3];
      a4[4] = v19;
      a4[1] = v17;
      a4[2] = v18;
      v20 = v13[5];
      v21 = v13[6];
      v22 = v13[8];
      a4[7] = v13[7];
      a4[8] = v22;
      a4[5] = v20;
      a4[6] = v21;
      os_unfair_lock_unlock(*(a3[4] + 32 * v12 + 24));
      return;
    }

    v14 = v15 + v8;
    v11 = a1;
LABEL_6:
    sub_1AF6412CC(v14, 1, v11);
    v16 = 1 << v12;
    if (v12 >= 0x40)
    {
      v16 = 0;
    }

    if (v12 > 0x40)
    {
      v16 = 0;
    }

    a3[15] |= v16;
    goto LABEL_11;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v25);
  if (v28 + v27 <= 4096)
  {
    v12 = v25;
    v11 = v26;
    v13 = (a3[2] + v28);
    v14 = v13;
    goto LABEL_6;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v23 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v23);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v24 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v24);

  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF6D4F2C(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v9 = v8;
    v12 = a3[2];
    v10 = (v12 + v6);
    if (v7)
    {
LABEL_14:
      v13 = 32 * v9;
      os_unfair_lock_lock(*(a3[4] + v13 + 24));
      os_unfair_recursive_lock_unlock();
      v14 = *v10;
      v15 = *(a3[4] + v13 + 24);

      os_unfair_lock_unlock(v15);
      return v14;
    }

    sub_1AF6412CC(v12 + v6, 1, a1);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 > 0x40)
    {
      v11 = 0;
    }

LABEL_13:
    a3[15] |= v11;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v19);
  if (v22 + v21 <= 4096)
  {
    v9 = v19;
    v10 = (a3[2] + v22);
    sub_1AF6412CC(v10, 1, v20);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 >= 0x41)
    {
      v11 = 0;
    }

    goto LABEL_13;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v17 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v17);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v23 = 4096;
  v18 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v18);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF6D5188(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  os_unfair_recursive_lock_lock_with_options();
  v8 = sub_1AF6D2A6C(a1);
  if (v9 != 2)
  {
    v11 = v10;
    v14 = a3[2];
    v12 = v14 + v8;
    if (v9)
    {
LABEL_14:
      os_unfair_lock_lock(*(a3[4] + 32 * v11 + 24));
      os_unfair_recursive_lock_unlock();
      sub_1AF6D6500(v12, a4);
      os_unfair_lock_unlock(*(a3[4] + 32 * v11 + 24));
      return;
    }

    sub_1AF6412CC(v14 + v8, 1, a1);
    v13 = 1 << v11;
    if (v11 == 64)
    {
      v13 = 0;
    }

    if (v11 > 0x40)
    {
      v13 = 0;
    }

LABEL_13:
    a3[15] |= v13;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v17);
  if (v20 + v19 <= 4096)
  {
    v11 = v17;
    v12 = a3[2] + v20;
    sub_1AF6412CC(v12, 1, v18);
    v13 = 1 << v11;
    if (v11 == 64)
    {
      v13 = 0;
    }

    if (v11 >= 0x41)
    {
      v13 = 0;
    }

    goto LABEL_13;
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v15 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v15);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v16 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v16);

  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF6D53D4(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v9 = v8;
    if (v7)
    {
LABEL_14:
      v11 = 32 * v9;
      os_unfair_lock_lock(*(a3[4] + v11 + 24));
      os_unfair_recursive_lock_unlock();
      Strong = swift_unknownObjectWeakLoadStrong();
      os_unfair_lock_unlock(*(a3[4] + v11 + 24));
      return Strong;
    }

    sub_1AF6412CC(a3[2] + v6, 1, a1);
    v10 = 1 << v9;
    if (v9 == 64)
    {
      v10 = 0;
    }

    if (v9 > 0x40)
    {
      v10 = 0;
    }

LABEL_13:
    a3[15] |= v10;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v16);
  if (v19 + v18 <= 4096)
  {
    v9 = v16;
    sub_1AF6412CC(a3[2] + v19, 1, v17);
    v10 = 1 << v9;
    if (v9 == 64)
    {
      v10 = 0;
    }

    if (v9 >= 0x41)
    {
      v10 = 0;
    }

    goto LABEL_13;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v14 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v14);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v20 = 4096;
  v15 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v15);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

id sub_1AF6D5628(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v9 = v8;
    v12 = a3[2];
    v10 = (v12 + v6);
    if (v7)
    {
LABEL_14:
      os_unfair_lock_lock(*(a3[4] + 32 * v9 + 24));
      os_unfair_recursive_lock_unlock();
      v13 = *v10;
      v14 = *(a3[4] + 32 * v9 + 24);
      v15 = *v10;
      os_unfair_lock_unlock(v14);
      return v13;
    }

    sub_1AF6412CC(v12 + v6, 1, a1);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 > 0x40)
    {
      v11 = 0;
    }

LABEL_13:
    a3[15] |= v11;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v19);
  if (v22 + v21 <= 4096)
  {
    v9 = v19;
    v10 = (a3[2] + v22);
    sub_1AF6412CC(v10, 1, v20);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 >= 0x41)
    {
      v11 = 0;
    }

    goto LABEL_13;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v17 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v17);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v23 = 4096;
  v18 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v18);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6D5874(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v9 = v8;
    v12 = a3[2];
    v10 = v12 + v6;
    if (v7)
    {
LABEL_14:
      os_unfair_lock_lock(*(a3[4] + 32 * v9 + 24));
      os_unfair_recursive_lock_unlock();
      v13 = *(v10 + 1540);
      os_unfair_lock_unlock(*(a3[4] + 32 * v9 + 24));
      return v13;
    }

    sub_1AF6412CC(v12 + v6, 1, a1);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 > 0x40)
    {
      v11 = 0;
    }

LABEL_13:
    a3[15] |= v11;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v17);
  if (v20 + v19 <= 4096)
  {
    v9 = v17;
    v10 = a3[2] + v20;
    sub_1AF6412CC(v10, 1, v18);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 >= 0x41)
    {
      v11 = 0;
    }

    goto LABEL_13;
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v15 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v15);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v16 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v16);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6D5AC8(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v17 = v6;
    v10 = v8;
    v18 = a3[2];
    if (v7)
    {
      v19 = a3[4];
      v14 = a3 + 4;
      v20 = v19 + 32 * v8;
    }

    else
    {
      sub_1AF6412CC(v18 + v6, 1, a1);
      v21 = 1 << v10;
      if (v10 >= 0x40)
      {
        v21 = 0;
      }

      v23 = a3[4];
      v14 = a3 + 4;
      v22 = v23;
      if (v10 > 0x40)
      {
        v21 = 0;
      }

      v14[11] |= v21;
      v20 = v22 + 32 * v10;
    }

    os_unfair_lock_lock(*(v20 + 24));
    os_unfair_recursive_lock_unlock();
    v24 = *(v18 + v17);
    if (v24 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_23;
      }
    }

    else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

LABEL_19:
    v25 = sub_1AF6246D8();
LABEL_24:
    v26 = v25;
    os_unfair_lock_unlock(*(*v14 + 32 * v10 + 24));
    return v26;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v30);
  v9 = v33;
  if (v33 + v32 <= 4096)
  {
    v10 = v30;
    v11 = a3[2];
    sub_1AF6412CC(v11 + v33, 1, v31);
    v12 = 1 << v10;
    if (v10 >= 0x40)
    {
      v12 = 0;
    }

    v15 = a3[4];
    v14 = a3 + 4;
    v13 = v15;
    if (v10 > 0x40)
    {
      v12 = 0;
    }

    v14[11] |= v12;
    os_unfair_lock_lock(*(v13 + 32 * v10 + 24));
    os_unfair_recursive_lock_unlock();
    v16 = *(v11 + v9);
    if (v16 >> 62)
    {
      if (sub_1AFDFE108())
      {
        goto LABEL_19;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_23:
    type metadata accessor for DrawCall();
    swift_allocObject();
    v25 = sub_1AFB43A28();
    goto LABEL_24;
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v28 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v28);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v29 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v29);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6D5DB4(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v9 = v8;
    v12 = a3[2];
    v10 = (v12 + v6);
    if (v7)
    {
LABEL_14:
      os_unfair_lock_lock(*(a3[4] + 32 * v9 + 24));
      os_unfair_recursive_lock_unlock();
      v13 = *v10;
      v14 = *(a3[4] + 32 * v9 + 24);

      os_unfair_lock_unlock(v14);
      return v13;
    }

    sub_1AF6412CC(v12 + v6, 1, a1);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 > 0x40)
    {
      v11 = 0;
    }

LABEL_13:
    a3[15] |= v11;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v18);
  if (v21 + v20 <= 4096)
  {
    v9 = v18;
    v10 = (a3[2] + v21);
    sub_1AF6412CC(v10, 1, v19);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 >= 0x41)
    {
      v11 = 0;
    }

    goto LABEL_13;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v16 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v16);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v22 = 4096;
  v17 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v17);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AF6D6004(uint64_t a1, uint64_t a2, void *a3, void (*a4)(unint64_t *__return_ptr, unint64_t))
{
  os_unfair_recursive_lock_lock_with_options();
  v8 = sub_1AF6D2A6C(a1);
  if (v9 == 2)
  {
    sub_1AF64FC94(a1, *(a2 + 8), &v29);
    v11 = v32;
    if ((v32 + v31) > 4096)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
      v26 = sub_1AFDFF4B8();
      MEMORY[0x1B2718AE0](v26);

      MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
      v33 = 4096;
      v27 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v27);

      result = sub_1AFDFE518();
      __break(1u);
      return result;
    }

    v12 = v29;
    v13 = a3[2];
    sub_1AF6412CC(v13 + v32, 1, v30);
    v14 = 1 << v12;
    if (v12 >= 0x40)
    {
      v14 = 0;
    }

    v17 = a3[4];
    v16 = a3 + 4;
    v15 = v17;
    if (v12 > 0x40)
    {
      v14 = 0;
    }

    v16[11] |= v14;
    os_unfair_lock_lock(*(v15 + 32 * v12 + 24));
    os_unfair_recursive_lock_unlock();
    v18 = v13 + v11;
  }

  else
  {
    v19 = v8;
    v12 = v10;
    v11 = a3[2];
    if (v9)
    {
      v20 = a3[4];
      v16 = a3 + 4;
      v21 = v20 + 32 * v10;
    }

    else
    {
      sub_1AF6412CC(v11 + v8, 1, a1);
      v22 = 1 << v12;
      if (v12 >= 0x40)
      {
        v22 = 0;
      }

      v24 = a3[4];
      v16 = a3 + 4;
      v23 = v24;
      if (v12 > 0x40)
      {
        v22 = 0;
      }

      v16[11] |= v22;
      v21 = v23 + 32 * v12;
    }

    os_unfair_lock_lock(*(v21 + 24));
    os_unfair_recursive_lock_unlock();
    v18 = v11 + v19;
  }

  a4(&v29, v18);
  if (!v4)
  {
    v11 = v29;
  }

  os_unfair_lock_unlock(*(*v16 + 32 * v12 + 24));
  return v11;
}

uint64_t sub_1AF6D62BC(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(a1);
  if (v7 != 2)
  {
    v9 = v8;
    v12 = a3[2];
    v10 = v12 + v6;
    if (v7)
    {
LABEL_14:
      os_unfair_lock_lock(*(a3[4] + 32 * v9 + 24));
      os_unfair_recursive_lock_unlock();
      v13 = *(v10 + 16);
      os_unfair_lock_unlock(*(a3[4] + 32 * v9 + 24));
      return v13;
    }

    sub_1AF6412CC(v12 + v6, 1, a1);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 > 0x40)
    {
      v11 = 0;
    }

LABEL_13:
    a3[15] |= v11;
    goto LABEL_14;
  }

  sub_1AF64FC94(a1, *(a2 + 8), &v17);
  if (v20 + v19 <= 4096)
  {
    v9 = v17;
    v10 = a3[2] + v20;
    sub_1AF6412CC(v10, 1, v18);
    v11 = 1 << v9;
    if (v9 == 64)
    {
      v11 = 0;
    }

    if (v9 >= 0x41)
    {
      v11 = 0;
    }

    goto LABEL_13;
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6D6F43656E656353, 0xEF20746E656E6F70);
  v15 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v15);

  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF2FCE0);
  v21 = 4096;
  v16 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v16);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6D658C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    v6 = v5 + 96 * v4;
    v7 = *(v6 + 8);
    v8 = *(v6 + 12);
    if (v7 != -1 || v8 != 0)
    {
      v10 = *a2;
      if (*(*a2 + 16))
      {
        sub_1AFDFF288();
        sub_1AFDFF2C8();
        sub_1AFDFF2C8();
        v11 = sub_1AFDFF2F8();
        v12 = -1 << *(v10 + 32);
        v13 = v11 & ~v12;
        if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          break;
        }
      }
    }

LABEL_3:
    if (++v4 == v2)
    {
      return 0;
    }
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(v10 + 48) + 8 * v13);
    v17 = *v15;
    v16 = v15[1];
    if (v17 == v7 && v16 == v8)
    {
      return v4;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_1AF6D66D0(char **a1, uint64_t *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AFC0DA94(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_1AF6D91A8(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_1AF6D6748(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AFC0DA94(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1AF6D9030(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AF6D67B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 24);

  if (!v8)
  {
    return result;
  }

  v11 = thread_worker_index;
  v12 = thread_worker_index(v10);
  v13 = *v12;
  *v12 = 0;
  if (((1 << a3) & 0x36) != 0)
  {
    goto LABEL_3;
  }

  if (a3)
  {
    if (*(v8 + 224) < 1)
    {
      if (!*(v8 + 233))
      {
LABEL_17:
        *(v8 + 233) = 1;
        sub_1AF65E3F4();
        v15 = *(v4 + 24);
LABEL_18:
        if (*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) == 1)
        {

          sub_1AF6D88DC(v16, a2, 2);
          *(*(v4 + 24) + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 0;
        }

        v17 = v8 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
        v18 = *(v8 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 72);
        if (v18)
        {
          sub_1AF6D88DC(a1, a2, 3);
          v19 = v18 - 1;
          if (v19)
          {
            v20 = vdupq_n_s64(1uLL);
            do
            {
              *(v17 + 16) = vaddq_s64(*(v17 + 16), v20);
              *(v17 + 48) = *(v17 + 88) + *(v17 + 48);
              sub_1AF65DAB0();
              sub_1AF6D88DC(a1, a2, 3);
              --v19;
            }

            while (v19);
          }
        }

        goto LABEL_4;
      }
    }

    else
    {
      v15 = v8;
      if ((*(v8 + 233) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    sub_1AF65E37C();
    goto LABEL_17;
  }

  if (*(v8 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) == 1)
  {

    sub_1AF6D88DC(v14, a2, 2);
    *(*(v4 + 24) + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 0;
  }

  a3 = 0;
LABEL_3:
  sub_1AF6D88DC(a1, a2, a3);
LABEL_4:
  *(v11)(&thread_worker_index) = v13;
}

void sub_1AF6D6A24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_lock(*(v2 + 56));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 152);
  *(v3 + 152) = 0x8000000000000000;
  v8 = sub_1AF419D60(a1);
  v10 = v9;
  v11 = *(v7 + 16) + ((v9 & 1) == 0);
  if (*(v7 + 24) >= v11)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AF845420();
    }
  }

  else
  {
    sub_1AF82DD74(v11, isUniquelyReferenced_nonNull_native);
    v12 = sub_1AF419D60(a1);
    if ((v10 & 1) != (v13 & 1))
    {
      sub_1AFDFF1A8();
      __break(1u);
      return;
    }

    v8 = v12;
  }

  *(v3 + 152) = v7;

  v14 = *(v3 + 152);
  if ((v10 & 1) == 0)
  {
    sub_1AF85B950();
  }

  *(*(v14 + 56) + 8 * v8) += a2;
  v15 = *(v3 + 56);

  os_unfair_lock_unlock(v15);
}

uint64_t sub_1AF6D6B60()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = swift_slowAlloc();
  *v1 = 0;
  *(v0 + 32) = "lock-scheduler";
  *(v0 + 40) = 14;
  *(v0 + 48) = 2;
  *(v0 + 56) = v1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 256;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 96) = MEMORY[0x1E69E7CC0];
  *(v0 + 104) = v2;
  *(v0 + 112) = v2;
  *(v0 + 120) = 0;
  *(v0 + 128) = v2;
  *(v0 + 136) = v2;
  *(v0 + 144) = v2;
  *(v0 + 152) = sub_1AF43B7A8(v2);
  *(v0 + 160) = 0;
  *(v0 + 168) = sub_1AF43B8A0(v2);
  *(v0 + 176) = v2;
  *(v0 + 184) = sub_1AF43B8CC(v2);
  *(v0 + 192) = v2;
  *(v0 + 200) = sub_1AF43B8CC(v2);
  *(v0 + 208) = 1065353216;
  return v0;
}

void *sub_1AF6D6C14()
{
  MEMORY[0x1B271DEA0](*(v0 + 56), -1, -1);

  return v0;
}

uint64_t sub_1AF6D6C9C()
{
  sub_1AF6D6C14();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF6D6D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  swift_unknownObjectRetain();
}

double sub_1AF6D6D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  swift_unknownObjectRelease();
  return result;
}

uint64_t *initializeWithCopy for Scheduler.Event(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v13 = a2[9];
  v14 = a2[10];
  v15 = a2[11];
  v16 = a2[12];
  sub_1AF6D6D04(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v13;
  a1[10] = v14;
  a1[11] = v15;
  a1[12] = v16;
  return a1;
}

uint64_t *assignWithCopy for Scheduler.Event(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v20 = a2[9];
  v21 = a2[10];
  v22 = a2[11];
  v23 = a2[12];
  sub_1AF6D6D04(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v20, v21, v22, v23);
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1[5];
  v18 = a1[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v20;
  a1[10] = v21;
  a1[11] = v22;
  a1[12] = v23;
  sub_1AF6D6D84(v12, v13, v14, v15, v16, v17, v18);
  return a1;
}

__n128 initializeWithTake for Material(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for Scheduler.Event(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v12;
  v13 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v13;
  *(a1 + 96) = v3;
  sub_1AF6D6D84(v4, v6, v5, v7, v8, v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for Scheduler.Event(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 41);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for Scheduler.Event(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = -a2 << 8;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF6D70E8(uint64_t result, int a2)
{
  v2 = *(result + 80) & 0xFFFFFFFF00010101 | (a2 << 31);
  *(result + 40) = *(result + 40);
  *(result + 80) = v2;
  return result;
}

uint64_t *assignWithCopy for JobQueue(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t *assignWithTake for JobQueue(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t destroy for Scheduler.Job(uint64_t a1)
{
  swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for Scheduler.Job(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 76) = *(a2 + 76);
  v4 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v4;
  swift_unknownObjectRetain();

  return a1;
}

uint64_t assignWithCopy for Scheduler.Job(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 76) = *(a2 + 76);
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;

  return a1;
}

uint64_t assignWithTake for Scheduler.Job(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRelease();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t getEnumTagSinglePayload for Scheduler.Job(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Scheduler.Job(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AF6D7478()
{
  result = qword_1EB63D638;
  if (!qword_1EB63D638)
  {
    result = swift_getWitnessTable(a9z, &type metadata for Scheduler.SystemRegistrationOptions, v0, v1);
    atomic_store(result, &qword_1EB63D638);
  }

  return result;
}

unint64_t sub_1AF6D74D0()
{
  result = qword_1EB63D640;
  if (!qword_1EB63D640)
  {
    result = swift_getWitnessTable(asc_1AFE713E0, &type metadata for Scheduler.SystemRegistrationOptions, v0, v1);
    atomic_store(result, &qword_1EB63D640);
  }

  return result;
}

unint64_t sub_1AF6D7528()
{
  result = qword_1EB63D648;
  if (!qword_1EB63D648)
  {
    result = swift_getWitnessTable(asc_1AFE71438, &type metadata for Scheduler.SystemRegistrationOptions, v0, v1);
    atomic_store(result, &qword_1EB63D648);
  }

  return result;
}

unint64_t sub_1AF6D7580()
{
  result = qword_1EB63D650;
  if (!qword_1EB63D650)
  {
    result = swift_getWitnessTable(asc_1AFE71470, &type metadata for Scheduler.SystemRegistrationOptions, v0, v1);
    atomic_store(result, &qword_1EB63D650);
  }

  return result;
}

uint64_t sub_1AF6D75D4(uint64_t a1)
{
  v2 = *(v1 + 96);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = (v2 + 32);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = 0;
  while (*v4 != ObjCClassFromMetadata)
  {
    ++result;
    v4 += 12;
    if (v3 == result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1AF6D763C(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = HIDWORD(a1);
  os_unfair_lock_lock(*(v1 + 56));
  v7 = *(v1 + 96);
  v5 = (v1 + 96);
  v6 = v7;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (*&v6[v9 + 40] == v3 && *&v6[v9 + 44] == v4)
      {
        break;
      }

      v9 += 96;
      ++v10;
      if (v8 == v11)
      {
        v10 = v8;
        goto LABEL_11;
      }
    }

    if (v8 - 1 != v10)
    {
      v8 = v10 + 1;
      do
      {
        v36 = &v6[v9];
        if (*&v6[v9 + 136] != v3 || *&v6[v9 + 140] != v4)
        {
          if (v8 != v10)
          {
            v38 = &v6[96 * v10 + 32];
            v39 = *(v38 + 1);
            v50 = *v38;
            v51 = v39;
            v40 = *(v38 + 2);
            v41 = *(v38 + 3);
            v42 = *(v38 + 5);
            v54 = *(v38 + 4);
            v55 = v42;
            v52 = v40;
            v53 = v41;
            v43 = *(v36 + 13);
            v45 = *(v36 + 10);
            v44 = *(v36 + 11);
            v60 = *(v36 + 12);
            v61 = v43;
            v58 = v45;
            v59 = v44;
            v46 = *(v36 + 9);
            v56 = *(v36 + 8);
            v57 = v46;
            sub_1AF6D8FC4(&v50, v49);
            sub_1AF6D8FC4(&v56, v49);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v5 = v6;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v6 = sub_1AFC0DA94(v6);
              *v5 = v6;
            }

            v18 = &v6[96 * v10];
            v19 = *(v18 + 3);
            v48[0] = *(v18 + 2);
            v48[1] = v19;
            v20 = *(v18 + 4);
            v21 = *(v18 + 5);
            v22 = *(v18 + 7);
            v48[4] = *(v18 + 6);
            v48[5] = v22;
            v48[2] = v20;
            v48[3] = v21;
            v23 = v61;
            v25 = v58;
            v24 = v59;
            *(v18 + 6) = v60;
            *(v18 + 7) = v23;
            *(v18 + 4) = v25;
            *(v18 + 5) = v24;
            v26 = v57;
            *(v18 + 2) = v56;
            *(v18 + 3) = v26;
            sub_1AF6D8FFC(v48);
            *v5 = v6;
            v27 = &v6[v9];
            v28 = *&v6[v9 + 144];
            v49[0] = *&v6[v9 + 128];
            v49[1] = v28;
            v29 = *&v6[v9 + 160];
            v30 = *&v6[v9 + 176];
            v31 = *&v6[v9 + 208];
            v49[4] = *&v6[v9 + 192];
            v49[5] = v31;
            v49[2] = v29;
            v49[3] = v30;
            v32 = v55;
            v34 = v52;
            v33 = v53;
            *(v27 + 12) = v54;
            *(v27 + 13) = v32;
            *(v27 + 10) = v34;
            *(v27 + 11) = v33;
            v35 = v51;
            *(v27 + 8) = v50;
            *(v27 + 9) = v35;
            sub_1AF6D8FFC(v49);
            *v5 = v6;
          }

          ++v10;
        }

        ++v8;
        v9 += 96;
      }

      while (v8 != *(v6 + 2));
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  sub_1AF64D328(v10, v8);
  v13 = *(v2 + 144);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 144) = v13;
  if ((v14 & 1) == 0)
  {
    v13 = sub_1AF4217DC(0, *(v13 + 2) + 1, 1, v13);
    *(v2 + 144) = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1AF4217DC(v15 > 1, v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[8 * v16];
  *(v17 + 8) = v3;
  *(v17 + 9) = v4;
  *(v2 + 144) = v13;
  *(v2 + 160) = 257;
  os_unfair_lock_unlock(*(v2 + 56));
}

void sub_1AF6D78B4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  sub_1AF6D75D4(a1);
  if (v10)
  {
    v11 = *(a2 + 8);
    v26 = a4;
    v12 = (*(v11 + 8))(a1, v11);
    v13 = *(v11 + 32);

    v13(v14, a1, v11);

    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = (*(v11 + 16))(a1, v11);
    v28 = v16;
    v27 = v17;
    v18 = *(v11 + 24);
    swift_unknownObjectRetain();
    v19 = v18(a1, v11);
    v20 = swift_allocObject();
    *(v20 + 16) = v12;
    *(v20 + 24) = a2;
    v21 = *(v5 + 24);

    v22 = a3 & 1;
    v23 = *(v21 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
    swift_unknownObjectRetain();
    if (v23)
    {
      v24 = sub_1AFDFE238();
      LODWORD(v23) = vfx_counters.addCounter(name:scope:kind:)(v24, v25, 0, 0, v23);
    }

    else
    {
    }

    *&v30 = ObjCClassFromMetadata;
    *(&v30 + 1) = 0xFFFFFFFFLL;
    *&v31 = v15;
    *(&v31 + 1) = v28;
    LOBYTE(v32) = v27;
    *(&v32 + 1) = v12;
    *&v33 = v11;
    *(&v33 + 1) = v19;
    *&v34 = 1000;
    BYTE8(v34) = 0;
    BYTE9(v34) = v22;
    BYTE10(v34) = v26 & 1;
    HIDWORD(v34) = v23;
    *&v35 = sub_1AF6DAECC;
    *(&v35 + 1) = v20;
    v36[0] = v30;
    v36[1] = v31;
    v36[4] = v34;
    v36[5] = v35;
    v36[2] = v32;
    v36[3] = v33;
    sub_1AF64D800(0, 0, v36);
    sub_1AF6D8FFC(&v30);
    swift_unknownObjectRelease();
    *(v5 + 160) = 1;
  }
}

uint64_t sub_1AF6D7B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 > 2u)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    if (a3 == 1)
    {
LABEL_4:
      ObjectType = swift_getObjectType();
      return (*(a5 + 16))(a1, a2, a3, ObjectType, a5);
    }

    v12 = swift_getObjectType();
    return (*(*(a5 + 8) + 40))(a1, v12);
  }

  else
  {
    v11 = swift_getObjectType();
    return (*(a5 + 24))(a1, a2, 0, v11, a5);
  }
}

double sub_1AF6D7C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v14 = (*(a2 + 8))();
  v15 = *(a2 + 32);

  v15(v16, a1, a2);

  v17 = *(a2 + 24);
  if (v17(a1, a2) != -1)
  {
    a3 = v17(a1, a2);
  }

  v18 = (*(a2 + 16))(a1, a2);
  v34 = v19;
  v33 = v20;
  v21 = swift_allocObject();
  v21[2] = a7;
  v21[3] = a8;
  v21[4] = v14;
  v21[5] = a2;
  v22 = *(v8 + 24);

  if (!HIDWORD(a6) && a6 == -1)
  {
    swift_unknownObjectRetain_n();

LABEL_9:
    v25 = *(v22 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
    if (v25)
    {
      v27 = v34;
      v28 = v33;
      v30 = sub_1AFDFE238();
      LODWORD(v25) = vfx_counters.addCounter(name:scope:kind:)(v30, v31, 0, 0, v25);

      goto LABEL_14;
    }

LABEL_13:
    v27 = v34;
    v28 = v33;
    goto LABEL_14;
  }

  v23 = sub_1AF3C9078(a6);
  v25 = v24;
  swift_unknownObjectRetain_n();

  if (!v25)
  {
    goto LABEL_9;
  }

  v26 = *(v22 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
  if (!v26)
  {

    LODWORD(v25) = 0;
    goto LABEL_13;
  }

  *&v47[0] = v23;
  *(&v47[0] + 1) = v25;
  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  v27 = v34;
  v28 = v33;
  v29 = sub_1AFDFE238();
  MEMORY[0x1B2718AE0](v29);

  LODWORD(v25) = vfx_counters.addCounter(name:scope:kind:)(*&v47[0], v25, 0, 0, v26);

LABEL_14:
  *&v40 = v14;
  *(&v40 + 1) = a6;
  *&v41 = v18;
  *(&v41 + 1) = v27;
  LOBYTE(v42) = v28;
  *(&v42 + 1) = *v46;
  DWORD1(v42) = *&v46[3];
  *(&v42 + 1) = v14;
  *&v43 = a2;
  *(&v43 + 1) = a3;
  *&v44 = a4;
  WORD4(v44) = 257;
  BYTE10(v44) = a5 & 1;
  HIDWORD(v44) = v25;
  *&v45 = sub_1AF6DAE90;
  *(&v45 + 1) = v21;
  os_unfair_lock_lock(*(v9 + 56));
  v47[2] = v42;
  v47[3] = v43;
  v47[4] = v44;
  v47[5] = v45;
  v47[0] = v40;
  v47[1] = v41;
  sub_1AF6D8FC4(&v40, v39);
  sub_1AF64D800(0, 0, v47);
  sub_1AF64D800(0, 0, v47);
  sub_1AF6D8FFC(&v40);
  *(v9 + 160) = 257;
  os_unfair_lock_unlock(*(v9 + 56));
  sub_1AF6D8FFC(&v40);
  swift_unknownObjectRelease();
  return result;
}

void sub_1AF6D8010(uint64_t a1, char a2)
{
  os_unfair_lock_lock(*(v2 + 56));
  v5 = *(v2 + 96);
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = 0;
    v8 = a2 & 1;
    do
    {
      if (*&v5[v7 + 40] == a1 && *&v5[v7 + 44] == HIDWORD(a1))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 96) = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = sub_1AFC0DA94(v5);
        }

        v5[v7 + 105] = v8;
        *(v2 + 96) = v5;
      }

      v7 += 96;
      --v6;
    }

    while (v6);
  }

  *(v2 + 160) = 257;
  v11 = *(v2 + 56);

  os_unfair_lock_unlock(v11);
}

void sub_1AF6D80D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  os_unfair_lock_lock(*(v4 + 56));
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = ObjCClassFromMetadata;
  v10 = *(v4 + 168);
  if (*(v10 + 16) && (v11 = sub_1AF419D60(ObjCClassFromMetadata), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_bridgeObjectRetain_n();
    v14 = *(v13 + 2);
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v14)
    {
LABEL_9:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1AF4248E0(0, *(v13 + 2) + 1, 1, v13);
      }

      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      if (v18 >= v17 >> 1)
      {
        v13 = sub_1AF4248E0(v17 > 1, v18 + 1, 1, v13);
      }

      *(v13 + 2) = v18 + 1;
      v19 = &v13[16 * v18];
      *(v19 + 4) = a3;
      *(v19 + 5) = a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v5 + 168);
      *(v5 + 168) = 0x8000000000000000;
      sub_1AF856244(v13, v9, isUniquelyReferenced_nonNull_native);
      *(v5 + 168) = v22;
      *(v5 + 160) = 257;
      goto LABEL_15;
    }
  }

  v15 = swift_getObjCClassFromMetadata();
  v16 = 32;
  while (swift_getObjCClassFromMetadata() != v15)
  {
    v16 += 16;
    if (!--v14)
    {
      goto LABEL_9;
    }
  }

  swift_bridgeObjectRelease_n();
LABEL_15:
  v21 = *(v5 + 56);

  os_unfair_lock_unlock(v21);
}

uint64_t sub_1AF6D827C(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  v8 = *a2;
  if (*(*a2 + 16))
  {
    result = sub_1AF419D60(a1);
    if (v10)
    {
      if (*(*(v8 + 56) + result))
      {
        return result;
      }

      sub_1AFDFE518();
      __break(1u);
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *a2;
  sub_1AF8552F8(0, a1, isUniquelyReferenced_nonNull_native);
  *a2 = v22;
  v12 = *(v4 + 168);
  if (*(v12 + 16))
  {
    v13 = sub_1AF419D60(a1);
    if (v14)
    {
      v15 = *(*(*(v12 + 56) + 8 * v13) + 16);
      if (v15)
      {

        v16 = 32;
        do
        {
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          sub_1AF6D827C(ObjCClassFromMetadata, a2, a3);
          v16 += 16;
          --v15;
        }

        while (v15);
      }
    }
  }

  v18 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *a2;
  sub_1AF8552F8(1, a1, v18);
  *a2 = v23;
  v19 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AF4228C0(0, *(v19 + 16) + 1, 1, v19);
    v19 = result;
  }

  v21 = *(v19 + 16);
  v20 = *(v19 + 24);
  if (v21 >= v20 >> 1)
  {
    result = sub_1AF4228C0(v20 > 1, v21 + 1, 1, v19);
    v19 = result;
  }

  *(v19 + 16) = v21 + 1;
  *(v19 + 8 * v21 + 32) = a1;
  *a3 = v19;
  return result;
}

uint64_t sub_1AF6D8464(char **a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v23 = sub_1AF43E244(MEMORY[0x1E69E7CC0]);
  v3 = *a1;
  v4 = sub_1AF4228C0(0, *(*a1 + 2), 0, v2);
  v24 = v4;
  v5 = *(v3 + 2);
  if (v5)
  {
    v6 = &v3[96 * v5 - 64];
    do
    {
      --v5;
      v7 = *(v6 + 1);
      v22[0] = *v6;
      v22[1] = v7;
      v8 = *(v6 + 2);
      v9 = *(v6 + 3);
      v10 = *(v6 + 5);
      v22[4] = *(v6 + 4);
      v22[5] = v10;
      v22[2] = v8;
      v22[3] = v9;
      v11 = *&v22[0];
      sub_1AF6D8FC4(v22, v21);
      sub_1AF6D827C(v11, &v23, &v24);
      sub_1AF6D8FFC(v22);
      v6 -= 96;
    }

    while (v5);
    v12 = v24;
  }

  else
  {
    v12 = v4;
  }

  v13 = sub_1AF43B7A8(MEMORY[0x1E69E7CC0]);
  *&v22[0] = v13;
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = v13;
    v16 = 0;
    do
    {
      v17 = v14 - 1;
      v18 = *(v12 + 24 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21[0] = v15;
      sub_1AF855434(v16, v18, isUniquelyReferenced_nonNull_native);
      v15 = v21[0];
      ++v16;
      v14 = v17;
    }

    while (v17);
    *&v22[0] = v21[0];
  }

  sub_1AF6D66D0(a1, v22);
  sub_1AF6D6748(a1);
}

BOOL sub_1AF6D85E4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  if (*(*a3 + 16) && (v6 = sub_1AF419D60(*a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = -1;
  }

  v9 = *a3;
  if (*(*a3 + 16) && (v10 = sub_1AF419D60(v4), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = -1;
  }

  return v8 < v12;
}

BOOL sub_1AF6D8678(uint64_t a1)
{
  v3 = (v1 + 96);
  v4 = *(*(v1 + 96) + 16);
  v5 = MEMORY[0x1E69E7CD0];
  v22 = MEMORY[0x1E69E7CD0];
  if (v4)
  {
    v6 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v20 = v4;
    v7 = ( + 44);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      if (v8 != -1 || v9 != 0)
      {
        if (v8 & 0x80000000) != 0 || v6[1] <= v8 || ((v11 = (*v6 + 12 * v8), v9 != -1) ? (v12 = v11[2] == v9) : (v12 = 1), !v12 || (v13 = *(*(*(a1 + 88) + 8 * *(v11 + 3) + 32) + 16), v14 = *(v13 + 128), *(v14 + 16)) && (v15 = sub_1AF449CB8(&type metadata for Tombstone), (v16) && *(*(v13 + 24) + 16 * *(*(v14 + 56) + 8 * v15) + 32) == &type metadata for Tombstone || (*(*(*(a1 + 144) + 8 * *v11 + 32) + 120) & 1) == 0))
        {
          sub_1AF70DA24(v21, v8 | (v9 << 32));
        }
      }

      v7 += 24;
      --v4;
    }

    while (v4);

    v5 = v22;
    v4 = v20;
  }

  if (*(v5 + 16))
  {
    v17 = sub_1AF6DA5C8(v3, &v22);
    sub_1AF64D328(v17, *(*v3 + 16));
  }

  v18 = *(*v3 + 16);

  return v4 != v18;
}

void sub_1AF6D8818()
{
  if (*(v0 + 16) == 1)
  {
    v1 = v0;
    v2 = (v0 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_1AF626FFC(0, *(v4 + 16));
    }

    else
    {
      *v2 = sub_1AFC85ACC(0, *(v4 + 24) >> 1);
    }

    if (*(*(v1 + 200) + 16))
    {
      swift_isUniquelyReferenced_nonNull_native();
      v5 = *(v1 + 200);
      *(v1 + 200) = 0x8000000000000000;
      sub_1AF6DADD0(0);
      sub_1AFDFE4B8();
      *(v1 + 200) = v5;
    }
  }
}

uint64_t sub_1AF6D88DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(v3 + 24);

  if (v6)
  {
    sub_1AF6D8CDC(a3, v6);
    v36 = *(*(*(v6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v8) + 8) + 32);
    v9 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81);
    v37 = a3;
    while (1)
    {
      if (*(v4 + 120) <= 0 && !*(*(v4 + 128) + 16) && !*(*(v4 + 136) + 16))
      {
      }

      sub_1AF6D8E1C();
      v11 = *(v4 + 112);
      v10 = *(v4 + 120);
      *(v4 + 120) = v10 - 1;
      v12 = (v11 + 96 * v10);
      v14 = *(v12 - 2);
      v13 = *(v12 - 1);
      v15 = v12[1];
      v55 = *v12;
      v53 = v14;
      v16 = *(v12 - 3);
      v51 = *(v12 - 4);
      v52 = v16;
      v56 = v15;
      v54 = v13;
      LODWORD(v12) = BYTE9(v55);
      LOBYTE(v11) = v53;
      v17 = v51;
      *(v4 + 64) = v51;
      *(v4 + 72) = v52;
      *(v4 + 88) = v11;
      if (v12 == 1)
      {
        if (v9 & 1 | ((BYTE10(v55) & 1) == 0))
        {
          break;
        }
      }

LABEL_4:
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 88) = 0;
      *(v4 + 80) = 0;
      *(v4 + 89) = 1;
    }

    if (a3 > 2u)
    {
      if (a3 == 3)
      {
LABEL_19:
        if (*(&v54 + 1) >= 600)
        {
          goto LABEL_4;
        }

        goto LABEL_22;
      }

      if (a3 == 4)
      {
        goto LABEL_17;
      }

      if (*(&v54 + 1) < 1500)
      {
        goto LABEL_4;
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        if (*(&v54 + 1) == 1400)
        {
          goto LABEL_4;
        }

LABEL_17:
        if ((*(&v54 + 1) - 600) >= 0x384)
        {
          goto LABEL_4;
        }

        goto LABEL_22;
      }

      goto LABEL_19;
    }

LABEL_22:
    v18 = *(v4 + 152);
    if (!*(v18 + 16) || (v19 = sub_1AF419D60(v17), (v20 & 1) == 0) || *(*(v18 + 56) + 8 * v19) > 0)
    {
      v21 = v51;
      v48 = v52;
      v49 = *(&v51 + 1);
      v22 = v53;
      v46 = *(&v53 + 1);
      v47 = *(&v52 + 1);
      v44 = *(&v54 + 1);
      v45 = v54;
      v42 = v56;
      v43 = v55;
      v40 = *(&v55 + 1) & 0xFFFFFFFF00010101;
      v41 = *(&v56 + 1);
      if (*(v4 + 16))
      {
        v23 = *(v4 + 192);
        sub_1AF6D8FC4(&v51, v50);
        sub_1AF6D8FC4(&v51, v50);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 192) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AFC07538(0, *(v23 + 16) + 1, 1);
          v23 = *(v4 + 192);
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1AFC07538(v25 > 1, v26 + 1, 1);
          v23 = *(v4 + 192);
        }

        *(v23 + 16) = v26 + 1;
        v27 = (v23 + 104 * v26);
        v27[4] = 0;
        v27[5] = v21;
        v28 = v21;
        v27[6] = v49;
        v27[7] = v48;
        v27[8] = v47;
        v27[9] = v22;
        v29 = v22;
        v27[10] = v46;
        v27[11] = v45;
        v27[12] = v44;
        v27[13] = v43;
        v27[14] = v40;
        v27[15] = v42;
        v27[16] = v41;
        *(v4 + 192) = v23;
        a3 = v37;
      }

      else
      {
        v28 = v51;
        v29 = v53;
        sub_1AF6D8FC4(&v51, v50);
      }

      v30 = v56;
      ecs_stack_allocator_push_snapshot(v36);
      v30(a1, a2, a3);
      ecs_stack_allocator_pop_snapshot(v36);
      if (*(v4 + 16))
      {
        v31 = *(v4 + 192);
        v32 = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 192) = v31;
        if ((v32 & 1) == 0)
        {
          sub_1AFC07538(0, *(v31 + 16) + 1, 1);
          v31 = *(v4 + 192);
        }

        v34 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1AFC07538(v33 > 1, v34 + 1, 1);
          v31 = *(v4 + 192);
        }

        *(v31 + 16) = v34 + 1;
        v35 = (v31 + 104 * v34);
        v35[4] = 0;
        v35[5] = v28;
        v35[6] = v49;
        v35[7] = v48;
        v35[8] = v47;
        v35[9] = v29;
        v35[10] = v46;
        v35[11] = v45;
        v35[12] = v44;
        v35[13] = v43;
        v35[14] = v40 | 0x80000000;
        v35[15] = v42;
        v35[16] = v41;
        *(v4 + 192) = v31;
        a3 = v37;
      }

      else
      {
        sub_1AF6D8FFC(&v51);
      }
    }

    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1AF6D8CDC(char a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1 == 3 || a1 == 0;
  if (v4 && sub_1AF6D8678(a2) || *(v2 + 160) == 1)
  {
    *(v2 + 104) = *(v2 + 96);

    sub_1AF6D8464((v2 + 104));
    v6 = (v2 + 128);
    v5 = *(v3 + 128);
    *(v3 + 160) = 0;
    if (!*(v5 + 16) && !*(*(v3 + 136) + 16))
    {
      *(v3 + 161) = 0;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_1AF64D328(0, *(v8 + 16));
    }

    else
    {
      *v6 = sub_1AFC85D08(0, *(v8 + 24) >> 1);
    }

    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v3 + 144);
    if (v9)
    {
      sub_1AF64D354(0, *(v10 + 16));
    }

    else
    {
      *(v3 + 144) = sub_1AFC859F8(0, *(v10 + 24) >> 1);
    }
  }

  v11 = *(v3 + 104);
  *(v3 + 112) = v11;
  swift_bridgeObjectRetain_n();

  v12 = *(v11 + 16);

  *(v3 + 120) = v12;
  return result;
}

void sub_1AF6D8E1C()
{
  if (*(v0 + 161) == 1)
  {
    v1 = v0;
    v2 = (v0 + 112);
    v3 = *(*(v0 + 112) + 16);
    if (*(*(v0 + 144) + 16))
    {
      if (v3)
      {
        v4 = *(v0 + 120);
        if (v4 != v3)
        {
          sub_1AF64D328(v4, v3);
        }
      }

      v5 = sub_1AF6DAC00(v2, v0);

      sub_1AF64D328(v5, *(*(v1 + 112) + 16));
      v3 = *(*(v1 + 112) + 16);
      *(v1 + 120) = v3;
    }

    if (v3)
    {
      v6 = *(v1 + 120);
      if (v6 != v3)
      {
        sub_1AF64D328(v6, v3);
      }
    }

    v7 = (v1 + 136);
    v13 = *(v1 + 128);

    sub_1AF49012C(v8);
    sub_1AF49012C(*(v1 + 112));
    *(v1 + 112) = v13;
    sub_1AF6D8464(v2);
    *(v1 + 120) = *(*(v1 + 112) + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v1 + 128);
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_1AF64D328(0, *(v10 + 16));
    }

    else
    {
      *(v1 + 128) = sub_1AFC85D08(0, *(v10 + 24) >> 1);
    }

    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v7;
    if (v11)
    {
      sub_1AF64D328(0, *(v12 + 16));
    }

    else
    {
      *v7 = sub_1AFC85D08(0, *(v12 + 24) >> 1);
    }

    *(v1 + 161) = 0;
  }
}

uint64_t sub_1AF6D8FFC(uint64_t a1)
{
  swift_unknownObjectRelease();

  return a1;
}

uint64_t sub_1AF6D9030(void *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 >= 2)
    {
      v7 = *a1 + 96;
      v8 = -1;
      for (i = 1; i != v2; ++i)
      {
        v10 = v8;
        v11 = v7;
        do
        {
          v23 = *(v11 + 56);
          v24 = *(v11 - 40);
          if (v24 >= v23 && (v23 < v24 || *(v11 + 64) >= *(v11 - 32)))
          {
            break;
          }

          v12 = (v11 - 96);
          v13 = *(v11 + 48);
          v28 = *(v11 + 32);
          v29 = v13;
          v14 = *(v11 + 80);
          v30 = *(v11 + 64);
          v31 = v14;
          v15 = *(v11 + 16);
          v26 = *v11;
          v27 = v15;
          v16 = *(v11 - 48);
          *(v11 + 32) = *(v11 - 64);
          *(v11 + 48) = v16;
          v17 = *(v11 - 16);
          *(v11 + 64) = *(v11 - 32);
          *(v11 + 80) = v17;
          v18 = *(v11 - 80);
          *v11 = *(v11 - 96);
          *(v11 + 16) = v18;
          v19 = v29;
          v12[2] = v28;
          v12[3] = v19;
          v20 = v31;
          v12[4] = v30;
          v12[5] = v20;
          v21 = v27;
          v11 -= 96;
          *v12 = v26;
          v12[1] = v21;
        }

        while (!__CFADD__(v10++, 1));
        v7 += 96;
        --v8;
      }
    }
  }

  else
  {
    v4 = result;
    v5 = v2 / 2;
    if (v2 <= 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v6 = sub_1AFDFD488();
      *(v6 + 16) = v5;
    }

    *&v26 = v6 + 32;
    *(&v26 + 1) = v5;
    sub_1AF6D93E4(&v26, v32, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF6D91A8(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v4)
  {
    if (v4)
    {
      return sub_1AF6D9298(0, v4, 1, a1, a2);
    }
  }

  else
  {
    v6 = result;
    if (v4 <= 1)
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v7 = sub_1AFDFD488();
      *(v7 + 16) = v4 / 2;
    }

    v9[0] = (v7 + 32);
    v9[1] = (v4 / 2);
    v8 = v7;
    sub_1AF6D9924(v9, v10, a1, v6, a2);
    *(v8 + 16) = 0;
  }

  return result;
}

unint64_t sub_1AF6D9298(unint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  if (a3 != a2)
  {
    v6 = *a4 + 96 * a3;
    v7 = result - a3;
    do
    {
      v28 = a3;
      v8 = v7;
      v9 = v6;
      do
      {
        v14 = (v9 - 96);
        v15 = *(v9 - 96);
        v16 = *a5;
        if (*(*a5 + 16) && (result = sub_1AF419D60(*v9), (v17 & 1) != 0))
        {
          v18 = *(*(v16 + 56) + 8 * result);
        }

        else
        {
          v18 = -1;
        }

        v19 = *a5;
        if (!*(*a5 + 16) || (result = sub_1AF419D60(v15), (v20 & 1) == 0))
        {
          if (v18 >= -1)
          {
            break;
          }

          goto LABEL_7;
        }

        if (v18 >= *(*(v19 + 56) + 8 * result))
        {
          break;
        }

LABEL_7:
        v24 = *(v9 + 32);
        v25 = *(v9 + 48);
        v26 = *(v9 + 64);
        v27 = *(v9 + 80);
        v22 = *v9;
        v23 = *(v9 + 16);
        v10 = *(v9 - 48);
        *(v9 + 32) = *(v9 - 64);
        *(v9 + 48) = v10;
        v11 = *(v9 - 16);
        *(v9 + 64) = *(v9 - 32);
        *(v9 + 80) = v11;
        v12 = *(v9 - 80);
        *v9 = *v14;
        *(v9 + 16) = v12;
        v9 -= 96;
        v14[2] = v24;
        v14[3] = v25;
        v14[4] = v26;
        v14[5] = v27;
        *v14 = v22;
        v14[1] = v23;
      }

      while (!__CFADD__(v8++, 1));
      a3 = v28 + 1;
      v6 += 96;
      --v7;
    }

    while (v28 + 1 != a2);
  }

  return result;
}

uint64_t sub_1AF6D93E4(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v68 = *a1;
    v7 = MEMORY[0x1E69E7CC0];
    v67 = a4;
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 >= v5)
      {
        ++v6;
        goto LABEL_34;
      }

      v10 = *a3 + 96 * v9;
      v11 = *(v10 + 56);
      v12 = *a3 + 96 * v6;
      v13 = *(v12 + 56);
      if (v13 >= v11)
      {
        v15 = *(v12 + 64);
        v14 = v11 >= v13 && *(v10 + 64) < v15;
      }

      else
      {
        v14 = 1;
      }

      v6 += 2;
      if (v8 + 2 >= v5)
      {
LABEL_25:
        if (v8 <= v9 && v14)
        {
          goto LABEL_29;
        }

        goto LABEL_34;
      }

      v9 = v5 - 1;
      v17 = *(v10 + 64);
      v18 = (*a3 + 96 * v8 + 256);
      while (1)
      {
        v19 = *(v18 - 1);
        v20 = *v18;
        if (v11 < v19)
        {
          if (!v14)
          {
            goto LABEL_34;
          }

          goto LABEL_17;
        }

        if (v19 >= v11)
        {
          if (((v14 ^ (v20 >= v17)) & 1) == 0)
          {
            v9 = v6 - 1;
            goto LABEL_25;
          }

          goto LABEL_17;
        }

        if (v14)
        {
          break;
        }

LABEL_17:
        v18 += 12;
        ++v6;
        v17 = v20;
        v11 = v19;
        if (v5 == v6)
        {
          v6 = v5;
          goto LABEL_25;
        }
      }

      if (v8 > v6 - 1)
      {
        goto LABEL_34;
      }

LABEL_29:
      v22 = 96 * v6 - 96;
      v23 = 96 * v8;
      v24 = v6;
      v25 = v8;
      do
      {
        if (v25 != --v24)
        {
          v26 = (*a3 + v22);
          v74 = *(*a3 + v23 + 32);
          v76 = *(*a3 + v23 + 48);
          v78 = *(*a3 + v23 + 64);
          v80 = *(*a3 + v23 + 80);
          v70 = *(*a3 + v23);
          v72 = *(*a3 + v23 + 16);
          memmove((*a3 + v23), v26, 0x60uLL);
          v26[2] = v74;
          v26[3] = v76;
          v26[4] = v78;
          v26[5] = v80;
          *v26 = v70;
          v26[1] = v72;
        }

        ++v25;
        v22 -= 96;
        v23 += 96;
      }

      while (v25 < v24);
      v5 = a3[1];
      a4 = v67;
LABEL_34:
      if (v6 < v5 && v6 - v8 < a4)
      {
        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v8 + a4 != v6)
        {
          v46 = *a3 + 96 * v6;
          v47 = v8 - v6;
          do
          {
            v48 = v47;
            v49 = v46;
            do
            {
              v55 = *(v49 + 56);
              v56 = *(v49 - 40);
              if (v56 >= v55 && (v55 < v56 || *(v49 + 64) >= *(v49 - 32)))
              {
                break;
              }

              v50 = (v49 - 96);
              v75 = *(v49 + 32);
              v77 = *(v49 + 48);
              v79 = *(v49 + 64);
              v81 = *(v49 + 80);
              v71 = *v49;
              v73 = *(v49 + 16);
              v51 = *(v49 - 48);
              *(v49 + 32) = *(v49 - 64);
              *(v49 + 48) = v51;
              v52 = *(v49 - 16);
              *(v49 + 64) = *(v49 - 32);
              *(v49 + 80) = v52;
              v53 = *(v49 - 80);
              *v49 = *(v49 - 96);
              *(v49 + 16) = v53;
              v50[2] = v75;
              v50[3] = v77;
              v50[4] = v79;
              v50[5] = v81;
              v49 -= 96;
              *v50 = v71;
              v50[1] = v73;
            }

            while (!__CFADD__(v48++, 1));
            ++v6;
            v46 += 96;
            --v47;
          }

          while (v6 != v5);
        }

        v6 = v5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF4209A4(0, *(v7 + 2) + 1, 1, v7);
      }

      v28 = *(v7 + 2);
      v27 = *(v7 + 3);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v7 = sub_1AF4209A4(v27 > 1, v28 + 1, 1, v7);
      }

      *(v7 + 2) = v29;
      v30 = v7 + 32;
      v31 = &v7[16 * v28 + 32];
      *v31 = v8;
      *(v31 + 1) = v6;
      if (v28)
      {
        while (2)
        {
          v32 = v29 - 1;
          if (v29 >= 4)
          {
            v36 = &v30[16 * v29];
            v37 = *(v36 - 7) - *(v36 - 8);
            v35 = *(v36 - 5) - *(v36 - 6);
            v38 = &v7[16 * v29];
            v33 = *v38;
            v34 = *(v38 + 1);
            if (v35 - v33 + v34 >= v37)
            {
              v41 = v29 - 2;
              v40 = *&v30[16 * v32 + 8] - *&v30[16 * v32];
            }

            else
            {
LABEL_49:
              v39 = v34 - v33;
              v40 = *&v30[16 * v32 + 8] - *&v30[16 * v32];
              if (v39 + v40 < v35)
              {
                goto LABEL_52;
              }

              v41 = v29 - 2;
            }

            if (v35 < v40)
            {
              v32 = v41;
            }
          }

          else
          {
            if (v29 == 3)
            {
              v33 = *(v7 + 6);
              v34 = *(v7 + 7);
              v35 = *(v7 + 5) - *(v7 + 4);
              goto LABEL_49;
            }

            v39 = *&v7[16 * v29 + 8] - *&v7[16 * v29];
            v40 = *&v30[16 * v32 + 8] - *&v30[16 * v32];
LABEL_52:
            if (v40 < v39)
            {
              break;
            }
          }

          v42 = &v30[16 * v32];
          v43 = *(v42 - 2);
          v44 = *(v42 + 1);
          sub_1AF6DA068((*a3 + 96 * v43), (*a3 + 96 * *v42), (*a3 + 96 * v44), v68);
          if (v4)
          {
          }

          *(v42 - 2) = v43;
          *(v42 - 1) = v44;
          v45 = *(v7 + 2);
          v29 = v45 - 1;
          memmove(&v30[16 * v32], v42 + 16, 16 * (v45 - 1 - v32));
          *(v7 + 2) = v45 - 1;
          if (v45 <= 2)
          {
            break;
          }

          continue;
        }
      }

      v5 = a3[1];
      a4 = v67;
      if (v6 >= v5)
      {
        goto LABEL_73;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_73:
  v69 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AF650C88(v7);
  }

  v58 = v7 + 16;
  v59 = *(v7 + 2);
  if (v59 >= 2)
  {
    do
    {
      v60 = &v7[16 * v59];
      v61 = *v60;
      v62 = &v58[2 * v59];
      v63 = v62[1];
      sub_1AF6DA068((*a3 + 96 * *v60), (*a3 + 96 * *v62), (*a3 + 96 * v63), v69);
      if (v4)
      {
        break;
      }

      *v60 = v61;
      *(v60 + 1) = v63;
      v64 = *v58 - 1;
      memmove(&v58[2 * v59], v62 + 2, 16 * (*v58 - v59));
      *v58 = v64;
      v59 = v64;
    }

    while (v64 > 1);
  }
}

uint64_t sub_1AF6D9924(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = a4;
    v8 = 0;
    v140 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v8++;
      if (v8 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 96 * v8);
        v12 = v11[1];
        v133[0] = *v11;
        v133[1] = v12;
        v13 = v11[2];
        v14 = v11[3];
        v15 = v11[5];
        v133[4] = v11[4];
        v133[5] = v15;
        v133[2] = v13;
        v133[3] = v14;
        v16 = v11[3];
        v129 = v11[2];
        v130 = v16;
        v17 = v11[5];
        v131 = v11[4];
        v132 = v17;
        v18 = v11[1];
        v127 = *v11;
        v128 = v18;
        v19 = (v10 + 96 * v9);
        v20 = v19[1];
        v134 = *v19;
        v135 = v20;
        v21 = v19[5];
        v23 = v19[2];
        v22 = v19[3];
        v138 = v19[4];
        v139 = v21;
        v136 = v23;
        v137 = v22;
        v24 = v19[3];
        v123 = v19[2];
        v124 = v24;
        v25 = v19[5];
        v125 = v19[4];
        v126 = v25;
        v26 = v19[1];
        v121 = *v19;
        v122 = v26;
        v27 = sub_1AF6D85E4(&v127, &v121, a5);
        if (v102)
        {
          v111 = v123;
          v112 = v124;
          v113 = v125;
          v114 = v126;
          v109 = v121;
          v110 = v122;
          sub_1AF6D8FC4(v133, &v115);
          sub_1AF6D8FC4(&v134, &v115);
          sub_1AF6D8FFC(&v109);
          v117 = v129;
          v118 = v130;
          v119 = v131;
          v120 = v132;
          v115 = v127;
          v116 = v128;
          sub_1AF6D8FFC(&v115);
        }

        v28 = v27;
        v111 = v123;
        v112 = v124;
        v113 = v125;
        v114 = v126;
        v109 = v121;
        v110 = v122;
        sub_1AF6D8FC4(v133, &v103);
        sub_1AF6D8FC4(&v134, &v103);
        sub_1AF6D8FFC(&v109);
        v117 = v129;
        v118 = v130;
        v119 = v131;
        v120 = v132;
        v115 = v127;
        v116 = v128;
        sub_1AF6D8FFC(&v115);
        v8 = v9 + 2;
        if (v9 + 2 < v6)
        {
          v95 = v9;
          v29 = (v10 + 96 * v9 + 96);
          do
          {
            v30 = *v29;
            v31 = *a5;
            if (*(*a5 + 16) && (v32 = sub_1AF419D60(v29[12]), (v33 & 1) != 0))
            {
              v34 = *(*(v31 + 56) + 8 * v32);
            }

            else
            {
              v34 = -1;
            }

            v35 = *a5;
            if (*(*a5 + 16) && (v36 = sub_1AF419D60(v30), (v37 & 1) != 0))
            {
              if (((v28 ^ (v34 >= *(*(v35 + 56) + 8 * v36))) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            else if (((v28 ^ (v34 > -2)) & 1) == 0)
            {
              goto LABEL_19;
            }

            v29 += 12;
            ++v8;
          }

          while (v6 != v8);
          v8 = v6;
LABEL_19:
          v9 = v95;
        }

        if (v28 && v9 < v8)
        {
          v38 = 96 * v8 - 96;
          v39 = 96 * v9;
          v40 = v8;
          v41 = v9;
          do
          {
            if (v41 != --v40)
            {
              v42 = (*a3 + v39);
              v43 = (*a3 + v38);
              v105 = v42[2];
              v106 = v42[3];
              v107 = v42[4];
              v108 = v42[5];
              v103 = *v42;
              v104 = v42[1];
              memmove(v42, v43, 0x60uLL);
              v43[2] = v105;
              v43[3] = v106;
              v43[4] = v107;
              v43[5] = v108;
              *v43 = v103;
              v43[1] = v104;
            }

            ++v41;
            v38 -= 96;
            v39 += 96;
          }

          while (v41 < v40);
          v7 = a4;
        }
      }

      v44 = a3[1];
      if (v8 >= v44 || v8 - v9 >= v7)
      {
        goto LABEL_51;
      }

      if (v9 + v7 >= v44)
      {
        v46 = a3[1];
      }

      else
      {
        v46 = v9 + v7;
      }

      if (v9 + v7 == v8)
      {
        v8 = v46;
        goto LABEL_51;
      }

      v47 = *a3 + 96 * v8;
      v96 = v9;
      v48 = v9 - v8;
      v99 = v46;
      while (2)
      {
        v101 = v8;
        v49 = v48;
        v50 = v47;
        do
        {
          v55 = (v50 - 96);
          v56 = *(v50 - 96);
          v57 = *a5;
          if (*(*a5 + 16) && (v58 = sub_1AF419D60(*v50), (v59 & 1) != 0))
          {
            v60 = *(*(v57 + 56) + 8 * v58);
          }

          else
          {
            v60 = -1;
          }

          v61 = *a5;
          if (!*(*a5 + 16) || (v62 = sub_1AF419D60(v56), (v63 & 1) == 0))
          {
            if (v60 >= -1)
            {
              break;
            }

            goto LABEL_41;
          }

          if (v60 >= *(*(v61 + 56) + 8 * v62))
          {
            break;
          }

LABEL_41:
          v136 = *(v50 + 32);
          v137 = *(v50 + 48);
          v138 = *(v50 + 64);
          v139 = *(v50 + 80);
          v134 = *v50;
          v135 = *(v50 + 16);
          v51 = *(v50 - 48);
          *(v50 + 32) = *(v50 - 64);
          *(v50 + 48) = v51;
          v52 = *(v50 - 16);
          *(v50 + 64) = *(v50 - 32);
          *(v50 + 80) = v52;
          v53 = *(v50 - 80);
          *v50 = *v55;
          *(v50 + 16) = v53;
          v50 -= 96;
          v55[2] = v136;
          v55[3] = v137;
          v55[4] = v138;
          v55[5] = v139;
          *v55 = v134;
          v55[1] = v135;
        }

        while (!__CFADD__(v49++, 1));
        v8 = v101 + 1;
        v47 += 96;
        --v48;
        if (v101 + 1 != v99)
        {
          continue;
        }

        break;
      }

      v8 = v99;
      v9 = v96;
LABEL_51:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v140 = sub_1AF4209A4(0, *(v140 + 2) + 1, 1, v140);
      }

      v65 = *(v140 + 2);
      v64 = *(v140 + 3);
      v66 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        v140 = sub_1AF4209A4(v64 > 1, v65 + 1, 1, v140);
      }

      v67 = v140;
      *(v140 + 2) = v66;
      v68 = v67 + 32;
      v69 = &v67[16 * v65 + 32];
      *v69 = v9;
      *(v69 + 1) = v8;
      if (v65)
      {
        v70 = *a1;
        do
        {
          v71 = v66 - 1;
          if (v66 >= 4)
          {
            v75 = &v68[16 * v66];
            v76 = *(v75 - 7) - *(v75 - 8);
            v74 = *(v75 - 5) - *(v75 - 6);
            v77 = &v140[16 * v66];
            v72 = *v77;
            v73 = *(v77 + 1);
            if (v74 - v72 + v73 >= v76)
            {
              v80 = v66 - 2;
              v79 = *&v68[16 * v71 + 8] - *&v68[16 * v71];
              goto LABEL_67;
            }
          }

          else
          {
            if (v66 != 3)
            {
              v78 = *&v140[16 * v66 + 8] - *&v140[16 * v66];
              v79 = *&v68[16 * v71 + 8] - *&v68[16 * v71];
LABEL_64:
              if (v79 < v78)
              {
                break;
              }

              goto LABEL_69;
            }

            v72 = *(v140 + 6);
            v73 = *(v140 + 7);
            v74 = *(v140 + 5) - *(v140 + 4);
          }

          v78 = v73 - v72;
          v79 = *&v68[16 * v71 + 8] - *&v68[16 * v71];
          if (v78 + v79 < v74)
          {
            goto LABEL_64;
          }

          v80 = v66 - 2;
LABEL_67:
          if (v74 < v79)
          {
            v71 = v80;
          }

LABEL_69:
          v81 = &v68[16 * v71];
          v82 = *(v81 - 2);
          v83 = *(v81 + 1);
          sub_1AF6DA2C8((*a3 + 96 * v82), (*a3 + 96 * *v81), (*a3 + 96 * v83), v70, a5);
          if (v102)
          {
          }

          *(v81 - 2) = v82;
          *(v81 - 1) = v83;
          v84 = v140;
          v85 = *(v140 + 2);
          v66 = v85 - 1;
          memmove(&v68[16 * v71], v81 + 16, 16 * (v85 - 1 - v71));
          *(v84 + 2) = v85 - 1;
        }

        while (v85 > 2);
      }

      v6 = a3[1];
      v7 = a4;
      if (v8 >= v6)
      {
        goto LABEL_73;
      }
    }
  }

  v140 = MEMORY[0x1E69E7CC0];
LABEL_73:
  v86 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v140 = sub_1AF650C88(v140);
  }

  v87 = v140 + 16;
  v88 = *(v140 + 2);
  if (v88 >= 2)
  {
    do
    {
      v89 = &v140[16 * v88];
      v90 = *v89;
      v91 = &v87[16 * v88];
      v92 = *(v91 + 1);
      sub_1AF6DA2C8((*a3 + 96 * *v89), (*a3 + 96 * *v91), (*a3 + 96 * v92), v86, a5);
      if (v102)
      {
        break;
      }

      *v89 = v90;
      *(v89 + 1) = v92;
      v93 = *v87 - 1;
      memmove(&v87[16 * v88], v91 + 16, 16 * (*v87 - v88));
      *v87 = v93;
      v88 = v93;
    }

    while (v93 > 1);
  }
}

uint64_t sub_1AF6DA068(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[96 * v9] <= a4)
    {
      memmove(a4, __dst, 96 * v9);
    }

    v12 = &v4[96 * v9];
    if (v8 < 96)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *(v6 + 7);
      v16 = *(v4 + 7);
      if (v16 >= v15 && (v15 < v16 || *(v6 + 8) >= *(v4 + 8)))
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 96;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 96;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 96;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x60uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[96 * v11] <= a4)
  {
    memmove(a4, __src, 96 * v11);
  }

  v12 = &v4[96 * v11];
  if (v10 >= 96 && v6 > v7)
  {
LABEL_24:
    v5 -= 96;
    do
    {
      v18 = v5 + 96;
      v19 = *(v12 - 5);
      v20 = *(v6 - 5);
      if (v20 < v19 || (v19 >= v20 ? (v21 = *(v12 - 4) < *(v6 - 4)) : (v21 = 0), v21))
      {
        v23 = v6 - 96;
        if (v18 != v6)
        {
          memmove(v5, v6 - 96, 0x60uLL);
        }

        if (v12 <= v4 || (v6 -= 96, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v22 = (v12 - 96);
      if (v18 != v12)
      {
        memmove(v5, v12 - 96, 0x60uLL);
      }

      v5 -= 96;
      v12 -= 96;
    }

    while (v22 > v4);
    v12 = v22;
  }

LABEL_39:
  v24 = (v12 - v4) / 96;
  if (v6 != v4 || v6 >= &v4[96 * v24])
  {
    memmove(v6, v4, 96 * v24);
  }

  return 1;
}

uint64_t sub_1AF6DA2C8(char *__dst, char *__src, char *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 96;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 96;
  if (v10 < v12)
  {
    if (a4 != __dst || &__dst[96 * v10] <= a4)
    {
      memmove(a4, __dst, 96 * v10);
    }

    v13 = &v5[12 * v10];
    if (v9 < 96)
    {
LABEL_6:
      v7 = v8;
      goto LABEL_47;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_6;
      }

      v16 = *v5;
      v17 = *a5;
      if (*(*a5 + 16) && (v18 = sub_1AF419D60(*v7), (v19 & 1) != 0))
      {
        v20 = *(*(v17 + 56) + 8 * v18);
      }

      else
      {
        v20 = -1;
      }

      v21 = *a5;
      if (*(*a5 + 16) && (v22 = sub_1AF419D60(v16), (v23 & 1) != 0))
      {
        if (v20 < *(*(v21 + 56) + 8 * v22))
        {
          goto LABEL_20;
        }
      }

      else if (v20 < -1)
      {
LABEL_20:
        v14 = v7;
        v15 = v8 == v7;
        v7 += 12;
        if (v15)
        {
          goto LABEL_9;
        }

LABEL_8:
        memmove(v8, v14, 0x60uLL);
        goto LABEL_9;
      }

      v14 = v5;
      v15 = v8 == v5;
      v5 += 12;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v8 += 12;
      if (v5 >= v13)
      {
        goto LABEL_6;
      }
    }
  }

  if (a4 != __src || &__src[96 * v12] <= a4)
  {
    memmove(a4, __src, 96 * v12);
  }

  v13 = &v5[12 * v12];
  if (v11 >= 96 && v7 > v8)
  {
LABEL_28:
    v24 = v7 - 12;
    v6 -= 12;
    __srca = v7 - 12;
    do
    {
      v25 = v13 - 12;
      v26 = *v24;
      v27 = *a5;
      if (*(*a5 + 16) && (v28 = sub_1AF419D60(*v25), (v29 & 1) != 0))
      {
        v30 = *(*(v27 + 56) + 8 * v28);
      }

      else
      {
        v30 = -1;
      }

      v31 = *a5;
      if (*(*a5 + 16) && (v32 = sub_1AF419D60(v26), (v33 & 1) != 0))
      {
        if (v30 < *(*(v31 + 56) + 8 * v32))
        {
          goto LABEL_41;
        }
      }

      else if (v30 < -1)
      {
LABEL_41:
        if (v6 + 12 != v7)
        {
          memmove(v6, __srca, 0x60uLL);
        }

        if (v13 <= v5 || (v7 -= 12, __srca <= v8))
        {
          v7 = __srca;
          goto LABEL_47;
        }

        goto LABEL_28;
      }

      v24 = v7 - 12;
      if (v6 + 12 != v13)
      {
        memmove(v6, v13 - 12, 0x60uLL);
      }

      v6 -= 12;
      v13 -= 12;
    }

    while (v25 > v5);
    v13 = v25;
  }

LABEL_47:
  v34 = (v13 - v5) / 96;
  if (v7 != v5 || v7 >= &v5[12 * v34])
  {
    memmove(v7, v5, 96 * v34);
  }

  return 1;
}

uint64_t sub_1AF6DA5C8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = sub_1AF6D658C(*a1, a2);
  v7 = v5;
  if (!v2)
  {
    if (v6)
    {
      return *(v4 + 16);
    }

    else
    {
      v9 = v5 + 1;
      while (v9 != *(v4 + 16))
      {
        v66 = v4;
        v10 = v4 + 32;
        v11 = v10 + 96 * v9;
        v12 = *(v11 + 8);
        v13 = *(v11 + 12);
        v14 = v12 == -1 && v13 == 0;
        if (!v14 && (v15 = *a2, *(*a2 + 16)) && (sub_1AFDFF288(), sub_1AFDFF2C8(), sub_1AFDFF2C8(), v16 = sub_1AFDFF2F8(), v17 = -1 << *(v15 + 32), v18 = v16 & ~v17, ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
        {
          v19 = ~v17;
          while (1)
          {
            v20 = (*(v15 + 48) + 8 * v18);
            v22 = *v20;
            v21 = v20[1];
            if (v22 == v12 && v21 == v13)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v4 = v66;
          ++v9;
        }

        else
        {
LABEL_21:
          if (v7 == v9)
          {
            v4 = v66;
          }

          else
          {
            v24 = (v10 + 96 * v7);
            v25 = v24[1];
            v54 = *v24;
            v55 = v25;
            v26 = v24[2];
            v27 = v24[3];
            v28 = v24[5];
            v58 = v24[4];
            v59 = v28;
            v56 = v26;
            v57 = v27;
            v29 = *(v11 + 80);
            v31 = *(v11 + 32);
            v30 = *(v11 + 48);
            v64 = *(v11 + 64);
            v65 = v29;
            v62 = v31;
            v63 = v30;
            v32 = *(v11 + 16);
            v60 = *v11;
            v61 = v32;
            sub_1AF6D8FC4(&v54, v53);
            sub_1AF6D8FC4(&v60, v53);
            v4 = v66;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_1AFC0DA94(v4);
            }

            v33 = (v4 + 32 + 96 * v7);
            v34 = v33[1];
            v52[0] = *v33;
            v52[1] = v34;
            v35 = v33[2];
            v36 = v33[3];
            v37 = v33[5];
            v52[4] = v33[4];
            v52[5] = v37;
            v52[2] = v35;
            v52[3] = v36;
            v38 = v65;
            v40 = v62;
            v39 = v63;
            v33[4] = v64;
            v33[5] = v38;
            v33[2] = v40;
            v33[3] = v39;
            v41 = v61;
            *v33 = v60;
            v33[1] = v41;
            sub_1AF6D8FFC(v52);
            v42 = (v4 + 32 + 96 * v9);
            v43 = v42[1];
            v53[0] = *v42;
            v53[1] = v43;
            v44 = v42[2];
            v45 = v42[3];
            v46 = v42[5];
            v53[4] = v42[4];
            v53[5] = v46;
            v53[2] = v44;
            v53[3] = v45;
            v47 = v59;
            v49 = v56;
            v48 = v57;
            v42[4] = v58;
            v42[5] = v47;
            v42[2] = v49;
            v42[3] = v48;
            v50 = v55;
            *v42 = v54;
            v42[1] = v50;
            sub_1AF6D8FFC(v53);
            *a1 = v4;
          }

          ++v7;
          ++v9;
        }
      }
    }
  }

  return v7;
}

uint64_t sub_1AF6DA834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *&v40 = a2;
  *(&v40 + 1) = a3;
  v14 = *(a10 + 32);

  v14(v15, a9, a10);

  v16 = *(a10 + 24);
  if (v16(a9, a10) != -1)
  {
    a4 = v16(a9, a10);
  }

  v38 = a4;
  v17 = (*(a10 + 16))(a9, a10);
  v19 = v18;
  v21 = v20;
  v22 = *(a8 + 24);

  v35 = HIDWORD(a7);
  v36 = a7;
  if (!HIDWORD(a7) && a7 == -1)
  {
    swift_unknownObjectRetain();

LABEL_9:
    v27 = v21;
    v25 = *(v22 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
    if (v25)
    {
      v29 = v19;
      v31 = sub_1AFDFE238();
      LODWORD(v25) = vfx_counters.addCounter(name:scope:kind:)(v31, v32, 0, 0, v25);

      goto LABEL_14;
    }

LABEL_13:
    v29 = v19;
    goto LABEL_14;
  }

  v23 = sub_1AF3C9078(a7);
  v25 = v24;
  swift_unknownObjectRetain();

  if (!v25)
  {
    goto LABEL_9;
  }

  v26 = v23;
  v27 = v21;
  v28 = *(v22 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
  if (!v28)
  {

    LODWORD(v25) = 0;
    goto LABEL_13;
  }

  *&v49[0] = v26;
  *(&v49[0] + 1) = v25;
  v34 = v28;
  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  v29 = v19;
  v30 = sub_1AFDFE238();
  MEMORY[0x1B2718AE0](v30);

  LODWORD(v25) = vfx_counters.addCounter(name:scope:kind:)(*&v49[0], v25, 0, 0, v34);

LABEL_14:
  *&v42 = a1;
  *(&v42 + 1) = __PAIR64__(v35, v36);
  *&v43 = v17;
  *(&v43 + 1) = v29;
  LOBYTE(v44) = v27;
  *(&v44 + 1) = *v48;
  DWORD1(v44) = *&v48[3];
  *(&v44 + 1) = a1;
  *&v45 = a10;
  *(&v45 + 1) = v38;
  *&v46 = a5;
  WORD4(v46) = 257;
  BYTE10(v46) = a6 & 1;
  HIDWORD(v46) = v25;
  v47 = v40;
  os_unfair_lock_lock(*(a8 + 56));
  v49[2] = v44;
  v49[3] = v45;
  v49[4] = v46;
  v49[5] = v40;
  v49[0] = v42;
  v49[1] = v43;
  sub_1AF6D8FC4(&v42, v41);
  sub_1AF64D800(0, 0, v49);
  sub_1AF64D800(0, 0, v49);
  sub_1AF6D8FFC(&v42);
  *(a8 + 160) = 257;
  os_unfair_lock_unlock(*(a8 + 56));
  return sub_1AF6D8FFC(&v42);
}

uint64_t sub_1AF6DAB88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = 0;
    v5 = a1 + 32;
    v6 = *(a2 + 144);
    v7 = v6[2];
    v8 = v6 + 4;
    do
    {
      v9 = v7;
      v10 = v8;
      while (v9)
      {
        v11 = *v10++;
        v12 = vceq_s32(v11, *(v5 + 96 * result + 8));
        --*&v9;
        if (v12.i32[0] & v12.i32[1])
        {
          return result;
        }
      }

      ++result;
    }

    while (result != v2);
  }

  return 0;
}

uint64_t sub_1AF6DAC00(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = sub_1AF6DAB88(*a1, a2);
  v8 = v6;
  if (!v2)
  {
    if (v7)
    {
      return *(v5 + 16);
    }

    else
    {
      for (i = v6 + 1; i != *(v5 + 16); ++i)
      {
        v29 = v5 + 32 + 96 * i;
        v30 = *(a2 + 144);
        v31 = v30[2];
        v32 = v30 + 4;
        while (v31)
        {
          v33 = *v32++;
          v34 = vceq_s32(v33, *(v29 + 8));
          --*&v31;
          if (v34.i32[0] & v34.i32[1])
          {
            goto LABEL_9;
          }
        }

        if (v8 != i)
        {
          v35 = (v5 + 32 + 96 * v8);
          v36 = v35[1];
          v46 = *v35;
          v47 = v36;
          v37 = v35[2];
          v38 = v35[3];
          v39 = v35[5];
          v50 = v35[4];
          v51 = v39;
          v48 = v37;
          v49 = v38;
          v40 = *(v29 + 80);
          v42 = *(v29 + 32);
          v41 = *(v29 + 48);
          v56 = *(v29 + 64);
          v57 = v40;
          v54 = v42;
          v55 = v41;
          v43 = *(v29 + 16);
          v52 = *v29;
          v53 = v43;
          sub_1AF6D8FC4(&v46, v45);
          sub_1AF6D8FC4(&v52, v45);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1AFC0DA94(v5);
          }

          v11 = (v5 + 32 + 96 * v8);
          v12 = v11[1];
          v44[0] = *v11;
          v44[1] = v12;
          v13 = v11[2];
          v14 = v11[3];
          v15 = v11[5];
          v44[4] = v11[4];
          v44[5] = v15;
          v44[2] = v13;
          v44[3] = v14;
          v16 = v57;
          v18 = v54;
          v17 = v55;
          v11[4] = v56;
          v11[5] = v16;
          v11[2] = v18;
          v11[3] = v17;
          v19 = v53;
          *v11 = v52;
          v11[1] = v19;
          sub_1AF6D8FFC(v44);
          v20 = (v5 + 32 + 96 * i);
          v21 = v20[1];
          v45[0] = *v20;
          v45[1] = v21;
          v22 = v20[2];
          v23 = v20[3];
          v24 = v20[5];
          v45[4] = v20[4];
          v45[5] = v24;
          v45[2] = v22;
          v45[3] = v23;
          v25 = v51;
          v27 = v48;
          v26 = v49;
          v20[4] = v50;
          v20[5] = v25;
          v20[2] = v27;
          v20[3] = v26;
          v28 = v47;
          *v20 = v46;
          v20[1] = v28;
          sub_1AF6D8FFC(v45);
          *a1 = v5;
        }

        ++v8;
LABEL_9:
        ;
      }
    }
  }

  return v8;
}

void sub_1AF6DADD0(uint64_t a1)
{
  if (!qword_1EB63D658)
  {
    sub_1AF6DAE38(255);
    v1 = sub_1AFDFE4C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63D658);
    }
  }
}

void sub_1AF6DAE38(uint64_t a1)
{
  if (!qword_1EB6389A0)
  {
    sub_1AF4461C4(255);
    v1 = sub_1AFDFD538();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6389A0);
    }
  }
}

unint64_t sub_1AF6DAEF8()
{
  result = qword_1EB63D660;
  if (!qword_1EB63D660)
  {
    result = swift_getWitnessTable(byte_1AFE715BC, &type metadata for Scheduler.Action, v0, v1);
    atomic_store(result, &qword_1EB63D660);
  }

  return result;
}

unint64_t sub_1AF6DAF50()
{
  result = qword_1EB63D668;
  if (!qword_1EB63D668)
  {
    result = swift_getWitnessTable(aX_13, &type metadata for Scheduler.Tag, v0, v1);
    atomic_store(result, &qword_1EB63D668);
  }

  return result;
}

id sub_1AF6DAFA8(void *a1, id a2, unsigned __int8 a3)
{
  if ((a3 >> 5) > 6u)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1AF6DB010(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AF6DAFA8(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for SerializationError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AF6DAFA8(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1AF6A2070(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for SerializationError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1AF6A2070(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for SerializationError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 17))
  {
    return (*a1 + 121);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SerializationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 16) = 0;
    *result = a2 - 121;
    *(result + 8) = 0;
    if (a3 >= 0x79)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

unint64_t sub_1AF6DB1E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = a3 >> 5;
  if (v5 <= 3)
  {
    if ((a3 >> 5) <= 1u)
    {
      if (a3 >> 5)
      {
        sub_1AFDFE218();

        v6 = 0xD000000000000011;
      }

      else
      {
        sub_1AFDFE218();

        v6 = 0xD00000000000001CLL;
      }

      goto LABEL_14;
    }

    if (v5 == 2)
    {
      v7 = 0x61646F6320746F4ELL;
LABEL_16:
      v9 = v7;
      goto LABEL_17;
    }

LABEL_15:
    sub_1AFDFE218();

    v7 = 0x74276E646C756F43;
    goto LABEL_16;
  }

  if ((a3 >> 5) > 5u)
  {
    if (v5 != 6)
    {
      v9 = 0;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2FFC0);
      swift_getErrorValue();
      sub_1AFDFEDD8();
      return v9;
    }

    sub_1AFDFE218();

    v6 = 0xD000000000000015;
    goto LABEL_14;
  }

  if (v5 == 4)
  {
    goto LABEL_15;
  }

  sub_1AFDFE218();

  v6 = 0xD000000000000012;
LABEL_14:
  v9 = v6;
LABEL_17:
  MEMORY[0x1B2718AE0](a1, a2);
  return v9;
}

uint64_t sub_1AF6DB4BC(uint64_t a1)
{
  if (a1 <= 799)
  {
    if (a1 > 399)
    {
      if (a1 > 599)
      {
        if (a1 == 600)
        {
          return 0x646E6572202D2D3CLL;
        }

        if (a1 == 700)
        {
          return 0x65526E696765622ELL;
        }
      }

      else
      {
        if (a1 == 400)
        {
          return 0x6574616470752ELL;
        }

        if (a1 == 500)
        {
          return 0x64705574736F702ELL;
        }
      }
    }

    else if (a1 > 199)
    {
      if (a1 == 200)
      {
        return 0x616470556572702ELL;
      }

      if (a1 == 300)
      {
        return 0x6C616974696E692ELL;
      }
    }

    else
    {
      if (a1 == -1)
      {
        return 0x69636570736E752ELL;
      }

      if (a1 == 100)
      {
        return 0x72466E696765622ELL;
      }
    }

    goto LABEL_40;
  }

  if (a1 <= 1199)
  {
    if (a1 > 999)
    {
      if (a1 == 1000)
      {
        return 0x61704F74736F702ELL;
      }

      if (a1 == 1100)
      {
        return 0xD000000000000012;
      }

      goto LABEL_40;
    }

    if (a1 == 800)
    {
      return 0xD000000000000011;
    }

    if (a1 != 900)
    {
      goto LABEL_40;
    }

    return 0x4F7265646E65722ELL;
  }

  if (a1 <= 1399)
  {
    if (a1 == 1200)
    {
      return 0x584674736F702ELL;
    }

    if (a1 != 1300)
    {
      goto LABEL_40;
    }

    return 0x4F7265646E65722ELL;
  }

  if (a1 == 1400)
  {
    return 0x6975676D692ELL;
  }

  if (a1 == 1500)
  {
    return 0x6E655274736F702ELL;
  }

LABEL_40:
  v2 = 100 * (a1 / 100);
  if (v2 <= 100)
  {
    v2 = 100;
    if (a1 >= 100)
    {
      goto LABEL_42;
    }

LABEL_44:
    v4 = sub_1AF6DB4BC(v2);
    MEMORY[0x1B2718AE0](45, 0xE100000000000000);
    v3 = sub_1AFDFEA08();
    goto LABEL_45;
  }

  if (a1 % 100 < 0)
  {
    goto LABEL_44;
  }

LABEL_42:
  v4 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](43, 0xE100000000000000);
  v3 = sub_1AF6DB4BC(v2);
LABEL_45:
  MEMORY[0x1B2718AE0](v3);

  return v4;
}

uint64_t sub_1AF6DB88C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1AF6DB8F8()
{
  result = qword_1EB63D670;
  if (!qword_1EB63D670)
  {
    result = swift_getWitnessTable(byte_1AFE71770, &type metadata for SystemStage, v0, v1);
    atomic_store(result, &qword_1EB63D670);
  }

  return result;
}

uint64_t sub_1AF6DB94C(uint64_t a1)
{
  v3 = *(v1 + 40);

  v3(a1);
}

uint64_t sub_1AF6DB9A0()
{
  type metadata accessor for GenericComponentSystem();
  result = swift_allocObject();
  *(result + 16) = "Default";
  *(result + 24) = 7;
  *(result + 32) = 2;
  *(result + 40) = nullsub_106;
  *(result + 48) = 0;
  return result;
}

char *sub_1AF6DB9FC()
{
  v1 = *(v0 + 16);
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
  v7 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    goto LABEL_10;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = *(*(v1 + 56) + 24 * (v8 | (v6 << 6)));
      v10 = swift_conformsToProtocol2();
      if (v10 && v9 != 0)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_10;
      }
    }

    v13 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1AF420E4C(0, *(v7 + 2) + 1, 1, v7);
    }

    v15 = *(v7 + 2);
    v16 = *(v7 + 3);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v23 = v15 + 1;
      v19 = v7;
      v20 = *(v7 + 2);
      v21 = sub_1AF420E4C(v16 > 1, v15 + 1, 1, v19);
      v15 = v20;
      v17 = v23;
      v7 = v21;
    }

    *(v7 + 2) = v17;
    v18 = &v7[16 * v15];
    *(v18 + 4) = v9;
    *(v18 + 5) = v13;
  }

  while (v4);
LABEL_10:
  while (1)
  {
    v12 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v6++ + 72);
    if (v4)
    {
      v6 = v12;
      goto LABEL_4;
    }
  }

  return v7;
}

char *sub_1AF6DBB94()
{
  v0 = sub_1AF6DB9FC();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = (v0 + 32);
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = *v2;
      v6 = swift_conformsToProtocol2();
      if (v6)
      {
        v7 = v5 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        v8 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1AF422B14(0, *(v3 + 2) + 1, 1, v3);
        }

        v10 = *(v3 + 2);
        v9 = *(v3 + 3);
        if (v10 >= v9 >> 1)
        {
          v3 = sub_1AF422B14(v9 > 1, v10 + 1, 1, v3);
        }

        *(v3 + 2) = v10 + 1;
        v4 = &v3[16 * v10];
        *(v4 + 4) = v5;
        *(v4 + 5) = v8;
      }

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1AF6DBCAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1AF75D128(a1);
  v7 = v6;
  if (*(*(v2 + 16) + 16))
  {

    sub_1AF419914(v5, v7);
    if (v8)
    {
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_1AF851DF4(a1, 0, 1, v5, v7, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v50;

  sub_1AF6DC56C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0;
  *(inited + 40) = 1;
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  v11 = sub_1AF3C4008(a2);
  sub_1AF48FE08(v11);
  v46 = *(inited + 16);
  if (v46)
  {
    v45 = inited + 32;
    sub_1AF6DCCE0(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    for (i = 0; i != v46; ++i)
    {
      v13 = v45 + 32 * i;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_1AFE431C0;
      *(v18 + 32) = v16;
      *(v18 + 40) = v17;
      swift_bridgeObjectRetain_n();
      v19 = sub_1AF6DC5C4(v16, v17);

      v20 = v19;
      v21 = *(v19 + 2);
      if (v21)
      {
        v47 = i;
        v42 = v20;
        v18 = sub_1AF420554(1, v21 + 1, 1, v18);
        if (*(v42 + 2))
        {
          swift_arrayInitWithCopy();

          v43 = v18;
          v23 = *(v18 + 16) + v21;
          v48 = v43;
          *(v43 + 16) = v23;
LABEL_14:
          v24 = (v48 + 40);
LABEL_18:
          v29 = *(v24 - 1);
          v28 = *v24;
          v30 = *(*(v3 + 24) + 16);

          if (v30)
          {

            sub_1AF419914(v29, v28);
            if (v31)
            {

LABEL_17:

              v24 += 2;
              if (!--v23)
              {

                i = v47;
                continue;
              }

              goto LABEL_18;
            }
          }

          v32 = swift_isUniquelyReferenced_nonNull_native();
          v33 = *(v3 + 24);
          v51 = v33;
          *(v3 + 24) = 0x8000000000000000;
          v34 = sub_1AF419914(v29, v28);
          v36 = v35;
          v37 = v33[2] + ((v35 & 1) == 0);
          if (v33[3] >= v37)
          {
            if (v32)
            {
              goto LABEL_26;
            }

            v41 = v34;
            sub_1AF845590();
            v34 = v41;
            if ((v36 & 1) == 0)
            {
              goto LABEL_15;
            }

LABEL_27:
            v39 = v34;

            v25 = v51;
            v40 = v51[7] + 24 * v39;
            *v40 = a1;
            *(v40 + 8) = v14;
            *(v40 + 16) = v15;
          }

          else
          {
            sub_1AF82DFF0(v37, v32);
            v34 = sub_1AF419914(v29, v28);
            if ((v36 & 1) != (v38 & 1))
            {
              result = sub_1AFDFF1A8();
              __break(1u);
              return result;
            }

LABEL_26:
            if (v36)
            {
              goto LABEL_27;
            }

LABEL_15:
            v25 = v33;
            v33[(v34 >> 6) + 8] |= 1 << v34;
            v26 = (v33[6] + 16 * v34);
            *v26 = v29;
            v26[1] = v28;
            v27 = v33[7] + 24 * v34;
            *v27 = a1;
            *(v27 + 8) = v14;
            *(v27 + 16) = v15;
            ++v33[2];
          }

          *(v3 + 24) = v25;
          goto LABEL_17;
        }

        i = v47;
      }

      v22 = v18;
      v23 = *(v18 + 16);
      if (v23)
      {
        v47 = i;
        v48 = v22;
        goto LABEL_14;
      }
    }
  }
}

uint64_t sub_1AF6DC144(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(v4 + 24);
  if (!*(v7 + 16))
  {
LABEL_8:
    sub_1AF4486E4();
    if ((sub_1AFDFDF18() & 1) == 0)
    {
      return 0;
    }

    sub_1AFDFDF28();
    sub_1AF6DCCE0(0, &qword_1EB63D678, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6948]);
    sub_1AF6DC49C();
    sub_1AF6DC518();
    v17 = sub_1AFDFD298();
    v19 = v18;

    v20 = sub_1AF6DC144(v17, v19, 0, 1);

    if (!v20)
    {
      return 0;
    }

    if (swift_conformsToProtocol2())
    {
      return v20;
    }

    return 0;
  }

  v10 = sub_1AF419914(a1, a2);
  if ((v11 & 1) == 0)
  {

    goto LABEL_8;
  }

  v12 = *(v7 + 56) + 24 * v10;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);

  if (v15)
  {
    return v13;
  }

  if (a4)
  {
    if (v14 <= 3031)
    {
      return v13;
    }

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF30140);
    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF30160);
    v21 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v21);

    result = sub_1AFDFE518();
    __break(1u);
  }

  else if (v14 <= a3)
  {
    return 0;
  }

  else
  {
    return v13;
  }

  return result;
}

uint64_t sub_1AF6DC420()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1AF6DC49C()
{
  result = qword_1EB63D680;
  if (!qword_1EB63D680)
  {
    sub_1AF6DCCE0(255, &qword_1EB63D678, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6948]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6968], v3, v0, v1);
    atomic_store(result, &qword_1EB63D680);
  }

  return result;
}

unint64_t sub_1AF6DC518()
{
  result = qword_1EB63D7A0;
  if (!qword_1EB63D7A0)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E67E8], MEMORY[0x1E69E67B0], v0, v1);
    atomic_store(result, &qword_1EB63D7A0);
  }

  return result;
}

void sub_1AF6DC56C(uint64_t a1)
{
  if (!qword_1ED72F7B0)
  {
    sub_1AF446420(255);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED72F7B0);
    }
  }
}

char *sub_1AF6DC5C4(uint64_t a1, uint64_t a2)
{
  if (sub_1AFDFD178())
  {
    sub_1AF4486E4();
    v2 = sub_1AFDFDEB8();
    v4 = v3;
    v5 = sub_1AF420554(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1AF420554(v6 > 1, v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[16 * v7];
    *(v8 + 4) = v2;
    *(v8 + 5) = v4;
    v9 = sub_1AFDFDEB8();
    v12 = *(v5 + 2);
    v11 = *(v5 + 3);
    if (v12 >= v11 >> 1)
    {
      v69 = v9;
      v55 = v10;
      v56 = sub_1AF420554(v11 > 1, v12 + 1, 1, v5);
      v10 = v55;
      v5 = v56;
      v9 = v69;
    }

    *(v5 + 2) = v12 + 1;
    v13 = &v5[16 * v12];
    *(v13 + 4) = v9;
    *(v13 + 5) = v10;
    v14 = sub_1AFDFDEB8();
    v17 = *(v5 + 2);
    v16 = *(v5 + 3);
    if (v17 >= v16 >> 1)
    {
      v57 = v14;
      v58 = v15;
      v59 = sub_1AF420554(v16 > 1, v17 + 1, 1, v5);
      v15 = v58;
      v5 = v59;
      v14 = v57;
    }

    *(v5 + 2) = v17 + 1;
    v18 = &v5[16 * v17];
    *(v18 + 4) = v14;
    *(v18 + 5) = v15;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1AFDFD178())
  {
    sub_1AF4486E4();
    v19 = sub_1AFDFDEB8();
    v21 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AF420554(0, *(v5 + 2) + 1, 1, v5);
    }

    v23 = *(v5 + 2);
    v22 = *(v5 + 3);
    if (v23 >= v22 >> 1)
    {
      v5 = sub_1AF420554(v22 > 1, v23 + 1, 1, v5);
    }

    *(v5 + 2) = v23 + 1;
    v24 = &v5[16 * v23];
    *(v24 + 4) = v19;
    *(v24 + 5) = v21;
    v25 = sub_1AFDFDEB8();
    v28 = *(v5 + 2);
    v27 = *(v5 + 3);
    if (v28 >= v27 >> 1)
    {
      v60 = v25;
      v61 = v26;
      v62 = sub_1AF420554(v27 > 1, v28 + 1, 1, v5);
      v26 = v61;
      v5 = v62;
      v25 = v60;
    }

    *(v5 + 2) = v28 + 1;
    v29 = &v5[16 * v28];
    *(v29 + 4) = v25;
    *(v29 + 5) = v26;
  }

  if (sub_1AFDFD178())
  {
    sub_1AF4486E4();
    v30 = sub_1AFDFDEB8();
    v32 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AF420554(0, *(v5 + 2) + 1, 1, v5);
    }

    v34 = *(v5 + 2);
    v33 = *(v5 + 3);
    if (v34 >= v33 >> 1)
    {
      v5 = sub_1AF420554(v33 > 1, v34 + 1, 1, v5);
    }

    *(v5 + 2) = v34 + 1;
    v35 = &v5[16 * v34];
    *(v35 + 4) = v30;
    *(v35 + 5) = v32;
    v36 = sub_1AFDFDEB8();
    v39 = *(v5 + 2);
    v38 = *(v5 + 3);
    if (v39 >= v38 >> 1)
    {
      v63 = v36;
      v64 = v37;
      v65 = sub_1AF420554(v38 > 1, v39 + 1, 1, v5);
      v37 = v64;
      v5 = v65;
      v36 = v63;
    }

    *(v5 + 2) = v39 + 1;
    v40 = &v5[16 * v39];
    *(v40 + 4) = v36;
    *(v40 + 5) = v37;
    v41 = sub_1AFDFDEB8();
    v44 = *(v5 + 2);
    v43 = *(v5 + 3);
    if (v44 >= v43 >> 1)
    {
      v66 = v41;
      v67 = v42;
      v68 = sub_1AF420554(v43 > 1, v44 + 1, 1, v5);
      v42 = v67;
      v5 = v68;
      v41 = v66;
    }

    *(v5 + 2) = v44 + 1;
    v45 = &v5[16 * v44];
    *(v45 + 4) = v41;
    *(v45 + 5) = v42;
  }

  sub_1AF4486E4();
  if (sub_1AFDFDF18())
  {
    v46 = sub_1AFDFDE98();
    v47 = *(v46 + 16);
    if (v47)
    {
      v48 = (v46 + 16 + 16 * v47);
      v50 = *v48;
      v49 = v48[1];
    }

    else
    {
      v50 = 0;
      v49 = 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AF420554(0, *(v5 + 2) + 1, 1, v5);
    }

    v52 = *(v5 + 2);
    v51 = *(v5 + 3);
    if (v52 >= v51 >> 1)
    {
      v5 = sub_1AF420554(v51 > 1, v52 + 1, 1, v5);
    }

    *(v5 + 2) = v52 + 1;
    v53 = &v5[16 * v52];
    *(v53 + 4) = v50;
    *(v53 + 5) = v49;
  }

  return v5;
}

void sub_1AF6DCCE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t assignWithTake for UpdateContext(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sub_1AF6DCDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6169646172 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF6DCE68(uint64_t a1)
{
  v2 = sub_1AF6DEAC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF6DCEA4(uint64_t a1)
{
  v2 = sub_1AF6DEAC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF6DCEE0@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v14 = a2;
  sub_1AF6DEB14(0, &qword_1EB63D6B8, sub_1AF6DEAC0, &type metadata for AngleF.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF6DEAC0();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v14;
  sub_1AFDFE738();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v9 = v11;
  return result;
}

uint64_t sub_1AF6DD098(void *a1)
{
  sub_1AF6DEB14(0, &qword_1EB63D6C8, sub_1AF6DEAC0, &type metadata for AngleF.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AF6DEAC0();
  sub_1AFDFF3F8();
  sub_1AFDFE8E8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AF6DD280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF6DD308(uint64_t a1)
{
  v2 = sub_1AF6DEA6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF6DD344(uint64_t a1)
{
  v2 = sub_1AF6DEA6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF6DD380@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v13 = a2;
  sub_1AF6DEB14(0, &qword_1EB63D6A0, sub_1AF6DEA6C, &type metadata for ColorU8.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF6DEA6C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v13;
  v10 = sub_1AFDFE7D8();
  (*(v6 + 8))(v8, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v9 = v10;
  return result;
}

uint64_t sub_1AF6DD52C(void *a1)
{
  sub_1AF6DEB14(0, &qword_1EB63D6B0, sub_1AF6DEA6C, &type metadata for ColorU8.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AF6DEA6C();
  sub_1AFDFF3F8();
  sub_1AFDFE988();
  return (*(v4 + 8))(v6, v3);
}

BOOL sub_1AF6DD690(__n128 a1)
{
  v1 = vneg_f32(0x7F0000007FLL);
  v2 = vceq_s32(vand_s8(a1.n128_u64[0], v1), v1);
  return ((v2.i32[0] | v2.i32[1]) & 1) == 0 && (~a1.n128_u32[2] & 0x7F800000) != 0;
}

BOOL sub_1AF6DD6CC(__n128 a1)
{
  v1 = vceqz_s32((a1.n128_u64[0] & 0x7FFFFFFF7FFFFFFFLL));
  if ((v1.i32[0] & v1.i32[1] & 1) == 0)
  {
    return 0;
  }

  if ((a1.n128_u32[2] & 0x7F800000) != 0)
  {
    return 0;
  }

  return (a1.n128_u32[2] & 0x7FFFFF) == 0;
}

double sub_1AF6DD730(float32x4_t a1, float32x4_t a2)
{
  v2 = vabdq_f32(a2, a1);
  v3 = 0.0;
  if (v2.f32[0] > 0.00000011921 || v2.f32[1] > 0.00000011921 || v2.f32[2] > 0.00000011921)
  {
    v6 = vsubq_f32(a2, a1);
    v7 = vmulq_f32(v6, v6);
    *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
    *v7.f32 = vrsqrte_f32(v8);
    *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32)));
    *&v3 = vmulq_n_f32(v6, vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32))).f32[0]).u64[0];
  }

  return v3;
}

uint64_t sub_1AF6DD79C(float32x4_t a1, float32x4_t a2)
{
  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  sub_1AFDFD748();
  MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
  sub_1AFDFD748();
  MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
  sub_1AFDFD748();
  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0, 0xE000000000000000);

  MEMORY[0x1B2718AE0](0x203A78616D20, 0xE600000000000000);
  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  sub_1AFDFD748();
  MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
  sub_1AFDFD748();
  MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
  sub_1AFDFD748();
  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0, 0xE000000000000000);

  return 0x3A206E696DLL;
}

uint64_t sub_1AF6DD974(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657A6953666C6168;
  }

  else
  {
    v3 = 0x7265746E6563;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x657A6953666C6168;
  }

  else
  {
    v5 = 0x7265746E6563;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF6DDA18()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6DDA98(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF6DDB04(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6DDB80@<X0>(char *a2@<X8>)
{
  v3 = sub_1AFDFE638();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1AF6DDBE0(uint64_t *a1@<X8>)
{
  v2 = 0x7265746E6563;
  if (*v1)
  {
    v2 = 0x657A6953666C6168;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF6DDC1C()
{
  if (*v0)
  {
    return 0x657A6953666C6168;
  }

  else
  {
    return 0x7265746E6563;
  }
}

uint64_t sub_1AF6DDC54@<X0>(char *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1AF6DDCB8(uint64_t a1)
{
  v2 = sub_1AF6DE830();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF6DDCF4(uint64_t a1)
{
  v2 = sub_1AF6DE830();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF6DDD30(void *a1, __n128 a2, __n128 a3)
{
  v11 = a3;
  v12 = a2;
  sub_1AF6DEB14(0, &qword_1EB63D690, sub_1AF6DE830, &type metadata for AABB.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF6DE830();
  sub_1AFDFF3F8();
  v14 = v12;
  v13 = 0;
  sub_1AF6DEB14(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF6DE884(&qword_1ED72F710, MEMORY[0x1E69E74B0]);
  sub_1AFDFE918();
  if (!v3)
  {
    v14 = v11;
    v13 = 1;
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF6DDF40@<X0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF6DE5C8(a2);
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v6;
  }

  return result;
}

unint64_t sub_1AF6DDF8C()
{
  result = qword_1EB63D688;
  if (!qword_1EB63D688)
  {
    result = swift_getWitnessTable(byte_1AFE7196C, &type metadata for AngleF, v0, v1);
    atomic_store(result, &qword_1EB63D688);
  }

  return result;
}

float32x4_t sub_1AF6DDFE0(float32x4_t *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v7 = vsubq_f32(a6, a7);
  v8 = vaddq_f32(a7, a7);
  v9 = vdupq_laneq_s32(v8, 3);
  v9.i32[0] = v8.i32[0];
  v10 = vaddq_f32(v7, v9);
  v11 = vaddq_f32(v7, vtrn2q_s32(vuzp2q_s32(v8, v8), v8));
  v12 = vaddq_f32(v9, v11);
  v13.i64[1] = v8.i64[1];
  v13.i32[0] = v8.i32[3];
  v13.i32[1] = v8.i32[3];
  v14 = vaddq_f32(v7, v13);
  v15 = vaddq_f32(v13, v10);
  v16 = vaddq_f32(v13, v11);
  v17 = vaddq_f32(v13, v12);
  *a1 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v7.f32[0]), a3, *v7.f32, 1), a4, v7, 2), a5, v7, 3);
  a1[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v10.f32[0]), a3, *v10.f32, 1), a4, v10, 2), a5, v10, 3);
  a1[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v11.f32[0]), a3, *v11.f32, 1), a4, v11, 2), a5, v11, 3);
  a1[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v12.f32[0]), a3, *v12.f32, 1), a4, v12, 2), a5, v12, 3);
  a1[4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v14.f32[0]), a3, *v14.f32, 1), a4, v14, 2), a5, v14, 3);
  a1[5] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v15.f32[0]), a3, *v15.f32, 1), a4, v15, 2), a5, v15, 3);
  v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v16.f32[0]), a3, *v16.f32, 1), a4, v16, 2), a5, v16, 3);
  result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v17.f32[0]), a3, *v17.f32, 1), a4, v17, 2), a5, v17, 3);
  a1[6] = v18;
  a1[7] = result;
  return result;
}

double sub_1AF6DE0B4(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vmulq_f32(a2, a2);
  v5 = vmulq_f32(a3, a3);
  v6 = vmulq_f32(a4, a4);
  v7 = vzip2q_s32(v4, v6);
  v8 = vzip1q_s32(vzip1q_s32(v4, v6), v5);
  v9 = vtrn2q_s32(v4, v5);
  v9.i32[2] = v6.i32[1];
  v10 = vaddq_f32(vzip1q_s32(v7, vdupq_laneq_s32(v5, 2)), vaddq_f32(v8, v9));
  __asm { FMOV            V6.4S, #1.0 }

  v16 = vceqzq_f32(v10);
  v16.i32[3] = 0;
  v17 = vbslq_s8(vcltzq_s32(v16), v10, vdivq_f32(_Q6, v10));
  v18 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(vmulq_laneq_f32(a4, v17, 2), a1, 2), vmulq_lane_f32(a3, *v17.f32, 1), *a1.f32, 1), vmulq_n_f32(a2, v17.f32[0]), a1.f32[0]);
  v19 = vabsq_f32(v18);
  v20 = 0.0;
  if (v19.f32[0] > 0.00000011921 || v19.f32[1] > 0.00000011921 || v19.f32[2] > 0.00000011921)
  {
    v23 = vmulq_f32(v18, v18);
    *&v24 = v23.f32[2] + vaddv_f32(*v23.f32);
    *v23.f32 = vrsqrte_f32(v24);
    *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
    *&v20 = vmulq_n_f32(v18, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]).u64[0];
  }

  return v20;
}

BOOL sub_1AF6DE1B4(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4 = 0;
  while (1)
  {
    v14 = a1;
    v9 = *(&v14 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3)));
    v15 = a3;
    v10 = *(&v15 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3)));
    v5 = v9 == v10;
    if (v4 == 3)
    {
      break;
    }

    while (1)
    {
      ++v4;
      if (v5)
      {
        break;
      }

      v5 = 0;
      result = 0;
      if (v4 == 3)
      {
        return result;
      }
    }
  }

  if (v9 != v10)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v12 = a2;
    v11 = *(&v12 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
    v13 = a4;
    v8 = v11 == *(&v13 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
    result = v8;
    if (v7 == 3)
    {
      break;
    }

    while (1)
    {
      ++v7;
      if (v8)
      {
        break;
      }

      v8 = 0;
      result = 0;
      if (v7 == 3)
      {
        return result;
      }
    }
  }

  return result;
}

float32x4_t sub_1AF6DE2A8(CGColor *a1)
{
  v2 = v1;
  v4 = CGColorGetColorSpace(a1);
  v5 = *MEMORY[0x1E695F1B0];
  v6 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  v7 = v6;
  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_8:

LABEL_9:
    v10 = CGColorSpaceCreateWithName(v5);
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v10, kCGRenderingIntentDefault, a1, 0);

    goto LABEL_10;
  }

  if (!v6)
  {
    v7 = v4;
    goto LABEL_8;
  }

  type metadata accessor for CGColorSpace(0);
  sub_1AF6DE570();
  v8 = sub_1AFDFC358();

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  CopyByMatchingToColorSpace = a1;
LABEL_10:
  v11 = sub_1AFDFD9A8();
  v13 = *(v11 + 32);
  v14 = *(v11 + 48);

  result = vcvt_hight_f32_f64(vcvt_f32_f64(v13), v14);
  *v2 = result;
  return result;
}

simd_float4 sub_1AF6DE3AC(int a1, float a2, double a3, float32x4_t a4)
{
  v4.f32[0] = a1;
  v4.f32[1] = BYTE1(a1);
  *a4.f32 = vmul_f32(v4, vdup_n_s32(0x3B808081u));
  a4.f32[2] = BYTE2(a1) * 0.0039216;
  v8 = a4;
  v5 = vdivq_f32(vaddq_f32(a4, vdupq_n_s32(0x3D6147AEu)), vdupq_n_s32(0x3F870A3Du));
  v5.i32[3] = 0;
  result = _simd_pow_f4(v5, xmmword_1AFE42AB0);
  v6 = vcgeq_f32(vdupq_n_s32(0x3D25AEE6u), v8);
  v6.i32[3] = 0;
  result.i64[0] = vbslq_s8(vcltzq_s32(v6), vdivq_f32(v8, vdupq_n_s32(0x414EB852u)), result).u64[0];
  result.f32[3] = a2;
  return result;
}

double sub_1AF6DE474(CGColor *a1)
{
  v2 = CGColorGetColorSpace(a1);
  v3 = *MEMORY[0x1E695F1B0];
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  v5 = v4;
  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_8:

LABEL_9:
    v8 = CGColorSpaceCreateWithName(v3);
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v8, kCGRenderingIntentDefault, a1, 0);

    goto LABEL_10;
  }

  if (!v4)
  {
    v5 = v2;
    goto LABEL_8;
  }

  type metadata accessor for CGColorSpace(0);
  sub_1AF6DE570();
  v6 = sub_1AFDFC358();

  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  CopyByMatchingToColorSpace = a1;
LABEL_10:
  v9 = sub_1AFDFD9A8();
  v11 = *(v9 + 32);
  v12 = *(v9 + 48);

  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12).u64[0];
  return result;
}

unint64_t sub_1AF6DE570()
{
  result = qword_1EB632A30;
  if (!qword_1EB632A30)
  {
    type metadata accessor for CGColorSpace(255);
    result = swift_getWitnessTable(byte_1AFE4C05C, v3, v0, v1);
    atomic_store(result, &qword_1EB632A30);
  }

  return result;
}

uint64_t sub_1AF6DE5C8(void *a1)
{
  sub_1AF6DEB14(0, &qword_1ED722F98, sub_1AF6DE830, &type metadata for AABB.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF6DE830();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF6DEB14(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    LOBYTE(v10) = 0;
    sub_1AF6DE884(&qword_1ED72F6F0, MEMORY[0x1E69E74C0]);
    sub_1AFDFE768();
    v9[1] = v11;
    v12 = 1;
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
    v9[0] = v10;
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

unint64_t sub_1AF6DE830()
{
  result = qword_1ED7240D8;
  if (!qword_1ED7240D8)
  {
    result = swift_getWitnessTable(asc_1AFE71BB0, &type metadata for AABB.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7240D8);
  }

  return result;
}

uint64_t sub_1AF6DE884(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AF6DEB14(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF6DE968()
{
  result = qword_1EB63D698;
  if (!qword_1EB63D698)
  {
    result = swift_getWitnessTable(a9s, &type metadata for AABB.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63D698);
  }

  return result;
}

unint64_t sub_1AF6DE9C0()
{
  result = qword_1ED7240C8;
  if (!qword_1ED7240C8)
  {
    result = swift_getWitnessTable(byte_1AFE71A48, &type metadata for AABB.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7240C8);
  }

  return result;
}

unint64_t sub_1AF6DEA18()
{
  result = qword_1ED7240D0;
  if (!qword_1ED7240D0)
  {
    result = swift_getWitnessTable(byte_1AFE71A70, &type metadata for AABB.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7240D0);
  }

  return result;
}

unint64_t sub_1AF6DEA6C()
{
  result = qword_1EB63D6A8;
  if (!qword_1EB63D6A8)
  {
    result = swift_getWitnessTable(byte_1AFE71DC0, &type metadata for ColorU8.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63D6A8);
  }

  return result;
}

unint64_t sub_1AF6DEAC0()
{
  result = qword_1EB63D6C0;
  if (!qword_1EB63D6C0)
  {
    result = swift_getWitnessTable(aI_26, &type metadata for AngleF.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63D6C0);
  }

  return result;
}

void sub_1AF6DEB14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AF6DEBA0()
{
  result = qword_1EB63D6D0;
  if (!qword_1EB63D6D0)
  {
    result = swift_getWitnessTable(byte_1AFE71C90, &type metadata for ColorU8.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63D6D0);
  }

  return result;
}

unint64_t sub_1AF6DEBF8()
{
  result = qword_1EB63D6D8;
  if (!qword_1EB63D6D8)
  {
    result = swift_getWitnessTable(byte_1AFE71D48, &type metadata for AngleF.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63D6D8);
  }

  return result;
}

unint64_t sub_1AF6DEC50()
{
  result = qword_1EB63D6E0;
  if (!qword_1EB63D6E0)
  {
    result = swift_getWitnessTable(a9_21, &type metadata for AngleF.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63D6E0);
  }

  return result;
}

unint64_t sub_1AF6DECA8()
{
  result = qword_1EB63D6E8;
  if (!qword_1EB63D6E8)
  {
    result = swift_getWitnessTable(aQz, &type metadata for AngleF.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63D6E8);
  }

  return result;
}

unint64_t sub_1AF6DED00()
{
  result = qword_1EB63D6F0;
  if (!qword_1EB63D6F0)
  {
    result = swift_getWitnessTable(byte_1AFE71C00, &type metadata for ColorU8.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63D6F0);
  }

  return result;
}

unint64_t sub_1AF6DED58()
{
  result = qword_1EB63D6F8;
  if (!qword_1EB63D6F8)
  {
    result = swift_getWitnessTable(asc_1AFE71C28, &type metadata for ColorU8.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63D6F8);
  }

  return result;
}

__n128 initializeWithCopy for Torus(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Torus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Torus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1AF6DEE4C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF6DEEA8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = (v2 + 56);
    do
    {
      v5 = *v4;
      v4 += 5;
      sub_1AF640BC8(v1 + v5, 1);
      --v3;
    }

    while (v3);

    v1 = *(v0 + 96);
  }

  if (v1)
  {
    MEMORY[0x1B271DEA0](v1, -1, -1);
  }

  return v0;
}

uint64_t sub_1AF6DEF54()
{
  sub_1AF6DEEA8();

  return swift_deallocClassInstance();
}

id sub_1AF6DEFAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1AFDFBFD8();
  v8 = sub_1AFDFCF98();
  v10 = v9;

  if (v8 == 2053403509 && v10 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0 || v8 == 6583157 && v10 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0 || v8 == 6972015 && v10 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0 || v8 == 7107699 && v10 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0 || v8 == 6513249 && v10 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0 || v8 == 7957616 && v10 == 0xE300000000000000)
  {
  }

  else
  {
    v12 = sub_1AFDFEE28();

    if ((v12 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (a4)
  {
    type metadata accessor for MDLImporter();
    swift_initStackObject();

    sub_1AF6DF5FC(a3, a2);
    sub_1AF6E4330();

    return 0;
  }

LABEL_22:
  type metadata accessor for VFXCoreImporter();
  return sub_1AF6E875C(a1, a2);
}

uint64_t sub_1AF6DF364(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_1AFDFDA68();
  v4 = *(v3 + 16);
  if (v4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v5 = v3;
    sub_1AFC072D4(0, v4, 0);
    v6 = v5;
    v7 = v15;
    v8 = *(v15 + 16);
    v9 = 32;
    do
    {
      v10 = *(v6 + v9);
      v11 = *(v15 + 24);
      if (v8 >= v11 >> 1)
      {
        sub_1AFC072D4(v11 > 1, v8 + 1, 1);
        v6 = v5;
      }

      v12 = v10;
      *(v15 + 16) = v8 + 1;
      *(v15 + 4 * v8 + 32) = v12;
      v9 += 8;
      ++v8;
      --v4;
    }

    while (v4);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  a2(v13);
  return v7;
}

unint64_t sub_1AF6DF484(uint64_t a1, uint64_t a2)
{
  result = 0xD000000000000010;
  if (!a2)
  {
    return 0xD00000000000001ALL;
  }

  if (a2 != 1)
  {
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);
    return 0xD000000000000021;
  }

  return result;
}

void *sub_1AF6DF550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[4] = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v3[5] = sub_1AF43BBB4(MEMORY[0x1E69E7CC0]);
  v3[6] = sub_1AF43BC90(v6);
  v3[7] = v6;
  v3[2] = a1;
  type metadata accessor for EntityManager(0);
  swift_allocObject();
  v3[3] = sub_1AF66F180(0x726F706D494C444DLL, 0xEB00000000726574, 1, 0);
  v3[4] = a2;

  return v3;
}

void *sub_1AF6DF5FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[4] = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v3[5] = sub_1AF43BBB4(MEMORY[0x1E69E7CC0]);
  v3[6] = sub_1AF43BC90(v6);
  v3[7] = v6;
  v3[2] = a1;
  v3[3] = a2;

  v7 = CFXGPUDeviceCreate(0);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  v14 = 0;
  v15 = 1;
  v16 = 0;
  v17 = 1;
  v18 = 1;
  v19 = 260;
  v20 = 0;
  v21 = 0;
  type metadata accessor for Renderer();
  swift_allocObject();
  v8 = sub_1AF70A2F4(v7, 0, &v10, 0);

  v3[4] = v8;

  return v3;
}

void *sub_1AF6DF708(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = sub_1AFDFE4D8() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v5 = ~v8;
    v4 = v3 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(v3 + 64);
    v7 = v3;
  }

  swift_bridgeObjectRetain_n();
  v11 = 0;
  v12 = (v5 + 64) >> 6;
  v13 = v4 + 8;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v14 = v11;
  v15 = v6;
  for (i = v11; !v15; v15 = *(v13 + 8 * v14++))
  {
    i = v14 + 1;
    if (v14 + 1 >= v12)
    {
      goto LABEL_22;
    }
  }

  v6 = (v15 - 1) & v15;
  v17 = (i << 9) | (8 * __clz(__rbit64(v15)));
  v18 = *(*(v7 + 56) + v17);
  v19 = *(*(v7 + 48) + v17);

  if (!v19)
  {
LABEL_22:
    sub_1AF0FBB14(v7);

    return 0;
  }

  while (1)
  {
    v20 = v7;
    v21 = v19;
    v22 = [v19 name];
    v23 = sub_1AFDFCEF8();
    v25 = v24;

    if (v23 == a1 && v25 == a2)
    {
      break;
    }

    v27 = sub_1AFDFEE28();

    if (v27)
    {
      goto LABEL_25;
    }

    v11 = i;
    v7 = v20;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    if (sub_1AFDFE508())
    {
      sub_1AF0D4478(0, &unk_1EB63F590, 0x1E6974B98);
      swift_dynamicCast();
      v19 = v31;
      type metadata accessor for SkeletonAnimation();
      swift_dynamicCast();
      v18 = v31;
      i = v11;
      if (v31)
      {
        continue;
      }
    }

    goto LABEL_22;
  }

LABEL_25:
  sub_1AF0FBB14(v20);

  return v18;
}

uint64_t sub_1AF6DF9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AF455364(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AFDFBD88();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v51 = a1;
  *(&v51 + 1) = a2;
  sub_1AF4486E4();
  v13 = sub_1AFDFDF28();
  v14 = v13[2];
  if (v14 < 2)
  {

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v51 = 0xD000000000000015;
    *(&v51 + 1) = 0x80000001AFF30410;
    MEMORY[0x1B2718AE0](a1, a2);
    v33 = v51;
    v34 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v43 = v34;
      swift_once();
      v34 = v43;
    }

    *&v51 = 0;
    sub_1AF0D4F18(v34, &v51, v33, *(&v33 + 1));

    v35 = sub_1AFDFC128();
    return (*(*(v35 - 8) + 56))(a3, 1, 1, v35);
  }

  else
  {
    v48 = v10;
    v49 = v9;
    v45 = a1;
    v46 = a2;
    v50 = a3;
    v15 = v13[4];
    v16 = v13[5];
    v17 = v13[6];
    v18 = v13[7];
    v19 = v13;

    v20 = MEMORY[0x1B27189E0](v15, v16, v17, v18);
    v22 = v21;

    v23 = &v19[4 * v14];
    v47 = *v23;
    v25 = v23[2];
    v24 = v23[3];

    v51 = v47;
    v52 = v25;
    v53 = v24;
    sub_1AF6DC518();
    v26 = sub_1AFDFDF28();

    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = (v26 + 32 * v27);
      v30 = *v28;
      v29 = v28[1];
      v32 = v28[2];
      v31 = v28[3];
    }

    else
    {
      v30 = 0;
      v29 = 0;
      v32 = 0;
      v31 = 0;
    }

    MEMORY[0x1B27189E0](v30, v29, v32, v31);

    sub_1AFDFBD78();
    MEMORY[0x1B2717770](v20, v22);
    sub_1AFDFBD68();
    sub_1AFDFBD48();
    v37 = sub_1AFDFC128();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v8, 1, v37) == 1)
    {
      sub_1AF456B8C(v8);
      v39 = v48;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v51 = 0;
      *(&v51 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v51 = 0xD000000000000015;
      *(&v51 + 1) = 0x80000001AFF30410;
      MEMORY[0x1B2718AE0](v45, v46);
      v40 = v51;
      v41 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v44 = v41;
        swift_once();
        v41 = v44;
      }

      *&v51 = 0;
      sub_1AF0D4F18(v41, &v51, v40, *(&v40 + 1));

      (*(v39 + 8))(v12, v49);
      return (*(v38 + 56))(v50, 1, 1, v37);
    }

    else
    {
      (*(v48 + 8))(v12, v49);
      v42 = v50;
      (*(v38 + 32))(v50, v8, v37);
      return (*(v38 + 56))(v42, 0, 1, v37);
    }
  }
}

uint64_t sub_1AF6DFEF8(void *a1)
{
  sub_1AF455364(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v45 - v12;
  v14 = [a1 type];
  if (v14 <= 3)
  {
    if (v14 == 1)
    {
      v16 = [a1 stringValue];
      v17 = sub_1AFDFCEF8();
      v19 = v18;

      sub_1AF6DF9A4(v17, v19, v5);

      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_1AF456B8C(v5);
        v15 = 0;
        __asm { FMOV            V0.4S, #1.0 }

        goto LABEL_12;
      }

      (*(v7 + 32))(v13, v5, v6);
      v33 = *(v1 + 24);
      v34 = qword_1EB6371B0;

      if (v34 != -1)
      {
        swift_once();
      }

      v47 = xmmword_1EB6C3278;
      v48 = unk_1EB6C3288;
      *v49 = xmmword_1EB6C3298;
      *&v49[10] = *(&xmmword_1EB6C3298 + 10);
      v35 = **(v33 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      v36 = sub_1AF8DC244();
      MEMORY[0x1EEE9AC00](v36);
      *&v45[-2] = v13;
      WORD4(v45[-2]) = 0;
      v44 = &v47;
      v46 = 1;
      v27 = sub_1AF6ECAAC(v37, 0x100000000uLL, sub_1AF6E5704, &v45[-3], v35);

      if ((SBYTE8(v48) & 0x80000000) == 0)
      {
        sub_1AF6803DC(v27, v33, *(&v47 + 1), v48, BYTE8(v48) & 1);
      }

      v15 = v27 & 0xFFFFFFFF00000000;
      if (v49[25] != 3)
      {
        sub_1AF680648(v27, v33, *v49, *&v49[8], *&v49[16], v49[24] & 1 | (v49[25] << 8));
      }

      (*(v7 + 8))(v13, v6);
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_30;
      }

      v28 = *(v1 + 24);

      v29 = [a1 URLValue];
      sub_1AFDFC0B8();

      if (qword_1EB6371B0 != -1)
      {
        swift_once();
      }

      v47 = xmmword_1EB6C3278;
      v48 = unk_1EB6C3288;
      *v49 = xmmword_1EB6C3298;
      *&v49[10] = *(&xmmword_1EB6C3298 + 10);
      v30 = **(v28 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      v31 = sub_1AF8DC244();
      MEMORY[0x1EEE9AC00](v31);
      *&v45[-2] = v9;
      WORD4(v45[-2]) = 0;
      v44 = &v47;
      v46 = 1;
      v27 = sub_1AF6ECAAC(v32, 0x100000000uLL, sub_1AF6E5704, &v45[-3], v30);

      if ((SBYTE8(v48) & 0x80000000) == 0)
      {
        sub_1AF6803DC(v27, v28, *(&v47 + 1), v48, BYTE8(v48) & 1);
      }

      v15 = v27 & 0xFFFFFFFF00000000;
      if (v49[25] != 3)
      {
        sub_1AF680648(v27, v28, *v49, *&v49[8], *&v49[16], v49[24] & 1 | (v49[25] << 8));
      }

      (*(v7 + 8))(v9, v6);
    }

    __asm { FMOV            V0.4S, #1.0 }

    return v27 | v15;
  }

  switch(v14)
  {
    case 8:
      [a1 float4Value];
LABEL_11:
      v15 = 0;
      goto LABEL_12;
    case 7:
      [a1 float3Value];
      v15 = 0;
LABEL_12:
      LODWORD(v27) = -1;
      return v27 | v15;
    case 4:
      v25 = [a1 color];
      *&v26 = sub_1AF6DE474(v25);
      v45[0] = v26;

      goto LABEL_11;
  }

LABEL_30:
  *&v47 = 0;
  *(&v47 + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  *&v47 = 0xD000000000000023;
  *(&v47 + 1) = 0x80000001AFF303E0;
  v40 = [a1 description];
  v41 = sub_1AFDFCEF8();
  v43 = v42;

  MEMORY[0x1B2718AE0](v41, v43);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AF6E0514(void *a1)
{
  sub_1AF455364(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v42 - v12;
  v14 = [a1 type];
  LODWORD(v15) = 1.0;
  if (v14 > 3)
  {
    if ((v14 - 5) >= 4)
    {
      if (v14 != 4)
      {
        goto LABEL_20;
      }

      v27 = [a1 color];
      *&v28 = sub_1AF6DE474(v27);
      v42[0] = v28;
    }

    else
    {
      [a1 floatValue];
    }

    v14 = 0;
  }

  else if (v14)
  {
    if (v14 == 1)
    {
      v23 = [a1 stringValue];
      v24 = sub_1AFDFCEF8();
      v26 = v25;

      sub_1AF6DF9A4(v24, v26, v5);

      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        (*(v7 + 32))(v13, v5, v6);
        v35 = *(v1 + 24);
        v36 = qword_1EB6371B0;

        if (v36 != -1)
        {
          swift_once();
        }

        v44 = xmmword_1EB6C3278;
        v45 = unk_1EB6C3288;
        *v46 = xmmword_1EB6C3298;
        *&v46[10] = *(&xmmword_1EB6C3298 + 10);
        v37 = **(v35 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v38 = sub_1AF8DC244();
        MEMORY[0x1EEE9AC00](v38);
        *&v42[-2] = v13;
        WORD4(v42[-2]) = 0;
        *&v42[-1] = &v44;
        v43 = 1;
        v21 = sub_1AF6ECAAC(v39, 0x100000000uLL, sub_1AF6E5704, &v42[-3], v37);

        if ((SBYTE8(v45) & 0x80000000) == 0)
        {
          sub_1AF6803DC(v21, v35, *(&v44 + 1), v45, BYTE8(v45) & 1);
        }

        v22 = v21 & 0xFFFFFFFF00000000;
        if (v46[25] != 3)
        {
          sub_1AF680648(v21, v35, *v46, *&v46[8], *&v46[16], v46[24] & 1 | (v46[25] << 8));
        }

        (*(v7 + 8))(v13, v6);
        goto LABEL_33;
      }

      sub_1AF456B8C(v5);
      goto LABEL_25;
    }

    if (v14 == 2)
    {
      v16 = *(v1 + 24);

      v17 = [a1 URLValue];
      sub_1AFDFC0B8();

      if (qword_1EB6371B0 != -1)
      {
        swift_once();
      }

      v44 = xmmword_1EB6C3278;
      v45 = unk_1EB6C3288;
      *v46 = xmmword_1EB6C3298;
      *&v46[10] = *(&xmmword_1EB6C3298 + 10);
      v18 = **(v16 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      v19 = sub_1AF8DC244();
      MEMORY[0x1EEE9AC00](v19);
      *&v42[-2] = v9;
      WORD4(v42[-2]) = 0;
      *&v42[-1] = &v44;
      v43 = 1;
      v21 = sub_1AF6ECAAC(v20, 0x100000000uLL, sub_1AF6E5454, &v42[-3], v18);

      if ((SBYTE8(v45) & 0x80000000) == 0)
      {
        sub_1AF6803DC(v21, v16, *(&v44 + 1), v45, BYTE8(v45) & 1);
      }

      v22 = v21 & 0xFFFFFFFF00000000;
      if (v46[25] != 3)
      {
        sub_1AF680648(v21, v16, *v46, *&v46[8], *&v46[16], v46[24] & 1 | (v46[25] << 8));
      }

      (*(v7 + 8))(v9, v6);
LABEL_33:
      v14 = v22;
      return v21 | v14;
    }

LABEL_20:
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000037, 0x80000001AFF303A0);
    v29 = [a1 description];
    v30 = sub_1AFDFCEF8();
    v32 = v31;

    MEMORY[0x1B2718AE0](v30, v32);

    v33 = v44;
    v34 = sub_1AFDFDA28();
    if (qword_1ED731058 != -1)
    {
      v41 = v34;
      swift_once();
      v34 = v41;
    }

    *&v44 = 0;
    sub_1AF0D4F18(v34, &v44, v33, *(&v33 + 1));

LABEL_25:
    v14 = 0;
    LODWORD(v21) = -1;
    return v21 | v14;
  }

  LODWORD(v21) = -1;
  return v21 | v14;
}

unint64_t sub_1AF6E0B74(void *a1)
{
  v3 = [a1 scatteringFunction];
  type metadata accessor for PBRParameters();
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0xFFFFFFFFLL;
  *(v4 + 40) = 16777473;
  *(v4 + 44) = 1;
  *(v4 + 45) = v72;
  *(v4 + 47) = v73;
  *(v4 + 48) = xmmword_1AFE20670;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0xFFFFFFFFLL;
  *(v4 + 88) = 16777473;
  *(v4 + 92) = 1;
  *(v4 + 93) = v74;
  *(v4 + 95) = v75;
  *(v4 + 96) = xmmword_1AFE20670;
  *(v4 + 112) = 0xFFFFFFFFLL;
  *(v4 + 120) = 16777473;
  *(v4 + 124) = 1;
  *(v4 + 125) = v78;
  *(v4 + 127) = v79;
  *(v4 + 128) = 0;
  *(v4 + 132) = v76;
  *(v4 + 140) = v77;
  *(v4 + 144) = xmmword_1AFE20670;
  *(v4 + 160) = 0xFFFFFFFFLL;
  *(v4 + 168) = 16777473;
  *(v4 + 172) = 1;
  *(v4 + 175) = v83;
  *(v4 + 173) = v82;
  *(v4 + 176) = 0;
  *(v4 + 188) = v81;
  *(v4 + 180) = v80;
  *(v4 + 192) = xmmword_1AFE20670;
  *(v4 + 208) = 0xFFFFFFFFLL;
  *(v4 + 216) = 16777473;
  *(v4 + 220) = 1;
  *(v4 + 223) = v87;
  *(v4 + 221) = v86;
  *(v4 + 224) = 1065353216;
  *(v4 + 228) = v84;
  *(v4 + 236) = v85;
  *(v4 + 240) = xmmword_1AFE20670;
  *(v4 + 256) = 0xFFFFFFFFLL;
  *(v4 + 264) = 16777473;
  *(v4 + 268) = 1;
  *(v4 + 271) = v91;
  *(v4 + 269) = v90;
  *(v4 + 272) = 1065353216;
  *(v4 + 284) = v89;
  *(v4 + 276) = v88;
  *(v4 + 288) = xmmword_1AFE20670;
  *(v4 + 304) = 0;
  v5 = [a1 propertyWithSemantic_];
  if (v5)
  {
    goto LABEL_2;
  }

  v7 = sub_1AFDFCEC8();
  v6 = [a1 propertyNamed_];

  if (!v6)
  {
    v5 = [v3 baseColor];
LABEL_2:
    v6 = v5;
    goto LABEL_5;
  }

  v5 = v6;
LABEL_5:
  v8 = sub_1AF6DFEF8(v5);
  v70 = v9;
  v10 = v8;
  v12 = v11;

  *(v4 + 16) = v70;
  *(v4 + 32) = v10;
  *(v4 + 40) = v12;
  *(v4 + 48) = xmmword_1AFE20670;
  v13 = [a1 propertyWithSemantic_];
  if (v13)
  {
LABEL_6:
    v14 = v13;
    goto LABEL_9;
  }

  v15 = sub_1AFDFCEC8();
  v14 = [a1 propertyNamed_];

  if (!v14)
  {
    v13 = [v3 normal];
    goto LABEL_6;
  }

  v13 = v14;
LABEL_9:
  v16 = sub_1AF6E0514(v13);
  v18 = v17;
  v20 = v19;

  *(v4 + 256) = v16;
  *(v4 + 264) = v18;
  *(v4 + 272) = v20;
  *(v4 + 288) = xmmword_1AFE20670;
  v21 = [a1 propertyWithSemantic_];
  if (v21)
  {
    v22 = v21;
LABEL_13:
    v24 = sub_1AF6E0514(v21);
    v26 = v25;
    v28 = v27;

    *(v4 + 208) = v24;
    *(v4 + 216) = v26;
    *(v4 + 224) = v28;
    *(v4 + 240) = xmmword_1AFE20670;
    goto LABEL_14;
  }

  v23 = sub_1AFDFCEC8();
  v22 = [a1 propertyNamed_];

  if (v22)
  {
    v21 = v22;
    goto LABEL_13;
  }

  v64 = [v3 ambientOcclusion];
  v65 = sub_1AF6E0514(v64);
  v67 = v66;
  v69 = v68;

  *(v4 + 208) = v65;
  *(v4 + 216) = v67;
  *(v4 + 224) = v69;
  *(v4 + 240) = xmmword_1AFE20670;
  if (v69 == 0.0)
  {
    *(v4 + 224) = 1065353216;
  }

LABEL_14:
  v29 = [a1 propertyWithSemantic_];
  if (v29)
  {
LABEL_15:
    v30 = v29;
    goto LABEL_18;
  }

  v31 = sub_1AFDFCEC8();
  v30 = [a1 propertyNamed_];

  if (!v30)
  {
    v29 = [v3 emission];
    goto LABEL_15;
  }

  v29 = v30;
LABEL_18:
  v32 = sub_1AF6DFEF8(v29);
  v71 = v33;
  v34 = v32;
  v36 = v35;

  *(v4 + 64) = v71;
  *(v4 + 80) = v34;
  *(v4 + 88) = v36;
  *(v4 + 96) = xmmword_1AFE20670;
  v37 = [a1 scatteringFunction];
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (v38)
  {
    v39 = v38;
    v40 = [v38 metallic];
    v41 = sub_1AF6E0514(v40);
    v43 = v42;
    v45 = v44;

    *(v4 + 160) = v41;
    *(v4 + 168) = v43;
    *(v4 + 176) = v45;
    *(v4 + 192) = xmmword_1AFE20670;
    v46 = [v39 roughness];
    v47 = sub_1AF6E0514(v46);
    v49 = v48;
    v51 = v50;

    *(v4 + 112) = v47;
    *(v4 + 120) = v49;
    *(v4 + 128) = v51;
    *(v4 + 144) = xmmword_1AFE20670;
  }

  else
  {
  }

  v52 = *(v1 + 24);

  v53 = [a1 name];
  v54 = sub_1AFDFCEF8();
  v56 = v55;

  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v57 = sub_1AF89DCA8(140);
  *(v57 + 88) = sub_1AF891C5C;
  *(v57 + 96) = 0;

  v58 = *(v52 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v59 = *v58;
  v60 = *(*v58 + 32);
  swift_bridgeObjectRetain_n();

  ecs_stack_allocator_push_snapshot(v60);
  v61 = ecs_stack_allocator_allocate(*(v59 + 32), 32, 8);
  *v61 = &type metadata for Material;
  v61[1] = &off_1F253F848;
  v61[2] = &type metadata for Name;
  v61[3] = &off_1F2535068;
  v62 = sub_1AF635354(v61, 2uLL, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v59, 0, v57, -1.0, 0, 1, v54, v56);

  ecs_stack_allocator_pop_snapshot(*(v59 + 32));

  sub_1AF6879B0(v62, v52, v4);

  return v62;
}

unint64_t sub_1AF6E128C(id a1, unint64_t a2, int a3)
{
  v269 = a3;
  v270 = a2;
  v5 = sub_1AFDFBF78();
  v271 = *(v5 - 8);
  v272 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v278 = &v268[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [a1 boundingBox];
  v277 = v8;
  [a1 boundingBox];
  v276 = v9;
  type metadata accessor for Mesh();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v10[4] = MEMORY[0x1E69E7CC0];
  v10[5] = v11;
  v10[7] = 0;
  v10[8] = 0;
  v10[6] = 0;
  v12 = [a1 vertexDescriptor];
  v317 = v3;
  if ((*(v3 + 16) & 2) != 0)
  {
    v11 = sub_1AF422EA4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1AF422EA4(v13 > 1, v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    *&v11[8 * v14 + 32] = 4;
  }

  v15 = sub_1AF6E4718(v12, v11);
  v16 = [a1 vertexBuffers];
  v287 = sub_1AF447DFC(0, &qword_1EB63D770, &protocolRef_MDLMeshBuffer);
  v17 = sub_1AFDFD418();

  v279 = v17;
  if (v17 >> 62)
  {
    v19 = sub_1AFDFE108();
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v273 = v11;
  v274 = v12;
  v20 = &selRef_antialiasingMode;
  v288 = v10;
  v312 = a1;
  if (v19)
  {
    v21 = 0;
    v305 = (v15 + 16);
    v309 = (v279 & 0xC000000000000001);
    v308.i64[0] = v279 + 32;
    v22 = vsubq_f32(v276, v277);
    v22.i32[3] = 0;
    v280 = v22;
    *(&v296 + 1) = 0x80000001AFF302C0;
    v313 = v22;
    v314 = v276;
    v315 = v18;
    v316 = 0u;
    *&v296 = 0xD000000000000014;
    v286 = xmmword_1AFE71ED0;
    v285 = xmmword_1AFE71EE0;
    v284 = xmmword_1AFE71EF0;
    v283 = xmmword_1AFE71F00;
    v282 = xmmword_1AFE71F10;
    v281 = xmmword_1AFE71F20;
    v310 = v19;
    while (1)
    {
      if (v309)
      {
        v23 = MEMORY[0x1B2719C70](v21, v279);
      }

      else
      {
        v23 = *(v308.i64[0] + 8 * v21);
        swift_unknownObjectRetain();
      }

      v319 = [v23 map];
      v24 = v21 == *(v15 + 142) && *(v15 + 140) == 31;
      v348 = v21;
      v318 = v23;
      if (v24)
      {
        v25 = a1;
        v26 = *(v15 + 102);
        v304.i64[0] = *(v15 + 96);
        v27 = [v25 vertexBuffers];
        v28 = sub_1AFDFD418();

        if ((v28 & 0xC000000000000001) != 0)
        {
          *&v311 = MEMORY[0x1B2719C70](v26, v28);
        }

        else
        {
          *&v311 = *(v28 + 8 * v26 + 32);
          swift_unknownObjectRetain();
        }

        v301.n128_u64[0] = v26;
        if (v21 == v26)
        {
          v303.i64[0] = [v319 v20[185]];
        }

        else
        {
          v29 = [v311 map];
          v303.i64[0] = [v29 v20[185]];
        }

        v302 = *(v15 + 104);
        v30 = *(v15 + 110);
        v31 = v312;
        v32 = [v312 vertexBuffers];
        v33 = sub_1AFDFD418();

        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x1B2719C70](v30, v33);
        }

        else
        {
          v34 = *(v33 + 8 * v30 + 32);
          swift_unknownObjectRetain();
        }

        v307.i64[0] = v34;
        if (v21 == v30)
        {
          v300 = [v319 v20[185]];
        }

        else
        {
          v35 = [v34 map];
          v300 = [v35 v20[185]];
        }

        v297 = *(v15 + 112);
        v36 = *(v15 + 118);
        v37 = [v31 vertexBuffers];
        v38 = sub_1AFDFD418();

        if ((v38 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x1B2719C70](v36, v38);
        }

        else
        {
          v39 = *(v38 + 8 * v36 + 32);
          swift_unknownObjectRetain();
        }

        v298 = v36;
        *&v299 = v30;
        v40 = v319;
        v306 = v39;
        if (v348 == v36)
        {
          v41 = [v319 v20[185]];
        }

        else
        {
          v42 = [v39 map];
          v41 = [v42 v20[185]];
        }

        v43 = [v40 v20[185]];
        v44 = *(v15 + 136);
        v45 = [v31 vertexCount];
        v46 = [v31 submeshes];
        if (v46)
        {
          v294 = v46;
          v295 = &v43[v44];
          v297 += v41;
          v47 = v46;
          [v46 count];
          v48 = [v47 objectAtIndexedSubscript_];
          sub_1AFDFDFB8();
          swift_unknownObjectRelease();
          sub_1AF0D4478(0, &unk_1EB63D778, 0x1E6974BC8);
          swift_dynamicCast();
          v49 = v320;
          v50 = [objc_msgSend(v320 indexBuffer)];
          v293 = v45;
          v51 = v50;
          swift_unknownObjectRelease();
          v292 = [v51 v20[185]];

          v290 = ([v49 indexCount] * 0x5555555555555556) >> 64;
          v291 = v290 >> 63;
          v52 = [v49 indexType];
          v53 = *(v15 + 16);
          v289 = v52 == 16;
          v54 = *(v15 + 20);
          v24 = v52 == 32;
          v55 = *(v15 + 22);
          v56 = *(v15 + 24);
          v57 = *(v15 + 28);
          v58 = *(v15 + 30);
          LODWORD(v47) = *(v15 + 32);
          v59 = *(v15 + 36);
          v60 = *(v15 + 38);
          v61 = *(v15 + 40);
          v62 = *(v15 + 44);
          v63 = *(v15 + 46);
          v64 = *(v15 + 48);
          LOWORD(v52) = *(v15 + 52);
          v65 = *(v15 + 54);
          v66 = *(v15 + 56);
          v67 = *(v15 + 60);
          v68 = *(v15 + 62);
          v69 = *(v15 + 64);
          v70 = *(v15 + 68);
          v71 = *(v15 + 70);
          v72 = *(v15 + 72);
          v73 = *(v15 + 80);
          v74 = *(v15 + 88);
          LODWORD(v333) = v53;
          DWORD2(v333) = v56;
          LODWORD(v334) = v47;
          DWORD2(v334) = v61;
          LODWORD(v335) = v64;
          DWORD2(v335) = v66;
          LODWORD(v336) = v69;
          DWORD2(v336) = v72;
          LODWORD(v337) = v73;
          DWORD2(v337) = v74;
          v301.n128_u32[0] = *(&v333 + 2 * v301.n128_u64[0]);
          LODWORD(v333) = v53;
          DWORD2(v333) = v56;
          LODWORD(v334) = v47;
          DWORD2(v334) = v61;
          LODWORD(v335) = v64;
          DWORD2(v335) = v66;
          LODWORD(v336) = v69;
          DWORD2(v336) = v72;
          LODWORD(v337) = v73;
          DWORD2(v337) = v74;
          v75 = *(&v333 + 2 * v299);
          LODWORD(v333) = v53;
          WORD2(v333) = v54;
          WORD3(v333) = v55;
          DWORD2(v333) = v56;
          v20 = &selRef_antialiasingMode;
          WORD6(v333) = v57;
          HIWORD(v333) = v58;
          LODWORD(v334) = v47;
          WORD2(v334) = v59;
          WORD3(v334) = v60;
          DWORD2(v334) = v61;
          WORD6(v334) = v62;
          HIWORD(v334) = v63;
          LODWORD(v335) = v64;
          WORD2(v335) = v52;
          WORD3(v335) = v65;
          DWORD2(v335) = v66;
          WORD6(v335) = v67;
          HIWORD(v335) = v68;
          LODWORD(v336) = v69;
          WORD2(v336) = v70;
          WORD3(v336) = v71;
          DWORD2(v336) = v72;
          HIDWORD(v336) = *(v15 + 76);
          LODWORD(v337) = v73;
          DWORD1(v337) = *(v15 + 84);
          DWORD2(v337) = v74;
          if (v24)
          {
            v76 = 4;
          }

          else
          {
            v76 = 2 * v289;
          }

          computeTangents(v290 + v291, v293, v76, v292, v303.i64[0] + v304.i64[0], v301.n128_i32[0], &v302[v300], v75, v295, v297, *(&v333 + 2 * v298));
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v10 = v288;
        v21 = v348;
        v23 = v318;
      }

      v77 = v10;
      if (v21 == *(v15 + 166) && *(v15 + 164) == 30)
      {
        break;
      }

      v107 = *(v15 + 32);
      v108 = *(v15 + 48);
      v109 = *(v15 + 64);
      v110 = *(v15 + 80);
      v111 = *(v15 + 88);
      v333 = *(v15 + 16);
      v334 = v107;
      v335 = v108;
      v336 = v109;
      *&v337 = v110;
      DWORD2(v337) = v111;
      v112 = 8 * v21;
      if ((*(&v333 + 2 * v21) & 3) != 0)
      {
        v113 = [v23 length];
        v114 = *(v15 + 32);
        v115 = *(v15 + 48);
        v116 = *(v15 + 64);
        v117 = *(v15 + 80);
        v118 = *(v15 + 88);
        v333 = *(v15 + 16);
        v334 = v114;
        v335 = v115;
        v336 = v116;
        *&v337 = v117;
        DWORD2(v337) = v118;
        v119 = v113 / *(&v333 + 2 * v21);
        v120 = [v319 v20[185]];
        BufferWithLength = CFXGPUDeviceCreateBufferWithLength(*(*(v317 + 32) + 16), 8 * v119, 0);
        v121 = [swift_unknownObjectRetain() contents];
        v122 = BufferWithLength;
        v90 = v313;
        v91 = v314;
        v92 = v315;
        v93 = v316;
        v124 = v285;
        v123 = v286;
        v126 = v283;
        v125 = v284;
        v128 = v281;
        v127 = v282;
        if (v119)
        {
          if (v119 < 4 || ((v129 = 8 * (v119 - 1), &v121[v129] >= v121) ? (v130 = &v121[v129 + 2] >= v121 + 2) : (v130 = 0), v130 ? (v131 = &v121[v129 + 4] >= v121 + 4) : (v131 = 0), v131 ? (v132 = &v121[v129 + 6] >= v121 + 6) : (v132 = 0), v132 ? (v133 = (v119 - 1) >> 61 == 0) : (v133 = 0), !v133 || (v121 < &v120[6 * v119] ? (v134 = v120 >= &v121[8 * v119]) : (v134 = 1), !v134)))
          {
            v135 = 0;
            goto LABEL_94;
          }

          if (v119 >= 0x10)
          {
            v135 = v119 & 0x3FFFFFFFFFFFFFF0;
            v181 = (v121 + 64);
            v182 = v119 & 0x3FFFFFFFFFFFFFF0;
            v183 = v120;
            do
            {
              v352.val[0] = *v183;
              v352.val[1] = *(v183 + 1);
              v352.val[2] = vqtbl2q_s8(*v352.val[0].i8, v123);
              v350 = *(v183 + 48);
              v349.val[1] = *(v183 + 5);
              v352.val[3] = *(v183 + 2);
              v354.val[0] = vqtbl2q_s8(*v352.val[2].i8, v124);
              v352.val[2] = vqtbl2q_s8(*v352.val[0].i8, v125);
              v354.val[1] = vqtbl2q_s8(*v352.val[2].i8, v126);
              v352.val[2] = vqtbl2q_s8(*v352.val[0].i8, v127);
              v354.val[2] = vqtbl2q_s8(*v352.val[2].i8, v128);
              v184 = v181 - 32;
              v354.val[3] = v93;
              vst4q_s16(v184, v354);
              v349.val[0] = vqtbl2q_s8(v350, v123);
              v352.val[0] = vqtbl2q_s8(v349, v124);
              v349.val[0] = vqtbl2q_s8(v350, v125);
              v352.val[1] = vqtbl2q_s8(v349, v126);
              v349.val[0] = vqtbl2q_s8(v350, v127);
              v352.val[2] = vqtbl2q_s8(v349, v128);
              v352.val[3] = v93;
              vst4q_s16(v181, v352);
              v181 += 64;
              v183 += 96;
              v182 -= 16;
            }

            while (v182);
            if (v119 != v135)
            {
              if ((v119 & 0xC) == 0)
              {
                goto LABEL_94;
              }

              goto LABEL_117;
            }
          }

          else
          {
            v135 = 0;
LABEL_117:
            v185 = v135;
            v135 = v119 & 0x3FFFFFFFFFFFFFFCLL;
            v186 = &v121[8 * v185];
            v187 = &v120[6 * v185];
            v188 = v185 - (v119 & 0x3FFFFFFFFFFFFFFCLL);
            do
            {
              *v351.val[0].i8 = vld3_s16(v187);
              v187 += 12;
              v351.val[3] = v93.i64[0];
              vst4_s16(v186, v351);
              v186 += 16;
              v188 += 4;
            }

            while (v188);
            if (v119 != v135)
            {
LABEL_94:
              v149 = v119 - v135;
              v150 = &v120[6 * v135 + 4];
              v151 = &v121[8 * v135 + 4];
              do
              {
                v152 = *(v150 - 1);
                v153 = *v150;
                v150 += 6;
                *(v151 - 1) = v152;
                *v151 = v153;
                *(v151 + 1) = 0;
                v151 += 8;
                --v149;
              }

              while (v149);
            }
          }
        }

        v140 = *(v15 + 16);
        v154 = *(v15 + 32);
        v155 = *(v15 + 48);
        v156 = *(v15 + 64);
        v157 = *(v15 + 80);
        v333 = v140;
        v334 = v154;
        v335 = v155;
        v336 = v156;
        v337 = v157;
        v158 = *(&v333 + v112 + 4);
        v159 = &v305[v112];
        *v159 = 8;
        *(v159 + 1) = v158;
        *(v15 + 172) = 18;
LABEL_97:
        v10 = v77;
        goto LABEL_98;
      }

      v147 = v23;
      v148 = *(*(v317 + 32) + 16);
      BufferWithLength = CFXGPUDeviceCreateBufferWithBytes(v148, [v319 v20[185]], objc_msgSend(v147, sel_length), 0);

      v90 = v313;
      v91 = v314;
      v92 = v315;
      v93 = v316;
LABEL_98:
      v313 = v90;
      v314 = v91;
      v315 = v92;
      v316 = v93;
      if ((*(v317 + 16) & 1) != 0 && v348 == *(v15 + 102))
      {
        v160 = *(v15 + 96);
        v161 = *(v15 + 32);
        v162 = *(v15 + 48);
        v163 = *(v15 + 64);
        v164 = *(v15 + 80);
        v165 = *(v15 + 88);
        v333 = *(v15 + 16);
        v334 = v161;
        v335 = v162;
        v336 = v163;
        *&v337 = v164;
        DWORD2(v337) = v165;
        v166 = *(&v333 + 2 * v348);
        v167 = [v312 vertexCount];
        *&v140 = sub_1AFA2D7BC(v280);
        if (BufferWithLength)
        {
          v311 = v140;
          v168 = [swift_unknownObjectRetain() contents];
          v169 = BufferWithLength;
          v170 = *&v311;
          if (v167)
          {
            v171 = vdup_lane_s32(*&v311, 0);
            v172 = &v168[v160 + 8];
            do
            {
              *(v172 - 1) = vdiv_f32(*(v172 - 2), v171);
              *v172 = *v172 / v170;
              v172 = (v172 + v166);
              --v167;
            }

            while (v167);
          }

LABEL_106:
          *&v333 = 0;
          *(&v333 + 1) = 0xE000000000000000;
          sub_1AFDFE218();

          v333 = v296;
          v320 = v348;
          v173 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v173);

          v174 = sub_1AFDFCEC8();

          [BufferWithLength setLabel_];
        }
      }

      else if (BufferWithLength)
      {
        goto LABEL_106;
      }

      v175 = [v318 length];
      v176 = v10[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10[4] = v176;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v176 = sub_1AF422D74(0, *(v176 + 2) + 1, 1, v176);
        v10[4] = v176;
      }

      v179 = *(v176 + 2);
      v178 = *(v176 + 3);
      if (v179 >= v178 >> 1)
      {
        v176 = sub_1AF422D74(v178 > 1, v179 + 1, 1, v176);
      }

      v21 = v348 + 1;
      swift_unknownObjectRelease();

      *(v176 + 2) = v179 + 1;
      v180 = &v176[40 * v179];
      *(v180 + 4) = BufferWithLength;
      *(v180 + 5) = 0;
      *(v180 + 6) = v175;
      *(v180 + 7) = 0;
      v180[64] = 1;
      v10 = v77;
      v77[4] = v176;
      v20 = &selRef_antialiasingMode;
      a1 = v312;
      if (v21 == v310)
      {
        goto LABEL_125;
      }
    }

    v78 = [v23 length];
    v79 = *(v15 + 32);
    v80 = *(v15 + 48);
    v81 = *(v15 + 64);
    v82 = *(v15 + 80);
    v83 = *(v15 + 88);
    v333 = *(v15 + 16);
    v334 = v79;
    v335 = v80;
    v336 = v81;
    *&v337 = v82;
    DWORD2(v337) = v83;
    v84 = 8 * v21;
    v85 = v78 / *(&v333 + 2 * v21);
    v86 = [v319 v20[185]];
    BufferWithLength = CFXGPUDeviceCreateBufferWithLength(*(*(v317 + 32) + 16), 16 * v85, 0);
    v88 = [swift_unknownObjectRetain() contents];
    v89 = BufferWithLength;
    v90 = v313;
    v91 = v314;
    v92 = v315;
    v93 = v316;
    if (v85)
    {
      if (v85 >= 0x14 && ((v94 = 16 * (v85 - 1), &v88[v94] >= v88) ? (v95 = &v88[v94 + 4] >= v88 + 4) : (v95 = 0), v95 ? (v96 = &v88[v94 + 8] >= v88 + 8) : (v96 = 0), v96 ? (v97 = &v88[v94 + 12] >= v88 + 12) : (v97 = 0), v97 ? (v98 = (v85 - 1) >> 60 == 0) : (v98 = 0), v98 && (v88 < &v86[12 * v85] ? (v99 = v86 >= &v88[16 * v85]) : (v99 = 1), v99)))
      {
        v100 = v85 & 0x1FFFFFFFFFFFFFF8;
        v101 = (v88 + 64);
        v102 = v85 & 0x1FFFFFFFFFFFFFF8;
        v103 = v86;
        do
        {
          v92 = v103[1];
          v353.val[2] = v103[4];
          v104 = v103[5];
          v105 = v103[3];
          v90 = *v103;
          v90.i32[1] = HIDWORD(*v103);
          v90.i32[2] = v103[1].i64[1];
          v90.i32[3] = HIDWORD(v103[2].i64[0]);
          v106 = v101 - 16;
          v91 = vrev64q_s32(v92);
          v91.i32[0] = HIDWORD(v103->i64[0]);
          v91.i32[3] = v103[2].i64[1];
          v92.i32[0] = v103->i64[1];
          v92.i32[2] = v103[2];
          v92.i32[3] = HIDWORD(*&v103[2]);
          vst4q_f32(v106, *v90.f32);
          v353.val[0].i64[0] = __PAIR64__(v105.u32[3], v105.u32[0]);
          v353.val[0].i64[1] = __PAIR64__(v104.u32[1], v353.val[2].u32[2]);
          v353.val[1] = vrev64q_s32(v353.val[2]);
          v353.val[1].i32[0] = v105.i32[1];
          v353.val[1].i32[3] = v104.i32[2];
          v353.val[2].i32[0] = v105.i32[2];
          v353.val[2].i64[1] = __PAIR64__(v104.u32[3], v104.u32[0]);
          v353.val[3] = v93;
          vst4q_f32(v101, v353);
          v101 += 32;
          v103 += 6;
          v102 -= 8;
        }

        while (v102);
        if (v85 == v100)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v100 = 0;
      }

      v136 = v85 - v100;
      v137 = &v88[16 * v100 + 12];
      v138 = &v86[12 * v100 + 8];
      do
      {
        v139 = *v138;
        *(v137 - 12) = *(v138 - 1);
        *(v137 - 1) = v139;
        *v137 = 0;
        v137 += 16;
        v138 += 12;
        --v136;
      }

      while (v136);
    }

LABEL_91:
    v140 = *(v15 + 16);
    v141 = *(v15 + 32);
    v142 = *(v15 + 48);
    v143 = *(v15 + 64);
    v144 = *(v15 + 80);
    v333 = v140;
    v334 = v141;
    v335 = v142;
    v336 = v143;
    v337 = v144;
    v145 = *(&v333 + v84 + 4);
    v146 = &v305[v84];
    *v146 = 16;
    *(v146 + 1) = v145;
    *(v15 + 164) = 31;
    goto LABEL_97;
  }

LABEL_125:

  v189 = [a1 submeshes];
  v190 = &selRef_initWithDelegate_;
  v191 = v278;
  if (v189)
  {
    v192 = v189;
    [v189 count];
    sub_1AFDFDC28();
    sub_1AFDFBF68();
    v193 = MEMORY[0x1E69E7CC0];
    if (v347)
    {
      sub_1AF0D4478(0, &unk_1EB63D778, 0x1E6974BC8);
      v302 = " does not have a material";
      v194.n128_u64[0] = vsub_f32(*v276.f32, *v277.f32);
      v195 = v276.f32[2];
      v196 = v277.f32[2];
      v194.n128_f32[2] = v276.f32[2] - v277.f32[2];
      v194.n128_u32[3] = 0;
      v301 = v194;
      v197 = v277;
      v197.i32[3] = 1.0;
      v198 = v276;
      v300 = HIDWORD(v270);
      v298 = "MDLMesh.vertexBuffer";
      v309 = v321;
      v310 = &v333 + 8;
      v198.i32[3] = 1.0;
      v307 = vsubq_f32(v198, v197);
      v308 = vaddq_f32(v197, v198);
      v299 = xmmword_1AFE431C0;
      v348 = v193;
      do
      {
        while ((swift_dynamicCast() & 1) == 0)
        {
          sub_1AFDFBF68();
          if (!v347)
          {
            goto LABEL_159;
          }
        }

        v199 = v346;
        v200 = [v346 indexBuffer];
        v201 = [v200 map];
        v202 = *(*(v317 + 32) + 16);
        v305 = v201;
        v203 = [v201 bytes];
        v319 = v200;
        BufferWithBytes = CFXGPUDeviceCreateBufferWithBytes(v202, v203, [v200 length], 0);

        if (BufferWithBytes)
        {
          swift_unknownObjectRetain();
          v205 = sub_1AFDFCEC8();
          [BufferWithBytes setLabel_];
          swift_unknownObjectRelease();
        }

        v206 = [v319 length];
        v318 = [v199 indexCount];
        v207 = [v199 indexType];
        v208 = 2;
        if (v207 == 32)
        {
          v208 = 4;
        }

        v313.i64[0] = v208;
        v210 = v307;
        v209 = v308;
        if (*(v317 + 16))
        {
          *v211.i32 = sub_1AFA2D7BC(v301);
          v212 = vdup_lane_s32(v211, 0);
          *v213.f32 = vdiv_f32(*v277.f32, v212);
          *v214.f32 = vdiv_f32(*v276.f32, v212);
          v213.i64[1] = __PAIR64__(1.0, v196 / *v211.i32);
          v214.f32[2] = v195 / *v211.i32;
          v214.i32[3] = 1.0;
          v209 = vaddq_f32(v214, v213);
          v210 = vsubq_f32(v214, v213);
        }

        v303 = v210;
        v304 = v209;
        *&v311 = BufferWithBytes;
        v306 = v199;
        if (v269)
        {
          v215 = [v199 material];
          if (v215)
          {
            v216 = v215;
            v297 = v206;
            v217 = sub_1AF6E0B74(v215);
            v218 = v348;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v218 = sub_1AF4217DC(0, *(v218 + 2) + 1, 1, v218);
            }

            v220 = *(v218 + 2);
            v219 = *(v218 + 3);
            if (v220 >= v219 >> 1)
            {
              v348 = sub_1AF4217DC(v219 > 1, v220 + 1, 1, v218);
            }

            else
            {
              v348 = v218;
            }

            v221 = v348;
            *(v348 + 2) = v220 + 1;
            *&v221[8 * v220 + 32] = v217;
            v222 = v288;
            BufferWithBytes = v311;
            v206 = v297;
          }

          else
          {
            v225 = v206;
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            *&v333 = 0;
            *(&v333 + 1) = 0xE000000000000000;
            sub_1AFDFE218();

            *&v333 = 0x747261506873654DLL;
            *(&v333 + 1) = 0xE900000000000020;
            v226 = [v199 name];
            v227 = sub_1AFDFCEF8();
            v229 = v228;

            MEMORY[0x1B2718AE0](v227, v229);

            MEMORY[0x1B2718AE0](0xD000000000000019, v298 | 0x8000000000000000);
            v230 = v333;
            v231 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v251 = v231;
              swift_once();
              v231 = v251;
            }

            *&v333 = 0;
            sub_1AF0D4F18(v231, &v333, v230, *(&v230 + 1));

            v220 = 0;
            v222 = v288;
            BufferWithBytes = v311;
            v206 = v225;
          }
        }

        else
        {

          sub_1AF6E53A0(0, &unk_1ED7269B0, &type metadata for Entity);
          v223 = swift_allocObject();
          v220 = 0;
          *(v223 + 16) = v299;
          v348 = v223;
          v224 = v300;
          *(v223 + 32) = v270;
          *(v223 + 36) = v224;
          v222 = v288;
        }

        v232.i64[0] = 0x3F0000003F000000;
        v232.i64[1] = 0x3F0000003F000000;
        v233 = vmulq_f32(v303, v232);
        v234 = vmulq_f32(v304, v232);
        v235 = v310;
        *v310 = 0;
        *(v235 + 1) = 0;
        *&v333 = 3;
        *(&v334 + 1) = v220;
        v335 = BufferWithBytes;
        v236 = v206;
        v336 = v206;
        LOBYTE(v337) = 1;
        *(&v337 + 1) = *v345;
        DWORD1(v337) = *&v345[3];
        *(&v337 + 1) = v318;
        *&v338 = v313.i64[0];
        *(&v338 + 1) = MEMORY[0x1E69E7CC0];
        v339 = 0u;
        v340 = 0u;
        LOBYTE(v341) = 0;
        *(&v341 + 1) = *v344;
        *(&v341 + 1) = *&v344[7];
        v303 = v234;
        v304 = v233;
        v342 = v234;
        v343 = v233;
        v237 = v222[5];
        sub_1AF6E52F0(&v333, &v320);
        v238 = swift_isUniquelyReferenced_nonNull_native();
        v222[5] = v237;
        if ((v238 & 1) == 0)
        {
          v237 = sub_1AF422C4C(0, *(v237 + 2) + 1, 1, v237);
          v222[5] = v237;
        }

        v240 = *(v237 + 2);
        v239 = *(v237 + 3);
        if (v240 >= v239 >> 1)
        {
          v237 = sub_1AF422C4C(v239 > 1, v240 + 1, 1, v237);
        }

        swift_unknownObjectRelease();
        *(v237 + 2) = v240 + 1;
        v241 = &v237[176 * v240];
        v242 = v333;
        v243 = v335;
        *(v241 + 3) = v334;
        *(v241 + 4) = v243;
        *(v241 + 2) = v242;
        v244 = v336;
        v245 = v337;
        v246 = v339;
        *(v241 + 7) = v338;
        *(v241 + 8) = v246;
        *(v241 + 5) = v244;
        *(v241 + 6) = v245;
        v247 = v340;
        v248 = v341;
        v249 = v343;
        *(v241 + 11) = v342;
        *(v241 + 12) = v249;
        *(v241 + 9) = v247;
        *(v241 + 10) = v248;
        v10 = v288;
        v288[5] = v237;
        v250 = v309;
        *v309 = 0;
        v250[1] = 0;
        v320 = 3;
        v321[2] = v220;
        v321[3] = v311;
        v321[4] = 0;
        v321[5] = v236;
        v321[6] = 0;
        v322 = 1;
        *v323 = *v345;
        *&v323[3] = *&v345[3];
        v324 = v318;
        v325 = v313.i64[0];
        v326 = MEMORY[0x1E69E7CC0];
        v329 = 0;
        v327 = 0u;
        v328 = 0u;
        *v330 = *v344;
        *&v330[7] = *&v344[7];
        v331 = v303;
        v332 = v304;
        sub_1AF6E534C(&v320);
        v191 = v278;
        sub_1AFDFBF68();
        v190 = &selRef_initWithDelegate_;
      }

      while (v347);
    }

    else
    {
      v348 = MEMORY[0x1E69E7CC0];
    }

LABEL_159:
    (*(v271 + 8))(v191, v272);

    a1 = v312;
    v252 = v348;
  }

  else
  {

    v252 = MEMORY[0x1E69E7CC0];
  }

  v10[2] = sub_1AF8C8F18(v15);
  v10[3] = v253;

  v10[6] = [a1 vertexCount];
  v254 = *(v317 + 24);

  v255 = [a1 v190[427]];
  v256 = v10;
  v257 = sub_1AFDFCEF8();
  v259 = v258;

  v348 = v268;
  v260 = *(v254 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v261 = *v260;
  v262 = *(*v260 + 32);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  ecs_stack_allocator_push_snapshot(v262);
  v263 = ecs_stack_allocator_allocate(*(v261 + 32), 32, 8);
  *v263 = &type metadata for MeshModel;
  v263[1] = &off_1F2562500;
  v263[2] = &type metadata for Name;
  v263[3] = &off_1F2535068;
  LOBYTE(v333) = 1;
  v264 = v275;
  v265 = sub_1AF635C1C(v263, 2uLL, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v261, v256, v252, v257, v259);
  if (v264)
  {

    result = ecs_stack_allocator_pop_snapshot(*(v261 + 32));
    __break(1u);
  }

  else
  {
    v266 = v265;

    ecs_stack_allocator_pop_snapshot(*(v261 + 32));

    return v266;
  }

  return result;
}

void sub_1AF6E2C9C(void *a1, uint64_t a2, char a3)
{
  v7 = **(*(v3 + 24) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v8 = *(v7 + 32);
  v9 = a1;
  ecs_stack_allocator_push_snapshot(v8);
  v10 = ecs_stack_allocator_allocate(*(v7 + 32), 32, 8);
  *v10 = &type metadata for Name;
  v10[1] = &off_1F2535068;
  v10[2] = &type metadata for WorldTransform;
  v10[3] = &off_1F2529FC0;
  LOBYTE(v165.f64[0]) = 1;
  v153 = sub_1AF636480(v10, 2uLL, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v7, v9);
  if (v4)
  {

    ecs_stack_allocator_pop_snapshot(*(v7 + 32));
    __break(1u);

    ecs_stack_allocator_pop_snapshot(*(v8 + 32));
    __break(1u);
    return;
  }

  v151 = a3;
  v150 = a2;

  ecs_stack_allocator_pop_snapshot(*(v7 + 32));
  v11 = [v9 components];
  sub_1AF447DFC(0, &qword_1EB63D708, &protocolRef_MDLComponent_0);
  v12 = sub_1AFDFD418();

  if (v12 >> 62)
  {
    v13 = sub_1AFDFE108();
    v152 = v9;
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_20:

LABEL_21:
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    v28 = v154;
    if (v27)
    {
      v29 = v27;
      type metadata accessor for SkeletonData();
      v30 = swift_allocObject();
      v31 = MEMORY[0x1E69E7CC0];
      v30[2] = MEMORY[0x1E69E7CC0];
      v30[3] = v31;
      v30[4] = v31;
      v30[5] = v31;
      v30[6] = v31;
      v32 = v9;
      v33 = [v29 jointPaths];
      v34 = sub_1AFDFD418();

      v30[2] = v34;
      v35 = [v29 jointBindTransforms];
      v36 = sub_1AFDFDA78();

      v30[3] = v36;
      v37 = [v29 jointRestTransforms];
      v38 = sub_1AFDFDA78();

      v30[4] = v38;
      sub_1AF8D6EF8();
      v39 = *(v30[2] + 16);
      v40 = v30[4];
      if (v39)
      {
        type metadata accessor for simd_float4x4(0);

        v41 = sub_1AFDFD488();
        v42 = v41;
        *(v41 + 16) = v39;
        v43 = 32;
        v44 = v39;
        do
        {
          v45 = (v41 + v43);
          *v45 = xmmword_1AFE20150;
          v45[1] = xmmword_1AFE20160;
          v45[2] = xmmword_1AFE20180;
          v45[3] = xmmword_1AFE201A0;
          v43 += 64;
          --v44;
        }

        while (v44);
        v46 = sub_1AFDFD488();
        v47 = v46;
        *(v46 + 16) = v39;
        v48 = 32;
        v49 = v39;
        do
        {
          v50 = (v46 + v48);
          *v50 = xmmword_1AFE20150;
          v50[1] = xmmword_1AFE20160;
          v50[2] = xmmword_1AFE20180;
          v50[3] = xmmword_1AFE201A0;
          v48 += 64;
          --v49;
        }

        while (v49);
        v51 = sub_1AFDFD488();
        v52 = v51;
        *(v51 + 16) = v39;
        v53 = 32;
        do
        {
          v54 = (v51 + v53);
          *v54 = xmmword_1AFE20150;
          v54[1] = xmmword_1AFE20160;
          v54[2] = xmmword_1AFE20180;
          v54[3] = xmmword_1AFE201A0;
          v53 += 64;
          --v39;
        }

        while (v39);
      }

      else
      {

        v52 = MEMORY[0x1E69E7CC0];
        v47 = MEMORY[0x1E69E7CC0];
        v42 = MEMORY[0x1E69E7CC0];
      }

      *&v175 = v30;
      *(&v175 + 1) = v40;
      v176 = v42;
      v177 = v47;
      v178 = v52;

      sub_1AFBFD600(&v175, v153);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v167 = v154[6];
      v154[6] = 0x8000000000000000;
      sub_1AF853E48(v153, v29, isUniquelyReferenced_nonNull_native);

      v28 = v154;

      v154[6] = v167;

      v9 = v152;
    }

    v56 = [v9 name];
    v57 = sub_1AFDFCEF8();
    v59 = v58;

    v60 = v9;
    if (v57 == 0x6F6974616D696E41 && v59 == 0xE90000000000006ELL)
    {
    }

    else
    {
      v61 = sub_1AFDFEE28();

      if ((v61 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v62 = [v9 path];
    v63 = sub_1AFDFCEF8();
    v65 = v64;

    v66 = sub_1AF6DF708(v63, v65);

    if (v66)
    {
      v67 = [v9 parent];
      if (v67)
      {
        v68 = v67;
        objc_opt_self();
        v69 = swift_dynamicCastObjCClass();
        if (v69)
        {
          v70 = v28[6];
          if (*(v70 + 16))
          {
            v71 = v69;
            v72 = v68;

            v73 = sub_1AF41A464(v71);
            if (v74)
            {
              v75 = *(*(v70 + 56) + 8 * v73);

              v76 = *(v28[3] + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
              v77 = *v76;
              v78 = *(*v76 + 32);
              swift_retain_n();
              ecs_stack_allocator_push_snapshot(v78);
              v79 = ecs_stack_allocator_allocate(*(v77 + 32), 16, 8);
              *v79 = &type metadata for SkeletalAnimationPlayer;
              v79[1] = &off_1F25435F8;
              sub_1AF637470(v79, 1uLL, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v77, v75, v66);

              ecs_stack_allocator_pop_snapshot(*(v77 + 32));

              goto LABEL_42;
            }
          }

          sub_1AF6E529C();
          swift_allocError();
          *v145 = xmmword_1AFE21110;
          swift_willThrow();

          return;
        }
      }

      sub_1AF6E529C();
      swift_allocError();
      *v114 = xmmword_1AFE21110;
      swift_willThrow();

      return;
    }

LABEL_42:
    v80 = [v9 transform];
    if (!v80)
    {
      goto LABEL_63;
    }

    [v80 matrix];
    v156 = v82;
    v157 = v81;
    v155 = v83;
    v84.n128_u32[3] = 1.0;
    v161 = v84;

    sub_1AFBFD710(v153, v161);

    v85 = vmulq_f32(v157, v157);
    v86 = vmulq_f32(v156, v156);
    v87 = vmulq_f32(v155, v155);
    v88 = vtrn2q_s32(v85, v86);
    v88.i32[2] = v87.i32[1];
    v89 = vaddq_f32(vzip1q_s32(vzip2q_s32(v85, v87), vdupq_laneq_s32(v86, 2)), vaddq_f32(vzip1q_s32(vzip1q_s32(v85, v87), v86), v88));
    v90.i64[0] = 0x80000000800000;
    v90.i64[1] = 0x80000000800000;
    v91 = vcgeq_f32(v90, v89);
    v89.i32[3] = 0;
    v92 = vrsqrteq_f32(v89);
    v93 = vmulq_f32(v92, vrsqrtsq_f32(v89, vmulq_f32(v92, v92)));
    v94 = v91;
    v94.i32[3] = 0;
    v95 = vbslq_s8(vcltzq_s32(v94), v89, vmulq_f32(v93, vrsqrtsq_f32(v89, vmulq_f32(v93, v93))));
    v96 = vmulq_n_f32(v157, v95.f32[0]);
    v97 = vmulq_lane_f32(v156, *v95.f32, 1);
    v98 = vmulq_laneq_f32(v155, v95, 2);
    v99 = vuzp1q_s32(v98, v98);
    v100 = vuzp1q_s32(v97, v97);
    v101 = v96;
    if (v91.i32[0])
    {
      v102 = vmlaq_f32(vmulq_f32(vextq_s8(v99, v98, 0xCuLL), vnegq_f32(v97)), v98, vextq_s8(v100, v97, 0xCuLL));
      v101 = vextq_s8(vuzp1q_s32(v102, v102), v102, 0xCuLL);
    }

    v103 = vuzp1q_s32(v96, v96);
    v104 = v97;
    if (v91.i32[1])
    {
      v105 = vmlaq_f32(vmulq_f32(vextq_s8(v103, v96, 0xCuLL), vnegq_f32(v98)), v96, vextq_s8(v99, v98, 0xCuLL));
      v104 = vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL);
    }

    if (v91.i32[2])
    {
      v106 = vmlaq_f32(vmulq_f32(vextq_s8(v100, v97, 0xCuLL), vnegq_f32(v96)), v97, vextq_s8(v103, v96, 0xCuLL));
      v98 = vextq_s8(vuzp1q_s32(v106, v106), v106, 0xCuLL);
    }

    v107 = (*v101.i32 + *&v104.i32[1]) + v98.f32[2];
    v160 = v85;
    v162 = v87;
    v159 = v86;
    if (v107 > 0.0)
    {
      v108 = sqrtf(v107 + 1.0);
      *v109.f32 = vsub_f32(*&vzip2q_s32(v104, vuzp1q_s32(v104, v98)), *&vtrn2q_s32(v98, vzip2q_s32(v98, v101)));
      v109.f32[2] = *&v101.i32[1] - *v104.i32;
      v109.f32[3] = v108 * v108;
      v110 = 0.5 / v108;
LABEL_51:
      v111 = vmulq_n_f32(v109, v110);
LABEL_62:
      v158 = v111;

      sub_1AFBFD728(v153, v158);

      v120.n128_u64[0] = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v160, v160, 8uLL), *&vextq_s8(v159, v159, 8uLL)), vadd_f32(vzip1_s32(*v160.i8, *v159.i8), vzip2_s32(*v160.i8, *v159.i8))));
      v120.n128_u64[1] = COERCE_UNSIGNED_INT(sqrtf(*&v162.i32[2] + vaddv_f32(*v162.i8)));
      v163 = v120;

      sub_1AFBFD740(v153, v163);
      swift_unknownObjectRelease();

LABEL_63:
      if ((v151 & 1) == 0)
      {

        sub_1AFBFD378(v150, v153);
      }

      objc_opt_self();
      v121 = swift_dynamicCastObjCClass();
      if (v121)
      {
        v122 = v121;
        v123 = v9;
        v124 = [v122 vertexDescriptor];
        v125 = [v124 attributeNamed_];

        if (v125)
        {

          v126 = [v122 vertexDescriptor];
          v127 = [v126 attributeNamed_];

          if (v127)
          {

            v128 = sub_1AFDFCEC8();
            v129 = sub_1AFDFCEC8();
            v130 = sub_1AFDFCEC8();
            [v122 addOrthTanBasisForTextureCoordinateAttributeNamed:v128 normalAttributeNamed:v129 tangentAttributeNamed:v130];

            v60 = v9;
          }

          v131 = sub_1AFDFCEC8();
          [v122 flipTextureCoordinatesInAttributeNamed_];
        }

        v132 = sub_1AF6E128C(v122, 0, 1);
        v133 = v28[7];
        v134 = swift_isUniquelyReferenced_nonNull_native();
        v28[7] = v133;
        if ((v134 & 1) == 0)
        {
          v133 = sub_1AF4217DC(0, *(v133 + 2) + 1, 1, v133);
          v28[7] = v133;
        }

        v136 = *(v133 + 2);
        v135 = *(v133 + 3);
        if (v136 >= v135 >> 1)
        {
          v133 = sub_1AF4217DC(v135 > 1, v136 + 1, 1, v133);
        }

        *(v133 + 2) = v136 + 1;
        *&v133[8 * v136 + 32] = v132;
        v28[7] = v133;

        sub_1AFBFD758(v132, 0xFFFFFFFFLL, v153);
      }

      v137 = [v60 safe_children];
      if (!v137)
      {
        return;
      }

      v138 = v137;
      if ([v137 count] < 1)
      {
        swift_unknownObjectRelease();
        return;
      }

      v139 = [v138 objects];
      sub_1AF0D4478(0, &unk_1EB63F590, 0x1E6974B98);
      v140 = sub_1AFDFD418();

      if (v140 >> 62)
      {
        v141 = sub_1AFDFE108();
        if (v141)
        {
LABEL_79:
          for (i = 0; i != v141; ++i)
          {
            if ((v140 & 0xC000000000000001) != 0)
            {
              v143 = MEMORY[0x1B2719C70](i, v140);
            }

            else
            {
              v143 = *(v140 + 8 * i + 32);
            }

            v144 = v143;
            sub_1AF6E2C9C(v143, v153, 0);
          }
        }
      }

      else
      {
        v141 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v141)
        {
          goto LABEL_79;
        }
      }

      swift_unknownObjectRelease();

      return;
    }

    if (*v101.i32 < *&v104.i32[1] || *v101.i32 < v98.f32[2])
    {
      if (*&v104.i32[1] <= v98.f32[2])
      {
        v146 = vzip2q_s32(v101, v104).u64[0];
        v147 = __PAIR64__(v101.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v98.f32[2] + 1.0) - *v101.i32) - *&v104.i32[1])));
        v148 = vdup_lane_s32(*v104.i8, 0);
        v149 = vsub_f32(*v101.i8, v148);
        v148.i32[0] = v147.i32[0];
        v148.i32[0] = vmul_f32(v147, v148).u32[0];
        v148.i32[1] = v149.i32[1];
        *v109.f32 = vadd_f32(v146, *v98.f32);
        *&v109.u32[2] = v148;
        v110 = 0.5 / v147.f32[0];
        goto LABEL_51;
      }

      v115 = sqrtf(((*&v104.i32[1] + 1.0) - *v101.i32) - v98.f32[2]);
      v119.f32[0] = *&v101.i32[1] + *v104.i32;
      v113 = vzip2q_s32(v101, v104).u64[0];
      v119.f32[1] = v115 * v115;
      *&v119.u32[2] = vext_s8(vadd_f32(*v98.f32, v113), vsub_f32(*v98.f32, v113), 4uLL);
    }

    else
    {
      v115 = sqrtf(((*v101.i32 + 1.0) - *&v104.i32[1]) - v98.f32[2]);
      v119.f32[0] = v115 * v115;
      v116 = *&v101.i32[1] + *v104.i32;
      v117 = vzip2q_s32(v101, v104).u64[0];
      LODWORD(v118) = vadd_f32(v117, *v98.f32).u32[0];
      HIDWORD(v118) = vsub_f32(v117, *&v98).i32[1];
      v119.f32[1] = v116;
      v119.i64[1] = v118;
    }

    v111 = vmulq_n_f32(v119, 0.5 / v115);
    goto LABEL_62;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v152 = v9;
  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_4:
  v14 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2719C70](v14, v12);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      break;
    }

    sub_1AF6E53A0(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AFE431C0;
    v165.f64[0] = 0.0;
    v165.f64[1] = -2.68156159e154;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF30280);
    swift_getObjectType();
    sub_1AFDFEDD8();
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 32) = v165;
    sub_1AFDFF258();

LABEL_6:
    ++v14;
    swift_unknownObjectRelease();
    if (v13 == v14)
    {

      v9 = v152;
      goto LABEL_21;
    }
  }

  v17 = v16;
  swift_unknownObjectRetain();
  [v17 geometryBindTransform];
  v18 = [v17 skeleton];
  if (!v18)
  {
LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v19 = v154[6];
  v20 = *(v19 + 16);
  v21 = v18;
  if (!v20)
  {
    goto LABEL_18;
  }

  v22 = sub_1AF41A464(v21);
  if (v23)
  {
    v24 = *(*(v19 + 56) + 8 * v22);

    v179.f64[0] = v24;
    v180 = vcvt_hight_f32_f64(vcvt_f32_f64(v165), v168);
    v181 = vcvt_hight_f32_f64(vcvt_f32_f64(v169), v170);
    v182 = vcvt_hight_f32_f64(vcvt_f32_f64(v171), v172);
    v183 = vcvt_hight_f32_f64(vcvt_f32_f64(v173), v174);

    sub_1AFBFD4F0(&v179, v153);

    sub_1AF6E53A0(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1AFE431C0;
    *&v166 = 0;
    *(&v166 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v164 = v166;
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF302A0);
    v169 = v181;
    v170 = v182;
    v171 = v183;
    v165 = v179;
    v168 = v180;
    sub_1AFDFE458();
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 32) = v164;
    sub_1AFDFF258();

    goto LABEL_15;
  }

LABEL_18:

  sub_1AF6E529C();
  swift_allocError();
  *v26 = xmmword_1AFE21110;
  swift_willThrow();
  swift_unknownObjectRelease_n();
}

void sub_1AF6E3EB8(void *a1)
{
  v2 = v1;
  v3 = [objc_msgSend(a1 animations)];
  swift_unknownObjectRelease();
  sub_1AF0D4478(0, &unk_1EB63F590, 0x1E6974B98);
  v4 = sub_1AFDFD418();

  if (v4 >> 62)
  {
    v5 = sub_1AFDFE108();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v45 = v4;
      v46 = v4 & 0xC000000000000001;
      v44 = v5;
      do
      {
        if (v46)
        {
          v28 = MEMORY[0x1B2719C70](v6, v4);
        }

        else
        {
          v28 = *(v4 + 8 * v6 + 32);
        }

        v29 = v28;
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (!v30)
        {

          v38 = v29;
          v39 = [v38 description];
          v40 = sub_1AFDFCEF8();
          v42 = v41;

          sub_1AF6E529C();
          swift_allocError();
          *v43 = v40;
          v43[1] = v42;
          swift_willThrow();

          return;
        }

        v31 = v30;
        v32 = *(v2 + 40);
        if ((v32 & 0xC000000000000001) != 0)
        {
          v33 = v29;

          v34 = sub_1AFDFE4F8();

          if (!v34)
          {
            goto LABEL_5;
          }

          type metadata accessor for SkeletonAnimation();
          swift_dynamicCast();
          if (!v47)
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (!*(v32 + 16))
          {
            goto LABEL_5;
          }

          v35 = sub_1AF41A464(v31);
          if ((v36 & 1) == 0)
          {

LABEL_5:
            type metadata accessor for SkeletonAnimation();
            v7 = swift_allocObject();
            v8 = MEMORY[0x1E69E7CC0];
            v7[2] = MEMORY[0x1E69E7CC0];
            v7[3] = v8;
            v7[4] = v8;
            v7[5] = v8;
            v7[6] = v8;
            v7[7] = v8;
            v7[8] = v8;
            v9 = [v31 jointPaths];
            v10 = sub_1AFDFD418();

            v7[2] = v10;

            v11 = [v31 translations];
            v12 = MEMORY[0x1E69E8198];
            v13 = sub_1AF6DF364(v11, MEMORY[0x1E69E8198]);
            v15 = v14;

            v7[3] = v13;
            v7[4] = v15;

            v16 = [v31 rotations];
            v17 = sub_1AF6DF364(v16, MEMORY[0x1E69E81A0]);
            v19 = v18;

            v7[5] = v17;
            v7[6] = v19;

            v20 = [v31 scales];
            v21 = sub_1AF6DF364(v20, v12);
            v23 = v22;

            v7[7] = v21;
            v7[8] = v23;

            v24 = *(v2 + 40);
            if ((v24 & 0xC000000000000001) != 0)
            {
              if (v24 < 0)
              {
                v25 = *(v2 + 40);
              }

              else
              {
                v25 = v24 & 0xFFFFFFFFFFFFFF8;
              }

              v26 = sub_1AFDFE108();
              *(v2 + 40) = sub_1AF6E4518(v25, v26 + 1);
            }

            else
            {
            }

            v5 = v44;
            v4 = v45;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v47 = *(v2 + 40);
            *(v2 + 40) = 0x8000000000000000;
            sub_1AF853BAC(v7, v31, isUniquelyReferenced_nonNull_native);
            *(v2 + 40) = v47;
            goto LABEL_11;
          }

          v37 = *(*(v32 + 56) + 8 * v35);

          if (!v37)
          {
            goto LABEL_5;
          }
        }

LABEL_11:

        ++v6;
      }

      while (v5 != v6);
    }
  }
}

void sub_1AF6E4330()
{
  if (qword_1EB637120 != -1)
  {
    swift_once();
  }

  v1 = *(qword_1EB6C3110 + 16);
  v2 = objc_allocWithZone(MEMORY[0x1E6974B48]);
  v3 = v1;
  v4 = sub_1AFDFC048();
  v5 = [v2 initWithURL:v4 vertexDescriptor:0 bufferAllocator:v3];

  sub_1AF6E3EB8(v5);
  if (!v0)
  {
    v6 = [v5 count];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [v5 objectAtIndex_];
        sub_1AF6E2C9C(v9, 0, 1);
      }
    }
  }
}

uint64_t sub_1AF6E449C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF6E4518(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1AF43BDD0(0);
    v2 = sub_1AFDFE5B8();
    v18 = v2;
    sub_1AFDFE4D8();
    v3 = sub_1AFDFE508();
    if (v3)
    {
      v4 = v3;
      sub_1AF0D4478(0, &unk_1EB63F590, 0x1E6974B98);
      v5 = v4;
      do
      {
        v16 = v5;
        swift_dynamicCast();
        type metadata accessor for SkeletonAnimation();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1AF8331D4(v12 + 1, 1);
        }

        v2 = v18;
        v6 = sub_1AFDFDC38();
        v7 = v18 + 64;
        v8 = -1 << *(v18 + 32);
        v9 = v6 & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = (63 - v8) >> 6;
          do
          {
            if (v10 + 1 == v13)
            {
              v10 = 0;
            }

            else
            {
              ++v10;
            }

            v14 = *(v7 + 8 * v10);
          }

          while (v14 == -1);
          v11 = __clz(__rbit64(~v14)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v18 + 48) + 8 * v11) = v17;
        *(*(v18 + 56) + 8 * v11) = v16;
        ++*(v18 + 16);
        v5 = sub_1AFDFE508();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1AF6E4718(void *a1, uint64_t a2)
{
  type metadata accessor for VertexLayoutDescriptor();
  swift_allocObject();
  sub_1AF8C2800();
  v5 = v4;
  v6 = sub_1AF43BE7C(&unk_1F24FEA48);
  sub_1AF6E53EC(0);
  v7 = 8;
  swift_arrayDestroy();
  v8 = [a1 attributes];
  v9 = [v8 count];

  v10 = 0;
  if (v9 > 8)
  {
    v7 = v9;
  }

  v173 = (a2 + 32);
  v174 = a2;
  v11 = &selRef_antialiasingMode;
  v12 = &selRef_initWithDelegate_;
  v172 = v6;
  v175 = v7;
  for (i = [a1 &selRef_authoringGraph]; ; i = objc_msgSend(a1, v11 + 632))
  {
    v14 = i;
    v15 = [v14 objectAtIndexedSubscript_];

    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
    sub_1AF0D4478(0, &qword_1EB63D790, 0x1E6974BF8);
    if (swift_dynamicCast())
    {
      v16 = v182;
      v17 = [v182 v12[427]];
      v18 = sub_1AFDFCEF8();
      v20 = v19;

      if (!v18 && v20 == 0xE000000000000000)
      {

        goto LABEL_5;
      }

      v21 = sub_1AFDFEE28();

      if (v21)
      {
LABEL_4:

LABEL_5:
        v7 = v175;
        goto LABEL_6;
      }

      v22 = [v16 v12[427]];
      v23 = sub_1AFDFCEF8();
      v25 = v24;

      if (!v6[2])
      {

LABEL_54:
        *&v176 = 0;
        *(&v176 + 1) = 0xE000000000000000;
        sub_1AFDFE218();

        *&v176 = 0xD000000000000019;
        *(&v176 + 1) = 0x80000001AFF30340;
        v168 = [v16 v12[427]];
        v169 = sub_1AFDFCEF8();
        v171 = v170;

        MEMORY[0x1B2718AE0](v169, v171);

        MEMORY[0x1B2718AE0](34, 0xE100000000000000);
        while (1)
        {
LABEL_55:
          sub_1AFDFE518();
          __break(1u);
        }
      }

      v26 = sub_1AF419914(v23, v25);
      v28 = v27;

      if ((v28 & 1) == 0)
      {
        goto LABEL_54;
      }

      v29 = *(v6[7] + 8 * v26);
      v30 = v173;
      v31 = *(v174 + 16);
      if (v31)
      {
        do
        {
          v32 = *v30++;
          if (v32 == v29)
          {
            goto LABEL_4;
          }
        }

        while (--v31);
      }

      v33 = a1;
      v34 = v12;
      v35 = v11;
      v36 = v33;
      v37 = [v33 layouts];
      v38 = [v37 objectAtIndexedSubscript_];

      sub_1AFDFDFB8();
      swift_unknownObjectRelease();
      sub_1AF0D4478(0, &qword_1EB63D798, 0x1E6974C00);
      if (!swift_dynamicCast())
      {
        goto LABEL_55;
      }

      v39 = v181;
      v40 = [v16 bufferIndex];
      v41 = [v39 stride];
      v42 = *(v5 + 32);
      v43 = *(v5 + 48);
      v44 = *(v5 + 64);
      v45 = *(v5 + 80);
      v176 = *(v5 + 16);
      v177 = v42;
      v178 = v43;
      v179 = v44;
      v180 = v45;
      v46 = *(&v176 + 2 * v40 + 1);
      v47 = (v5 + 16 + 8 * v40);
      *v47 = v41;
      v47[1] = v46;
      v48 = [v16 bufferIndex];
      v49 = *(v5 + 112);
      v50 = *(v5 + 128);
      v51 = *(v5 + 144);
      v52 = *(v5 + 160);
      v53 = *(v5 + 168);
      v54 = *(v5 + 172);
      v176 = *(v5 + 96);
      v177 = v49;
      v178 = v50;
      v179 = v51;
      *&v180 = v52;
      DWORD2(v180) = v53;
      WORD6(v180) = v54;
      v55 = &v176 + 8 * v29;
      v56 = *(v55 + 2);
      v57 = v5 + 96 + 8 * v29;
      *v57 = *v55;
      *(v57 + 4) = v56;
      *(v57 + 6) = v48;
      v58 = [v16 offset];
      v59 = *(v5 + 112);
      v60 = *(v5 + 128);
      v61 = *(v5 + 144);
      v62 = *(v5 + 160);
      v176 = *(v5 + 96);
      v177 = v59;
      v178 = v60;
      v179 = v61;
      v180 = v62;
      v63 = *(v55 + 1);
      *v57 = v58;
      *(v57 + 4) = v63;
      v64 = [v16 format];
      if (v64 <= 393217)
      {
        v11 = v35;
        if (v64 <= 327682)
        {
          v12 = v34;
          if (v64)
          {
            a1 = v36;
            if (v64 == 327681)
            {

              v75 = *(v5 + 112);
              v76 = *(v5 + 128);
              v77 = *(v5 + 144);
              v78 = *(v5 + 160);
              v79 = *(v5 + 168);
              v80 = *(v5 + 172);
              v176 = *(v5 + 96);
              v177 = v75;
              v178 = v76;
              v179 = v77;
              *&v180 = v78;
              *(&v180 + 1) = __PAIR64__(v80, v79);
              v81 = &v176 + 8 * v29;
              v82 = *v81;
              v73 = *(v81 + 3);
              *v57 = v82;
              v74 = 49;
              goto LABEL_36;
            }

            v6 = v172;
            if (v64 != 327682)
            {
              goto LABEL_55;
            }

            v151 = *(v5 + 112);
            v152 = *(v5 + 128);
            v153 = *(v5 + 144);
            v154 = *(v5 + 160);
            v155 = *(v5 + 168);
            v156 = *(v5 + 172);
            v176 = *(v5 + 96);
            v177 = v151;
            v178 = v152;
            v179 = v153;
            *&v180 = v154;
            *(&v180 + 1) = __PAIR64__(v156, v155);
            v157 = &v176 + 8 * v29;
            v158 = *v157;
            v133 = *(v157 + 3);
            *v57 = v158;
            v134 = 13;
LABEL_51:
            *(v57 + 4) = v134;
            *(v57 + 6) = v133;
            goto LABEL_5;
          }

LABEL_41:
          a1 = v36;
          v6 = v172;
          goto LABEL_5;
        }

        v12 = v34;
        if (v64 != 327683)
        {
          a1 = v36;
          if (v64 == 327684)
          {

            v91 = *(v5 + 112);
            v92 = *(v5 + 128);
            v93 = *(v5 + 144);
            v94 = *(v5 + 160);
            v95 = *(v5 + 168);
            v96 = *(v5 + 172);
            v176 = *(v5 + 96);
            v177 = v91;
            v178 = v92;
            v179 = v93;
            *&v180 = v94;
            *(&v180 + 1) = __PAIR64__(v96, v95);
            v97 = &v176 + 8 * v29;
            v98 = *v97;
            v73 = *(v97 + 3);
            *v57 = v98;
            v74 = 15;
            goto LABEL_36;
          }

          v6 = v172;
          if (v64 != 393217)
          {
            goto LABEL_55;
          }

          v159 = *(v5 + 112);
          v160 = *(v5 + 128);
          v161 = *(v5 + 144);
          v162 = *(v5 + 160);
          v163 = *(v5 + 168);
          v164 = *(v5 + 172);
          v176 = *(v5 + 96);
          v177 = v159;
          v178 = v160;
          v179 = v161;
          *&v180 = v162;
          *(&v180 + 1) = __PAIR64__(v164, v163);
          v165 = &v176 + 8 * v29;
          v166 = *v165;
          v133 = *(v165 + 3);
          *v57 = v166;
          v134 = 50;
          goto LABEL_51;
        }

        v117 = *(v5 + 112);
        v118 = *(v5 + 128);
        v119 = *(v5 + 144);
        v120 = *(v5 + 160);
        v121 = *(v5 + 168);
        v122 = *(v5 + 172);
        v176 = *(v5 + 96);
        v177 = v117;
        v178 = v118;
        v179 = v119;
        *&v180 = v120;
        *(&v180 + 1) = __PAIR64__(v122, v121);
        v123 = &v176 + 8 * v29;
        v124 = *v123;
        v115 = *(v123 + 3);
        *v57 = v124;
        v116 = 14;
      }

      else
      {
        v11 = v35;
        if (v64 > 786432)
        {
          v12 = v34;
          if (v64 > 786434)
          {
            a1 = v36;
            if (v64 == 786435)
            {

              v99 = *(v5 + 112);
              v100 = *(v5 + 128);
              v101 = *(v5 + 144);
              v102 = *(v5 + 160);
              v103 = *(v5 + 168);
              v104 = *(v5 + 172);
              v176 = *(v5 + 96);
              v177 = v99;
              v178 = v100;
              v179 = v101;
              *&v180 = v102;
              *(&v180 + 1) = __PAIR64__(v104, v103);
              v105 = &v176 + 8 * v29;
              v106 = *v105;
              v73 = *(v105 + 3);
              *v57 = v106;
              v74 = 30;
              goto LABEL_36;
            }

            v6 = v172;
            if (v64 != 786436)
            {
              goto LABEL_55;
            }

            v143 = *(v5 + 112);
            v144 = *(v5 + 128);
            v145 = *(v5 + 144);
            v146 = *(v5 + 160);
            v147 = *(v5 + 168);
            v148 = *(v5 + 172);
            v176 = *(v5 + 96);
            v177 = v143;
            v178 = v144;
            v179 = v145;
            *&v180 = v146;
            *(&v180 + 1) = __PAIR64__(v148, v147);
            v149 = &v176 + 8 * v29;
            v150 = *v149;
            v133 = *(v149 + 3);
            *v57 = v150;
            v134 = 31;
          }

          else
          {
            a1 = v36;
            if (v64 == 786433)
            {

              v65 = *(v5 + 112);
              v66 = *(v5 + 128);
              v67 = *(v5 + 144);
              v68 = *(v5 + 160);
              v69 = *(v5 + 168);
              v70 = *(v5 + 172);
              v176 = *(v5 + 96);
              v177 = v65;
              v178 = v66;
              v179 = v67;
              *&v180 = v68;
              *(&v180 + 1) = __PAIR64__(v70, v69);
              v71 = &v176 + 8 * v29;
              v72 = *v71;
              v73 = *(v71 + 3);
              *v57 = v72;
              v74 = 28;
LABEL_36:
              *(v57 + 4) = v74;
              *(v57 + 6) = v73;
              v6 = v172;
              goto LABEL_5;
            }

            v6 = v172;

            v135 = *(v5 + 112);
            v136 = *(v5 + 128);
            v137 = *(v5 + 144);
            v138 = *(v5 + 160);
            v139 = *(v5 + 168);
            v140 = *(v5 + 172);
            v176 = *(v5 + 96);
            v177 = v135;
            v178 = v136;
            v179 = v137;
            *&v180 = v138;
            *(&v180 + 1) = __PAIR64__(v140, v139);
            v141 = &v176 + 8 * v29;
            v142 = *v141;
            v133 = *(v141 + 3);
            *v57 = v142;
            v134 = 29;
          }

          goto LABEL_51;
        }

        v12 = v34;
        if (v64 != 393218)
        {
          a1 = v36;
          if (v64 == 393219)
          {

            v83 = *(v5 + 112);
            v84 = *(v5 + 128);
            v85 = *(v5 + 144);
            v86 = *(v5 + 160);
            v87 = *(v5 + 168);
            v88 = *(v5 + 172);
            v176 = *(v5 + 96);
            v177 = v83;
            v178 = v84;
            v179 = v85;
            *&v180 = v86;
            *(&v180 + 1) = __PAIR64__(v88, v87);
            v89 = &v176 + 8 * v29;
            v90 = *v89;
            v73 = *(v89 + 3);
            *v57 = v90;
            v74 = 17;
            goto LABEL_36;
          }

          v6 = v172;
          if (v64 != 393220)
          {
            goto LABEL_55;
          }

          v125 = *(v5 + 112);
          v126 = *(v5 + 128);
          v127 = *(v5 + 144);
          v128 = *(v5 + 160);
          v129 = *(v5 + 168);
          v130 = *(v5 + 172);
          v176 = *(v5 + 96);
          v177 = v125;
          v178 = v126;
          v179 = v127;
          *&v180 = v128;
          *(&v180 + 1) = __PAIR64__(v130, v129);
          v131 = &v176 + 8 * v29;
          v132 = *v131;
          v133 = *(v131 + 3);
          *v57 = v132;
          v134 = 18;
          goto LABEL_51;
        }

        v107 = *(v5 + 112);
        v108 = *(v5 + 128);
        v109 = *(v5 + 144);
        v110 = *(v5 + 160);
        v111 = *(v5 + 168);
        v112 = *(v5 + 172);
        v176 = *(v5 + 96);
        v177 = v107;
        v178 = v108;
        v179 = v109;
        *&v180 = v110;
        *(&v180 + 1) = __PAIR64__(v112, v111);
        v113 = &v176 + 8 * v29;
        v114 = *v113;
        v115 = *(v113 + 3);
        *v57 = v114;
        v116 = 16;
      }

      *(v57 + 4) = v116;
      *(v57 + 6) = v115;
      goto LABEL_41;
    }

LABEL_6:
    if (++v10 == v7)
    {
      break;
    }
  }

  return v5;
}