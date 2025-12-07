void *sub_1AF42C43C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43D014(0);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *v4;
    v6 = *(v4 - 8);
    v7 = sub_1AF0D7FBC(v6);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + v7) = v6;
    *(v3[7] + 8 * v7) = v5;
    ++v3[2];

    v4 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42C520(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44389C();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 2;
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42C624(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43D8B0(0);
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;
  for (i = v1 - 1; ; --i)
  {
    v6 = *(v4 + 64);
    v7 = *(v4 + 96);
    v21 = *(v4 + 80);
    v22 = v7;
    v23 = *(v4 + 112);
    v8 = *(v4 + 16);
    v20[0] = *v4;
    v9 = *(v4 + 32);
    v10 = *(v4 + 48);
    v20[1] = v8;
    v20[2] = v9;
    v20[3] = v10;
    v20[4] = v6;
    v28 = v6;
    v29 = v21;
    v26 = v9;
    v27 = v10;
    v24 = v20[0];
    v25 = v8;
    v11 = sub_1AF419A14(&v24);
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v12 = v3[6] + 96 * v11;
    v13 = v27;
    *(v12 + 32) = v26;
    *(v12 + 48) = v13;
    v14 = v29;
    *(v12 + 64) = v28;
    *(v12 + 80) = v14;
    v15 = v25;
    *v12 = v24;
    *(v12 + 16) = v15;
    v16 = v3[7] + 24 * v11;
    v17 = v23;
    *v16 = v22;
    *(v16 + 16) = v17;
    ++v3[2];
    if (!i)
    {
      break;
    }

    sub_1AF0D8094(v20, v19, &unk_1EB638320, &type metadata for RenderVariantDescriptor, &type metadata for RenderStates, sub_1AF0D8108);
    v4 += 120;
  }

  sub_1AF0D8094(v20, v19, &unk_1EB638320, &type metadata for RenderVariantDescriptor, &type metadata for RenderStates, sub_1AF0D8108);
  return v3;
}

void *sub_1AF42C7DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443314();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 72);
  do
  {
    v5 = *(v4 - 5);
    v6 = *(v4 - 4);
    v7 = *(v4 - 3);
    v13 = *(v4 - 1);
    v8 = *v4;
    v4 += 6;

    swift_unknownObjectRetain();
    v9 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v3[6] + 16 * v9);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[7] + 32 * v9;
    *v11 = v7;
    *(v11 + 8) = v13;
    *(v11 + 24) = v8;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF42C914(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443A6C(0);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 64);
  do
  {
    v12 = *v4;
    v13 = *(v4 - 1);
    v10 = v4[2];
    v11 = v4[1];
    v5 = *(v4 + 48);
    v6 = *(v4 - 32);
    v7 = sub_1AF41AABC(v6, sub_1AFBF62E0, sub_1AF41B530);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + v7) = v6;
    v8 = v3[7] + 80 * v7;
    *v8 = v13;
    *(v8 + 16) = v12;
    *(v8 + 32) = v11;
    *(v8 + 48) = v10;
    *(v8 + 64) = v5;
    ++v3[2];
    v4 += 6;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF42CA3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for PropertyDescription();
  v4 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E6158], v3, MEMORY[0x1E69E6168]);
  v5 = sub_1AF420554(0, v2, 0, MEMORY[0x1E69E7CC0]);
  if (v2)
  {
    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v8 = *(i - 1);
      v10 = *i;
      v11 = *(v5 + 2);
      v12 = *(v5 + 3);
      swift_bridgeObjectRetain_n();

      if (v11 >= v12 >> 1)
      {
        v5 = sub_1AF420554(v12 > 1, v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v13 = &v5[16 * v11];
      *(v13 + 4) = v9;
      *(v13 + 5) = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_1AF41A54C(v9, v8, MEMORY[0x1E69E60C8], sub_1AF41B38C);
      v17 = v16;
      v18 = v4[2] + ((v16 & 1) == 0);
      if (v4[3] < v18)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v21 = v15;
      sub_1AF844B24();
      v15 = v21;
      if (v17)
      {
LABEL_12:
        v20 = v15;

        *(v4[7] + 8 * v20) = v10;

        goto LABEL_4;
      }

LABEL_3:
      v4[(v15 >> 6) + 8] |= 1 << v15;
      v7 = (v4[6] + 16 * v15);
      *v7 = v9;
      v7[1] = v8;
      *(v4[7] + 8 * v15) = v10;
      ++v4[2];
LABEL_4:
      if (!--v2)
      {
        return v4;
      }
    }

    sub_1AF82CE44(v18, isUniquelyReferenced_nonNull_native);
    v15 = sub_1AF41A54C(v9, v8, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    if ((v17 & 1) != (v19 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v17)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v4;
}

void *sub_1AF42CC94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43D850();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v13 = v4[2];
    v14 = v4[3];
    v15 = *(v4 + 64);
    v7 = *v4;
    v6 = v4[1];
    v4 += 6;
    v11 = v7;
    v12 = v6;
    v8 = sub_1AF0D3F10(v5);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v5;
    v9 = v3[7] + 80 * v8;
    *(v9 + 64) = v15;
    *(v9 + 32) = v13;
    *(v9 + 48) = v14;
    *v9 = v11;
    *(v9 + 16) = v12;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42CD8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4437DC();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 3);
    v6 = *(v4 - 2);
    v7 = *v4;

    v8 = *(v4 - 1);
    v9 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v3[6] + 16 * v9);
    *v10 = v5;
    v10[1] = v6;
    v11 = (v3[7] + 16 * v9);
    *v11 = v8;
    v11[1] = v7;
    ++v3[2];
    v4 += 4;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF42CEB4(uint64_t a1)
{
  sub_1AF442A88(0, &qword_1EB634060, type metadata accessor for GraphScriptingConfig.ScriptInfo, &type metadata for GraphScriptingConfig.EvaluationMode);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v19 - v5);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443998(0, &qword_1EB633B90, type metadata accessor for GraphScriptingConfig.ScriptInfo, sub_1AF4499B0, &type metadata for GraphScriptingConfig.EvaluationMode);
  v8 = sub_1AFDFE5C8();
  v9 = *(v3 + 48);
  v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v4 + 72);
  do
  {
    sub_1AF449A04(v10, v6, &qword_1EB634060, type metadata accessor for GraphScriptingConfig.ScriptInfo, &type metadata for GraphScriptingConfig.EvaluationMode, sub_1AF442A88);
    v12 = *v6;
    v20 = *(v6 + 4);
    v13 = v20;
    v14 = sub_1AF419B74(v12 | (v20 << 32));
    *(v8 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    v15 = v8[6] + 8 * v14;
    *v15 = v12;
    *(v15 + 4) = v13;
    v16 = v8[7];
    v17 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
    sub_1AF445CBC(v6 + v9, v16 + *(*(v17 - 8) + 72) * v14, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    ++v8[2];
    v10 += v11;
    --v7;
  }

  while (v7);
  return v8;
}

void *sub_1AF42D0FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449BDC(0, &qword_1EB638600, type metadata accessor for BufferSlice, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;
    v8 = sub_1AF0D3F10(v5);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v5;
    v9 = (v3[7] + 16 * v8);
    *v9 = v6;
    v9[1] = v7;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42D1F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43FB88();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);

    v7 = *v4;
    v8 = v4[1];
    v4 += 3;
    v13 = v7;
    v14 = v8;

    v9 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v3[6] + 16 * v9);
    *v10 = v5;
    v10[1] = v6;
    v11 = (v3[7] + 32 * v9);
    *v11 = v13;
    v11[1] = v14;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF42D33C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443998(0, &qword_1EB6385F0, type metadata accessor for VFXREBindingMeshData, sub_1AF443A18, &type metadata for PointCacheProperty);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 8);
    v6 = *v4;
    v7 = sub_1AF419BF8(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    v4 += 2;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF42D44C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449950();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 92);
  do
  {
    v5 = *(v4 - 60);
    v6 = *(v4 - 52);
    v7 = *(v4 - 44);
    v8 = *(v4 - 36);
    v9 = *(v4 - 28);
    v10 = *(v4 - 20);
    v11 = *(v4 - 12);
    v12 = *(v4 - 1);
    v13 = *v4;
    v4 += 64;

    v14 = v7;

    v15 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
    v16 = (v3[6] + 16 * v15);
    *v16 = v5;
    v16[1] = v6;
    v17 = v3[7] + 48 * v15;
    *v17 = v14;
    *(v17 + 8) = v8;
    *(v17 + 16) = v9;
    *(v17 + 24) = v10;
    *(v17 + 32) = v11;
    *(v17 + 40) = v12;
    *(v17 + 44) = v13;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF42D60C(uint64_t a1, void (*a2)(void), void (*a3)(__int128 *, uint64_t *))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v6 = sub_1AFDFE5C8();
  v7 = (a1 + 32);

  for (i = v3 - 1; ; --i)
  {
    v9 = v7[4];
    v22 = v7[3];
    v23 = v9;
    v10 = v7[2];
    v20 = v7[1];
    v21 = v10;
    v19 = *v7;
    v11 = *(&v23 + 1);
    v12 = *(v7 + 61);
    v26 = v10;
    v27[0] = v22;
    *(v27 + 13) = v12;
    v24 = v19;
    v25 = v20;
    a3(&v19, &v18);
    v13 = sub_1AF419C3C(&v24);
    *(v6 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v14 = v6[6] + 72 * v13;
    v15 = v27[0];
    *(v14 + 32) = v26;
    *(v14 + 48) = v15;
    *(v14 + 61) = *(v27 + 13);
    v16 = v25;
    *v14 = v24;
    *(v14 + 16) = v16;
    *(v6[7] + 8 * v13) = v11;
    ++v6[2];
    if (!i)
    {
      break;
    }

    v7 += 5;
  }

  return v6;
}

void *sub_1AF42D750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4469DC();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 4);
    v13 = v4[2];
    *v14 = v4[3];
    *&v14[9] = *(v4 + 57);
    v7 = *v4;
    v6 = v4[1];
    v4 += 6;
    v11 = v7;
    v12 = v6;
    v8 = sub_1AF0DB464(v5);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v5;
    v9 = (v3[7] + 80 * v8);
    *(v9 + 57) = *&v14[9];
    v9[2] = v13;
    v9[3] = *v14;
    *v9 = v11;
    v9[1] = v12;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42D848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44377C();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;

    v8 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = (v3[6] + 16 * v8);
    *v9 = v5;
    v9[1] = v6;
    *(v3[7] + 8 * v8) = v7;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void sub_1AF42D984(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, __int128 *)@<X1>, _OWORD *a3@<X8>)
{
  *&v24 = a1;
  a2(&v14, &v24);

  v30 = v21;
  v31 = v22;
  v32 = v23;
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v24 = v15;
  v25 = v16;
  if (sub_1AF44812C(&v24) != 1)
  {
    v12[6] = v30;
    v12[7] = v31;
    v13 = v32;
    v12[2] = v26;
    v12[3] = v27;
    v12[4] = v28;
    v12[5] = v29;
    v12[0] = v24;
    v12[1] = v25;
    if (sub_1AF448140(v12) != 1)
    {
      nullsub_106();
      v5 = v4[5];
      a3[4] = v4[4];
      a3[5] = v5;
      v6 = v4[7];
      a3[6] = v4[6];
      a3[7] = v6;
      v7 = v4[1];
      *a3 = *v4;
      a3[1] = v7;
      v8 = v4[3];
      a3[2] = v4[2];
      a3[3] = v8;
      return;
    }

    nullsub_106();
  }

  v14 = 0;
  *&v15 = 0xE000000000000000;
  sub_1AFDFE218();
  v9 = sub_1AF9703D8();
  v11 = v10;

  v14 = v9;
  *&v15 = v11;
  MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF28020);
  sub_1AFDFE518();
  __break(1u);
}

__n128 sub_1AF42DB20(void *a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v8 = a2;
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v10 = [swift_unknownObjectRetain() contents];
  v11 = a1;
  v12 = &v10[v8 + a3];
  *v12 = a4;
  v12[1] = a5;
  result = a7;
  v12[2] = a6;
  v12[3] = a7;
  return result;
}

__n128 sub_1AF42DBB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v8 = [swift_unknownObjectRetain() contents];
  v9 = a1;
  v10 = &v8[v6 + a3];
  v11 = *(a4 + 16);
  *v10 = *a4;
  *(v10 + 1) = v11;
  result = *(a4 + 32);
  *(v10 + 2) = result;
  return result;
}

id sub_1AF42DC3C(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = a2;
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v10 = [swift_unknownObjectRetain() contents];
  result = a1;
  v12 = &v10[v8 + a3];
  *v12 = a4;
  v12[1] = a5;
  return result;
}

id sub_1AF42DCC0(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = a2;
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v8 = [swift_unknownObjectRetain() contents];
  result = a1;
  *&v8[v6 + a3] = a4;
  return result;
}

id sub_1AF42DD3C(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = a2;
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v8 = [swift_unknownObjectRetain() contents];
  result = a1;
  *&v8[v6 + a3] = a4;
  return result;
}

id sub_1AF42DDB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v8 = [swift_unknownObjectRetain() contents];
  result = a1;
  *&v8[v6 + a3] = a4;
  return result;
}

id sub_1AF42DE34(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a2;
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v8 = [swift_unknownObjectRetain() contents];
  result = a1;
  *&v8[v6 + a3] = a4;
  return result;
}

id sub_1AF42DEB0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v8 = [swift_unknownObjectRetain() contents];
  result = a1;
  v8[v6 + a3] = a4;
  return result;
}

uint64_t sub_1AF42DF2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder;
  v8 = *(a1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  if (v8 >> 61 == 6)
  {
    v9 = __ROR8__(v8 + 0x3FFFFFFFFFFFFFF0, 3);
    if (v9 <= 4)
    {
      if (!v9)
      {
        sub_1AF0D5A54(v7 + 8, &v61);
        swift_dynamicCast();
        v23 = v65[0];
        v11 = swift_allocObject();
        *(v11 + 16) = a3;
        *(v11 + 24) = 1;
        *(v11 + 32) = v23;
        v12 = sub_1AF448858;
        goto LABEL_25;
      }

      if (v9 == 4)
      {
        sub_1AF0D5A54(v7 + 8, &v61);
        swift_dynamicCast();
        v13 = v65[0];
        v11 = swift_allocObject();
        *(v11 + 16) = a3;
        *(v11 + 24) = 4;
        *(v11 + 32) = v13;
        v12 = sub_1AF448838;
        goto LABEL_25;
      }
    }

    else
    {
      switch(v9)
      {
        case 5:
          sub_1AF0D5A54(v7 + 8, &v61);
          swift_dynamicCast();
          v21 = v65[0];
          v11 = swift_allocObject();
          *(v11 + 16) = a3;
          *(v11 + 24) = 4;
          *(v11 + 32) = v21;
          v12 = sub_1AF449CC4;
          goto LABEL_25;
        case 6:
          sub_1AF0D5A54(v7 + 8, &v61);
          swift_dynamicCast();
          v22 = *&v65[0];
          v11 = swift_allocObject();
          *(v11 + 16) = a3;
          *(v11 + 24) = 8;
          *(v11 + 32) = v22;
          v12 = sub_1AF44882C;
          goto LABEL_25;
        case 9:
          sub_1AF0D5A54(v7 + 8, &v61);
          swift_dynamicCast();
          v10 = v65[0];
          v11 = swift_allocObject();
          *(v11 + 16) = a3;
          *(v11 + 24) = 4;
          *(v11 + 32) = v10;
          v12 = sub_1AF448820;
          goto LABEL_25;
      }
    }
  }

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE4C420;
  sub_1AF442064(v8);
  sub_1AF442064(v8);
  v15 = sub_1AF90F890(v14 | 0x2000000000000000, v8);

  sub_1AF445BE4(v8);
  if (v15)
  {
    sub_1AF445BE4(v8);
    sub_1AF0D5A54(v7 + 8, &v61);
    sub_1AF445B28(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    swift_dynamicCast();
    v16 = *&v65[0];
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = 8;
    *(v11 + 32) = v16;
    v12 = sub_1AF448814;
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1AFE4C430;
    sub_1AF442064(v8);
    v18 = sub_1AF90F890(v17 | 0x2000000000000000, v8);

    sub_1AF445BE4(v8);
    if (v18)
    {
      sub_1AF445BE4(v8);
      sub_1AF0D5A54(v7 + 8, &v61);
      sub_1AF445B28(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
      swift_dynamicCast();
      v57 = v65[0];
      v11 = swift_allocObject();
      *(v11 + 16) = a3;
      *(v11 + 24) = 16;
      *(v11 + 32) = v57;
      v12 = sub_1AF4487F4;
    }

    else
    {
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AFE4C440;
      sub_1AF442064(v8);
      v20 = sub_1AF90F890(v19 | 0x2000000000000000, v8);

      sub_1AF445BE4(v8);
      if (v20)
      {
        sub_1AF445BE4(v8);
        sub_1AF0D5A54(v7 + 8, &v61);
        sub_1AF445B28(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        v58 = v65[0];
        v11 = swift_allocObject();
        *(v11 + 16) = a3;
        *(v11 + 24) = 16;
        *(v11 + 32) = v58;
        v12 = sub_1AF449CC0;
      }

      else
      {
        v24 = swift_allocObject();
        *(v24 + 16) = 2;
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1AFE4C420;
        *(v24 + 24) = v25 | 0x2000000000000000;
        sub_1AF442064(v8);
        v26 = sub_1AF90F890(v24 | 0x2000000000000000, v8);

        sub_1AF445BE4(v8);
        if (v26)
        {
          sub_1AF445BE4(v8);
          sub_1AF0D5A54(v7 + 8, &v61);
          type metadata accessor for simd_float2x2(0);
          swift_dynamicCast();
          v27 = v65[0];
          v11 = swift_allocObject();
          *(v11 + 16) = a3;
          *(v11 + 24) = 16;
          *(v11 + 32) = v27;
          v12 = sub_1AF4487E8;
        }

        else
        {
          v28 = swift_allocObject();
          *(v28 + 16) = 3;
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1AFE4C430;
          *(v28 + 24) = v29 | 0x2000000000000000;
          sub_1AF442064(v8);
          v30 = sub_1AF90F890(v28 | 0x2000000000000000, v8);

          sub_1AF445BE4(v8);
          if (v30)
          {
            sub_1AF445BE4(v8);
            sub_1AF0D5A54(v7 + 8, v65);
            type metadata accessor for simd_float3x3(0);
            swift_dynamicCast();
            v55 = v62;
            v59 = v61;
            v53 = v63;
            v11 = swift_allocObject();
            *(v11 + 16) = a3;
            *(v11 + 24) = 48;
            *(v11 + 32) = v59;
            *(v11 + 48) = v55;
            *(v11 + 64) = v53;
            v12 = sub_1AF4487B0;
          }

          else
          {
            v31 = swift_allocObject();
            *(v31 + 16) = 4;
            v32 = swift_allocObject();
            *(v32 + 16) = xmmword_1AFE4C440;
            *(v31 + 24) = v32 | 0x2000000000000000;
            v33 = sub_1AF90F890(v31 | 0x2000000000000000, v8);

            sub_1AF445BE4(v8);
            if ((v33 & 1) == 0)
            {
              return 0;
            }

            sub_1AF0D5A54(v7 + 8, v65);
            type metadata accessor for simd_float4x4(0);
            swift_dynamicCast();
            v56 = v62;
            v60 = v61;
            v52 = v64;
            v54 = v63;
            v11 = swift_allocObject();
            *(v11 + 16) = a3;
            *(v11 + 24) = 64;
            *(v11 + 32) = v60;
            *(v11 + 48) = v56;
            *(v11 + 64) = v54;
            *(v11 + 80) = v52;
            v12 = sub_1AF4487A0;
          }
        }
      }
    }
  }

LABEL_25:
  v34 = v12;
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v11;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v61 = *a4;
  v37 = v61;
  v39 = sub_1AF0D3F10(a2);
  v40 = v38;
  v41 = v37[2] + ((v38 & 1) == 0);
  if (v37[3] >= v41)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a4 = v37;
      if (v38)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_1AF844CC0();
      v37 = v61;
      *a4 = v61;
      if (v40)
      {
        goto LABEL_32;
      }
    }

LABEL_31:
    sub_1AF85B950();
    goto LABEL_32;
  }

  sub_1AF82D0E8(v41, isUniquelyReferenced_nonNull_native);
  v37 = v61;
  v42 = sub_1AF0D3F10(a2);
  if ((v40 & 1) != (v43 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v39 = v42;
  *a4 = v37;
  if ((v40 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_32:
  v44 = v37[7];
  v45 = *(v44 + 8 * v39);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  *(v44 + 8 * v39) = v45;
  if ((v46 & 1) == 0)
  {
    v45 = sub_1AF4221FC(0, v45[2] + 1, 1, v45, &unk_1EB638D00, sub_1AF4489BC);
    *(v44 + 8 * v39) = v45;
  }

  v48 = v45[2];
  v47 = v45[3];
  if (v48 >= v47 >> 1)
  {
    *(v44 + 8 * v39) = sub_1AF4221FC(v47 > 1, v48 + 1, 1, v45, &unk_1EB638D00, sub_1AF4489BC);
  }

  v49 = *(v44 + 8 * v39);
  *(v49 + 16) = v48 + 1;
  v50 = v49 + 16 * v48;
  *(v50 + 32) = sub_1AF449D18;
  *(v50 + 40) = v35;
  return 1;
}

void *sub_1AF42E9B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446A3C(0);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 64);
  do
  {
    v5 = *v4;

    v10 = *(v4 - 2);
    v11 = *(v4 - 1);
    v6 = *(v4 - 2);

    v7 = sub_1AF419CA8(v10, *(&v10 + 1), v6, *(&v11 + 1));
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    v8 = (v3[6] + 32 * v7);
    *v8 = v10;
    v8[1] = v11;
    *(v3[7] + 8 * v7) = v5;
    ++v3[2];
    v4 += 5;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF42EABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43A480();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 4;
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 4 * v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42EBA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446910();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 64);
  do
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 3);
    v7 = *(v4 - 2);
    v8 = *(v4 - 1);
    v9 = *v4;
    v4 += 40;

    v10 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v11 = (v3[6] + 16 * v10);
    *v11 = v5;
    v11[1] = v6;
    v12 = v3[7] + 24 * v10;
    *v12 = v7;
    *(v12 + 8) = v8;
    *(v12 + 16) = v9;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

uint64_t sub_1AF42ECDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath);
  v7 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 8);
  v6 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 16);
  v8 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 24);
  v9 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 32);
  v10 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 40);
  v11 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 48);
  v12 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 50);
  v13 = swift_allocObject();
  *(v13 + 16) = *v5;
  *(v13 + 24) = v7;
  *(v13 + 32) = v6;
  *(v13 + 40) = v8;
  *(v13 + 48) = v9;
  *(v13 + 56) = v10;
  *(v13 + 64) = v11;
  *(v13 + 66) = v12;

  if (sub_1AFADB4E4(v9, 0))
  {
    v14 = MEMORY[0x1E69E6270];
  }

  else
  {
    v14 = *(v13 + 48);
  }

  v15 = sub_1AF87136C(v14);
  sub_1AF448864(0);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = 0;
  *(v16 + 40) = xmmword_1AFE4C450;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  *(v18 + 32) = v13 | 0x2000000000000000;
  *(v18 + 40) = 1;
  *(v18 + 48) = xmmword_1AFE4C460;
  *(v18 + 64) = 1;
  *(v18 + 72) = a3;
  *(v18 + 80) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1AF4488E0;
  *(v19 + 24) = v18;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *a4;
  v23 = sub_1AF0D3F10(a2);
  v24 = v22;
  v25 = v21[2] + ((v22 & 1) == 0);
  if (v21[3] >= v25)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a4 = v21;
      if (v22)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_1AF844CC0();
      *a4 = v21;
      if (v24)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    sub_1AF85B950();
    goto LABEL_11;
  }

  sub_1AF82D0E8(v25, isUniquelyReferenced_nonNull_native);
  v26 = sub_1AF0D3F10(a2);
  if ((v24 & 1) != (v27 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v23 = v26;
  *a4 = v21;
  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v28 = v21[7];
  v29 = *(v28 + 8 * v23);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 8 * v23) = v29;
  if ((v30 & 1) == 0)
  {
    v29 = sub_1AF4221FC(0, v29[2] + 1, 1, v29, &unk_1EB638D00, sub_1AF4489BC);
    *(v28 + 8 * v23) = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    *(v28 + 8 * v23) = sub_1AF4221FC(v31 > 1, v32 + 1, 1, v29, &unk_1EB638D00, sub_1AF4489BC);
  }

  v33 = *(v28 + 8 * v23);
  *(v33 + 16) = v32 + 1;
  v34 = v33 + 16 * v32;
  *(v34 + 32) = sub_1AF449D18;
  *(v34 + 40) = v19;
  return 1;
}

uint64_t sub_1AF42F054(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = sub_1AF9C0F60();
  if (!v6[2])
  {

    sub_1AFDFE518();
    __break(1u);
    goto LABEL_20;
  }

  v7 = v6[4];
  v8 = *(v6 + 40);
  v9 = v6[6];
  v10 = v6[7];
  v11 = *(v6 + 64);
  sub_1AF443EE0(v7);
  sub_1AF444224(v9);

  sub_1AFA9EF20(v7);
  if (sub_1AFADB4E4(v12, 0))
  {
    if ((v8 & 2) != 0)
    {
      v13 = MEMORY[0x1E69E6878];
    }

    else
    {
      v13 = MEMORY[0x1E69E6270];
    }
  }

  else
  {
    sub_1AFA9EF20(v7);
  }

  v14 = sub_1AF87136C(v13);
  sub_1AF448864(0);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 16) = 0;
  *(v15 + 40) = xmmword_1AFE4C450;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  *(v17 + 32) = v7;
  *(v17 + 40) = v8;
  *(v17 + 48) = v9;
  *(v17 + 56) = v10;
  *(v17 + 64) = v11;
  *(v17 + 72) = a3;
  *(v17 + 80) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AF449D90;
  *(v18 + 24) = v17;
  sub_1AF443EE0(v7);
  sub_1AF444224(v9);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *a4;
  v21 = sub_1AF0D3F10(a2);
  v23 = v22;
  v24 = v20[2] + ((v22 & 1) == 0);
  if (v20[3] >= v24)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AF844CC0();
    }

    goto LABEL_12;
  }

  sub_1AF82D0E8(v24, isUniquelyReferenced_nonNull_native);
  v25 = sub_1AF0D3F10(a2);
  if ((v23 & 1) != (v26 & 1))
  {
LABEL_20:
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v21 = v25;
LABEL_12:
  *a4 = v20;
  if ((v23 & 1) == 0)
  {
    sub_1AF85B950();
  }

  v27 = v20[7];
  v28 = *(v27 + 8 * v21);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 8 * v21) = v28;
  if ((v29 & 1) == 0)
  {
    v28 = sub_1AF4221FC(0, v28[2] + 1, 1, v28, &unk_1EB638D00, sub_1AF4489BC);
    *(v27 + 8 * v21) = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    *(v27 + 8 * v21) = sub_1AF4221FC(v30 > 1, v31 + 1, 1, v28, &unk_1EB638D00, sub_1AF4489BC);
  }

  sub_1AF443F24(v7);
  sub_1AF444AF4(v9);

  v32 = *(v27 + 8 * v21);
  *(v32 + 16) = v31 + 1;
  v33 = v32 + 16 * v31;
  *(v33 + 32) = sub_1AF449D18;
  *(v33 + 40) = v18;
  return 1;
}

uint64_t sub_1AF42F404(void *a1, void (*a2)(uint64_t *__return_ptr, __int128 *))
{
  v362 = *MEMORY[0x1E69E9840];
  sub_1AF9A64C8(&v271);
  v4 = v272;
  v322 = v272;
  v321 = v271;
  v5 = MEMORY[0x1E69E62F8];
  sub_1AF444058(&v321, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
  v320 = v273;
  sub_1AF444058(&v320, &unk_1EB638968, &type metadata for TypeConstraint, v5, sub_1AF449B08);
  v319 = v274;
  sub_1AF44943C(&v319, sub_1AF445C2C);
  v318 = v275;
  sub_1AF44943C(&v318, sub_1AF445C2C);
  v317 = v276;
  sub_1AF444058(&v317, &unk_1EB638978, &type metadata for AnyValue, v5, sub_1AF449B08);
  v6 = *(v4 + 16);
  sub_1AF444058(&v322, &unk_1EB638968, &type metadata for TypeConstraint, v5, sub_1AF449B08);
  if (v6 > 8)
  {
    sub_1AF3C5A5C(a1, 0, 1, 0xD000000000000010, 0x80000001AFF28320);
    swift_willThrow();
    return v5;
  }

  v264 = v2;
  v267 = a1;
  v7 = (a1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection);
  v8 = *(a1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection);
  if (!v8)
  {
    return 0;
  }

  v9 = v7[2];
  v10 = v7[3];
  v11 = v7[1];
  v12 = MEMORY[0x1E69E7CC8];
  v270 = MEMORY[0x1E69E7CC8];
  v13 = 1 << *(v8 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v8 + 64);
  v254 = v11;
  v249 = v9;
  v257 = v10;
  sub_1AF448520(v8, v11, v9, v10);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v268 = MEMORY[0x1E69E7CC0];
  v269 = v12;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_10:
      v19 = (v18 << 9) | (8 * __clz(__rbit64(v15)));
      v20 = *(*(v8 + 48) + v19);
      Buffer = RGBuilderCreateBuffer(*(v264 + 80), "Metal script buffer", *(*(v8 + 56) + v19), 0);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = v268;
        v23 = v269;
      }

      else
      {
        v22 = sub_1AF42145C(0, *(v268 + 2) + 1, 1, v268);
        v23 = v269;
      }

      v25 = *(v22 + 2);
      v24 = *(v22 + 3);
      if (v25 >= v24 >> 1)
      {
        v35 = sub_1AF42145C(v24 > 1, v25 + 1, 1, v22);
        v23 = v269;
        v22 = v35;
      }

      *(v22 + 2) = v25 + 1;
      v268 = v22;
      v26 = &v22[16 * v25];
      *(v26 + 4) = v20;
      *(v26 + 5) = Buffer;
      v27 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v27;
      v29 = sub_1AF0D3F10(v20);
      v31 = v30;
      v32 = v27[2] + ((v30 & 1) == 0);
      if (v27[3] >= v32)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v29;
          sub_1AF845728();
          v29 = v36;
        }
      }

      else
      {
        sub_1AF82E2B4(v32, isUniquelyReferenced_nonNull_native);
        v29 = sub_1AF0D3F10(v20);
        if ((v31 & 1) != (v33 & 1))
        {
LABEL_197:
          sub_1AFDFF1A8();
          __break(1u);
LABEL_198:
          *&aBlock = 0;
          *(&aBlock + 1) = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
          v323 = v31;
          sub_1AFDFE458();
LABEL_199:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }

      v15 &= v15 - 1;
      v34 = aBlock;
      if (v31)
      {
        *(*(aBlock + 56) + 8 * v29) = Buffer;
        v17 = v18;
        v269 = v34;
        if (!v15)
        {
          break;
        }
      }

      else
      {
        *(aBlock + 8 * (v29 >> 6) + 64) |= 1 << v29;
        *(v34[6] + 8 * v29) = v20;
        *(v34[7] + 8 * v29) = Buffer;
        ++v34[2];
        v17 = v18;
        v269 = v34;
        if (!v15)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (v17 + 1 >= v16)
    {
      break;
    }

    v15 = *(v8 + 8 * v17++ + 72);
    if (v15)
    {
      goto LABEL_10;
    }
  }

  v38 = (*(*v267 + 328))(v37);
  sub_1AFDFF288();
  v39 = sub_1AF6ADC50(v38);
  MEMORY[0x1B271ACB0](v39);
  v40 = sub_1AFDFF2F8();
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](19);
  v41 = sub_1AFDFF2F8();
  v42 = *(v267[3] + 16);
  v253 = OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputTypes;

  v5 = MEMORY[0x1E69E7CC0];
  v260 = v42;
  if (v42)
  {
    v248 = v40;
    v44 = 0;
    v45 = 0;
    v252 = v43 + 32;
    v250 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v45)
      {
        v265 = v5;
        v266 = *(v252 + 8 * v45);
        sub_1AF442064(v266);

        v59 = sub_1AF3C3AA4(v58);

        sub_1AF3C3AA4(v60);

        v261 = v45;
        if (v45 < *(v59 + 16) && (v61 = *(v59 + v44 + 40)) != 0)
        {
          *&aBlock = *(v59 + v44 + 32);
          *(&aBlock + 1) = v61;
          v323 = 35;
          v324 = 0xE100000000000000;
          sub_1AF4486E4();
          v62 = sub_1AFDFDE98();
          v63 = *(v62 + 40);
          v262 = *(v62 + 32);

          v64 = v63;
        }

        else
        {
          v262 = 0;
          v64 = 0xE000000000000000;
        }

        swift_arrayDestroy();

        v65 = v266;
        v66 = v267[2] + v44;
        v67 = *(v66 + 32);
        v5 = *(v66 + 40);
        if (v266 >> 61 == 1)
        {
          goto LABEL_58;
        }

        if (v266 >> 61 != 6)
        {
          goto LABEL_181;
        }

        if (v266 > 0xC00000000000003FLL)
        {
          if (v266 <= 0xC0000000000000C7)
          {
            if (v266 != 0xC000000000000040)
            {
              v68 = 88;
              goto LABEL_57;
            }

LABEL_58:
            v258 = v64;
            sub_1AF8D12D8(v262, v64, v254, v257, v349);
            if (!v352)
            {

LABEL_176:

              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              sub_1AFDFE218();

              *&aBlock = 0xD00000000000001DLL;
              *(&aBlock + 1) = 0x80000001AFF28120;
              v217 = v262;
              v218 = v64;
              goto LABEL_177;
            }

            if (!v269[2] || (v69 = v350, v70 = v351, v71 = v353, v72 = sub_1AF0D3F10(v350), (v73 & 1) == 0))
            {

              sub_1AF44943C(v349, sub_1AF448580);

              v65 = v266;
              goto LABEL_176;
            }

            v255 = *(v269[7] + 8 * v72);
            type metadata accessor for ConstantNode(0);
            v74 = swift_dynamicCastClass();
            if (v74)
            {
              v75 = v74;
              swift_retain_n();
              sub_1AF4495B8(v349, &aBlock, sub_1AF448580);
              v76 = sub_1AF42DF2C(v75, v69, v70, &v270);

              sub_1AF44943C(v349, sub_1AF448580);
LABEL_69:
              v5 = v265;
              if ((v76 & 1) == 0)
              {
                goto LABEL_190;
              }

LABEL_70:

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v5 = sub_1AF42135C(0, *(v5 + 16) + 1, 1, v5);
              }

              v82 = *(v5 + 16);
              v81 = *(v5 + 24);
              if (v82 >= v81 >> 1)
              {
                v5 = sub_1AF42135C(v81 > 1, v82 + 1, 1, v5);
              }

              sub_1AF445BE4(v266);

              sub_1AF44943C(v349, sub_1AF448580);
              *(v5 + 16) = v82 + 1;
              v83 = v5 + 32 * v82;
              *(v83 + 32) = v69;
              *(v83 + 40) = 0;
              *(v83 + 48) = v255;
              *(v83 + 56) = v71;
              v45 = v261;
              goto LABEL_40;
            }

            if (*v67 == _TtC3VFX15GetECSValueNode && v67)
            {
              swift_retain_n();
              sub_1AF4495B8(v349, &aBlock, sub_1AF448580);
              v77 = sub_1AF42ECDC(v67, v69, v70, &v270, v264);
LABEL_68:
              v76 = v77;
              sub_1AF44943C(v349, sub_1AF448580);

              goto LABEL_69;
            }

            v78 = *v67;
            type metadata accessor for GetWorldValueNode(0);
            v79 = swift_dynamicCastClass();
            if (v79)
            {
              v80 = v79;
              swift_retain_n();
              sub_1AF4495B8(v349, &aBlock, sub_1AF448580);
              v77 = sub_1AF42F054(v80, v69, v70, &v270, v264);
              goto LABEL_68;
            }

            if (v78 == _TtC3VFX21ResolveResolutionNode && v67)
            {
              v132 = *(v264 + 72);
              swift_retain_n();
              sub_1AF4495B8(v349, &aBlock, sub_1AF448580);
              v133 = sub_1AF9A2C3C(v132);
              if (v135)
              {

                sub_1AF44943C(v349, sub_1AF448580);
LABEL_190:

LABEL_191:

                v5 = v266;

                *&aBlock = 0;
                *(&aBlock + 1) = 0xE000000000000000;
                sub_1AFDFE218();

                *&aBlock = 0xD000000000000019;
                *(&aBlock + 1) = 0x80000001AFF28150;
                MEMORY[0x1B2718AE0](v262, v258);

                sub_1AF3C5A5C(v267, v261, 0, aBlock, *(&aBlock + 1));

                swift_willThrow();
                sub_1AF44943C(v349, sub_1AF448580);

                v219 = v266;
LABEL_178:
                sub_1AF445BE4(v219);
LABEL_179:

                return v5;
              }

              v136 = v133;
              v137 = v134;
              v138 = swift_allocObject();
              v138[2] = v70;
              v138[3] = 16;
              v138[4] = v136;
              v138[5] = v137;
              v139 = swift_allocObject();
              *(v139 + 16) = sub_1AF4486D8;
              *(v139 + 24) = v138;
              v246 = v139;

              v140 = v270;
              v141 = swift_isUniquelyReferenced_nonNull_native();
              *&aBlock = v140;
              v142 = sub_1AF0D3F10(v69);
              v31 = v143;
              v144 = v140[2] + ((v143 & 1) == 0);
              if (v140[3] >= v144)
              {
                v146 = MEMORY[0x1E69E7CC0];
                if (v141)
                {
                  goto LABEL_144;
                }

                v214 = v142;
                sub_1AF844CC0();
                v142 = v214;
                v146 = MEMORY[0x1E69E7CC0];
                v140 = aBlock;
                v270 = aBlock;
                if ((v31 & 1) == 0)
                {
LABEL_145:
                  v140[(v142 >> 6) + 8] |= 1 << v142;
                  *(v140[6] + 8 * v142) = v69;
                  *(v140[7] + 8 * v142) = v146;
                  ++v140[2];
                }
              }

              else
              {
                sub_1AF82D0E8(v144, v141);
                v140 = aBlock;
                v142 = sub_1AF0D3F10(v69);
                v146 = MEMORY[0x1E69E7CC0];
                if ((v31 & 1) != (v145 & 1))
                {
                  goto LABEL_197;
                }

LABEL_144:
                v270 = v140;
                if ((v31 & 1) == 0)
                {
                  goto LABEL_145;
                }
              }

              v198 = (v140[7] + 8 * v142);
              v199 = *v198;
              v200 = swift_isUniquelyReferenced_nonNull_native();
              *v198 = v199;
              if ((v200 & 1) == 0)
              {
                v199 = sub_1AF4221FC(0, v199[2] + 1, 1, v199, &unk_1EB638D00, sub_1AF4489BC);
                *v198 = v199;
              }

              v202 = v199[2];
              v201 = v199[3];
              v203 = v202 + 1;
              if (v202 >= v201 >> 1)
              {
                *v198 = sub_1AF4221FC(v201 > 1, v202 + 1, 1, v199, &unk_1EB638D00, sub_1AF4489BC);
              }

              sub_1AF44943C(v349, sub_1AF448580);
              v204 = sub_1AF449D18;
LABEL_167:
              v211 = v204;

              v212 = *v198;
              v212[2] = v203;
              v213 = &v212[2 * v202];
              v213[4] = v211;
              v213[5] = v246;
              v5 = v265;
              goto LABEL_70;
            }

            if (v78 == _TtC3VFX17ViewConstantsNode && v67)
            {
              Strong = swift_unknownObjectUnownedLoadStrong();
              swift_retain_n();
              sub_1AF4495B8(v349, &aBlock, sub_1AF448580);
              v244 = sub_1AF12E2AC(Strong, v166);

              v31 = *(*(v67 + 32) + 8 * v5 + 32);
              sub_1AF448650(*(v67 + 24), *(v67 + 32));
              sub_1AF442064(v31);

              sub_1AF90E730(v31);
              if (!v167)
              {
                goto LABEL_198;
              }

              v168 = v167;
              sub_1AF445BE4(v31);
              v169 = sub_1AF87136C(v168);
              v170 = swift_allocObject();
              v170[2] = v70;
              v170[3] = v169;
              v170[4] = v5;
              v170[5] = v244;
              v171 = swift_allocObject();
              *(v171 + 16) = sub_1AF4486CC;
              *(v171 + 24) = v170;
              v246 = v171;
              swift_unknownObjectRetain();

              v172 = v270;
              v173 = swift_isUniquelyReferenced_nonNull_native();
              *&aBlock = v172;
              v174 = sub_1AF0D3F10(v69);
              v31 = v175;
              v176 = v172[2] + ((v175 & 1) == 0);
              if (v172[3] >= v176)
              {
                v178 = MEMORY[0x1E69E7CC0];
                if (v173)
                {
                  goto LABEL_152;
                }

                v215 = v174;
                sub_1AF844CC0();
                v174 = v215;
                v178 = MEMORY[0x1E69E7CC0];
                v172 = aBlock;
                v270 = aBlock;
                if ((v31 & 1) == 0)
                {
LABEL_153:
                  v172[(v174 >> 6) + 8] |= 1 << v174;
                  *(v172[6] + 8 * v174) = v69;
                  *(v172[7] + 8 * v174) = v178;
                  ++v172[2];
                }
              }

              else
              {
                sub_1AF82D0E8(v176, v173);
                v172 = aBlock;
                v174 = sub_1AF0D3F10(v69);
                v178 = MEMORY[0x1E69E7CC0];
                if ((v31 & 1) != (v177 & 1))
                {
                  goto LABEL_197;
                }

LABEL_152:
                v270 = v172;
                if ((v31 & 1) == 0)
                {
                  goto LABEL_153;
                }
              }

              v198 = (v172[7] + 8 * v174);
              v205 = *v198;
              v206 = swift_isUniquelyReferenced_nonNull_native();
              *v198 = v205;
              if ((v206 & 1) == 0)
              {
                v205 = sub_1AF4221FC(0, v205[2] + 1, 1, v205, &unk_1EB638D00, sub_1AF4489BC);
                *v198 = v205;
              }

              v202 = v205[2];
              v207 = v205[3];
              v203 = v202 + 1;
              if (v202 >= v207 >> 1)
              {
                *v198 = sub_1AF4221FC(v207 > 1, v202 + 1, 1, v205, &unk_1EB638D00, sub_1AF4489BC);
              }

              sub_1AF44943C(v349, sub_1AF448580);

              swift_unknownObjectRelease();
              v204 = sub_1AF449D18;
              goto LABEL_167;
            }

            if (v78 != _TtC3VFX18FrameConstantsNode || !v67)
            {

              goto LABEL_191;
            }

            v184 = swift_unknownObjectUnownedLoadStrong();
            swift_retain_n();
            sub_1AF4495B8(v349, &aBlock, sub_1AF448580);
            v245 = sub_1AF12E2AC(v184, v185);

            v31 = *(*(v67 + 32) + 8 * v5 + 32);
            sub_1AF448650(*(v67 + 24), *(v67 + 32));
            sub_1AF442064(v31);

            sub_1AF90E730(v31);
            if (!v186)
            {
              goto LABEL_198;
            }

            v187 = v186;
            sub_1AF445BE4(v31);
            v188 = sub_1AF87136C(v187);
            v189 = swift_allocObject();
            v189[2] = v70;
            v189[3] = v188;
            v189[4] = v5;
            v189[5] = v245;
            v190 = swift_allocObject();
            *(v190 + 16) = sub_1AF448690;
            *(v190 + 24) = v189;
            v246 = v190;
            swift_unknownObjectRetain();

            v191 = v270;
            v192 = swift_isUniquelyReferenced_nonNull_native();
            *&aBlock = v191;
            v193 = sub_1AF0D3F10(v69);
            v31 = v194;
            v195 = v191[2] + ((v194 & 1) == 0);
            if (v191[3] >= v195)
            {
              v197 = MEMORY[0x1E69E7CC0];
              if (v192)
              {
                goto LABEL_160;
              }

              v216 = v193;
              sub_1AF844CC0();
              v193 = v216;
              v197 = MEMORY[0x1E69E7CC0];
              v191 = aBlock;
              v270 = aBlock;
              if ((v31 & 1) == 0)
              {
LABEL_161:
                v191[(v193 >> 6) + 8] |= 1 << v193;
                *(v191[6] + 8 * v193) = v69;
                *(v191[7] + 8 * v193) = v197;
                ++v191[2];
              }
            }

            else
            {
              sub_1AF82D0E8(v195, v192);
              v191 = aBlock;
              v193 = sub_1AF0D3F10(v69);
              v197 = MEMORY[0x1E69E7CC0];
              if ((v31 & 1) != (v196 & 1))
              {
                goto LABEL_197;
              }

LABEL_160:
              v270 = v191;
              if ((v31 & 1) == 0)
              {
                goto LABEL_161;
              }
            }

            v198 = (v191[7] + 8 * v193);
            v208 = *v198;
            v209 = swift_isUniquelyReferenced_nonNull_native();
            *v198 = v208;
            if ((v209 & 1) == 0)
            {
              v208 = sub_1AF4221FC(0, v208[2] + 1, 1, v208, &unk_1EB638D00, sub_1AF4489BC);
              *v198 = v208;
            }

            v202 = v208[2];
            v210 = v208[3];
            v203 = v202 + 1;
            if (v202 >= v210 >> 1)
            {
              *v198 = sub_1AF4221FC(v210 > 1, v202 + 1, 1, v208, &unk_1EB638D00, sub_1AF4489BC);
            }

            sub_1AF44943C(v349, sub_1AF448580);

            swift_unknownObjectRelease();
            v204 = sub_1AF44869C;
            goto LABEL_167;
          }

          if (v266 == 0xC0000000000000D0)
          {
            v111 = v64;
            v112 = swift_retain_n();
            sub_1AF42D984(v112, a2, &v354);

            v329 = v358;
            v330 = v359;
            v331 = v360;
            v332 = v361;
            aBlock = v354;
            v326 = v355;
            v327 = v356;
            v328 = v357;
            v113 = (&aBlock + v5);
            v114 = *v113;
            v115 = v113[1];
            if (RGResourceIsNull(v115))
            {
              goto LABEL_199;
            }

            if (RGPassIsNull(v114))
            {
              goto LABEL_199;
            }

            v329 = v358;
            v330 = v359;
            v331 = v360;
            v332 = v361;
            aBlock = v354;
            v326 = v355;
            v327 = v356;
            v328 = v357;
            v116 = *v113;
            if (RGResourceIsNull(v113[1]) || RGPassIsNull(v116))
            {
              goto LABEL_199;
            }

            sub_1AF8D12D8(v262, v111, v254, v257, v337);

            if (!v341)
            {

              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              sub_1AFDFE218();

              *&aBlock = 0xD000000000000020;
              *(&aBlock + 1) = 0x80000001AFF281B0;
              sub_1AF9A64C8(v285);
              v310 = v286;
              v5 = sub_1AF970A64(v261, v286);
              v222 = v221;
              v309 = v285[0];
              v223 = MEMORY[0x1E69E62F8];
              sub_1AF444058(&v309, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
              v308 = v285[1];
              sub_1AF444058(&v308, &unk_1EB638968, &type metadata for TypeConstraint, v223, sub_1AF449B08);
              v307 = v285[2];
              sub_1AF444058(&v307, &unk_1EB638968, &type metadata for TypeConstraint, v223, sub_1AF449B08);
              sub_1AF44943C(&v310, sub_1AF445C2C);
              v306 = v287;
              sub_1AF44943C(&v306, sub_1AF445C2C);
              v305 = v288;
              sub_1AF444058(&v305, &unk_1EB638978, &type metadata for AnyValue, v223, sub_1AF449B08);
              MEMORY[0x1B2718AE0](v5, v222);

              MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF281E0);
              v225 = *(&aBlock + 1);
              v224 = aBlock;
              v226 = v267;
              v227 = v261;
              goto LABEL_186;
            }

            v117 = v340;
            v118 = v342;
            if ((v339 & 1) == 0)
            {
              v119 = v338;
              TextureReferenceDescriptor = RGResourceGetTextureReferenceDescriptor(v115);
              TextureType = RGTextureReferenceDescriptorGetTextureType(TextureReferenceDescriptor);
              if (TextureType)
              {
                v122 = *TextureType;
                v123 = sub_1AF1F1FF4(*TextureType);
                if (v123 != sub_1AF1F1FF4(v119))
                {

                  *&aBlock = 0;
                  *(&aBlock + 1) = 0xE000000000000000;
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0x657420646E756F42, 0xEF20206572757478);
                  v234 = sub_1AF4676EC(v122);
                  MEMORY[0x1B2718AE0](v234);

                  MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF28260);
                  v235 = sub_1AF4676EC(v119);
                  MEMORY[0x1B2718AE0](v235);

                  MEMORY[0x1B2718AE0](0x706E6920726F6620, 0xEB00000000207475);
                  sub_1AF9A64C8(v281);
                  v304 = v282;
                  v5 = sub_1AF970A64(v261, v282);
                  v237 = v236;
                  v303 = v281[0];
                  v238 = MEMORY[0x1E69E62F8];
                  sub_1AF444058(&v303, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
                  v302 = v281[1];
                  sub_1AF444058(&v302, &unk_1EB638968, &type metadata for TypeConstraint, v238, sub_1AF449B08);
                  v301 = v281[2];
                  sub_1AF444058(&v301, &unk_1EB638968, &type metadata for TypeConstraint, v238, sub_1AF449B08);
                  sub_1AF44943C(&v304, sub_1AF445C2C);
                  v300 = v283;
                  sub_1AF44943C(&v300, sub_1AF445C2C);
                  v299 = v284;
                  sub_1AF444058(&v299, &unk_1EB638978, &type metadata for AnyValue, v238, sub_1AF449B08);
                  MEMORY[0x1B2718AE0](v5, v237);

                  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF281E0);
                  sub_1AF3C5A5C(v267, v261, 0, aBlock, *(&aBlock + 1));

                  swift_willThrow();

                  sub_1AF44943C(v337, sub_1AF448580);
                  goto LABEL_179;
                }
              }

              if (((v119 - 4) & 0xFFFFFFFFFFFFFFFBLL) != 0)
              {
                v124 = RGResourceGetTextureReferenceDescriptor(v115);
                RGTextureReferenceDescriptorCopy(v124);
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v250 = sub_1AF42124C(0, *(v250 + 2) + 1, 1, v250);
            }

            v126 = *(v250 + 2);
            v125 = *(v250 + 3);
            if (v126 >= v125 >> 1)
            {
              v250 = sub_1AF42124C(v125 > 1, v126 + 1, 1, v250);
            }

            *(v250 + 2) = v126 + 1;
            *&v250[8 * v126 + 32] = v116;
            v127 = v265;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v127 = sub_1AF42135C(0, *(v265 + 2) + 1, 1, v265);
            }

            v45 = v261;
            v129 = *(v127 + 2);
            v128 = *(v127 + 3);
            v130 = v127;
            if (v129 >= v128 >> 1)
            {
              v130 = sub_1AF42135C(v128 > 1, v129 + 1, 1, v127);
            }

            sub_1AF44943C(v337, sub_1AF448580);

            *(v130 + 2) = v129 + 1;
            v131 = &v130[32 * v129];
            v5 = v130;
            *(v131 + 4) = v117;
            *(v131 + 5) = 0;
            *(v131 + 6) = v115;
            v131[56] = v118;
          }

          else
          {
            if (v266 != 0xC0000000000000C8)
            {
LABEL_181:

              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              sub_1AFDFE218();

              *&aBlock = 0xD000000000000012;
              *(&aBlock + 1) = 0x80000001AFF28100;
              v217 = sub_1AF90D394(v266);
LABEL_177:
              MEMORY[0x1B2718AE0](v217, v218);

              sub_1AF3C5A5C(v267, v261, 0, aBlock, *(&aBlock + 1));

              swift_willThrow();

              v219 = v65;
              goto LABEL_178;
            }

            v84 = v64;
            v85 = *(v67 + OBJC_IVAR____TtC3VFX21TextureDescriptorNode__descriptor);

            if (!v85)
            {

              sub_1AF9A6150();
            }

            Texture = RGBuilderCreateTexture(*(v264 + 80), "metal script output", v85);
            v87 = v262;
            if (sub_1AFDFD188())
            {
              v88 = sub_1AFDFD048();
              v89 = sub_1AF8083E0(v88, v262, v84);
              v91 = v90;
              v93 = v92;
              v95 = v94;

              v87 = MEMORY[0x1B27189E0](v89, v91, v93, v95);
              v84 = v96;
            }

            v45 = v261;
            sub_1AF8D11AC(v87, v84, v249, v257, v333);

            if (v335)
            {
              v97 = v334;
              v98 = v336;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v265 = sub_1AF42135C(0, *(v265 + 2) + 1, 1, v265);
              }

              v100 = *(v265 + 2);
              v99 = *(v265 + 3);
              if (v100 >= v99 >> 1)
              {
                v265 = sub_1AF42135C(v99 > 1, v100 + 1, 1, v265);
              }

              sub_1AF44943C(v333, sub_1AF448580);

              *(v265 + 2) = v100 + 1;
              v101 = &v265[32 * v100];
              *(v101 + 4) = v97;
              *(v101 + 5) = 0;
              *(v101 + 6) = Texture;
              v101[56] = v98;
              v5 = v265;
              v45 = v261;
            }

            else
            {
              if (v248 != v41)
              {

                *&aBlock = 0;
                *(&aBlock + 1) = 0xE000000000000000;
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF282A0);
                sub_1AF9A64C8(v277);
                v298 = v278;
                v5 = sub_1AF970A64(v261, v278);
                v232 = v231;
                v297 = v277[0];
                v233 = MEMORY[0x1E69E62F8];
                sub_1AF444058(&v297, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
                v296 = v277[1];
                sub_1AF444058(&v296, &unk_1EB638968, &type metadata for TypeConstraint, v233, sub_1AF449B08);
                v295 = v277[2];
                sub_1AF444058(&v295, &unk_1EB638968, &type metadata for TypeConstraint, v233, sub_1AF449B08);
                sub_1AF44943C(&v298, sub_1AF445C2C);
                v294 = v279;
                sub_1AF44943C(&v294, sub_1AF445C2C);
                v293 = v280;
                sub_1AF444058(&v293, &unk_1EB638978, &type metadata for AnyValue, v233, sub_1AF449B08);
                MEMORY[0x1B2718AE0](v5, v232);

                MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF281E0);
                sub_1AF3C5A5C(v267, v261, 0, aBlock, *(&aBlock + 1));

                swift_willThrow();

                return v5;
              }

              v179 = v265;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v179 = sub_1AF42135C(0, *(v265 + 2) + 1, 1, v265);
              }

              v181 = *(v179 + 2);
              v180 = *(v179 + 3);
              v182 = v179;
              if (v181 >= v180 >> 1)
              {
                v182 = sub_1AF42135C(v180 > 1, v181 + 1, 1, v179);
              }

              *(v182 + 2) = v181 + 1;
              v183 = &v182[32 * v181];
              v5 = v182;
              *(v183 + 4) = 0;
              *(v183 + 5) = 0;
              *(v183 + 6) = Texture;
              v183[56] = 3;
            }
          }
        }

        else
        {
          if (v266 > 0xC00000000000002FLL)
          {
            if (v266 != 0xC000000000000030)
            {
              v68 = 56;
              goto LABEL_57;
            }

            goto LABEL_58;
          }

          if (v266 != 0xC000000000000000)
          {
            v68 = 16;
LABEL_57:
            if (v266 != (v68 & 0xFFFFFFFFFFFFLL | 0xC000000000000000))
            {
              goto LABEL_181;
            }

            goto LABEL_58;
          }

          v102 = v64;
          v103 = *(v267 + v253);

          sub_1AF3C3AA4(v104);

          sub_1AF3C3AA4(v105);

          v45 = v261;
          v106 = *(v103 + 8 * v261 + 32);
          sub_1AF4410A8(v106);

          if (v106 >> 61 != 4)
          {

            sub_1AF441114(v106);
            v5 = v265;
            goto LABEL_185;
          }

          v107 = *((v106 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          sub_1AF442064(v107);
          sub_1AF441114(v106);
          v5 = v265;
          if (v107 >> 61)
          {

            sub_1AF445BE4(v107);
LABEL_185:

            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            sub_1AFDFE218();

            *&aBlock = 0xD000000000000015;
            *(&aBlock + 1) = 0x80000001AFF28190;
            v228 = sub_1AF90D394(0xC000000000000000);
            MEMORY[0x1B2718AE0](v228);

            v225 = *(&aBlock + 1);
            v224 = aBlock;
            v226 = v267;
            v227 = v261;
LABEL_186:
            sub_1AF3C5A5C(v226, v227, 0, v224, v225);

            swift_willThrow();
LABEL_187:

            return v5;
          }

          v108 = *(v107 + 16);
          sub_1AF442064(v108);
          sub_1AF445BE4(v107);
          v109 = sub_1AF90F890(v108, 0xC0000000000000C8);
          if (v109)
          {
            v110 = RGResourceIdentifierFinalColor(v109);
            RGTextureReferenceDescriptorCreate(v110, 1.0);
          }

          if (sub_1AF90F890(v108, 0xC0000000000000D0))
          {
            sub_1AF8D12D8(v262, v102, v254, v257, &v343);

            if (!v347)
            {

              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              v239 = v108;
              sub_1AFDFE218();

              *&aBlock = 0xD000000000000020;
              *(&aBlock + 1) = 0x80000001AFF281B0;
              sub_1AF9A64C8(v289);
              v316 = v290;
              v5 = sub_1AF970A64(v261, v290);
              v241 = v240;
              v315 = v289[0];
              v242 = MEMORY[0x1E69E62F8];
              sub_1AF444058(&v315, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
              v314 = v289[1];
              sub_1AF444058(&v314, &unk_1EB638968, &type metadata for TypeConstraint, v242, sub_1AF449B08);
              v313 = v289[2];
              sub_1AF444058(&v313, &unk_1EB638968, &type metadata for TypeConstraint, v242, sub_1AF449B08);
              sub_1AF44943C(&v316, sub_1AF445C2C);
              v312 = v291;
              sub_1AF44943C(&v312, sub_1AF445C2C);
              v311 = v292;
              sub_1AF444058(&v311, &unk_1EB638978, &type metadata for AnyValue, v242, sub_1AF449B08);
              MEMORY[0x1B2718AE0](v5, v241);

              MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF281E0);
              sub_1AF3C5A5C(v267, v261, 0, aBlock, *(&aBlock + 1));

              swift_willThrow();
              v230 = v239;
LABEL_195:
              sub_1AF445BE4(v230);
              goto LABEL_187;
            }

            v263 = v108;
            if ((v345 & 1) != 0 || (v147 = v344, ((v344 - 4) & 0xFFFFFFFFFFFFFFFBLL) == 0))
            {

              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              sub_1AFDFE218();

              *&aBlock = 0xD000000000000018;
              *(&aBlock + 1) = 0x80000001AFF28200;
              v229 = sub_1AF90D394(0xC000000000000000);
              MEMORY[0x1B2718AE0](v229);

              sub_1AF3C5A5C(v267, v261, 0, aBlock, *(&aBlock + 1));

              swift_willThrow();
              sub_1AF44943C(&v343, sub_1AF448580);
              v230 = v108;
              goto LABEL_195;
            }

            v256 = v346;
            v259 = v348;
            v148 = swift_unknownObjectUnownedLoadStrong();
            v150 = sub_1AF12E2AC(v148, v149);

            v151 = [v150 resourceManager];
            swift_unknownObjectRelease();
            v247 = v151;
            v152 = [v151 defaultTextureForTextureType_];
            CFXTextureDescriptorFromMTLTexture(v152, &aBlock, v153, v154);
            v155 = v326;
            LOBYTE(v151) = BYTE2(v326);
            v156 = *(&aBlock + 4);
            v157 = HIDWORD(aBlock);
            v158 = aBlock;
            v243 = *(v264 + 80);
            v159 = swift_allocObject();
            *(v159 + 16) = v152;
            *&v327 = sub_1AF0FBA6C;
            *(&v327 + 1) = v159;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v326 = sub_1AF419890;
            *(&v326 + 1) = &unk_1F250E2A8;
            v160 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();

            *(&aBlock + 4) = v156;
            LODWORD(aBlock) = v158;
            HIDWORD(aBlock) = v157;
            BYTE2(v326) = v151;
            LOWORD(v326) = v155;
            ExternalTexture = RGBuilderCreateExternalTexture(v243, "DefaultTexture", &aBlock, v160, 0);
            _Block_release(v160);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v265 = sub_1AF42135C(0, *(v265 + 2) + 1, 1, v265);
            }

            v45 = v261;
            v163 = *(v265 + 2);
            v162 = *(v265 + 3);
            if (v163 >= v162 >> 1)
            {
              v265 = sub_1AF42135C(v162 > 1, v163 + 1, 1, v265);
            }

            sub_1AF445BE4(v263);
            swift_unknownObjectRelease();
            sub_1AF44943C(&v343, sub_1AF448580);

            v5 = v265;
            *(v265 + 2) = v163 + 1;
            v164 = &v265[32 * v163];
            *(v164 + 4) = v256;
            *(v164 + 5) = 0;
            *(v164 + 6) = ExternalTexture;
            v164[56] = v259;
          }

          else
          {
            sub_1AF445BE4(v108);
          }
        }
      }

LABEL_40:
      ++v45;
      v44 += 16;
      if (v260 == v45)
      {
        goto LABEL_29;
      }
    }
  }

  v250 = MEMORY[0x1E69E7CC0];
LABEL_29:

  if (*(v268 + 2))
  {
    v46 = v5;
    v47 = *(v264 + 80);
    v48 = v270;
    v49 = swift_allocObject();
    *(v49 + 16) = v268;
    *(v49 + 24) = v48;
    *&v327 = sub_1AF448798;
    *(&v327 + 1) = v49;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v326 = sub_1AF874D7C;
    *(&v326 + 1) = &unk_1F250E2F8;
    v50 = _Block_copy(&aBlock);
    swift_bridgeObjectRetain_n();

    CustomPass = RGBuilderCreateCustomPass(v47, "Load data", v50);
    _Block_release(v50);

    v52 = *(v268 + 2);
    v53 = v250;
    if (v52)
    {
      v54 = (v268 + 40);
      do
      {
        v55 = *v54;
        v54 += 2;
        RGPassWritesTo(CustomPass, v55);
        --v52;
      }

      while (v52);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1AF42124C(0, *(v250 + 2) + 1, 1, v250);
    }

    v57 = *(v53 + 2);
    v56 = *(v53 + 3);
    if (v57 >= v56 >> 1)
    {
      v53 = sub_1AF42124C(v56 > 1, v57 + 1, 1, v53);
    }

    *(v53 + 2) = v57 + 1;
    *&v53[8 * v57 + 32] = CustomPass;
    v5 = v46;
  }

  else
  {
  }

  return v5;
}

void *sub_1AF432414(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF445010();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;

  do
  {
    sub_1AF0D8094(v4, &v15, &qword_1EB638830, MEMORY[0x1E69E6158], &_s8MetadataVN, sub_1AF0D8108);
    v5 = v15;
    v6 = v16;
    v7 = sub_1AF41A54C(v15, v16, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    v8 = (v3[6] + 16 * v7);
    *v8 = v5;
    v8[1] = v6;
    v9 = v3[7] + 88 * v7;
    v10 = v18;
    *v9 = v17;
    v11 = v19;
    v12 = v20;
    v13 = v21;
    *(v9 + 80) = v22;
    *(v9 + 48) = v12;
    *(v9 + 64) = v13;
    *(v9 + 16) = v10;
    *(v9 + 32) = v11;
    ++v3[2];
    v4 += 104;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF432690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449BDC(0, &unk_1EB63F530, sub_1AF444CB4, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 64);
  do
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 3);
    v8 = *(v4 - 2);
    v7 = *(v4 - 1);
    v9 = *v4;
    v4 += 5;

    v10 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v11 = (v3[6] + 16 * v10);
    *v11 = v5;
    v11[1] = v6;
    v12 = (v3[7] + 24 * v10);
    *v12 = v8;
    v12[1] = v7;
    v12[2] = v9;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF432818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF444C24();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v8 = *v4;
    v7 = v4[1];
    v9 = v4[3];
    v10 = v4[5];
    v16 = v4[4];
    v17 = v4[2];
    v11 = v4[6];

    v12 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v13 = (v3[6] + 16 * v12);
    *v13 = v5;
    v13[1] = v6;
    v14 = (v3[7] + 56 * v12);
    *v14 = v8;
    v14[1] = v7;
    v14[2] = v17;
    v14[3] = v9;
    v14[4] = v16;
    v14[5] = v10;
    v14[6] = v11;
    ++v3[2];
    v4 += 9;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF432980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43D0F8();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 3);
    v6 = *(v4 - 2);
    v8 = *(v4 - 1);
    v7 = *v4;

    v9 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v3[6] + 16 * v9);
    *v10 = v5;
    v10[1] = v6;
    v11 = (v3[7] + 16 * v9);
    *v11 = v8;
    v11[1] = v7;
    ++v3[2];
    v4 += 4;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF432AB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44519C(0);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v8 = *v4;
    v5 = *(v4 - 8);

    v6 = sub_1AF41A220(v5);
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    *(v3[6] + v6) = v5;
    *(v3[7] + 16 * v6) = v8;
    ++v3[2];
    v4 = (v4 + 24);
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF432BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43B748();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 36);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 = (v4 + 12);
    v7 = sub_1AF0DB464(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 4 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void sub_1AF432C94(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v859 = *MEMORY[0x1E69E9840];
  type metadata accessor for ConstantNode(0);
  if (swift_dynamicCastClass())
  {
    goto LABEL_20;
  }

  type metadata accessor for NilNode(0);
  if (swift_dynamicCastClass())
  {
    goto LABEL_20;
  }

  type metadata accessor for WorldObjectNode(0);
  if (swift_dynamicCastClass())
  {
    goto LABEL_20;
  }

  type metadata accessor for WorldAssetNode(0);
  if (swift_dynamicCastClass())
  {
    goto LABEL_20;
  }

  v10 = *v7;
  _ZF = *v7 == _TtC3VFX15GetECSValueNode || *v7 == _TtC3VFX21TextureDescriptorNode;
  if (_ZF && v7)
  {
    goto LABEL_20;
  }

  type metadata accessor for GetWorldValueNode(0);
  v12 = swift_dynamicCastClass();
  v13 = v10 != _TtC3VFX21ResolveResolutionNode || v7 == 0;
  v14 = v13;
  if (v12)
  {
    goto LABEL_20;
  }

  if (!v14)
  {
    goto LABEL_20;
  }

  type metadata accessor for _ArrayNode(0);
  if (swift_dynamicCastClass())
  {
    goto LABEL_20;
  }

  type metadata accessor for EnumConstantNode(0);
  v19 = swift_dynamicCastClass();
  v20 = v10 != _TtC3VFX17ViewConstantsNode;
  v21 = v10 != _TtC3VFX18FrameConstantsNode;
  if (!v7)
  {
    v20 = 1;
    v21 = 1;
  }

  if (v19 || !v20 || !v21)
  {
LABEL_20:
    sub_1AF44844C(&v850);
LABEL_21:
    v15 = v857;
    *(v9 + 96) = v856;
    *(v9 + 112) = v15;
    *(v9 + 128) = v858;
    v16 = v853;
    *(v9 + 32) = v852;
    *(v9 + 48) = v16;
    v17 = v855;
    *(v9 + 64) = v854;
    *(v9 + 80) = v17;
    v18 = v851;
    *v9 = v850;
    *(v9 + 16) = v18;
    return;
  }

  v536 = v1;
  if (v10 == _TtC3VFX15CopyTextureNode && v7)
  {
    v22 = v7[2];
    isa = v22[1].isa;
    *&v835 = v22->info;
    swift_retain_n();
    v5(aBlock, &v835);

    *&v813[96] = *&aBlock[104];
    *&v813[112] = *&aBlock[120];
    v813[128] = v834;
    *&v813[32] = *&aBlock[40];
    *&v813[48] = *&aBlock[56];
    *&v813[80] = *&aBlock[88];
    *&v813[64] = *&aBlock[72];
    *&v813[16] = *&aBlock[24];
    *v813 = *&aBlock[8];
    if (sub_1AF44812C(v813) == 1)
    {
LABEL_33:
      *aBlock = 0;
      *&aBlock[8] = 0xE000000000000000;
      sub_1AFDFE218();

      *aBlock = 0x207475706E49;
      *&aBlock[8] = 0xE600000000000000;
      ((*v7)[3].info)(v553, v24);
      v660 = v554;
      v25 = sub_1AF970A64(0, v554);
      v27 = v26;
      v659 = v553[0];
      v28 = MEMORY[0x1E69E62F8];
      sub_1AF444058(&v659, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
      v658 = v553[1];
      sub_1AF444058(&v658, &unk_1EB638968, &type metadata for TypeConstraint, v28, sub_1AF449B08);
      v657 = v553[2];
      sub_1AF444058(&v657, &unk_1EB638968, &type metadata for TypeConstraint, v28, sub_1AF449B08);
      sub_1AF44943C(&v660, sub_1AF445C2C);
      v656 = v555;
      sub_1AF44943C(&v656, sub_1AF445C2C);
      v655 = v556;
      v29 = &v655;
LABEL_34:
      sub_1AF444058(v29, &unk_1EB638978, &type metadata for AnyValue, v28, sub_1AF449B08);
      MEMORY[0x1B2718AE0](v25, v27);

      v30 = 0xD000000000000018;
      v31 = 0x80000001AFF27C70;
LABEL_35:
      MEMORY[0x1B2718AE0](v30, v31);
      v33 = *&aBlock[8];
      v32 = *aBlock;
LABEL_36:
      v34 = v7;
      v35 = 0;
LABEL_37:
      sub_1AF3C5A5C(v34, v35, 0, v32, v33);

      swift_willThrow();
      goto LABEL_204;
    }

    v841 = *&v813[96];
    v842 = *&v813[112];
    v843 = v813[128];
    v837 = *&v813[32];
    v838 = *&v813[48];
    v840 = *&v813[80];
    v839 = *&v813[64];
    v836 = *&v813[16];
    v835 = *v813;
    if (sub_1AF448140(&v835) == 1)
    {
      nullsub_106();
      goto LABEL_33;
    }

    nullsub_106();
    v79 = v78;
    if (sub_1AF3C567C(isa))
    {
      *&v824 = 0;
      *(&v824 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v824 = 0x207475706E49;
      *(&v824 + 1) = 0xE600000000000000;
      ((*v7)[3].info)(v549, v80);
      v654 = v550;
      v81 = sub_1AF970A64(0, v550);
      v83 = v82;
      v653 = v549[0];
      v84 = MEMORY[0x1E69E62F8];
      sub_1AF444058(&v653, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
      v652 = v549[1];
      sub_1AF444058(&v652, &unk_1EB638968, &type metadata for TypeConstraint, v84, sub_1AF449B08);
      v651 = v549[2];
      sub_1AF444058(&v651, &unk_1EB638968, &type metadata for TypeConstraint, v84, sub_1AF449B08);
      sub_1AF44943C(&v654, sub_1AF445C2C);
      v650 = v551;
      sub_1AF44943C(&v650, sub_1AF445C2C);
      v649 = v552;
      sub_1AF444058(&v649, &unk_1EB638978, &type metadata for AnyValue, v84, sub_1AF449B08);
      MEMORY[0x1B2718AE0](v81, v83);

      MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF27C70);
      v33 = *(&v824 + 1);
      v32 = v824;
      goto LABEL_36;
    }

    v828 = v79[4];
    v829 = v79[5];
    v830 = v79[6];
    v831 = v79[7];
    v824 = *v79;
    v825 = v79[1];
    v826 = v79[2];
    v827 = v79[3];
    v133 = &v824 + isa;
    v134 = *v133;
    v135 = *(v133 + 1);
    if (RGResourceIsNull(v135) || RGPassIsNull(v134))
    {
      sub_1AFDFE518();
      __break(1u);
      return;
    }

    v136 = *(v1 + 72);
    v527 = *(v1 + 80);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v138 = sub_1AF9A2B58();
    if (!v138)
    {
      v138 = RGNullTextureReferenceDescriptor();
    }

    sub_1AF24EDE8(v527, v136, "Convert texture", v134, v135, v138, &v804);

    goto LABEL_130;
  }

  if (v10 == _TtC3VFX15RenderWorldNode && v7)
  {
    v36 = v7[2];
    superclass = v36[4].superclass;
    *&v835 = v36[4].isa;
    swift_retain_n();
    v5(aBlock, &v835);

    *&v813[96] = *&aBlock[104];
    *&v813[112] = *&aBlock[120];
    v813[128] = v834;
    *&v813[32] = *&aBlock[40];
    *&v813[48] = *&aBlock[56];
    *&v813[80] = *&aBlock[88];
    *&v813[64] = *&aBlock[72];
    *&v813[16] = *&aBlock[24];
    *v813 = *&aBlock[8];
    if (sub_1AF44812C(v813) == 1)
    {
LABEL_44:
      v518 = 0;
      v515 = 1;
LABEL_45:
      v520 = sub_1AF9A2DFC();
      if (!v520)
      {
        v520 = RGNullTextureReferenceDescriptor();
      }

      v38 = v7[2];
      vtable = v38[4].vtable;
      *&v824 = v38[4].cache;
      swift_retain_n();
      v5(aBlock, &v824);

      v841 = *&aBlock[104];
      v842 = *&aBlock[120];
      v843 = v834;
      v837 = *&aBlock[40];
      v838 = *&aBlock[56];
      v840 = *&aBlock[88];
      v839 = *&aBlock[72];
      v836 = *&aBlock[24];
      v835 = *&aBlock[8];
      if (sub_1AF44812C(&v835) == 1)
      {
        goto LABEL_50;
      }

      v830 = v841;
      v831 = v842;
      v832 = v843;
      v826 = v837;
      v827 = v838;
      v829 = v840;
      v828 = v839;
      v825 = v836;
      v824 = v835;
      if (sub_1AF448140(&v824) == 1)
      {
        nullsub_106();
LABEL_50:
        v508 = 0;
        v506 = 1;
LABEL_51:
        *&v804 = MEMORY[0x1E69E7CC0];
        v40 = swift_dynamicCastClass();

        if (!v40)
        {
          v41 = sub_1AF3C67D8();
          if (!v41)
          {
LABEL_156:
            v120 = 0xD000000000000014;
            v121 = 0x80000001AFF27ED0;
            v122 = v7;
            v123 = 11;
            goto LABEL_157;
          }

          v42 = *(v41 + 2);
          if (v42)
          {
            v43 = v41 + 36;
            while (*(v43 - 1) != -1 || *v43 != 0)
            {
              v43 += 2;
              if (!--v42)
              {
                goto LABEL_60;
              }
            }

            goto LABEL_156;
          }

LABEL_60:
          sub_1AF48FED4(v41);
        }

        *&v45 = sub_1AF9A113C();
        v46 = 0;
        v47 = 0uLL;
        while (1)
        {
          v548 = v45;
          if (*(&v548 & 0xFFFFFFFFFFFFFFF3 | (4 * (v46 & 3))) >= 0.0)
          {
            v547 = v47;
            *(&v547 & 0xFFFFFFFFFFFFFFF3 | (4 * (v46 & 3))) = 0;
            v47 = v547;
          }

          else
          {
            v546 = v47;
            *(&v546 & 0xFFFFFFFFFFFFFFF3 | (4 * (v46 & 3))) = -1;
            v47 = v546;
          }

          if (v46 == 3)
          {
            break;
          }

          ++v46;
        }

        v511 = v47;
        *&v58 = sub_1AF9A113C();
        v59 = 0;
        v60 = 0uLL;
        while (1)
        {
          v545 = v58;
          if (*(&v545 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))) <= 1.0)
          {
            v544 = v60;
            *(&v544 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))) = 0;
            v60 = v544;
          }

          else
          {
            v543 = v60;
            *(&v543 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))) = -1;
            v60 = v543;
          }

          if (v59 == 3)
          {
            break;
          }

          ++v59;
        }

        if (vminvq_s32(vorrq_s8(v60, v511)) < 0)
        {

          v120 = 0xD000000000000058;
          v121 = 0x80000001AFF27EF0;
          v122 = v7;
          v123 = 3;
LABEL_157:
          sub_1AF3C5A5C(v122, v123, 0, v120, v121);
          swift_willThrow();

LABEL_203:

          goto LABEL_204;
        }

        *&v802 = RGNullPass();
        v512 = sub_1AF3C5CF0(0, v7);
        v505 = sub_1AF3C5CF0(1, v7);
        v504 = sub_1AF3C5CF0(2, v7);
        v61 = sub_1AF3C5CF0(3, v7);

        v62 = sub_1AF9A25A8(1, 0);

        if (v62)
        {
          v63 = v62;
          MEMORY[0x1B2718E00]();
          if (*((*(v536 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v536 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1AFDFD458();
          }

          sub_1AFDFD4B8();
        }

        v64 = *(v536 + 72);
        v65 = *(v536 + 80);
        v66 = swift_unknownObjectUnownedLoadStrong();
        sub_1AF3C2C58(v64, v66, v62, v512, v505, v504, v61, &v815, v518, v515, v508, v506, v520, &v802, v65);

        if (RGPassIsNull(v802))
        {
        }

        else
        {
          v141 = v802;
          v142 = v804;
          v143 = *(v536 + 128);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v145 = (v536 + 128);
          *(v536 + 128) = v143;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v143 = sub_1AF4216A8(0, v143[2] + 1, 1, v143);
            *(v536 + 128) = v143;
          }

          v146 = v143[2];
          sub_1AFCEF59C(v146);

          v147 = *v145;
          *(v147 + 16) = v146 + 1;
          v148 = v147 + 16 * v146;
          *(v148 + 32) = v141;
          *(v148 + 40) = v142;
          *v145 = v147;
        }

        v828 = v819;
        v829 = v820;
        v830 = v821;
        v831 = v822;
        v824 = v815;
        v825 = v816;
        v826 = v817;
        v827 = v818;
        sub_1AF448404(&v824);
        *&aBlock[96] = v830;
        *&aBlock[112] = v831;
        aBlock[128] = v832;
        *&aBlock[32] = v826;
        *&aBlock[48] = v827;
        *&aBlock[80] = v829;
        *&aBlock[64] = v828;
        v149 = v825;
        v150 = v824;
        goto LABEL_165;
      }

      nullsub_106();
      v109 = v108[5];
      *&v848[25] = v108[4];
      *&v848[27] = v109;
      v110 = v108[7];
      *&v848[29] = v108[6];
      *&v848[31] = v110;
      v111 = v108[1];
      *&v848[17] = *v108;
      *&v848[19] = v111;
      v112 = v108[3];
      *&v848[21] = v108[2];
      *&v848[23] = v112;
      if (sub_1AF3C567C(vtable) == 1)
      {
        sub_1AF3C654C(vtable);
        v508 = v113;
        v114 = RGContextResolveTextureDescriptor(*(v1 + 72), v113);
        if (v114)
        {
          v815 = *v114;
          *&v816 = *(v114 + 16);
          IsNull = RGTextureReferenceDescriptorIsNull(v520);
          if ((IsNull & 1) != 0 || (v116 = *(v1 + 72), LOBYTE(v802) = 0, IsNull = RGContextTryResolveTextureDescriptor(v116, v520, &v802, &v804), (v802 & 1) == 0))
          {
            v184 = RGResourceIdentifierFinalColor(IsNull);
            RGTextureReferenceDescriptorCreate(v184, 1.0);
          }

          v802 = v804;
          v803 = v805;
          v117 = sub_1AF448440(&v802);
          v802 = v815;
          v803 = v816;
          v118 = sub_1AF445CA8(&v802);
          v802 = v804;
          v803 = v805;
          if (v118 != sub_1AF445CA8(&v802) || (v802 = v815, v803 = v816, v119 = sub_1AF445CB0(&v802), v802 = v804, v803 = v805, v119 != sub_1AF445CB0(&v802)))
          {
            v191 = "ure that only has 1 sample";
            v166 = 0xD000000000000042;
LABEL_199:
            v167 = v191 | 0x8000000000000000;
            v168 = v7;
            v169 = 9;
            goto LABEL_200;
          }

          if (v117 >= 2)
          {
            v804 = v815;
            *&v805 = v816;
            if (sub_1AF448440(&v804) <= 1)
            {
              v191 = "e of output texture size";
              v166 = 0xD00000000000003ALL;
              goto LABEL_199;
            }
          }
        }

        v506 = 0;
        goto LABEL_51;
      }

      *&v815 = 0x207475706E49;
      *(&v815 + 1) = 0xE600000000000000;
      ((*v7)[3].info)(v561);
      v666 = v562;
      v170 = sub_1AF970A64(9, v562);
      v172 = v171;
      v665 = v561[0];
      v173 = MEMORY[0x1E69E62F8];
      sub_1AF444058(&v665, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
      v664 = v561[1];
      sub_1AF444058(&v664, &unk_1EB638968, &type metadata for TypeConstraint, v173, sub_1AF449B08);
      v663 = v561[2];
      sub_1AF444058(&v663, &unk_1EB638968, &type metadata for TypeConstraint, v173, sub_1AF449B08);
      sub_1AF44943C(&v666, sub_1AF445C2C);
      v662 = v563;
      sub_1AF44943C(&v662, sub_1AF445C2C);
      v661 = v564;
      sub_1AF444058(&v661, &unk_1EB638978, &type metadata for AnyValue, v173, sub_1AF449B08);
      MEMORY[0x1B2718AE0](v170, v172);

      MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF27CB0);
      v175 = *(&v815 + 1);
      v174 = v815;
      v176 = v7;
      v177 = 9;
LABEL_195:
      sub_1AF3C5A5C(v176, v177, 0, v174, v175);

LABEL_202:
      swift_willThrow();
      goto LABEL_203;
    }

    v841 = *&v813[96];
    v842 = *&v813[112];
    v843 = v813[128];
    v837 = *&v813[32];
    v838 = *&v813[48];
    v840 = *&v813[80];
    v839 = *&v813[64];
    v836 = *&v813[16];
    v835 = *v813;
    if (sub_1AF448140(&v835) == 1)
    {
      nullsub_106();
      goto LABEL_44;
    }

    nullsub_106();
    v96 = v95[5];
    *&v848[41] = v95[4];
    *&v848[43] = v96;
    v97 = v95[7];
    *&v848[45] = v95[6];
    *&v848[47] = v97;
    v98 = v95[1];
    *&v848[33] = *v95;
    *&v848[35] = v98;
    v99 = v95[3];
    *&v848[37] = v95[2];
    *&v848[39] = v99;
    if (!sub_1AF3C567C(superclass))
    {
      sub_1AF3C654C(superclass);
      v518 = v178;
      v515 = 0;
      goto LABEL_45;
    }

    *&v824 = 0x207475706E49;
    *(&v824 + 1) = 0xE600000000000000;
    ((*v7)[3].info)(v557);
    v672 = v558;
    v100 = sub_1AF970A64(8, v558);
    v102 = v101;
    v671 = v557[0];
    v103 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v671, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v670 = v557[1];
    sub_1AF444058(&v670, &unk_1EB638968, &type metadata for TypeConstraint, v103, sub_1AF449B08);
    v669 = v557[2];
    sub_1AF444058(&v669, &unk_1EB638968, &type metadata for TypeConstraint, v103, sub_1AF449B08);
    sub_1AF44943C(&v672, sub_1AF445C2C);
    v668 = v559;
    sub_1AF44943C(&v668, sub_1AF445C2C);
    v667 = v560;
    sub_1AF444058(&v667, &unk_1EB638978, &type metadata for AnyValue, v103, sub_1AF449B08);
    MEMORY[0x1B2718AE0](v100, v102);

    MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF27C70);
    v105 = *(&v824 + 1);
    v104 = v824;
    v106 = v7;
    v107 = 8;
LABEL_113:
    sub_1AF3C5A5C(v106, v107, 0, v104, v105);

    swift_willThrow();
LABEL_204:

    return;
  }

  if (v10 == _TtC3VFX11PresentNode && v7)
  {
    v48 = sub_1AF9A2EE0();
    if (v49)
    {
      v50 = v48;
      v51 = v49;
      v52 = *(v1 + 104);

      v53 = sub_1AF70265C(v50, v51, v52);

      if (v53)
      {

        v54 = "Presented attachment is already presented elsewhere";
LABEL_72:
        v55 = (v54 - 32);
        v56 = 33;
LABEL_73:
        v57 = v56 | 0xD000000000000012;
LABEL_74:
        sub_1AF3C5A5C(v7, 0, 1, v57, v55 | 0x8000000000000000);
LABEL_124:
        swift_willThrow();
        return;
      }

      sub_1AF0D2164(aBlock, v50, v51);

      v151 = sub_1AF3C694C(v50, v51, sub_1AF449CE4);

      v152 = v7[2][1].isa;

      sub_1AF42D984(v153, v5, v844);
      v154 = *(v1 + 80);
      v155 = swift_unknownObjectUnownedLoadStrong();
      sub_1AF3C654C(v152);
      sub_1AF24F600(v156, v154, v151, 0, 0, v813);

LABEL_164:
      sub_1AF448404(v813);
      *&aBlock[96] = *&v813[96];
      *&aBlock[112] = *&v813[112];
      aBlock[128] = v813[128];
      *&aBlock[32] = *&v813[32];
      *&aBlock[48] = *&v813[48];
      *&aBlock[80] = *&v813[80];
      *&aBlock[64] = *&v813[64];
      v149 = *&v813[16];
      v150 = *v813;
LABEL_165:
      *&aBlock[16] = v149;
      *aBlock = v150;
      nullsub_106();
      v856 = *&aBlock[96];
      v857 = *&aBlock[112];
      v185 = aBlock[128];
LABEL_166:
      v858 = v185;
      v852 = *&aBlock[32];
      v853 = *&aBlock[48];
      v854 = *&aBlock[64];
      v855 = *&aBlock[80];
      v139 = *&aBlock[16];
      v140 = *aBlock;
      goto LABEL_167;
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v7)[3].info)(v565, v48);
    v678 = v566;
    v124 = sub_1AF970A64(1, v566);
    v126 = v125;
    v677 = v565[0];
    v127 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v677, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v676 = v565[1];
    sub_1AF444058(&v676, &unk_1EB638968, &type metadata for TypeConstraint, v127, sub_1AF449B08);
    v675 = v565[2];
    sub_1AF444058(&v675, &unk_1EB638968, &type metadata for TypeConstraint, v127, sub_1AF449B08);
    sub_1AF44943C(&v678, sub_1AF445C2C);
    v674 = v567;
    sub_1AF44943C(&v674, sub_1AF445C2C);
    v673 = v568;
    sub_1AF444058(&v673, &unk_1EB638978, &type metadata for AnyValue, v127, sub_1AF449B08);
    MEMORY[0x1B2718AE0](v124, v126);

    MEMORY[0x1B2718AE0](0xD000000000000026, 0x80000001AFF27E60);
    v129 = *&aBlock[8];
    v128 = *aBlock;
    v130 = v7;
    v131 = 1;
    v132 = 0;
LABEL_123:
    sub_1AF3C5A5C(v130, v131, v132, v128, v129);

    goto LABEL_124;
  }

  if (v10 == _TtC3VFX18PublishTextureNode && v7)
  {
    v67 = v7[2];
    p_isa = &v67[1].superclass->isa;
    cache = v67[1].cache;
    swift_retain_n();
    swift_retain_n();
    v69 = sub_1AF9A178C(1, 0);
    if (v70)
    {
      v71 = 0xFFFFFFFFLL;
    }

    else
    {
      v71 = v69;
    }

    if (v70)
    {
      v72 = 0;
    }

    else
    {
      v72 = HIDWORD(v69);
    }

    v519 = v72;
    v521 = v71;
    v516 = v71 | (v72 << 32);
    if (!sub_1AF65A128(v516))
    {
      v166 = 0xD000000000000015;
      v167 = 0x80000001AFF27D60;
      v168 = v7;
      v169 = 0;
LABEL_200:
      v205 = 0;
      goto LABEL_201;
    }

    if (*p_isa == _TtC3VFX22RenderGraphTextureNode)
    {

      v73 = sub_1AF9A178C(1, 0);
      v75 = v74;

      if (v75)
      {
        v73 = 0xFFFFFFFFLL;
      }

      if (!sub_1AF65A128(v73))
      {
        v76 = "published elsewhere";
        v77 = 0xD000000000000015;
        goto LABEL_176;
      }

      if (sub_1AF67CACC(&type metadata for RenderGraphTextureTarget, &off_1F2546338, v73))
      {
        v76 = "Invalid texture input";
        v77 = 0xD00000000000001DLL;
LABEL_176:
        sub_1AF3C5A5C(v7, 1, 0, v77, v76 | 0x8000000000000000);
        swift_willThrow();

        return;
      }
    }

    if (v521 == -1 && !v519 || (, v197 = sub_1AF3C98DC(v516), , (v197 & 0xFF00) == 0x200))
    {
      v509 = 0;
    }

    else
    {
      v509 = (v197 >> 8) & 1;
    }

    sub_1AF42D984(v198, v5, v845);

    v199 = sub_1AF9A2FEC();
    if (!v200)
    {
      *aBlock = 0x207475706E49;
      *&aBlock[8] = 0xE600000000000000;
      ((*v7)[3].info)(v569, v199);
      v684 = v570;
      v206 = sub_1AF970A64(1, v570);
      v208 = v207;
      v683 = v569[0];
      v209 = MEMORY[0x1E69E62F8];
      sub_1AF444058(&v683, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
      v682 = v569[1];
      sub_1AF444058(&v682, &unk_1EB638968, &type metadata for TypeConstraint, v209, sub_1AF449B08);
      v681 = v569[2];
      sub_1AF444058(&v681, &unk_1EB638968, &type metadata for TypeConstraint, v209, sub_1AF449B08);
      sub_1AF44943C(&v684, sub_1AF445C2C);
      v680 = v571;
      sub_1AF44943C(&v680, sub_1AF445C2C);
      v679 = v572;
      sub_1AF444058(&v679, &unk_1EB638978, &type metadata for AnyValue, v209, sub_1AF449B08);
      MEMORY[0x1B2718AE0](v206, v208);

      MEMORY[0x1B2718AE0](0xD000000000000026, 0x80000001AFF27D80);
      v175 = *&aBlock[8];
      v174 = *aBlock;
      v176 = v7;
      v177 = 1;
      goto LABEL_195;
    }

    v201 = v199;
    v202 = v200;
    v203 = *(v536 + 104);

    v204 = sub_1AF70265C(v201, v202, v203);

    if (v204)
    {

      v166 = 0xD000000000000033;
      v167 = 0x80000001AFF27DE0;
      v168 = v7;
      v169 = 0;
      v205 = 1;
LABEL_201:
      sub_1AF3C5A5C(v168, v169, v205, v166, v167);
      goto LABEL_202;
    }

    sub_1AF0D2164(aBlock, v201, v202);

    v507 = sub_1AF3C694C(v201, v202, sub_1AF449CE4);

    v210 = *(v536 + 80);
    v211 = swift_unknownObjectUnownedLoadStrong();
    sub_1AF3C654C(cache);
    v213 = v212;
    v214 = swift_allocObject();

    swift_weakInit();

    v215 = swift_allocObject();
    *(v215 + 16) = v509;
    *(v215 + 24) = v214;
    *(v215 + 32) = v521;
    *(v215 + 36) = v519;
    *&aBlock[32] = sub_1AF448434;
    *&aBlock[40] = v215;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 1107296256;
    *&aBlock[16] = sub_1AF3C6CA0;
    *&aBlock[24] = &unk_1F250E168;
    v216 = _Block_copy(aBlock);

    sub_1AF24F600(v213, v210, v507, v509, v216, v801);
    _Block_release(v216);

    v217 = sub_1AF3C654C(0);
    sub_1AF3C654C(0);
    v219 = v218;
    v220 = swift_isUniquelyReferenced_nonNull_native();
    *aBlock = *(v536 + 120);
    *(v536 + 120) = 0x8000000000000000;
    sub_1AF8520E0(v217, v219, v516, v220);

    *(v536 + 120) = *aBlock;

    *&v813[64] = v801[4];
    *&v813[80] = v801[5];
    *&v813[96] = v801[6];
    *&v813[112] = v801[7];
    *v813 = v801[0];
    *&v813[16] = v801[1];
    v221 = v801[2];
    v222 = v801[3];
LABEL_197:
    *&v813[32] = v221;
    *&v813[48] = v222;
    goto LABEL_164;
  }

  if (v10 == _TtC3VFX18LinearizeDepthNode && v7)
  {
    v85 = v7[2][1].cache;
    v86 = swift_retain_n();
    sub_1AF42D984(v86, v5, v846);
    v87 = sub_1AF3C654C(v85);
    v89 = v88;

    v90 = sub_1AF9A25A8(1, 0);

    if (v90)
    {
      v91 = v90;
      MEMORY[0x1B2718E00]();
      if (*((*(v536 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v536 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
      v92 = *(v536 + 80);
      v93 = swift_unknownObjectUnownedLoadStrong();
      v94 = [v91 nodeRef];
    }

    else
    {
      v92 = *(v536 + 80);
      v93 = swift_unknownObjectUnownedLoadStrong();
      v91 = 0;
      v94 = 0;
    }

    sub_1AF24F104(v89, v92, v93, v94, v87, v813);

    goto LABEL_164;
  }

  if (v10 == _TtC3VFX8BlurNode && v7)
  {
    v157 = v7[2];
    info = v157->info;
    v159 = v157[1].isa;
    v160 = *(v1 + 24);
    swift_retain_n();
    sub_1AF3C6D00(v160, sub_1AF9A9560);
    if (v3)
    {
      goto LABEL_204;
    }

    *&v835 = info;
    v5(aBlock, &v835);

    *&v813[96] = *&aBlock[104];
    *&v813[112] = *&aBlock[120];
    v813[128] = v834;
    *&v813[32] = *&aBlock[40];
    *&v813[48] = *&aBlock[56];
    *&v813[80] = *&aBlock[88];
    *&v813[64] = *&aBlock[72];
    *&v813[16] = *&aBlock[24];
    *v813 = *&aBlock[8];
    if (sub_1AF44812C(v813) == 1)
    {
      goto LABEL_144;
    }

    v841 = *&v813[96];
    v842 = *&v813[112];
    v843 = v813[128];
    v837 = *&v813[32];
    v838 = *&v813[48];
    v840 = *&v813[80];
    v839 = *&v813[64];
    v836 = *&v813[16];
    v835 = *v813;
    if (sub_1AF448140(&v835) == 1)
    {
      nullsub_106();
LABEL_144:
      *aBlock = 0x207475706E49;
      *&aBlock[8] = 0xE600000000000000;
      ((*v7)[3].info)(v573);
      v690 = v574;
      v161 = sub_1AF970A64(0, v574);
      v163 = v162;
      v689 = v573[0];
      v164 = MEMORY[0x1E69E62F8];
      sub_1AF444058(&v689, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
      v688 = v573[1];
      sub_1AF444058(&v688, &unk_1EB638968, &type metadata for TypeConstraint, v164, sub_1AF449B08);
      v687 = v573[2];
      sub_1AF444058(&v687, &unk_1EB638968, &type metadata for TypeConstraint, v164, sub_1AF449B08);
      sub_1AF44943C(&v690, sub_1AF445C2C);
      v686 = v575;
      sub_1AF44943C(&v686, sub_1AF445C2C);
      v685 = v576;
      v165 = &v685;
LABEL_272:
      sub_1AF444058(v165, &unk_1EB638978, &type metadata for AnyValue, v164, sub_1AF449B08);
      MEMORY[0x1B2718AE0](v161, v163);

      v31 = 0x80000001AFF27C90;
      v30 = 0xD000000000000012;
      goto LABEL_35;
    }

    nullsub_106();
    v229 = v228[5];
    *&v848[57] = v228[4];
    *&v848[59] = v229;
    v230 = v228[7];
    *&v848[61] = v228[6];
    *&v848[63] = v230;
    v231 = v228[1];
    *&v848[49] = *v228;
    *&v848[51] = v231;
    v232 = v228[3];
    *&v848[53] = v228[2];
    *&v848[55] = v232;
    v528 = *(v1 + 80);
    v233 = swift_unknownObjectUnownedLoadStrong();
    v537 = sub_1AF3C654C(v159);
    v235 = v234;

    v236 = sub_1AF9A8804();

    if (v236 == 4)
    {
      v237 = 1;
    }

    else
    {
      v237 = v236;
    }

    v238 = sub_1AF9A1EB8(1, 0);

    v239 = *&v238;
    if ((v238 & 0x100000000) != 0)
    {
      v239 = 0.0;
    }

    if (v239 < 0.0)
    {
      v240 = 0.0;
    }

    else
    {
      v240 = v239;
    }

    __asm { FMOV            V2.4S, #1.0 }

    sub_1AF24F264(v528, v233, v235, v537, 4, v237, 0, &v804, 0, 0, _Q2, v240, 0.0, 0.0, 0.0, 0.0, 0, 0);
LABEL_260:

    goto LABEL_131;
  }

  if (v10 == _TtC3VFX13LaplacianNode && v7)
  {
    v179 = v7[2];
    v180 = v179->info;
    v181 = v179[1].isa;
    v182 = *(v1 + 24);
    swift_retain_n();
    sub_1AF3C6D00(v182, sub_1AF9A8E74);
    if (v3)
    {
      goto LABEL_204;
    }

    *&v835 = v180;
    v5(aBlock, &v835);

    *&v813[96] = *&aBlock[104];
    *&v813[112] = *&aBlock[120];
    v813[128] = v834;
    *&v813[32] = *&aBlock[40];
    *&v813[48] = *&aBlock[56];
    *&v813[80] = *&aBlock[88];
    *&v813[64] = *&aBlock[72];
    *&v813[16] = *&aBlock[24];
    *v813 = *&aBlock[8];
    if (sub_1AF44812C(v813) != 1)
    {
      v841 = *&v813[96];
      v842 = *&v813[112];
      v843 = v813[128];
      v837 = *&v813[32];
      v838 = *&v813[48];
      v840 = *&v813[80];
      v839 = *&v813[64];
      v836 = *&v813[16];
      v835 = *v813;
      if (sub_1AF448140(&v835) != 1)
      {
        nullsub_106();
        v251 = v250[5];
        *&v848[73] = v250[4];
        *&v848[75] = v251;
        v252 = v250[7];
        *&v848[77] = v250[6];
        *&v848[79] = v252;
        v253 = v250[1];
        *&v848[65] = *v250;
        *&v848[67] = v253;
        v254 = v250[3];
        *&v848[69] = v250[2];
        *&v848[71] = v254;
        v529 = *(v1 + 80);
        v233 = swift_unknownObjectUnownedLoadStrong();
        v538 = sub_1AF3C654C(v181);
        v256 = v255;

        v257 = sub_1AF9A8804();

        if (v257 == 4)
        {
          v258 = 1;
        }

        else
        {
          v258 = v257;
        }

        v259 = sub_1AF9A1EB8(1, 0);

        v260 = *&v259;
        if ((v259 & 0x100000000) != 0)
        {
          v260 = 0.0;
        }

        if (v260 < 0.0)
        {
          v261 = 0.0;
        }

        else
        {
          v261 = v260;
        }

        __asm { FMOV            V2.4S, #1.0 }

        sub_1AF24F264(v529, v233, v256, v538, 1, v258, 0, &v804, 0, 0, _Q2, 0.0, v261, 0.0, 0.0, 0.0, 0, 0);
        goto LABEL_260;
      }

      nullsub_106();
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v7)[3].info)(v577);
    v696 = v578;
    v161 = sub_1AF970A64(0, v578);
    v163 = v183;
    v695 = v577[0];
    v164 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v695, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v694 = v577[1];
    sub_1AF444058(&v694, &unk_1EB638968, &type metadata for TypeConstraint, v164, sub_1AF449B08);
    v693 = v577[2];
    sub_1AF444058(&v693, &unk_1EB638968, &type metadata for TypeConstraint, v164, sub_1AF449B08);
    sub_1AF44943C(&v696, sub_1AF445C2C);
    v692 = v579;
    sub_1AF44943C(&v692, sub_1AF445C2C);
    v691 = v580;
    v165 = &v691;
    goto LABEL_272;
  }

  if (v10 == _TtC3VFX7BoxNode && v7)
  {
    v186 = v7[2];
    v187 = v186->info;
    v188 = v186[1].isa;
    v189 = *(v1 + 24);
    swift_retain_n();
    sub_1AF3C6D00(v189, sub_1AF9A9544);
    if (v3)
    {
      goto LABEL_204;
    }

    *&v835 = v187;
    v5(aBlock, &v835);

    *&v813[96] = *&aBlock[104];
    *&v813[112] = *&aBlock[120];
    v813[128] = v834;
    *&v813[32] = *&aBlock[40];
    *&v813[48] = *&aBlock[56];
    *&v813[80] = *&aBlock[88];
    *&v813[64] = *&aBlock[72];
    *&v813[16] = *&aBlock[24];
    *v813 = *&aBlock[8];
    if (sub_1AF44812C(v813) != 1)
    {
      v841 = *&v813[96];
      v842 = *&v813[112];
      v843 = v813[128];
      v837 = *&v813[32];
      v838 = *&v813[48];
      v840 = *&v813[80];
      v839 = *&v813[64];
      v836 = *&v813[16];
      v835 = *v813;
      if (sub_1AF448140(&v835) != 1)
      {
        nullsub_106();
        v268 = v267[5];
        *&v848[89] = v267[4];
        *&v848[91] = v268;
        v269 = v267[7];
        *&v848[93] = v267[6];
        *&v848[95] = v269;
        v270 = v267[1];
        *&v848[81] = *v267;
        *&v848[83] = v270;
        v271 = v267[3];
        *&v848[85] = v267[2];
        *&v848[87] = v271;
        v530 = *(v1 + 80);
        v233 = swift_unknownObjectUnownedLoadStrong();
        v539 = sub_1AF3C654C(v188);
        v273 = v272;
        v274 = sub_1AF3C2C04();

        v275 = sub_1AF9A2230(1, 0);

        if ((v275 & 0x100000000) != 0)
        {
          v275 = 0;
        }

        else
        {
          v275 = v275;
        }

        v276 = sub_1AF9A2230(1, 0);

        v277 = v276;
        if ((v276 & 0x100000000) != 0)
        {
          v277 = 0;
        }

        __asm { FMOV            V2.4S, #1.0 }

        sub_1AF24F264(v530, v233, v273, v539, 2, v274, v275 | 1, &v804, 0, 0, _Q2, 0.0, 0.0, 0.0, 0.0, 0.0, v277 | 1, 0);
        goto LABEL_260;
      }

      nullsub_106();
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v7)[3].info)(v581);
    v702 = v582;
    v161 = sub_1AF970A64(0, v582);
    v163 = v190;
    v701 = v581[0];
    v164 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v701, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v700 = v581[1];
    sub_1AF444058(&v700, &unk_1EB638968, &type metadata for TypeConstraint, v164, sub_1AF449B08);
    v699 = v581[2];
    sub_1AF444058(&v699, &unk_1EB638968, &type metadata for TypeConstraint, v164, sub_1AF449B08);
    sub_1AF44943C(&v702, sub_1AF445C2C);
    v698 = v583;
    sub_1AF44943C(&v698, sub_1AF445C2C);
    v697 = v584;
    v165 = &v697;
    goto LABEL_272;
  }

  if (v10 == _TtC3VFX8TentNode && v7)
  {
    v192 = v7[2];
    v193 = v192->info;
    v194 = v192[1].isa;
    v195 = *(v1 + 24);
    swift_retain_n();
    sub_1AF3C6D00(v195, sub_1AF9A977C);
    if (v3)
    {
      goto LABEL_204;
    }

    *&v835 = v193;
    v5(aBlock, &v835);

    *&v813[96] = *&aBlock[104];
    *&v813[112] = *&aBlock[120];
    v813[128] = v834;
    *&v813[32] = *&aBlock[40];
    *&v813[48] = *&aBlock[56];
    *&v813[80] = *&aBlock[88];
    *&v813[64] = *&aBlock[72];
    *&v813[16] = *&aBlock[24];
    *v813 = *&aBlock[8];
    if (sub_1AF44812C(v813) != 1)
    {
      v841 = *&v813[96];
      v842 = *&v813[112];
      v843 = v813[128];
      v837 = *&v813[32];
      v838 = *&v813[48];
      v840 = *&v813[80];
      v839 = *&v813[64];
      v836 = *&v813[16];
      v835 = *v813;
      if (sub_1AF448140(&v835) != 1)
      {
        nullsub_106();
        v285 = v284[5];
        *&v848[105] = v284[4];
        *&v848[107] = v285;
        v286 = v284[7];
        *&v848[109] = v284[6];
        *&v848[111] = v286;
        v287 = v284[1];
        *&v848[97] = *v284;
        *&v848[99] = v287;
        v288 = v284[3];
        *&v848[101] = v284[2];
        *&v848[103] = v288;
        v531 = *(v1 + 80);
        v233 = swift_unknownObjectUnownedLoadStrong();
        v540 = sub_1AF3C654C(v194);
        v290 = v289;
        v291 = sub_1AF3C2C04();

        v292 = sub_1AF9A2230(1, 0);

        if ((v292 & 0x100000000) != 0)
        {
          v292 = 0;
        }

        else
        {
          v292 = v292;
        }

        v293 = sub_1AF9A2230(1, 0);

        v294 = v293;
        if ((v293 & 0x100000000) != 0)
        {
          v294 = 0;
        }

        __asm { FMOV            V2.4S, #1.0 }

        sub_1AF24F264(v531, v233, v290, v540, 3, v291, v292 | 1, &v804, 0, 0, _Q2, 0.0, 0.0, 0.0, 0.0, 0.0, v294 | 1, 0);
        goto LABEL_260;
      }

      nullsub_106();
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v7)[3].info)(v585);
    v708 = v586;
    v161 = sub_1AF970A64(0, v586);
    v163 = v196;
    v707 = v585[0];
    v164 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v707, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v706 = v585[1];
    sub_1AF444058(&v706, &unk_1EB638968, &type metadata for TypeConstraint, v164, sub_1AF449B08);
    v705 = v585[2];
    sub_1AF444058(&v705, &unk_1EB638968, &type metadata for TypeConstraint, v164, sub_1AF449B08);
    sub_1AF44943C(&v708, sub_1AF445C2C);
    v704 = v587;
    sub_1AF44943C(&v704, sub_1AF445C2C);
    v703 = v588;
    v165 = &v703;
    goto LABEL_272;
  }

  if (v10 == _TtC3VFX9SobelNode && v7)
  {
    v223 = v7[2];
    v224 = v223->info;
    v225 = v223[1].isa;
    v226 = *(v1 + 24);
    swift_retain_n();
    sub_1AF3C6D00(v226, sub_1AF9A9DB4);
    if (v3)
    {
      goto LABEL_204;
    }

    *&v835 = v224;
    v5(aBlock, &v835);

    *&v813[96] = *&aBlock[104];
    *&v813[112] = *&aBlock[120];
    v813[128] = v834;
    *&v813[32] = *&aBlock[40];
    *&v813[48] = *&aBlock[56];
    *&v813[80] = *&aBlock[88];
    *&v813[64] = *&aBlock[72];
    *&v813[16] = *&aBlock[24];
    *v813 = *&aBlock[8];
    if (sub_1AF44812C(v813) != 1)
    {
      v841 = *&v813[96];
      v842 = *&v813[112];
      v843 = v813[128];
      v837 = *&v813[32];
      v838 = *&v813[48];
      v840 = *&v813[80];
      v839 = *&v813[64];
      v836 = *&v813[16];
      v835 = *v813;
      if (sub_1AF448140(&v835) != 1)
      {
        nullsub_106();
        v299 = v298[5];
        *&v848[121] = v298[4];
        *&v848[123] = v299;
        v300 = v298[7];
        *&v848[125] = v298[6];
        *&v848[127] = v300;
        v301 = v298[1];
        *&v848[113] = *v298;
        *&v848[115] = v301;
        v302 = v298[3];
        *&v848[117] = v298[2];
        *&v848[119] = v302;
        v303 = *(v1 + 80);
        v233 = swift_unknownObjectUnownedLoadStrong();
        v304 = sub_1AF3C654C(v225);
        v306 = v305;
        v307 = sub_1AF3C2C04();
        __asm { FMOV            V2.4S, #1.0 }

        sub_1AF24F264(v303, v233, v306, v304, 5, v307, 0, &v804, 0, 0, _Q2, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0);
        goto LABEL_260;
      }

      nullsub_106();
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v7)[3].info)(v589);
    v714 = v590;
    v161 = sub_1AF970A64(0, v590);
    v163 = v227;
    v713 = v589[0];
    v164 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v713, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v712 = v589[1];
    sub_1AF444058(&v712, &unk_1EB638968, &type metadata for TypeConstraint, v164, sub_1AF449B08);
    v711 = v589[2];
    sub_1AF444058(&v711, &unk_1EB638968, &type metadata for TypeConstraint, v164, sub_1AF449B08);
    sub_1AF44943C(&v714, sub_1AF445C2C);
    v710 = v591;
    sub_1AF44943C(&v710, sub_1AF445C2C);
    v709 = v592;
    v165 = &v709;
    goto LABEL_272;
  }

  if (v10 == _TtC3VFX9CannyNode && v7)
  {
    v245 = v7[2];
    v246 = v245->info;
    v247 = v245[1].isa;
    v248 = *(v1 + 24);
    swift_retain_n();
    sub_1AF3C6D00(v248, sub_1AF9A99C8);
    if (v3)
    {
      goto LABEL_204;
    }

    *&v835 = v246;
    v5(aBlock, &v835);

    *&v813[96] = *&aBlock[104];
    *&v813[112] = *&aBlock[120];
    v813[128] = v834;
    *&v813[32] = *&aBlock[40];
    *&v813[48] = *&aBlock[56];
    *&v813[80] = *&aBlock[88];
    *&v813[64] = *&aBlock[72];
    *&v813[16] = *&aBlock[24];
    *v813 = *&aBlock[8];
    if (sub_1AF44812C(v813) != 1)
    {
      v841 = *&v813[96];
      v842 = *&v813[112];
      v843 = v813[128];
      v837 = *&v813[32];
      v838 = *&v813[48];
      v840 = *&v813[80];
      v839 = *&v813[64];
      v836 = *&v813[16];
      v835 = *v813;
      if (sub_1AF448140(&v835) != 1)
      {
        nullsub_106();
        v311 = v310[5];
        *&v848[137] = v310[4];
        *&v848[139] = v311;
        v312 = v310[7];
        *&v848[141] = v310[6];
        *&v848[143] = v312;
        v313 = v310[1];
        *&v848[129] = *v310;
        *&v848[131] = v313;
        v314 = v310[3];
        *&v848[133] = v310[2];
        *&v848[135] = v314;
        v532 = *(v1 + 80);
        v233 = swift_unknownObjectUnownedLoadStrong();
        v541 = sub_1AF3C654C(v247);
        v316 = v315;
        v317 = sub_1AF3C2C04();

        v318 = sub_1AF9A1EB8(1, 0);

        if ((v318 & 0x100000000) != 0)
        {
          v319 = 0.4;
        }

        else
        {
          v319 = *&v318;
        }

        v320 = sub_1AF9A1EB8(1, 0);

        if ((v320 & 0x100000000) != 0)
        {
          v321 = 0.2;
        }

        else
        {
          v321 = *&v320;
        }

        __asm { FMOV            V2.4S, #1.0 }

        sub_1AF24F264(v532, v233, v316, v541, 6, v317, 0, &v804, 0, 0, _Q2, 0.0, 0.0, 0.0, v319, v321, 0, 0);
        goto LABEL_260;
      }

      nullsub_106();
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v7)[3].info)(v593);
    v720 = v594;
    v161 = sub_1AF970A64(0, v594);
    v163 = v249;
    v719 = v593[0];
    v164 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v719, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v718 = v593[1];
    sub_1AF444058(&v718, &unk_1EB638968, &type metadata for TypeConstraint, v164, sub_1AF449B08);
    v717 = v593[2];
    sub_1AF444058(&v717, &unk_1EB638968, &type metadata for TypeConstraint, v164, sub_1AF449B08);
    sub_1AF44943C(&v720, sub_1AF445C2C);
    v716 = v595;
    sub_1AF44943C(&v716, sub_1AF445C2C);
    v715 = v596;
    v165 = &v715;
    goto LABEL_272;
  }

  if (v10 == _TtC3VFX17SDFGenerationNode && v7)
  {
    v263 = v7[2];
    v264 = v263->info;
    v265 = v263[1].isa;
    swift_retain_n();
    if (sub_1AF3C567C(v265))
    {
      *aBlock = 0x207475706E49;
      *&aBlock[8] = 0xE600000000000000;
      ((*v7)[3].info)(v601);
      v732 = v602;
      v25 = sub_1AF970A64(0, v602);
      v27 = v266;
      v731 = v601[0];
      v28 = MEMORY[0x1E69E62F8];
      sub_1AF444058(&v731, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
      v730 = v601[1];
      sub_1AF444058(&v730, &unk_1EB638968, &type metadata for TypeConstraint, v28, sub_1AF449B08);
      v729 = v601[2];
      sub_1AF444058(&v729, &unk_1EB638968, &type metadata for TypeConstraint, v28, sub_1AF449B08);
      sub_1AF44943C(&v732, sub_1AF445C2C);
      v728 = v603;
      sub_1AF44943C(&v728, sub_1AF445C2C);
      v727 = v604;
      v29 = &v727;
      goto LABEL_34;
    }

    *&v835 = v264;
    v5(aBlock, &v835);

    *&v813[96] = *&aBlock[104];
    *&v813[112] = *&aBlock[120];
    v813[128] = v834;
    *&v813[32] = *&aBlock[40];
    *&v813[48] = *&aBlock[56];
    *&v813[80] = *&aBlock[88];
    *&v813[64] = *&aBlock[72];
    *&v813[16] = *&aBlock[24];
    *v813 = *&aBlock[8];
    if (sub_1AF44812C(v813) != 1)
    {
      v841 = *&v813[96];
      v842 = *&v813[112];
      v843 = v813[128];
      v837 = *&v813[32];
      v838 = *&v813[48];
      v840 = *&v813[80];
      v839 = *&v813[64];
      v836 = *&v813[16];
      v835 = *v813;
      if (sub_1AF448140(&v835) != 1)
      {
        nullsub_106();
        v325 = v324[5];
        *&v848[153] = v324[4];
        *&v848[155] = v325;
        v326 = v324[7];
        *&v848[157] = v324[6];
        *&v848[159] = v326;
        v327 = v324[1];
        *&v848[145] = *v324;
        *&v848[147] = v327;
        v328 = v324[3];
        *&v848[149] = v324[2];
        *&v848[151] = v328;
        v330 = *(v1 + 72);
        v329 = *(v1 + 80);
        v233 = swift_unknownObjectUnownedLoadStrong();
        sub_1AF3C654C(v265);
        v332 = v331;

        v333 = sub_1AF4197D8();

        v334 = sub_1AF3DADCC();

        sub_1AF24FB0C(v329, v330, v233, v332, v334, &v804, v333);
        goto LABEL_260;
      }

      nullsub_106();
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v7)[3].info)(v597);
    v726 = v598;
    v161 = sub_1AF970A64(0, v598);
    v163 = v297;
    v725 = v597[0];
    v164 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v725, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v724 = v597[1];
    sub_1AF444058(&v724, &unk_1EB638968, &type metadata for TypeConstraint, v164, sub_1AF449B08);
    v723 = v597[2];
    sub_1AF444058(&v723, &unk_1EB638968, &type metadata for TypeConstraint, v164, sub_1AF449B08);
    sub_1AF44943C(&v726, sub_1AF445C2C);
    v722 = v599;
    sub_1AF44943C(&v722, sub_1AF445C2C);
    v721 = v600;
    v165 = &v721;
    goto LABEL_272;
  }

  if (v10 == _TtC3VFX11AreaMinNode && v7)
  {
    sub_1AF3C7160(*(v1 + 24), sub_1AF9A8C70);
    if (!v2)
    {
      *&v835 = v7[2]->info;

      v5(aBlock, &v835);

      *&v813[96] = *&aBlock[104];
      *&v813[112] = *&aBlock[120];
      v813[128] = v834;
      *&v813[32] = *&aBlock[40];
      *&v813[48] = *&aBlock[56];
      *&v813[80] = *&aBlock[88];
      *&v813[64] = *&aBlock[72];
      *&v813[16] = *&aBlock[24];
      *v813 = *&aBlock[8];
      if (sub_1AF44812C(v813) == 1)
      {
LABEL_253:
        *aBlock = 0x207475706E49;
        *&aBlock[8] = 0xE600000000000000;
        ((*v7)[3].info)(v605);
        v738 = v606;
        v279 = sub_1AF970A64(0, v606);
        v281 = v280;
        v737 = v605[0];
        v282 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v737, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v736 = v605[1];
        sub_1AF444058(&v736, &unk_1EB638968, &type metadata for TypeConstraint, v282, sub_1AF449B08);
        v735 = v605[2];
        sub_1AF444058(&v735, &unk_1EB638968, &type metadata for TypeConstraint, v282, sub_1AF449B08);
        sub_1AF44943C(&v738, sub_1AF445C2C);
        v734 = v607;
        sub_1AF44943C(&v734, sub_1AF445C2C);
        v733 = v608;
        v283 = &v733;
LABEL_295:
        sub_1AF444058(v283, &unk_1EB638978, &type metadata for AnyValue, v282, sub_1AF449B08);
        MEMORY[0x1B2718AE0](v279, v281);

        MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF27C90);
        sub_1AF3C5A5C(v7, 0, 0, *aBlock, *&aBlock[8]);

        swift_willThrow();

        return;
      }

      v841 = *&v813[96];
      v842 = *&v813[112];
      v843 = v813[128];
      v837 = *&v813[32];
      v838 = *&v813[48];
      v840 = *&v813[80];
      v839 = *&v813[64];
      v836 = *&v813[16];
      v835 = *v813;
      if (sub_1AF448140(&v835) == 1)
      {
        nullsub_106();
        goto LABEL_253;
      }

      nullsub_106();
      v345 = v344[5];
      *&v848[169] = v344[4];
      *&v848[171] = v345;
      v346 = v344[7];
      *&v848[173] = v344[6];
      *&v848[175] = v346;
      v347 = v344[1];
      *&v848[161] = *v344;
      *&v848[163] = v347;
      v348 = v344[3];
      *&v848[165] = v344[2];
      *&v848[167] = v348;
      v533 = *(v1 + 80);
      v349 = swift_unknownObjectUnownedLoadStrong();
      sub_1AF3C654C(v7[2][1].isa);
      v351 = v350;

      v352 = sub_1AF9A2230(1, 0);

      v353 = sub_1AF9A2230(1, 0);

      if ((v352 & 0x100000000) != 0)
      {
        v354 = 0;
      }

      else
      {
        v354 = v352;
      }

      if ((v353 & 0x100000000) != 0)
      {
        v355 = 0;
      }

      else
      {
        v355 = v353;
      }

      sub_1AF24F318(v533, v349, "AreaMin", v351, 1, v354, v355, &v804, 0);
LABEL_319:

      goto LABEL_131;
    }

    return;
  }

  if (v10 != _TtC3VFX11AreaMaxNode || !v7)
  {
    if (v10 == _TtC3VFX10DilateNode && v7)
    {
      sub_1AF3C7F8C(*(v1 + 24), sub_1AF9A8C38);
      if (v2)
      {
        return;
      }

      *&v835 = v7[2]->info;

      v5(aBlock, &v835);

      *&v813[96] = *&aBlock[104];
      *&v813[112] = *&aBlock[120];
      v813[128] = v834;
      *&v813[32] = *&aBlock[40];
      *&v813[48] = *&aBlock[56];
      *&v813[80] = *&aBlock[88];
      *&v813[64] = *&aBlock[72];
      *&v813[16] = *&aBlock[24];
      *v813 = *&aBlock[8];
      if (sub_1AF44812C(v813) == 1)
      {
LABEL_280:
        *aBlock = 0x207475706E49;
        *&aBlock[8] = 0xE600000000000000;
        ((*v7)[3].info)(v613);
        v750 = v614;
        v279 = sub_1AF970A64(0, v614);
        v281 = v309;
        v749 = v613[0];
        v282 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v749, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v748 = v613[1];
        sub_1AF444058(&v748, &unk_1EB638968, &type metadata for TypeConstraint, v282, sub_1AF449B08);
        v747 = v613[2];
        sub_1AF444058(&v747, &unk_1EB638968, &type metadata for TypeConstraint, v282, sub_1AF449B08);
        sub_1AF44943C(&v750, sub_1AF445C2C);
        v746 = v615;
        sub_1AF44943C(&v746, sub_1AF445C2C);
        v745 = v616;
        v283 = &v745;
        goto LABEL_295;
      }

      v841 = *&v813[96];
      v842 = *&v813[112];
      v843 = v813[128];
      v837 = *&v813[32];
      v838 = *&v813[48];
      v840 = *&v813[80];
      v839 = *&v813[64];
      v836 = *&v813[16];
      v835 = *v813;
      if (sub_1AF448140(&v835) == 1)
      {
        nullsub_106();
        goto LABEL_280;
      }

      nullsub_106();
      v383 = v382[5];
      *&v848[201] = v382[4];
      *&v848[203] = v383;
      v384 = v382[7];
      *&v848[205] = v382[6];
      *&v848[207] = v384;
      v385 = v382[1];
      *&v848[193] = *v382;
      *&v848[195] = v385;
      v386 = v382[3];
      *&v848[197] = v382[2];
      *&v848[199] = v386;
      v522 = sub_1AF9A3064() + 32;
      v525 = *(v1 + 80);
      v387 = swift_unknownObjectUnownedLoadStrong();
      sub_1AF3C654C(v7[2][1].isa);
      v542 = v388;

      v389 = sub_1AF9A8AD0();
      v391 = v390;

      if (v391)
      {
      }

      else
      {
        v389 = 0;
      }

      sub_1AF9A8AD0();
      v413 = v412;
      v415 = v414;

      if (v415)
      {
      }

      else
      {
        v413 = 0;
      }

      sub_1AF24F318(v525, v387, "Dilate", v542, 2, v389, v413, &v804, v522);

      v819 = v808;
      v820 = v809;
      v821 = v810;
      v822 = v811;
      v815 = v804;
      v816 = v805;
      v817 = v806;
      v818 = v807;
      sub_1AF448404(&v815);
      v830 = v821;
      v831 = v822;
      v832 = v823;
      v826 = v817;
      v827 = v818;
      v829 = v820;
      v828 = v819;
      v825 = v816;
      v824 = v815;
      nullsub_106();
LABEL_353:

      goto LABEL_132;
    }

    if (v10 == _TtC3VFX9ErodeNode && v7)
    {
      sub_1AF3C7F8C(*(v1 + 24), sub_1AF9A9C04);
      if (v2)
      {
        return;
      }

      *&v835 = v7[2]->info;

      v5(aBlock, &v835);

      *&v813[96] = *&aBlock[104];
      *&v813[112] = *&aBlock[120];
      v813[128] = v834;
      *&v813[32] = *&aBlock[40];
      *&v813[48] = *&aBlock[56];
      *&v813[80] = *&aBlock[88];
      *&v813[64] = *&aBlock[72];
      *&v813[16] = *&aBlock[24];
      *v813 = *&aBlock[8];
      if (sub_1AF44812C(v813) != 1)
      {
        v841 = *&v813[96];
        v842 = *&v813[112];
        v843 = v813[128];
        v837 = *&v813[32];
        v838 = *&v813[48];
        v840 = *&v813[80];
        v839 = *&v813[64];
        v836 = *&v813[16];
        v835 = *v813;
        if (sub_1AF448140(&v835) != 1)
        {
          nullsub_106();
          v403 = v402[5];
          v849[4] = v402[4];
          v849[5] = v403;
          v404 = v402[7];
          v849[6] = v402[6];
          v849[7] = v404;
          v405 = v402[1];
          v849[0] = *v402;
          v849[1] = v405;
          v406 = v402[3];
          v849[2] = v402[2];
          v849[3] = v406;
          v407 = sub_1AF9AAD58();
          sub_1AF3C8DE4(v407 + 32, v1, v849, v7, &v824);

          goto LABEL_353;
        }

        nullsub_106();
      }

      *aBlock = 0x207475706E49;
      *&aBlock[8] = 0xE600000000000000;
      ((*v7)[3].info)(v617);
      v756 = v618;
      v279 = sub_1AF970A64(0, v618);
      v281 = v323;
      v755 = v617[0];
      v282 = MEMORY[0x1E69E62F8];
      sub_1AF444058(&v755, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
      v754 = v617[1];
      sub_1AF444058(&v754, &unk_1EB638968, &type metadata for TypeConstraint, v282, sub_1AF449B08);
      v753 = v617[2];
      sub_1AF444058(&v753, &unk_1EB638968, &type metadata for TypeConstraint, v282, sub_1AF449B08);
      sub_1AF44943C(&v756, sub_1AF445C2C);
      v752 = v619;
      sub_1AF44943C(&v752, sub_1AF445C2C);
      v751 = v620;
      v283 = &v751;
      goto LABEL_295;
    }

    if (v10 == _TtC3VFX9BloomNode && v7)
    {
      v335 = v7[2];
      v336 = v335[1].superclass;
      v337 = v335[1].cache;
      swift_retain_n();
      if (sub_1AF3C567C(v337))
      {
        *aBlock = 0x207475706E49;
        *&aBlock[8] = 0xE600000000000000;
        ((*v7)[3].info)(v625);
        v768 = v626;
        v338 = sub_1AF970A64(1, v626);
        v340 = v339;
        v767 = v625[0];
        v341 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v767, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v766 = v625[1];
        sub_1AF444058(&v766, &unk_1EB638968, &type metadata for TypeConstraint, v341, sub_1AF449B08);
        v765 = v625[2];
        sub_1AF444058(&v765, &unk_1EB638968, &type metadata for TypeConstraint, v341, sub_1AF449B08);
        sub_1AF44943C(&v768, sub_1AF445C2C);
        v764 = v627;
        sub_1AF44943C(&v764, sub_1AF445C2C);
        v763 = v628;
        sub_1AF444058(&v763, &unk_1EB638978, &type metadata for AnyValue, v341, sub_1AF449B08);
        MEMORY[0x1B2718AE0](v338, v340);

        v342 = 0xD000000000000018;
        v343 = 0x80000001AFF27C70;
      }

      else
      {
        *&v835 = v336;
        v5(aBlock, &v835);

        *&v813[96] = *&aBlock[104];
        *&v813[112] = *&aBlock[120];
        v813[128] = v834;
        *&v813[32] = *&aBlock[40];
        *&v813[48] = *&aBlock[56];
        *&v813[80] = *&aBlock[88];
        *&v813[64] = *&aBlock[72];
        *&v813[16] = *&aBlock[24];
        *v813 = *&aBlock[8];
        if (sub_1AF44812C(v813) != 1)
        {
          v841 = *&v813[96];
          v842 = *&v813[112];
          v843 = v813[128];
          v837 = *&v813[32];
          v838 = *&v813[48];
          v840 = *&v813[80];
          v839 = *&v813[64];
          v836 = *&v813[16];
          v835 = *v813;
          if (sub_1AF448140(&v835) != 1)
          {
            nullsub_106();
            v433 = v432[5];
            v849[12] = v432[4];
            v849[13] = v433;
            v434 = v432[7];
            v849[14] = v432[6];
            v849[15] = v434;
            v435 = v432[1];
            v849[8] = *v432;
            v849[9] = v435;
            v436 = v432[3];
            v849[10] = v432[2];
            v849[11] = v436;

            v437 = sub_1AF9A25A8(1, 0);

            if (v437)
            {
              v438 = v437;
              MEMORY[0x1B2718E00]();
              sub_1AFCEF5B4(*((*(v1 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10));
              sub_1AFDFD4B8();
            }

            v439 = *(v1 + 72);
            v535 = *(v1 + 80);
            v440 = swift_unknownObjectUnownedLoadStrong();
            v441 = sub_1AF3C654C(v337);
            v443 = v442;
            if (v437)
            {
              Strong = [v437 nodeRef];
            }

            else
            {
              Strong = 0;
            }

            sub_1AF24F37C(v535, v439, v440, Strong, v443, v441, &v804);

LABEL_130:
LABEL_131:
            v819 = v808;
            v820 = v809;
            v821 = v810;
            v822 = v811;
            v815 = v804;
            v816 = v805;
            v817 = v806;
            v818 = v807;
            sub_1AF448404(&v815);
            v830 = v821;
            v831 = v822;
            v832 = v823;
            v826 = v817;
            v827 = v818;
            v829 = v820;
            v828 = v819;
            v825 = v816;
            v824 = v815;
            nullsub_106();
LABEL_132:
            v856 = v830;
            v857 = v831;
            v858 = v832;
            v852 = v826;
            v853 = v827;
            v854 = v828;
            v855 = v829;
            v139 = v825;
            v140 = v824;
LABEL_167:
            v850 = v140;
            v851 = v139;
            goto LABEL_21;
          }

          nullsub_106();
        }

        *aBlock = 0x207475706E49;
        *&aBlock[8] = 0xE600000000000000;
        ((*v7)[3].info)(v621);
        v762 = v622;
        v392 = sub_1AF970A64(1, v622);
        v394 = v393;
        v761 = v621[0];
        v395 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v761, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v760 = v621[1];
        sub_1AF444058(&v760, &unk_1EB638968, &type metadata for TypeConstraint, v395, sub_1AF449B08);
        v759 = v621[2];
        sub_1AF444058(&v759, &unk_1EB638968, &type metadata for TypeConstraint, v395, sub_1AF449B08);
        sub_1AF44943C(&v762, sub_1AF445C2C);
        v758 = v623;
        sub_1AF44943C(&v758, sub_1AF445C2C);
        v757 = v624;
        sub_1AF444058(&v757, &unk_1EB638978, &type metadata for AnyValue, v395, sub_1AF449B08);
        MEMORY[0x1B2718AE0](v392, v394);

        v343 = 0x80000001AFF27C90;
        v342 = 0xD000000000000012;
      }

      MEMORY[0x1B2718AE0](v342, v343);
      v33 = *&aBlock[8];
      v32 = *aBlock;
      v34 = v7;
      v35 = 1;
      goto LABEL_37;
    }

    if (v10 == _TtC3VFX16CameraEffectNode && v7)
    {
      v356 = v7[2];
      v357 = v356[1].superclass;
      v358 = v356[1].cache;
      swift_retain_n();
      if (sub_1AF3C567C(v358))
      {
        *aBlock = 0x207475706E49;
        *&aBlock[8] = 0xE600000000000000;
        ((*v7)[3].info)(v645);
        v798 = v646;
        v359 = sub_1AF970A64(1, v646);
        v361 = v360;
        v797 = v645[0];
        v362 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v797, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v796 = v645[1];
        sub_1AF444058(&v796, &unk_1EB638968, &type metadata for TypeConstraint, v362, sub_1AF449B08);
        v795 = v645[2];
        sub_1AF444058(&v795, &unk_1EB638968, &type metadata for TypeConstraint, v362, sub_1AF449B08);
        sub_1AF44943C(&v798, sub_1AF445C2C);
        v794 = v647;
        sub_1AF44943C(&v794, sub_1AF445C2C);
        v793 = v648;
        sub_1AF444058(&v793, &unk_1EB638978, &type metadata for AnyValue, v362, sub_1AF449B08);
        MEMORY[0x1B2718AE0](v359, v361);

        v363 = 0xD000000000000018;
        v364 = 0x80000001AFF27C70;
LABEL_346:
        MEMORY[0x1B2718AE0](v363, v364);
        v105 = *&aBlock[8];
        v104 = *aBlock;
        v106 = v7;
        v107 = 1;
        goto LABEL_113;
      }

      *v813 = v357;
      v5(aBlock, v813);

      v841 = *&aBlock[104];
      v842 = *&aBlock[120];
      v843 = v834;
      v837 = *&aBlock[40];
      v838 = *&aBlock[56];
      v840 = *&aBlock[88];
      v839 = *&aBlock[72];
      v836 = *&aBlock[24];
      v835 = *&aBlock[8];
      if (sub_1AF44812C(&v835) == 1)
      {
LABEL_345:
        *aBlock = 0x207475706E49;
        *&aBlock[8] = 0xE600000000000000;
        ((*v7)[3].info)(v641);
        v792 = v642;
        v408 = sub_1AF970A64(1, v642);
        v410 = v409;
        v791 = v641[0];
        v411 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v791, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v790 = v641[1];
        sub_1AF444058(&v790, &unk_1EB638968, &type metadata for TypeConstraint, v411, sub_1AF449B08);
        v789 = v641[2];
        sub_1AF444058(&v789, &unk_1EB638968, &type metadata for TypeConstraint, v411, sub_1AF449B08);
        sub_1AF44943C(&v792, sub_1AF445C2C);
        v788 = v643;
        sub_1AF44943C(&v788, sub_1AF445C2C);
        v787 = v644;
        sub_1AF444058(&v787, &unk_1EB638978, &type metadata for AnyValue, v411, sub_1AF449B08);
        MEMORY[0x1B2718AE0](v408, v410);

        v364 = 0x80000001AFF27C90;
        v363 = 0xD000000000000012;
        goto LABEL_346;
      }

      v830 = v841;
      v831 = v842;
      v832 = v843;
      v826 = v837;
      v827 = v838;
      v829 = v840;
      v828 = v839;
      v825 = v836;
      v824 = v835;
      if (sub_1AF448140(&v824) == 1)
      {
        nullsub_106();
        goto LABEL_345;
      }

      nullsub_106();
      v446 = v445[5];
      v849[28] = v445[4];
      v849[29] = v446;
      v447 = v445[7];
      v849[30] = v445[6];
      v849[31] = v447;
      v448 = v445[1];
      v849[24] = *v445;
      v849[25] = v448;
      v449 = v445[3];
      v849[26] = v445[2];
      v849[27] = v449;
      v450 = v7[2];
      v451 = v450[1].vtable;
      v510 = v450[1].info;
      swift_retain_n();
      v514 = sub_1AF3C654C(v358);
      v517 = v452;
      RGNullPass();
      v523 = RGNullResource();
      if (swift_dynamicCastClass())
      {
LABEL_377:

        v453 = sub_1AF9A25A8(1, 0);

        if (v453)
        {
          v454 = v453;
          MEMORY[0x1B2718E00]();
          sub_1AFCEF5B4(*((*(v536 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_1AFDFD4B8();
          v456 = *(v536 + 72);
          v455 = *(v536 + 80);
          v457 = swift_unknownObjectUnownedLoadStrong();
          v458 = [v454 nodeRef];
        }

        else
        {
          v456 = *(v536 + 72);
          v455 = *(v536 + 80);
          v457 = swift_unknownObjectUnownedLoadStrong();
          v454 = 0;
          v458 = 0;
        }

        sub_1AF24F40C(v455, v456, v457, v458, v517, v514, v523, &v804);

        v819 = v808;
        v820 = v809;
        v821 = v810;
        v822 = v811;
        v815 = v804;
        v816 = v805;
        v817 = v806;
        v818 = v807;
        sub_1AF448404(&v815);
        *&v813[96] = v821;
        *&v813[112] = v822;
        v813[128] = v823;
        *&v813[32] = v817;
        *&v813[48] = v818;
        *&v813[80] = v820;
        *&v813[64] = v819;
        *&v813[16] = v816;
        *v813 = v815;
        nullsub_106();
        v856 = *&v813[96];
        v857 = *&v813[112];
        v858 = v813[128];
        v852 = *&v813[32];
        v853 = *&v813[48];
        v854 = *&v813[64];
        v855 = *&v813[80];
        v139 = *&v813[16];
        v140 = *v813;
        goto LABEL_167;
      }

      if (sub_1AF3C567C(v510) == 1)
      {
        *&v804 = v451;
        v5(v813, &v804);

        v821 = *&v813[104];
        v822 = *&v813[120];
        v823 = v814;
        v817 = *&v813[40];
        v818 = *&v813[56];
        v820 = *&v813[88];
        v819 = *&v813[72];
        v816 = *&v813[24];
        v815 = *&v813[8];
        if (sub_1AF44812C(&v815) != 1)
        {
          v810 = v821;
          v811 = v822;
          v812 = v823;
          v806 = v817;
          v807 = v818;
          v809 = v820;
          v808 = v819;
          v805 = v816;
          v804 = v815;
          if (sub_1AF448140(&v804) != 1)
          {
            nullsub_106();
            v489 = v488[5];
            v849[20] = v488[4];
            v849[21] = v489;
            v490 = v488[7];
            v849[22] = v488[6];
            v849[23] = v490;
            v491 = v488[1];
            v849[16] = *v488;
            v849[17] = v491;
            v492 = v488[3];
            v849[18] = v488[2];
            v849[19] = v492;
            sub_1AF3C654C(v510);
            v523 = v493;
            v494 = RGContextResolveTextureDescriptor(*(v536 + 72), v493);
            if (!v494)
            {
              goto LABEL_377;
            }

            v802 = *v494;
            v803 = *(v494 + 16);
            v495 = RGContextResolveTextureDescriptor(*(v536 + 72), v517);
            if (!v495)
            {
              goto LABEL_377;
            }

            v496 = v495;
            v799 = *v495;
            v800 = *(v495 + 16);
            v497 = sub_1AF445CA8(&v799);
            v799 = v802;
            v800 = v803;
            if (v497 == sub_1AF445CA8(&v799))
            {
              v799 = *v496;
              v800 = *(v496 + 16);
              v498 = sub_1AF445CB0(&v799);
              v799 = v802;
              v800 = v803;
              if (v498 == sub_1AF445CB0(&v799))
              {
                goto LABEL_377;
              }
            }

            *&v799 = 0;
            *(&v799 + 1) = 0xE000000000000000;
            sub_1AFDFE218();
            v499 = MEMORY[0x1B2718AE0](0x207475706E49, 0xE600000000000000);
            ((*v7)[3].info)(v629, v499);
            v774 = v630;
            v500 = sub_1AF970A64(2, v630);
            v502 = v501;
            v773 = v629[0];
            v503 = MEMORY[0x1E69E62F8];
            sub_1AF444058(&v773, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
            v772 = v629[1];
            sub_1AF444058(&v772, &unk_1EB638968, &type metadata for TypeConstraint, v503, sub_1AF449B08);
            v771 = v629[2];
            sub_1AF444058(&v771, &unk_1EB638968, &type metadata for TypeConstraint, v503, sub_1AF449B08);
            sub_1AF44943C(&v774, sub_1AF445C2C);
            v770 = v631;
            sub_1AF44943C(&v770, sub_1AF445C2C);
            v769 = v632;
            sub_1AF444058(&v769, &unk_1EB638978, &type metadata for AnyValue, v503, sub_1AF449B08);
            MEMORY[0x1B2718AE0](v500, v502);

            MEMORY[0x1B2718AE0](0xD000000000000038, 0x80000001AFF27CE0);
            v483 = *(&v799 + 1);
            v482 = v799;
LABEL_397:
            sub_1AF3C5A5C(v7, 2, 0, v482, v483);

            swift_willThrow();

            goto LABEL_204;
          }

          nullsub_106();
        }

        *v813 = 0x207475706E49;
        *&v813[8] = 0xE600000000000000;
        ((*v7)[3].info)(v633);
        v780 = v634;
        v459 = sub_1AF970A64(2, v634);
        v461 = v460;
        v779 = v633[0];
        v462 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v779, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v778 = v633[1];
        sub_1AF444058(&v778, &unk_1EB638968, &type metadata for TypeConstraint, v462, sub_1AF449B08);
        v777 = v633[2];
        sub_1AF444058(&v777, &unk_1EB638968, &type metadata for TypeConstraint, v462, sub_1AF449B08);
        sub_1AF44943C(&v780, sub_1AF445C2C);
        v776 = v635;
        sub_1AF44943C(&v776, sub_1AF445C2C);
        v775 = v636;
        sub_1AF444058(&v775, &unk_1EB638978, &type metadata for AnyValue, v462, sub_1AF449B08);
        MEMORY[0x1B2718AE0](v459, v461);

        v463 = 0x80000001AFF27C90;
        v464 = 0xD000000000000012;
      }

      else
      {
        *v813 = 0x207475706E49;
        *&v813[8] = 0xE600000000000000;
        ((*v7)[3].info)(v637);
        v786 = v638;
        v478 = sub_1AF970A64(2, v638);
        v480 = v479;
        v785 = v637[0];
        v481 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v785, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v784 = v637[1];
        sub_1AF444058(&v784, &unk_1EB638968, &type metadata for TypeConstraint, v481, sub_1AF449B08);
        v783 = v637[2];
        sub_1AF444058(&v783, &unk_1EB638968, &type metadata for TypeConstraint, v481, sub_1AF449B08);
        sub_1AF44943C(&v786, sub_1AF445C2C);
        v782 = v639;
        sub_1AF44943C(&v782, sub_1AF445C2C);
        v781 = v640;
        sub_1AF444058(&v781, &unk_1EB638978, &type metadata for AnyValue, v481, sub_1AF449B08);
        MEMORY[0x1B2718AE0](v478, v480);

        v464 = 0xD000000000000018;
        v463 = 0x80000001AFF27CB0;
      }

      MEMORY[0x1B2718AE0](v464, v463);
      v483 = *&v813[8];
      v482 = *v813;
      goto LABEL_397;
    }

    if (v10 == _TtC3VFX17ComputeShaderNode && v7)
    {
      if (sub_1AF9A6924(*(v1 + 48)))
      {
        v376 = sub_1AF9A6B38();
        v378 = v377;
        v379 = sub_1AF42F404(v7, v5);
        if (v2)
        {
          return;
        }

        if (v379)
        {
          sub_1AF874DF4(v376, v378, v379, v380, *(v1 + 80), v847, v381);

          if (sub_1AF448418(v847) == 1)
          {
            v55 = " full screen quad pass";
            v57 = 0xD000000000000022;
            goto LABEL_74;
          }

          *&v813[64] = v847[4];
          *&v813[80] = v847[5];
          *&v813[96] = v847[6];
          *&v813[112] = v847[7];
          *v813 = v847[0];
          *&v813[16] = v847[1];
          v221 = v847[2];
          v222 = v847[3];
          goto LABEL_197;
        }

        goto LABEL_382;
      }
    }

    else
    {
      if (v10 != _TtC3VFX18FullscreenQuadNode || !v7)
      {
        if (v10 == _TtC3VFX22RenderGraphTextureNode && v7)
        {
          v416 = *(v1 + 48);

          v417 = sub_1AF9A178C(1, 0);
          v419 = v418;

          if (v419)
          {
            v420 = 0xFFFFFFFFLL;
          }

          else
          {
            v420 = v417;
          }

          if (sub_1AF65A128(v420))
          {

            v421 = sub_1AF9A178C(1, 0);
            v423 = v422;

            if (v423)
            {
              v424 = 0xFFFFFFFFLL;
            }

            else
            {
              v424 = v421;
            }

            if ((sub_1AF3C98DC(v424) & 0xFF00) != 0x200)
            {

              sub_1AF9A178C(1, 0);

              v526 = sub_1AF9A9F5C();
              v466 = v465;

              v467 = sub_1AF9A178C(1, 0);
              v469 = v468;

              if (v469)
              {
                v470 = 0xFFFFFFFFLL;
              }

              else
              {
                v470 = v467;
              }

              v471 = sub_1AF6ABEF0(v470, v416);
              v524 = v472;

              sub_1AFCEF4E0();
              v473 = *(*(v1 + 112) + 16);
              sub_1AFCEF584(v473);
              v474 = *(v1 + 112);
              *(v474 + 16) = v473 + 1;
              v475 = (v474 + 40 * v473);
              v475[4] = v7;
              v475[5] = v526;
              v475[6] = v466;
              v475[7] = v471;
              v475[8] = v524;
              *(v1 + 112) = v474;
              v476 = sub_1AFDFCEC8();

              v477 = RGResourceIdentifierMake(v476);

              RGTextureReferenceDescriptorCreate(v477, 1.0);
            }

            LOBYTE(v815) = 0;

            v425 = sub_1AF9A178C(1, 0);
            v427 = v426;

            if (v427)
            {
              v428 = 0xFFFFFFFFLL;
            }

            else
            {
              v428 = v425;
            }

            v429 = sub_1AF8D93C8(v428, &v815, v416, *(v1 + 56));
            if (v429)
            {
              if ((v815 & 1) == 0)
              {
                CFXTextureDescriptorFromMTLTexture(v429, &v824, v430, v431);
                v484 = *(v1 + 80);
                v485 = swift_allocObject();
                swift_weakInit();
                v486 = swift_allocObject();
                *(v486 + 16) = v485;
                *(v486 + 24) = v7;
                *&aBlock[32] = sub_1AF4483E4;
                *&aBlock[40] = v486;
                *aBlock = MEMORY[0x1E69E9820];
                *&aBlock[8] = 1107296256;
                *&aBlock[16] = sub_1AF419890;
                *&aBlock[24] = &unk_1F24E5E70;
                v487 = _Block_copy(aBlock);

                *aBlock = v824;
                *&aBlock[16] = v825;
                RGBuilderCreateExternalTexture(v484, "TextureAsset", aBlock, v487, 0);
                _Block_release(v487);

                *aBlock = v824;
                *&aBlock[16] = v825;
                RGTextureReferenceDescriptorCreate(aBlock);
              }

              swift_unknownObjectRelease();
            }

            v55 = "Texture unavailable";
            v57 = 0xD000000000000020;
          }

          else
          {

            v55 = "Invalid render graph node: ";
            v57 = 0xD000000000000013;
          }

          goto LABEL_74;
        }

        *aBlock = 0xD00000000000001BLL;
        *&aBlock[8] = 0x80000001AFF27AE0;
        v444 = (v10[3].superclass)();
        MEMORY[0x1B2718AE0](v444);

        v129 = 0x80000001AFF27AE0;
        v128 = 0xD00000000000001BLL;
        v130 = v7;
        v131 = 0;
        v132 = 1;
        goto LABEL_123;
      }

      if (sub_1AF9A6924(*(v1 + 48)))
      {
        v396 = sub_1AF9A6B38();
        v398 = v397;
        v399 = sub_1AF42F404(v7, v5);
        if (v2)
        {
          return;
        }

        if (v399)
        {
          sub_1AF875510(v396, v398, v399, v400, *(v1 + 80), v848, v401);

          if (sub_1AF448418(v848) != 1)
          {
            *&v813[64] = *&v848[8];
            *&v813[80] = *&v848[10];
            *&v813[96] = *&v848[12];
            *&v813[112] = *&v848[14];
            *v813 = *v848;
            *&v813[16] = *&v848[2];
            *&v813[32] = *&v848[4];
            *&v813[48] = *&v848[6];
            sub_1AF448404(v813);
            *&aBlock[96] = *&v813[96];
            *&aBlock[112] = *&v813[112];
            aBlock[128] = v813[128];
            *&aBlock[32] = *&v813[32];
            *&aBlock[48] = *&v813[48];
            *&aBlock[80] = *&v813[80];
            *&aBlock[64] = *&v813[64];
            *&aBlock[16] = *&v813[16];
            *aBlock = *v813;
            nullsub_106();
            v856 = *&aBlock[96];
            v857 = *&aBlock[112];
            v185 = aBlock[128];
            goto LABEL_166;
          }

          v55 = "om metal reflection";
          v57 = 0xD000000000000026;
          goto LABEL_74;
        }

LABEL_382:
        v54 = "Unable to extract script data from metal reflection";
        goto LABEL_72;
      }
    }

    v55 = "TextureAssetCopy";
    v56 = 36;
    goto LABEL_73;
  }

  sub_1AF3C7160(*(v1 + 24), sub_1AF9A8C54);
  if (!v2)
  {
    *&v835 = v7[2]->info;

    v5(aBlock, &v835);

    *&v813[96] = *&aBlock[104];
    *&v813[112] = *&aBlock[120];
    v813[128] = v834;
    *&v813[32] = *&aBlock[40];
    *&v813[48] = *&aBlock[56];
    *&v813[80] = *&aBlock[88];
    *&v813[64] = *&aBlock[72];
    *&v813[16] = *&aBlock[24];
    *v813 = *&aBlock[8];
    if (sub_1AF44812C(v813) != 1)
    {
      v841 = *&v813[96];
      v842 = *&v813[112];
      v843 = v813[128];
      v837 = *&v813[32];
      v838 = *&v813[48];
      v840 = *&v813[80];
      v839 = *&v813[64];
      v836 = *&v813[16];
      v835 = *v813;
      if (sub_1AF448140(&v835) != 1)
      {
        nullsub_106();
        v366 = v365[5];
        *&v848[185] = v365[4];
        *&v848[187] = v366;
        v367 = v365[7];
        *&v848[189] = v365[6];
        *&v848[191] = v367;
        v368 = v365[1];
        *&v848[177] = *v365;
        *&v848[179] = v368;
        v369 = v365[3];
        *&v848[181] = v365[2];
        *&v848[183] = v369;
        v534 = *(v1 + 80);
        v349 = swift_unknownObjectUnownedLoadStrong();
        sub_1AF3C654C(v7[2][1].isa);
        v371 = v370;

        v372 = sub_1AF9A2230(1, 0);

        v373 = sub_1AF9A2230(1, 0);

        if ((v372 & 0x100000000) != 0)
        {
          v374 = 0;
        }

        else
        {
          v374 = v372;
        }

        if ((v373 & 0x100000000) != 0)
        {
          v375 = 0;
        }

        else
        {
          v375 = v373;
        }

        sub_1AF24F318(v534, v349, "AreaMax", v371, 0, v374, v375, &v804, 0);
        goto LABEL_319;
      }

      nullsub_106();
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v7)[3].info)(v609);
    v744 = v610;
    v279 = sub_1AF970A64(0, v610);
    v281 = v296;
    v743 = v609[0];
    v282 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v743, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v742 = v609[1];
    sub_1AF444058(&v742, &unk_1EB638968, &type metadata for TypeConstraint, v282, sub_1AF449B08);
    v741 = v609[2];
    sub_1AF444058(&v741, &unk_1EB638968, &type metadata for TypeConstraint, v282, sub_1AF449B08);
    sub_1AF44943C(&v744, sub_1AF445C2C);
    v740 = v611;
    sub_1AF44943C(&v740, sub_1AF445C2C);
    v739 = v612;
    v283 = &v739;
    goto LABEL_295;
  }
}

id sub_1AF43943C(const CFX::RG::Resource *a1, char a2)
{
  v5 = CFXMTLCreateSystemDefaultDevice();
  v6 = [objc_allocWithZone(MEMORY[0x1E69741C0]) init];
  v7 = RGContextResolveTextureDescriptor(*(v2 + 72), a1);
  if (v7)
  {
    v26 = *v7;
    v27 = *(v7 + 16);
    v28 = *v7;
    v29 = *(v7 + 16);
    v8 = sub_1AF445CA8(&v28);
    v9 = v8 / sub_1AF445CB0(&v26);
    if (a2 == 1)
    {
LABEL_3:
      v10 = 55;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 1.0;
    if (a2 == 1)
    {
      goto LABEL_3;
    }
  }

  v10 = 115;
LABEL_6:
  [v6 setPixelFormat_];
  [v6 setWidth_];
  v11 = (256.0 / v9);
  if (v11 >= 256)
  {
    v11 = 256;
  }

  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  [v6 setHeight_];
  [v6 setStorageMode_];
  [v6 setUsage_];
  if (a2 == 1)
  {
    [v6 setStorageMode_];
    [v6 setUsage_];
  }

  v13 = [v5 newTextureWithDescriptor_];
  v14 = [*(v2 + 40) commandBuffer];
  v15 = sub_1AFDFCEC8();
  [v14 setLabel_];

  v16 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  v17 = [v16 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  [v18 setTexture_];
  v19 = [v16 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  [v20 setLoadAction_];
  v21 = [v16 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript_];

  [v22 setClearColor_];
  v23 = [v16 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript_];

  [v24 setStoreAction_];
  [objc_msgSend(v14 renderCommandEncoderWithDescriptor_];
  [v14 commit];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v13;
}

void *sub_1AF439808(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AF448148(0);
  v3 = MEMORY[0x1E69E5FE0];
  v5 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], v4, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    v7 = a1 + 32;
    v8 = MEMORY[0x1E69E5FE0];
    while (1)
    {
      v16 = *(v7 + 112);
      *&v46[96] = *(v7 + 96);
      *&v46[112] = v16;
      *&v46[128] = *(v7 + 128);
      v46[144] = *(v7 + 144);
      v17 = *(v7 + 48);
      *&v46[32] = *(v7 + 32);
      *&v46[48] = v17;
      v18 = *(v7 + 80);
      *&v46[64] = *(v7 + 64);
      *&v46[80] = v18;
      v19 = *(v7 + 16);
      *v46 = *v7;
      *&v46[16] = v19;
      sub_1AF449A04(v46, v44, &unk_1EB638CB8, sub_1AF448148, v8, sub_1AF442A88);
      v21 = *(v6 + 2);
      v20 = *(v6 + 3);
      if (v21 >= v20 >> 1)
      {
        v6 = sub_1AF422330(v20 > 1, v21 + 1, 1, v6, &qword_1EB630978, v8);
      }

      v22 = *v46;
      *(v6 + 2) = v21 + 1;
      *&v6[8 * v21 + 32] = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = sub_1AF0D3F10(v22);
      v26 = v25;
      v27 = v5[2] + ((v25 & 1) == 0);
      if (v5[3] < v27)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v42 = v24;
      sub_1AF845B40();
      v24 = v42;
      if (v26)
      {
LABEL_12:
        v29 = (v5[7] + 144 * v24);
        v44[0] = *v29;
        v30 = v29[4];
        v32 = v29[1];
        v31 = v29[2];
        v44[3] = v29[3];
        v44[4] = v30;
        v44[1] = v32;
        v44[2] = v31;
        v34 = v29[6];
        v33 = v29[7];
        v35 = v29[5];
        *(v45 + 9) = *(v29 + 121);
        v44[6] = v34;
        v45[0] = v33;
        v44[5] = v35;
        *v29 = *&v46[8];
        v36 = *&v46[24];
        v37 = *&v46[40];
        v38 = *&v46[72];
        v29[3] = *&v46[56];
        v29[4] = v38;
        v29[1] = v36;
        v29[2] = v37;
        v39 = *&v46[88];
        v40 = *&v46[104];
        v41 = *&v46[120];
        *(v29 + 121) = *&v46[129];
        v29[6] = v40;
        v29[7] = v41;
        v29[5] = v39;
        sub_1AF44943C(v44, sub_1AF448148);
        goto LABEL_4;
      }

LABEL_3:
      v5[(v24 >> 6) + 8] |= 1 << v24;
      *(v5[6] + 8 * v24) = v22;
      v9 = (v5[7] + 144 * v24);
      *v9 = *&v46[8];
      v10 = *&v46[40];
      v11 = *&v46[72];
      v12 = *&v46[24];
      v9[3] = *&v46[56];
      v9[4] = v11;
      v9[1] = v12;
      v9[2] = v10;
      v13 = *&v46[88];
      v14 = *&v46[104];
      v15 = *&v46[120];
      *(v9 + 121) = *&v46[129];
      v9[6] = v14;
      v9[7] = v15;
      v9[5] = v13;
      ++v5[2];
LABEL_4:
      v7 += 152;
      if (!--v2)
      {
        return v5;
      }
    }

    sub_1AF82EA24(v27, isUniquelyReferenced_nonNull_native);
    v24 = sub_1AF0D3F10(v22);
    if ((v26 & 1) != (v28 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v26)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v5;
}

void *sub_1AF439B40(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AF449B08(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1E69E5FE0];
  v5 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], v4, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    for (i = (a1 + 48); ; i += 24)
    {
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;
      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_1AF422330(v12 > 1, v13 + 1, 1, v6, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v6 + 2) = v13 + 1;
      *&v6[8 * v13 + 32] = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_1AF0D3F10(v10);
      v17 = v16;
      v18 = v5[2] + ((v16 & 1) == 0);
      if (v5[3] < v18)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v21 = v15;
      sub_1AF845D54();
      v15 = v21;
      if (v17)
      {
LABEL_12:
        v20 = v5[7] + 12 * v15;
        *v20 = v9;
        *(v20 + 8) = v11;
        goto LABEL_4;
      }

LABEL_3:
      v5[(v15 >> 6) + 8] |= 1 << v15;
      *(v5[6] + 8 * v15) = v10;
      v8 = v5[7] + 12 * v15;
      *v8 = v9;
      *(v8 + 8) = v11;
      ++v5[2];
LABEL_4:
      if (!--v2)
      {
        return v5;
      }
    }

    sub_1AF82EDB8(v18, isUniquelyReferenced_nonNull_native);
    v15 = sub_1AF0D3F10(v10);
    if ((v17 & 1) != (v19 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v17)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v5;
}

void *sub_1AF439D90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF448C14(0, &unk_1EB63F670, &unk_1EB638D40, &unk_1EB63F680, sub_1AF448BAC);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];

    v4 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1AF439EA4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(a1 + 8);
  return v2(&v4);
}

uint64_t sub_1AF439ED8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1AF439F2C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1AF43A038(uint64_t a1)
{
  if (!qword_1ED726930)
  {
    sub_1AF445B28(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED726930);
    }
  }
}

unint64_t sub_1AF43A0C8()
{
  result = qword_1ED72F9B0;
  if (!qword_1ED72F9B0)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E6488], MEMORY[0x1E69E6448], v0, v1);
    atomic_store(result, &qword_1ED72F9B0);
  }

  return result;
}

void sub_1AF43A11C(uint64_t a1)
{
  if (!qword_1EB633A38)
  {
    sub_1AF445B28(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB633A38);
    }
  }
}

void sub_1AF43A1C0(uint64_t a1)
{
  if (!qword_1EB633A30)
  {
    sub_1AF445B28(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB633A30);
    }
  }
}

void sub_1AF43A260(uint64_t a1)
{
  if (!qword_1EB638168)
  {
    sub_1AF43A378(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638168);
    }
  }
}

void sub_1AF43A2F4(uint64_t a1)
{
  if (!qword_1ED726968)
  {
    sub_1AF43A378(255, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED726968);
    }
  }
}

void sub_1AF43A378(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AF43A3CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  result = *a2;
  if (!*a2)
  {
    sub_1AF4498F4(255, a3, a4, a5 & 1);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1AF43A424()
{
  if (!qword_1ED723060)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723060);
    }
  }
}

void sub_1AF43A480()
{
  if (!qword_1ED726B00)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726B00);
    }
  }
}

void sub_1AF43A4E0()
{
  if (!qword_1EB633190)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633190);
    }
  }
}

void sub_1AF43A570(uint64_t a1)
{
  if (!qword_1ED72D5A0)
  {
    sub_1AF449B08(255, qword_1ED72D5B0, MEMORY[0x1E69E6530], type metadata accessor for UnsafeArray);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED72D5A0);
    }
  }
}

uint64_t sub_1AF43A5EC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1AF43A634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449BDC(0, &qword_1ED726B30, sub_1AF445EE0, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 3);
    v6 = *v4;
    v10 = *(v4 - 1);
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    v8 = v3[7] + 24 * v7;
    *v8 = v10;
    *(v8 + 16) = v6;
    ++v3[2];
    v4 += 4;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43A744(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CA0];
  sub_1AF43CC28(0, &qword_1ED726B48, MEMORY[0x1E69E6D30], MEMORY[0x1E69E7CA0] + 8);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v22 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF445E74(0, v6);
  v10 = sub_1AFDFE5C8();
  v11 = *(v4 + 48);
  v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v13 = *(v5 + 72);

  do
  {
    sub_1AF447AA4(v12, v8, &qword_1ED726B48, MEMORY[0x1E69E6D30], v2 + 8, sub_1AF43CC28);
    v15 = sub_1AF419DC8(v8, v14);
    *(v10 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
    v16 = v2;
    v17 = v10[6];
    v18 = sub_1AFDFE488();
    v19 = *(v18 - 8);
    v20 = v17 + *(v19 + 72) * v15;
    v2 = v16;
    (*(v19 + 32))(v20, v8, v18);
    sub_1AF0DB6BC(&v8[v11], (v10[7] + 32 * v15));
    ++v10[2];
    v12 += v13;
    --v9;
  }

  while (v9);

  return v10;
}

void *sub_1AF43A958(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AF449B08(0, &qword_1EB638DB8, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1E69E5FE0];
  v5 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], v4, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v8 = *i;
      v11 = *(v6 + 2);
      v10 = *(v6 + 3);

      if (v11 >= v10 >> 1)
      {
        v6 = sub_1AF422330(v10 > 1, v11 + 1, 1, v6, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v6 + 2) = v11 + 1;
      *&v6[8 * v11 + 32] = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_1AF0D3F10(v9);
      v15 = v14;
      v16 = v5[2] + ((v14 & 1) == 0);
      if (v5[3] < v16)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v18 = v13;
      sub_1AF849C40();
      v13 = v18;
      if (v15)
      {
LABEL_12:
        *(v5[7] + 8 * v13) = v8;

        goto LABEL_4;
      }

LABEL_3:
      v5[(v13 >> 6) + 8] |= 1 << v13;
      *(v5[6] + 8 * v13) = v9;
      *(v5[7] + 8 * v13) = v8;
      ++v5[2];
LABEL_4:
      if (!--v2)
      {
        return v5;
      }
    }

    sub_1AF836304(v16, isUniquelyReferenced_nonNull_native);
    v13 = sub_1AF0D3F10(v9);
    if ((v15 & 1) != (v17 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v5;
}

void *sub_1AF43AB80(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1E69E5FE0];
  v5 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], v4, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    for (i = (a1 + 48); ; i += 3)
    {
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;
      v13 = *(v6 + 2);
      v12 = *(v6 + 3);

      if (v13 >= v12 >> 1)
      {
        v6 = sub_1AF422330(v12 > 1, v13 + 1, 1, v6, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v6 + 2) = v13 + 1;
      *&v6[8 * v13 + 32] = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_1AF0D3F10(v10);
      v17 = v16;
      v18 = v5[2] + ((v16 & 1) == 0);
      if (v5[3] < v18)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v21 = v15;
      sub_1AF846294();
      v15 = v21;
      if (v17)
      {
LABEL_12:
        v20 = (v5[7] + 16 * v15);
        *v20 = v9;
        v20[1] = v11;

        goto LABEL_4;
      }

LABEL_3:
      v5[(v15 >> 6) + 8] |= 1 << v15;
      *(v5[6] + 8 * v15) = v10;
      v8 = (v5[7] + 16 * v15);
      *v8 = v9;
      v8[1] = v11;
      ++v5[2];
LABEL_4:
      if (!--v2)
      {
        return v5;
      }
    }

    sub_1AF82F63C(v18, isUniquelyReferenced_nonNull_native);
    v15 = sub_1AF0D3F10(v10);
    if ((v17 & 1) != (v19 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v17)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v5;
}

void *sub_1AF43ADB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447EC4(0);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;
    v8 = sub_1AF0D3F10(v5);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v5;
    v9 = (v3[7] + 16 * v8);
    *v9 = v6;
    v9[1] = v7;
    ++v3[2];

    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43AE7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447B18();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;
  v5 = MEMORY[0x1E69E76D8];
  do
  {
    sub_1AF0D8094(v4, &v9, &unk_1EB638C48, v5, &type metadata for ShaderCache.ShaderCacheWeakReference, sub_1AF0D8108);
    v6 = v9;
    v7 = sub_1AF0D3F10(v9);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v6;
    sub_1AF0D5D54(&v10, v3[7] + 8 * v7);
    ++v3[2];
    v4 += 16;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43AFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4476E8();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 72);
  do
  {
    v5 = *(v4 - 5);
    v6 = *(v4 - 4);
    v7 = *(v4 - 3);
    v8 = *(v4 - 2);
    v9 = *(v4 - 1);
    v10 = *v4;
    v11 = sub_1AF0D3F10(v5);
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + 8 * v11) = v5;
    v12 = (v3[7] + 40 * v11);
    *v12 = v6;
    v12[1] = v7;
    v12[2] = v8;
    v12[3] = v9;
    v12[4] = v10;
    ++v3[2];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v4 += 6;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43B0A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447618(0);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 72);
  do
  {
    v5 = *(v4 - 4);
    v7 = *(v4 - 3);
    v6 = *(v4 - 2);
    v8 = *(v4 - 1);
    v9 = *v4;
    *&v14 = *(v4 - 5);
    *(&v14 + 1) = v5;
    *&v15 = v7;
    *(&v15 + 1) = v6;
    v16 = v8;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v10 = sub_1AF419E2C(&v14);
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v11 = v3[6] + 40 * v10;
    v12 = v15;
    *v11 = v14;
    *(v11 + 16) = v12;
    *(v11 + 32) = v16;
    *(v3[7] + 8 * v10) = v9;
    ++v3[2];
    v4 += 6;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43B1CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443998(0, &qword_1EB638780, type metadata accessor for XcodeInfo, sub_1AF444A40, &type metadata for Target);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 32);

  do
  {
    v5 = *v4;
    v6 = *(v4 + 1);
    v7 = v4[1];

    v8 = sub_1AF419FCC(v5 | (v7 << 8));
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = (v3[6] + 2 * v8);
    *v9 = v5;
    v9[1] = v7;
    *(v3[7] + 8 * v8) = v6;
    ++v3[2];
    v4 += 16;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43B324(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();

  v5 = (a1 + 48);
  do
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    v5 += 3;

    v9 = sub_1AF41A54C(v6, v7, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v4[6] + 16 * v9);
    *v10 = v6;
    v10[1] = v7;
    *(v4[7] + 8 * v9) = v8;
    ++v4[2];
    --v2;
  }

  while (v2);

  return v4;
}

void *sub_1AF43B44C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43B6E8();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);

    v7 = *v4;
    v4 += 3;
    v8 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = (v3[6] + 16 * v8);
    *v9 = v5;
    v9[1] = v6;
    *(v3[7] + 8 * v8) = v7;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43B558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43B630(0);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = *(v4 - 2);
    v8 = sub_1AF41A9B4(v7);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v7;
    v9 = (v3[7] + 16 * v8);
    *v9 = v6;
    v9[1] = v5;
    ++v3[2];

    v4 += 3;
    --v1;
  }

  while (v1);
  return v3;
}

void sub_1AF43B630(uint64_t a1)
{
  if (!qword_1EB638180)
  {
    sub_1AF43B694();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638180);
    }
  }
}

unint64_t sub_1AF43B694()
{
  result = qword_1ED7271A0;
  if (!qword_1ED7271A0)
  {
    result = swift_getWitnessTable(byte_1AFE6D494, &type metadata for Entity, v0, v1);
    atomic_store(result, &qword_1ED7271A0);
  }

  return result;
}

void sub_1AF43B6E8()
{
  if (!qword_1EB638190)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638190);
    }
  }
}

void sub_1AF43B748()
{
  if (!qword_1ED726AC0)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726AC0);
    }
  }
}

void *sub_1AF43B7D4(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v6 = sub_1AFDFE5C8();
  v7 = (a1 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = a3(v8);
    *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v6[6] + 8 * v10) = v8;
    *(v6[7] + 8 * v10) = v9;
    ++v6[2];
    v7 += 2;
    --v3;
  }

  while (v3);
  return v6;
}

void *sub_1AF43B8F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4460CC();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 3);
    v6 = *(v4 - 2);
    v7 = *(v4 - 1);
    v8 = *v4;
    v9 = sub_1AF0D3F10(v5);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v5;
    v10 = (v3[7] + 24 * v9);
    *v10 = v6;
    v10[1] = v7;
    v10[2] = v8;
    ++v3[2];

    v4 += 4;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43B9E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446040(0);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 2);
    v6 = *v4;
    v4 += 2;
    v7 = sub_1AF0DB464(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 4 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];

    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43BAB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446324();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 3);
    v6 = *v4;
    v10 = *(v4 - 1);
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    v8 = v3[7] + 24 * v7;
    *v8 = v10;
    *(v8 + 16) = v6;
    ++v3[2];

    v4 += 4;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43BBB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43BDD0(0);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *v4;
    v6 = *(v4 - 1);

    v7 = sub_1AF41A464(v6);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v6;
    *(v3[7] + 8 * v7) = v5;
    ++v3[2];
    v4 += 2;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43BC90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43CDE8(0, &unk_1EB6381A0, &unk_1EB63F590, 0x1E6974B98, &qword_1EB6381B0);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 2;
    v7 = sub_1AF41A464(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

uint64_t sub_1AF43BD80(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_1AF0D4478(255, a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF43BDD0(uint64_t a1)
{
  if (!qword_1EB6381B8)
  {
    sub_1AF0D4478(255, &unk_1EB63F590, 0x1E6974B98);
    type metadata accessor for SkeletonAnimation();
    sub_1AF43BD80(&qword_1EB6381B0, &unk_1EB63F590, 0x1E6974B98);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6381B8);
    }
  }
}

void *sub_1AF43BE7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449BDC(0, &qword_1EB638900, type metadata accessor for vfx_vertex_attribute, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;

    v8 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = (v3[6] + 16 * v8);
    *v9 = v5;
    v9[1] = v6;
    *(v3[7] + 8 * v8) = v7;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43BFAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43CABC(0);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = sub_1AF41A4B4(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];

    v4 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43C0A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43CDE8(0, &unk_1EB63F3B0, &qword_1ED72E050, &off_1E7A77B30, &qword_1EB638270);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 2;
    v7 = sub_1AF41A630(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43C198(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43CDE8(0, &qword_1EB638258, &qword_1ED72E0B0, &off_1E7A77B00, &unk_1EB638260);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 2;
    v7 = sub_1AF41A5E0(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43C288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43CD30(0);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;
    sub_1AF43C9F0(v5, v6);
    v8 = sub_1AF41A54C(v5, v6, MEMORY[0x1E6969048], sub_1AF41D8D4);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = (v3[6] + 16 * v8);
    *v9 = v5;
    v9[1] = v6;
    *(v3[7] + 8 * v8) = v7;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43C398(uint64_t a1)
{
  sub_1AF43CC28(0, &qword_1EB638238, MEMORY[0x1E6968FB0], &type metadata for Entity);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43CC94(0);
  v8 = sub_1AFDFE5C8();
  v9 = *(v3 + 48);
  v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v4 + 72);

  do
  {
    sub_1AF447AA4(v10, v6, &qword_1EB638238, MEMORY[0x1E6968FB0], &type metadata for Entity, sub_1AF43CC28);
    v12 = sub_1AF41A390(v6);
    *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v13 = v8[6];
    v14 = sub_1AFDFC128();
    (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v6, v14);
    *(v8[7] + 8 * v12) = *&v6[v9];
    ++v8[2];
    v10 += v11;
    --v7;
  }

  while (v7);

  return v8;
}

void *sub_1AF43C5A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43CB58(0);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;
    v8 = sub_1AF419D60(v5);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v5;
    v9 = (v3[7] + 16 * v8);
    *v9 = v6;
    v9[1] = v7;
    ++v3[2];
    v10 = v6;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43C668(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43C954(0);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 16;
    v7 = sub_1AF419D60(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43C758(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();
  v5 = (a1 + 40);
  do
  {
    v6 = *(v5 - 1);
    v7 = *v5;
    v5 += 16;
    v8 = sub_1AF419D60(v6);
    *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v4[6] + 8 * v8) = v6;
    *(v4[7] + v8) = v7;
    ++v4[2];
    --v2;
  }

  while (v2);
  return v4;
}

void sub_1AF43C81C(uint64_t a1)
{
  if (!qword_1EB6381C8)
  {
    type metadata accessor for VFXWrapMode(255);
    sub_1AF43A5EC(&qword_1EB6381D0, type metadata accessor for VFXWrapMode, asc_1AFE4C018);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6381C8);
    }
  }
}

void sub_1AF43C8B8(uint64_t a1)
{
  if (!qword_1EB6381D8)
  {
    type metadata accessor for VFXFilterMode(255);
    sub_1AF43A5EC(&qword_1EB6381E0, type metadata accessor for VFXFilterMode, aE_19);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6381D8);
    }
  }
}

void sub_1AF43C954(uint64_t a1)
{
  if (!qword_1EB6381E8)
  {
    type metadata accessor for VFXFilterMode(255);
    sub_1AF43A5EC(&qword_1EB6381E0, type metadata accessor for VFXFilterMode, aE_19);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6381E8);
    }
  }
}

uint64_t sub_1AF43C9F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_1AF43CA44(uint64_t a1)
{
  if (!qword_1EB638208)
  {
    sub_1AF0D4478(255, &qword_1EB638210, &off_1E7A77B20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638208);
    }
  }
}

void sub_1AF43CABC(uint64_t a1)
{
  if (!qword_1EB630C10)
  {
    type metadata accessor for VertexLayoutDescriptor();
    sub_1AF43A5EC(&qword_1EB6315C0, type metadata accessor for VertexLayoutDescriptor, byte_1AFE80588);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB630C10);
    }
  }
}

void sub_1AF43CB58(uint64_t a1)
{
  if (!qword_1EB638218)
  {
    type metadata accessor for vfx_vertex_attribute(255);
    sub_1AF43CC28(255, &qword_1EB638220, type metadata accessor for VFXMeshSourceSemantic, MEMORY[0x1E69E6530]);
    sub_1AF43A5EC(&unk_1EB638228, type metadata accessor for vfx_vertex_attribute, byte_1AFE4BF94);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638218);
    }
  }
}

void sub_1AF43CC28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AF43CC94(uint64_t a1)
{
  if (!qword_1EB638240)
  {
    sub_1AFDFC128();
    sub_1AF43A5EC(&qword_1ED725EE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638240);
    }
  }
}

void sub_1AF43CD30(uint64_t a1)
{
  if (!qword_1EB63F3C0)
  {
    sub_1AF43CD94();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F3C0);
    }
  }
}

unint64_t sub_1AF43CD94()
{
  result = qword_1EB638250;
  if (!qword_1EB638250)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6969098], MEMORY[0x1E6969080], v0, v1);
    atomic_store(result, &qword_1EB638250);
  }

  return result;
}

void sub_1AF43CDE8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1AF0D4478(255, a3, a4);
    sub_1AF43BD80(a5, a3, a4);
    v9 = sub_1AFDFE5D8();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1AF43CE7C(uint64_t a1)
{
  if (!qword_1EB638278)
  {
    type metadata accessor for VFXWorldLoaderOption(255);
    sub_1AF43A5EC(&qword_1EB638280, type metadata accessor for VFXWorldLoaderOption, a1_15);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638278);
    }
  }
}

void sub_1AF43CF1C(uint64_t a1)
{
  if (!qword_1EB638290)
  {
    sub_1AF445B28(255, &qword_1EB638298, sub_1AF43CFC0, &type metadata for VertexLayout, MEMORY[0x1E69E64E8]);
    sub_1AF43B694();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638290);
    }
  }
}

unint64_t sub_1AF43CFC0()
{
  result = qword_1EB6382A0;
  if (!qword_1EB6382A0)
  {
    result = swift_getWitnessTable(byte_1AFE80480, &type metadata for VertexLayout, v0, v1);
    atomic_store(result, &qword_1EB6382A0);
  }

  return result;
}

void sub_1AF43D014(uint64_t a1)
{
  if (!qword_1EB6331E8)
  {
    sub_1AF449B08(255, &qword_1EB6332D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
    sub_1AF43D0A4();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6331E8);
    }
  }
}

unint64_t sub_1AF43D0A4()
{
  result = qword_1EB6339B8;
  if (!qword_1EB6339B8)
  {
    result = swift_getWitnessTable(byte_1AFE64784, &type metadata for FlyModeKeys, v0, v1);
    atomic_store(result, &qword_1EB6339B8);
  }

  return result;
}

void sub_1AF43D0F8()
{
  if (!qword_1EB633B70)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633B70);
    }
  }
}

void sub_1AF43D154(uint64_t a1)
{
  if (!qword_1ED72C1B8)
  {
    sub_1AF43A3CC(255, &qword_1ED72C1B0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, 1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED72C1B8);
    }
  }
}

void *sub_1AF43D1DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44674C(0);
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;
  do
  {
    sub_1AF4495B8(v4, &v8, sub_1AF4467E4);
    v5 = v8;
    v6 = sub_1AF0D3F10(v8);
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    *(v3[6] + 8 * v6) = v5;
    sub_1AF0D6E5C(&v9, v3[7] + 8 * v6);
    ++v3[2];
    v4 += 16;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43D308(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v8 = sub_1AFDFE5C8();
  v9 = a1 + 32;

  v10 = MEMORY[0x1E69E7CA0];
  do
  {
    sub_1AF447AA4(v9, &v14, a3, a4, v10 + 8, sub_1AF43CC28);
    v11 = v14;
    v12 = sub_1AF0D58C0(v14);
    *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v8[6] + 8 * v12) = v11;
    sub_1AF0DB6BC(&v15, (v8[7] + 32 * v12));
    ++v8[2];
    v9 += 40;
    --v4;
  }

  while (v4);

  return v8;
}

void sub_1AF43D430(uint64_t a1)
{
  if (!qword_1EB6382A8)
  {
    type metadata accessor for Key(255);
    sub_1AF43A5EC(&qword_1EB637E40, type metadata accessor for Key, byte_1AFE4BF50);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6382A8);
    }
  }
}

void sub_1AF43D4D0(uint64_t a1)
{
  if (!qword_1EB63F5E0)
  {
    sub_1AF449B08(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF43D560();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F5E0);
    }
  }
}

unint64_t sub_1AF43D560()
{
  result = qword_1EB6382C8;
  if (!qword_1EB6382C8)
  {
    result = swift_getWitnessTable(byte_1AFE77E5C, &type metadata for GraphDebuggingComponent.DebugValuesKey, v0, v1);
    atomic_store(result, &qword_1EB6382C8);
  }

  return result;
}

void sub_1AF43D5CC(uint64_t a1)
{
  if (!qword_1EB6382D0)
  {
    sub_1AF449B08(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6382D0);
    }
  }
}

void sub_1AF43D658(uint64_t a1)
{
  if (!qword_1EB63F5F0)
  {
    sub_1AF449B08(255, &qword_1EB6382E0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
    sub_1AF43D560();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F5F0);
    }
  }
}

void sub_1AF43D704(uint64_t a1)
{
  if (!qword_1EB6382E8)
  {
    sub_1AF449B08(255, &qword_1EB6382E0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6382E8);
    }
  }
}

void sub_1AF43D850()
{
  if (!qword_1EB638310)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638310);
    }
  }
}

void sub_1AF43D8B0(uint64_t a1)
{
  if (!qword_1ED723070)
  {
    sub_1AF43D914();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED723070);
    }
  }
}

unint64_t sub_1AF43D914()
{
  result = qword_1ED7249A0;
  if (!qword_1ED7249A0)
  {
    result = swift_getWitnessTable(byte_1AFEA53A0, &type metadata for RenderVariantDescriptor, v0, v1);
    atomic_store(result, &qword_1ED7249A0);
  }

  return result;
}

void sub_1AF43D998(uint64_t a1)
{
  if (!qword_1EB630DF8)
  {
    sub_1AF43D914();
    v1 = sub_1AFDFCCB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB630DF8);
    }
  }
}

uint64_t sub_1AF43D9FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1AF446CC4(0, a3, a4, a5, type metadata accessor for ScriptRuntime);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1AF43DA80(uint64_t a1)
{
  if (!qword_1ED722F48)
  {
    sub_1AF4485F8(255, &qword_1ED7256D0, &type metadata for BufferArgument, MEMORY[0x1E69E6530], "value index ");
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED722F48);
    }
  }
}

void sub_1AF43DAF8(uint64_t a1)
{
  if (!qword_1ED721E78)
  {
    sub_1AF449B08(255, &unk_1ED7225E0, &type metadata for ManagedBufferSlice, MEMORY[0x1E69E6720]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED721E78);
    }
  }
}

void sub_1AF43DB74(uint64_t a1)
{
  if (!qword_1EB638328)
  {
    type metadata accessor for Option(255);
    sub_1AF43A5EC(&qword_1EB637E30, type metadata accessor for Option, asc_1AFE4BF0C);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638328);
    }
  }
}

void *sub_1AF43DC2C(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();
  v5 = (a1 + 40);
  do
  {
    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = sub_1AF0D3F10(v6);
    *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v4[6] + 8 * v8) = v6;
    *(v4[7] + 8 * v8) = v7;
    ++v4[2];

    v5 += 2;
    --v2;
  }

  while (v2);
  return v4;
}

void *sub_1AF43DD28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449A78(0);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *v4;
    v6 = *(v4 - 8);

    v7 = sub_1AF41AABC(v6, sub_1AF95C4DC, sub_1AF41E4A0);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + v7) = v6;
    *(v3[7] + 8 * v7) = v5;
    ++v3[2];
    v4 += 2;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43DE28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44383C();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 64);
  do
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 2);
    v7 = *(v4 - 1);
    v8 = *v4;
    v4 += 48;
    v9 = sub_1AF0D3F10(v5);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v5;
    v10 = v3[7] + 32 * v9;
    *v10 = v6;
    *(v10 + 8) = v7;
    *(v10 + 16) = v8;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43DEFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF445284(0);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 8);
    v7 = *v4;
    v8 = v4[1];
    v10 = v4[2];
    v9 = v4[3];
    v11 = *(v4 + 32);
    v13 = v4[5];
    v12 = v4[6];
    *&v19 = *(v4 - 3);
    *(&v19 + 1) = v5;
    LOBYTE(v20) = v6;
    *(&v20 + 1) = v7;
    v21 = v8;

    v14 = sub_1AF41AB58(&v19);
    *(v3 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    v15 = v3[6] + 40 * v14;
    v16 = v20;
    *v15 = v19;
    *(v15 + 16) = v16;
    *(v15 + 32) = v21;
    v17 = v3[7] + 40 * v14;
    *v17 = v10;
    *(v17 + 8) = v9;
    *(v17 + 16) = v11;
    *(v17 + 24) = v13;
    *(v17 + 32) = v12;
    ++v3[2];
    v4 += 10;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43E03C(uint64_t a1)
{
  sub_1AF445908(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44933C(0, &unk_1EB632910, MEMORY[0x1E69E6EC8]);
  v8 = sub_1AFDFE5C8();
  v9 = *(v3 + 48);
  v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v18 = *(v4 + 72);
  v19 = v9;

  do
  {
    sub_1AF4495B8(v10, v6, sub_1AF445908);
    v11 = sub_1AF419940(v6);
    *(v8 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v12 = v8[6];
    v13 = sub_1AFDFC318();
    v14 = *(v13 - 8);
    v15 = *(v14 + 32);
    v16 = *(v14 + 72) * v11;
    v15(v12 + v16, v6, v13);
    v15(v8[7] + v16, &v6[v19], v13);
    ++v8[2];
    v10 += v18;
    --v7;
  }

  while (v7);

  return v8;
}

void *sub_1AF43E270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446DE8(0);
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;
  do
  {
    sub_1AF0D8094(v4, &v16, &unk_1EB638AD0, &type metadata for ScriptCompilerSystem.CompilationHandle, &type metadata for CompilationStatus, sub_1AF0D8108);
    v5 = v16;
    v7 = v17;
    v6 = v18;
    v8 = sub_1AF41ACD4(v16, v17 | (v18 << 32));
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = v3[6] + 16 * v8;
    *v9 = v5;
    *(v9 + 8) = v7;
    *(v9 + 12) = v6;
    v10 = (v3[7] + 96 * v8);
    v11 = v20;
    *v10 = v19;
    v10[1] = v11;
    v12 = v21;
    v13 = v22;
    v14 = v23[0];
    *(v10 + 73) = *(v23 + 9);
    v10[3] = v13;
    v10[4] = v14;
    v10[2] = v12;
    ++v3[2];
    v4 += 112;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43E3B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446D30(0);
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;
  do
  {
    sub_1AF0D8094(v4, &v14, &unk_1EB638AC0, &type metadata for ScriptCompilerSystem.CompilationHandle, &_s18CachedBuildResultsV6ResultON, sub_1AF0D8108);
    v5 = v14;
    v6 = v15;
    v7 = v16;
    v8 = sub_1AF41ACD4(v14, v15 | (v16 << 32));
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = v3[6] + 16 * v8;
    *v9 = v5;
    *(v9 + 8) = v6;
    *(v9 + 12) = v7;
    v10 = (v3[7] + 48 * v8);
    v11 = *(v18 + 9);
    v12 = v18[0];
    *v10 = v17;
    v10[1] = v12;
    *(v10 + 25) = v11;
    ++v3[2];
    v4 += 64;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43E500(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();

  v5 = (a1 + 48);
  do
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    v5 += 3;

    v9 = sub_1AF41A54C(v6, v7, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v4[6] + 16 * v9);
    *v10 = v6;
    v10[1] = v7;
    *(v4[7] + 8 * v9) = v8;
    ++v4[2];
    --v2;
  }

  while (v2);

  return v4;
}

void *sub_1AF43E638(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();

  v5 = (a1 + 40);
  do
  {
    v6 = *v5;
    v7 = *(v5 - 1);

    v8 = sub_1AF0D58C0(v7);
    *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v4[6] + 8 * v8) = v7;
    *(v4[7] + 8 * v8) = v6;
    ++v4[2];
    v5 += 2;
    --v2;
  }

  while (v2);

  return v4;
}

void *sub_1AF43E718(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443DB4(0, &unk_1EB63F3F0, sub_1AF43B694, &type metadata for Entity);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = sub_1AF41A9B4(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    v8 = v6;
    v4 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43E818(uint64_t a1)
{
  sub_1AF442A88(0, &unk_1EB638450, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam, &type metadata for TriggerScriptRunnerSystem.CollisionNodePair);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF442D14(0, &qword_1EB63F400, MEMORY[0x1E69E6EC8]);
  v8 = sub_1AFDFE5C8();
  v9 = *(v3 + 48);
  v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v4 + 72);

  do
  {
    sub_1AF449A04(v10, v6, &unk_1EB638450, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam, &type metadata for TriggerScriptRunnerSystem.CollisionNodePair, sub_1AF442A88);
    v12 = *v6;
    v13 = *(v6 + 1);
    v14 = sub_1AF41AD6C(*v6, v13);
    *(v8 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    v15 = (v8[6] + 16 * v14);
    *v15 = v12;
    v15[1] = v13;
    v16 = v8[7];
    v17 = type metadata accessor for TriggerScriptRunnerSystem.TriggerParam(0);
    sub_1AF445CBC(&v6[v9], v16 + *(*(v17 - 8) + 72) * v14, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
    ++v8[2];
    v10 += v11;
    --v7;
  }

  while (v7);

  return v8;
}

void *sub_1AF43EA74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446BB0(0);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v8 = *(v4 - 6);
    v9 = *(v4 - 5);
    v10 = sub_1AF41AE38(v8 | (v9 << 32), v5);
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v11 = v3[6] + 16 * v10;
    *v11 = v8;
    *(v11 + 4) = v9;
    *(v11 + 8) = v5;
    v12 = (v3[7] + 16 * v10);
    *v12 = v6;
    v12[1] = v7;
    ++v3[2];
    sub_1AF446C68(v6, v7);
    v4 += 4;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43EB7C(uint64_t a1)
{
  sub_1AF43CC28(0, &qword_1ED72DF48, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6158]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443C88(0);
  v8 = sub_1AFDFE5C8();
  v9 = &v6[*(v3 + 48)];
  v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v4 + 72);

  do
  {
    sub_1AF447AA4(v10, v6, &qword_1ED72DF48, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6158], sub_1AF43CC28);
    v12 = sub_1AF41A390(v6);
    *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v13 = v8[6];
    v14 = sub_1AFDFC128();
    (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v6, v14);
    v15 = (v8[7] + 16 * v12);
    v16 = *(v9 + 1);
    *v15 = *v9;
    v15[1] = v16;
    ++v8[2];
    v10 += v11;
    --v7;
  }

  while (v7);

  return v8;
}

void *sub_1AF43ED8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF445DFC(0);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    v8 = v6;
    v4 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43EE68(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();

  v5 = (a1 + 48);
  do
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    v5 += 3;

    v9 = sub_1AF41A54C(v6, v7, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v4[6] + 16 * v9);
    *v10 = v6;
    v10[1] = v7;
    *(v4[7] + 8 * v9) = v8;
    ++v4[2];
    --v2;
  }

  while (v2);

  return v4;
}

void *sub_1AF43EF78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443998(0, &qword_1EB638A68, sub_1AF445888, sub_1AF446970, &_s12MetadataTypeON);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 72);
  do
  {
    v5 = *(v4 - 3);
    v13 = *(v4 - 5);
    v14 = v5;
    v6 = *v4;
    v15 = *(v4 - 1);
    sub_1AF444F60(&v13, v12);
    v7 = sub_1AF41A308(&v13);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    v8 = v3[6] + 40 * v7;
    v9 = v15;
    v10 = v14;
    *v8 = v13;
    *(v8 + 16) = v10;
    *(v8 + 32) = v9;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    v4 += 6;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43F0B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44745C();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 = (v4 + 24);
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 16 * v7) = v6;
    ++v3[2];

    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43F1BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4474BC(0);
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;

  do
  {
    sub_1AF0D8094(v4, v10, &unk_1EB638B68, &type metadata for GraphScheduling, &type metadata for VFXObjectScriptsDiff.Diff, sub_1AF0D8108);
    v5 = sub_1AF41AED0(v10);
    *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
    sub_1AF4473A0(v10, v3[6] + 48 * v5);
    v6 = v3[7] + 40 * v5;
    v7 = v11;
    v8 = v12;
    *(v6 + 32) = v13;
    *v6 = v7;
    *(v6 + 16) = v8;
    ++v3[2];
    v4 += 88;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43F2F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447218(0);
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;

  do
  {
    sub_1AF4495B8(v4, v7, sub_1AF447308);
    v5 = sub_1AF41AED0(v7);
    *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
    sub_1AF4473A0(v7, v3[6] + 48 * v5);
    *(v3[7] + 8 * v5) = v8;
    ++v3[2];
    v4 += 56;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43F3FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443998(0, &qword_1EB638B00, sub_1AF446FD4, sub_1AF444B6C, &type metadata for ScriptLocation);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 64);
  do
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 24);
    v8 = *(v4 - 2);
    v7 = *(v4 - 1);
    v9 = *v4;
    v4 += 5;
    sub_1AF443EE0(v5);

    v10 = sub_1AF41AF3C(v5);
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 8 * v10) = v5;
    v11 = v3[7] + 32 * v10;
    *v11 = v6;
    *(v11 + 8) = v8;
    *(v11 + 16) = v7;
    *(v11 + 24) = v9;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43F52C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449BDC(0, &unk_1EB63F420, sub_1AF446F40, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 = (v4 + 24);
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 16 * v7) = v6;
    ++v3[2];

    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43F634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446EB4(0);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 32);
  for (i = v1 - 1; ; --i)
  {
    v6 = v4[5];
    *&v21[64] = v4[4];
    *&v21[80] = v6;
    v7 = v4[7];
    *&v21[96] = v4[6];
    *&v21[112] = v7;
    v8 = v4[1];
    *v21 = *v4;
    *&v21[16] = v8;
    v9 = v4[3];
    *&v21[32] = v4[2];
    *&v21[48] = v9;
    v10 = *v21;
    v11 = sub_1AF0D3F10(*v21);
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + 8 * v11) = v10;
    v12 = v3[7] + 120 * v11;
    v13 = *&v21[24];
    v14 = *&v21[56];
    v15 = *&v21[8];
    *(v12 + 32) = *&v21[40];
    *(v12 + 48) = v14;
    *v12 = v15;
    *(v12 + 16) = v13;
    v16 = *&v21[72];
    v17 = *&v21[88];
    v18 = *&v21[104];
    *(v12 + 112) = *&v21[120];
    *(v12 + 80) = v17;
    *(v12 + 96) = v18;
    *(v12 + 64) = v16;
    ++v3[2];
    if (!i)
    {
      break;
    }

    sub_1AF4495B8(v21, v20, sub_1AF444180);
    v4 += 8;
  }

  sub_1AF4495B8(v21, v20, sub_1AF444180);
  return v3;
}

void *sub_1AF43F7C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447520(0);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 = (v4 + 24);
    v7 = sub_1AF41A9B4(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 16 * v7) = v6;
    ++v3[2];
    v8 = v6;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43F8B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4427B0();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;

  v5 = MEMORY[0x1E69E7CA0];
  v6 = MEMORY[0x1E69E69B8];
  do
  {
    sub_1AF0D8094(v4, v12, &qword_1EB63F360, v6, v5 + 8, sub_1AF0D8108);
    v7 = sub_1AF41AFA8(v12);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    v8 = v3[6] + 40 * v7;
    v9 = v13;
    v10 = v12[1];
    *v8 = v12[0];
    *(v8 + 16) = v10;
    *(v8 + 32) = v9;
    sub_1AF0DB6BC(&v14, (v3[7] + 32 * v7));
    ++v3[2];
    v4 += 72;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43F9F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43FACC(0);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *v4;
    v6 = *(v4 - 1);
    v7 = v5;
    v8 = sub_1AF0D58C0(v6);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v6;
    *(v3[7] + 8 * v8) = v7;
    ++v3[2];
    v4 += 2;
    --v1;
  }

  while (v1);

  return v3;
}

void sub_1AF43FACC(uint64_t a1)
{
  if (!qword_1EB638330)
  {
    type metadata accessor for Option(255);
    sub_1AF0D4478(255, &qword_1ED721F80, 0x1E696AD98);
    sub_1AF43A5EC(&qword_1EB637E30, type metadata accessor for Option, asc_1AFE4BF0C);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638330);
    }
  }
}

void sub_1AF43FB88()
{
  if (!qword_1EB630B80)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630B80);
    }
  }
}

void sub_1AF43FBE8(uint64_t a1)
{
  if (!qword_1EB630998)
  {
    sub_1AF0D8108(255, &qword_1EB631350, &type metadata for Entity, &type metadata for MetalScriptReflection);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB630998);
    }
  }
}

void sub_1AF43FC58(uint64_t a1)
{
  if (!qword_1EB638338)
  {
    sub_1AF447DFC(255, &qword_1ED723190, &protocolRef_MTLLibrary);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638338);
    }
  }
}

void sub_1AF43FD00(uint64_t a1)
{
  if (!qword_1EB632B10)
  {
    sub_1AF449890(255, &qword_1EB632A90, type metadata accessor for PropertyDescription, MEMORY[0x1E69E62F8]);
    v1 = sub_1AFDFCCB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB632B10);
    }
  }
}

unint64_t sub_1AF43FD98()
{
  result = qword_1ED726830;
  if (!qword_1ED726830)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED726830);
  }

  return result;
}

void *sub_1AF43FDE8(uint64_t a1)
{
  sub_1AF444878(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44490C(0);
  v8 = sub_1AFDFE5C8();
  v9 = *(v3 + 48);
  v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v4 + 72);
  do
  {
    sub_1AF4495B8(v10, v6, sub_1AF444878);
    v12 = *v6;
    v20 = *(v6 + 4);
    v13 = v20;
    v14 = sub_1AF41A190(v12 | (v20 << 32));
    *(v8 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    v15 = v8[6] + 8 * v14;
    *v15 = v12;
    *(v15 + 4) = v13;
    v16 = v8[7];
    v17 = sub_1AFDFC128();
    (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v14, v6 + v9, v17);
    ++v8[2];
    v10 += v11;
    --v7;
  }

  while (v7);
  return v8;
}

void *sub_1AF43FFB8(uint64_t a1)
{
  sub_1AF442A88(0, &qword_1ED722048, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6158]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v19 - v5);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449BDC(0, &qword_1EB638990, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = sub_1AFDFE5C8();
  v9 = *(v3 + 48);
  v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v4 + 72);

  do
  {
    sub_1AF449A04(v10, v6, &qword_1ED722048, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6158], sub_1AF442A88);
    v12 = *v6;
    v13 = v6[1];
    v14 = sub_1AF41A54C(*v6, v13, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v8 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    v15 = (v8[6] + 16 * v14);
    *v15 = v12;
    v15[1] = v13;
    v16 = v8[7];
    v17 = sub_1AFDFC128();
    (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v14, v6 + v9, v17);
    ++v8[2];
    v10 += v11;
    --v7;
  }

  while (v7);

  return v8;
}

void sub_1AF440250(uint64_t a1)
{
  if (!qword_1EB638350)
  {
    type metadata accessor for LoadingOption(255);
    sub_1AF43A5EC(&qword_1EB637E10, type metadata accessor for LoadingOption, byte_1AFE4BE84);
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB638350);
    }
  }
}

void sub_1AF44034C()
{
  if (!qword_1EB630BF8)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630BF8);
    }
  }
}

void sub_1AF4403D8()
{
  if (!qword_1EB638370)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638370);
    }
  }
}

void *sub_1AF440490(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v6 = sub_1AFDFE5C8();
  v7 = (a1 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = a3(v8);
    *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v6[6] + 8 * v10) = v8;
    *(v6[7] + 8 * v10) = v9;
    ++v6[2];

    v7 += 2;
    --v3;
  }

  while (v3);
  return v6;
}

void *sub_1AF440564(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF444BC0(0);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 16;
    sub_1AF443EE0(v5);
    v7 = sub_1AF41AF3C(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF440638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF444B08(0);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    sub_1AF443EE0(v5);
    v7 = sub_1AF41AF3C(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    v4 += 2;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF44070C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF444A94();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 80);
  do
  {
    v5 = *(v4 - 6);
    v6 = *(v4 - 5);
    v7 = *(v4 - 4);
    v8 = *(v4 - 24);
    v9 = *(v4 - 2);
    v10 = *(v4 - 1);
    v11 = *v4;
    v4 += 56;

    sub_1AF443EE0(v7);
    sub_1AF444224(v9);
    v12 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v13 = (v3[6] + 16 * v12);
    *v13 = v5;
    v13[1] = v6;
    v14 = v3[7] + 40 * v12;
    *v14 = v7;
    *(v14 + 8) = v8;
    *(v14 + 16) = v9;
    *(v14 + 24) = v10;
    *(v14 + 32) = v11;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF440858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44274C();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;

  v5 = MEMORY[0x1E69E7CA0];
  v6 = MEMORY[0x1E69E6158];
  do
  {
    sub_1AF0D8094(v4, &v12, &qword_1ED7232A0, v6, v5 + 8, sub_1AF0D8108);
    v7 = v12;
    v8 = v13;
    v9 = sub_1AF41A54C(v12, v13, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v3[6] + 16 * v9);
    *v10 = v7;
    v10[1] = v8;
    sub_1AF0DB6BC(&v14, (v3[7] + 32 * v9));
    ++v3[2];
    v4 += 48;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF4409B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443DB4(0, &qword_1EB6386A0, sub_1AF443AFC, &type metadata for VFXHandTracker.Joint);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 8);
    v6 = *v4;
    v7 = sub_1AF41AABC(v5, sub_1AFBF62E0, sub_1AF41B530);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    v4 += 2;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF440AD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443D54();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 24;

    v8 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = (v3[6] + 16 * v8);
    *v9 = v5;
    v9[1] = v6;
    *(v3[7] + v8) = v7;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF440BF4(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();
  v5 = (a1 + 40);
  do
  {
    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = sub_1AF41A9B4(v6);
    *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v4[6] + 8 * v8) = v6;
    *(v4[7] + 8 * v8) = v7;
    ++v4[2];

    v5 += 2;
    --v2;
  }

  while (v2);
  return v4;
}

void *sub_1AF440CD8(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();

  v5 = (a1 + 48);
  do
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    v5 += 3;

    v9 = v8;
    v10 = sub_1AF41A54C(v6, v7, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v4 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v11 = (v4[6] + 16 * v10);
    *v11 = v6;
    v11[1] = v7;
    *(v4[7] + 8 * v10) = v9;
    ++v4[2];
    --v2;
  }

  while (v2);

  return v4;
}

void *sub_1AF440DE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4462C4();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;
    v8 = sub_1AF0D3F10(v5);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v5;
    v9 = (v3[7] + 16 * v8);
    *v9 = v6;
    v9[1] = v7;
    ++v3[2];
    sub_1AF43C9F0(v6, v7);
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF440EB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E5FE0];
  v4 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E6530], MEMORY[0x1E69E5FE8]);
  v5 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *(i - 1);
      v7 = *i;
      v10 = *(v5 + 2);
      v9 = *(v5 + 3);
      if (v10 >= v9 >> 1)
      {
        v5 = sub_1AF422330(v9 > 1, v10 + 1, 1, v5, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v5 + 2) = v10 + 1;
      *&v5[8 * v10 + 32] = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = sub_1AF0D3F10(v8);
      v14 = v13;
      v15 = v4[2] + ((v13 & 1) == 0);
      if (v4[3] < v15)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v17 = v12;
      sub_1AF84E5F8();
      v12 = v17;
      if (v14)
      {
LABEL_12:
        *(v4[7] + 8 * v12) = v7;
        goto LABEL_4;
      }

LABEL_3:
      v4[(v12 >> 6) + 8] |= 1 << v12;
      *(v4[6] + 8 * v12) = v8;
      *(v4[7] + 8 * v12) = v7;
      ++v4[2];
LABEL_4:
      if (!--v2)
      {
        return v4;
      }
    }

    sub_1AF83EEF4(v15, isUniquelyReferenced_nonNull_native);
    v12 = sub_1AF0D3F10(v8);
    if ((v14 & 1) != (v16 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v14)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v4;
}

unint64_t sub_1AF4410A8(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

unint64_t sub_1AF4410E4(unint64_t result, uint64_t (*a2)(unint64_t))
{
  v2 = (result >> 59) & 2 | (result >> 2) & 1;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    result &= 0xEFFFFFFFFFFFFFFBLL;
  }

  return a2(result);
}

unint64_t sub_1AF441114(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

void *sub_1AF441150(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1AF441194(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AF441230()
{
  sub_1AF4410E4(*(v0 + 24), sub_1AF441114);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1AF441284(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AF44131C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

void *sub_1AF441394(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void), void (*a4)(void))
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = MEMORY[0x1E69E5FE0];
  v10 = MEMORY[0x1B2718660](v7, MEMORY[0x1E69E5FE0], v8, MEMORY[0x1E69E5FE8]);
  v11 = sub_1AF422330(0, v7, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v9);
  if (!v7)
  {
    return v10;
  }

  v24 = a4;
  for (i = (a1 + 40); ; i += 2)
  {
    v14 = *(i - 1);
    v13 = *i;
    v15 = *(v11 + 2);
    v16 = *(v11 + 3);

    if (v15 >= v16 >> 1)
    {
      v11 = sub_1AF422330(v16 > 1, v15 + 1, 1, v11, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
    }

    *(v11 + 2) = v15 + 1;
    *&v11[8 * v15 + 32] = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1AF0D3F10(v14);
    v20 = v18;
    if (v10[3] < (v10[2] + ((v18 & 1) == 0)))
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v18)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v24();
      if (v20)
      {
LABEL_13:
        *(v10[7] + 8 * v19) = v13;

        goto LABEL_4;
      }
    }

LABEL_3:
    v10[(v19 >> 6) + 8] |= 1 << v19;
    *(v10[6] + 8 * v19) = v14;
    *(v10[7] + 8 * v19) = v13;
    ++v10[2];
LABEL_4:
    if (!--v7)
    {
      return v10;
    }
  }

  a3();
  v21 = sub_1AF0D3F10(v14);
  if ((v20 & 1) == (v22 & 1))
  {
    v19 = v21;
    if (v20)
    {
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

void *sub_1AF4415B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AF449890(0, &unk_1EB63F440, type metadata accessor for GraphCodeGen.CFGNode, MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1E69E5FE0];
  v5 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], v4, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v8 = *i;
      v11 = *(v6 + 2);
      v10 = *(v6 + 3);

      if (v11 >= v10 >> 1)
      {
        v6 = sub_1AF422330(v10 > 1, v11 + 1, 1, v6, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v6 + 2) = v11 + 1;
      *&v6[8 * v11 + 32] = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_1AF0D3F10(v9);
      v15 = v14;
      v16 = v5[2] + ((v14 & 1) == 0);
      if (v5[3] < v16)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v18 = v13;
      sub_1AF84CDCC();
      v13 = v18;
      if (v15)
      {
LABEL_12:
        *(v5[7] + 8 * v13) = v8;

        goto LABEL_4;
      }

LABEL_3:
      v5[(v13 >> 6) + 8] |= 1 << v13;
      *(v5[6] + 8 * v13) = v9;
      *(v5[7] + 8 * v13) = v8;
      ++v5[2];
LABEL_4:
      if (!--v2)
      {
        return v5;
      }
    }

    sub_1AF83C0B0(v16, isUniquelyReferenced_nonNull_native);
    v13 = sub_1AF0D3F10(v9);
    if ((v15 & 1) != (v17 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v5;
}

void *sub_1AF4417E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AF449B08(0, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1E69E5FE0];
  v5 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], v4, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    for (i = (a1 + 32); ; i += 8)
    {
      v15 = i[5];
      v45[4] = i[4];
      v45[5] = v15;
      v16 = i[7];
      v45[6] = i[6];
      v45[7] = v16;
      v17 = i[1];
      v45[0] = *i;
      v45[1] = v17;
      v18 = i[3];
      v45[2] = i[2];
      v45[3] = v18;
      sub_1AF4495B8(v45, v43, sub_1AF444180);
      v20 = *(v6 + 2);
      v19 = *(v6 + 3);
      if (v20 >= v19 >> 1)
      {
        v6 = sub_1AF422330(v19 > 1, v20 + 1, 1, v6, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      v21 = *&v45[0];
      *(v6 + 2) = v20 + 1;
      *&v6[8 * v20 + 32] = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = sub_1AF0D3F10(v21);
      v25 = v24;
      v26 = v5[2] + ((v24 & 1) == 0);
      if (v5[3] < v26)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v41 = v23;
      sub_1AF84CF84();
      v23 = v41;
      if (v25)
      {
LABEL_12:
        v28 = v5[7] + 120 * v23;
        v29 = *(v28 + 48);
        v31 = *v28;
        v30 = *(v28 + 16);
        v43[2] = *(v28 + 32);
        v43[3] = v29;
        v43[0] = v31;
        v43[1] = v30;
        v33 = *(v28 + 80);
        v32 = *(v28 + 96);
        v34 = *(v28 + 64);
        v44 = *(v28 + 112);
        v43[5] = v33;
        v43[6] = v32;
        v43[4] = v34;
        v35 = *(v45 + 8);
        v36 = *(&v45[1] + 8);
        v37 = *(&v45[3] + 8);
        *(v28 + 32) = *(&v45[2] + 8);
        *(v28 + 48) = v37;
        *v28 = v35;
        *(v28 + 16) = v36;
        v38 = *(&v45[4] + 8);
        v39 = *(&v45[5] + 8);
        v40 = *(&v45[6] + 8);
        *(v28 + 112) = *(&v45[7] + 1);
        *(v28 + 80) = v39;
        *(v28 + 96) = v40;
        *(v28 + 64) = v38;
        sub_1AF444058(v43, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
        goto LABEL_4;
      }

LABEL_3:
      v5[(v23 >> 6) + 8] |= 1 << v23;
      *(v5[6] + 8 * v23) = v21;
      v8 = v5[7] + 120 * v23;
      v9 = *(&v45[1] + 8);
      v10 = *(&v45[3] + 8);
      v11 = *(v45 + 8);
      *(v8 + 32) = *(&v45[2] + 8);
      *(v8 + 48) = v10;
      *v8 = v11;
      *(v8 + 16) = v9;
      v12 = *(&v45[4] + 8);
      v13 = *(&v45[5] + 8);
      v14 = *(&v45[6] + 8);
      *(v8 + 112) = *(&v45[7] + 1);
      *(v8 + 80) = v13;
      *(v8 + 96) = v14;
      *(v8 + 64) = v12;
      ++v5[2];
LABEL_4:
      if (!--v2)
      {
        return v5;
      }
    }

    sub_1AF83C350(v26, isUniquelyReferenced_nonNull_native);
    v23 = sub_1AF0D3F10(v21);
    if ((v25 & 1) != (v27 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v25)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v5;
}