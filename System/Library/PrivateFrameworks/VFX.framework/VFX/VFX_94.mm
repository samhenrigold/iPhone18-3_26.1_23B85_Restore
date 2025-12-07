uint64_t sub_1AF84A37C()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB633B50, MEMORY[0x1E69E6158], &type metadata for EntityComponentProperty, MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 16 * v14;
      v19 = (*(v2 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(v2 + 56) + v18);
      v23 = v22[1];
      v24 = (*(v4 + 48) + v18);
      v25 = *v22;
      *v24 = v21;
      v24[1] = v20;
      v26 = (*(v4 + 56) + v18);
      *v26 = v25;
      v26[1] = v23;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84A514()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1ED726AC0, MEMORY[0x1E69E72F0], &type metadata for Entity, MEMORY[0x1E69E7300]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84A698()
{
  v1 = v0;
  v2 = type metadata accessor for TextureCache.TextureKey(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1AF859FA4(0, &qword_1ED723090, type metadata accessor for TextureCache.TextureKey, sub_1AF85A24C, &type metadata for TextureCache.CacheEntry);
  v6 = *v0;
  v7 = sub_1AFDFE598();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v1;
    v9 = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= &v10[8 * v11])
    {
      memmove(v9, v10, 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 64);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v18 = v17 | (v12 << 6);
LABEL_13:
      v22 = *(v3 + 72) * v18;
      sub_1AF85A058(*(v6 + 48) + v22, v5, type metadata accessor for TextureCache.TextureKey);
      v23 = 104 * v18;
      sub_1AF74EA6C(*(v6 + 56) + v23, v26);
      sub_1AF0D6D88(v5, *(v8 + 48) + v22, type metadata accessor for TextureCache.TextureKey);
      sub_1AF446690(v26, *(v8 + 56) + v23);
    }

    v19 = v12 << 6;
    while (1)
    {
      v20 = v12 + 1;
      if (v12 + 1 >= v16)
      {
        break;
      }

      v21 = *(v6 + 8 * v12 + 72);
      v19 += 64;
      ++v12;
      if (v21)
      {
        v15 = (v21 - 1) & v21;
        v18 = __clz(__rbit64(v21)) + v19;
        v12 = v20;
        goto LABEL_13;
      }
    }

    v1 = v25;
  }

  else
  {
  }

  *v1 = v8;
  return result;
}

uint64_t sub_1AF84A914()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB638DC8, MEMORY[0x1E69E6158], &type metadata for TickedEvent, MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 16 * v14;
      v19 = (*(v2 + 48) + 16 * v14);
      v21 = *v19;
      v20 = v19[1];
      v22 = 48 * v14;
      v23 = *(v2 + 56) + v22;
      v25 = *v23;
      v24 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 40);
      v28 = *(v23 + 44);
      v29 = (*(v4 + 48) + v18);
      v30 = *(v23 + 24);
      *v29 = v21;
      v29[1] = v20;
      v31 = *(v4 + 56) + v22;
      *v31 = v25;
      *(v31 + 8) = v24;
      *(v31 + 16) = v26;
      *(v31 + 24) = v30;
      *(v31 + 40) = v27;
      *(v31 + 44) = v28;

      v32 = v25;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84AB08(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_16:
      v19 = *(*(v3 + 48) + 8 * v15);
      v20 = *(*(v3 + 56) + 8 * v15);
      *(*(v5 + 48) + 8 * v15) = v19;
      *(*(v5 + 56) + 8 * v15) = v20;
      v21 = v19;
    }

    v16 = v9 << 6;
    while (1)
    {
      v17 = v9 + 1;
      if (v9 + 1 >= v13)
      {
        break;
      }

      v18 = *(v3 + 72 + 8 * v9);
      v16 += 64;
      ++v9;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v9 = v17;
        goto LABEL_16;
      }
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1AF84AC6C()
{
  v1 = v0;
  v2 = type metadata accessor for TriggerScriptRunnerSystem.TriggerParam(0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF85A600(0);
  v5 = *v0;
  v6 = sub_1AFDFE598();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v18 = v17 | (v11 << 6);
LABEL_16:
        v22 = 16 * v18;
        v23 = *(v5 + 48) + 16 * v18;
        v25 = *v23;
        v24 = *(v23 + 8);
        v26 = *(v32 + 72) * v18;
        sub_1AF85A058(*(v5 + 56) + v26, v4, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v27 = (*(v7 + 48) + v22);
        *v27 = v25;
        v27[1] = v24;
        sub_1AF0D6D88(v4, *(v7 + 56) + v26, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v28 = v24;
        v29 = v25;
      }

      while (v15);
    }

    v19 = v11 << 6;
    while (1)
    {
      v20 = v11 + 1;
      if (v11 + 1 >= v16)
      {
        break;
      }

      v21 = *(v5 + 8 * v11 + 72);
      v19 += 64;
      ++v11;
      if (v21)
      {
        v15 = (v21 - 1) & v21;
        v18 = __clz(__rbit64(v21)) + v19;
        v11 = v20;
        goto LABEL_16;
      }
    }

    v1 = v31;
  }

  else
  {
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1AF84AEA8()
{
  v1 = v0;
  sub_1AF443DB4(0, &unk_1EB63F3F0, sub_1AF43B694, &type metadata for Entity);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v19 = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 56) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84B020(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_16:
      v19 = *(*(v3 + 56) + 8 * v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
      *(*(v5 + 56) + 8 * v15) = v19;
    }

    v16 = v9 << 6;
    while (1)
    {
      v17 = v9 + 1;
      if (v9 + 1 >= v13)
      {
        break;
      }

      v18 = *(v3 + 72 + 8 * v9);
      v16 += 64;
      ++v9;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v9 = v17;
        goto LABEL_16;
      }
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1AF84B17C()
{
  v1 = v0;
  sub_1AF446BB0(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 16 * v14;
      v19 = (*(v2 + 48) + v18);
      v20 = v19[1];
      v21 = (*(v4 + 48) + v18);
      v22 = *(*(v2 + 56) + v18);
      *v21 = *v19;
      v21[1] = v20;
      *(*(v4 + 56) + v18) = v22;
      sub_1AF446C68(v22, *(&v22 + 1));
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84B2EC()
{
  v1 = v0;
  sub_1AF446DE8(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        v19 = 16 * v15;
        v20 = (*(v2 + 48) + 16 * v15);
        v21 = *v20;
        v22 = 96 * v15;
        v23 = v20[1];
        sub_1AF85B3D4(*(v2 + 56) + 96 * v15, v31);
        v24 = (*(v4 + 48) + v19);
        *v24 = v21;
        v24[1] = v23;
        v25 = (*(v4 + 56) + v22);
        v26 = v31[1];
        *v25 = v31[0];
        v27 = v31[2];
        v28 = v31[3];
        v29 = v32[0];
        *(v25 + 73) = *(v32 + 9);
        v25[3] = v28;
        v25[4] = v29;
        v25[1] = v26;
        v25[2] = v27;
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84B498()
{
  v1 = v0;
  sub_1AF446D30(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        v19 = 16 * v15;
        v20 = (*(v2 + 48) + 16 * v15);
        v21 = *v20;
        v22 = 48 * v15;
        v23 = v20[1];
        sub_1AF85ABE8(*(v2 + 56) + 48 * v15, &v29);
        v24 = (*(v4 + 48) + v19);
        *v24 = v21;
        v24[1] = v23;
        v25 = (*(v4 + 56) + v22);
        v26 = *&v30[9];
        v27 = *v30;
        *v25 = v29;
        v25[1] = v27;
        *(v25 + 25) = v26;
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84B634()
{
  v1 = v0;
  sub_1AF43B630(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = (*(v2 + 56) + 16 * v14);
      v20 = *v18;
      v19 = v18[1];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = (*(v4 + 56) + 16 * v14);
      *v21 = v20;
      v21[1] = v19;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84B794()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB638190, MEMORY[0x1E69E6158], &type metadata for Entity, MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = (*(v2 + 48) + 16 * v14);
      v19 = v18[1];
      v20 = *(*(v2 + 56) + 8 * v14);
      v21 = (*(v4 + 48) + 16 * v14);
      *v21 = *v18;
      v21[1] = v19;
      *(*(v4 + 56) + 8 * v14) = v20;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84B914()
{
  v1 = v0;
  v32 = sub_1AFDFC128();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF44490C(0);
  v3 = *v0;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30[0] = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v33 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30[1] = v34 + 32;
    v30[2] = v34 + 16;
    if (v13)
    {
      do
      {
        v35 = (v13 - 1) & v13;
        v15 = __clz(__rbit64(v13)) | (v9 << 6);
LABEL_16:
        v19 = 8 * v15;
        v20 = *(v3 + 48) + 8 * v15;
        v21 = *v20;
        v22 = *(v20 + 4);
        v23 = v34;
        v24 = *(v34 + 72) * v15;
        v25 = v31;
        v26 = v32;
        (*(v34 + 16))(v31, *(v3 + 56) + v24, v32);
        v27 = v33;
        v28 = *(v33 + 48) + v19;
        *v28 = v21;
        *(v28 + 4) = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);
        v13 = v35;
      }

      while (v35);
    }

    v16 = v9 << 6;
    while (1)
    {
      v17 = v9 + 1;
      if (v9 + 1 >= v14)
      {
        break;
      }

      v18 = *(v3 + 8 * v9 + 72);
      v16 += 64;
      ++v9;
      if (v18)
      {
        v35 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v9 = v17;
        goto LABEL_16;
      }
    }

    v1 = v30[0];
    v5 = v33;
  }

  else
  {
  }

  *v1 = v5;
  return result;
}

uint64_t sub_1AF84BB88()
{
  v1 = v0;
  sub_1AF85B8E4(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = (*(v2 + 56) + 24 * v14);
      v20 = *v18;
      v19 = v18[1];
      v21 = v18[2];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v22 = (*(v4 + 56) + 24 * v14);
      *v22 = v20;
      v22[1] = v19;
      v22[2] = v21;
      swift_unknownObjectRetain();
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84BCF4()
{
  v1 = v0;
  sub_1AF447CC8(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 40 * v14;
      v19 = *(v2 + 48) + v18;
      v20 = *(v19 + 24);
      v21 = *(v19 + 32);
      v22 = *(v2 + 56) + v18;
      v23 = *v22;
      v24 = *(v22 + 24);
      v25 = *(v22 + 32);
      v26 = *(v4 + 48) + v18;
      v27 = *(v19 + 8);
      v28 = *(v22 + 8);
      *v26 = *v19;
      *(v26 + 8) = v27;
      *(v26 + 24) = v20;
      *(v26 + 32) = v21;
      v29 = *(v4 + 56) + v18;
      *v29 = v23;
      *(v29 + 8) = v28;
      *(v29 + 24) = v24;
      *(v29 + 32) = v25;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84BE98()
{
  v1 = v0;
  v2 = type metadata accessor for TextureCache.TextureKey(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF859FA4(0, &unk_1ED723080, type metadata accessor for TextureCache.TextureKey, sub_1AF85A24C, MEMORY[0x1E69E6530]);
  v6 = *v0;
  v7 = sub_1AFDFE598();
  v8 = v7;
  if (*(v6 + 16))
  {
    v27 = v1;
    v9 = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 64 + 8 * v10)
    {
      memmove(v9, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v19 = v18 | (v12 << 6);
LABEL_16:
        v23 = *(v3 + 72) * v19;
        sub_1AF85A058(*(v6 + 48) + v23, v5, type metadata accessor for TextureCache.TextureKey);
        v24 = *(*(v6 + 56) + 8 * v19);
        sub_1AF0D6D88(v5, *(v8 + 48) + v23, type metadata accessor for TextureCache.TextureKey);
        *(*(v8 + 56) + 8 * v19) = v24;
      }

      while (v16);
    }

    v20 = v12 << 6;
    while (1)
    {
      v21 = v12 + 1;
      if (v12 + 1 >= v17)
      {
        break;
      }

      v22 = *(v6 + 8 * v12 + 72);
      v20 += 64;
      ++v12;
      if (v22)
      {
        v16 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v12 = v21;
        goto LABEL_16;
      }
    }

    v1 = v27;
  }

  else
  {
  }

  *v1 = v8;
  return result;
}

uint64_t sub_1AF84C0F8()
{
  v1 = v0;
  sub_1AF85A3BC(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        v19 = 16 * v15;
        v20 = *(v2 + 48) + 16 * v15;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = 72 * v15;
        v24 = *(v2 + 56) + v23;
        v26 = *(v24 + 16);
        v25 = *(v24 + 32);
        v27 = *(v24 + 48);
        v39 = *(v24 + 64);
        v38 = v27;
        v35 = *v24;
        v36 = v26;
        v37 = v25;
        v28 = *(v4 + 48) + v19;
        *v28 = v21;
        *(v28 + 8) = v22;
        v29 = *(v4 + 56) + v23;
        *v29 = v35;
        v30 = v36;
        v31 = v37;
        v32 = v38;
        *(v29 + 64) = v39;
        *(v29 + 32) = v31;
        *(v29 + 48) = v32;
        *(v29 + 16) = v30;
        sub_1AF85A058(&v35, v34, sub_1AF4464AC);
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84C3E4()
{
  sub_1AF85B890(0, &qword_1EB63F520, MEMORY[0x1E69E6158], &_s11CodeSnippetC17SerializationInfoVN, MEMORY[0x1E69E6168]);
  v33 = v0;
  v1 = *v0;
  v2 = sub_1AFDFE598();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || v4 >= v1 + 64 + 8 * v5)
    {
      memmove(v4, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_16:
      v17 = 16 * v13;
      v18 = (*(v1 + 48) + 16 * v13);
      v19 = *v18;
      v20 = v18[1];
      v21 = 56 * v13;
      v22 = (*(v1 + 56) + v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v26 = v22[3];
      v27 = v22[4];
      v28 = v22[5];
      v29 = v22[6];
      v30 = (*(v3 + 48) + v17);
      *v30 = v19;
      v30[1] = v20;
      v31 = (*(v3 + 56) + v21);
      *v31 = v23;
      v31[1] = v24;
      v31[2] = v25;
      v31[3] = v26;
      v31[4] = v27;
      v31[5] = v28;
      v31[6] = v29;
    }

    v14 = v7 << 6;
    while (1)
    {
      v15 = v7 + 1;
      if (v7 + 1 >= v11)
      {
        break;
      }

      v16 = *(v1 + 72 + 8 * v7);
      v14 += 64;
      ++v7;
      if (v16)
      {
        v10 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) + v14;
        v7 = v15;
        goto LABEL_16;
      }
    }
  }

  *v33 = v3;
  return result;
}

uint64_t sub_1AF84C60C()
{
  v1 = v0;
  sub_1AF85ACA4(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = (*(v2 + 48) + 40 * v14);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = v18[4];
      v24 = *(*(v2 + 56) + 8 * v14);
      v25 = (*(v4 + 48) + 40 * v14);
      *v25 = *v18;
      v25[1] = v20;
      v25[2] = v21;
      v25[3] = v22;
      v25[4] = v23;
      *(*(v4 + 56) + 8 * v14) = v24;
      sub_1AF687F90(v19, v20, v21, v22, v23);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84C7B4(unint64_t *a1, uint64_t a2)
{
  v3 = v2;
  sub_1AF85B890(0, a1, MEMORY[0x1E69E6158], a2, MEMORY[0x1E69E6168]);
  v4 = *v2;
  v5 = sub_1AFDFE598();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_16:
      v20 = (*(v4 + 48) + 16 * v16);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(*(v4 + 56) + 8 * v16);
      v24 = (*(v6 + 48) + 16 * v16);
      *v24 = v22;
      v24[1] = v21;
      *(*(v6 + 56) + 8 * v16) = v23;
    }

    v17 = v10 << 6;
    while (1)
    {
      v18 = v10 + 1;
      if (v10 + 1 >= v14)
      {
        break;
      }

      v19 = *(v4 + 72 + 8 * v10);
      v17 += 64;
      ++v10;
      if (v19)
      {
        v13 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v10 = v18;
        goto LABEL_16;
      }
    }
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1AF84C92C()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB63F480, MEMORY[0x1E69E5FE0], &type metadata for GraphScopeChecker.CFGSuccessorPaths, MEMORY[0x1E69E5FE8]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 56) + 16 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84CAE4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1AF85B890(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_1AFDFE598();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 64 + 8 * v10)
    {
      memmove(v9, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 64);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v18 = v17 | (v12 << 6);
LABEL_16:
      v22 = *(*(v6 + 56) + 8 * v18);
      *(*(v8 + 48) + 8 * v18) = *(*(v6 + 48) + 8 * v18);
      *(*(v8 + 56) + 8 * v18) = v22;
    }

    v19 = v12 << 6;
    while (1)
    {
      v20 = v12 + 1;
      if (v12 + 1 >= v16)
      {
        break;
      }

      v21 = *(v6 + 72 + 8 * v12);
      v19 += 64;
      ++v12;
      if (v21)
      {
        v15 = (v21 - 1) & v21;
        v18 = __clz(__rbit64(v21)) + v19;
        v12 = v20;
        goto LABEL_16;
      }
    }
  }

  *v5 = v8;
  return result;
}

uint64_t sub_1AF84CC48()
{
  v1 = v0;
  sub_1AF447218(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        sub_1AF447040(*(v2 + 48) + 48 * v15, v21);
        v19 = *(*(v2 + 56) + 8 * v15);
        sub_1AF4473A0(v21, *(v4 + 48) + 48 * v15);
        *(*(v4 + 56) + 8 * v15) = v19;
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84CDE4()
{
  v1 = v0;
  sub_1AF859E94(0, &unk_1EB63F420, sub_1AF446F40, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 56) + 16 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84CF84()
{
  v1 = v0;
  sub_1AF446EB4(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        v19 = 8 * v15;
        v20 = *(*(v2 + 48) + 8 * v15);
        v21 = 120 * v15;
        v22 = *(v2 + 56) + v21;
        v24 = *(v22 + 80);
        v23 = *(v22 + 96);
        v25 = *(v22 + 64);
        v45 = *(v22 + 112);
        v43 = v24;
        v44 = v23;
        v42 = v25;
        v27 = *v22;
        v26 = *(v22 + 16);
        v28 = *(v22 + 48);
        v40 = *(v22 + 32);
        v41 = v28;
        v38 = v27;
        v39 = v26;
        *(*(v4 + 48) + v19) = v20;
        v29 = *(v4 + 56) + v21;
        v30 = v38;
        v31 = v39;
        v32 = v41;
        *(v29 + 32) = v40;
        *(v29 + 48) = v32;
        *v29 = v30;
        *(v29 + 16) = v31;
        v33 = v42;
        v34 = v43;
        v35 = v44;
        *(v29 + 112) = v45;
        *(v29 + 80) = v34;
        *(v29 + 96) = v35;
        *(v29 + 64) = v33;
        sub_1AF0D9CA4(&v38, v37, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84D184()
{
  v1 = v0;
  sub_1AF4474BC(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        v19 = 48 * v15;
        sub_1AF447040(*(v2 + 48) + 48 * v15, v27);
        v20 = 40 * v15;
        sub_1AF85B49C(*(v2 + 56) + v20, v25);
        sub_1AF4473A0(v27, *(v4 + 48) + v19);
        v21 = *(v4 + 56) + v20;
        v22 = v25[0];
        v23 = v25[1];
        *(v21 + 32) = v26;
        *v21 = v22;
        *(v21 + 16) = v23;
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84D31C()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB63F630, MEMORY[0x1E69E6530], &type metadata for VFXObjectScriptsDiff.Diff, MEMORY[0x1E69E6540]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        v19 = *(*(v2 + 48) + 8 * v15);
        sub_1AF85B49C(*(v2 + 56) + 40 * v15, v24);
        *(*(v4 + 48) + 8 * v15) = v19;
        v20 = *(v4 + 56) + 40 * v15;
        v21 = v25;
        v22 = v24[1];
        *v20 = v24[0];
        *(v20 + 16) = v22;
        *(v20 + 32) = v21;
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84D4D8()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB63F638, MEMORY[0x1E69E6158], MEMORY[0x1E69E6448], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = (*(v2 + 48) + 16 * v14);
      v19 = v18[1];
      v20 = *(*(v2 + 56) + 4 * v14);
      v21 = (*(v4 + 48) + 16 * v14);
      *v21 = *v18;
      v21[1] = v19;
      *(*(v4 + 56) + 4 * v14) = v20;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84D658()
{
  v1 = v0;
  sub_1AF85A128(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(v2 + 48) + 24 * v14;
      v20 = *v18;
      v19 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 16);
      v21 = *(*(v2 + 56) + 8 * v14);
      v22 = *(v4 + 48) + 24 * v14;
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v18;
      *(*(v4 + 56) + 8 * v14) = v21;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84D7CC()
{
  sub_1AF43D8B0(0);
  v26 = v0;
  v1 = *v0;
  v2 = sub_1AFDFE598();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || v4 >= v1 + 64 + 8 * v5)
    {
      memmove(v4, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_16:
      v17 = 3 * v13;
      v18 = 32 * v17;
      v19 = 8 * v17;
      v20 = *(v1 + 56) + 8 * v17;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      memmove((*(v3 + 48) + v18), (*(v1 + 48) + v18), 0x60uLL);
      v24 = *(v3 + 56) + v19;
      *v24 = v21;
      *(v24 + 8) = v22;
      *(v24 + 16) = v23;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    v14 = v7 << 6;
    while (1)
    {
      v15 = v7 + 1;
      if (v7 + 1 >= v11)
      {
        break;
      }

      v16 = *(v1 + 72 + 8 * v7);
      v14 += 64;
      ++v7;
      if (v16)
      {
        v10 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) + v14;
        v7 = v15;
        goto LABEL_16;
      }
    }
  }

  *v26 = v3;
  return result;
}

uint64_t sub_1AF84D980()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB633B40, MEMORY[0x1E69E6530], &type metadata for TextureCPURuntime, MEMORY[0x1E69E6540]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        v19 = *(*(v2 + 48) + 8 * v15);
        v20 = (*(v2 + 56) + (v15 << 6));
        v22 = *v20;
        v21 = v20[1];
        v23 = v20[3];
        v32 = v20[2];
        v33 = v23;
        v30 = v22;
        v31 = v21;
        *(*(v4 + 48) + 8 * v15) = v19;
        v24 = (*(v4 + 56) + (v15 << 6));
        v25 = v30;
        v26 = v31;
        v27 = v33;
        v24[2] = v32;
        v24[3] = v27;
        *v24 = v25;
        v24[1] = v26;
        sub_1AF44222C(&v30, &v29);
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84DB20()
{
  v1 = v0;
  sub_1AF85A1E8(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = (*(v2 + 56) + 32 * v14);
      v19 = *v18;
      v22 = v18[1];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = (*(v4 + 56) + 32 * v14);
      *v20 = v19;
      v20[1] = v22;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84DCB4()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB630B80, MEMORY[0x1E69E6158], &type metadata for MetalFunctionReflection, MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 16 * v14;
      v19 = (*(v2 + 48) + 16 * v14);
      v21 = *v19;
      v20 = v19[1];
      v22 = 32 * v14;
      v23 = (*(v2 + 56) + v22);
      v24 = (*(v4 + 48) + v18);
      v25 = *v23;
      v28 = v23[1];
      *v24 = v21;
      v24[1] = v20;
      v26 = (*(v4 + 56) + v22);
      *v26 = v25;
      v26[1] = v28;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84DE7C()
{
  v1 = v0;
  v28 = sub_1AFDFC128();
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF859FA4(0, &qword_1EB63F3D8, MEMORY[0x1E6968FB0], sub_1AF859F00, MEMORY[0x1E69E6530]);
  v3 = *v0;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26[0] = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v29 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26[1] = v30 + 32;
    v26[2] = v30 + 16;
    if (v13)
    {
      do
      {
        v31 = (v13 - 1) & v13;
        v15 = __clz(__rbit64(v13)) | (v9 << 6);
LABEL_16:
        v19 = v30;
        v20 = *(v30 + 72) * v15;
        v21 = v27;
        v22 = v28;
        (*(v30 + 16))(v27, *(v3 + 48) + v20, v28);
        v23 = *(*(v3 + 56) + 8 * v15);
        v24 = v29;
        (*(v19 + 32))(*(v29 + 48) + v20, v21, v22);
        *(*(v24 + 56) + 8 * v15) = v23;
        v13 = v31;
      }

      while (v31);
    }

    v16 = v9 << 6;
    while (1)
    {
      v17 = v9 + 1;
      if (v9 + 1 >= v14)
      {
        break;
      }

      v18 = *(v3 + 8 * v9 + 72);
      v16 += 64;
      ++v9;
      if (v18)
      {
        v31 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v9 = v17;
        goto LABEL_16;
      }
    }

    v1 = v26[0];
    v5 = v29;
  }

  else
  {
  }

  *v1 = v5;
  return result;
}

uint64_t sub_1AF84E118(void (*a1)(void, double))
{
  v3 = v1;
  v31 = sub_1AFDFC318();
  v33 = *(v31 - 8);
  v4 = MEMORY[0x1EEE9AC00](v31);
  v30 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(0, v4);
  v6 = *v1;
  v7 = sub_1AFDFE598();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29[0] = v3;
    v9 = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 64 + 8 * v10)
    {
      memmove(v9, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v32 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v29[1] = v33 + 32;
    v29[2] = v33 + 16;
    v18 = v8;
    if (v16)
    {
      do
      {
        v34 = (v16 - 1) & v16;
        v19 = __clz(__rbit64(v16)) | (v12 << 6);
LABEL_16:
        v23 = v33;
        v24 = *(v33 + 72) * v19;
        v25 = v30;
        v26 = v31;
        (*(v33 + 16))(v30, *(v6 + 48) + v24, v31);
        v27 = *(*(v6 + 56) + 8 * v19);
        (*(v23 + 32))(*(v18 + 48) + v24, v25, v26);
        *(*(v18 + 56) + 8 * v19) = v27;

        v16 = v34;
      }

      while (v34);
    }

    v20 = v12 << 6;
    while (1)
    {
      v21 = v12 + 1;
      if (v12 + 1 >= v17)
      {
        break;
      }

      v22 = *(v6 + 8 * v12 + 72);
      v20 += 64;
      ++v12;
      if (v22)
      {
        v34 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v12 = v21;
        goto LABEL_16;
      }
    }

    v3 = v29[0];
    v8 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1AF84E38C()
{
  v1 = v0;
  v28 = sub_1AFDFC318();
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449580(0);
  v3 = *v0;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26[0] = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v29 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26[1] = v30 + 32;
    v26[2] = v30 + 16;
    v15 = v5;
    if (v13)
    {
      do
      {
        v31 = (v13 - 1) & v13;
        v16 = __clz(__rbit64(v13)) | (v9 << 6);
LABEL_16:
        v20 = v30;
        v21 = *(v30 + 72) * v16;
        v22 = v27;
        v23 = v28;
        (*(v30 + 16))(v27, *(v3 + 48) + v21, v28);
        v24 = *(*(v3 + 56) + 8 * v16);
        (*(v20 + 32))(*(v15 + 48) + v21, v22, v23);
        *(*(v15 + 56) + 8 * v16) = v24;

        v13 = v31;
      }

      while (v31);
    }

    v17 = v9 << 6;
    while (1)
    {
      v18 = v9 + 1;
      if (v9 + 1 >= v14)
      {
        break;
      }

      v19 = *(v3 + 8 * v9 + 72);
      v17 += 64;
      ++v9;
      if (v19)
      {
        v31 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v9 = v18;
        goto LABEL_16;
      }
    }

    v1 = v26[0];
    v5 = v29;
  }

  else
  {
  }

  *v1 = v5;
  return result;
}

uint64_t sub_1AF84E614()
{
  v1 = v0;
  sub_1AF447520(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v19 = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 56) + 16 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84E770()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB638758, MEMORY[0x1E69E6158], &type metadata for AnyType, MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = (*(v2 + 48) + 16 * v14);
      v19 = v18[1];
      v20 = *(*(v2 + 56) + 8 * v14);
      v21 = (*(v4 + 48) + 16 * v14);
      *v21 = *v18;
      v21[1] = v19;
      *(*(v4 + 56) + 8 * v14) = v20;

      sub_1AF442064(v20);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84E8F8()
{
  v1 = v0;
  sub_1AF444520(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 56) + 16 * v14) = v18;
      sub_1AF442064(*(&v18 + 1));
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84EA54(__n128 a1)
{
  v2 = v1;
  sub_1AF85A8E8(0);
  v3 = *v1;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_16:
      v19 = (*(v3 + 48) + 16 * v15);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(*(v3 + 56) + 8 * v15);
      v23 = (*(v5 + 48) + 16 * v15);
      *v23 = v20;
      v23[1] = v21;
      *(*(v5 + 56) + 8 * v15) = v22;

      sub_1AF442064(v22);
    }

    v16 = v9 << 6;
    while (1)
    {
      v17 = v9 + 1;
      if (v9 + 1 >= v13)
      {
        break;
      }

      v18 = *(v3 + 72 + 8 * v9);
      v16 += 64;
      ++v9;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v9 = v17;
        goto LABEL_16;
      }
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1AF84EBBC()
{
  v1 = v0;
  sub_1AF85A7B8(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 48) + 8 * v14);
      v19 = *(v2 + 56) + 32 * v14;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      *(*(v4 + 48) + 8 * v14) = v18;
      v24 = *(v4 + 56) + 32 * v14;
      *v24 = v20;
      *(v24 + 8) = v21;
      *(v24 + 16) = v22;
      *(v24 + 24) = v23;
      sub_1AF443EE0(v18);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84ED34()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB63F600, MEMORY[0x1E69E7668], &type metadata for ParticleCollisionEvent, MEMORY[0x1E69E7678]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v26[1] = v24)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = 4 * v14;
      v20 = *(*(v2 + 48) + 4 * v14);
      v21 = 80 * v14;
      v22 = (*(v2 + 56) + v21);
      v23 = v22[2];
      *v28 = v22[3];
      *&v28[9] = *(v22 + 57);
      v25 = *v22;
      v24 = v22[1];
      *(*(v4 + 48) + v19) = v20;
      v26 = (*(v4 + 56) + v21);
      *(v26 + 57) = *&v28[9];
      v26[2] = v23;
      v26[3] = *v28;
      *v26 = v25;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84EED0()
{
  v1 = v0;
  sub_1AF85A2F4(0, &unk_1EB6383C0, &qword_1EB63F3E0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = (v2 + 64);
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= &v6[8 * v7])
    {
      memmove(v5, v6, 8 * v7);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_13:
      v18 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 56) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_13;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84F054()
{
  v1 = v0;
  sub_1AF85A2F4(0, &qword_1EB6383A8, &qword_1EB6383B0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = (v2 + 64);
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= &v6[8 * v7])
    {
      memmove(v5, v6, 8 * v7);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_13:
      v18 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 56) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_13;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84F1D8()
{
  v1 = v0;
  sub_1AF85B890(0, &unk_1ED722FF0, MEMORY[0x1E69E76D8], &type metadata for MaterialRuntime, MEMORY[0x1E69E76E8]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        v19 = *(*(v2 + 48) + 8 * v15);
        v20 = (*(v2 + 56) + 240 * v15);
        v21 = v20[6];
        v23 = v20[3];
        v22 = v20[4];
        v51 = v20[5];
        v52 = v21;
        v49 = v23;
        v50 = v22;
        v24 = v20[10];
        v26 = v20[7];
        v25 = v20[8];
        v55 = v20[9];
        v56 = v24;
        v53 = v26;
        v54 = v25;
        v27 = v20[14];
        v29 = v20[11];
        v28 = v20[12];
        v59 = v20[13];
        v60 = v27;
        v57 = v29;
        v58 = v28;
        v31 = v20[1];
        v30 = v20[2];
        v46 = *v20;
        v47 = v31;
        v48 = v30;
        *(*(v4 + 48) + 8 * v15) = v19;
        v32 = (*(v4 + 56) + 240 * v15);
        v33 = v46;
        v34 = v48;
        v32[1] = v47;
        v32[2] = v34;
        *v32 = v33;
        v35 = v49;
        v36 = v50;
        v37 = v52;
        v32[5] = v51;
        v32[6] = v37;
        v32[3] = v35;
        v32[4] = v36;
        v38 = v53;
        v39 = v54;
        v40 = v56;
        v32[9] = v55;
        v32[10] = v40;
        v32[7] = v38;
        v32[8] = v39;
        v41 = v57;
        v42 = v58;
        v43 = v60;
        v32[13] = v59;
        v32[14] = v43;
        v32[11] = v41;
        v32[12] = v42;
        sub_1AF442498(&v46, &v45);
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84F3E4()
{
  v1 = v0;
  sub_1AF444B08(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 48) + 8 * v14);
      v19 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = v18;
      *(*(v4 + 56) + 8 * v14) = v19;
      sub_1AF443EE0(v18);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84F538()
{
  v1 = v0;
  sub_1AF444BC0(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 48) + 8 * v14);
      v19 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = v18;
      *(*(v4 + 56) + v14) = v19;
      sub_1AF443EE0(v18);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84F68C()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB638790, MEMORY[0x1E69E6158], &type metadata for ScriptParameter, MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 16 * v14;
      v19 = (*(v2 + 48) + 16 * v14);
      v21 = *v19;
      v20 = v19[1];
      v22 = 40 * v14;
      v23 = *(v2 + 56) + v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 32);
      v27 = (*(v4 + 48) + v18);
      v30 = *(v23 + 16);
      *v27 = v21;
      v27[1] = v20;
      v28 = *(v4 + 56) + v22;
      *v28 = v24;
      *(v28 + 8) = v25;
      *(v28 + 16) = v30;
      *(v28 + 32) = v26;

      sub_1AF443EE0(v24);
      sub_1AF444224(v30);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84F854()
{
  v1 = v0;
  sub_1AF85A4E4(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      *(*(v4 + 56) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84F9C0(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_16:
      v19 = *(*(v3 + 56) + 8 * v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
      *(*(v5 + 56) + 8 * v15) = v19;
      swift_unknownObjectRetain();
    }

    v16 = v9 << 6;
    while (1)
    {
      v17 = v9 + 1;
      if (v9 + 1 >= v13)
      {
        break;
      }

      v18 = *(v3 + 72 + 8 * v9);
      v16 += 64;
      ++v9;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v9 = v17;
        goto LABEL_16;
      }
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1AF84FB1C()
{
  v1 = v0;
  sub_1AF859E94(0, &qword_1EB638600, type metadata accessor for BufferSlice, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v22[1] = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = (*(v2 + 56) + 16 * v14);
      v20 = *v19;
      v21 = v19[1];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v22 = (*(v4 + 56) + 16 * v14);
      *v22 = v20;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84FC9C()
{
  v1 = v0;
  sub_1AF85A66C(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v27[1] = v26)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = 2 * v14;
      v20 = (*(v2 + 48) + 2 * v14);
      v21 = *v20;
      LOBYTE(v20) = v20[1];
      v22 = 16 * v14;
      v23 = (*(v2 + 56) + v22);
      v24 = *v23;
      v25 = (*(v4 + 48) + v19);
      v26 = v23[1];
      *v25 = v21;
      v25[1] = v20;
      v27 = (*(v4 + 56) + v22);
      *v27 = v24;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84FE04()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB638548, MEMORY[0x1E69E6158], &type metadata for TypedBufferSlice, MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 16 * v14;
      v19 = (*(v2 + 48) + 16 * v14);
      v21 = *v19;
      v20 = v19[1];
      v22 = 32 * v14;
      v23 = *(v2 + 56) + v22;
      v24 = *v23;
      v25 = *(v23 + 24);
      v26 = (*(v4 + 48) + v18);
      v27 = *(v23 + 8);
      *v26 = v21;
      v26[1] = v20;
      v28 = *(v4 + 56) + v22;
      *v28 = v24;
      *(v28 + 8) = v27;
      *(v28 + 24) = v25;

      swift_unknownObjectRetain();
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84FFA8()
{
  v1 = v0;
  sub_1AF443DB4(0, &qword_1EB6386A0, sub_1AF443AFC, &type metadata for VFXHandTracker.Joint);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v19 = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      *(*(v4 + 56) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF850120()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB63F410, MEMORY[0x1E69E6158], &type metadata for VFXHandTracker.Joint, MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = (*(v2 + 48) + 16 * v14);
      v20 = *v18;
      v19 = v18[1];
      LOBYTE(v18) = *(*(v2 + 56) + v14);
      v21 = (*(v4 + 48) + 16 * v14);
      *v21 = v20;
      v21[1] = v19;
      *(*(v4 + 56) + v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF8502DC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v4 = v3;
  sub_1AF85B2F0(0, a1, a2, a3);
  v5 = *v3;
  v6 = sub_1AFDFE598();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v18 = v17 | (v11 << 6);
LABEL_16:
        v22 = 8 * v18;
        v23 = 72 * v18;
        v24 = (*(v5 + 48) + v23);
        v26 = *(v24 + 1);
        v25 = *(v24 + 2);
        v27 = *(v24 + 3);
        *&v32[13] = *(v24 + 61);
        *v32 = v27;
        v31[0] = *v24;
        v31[1] = v26;
        v31[2] = v25;
        v28 = *(*(v5 + 56) + v22);
        memmove((*(v7 + 48) + v23), v24, 0x45uLL);
        *(*(v7 + 56) + v22) = v28;
        sub_1AF6B74A0(v31, v30);
      }

      while (v15);
    }

    v19 = v11 << 6;
    while (1)
    {
      v20 = v11 + 1;
      if (v11 + 1 >= v16)
      {
        break;
      }

      v21 = *(v5 + 8 * v11 + 72);
      v19 += 64;
      ++v11;
      if (v21)
      {
        v15 = (v21 - 1) & v21;
        v18 = __clz(__rbit64(v21)) + v19;
        v11 = v20;
        goto LABEL_16;
      }
    }
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1AF85048C()
{
  v1 = v0;
  sub_1AF85B160(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        v19 = 32 * v15;
        sub_1AF44596C(*(v2 + 48) + 32 * v15, v22);
        sub_1AF44596C(*(v2 + 56) + v19, v21);
        sub_1AF640200(v22, *(v4 + 48) + v19);
        sub_1AF640200(v21, *(v4 + 56) + v19);
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF850624()
{
  v1 = v0;
  sub_1AF85B214(0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v19 = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      *(*(v4 + 56) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF850790(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; v23 = v21)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_16:
      v19 = (*(v3 + 48) + 16 * v15);
      v20 = v19[1];
      v21 = *(*(v3 + 56) + 8 * v15);
      v22 = (*(v5 + 48) + 16 * v15);
      *v22 = *v19;
      v22[1] = v20;
      *(*(v5 + 56) + 8 * v15) = v21;
    }

    v16 = v9 << 6;
    while (1)
    {
      v17 = v9 + 1;
      if (v9 + 1 >= i)
      {
        break;
      }

      v18 = *(v3 + 72 + 8 * v9);
      v16 += 64;
      ++v9;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v9 = v17;
        goto LABEL_16;
      }
    }
  }

  *v2 = v5;
  return result;
}

double sub_1AF8508FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1AF419914(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AF844804();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 88 * v8;
    v12 = *(v11 + 48);
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = v12;
    *(a3 + 64) = *(v11 + 64);
    *(a3 + 80) = *(v11 + 80);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    sub_1AF6B1D58(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 80) = 0;
    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1AF8509C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1AF419914(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1AF845894();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1AF6B234C(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_1AF850A60@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, _OWORD *)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(void, double)@<X3>, void (*a5)(_BYTE *, uint64_t)@<X4>, _OWORD *a6@<X8>, double a7@<D0>)
{
  v12 = v7;
  v14 = sub_1AF419DC8(a1, a7);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v7;
    v23 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AF846030(a4, a5, v18);
      v19 = v23;
    }

    v20 = *(v19 + 48);
    v21 = sub_1AFDFE488();
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    a2(*(v19 + 56) + 32 * v16, a6);
    a3(v16, v19);
    *v12 = v19;
  }

  else
  {
    result = 0.0;
    *a6 = 0u;
    a6[1] = 0u;
  }

  return result;
}

uint64_t sub_1AF850B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1AF419940(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AF84657C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1AFDFC318();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_1AF6B2C10(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = sub_1AFDFC318();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1AF850D7C(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;
  v8 = a2(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v15 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a4();
    v12 = v15;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  a3(v10, v12);
  *v7 = v12;
  return v13;
}

uint64_t sub_1AF850E2C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1AF449CB8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1AF84CAE4(&qword_1ED723010, MEMORY[0x1E69E6530], &type metadata for TextureCache.AsyncGroupRequestState, MEMORY[0x1E69E6540]);
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1AF6B2F08(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_1AF850F2C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;
  v8 = sub_1AF419914(a1, a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v15 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a4();
    v12 = v15;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  a3(v10, v12);
  *v7 = v12;
  return v13;
}

unint64_t sub_1AF850FDC(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF0D3F10(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF82BC4C(v13, a3 & 1);
      result = sub_1AF0D3F10(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF847B80(&qword_1EB630BF8, MEMORY[0x1E69E5FE0], &type metadata for TraversalTag, MEMORY[0x1E69E5FE8]);
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + result) = a1 & 1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + result) = a1 & 1;
    ++v16[2];
  }

  return result;
}

uint64_t sub_1AF851118(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_1AF419940(a2);
  v15 = v14;
  v16 = v12[3];
  result = v12[2] + ((v14 & 1) == 0);
  if (v16 >= result && (a3 & 1) != 0)
  {
LABEL_6:
    v18 = *v4;
    if (v15)
    {
LABEL_7:
      *(v18[7] + v13) = a1 & 1;
      return result;
    }

    goto LABEL_10;
  }

  if (v16 >= result && (a3 & 1) == 0)
  {
    result = sub_1AF844124();
    goto LABEL_6;
  }

  sub_1AF82BED8(result, a3 & 1);
  result = sub_1AF419940(a2);
  if ((v15 & 1) != (v19 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v13 = result;
  v18 = *v4;
  if (v15)
  {
    goto LABEL_7;
  }

LABEL_10:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1AF8430AC(v13, v11, a1 & 1, v18);
}

void sub_1AF8512AC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v26 = a1;
  v9 = sub_1AFDFC318();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v14 = sub_1AF419940(a3);
  v16 = v15;
  v17 = v13[3];
  v18 = v13[2] + ((v15 & 1) == 0);
  if (v17 >= v18 && (a4 & 1) != 0)
  {
LABEL_6:
    v19 = *v5;
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_12:
    (*(v10 + 16))(v12, a3, v9);
    sub_1AF843160(v14, v12, v26, a2 & 1, v19);
    return;
  }

  if (v17 >= v18 && (a4 & 1) == 0)
  {
    sub_1AF8443C0();
    goto LABEL_6;
  }

  sub_1AF82C288(v18, a4 & 1);
  v23 = sub_1AF419940(a3);
  if ((v16 & 1) != (v24 & 1))
  {
    sub_1AFDFF1A8();
    __break(1u);
    return;
  }

  v14 = v23;
  v19 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v20 = v19[7] + 16 * v14;
  v21 = *v20;
  v22 = *(v20 + 8);
  *v20 = v26;
  *(v20 + 8) = a2 & 1;

  sub_1AF85AA70(v21, v22);
}

uint64_t sub_1AF85148C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AF419914(a2, a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF82C8F0(v15, a4 & 1);
      v11 = sub_1AF419914(a2, a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v11;
      sub_1AF844804();
      v11 = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    v19 = v18[7] + 88 * v11;

    return sub_1AF770FA0(a1, v19);
  }

  else
  {
    v18[(v11 >> 6) + 8] |= 1 << v11;
    v21 = (v18[6] + 16 * v11);
    *v21 = a2;
    v21[1] = a3;
    v22 = v18[7] + 88 * v11;
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    v24 = *(a1 + 32);
    v25 = *(a1 + 48);
    v26 = *(a1 + 64);
    *(v22 + 80) = *(a1 + 80);
    *(v22 + 48) = v25;
    *(v22 + 64) = v26;
    *(v22 + 32) = v24;
    ++v18[2];
  }
}

unint64_t sub_1AF851618(uint64_t a1, uint64_t a2, char a3, __n128 a4)
{
  v5 = v4;
  v9 = *v4;
  result = sub_1AF0D8ED4(a4, a2);
  v12 = v11;
  v13 = *(v9 + 24);
  v14 = *(v9 + 16) + ((v11 & 1) == 0);
  if (v13 < v14 || (a3 & 1) == 0)
  {
    if (v13 < v14 || (a3 & 1) != 0)
    {
      sub_1AF82CBE0(v14, a3 & 1);
      result = sub_1AF0D8ED4(v16, a2);
      if ((v12 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = result;
      sub_1AF8449D0();
      result = v15;
    }
  }

  v18 = *v5;
  if (v12)
  {
    *(v18[7] + 8 * result) = a1;
  }

  else
  {
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + result) = a2;
    *(v18[7] + 8 * result) = a1;
    ++v18[2];
  }

  return result;
}

uint64_t sub_1AF85177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1AF419CA8(a2, a3, a4, a5);
  v17 = v16;
  v18 = *(v14 + 24);
  v19 = *(v14 + 16) + ((v16 & 1) == 0);
  if (v18 < v19 || (a6 & 1) == 0)
  {
    if (v18 < v19 || (a6 & 1) != 0)
    {
      sub_1AF82D100(v19, a6 & 1);
      v15 = sub_1AF419CA8(a2, a3, a4, a5);
      if ((v17 & 1) != (v21 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v15;
      sub_1AF844E34();
      v15 = v20;
    }
  }

  v22 = *v7;
  if (v17)
  {
    *(v22[7] + 8 * v15) = a1;
  }

  else
  {
    v22[(v15 >> 6) + 8] |= 1 << v15;
    v24 = (v22[6] + 32 * v15);
    *v24 = a2;
    v24[1] = a3;
    v24[2] = a4;
    v24[3] = a5;
    *(v22[7] + 8 * v15) = a1;
    ++v22[2];
  }
}

unint64_t sub_1AF85190C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449CBC(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF82D3C8(v13, a3 & 1);
      result = sub_1AF449CBC(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF844FAC();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 4 * result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF851A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1AF449CB8(a4);
  v15 = v14;
  v16 = *(v12 + 24);
  v17 = *(v12 + 16) + ((v14 & 1) == 0);
  if (v16 < v17 || (a5 & 1) == 0)
  {
    if (v16 < v17 || (a5 & 1) != 0)
    {
      sub_1AF82D618(v17, a5 & 1);
      result = sub_1AF449CB8(a4);
      if ((v15 & 1) != (v19 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = result;
      sub_1AF845100();
      result = v18;
    }
  }

  v20 = *v6;
  if (v15)
  {
    v21 = (v20[7] + 24 * result);
    *v21 = a1;
    v21[1] = a2;
    v21[2] = a3;
  }

  else
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a4;
    v22 = (v20[7] + 24 * result);
    *v22 = a1;
    v22[1] = a2;
    v22[2] = a3;
    ++v20[2];
  }

  return result;
}

unint64_t sub_1AF851BB8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF82D8C0(v13, a3 & 1);
      result = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF84543C(&qword_1ED723060, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF851CE4(int a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF82DB18(v13, a3 & 1);
      result = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF8452C0();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 4 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + 4 * result) = a1;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF851DF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1AF419914(a4, a5);
  v17 = v16;
  v18 = *(v14 + 24);
  v19 = *(v14 + 16) + ((v16 & 1) == 0);
  if (v18 < v19 || (a6 & 1) == 0)
  {
    if (v18 < v19 || (a6 & 1) != 0)
    {
      sub_1AF82DFF0(v19, a6 & 1);
      result = sub_1AF419914(a4, a5);
      if ((v17 & 1) != (v21 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = result;
      sub_1AF845590();
      result = v20;
    }
  }

  v22 = *v7;
  if (v17)
  {
    v23 = v22[7] + 24 * result;
    *v23 = a1;
    *(v23 + 8) = a2;
    *(v23 + 16) = a3 & 1;
  }

  else
  {
    v22[(result >> 6) + 8] |= 1 << result;
    v24 = (v22[6] + 16 * result);
    *v24 = a4;
    v24[1] = a5;
    v25 = v22[7] + 24 * result;
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = a3 & 1;
    ++v22[2];
  }

  return result;
}

void sub_1AF851F78(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AF419914(a2, a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF82E51C(v15, a4 & 1);
      v11 = sub_1AF419914(a2, a3);
      if ((v13 & 1) != (v17 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v11;
      sub_1AF845894();
      v11 = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    *(v18[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
  }

  else
  {
    v18[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = a2;
    v19[1] = a3;
    *(v18[7] + 8 * v11) = a1;
    ++v18[2];
  }
}

unint64_t sub_1AF8520E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AF449D3C(a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF82E7A4(v15, a4 & 1);
      result = sub_1AF449D3C(a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1AF8459FC();
      result = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    v19 = (v18[7] + 16 * result);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = a3;
    v20 = (v18[7] + 16 * result);
    *v20 = a1;
    v20[1] = a2;
    ++v18[2];
  }

  return result;
}

unint64_t sub_1AF85221C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1AF0D3F10(a4);
  v15 = v14;
  v16 = *(v12 + 24);
  v17 = *(v12 + 16) + ((v14 & 1) == 0);
  if (v16 < v17 || (a5 & 1) == 0)
  {
    if (v16 < v17 || (a5 & 1) != 0)
    {
      sub_1AF82F018(v17, a5 & 1);
      result = sub_1AF0D3F10(a4);
      if ((v15 & 1) != (v19 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = result;
      sub_1AF845EAC();
      result = v18;
    }
  }

  v20 = *v6;
  if (v15)
  {
    v21 = (v20[7] + 24 * result);
    *v21 = a1;
    v21[1] = a2;
    v21[2] = a3;
  }

  else
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a4;
    v22 = (v20[7] + 24 * result);
    *v22 = a1;
    v22[1] = a2;
    v22[2] = a3;
    ++v20[2];
  }

  return result;
}

uint64_t sub_1AF852354(uint64_t a1, uint64_t a2, char a3, void (*a4)(void, __n128), uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, void *), double a7)
{
  v34 = a6;
  v35 = a4;
  v9 = v7;
  v36 = a1;
  v12 = sub_1AFDFE488();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  v18 = sub_1AF419DC8(a2, v14);
  v21 = v20;
  v22 = v17[3];
  v23 = v17[2] + ((v20 & 1) == 0);
  if (v22 >= v23 && (a3 & 1) != 0)
  {
LABEL_6:
    v24 = *v9;
    if (v21)
    {
      goto LABEL_7;
    }

LABEL_12:
    v32 = (*(v13 + 16))(v16, a2, v12);
    return sub_1AF843344(v18, v16, v36, v24, a5, v32);
  }

  if (v22 >= v23 && (a3 & 1) == 0)
  {
    sub_1AF846030(v35, a5, v19);
    goto LABEL_6;
  }

  sub_1AF82F2A8(v23, a3 & 1, v35, a5, v19);
  v30 = sub_1AF419DC8(a2, v29);
  if ((v21 & 1) != (v31 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v18 = v30;
  v24 = *v9;
  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v25 = (v24[7] + 32 * v18);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
  v26 = v36;
  v27 = v34;

  return v27(v26, v25);
}

uint64_t sub_1AF852548(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF82F88C(v13, a3 & 1);
      v9 = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = v9;
      sub_1AF8463F0();
      v9 = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    v17 = v16[7] + 8 * v9;

    return sub_1AF85B554(a1, v17);
  }

  else
  {
    v16[(v9 >> 6) + 8] |= 1 << v9;
    *(v16[6] + 8 * v9) = a2;
    result = sub_1AF0D5D54(a1, v16[7] + 8 * v9);
    ++v16[2];
  }

  return result;
}

uint64_t sub_1AF852688(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AFDFC318();
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_1AF419940(a2);
  v14 = v13;
  v15 = v11[3];
  v16 = v11[2] + ((v13 & 1) == 0);
  if (v15 >= v16 && (a3 & 1) != 0)
  {
LABEL_6:
    v17 = *v4;
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_12:
    (*(v24 + 16))(v10, a2, v8);
    return sub_1AF843444(v12, v10, a1, v17);
  }

  if (v15 >= v16 && (a3 & 1) == 0)
  {
    sub_1AF84657C();
    goto LABEL_6;
  }

  sub_1AF82FB04(v16, a3 & 1);
  v21 = sub_1AF419940(a2);
  if ((v14 & 1) != (v22 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v12 = v21;
  v17 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v18 = *(v24 + 40);
  v19 = v17[7] + *(v24 + 72) * v12;

  return v18(v19, a1, v8);
}

unint64_t sub_1AF852868(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF419FCC(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF82FF20(v13, a3 & 1);
      result = sub_1AF419FCC(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF846868();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 2 * result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

uint64_t sub_1AF8529CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1AF419914(a2, a3);
  v17 = v16;
  v18 = *(v14 + 24);
  v19 = *(v14 + 16) + ((v16 & 1) == 0);
  if (v18 < v19 || (a4 & 1) == 0)
  {
    if (v18 < v19 || (a4 & 1) != 0)
    {
      a6(v19, a4 & 1);
      v15 = sub_1AF419914(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v15;
      a5();
      v15 = v20;
    }
  }

  v22 = *v9;
  if (v17)
  {
    *(v22[7] + 8 * v15) = a1;
  }

  else
  {
    v22[(v15 >> 6) + 8] |= 1 << v15;
    v24 = (v22[6] + 16 * v15);
    *v24 = a2;
    v24[1] = a3;
    *(v22[7] + 8 * v15) = a1;
    ++v22[2];
  }
}

uint64_t sub_1AF852BA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1AF419914(a2, a3);
  v17 = v16;
  v18 = *(v14 + 24);
  v19 = *(v14 + 16) + ((v16 & 1) == 0);
  if (v18 < v19 || (a4 & 1) == 0)
  {
    if (v18 < v19 || (a4 & 1) != 0)
    {
      a6(v19, a4 & 1);
      v15 = sub_1AF419914(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v15;
      a5();
      v15 = v20;
    }
  }

  v22 = *v9;
  if (v17)
  {
    *(v22[7] + 8 * v15) = a1;
  }

  else
  {
    v22[(v15 >> 6) + 8] |= 1 << v15;
    v24 = (v22[6] + 16 * v15);
    *v24 = a2;
    v24[1] = a3;
    *(v22[7] + 8 * v15) = a1;
    ++v22[2];
  }
}

unint64_t sub_1AF852D2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF830A44(v13, a3 & 1);
      result = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF846E40();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF852E4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF830CA0(v13, a3 & 1);
      result = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF846FA0();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    v17 = v16[7] + 80 * result;
    v18 = *(a1 + 48);
    *(v17 + 32) = *(a1 + 32);
    *(v17 + 48) = v18;
    *(v17 + 64) = *(a1 + 64);
    v19 = *(a1 + 16);
    *v17 = *a1;
    *(v17 + 16) = v19;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    v20 = v16[7] + 80 * result;
    v21 = *(a1 + 48);
    *(v20 + 32) = *(a1 + 32);
    *(v20 + 48) = v21;
    *(v20 + 64) = *(a1 + 64);
    v22 = *(a1 + 16);
    *v20 = *a1;
    *(v20 + 16) = v22;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF852F94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AF41A220(a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF8312CC(v15, a4 & 1);
      result = sub_1AF41A220(a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1AF847398();
      result = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    v19 = (v18[7] + 16 * result);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + result) = a3;
    v20 = (v18[7] + 16 * result);
    *v20 = a1;
    v20[1] = a2;
    ++v18[2];
  }

  return result;
}

uint64_t sub_1AF8530E8(uint64_t a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AF41A308(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF8315B4(v13, a3 & 1);
      v9 = sub_1AF41A308(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = v9;
      sub_1AF84750C();
      v9 = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * v9) = a1;
  }

  else
  {
    v16[(v9 >> 6) + 8] |= 1 << v9;
    v18 = v16[6] + 40 * v9;
    v19 = *a2;
    v20 = a2[1];
    *(v18 + 32) = *(a2 + 4);
    *v18 = v19;
    *(v18 + 16) = v20;
    *(v16[7] + 8 * v9) = a1;
    ++v16[2];
    return sub_1AF444F60(a2, v21);
  }
}

uint64_t sub_1AF85324C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v26 = a2;
  v9 = sub_1AFDFC318();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v14 = sub_1AF419940(a3);
  v16 = v15;
  v17 = v13[3];
  v18 = v13[2] + ((v15 & 1) == 0);
  if (v17 >= v18 && (a4 & 1) != 0)
  {
LABEL_6:
    v19 = *v5;
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_12:
    (*(v10 + 16))(v12, a3, v9);
    return sub_1AF843594(v14, v12, a1, v26, v19);
  }

  if (v17 >= v18 && (a4 & 1) == 0)
  {
    sub_1AF847128();
    goto LABEL_6;
  }

  sub_1AF830F34(v18, a4 & 1);
  v23 = sub_1AF419940(a3);
  if ((v16 & 1) != (v24 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v14 = v23;
  v19 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v20 = (v19[7] + 16 * v14);
  v21 = v26;
  *v20 = a1;
  v20[1] = v21;
}

void sub_1AF85344C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AF0D3F10(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF8318AC(v13, a3 & 1);
      v9 = sub_1AF0D3F10(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v14 = v9;
      sub_1AF8476A0();
      v9 = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    v17 = v16[7] + 40 * v9;
    v18 = *(a1 + 16);
    *v17 = *a1;
    *(v17 + 16) = v18;
    *(v17 + 32) = *(a1 + 32);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    v16[(v9 >> 6) + 8] |= 1 << v9;
    *(v16[6] + 8 * v9) = a2;
    v19 = v16[7] + 40 * v9;
    v20 = *(a1 + 16);
    *v19 = *a1;
    *(v19 + 16) = v20;
    *(v19 + 32) = *(a1 + 32);
    ++v16[2];
  }
}

void sub_1AF8535C4(uint64_t a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AF419E2C(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF831B68(v13, a3 & 1);
      v9 = sub_1AF419E2C(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v14 = v9;
      sub_1AF847854();
      v9 = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * v9) = a1;

    swift_unknownObjectRelease();
  }

  else
  {
    v18 = a2[1];
    v26 = *a2;
    v17 = v26;
    v19 = *(a2 + 2);
    v24 = *(a2 + 3);
    v25 = v19;
    v23 = *(a2 + 4);
    v20 = v23;
    v16[(v9 >> 6) + 8] |= 1 << v9;
    v21 = v16[6] + 40 * v9;
    *(v21 + 32) = v20;
    *v21 = v17;
    *(v21 + 16) = v18;
    *(v16[7] + 8 * v9) = a1;
    ++v16[2];
    sub_1AF450FE0(&v26, v22);
    sub_1AF85AE08(&v25, v22, &qword_1ED723160, &unk_1ED723170, &protocolRef_MTLFunction);
    sub_1AF85AE08(&v24, v22, &qword_1ED723180, &qword_1ED723190, &protocolRef_MTLLibrary);
    sub_1AF0D9CA4(&v23, v22, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
  }
}

unint64_t sub_1AF8537B0(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF8325CC(v13, a3 & 1);
      result = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF847A00();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    return sub_1AF859D48(a1, v16[7] + 56 * result, qword_1ED725E10, &type metadata for ShaderCache.Function, type metadata accessor for ShaderCache.CacheEntry);
  }

  v16[(result >> 6) + 8] |= 1 << result;
  *(v16[6] + 8 * result) = a2;
  v17 = v16[7] + 56 * result;
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  *(v17 + 48) = *(a1 + 48);
  *(v17 + 16) = v19;
  *(v17 + 32) = v20;
  *v17 = v18;
  ++v16[2];
  return result;
}

unint64_t sub_1AF85390C(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF832878(v13, a3 & 1);
      result = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF847B80(&qword_1EB633188, MEMORY[0x1E69E6530], MEMORY[0x1E69E6370], MEMORY[0x1E69E6540]);
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + result) = a1 & 1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + result) = a1 & 1;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF853A48(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF832AD4(v13, a3 & 1);
      result = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF847CD0();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    return sub_1AF859D48(a1, v16[7] + 72 * result, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);
  }

  v16[(result >> 6) + 8] |= 1 << result;
  *(v16[6] + 8 * result) = a2;
  v17 = v16[7] + 72 * result;
  *v17 = *a1;
  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = *(a1 + 48);
  *(v17 + 64) = *(a1 + 64);
  *(v17 + 32) = v19;
  *(v17 + 48) = v20;
  *(v17 + 16) = v18;
  ++v16[2];
  return result;
}

id sub_1AF853BAC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1AF41A464(a2);
  v10 = v9;
  v11 = *(v7 + 24);
  v12 = *(v7 + 16) + ((v9 & 1) == 0);
  if (v11 < v12 || (a3 & 1) == 0)
  {
    if (v11 < v12 || (a3 & 1) != 0)
    {
      sub_1AF8331D4(v12, a3 & 1);
      v8 = sub_1AF41A464(a2);
      if ((v10 & 1) != (v14 & 1))
      {
        sub_1AF0D4478(0, &unk_1EB63F590, 0x1E6974B98);
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v13 = v8;
      sub_1AF848198();
      v8 = v13;
    }
  }

  v15 = *v4;
  if (v10)
  {
    *(v15[7] + 8 * v8) = a1;
  }

  else
  {
    v15[(v8 >> 6) + 8] |= 1 << v8;
    *(v15[6] + 8 * v8) = a2;
    *(v15[7] + 8 * v8) = a1;
    ++v15[2];

    return a2;
  }
}

unint64_t sub_1AF853D14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF41A4B4(a2);
  v12 = v11;
  v13 = *(v8 + 24);
  v14 = *(v8 + 16) + ((v11 & 1) == 0);
  if (v13 < v14 || (a3 & 1) == 0)
  {
    if (v13 < v14 || (a3 & 1) != 0)
    {
      sub_1AF833420(v14, a3 & 1, v10);
      result = sub_1AF41A4B4(a2);
      if ((v12 & 1) != (v16 & 1))
      {
        type metadata accessor for VertexLayoutDescriptor();
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = result;
      sub_1AF8482F4(v10);
      result = v15;
    }
  }

  v17 = *v4;
  if (v12)
  {
    *(v17[7] + 8 * result) = a1;
  }

  else
  {
    v17[(result >> 6) + 8] |= 1 << result;
    *(v17[6] + 8 * result) = a2;
    *(v17[7] + 8 * result) = a1;
    ++v17[2];
  }

  return result;
}

unint64_t sub_1AF853E48(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_1AF41A464(a2);
  v10 = v9;
  v11 = *(v7 + 24);
  v12 = *(v7 + 16) + ((v9 & 1) == 0);
  if (v11 < v12 || (a3 & 1) == 0)
  {
    if (v11 < v12 || (a3 & 1) != 0)
    {
      sub_1AF833CD4(v12, a3 & 1, &unk_1EB6381A0, &unk_1EB63F590, 0x1E6974B98, &qword_1EB6381B0);
      result = sub_1AF41A464(a2);
      if ((v10 & 1) != (v14 & 1))
      {
        sub_1AF0D4478(0, &unk_1EB63F590, 0x1E6974B98);
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v13 = result;
      sub_1AF84885C(&unk_1EB6381A0, &unk_1EB63F590, 0x1E6974B98, &qword_1EB6381B0);
      result = v13;
    }
  }

  v15 = *v4;
  if (v10)
  {
    *(v15[7] + 8 * result) = a1;
  }

  else
  {
    v15[(result >> 6) + 8] |= 1 << result;
    *(v15[6] + 8 * result) = a2;
    *(v15[7] + 8 * result) = a1;
    ++v15[2];

    return a2;
  }

  return result;
}

unint64_t sub_1AF853FEC(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AF41A520(a2, a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF8336BC(v15, a4 & 1);
      result = sub_1AF41A520(a2, a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1AF848480();
      result = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    *(v18[7] + 8 * result) = a1;
  }

  else
  {
    v18[(result >> 6) + 8] |= 1 << result;
    v19 = (v18[6] + 16 * result);
    *v19 = a2;
    v19[1] = a3;
    *(v18[7] + 8 * result) = a1;
    ++v18[2];

    return sub_1AF43C9F0(a2, a3);
  }

  return result;
}

uint64_t sub_1AF85414C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AFDFC128();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_1AF41A390(a2);
  v15 = v14;
  v16 = v12[3];
  result = v12[2] + ((v14 & 1) == 0);
  if (v16 >= result && (a3 & 1) != 0)
  {
LABEL_6:
    v18 = *v4;
    if (v15)
    {
LABEL_7:
      *(v18[7] + 8 * v13) = a1;
      return result;
    }

    goto LABEL_10;
  }

  if (v16 >= result && (a3 & 1) == 0)
  {
    result = sub_1AF8485E0();
    goto LABEL_6;
  }

  sub_1AF833938(result, a3 & 1);
  result = sub_1AF41A390(a2);
  if ((v15 & 1) != (v19 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v13 = result;
  v18 = *v4;
  if (v15)
  {
    goto LABEL_7;
  }

LABEL_10:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1AF843704(v13, v11, a1, v18);
}

unint64_t sub_1AF8542E4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_1AF41A5E0(a2);
  v10 = v9;
  v11 = *(v7 + 24);
  v12 = *(v7 + 16) + ((v9 & 1) == 0);
  if (v11 < v12 || (a3 & 1) == 0)
  {
    if (v11 < v12 || (a3 & 1) != 0)
    {
      sub_1AF833CD4(v12, a3 & 1, &qword_1EB638258, &qword_1ED72E0B0, &off_1E7A77B00, &unk_1EB638260);
      result = sub_1AF41A5E0(a2);
      if ((v10 & 1) != (v14 & 1))
      {
        sub_1AF0D4478(0, &qword_1ED72E0B0, &off_1E7A77B00);
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v13 = result;
      sub_1AF84885C(&qword_1EB638258, &qword_1ED72E0B0, &off_1E7A77B00, &unk_1EB638260);
      result = v13;
    }
  }

  v15 = *v4;
  if (v10)
  {
    *(v15[7] + 8 * result) = a1;
  }

  else
  {
    v15[(result >> 6) + 8] |= 1 << result;
    *(v15[6] + 8 * result) = a2;
    *(v15[7] + 8 * result) = a1;
    ++v15[2];

    return a2;
  }

  return result;
}

unint64_t sub_1AF854488(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_1AF41A630(a2);
  v10 = v9;
  v11 = *(v7 + 24);
  v12 = *(v7 + 16) + ((v9 & 1) == 0);
  if (v11 < v12 || (a3 & 1) == 0)
  {
    if (v11 < v12 || (a3 & 1) != 0)
    {
      sub_1AF833CD4(v12, a3 & 1, &unk_1EB63F3B0, &qword_1ED72E050, &off_1E7A77B30, &qword_1EB638270);
      result = sub_1AF41A630(a2);
      if ((v10 & 1) != (v14 & 1))
      {
        sub_1AF0D4478(0, &qword_1ED72E050, &off_1E7A77B30);
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v13 = result;
      sub_1AF84885C(&unk_1EB63F3B0, &qword_1ED72E050, &off_1E7A77B30, &qword_1EB638270);
      result = v13;
    }
  }

  v15 = *v4;
  if (v10)
  {
    *(v15[7] + 8 * result) = a1;
  }

  else
  {
    v15[(result >> 6) + 8] |= 1 << result;
    *(v15[6] + 8 * result) = a2;
    *(v15[7] + 8 * result) = a1;
    ++v15[2];

    return a2;
  }

  return result;
}

unint64_t sub_1AF85462C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449D3C(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF833F28(v13, a3 & 1);
      result = sub_1AF449D3C(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF8489C0();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

uint64_t sub_1AF85474C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF834424(v13, a3 & 1);
      v9 = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = v9;
      sub_1AF848C90();
      v9 = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    return sub_1AF85A0C0(a1, v16[7] + 8 * v9, sub_1AF0D54FC);
  }

  v16[(v9 >> 6) + 8] |= 1 << v9;
  *(v16[6] + 8 * v9) = a2;
  result = sub_1AF0D6D88(a1, v16[7] + 8 * v9, sub_1AF0D54FC);
  ++v16[2];
  return result;
}

void *sub_1AF854898(const void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF8349E8(v13, a3 & 1);
      v9 = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = v9;
      sub_1AF848FE4();
      v9 = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    return sub_1AF859D48(a1, v16[7] + 440 * v9, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
  }

  v16[(v9 >> 6) + 8] |= 1 << v9;
  *(v16[6] + 8 * v9) = a2;
  result = memcpy((v16[7] + 440 * v9), a1, 0x1B1uLL);
  ++v16[2];
  return result;
}

unint64_t sub_1AF8549FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF0D3F10(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF8351B8(v13, a3 & 1, sub_1AF4471A0);
      result = sub_1AF0D3F10(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF849328(sub_1AF4471A0);
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

uint64_t sub_1AF854B88(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = HIDWORD(a2) & 1;
  v9 = a2;
  v10 = sub_1AF419B74(a2 | (v8 << 32));
  v12 = v11;
  v13 = v7[3];
  v14 = v7[2] + ((v11 & 1) == 0);
  if (v13 >= v14 && (a3 & 1) != 0)
  {
LABEL_6:
    v15 = *v4;
    if (v12)
    {
LABEL_7:
      v16 = v15[7];
      v17 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
      return sub_1AF85A0C0(a1, v16 + *(*(v17 - 8) + 72) * v10, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    }

    goto LABEL_10;
  }

  if (v13 >= v14 && (a3 & 1) == 0)
  {
    sub_1AF8494C8();
    goto LABEL_6;
  }

  sub_1AF835420(v14, a3 & 1);
  v19 = sub_1AF419B74(v9 | (v8 << 32));
  if ((v12 & 1) != (v20 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v10 = v19;
  v15 = *v4;
  if (v12)
  {
    goto LABEL_7;
  }

LABEL_10:

  return sub_1AF84380C(v10, v9 | (v8 << 32), a1, v15);
}

uint64_t sub_1AF854CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1AF419914(a3, a4);
  v15 = v14;
  v16 = *(v12 + 24);
  v17 = *(v12 + 16) + ((v14 & 1) == 0);
  if (v16 < v17 || (a5 & 1) == 0)
  {
    if (v16 < v17 || (a5 & 1) != 0)
    {
      sub_1AF8357A0(v17, a5 & 1);
      v13 = sub_1AF419914(a3, a4);
      if ((v15 & 1) != (v19 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v13;
      sub_1AF849704();
      v13 = v18;
    }
  }

  v20 = *v6;
  if (v15)
  {
    v21 = (v20[7] + 16 * v13);
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    v20[(v13 >> 6) + 8] |= 1 << v13;
    v23 = (v20[6] + 16 * v13);
    *v23 = a3;
    v23[1] = a4;
    v24 = (v20[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
    ++v20[2];
  }
}

uint64_t sub_1AF854E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1AF419914(a4, a5);
  v17 = v16;
  v18 = *(v14 + 24);
  v19 = *(v14 + 16) + ((v16 & 1) == 0);
  if (v18 < v19 || (a6 & 1) == 0)
  {
    if (v18 < v19 || (a6 & 1) != 0)
    {
      sub_1AF835A74(v19, a6 & 1);
      v15 = sub_1AF419914(a4, a5);
      if ((v17 & 1) != (v21 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v15;
      sub_1AF8498A8();
      v15 = v20;
    }
  }

  v22 = *v7;
  if (v17)
  {
    v23 = (v22[7] + 24 * v15);
    *v23 = a1;
    v23[1] = a2;
    v23[2] = a3;
  }

  else
  {
    v22[(v15 >> 6) + 8] |= 1 << v15;
    v25 = (v22[6] + 16 * v15);
    *v25 = a4;
    v25[1] = a5;
    v26 = (v22[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
    ++v22[2];
  }
}

void sub_1AF855020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1AF41AC1C(a3, a4, a5, a6 & 1);
  v19 = v18;
  v20 = *(v16 + 24);
  v21 = *(v16 + 16) + ((v18 & 1) == 0);
  if (v20 < v21 || (a7 & 1) == 0)
  {
    if (v20 < v21 || (a7 & 1) != 0)
    {
      sub_1AF83656C(v21, a7 & 1);
      v17 = sub_1AF41AC1C(a3, a4, a5, a6 & 1);
      if ((v19 & 1) != (v23 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = v17;
      sub_1AF849DB4();
      v17 = v22;
    }
  }

  v24 = *v8;
  if (v19)
  {
    v25 = (v24[7] + 16 * v17);
    *v25 = a1;
    v25[1] = a2;

    swift_unknownObjectRelease();
  }

  else
  {
    v24[(v17 >> 6) + 8] |= 1 << v17;
    v26 = v24[6] + 32 * v17;
    *v26 = a3;
    *(v26 + 8) = a4;
    *(v26 + 16) = a5;
    *(v26 + 24) = a6 & 1;
    v27 = (v24[7] + 16 * v17);
    *v27 = a1;
    v27[1] = a2;
    ++v24[2];
  }
}

unint64_t sub_1AF8551C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449CBC(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF83683C(v13, a3 & 1);
      result = sub_1AF449CBC(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF849F40();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 4 * result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF8552F8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF419D60(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF836D18(v13, a3 & 1);
      result = sub_1AF419D60(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF847B80(&qword_1ED726AF0, MEMORY[0x1E69E6B70], &type metadata for Scheduler.Tag, MEMORY[0x1E69E6B78]);
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + result) = a1 & 1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + result) = a1 & 1;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF855434(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF419D60(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF82DD74(v13, a3 & 1);
      result = sub_1AF419D60(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF84543C(&qword_1ED726AE0, MEMORY[0x1E69E6B70], MEMORY[0x1E69E6B78]);
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF855560(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AF449CB8(a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF836F94(v15, a4 & 1);
      result = sub_1AF449CB8(a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1AF84A1F4();
      result = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    v19 = (v18[7] + 16 * result);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = a3;
    v20 = (v18[7] + 16 * result);
    *v20 = a1;
    v20[1] = a2;
    ++v18[2];
  }

  return result;
}

unint64_t sub_1AF8556AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF837488(v13, a3 & 1);
      result = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF84CAE4(&qword_1ED723010, MEMORY[0x1E69E6530], &type metadata for TextureCache.AsyncGroupRequestState, MEMORY[0x1E69E6540]);
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

uint64_t sub_1AF855808(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AF419914(a2, a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF837C44(v15, a4 & 1);
      v11 = sub_1AF419914(a2, a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v11;
      sub_1AF84A914();
      v11 = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    v19 = v18[7] + 48 * v11;

    return sub_1AF85A5A4(a1, v19);
  }

  else
  {
    v18[(v11 >> 6) + 8] |= 1 << v11;
    v21 = (v18[6] + 16 * v11);
    *v21 = a2;
    v21[1] = a3;
    v22 = (v18[7] + 48 * v11);
    v23 = *a1;
    v24 = a1[1];
    *(v22 + 29) = *(a1 + 29);
    *v22 = v23;
    v22[1] = v24;
    ++v18[2];
  }
}

id sub_1AF8559DC(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_1AF0D5878(a2);
  v14 = v13;
  v15 = *(v11 + 24);
  v16 = *(v11 + 16) + ((v13 & 1) == 0);
  if (v15 < v16 || (a3 & 1) == 0)
  {
    if (v15 < v16 || (a3 & 1) != 0)
    {
      sub_1AF837F40(v16, a3 & 1, a5);
      v12 = sub_1AF0D5878(a2);
      if ((v14 & 1) != (v18 & 1))
      {
        type metadata accessor for VFXTriggerType(0);
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v12;
      a4();
      v12 = v17;
    }
  }

  v19 = *v8;
  if (v14)
  {
    *(v19[7] + 8 * v12) = a1;
  }

  else
  {
    v19[(v12 >> 6) + 8] |= 1 << v12;
    *(v19[6] + 8 * v12) = a2;
    *(v19[7] + 8 * v12) = a1;
    ++v19[2];

    return a2;
  }
}

id sub_1AF855B50(uint64_t a1, void *a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1AF41AD6C(a2, a3);
  v12 = v11;
  v13 = v9[3];
  v14 = v9[2] + ((v11 & 1) == 0);
  if (v13 >= v14 && (a4 & 1) != 0)
  {
LABEL_6:
    v15 = *v5;
    if (v12)
    {
LABEL_7:
      v16 = v15[7];
      v17 = type metadata accessor for TriggerScriptRunnerSystem.TriggerParam(0);
      return sub_1AF85A0C0(a1, v16 + *(*(v17 - 8) + 72) * v10, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
    }

    goto LABEL_10;
  }

  if (v13 >= v14 && (a4 & 1) == 0)
  {
    sub_1AF84AC6C();
    goto LABEL_6;
  }

  sub_1AF8381E4(v14, a4 & 1);
  v19 = sub_1AF41AD6C(a2, a3);
  if ((v12 & 1) != (v20 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v10 = v19;
  v15 = *v5;
  if (v12)
  {
    goto LABEL_7;
  }

LABEL_10:
  sub_1AF8439B8(v10, a2, a3, a1, v15);
  v21 = a3;

  return a2;
}

void sub_1AF855CC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AF449D3C(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF8385A0(v13, a3 & 1);
      v9 = sub_1AF449D3C(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v14 = v9;
      sub_1AF84AEA8();
      v9 = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v9);
    *(v17 + 8 * v9) = a1;
  }

  else
  {
    v16[(v9 >> 6) + 8] |= 1 << v9;
    *(v16[6] + 8 * v9) = a2;
    *(v16[7] + 8 * v9) = a1;
    ++v16[2];
  }
}

unint64_t sub_1AF855DF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449D3C(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF83883C(v13, a3 & 1, sub_1AF442BB0);
      result = sub_1AF449D3C(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF84B020(sub_1AF442BB0);
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF855F54(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AF41ACD4(a2, a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF838D70(v15, a4 & 1);
      result = sub_1AF41ACD4(a2, a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1AF84B2EC();
      result = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    v19 = v18[7] + 96 * result;

    return sub_1AF85B378(a1, v19);
  }

  else
  {
    v18[(result >> 6) + 8] |= 1 << result;
    v20 = (v18[6] + 16 * result);
    *v20 = a2;
    v20[1] = a3;
    v21 = (v18[7] + 96 * result);
    v22 = a1[1];
    *v21 = *a1;
    v21[1] = v22;
    v23 = a1[2];
    v24 = a1[3];
    v25 = a1[4];
    *(v21 + 73) = *(a1 + 73);
    v21[3] = v24;
    v21[4] = v25;
    v21[2] = v23;
    ++v18[2];
  }

  return result;
}

unint64_t sub_1AF8560D4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AF41ACD4(a2, a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF83905C(v15, a4 & 1);
      result = sub_1AF41ACD4(a2, a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1AF84B498();
      result = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    v19 = v18[7] + 48 * result;

    return sub_1AF85AB8C(a1, v19);
  }

  else
  {
    v18[(result >> 6) + 8] |= 1 << result;
    v20 = (v18[6] + 16 * result);
    *v20 = a2;
    v20[1] = a3;
    v21 = (v18[7] + 48 * result);
    v22 = *a1;
    v23 = a1[1];
    *(v21 + 25) = *(a1 + 25);
    *v21 = v22;
    v21[1] = v23;
    ++v18[2];
  }

  return result;
}

unint64_t sub_1AF856244(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF419D60(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF839324(v13, a3 & 1);
      result = sub_1AF419D60(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF844CD8(sub_1AF446240);
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF856390(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AF449D3C(a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF839588(v15, a4 & 1);
      result = sub_1AF449D3C(a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1AF84B634();
      result = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    v19 = (v18[7] + 16 * result);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = a3;
    v20 = (v18[7] + 16 * result);
    *v20 = a1;
    v20[1] = a2;
    ++v18[2];
  }

  return result;
}

unint64_t sub_1AF8564DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AF419914(a2, a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF839810(v15, a4 & 1);
      result = sub_1AF419914(a2, a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1AF84B794();
      result = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    *(v18[7] + 8 * result) = a1;
  }

  else
  {
    v18[(result >> 6) + 8] |= 1 << result;
    v19 = (v18[6] + 16 * result);
    *v19 = a2;
    v19[1] = a3;
    *(v18[7] + 8 * result) = a1;
    ++v18[2];
  }

  return result;
}

uint64_t sub_1AF856638(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = HIDWORD(a2) & 1;
  v9 = a2;
  v10 = sub_1AF41A190(a2 | (v8 << 32));
  v12 = v11;
  v13 = v7[3];
  v14 = v7[2] + ((v11 & 1) == 0);
  if (v13 < v14 || (a3 & 1) == 0)
  {
    if (v13 < v14 || (a3 & 1) != 0)
    {
      sub_1AF839CF0(v14, a3 & 1);
      v23 = sub_1AF41A190(v9 | (v8 << 32));
      if ((v12 & 1) != (v24 & 1))
      {
        sub_1AF85B840(0, &qword_1ED7268C0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

      v10 = v23;
      v15 = *v4;
      if (v12)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

    sub_1AF84B914();
  }

  v15 = *v4;
  if (v12)
  {
LABEL_7:
    v16 = v15[7];
    v17 = sub_1AFDFC128();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v10;

    return v19(v21, a1, v20);
  }

LABEL_12:

  return sub_1AF843A5C(v10, v9 | (v8 << 32), a1, v15);
}

void sub_1AF8567D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1AF449D3C(a4);
  v15 = v14;
  v16 = *(v12 + 24);
  v17 = *(v12 + 16) + ((v14 & 1) == 0);
  if (v16 < v17 || (a5 & 1) == 0)
  {
    if (v16 < v17 || (a5 & 1) != 0)
    {
      sub_1AF83A05C(v17, a5 & 1);
      v13 = sub_1AF449D3C(a4);
      if ((v15 & 1) != (v19 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v18 = v13;
      sub_1AF84BB88();
      v13 = v18;
    }
  }

  v20 = *v6;
  if (v15)
  {
    v21 = (v20[7] + 24 * v13);
    *v21 = a1;
    v21[1] = a2;
    v21[2] = a3;

    swift_unknownObjectRelease();
  }

  else
  {
    v20[(v13 >> 6) + 8] |= 1 << v13;
    *(v20[6] + 8 * v13) = a4;
    v22 = (v20[7] + 24 * v13);
    *v22 = a1;
    v22[1] = a2;
    v22[2] = a3;
    ++v20[2];
  }
}

void sub_1AF856930(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AF41A8F8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF83A300(v13, a3 & 1);
      v9 = sub_1AF41A8F8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v14 = v9;
      sub_1AF84BCF4();
      v9 = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    v17 = v16[7] + 40 * v9;
    *(v17 + 32) = *(a1 + 32);
    v18 = *(a1 + 16);
    *v17 = *a1;
    *(v17 + 16) = v18;

    swift_unknownObjectRelease();
  }

  else
  {
    v16[(v9 >> 6) + 8] |= 1 << v9;
    v19 = v16[6] + 40 * v9;
    v20 = *(a2 + 16);
    *v19 = *a2;
    *(v19 + 16) = v20;
    *(v19 + 32) = *(a2 + 32);
    v21 = v16[7] + 40 * v9;
    v22 = *(a1 + 16);
    *v21 = *a1;
    *(v21 + 16) = v22;
    *(v21 + 32) = *(a1 + 32);
    ++v16[2];

    swift_unknownObjectRetain();
  }
}

void sub_1AF856AB4(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *a1;
  v10 = a1[1];
  v26 = a1[2];
  v27 = *(a1 + 24);
  v28 = *(a1 + 32);
  v29 = *(a1 + 33);
  v30 = *(a1 + 34);
  v31 = *(a1 + 35);
  v32 = *(a1 + 9);
  v33 = *(a1 + 10);
  v34 = *(a1 + 11);
  v11 = *(a1 + 50);
  v12 = *(a1 + 24);
  v35 = a1[7];
  v36 = a1[8];
  v13 = *v4;
  v14 = sub_1AF41A680(a2, a3);
  v16 = v15;
  v17 = *(v13 + 24);
  v18 = *(v13 + 16) + ((v15 & 1) == 0);
  if (v17 < v18 || (a4 & 1) == 0)
  {
    if (v17 < v18 || (a4 & 1) != 0)
    {
      sub_1AF83AAE4(v18, a4 & 1);
      v14 = sub_1AF41A680(a2, a3);
      if ((v16 & 1) != (v20 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v14;
      sub_1AF84C0F8();
      v14 = v19;
    }
  }

  if (v16)
  {
    v21 = *(*v5 + 56) + 72 * v14;
    v37[0] = *v21;
    v23 = *(v21 + 32);
    v22 = *(v21 + 48);
    v24 = *(v21 + 16);
    v38 = *(v21 + 64);
    v37[2] = v23;
    v37[3] = v22;
    v37[1] = v24;
    *v21 = v9;
    *(v21 + 8) = v10;
    *(v21 + 16) = v26;
    *(v21 + 24) = v27;
    *(v21 + 32) = v28;
    *(v21 + 33) = v29;
    *(v21 + 34) = v30;
    *(v21 + 35) = v31;
    *(v21 + 36) = v32;
    *(v21 + 40) = v33;
    *(v21 + 44) = v34;
    *(v21 + 50) = (v12 | (v11 << 16)) >> 16;
    *(v21 + 48) = v12;
    *(v21 + 56) = v35;
    *(v21 + 64) = v36;
    sub_1AF85A428(v37, sub_1AF4464AC);
  }

  else
  {
    v25 = *v5;
    v39[0] = v9;
    v39[1] = v10;
    v39[2] = v26;
    v40 = v27;
    v41 = v28;
    v42 = v29;
    v43 = v30;
    v44 = v31;
    v45 = v32;
    v46 = v33;
    v47 = v34;
    v48 = v12;
    v49 = (v12 | (v11 << 16)) >> 16;
    v50 = v35;
    v51 = v36;
    sub_1AF843BB8(v14, a2, a3, v39, v25);
  }
}

uint64_t sub_1AF856E44(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AF419914(a2, a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF83AF9C(v15, a4 & 1);
      v11 = sub_1AF419914(a2, a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v11;
      sub_1AF84C3E4();
      v11 = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    v19 = v18[7] + 56 * v11;

    return sub_1AF85ADAC(a1, v19);
  }

  else
  {
    v18[(v11 >> 6) + 8] |= 1 << v11;
    v21 = (v18[6] + 16 * v11);
    *v21 = a2;
    v21[1] = a3;
    v22 = v18[7] + 56 * v11;
    v23 = *a1;
    v24 = a1[1];
    v25 = a1[2];
    *(v22 + 48) = *(a1 + 6);
    *(v22 + 16) = v24;
    *(v22 + 32) = v25;
    *v22 = v23;
    ++v18[2];
  }
}

uint64_t sub_1AF857020(uint64_t a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AF41A308(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF83B2D0(v13, a3 & 1);
      v9 = sub_1AF41A308(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = v9;
      sub_1AF84C60C();
      v9 = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * v9) = a1;
  }

  else
  {
    v16[(v9 >> 6) + 8] |= 1 << v9;
    v18 = v16[6] + 40 * v9;
    v19 = *a2;
    v20 = a2[1];
    *(v18 + 32) = *(a2 + 4);
    *v18 = v19;
    *(v18 + 16) = v20;
    *(v16[7] + 8 * v9) = a1;
    ++v16[2];
    return sub_1AF444F60(a2, v21);
  }
}

unint64_t sub_1AF8571B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AF0D3F10(a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF83C0C8(v15, a4 & 1);
      result = sub_1AF0D3F10(a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1AF84CDE4();
      result = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    v19 = (v18[7] + 16 * result);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = a3;
    v20 = (v18[7] + 16 * result);
    *v20 = a1;
    v20[1] = a2;
    ++v18[2];
  }

  return result;
}

unint64_t sub_1AF857304(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF0D3F10(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF83C350(v13, a3 & 1);
      result = sub_1AF0D3F10(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF84CF84();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    return sub_1AF859D48(a1, v16[7] + 120 * result, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
  }

  v16[(result >> 6) + 8] |= 1 << result;
  *(v16[6] + 8 * result) = a2;
  v17 = v16[7] + 120 * result;
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[3];
  *(v17 + 32) = a1[2];
  *(v17 + 48) = v20;
  *v17 = v18;
  *(v17 + 16) = v19;
  v21 = a1[4];
  v22 = a1[5];
  v23 = a1[6];
  *(v17 + 112) = *(a1 + 14);
  *(v17 + 80) = v22;
  *(v17 + 96) = v23;
  *(v17 + 64) = v21;
  ++v16[2];
  return result;
}

uint64_t sub_1AF857470(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AF41AED0(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 >= v13 && (a3 & 1) != 0)
  {
LABEL_6:
    v14 = *v4;
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_12:
    sub_1AF447040(a2, v22);
    v14[(v9 >> 6) + 8] |= 1 << v9;
    result = sub_1AF4473A0(v22, v14[6] + 48 * v9);
    v19 = v14[7] + 40 * v9;
    v20 = *a1;
    v21 = a1[1];
    *(v19 + 32) = *(a1 + 4);
    *v19 = v20;
    *(v19 + 16) = v21;
    ++v14[2];
    return result;
  }

  if (v12 >= v13 && (a3 & 1) == 0)
  {
    sub_1AF84D184();
    goto LABEL_6;
  }

  sub_1AF83C6A4(v13, a3 & 1);
  v17 = sub_1AF41AED0(a2);
  if ((v11 & 1) != (v18 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v9 = v17;
  v14 = *v4;
  if ((v11 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v15 = v14[7] + 40 * v9;

  return sub_1AF85B4F8(a1, v15);
}

unint64_t sub_1AF8575EC(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AF419914(a1, a2);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a3 & 1) == 0)
  {
    if (v14 < v15 || (a3 & 1) != 0)
    {
      sub_1AF83CCCC(v15, a3 & 1);
      result = sub_1AF419914(a1, a2);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1AF84D4D8();
      result = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    *(v18[7] + 4 * result) = a4;
  }

  else
  {
    v18[(result >> 6) + 8] |= 1 << result;
    v19 = (v18[6] + 16 * result);
    *v19 = a1;
    v19[1] = a2;
    *(v18[7] + 4 * result) = a4;
    ++v18[2];
  }

  return result;
}

uint64_t sub_1AF857734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1AF41AFEC(a2, a3, a4);
  v15 = v14;
  v16 = *(v12 + 24);
  v17 = *(v12 + 16) + ((v14 & 1) == 0);
  if (v16 < v17 || (a5 & 1) == 0)
  {
    if (v16 < v17 || (a5 & 1) != 0)
    {
      sub_1AF83CF64(v17, a5 & 1);
      v13 = sub_1AF41AFEC(a2, a3, a4);
      if ((v15 & 1) != (v19 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v13;
      sub_1AF84D658();
      v13 = v18;
    }
  }

  v20 = *v6;
  if (v15)
  {
    *(v20[7] + 8 * v13) = a1;
  }

  else
  {
    v20[(v13 >> 6) + 8] |= 1 << v13;
    v22 = v20[6] + 24 * v13;
    *v22 = a2;
    *(v22 + 8) = a3;
    *(v22 + 16) = a4;
    *(v20[7] + 8 * v13) = a1;
    ++v20[2];
  }
}

unint64_t sub_1AF8578C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t *a5, uint64_t a6)
{
  v9 = v6;
  v14 = *v6;
  result = sub_1AF419914(a2, a3);
  v17 = v16;
  v18 = *(v14 + 24);
  v19 = *(v14 + 16) + ((v16 & 1) == 0);
  if (v18 < v19 || (a4 & 1) == 0)
  {
    if (v18 < v19 || (a4 & 1) != 0)
    {
      sub_1AF83B5DC(v19, a4 & 1, a5, a6);
      result = sub_1AF419914(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = result;
      sub_1AF84C7B4(a5, a6);
      result = v20;
    }
  }

  v22 = *v9;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    v22[(result >> 6) + 8] |= 1 << result;
    v23 = (v22[6] + 16 * result);
    *v23 = a2;
    v23[1] = a3;
    *(v22[7] + 8 * result) = a1;
    ++v22[2];
  }

  return result;
}

void sub_1AF857A38(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1AF419A14(a4);
  v15 = v14;
  v16 = *(v12 + 24);
  v17 = *(v12 + 16) + ((v14 & 1) == 0);
  if (v16 < v17 || (a5 & 1) == 0)
  {
    if (v16 < v17 || (a5 & 1) != 0)
    {
      sub_1AF83D2FC(v17, a5 & 1);
      v13 = sub_1AF419A14(a4);
      if ((v15 & 1) != (v19 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v18 = v13;
      sub_1AF84D7CC();
      v13 = v18;
    }
  }

  v20 = *v6;
  if (v15)
  {
    v21 = v20[7] + 24 * v13;
    *v21 = a1;
    *(v21 + 8) = a2;
    *(v21 + 16) = a3 & 1;
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    v20[(v13 >> 6) + 8] |= 1 << v13;
    v22 = (v20[6] + 96 * v13);
    v23 = *(a4 + 48);
    v22[2] = *(a4 + 32);
    v22[3] = v23;
    v24 = *(a4 + 80);
    v22[4] = *(a4 + 64);
    v22[5] = v24;
    v25 = *(a4 + 16);
    *v22 = *a4;
    v22[1] = v25;
    v26 = v20[7] + 24 * v13;
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3 & 1;
    ++v20[2];
  }
}

unint64_t sub_1AF857BC4(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF83DB88(v13, a3 & 1);
      result = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF84D980();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    v17 = v16[7] + (result << 6);

    return sub_1AF85A360(a1, v17);
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    v18 = (v16[7] + (result << 6));
    v19 = *a1;
    v20 = a1[1];
    v21 = a1[3];
    v18[2] = a1[2];
    v18[3] = v21;
    *v18 = v19;
    v18[1] = v20;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF857D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1AF449D3C(a5);
  v17 = v16;
  v18 = *(v14 + 24);
  v19 = *(v14 + 16) + ((v16 & 1) == 0);
  if (v18 < v19 || (a6 & 1) == 0)
  {
    if (v18 < v19 || (a6 & 1) != 0)
    {
      sub_1AF83DEB0(v19, a6 & 1);
      result = sub_1AF449D3C(a5);
      if ((v17 & 1) != (v21 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = result;
      sub_1AF84DB20();
      result = v20;
    }
  }

  v22 = *v7;
  if (v17)
  {
    v23 = (v22[7] + 32 * result);
    *v23 = a1;
    v23[1] = a2;
    v23[2] = a3;
    v23[3] = a4;
  }

  else
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a5;
    v24 = (v22[7] + 32 * result);
    *v24 = a1;
    v24[1] = a2;
    v24[2] = a3;
    v24[3] = a4;
    ++v22[2];
  }

  return result;
}

uint64_t sub_1AF857E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1AF419914(a5, a6);
  v19 = v18;
  v20 = *(v16 + 24);
  v21 = *(v16 + 16) + ((v18 & 1) == 0);
  if (v20 < v21 || (a7 & 1) == 0)
  {
    if (v20 < v21 || (a7 & 1) != 0)
    {
      sub_1AF83E15C(v21, a7 & 1);
      v17 = sub_1AF419914(a5, a6);
      if ((v19 & 1) != (v23 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v22 = v17;
      sub_1AF84DCB4();
      v17 = v22;
    }
  }

  v24 = *v8;
  if (v19)
  {
    v25 = (v24[7] + 32 * v17);
    *v25 = a1;
    v25[1] = a2;
    v25[2] = a3;
    v25[3] = a4;
  }

  else
  {
    v24[(v17 >> 6) + 8] |= 1 << v17;
    v27 = (v24[6] + 16 * v17);
    *v27 = a5;
    v27[1] = a6;
    v28 = (v24[7] + 32 * v17);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;
    ++v24[2];
  }
}

uint64_t sub_1AF858034(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AFDFC128();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_1AF41A390(a2);
  v15 = v14;
  v16 = v12[3];
  result = v12[2] + ((v14 & 1) == 0);
  if (v16 >= result && (a3 & 1) != 0)
  {
LABEL_6:
    v18 = *v4;
    if (v15)
    {
LABEL_7:
      *(v18[7] + 8 * v13) = a1;
      return result;
    }

    goto LABEL_10;
  }

  if (v16 >= result && (a3 & 1) == 0)
  {
    result = sub_1AF84DE7C();
    goto LABEL_6;
  }

  sub_1AF83E42C(result, a3 & 1);
  result = sub_1AF41A390(a2);
  if ((v15 & 1) != (v19 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v13 = result;
  v18 = *v4;
  if (v15)
  {
    goto LABEL_7;
  }

LABEL_10:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1AF843704(v13, v11, a1, v18);
}

uint64_t sub_1AF8581DC(uint64_t a1, uint64_t a2, char a3, void (*a4)(void, __n128))
{
  v6 = v4;
  v24 = a1;
  v9 = sub_1AFDFC318();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v14 = sub_1AF419940(a2);
  v16 = v15;
  v17 = v13[3];
  v18 = v13[2] + ((v15 & 1) == 0);
  if (v17 >= v18 && (a3 & 1) != 0)
  {
LABEL_6:
    v19 = *v6;
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_12:
    (*(v10 + 16))(v12, a2, v9);
    return sub_1AF843CB0(v14, v12, v24, v19);
  }

  if (v17 >= v18 && (a3 & 1) == 0)
  {
    sub_1AF84E118(a4);
    goto LABEL_6;
  }

  sub_1AF83E7DC(v18, a3 & 1, a4);
  v21 = sub_1AF419940(a2);
  if ((v16 & 1) != (v22 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v14 = v21;
  v19 = *v6;
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  *(v19[7] + 8 * v14) = v24;
}

uint64_t sub_1AF8583B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_1AF419940(a2);
  v15 = v14;
  v16 = v12[3];
  v17 = v12[2] + ((v14 & 1) == 0);
  if (v16 >= v17 && (a3 & 1) != 0)
  {
LABEL_6:
    v18 = *v4;
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_12:
    (*(v9 + 16))(v11, a2, v8);
    return sub_1AF843CB0(v13, v11, a1, v18);
  }

  if (v16 >= v17 && (a3 & 1) == 0)
  {
    sub_1AF84E38C();
    goto LABEL_6;
  }

  sub_1AF83EB68(v17, a3 & 1, sub_1AF449580);
  v20 = sub_1AF419940(a2);
  if ((v15 & 1) != (v21 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v13 = v20;
  v18 = *v4;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  *(v18[7] + 8 * v13) = a1;
}

unint64_t sub_1AF858584(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF0D3F10(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF83EEF4(v13, a3 & 1);
      result = sub_1AF0D3F10(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF84543C(&qword_1EB638370, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF8586B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AF419914(a2, a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF83F3CC(v15, a4 & 1);
      v11 = sub_1AF419914(a2, a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v11;
      sub_1AF84E770();
      v11 = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v11);
    *(v19 + 8 * v11) = a1;

    return sub_1AF445BE4(v20);
  }

  else
  {
    v18[(v11 >> 6) + 8] |= 1 << v11;
    v22 = (v18[6] + 16 * v11);
    *v22 = a2;
    v22[1] = a3;
    *(v18[7] + 8 * v11) = a1;
    ++v18[2];
  }
}

unint64_t sub_1AF858818(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AF449CB8(a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF82C678(v15, a4 & 1);
      result = sub_1AF449CB8(a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1AF844684();
      result = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    v19 = (v18[7] + 16 * result);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = a3;
    v20 = (v18[7] + 16 * result);
    *v20 = a1;
    v20[1] = a2;
    ++v18[2];
  }

  return result;
}

unint64_t sub_1AF858964(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF840164(v13, a3 & 1, &unk_1EB6383C0, &qword_1EB63F3E0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
      result = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF84EED0();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF858AC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF840164(v13, a3 & 1, &qword_1EB6383A8, &qword_1EB6383B0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
      result = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF84F054();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF858C2C(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF449CB8(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF8403C0(v13, a3 & 1);
      result = sub_1AF449CB8(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF84F1D8();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    v17 = v16[7] + 240 * result;

    return sub_1AF85A488(a1, v17);
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = a2;
    v18 = (v16[7] + 240 * result);
    v19 = *a1;
    v20 = a1[2];
    v18[1] = a1[1];
    v18[2] = v20;
    *v18 = v19;
    v21 = a1[3];
    v22 = a1[4];
    v23 = a1[6];
    v18[5] = a1[5];
    v18[6] = v23;
    v18[3] = v21;
    v18[4] = v22;
    v24 = a1[7];
    v25 = a1[8];
    v26 = a1[10];
    v18[9] = a1[9];
    v18[10] = v26;
    v18[7] = v24;
    v18[8] = v25;
    v27 = a1[11];
    v28 = a1[12];
    v29 = a1[14];
    v18[13] = a1[13];
    v18[14] = v29;
    v18[11] = v27;
    v18[12] = v28;
    ++v16[2];
  }

  return result;
}

unint64_t sub_1AF858DA8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AF41B320(a2);
  v11 = v10;
  v12 = *(v8 + 24);
  v13 = *(v8 + 16) + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF840FA8(v13, a3 & 1);
      result = sub_1AF41B320(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v14 = result;
      sub_1AF84F854();
      result = v14;
    }
  }

  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * result) = a1;
  }

  else
  {
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + result) = a2;
    *(v16[7] + 8 * result) = a1;
    ++v16[2];
  }

  return result;
}

void sub_1AF858EE0(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void), uint64_t a7)
{
  v11 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = v17;
  v19 = *(v15 + 24);
  v20 = *(v15 + 16) + ((v17 & 1) == 0);
  if (v19 < v20 || (a3 & 1) == 0)
  {
    if (v19 < v20 || (a3 & 1) != 0)
    {
      a6(v20, a3 & 1);
      v16 = a4(a2);
      if ((v18 & 1) != (v22 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v16;
      sub_1AF84F9C0(a5);
      v16 = v21;
    }
  }

  v23 = *v11;
  if (v18)
  {
    *(v23[7] + 8 * v16) = a1;

    swift_unknownObjectRelease();
  }

  else
  {
    v23[(v16 >> 6) + 8] |= 1 << v16;
    *(v23[6] + 8 * v16) = a2;
    *(v23[7] + 8 * v16) = a1;
    ++v23[2];
  }
}

unint64_t sub_1AF85904C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AF449CB8(a3);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 16) + ((v12 & 1) == 0);
  if (v14 < v15 || (a4 & 1) == 0)
  {
    if (v14 < v15 || (a4 & 1) != 0)
    {
      sub_1AF841470(v15, a4 & 1);
      result = sub_1AF449CB8(a3);
      if ((v13 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1AF84FB1C();
      result = v16;
    }
  }

  v18 = *v5;
  if (v13)
  {
    v19 = (v18[7] + 16 * result);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = a3;
    v20 = (v18[7] + 16 * result);
    *v20 = a1;
    v20[1] = a2;
    ++v18[2];
  }

  return result;
}

void sub_1AF85917C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1AF419914(a5, a6);
  v19 = v18;
  v20 = *(v16 + 24);
  v21 = *(v16 + 16) + ((v18 & 1) == 0);
  if (v20 < v21 || (a7 & 1) == 0)
  {
    if (v20 < v21 || (a7 & 1) != 0)
    {
      sub_1AF841984(v21, a7 & 1);
      v17 = sub_1AF419914(a5, a6);
      if ((v19 & 1) != (v23 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = v17;
      sub_1AF84FE04();
      v17 = v22;
    }
  }

  v24 = *v8;
  if (v19)
  {
    v25 = (v24[7] + 32 * v17);
    *v25 = a1;
    v25[1] = a2;
    v25[2] = a3;
    v25[3] = a4;

    swift_unknownObjectRelease();
  }

  else
  {
    v24[(v17 >> 6) + 8] |= 1 << v17;
    v26 = (v24[6] + 16 * v17);
    *v26 = a5;
    v26[1] = a6;
    v27 = (v24[7] + 32 * v17);
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
    v27[3] = a4;
    ++v24[2];
  }
}

uint64_t sub_1AF85938C(uint64_t a1, uint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v14 = *v6;
  v15 = sub_1AF419C3C(a2);
  v17 = v16;
  v18 = *(v14 + 24);
  v19 = *(v14 + 16) + ((v16 & 1) == 0);
  if (v18 < v19 || (a3 & 1) == 0)
  {
    if (v18 < v19 || (a3 & 1) != 0)
    {
      sub_1AF8421CC(v19, a3 & 1, a4, a5, a6);
      v15 = sub_1AF419C3C(a2);
      if ((v17 & 1) != (v21 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v15;
      sub_1AF8502DC(a4, a5, a6);
      v15 = v20;
    }
  }

  v22 = *v10;
  if (v17)
  {
    *(v22[7] + 8 * v15) = a1;
  }

  else
  {
    v22[(v15 >> 6) + 8] |= 1 << v15;
    v24 = v22[6] + 72 * v15;
    v25 = *(a2 + 16);
    v26 = *(a2 + 32);
    v27 = *(a2 + 48);
    *(v24 + 61) = *(a2 + 61);
    *(v24 + 32) = v26;
    *(v24 + 48) = v27;
    *(v24 + 16) = v25;
    *v24 = *a2;
    *(v22[7] + 8 * v15) = a1;
    ++v22[2];
    return sub_1AF6B74A0(a2, v28);
  }
}

void sub_1AF85953C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void), uint64_t a7)
{
  v11 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = v17;
  v19 = *(v15 + 24);
  v20 = *(v15 + 16) + ((v17 & 1) == 0);
  if (v19 < v20 || (a3 & 1) == 0)
  {
    if (v19 < v20 || (a3 & 1) != 0)
    {
      a6(v20, a3 & 1);
      v16 = a4(a2);
      if ((v18 & 1) != (v22 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v16;
      a5();
      v16 = v21;
    }
  }

  v23 = *v11;
  if (v18)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v16);
    *(v24 + 8 * v16) = a1;
  }

  else
  {
    v23[(v16 >> 6) + 8] |= 1 << v16;
    *(v23[6] + v16) = a2;
    *(v23[7] + 8 * v16) = a1;
    ++v23[2];
  }
}

void sub_1AF8596D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1AF419914(a2, a3);
  v17 = v16;
  v18 = *(v14 + 24);
  v19 = *(v14 + 16) + ((v16 & 1) == 0);
  if (v18 < v19 || (a4 & 1) == 0)
  {
    if (v18 < v19 || (a4 & 1) != 0)
    {
      a6(v19, a4 & 1);
      v15 = sub_1AF419914(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v20 = v15;
      a5();
      v15 = v20;
    }
  }

  v22 = *v9;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v15);
    *(v23 + 8 * v15) = a1;
  }

  else
  {
    v22[(v15 >> 6) + 8] |= 1 << v15;
    v25 = (v22[6] + 16 * v15);
    *v25 = a2;
    v25[1] = a3;
    *(v22[7] + 8 * v15) = a1;
    ++v22[2];
  }
}

void sub_1AF859850(uint64_t a1)
{
  if (!qword_1EB63F358)
  {
    sub_1AF0D8108(255, &qword_1EB63F360, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F358);
    }
  }
}

uint64_t sub_1AF8598C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AF859924(uint64_t a1)
{
  if (!qword_1EB63F370)
  {
    sub_1AF0D4478(255, &unk_1ED726BA0, 0x1E696AC38);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63F370);
    }
  }
}

void sub_1AF85999C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EB63F380)
  {
    v4 = type metadata accessor for Query1(0, &type metadata for DoNotExport, &off_1F253D000, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB63F380);
    }
  }
}

unint64_t sub_1AF8599F8()
{
  result = qword_1EB63F388;
  if (!qword_1EB63F388)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VFXSaver.Layout, &type metadata for VFXSaver.Layout, v0, v1);
    atomic_store(result, &qword_1EB63F388);
  }

  return result;
}

uint64_t sub_1AF859D48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AF85B840(0, a3, a4, a5);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

void sub_1AF859DB8(uint64_t a1)
{
  if (!qword_1EB63F390)
  {
    type metadata accessor for ComponentsDataChunk();
    sub_1AF0D0DD8(255, &qword_1EB63D040, sub_1AF43A540, MEMORY[0x1E69E62F8]);
    sub_1AF85A9A0(qword_1EB63D048, type metadata accessor for ComponentsDataChunk, byte_1AFE6C954);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F390);
    }
  }
}

void sub_1AF859E94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1AFDFE5D8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}