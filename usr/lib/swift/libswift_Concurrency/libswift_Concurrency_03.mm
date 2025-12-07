uint64_t storeEnumTagSinglePayload for TaskGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for AsyncThrowingStream._Storage(void *a1)
{
  result = type metadata accessor for AsyncThrowingStream._Storage.State(319, a1[10], a1[11], a1[12]);
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

uint64_t type metadata completion function for TaskLocal(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for AsyncStream.Continuation.Termination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AsyncStream.Continuation.Termination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTag for AsyncStream.Continuation.BufferingPolicy(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for AsyncStream.Continuation.BufferingPolicy(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t type metadata completion function for AsyncThrowingStream.Continuation.Termination(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AsyncThrowingStream.Continuation.Termination(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = *(v5 + 64) + 1;
  }

  if (v6 >= 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = *(v5 + 80);
  if (v9 > 7 || (*(v5 + 80) & 0x100000) != 0 || v8 > 0x18)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v9 + 16) & ~v9));

    return a1;
  }

  if (v6 <= 1)
  {
    if (*(a2 + v7))
    {
      v13 = (*(a2 + v7) - 1) << (8 * v7);
      if (v7 > 3)
      {
        v13 = 0;
      }

      if (v7)
      {
        v14 = v7 <= 3 ? v7 : 4;
        if (v14 > 2)
        {
          v15 = v14 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
        }

        else
        {
          v15 = v14 == 1 ? *a2 : *a2;
        }
      }

      else
      {
        v15 = 0;
      }

      if ((v15 | v13) != 0xFFFFFFFF)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_28;
  }

  v16 = a2;
  v17 = (*(v5 + 48))(a2, *(v5 + 84), v4);
  a2 = v16;
  if (v17 < 2)
  {
LABEL_28:
    v18 = a2;
    if (!(*(v5 + 48))(a2, 1, v4))
    {
      (*(v5 + 16))(a1, v18, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      if (v6 > 1)
      {
        return a1;
      }

      goto LABEL_30;
    }

    memcpy(a1, v18, v7);
    if (v6 <= 1)
    {
LABEL_30:
      *(a1 + v7) = 0;
    }

    return a1;
  }

LABEL_40:

  return memcpy(a1, a2, v8);
}

unsigned __int16 *destroy for AsyncThrowingStream.Continuation.Termination(unsigned __int16 *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = *(v4 + 64);
  }

  else
  {
    v6 = *(v4 + 64) + 1;
  }

  v9 = *(v3 - 8);
  if (v5 > 1)
  {
    result = (*(v4 + 48))(result);
    v4 = v9;
    if (result >= 2)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (!*(result + v6))
  {
    goto LABEL_21;
  }

  v7 = (*(result + v6) - 1) << (8 * v6);
  if (v6 > 3)
  {
    v7 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *result | (*(result + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *result;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *result;
    }

    else
    {
      LODWORD(v6) = *result;
    }
  }

  if ((v6 | v7) == 0xFFFFFFFF)
  {
LABEL_21:
    result = (*(v4 + 48))(v2, 1, v3);
    if (!result)
    {
      v8 = *(v9 + 8);

      return v8(v2, v3);
    }
  }

  return result;
}

void *initializeWithCopy for AsyncThrowingStream.Continuation.Termination(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  if (v7 <= 1)
  {
    if (*(a2 + v8))
    {
      v9 = (*(a2 + v8) - 1) << (8 * v8);
      if (v8 > 3)
      {
        v9 = 0;
      }

      if (v8)
      {
        v10 = v8 <= 3 ? v8 : 4;
        if (v10 > 2)
        {
          v11 = v10 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
        }

        else
        {
          v11 = v10 == 1 ? *a2 : *a2;
        }
      }

      else
      {
        v11 = 0;
      }

      if ((v11 | v9) != 0xFFFFFFFF)
      {
        goto LABEL_28;
      }
    }

LABEL_16:
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v8);
      if (v7 > 1)
      {
        return a1;
      }
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      if (v7 > 1)
      {
        return a1;
      }
    }

    *(a1 + v8) = 0;
    return a1;
  }

  if ((*(v6 + 48))(a2, *(v6 + 84), v5) < 2)
  {
    goto LABEL_16;
  }

LABEL_28:
  if (v7 >= 2)
  {
    v13 = v8;
  }

  else
  {
    v13 = v8 + 1;
  }

  return memcpy(a1, a2, v13);
}

unsigned __int16 *assignWithCopy for AsyncThrowingStream.Continuation.Termination(unsigned __int16 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  if (v7 > 1)
  {
    v13 = *(v6 + 48);
    v14 = v13(a1, *(v6 + 84), v5);
    v15 = v13(a2, v7, v5);
    if (v14 >= 2)
    {
      if (v15 >= 2)
      {
LABEL_68:
        if (v7 >= 2)
        {
          v27 = v8;
        }

        else
        {
          v27 = v8 + 1;
        }

        v25 = a1;
        v26 = a2;
        goto LABEL_72;
      }

      goto LABEL_75;
    }

    if (v15 >= 2)
    {
LABEL_56:
      if (!v13(a1, 1, v5))
      {
        (*(v6 + 8))(a1, v5);
      }

      goto LABEL_68;
    }
  }

  else
  {
    v9 = 8 * v8;
    if (*(a1 + v8))
    {
      v10 = (*(a1 + v8) - 1) << v9;
      if (v8 > 3)
      {
        v10 = 0;
      }

      if (v8)
      {
        v11 = v8 <= 3 ? v8 : 4;
        if (v11 > 2)
        {
          v12 = v11 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
        }

        else
        {
          v12 = v11 == 1 ? *a1 : *a1;
        }
      }

      else
      {
        v12 = 0;
      }

      if ((v12 | v10) != 0xFFFFFFFF)
      {
        if (a2[v8])
        {
          v16 = (a2[v8] - 1) << v9;
          if (v8 > 3)
          {
            v16 = 0;
          }

          if (v8)
          {
            v17 = v8 <= 3 ? v8 : 4;
            if (v17 > 2)
            {
              v18 = v17 == 3 ? *a2 | (a2[2] << 16) : *a2;
            }

            else
            {
              v18 = v17 == 1 ? *a2 : *a2;
            }
          }

          else
          {
            v18 = 0;
          }

          if ((v18 | v16) != 0xFFFFFFFF)
          {
            goto LABEL_68;
          }
        }

LABEL_75:
        if (!(*(v6 + 48))(a2, 1, v5))
        {
          (*(v6 + 16))(a1, a2, v5);
          (*(v6 + 56))(a1, 0, 1, v5);
          if (v7 > 1)
          {
            return a1;
          }

          goto LABEL_77;
        }

        memcpy(a1, a2, v8);
        if (v7 <= 1)
        {
LABEL_77:
          *(a1 + v8) = 0;
        }

        return a1;
      }
    }

    if (a2[v8])
    {
      v19 = (a2[v8] - 1) << v9;
      if (v8 > 3)
      {
        v19 = 0;
      }

      if (v8)
      {
        v20 = v8 <= 3 ? v8 : 4;
        if (v20 > 2)
        {
          v21 = v20 == 3 ? *a2 | (a2[2] << 16) : *a2;
        }

        else
        {
          v21 = v20 == 1 ? *a2 : *a2;
        }
      }

      else
      {
        v21 = 0;
      }

      if ((v21 | v19) != 0xFFFFFFFF)
      {
        v13 = *(v6 + 48);
        goto LABEL_56;
      }
    }
  }

  v22 = *(v6 + 48);
  v23 = v22(a1, 1, v5);
  v24 = v22(a2, 1, v5);
  if (v23)
  {
    if (!v24)
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      return a1;
    }
  }

  else
  {
    if (!v24)
    {
      (*(v6 + 24))(a1, a2, v5);
      return a1;
    }

    (*(v6 + 8))(a1, v5);
  }

  v25 = a1;
  v26 = a2;
  v27 = v8;
LABEL_72:

  return memcpy(v25, v26, v27);
}

void *initializeWithTake for AsyncThrowingStream.Continuation.Termination(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  if (v7 <= 1)
  {
    if (*(a2 + v8))
    {
      v9 = (*(a2 + v8) - 1) << (8 * v8);
      if (v8 > 3)
      {
        v9 = 0;
      }

      if (v8)
      {
        v10 = v8 <= 3 ? v8 : 4;
        if (v10 > 2)
        {
          v11 = v10 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
        }

        else
        {
          v11 = v10 == 1 ? *a2 : *a2;
        }
      }

      else
      {
        v11 = 0;
      }

      if ((v11 | v9) != 0xFFFFFFFF)
      {
        goto LABEL_28;
      }
    }

LABEL_16:
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v8);
      if (v7 > 1)
      {
        return a1;
      }
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      if (v7 > 1)
      {
        return a1;
      }
    }

    *(a1 + v8) = 0;
    return a1;
  }

  if ((*(v6 + 48))(a2, *(v6 + 84), v5) < 2)
  {
    goto LABEL_16;
  }

LABEL_28:
  if (v7 >= 2)
  {
    v13 = v8;
  }

  else
  {
    v13 = v8 + 1;
  }

  return memcpy(a1, a2, v13);
}

unsigned __int16 *assignWithTake for AsyncThrowingStream.Continuation.Termination(unsigned __int16 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  if (v7 > 1)
  {
    v13 = *(v6 + 48);
    v14 = v13(a1, *(v6 + 84), v5);
    v15 = v13(a2, v7, v5);
    if (v14 >= 2)
    {
      if (v15 >= 2)
      {
LABEL_68:
        if (v7 >= 2)
        {
          v27 = v8;
        }

        else
        {
          v27 = v8 + 1;
        }

        v25 = a1;
        v26 = a2;
        goto LABEL_72;
      }

      goto LABEL_75;
    }

    if (v15 >= 2)
    {
LABEL_56:
      if (!v13(a1, 1, v5))
      {
        (*(v6 + 8))(a1, v5);
      }

      goto LABEL_68;
    }
  }

  else
  {
    v9 = 8 * v8;
    if (*(a1 + v8))
    {
      v10 = (*(a1 + v8) - 1) << v9;
      if (v8 > 3)
      {
        v10 = 0;
      }

      if (v8)
      {
        v11 = v8 <= 3 ? v8 : 4;
        if (v11 > 2)
        {
          v12 = v11 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
        }

        else
        {
          v12 = v11 == 1 ? *a1 : *a1;
        }
      }

      else
      {
        v12 = 0;
      }

      if ((v12 | v10) != 0xFFFFFFFF)
      {
        if (a2[v8])
        {
          v16 = (a2[v8] - 1) << v9;
          if (v8 > 3)
          {
            v16 = 0;
          }

          if (v8)
          {
            v17 = v8 <= 3 ? v8 : 4;
            if (v17 > 2)
            {
              v18 = v17 == 3 ? *a2 | (a2[2] << 16) : *a2;
            }

            else
            {
              v18 = v17 == 1 ? *a2 : *a2;
            }
          }

          else
          {
            v18 = 0;
          }

          if ((v18 | v16) != 0xFFFFFFFF)
          {
            goto LABEL_68;
          }
        }

LABEL_75:
        if (!(*(v6 + 48))(a2, 1, v5))
        {
          (*(v6 + 32))(a1, a2, v5);
          (*(v6 + 56))(a1, 0, 1, v5);
          if (v7 > 1)
          {
            return a1;
          }

          goto LABEL_77;
        }

        memcpy(a1, a2, v8);
        if (v7 <= 1)
        {
LABEL_77:
          *(a1 + v8) = 0;
        }

        return a1;
      }
    }

    if (a2[v8])
    {
      v19 = (a2[v8] - 1) << v9;
      if (v8 > 3)
      {
        v19 = 0;
      }

      if (v8)
      {
        v20 = v8 <= 3 ? v8 : 4;
        if (v20 > 2)
        {
          v21 = v20 == 3 ? *a2 | (a2[2] << 16) : *a2;
        }

        else
        {
          v21 = v20 == 1 ? *a2 : *a2;
        }
      }

      else
      {
        v21 = 0;
      }

      if ((v21 | v19) != 0xFFFFFFFF)
      {
        v13 = *(v6 + 48);
        goto LABEL_56;
      }
    }
  }

  v22 = *(v6 + 48);
  v23 = v22(a1, 1, v5);
  v24 = v22(a2, 1, v5);
  if (v23)
  {
    if (!v24)
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      return a1;
    }
  }

  else
  {
    if (!v24)
    {
      (*(v6 + 40))(a1, a2, v5);
      return a1;
    }

    (*(v6 + 8))(a1, v5);
  }

  v25 = a1;
  v26 = a2;
  v27 = v8;
LABEL_72:

  return memcpy(v25, v26, v27);
}

uint64_t getEnumTagSinglePayload for AsyncThrowingStream.Continuation.Termination(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 < 2)
  {
    v7 = 0;
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_30;
  }

  v10 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_10;
  }

  v12 = ((v9 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v8);
    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_30;
      }

LABEL_10:
      v11 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_30;
      }

LABEL_17:
      v13 = (v11 - 1) << v10;
      if (v8 > 3)
      {
        v13 = 0;
      }

      if (v8)
      {
        if (v8 <= 3)
        {
          v14 = v8;
        }

        else
        {
          v14 = 4;
        }

        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v15 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v15 = *a1;
          }
        }

        else if (v14 == 1)
        {
          v15 = *a1;
        }

        else
        {
          v15 = *a1;
        }
      }

      else
      {
        v15 = 0;
      }

      return v7 + (v15 | v13) + 1;
    }

    v11 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_17;
    }
  }

LABEL_30:
  if (!v7)
  {
    return 0;
  }

  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  v17 = v16 >= 2;
  result = v16 - 2;
  if (result == 0 || !v17)
  {
    return 0;
  }

  return result;
}

void storeEnumTagSinglePayload for AsyncThrowingStream.Continuation.Termination(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
  }

  v11 = v10 - 1;
  if (!v8)
  {
    ++v9;
  }

  if (v8 >= 2)
  {
    v12 = v9;
  }

  else
  {
    v11 = 0;
    v12 = v9 + 1;
  }

  v13 = a3 >= v11;
  v14 = a3 - v11;
  if (v14 == 0 || !v13)
  {
LABEL_20:
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
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
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v11 < a2)
  {
LABEL_21:
    v17 = ~v11 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v12] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (a2 + 1 <= v10)
  {
    if (a2 != -1 && v8 >= 2)
    {
      v23 = *(v7 + 56);

      v23();
    }
  }

  else
  {
    if (v9 <= 3)
    {
      v20 = ~(-1 << (8 * v9));
    }

    else
    {
      v20 = -1;
    }

    if (v9)
    {
      v21 = v20 & (a2 - v10);
      if (v9 <= 3)
      {
        v22 = v9;
      }

      else
      {
        v22 = 4;
      }

      bzero(a1, v9);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else
        {
          *a1 = v21;
        }
      }

      else if (v22 == 1)
      {
        *a1 = v21;
      }

      else
      {
        *a1 = v21;
      }
    }
  }
}

uint64_t getEnumTag for AsyncThrowingStream.Continuation.Termination(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 24) - 8);
  v3 = *(v2 + 84);
  if (v3)
  {
    v4 = *(v2 + 64);
  }

  else
  {
    v4 = *(v2 + 64) + 1;
  }

  if (v3 > 1)
  {
    v6 = (*(v2 + 48))(a1);
    if (v6 >= 2)
    {
      return v6 - 1;
    }

    else
    {
      return 0;
    }
  }

  else if (*(a1 + v4))
  {
    v5 = (*(a1 + v4) - 1) << (8 * v4);
    if (v4 > 3)
    {
      v5 = 0;
    }

    if (v4)
    {
      if (v4 > 3)
      {
        LODWORD(v4) = 4;
      }

      if (v4 > 2)
      {
        if (v4 == 3)
        {
          LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          LODWORD(v4) = *a1;
        }
      }

      else if (v4 == 1)
      {
        LODWORD(v4) = *a1;
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    return (v4 | v5) + 1;
  }

  else
  {
    return 0;
  }
}

unsigned int *destructiveInjectEnumTag for AsyncThrowingStream.Continuation.Termination(unsigned int *result, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 84);
  v5 = v4 - 1;
  if (v4)
  {
    v6 = *(v3 + 64);
  }

  else
  {
    v5 = 0;
    v6 = *(v3 + 64) + 1;
  }

  if (v5 < a2)
  {
    v7 = ~v5 + a2;
    if (v6 >= 4)
    {
      v8 = result;
      bzero(result, v6);
      result = v8;
      *v8 = v7;
      LOBYTE(v8) = 1;
      if (v4 > 1)
      {
        return result;
      }

LABEL_21:
      *(result + v6) = v8;
      return result;
    }

    LODWORD(v8) = (v7 >> (8 * v6)) + 1;
    if (v6)
    {
      v9 = v7 & ~(-1 << (8 * v6));
      v10 = result;
      bzero(result, v6);
      result = v10;
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *v10 = v9;
          if (v4 > 1)
          {
            return result;
          }
        }

        else
        {
          *v10 = v7;
          if (v4 > 1)
          {
            return result;
          }
        }

        goto LABEL_21;
      }

      *v10 = v9;
      *(v10 + 2) = BYTE2(v9);
    }

    if (v4 > 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (v4 > 1)
  {
    if (a2)
    {
      v11 = *(v3 + 56);
      v12 = a2 + 1;

      return v11(result, v12, v4);
    }
  }

  else
  {
    *(result + v6) = 0;
  }

  return result;
}

uint64_t type metadata completion function for AsyncStream.Continuation.YieldResult(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AsyncStream.Continuation.YieldResult(void *result, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = *(v3 + 80);
  if ((v5 & 0x1000F8) != 0 || (v4 + 1) > 0x18)
  {
    v7 = *a2;
    *result = *a2;
    v8 = v7 + (((v5 & 0xF8) + 23) & ~(v5 & 0xF8) & 0x1F8);

    return v8;
  }

  v9 = *(a2 + v4);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v4 <= 3)
    {
      v11 = v4;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *a2;
      }

      else if (v11 == 3)
      {
        v12 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v12 = *a2;
      }

LABEL_22:
      v13 = (v12 | (v10 << (8 * v4))) + 2;
      v9 = v12 + 2;
      if (v4 < 4)
      {
        v9 = v13;
      }

      goto LABEL_24;
    }

    if (v11)
    {
      v12 = *a2;
      goto LABEL_22;
    }
  }

LABEL_24:
  if (v9 == 1)
  {
    v14 = result;
    (*(v3 + 16))();
    result = v14;
    *(v14 + v4) = 1;
  }

  else if (v9)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    *result = *a2;
    *(result + v4) = 0;
  }

  return result;
}

unsigned __int8 *destroy for AsyncStream.Continuation.YieldResult(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = result[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return result;
      }

      v6 = *result;
    }

    else if (v5 == 2)
    {
      v6 = *result;
    }

    else if (v5 == 3)
    {
      v6 = *result | (result[2] << 16);
    }

    else
    {
      v6 = *result;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    v3 = v6 + 2;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

  if (v3 == 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

void *initializeWithCopy for AsyncStream.Continuation.YieldResult(void *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_18;
      }

      v7 = *a2;
    }

    else if (v6 == 2)
    {
      v7 = *a2;
    }

    else if (v6 == 3)
    {
      v7 = *a2 | (a2[2] << 16);
    }

    else
    {
      v7 = *a2;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    v4 = v7 + 2;
    if (v3 < 4)
    {
      v4 = v8;
    }
  }

LABEL_18:
  if (v4 == 1)
  {
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 16))();
    result = v9;
    *(v9 + v3) = 1;
  }

  else if (v4)
  {

    return memcpy(result, a2, v3 + 1);
  }

  else
  {
    *result = *a2;
    *(result + v3) = 0;
  }

  return result;
}

unsigned __int8 *assignWithCopy for AsyncStream.Continuation.YieldResult(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = result[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_21;
      }

      v8 = *result;
    }

    else if (v7 == 2)
    {
      v8 = *result;
    }

    else if (v7 == 3)
    {
      v8 = *result | (result[2] << 16);
    }

    else
    {
      v8 = *result;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

  if (v5 == 1)
  {
    v10 = result;
    v11 = a2;
    (*(v3 + 8))();
    a2 = v11;
    result = v10;
  }

LABEL_21:
  v12 = a2[v4];
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v4 <= 3)
    {
      v14 = v4;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a2;
      }

      else if (v14 == 3)
      {
        v15 = *a2 | (a2[2] << 16);
      }

      else
      {
        v15 = *a2;
      }

LABEL_33:
      v16 = (v15 | (v13 << (8 * v4))) + 2;
      v12 = v15 + 2;
      if (v4 < 4)
      {
        v12 = v16;
      }

      goto LABEL_35;
    }

    if (v14)
    {
      v15 = *a2;
      goto LABEL_33;
    }
  }

LABEL_35:
  if (v12 == 1)
  {
    v17 = result;
    (*(v3 + 16))();
    result = v17;
    v17[v4] = 1;
  }

  else if (v12)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    *result = *a2;
    result[v4] = 0;
  }

  return result;
}

void *initializeWithTake for AsyncStream.Continuation.YieldResult(void *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_18;
      }

      v7 = *a2;
    }

    else if (v6 == 2)
    {
      v7 = *a2;
    }

    else if (v6 == 3)
    {
      v7 = *a2 | (a2[2] << 16);
    }

    else
    {
      v7 = *a2;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    v4 = v7 + 2;
    if (v3 < 4)
    {
      v4 = v8;
    }
  }

LABEL_18:
  if (v4 == 1)
  {
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v9;
    *(v9 + v3) = 1;
  }

  else if (v4)
  {

    return memcpy(result, a2, v3 + 1);
  }

  else
  {
    *result = *a2;
    *(result + v3) = 0;
  }

  return result;
}

unsigned __int8 *assignWithTake for AsyncStream.Continuation.YieldResult(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = result[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_21;
      }

      v8 = *result;
    }

    else if (v7 == 2)
    {
      v8 = *result;
    }

    else if (v7 == 3)
    {
      v8 = *result | (result[2] << 16);
    }

    else
    {
      v8 = *result;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

  if (v5 == 1)
  {
    v10 = result;
    v11 = a2;
    (*(v3 + 8))();
    a2 = v11;
    result = v10;
  }

LABEL_21:
  v12 = a2[v4];
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v4 <= 3)
    {
      v14 = v4;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a2;
      }

      else if (v14 == 3)
      {
        v15 = *a2 | (a2[2] << 16);
      }

      else
      {
        v15 = *a2;
      }

LABEL_33:
      v16 = (v15 | (v13 << (8 * v4))) + 2;
      v12 = v15 + 2;
      if (v4 < 4)
      {
        v12 = v16;
      }

      goto LABEL_35;
    }

    if (v14)
    {
      v15 = *a2;
      goto LABEL_33;
    }
  }

LABEL_35:
  if (v12 == 1)
  {
    v17 = result;
    (*(v3 + 32))();
    result = v17;
    v17[v4] = 1;
  }

  else if (v12)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    *result = *a2;
    result[v4] = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsyncStream.Continuation.YieldResult(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void storeEnumTagSinglePayload for AsyncStream.Continuation.YieldResult(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for AsyncStream.Continuation.YieldResult(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 8;
  if (*(v2 + 64) > 8uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for AsyncStream.Continuation.YieldResult(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t getEnumTagSinglePayload for AsyncStream.Continuation.BufferingPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for AsyncStream.Continuation.BufferingPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CheckedContinuation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CheckedContinuation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of Clock.sleep(until:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v12 = (v9 + *v9);
  v10 = swift_task_alloc(v9[1]);
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  return v12(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for ContinuousClock.Instant(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContinuousClock.Instant(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t destroy for PriorityQueue(void *a1)
{
}

uint64_t initializeBufferWithCopyOfBuffer for PriorityQueue(uint64_t a1, __int128 *a2)
{
  v3 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 16) = v3;

  return a1;
}

uint64_t *assignWithCopy for PriorityQueue(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void *assignWithTake for PriorityQueue(void *a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  *a1 = *a2;
  a1[2] = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for _DequeBufferHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _DequeBufferHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t type metadata completion function for AsyncThrowingStream._Storage.State(void *a1)
{
  type metadata accessor for AsyncThrowingStream._Storage.Terminal(255, a1[2], a1[3], a1[4]);
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncThrowingStream._Storage.State(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = *(v5 + 84);
  if (v8)
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  if (v7 <= 7u && (v7 & 0x100000) == 0 && ((-49 - v7) | v7) - v10 >= 0xFFFFFFFFFFFFFFE7)
  {
    v15 = *a2;
    v14 = a2 + 15;
    *a1 = v15;
    v16 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *(v14 & 0xFFFFFFFFFFFFFFF8);
    v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v18 = ((v14 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
    v19 = *v18;
    *(v17 + 8) = *(v18 + 8);
    *v17 = v19;
    v20 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
    v21 = (((v14 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
    v22 = *v21;

    if (v22 < 0xFFFFFFFF)
    {
      *v20 = *v21;
    }

    else
    {
      v23 = v21[1];
      *v20 = v22;
      *(v20 + 8) = v23;
    }

    v24 = (v20 + 16);
    v25 = (v21 + 2);
    if (v8 > 1)
    {
      if ((*(v6 + 48))(v25, v8, v4) >= 2)
      {
LABEL_41:
        memcpy(v24, v25, v10);
        return v3;
      }
    }

    else if (v25[v9])
    {
      v26 = (v25[v9] - 1) << (8 * v9);
      if (v9 > 3)
      {
        v26 = 0;
      }

      if (v9)
      {
        v27 = v9 <= 3 ? v9 : 4;
        if (v27 > 2)
        {
          v28 = v27 == 3 ? *v25 | (v25[2] << 16) : *v25;
        }

        else
        {
          v28 = v27 == 1 ? *v25 : *v25;
        }
      }

      else
      {
        v28 = 0;
      }

      if ((v28 | v26) != 0xFFFFFFFF)
      {
        goto LABEL_41;
      }
    }

    if ((*(v6 + 48))(v25, 1, v4))
    {
      memcpy(v24, v25, v9);
      if (v8 > 1)
      {
        return v3;
      }
    }

    else
    {
      (*(v6 + 16))(v24, v25, v4);
      (*(v6 + 56))(v24, 0, 1, v4);
      if (v8 > 1)
      {
        return v3;
      }
    }

    *(v24 + v9) = 0;
    return v3;
  }

  v13 = *a2;
  *v3 = *a2;
  v3 = (v13 + ((v7 & 0xF8 ^ 0x1F8u) & (v7 + 16)));

  return v3;
}

uint64_t destroy for AsyncThrowingStream._Storage.State(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = ((v3 + 31) & 0xFFFFFFFFFFFFFFF8);
  if (*v5 >= 0xFFFFFFFFuLL)
  {
  }

  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = ((v5 + *(v8 + 80) + 16) & ~*(v8 + 80));
  v10 = *(v7 + 84);
  if (v10)
  {
    v11 = *(v7 + 64);
  }

  else
  {
    v11 = *(v7 + 64) + 1;
  }

  v14 = *(v6 - 8);
  if (v10 > 1)
  {
    result = (*(v7 + 48))(v9);
    v8 = v14;
    if (result >= 2)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (!*(v9 + v11))
  {
    goto LABEL_23;
  }

  v12 = (*(v9 + v11) - 1) << (8 * v11);
  if (v11 > 3)
  {
    v12 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *v9 | (*(v9 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *v9;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *v9;
    }

    else
    {
      LODWORD(v11) = *v9;
    }
  }

  if ((v11 | v12) == 0xFFFFFFFF)
  {
LABEL_23:
    result = (*(v8 + 48))(v9, 1, v6);
    if (!result)
    {
      v13 = *(v14 + 8);

      return v13(v9, v6);
    }
  }

  return result;
}

void *initializeWithCopy for AsyncThrowingStream._Storage.State(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2 + 15;
  *a1 = v6;
  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  *(v8 + 8) = *(v9 + 8);
  *v8 = v10;
  v11 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
  v12 = (((v5 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;

  if (v13 < 0xFFFFFFFF)
  {
    *v11 = *v12;
  }

  else
  {
    v14 = v12[1];
    *v11 = v13;
    *(v11 + 8) = v14;
  }

  v15 = *(a3 + 24);
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = ((v11 + v17 + 16) & ~v17);
  v19 = ((v12 + v17 + 16) & ~v17);
  v20 = *(v16 + 84);
  if (v20)
  {
    v21 = *(v16 + 64);
  }

  else
  {
    v21 = *(v16 + 64) + 1;
  }

  if (v20 <= 1)
  {
    if (*(v19 + v21))
    {
      v22 = (*(v19 + v21) - 1) << (8 * v21);
      if (v21 > 3)
      {
        v22 = 0;
      }

      if (v21)
      {
        v23 = v21 <= 3 ? v21 : 4;
        if (v23 > 2)
        {
          v24 = v23 == 3 ? *v19 | (*(v19 + 2) << 16) : *v19;
        }

        else
        {
          v24 = v23 == 1 ? *v19 : *v19;
        }
      }

      else
      {
        v24 = 0;
      }

      if ((v24 | v22) != 0xFFFFFFFF)
      {
        goto LABEL_30;
      }
    }

LABEL_19:
    if ((*(v16 + 48))(v19, 1, v15))
    {
      memcpy(v18, v19, v21);
      if (v20 > 1)
      {
        return a1;
      }
    }

    else
    {
      (*(v16 + 16))(v18, v19, v15);
      (*(v16 + 56))(v18, 0, 1, v15);
      if (v20 > 1)
      {
        return a1;
      }
    }

    *(v18 + v21) = 0;
    return a1;
  }

  if ((*(v16 + 48))(v19, *(v16 + 84), v15) < 2)
  {
    goto LABEL_19;
  }

LABEL_30:
  if (v20 >= 2)
  {
    v25 = v21;
  }

  else
  {
    v25 = v21 + 1;
  }

  memcpy(v18, v19, v25);
  return a1;
}

void *assignWithCopy for AsyncThrowingStream._Storage.State(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 + 31;
  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  *((a1 + 15) & 0xFFFFFFFFFFFFFFF8) = *v5;
  v8 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 31;

  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *v9 = v11;
  v12 = (v8 & 0xFFFFFFFFFFFFFFF8);
  v13 = (v6 & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*(v8 & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
  {
    if (v14 >= 0xFFFFFFFF)
    {
      v16 = v13[1];
      *v12 = v14;
      v12[1] = v16;

      goto LABEL_8;
    }
  }

  else
  {
    if (v14 >= 0xFFFFFFFF)
    {
      v15 = v13[1];
      *v12 = v14;
      v12[1] = v15;

      goto LABEL_8;
    }
  }

  *v12 = *v13;
LABEL_8:
  v17 = *(a3 + 24);
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  v20 = ((v12 + v19 + 16) & ~v19);
  v21 = ((v13 + v19 + 16) & ~v19);
  v22 = *(v18 + 84);
  if (v22)
  {
    v23 = *(v18 + 64);
  }

  else
  {
    v23 = *(v18 + 64) + 1;
  }

  if (v22 <= 1)
  {
    v24 = 8 * v23;
    if (*(v20 + v23))
    {
      v25 = (*(v20 + v23) - 1) << v24;
      if (v23 > 3)
      {
        v25 = 0;
      }

      if (v23)
      {
        v26 = v23 <= 3 ? v23 : 4;
        if (v26 > 2)
        {
          v27 = v26 == 3 ? *v20 | (*(v20 + 2) << 16) : *v20;
        }

        else
        {
          v27 = v26 == 1 ? *v20 : *v20;
        }
      }

      else
      {
        v27 = 0;
      }

      if ((v27 | v25) != 0xFFFFFFFF)
      {
        if (v21[v23])
        {
          v31 = (v21[v23] - 1) << v24;
          if (v23 > 3)
          {
            v31 = 0;
          }

          if (v23)
          {
            v32 = v23 <= 3 ? v23 : 4;
            if (v32 > 2)
            {
              v33 = v32 == 3 ? *v21 | (v21[2] << 16) : *v21;
            }

            else
            {
              v33 = v32 == 1 ? *v21 : *v21;
            }
          }

          else
          {
            v33 = 0;
          }

          if ((v33 | v31) != 0xFFFFFFFF)
          {
            goto LABEL_75;
          }
        }

LABEL_79:
        if ((*(v18 + 48))(v21, 1, v17))
        {
          memcpy(v20, v21, v23);
          if (v22 > 1)
          {
            return a1;
          }
        }

        else
        {
          (*(v18 + 16))(v20, v21, v17);
          (*(v18 + 56))(v20, 0, 1, v17);
          if (v22 > 1)
          {
            return a1;
          }
        }

        *(v20 + v23) = 0;
        return a1;
      }
    }

    if (v21[v23])
    {
      v34 = (v21[v23] - 1) << v24;
      if (v23 > 3)
      {
        v34 = 0;
      }

      if (v23)
      {
        v35 = v23 <= 3 ? v23 : 4;
        if (v35 > 2)
        {
          v36 = v35 == 3 ? *v21 | (v21[2] << 16) : *v21;
        }

        else
        {
          v36 = v35 == 1 ? *v21 : *v21;
        }
      }

      else
      {
        v36 = 0;
      }

      if ((v36 | v34) != 0xFFFFFFFF)
      {
        v28 = *(v18 + 48);
LABEL_63:
        if (!v28(v20, 1, v17))
        {
          (*(v18 + 8))(v20, v17);
        }

        goto LABEL_75;
      }
    }

LABEL_65:
    v37 = *(v18 + 48);
    v38 = v37(v20, 1, v17);
    v39 = v37(v21, 1, v17);
    if (v38)
    {
      if (!v39)
      {
        (*(v18 + 16))(v20, v21, v17);
        (*(v18 + 56))(v20, 0, 1, v17);
        return a1;
      }
    }

    else
    {
      if (!v39)
      {
        (*(v18 + 24))(v20, v21, v17);
        return a1;
      }

      (*(v18 + 8))(v20, v17);
    }

    memcpy(v20, v21, v23);
    return a1;
  }

  v28 = *(v18 + 48);
  v29 = v28(v20, *(v18 + 84), v17);
  v30 = v28(v21, v22, v17);
  if (v29 < 2)
  {
    if (v30 >= 2)
    {
      goto LABEL_63;
    }

    goto LABEL_65;
  }

  if (v30 < 2)
  {
    goto LABEL_79;
  }

LABEL_75:
  if (v22 >= 2)
  {
    v40 = v23;
  }

  else
  {
    v40 = v23 + 1;
  }

  memcpy(v20, v21, v40);
  return a1;
}

void *initializeWithTake for AsyncThrowingStream._Storage.State(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  v11 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*v11 < 0xFFFFFFFFuLL)
  {
    *v10 = *v11;
  }

  else
  {
    v12 = *(v11 + 8);
    *v10 = *v11;
    *(v10 + 8) = v12;
  }

  v13 = *(a3 + 24);
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = ((v10 + v15 + 16) & ~v15);
  v17 = ((v11 + v15 + 16) & ~v15);
  v18 = *(v14 + 84);
  if (v18)
  {
    v19 = *(v14 + 64);
  }

  else
  {
    v19 = *(v14 + 64) + 1;
  }

  if (v18 <= 1)
  {
    if (*(v17 + v19))
    {
      v20 = (*(v17 + v19) - 1) << (8 * v19);
      if (v19 > 3)
      {
        v20 = 0;
      }

      if (v19)
      {
        v21 = v19 <= 3 ? v19 : 4;
        if (v21 > 2)
        {
          v22 = v21 == 3 ? *v17 | (*(v17 + 2) << 16) : *v17;
        }

        else
        {
          v22 = v21 == 1 ? *v17 : *v17;
        }
      }

      else
      {
        v22 = 0;
      }

      if ((v22 | v20) != 0xFFFFFFFF)
      {
        goto LABEL_30;
      }
    }

LABEL_19:
    if ((*(v14 + 48))(v17, 1, v13))
    {
      memcpy(v16, v17, v19);
      if (v18 > 1)
      {
        return a1;
      }
    }

    else
    {
      (*(v14 + 32))(v16, v17, v13);
      (*(v14 + 56))(v16, 0, 1, v13);
      if (v18 > 1)
      {
        return a1;
      }
    }

    *(v16 + v19) = 0;
    return a1;
  }

  if ((*(v14 + 48))(v17, *(v14 + 84), v13) < 2)
  {
    goto LABEL_19;
  }

LABEL_30:
  if (v18 >= 2)
  {
    v23 = v19;
  }

  else
  {
    v23 = v19 + 1;
  }

  memcpy(v16, v17, v23);
  return a1;
}

void *assignWithTake for AsyncThrowingStream._Storage.State(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v5;

  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = ((v6 + 31) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v5 + 31) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  if (*v10 < 0xFFFFFFFFuLL)
  {
    if (v12 >= 0xFFFFFFFF)
    {
      v14 = v11[1];
      *v10 = v12;
      v10[1] = v14;
      goto LABEL_8;
    }
  }

  else
  {
    if (v12 >= 0xFFFFFFFF)
    {
      v13 = v11[1];
      *v10 = v12;
      v10[1] = v13;

      goto LABEL_8;
    }
  }

  *v10 = *v11;
LABEL_8:
  v15 = *(a3 + 24);
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = ((v10 + v17 + 16) & ~v17);
  v19 = ((v11 + v17 + 16) & ~v17);
  v20 = *(v16 + 84);
  if (v20)
  {
    v21 = *(v16 + 64);
  }

  else
  {
    v21 = *(v16 + 64) + 1;
  }

  if (v20 <= 1)
  {
    v22 = 8 * v21;
    if (*(v18 + v21))
    {
      v23 = (*(v18 + v21) - 1) << v22;
      if (v21 > 3)
      {
        v23 = 0;
      }

      if (v21)
      {
        v24 = v21 <= 3 ? v21 : 4;
        if (v24 > 2)
        {
          v25 = v24 == 3 ? *v18 | (*(v18 + 2) << 16) : *v18;
        }

        else
        {
          v25 = v24 == 1 ? *v18 : *v18;
        }
      }

      else
      {
        v25 = 0;
      }

      if ((v25 | v23) != 0xFFFFFFFF)
      {
        if (v19[v21])
        {
          v29 = (v19[v21] - 1) << v22;
          if (v21 > 3)
          {
            v29 = 0;
          }

          if (v21)
          {
            v30 = v21 <= 3 ? v21 : 4;
            if (v30 > 2)
            {
              v31 = v30 == 3 ? *v19 | (v19[2] << 16) : *v19;
            }

            else
            {
              v31 = v30 == 1 ? *v19 : *v19;
            }
          }

          else
          {
            v31 = 0;
          }

          if ((v31 | v29) != 0xFFFFFFFF)
          {
            goto LABEL_75;
          }
        }

LABEL_79:
        if ((*(v16 + 48))(v19, 1, v15))
        {
          memcpy(v18, v19, v21);
          if (v20 > 1)
          {
            return a1;
          }
        }

        else
        {
          (*(v16 + 32))(v18, v19, v15);
          (*(v16 + 56))(v18, 0, 1, v15);
          if (v20 > 1)
          {
            return a1;
          }
        }

        *(v18 + v21) = 0;
        return a1;
      }
    }

    if (v19[v21])
    {
      v32 = (v19[v21] - 1) << v22;
      if (v21 > 3)
      {
        v32 = 0;
      }

      if (v21)
      {
        v33 = v21 <= 3 ? v21 : 4;
        if (v33 > 2)
        {
          v34 = v33 == 3 ? *v19 | (v19[2] << 16) : *v19;
        }

        else
        {
          v34 = v33 == 1 ? *v19 : *v19;
        }
      }

      else
      {
        v34 = 0;
      }

      if ((v34 | v32) != 0xFFFFFFFF)
      {
        v26 = *(v16 + 48);
LABEL_63:
        if (!v26(v18, 1, v15))
        {
          (*(v16 + 8))(v18, v15);
        }

        goto LABEL_75;
      }
    }

LABEL_65:
    v35 = *(v16 + 48);
    v36 = v35(v18, 1, v15);
    v37 = v35(v19, 1, v15);
    if (v36)
    {
      if (!v37)
      {
        (*(v16 + 32))(v18, v19, v15);
        (*(v16 + 56))(v18, 0, 1, v15);
        return a1;
      }
    }

    else
    {
      if (!v37)
      {
        (*(v16 + 40))(v18, v19, v15);
        return a1;
      }

      (*(v16 + 8))(v18, v15);
    }

    memcpy(v18, v19, v21);
    return a1;
  }

  v26 = *(v16 + 48);
  v27 = v26(v18, *(v16 + 84), v15);
  v28 = v26(v19, v20, v15);
  if (v27 < 2)
  {
    if (v28 >= 2)
    {
      goto LABEL_63;
    }

    goto LABEL_65;
  }

  if (v28 < 2)
  {
    goto LABEL_79;
  }

LABEL_75:
  if (v20 >= 2)
  {
    v38 = v21;
  }

  else
  {
    v38 = v21 + 1;
  }

  memcpy(v18, v19, v38);
  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncThrowingStream._Storage.State(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 >= 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v5 >= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 + 1;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v4 + 80);
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_35;
  }

  v14 = v10 + ((v12 + 48) & ~v12);
  v15 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_17;
  }

  v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
  if (HIWORD(v17))
  {
    v16 = *(a1 + v14);
    if (v16)
    {
      goto LABEL_24;
    }

LABEL_35:
    v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v9 & 0x80000000) == 0)
    {
      v20 = *v19;
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }

    if (v5 >= 2)
    {
      v22 = (*(v4 + 48))((((v19 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 32) & ~v12);
      v23 = v22 >= 2;
      result = v22 - 2;
      if (result != 0 && v23)
      {
        return result;
      }
    }

    return 0;
  }

  if (v17 > 0xFF)
  {
    v16 = *(a1 + v14);
    if (*(a1 + v14))
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

  if (v17 < 2)
  {
    goto LABEL_35;
  }

LABEL_17:
  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_35;
  }

LABEL_24:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v11 + (v14 | v18) + 1;
}

void storeEnumTagSinglePayload for AsyncThrowingStream._Storage.State(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (!v8)
  {
    ++v9;
  }

  if (v8 >= 2)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8 >= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v9 + 1;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v7 + 80);
  v15 = ((v14 + 48) & ~v14) + v12;
  v16 = a3 >= v13;
  v17 = a3 - v13;
  if (v17 != 0 && v16)
  {
    v6 = 1;
    if (v15 <= 3)
    {
      v18 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      v19 = HIWORD(v18);
      if (v18 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v18 >= 2)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      if (v19)
      {
        v6 = 4;
      }

      else
      {
        v6 = v21;
      }
    }
  }

  if (v13 < a2)
  {
    v22 = ~v13 + a2;
    if (v15 >= 4)
    {
      bzero(a1, v15);
      *a1 = v22;
      v23 = 1;
      if (v6 > 1)
      {
        goto LABEL_30;
      }

      goto LABEL_76;
    }

    v23 = (v22 >> (8 * v15)) + 1;
    if (v15)
    {
      v24 = v22 & ~(-1 << (8 * v15));
      bzero(a1, v15);
      if (v15 != 3)
      {
        if (v15 == 2)
        {
          *a1 = v24;
          if (v6 > 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          *a1 = v22;
          if (v6 > 1)
          {
LABEL_30:
            if (v6 == 2)
            {
              *&a1[v15] = v23;
            }

            else
            {
              *&a1[v15] = v23;
            }

            return;
          }
        }

LABEL_76:
        if (v6)
        {
          a1[v15] = v23;
        }

        return;
      }

      *a1 = v24;
      a1[2] = BYTE2(v24);
    }

    if (v6 > 1)
    {
      goto LABEL_30;
    }

    goto LABEL_76;
  }

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *&a1[v15] = 0;
  }

  else if (v6)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  v25 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v26 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v26 = a2 - 1;
    }

    *v25 = v26;
    return;
  }

  v27 = ((((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 32) & ~v14);
  if (v11 >= a2)
  {
    if (a2 + 1 <= v10)
    {
      if (a2 != -1 && v8 >= 2)
      {
        v32 = *(v7 + 56);
        v33 = a2 + 2;

        v32((((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 32) & ~v14, v33);
      }
    }

    else
    {
      if (v9 <= 3)
      {
        v31 = ~(-1 << (8 * v9));
      }

      else
      {
        v31 = -1;
      }

      if (v9)
      {
        v29 = v31 & (a2 - v10);
        if (v9 <= 3)
        {
          v30 = v9;
        }

        else
        {
          v30 = 4;
        }

        bzero(v27, v9);
        if (v30 <= 2)
        {
          if (v30 == 1)
          {
            goto LABEL_61;
          }

          goto LABEL_73;
        }

LABEL_86:
        if (v30 == 3)
        {
          *v27 = v29;
          v27[2] = BYTE2(v29);
        }

        else
        {
          *v27 = v29;
        }
      }
    }
  }

  else
  {
    if (v12 <= 3)
    {
      v28 = ~(-1 << (8 * v12));
    }

    else
    {
      v28 = -1;
    }

    if (v12)
    {
      v29 = v28 & (~v11 + a2);
      if (v12 <= 3)
      {
        v30 = v12;
      }

      else
      {
        v30 = 4;
      }

      bzero(v27, v12);
      if (v30 <= 2)
      {
        if (v30 == 1)
        {
LABEL_61:
          *v27 = v29;
          return;
        }

LABEL_73:
        *v27 = v29;
        return;
      }

      goto LABEL_86;
    }
  }
}

uint64_t type metadata completion function for AsyncThrowingStream._Storage.Terminal(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncThrowingStream._Storage.Terminal(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = *(v5 + 80);
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v6 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));

    return a1;
  }

  if (!(*(v5 + 48))(a2, 1, v4))
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

  return memcpy(a1, a2, v6);
}

uint64_t destroy for AsyncThrowingStream._Storage.Terminal(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void *initializeWithCopy for AsyncThrowingStream._Storage.Terminal(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithCopy for AsyncThrowingStream._Storage.Terminal(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

void *initializeWithTake for AsyncThrowingStream._Storage.Terminal(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithTake for AsyncThrowingStream._Storage.Terminal(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t getEnumTagSinglePayload for AsyncThrowingStream._Storage.Terminal(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for AsyncThrowingStream._Storage.Terminal(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AsyncStream._Storage.State(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t destroy for AsyncStream._Storage.State(void *a1)
{

  if (a1[4])
  {
  }

  return result;
}

uint64_t initializeWithCopy for AsyncStream._Storage.State(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  v6 = a2 + 4;
  v5 = a2[4];

  if (v5)
  {
    v7 = a2[5];
    *(a1 + 32) = v5;
    *(a1 + 40) = v7;
  }

  else
  {
    *(a1 + 32) = *v6;
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t *assignWithCopy for AsyncStream._Storage.State(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v4 = a2[2];
  v5 = a1[4];
  *(a1 + 24) = *(a2 + 24);
  a1[2] = v4;
  v6 = a2[4];
  if (!v5)
  {
    if (v6)
    {
      v8 = a2[5];
      a1[4] = v6;
      a1[5] = v8;

      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 2) = *(a2 + 2);
    goto LABEL_8;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = a2[5];
  a1[4] = v6;
  a1[5] = v7;

LABEL_8:
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for AsyncStream._Storage.State(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 32);
  v5 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  if (!v5)
  {
    if (v4)
    {
      v7 = *(a2 + 40);
      *(a1 + 32) = v4;
      *(a1 + 40) = v7;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;

LABEL_8:
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncStream._Storage.State(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AsyncStream._Storage.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CancellationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CancellationError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    swift_getCanonicalSpecializedMetadata();
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _DequeSlot and conformance _DequeSlot()
{
  result = lazy protocol witness table cache variable for type _DequeSlot and conformance _DequeSlot;
  if (!lazy protocol witness table cache variable for type _DequeSlot and conformance _DequeSlot)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DequeSlot and conformance _DequeSlot);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t partial apply for closure #1 in _Deque.Iterator.next()@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = _Deque._UnsafeHandle.ptr(at:)(*(v3 + 24), a1, a2, v5);
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t partial apply for closure #1 in _Deque.Iterator._swapSegment()@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *(v2 + 24);
  result = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(a1[2], a1[1], a1);
  if (result && result != *(v4 + 8))
  {
    *(v4 + 8) = 0;
    *(v4 + 16) = result;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t partial apply for closure #1 in _Deque._Storage.read<A>(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  return partial apply for closure #1 in _Deque._Storage.read<A>(_:)(a1, a2, a3);
}

{
  result = (*(v3 + 32))(a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t specialized _Deque._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  type metadata accessor for _Deque.Iterator(255, a4, a3, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque._copyContents(initializing:), v8, a3, a4, TupleTypeMetadata2, partial apply for closure #1 in _Deque._Storage.read<A>(_:));
  return v8[8];
}

uint64_t partial apply for closure #1 in _Deque.Iterator.init(_base:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[1] + v4;
  if (v5 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = _Deque._UnsafeHandle.limSlot.getter(a1);
    if (v7 >= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    *a2 = v6;
    a2[1] = v4;
    a2[2] = v8;
  }

  return result;
}

uint64_t partial apply for closure #1 in _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = _Deque._UnsafeHandle.copyElements()(a1, a2, *(v4 + 16), a4);
  *a3 = result;
  return result;
}

uint64_t partial apply for closure #3 in _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _Deque._UnsafeHandle.copyElements(minimumCapacity:)(*(v3 + 24), a1, a2, *(v3 + 16));
  *a3 = result;
  return result;
}

uint64_t partial apply for closure #2 in _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _Deque._UnsafeHandle.moveElements(minimumCapacity:)(*(v3 + 24), a1, a2, *(v3 + 16));
  *a3 = result;
  return result;
}

uint64_t partial apply for closure #1 in _Deque._UnsafeHandle.moveElements(minimumCapacity:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = ManagedBuffer.capacity.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = 0;
  return result;
}

uint64_t partial apply for closure #2 in _Deque._UnsafeHandle.moveElements(minimumCapacity:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  _Deque._UnsafeHandle.segments()(*(v2 + 24), *(v2 + 32), v5, v10);
  _UnsafeMutableWrappedBuffer.init(mutating:)(v10, v5, v11);
  v6 = v11[2];
  v7 = v11[3];
  v8 = v12;
  result = _Deque._UnsafeHandle.initialize(at:from:)(0, v11[0], v11[1], a1, a2, v5, 212, MEMORY[0x1E69E6728], MEMORY[0x1E69E6700], 214);
  if ((v8 & 1) == 0)
  {
    return _Deque._UnsafeHandle.initialize(at:from:)(result, v6, v7, a1, a2, v5, 212, MEMORY[0x1E69E6728], MEMORY[0x1E69E6700], 214);
  }

  return result;
}

uint64_t partial apply for closure #1 in _UnsafeMutableWrappedBuffer.init(mutating:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MEMORY[0x1865D3F60](*a1, a1[1], *(v2 + 16));
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t partial apply for closure #1 in _Deque._UnsafeHandle.copyElements(minimumCapacity:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = ManagedBuffer.capacity.getter();
  v5 = *(v3 + 8);
  *a1 = result;
  a1[1] = v5;
  a1[2] = 0;
  return result;
}

uint64_t partial apply for closure #2 in _Deque._UnsafeHandle.copyElements(minimumCapacity:)(uint64_t *a1, uint64_t a2)
{
  v4 = v2[3];
  if (a1[1] != v4[1] || a1[2])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = v2[2];
    _Deque._UnsafeHandle.segments()(v4, v2[4], v6, v8);
    result = _Deque._UnsafeHandle.initialize(at:from:)(0, v8[0], v8[1], a1, a2, v6, 201, MEMORY[0x1E69E6030], MEMORY[0x1E69E66F8], 203);
    if ((v9 & 1) == 0)
    {
      return _Deque._UnsafeHandle.initialize(at:from:)(result, v8[2], v8[3], a1, a2, v6, 201, MEMORY[0x1E69E6030], MEMORY[0x1E69E66F8], 203);
    }
  }

  return result;
}

__n128 partial apply for closure #1 in _Deque._UnsafeHandle.copyElements()@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[1].n128_u64[0];
  result = *v2;
  *a1 = *v2;
  a1[1].n128_u64[0] = v3;
  return result;
}

uint64_t partial apply for closure #2 in _Deque._UnsafeHandle.copyElements()(uint64_t *a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  _Deque._UnsafeHandle.segments()(v6, v2[4], v5, v8);
  result = _Deque._UnsafeHandle.initialize(at:from:)(v6[2], v8[0], v8[1], a1, a2, v5, 201, MEMORY[0x1E69E6030], MEMORY[0x1E69E66F8], 203);
  if ((v9 & 1) == 0)
  {
    return _Deque._UnsafeHandle.initialize(at:from:)(0, v8[2], v8[3], a1, a2, v5, 201, MEMORY[0x1E69E6030], MEMORY[0x1E69E66F8], 203);
  }

  return result;
}

uint64_t partial apply for closure #1 in _Deque.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1[2];
  v9 = a1[1] + v8;
  if (v9 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_10;
  }

  v10 = v3[3];
  if (*a1 < v9)
  {
    v11 = 1;
    return (*(*(v10 - 8) + 56))(a3, v11, 1, v10);
  }

  if (v9 < v8)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v12 = v3[4];
  v13 = _Deque._UnsafeHandle.buffer(for:)(v8, v9, a1, a2, v3[2]);
  result = v12(v13);
  if (v4)
  {
    return result;
  }

  v11 = 0;
  return (*(*(v10 - 8) + 56))(a3, v11, 1, v10);
}

uint64_t partial apply for closure #1 in _Deque._copyContents(initializing:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  _Deque._UnsafeHandle.segments()(a1, a2, v4, &v29);
  v6 = v30;
  if (v30 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v30;
  }

  v33 = v7;
  type metadata accessor for UnsafeMutableBufferPointer();
  swift_getCanonicalSpecializedMetadata();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>();
  MutableCollection.subscript.getter();
  v8 = UnsafeMutableBufferPointer.init(rebasing:)();
  v10 = v9;
  type metadata accessor for UnsafeBufferPointer();
  swift_getWitnessTable();
  Collection.prefix(_:)();
  v11 = UnsafeBufferPointer.init(rebasing:)();
  UnsafeMutableBufferPointer._initialize(from:)(v11, v12, v8, v10, v4);
  if (v6 >= v5 || (v32 & 1) != 0)
  {
    goto LABEL_12;
  }

  v13 = v5 - v7;
  if (__OFSUB__(v5, v7))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 >= v31)
  {
    v13 = v31;
  }

  v14 = v7 + v13;
  if (__OFADD__(v7, v13))
  {
    goto LABEL_14;
  }

  if (v14 >= v7)
  {
    UnsafeMutableBufferPointer.subscript.getter();
    v15 = UnsafeMutableBufferPointer.init(rebasing:)();
    v17 = v16;
    Collection.prefix(_:)();
    v18 = UnsafeBufferPointer.init(rebasing:)();
    UnsafeMutableBufferPointer._initialize(from:)(v18, v19, v15, v17, v4);
    v7 = v14;
LABEL_12:

    v22 = specialized _Deque.Iterator.init(_base:from:)(v20, v7, v4, v21);
    v24 = v23;
    v26 = v25;

    *a3 = v22;
    a3[1] = v24;
    a3[2] = v26;
    a3[3] = v7;
    return result;
  }

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>)
  {
    swift_getCanonicalSpecializedMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>);
  }

  return result;
}

uint64_t specialized _Deque.Iterator.init(_base:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = a3;
  v8[3] = a2;
  v8[4] = a1;
  v6 = type metadata accessor for _Deque.Iterator(0, a3, a3, a4);
  _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.Iterator.init(_base:from:), v8, a1, a3, v6, partial apply for closure #1 in _Deque._Storage.read<A>(_:));
  return v8[7];
}

uint64_t partial apply for closure #1 in _Deque.Iterator.init(_base:from:)@<X0>(uint64_t *a1@<X0>, Swift::_DequeSlot *a2@<X8>)
{
  v3 = *(v2 + 24);
  if (v3 < 0 || a1[1] < v3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 32);
    v7.position = _Deque._UnsafeHandle.slot(forOffset:)(*(v2 + 24)).position;
    position = v7.position;
    v9 = a1[1];
    if (v9 != v3)
    {
      v7.position = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(a1[2], v9, a1);
      if (position >= v7.position)
      {
        v7.position = _Deque._UnsafeHandle.limSlot.getter(a1);
      }
    }

    a2->position = v6;
    a2[1].position = position;
    a2[2].position = v7.position;
  }

  return result;
}

uint64_t specialized _Deque._copyToContiguousArray()(uint64_t a1, uint64_t a2)
{
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, a1, &type metadata for _DequeBufferHeader, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v5);
  v7 = a2;
  v8 = a1;
  return ContiguousArray.init(unsafeUninitializedCapacity:initializingWith:)(v9, partial apply for closure #1 in _Deque._copyToContiguousArray(), v6, a2);
}

uint64_t partial apply for closure #1 in _Deque._copyToContiguousArray()(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v6 = *(v2 + 16);
  v7 = a1;
  v8 = a2;
  return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in closure #1 in _Deque._copyToContiguousArray(), &v5, v3, v6, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.read<A>(_:));
}

void partial apply for closure #1 in closure #1 in _Deque._copyToContiguousArray()(uint64_t *a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  _Deque._UnsafeHandle.segments()(a1, a2, v4, &v15);
  v7 = v15;
  v6 = v16;
  v20 = v16;
  type metadata accessor for UnsafeMutableBufferPointer();
  swift_getCanonicalSpecializedMetadata();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>();
  MutableCollection.subscript.getter();
  v8 = UnsafeMutableBufferPointer.init(rebasing:)();
  UnsafeMutableBufferPointer._initialize(from:)(v7, v6, v8, v9, v4);
  v10 = *v5 + v6;
  if (__OFADD__(*v5, v6))
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *v5 = v10;
  if (v19)
  {
    goto LABEL_7;
  }

  v11 = v18;
  if (__OFADD__(v6, v18))
  {
    goto LABEL_10;
  }

  if (v6 + v18 < v6)
  {
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v12 = v17;
  UnsafeMutableBufferPointer.subscript.getter();
  v13 = UnsafeMutableBufferPointer.init(rebasing:)();
  UnsafeMutableBufferPointer._initialize(from:)(v12, v11, v13, v14, v4);
  v10 = *v5 + v11;
  if (__OFADD__(*v5, v11))
  {
    goto LABEL_11;
  }

  *v5 = v10;
LABEL_7:
  if (v10 != a1[1])
  {
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_13;
  }
}

uint64_t specialized _Deque.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 < 0 || (_ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v6, &type metadata for _DequeBufferHeader, *(a6 + 16), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v16), v17[0] < a5))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v17[0] = a1;
    v17[1] = a2;
    v17[2] = a3;
    swift_getWitnessTable();
    v13 = type metadata accessor for Slice();
    WitnessTable = swift_getWitnessTable();
    return specialized _Deque.replaceSubrange<A>(_:with:)(a4, a5, v17, a6, v13, WitnessTable);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0 || (v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness), result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness), (result & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0 || (type metadata accessor for Range(), result = dispatch thunk of static Comparable.<= infix(_:_:)(), (result & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in _Deque.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8.position = _Deque._UnsafeHandle.slot(forOffset:)(*(v3 + 24)).position;
  v9 = _Deque._UnsafeHandle.ptr(at:)(v8.position, a1, a2, v7);
  return (*(*(v7 - 8) + 16))(a3, v9, v7);
}

uint64_t partial apply for closure #1 in _Deque.withContiguousMutableStorageIfAvailable<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1[2];
  v9 = a1[1] + v8;
  if (v9 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v10 = v3[3];
  if (*a1 < v9)
  {
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v3[3]);
  }

  if (v9 < v8)
  {
    goto LABEL_10;
  }

  v12 = v3[2];
  v13 = v3[4];
  v14 = _Deque._UnsafeHandle.buffer(for:)(v8, v9, a1, a2, v12);
  v15 = MEMORY[0x1865D3F60](v14);
  v17 = v16;
  v18[0] = v15;
  v18[1] = v16;
  v13(v18);
  if (!v4)
  {
    (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
  }

  return $defer #1 <A><A1>() in closure #1 in _Deque.withContiguousMutableStorageIfAvailable<A>(_:)(v18, v15, v17, v12);
}

void partial apply for closure #1 in _Deque.swapAt(_:_:)(void *a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  position = _Deque._UnsafeHandle.slot(forOffset:)(v3).position;
  v6 = _Deque._UnsafeHandle.slot(forOffset:)(v4).position;
  UnsafeMutableBufferPointer.init(start:count:)();
  UnsafeMutableBufferPointer.swapAt(_:_:)(position, v6);
}

uint64_t partial apply for closure #1 in _Deque.subscript.modify@<X0>(void *a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X8>)
{
  v7 = *(v3 + 16);
  position = _Deque._UnsafeHandle.slot(forOffset:)(*(v3 + 24)).position;
  swift_getTupleTypeMetadata2();
  *a3 = position;
  _Deque._UnsafeHandle.ptr(at:)(position, a1, a2, v7);
  return UnsafeMutablePointer.move()();
}

uint64_t partial apply for closure #1 in _Deque.subscript.setter(void *a1, uint64_t a2)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8.position = _Deque._UnsafeHandle.slot(forOffset:)(v5).position;
  v9 = _Deque._UnsafeHandle.ptr(at:)(v8.position, a1, a2, v6);
  return (*(*(v6 - 8) + 24))(v9, v7, v6);
}

unint64_t partial apply for closure #1 in _Deque.remove(at:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 32);
  _Deque.subscript.getter(v6, **(v2 + 24), v5);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else if (v7 >= v6)
  {
    return _Deque._UnsafeHandle.uncheckedRemove(offsets:)(v6, v7, a1, a2, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _Deque.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = _Deque._Storage.init(minimumCapacity:)(a2, a3, a3, a4);
    MEMORY[0x1EEE9AC00](v7);
    v9[2] = a3;
    v9[3] = a2;
    v9[4] = a1;

    _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.init(repeating:count:), v9, v7, a3, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));

    return v7;
  }

  return result;
}

uint64_t specialized _Deque.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v12 = _Deque._Storage.init()(a2);
  v10 = type metadata accessor for _Deque(0, a2, v8, v9);
  _Deque.append<A>(contentsOf:)(a1, v10, a3, a4);
  return v12;
}

uint64_t specialized _Deque.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = dispatch thunk of Collection.count.getter();
  if (v8 < 1)
  {

    return _Deque._Storage.init()(a2);
  }

  else
  {
    v11 = v8;
    v12 = _Deque._Storage.init(minimumCapacity:)(v8, a2, v9, v10);
    MEMORY[0x1EEE9AC00](v12);
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = a4;
    v14[5] = v11;
    v14[6] = a1;
    _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.init<A>(_:), v14, v12, a2, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
    return v12;
  }
}

uint64_t specialized _Deque.insert<A>(contentsOf:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v10 = *(a3 + 16);
    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v5, &type metadata for _DequeBufferHeader, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v18);
    if (v20 >= a2)
    {
      v11 = dispatch thunk of Collection.count.getter();
      _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v5, &type metadata for _DequeBufferHeader, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v18);
      if (!__OFADD__(v20, v11))
      {
        type metadata accessor for _Deque._Storage(0, v10, v12, v13);
        _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(v20 + v11, 0);
        MEMORY[0x1EEE9AC00](v14);
        v17[2] = v10;
        v17[3] = a4;
        v17[4] = a5;
        v17[5] = a1;
        v18 = v11;
        v19 = a2;
        return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.insert<A>(contentsOf:at:), v17, v15, v10, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
      }

      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #3 in _Deque.append<A>(contentsOf:)(uint64_t *a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[6];
  _Deque._UnsafeHandle.uncheckedAppend(_:)(v2[5], a1, a2, v5);
  _Deque._UnsafeHandle.availableSegments()(a1, a2, v5, v16);
  v9 = type metadata accessor for _UnsafeMutableWrappedBuffer(0, v5, v7, v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = _UnsafeMutableWrappedBuffer.initialize<A>(fromPrefixOf:)(v6, v9, AssociatedTypeWitness, AssociatedConformanceWitness);
  v13 = a1[1];
  v14 = __OFADD__(v13, result);
  v15 = v13 + result;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a1[1] = v15;
  }

  return result;
}

void *partial apply for closure #1 in _Deque.init(repeating:count:)(void *result, uint64_t a2)
{
  if (result[2])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *(v2 + 24);
    if (v4 >= 1)
    {
      _Deque._UnsafeHandle.ptr(at:)(0, result, a2, *(v2 + 16));
      result = UnsafeMutablePointer.initialize(repeating:count:)();
    }

    v3[1] = v4;
  }

  return result;
}

uint64_t partial apply for closure #1 in _Deque._Storage.init(minimumCapacity:)@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedBuffer.capacity.getter();
  a1[1] = 0;
  a1[2] = 0;
  *a1 = result;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t specialized _Deque.init(arrayLiteral:)(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v3 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return specialized _Deque.init<A>(_:)(&v6, a2, v3, WitnessTable);
}

uint64_t sub_181602D28()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_181602E00()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async (@in_guaranteed A.AsyncSequence.Element) -> (@out Bool)(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc(32);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @async (@in_guaranteed A.AsyncSequence.Element) -> (@out Bool);

  return thunk for @escaping @callee_guaranteed @async (@in_guaranteed A.AsyncSequence.Element) -> (@out Bool)(a1, v4);
}

{
  v5 = *v1;
  *(*v1 + 16);
  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async (@in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = swift_task_alloc(32);
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:);

  return thunk for @escaping @callee_guaranteed @async (@in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)(a1, a2, v6);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZyyYaKXEfU_ySccyyts5Error_pGXEfU_yyYacfU_s010SuspendingH0V_Tt0g5TA()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc(32);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZyyYaKXEfU_ySccyyts5Error_pGXEfU_yyYacfU_s010ContinuousH0V_Tt0g5(v3, v2);
}

void partial apply for closure #2 in static Task<>.sleep(nanoseconds:)()
{
  v1 = *(v0 + 16);
  v2 = atomic_load(v1);
  if ((v2 & 3) != 0)
  {
    return;
  }

  while (1)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v2 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v3 = 0;
      atomic_compare_exchange_strong(v1, &v3, 3uLL);
      if (!v3)
      {
        return;
      }

      goto LABEL_5;
    }

    v5 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    atomic_compare_exchange_strong(v1, &v5, 2uLL);
    if (v5 == v4)
    {
      break;
    }

LABEL_5:
    v2 = atomic_load(v1);
    if ((v2 & 3) != 0)
    {
      return;
    }
  }

  lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
  v6 = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v7 = swift_allocError();
  *v8 = v6;

  swift_continuation_throwingResumeWithError(v4, v7);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZyyYaKXEfU_ySccyyts5Error_pGXEfU_yyYacfU_s010ContinuousH0V_Tt0g5TA()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc(32);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZyyYaKXEfU_ySccyyts5Error_pGXEfU_yyYacfU_s010ContinuousH0V_Tt0g5(v3, v2);
}

void partial apply for closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc(128);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:)(a1, v4, v5);
}

uint64_t partial apply for closure #2 in closure #1 in AsyncThrowingStream.init<>(unfolding:)()
{
  v1[0] = 0;
  v1[1] = 0;
  return specialized _AsyncStreamCriticalStorage.value.setter(v1);
}

void partial apply for closure #1 in _AsyncStreamCriticalStorage.value.setter()
{
  v1 = *(v0 + 16);
  (*(*(*(*v1 + 80) - 8) + 24))(v1 + *(*v1 + 88), *(v0 + 24));
  _swift_async_stream_lock_unlock((v1 + ((*(*v1 + 48) + 7) & 0x1FFFFFFF8)));
}

void partial apply for implicit closure #2 in implicit closure #1 in AsyncThrowingStream.init<>(_:bufferingPolicy:_:)(uint64_t a1)
{
  v3 = swift_task_alloc(32);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  implicit closure #2 in implicit closure #1 in AsyncThrowingStream.init<>(_:bufferingPolicy:_:)(a1);
}

void partial apply for closure #1 in AsyncThrowingStream._Storage.next()(uint64_t a1)
{
  v4 = swift_task_alloc(64);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  closure #1 in AsyncThrowingStream._Storage.next()(a1, v1);
}

void partial apply for closure #1 in AsyncThrowingStream._Storage.setOnTermination(_:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v2 + *(*v2 + 104);
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v1, v3);
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v5, v6);
  _swift_async_stream_lock_unlock((v2 + ((*(*v2 + 48) + 7) & 0x1FFFFFFF8)));
}

void partial apply for closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc(128);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:)(a1, v4, v5);
}

uint64_t partial apply for closure #2 in closure #1 in AsyncStream.init(unfolding:onCancel:)()
{
  v1 = *(v0 + 32);
  v3[0] = 0;
  v3[1] = 0;
  result = specialized _AsyncStreamCriticalStorage.value.setter(v3);
  if (v1)
  {
    return v1(result);
  }

  return result;
}

void partial apply for implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:)(uint64_t a1)
{
  v3 = swift_task_alloc(32);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:)(a1);
}

void partial apply for closure #1 in AsyncStream._Storage.next()(uint64_t a1)
{
  v4 = swift_task_alloc(48);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  closure #1 in AsyncStream._Storage.next()(a1, v1);
}

void partial apply for closure #1 in AsyncStream._Storage.setOnTermination(_:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v1, v3);
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v4, v5);
  _swift_async_stream_lock_unlock((v2 + 72));
}

void partial apply for closure #1 in closure #1 in closure #1 in static Task<>.sleep(nanoseconds:)()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc(32);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  closure #1 in closure #1 in closure #1 in static Task<>.sleep(nanoseconds:)(v3, v2);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for _UnsafeMutableWrappedBuffer(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _UnsafeMutableWrappedBuffer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _Deque.Iterator(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);

  return a1;
}

uint64_t *assignWithCopy for _Deque.Iterator(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1;
}

uint64_t *assignWithTake for _Deque.Iterator(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  return a1;
}

uint64_t getEnumTagSinglePayload for PriorityQueue(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PriorityQueue(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t *initializeBufferWithCopyOfBuffer for Range(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v6 + v7;
  v10 = ((v6 + v7) & ~v7) + v6;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 + 16) & v8));
  }

  else
  {
    v14 = *(v5 + 16);
    v14(a1, a2, v4);
    v14(((v3 + v9) & v8), ((a2 + v9) & v8), v4);
  }

  return v3;
}

uint64_t destroy for Range(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8) + 8;
  v7 = *v6;
  (*v6)(a1, v3);
  v4 = (*(v6 + 56) + a1 + *(v6 + 72)) & ~*(v6 + 72);

  return v7(v4, v3);
}

unint64_t initializeWithCopy for Range(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, v5);
  v7((*(v8 + 48) + *(v8 + 64) + a1) & ~*(v8 + 64), (*(v8 + 48) + *(v8 + 64) + a2) & ~*(v8 + 64), v5);
  return a1;
}

unint64_t assignWithCopy for Range(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v8 = v6 + 24;
  v7(a1, a2, v5);
  v7((*(v8 + 40) + *(v8 + 56) + a1) & ~*(v8 + 56), (*(v8 + 40) + *(v8 + 56) + a2) & ~*(v8 + 56), v5);
  return a1;
}

unint64_t initializeWithTake for Range(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, v5);
  v7((*(v8 + 32) + *(v8 + 48) + a1) & ~*(v8 + 48), (*(v8 + 32) + *(v8 + 48) + a2) & ~*(v8 + 48), v5);
  return a1;
}

unint64_t assignWithTake for Range(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v8 = v6 + 40;
  v7(a1, a2, v5);
  v7((*(v8 + 24) + *(v8 + 40) + a1) & ~*(v8 + 40), (*(v8 + 24) + *(v8 + 40) + a2) & ~*(v8 + 40), v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for Range(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *storeEnumTagSinglePayload for Range(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t static ContinuousClock.Instant.now.getter@<X0>(char *a1@<X3>, uint64_t *a2@<X8>)
{

  return static ContinuousClock.now.getter(a1, a2);
}

uint64_t static SuspendingClock.Instant.now.getter@<X0>(uint64_t *a1@<X8>, char *a2@<X3>)
{

  return static SuspendingClock.now.getter(a1, a2);
}

uint64_t swift::getOverride_task_enqueue(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_job_run(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_job_run_on_task_executor(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_job_run_on_serial_and_task_executor(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_getCurrentExecutor(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_isCurrentExecutor(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_isCurrentExecutorWithFlags(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 56);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_switch(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_deinitOnExecutor(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 72);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_create_common(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 80);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_future_wait(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 88);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_future_wait_throwing(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 96);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_continuation_resume(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 104);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_continuation_throwingResume(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 112);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_continuation_throwingResumeWithError(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 120);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_addCancellationHandler(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 128);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_removeCancellationHandler(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 136);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_addPriorityEscalationHandler(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 144);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_removePriorityEscalationHandler(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 152);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_createNullaryContinuationJob(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 160);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_asyncMainDrainQueue(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 168);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_suspend(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 176);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_enqueueTaskOnExecutor(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 184);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_continuation_init(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 192);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_continuation_await(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 200);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_asyncLet_wait(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 208);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_asyncLet_wait_throwing(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 216);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_asyncLet_end(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 224);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_asyncLet_get(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 232);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_asyncLet_get_throwing(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 240);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_asyncLet_consume(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 248);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_asyncLet_consume_throwing(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 256);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_asyncLet_finish(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 264);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_taskGroup_initialize(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 272);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_taskGroup_initializeWithFlags(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 280);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_taskGroup_initializeWithOptions(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 288);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_taskGroup_attachChild(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 296);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_taskGroup_destroy(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 304);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_taskGroup_wait_next_throwing(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 312);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_taskGroup_isEmpty(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 320);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_taskGroup_isCancelled(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 328);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_taskGroup_cancelAll(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 336);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_taskGroup_addPending(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 344);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_taskGroup_waitAll(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 352);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_reportIllegalTaskLocalBindingWithinWithTaskGroup(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 360);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_localValuePush(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 368);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_localValueGet(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 376);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_localValuePop(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 384);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_localsCopyTo(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 392);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_hasTaskGroupStatusRecord(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 400);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_cancel(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 408);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_cancel_group_child_tasks(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 416);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_escalate(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 424);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_getPreferredTaskExecutor(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 432);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_pushTaskExecutorPreference(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 440);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_popTaskExecutorPreference(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 448);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_startOnMainActor(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 456);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::getOverride_task_immediate(swift *this)
{
  swift_once();
  if (getOverrideSectionPtr(void)::OverrideSectionPtr)
  {
    return *(getOverrideSectionPtr(void)::OverrideSectionPtr + 464);
  }

  else
  {
    return 0;
  }
}

uint8_t *getOverrideSectionPtr(void)::$_0::__invoke()
{
  size = 0;
  v0 = _NSGetMachExecuteHeader();
  result = getsectiondata(v0, "__DATA", "__s62async_hook", &size);
  if (!result || size <= 0x1D7)
  {
    result = 0;
  }

  getOverrideSectionPtr(void)::OverrideSectionPtr = result;
  return result;
}

void swift::runJobInEstablishedExecutorContext(uint64_t a1)
{
  if (*MEMORY[0x1E69E7CE8])
  {
    (*MEMORY[0x1E69E7CE8])(a1);
  }

  v9 = objc_autoreleasePoolPush();
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (!a1 || *(a1 + 32))
  {
    v15 = StatusReg[104];
    v16 = *(a1 + 40);
    if (StatusReg[28] != v16)
    {
      v16 = voucher_adopt();
    }

    *(a1 + 40) = -1;
    if (*(v15 + 48))
    {
      if (v16 + 1 >= 2)
      {
        os_release(v16);
      }
    }

    else
    {
      *(v15 + 40) = v16;
      *(v15 + 48) = 1;
    }

    (*(a1 + 56))(a1);
  }

  else
  {
    v11 = StatusReg[103];
    StatusReg[103] = a1;
    swift::AsyncTask::flagAsRunning(a1, v2, v3, v4, v5, v6, v7, v8);
    v12 = swift::concurrency::trace::job_run_begin(a1);
    v14 = v13;
    v17 = (*(a1 + 56))();
    if (v14 != -1)
    {
      if (qword_1ED42EA38 != -1)
      {
        swift::runJobInEstablishedExecutorContext(v17);
      }

      if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
      {
        if (swift::concurrency::trace::LogsToken != -1)
        {
          swift::runJobInEstablishedExecutorContext();
        }

        if (swift::concurrency::trace::TracingEnabled == 1)
        {
          if (v14)
          {
            v18 = swift::concurrency::trace::TaskLog;
            if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
            {
              v19 = 134217984;
              v20 = v12;
              _os_signpost_emit_with_name_impl(&dword_1815A3000, v18, OS_SIGNPOST_INTERVAL_END, v14, "job_run", "task=%lld", &v19, 0xCu);
            }
          }
        }
      }
    }

    if (v11)
    {
      StatusReg[103] = v11;
    }
  }

  objc_autoreleasePoolPop(v9);
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(a1);
  }
}

{
  OUTLINED_FUNCTION_1(a1, &swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy);
}

uint64_t swift::AsyncTask::flagAsRunning(swift::AsyncTask *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, BOOL a8)
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASP            X0, X1, X0, X1, [X8] }

  v32[0] = _X0;
  v32[1] = 0;
  if ((_X0 & 0x4000) != 0)
  {
    v24 = *(this + 20);
    swift::removeStatusRecord(this, v24, v32, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsRunning(void)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, &v31);
    swift::_swift_task_dealloc_specific(this, v24, v25, v26);
    *(this + 20) = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = *(StatusReg + 832);
    v29 = *(this + 5);
    if (*(StatusReg + 224) != v29)
    {
      v29 = voucher_adopt();
    }

    *(this + 5) = -1;
    if (*(v28 + 48))
    {
      if (v29 + 1 >= 2)
      {
        os_release(v29);
      }
    }

    else
    {
      *(v28 + 40) = v29;
      *(v28 + 48) = 1;
    }

    return swift_task_enterThreadLocalContext();
  }

  else
  {
    _X4 = _X0 & 0xFFFFA3FF | 0x800;
    _X3 = 0;
    __asm { CASP            X2, X3, X4, X5, [X8] }

    if (_X2 != _X0)
    {
      do
      {
        _X0 = _X2 & 0xFFFFE3FF | 0x800;
        _X5 = 0;
        __asm { CASP            X4, X5, X0, X1, [X8] }

        _ZF = _X4 == _X2;
        LODWORD(_X0) = _X2;
        _X2 = _X4;
      }

      while (!_ZF);
    }

    swift::concurrency::trace::task_status_changed(this, _X0, (_X0 >> 8) & 1, 0, 1, 1, 0);
    v21 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = *(v21 + 832);
    v23 = *(this + 5);
    if (*(v21 + 224) != v23)
    {
      v23 = voucher_adopt();
    }

    *(this + 5) = -1;
    if (*(v22 + 48))
    {
      if (v23 + 1 >= 2)
      {
        os_release(v23);
      }
    }

    else
    {
      *(v22 + 40) = v23;
      *(v22 + 48) = 1;
    }

    return swift_task_enterThreadLocalContext();
  }
}

unint64_t swift::concurrency::trace::job_run_begin(swift::AsyncTask *a1)
{
  v1 = 0;
  if (a1 && !*(a1 + 32))
  {
    if (qword_1ED42EA38 != -1)
    {
      v10 = a1;
      swift::runJobInEstablishedExecutorContext(a1);
      a1 = v10;
    }

    if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy == 1)
    {
      v2 = a1;
      inited = _os_trace_lazy_init_completed_4swift();
      a1 = v2;
      if (!inited)
      {
        return 0;
      }
    }

    if (swift::concurrency::trace::LogsToken != -1)
    {
      v11 = a1;
      swift::runJobInEstablishedExecutorContext();
      a1 = v11;
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v4 = a1;
      v5 = os_signpost_id_generate(swift::concurrency::trace::TaskLog);
      TaskId = swift::AsyncTask::getTaskId(v4);
      v1 = TaskId;
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = TaskId;
        v8 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v12 = 134217984;
          v13 = v7;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "job_run", "task=%lld", &v12, 0xCu);
        }

        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t swift::restoreTaskVoucher(swift *this, swift::AsyncTask *a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 832);
  result = *(v4 + 40);
  if (*(StatusReg + 224) != result)
  {
    result = voucher_adopt();
  }

  *(this + 5) = result;
  if (*(v4 + 48) == 1)
  {
    *(v4 + 48) = 0;
  }

  return result;
}

uint64_t swift::_swift_task_clearCurrent(swift *this)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = *(StatusReg + 824);
  *(StatusReg + 824) = 0;
  return result;
}

uint64_t swift::_swift_task_setCurrent(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 824);
  *(StatusReg + 824) = a1;
  return v2;
}

uint64_t _swift_getActiveExecutor()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 832);
  if (v0)
  {
    if (v0[1])
    {
      v1 = 1;
    }

    else
    {
      v1 = *v0 == 0;
    }

    if (v1)
    {
      return *v0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = pthread_main_np();
    if (v3)
    {
      return swift_getMainExecutor(v3, v4);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _swift_getCurrentTaskExecutor()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 832);
  if (v0)
  {
    return *(v0 + 16);
  }

  else
  {
    return 0;
  }
}

swift::AsyncTask *_swift_getPreferredTaskExecutor()
{
  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 824);
  if (result)
  {
    return swift::AsyncTask::getPreferredTaskExecutor(result);
  }

  return result;
}

swift::AsyncTask *swift_task_getCurrentTaskName()
{
  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 824);
  if (result)
  {
    return swift::AsyncTask::getTaskName(result);
  }

  return result;
}

uint64_t swift_bincompat_selectDefaultIsCurrentExecutorCheckingMode(void)
{
  if (swift_bincompat_useLegacyNonCrashingExecutorChecks())
  {
    v0 = 0;
  }

  else
  {
    v0 = 8;
  }

  IsCurrentExecutorLegacyModeOverride = concurrencyIsCurrentExecutorLegacyModeOverride();
  if (IsCurrentExecutorLegacyModeOverride)
  {
    v2 = IsCurrentExecutorLegacyModeOverride;
    if (*IsCurrentExecutorLegacyModeOverride)
    {
      if (!strcmp(IsCurrentExecutorLegacyModeOverride, "nocrash") || !strcmp(v2, "legacy"))
      {
        return 0;
      }

      else if (!strcmp(v2, "crash") || !strcmp(v2, "swift6"))
      {
        return 8;
      }
    }
  }

  return v0;
}

void swift_task_reportUnexpectedExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[0] = a5;
  v21[1] = a6;
  if (swift_task_reportUnexpectedExecutor::logLevelToken != -1)
  {
    swift_task_reportUnexpectedExecutor_cold_1();
  }

  if (unexpectedExecutorLogLevel)
  {
    v9 = unexpectedExecutorLogLevel != 1;
    isMainExecutor = swift::SerialExecutorRef::isMainExecutor(v21);
    v12 = "actor-isolated function";
    if (isMainExecutor)
    {
      v12 = "@MainActor function";
    }

    v13 = "the same actor";
    if (isMainExecutor)
    {
      v13 = "the main thread";
    }

    v20 = 0;
    v14 = "warning";
    if (v9)
    {
      v14 = "error";
    }

    swift_asprintf(&v20, v11, v14, v12, a2, a1, a4, v13);
    shouldReportFatalErrorsToDebugger = _swift_shouldReportFatalErrorsToDebugger();
    v16 = v20;
    if (shouldReportFatalErrorsToDebugger)
    {
      memset(&v18[2], 0, 48);
      v19 = 0;
      v18[0] = xmmword_1E6A17FE8;
      v18[1] = *&off_1E6A17FF8;
      MEMORY[0x1865D44A0](v9, v20, v18);
    }

    v17 = MEMORY[0x1E69E9848];
    fputs(v16, *MEMORY[0x1E69E9848]);
    fflush(*v17);
    asl_log(0, 0, 3, "%s", v16);
    free(v16);
    if (v9)
    {
      abort();
    }
  }
}

unint64_t checkUnexpectedExecutorLogLevel(void *a1)
{
  result = getenv("SWIFT_UNEXPECTED_EXECUTOR_LOG_LEVEL");
  if (result)
  {
    result = strtol(result, 0, 0);
    if (result <= 2)
    {
      v2 = result;
      result = swift_bincompat_selectDefaultIsCurrentExecutorCheckingMode();
      if ((result & 8) != 0)
      {
        v3 = 2;
      }

      else
      {
        v3 = v2;
      }

      unexpectedExecutorLogLevel = v3;
    }
  }

  return result;
}

void swift_asprintf(char **a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = vsnprintf(0, 0, "%s: data race detected: %s at %.*s:%d was not called on %s\n", va);
  *a1 = 0;
  if ((v3 & 0x80000000) == 0)
  {
    v4 = (v3 + 1);
    v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      if (vsnprintf(v5, v4, "%s: data race detected: %s at %.*s:%d was not called on %s\n", va) < 0)
      {
        free(v6);
      }

      else
      {
        *a1 = v6;
      }
    }
  }
}

{
  va_start(va, a2);
  v3 = vsnprintf(0, 0, "error: %sTaskGroup: detected pending task count overflow, in task group %p! Status: %s", va);
  *a1 = 0;
  if ((v3 & 0x80000000) == 0)
  {
    v4 = (v3 + 1);
    v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      if (vsnprintf(v5, v4, "error: %sTaskGroup: detected pending task count overflow, in task group %p! Status: %s", va) < 0)
      {
        free(v6);
      }

      else
      {
        *a1 = v6;
      }
    }
  }
}

{
  va_start(va, a2);
  v3 = vsnprintf(0, 0, "error: task-local: detected illegal task-local value binding at %.*s:%d.\nTask-local values must only be set in a structured-context, such as: around any (synchronous or asynchronous function invocation), around an 'async let' declaration, or around a 'with(Throwing)TaskGroup(...){ ... }' invocation. Notably, binding a task-local value is illegal *within the body* of a withTaskGroup invocation.\n\nThe following example is illegal:\n\n    await withTaskGroup(...) { group in \n        await <task-local>.withValue(1234) {\n            group.addTask { ... }\n        }\n    }\n\nAnd should be replaced by, either: setting the value for the entire group:\n\n    // bind task-local for all tasks spawned within the group\n    await <task-local>.withValue(1234) {\n        await withTaskGroup(...) { group in\n            group.addTask { ... }\n        }\n    }\n\nor, inside the specific task-group child task:\n\n    // bind-task-local for only specific child-task\n    await withTaskGroup(...) { group in\n        group.addTask {\n            await <task-local>.withValue(1234) {\n                ... \n            }\n        }\n\n        group.addTask { ... }\n    }\n", va);
  *a1 = 0;
  if ((v3 & 0x80000000) == 0)
  {
    v4 = (v3 + 1);
    v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      if (vsnprintf(v5, v4, "error: task-local: detected illegal task-local value binding at %.*s:%d.\nTask-local values must only be set in a structured-context, such as: around any (synchronous or asynchronous function invocation), around an 'async let' declaration, or around a 'with(Throwing)TaskGroup(...){ ... }' invocation. Notably, binding a task-local value is illegal *within the body* of a withTaskGroup invocation.\n\nThe following example is illegal:\n\n    await withTaskGroup(...) { group in \n        await <task-local>.withValue(1234) {\n            group.addTask { ... }\n        }\n    }\n\nAnd should be replaced by, either: setting the value for the entire group:\n\n    // bind task-local for all tasks spawned within the group\n    await <task-local>.withValue(1234) {\n        await withTaskGroup(...) { group in\n            group.addTask { ... }\n        }\n    }\n\nor, inside the specific task-group child task:\n\n    // bind-task-local for only specific child-task\n    await withTaskGroup(...) { group in\n        group.addTask {\n            await <task-local>.withValue(1234) {\n                ... \n            }\n        }\n\n        group.addTask { ... }\n    }\n", va) < 0)
      {
        free(v6);
      }

      else
      {
        *a1 = v6;
      }
    }
  }
}

void swift_defaultActor_initialize(const void *a1)
{
  _X2 = 0;
  *(a1 + 16) = 0;
  v2 = *(a1 + 4);
  do
  {
    _X7 = *(a1 + 5);
    __asm { CASP            X6, X7, X2, X3, [X8] }

    _ZF = _X6 == v2;
    v2 = _X6;
  }

  while (!_ZF);
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 4) = 0u;
  swift::concurrency::trace::actor_create(a1);
}

uint64_t swift_defaultActor_destroy(unint64_t **a1)
{
  v2 = swift_retainCount();
  if (v2 >= 2)
  {
    swift_defaultActor_destroy_cold_1(a1, v2);
  }

  _X0 = 0;
  _X1 = 0;
  __asm { CASPA           X0, X1, X0, X1, [X8] }

  return result;
}

void swift_defaultActor_enqueue(uint64_t a1, uint64_t *ptr)
{
  v37 = *(a1 + 33);
  swift::concurrency::trace::actor_enqueue(ptr, a1);
  v4 = ptr;
  if (*ptr)
  {
    v5 = *ptr;
  }

  else
  {
    v5 = 0;
  }

  do
  {
    v6 = *(v5 + 64);
    if (v6 && (*(v6 + 3) & 1) != 0)
    {
      break;
    }

    v7 = *(v5 + 8);
    if (!v7)
    {
      break;
    }

    v5 = *(v5 + 8);
  }

  while ((*(v7 + 32) & 2) != 0);
  _X22 = 0;
  _X23 = 0;
  v10 = 0;
  v36 = *(ptr + 16);
  __asm { CASP            X22, X23, X22, X23, [X8] }

  v42 = v37 << 8;
  LODWORD(_X26) = _X22;
  v43 = ptr;
  while (1)
  {
    *(a1 + 16) = 0;
    if ((_X26 & 7) != 0)
    {
      if (BYTE1(_X26) >= v37)
      {
        v16 = _X26;
      }

      else
      {
        v16 = v42 | _X26 & 0xFFFF00FF | 0x10;
      }

      if ((_X26 & 7) == 1)
      {
        v17 = 0;
        v18 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v16 = v42 | _X26 & 0xFFFF00E8 | 1;
    }

    v18 = (v16 & 7) == 1;
    v17 = 1;
LABEL_17:
    v41 = _X26 & 7;
    v19 = BYTE1(v16);
    v20 = v16 & 7;
    _ZF = BYTE1(_X26) != BYTE1(v16) && v20 == 2;
    v22 = _ZF;
    if (v18 || v22)
    {
      PreferredTaskExecutor = 0;
      if (a1)
      {
        v24 = 0;
        if (!*(a1 + 32))
        {
          v39 = v10;
          PreferredTaskExecutor = swift::AsyncTask::getPreferredTaskExecutor(a1);
          v19 = BYTE1(v16);
          v10 = v39;
          v4 = v43;
          v24 = v25 & 0xFFFFFFFFFFFFFFF8;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      PreferredTaskExecutor = 0;
      v24 = 0;
    }

    v38 = v24;
    v40 = PreferredTaskExecutor;
    if (v20 == 1)
    {
      v26 = v17;
    }

    else
    {
      v26 = 0;
    }

    if (BYTE1(_X26) == v19)
    {
      v26 = 1;
    }

    if (((v26 | v10) & 1) == 0)
    {
      v27 = v19;

      v19 = v27;
      v4 = v43;
      v10 = 1;
    }

    v28 = _X22 & 0xFFFFFFFF00000000 | _X26;
    _X20 = v16;
    _X27 = 0;
    __asm { CASPL           X26, X27, X20, X21, [X8] }

    if (_X26 == v28)
    {
      break;
    }

    _X22 = _X26;
  }

  v31 = v10;
  v32 = a1;
  v33 = v19;
  swift::concurrency::trace::actor_state_changed(v4, v32, (0xFFFFFFFF03020100 >> (8 * v20)), v36, (v16 >> 4) & 1, v19);
  if (v41 == 1 || v20 != 1)
  {
LABEL_43:
    if ((v31 & 1) == 0)
    {
      return;
    }

    goto LABEL_44;
  }

  v34 = swift_slowAlloc();
  *v34 = swift::jobHeapMetadataPtr;
  v34[1] = 3;
  *(v34 + 8) = (v33 << 8) | 0xC1;
  *(v34 + 44) = 0;
  *(v34 + 36) = 0;
  *(v34 + 13) = 0;
  v34[5] = voucher_copy();
  v34[8] = v43;
  if (v40)
  {
    ObjectType = swift_getObjectType();
    _swift_task_enqueueOnTaskExecutor(v34, v40, ObjectType, v38);
    goto LABEL_43;
  }

  swift_task_enqueueGlobal(v34);
  if (v31)
  {
LABEL_44:
  }
}

void *swift_defaultActor_deallocate(void *result)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  if ((_X2 & 7) == 2)
  {
    v8 = HIDWORD(_X2);
    while (1)
    {
      _X4 = _X2 | 3;
      v10 = _X2 | (v8 << 32);
      _X3 = 0;
      __asm { CASP            X2, X3, X4, X5, [X8] }

      if (_X2 == v10)
      {
        break;
      }

      v8 = HIDWORD(_X2);
      if ((_X2 & 7) != 2)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    swift::concurrency::trace::actor_deallocate(result);

    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t *swift_defaultActor_deallocateResilient(uint64_t *result)
{
  if (*result)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  while (1)
  {
    v3 = *(v2 + 64);
    if (v3)
    {
      if (*(v3 + 3))
      {
        break;
      }
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      v2 = *(v2 + 8);
      if ((*(v4 + 32) & 2) != 0)
      {
        continue;
      }
    }

    v5 = *(v1 + 48);
    v6 = *(v1 + 52);

    return MEMORY[0x1EEE6BDD0](result, v5, v6);
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  if ((_X2 & 7) == 2)
  {
    v14 = HIDWORD(_X2);
    while (1)
    {
      _X4 = _X2 | 3;
      v16 = _X2 | (v14 << 32);
      _X3 = 0;
      __asm { CASP            X2, X3, X4, X5, [X8] }

      if (_X2 == v16)
      {
        break;
      }

      v14 = HIDWORD(_X2);
      if ((_X2 & 7) != 2)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    swift::concurrency::trace::actor_deallocate(result);

    return swift_deallocClassInstance();
  }

  return result;
}

void swift::swift_executor_escalate(unsigned __int8 *ptr, uint64_t a2, swift::AsyncTask *a3, unint64_t a4)
{
  if (ptr && !a2)
  {
    v5 = *ptr ? *ptr : 0;
    do
    {
      v6 = *(v5 + 64);
      if (v6 && (*(v6 + 3) & 1) != 0)
      {
        break;
      }

      v7 = *(v5 + 8);
      if (!v7)
      {
        break;
      }

      v5 = *(v5 + 8);
    }

    while ((*(v7 + 32) & 2) != 0);
    _X26 = 0;
    v22 = ptr[16];
    _X27 = 0;
    __asm { CASP            X26, X27, X26, X27, [X8] }

    if ((_X26 & 7) != 0)
    {
      v15 = HIDWORD(_X26);
      v16 = a4 << 8;
      while (1)
      {
        v17 = BYTE1(_X26) >= a4 ? _X26 : v16 | _X26 & 0xFFFF00FF | 0x10;
        v18 = BYTE1(_X26) >= a4 ? v15 << 32 : 0;
        if (_X26 == v17)
        {
          break;
        }

        if ((v17 & 7) == 1 && a3 && !*(a3 + 32))
        {
          swift::AsyncTask::getPreferredTaskExecutor(a3);
        }

        _X2 = v18 | v17;
        _X1 = 0;
        __asm { CASP            X0, X1, X2, X3, [X8] }

        if (_X0 == (_X26 | (v15 << 32)))
        {
          swift::concurrency::trace::actor_state_changed(ptr, 0, (0xFFFFFFFF03020100 >> (8 * (v17 & 7u))), v22, (v17 >> 4) & 1, BYTE1(v17));
          if ((_X26 & 7) == 0)
          {
            return;
          }
        }

        else
        {
          v15 = HIDWORD(_X0);
          LODWORD(_X26) = _X0;
          if ((_X0 & 7) == 0)
          {
            return;
          }
        }
      }
    }
  }
}

void swift_task_enqueue(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (swift_task_enqueue::Override == 1)
  {
    swift_task_enqueueImpl(a1, a2, a3);
  }

  else if (swift_task_enqueue::Override)
  {
    swift_task_enqueue::Override(a1, a2, a3, swift_task_enqueueImpl);
  }

  else
  {
    swift_task_enqueueSlow(a1, a2, a3);
  }
}

void swift_task_enqueueImpl(uint64_t a1, uint64_t *ptr, uint64_t a3)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(a1);
  }

  if (ptr)
  {
    if (a3)
    {
      ObjectType = swift_getObjectType();

      _swift_task_enqueueOnExecutor(a1, ptr, ObjectType, a3 & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {

      swift_defaultActor_enqueue(a1, ptr);
    }
  }

  else if (*(a1 + 32) || (PreferredTaskExecutor = swift::AsyncTask::getPreferredTaskExecutor(a1)) == 0)
  {

    swift_task_enqueueGlobal(a1);
  }

  else
  {
    v9 = v8;
    v10 = PreferredTaskExecutor;
    v11 = swift_getObjectType();

    _swift_task_enqueueOnTaskExecutor(a1, v10, v11, v9 & 0xFFFFFFFFFFFFFFF8);
  }
}

void swift_task_enqueueSlow(swift *a1, uint64_t *a2, uint64_t a3)
{
  Override_task_enqueue = swift::getOverride_task_enqueue(a1);
  if (Override_task_enqueue)
  {
    swift_task_enqueue::Override = Override_task_enqueue;

    Override_task_enqueue(a1, a2, a3, swift_task_enqueueImpl);
  }

  else
  {
    swift_task_enqueue::Override = 1;

    swift_task_enqueueImpl(a1, a2, a3);
  }
}

void swift_job_run(swift::AsyncTask *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  if (swift_job_run::Override == 1)
  {
    swift_job_runImpl(a1, a2, a3);
  }

  else if (swift_job_run::Override)
  {
    swift_job_run::Override(a1, a2, a3, swift_job_runImpl);
  }

  else
  {
    swift_job_runSlow(a1, a2, a3);
  }
}

void swift_job_runImpl(swift::AsyncTask *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  v15 = 1;
  LOBYTE(v16) = 0;
  v17 = 0;
  v3 = 0;
  if (a2)
  {
    v4 = 0;
    v15 = 0;
  }

  else if (a1)
  {
    v4 = 0;
    if (!*(a1 + 32))
    {
      v5 = a1;
      v6 = a3;
      PreferredTaskExecutor = swift::AsyncTask::getPreferredTaskExecutor(a1);
      a3 = v6;
      v3 = PreferredTaskExecutor;
      a1 = v5;
      v4 = v8;
      a2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = a2;
  v12 = a3;
  v13 = v3;
  v14 = v4;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v18 = *(StatusReg + 832);
  *(StatusReg + 832) = &v11;
  swift::runJobInEstablishedExecutorContext(a1);
  if (v17 == 1)
  {
    v10 = v16;
    if (*(StatusReg + 224) != v16)
    {
      v10 = voucher_adopt();
    }

    if (v10 + 1 >= 2)
    {
      os_release(v10);
    }

    if (v17 == 1)
    {
      v17 = 0;
    }
  }

  *(StatusReg + 832) = v18;
  if (v15 == 1 && v11 && !v12)
  {
  }
}

void swift_job_runSlow(swift *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  Override_job_run = swift::getOverride_job_run(a1);
  if (Override_job_run)
  {
    swift_job_run::Override = Override_job_run;

    Override_job_run(a1, a2, a3, swift_job_runImpl);
  }

  else
  {
    swift_job_run::Override = 1;

    swift_job_runImpl(a1, a2, a3);
  }
}

void swift_job_run_on_task_executor(swift *a1, uint64_t a2, uint64_t a3)
{
  if (swift_job_run_on_task_executor::Override == 1)
  {
    if (swift_job_run_on_serial_and_task_executor::Override == 1)
    {
      swift_job_run_on_serial_and_task_executorImpl(a1, 0, 0, a2, a3);
    }

    else if (swift_job_run_on_serial_and_task_executor::Override)
    {
      swift_job_run_on_serial_and_task_executor::Override(a1, 0, 0, a2, a3, swift_job_run_on_serial_and_task_executorImpl);
    }

    else
    {
      swift_job_run_on_serial_and_task_executorSlow(a1, 0, 0, a2, a3);
    }
  }

  else if (swift_job_run_on_task_executor::Override)
  {
    swift_job_run_on_task_executor::Override(a1, a2, a3, swift_job_run_on_task_executorImpl);
  }

  else
  {
    swift_job_run_on_task_executorSlow(a1, a2, a3);
  }
}

void swift_job_run_on_task_executorImpl(swift *a1, uint64_t a2, uint64_t a3)
{
  if (swift_job_run_on_serial_and_task_executor::Override == 1)
  {
    swift_job_run_on_serial_and_task_executorImpl(a1, 0, 0, a2, a3);
  }

  else if (swift_job_run_on_serial_and_task_executor::Override)
  {
    swift_job_run_on_serial_and_task_executor::Override(a1, 0, 0, a2, a3, swift_job_run_on_serial_and_task_executorImpl);
  }

  else
  {
    swift_job_run_on_serial_and_task_executorSlow(a1, 0, 0, a2, a3);
  }
}

void swift_job_run_on_task_executorSlow(swift *a1, uint64_t a2, uint64_t a3)
{
  Override_job_run_on_task_executor = swift::getOverride_job_run_on_task_executor(a1);
  if (Override_job_run_on_task_executor)
  {
    swift_job_run_on_task_executor::Override = Override_job_run_on_task_executor;

    Override_job_run_on_task_executor(a1, a2, a3, swift_job_run_on_task_executorImpl);
  }

  else
  {
    swift_job_run_on_task_executor::Override = 1;
    v7 = swift_job_run_on_serial_and_task_executor::Override;
    if (swift_job_run_on_serial_and_task_executor::Override == 1)
    {

      swift_job_run_on_serial_and_task_executorImpl(a1, 0, 0, a2, a3);
    }

    else if (swift_job_run_on_serial_and_task_executor::Override)
    {

      v7(a1, 0, 0, a2, a3, swift_job_run_on_serial_and_task_executorImpl);
    }

    else
    {

      swift_job_run_on_serial_and_task_executorSlow(a1, 0, 0, a2, a3);
    }
  }
}

void swift_job_run_on_serial_and_task_executor(uint64_t a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_job_run_on_serial_and_task_executor::Override == 1)
  {
    swift_job_run_on_serial_and_task_executorImpl(a1, a2, a3, a4, a5);
  }

  else if (swift_job_run_on_serial_and_task_executor::Override)
  {
    swift_job_run_on_serial_and_task_executor::Override(a1, a2, a3, a4, a5, swift_job_run_on_serial_and_task_executorImpl);
  }

  else
  {
    swift_job_run_on_serial_and_task_executorSlow(a1, a2, a3, a4, a5);
  }
}

void swift_job_run_on_serial_and_task_executorImpl(uint64_t a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v12) = 0;
  v13 = 0;
  v11 = 0;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v14 = *(StatusReg + 832);
  *(StatusReg + 832) = &v7;
  swift::runJobInEstablishedExecutorContext(a1);
  if (v13 == 1)
  {
    v6 = v12;
    if (*(StatusReg + 224) != v12)
    {
      v6 = voucher_adopt();
    }

    if (v6 + 1 >= 2)
    {
      os_release(v6);
    }

    if (v13 == 1)
    {
      v13 = 0;
    }
  }

  *(StatusReg + 832) = v14;
  if (v11 == 1 && v7 && !v8)
  {
  }
}

void swift_job_run_on_serial_and_task_executorSlow(swift *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Override_job_run_on_serial_and_task_executor = swift::getOverride_job_run_on_serial_and_task_executor(a1);
  if (Override_job_run_on_serial_and_task_executor)
  {
    swift_job_run_on_serial_and_task_executor::Override = Override_job_run_on_serial_and_task_executor;

    Override_job_run_on_serial_and_task_executor(a1, a2, a3, a4, a5, swift_job_run_on_serial_and_task_executorImpl);
  }

  else
  {
    swift_job_run_on_serial_and_task_executor::Override = 1;

    swift_job_run_on_serial_and_task_executorImpl(a1, a2, a3, a4, a5);
  }
}

uint64_t swift_task_getCurrentExecutor(swift *a1)
{
  if (swift_task_getCurrentExecutor::Override == 1)
  {
    v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 832);
    if (v1)
    {
      return *v1;
    }

    else
    {
      return 0;
    }
  }

  else if (swift_task_getCurrentExecutor::Override)
  {
    return swift_task_getCurrentExecutor::Override(swift_task_getCurrentExecutorImpl);
  }

  else
  {
    return swift_task_getCurrentExecutorSlow(a1);
  }
}

uint64_t swift_task_getCurrentExecutorImpl(void)
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 832);
  if (v0)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t swift_task_getCurrentExecutorSlow(swift *a1)
{
  CurrentExecutor = swift::getOverride_task_getCurrentExecutor(a1);
  if (CurrentExecutor)
  {
    swift_task_getCurrentExecutor::Override = CurrentExecutor;

    return CurrentExecutor(swift_task_getCurrentExecutorImpl);
  }

  else
  {
    swift_task_getCurrentExecutor::Override = 1;
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 832);
    if (v3)
    {
      return *v3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t swift_task_isCurrentExecutor(swift *a1, uint64_t a2)
{
  v3 = swift_task_isCurrentExecutor::Override;
  if (swift_task_isCurrentExecutor::Override == 1)
  {
    if (qword_1ED42EA48 != -1)
    {
      v7 = a2;
      v8 = a1;
      swift_task_isCurrentExecutor_cold_1(a1);
      a1 = v8;
      a2 = v7;
    }

    v4 = _MergedGlobals;
    v5 = swift_task_isCurrentExecutorWithFlags::Override;
    if (swift_task_isCurrentExecutorWithFlags::Override == 1)
    {

      return swift_task_isCurrentExecutorWithFlagsImpl(a1, a2, v4);
    }

    else if (swift_task_isCurrentExecutorWithFlags::Override)
    {

      return v5(a1, a2, v4, swift_task_isCurrentExecutorWithFlagsImpl);
    }

    else
    {

      return swift_task_isCurrentExecutorWithFlagsSlow(a1, a2, v4);
    }
  }

  else if (swift_task_isCurrentExecutor::Override)
  {

    return v3(a1, a2, swift_task_isCurrentExecutorImpl);
  }

  else
  {

    return swift_task_isCurrentExecutorSlow(a1, a2);
  }
}

uint64_t swift_task_isCurrentExecutorImpl(swift *a1, uint64_t a2)
{
  if (qword_1ED42EA48 != -1)
  {
    v6 = a2;
    v7 = a1;
    swift_task_isCurrentExecutor_cold_1(a1);
    a1 = v7;
    a2 = v6;
  }

  v3 = _MergedGlobals;
  v4 = swift_task_isCurrentExecutorWithFlags::Override;
  if (swift_task_isCurrentExecutorWithFlags::Override == 1)
  {

    return swift_task_isCurrentExecutorWithFlagsImpl(a1, a2, v3);
  }

  else if (swift_task_isCurrentExecutorWithFlags::Override)
  {

    return v4(a1, a2, v3, swift_task_isCurrentExecutorWithFlagsImpl);
  }

  else
  {

    return swift_task_isCurrentExecutorWithFlagsSlow(a1, a2, v3);
  }
}

uint64_t swift_task_isCurrentExecutorSlow(swift *a1, uint64_t a2)
{
  isCurrentExecutor = swift::getOverride_task_isCurrentExecutor(a1);
  if (isCurrentExecutor)
  {
    swift_task_isCurrentExecutor::Override = isCurrentExecutor;

    return (isCurrentExecutor)(a1, a2, swift_task_isCurrentExecutorImpl);
  }

  else
  {
    swift_task_isCurrentExecutor::Override = 1;
    if (qword_1ED42EA48 != -1)
    {
      dispatch_once_f(&qword_1ED42EA48, &_MergedGlobals, swift_task_setDefaultExecutorCheckingFlags);
    }

    v6 = _MergedGlobals;
    v7 = swift_task_isCurrentExecutorWithFlags::Override;
    if (swift_task_isCurrentExecutorWithFlags::Override == 1)
    {

      return swift_task_isCurrentExecutorWithFlagsImpl(a1, a2, v6);
    }

    else if (swift_task_isCurrentExecutorWithFlags::Override)
    {

      return v7(a1, a2, v6, swift_task_isCurrentExecutorWithFlagsImpl);
    }

    else
    {

      return swift_task_isCurrentExecutorWithFlagsSlow(a1, a2, v6);
    }
  }
}

uint64_t swift_task_isCurrentExecutorWithFlags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_task_isCurrentExecutorWithFlags::Override == 1)
  {
    return swift_task_isCurrentExecutorWithFlagsImpl(a1, a2, a3);
  }

  if (swift_task_isCurrentExecutorWithFlags::Override)
  {
    return swift_task_isCurrentExecutorWithFlags::Override(a1, a2, a3, swift_task_isCurrentExecutorWithFlagsImpl);
  }

  return swift_task_isCurrentExecutorWithFlagsSlow(a1, a2, a3);
}

uint64_t swift_task_isCurrentExecutorWithFlagsImpl(uint64_t a1, uint64_t a2, char a3)
{
  v20 = a1;
  v21 = a2;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 832);
  if (!v4)
  {
    if (!swift::SerialExecutorRef::isMainExecutor(&v20) || !pthread_main_np())
    {
      isIsolatingCurrentContext = swift_task_isIsolatingCurrentContext(v20, v21);
      result = swift::getIsIsolatingCurrentContextDecisionFromInt(isIsolatingCurrentContext, v16, v17, v18);
      if (result == 1)
      {
        return result;
      }

      if (!result)
      {
        return 0;
      }

LABEL_24:
      if ((a3 & 8) == 0)
      {
        return 0;
      }

      swift_task_checkIsolated(v20, v21);
      return 1;
    }

    return 1;
  }

  v19 = *v4;
  if (v19 == a1 || swift::SerialExecutorRef::isMainExecutor(&v19) && (swift::SerialExecutorRef::isMainExecutor(&v20) & 1) != 0)
  {
    return 1;
  }

  if ((a3 & 8) != 0)
  {
LABEL_10:
    v6 = v20;
    if ((v21 & 7) != 1 || !v19 || !*(&v19 + 1) || !v20 || (v7 = swift_compareWitnessTables(), v6 = v20, (v7 & 1) == 0))
    {
LABEL_17:
      v11 = swift_task_isIsolatingCurrentContext(v6, v21);
      result = swift::getIsIsolatingCurrentContextDecisionFromInt(v11, v12, v13, v14);
      if (result == 1)
      {
        return result;
      }

      if (!result)
      {
        return 0;
      }

      goto LABEL_24;
    }

    v8 = v19;
    v9 = v20;
    ObjectType = swift_getObjectType();
    if ((_task_serialExecutor_isSameExclusiveExecutionContext(v8, v9, ObjectType, v21 & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
    {
      v6 = v20;
      goto LABEL_17;
    }

    return 1;
  }

  if (!swift::SerialExecutorRef::isMainExecutor(&v20) || (result = swift::SerialExecutorRef::isMainExecutor(&v19), result))
  {
    if (swift::SerialExecutorRef::isMainExecutor(&v20) & 1) == 0 && (swift::SerialExecutorRef::isMainExecutor(&v19))
    {
      return 0;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t swift_task_isCurrentExecutorWithFlagsSlow(swift *a1, uint64_t a2, uint64_t a3)
{
  isCurrentExecutorWithFlags = swift::getOverride_task_isCurrentExecutorWithFlags(a1);
  if (isCurrentExecutorWithFlags)
  {
    swift_task_isCurrentExecutorWithFlags::Override = isCurrentExecutorWithFlags;

    return isCurrentExecutorWithFlags(a1, a2, a3, swift_task_isCurrentExecutorWithFlagsImpl);
  }

  else
  {
    swift_task_isCurrentExecutorWithFlags::Override = 1;

    return swift_task_isCurrentExecutorWithFlagsImpl(a1, a2, a3);
  }
}

void swift_task_switch(void (*a1)(void), _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  if (swift_task_switch::Override == 1)
  {
    swift_task_switchImpl(a1, a2, a3);
  }

  else if (swift_task_switch::Override)
  {
    swift_task_switch::Override(a1, a2, a3, swift_task_switchImpl);
  }

  else
  {
    swift_task_switchSlow(a1, a2, a3);
  }
}

void swift_task_switchImpl(void (*a1)(void), _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  v30 = v3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = StatusReg[103];
  v8 = StatusReg[104];
  if (v8)
  {
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  PreferredTaskExecutor = swift::AsyncTask::getPreferredTaskExecutor(v7);
  if (v9 == a2 && PreferredTaskExecutor == v11)
  {
    v13 = a1;

LABEL_8:
    v13();
    return;
  }

  if (v3)
  {
    v14 = v3;
  }

  else
  {
    v14 = 0;
  }

  v7[8] = v14;
  v15 = v7 + 7;
  if (a1)
  {
    *v15 = a1;
    if (v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *v15 = 0;
    if (v11)
    {
      goto LABEL_30;
    }
  }

  if (v8 && *(v8 + 32) != 1)
  {
    goto LABEL_30;
  }

  if (v9)
  {
    if (v10)
    {
      goto LABEL_30;
    }
  }

  else if ((v10 & 7) == 2)
  {
    goto LABEL_30;
  }

  if (a2)
  {
    {
      goto LABEL_25;
    }

LABEL_30:
    StatusReg[103] = 0;

    swift::AsyncTask::flagAsAndEnqueueOnExecutor(v7, a2, a3);
    return;
  }

  if (PreferredTaskExecutor)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (v9)
  {
  }

  if (v8)
  {
    *v8 = a2;
    *(v8 + 8) = a3;
    *(v8 + 16) = swift::AsyncTask::getPreferredTaskExecutor(v7);
    *(v8 + 24) = v16;
    v13 = v7[7];

    goto LABEL_8;
  }

  v26 = 1;
  LOBYTE(v27) = 0;
  v28 = 0;
  v22 = a2;
  v23 = a3;
  v24 = swift::AsyncTask::getPreferredTaskExecutor(v7);
  v25 = v17;
  v29 = StatusReg[104];
  StatusReg[104] = &v22;
  (v7[7])();
  v18 = v22;
  v19 = v23;
  if (v28 == 1)
  {
    v20 = v27;
    if (StatusReg[28] != v27)
    {
      v20 = voucher_adopt();
    }

    if (v20 + 1 >= 2)
    {
      os_release(v20);
    }

    if (v28 == 1)
    {
      v28 = 0;
    }
  }

  StatusReg[104] = v29;
  if (v18 && !v19)
  {
  }
}

void swift_task_switchSlow(swift *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  Override_task_switch = swift::getOverride_task_switch(a1);
  if (Override_task_switch)
  {
    swift_task_switch::Override = Override_task_switch;

    Override_task_switch(a1, a2, a3, swift_task_switchImpl);
  }

  else
  {
    swift_task_switch::Override = 1;

    swift_task_switchImpl(a1, a2, a3);
  }
}

void swift_task_deinitOnExecutor(swift *a1, void (*a2)(swift *), swift *a3, uint64_t a4, uint64_t a5)
{
  if (swift_task_deinitOnExecutor::Override == 1)
  {
    swift_task_deinitOnExecutorImpl(a1, a2, a3, a4);
  }

  else if (swift_task_deinitOnExecutor::Override)
  {
    swift_task_deinitOnExecutor::Override(a1, a2, a3, a4, a5, swift_task_deinitOnExecutorImpl);
  }

  else
  {
    swift_task_deinitOnExecutorSlow(a1, a2, a3, a4, a5);
  }
}

void swift_task_deinitOnExecutorImpl(swift *a1, void (*a2)(swift *), swift *a3, uint64_t a4)
{
  if (swift_task_isCurrentExecutorWithFlags::Override == 1)
  {
    if (swift_task_isCurrentExecutorWithFlagsImpl(a3, a4, 0))
    {
LABEL_3:
      swift::TaskLocal::StopLookupScope::StopLookupScope(v22);
      a2(a1);
      swift::TaskLocal::StopLookupScope::~StopLookupScope(v22, v9, v10, v11);
      return;
    }
  }

  else if (swift_task_isCurrentExecutorWithFlags::Override)
  {
    if (swift_task_isCurrentExecutorWithFlags::Override(a3, a4, 0, swift_task_isCurrentExecutorWithFlagsImpl))
    {
      goto LABEL_3;
    }
  }

  else if (swift_task_isCurrentExecutorWithFlagsSlow(a3, a4, 0))
  {
    goto LABEL_3;
  }

  {
    v23 = 1;
    LOBYTE(v24) = 0;
    v25 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22[0] = a3;
    memset(&v22[1], 0, 24);
    v26 = *(StatusReg + 832);
    *(StatusReg + 832) = v22;
    swift::TaskLocal::StopLookupScope::StopLookupScope(v21);
    a2(a1);
    swift::TaskLocal::StopLookupScope::~StopLookupScope(v21, v13, v14, v15);
    if (v25 == 1)
    {
      v16 = v24;
      if (*(StatusReg + 224) != v24)
      {
        v16 = voucher_adopt();
      }

      if (v16 + 1 >= 2)
      {
        os_release(v16);
      }

      if (v25 == 1)
      {
        v25 = 0;
      }
    }

    *(StatusReg + 832) = v26;
  }

  else
  {
    if (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 824))
    {
      v17 = swift_task_currentPriority();
    }

    else
    {
      v17 = qos_class_self();
    }

    v18 = swift_slowAlloc();
    *v18 = swift::jobHeapMetadataPtr;
    *(v18 + 8) = 3;
    *(v18 + 32) = (v17 << 8) | 0xC4;
    *(v18 + 44) = 0;
    *(v18 + 36) = 0;
    *(v18 + 52) = 0;
    *(v18 + 40) = voucher_copy();
    *(v18 + 64) = a1;
    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0;
    }

    *(v18 + 72) = v19;
    v20 = swift_task_enqueue::Override;
    if (swift_task_enqueue::Override == 1)
    {

      swift_task_enqueueImpl(v18, a3, a4);
    }

    else if (swift_task_enqueue::Override)
    {

      v20(v18, a3, a4, swift_task_enqueueImpl);
    }

    else
    {

      swift_task_enqueueSlow(v18, a3, a4);
    }
  }
}

void swift_task_deinitOnExecutorSlow(swift *a1, void (*a2)(swift *), swift *a3, uint64_t a4, uint64_t a5)
{
  Override_task_deinitOnExecutor = swift::getOverride_task_deinitOnExecutor(a1);
  if (Override_task_deinitOnExecutor)
  {
    swift_task_deinitOnExecutor::Override = Override_task_deinitOnExecutor;

    Override_task_deinitOnExecutor(a1, a2, a3, a4, a5, swift_task_deinitOnExecutorImpl);
  }

  else
  {
    swift_task_deinitOnExecutor::Override = 1;

    swift_task_deinitOnExecutorImpl(a1, a2, a3, a4);
  }
}

void swift_task_immediate(swift *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  if (swift_task_immediate::Override == 1)
  {
    swift_task_immediateImpl(a1, a2, a3);
  }

  else if (swift_task_immediate::Override)
  {
    swift_task_immediate::Override(a1, a2, a3, swift_task_immediateImpl);
  }

  else
  {
    swift_task_immediateSlow(a1, a2, a3);
  }
}

void swift_task_immediateImpl(swift *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{

  v6 = a2;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 824);
  if (!v6)
  {
    *(StatusReg + 824) = a1;
    v9 = swift_job_run::Override;
    if (swift_job_run::Override == 1)
    {
      v10 = a1;
      v6 = 0;
      v11 = 2;
      goto LABEL_6;
    }

    if (!swift_job_run::Override)
    {
      swift_job_runSlow(a1, 0, 2);
      goto LABEL_7;
    }

    v12 = a1;
    v6 = 0;
    v13 = 2;
LABEL_12:
    v9(v12, v6, v13, swift_job_runImpl);
    goto LABEL_7;
  }

  *(StatusReg + 824) = 0;
  v9 = swift_job_run::Override;
  if (swift_job_run::Override != 1)
  {
    if (!swift_job_run::Override)
    {
      swift_job_runSlow(a1, v6, a3);
      goto LABEL_7;
    }

    v12 = a1;
    v13 = a3;
    goto LABEL_12;
  }

  v10 = a1;
  v11 = a3;
LABEL_6:
  swift_job_runImpl(v10, v6, v11);
LABEL_7:
  *(StatusReg + 824) = v8;
}

void swift_task_immediateSlow(swift *a1, _anonymous_namespace_::DefaultActorImpl *a2, uint64_t a3)
{
  Override_task_immediate = swift::getOverride_task_immediate(a1);
  if (Override_task_immediate)
  {
    swift_task_immediate::Override = Override_task_immediate;

    Override_task_immediate(a1, a2, a3, swift_task_immediateImpl);
  }

  else
  {
    swift_task_immediate::Override = 1;

    swift_task_immediateImpl(a1, a2, a3);
  }
}

uint64_t swift_distributedActor_remote_initialize(void *a1)
{
  v1 = a1;
  if ((*a1 - 2048) >= 0xFFFFFFFFFFFFF801)
  {
    v1 = a1[1];
  }

  v2 = swift_allocObject();
  bzero((v2 + 16), *(v1 + 12) - 16);
  while (1)
  {
    v3 = v1[8];
    if (v3)
    {
      if (*(v3 + 3))
      {
        break;
      }
    }

    v4 = v1[1];
    if (v4)
    {
      v1 = v1[1];
      if ((*(v4 + 32) & 2) != 0)
      {
        continue;
      }
    }

    *(v2 + 16) = 1;
    goto LABEL_9;
  }

  _X0 = 0;
  *(v2 + 16) = 1;
  v7 = *(v2 + 32);
  do
  {
    _X5 = *(v2 + 40);
    __asm { CASP            X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v7;
    v7 = _X4;
  }

  while (!_ZF);
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 64) = 0u;
LABEL_9:
  swift::concurrency::trace::actor_create(v2);
  return v2;
}