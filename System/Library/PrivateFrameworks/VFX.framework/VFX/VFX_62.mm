double sub_1AF5FC13C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  v7 = *(*v3 + 28);
  v8 = *(*v3 + 30);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v25 = *(*v3 + 30);
    v26 = *(*v3 + 28);
    v27 = *v3;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1AFC070A4(0, v9, 0);
    v10 = v29;
    v12 = a1 + 32;
    do
    {
      sub_1AF441194(v12, &v30);
      sub_1AF441150(&v30, *(&v31 + 1));
      DynamicType = swift_getDynamicType();
      v15 = *(&v31 + 1);
      v14 = v32;
      sub_1AF441150(&v30, *(&v31 + 1));
      v16 = (*(v14 + 16))(v15, v14);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v30);
      v18 = *(v29 + 16);
      v17 = *(v29 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AFC070A4(v17 > 1, v18 + 1, 1);
      }

      *(v29 + 16) = v18 + 1;
      v19 = (v29 + 24 * v18);
      v19[4] = DynamicType;
      v19[5] = v14;
      v19[6] = v16;
      v12 += 40;
      --v9;
    }

    while (v9);
    v4 = v3;
    v5 = a2;
    v7 = v26;
    v6 = v27;
    v8 = v25;
  }

  if (v8 >= 0x18)
  {
    v21 = *(v10 + 16);
    v22 = sub_1AFC059CC((v6 + v7 + 41), (178956971 * v8) >> 32);
    v20 = v22;
    if (v21)
    {
      *&v30 = v22;
      sub_1AF48FD40(v10);
      v20 = v30;
    }

    else
    {
    }
  }

  else
  {
    v20 = v10;
  }

  sub_1AF5FCD04(v20 + 4, v20[2], v4, &v30, a3);

  result = *&v30;
  v24 = v31;
  *v5 = v30;
  *(v5 + 16) = v24;
  *(v5 + 32) = v32;
  return result;
}

double sub_1AF5FC330@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  v7 = *(*v3 + 28);
  v8 = *(*v3 + 30);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v25 = *(*v3 + 30);
    v26 = *(*v3 + 28);
    v27 = *v3;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1AFC070A4(0, v9, 0);
    v10 = v29;
    v12 = a1 + 32;
    do
    {
      sub_1AF441194(v12, &v30);
      sub_1AF441150(&v30, *(&v31 + 1));
      DynamicType = swift_getDynamicType();
      v15 = *(&v31 + 1);
      v14 = v32;
      sub_1AF441150(&v30, *(&v31 + 1));
      v16 = (*(v14 + 16))(v15, v14);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v30);
      v18 = *(v29 + 16);
      v17 = *(v29 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AFC070A4(v17 > 1, v18 + 1, 1);
      }

      *(v29 + 16) = v18 + 1;
      v19 = (v29 + 24 * v18);
      v19[4] = DynamicType;
      v19[5] = v14;
      v19[6] = v16;
      v12 += 40;
      --v9;
    }

    while (v9);
    v4 = v3;
    v5 = a2;
    v7 = v26;
    v6 = v27;
    v8 = v25;
  }

  if (v8 >= 0x18)
  {
    v21 = *(v10 + 16);
    v22 = sub_1AFC059CC((v6 + v7 + 41), (178956971 * v8) >> 32);
    v20 = v22;
    if (v21)
    {
      *&v30 = v22;
      sub_1AF48FD40(v10);
      v20 = v30;
    }

    else
    {
    }
  }

  else
  {
    v20 = v10;
  }

  sub_1AF5FCF88(v20 + 4, v20[2], v4, &v30, a3);

  result = *&v30;
  v24 = v31;
  *v5 = v30;
  *(v5 + 16) = v24;
  *(v5 + 32) = v32;
  return result;
}

double sub_1AF5FC524@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  v6 = *(*v2 + 28);
  v7 = *(*v2 + 30);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v24 = *(*v2 + 30);
    v25 = *(*v2 + 28);
    v26 = *v2;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1AFC070A4(0, v8, 0);
    v9 = v28;
    v11 = a1 + 32;
    do
    {
      sub_1AF441194(v11, &v29);
      sub_1AF441150(&v29, *(&v30 + 1));
      DynamicType = swift_getDynamicType();
      v14 = *(&v30 + 1);
      v13 = v31;
      sub_1AF441150(&v29, *(&v30 + 1));
      v15 = (*(v13 + 16))(v14, v13);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v29);
      v17 = *(v28 + 16);
      v16 = *(v28 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1AFC070A4(v16 > 1, v17 + 1, 1);
      }

      *(v28 + 16) = v17 + 1;
      v18 = (v28 + 24 * v17);
      v18[4] = DynamicType;
      v18[5] = v13;
      v18[6] = v15;
      v11 += 40;
      --v8;
    }

    while (v8);
    v3 = v2;
    v4 = a2;
    v6 = v25;
    v5 = v26;
    v7 = v24;
  }

  if (v7 >= 0x18)
  {
    v20 = *(v9 + 16);
    v21 = sub_1AFC059CC((v5 + v6 + 41), (178956971 * v7) >> 32);
    v19 = v21;
    if (v20)
    {
      *&v29 = v21;
      sub_1AF48FD40(v9);
      v19 = v29;
    }

    else
    {
    }
  }

  else
  {
    v19 = v9;
  }

  sub_1AF5FD22C(v19 + 4, v19[2], v3, &v29);

  result = *&v29;
  v23 = v30;
  *v4 = v29;
  *(v4 + 16) = v23;
  *(v4 + 32) = v31;
  return result;
}

uint64_t assignWithCopy for Shadow(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for Shadow(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for EntityInstance(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for EntityInstance(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF5FC870(uint64_t a1)
{
  v1 = *(a1 + 184);

  sub_1AF6D2D90(&type metadata for ShadowState, &off_1F2530360, v1);
}

uint64_t sub_1AF5FC8D8(uint64_t a1)
{
  v2 = *v1;
  if (!(*v1)[11])
  {
    return 1;
  }

  v3 = v2[9];
  if (v3 < 0x10)
  {
    return 0;
  }

  v5 = v2 + 41;
  v6 = (v2 + v2[8] + 41);
  v7 = v3 >> 4;
  while (*v6 != a1)
  {
    ++v5;
    v6 += 2;
    if (!--v7)
    {
      return 0;
    }
  }

  v8 = v5[v2[10]];
  if (v8 < 6)
  {
    return (0x1Cu >> v8) & 1;
  }

  else
  {
    return 1;
  }
}

void sub_1AF5FC958(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  os_unfair_recursive_lock_lock_with_options();
  v4 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();
    sub_1AF5FD9B4(__src);
    memcpy(v3, __src, 0x606uLL);
  }

  else
  {
    v7 = *(v1 + 16);
    v8 = 32 * v6;
    v9 = v4;
    os_unfair_lock_lock(*(*(v1 + 32) + 32 * v6 + 24));
    os_unfair_recursive_lock_unlock();
    memcpy(__dst, (v7 + v9), 0x606uLL);
    memmove(__src, (v7 + v9), 0x606uLL);
    nullsub_106();
    memcpy(v3, __src, 0x606uLL);
    v10 = *(*(v1 + 32) + v8 + 24);
    sub_1AF5FD9BC(__dst, &v11);
    os_unfair_lock_unlock(v10);
  }
}

uint64_t sub_1AF5FCA80()
{
  os_unfair_recursive_lock_lock_with_options();
  v1 = sub_1AF6D2A6C(&type metadata for DebugInfoState);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();
    return 0;
  }

  else
  {
    v4 = (*(v0 + 16) + v1);
    v5 = 32 * v3;
    os_unfair_lock_lock(*(*(v0 + 32) + 32 * v3 + 24));
    os_unfair_recursive_lock_unlock();
    v6 = *v4;
    os_unfair_lock_unlock(*(*(v0 + 32) + v5 + 24));
    return v6;
  }
}

void sub_1AF5FCB40(uint64_t a1@<X8>)
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = sub_1AF6D2A6C(&type metadata for LightsUniforms);
  if (v4 == 2 || (v4 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();
    *a1 = 1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 31) = 0;
  }

  else
  {
    v6 = *(v1 + 16) + v3;
    v7 = 32 * v5;
    os_unfair_lock_lock(*(*(v1 + 32) + 32 * v5 + 24));
    os_unfair_recursive_lock_unlock();
    v8 = *(v6 + 34);
    if (*(v6 + 33))
    {
      v9 = 256;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9 | *(v6 + 32);
    v11 = *(v6 + 16);
    *a1 = *v6;
    *(a1 + 16) = v11;
    *(a1 + 34) = v8 != 0;
    *(a1 + 32) = v10;
    v12 = *(*(v1 + 32) + v7 + 24);

    os_unfair_lock_unlock(v12);
  }
}

uint64_t sub_1AF5FCC3C()
{
  os_unfair_recursive_lock_lock_with_options();
  v1 = sub_1AF6D2A6C(&type metadata for DebugCullingSystemState);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();
    return 2;
  }

  else
  {
    v4 = (*(v0 + 16) + v1);
    v5 = 32 * v3;
    os_unfair_lock_lock(*(*(v0 + 32) + 32 * v3 + 24));
    os_unfair_recursive_lock_unlock();
    if (v4[1])
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 | *v4;
    if (v4[2])
    {
      v8 = 0x10000;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 | v8;
    os_unfair_lock_unlock(*(*(v0 + 32) + v5 + 24));
    return v9;
  }
}

_WORD *sub_1AF5FCD04@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v6 = *a3 + 41;
  v7 = *(*a3 + 18);
  v8 = *(*a3 + 22);
  v28 = *(*a3 + 26);
  v31 = *(a3 + 12);
  v32 = *(a3 + 8);
  v33 = *(a3 + 32);
  v30 = *(a3 + 16);
  v29 = *(a3 + 24);
  v9 = 16 * (v7 >> 4);
  v35 = 16 * (v28 >> 4);
  v34 = (v8 + v9 + 7) & 0x3FFF8;
  v10 = v35 + v34;
  v11 = 24 * a2;
  v21 = *(*a3 + 24);
  __src = (v6 + *(*a3 + 16));
  v25 = (v6 + *(*a3 + 20));
  v26 = sub_1AF6B7B38(__src, v7 >> 4, v25, v8, (v6 + v21), v28 >> 4, a1, a2, a5);
  v27 = v7;
  if (v8 && v7 >= 0x10)
  {
    v14 = __src;
    v13 = v25;
    v15 = &__src[2 * (v7 >> 4)];
    do
    {
      if (((*(v14[1] + 48))() & 1) != 0 && (*v13 & 0xFE) == 2)
      {
        v12 = 1;
        goto LABEL_10;
      }

      v14 += 2;
      ++v13;
    }

    while (v14 != v15);
    v12 = 0;
LABEL_10:
    v10 = v35 + v34;
  }

  else
  {
    v12 = 0;
  }

  type metadata accessor for QueryBuffer(0);
  result = swift_allocObject();
  v17 = result;
  result[8] = 0;
  result[9] = v9;
  result[10] = v9;
  result[11] = v8;
  result[12] = (v8 + v9 + 7) & 0xFFF8;
  result[13] = v35;
  v18 = v10;
  result[14] = v10;
  result[15] = v11;
  *(result + 4) = v26;
  v19 = result + 41;
  *(result + 40) = v12;
  if (v27 > 0xF)
  {
    result = memcpy(result + 41, __src, v9);
  }

  if (v8)
  {
    result = memcpy(&v19[v9], v25, v8);
  }

  if (v28 > 0xF)
  {
    result = memcpy(&v19[v34], (v6 + v21), v35);
  }

  if ((v11 + 23) > 0x2E)
  {
    v20 = v11 / 24;
    if (v11 / 24 >= a2)
    {
      v20 = a2;
    }

    result = memcpy(&v19[v18], a1, 24 * v20);
  }

  *a4 = v17;
  *(a4 + 8) = v32;
  *(a4 + 12) = v31;
  *(a4 + 16) = v30;
  *(a4 + 24) = v29;
  *(a4 + 32) = v33;
  return result;
}

_WORD *sub_1AF5FCF88@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v6 = *a3;
  v34 = *(a3 + 2);
  v33 = *(a3 + 12);
  v32 = a3[2];
  v31 = *(a3 + 24);
  v7 = *a3 + 41;
  v8 = *(*a3 + 18);
  v9 = *(*a3 + 22);
  v10 = (v6 + 41 + *(v6 + 20));
  v29 = *(*a3 + 26);
  v30 = a3[4];
  v11 = 16 * (v8 >> 4);
  v36 = 16 * (v29 >> 4);
  v35 = (v9 + v11 + 7) & 0x3FFF8;
  v12 = v36 + ((v9 + v11 + 7) & 0xFFF8);
  v13 = 24 * a2;
  v22 = *(*a3 + 24);
  __src = (v6 + 41 + *(v6 + 16));
  v27 = sub_1AF6B7B38(__src, v8 >> 4, v10, v9, (v7 + v22), v29 >> 4, a1, a2, a5);
  v25 = v10;
  v28 = v8;
  if (v9)
  {
    if (v8 >= 0x10)
    {
      v15 = &__src[2 * (v8 >> 4)];
      v16 = v10;
      v17 = __src;
      do
      {
        if (((*(v17[1] + 48))() & 1) != 0 && (*v16 & 0xFE) == 2)
        {
          v14 = 1;
          goto LABEL_11;
        }

        v17 += 2;
        ++v16;
      }

      while (v17 != v15);
      v14 = 0;
LABEL_11:
      v12 = v36 + ((v9 + v11 + 7) & 0xFFF8);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  type metadata accessor for QueryBuffer(0);
  result = swift_allocObject();
  v19 = result;
  result[8] = 0;
  result[9] = v11;
  result[10] = v11;
  result[11] = v9;
  result[12] = (v9 + v11 + 7) & 0xFFF8;
  result[13] = v36;
  result[14] = v12;
  result[15] = v13;
  *(result + 4) = v27;
  v20 = result + 41;
  *(result + 40) = v14;
  if (v28 > 0xF)
  {
    result = memcpy(result + 41, __src, v11);
  }

  if (v9)
  {
    result = memcpy(&v20[v11], v25, v9);
  }

  if (v29 > 0xF)
  {
    result = memcpy(&v20[v35], (v7 + v22), v36);
  }

  if ((v13 + 23) > 0x2E)
  {
    v21 = v13 / 24;
    if (v13 / 24 >= a2)
    {
      v21 = a2;
    }

    result = memcpy(&v20[v36 + v35], a1, 24 * v21);
  }

  *a4 = v19;
  *(a4 + 8) = v34;
  *(a4 + 12) = v33;
  *(a4 + 16) = v32;
  *(a4 + 24) = v31;
  *(a4 + 32) = v30;
  return result;
}

uint64_t sub_1AF5FD22C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v6 = *(a3 + 12);
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  result = sub_1AF6B7F4C((*a3 + 41 + *(*a3 + 16)), *(*a3 + 18) >> 4, (*a3 + 41 + *(*a3 + 20)), *(*a3 + 22), (*a3 + 41 + *(*a3 + 24)), *(*a3 + 26) >> 4, a1, a2);
  *a4 = result;
  *(a4 + 8) = v5;
  *(a4 + 12) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  return result;
}

void *sub_1AF5FD310(void *a1)
{
  sub_1AF5FD54C(0, &qword_1EB63C8D0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = sub_1AF428C1C(0, 6, sub_1AF5FD2D8);
  sub_1AF441150(a1, a1[3]);
  sub_1AF5FD4E8();
  sub_1AFDFF3B8();
  if (v1)
  {
  }

  else
  {
    sub_1AFDFE6C8();
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

unint64_t sub_1AF5FD4E8()
{
  result = qword_1EB63C8D8;
  if (!qword_1EB63C8D8)
  {
    result = swift_getWitnessTable(byte_1AFE68DC4, &type metadata for Shadow.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C8D8);
  }

  return result;
}

void sub_1AF5FD54C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF5FD4E8();
    v7 = a3(a1, &type metadata for Shadow.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF5FD5D8(uint64_t a1, uint64_t a2)
{
  sub_1AF5FD6BC(0, &unk_1ED72ADD0, qword_1ED72ADE0, &protocol descriptor for ExternalDataTable, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1AF5FD6BC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1AF5C5358(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AF5FD724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF5FD780(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AF5FD780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1ED723D70)
  {
    v4 = type metadata accessor for Query1(0, &type metadata for DrawCallComponent, &off_1F2560850, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1ED723D70);
    }
  }
}

void sub_1AF5FD7D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFEA18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF5FD82C(uint64_t a1)
{
  v1 = *(a1 + 1216);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AF5FD844(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF5FD8B4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AF5FD8B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 initializeWithCopy for ShadowRenderingCommand(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for ShadowRenderingCommand(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShadowRenderingCommand(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 160) = v3;
  return result;
}

unint64_t sub_1AF5FDAEC()
{
  result = qword_1EB63C8F0;
  if (!qword_1EB63C8F0)
  {
    result = swift_getWitnessTable(byte_1AFE68D9C, &type metadata for Shadow.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C8F0);
  }

  return result;
}

unint64_t sub_1AF5FDB44()
{
  result = qword_1EB63C8F8;
  if (!qword_1EB63C8F8)
  {
    result = swift_getWitnessTable(byte_1AFE68CD4, &type metadata for Shadow.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C8F8);
  }

  return result;
}

unint64_t sub_1AF5FDB9C()
{
  result = qword_1EB63C900;
  if (!qword_1EB63C900)
  {
    result = swift_getWitnessTable(a5_13, &type metadata for Shadow.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C900);
  }

  return result;
}

uint64_t sub_1AF5FDBF8(unsigned __int8 a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5FDCF8(unsigned __int8 a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5FDDF4(unsigned __int8 a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5FDF20(unsigned __int8 a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5FE04C(unsigned __int8 a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5FE15C(unsigned __int8 a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5FE268(void *a1, int a2)
{
  v35 = a2;
  v3 = MEMORY[0x1E69E6F58];
  sub_1AF602B44(0, &qword_1EB63C940, sub_1AF6028E4, &type metadata for ImageResizingMode.SizeToFitCodingKeys, MEMORY[0x1E69E6F58]);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v24 - v5;
  sub_1AF602B44(0, &qword_1EB63C948, sub_1AF602938, &type metadata for ImageResizingMode.SizeToFillCodingKeys, v3);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v24 - v7;
  sub_1AF602B44(0, &qword_1EB63C950, sub_1AF60298C, &type metadata for ImageResizingMode.StretchCodingKeys, v3);
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  sub_1AF602B44(0, &qword_1EB63C958, sub_1AF6029E0, &type metadata for ImageResizingMode.CenterCodingKeys, v3);
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  sub_1AF602B44(0, &qword_1EB63C960, sub_1AF602A34, &type metadata for ImageResizingMode.CodingKeys, v3);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  sub_1AF441150(a1, a1[3]);
  sub_1AF602A34();
  sub_1AFDFF3F8();
  v19 = (v16 + 8);
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_1AF602938();
      v20 = v29;
      sub_1AFDFE848();
      v22 = v30;
      v21 = v31;
    }

    else
    {
      v39 = 3;
      sub_1AF6028E4();
      v20 = v32;
      sub_1AFDFE848();
      v22 = v33;
      v21 = v34;
    }

    (*(v22 + 8))(v20, v21);
  }

  else if (v35)
  {
    v37 = 1;
    sub_1AF60298C();
    sub_1AFDFE848();
    (*(v27 + 8))(v10, v28);
  }

  else
  {
    v36 = 0;
    sub_1AF6029E0();
    sub_1AFDFE848();
    (*(v25 + 8))(v13, v26);
  }

  return (*v19)(v18, v15);
}

uint64_t sub_1AF5FE744(uint64_t a1)
{
  v2 = sub_1AF6029E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5FE780(uint64_t a1)
{
  v2 = sub_1AF6029E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5FE7C8()
{
  v1 = 0x7265746E6563;
  if (*v0)
  {
    v1 = 0x68637465727473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x69466F54657A6973;
  }
}

uint64_t sub_1AF5FE848@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF5FFBC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF5FE870(uint64_t a1)
{
  v2 = sub_1AF602A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5FE8AC(uint64_t a1)
{
  v2 = sub_1AF602A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5FE8E8(uint64_t a1)
{
  v2 = sub_1AF602938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5FE924(uint64_t a1)
{
  v2 = sub_1AF602938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5FE960(uint64_t a1)
{
  v2 = sub_1AF6028E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5FE99C(uint64_t a1)
{
  v2 = sub_1AF6028E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5FE9D8(uint64_t a1)
{
  v2 = sub_1AF60298C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5FEA14(uint64_t a1)
{
  v2 = sub_1AF60298C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *sub_1AF5FEA50@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5FFD80(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AF5FEABC(uint64_t a1)
{
  sub_1AFDFD038();
}

unint64_t sub_1AF5FEBBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5FFD34(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF5FEBEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x65727574786574;
  v5 = 0x646F4D646E656C62;
  v6 = 0xE600000000000000;
  v7 = 0x66666F747563;
  if (v2 != 4)
  {
    v7 = 0x676E697A69736572;
    v6 = 0xEC00000065646F4DLL;
  }

  if (v2 == 3)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x7469736E65746E69;
  v9 = 0xE90000000000006CLL;
  if (v2 == 1)
  {
    v9 = 0xE900000000000079;
  }

  else
  {
    v8 = 0x6576654C72756C62;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1AF5FECB4()
{
  v1 = *v0;
  v2 = 0x65727574786574;
  v3 = 0x646F4D646E656C62;
  v4 = 0x66666F747563;
  if (v1 != 4)
  {
    v4 = 0x676E697A69736572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7469736E65746E69;
  if (v1 != 1)
  {
    v5 = 0x6576654C72756C62;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1AF5FED78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5FFD34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF5FEDA0(uint64_t a1)
{
  v2 = sub_1AF602598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5FEDDC(uint64_t a1)
{
  v2 = sub_1AF602598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5FEE18(void *a1)
{
  v3 = v1;
  sub_1AF602B44(0, &qword_1EB63C910, sub_1AF602598, &type metadata for Skybox.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF602598();
  sub_1AFDFF3F8();
  v13 = *v3;
  v12 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 2;
    sub_1AFDFE8E8();
    LODWORD(v13) = *(v3 + 4);
    BYTE4(v13) = *(v3 + 20);
    v12 = 3;
    sub_1AF51E090();
    sub_1AFDFE918();
    LOBYTE(v13) = 4;
    sub_1AFDFE8E8();
    LOBYTE(v13) = *(v3 + 28);
    v12 = 5;
    sub_1AF602640();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

double sub_1AF5FF08C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1AF600428(a2, v5);
  if (!v2)
  {
    *a1 = v5[0];
    result = *(v5 + 13);
    *(a1 + 13) = *(v5 + 13);
  }

  return result;
}

double sub_1AF5FF114@<D0>(uint64_t a1@<X8>)
{
  *&result = 1065353216;
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 1065353216;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = -1082130432;
  *(a1 + 28) = 1;
  return result;
}

double sub_1AF5FF148()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF702F50(1, v1);

  result = *v1;
  xmmword_1EB6C2980 = v1[0];
  *algn_1EB6C2990 = v1[1];
  qword_1EB6C29A0 = v2;
  return result;
}

__n128 initializeWithCopy for Skybox(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Skybox(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 29))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 28);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Skybox(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *(result + 28) = a2 + 3;
    }
  }

  return result;
}

double sub_1AF5FF2F0@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x10000010F00;
  *a1 = xmmword_1AFE68E40;
  a1[1] = xmmword_1AFE68E40;
  a1[2] = xmmword_1AFE68E40;
  a1[3] = xmmword_1AFE68E40;
  return result;
}

uint64_t sub_1AF5FF304()
{
  for (i = 0; i != 64; i += 8)
  {
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    result = sub_1AFDFF2A8();
  }

  return result;
}

uint64_t sub_1AF5FF3D8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 >= 2)
    {
      v7 = *a1;
      v8 = *a1 + 12;
      v9 = -1;
      for (i = 1; i != v2; ++i)
      {
        v11 = *(v7 + 12 * i + 8);
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 4))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 12);
          *(v13 + 8) = *(v13 - 4);
          *(v13 - 4) = v11;
          *(v13 - 12) = v14;
          v13 -= 12;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 12;
        --v9;
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
      sub_1AF602358();
      v6 = sub_1AFDFD488();
      *(v6 + 16) = v5;
    }

    v16[0] = (v6 + 32);
    v16[1] = v5;
    sub_1AF5FF514(v16, v17, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF5FF514(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v63 = *a1;
    v7 = MEMORY[0x1E69E7CC0];
    v62 = a4;
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 12 * v6 + 8);
        v10 = 12 * v8;
        v11 = *a3 + 12 * v8;
        v12 = *(v11 + 8);
        v13 = v8 + 2;
        v14 = (v11 + 32);
        v15 = v9;
        while (v5 != v13)
        {
          v16 = *v14;
          v14 += 3;
          v17 = (v9 < v12) ^ (v16 >= v15);
          ++v13;
          v15 = v16;
          if ((v17 & 1) == 0)
          {
            v6 = v13 - 1;
            if (v9 >= v12)
            {
              goto LABEL_17;
            }

            goto LABEL_11;
          }
        }

        v6 = v5;
        if (v9 >= v12)
        {
          goto LABEL_17;
        }

LABEL_11:
        if (v8 < v6)
        {
          v18 = 0;
          v19 = 12 * v6;
          v20 = v8;
          do
          {
            if (v20 != v6 + v18 - 1)
            {
              v21 = *a3 + v10;
              v22 = *a3 + v19;
              v23 = *(v21 + 8);
              v24 = *v21;
              v25 = *(v22 - 4);
              *v21 = *(v22 - 12);
              *(v21 + 8) = v25;
              *(v22 - 12) = v24;
              *(v22 - 4) = v23;
            }

            ++v20;
            --v18;
            v19 -= 12;
            v10 += 12;
          }

          while (v20 < v6 + v18);
          v5 = a3[1];
        }
      }

LABEL_17:
      if (v6 < v5 && v6 - v8 < a4)
      {
        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v8 + a4 != v6)
        {
          v45 = *a3;
          v46 = *a3 + 12 * v6;
          v47 = v8 - v6;
          do
          {
            v48 = *(v45 + 12 * v6 + 8);
            v49 = v47;
            v50 = v46;
            do
            {
              if (v48 >= *(v50 - 4))
              {
                break;
              }

              v51 = *v50;
              *v50 = *(v50 - 12);
              *(v50 + 8) = *(v50 - 4);
              *(v50 - 4) = v48;
              *(v50 - 12) = v51;
              v50 -= 12;
            }

            while (!__CFADD__(v49++, 1));
            ++v6;
            v46 += 12;
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

      v27 = *(v7 + 2);
      v26 = *(v7 + 3);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v7 = sub_1AF4209A4(v26 > 1, v27 + 1, 1, v7);
      }

      *(v7 + 2) = v28;
      v29 = v7 + 32;
      v30 = &v7[16 * v27 + 32];
      *v30 = v8;
      *(v30 + 1) = v6;
      if (v27)
      {
        break;
      }

LABEL_3:
      v5 = a3[1];
      a4 = v62;
      if (v6 >= v5)
      {
        goto LABEL_51;
      }
    }

    while (1)
    {
      v31 = v28 - 1;
      if (v28 >= 4)
      {
        v35 = &v29[16 * v28];
        v36 = *(v35 - 7) - *(v35 - 8);
        v34 = *(v35 - 5) - *(v35 - 6);
        v37 = &v7[16 * v28];
        v32 = *v37;
        v33 = *(v37 + 1);
        if (v34 - v32 + v33 >= v36)
        {
          v40 = v28 - 2;
          v39 = *&v29[16 * v31 + 8] - *&v29[16 * v31];
          goto LABEL_38;
        }
      }

      else
      {
        if (v28 != 3)
        {
          v38 = *&v7[16 * v28 + 8] - *&v7[16 * v28];
          v39 = *&v29[16 * v31 + 8] - *&v29[16 * v31];
LABEL_35:
          if (v39 < v38)
          {
            goto LABEL_3;
          }

          goto LABEL_40;
        }

        v32 = *(v7 + 6);
        v33 = *(v7 + 7);
        v34 = *(v7 + 5) - *(v7 + 4);
      }

      v38 = v33 - v32;
      v39 = *&v29[16 * v31 + 8] - *&v29[16 * v31];
      if (v38 + v39 < v34)
      {
        goto LABEL_35;
      }

      v40 = v28 - 2;
LABEL_38:
      if (v34 < v39)
      {
        v31 = v40;
      }

LABEL_40:
      v41 = &v29[16 * v31];
      v42 = *(v41 - 2);
      v43 = *(v41 + 1);
      sub_1AF5FF988((*a3 + 12 * v42), (*a3 + 12 * *v41), *a3 + 12 * v43, v63);
      if (v4)
      {
      }

      *(v41 - 2) = v42;
      *(v41 - 1) = v43;
      v44 = *(v7 + 2);
      v28 = v44 - 1;
      memmove(&v29[16 * v31], v41 + 16, 16 * (v44 - 1 - v31));
      *(v7 + 2) = v44 - 1;
      if (v44 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_51:
  v64 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AF650C88(v7);
  }

  v53 = v7 + 16;
  v54 = *(v7 + 2);
  if (v54 >= 2)
  {
    do
    {
      v55 = &v7[16 * v54];
      v56 = *v55;
      v57 = &v53[2 * v54];
      v58 = v57[1];
      sub_1AF5FF988((*a3 + 12 * *v55), (*a3 + 12 * *v57), *a3 + 12 * v58, v64);
      if (v4)
      {
        break;
      }

      *v55 = v56;
      *(v55 + 1) = v58;
      v59 = *v53 - 1;
      memmove(&v53[2 * v54], v57 + 2, 16 * (*v53 - v54));
      *v53 = v59;
      v54 = v59;
    }

    while (v59 > 1);
  }
}

uint64_t sub_1AF5FF988(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 12;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 12;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[12 * v9] <= a4)
    {
      memmove(a4, __dst, 12 * v9);
    }

    v12 = &v4[12 * v9];
    if (v8 < 12)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 2) < *(v4 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 12;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 12;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 12;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[12 * v11] <= a4)
  {
    memmove(a4, __src, 12 * v11);
  }

  v12 = &v4[12 * v11];
  if (v10 >= 12 && v6 > v7)
  {
LABEL_20:
    v5 -= 12;
    do
    {
      v16 = (v5 + 12);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v19 = v6 - 12;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 8) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 12, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = (v12 - 12);
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 8) = *(v17 + 8);
        *v5 = v18;
      }

      v5 -= 12;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 1) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[12 * v22])
  {
    memmove(v6, v4, 12 * v22);
  }

  return 1;
}

uint64_t sub_1AF5FFBC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746E6563 && a2 == 0xE600000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68637465727473 && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69466F54657A6973 && a2 == 0xEA00000000006C6CLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69466F54657A6973 && a2 == 0xE900000000000074)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1AF5FFD34(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

char *sub_1AF5FFD80(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  sub_1AF602B44(0, &qword_1EB632890, sub_1AF6028E4, &type metadata for ImageResizingMode.SizeToFitCodingKeys, MEMORY[0x1E69E6F48]);
  v34 = v3;
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v28 - v4;
  sub_1AF602B44(0, &qword_1EB632888, sub_1AF602938, &type metadata for ImageResizingMode.SizeToFillCodingKeys, v2);
  v33 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v28 - v6;
  sub_1AF602B44(0, &qword_1EB632898, sub_1AF60298C, &type metadata for ImageResizingMode.StretchCodingKeys, v2);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v28 - v8;
  sub_1AF602B44(0, &qword_1EB6328A0, sub_1AF6029E0, &type metadata for ImageResizingMode.CenterCodingKeys, v2);
  v10 = v9;
  v28 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  sub_1AF602B44(0, &qword_1EB6328A8, sub_1AF602A34, &type metadata for ImageResizingMode.CodingKeys, v2);
  v14 = v13;
  v38 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  sub_1AF441150(a1, a1[3]);
  sub_1AF602A34();
  v17 = v39;
  sub_1AFDFF3B8();
  if (v17)
  {
    goto LABEL_10;
  }

  v18 = v36;
  v19 = v37;
  v39 = a1;
  v20 = v16;
  v21 = sub_1AFDFE7F8();
  if (*(v21 + 16) != 1)
  {
    v16 = v14;
    v22 = sub_1AFDFE2C8();
    swift_allocError();
    v24 = v23;
    sub_1AF602A88(0);
    *v24 = &type metadata for ImageResizingMode;
    sub_1AFDFE678();
    sub_1AFDFE2A8();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v38 + 8))(v20, v16);

    a1 = v39;
LABEL_10:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return v16;
  }

  v16 = *(v21 + 32);
  if (*(v21 + 32) > 1u)
  {
    v25 = v38;
    if (v16 == 2)
    {
      v42 = 2;
      sub_1AF602938();
      v26 = v35;
      sub_1AFDFE668();
      (*(v29 + 8))(v26, v33);
    }

    else
    {
      v43 = 3;
      sub_1AF6028E4();
      sub_1AFDFE668();
      (*(v32 + 8))(v19, v34);
    }

    (*(v25 + 8))(v20, v14);
  }

  else
  {
    if (*(v21 + 32))
    {
      v41 = 1;
      sub_1AF60298C();
      sub_1AFDFE668();
      (*(v30 + 8))(v18, v31);
    }

    else
    {
      v40 = 0;
      sub_1AF6029E0();
      sub_1AFDFE668();
      (*(v28 + 8))(v12, v10);
    }

    (*(v38 + 8))(v20, v14);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v39);
  return v16;
}

uint64_t sub_1AF600428@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1AF602B44(0, &qword_1EB632838, sub_1AF602598, &type metadata for Skybox.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF602598();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v6;
  v10 = v25;
  v29 = 0;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  v11 = v26;
  LOBYTE(v26) = 1;
  sub_1AFDFE738();
  v13 = v12;
  LOBYTE(v26) = 2;
  sub_1AFDFE738();
  v16 = v15;
  v29 = 3;
  sub_1AF51E03C();
  sub_1AFDFE768();
  v17 = *&v26;
  v18 = BYTE4(v26);
  v28 = BYTE4(v26);
  v29 = 5;
  sub_1AF6025EC();
  sub_1AFDFE768();
  v27 = v26;
  v19 = a1[3];
  v20 = a1[4];
  sub_1AF441150(a1, v19);
  if (sub_1AF69504C(2047, v19, v20))
  {
    (*(v9 + 8))(v8, v5);
    if (v18)
    {
      v21 = v17;
      v17 = -1.0;
    }

    else
    {
      v28 = 1;
      v21 = 0.0;
    }
  }

  else
  {
    LOBYTE(v26) = 4;
    sub_1AFDFE738();
    v23 = v22;
    (*(v9 + 8))(v8, v5);
    v21 = v17;
    v17 = v23;
  }

  v24 = v28;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v11;
  *(v10 + 8) = v13;
  *(v10 + 12) = v16;
  *(v10 + 16) = v21;
  *(v10 + 20) = v24;
  *(v10 + 24) = v17;
  *(v10 + 28) = v27;
  return result;
}

uint64_t sub_1AF600810(uint64_t result, _OWORD *a2, unsigned int a3)
{
  v339 = *MEMORY[0x1E69E9840];
  if (*(result + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2))
  {
    return result;
  }

  v3 = a2;
  if (!a2)
  {
    return result;
  }

  v4 = result;
  v5 = a2 + 34;
  v6 = a2[41];
  v282[6] = a2[40];
  v282[7] = v6;
  v283[0] = a2[42];
  v7 = a2[37];
  v282[2] = a2[36];
  v282[3] = v7;
  v8 = a2[39];
  v282[4] = a2[38];
  v282[5] = v8;
  v9 = a2[35];
  v282[0] = a2[34];
  v282[1] = v9;
  *(v283 + 9) = *(a2 + 681);
  if (sub_1AF448314(v282) == 1)
  {
    goto LABEL_131;
  }

  v10 = *(&v282[0] + 1);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 152);
  swift_unknownObjectRetain();

  v13 = v12(ObjectType, v10);
  swift_unknownObjectRelease();
  if (qword_1EB632EC0 != -1)
  {
    swift_once();
  }

  v255[0] = xmmword_1EB6C2980;
  v255[1] = *algn_1EB6C2990;
  v256 = qword_1EB6C29A0;
  sub_1AF6B06C0(v4, v255, v13 & 0xFFFFFFFFFFLL, v284);
  v278 = *&v284[32];
  v279 = v285;
  v280 = v286;
  v281 = v287;
  v276 = *v284;
  v277 = *&v284[16];
  v214 = *v284;
  if (!*v284)
  {
  }

  v213 = *&v284[40];
  v215 = *(&v285 + 1);
  v14 = v286;
  v15 = v287;
  v289 = *&v284[8];
  v290 = *&v284[24];
  sub_1AF6023CC(v4, v3, "RenderSkybox", 12);
  v16 = *(*(v3 + 35) + 80);
  if (v16)
  {
    v17 = v16;
    sub_1AF474680(&v244);
    v203 = v244;
    v204 = v245;
    v201 = v246;
    v202 = v247;
    v195 = v249;
    v196 = v248;
    v194 = v250;
    v243[0] = *v251;
    *(v243 + 3) = *&v251[3];
  }

  else
  {

    sub_1AF0D8CC8(&v244);
    v203 = v244;
    v204 = v245;
    v201 = v246;
    v202 = v247;
    v195 = v249;
    v196 = v248;
    v194 = v250;
    v243[0] = *v251;
    *(v243 + 3) = *&v251[3];
  }

  v193 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
  v18 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v205 = sub_1AF6F3FF4(0, v19);
  v20 = *(**(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32);
  ecs_stack_allocator_push_snapshot(v20);
  v21 = 12 * v15;
  v22 = 12 * v15 / 12;
  v210 = ecs_stack_allocator_allocate(v20, 12 * v15, 4);
  v275[0] = v210;
  v275[1] = v22;
  if (v15 >= 1 && v215)
  {
    v189 = v21 / 12;
    v190 = 12 * v15;
    v197 = v20;
    v199 = v18;
    v191 = v3 + 34;
    v208 = v4;
    v206 = v3;
    v222 = *(*(&v14 + 1) + 32);
    v23 = *(v14 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v293 = v278;
    v294 = v279;
    v295 = v280;
    v296 = v281;
    v291 = v276;
    v292 = v277;
    sub_1AF5DD298(&v291, v288);
    v24 = 0;
    v25 = 0;
    v212 = v23;
    while (1)
    {
      v220 = v25;
      v217 = v24;
      v26 = (v213 + 48 * v24);
      v28 = *v26;
      v27 = v26[1];
      v216 = v26[2];
      v30 = *(v26 + 2);
      v29 = *(v26 + 3);
      v31 = *(v26 + 4);
      v32 = *(v26 + 5);
      if (v23)
      {
        v33 = *(v32 + 376);

        os_unfair_lock_lock(v33);
        os_unfair_lock_lock(*(v32 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v222);
      v34 = *(*(&v14 + 1) + 64);
      v337[0] = *(*(&v14 + 1) + 48);
      v337[1] = v34;
      v338 = *(*(&v14 + 1) + 80);
      v35 = *(*(*(*(v32 + 40) + 16) + 32) + 16) + 1;
      *(*(&v14 + 1) + 48) = ecs_stack_allocator_allocate(*(*(&v14 + 1) + 32), 48 * v35, 8);
      *(*(&v14 + 1) + 56) = v35;
      *(*(&v14 + 1) + 72) = 0uLL;
      *(*(&v14 + 1) + 64) = 0;
      sub_1AF64B110(&type metadata for Skybox, &off_1F25304A0, v30, v29, v31, *(&v14 + 1));
      if (v30)
      {
        if (v31)
        {
          v36 = 0;
          do
          {
            v37 = v30[v36];
            v38 = *(v32 + 48);
            v39 = (v38 + 32);
            v40 = *(v38 + 16) + 1;
            while (--v40)
            {
              v41 = v39 + 5;
              v42 = *v39;
              v39 += 5;
              if (v42 == &type metadata for RenderingOrder)
              {
                v43 = *(&(*(v41 - 2))->Kind + 4 * v37 + *(v32 + 128));
                goto LABEL_25;
              }
            }

            v43 = 0;
LABEL_25:

            if (*(v32 + 184))
            {
              goto LABEL_131;
            }

            v45 = *(*(v32 + 168) + 4 * v37);
            v46 = *(*(v44 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v45 + 8);

            v47 = &v210[3 * v216 + 3 * v36];
            *v47 = v45;
            v47[1] = v46;
            v47[2] = v43;
          }

          while (++v36 != v31);
        }
      }

      else if (v28 != v27)
      {
        v48 = &v210[3 * (v216 - v28)];
        while (1)
        {
          v49 = v28 + 1;
          v50 = *(v32 + 48);
          v51 = (v50 + 32);
          v52 = *(v50 + 16) + 1;
          while (--v52)
          {
            v53 = v51 + 5;
            v54 = *v51;
            v51 += 5;
            if (v54 == &type metadata for RenderingOrder)
            {
              v55 = *(&(*(v53 - 2))->Kind + 4 * v28 + *(v32 + 128));
              goto LABEL_35;
            }
          }

          v55 = 0;
LABEL_35:

          if (*(v32 + 184))
          {
            break;
          }

          v57 = *(*(v32 + 168) + 4 * v28);
          v58 = *(*(v56 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v57 + 8);

          v59 = &v48[12 * v28];
          *v59 = v57;
          *(v59 + 1) = v58;
          *(v59 + 2) = v55;
          ++v28;
          if (v49 == v27)
          {
            goto LABEL_37;
          }
        }

        while (1)
        {
LABEL_131:
          sub_1AFDFE518();
          __break(1u);
        }
      }

LABEL_37:
      v252 = v214;
      v253 = v289;
      v254 = v290;
      v25 = v220;
      sub_1AF630994(*(&v14 + 1), &v252, v337);
      sub_1AF62D29C(v32);
      ecs_stack_allocator_pop_snapshot(v222);
      v23 = v212;
      if (v212)
      {
        os_unfair_lock_unlock(*(v32 + 344));
        os_unfair_lock_unlock(*(v32 + 376));
      }

      v24 = v217 + 1;
      if (v217 + 1 == v215)
      {
        sub_1AF5D1564(v284);
        v3 = v206;
        v4 = v208;
        v21 = v190;
        v5 = v191;
        v18 = v199;
        v20 = v197;
        v22 = v189;
        break;
      }
    }
  }

  sub_1AF5FF3D8(v275);
  if ((v21 + 11) <= 0x16)
  {
LABEL_42:
    ecs_stack_allocator_pop_snapshot(v20);

    goto LABEL_43;
  }

  v192 = v5;
  v60 = v210;
  v61 = &v210[3 * v22];
  v209 = v4;
  v62 = (v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  __asm { FMOV            V10.2S, #1.0 }

  while (1)
  {
    v67 = v60[1];
    v68 = *v60;
    _ZF = v68 == -1 && v67 == 0;
    if (_ZF || (v68 & 0x80000000) != 0 || v62[1] <= v68)
    {
      goto LABEL_49;
    }

    v70 = (*v62 + 12 * v68);
    if (v67 != -1 && v70[2] != v67)
    {
      goto LABEL_49;
    }

    v72 = *(v70 + 2);
    v73 = *(*(v209 + 144) + 8 * *v70 + 32);
    v74 = *(v73 + 48);
    v75 = (v74 + 32);
    v76 = *(v74 + 16) + 1;
    do
    {
      if (!--v76)
      {
        goto LABEL_49;
      }

      v77 = v75 + 5;
      v78 = *v75;
      v75 += 5;
    }

    while (v78 != &type metadata for Skybox);
    v79 = (&(*(v77 - 2))[2 * v72] + *(v73 + 128));
    v80 = *v79;
    v81 = *(v79 + 1);
    if (v80 == -1 && v81 == 0)
    {
      goto LABEL_49;
    }

    v211 = v60;
    v198 = v20;
    v200 = v18;
    v84 = v79[2];
    v83 = v79[3];
    v85 = *(v79 + 4);
    v86 = *(v79 + 20);
    v87 = *(v79 + 28);
    v223 = sub_1AF8D93C8(v80 | (v81 << 32), &v265, v209, v3);
    if (!v223)
    {
      v223 = sub_1AF7055E4();
    }

    if (v84 < 0.0)
    {
      v88 = 0.0;
    }

    else
    {
      v88 = v84;
    }

    v226[0] = LODWORD(v88);
    v89 = v68 | (v67 << 32);
    v90 = sub_1AF3CA5D4(v89);
    if ((v91 & 1) == 0 && v83 > 0.0 && (v92 = v90, [v223 textureType] == 5) && (v93 = sub_1AF8D93C8(v92, &v265, v209, v3)) != 0)
    {
      *(v226 + 1) = v83;
      v221 = v93;
      swift_unknownObjectRetain();
    }

    else
    {
      v221 = swift_unknownObjectRetain_n();
    }

    v94 = sub_1AF3CA0E0(v89);
    v179 = v95;
    v180 = v94;
    v184 = v96;
    v97 = sub_1AF5F28AC(v89, v209);
    v177 = v98;
    v181 = v99;
    LOBYTE(v265) = v86;
    v100 = sub_1AF8781AC(v85 | (v86 << 32));
    v218 = *(v3 + 456);
    if (*(v3 + 441))
    {
      v101 = sub_1AF47289C(*(v3 + 36)) == 4;
    }

    else
    {
      v101 = 1;
    }

    v187 = v101;
    v102 = [v221 textureType];
    swift_unknownObjectRelease();
    v207 = v3;
    v178 = v97;
    if (v102 == 5)
    {
      if (v184)
      {
        v103 = 0xD000000000000012;
      }

      else
      {
        v103 = 0xD00000000000001ELL;
      }

      v104 = "fragment_skybox_texture2d";
      if ((v184 & 1) == 0)
      {
        v104 = "fragment_skybox_cube";
      }

      v105 = v104 | 0x8000000000000000;

      v106 = 0xD000000000000014;
      v107 = "vertexSkyboxShader";
      goto LABEL_104;
    }

    v103 = 0xD000000000000010;
    if ([v221 textureType] != 2)
    {
      break;
    }

    v108 = v192[7];
    v271 = v192[6];
    v272 = v108;
    *v273 = v192[8];
    *&v273[9] = *(v192 + 137);
    v109 = v192[3];
    v267 = v192[2];
    v268 = v109;
    v110 = v192[5];
    v269 = v192[4];
    v270 = v110;
    v111 = v192[1];
    v265 = *v192;
    v266 = v111;
    if (sub_1AF448314(&v265) == 1)
    {
      goto LABEL_131;
    }

    v112 = *(&v265 + 1);
    v113 = swift_getObjectType();
    swift_unknownObjectRetain();
    v114 = sub_1AF70561C(v113, v112);
    swift_unknownObjectRelease();
    __asm { FMOV            V0.2S, #1.0 }

    v183 = _D0;
    v186 = vmaxnm_f32(v114, _D0);
    v185 = [v221 width];
    v116 = [v221 height];
    v117.f32[0] = v185;
    v117.f32[1] = v116;
    v118 = vmaxnm_f32(v117, v183);
    if (v87 > 1)
    {
      v120 = vdiv_f32(v186, vdup_lane_s32(v186, 1));
      v121 = vdiv_f32(v118, vdup_lane_s32(v118, 1));
      v103 = 0xD000000000000010;
      v122 = vcgt_f32(v120, v121).u8[0];
      if (v87 == 2)
      {
        if (v122)
        {
          v123 = vdiv_f32(v120, v121);
          __asm { FMOV            V1.2S, #1.0 }

          v183 = vzip1_s32(_D1, v123);
        }

        else
        {
          v126.i32[0] = vdiv_f32(v121, v120).u32[0];
          v126.i32[1] = 1.0;
          v183 = v126;
        }

        goto LABEL_111;
      }

      if (v122)
      {
        v125.i32[0] = vdiv_f32(v121, v120).u32[0];
        v125.i32[1] = 1.0;
        v183 = v125;
LABEL_110:
        DWORD2(v226[0]) = 1065353216;
        goto LABEL_111;
      }

      v127 = vdiv_f32(v120, v121);
      __asm { FMOV            V1.2S, #1.0 }

      v119 = vzip1_s32(_D1, v127);
LABEL_109:
      v183 = v119;
      goto LABEL_110;
    }

    v103 = 0xD000000000000010;
    if (!v87)
    {
      v119 = vdiv_f32(v118, v186);
      goto LABEL_109;
    }

LABEL_111:
    v106 = 0xD000000000000019;
    v107 = "fragment_skybox_texture2d_array";
    v105 = 0x80000001AFF2CBC0;
LABEL_112:
    sub_1AF602734(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_1AFE4C620;
    *(v129 + 32) = xmmword_1AFE68E50;
    *(v129 + 48) = 0;
    *(v129 + 64) = v218;
    *(v129 + 128) = 13;
    *(v129 + 144) = xmmword_1AFE68E60;
    *(v129 + 160) = 0;
    *(v129 + 176) = v187;
    *(v129 + 240) = 13;
    v188 = v103;
    v182 = v106;
    sub_1AF8989FC(v103, v105, v106, v107 | 0x8000000000000000, v129, v288);

    *v273 = v288[8];
    *&v273[16] = v288[9];
    v274 = v288[10];
    v269 = v288[4];
    v270 = v288[5];
    v272 = v288[7];
    v271 = v288[6];
    v265 = v288[0];
    v266 = v288[1];
    v268 = v288[3];
    v267 = v288[2];
    v242[0] = v243[0];
    *(v242 + 3) = *(v243 + 3);
    sub_1AFDFF308();
    sub_1AF6021F8(v288, &v257);
    sub_1AF89747C(v224);
    sub_1AF602254(v288);
    MEMORY[0x1B271ACB0](v203.i64[0]);
    MEMORY[0x1B271ACB0](v203.i64[1]);
    MEMORY[0x1B271ACB0](v204.i64[0]);
    MEMORY[0x1B271ACB0](v204.i64[1]);
    MEMORY[0x1B271ACB0](v201.i64[0]);
    MEMORY[0x1B271ACB0](v201.i64[1]);
    MEMORY[0x1B271ACB0](v202.i64[0]);
    MEMORY[0x1B271ACB0](v202.i64[1]);
    MEMORY[0x1B271ACB0](v196);
    MEMORY[0x1B271ACB0](v195);
    sub_1AFDFF2A8();
    v228 = v100;
    v229 = 15;
    v230 = BYTE2(v100);
    v231 = BYTE3(v100);
    v232 = BYTE4(v100);
    v233 = BYTE5(v100);
    v234 = BYTE6(v100);
    v219 = v100;
    v235 = HIBYTE(v100);
    v236 = xmmword_1AFE68E40;
    v237 = xmmword_1AFE68E40;
    v238 = xmmword_1AFE68E40;
    v239 = 0x10000010F00;
    sub_1AF5FF304();
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](3);
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    v226[4] = v224[2];
    v226[5] = v224[3];
    v227 = v225;
    v226[2] = v224[0];
    v226[3] = v224[1];
    v130 = sub_1AFDFF2E8();
    v299 = *v273;
    v300 = *&v273[16];
    v295 = v269;
    v296 = v270;
    v298 = v272;
    v297 = v271;
    v291 = v265;
    v292 = v266;
    v294 = v268;
    v293 = v267;
    v301 = v274;
    v302 = v203;
    v303 = v204;
    v304 = v201;
    v305 = v202;
    v306 = v196;
    v307 = v195;
    v308 = v194;
    *v309 = v242[0];
    *&v309[3] = *(v242 + 3);
    v310 = v100;
    v311 = 15;
    v312 = BYTE2(v100);
    v313 = BYTE3(v100);
    v314 = BYTE4(v100);
    v315 = BYTE5(v100);
    v316 = BYTE6(v100);
    v317 = HIBYTE(v100);
    v318 = xmmword_1AFE68E40;
    v319 = xmmword_1AFE68E40;
    v320 = xmmword_1AFE68E40;
    v321 = 69376;
    v322 = 256;
    v323 = 0;
    v324 = 0;
    v325 = 0;
    v327 = 0;
    v328 = 0;
    v326 = 3;
    v329 = 2;
    v331 = 0;
    v332 = 0;
    v330 = 0;
    v333 = 257;
    v334 = v240;
    v335 = v241;
    v336 = v130;

    v131 = sub_1AF730058(&v291);
    v133 = v132;
    v135 = v134;
    v136 = v134;

    if (v136)
    {
      sub_1AF6022A8(v131, v133, v135);
      if (v193)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_1AF602304(&v291);

        v3 = v207;
        v18 = v200;
      }

      else
      {
        v3 = v207;
        v18 = v200;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v257.i64[0] = 0;
        v257.i64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v224[0] = v257;
        MEMORY[0x1B2718AE0](0xD000000000000042, 0x80000001AFF2CC00);
        MEMORY[0x1B2718AE0](v188, v105);

        MEMORY[0x1B2718AE0](0x6E656D6761726620, 0xEB00000000203A74);
        MEMORY[0x1B2718AE0](v182, v107 | 0x8000000000000000);

        MEMORY[0x1B2718AE0](0x3A746D61726F6620, 0xE900000000000020);
        v258 = v204;
        v257 = v203;
        v260 = v202;
        v259 = v201;
        v261 = v196;
        v262 = v195;
        v263 = v194;
        v264[0] = v243[0];
        *(v264 + 3) = *(v243 + 3);
        type metadata accessor for RenderPassDesc(0);
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](0x6E6174736E6F6320, 0xEC000000203A7374);
        v137 = MEMORY[0x1B2718E40](v129, &type metadata for FunctionConstant);
        v139 = v138;

        MEMORY[0x1B2718AE0](v137, v139);

        MEMORY[0x1B2718AE0](0x6E69646E656C6220, 0xEB00000000203A67);
        v140 = sub_1AF877F10(v219 & 0xFFFFFFFFFFFF0001 | 0xF00);
        MEMORY[0x1B2718AE0](v140);

        v141 = v224[0];
        v142 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v173 = v142;
          swift_once();
          v142 = v173;
        }

        v257.i64[0] = 0;
        sub_1AF0D4F18(v142, &v257, v141.i64[0], v141.i64[1]);
        sub_1AF602304(&v291);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      v20 = v198;
      v60 = v211;
    }

    else
    {

      v143 = swift_unknownObjectRetain();
      sub_1AF6022A8(v143, v133, 0);
      if (v205)
      {
        swift_getObjectType();
        [swift_unknownObjectRetain() setRenderPipelineState_];
        v3 = v207;
        [v205 setDepthStencilState_];
        sub_1AFB19490(v209, v207);
        v144 = xmmword_1AFE20150;
        v145 = xmmword_1AFE20160;
        v146 = xmmword_1AFE20180;
        v18 = v200;
        v60 = v211;
        if ((v181 & 1) == 0)
        {
          __asm { FMOV            V2.2S, #1.0 }

          *v148.f32 = vdiv_f32(_D2, v178);
          v148.f32[2] = 1.0 / v177;
          v148.i32[3] = 0;
          v149 = vabsq_f32(v148);
          v149.i32[3] = 0;
          v150.i64[0] = 0x8000000080000000;
          v150.i64[1] = 0x8000000080000000;
          v151 = vorrq_s8(vandq_s8(v148, v150), vabsq_f32(vmaxnmq_f32(v149, xmmword_1AFE20A30)));
          v144 = vaddq_f32(vmulq_n_f32(xmmword_1AFE20150, v151.f32[0]), 0);
          v145 = vaddq_f32(vmlaq_lane_f32(0, xmmword_1AFE20160, *v151.f32, 1), 0);
          v146 = vaddq_f32(vmlaq_laneq_f32(0, xmmword_1AFE20180, v151, 2), 0);
        }

        *v152.f32 = vdiv_f32(_D10, v183);
        v152.i64[1] = 1065353216;
        v153 = vabsq_f32(v152);
        v153.i32[3] = 0;
        v154.i64[0] = 0x8000000080000000;
        v154.i64[1] = 0x8000000080000000;
        v155 = vorrq_s8(vandq_s8(v152, v154), vabsq_f32(vmaxnmq_f32(v153, xmmword_1AFE20A30)));
        v156 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v144, v155.f32[0]), 0, v145), 0, v146), 0);
        v157 = vmulq_f32(v144, 0);
        v158 = vaddq_f32(vmlaq_f32(vmlaq_lane_f32(v157, v145, *v155.f32, 1), 0, v146), 0);
        v159 = vmlaq_f32(v157, 0, v145);
        v160 = vaddq_f32(vmlaq_laneq_f32(v159, v146, v155, 2), 0);
        v257 = v156;
        v258 = v158;
        v161 = vaddq_f32(vmlaq_f32(v159, 0, v146), xmmword_1AFE201A0);
        v259 = v160;
        v260 = v161;
        if ((v184 & 1) == 0)
        {
          *v162.f32 = v180;
          v162.i64[1] = v179;
          v163 = vmulq_f32(v162, v162);
          v164 = vmulq_laneq_f32(v162, v162, 3);
          v165 = vmuls_lane_f32(v180.f32[0], v180, 1);
          v166 = vmuls_lane_f32(v180.f32[1], v162, 2);
          v162.f32[0] = vmuls_lane_f32(v180.f32[0], v162, 2);
          v167.i32[3] = 0;
          v167.f32[0] = (0.5 - v163.f32[1]) - v163.f32[2];
          v167.f32[1] = v165 + v164.f32[2];
          v167.f32[2] = v162.f32[0] - v164.f32[1];
          v168 = vaddq_f32(v167, v167);
          v163.f32[0] = 0.5 - v163.f32[0];
          v169.i32[3] = 0;
          v169.f32[0] = v165 - v164.f32[2];
          v169.f32[1] = v163.f32[0] - v163.f32[2];
          v169.f32[2] = v166 + v164.f32[0];
          v170 = vaddq_f32(v169, v169);
          v164.f32[0] = v166 - v164.f32[0];
          v171.i32[3] = 0;
          v171.f32[0] = v162.f32[0] + v164.f32[1];
          v171.i32[1] = v164.i32[0];
          v171.f32[2] = v163.f32[0] - v163.f32[1];
          v172 = vaddq_f32(v171, v171);
          v257 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v156, v168.f32[0]), v158, *v168.f32, 1), v160, v168, 2), v161, v168, 3);
          v258 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v156, v170.f32[0]), v158, *v170.f32, 1), v160, v170, 2), v161, v170, 3);
          v259 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v156, v172.f32[0]), v158, *v172.f32, 1), v160, v172, 2), v161, v172, 3);
          v260 = vaddq_f32(v161, vmlaq_f32(vmlaq_f32(vmulq_f32(v156, 0), 0, v158), 0, v160));
        }

        [v205 setVertexBytes:&v257 length:64 atIndex:6];
        [v205 setFragmentTexture:v221 atIndex:0];
        [v205 setFragmentBytes:v226 length:16 atIndex:0];
        sub_1AF6F5B7C(1);
        swift_unknownObjectRelease();
        sub_1AF602304(&v291);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v20 = v198;
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1AF602304(&v291);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v3 = v207;
        v18 = v200;
        v20 = v198;
        v60 = v211;
      }
    }

LABEL_49:
    v60 += 3;
    if (v60 == v61)
    {
      goto LABEL_42;
    }
  }

  if ([v221 textureType] == 3)
  {
    v106 = 0xD00000000000001FLL;
    v107 = "fragment_skybox_texture3d";
    goto LABEL_103;
  }

  v106 = 0xD000000000000019;
  if ([v221 textureType] == 7)
  {
    v107 = "or skybox vertex: ";
    goto LABEL_103;
  }

  if (![v221 textureType])
  {
    v107 = "vertex_skybox_2d";
LABEL_103:
    v105 = 0x80000001AFF2CBC0;
LABEL_104:
    v183 = _D10;
    goto LABEL_112;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  *&v265 = 0;
  *(&v265 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000024, 0x80000001AFF2CB90);
  v257.i64[0] = [v221 textureType];
  type metadata accessor for MTLTextureType(0);
  sub_1AFDFE458();
  v174 = v265;
  v175 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v176 = v175;
    swift_once();
    v175 = v176;
  }

  *&v265 = 0;
  sub_1AF0D4F18(v175, &v265, v174, *(&v174 + 1));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  ecs_stack_allocator_pop_snapshot(v198);

LABEL_43:
  swift_unknownObjectRelease();
  sub_1AF5D1564(v284);
}

void sub_1AF6022A8(void *a1, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else
  {
    if (a3)
    {
      return;
    }

    swift_unknownObjectRelease();
    a1 = a2;
  }
}

void sub_1AF602358()
{
  if (!qword_1EB63C908)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63C908);
    }
  }
}

void sub_1AF6023CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
    v5 = *(a2 + 200);
    sub_1AF0D879C(v13, 0);
    v6 = v13[0];

    v7 = sub_1AF750DEC(v6, *(&v6 + 1), 0, 0, 0, 1, 1);
    sub_1AF0D8F38(v13);

    if (v7)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      if (v5[24] != 2)
      {
        v5[33] = 1;
        v5[31] = 1;
      }

      v8 = sub_1AFBE5C9C(v4);

      v9 = sub_1AFDFE238();
      v11 = v10;

      sub_1AF7180FC();

      v12 = sub_1AF6F3D60(v8, v9, v11);
      swift_bridgeObjectRelease_n();
      sub_1AF709E8C(v12);

      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1AF602598()
{
  result = qword_1EB632BA8;
  if (!qword_1EB632BA8)
  {
    result = swift_getWitnessTable(byte_1AFE69134, &type metadata for Skybox.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632BA8);
  }

  return result;
}

unint64_t sub_1AF6025EC()
{
  result = qword_1EB632DC8;
  if (!qword_1EB632DC8)
  {
    result = swift_getWitnessTable(asc_1AFE6910C, &type metadata for ImageResizingMode, v0, v1);
    atomic_store(result, &qword_1EB632DC8);
  }

  return result;
}

unint64_t sub_1AF602640()
{
  result = qword_1EB63C918;
  if (!qword_1EB63C918)
  {
    result = swift_getWitnessTable(aU_20, &type metadata for ImageResizingMode, v0, v1);
    atomic_store(result, &qword_1EB63C918);
  }

  return result;
}

unint64_t sub_1AF6026B8()
{
  result = qword_1EB63C920;
  if (!qword_1EB63C920)
  {
    sub_1AF602734(255, &qword_1EB63C928, &type metadata for ImageResizingMode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB63C920);
  }

  return result;
}

void sub_1AF602734(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF602788()
{
  result = qword_1EB63C930;
  if (!qword_1EB63C930)
  {
    result = swift_getWitnessTable(asc_1AFE68FCC, &type metadata for ImageResizingMode, v0, v1);
    atomic_store(result, &qword_1EB63C930);
  }

  return result;
}

unint64_t sub_1AF6027E0()
{
  result = qword_1EB63C938;
  if (!qword_1EB63C938)
  {
    result = swift_getWitnessTable(byte_1AFE690BC, &type metadata for Skybox.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C938);
  }

  return result;
}

unint64_t sub_1AF602838()
{
  result = qword_1EB632B98;
  if (!qword_1EB632B98)
  {
    result = swift_getWitnessTable(byte_1AFE68FF4, &type metadata for Skybox.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632B98);
  }

  return result;
}

unint64_t sub_1AF602890()
{
  result = qword_1EB632BA0;
  if (!qword_1EB632BA0)
  {
    result = swift_getWitnessTable(byte_1AFE6901C, &type metadata for Skybox.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632BA0);
  }

  return result;
}

unint64_t sub_1AF6028E4()
{
  result = qword_1EB632DF8;
  if (!qword_1EB632DF8)
  {
    result = swift_getWitnessTable(asc_1AFE6953C, &type metadata for ImageResizingMode.SizeToFitCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632DF8);
  }

  return result;
}

unint64_t sub_1AF602938()
{
  result = qword_1EB632DE0;
  if (!qword_1EB632DE0)
  {
    result = swift_getWitnessTable(byte_1AFE694EC, &type metadata for ImageResizingMode.SizeToFillCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632DE0);
  }

  return result;
}

unint64_t sub_1AF60298C()
{
  result = qword_1EB632E10;
  if (!qword_1EB632E10)
  {
    result = swift_getWitnessTable(byte_1AFE6949C, &type metadata for ImageResizingMode.StretchCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632E10);
  }

  return result;
}

unint64_t sub_1AF6029E0()
{
  result = qword_1EB632E28;
  if (!qword_1EB632E28)
  {
    result = swift_getWitnessTable(aM_19, &type metadata for ImageResizingMode.CenterCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632E28);
  }

  return result;
}

unint64_t sub_1AF602A34()
{
  result = qword_1EB632E40;
  if (!qword_1EB632E40)
  {
    result = swift_getWitnessTable(byte_1AFE693FC, &type metadata for ImageResizingMode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632E40);
  }

  return result;
}

void sub_1AF602A88(uint64_t a1)
{
  if (!qword_1EB6327B0)
  {
    sub_1AF602AF8();
    sub_1AFDFE2B8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6327B0);
    }
  }
}

unint64_t sub_1AF602AF8()
{
  result = qword_1EB6327B8;
  if (!qword_1EB6327B8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EB6327B8);
  }

  return result;
}

void sub_1AF602B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF602C00()
{
  result = qword_1EB63C968;
  if (!qword_1EB63C968)
  {
    result = swift_getWitnessTable(aU_21, &type metadata for ImageResizingMode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C968);
  }

  return result;
}

unint64_t sub_1AF602C58()
{
  result = qword_1EB632E30;
  if (!qword_1EB632E30)
  {
    result = swift_getWitnessTable(byte_1AFE69344, &type metadata for ImageResizingMode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632E30);
  }

  return result;
}

unint64_t sub_1AF602CB0()
{
  result = qword_1EB632E38;
  if (!qword_1EB632E38)
  {
    result = swift_getWitnessTable(byte_1AFE6936C, &type metadata for ImageResizingMode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632E38);
  }

  return result;
}

unint64_t sub_1AF602D08()
{
  result = qword_1EB632E18;
  if (!qword_1EB632E18)
  {
    result = swift_getWitnessTable(byte_1AFE692F4, &type metadata for ImageResizingMode.CenterCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632E18);
  }

  return result;
}

unint64_t sub_1AF602D60()
{
  result = qword_1EB632E20;
  if (!qword_1EB632E20)
  {
    result = swift_getWitnessTable(byte_1AFE6931C, &type metadata for ImageResizingMode.CenterCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632E20);
  }

  return result;
}

unint64_t sub_1AF602DB8()
{
  result = qword_1EB632E00;
  if (!qword_1EB632E00)
  {
    result = swift_getWitnessTable(aM_20, &type metadata for ImageResizingMode.StretchCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632E00);
  }

  return result;
}

unint64_t sub_1AF602E10()
{
  result = qword_1EB632E08;
  if (!qword_1EB632E08)
  {
    result = swift_getWitnessTable(aE_21, &type metadata for ImageResizingMode.StretchCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632E08);
  }

  return result;
}

unint64_t sub_1AF602E68()
{
  result = qword_1EB632DD0;
  if (!qword_1EB632DD0)
  {
    result = swift_getWitnessTable(byte_1AFE69254, &type metadata for ImageResizingMode.SizeToFillCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632DD0);
  }

  return result;
}

unint64_t sub_1AF602EC0()
{
  result = qword_1EB632DD8;
  if (!qword_1EB632DD8)
  {
    result = swift_getWitnessTable(byte_1AFE6927C, &type metadata for ImageResizingMode.SizeToFillCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632DD8);
  }

  return result;
}

unint64_t sub_1AF602F18()
{
  result = qword_1EB632DE8;
  if (!qword_1EB632DE8)
  {
    result = swift_getWitnessTable(byte_1AFE69204, &type metadata for ImageResizingMode.SizeToFitCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632DE8);
  }

  return result;
}

unint64_t sub_1AF602F70()
{
  result = qword_1EB632DF0;
  if (!qword_1EB632DF0)
  {
    result = swift_getWitnessTable(byte_1AFE6922C, &type metadata for ImageResizingMode.SizeToFitCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632DF0);
  }

  return result;
}

uint64_t sub_1AF602FC4(void *a1)
{
  v3 = v1;
  sub_1AF605120(0, &qword_1EB63C990, sub_1AF605068, &type metadata for TextToImageGenerator.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF605068();
  sub_1AFDFF3F8();
  LOBYTE(v13) = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1AFDFE968();
    LOBYTE(v13) = 2;
    sub_1AFDFE968();
    v13 = *(v3 + 24);
    v14 = *(v3 + 40);
    v15 = 3;
    sub_1AF5F19F4();
    sub_1AFDFE918();
    v13 = *(v3 + 48);
    v15 = 4;
    v11 = MEMORY[0x1E69E74A8];
    sub_1AF605120(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF6050BC(&qword_1ED72F710, &qword_1ED72F6E0, v11, MEMORY[0x1E69E74B0]);
    sub_1AFDFE918();
    v13 = *(v3 + 64);
    v15 = 5;
    sub_1AFDFE918();
    *&v13 = *(v3 + 80);
    v15 = 6;
    v12 = MEMORY[0x1E69E7428];
    sub_1AF605120(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    sub_1AF6050BC(&qword_1ED72F798, &unk_1ED72F770, v12, MEMORY[0x1E69E7430]);
    sub_1AFDFE918();
    v13 = *(v3 + 96);
    LOBYTE(v14) = *(v3 + 112);
    v15 = 7;
    sub_1AFDFE8A8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF603390()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x7A69536567616D69;
  if (v1 != 6)
  {
    v3 = 0x656E6961746E6F63;
  }

  v4 = 0x756F726765726F66;
  if (v1 != 4)
  {
    v4 = 0x756F72676B636162;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x61657242656E696CLL;
  if (v1 != 2)
  {
    v5 = 0x6F46656C706D6973;
  }

  if (*v0)
  {
    v2 = 0x6E656D6E67696C61;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF6034B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF603EF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF6034D8(uint64_t a1)
{
  v2 = sub_1AF605068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF603514(uint64_t a1)
{
  v2 = sub_1AF605068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF603550@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF604974(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_1AF6035C4(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 112);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_1AF603C68(v12, v14) & 1;
}

BOOL sub_1AF603648(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 112);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return (sub_1AF603C68(v12, v14) & 1) == 0;
}

double sub_1AF6036D0@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x4656206F6C6C6548;
  *(a1 + 8) = 0xE900000000000058;
  *(a1 + 16) = 2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 1119617024;
  __asm { FMOV            V1.4S, #1.0 }

  *(a1 + 48) = xmmword_1AFE201A0;
  *(a1 + 64) = _Q1;
  result = 3.68934975e19;
  *(a1 + 80) = 0x4400000044000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  return result;
}

uint64_t destroy for TextToImageGenerator(uint64_t a1)
{
}

uint64_t initializeWithCopy for TextToImageGenerator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithCopy for TextToImageGenerator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v4;
  return a1;
}

__n128 initializeWithTake for TextToImageGenerator(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TextToImageGenerator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextToImageGenerator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for TextToImageGenerator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AF603A10(uint64_t a1)
{
  v2 = *(v1 + 32);
  v17[0] = *(v1 + 16);
  v17[1] = v2;
  v18 = *(v1 + 48);
  sub_1AF6B06C0(a1, v17, 0x200000000, &v3);
  if (v3)
  {
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    v11 = v4;
    v12 = v5;
    v10 = v3;
    sub_1AFD06C28(&v10);
    sub_1AF5D1564(&v3);
  }
}

uint64_t sub_1AF603AC0()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED73B840;
  v12 = 0;
  v13 = 2;
  v14 = 0;
  v15 = 2;
  v16 = 0;
  sub_1AF702F64(1, &v6);
  v1 = v7;
  v2 = v8;
  v3 = v10;
  v4 = v9 | 4;
  *(v0 + 16) = v6;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  return v0;
}

void sub_1AF603BAC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  v6 = *(v4 + 40);

  os_unfair_lock_unlock(v6);
}

uint64_t sub_1AF603C68(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_1AFDFEE28() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  v5 = a1[10];
  v6 = *(a2 + 40);
  if (*(a1 + 3) == *(a2 + 24) && *(a1 + 4) == *(a2 + 32))
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_1AFDFEE28();
    result = 0;
    if ((v7 & 1) == 0 || v5 != v6)
    {
      return result;
    }
  }

  v9 = 0;
  v10 = *(a1 + 3);
  v11 = *(a2 + 48);
  while (1)
  {
    v40 = v10;
    v17 = *(&v40 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
    v41 = v11;
    v18 = *(&v41 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
    v12 = v17 == v18;
    if (v9 == 3)
    {
      break;
    }

    while (1)
    {
      ++v9;
      if (v12)
      {
        break;
      }

      v12 = 0;
      result = 0;
      if (v9 == 3)
      {
        return result;
      }
    }
  }

  if (v17 != v18)
  {
    return 0;
  }

  v13 = 0;
  v14 = *(a1 + 4);
  v15 = *(a2 + 64);
  while (1)
  {
    v38 = v14;
    v23 = *(&v38 & 0xFFFFFFFFFFFFFFF3 | (4 * (v13 & 3)));
    v39 = v15;
    v24 = *(&v39 & 0xFFFFFFFFFFFFFFF3 | (4 * (v13 & 3)));
    v16 = v23 == v24;
    if (v13 == 3)
    {
      break;
    }

    while (1)
    {
      ++v13;
      if (v16)
      {
        break;
      }

      v16 = 0;
      result = 0;
      if (v13 == 3)
      {
        return result;
      }
    }
  }

  if (v23 != v24)
  {
    return 0;
  }

  v19 = 0;
  v20 = *(a1 + 10);
  v21 = *(a2 + 80);
  while (1)
  {
    v36 = v20;
    v31 = *(&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v19 & 1)));
    v37 = v21;
    v32 = *(&v37 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v19 & 1)));
    v22 = v31 == v32;
    if (v19 == 1)
    {
      break;
    }

    while (1)
    {
      ++v19;
      if (v22)
      {
        break;
      }

      v22 = 0;
      result = 0;
      if (v19 == 1)
      {
        return result;
      }
    }
  }

  if (v31 != v32)
  {
    return 0;
  }

  v25 = *(a1 + 112);
  v26 = *(a2 + 112);
  result = v25 & v26;
  if ((v25 & 1) == 0 && (v26 & 1) == 0)
  {
    v27 = 0;
    v28 = *(a1 + 6);
    v29 = *(a2 + 96);
LABEL_41:
    v34 = v28;
    v33 = *(&v34 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3)));
    v35 = v29;
    v30 = v33 == *(&v35 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3)));
    result = v30;
    while (v27 != 3)
    {
      ++v27;
      if (v30)
      {
        goto LABEL_41;
      }

      v30 = 0;
      result = 0;
    }
  }

  return result;
}

uint64_t sub_1AF603EF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xED000065646F4D74 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61657242656E696CLL && a2 == 0xED000065646F4D6BLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F46656C706D6973 && a2 == 0xEA0000000000746ELL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEF726F6C6F43646ELL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7A69536567616D69 && a2 == 0xE900000000000065 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xE900000000000072)
  {

    return 7;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void sub_1AF6041AC(float32x4_t *a1, id *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v54 = vcvtq_s64_f64(vcvtq_f64_f32(*a1[5].f32));
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (v54.i64[0] < 1 || v54.i64[1] <= 0)
  {
LABEL_11:

    return;
  }

  v5 = sub_1AF604838(v54.u64[0], v54.u64[1], 4 * v54.i64[0], DeviceRGB);
  if (!v5)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v7 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v48 = v7;
      swift_once();
      v7 = v48;
    }

    v56 = 0;
    sub_1AF0D4F18(v7, &v56, 0xD000000000000035, 0x80000001AFF2CDA0);
    goto LABEL_11;
  }

  v6 = v5;

  v53 = DeviceRGB;
  if (a1[7].i8[0])
  {
    v51 = vcvt_hight_f32_f64(0, vcvtq_f64_u64(v54));
  }

  else
  {
    v51 = a1[6];
  }

  v8 = a1[2].f32[2];

  if (sub_1AFDFD048())
  {
    v9 = v8;
  }

  else
  {

    v9 = v8;
    v10 = [objc_opt_self() systemFontOfSize_];
    v11 = [v10 fontName];

    sub_1AFDFCEF8();
  }

  v52 = a2;
  v12 = sub_1AFDFCEC8();

  v13 = [objc_opt_self() fontDescriptorWithName:v12 size:v9];

  v14 = objc_opt_self();
  v15 = [v14 fontWithDescriptor:v13 size:v9];
  if (!v15)
  {
    v15 = [v14 systemFontOfSize_];
  }

  v50 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:COERCE_FLOAT(*&a1[4]) green:COERCE_FLOAT(HIDWORD(a1[4].i64[0])) blue:COERCE_FLOAT(a1[4].i64[1]) alpha:COERCE_FLOAT(HIDWORD(*&a1[4]))];
  LOBYTE(v56) = a1[1].i8[0];
  v55 = a1[1].i8[1];
  v57.spec = kCTParagraphStyleSpecifierAlignment;
  v57.valueSize = 1;
  v57.value = &v56;
  v58 = 6;
  v59 = 1;
  v60 = &v55;
  v16 = CTParagraphStyleCreate(&v57, 2uLL);
  sub_1AF604858(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C6B0;
  v18 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v19 = sub_1AF0D4478(0, &qword_1EB638E60, 0x1E69DB878);
  *(inited + 40) = v15;
  v20 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v19;
  *(inited + 72) = v20;
  v21 = COERCE_FLOAT(*&a1[3]);
  v22 = COERCE_FLOAT(HIDWORD(a1[3].i64[0]));
  v23 = COERCE_FLOAT(a1[3].i64[1]);
  v24 = COERCE_FLOAT(HIDWORD(*&a1[3]));
  v25 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v26 = v18;
  v49 = v15;
  v27 = v20;
  v28 = [v25 initWithRed:v21 green:v22 blue:v23 alpha:v24];
  v29 = sub_1AF0D4478(0, &qword_1EB63C978, 0x1E69DC888);
  *(inited + 80) = v28;
  v30 = *MEMORY[0x1E69DB600];
  *(inited + 104) = v29;
  *(inited + 112) = v30;
  v31 = objc_opt_self();
  v32 = v30;
  *(inited + 120) = [v31 clearColor];
  v33 = *MEMORY[0x1E69DB688];
  *(inited + 144) = v29;
  *(inited + 152) = v33;
  type metadata accessor for CTParagraphStyle(0);
  *(inited + 184) = v34;
  *(inited + 160) = v16;
  v35 = v33;
  v36 = v16;
  sub_1AF43D2D4(inited);
  swift_setDeallocating();
  sub_1AF6048B0(0);
  swift_arrayDestroy();
  v37 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v38 = sub_1AFDFCEC8();
  type metadata accessor for Key(0);
  sub_1AF60491C();
  v39 = sub_1AFDFCBE8();

  v40 = [v37 initWithString:v38 attributes:v39];

  v41 = CTFramesetterCreateWithAttributedString(v40);
  v63.origin.x = v51.f32[0];
  v63.origin.y = v51.f32[1];
  v63.size.width = v51.f32[2];
  v63.size.height = v51.f32[3];
  v42 = CGPathCreateWithRect(v63, 0);
  v62.location = 0;
  v62.length = 0;
  Frame = CTFramesetterCreateFrame(v41, v62, v42, 0);
  CGContextSaveGState(v6);
  CGContextSetBlendMode(v6, kCGBlendModeCopy);
  v44 = [v50 CGColor];
  CGContextSetFillColorWithColor(v6, v44);

  Width = CGBitmapContextGetWidth(v6);
  Height = CGBitmapContextGetHeight(v6);
  v64.size.width = Width;
  v64.size.height = Height;
  v64.origin.x = 0.0;
  v64.origin.y = 0.0;
  CGContextFillRect(v6, v64);
  CGContextRestoreGState(v6);
  CTFrameDraw(Frame, v6);
  Image = CGBitmapContextCreateImage(v6);

  *v52 = Image;
}

void sub_1AF604858(uint64_t a1)
{
  if (!qword_1EB63C970)
  {
    sub_1AF6048B0(255);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63C970);
    }
  }
}

void sub_1AF6048B0(uint64_t a1)
{
  if (!qword_1EB6382B8)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6382B8);
    }
  }
}

unint64_t sub_1AF60491C()
{
  result = qword_1EB637E40;
  if (!qword_1EB637E40)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable(byte_1AFE4BF50, v3, v0, v1);
    atomic_store(result, &qword_1EB637E40);
  }

  return result;
}

uint64_t sub_1AF604974@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  sub_1AF605120(0, &qword_1EB63C980, sub_1AF605068, &type metadata for TextToImageGenerator.CodingKeys, MEMORY[0x1E69E6F48]);
  v54 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v49 - v6;
  v81 = 1;
  v8 = a1[3];
  v55 = a1;
  sub_1AF441150(a1, v8);
  sub_1AF605068();
  v9 = v7;
  sub_1AFDFF3B8();
  if (v2)
  {
    v84 = v2;
    v10 = 0;
    v11 = 0;
    v12 = 0x4656206F6C6C6548;
    v17 = 2;
    v18 = 0xE000000000000000;
    __asm { FMOV            V0.4S, #1.0 }

    v56 = _Q0;
    v57 = xmmword_1AFE201A0;
    v24 = 0xE900000000000058;
    v25 = 1119617024;
LABEL_4:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
    *&v69 = v12;
    *(&v69 + 1) = v24;
    v70[0] = v17;
    v70[1] = v11;
    *&v70[2] = v82;
    v71 = v83;
    v72 = v10;
    v73 = v18;
    v74 = v25;
    v75 = v57;
    v76 = v56;
    v77 = 0x4400000044000000;
    v78 = 0;
    v79 = 0;
    v80 = v81;
    return sub_1AF582F18(&v69);
  }

  v52 = v5;
  v13 = v53;
  v14 = v54;
  LOBYTE(v69) = 0;
  v15 = v9;
  v16 = sub_1AFDFE708();
  v24 = v27;
  v51 = v16;
  LOBYTE(v69) = 1;
  v28 = sub_1AFDFE7B8();
  v29 = v52;
  v50 = v28;
  LOBYTE(v69) = 2;
  v30 = sub_1AFDFE7B8();
  v84 = 0;
  v11 = v30;
  LOBYTE(v58) = 3;
  sub_1AF5F19A0();
  v31 = v84;
  sub_1AFDFE768();
  v84 = v31;
  if (v31)
  {
    (*(v29 + 8))(v9, v14);
    v10 = 0;
    v18 = 0xE000000000000000;
    __asm { FMOV            V0.4S, #1.0 }

    v56 = _Q0;
    v57 = xmmword_1AFE201A0;
    v25 = 1119617024;
LABEL_7:
    v12 = v51;
    v17 = v50;
    goto LABEL_4;
  }

  v18 = *(&v69 + 1);
  v10 = v69;
  v25 = *v70;
  v33 = MEMORY[0x1E69E74A8];
  sub_1AF605120(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  LOBYTE(v58) = 4;
  v34 = v33;
  v36 = v35;
  v49[3] = sub_1AF6050BC(&qword_1ED72F6F0, &qword_1ED72F6E0, v34, MEMORY[0x1E69E74C0]);
  v37 = v84;
  sub_1AFDFE768();
  if (v37)
  {
    v84 = v37;
    (*(v52 + 8))(v15, v14);
    v57 = xmmword_1AFE201A0;
    __asm { FMOV            V0.4S, #1.0 }

    v56 = _Q0;
    goto LABEL_7;
  }

  v57 = v69;
  LOBYTE(v58) = 5;
  sub_1AFDFE768();
  v84 = 0;
  v49[1] = v36;
  v56 = v69;
  v39 = MEMORY[0x1E69E7428];
  sub_1AF605120(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v49[2] = v40;
  LOBYTE(v58) = 6;
  sub_1AF6050BC(&qword_1ED72F780, &unk_1ED72F770, v39, MEMORY[0x1E69E7440]);
  v41 = v84;
  sub_1AFDFE768();
  if (v41)
  {
    v84 = v41;
    (*(v52 + 8))(v15, v14);
    goto LABEL_7;
  }

  v42 = v69;
  v66 = 7;
  sub_1AFDFE6E8();
  v84 = 0;
  (*(v52 + 8))(v15, v14);
  v52 = *(&v67 + 1);
  v54 = v67;
  v43 = v68;
  v81 = v68;
  v44 = v51;
  *&v58 = v51;
  *(&v58 + 1) = v24;
  v45 = v50;
  LOBYTE(v59) = v50;
  BYTE1(v59) = v11;
  *(&v59 + 2) = v82;
  WORD3(v59) = v83;
  *(&v59 + 1) = v10;
  *&v60 = v18;
  DWORD2(v60) = v25;
  v61 = v57;
  v62 = v56;
  *&v63 = v42;
  v64 = v67;
  v65 = v68;
  sub_1AF582EBC(&v58, &v69);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
  *&v69 = v44;
  *(&v69 + 1) = v24;
  v70[0] = v45;
  v70[1] = v11;
  *&v70[2] = v82;
  v71 = v83;
  v72 = v10;
  v73 = v18;
  v74 = v25;
  v75 = v57;
  v76 = v56;
  v77 = v42;
  v78 = v54;
  v79 = v52;
  v80 = v43;
  result = sub_1AF582F18(&v69);
  v46 = v63;
  *(v13 + 64) = v62;
  *(v13 + 80) = v46;
  *(v13 + 96) = v64;
  *(v13 + 112) = v65;
  v47 = v59;
  *v13 = v58;
  *(v13 + 16) = v47;
  v48 = v61;
  *(v13 + 32) = v60;
  *(v13 + 48) = v48;
  return result;
}

unint64_t sub_1AF605068()
{
  result = qword_1EB63C988;
  if (!qword_1EB63C988)
  {
    result = swift_getWitnessTable(aU_22, &type metadata for TextToImageGenerator.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C988);
  }

  return result;
}

uint64_t sub_1AF6050BC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF605120(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF605120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF60519C()
{
  result = qword_1EB63C998;
  if (!qword_1EB63C998)
  {
    result = swift_getWitnessTable(asc_1AFE6973C, &type metadata for TextToImageGenerator.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C998);
  }

  return result;
}

unint64_t sub_1AF6051F4()
{
  result = qword_1EB63C9A0;
  if (!qword_1EB63C9A0)
  {
    result = swift_getWitnessTable(aE_22, &type metadata for TextToImageGenerator.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C9A0);
  }

  return result;
}

unint64_t sub_1AF60524C()
{
  result = qword_1EB63C9A8;
  if (!qword_1EB63C9A8)
  {
    result = swift_getWitnessTable("]", &type metadata for TextToImageGenerator.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C9A8);
  }

  return result;
}

void sub_1AF6052A4(unsigned __int16 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = xmmword_1AFE685E0;
  v35 = a1;
  v36 = a2;
  sub_1AFDFCF68();
  sub_1AF605734(0);
  sub_1AF5F73E4(v9);
  v10 = sub_1AFDFCF28();
  if (!v11)
  {
    goto LABEL_31;
  }

  if (v10 == 1449084502 && v11 == 0xE400000000000000)
  {

LABEL_9:
    v14 = a1[2];
    v15 = a1[3];
    v16 = a1[4];
    CFXTextureDescriptorMakeDefault(&v32);
    sub_1AF48F3CC(&v32);
    sub_1AF48F3E0(&v32);
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = 1;
    }

    sub_1AF46749C(v17, &v32);
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = 1;
    }

    sub_1AF4674A4(v18, &v32);
    if (v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = 1;
    }

    sub_1AF4674AC(v19, &v32);
    sub_1AF48F3EC(&v32);
    sub_1AF4674BC(&v32);
    sub_1AF48F3F8(&v32);
    sub_1AF48F404(&v32);
    sub_1AF48F414(&v32);
    *(a3 + 2) = v32;
    a3[6] = v33;
    v20 = v16 * v15;
    BufferWithLength = CFXGPUDeviceCreateBufferWithLength(a4, 16 * (v16 * v15) * v14, 0);
    if (!BufferWithLength)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v34 = 0;
      *(&v34 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
      MEMORY[0x1B2718AE0](4271950, 0xE300000000000000);
      MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
      v29 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v29);

      MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
      type metadata accessor for MTLResourceOptions(0);
      sub_1AFDFE458();
      v30 = v34;
      v31 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      *&v34 = 0;
      sub_1AF0D4F18(v31, &v34, v30, *(&v30 + 1));

      goto LABEL_31;
    }

    v22 = BufferWithLength;
    v23 = sub_1AFDFCEC8();
    [v22 setLabel_];

    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v24 = 0;
      v25 = v20 * v14;
      if (!v25)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v24 = [v22 contents];
      v26 = v22;
      v25 = v20 * v14;
      if (!v25)
      {
LABEL_25:
        *a3 = v22;
        a3[1] = 0;
        a3[2] = 16 * v20 * v14;
        swift_unknownObjectRelease();
        return;
      }
    }

    v27 = a1 + 9;
    do
    {
      *&v28 = *(v27 - 1);
      *(&v28 + 1) = *v27;
      *v24++ = v28;
      v27 += 6;
      --v25;
    }

    while (v25);
    goto LABEL_25;
  }

  v13 = sub_1AFDFEE28();

  if (v13)
  {
    goto LABEL_9;
  }

LABEL_31:
  sub_1AFDFE518();
  __break(1u);
}

void sub_1AF605734(uint64_t a1)
{
  if (!qword_1EB63C7D0)
  {
    sub_1AF5F7390();
    v1 = sub_1AFDFF248();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63C7D0);
    }
  }
}

uint64_t sub_1AF6057B0@<X0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF605D84(a2);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AF6057DC(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  nullsub_106();
  sub_1AF448018(v3, v3[3]);
  v1 = MEMORY[0x1E69E7450];
  sub_1AF6064DC(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AF60613C(&qword_1ED72F758, &qword_1ED72F740, v1, MEMORY[0x1E69E7458]);
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

uint64_t sub_1AF605904@<X0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF6061A0(a2);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AF605930(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v3, v3[3]);
  v1 = MEMORY[0x1E69E74A8];
  sub_1AF6064DC(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF60613C(&qword_1ED72F710, &qword_1ED72F6E0, v1, MEMORY[0x1E69E74B0]);
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

uint64_t sub_1AF605AC4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF605B1C(uint64_t a1)
{
  v2 = sub_1AF6060E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF605B58(uint64_t a1)
{
  v2 = sub_1AF6060E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF605BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF605C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF605C64@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF605CB4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF605D0C(uint64_t a1)
{
  v2 = sub_1AF606544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF605D48(uint64_t a1)
{
  v2 = sub_1AF606544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF605D84(void *a1)
{
  sub_1AF6064DC(0, &qword_1EB63C9B0, sub_1AF6060E8, &type metadata for Velocity.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = a1[3];
  v9 = a1[4];
  sub_1AF441150(a1, v8);
  if (sub_1AF69504C(1018, v8, v9))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF6060E8();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v10 = MEMORY[0x1E69E74A8];
      sub_1AF6064DC(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      sub_1AF60613C(&qword_1ED72F6F0, &qword_1ED72F6E0, v10, MEMORY[0x1E69E74C0]);
      sub_1AFDFE768();
      v15[0] = v16;
      (*(v5 + 8))(v7, v4);
      v13 = v15[0];
      HIDWORD(v13) = 0;
      v15[0] = v13;
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v1)
    {
      sub_1AF441150(&v16, v17);
      v11 = MEMORY[0x1E69E7450];
      sub_1AF6064DC(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
      sub_1AF60613C(&qword_1ED72F748, &qword_1ED72F740, v11, MEMORY[0x1E69E7468]);
      sub_1AFDFEE88();
      v14 = v15[1];
      HIDWORD(v14) = 0;
      v15[0] = v14;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v16);
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

unint64_t sub_1AF6060E8()
{
  result = qword_1EB63C9B8;
  if (!qword_1EB63C9B8)
  {
    result = swift_getWitnessTable(byte_1AFE69B0C, &type metadata for Velocity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C9B8);
  }

  return result;
}

uint64_t sub_1AF60613C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF6064DC(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF6061A0(void *a1)
{
  sub_1AF6064DC(0, &qword_1EB63C9C0, sub_1AF606544, &type metadata for AngularVelocity.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = a1[3];
  v9 = a1[4];
  sub_1AF441150(a1, v8);
  if (sub_1AF69504C(2017, v8, v9))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF606544();
    sub_1AFDFF3B8();
    if (!v1)
    {
      sub_1AF5E122C();
      sub_1AFDFE768();
      v12 = vmulq_f32(v21, v21);
      v12.f32[0] = v12.f32[2] + vaddv_f32(*v12.f32);
      v13 = vrsqrte_f32(v12.u32[0]);
      v14 = vmul_f32(v13, vrsqrts_f32(v12.u32[0], vmul_f32(v13, v13)));
      v19 = vmulq_n_f32(v21, vmul_f32(v14, vrsqrts_f32(v12.u32[0], vmul_f32(v14, v14))).f32[0]);
      v15 = atan2f(sqrtf(v12.f32[0]), v21.f32[3]);
      *&v16 = v15 + v15;
      v18 = v16;
      (*(v5 + 8))(v7, v4);
      v17 = v19;
      v17.i32[3] = v18;
      v19 = v17;
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v1)
    {
      sub_1AF441150(&v21, v22);
      v10 = MEMORY[0x1E69E74A8];
      sub_1AF6064DC(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      sub_1AF60613C(&qword_1ED72F6F0, &qword_1ED72F6E0, v10, MEMORY[0x1E69E74C0]);
      sub_1AFDFEE88();
      v19 = v20;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v21);
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

void sub_1AF6064DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF606544()
{
  result = qword_1EB63C9C8;
  if (!qword_1EB63C9C8)
  {
    result = swift_getWitnessTable(byte_1AFE69ABC, &type metadata for AngularVelocity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C9C8);
  }

  return result;
}

unint64_t sub_1AF6065BC()
{
  result = qword_1EB63C9D0;
  if (!qword_1EB63C9D0)
  {
    result = swift_getWitnessTable(byte_1AFE699A4, &type metadata for Velocity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C9D0);
  }

  return result;
}

unint64_t sub_1AF606614()
{
  result = qword_1EB63C9D8;
  if (!qword_1EB63C9D8)
  {
    result = swift_getWitnessTable(byte_1AFE69A94, &type metadata for AngularVelocity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C9D8);
  }

  return result;
}

unint64_t sub_1AF60666C()
{
  result = qword_1EB63C9E0;
  if (!qword_1EB63C9E0)
  {
    result = swift_getWitnessTable(asc_1AFE699CC, &type metadata for AngularVelocity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C9E0);
  }

  return result;
}

unint64_t sub_1AF6066C4()
{
  result = qword_1EB63C9E8;
  if (!qword_1EB63C9E8)
  {
    result = swift_getWitnessTable(asc_1AFE699F4, &type metadata for AngularVelocity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C9E8);
  }

  return result;
}

unint64_t sub_1AF60671C()
{
  result = qword_1EB63C9F0;
  if (!qword_1EB63C9F0)
  {
    result = swift_getWitnessTable(byte_1AFE698DC, &type metadata for Velocity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C9F0);
  }

  return result;
}

unint64_t sub_1AF606774()
{
  result = qword_1EB63C9F8;
  if (!qword_1EB63C9F8)
  {
    result = swift_getWitnessTable(asc_1AFE69904, &type metadata for Velocity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C9F8);
  }

  return result;
}

uint64_t initializeWithCopy for AnyCoder(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

uint64_t *sub_1AF60685C(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t assignWithTake for AnyCoder(uint64_t a1, _OWORD *a2)
{
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyCoder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for AnyCoder(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1AF606B3C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF60827C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  if (sub_1AF69504C(2003, v10, v11))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF6082D8();
    sub_1AFDFF3B8();
    if (!v2)
    {
      LOBYTE(v15[0]) = 1;
      sub_1AF60832C();
      sub_1AFDFE768();
      sub_1AF606DD8(v16, v9, 0, &v16);
      (*(v7 + 8))(v9, v6);
      sub_1AF449D40(&v16, v18);
LABEL_6:
      v12 = v18[1];
      *a2 = v18[0];
      a2[1] = v12;
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (!v2)
    {
      sub_1AF448018(&v16, v17);
      sub_1AF60832C();
      sub_1AFDFEAD8();
      sub_1AF6074C4(*&v15[0], &v16, v15);
      sub_1AF449D40(v15, v18);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v16);
      goto LABEL_6;
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

void *sub_1AF606DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  sub_1AF60827C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3 & 1;
  v62[1] = a3 & 1;
  type metadata accessor for TextureDescriptor(0);
  v16 = v15;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF6086F8();
    result = sub_1AFDFE768();
    if (!v4)
    {
      *a4 = v58;
      a4[2] = v59;
      a4[3] = v16;
    }

    return result;
  }

  type metadata accessor for simd_quatf(0);
  v19 = v18;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF5E122C();
    result = sub_1AFDFE768();
    if (!v4)
    {
      v57 = v58;
      a4[3] = v19;
      result = swift_allocObject();
      *a4 = result;
      *(result + 1) = v57;
    }

    return result;
  }

  type metadata accessor for simd_float2x2(0);
  v21 = v20;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF6086A4();
    result = sub_1AFDFE768();
    if (!v4)
    {
      v22 = v58;
      a4[3] = v21;
      *a4 = v22;
    }

    return result;
  }

  type metadata accessor for simd_float2x3(0);
  v24 = v23;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF608650();
    goto LABEL_14;
  }

  type metadata accessor for simd_float2x4(0);
  v24 = v25;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF6085FC();
LABEL_14:
    result = sub_1AFDFE768();
    if (!v4)
    {
      v56 = v59;
      v57 = v58;
      a4[3] = v24;
      result = swift_allocObject();
      *a4 = result;
      v26 = v56;
      *(result + 1) = v57;
      *(result + 2) = v26;
    }

    return result;
  }

  type metadata accessor for simd_float3x2(0);
  v28 = v27;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF6085A8();
    result = sub_1AFDFE768();
    if (!v4)
    {
      v29 = v58;
      v30 = v59;
      a4[3] = v28;
      *a4 = v29;
      a4[2] = v30;
    }

    return result;
  }

  type metadata accessor for simd_float3x3(0);
  v32 = v31;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF608554();
    goto LABEL_24;
  }

  type metadata accessor for simd_float3x4(0);
  v32 = v33;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF608500();
LABEL_24:
    result = sub_1AFDFE768();
    if (!v4)
    {
      v56 = v59;
      v57 = v58;
      v55 = v60;
      a4[3] = v32;
      result = swift_allocObject();
      *a4 = result;
      v34 = v56;
      *(result + 1) = v57;
      *(result + 2) = v34;
      *(result + 3) = v55;
    }

    return result;
  }

  type metadata accessor for simd_float4x2(0);
  v36 = v35;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF6084AC();
    result = sub_1AFDFE768();
    if (!v4)
    {
      v57 = v58;
      v37 = v59;
      a4[3] = v36;
      result = swift_allocObject();
      *a4 = result;
      *(result + 1) = v57;
      *(result + 2) = v37;
    }
  }

  else
  {
    type metadata accessor for simd_float4x3(0);
    v39 = v38;
    if (swift_dynamicCastMetatype())
    {
      sub_1AF608458();
      result = sub_1AFDFE768();
      if (!v4)
      {
        a4[3] = v39;
        result = swift_allocObject();
        *a4 = result;
        v40 = v59;
        *(result + 1) = v58;
        *(result + 2) = v40;
        v41 = v61;
        *(result + 3) = v60;
        *(result + 4) = v41;
      }
    }

    else
    {
      type metadata accessor for simd_float4x4(0);
      v43 = v42;
      if (swift_dynamicCastMetatype())
      {
        sub_1AF48D6F8();
        result = sub_1AFDFE768();
        if (!v4)
        {
          v56 = v59;
          v57 = v58;
          v54 = v61;
          v55 = v60;
          a4[3] = v43;
          result = swift_allocObject();
          *a4 = result;
          v44 = v56;
          *(result + 1) = v57;
          *(result + 2) = v44;
          v45 = v54;
          *(result + 3) = v55;
          *(result + 4) = v45;
        }
      }

      else
      {
        v46 = sub_1AF608380(a1, a1, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
        *&v57 = v47;
        *&v56 = v48;
        if (v46)
        {
          v49 = v46;
          (*(v11 + 16))(v13, a2, v10);
          v62[0] = v14;
          *(&v59 + 1) = v49;
          *&v60 = v57;
          *(&v60 + 1) = v56;
          sub_1AF585714(&v58);
          sub_1AF6082D8();
          sub_1AF7585B0(v13, v62, v49, &type metadata for AnyCoder.CodingKeys);
          if (v4)
          {
            return sub_1AF608408(&v58);
          }

          else
          {
            v50 = *(&v59 + 1);
            v51 = sub_1AF441150(&v58, *(&v59 + 1));
            a4[3] = v50;
            v52 = sub_1AF585714(a4);
            (*(*(v50 - 8) + 16))(v52, v51, v50);
            return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v58);
          }
        }

        else
        {
          *&v58 = 0;
          *(&v58 + 1) = 0xE000000000000000;
          sub_1AFDFE218();

          *&v58 = sub_1AFDFF4B8();
          *(&v58 + 1) = v53;
          MEMORY[0x1B2718AE0](0x20746F6E20736920, 0xEF656C6261646F43);
          result = sub_1AFDFE518();
          __break(1u);
        }
      }
    }
  }

  return result;
}

void *sub_1AF6074C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for TextureDescriptor(0);
  v8 = v7;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(a2, *(a2 + 24));
    sub_1AF6086F8();
    result = sub_1AFDFEAD8();
    if (!v3)
    {
      *a3 = v51;
      a3[2] = v52;
      a3[3] = v8;
    }

    return result;
  }

  type metadata accessor for simd_quatf(0);
  v11 = v10;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(a2, *(a2 + 24));
    sub_1AF5E122C();
    result = sub_1AFDFEAD8();
    if (!v3)
    {
      v46 = v51;
      a3[3] = v11;
      result = swift_allocObject();
      *a3 = result;
      *(result + 1) = v46;
    }

    return result;
  }

  type metadata accessor for simd_float2x2(0);
  v13 = v12;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(a2, *(a2 + 24));
    sub_1AF6086A4();
    result = sub_1AFDFEAD8();
    if (!v3)
    {
      v14 = v51;
      a3[3] = v13;
      *a3 = v14;
    }

    return result;
  }

  type metadata accessor for simd_float2x3(0);
  v16 = v15;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(a2, *(a2 + 24));
    sub_1AF608650();
    goto LABEL_14;
  }

  type metadata accessor for simd_float2x4(0);
  v16 = v17;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(a2, *(a2 + 24));
    sub_1AF6085FC();
LABEL_14:
    result = sub_1AFDFEAD8();
    if (!v3)
    {
      v43 = v52;
      v47 = v51;
      a3[3] = v16;
      result = swift_allocObject();
      *a3 = result;
      *(result + 1) = v47;
      *(result + 2) = v43;
    }

    return result;
  }

  type metadata accessor for simd_float3x2(0);
  v19 = v18;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(a2, *(a2 + 24));
    sub_1AF6085A8();
    result = sub_1AFDFEAD8();
    if (!v3)
    {
      v20 = v51;
      v21 = v52;
      a3[3] = v19;
      *a3 = v20;
      a3[2] = v21;
    }

    return result;
  }

  type metadata accessor for simd_float3x3(0);
  v23 = v22;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(a2, *(a2 + 24));
    sub_1AF608554();
    goto LABEL_24;
  }

  type metadata accessor for simd_float3x4(0);
  v23 = v24;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(a2, *(a2 + 24));
    sub_1AF608500();
LABEL_24:
    result = sub_1AFDFEAD8();
    if (!v3)
    {
      v44 = v52;
      v48 = v51;
      v41 = v53;
      a3[3] = v23;
      result = swift_allocObject();
      *a3 = result;
      *(result + 1) = v48;
      *(result + 2) = v44;
      *(result + 3) = v41;
    }

    return result;
  }

  type metadata accessor for simd_float4x2(0);
  v26 = v25;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(a2, *(a2 + 24));
    sub_1AF6084AC();
    result = sub_1AFDFEAD8();
    if (!v3)
    {
      v49 = v51;
      v27 = v52;
      a3[3] = v26;
      result = swift_allocObject();
      *a3 = result;
      *(result + 1) = v49;
      *(result + 2) = v27;
    }
  }

  else
  {
    type metadata accessor for simd_float4x3(0);
    v29 = v28;
    if (swift_dynamicCastMetatype())
    {
      sub_1AF448018(a2, *(a2 + 24));
      sub_1AF608458();
      result = sub_1AFDFEAD8();
      if (!v3)
      {
        a3[3] = v29;
        result = swift_allocObject();
        *a3 = result;
        v30 = v52;
        *(result + 1) = v51;
        *(result + 2) = v30;
        v31 = v54;
        *(result + 3) = v53;
        *(result + 4) = v31;
      }
    }

    else
    {
      type metadata accessor for simd_float4x4(0);
      v33 = v32;
      if (swift_dynamicCastMetatype())
      {
        sub_1AF448018(a2, *(a2 + 24));
        sub_1AF48D6F8();
        result = sub_1AFDFEAD8();
        if (!v3)
        {
          v45 = v52;
          v50 = v51;
          v40 = v54;
          v42 = v53;
          a3[3] = v33;
          result = swift_allocObject();
          *a3 = result;
          *(result + 1) = v50;
          *(result + 2) = v45;
          *(result + 3) = v42;
          *(result + 4) = v40;
        }
      }

      else
      {
        v34 = sub_1AF608380(a1, a1, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
        if (v34)
        {
          *(&v52 + 1) = v34;
          *&v53 = v35;
          *(&v53 + 1) = v36;
          sub_1AF585714(&v51);
          sub_1AF75869C(a2);
          if (v3)
          {
            return sub_1AF608408(&v51);
          }

          else
          {
            v37 = *(&v52 + 1);
            v38 = sub_1AF441150(&v51, *(&v52 + 1));
            a3[3] = v37;
            v39 = sub_1AF585714(a3);
            (*(*(v37 - 8) + 16))(v39, v38, v37);
            return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v51);
          }
        }

        else
        {
          sub_1AFDFE218();
          sub_1AFDFF4B8();

          MEMORY[0x1B2718AE0](0x20746F6E20736920, 0xEF656C6261646F43);
          result = sub_1AFDFE518();
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF607BC4(void *a1)
{
  v3 = v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF0D5A54(v1, v8);
  sub_1AF441150(v8, v9);
  DynamicType = swift_getDynamicType();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  v8[0] = DynamicType;
  sub_1AF448018(v11, v11[3]);
  sub_1AF60874C();
  sub_1AFDFEC38();
  if (!v2)
  {
    sub_1AF607CEC(v3, v8);
    v5 = v9;
    v6 = v10;
    sub_1AF441150(v8, v9);
    sub_1AF758548(v11, v5, v6);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
}

uint64_t sub_1AF607CEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF0D5A54(a1, v34);
  type metadata accessor for TextureDescriptor(0);
  if (swift_dynamicCast())
  {
    *(a2 + 24) = &type metadata for TextureDescriptorCoder;
    *(a2 + 32) = sub_1AF6086F8();
    *(a2 + 40) = sub_1AF608A58();
    *a2 = v30;
    *(a2 + 16) = v31;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
  }

  type metadata accessor for simd_quatf(0);
  if (swift_dynamicCast())
  {
    v24 = v30;
    *(a2 + 24) = &type metadata for QuaternionFCoder;
    *(a2 + 32) = sub_1AF5E122C();
    *(a2 + 40) = sub_1AF5E1280();
    v4 = swift_allocObject();
    *a2 = v4;
    *(v4 + 16) = v24;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
  }

  type metadata accessor for simd_float2x2(0);
  if (swift_dynamicCast())
  {
    v5 = v30;
    *(a2 + 24) = &type metadata for Float2x2Coder;
    *(a2 + 32) = sub_1AF6086A4();
    *(a2 + 40) = sub_1AF608A04();
    *a2 = v5;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
  }

  type metadata accessor for simd_float2x3(0);
  if (swift_dynamicCast())
  {
    v21 = v31;
    v25 = v30;
    *(a2 + 24) = &type metadata for Float2x3Coder;
    *(a2 + 32) = sub_1AF608650();
    v6 = sub_1AF6089B0();
LABEL_11:
    *(a2 + 40) = v6;
    v7 = swift_allocObject();
    *a2 = v7;
    *(v7 + 16) = v25;
    *(v7 + 32) = v21;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
  }

  type metadata accessor for simd_float2x4(0);
  if (swift_dynamicCast())
  {
    v21 = v31;
    v25 = v30;
    *(a2 + 24) = &type metadata for Float2x4Coder;
    *(a2 + 32) = sub_1AF6085FC();
    v6 = sub_1AF60895C();
    goto LABEL_11;
  }

  type metadata accessor for simd_float3x2(0);
  if (swift_dynamicCast())
  {
    v26 = v30;
    v9 = v31;
    *(a2 + 24) = &type metadata for Float3x2Coder;
    *(a2 + 32) = sub_1AF6085A8();
    *(a2 + 40) = sub_1AF608908();
    *a2 = v26;
    *(a2 + 16) = v9;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
  }

  type metadata accessor for simd_float3x3(0);
  if (swift_dynamicCast())
  {
    v22 = v31;
    v27 = v30;
    v19 = v32;
    *(a2 + 24) = &type metadata for Float3x3Coder;
    *(a2 + 32) = sub_1AF608554();
    v10 = sub_1AF6088B4();
LABEL_19:
    *(a2 + 40) = v10;
    v11 = swift_allocObject();
    *a2 = v11;
    v11[1] = v27;
    v11[2] = v22;
    v11[3] = v19;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
  }

  type metadata accessor for simd_float3x4(0);
  if (swift_dynamicCast())
  {
    v22 = v31;
    v27 = v30;
    v19 = v32;
    *(a2 + 24) = &type metadata for Float3x4Coder;
    *(a2 + 32) = sub_1AF608500();
    v10 = sub_1AF608860();
    goto LABEL_19;
  }

  type metadata accessor for simd_float4x2(0);
  if (swift_dynamicCast())
  {
    v28 = v30;
    v12 = v31;
    *(a2 + 24) = &type metadata for Float4x2Coder;
    *(a2 + 32) = sub_1AF6084AC();
    *(a2 + 40) = sub_1AF60880C();
    v13 = swift_allocObject();
    *a2 = v13;
    *(v13 + 16) = v28;
    *(v13 + 32) = v12;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
  }

  type metadata accessor for simd_float4x3(0);
  if (swift_dynamicCast())
  {
    *(a2 + 24) = &type metadata for Float4x3Coder;
    *(a2 + 32) = sub_1AF608458();
    *(a2 + 40) = sub_1AF6087B8();
    v14 = swift_allocObject();
    *a2 = v14;
    v15 = v31;
    v14[1] = v30;
    v14[2] = v15;
    v16 = v33;
    v14[3] = v32;
    v14[4] = v16;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
  }

  type metadata accessor for simd_float4x4(0);
  if (swift_dynamicCast())
  {
    v23 = v31;
    v29 = v30;
    v18 = v33;
    v20 = v32;
    *(a2 + 24) = &type metadata for Float4x4Coder;
    *(a2 + 32) = sub_1AF48D6F8();
    *(a2 + 40) = sub_1AF48D74C();
    v17 = swift_allocObject();
    *a2 = v17;
    v17[1] = v29;
    v17[2] = v23;
    v17[3] = v20;
    v17[4] = v18;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
  }

  sub_1AF445F28();
  if (swift_dynamicCast())
  {
    sub_1AF6087A0(&v30, a2);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
  }

  *&v30 = 0;
  *(&v30 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFEDD8();
  MEMORY[0x1B2718AE0](0x20746F6E20736920, 0xEF656C6261646F43);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF60827C(uint64_t a1)
{
  if (!qword_1ED722F80)
  {
    sub_1AF6082D8();
    v1 = sub_1AFDFE818();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED722F80);
    }
  }
}

unint64_t sub_1AF6082D8()
{
  result = qword_1ED7238C0;
  if (!qword_1ED7238C0)
  {
    result = swift_getWitnessTable(byte_1AFE69CB4, &type metadata for AnyCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7238C0);
  }

  return result;
}

unint64_t sub_1AF60832C()
{
  result = qword_1ED7253F8;
  if (!qword_1ED7253F8)
  {
    result = swift_getWitnessTable(byte_1AFE6C1D4, &type metadata for TypeCoder_pre2035, v0, v1);
    atomic_store(result, &qword_1ED7253F8);
  }

  return result;
}

uint64_t sub_1AF608380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF608408(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1B271DEA0);
  }

  return result;
}

unint64_t sub_1AF608458()
{
  result = qword_1EB63CA00;
  if (!qword_1EB63CA00)
  {
    result = swift_getWitnessTable(byte_1AFE6FFDC, &type metadata for Float4x3Coder, v0, v1);
    atomic_store(result, &qword_1EB63CA00);
  }

  return result;
}

unint64_t sub_1AF6084AC()
{
  result = qword_1EB63CA08;
  if (!qword_1EB63CA08)
  {
    result = swift_getWitnessTable(aT_8, &type metadata for Float4x2Coder, v0, v1);
    atomic_store(result, &qword_1EB63CA08);
  }

  return result;
}

unint64_t sub_1AF608500()
{
  result = qword_1EB63CA10;
  if (!qword_1EB63CA10)
  {
    result = swift_getWitnessTable(byte_1AFE6FF8C, &type metadata for Float3x4Coder, v0, v1);
    atomic_store(result, &qword_1EB63CA10);
  }

  return result;
}

unint64_t sub_1AF608554()
{
  result = qword_1EB63CA18;
  if (!qword_1EB63CA18)
  {
    result = swift_getWitnessTable(asc_1AFE6FF64, &type metadata for Float3x3Coder, v0, v1);
    atomic_store(result, &qword_1EB63CA18);
  }

  return result;
}

unint64_t sub_1AF6085A8()
{
  result = qword_1EB63CA20;
  if (!qword_1EB63CA20)
  {
    result = swift_getWitnessTable(aM_21, &type metadata for Float3x2Coder, v0, v1);
    atomic_store(result, &qword_1EB63CA20);
  }

  return result;
}

unint64_t sub_1AF6085FC()
{
  result = qword_1EB63CA28;
  if (!qword_1EB63CA28)
  {
    result = swift_getWitnessTable(aU_23, &type metadata for Float2x4Coder, v0, v1);
    atomic_store(result, &qword_1EB63CA28);
  }

  return result;
}

unint64_t sub_1AF608650()
{
  result = qword_1EB63CA30;
  if (!qword_1EB63CA30)
  {
    result = swift_getWitnessTable(byte_1AFE6FEEC, &type metadata for Float2x3Coder, v0, v1);
    atomic_store(result, &qword_1EB63CA30);
  }

  return result;
}

unint64_t sub_1AF6086A4()
{
  result = qword_1EB63CA38;
  if (!qword_1EB63CA38)
  {
    result = swift_getWitnessTable(aO_1, &type metadata for Float2x2Coder, v0, v1);
    atomic_store(result, &qword_1EB63CA38);
  }

  return result;
}

unint64_t sub_1AF6086F8()
{
  result = qword_1EB632CB0;
  if (!qword_1EB632CB0)
  {
    result = swift_getWitnessTable(byte_1AFE8346C, &type metadata for TextureDescriptorCoder, v0, v1);
    atomic_store(result, &qword_1EB632CB0);
  }

  return result;
}

unint64_t sub_1AF60874C()
{
  result = qword_1EB63CA40;
  if (!qword_1EB63CA40)
  {
    result = swift_getWitnessTable(byte_1AFE6C1AC, &type metadata for TypeCoder_pre2035, v0, v1);
    atomic_store(result, &qword_1EB63CA40);
  }

  return result;
}

_OWORD *sub_1AF6087A0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_1AF6087B8()
{
  result = qword_1EB63CA48;
  if (!qword_1EB63CA48)
  {
    result = swift_getWitnessTable(byte_1AFE6FE74, &type metadata for Float4x3Coder, v0, v1);
    atomic_store(result, &qword_1EB63CA48);
  }

  return result;
}

unint64_t sub_1AF60880C()
{
  result = qword_1EB63DFF0;
  if (!qword_1EB63DFF0)
  {
    result = swift_getWitnessTable(asc_1AFE6FE4C, &type metadata for Float4x2Coder, v0, v1);
    atomic_store(result, &qword_1EB63DFF0);
  }

  return result;
}

unint64_t sub_1AF608860()
{
  result = qword_1EB63CA50;
  if (!qword_1EB63CA50)
  {
    result = swift_getWitnessTable(a5_14, &type metadata for Float3x4Coder, v0, v1);
    atomic_store(result, &qword_1EB63CA50);
  }

  return result;
}

unint64_t sub_1AF6088B4()
{
  result = qword_1EB63E000;
  if (!qword_1EB63E000)
  {
    result = swift_getWitnessTable(asc_1AFE6FDFC, &type metadata for Float3x3Coder, v0, v1);
    atomic_store(result, &qword_1EB63E000);
  }

  return result;
}

unint64_t sub_1AF608908()
{
  result = qword_1EB63CA58;
  if (!qword_1EB63CA58)
  {
    result = swift_getWitnessTable(byte_1AFE6FDD4, &type metadata for Float3x2Coder, v0, v1);
    atomic_store(result, &qword_1EB63CA58);
  }

  return result;
}

unint64_t sub_1AF60895C()
{
  result = qword_1EB63E010;
  if (!qword_1EB63E010)
  {
    result = swift_getWitnessTable(byte_1AFE6FDAC, &type metadata for Float2x4Coder, v0, v1);
    atomic_store(result, &qword_1EB63E010);
  }

  return result;
}

unint64_t sub_1AF6089B0()
{
  result = qword_1EB63CA60;
  if (!qword_1EB63CA60)
  {
    result = swift_getWitnessTable(aS_13, &type metadata for Float2x3Coder, v0, v1);
    atomic_store(result, &qword_1EB63CA60);
  }

  return result;
}

unint64_t sub_1AF608A04()
{
  result = qword_1EB63E020;
  if (!qword_1EB63E020)
  {
    result = swift_getWitnessTable(byte_1AFE6FD5C, &type metadata for Float2x2Coder, v0, v1);
    atomic_store(result, &qword_1EB63E020);
  }

  return result;
}

unint64_t sub_1AF608A58()
{
  result = qword_1EB6402C0;
  if (!qword_1EB6402C0)
  {
    result = swift_getWitnessTable(byte_1AFE83444, &type metadata for TextureDescriptorCoder, v0, v1);
    atomic_store(result, &qword_1EB6402C0);
  }

  return result;
}

uint64_t sub_1AF608ABC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701869940;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701869940;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1AF608B58()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF608BD0(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF608C34(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF608CA8@<X0>(char *a2@<X8>)
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

void sub_1AF608D08(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (!*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF608D3C()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1AF608D6C@<X0>(char *a3@<X8>)
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

uint64_t sub_1AF608DD0(uint64_t a1)
{
  v2 = sub_1AF6082D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF608E0C(uint64_t a1)
{
  v2 = sub_1AF6082D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1AF608E4C()
{
  result = qword_1EB63CA68;
  if (!qword_1EB63CA68)
  {
    result = swift_getWitnessTable(byte_1AFE69C8C, &type metadata for AnyCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63CA68);
  }

  return result;
}

unint64_t sub_1AF608EA4()
{
  result = qword_1ED7238B0;
  if (!qword_1ED7238B0)
  {
    result = swift_getWitnessTable(asc_1AFE69BC4, &type metadata for AnyCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7238B0);
  }

  return result;
}

unint64_t sub_1AF608EFC()
{
  result = qword_1ED7238B8;
  if (!qword_1ED7238B8)
  {
    result = swift_getWitnessTable(aE_23, &type metadata for AnyCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7238B8);
  }

  return result;
}

unint64_t sub_1AF608F54()
{
  result = qword_1ED722EB0;
  if (!qword_1ED722EB0)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E76B0], MEMORY[0x1E69E7668], v0, v1);
    atomic_store(result, &qword_1ED722EB0);
  }

  return result;
}

void *sub_1AF608FA8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__s = a1;
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      v4 = strlen(__s);
      v5 = __s;
      return MurmurHash2(v5, v4, 0);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v4 = strlen(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
      v5 = (v3 + 32);
      return MurmurHash2(v5, v4, 0);
    }
  }

  result = sub_1AFDFE1E8();
  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1AF609060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1AFDFF428();
  v6 = v5;
  if (v4 == sub_1AFDFF428() && v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

void *sub_1AF60910C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v3)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    sub_1AF441150(v10, v10[3]);
    v7 = sub_1AFDFD538();
    v9 = a3;
    swift_getWitnessTable(MEMORY[0x1E69E6330], v7, &v9);
    sub_1AFDFEE88();
    v6 = v10[6];
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v6;
}

uint64_t sub_1AF609224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  v10[6] = a2;
  sub_1AF448018(v10, v10[3]);
  v7 = sub_1AFDFD538();
  v9 = a5;
  swift_getWitnessTable(MEMORY[0x1E69E6300], v7, &v9);
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
}

void *sub_1AF609308@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1AF60910C(a1, *(a2 + 16), *(a2 + 24));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1AF609368(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (*(v3 + 16) && (v4 = sub_1AF0D3F10(a2), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 24 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF6093F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[1] = a1;
  v25[2] = a2;
  v26 = a5;
  v7 = sub_1AFDFDD58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - v9;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _KeyBox(0, a3, a4, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - v18;
  sub_1AFDFF438();
  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v20 = 1;
    v21 = v26;
  }

  else
  {
    v22 = *(v11 + 32);
    v22(v14, v10, a3);
    v22(v19, v14, a3);
    v23 = v26;
    (*(v17 + 32))(v26, v19, v16);
    v20 = 0;
    v21 = v23;
  }

  return (*(v17 + 56))(v21, v20, 1, v16);
}

uint64_t sub_1AF609684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a1;
  v25 = a4;
  v6 = sub_1AFDFDD58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _KeyBox(0, a2, a3, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  sub_1AFDFF458();
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v19 = 1;
    v20 = v25;
  }

  else
  {
    v21 = *(v10 + 32);
    v21(v13, v9, a2);
    v21(v18, v13, a2);
    v22 = v25;
    (*(v16 + 32))(v25, v18, v15);
    v19 = 0;
    v20 = v22;
  }

  return (*(v16 + 56))(v20, v19, 1, v15);
}

uint64_t sub_1AF609954(uint64_t a1, uint64_t a2)
{
  sub_1AFDFF428();
  sub_1AFDFD038();
}

uint64_t sub_1AF6099A8(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF609954(v3, a1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF609A30(uint64_t a1, uint64_t a2)
{
  sub_1AFDFF288();
  sub_1AF609954(v4, a2);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF609A74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(a9_17, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AF609AC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(a9_17, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void *sub_1AF609B28(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFF448();
  if ((v3 & 1) == 0)
  {
    return v2;
  }

  v4 = sub_1AFDFF428();
  v6 = sub_1AF608FA8(v4, v5);

  return v6;
}

uint64_t sub_1AF609B94@<X0>(char *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = strlen(a1);
  result = MurmurHash2(a1, v4, 0);
  *a2 = result;
  return result;
}

uint64_t sub_1AF609BE0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_1AF609C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AFDFEA08();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1AF609C5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AFDFF2A8();
  if (v2 != 1)
  {
    MEMORY[0x1B271ACB0](v1);
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF609CE8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1AFDFD038();
  if (v3 == 1)
  {
    return sub_1AFDFF2A8();
  }

  sub_1AFDFF2A8();
  return MEMORY[0x1B271ACB0](v2);
}

uint64_t sub_1AF609D4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AFDFF2A8();
  if (v3 != 1)
  {
    MEMORY[0x1B271ACB0](v2);
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF609DD4(uint64_t a1)
{
  v2 = sub_1AF60A364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF609E10(uint64_t a1)
{
  v2 = sub_1AF60A364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF609E4C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AFDFEE28();
  }
}

uint64_t sub_1AF609E7C(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  if (v1 <= 3)
  {
    if (v1 == 1)
    {
      return 0;
    }

    if (v1 == 2)
    {
      return 1;
    }
  }

  else
  {
    switch(v1)
    {
      case 4:
        return 2;
      case 8:
        return 3;
      case 16:
        return 4;
    }
  }

  sub_1AF60A3B8();
  swift_allocError();
  *v3 = v1;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

float sub_1AF609F38@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_1AF609F44(uint64_t a1)
{
  result = sub_1AF609F6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF609F6C()
{
  result = qword_1ED7232B8;
  if (!qword_1ED7232B8)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E6450], MEMORY[0x1E69E6448], v0, v1);
    atomic_store(result, &qword_1ED7232B8);
  }

  return result;
}

unint64_t sub_1AF609FC4()
{
  result = qword_1ED721E48;
  if (!qword_1ED721E48)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7718], MEMORY[0x1E69E76D8], v0, v1);
    atomic_store(result, &qword_1ED721E48);
  }

  return result;
}

double sub_1AF60A018@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_1AF60A024(uint64_t a1)
{
  result = sub_1AF60A04C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF60A04C()
{
  result = qword_1EB63CA70;
  if (!qword_1EB63CA70)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E63B8], MEMORY[0x1E69E63B0], v0, v1);
    atomic_store(result, &qword_1EB63CA70);
  }

  return result;
}

uint64_t initializeWithCopy for _BinaryKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for _BinaryKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  return a1;
}

__n128 initializeWithTake for TextureArgument(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for _BinaryKey(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for _BinaryKey(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for _BinaryKey(uint64_t result, int a2, int a3)
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

unint64_t sub_1AF60A260()
{
  result = qword_1EB63CA78;
  if (!qword_1EB63CA78)
  {
    result = swift_getWitnessTable(byte_1AFE69DA0, &type metadata for _BinaryKey, v0, v1);
    atomic_store(result, &qword_1EB63CA78);
  }

  return result;
}

unint64_t sub_1AF60A2B8()
{
  result = qword_1ED72DBE0;
  if (!qword_1ED72DBE0)
  {
    result = swift_getWitnessTable(asc_1AFE69DC8, &type metadata for _BinaryKey, v0, v1);
    atomic_store(result, &qword_1ED72DBE0);
  }

  return result;
}

unint64_t sub_1AF60A310()
{
  result = qword_1ED72DBE8;
  if (!qword_1ED72DBE8)
  {
    result = swift_getWitnessTable(aA_37, &type metadata for _BinaryKey, v0, v1);
    atomic_store(result, &qword_1ED72DBE8);
  }

  return result;
}

unint64_t sub_1AF60A364()
{
  result = qword_1ED72DBF0;
  if (!qword_1ED72DBF0)
  {
    result = swift_getWitnessTable(aA_36, &type metadata for _BinaryKey, v0, v1);
    atomic_store(result, &qword_1ED72DBF0);
  }

  return result;
}

unint64_t sub_1AF60A3B8()
{
  result = qword_1ED722B90;
  if (!qword_1ED722B90)
  {
    result = swift_getWitnessTable(aQ_46, &type metadata for BinaryCoding.Err, v0, v1);
    atomic_store(result, &qword_1ED722B90);
  }

  return result;
}

uint64_t sub_1AF60A424(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 < 2 || a3 == 3)
  {
  }

  return v3;
}

uint64_t sub_1AF60A45C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 < 2 || a3 == 3)
  {
  }

  return v3;
}

uint64_t sub_1AF60A484(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AF60A424(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for BinaryCoding.Err(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AF60A424(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1AF60A45C(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for BinaryCoding.Err(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1AF60A45C(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for BinaryCoding.Err(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BinaryCoding.Err(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AF60A5FC(uint64_t a1)
{
  if (*(a1 + 16) <= 5u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1AF60A614(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1AF60A63C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1AF60A740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16, v16 + *(*(v15 - 8) + 64), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1AF60A834(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 40);
  v9 = *(v5 + 48);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = type metadata accessor for _BinaryDecoder.DataStream();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = 0;
  v22 = v13;
  v23 = &off_1F2531128;
  *&v21 = v14;
  type metadata accessor for _BinaryDecoder();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 48) = MEMORY[0x1E69E7CC0];
  *(v15 + 64) = 0;
  *(v15 + 112) = v16;
  sub_1AF0FBA54(&v21, v15 + 72);
  *(v15 + 56) = v9;
  *(v15 + 16) = v10;
  *(v15 + 24) = v11;
  *(v15 + 32) = v12;
  *(v15 + 40) = v8;
  sub_1AF43C9F0(a2, a3);

  sub_1AF0FBD8C(v12, v8);
  sub_1AF60AB90(a1, a4, a5);
}

uint64_t sub_1AF60A960()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_1AF0FB8EC(v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF60A9E4()
{
  if (*(v0 + 64))
  {
    return *(v0 + 64);
  }

  result = v0;
  *(v0 + 64) = v0;
  return result;
}

uint64_t sub_1AF60AA00(uint64_t a1)
{
  v2 = v1;
  v4 = v1[7];
  v22 = v4;
  v5 = v1[4];
  v6 = v1[5];

  if (v5)
  {
    v5(&v22);
    v4 = v22;
  }

  v7 = type metadata accessor for _BinaryDecoder();
  sub_1AF441194(a1, v19);
  v8 = v2[2];
  v9 = *(v2 + 24);
  v10 = v20;
  v11 = v21;
  v12 = sub_1AF448018(v19, v20);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  v17 = sub_1AF61537C(v15, v4, v8, v9, v5, v6, v7, v10, v11);

  sub_1AF0FBD8C(v5, v6);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v19);
  return v17;
}

uint64_t sub_1AF60AB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v29 = a3;
  v9 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1AF441194(v4 + 72, v25);
  v10 = v27;
  v11 = v28;
  sub_1AF441150(v25, v27);
  v12 = sub_1AFDFD048();
  v13 = (*(v11 + 16))(v12, v10, v11);
  v15 = v14;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
  if (!v5)
  {
    sub_1AF43C9F0(v13, v15);
    v25[0] = sub_1AF61657C(v13, v15);
    sub_1AFDFCF58();
    sub_1AF615B4C(0, &unk_1ED726C20, MEMORY[0x1E69E62F8]);
    sub_1AF615BA0();
    v17 = sub_1AFDFCF28();
    v19 = v18;

    if (v19)
    {
      v20 = v17 == 0x30316E6962786676 && v19 == 0xE800000000000000;
      if (v20 || (sub_1AFDFEE28() & 1) != 0)
      {

        sub_1AF441194(v6 + 72, &v26);
        v21 = sub_1AF60A9E4();
        v22 = *(v6 + 48);
        v25[0] = v21;
        v25[1] = v22;

        sub_1AF611FA0(v21, &v26, v21, a1, &type metadata for _BinaryDecoder.SingleValueStore, a2, &off_1F2531380, v29);
        sub_1AF6151E8(v25);
        return sub_1AF439ED8(v13, v15);
      }

      sub_1AF60A3B8();
      swift_allocError();
      *v23 = v17;
      *(v23 + 8) = v19;
      v24 = 1;
    }

    else
    {
      sub_1AF60A3B8();
      swift_allocError();
      *v23 = 0;
      *(v23 + 8) = 0;
      v24 = 6;
    }

    *(v23 + 16) = v24;
    swift_willThrow();
    return sub_1AF439ED8(v13, v15);
  }

  return result;
}

uint64_t sub_1AF60AE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _BinaryDecoder.KeyedStore(0, a2, a3, a4);
  sub_1AF441194(v4 + 72, v18);
  swift_allocObject();
  result = sub_1AF60D600(v18, v8, v9, v10);
  if (!v5)
  {
    v12 = result;

    MEMORY[0x1B2718E00](v13);
    if (*((*(v4 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18[6] = *((*(v4 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();
    v14 = sub_1AF60A9E4();
    v15 = *(v4 + 48);
    v18[0] = v14;
    v18[1] = v15;
    v18[2] = v12;
    v17 = type metadata accessor for _BinaryKeyedDecodingContainer(0, a2, a3, v16);

    swift_getWitnessTable(aU_24, v17);
    sub_1AFDFE828();
  }

  return result;
}

uint64_t sub_1AF60AFE0@<X0>(void *a1@<X8>)
{
  v3 = v1;
  sub_1AF441194((v1 + 9), v11);
  v5 = sub_1AF60A9E4();
  type metadata accessor for _BinaryDecoder.UnkeyedStore();
  swift_allocObject();
  result = sub_1AF60F3C8(v11, v5);
  if (!v2)
  {
    v7 = result;

    MEMORY[0x1B2718E00](v8);
    if (*((v3[14] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[14] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();
    v9 = v3[8];
    v10 = v3[6];
    a1[3] = &type metadata for _BinaryUnkeyedDecodingContainer;
    a1[4] = sub_1AF615AE0();

    *a1 = v10;
    a1[1] = v9;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1AF60B0F8(uint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v6 = v4;
  sub_1AF441194(v4 + 72, v21);
  sub_1AF6156AC((v4 + 72), a1);
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  v11 = (*(v10 + 56))(v9, v10);
  v13 = v12;
  a2();
  if (v5)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
  }

  if ((v13 & 1) == 0)
  {
    v15 = a1[3];
    v16 = a1[4];
    sub_1AF441150(a1, v15);
    v17 = (*(v16 + 56))(v15, v16);
    if ((v18 & 1) == 0 && v11 == v17)
    {
      v19 = a1[3];
      v20 = a1[4];
      sub_1AF441150(a1, v19);
      sub_1AF60B28C(v19, v20);
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((v6 + 72));
  return sub_1AF0FBA54(v21, v6 + 72);
}

uint64_t sub_1AF60B28C(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 40))();
  if (!v3)
  {
    v7 = (result >> 5) ^ 4;
    if (v7 <= 3)
    {
      if ((v7 - 2) >= 2)
      {
        if (v7 == 1)
        {
          result = sub_1AF60E1BC(0xA0u, a1, a2);
          v9 = result + 1;
          while (--v9)
          {
            result = sub_1AF60B28C(a1, a2);
          }
        }

        else
        {
          result = sub_1AFDFE518();
          __break(1u);
        }
      }

      else
      {
        v10[3] = a1;
        v10[4] = a2;
        v8 = sub_1AF585714(v10);
        (*(*(a1 - 8) + 16))(v8, v2, a1);
        sub_1AF615A08(0, qword_1ED72BA28, type metadata accessor for _BinaryDecoder.KeyedStore);
        swift_allocObject();
        sub_1AF60CD30(v10);
      }
    }

    else if (v7 > 5)
    {
      if (v7 == 6)
      {
        return sub_1AF6117D4(a1, a2);
      }

      else
      {
        sub_1AF610200(a1, a2);
      }
    }

    else if (v7 == 4)
    {
      return (*(a2 + 48))(a1, a2);
    }

    else
    {
      return sub_1AF6113C8(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1AF60B488()
{
  v1 = v0[4];
  v2 = v0[5];

  sub_1AF0FB8EC(v1, v2);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 9);

  return swift_deallocClassInstance();
}

void *sub_1AF60B584@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_1AF441194(v3 + 72, v8);
  v4 = sub_1AF60A9E4();
  v5 = *(v3 + 48);
  a1[3] = &type metadata for _BinarySingleValueDecodingContainer;
  a1[4] = sub_1AF60FFA8();
  v6 = swift_allocObject();
  *a1 = v6;
  sub_1AF60FFFC(v8, v6 + 32);
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  return sub_1AF61005C(v8);
}

uint64_t sub_1AF60B630(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2 || v2 >= *(v4 + 24))
    {
LABEL_10:
      sub_1AF60A3B8();
      swift_allocError();
      *v9 = xmmword_1AFE22A20;
      *(v9 + 16) = 6;
      return swift_willThrow();
    }
  }

  else
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = v4 >> 32;
    }

    if (v2 >= v6)
    {
      goto LABEL_10;
    }
  }

  if (v5)
  {
    v7 = sub_1AFDFBDB8();
    return *(v7 + v2 - sub_1AFDFBDE8());
  }

  else
  {
    v10 = v1[2];
    v11 = BYTE2(v4);
    v12 = BYTE3(v4);
    v13 = BYTE4(v4);
    v14 = BYTE5(v4);
    v15 = BYTE6(v4);
    v16 = HIBYTE(v4);
    v17 = v3;
    v18 = BYTE2(v3);
    v19 = BYTE3(v3);
    v20 = BYTE4(v3);
    v21 = BYTE5(v3);
    return *(&v10 + v2);
  }
}

uint64_t sub_1AF60B7E8(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2 || v2 >= *(v4 + 24))
    {
LABEL_10:
      sub_1AF60A3B8();
      swift_allocError();
      *v9 = xmmword_1AFE22A20;
      *(v9 + 16) = 6;
      return swift_willThrow();
    }
  }

  else
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = v4 >> 32;
    }

    if (v2 >= v6)
    {
      goto LABEL_10;
    }
  }

  if (v5)
  {
    v7 = sub_1AFDFBDB8();
    result = *(v7 + v2 - sub_1AFDFBDE8());
  }

  else
  {
    v10 = v1[2];
    v11 = BYTE2(v4);
    v12 = BYTE3(v4);
    v13 = BYTE4(v4);
    v14 = BYTE5(v4);
    v15 = BYTE6(v4);
    v16 = HIBYTE(v4);
    v17 = v3;
    v18 = BYTE2(v3);
    v19 = BYTE3(v3);
    v20 = BYTE4(v3);
    v21 = BYTE5(v3);
    result = *(&v10 + v2);
  }

  ++v1[4];
  return result;
}

uint64_t sub_1AF60B9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  v5 = sub_1AF585714(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(v5, v3, a1);
}

uint64_t sub_1AF60BA1C(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  sub_1AF441150(v2, v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

uint64_t sub_1AF60BAA0(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_1AF441150(v1, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_1AF60BB0C(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_1AF441150(v1, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t sub_1AF60BB78(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_1AF441150(v1, v3);
  (*(v4 + 64))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  sub_1AF441150(v8, v9);
  (*(v6 + 24))(a1, v5, v6);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
}

uint64_t sub_1AF60BC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[3];
  v6 = v3[4];
  sub_1AF441150(v3, v5);
  return (*(v6 + 8))(a3, v5, v6);
}

uint64_t sub_1AF60BCF4()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1AF441150(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_1AF60BD4C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1AF441150(v0, v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t sub_1AF60BDA8(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = v4 >> 32;
    }

    if (v2 >= v6)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (v5)
    {
      v7 = a1;
      v8 = sub_1AFDFBDB8();
      v9 = *(v8 + v2 - sub_1AFDFBDE8());
      if (v7)
      {
        return v9;
      }
    }

    else
    {
      v12 = v1[2];
      v13 = BYTE2(v4);
      v14 = BYTE3(v4);
      v15 = BYTE4(v4);
      v16 = BYTE5(v4);
      v17 = BYTE6(v4);
      v18 = HIBYTE(v4);
      v19 = v3;
      v20 = BYTE2(v3);
      v21 = BYTE3(v3);
      v22 = BYTE4(v3);
      v23 = BYTE5(v3);
      v9 = *(&v12 + v2);
      if (a1)
      {
        return v9;
      }
    }

    ++v1[4];
    return v9;
  }

  if (v5 == 2 && v2 < *(v4 + 24))
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1AF60A3B8();
  swift_allocError();
  *v10 = xmmword_1AFE22A20;
  *(v10 + 16) = 6;
  swift_willThrow();
  return v9;
}

uint64_t sub_1AF60BF5C(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4] + a1;
  v5 = v1[2];
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      if (*(v5 + 24) < v4)
      {
        goto LABEL_11;
      }
    }

    else if (v4 > 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    result = sub_1AFDFC1F8();
    v1[4] += a1;
    return result;
  }

  if (v6)
  {
    v7 = v5 >> 32;
  }

  else
  {
    v7 = BYTE6(v3);
  }

  if (v7 >= v4)
  {
    goto LABEL_6;
  }

LABEL_11:
  sub_1AF60A3B8();
  swift_allocError();
  *v9 = xmmword_1AFE22A20;
  *(v9 + 16) = 6;
  return swift_willThrow();
}

uint64_t sub_1AF60C028@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4] + a1;
  v6 = v2[2];
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 == 2)
    {
      if (*(v6 + 24) < v5)
      {
        goto LABEL_11;
      }
    }

    else if (v5 > 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v9 = type metadata accessor for _BinaryDecoder.DataStream();
    v10 = swift_allocObject();
    v10[2] = v6;
    v10[3] = v4;
    v10[4] = v5;
    a2[3] = v9;
    a2[4] = &off_1F2531128;
    *a2 = v10;
    return sub_1AF43C9F0(v6, v4);
  }

  if (v7)
  {
    v8 = v6 >> 32;
  }

  else
  {
    v8 = BYTE6(v4);
  }

  if (v8 >= v5)
  {
    goto LABEL_6;
  }

LABEL_11:
  sub_1AF60A3B8();
  swift_allocError();
  *v12 = xmmword_1AFE22A20;
  *(v12 + 16) = 6;
  return swift_willThrow();
}

uint64_t sub_1AF60C130(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = v1[3];
  v2 = v1[4];
  v4 = v2 + 8;
  v5 = v1[2];
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      if (*(v5 + 24) - *(v5 + 16) >= v4)
      {
        goto LABEL_8;
      }
    }

    else if (v4 <= 0)
    {
      memset(v15, 0, 14);
      result = *(v15 + v2);
      goto LABEL_22;
    }

LABEL_13:
    sub_1AF60A3B8();
    swift_allocError();
    *v11 = xmmword_1AFE22A20;
    *(v11 + 16) = 6;
    return swift_willThrow();
  }

  v7 = BYTE6(v3);
  if (v6)
  {
    v7 = (0xFFFFFFFF00000001 * v5) >> 32;
  }

  if (v7 < v4)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      LOWORD(v15[0]) = v1[2];
      BYTE2(v15[0]) = BYTE2(v5);
      BYTE3(v15[0]) = BYTE3(v5);
      BYTE4(v15[0]) = BYTE4(v5);
      BYTE5(v15[0]) = BYTE5(v5);
      BYTE6(v15[0]) = BYTE6(v5);
      HIBYTE(v15[0]) = HIBYTE(v5);
      LOWORD(v15[1]) = v3;
      BYTE2(v15[1]) = BYTE2(v3);
      BYTE3(v15[1]) = BYTE3(v3);
      BYTE4(v15[1]) = BYTE4(v3);
      BYTE5(v15[1]) = BYTE5(v3);
      result = *(v15 + v2);
      goto LABEL_22;
    }

    v8 = v1;
    v9 = sub_1AFDFBDB8();
    if (v9)
    {
      v10 = v9 - sub_1AFDFBDE8() + v5;
      goto LABEL_16;
    }

LABEL_19:
    sub_1AFDFBDD8();
    goto LABEL_20;
  }

  v8 = v1;
  v13 = *(v5 + 16);
  v14 = sub_1AFDFBDB8();
  if (!v14)
  {
    goto LABEL_19;
  }

  v10 = v13 - sub_1AFDFBDE8() + v14;
LABEL_16:
  sub_1AFDFBDD8();
  if (!v10)
  {
LABEL_20:
    result = 0;
    v1 = v8;
    goto LABEL_22;
  }

  v1 = v8;
  result = *(v10 + v8[4]);
LABEL_22:
  v1[4] += 8;
  return result;
}

uint64_t sub_1AF60C350(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (v2 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        memset(v14, 0, 14);
        result = *(v14 + v2);
        goto LABEL_22;
      }

LABEL_13:
      sub_1AF60A3B8();
      swift_allocError();
      *v10 = xmmword_1AFE22A20;
      *(v10 + 16) = 6;
      return swift_willThrow();
    }

    v6 = *(v4 + 24) - *(v4 + 16);
  }

  else
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = (0xFFFFFFFF00000001 * v4) >> 32;
    }
  }

  if (v6 < (v2 + 1))
  {
    goto LABEL_13;
  }

  if (v5 != 2)
  {
    if (v5 != 1)
    {
      LOWORD(v14[0]) = v1[2];
      BYTE2(v14[0]) = BYTE2(v4);
      BYTE3(v14[0]) = BYTE3(v4);
      BYTE4(v14[0]) = BYTE4(v4);
      BYTE5(v14[0]) = BYTE5(v4);
      BYTE6(v14[0]) = BYTE6(v4);
      HIBYTE(v14[0]) = HIBYTE(v4);
      LOWORD(v14[1]) = v3;
      BYTE2(v14[1]) = BYTE2(v3);
      BYTE3(v14[1]) = BYTE3(v3);
      BYTE4(v14[1]) = BYTE4(v3);
      BYTE5(v14[1]) = BYTE5(v3);
      result = *(v14 + v2);
      goto LABEL_22;
    }

    v7 = v1;
    v8 = sub_1AFDFBDB8();
    if (v8)
    {
      v9 = v8 - sub_1AFDFBDE8() + v4;
      goto LABEL_16;
    }

LABEL_20:
    sub_1AFDFBDD8();
    goto LABEL_21;
  }

  v7 = v1;
  v12 = *(v4 + 16);
  v13 = sub_1AFDFBDB8();
  if (!v13)
  {
    goto LABEL_20;
  }

  v9 = v12 - sub_1AFDFBDE8() + v13;
LABEL_16:
  sub_1AFDFBDD8();
  if (!v9)
  {
LABEL_21:
    result = 0;
    v1 = v7;
    goto LABEL_22;
  }

  v1 = v7;
  result = *(v9 + v7[4]);
LABEL_22:
  ++v1[4];
  return result;
}

uint64_t sub_1AF60C56C(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = v1[3];
  v2 = v1[4];
  v4 = v2 + 2;
  v5 = v1[2];
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      if (*(v5 + 24) - *(v5 + 16) >= v4)
      {
        goto LABEL_8;
      }
    }

    else if (v4 <= 0)
    {
      memset(v15, 0, 14);
      result = *(v15 + v2);
      goto LABEL_22;
    }

LABEL_13:
    sub_1AF60A3B8();
    swift_allocError();
    *v11 = xmmword_1AFE22A20;
    *(v11 + 16) = 6;
    return swift_willThrow();
  }

  v7 = BYTE6(v3);
  if (v6)
  {
    v7 = (0xFFFFFFFF00000001 * v5) >> 32;
  }

  if (v7 < v4)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      LOWORD(v15[0]) = v1[2];
      BYTE2(v15[0]) = BYTE2(v5);
      BYTE3(v15[0]) = BYTE3(v5);
      BYTE4(v15[0]) = BYTE4(v5);
      BYTE5(v15[0]) = BYTE5(v5);
      BYTE6(v15[0]) = BYTE6(v5);
      HIBYTE(v15[0]) = HIBYTE(v5);
      LOWORD(v15[1]) = v3;
      BYTE2(v15[1]) = BYTE2(v3);
      BYTE3(v15[1]) = BYTE3(v3);
      BYTE4(v15[1]) = BYTE4(v3);
      BYTE5(v15[1]) = BYTE5(v3);
      result = *(v15 + v2);
      goto LABEL_22;
    }

    v8 = v1;
    v9 = sub_1AFDFBDB8();
    if (v9)
    {
      v10 = v9 - sub_1AFDFBDE8() + v5;
      goto LABEL_16;
    }

LABEL_19:
    sub_1AFDFBDD8();
    goto LABEL_20;
  }

  v8 = v1;
  v13 = *(v5 + 16);
  v14 = sub_1AFDFBDB8();
  if (!v14)
  {
    goto LABEL_19;
  }

  v10 = v13 - sub_1AFDFBDE8() + v14;
LABEL_16:
  sub_1AFDFBDD8();
  if (!v10)
  {
LABEL_20:
    result = 0;
    v1 = v8;
    goto LABEL_22;
  }

  v1 = v8;
  result = *(v10 + v8[4]);
LABEL_22:
  v1[4] += 2;
  return result;
}

uint64_t sub_1AF60C78C(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = v1[3];
  v2 = v1[4];
  v4 = v2 + 4;
  v5 = v1[2];
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      if (*(v5 + 24) - *(v5 + 16) >= v4)
      {
        goto LABEL_8;
      }
    }

    else if (v4 <= 0)
    {
      memset(v15, 0, 14);
      result = *(v15 + v2);
      goto LABEL_22;
    }

LABEL_13:
    sub_1AF60A3B8();
    swift_allocError();
    *v11 = xmmword_1AFE22A20;
    *(v11 + 16) = 6;
    return swift_willThrow();
  }

  v7 = BYTE6(v3);
  if (v6)
  {
    v7 = (0xFFFFFFFF00000001 * v5) >> 32;
  }

  if (v7 < v4)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      LOWORD(v15[0]) = v1[2];
      BYTE2(v15[0]) = BYTE2(v5);
      BYTE3(v15[0]) = BYTE3(v5);
      BYTE4(v15[0]) = BYTE4(v5);
      BYTE5(v15[0]) = BYTE5(v5);
      BYTE6(v15[0]) = BYTE6(v5);
      HIBYTE(v15[0]) = HIBYTE(v5);
      LOWORD(v15[1]) = v3;
      BYTE2(v15[1]) = BYTE2(v3);
      BYTE3(v15[1]) = BYTE3(v3);
      BYTE4(v15[1]) = BYTE4(v3);
      BYTE5(v15[1]) = BYTE5(v3);
      result = *(v15 + v2);
      goto LABEL_22;
    }

    v8 = v1;
    v9 = sub_1AFDFBDB8();
    if (v9)
    {
      v10 = v9 - sub_1AFDFBDE8() + v5;
      goto LABEL_16;
    }

LABEL_19:
    sub_1AFDFBDD8();
    goto LABEL_20;
  }

  v8 = v1;
  v13 = *(v5 + 16);
  v14 = sub_1AFDFBDB8();
  if (!v14)
  {
    goto LABEL_19;
  }

  v10 = v13 - sub_1AFDFBDE8() + v14;
LABEL_16:
  sub_1AFDFBDD8();
  if (!v10)
  {
LABEL_20:
    result = 0;
    v1 = v8;
    goto LABEL_22;
  }

  v1 = v8;
  result = *(v10 + v8[4]);
LABEL_22:
  v1[4] += 4;
  return result;
}

uint64_t sub_1AF60C9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = *(*(a1 - 8) + 64);
  v9 = v3[3];
  v10 = v3[4] + v8;
  v11 = v3[2];
  v12 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v12 == 2)
    {
      if (*(v11 + 24) - *(v11 + 16) < v10)
      {
        goto LABEL_10;
      }
    }

    else if (v10 > 0)
    {
      goto LABEL_10;
    }

LABEL_5:
    swift_getAssociatedConformanceWitness();
    sub_1AFDFF158();
    v15 = sub_1AFDFEDF8();
    MEMORY[0x1EEE9AC00](v15);
    *(&v20 - 6) = a1;
    *(&v20 - 5) = a2;
    *(&v20 - 4) = a3;
    *(&v20 - 3) = v3;
    *(&v20 - 2) = v8;
    result = sub_1AF8C7514(sub_1AF615604, (&v20 - 8), v16, v17);
    v3[4] += v8;
    return result;
  }

  v13 = BYTE6(v9);
  v14 = (0xFFFFFFFF00000001 * v11) >> 32;
  if (!v12)
  {
    v14 = v13;
  }

  if (v14 >= v10)
  {
    goto LABEL_5;
  }

LABEL_10:
  sub_1AF60A3B8();
  swift_allocError();
  *v19 = xmmword_1AFE22A20;
  *(v19 + 16) = 6;
  return swift_willThrow();
}

uint64_t sub_1AF60CBBC()
{
  sub_1AF439ED8(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1AF60CD30(void *a1)
{
  v3 = v1;
  v5 = a1[3];
  v6 = a1[4];
  sub_1AF441150(a1, v5);
  v7 = (*(v6 + 40))(v5, v6);
  if (v2)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  (*(v10 + 64))(v102, v9, v10);
  if ((v8 & 0xE0) != 0xC0)
  {
    if ((v8 & 0xE0) == 0xE0)
    {
      v11 = a1[3];
      v12 = a1[4];
      sub_1AF441150(a1, v11);
      v13 = sub_1AF60E1BC(0xE0u, v11, v12);
      v98 = MEMORY[0x1E69E7CC8];
      v14 = MEMORY[0x1E69E7CC0];
      if (v13)
      {
        v15 = v13;
        do
        {
          v16 = v103;
          v17 = v104;
          sub_1AF441150(v102, v103);
          v18 = sub_1AF60E964(v16, v17);
          v19 = v103;
          v20 = v104;
          sub_1AF441150(v102, v103);
          v21 = sub_1AF60E964(v19, v20);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_1AF421EB4(0, *(v14 + 2) + 1, 1, v14);
          }

          v22 = v14;
          v23 = *(v14 + 2);
          v24 = v22;
          v25 = *(v22 + 3);
          if (v23 >= v25 >> 1)
          {
            v24 = sub_1AF421EB4(v25 > 1, v23 + 1, 1, v24);
          }

          *(v24 + 2) = v23 + 1;
          v26 = &v24[16 * v23];
          v14 = v24;
          *(v26 + 4) = v18;
          *(v26 + 5) = v21;
          --v15;
        }

        while (v15);
      }

      v90 = a1;
      v92 = v3;
      sub_1AF6154B8(0);
      sub_1AFDFCC58();
      v50 = *(v14 + 2);
      if (v50)
      {
        v51 = v98;
        v52 = (v14 + 40);
        while (1)
        {
          v54 = *(v52 - 1);
          v53 = *v52;
          v55 = v103;
          v56 = v104;
          sub_1AF441150(v102, v103);
          v57 = (*(v56 + 16))(v53, v55, v56);
          v59 = v58;
          type metadata accessor for _BinaryDecoder.DataStream();
          v60 = swift_allocObject();
          v60[2] = v57;
          v60[3] = v59;
          v60[4] = 0;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v105 = v51;
          v62 = sub_1AF449CB8(v54);
          v64 = v63;
          if (v51[3] < (v51[2] + ((v63 & 1) == 0)))
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_31;
          }

          v66 = v62;
          sub_1AF849310();
          v62 = v66;
          v51 = v105;
          if (v64)
          {
LABEL_32:
            *(v51[7] + 8 * v62) = v60;

            goto LABEL_26;
          }

LABEL_25:
          v51[(v62 >> 6) + 8] |= 1 << v62;
          *(v51[6] + 8 * v62) = v54;
          *(v51[7] + 8 * v62) = v60;
          ++v51[2];
LABEL_26:
          v52 += 2;
          v98 = v51;
          if (!--v50)
          {
            goto LABEL_47;
          }
        }

        sub_1AF834F40(v51[2] + ((v63 & 1) == 0), isUniquelyReferenced_nonNull_native);
        v62 = sub_1AF449CB8(v54);
        if ((v64 & 1) != (v65 & 1))
        {
          sub_1AFDFF1A8();
          __break(1u);
          goto LABEL_50;
        }

LABEL_31:
        v51 = v105;
        if (v64)
        {
          goto LABEL_32;
        }

        goto LABEL_25;
      }

LABEL_47:

      v3 = v92;
      *(v92 + 16) = v98;
      *(v92 + 24) = 1;
      goto LABEL_49;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v47 = &unk_1F24FD768;
    *(v47 + 8) = v8 & 0xE0;
    *(v47 + 16) = 3;
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v102);
LABEL_21:
    sub_1AF615A08(0, qword_1ED72BA28, type metadata accessor for _BinaryDecoder.KeyedStore);
    swift_deallocPartialClassInstance();
    v48 = a1;
LABEL_22:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
    return v3;
  }

  v27 = a1[3];
  v28 = a1[4];
  sub_1AF441150(a1, v27);
  v29 = sub_1AF60E1BC(0xC0u, v27, v28);
  v90 = a1;
  v91 = v3;
  v105 = MEMORY[0x1E69E7CC8];
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v31 = v29;
    do
    {
      v32 = v30;
      v33 = v103;
      v34 = v104;
      sub_1AF441150(v102, v103);
      v35 = sub_1AF445B90();
      sub_1AF60E2E0(v33, &type metadata for StringCodingKeys, v34, v35, &v98);
      v36 = v98;
      v37 = v99;
      v39 = v100;
      v38 = v101;
      v40 = v103;
      v41 = v104;
      sub_1AF441150(v102, v103);
      v42 = sub_1AF60E964(v40, v41);

      v43 = v32;
      v96 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1AF423200(0, v32[2] + 1, 1, v32);
      }

      v45 = v43[2];
      v44 = v43[3];
      v30 = v43;
      if (v45 >= v44 >> 1)
      {
        v30 = sub_1AF423200(v44 > 1, v45 + 1, 1, v43);
      }

      v30[2] = v45 + 1;
      v46 = &v30[5 * v45];
      v46[4] = v36;
      *(v46 + 40) = v96;
      v46[6] = v39;
      v46[7] = v38;
      v46[8] = v42;
      --v31;
    }

    while (v31);
  }

  sub_1AF615970(0);
  sub_1AFDFCC58();
  v67 = v30[2];
  if (!v67)
  {
LABEL_48:

    v3 = v91;
    *(v91 + 16) = v105;
    *(v91 + 24) = 0;
LABEL_49:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v102);
    v48 = v90;
    goto LABEL_22;
  }

  v68 = v105;
  v69 = v30 + 8;
  while (1)
  {
    v93 = v67;
    v97 = *(v69 - 24);
    v71 = *(v69 - 1);
    v94 = *(v69 - 4);
    v95 = *(v69 - 2);
    v72 = *v69;
    v73 = v103;
    v74 = v104;
    sub_1AF441150(v102, v103);
    v75 = *(v74 + 16);

    v76 = v75(v72, v73, v74);
    v78 = v77;
    type metadata accessor for _BinaryDecoder.DataStream();
    v79 = swift_allocObject();
    v79[2] = v76;
    v79[3] = v78;
    v79[4] = 0;
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v68;
    v81 = sub_1AF41AA2C(v94, v97, v95, v71);
    v83 = v82;
    v84 = v68[2] + ((v82 & 1) == 0);
    if (v68[3] < v84)
    {
      break;
    }

    v88 = v95;
    if ((v80 & 1) == 0)
    {
      sub_1AF849198();
    }

    v89 = v93;
    v87 = v97;
    v68 = v98;
    if (v83)
    {
LABEL_46:
      *(v68[7] + 8 * v81) = v79;

      goto LABEL_38;
    }

LABEL_37:
    v68[(v81 >> 6) + 8] |= 1 << v81;
    v70 = v68[6] + 32 * v81;
    *v70 = v94;
    *(v70 + 8) = v87;
    *(v70 + 16) = v88;
    *(v70 + 24) = v71;
    *(v68[7] + 8 * v81) = v79;
    ++v68[2];
LABEL_38:
    v69 += 5;
    v105 = v68;
    v67 = v89 - 1;
    if (!v67)
    {
      goto LABEL_48;
    }
  }

  sub_1AF834C98(v84, v80);
  v85 = sub_1AF41AA2C(v94, v97, v95, v71);
  if ((v83 & 1) == (v86 & 1))
  {
    v81 = v85;
    v87 = v97;
    v88 = v95;
    v89 = v93;
    v68 = v98;
    if (v83)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

LABEL_50:
  sub_1AF615A08(0, &unk_1EB638948, type metadata accessor for _KeyBox);
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF60D600(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*v4 + 80);
  v96 = *(*v4 + 88);
  v8 = type metadata accessor for _KeyBox(255, v7, v96, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = v85 - v9;
  v95 = v7;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v85 - v12;
  v90 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v85 - v15;
  v18 = a1[3];
  v17 = a1[4];
  sub_1AF441150(a1, v18);
  v19 = v94;
  v20 = (*(v17 + 40))(v18, v17);
  v94 = v19;
  if (v19)
  {
    v22 = v96;
LABEL_11:
    type metadata accessor for _BinaryDecoder.KeyedStore(0, v95, v22, v21);
    swift_deallocPartialClassInstance();
LABEL_12:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return v5;
  }

  v23 = v20;
  v88 = a1;
  v89 = v16;
  v87 = v13;
  v91 = v4;
  v92 = v10;
  v24 = a1[3];
  v25 = a1[4];
  sub_1AF441150(a1, v24);
  (*(v25 + 64))(v99, v24, v25);
  if ((v23 & 0xE0) != 0xE0)
  {
    if ((v23 & 0xE0) == 0xC0)
    {
      v26 = v88[3];
      v27 = v88[4];
      sub_1AF441150(v88, v26);
      v28 = v94;
      v29 = sub_1AF60E1BC(0xC0u, v26, v27);
      v5 = v91;
      if (v28)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v99);
        a1 = v88;
        v22 = v96;
        goto LABEL_11;
      }

      v36 = v29;
      v37 = type metadata accessor for _BinaryDecoder.DataStream();
      v85[1] = swift_getWitnessTable(byte_1AFE6A020, v8);
      v85[2] = v37;
      v38 = sub_1AFDFCBC8();
      v102 = v38;
      v98 = sub_1AFDFCBD8();
      v86 = v36;
      if (v36)
      {
        v85[0] = v38;
        v39 = v89;
        v40 = (v90 + 16);
        v94 = (v90 + 8);
        v41 = v36;
        v42 = v95;
        v43 = v87;
        do
        {
          v44 = v100;
          v45 = v101;
          sub_1AF441150(v99, v100);
          sub_1AF60E2E0(v44, v42, v45, v96, v43);
          sub_1AF6093C0(v43, v42, v39);
          v46 = v100;
          v47 = v101;
          sub_1AF441150(v99, v100);
          v48 = sub_1AF60E964(v46, v47);
          v49 = *(TupleTypeMetadata2 + 48);
          (*v40)(v92, v89, v8);
          *&v92[v49] = v48;
          v39 = v89;
          sub_1AFDFD538();
          sub_1AFDFD4E8();
          (*v94)(v39, v8);
          --v41;
        }

        while (v41);
      }

      else
      {
        v42 = v95;
      }

      sub_1AFDFCCB8();
      v79 = sub_1AFDFCC58();
      v97 = v98;
      MEMORY[0x1EEE9AC00](v79);
      v80 = v96;
      v85[-4] = v42;
      v85[-3] = v80;
      v85[-2] = &v102;
      v85[-1] = v99;
      MEMORY[0x1EEE9AC00](v81);
      v85[-4] = v42;
      v85[-3] = v82;
      v85[-2] = sub_1AF615520;
      v85[-1] = v83;
      v84 = sub_1AFDFD538();
      swift_getWitnessTable(MEMORY[0x1E69E6328], v84);
      sub_1AFDFD268();
      a1 = v88;

      v5 = v91;
      *(v91 + 16) = v102;
      *(v5 + 24) = 0;
LABEL_39:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v99);
      goto LABEL_12;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v34 = &unk_1F24FDD98;
    *(v34 + 8) = v23 & 0xE0;
    *(v34 + 16) = 3;
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v99);
    v5 = v91;
    a1 = v88;
LABEL_10:
    v22 = v96;
    goto LABEL_11;
  }

  a1 = v88;
  v30 = v88[3];
  v31 = v88[4];
  sub_1AF441150(v88, v30);
  v32 = v94;
  v33 = sub_1AF60E1BC(0xE0u, v30, v31);
  if (v32)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v99);
    v5 = v91;
    goto LABEL_10;
  }

  v102 = MEMORY[0x1E69E7CC8];
  v50 = MEMORY[0x1E69E7CC0];
  if (v33)
  {
    v51 = v33;
    do
    {
      v52 = v100;
      v53 = v101;
      sub_1AF441150(v99, v100);
      v54 = sub_1AF60E964(v52, v53);
      v55 = v100;
      v56 = v101;
      sub_1AF441150(v99, v100);
      v57 = sub_1AF60E964(v55, v56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1AF421EB4(0, *(v50 + 2) + 1, 1, v50);
      }

      v59 = *(v50 + 2);
      v58 = *(v50 + 3);
      if (v59 >= v58 >> 1)
      {
        v50 = sub_1AF421EB4(v58 > 1, v59 + 1, 1, v50);
      }

      *(v50 + 2) = v59 + 1;
      v60 = &v50[16 * v59];
      *(v60 + 4) = v54;
      *(v60 + 5) = v57;
      --v51;
    }

    while (v51);
  }

  sub_1AF6154B8(0);
  sub_1AFDFCC58();
  v61 = v50;
  v62 = *(v50 + 2);
  v94 = v61;
  if (!v62)
  {
LABEL_36:

    v5 = v91;
    *(v91 + 16) = v102;
    *(v5 + 24) = 1;
    a1 = v88;
    goto LABEL_39;
  }

  v63 = v102;
  v64 = (v61 + 40);
  while (1)
  {
    v65 = *(v64 - 1);
    v66 = *v64;
    v67 = v100;
    v68 = v101;
    sub_1AF441150(v99, v100);
    v69 = (*(v68 + 16))(v66, v67, v68);
    v71 = v70;
    type metadata accessor for _BinaryDecoder.DataStream();
    v72 = swift_allocObject();
    v72[2] = v69;
    v72[3] = v71;
    v72[4] = 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v63;
    v74 = sub_1AF449CB8(v65);
    v76 = v75;
    if (v63[3] < (v63[2] + ((v75 & 1) == 0)))
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_32;
    }

    v78 = v74;
    sub_1AF849310();
    v74 = v78;
    v63 = v98;
    if (v76)
    {
LABEL_33:
      *(v63[7] + 8 * v74) = v72;

      goto LABEL_27;
    }

LABEL_26:
    v63[(v74 >> 6) + 8] |= 1 << v74;
    *(v63[6] + 8 * v74) = v65;
    *(v63[7] + 8 * v74) = v72;
    ++v63[2];
LABEL_27:
    v64 += 2;
    v102 = v63;
    if (!--v62)
    {
      goto LABEL_36;
    }
  }

  sub_1AF834F40(v63[2] + ((v75 & 1) == 0), isUniquelyReferenced_nonNull_native);
  v74 = sub_1AF449CB8(v65);
  if ((v76 & 1) == (v77 & 1))
  {
LABEL_32:
    v63 = v98;
    if (v76)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF60DF74(unsigned __int8 a1)
{
  v4 = v1[3];
  v5 = v1[4];
  sub_1AF441150(v1, v4);
  result = (*(v5 + 8))(1, v4, v5);
  if (!v2)
  {
    if ((result & 0xE0) == a1)
    {
      v7 = result;
      v8 = v1[3];
      v9 = v1[4];
      sub_1AF441150(v1, v8);
      (*(v9 + 8))(0, v8, v9);
      result = v7 & 0x1F;
      if (result == 31)
      {
        return sub_1AF60E660();
      }
    }

    else
    {
      v10 = result & 0xE0;
      sub_1AF615B4C(0, &qword_1ED726920, MEMORY[0x1E69E6F90]);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1AFE431C0;
      *(v11 + 32) = a1;
      sub_1AF60A3B8();
      swift_allocError();
      *v12 = v11;
      *(v12 + 8) = v10;
      *(v12 + 16) = 3;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1AF60E0D8(uint64_t a1)
{
  v2 = a1;
  result = sub_1AF60B630(a1);
  if (!v1)
  {
    if ((result & 0xE0) == v2)
    {
      v4 = result;
      sub_1AF60B7E8(result);
      result = v4 & 0x1F;
      if (result == 31)
      {
        return sub_1AF60E884(result);
      }
    }

    else
    {
      v5 = result & 0xE0;
      sub_1AF615B4C(0, &qword_1ED726920, MEMORY[0x1E69E6F90]);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1AFE431C0;
      *(v6 + 32) = v2;
      sub_1AF60A3B8();
      swift_allocError();
      *v7 = v6;
      *(v7 + 8) = v5;
      *(v7 + 16) = 3;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1AF60E1BC(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 40))(a2, a3);
  if (!v3)
  {
    if ((result & 0xE0) == a1)
    {
      v8 = result;
      (*(a3 + 48))(a2, a3);
      result = v8 & 0x1F;
      if (result == 31)
      {
        return sub_1AF60E964(a2, a3);
      }
    }

    else
    {
      v9 = result & 0xE0;
      sub_1AF615B4C(0, &qword_1ED726920, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1AFE431C0;
      *(v10 + 32) = a1;
      sub_1AF60A3B8();
      swift_allocError();
      *v11 = v10;
      *(v11 + 8) = v9;
      *(v11 + 16) = 3;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1AF60E2E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v31[0] = a5;
  v31[1] = a4;
  v9 = sub_1AFDFDD58();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  result = (*(a3 + 40))(a1, a3, v14);
  if (!v5)
  {
    if ((result & 0xE0) == 0x20)
    {
      v24 = v10;
      v25 = sub_1AF60E964(a1, a3);
      sub_1AFDFF458();
      v21 = *(a2 - 8);
      if ((*(v21 + 48))(v12, 1, a2) == 1)
      {
        (*(v24 + 8))(v12, v9);
        v32 = v25;
        v26 = sub_1AFDFEA08();
        v28 = v27;
        sub_1AF60A3B8();
        swift_allocError();
        *v29 = v26;
        *(v29 + 8) = v28;
        *(v29 + 16) = 2;
        return swift_willThrow();
      }

      v16 = v12;
    }

    else
    {
      if ((result & 0xE0) != 0x60)
      {
        v30 = result & 0xE0;
        sub_1AF60A3B8();
        swift_allocError();
        *v22 = &unk_1F24FD740;
        *(v22 + 8) = v30;
        v23 = 3;
        goto LABEL_9;
      }

      v18 = sub_1AF610200(a1, a3);
      v20 = v19;

      sub_1AFDFF438();
      v21 = *(a2 - 8);
      if ((*(v21 + 48))(v16, 1, a2) == 1)
      {
        (*(v10 + 8))(v16, v9);
        sub_1AF60A3B8();
        swift_allocError();
        *v22 = v18;
        *(v22 + 8) = v20;
        v23 = 2;
LABEL_9:
        *(v22 + 16) = v23;
        return swift_willThrow();
      }
    }

    return (*(v21 + 32))(v31[0], v16, a2);
  }

  return result;
}

void *sub_1AF60E660()
{
  v2 = v0;
  v3 = v0[3];
  v4 = v0[4];
  v5 = sub_1AF441150(v0, v3);
  v6 = (*(v4 + 8))(0, v3, v4);
  if (!v1)
  {
    if ((v6 & 0xE0) != 0x20)
    {
      v5 = (v6 & 0xE0);
      sub_1AF60A3B8();
      swift_allocError();
      *v9 = &unk_1F24FD930;
      *(v9 + 8) = v5;
      *(v9 + 16) = 3;
      goto LABEL_10;
    }

    v5 = (v6 & 0xF);
    if ((v6 & 0x10) == 0)
    {
      return v5;
    }

    if ((v6 & 0xF) != 0)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v7 = v2[3];
          v8 = v2[4];
          sub_1AF441150(v2, v7);
          (*(v8 + 32))(&v16 + 3, MEMORY[0x1E69E7668], MEMORY[0x1E69E76C0], v7, v8);
          return bswap32(*(&v16 + 3));
        }

        sub_1AF60A3B8();
        swift_allocError();
        *v15 = v5;
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
LABEL_10:
        swift_willThrow();
        return v5;
      }

      v11 = v2[3];
      v12 = v2[4];
      sub_1AF441150(v2, v11);
      (*(v12 + 32))(&v16 + 1, MEMORY[0x1E69E75F8], MEMORY[0x1E69E7650], v11, v12);
      return (bswap32(*(&v16 + 1)) >> 16);
    }

    else
    {
      v13 = v2[3];
      v14 = v2[4];
      sub_1AF441150(v2, v13);
      (*(v14 + 32))(&v16, MEMORY[0x1E69E7508], MEMORY[0x1E69E7550], v13, v14);
      return v16;
    }
  }

  return v5;
}

unint64_t sub_1AF60E884(uint64_t a1)
{
  v3 = sub_1AF60B7E8(a1);
  if (v2)
  {
    return v1;
  }

  if ((v3 & 0xE0) != 0x20)
  {
    v5 = v3 & 0xE0;
    v6 = 3;
    v1 = &unk_1F24FF810;
LABEL_9:
    sub_1AF60A3B8();
    swift_allocError();
    *v7 = v1;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;
    swift_willThrow();
    return v1;
  }

  v1 = (v3 & 0xF);
  if ((v3 & 0x10) != 0)
  {
    if ((v3 & 0xF) == 0)
    {
      return sub_1AF60C350(v3);
    }

    if (v1 == 1)
    {
      return bswap32(sub_1AF60C56C(v3)) >> 16;
    }

    if (v1 == 2)
    {
      return bswap32(sub_1AF60C78C(v3));
    }

    v5 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  return v1;
}

uint64_t sub_1AF60E964(uint64_t a1, uint64_t a2)
{
  v6 = (*(a2 + 48))();
  if (!v2)
  {
    if ((v6 & 0xE0) != 0x20)
    {
      v7 = v6 & 0xE0;
      sub_1AF60A3B8();
      swift_allocError();
      *v8 = &unk_1F24F7C28;
      *(v8 + 8) = v7;
      *(v8 + 16) = 3;
      goto LABEL_10;
    }

    v3 = v6 & 0xF;
    if ((v6 & 0x10) == 0)
    {
      return v3;
    }

    if (v3 == 2)
    {
      (*(a2 + 32))(&v11 + 3, MEMORY[0x1E69E7668], MEMORY[0x1E69E76C0], a1, a2);
      return bswap32(*(&v11 + 3));
    }

    else
    {
      if (v3 != 1)
      {
        if ((v6 & 0xF) == 0)
        {
          (*(a2 + 32))(&v11, MEMORY[0x1E69E7508], MEMORY[0x1E69E7550], a1, a2);
          return v11;
        }

        sub_1AF60A3B8();
        swift_allocError();
        *v10 = v3;
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
LABEL_10:
        swift_willThrow();
        return v3;
      }

      (*(a2 + 32))(&v11 + 1, MEMORY[0x1E69E75F8], MEMORY[0x1E69E7650], a1, a2);
      return bswap32(*(&v11 + 1)) >> 16;
    }
  }

  return v3;
}

uint64_t sub_1AF60EB10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for _KeyBox(0, a5, a6, a4);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - v13;
  (*(v11 + 16))(v23 - v13, a1, v10, v12);
  v15 = a4[3];
  v16 = a4[4];
  sub_1AF441150(a4, v15);
  v17 = (*(v16 + 16))(a2, v15, v16);
  if (v6)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v20 = v17;
  v21 = v18;
  type metadata accessor for _BinaryDecoder.DataStream();
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = 0;
  v23[1] = v22;
  swift_getWitnessTable(byte_1AFE6A020, v10);
  sub_1AFDFCCB8();
  return sub_1AFDFCCD8();
}

uint64_t sub_1AF60ECD0(uint64_t a1)
{
  v23 = a1;
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v22 - v4;
  v7 = *(v6 + 88);
  v9 = type metadata accessor for _KeyBox(0, v2, v7, v8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = *(v1 + 16);
  if (*(v1 + 24))
  {
    v15 = sub_1AF609B28(v2, v7);
    if (*(v14 + 16))
    {
      sub_1AF449CB8(v15);
      if (v16)
      {
      }
    }
  }

  else
  {
    (*(v3 + 16))(v5, v23, v2, v11);
    sub_1AF6093C0(v5, v2, v13);
    type metadata accessor for _BinaryDecoder.DataStream();
    swift_getWitnessTable(byte_1AFE6A020, v9);
    sub_1AFDFCCC8();
    (*(v10 + 8))(v13, v9);
    result = v24;
    if (v24)
    {
      return result;
    }
  }

  v18 = sub_1AFDFF428();
  v20 = v19;
  sub_1AF60A3B8();
  swift_allocError();
  *v21 = v18;
  *(v21 + 8) = v20;
  *(v21 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_1AF60EF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (v4[3])
  {
    return sub_1AFDFD478();
  }

  v7 = v4[2];
  v9 = *(v5 + 80);
  v8 = *(v5 + 88);
  v10 = type metadata accessor for _KeyBox(0, v9, v8, a4);
  type metadata accessor for _BinaryDecoder.DataStream();
  WitnessTable = swift_getWitnessTable(byte_1AFE6A020, v10);
  v16[5] = v7;
  MEMORY[0x1EEE9AC00](WitnessTable);
  v16[2] = v9;
  v16[3] = v8;
  v12 = sub_1AFDFCC68();

  v13 = swift_getWitnessTable(MEMORY[0x1E69E5D98], v12);
  v15 = sub_1AF628B24(sub_1AF615460, v16, v12, v9, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);

  return v15;
}

uint64_t sub_1AF60F0D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 24))
  {
    v3 = sub_1AF609B28(*(*v1 + 80), *(*v1 + 88));
    v4 = 0;
    v5 = 1 << *(v2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v2 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = v4;
LABEL_10:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      if (*(*(v2 + 48) + ((v9 << 9) | (8 * v10))) == v3)
      {
        v11 = 1;
        return v11 & 1;
      }
    }

    while (1)
    {
      v9 = v4 + 1;
      if (v4 + 1 >= v8)
      {
        break;
      }

      v7 = *(v2 + 72 + 8 * v4++);
      if (v7)
      {
        v4 = v9;
        goto LABEL_10;
      }
    }

    v11 = 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v12);
    v16 = type metadata accessor for _KeyBox(255, v13, v14, v15);
    type metadata accessor for _BinaryDecoder.DataStream();
    swift_getWitnessTable(byte_1AFE6A020, v16);
    v17 = sub_1AFDFCCB8();
    swift_getWitnessTable(MEMORY[0x1E69E5E50], v17);
    v11 = sub_1AFDFD278();
  }

  return v11 & 1;
}

uint64_t sub_1AF60F2E8(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _KeyBox(255, a4, a5, a4);
  type metadata accessor for _BinaryDecoder.DataStream();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48))) & 1;
}

uint64_t sub_1AF60F378()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF60F3C8(void *a1, uint64_t a2)
{
  v4 = v2;
  *(v2 + 80) = 0;
  *(v2 + 72) = a2;
  v6 = a1[3];
  v7 = a1[4];
  sub_1AF441150(a1, v6);
  (*(v7 + 64))(v22, v6, v7);
  v8 = a1[3];
  v9 = a1[4];
  sub_1AF441150(a1, v8);
  v10 = (*(v9 + 40))(v8, v9);
  if (v3)
  {
    goto LABEL_2;
  }

  if ((v10 & 0xE0) == 0xA0)
  {
    v17 = a1[3];
    v18 = a1[4];
    sub_1AF441150(a1, v17);
    v19 = sub_1AF60E1BC(0xA0u, v17, v18);
    v16 = 0;
    *(v4 + 56) = v19;
    goto LABEL_8;
  }

  if ((v10 & 0xE0) == 0x80)
  {
    v12 = a1[3];
    v13 = a1[4];
    sub_1AF441150(a1, v12);
    v14 = sub_1AF60E1BC(0x80u, v12, v13);
    *(v4 + 56) = v14;
    MEMORY[0x1EEE9AC00](v14);
    v16 = sub_1AF76CE34(v15, sub_1AF61530C);
LABEL_8:
    *(v4 + 64) = v16;
    sub_1AF0FBA54(v22, v4 + 16);
    goto LABEL_3;
  }

  v20 = v10 & 0xE0;
  sub_1AF60A3B8();
  swift_allocError();
  *v21 = &unk_1F24FDE88;
  *(v21 + 8) = v20;
  *(v21 + 16) = 3;
  swift_willThrow();
LABEL_2:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
  type metadata accessor for _BinaryDecoder.UnkeyedStore();
  swift_deallocPartialClassInstance();
LABEL_3:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v4;
}

void *sub_1AF60F5F0(void *result, void *a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v8 = result;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      *(*v8 + 8 * v9) = v10;
      v11 = a4[3];
      v12 = a4[4];
      sub_1AF441150(a4, v11);
      result = sub_1AF60E964(v11, v12);
      if (v4)
      {
        break;
      }

      ++v9;
      v10 += result;
      if (a3 == v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *a2 = a3;
  }

  return result;
}

uint64_t sub_1AF60F69C(uint64_t (*a1)(uint64_t))
{
  result = a1(v1 + 16);
  if (!v2)
  {
    ++*(v1 + 80);
  }

  return result;
}