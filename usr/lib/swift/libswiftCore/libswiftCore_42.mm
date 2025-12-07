uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      if (a3 == 1)
      {
        v5 = 1;
      }

      else
      {
        a2[1] = a5;
        v5 = 2;
        a3 = 2;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    a3 = 0;
  }

  *a1 = a4;
  a1[1] = a5;
  a1[2] = v5;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, _WORD *a2, uint64_t a3, unsigned int a4)
{
  if (!a2)
  {
    v5 = 0;
LABEL_16:
    *result = a4;
    *(result + 8) = v5;
    return v5;
  }

  if (a3 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
    v5 = 0;
    goto LABEL_16;
  }

  if (HIWORD(a4))
  {
    v4 = ((a4 + 67043328) >> 10) - 10240;
  }

  else
  {
    v4 = a4;
  }

  if (a4 < 0x10000 || !((((a4 + 67043328) >> 10) + 55296) >> 16))
  {
    *a2 = v4;
    v5 = 1;
    if (a3 != 1 && a4 >= 0x10000)
    {
      a2[1] = a4 & 0x3FF | 0xDC00;
      v5 = 2;
      if (a3 == 2)
      {
        v5 = 2;
      }
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, _BYTE *a2, uint64_t a3, unsigned int a4)
{
  if (!a2)
  {
    v8 = 0;
    v6 = 0;
    goto LABEL_13;
  }

  v6 = a3;
  if (a3 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
    v8 = 0;
    goto LABEL_13;
  }

  *a2 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a4, 0);
  if (a4 >= 0x80)
  {
    if (v6 == 1)
    {
      v8 = 1;
      goto LABEL_13;
    }

    a2[1] = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a4, 1uLL);
    if (v6 == 2)
    {
      v8 = 2;
      goto LABEL_13;
    }

    if (a4 >= 0x800)
    {
      a2[2] = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a4, 2uLL);
      if (v6 == 3)
      {
        v8 = 3;
        goto LABEL_13;
      }

      if (a4 >= 0x10000)
      {
        a2[3] = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a4, 3uLL);
        v8 = v6;
        if (v6 == 4)
        {
          goto LABEL_13;
        }

        v8 = 4;
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 2;
    }

    goto LABEL_6;
  }

  v8 = 1;
  if (v6 != 1)
  {
LABEL_6:
    v6 = v8;
  }

LABEL_13:
  *a1 = a4;
  *(a1 + 8) = v8;
  return v6;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      v4 = 1;
      a3 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    a3 = 0;
  }

  *a1 = a4;
  *(a1 + 8) = v4;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3, unsigned __int16 a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      v4 = 1;
      a3 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    a3 = 0;
  }

  *a1 = a4;
  *(a1 + 8) = v4;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      v4 = 1;
      a3 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    a3 = 0;
  }

  *a1 = a4;
  *(a1 + 8) = v4;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      v4 = 1;
      a3 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    a3 = 0;
  }

  *a1 = a4;
  *(a1 + 8) = v4;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3, __int16 a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      v4 = 1;
      a3 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    a3 = 0;
  }

  *a1 = a4;
  *(a1 + 8) = v4;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      v4 = 1;
      a3 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    a3 = 0;
  }

  *a1 = a4;
  *(a1 + 8) = v4;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v13 = a4;
  *(&v13 + 1) = a5;
  *&v14 = a6;
  *(&v14 + 1) = a7;
  *&v15 = a4;
  BYTE8(v15) = 1;
  *&v16 = &_swiftEmptyArrayStorage;
  BYTE8(v16) = 0;
  HIDWORD(v16) = 0;
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_11:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v7 = 0;
      while (1)
      {
        if (a3 == v7)
        {
          goto LABEL_11;
        }

        v8 = a2;
        v9 = a3;
        v10 = a1;
        v11 = specialized Unicode._InternalNFD.Iterator.next()();
        if ((v11 & 0x100000000) != 0)
        {
          break;
        }

        a2 = v8;
        *(v8 + 4 * v7++) = v11;
        a3 = v9;
        a1 = v10;
        if (v9 == v7)
        {
          goto LABEL_10;
        }
      }

      a3 = v7;
      a1 = v10;
    }
  }

  else
  {
    a3 = 0;
  }

LABEL_10:
  *(a1 + 32) = v15;
  *(a1 + 48) = v16;
  *(a1 + 64) = 0x10000;
  *a1 = v13;
  *(a1 + 16) = v14;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a1;
  *&v34 = a4;
  *(&v34 + 1) = a5;
  if ((a7 & 0x2000000000000000) != 0)
  {
    v8 = a7;
  }

  else
  {
    v8 = a6;
  }

  *&v35 = a6;
  *(&v35 + 1) = a7;
  *&v36 = a4;
  WORD4(v36) = 1;
  BYTE10(v36) = (v8 & 0x4000000000000000) != 0;
  LOBYTE(v37) = 1;
  *(&v37 + 1) = &_swiftEmptyArrayStorage;
  LOBYTE(v38) = 0;
  *(&v38 + 4) = 0x1000000000000;
  *&v39 = &_swiftEmptyArrayStorage;
  BYTE8(v39) = 0;
  HIDWORD(v39) = 0;
  v40 = 1;
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_40:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v10 = a2;
      for (i = 0; i != a3; ++i)
      {
        if (i == a3)
        {
          goto LABEL_40;
        }

        MEMORY[0x1EEE9AC00](a1, a2);
        if (BYTE9(v36) != 1)
        {
          if (BYTE10(v36))
          {
            a1 = specialized closure #1 in Unicode._InternalNFC.Iterator.next()(&v34, v12);
            if ((a1 & 0x100000000) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            a1 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v36 + 8, partial apply for specialized closure #1 in Unicode._InternalNFC.Iterator.next());
            if ((a1 & 0x100000000) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        BYTE9(v36) = 1;
        if (BYTE10(v36))
        {
          goto LABEL_42;
        }

        a1 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v36 + 8);
        if ((a1 & 0x100000000) != 0)
        {
          v13 = HIDWORD(v39);
          v14 = v40;
          HIDWORD(v39) = a1;
          v40 = 1;
          if (v14 == 1)
          {
            v15 = v39;
            v16 = *(v39 + 16);
            if (!v16)
            {
              BYTE8(v39) = 0;
              goto LABEL_42;
            }

            if ((BYTE8(v39) & 1) == 0)
            {
              v17 = v16 - 1;
              if (v16 != 1)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v39);
                *&v39 = v15;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                }

                *&v39 = v15;
                v22 = &v15[v16 + 3] + 2;
                v23 = v15 + 18;
                v24 = 1;
                do
                {
                  if (v24 - 1 != v17)
                  {
                    v26 = v15[2];
                    if (v24 - 1 >= v26 || v17 >= v26)
                    {
                      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                    }

                    v27 = *v23;
                    v28 = *(v23 - 1);
                    v29 = *v22;
                    *(v23 - 1) = *(v22 - 1);
                    *v23 = v29;
                    *(v22 - 1) = v28;
                    *v22 = v27;
                  }

                  --v17;
                  v22 -= 4;
                  v23 += 4;
                }

                while (v24++ < v17);
                *&v39 = v15;
              }

              BYTE8(v39) = 1;
              if (!v15[2])
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v18 = swift_isUniquelyReferenced_nonNull_native(v15);
            *&v39 = v15;
            if (v18)
            {
              v19 = v15[2];
              if (!v19)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
              *&v39 = v15;
              v19 = v15[2];
              if (!v19)
              {
LABEL_47:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v20 = (v19 - 1);
            a1 = LODWORD(v15[v20 + 4]);
            v15[2] = v20;
            *&v39 = v15;
          }

          else
          {
            a1 = v13;
          }
        }

LABEL_26:
        *v10++ = a1;
      }
    }

    i = a3;
  }

  else
  {
    i = 0;
  }

LABEL_42:
  v30 = v39;
  *(v7 + 64) = v38;
  *(v7 + 80) = v30;
  *(v7 + 96) = v40;
  v31 = v35;
  *v7 = v34;
  *(v7 + 16) = v31;
  v32 = v37;
  *(v7 + 32) = v36;
  *(v7 + 48) = v32;
  return i;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for __CocoaDictionary.Iterator();
  v9 = swift_allocObject(v8, 0xE8, 7uLL);
  *(v9 + 1) = 0u;
  v9[27] = 0;
  v10 = v9 + 27;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  *(v9 + 10) = 0u;
  *(v9 + 11) = 0u;
  *(v9 + 12) = 0u;
  v9[28] = 0;
  v9[26] = a4;
  if (!a2)
  {
    goto LABEL_17;
  }

  if (a3 < 0)
  {
LABEL_19:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  v23 = a1;
  v11 = 0;
  v12 = &unk_1E69ED000;
  while (1)
  {
    if (a3 == v11)
    {
      goto LABEL_19;
    }

    v13 = *v10;
    if ((*v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    if (v13 != v9[28])
    {
      v15 = v9[3];
      if (!v15)
      {
        goto LABEL_25;
      }

      if (v13 >> 60)
      {
        __break(1u);
LABEL_24:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_13;
    }

    v14 = [v9[26] countByEnumeratingWithState:v9 + 2 objects:v9 + 10 count:16];
    v9[28] = v14;
    if (!v14)
    {
      break;
    }

    v9[27] = 0;
    v15 = v9[3];
    if (!v15)
    {
      goto LABEL_25;
    }

    v13 = 0;
LABEL_13:
    v16 = (v15 + 8 * v13);
    if ((v16 & 7) != 0)
    {
      goto LABEL_24;
    }

    v17 = *v16;
    v9[27] = v13 + 1;
    v18 = v9[26];
    v19 = v12;
    v20 = v12[432];
    swift_unknownObjectRetain(v17);
    v21 = [v18 v20];
    if (!v21)
    {
LABEL_25:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    ++v11;
    *a2 = v17;
    a2[1] = v21;
    a2 += 2;
    v12 = v19;
    if (a3 == v11)
    {
      v11 = a3;
      goto LABEL_21;
    }
  }

  *v10 = -1;
LABEL_21:
  a1 = v23;
LABEL_18:
  *a1 = v9;
  return v11;
}

{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      v4 = 1;
      a3 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    a3 = 0;
  }

  *a1 = a4;
  a1[1] = v4;
  return a3;
}

{
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v15 = 0;
    v10 = 0;
    goto LABEL_22;
  }

  v10 = a3;
  if (a3 < 0)
  {
LABEL_25:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
    v15 = 0;
    goto LABEL_22;
  }

  v11 = a2;
  v12 = 0;
  v13 = 0;
  for (i = (63 - v7) >> 6; v9; v12 = v15)
  {
    v15 = v12;
LABEL_13:
    ++v13;
    v17 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
    v18 = v17[1];
    v9 &= v9 - 1;
    *v11 = *v17;
    v11[1] = v18;
    if (v13 == v10)
    {
      v18;
      goto LABEL_22;
    }

    v11 += 2;
    v18;
  }

  v16 = v12;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v15 >= i)
    {
      break;
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      goto LABEL_13;
    }
  }

  v9 = 0;
  if (i <= v12 + 1)
  {
    v19 = v12 + 1;
  }

  else
  {
    v19 = (63 - v7) >> 6;
  }

  v15 = v19 - 1;
  v10 = v13;
LABEL_22:
  *a1 = a4;
  a1[1] = v6;
  a1[2] = ~v7;
  a1[3] = v15;
  a1[4] = v9;
  return v10;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      goto LABEL_11;
    }

    if (a3)
    {
      v4 = 0;
      while (a3 != v4)
      {
        if (!a4)
        {
          goto LABEL_10;
        }

        *(a2 + v4) = a4 - 1;
        a4 >>= 8;
        if (a3 == ++v4)
        {
          goto LABEL_8;
        }
      }

LABEL_11:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_8:
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

LABEL_10:
  *a1 = a4;
  return v4;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t **a1, unint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  if (a5 < 1)
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v7 = 0;
    a3 = 0;
    goto LABEL_23;
  }

  v5 = *a4;
  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (a3 < 0)
  {
    goto LABEL_17;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_23;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    if (v6 == a3)
    {
      goto LABEL_17;
    }

    v8 = v7;
    if (v5)
    {
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = v9 | (v7 << 6);
      goto LABEL_13;
    }

    do
    {
      v11 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_17:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v11 >= a5)
      {
        v5 = 0;
        if (a5 <= (v7 + 1))
        {
          v14 = (v7 + 1);
        }

        else
        {
          v14 = a5;
        }

        v7 = (v14 - 1);
        a3 = v6;
        goto LABEL_23;
      }

      v12 = a4[v11];
      v8 = (v8 + 1);
    }

    while (!v12);
    v13 = __clz(__rbit64(v12));
    v5 = (v12 - 1) & v12;
    v10 = v13 | (v11 << 6);
    v7 = v11;
LABEL_13:
    ++v6;
    *a2++ = v10;
  }

  while (v6 != a3);
LABEL_23:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v7;
  a1[3] = v5;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      goto LABEL_11;
    }

    if (a3)
    {
      v4 = 0;
      while (a3 != v4)
      {
        if (!a4)
        {
          goto LABEL_10;
        }

        *(a2 + 8 * v4) = __clz(__rbit64(a4));
        a4 &= a4 - 1;
        if (a3 == ++v4)
        {
          goto LABEL_8;
        }
      }

LABEL_11:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_8:
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

LABEL_10:
  *a1 = a4;
  return v4;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t *a1, _BYTE *a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (a2)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_23:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v5 = HIBYTE(a5) & 0xF;
      v6 = a3 - 1;
      if (a3 - 1 >= v5)
      {
        v6 = HIBYTE(a5) & 0xF;
      }

      if (v6 >= a3)
      {
        v6 = a3;
      }

      if (v6 >= 8)
      {
        v9 = a2;
        v10 = v6 + 1;
        v11 = v10 & 7;
        if ((v10 & 7) == 0)
        {
          v11 = 8;
        }

        v7 = v10 - v11;
        a2 += v7;
        v12 = vdupq_n_s64(a5);
        v13 = xmmword_18071DCD0;
        v14 = xmmword_18071DCE0;
        v15 = xmmword_18071DCF0;
        v16 = xmmword_180672710;
        v17 = vdupq_n_s64(a4);
        v18 = vdupq_n_s64(0x38uLL);
        v19 = v7;
        do
        {
          v20 = vdupq_n_s64(8uLL);
          v21 = vshlq_n_s64(v13, 3uLL);
          v22 = vshlq_n_s64(v14, 3uLL);
          v23 = vshlq_n_s64(v16, 3uLL);
          v24 = vshlq_n_s64(v15, 3uLL);
          v29.val[1] = vbslq_s8(vcgtq_u64(v20, v15), vshlq_u64(v17, vnegq_s64(v24)), vshlq_u64(v12, vnegq_s64(vandq_s8(v24, v18))));
          v29.val[0] = vbslq_s8(vcgtq_u64(v20, v16), vshlq_u64(v17, vnegq_s64(v23)), vshlq_u64(v12, vnegq_s64(vandq_s8(v23, v18))));
          v29.val[2] = vbslq_s8(vcgtq_u64(v20, v14), vshlq_u64(v17, vnegq_s64(v22)), vshlq_u64(v12, vnegq_s64(vandq_s8(v22, v18))));
          v29.val[3] = vbslq_s8(vcgtq_u64(v20, v13), vshlq_u64(v17, vnegq_s64(v21)), vshlq_u64(v12, vnegq_s64(vandq_s8(v21, v18))));
          *v9++ = vqtbl4q_s8(v29, xmmword_18071DD00).u64[0];
          v14 = vaddq_s64(v14, v20);
          v15 = vaddq_s64(v15, v20);
          v16 = vaddq_s64(v16, v20);
          v13 = vaddq_s64(v13, v20);
          v19 -= 8;
        }

        while (v19);
      }

      else
      {
        v7 = 0;
      }

      v25 = 8 * v7;
      while (1)
      {
        if (a3 == v7)
        {
          goto LABEL_23;
        }

        if (v5 == v7)
        {
          break;
        }

        v26 = v7 >= 8;
        v27 = v7 + 1;
        v28 = a5 >> (v25 & 0x38);
        if (!v26)
        {
          v28 = a4 >> v25;
        }

        *a2++ = v28;
        v25 += 8;
        v7 = v27;
        if (a3 == v27)
        {
          goto LABEL_11;
        }
      }

      a3 = HIBYTE(a5) & 0xF;
    }
  }

  else
  {
    a3 = 0;
  }

LABEL_11:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a3;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for __CocoaSet.Iterator();
  v9 = swift_allocObject(v8, 0xE8, 7uLL);
  *(v9 + 1) = 0u;
  v9[27] = 0;
  v10 = v9 + 27;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  *(v9 + 10) = 0u;
  *(v9 + 11) = 0u;
  *(v9 + 12) = 0u;
  v9[28] = 0;
  v9[26] = a4;
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_17:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    result = 0;
    if (a3)
    {
      while (1)
      {
        if (a3 == result)
        {
          goto LABEL_17;
        }

        v12 = *v10;
        if ((*v10 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v12 == v9[28])
        {
          v13 = result;
          v14 = [v9[26] countByEnumeratingWithState:v9 + 2 objects:v9 + 10 count:16];
          v9[28] = v14;
          if (!v14)
          {
            *v10 = -1;
            result = v13;
            break;
          }

          v9[27] = 0;
          v15 = v9[3];
          if (!v15)
          {
            goto LABEL_22;
          }

          result = v13;
          v12 = 0;
        }

        else
        {
          v15 = v9[3];
          if (!v15)
          {
LABEL_22:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          if (v12 >> 60)
          {
            __break(1u);
LABEL_21:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v16 = (v15 + 8 * v12);
        if ((v16 & 7) != 0)
        {
          goto LABEL_21;
        }

        v17 = result + 1;
        v18 = *v16;
        *v10 = v12 + 1;
        *(a2 + 8 * result) = v18;
        swift_unknownObjectRetain(v18);
        result = v17;
        if (a3 == v17)
        {
          result = a3;
          break;
        }
      }
    }
  }

  else
  {
    result = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5 + 1 < 64)
  {
    v5 = ~(-1 << (a5 + 1));
  }

  else
  {
    v5 = -1;
  }

  v6 = *a4 & v5;
  if (!a2)
  {
    v7 = 0;
    a3 = 0;
    goto LABEL_18;
  }

  if (a3 < 0)
  {
LABEL_19:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = 0;
  if (!a3)
  {
    goto LABEL_18;
  }

  v8 = 0;
  v9 = (a5 + 64) >> 6;
  do
  {
    if (v8 == a3)
    {
      goto LABEL_19;
    }

    v10 = v7;
    if (v6)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v7 << 6);
      goto LABEL_15;
    }

    do
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v13 >= v9)
      {
        v6 = 0;
        if (v9 <= (v7 + 1))
        {
          v17 = v7 + 1;
        }

        else
        {
          v17 = (a5 + 64) >> 6;
        }

        v7 = v17 - 1;
        a3 = v8;
        goto LABEL_18;
      }

      v14 = a4[v13];
      ++v10;
    }

    while (!v14);
    v15 = __clz(__rbit64(v14));
    v6 = (v14 - 1) & v14;
    v12 = v15 | (v13 << 6);
    v7 = v13;
LABEL_15:
    ++v8;
    *a2++ = v12;
  }

  while (v8 != a3);
LABEL_18:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v7;
  a1[3] = v6;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(Swift::UInt64 *a1, uint64_t *a2, uint64_t a3, Swift::UInt64 a4, Swift::UInt64 a5, uint64_t a6, Swift::UInt64 a7)
{
  if (a2)
  {
    if (a3 < 0)
    {
      goto LABEL_10;
    }

    if (a3)
    {
      v11 = 0;
      v12._rawBits = a4;
      while (a3 != v11)
      {
        if ((v12._rawBits ^ a5) < 0x4000)
        {
          goto LABEL_13;
        }

        ++v11;
        v20 = a1;
        v13 = a2;
        v14 = a3;
        v15 = Substring.subscript.getter(v12._rawBits, a4, a5, a6, a7);
        v17 = v16;
        v18._rawBits = Substring.index(after:)(v12)._rawBits;
        a3 = v14;
        v12._rawBits = v18._rawBits;
        a1 = v20;
        *v13 = v15;
        v13[1] = v17;
        a2 = v13 + 2;
        if (v14 == v11)
        {
          goto LABEL_12;
        }
      }

LABEL_10:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v12._rawBits = a4;
LABEL_12:
    v11 = a3;
  }

  else
  {
    v11 = 0;
    v12._rawBits = a4;
  }

LABEL_13:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a7;
  a1[4] = v12._rawBits;
  return v11;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(Swift::String::Index *a1, uint64_t a2, uint64_t a3, Swift::String::Index a4, Swift::UInt64 a5, unint64_t a6, Swift::UInt64 a7)
{
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_58:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v7 = 0;
      v8 = a5 >> 14;
      v9 = (a6 >> 59) & 1;
      if ((a7 & 0x1000000000000000) == 0)
      {
        LOBYTE(v9) = 1;
      }

      v10 = 4 << v9;
      v11 = a4._rawBits >> 14;
      v12 = a7 & 0xFFFFFFFFFFFFFFLL;
      v13 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v14 = a6 & 0xFFFFFFFFFFFFLL;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(a7) & 0xF;
        v15 = (a7 >> 62) & 1;
      }

      else
      {
        v15 = (a6 & 0x8000000000000000) != 0;
      }

      rawBits = a4._rawBits;
      while (1)
      {
        if (a3 == v7)
        {
          goto LABEL_58;
        }

        v17 = rawBits >> 14;
        if (rawBits >> 14 == v8)
        {
          goto LABEL_61;
        }

        v18 = rawBits;
        if ((rawBits & 0xC) == v10)
        {
          v116 = v11;
          v118 = v8;
          v97 = v7;
          v105 = a1;
          v122 = a2;
          v124 = v13;
          v27 = a3;
          v28 = a7;
          v29 = a6;
          v30 = a5;
          v120 = v10;
          v31 = a4._rawBits;
          v32 = v12;
          v33 = v15;
          v34 = v14;
          v35._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
          v14 = v34;
          v15 = v33;
          v12 = v32;
          a3 = v27;
          a4._rawBits = v31;
          v10 = v120;
          a2 = v122;
          v11 = v116;
          v8 = v118;
          v13 = v124;
          a5 = v30;
          a6 = v29;
          a7 = v28;
          v18 = v35._rawBits;
          v7 = v97;
          a1 = v105;
          v17 = v18 >> 14;
          if (v18 >> 14 < v116)
          {
LABEL_62:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else if (v17 < v11)
        {
          goto LABEL_62;
        }

        if (v17 >= v8)
        {
          goto LABEL_62;
        }

        v119 = v10;
        v121 = a2;
        v115 = v11;
        v117 = v8;
        v123 = v13;
        v113 = v14;
        v114 = v15;
        if ((a7 & 0x1000000000000000) != 0)
        {
          v98 = v7;
          v106 = a1;
          v36._rawBits = v18;
          v37 = a3;
          v38 = a7;
          v39 = a6;
          v40 = a5;
          v41 = a4._rawBits;
          v45 = v13;
          v42 = v15;
          v43 = v12;
          v44 = String.UTF16View._foreignSubscript(position:)(v36);
          v12 = v43;
          v15 = v42;
          v13 = v45;
          a3 = v37;
          a4._rawBits = v41;
          v10 = v119;
          a2 = v121;
          a5 = v40;
          a6 = v39;
          a7 = v38;
          LOWORD(v45) = v44;
          v7 = v98;
          a1 = v106;
          goto LABEL_33;
        }

        v112 = a3;
        if (v18)
        {
          v19 = v18 >> 16;
          if ((a7 & 0x2000000000000000) != 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v99 = v7;
          v107 = a1;
          v46 = a7;
          v47 = a6;
          v48 = a5;
          v49 = a4._rawBits;
          v50 = v12;
          v51._rawBits = _StringGuts.scalarAlignSlow(_:)(v18)._rawBits;
          v12 = v50;
          a4._rawBits = v49;
          v13 = v123;
          a5 = v48;
          a6 = v47;
          a7 = v46;
          v52 = v51._rawBits;
          v7 = v99;
          a1 = v107;
          v19 = v52 >> 16;
          if ((a7 & 0x2000000000000000) != 0)
          {
LABEL_24:
            v21 = a4._rawBits;
            v22 = a1;
            v23 = a5;
            v24 = a7;
            v26 = a6;
            v125 = a6;
            v126 = v12;
            v20 = v12;
            v25 = &v125;
            goto LABEL_25;
          }
        }

        v20 = v12;
        v21 = a4._rawBits;
        v22 = a1;
        v23 = a5;
        v24 = a7;
        v25 = v13;
        v26 = a6;
        if ((a6 & 0x1000000000000000) == 0)
        {
          v104 = v19;
          v25 = _StringObject.sharedUTF8.getter(a6, a7);
          v19 = v104;
        }

LABEL_25:
        v53 = _decodeScalar(_:startingAt:)(v25, a2, v19);
        v54 = HIWORD(v53);
        if ((v18 & 0xC000) == 0x4000)
        {
          a3 = v112;
          a2 = v121;
          if (!v54)
          {
            goto LABEL_65;
          }

          a7 = v24;
          a6 = v26;
          a5 = v23;
          a1 = v22;
          a4._rawBits = v21;
          v12 = v20;
          LOWORD(v45) = v53 & 0x3FF | 0xDC00;
          goto LABEL_32;
        }

        a7 = v24;
        a6 = v26;
        a5 = v23;
        a1 = v22;
        a4._rawBits = v21;
        a3 = v112;
        a2 = v121;
        v12 = v20;
        if (!v54)
        {
          LOWORD(v45) = v53;
LABEL_32:
          v10 = v119;
          v13 = v123;
          v15 = v114;
          goto LABEL_33;
        }

        LODWORD(v45) = ((v53 + 67043328) >> 10) + 55296;
        v10 = v119;
        v13 = v123;
        v15 = v114;
        if ((v45 & 0x10000) != 0)
        {
          __break(1u);
LABEL_65:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_33:
        v14 = v113;
        if ((rawBits & 0xC) == v10)
        {
          v101 = v7;
          v109 = a1;
          v65._rawBits = rawBits;
          v66 = a3;
          v67 = a7;
          v68 = a6;
          v69 = a5;
          v70 = a4._rawBits;
          v71 = v12;
          v72 = v15;
          v73._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v65)._rawBits;
          v14 = v113;
          v15 = v72;
          v12 = v71;
          a2 = v121;
          v13 = v123;
          a3 = v66;
          a4._rawBits = v70;
          a5 = v69;
          a6 = v68;
          a7 = v67;
          rawBits = v73._rawBits;
          v7 = v101;
          a1 = v109;
        }

        v55 = rawBits >> 16;
        if (rawBits >> 16 >= v14)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if ((a7 & 0x1000000000000000) != 0)
        {
          v102 = v7;
          v110 = a1;
          v74 = rawBits;
          v75 = a7;
          v76 = a6;
          v77 = a5;
          v78 = a4._rawBits;
          v79 = a3;
          v80 = a2;
          v81 = v12;
          v82 = v14;
          v83 = specialized String.UTF16View._foreignIndex(after:)(v74);
          v14 = v82;
          v15 = v114;
          v12 = v81;
          a2 = v80;
          a3 = v79;
          a4._rawBits = v78;
          a5 = v77;
          a6 = v76;
          a7 = v75;
          rawBits = v83;
          v7 = v102;
          a1 = v110;
          v13 = v123;
          goto LABEL_39;
        }

        if (v15)
        {
          rawBits = (rawBits & 0xFFFFFFFFFFFF0000) + 65549;
LABEL_39:
          v11 = v115;
          v8 = v117;
          goto LABEL_54;
        }

        if ((rawBits & 0xC001) != 0)
        {
          if ((a7 & 0x2000000000000000) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v103 = v7;
          v111 = a1;
          v84._rawBits = rawBits;
          v85 = a3;
          v86 = a7;
          v87 = a6;
          v88 = a5;
          v89 = a4._rawBits;
          v90 = v12;
          v91 = v15;
          v92 = v14;
          v93._rawBits = _StringGuts.scalarAlignSlow(_:)(v84)._rawBits;
          v14 = v92;
          v15 = v91;
          v12 = v90;
          a2 = v121;
          v13 = v123;
          a3 = v85;
          a4._rawBits = v89;
          a5 = v88;
          a6 = v87;
          a7 = v86;
          rawBits = v93._rawBits;
          v7 = v103;
          a1 = v111;
          v55 = rawBits >> 16;
          if ((v86 & 0x2000000000000000) == 0)
          {
LABEL_42:
            v56 = v13;
            if ((a6 & 0x1000000000000000) == 0)
            {
              v100 = v7;
              v108 = a1;
              v57 = a7;
              v58 = a6;
              v59 = a5;
              v60 = a4._rawBits;
              v61 = a3;
              v62 = v12;
              v63 = v14;
              v64 = _StringObject.sharedUTF8.getter(a6, a7);
              v14 = v63;
              v12 = v62;
              a2 = v121;
              v13 = v123;
              a3 = v61;
              a4._rawBits = v60;
              v15 = v114;
              a5 = v59;
              a6 = v58;
              v10 = v119;
              a7 = v57;
              v56 = v64;
              v7 = v100;
              a1 = v108;
            }

            goto LABEL_47;
          }
        }

        v125 = a6;
        v126 = v12;
        v56 = &v125;
LABEL_47:
        v94 = *(v56 + v55);
        v11 = v115;
        v8 = v117;
        if ((v94 & 0x80) != 0)
        {
          LODWORD(v95) = __clz(v94 ^ 0xFF) - 24;
          if (v95 == 4)
          {
            if ((rawBits & 0xC000) == 0)
            {
              rawBits = rawBits & 0xFFFFFFFFFFFF0000 | 0x4004;
              goto LABEL_54;
            }

            v95 = 4;
          }

          else
          {
            v95 = v95;
          }
        }

        else
        {
          v95 = 1;
        }

        rawBits = (rawBits + (v95 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
LABEL_54:
        *(a2 + 2 * v7++) = v45;
        if (a3 == v7)
        {
          goto LABEL_60;
        }
      }
    }

    rawBits = a4._rawBits;
LABEL_60:
    v7 = a3;
  }

  else
  {
    v7 = 0;
    rawBits = a4._rawBits;
  }

LABEL_61:
  a1->_rawBits = a4._rawBits;
  a1[1]._rawBits = a5;
  a1[2]._rawBits = a6;
  a1[3]._rawBits = a7;
  a1[4]._rawBits = rawBits;
  return v7;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(Swift::String::Index *a1, uint64_t a2, uint64_t a3, Swift::String::Index a4, Swift::UInt64 a5, Swift::UInt64 a6, Swift::UInt64 a7)
{
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_55:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v7 = 0;
      v8 = a5 >> 14;
      v9 = (a6 >> 59) & 1;
      if ((a7 & 0x1000000000000000) == 0)
      {
        LOBYTE(v9) = 1;
      }

      v10 = 4 << v9;
      v11 = a4._rawBits >> 14;
      v12 = a7 & 0xFFFFFFFFFFFFFFLL;
      v13 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(a7) & 0xF;
      }

      else
      {
        v14 = a6 & 0xFFFFFFFFFFFFLL;
      }

      v15._rawBits = a4._rawBits;
      while (1)
      {
        if (a3 == v7)
        {
          goto LABEL_55;
        }

        v16 = v15._rawBits >> 14;
        if (v15._rawBits >> 14 == v8)
        {
          goto LABEL_58;
        }

        v76 = v14;
        v17 = v15._rawBits & 0xC;
        v18 = (v15._rawBits & 1) == 0 || v17 == v10;
        v19 = v18;
        if (v18)
        {
          rawBits = v15._rawBits;
          if (v17 == v10)
          {
            v66 = a1;
            v69 = v7;
            v72 = a2;
            v75 = v12;
            v63 = a3;
            v35 = a7;
            v36 = a6;
            v57 = v13;
            v37 = a5;
            v38 = a4._rawBits;
            v39._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v15)._rawBits;
            a2 = v72;
            v12 = v75;
            a4._rawBits = v38;
            a5 = v37;
            v13 = v57;
            a6 = v36;
            a7 = v35;
            rawBits = v39._rawBits;
            v7 = v69;
            a3 = v63;
            a1 = v66;
            v16 = rawBits >> 14;
            if (rawBits >> 14 < v11)
            {
              goto LABEL_59;
            }
          }

          else if (v16 < v11)
          {
            goto LABEL_59;
          }

          if (v16 >= v8)
          {
            goto LABEL_59;
          }

          if ((rawBits & 1) == 0)
          {
            v64 = a1;
            v67 = v7;
            v70 = a2;
            v73 = v12;
            v61 = a3;
            v21 = a7;
            v22 = a6;
            v56 = v13;
            v23 = a5;
            v24 = a4._rawBits;
            v25._rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
            a2 = v70;
            v12 = v73;
            a4._rawBits = v24;
            a5 = v23;
            v13 = v56;
            a6 = v22;
            a7 = v21;
            rawBits = v25._rawBits;
            v7 = v67;
            a3 = v61;
            a1 = v64;
          }
        }

        else
        {
          if (v16 < v11)
          {
            goto LABEL_59;
          }

          rawBits = v15._rawBits;
          if (v16 >= v8)
          {
            goto LABEL_59;
          }
        }

        v68 = v7;
        v71 = a2;
        v60 = a4._rawBits;
        v62 = a3;
        v65 = a1;
        v59 = a5;
        v74 = v12;
        if ((a7 & 0x1000000000000000) != 0)
        {
          v28 = v13;
          v30 = a6;
          v27 = a7;
          value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((rawBits & 0xFFFFFFFFFFFF0000))._0._value;
          if (v19)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v26 = rawBits >> 16;
          if ((a7 & 0x2000000000000000) != 0)
          {
            v28 = v13;
            v27 = a7;
            v30 = a6;
            v77 = a6;
            v78 = v12;
            v29 = &v77;
          }

          else
          {
            v27 = a7;
            v28 = v13;
            v29 = v13;
            v30 = a6;
            if ((a6 & 0x1000000000000000) == 0)
            {
              v29 = _StringObject.sharedUTF8.getter(a6, a7);
            }
          }

          value = _decodeScalar(_:startingAt:)(v29, a2, v26);
          if (v19)
          {
LABEL_33:
            a7 = v27;
            a6 = v30;
            if (v17 == v10)
            {
              v51._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v15)._rawBits;
              a6 = v30;
              a7 = v27;
              v15._rawBits = v51._rawBits;
            }

            v13 = v28;
            v14 = v76;
            if (v76 <= v15._rawBits >> 16)
            {
LABEL_59:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            if ((v15._rawBits & 1) == 0)
            {
              v32 = a7;
              v33 = a6;
              v34._rawBits = _StringGuts.scalarAlignSlow(_:)(v15)._rawBits;
              a6 = v33;
              a7 = v32;
              v13 = v28;
              v15._rawBits = v15._rawBits & 0xC | v34._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
            }

            goto LABEL_42;
          }
        }

        v14 = v76;
        a7 = v27;
        a6 = v30;
        v13 = v28;
        if (v76 <= v15._rawBits >> 16)
        {
          goto LABEL_59;
        }

LABEL_42:
        if ((a7 & 0x1000000000000000) != 0)
        {
          v44._rawBits = v15._rawBits;
          v45 = a7;
          v46 = v13;
          v47 = a6;
          v48._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v44)._rawBits;
          a6 = v47;
          v13 = v46;
          a7 = v45;
          v15._rawBits = v48._rawBits;
          a5 = v59;
          a4._rawBits = v60;
          a1 = v65;
          v41 = v68;
          a3 = v62;
          a2 = v71;
          v12 = v74;
        }

        else
        {
          v40 = v15._rawBits >> 16;
          a5 = v59;
          a4._rawBits = v60;
          a1 = v65;
          v41 = v68;
          a3 = v62;
          a2 = v71;
          if ((a7 & 0x2000000000000000) != 0)
          {
            v12 = v74;
            v77 = a6;
            v78 = v74;
            v43 = *(&v77 + v40);
          }

          else
          {
            v42 = v13;
            v12 = v74;
            if ((a6 & 0x1000000000000000) == 0)
            {
              v52 = a7;
              v53 = a6;
              v58 = v13;
              v54 = _StringObject.sharedUTF8.getter(a6, a7);
              a2 = v71;
              v12 = v74;
              a3 = v62;
              v13 = v58;
              a4._rawBits = v60;
              a5 = v59;
              a6 = v53;
              a7 = v52;
              v14 = v76;
              v42 = v54;
              a1 = v65;
              v41 = v68;
            }

            v43 = v42[v40];
          }

          v49 = v43;
          v50 = __clz(v43 ^ 0xFF) - 24;
          if (v49 >= 0)
          {
            LOBYTE(v50) = 1;
          }

          v15._rawBits = ((v40 + v50) << 16) | 5;
        }

        *(a2 + 4 * v41) = value;
        v7 = v41 + 1;
        if (a3 == v41 + 1)
        {
          goto LABEL_57;
        }
      }
    }

    v15._rawBits = a4._rawBits;
LABEL_57:
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v15._rawBits = a4._rawBits;
  }

LABEL_58:
  a1->_rawBits = a4._rawBits;
  a1[1]._rawBits = a5;
  a1[2]._rawBits = a6;
  a1[3]._rawBits = a7;
  a1[4]._rawBits = v15._rawBits;
  return v7;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(char **a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_14:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v5 = 0;
      while (1)
      {
        if (a3 == v5)
        {
          goto LABEL_14;
        }

        if (!a4)
        {
          goto LABEL_13;
        }

        if (!a5)
        {
LABEL_17:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (a4 == a5)
        {
          break;
        }

        if (a4 >= a5)
        {
          goto LABEL_17;
        }

        v6 = *a4++;
        *(a2 + v5++) = v6;
        if (a3 == v5)
        {
          goto LABEL_11;
        }
      }

      a4 = a5;
    }

    else
    {
LABEL_11:
      v5 = a3;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_13:
  *a1 = a4;
  a1[1] = a5;
  return v5;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, Swift::String_optional *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v5 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v5;
  *&v6 = 0;
  *(&v6 + 1) = v5;
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_13:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v7 = 0;
      while (1)
      {
        if (a3 == v7)
        {
          goto LABEL_13;
        }

        v8 = a2;
        v9 = a3;
        v10 = a1;
        v11 = String.Iterator.next()();
        if (!v11.value._object)
        {
          break;
        }

        ++v7;
        *v8 = v11;
        a2 = v8 + 1;
        a3 = v9;
        a1 = v10;
        if (v9 == v7)
        {
          a4 = v13;
          a5 = v14;
          v6 = v15;
          goto LABEL_12;
        }
      }

      a4 = v13;
      a5 = v14;
      a3 = v7;
      v6 = v15;
      a1 = v10;
    }
  }

  else
  {
    a3 = 0;
  }

LABEL_12:
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = v6;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v5 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (a2)
  {
    if (a3 < 0)
    {
LABEL_26:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = a5 & 0xFFFFFFFFFFFFFFLL;
      v10 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v11 = 1;
      while (1)
      {
        if (a3 == v6)
        {
          goto LABEL_26;
        }

        if (v11)
        {
          if (v8 >= v5)
          {
            v11 = 1;
            a3 = v6;
            goto LABEL_30;
          }

          v31 = v10;
          if ((a5 & 0x1000000000000000) != 0)
          {
            v12 = v9;
            v13 = a2;
            v14 = a3;
            v16 = a1;
            v18 = a4;
            v15 = a5;
            v23 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v8 << 16));
            scalarLength = v23.scalarLength;
            v20 = *&v23._0._value;
          }

          else
          {
            if ((a5 & 0x2000000000000000) != 0)
            {
              v13 = a2;
              v14 = a3;
              v15 = a5;
              v16 = a1;
              v18 = a4;
              v32[0] = a4;
              v32[1] = v9;
              v12 = v9;
              v17 = v32;
            }

            else
            {
              v12 = v9;
              v13 = a2;
              v14 = a3;
              v15 = a5;
              v16 = a1;
              v17 = v10;
              v18 = a4;
              if ((a4 & 0x1000000000000000) == 0)
              {
                v17 = _StringObject.sharedUTF8.getter(a4, a5);
              }
            }

            v20 = _decodeScalar(_:startingAt:)(v17, a2, v8);
          }

          v19 = v20;
          v8 += scalarLength;
          v22 = v20 >= 0x10000;
          a1 = v16;
          a5 = v15;
          a4 = v18;
          a3 = v14;
          a2 = v13;
          v9 = v12;
          if (v22)
          {
            v24 = v13;
            v25 = v14;
            v26 = a4;
            v27 = a5;
            v28 = a1;
            v30 = v19;
            result = Unicode.Scalar.UTF16View.subscript.getter(1, v19);
            LODWORD(v19) = ((v30 + 67043328) >> 10) + 55296;
            if ((v19 & 0x10000) != 0)
            {
              __break(1u);
              return result;
            }

            v7 = result;
            v11 = 0;
            a1 = v28;
            a5 = v27;
            a4 = v26;
            a3 = v25;
            a2 = v24;
            v9 = v12;
          }

          else
          {
            v11 = 1;
          }

          v10 = v31;
        }

        else
        {
          v11 = 1;
          LOWORD(v19) = v7;
          v7 = 0;
        }

        *(a2 + 2 * v6++) = v19;
        if (a3 == v6)
        {
          goto LABEL_30;
        }
      }
    }

    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    a3 = 0;
  }

  v11 = 1;
LABEL_30:
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = v8;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 34) = v11;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, Swift::Int scalarLength, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v8 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (scalarLength)
  {
    v9 = a3;
    if (a3 < 0)
    {
LABEL_19:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v10 = scalarLength;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        if (v9 == v11)
        {
          goto LABEL_19;
        }

        if (v12 >= v8)
        {
          break;
        }

        if ((a5 & 0x1000000000000000) != 0)
        {
          v15 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v12 << 16));
          scalarLength = v15.scalarLength;
          value = v15._0._value;
        }

        else
        {
          if ((a5 & 0x2000000000000000) != 0)
          {
            v17[0] = a4;
            v17[1] = a5 & 0xFFFFFFFFFFFFFFLL;
            v13 = v17;
          }

          else
          {
            v13 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if ((a4 & 0x1000000000000000) == 0)
            {
              v13 = _StringObject.sharedUTF8.getter(a4, a5);
            }
          }

          value = _decodeScalar(_:startingAt:)(v13, scalarLength, v12);
        }

        *(v10 + 4 * v11) = value;
        v12 += scalarLength;
        if (v9 == ++v11)
        {
          goto LABEL_22;
        }
      }

      v9 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v9 = 0;
  }

LABEL_22:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v12;
  a1[3] = v8;
  return v9;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
    result = 0;
    goto LABEL_12;
  }

  v5 = *(a4 + 16);
  if (v5)
  {
    result = 0;
    v7 = (a4 + 40);
    v8 = a3 - 1;
    while (1)
    {
      if (result >= v5)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v9 = a3;
      v10 = a1;
      v11 = a4;
      v12 = *v7;
      *a2 = *(v7 - 1);
      a2[1] = v12;
      if (v8 == result)
      {
        break;
      }

      v13 = result;
      v14 = a2;
      v12;
      a4 = v11;
      v5 = *(v11 + 16);
      result = v13 + 1;
      v7 += 2;
      a2 = v14 + 2;
      a1 = v10;
      a3 = v9;
      if (v13 + 1 == v5)
      {
        goto LABEL_12;
      }
    }

    v12;
    result = v9;
    a4 = v11;
    a1 = v10;
  }

  else
  {
LABEL_10:
    result = 0;
  }

LABEL_12:
  *a1 = a4;
  a1[1] = result;
  return result;
}

uint64_t Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, Class *a4, uint64_t a5)
{
  v46 = a1;
  swift_getAssociatedTypeWitness(255, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v13 = type metadata accessor for Optional(0, v9, v11, v12);
  v43 = *(v13 - 8);
  v44 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v36 - v16;
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15, v18);
  v45 = &v36 - v19;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v36 - v24;
  (*(a5 + 32))(a4, a5);
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_11:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v41 = v47 + 32;
      v42 = (v47 + 48);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a4, v21, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v27 = 0;
      v28 = AssociatedConformanceWitness + 16;
      v29 = *(AssociatedConformanceWitness + 16);
      while (1)
      {
        if (a3 == v27)
        {
          goto LABEL_11;
        }

        v39 = v29;
        v40 = v28;
        v29(v21, AssociatedConformanceWitness);
        if ((*v42)(v17, 1, v10) == 1)
        {
          break;
        }

        ++v27;
        v37 = v21;
        v38 = v22;
        v30 = v47;
        v31 = *(v47 + 32);
        v36 = AssociatedConformanceWitness;
        v32 = v45;
        v31(v45, v17, v10);
        v33 = v32;
        AssociatedConformanceWitness = v36;
        v31(a2, v33, v10);
        v34 = *(v30 + 72);
        v21 = v37;
        v22 = v38;
        a2 += v34;
        v29 = v39;
        v28 = v40;
        if (a3 == v27)
        {
          goto LABEL_8;
        }
      }

      (*(v43 + 8))(v17, v44);
      (*(v22 + 32))(v46, v25, v21);
      return v27;
    }

    else
    {
LABEL_8:
      (*(v22 + 32))(v46, v25, v21);
    }
  }

  else
  {
    (*(v22 + 32))(v46, v25, v21);
    return 0;
  }

  return a3;
}

uint64_t Sequence.min(by:)@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a1;
  v66 = a2;
  v58 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v56 = *(v11 - 8);
  v57 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v55 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v69 = &v54 - v17;
  v60 = *(v8 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v70 = &v54 - v24;
  v25 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v30 = v29;
  v59 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v54 - v32;
  (*(v25 + 16))(v28, v68, a3);
  (*(a4 + 32))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v30, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v35 = *(AssociatedConformanceWitness + 16);
  v36 = v69;
  v67 = v33;
  v68 = v30;
  v37 = v8;
  v54 = v35;
  v35(v30, AssociatedConformanceWitness);
  v38 = v60;
  v39 = *(v60 + 48);
  if (v39(v36, 1, v8) == 1)
  {
    (*(v59 + 8))(v67, v68);
    (*(v56 + 8))(v69, v57);
    return (*(v38 + 56))(v58, 1, 1, v8);
  }

  else
  {
    v64 = AssociatedConformanceWitness + 16;
    v41 = v61;
    v42 = v69;
    v69 = *(v38 + 32);
    (v69)(v70, v42, v8);
    v43 = v55;
    v63 = AssociatedConformanceWitness;
    v44 = v54;
    v54(v68, AssociatedConformanceWitness);
    v45 = v43;
    if (v39(v43, 1, v37) == 1)
    {
LABEL_4:
      v61 = v41;
      (*(v59 + 8))(v67, v68);
      (*(v56 + 8))(v45, v57);
      v46 = v58;
      (v69)(v58, v70, v37);
      return (*(v60 + 56))(v46, 0, 1, v37);
    }

    else
    {
      v47 = v44;
      v62 = v39;
      v48 = (v60 + 8);
      while (1)
      {
        v49 = v45;
        (v69)(v21, v45, v37);
        v50 = v65(v21, v70);
        if (v41)
        {
          break;
        }

        v51 = *v48;
        if (v50)
        {
          v52 = v70;
          v51(v70, v37);
          (v69)(v52, v21, v37);
        }

        else
        {
          v51(v21, v37);
        }

        v47(v68, v63);
        v45 = v49;
        if (v62(v49, 1, v37) == 1)
        {
          goto LABEL_4;
        }
      }

      v53 = *v48;
      (*v48)(v21, v37);
      v53(v70, v37);
      return (*(v59 + 8))(v67, v68);
    }
  }
}

uint64_t Sequence.max(by:)@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a1;
  v66 = a2;
  v58 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v56 = *(v11 - 8);
  v57 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v55 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v69 = &v54 - v17;
  v60 = *(v8 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v70 = &v54 - v24;
  v25 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v30 = v29;
  v59 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v54 - v32;
  (*(v25 + 16))(v28, v68, a3);
  (*(a4 + 32))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v30, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v35 = *(AssociatedConformanceWitness + 16);
  v36 = v69;
  v67 = v33;
  v68 = v30;
  v37 = v8;
  v54 = v35;
  v35(v30, AssociatedConformanceWitness);
  v38 = v60;
  v39 = *(v60 + 48);
  if (v39(v36, 1, v8) == 1)
  {
    (*(v59 + 8))(v67, v68);
    (*(v56 + 8))(v69, v57);
    return (*(v38 + 56))(v58, 1, 1, v8);
  }

  else
  {
    v64 = AssociatedConformanceWitness + 16;
    v41 = v61;
    v42 = v69;
    v69 = *(v38 + 32);
    (v69)(v70, v42, v8);
    v43 = v55;
    v63 = AssociatedConformanceWitness;
    v44 = v54;
    v54(v68, AssociatedConformanceWitness);
    v45 = v43;
    if (v39(v43, 1, v37) == 1)
    {
LABEL_4:
      v61 = v41;
      (*(v59 + 8))(v67, v68);
      (*(v56 + 8))(v45, v57);
      v46 = v58;
      (v69)(v58, v70, v37);
      return (*(v60 + 56))(v46, 0, 1, v37);
    }

    else
    {
      v47 = v44;
      v62 = v39;
      v48 = (v60 + 8);
      while (1)
      {
        v49 = v45;
        (v69)(v21, v45, v37);
        v50 = v65(v70, v21);
        if (v41)
        {
          break;
        }

        v51 = *v48;
        if (v50)
        {
          v52 = v70;
          v51(v70, v37);
          (v69)(v52, v21, v37);
        }

        else
        {
          v51(v21, v37);
        }

        v47(v68, v63);
        v45 = v49;
        if (v62(v49, 1, v37) == 1)
        {
          goto LABEL_4;
        }
      }

      v53 = *v48;
      (*v48)(v21, v37);
      v53(v70, v37);
      return (*(v59 + 8))(v67, v68);
    }
  }
}

uint64_t Sequence<>.min()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v67 = a3;
  v59 = a4;
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v10 = type metadata accessor for Optional(0, v6, v8, v9);
  v57 = *(v10 - 8);
  v58 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v53 - v16;
  v18 = *(v7 - 8);
  v20 = MEMORY[0x1EEE9AC00](v15, v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v68 = &v53 - v25;
  v26 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v31 = v30;
  v56 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v53 - v33;
  (*(v26 + 16))(v29, v66, a1);
  v35 = v18;
  (*(a2 + 32))(a1, a2);
  v36 = a2;
  v37 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v36, a1, v31, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v54 = *(AssociatedConformanceWitness + 16);
  v54(v31, AssociatedConformanceWitness);
  v40 = v35 + 48;
  v39 = *(v35 + 48);
  if (v39(v37, 1, v7) == 1)
  {
    (*(v56 + 8))(v34, v31);
    (*(v57 + 8))(v37, v58);
    return (*(v35 + 56))(v59, 1, 1, v7);
  }

  else
  {
    v53 = v35;
    v64 = *(v35 + 32);
    v65 = v35 + 32;
    v64(v68, v37, v7);
    v43 = v54;
    v42 = v55;
    v66 = v34;
    v63 = AssociatedConformanceWitness;
    v54(v31, AssociatedConformanceWitness);
    v62 = v40;
    if (v39(v42, 1, v7) != 1)
    {
      v45 = v43;
      v60 = (v53 + 8);
      v61 = v67 + 16;
      do
      {
        v46 = v31;
        v47 = v42;
        v48 = v42;
        v49 = v64;
        v64(v22, v48, v7);
        v50 = v68;
        v51 = (*(v67 + 16))(v22, v68, v7);
        v52 = *v60;
        if (v51)
        {
          v52(v50, v7);
          v49(v50, v22, v7);
        }

        else
        {
          v52(v22, v7);
        }

        v42 = v47;
        v31 = v46;
        v45(v46, v63);
      }

      while (v39(v47, 1, v7) != 1);
    }

    (*(v56 + 8))(v66, v31);
    (*(v57 + 8))(v42, v58);
    v44 = v59;
    v64(v59, v68, v7);
    return (*(v53 + 56))(v44, 0, 1, v7);
  }
}

uint64_t Sequence<>.max()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v67 = a3;
  v59 = a4;
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v10 = type metadata accessor for Optional(0, v6, v8, v9);
  v57 = *(v10 - 8);
  v58 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v53 - v16;
  v18 = *(v7 - 8);
  v20 = MEMORY[0x1EEE9AC00](v15, v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v68 = &v53 - v25;
  v26 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v31 = v30;
  v56 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v53 - v33;
  (*(v26 + 16))(v29, v66, a1);
  v35 = v18;
  (*(a2 + 32))(a1, a2);
  v36 = a2;
  v37 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v36, a1, v31, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v54 = *(AssociatedConformanceWitness + 16);
  v54(v31, AssociatedConformanceWitness);
  v40 = v35 + 48;
  v39 = *(v35 + 48);
  if (v39(v37, 1, v7) == 1)
  {
    (*(v56 + 8))(v34, v31);
    (*(v57 + 8))(v37, v58);
    return (*(v35 + 56))(v59, 1, 1, v7);
  }

  else
  {
    v53 = v35;
    v64 = *(v35 + 32);
    v65 = v35 + 32;
    v64(v68, v37, v7);
    v43 = v54;
    v42 = v55;
    v66 = v34;
    v63 = AssociatedConformanceWitness;
    v54(v31, AssociatedConformanceWitness);
    v62 = v40;
    if (v39(v42, 1, v7) != 1)
    {
      v45 = v43;
      v60 = (v53 + 8);
      v61 = v67 + 16;
      do
      {
        v46 = v31;
        v47 = v42;
        v48 = v42;
        v49 = v64;
        v64(v22, v48, v7);
        v50 = v68;
        v51 = (*(v67 + 16))(v68, v22, v7);
        v52 = *v60;
        if (v51)
        {
          v52(v50, v7);
          v49(v50, v22, v7);
        }

        else
        {
          v52(v22, v7);
        }

        v42 = v47;
        v31 = v46;
        v45(v46, v63);
      }

      while (v39(v47, 1, v7) != 1);
    }

    (*(v56 + 8))(v66, v31);
    (*(v57 + 8))(v42, v58);
    v44 = v59;
    v64(v59, v68, v7);
    return (*(v53 + 56))(v44, 0, 1, v7);
  }
}

uint64_t Sequence.starts<A>(with:by:)(char *a1, uint64_t (*a2)(char *, char *), uint64_t a3, Class *a4, Class *a5, int **a6, uint64_t a7)
{
  v100 = a1;
  v86 = a2;
  v87 = a3;
  swift_getAssociatedTypeWitness(255, a7, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v80 = type metadata accessor for Optional(0, v11, v13, v14);
  v79 = *(v80 - 8);
  v16 = MEMORY[0x1EEE9AC00](v80, v15);
  v78 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v88 = &v77 - v20;
  v97 = v12;
  v89 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v85 = &v77 - v22;
  AssociatedConformanceWitness = a6;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v24 = v23;
  v82 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v81 = &v77 - v26;
  v29 = type metadata accessor for Optional(0, v24, v27, v28);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v94 = &v77 - v32;
  v91 = a4;
  v33 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v31, v34);
  v93 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a6, v36, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v38 = v37;
  v84 = *(v37 - 8);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v42 = &v77 - v41;
  v43 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v40, v44);
  v46 = &v77 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v99 = v47;
  v83 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v77 - v49;
  (*(v43 + 16))(v46, v100, a5);
  v51 = *(a7 + 32);
  v98 = v50;
  v52 = v81;
  v95 = a5;
  v96 = a7;
  v51(a5, a7);
  v53 = v91;
  (*(v33 + 16))(v93, v101, v91);
  v54 = AssociatedConformanceWitness[4];
  v100 = v42;
  v55 = AssociatedConformanceWitness;
  (v54)(v53);
  v101 = v38;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v55, v53, v38, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v90 = AssociatedConformanceWitness[2];
  v91 = (AssociatedConformanceWitness + 2);
  v56 = v82 + 48;
  v57 = (v82 + 32);
  v93 = (v89 + 6);
  v58 = (v89 + 4);
  v59 = v89 + 1;
  v89 = (v82 + 8);
  while (1)
  {
    v60 = v94;
    (v90)(v101, AssociatedConformanceWitness);
    if ((*v56)(v60, 1, v24) == 1)
    {
      (*(v84 + 8))(v100, v101);
      v56 = v99;
      v73 = swift_getAssociatedConformanceWitness(v96, v95, v99, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v74 = v78;
      v75 = v98;
      (*(v73 + 16))(v56, v73);
      (*(v83 + 8))(v75, v56);
      LOBYTE(v56) = (*v93)(v74, 1, v97) == 1;
      (*(v79 + 8))(v74, v80);
      return v56 & 1;
    }

    (*v57)(v52, v60, v24);
    v61 = v99;
    v62 = swift_getAssociatedConformanceWitness(v96, v95, v99, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v63 = v52;
    v64 = v88;
    (*(v62 + 16))(v61, v62);
    v65 = v64;
    v66 = v64;
    v67 = v97;
    if ((*v93)(v66, 1, v97) == 1)
    {
      (*v89)(v63, v24);
      (*(v84 + 8))(v100, v101);
      (*(v83 + 8))(v98, v99);
      (*(v79 + 8))(v65, v80);
      LOBYTE(v56) = 1;
      return v56 & 1;
    }

    v68 = v24;
    v69 = v85;
    (*v58)(v85, v65, v67);
    v70 = v102;
    v71 = v86(v63, v69);
    v102 = v70;
    if (v70)
    {
      break;
    }

    v72 = v71;
    (*v59)(v69, v67);
    v24 = v68;
    (*v89)(v63, v68);
    v52 = v63;
    if ((v72 & 1) == 0)
    {
      (*(v84 + 8))(v100, v101);
      (*(v83 + 8))(v98, v99);
      LOBYTE(v56) = 0;
      return v56 & 1;
    }
  }

  (*v59)(v69, v67);
  (*v89)(v63, v68);
  (*(v84 + 8))(v100, v101);
  (*(v83 + 8))(v98, v99);
  return v56 & 1;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, unint64_t a2, const char *a3, swift *a4)
{
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v13, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v15 = v14;
  v32 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v31 - v17;
  v19 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v35 = a1;
  v36 = a2;
  v37 = 0;
  v38 = v19;
  (*(v9 + 16))(v11, v4, a3);
  v20 = *(a4 + 4);
  a2;
  v20(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v15, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v22 = *(AssociatedConformanceWitness + 16);
  v22(&v33, v15, AssociatedConformanceWitness);
  for (i = v34; v34; i = v34)
  {
    v24 = v33;
    v25 = String.Iterator.next()();
    if (!v25.value._object)
    {
      i;
      (*(v32 + 8))(v18, v15);
      a2;
      return 1;
    }

    if (v24 == v25.value._countAndFlagsBits && i == v25.value._object)
    {
      i;
      v25.value._object;
    }

    else
    {
      if ((~(i & v25.value._object) & 0x6000000000000000) == 0)
      {
        i;
        v25.value._object;
LABEL_20:
        (*(v32 + 8))(v18, v15);
        v29 = a2;
LABEL_21:
        v29;
        return 0;
      }

      v27 = _stringCompareInternal(_:_:expecting:)(v24, i, v25.value._countAndFlagsBits, v25.value._object, 0);
      i;
      v25.value._object;
      if ((v27 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v22(&v33, v15, AssociatedConformanceWitness);
  }

  (*(v32 + 8))(v18, v15);
  object = String.Iterator.next()().value._object;
  a2;
  if (object)
  {
    v29 = object;
    goto LABEL_21;
  }

  return 1;
}

uint64_t specialized Sequence<>.starts<A>(with:)(unint64_t a1, unint64_t a2, const char *a3, uint64_t a4)
{
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v45 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - v16;
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1;
  }

  v19 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v19 = 11;
  }

  v49 = v19;
  v20._rawBits = v19 | (v18 << 16);
  (*(v9 + 16))(v11, v4, a3);
  (*(a4 + 32))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v22 = *(AssociatedConformanceWitness + 16);
  v50[0] = v14;
  v22(&v51, v14, AssociatedConformanceWitness);
  v23 = v52;
  if (v52)
  {
    v47 = a2 & 0xFFFFFFFFFFFFFFLL;
    v48 = v50 + 6;
    v46 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if (v20._rawBits < 0x4000)
      {
        v23;
        (*(v45 + 8))(v17, v50[0]);
        return 1;
      }

      v24 = v51;
      v25._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(v20)._rawBits;
      if (!(v25._rawBits >> 14))
      {
        break;
      }

      v26 = v25._rawBits >> 16;
      if (v25._rawBits >= 0x20000)
      {
        if ((a2 & 0x1000000000000000) == 0)
        {
          if ((a2 & 0x2000000000000000) != 0)
          {
            v50[1] = a1;
            v50[2] = v47;
            v30 = *&v48[v26];
            if (v30 != 2573 && (v30 & 0x80808080) == 0)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v27 = v46;
            if ((a1 & 0x1000000000000000) == 0)
            {
              rawBits = v25._rawBits;
              v41 = v25._rawBits >> 16;
              v27 = _StringObject.sharedUTF8.getter(a1, a2);
              v26 = v41;
              v25._rawBits = rawBits;
              if (!v27)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v28 = *&v27[v26 - 2];
            if (v28 != 2573 && (v28 & 0x80808080) == 0)
            {
LABEL_17:
              v26 = 1;
LABEL_18:
              v29 = v26 << 8;
              goto LABEL_26;
            }
          }
        }

        v32 = v25._rawBits;
        v26 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v26);
        v25._rawBits = v32;
      }

      v29 = v26 << 8;
      if (v26 > 63)
      {
        v29 = 0;
      }

LABEL_26:
      v20._rawBits = v29 | v49 | (v25._rawBits - (v26 << 16)) & 0xFFFFFFFFFFFF0000;
      v33._rawBits = v20._rawBits;
      v34 = String.subscript.getter(v33, a1, a2);
      v36 = v35;
      if (v24 == v34 && v23 == v35)
      {
        v23;
        v36;
      }

      else
      {
        if ((~v23 & 0x6000000000000000) == 0 && (v35 & 0x6000000000000000) == 0x6000000000000000)
        {
          v23;
          v36;
LABEL_41:
          (*(v45 + 8))(v17, v50[0]);
          return 0;
        }

        v38 = _stringCompareInternal(_:_:expecting:)(v24, v23, v34, v35, 0);
        v23;
        v36;
        if ((v38 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      v22(&v51, v50[0], AssociatedConformanceWitness);
      v23 = v52;
      if (!v52)
      {
        goto LABEL_38;
      }
    }

    v39 = v25._rawBits;
    if (_swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v26 = 0;
    v25._rawBits = v39;
    goto LABEL_18;
  }

LABEL_38:
  (*(v45 + 8))(v17, v50[0]);
  if (v20._rawBits < 0x4000)
  {
    return 1;
  }

  v42._rawBits = String.index(before:)(v20)._rawBits;
  String.subscript.getter(v42, a1, a2);
  v43;
  return 0;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  a2;
  a4;
  v6 = String.Iterator.next()();
  if (v6.value._object)
  {
    countAndFlagsBits = v6.value._countAndFlagsBits;
    object = v6.value._object;
    do
    {
      v10 = String.Iterator.next()();
      if (!v10.value._object)
      {
        a2;
        a4;
        object;
        return 1;
      }

      if (countAndFlagsBits == v10.value._countAndFlagsBits && object == v10.value._object)
      {
        object;
        v10.value._object;
      }

      else
      {
        if ((~(object & v10.value._object) & 0x6000000000000000) == 0)
        {
          object;
          v10.value._object;
LABEL_16:
          a2;
          v13 = a4;
LABEL_17:
          v13;
          return 0;
        }

        v11 = _stringCompareInternal(_:_:expecting:)(countAndFlagsBits, object, v10.value._countAndFlagsBits, v10.value._object, 0);
        object;
        v10.value._object;
        if ((v11 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v9 = String.Iterator.next()();
      countAndFlagsBits = v9.value._countAndFlagsBits;
      object = v9.value._object;
    }

    while (v9.value._object);
  }

  a4;
  v12 = String.Iterator.next()().value._object;
  a2;
  if (v12)
  {
    v13 = v12;
    goto LABEL_17;
  }

  return 1;
}

uint64_t specialized Sequence<>.starts<A>(with:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1;
  }

  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  else
  {
    v7 = 7;
  }

  v53 = v7;
  v8._rawBits = v7 | (v6 << 16);
  v9 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v9 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = 7;
  }

  if (v9)
  {
    v51 = a4 & 0xFFFFFFFFFFFFFFLL;
    v49 = a2 & 0xFFFFFFFFFFFFFFLL;
    v50 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v48 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v13._rawBits = v10 | (v9 << 16);
    v52 = v10;
    while (1)
    {
      v14._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(v13)._rawBits;
      if (!(v14._rawBits >> 14))
      {
        break;
      }

      v15 = v14._rawBits >> 16;
      if (v14._rawBits >= 0x20000)
      {
        if ((a4 & 0x1000000000000000) == 0)
        {
          if ((a4 & 0x2000000000000000) != 0)
          {
            v54 = a3;
            v55 = v51;
            v17 = *(&v53 + v15 + 6);
          }

          else
          {
            v16 = v50;
            if ((a3 & 0x1000000000000000) == 0)
            {
              rawBits = v14._rawBits;
              v41 = v14._rawBits >> 16;
              v16 = _StringObject.sharedUTF8.getter(a3, a4);
              v15 = v41;
              v14._rawBits = rawBits;
              if (!v16)
              {
LABEL_60:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v17 = *&v16[v15 - 2];
          }

          if (v17 != 2573 && (v17 & 0x8080) == 0)
          {
            v15 = 1;
LABEL_28:
            v19 = v15 << 8;
            goto LABEL_34;
          }
        }

        v21 = v14._rawBits;
        v15 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v15);
        v14._rawBits = v21;
      }

      v19 = v15 << 8;
      if (v15 >= 64)
      {
        v19 = 0;
      }

LABEL_34:
      v22 = v19 | (v14._rawBits - (v15 << 16)) & 0xFFFFFFFFFFFF0000;
      v13._rawBits = v22 | v10;
      v23._rawBits = v22 | v10;
      v24 = String.subscript.getter(v23, a3, a4);
      v26 = v25;
      if (v8._rawBits < 0x4000)
      {
        v25;
        return 1;
      }

      v27 = v24;
      v28._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(v8)._rawBits;
      if (!(v28._rawBits >> 14))
      {
        v33 = v28._rawBits;
        if (_swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u))
        {
LABEL_68:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v29 = 0;
        v28._rawBits = v33;
        goto LABEL_45;
      }

      v29 = v28._rawBits >> 16;
      if (v28._rawBits >= 0x20000)
      {
        if ((a2 & 0x1000000000000000) == 0)
        {
          if ((a2 & 0x2000000000000000) != 0)
          {
            v54 = a1;
            v55 = v49;
            v31 = *(&v53 + v29 + 6);
          }

          else
          {
            v30 = v48;
            if ((a1 & 0x1000000000000000) == 0)
            {
              v42 = v28._rawBits;
              v43 = v28._rawBits >> 16;
              v30 = _StringObject.sharedUTF8.getter(a1, a2);
              v29 = v43;
              v28._rawBits = v42;
              if (!v30)
              {
                goto LABEL_60;
              }
            }

            v31 = *&v30[v29 - 2];
          }

          if (v31 != 2573 && (v31 & 0x80808080) == 0)
          {
            v29 = 1;
LABEL_45:
            v32 = v29 << 8;
            goto LABEL_51;
          }
        }

        v34 = v28._rawBits;
        v29 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v29);
        v28._rawBits = v34;
      }

      v32 = v29 << 8;
      if (v29 > 63)
      {
        v32 = 0;
      }

LABEL_51:
      v8._rawBits = v32 | v53 | (v28._rawBits - (v29 << 16)) & 0xFFFFFFFFFFFF0000;
      v35._rawBits = v8._rawBits;
      v37 = String.subscript.getter(v35, a1, a2);
      v38 = v36;
      if (v27 == v37 && v26 == v36)
      {
        v26;
        v38;
      }

      else
      {
        if ((~v26 & 0x6000000000000000) == 0 && (v36 & 0x6000000000000000) == 0x6000000000000000)
        {
          v26;
          v44 = v38;
          goto LABEL_62;
        }

        v39 = _stringCompareInternal(_:_:expecting:)(v27, v26, v37, v36, 0);
        v26;
        v38;
        if ((v39 & 1) == 0)
        {
          return 0;
        }
      }

      v10 = v52;
      if (v22 < 0x4000)
      {
        goto LABEL_64;
      }
    }

    v20 = v14._rawBits;
    if (_swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u))
    {
      goto LABEL_68;
    }

    v15 = 0;
    v14._rawBits = v20;
    goto LABEL_28;
  }

LABEL_64:
  if (v8._rawBits < 0x4000)
  {
    return 1;
  }

  v46._rawBits = String.index(before:)(v8)._rawBits;
  String.subscript.getter(v46, a1, a2);
  v44 = v47;
LABEL_62:
  v44;
  return 0;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, unint64_t a2, Swift::UInt64 a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = a3 ^ a4;
  a2;
  if (v11 >= 0x4000)
  {
    v14._rawBits = a3;
    do
    {
      v15 = Substring.subscript.getter(v14._rawBits, a3, a4, a5, a6);
      v17 = v16;
      v14._rawBits = Substring.index(after:)(v14)._rawBits;
      v18 = String.Iterator.next()();
      if (!v18.value._object)
      {
        a2;
        v17;
        return 1;
      }

      if (v15 == v18.value._countAndFlagsBits && v18.value._object == v17)
      {
        v17;
        v18.value._object;
      }

      else
      {
        if ((~(v17 & v18.value._object) & 0x6000000000000000) == 0)
        {
          v17;
          v18.value._object;
LABEL_16:
          v13 = a2;
LABEL_17:
          v13;
          return 0;
        }

        v19 = _stringCompareInternal(_:_:expecting:)(v15, v17, v18.value._countAndFlagsBits, v18.value._object, 0);
        v17;
        v18.value._object;
        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    while ((v14._rawBits ^ a4) >= 0x4000);
  }

  object = String.Iterator.next()().value._object;
  a2;
  if (object)
  {
    v13 = object;
    goto LABEL_17;
  }

  return 1;
}

uint64_t specialized Sequence<>.starts<A>(with:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1;
  }

  v7 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  v9 = a3 >> 14;
  if (a3 >> 14 != a4 >> 14)
  {
    v10 = a6;
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = 4;
    if (((a6 >> 60) & ((a5 & 0x800000000000000) == 0)) != 0)
    {
      v14 = 8;
    }

    v47 = a3 & 2 | v14;
    v48 = a3 >> 16;
    v15 = a4;
    while (1)
    {
      v16 = _StringGuts.validateInclusiveCharacterIndex(_:in:)(v15, v13, v12, v11, v10);
      if (v9 >= v16 >> 14)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v18 = v16;
      v19 = _StringGuts._opaqueCharacterStride(endingAt:in:)(v16 >> 16, v48, v17, v11, v10);
      v20 = v19 << 8;
      if (v19 > 63)
      {
        v20 = 0;
      }

      v21 = v47 | v20 | (v18 - (v19 << 16)) & 0xFFFFFFFFFFFF0000;
      v15 = v21 | 1;
      v22 = v13;
      v23 = v12;
      v24 = v11;
      v25 = v11;
      v26 = v10;
      v27 = Substring.subscript.getter(v21 | 1, v22, v12, v25, v10);
      v29 = v28;
      if (v8 < 0x4000)
      {
        break;
      }

      v30 = v27;
      v31 = a1;
      v32._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(v8)._rawBits;
      if (!(v32._rawBits >> 14))
      {
        rawBits = v32._rawBits;
        isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u);
        v32._rawBits = rawBits;
        v31 = a1;
        if (isExecutableLinkedOnOrAfter)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v33._rawBits = String._uncheckedIndex(before:)(v32)._rawBits;
      v8 = v33._rawBits;
      v34 = String.subscript.getter(v33, v31, a2);
      v36 = v35;
      if (v30 == v34 && v29 == v35)
      {
        v29;
        v36;
      }

      else
      {
        if ((~v29 & 0x6000000000000000) == 0 && (v35 & 0x6000000000000000) == 0x6000000000000000)
        {
          v29;
          v42 = v36;
          goto LABEL_29;
        }

        v39 = _stringCompareInternal(_:_:expecting:)(v30, v29, v34, v35, 0);
        v29;
        v36;
        if ((v39 & 1) == 0)
        {
          return 0;
        }
      }

      v12 = v23;
      v13 = a3;
      v10 = v26;
      v11 = v24;
      if (v9 == v21 >> 14)
      {
        goto LABEL_31;
      }
    }

    v28;
    return 1;
  }

LABEL_31:
  if (v8 < 0x4000)
  {
    return 1;
  }

  v44._rawBits = String.index(before:)(v8)._rawBits;
  String.subscript.getter(v44, a1, a2);
  v42 = v45;
LABEL_29:
  v42;
  return 0;
}

BOOL Sequence<>.starts<A>(with:)(char *a1, Class *a2, Class *a3, int **a4, uint64_t a5, uint64_t a6)
{
  v92 = a1;
  v89 = a6;
  v85 = a2;
  AssociatedConformanceWitness = a4;
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v78 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10, v10);
  v82 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v94 = &v75 - v15;
  v95 = v14;
  v18 = type metadata accessor for Optional(0, v14, v16, v17);
  v76 = *(v18 - 8);
  v77 = v18;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v75 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v83 = &v75 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v75 - v27;
  v29 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v26, v30);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v34 = v33;
  v80 = *(v33 - 8);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v75 - v37;
  v39 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v36, v40);
  v42 = &v75 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v91 = v43;
  v79 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v75 - v45;
  (*(v39 + 16))(v42, v92, a3);
  v47 = *(a5 + 32);
  v90 = v46;
  v87 = a3;
  v88 = a5;
  v47(a3, a5);
  v48 = v85;
  (*(v29 + 16))(v32, v93, v85);
  v49 = AssociatedConformanceWitness[4];
  v92 = v38;
  v50 = AssociatedConformanceWitness;
  (v49)(v48);
  v93 = v34;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v50, v48, v34, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v84 = AssociatedConformanceWitness[2];
  v85 = (AssociatedConformanceWitness + 2);
  v51 = (v78 + 48);
  v52 = (v78 + 32);
  v81 = v89 + 8;
  v53 = (v78 + 8);
  while (1)
  {
    (v84)(v93, AssociatedConformanceWitness);
    v54 = *v51;
    if ((*v51)(v28, 1, v95) == 1)
    {
      (*(v80 + 8))(v92, v93);
      v70 = v91;
      v71 = swift_getAssociatedConformanceWitness(v88, v87, v91, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v72 = v75;
      v73 = v90;
      (*(v71 + 16))(v70, v71);
      (*(v79 + 8))(v73, v70);
      v74 = v54(v72, 1, v95) == 1;
      (*(v76 + 8))(v72, v77);
      return v74;
    }

    v55 = *v52;
    v56 = v51;
    v57 = v28;
    v58 = v95;
    (*v52)(v94, v28, v95);
    v59 = v91;
    v60 = swift_getAssociatedConformanceWitness(v88, v87, v91, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v61 = v83;
    (*(v60 + 16))(v59, v60);
    v62 = v58;
    v51 = v56;
    if (v54(v61, 1, v62) == 1)
    {
      break;
    }

    v63 = v61;
    v64 = v94;
    v65 = v95;
    v66 = v82;
    v55(v82, v63, v95);
    v67 = (*(v89 + 8))(v64, v66, v65);
    v68 = *v53;
    (*v53)(v66, v65);
    v68(v64, v65);
    v28 = v57;
    if ((v67 & 1) == 0)
    {
      (*(v80 + 8))(v92, v93);
      (*(v79 + 8))(v90, v91);
      return 0;
    }
  }

  (*v53)(v94, v95);
  (*(v80 + 8))(v92, v93);
  (*(v79 + 8))(v90, v91);
  (*(v76 + 8))(v61, v77);
  return 1;
}

uint64_t Sequence.elementsEqual<A>(_:by:)(char *a1, uint64_t (*a2)(char *, char *), uint64_t a3, Class *a4, Class *a5, int **a6, int **a7)
{
  v84 = a3;
  v83 = a2;
  v103 = a1;
  v90 = a7;
  swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v86 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v82 = &v76 - v14;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v16 = v15;
  v78 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v76 = &v76 - v18;
  v21 = type metadata accessor for Optional(255, v16, v19, v20);
  v99 = v12;
  v24 = type metadata accessor for Optional(255, v12, v22, v23);
  swift_getTupleTypeMetadata2(0, v21, v24, 0, 0);
  v97 = v25;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v76 - v28;
  v100 = v24;
  v80 = *(v24 - 1);
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v96 = &v76 - v32;
  v98 = v21;
  v91 = *(v21 - 1);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v95 = &v76 - v35;
  v89 = a5;
  AssociatedConformanceWitness = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v34, v36);
  v93 = &v76 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a7, v38, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v104 = v39;
  v79 = *(v39 - 8);
  v41 = MEMORY[0x1EEE9AC00](v39, v40);
  v43 = &v76 - v42;
  v44 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v41, v45);
  v47 = &v76 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a6;
  v50 = v49;
  swift_getAssociatedTypeWitness(0, a6, v49, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v52 = v51;
  v77 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v53);
  v55 = &v76 - v54;
  (*(v44 + 16))(v47, v102, v50);
  v56 = v48[4];
  v101 = v55;
  v57 = v48;
  (v56)(v50, v48);
  v58 = v89;
  (*(AssociatedConformanceWitness + 16))(v93, v103, v89);
  v59 = v90;
  v60 = v90[4];
  v103 = v43;
  v61 = v76;
  (v60)(v58, v90);
  v102 = v52;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v57, v50, v52, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v92 = *(AssociatedConformanceWitness + 16);
  v93 = (AssociatedConformanceWitness + 16);
  v90 = swift_getAssociatedConformanceWitness(v59, v58, v104, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v88 = v90[2];
  v89 = (v90 + 2);
  v87 = (v91 + 4);
  v62 = (v80 + 32);
  v63 = (v78 + 48);
  v91 = (v86 + 6);
  v81 = (v78 + 32);
  v64 = (v86 + 4);
  v85 = v86 + 1;
  v86 = (v78 + 8);
  while (1)
  {
    v65 = v95;
    v92(v102, AssociatedConformanceWitness);
    v66 = v96;
    (v88)(v104, v90);
    v67 = *(v97 + 48);
    (*v87)(v29, v65, v98);
    (*v62)(&v29[v67], v66, v100);
    if ((*v63)(v29, 1, v16) == 1)
    {
      (*(v79 + 8))(v103, v104);
      (*(v77 + 8))(v101, v102);
      LOBYTE(v62) = 1;
      if ((*v91)(&v29[v67], 1, v99) == 1)
      {
        return v62 & 1;
      }

      (*(v80 + 8))(&v29[v67], v100);
      goto LABEL_10;
    }

    v68 = v16;
    v69 = v99;
    if ((*v91)(&v29[v67], 1, v99) == 1)
    {
      (*(v79 + 8))(v103, v104);
      (*(v77 + 8))(v101, v102);
      (*v86)(v29, v68);
      goto LABEL_10;
    }

    (*v81)(v61, v29, v68);
    v70 = v61;
    v71 = v82;
    (*v64)(v82, &v29[v67], v69);
    v72 = v105;
    v73 = v83(v70, v71);
    v105 = v72;
    if (v72)
    {
      break;
    }

    v74 = v73;
    (*v85)(v71, v69);
    (*v86)(v70, v68);
    v16 = v68;
    v61 = v70;
    if ((v74 & 1) == 0)
    {
      (*(v79 + 8))(v103, v104);
      (*(v77 + 8))(v101, v102);
LABEL_10:
      LOBYTE(v62) = 0;
      return v62 & 1;
    }
  }

  (*v85)(v71, v69);
  (*v86)(v70, v68);
  (*(v79 + 8))(v103, v104);
  (*(v77 + 8))(v101, v102);
  return v62 & 1;
}

BOOL Sequence.lexicographicallyPrecedes<A>(_:by:)(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t (*a2)(char *, char *), uint64_t a3, Class *a4, char *a5, uint64_t a6, swift *a7)
{
  v99 = a7;
  v100 = a1;
  v87 = a2;
  v88 = a3;
  swift_getAssociatedTypeWitness(255, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v81 = type metadata accessor for Optional(0, v11, v13, v14);
  v80 = *(v81 - 8);
  v16 = MEMORY[0x1EEE9AC00](v81, v15);
  v79 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v101 = &v79 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v93 = &v79 - v23;
  v82 = *(v12 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v86 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v89 = &v79 - v29;
  v98 = a5;
  v94 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v95 = v33;
  v84 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v37 = &v79 - v36;
  v38 = a4;
  v39 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v35, v40);
  v42 = &v79 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a6, v38, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v44 = v43;
  v83 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v79 - v46;
  (*(v39 + 16))(v42, v97, v38);
  v48 = *(a6 + 32);
  v96 = v47;
  v48(v38, a6);
  v49 = v98;
  (*(v94 + 2))(v32, v100, v98);
  v50 = *(v99 + 4);
  v94 = v37;
  v50(v49);
  v97 = v44;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, v38, v44, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v90 = *(AssociatedConformanceWitness + 16);
  v91 = AssociatedConformanceWitness + 16;
  v51 = (v82 + 48);
  v52 = (v82 + 32);
  v53 = (v82 + 8);
  v85 = (v82 + 48);
  while (1)
  {
    v54 = v93;
    v90(v97, AssociatedConformanceWitness);
    v55 = *v51;
    if ((*v51)(v54, 1, v12) == 1)
    {
      (*(v83 + 8))(v96, v97);
      v70 = *(v80 + 8);
      v71 = v81;
      v70(v54, v81);
      v72 = v95;
      v73 = swift_getAssociatedConformanceWitness(v99, v98, v95, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v74 = v79;
      v75 = v94;
      (*(v73 + 16))(v72, v73);
      (*(v84 + 8))(v75, v72);
      v57 = v55(v74, 1, v12) != 1;
      v70(v74, v71);
      return v57;
    }

    v56 = *v52;
    v57 = v51;
    v58 = v89;
    (*v52)(v89, v54, v12);
    v59 = v101;
    v100 = v55;
    v60 = v12;
    v61 = v95;
    v62 = swift_getAssociatedConformanceWitness(v99, v98, v95, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    (*(v62 + 16))(v61, v62);
    v12 = v60;
    if (v100(v59, 1, v60) == 1)
    {
      (*v53)(v58, v60);
      (*(v84 + 8))(v94, v95);
      (*(v83 + 8))(v96, v97);
      (*(v80 + 8))(v101, v81);
      return 0;
    }

    v63 = v86;
    v56(v86, v101, v12);
    v64 = v87;
    v65 = v102;
    v66 = v87(v58, v63);
    if (v65)
    {
      break;
    }

    if (v66)
    {
      v102 = 0;
      v77 = *v53;
      (*v53)(v63, v12);
      v77(v58, v12);
      (*(v84 + 8))(v94, v95);
      (*(v83 + 8))(v96, v97);
      return 1;
    }

    v67 = v64(v63, v58);
    v68 = *v53;
    v102 = 0;
    v69 = v67;
    v68(v63, v12);
    v68(v58, v12);
    v51 = v85;
    if (v69)
    {
      (*(v84 + 8))(v94, v95);
      (*(v83 + 8))(v96, v97);
      return 0;
    }
  }

  v102 = v65;
  v76 = *v53;
  v76(v63, v12);
  v76(v58, v12);
  (*(v84 + 8))(v94, v95);
  (*(v83 + 8))(v96, v97);
  return v57;
}

BOOL Sequence<>.lexicographicallyPrecedes<A>(_:)(uint64_t a1, Class *a2, char *a3, uint64_t a4, swift *a5, uint64_t a6)
{
  v106 = a1;
  v92 = a6;
  v107 = a3;
  v108 = a5;
  swift_getAssociatedTypeWitness(255, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v89 = *(v14 - 8);
  v90 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v88 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v99 = &v87 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v87 - v23;
  v109 = v11;
  v98 = *(v11 - 8);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v97 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v91 = &v87 - v30;
  v31 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v104 = v35;
  v94 = *(v35 - 8);
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v39 = &v87 - v38;
  v40 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v37, v41);
  v43 = &v87 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v45 = v44;
  v93 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v46);
  v48 = &v87 - v47;
  (*(v40 + 16))(v43, v105, a2);
  v49 = *(a4 + 32);
  v105 = v48;
  v50 = v92;
  v51 = a4;
  v49(a2, a4);
  v52 = v107;
  (*(v31 + 16))(v34, v106, v107);
  v53 = *(v108 + 4);
  v103 = v39;
  v54 = v52;
  v55 = v91;
  v53(v54);
  v106 = v45;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v51, a2, v45, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v100 = *(AssociatedConformanceWitness + 16);
  v101 = AssociatedConformanceWitness + 16;
  v56 = (v98 + 6);
  v57 = (v98 + 4);
  v95 = v24;
  v96 = v50 + 16;
  ++v98;
  while (1)
  {
    v100(v106, AssociatedConformanceWitness);
    v58 = *v56;
    if ((*v56)(v24, 1, v109) == 1)
    {
      (*(v93 + 8))(v105, v106);
      v76 = v90;
      v77 = v24;
      v78 = *(v89 + 8);
      v78(v77, v90);
      v79 = v104;
      v80 = swift_getAssociatedConformanceWitness(v108, v107, v104, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v81 = v88;
      v82 = v103;
      (*(v80 + 16))(v79, v80);
      (*(v94 + 8))(v82, v79);
      v83 = v58(v81, 1, v109) != 1;
      v78(v81, v76);
      return v83;
    }

    v59 = v50;
    v60 = *v57;
    v61 = v56;
    v62 = v109;
    (*v57)(v55, v24, v109);
    v63 = v55;
    v64 = v104;
    v65 = swift_getAssociatedConformanceWitness(v108, v107, v104, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v66 = v99;
    (*(v65 + 16))(v64, v65);
    v67 = v66;
    v68 = v62;
    v56 = v61;
    if (v58(v66, 1, v68) == 1)
    {
      (*v98)(v63, v109);
      (*(v94 + 8))(v103, v104);
      (*(v93 + 8))(v105, v106);
      (*(v89 + 8))(v66, v90);
      return 0;
    }

    v69 = v97;
    v70 = v67;
    v71 = v109;
    v60(v97, v70, v109);
    v50 = v59;
    v72 = *(v59 + 16);
    v55 = v63;
    if (v72(v63, v69, v71, v59))
    {
      break;
    }

    v73 = v109;
    v74 = v72(v69, v63, v109, v50);
    v75 = *v98;
    (*v98)(v69, v73);
    v75(v63, v73);
    v24 = v95;
    if (v74)
    {
      (*(v94 + 8))(v103, v104);
      (*(v93 + 8))(v105, v106);
      return 0;
    }
  }

  v85 = *v98;
  v86 = v109;
  (*v98)(v69, v109);
  v85(v63, v86);
  (*(v94 + 8))(v103, v104);
  (*(v93 + 8))(v105, v106);
  return 1;
}

BOOL Sequence.contains(where:)(uint64_t (*a1)(char *), uint64_t a2, Class *a3, int **a4)
{
  v39 = a1;
  v40 = a2;
  AssociatedConformanceWitness = a4;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v37 - v10;
  v14 = type metadata accessor for Optional(0, v8, v12, v13);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v37 - v17;
  v19 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v16, v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v24 = v23;
  v38 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v37 - v26;
  (*(v19 + 16))(v22, v45, a3);
  v28 = AssociatedConformanceWitness[4];
  v44 = v27;
  v29 = AssociatedConformanceWitness;
  (v28)(a3);
  v45 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v29, a3, v24, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v41 = AssociatedConformanceWitness[2];
  v42 = AssociatedConformanceWitness + 2;
  v30 = (v37 + 48);
  v31 = (v37 + 32);
  v32 = (v37 + 8);
  do
  {
    (v41)(v45, AssociatedConformanceWitness);
    v33 = (*v30)(v18, 1, v8);
    if (v33 == 1)
    {
      break;
    }

    (*v31)(v11, v18, v8);
    v34 = v39(v11);
    if (v4)
    {
      (*v32)(v11, v8);
      break;
    }

    v35 = v34;
    (*v32)(v11, v8);
  }

  while ((v35 & 1) == 0);
  (*(v38 + 8))(v44, v45);
  return v33 != 1;
}

BOOL Sequence.allSatisfy(_:)(uint64_t (*a1)(char *), uint64_t a2, Class *a3, int **a4)
{
  v39 = a1;
  v40 = a2;
  AssociatedConformanceWitness = a4;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v37 - v10;
  v14 = type metadata accessor for Optional(0, v8, v12, v13);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v37 - v17;
  v19 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v16, v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v24 = v23;
  v38 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v37 - v26;
  (*(v19 + 16))(v22, v45, a3);
  v28 = AssociatedConformanceWitness[4];
  v44 = v27;
  v29 = AssociatedConformanceWitness;
  (v28)(a3);
  v45 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v29, a3, v24, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v41 = AssociatedConformanceWitness[2];
  v42 = AssociatedConformanceWitness + 2;
  v30 = (v37 + 48);
  v31 = (v37 + 32);
  v32 = (v37 + 8);
  do
  {
    (v41)(v45, AssociatedConformanceWitness);
    v33 = (*v30)(v18, 1, v8);
    if (v33 == 1)
    {
      break;
    }

    (*v31)(v11, v18, v8);
    v34 = v39(v11);
    if (v4)
    {
      (*v32)(v11, v8);
      break;
    }

    v35 = v34;
    (*v32)(v11, v8);
  }

  while ((v35 & 1) != 0);
  (*(v38 + 8))(v44, v45);
  return v33 == 1;
}

unint64_t Sequence.reversed()(Class *a1, uint64_t a2)
{
  v3 = v2;
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v8 = *(v6 - 1);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6, v10);
  v12 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v56 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v65 = &v56 - v19;
  v20 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v18, v21);
  (*(v20 + 16))(&v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v23 = (*(a2 + 56))(a1, a2);
  v67 = v23;
  v23;
  v24 = Array._getCount()();
  v23;
  if (v24 <= -2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v20 + 8))(v3, a1);
  if ((v24 + 1) >= 3)
  {
    v26 = 0;
    v27 = v24 / 2;
    v63 = v8 + 32;
    v64 = (v8 + 16);
    v28 = v8 + 40;
    while (1)
    {
      if (v27 == v26)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v29 = v26 + 1;
      v30 = v24 - (v26 + 1);
      if (__OFSUB__(v24, v26 + 1))
      {
        break;
      }

      if (v26 != v30)
      {
        v59 = v26 + 1;
        v60 = v28;
        v61 = v27;
        v31 = v67;
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v7, v7);
        v62 = v31 & 0xC000000000000001;
        v33 = ((v31 & 0xC000000000000001) == 0) | ~isClassOrObjCExistentialType;
        Array._checkSubscript(_:wasNativeTypeChecked:)(v26, (v31 & 0xC000000000000001) == 0 || (isClassOrObjCExistentialType & 1) == 0);
        if (v33)
        {
          v34 = v31 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26;
          v58 = *(v8 + 16);
          v58(v65, v34, v7);
        }

        else
        {
          v52 = _ArrayBuffer._getElementSlowPath(_:)(v26, v31, v7);
          if (v9 != 8)
          {
            goto LABEL_26;
          }

          v66 = v52;
          v53 = v52;
          v58 = *v64;
          v58(v65, &v66, v7);
          swift_unknownObjectRelease(v53);
        }

        v35 = v62 == 0;
        v36 = v35 | ~_swift_isClassOrObjCExistentialType(v7, v7);
        Array._checkSubscript(_:wasNativeTypeChecked:)(v24 - (v26 + 1), v36 & 1);
        if (v36)
        {
          v58(v16, v31 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v30, v7);
        }

        else
        {
          v54 = _ArrayBuffer._getElementSlowPath(_:)(v24 - (v26 + 1), v31, v7);
          if (v9 != 8)
          {
            goto LABEL_26;
          }

          v66 = v54;
          v55 = v54;
          v58(v16, &v66, v7);
          swift_unknownObjectRelease(v55);
        }

        (*(v8 + 32))(v12, v16, v7);
        v58 = type metadata accessor for Array(0, v7, v37, v38);
        Array._makeMutableAndUnique()();
        v39 = v67;
        Array._checkSubscript_mutating(_:)(v26);
        v40 = _swift_isClassOrObjCExistentialType(v7, v7);
        v41 = v39 & 0xFFFFFFFFFFFFFF8;
        if (!v40)
        {
          v41 = v39;
        }

        v42 = *(v8 + 80);
        v62 = v16;
        v43 = v12;
        v44 = (v42 + 32) & ~v42;
        v45 = *(v8 + 72);
        v46 = v41 + v44 + v45 * v26;
        v57 = *(v8 + 40);
        v47 = v60;
        v57(v46, v43, v7);
        Array._makeMutableAndUnique()();
        v48 = v67;
        Array._checkSubscript_mutating(_:)(v30);
        v49 = _swift_isClassOrObjCExistentialType(v7, v7);
        v50 = v48 & 0xFFFFFFFFFFFFFF8;
        if (!v49)
        {
          v50 = v48;
        }

        v28 = v47;
        v51 = v50 + v44;
        v12 = v43;
        v16 = v62;
        v57(v51 + v45 * v30, v65, v7);
        v27 = v61;
        v29 = v59;
      }

      v26 = v29;
      if (v27 == v29)
      {
        return v67;
      }
    }

    __break(1u);
LABEL_26:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v67;
}

void Sequence.flatMap<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, Class *a4, int **a5, int **a6)
{
  v56 = a4;
  v57 = a6;
  v52 = a1;
  v53 = a2;
  MEMORY[0x1EEE9AC00](a1, a2);
  v44 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a5;
  v10 = v9;
  swift_getAssociatedTypeWitness(0, a5, v9, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v44 - v14;
  v18 = type metadata accessor for Optional(0, v12, v16, v17);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v22 = &v44 - v21;
  v23 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v20, v24);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v28 = v27;
  v45 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = (&v44 - v30);
  swift_getAssociatedTypeWitness(0, v57, v56, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v51 = v32;
  _swift_isClassOrObjCExistentialType(v32, v32);
  v58 = &_swiftEmptyArrayStorage;
  (*(v23 + 16))(v26, v55, v10);
  v33 = v10;
  v34 = v10;
  v35 = v54;
  (v54[4])(v33);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v35, v34, v28, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v37 = *(AssociatedConformanceWitness + 16);
  v54 = v31;
  v55 = v28;
  v49 = AssociatedConformanceWitness + 16;
  v50 = AssociatedConformanceWitness;
  v48 = v37;
  (v37)(v28);
  v38 = v46;
  v47 = *(v46 + 48);
  if (v47(v22, 1, v12) == 1)
  {
LABEL_5:
    (*(v45 + 8))(v54, v55);
  }

  else
  {
    v46 = *(v38 + 32);
    v39 = (v38 + 8);
    v40 = v44;
    while (1)
    {
      (v46)(v15, v22, v12);
      v52(v15);
      if (v6)
      {
        break;
      }

      (*v39)(v15, v12);
      v43 = type metadata accessor for Array(0, v51, v41, v42);
      Array.append<A>(contentsOf:)(v40, v43, v56, v57);
      v48(v55, v50);
      if (v47(v22, 1, v12) == 1)
      {
        goto LABEL_5;
      }
    }

    (*v39)(v15, v12);
    (*(v45 + 8))(v54, v55);
    v58;
  }
}

void Sequence._compactMap<A>(_:)(void (*a1)(char *), uint64_t a2, Class *a3, unint64_t *a4, int **a5)
{
  v6 = v5;
  v81 = a4;
  v77 = a1;
  v78 = a2;
  v67 = type metadata accessor for Optional(0, a4, a3, a4);
  v62 = *(v67 - 8);
  v11 = MEMORY[0x1EEE9AC00](v67, v10);
  v13 = &v61 - v12;
  v64 = *(a4 - 1);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v66 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v65 = &v61 - v18;
  v79 = a5;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v68 = &v61 - v23;
  v26 = type metadata accessor for Optional(0, v20, v24, v25);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v69 = &v61 - v29;
  v30 = a3;
  v31 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v28, v32);
  v34 = &v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v30, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v36 = v35;
  v61 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = (&v61 - v38);
  _swift_isClassOrObjCExistentialType(v81, v81);
  v82 = &_swiftEmptyArrayStorage;
  (*(v31 + 16))(v34, v80, v30);
  v40 = v79;
  (v79[4])(v30, v79);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v40, v30, v36, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v42 = *(AssociatedConformanceWitness + 16);
  v43 = v69;
  v79 = v39;
  v80 = v36;
  v75 = AssociatedConformanceWitness + 16;
  v76 = AssociatedConformanceWitness;
  v74 = v42;
  (v42)(v36);
  v72 = *(v21 + 48);
  v73 = v21 + 48;
  if (v72(v43, 1, v20) == 1)
  {
LABEL_2:
    (*(v61 + 8))(v79, v80);
  }

  else
  {
    v45 = *(v21 + 32);
    v44 = v21 + 32;
    v70 = v45;
    v71 = (v44 - 24);
    v46 = (v64 + 6);
    v63 = v44;
    v64 += 4;
    ++v62;
    v47 = v68;
    v48 = v69;
    v45(v68, v69, v20);
    while (1)
    {
      v77(v47);
      if (v6)
      {
        break;
      }

      (*v71)(v47, v20);
      v58 = v13;
      v59 = v13;
      v60 = v81;
      if ((*v46)(v58, 1, v81) == 1)
      {
        (*v62)(v59, v67);
      }

      else
      {
        v49 = v65;
        v50 = *v64;
        (*v64)(v65, v59, v60);
        v51 = v20;
        v52 = v66;
        v53 = v49;
        v48 = v69;
        v50(v66, v53, v60);
        v56 = type metadata accessor for Array(0, v60, v54, v55);
        v57 = v52;
        v20 = v51;
        v6 = 0;
        v47 = v68;
        Array.append(_:)(v57, v56);
      }

      v13 = v59;
      v74(v80, v76);
      if (v72(v48, 1, v20) == 1)
      {
        goto LABEL_2;
      }

      v70(v47, v48, v20);
    }

    (*v71)(v47, v20);
    (*(v61 + 8))(v79, v80);
    v82;
  }
}

__objc2_class **_NativeSet.init(capacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return &_swiftEmptySetSingleton;
  }

  type metadata accessor for _SetStorage(0, a2, a3, a4);
  return static _SetStorage.allocate(capacity:)(a1);
}

__objc2_class **Set.init(arrayLiteral:)(unint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (Array._getCount()())
  {
    v6 = specialized Set.init(_nonEmptyArrayLiteral:)(a1, a2, a3);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  a1;
  return v6;
}

void protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Set<A>(unint64_t a1@<X0>, uint64_t a2@<X1>, __objc2_class ***a3@<X8>)
{
  v6 = *(a2 + 16);
  if (Array._getCount()())
  {
    v7 = specialized Set.init(_nonEmptyArrayLiteral:)(a1, v6, *(a2 + 24));
  }

  else
  {
    v7 = &_swiftEmptySetSingleton;
  }

  a1;
  *a3 = v7;
}

uint64_t Set._Variant.contains(_:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *(a3 - 1);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v10 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v12 = _bridgeAnythingToObjectiveC<A>(_:)(v6, a3);
    v13 = [v11 member_];
    swift_unknownObjectRelease(v12);
    if (v13)
    {
      swift_unknownObjectRelease(v13);
      LOBYTE(v13) = 1;
    }
  }

  else if (*(a2 + 16) && (v14 = v6, v15 = v7, v16 = (*(v7 + 32))(*(a2 + 40), a3, v7), v17 = -1 << *(a2 + 32), v18 = v16 & ~v17, v28 = a2 + 56, ((*(a2 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
  {
    v26 = v15;
    v27 = v14;
    v19 = ~v17;
    v22 = *(v5 + 16);
    v21 = v5 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v9, *(a2 + 48) + v23 * v18, a3);
      LOBYTE(v13) = (*(*(v26 + 8) + 8))(v9, v27, a3);
      (*(v21 - 8))(v9, a3);
      if (v13)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
    }

    while (((*(v28 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

void protocol witness for Sequence.makeIterator() in conformance Set<A>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *v2;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = type metadata accessor for __CocoaSet.Iterator();
    v7 = swift_allocObject(v6, 0xE8, 7uLL);
    __CocoaSet.Iterator.init(_:)(v5);
    Set.Iterator.init(_cocoa:)(v7, v15);
    v4 = v15[0];
    v8 = v15[1];
    v10 = v15[2];
    v9 = v15[3];
    v11 = v15[4];
  }

  else
  {
    v9 = 0;
    v12 = -1;
    v13 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v12 = ~(-1 << v14);
    }

    v11 = v12 & *(v4 + 56);
  }

  *a2 = v4;
  a2[1] = v8;
  a2[2] = v10;
  a2[3] = v9;
  a2[4] = v11;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance Set<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance _ArrayBuffer<A>(unsigned __int16 *a1, uint64_t a2, int *a3)
{
  WitnessTable = swift_getWitnessTable(a3, a1, a3);
  v6 = specialized Collection._copyToContiguousArray()(v3, a1, WitnessTable);
  *v3;
  return v6;
}

__objc2_class **Set._Variant.filter(_:)(uint64_t (*a1)(swift *), uint64_t a2, uint64_t a3, Class *a4, uint64_t a5)
{
  v11 = type metadata accessor for Optional(0, a4, a3, a4);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v17 = *(a4 - 1);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v59 = (&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v27 = (&v47 - v26);
  if ((v23 & 0xC000000000000001) == 0)
  {
    _NativeSet.filter(_:)(a1, a2, v23, a4);
    if (!v5)
    {
      return v45;
    }

    return v6;
  }

  v52 = v24;
  v53 = v25;
  v57 = a1;
  v58 = a2;
  v56 = a5;
  v51 = v22;
  v6 = &_swiftEmptySetSingleton;
  v61 = &_swiftEmptySetSingleton;
  if (v23 < 0)
  {
    v28 = v23;
  }

  else
  {
    v28 = v23 & 0xFFFFFFFFFFFFFF8;
  }

  v29 = type metadata accessor for __CocoaSet.Iterator();
  v30 = swift_allocObject(v29, 0xE8, 7uLL);
  v31 = 0;
  *(v30 + 1) = 0u;
  v55 = v30 + 2;
  v30[27] = 0;
  v32 = v30 + 27;
  *(v30 + 2) = 0u;
  *(v30 + 3) = 0u;
  *(v30 + 4) = 0u;
  *(v30 + 6) = 0u;
  *(v30 + 7) = 0u;
  *(v30 + 8) = 0u;
  *(v30 + 9) = 0u;
  *(v30 + 10) = 0u;
  *(v30 + 11) = 0u;
  *(v30 + 12) = 0u;
  *(v30 + 5) = 0u;
  v54 = v30 + 10;
  v49 = (v12 + 16);
  v50 = (v17 + 56);
  v30[28] = 0;
  v47 = (v12 + 8);
  v48 = (v17 + 48);
  v33 = (v17 + 32);
  v30[26] = v28;
  v34 = (v17 + 8);
  while (1)
  {
    if (v31 != v30[28])
    {
      v36 = v30[3];
      if (!v36)
      {
LABEL_33:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v31 >> 60)
      {
        __break(1u);
LABEL_32:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_13;
    }

    v35 = [v30[26] countByEnumeratingWithState:v55 objects:v54 count:16];
    v30[28] = v35;
    if (!v35)
    {
      break;
    }

    v30[27] = 0;
    v36 = v30[3];
    if (!v36)
    {
      goto LABEL_33;
    }

    v31 = 0;
LABEL_13:
    v37 = (v36 + 8 * v31);
    if ((v37 & 7) != 0)
    {
      goto LABEL_32;
    }

    v38 = *v37;
    *v32 = v31 + 1;
    swift_unknownObjectRetain(v38);
    if (_swift_isClassOrObjCExistentialType(a4, a4))
    {
      v60 = v38;
      swift_dynamicCast(v27, &v60, qword_1EEEAC710, a4, 7uLL, v39, v40, v41, v47);
    }

    else
    {
      (*v50)(v53, 1, 1, a4);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v38, a4, v53);
      (*v49)(v52, v53, v51);
      if ((*v48)(v52, 1, a4) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_unknownObjectRelease(v38);
      (*v47)(v53, v51);
      (*v33)(v27, v52, a4);
    }

    v42 = v57(v27);
    if (v5)
    {
      v30;
      (*v34)(v27, a4);
      v6;
      return v6;
    }

    if (v42)
    {
      (*v33)(v59, v27, a4);
      v44 = v6[2];
      if (v6[3] <= v44)
      {
        type metadata accessor for _NativeSet(0, a4, v56, v43);
        _NativeSet.resize(capacity:)(&v44->isa + 1);
      }

      v6 = v61;
      _NativeSet._unsafeInsertNew(_:)(v59, v61, a4);
      v31 = *v32;
      if ((*v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      (*v34)(v27, a4);
      v31 = *v32;
      if ((*v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }
    }
  }

  *v32 = -1;
LABEL_29:
  v30;
  return v6;
}

void Set.startIndex.getter(int64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v3 = [swift_unknownObjectRetain(v2) count];
    type metadata accessor for __BridgingBufferStorage(0);
    if ((v3 - 0x1000000000000000) >> 61 == 7)
    {
      if (!__OFADD__(8 * v3, 24))
      {
        v5 = swift_bufferAllocate(v4, (8 * v3 + 24), 7uLL);
        v5[2] = v3;
        [v2 getObjects_];
        a1;
        v6 = type metadata accessor for __CocoaSet.Index.Storage();
        v7 = swift_allocObject(v6, 0x20, 7uLL);
        v7[2] = v2;
        v7[3] = v5;
        a1;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = (a1 + 56);
    v10 = (63 - (-1 << *(a1 + 32))) >> 6;
    do
    {
      if (*v9++)
      {
        break;
      }

      v8 -= 64;
      --v10;
    }

    while (v10);
  }
}

void Set._Variant.endIndex.getter(int64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v3 = [swift_unknownObjectRetain(v2) count];
    type metadata accessor for __BridgingBufferStorage(0);
    if ((v3 - 0x1000000000000000) >> 61 == 7)
    {
      if (!__OFADD__(8 * v3, 24))
      {
        v5 = swift_bufferAllocate(v4, (8 * v3 + 24), 7uLL);
        v5[2] = v3;
        [v2 getObjects_];
        a1;
        v6 = type metadata accessor for __CocoaSet.Index.Storage();
        v7 = swift_allocObject(v6, 0x20, 7uLL);
        v7[2] = v2;
        v7[3] = v5;
        a1;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void Set._Variant.element(at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v17 = v47 - v16;
  if ((v14 & 0xC000000000000001) != 0)
  {
    if ((v13 & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v6 >= 0)
    {
      v18 = (v6 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v18 = v6;
    }

    v19 = type metadata accessor for __CocoaSet.Index.Storage();
    if (swift_dynamicCastClass(v18, v19))
    {
      v20 = *(v18 + 3);
      if (*(v20 + 16) > a2)
      {
        v21 = *(v20 + 8 * a2 + 24);
        v22 = swift_unknownObjectRetain(v21);
        _forceBridgeFromObjectiveC<A>(_:_:)(v22, a3, a4, v23);

        swift_unknownObjectRelease(v21);
        return;
      }

LABEL_30:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_32:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v13)
  {
    v24 = v15;
    v25 = v14;
    if (v6 >= 0)
    {
      v6 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v26 = type metadata accessor for __CocoaSet.Index.Storage();
    if (!swift_dynamicCastClass(v6, v26))
    {
      goto LABEL_32;
    }

    if (*(v25 + 36) != specialized static Hasher._hash(seed:_:)(0, *(v6 + 16)))
    {
      goto LABEL_31;
    }

    if (!swift_dynamicCastClass(v6, v26))
    {
      goto LABEL_32;
    }

    v27 = *(v6 + 24);
    if (*(v27 + 16) <= a2)
    {
      goto LABEL_30;
    }

    v48 = a4;
    v28 = *(v27 + 8 * a2 + 24);
    v29 = swift_unknownObjectRetain(v28);
    _forceBridgeFromObjectiveC<A>(_:_:)(v29, a3, v17, v30);
    swift_unknownObjectRelease(v28);
    v31 = *(v25 + 40);
    v32 = *(v24 + 32);
    v52 = v17;
    v50 = v24;
    v33 = v32(v31, a3, v24);
    v51 = v25;
    v34 = -1 << *(v25 + 32);
    v35 = v33 & ~v34;
    v49 = v25 + 56;
    if (((*(v25 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
      (*(v8 + 8))(v52, a3);
      goto LABEL_31;
    }

    v36 = ~v34;
    v39 = *(v8 + 16);
    v38 = v8 + 16;
    v37 = v39;
    v40 = *(v38 + 56);
    v41 = v38;
    v42 = (v38 - 8);
    v47[2] = v41 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v47[1] = v42 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v43 = v40;
      v44 = v37;
      v37(v11, *(v51 + 48) + v40 * v35, a3);
      v45 = (*(*(v50 + 8) + 8))(v11, v52, a3);
      v46 = *v42;
      (*v42)(v11, a3);
      if (v45)
      {
        break;
      }

      v35 = (v35 + 1) & v36;
      v37 = v44;
      v40 = v43;
      if (((*(v49 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        v46(v52, a3);
        goto LABEL_31;
      }
    }

    v46(v52, a3);
    v44(v48, *(v51 + 48) + v43 * v35, a3);
  }

  else
  {
    if (v6 < 0 || 1 << *(v14 + 32) <= v6 || ((*(v14 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0 || *(v14 + 36) != a2)
    {
LABEL_31:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(v8 + 16))(a4, *(v14 + 48) + *(v8 + 72) * v6, a3);
  }
}

Swift::Int Set.index(after:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a1;
  if ((a4 & 0xC000000000000001) == 0)
  {
    return _NativeSet.index(after:)(a1, a2, a3 & 1, a4).offset;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  if ((a3 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 >= 0)
  {
    v7 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  else
  {
    v7 = a1;
  }

  v8 = type metadata accessor for __CocoaSet.Index.Storage();
  if (!swift_dynamicCastClass(v7, v8))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v7 + 2) != v6 || *(*(v7 + 3) + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5;
  return v5;
}

void Set._Variant.formIndex(after:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!*(a1 + 16))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v4 >= 0)
    {
      v8 = (v4 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v8 = *a1;
    }

    v9 = type metadata accessor for __CocoaSet.Index.Storage();
    if (!swift_dynamicCastClass(v8, v9))
    {
      goto LABEL_18;
    }

    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native(v8);
    }

    if (!swift_dynamicCastClass(v8, v9))
    {
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (*(v8 + 2) != v10 || v5 >= *(*(v8 + 3) + 16))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v11 = v5 + 1;
  }

  else
  {
    offset = _NativeSet.index(after:)(*a1, v5, v6, a2).offset;
    v11 = v13;
    sub_180615F30(v4, v5, v6);
    v4 = offset;
  }

  *a1 = v4;
  *(a1 + 8) = v11;
  *(a1 + 16) = v7 != 0;
}

unint64_t Set.firstIndex(of:)(id *a1, int64_t a2, unsigned __int8 *a3)
{
  v6 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = _bridgeAnythingToObjectiveC<A>(_:)(a1, a3);
    if (a2 < 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v13 = [v12 member_];
    if (v13)
    {
      swift_unknownObjectRelease(v13);
      v14 = [swift_unknownObjectRetain(v12) count];
      type metadata accessor for __BridgingBufferStorage(0);
      if ((v14 - 0x1000000000000000) >> 61 == 7)
      {
        if (!__OFADD__(8 * v14, 24))
        {
          v16 = swift_bufferAllocate(v15, (8 * v14 + 24), 7uLL);
          v16[2] = v14;
          [v12 getObjects_];
          a2;
          if ((v16[2] & 0x8000000000000000) == 0)
          {
            v17 = 3;
            do
            {
              v18 = v16[v17];
              swift_unknownObjectRetain(v18);
              isEqual = swift_stdlib_NSObject_isEqual(v11, v18);
              swift_unknownObjectRelease(v18);
              ++v17;
            }

            while ((isEqual & 1) == 0);
            v20 = type metadata accessor for __CocoaSet.Index.Storage();
            v21 = swift_allocObject(v20, 0x20, 7uLL);
            *(v21 + 16) = v12;
            *(v21 + 24) = v16;
            swift_unknownObjectRetain(v12);
            swift_unknownObjectRelease(v11);
            return v21;
          }

LABEL_24:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_24;
    }

    swift_unknownObjectRelease(v11);
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v22 = v7;
  v23 = (*(v7 + 32))(*(a2 + 40), a3, v7);
  v24 = -1 << *(a2 + 32);
  v21 = v23 & ~v24;
  v35 = a2 + 56;
  if (((*(a2 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    return 0;
  }

  v33 = ~v24;
  v34 = v22;
  v27 = *(v6 + 16);
  v26 = v6 + 16;
  v25 = v27;
  v28 = *(v26 + 56);
  v29 = (v26 - 8);
  while (1)
  {
    v25(v9, *(a2 + 48) + v28 * v21, a3);
    v30 = (*(*(v34 + 8) + 8))(v9, a1, a3);
    (*v29)(v9, a3);
    if (v30)
    {
      break;
    }

    v21 = (v21 + 1) & v33;
    if (((*(v35 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return 0;
    }
  }

  return v21;
}

id Set.count.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 16);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return [a1 count];
}

BOOL Set.isEmpty.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v3 = [a1 count];
  }

  else
  {
    v3 = *(a1 + 16);
  }

  return v3 == 0;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance Set<A>@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  result = a1(*v2);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Set<A>(Class ***a1, uint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0x96C4uLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = Set.subscript.read(v7, *a2, *(a2 + 8), *(a2 + 16), *v3, *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*Set.subscript.read(Class **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class *a6))()
{
  v10 = *(a6 - 1);
  *a1 = a6;
  a1[1] = v10;
  v11 = v10[8];
  if (swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc(v11, 0x5732uLL);
  }

  else
  {
    v12 = malloc(v11);
  }

  a1[2] = v12;
  Set._Variant.element(at:)(a2, a3, a6, v12);
  return _ArrayBuffer.subscript.read;
}

unint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance Set<A>@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = Set.firstIndex(of:)(a1, *v3, *(a2 + 16));
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  return result;
}

Swift::Int protocol witness for Collection.index(after:) in conformance Set<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = Set.index(after:)(*a1, *(a1 + 8), *(a1 + 16), *v2);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZs11AnyHashableV_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v27 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v31 = a2 + 56;
  v28 = v7;
  v29 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v30 = (v6 - 1) & v6;
LABEL_13:
      outlined init with copy of AnyHashable(*(result + 48) + 40 * (v8 | (v3 << 6)), &v42);
      v39 = v42;
      v40 = v43;
      v11 = v44;
      v41 = v44;
      v12 = *(a2 + 40);
      v13 = *(&v43 + 1);
      __swift_project_boxed_opaque_existential_0Tm(&v39, *(&v43 + 1));
      (*(v11 + 8))(v36, v13, v11);
      v14 = v37;
      v15 = v38;
      __swift_project_boxed_opaque_existential_0Tm(v36, v37);
      v16 = (*(v15 + 40))(v12, v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      while (1)
      {
        outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v18, v36);
        v20 = v37;
        v21 = v38;
        __swift_project_boxed_opaque_existential_0Tm(v36, v37);
        (*(v21 + 8))(v33, v20, v21);
        v22 = v34;
        v23 = v35;
        __swift_project_boxed_opaque_existential_0Tm(v33, v34);
        v24 = *(&v40 + 1);
        v25 = v41;
        __swift_project_boxed_opaque_existential_0Tm(&v39, *(&v40 + 1));
        (*(v25 + 8))(v32, v24, v25);
        v26 = (*(v23 + 16))(v32, v22, v23);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        outlined destroy of AnyHashable(v36);
        if (v26)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      outlined destroy of AnyHashable(&v39);
      v7 = v28;
      result = v29;
      v6 = v30;
      if (!v30)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    outlined destroy of AnyHashable(&v39);
    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v27 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Set.== infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *(a3 - 1);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v42 - v11;
  result = MEMORY[0x1EEE9AC00](v10, v13);
  v17 = v42 - v16;
  v19 = v18 & 0xC000000000000001;
  if ((result & 0xC000000000000001) != 0)
  {
    if (result >= 0)
    {
      result &= 0xFFFFFFFFFFFFFF8uLL;
    }

    if (v19)
    {
      if (a2 < 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return swift_stdlib_NSObject_isEqual(result, v20);
    }

    v22 = a2;
    goto LABEL_16;
  }

  if (v19)
  {
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v21 = a2;
    }

    v22 = result;
    result = v21;
LABEL_16:

    return _NativeSet.isEqual(to:)(result, v22, a3);
  }

  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v23 = 0;
  v24 = *(result + 56);
  v42[0] = result + 56;
  v25 = 1 << *(result + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v49 = v15 + 32;
  v52 = a2 + 56;
  v53 = v5 + 16;
  v54 = (v5 + 8);
  v43 = v28;
  v44 = v42 - v16;
  v45 = v5;
  v46 = result;
  v42[1] = v5 + 32;
  if (v27)
  {
    while (1)
    {
      v29 = v15;
      v30 = __clz(__rbit64(v27));
      v48 = (v27 - 1) & v27;
LABEL_31:
      v33 = *(v5 + 72);
      v34 = *(result + 48) + v33 * (v30 | (v23 << 6));
      v50 = *(v5 + 16);
      v51 = v33;
      v50(v17, v34, a3);
      (*(v5 + 32))(v12, v17, a3);
      v35 = v29;
      v36 = (*(v29 + 32))(*(a2 + 40), a3);
      v37 = -1 << *(a2 + 32);
      v38 = v36 & ~v37;
      if (((*(v52 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        break;
      }

      v47 = v54 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v39 = ~v37;
      while (1)
      {
        v50(v8, *(a2 + 48) + v38 * v51, a3);
        v40 = (*(*(v35 + 8) + 8))(v8, v12, a3);
        v41 = *v54;
        (*v54)(v8, a3);
        if (v40)
        {
          break;
        }

        v38 = (v38 + 1) & v39;
        if (((*(v52 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          v41(v12, a3);
          return 0;
        }
      }

      v41(v12, a3);
      v5 = v45;
      result = v46;
      v15 = v35;
      v28 = v43;
      v17 = v44;
      v27 = v48;
      if (!v48)
      {
        goto LABEL_26;
      }
    }

    (*v54)(v12, a3);
    return 0;
  }

LABEL_26:
  v31 = v23;
  while (1)
  {
    v23 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v23 >= v28)
    {
      return 1;
    }

    v32 = *(v42[0] + 8 * v23);
    ++v31;
    if (v32)
    {
      v29 = v15;
      v30 = __clz(__rbit64(v32));
      v48 = (v32 - 1) & v32;
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t Set._Variant.asCocoa.getter(int64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  a1;
  return v1;
}

void specialized Set.hash(into:)(__int128 *a1, unint64_t a2)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a1;
  v29 = a1[1];
  v30 = v3;
  v31 = v4;
  v32 = *(a1 + 8);
  v28 = v5;
  v19 = Hasher._finalize()();
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  a2;
  v10 = 0;
  for (i = 0; v8; i ^= v18)
  {
    v12 = v10;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    outlined init with copy of AnyHashable(*(a2 + 48) + 40 * (v13 | (v12 << 6)), &v25);
    v23[0] = v25;
    v23[1] = v26;
    v14 = v27;
    v24 = v27;
    v15 = *(&v26 + 1);
    __swift_project_boxed_opaque_existential_0Tm(v23, *(&v26 + 1));
    (*(v14 + 8))(v20, v15, v14);
    v16 = v21;
    v17 = v22;
    __swift_project_boxed_opaque_existential_0Tm(v20, v21);
    v18 = (*(v17 + 40))(v19, v16, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    outlined destroy of AnyHashable(v23);
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      a2;
      Hasher._combine(_:)(i);
      return;
    }

    v8 = *(a2 + 56 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void Set.hash(into:)(__int128 *a1, int64_t a2, Class *a3, uint64_t a4)
{
  v66 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v64 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Optional(0, v9, v9, v10);
  v11 = *(v58 - 8);
  v13 = MEMORY[0x1EEE9AC00](v58 - 8, v12);
  v59 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v60 = (&v55 - v17);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = (&v55 - v19);
  v21 = a1[3];
  v77 = a1[2];
  v78 = v21;
  v79 = *(a1 + 8);
  v23 = *a1;
  v22 = a1[1];
  v62 = a1;
  v75 = v23;
  v76 = v22;
  v70 = Hasher._finalize()();
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v25 = type metadata accessor for __CocoaSet.Iterator();
    v26 = swift_allocObject(v25, 0xE8, 7uLL);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    *(v26 + 208) = v24;
    *(v26 + 216) = 0;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0u;
    *(v26 + 64) = 0u;
    *(v26 + 80) = 0u;
    *(v26 + 96) = 0u;
    *(v26 + 112) = 0u;
    *(v26 + 128) = 0u;
    *(v26 + 144) = 0u;
    *(v26 + 160) = 0u;
    *(v26 + 176) = 0u;
    *(v26 + 192) = 0u;
    *(v26 + 224) = 0;
    v30 = v26 | 0x8000000000000000;
  }

  else
  {
    v31 = -1 << *(a2 + 32);
    v28 = ~v31;
    v27 = a2 + 56;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v29 = v33 & *(a2 + 56);
    v30 = a2;
  }

  v34 = v30 & 0x7FFFFFFFFFFFFFFFLL;
  v73 = (v66 + 56);
  v57 = (v11 + 16);
  v56 = (v66 + 48);
  v55 = (v11 + 8);
  v71 = (v66 + 32);
  v61 = v28;
  v35 = (v28 + 64) >> 6;
  v65 = v66 + 16;
  v67 = (v66 + 8);
  v68 = a4 + 32;
  a2;
  v36 = 0;
  v72 = 0;
  v37 = v64;
  v69 = v30;
  v63 = a4;
  while ((v30 & 0x8000000000000000) == 0)
  {
    if (v29)
    {
      v38 = v72;
      goto LABEL_12;
    }

    v44 = v72;
    do
    {
      v38 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v38 >= v35)
      {
        goto LABEL_34;
      }

      v29 = *(v27 + 8 * v38);
      ++v44;
    }

    while (!v29);
    v72 = v38;
LABEL_12:
    v39 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v40 = v39 | (v38 << 6);
    v41 = *(v30 + 48);
    v42 = v66;
    (*(v66 + 16))(v20, v41 + *(v66 + 72) * v40, a3);
    (*(v42 + 56))(v20, 0, 1, a3);
LABEL_13:
    (*v71)(v37, v20, a3);
    v43 = (*(a4 + 32))(v70, a3, a4);
    (*v67)(v37, a3);
    v36 ^= v43;
    v30 = v69;
  }

  v45 = *(v34 + 216);
  if ((v45 & 0x8000000000000000) != 0)
  {
LABEL_34:
    v46 = v73;
  }

  else
  {
    v46 = v73;
    if (v45 != *(v34 + 224))
    {
      v48 = *(v34 + 24);
      if (v48)
      {
        if (v45 >> 60)
        {
          goto LABEL_38;
        }

        goto LABEL_28;
      }

LABEL_40:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v47 = [*(v34 + 208) countByEnumeratingWithState:v34 + 16 objects:v34 + 80 count:16];
    *(v34 + 224) = v47;
    if (v47)
    {
      *(v34 + 216) = 0;
      v48 = *(v34 + 24);
      if (v48)
      {
        v45 = 0;
LABEL_28:
        v49 = (v48 + 8 * v45);
        if ((v49 & 7) == 0)
        {
          v50 = *v49;
          *(v34 + 216) = v45 + 1;
          swift_unknownObjectRetain(v50);
          if (_swift_isClassOrObjCExistentialType(a3, a3))
          {
            v74 = v50;
            swift_dynamicCast(v20, &v74, qword_1EEEAC710, a3, 7uLL, v51, v52, v53, v55);
            v54 = *v46;
          }

          else
          {
            v54 = *v46;
            v54(v60, 1, 1, a3);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v50, a3, v60);
            (*v57)(v59, v60, v58);
            if ((*v56)(v59, 1, a3) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            swift_unknownObjectRelease(v50);
            (*v55)(v60, v58);
            (*v71)(v20, v59, a3);
          }

          v54(v20, 0, 1, a3);
          a4 = v63;
          v37 = v64;
          goto LABEL_13;
        }

        goto LABEL_39;
      }

      goto LABEL_40;
    }

    *(v34 + 216) = -1;
  }

  (*v46)(v20, 1, 1, a3);
  _sSh8IteratorV8_VariantOySS__GWOe_0(v30);
  Hasher._combine(_:)(v36);
}

Swift::Int ContiguousArray<A>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v8 = 0u;
  v9 = 0u;
  v5 = 0;
  v6 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  a4(&v5, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Set<A>(uint64_t a1, uint64_t a2)
{
  specialized Hasher.init(_seed:)(a1, v5);
  Set.hash(into:)(v5, *v2, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t Set._toCustomAnyHashable()@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = specialized _setUpCast<A, B>(_:)(a1, a2);
  result = type metadata accessor for _SetAnyHashableBox(0, a2, a3, v9);
  a4[3] = result;
  a4[4] = &protocol witness table for _SetAnyHashableBox<A>;
  *a4 = a1;
  a4[1] = v8;
  return result;
}

void specialized _setUpCast<A, B>(_:)(unint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(v2, _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v3;
  a1;
  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * (v10 | (v9 << 6)), v13);
    v11[0] = v13[0];
    v11[1] = v13[1];
    v12 = v14;
    specialized _NativeSet._unsafeInsertNew(_:)(v11, v3);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v3;
      a1;
      return;
    }

    v6 = *(a1 + 56 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
}

__objc2_class **specialized _setUpCast<A, B>(_:)(uint64_t a1, unint64_t *a2)
{
  v4 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Optional(0, v7, v8, v9);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = (&v60 - v18);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = (&v60 - v21);
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v23 = a1;
    }

    else
    {
      v23 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v24 = [v23 count];
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_8:
    v69 = &_swiftEmptySetSingleton;
    goto LABEL_9;
  }

  v24 = *(a1 + 16);
  if (!v24)
  {
    goto LABEL_8;
  }

LABEL_6:
  v69 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(v24, _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5);
LABEL_9:
  v64 = v15;
  v65 = v19;
  v63 = v10;
  v71 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v25 = a1;
    }

    else
    {
      v25 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v26 = type metadata accessor for __CocoaSet.Iterator();
    v27 = swift_allocObject(v26, 0xE8, 7uLL);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    *(v27 + 208) = v25;
    *(v27 + 216) = 0;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
    *(v27 + 48) = 0u;
    *(v27 + 64) = 0u;
    *(v27 + 80) = 0u;
    *(v27 + 96) = 0u;
    *(v27 + 112) = 0u;
    *(v27 + 128) = 0u;
    *(v27 + 144) = 0u;
    *(v27 + 160) = 0u;
    *(v27 + 176) = 0u;
    *(v27 + 192) = 0u;
    *(v27 + 224) = 0;
    v31 = v27 | 0x8000000000000000;
  }

  else
  {
    v32 = -1 << *(a1 + 32);
    v29 = ~v32;
    v28 = a1 + 56;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v30 = v34 & *(a1 + 56);
    v31 = a1;
  }

  v73 = v31;
  v35 = v31 & 0x7FFFFFFFFFFFFFFFLL;
  v72 = (v4 + 56);
  v61 = (v4 + 48);
  v62 = (v11 + 16);
  v60 = (v11 + 8);
  v36 = (v4 + 32);
  v66 = v29;
  v37 = (v29 + 64) >> 6;
  v70 = v4 + 16;
  v38 = v69;
  v69;
  v71;
  v71 = 0;
  v67 = v6;
  v68 = v4;
  while (1)
  {
    v45 = v73;
    if ((v73 & 0x8000000000000000) != 0)
    {
      v47 = *(v35 + 216);
      if ((v47 & 0x8000000000000000) == 0)
      {
        if (v47 != *(v35 + 224))
        {
          v49 = *(v35 + 24);
          if (v49)
          {
            if (v47 >> 60)
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

LABEL_36:
            v50 = (v49 + 8 * v47);
            if ((v50 & 7) == 0)
            {
              v51 = *v50;
              *(v35 + 216) = v47 + 1;
              swift_unknownObjectRetain(v51);
              isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
              v56 = v72;
              if (isClassOrObjCExistentialType)
              {
                *&v74[0] = v51;
                swift_dynamicCast(v22, v74, qword_1EEEAC710, a2, 7uLL, v53, v54, v55, v60);
                v57 = *v56;
              }

              else
              {
                v57 = *v72;
                (*v72)(v65, 1, 1, a2);
                _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v51, a2, v65);
                (*v62)(v64, v65, v63);
                if ((*v61)(v64, 1, a2) == 1)
                {
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                (*v60)(v65, v63);
                swift_unknownObjectRelease(v51);
                (*v36)(v22, v64, a2);
              }

              v57(v22, 0, 1, a2);
              v6 = v67;
              v4 = v68;
              v38 = v69;
              goto LABEL_21;
            }

LABEL_48:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

LABEL_49:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v48 = [*(v35 + 208) countByEnumeratingWithState:v35 + 16 objects:v35 + 80 count:{16, v39.n128_f64[0]}];
        *(v35 + 224) = v48;
        if (v48)
        {
          *(v35 + 216) = 0;
          v49 = *(v35 + 24);
          if (v49)
          {
            v47 = 0;
            goto LABEL_36;
          }

          goto LABEL_49;
        }

        *(v35 + 216) = -1;
        v45 = v73;
      }

      _sSh8IteratorV8_VariantOySS__GWOe_0(v45);
      (*v72)(v22, 1, 1, a2);
      goto LABEL_43;
    }

    if (v30)
    {
      v40 = v71;
      goto LABEL_20;
    }

    v46 = v71;
LABEL_25:
    v40 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v40 >= v37)
    {
      break;
    }

    v30 = *(v28 + 8 * v40);
    ++v46;
    if (!v30)
    {
      goto LABEL_25;
    }

    v71 = v40;
LABEL_20:
    v41 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    (*(v4 + 16))(v22, *(v73 + 48) + *(v4 + 72) * (v41 | (v40 << 6)), a2);
    (*(v4 + 56))(v22, 0, 1, a2);
LABEL_21:
    (*v36)(v6, v22, a2);
    swift_dynamicCast(v74, v6, a2, &type metadata for AnyHashable, 7uLL, v42, v43, v44, v60);
    v39 = specialized _NativeSet._unsafeInsertNew(_:)(v74, v38);
  }

  v58 = v73;
  (*v72)(v22, 1, 1, a2, v39);
  _sSh8IteratorV8_VariantOySS__GWOe_0(v58);
LABEL_43:
  v38;
  return v38;
}

__objc2_class **_setUpCast<A, B>(_:)(int64_t a1, Class *a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v115 = a5;
  v112 = *(a2 - 1);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v114 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v113 = (&v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Optional(0, v12, v13, v14);
  v110 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = (&v99 - v22);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = (&v99 - v26);
  MEMORY[0x1EEE9AC00](v25, v28);
  v31 = &v99 - v30;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v33 = a1;
    }

    else
    {
      v33 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v34 = [v33 count];
    v104 = v23;
    if (v34)
    {
      goto LABEL_6;
    }

LABEL_8:
    v35 = &_swiftEmptySetSingleton;
    goto LABEL_9;
  }

  v34 = *(a1 + 16);
  v104 = v23;
  if (!v34)
  {
    goto LABEL_8;
  }

LABEL_6:
  type metadata accessor for _SetStorage(0, a3, v115, v29);
  v35 = static _SetStorage.allocate(capacity:)(v34);
LABEL_9:
  v116[1] = v35;
  v107 = v35;
  if (a3 != &type metadata for String)
  {
    v102 = v15;
    v103 = v19;
    v109 = a3;
    if (v32)
    {
      if (a1 < 0)
      {
        v36 = a1;
      }

      else
      {
        v36 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v37 = type metadata accessor for __CocoaSet.Iterator();
      v38 = swift_allocObject(v37, 0xE8, 7uLL);
      v39 = 0;
      v40 = 0;
      v41 = 0;
      *(v38 + 208) = v36;
      *(v38 + 216) = 0;
      *(v38 + 16) = 0u;
      *(v38 + 32) = 0u;
      *(v38 + 48) = 0u;
      *(v38 + 64) = 0u;
      *(v38 + 80) = 0u;
      *(v38 + 96) = 0u;
      *(v38 + 112) = 0u;
      *(v38 + 128) = 0u;
      *(v38 + 144) = 0u;
      *(v38 + 160) = 0u;
      *(v38 + 176) = 0u;
      *(v38 + 192) = 0u;
      *(v38 + 224) = 0;
      v42 = v38 | 0x8000000000000000;
    }

    else
    {
      v50 = -1 << *(a1 + 32);
      v40 = ~v50;
      v39 = a1 + 56;
      v51 = -v50;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      else
      {
        v52 = -1;
      }

      v41 = v52 & *(a1 + 56);
      v42 = a1;
    }

    v53 = v42 & 0x7FFFFFFFFFFFFFFFLL;
    v111 = (v112 + 56);
    v100 = (v112 + 48);
    v101 = (v110 + 16);
    v99 = (v110 + 8);
    v54 = (v112 + 32);
    v55 = (v40 + 64) >> 6;
    v105 = v40;
    v106 = v112 + 16;
    v35;
    a1;
    v110 = 0;
    v108 = v42;
    while ((v42 & 0x8000000000000000) == 0)
    {
      if (v41)
      {
        v56 = v110;
        goto LABEL_26;
      }

      v68 = v110;
      do
      {
        v56 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (v56 >= v55)
        {
          goto LABEL_48;
        }

        v41 = *(v39 + 8 * v56);
        ++v68;
      }

      while (!v41);
      v110 = v56;
LABEL_26:
      v57 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v58 = v57 | (v56 << 6);
      v59 = *(v42 + 48);
      v60 = v112;
      (*(v112 + 16))(v27, v59 + *(v112 + 72) * v58, a2);
      (*(v60 + 56))(v27, 0, 1, a2);
LABEL_27:
      v61 = v114;
      (*v54)(v114, v27, a2);
      v62 = v113;
      v63 = v61;
      v64 = v109;
      swift_dynamicCast(v113, v63, a2, v109, 7uLL, v65, v66, v67, v99);
      _NativeSet._unsafeInsertNew(_:)(v62, v35, v64);
      v42 = v108;
    }

    v69 = *(v53 + 216);
    if ((v69 & 0x8000000000000000) == 0)
    {
      if (v69 != *(v53 + 224))
      {
        v71 = *(v53 + 24);
        if (v71)
        {
          v72 = v111;
          if (v69 >> 60)
          {
            goto LABEL_73;
          }

          goto LABEL_42;
        }

LABEL_75:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v70 = [*(v53 + 208) countByEnumeratingWithState:v53 + 16 objects:v53 + 80 count:16];
      *(v53 + 224) = v70;
      if (v70)
      {
        *(v53 + 216) = 0;
        v71 = *(v53 + 24);
        if (v71)
        {
          v69 = 0;
          v72 = v111;
LABEL_42:
          v73 = (v71 + 8 * v69);
          if ((v73 & 7) == 0)
          {
            v74 = *v73;
            *(v53 + 216) = v69 + 1;
            swift_unknownObjectRetain(v74);
            if (_swift_isClassOrObjCExistentialType(a2, a2))
            {
              v116[0] = v74;
              swift_dynamicCast(v27, v116, qword_1EEEAC710, a2, 7uLL, v75, v76, v77, v99);
              v78 = *v72;
            }

            else
            {
              v78 = *v72;
              v78(v104, 1, 1, a2);
              _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v74, a2, v104);
              (*v101)(v103, v104, v102);
              if ((*v100)(v103, 1, a2) == 1)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              swift_unknownObjectRelease(v74);
              (*v99)(v104, v102);
              (*v54)(v27, v103, a2);
            }

            v78(v27, 0, 1, a2);
            v35 = v107;
            goto LABEL_27;
          }

          goto LABEL_74;
        }

        goto LABEL_75;
      }

      *(v53 + 216) = -1;
    }

LABEL_48:
    (*v111)(v27, 1, 1, a2);
    _sSh8IteratorV8_VariantOySS__GWOe_0(v42);
    goto LABEL_67;
  }

  if (v32)
  {
    if (a1 < 0)
    {
      v43 = a1;
    }

    else
    {
      v43 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v44 = type metadata accessor for __CocoaSet.Iterator();
    v45 = swift_allocObject(v44, 0xE8, 7uLL);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    *(v45 + 208) = v43;
    *(v45 + 216) = 0;
    *(v45 + 16) = 0u;
    *(v45 + 32) = 0u;
    *(v45 + 48) = 0u;
    *(v45 + 64) = 0u;
    *(v45 + 80) = 0u;
    *(v45 + 96) = 0u;
    *(v45 + 112) = 0u;
    *(v45 + 128) = 0u;
    *(v45 + 144) = 0u;
    *(v45 + 160) = 0u;
    *(v45 + 176) = 0u;
    *(v45 + 192) = 0u;
    *(v45 + 224) = 0;
    v49 = v45 | 0x8000000000000000;
  }

  else
  {
    v79 = -1 << *(a1 + 32);
    v47 = ~v79;
    v46 = a1 + 56;
    v80 = -v79;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    else
    {
      v81 = -1;
    }

    v48 = v81 & *(a1 + 56);
    v49 = a1;
  }

  v82 = (v112 + 56);
  v83 = (v47 + 64) >> 6;
  v109 = v47;
  v110 = v112 + 16;
  v84 = (v112 + 32);
  v107;
  a1;
  v111 = 0;
  while ((v49 & 0x8000000000000000) != 0)
  {
    v95 = __CocoaSet.Iterator.next()();
    if (!v95)
    {
      goto LABEL_66;
    }

    v97 = v95;
    _forceBridgeFromObjectiveC<A>(_:_:)(v95, a2, v31, v96);
    swift_unknownObjectRelease(v97);
LABEL_56:
    (*v82)(v31, 0, 1, a2);
    v87 = v114;
    (*v84)(v114, v31, a2);
    v88 = v113;
    swift_dynamicCast(v113, v87, a2, &type metadata for String, 7uLL, v89, v90, v91, v99);
    v93 = type metadata accessor for _NativeSet(0, &type metadata for String, v115, v92);
    _NativeSet._unsafeUpdate(with:)(v88, v93);
  }

  if (v48)
  {
    v85 = v111;
LABEL_55:
    v86 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    (*(v112 + 16))(v31, *(v49 + 48) + *(v112 + 72) * (v86 | (v85 << 6)), a2);
    goto LABEL_56;
  }

  v94 = v111;
  while (1)
  {
    v85 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
      goto LABEL_72;
    }

    if (v85 >= v83)
    {
      break;
    }

    v48 = *(v46 + 8 * v85);
    v94 = (v94 + 1);
    if (v48)
    {
      v111 = v85;
      goto LABEL_55;
    }
  }

LABEL_66:
  (*v82)(v31, 1, 1, a2);
  _sSh8IteratorV8_VariantOySS__GWOe_0(v49);
  v35 = v107;
LABEL_67:
  v35;
  return v35;
}

unint64_t _SetAnyHashableBox._base.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  a4[3] = type metadata accessor for Set(0, a2, a3, a3);
  *a4 = a1;

  return a1;
}

void _SetAnyHashableBox._canonicalBox.getter(unint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  a1;
  specialized _setUpCast<A, B>(_:)(a1);
  a2[3] = qword_1EEEBF3B0;
  a2[4] = &protocol witness table for _SetAnyHashableBox<A>;
  *a2 = a1;
  a2[1] = v4;
}

uint64_t _SetAnyHashableBox._isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of MirrorPath(a1, v14);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15_AnyHashableBox_pMd, _ss15_AnyHashableBox_pMR);
  if (!swift_dynamicCast(v13, v14, v4, qword_1EEEBF3B0, 6uLL, v5, v6, v7, v12))
  {
    return 2;
  }

  v8 = v13[0];
  v9 = v13[1];
  v10 = _sSh2eeoiySbShyxG_ABtFZs11AnyHashableV_Tt1g5(a3, v13[0]);
  v9;
  v8;
  return v10 & 1;
}

Swift::Int _SetAnyHashableBox._hashValue.getter(uint64_t a1, unint64_t a2)
{
  v6 = 0u;
  v7 = 0u;
  v3 = 0;
  v4 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v5 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  specialized Set.hash(into:)(&v3, a2);
  return Hasher._finalize()();
}

Swift::Int __swiftcall _SetAnyHashableBox._rawHashValue(_seed:)(Swift::Int _seed)
{
  v7 = 0u;
  v8 = 0u;
  *&v3 = 0;
  *(&v3 + 1) = _swift_stdlib_Hashing_parameters ^ _seed ^ 0x736F6D6570736575;
  v4 = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v5 = _swift_stdlib_Hashing_parameters ^ _seed ^ 0x6C7967656E657261;
  v6 = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  specialized Set.hash(into:)(&v3, v1);
  return Hasher._finalize()();
}

uint64_t _SetAnyHashableBox._unbox<A>()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, Class *a3@<X3>, uint64_t a4@<X4>, swift *a5@<X8>)
{
  v15 = a1;
  v8 = type metadata accessor for Set(0, a2, a4, a3);
  a1;
  v12 = swift_dynamicCast(a5, &v15, v8, a3, 6uLL, v9, v10, v11, v14);
  return (*(*(a3 - 1) + 7))(a5, v12 ^ 1u, 1, a3);
}

uint64_t _SetAnyHashableBox._downCastConditional<A>(into:)(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, Class *a5, uint64_t a6)
{
  v11 = type metadata accessor for Optional(0, a5, a3, a4);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (&v30 - v15);
  v17 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v14, v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a2;
  v22 = type metadata accessor for Set(0, a4, a6, v21);
  a2;
  v26 = swift_dynamicCast(v16, &v31, v22, a5, 6uLL, v23, v24, v25, v30);
  v27 = *(v17 + 56);
  if (v26)
  {
    v27(v16, 0, 1, a5);
    v28 = *(v17 + 32);
    v28(v20, v16, a5);
    v28(a1, v20, a5);
  }

  else
  {
    v27(v16, 1, 1, a5);
    (*(v12 + 8))(v16, v11);
  }

  return v26;
}

id Set._Variant.update(with:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(a2 + 16);
  if ((v8 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v8);
    v20 = *v4;
    *v4 = 0x8000000000000000;
    v14 = type metadata accessor for _NativeSet(0, v9, *(a2 + 24), v19);
    v15 = a3;
    v16 = a1;
    v17 = isUniquelyReferenced_nonNull_native;
    goto LABEL_8;
  }

  if (v8 < 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = (v8 & 0xFFFFFFFFFFFFFF8);
  }

  result = [v10 count];
  if (!__OFADD__(result, 1))
  {
    v12 = *(a2 + 24);
    v20 = _NativeSet.init(_:capacity:)(v10, result + 1, v9, v12);
    v14 = type metadata accessor for _NativeSet(0, v9, v12, v13);
    v15 = a3;
    v16 = a1;
    v17 = 1;
LABEL_8:
    result = _NativeSet.update(with:isUnique:)(v16, v17, v14, v15);
    *v4 = v20;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Set.update(with:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v5 = type metadata accessor for Set._Variant(0, *(a2 + 16), *(a2 + 24), a4);

  return a3(a1, v5);
}

void Set.remove(at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for Set._Variant(0, *(a4 + 16), *(a4 + 24), a4);

  Set._Variant.remove(at:)(a1, a2, a3 & 1, v9, a5);
}

void Set._Variant.remove(at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a4;
  v9 = a1;
  v11 = *(a4 + 16);
  v12 = *(v11 - 1);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    v51 = v6;
    v19 = a5;
    if (v18 < 0)
    {
      v20 = v18;
    }

    else
    {
      v20 = (v18 & 0xFFFFFFFFFFFFFF8);
    }

    if ((a3 & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v9 >= 0)
    {
      v9 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v21 = type metadata accessor for __CocoaSet.Index.Storage();
    if (swift_dynamicCastClass(v9, v21))
    {
      v22 = *(v9 + 24);
      if (*(v22 + 16) > a2)
      {
        v23 = *(v22 + 8 * a2 + 24);
        swift_unknownObjectRetain(v23);
        v18;
        _forceBridgeFromObjectiveC<A>(_:_:)(v23, v11, v15, v24);
        swift_unknownObjectRelease(v23);
        Set._Variant._migrateToNative(_:removing:)(v20, v15, v51, v19);
        v18;
        (*(v12 + 8))(v15, v11);
        return;
      }

LABEL_33:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_34:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v55 = v46 - v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v18);
  v27 = *v5;
  if (a3)
  {
    v50 = isUniquelyReferenced_nonNull_native;
    if (v9 >= 0)
    {
      v9 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v28 = type metadata accessor for __CocoaSet.Index.Storage();
    if (!swift_dynamicCastClass(v9, v28))
    {
      goto LABEL_34;
    }

    if (*(v27 + 36) != specialized static Hasher._hash(seed:_:)(0, *(v9 + 16)))
    {
      goto LABEL_28;
    }

    if (!swift_dynamicCastClass(v9, v28))
    {
      goto LABEL_34;
    }

    v49 = v5;
    v29 = *(v9 + 24);
    if (*(v29 + 16) <= a2)
    {
      goto LABEL_33;
    }

    v48 = a5;
    v30 = *(v29 + 8 * a2 + 24);
    v31 = swift_unknownObjectRetain(v30);
    _forceBridgeFromObjectiveC<A>(_:_:)(v31, v11, v55, v32);
    swift_unknownObjectRelease(v30);
    v33 = *(v27 + 40);
    v51 = v6;
    v34 = *(*(v6 + 24) + 32);
    v53 = *(v6 + 24);
    v35 = v34(v33, v11);
    v54 = v27;
    v36 = -1 << *(v27 + 32);
    v9 = v35 & ~v36;
    v52 = v27 + 56;
    if (((*(v27 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      (*(v12 + 8))(v55, v11);
      goto LABEL_28;
    }

    v37 = ~v36;
    v47 = v12;
    v40 = *(v12 + 16);
    v38 = v12 + 16;
    v39 = v40;
    v41 = *(v38 + 56);
    v42 = (v38 - 8);
    v46[1] = (v38 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v39(v15, *(v54 + 48) + v41 * v9, v11);
      v43 = (*(*(v53 + 8) + 8))(v15, v55, v11);
      v44 = *v42;
      (*v42)(v15, v11);
      if (v43)
      {
        break;
      }

      v9 = (v9 + 1) & v37;
      if (((*(v52 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        v44(v55, v11);
        goto LABEL_28;
      }
    }

    v44(v55, v11);
    a5 = v48;
    v5 = v49;
    v12 = v47;
    v6 = v51;
    v27 = v54;
    LOBYTE(isUniquelyReferenced_nonNull_native) = v50;
  }

  else if (v9 < 0 || 1 << *(v27 + 32) <= v9 || ((*(v27 + 8 * (v9 >> 6) + 56) >> v9) & 1) == 0 || *(v27 + 36) != a2)
  {
LABEL_28:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v56 = v27;
  *v5 = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    type metadata accessor for _NativeSet(0, v11, *(v6 + 24), v26);
    _NativeSet.copy()();
    v27 = v56;
  }

  (*(v12 + 32))(a5, *(v27 + 48) + *(v12 + 72) * v9, v11);
  type metadata accessor for _NativeSet(0, v11, *(v6 + 24), v45);
  _NativeSet._delete(at:)(v9);
  *v5 = v27;
}

Swift::Void __swiftcall Set.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  type metadata accessor for Set._Variant(0, *(v1 + 16), *(v1 + 24), v2);

  Set._Variant.removeAll(keepingCapacity:)(keepingCapacity);
}

Swift::Void __swiftcall Set._Variant.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v3 = *v2;
  if (keepingCapacity)
  {
    v4 = v1;
    v5 = *(v1 + 16);
    if ((v3 & 0xC000000000000001) != 0)
    {
      if (v3 < 0)
      {
        v6 = *v2;
      }

      else
      {
        v6 = (v3 & 0xFFFFFFFFFFFFFF8);
      }

      if ([v6 count] > 0)
      {
        v7 = [v6 count];
        v3;
        if (v7)
        {
          type metadata accessor for _SetStorage(0, v5, *(v4 + 24), v8);
          v9 = static _SetStorage.allocate(capacity:)(v7);
        }

        else
        {
          v9 = &_swiftEmptySetSingleton;
        }

        *v2 = v9;
      }
    }

    else if (*(v3 + 16))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
      v12 = *v2;
      *v2 = 0x8000000000000000;
      type metadata accessor for _NativeSet(0, v5, *(v4 + 24), v11);
      _NativeSet.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
      *v2 = v12;
    }
  }

  else
  {
    *v2;
    *v2 = &_swiftEmptySetSingleton;
  }
}

void Set.removeFirst()(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v6 = *v3;
  if ((*v3 & 0xC000000000000001) == 0)
  {
    if (*(v6 + 16))
    {
      goto LABEL_6;
    }

LABEL_14:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v6 < 0)
  {
    v7 = *v3;
  }

  else
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFF8);
  }

  if (![v7 count])
  {
    goto LABEL_14;
  }

LABEL_6:
  v8 = *v3;
  v9 = *(a1 + 16);
  v10 = *v3 & 0xC000000000000001;
  if (!v10)
  {
    v18 = 0;
    v19 = (v8 + 56);
    v20 = -1 << *(v8 + 32);
    v16 = -v20;
    v21 = (63 - v20) >> 6;
    while (1)
    {
      v23 = *v19++;
      v22 = v23;
      if (v23)
      {
        break;
      }

      v18 -= 64;
      if (!--v21)
      {
        goto LABEL_20;
      }
    }

    v16 = __clz(__rbit64(v22)) - v18;
LABEL_20:
    v17 = *(v8 + 36);
    goto LABEL_21;
  }

  if (v8 < 0)
  {
    v11 = *v3;
  }

  else
  {
    v11 = (v8 & 0xFFFFFFFFFFFFFF8);
  }

  v12 = [swift_unknownObjectRetain(v11) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v12 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (__OFADD__(8 * v12, 24))
  {
LABEL_25:
    __break(1u);
    return;
  }

  v14 = swift_bufferAllocate(v13, (8 * v12 + 24), 7uLL);
  v14[2] = v12;
  [v11 getObjects_];
  v8;
  v15 = type metadata accessor for __CocoaSet.Index.Storage();
  v16 = swift_allocObject(v15, 0x20, 7uLL);
  *(v16 + 16) = v11;
  *(v16 + 24) = v14;
  v8;
  v17 = 0;
LABEL_21:
  v24 = type metadata accessor for Set._Variant(0, v9, *(a1 + 24), a3);
  Set._Variant.remove(at:)(v16, v17, v10 != 0, v24, a2);

  sub_180615F30(v16, v17, v10 != 0);
}

__objc2_class **Set.init<A>(_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v54 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v52 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v12);
  v53 = &v51 - v13;
  v17 = type metadata accessor for Optional(0, v14, v15, v16);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v51 - v19;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v22 = v21;
  v55 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v61 = &v51 - v25;
  v26 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = (&v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v29, a1, a3);
  v30 = a4;
  v32 = type metadata accessor for Set(0, a2, a4, v31);
  if (swift_dynamicCast(&v62, v29, a3, v32, 6uLL, v33, v34, v35, v51))
  {
    (*(v26 + 8))(a1, a3);
  }

  else
  {
    v36 = (*(a5 + 40))(a3, a5);
    if (v36)
    {
      v38 = v36;
      type metadata accessor for _SetStorage(0, a2, a4, v37);
      v39 = static _SetStorage.allocate(capacity:)(v38);
    }

    else
    {
      v39 = &_swiftEmptySetSingleton;
    }

    v62 = v39;
    (*(a5 + 32))(a3, a5);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v22, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v41 = *(AssociatedConformanceWitness + 16);
    v59 = AssociatedConformanceWitness;
    v60 = v22;
    v58 = v41;
    (v41)(v22);
    v42 = v54;
    v43 = *(v54 + 48);
    v56 = v54 + 48;
    v57 = v43;
    v44 = v43(v20, 1, a2);
    v45 = v52;
    v46 = v53;
    if (v44 != 1)
    {
      v47 = *(v42 + 32);
      do
      {
        v47(v45, v20, a2);
        v49 = type metadata accessor for Set._Variant(0, a2, v30, v48);
        Set._Variant.insert(_:)(v46, v45, v49);
        (*(v42 + 8))(v46, a2);
        v58(v60, v59);
      }

      while (v57(v20, 1, a2) != 1);
    }

    (*(v55 + 8))(v61, v60);
  }

  return v62;
}

uint64_t Set.isSubset<A>(of:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v12 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Optional(0, v15, v15, v16);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v21 = &v45 - v20;
  v22 = v10 & 0xC000000000000001;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v45 = v10 & 0xC000000000000001;
    v46 = &v45 - v20;
    v23 = v12;
    if (v10 < 0)
    {
      v24 = v10;
    }

    else
    {
      v24 = (v10 & 0xFFFFFFFFFFFFFF8);
    }

    if ([v24 count])
    {
      v25 = [v24 count];
      v12 = v23;
      v22 = v45;
      v21 = v46;
      goto LABEL_8;
    }

LABEL_12:
    v32 = 1;
    return v32 & 1;
  }

  v25 = *(v10 + 16);
  if (!v25)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (v25 == 1)
  {
    v47 = v10;
    v26 = type metadata accessor for Set(0, a3, a5, v19);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, v26, v27);
    Collection.first.getter(v26, WitnessTable, v21);
    v29 = *(a3 - 1);
    if ((*(v29 + 48))(v21, 1, a3) == 1)
    {
      LODWORD(v43) = 0;
      v42 = 714;
      LOBYTE(v41) = 2;
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v30 = (*(a6 + 48))(v21, a4, a6);
    if (v30 == 2)
    {
      MEMORY[0x1EEE9AC00](v30, v31);
      v41 = a4;
      v42 = a6;
      v43 = *(a5 + 8);
      v44 = v21;
      v32 = Sequence.contains(where:)(partial apply for closure #1 in Sequence<>.contains(_:), (&v45 - 6), a4, a6);
    }

    else
    {
      v32 = v30;
    }

    (*(v29 + 8))(v21, a3);
  }

  else
  {
    (*(v12 + 16))(v14, a1, a4);
    v34 = type metadata accessor for Set(0, a3, a5, v33);
    if (swift_dynamicCast(&v47, v14, a4, v34, 6uLL, v35, v36, v37, v45))
    {
      v38 = v47;
      v32 = Set.isSubset(of:)(v47, v10, a3, a5);
      v38;
    }

    else
    {
      if (v22)
      {
        if (v10 < 0)
        {
          v39 = v10;
        }

        else
        {
          v39 = (v10 & 0xFFFFFFFFFFFFFF8);
        }

        v10;
        v10 = _NativeSet.init(_:capacity:)(v39, [v39 count], a3, a5);
      }

      else
      {
        v10;
      }

      v32 = _NativeSet.isSubset<A>(of:)(a1, v10, a3, a4, a5, a6);
      v10;
    }
  }

  return v32 & 1;
}

uint64_t Set.isSubset(of:)(uint64_t a1, int64_t a2, Class *a3, uint64_t a4)
{
  v99 = a4;
  v6 = a1;
  v7 = *(a3 - 1);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v96 = (&v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v100 = (&v73 - v11);
  v14 = type metadata accessor for Optional(0, v12, v12, v13);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v85 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v93 = (&v73 - v21);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = (&v73 - v23);
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v25 = a2;
    }

    else
    {
      v25 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v26 = [v25 count];
  }

  else
  {
    v26 = *(a2 + 16);
  }

  v90 = v6 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v27 = v6;
    }

    else
    {
      v27 = (v6 & 0xFFFFFFFFFFFFFF8);
    }

    if ([v27 count] < v26)
    {
      return 0;
    }
  }

  else if (*(v6 + 16) < v26)
  {
    return 0;
  }

  v76 = v14;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v29 = type metadata accessor for __CocoaSet.Iterator();
    v30 = swift_allocObject(v29, 0xE8, 7uLL);
    v81 = 0;
    v31 = 0;
    v94 = 0;
    *(v30 + 208) = v28;
    *(v30 + 216) = 0;
    *(v30 + 16) = 0u;
    *(v30 + 32) = 0u;
    *(v30 + 48) = 0u;
    *(v30 + 64) = 0u;
    *(v30 + 80) = 0u;
    *(v30 + 96) = 0u;
    *(v30 + 112) = 0u;
    *(v30 + 128) = 0u;
    *(v30 + 144) = 0u;
    *(v30 + 160) = 0u;
    *(v30 + 176) = 0u;
    *(v30 + 192) = 0u;
    *(v30 + 224) = 0;
    v32 = v30 | 0x8000000000000000;
  }

  else
  {
    v33 = -1 << *(a2 + 32);
    v31 = ~v33;
    v34 = *(a2 + 56);
    v81 = a2 + 56;
    v35 = -v33;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v94 = v36 & v34;
    v32 = a2;
  }

  v37 = v85;
  v38 = v32 & 0x7FFFFFFFFFFFFFFFLL;
  v88 = (v7 + 56);
  v75 = (v15 + 16);
  v74 = (v7 + 48);
  v73 = (v15 + 8);
  v87 = (v7 + 32);
  v80 = v31;
  v78 = (v31 + 64) >> 6;
  v39 = (v6 & 0xFFFFFFFFFFFFFF8);
  if (v6 < 0)
  {
    v39 = v6;
  }

  v83 = v39;
  v97 = v7 + 16;
  v98 = (v7 + 8);
  v79 = v99 + 32;
  v95 = v6 + 56;
  a2;
  v40 = 0;
  v84 = v24;
  v91 = v32;
  while (1)
  {
    v41 = v93;
    if ((v32 & 0x8000000000000000) == 0)
    {
      v42 = v94;
      v43 = v40;
      if (!v94)
      {
        v44 = v40;
        while (1)
        {
          v43 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (v43 >= v78)
          {
            goto LABEL_63;
          }

          v42 = *(v81 + 8 * v43);
          ++v44;
          if (v42)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_69:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_32:
      v89 = v40;
      v92 = (v42 - 1) & v42;
      (*(v7 + 16))(v24, *(v32 + 48) + *(v7 + 72) * (__clz(__rbit64(v42)) | (v43 << 6)), a3);
      (*(v7 + 56))(v24, 0, 1, a3);
      goto LABEL_44;
    }

    v45 = *(v38 + 216);
    if ((v45 & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    if (v45 != *(v38 + 224))
    {
      v47 = *(v38 + 24);
      if (!v47)
      {
LABEL_72:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v45 >> 60)
      {
        __break(1u);
LABEL_71:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_40;
    }

    v46 = [*(v38 + 208) countByEnumeratingWithState:v38 + 16 objects:v38 + 80 count:16];
    *(v38 + 224) = v46;
    if (!v46)
    {
      break;
    }

    *(v38 + 216) = 0;
    v47 = *(v38 + 24);
    if (!v47)
    {
      goto LABEL_72;
    }

    v45 = 0;
LABEL_40:
    v48 = (v47 + 8 * v45);
    if ((v48 & 7) != 0)
    {
      goto LABEL_71;
    }

    v89 = v40;
    v49 = *v48;
    *(v38 + 216) = v45 + 1;
    swift_unknownObjectRetain(v49);
    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      v101 = v49;
      swift_dynamicCast(v24, &v101, qword_1EEEAC710, a3, 7uLL, v50, v51, v52, v73);
      v53 = *v88;
    }

    else
    {
      v53 = *v88;
      (*v88)(v41, 1, 1, a3);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v49, a3, v41);
      (*v75)(v37, v41, v76);
      if ((*v74)(v37, 1, a3) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_unknownObjectRelease(v49);
      (*v73)(v41, v76);
      (*v87)(v24, v85, a3);
    }

    v53(v24, 0, 1, a3);
    v43 = v89;
    v92 = v94;
    v32 = v91;
LABEL_44:
    v54 = *v87;
    (*v87)(v100, v24, a3);
    if (v90)
    {
      if (_swift_isClassOrObjCExistentialType(a3, a3))
      {
        if (v86 != 8)
        {
          goto LABEL_69;
        }

        v55 = v100;
        v56 = *v100;
        v57 = *v98;
        swift_unknownObjectRetain(*v100);
        v58 = v55;
        v32 = v91;
        v57(v58, a3);
      }

      else
      {
        v70 = v96;
        v54(v96, v100, a3);
        v56 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v70, a3);
      }

      v59 = [v83 member_];
      swift_unknownObjectRelease(v56);
      if (!v59)
      {
        _sSh8IteratorV8_VariantOySS__GWOe_0(v32);
        return 0;
      }

      swift_unknownObjectRelease(v59);
      v40 = v43;
      v94 = v92;
      v24 = v84;
    }

    else
    {
      if (!*(v6 + 16))
      {
        v71 = v32;
        goto LABEL_61;
      }

      v77 = v38;
      v82 = v7;
      v60 = (*(v99 + 32))(*(v6 + 40), a3);
      v61 = -1 << *(v6 + 32);
      v62 = v60 & ~v61;
      if (((*(v95 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
      {
LABEL_60:
        v71 = v91;
LABEL_61:
        _sSh8IteratorV8_VariantOySS__GWOe_0(v71);
        (*v98)(v100, a3);
        return 0;
      }

      v63 = v6;
      v64 = ~v61;
      v65 = *(v82 + 72);
      v66 = *(v82 + 16);
      while (1)
      {
        v67 = v96;
        v66(v96, *(v63 + 48) + v65 * v62, a3);
        v68 = (*(*(v99 + 8) + 8))(v67, v100, a3);
        v69 = *v98;
        (*v98)(v67, a3);
        if (v68)
        {
          break;
        }

        v62 = (v62 + 1) & v64;
        if (((*(v95 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      v69(v100, a3);
      v40 = v43;
      v32 = v91;
      v94 = v92;
      v6 = v63;
      v7 = v82;
      v24 = v84;
      v37 = v85;
      v38 = v77;
    }
  }

  *(v38 + 216) = -1;
LABEL_63:
  (*v88)(v24, 1, 1, a3);
  _sSh8IteratorV8_VariantOySS__GWOe_0(v32);
  return 1;
}

uint64_t Set.isStrictSubset<A>(of:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, a1, v15);
  v17 = type metadata accessor for Set(0, a3, a5, v16);
  if (swift_dynamicCast(&v26, v13, a4, v17, 6uLL, v18, v19, v20, v25))
  {
    v21 = v26;
    v22 = Set.isStrictSubset(of:)(v26, v10, a3, a5);
    v21;
  }

  else
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      if (v10 < 0)
      {
        v23 = v10;
      }

      else
      {
        v23 = (v10 & 0xFFFFFFFFFFFFFF8);
      }

      v10;
      v10 = _NativeSet.init(_:capacity:)(v23, [v23 count], a3, a5);
    }

    else
    {
      v10;
    }

    v22 = _NativeSet.isStrictSubset<A>(of:)(a1, v10, a3, a4, a5, a6);
    v10;
  }

  return v22 & 1;
}

uint64_t Set.isStrictSubset(of:)(uint64_t a1, int64_t a2, Class *a3, uint64_t a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v9 = [v8 count];
    if ((a1 & 0xC000000000000001) != 0)
    {
LABEL_6:
      if (a1 < 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = (a1 & 0xFFFFFFFFFFFFFF8);
      }

      if (v9 < [v10 count])
      {
        goto LABEL_10;
      }

      return 0;
    }
  }

  else
  {
    v9 = *(a2 + 16);
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_6;
    }
  }

  if (v9 >= *(a1 + 16))
  {
    return 0;
  }

LABEL_10:

  return Set.isSubset(of:)(a1, a2, a3, a4);
}

uint64_t Set.isSuperset<A>(of:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v84 = *(a3 - 1);
  v85 = a2;
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v89 = (&v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v91 = (&v68 - v14);
  v17 = type metadata accessor for Optional(0, v15, v15, v16);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v68 - v19;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v22 = v21;
  v82 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v68 - v25;
  v27 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v24, v28);
  v30 = (&v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v30, a1, a4);
  v86 = a5;
  v32 = type metadata accessor for Set(0, a3, a5, v31);
  if (swift_dynamicCast(&v92, v30, a4, v32, 6uLL, v33, v34, v35, v68))
  {
    (*(v27 + 8))(a1, a4);
    v36 = v92;
    v37 = Set.isSubset(of:)(v85, v92, a3, v86);
    v36;
    return v37 & 1;
  }

  (*(a6 + 32))(a4, a6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a4, v22, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v39 = *(AssociatedConformanceWitness + 16);
  v80 = AssociatedConformanceWitness + 16;
  v81 = AssociatedConformanceWitness;
  v79 = v39;
  (v39)(v22);
  v40 = v84;
  v77 = *(v84 + 48);
  v78 = v84 + 48;
  v41 = v77(v20, 1, a3);
  v42 = v22;
  v43 = v26;
  v44 = v85;
  v45 = v86;
  if (v41 == 1)
  {
LABEL_4:
    (*(v82 + 8))(v43, v42);
    v37 = 1;
    return v37 & 1;
  }

  v46 = v40;
  v47 = *(v40 + 32);
  v74 = v85 & 0xC000000000000001;
  v75 = v47;
  if (v85 < 0)
  {
    v48 = v85;
  }

  else
  {
    v48 = (v85 & 0xFFFFFFFFFFFFFF8);
  }

  v90 = (v40 + 8);
  v72 = v86 + 32;
  v73 = v48;
  v76 = v40 + 32;
  v87 = v40 + 16;
  v88 = v85 + 56;
  v71 = v42;
  v70 = v26;
  v69 = v20;
  while (1)
  {
    v75(v91, v20, a3);
    if (!v74)
    {
      break;
    }

    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      if (v83 != 8)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v49 = v46;
      v50 = v91;
      v51 = *v91;
      v52 = *v90;
      swift_unknownObjectRetain(*v91);
      v52(v50, a3);
    }

    else
    {
      v49 = v46;
      v66 = v89;
      v75(v89, v91, a3);
      v51 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v66, a3);
    }

    v53 = [v73 member_];
    swift_unknownObjectRelease(v51);
    if (!v53)
    {
      goto LABEL_25;
    }

    swift_unknownObjectRelease(v53);
    v46 = v49;
    v45 = v86;
LABEL_22:
    v79(v42, v81);
    if (v77(v20, 1, a3) == 1)
    {
      goto LABEL_4;
    }
  }

  if (*(v44 + 16))
  {
    v54 = (*(v45 + 32))(*(v44 + 40), a3, v45);
    v55 = -1 << *(v44 + 32);
    v56 = v54 & ~v55;
    if ((*(v88 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
    {
      v85 = v90 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v57 = v46;
      v58 = v44;
      v59 = v45;
      v60 = ~v55;
      v61 = *(v57 + 72);
      v62 = *(v57 + 16);
      while (1)
      {
        v63 = v89;
        v62(v89, *(v58 + 48) + v61 * v56, a3);
        v64 = (*(*(v59 + 8) + 8))(v63, v91, a3);
        v65 = *v90;
        (*v90)(v63, a3);
        if (v64)
        {
          break;
        }

        v56 = (v56 + 1) & v60;
        if (((*(v88 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
        {
          v42 = v71;
          v43 = v70;
          v65(v91, a3);
          goto LABEL_25;
        }
      }

      v65(v91, a3);
      v45 = v59;
      v44 = v58;
      v46 = v84;
      v42 = v71;
      v43 = v70;
      v20 = v69;
      goto LABEL_22;
    }
  }

  (*v90)(v91, a3);
LABEL_25:
  (*(v82 + 8))(v43, v42);
  v37 = 0;
  return v37 & 1;
}

uint64_t Set.isStrictSuperset<A>(of:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v12 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v15 & 0xC000000000000001;
  if ((v15 & 0xC000000000000001) == 0)
  {
    if (*(v10 + 16))
    {
      goto LABEL_6;
    }

LABEL_9:
    v24 = 0;
    return v24 & 1;
  }

  if (v10 < 0)
  {
    v17 = v10;
  }

  else
  {
    v17 = (v10 & 0xFFFFFFFFFFFFFF8);
  }

  if (![v17 count])
  {
    goto LABEL_9;
  }

LABEL_6:
  (*(v12 + 16))(v14, a1, a4);
  v19 = type metadata accessor for Set(0, a3, a5, v18);
  if (swift_dynamicCast(&v28, v14, a4, v19, 6uLL, v20, v21, v22, v27))
  {
    v23 = v28;
    v24 = Set.isStrictSuperset(of:)(v28, v10, a3, a5);
    v23;
  }

  else
  {
    if (v16)
    {
      if (v10 < 0)
      {
        v25 = v10;
      }

      else
      {
        v25 = (v10 & 0xFFFFFFFFFFFFFF8);
      }

      v10;
      v10 = _NativeSet.init(_:capacity:)(v25, [v25 count], a3, a5);
    }

    else
    {
      v10;
    }

    v24 = _NativeSet.isStrictSuperset<A>(of:)(a1, v10, a3, a4, a5, a6);
    v10;
  }

  return v24 & 1;
}

uint64_t Set.isStrictSuperset(of:)(int64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v9 = [v8 count];
    if ((a1 & 0xC000000000000001) != 0)
    {
LABEL_6:
      if (a1 < 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = (a1 & 0xFFFFFFFFFFFFFF8);
      }

      if ([v10 count] < v9)
      {
        goto LABEL_10;
      }

      return 0;
    }
  }

  else
  {
    v9 = *(a2 + 16);
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(a1 + 16) >= v9)
  {
    return 0;
  }

LABEL_10:

  return Set.isSubset(of:)(a2, a1, a3, a4);
}

uint64_t Set.isDisjoint<A>(with:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, a1, v15);
  v17 = type metadata accessor for Set(0, a3, a5, v16);
  if (swift_dynamicCast(&v25, v13, a4, v17, 6uLL, v18, v19, v20, v24))
  {
    v21 = v25;
    v22 = Set.isDisjoint(with:)(v25, a2, a3, a5);
    v21;
  }

  else
  {
    v22 = Set._isDisjoint<A>(with:)(a1, a2, a3, a4, a5, a6);
  }

  return v22 & 1;
}

uint64_t Set.isDisjoint(with:)(int64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v108 = a4;
  v6 = a1;
  v7 = *(a3 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = (&v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v11);
  v109 = (&v82 - v12);
  v15 = type metadata accessor for Optional(0, v13, v13, v14);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v103 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v93 = (&v82 - v22);
  MEMORY[0x1EEE9AC00](v21, v23);
  v102 = (&v82 - v24);
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v25 = a2;
    }

    else
    {
      v25 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    if (![v25 count])
    {
      return 1;
    }
  }

  else if (!*(a2 + 16))
  {
    return 1;
  }

  v96 = v8;
  v26 = v6 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v27 = v6;
    }

    else
    {
      v27 = (v6 & 0xFFFFFFFFFFFFFF8);
    }

    if (![v27 count])
    {
      return 1;
    }

LABEL_15:
    v86 = v15;
    if ((a2 & 0xC000000000000001) != 0)
    {
      if (a2 < 0)
      {
        v28 = a2;
      }

      else
      {
        v28 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      v29 = [v28 count];
      if (v26)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v29 = *(a2 + 16);
      if (v26)
      {
LABEL_20:
        if (v6 < 0)
        {
          v30 = v6;
        }

        else
        {
          v30 = (v6 & 0xFFFFFFFFFFFFFF8);
        }

        v31 = [v30 count];
        goto LABEL_26;
      }
    }

    v31 = *(v6 + 16);
LABEL_26:
    if (v29 >= v31)
    {
      v32 = v6;
    }

    else
    {
      v32 = a2;
    }

    if (v29 >= v31)
    {
      v6 = a2;
    }

    if ((v32 & 0xC000000000000001) != 0)
    {
      if (v32 < 0)
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFFFFFFFF8;
      }

      v34 = type metadata accessor for __CocoaSet.Iterator();
      v35 = swift_allocObject(v34, 0xE8, 7uLL);
      v92 = 0;
      v36 = 0;
      v104 = 0;
      *(v35 + 208) = v33;
      *(v35 + 216) = 0;
      *(v35 + 16) = 0u;
      *(v35 + 32) = 0u;
      *(v35 + 48) = 0u;
      *(v35 + 64) = 0u;
      *(v35 + 80) = 0u;
      *(v35 + 96) = 0u;
      *(v35 + 112) = 0u;
      *(v35 + 128) = 0u;
      *(v35 + 144) = 0u;
      *(v35 + 160) = 0u;
      *(v35 + 176) = 0u;
      *(v35 + 192) = 0u;
      *(v35 + 224) = 0;
      v37 = v35 | 0x8000000000000000;
    }

    else
    {
      v38 = -1 << *(v32 + 32);
      v36 = ~v38;
      v39 = *(v32 + 56);
      v92 = v32 + 56;
      v40 = -v38;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v104 = v41 & v39;
      v37 = v32;
    }

    v42 = v102;
    v43 = v103;
    v101 = v37;
    v94 = v37 & 0x7FFFFFFFFFFFFFFFLL;
    v99 = (v7 + 56);
    v85 = (v16 + 16);
    v84 = (v7 + 48);
    v83 = (v16 + 8);
    v98 = (v7 + 32);
    v89 = v36;
    v90 = (v36 + 64) >> 6;
    v106 = v7 + 16;
    v97 = v6 & 0xC000000000000001;
    v44 = (v6 & 0xFFFFFFFFFFFFFF8);
    if (v6 < 0)
    {
      v44 = v6;
    }

    v95 = v44;
    v45 = (v7 + 8);
    v88 = v108 + 32;
    v105 = v6 + 56;
    v32;
    v107 = v6;
    v6;
    v46 = 0;
    while (1)
    {
      v47 = v104;
      v48 = v46;
      v49 = v101;
      if ((v101 & 0x8000000000000000) != 0)
      {
        v53 = v94;
        v54 = *(v94 + 216);
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_79;
        }

        if (v54 == *(v94 + 224))
        {
          v55 = [*(v94 + 208) countByEnumeratingWithState:v94 + 16 objects:v94 + 80 count:16];
          v53[28] = v55;
          if (!v55)
          {
            v53[27] = -1;
            v49 = v101;
LABEL_79:
            _sSh8IteratorV8_VariantOySS__GWOe_0(v49);
            v107;
            (*v99)(v42, 1, 1, a3);
            return 1;
          }

          v53[27] = 0;
          v56 = v53[3];
          if (!v56)
          {
            goto LABEL_89;
          }

          v54 = 0;
        }

        else
        {
          v56 = *(v94 + 24);
          if (!v56)
          {
LABEL_89:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          if (v54 >> 60)
          {
            __break(1u);
LABEL_88:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v57 = (v56 + 8 * v54);
        if ((v57 & 7) != 0)
        {
          goto LABEL_88;
        }

        v100 = v48;
        v52 = v47;
        v58 = *v57;
        v53[27] = v54 + 1;
        swift_unknownObjectRetain(v58);
        if (_swift_isClassOrObjCExistentialType(a3, a3))
        {
          v110 = v58;
          v62 = v99;
          swift_dynamicCast(v42, &v110, qword_1EEEAC710, a3, 7uLL, v59, v60, v61, v82);
          v63 = *v62;
        }

        else
        {
          v63 = *v99;
          (*v99)(v93, 1, 1, a3);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v58, a3, v93);
          v79 = v43;
          v80 = v86;
          (*v85)(v79, v93, v86);
          if ((*v84)(v103, 1, a3) == 1)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          swift_unknownObjectRelease(v58);
          (*v83)(v93, v80);
          v43 = v103;
          (*v98)(v42, v103, a3);
        }

        v63(v42, 0, 1, a3);
        v46 = v100;
        v47 = v52;
      }

      else
      {
        v50 = v104;
        if (!v104)
        {
          v51 = v46;
          while (1)
          {
            v46 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              break;
            }

            if (v46 >= v90)
            {
              goto LABEL_79;
            }

            v50 = *(v92 + 8 * v46);
            ++v51;
            if (v50)
            {
              goto LABEL_49;
            }
          }

          __break(1u);
LABEL_86:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_49:
        v100 = v48;
        v52 = (v50 - 1) & v50;
        (*(v7 + 16))(v42, *(v101 + 48) + *(v7 + 72) * (__clz(__rbit64(v50)) | (v46 << 6)), a3);
        (*(v7 + 56))(v42, 0, 1, a3);
      }

      v64 = *v98;
      (*v98)(v109, v42, a3);
      v104 = v52;
      if (v97)
      {
        if (_swift_isClassOrObjCExistentialType(a3, a3))
        {
          if (v96 != 8)
          {
            goto LABEL_86;
          }

          v65 = v109;
          v66 = *v109;
          v67 = *v45;
          swift_unknownObjectRetain(*v109);
          v68 = v65;
          v43 = v103;
          v67(v68, a3);
          v42 = v102;
        }

        else
        {
          v64(v10, v109, a3);
          v66 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v10, a3);
        }

        v69 = [v95 member_];
        swift_unknownObjectRelease(v66);
        if (v69)
        {
          swift_unknownObjectRelease(v69);
          _sSh8IteratorV8_VariantOySS__GWOe_0(v101);
          v107;
          return 0;
        }
      }

      else
      {
        v87 = v47;
        v70 = v107;
        if (v107[2])
        {
          v91 = v7;
          v71 = (*(v108 + 32))(v107[5], a3);
          v72 = -1 << *(v70 + 32);
          v73 = v71 & ~v72;
          if ((*(v105 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
          {
            v82 = v45 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v74 = ~v72;
            v75 = *(v91 + 72);
            v76 = *(v91 + 16);
            while (1)
            {
              v76(v10, v107[6] + v75 * v73, a3);
              v77 = (*(*(v108 + 8) + 8))(v10, v109, a3);
              v78 = *v45;
              (*v45)(v10, a3);
              if (v77)
              {
                break;
              }

              v73 = (v73 + 1) & v74;
              if (((*(v105 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
              {
                v42 = v102;
                goto LABEL_75;
              }
            }

            _sSh8IteratorV8_VariantOySS__GWOe_0(v101);
            v107;
            v78(v109, a3);
            return 0;
          }

          v78 = *v45;
LABEL_75:
          v78(v109, a3);
          v7 = v91;
          v43 = v103;
        }

        else
        {
          (*v45)(v109, a3);
        }
      }
    }
  }

  if (*(v6 + 16))
  {
    goto LABEL_15;
  }

  return 1;
}

uint64_t Set._isDisjoint<A>(with:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v74 = a1;
  v75 = a5;
  v10 = *(a3 - 1);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v14);
  v76 = (&v56 - v15);
  v18 = type metadata accessor for Optional(0, v16, v16, v17);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v61 = &v56 - v21;
  v22 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v71 = v26;
  v60 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v72 = &v56 - v28;
  v70 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v29 = a2;
    }

    else
    {
      v29 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    if ([v29 count])
    {
      goto LABEL_6;
    }

    return 1;
  }

  if (!*(a2 + 16))
  {
    return 1;
  }

LABEL_6:
  v59 = v11;
  (*(v22 + 16))(v25, v74, a4);
  v30 = v10;
  v31 = v72;
  (*(a6 + 32))(a4, a6);
  v32 = v71;
  v33 = v31;
  v34 = v30;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a4, v71, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v36 = *(AssociatedConformanceWitness + 16);
  v37 = v61;
  v68 = AssociatedConformanceWitness + 16;
  v69 = AssociatedConformanceWitness;
  v67 = v36;
  (v36)(v32);
  v38 = 1;
  v65 = *(v30 + 48);
  v66 = v30 + 48;
  if (v65(v37, 1, a3) == 1)
  {
    goto LABEL_31;
  }

  v39 = *(v30 + 32);
  v40 = (a2 & 0xFFFFFFFFFFFFFF8);
  if (a2 < 0)
  {
    v40 = a2;
  }

  v62 = v40;
  v63 = v39;
  v41 = (v30 + 8);
  v57 = v30;
  v58 = v75 + 32;
  v64 = v30 + 32;
  v73 = v30 + 16;
  v74 = a2 + 56;
  v42 = v59;
  v39(v76, v37, a3);
  while (v70)
  {
    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      if (v42 != 8)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v43 = v76;
      v44 = *v76;
      v45 = *v41;
      swift_unknownObjectRetain(*v76);
      v45(v43, a3);
      v32 = v71;
    }

    else
    {
      v63(v13, v76, a3);
      v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v13, a3);
    }

    v46 = [v62 member_];
    swift_unknownObjectRelease(v44);
    if (v46)
    {
      swift_unknownObjectRelease(v46);
      v38 = 0;
      v33 = v72;
      goto LABEL_31;
    }

LABEL_13:
    v33 = v72;
    v67(v32, v69);
    v38 = 1;
    if (v65(v37, 1, a3) == 1)
    {
      goto LABEL_31;
    }

    v63(v76, v37, a3);
  }

  if (!*(a2 + 16))
  {
    (*v41)(v76, a3);
    goto LABEL_13;
  }

  v47 = (*(v75 + 32))(*(a2 + 40), a3);
  v48 = -1 << *(a2 + 32);
  v49 = v47 & ~v48;
  if (((*(v74 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
  {
    v54 = *v41;
LABEL_28:
    v54(v76, a3);
    v34 = v57;
    goto LABEL_13;
  }

  v56 = v41 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v50 = ~v48;
  v51 = *(v34 + 72);
  v52 = *(v34 + 16);
  while (1)
  {
    v52(v13, *(a2 + 48) + v51 * v49, a3);
    v53 = (*(*(v75 + 8) + 8))(v13, v76, a3);
    v54 = *v41;
    (*v41)(v13, a3);
    if (v53)
    {
      break;
    }

    v49 = (v49 + 1) & v50;
    if (((*(v74 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
    {
      v42 = v59;
      v37 = v61;
      v32 = v71;
      goto LABEL_28;
    }
  }

  v54(v76, a3);
  v38 = 0;
  v32 = v71;
  v33 = v72;
LABEL_31:
  (*(v60 + 8))(v33, v32);
  return v38;
}

uint64_t Set.union<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v52 = a5;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v51 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v44 - v14;
  v18 = type metadata accessor for Optional(0, v16, v16, v17);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v44 - v20;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v23 = v22;
  v45 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v44 - v25;
  v53 = a2;
  v27 = v21;
  v28 = a3;
  (*(a6 + 32))(a4, a6);
  v29 = a6;
  v30 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v29, a4, v23, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v49 = *(AssociatedConformanceWitness + 16);
  v50 = AssociatedConformanceWitness;
  v49(v23);
  v32 = v10;
  v35 = *(v10 + 48);
  v34 = v10 + 48;
  v33 = v35;
  if (v35(v27, 1, v28) != 1)
  {
    v47 = *(v32 + 32);
    v48 = v32 + 32;
    v46 = (v32 + 8);
    do
    {
      v36 = v34;
      v37 = v30;
      v38 = v23;
      v39 = v51;
      v47(v51, v27, v28);
      v41 = type metadata accessor for Set._Variant(0, v28, v52, v40);
      v42 = v39;
      v23 = v38;
      v30 = v37;
      v34 = v36;
      Set._Variant.insert(_:)(v15, v42, v41);
      (*v46)(v15, v28);
      (v49)(v23, v50);
    }

    while (v33(v27, 1, v28) != 1);
  }

  (*(v45 + 8))(v30, v23);
  return v53;
}

uint64_t Set.formUnion<A>(_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v47 = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v46 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v10);
  v44 = &v41 - v11;
  v14 = type metadata accessor for Optional(0, v6, v12, v13);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v41 - v16;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v19 = v18;
  v42 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v41 - v21;
  (*(a4 + 32))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v19, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v25 = AssociatedConformanceWitness + 16;
  v24 = *(AssociatedConformanceWitness + 16);
  v48 = v22;
  v49 = v19;
  v45 = AssociatedConformanceWitness;
  v24(v19);
  v26 = v24;
  v27 = v7;
  v30 = *(v7 + 48);
  v28 = v7 + 48;
  v29 = v30;
  if (v30(v17, 1, v6) != 1)
  {
    v43 = *(v27 + 32);
    v31 = (v27 + 8);
    do
    {
      v32 = v26;
      v33 = v46;
      v43(v46, v17, v6);
      v35 = type metadata accessor for Set._Variant(0, v6, *(v47 + 24), v34);
      v36 = v28;
      v37 = v25;
      v38 = v44;
      Set._Variant.insert(_:)(v44, v33, v35);
      v39 = v38;
      v25 = v37;
      v28 = v36;
      (*v31)(v39, v6);
      v32(v49, v45);
      v26 = v32;
    }

    while (v29(v17, 1, v6) != 1);
  }

  return (*(v42 + 8))(v48, v49);
}

__objc2_class **Set.subtracting<A>(_:)(void (**a1)(uint64_t, unint64_t), uint64_t a2, Class *a3, Class *a4, uint64_t a5, int **a6)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v9 = a1;
    v10 = a6;
    v11 = a4;
    v12 = a2;
    a2;
    v13 = _NativeSet.init(_:capacity:)(v8, [v8 count], a3, a5);
    v12;
    a1 = v9;
    a4 = v11;
    a6 = v10;
    a2 = v13;
  }

  return _NativeSet.subtracting<A>(_:)(a1, a2, a3, a4, a5, a6);
}

id Set._subtract<A>(_:)(char *a1, uint64_t a2, Class *a3, swift *a4)
{
  v5 = v4;
  v48 = a2;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v56 = a1;
  v57 = v9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for Optional(0, v8, v12, v13);
  v50 = *(v54 - 8);
  v15 = MEMORY[0x1EEE9AC00](v54, v14);
  v49 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v47 - v19;
  v21 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v18, v22);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a4;
  v26 = a4;
  v27 = a3;
  swift_getAssociatedTypeWitness(0, v26, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v58 = v28;
  v47 = *(v28 - 8);
  result = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v47 - v31;
  v55 = v5;
  v33 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v33 < 0)
    {
      v34 = *v5;
    }

    else
    {
      v34 = (v33 & 0xFFFFFFFFFFFFFF8);
    }

    result = [v34 count];
    if (!result)
    {
      return result;
    }
  }

  else if (!*(v33 + 16))
  {
    return result;
  }

  (*(v21 + 16))(v24, v56, v27);
  (*(v25 + 4))(v27, v25);
  v35 = v58;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v25, v27, v58, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v37 = *(AssociatedConformanceWitness + 16);
  v56 = v32;
  v52 = v37;
  v53 = AssociatedConformanceWitness;
  (v37)(v35);
  v38 = v57;
  v39 = *(v57 + 48);
  v40 = v39(v20, 1, v8);
  v42 = v48;
  v41 = v49;
  if (v40 != 1)
  {
    v43 = *(v38 + 32);
    ++v50;
    v51 = v43;
    v57 = v38 + 32;
    v44 = (v38 + 8);
    do
    {
      v51(v11, v20, v8);
      v46 = type metadata accessor for Set._Variant(0, v8, *(v42 + 24), v45);
      Set._Variant.remove(_:)(v11, v46, v41);
      (*v50)(v41, v54);
      (*v44)(v11, v8);
      v52(v58, v53);
    }

    while (v39(v20, 1, v8) != 1);
  }

  return (*(v47 + 8))(v56, v58);
}