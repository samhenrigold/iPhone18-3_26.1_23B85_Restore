char *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF16InnerCorrectionsVsAE_pTg5(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = result;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v21;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }

      v19 = a3 + v8;
      result = (v16)(&v20, &v19, &v18);
      if (v4)
      {

        return v6;
      }

      v12 = v20;
      v21 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = v20;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v15;
        v6 = v21;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 16 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_20;
      }

      if (v10 == ++v8)
      {
        goto LABEL_21;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

char *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF29OneBlockSparseInnerCorrectionVsAE_pTg5(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = result;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v7 = a3;
  v27 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v27;
    v9 = a4;
    if (a4 <= v7)
    {
      v9 = v7;
    }

    v18 = v9 - v7 + 1;
    v19 = v7;
    v17 = v5;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }

      v23 = v7 + v8;
      result = (v20)(&v24, &v23, &v22);
      if (v4)
      {

        return v6;
      }

      v11 = v24;
      v12 = v25;
      v13 = v26;
      v27 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v6 = v27;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      *(v16 + 41) = v13;
      v7 = v19;
      if (a4 < v19)
      {
        goto LABEL_20;
      }

      if (v18 == ++v8)
      {
        goto LABEL_21;
      }

      v5 = v17;
      if (v10 == v17)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field32Vs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 4 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF22SiblingLeafCorrectionsVyAG7Field32VGsAE_pTg5(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = result;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v14 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }

      v18 = a3 + v8;
      result = (v15)(&v19, &v18, &v17);
      if (v4)
      {

        return v6;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_20;
      }

      if (v14 == ++v8)
      {
        goto LABEL_21;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

char *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field32VsAE_pTg5(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = result;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v14 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }

      v18 = a3 + v8;
      result = (v15)(&v19, &v18, &v17);
      if (v4)
      {

        return v6;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 4 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_20;
      }

      if (v14 == ++v8)
      {
        goto LABEL_21;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedV16measurementShare_AI05proofG0AISg14jointRandBlindts5NeverOTg5(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v24 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v24;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v18 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v21 = a3 + v8;
      a1(&v22, &v21);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v22;
      v12 = v23;
      v24 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v17 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v11 = v17;
        v6 = v24;
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 24 * v14;
      *(v15 + 32) = v11;
      *(v15 + 48) = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v18 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field40VsAE_pTg5Tm(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t))
{
  v17 = result;
  v6 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v22 = MEMORY[0x277D84F90];
  result = a5(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v22;
    v10 = a4;
    if (a4 <= a3)
    {
      v10 = a3;
    }

    v16 = v10 - a3 + 1;
    while (v9 < v6)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_19;
      }

      v20 = a3 + v9;
      result = (v17)(&v21, &v20, &v19);
      if (v5)
      {

        return v7;
      }

      v12 = v21;
      v22 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        result = a5(v13 > 1, v14 + 1, 1);
        v7 = v22;
      }

      *(v7 + 16) = v14 + 1;
      *(v7 + 8 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_20;
      }

      if (v16 == ++v9)
      {
        goto LABEL_21;
      }

      if (v11 == v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF25OneBlockSparsePublicShareVyAG7Field32VGsAE_pTg5(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = result;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v21;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }

      v19 = a3 + v8;
      result = (v16)(&v20, &v19, &v18);
      if (v4)
      {

        return v6;
      }

      v12 = v20;
      v21 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = v20;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v15;
        v6 = v21;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 16 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_20;
      }

      if (v10 == ++v8)
      {
        goto LABEL_21;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t static EvaluatorLevelInput.makeRootCtrl(for:keptBlockCount:)(uint64_t result, size_t a2)
{
  if ((*result & 1) == 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (!a2)
      {
        return MEMORY[0x277D84F90];
      }

      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = a2;
      bzero((v9 + 32), a2);
      return v9;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = MEMORY[0x277D84F90];
  if (a2)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2, 0);
    v3 = a2;
    v4 = 0;
    result = v10;
    v5 = *(v10 + 16);
    do
    {
      v11 = result;
      v6 = *(result + 24);
      if (v5 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v5 + 1, 1);
        v3 = a2;
        result = v11;
      }

      v7 = v4++ == 0;
      *(result + 16) = v5 + 1;
      *(result + v5++ + 32) = v7;
    }

    while (v3 != v4);
  }

  return result;
}

_BYTE *specialized static EvaluatorLevelInput.makeRootInput(for:keptBlockCount:seed:)(_BYTE *result, size_t a2, uint64_t a3, unint64_t a4)
{
  if (*result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (a2)
      {
        v14 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2, 0);
        v7 = a2;
        v8 = 0;
        v9 = *(v14 + 16);
        do
        {
          v10 = *(v14 + 24);
          if (v9 >= v10 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v9 + 1, 1);
            v7 = a2;
          }

          v11 = v8++ == 0;
          *(v14 + 16) = v9 + 1;
          *(v14 + v9++ + 32) = v11;
        }

        while (v7 != v8);
      }

LABEL_12:
      outlined copy of Data._Representation(a3, a4);
      return 0;
    }

    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v13 + 16) = a2;
      bzero((v13 + 32), a2);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for EvaluatorLevelInput(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for EvaluatorLevelInput(uint64_t result, int a2, int a3)
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

int8x16_t *XofHmacSha256Aes128.nextVector(count:)(size_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v3)
  {
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v4[1].i64[0] = v3;
    bzero(&v4[2], v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    v3 = *(MEMORY[0x277D84F90] + 16);
  }

  v5 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v6 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  specialized static AES.CTR.encryptInPlace(_:using:updating:)(v4 + 2, v4[2].i64 + v3, v2 + v5, v2 + v6);
  swift_endAccess();

  return v4;
}

char *SeedStreamAES128CTR.__allocating_init(key:iv:maxBufferSize:)(uint64_t a1, uint64_t a2, size_t a3)
{
  swift_allocObject();
  v6 = specialized SeedStreamAES128CTR.init(key:iv:maxBufferSize:)(a1, a2, a3);

  return v6;
}

char *SeedStreamAES128CTR.init(key:iv:maxBufferSize:)(uint64_t a1, uint64_t a2, size_t a3)
{
  v3 = specialized SeedStreamAES128CTR.init(key:iv:maxBufferSize:)(a1, a2, a3);

  return v3;
}

char *SeedStreamAES128CTR.__allocating_init(key:)(uint64_t a1)
{
  v2 = type metadata accessor for SymmetricKey();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v6[2] = 16;
  v6[4] = 0;
  v6[5] = 0;
  swift_allocObject();
  v7 = specialized SeedStreamAES128CTR.init(key:iv:maxBufferSize:)(v5, v6, 0x100uLL);

  (*(v3 + 8))(a1, v2);
  return v7;
}

uint64_t SeedStreamAES128CTR.fillBuffer()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1[1].i64[0];
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 16) = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v4 = v1[1].u64[0];
    v5 = v2 - 1;
    if (v4 < v2 - 1)
    {
      v5 = v1[1].u64[0];
    }

    if (v5 >= 0x20)
    {
      v7 = v5 + 1;
      v8 = v7 & 0x1F;
      if ((v7 & 0x1F) == 0)
      {
        v8 = 32;
      }

      v6 = v7 - v8;
      v9 = v1 + 3;
      v10 = v6;
      do
      {
        v9[-1] = 0uLL;
        *v9 = 0uLL;
        v9 += 2;
        v10 -= 32;
      }

      while (v10);
    }

    else
    {
      v6 = 0;
    }

    while (v6 < v4)
    {
      v1[2].i8[v6++] = 0;
      if (v2 == v6)
      {
        *(v0 + 16) = v1;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_15:
  swift_beginAccess();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v1;
  if ((v11 & 1) == 0)
  {
LABEL_18:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    *(v0 + 16) = v1;
  }

  v12 = v1[1].i64[0];
  v13 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v14 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  specialized static AES.CTR.encryptInPlace(_:using:updating:)(v1 + 2, v1[2].i64 + v12, v0 + v13, v0 + v14);
  swift_endAccess();
  *(v0 + 16) = v1;
  result = swift_endAccess();
  *(v0 + 24) = 0;
  return result;
}

Swift::UInt8 __swiftcall SeedStreamAES128CTR.next()()
{
  v1 = v0[3];
  if (v1 == v0[4])
  {
    SeedStreamAES128CTR.fillBuffer()();
    v1 = v0[3];
  }

  result = swift_beginAccess();
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v0[2];
    if (v1 < *(v3 + 16))
    {
      result = *(v3 + v1 + 32);
      v0[3] = v1 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

int8x16_t *SeedStreamAES128CTR.nextBytes(count:)(size_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v2 = a1;
    if (a1)
    {
      v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v3[1].i64[0] = v2;
      bzero(&v3[2], v2);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      v2 = *(MEMORY[0x277D84F90] + 16);
    }

    v4 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v5 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)(v3 + 2, v3[2].i64 + v2, v1 + v4, v1 + v5);
    swift_endAccess();
    return v3;
  }

  return result;
}

uint64_t SeedStreamAES128CTR.deinit()
{

  v1 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v2 = type metadata accessor for SymmetricKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SeedStreamAES128CTR.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v2 = type metadata accessor for SymmetricKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:maxBufferSize:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for SymmetricKey();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream) = 0;
  if (*(a1 + 16) != 32)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v10 = v9;
  v12[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x277CC9C28]);
  SymmetricKey.init<A>(data:)();
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256();
  HMAC.init(key:)();
  if (*(a2 + 16) > 0xFFuLL)
  {
    goto LABEL_5;
  }

  LOBYTE(v12[0]) = *(a2 + 16);
  specialized _copyCollectionToContiguousArray<A>(_:)(v12, v12 + 1);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x277CC9C20]);
  HMAC.update<A>(data:)();

  specialized Array.append<A>(contentsOf:)(a3);
  HMAC.update<A>(data:)();
  swift_endAccess();

  *(v10 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_maxBufferSize) = a4;
  return v10;
}

uint64_t XofHmacSha256Aes128.init(seedBytes:domainSeparationTag:binder:maxBufferSize:)(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for SymmetricKey();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  *(v4 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream) = 0;
  if (*(a1 + 16) != 32)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v16 = a3;
  v17 = a4;
  v19[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x277CC9C28]);
  SymmetricKey.init<A>(data:)();
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256();
  HMAC.init(key:)();
  (*(v11 + 32))(v4 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac, v13, v10);
  if (a2[2] > 0xFFuLL)
  {
    goto LABEL_5;
  }

  LOBYTE(v19[0]) = a2[2];
  v18 = specialized _copyCollectionToContiguousArray<A>(_:)(v19, v19 + 1);
  swift_beginAccess();
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x277CC9C20]);
  HMAC.update<A>(data:)();

  v18 = a2;
  specialized Array.append<A>(contentsOf:)(v16);
  HMAC.update<A>(data:)();
  swift_endAccess();

  *(v4 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_maxBufferSize) = v17;
  return v4;
}

Swift::UInt8 __swiftcall XofHmacSha256Aes128.next()()
{
  if (*(v0 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {

    v1 = SeedStreamAES128CTR.next()();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall XofHmacSha256Aes128.update(_:)(Swift::OpaquePointer a1)
{
  if (*(v1 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x277CC9C20]);
    HMAC.update<A>(data:)();
    swift_endAccess();
  }
}

Swift::Void __swiftcall XofHmacSha256Aes128.finalize()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  if (*(v1 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    __break(1u);
  }

  else
  {
    v10 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v10, v2);
    HMAC.finalize()();
    (*(v3 + 8))(v5, v2);
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
    (*(v7 + 8))(v9, v6);
  }
}

size_t *closure #1 in XofHmacSha256Aes128.finalize()(size_t a1, size_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymmetricKey();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v18 = xmmword_270C48950;
  v19 = a1;
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
  SymmetricKey.init<A>(data:)();
  result = (*(v7 + 16))(v10, v12, v6);
  v14 = a2 - a1;
  if (!a1)
  {
    v14 = 0;
  }

  if (v14 < 16)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v14 < 0x20)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(16, 0);
  result = specialized Slice._copyContents(initializing:)(&v18, v15 + 4, 16, 16, 32, a1, a2);
  if (result == 16)
  {
    v16 = *(a3 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_maxBufferSize);
    type metadata accessor for SeedStreamAES128CTR(0);
    swift_allocObject();
    v17 = specialized SeedStreamAES128CTR.init(key:iv:maxBufferSize:)(v10, v15, v16);

    (*(v7 + 8))(v12, v6);
    *(a3 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream) = v17;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t XofHmacSha256Aes128.deinit()
{
  v1 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t XofHmacSha256Aes128.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ExtendableOutputFunction.update(_:) in conformance XofHmacSha256Aes128(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x277CC9C20]);
    HMAC.update<A>(data:)();
    return swift_endAccess();
  }

  return v2;
}

void protocol witness for ExtendableOutputFunction.next() in conformance XofHmacSha256Aes128()
{
  if (*(v0 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {

    SeedStreamAES128CTR.next()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t protocol witness for BatchedExtendableOutputFunction.init(seedBytes:domainSeparationTag:binder:maxBufferSize:) in conformance XofHmacSha256Aes128(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  XofHmacSha256Aes128.init(seedBytes:domainSeparationTag:binder:maxBufferSize:)(a1, a2, a3, a4);
  return v8;
}

size_t *specialized Slice._copyContents(initializing:)(size_t *result, void *__dst, int64_t a3, uint64_t a4, uint64_t a5, size_t a6, size_t a7)
{
  if (!a6)
  {
    goto LABEL_16;
  }

  v7 = a7 - a6;
  if ((a7 - a6) < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v7 < a4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7 < a5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(a4, a5 - a4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a5 < a4)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = 0;
  if (a5 != a4 && a3)
  {
    if (a5 - a4 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = a5 - a4;
    }

    v9 = result;
    v10 = a7;
    v11 = a6;
    v12 = a5;
    v13 = a4;
    memcpy(__dst, (a6 + a4), v8);
    a4 = v13;
    result = v9;
    a5 = v12;
    a6 = v11;
    a7 = v10;
  }

  v14 = a4 + v8;
  if (__OFADD__(a4, v8))
  {
    goto LABEL_25;
  }

  if (v14 <= v7)
  {
LABEL_19:
    result[3] = a7;
    result[4] = v14;
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    return v8;
  }

  __break(1u);
LABEL_16:
  if (a4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!a5)
  {
    v14 = 0;
    v8 = 0;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(uint64_t a1, uint64_t a2, char *a3)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for SymmetricKey();
  MEMORY[0x28223BE20](v6 - 8);
  type metadata accessor for XofHmacSha256Aes128(0);
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream) = 0;
  if (*(a1 + 16) != 32)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v8 = v7;
  v10[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x277CC9C28]);
  SymmetricKey.init<A>(data:)();
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256();
  HMAC.init(key:)();
  if (*(a2 + 16) > 0xFFuLL)
  {
    goto LABEL_5;
  }

  LOBYTE(v10[0]) = *(a2 + 16);
  specialized _copyCollectionToContiguousArray<A>(_:)(v10, v10 + 1);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x277CC9C20]);
  HMAC.update<A>(data:)();

  specialized Array.append<A>(contentsOf:)(a3);
  HMAC.update<A>(data:)();
  swift_endAccess();

  *(v8 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_maxBufferSize) = 256;
  return v8;
}

uint64_t _s9CryptoKit3AESO4VDAFE3CTRO5NonceV10nonceBytesAHx_tKcSlRzs5UInt8V7ElementRtzlufCSayAKG_Tt0g5Tf4g_n(uint64_t a1)
{
  __dst[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1 == 16 || v1 == 12)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    memcpy(__dst, (a1 + 32), v1);
    return __dst[0];
  }

  else
  {
    lazy protocol witness table accessor for type AESCTRError and conformance AESCTRError();
    swift_allocError();
    *v3 = 0;
    return swift_willThrow();
  }
}

char *specialized SeedStreamAES128CTR.init(key:iv:maxBufferSize:)(uint64_t a1, uint64_t a2, size_t a3)
{
  v6 = v3;
  if (SymmetricKey.bitCount.getter() != 128)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v6 + 4) = a3;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    v21 = v10;

    swift_unexpectedError();

    (*v21)(&v6[v5], v4);
    result = swift_deallocPartialClassInstance();
    __break(1u);
    return result;
  }

  if (a3)
  {
    v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v11 + 16) = a3;
    bzero((v11 + 32), a3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  *(v6 + 2) = v11;
  *(v6 + 3) = a3;
  v12 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v13 = type metadata accessor for SymmetricKey();
  v14 = (*(v13 - 8) + 16);
  (*v14)(&v6[v12], a1, v13);
  v15 = _s9CryptoKit3AESO4VDAFE3CTRO5NonceV10nonceBytesAHx_tKcSlRzs5UInt8V7ElementRtzlufCSayAKG_Tt0g5Tf4g_n(a2);
  v17 = v16;
  v18 = HIDWORD(v16);
  (*(v14 - 1))(a1, v13);
  v19 = &v6[OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce];
  *v19 = v15;
  *(v19 + 2) = v17;
  *(v19 + 3) = v18;
  return v6;
}

uint64_t type metadata completion function for SeedStreamAES128CTR(uint64_t a1)
{
  result = type metadata accessor for SymmetricKey();
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

uint64_t type metadata accessor for SeedStreamAES128CTR(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for XofHmacSha256Aes128(uint64_t a1)
{
  type metadata accessor for HMAC<SHA256>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for HMAC<SHA256>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HMAC<SHA256>)
  {
    type metadata accessor for SHA256();
    lazy protocol witness table accessor for type SHA256 and conformance SHA256();
    v1 = type metadata accessor for HMAC();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HMAC<SHA256>);
    }
  }
}

uint64_t GadgetWireInputs.numOfCalled.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t GadgetWireInputs.values.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t GadgetWireInputs.__allocating_init<A>(numOfCalls:proveRand:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a5(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);
  return v7;
}

uint64_t GadgetWireInputs.update<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(*v4 + 80);
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v49 = v38 - v8;
  v9 = *(*(a3 + 8) + 8);
  v11 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = v38 - v16;
  swift_beginAccess();
  v17 = v4[2];
  v18 = v4[3];
  if (v17 >= v18)
  {
    v55 = v4[2];
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v33;
    MEMORY[0x2743B25F0](540884512, 0xE400000000000000);
    v55 = v18;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    v35 = v53;
    v36 = v54;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v37 = v35;
    *(v37 + 8) = v36;
    *(v37 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    v51 = v15;
    v19 = AssociatedTypeWitness;
    v4[2] = v17 + 1;
    result = dispatch thunk of Collection.count.getter();
    if (result < 0)
    {
      __break(1u);
    }

    else if (result)
    {
      v21 = v9;
      v22 = 0;
      v39 = (v46 + 8);
      v38[3] = v43 + 16;
      v38[2] = v43 + 40;
      v23 = 32;
      v40 = v11;
      v41 = a3;
      v50 = a1;
      v47 = v19;
      v48 = v21;
      v52 = v4;
      do
      {
        v45 = v22 + 1;
        v46 = result;
        v44 = v4[2];
        dispatch thunk of Collection.startIndex.getter();
        v24 = v42;
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v25 = *v39;
        (*v39)(v51, v19);
        v26 = dispatch thunk of Collection.subscript.read();
        v27 = v43;
        (*(v43 + 16))(v49);
        v26(&v53, 0);
        v25(v24, v47);
        swift_beginAccess();
        type metadata accessor for Array();
        type metadata accessor for Array();
        Array._makeMutableAndUnique()();
        v28 = v52[4];
        Array._checkSubscript_mutating(_:)(v22);
        Array._makeMutableAndUnique()();
        v29 = v44;
        Array._checkSubscript_mutating(_:)(v44);
        v30 = *(v28 + v23);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v32 = v30 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v32 = v30;
        }

        (*(v27 + 40))(v32 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v29, v49, v7);
        v4 = v52;
        destructiveProjectEnumData for SeedCtrlUnadjustedError();
        v19 = v47;
        destructiveProjectEnumData for SeedCtrlUnadjustedError();
        swift_endAccess();
        v22 = v45;
        v23 += 8;
        result = v46 - 1;
      }

      while (v46 != 1);
    }
  }

  return result;
}

uint64_t GadgetWireInputs.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *specialized GadgetWireInputs.init<A>(numOfCalls:proveRand:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v61 = *v5;
  v9 = v61;
  v62 = a1;
  v10 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v60 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v46 - v14;
  v15 = v9[10];
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v58 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v5[2] = 0;
  v21 = a2;
  v53 = a3;
  v22 = v10;
  v23 = dispatch thunk of Collection.count.getter();
  v24 = v62;
  v5[3] = v62;
  result = dispatch thunk of static AdditiveArithmetic.zero.getter();
  if (__OFADD__(v24, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v26 = specialized Array.init(repeating:count:)(v20, v24 + 1, v15);
  v59 = v16;
  (*(v16 + 8))(v20, v15);
  v63[0] = v26;
  v27 = v15;
  v28 = type metadata accessor for Array();
  v29 = specialized Array.init(repeating:count:)(v63, v23, v28);

  v5[4] = v29;
  v30 = v5 + 4;
  if (v23 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v47 = v5;
  if (v23)
  {
    v31 = v23;
    v32 = 0;
    v51 = (v57 + 8);
    v52 = a4;
    v49 = v59 + 16;
    v50 = v27;
    v48 = v59 + 40;
    v33 = 32;
    v61 = v30;
    v62 = v28;
    do
    {
      v56 = v32 + 1;
      v57 = v31;
      v34 = v21;
      v35 = v22;
      dispatch thunk of Collection.startIndex.getter();
      v36 = v54;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v37 = *v51;
      v38 = AssociatedTypeWitness;
      (*v51)(v60, AssociatedTypeWitness);
      v39 = v50;
      v40 = dispatch thunk of Collection.subscript.read();
      (*(v59 + 16))(v58);
      v40(v63, 0);
      v37(v36, v38);
      swift_beginAccess();
      type metadata accessor for Array();
      Array._makeMutableAndUnique()();
      v41 = v34;
      v42 = *v61;
      Array._checkSubscript_mutating(_:)(v32);
      Array._makeMutableAndUnique()();
      Array._checkSubscript_mutating(_:)(0);
      v43 = *(v42 + v33);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v45 = v43 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v45 = v43;
      }

      (*(v59 + 40))(v45 + ((*(v59 + 80) + 32) & ~*(v59 + 80)), v58, v39);
      v21 = v41;
      v22 = v35;
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      swift_endAccess();
      v32 = v56;
      v33 += 8;
      v31 = v57 - 1;
    }

    while (v57 != 1);
  }

  return v47;
}

uint64_t Gadget.evaluate<A>(at:for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v11 = *a2 >> 62;
  if (v11)
  {
    if (v11 == 1)
    {
      return QueryGadget.evaluate<A>(at:)(a1, a6, a7);
    }

    else
    {
      return (*(a5 + 64))(a1, a4, a6, a3);
    }
  }

  else
  {
    result = GadgetWireInputs.update<A>(_:)(a1, a4, a6);
    if (!v7)
    {
      return (*(a5 + 64))(a1, a4, a6, a3, a5);
    }
  }

  return result;
}

unint64_t Gadget.wirePolynomialLength.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 40))(a1);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((result + 1) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == -1)
  {
    return 1;
  }

  else
  {
    return 1 << -__clz(result);
  }
}

uint64_t Gadget.gadgetPolynomialLength.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 32))();
  result = (*(a2 + 48))(a1, a2);
  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v4 * v6;
  if ((v4 * v6) >> 64 != (v4 * v6) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t Gadget.parameters.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = (*(a2 + 24))();
  v7 = (*(a2 + 32))(a1, a2);
  v8 = (*(a2 + 40))(a1, a2);
  v9 = (*(a2 + 48))(a1, a2);
  result = (*(a2 + 56))(a1, a2);
  *a3 = v6;
  a3[1] = v7;
  a3[2] = v8;
  a3[3] = v9;
  a3[4] = result;
  return result;
}

void __swiftcall GadgetParameters.init(arity:degree:numOfCalls:wirePolynomialLength:gadgetPolynomialLength:)(VDAF::GadgetParameters *__return_ptr retstr, Swift::Int arity, Swift::Int degree, Swift::Int numOfCalls, Swift::Int wirePolynomialLength, Swift::Int gadgetPolynomialLength)
{
  retstr->arity = arity;
  retstr->degree = degree;
  retstr->numOfCalls = numOfCalls;
  retstr->wirePolynomialLength = wirePolynomialLength;
  retstr->gadgetPolynomialLength = gadgetPolynomialLength;
}

uint64_t type metadata instantiation function for GadgetEvaluation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t get_enum_tag_for_layout_string_4VDAF16GadgetEvaluationOyxG(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t getEnumTagSinglePayload for GadgetEvaluation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GadgetEvaluation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for GadgetEvaluation(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GadgetParameters(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GadgetParameters(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of Gadget.evaluate<A>(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 64))(a1, a2, a3, a4);
}

{
  return (*(a5 + 72))(a1, a2, a3, a4);
}

uint64_t Prio3.init(flp:numOfAggregators:numOfProofs:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  if (a2 - 2 > 0xFD)
  {
    _StringGuts.grow(_:)(46);

    v21 = 0xD000000000000032;
    v22 = 0x8000000270C52C10;
    v28 = 2;
    v26 = 0xE000000000000000;
    v27 = 256;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](3943982, 0xE300000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](0, 0xE000000000000000);

    MEMORY[0x2743B25F0](0x20746F67202CLL, 0xE600000000000000);
    v25 = a2;
  }

  else
  {
    if (static Prio3.isRecommended(numOfProofs:)(a3, a4, a5, a6))
    {
      *a8 = a2;
      *(a8 + 1) = a3;
      v21 = a4;
      v22 = a5;
      v23 = a6;
      v24 = a7;
      v16 = type metadata accessor for Prio3(0, &v21);
      return (*(*(a4 - 8) + 32))(&a8[*(v16 + 56)], a1, a4);
    }

    _StringGuts.grow(_:)(48);

    v21 = 0xD00000000000003CLL;
    v22 = 0x8000000270C52C50;
    v25 = a3;
  }

  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v18);

  v19 = v22;
  lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
  swift_allocError();
  *v20 = v21;
  *(v20 + 8) = v19;
  *(v20 + 16) = 1;
  swift_willThrow();
  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t Prio3.shard<A>(_:nonce:seedBytes:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a3 + 16);
  if (v9 != 16)
  {
    _StringGuts.grow(_:)(44);

    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v31);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v143 = v9;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    v33 = 0xD000000000000030;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v34 = 0xD000000000000030;
    *(v34 + 8) = 0x8000000270C52B10;
    *(v34 + 16) = 1;
LABEL_11:
    swift_willThrow();
    return v33;
  }

  v10 = v7;
  v12 = a5;
  v136 = a2;
  v128 = a3;
  v138 = v8;
  v120 = a1;
  v15 = a5[2];
  v14 = a5[3];
  v16 = a5[5];
  v137 = a5[4];
  v132 = v16;
  v133 = v14;
  v18 = dispatch thunk of Collection.count.getter();
  if (v18 != Prio3.randomSizeForShard.getter(v12))
  {
    _StringGuts.grow(_:)(39);

    Prio3.randomSizeForShard.getter(v12);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v35);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v143 = dispatch thunk of Collection.count.getter();
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v36);

    v33 = 0xD00000000000002BLL;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v37 = 0xD00000000000002BLL;
    *(v37 + 8) = 0x8000000270C52B50;
    *(v37 + 16) = 0;
    goto LABEL_11;
  }

  v135 = v15;
  v117 = a6;
  v116 = a7;
  v19 = Prio3.splitSeedBytes<A>(_:)(a4, v12, a6, a7);
  v126 = v21;
  v22 = *(v19 + 16);
  v23 = MEMORY[0x277D84F90];
  v131 = v7;
  v118 = v20;
  v119 = v12;
  v129 = v19;
  if (v22)
  {
    v24 = v19;
    v139 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v25 = v23;
    v26 = (v24 + 32);
    v27 = v22;
    do
    {
      v28 = *v26;
      v139 = v25;
      v29 = *(v25 + 16);
      v30 = *(v25 + 24);

      if (v29 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v29 + 1, 1);
        v25 = v139;
      }

      *(v25 + 16) = v29 + 1;
      *(v25 + 8 * v29 + 32) = v28;
      v26 += 3;
      --v27;
    }

    while (v27);
    v139 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v39 = v138;
    v40 = (v129 + 40);
    v12 = v119;
    do
    {
      v41 = *v40;
      v139 = v23;
      v42 = *(v23 + 16);
      v43 = *(v23 + 24);

      if (v42 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v42 + 1, 1);
        v39 = v138;
        v23 = v139;
      }

      *(v23 + 16) = v42 + 1;
      *(v23 + 8 * v42 + 32) = v41;
      v40 += 3;
      --v22;
    }

    while (v22);
    v44 = v118;
    v10 = v131;
  }

  else
  {
    v44 = v20;
    v25 = MEMORY[0x277D84F90];
    v39 = v138;
  }

  v45 = *(v12 + 14);
  v46 = v137;
  v33 = v10 + v45;
  v47 = (*(v137 + 112))(v136, v135, v137);
  if (v39)
  {

LABEL_20:

    return v33;
  }

  v134 = v45;
  v130 = v47;
  v136 = 0;
  v48 = v12;
  v49 = *(v137 + 80);
  v138 = (v137 + 80);
  v127 = v49;
  v50 = v49(v135, v137);
  if (v50 < 1)
  {
    v138 = &v114;
    v143 = v130;
    v68 = *v131;
    MEMORY[0x28223BE20](v50);
    v128 = v105;
    v69 = v132;
    v106 = v135;
    v107 = v133;
    v108 = v117;
    v109 = v46;
    v110 = v132;
    v111 = v116;
    v112 = v25;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();

    WitnessTable = swift_getWitnessTable();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    static VDAFProtocol.splitShare<A, B>(_:into:_:)(&v143, v68, partial apply for closure #4 in Prio3.shard<A>(_:nonce:seedBytes:), v128, v48, AssociatedTypeWitness, v133, WitnessTable, AssociatedConformanceWitness, v69);

    v62 = v131;
    v73 = 0;
    goto LABEL_37;
  }

  if (v44)
  {
    v51 = v129;
    v52 = *(v129 + 16);

    v53 = 0;
    v54 = MEMORY[0x277D84F90];
LABEL_24:
    v55 = 24 * v53 + 48;
    while (v52 != v53)
    {
      if (v53 >= *(v51 + 16))
      {
        __break(1u);
        goto LABEL_55;
      }

      v56 = *(v51 + v55);
      v55 += 24;
      ++v53;
      if (v56)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
        }

        v58 = *(v54 + 2);
        v57 = *(v54 + 3);
        v59 = v54;
        if (v58 >= v57 >> 1)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v54);
        }

        *(v59 + 2) = v58 + 1;
        v54 = v59;
        *&v59[8 * v58 + 32] = v56;
        goto LABEL_24;
      }
    }

    v60 = v54;
    v139 = v119;
    v140 = swift_getAssociatedTypeWitness();
    v141 = swift_getWitnessTable();
    v142 = swift_getAssociatedConformanceWitness();
    v61 = type metadata accessor for VerificationJointRandomness(0, &v139);
    v62 = v131;
    v63 = *v131;
    v64 = swift_getWitnessTable();
    v115 = v63;
    v65 = v63;
    v33 = v61;
    v66 = static JointRandomness.jointRandPartsAndLeaderShare(commitment:leaderJointRandBlind:helperJointRandBlinds:helperMeasurementSeeds:numOfAggregators:nonce:)(v130, v118, v60, v25, v65, v128, v61, v64);
    if (v136)
    {

      swift_bridgeObjectRelease_n();
      return v33;
    }

    v74 = v66;
    v75 = v67;

    v76 = v127(v135, v137);
    v73 = VerificationJointRandomness.__allocating_init(count:numOfProofs:parts:)(v76, v131[1], v74);
    v143 = v75;
    v48 = v119;
    v68 = v115;
LABEL_37:
    v128 = v73;
    v115 = v68;
    LOBYTE(v139) = 3;
    v77 = swift_getWitnessTable();
    v78 = specialized VDAFProtocol.domainSeparationTag(usage:)(&v139, v48, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_270C44540;
    v80 = v62[1];
    if ((v80 & 0x8000000000000000) != 0)
    {
LABEL_55:
      __break(1u);
    }

    else
    {
      v114 = v77;
      v81 = v137;
      v82 = v135;
      if (v80 <= 0xFF)
      {
        *(v79 + 32) = v80;
        v127 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v126, v78, v79, v133, v132);

        v83 = swift_getAssociatedTypeWitness();
        v139 = Array.init()();
        v84 = (*(v81 + 56))(v82, v81);
        v85 = v80 * v84;
        if ((v80 * v84) >> 64 == (v80 * v84) >> 63)
        {
          v126 = type metadata accessor for Array();
          Array.reserveCapacity(_:)(v85);
          v86 = v136;
          v87 = v128;
          if (!v80)
          {
            v98 = v128;

            v99 = v137;
            v100 = v135;
            v101 = swift_getAssociatedConformanceWitness();
LABEL_49:
            v102 = MEMORY[0x28223BE20](v101);
            v106 = v100;
            v107 = v133;
            v108 = v117;
            v109 = v99;
            v110 = v132;
            v111 = v116;
            v112 = v23;
            v113 = v131;
            v103 = v119;
            static VDAFProtocol.splitShare<A, B>(_:into:_:)(&v139, v115, partial apply for closure #5 in Prio3.shard<A>(_:nonce:seedBytes:), v105, v119, v83, v133, v114, v102, v132);

            if (v98)
            {
            }

            else
            {
              v104 = 0;
            }

            Prio3PublicShare.init(jointRandParts:)(v104, v120);
            v33 = Prio3.inputSharesFrom(leaderMeasurementShare:leaderProofShare:leaderJointBlind:helperShares:)(v143, v139, v118, v129, v103);

            swift_unknownObjectRelease();

            return v33;
          }

          v88 = v80;
          v124 = *(v137 + 88);
          v125 = v137 + 88;
          v122 = *(v137 + 168);
          v123 = v137 + 168;
          while (1)
          {
            v136 = v86;
            v89 = v87 ? VerificationJointRandomness.next()() : Array.init()();
            v138 = v89;
            v90 = v135;
            v91 = v137;
            v92 = v124(v135, v137);
            v121 = swift_getAssociatedConformanceWitness();
            v93 = v83;
            v94 = static FieldElement.randomVector<A>(count:using:)(v92, v127, v83);
            v95 = v126;
            v96 = swift_getWitnessTable();
            v97 = v136;
            v122(&v139, v130, v94, v138, v95, v96, v90, v91, v114);
            v86 = v97;
            if (v97)
            {
              break;
            }

            --v88;
            v87 = v128;
            v83 = v93;
            if (!v88)
            {
              v98 = v128;
              v136 = 0;

              v99 = v137;
              v100 = v135;
              v101 = v121;
              goto LABEL_49;
            }
          }

          v33 = v143;

          swift_unknownObjectRelease();

          goto LABEL_20;
        }

        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
  }

  v139 = 0;
  v140 = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C52790);
  MEMORY[0x2743B25F0](0xD000000000000038, 0x8000000270C52B80);
  LODWORD(v113) = 0;
  v112 = 219;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Prio3.publicShare<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, size_t *a4@<X8>)
{
  v13 = a4;
  v14 = a3;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v10 + 32) + 80))(*(v10 + 16), *(v10 + 32));
  v11 = *v4;
  (*(v7 + 16))(v9, a1, a2);
  return Prio3PublicShare.init<A>(from:parameter:)(v9, v11, a2, v13, v14);
}

uint64_t Prio3.inputShare<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v28 = a1;
  v29 = a6;
  v27 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16);
  v18 = a3[2];
  v17 = a3[3];
  result = Prio3InputShareDecodableParameter.init(prio3:aggregatorID:)(v14, a2, v18, v17, a3[4], a3[5], &v30);
  if (!v6)
  {
    v25 = v31;
    v26 = v30;
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v23 = v28;
    v24 = *(v27 + 16);
    v28 = 0;
    v24(v12, v23, a4);
    v30 = v26;
    v31 = v25;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    return Prio3InputShare.init<A>(from:parameter:)(v12, &v30, v18, v17, a4);
  }

  return result;
}

void Prio3.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v99 = a4;
  v88 = a2;
  v89 = a1;
  v10 = *a6;
  v11 = *a7;
  v96 = *(a7 + 8);
  v12 = *(a7 + 16);
  v92 = v10;
  v93 = v12;
  LODWORD(v94) = *(a7 + 24);
  v13 = *(a7 + 32);
  v90 = a3;
  v91 = v13;
  v14 = *(a3 + 16);
  v15 = *(a9 + 24);
  v97 = *(a9 + 16);
  v98 = v11;
  v16 = *(a9 + 40);
  v95 = *(a9 + 32);
  v17 = *(v16 + 8);
  if (v14 != v17(v15, v16))
  {
    _StringGuts.grow(_:)(49);

    *&v101 = 0xD000000000000035;
    *(&v101 + 1) = 0x8000000270C528D0;
    v105 = v17(v15, v16);
LABEL_9:
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v105 = v14;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v27 = v101;
    *(v27 + 16) = 1;
    swift_willThrow();
    return;
  }

  v87 = v16;
  v14 = *(a5 + 16);
  if (v14 != 16)
  {
    _StringGuts.grow(_:)(45);

    *&v101 = 0xD000000000000031;
    *(&v101 + 1) = 0x8000000270C52910;
    v105 = 16;
    goto LABEL_9;
  }

  WitnessTable = swift_getWitnessTable();
  VDAFProtocol.assertValidAggregatorID(_:)(v99);
  if (!v19)
  {
    if ((v99 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v85 = WitnessTable;
      v80 = a5;
      if (v99 <= 0xFF)
      {
        v20 = *(a9 + 56);
        v21 = v95[6];

        v86 = v20;
        v22 = v21(v97, v95);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v83 = static VDAFProtocol.decodeMeasurementShare<A>(_:aggregatorID:count:)(v98, v96, v99, v22, a9, AssociatedTypeWitness, v85, AssociatedConformanceWitness);
        v82 = AssociatedConformanceWitness;
        v84 = AssociatedTypeWitness;
        v28 = v95[7];
        v79 = v95 + 7;
        v78 = v28;
        v29 = v28(v97, v95);
        v30 = v100[1];
        if ((v29 * v30) >> 64 == (v29 * v30) >> 63)
        {
          MEMORY[0x28223BE20](v29);
          v67[2] = v97;
          v67[3] = v15;
          v67[4] = v95;
          v67[5] = v87;
          v31 = v99;
          v68 = v100;
          v69 = v99;
          v32 = v93;
          v33 = v94;
          v35 = specialized static VDAFProtocol.decodeProofShare<A>(_:aggregatorID:count:makeXOF:)(v93, v94, v34, partial apply for closure #1 in Prio3.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:), v67, a9, v84, v85, v82);
          v81 = v30;
          v105 = v35;
          v106 = v36;
          v107 = v37;
          v108 = v38;
          v109 = v92;
          *&v101 = v98;
          BYTE8(v101) = v96;
          v102 = v32;
          LOBYTE(v103) = v33;
          v104 = v91;
          v77 = Prio3.jointRandFrom(aggregatorID:nonce:measurement:publicShare:inputShare:)(v31, v80, v83, &v109, &v101, a9);
          LOBYTE(v101) = 4;
          v39 = specialized VDAFProtocol.domainSeparationTag(usage:)(&v101, a9, v85);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_270C44540;
          v41 = v81;
          if ((v81 & 0x8000000000000000) == 0)
          {
            v42 = v97;
            v43 = v77;
            if (v81 <= 0xFF)
            {
              *(v40 + 32) = v81;
              *&v101 = v40;

              specialized Array.append<A>(contentsOf:)(v44);
              v85 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v90, v39, v101, v15, v87);

              v109 = Array.init()();
              v45 = v95[8];
              v46 = v100;
              v47 = v42;
              v71 = v95 + 8;
              v70 = v45;
              v48 = v45(v42);
              v49 = v41 * v48;
              if ((v41 * v48) >> 64 == (v41 * v48) >> 63)
              {
                v80 = type metadata accessor for Array();
                Array.reserveCapacity(_:)(v49);
                v50 = v96;
                if (v41)
                {
                  v75 = v95[12];
                  v74 = *v46;
                  v76 = v95 + 12;
                  v72 = v95[23];
                  v73 = v95 + 23;
                  do
                  {
                    v81 = v41;
                    if (v43)
                    {

                      v93 = VerificationJointRandomness.next()();

                      v51 = v95;
                      v52 = v84;
                    }

                    else
                    {
                      v52 = v84;
                      v93 = Array.init()();
                      v51 = v95;
                    }

                    v53 = v78(v47, v51);
                    v54 = v47;
                    v55 = type metadata accessor for ArraySlice();
                    v92 = v55;
                    v91 = swift_getWitnessTable();
                    RandomAccessCollection<>.popFirst(_:)(v53, v55, v91);
                    v56 = v103;
                    v90 = v102;
                    v94 = v101;
                    v57 = v75(v47, v51);
                    v58 = static FieldElement.randomVector<A>(count:using:)(v57, v85, v52);
                    v101 = v94;
                    v102 = v90;
                    v103 = v56;
                    v59 = v80;
                    v60 = swift_getWitnessTable();
                    v72(&v109, v83, &v101, v58, v93, v74, v59, v92, v60, v91, v54, v51);
                    swift_unknownObjectRelease();

                    v41 = v81 - 1;
                    v50 = v96;
                    v47 = v97;
                    v43 = v77;
                  }

                  while (v81 != 1);
                }

                if (v43)
                {

                  v61 = VerificationJointRandomness.seed.getter();
                }

                else
                {
                  v61 = 0;
                }

                v62 = v70(v47, v95);
                v68 = v87;
                v63 = v99;
                Prio3PrepareState.init(measurementShare:jointRandSeed:aggregatorID:verifierLength:)(v98, v50, v61, v99, v62, v89);
                v64 = v109;
                if (!v43)
                {
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v66 = 0;
                  goto LABEL_28;
                }

                v65 = v43[2];
                if (*(v65 + 16) > v63)
                {
                  v66 = *(v65 + 8 * v63 + 32);

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
LABEL_28:
                  Prio3PrepareShare.init(verifierShare:jointRandPart:)(v64, v66, v88);
                  return;
                }

                goto LABEL_35;
              }

LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              return;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_31;
  }
}

uint64_t Prio3.prepareMessageFrom(_:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v59 = a1;
  v6 = *(a2 + 32);
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v46 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v12 = *(a2 + 56);
  v13 = *(v6 + 64);
  v55 = v6 + 64;
  v56 = v12;
  v54 = v13;
  result = v13(v7, v6);
  v15 = v3[1];
  if ((result * v15) >> 64 != (result * v15) >> 63)
  {
    __break(1u);
    goto LABEL_22;
  }

  v50 = v3[1];
  v57 = v3;
  v48 = a3;
  v16 = specialized Array.init(repeating:count:)(v11, result * v15, AssociatedTypeWitness);
  v17 = (*(v9 + 8))(v11, AssociatedTypeWitness);
  v53 = &v46;
  v68 = v59;
  v63 = v16;
  MEMORY[0x28223BE20](v17);
  v18 = *(a2 + 24);
  *(&v46 - 4) = v7;
  *(&v46 - 3) = v18;
  v52 = v18;
  v19 = *(a2 + 40);
  *(&v46 - 2) = v6;
  *(&v46 - 1) = v19;
  v49 = v19;
  type metadata accessor for Prio3PrepareShare(255, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
  type metadata accessor for Array();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v21 = v58;
  result = Sequence.reduce<A>(into:_:)();
  if (v21)
  {
    return result;
  }

  v68 = v60;
  swift_getWitnessTable();
  v53 = AssociatedTypeWitness;
  v64 = ArraySlice.init<A>(_:)();
  v65 = v22;
  v66 = v23;
  v67 = v24;
  *&v60 = v59;
  MEMORY[0x28223BE20](v64);
  v25 = v52;
  *(&v46 - 4) = v7;
  *(&v46 - 3) = v25;
  v26 = v49;
  *(&v46 - 2) = v6;
  *(&v46 - 1) = v26;
  result = Sequence.compactMap<A>(_:)();
  v27 = v50;
  if (v50 < 0)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v49 = result;
  v59 = 0;
  v47 = a2;
  if (v50)
  {
    v52 = v6 + 192;
    while (1)
    {
      v28 = v54(v7, v6);
      v29 = type metadata accessor for ArraySlice();
      WitnessTable = swift_getWitnessTable();
      RandomAccessCollection<>.popFirst(_:)(v28, v29, WitnessTable);
      v58 = v60;
      v31 = v59;
      v32 = (*(v6 + 192))(&v60, v29, WitnessTable, v7, v6);
      if (v31)
      {
        swift_unknownObjectRelease();

        return swift_unknownObjectRelease();
      }

      if ((v32 & 1) == 0)
      {
        break;
      }

      v59 = 0;
      swift_unknownObjectRelease();
      if (!--v27)
      {
        goto LABEL_9;
      }
    }

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v45 = 0;
    *(v45 + 8) = 0;
    *(v45 + 16) = 4;
    swift_willThrow();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
LABEL_9:
    v33 = v47;
    v34 = *(v6 + 80);
    v35 = v57;
    v36 = v34(v7, v6);
    v37 = *(v49 + 16);
    if (v36 < 1)
    {

      if (!v37)
      {
        result = swift_unknownObjectRelease();
        *v48 = 0;
        return result;
      }

      v42 = 0x8000000270C52850;
      lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
      swift_allocError();
      v44 = 0xD00000000000003BLL;
    }

    else
    {
      if (v37 == *v35)
      {
        v38 = v49;
        v39 = swift_getWitnessTable();
        *&v60 = v33;
        *(&v60 + 1) = v53;
        v61 = v39;
        v62 = AssociatedConformanceWitness;
        type metadata accessor for VerificationJointRandomness(0, &v60);
        v40 = v34(v7, v6);
        VerificationJointRandomness.__allocating_init(count:numOfProofs:parts:)(v40, v50, v38);
        v41 = VerificationJointRandomness.seed.getter();

        result = swift_unknownObjectRelease();
        *v48 = v41;
        return result;
      }

      v42 = 0x8000000270C52890;
      lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
      swift_allocError();
      v44 = 0xD000000000000038;
    }

    *v43 = v44;
    *(v43 + 8) = v42;
    *(v43 + 16) = 1;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t Prio3.prepareState<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a5;
  v27 = a1;
  v28 = a6;
  v26 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16);
  v18 = a3[2];
  v17 = a3[3];
  result = Prio3PrepareStateDecodableParameter.init(prio3:aggregatorID:)(v14, a2, v18, v17, a3[4], a3[5], &v29);
  if (!v6)
  {
    v20 = v29;
    v21 = v30;
    v25 = v31;
    v22 = v32;
    v23 = v27;
    v24 = *(v26 + 16);
    v27 = 0;
    v24(v12, v23, a4);
    v29 = v20;
    v30 = v21;
    v31 = v25;
    v32 = v22;
    return Prio3PrepareState.init<A>(from:parameter:)(v12, &v29, v18, v17, a4);
  }

  return result;
}

uint64_t Prio3.prepareMessage<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  return Prio3PrepareMessage.init<A>(from:parameter:)(v8, a2, a3, a4);
}

uint64_t Prio3.prepareNext(state:message:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *a2;
  if (*(a1 + 16))
  {
    if (v10 && (specialized static Seed.== infix(_:_:)(*(a1 + 16), *a2) & 1) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C52790);
    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C527B0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4SeedVSgMd, &_s4VDAF4SeedVSgMR);
    v17 = String.init<A>(describing:)();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51A80);

    v18 = String.init<A>(describing:)();
    MEMORY[0x2743B25F0](v18);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v19 = v23;
    *(v19 + 16) = 1;
    return swift_willThrow();
  }

  if (v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  v21 = a4;
  v11 = *(a3 + 32);
  v12 = (*(v11 + 48))(*(a3 + 16), v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = static VDAFProtocol.decodeMeasurementShare<A>(_:aggregatorID:count:)(v7, v8, v9, v12, a3, AssociatedTypeWitness, WitnessTable, AssociatedConformanceWitness);
  if (!v4)
  {
    v20 = (*(v11 + 128))();

    result = OutputShare.init(_:)(v20, &v26);
    *v21 = v26;
    *(v21 + 8) = v22;
    *(v21 + 24) = v24;
    *(v21 + 40) = v25;
    *(v21 + 56) = 1;
  }

  return result;
}

uint64_t Prio3.unshard<A>(_:numOfMeasurements:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v28[1] = a6;
  v29 = a2;
  v10 = *(a3 + 32);
  v11 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v28 - v14;
  v31 = a5;
  v32 = a4;
  v16 = *(*(a5 + 8) + 8);
  v33 = a1;
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = v16;
    v19 = AssociatedConformanceWitness;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v20 = *(v10 + 72);
    v28[0] = *(a3 + 56);
    v21 = v20(v11, v10);
    v22 = specialized Array.init(repeating:count:)(v15, v21, AssociatedTypeWitness);
    (*(v13 + 8))(v15, AssociatedTypeWitness);
    v23 = AggregateShare.init(_:)(v22, v35);
    MEMORY[0x28223BE20](v23);
    v24 = *(a3 + 24);
    v28[-6] = v11;
    v28[-5] = v24;
    v28[-4] = v32;
    v28[-3] = v10;
    v25 = v31;
    v28[-2] = *(a3 + 40);
    v28[-1] = v25;
    type metadata accessor for AggregateShare(0, AssociatedTypeWitness, v19, v26);
    v27 = v34;
    result = Sequence.reduce<A>(into:_:)();
    if (!v27)
    {
      (*(v10 + 120))(v35[2], v29, v11, v10);
    }
  }

  return result;
}

uint64_t Prio3.randomSizeForShard.getter(uint64_t result)
{
  v2 = *v1;
  if (__OFSUB__(*v1, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*v1 + 0x3FFFFFFFFFFFFFFFLL < 0)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  v4 = (2 * (*v1 - 1)) | 1;
  result = (*(*(result + 32) + 80))(*(result + 16));
  if (result <= 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  v6 = v4 + v5;
  if (__OFADD__(v4, v5))
  {
    goto LABEL_11;
  }

  v7 = (*(*(v3 + 40) + 8))();
  result = v6 * v7;
  if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

BOOL static Prio3.isRecommended(numOfProofs:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v26[2] = *(*(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v26[1] = v26 - v8;
  v9 = swift_checkMetadataState();
  v27 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  static Prio3.identifier.getter(a2, a4, &v29);
  if (v29 != 8)
  {
    static Prio3.identifier.getter(a2, a4, &v29);
    if (v29 != 9)
    {
      return v28 == 1;
    }
  }

  if (v28 - 256 < 0xFFFFFFFFFFFFFF01)
  {
    return 0;
  }

  v15 = swift_checkMetadataState();
  static FieldElement.modulus.getter(v15, AssociatedConformanceWitness);
  v16 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v17 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v16)
  {
    if (v17 <= 32)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v18 = dispatch thunk of static Comparable.> infix(_:_:)();
      v19 = *(v27 + 8);
      v19(v12, v9);
      if (v18)
      {
        dispatch thunk of BinaryInteger._lowWord.getter();
      }

      goto LABEL_16;
    }
  }

  else if (v17 < 33)
  {
    dispatch thunk of BinaryInteger._lowWord.getter();
    v19 = *(v27 + 8);
    goto LABEL_16;
  }

  LODWORD(v29) = -1;
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v21 = dispatch thunk of static Comparable.< infix(_:_:)();
  v19 = *(v27 + 8);
  v19(v12, v9);
  if ((v21 & 1) == 0)
  {
LABEL_16:
    v19(v14, v9);
    return 0;
  }

  v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v23 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v22)
  {
    if (v23 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v24 = dispatch thunk of static Comparable.> infix(_:_:)();
      v19(v12, v9);
      if ((v24 & 1) == 0)
      {
LABEL_22:
        v19(v14, v9);
        return v28 > 1;
      }

LABEL_21:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_22;
    }
  }

  else if (v23 < 65)
  {
    goto LABEL_21;
  }

  v29 = -1;
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v25 = dispatch thunk of static Comparable.< infix(_:_:)();
  v19(v12, v9);
  v19(v14, v9);
  if (v25)
  {
    return 1;
  }

  return v28 > 1;
}

uint64_t static Prio3.identifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *(a3 + 40);
  v7(&v10, a1, a3);
  if (v10 != 2)
  {
    return (v7)(a1, a3);
  }

  type metadata accessor for XofHmacSha256Aes128(0);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v9 = 9;
  }

  else
  {
    v9 = 8;
  }

  *a4 = v9;
  return result;
}

uint64_t Prio3.splitSeedBytes<A>(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v13 + 8) + 8);
  v15 = dispatch thunk of Collection.count.getter();
  if (v15 != Prio3.randomSizeForShard.getter(a2))
  {
    __break(1u);
    goto LABEL_27;
  }

  (*(v10 + 16))(v12, a1, a3);
  v56 = ArraySlice.init<A>(_:)();
  v57 = v16;
  v58 = v17;
  v59 = v18;
  v19 = a2[3];
  v20 = a2[5];
  v21 = (*(v20 + 8))(v19, v20);
  v22 = *v5 - 1;
  if (__OFSUB__(*v5, 1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v22 < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v53 = &v51;
  v54 = 0;
  v55 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v24 = a2[2];
  *(&v51 - 10) = v24;
  *(&v51 - 9) = v19;
  v25 = a2[4];
  *(&v51 - 8) = a3;
  *(&v51 - 7) = v25;
  *(&v51 - 6) = v20;
  *(&v51 - 5) = a4;
  *(&v51 - 4) = &v56;
  *(&v51 - 3) = v23;
  *(&v51 - 2) = v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4SeedV16measurementShare_AC05proofD0ACSg14jointRandBlindtMd, &_s4VDAF4SeedV16measurementShare_AC05proofD0ACSg14jointRandBlindtMR);
  v28 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v52 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in Prio3.splitSeedBytes<A>(_:), (&v51 - 12), v26, v27, MEMORY[0x277D84A98], v28, MEMORY[0x277D84AC0], v29);
  if ((*(v25 + 80))(v24, v25) >= 1)
  {
    v30 = specialized Collection.prefix(_:)();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v56 = specialized Collection.dropFirst(_:)();
    v57 = v37;
    v58 = v38;
    v59 = v39;
    if (v36)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      v40 = swift_dynamicCastClass();
      if (!v40)
      {
        swift_unknownObjectRelease();
        v40 = MEMORY[0x277D84F90];
      }

      v41 = *(v40 + 16);

      if (__OFSUB__(v36 >> 1, v34))
      {
        __break(1u);
      }

      else if (v41 == (v36 >> 1) - v34)
      {
        v42 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v42)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      swift_unknownObjectRelease_n();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(v30, v32, v34, v36);
LABEL_14:
    swift_unknownObjectRelease();
  }

LABEL_15:
  v5 = specialized Collection.prefix(_:)();
  a2 = v43;
  v12 = v44;
  v14 = v45;
  specialized Collection.dropFirst(_:)();
  if ((v14 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_17:
    specialized _copyCollectionToContiguousArray<A>(_:)(v5, a2, v12, v14);
LABEL_24:
    v49 = v52;
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v46 = swift_dynamicCastClass();
  if (!v46)
  {
    swift_unknownObjectRelease();
    v46 = MEMORY[0x277D84F90];
  }

  v47 = *(v46 + 16);

  if (__OFSUB__(v14 >> 1, v12))
  {
    goto LABEL_29;
  }

  if (v47 != (v14 >> 1) - v12)
  {
LABEL_30:
    swift_unknownObjectRelease_n();
    goto LABEL_17;
  }

  v48 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v48)
  {
    goto LABEL_24;
  }

  v49 = v52;
LABEL_25:
  swift_unknownObjectRelease();
  return v49;
}

uint64_t closure #1 in Prio3.splitSeedBytes<A>(_:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t *a6@<X8>, uint64_t a7)
{
  v58 = a2;
  v8 = specialized Collection.prefix(_:)();
  v51 = v9;
  v11 = v10;
  v13 = v12;
  *a1 = specialized Collection.dropFirst(_:)();
  a1[1] = v14;
  a1[2] = v15;
  a1[3] = v16;
  if (v13)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v19 = swift_dynamicCastClass();
    if (!v19)
    {
      swift_unknownObjectRelease();
      v19 = MEMORY[0x277D84F90];
    }

    v20 = *(v19 + 16);

    if (__OFSUB__(v13 >> 1, v11))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 != (v13 >> 1) - v11)
    {
      goto LABEL_36;
    }

    v18 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v18)
    {
      goto LABEL_11;
    }

    v18 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v8, v51, v11, v13);
    v18 = v17;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v51 = v18;
    v21 = specialized Collection.prefix(_:)();
    v50 = v22;
    v13 = v23;
    v25 = v24;
    *a1 = specialized Collection.dropFirst(_:)();
    a1[1] = v26;
    a1[2] = v27;
    a1[3] = v28;
    if ((v25 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_13:
      specialized _copyCollectionToContiguousArray<A>(_:)(v21, v50, v13, v25);
      v30 = v29;
      v32 = a4;
      v31 = a5;
      v33 = a3;
      goto LABEL_20;
    }

    v11 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v34 = swift_dynamicCastClass();
    if (!v34)
    {
      swift_unknownObjectRelease();
      v34 = MEMORY[0x277D84F90];
    }

    v8 = *(v34 + 16);

    if (!__OFSUB__(v25 >> 1, v13))
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    swift_unknownObjectRelease_n();
  }

  if (v8 != (v25 >> 1) - v13)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_13;
  }

  v30 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v32 = a4;
  v31 = a5;
  v33 = a3;
  if (v30)
  {
    goto LABEL_21;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_20:
  swift_unknownObjectRelease();
LABEL_21:
  v57[0] = v33;
  v57[1] = v32;
  v57[2] = v31;
  v57[3] = a7;
  v35 = type metadata accessor for Prio3(0, v57);
  result = (*(*(v35 + 32) + 80))(*(v35 + 16));
  if (result < 1)
  {
    v47 = 0;
    goto LABEL_33;
  }

  v58 = v30;
  v37 = specialized Collection.prefix(_:)();
  v56 = v38;
  v40 = v39;
  v42 = v41;
  *a1 = specialized Collection.dropFirst(_:)();
  a1[1] = v43;
  a1[2] = v44;
  a1[3] = v45;
  if ((v42 & 1) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_24;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v48 = swift_dynamicCastClass();
  if (!v48)
  {
    swift_unknownObjectRelease();
    v48 = MEMORY[0x277D84F90];
  }

  v49 = *(v48 + 16);

  if (__OFSUB__(v42 >> 1, v40))
  {
    __break(1u);
  }

  else if (v49 == (v42 >> 1) - v40)
  {
    v47 = swift_dynamicCastClass();
    result = swift_unknownObjectRelease_n();
    v30 = v58;
    if (!v47)
    {
      v47 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  swift_unknownObjectRelease_n();
LABEL_24:
  specialized _copyCollectionToContiguousArray<A>(_:)(v37, v56, v40, v42);
  v47 = v46;
  v30 = v58;
LABEL_32:
  result = swift_unknownObjectRelease();
LABEL_33:
  *a6 = v51;
  a6[1] = v30;
  a6[2] = v47;
  return result;
}

void *Prio3.jointRandFrom(aggregatorID:nonce:measurement:publicShare:inputShare:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v10 = *a4;
  v11 = *(a5 + 32);
  v12 = *(a6 + 32);
  v13 = *(a6 + 16);
  v32 = *(v12 + 80);
  if (v32(v13, v12) <= 0)
  {
    if (!(v11 | v10))
    {
      return 0;
    }

    _StringGuts.grow(_:)(103);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C52790);
    MEMORY[0x2743B25F0](0xD000000000000065, 0x8000000270C52950);
    v26 = 0;
    v23 = 0xE000000000000000;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    goto LABEL_10;
  }

  if (v11)
  {
    if (v10)
    {
      v29 = a2;
      v34[0] = a6;
      v34[1] = swift_getAssociatedTypeWitness();
      v34[2] = swift_getWitnessTable();
      v34[3] = swift_getAssociatedConformanceWitness();
      v28 = type metadata accessor for VerificationJointRandomness(0, v34);
      v34[0] = a3;
      type metadata accessor for Array();

      swift_getWitnessTable();
      v14 = ArraySlice.init<A>(_:)();
      v16 = v15;
      v31 = v17;
      v27 = v18;
      WitnessTable = swift_getWitnessTable();
      v20 = static JointRandomness.updateJointRandParts(_:commitment:blind:aggregatorID:nonce:)(v10, v14, v16, v31, v27, v11, a1, v29, v28, WitnessTable);
      swift_unknownObjectRelease();
      v21 = v32(v13, v12);
      return VerificationJointRandomness.__allocating_init(count:numOfProofs:parts:)(v21, *(v7 + 8), v20);
    }

    v23 = 0x8000000270C52A00;
    lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
    swift_allocError();
    v26 = 0xD000000000000038;
LABEL_10:
    v25 = 1;
    goto LABEL_11;
  }

  v23 = 0x8000000270C529C0;
  lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
  swift_allocError();
  v25 = 0;
  v26 = 0xD000000000000037;
LABEL_11:
  *v24 = v26;
  *(v24 + 8) = v23;
  *(v24 + 16) = v25;
  return swift_willThrow();
}

uint64_t Prio3.inputSharesFrom(leaderMeasurementShare:leaderProofShare:leaderJointBlind:helperShares:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5[3];
  v10 = a5[4];
  v11 = a5[5];
  v20[0] = a5[2];
  v20[1] = v9;
  v20[2] = v10;
  v20[3] = v11;
  type metadata accessor for Prio3InputShare(0, v20);
  v21 = Array.init()();
  v12 = *v5;
  type metadata accessor for Array();
  Array.reserveCapacity(_:)(v12);
  Prio3InputShare.init(measurementShare:proofShare:jointRandBlind:)(a1, 0, a2, 0, a3, v20);

  Array.append(_:)();
  v13 = *(a4 + 16);
  if (v13)
  {
    v14 = (a4 + 48);
    do
    {
      v15 = *(v14 - 2);
      v16 = *(v14 - 1);
      v17 = *v14;
      v14 += 3;
      Prio3InputShare.init(measurementShare:proofShare:jointRandBlind:)(v15, 1, v16, 1, v17, v20);

      Array.append(_:)();
      --v13;
    }

    while (v13);
  }

  return v21;
}

uint64_t closure #4 in Prio3.shard<A>(_:nonce:seedBytes:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 > 0xFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a6;
  v14[3] = a7;
  result = type metadata accessor for Prio3(0, v14);
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(a2 + 16) > v9)
  {
    v10 = result;
    v11 = *(a2 + 8 * v9 + 32);

    WitnessTable = swift_getWitnessTable();
    v13 = static VDAFProtocol.measurementShareXOF(seed:aggregatorID:)(v11, v7, v10, WitnessTable);

    return v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t closure #5 in Prio3.shard<A>(_:nonce:seedBytes:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8 > 0xFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = *(a2 + 8 * result + 32);
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a7;
  v18[3] = a8;
  v13 = type metadata accessor for Prio3(0, v18);
  LOBYTE(v18[0]) = 1;

  WitnessTable = swift_getWitnessTable();
  v15 = static VDAFProtocol.domainSeparationTag(usage:)(v18, v13, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_270C44550;
  v16 = *(a3 + 8);
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v16 <= 0xFF)
  {
    *(result + 32) = v16;
    *(result + 33) = v8;
    v17 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v12, v15, result, a5, a8);

    return v17;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t closure #1 in Prio3.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v12 = type metadata accessor for Prio3(0, v18);
  LOBYTE(v18[0]) = 1;
  WitnessTable = swift_getWitnessTable();
  v14 = static VDAFProtocol.domainSeparationTag(usage:)(v18, v12, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_270C44550;
  v16 = *(a2 + 8);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v16 > 0xFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(result + 32) = v16;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a3 <= 0xFF)
  {
    *(result + 33) = a3;
    v17 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(a1, v14, result, a5, a7);

    return v17;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t closure #1 in Prio3.prepareMessageFrom(_:parameter:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Array();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return Array<A>.elementwiseAdd(_:)(v5, v6, AssociatedConformanceWitness);
}

void *Prio3.aggregate<A>(_:parameter:)@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v22 = a1;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v6 = a2[4];
  v7 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v13 = (*(v6 + 72))(v7, v6);
  v14 = specialized Array.init(repeating:count:)(v11, v13, AssociatedTypeWitness);
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  AggregateShare.init(_:)(v14, &v29);
  v15 = a2[3];
  v23 = v7;
  v24 = v15;
  v25 = v19;
  v26 = v6;
  v27 = a2[5];
  v28 = v20;
  type metadata accessor for AggregateShare(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  return Sequence.reduce<A>(into:_:)();
}

uint64_t closure #1 in Prio3.aggregate<A>(_:parameter:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for AggregateShare(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  return AggregateShare.accumulate(_:)(&v11, v9);
}

uint64_t Prio3.prepareShare<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v22 = a5;
  v23 = a4;
  v21 = a1;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  result = (*(v12 + 64))(v13, v12);
  v15 = *(v5 + 8);
  v16 = result * v15;
  if ((result * v15) >> 64 == (result * v15) >> 63)
  {
    if ((*(v12 + 80))(v13, v12) < 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = (*(*(a2 + 40) + 8))();
    }

    (*(v8 + 16))(v10, v21, a3);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return Prio3PrepareShare.init<A>(from:parameter:)(v10, v16, v17, 0, AssociatedTypeWitness, a3, AssociatedConformanceWitness, v23, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in Prio3.unshard<A>(_:numOfMeasurements:parameter:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return static AggregateShare.+= infix(_:_:)(a1, &v10, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t Prio3.outputShare<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = a5;
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return v14(v8, 1, AssociatedTypeWitness, a3, AssociatedConformanceWitness, a4);
}

unint64_t instantiation function for generic protocol witness table for Prio3Error(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
  result = lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Prio3PrepareMessage and conformance Prio3PrepareMessage()
{
  result = lazy protocol witness table cache variable for type Prio3PrepareMessage and conformance Prio3PrepareMessage;
  if (!lazy protocol witness table cache variable for type Prio3PrepareMessage and conformance Prio3PrepareMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prio3PrepareMessage and conformance Prio3PrepareMessage);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Prio3Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Prio3Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t type metadata completion function for Prio3(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Prio3(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
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

void storeEnumTagSinglePayload for Prio3(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  v18(v19);
}

uint64_t PINEPublicShare.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  v12 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v18 = 0;
    v18[1] = 0;
LABEL_9:
    swift_willThrow();
    return (*(v12 + 8))(v11, a5);
  }

  v44 = v14;
  v45 = v6;
  v43 = v13;
  v19 = *(*(v13 + 8) + 8);
  v54 = v11;
  v46 = v19;
  v47 = v12;
  v20 = dispatch thunk of Collection.count.getter();
  v21 = *(a6 + 8);
  result = v21(a4, a6);
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v23 = 2 * result * a2;
  if ((2 * result * a2) >> 64 != v23 >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v20 != v23)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);
    type metadata accessor for PINEPublicShare(0, a4, a6, v35);
    v36 = _typeName(_:qualified:)();
    MEMORY[0x2743B25F0](v36);

    MEMORY[0x2743B25F0](0x6572697571657220, 0xEF202A2032203A64);
    v48 = v21(a4, a6);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v37);

    MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
    v48 = a2;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v11 = v54;
    v48 = dispatch thunk of Collection.count.getter();
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v38);

    v39 = v50;
    v40 = v51;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v41 = v39;
    v41[1] = v40;
    v12 = v47;
    goto LABEL_9;
  }

  (*(v47 + 16))(v16, v54, a5);
  result = ArraySlice.init<A>(_:)();
  v50 = result;
  v51 = v24;
  v52 = v25;
  v53 = v26;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v46 = &v42;
    v48 = 0;
    v49 = a2;
    MEMORY[0x28223BE20](result);
    *(&v42 - 6) = a4;
    *(&v42 - 5) = a5;
    v27 = v43;
    *(&v42 - 4) = a6;
    *(&v42 - 3) = v27;
    *(&v42 - 2) = &v50;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    v29 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v30 = MEMORY[0x277D84AC0];
    v45 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in PINEPublicShare.init<A>(from:parameter:), (&v42 - 8), v28, &type metadata for Seed, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v31);
    v46 = &v42;
    v48 = 0;
    v49 = a2;
    MEMORY[0x28223BE20](v45);
    *(&v42 - 6) = a4;
    *(&v42 - 5) = a5;
    *(&v42 - 4) = a6;
    *(&v42 - 3) = v27;
    *(&v42 - 2) = &v50;
    v33 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in PINEPublicShare.init<A>(from:parameter:), (&v42 - 8), v28, &type metadata for Seed, MEMORY[0x277D84A98], v29, v30, v32);
    (*(v47 + 8))(v54, a5);
    result = swift_unknownObjectRelease();
    v34 = v44;
    *v44 = v45;
    v34[1] = v33;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t PINEPublicShare.init(wraparoundJointRandParts:verificationJointRandParts:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

BOOL static PINEPublicShare.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (!_sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF4SeedV_Tt1g5(*a1, *a2))
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF4SeedV_Tt1g5(v2, v3);
}

uint64_t closure #1 in PINEPublicShare.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  (*(a3 + 8))(a2, a3);
  v5 = specialized Collection.prefix(_:)();
  v20 = v6;
  v8 = v7;
  v10 = v9;
  *a1 = specialized Collection.dropFirst(_:)();
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  if ((v10 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_3:
    specialized _copyCollectionToContiguousArray<A>(_:)(v5, v20, v8, v10);
    v15 = v14;
    v16 = a4;
LABEL_10:
    result = swift_unknownObjectRelease();
    goto LABEL_11;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(v10 >> 1, v8))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v18 != (v10 >> 1) - v8)
  {
LABEL_13:
    swift_unknownObjectRelease_n();
    goto LABEL_3;
  }

  v15 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  v16 = a4;
  if (!v15)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  *v16 = v15;
  return result;
}

uint64_t partial apply for closure #1 in PINEPublicShare.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X8>)
{
  return closure #1 in PINEPublicShare.init<A>(from:parameter:)(*(v1 + 48), *(v1 + 16), *(v1 + 32), a1);
}

{
  return partial apply for closure #2 in PINEPublicShare.init<A>(from:parameter:)(a1);
}

uint64_t PINEPublicShare.encodedLength.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(*v0 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v24 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    result = v24;
    v6 = v1 + 32;
    v7 = *(v24 + 16);
    do
    {
      v8 = *(*v6 + 16);
      v25 = result;
      v9 = *(result + 24);
      v10 = v7 + 1;
      if (v7 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v7 + 1, 1);
        result = v25;
      }

      *(result + 16) = v10;
      *(result + 8 * v7 + 32) = v8;
      v6 += 8;
      ++v7;
      --v3;
    }

    while (v3);
LABEL_9:
    v11 = 0;
    v12 = 32;
    while (1)
    {
      v13 = *(result + v12);
      v14 = __OFADD__(v11, v13);
      v11 += v13;
      if (v14)
      {
        break;
      }

      v12 += 8;
      if (!--v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v10 = *(MEMORY[0x277D84F90] + 16);
  if (v10)
  {
    result = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v11 = 0;
LABEL_12:

  v15 = *(v2 + 16);
  if (v15)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v2 + 32;
    v17 = *(v4 + 16);
    do
    {
      v18 = *(*v16 + 16);
      v19 = *(v4 + 24);
      v20 = v17 + 1;
      if (v17 >= v19 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v17 + 1, 1);
      }

      *(v4 + 16) = v20;
      *(v4 + 8 * v17 + 32) = v18;
      v16 += 8;
      ++v17;
      --v15;
    }

    while (v15);
LABEL_19:
    v21 = 0;
    v22 = 32;
    while (1)
    {
      v23 = *(v4 + v22);
      v14 = __OFADD__(v21, v23);
      v21 += v23;
      if (v14)
      {
        break;
      }

      v22 += 8;
      if (!--v20)
      {
        goto LABEL_22;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v20 = *(v4 + 16);
  if (v20)
  {
    goto LABEL_19;
  }

  v21 = 0;
LABEL_22:

  result = v11 + v21;
  if (__OFADD__(v11, v21))
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t PINEPublicShare.encode<A>(into:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = v4[1];
  v9 = *(*v4 + 16);
  if (v9)
  {
    v10 = (*v4 + 32);
    do
    {
      v11 = *v10++;

      Seed.encode<A>(into:)(v7, v11, a3, a4);

      --v9;
    }

    while (v9);
  }

  v12 = *(v8 + 16);
  if (v12)
  {
    v13 = (v8 + 32);
    do
    {
      v14 = *v13++;

      Seed.encode<A>(into:)(v7, v14, a3, a4);

      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t type metadata instantiation function for PINEPublicShare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Prio3PrepareShare.init(verifierShare:jointRandPart:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Prio3PrepareShare.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v79 = a8;
  v80 = a3;
  v72 = a9;
  v76 = *(a7 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = type metadata accessor for Optional();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = v65 - v17;
  v19 = *(a6 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v22 = 0;
    v22[1] = 0;
    swift_willThrow();
    return (*(v19 + 8))(a1, a6);
  }

  v78 = v19;
  v81 = a1;
  v24 = *(a7 + 64);
  v70 = a5;
  v71 = a7;
  v25 = v24(a5, a7);
  v26 = v25 * a2;
  if ((v25 * a2) >> 64 != (v25 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_24;
  }

  v73 = a6;
  v27 = dispatch thunk of Collection.count.getter();
  v28 = v26 + v80;
  if (__OFADD__(v26, v80))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v27 != v28)
  {
    v82 = 0;
    v83 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    type metadata accessor for Prio3PrepareShare(0, v70, v71, v44);
    v45 = _typeName(_:qualified:)();
    v47 = v46;

    v82 = v45;
    v83 = v47;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v86 = v28;
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v48);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v49 = v81;
    v50 = v73;
    v86 = dispatch thunk of Collection.count.getter();
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v51);

    v52 = v82;
    v53 = v83;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v54 = v52;
    v54[1] = v53;
    swift_willThrow();
    return (*(v78 + 8))(v49, v50);
  }

  (*(v78 + 16))(v21, v81, v73);
  ArraySlice.init<A>(_:)();
  v79 = specialized Collection.prefix(_:)();
  v68 = v30;
  v69 = v29;
  v67 = v31;
  specialized Collection.dropFirst(_:)();
  v65[2] = v33;
  v66 = v32;
  v65[1] = v34;
  v82 = v79;
  v83 = v69;
  v84 = v68;
  v85 = v67;
  v35 = TupleTypeMetadata3;
  v36 = *(TupleTypeMetadata3 + 48);
  v37 = *(TupleTypeMetadata3 + 64);
  (*(*(AssociatedTypeWitness - 8) + 56))(v18, 1, 1);
  *(v18 + v36) = a2;
  swift_unknownObjectRetain();
  v38 = v24;
  v39 = v70;
  *(v18 + v37) = v38(v70, v71);
  (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
  v41 = lazy protocol witness table accessor for type ArraySlice<UInt8> and conformance ArraySlice<A>();
  v42 = v77;
  v43 = Array<A>.init<A>(from:parameter:)(&v82, v18, v39, v40, v76, v41);
  if (v42)
  {
    (*(v78 + 8))(v81, v73);
    return swift_unknownObjectRelease();
  }

  v79 = v43;
  if (v80 < 1)
  {
    (*(v78 + 8))(v81, v73, v66);
    result = swift_unknownObjectRelease();
    v60 = 0;
    goto LABEL_21;
  }

  v24 = specialized Collection.prefix(_:)();
  v77 = v55;
  a2 = v56;
  v18 = v57;
  specialized Collection.dropFirst(_:)();
  v58 = v78;
  if (v18)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v61 = swift_dynamicCastClass();
    if (!v61)
    {
      swift_unknownObjectRelease();
      v61 = MEMORY[0x277D84F90];
    }

    v62 = *(v61 + 16);

    if (!__OFSUB__(v18 >> 1, a2))
    {
      if (v62 == (v18 >> 1) - a2)
      {
        v60 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v63 = v78;
        if (!v60)
        {
          swift_unknownObjectRelease();
          v60 = MEMORY[0x277D84F90];
        }

        (*(v63 + 8))(v81, v73);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    swift_unknownObjectRelease_n();
    v58 = v78;
    goto LABEL_12;
  }

  swift_unknownObjectRetain();
LABEL_12:
  specialized _copyCollectionToContiguousArray<A>(_:)(v24, v77, a2, v18);
  v60 = v59;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = (*(v58 + 8))(v81, v73);
LABEL_21:
  v64 = v72;
  *v72 = v79;
  v64[1] = v60;
  return result;
}

uint64_t static Prio3PrepareShare.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a2[1];
  if (static Array<A>.== infix(_:_:)())
  {
    if (v4)
    {
      if (v5 && (specialized static Seed.== infix(_:_:)(v4, v5) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Prio3PrepareShare.encodedLength.getter(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  result = Collection<>.encodedLength.getter(v4, WitnessTable, *(*(a1 + 24) + 40));
  if (v3)
  {
    v7 = *(v3 + 16);
    v8 = __OFADD__(result, v7);
    result += v7;
    if (v8)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Prio3PrepareShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  result = Collection<>.encode<A>(into:)(a1, v10, a3, WitnessTable, a4, *(*(a2 + 24) + 40));
  if (v9)
  {
    return Seed.encode<A>(into:)(a1, v9, a3, a4);
  }

  return result;
}

uint64_t type metadata instantiation function for Prio3PrepareShare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void LeafCorrectionCalculator.calculate(seedsParty0:seedsParty1:nonce:ctrlParty1:)(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), unint64_t a4, uint64_t a5, Swift::Int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(void, void, void))
{
  v141 = a8;
  v132 = a5;
  v122 = a4;
  v147 = a3;
  v16 = a9;
  v113 = *(a9 - 8);
  v17 = MEMORY[0x28223BE20](a1);
  v146 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v131 = &v112 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v148 = &v112 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v130 = &v112 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v112 - v26;
  MEMORY[0x28223BE20](v25);
  v140 = &v112 - v28;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v139 = type metadata accessor for Optional();
  v114 = *(v139 - 8);
  v30 = MEMORY[0x28223BE20](v139);
  v138 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v137 = &v112 - v32;
  v129 = type metadata accessor for Data.Iterator();
  v33 = *(v129 - 1);
  MEMORY[0x28223BE20](v129);
  v128 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = (*(a11 + 64))(a9, a11);
  v36 = v35 * a6;
  v121 = a6;
  if ((v35 * a6) >> 64 != (v35 * a6) >> 63)
  {
    goto LABEL_97;
  }

  v156 = a9;
  v157 = a10;
  v135 = a10;
  v158 = a11;
  v159 = a12;
  v136 = a12;
  v123 = type metadata accessor for LeafCorrectionCalculator.UncorrectedValues(0, &v156);
  v160 = static Array._allocateUninitialized(_:)();
  v115 = type metadata accessor for LeafParent(0, a9, a11, v37);
  v38 = MEMORY[0x2743B2830](a7);
  if (v38 < 0)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v144 = a11;
  v116 = a7;
  v119 = a9;
  v142 = v38;
  if (!v38)
  {
    goto LABEL_70;
  }

  if (v142 > *(a1 + 16))
  {
    goto LABEL_99;
  }

  if (v142 > *(a2 + 16))
  {
LABEL_100:
    __break(1u);
    return;
  }

  v134 = v36 >> 2;
  v125 = (v33 + 8);
  v124 = v122 >> 62;
  v40 = __OFSUB__(HIDWORD(v147), v147);
  v118 = v40;
  v117 = HIDWORD(v147) - v147;
  v120 = BYTE6(v122);
  v145 = (a2 + 40);
  v41 = (a1 + 40);
  while (1)
  {
    v49 = *(v41 - 1);
    v50 = *v41;
    v51 = *v41 >> 62;
    v133 = v41;
    if (v51 > 1)
    {
      v53 = v122;
      if (v51 != 2)
      {
        goto LABEL_18;
      }

      v55 = *(v49 + 16);
      v54 = *(v49 + 24);
      v52 = v54 - v55;
      if (__OFSUB__(v54, v55))
      {
        goto LABEL_89;
      }

      outlined copy of Data._Representation(v49, v50);
      if (!v52)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v51)
      {
        if (__OFSUB__(HIDWORD(v49), v49))
        {
          goto LABEL_90;
        }

        v52 = HIDWORD(v49) - v49;
        outlined copy of Data._Representation(v49, v50);
      }

      else
      {
        v52 = BYTE6(v50);
      }

      v53 = v122;
      if (!v52)
      {
LABEL_18:
        outlined consume of Data._Representation(v49, v50);
        v56 = MEMORY[0x277D84F90];
        goto LABEL_26;
      }
    }

    if (v52 < 1)
    {
      v56 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v56 = swift_allocObject();
      v57 = _swift_stdlib_malloc_size(v56);
      v56[2] = v52;
      v56[3] = 2 * v57 - 64;
    }

    v58 = v128;
    v59 = Data._copyContents(initializing:)();
    outlined consume of Data._Representation(v49, v50);
    (*v125)(v58, v129);
    if (v59 != v52)
    {
      goto LABEL_86;
    }

LABEL_26:
    v60 = v124;
    if (v124 > 1)
    {
      if (v124 != 2)
      {
        goto LABEL_36;
      }

      v63 = *(v147 + 2);
      v62 = *(v147 + 3);
      v61 = v62 - v63;
      if (__OFSUB__(v62, v63))
      {
        goto LABEL_92;
      }
    }

    else
    {
      v61 = v120;
      if (!v124)
      {
        goto LABEL_33;
      }

      v61 = v117;
      if (v118)
      {
        goto LABEL_91;
      }
    }

    outlined copy of Data._Representation(v147, v53);
LABEL_33:
    if (!v61)
    {
LABEL_36:
      outlined consume of Data._Representation(v147, v53);
      v64 = MEMORY[0x277D84F90];
      goto LABEL_40;
    }

    if (v61 < 1)
    {
      v64 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v64 = swift_allocObject();
      v65 = _swift_stdlib_malloc_size(v64);
      v64[2] = v61;
      v64[3] = 2 * v65 - 64;
    }

    v66 = v128;
    v67 = v147;
    v68 = Data._copyContents(initializing:)();
    outlined consume of Data._Representation(v67, v53);
    (*v125)(v66, v129);
    v69 = v68 == v61;
    v60 = v124;
    if (!v69)
    {
      goto LABEL_87;
    }

LABEL_40:
    v70 = static BatchedExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:generating:)(v56, v141, v64, v134, v135, v136);

    v71 = *(v145 - 1);
    v72 = *v145;
    v73 = *v145 >> 62;
    v143 = v70;
    if (v73 > 1)
    {
      if (v73 != 2)
      {
        goto LABEL_53;
      }

      v76 = *(v71 + 16);
      v75 = *(v71 + 24);
      v74 = v75 - v76;
      if (__OFSUB__(v75, v76))
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (!v73)
      {
        v74 = BYTE6(v72);
        if (!BYTE6(v72))
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }

      if (__OFSUB__(HIDWORD(v71), v71))
      {
        goto LABEL_93;
      }

      v74 = HIDWORD(v71) - v71;
    }

    outlined copy of Data._Representation(v71, v72);
    if (!v74)
    {
LABEL_53:
      outlined consume of Data._Representation(v71, v72);
      v77 = MEMORY[0x277D84F90];
      goto LABEL_57;
    }

LABEL_51:
    if (v74 < 1)
    {
      v77 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v77 = swift_allocObject();
      v78 = _swift_stdlib_malloc_size(v77);
      v77[2] = v74;
      v77[3] = 2 * v78 - 64;
    }

    v79 = v128;
    v80 = Data._copyContents(initializing:)();
    outlined consume of Data._Representation(v71, v72);
    (*v125)(v79, v129);
    v69 = v80 == v74;
    v16 = v119;
    if (!v69)
    {
      goto LABEL_88;
    }

LABEL_57:
    if (v60 <= 1)
    {
      break;
    }

    if (v60 == 2)
    {
      v83 = *(v147 + 2);
      v82 = *(v147 + 3);
      v81 = v82 - v83;
      if (__OFSUB__(v82, v83))
      {
        goto LABEL_96;
      }

      goto LABEL_63;
    }

LABEL_10:
    outlined consume of Data._Representation(v147, v53);
    v42 = MEMORY[0x277D84F90];
LABEL_11:
    v41 = (v133 + 16);
    v43 = v135;
    v44 = v136;
    v133 = static BatchedExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:generating:)(v77, v141, v42, v134, v135, v136);

    v45 = v121;
    v46 = v144;
    v47 = static FieldElement.randomVectorBatched<A>(count:using:)(v121, v143, v16, v43, v144, v44);
    v48 = static FieldElement.randomVectorBatched<A>(count:using:)(v45, v133, v16, v43, v46, v44);
    v156 = v47;
    v157 = v48;
    type metadata accessor for Array();
    Array.append(_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v145 += 2;
    if (!--v142)
    {
      goto LABEL_70;
    }
  }

  v81 = v120;
  if (!v60)
  {
    goto LABEL_64;
  }

  v81 = v117;
  if (v118)
  {
    goto LABEL_95;
  }

LABEL_63:
  outlined copy of Data._Representation(v147, v53);
LABEL_64:
  if (!v81)
  {
    goto LABEL_10;
  }

  if (v81 < 1)
  {
    v42 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v42 = swift_allocObject();
    v84 = _swift_stdlib_malloc_size(v42);
    v42[2] = v81;
    v42[3] = 2 * v84 - 64;
  }

  v85 = v128;
  v86 = v147;
  v87 = Data._copyContents(initializing:)();
  outlined consume of Data._Representation(v86, v53);
  (*v125)(v85, v129);
  if (v87 == v81)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_70:
  v125 = type metadata accessor for SiblingLeafCorrections(0, v16, v144, v39);
  v155 = static Array._allocateUninitialized(_:)();
  v156 = v160;
  v88 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2743B26D0](&v151, v88, WitnessTable);

  v154 = v151;
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v124 = type metadata accessor for EnumeratedSequence.Iterator();
  EnumeratedSequence.Iterator.next()();
  v143 = v152;
  if (v152)
  {
    v136 = (v114 + 32);
    v135 = TupleTypeMetadata2 - 8;
    v90 = v151;
    v141 = v153;
    v129 = (v113 + 32);
    v128 = (v132 + 32);
    v91 = (v113 + 16);
    v92 = (v113 + 8);
    v127 = TupleTypeMetadata2;
    v126 = v27;
LABEL_73:
    v154 = static Array._allocateUninitialized(_:)();
    v134 = v90;
    Array.subscript.getter();
    v94 = *(v151 + 24);

    v149 = v94;
    v95 = type metadata accessor for Array();
    v96 = swift_getWitnessTable();
    MEMORY[0x2743B26D0](&v150, v95, v96);

    v149 = v150;
    type metadata accessor for EnumeratedSequence();
    EnumeratedSequence.makeIterator()();
    v133 = v95;
    v97 = v119;
    v142 = type metadata accessor for EnumeratedSequence.Iterator();
    v98 = v140;
    while (1)
    {
      v100 = v138;
      EnumeratedSequence.Iterator.next()();
      v101 = v137;
      (*v136)(v137, v100, v139);
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v101, 1, TupleTypeMetadata2) == 1)
      {

        SiblingLeafCorrections.init(corrections:)();
        v151 = v93;
        type metadata accessor for Array();
        Array.append(_:)();
        EnumeratedSequence.Iterator.next()();
        v90 = v151;
        v141 = v153;
        v143 = v152;
        if (!v152)
        {
          goto LABEL_82;
        }

        goto LABEL_73;
      }

      (*v129)(v98, &v101[*(TupleTypeMetadata2 + 48)], v97);
      if ((v134 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v134 >= *(v132 + 16))
      {
        goto LABEL_84;
      }

      v102 = *&v128[8 * v134];
      if (v134 >= *(v102 + 16))
      {
        goto LABEL_85;
      }

      LODWORD(v145) = *(v102 + v134 + 32);
      Array.subscript.getter();
      v103 = *v91;
      v104 = v131;
      (*v91)(v131, v98, v97);
      v105 = v130;
      v106 = v92;
      v107 = v144;
      FieldElement.init(other:)(v104, v97, v144);
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
      v108 = *v106;
      (*v106)(v148, v97);
      Array.subscript.getter();
      v147 = v103;
      v103(v104, v105, v97);
      v109 = v126;
      v110 = v104;
      v111 = v148;
      FieldElement.init(other:)(v110, v97, v107);
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v108(v111, v97);
      v108(v105, v97);
      if (v145 == 1)
      {
        dispatch thunk of static AdditiveArithmetic.zero.getter();
        v147(v111, v105, v97);
        FieldElement.init(other:)(v111, v97, v107);
        dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
        v108(v105, v97);
      }

      else
      {
        v147(v146, v109, v97);
      }

      v99 = v146;
      v147(v105, v146, v97);
      Array.append(_:)();
      v108(v99, v97);
      v108(v109, v97);
      v98 = v140;
      v108(v140, v97);
      TupleTypeMetadata2 = v127;
      v92 = v106;
    }

    __break(1u);
LABEL_84:
    __break(1u);
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
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

LABEL_82:

  LeafCorrections.init(valueCorrections:)();
}

void LeafCorrectionCalculator.keptBlockCount.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for LeafParent(0, a4, a6, a4);

  JUMPOUT(0x2743B2830);
}

void *specialized Collection._copyToContiguousArray()(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      outlined consume of Data._Representation(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v10, 0);
      v14 = Data._copyContents(initializing:)();
      outlined consume of Data._Representation(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t type metadata instantiation function for LeafCorrectionCalculator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for LeafCorrectionCalculator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for LeafCorrectionCalculator(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t CountType.decode(data:numOfMeasurements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v12[1] = a3;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = *(v5 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2743B2830](a1, v5);
  if (result == 1)
  {
    Array.subscript.getter();
    FieldElement.integerValue.getter(v5, v4);
    (*(v8 + 8))(v10, v5);
    swift_getAssociatedConformanceWitness();
    return dispatch thunk of BinaryInteger.init<A>(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CountType.truncate(measurement:)(uint64_t a1, uint64_t a2)
{
  result = specialized CountType.truncate(measurement:)(a1, a2);
  if (!v2)
  {
  }

  return result;
}

uint64_t CountType.evaluateGadget(_:at:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, void *x8_0@<X8>)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  type metadata accessor for Polynomial(255, v6, v7, a4);
  type metadata accessor for Array();
  swift_getWitnessTable();
  return MultiplicationGadget.evaluate<A>(at:)(v6, v7, x8_0);
}

uint64_t CountType.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v46 = a4;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v42 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v42 - v14);
  v16 = MEMORY[0x2743B2830](v13, v7);
  v18 = *v4;
  if (v16 != *v4)
  {
    v35 = v16;
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    *&v49 = 0xD00000000000001BLL;
    *(&v49 + 1) = 0x8000000270C51C80;
    v51 = v35;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v36);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v51 = v18;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_7:
    MEMORY[0x2743B25F0](v37);

    v40 = v49;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v41 = v40;
    *(v41 + 16) = 2;
    return swift_willThrow();
  }

  v43 = *(a3 + 24);
  v19 = type metadata accessor for GadgetEvaluation(0, v7, v43, v17);
  v20 = MEMORY[0x2743B2830](a2, v19);
  v21 = v4[3];
  if (v20 != *(v21 + 16))
  {
    v38 = v20;
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    *&v49 = 0x2064696C61766E49;
    *(&v49 + 1) = 0xEF203A746E756F63;
    v51 = v38;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v39);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v37 = MEMORY[0x2743B2770](v21, &type metadata for GadgetParameters);
    goto LABEL_7;
  }

  v49 = *(v4 + 2);
  v50 = v4[6];
  getContiguousArrayStorageType<A>(for:)(v7, v7);
  v42 = v8;
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  Array.subscript.getter();
  Array.subscript.getter();
  _finalizeUninitializedArray<A>(_:)();
  v51 = v22;
  Array.subscript.getter();
  v48[0] = v48[1];
  v23 = v43;
  v25 = type metadata accessor for MultiplicationGadget(0, v7, v43, v24);
  v26 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v29 = v47;
  Gadget.evaluate<A>(at:for:)(&v51, v48, v25, v26, WitnessTable, v28, v15);
  outlined consume of GadgetEvaluation<A><A>(v48[0]);

  if (!v29)
  {
    v31 = v45;
    Array.subscript.getter();
    v32 = v42;
    v33 = v44;
    (*(v42 + 16))(v44, v15, v7);
    FieldElement.init(other:)(v33, v7, v23);
    dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
    v34 = *(v32 + 8);
    v34(v31, v7);
    return (v34)(v15, v7);
  }

  return result;
}

int64x2_t CountType.init()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  v6 = MultiplicationGadget.init(numOfCalls:)();
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_270C44540;
  v13 = type metadata accessor for MultiplicationGadget(0, a1, a2, v12);
  WitnessTable = swift_getWitnessTable();
  Gadget.parameters.getter(v13, WitnessTable, (v11 + 32));
  result = vdupq_n_s64(1uLL);
  *a3 = result;
  a3[1].i64[0] = 0;
  a3[1].i64[1] = v11;
  a3[2].i64[0] = v6;
  a3[2].i64[1] = v8;
  a3[3].i64[0] = v10;
  return result;
}

uint64_t protocol witness for FullyLinearProof.truncate(measurement:) in conformance CountType<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = specialized CountType.truncate(measurement:)(a1, a2);
  if (!v7)
  {
  }

  return result;
}

void specialized CountType.encode(measurement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v17 - v8;
  swift_getAssociatedConformanceWitness();
  v10 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v11 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v10)
  {
    if (v11 > 64)
    {
      goto LABEL_3;
    }
  }

  else if (v11 > 63)
  {
LABEL_3:
    v18 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v7 + 8))(v9, AssociatedTypeWitness);
    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  if (!dispatch thunk of BinaryInteger._lowWord.getter())
  {
    goto LABEL_17;
  }

LABEL_7:
  v13 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v13)
  {
    if (v14 < 65)
    {
      goto LABEL_14;
    }

    v18 = 1;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v14 = (*(v7 + 8))(v9, AssociatedTypeWitness);
    if (v15)
    {
LABEL_17:
      getContiguousArrayStorageType<A>(for:)(a2, a2);
      swift_allocObject();
      static Array._adoptStorage(_:count:)();
      (*(v7 + 16))(v9, a1, AssociatedTypeWitness);
      FieldElement.init(_:)(v9, a2, a3);
      _finalizeUninitializedArray<A>(_:)();
      return;
    }

    __break(1u);
  }

  if (v14 > 63)
  {
    goto LABEL_16;
  }

  if (dispatch thunk of BinaryInteger._lowWord.getter() == 1)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_14:
  if (dispatch thunk of BinaryInteger._lowWord.getter() == 1)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_16:
  v18 = 1;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  if (v16)
  {
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t specialized CountType.truncate(measurement:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x2743B2830](a1, *(a2 + 16)) != *v2)
  {
    _StringGuts.grow(_:)(35);

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v4);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v5);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v6 = 0xD00000000000001BLL;
    *(v6 + 8) = 0x8000000270C51C80;
    *(v6 + 16) = 2;
    swift_willThrow();
  }

  return a1;
}

uint64_t type metadata instantiation function for CountType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for CountType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for CountType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MultiplicationGadget.evaluate<A>(at:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a5@<X8>)
{
  v58 = a3;
  v61 = a5;
  v63 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = swift_getAssociatedTypeWitness();
  v60 = *(v62 - 8);
  v7 = MEMORY[0x28223BE20](v62);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = &v49 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v55 = &v49 - v12;
  v52 = *(a1 - 8);
  v13 = v52;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v65 = &v49 - v17;
  MEMORY[0x28223BE20](v16);
  v64 = &v49 - v18;
  v49 = a2;
  v51 = swift_getAssociatedTypeWitness();
  v19 = *(v51 - 8);
  v20 = MEMORY[0x28223BE20](v51);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v49 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v49 - v26;
  dispatch thunk of Collection.startIndex.getter();
  v28 = dispatch thunk of Collection.subscript.read();
  v50 = *(v13 + 16);
  v29 = v64;
  v50(v64);
  v28(v66, 0);
  v30 = *(v19 + 8);
  v31 = v51;
  v30(v27, v51);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.index(after:)();
  v30(v22, v31);
  v32 = dispatch thunk of Collection.subscript.read();
  v33 = v63;
  v34 = v50;
  v50(v65);
  v32(v66, 0);
  v30(v25, v31);
  v35 = v53;
  v34(v53, v29, v33);
  v36 = v58;
  v37 = v33;
  FieldElement.init(other:)(v35, v33, v58);
  v38 = swift_checkMetadataState();
  v39 = *(v36 + 88);
  v40 = v54;
  v41 = v36;
  v39(v37);
  v42 = v56;
  v43 = v65;
  (v39)(v37, v36);
  v44 = v55;
  (*(AssociatedConformanceWitness + 56))(v40, v42, v38);
  v45 = *(v60 + 8);
  v46 = v62;
  v45(v42, v62);
  v45(v40, v46);
  (*(v41 + 96))(v44, v37, v41);
  v47 = *(v52 + 8);
  v47(v43, v37);
  return (v47)(v64, v37);
}

uint64_t MultiplicationGadget.evaluate<A>(at:)@<X0>(uint64_t a1@<X4>, void *a3@<X6>, void *a5@<X8>)
{
  v27 = a1;
  v28 = a3;
  v26 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  dispatch thunk of Collection.startIndex.getter();
  v14 = dispatch thunk of Collection.subscript.read();
  v16 = *v15;

  v14(v30, 0);
  v17 = *(v5 + 8);
  v18 = AssociatedTypeWitness;
  v17(v13, AssociatedTypeWitness);
  v29 = v16;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.index(after:)();
  v19 = v18;
  v17(v8, v18);
  v20 = dispatch thunk of Collection.subscript.read();
  v22 = *v21;

  v20(v30, 0);
  v17(v11, v19);
  v30[0] = v22;
  static Polynomial.* infix(_:_:)(&v29, v27, v28, v26);
}

uint64_t type metadata instantiation function for MultiplicationGadget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__int128 *Fraction.one.unsafeMutableAddressor()
{
  if (one-time initialization token for one != -1)
  {
    swift_once();
  }

  return &static Fraction.one;
}

void static Fraction.-= infix(_:_:)(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = __OFSUB__(0, a3);
  v4 = -a3;
  if (v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
LABEL_5:
    specialized static Fraction.+= infix(_:_:)(result, a2, v4);
    return;
  }

  v3 = __OFSUB__(0, a2);
  a2 = -a2;
  if (v3)
  {
    goto LABEL_7;
  }

  v3 = __OFSUB__(0, v4);
  v4 = -v4;
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
}

VDAF::Fraction __swiftcall Fraction.init(_:)(Swift::Int a1)
{
  v2 = 1;
  result.numerator = a1;
  result.denominator = v2;
  return result;
}

void static Fraction.- infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  v4 = -a4;
  if (__OFSUB__(0, a4))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
LABEL_5:
    specialized static Fraction.+= infix(_:_:)(v6, a3, v4);
    return;
  }

  v5 = __OFSUB__(0, a3);
  a3 = -a3;
  if (v5)
  {
    goto LABEL_7;
  }

  v5 = __OFSUB__(0, v4);
  v4 = a4;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
}

void static Fraction./ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v4[0] = a1;
  v4[1] = a2;
  a4(v4, a3);
}

void static Fraction./ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = a1;
  v4[1] = a2;
  specialized static Fraction./= infix(_:_:)(v4, a3, a4);
}

Swift::Void __swiftcall Fraction.reduce()()
{
  v1 = *v0;
  if (!*v0)
  {
    return;
  }

  v2 = v0[1];
  if (!v2)
  {
    *v0 = 1;
    return;
  }

  v3 = v0[1];
  if (v2 < 0)
  {
    v3 = -v2;
    if (__OFSUB__(0, v2))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  v4 = specialized static Fraction.binaryGCD(_:_:)(v3, *v0);
  if (!v4)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v2 == 0x8000000000000000 && v4 == -1)
  {
    goto LABEL_17;
  }

  v5 = v2 / v4;
  v0[1] = v2 / v4;
  if (v1 == 0x8000000000000000 && v4 == -1)
  {
    goto LABEL_18;
  }

  v6 = v1 / v4;
  *v0 = v1 / v4;
  if (v1 / v4 < 0)
  {
    v7 = __OFSUB__(0, v6);
    v8 = -v6;
    if (!v7)
    {
      *v0 = v8;
      v7 = __OFSUB__(0, v5);
      v9 = -v5;
      if (!v7)
      {
        v0[1] = v9;
        return;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

int64x2_t one-time initialization function for one()
{
  result = vdupq_n_s64(1uLL);
  static Fraction.one = result;
  return result;
}

uint64_t static Fraction.one.getter()
{
  if (one-time initialization token for one != -1)
  {
    swift_once();
  }

  return static Fraction.one;
}

uint64_t static Fraction.- prefix(_:)(uint64_t result, uint64_t a2)
{
  v2 = __OFSUB__(0, a2);
  v3 = -a2;
  if (v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return result;
  }

  v2 = __OFSUB__(0, result);
  result = -result;
  if (v2)
  {
    goto LABEL_7;
  }

  if (__OFSUB__(0, v3))
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t Fraction.description.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](47, 0xE100000000000000);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v2);

  return v3;
}

uint64_t static Fraction.+ infix(_:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a2 | result) || !(a4 | a3))
  {
    return 0;
  }

  if (result)
  {
    if (!a3)
    {
      return 0;
    }

    v4 = __OFADD__(a2 * a3, a4 * result);
    if ((a2 * a3) >> 64 == (a2 * a3) >> 63 && (a4 * result) >> 64 == (a4 * result) >> 63 && !v4 && (result * a3) >> 64 == (result * a3) >> 63)
    {
      v5 = result * a3;
      Fraction.reduce()();
      return v5;
    }

    else
    {
      return specialized Fraction.init(_:)(a2 / result + a4 / a3);
    }
  }

  else if (a3)
  {
    return 0;
  }

  else if ((a2 * a4) >> 64 == (a2 * a4) >> 63)
  {
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Fraction.*= infix(_:_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    *result = 0;
    *(result + 8) = 0;
    return result;
  }

  v5 = *(result + 8);
  if (v5)
  {
    v6 = a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    *(result + 8) = 0;
    goto LABEL_13;
  }

  v7 = v5 * a3;
  v8 = v3 * a2;
  if ((v5 * a3) >> 64 != (v5 * a3) >> 63 || (v3 * a2) >> 64 != (v3 * a2) >> 63)
  {
    v16 = result;
    result = specialized Fraction.init(_:)(a3 / a2 * (v5 / v3));
    *v16 = result;
    v16[1] = v17;
    return result;
  }

  *result = v8;
  *(result + 8) = v7;
  if (!v8)
  {
    return result;
  }

  if (!v7)
  {
LABEL_13:
    *result = 1;
    return result;
  }

  v9 = v5 * a3;
  if (v7 < 0)
  {
    v9 = -v7;
    if (__OFSUB__(0, v7))
    {
      goto LABEL_34;
    }
  }

  v10 = result;
  result = specialized static Fraction.binaryGCD(_:_:)(v9, v8);
  if (!result)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v7 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_32;
  }

  v11 = v7 / result;
  v10[1] = v7 / result;
  if (v8 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_33;
  }

  v12 = v8 / result;
  *v10 = v8 / result;
  if (v8 / result < 0)
  {
    v13 = __OFSUB__(0, v12);
    v14 = -v12;
    if (!v13)
    {
      *v10 = v14;
      v13 = __OFSUB__(0, v11);
      v15 = -v11;
      if (!v13)
      {
        v10[1] = v15;
        return result;
      }

      goto LABEL_36;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

unint64_t specialized static Fraction.< infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a2 | a1))
  {
    return 0;
  }

  if (!(a4 | a3))
  {
    return 0;
  }

  if (a1)
  {
    if (a3)
    {
      if ((a2 * a3) >> 64 == (a2 * a3) >> 63 && (a4 * a1) >> 64 == (a4 * a1) >> 63)
      {
        return (a2 * a3) < a4 * a1;
      }

      else
      {
        return a2 / a1 < a4 / a3;
      }
    }

    else
    {
      return a4 > 0;
    }
  }

  else
  {
    v6 = (a2 & 0x8000000000000000) != 0 && a4 > 0;
    if (a3)
    {
      return a2 >> 63;
    }

    else
    {
      return v6;
    }
  }
}

BOOL specialized static Fraction.== infix(_:_:)(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a2 | result))
  {
    return 0;
  }

  if (!(a4 | a3))
  {
    return 0;
  }

  if (result && a3)
  {
    return a2 == a4 && result == a3;
  }

  if ((a2 * a4) >> 64 == (a2 * a4) >> 63)
  {
    return a2 * a4 > 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

int64_t specialized static Fraction.binaryGCD(_:_:)(int64_t result, int64_t a2)
{
  if (result < 0)
  {
    v2 = __OFSUB__(0, result);
    result = -result;
    if (v2)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }
  }

  if (a2 < 0)
  {
    v2 = __OFSUB__(0, a2);
    a2 = -a2;
    if (v2)
    {
      goto LABEL_29;
    }
  }

  if (result)
  {
    if (!a2)
    {
      return result;
    }

    v3 = __clz(__rbit64(result));
    v4 = __clz(__rbit64(a2));
    if (v4 >= v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    v6 = result >> v3;
    v7 = a2 >> v4;
    if (v6 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    if (v6 >= v7)
    {
      v6 = v7;
    }

    v9 = v8 - v6;
    if (__OFSUB__(v8, v6))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      while (v9)
      {
        v10 = v9 >> __clz(__rbit64(v9));
        if (v10 <= v6)
        {
          v11 = v6;
        }

        else
        {
          v11 = v10;
        }

        if (v10 < v6)
        {
          v6 = v10;
        }

        v9 = v11 - v6;
        if (__OFSUB__(v11, v6))
        {
          goto LABEL_24;
        }
      }
    }

    return v6 << v5;
  }

  return a2;
}

uint64_t specialized static Fraction.sternBrocotSearch(_:precision:maxIterations:)(uint64_t result, double a2, double a3)
{
  if (a2 < 0.0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v3 = floor(a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v4 = ceil(a2);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = v3;
    v6 = v4;
    if (*&v3 == *&v4)
    {
      return 1;
    }

    v7 = 1;
    if (result < 1)
    {
      v8 = 1;
LABEL_34:
      if (vabdd_f64(a2, v5 / v8) >= vabdd_f64(a2, v6 / v7))
      {
        return v7;
      }

      else
      {
        return v8;
      }
    }

    v8 = 1;
    v9 = 1;
    v10 = 1;
    v11 = v4;
    v12 = v3;
    while (1)
    {
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        break;
      }

      v14 = v10 + v9;
      if (__OFADD__(v10, v9))
      {
        goto LABEL_39;
      }

      if (v14 < 0)
      {
        v15 = __OFSUB__(0, v14);
        v14 = -v14;
        if (v15)
        {
          goto LABEL_49;
        }

        v15 = __OFSUB__(0, v13);
        v13 = -v13;
        if (v15)
        {
          goto LABEL_50;
        }
      }

      v16 = v13 / v14;
      if (vabdd_f64(a2, v16) < a3)
      {
        return v14;
      }

      v17 = a2 - v16;
      if (v17 >= 0.0)
      {
        v8 = v14;
        v5 = v13;
      }

      else
      {
        v7 = v14;
        v6 = v13;
      }

      if (v17 >= 0.0)
      {
        v10 = v14;
      }

      else
      {
        v9 = v14;
      }

      if (v17 >= 0.0)
      {
        v12 = v13;
      }

      else
      {
        v11 = v13;
      }

      if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, v12))
      {
        goto LABEL_40;
      }

      if (0x7FFFFFFFFFFFFFFFLL - v12 < v11)
      {
        goto LABEL_34;
      }

      if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, v10))
      {
        goto LABEL_41;
      }

      if (0x7FFFFFFFFFFFFFFFLL - v10 >= v9)
      {
        if (--result)
        {
          continue;
        }
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t specialized Fraction.init(_:)(double a1)
{
  v1 = (*&a1 >> 52) & 0x7FFLL;
  if (v1 == 2047)
  {
    return 0;
  }

  if (!(v1 | *&a1 & 0xFFFFFFFFFFFFFLL))
  {
    return 1;
  }

  v3 = fabs(a1);
  if (v3 > 9.22337204e18)
  {
    return 0;
  }

  result = specialized static Fraction.sternBrocotSearch(_:precision:maxIterations:)(0x100000000, v3, 0.000001);
  if (a1 < 0.0)
  {
    v6 = __OFSUB__(0, v5);
    v5 = -v5;
    if (v6)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return result;
  }

  v6 = __OFSUB__(0, result);
  result = -result;
  if (v6)
  {
    goto LABEL_14;
  }

  if (__OFSUB__(0, v5))
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t specialized static Fraction./= infix(_:_:)(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = *result;
      if (*result)
      {
        v3 = *(result + 8);
        if (v3)
        {
          v4 = v2 * a2;
          v5 = 1.0;
          if ((v2 * a2) >> 64 == (v2 * a2) >> 63)
          {
            *result = v4;
            *(result + 8) = v3;
            if (!v4)
            {
              return result;
            }

            goto LABEL_19;
          }

LABEL_16:
          v7 = result;
          result = specialized Fraction.init(_:)(v5 / a2 * (v3 / v2));
          *v7 = result;
          v7[1] = v8;
          return result;
        }

        goto LABEL_12;
      }
    }

LABEL_14:
    *result = 0;
    *(result + 8) = 0;
    return result;
  }

  v6 = __OFSUB__(0, a2);
  a2 = -a2;
  if (v6)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v2 = *result;
  if (!*result)
  {
    goto LABEL_14;
  }

  v3 = *(result + 8);
  v5 = -1.0;
  if (v3 == 0x8000000000000000)
  {
    goto LABEL_16;
  }

  if (!v3)
  {
LABEL_12:
    *(result + 8) = 0;
LABEL_13:
    *result = 1;
    return result;
  }

  v4 = v2 * a2;
  if ((v2 * a2) >> 64 != (v2 * a2) >> 63)
  {
    goto LABEL_16;
  }

  v3 = -v3;
  *result = v4;
  *(result + 8) = v3;
  if (!v4)
  {
    return result;
  }

LABEL_19:
  if (!v3)
  {
    goto LABEL_13;
  }

  v9 = v3;
  if (v3 < 0)
  {
    v9 = -v3;
    if (__OFSUB__(0, v3))
    {
      goto LABEL_35;
    }
  }

  v10 = result;
  result = specialized static Fraction.binaryGCD(_:_:)(v9, v4);
  if (!result)
  {
    goto LABEL_32;
  }

  if (v3 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_33;
  }

  v11 = v3 / result;
  v10[1] = v3 / result;
  if (v4 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_34;
  }

  v12 = v4 / result;
  *v10 = v4 / result;
  if (v4 / result < 0)
  {
    v6 = __OFSUB__(0, v12);
    v13 = -v12;
    if (!v6)
    {
      *v10 = v13;
      v6 = __OFSUB__(0, v11);
      v14 = -v11;
      if (!v6)
      {
        v10[1] = v14;
        return result;
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

void specialized static Fraction.+= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a1 == 0 || (a3 | a2) == 0)
  {
    goto LABEL_6;
  }

  if (v5)
  {
    if (a2)
    {
      v7 = __OFADD__(v4 * a2, a3 * v5);
      if ((v4 * a2) >> 64 == (v4 * a2) >> 63 && (a3 * v5) >> 64 == (a3 * v5) >> 63 && !v7 && (v5 * a2) >> 64 == (v5 * a2) >> 63)
      {
        *a1 = v5 * a2;
        a1[1] = v4 * a2 + a3 * v5;
        Fraction.reduce()();
      }

      else
      {
        *a1 = specialized Fraction.init(_:)(a3 / a2 + v4 / v5);
        a1[1] = v8;
      }
    }

    else
    {
      *a1 = 0;
      a1[1] = a3;
    }

    return;
  }

  if (!a2)
  {
    if ((v4 * a3) >> 64 != (v4 * a3) >> 63)
    {
      __break(1u);
      return;
    }

    if (v4 * a3 < 0)
    {
LABEL_6:
      *a1 = 0;
      a1[1] = 0;
    }
  }
}

uint64_t specialized Fraction.init(numerator:denominator:)(uint64_t result, int64_t a2)
{
  v2 = a2;
  v3 = result;
  if (a2 < 0)
  {
    v2 = -a2;
    if (__OFSUB__(0, a2))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v3 = -result;
    if (__OFSUB__(0, result))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  else if (!a2)
  {
    return 0;
  }

  if (v3)
  {
    result = v3;
    if (v3 < 0)
    {
      result = -v3;
      if (__OFSUB__(0, v3))
      {
        goto LABEL_26;
      }
    }

    result = specialized static Fraction.binaryGCD(_:_:)(result, v2);
    if (result)
    {
      if (v3 != 0x8000000000000000 || result != -1)
      {
        if (v2 != 0x8000000000000000 || result != -1)
        {
          v4 = v3 / result;
          result = v2 / result;
          if ((result & 0x8000000000000000) == 0)
          {
            return result;
          }

          v5 = __OFSUB__(0, result);
          result = -result;
          if (!v5)
          {
            if (!__OFSUB__(0, v4))
            {
              return result;
            }

            __break(1u);
            return 1;
          }

LABEL_27:
          __break(1u);
          return result;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_22;
  }

  return 1;
}

uint64_t specialized static Fraction.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  if (!a1)
  {
    return v5;
  }

  result = 0;
  if (!a3)
  {
    return result;
  }

  result = 1;
  if (!a2 || !a4)
  {
    return result;
  }

  v8 = a2 * a4;
  v9 = a1 * a3;
  if ((a2 * a4) >> 64 != (a2 * a4) >> 63 || (a1 * a3) >> 64 != (a1 * a3) >> 63)
  {
    return specialized Fraction.init(_:)(a2 / a1 * (a4 / a3));
  }

  if (!v9)
  {
    return 0;
  }

  if (!v8)
  {
    return 1;
  }

  result = a2 * a4;
  if (v8 < 0)
  {
    result = -v8;
    if (__OFSUB__(0, v8))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  v10 = a2 * a4;
  result = specialized static Fraction.binaryGCD(_:_:)(result, a1 * a3);
  if (!result)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v10 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_27;
  }

  if (v9 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_28;
  }

  v11 = v10 / result;
  result = v9 / result;
  if (result < 0)
  {
    v12 = __OFSUB__(0, result);
    result = -result;
    if (!v12)
    {
      v12 = __OFSUB__(0, v11);
      v5 = -v11;
      if (!v12)
      {
        return result;
      }

      __break(1u);
      return v5;
    }

LABEL_30:
    __break(1u);
  }

  return result;
}

int64_t *specialized static Fraction.*= infix(_:_:)(int64_t *result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    *result = 0;
    result[1] = 0;
    return result;
  }

  v3 = result[1];
  if (v3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    result[1] = 0;
    goto LABEL_8;
  }

  v5 = v3 * a2;
  if ((v3 * a2) >> 64 != (v3 * a2) >> 63)
  {
    v6 = v3 / v2 * a2;
    v7 = result;
    result = specialized Fraction.init(_:)(v6);
    *v7 = result;
    v7[1] = v8;
    return result;
  }

  result[1] = v5;
  if (!v5)
  {
LABEL_8:
    *result = 1;
    return result;
  }

  v9 = v3 * a2;
  if (v5 < 0)
  {
    v9 = -v5;
    if (__OFSUB__(0, v5))
    {
      goto LABEL_30;
    }
  }

  v10 = result;
  result = specialized static Fraction.binaryGCD(_:_:)(v9, v2);
  if (!result)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v5 == 0x8000000000000000 && (result + 1) == 0)
  {
    goto LABEL_28;
  }

  v12 = v5 / result;
  v10[1] = v5 / result;
  if (v2 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_29;
  }

  v13 = v2 / result;
  *v10 = v2 / result;
  if (((v2 / result) & 0x8000000000000000) == 0)
  {
    return result;
  }

  v14 = __OFSUB__(0, v13);
  v15 = -v13;
  if (v14)
  {
    goto LABEL_31;
  }

  *v10 = v15;
  v14 = __OFSUB__(0, v12);
  v16 = -v12;
  if (v14)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v10[1] = v16;
  return result;
}

uint64_t specialized static Fraction./= infix(_:_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v3 = __OFSUB__(0, a3);
    a3 = -a3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v3 = __OFSUB__(0, a2);
      a2 = -a2;
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_4:
  if (!a3 || (v4 = *result) == 0)
  {
    *result = 0;
    *(result + 8) = 0;
    return result;
  }

  v5 = *(result + 8);
  if (!v5 || !a2)
  {
    *(result + 8) = 0;
    goto LABEL_25;
  }

  v6 = v5 * a2;
  v7 = v4 * a3;
  if ((v4 * a3) >> 64 != (v4 * a3) >> 63 || (v5 * a2) >> 64 != (v5 * a2) >> 63)
  {
    v14 = result;
    result = specialized Fraction.init(_:)(a2 / a3 * (v5 / v4));
    *v14 = result;
    v14[1] = v15;
    return result;
  }

  *result = v7;
  *(result + 8) = v6;
  if (!v7)
  {
    return result;
  }

  if (!v6)
  {
LABEL_25:
    *result = 1;
    return result;
  }

  v8 = v5 * a2;
  if (v6 < 0)
  {
    v8 = -v6;
    if (__OFSUB__(0, v6))
    {
      goto LABEL_33;
    }
  }

  v9 = result;
  result = specialized static Fraction.binaryGCD(_:_:)(v8, v7);
  if (!result)
  {
    goto LABEL_30;
  }

  if (v6 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_31;
  }

  v10 = v6 / result;
  v9[1] = v6 / result;
  if (v7 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_32;
  }

  v11 = v7 / result;
  *v9 = v7 / result;
  if (v7 / result < 0)
  {
    v3 = __OFSUB__(0, v11);
    v12 = -v11;
    if (!v3)
    {
      *v9 = v12;
      v3 = __OFSUB__(0, v10);
      v13 = -v10;
      if (!v3)
      {
        v9[1] = v13;
        return result;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Fraction and conformance Fraction()
{
  result = lazy protocol witness table cache variable for type Fraction and conformance Fraction;
  if (!lazy protocol witness table cache variable for type Fraction and conformance Fraction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Fraction and conformance Fraction);
  }

  return result;
}

uint64_t static FiniteFieldProtocol.addMod(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v39 = a1;
  swift_getAssociatedTypeWitness();
  v34 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = swift_checkMetadataState();
  v37 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v35 = &v31 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v36 = a3;
  if (v15)
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      v40 = 0;
      lazy protocol witness table accessor for type Int and conformance Int();
      v20 = v14;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = v37;
      (*(v37 + 8))(v14, v8);
      if ((v23 & 1) == 0)
      {
        goto LABEL_14;
      }

      return (*(v22 + 16))(v38, v39, v8);
    }

    v16 = dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_13:
    v22 = v37;
    v20 = v14;
    if (v16)
    {
      goto LABEL_14;
    }

    return (*(v22 + 16))(v38, v39, v8);
  }

  v17 = a4;
  v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v19 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v18)
  {
    if (v19 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v20 = v14;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v21 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v22 = v37;
      (*(v37 + 8))(v14, v8);
      a4 = v17;
      if ((v21 & 1) == 0 || dispatch thunk of BinaryInteger._lowWord.getter())
      {
        goto LABEL_14;
      }

      return (*(v22 + 16))(v38, v39, v8);
    }
  }

  else if (v19 < 64)
  {
    v16 = dispatch thunk of BinaryInteger._lowWord.getter();
    a4 = v17;
    goto LABEL_13;
  }

  v40 = 0;
  lazy protocol witness table accessor for type Int and conformance Int();
  v20 = v14;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = v37;
  (*(v37 + 8))(v14, v8);
  a4 = v17;
  if (v30)
  {
    return (*(v22 + 16))(v38, v39, v8);
  }

LABEL_14:
  v24 = v36;
  v32 = *(a4 + 24);
  v32(v36, a4);
  v25 = v35;
  v37 = *(v34 + 1);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v26 = *(v22 + 8);
  v26(v20, v8);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v34 = v26;
    v27 = v33;
    v32(v24, a4);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v28 = v34;
    v34(v27, v8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v28(v20, v8);
    return (v28)(v25, v8);
  }

  else
  {
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    return (v26)(v25, v8);
  }
}

uint64_t static FiniteFieldProtocol.subMod(_:_:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  swift_getAssociatedConformanceWitness();
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {
    return dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  }

  (*(a4 + 24))(a3, a4);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v14 = *(v8 + 8);
  v14(v11, AssociatedTypeWitness);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  return (v14)(v13, AssociatedTypeWitness);
}

uint64_t static FiniteFieldProtocol.inv(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v71 = a4;
  swift_getAssociatedTypeWitness();
  v7 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v86 = *(*(v7 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v84 = &v69 - v8;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v80 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v87 = &v69 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v78 = &v69 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v82 = &v69 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v69 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v69 = (&v69 - v23);
  MEMORY[0x28223BE20](v22);
  v25 = &v69 - v24;
  v26 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v81 = a2;
  if (v26)
  {
    v27 = dispatch thunk of BinaryInteger.bitWidth.getter();
    goto LABEL_7;
  }

  LODWORD(AssociatedConformanceWitness) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v27 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((AssociatedConformanceWitness & 1) == 0)
  {
LABEL_7:
    if (v27 >= 64)
    {
      goto LABEL_10;
    }

LABEL_8:
    if (!dispatch thunk of BinaryInteger._lowWord.getter())
    {
      do
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_10:
        *&v88 = 0;
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v29 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v10 + 8))(v25, v9);
      }

      while ((v29 & 1) != 0);
    }

    goto LABEL_11;
  }

  if (v27 > 64)
  {
    goto LABEL_10;
  }

  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = v21;
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v21 = AssociatedConformanceWitness;
  a2 = v81;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v28 = dispatch thunk of static Comparable.>= infix(_:_:)();
  (*(v10 + 8))(v25, v9);
  if (v28)
  {
    goto LABEL_8;
  }

LABEL_11:
  v79 = a1;
  (*(a3 + 24))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v30 = v69;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v31 = v10 + 8;
  v32 = *(v10 + 8);
  v32(v21, v9);
  v32(v25, v9);
  v33 = *(v10 + 16);
  v33(v82, v79, v9);
  v34 = v78;
  v79 = v33;
  v33(v78, v30, v9);
  *&v88 = 1;
  v75 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(a3 + 64))(v25);
  v32(v25, v9);
  v76 = v10 + 16;
  v77 = a3;
  v73 = v7;
  v74 = a3 + 56;
  v72 = (v10 + 32);
  v35 = v34;
  v70 = v25;
  while (1)
  {
    v43 = v87;
    v44 = v35;
    v79(v87);
    v45 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v46 = v80;
    if (v45)
    {
      break;
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
    {
      v54 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      static FixedWidthInteger._truncatingInit<A>(_:)(v43, &type metadata for _UInt128, v9, v54, v7, &v88);
      v32(v43, v9);
      v55 = *(&v88 + 1) | v88;
      v49 = v44;
      goto LABEL_25;
    }

    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v88 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32(v25, v9);
    v32(v43, v9);
    v49 = v44;
    v52 = v82;
    if (v58)
    {
      goto LABEL_44;
    }

LABEL_32:
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v32(v25, v9);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        goto LABEL_39;
      }

LABEL_42:
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v88 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v66 = v46;
      v67 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32(v25, v9);
      v32(v66, v9);
      v36 = v77;
      v37 = v81;
      v38 = v31;
      v39 = v72;
      if ((v67 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v61 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v62 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v61 & 1) == 0)
    {
      if (v62 < 128)
      {
LABEL_39:
        v65 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v46, &type metadata for _UInt128, v9, v65, v7, &v88);
        v32(v46, v9);
        v36 = v77;
        v37 = v81;
        v38 = v31;
        v39 = v72;
        if (v88 != 0)
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      goto LABEL_42;
    }

    if (v62 > 128)
    {
      goto LABEL_42;
    }

    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v63 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v32(v25, v9);
    if ((v63 & 1) == 0)
    {
      v32(v46, v9);
      v36 = v77;
      v37 = v81;
      v38 = v31;
      v39 = v72;
      v25 = v70;
LABEL_13:
      v40 = v71;
      (*(v36 + 56))(v71, v52, v37, v36);
      v32(v40, v9);
      (*v39)(v40, v25, v9);
      goto LABEL_14;
    }

    v64 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    static FixedWidthInteger._truncatingInit<A>(_:)(v46, &type metadata for _UInt128, v9, v64, v7, &v88);
    v32(v46, v9);
    v36 = v77;
    v37 = v81;
    v38 = v31;
    v39 = v72;
    v25 = v70;
    if (v88 != 0)
    {
      goto LABEL_13;
    }

LABEL_14:
    (*(v36 + 56))(v52, v52, v37, v36);
    v32(v52, v9);
    v41 = *v39;
    (*v39)(v52, v25, v9);
    *&v88 = 1;
    v42 = v78;
    v7 = v73;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v32(v42, v9);
    v41(v42, v25, v9);
    v35 = v42;
    v31 = v38;
  }

  v47 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v48 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v49 = v44;
  if (v47)
  {
    if (v48 > 128)
    {
      goto LABEL_29;
    }

    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v50 = v87;
    v51 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v32(v25, v9);
    v52 = v82;
    if (v51)
    {
      v53 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      static FixedWidthInteger._truncatingInit<A>(_:)(v50, &type metadata for _UInt128, v9, v53, v7, &v88);
      v32(v50, v9);
      if (v88 == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v32(v50, v9);
    }

    goto LABEL_32;
  }

  if (v48 < 128)
  {
    v56 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v57 = v87;
    static FixedWidthInteger._truncatingInit<A>(_:)(v87, &type metadata for _UInt128, v9, v56, v7, &v88);
    v32(v57, v9);
    v55 = *(&v88 + 1) | v88;
LABEL_25:
    v52 = v82;
    if (!v55)
    {
      goto LABEL_44;
    }

    goto LABEL_32;
  }

LABEL_29:
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v88 = 0uLL;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v59 = v87;
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32(v25, v9);
  v32(v59, v9);
  v52 = v82;
  if ((v60 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_44:
  v32(v49, v9);
  v32(v52, v9);
  return (v32)(v69, v9);
}

uint64_t static FiniteFieldProtocol.pow(of:raiseTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a2;
  v63 = a1;
  v54 = a5;
  swift_getAssociatedTypeWitness();
  v7 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v68 = *(*(v7 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v66 = &v53 - v8;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v65 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v53 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = *(v10 + 16);
  v64 = &v53 - v23;
  v22();
  v62 = v22;
  v63 = v10 + 16;
  (v22)(v21, v69, v9);
  *&v70 = 1;
  v59 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v24 = *(a4 + 64);
  v69 = a3;
  v24(v18, a3, a4);
  v27 = *(v10 + 8);
  v26 = v10 + 8;
  v25 = v27;
  v27(v18, v9);
  v60 = v15;
  v61 = a4;
  v57 = v21;
  v58 = a4 + 56;
  v55 = v7;
  v56 = (v26 + 24);
  v53 = v18;
  while (1)
  {
    (v62)(v15, v21, v9);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      break;
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 128)
    {
      goto LABEL_14;
    }

LABEL_11:
    v39 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    static FixedWidthInteger._truncatingInit<A>(_:)(v15, &type metadata for _UInt128, v9, v39, v7, &v70);
    v25(v15, v9);
    if (v70 == 0)
    {
      goto LABEL_31;
    }

LABEL_15:
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v41 = v65;
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v25(v18, v9);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      v42 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v43 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v42)
      {
        if (v43 <= 128)
        {
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v44 = v65;
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v45 = dispatch thunk of static Comparable.>= infix(_:_:)();
          v25(v18, v9);
          if ((v45 & 1) == 0)
          {
            v25(v44, v9);
            v28 = v64;
            v29 = v25;
            v30 = v26;
            v31 = v56;
            v18 = v53;
            v32 = v61;
LABEL_3:
            v33 = v54;
            (*(v32 + 56))(v54, v28, v69, v32);
            v34 = v69;
            v29(v33, v9);
            (*v31)(v33, v18, v9);
            goto LABEL_4;
          }

          v46 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
          static FixedWidthInteger._truncatingInit<A>(_:)(v44, &type metadata for _UInt128, v9, v46, v7, &v70);
          v25(v44, v9);
          v47 = *(&v70 + 1) | v70;
          v34 = v69;
          v28 = v64;
          v29 = v25;
          v30 = v26;
          v31 = v56;
          v18 = v53;
          goto LABEL_22;
        }
      }

      else if (v43 < 128)
      {
        v49 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v41, &type metadata for _UInt128, v9, v49, v7, &v70);
        v25(v41, v9);
        v32 = v61;
        v34 = v69;
        v28 = v64;
        v29 = v25;
        v30 = v26;
        v31 = v56;
        if (v70 != 0)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }

      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v70 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25(v18, v9);
      v25(v41, v9);
      v32 = v61;
      v34 = v69;
      v28 = v64;
      v29 = v25;
      v30 = v26;
      v31 = v56;
      if ((v51 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        v48 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v41, &type metadata for _UInt128, v9, v48, v7, &v70);
        v25(v41, v9);
        v47 = *(&v70 + 1) | v70;
        v34 = v69;
        v28 = v64;
        v29 = v25;
        v30 = v26;
        v31 = v56;
LABEL_22:
        v32 = v61;
        if (v47)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }

      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v70 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25(v18, v9);
      v25(v41, v9);
      v34 = v69;
      v28 = v64;
      v29 = v25;
      v30 = v26;
      v31 = v56;
      v32 = v61;
      if ((v50 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

LABEL_4:
    (*(v32 + 56))(v28, v28, v34, v32);
    v29(v28, v9);
    v35 = *v31;
    (*v31)(v28, v18, v9);
    *&v70 = 1;
    v21 = v57;
    v7 = v55;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v29(v21, v9);
    v35(v21, v18, v9);
    v15 = v60;
    v26 = v30;
    v25 = v29;
  }

  v36 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v37 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v36)
  {
    if (v37 > 128)
    {
      goto LABEL_14;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v38 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v25(v18, v9);
    if ((v38 & 1) == 0)
    {
      v25(v15, v9);
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v37 < 128)
  {
    goto LABEL_11;
  }

LABEL_14:
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v70 = 0uLL;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25(v18, v9);
  v25(v15, v9);
  if ((v40 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_31:
  v25(v21, v9);
  return (v25)(v64, v9);
}

uint64_t static FiniteFieldProtocol.bitmask.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static FixedWidthInteger.max.getter();
}

unint64_t static FiniteField64.mul(_:_:)(unint64_t a1, unint64_t a2)
{
  result = a2 * a1;
  v4 = (a2 * a1) >> 64;
  v5 = result > 0xFFFFFFFF00000001;
  if (v4)
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v4 && (v4 >= 0xFFFFFFFF00000001 ? (v6 = v4 + 0xFFFFFFFF) : (v6 = v4), v6))
    {
      return __umodti3();
    }

    else if (result >= 0xFFFFFFFF00000001)
    {
      result += 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (result >= 0xFFFFFFFF00000001)
    {
      v7 = 0;
    }

    else
    {
      v7 = result;
    }

    if (v4)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

unint64_t static FiniteField64.intToInternalValue(_:)(unint64_t result)
{
  if (result >= 0xFFFFFFFF00000001)
  {
    result += 0xFFFFFFFFLL;
  }

  return result;
}

unint64_t protocol witness for static FiniteFieldProtocol.mul(_:_:) in conformance FiniteField64@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *a1;
  result = *a2 * *a1;
  v5 = (*a2 * v3) >> 64;
  v6 = result > 0xFFFFFFFF00000001;
  if (v5)
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v5)
    {
      if (v5 >= 0xFFFFFFFF00000001)
      {
        v7 = v5 + 0xFFFFFFFF;
      }

      else
      {
        v7 = v5;
      }

      if (v7)
      {
        result = __umodti3();
        *a3 = result;
        return result;
      }

      v9 = result + 0xFFFFFFFF;
    }

    else
    {
      v9 = result + 0xFFFFFFFF;
    }

    if (result >= 0xFFFFFFFF00000001)
    {
      result = v9;
    }

    *a3 = result;
  }

  else if (v5)
  {
    *a3 = 0;
  }

  else
  {
    if (result >= 0xFFFFFFFF00000001)
    {
      result = 0;
    }

    *a3 = result;
  }

  return result;
}

uint64_t *protocol witness for static FiniteFieldProtocol.intToInternalValue(_:) in conformance FiniteField64@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  if (*result >= 0xFFFFFFFF00000001)
  {
    v2 = *result + 0xFFFFFFFFLL;
  }

  *a2 = v2;
  return result;
}

uint64_t static MontgomeryFiniteField.intToInternalValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v19 = a3;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18 - v10;
  v12 = *(v7 + 24);
  v23 = v4;
  v20 = v12;
  v12(a2, v7);
  swift_getAssociatedConformanceWitness();
  v22 = a1;
  v13 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v14 = *(v9 + 8);
  v14(v11, AssociatedTypeWitness);
  if (v13)
  {
    v20(a2, v7);
    v15 = v22;
    v16 = dispatch thunk of static Comparable.< infix(_:_:)();
    v14(v11, AssociatedTypeWitness);
    if (v16)
    {
      (*(v19 + 16))(a2);
      (*(v7 + 56))(v15, v11, a2, v7);
      return (v14)(v11, AssociatedTypeWitness);
    }

    else
    {
      return dispatch thunk of static AdditiveArithmetic.zero.getter();
    }
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    MEMORY[0x2743B25F0](0x2872656765746E49, 0xE800000000000000);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
    v20(a2, v7);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v14(v11, AssociatedTypeWitness);
    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static MontgomeryFiniteField.internalValueToInt(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v11 - v7;
  swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v9);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  (*(v4 + 56))(v11, v8, a2, v4);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t static MontgomeryFiniteField32.mul(_:_:)(unsigned int a1, unsigned int a2)
{
  v2 = a2 * a1;
  v3 = 4293918721 * (-1048577 * v2);
  v4 = __CFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
    result = (HIDWORD(v5) + 0xFFFFF);
    if (HIDWORD(v5) >= 0xFFF00001)
    {
      __break(1u);
    }
  }

  else if (v5 >= 0xFFF0000100000000)
  {
    return (HIDWORD(v5) + 0xFFFFF);
  }

  else
  {
    return HIDWORD(v5);
  }

  return result;
}

unsigned int *protocol witness for static FiniteFieldProtocol.mul(_:_:) in conformance MontgomeryFiniteField32@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *a2 * *result;
  v4 = 4293918721 * (-1048577 * v3);
  v5 = __CFADD__(v4, v3);
  v6 = v4 + v3;
  v7 = HIDWORD(v6);
  if (v5)
  {
    if (HIDWORD(v6) >= 0xFFF00001)
    {
      __break(1u);
    }

    else
    {
      *a3 = HIDWORD(v6) + 0xFFFFF;
    }
  }

  else
  {
    if (v6 >= 0xFFF0000100000000)
    {
      LODWORD(v7) = HIDWORD(v6) + 0xFFFFF;
    }

    *a3 = v7;
  }

  return result;
}

unsigned int *protocol witness for static FiniteFieldProtocol.intToInternalValue(_:) in conformance MontgomeryFiniteField32@<X0>(unsigned int *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if (*result < 0xFFF00002)
  {
    if (v2 == -1048575)
    {
      LODWORD(v3) = 0;
LABEL_11:
      *a2 = v3;
      return result;
    }

    v4 = 266338049 * v2;
    v5 = 4503595066065151 * v2;
    v6 = __CFADD__(v5, v4);
    v7 = v5 + v4;
    v3 = HIDWORD(v7);
    if (v6)
    {
      v7 = 0xFFFFFLL;
      v6 = __CFADD__(v3, 0xFFFFF);
      LODWORD(v3) = v3 + 0xFFFFF;
      if (!v6)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    if (v7 >= 0xFFF0000100000000)
    {
      LODWORD(v3) = v3 + 0xFFFFF;
    }

    goto LABEL_11;
  }

  _StringGuts.grow(_:)(40);

  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v8);

  MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v9);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

_DWORD *protocol witness for static FiniteFieldProtocol.internalValueToInt(_:) in conformance MontgomeryFiniteField32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if (*result + 4293918721u * (-1048577 * *result) >= 0xFFF0000100000000)
  {
    v2 = 0;
  }

  else
  {
    v2 = (*result + 4293918721u * (-1048577 * *result)) >> 32;
  }

  *a2 = v2;
  return result;
}

unint64_t static MontgomeryFiniteField40.mul(_:_:)(unint64_t a1, unint64_t a2)
{
  v2 = (a2 * a1) >> 64;
  v3 = (0xCFFE47FFFEAFFFFFLL * a2 * a1 * 0xFFFEB00001uLL) >> 64;
  v4 = __CFADD__(-(a2 * a1), a2 * a1);
  v5 = __CFADD__(v3, v2);
  v6 = v3 + v2;
  if (v5)
  {
    v7 = v6 + v4;
    result = v7 - 0xFFFEB00001;
    if (v7 < 0xFFFEB00001)
    {
      return result;
    }

    __break(1u);
    return 0xFFFFFF00014FFFFELL;
  }

  if (v6 == -1)
  {
    if (v4)
    {
      return 0xFFFFFF00014FFFFFLL;
    }

    return 0xFFFFFF00014FFFFELL;
  }

  v9 = v6 + v4;
  if (v9 >= 0xFFFEB00001)
  {
    return v9 - 0xFFFEB00001;
  }

  else
  {
    return v9;
  }
}

void *protocol witness for static FiniteFieldProtocol.mul(_:_:) in conformance MontgomeryFiniteField40@<X0>(void *result@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = 0xFFFFFF00014FFFFFLL;
  v4 = (*a2 * *result) >> 64;
  v5 = *a2 * *result;
  v6 = (0xCFFE47FFFEAFFFFFLL * v5 * 0xFFFEB00001uLL) >> 64;
  v7 = __CFADD__(-v5, v5);
  v8 = __CFADD__(v6, v4);
  v9 = v6 + v4;
  if (v8)
  {
    v10 = v9 + v7;
    v3 = v10 - 0xFFFEB00001;
    if (v10 < 0xFFFEB00001)
    {
LABEL_7:
      *a3 = v3;
      return result;
    }

    __break(1u);
LABEL_15:
    *a3 = v3 - 1;
    return result;
  }

  if (v9 == -1)
  {
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v11 = v9 + v7;
  v12 = v11 - 0xFFFEB00001;
  if (v11 < 0xFFFEB00001)
  {
    v12 = v11;
  }

  *a3 = v12;
  return result;
}

unint64_t *protocol witness for static FiniteFieldProtocol.intToInternalValue(_:) in conformance MontgomeryFiniteField40@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *result;
  if (*result > 0xFFFEB00001)
  {
    _StringGuts.grow(_:)(40);

    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v7);

    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (*result == 0xFFFEB00001)
    {
      v3 = 0;
    }

    else
    {
      v4 = (v2 * 0x160DCD7524uLL) >> 64;
      v5 = (0x1B8024032F28ADCLL * v2 * 0xFFFEB00001uLL) >> 64;
      v6 = v4 + __CFADD__(0xFFFFFFE9F2328ADCLL * v2, 0x160DCD7524 * v2) + v5;
      if (v6 >= 0xFFFEB00001)
      {
        v3 = v6 - 0xFFFEB00001;
      }

      else
      {
        v3 = v4 + __CFADD__(0xFFFFFFE9F2328ADCLL * v2, 0x160DCD7524 * v2) + v5;
      }
    }

    *a2 = v3;
  }

  return result;
}

void *protocol witness for static FiniteFieldProtocol.internalValueToInt(_:) in conformance MontgomeryFiniteField40@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  if (__CFADD__(-*result, *result))
  {
    v2 = ((0xCFFE47FFFEAFFFFFLL * *result * 0xFFFEB00001uLL) >> 64) + 1;
  }

  else
  {
    v2 = (0xCFFE47FFFEAFFFFFLL * *result * 0xFFFEB00001uLL) >> 64;
  }

  if (v2 >= 0xFFFEB00001)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t static MontgomeryFiniteField64.mul(_:_:)(unint64_t a1, unint64_t a2)
{
  v2 = (a2 * a1) >> 64;
  v3 = (0xFFFFFFFEFFFFFFFFLL * a2 * a1 * 0xFFFFFFFF00000001) >> 64;
  v4 = __CFADD__(-(a2 * a1), a2 * a1);
  v5 = __CFADD__(v3, v2);
  v6 = v3 + v2;
  if (v5)
  {
    v7 = v6 + v4;
  }

  else
  {
    if (v6 != -1)
    {
      v9 = v6 + v4;
      if (v9 >= 0xFFFFFFFF00000001)
      {
        return v9 + 0xFFFFFFFF;
      }

      else
      {
        return v9;
      }
    }

    if (!v4)
    {
      return 4294967294;
    }

    v7 = 0;
  }

  result = v7 + 0xFFFFFFFF;
  if (v7 >= 0xFFFFFFFF00000001)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for static FiniteFieldProtocol.mul(_:_:) in conformance MontgomeryFiniteField64@<X0>(void *result@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = (*a2 * *result) >> 64;
  v4 = *a2 * *result;
  v5 = (0xFFFFFFFEFFFFFFFFLL * v4 * 0xFFFFFFFF00000001) >> 64;
  v6 = __CFADD__(-v4, v4);
  v7 = __CFADD__(v5, v3);
  v8 = v5 + v3;
  if (v7)
  {
    v9 = v8 + v6;
LABEL_7:
    v7 = __CFADD__(v9, 0xFFFFFFFFLL);
    v10 = v9 + 0xFFFFFFFFLL;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      *a3 = v10;
    }

    return result;
  }

  if (v8 == -1)
  {
    if (!v6)
    {
      *a3 = 4294967294;
      return result;
    }

    v9 = 0;
    goto LABEL_7;
  }

  v11 = v8 + v6;
  if (v11 >= 0xFFFFFFFF00000001)
  {
    v11 += 0xFFFFFFFFLL;
  }

  *a3 = v11;
  return result;
}

unint64_t *protocol witness for static FiniteFieldProtocol.intToInternalValue(_:) in conformance MontgomeryFiniteField64@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *result;
  if (*result >= 0xFFFFFFFF00000002)
  {
    _StringGuts.grow(_:)(40);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (v2 == 0xFFFFFFFF00000001)
    {
      v3 = 0;
    }

    else
    {
      v4 = (v2 * 0xFFFFFFFE00000001) >> 64;
      v5 = (0xFFFFFFFF * v2 * 0xFFFFFFFF00000001) >> 64;
      LODWORD(v3) = __CFADD__(0x1FFFFFFFFLL * v2, 0xFFFFFFFE00000001 * v2);
      v6 = v5 + v4;
      if (__CFADD__(v5, v4))
      {
        v7 = v6 + v3;
        goto LABEL_10;
      }

      while (v6 == -1)
      {
        if ((v3 & 1) == 0)
        {
          v3 = 4294967294;
          goto LABEL_20;
        }

        v7 = 0;
LABEL_10:
        v6 = 0xFFFFFFFFLL;
        v8 = __CFADD__(v7, 0xFFFFFFFFLL);
        v3 = v7 + 0xFFFFFFFFLL;
        if (!v8)
        {
          goto LABEL_20;
        }

        __break(1u);
      }

      v3 = v6 + (v3 & 1);
      if (v3 >= 0xFFFFFFFF00000001)
      {
        v3 += 0xFFFFFFFFLL;
      }
    }

LABEL_20:
    *a2 = v3;
  }

  return result;
}

void *protocol witness for static FiniteFieldProtocol.internalValueToInt(_:) in conformance MontgomeryFiniteField64@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v2 = (0xFFFFFFFEFFFFFFFFLL * *result * 0xFFFFFFFF00000001) >> 64;
  if (!__CFADD__(-*result, *result))
  {
    goto LABEL_5;
  }

  if (v2 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    ++v2;
LABEL_5:
    *a2 = v2;
    return result;
  }

  *a2 = v2 + 0x100000000;
  return result;
}

double one-time initialization function for p()
{
  *&result = 1;
  static MontgomeryFiniteField128.p = xmmword_270C491F0;
  return result;
}

double one-time initialization function for g()
{
  result = -6.64630084e231;
  static MontgomeryFiniteField128.g = xmmword_270C49200;
  return result;
}

double one-time initialization function for roots()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF8_UInt128VGMd, &_ss23_ContiguousArrayStorageCy4VDAF8_UInt128VGMR);
  v0 = swift_allocObject();
  v0[1] = xmmword_270C49210;
  v0[2] = xmmword_270C49220;
  v0[3] = xmmword_270C49230;
  v0[4] = xmmword_270C49240;
  v0[5] = xmmword_270C49250;
  v0[6] = xmmword_270C49260;
  v0[7] = xmmword_270C49270;
  v0[8] = xmmword_270C49280;
  v0[9] = xmmword_270C49290;
  v0[10] = xmmword_270C492A0;
  v0[11] = xmmword_270C492B0;
  v0[12] = xmmword_270C492C0;
  v0[13] = xmmword_270C492D0;
  v0[14] = xmmword_270C492E0;
  v0[15] = xmmword_270C492F0;
  v0[16] = xmmword_270C49300;
  v0[17] = xmmword_270C49310;
  v0[18] = xmmword_270C49320;
  v0[19] = xmmword_270C49330;
  v0[20] = xmmword_270C49340;
  result = -4.77001136e179;
  v0[21] = xmmword_270C49350;
  v0[22] = xmmword_270C49360;
  static MontgomeryFiniteField128.roots = v0;
  return result;
}

uint64_t static MontgomeryFiniteField128.roots.getter()
{
  if (one-time initialization token for roots != -1)
  {
    swift_once();
  }
}

double one-time initialization function for r2()
{
  result = NAN;
  static MontgomeryFiniteField128.r2 = xmmword_270C49370;
  return result;
}

__int128 *MontgomeryFiniteField128.r2.unsafeMutableAddressor()
{
  if (one-time initialization token for r2 != -1)
  {
    swift_once();
  }

  return &static MontgomeryFiniteField128.r2;
}

double static MontgomeryFiniteField128.r2.getter@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for r2 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static MontgomeryFiniteField128.r2;
  *a1 = static MontgomeryFiniteField128.r2;
  return result;
}

_OWORD *static MontgomeryFiniteField128.mul(_:_:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v39 = *a2;
  v40 = v4;
  _UInt128.multipliedFullWidth(by:)(&v36, &v41, &v39);
  v5 = v36;
  v6 = v41;
  v7 = -v41;
  if (one-time initialization token for p != -1)
  {
    swift_once();
  }

  v41 = static MontgomeryFiniteField128.p;
  v40 = v7;
  _UInt128.multipliedFullWidth(by:)(&v36, &v37, &v40);
  v8 = __CFADD__(v37, v6);
  v9 = v38 + *(&v6 + 1);
  if (__CFADD__(v38, *(&v6 + 1)))
  {
    v10 = 1;
LABEL_11:
    v9 += v8 & 1;
    goto LABEL_13;
  }

  if ((v9 == -1) | v8 & 1)
  {
    v10 = (v9 == -1) & v8;
    v8 |= v9 != -1;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:
  v11 = v5 + v36;
  v12 = __CFADD__(v5, v36);
  v13 = *(&v5 + 1) + *(&v36 + 1);
  if (__CFADD__(*(&v5 + 1), *(&v36 + 1)))
  {
    if (v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v13 == -1)
    {
      v13 = v12 - 1;
      if ((v10 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    if (v12)
    {
LABEL_23:
      ++v13;
      if ((v10 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_20:
      v14 = 1;
      goto LABEL_25;
    }
  }

  if (v10)
  {
    goto LABEL_20;
  }

LABEL_24:
  v14 = 0;
LABEL_25:
  v15 = v11 + v14;
  if (__CFADD__(v11, v14))
  {
    v16 = v13 + 1;
  }

  else
  {
    v16 = v13;
  }

  v17 = static MontgomeryFiniteField128.p;
  v39 = static MontgomeryFiniteField128.p;
  v35[0] = -v9;
  v35[1] = 0;
  result = _UInt128.multipliedFullWidth(by:)(&v41, &v40, v35);
  v19 = *(&v41 + 1);
  v20 = __CFADD__(v40, v9);
  v21 = *(&v40 + 1) + v15;
  if (__CFADD__(*(&v40 + 1), v15))
  {
    v21 += v20;
    v22 = v16 + v41;
    v23 = __CFADD__(v16, v41);
    v24 = *(&v41 + 1) + v23;
    v25 = v23 - 1;
    v26 = 1;
    if (*(&v41 + 1) == -1)
    {
      v19 = v25;
    }

    else
    {
      v26 = 1;
      v19 = v24;
    }

    goto LABEL_60;
  }

  if (v21 != -1 && !v20)
  {
    v22 = v16 + v41;
    v29 = __CFADD__(v16, v41);
    if (*(&v41 + 1) == -1)
    {
      v19 = v29 - 1;
    }

    else
    {
      v19 = *(&v41 + 1) + v29;
    }

    goto LABEL_59;
  }

  v27 = v21 == -1 && v20;
  v21 += (v21 != -1) | v20;
  v22 = v16 + v41;
  v28 = __CFADD__(v16, v41);
  if (*(&v41 + 1) == -1)
  {
    v19 = v28 - 1;
    if (v27)
    {
      goto LABEL_58;
    }

    goto LABEL_59;
  }

  if (!v28)
  {
    if (v27)
    {
      goto LABEL_58;
    }

LABEL_59:
    v26 = 0;
    goto LABEL_60;
  }

  v19 = *(&v41 + 1) + 1;
  if (!v27)
  {
    goto LABEL_59;
  }

LABEL_58:
  v26 = 1;
LABEL_60:
  v30 = __CFADD__(v22, v26);
  v31 = v22 + v26;
  v32 = v30;
  if (v19 != v32 << 63 >> 63)
  {
    goto LABEL_67;
  }

  v33 = v21 < v17;
  if (v31 != *(&v17 + 1))
  {
    v33 = v31 < *(&v17 + 1);
  }

  if (!v33)
  {
LABEL_67:
    v30 = v21 >= v17;
    v21 -= v17;
    v34 = !v30;
    v31 = v31 - *(&v17 + 1) - v34;
  }

  *a3 = v21;
  a3[1] = v31;
  return result;
}

double protocol witness for static MontgomeryFiniteField.r2.getter in conformance MontgomeryFiniteField128@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for r2 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static MontgomeryFiniteField128.r2;
  *a1 = static MontgomeryFiniteField128.r2;
  return result;
}

uint64_t protocol witness for static FiniteFieldProtocol.roots.getter in conformance MontgomeryFiniteField128()
{
  if (one-time initialization token for roots != -1)
  {
    swift_once();
  }
}

_OWORD *protocol witness for static FiniteFieldProtocol.mul(_:_:) in conformance MontgomeryFiniteField128@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v37 = *a2;
  v38 = v4;
  _UInt128.multipliedFullWidth(by:)(&v34, &v39, &v37);
  v5 = v34;
  v6 = v39;
  v7 = -v39;
  if (one-time initialization token for p != -1)
  {
    swift_once();
  }

  v39 = static MontgomeryFiniteField128.p;
  v38 = v7;
  _UInt128.multipliedFullWidth(by:)(&v34, &v35, &v38);
  v8 = __CFADD__(v35, v6);
  v9 = v36 + *(&v6 + 1);
  if (__CFADD__(v36, *(&v6 + 1)))
  {
    v10 = 1;
LABEL_11:
    v9 += v8 & 1;
    goto LABEL_13;
  }

  if ((v9 == -1) | v8 & 1)
  {
    v10 = (v9 == -1) & v8;
    v8 |= v9 != -1;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:
  v11 = v5 + v34;
  v12 = __CFADD__(v5, v34);
  v13 = *(&v5 + 1) + *(&v34 + 1);
  if (__CFADD__(*(&v5 + 1), *(&v34 + 1)))
  {
    if (v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v13 == -1)
    {
      v13 = v12 - 1;
      if ((v10 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    if (v12)
    {
LABEL_23:
      ++v13;
      if ((v10 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_20:
      v14 = 1;
      goto LABEL_25;
    }
  }

  if (v10)
  {
    goto LABEL_20;
  }

LABEL_24:
  v14 = 0;
LABEL_25:
  v15 = v11 + v14;
  if (__CFADD__(v11, v14))
  {
    v16 = v13 + 1;
  }

  else
  {
    v16 = v13;
  }

  v17 = static MontgomeryFiniteField128.p;
  v37 = static MontgomeryFiniteField128.p;
  v33[0] = -v9;
  v33[1] = 0;
  result = _UInt128.multipliedFullWidth(by:)(&v39, &v38, v33);
  v19 = *(&v39 + 1);
  v20 = __CFADD__(v38, v9);
  v21 = *(&v38 + 1) + v15;
  if (__CFADD__(*(&v38 + 1), v15))
  {
    v21 += v20;
    v22 = v16 + v39;
    v23 = __CFADD__(v16, v39);
    if (*(&v39 + 1) == -1)
    {
      v19 = v23 - 1;
    }

    else
    {
      v19 = *(&v39 + 1) + v23;
    }

    v24 = 1;
    goto LABEL_61;
  }

  if (v21 != -1 && !v20)
  {
    v22 = v16 + v39;
    v27 = __CFADD__(v16, v39);
    if (*(&v39 + 1) == -1)
    {
      v19 = v27 - 1;
    }

    else
    {
      v19 = *(&v39 + 1) + v27;
    }

    goto LABEL_60;
  }

  v25 = v21 == -1 && v20;
  v21 += (v21 != -1) | v20;
  v22 = v16 + v39;
  v26 = __CFADD__(v16, v39);
  if (*(&v39 + 1) == -1)
  {
    v19 = v26 - 1;
    if (v25)
    {
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if (!v26)
  {
    if (v25)
    {
      goto LABEL_59;
    }

LABEL_60:
    v24 = 0;
    goto LABEL_61;
  }

  v19 = *(&v39 + 1) + 1;
  if (!v25)
  {
    goto LABEL_60;
  }

LABEL_59:
  v24 = 1;
LABEL_61:
  v28 = __CFADD__(v22, v24);
  v29 = v22 + v24;
  v30 = v28;
  if (v19 != v30 << 63 >> 63)
  {
    goto LABEL_68;
  }

  v31 = v21 < v17;
  if (v29 != *(&v17 + 1))
  {
    v31 = v29 < *(&v17 + 1);
  }

  if (!v31)
  {
LABEL_68:
    v28 = v21 >= v17;
    v21 -= v17;
    v32 = !v28;
    v29 = v29 - *(&v17 + 1) - v32;
  }

  *a3 = v21;
  a3[1] = v29;
  return result;
}