uint64_t sub_1AF82F63C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF447EC4(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v20 = v19 | (v8 << 6);
LABEL_15:
      v24 = *(*(v5 + 48) + 8 * v20);
      v30 = *(*(v5 + 56) + 16 * v20);
      if ((v4 & 1) == 0)
      {
      }

      v14 = sub_1AFDFF278();
      v15 = -1 << *(v7 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = (63 - v15) >> 6;
        do
        {
          if (v17 + 1 == v25)
          {
            v17 = 0;
          }

          else
          {
            ++v17;
          }

          v26 = *(v13 + 8 * v17);
        }

        while (v26 == -1);
        v18 = __clz(__rbit64(~v26)) + (v17 << 6);
      }

      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + 8 * v18) = v24;
      *(*(v7 + 56) + 16 * v18) = v30;
      ++*(v7 + 16);
    }

    v21 = v8 << 6;
    while (1)
    {
      v22 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v23 = *(v5 + 8 * v8 + 72);
      v21 += 64;
      ++v8;
      if (v23)
      {
        v11 = (v23 - 1) & v23;
        v20 = __clz(__rbit64(v23)) + v21;
        v8 = v22;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF82F88C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED7307E0, MEMORY[0x1E69E76D8], &type metadata for ShaderCache.ShaderCacheWeakReference, MEMORY[0x1E69E76E8]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v8 << 6);
LABEL_14:
      v21 = 8 * v17;
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + v21;
      if (v4)
      {
        sub_1AF0D5D54(v23, v33);
      }

      else
      {
        sub_1AF7472D8(v23, v33);
      }

      v24 = sub_1AFDFF278();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = (63 - v25) >> 6;
        do
        {
          if (v27 + 1 == v28)
          {
            v27 = 0;
          }

          else
          {
            ++v27;
          }

          v29 = *(v13 + 8 * v27);
        }

        while (v29 == -1);
        v14 = __clz(__rbit64(~v29)) + (v27 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = 8 * v14;
      *(*(v7 + 48) + v15) = v22;
      sub_1AF0D5D54(v33, *(v7 + 56) + v15);
      ++*(v7 + 16);
    }

    v18 = v8 << 6;
    while (1)
    {
      v19 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v20 = *(v5 + 8 * v8 + 72);
      v18 += 64;
      ++v8;
      if (v20)
      {
        v11 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v8 = v19;
        goto LABEL_14;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF82FB04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = *v2;
  sub_1AF85AED0(0, &unk_1EB632910, MEMORY[0x1E69E6EC8]);
  v50 = v4;
  v12 = sub_1AFDFE5A8();
  v13 = v12;
  if (!*(v11 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v53 = v10;
  v54 = v5;
  v14 = 0;
  v15 = *(v11 + 64);
  v45 = (v11 + 64);
  v46 = v2;
  v16 = 1 << *(v11 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v48 = (v6 + 16);
  v49 = v6;
  v20 = (v6 + 32);
  v21 = v12 + 64;
  v47 = (v6 + 32);
  while (v18)
  {
    v52 = (v18 - 1) & v18;
    v26 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_14:
    v30 = *(v11 + 48);
    v51 = *(v6 + 72);
    v31 = v51 * v26;
    if (v50)
    {
      v32 = *v20;
      v33 = v54;
      (*v20)(v53, v30 + v31, v54);
      v32(v55, *(v11 + 56) + v31, v33);
    }

    else
    {
      v34 = *v48;
      v35 = v54;
      (*v48)(v53, v30 + v31, v54);
      v34(v55, *(v11 + 56) + v31, v35);
      v20 = v47;
    }

    sub_1AF4644D8();
    v36 = sub_1AFDFCCF8();
    v37 = -1 << *(v13 + 32);
    v38 = v36 & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v21 + 8 * (v38 >> 6))) != 0)
    {
      v22 = __clz(__rbit64((-1 << v38) & ~*(v21 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v40 = (63 - v37) >> 6;
      do
      {
        if (v39 + 1 == v40)
        {
          v39 = 0;
        }

        else
        {
          ++v39;
        }

        v41 = *(v21 + 8 * v39);
      }

      while (v41 == -1);
      v22 = __clz(__rbit64(~v41)) + (v39 << 6);
    }

    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v23 = v51 * v22;
    v24 = *v20;
    v25 = v54;
    (*v20)((*(v13 + 48) + v51 * v22), v53, v54);
    v24((*(v13 + 56) + v23), v55, v25);
    ++*(v13 + 16);
    v6 = v49;
    v18 = v52;
  }

  v27 = v14 << 6;
  while (1)
  {
    v28 = v14 + 1;
    if (v14 + 1 >= v19)
    {
      break;
    }

    v29 = *(v11 + 8 * v14 + 72);
    v27 += 64;
    ++v14;
    if (v29)
    {
      v52 = (v29 - 1) & v29;
      v26 = __clz(__rbit64(v29)) + v27;
      v14 = v28;
      goto LABEL_14;
    }
  }

  if (v50)
  {
    v42 = 1 << *(v11 + 32);
    v3 = v46;
    if (v42 >= 64)
    {
      bzero(v45, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v45 = -1 << v42;
    }

    *(v11 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v46;
LABEL_31:
  *v3 = v13;
  return result;
}

uint64_t sub_1AF82FF20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85AB20(0);
  v34 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v8 = 0;
  v33 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = (*(v5 + 48) + 2 * v21);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v5 + 56) + 8 * v21);
    if ((v34 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();

    sub_1AFDFD038();

    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v29)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v30 = *(v13 + 8 * v17);
      }

      while (v30 == -1);
      v18 = __clz(__rbit64(~v30)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 2 * v18);
    *v19 = v26;
    v19[1] = v27;
    *(*(v7 + 56) + 8 * v18) = v28;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v34)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v2;
LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF830278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF859DB8(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v30 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + 8 * v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((v4 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v24);
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v26)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v27 = *(v13 + 8 * v17);
      }

      while (v27 == -1);
      v18 = __clz(__rbit64(~v27)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF8304FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v35 = v5;
  v7 = sub_1AFDFE5A8();
  v8 = v7;
  if (!*(v6 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v9 = 0;
  v34 = (v6 + 64);
  v10 = 1 << *(v6 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v6 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v7 + 64;
  while (v12)
  {
    v21 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v22 = v21 | (v9 << 6);
LABEL_15:
    v26 = (*(v6 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(*(v6 + 56) + 8 * v22);
    if ((v35 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v15 = sub_1AFDFF2F8();
    v16 = -1 << *(v8 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - v16) >> 6;
      do
      {
        if (v18 + 1 == v30)
        {
          v18 = 0;
        }

        else
        {
          ++v18;
        }

        v31 = *(v14 + 8 * v18);
      }

      while (v31 == -1);
      v19 = __clz(__rbit64(~v31)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v20 = (*(v8 + 48) + 16 * v19);
    *v20 = v27;
    v20[1] = v28;
    *(*(v8 + 56) + 8 * v19) = v29;
    ++*(v8 + 16);
  }

  v23 = v9 << 6;
  while (1)
  {
    v24 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v25 = *(v6 + 8 * v9 + 72);
    v23 += 64;
    ++v9;
    if (v25)
    {
      v12 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v9 = v24;
      goto LABEL_15;
    }
  }

  if (v35)
  {
    v32 = 1 << *(v6 + 32);
    v4 = v3;
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    *(v6 + 16) = 0;
    goto LABEL_29;
  }

  v4 = v3;
LABEL_30:
  *v4 = v8;
  return result;
}

uint64_t sub_1AF8307A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v35 = v5;
  v7 = sub_1AFDFE5A8();
  v8 = v7;
  if (!*(v6 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v9 = 0;
  v34 = (v6 + 64);
  v10 = 1 << *(v6 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v6 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v7 + 64;
  while (v12)
  {
    v21 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v22 = v21 | (v9 << 6);
LABEL_15:
    v26 = (*(v6 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(*(v6 + 56) + 8 * v22);
    if ((v35 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v15 = sub_1AFDFF2F8();
    v16 = -1 << *(v8 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - v16) >> 6;
      do
      {
        if (v18 + 1 == v30)
        {
          v18 = 0;
        }

        else
        {
          ++v18;
        }

        v31 = *(v14 + 8 * v18);
      }

      while (v31 == -1);
      v19 = __clz(__rbit64(~v31)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v20 = (*(v8 + 48) + 16 * v19);
    *v20 = v27;
    v20[1] = v28;
    *(*(v8 + 56) + 8 * v19) = v29;
    ++*(v8 + 16);
  }

  v23 = v9 << 6;
  while (1)
  {
    v24 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v25 = *(v6 + 8 * v9 + 72);
    v23 += 64;
    ++v9;
    if (v25)
    {
      v12 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v9 = v24;
      goto LABEL_15;
    }
  }

  if (v35)
  {
    v32 = 1 << *(v6 + 32);
    v4 = v3;
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    *(v6 + 16) = 0;
    goto LABEL_29;
  }

  v4 = v3;
LABEL_30:
  *v4 = v8;
  return result;
}

uint64_t sub_1AF830A44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB6331A0, MEMORY[0x1E69E6530], &type metadata for Entity, MEMORY[0x1E69E6540]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
LABEL_14:
      v20 = *(*(v5 + 48) + 8 * v16);
      v21 = *(*(v5 + 56) + 8 * v16);
      v22 = sub_1AFDFF278();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v14 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v20;
      *(*(v7 + 56) + 8 * v14) = v21;
      ++*(v7 + 16);
    }

    v17 = v8 << 6;
    while (1)
    {
      v18 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v19 = *(v5 + 8 * v8 + 72);
      v17 += 64;
      ++v8;
      if (v19)
      {
        v11 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v8 = v18;
        goto LABEL_14;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF830CA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB638310, MEMORY[0x1E69E6530], &type metadata for ShaderParameter, MEMORY[0x1E69E6540]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v8 << 6);
LABEL_14:
      v21 = *(*(v5 + 48) + 8 * v17);
      v22 = *(v5 + 56) + 80 * v17;
      v34 = *(v22 + 32);
      v35 = *(v22 + 48);
      v36 = *(v22 + 64);
      v32 = *v22;
      v33 = *(v22 + 16);
      v23 = sub_1AFDFF278();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = (63 - v24) >> 6;
        do
        {
          if (v26 + 1 == v27)
          {
            v26 = 0;
          }

          else
          {
            ++v26;
          }

          v28 = *(v13 + 8 * v26);
        }

        while (v28 == -1);
        v14 = __clz(__rbit64(~v28)) + (v26 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v21;
      v15 = *(v7 + 56) + 80 * v14;
      *(v15 + 32) = v34;
      *(v15 + 48) = v35;
      *(v15 + 64) = v36;
      *v15 = v32;
      *(v15 + 16) = v33;
      ++*(v7 + 16);
    }

    v18 = v8 << 6;
    while (1)
    {
      v19 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v20 = *(v5 + 8 * v8 + 72);
      v18 += 64;
      ++v8;
      if (v20)
      {
        v11 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v8 = v19;
        goto LABEL_14;
      }
    }

    if (v31)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v29;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF830F34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1AF85A9E8(0, &unk_1EB63F4B0, sub_1AF43FD98);
  v41 = v4;
  v10 = sub_1AFDFE5A8();
  v11 = v10;
  if (!*(v9 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v38 = v2;
  v12 = 0;
  v13 = *(v9 + 64);
  v37 = (v9 + 64);
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v39 = (v6 + 16);
  v40 = v6;
  v42 = (v6 + 32);
  v18 = v10 + 64;
  v44 = v8;
  v45 = v5;
  while (v16)
  {
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v22 | (v12 << 6);
LABEL_14:
    v27 = *(v6 + 72);
    v28 = *(v9 + 48) + v27 * v23;
    if (v41)
    {
      (*v42)(v44, v28, v45);
      v43 = *(*(v9 + 56) + 16 * v23);
    }

    else
    {
      (*v39)(v44, v28, v45);
      v43 = *(*(v9 + 56) + 16 * v23);
    }

    sub_1AF4644D8();
    v29 = sub_1AFDFCCF8();
    v30 = -1 << *(v11 + 32);
    v31 = v29 & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v6 = v40;
    }

    else
    {
      v33 = (63 - v30) >> 6;
      v6 = v40;
      do
      {
        if (v32 + 1 == v33)
        {
          v32 = 0;
        }

        else
        {
          ++v32;
        }

        v34 = *(v18 + 8 * v32);
      }

      while (v34 == -1);
      v19 = __clz(__rbit64(~v34)) + (v32 << 6);
    }

    v20 = v44;
    v21 = v45;
    *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    (*v42)((*(v11 + 48) + v27 * v19), v20, v21);
    *(*(v11 + 56) + 16 * v19) = v43;
    ++*(v11 + 16);
  }

  v24 = v12 << 6;
  while (1)
  {
    v25 = v12 + 1;
    if (v12 + 1 >= v17)
    {
      break;
    }

    v26 = *(v9 + 8 * v12 + 72);
    v24 += 64;
    ++v12;
    if (v26)
    {
      v16 = (v26 - 1) & v26;
      v23 = __clz(__rbit64(v26)) + v24;
      v12 = v25;
      goto LABEL_14;
    }
  }

  if (v41)
  {
    v35 = 1 << *(v9 + 32);
    v3 = v38;
    if (v35 >= 64)
    {
      bzero(v37, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v35;
    }

    *(v9 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v38;
LABEL_31:
  *v3 = v11;
  return result;
}

uint64_t sub_1AF8312CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF44519C(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v8 = 0;
  v29 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + v20);
    v30 = *(*(v5 + 56) + 16 * v20);
    if ((v4 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();

    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v25)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v26 = *(v13 + 8 * v17);
      }

      while (v26 == -1);
      v18 = __clz(__rbit64(~v26)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + v18) = v24;
    *(*(v7 + 56) + 16 * v18) = v30;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v27 = 1 << *(v5 + 32);
    v3 = v2;
    if (v27 >= 64)
    {
      bzero(v29, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v29 = -1 << v27;
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v2;
LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF8315B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85AD10(0);
  v36 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v34 = (v5 + 64);
  v35 = v2;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v37 = (v11 - 1) & v11;
    v20 = __clz(__rbit64(v11)) | (v8 << 6);
LABEL_15:
    v24 = (*(v5 + 48) + 40 * v20);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = v24[3];
    v29 = v24[4];
    v38 = *(*(v5 + 56) + 8 * v20);
    if ((v36 & 1) == 0)
    {
      sub_1AF687F90(v25, v26, v27, v28, v29);
    }

    *&v39 = v25;
    *(&v39 + 1) = v26;
    *&v40 = v27;
    *(&v40 + 1) = v28;
    sub_1AFDFF288();
    sub_1AF7FE65C();
    sub_1AFDFD038();

    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v30)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v31 = *(v13 + 8 * v17);
      }

      while (v31 == -1);
      v18 = __clz(__rbit64(~v31)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = *(v7 + 48) + 40 * v18;
    *v19 = v39;
    *(v19 + 16) = v40;
    *(v19 + 32) = v29;
    v11 = v37;
    *(*(v7 + 56) + 8 * v18) = v38;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v37 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (v36)
  {
    v32 = 1 << *(v5 + 32);
    v3 = v35;
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v35;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF8318AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB63F580, MEMORY[0x1E69E5FE0], &type metadata for FunctionDescriptor, MEMORY[0x1E69E5FE8]);
  v36 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v34 = (v5 + 64);
  v35 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = *(*(v5 + 48) + 8 * v21);
    v26 = (*(v5 + 56) + 40 * v21);
    v37 = *v26;
    v38 = v26[1];
    v27 = v26[2];
    v28 = v26[3];
    v29 = v26[4];
    if ((v36 & 1) == 0)
    {
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
    }

    v14 = sub_1AFDFF278();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v30)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v31 = *(v13 + 8 * v17);
      }

      while (v31 == -1);
      v18 = __clz(__rbit64(~v31)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v25;
    v19 = (*(v7 + 56) + 40 * v18);
    *v19 = v37;
    v19[1] = v38;
    v19[2] = v27;
    v19[3] = v28;
    v19[4] = v29;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v36)
  {
    v32 = 1 << *(v5 + 32);
    v3 = v35;
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v35;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF831B68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF447618(0);
  v55 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_56:

    goto LABEL_57;
  }

  v8 = 0;
  v49 = (v5 + 64);
  v50 = v2;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v52 = v12;
  v53 = v6;
  v54 = v5;
  v51 = v6 + 64;
  while (v11)
  {
    v60 = (v11 - 1) & v11;
    v24 = __clz(__rbit64(v11)) | (v8 << 6);
LABEL_15:
    v28 = *(v5 + 56);
    v29 = (*(v5 + 48) + 40 * v24);
    v30 = *v29;
    v31 = v29[1];
    v32 = v29[2];
    v33 = v29[3];
    v34 = v29[4];
    v35 = *(v28 + 8 * v24);
    if ((v55 & 1) == 0)
    {
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
    }

    v56 = v33;
    v57 = v32;
    sub_1AFDFF288();
    v58 = v31;
    v59 = v30;
    sub_1AFDFD038();
    MEMORY[0x1B271ACB0](v34[1].n128_u64[0]);
    v61 = v34;
    v36 = v34[1].n128_i64[0];
    if (v36)
    {
      v37 = v34 + 4;
      do
      {
        v39 = v37[-2].n128_i64[0];
        v40 = v37[-2].n128_i64[1];
        v41 = v37[-1].n128_u8[0];
        v64 = v37[1];
        v65 = *v37;
        v62 = v37[3];
        v63 = v37[2];
        v42 = v37[4].n128_u8[0];
        if (v41 == 1)
        {
          MEMORY[0x1B271ACB0](1);

          sub_1AFDFD038();
        }

        else
        {
          MEMORY[0x1B271ACB0](0);
          MEMORY[0x1B271ACB0](v39);
        }

        v37 += 7;
        v43.n128_u64[1] = v65.n128_u64[1];
        v43.n128_u64[0] = v65.n128_u64[1];
        switch(v42)
        {
          case 1:
            MEMORY[0x1B271ACB0](1, v65.n128_f64[1]);
            sub_1AFDFF2C8();
            goto LABEL_43;
          case 2:
            MEMORY[0x1B271ACB0](2, v65.n128_f64[1]);
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            goto LABEL_43;
          case 3:
            MEMORY[0x1B271ACB0](3, v65.n128_f64[1]);
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            goto LABEL_43;
          case 4:
            MEMORY[0x1B271ACB0](4);
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            goto LABEL_43;
          case 5:
            MEMORY[0x1B271ACB0](5, v65.n128_f64[1]);
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            goto LABEL_43;
          case 6:
            MEMORY[0x1B271ACB0](6, v65.n128_f64[1]);
            sub_1AF6A8C04(v65);
            v38 = v64;
            goto LABEL_20;
          case 7:
            MEMORY[0x1B271ACB0](7);
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            goto LABEL_43;
          case 8:
            MEMORY[0x1B271ACB0](8, v65.n128_f64[1]);
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            goto LABEL_43;
          case 9:
            MEMORY[0x1B271ACB0](9, v65.n128_f64[1]);
            sub_1AF6A8C04(v65);
            sub_1AF6A8C04(v64);
            v38 = v63;
            goto LABEL_20;
          case 10:
            MEMORY[0x1B271ACB0](10);
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            goto LABEL_43;
          case 11:
            MEMORY[0x1B271ACB0](11, v65.n128_f64[1]);
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            sub_1AFDFF2C8();
            goto LABEL_43;
          case 12:
            MEMORY[0x1B271ACB0](12);
            sub_1AF6A8C04(v65);
            sub_1AF6A8C04(v64);
            sub_1AF6A8C04(v63);
            v38 = v62;
LABEL_20:
            sub_1AF6A8C04(v38);
            break;
          case 13:
            MEMORY[0x1B271ACB0](15, v65.n128_f64[1]);
            sub_1AFDFF2A8();
            break;
          case 14:
            v44 = 13;
            goto LABEL_33;
          case 15:
            v44 = 14;
LABEL_33:
            MEMORY[0x1B271ACB0](v44, v43);
            sub_1AFDFF2C8();
            break;
          default:
            MEMORY[0x1B271ACB0](0, v65.n128_f64[1]);
LABEL_43:
            sub_1AFDFF2C8();
            break;
        }

        sub_1AF4456D0(v39, v40, v41);
        --v36;
      }

      while (v36);
    }

    MEMORY[0x1B271ACB0](v56);
    v13 = sub_1AFDFF2F8();
    v7 = v53;
    v14 = -1 << *(v53 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v51 + 8 * (v15 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v15) & ~*(v51 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
      v5 = v54;
      v19 = v59;
      v18 = v35;
      v20 = v61;
      v21 = v57;
      v22 = v58;
    }

    else
    {
      v45 = (63 - v14) >> 6;
      v18 = v35;
      v20 = v61;
      v21 = v57;
      do
      {
        if (v16 + 1 == v45)
        {
          v16 = 0;
        }

        else
        {
          ++v16;
        }

        v46 = *(v51 + 8 * v16);
      }

      while (v46 == -1);
      v17 = __clz(__rbit64(~v46)) + (v16 << 6);
      v5 = v54;
      v22 = v58;
      v19 = v59;
    }

    *(v51 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v23 = (*(v53 + 48) + 40 * v17);
    *v23 = v19;
    v23[1] = v22;
    v23[2] = v21;
    v23[3] = v56;
    v23[4] = v20;
    *(*(v53 + 56) + 8 * v17) = v18;
    ++*(v53 + 16);
    v12 = v52;
    v11 = v60;
  }

  v25 = v8 << 6;
  while (1)
  {
    v26 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v27 = *(v5 + 8 * v8 + 72);
    v25 += 64;
    ++v8;
    if (v27)
    {
      v60 = (v27 - 1) & v27;
      v24 = __clz(__rbit64(v27)) + v25;
      v8 = v26;
      goto LABEL_15;
    }
  }

  if (v55)
  {
    v47 = 1 << *(v5 + 32);
    v3 = v50;
    if (v47 >= 64)
    {
      bzero(v49, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v49 = -1 << v47;
    }

    *(v5 + 16) = 0;
    goto LABEL_56;
  }

  v3 = v50;
LABEL_57:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF8325CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF447808(0);
  v36 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v34 = (v5 + 64);
  v35 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = *(*(v5 + 48) + 8 * v21);
    v26 = *(v5 + 56) + 56 * v21;
    v39 = *(v26 + 8);
    v40 = *v26;
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    v29 = *(v26 + 32);
    v38 = *(v26 + 40);
    v37 = *(v26 + 48);
    if ((v36 & 1) == 0)
    {
      sub_1AF447894(v40, v39, v27, v28, v29, v38, v37);
    }

    v14 = sub_1AFDFF278();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v30)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v31 = *(v13 + 8 * v17);
      }

      while (v31 == -1);
      v18 = __clz(__rbit64(~v31)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v25;
    v19 = *(v7 + 56) + 56 * v18;
    *v19 = v40;
    *(v19 + 8) = v39;
    *(v19 + 16) = v27;
    *(v19 + 24) = v28;
    *(v19 + 32) = v29;
    *(v19 + 40) = v38;
    *(v19 + 48) = v37;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v36)
  {
    v32 = 1 << *(v5 + 32);
    v3 = v35;
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v35;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF832878(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB633188, MEMORY[0x1E69E6530], MEMORY[0x1E69E6370], MEMORY[0x1E69E6540]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
LABEL_14:
      v20 = *(*(v5 + 48) + 8 * v16);
      v21 = *(*(v5 + 56) + v16);
      v22 = sub_1AFDFF278();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v14 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v20;
      *(*(v7 + 56) + v14) = v21;
      ++*(v7 + 16);
    }

    v17 = v8 << 6;
    while (1)
    {
      v18 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v19 = *(v5 + 8 * v8 + 72);
      v17 += 64;
      ++v8;
      if (v19)
      {
        v11 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v8 = v18;
        goto LABEL_14;
      }
    }

    if (v30)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF832AD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF447910(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v35 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v8 << 6);
      if (v4)
      {
LABEL_10:
        v18 = *(*(v5 + 48) + 8 * v17);
        v19 = *(v5 + 56) + 72 * v17;
        v42 = *(v19 + 16);
        v43 = *(v19 + 32);
        v44 = *(v19 + 48);
        v45 = *(v19 + 64);
        v41 = *v19;
      }

      else
      {
LABEL_15:
        v18 = *(*(v5 + 48) + 8 * v17);
        v23 = *(v5 + 56) + 72 * v17;
        v36 = *v23;
        v25 = *(v23 + 32);
        v24 = *(v23 + 48);
        v26 = *(v23 + 16);
        v40 = *(v23 + 64);
        v38 = v25;
        v39 = v24;
        v37 = v26;
        sub_1AF0D9CA4(&v36, &v41, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);
        v43 = v38;
        v44 = v39;
        v45 = v40;
        v41 = v36;
        v42 = v37;
      }

      v27 = sub_1AFDFF278();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = (63 - v28) >> 6;
        do
        {
          if (v30 + 1 == v31)
          {
            v30 = 0;
          }

          else
          {
            ++v30;
          }

          v32 = *(v13 + 8 * v30);
        }

        while (v32 == -1);
        v14 = __clz(__rbit64(~v32)) + (v30 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      v15 = *(v7 + 56) + 72 * v14;
      *(v15 + 16) = v42;
      *(v15 + 32) = v43;
      *(v15 + 48) = v44;
      *(v15 + 64) = v45;
      *v15 = v41;
      ++*(v7 + 16);
    }

    v20 = v8 << 6;
    while (1)
    {
      v21 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v22 = *(v5 + 8 * v8 + 72);
      v20 += 64;
      ++v8;
      if (v22)
      {
        v11 = (v22 - 1) & v22;
        v17 = __clz(__rbit64(v22)) + v20;
        v8 = v21;
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v35 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF832DE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1AFDFC128();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1AF859FA4(0, &qword_1EB638680, MEMORY[0x1E6968FB0], sub_1AF859F00, MEMORY[0x1E69E6158]);
  v46 = v4;
  v9 = sub_1AFDFE5A8();
  v10 = v9;
  if (!*(v8 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v11 = 0;
  v12 = *(v8 + 64);
  v41 = (v8 + 64);
  v42 = v2;
  v13 = 1 << *(v8 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v43 = (v6 + 16);
  v44 = v6;
  v47 = (v6 + 32);
  v17 = v9 + 64;
  v50 = v5;
  v18 = v45;
  while (v15)
  {
    v22 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v23 = v22 | (v11 << 6);
LABEL_14:
    v27 = *(v6 + 72);
    v28 = *(v8 + 48) + v27 * v23;
    if (v46)
    {
      (*v47)(v18, v28, v50);
      v29 = (*(v8 + 56) + 16 * v23);
      v30 = *v29;
      v48 = v29[1];
      v49 = v30;
    }

    else
    {
      (*v43)(v18, v28, v50);
      v31 = (*(v8 + 56) + 16 * v23);
      v32 = *v31;
      v48 = v31[1];
      v49 = v32;
    }

    sub_1AF859F00();
    v33 = sub_1AFDFCCF8();
    v34 = -1 << *(v10 + 32);
    v35 = v33 & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v17 + 8 * (v35 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v35) & ~*(v17 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v37 = (63 - v34) >> 6;
      do
      {
        if (v36 + 1 == v37)
        {
          v36 = 0;
        }

        else
        {
          ++v36;
        }

        v38 = *(v17 + 8 * v36);
      }

      while (v38 == -1);
      v19 = __clz(__rbit64(~v38)) + (v36 << 6);
    }

    v18 = v45;
    *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    (*v47)((*(v10 + 48) + v27 * v19), v18, v50);
    v20 = (*(v10 + 56) + 16 * v19);
    v21 = v48;
    *v20 = v49;
    v20[1] = v21;
    ++*(v10 + 16);
    v6 = v44;
  }

  v24 = v11 << 6;
  while (1)
  {
    v25 = v11 + 1;
    if (v11 + 1 >= v16)
    {
      break;
    }

    v26 = *(v8 + 8 * v11 + 72);
    v24 += 64;
    ++v11;
    if (v26)
    {
      v15 = (v26 - 1) & v26;
      v23 = __clz(__rbit64(v26)) + v24;
      v11 = v25;
      goto LABEL_14;
    }
  }

  if (v46)
  {
    v39 = 1 << *(v8 + 32);
    v3 = v42;
    if (v39 >= 64)
    {
      bzero(v41, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v41 = -1 << v39;
    }

    *(v8 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v42;
LABEL_31:
  *v3 = v10;
  return result;
}

uint64_t sub_1AF8331D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF43BDD0(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v31 = (v5 + 64);
  v32 = v2;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + 8 * v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((v4 & 1) == 0)
    {
      v26 = v24;
    }

    v14 = sub_1AFDFDC38();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v27)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v28 = *(v13 + 8 * v17);
      }

      while (v28 == -1);
      v18 = __clz(__rbit64(~v28)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v29 = 1 << *(v5 + 32);
    v3 = v32;
    if (v29 >= 64)
    {
      bzero(v31, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v31 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v32;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF833420(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  sub_1AF859FA4(0, &qword_1EB630C10, type metadata accessor for VertexLayoutDescriptor, sub_1AF85A024, MEMORY[0x1E69E6530]);
  v7 = sub_1AFDFE5A8();
  v8 = v7;
  if (!*(v6 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v9 = 0;
  v31 = (v6 + 64);
  v10 = 1 << *(v6 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v6 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v7 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v21 = v20 | (v9 << 6);
LABEL_15:
    v25 = *(*(v6 + 48) + 8 * v21);
    v26 = *(*(v6 + 56) + 8 * v21);
    if ((v5 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AF8C2834();
    v15 = sub_1AFDFF2F8();
    v16 = -1 << *(v8 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = (63 - v16) >> 6;
      do
      {
        if (v18 + 1 == v27)
        {
          v18 = 0;
        }

        else
        {
          ++v18;
        }

        v28 = *(v14 + 8 * v18);
      }

      while (v28 == -1);
      v19 = __clz(__rbit64(~v28)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v8 + 48) + 8 * v19) = v25;
    *(*(v8 + 56) + 8 * v19) = v26;
    ++*(v8 + 16);
  }

  v22 = v9 << 6;
  while (1)
  {
    v23 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v24 = *(v6 + 8 * v9 + 72);
    v22 += 64;
    ++v9;
    if (v24)
    {
      v12 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v9 = v23;
      goto LABEL_15;
    }
  }

  if (v5)
  {
    v29 = 1 << *(v6 + 32);
    v4 = v3;
    if (v29 >= 64)
    {
      bzero(v31, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v31 = -1 << v29;
    }

    *(v6 + 16) = 0;
    goto LABEL_29;
  }

  v4 = v3;
LABEL_30:
  *v4 = v8;
  return result;
}

uint64_t sub_1AF8336BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF43CD30(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v20 = v19 | (v8 << 6);
LABEL_15:
      v24 = *(*(v5 + 56) + 8 * v20);
      v29 = *(*(v5 + 48) + 16 * v20);
      if ((v4 & 1) == 0)
      {
        sub_1AF43C9F0(v29, *(*(v5 + 48) + 16 * v20 + 8));
      }

      sub_1AFDFF288();
      sub_1AFDFC1C8();
      v14 = sub_1AFDFF2F8();
      v15 = -1 << *(v7 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = (63 - v15) >> 6;
        do
        {
          if (v17 + 1 == v25)
          {
            v17 = 0;
          }

          else
          {
            ++v17;
          }

          v26 = *(v13 + 8 * v17);
        }

        while (v26 == -1);
        v18 = __clz(__rbit64(~v26)) + (v17 << 6);
      }

      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + 16 * v18) = v29;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v21 = v8 << 6;
    while (1)
    {
      v22 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v23 = *(v5 + 8 * v8 + 72);
      v21 += 64;
      ++v8;
      if (v23)
      {
        v11 = (v23 - 1) & v23;
        v20 = __clz(__rbit64(v23)) + v21;
        v8 = v22;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF833938(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1AFDFC128();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1AF859FA4(0, &qword_1EB638240, MEMORY[0x1E6968FB0], sub_1AF859F00, &type metadata for Entity);
  v40 = v4;
  v10 = sub_1AFDFE5A8();
  v11 = v10;
  if (!*(v9 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v12 = 0;
  v13 = *(v9 + 64);
  v36 = (v9 + 64);
  v37 = v2;
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v38 = (v6 + 16);
  v39 = v6;
  v41 = (v6 + 32);
  v42 = v8;
  v18 = v10 + 64;
  v43 = v5;
  while (v16)
  {
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = v20 | (v12 << 6);
LABEL_14:
    v25 = *(v6 + 72);
    v26 = *(v9 + 48) + v25 * v21;
    if (v40)
    {
      (*v41)(v42, v26, v43);
    }

    else
    {
      (*v38)(v42, v26, v43);
    }

    v27 = *(*(v9 + 56) + 8 * v21);
    sub_1AF859F00();
    v28 = sub_1AFDFCCF8();
    v29 = -1 << *(v11 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v6 = v39;
    }

    else
    {
      v32 = (63 - v29) >> 6;
      v6 = v39;
      do
      {
        if (v31 + 1 == v32)
        {
          v31 = 0;
        }

        else
        {
          ++v31;
        }

        v33 = *(v18 + 8 * v31);
      }

      while (v33 == -1);
      v19 = __clz(__rbit64(~v33)) + (v31 << 6);
    }

    *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    (*v41)((*(v11 + 48) + v25 * v19), v42, v43);
    *(*(v11 + 56) + 8 * v19) = v27;
    ++*(v11 + 16);
  }

  v22 = v12 << 6;
  while (1)
  {
    v23 = v12 + 1;
    if (v12 + 1 >= v17)
    {
      break;
    }

    v24 = *(v9 + 8 * v12 + 72);
    v22 += 64;
    ++v12;
    if (v24)
    {
      v16 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v12 = v23;
      goto LABEL_14;
    }
  }

  if (v40)
  {
    v34 = 1 << *(v9 + 32);
    v3 = v37;
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    *(v9 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v37;
LABEL_31:
  *v3 = v11;
  return result;
}

uint64_t sub_1AF833CD4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  v7 = v6;
  v8 = a2;
  v9 = *v6;
  sub_1AF43CDE8(0, a3, a4, a5, a6);
  v10 = sub_1AFDFE5A8();
  v11 = v10;
  if (*(v9 + 16))
  {
    v35 = v6;
    v12 = 0;
    v13 = 1 << *(v9 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v9 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v10 + 64;
    while (v15)
    {
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v24 = v23 | (v12 << 6);
LABEL_15:
      v28 = *(*(v9 + 48) + 8 * v24);
      v29 = *(*(v9 + 56) + 8 * v24);
      if ((v8 & 1) == 0)
      {
        v30 = v28;
      }

      v18 = sub_1AFDFDC38();
      v19 = -1 << *(v11 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v17 + 8 * (v20 >> 6))) != 0)
      {
        v22 = __clz(__rbit64((-1 << v20) & ~*(v17 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = (63 - v19) >> 6;
        do
        {
          if (v21 + 1 == v31)
          {
            v21 = 0;
          }

          else
          {
            ++v21;
          }

          v32 = *(v17 + 8 * v21);
        }

        while (v32 == -1);
        v22 = __clz(__rbit64(~v32)) + (v21 << 6);
      }

      *(v17 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v11 + 48) + 8 * v22) = v28;
      *(*(v11 + 56) + 8 * v22) = v29;
      ++*(v11 + 16);
    }

    v25 = v12 << 6;
    while (1)
    {
      v26 = v12 + 1;
      if (v12 + 1 >= v16)
      {
        break;
      }

      v27 = *(v9 + 8 * v12 + 72);
      v25 += 64;
      ++v12;
      if (v27)
      {
        v15 = (v27 - 1) & v27;
        v24 = __clz(__rbit64(v27)) + v25;
        v12 = v26;
        goto LABEL_15;
      }
    }

    if (v8)
    {
      v33 = 1 << *(v9 + 32);
      if (v33 >= 64)
      {
        bzero((v9 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v9 + 64) = -1 << v33;
      }

      *(v9 + 16) = 0;
    }

    v7 = v35;
  }

  else
  {
  }

  *v7 = v11;
  return result;
}

uint64_t sub_1AF833F28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF4493DC(0);
  v6 = sub_1AFDFE5A8();
  v8 = v6;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v9 << 6);
LABEL_14:
      *&v7 = *(*(v5 + 48) + 8 * v17);
      v30 = v7;
      v21 = *(*(v5 + 56) + 8 * v17);
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v22 = sub_1AFDFF2F8();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) != 0)
      {
        v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v14 + 8 * v25);
        }

        while (v27 == -1);
        v15 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(&v7 + 1) = *(&v30 + 1);
      *(*(v8 + 48) + 8 * v15) = v30;
      *(*(v8 + 56) + 8 * v15) = v21;
      ++*(v8 + 16);
    }

    v18 = v9 << 6;
    while (1)
    {
      v19 = v9 + 1;
      if (v9 + 1 >= v13)
      {
        break;
      }

      v20 = *(v5 + 8 * v9 + 72);
      v18 += 64;
      ++v9;
      if (v20)
      {
        v12 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v9 = v19;
        goto LABEL_14;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1AF834194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED723000, MEMORY[0x1E69E6530], &_s15RelationStorageVN, MEMORY[0x1E69E6540]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v32 = (v5 + 64);
  v33 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = *(*(v5 + 48) + 8 * v21);
    v26 = *(v5 + 56) + 24 * v21;
    v34 = *v26;
    v27 = *(v26 + 16);
    if ((v4 & 1) == 0)
    {
    }

    v14 = sub_1AFDFF278();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v28)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v29 = *(v13 + 8 * v17);
      }

      while (v29 == -1);
      v18 = __clz(__rbit64(~v29)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v25;
    v19 = *(v7 + 56) + 24 * v18;
    *v19 = v34;
    *(v19 + 16) = v27;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v30 = 1 << *(v5 + 32);
    v3 = v33;
    if (v30 >= 64)
    {
      bzero(v32, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v32 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v33;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF834424(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF859E94(0, &qword_1ED7307D8, sub_1AF0D54FC, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v8 << 6);
LABEL_14:
      v21 = 8 * v17;
      v22 = *(v5 + 56);
      v23 = *(*(v5 + 48) + v21);
      if (v4)
      {
        sub_1AF0D6D88(v22 + v21, v33, sub_1AF0D54FC);
      }

      else
      {
        sub_1AF85A058(v22 + v21, v33, sub_1AF0D54FC);
      }

      v24 = sub_1AFDFF278();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = (63 - v25) >> 6;
        do
        {
          if (v27 + 1 == v28)
          {
            v27 = 0;
          }

          else
          {
            ++v27;
          }

          v29 = *(v13 + 8 * v27);
        }

        while (v29 == -1);
        v14 = __clz(__rbit64(~v29)) + (v27 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = 8 * v14;
      *(*(v7 + 48) + v15) = v23;
      sub_1AF0D6D88(v33, *(v7 + 56) + v15, sub_1AF0D54FC);
      ++*(v7 + 16);
    }

    v18 = v8 << 6;
    while (1)
    {
      v19 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v20 = *(v5 + 8 * v8 + 72);
      v18 += 64;
      ++v8;
      if (v20)
      {
        v11 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v8 = v19;
        goto LABEL_14;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF8346EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF0D7EAC(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v35 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v8 << 6);
    if (v4)
    {
LABEL_10:
      v18 = *(*(v5 + 48) + v17);
      v19 = (*(v5 + 56) + 80 * v17);
      v42 = v19[1];
      v43 = v19[2];
      v44 = v19[3];
      v45 = v19[4];
      v41 = *v19;
    }

    else
    {
LABEL_15:
      v18 = *(*(v5 + 48) + v17);
      v23 = (*(v5 + 56) + 80 * v17);
      v36 = *v23;
      v24 = v23[4];
      v26 = v23[1];
      v25 = v23[2];
      v39 = v23[3];
      v40 = v24;
      v37 = v26;
      v38 = v25;
      sub_1AF0D8EDC(&v36, &v41);
      v43 = v38;
      v44 = v39;
      v45 = v40;
      v41 = v36;
      v42 = v37;
    }

    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v18);
    v27 = sub_1AFDFF2F8();
    v28 = -1 << *(v7 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = (63 - v28) >> 6;
      do
      {
        if (v30 + 1 == v31)
        {
          v30 = 0;
        }

        else
        {
          ++v30;
        }

        v32 = *(v13 + 8 * v30);
      }

      while (v32 == -1);
      v14 = __clz(__rbit64(~v32)) + (v30 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(*(v7 + 48) + v14) = v18;
    v15 = (*(v7 + 56) + 80 * v14);
    v15[1] = v42;
    v15[2] = v43;
    v15[3] = v44;
    v15[4] = v45;
    *v15 = v41;
    ++*(v7 + 16);
  }

  v20 = v8 << 6;
  while (1)
  {
    v21 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v22 = *(v5 + 8 * v8 + 72);
    v20 += 64;
    ++v8;
    if (v22)
    {
      v11 = (v22 - 1) & v22;
      v17 = __clz(__rbit64(v22)) + v20;
      v8 = v21;
      if (v4)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  if (v4)
  {
    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v35 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF8349E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF447A18(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v30 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
      if (v4)
      {
LABEL_10:
        v17 = *(*(v5 + 48) + 8 * v16);
        v18 = (*(v5 + 56) + 440 * v16);
      }

      else
      {
LABEL_15:
        v17 = *(*(v5 + 48) + 8 * v16);
        memcpy(__dst, (*(v5 + 56) + 440 * v16), 0x1B1uLL);
        sub_1AF0D9CA4(__dst, __src, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
        v18 = __dst;
      }

      memcpy(__src, v18, 0x1B1uLL);
      v22 = sub_1AFDFF278();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v14 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v17;
      memcpy((*(v7 + 56) + 440 * v14), __src, 0x1B1uLL);
      ++*(v7 + 16);
    }

    v19 = v8 << 6;
    while (1)
    {
      v20 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v21 = *(v5 + 8 * v8 + 72);
      v19 += 64;
      ++v8;
      if (v21)
      {
        v11 = (v21 - 1) & v21;
        v16 = __clz(__rbit64(v21)) + v19;
        v8 = v20;
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v30 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF834C98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B044(0);
  v34 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v33 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = *(v5 + 48) + 32 * v21;
    v36 = *v25;
    v35 = *(v25 + 8);
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    v28 = *(*(v5 + 56) + 8 * v21);
    if ((v34 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v29)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v30 = *(v13 + 8 * v17);
      }

      while (v30 == -1);
      v18 = __clz(__rbit64(~v30)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = *(v7 + 48) + 32 * v18;
    *v19 = v36;
    *(v19 + 8) = v35;
    *(v19 + 16) = v26;
    *(v19 + 24) = v27;
    *(*(v7 + 56) + 8 * v18) = v28;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v34)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF834F40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B014(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v30 = (v5 + 64);
  v31 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + 8 * v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((v4 & 1) == 0)
    {
    }

    v14 = sub_1AFDFF278();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v26)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v27 = *(v13 + 8 * v17);
      }

      while (v27 == -1);
      v18 = __clz(__rbit64(~v27)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v31;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v31;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF8351B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v7 = sub_1AFDFE5A8();
  v8 = v7;
  if (!*(v6 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v9 = 0;
  v31 = (v6 + 64);
  v32 = v4;
  v10 = 1 << *(v6 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v6 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v7 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v21 = v20 | (v9 << 6);
LABEL_15:
    v25 = *(*(v6 + 48) + 8 * v21);
    v26 = *(*(v6 + 56) + 8 * v21);
    if ((v5 & 1) == 0)
    {
    }

    v15 = sub_1AFDFF278();
    v16 = -1 << *(v8 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = (63 - v16) >> 6;
      do
      {
        if (v18 + 1 == v27)
        {
          v18 = 0;
        }

        else
        {
          ++v18;
        }

        v28 = *(v14 + 8 * v18);
      }

      while (v28 == -1);
      v19 = __clz(__rbit64(~v28)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v8 + 48) + 8 * v19) = v25;
    *(*(v8 + 56) + 8 * v19) = v26;
    ++*(v8 + 16);
  }

  v22 = v9 << 6;
  while (1)
  {
    v23 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v24 = *(v6 + 8 * v9 + 72);
    v22 += 64;
    ++v9;
    if (v24)
    {
      v12 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v9 = v23;
      goto LABEL_15;
    }
  }

  if (v5)
  {
    v29 = 1 << *(v6 + 32);
    v4 = v32;
    if (v29 >= 64)
    {
      bzero(v31, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v31 = -1 << v29;
    }

    *(v6 + 16) = 0;
    goto LABEL_29;
  }

  v4 = v32;
LABEL_30:
  *v4 = v8;
  return result;
}

uint64_t sub_1AF835420(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1AF68B08C(0);
  v41 = v4;
  v8 = sub_1AFDFE5A8();
  v9 = v8;
  if (!*(v7 + 16))
  {
LABEL_38:

    goto LABEL_39;
  }

  v10 = 0;
  v11 = *(v7 + 64);
  v38 = (v7 + 64);
  v39 = v2;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v16 = v8 + 64;
  while (v14)
  {
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v10 << 6);
LABEL_14:
    v24 = *(v7 + 48) + 8 * v20;
    v25 = *v24;
    v26 = *(v24 + 4);
    v27 = *(v40 + 72);
    v28 = *(v7 + 56) + v27 * v20;
    if (v41)
    {
      sub_1AF0D6D88(v28, v42, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    }

    else
    {
      sub_1AF85A058(v28, v42, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    }

    sub_1AFDFF288();
    if (v26)
    {
      if (v25)
      {
        if (v25 == 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = 3;
        }
      }

      else
      {
        v29 = 0;
      }

      MEMORY[0x1B271ACB0](v29);
    }

    else
    {
      MEMORY[0x1B271ACB0](2);
      sub_1AFDFF2C8();
    }

    v30 = sub_1AFDFF2F8();
    v31 = -1 << *(v9 + 32);
    v32 = v30 & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v16 + 8 * (v32 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v32) & ~*(v16 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = (63 - v31) >> 6;
      do
      {
        if (v33 + 1 == v34)
        {
          v33 = 0;
        }

        else
        {
          ++v33;
        }

        v35 = *(v16 + 8 * v33);
      }

      while (v35 == -1);
      v17 = __clz(__rbit64(~v35)) + (v33 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v18 = *(v9 + 48) + 8 * v17;
    *v18 = v25;
    *(v18 + 4) = v26;
    sub_1AF0D6D88(v42, *(v9 + 56) + v27 * v17, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    ++*(v9 + 16);
  }

  v21 = v10 << 6;
  while (1)
  {
    v22 = v10 + 1;
    if (v10 + 1 >= v15)
    {
      break;
    }

    v23 = *(v7 + 8 * v10 + 72);
    v21 += 64;
    ++v10;
    if (v23)
    {
      v14 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v10 = v22;
      goto LABEL_14;
    }
  }

  if (v41)
  {
    v36 = 1 << *(v7 + 32);
    v3 = v39;
    if (v36 >= 64)
    {
      bzero(v38, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v38 = -1 << v36;
    }

    *(v7 + 16) = 0;
    goto LABEL_38;
  }

  v3 = v39;
LABEL_39:
  *v3 = v9;
  return result;
}

uint64_t sub_1AF8357A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB633B70, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v38 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v37 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v22 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v23 = v22 | (v8 << 6);
LABEL_15:
    v27 = 16 * v23;
    v28 = (*(v5 + 48) + v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = (*(v5 + 56) + v27);
    v32 = v31[1];
    v39 = *v31;
    if ((v38 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v33)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v34 = *(v13 + 8 * v17);
      }

      while (v34 == -1);
      v18 = __clz(__rbit64(~v34)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = 16 * v18;
    v20 = (*(v7 + 48) + v19);
    *v20 = v29;
    v20[1] = v30;
    v21 = (*(v7 + 56) + v19);
    *v21 = v39;
    v21[1] = v32;
    ++*(v7 + 16);
  }

  v24 = v8 << 6;
  while (1)
  {
    v25 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v26 = *(v5 + 8 * v8 + 72);
    v24 += 64;
    ++v8;
    if (v26)
    {
      v11 = (v26 - 1) & v26;
      v23 = __clz(__rbit64(v26)) + v24;
      v8 = v25;
      goto LABEL_15;
    }
  }

  if (v38)
  {
    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v37, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF835A74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF859E94(0, &unk_1EB63F530, sub_1AF444CB4, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v38 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v36 = (v5 + 64);
  v37 = v2;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v21 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v22 = v21 | (v8 << 6);
LABEL_15:
    v26 = (*(v5 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = (*(v5 + 56) + 24 * v22);
    v30 = v29[1];
    v39 = *v29;
    v31 = v29[2];
    if ((v38 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v32)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v33 = *(v13 + 8 * v17);
      }

      while (v33 == -1);
      v18 = __clz(__rbit64(~v33)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v27;
    v19[1] = v28;
    v20 = (*(v7 + 56) + 24 * v18);
    *v20 = v39;
    v20[1] = v30;
    v20[2] = v31;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      goto LABEL_15;
    }
  }

  if (v38)
  {
    v34 = 1 << *(v5 + 32);
    v3 = v37;
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v37;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF835D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB633B60, MEMORY[0x1E69E6158], &_s12MetadataTypeON, MEMORY[0x1E69E6168]);
  v38 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v36 = (v5 + 64);
  v37 = v2;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v21 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v22 = v21 | (v8 << 6);
LABEL_15:
    v26 = (*(v5 + 48) + 16 * v22);
    v28 = *v26;
    v27 = v26[1];
    v29 = (*(v5 + 56) + 40 * v22);
    v30 = *v29;
    v31 = v29[1];
    v40 = v29[3];
    v41 = v29[2];
    v39 = v29[4];
    if ((v38 & 1) == 0)
    {

      sub_1AF687F90(v30, v31, v41, v40, v39);
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v32)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v33 = *(v13 + 8 * v17);
      }

      while (v33 == -1);
      v18 = __clz(__rbit64(~v33)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v28;
    v19[1] = v27;
    v20 = (*(v7 + 56) + 40 * v18);
    *v20 = v30;
    v20[1] = v31;
    v20[2] = v41;
    v20[3] = v40;
    v20[4] = v39;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      goto LABEL_15;
    }
  }

  if (v38)
  {
    v34 = 1 << *(v5 + 32);
    v3 = v37;
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v37;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83603C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB633B50, MEMORY[0x1E69E6158], &type metadata for EntityComponentProperty, MEMORY[0x1E69E6168]);
  v39 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v38 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v22 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v23 = v22 | (v8 << 6);
LABEL_15:
    v27 = 16 * v23;
    v28 = (*(v5 + 48) + v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = (*(v5 + 56) + v27);
    v32 = *v31;
    v33 = v31[1];
    if ((v39 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v34)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v35 = *(v13 + 8 * v17);
      }

      while (v35 == -1);
      v18 = __clz(__rbit64(~v35)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = 16 * v18;
    v20 = (*(v7 + 48) + v19);
    *v20 = v29;
    v20[1] = v30;
    v21 = (*(v7 + 56) + v19);
    *v21 = v32;
    v21[1] = v33;
    ++*(v7 + 16);
  }

  v24 = v8 << 6;
  while (1)
  {
    v25 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v26 = *(v5 + 8 * v8 + 72);
    v24 += 64;
    ++v8;
    if (v26)
    {
      v11 = (v26 - 1) & v26;
      v23 = __clz(__rbit64(v26)) + v24;
      v8 = v25;
      goto LABEL_15;
    }
  }

  if (v39)
  {
    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v38, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v38 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83631C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v7 = sub_1AFDFE5A8();
  v8 = v7;
  if (!*(v6 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v9 = 0;
  v31 = (v6 + 64);
  v32 = v4;
  v10 = 1 << *(v6 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v6 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v7 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v21 = v20 | (v9 << 6);
LABEL_15:
    v25 = *(*(v6 + 48) + 8 * v21);
    v26 = *(*(v6 + 56) + 8 * v21);
    if ((v5 & 1) == 0)
    {
    }

    v15 = sub_1AFDFF278();
    v16 = -1 << *(v8 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = (63 - v16) >> 6;
      do
      {
        if (v18 + 1 == v27)
        {
          v18 = 0;
        }

        else
        {
          ++v18;
        }

        v28 = *(v14 + 8 * v18);
      }

      while (v28 == -1);
      v19 = __clz(__rbit64(~v28)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v8 + 48) + 8 * v19) = v25;
    *(*(v8 + 56) + 8 * v19) = v26;
    ++*(v8 + 16);
  }

  v22 = v9 << 6;
  while (1)
  {
    v23 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v24 = *(v6 + 8 * v9 + 72);
    v22 += 64;
    ++v9;
    if (v24)
    {
      v12 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v9 = v23;
      goto LABEL_15;
    }
  }

  if (v5)
  {
    v29 = 1 << *(v6 + 32);
    v4 = v32;
    if (v29 >= 64)
    {
      bzero(v31, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v31 = -1 << v29;
    }

    *(v6 + 16) = 0;
    goto LABEL_29;
  }

  v4 = v32;
LABEL_30:
  *v4 = v8;
  return result;
}

uint64_t sub_1AF83656C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85AF40(0);
  v34 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_31:

    goto LABEL_32;
  }

  v8 = 0;
  v33 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v8 << 6);
LABEL_14:
    v21 = *(v5 + 48) + 32 * v17;
    v22 = *v21;
    v23 = *(v21 + 8);
    v35 = *(v21 + 16);
    v24 = *(v21 + 24);
    v36 = *(*(v5 + 56) + 16 * v17);
    if ((v34 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    sub_1AFDFF2A8();
    if (!v24)
    {
      MEMORY[0x1B271ACB0](v35);
    }

    v25 = sub_1AFDFF2F8();
    v26 = -1 << *(v7 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v26) >> 6;
      do
      {
        if (v28 + 1 == v29)
        {
          v28 = 0;
        }

        else
        {
          ++v28;
        }

        v30 = *(v13 + 8 * v28);
      }

      while (v30 == -1);
      v14 = __clz(__rbit64(~v30)) + (v28 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v7 + 48) + 32 * v14;
    *v15 = v22;
    *(v15 + 8) = v23;
    *(v15 + 16) = v35;
    *(v15 + 24) = v24;
    *(*(v7 + 56) + 16 * v14) = v36;
    ++*(v7 + 16);
  }

  v18 = v8 << 6;
  while (1)
  {
    v19 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v20 = *(v5 + 8 * v8 + 72);
    v18 += 64;
    ++v8;
    if (v20)
    {
      v11 = (v20 - 1) & v20;
      v17 = __clz(__rbit64(v20)) + v18;
      v8 = v19;
      goto LABEL_14;
    }
  }

  if (v34)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  v3 = v2;
LABEL_32:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83683C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB6328C8, MEMORY[0x1E69E72F0], &type metadata for EntityManager.ActiveState, MEMORY[0x1E69E7300]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v30 = (v5 + 64);
  v31 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + 4 * v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((v4 & 1) == 0)
    {
    }

    v14 = MEMORY[0x1B271AC80](*(v7 + 40), v24, 4);
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v26)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v27 = *(v13 + 8 * v17);
      }

      while (v27 == -1);
      v18 = __clz(__rbit64(~v27)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 4 * v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v31;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v31;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF836AAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85A72C(0);
  v6 = sub_1AFDFE5A8();
  v8 = v6;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v9 << 6);
LABEL_14:
      *&v7 = *(*(v5 + 48) + 8 * v17);
      v31 = v7;
      v21 = *(*(v5 + 56) + v17);
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v22 = sub_1AFDFF2F8();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) != 0)
      {
        v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v14 + 8 * v25);
        }

        while (v27 == -1);
        v15 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(&v7 + 1) = *(&v31 + 1);
      *(*(v8 + 48) + 8 * v15) = v31;
      *(*(v8 + 56) + v15) = v21;
      ++*(v8 + 16);
    }

    v18 = v9 << 6;
    while (1)
    {
      v19 = v9 + 1;
      if (v9 + 1 >= v13)
      {
        break;
      }

      v20 = *(v5 + 8 * v9 + 72);
      v18 += 64;
      ++v9;
      if (v20)
      {
        v12 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v9 = v19;
        goto LABEL_14;
      }
    }

    if (v30)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1AF836D18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED726AF0, MEMORY[0x1E69E6B70], &type metadata for Scheduler.Tag, MEMORY[0x1E69E6B78]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    goto LABEL_28;
  }

  v31 = v4;
  v8 = 0;
  v30 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v8 << 6);
LABEL_14:
    v20 = *(*(v5 + 48) + 8 * v16);
    v21 = *(*(v5 + 56) + v16);
    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v20);
    v22 = sub_1AFDFF2F8();
    v23 = -1 << *(v7 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v23) >> 6;
      do
      {
        if (v25 + 1 == v26)
        {
          v25 = 0;
        }

        else
        {
          ++v25;
        }

        v27 = *(v13 + 8 * v25);
      }

      while (v27 == -1);
      v14 = __clz(__rbit64(~v27)) + (v25 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(*(v7 + 48) + 8 * v14) = v20;
    *(*(v7 + 56) + v14) = v21;
    ++*(v7 + 16);
  }

  v17 = v8 << 6;
  while (1)
  {
    v18 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v19 = *(v5 + 8 * v8 + 72);
    v17 += 64;
    ++v8;
    if (v19)
    {
      v11 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) + v17;
      v8 = v18;
      goto LABEL_14;
    }
  }

  if (v31)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  v3 = v2;
LABEL_28:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF836F94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF859E94(0, &unk_1ED722FE0, sub_1AF43FD98, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v20 = v19 | (v8 << 6);
LABEL_15:
      v24 = *(*(v5 + 48) + 8 * v20);
      v30 = *(*(v5 + 56) + 16 * v20);
      if ((v4 & 1) == 0)
      {
      }

      v14 = sub_1AFDFF278();
      v15 = -1 << *(v7 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = (63 - v15) >> 6;
        do
        {
          if (v17 + 1 == v25)
          {
            v17 = 0;
          }

          else
          {
            ++v17;
          }

          v26 = *(v13 + 8 * v17);
        }

        while (v26 == -1);
        v18 = __clz(__rbit64(~v26)) + (v17 << 6);
      }

      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + 8 * v18) = v24;
      *(*(v7 + 56) + 16 * v18) = v30;
      ++*(v7 + 16);
    }

    v21 = v8 << 6;
    while (1)
    {
      v22 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v23 = *(v5 + 8 * v8 + 72);
      v21 += 64;
      ++v8;
      if (v23)
      {
        v11 = (v23 - 1) & v23;
        v20 = __clz(__rbit64(v23)) + v21;
        v8 = v22;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF837228(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED726AC0, MEMORY[0x1E69E72F0], &type metadata for Entity, MEMORY[0x1E69E7300]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
LABEL_14:
      v20 = *(*(v5 + 48) + 4 * v16);
      v21 = *(*(v5 + 56) + 8 * v16);
      v22 = MEMORY[0x1B271AC80](*(v7 + 40), v20, 4);
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v14 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 4 * v14) = v20;
      *(*(v7 + 56) + 8 * v14) = v21;
      ++*(v7 + 16);
    }

    v17 = v8 << 6;
    while (1)
    {
      v18 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v19 = *(v5 + 8 * v8 + 72);
      v17 += 64;
      ++v8;
      if (v19)
      {
        v11 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v8 = v18;
        goto LABEL_14;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF837488(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED723010, MEMORY[0x1E69E6530], &type metadata for TextureCache.AsyncGroupRequestState, MEMORY[0x1E69E6540]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v30 = (v5 + 64);
  v31 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + 8 * v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((v4 & 1) == 0)
    {
    }

    v14 = sub_1AFDFF278();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v26)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v27 = *(v13 + 8 * v17);
      }

      while (v27 == -1);
      v18 = __clz(__rbit64(~v27)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v31;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v31;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF8376F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v47 = type metadata accessor for TextureCache.TextureKey(0);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1AF859FA4(0, &qword_1ED723090, type metadata accessor for TextureCache.TextureKey, sub_1AF85A24C, &type metadata for TextureCache.CacheEntry);
  v50 = v4;
  v8 = sub_1AFDFE5A8();
  v9 = v8;
  if (!*(v7 + 16))
  {
LABEL_39:

    goto LABEL_40;
  }

  v43 = v2;
  v10 = 0;
  v11 = *(v7 + 64);
  v42 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v16 = v8 + 64;
  v44 = v8;
  while (v14)
  {
    v52 = (v14 - 1) & v14;
    v18 = __clz(__rbit64(v14)) | (v10 << 6);
LABEL_14:
    v22 = *(v7 + 48) + *(v46 + 72) * v18;
    v23 = 104 * v18;
    v51 = *(v46 + 72);
    if (v50)
    {
      sub_1AF0D6D88(v22, v6, type metadata accessor for TextureCache.TextureKey);
      sub_1AF446690(*(v7 + 56) + v23, v53);
    }

    else
    {
      sub_1AF85A058(v22, v6, type metadata accessor for TextureCache.TextureKey);
      sub_1AF74EA6C(*(v7 + 56) + v23, v53);
    }

    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](*v6);
    v24 = v47;
    sub_1AFDFC128();
    sub_1AF859F00();
    sub_1AFDFCD08();
    v25 = v6;
    v26 = &v6[*(v24 + 24)];
    v27 = *v26;
    v28 = *(v26 + 1);
    v29 = *(v26 + 2);
    v30 = v26[24];
    v31 = *(v26 + 5);
    v48 = *(v26 + 4);
    v49 = v31;
    v45 = *(v26 + 6);
    v32 = *(v26 + 28);
    MEMORY[0x1B271ACB0](v27);
    if (v30 < 0xFE)
    {
      sub_1AFDFF2A8();
      if ((v30 & 0x80) != 0)
      {
        MEMORY[0x1B271ACB0](1);
        MEMORY[0x1B271ACB0](v28);
        MEMORY[0x1B271ACB0](v29);
      }

      else
      {
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](v28);
        MEMORY[0x1B271ACB0](v29);
        sub_1AFDFF2A8();
      }
    }

    else
    {
      sub_1AFDFF2A8();
    }

    v6 = v25;
    v33 = v51;
    if ((v32 & 0xFF00) == 0x300)
    {
      v9 = v44;
    }

    else
    {
      sub_1AFDFF2A8();
      MEMORY[0x1B271ACB0](v48);
      MEMORY[0x1B271ACB0](v49);
      v9 = v44;
      sub_1AFDFF2A8();
      if ((v32 & 1) == 0)
      {
        MEMORY[0x1B271ACB0](v45);
      }
    }

    sub_1AFDFF2A8();
    v34 = sub_1AFDFF2F8();
    v35 = -1 << *(v9 + 32);
    v36 = v34 & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v16 + 8 * (v36 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v36) & ~*(v16 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v38 = (63 - v35) >> 6;
      do
      {
        if (v37 + 1 == v38)
        {
          v37 = 0;
        }

        else
        {
          ++v37;
        }

        v39 = *(v16 + 8 * v37);
      }

      while (v39 == -1);
      v17 = __clz(__rbit64(~v39)) + (v37 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    sub_1AF0D6D88(v6, *(v9 + 48) + v33 * v17, type metadata accessor for TextureCache.TextureKey);
    sub_1AF446690(v53, *(v9 + 56) + 104 * v17);
    ++*(v9 + 16);
    v14 = v52;
  }

  v19 = v10 << 6;
  while (1)
  {
    v20 = v10 + 1;
    if (v10 + 1 >= v15)
    {
      break;
    }

    v21 = *(v7 + 8 * v10 + 72);
    v19 += 64;
    ++v10;
    if (v21)
    {
      v52 = (v21 - 1) & v21;
      v18 = __clz(__rbit64(v21)) + v19;
      v10 = v20;
      goto LABEL_14;
    }
  }

  if (v50)
  {
    v40 = 1 << *(v7 + 32);
    v3 = v43;
    if (v40 >= 64)
    {
      bzero(v42, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v42 = -1 << v40;
    }

    *(v7 + 16) = 0;
    goto LABEL_39;
  }

  v3 = v43;
LABEL_40:
  *v3 = v9;
  return result;
}

uint64_t sub_1AF837C44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB638DC8, MEMORY[0x1E69E6158], &type metadata for TickedEvent, MEMORY[0x1E69E6168]);
  v39 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v38 = v2;
  v8 = 0;
  v37 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v21 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v22 = v21 | (v8 << 6);
LABEL_15:
    v26 = (*(v5 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v5 + 56) + 48 * v22;
    v30 = *v29;
    v42 = *(v29 + 8);
    v31 = *(v29 + 16);
    v43 = *(v29 + 24);
    v40 = *(v29 + 44);
    v41 = *(v29 + 40);
    if ((v39 & 1) == 0)
    {

      v32 = v30;
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v33)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v34 = *(v13 + 8 * v17);
      }

      while (v34 == -1);
      v18 = __clz(__rbit64(~v34)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v27;
    v19[1] = v28;
    v20 = *(v7 + 56) + 48 * v18;
    *v20 = v30;
    *(v20 + 8) = v42;
    *(v20 + 16) = v31;
    *(v20 + 24) = v43;
    *(v20 + 40) = v41;
    *(v20 + 44) = v40;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      goto LABEL_15;
    }
  }

  if (v39)
  {
    v35 = 1 << *(v5 + 32);
    v3 = v38;
    if (v35 >= 64)
    {
      bzero(v37, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v38;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF837F40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v34 = v5;
  v7 = sub_1AFDFE5A8();
  v8 = v7;
  if (!*(v6 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v9 = 0;
  v32 = (v6 + 64);
  v33 = v3;
  v10 = 1 << *(v6 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v6 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v7 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v21 = v20 | (v9 << 6);
LABEL_15:
    v25 = *(*(v6 + 48) + 8 * v21);
    v26 = *(*(v6 + 56) + 8 * v21);
    if ((v34 & 1) == 0)
    {
      v27 = v25;
    }

    v35 = v26;
    sub_1AFDFCEF8();
    sub_1AFDFF288();
    sub_1AFDFD038();
    v15 = sub_1AFDFF2F8();

    v16 = -1 << *(v8 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = (63 - v16) >> 6;
      do
      {
        if (v18 + 1 == v28)
        {
          v18 = 0;
        }

        else
        {
          ++v18;
        }

        v29 = *(v14 + 8 * v18);
      }

      while (v29 == -1);
      v19 = __clz(__rbit64(~v29)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v8 + 48) + 8 * v19) = v25;
    *(*(v8 + 56) + 8 * v19) = v35;
    ++*(v8 + 16);
  }

  v22 = v9 << 6;
  while (1)
  {
    v23 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v24 = *(v6 + 8 * v9 + 72);
    v22 += 64;
    ++v9;
    if (v24)
    {
      v12 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v9 = v23;
      goto LABEL_15;
    }
  }

  if (v34)
  {
    v30 = 1 << *(v6 + 32);
    v4 = v33;
    if (v30 >= 64)
    {
      bzero(v32, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v32 = -1 << v30;
    }

    *(v6 + 16) = 0;
    goto LABEL_29;
  }

  v4 = v33;
LABEL_30:
  *v4 = v8;
  return result;
}

uint64_t sub_1AF8381E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TriggerScriptRunnerSystem.TriggerParam(0);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1AF85A600(0);
  v47 = v4;
  v9 = sub_1AFDFE5A8();
  v10 = v9;
  if (!*(v8 + 16))
  {
LABEL_35:

    goto LABEL_36;
  }

  v11 = 0;
  v12 = *(v8 + 64);
  v43 = (v8 + 64);
  v44 = v2;
  v13 = 1 << *(v8 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v17 = v9 + 64;
  v45 = v7;
  while (v15)
  {
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v11 << 6);
LABEL_14:
    v25 = *(v46 + 72);
    v26 = *(v8 + 56) + v25 * v21;
    v48 = *(*(v8 + 48) + 16 * v21);
    v27 = *(&v48 + 1);
    if (v47)
    {
      sub_1AF0D6D88(v26, v7, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
    }

    else
    {
      sub_1AF85A058(v26, v7, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
      v28 = v48;
      v29 = v27;
      v30 = v28;
    }

    sub_1AFDFF288();
    v31 = v48;
    if (v48)
    {
      sub_1AFDFF2A8();
      v32 = v31;
      sub_1AFDFDC58();
    }

    else
    {
      sub_1AFDFF2A8();
    }

    v7 = v45;
    sub_1AFDFF2A8();
    if (v27)
    {
      v33 = v27;
      sub_1AFDFDC58();
    }

    v34 = sub_1AFDFF2F8();
    v35 = -1 << *(v10 + 32);
    v36 = v34 & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v17 + 8 * (v36 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v36) & ~*(v17 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v19 = v48;
    }

    else
    {
      v38 = (63 - v35) >> 6;
      v19 = v48;
      do
      {
        if (v37 + 1 == v38)
        {
          v37 = 0;
        }

        else
        {
          ++v37;
        }

        v39 = *(v17 + 8 * v37);
      }

      while (v39 == -1);
      v18 = __clz(__rbit64(~v39)) + (v37 << 6);
    }

    *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v10 + 48) + 16 * v18) = v19;
    sub_1AF0D6D88(v7, *(v10 + 56) + v25 * v18, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
    ++*(v10 + 16);
  }

  v22 = v11 << 6;
  while (1)
  {
    v23 = v11 + 1;
    if (v11 + 1 >= v16)
    {
      break;
    }

    v24 = *(v8 + 8 * v11 + 72);
    v22 += 64;
    ++v11;
    if (v24)
    {
      v15 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v11 = v23;
      goto LABEL_14;
    }
  }

  if (v47)
  {
    v40 = 1 << *(v8 + 32);
    v3 = v44;
    if (v40 >= 64)
    {
      bzero(v43, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v43 = -1 << v40;
    }

    *(v8 + 16) = 0;
    goto LABEL_35;
  }

  v3 = v44;
LABEL_36:
  *v3 = v10;
  return result;
}

uint64_t sub_1AF8385A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF443DB4(0, &unk_1EB63F3F0, sub_1AF43B694, &type metadata for Entity);
  v6 = sub_1AFDFE5A8();
  v8 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v9 = 0;
  v31 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v21 = v20 | (v9 << 6);
LABEL_15:
    *&v7 = *(*(v5 + 48) + 8 * v21);
    v32 = v7;
    v25 = *(*(v5 + 56) + 8 * v21);
    if ((v4 & 1) == 0)
    {
      v26 = v25;
    }

    sub_1AFDFF288();
    sub_1AFDFF2C8();
    sub_1AFDFF2C8();
    v15 = sub_1AFDFF2F8();
    v16 = -1 << *(v8 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = (63 - v16) >> 6;
      do
      {
        if (v18 + 1 == v27)
        {
          v18 = 0;
        }

        else
        {
          ++v18;
        }

        v28 = *(v14 + 8 * v18);
      }

      while (v28 == -1);
      v19 = __clz(__rbit64(~v28)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(&v7 + 1) = *(&v32 + 1);
    *(*(v8 + 48) + 8 * v19) = v32;
    *(*(v8 + 56) + 8 * v19) = v25;
    ++*(v8 + 16);
  }

  v22 = v9 << 6;
  while (1)
  {
    v23 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v24 = *(v5 + 8 * v9 + 72);
    v22 += 64;
    ++v9;
    if (v24)
    {
      v12 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v9 = v23;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero(v31, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v31 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v8;
  return result;
}

uint64_t sub_1AF83883C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v7 = sub_1AFDFE5A8();
  v9 = v7;
  if (!*(v6 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v10 = 0;
  v31 = (v6 + 64);
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v6 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = v7 + 64;
  while (v13)
  {
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v22 = v21 | (v10 << 6);
LABEL_15:
    *&v8 = *(*(v6 + 48) + 8 * v22);
    v32 = v8;
    v26 = *(*(v6 + 56) + 8 * v22);
    if ((v5 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFF2C8();
    sub_1AFDFF2C8();
    v16 = sub_1AFDFF2F8();
    v17 = -1 << *(v9 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v15 + 8 * (v18 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v18) & ~*(v15 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = (63 - v17) >> 6;
      do
      {
        if (v19 + 1 == v27)
        {
          v19 = 0;
        }

        else
        {
          ++v19;
        }

        v28 = *(v15 + 8 * v19);
      }

      while (v28 == -1);
      v20 = __clz(__rbit64(~v28)) + (v19 << 6);
    }

    *(v15 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(&v8 + 1) = *(&v32 + 1);
    *(*(v9 + 48) + 8 * v20) = v32;
    *(*(v9 + 56) + 8 * v20) = v26;
    ++*(v9 + 16);
  }

  v23 = v10 << 6;
  while (1)
  {
    v24 = v10 + 1;
    if (v10 + 1 >= v14)
    {
      break;
    }

    v25 = *(v6 + 8 * v10 + 72);
    v23 += 64;
    ++v10;
    if (v25)
    {
      v13 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v10 = v24;
      goto LABEL_15;
    }
  }

  if (v5)
  {
    v29 = 1 << *(v6 + 32);
    v4 = v3;
    if (v29 >= 64)
    {
      bzero(v31, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v31 = -1 << v29;
    }

    *(v6 + 16) = 0;
    goto LABEL_29;
  }

  v4 = v3;
LABEL_30:
  *v4 = v9;
  return result;
}

uint64_t sub_1AF838ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF446BB0(0);
  v36 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v35 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v21 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v22 = v21 | (v8 << 6);
LABEL_15:
    v26 = 16 * v22;
    v27 = *(v5 + 48) + v26;
    v28 = *v27;
    v29 = *(v27 + 4);
    v30 = *(v27 + 8);
    v37 = *(*(v5 + 56) + v26);
    if ((v36 & 1) == 0)
    {
      sub_1AF446C68(v37, *(&v37 + 1));
    }

    sub_1AFDFF288();
    sub_1AFDFF2C8();
    sub_1AFDFF2C8();
    MEMORY[0x1B271ACB0](v30);
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v31)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v32 = *(v13 + 8 * v17);
      }

      while (v32 == -1);
      v18 = __clz(__rbit64(~v32)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = 16 * v18;
    v20 = *(v7 + 48) + v19;
    *v20 = v28;
    *(v20 + 4) = v29;
    *(v20 + 8) = v30;
    *(*(v7 + 56) + v19) = v37;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      goto LABEL_15;
    }
  }

  if (v36)
  {
    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v35 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF838D70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF446DE8(0);
  v44 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v8 = 0;
  v43 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v21 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v22 = v21 | (v8 << 6);
LABEL_14:
    v26 = *(v5 + 48) + 16 * v22;
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 12);
    v30 = (*(v5 + 56) + 96 * v22);
    if (v44)
    {
      v31 = v30[1];
      v45 = *v30;
      v46 = v31;
      v32 = v30[2];
      v33 = v30[3];
      v34 = v30[4];
      *(v49 + 9) = *(v30 + 73);
      v49[0] = v34;
      v47 = v32;
      v48 = v33;
    }

    else
    {
      sub_1AF85B3D4(v30, &v45);
    }

    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v27);
    sub_1AFDFF2C8();
    sub_1AFDFF2C8();
    v35 = sub_1AFDFF2F8();
    v36 = -1 << *(v7 + 32);
    v37 = v35 & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v13 + 8 * (v37 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v37) & ~*(v13 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v39 = (63 - v36) >> 6;
      do
      {
        if (v38 + 1 == v39)
        {
          v38 = 0;
        }

        else
        {
          ++v38;
        }

        v40 = *(v13 + 8 * v38);
      }

      while (v40 == -1);
      v14 = __clz(__rbit64(~v40)) + (v38 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v7 + 48) + 16 * v14;
    *v15 = v27;
    *(v15 + 8) = v28;
    *(v15 + 12) = v29;
    v16 = (*(v7 + 56) + 96 * v14);
    v17 = v46;
    *v16 = v45;
    v16[1] = v17;
    v18 = v47;
    v19 = v48;
    v20 = v49[0];
    *(v16 + 73) = *(v49 + 9);
    v16[3] = v19;
    v16[4] = v20;
    v16[2] = v18;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      goto LABEL_14;
    }
  }

  if (v44)
  {
    v41 = 1 << *(v5 + 32);
    v3 = v2;
    if (v41 >= 64)
    {
      bzero(v43, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v43 = -1 << v41;
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v2;
LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83905C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF446D30(0);
  v40 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v8 = 0;
  v39 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_14:
    v24 = *(v5 + 48) + 16 * v20;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 12);
    v28 = (*(v5 + 56) + 48 * v20);
    if (v40)
    {
      v29 = *v28;
      v30 = v28[1];
      *(v42 + 9) = *(v28 + 25);
      v41 = v29;
      v42[0] = v30;
    }

    else
    {
      sub_1AF85ABE8(v28, &v41);
    }

    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v25);
    sub_1AFDFF2C8();
    sub_1AFDFF2C8();
    v31 = sub_1AFDFF2F8();
    v32 = -1 << *(v7 + 32);
    v33 = v31 & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v13 + 8 * (v33 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v33) & ~*(v13 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v35 = (63 - v32) >> 6;
      do
      {
        if (v34 + 1 == v35)
        {
          v34 = 0;
        }

        else
        {
          ++v34;
        }

        v36 = *(v13 + 8 * v34);
      }

      while (v36 == -1);
      v14 = __clz(__rbit64(~v36)) + (v34 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v7 + 48) + 16 * v14;
    *v15 = v25;
    *(v15 + 8) = v26;
    *(v15 + 12) = v27;
    v16 = (*(v7 + 56) + 48 * v14);
    v17 = v41;
    v18 = v42[0];
    *(v16 + 25) = *(v42 + 9);
    *v16 = v17;
    v16[1] = v18;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_14;
    }
  }

  if (v40)
  {
    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v39, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v39 = -1 << v37;
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v2;
LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF839324(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF446240(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v30 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + 8 * v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((v4 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v24);
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v26)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v27 = *(v13 + 8 * v17);
      }

      while (v27 == -1);
      v18 = __clz(__rbit64(~v27)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF839588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF43B630(0);
  v6 = sub_1AFDFE5A8();
  v8 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v9 = 0;
  v33 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v21 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v22 = v21 | (v9 << 6);
LABEL_15:
    *&v7 = *(*(v5 + 48) + 8 * v22);
    v34 = v7;
    v26 = (*(v5 + 56) + 16 * v22);
    v28 = *v26;
    v27 = v26[1];
    if ((v4 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFF2C8();
    sub_1AFDFF2C8();
    v15 = sub_1AFDFF2F8();
    v16 = -1 << *(v8 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v16) >> 6;
      do
      {
        if (v18 + 1 == v29)
        {
          v18 = 0;
        }

        else
        {
          ++v18;
        }

        v30 = *(v14 + 8 * v18);
      }

      while (v30 == -1);
      v19 = __clz(__rbit64(~v30)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(&v7 + 1) = *(&v34 + 1);
    *(*(v8 + 48) + 8 * v19) = v34;
    v20 = (*(v8 + 56) + 16 * v19);
    *v20 = v28;
    v20[1] = v27;
    ++*(v8 + 16);
  }

  v23 = v9 << 6;
  while (1)
  {
    v24 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v25 = *(v5 + 8 * v9 + 72);
    v23 += 64;
    ++v9;
    if (v25)
    {
      v12 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v9 = v24;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v8;
  return result;
}

uint64_t sub_1AF839810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB638190, MEMORY[0x1E69E6158], &type metadata for Entity, MEMORY[0x1E69E6168]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v33 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = (*(v5 + 48) + 16 * v21);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v5 + 56) + 8 * v21);
    if ((v4 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v29)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v30 = *(v13 + 8 * v17);
      }

      while (v30 == -1);
      v18 = __clz(__rbit64(~v30)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v26;
    v19[1] = v27;
    *(*(v7 + 56) + 8 * v18) = v28;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF839AA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF445DFC(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v31 = (v5 + 64);
  v32 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + 8 * v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((v4 & 1) == 0)
    {
      v26 = v25;
    }

    v14 = sub_1AFDFF278();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v27)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v28 = *(v13 + 8 * v17);
      }

      while (v28 == -1);
      v18 = __clz(__rbit64(~v28)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v29 = 1 << *(v5 + 32);
    v3 = v32;
    if (v29 >= 64)
    {
      bzero(v31, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v31 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v32;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF839CF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_1AFDFC128();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1AF44490C(0);
  v42 = v4;
  v8 = sub_1AFDFE5A8();
  v9 = v8;
  if (!*(v7 + 16))
  {
LABEL_32:

    goto LABEL_33;
  }

  v10 = 0;
  v11 = *(v7 + 64);
  v38 = (v7 + 64);
  v39 = v2;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v40 = (v5 + 16);
  v41 = v5;
  v43 = (v5 + 32);
  v16 = v8 + 64;
  while (v14)
  {
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v10 << 6);
LABEL_14:
    v24 = *(v7 + 48) + 8 * v20;
    v25 = *v24;
    v26 = *(v24 + 4);
    v27 = *(v5 + 72);
    v28 = *(v7 + 56) + v27 * v20;
    if (v42)
    {
      (*v43)(v44, v28, v45);
    }

    else
    {
      (*v40)(v44, v28, v45);
    }

    sub_1AFDFF288();
    sub_1AFDFF2A8();
    if (!v26)
    {
      sub_1AFDFF2C8();
    }

    v29 = sub_1AFDFF2F8();
    v30 = -1 << *(v9 + 32);
    v31 = v29 & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = (63 - v30) >> 6;
      do
      {
        if (v32 + 1 == v33)
        {
          v32 = 0;
        }

        else
        {
          ++v32;
        }

        v34 = *(v16 + 8 * v32);
      }

      while (v34 == -1);
      v17 = __clz(__rbit64(~v34)) + (v32 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v18 = *(v9 + 48) + 8 * v17;
    *v18 = v25;
    *(v18 + 4) = v26;
    (*v43)((*(v9 + 56) + v27 * v17), v44, v45);
    ++*(v9 + 16);
    v5 = v41;
  }

  v21 = v10 << 6;
  while (1)
  {
    v22 = v10 + 1;
    if (v10 + 1 >= v15)
    {
      break;
    }

    v23 = *(v7 + 8 * v10 + 72);
    v21 += 64;
    ++v10;
    if (v23)
    {
      v14 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v10 = v22;
      goto LABEL_14;
    }
  }

  if (v42)
  {
    v35 = 1 << *(v7 + 32);
    v3 = v39;
    if (v35 >= 64)
    {
      bzero(v38, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v38 = -1 << v35;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  v3 = v39;
LABEL_33:
  *v3 = v9;
  return result;
}

uint64_t sub_1AF83A05C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B8E4(0);
  v35 = v4;
  v6 = sub_1AFDFE5A8();
  v8 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v9 = 0;
  v34 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v21 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v22 = v21 | (v9 << 6);
LABEL_15:
    *&v7 = *(*(v5 + 48) + 8 * v22);
    v36 = v7;
    v26 = (*(v5 + 56) + 24 * v22);
    v28 = *v26;
    v27 = v26[1];
    v29 = v26[2];
    if ((v35 & 1) == 0)
    {
      swift_unknownObjectRetain();
    }

    sub_1AFDFF288();
    sub_1AFDFF2C8();
    sub_1AFDFF2C8();
    v15 = sub_1AFDFF2F8();
    v16 = -1 << *(v8 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - v16) >> 6;
      do
      {
        if (v18 + 1 == v30)
        {
          v18 = 0;
        }

        else
        {
          ++v18;
        }

        v31 = *(v14 + 8 * v18);
      }

      while (v31 == -1);
      v19 = __clz(__rbit64(~v31)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(&v7 + 1) = *(&v36 + 1);
    *(*(v8 + 48) + 8 * v19) = v36;
    v20 = (*(v8 + 56) + 24 * v19);
    *v20 = v28;
    v20[1] = v27;
    v20[2] = v29;
    ++*(v8 + 16);
  }

  v23 = v9 << 6;
  while (1)
  {
    v24 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v25 = *(v5 + 8 * v9 + 72);
    v23 += 64;
    ++v9;
    if (v25)
    {
      v12 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v9 = v24;
      goto LABEL_15;
    }
  }

  if (v35)
  {
    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v8;
  return result;
}

uint64_t sub_1AF83A300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF447CC8(0);
  v38 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_31:

    goto LABEL_32;
  }

  v8 = 0;
  v37 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = v18 | (v8 << 6);
LABEL_14:
    v23 = 40 * v19;
    v24 = *(v5 + 48) + v23;
    v25 = *v24;
    v44 = *(v24 + 8);
    v26 = *(v24 + 16);
    v42 = *(v24 + 24);
    v43 = *(v24 + 32);
    v27 = *(v5 + 56) + v23;
    v28 = *v27;
    v41 = *(v27 + 8);
    v40 = *(v27 + 24);
    v39 = *(v27 + 32);
    if ((v38 & 1) == 0)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v25);
    MEMORY[0x1B271ACB0](v44);
    MEMORY[0x1B271ACB0](v26);
    sub_1AFDFF2A8();
    if (!v43)
    {
      MEMORY[0x1B271ACB0](v42);
    }

    v29 = sub_1AFDFF2F8();
    v30 = -1 << *(v7 + 32);
    v31 = v29 & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v13 + 8 * (v31 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v31) & ~*(v13 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = (63 - v30) >> 6;
      do
      {
        if (v32 + 1 == v33)
        {
          v32 = 0;
        }

        else
        {
          ++v32;
        }

        v34 = *(v13 + 8 * v32);
      }

      while (v34 == -1);
      v14 = __clz(__rbit64(~v34)) + (v32 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = 40 * v14;
    v16 = *(v7 + 48) + v15;
    *v16 = v25;
    *(v16 + 8) = v44;
    *(v16 + 16) = v26;
    *(v16 + 24) = v42;
    *(v16 + 32) = v43;
    v17 = *(v7 + 56) + v15;
    *v17 = v28;
    *(v17 + 8) = v41;
    *(v17 + 24) = v40;
    *(v17 + 32) = v39;
    ++*(v7 + 16);
  }

  v20 = v8 << 6;
  while (1)
  {
    v21 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v22 = *(v5 + 8 * v8 + 72);
    v20 += 64;
    ++v8;
    if (v22)
    {
      v11 = (v22 - 1) & v22;
      v19 = __clz(__rbit64(v22)) + v20;
      v8 = v21;
      goto LABEL_14;
    }
  }

  if (v38)
  {
    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v37, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  v3 = v2;
LABEL_32:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83A630(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TextureCache.TextureKey(0);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1AF859FA4(0, &unk_1ED723080, type metadata accessor for TextureCache.TextureKey, sub_1AF85A24C, MEMORY[0x1E69E6530]);
  v50 = v4;
  v9 = sub_1AFDFE5A8();
  v10 = v9;
  if (!*(v8 + 16))
  {
LABEL_39:

    goto LABEL_40;
  }

  v11 = 0;
  v12 = *(v8 + 64);
  v42 = (v8 + 64);
  v43 = v2;
  v13 = 1 << *(v8 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v17 = v9 + 64;
  v44 = v9;
  while (v15)
  {
    v53 = (v15 - 1) & v15;
    v20 = __clz(__rbit64(v15)) | (v11 << 6);
LABEL_14:
    v24 = *(v8 + 48) + *(v46 + 72) * v20;
    v52 = *(v46 + 72);
    if (v50)
    {
      sub_1AF0D6D88(v24, v7, type metadata accessor for TextureCache.TextureKey);
    }

    else
    {
      sub_1AF85A058(v24, v7, type metadata accessor for TextureCache.TextureKey);
    }

    v51 = *(*(v8 + 56) + 8 * v20);
    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](*v7);
    v25 = v47;
    sub_1AFDFC128();
    sub_1AF859F00();
    sub_1AFDFCD08();
    v26 = v7;
    v27 = &v7[*(v25 + 24)];
    v28 = *v27;
    v29 = *(v27 + 1);
    v30 = *(v27 + 2);
    v31 = v27[24];
    v32 = *(v27 + 5);
    v48 = *(v27 + 4);
    v49 = v32;
    v45 = *(v27 + 6);
    v33 = *(v27 + 28);
    MEMORY[0x1B271ACB0](v28);
    if (v31 < 0xFE)
    {
      sub_1AFDFF2A8();
      if ((v31 & 0x80) != 0)
      {
        MEMORY[0x1B271ACB0](1);
        MEMORY[0x1B271ACB0](v29);
        MEMORY[0x1B271ACB0](v30);
      }

      else
      {
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](v29);
        MEMORY[0x1B271ACB0](v30);
        sub_1AFDFF2A8();
      }
    }

    else
    {
      sub_1AFDFF2A8();
    }

    v7 = v26;
    if ((v33 & 0xFF00) == 0x300)
    {
      v10 = v44;
    }

    else
    {
      sub_1AFDFF2A8();
      MEMORY[0x1B271ACB0](v48);
      MEMORY[0x1B271ACB0](v49);
      v10 = v44;
      sub_1AFDFF2A8();
      if ((v33 & 1) == 0)
      {
        MEMORY[0x1B271ACB0](v45);
      }
    }

    sub_1AFDFF2A8();
    v34 = sub_1AFDFF2F8();
    v35 = -1 << *(v10 + 32);
    v36 = v34 & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v17 + 8 * (v36 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v36) & ~*(v17 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v19 = v52;
    }

    else
    {
      v38 = (63 - v35) >> 6;
      v19 = v52;
      do
      {
        if (v37 + 1 == v38)
        {
          v37 = 0;
        }

        else
        {
          ++v37;
        }

        v39 = *(v17 + 8 * v37);
      }

      while (v39 == -1);
      v18 = __clz(__rbit64(~v39)) + (v37 << 6);
    }

    *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    sub_1AF0D6D88(v7, *(v10 + 48) + v19 * v18, type metadata accessor for TextureCache.TextureKey);
    *(*(v10 + 56) + 8 * v18) = v51;
    ++*(v10 + 16);
    v15 = v53;
  }

  v21 = v11 << 6;
  while (1)
  {
    v22 = v11 + 1;
    if (v11 + 1 >= v16)
    {
      break;
    }

    v23 = *(v8 + 8 * v11 + 72);
    v21 += 64;
    ++v11;
    if (v23)
    {
      v53 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v11 = v22;
      goto LABEL_14;
    }
  }

  if (v50)
  {
    v40 = 1 << *(v8 + 32);
    v3 = v43;
    if (v40 >= 64)
    {
      bzero(v42, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v42 = -1 << v40;
    }

    *(v8 + 16) = 0;
    goto LABEL_39;
  }

  v3 = v43;
LABEL_40:
  *v3 = v10;
  return result;
}

uint64_t sub_1AF83AAE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85A3BC(0);
  v41 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v40 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = v17 | (v8 << 6);
    if (v41)
    {
LABEL_10:
      v19 = *(v5 + 48) + 16 * v18;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v5 + 56) + 72 * v18;
      v45 = *v22;
      v42 = *(v22 + 8);
      v23 = *(v22 + 16);
      v44 = *(v22 + 24);
      v47 = *(v22 + 32);
      v48 = *(v22 + 48);
      v43 = *(v22 + 56);
    }

    else
    {
LABEL_15:
      v27 = *(v5 + 48) + 16 * v18;
      v20 = *v27;
      v21 = *(v27 + 8);
      v28 = *(v5 + 56) + 72 * v18;
      v30 = *(v28 + 16);
      v29 = *(v28 + 32);
      v31 = *(v28 + 48);
      *&v51[16] = *(v28 + 64);
      *v51 = v31;
      v49[1] = v30;
      v49[0] = *v28;
      v50 = v29;
      v43 = *&v51[8];
      v44 = BYTE8(v30);
      v42 = *(&v49[0] + 1);
      v45 = *&v49[0];
      v23 = v30;
      sub_1AF85A058(v49, &v47, sub_1AF4464AC);
      v47 = v50;
      v48 = *v51;
    }

    sub_1AFDFF288();
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v21);
    v32 = sub_1AFDFF2F8();
    v33 = -1 << *(v7 + 32);
    v34 = v32 & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v13 + 8 * (v34 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v34) & ~*(v13 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v36 = (63 - v33) >> 6;
      do
      {
        if (v35 + 1 == v36)
        {
          v35 = 0;
        }

        else
        {
          ++v35;
        }

        v37 = *(v13 + 8 * v35);
      }

      while (v37 == -1);
      v14 = __clz(__rbit64(~v37)) + (v35 << 6);
    }

    *&v46[7] = v47;
    *&v46[23] = v48;
    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v7 + 48) + 16 * v14;
    *v15 = v20;
    *(v15 + 8) = v21;
    v16 = *(v7 + 56) + 72 * v14;
    *v16 = v45;
    *(v16 + 8) = v42;
    *(v16 + 16) = v23;
    *(v16 + 24) = v44;
    *(v16 + 40) = *&v46[15];
    *(v16 + 25) = *v46;
    *(v16 + 56) = v43;
    ++*(v7 + 16);
  }

  v24 = v8 << 6;
  while (1)
  {
    v25 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v26 = *(v5 + 8 * v8 + 72);
    v24 += 64;
    ++v8;
    if (v26)
    {
      v11 = (v26 - 1) & v26;
      v18 = __clz(__rbit64(v26)) + v24;
      v8 = v25;
      if (v41)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  if (v41)
  {
    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v40, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v40 = -1 << v38;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83AF9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB63F520, MEMORY[0x1E69E6158], &_s11CodeSnippetC17SerializationInfoVN, MEMORY[0x1E69E6168]);
  v38 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v37 = v2;
  v8 = 0;
  v36 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v21 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v22 = v21 | (v8 << 6);
LABEL_15:
    v26 = (*(v5 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = (*(v5 + 56) + 56 * v22);
    v30 = v29[1];
    v31 = v29[3];
    v40 = v29[2];
    v41 = *v29;
    v39 = v29[4];
    v42 = v29[6];
    v43 = v29[5];
    if ((v38 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v32)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v33 = *(v13 + 8 * v17);
      }

      while (v33 == -1);
      v18 = __clz(__rbit64(~v33)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v27;
    v19[1] = v28;
    v20 = (*(v7 + 56) + 56 * v18);
    *v20 = v41;
    v20[1] = v30;
    v20[2] = v40;
    v20[3] = v31;
    v20[4] = v39;
    v20[5] = v43;
    v20[6] = v42;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      goto LABEL_15;
    }
  }

  if (v38)
  {
    v34 = 1 << *(v5 + 32);
    v3 = v37;
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v37;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83B2D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85ACA4(0);
  v36 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v34 = (v5 + 64);
  v35 = v2;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v37 = (v11 - 1) & v11;
    v20 = __clz(__rbit64(v11)) | (v8 << 6);
LABEL_15:
    v24 = (*(v5 + 48) + 40 * v20);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = v24[3];
    v29 = v24[4];
    v38 = *(*(v5 + 56) + 8 * v20);
    if ((v36 & 1) == 0)
    {
      sub_1AF687F90(v25, v26, v27, v28, v29);
    }

    *&v39 = v25;
    *(&v39 + 1) = v26;
    *&v40 = v27;
    *(&v40 + 1) = v28;
    sub_1AFDFF288();
    sub_1AF7FE65C();
    sub_1AFDFD038();

    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v30)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v31 = *(v13 + 8 * v17);
      }

      while (v31 == -1);
      v18 = __clz(__rbit64(~v31)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = *(v7 + 48) + 40 * v18;
    *v19 = v39;
    *(v19 + 16) = v40;
    *(v19 + 32) = v29;
    v11 = v37;
    *(*(v7 + 56) + 8 * v18) = v38;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v37 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (v36)
  {
    v32 = 1 << *(v5 + 32);
    v3 = v35;
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v35;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83B5DC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1AF85B890(0, a3, MEMORY[0x1E69E6158], a4, MEMORY[0x1E69E6168]);
  v36 = v6;
  v8 = sub_1AFDFE5A8();
  v9 = v8;
  if (!*(v7 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v10 = 0;
  v35 = (v7 + 64);
  v11 = 1 << *(v7 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = v8 + 64;
  while (v13)
  {
    v22 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v23 = v22 | (v10 << 6);
LABEL_15:
    v27 = (*(v7 + 48) + 16 * v23);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(*(v7 + 56) + 8 * v23);
    if ((v36 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v16 = sub_1AFDFF2F8();
    v17 = -1 << *(v9 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v15 + 8 * (v18 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v18) & ~*(v15 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = (63 - v17) >> 6;
      do
      {
        if (v19 + 1 == v31)
        {
          v19 = 0;
        }

        else
        {
          ++v19;
        }

        v32 = *(v15 + 8 * v19);
      }

      while (v32 == -1);
      v20 = __clz(__rbit64(~v32)) + (v19 << 6);
    }

    *(v15 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v21 = (*(v9 + 48) + 16 * v20);
    *v21 = v28;
    v21[1] = v29;
    *(*(v9 + 56) + 8 * v20) = v30;
    ++*(v9 + 16);
  }

  v24 = v10 << 6;
  while (1)
  {
    v25 = v10 + 1;
    if (v10 + 1 >= v14)
    {
      break;
    }

    v26 = *(v7 + 8 * v10 + 72);
    v24 += 64;
    ++v10;
    if (v26)
    {
      v13 = (v26 - 1) & v26;
      v23 = __clz(__rbit64(v26)) + v24;
      v10 = v25;
      goto LABEL_15;
    }
  }

  if (v36)
  {
    v33 = 1 << *(v7 + 32);
    v5 = v4;
    if (v33 >= 64)
    {
      bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v35 = -1 << v33;
    }

    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  v5 = v4;
LABEL_30:
  *v5 = v9;
  return result;
}

uint64_t sub_1AF83B870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB63F480, MEMORY[0x1E69E5FE0], &type metadata for GraphScopeChecker.CFGSuccessorPaths, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v20 = v19 | (v8 << 6);
LABEL_15:
      v24 = *(*(v5 + 48) + 8 * v20);
      v30 = *(*(v5 + 56) + 16 * v20);
      if ((v4 & 1) == 0)
      {
      }

      v14 = sub_1AFDFF278();
      v15 = -1 << *(v7 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = (63 - v15) >> 6;
        do
        {
          if (v17 + 1 == v25)
          {
            v17 = 0;
          }

          else
          {
            ++v17;
          }

          v26 = *(v13 + 8 * v17);
        }

        while (v26 == -1);
        v18 = __clz(__rbit64(~v26)) + (v17 << 6);
      }

      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + 8 * v18) = v24;
      *(*(v7 + 56) + 16 * v18) = v30;
      ++*(v7 + 16);
    }

    v21 = v8 << 6;
    while (1)
    {
      v22 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v23 = *(v5 + 8 * v8 + 72);
      v21 += 64;
      ++v8;
      if (v23)
      {
        v11 = (v23 - 1) & v23;
        v20 = __clz(__rbit64(v23)) + v21;
        v8 = v22;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF83BAEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB638B50, MEMORY[0x1E69E5FE0], &type metadata for GraphScopeChecker.CFGPath, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v30 = (v5 + 64);
  v31 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + 8 * v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((v4 & 1) == 0)
    {
    }

    v14 = sub_1AFDFF278();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v26)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v27 = *(v13 + 8 * v17);
      }

      while (v27 == -1);
      v18 = __clz(__rbit64(~v27)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v31;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v31;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83BD58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF447218(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_39:

    goto LABEL_40;
  }

  v8 = 0;
  v32 = (v5 + 64);
  v33 = v2;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v8 << 6);
LABEL_14:
    v20 = *(v5 + 48) + 48 * v16;
    if (v4)
    {
      sub_1AF4473A0(v20, v40);
      v21 = *(*(v5 + 56) + 8 * v16);
    }

    else
    {
      sub_1AF447040(v20, v40);
      v21 = *(*(v5 + 56) + 8 * v16);
    }

    sub_1AFDFF288();
    sub_1AF447040(v40, &v35);
    v22 = v35;
    if (v38)
    {
      if (v38 == 1)
      {
        sub_1AF447144(v36, v34);
        MEMORY[0x1B271ACB0](3);
        sub_1AFDFCEF8();
        sub_1AFDFD038();

        sub_1AF9AC90C(v39);

        sub_1AF4470F0(v34);
      }

      else
      {
        v23 = v37 || v36[2] | v36[3] | v35 | v36[1] | v36[0];
        MEMORY[0x1B271ACB0](v23);
      }
    }

    else
    {
      MEMORY[0x1B271ACB0](2);
      sub_1AFDFF2A8();
    }

    v24 = sub_1AFDFF2F8();
    v25 = -1 << *(v7 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = (63 - v25) >> 6;
      do
      {
        if (v27 + 1 == v28)
        {
          v27 = 0;
        }

        else
        {
          ++v27;
        }

        v29 = *(v13 + 8 * v27);
      }

      while (v29 == -1);
      v14 = __clz(__rbit64(~v29)) + (v27 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    sub_1AF4473A0(v40, *(v7 + 48) + 48 * v14);
    *(*(v7 + 56) + 8 * v14) = v21;
    ++*(v7 + 16);
  }

  v17 = v8 << 6;
  while (1)
  {
    v18 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v19 = *(v5 + 8 * v8 + 72);
    v17 += 64;
    ++v8;
    if (v19)
    {
      v11 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) + v17;
      v8 = v18;
      goto LABEL_14;
    }
  }

  if (v4)
  {
    v30 = 1 << *(v5 + 32);
    v3 = v33;
    if (v30 >= 64)
    {
      bzero(v32, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v32 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_39;
  }

  v3 = v33;
LABEL_40:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83C0C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF859E94(0, &unk_1EB63F420, sub_1AF446F40, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v20 = v19 | (v8 << 6);
LABEL_15:
      v24 = *(*(v5 + 48) + 8 * v20);
      v30 = *(*(v5 + 56) + 16 * v20);
      if ((v4 & 1) == 0)
      {
      }

      v14 = sub_1AFDFF278();
      v15 = -1 << *(v7 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = (63 - v15) >> 6;
        do
        {
          if (v17 + 1 == v25)
          {
            v17 = 0;
          }

          else
          {
            ++v17;
          }

          v26 = *(v13 + 8 * v17);
        }

        while (v26 == -1);
        v18 = __clz(__rbit64(~v26)) + (v17 << 6);
      }

      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + 8 * v18) = v24;
      *(*(v7 + 56) + 16 * v18) = v30;
      ++*(v7 + 16);
    }

    v21 = v8 << 6;
    while (1)
    {
      v22 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v23 = *(v5 + 8 * v8 + 72);
      v21 += 64;
      ++v8;
      if (v23)
      {
        v11 = (v23 - 1) & v23;
        v20 = __clz(__rbit64(v23)) + v21;
        v8 = v22;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF83C350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF446EB4(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v38 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v8 << 6);
      if (v4)
      {
LABEL_10:
        v18 = *(*(v5 + 48) + 8 * v17);
        v19 = *(v5 + 56) + 120 * v17;
        v51 = *(v19 + 64);
        v52 = *(v19 + 80);
        v53 = *(v19 + 96);
        v54 = *(v19 + 112);
        v47 = *v19;
        v48 = *(v19 + 16);
        v49 = *(v19 + 32);
        v50 = *(v19 + 48);
      }

      else
      {
LABEL_15:
        v18 = *(*(v5 + 48) + 8 * v17);
        v23 = *(v5 + 56) + 120 * v17;
        v25 = *(v23 + 32);
        v24 = *(v23 + 48);
        v26 = *v23;
        v40 = *(v23 + 16);
        v41 = v25;
        v39 = v26;
        v28 = *(v23 + 80);
        v27 = *(v23 + 96);
        v29 = *(v23 + 64);
        v46 = *(v23 + 112);
        v44 = v28;
        v45 = v27;
        v42 = v24;
        v43 = v29;
        sub_1AF0D9CA4(&v39, &v47, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
        v51 = v43;
        v52 = v44;
        v53 = v45;
        v54 = v46;
        v47 = v39;
        v48 = v40;
        v49 = v41;
        v50 = v42;
      }

      v30 = sub_1AFDFF278();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = (63 - v31) >> 6;
        do
        {
          if (v33 + 1 == v34)
          {
            v33 = 0;
          }

          else
          {
            ++v33;
          }

          v35 = *(v13 + 8 * v33);
        }

        while (v35 == -1);
        v14 = __clz(__rbit64(~v35)) + (v33 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      v15 = *(v7 + 56) + 120 * v14;
      *(v15 + 64) = v51;
      *(v15 + 80) = v52;
      *(v15 + 96) = v53;
      *(v15 + 112) = v54;
      *v15 = v47;
      *(v15 + 16) = v48;
      *(v15 + 32) = v49;
      *(v15 + 48) = v50;
      ++*(v7 + 16);
    }

    v20 = v8 << 6;
    while (1)
    {
      v21 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v22 = *(v5 + 8 * v8 + 72);
      v20 += 64;
      ++v8;
      if (v22)
      {
        v11 = (v22 - 1) & v22;
        v17 = __clz(__rbit64(v22)) + v20;
        v8 = v21;
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      }
    }

    if (v4)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero(v38, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v38 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
  return result;
}