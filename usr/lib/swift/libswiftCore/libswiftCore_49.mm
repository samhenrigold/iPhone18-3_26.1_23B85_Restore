uint64_t closure #1 in _StringGuts._foreignNextWordIndex(startingAt:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= a1)
  {
    return 0;
  }

  v8._rawBits = _StringGuts.validateScalarIndex(_:)((a1 << 16))._rawBits;
  if ((a3 & 0x1000000000000000) != 0)
  {
    value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v8._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
    v13._rawBits = _StringGuts.validateScalarIndex(_:)((a1 << 16))._rawBits;
    String.UnicodeScalarView._foreignIndex(after:)(v13);
  }

  else
  {
    v10 = v8._rawBits >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v15 = a2;
      v16 = a3 & 0xFFFFFFFFFFFFFFLL;
      value = _decodeScalar(_:startingAt:)(&v15, v9._rawBits, v10);
      _StringGuts.validateScalarIndex(_:)((a1 << 16))._rawBits;
      v15 = a2;
      v16 = a3 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v11 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v14 = v8._rawBits >> 16;
        v11 = _StringObject.sharedUTF8.getter(a2, a3);
        v10 = v14;
      }

      value = _decodeScalar(_:startingAt:)(v11, v9._rawBits, v10);
      _StringGuts.validateScalarIndex(_:)((a1 << 16))._rawBits;
      if ((a2 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter(a2, a3);
      }
    }
  }

  return value;
}

Swift::Int __swiftcall _StringGuts._foreignPreviousWordIndex(endingAt:)(Swift::Int endingAt)
{
  v3 = v2;
  v4 = v1;
  v2;
  v6 = specialized _StringGuts.previousWordBoundary(endingAt:previousScalar:)(endingAt, v4, v3);
  v3;
  return v6;
}

uint64_t _decodeScalar(_:endingAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a1 - 1;
  do
  {
    v5 = *(v4 + a3) & 0xC0;
    ++v3;
    --v4;
  }

  while (v5 == 128);
  return _decodeScalar(_:startingAt:)(a1, a2, a3 - v3);
}

uint64_t closure #1 in _StringGuts._foreignPreviousWordIndex(endingAt:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  v5._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)((a1 << 16))._rawBits;
  if (!(v5._rawBits >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    rawBits = String.UnicodeScalarView._foreignIndex(before:)(v5)._rawBits;
    v18._rawBits = _StringGuts.validateScalarIndex(_:)(rawBits)._rawBits;
    LODWORD(result) = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v18._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v22 = a2;
      v23 = a3 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v22 + (v5._rawBits >> 16) - 1) & 0xC0) == 0x80)
      {
        v12 = &v22 + (v5._rawBits >> 16) - 2;
        v10 = 1;
        do
        {
          ++v10;
          v13 = *v12--;
        }

        while ((v13 & 0xC0) == 0x80);
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v19 = v5._rawBits;
        v6 = _StringObject.sharedUTF8.getter(a2, a3);
        v5._rawBits = v19;
      }

      v7 = 0;
      v8 = v6 + (v5._rawBits >> 16) - 1;
      do
      {
        v9 = *(v8 + v7--) & 0xC0;
      }

      while (v9 == 128);
      v10 = -v7;
    }

    v15._rawBits = _StringGuts.validateScalarIndex(_:)(((v5._rawBits - (v10 << 16)) & 0xFFFFFFFFFFFF0000 | 5))._rawBits >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v22 = a2;
      v23 = a3 & 0xFFFFFFFFFFFFFFLL;
      v16 = &v22;
    }

    else if ((a2 & 0x1000000000000000) != 0)
    {
      v16 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v20 = a3;
      v21 = v15._rawBits;
      v16 = _StringObject.sharedUTF8.getter(a2, v20);
      v15._rawBits = v21;
    }

    LODWORD(result) = _decodeScalar(_:startingAt:)(v16, v14._rawBits, v15._rawBits);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _WordQuestion(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (*(a1 + 16) == 1)
  {
    if (v3 | v2)
    {
      if (v3 ^ 1 | v2)
      {
        if (*(a2 + 16) && __PAIR128__(v4, v5) >= 2)
        {
          return 1;
        }
      }

      else if (*(a2 + 16) && !(v5 ^ 1 | v4))
      {
        return 1;
      }

      return 0;
    }

    v8 = v5 | v4;
    return *(a2 + 16) && v8 == 0;
  }

  else
  {
    v6 = (v3 == v5) & ~*(a2 + 16);
    if (v2 == v4)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }
}

Swift::UInt64 Substring.init(_:)(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, unint64_t a4)
{
  a4;
  v8._rawBits = a1;
  v9._rawBits = a2;
  rawBits = _StringGuts.validateScalarRange(_:)(v8, v9, a3, a4)._rawBits;
  a4;
  return rawBits;
}

uint64_t Substring.init<A>(_:)(uint64_t *a1, Class *a2)
{
  v4 = *(a2 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v24 - v10;
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (&v24 - v13);
  if (v15 != &type metadata for String)
  {
    if (a2 == &type metadata for Substring)
    {
      return *a1;
    }

    if (a2 == &unk_1EEEBBE38)
    {
      return specialized Substring.init<A>(_:)(*a1);
    }

    v16 = v4[2];
    v16(&v24 - v13, a1, a2);
    if (swift_dynamicCast(&v24, v14, a2, &type metadata for String, 6uLL, v17, v18, v19, v24))
    {
      (v4[1])(a1, a2);
    }

    else
    {
      v16(v11, a1, a2);
      if (swift_dynamicCast(&v24, v11, a2, &type metadata for Substring, 6uLL, v21, v22, v23, v24))
      {
        (v4[1])(a1, a2);
        return v24;
      }

      (v4[4])(v7, a1, a2);
      String.init<A>(_:)(v7, a2);
    }
  }

  return 15;
}

Swift::String::Index __swiftcall Substring.index(after:)(Swift::String::Index after)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = _StringGuts.validateCharacterIndex(_:in:)(after._rawBits, v1, v2, v3, v4);
  v10 = (v9 >> 8) & 0x3F;
  v11 = v9 >> 16;
  v12 = v7 >> 16;
  if (!v10)
  {
    if (v11 == v12)
    {
      v10 = 0;
      goto LABEL_20;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      goto LABEL_48;
    }

    if ((v5 & 0x2000000000000000) != 0)
    {
      v31 = v6;
      v32 = v5 & 0xFFFFFFFFFFFFFFLL;
      if (v11 + 1 != (HIBYTE(v5) & 0xF))
      {
        v16 = *(&v31 + v11);
        if (v16 == 2573 || (v16 & 0x80808080) != 0)
        {
LABEL_48:
          v10 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v11);
          goto LABEL_20;
        }
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v13 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v14 = v6 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = _StringObject.sharedUTF8.getter(v6, v5);
      }

      if (v11 + 1 != v14)
      {
        if (!v13)
        {
          goto LABEL_30;
        }

        v15 = *&v13[v11];
        if (v15 == 2573 || (v15 & 0x80808080) != 0)
        {
          goto LABEL_48;
        }
      }
    }

    v10 = 1;
  }

LABEL_20:
  v18 = v10 + v11;
  if (v12 < v10 + v11)
  {
    v18 = v7 >> 16;
  }

  v19 = v18 << 16;
  v20 = v18 & 0xFFFFFFFFFFFFLL;
  v21 = v5 & 0x1000000000000000;
  if ((v18 & 0xFFFFFFFFFFFFLL) == v12)
  {
    v22 = 0;
LABEL_39:
    v19 |= v22 << 8;
    goto LABEL_40;
  }

  if (!v21)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      v31 = v6;
      v32 = v5 & 0xFFFFFFFFFFFFFFLL;
      if (v20 + 1 == (HIBYTE(v5) & 0xF))
      {
        goto LABEL_38;
      }

      v23 = &v31;
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v23 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v24 = v6 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v18 & 0xFFFFFFFFFFFFLL;
        v23 = _StringObject.sharedUTF8.getter(v6, v5);
        v20 = v30;
      }

      if (v20 + 1 == v24)
      {
        goto LABEL_38;
      }

      if (!v23)
      {
LABEL_30:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v25 = *(v23 + v20);
    if (v25 == 2573 || (v25 & 0x80808080) != 0)
    {
      goto LABEL_46;
    }

LABEL_38:
    v21 = 0;
    v22 = 1;
    goto LABEL_39;
  }

LABEL_46:
  v22 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v20);
  if (v22 <= 63)
  {
    goto LABEL_39;
  }

LABEL_40:
  v27 = (v6 & 0x800000000000000) != 0 || v21 == 0;
  v28 = 4;
  if (!v27)
  {
    v28 = 8;
  }

  return (v8 & 2 | v28 | v19 | 1);
}

Swift::String::Index __swiftcall Substring.index(before:)(Swift::String::Index before)
{
  v5 = v1;
  v6 = _StringGuts.validateInclusiveCharacterIndex(_:in:)(before._rawBits, v1, v2, v3, v4);
  if (v5 >> 14 >= v6 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return Substring._uncheckedIndex(before:)(v6);
}

Swift::String::Index __swiftcall Substring._uncheckedIndex(before:)(Swift::String::Index before)
{
  v5 = v4;
  v6 = v3;
  v7 = v1;
  rawBits = before._rawBits;
  if ((v1 ^ before._rawBits) >= 0x4000)
  {
    v10 = _StringGuts._opaqueCharacterStride(endingAt:in:)(before._rawBits >> 16, v1 >> 16, v2, v3, v4);
    rawBits -= v10 << 16;
    v9 = v10 << 8;
    if (v10 > 63)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 4;
  if (((v5 >> 60) & ((v6 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 8;
  }

  return (v7 & 2 | v9 | rawBits & 0xFFFFFFFFFFFF0000 | v11 | 1);
}

Swift::String::Index __swiftcall Substring.index(_:offsetBy:)(Swift::String::Index _, Swift::Int offsetBy)
{
  v6 = v5;
  v7 = v4;
  v9._rawBits = _._rawBits;
  v10 = (v5 & 0x1000000000000000) == 0 || (v4 & 0x800000000000000) != 0;
  v11 = _._rawBits & 0xC;
  v12 = 4 << v10;
  v13 = v3 >> 14;
  if ((_._rawBits & 2) == 0 || v11 == v12)
  {
    if (v11 == v12)
    {
      v44 = v2;
      v45 = v3;
      v46._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
      v3 = v45;
      v2 = v44;
      v9._rawBits = v46._rawBits;
    }

    v14 = v2 >> 14;
    if (v9._rawBits >> 14 < v2 >> 14 || v13 < v9._rawBits >> 14)
    {
LABEL_65:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v9._rawBits)
    {
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v47 = v2;
      v48 = v3;
      v49._rawBits = _StringGuts.scalarAlignSlow(_:)(v9)._rawBits;
      v3 = v48;
      v2 = v47;
      v9._rawBits = v9._rawBits & 0xC | v49._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      if ((v47 & 2) != 0)
      {
LABEL_15:
        if ((v9._rawBits & 2) != 0)
        {
          goto LABEL_19;
        }
      }
    }

    if (v9._rawBits >> 14 != v14 && v9._rawBits >> 14 != v13)
    {
      rawBits = v9._rawBits;
      v16 = v2;
      v17 = v3;
      v18 = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(rawBits, v2, v3, v7, v6);
      v3 = v17;
      v2 = v16;
      v9._rawBits = v18;
    }

    goto LABEL_19;
  }

  if (_._rawBits >> 14 < v2 >> 14 || v13 < _._rawBits >> 14)
  {
    goto LABEL_65;
  }

LABEL_19:
  if (offsetBy < 0)
  {
    v36 = 0;
    v37 = v2 >> 14;
    v38 = v2 >> 16;
    v39 = 4;
    if (((v6 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
    {
      v39 = 8;
    }

    v40 = v2 & 2 | v39;
    do
    {
      if (v37 >= v9._rawBits >> 14)
      {
LABEL_74:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      --v36;
      v41 = _StringGuts._opaqueCharacterStride(endingAt:in:)(v9._rawBits >> 16, v38, v2, v7, v6);
      v42 = v41 << 8;
      if (v41 > 63)
      {
        v42 = 0;
      }

      v9._rawBits = v40 | v42 | (v9._rawBits - (v41 << 16)) & 0xFFFFFFFFFFFF0000 | 1;
    }

    while (v36 > offsetBy);
  }

  else if (offsetBy)
  {
    v19 = v3 >> 16;
    v20 = HIBYTE(v6) & 0xF;
    v21 = 4;
    if (((v6 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
    {
      v21 = 8;
    }

    v22 = v2 & 2 | v21;
    while (1)
    {
      if (v13 <= v9._rawBits >> 14)
      {
        goto LABEL_74;
      }

      v23 = (v9._rawBits >> 8) & 0x3F;
      v24 = v9._rawBits >> 16;
      if (!v23)
      {
        break;
      }

LABEL_40:
      v28 = v23 + v24;
      if (v19 < v23 + v24)
      {
        v28 = v19;
      }

      v29 = v28 << 16;
      v30 = v28 & 0xFFFFFFFFFFFFLL;
      if ((v28 & 0xFFFFFFFFFFFFLL) != v19)
      {
        if ((v6 & 0x1000000000000000) != 0)
        {
          goto LABEL_62;
        }

        if ((v6 & 0x2000000000000000) != 0)
        {
          v55 = v7;
          v56 = v6 & 0xFFFFFFFFFFFFFFLL;
          if (v30 + 1 != v20)
          {
            v34 = *(&v55 + v30);
LABEL_53:
            if (v34 == 2573 || (v34 & 0x8080) != 0)
            {
LABEL_62:
              v51 = v20;
              v31 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v30);
              v20 = v51;
              if (v31 > 63)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }
          }
        }

        else
        {
          v32 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v33 = v7 & 0xFFFFFFFFFFFFLL;
          if ((v7 & 0x1000000000000000) == 0)
          {
            v50 = v30;
            v53 = v20;
            v32 = _StringObject.sharedUTF8.getter(v7, v6);
            v30 = v50;
            v20 = v53;
          }

          if (v30 + 1 != v33)
          {
            if (!v32)
            {
LABEL_77:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v34 = *&v32[v30];
            goto LABEL_53;
          }
        }

        v31 = 1;
        goto LABEL_59;
      }

      v31 = 0;
LABEL_59:
      v29 |= v31 << 8;
LABEL_60:
      v9._rawBits = v22 | v29 | 1;
      if (!--offsetBy)
      {
        return v9;
      }
    }

    if (v24 == v19)
    {
      v23 = 0;
      goto LABEL_40;
    }

    if ((v6 & 0x1000000000000000) == 0)
    {
      if ((v6 & 0x2000000000000000) == 0)
      {
        v25 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v26 = v7 & 0xFFFFFFFFFFFFLL;
        if ((v7 & 0x1000000000000000) == 0)
        {
          v54 = v20;
          v25 = _StringObject.sharedUTF8.getter(v7, v6);
          v20 = v54;
        }

        if (v24 + 1 == v26)
        {
LABEL_39:
          v23 = 1;
          goto LABEL_40;
        }

        if (!v25)
        {
          goto LABEL_77;
        }

        v27 = *&v25[v24];
        if (v27 == 2573)
        {
          goto LABEL_64;
        }

        goto LABEL_38;
      }

      v55 = v7;
      v56 = v6 & 0xFFFFFFFFFFFFFFLL;
      if (v24 + 1 == v20)
      {
        goto LABEL_39;
      }

      v27 = *(&v55 + v24);
      if (v27 != 2573)
      {
LABEL_38:
        if ((v27 & 0x80808080) == 0)
        {
          goto LABEL_39;
        }
      }
    }

LABEL_64:
    v52 = v20;
    v23 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v24);
    v20 = v52;
    goto LABEL_40;
  }

  return v9;
}

Swift::String::Index_optional __swiftcall Substring.index(_:offsetBy:limitedBy:)(Swift::String::Index _, Swift::Int offsetBy, Swift::String::Index limitedBy)
{
  v7 = v6;
  v8 = v5;
  v10 = (v5 >> 59) & 1;
  if ((v6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  if ((limitedBy._rawBits & 0xC) == 4 << v10)
  {
    rawBits = _._rawBits;
    v57 = v3;
    v58 = v4;
    v59._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(limitedBy)._rawBits;
    v4 = v58;
    v3 = v57;
    limitedBy._rawBits = v59._rawBits;
    _._rawBits = rawBits;
  }

  if ((_._rawBits & 0xC) == v11)
  {
    v60 = _._rawBits;
    v61 = limitedBy._rawBits;
    v62 = v3;
    v63 = v4;
    v64 = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
    v65._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v60)._rawBits;
    limitedBy._rawBits = v61;
    v4 = v63;
    v3 = v62;
    v12._rawBits = v65._rawBits;
    _._rawBits = v64;
  }

  else
  {
    if ((_._rawBits & 2) != 0)
    {
      if (_._rawBits >> 14 >= v3 >> 14)
      {
        v12._rawBits = _._rawBits;
        if (v4 >> 14 >= _._rawBits >> 14)
        {
          goto LABEL_18;
        }
      }

LABEL_66:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v12._rawBits = _._rawBits;
  }

  v13 = v3 >> 14;
  if (v12._rawBits >> 14 < v3 >> 14)
  {
    goto LABEL_66;
  }

  v14 = v4 >> 14;
  if (v4 >> 14 < v12._rawBits >> 14)
  {
    goto LABEL_66;
  }

  if (v12._rawBits)
  {
    if ((v3 & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v66 = _._rawBits;
    v67 = limitedBy._rawBits;
    v68 = v3;
    v69 = v4;
    v70._rawBits = _StringGuts.scalarAlignSlow(_:)(v12)._rawBits;
    limitedBy._rawBits = v67;
    v4 = v69;
    v3 = v68;
    v71 = v70._rawBits;
    _._rawBits = v66;
    v12._rawBits = v12._rawBits & 0xC | v71 & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((v68 & 2) != 0)
    {
LABEL_12:
      if ((v12._rawBits & 2) != 0)
      {
        goto LABEL_18;
      }
    }
  }

  if (v12._rawBits >> 14 != v13 && v12._rawBits >> 14 != v14)
  {
    v15 = _._rawBits;
    v16 = v12._rawBits;
    v17 = limitedBy._rawBits;
    v18 = v3;
    v19 = v4;
    v20 = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(v16, v3, v4, v8, v7);
    limitedBy._rawBits = v17;
    v4 = v19;
    v3 = v18;
    v12._rawBits = v20;
    _._rawBits = v15;
  }

LABEL_18:
  v21 = limitedBy._rawBits >> 14;
  v22 = _._rawBits >> 14;
  if (offsetBy < 0)
  {
    v45 = 0;
    v46 = v3 >> 14;
    v47 = v3 >> 16;
    v48 = 4;
    if (((v7 >> 60) & ((v8 & 0x800000000000000) == 0)) != 0)
    {
      v48 = 8;
    }

    v49 = v3 & 2 | v48;
    while (1)
    {
      v50 = v12._rawBits >> 14;
      if (v22 >= v21 && v21 >= v50)
      {
        break;
      }

      if (v46 >= v50)
      {
LABEL_84:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      --v45;
      v51 = _StringGuts._opaqueCharacterStride(endingAt:in:)(v12._rawBits >> 16, v47, limitedBy._rawBits, v8, v7);
      v52 = v51 << 8;
      if (v51 > 63)
      {
        v52 = 0;
      }

      v53 = (v12._rawBits - (v51 << 16)) & 0xFFFFFFFFFFFF0000 | v52;
      v12._rawBits = v49 | v53 | 1;
      if (v45 <= offsetBy)
      {
        if (v22 < v21 || v53 >> 14 >= v21)
        {
          goto LABEL_82;
        }

        break;
      }
    }
  }

  else
  {
    if (offsetBy)
    {
      v23 = v4 >> 14;
      v24 = v4 >> 16;
      v25 = HIBYTE(v7) & 0xF;
      v26 = v7 & 0xFFFFFFFFFFFFFFLL;
      v27 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v28 = 4;
      if (((v7 >> 60) & ((v8 & 0x800000000000000) == 0)) != 0)
      {
        v28 = 8;
      }

      v29 = v3 & 2 | v28;
      while (1)
      {
        v30 = v12._rawBits >> 14;
        if (v21 >= v22 && v30 >= v21)
        {
          goto LABEL_81;
        }

        if (v30 >= v23)
        {
          goto LABEL_84;
        }

        v31 = (v12._rawBits >> 8) & 0x3F;
        v32 = v12._rawBits >> 16;
        if (!v31)
        {
          break;
        }

LABEL_41:
        v36 = v31 + v32;
        if (v24 < v31 + v32)
        {
          v36 = v24;
        }

        v37 = v36 << 16;
        v38 = v36 & 0xFFFFFFFFFFFFLL;
        if ((v36 & 0xFFFFFFFFFFFFLL) != v24)
        {
          if ((v7 & 0x1000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if ((v7 & 0x2000000000000000) != 0)
          {
            v85 = v8;
            v86 = v26;
            if (v38 + 1 != v25)
            {
              v42 = *(&v85 + v38);
LABEL_54:
              if (v42 == 2573 || (v42 & 0x8080) != 0)
              {
LABEL_63:
                v73 = v27;
                v77 = v26;
                v81 = v25;
                v39 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v38);
                v27 = v73;
                v26 = v77;
                v25 = v81;
                if (v39 > 63)
                {
                  goto LABEL_61;
                }

                goto LABEL_60;
              }
            }
          }

          else
          {
            v40 = v27;
            v41 = v8 & 0xFFFFFFFFFFFFLL;
            if ((v8 & 0x1000000000000000) == 0)
            {
              v72 = v38;
              v75 = v27;
              v79 = v26;
              v83 = v25;
              v44 = _StringObject.sharedUTF8.getter(v8, v7);
              v27 = v75;
              v26 = v79;
              v25 = v83;
              v40 = v44;
              v38 = v72;
            }

            if (v38 + 1 != v41)
            {
              if (!v40)
              {
LABEL_88:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v42 = *&v40[v38];
              goto LABEL_54;
            }
          }

          v39 = 1;
          goto LABEL_60;
        }

        v39 = 0;
LABEL_60:
        v37 |= v39 << 8;
LABEL_61:
        v12._rawBits = v29 | v37 | 1;
        if (!--offsetBy)
        {
          goto LABEL_67;
        }
      }

      if (v32 == v24)
      {
        v31 = 0;
        goto LABEL_41;
      }

      if ((v7 & 0x1000000000000000) == 0)
      {
        if ((v7 & 0x2000000000000000) == 0)
        {
          v33 = v27;
          v34 = v8 & 0xFFFFFFFFFFFFLL;
          if ((v8 & 0x1000000000000000) == 0)
          {
            v80 = v26;
            v84 = v25;
            v76 = v27;
            v33 = _StringObject.sharedUTF8.getter(v8, v7);
            v27 = v76;
            v26 = v80;
            v25 = v84;
          }

          if (v32 + 1 == v34)
          {
LABEL_40:
            v31 = 1;
            goto LABEL_41;
          }

          if (!v33)
          {
            goto LABEL_88;
          }

          v35 = *&v33[v32];
          if (v35 == 2573)
          {
            goto LABEL_65;
          }

          goto LABEL_39;
        }

        v85 = v8;
        v86 = v26;
        if (v32 + 1 == v25)
        {
          goto LABEL_40;
        }

        v35 = *(&v85 + v32);
        if (v35 != 2573)
        {
LABEL_39:
          if ((v35 & 0x80808080) == 0)
          {
            goto LABEL_40;
          }
        }
      }

LABEL_65:
      v74 = v27;
      v78 = v26;
      v82 = v25;
      v31 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v32);
      v27 = v74;
      v26 = v78;
      v25 = v82;
      goto LABEL_41;
    }

LABEL_67:
    if (v21 < v22 || v21 >= v12._rawBits >> 14)
    {
LABEL_82:
      v54 = 0;
      goto LABEL_83;
    }
  }

LABEL_81:
  v12._rawBits = 0;
  v54 = 1;
LABEL_83:
  v55 = v12._rawBits;
  result.value._rawBits = v55;
  result.is_nil = v54;
  return result;
}

Swift::Int __swiftcall Substring.distance(from:to:)(Swift::String::Index from, Swift::String::Index to)
{
  v6 = v5;
  v7 = v4;
  rawBits = from._rawBits;
  v9 = (v5 & 0x1000000000000000) == 0 || (v4 & 0x800000000000000) != 0;
  v10 = from._rawBits & 0xC;
  v11 = 4 << v9;
  v12 = v3 >> 14;
  if ((from._rawBits & 2) == 0 || v10 == v11)
  {
    if (v10 == v11)
    {
      goto LABEL_93;
    }

    goto LABEL_10;
  }

  if (from._rawBits >> 14 < v2 >> 14 || v12 < from._rawBits >> 14)
  {
LABEL_78:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_18:
  v19 = to._rawBits & 0xC;
  if ((to._rawBits & 2) == 0 || v19 == v11)
  {
    if (v19 == v11)
    {
      v63 = v2;
      v64 = v3;
      v65._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(to)._rawBits;
      v3 = v64;
      v2 = v63;
      to._rawBits = v65._rawBits;
    }

    v20 = v2 >> 14;
    if (to._rawBits >> 14 < v2 >> 14 || v12 < to._rawBits >> 14)
    {
      goto LABEL_78;
    }

    if (to._rawBits)
    {
      if ((v2 & 2) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v66 = to._rawBits;
      v67 = v2;
      v68 = v3;
      v69._rawBits = _StringGuts.scalarAlignSlow(_:)(to)._rawBits;
      v3 = v68;
      v2 = v67;
      to._rawBits = v66 & 0xC | v69._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      if ((v67 & 2) != 0)
      {
LABEL_29:
        if ((to._rawBits & 2) != 0)
        {
          goto LABEL_33;
        }
      }
    }

    if (to._rawBits >> 14 != v20 && to._rawBits >> 14 != v12)
    {
      v21 = v2;
      v22 = v3;
      v23 = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(to._rawBits, v2, v3, v7, v6);
      v3 = v22;
      v2 = v21;
      to._rawBits = v23;
    }

    goto LABEL_33;
  }

  if (to._rawBits >> 14 < v2 >> 14 || v12 < to._rawBits >> 14)
  {
    goto LABEL_78;
  }

LABEL_33:
  v24 = rawBits >> 14;
  v25 = to._rawBits >> 14;
  if (rawBits >> 14 < to._rawBits >> 14)
  {
    v11 = 0;
    v26 = v3 >> 16;
    v27 = HIBYTE(v6) & 0xF;
    v28 = v6 & 0xFFFFFFFFFFFFFFLL;
    v29 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if (((v6 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
    {
      v30 = 8;
    }

    else
    {
      v30 = 4;
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        v54._rawBits = rawBits;
        v55 = to._rawBits;
        v56 = v2;
        v57 = v3;
        v58._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v54)._rawBits;
        to._rawBits = v55;
        v3 = v57;
        v2 = v56;
        rawBits = v58._rawBits;
LABEL_10:
        v13 = v2 >> 14;
        if (rawBits >> 14 < v2 >> 14 || v12 < rawBits >> 14)
        {
          goto LABEL_78;
        }

        if (rawBits)
        {
          if ((v2 & 2) != 0)
          {
            goto LABEL_14;
          }

LABEL_15:
          if (rawBits >> 14 != v13 && rawBits >> 14 != v12)
          {
            v14 = rawBits;
            v15 = to._rawBits;
            v16 = v2;
            v17 = v3;
            v18 = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(v14, v2, v3, v7, v6);
            to._rawBits = v15;
            v3 = v17;
            v2 = v16;
            rawBits = v18;
          }
        }

        else
        {
          v59 = to._rawBits;
          v60 = v2;
          v61 = v3;
          v62._rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
          to._rawBits = v59;
          v3 = v61;
          v2 = v60;
          rawBits = rawBits & 0xC | v62._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
          if ((v60 & 2) == 0)
          {
            goto LABEL_15;
          }

LABEL_14:
          if ((rawBits & 2) == 0)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_18;
      }

      v31 = (rawBits >> 8) & 0x3F;
      v32 = rawBits >> 16;
      if (!v31)
      {
        break;
      }

LABEL_53:
      v35 = v31 + v32;
      if (v26 < v31 + v32)
      {
        v35 = v26;
      }

      v36 = v35 << 16;
      v37 = v35 & 0xFFFFFFFFFFFFLL;
      if ((v35 & 0xFFFFFFFFFFFFLL) != v26)
      {
        if ((v6 & 0x1000000000000000) != 0)
        {
          goto LABEL_75;
        }

        if ((v6 & 0x2000000000000000) != 0)
        {
          v79 = v7;
          v80 = v28;
          if (v37 + 1 != v27)
          {
            v40 = *(&v79 + v37);
LABEL_66:
            if (v40 == 2573 || (v40 & 0x8080) != 0)
            {
LABEL_75:
              v71 = v29;
              v75 = v27;
              v42 = v28;
              v38 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v37);
              v29 = v71;
              v27 = v75;
              v28 = v42;
              if (v38 > 63)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
            }
          }
        }

        else
        {
          v39 = v29;
          to._rawBits = v7 & 0xFFFFFFFFFFFFLL;
          if ((v7 & 0x1000000000000000) == 0)
          {
            v70 = v37;
            v73 = v29;
            v77 = v27;
            v44 = v28;
            v45 = _StringObject.sharedUTF8.getter(v7, v6);
            v29 = v73;
            v27 = v77;
            v28 = v44;
            v39 = v45;
            v37 = v70;
          }

          if (v37 + 1 != to._rawBits)
          {
            if (!v39)
            {
LABEL_98:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v40 = *&v39[v37];
            goto LABEL_66;
          }
        }

        v38 = 1;
        goto LABEL_72;
      }

      v38 = 0;
LABEL_72:
      v36 |= v38 << 8;
LABEL_73:
      rawBits = v30 | v36;
      ++v11;
      if (v25 <= v36 >> 14)
      {
        return v12;
      }
    }

    if (v32 == v26)
    {
      v31 = 0;
      goto LABEL_53;
    }

    if ((v6 & 0x1000000000000000) == 0)
    {
      if ((v6 & 0x2000000000000000) == 0)
      {
        v33 = v29;
        to._rawBits = v7 & 0xFFFFFFFFFFFFLL;
        if ((v7 & 0x1000000000000000) == 0)
        {
          v74 = v29;
          v78 = v27;
          v46 = v28;
          v33 = _StringObject.sharedUTF8.getter(v7, v6);
          v29 = v74;
          v27 = v78;
          v28 = v46;
        }

        if (v32 + 1 == to._rawBits)
        {
LABEL_52:
          v31 = 1;
          goto LABEL_53;
        }

        if (!v33)
        {
          goto LABEL_98;
        }

        v34 = *&v33[v32];
        if (v34 == 2573)
        {
          goto LABEL_77;
        }

        goto LABEL_51;
      }

      v79 = v7;
      v80 = v28;
      if (v32 + 1 == v27)
      {
        goto LABEL_52;
      }

      v34 = *(&v79 + v32);
      if (v34 != 2573)
      {
LABEL_51:
        if ((v34 & 0x80808080) == 0)
        {
          goto LABEL_52;
        }
      }
    }

LABEL_77:
    v72 = v29;
    v76 = v27;
    v43 = v28;
    v31 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v32);
    v29 = v72;
    v27 = v76;
    v28 = v43;
    goto LABEL_53;
  }

  if (v25 >= v24)
  {
    return 0;
  }

  v12 = 0;
  v47 = v2 >> 14;
  v11 = v2 >> 16;
  if (((v6 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
  {
    v48 = 8;
  }

  else
  {
    v48 = 4;
  }

  do
  {
    if (__OFSUB__(v12--, 1))
    {
      goto LABEL_92;
    }

    if (v24 == v47)
    {
      v50 = 0;
    }

    else
    {
      v49 = _StringGuts._opaqueCharacterStride(endingAt:in:)(rawBits >> 16, v11, v2, v7, v6);
      rawBits -= v49 << 16;
      v50 = v49 << 8;
      if (v49 > 63)
      {
        v50 = 0;
      }
    }

    v51 = rawBits & 0xFFFFFFFFFFFF0000 | v50;
    rawBits = v48 | v51;
    v24 = v51 >> 14;
  }

  while (v25 < v24);
  return v12;
}

uint64_t Substring.subscript.getter(Swift::UInt64 rawBits, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = (a5 & 0x1000000000000000) == 0 || (a4 & 0x800000000000000) != 0;
  v6 = rawBits & 0xC;
  v7 = 4 << v5;
  v8 = a3 >> 14;
  if ((rawBits & 1) == 0 || v6 == v7)
  {
    if (v6 == v7)
    {
      v36 = a2;
      v37 = a5;
      v40 = a3;
      v28 = a4;
      rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
      a2 = v36;
      a5 = v37;
      a3 = v40;
      a4 = v28;
    }

    if (rawBits >> 14 < a2 >> 14 || rawBits >> 14 >= v8)
    {
LABEL_27:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((rawBits & 1) == 0)
    {
      v41 = a3;
      v29 = a5;
      v30 = a4;
      rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      a3 = v41;
      a4 = v30;
      a5 = v29;
    }
  }

  else if (rawBits >> 14 < a2 >> 14 || rawBits >> 14 >= v8)
  {
    goto LABEL_27;
  }

  v9 = (rawBits >> 8) & 0x3F;
  v10 = rawBits >> 16;
  v11 = a3 >> 16;
  if (!v9)
  {
    if (v10 == v11)
    {
      v9 = 0;
      goto LABEL_18;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
LABEL_53:
      v34 = a4;
      v38 = a5;
      v33 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v10);
      a4 = v34;
      a5 = v38;
      v9 = v33;
      goto LABEL_18;
    }

    if ((a5 & 0x2000000000000000) != 0)
    {
      v42 = a4;
      v43 = a5 & 0xFFFFFFFFFFFFFFLL;
      v26 = v10 + 1;
      if (v10 + 1 != (HIBYTE(a5) & 0xF))
      {
        v27 = *(&v42 + v10);
        goto LABEL_41;
      }
    }

    else
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v24 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v25 = a4 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = a5;
        v35 = a4;
        v24 = _StringObject.sharedUTF8.getter(a4, a5);
        a4 = v35;
        a5 = v39;
      }

      v26 = v10 + 1;
      if (v10 + 1 != v25)
      {
        if (!v24)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v27 = *&v24[v10];
LABEL_41:
        if (v27 != 2573 && (v27 & 0x80808080) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_53;
      }
    }

LABEL_43:
    if (v11 >= v26)
    {
      v13 = v26;
    }

    else
    {
      v13 = v11;
    }

    if (v13 >= v10)
    {
LABEL_23:
      if ((a5 & 0x2000000000000000) != 0)
      {
        v42 = a4;
        v43 = a5 & 0xFFFFFFFFFFFFFFLL;
        if ((HIBYTE(a5) & 0xF) >= v13)
        {
          v18 = v13 - v10;
          if (v13 - v10 >= 0)
          {
            v22 = _allASCII(_:)((&v42 + v10), v13 - v10);
            v21 = &v42 + v10;
            v19 = v22;
            return specialized static String._uncheckedFromUTF8(_:isASCII:)(v21, v18, v19, v20);
          }
        }
      }

      else if ((a4 & 0x1000000000000000) != 0)
      {
        v14 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v15 = a4 & 0xFFFFFFFFFFFFLL;
        if (v15 >= v13)
        {
LABEL_26:
          v16 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v13, v14, v15);
          v18 = v17;
          v19 = _allASCII(_:)(v16, v17);
          v21 = v16;
          return specialized static String._uncheckedFromUTF8(_:isASCII:)(v21, v18, v19, v20);
        }
      }

      else
      {
        v31 = v13;
        v14 = _StringObject.sharedUTF8.getter(a4, a5);
        v15 = v32;
        v13 = v31;
        if (v15 >= v31)
        {
          goto LABEL_26;
        }
      }

      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_47:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_18:
  v12 = v9 + v10;
  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if ((a5 & 0x1000000000000000) == 0)
  {
    if (v13 >= v10)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

  return _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v10, v13)._countAndFlagsBits;
}

void specialized Substring._replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2, unint64_t a3, Swift::UInt64 a4, unint64_t a5, Swift::UInt64 a6)
{
  v7 = v6;
  v8 = a6;
  v9._rawBits = a2._rawBits;
  v10 = (v6 + 2);
  v11 = v6[3];
  v12._rawBits = *v6;
  v13 = v6[1];
  v235 = v6[2];
  LODWORD(v14) = (v11 & 0x1000000000000000) == 0 || (v235 & 0x800000000000000) != 0;
  v15 = a1._rawBits & 0xC;
  v16 = 4 << v14;
  v17 = a2._rawBits & 0xC;
  if ((a1._rawBits & 1) != 0 && v15 != v16 && (a2._rawBits & 1) != 0 && v17 != v16)
  {
    if (a1._rawBits >> 14 >= v12._rawBits >> 14 && v13 >> 14 >= a2._rawBits >> 14)
    {
      goto LABEL_18;
    }

LABEL_36:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v17 == v16)
  {
    rawBits = a1._rawBits;
    v228 = a3;
    v164 = a5;
    v165 = a4;
    v166._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a4 = v165;
    a5 = v164;
    v9._rawBits = v166._rawBits;
    a3 = v228;
    a1._rawBits = rawBits;
    v8 = a6;
    if (v15 != v16)
    {
      goto LABEL_13;
    }

LABEL_147:
    v229 = a3;
    v15 = a5;
    v167 = a4;
    a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a3 = v229;
    a4 = v167;
    a5 = v15;
    goto LABEL_13;
  }

  if (v15 == v16)
  {
    goto LABEL_147;
  }

LABEL_13:
  if (a1._rawBits >> 14 < v12._rawBits >> 14 || v9._rawBits >> 14 < a1._rawBits >> 14 || v13 >> 14 < v9._rawBits >> 14)
  {
    goto LABEL_36;
  }

  if ((v9._rawBits & 1) == 0)
  {
    goto LABEL_161;
  }

  if ((a1._rawBits & 1) == 0)
  {
    goto LABEL_162;
  }

LABEL_18:
  v224 = a4;
  v225 = a5;
  v227 = a3;
  if (!v14)
  {
    v183 = v12._rawBits;
    if ((v12._rawBits & 0xC) == 4)
    {
      v217 = a1._rawBits;
      v183 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12)._rawBits;
      a1._rawBits = v217;
    }

    if ((v11 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v11 = v235 & 0xFFFFFFFFFFFFLL;
    }

    if (v11 < v183 >> 16)
    {
      goto LABEL_228;
    }

    v184._rawBits = a1._rawBits;
    startingAt = String.UTF8View._foreignDistance(from:to:)(15, v183);
    if ((v12._rawBits & 0xC) == 4)
    {
      v12._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v12)._rawBits;
    }

    if ((v13 & 0xC) == 4)
    {
      v13 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13)._rawBits;
      if (v11 < v12._rawBits >> 16)
      {
        goto LABEL_228;
      }
    }

    else if (v11 < v12._rawBits >> 16)
    {
      goto LABEL_228;
    }

    if (v11 < v13 >> 16)
    {
      goto LABEL_228;
    }

    v185 = v8;
    v186 = String.UTF8View._foreignDistance(from:to:)(v12, v13);
    v187 = v184._rawBits;
    if ((v184._rawBits & 0xC) != 4)
    {
LABEL_175:
      v188 = v9._rawBits;
      if ((v9._rawBits & 0xC) == 4)
      {
        v188 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9)._rawBits;
        if (v11 < v187 >> 16)
        {
          goto LABEL_228;
        }
      }

      else if (v11 < v187 >> 16)
      {
        goto LABEL_228;
      }

      if (v11 >= v188 >> 16)
      {
        v189 = String.UTF8View._foreignDistance(from:to:)(v187, v188);
        v190 = specialized _StringGuts.replaceSubrange<A>(_:with:)(v184._rawBits, v9._rawBits, v227, v224, v225, v185);
        v192 = v191 - v190;
        if (__OFSUB__(v191, v190))
        {
          __break(1u);
        }

        else
        {
          v193 = __OFADD__(v186, v192);
          v194 = v186 + v192;
          if (!v193)
          {
            v185 = v194 - v189;
            if (!__OFSUB__(v194, v189))
            {
              if (v190 == v191)
              {
                v195 = 0;
                v196 = startingAt << 16;
                goto LABEL_215;
              }

              v212 = *(v7 + 16);
              v213 = *(v7 + 24);
              if ((v213 & 0x1000000000000000) != 0)
              {
                goto LABEL_233;
              }

              if ((v213 & 0x2000000000000000) != 0)
              {
                v242 = *(v7 + 16);
                v243 = v213 & 0xFFFFFFFFFFFFFFLL;
                if (startingAt + 1 == (HIBYTE(v213) & 0xF))
                {
LABEL_214:
                  v196 = startingAt << 16;
                  v195 = 1;
                  goto LABEL_215;
                }

                v216 = *(&v242 + startingAt);
                goto LABEL_212;
              }

              if ((v212 & 0x1000000000000000) != 0)
              {
                v214 = ((v213 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v215 = v212 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v214 = _StringObject.sharedUTF8.getter(*(v7 + 16), *(v7 + 24));
              }

              if (startingAt + 1 == v215)
              {
                goto LABEL_214;
              }

              if (v214)
              {
                v216 = *&v214[startingAt];
LABEL_212:
                if (v216 != 2573 && (v216 & 0x80808080) == 0)
                {
                  goto LABEL_214;
                }

LABEL_233:
                v195 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(startingAt);
                v196 = startingAt << 16;
                if (v195 > 63)
                {
LABEL_216:
                  *v7 = v196 | 5;
                  if (_StringGuts.isOnGraphemeClusterBoundary(_:)((v196 | 5)))
                  {
                    *v7 = v196 | 7;
                  }

                  v19 = startingAt + v185;
                  if (__OFADD__(startingAt, v185))
                  {
                    __break(1u);
LABEL_221:
                    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                  }

                  goto LABEL_138;
                }

LABEL_215:
                v196 |= v195 << 8;
                goto LABEL_216;
              }

LABEL_229:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_232:
            __break(1u);
            goto LABEL_233;
          }
        }

        __break(1u);
        goto LABEL_232;
      }

LABEL_228:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_226:
    v187 = _StringGuts._slowEnsureMatchingEncoding(_:)(v184)._rawBits;
    goto LABEL_175;
  }

  v18 = a1._rawBits;
  v222 = v9._rawBits >> 16;
  v223 = a1._rawBits >> 16;
  if ((v235 & ~v11 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
  {
    v9._rawBits = v223;
    startingAt = v223;
    if ((v8 & 0x1000000000000000) == 0)
    {
      v19 = v227 >> 16;
      v20 = v224 >> 16;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v242 = v225;
        v243 = v8 & 0xFFFFFFFFFFFFFFLL;
        if ((HIBYTE(v8) & 0xF) >= v20 && (v20 - v19) >= 0)
        {
          v31 = v223 + v20 - v19;
          v160 = v235 & 0xFFFFFFFFFFFFLL;
          if ((v11 & 0x2000000000000000) != 0)
          {
            v160 = HIBYTE(v11) & 0xF;
          }

          v11 = v222;
          v235 = v20 - v19;
          _StringGuts.reserveCapacity(_:)(v160 - v222 + v31);
          v10 = *(v7 + 24);
          v8 = v223;
          __StringStorage.replace(from:to:with:)(v223, v222, &v242 + v19, v235);
          v24 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          *(v7 + 16) = v24;
          goto LABEL_107;
        }
      }

      else
      {
        if ((v225 & 0x1000000000000000) != 0)
        {
          v21 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v22 = v225 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = _StringObject.sharedUTF8.getter(v225, v8);
          v22 = v208;
          v20 = v224 >> 16;
        }

        v8 = v223;
        if (v22 >= v20)
        {
          v23 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v19, v20, v21, v22);
          v25 = v223 + v24;
          if (__OFADD__(v223, v24))
          {
            __break(1u);
          }

          else
          {
            v26 = v23;
            v27 = v235 & 0xFFFFFFFFFFFFLL;
            if ((v11 & 0x2000000000000000) != 0)
            {
              v27 = HIBYTE(v11) & 0xF;
            }

            v11 = v222;
            v28 = v27 - v222;
            v221 = v223 + v24;
            if (!__OFADD__(v25, v28))
            {
              v29 = v24;
              _StringGuts.reserveCapacity(_:)(v25 + v28);
              v10 = *(v7 + 24);
              __StringStorage.replace(from:to:with:)(v223, v222, v26, v29);
              v24 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              *(v7 + 16) = v24;
              v31 = v221;
              goto LABEL_107;
            }
          }

          __break(1u);
          goto LABEL_198;
        }
      }

LABEL_202:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v220 = v12._rawBits;
    v185 = v224;
    v242 = v227;
    v243 = v224;
    v244 = v225;
    v245 = v8;
    v246 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
    v247 = 0;
    v186 = v8;
    v8;
    v184._rawBits = &v242;
    v197 = specialized FlattenSequence<>.startIndex.getter();
    v200 = specialized FlattenSequence<>.distance(from:to:)(v197, v199, v198 & 1, v224, 0, 1);
    v201 = v223 + v200;
    if (__OFADD__(v223, v200))
    {
      __break(1u);
    }

    else
    {
      v202 = v235 & 0xFFFFFFFFFFFFLL;
      if ((v11 & 0x2000000000000000) != 0)
      {
        v202 = HIBYTE(v11) & 0xF;
      }

      v203 = v202 - v222;
      v221 = v223 + v200;
      v204 = v201 + v203;
      if (!__OFADD__(v201, v203))
      {
        v205 = v200;
        if (v204 >= 16)
        {
          v206 = _StringGuts.uniqueNativeCapacity.getter();
          if ((v207 & 1) != 0 || v206 < v204)
          {
            _StringGuts.grow(_:)(v204);
          }
        }

        v10 = *(v7 + 24);
        *&v237 = v227;
        *(&v237 + 1) = v224;
        v238 = v225;
        v239 = v8;
        v240 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
        v241 = 0;
        v8 = v223;
        v11 = v222;
        specialized __StringStorage.replace<A>(from:to:with:replacementCount:)(v223, v222, &v237, v205);
        v186;
        v24 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        *(v7 + 16) = v24;
        v12._rawBits = v220;
        v31 = v221;
        v9._rawBits = v223;
        goto LABEL_107;
      }
    }

    __break(1u);
    goto LABEL_226;
  }

  v32 = 0xE000000000000000;
  v242 = 0;
  v243 = 0xE000000000000000;
  v33 = _StringGuts.nativeCapacity.getter(v235, v11);
  v14 = 0;
  if ((v34 & 1) == 0)
  {
    v35 = v33;
    if (v33 >= 16)
    {
      v36 = _StringGuts.uniqueNativeCapacity.getter();
      if ((v37 & 1) != 0 || v36 < v35)
      {
        v39 = 2 * _StringGuts.uniqueNativeCapacity.getter();
        if (v39 <= v35)
        {
          v39 = v35;
        }

        if (v38)
        {
          v40 = v35;
        }

        else
        {
          v40 = v39;
        }

        v237 = 0uLL;
        v32 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v237, 0, v40, 1);
        v14 = *(v32 + 24);
        0xE000000000000000;
        v242 = v14;
        v243 = v32;
      }

      else
      {
        v14 = 0;
        v32 = 0xE000000000000000;
      }
    }
  }

  rawBits = v11;
  startingAt = v8;
  v218 = v13;
  v219 = v7;
  v220 = v12._rawBits;
  v41._rawBits = v18;
  v11 = specialized Collection.subscript.getter(v41, v235, v11);
  v8 = v43;
  v10 = v42;
  v7 = v43 >> 16;
  v221 = v11 >> 16;
  if ((v42 & 0x1000000000000000) != 0)
  {
    goto LABEL_149;
  }

  v13 = v30;
  v12._rawBits = v7 - (v11 >> 16);
  swift_bridgeObjectRetain_n(v42, 2);
  if ((v32 & 0x1000000000000000) != 0)
  {
LABEL_152:
    v173 = String.UTF8View._foreignCount()();
    v44 = v173 + v12._rawBits;
    if (__OFADD__(v173, v12._rawBits))
    {
      goto LABEL_154;
    }

    goto LABEL_50;
  }

  while (1)
  {
    if ((v32 & 0x2000000000000000) == 0)
    {
      v44 = (v14 & 0xFFFFFFFFFFFFLL) + v12._rawBits;
      if (__OFADD__(v14 & 0xFFFFFFFFFFFFLL, v12._rawBits))
      {
        goto LABEL_154;
      }

      goto LABEL_50;
    }

    v45 = HIBYTE(v32) & 0xF;
    v44 = v45 + v12._rawBits;
    if (__OFADD__(v45, v12._rawBits))
    {
LABEL_154:
      __break(1u);
LABEL_155:
      swift_bridgeObjectRetain_n(v10, 3);
      v174._rawBits = v8 & 0xFFFFFFFFFFFF0000 | 1;
      v175._rawBits = v11 & 0xFFFFFFFFFFFF0000 | 1;
      v176._rawBits = _StringGuts.validateScalarRange(_:)(v174, v175, v7, v10)._rawBits;
      if (v176._rawBits < 0x10000)
      {
        v176._rawBits |= 3;
      }

      v9._rawBits = String.UTF8View.distance(from:to:)(v176, v177);
      v10;
      a1._rawBits = v221;
      if ((v32 & 0x1000000000000000) != 0)
      {
        goto LABEL_158;
      }

      goto LABEL_85;
    }

LABEL_50:
    if ((v14 & ~v32 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v32 & 0xFFFFFFFFFFFFFFFLL))
    {
      v46 = _StringGuts.nativeUnusedCapacity.getter(v14, v32);
      if (v47)
      {
        goto LABEL_221;
      }

      if (v44 <= 15 && ((v32 & 0x2000000000000000) != 0 || v46 < v12._rawBits))
      {
LABEL_62:
        v10;
        v72 = _StringGuts._convertedToSmall()(v14, v32, v64, v65, v66, v67, v68, v69, v70, v71);
        v74 = v73;
        v10;
        v75._rawBits = v11 & 0xFFFFFFFFFFFF0000 | 1;
        v76._rawBits = v8 & 0xFFFFFFFFFFFF0000 | 1;
        v77._rawBits = _StringGuts.validateScalarRange(_:)(v75, v76, v13, v10)._rawBits;
        if (v77._rawBits < 0x10000)
        {
          v77._rawBits |= 3;
        }

        v79 = Substring.description.getter(v77._rawBits, v78, v13, v10);
        v81 = v80;
        v10;
        v90 = _StringGuts._convertedToSmall()(v79, v81, v82, v83, v84, v85, v86, v87, v88, v89);
        v92 = v91;
        v81;
        v93 = HIBYTE(v74) & 0xF;
        v94 = HIBYTE(v92) & 0xF;
        v95 = v94 + v93;
        if (v94 + v93 >= 0x10)
        {
          goto LABEL_221;
        }

        v10;
        if (v94)
        {
          v96 = 0;
          v97 = 0;
          v98 = 8 * v93;
          do
          {
            v99 = v92 >> (v96 & 0x38);
            if (v97 < 8)
            {
              v99 = v90 >> v96;
            }

            v100 = (v99 << (v98 & 0x38)) | ((-255 << (v98 & 0x38)) - 1) & v74;
            v101 = (v99 << v98) | ((-255 << v98) - 1) & v72;
            if (v93 <= 7)
            {
              v72 = v101;
            }

            else
            {
              v74 = v100;
            }

            ++v93;
            v98 += 8;
            v96 += 8;
            ++v97;
          }

          while (8 * v94 != v96);
        }

        v32;
        v102 = 0xA000000000000000;
        if (!(v72 & 0x8080808080808080 | v74 & 0x80808080808080))
        {
          v102 = 0xE000000000000000;
        }

        v242 = v72;
        v243 = v102 & 0xFF00000000000000 | (v95 << 56) | v74 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_77;
      }
    }

    else if (v44 < 16)
    {
      goto LABEL_62;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v44, v12._rawBits);
    if ((v10 & 0x1000000000000000) != 0)
    {
      v10;
      _StringGuts._foreignAppendInPlace(_:)(v13, v10, v221, v7);
      v10;
LABEL_77:
      v48 = rawBits;
      v63 = startingAt;
      goto LABEL_78;
    }

    v48 = rawBits;
    if ((v10 & 0x2000000000000000) != 0)
    {
      v10;
      *&v237 = v13;
      *(&v237 + 1) = v10 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(v10) & 0xF) < v7 || (v7 - v221) < 0)
      {
        goto LABEL_202;
      }

      v162 = v243 & 0xFFFFFFFFFFFFFFFLL;
      v10;
      __StringStorage.appendInPlace(_:isASCII:)(&v237 + v221, v7 - v221, (v10 & 0x4000000000000000) != 0);
      v242 = *(v162 + 24);
      v63 = startingAt;
    }

    else
    {
      if ((v13 & 0x1000000000000000) != 0)
      {
        v49 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v50 = v13 & 0xFFFFFFFFFFFFLL;
        if ((v13 & 0xFFFFFFFFFFFFLL) < v7)
        {
          goto LABEL_202;
        }
      }

      else
      {
        v49 = _StringObject.sharedUTF8.getter(v13, v10);
        v50 = v210;
        if (v210 < v7)
        {
          goto LABEL_202;
        }
      }

      v51 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v221, v7, v49, v50);
      v53 = v52;
      v54 = v243 & 0xFFFFFFFFFFFFFFFLL;
      v10;
      __StringStorage.appendInPlace(_:isASCII:)(v51, v53, (v13 & 0x8000000000000000) != 0);
      v242 = *(v54 + 24);
      v10;
      v63 = startingAt;
    }

LABEL_78:
    v103 = v242 & 0xFFFFFFFFFFFFLL;
    if ((v243 & 0x2000000000000000) != 0)
    {
      v103 = HIBYTE(v243) & 0xF;
    }

    startingAt = v103;
    String.append(contentsOf:)(v227, v224, v225, v63, v55, v56, v57, v58, v59, v60, v61, v62);
    v14 = v242;
    v32 = v243;
    if ((v243 & 0x2000000000000000) != 0)
    {
      v104 = HIBYTE(v243) & 0xF;
    }

    else
    {
      v104 = v242 & 0xFFFFFFFFFFFFLL;
    }

    v105._rawBits = v9._rawBits;
    v8 = specialized Collection.subscript.getter(v105, v235, v48)._rawBits;
    v11 = v107;
    v7 = v108;
    v10 = v106._rawBits;
    v12._rawBits = v8 >> 16;
    v13 = v107 >> 16;
    v221 = v104;
    if ((v106._rawBits & 0x1000000000000000) != 0)
    {
      goto LABEL_155;
    }

    v9._rawBits = v13 - v12._rawBits;
    swift_bridgeObjectRetain_n(v106._rawBits, 2);
    a1._rawBits = v104;
    if ((v32 & 0x1000000000000000) == 0)
    {
LABEL_85:
      v109 = a1._rawBits + v9._rawBits;
      if (!__OFADD__(a1._rawBits, v9._rawBits))
      {
        goto LABEL_86;
      }

LABEL_160:
      __break(1u);
LABEL_161:
      v230 = a3;
      rawBits = a1._rawBits;
      v178 = a5;
      v15 = a4;
      v179._rawBits = _StringGuts.scalarAlignSlow(_:)(v9)._rawBits;
      a4 = v15;
      a5 = v178;
      v180 = v179._rawBits;
      a3 = v230;
      a1._rawBits = rawBits;
      v9._rawBits = v9._rawBits & 0xC | v180 & 0xFFFFFFFFFFFFFFF3 | 1;
      if ((rawBits & 1) == 0)
      {
LABEL_162:
        v15 = a1._rawBits;
        v226 = a5;
        v231 = a3;
        v181 = a4;
        v182._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
        a5 = v226;
        a3 = v231;
        a4 = v181;
        a1._rawBits = v15 & 0xC | v182._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      }

      goto LABEL_18;
    }

LABEL_158:
    a1._rawBits = String.UTF8View._foreignCount()();
    v109 = a1._rawBits + v9._rawBits;
    if (__OFADD__(a1._rawBits, v9._rawBits))
    {
      goto LABEL_160;
    }

LABEL_86:
    if ((v14 & ~v32 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v32 & 0xFFFFFFFFFFFFFFFLL))
    {
      v110 = _StringGuts.nativeUnusedCapacity.getter(v14, v32);
      if (v111)
      {
        goto LABEL_221;
      }

      v112 = (v32 >> 61) & 1;
      if (v110 < v9._rawBits)
      {
        LOBYTE(v112) = 1;
      }

      if (v109 <= 15 && (v112 & 1) != 0)
      {
LABEL_93:
        v10;
        v121 = _StringGuts._convertedToSmall()(v14, v32, v113, v114, v115, v116, v117, v118, v119, v120);
        v123 = v122;
        v10;
        v124._rawBits = v8 & 0xFFFFFFFFFFFF0000 | 1;
        v125._rawBits = v11 & 0xFFFFFFFFFFFF0000 | 1;
        v126._rawBits = _StringGuts.validateScalarRange(_:)(v124, v125, v7, v10)._rawBits;
        if (v126._rawBits < 0x10000)
        {
          v126._rawBits |= 3;
        }

        v128 = Substring.description.getter(v126._rawBits, v127, v7, v10);
        v130 = v129;
        v10;
        v139 = _StringGuts._convertedToSmall()(v128, v130, v131, v132, v133, v134, v135, v136, v137, v138);
        v141 = v140;
        v130;
        v142 = specialized _SmallString.init(_:appending:)(v121, v123, v139, v141);
        v9._rawBits = v223;
        if (v144)
        {
          goto LABEL_221;
        }

        v145 = v142;
        v146 = v143;
        rawBits;
        v32;
        v10;
        v242 = v145;
        v243 = v146;
        goto LABEL_97;
      }
    }

    else if (v109 < 16)
    {
      goto LABEL_93;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v109, v9._rawBits);
    v8 = startingAt;
    if ((v10 & 0x1000000000000000) != 0)
    {
      v10;
      _StringGuts._foreignAppendInPlace(_:)(v7, v10, v12._rawBits, v13);
      rawBits;
      v10;
      v7 = v219;
      v12._rawBits = v220;
      v13 = v218;
      v9._rawBits = v223;
LABEL_105:
      v11 = v222;
      goto LABEL_106;
    }

    v9._rawBits = v223;
    if ((v10 & 0x2000000000000000) == 0)
    {
      if ((v7 & 0x1000000000000000) != 0)
      {
        v147 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v148 = v7 & 0xFFFFFFFFFFFFLL;
        if ((v7 & 0xFFFFFFFFFFFFLL) < v13)
        {
          goto LABEL_202;
        }
      }

      else
      {
        v147 = _StringObject.sharedUTF8.getter(v7, v10);
        v148 = v211;
        if (v211 < v13)
        {
          goto LABEL_202;
        }
      }

      v149 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v12._rawBits, v13, v147, v148);
      v151 = v150;
      v152 = v243 & 0xFFFFFFFFFFFFFFFLL;
      v10;
      __StringStorage.appendInPlace(_:isASCII:)(v149, v151, v7 < 0);
      v242 = *(v152 + 24);
      rawBits;
      v10;
      v7 = v219;
      v12._rawBits = v220;
      v13 = v218;
      goto LABEL_105;
    }

    v10;
    *&v237 = v7;
    *(&v237 + 1) = v10 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v10) & 0xF) < v13 || (v13 - v12._rawBits) < 0)
    {
      goto LABEL_202;
    }

    v163 = v243 & 0xFFFFFFFFFFFFFFFLL;
    v10;
    __StringStorage.appendInPlace(_:isASCII:)(&v237 + v12._rawBits, v13 - v12._rawBits, (v10 & 0x4000000000000000) != 0);
    v242 = *(v163 + 24);
    rawBits;
LABEL_97:
    v7 = v219;
    v12._rawBits = v220;
    v13 = v218;
    v11 = v222;
    v8 = startingAt;
LABEL_106:
    v31 = v221;
    v24 = v242;
    v10 = v243;
    *(v7 + 16) = v242;
    *(v7 + 24) = v10;
LABEL_107:
    v153 = v31 - v8;
    if (!__OFSUB__(v31, v8))
    {
      break;
    }

    __break(1u);
LABEL_149:
    v168 = v30;
    swift_bridgeObjectRetain_n(v10, 3);
    v169._rawBits = v11 & 0xFFFFFFFFFFFF0000 | 1;
    v170._rawBits = v8 & 0xFFFFFFFFFFFF0000 | 1;
    v171._rawBits = _StringGuts.validateScalarRange(_:)(v169, v170, v168, v10)._rawBits;
    if (v171._rawBits < 0x10000)
    {
      v171._rawBits |= 3;
    }

    v13 = v168;
    v12._rawBits = String.UTF8View.distance(from:to:)(v171, v172);
    v10;
    v14 = v242;
    v32 = v243;
    if ((v243 & 0x1000000000000000) != 0)
    {
      goto LABEL_152;
    }
  }

  v15 = v12._rawBits >> 16;
  v8 = v13 >> 16;
  v19 = v9._rawBits - v11 + v153 + (v13 >> 16);
  v154 = (v12._rawBits >> 8) & 0x3F;
  if (!v154)
  {
    if (v15 >= v9._rawBits)
    {
      goto LABEL_113;
    }

LABEL_110:
    if (v19 == v8)
    {
      return;
    }

LABEL_138:
    *(v7 + 8) = (v19 << 16) | 5;
    return;
  }

  if (v154 + v15 < v9._rawBits)
  {
    goto LABEL_110;
  }

LABEL_113:
  if (v15 == v19)
  {
    v155 = 0;
    v156 = v12._rawBits & 0xFFFFFFFFFFFF0000;
    goto LABEL_132;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    goto LABEL_183;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v236[0] = v24;
    v236[1] = v10 & 0xFFFFFFFFFFFFFFLL;
    if (v15 + 1 != (HIBYTE(v10) & 0xF))
    {
      v159 = *(v236 + v15);
      goto LABEL_129;
    }

LABEL_131:
    v156 = v12._rawBits & 0xFFFFFFFFFFFF0000;
    v155 = 1;
    goto LABEL_132;
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    v157 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v158 = v24 & 0xFFFFFFFFFFFFLL;
    goto LABEL_119;
  }

LABEL_198:
  v157 = _StringObject.sharedUTF8.getter(v24, v10);
  v158 = v209;
LABEL_119:
  if (v15 + 1 == v158)
  {
    goto LABEL_131;
  }

  if (!v157)
  {
    goto LABEL_229;
  }

  v159 = *&v157[v15];
LABEL_129:
  if (v159 != 2573 && (v159 & 0x80808080) == 0)
  {
    goto LABEL_131;
  }

LABEL_183:
  v155 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v15);
  v156 = v12._rawBits & 0xFFFFFFFFFFFF0000;
  if (v155 <= 63)
  {
LABEL_132:
    v156 |= v155 << 8;
  }

  v161 = v156 | 5;
  if ((v12._rawBits & 2) != 0 && (v15 < v9._rawBits || _StringGuts.isOnGraphemeClusterBoundary(_:)((v156 | 5))))
  {
    v161 = v156 | 7;
  }

  *v7 = v161;
  if (v19 != v8)
  {
    goto LABEL_138;
  }
}

void specialized Substring._replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v6._rawBits = a2._rawBits;
  v7._rawBits = a1._rawBits;
  v9 = (v4 + 2);
  v8 = v4[2];
  v10 = v4[3];
  v11 = *v4;
  v12 = v4[1];
  LODWORD(v13) = (v10 & 0x1000000000000000) == 0 || (v8 & 0x800000000000000) != 0;
  v14 = a1._rawBits & 0xC;
  v15 = 4 << v13;
  v16 = a2._rawBits & 0xC;
  if ((a1._rawBits & 1) != 0 && v14 != v15 && (a2._rawBits & 1) != 0 && v16 != v15)
  {
    if (a1._rawBits >> 14 >= v11 >> 14 && v12 >> 14 >= a2._rawBits >> 14)
    {
      goto LABEL_19;
    }

LABEL_40:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v16 == v15)
  {
    v219 = v8;
    v167 = a3;
    v168._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v167;
    v6._rawBits = v168._rawBits;
    v8 = v219;
    if (v14 != v15)
    {
      goto LABEL_13;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_13;
  }

  v169 = v8;
  v170 = a3;
  v171._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v7)._rawBits;
  a3 = v170;
  v7._rawBits = v171._rawBits;
  v8 = v169;
LABEL_13:
  if (v7._rawBits >> 14 < v11 >> 14 || v6._rawBits >> 14 < v7._rawBits >> 14 || v12 >> 14 < v6._rawBits >> 14)
  {
    goto LABEL_40;
  }

  v17 = v8;
  if ((v6._rawBits & 1) == 0)
  {
    goto LABEL_161;
  }

  if ((v7._rawBits & 1) == 0)
  {
    goto LABEL_162;
  }

LABEL_18:
  v8 = v17;
  while (1)
  {
LABEL_19:
    v214 = a3;
    v218 = v8;
    if (!v13)
    {
      v187 = v11;
      if ((v11 & 0xC) == 4)
      {
        v207 = v8;
        v187 = _StringGuts._slowEnsureMatchingEncoding(_:)(v11)._rawBits;
        v8 = v207;
      }

      if ((v10 & 0x2000000000000000) != 0)
      {
        v188 = HIBYTE(v10) & 0xF;
      }

      else
      {
        v188 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v188 >= v187 >> 16)
      {
        startingAta = String.UTF8View._foreignDistance(from:to:)(15, v187);
        if ((v11 & 0xC) == 4)
        {
          v11 = _StringGuts._slowEnsureMatchingEncoding(_:)(v11)._rawBits;
        }

        if ((v12 & 0xC) == 4)
        {
          v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12)._rawBits;
          if (v188 < v11 >> 16)
          {
            goto LABEL_216;
          }
        }

        else if (v188 < v11 >> 16)
        {
          goto LABEL_216;
        }

        if (v188 < v12 >> 16)
        {
          goto LABEL_216;
        }

        v189 = String.UTF8View._foreignDistance(from:to:)(v11, v12);
        v190 = v7._rawBits;
        if ((v7._rawBits & 0xC) == 4)
        {
          v190 = _StringGuts._slowEnsureMatchingEncoding(_:)(v7)._rawBits;
        }

        v191 = v6._rawBits;
        if ((v6._rawBits & 0xC) == 4)
        {
          v191 = _StringGuts._slowEnsureMatchingEncoding(_:)(v6)._rawBits;
          if (v188 < v190 >> 16)
          {
            goto LABEL_216;
          }
        }

        else if (v188 < v190 >> 16)
        {
          goto LABEL_216;
        }

        if (v188 >= v191 >> 16)
        {
          v192 = String.UTF8View._foreignDistance(from:to:)(v190, v191);
          v193 = specialized _StringGuts.replaceSubrange<A>(_:with:)(v7._rawBits, v6._rawBits, v214, a4);
          v195 = v194 - v193;
          if (__OFSUB__(v194, v193))
          {
            __break(1u);
          }

          else
          {
            v36 = __OFADD__(v189, v195);
            v196 = v189 + v195;
            if (!v36)
            {
              v36 = __OFSUB__(v196, v192);
              v192 = v196 - v192;
              if (!v36)
              {
                if (v193 == v194)
                {
                  v197 = 0;
                  v198 = startingAta << 16;
                  goto LABEL_206;
                }

                v202 = *(v5 + 16);
                v203 = *(v5 + 24);
                if ((v203 & 0x1000000000000000) == 0)
                {
                  if ((v203 & 0x2000000000000000) != 0)
                  {
                    v220 = *(v5 + 16);
                    v221 = v203 & 0xFFFFFFFFFFFFFFLL;
                    if (startingAta + 1 == (HIBYTE(v203) & 0xF))
                    {
LABEL_205:
                      v198 = startingAta << 16;
                      v197 = 1;
                      goto LABEL_206;
                    }

                    v206 = *(&v220 + startingAta);
                  }

                  else
                  {
                    if ((v202 & 0x1000000000000000) != 0)
                    {
                      v204 = ((v203 & 0xFFFFFFFFFFFFFFFLL) + 32);
                      v205 = v202 & 0xFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v204 = _StringObject.sharedUTF8.getter(*(v5 + 16), *(v5 + 24));
                    }

                    if (startingAta + 1 == v205)
                    {
                      goto LABEL_205;
                    }

                    if (!v204)
                    {
                      goto LABEL_217;
                    }

                    v206 = *&v204[startingAta];
                  }

                  if (v206 != 2573 && (v206 & 0x80808080) == 0)
                  {
                    goto LABEL_205;
                  }
                }

LABEL_221:
                v197 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(startingAta);
                v198 = startingAta << 16;
                if (v197 > 63)
                {
LABEL_207:
                  *v5 = v198 | 5;
                  if (_StringGuts.isOnGraphemeClusterBoundary(_:)((v198 | 5)))
                  {
                    *v5 = v198 | 7;
                  }

                  v36 = __OFADD__(startingAta, v192);
                  v159 = startingAta + v192;
                  if (v36)
                  {
                    __break(1u);
LABEL_212:
                    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                  }

                  goto LABEL_144;
                }

LABEL_206:
                v198 |= v197 << 8;
                goto LABEL_207;
              }

LABEL_220:
              __break(1u);
              goto LABEL_221;
            }
          }

          __break(1u);
          goto LABEL_220;
        }
      }

LABEL_216:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    startingAt = v7._rawBits >> 16;
    v18 = v6._rawBits >> 16;
    v210 = v12;
    v211 = v11;
    v212 = v6._rawBits >> 16;
    if ((v8 & ~v10 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
    {
      a4;
      v19 = specialized FlattenSequence<>.startIndex.getter(v214, a4, closure #3 in _StringGuts.replaceSubrange<A>(_:with:));
      v21._rawBits = 0;
      v22 = specialized FlattenSequence<>.distance(from:to:)(v19, v227, v20 & 1, 1, v21, 1, v214, a4, closure #3 in _StringGuts.replaceSubrange<A>(_:with:));
      v23 = v7._rawBits >> 16;
      v24 = startingAt + v22;
      if (__OFADD__(startingAt, v22))
      {
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_193:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v25 = v218 & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v10) & 0xF;
      }

      v26 = v25 - v18;
      v27 = v24 + v26;
      if (__OFADD__(v24, v26))
      {
        goto LABEL_187;
      }

      v28 = v22;
      v6._rawBits = startingAt + v22;
      if (v27 >= 16)
      {
        v29 = _StringGuts.uniqueNativeCapacity.getter();
        v23 = v7._rawBits >> 16;
        if ((v30 & 1) != 0 || v29 < v27)
        {
          _StringGuts.grow(_:)(v27);
          v23 = v7._rawBits >> 16;
        }
      }

      v7._rawBits = *(v5 + 24);
      v13 = v7._rawBits & 0xFFFFFFFFFFFFFFFLL;
      v31 = (v7._rawBits & 0xFFFFFFFFFFFFFFFLL) + 32;
      v11 = v31 + v23;
      v32 = v18;
      v33 = (*((v7._rawBits & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) - v18;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)((v31 + v32), v33, (v11 + v28));
      v10 = *((v7._rawBits & 0xFFFFFFFFFFFFFFFLL) + 0x18) >> 63;
      v220 = v214;
      v221 = a4;
      v222 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
      v223 = 0u;
      v224 = 0u;
      a4;
      v34 = 0;
      while (1)
      {
        v35 = specialized FlattenSequence.Iterator.next()();
        if ((v35 & 0x100) != 0)
        {
          break;
        }

        v10 = ((v35 & 0x80u) == 0) & v10;
        *(v11 + v34) = v35;
        v36 = __OFADD__(v34++, 1);
        if (v36)
        {
          __break(1u);
          goto LABEL_35;
        }
      }

      v221;
      v223;
      v224;
      if (__OFADD__(v6._rawBits, v33))
      {
        goto LABEL_188;
      }

      __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v6._rawBits + v33, v10 & 1);
      a4;
      v44 = *((v7._rawBits & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      *v9 = v44;
      v45 = startingAt;
      v46 = startingAt;
      v48 = v211;
      v47 = v212;
      goto LABEL_118;
    }

LABEL_35:
    v37 = 0xE000000000000000;
    v220 = 0;
    v221 = 0xE000000000000000;
    v38 = _StringGuts.nativeCapacity.getter(v218, v10);
    v17 = 0;
    if ((v39 & 1) == 0)
    {
      v40 = v38;
      if (v38 >= 16)
      {
        v41 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v42 & 1) != 0 || v41 < v40)
        {
          v50 = 2 * _StringGuts.uniqueNativeCapacity.getter();
          if (v50 <= v40)
          {
            v50 = v40;
          }

          if (v49)
          {
            v51 = v40;
          }

          else
          {
            v51 = v50;
          }

          v225 = 0;
          v226 = 0;
          v37 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v225, 0, v51, 1);
          v17 = *(v37 + 24);
          0xE000000000000000;
          v220 = v17;
          v221 = v37;
        }

        else
        {
          v17 = 0;
          v37 = 0xE000000000000000;
        }
      }
    }

    v52._rawBits = v7._rawBits;
    v213 = v10;
    v13 = specialized Collection.subscript.getter(v52, v218, v10);
    v10 = v54;
    v7._rawBits = v53;
    v11 = v54 >> 16;
    v208 = v13 >> 16;
    if ((v53 & 0x1000000000000000) != 0)
    {
      goto LABEL_149;
    }

    v12 = v43;
    v55 = v11 - (v13 >> 16);
    swift_bridgeObjectRetain_n(v53, 2);
    v209 = v5;
    if ((v37 & 0x1000000000000000) != 0)
    {
LABEL_152:
      v177 = String.UTF8View._foreignCount()();
      v5 = v177 + v55;
      if (__OFADD__(v177, v55))
      {
        goto LABEL_154;
      }

      goto LABEL_56;
    }

LABEL_51:
    if ((v37 & 0x2000000000000000) == 0)
    {
      v5 = (v17 & 0xFFFFFFFFFFFFLL) + v55;
      if (__OFADD__(v17 & 0xFFFFFFFFFFFFLL, v55))
      {
        goto LABEL_154;
      }

      goto LABEL_56;
    }

    v56 = HIBYTE(v37) & 0xF;
    v5 = v56 + v55;
    if (__OFADD__(v56, v55))
    {
LABEL_154:
      __break(1u);
LABEL_155:
      swift_bridgeObjectRetain_n(v7._rawBits, 3);
      v178._rawBits = v17 & 0xFFFFFFFFFFFF0000 | 1;
      v179._rawBits = v10 & 0xFFFFFFFFFFFF0000 | 1;
      v180._rawBits = _StringGuts.validateScalarRange(_:)(v178, v179, v11, v7._rawBits)._rawBits;
      if (v180._rawBits < 0x10000)
      {
        v180._rawBits |= 3;
      }

      v6._rawBits = String.UTF8View.distance(from:to:)(v180, v181);
      v7._rawBits;
      v117 = a4;
      if ((v37 & 0x1000000000000000) != 0)
      {
        break;
      }

      goto LABEL_94;
    }

LABEL_56:
    if ((v17 & ~v37 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v37 & 0xFFFFFFFFFFFFFFFLL))
    {
      v57 = _StringGuts.nativeUnusedCapacity.getter(v17, v37);
      if (v58)
      {
        goto LABEL_212;
      }

      if (v5 > 15 || (v37 & 0x2000000000000000) == 0 && v57 >= v55)
      {
LABEL_62:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v5, v55);
        if ((v7._rawBits & 0x1000000000000000) != 0)
        {
          v7._rawBits;
          _StringGuts._foreignAppendInPlace(_:)(v12, v7._rawBits, v208, v11);
          v7._rawBits;
          v59 = v213;
        }

        else
        {
          v59 = v213;
          if ((v7._rawBits & 0x2000000000000000) != 0)
          {
            v7._rawBits;
            v225 = v12;
            v226 = v7._rawBits & 0xFFFFFFFFFFFFFFLL;
            if ((HIBYTE(v7._rawBits) & 0xF) < v11 || (v11 - v208) < 0)
            {
              goto LABEL_193;
            }

            closure #1 in _StringGuts.append(_:)(&v225 + v208, v11 - v208, &v220, (v7._rawBits & 0x4000000000000000) != 0);
            v7._rawBits;
          }

          else
          {
            if ((v12 & 0x1000000000000000) != 0)
            {
              v60 = ((v7._rawBits & 0xFFFFFFFFFFFFFFFLL) + 32);
              v61 = v12 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v60 = _StringObject.sharedUTF8.getter(v12, v7._rawBits);
              v61 = v200;
            }

            if (v61 < v11)
            {
              goto LABEL_193;
            }

            v62 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v208, v11, v60, v61);
            closure #1 in _StringGuts.append(_:)(v62, v63, &v220, (v12 & 0x8000000000000000) != 0);
            swift_bridgeObjectRelease_n(v7._rawBits, 2);
          }
        }

        goto LABEL_87;
      }
    }

    else if (v5 >= 16)
    {
      goto LABEL_62;
    }

    v7._rawBits;
    v80 = _StringGuts._convertedToSmall()(v17, v37, v72, v73, v74, v75, v76, v77, v78, v79);
    v82 = v81;
    v7._rawBits;
    v83._rawBits = v13 & 0xFFFFFFFFFFFF0000 | 1;
    v84._rawBits = v10 & 0xFFFFFFFFFFFF0000 | 1;
    v85._rawBits = _StringGuts.validateScalarRange(_:)(v83, v84, v12, v7._rawBits)._rawBits;
    if (v85._rawBits < 0x10000)
    {
      v85._rawBits |= 3;
    }

    v87 = Substring.description.getter(v85._rawBits, v86, v12, v7._rawBits);
    v89 = v88;
    v7._rawBits;
    v98 = _StringGuts._convertedToSmall()(v87, v89, v90, v91, v92, v93, v94, v95, v96, v97);
    v100 = v99;
    v89;
    v101 = HIBYTE(v82) & 0xF;
    v102 = HIBYTE(v100) & 0xF;
    v103 = v102 + v101;
    if (v102 + v101 >= 0x10)
    {
      goto LABEL_212;
    }

    v7._rawBits;
    if (v102)
    {
      v104 = 0;
      v105 = 0;
      v106 = 8 * v101;
      do
      {
        v107 = v100 >> (v104 & 0x38);
        if (v105 < 8)
        {
          v107 = v98 >> v104;
        }

        v108 = (v107 << (v106 & 0x38)) | ((-255 << (v106 & 0x38)) - 1) & v82;
        v109 = (v107 << v106) | ((-255 << v106) - 1) & v80;
        if (v101 <= 7)
        {
          v80 = v109;
        }

        else
        {
          v82 = v108;
        }

        ++v101;
        v106 += 8;
        v104 += 8;
        ++v105;
      }

      while (8 * v102 != v104);
    }

    v37;
    v110 = 0xA000000000000000;
    if (!(v80 & 0x8080808080808080 | v82 & 0x80808080808080))
    {
      v110 = 0xE000000000000000;
    }

    v220 = v80;
    v221 = v110 & 0xFF00000000000000 | (v103 << 56) | v82 & 0xFFFFFFFFFFFFFFLL;
    v59 = v213;
LABEL_87:
    v111 = v220 & 0xFFFFFFFFFFFFLL;
    if ((v221 & 0x2000000000000000) != 0)
    {
      v111 = HIBYTE(v221) & 0xF;
    }

    v208 = v111;
    specialized String.append<A>(contentsOf:)(v214, a4, v64, v65, v66, v67, v68, v69, v70, v71);
    v13 = v220;
    v37 = v221;
    if ((v221 & 0x2000000000000000) != 0)
    {
      v112 = HIBYTE(v221) & 0xF;
    }

    else
    {
      v112 = v220 & 0xFFFFFFFFFFFFLL;
    }

    v113._rawBits = v6._rawBits;
    v17 = specialized Collection.subscript.getter(v113, v218, v59)._rawBits;
    v10 = v115;
    v11 = v116;
    v7._rawBits = v114._rawBits;
    v12 = v17 >> 16;
    v5 = v115 >> 16;
    a4 = v112;
    if ((v114._rawBits & 0x1000000000000000) != 0)
    {
      goto LABEL_155;
    }

    v6._rawBits = v5 - v12;
    swift_bridgeObjectRetain_n(v114._rawBits, 2);
    v117 = v112;
    if ((v37 & 0x1000000000000000) != 0)
    {
      break;
    }

LABEL_94:
    v9 = v117 + v6._rawBits;
    if (!__OFADD__(v117, v6._rawBits))
    {
      goto LABEL_95;
    }

LABEL_160:
    __break(1u);
LABEL_161:
    v183 = a3;
    v184._rawBits = _StringGuts.scalarAlignSlow(_:)(v6)._rawBits;
    a3 = v183;
    v6._rawBits = v6._rawBits & 0xC | v184._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (v7._rawBits)
    {
      goto LABEL_18;
    }

LABEL_162:
    v185 = a3;
    v186._rawBits = _StringGuts.scalarAlignSlow(_:)(v7)._rawBits;
    a3 = v185;
    v8 = v17;
    v7._rawBits = v7._rawBits & 0xC | v186._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
  }

  v182 = String.UTF8View._foreignCount()();
  v9 = v182 + v6._rawBits;
  if (__OFADD__(v182, v6._rawBits))
  {
    goto LABEL_160;
  }

LABEL_95:
  if ((v13 & ~v37 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v37 & 0xFFFFFFFFFFFFFFFLL))
  {
    v118 = _StringGuts.nativeUnusedCapacity.getter(v13, v37);
    if (v119)
    {
      goto LABEL_212;
    }

    v120 = (v37 >> 61) & 1;
    if (v118 < v6._rawBits)
    {
      LOBYTE(v120) = 1;
    }

    if (v9 <= 15 && (v120 & 1) != 0)
    {
LABEL_102:
      v7._rawBits;
      v129 = _StringGuts._convertedToSmall()(v13, v37, v121, v122, v123, v124, v125, v126, v127, v128);
      v131 = v130;
      v7._rawBits;
      v132._rawBits = v17 & 0xFFFFFFFFFFFF0000 | 1;
      v133._rawBits = v10 & 0xFFFFFFFFFFFF0000 | 1;
      v134._rawBits = _StringGuts.validateScalarRange(_:)(v132, v133, v11, v7._rawBits)._rawBits;
      if (v134._rawBits < 0x10000)
      {
        v134._rawBits |= 3;
      }

      v136 = Substring.description.getter(v134._rawBits, v135, v11, v7._rawBits);
      v10 = v137;
      v7._rawBits;
      v146 = _StringGuts._convertedToSmall()(v136, v10, v138, v139, v140, v141, v142, v143, v144, v145);
      v11 = v147;
      v10;
      v148 = specialized _SmallString.init(_:appending:)(v129, v131, v146, v11);
      v6._rawBits = a4;
      if (v150)
      {
        goto LABEL_212;
      }

      v13 = v148;
      v151 = v149;
      v213;
      v37;
      v7._rawBits;
      v220 = v13;
      v221 = v151;
      v5 = v209;
      v48 = v211;
      v47 = v212;
      goto LABEL_117;
    }
  }

  else if (v9 < 16)
  {
    goto LABEL_102;
  }

  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v9, v6._rawBits);
  if ((v7._rawBits & 0x1000000000000000) != 0)
  {
    v7._rawBits;
    _StringGuts._foreignAppendInPlace(_:)(v11, v7._rawBits, v12, v5);
    v213;
    v7._rawBits;
    v5 = v209;
    v48 = v211;
    v47 = v212;
    v6._rawBits = a4;
  }

  else
  {
    v47 = v212;
    v13 = v213;
    v6._rawBits = a4;
    if ((v7._rawBits & 0x2000000000000000) != 0)
    {
      v7._rawBits;
      v225 = v11;
      v226 = v7._rawBits & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(v7._rawBits) & 0xF) < v5 || (v5 - v12) < 0)
      {
        goto LABEL_193;
      }

      closure #1 in _StringGuts.append(_:)(&v225 + v12, v5 - v12, &v220, (v7._rawBits & 0x4000000000000000) != 0);
      v213;
      v7._rawBits;
    }

    else
    {
      if ((v11 & 0x1000000000000000) != 0)
      {
        v152 = ((v7._rawBits & 0xFFFFFFFFFFFFFFFLL) + 32);
        v153 = v11 & 0xFFFFFFFFFFFFLL;
        if ((v11 & 0xFFFFFFFFFFFFLL) < v5)
        {
          goto LABEL_193;
        }
      }

      else
      {
        v152 = _StringObject.sharedUTF8.getter(v11, v7._rawBits);
        v153 = v201;
        if (v201 < v5)
        {
          goto LABEL_193;
        }
      }

      v154 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v12, v5, v152, v153);
      closure #1 in _StringGuts.append(_:)(v154, v155, &v220, (v11 & 0x8000000000000000) != 0);
      v213;
      swift_bridgeObjectRelease_n(v7._rawBits, 2);
    }

    v5 = v209;
    v48 = v211;
  }

LABEL_117:
  v44 = v220;
  v7._rawBits = v221;
  *(v5 + 16) = v220;
  *(v5 + 24) = v7;
  v45 = startingAt;
  v46 = v208;
LABEL_118:
  v36 = __OFSUB__(v6._rawBits, v46);
  v156 = v6._rawBits - v46;
  if (v36)
  {
    __break(1u);
LABEL_149:
    v172 = v43;
    swift_bridgeObjectRetain_n(v7._rawBits, 3);
    v173._rawBits = v13 & 0xFFFFFFFFFFFF0000 | 1;
    v174._rawBits = v10 & 0xFFFFFFFFFFFF0000 | 1;
    v175._rawBits = _StringGuts.validateScalarRange(_:)(v173, v174, v172, v7._rawBits)._rawBits;
    if (v175._rawBits < 0x10000)
    {
      v175._rawBits |= 3;
    }

    v12 = v172;
    v55 = String.UTF8View.distance(from:to:)(v175, v176);
    v7._rawBits;
    v17 = v220;
    v37 = v221;
    v209 = v5;
    if ((v221 & 0x1000000000000000) != 0)
    {
      goto LABEL_152;
    }

    goto LABEL_51;
  }

  v157 = v48 >> 16;
  v158 = v210 >> 16;
  v159 = v45 - v47 + (v210 >> 16) + v156;
  v160 = (v48 >> 8) & 0x3F;
  if (!v160)
  {
    if (v157 >= v45)
    {
      goto LABEL_124;
    }

LABEL_121:
    if (v159 == v158)
    {
      return;
    }

LABEL_144:
    *(v5 + 8) = (v159 << 16) | 5;
    return;
  }

  if (v160 + v157 < v45)
  {
    goto LABEL_121;
  }

LABEL_124:
  if (v157 == v159)
  {
    v161 = 0;
    v162 = v48 & 0xFFFFFFFFFFFF0000;
    goto LABEL_138;
  }

  if ((v7._rawBits & 0x1000000000000000) != 0)
  {
    goto LABEL_184;
  }

  if ((v7._rawBits & 0x2000000000000000) != 0)
  {
    v220 = v44;
    v221 = v7._rawBits & 0xFFFFFFFFFFFFFFLL;
    if (v157 + 1 != (HIBYTE(v7._rawBits) & 0xF))
    {
      v165 = *(&v220 + v157);
      goto LABEL_135;
    }

LABEL_137:
    v162 = v48 & 0xFFFFFFFFFFFF0000;
    v161 = 1;
LABEL_138:
    v162 |= v161 << 8;
    goto LABEL_139;
  }

  if ((v44 & 0x1000000000000000) != 0)
  {
    v163 = ((v7._rawBits & 0xFFFFFFFFFFFFFFFLL) + 32);
    v164 = v44 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v163 = _StringObject.sharedUTF8.getter(v44, v7._rawBits);
    v45 = startingAt;
    v164 = v199;
  }

  if (v157 + 1 == v164)
  {
    goto LABEL_137;
  }

  if (!v163)
  {
LABEL_217:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v165 = *&v163[v157];
LABEL_135:
  if (v165 != 2573 && (v165 & 0x80808080) == 0)
  {
    goto LABEL_137;
  }

LABEL_184:
  v161 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v48 >> 16);
  v45 = startingAt;
  v162 = v48 & 0xFFFFFFFFFFFF0000;
  if (v161 <= 63)
  {
    goto LABEL_138;
  }

LABEL_139:
  v166 = v162 | 5;
  if ((v48 & 2) != 0 && (v157 < v45 || _StringGuts.isOnGraphemeClusterBoundary(_:)((v162 | 5))))
  {
    v166 = v162 | 7;
  }

  *v5 = v166;
  if (v159 != v158)
  {
    goto LABEL_144;
  }
}

void specialized Substring._replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2)
{
  v3 = v2;
  v4._rawBits = a2._rawBits;
  v6 = (v2 + 2);
  v5 = v2[2];
  v7 = v2[3];
  v9 = *v2;
  v8 = v2[1];
  LODWORD(v10) = (v7 & 0x1000000000000000) == 0 || (v5 & 0x800000000000000) != 0;
  v11 = a1._rawBits & 0xC;
  v12 = 4 << v10;
  v13 = a2._rawBits & 0xC;
  if ((a1._rawBits & 1) != 0 && v11 != v12 && (a2._rawBits & 1) != 0 && v13 != v12)
  {
    if (a1._rawBits >> 14 < v9 >> 14 || v8 >> 14 < a2._rawBits >> 14)
    {
      goto LABEL_37;
    }

    goto LABEL_18;
  }

  if (v13 == v12)
  {
    fromb._rawBits = a1._rawBits;
    v4._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a1._rawBits = fromb._rawBits;
    if (v11 != v12)
    {
      goto LABEL_13;
    }
  }

  else if (v11 != v12)
  {
    goto LABEL_13;
  }

  a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
LABEL_13:
  if (a1._rawBits >> 14 < v9 >> 14 || v4._rawBits >> 14 < a1._rawBits >> 14 || v8 >> 14 < v4._rawBits >> 14)
  {
LABEL_37:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v4._rawBits & 1) == 0)
  {
    goto LABEL_157;
  }

  if ((a1._rawBits & 1) == 0)
  {
    goto LABEL_158;
  }

LABEL_18:
  if (!v10)
  {
LABEL_159:
    v155 = v9;
    if ((v9 & 0xC) == 4)
    {
      rawBits = a1._rawBits;
      v155 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9)._rawBits;
      a1._rawBits = rawBits;
    }

    froma._rawBits = a1._rawBits;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v156 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v156 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v156 >= v155 >> 16)
    {
      v157 = String.UTF8View._foreignDistance(from:to:)(15, v155);
      if ((v9 & 0xC) == 4)
      {
        v9 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9)._rawBits;
      }

      if ((v8 & 0xC) == 4)
      {
        v8 = _StringGuts._slowEnsureMatchingEncoding(_:)(v8)._rawBits;
        if (v156 < v9 >> 16)
        {
          goto LABEL_212;
        }
      }

      else if (v156 < v9 >> 16)
      {
        goto LABEL_212;
      }

      if (v156 < v8 >> 16)
      {
        goto LABEL_212;
      }

      startingAta = v157;
      v158 = String.UTF8View._foreignDistance(from:to:)(v9, v8);
      v159 = froma._rawBits;
      if ((froma._rawBits & 0xC) == 4)
      {
        v159 = _StringGuts._slowEnsureMatchingEncoding(_:)(froma)._rawBits;
      }

      v160 = v4._rawBits;
      if ((v4._rawBits & 0xC) == 4)
      {
        v160 = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
        if (v156 < v159 >> 16)
        {
          goto LABEL_212;
        }
      }

      else if (v156 < v159 >> 16)
      {
        goto LABEL_212;
      }

      if (v156 >= v160 >> 16)
      {
        v161 = String.UTF8View._foreignDistance(from:to:)(v159, v160);
        v162 = specialized _StringGuts.replaceSubrange<A>(_:with:)(froma._rawBits, v4._rawBits);
        v164 = v163 - v162;
        if (__OFSUB__(v163, v162))
        {
          __break(1u);
        }

        else
        {
          v23 = __OFADD__(v158, v164);
          v165 = v158 + v164;
          if (!v23)
          {
            v23 = __OFSUB__(v165, v161);
            v161 = v165 - v161;
            if (!v23)
            {
              if (v162 == v163)
              {
                v166 = 0;
                v167 = startingAta << 16;
                goto LABEL_199;
              }

              v171 = *(v3 + 16);
              v172 = *(v3 + 24);
              if ((v172 & 0x1000000000000000) == 0)
              {
                if ((v172 & 0x2000000000000000) != 0)
                {
                  v188 = *(v3 + 16);
                  *&v189 = v172 & 0xFFFFFFFFFFFFFFLL;
                  if (startingAta + 1 == (HIBYTE(v172) & 0xF))
                  {
LABEL_198:
                    v167 = startingAta << 16;
                    v166 = 1;
                    goto LABEL_199;
                  }

                  v175 = *(&v188 + startingAta);
                }

                else
                {
                  if ((v171 & 0x1000000000000000) != 0)
                  {
                    v173 = ((v172 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v174 = v171 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v173 = _StringObject.sharedUTF8.getter(*(v3 + 16), *(v3 + 24));
                  }

                  if (startingAta + 1 == v174)
                  {
                    goto LABEL_198;
                  }

                  if (!v173)
                  {
                    goto LABEL_213;
                  }

                  v175 = *&v173[startingAta];
                }

                if (v175 != 2573 && (v175 & 0x80808080) == 0)
                {
                  goto LABEL_198;
                }
              }

LABEL_217:
              v166 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(startingAta);
              v167 = startingAta << 16;
              if (v166 > 63)
              {
LABEL_200:
                *v3 = v167 | 5;
                if (_StringGuts.isOnGraphemeClusterBoundary(_:)((v167 | 5)))
                {
                  *v3 = v167 | 7;
                }

                v135 = startingAta + v161;
                if (__OFADD__(startingAta, v161))
                {
                  __break(1u);
LABEL_205:
                  __break(1u);
LABEL_206:
                  __break(1u);
LABEL_207:
                  __break(1u);
                  goto LABEL_208;
                }

                goto LABEL_138;
              }

LABEL_199:
              v167 |= v166 << 8;
              goto LABEL_200;
            }

LABEL_216:
            __break(1u);
            goto LABEL_217;
          }
        }

        __break(1u);
        goto LABEL_216;
      }
    }

LABEL_212:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  while (1)
  {
    v14 = a1._rawBits;
    v185 = v4._rawBits >> 16;
    startingAt = a1._rawBits >> 16;
    v180 = v8;
    if ((v5 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
    {
      break;
    }

LABEL_32:
    v10 = 0xE000000000000000;
    v188 = 0;
    *&v189 = 0xE000000000000000;
    v184 = v5;
    v24 = _StringGuts.nativeCapacity.getter(v5, v7);
    v25 = 0;
    if ((v26 & 1) == 0)
    {
      v27 = v24;
      if (v24 >= 16)
      {
        v28 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v29 & 1) != 0 || v28 < v27)
        {
          v34 = 2 * _StringGuts.uniqueNativeCapacity.getter();
          if (v34 <= v27)
          {
            v34 = v27;
          }

          if (v33)
          {
            v35 = v27;
          }

          else
          {
            v35 = v34;
          }

          v191 = 0;
          v192 = 0;
          v10 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v191, 0, v35, 1);
          v25 = *(v10 + 24);
          0xE000000000000000;
          v188 = v25;
          *&v189 = v10;
        }

        else
        {
          v25 = 0;
          v10 = 0xE000000000000000;
        }
      }
    }

    v178 = v3;
    v179 = v9;
    v36._rawBits = v14;
    from = v7;
    v39 = specialized Collection.subscript.getter(v36, v184, v7);
    v41 = v40;
    v6 = v38;
    v5 = v40 >> 16;
    v177 = v39 >> 16;
    if ((v38 & 0x1000000000000000) != 0)
    {
      v143 = v37;
      swift_bridgeObjectRetain_n(v38, 3);
      v144._rawBits = v39 & 0xFFFFFFFFFFFF0000 | 1;
      v145._rawBits = v41 & 0xFFFFFFFFFFFF0000 | 1;
      v146._rawBits = _StringGuts.validateScalarRange(_:)(v144, v145, v143, v6)._rawBits;
      if (v146._rawBits < 0x10000)
      {
        v146._rawBits |= 3;
      }

      v42 = v143;
      v3 = String.UTF8View.distance(from:to:)(v146, v147);
      v6;
      v25 = v188;
      v10 = v189;
      if ((v189 & 0x1000000000000000) == 0)
      {
LABEL_47:
        if ((v10 & 0x2000000000000000) != 0)
        {
          v43 = HIBYTE(v10) & 0xF;
          v8 = v43 + v3;
          if (__OFADD__(v43, v3))
          {
            goto LABEL_150;
          }
        }

        else
        {
          v8 = (v25 & 0xFFFFFFFFFFFFLL) + v3;
          if (__OFADD__(v25 & 0xFFFFFFFFFFFFLL, v3))
          {
            goto LABEL_150;
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      v42 = v37;
      v3 = v5 - (v39 >> 16);
      swift_bridgeObjectRetain_n(v38, 2);
      if ((v10 & 0x1000000000000000) == 0)
      {
        goto LABEL_47;
      }
    }

    v148 = String.UTF8View._foreignCount()();
    v8 = v148 + v3;
    if (__OFADD__(v148, v3))
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

LABEL_52:
    if ((v25 & ~v10 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
    {
      v44 = _StringGuts.nativeUnusedCapacity.getter(v25, v10);
      if (v45)
      {
        goto LABEL_208;
      }

      if (v8 <= 15 && ((v10 & 0x2000000000000000) != 0 || v44 < v3))
      {
LABEL_65:
        v6;
        v58 = _StringGuts._convertedToSmall()(v25, v10, v50, v51, v52, v53, v54, v55, v56, v57);
        v60 = v59;
        v6;
        v61._rawBits = v39 & 0xFFFFFFFFFFFF0000 | 1;
        v62._rawBits = v41 & 0xFFFFFFFFFFFF0000 | 1;
        v63._rawBits = _StringGuts.validateScalarRange(_:)(v61, v62, v42, v6)._rawBits;
        if (v63._rawBits < 0x10000)
        {
          v63._rawBits |= 3;
        }

        v65 = Substring.description.getter(v63._rawBits, v64, v42, v6);
        v67 = v66;
        v6;
        v76 = _StringGuts._convertedToSmall()(v65, v67, v68, v69, v70, v71, v72, v73, v74, v75);
        v78 = v77;
        v67;
        v79 = HIBYTE(v60) & 0xF;
        v80 = HIBYTE(v78) & 0xF;
        v81 = v80 + v79;
        if (v80 + v79 >= 0x10)
        {
          goto LABEL_208;
        }

        v6;
        if (v80)
        {
          v82 = 0;
          v83 = 0;
          v84 = 8 * v79;
          do
          {
            v85 = v78 >> (v82 & 0x38);
            if (v83 < 8)
            {
              v85 = v76 >> v82;
            }

            v86 = (v85 << (v84 & 0x38)) | ((-255 << (v84 & 0x38)) - 1) & v60;
            v87 = (v85 << v84) | ((-255 << v84) - 1) & v58;
            if (v79 <= 7)
            {
              v58 = v87;
            }

            else
            {
              v60 = v86;
            }

            ++v79;
            v84 += 8;
            v82 += 8;
            ++v83;
          }

          while (8 * v80 != v82);
        }

        v10;
        v88 = 0xA000000000000000;
        if (!(v58 & 0x8080808080808080 | v60 & 0x80808080808080))
        {
          v88 = 0xE000000000000000;
        }

        v188 = v58;
        *&v189 = v88 & 0xFF00000000000000 | (v81 << 56) | v60 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_84;
      }
    }

    else if (v8 < 16)
    {
      goto LABEL_65;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v8, v3);
    if ((v6 & 0x1000000000000000) != 0)
    {
      v6;
      _StringGuts._foreignAppendInPlace(_:)(v42, v6, v177, v5);
LABEL_83:
      v6;
      goto LABEL_84;
    }

    if ((v6 & 0x2000000000000000) != 0)
    {
      v6;
      v191 = v42;
      v192 = v6 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(v6) & 0xF) < v5 || (v5 - v177) < 0)
      {
        goto LABEL_186;
      }

      closure #1 in _StringGuts.append(_:)(&v191 + v177, v5 - v177, &v188, (v6 & 0x4000000000000000) != 0);
      goto LABEL_83;
    }

    if ((v42 & 0x1000000000000000) != 0)
    {
      v46 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v47 = v42 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v46 = _StringObject.sharedUTF8.getter(v42, v6);
      v47 = v169;
    }

    if (v47 < v5)
    {
      goto LABEL_186;
    }

    v48 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v177, v5, v46, v47);
    closure #1 in _StringGuts.append(_:)(v48, v49, &v188, v42 < 0);
    swift_bridgeObjectRelease_n(v6, 2);
LABEL_84:
    v3 = v188;
    v10 = v189;
    if ((v189 & 0x2000000000000000) != 0)
    {
      v41 = BYTE7(v189) & 0xF;
    }

    else
    {
      v41 = v188 & 0xFFFFFFFFFFFFLL;
    }

    if (&full type metadata for EmptyCollection<Character> == &full type metadata for String)
    {
      goto LABEL_205;
    }

    if (&full type metadata for EmptyCollection<Character> == &full type metadata for Substring)
    {
      goto LABEL_206;
    }

    if (&full type metadata for EmptyCollection<Character> == &full type metadata for [Character])
    {
      goto LABEL_207;
    }

    v89._rawBits = v4._rawBits;
    v39 = specialized Collection.subscript.getter(v89, v184, from)._rawBits;
    v25 = v91;
    v8 = v92;
    v4._rawBits = v90._rawBits;
    v5 = v39 >> 16;
    v6 = v91 >> 16;
    if ((v90._rawBits & 0x1000000000000000) == 0)
    {
      v9 = v6 - v5;
      a1._rawBits = swift_bridgeObjectRetain_n(v90._rawBits, 2);
      if ((v10 & 0x1000000000000000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_154;
    }

LABEL_151:
    swift_bridgeObjectRetain_n(v4._rawBits, 3);
    v149._rawBits = v39 & 0xFFFFFFFFFFFF0000 | 1;
    v150._rawBits = v25 & 0xFFFFFFFFFFFF0000 | 1;
    v151._rawBits = _StringGuts.validateScalarRange(_:)(v149, v150, v8, v4._rawBits)._rawBits;
    if (v151._rawBits < 0x10000)
    {
      v151._rawBits |= 3;
    }

    v9 = String.UTF8View.distance(from:to:)(v151, v152);
    v4._rawBits;
    if ((v10 & 0x1000000000000000) == 0)
    {
LABEL_92:
      v23 = __OFADD__(v41, v9);
      v7 = v41 + v9;
      if (!v23)
      {
        goto LABEL_93;
      }

      goto LABEL_156;
    }

LABEL_154:
    a1._rawBits = String.UTF8View._foreignCount()();
    v7 = a1._rawBits + v9;
    if (!__OFADD__(a1._rawBits, v9))
    {
LABEL_93:
      if ((v3 & ~v10 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
      {
        v93 = _StringGuts.nativeUnusedCapacity.getter(v3, v10);
        if (v94)
        {
          goto LABEL_208;
        }

        v95 = (v10 >> 61) & 1;
        if (v93 < v9)
        {
          LOBYTE(v95) = 1;
        }

        if (v7 <= 15 && (v95 & 1) != 0)
        {
LABEL_100:
          v4._rawBits;
          v104 = _StringGuts._convertedToSmall()(v3, v10, v96, v97, v98, v99, v100, v101, v102, v103);
          v106 = v105;
          v4._rawBits;
          v107._rawBits = v39 & 0xFFFFFFFFFFFF0000 | 1;
          v108._rawBits = v25 & 0xFFFFFFFFFFFF0000 | 1;
          v109._rawBits = _StringGuts.validateScalarRange(_:)(v107, v108, v8, v4._rawBits)._rawBits;
          if (v109._rawBits < 0x10000)
          {
            v109._rawBits |= 3;
          }

          v111 = Substring.description.getter(v109._rawBits, v110, v8, v4._rawBits);
          v113 = v112;
          v4._rawBits;
          v122 = _StringGuts._convertedToSmall()(v111, v113, v114, v115, v116, v117, v118, v119, v120, v121);
          v124 = v123;
          v113;
          v125 = specialized _SmallString.init(_:appending:)(v104, v106, v122, v124);
          v9 = v179;
          if ((v127 & 1) == 0)
          {
            v128 = v125;
            v129 = v126;
            from;
            v10;
            v4._rawBits;
            v188 = v128;
            *&v189 = v129;
            v3 = v178;
            goto LABEL_111;
          }

LABEL_208:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else if (v7 < 16)
      {
        goto LABEL_100;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v7, v9);
      v3 = v178;
      if ((v4._rawBits & 0x1000000000000000) == 0)
      {
        v9 = v179;
        if ((v4._rawBits & 0x2000000000000000) != 0)
        {
          v4._rawBits;
          v191 = v8;
          v192 = v4._rawBits & 0xFFFFFFFFFFFFFFLL;
          if ((HIBYTE(v4._rawBits) & 0xF) < v6)
          {
            goto LABEL_186;
          }

          v32 = v180;
          v30 = startingAt;
          if ((v6 - v5) < 0)
          {
            goto LABEL_186;
          }

          closure #1 in _StringGuts.append(_:)(&v191 + v5, v6 - v5, &v188, (v4._rawBits & 0x4000000000000000) != 0);
          from;
          v4._rawBits;
        }

        else
        {
          if ((v8 & 0x1000000000000000) != 0)
          {
            v130 = ((v4._rawBits & 0xFFFFFFFFFFFFFFFLL) + 32);
            v131 = v8 & 0xFFFFFFFFFFFFLL;
            if ((v8 & 0xFFFFFFFFFFFFLL) >= v6)
            {
              goto LABEL_109;
            }

LABEL_186:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v130 = _StringObject.sharedUTF8.getter(v8, v4._rawBits);
          v131 = v170;
          if (v170 < v6)
          {
            goto LABEL_186;
          }

LABEL_109:
          v132 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v5, v6, v130, v131);
          closure #1 in _StringGuts.append(_:)(v132, v133, &v188, v8 < 0);
          from;
          swift_bridgeObjectRelease_n(v4._rawBits, 2);
LABEL_111:
          v32 = v180;
          v30 = startingAt;
        }

        v31 = v188;
        v7 = v189;
        *(v3 + 16) = v188;
        *(v3 + 24) = v7;
        goto LABEL_113;
      }

      v4._rawBits;
      _StringGuts._foreignAppendInPlace(_:)(v8, v4._rawBits, v5, v6);
      from;
      v4._rawBits;
      v9 = v179;
      goto LABEL_111;
    }

LABEL_156:
    __break(1u);
LABEL_157:
    v153 = a1._rawBits;
    v154 = _StringGuts.scalarAlignSlow(_:)(v4)._rawBits;
    a1._rawBits = v153;
    v4._rawBits = v4._rawBits & 0xC | v154 & 0xFFFFFFFFFFFFFFF3 | 1;
    if (v153)
    {
      goto LABEL_18;
    }

LABEL_158:
    a1._rawBits = a1._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(a1)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (!v10)
    {
      goto LABEL_159;
    }
  }

  v15 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v7) & 0xF;
  }

  v16 = v15 - v185 + startingAt;
  if (v16 >= 16)
  {
    v17 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v18 & 1) != 0 || v17 < v16)
    {
      _StringGuts.grow(_:)(v16);
    }
  }

  v7 = *(v3 + 24);
  v14 = v7 & 0xFFFFFFFFFFFFFFFLL;
  v19 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v5 = v19 + startingAt;
  v20 = (*((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) - v185;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v19 + v185), v20, (v19 + startingAt));
  v21 = 0;
  v4._rawBits = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18) >> 63;
  v188 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
  v189 = 0u;
  v190 = 0u;
  while (1)
  {
    v22 = specialized FlattenSequence.Iterator.next()();
    if ((v22 & 0x100) != 0)
    {
      break;
    }

    v4._rawBits = ((v22 & 0x80u) == 0) & v4._rawBits;
    *(v5 + v21) = v22;
    v23 = __OFADD__(v21++, 1);
    if (v23)
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  v190;
  v30 = startingAt;
  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v20 + startingAt, v4._rawBits & 1);
  v31 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  *v6 = v31;
  v32 = v180;
LABEL_113:
  v134 = v9 >> 16;
  v135 = v30 - v185 + (v32 >> 16);
  v136 = (v9 >> 8) & 0x3F;
  if (!v136)
  {
    if (v134 >= v30)
    {
      goto LABEL_118;
    }

LABEL_115:
    if (v30 == v185)
    {
      return;
    }

LABEL_138:
    *(v3 + 8) = (v135 << 16) | 5;
    return;
  }

  if (v136 + v134 < v30)
  {
    goto LABEL_115;
  }

LABEL_118:
  if (v134 == v135)
  {
    v137 = 0;
    v138 = v9 & 0xFFFFFFFFFFFF0000;
    goto LABEL_132;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    goto LABEL_180;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    v188 = v31;
    *&v189 = v7 & 0xFFFFFFFFFFFFFFLL;
    if (v134 + 1 != (HIBYTE(v7) & 0xF))
    {
      v141 = *(&v188 + v134);
      goto LABEL_129;
    }

LABEL_131:
    v138 = v9 & 0xFFFFFFFFFFFF0000;
    v137 = 1;
LABEL_132:
    v138 |= v137 << 8;
    goto LABEL_133;
  }

  if ((v31 & 0x1000000000000000) != 0)
  {
    v139 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v140 = v31 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v139 = _StringObject.sharedUTF8.getter(v31, v7);
    v140 = v168;
  }

  if (v134 + 1 == v140)
  {
    goto LABEL_131;
  }

  if (!v139)
  {
LABEL_213:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v141 = *&v139[v134];
LABEL_129:
  if (v141 != 2573 && (v141 & 0x80808080) == 0)
  {
    goto LABEL_131;
  }

LABEL_180:
  v137 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v9 >> 16);
  v138 = v9 & 0xFFFFFFFFFFFF0000;
  if (v137 <= 63)
  {
    goto LABEL_132;
  }

LABEL_133:
  v142 = v138 | 5;
  if ((v9 & 2) != 0 && (v134 < v30 || _StringGuts.isOnGraphemeClusterBoundary(_:)((v138 | 5))))
  {
    v142 = v138 | 7;
  }

  *v3 = v142;
  if (v30 != v185)
  {
    goto LABEL_138;
  }
}

void Substring._replaceSubrange<A>(_:with:)(unint64_t a1, uint64_t a2, unint64_t *a3, Class *a4, uint64_t a5)
{
  v303 = a3;
  v295 = a5;
  v8 = *(a5 + 8);
  v9 = type metadata accessor for LazyMapSequence(255, a4, &type metadata for String.UTF8View, v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LazyMapSequence<A, B>, v9, v10);
  v14 = lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View(WitnessTable, v12, v13);
  v306 = type metadata accessor for FlattenSequence.Iterator(0, v9, WitnessTable, v14);
  v293 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306, v15);
  v17 = &v286 - v16;
  v301 = v8;
  v19 = type metadata accessor for LazySequence(0, a4, v8, v18);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v294 = &v286 - v21;
  v22 = type metadata accessor for FlattenSequence(255, v9, WitnessTable, v14);
  v24 = swift_getWitnessTable(protocol conformance descriptor for FlattenSequence<A>, v22, v23);
  v26 = type metadata accessor for LazySequence(0, v22, v24, v25);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = MEMORY[0x1EEE9AC00](v28, &v286 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v304 = a4;
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v34 = &v286 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v43 = (&v286 - v42);
  v45 = v5 + 2;
  v44 = v5[2];
  v46 = v5[3];
  v302 = v5;
  v47._rawBits = *v5;
  v48 = v5[1];
  v307 = v46;
  v305 = v44;
  LOBYTE(v49) = (v46 & 0x1000000000000000) == 0 || (v44 & 0x800000000000000) != 0;
  v50 = a1 & 0xC;
  v51 = 4 << v49;
  v52 = v39._rawBits & 0xC;
  if ((a1 & 1) != 0 && v50 != v51 && (v39._rawBits & 1) != 0 && v52 != v51)
  {
    v53 = v307;
    if (a1 >> 14 < v47._rawBits >> 14 || v48 >> 14 < v39._rawBits >> 14)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  if (v52 == v51)
  {
    v292 = v45;
    v290 = v36;
    v291 = v41;
    v287 = v37;
    v288 = v17;
    v203 = v38;
    v297 = v48;
    rawBits = v47._rawBits;
    v204 = v40;
    v205._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v39)._rawBits;
    v38 = v203;
    v17 = v288;
    v37 = v287;
    v41 = v291;
    v40 = v204;
    v47._rawBits = rawBits;
    v48 = v297;
    v39._rawBits = v205._rawBits;
    v36 = v290;
    v45 = v292;
    if (v50 != v51)
    {
      goto LABEL_13;
    }
  }

  else if (v50 != v51)
  {
LABEL_13:
    v53 = v307;
    goto LABEL_14;
  }

  v292 = v45;
  v290 = v36;
  v206._rawBits = a1;
  v296 = v39._rawBits;
  v291 = v41;
  v287 = v37;
  v53 = v307;
  v288 = v17;
  v207 = v38;
  v208 = v47._rawBits;
  v209 = v40;
  v210._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v206)._rawBits;
  v38 = v207;
  v17 = v288;
  v37 = v287;
  v41 = v291;
  v40 = v209;
  v39._rawBits = v296;
  v47._rawBits = v208;
  a1 = v210._rawBits;
  v36 = v290;
  v45 = v292;
LABEL_14:
  if (a1 >> 14 < v47._rawBits >> 14 || v39._rawBits >> 14 < a1 >> 14 || v48 >> 14 < v39._rawBits >> 14)
  {
LABEL_35:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v39._rawBits & 1) == 0)
  {
    goto LABEL_148;
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_149;
  }

LABEL_19:
  if ((v49 & 1) == 0)
  {
LABEL_150:
    v230 = v39._rawBits;
    v231._rawBits = v48;
    v232 = v47._rawBits & 0xC;
    v233 = v47._rawBits;
    if (v232 == 4)
    {
      v283 = v47._rawBits;
      v284._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v47)._rawBits;
      v47._rawBits = v283;
      v233 = v284._rawBits;
    }

    if ((v307 & 0x2000000000000000) != 0)
    {
      v234 = HIBYTE(v307) & 0xF;
    }

    else
    {
      v234 = v305 & 0xFFFFFFFFFFFFLL;
    }

    if (v234 >= v233 >> 16)
    {
      v235._rawBits = v47._rawBits;
      v64 = String.UTF8View._foreignDistance(from:to:)(15, v233);
      v236 = v235._rawBits;
      if (v232 == 4)
      {
        v236 = _StringGuts._slowEnsureMatchingEncoding(_:)(v235)._rawBits;
      }

      v237 = v231._rawBits;
      if ((v231._rawBits & 0xC) == 4)
      {
        v285 = v236;
        v237 = _StringGuts._slowEnsureMatchingEncoding(_:)(v231)._rawBits;
        v236 = v285;
        if (v234 < v285 >> 16)
        {
          goto LABEL_255;
        }
      }

      else if (v234 < v236 >> 16)
      {
        goto LABEL_255;
      }

      if (v234 < v237 >> 16)
      {
        goto LABEL_255;
      }

      v56 = String.UTF8View._foreignDistance(from:to:)(v236, v237);
      v238 = a1;
      if ((a1 & 0xC) == 4)
      {
        v238 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
      }

      v239 = v230;
      if ((v230 & 0xC) == 4)
      {
        v239 = _StringGuts._slowEnsureMatchingEncoding(_:)(v230)._rawBits;
        if (v234 < v238 >> 16)
        {
          goto LABEL_255;
        }
      }

      else if (v234 < v238 >> 16)
      {
        goto LABEL_255;
      }

      if (v234 >= v239 >> 16)
      {
        v240 = String.UTF8View._foreignDistance(from:to:)(v238, v239);
        v241 = _StringGuts.replaceSubrange<A>(_:with:)(a1, v230, v303, v304, v295);
        v243 = v242 - v241;
        if (__OFSUB__(v242, v241))
        {
          __break(1u);
        }

        else
        {
          v244 = __OFADD__(v56, v243);
          v245 = &v56[v243];
          if (!v244)
          {
            v56 = &v245[-v240];
            if (!__OFSUB__(v245, v240))
            {
              if (v241 == v242)
              {
                v246 = 0;
                v247 = v64 << 16;
                goto LABEL_246;
              }

LABEL_230:
              v48 = v302[2];
              v55 = v302[3];
              if ((v55 & 0x1000000000000000) != 0)
              {
                goto LABEL_261;
              }

              if ((v55 & 0x2000000000000000) == 0)
              {
                if ((v48 & 0x1000000000000000) != 0)
                {
                  v279 = ((v55 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v280 = v48 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v279 = _StringObject.sharedUTF8.getter(v302[2], v302[3]);
                }

                if (v64 + 1 != v280)
                {
                  if (!v279)
                  {
                    goto LABEL_256;
                  }

                  v281 = *&v279[v64];
                  goto LABEL_243;
                }

                goto LABEL_245;
              }

LABEL_241:
              v310 = v48;
              v311 = v55 & 0xFFFFFFFFFFFFFFLL;
              if (v64 + 1 != (HIBYTE(v55) & 0xF))
              {
                v281 = *(&v310 + v64);
LABEL_243:
                if (v281 == 2573 || (v281 & 0x80808080) != 0)
                {
                  goto LABEL_261;
                }
              }

LABEL_245:
              v247 = v64 << 16;
              v246 = 1;
LABEL_246:
              v247 |= v246 << 8;
              while (1)
              {
                *v302 = v247 | 5;
                if (_StringGuts.isOnGraphemeClusterBoundary(_:)((v247 | 5)))
                {
                  *v302 = v247 | 7;
                }

                v17 = &v56[v64];
                if (!__OFADD__(v64, v56))
                {
                  break;
                }

LABEL_260:
                __break(1u);
LABEL_261:
                v246 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v64);
                v247 = v64 << 16;
                if (v246 <= 63)
                {
                  goto LABEL_246;
                }
              }

              v62 = v302;
              goto LABEL_215;
            }

LABEL_259:
            __break(1u);
            goto LABEL_260;
          }
        }

        __break(1u);
        goto LABEL_259;
      }
    }

LABEL_255:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  while (1)
  {
    v288 = v17;
    v287 = v37;
    v291 = v41;
    v289 = v40;
    v290 = v36;
    v292 = v45;
    v298 = a1 >> 16;
    rawBits = v47._rawBits;
    v296 = v39._rawBits;
    v297 = v48;
    v300 = v39._rawBits >> 16;
    v54 = v305;
    if ((v305 & ~v53 & 0x2000000000000000) != 0)
    {
      v17 = v38;
      if (swift_isUniquelyReferenced_nonNull_native(v53 & 0xFFFFFFFFFFFFFFFLL))
      {
        break;
      }
    }

    v48 = 0xE000000000000000;
    v310 = 0;
    v311 = 0xE000000000000000;
    v68 = _StringGuts.nativeCapacity.getter(v54, v53);
    v22 = 0;
    if ((v69 & 1) == 0)
    {
      v70 = v68;
      if (v68 >= 16)
      {
        v71 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v72 & 1) != 0 || v71 < v70)
        {
          v74 = 2 * _StringGuts.uniqueNativeCapacity.getter();
          if (v74 <= v70)
          {
            v74 = v70;
          }

          if (v73)
          {
            v75 = v70;
          }

          else
          {
            v75 = v74;
          }

          v314 = 0;
          v315 = 0;
          v48 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v314, 0, v75, 1);
          v22 = *(v48 + 24);
          0xE000000000000000;
          v310 = v22;
          v311 = v48;
        }

        else
        {
          v22 = 0;
          v48 = 0xE000000000000000;
        }
      }
    }

    v76._rawBits = a1;
    v34 = specialized Collection.subscript.getter(v76, v54, v53);
    v80 = v79;
    v81 = v78;
    v49 = v34 >> 16;
    v17 = v79 >> 16;
    v306 = v77;
    if ((v78 & 0x1000000000000000) != 0)
    {
      v211 = v77;
      swift_bridgeObjectRetain_n(v78, 3);
      v212._rawBits = v34 & 0xFFFFFFFFFFFF0000 | 1;
      v213._rawBits = v80 & 0xFFFFFFFFFFFF0000 | 1;
      v214._rawBits = _StringGuts.validateScalarRange(_:)(v212, v213, v211, v81)._rawBits;
      if (v214._rawBits < 0x10000)
      {
        v214._rawBits |= 3;
      }

      v82 = String.UTF8View.distance(from:to:)(v214, v215);
      v81;
      v22 = v310;
      v48 = v311;
      if ((v311 & 0x1000000000000000) == 0)
      {
LABEL_44:
        if ((v48 & 0x2000000000000000) != 0)
        {
          v83 = HIBYTE(v48) & 0xF;
          a1 = v83 + v82;
          if (__OFADD__(v83, v82))
          {
            goto LABEL_141;
          }
        }

        else
        {
          a1 = (v22 & 0xFFFFFFFFFFFFLL) + v82;
          if (__OFADD__(v22 & 0xFFFFFFFFFFFFLL, v82))
          {
            goto LABEL_141;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v82 = v17 - v49;
      swift_bridgeObjectRetain_n(v78, 2);
      if ((v48 & 0x1000000000000000) == 0)
      {
        goto LABEL_44;
      }
    }

    v216 = String.UTF8View._foreignCount()();
    a1 = v216 + v82;
    if (__OFADD__(v216, v82))
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

LABEL_49:
    if ((v22 & ~v48 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v48 & 0xFFFFFFFFFFFFFFFLL))
    {
      v84 = _StringGuts.nativeUnusedCapacity.getter(v22, v48);
      if (v85)
      {
        goto LABEL_251;
      }

      if (a1 > 15 || (v48 & 0x2000000000000000) == 0 && v84 >= v82)
      {
LABEL_55:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(a1, v82);
        if ((v81 & 0x1000000000000000) != 0)
        {
          v81;
          _StringGuts._foreignAppendInPlace(_:)(v306, v81, v49, v17);
        }

        else
        {
          v86 = v306;
          if ((v81 & 0x2000000000000000) == 0)
          {
            if ((v306 & 0x1000000000000000) != 0)
            {
              v87 = ((v81 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v88 = v306 & 0xFFFFFFFFFFFFLL;
              if ((v306 & 0xFFFFFFFFFFFFLL) < v17)
              {
                goto LABEL_238;
              }
            }

            else
            {
              v87 = _StringObject.sharedUTF8.getter(v306, v81);
              v88 = v276;
              if (v276 < v17)
              {
                goto LABEL_238;
              }
            }

            v89 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v49, v17, v87, v88);
            closure #1 in _StringGuts.append(_:)(v89, v90, &v310, v86 < 0);
            swift_bridgeObjectRelease_n(v81, 2);
            goto LABEL_93;
          }

          v81;
          v314 = v86;
          v315 = v81 & 0xFFFFFFFFFFFFFFLL;
          if ((HIBYTE(v81) & 0xF) < v17 || v17 - v49 < 0)
          {
            goto LABEL_238;
          }

          closure #1 in _StringGuts.append(_:)(&v314 + v49, v17 - v49, &v310, (v81 & 0x4000000000000000) != 0);
        }

        v81;
LABEL_93:
        v147 = v303;
        v148 = v304;
        v128 = v301;
        goto LABEL_94;
      }
    }

    else if (a1 > 15)
    {
      goto LABEL_55;
    }

    v81;
    v99 = _StringGuts._convertedToSmall()(v22, v48, v91, v92, v93, v94, v95, v96, v97, v98);
    v101 = v100;
    v81;
    v102._rawBits = v34 & 0xFFFFFFFFFFFF0000 | 1;
    v103._rawBits = v80 & 0xFFFFFFFFFFFF0000 | 1;
    v104 = v306;
    v105._rawBits = _StringGuts.validateScalarRange(_:)(v102, v103, v306, v81)._rawBits;
    if (v105._rawBits < 0x10000)
    {
      v105._rawBits |= 3;
    }

    v107 = Substring.description.getter(v105._rawBits, v106, v104, v81);
    v109 = v108;
    v81;
    v118 = _StringGuts._convertedToSmall()(v107, v109, v110, v111, v112, v113, v114, v115, v116, v117);
    v120 = v119;
    v109;
    v121 = HIBYTE(v101) & 0xF;
    v122 = HIBYTE(v120) & 0xF;
    v123 = v122 + v121;
    if (v122 + v121 > 0xF)
    {
      goto LABEL_251;
    }

    v81;
    if (v122)
    {
      v124 = 0;
      v125 = 0;
      v126 = 8 * v121;
      v127 = 8 * v122;
      v53 = v307;
      v128 = v301;
      do
      {
        v129 = v120 >> (v124 & 0x38);
        if (v125 < 8)
        {
          v129 = v118 >> v124;
        }

        v130 = (v129 << (v126 & 0x38)) | ((-255 << (v126 & 0x38)) - 1) & v101;
        v131 = (v129 << v126) | ((-255 << v126) - 1) & v99;
        if (v121 <= 7)
        {
          v99 = v131;
        }

        else
        {
          v101 = v130;
        }

        ++v121;
        v126 += 8;
        v124 += 8;
        ++v125;
      }

      while (v127 != v124);
    }

    else
    {
      v53 = v307;
      v128 = v301;
    }

    v48;
    v146 = 0xA000000000000000;
    if (!(v99 & 0x8080808080808080 | v101 & 0x80808080808080))
    {
      v146 = 0xE000000000000000;
    }

    v310 = v99;
    v311 = v146 & 0xFF00000000000000 | (v123 << 56) | v101 & 0xFFFFFFFFFFFFFFLL;
    v147 = v303;
    v148 = v304;
LABEL_94:
    v149 = v310 & 0xFFFFFFFFFFFFLL;
    if ((v311 & 0x2000000000000000) != 0)
    {
      v149 = HIBYTE(v311) & 0xF;
    }

    v306 = v149;
    String.append<A>(contentsOf:)(v147, v148, v128);
    v22 = v310;
    v48 = v311;
    if ((v311 & 0x2000000000000000) != 0)
    {
      v150 = (HIBYTE(v311) & 0xF);
    }

    else
    {
      v150 = (v310 & 0xFFFFFFFFFFFFLL);
    }

    v151._rawBits = v296;
    v53 = specialized Collection.subscript.getter(v151, v305, v53)._rawBits;
    v34 = v153;
    a1 = v154;
    v81 = v152._rawBits;
    v49 = v53 >> 16;
    v17 = v153 >> 16;
    v304 = v150;
    if ((v152._rawBits & 0x1000000000000000) == 0)
    {
      v43 = (v17 - v49);
      swift_bridgeObjectRetain_n(v152._rawBits, 2);
      v36 = v150;
      if ((v48 & 0x1000000000000000) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_145;
    }

LABEL_142:
    swift_bridgeObjectRetain_n(v81, 3);
    v217._rawBits = v53 & 0xFFFFFFFFFFFF0000 | 1;
    v218._rawBits = v34 & 0xFFFFFFFFFFFF0000 | 1;
    v219 = v304;
    v220._rawBits = _StringGuts.validateScalarRange(_:)(v217, v218, a1, v81)._rawBits;
    if (v220._rawBits < 0x10000)
    {
      v220._rawBits |= 3;
    }

    v43 = String.UTF8View.distance(from:to:)(v220, v221);
    v81;
    v36 = v219;
    if ((v48 & 0x1000000000000000) == 0)
    {
LABEL_101:
      v9 = v43 + v36;
      if (!__OFADD__(v36, v43))
      {
        goto LABEL_102;
      }

      goto LABEL_147;
    }

LABEL_145:
    v36 = String.UTF8View._foreignCount()();
    v9 = v43 + v36;
    if (!__OFADD__(v36, v43))
    {
LABEL_102:
      if ((v22 & ~v48 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v48 & 0xFFFFFFFFFFFFFFFLL))
      {
        v155 = _StringGuts.nativeUnusedCapacity.getter(v22, v48);
        if (v156)
        {
          goto LABEL_251;
        }

        v157 = (v48 >> 61) & 1;
        if (v155 < v43)
        {
          LODWORD(v157) = 1;
        }

        if (v9 <= 15 && v157)
        {
LABEL_109:
          v81;
          v166 = _StringGuts._convertedToSmall()(v22, v48, v158, v159, v160, v161, v162, v163, v164, v165);
          v17 = v167;
          v81;
          v168._rawBits = v53 & 0xFFFFFFFFFFFF0000 | 1;
          v169._rawBits = v34 & 0xFFFFFFFFFFFF0000 | 1;
          v170._rawBits = _StringGuts.validateScalarRange(_:)(v168, v169, a1, v81)._rawBits;
          if (v170._rawBits < 0x10000)
          {
            v170._rawBits |= 3;
          }

          v172 = Substring.description.getter(v170._rawBits, v171, a1, v81);
          v53 = v173;
          v81;
          v182 = _StringGuts._convertedToSmall()(v172, v53, v174, v175, v176, v177, v178, v179, v180, v181);
          v184 = v183;
          v53;
          v185 = specialized _SmallString.init(_:appending:)(v166, v17, v182, v184);
          v62 = v302;
          v9 = v298;
          if ((v187 & 1) == 0)
          {
            v188 = v185;
            v189 = v186;
            v307;
            v48;
            v81;
            v310 = v188;
            v311 = v189;
            v63 = v300;
LABEL_123:
            v194 = v306;
            v145 = v310;
            v144 = v311;
            v62[2] = v310;
            v62[3] = v144;
            v195 = rawBits;
            goto LABEL_189;
          }

LABEL_251:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else if (v9 <= 15)
      {
        goto LABEL_109;
      }

      v48 = &v310;
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v9, v43);
      v63 = v300;
      if ((v81 & 0x1000000000000000) != 0)
      {
        v81;
        _StringGuts._foreignAppendInPlace(_:)(a1, v81, v49, v17);
        v307;
        v81;
        v62 = v302;
        v9 = v298;
        goto LABEL_123;
      }

      v62 = v302;
      v9 = v298;
      v48 = v307;
      if ((v81 & 0x2000000000000000) != 0)
      {
        v81;
        v314 = a1;
        v315 = v81 & 0xFFFFFFFFFFFFFFLL;
        if ((HIBYTE(v81) & 0xF) >= v17 && v17 - v49 >= 0)
        {
          closure #1 in _StringGuts.append(_:)(&v314 + v49, v17 - v49, &v310, (v81 & 0x4000000000000000) != 0);
          v48;
          v81;
          goto LABEL_123;
        }
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v190 = ((v81 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v191 = a1 & 0xFFFFFFFFFFFFLL;
        if ((a1 & 0xFFFFFFFFFFFFLL) >= v17)
        {
LABEL_118:
          v192 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v49, v17, v190, v191);
          closure #1 in _StringGuts.append(_:)(v192, v193, &v310, (a1 & 0x8000000000000000) != 0);
          v48;
          swift_bridgeObjectRelease_n(v81, 2);
          goto LABEL_123;
        }
      }

      else
      {
        v190 = _StringObject.sharedUTF8.getter(a1, v81);
        v191 = v277;
        if (v277 >= v17)
        {
          goto LABEL_118;
        }
      }

LABEL_238:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_147:
    __break(1u);
LABEL_148:
    v292 = v45;
    v290 = v36;
    v296 = v39._rawBits;
    v291 = v41;
    v287 = v37;
    v288 = v17;
    v222 = v38;
    rawBits = v47._rawBits;
    v223 = v40;
    v224._rawBits = _StringGuts.scalarAlignSlow(_:)(v39)._rawBits;
    v38 = v222;
    v17 = v288;
    v37 = v287;
    v41 = v291;
    v40 = v223;
    v47._rawBits = rawBits;
    v225 = v224._rawBits & 0xFFFFFFFFFFFFFFF3;
    v36 = v290;
    v45 = v292;
    v39._rawBits = v296 & 0xC | v225 | 1;
    if (a1)
    {
      goto LABEL_19;
    }

LABEL_149:
    v292 = v45;
    v290 = v36;
    v296 = v39._rawBits;
    v291 = v41;
    v287 = v37;
    v288 = v17;
    v226 = v38;
    rawBits = v47._rawBits;
    v227 = v40;
    v228._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
    v38 = v226;
    v17 = v288;
    v37 = v287;
    v41 = v291;
    v40 = v227;
    v39._rawBits = v296;
    v47._rawBits = rawBits;
    v229 = v228._rawBits & 0xFFFFFFFFFFFFFFF3;
    v36 = v290;
    v45 = v292;
    a1 = a1 & 0xC | v229 | 1;
    if ((v49 & 1) == 0)
    {
      goto LABEL_150;
    }
  }

  v55 = v17 + 16;
  v56 = *(v17 + 16);
  v58 = v303;
  v57 = v304;
  (v56)(v43, v303, v304);
  if ((swift_dynamicCast(&v310, v43, v57, &type metadata for String, 6uLL, v59, v60, v61, v286) & 1) == 0)
  {
    (v56)(v34, v58, v57);
    v135 = swift_dynamicCast(&v310, v34, v57, &type metadata for Substring, 6uLL, v132, v133, v134, v286);
    v62 = v302;
    if ((v135 & 1) == 0)
    {
      goto LABEL_173;
    }

    v53 = v313;
    v63 = v300;
    if ((v313 & 0x1000000000000000) != 0)
    {
      goto LABEL_227;
    }

    v64 = v310 >> 16;
    v136 = v311 >> 16;
    if ((v313 & 0x2000000000000000) != 0)
    {
      v310 = v312;
      v311 = v313 & 0xFFFFFFFFFFFFFFLL;
      v9 = v298;
      if ((HIBYTE(v313) & 0xF) < v136)
      {
        goto LABEL_238;
      }

      v201 = v136 - v64;
      if (v136 - v64 < 0)
      {
        goto LABEL_238;
      }

      v17 = &v310;
      v202 = v305 & 0xFFFFFFFFFFFFLL;
      if ((v307 & 0x2000000000000000) != 0)
      {
        v202 = HIBYTE(v307) & 0xF;
      }

      v304 = (v201 + v298);
      _StringGuts.reserveCapacity(_:)(v202 - v300 + v201 + v298);
      v144 = v62[3];
      v48 = v144 & 0xFFFFFFFFFFFFFFFLL;
      v197 = &v310 + v64;
      v198 = v9;
      v199 = v63;
      v200 = v201;
      goto LABEL_132;
    }

    v9 = v298;
    if ((v312 & 0x1000000000000000) != 0)
    {
      v137 = ((v313 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v138 = v312 & 0xFFFFFFFFFFFFLL;
      if ((v312 & 0xFFFFFFFFFFFFLL) < v136)
      {
        goto LABEL_238;
      }
    }

    else
    {
      v48 = v311 >> 16;
      v137 = _StringObject.sharedUTF8.getter(v312, v313);
      v138 = v282;
      v136 = v48;
      if (v138 < v48)
      {
        goto LABEL_238;
      }
    }

    v139 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v64, v136, v137, v138);
    v141 = v9 + v140;
    if (__OFADD__(v9, v140))
    {
      __break(1u);
    }

    else
    {
      v64 = v139;
      v142 = v305 & 0xFFFFFFFFFFFFLL;
      if ((v307 & 0x2000000000000000) != 0)
      {
        v142 = HIBYTE(v307) & 0xF;
      }

      v143 = v142 - v63;
      v304 = (v9 + v140);
      v67 = v141 + v143;
      if (!__OFADD__(v141, v143))
      {
        v65 = v140;
        goto LABEL_84;
      }
    }

    __break(1u);
    goto LABEL_241;
  }

  v53 = v311;
  v62 = v302;
  if ((v311 & 0x1000000000000000) == 0)
  {
    v63 = v300;
    if ((v311 & 0x2000000000000000) == 0)
    {
      v9 = v298;
      if ((v310 & 0x1000000000000000) != 0)
      {
        v64 = (v311 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v65 = v310 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = _StringObject.sharedUTF8.getter(v310, v311);
        v65 = v278;
      }

      v66 = v305 & 0xFFFFFFFFFFFFLL;
      if ((v307 & 0x2000000000000000) != 0)
      {
        v66 = HIBYTE(v307) & 0xF;
      }

      v304 = (v65 + v9);
      v67 = v66 - v63 + v65 + v9;
LABEL_84:
      _StringGuts.reserveCapacity(_:)(v67);
      v144 = v62[3];
      v48 = v144 & 0xFFFFFFFFFFFFFFFLL;
      __StringStorage.replace(from:to:with:)(v9, v63, v64, v65);
      v145 = *((v144 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v62[2] = v145;
      v53;
LABEL_133:
      v194 = v9;
      v195 = rawBits;
      goto LABEL_189;
    }

    v311 &= 0xFFFFFFFFFFFFFFuLL;
    v9 = v298;
    v196 = v305 & 0xFFFFFFFFFFFFLL;
    if ((v307 & 0x2000000000000000) != 0)
    {
      v196 = HIBYTE(v307) & 0xF;
    }

    v304 = ((HIBYTE(v53) & 0xF) + v298);
    _StringGuts.reserveCapacity(_:)(v304 + v196 - v300);
    v144 = v62[3];
    v48 = v144 & 0xFFFFFFFFFFFFFFFLL;
    v197 = &v310;
    v198 = v9;
    v199 = v63;
    v200 = HIBYTE(v53) & 0xF;
LABEL_132:
    __StringStorage.replace(from:to:with:)(v198, v199, v197, v200);
    v53;
    v145 = *(v48 + 24);
    v62[2] = v145;
    goto LABEL_133;
  }

  v311;
LABEL_173:
  v63 = v300;
  while (2)
  {
    v53 = v294;
    v248 = v304;
    (v56)(v294, v303, v304);
    v249 = *(v17 + 32);
    v17 += 32;
    v250 = v291;
    v249(v291, v53, v248);
    v251 = (v250 + *(v9 + 44));
    *v251 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
    v251[1] = 0;
    v309 = v295;
    v252 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v9, &v309);
    v255 = lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View(v252, v253, v254);
    v308[0] = v252;
    v308[1] = v255;
    v256 = swift_getWitnessTable(protocol conformance descriptor for <> FlattenSequence<A>, v22, v308);
    v257 = Collection.count.getter(v22, v256);
    v9 = v298;
    v258 = v298 + v257;
    if (__OFADD__(v298, v257))
    {
      __break(1u);
      goto LABEL_226;
    }

    v259 = v305 & 0xFFFFFFFFFFFFLL;
    if ((v307 & 0x2000000000000000) != 0)
    {
      v259 = HIBYTE(v307) & 0xF;
    }

    v260 = v259 - v63;
    v304 = (v298 + v257);
    v261 = v258 + v260;
    v17 = v288;
    if (__OFADD__(v258, v260))
    {
LABEL_226:
      __break(1u);
LABEL_227:
      v53;
      continue;
    }

    break;
  }

  v262 = v257;
  if (v261 >= 16)
  {
    v263 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v264 & 1) != 0 || v263 < v261)
    {
      _StringGuts.grow(_:)(v261);
    }
  }

  v144 = v62[3];
  v64 = v144 & 0xFFFFFFFFFFFFFFFLL;
  v265 = (v144 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v56 = (v265 + v9);
  v53 = (*((v144 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) - v63;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v265 + v63), v53, (v265 + v9 + v262));
  v266 = *((v144 & 0xFFFFFFFFFFFFFFFLL) + 0x18) >> 63;
  v267 = v290;
  (*(v289 + 16))(v287, v291, v290);
  LazySequence.makeIterator()(v267);
  v268 = 0;
  while (1)
  {
    FlattenSequence.Iterator.next()(v306, &v310);
    if ((v310 & 0x100) != 0)
    {
      break;
    }

    LOBYTE(v266) = ((v310 & 0x80u) == 0) & v266;
    v56[v268] = v310;
    v244 = __OFADD__(v268++, 1);
    if (v244)
    {
      __break(1u);
      break;
    }
  }

  (*(v293 + 8))(v17, v306);
  if (__OFADD__(v304, v53))
  {
    __break(1u);
    goto LABEL_230;
  }

  v48 = v144 & 0xFFFFFFFFFFFFFFFLL;
  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v304 + v53, v266 & 1);
  (*(v289 + 8))(v291, v290);
  v145 = *((v144 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  *v292 = v145;
  v194 = v9;
  v195 = rawBits;
  v63 = v300;
LABEL_189:
  if (__OFSUB__(v304, v194))
  {
    __break(1u);
    goto LABEL_218;
  }

  v48 = v195 >> 16;
  v53 = v297 >> 16;
  v17 = v304 + v9 - v63 + (v297 >> 16) - v194;
  v269 = (v195 >> 8) & 0x3F;
  if (!v269)
  {
    if (v48 >= v9)
    {
      goto LABEL_195;
    }

LABEL_192:
    if (v17 == v53)
    {
      return;
    }

LABEL_215:
    v62[1] = (v17 << 16) | 5;
    return;
  }

  if (v269 + v48 < v9)
  {
    goto LABEL_192;
  }

LABEL_195:
  if (v48 == v17)
  {
    v270 = 0;
    v271 = v195 & 0xFFFFFFFFFFFF0000;
    goto LABEL_209;
  }

  if ((v144 & 0x1000000000000000) != 0)
  {
    goto LABEL_218;
  }

  if ((v144 & 0x2000000000000000) != 0)
  {
    v310 = v145;
    v311 = v144 & 0xFFFFFFFFFFFFFFLL;
    if (v48 + 1 != (HIBYTE(v144) & 0xF))
    {
      v274 = *(&v310 + v48);
      goto LABEL_206;
    }

LABEL_208:
    v271 = v195 & 0xFFFFFFFFFFFF0000;
    v270 = 1;
LABEL_209:
    v271 |= v270 << 8;
    goto LABEL_210;
  }

  if ((v145 & 0x1000000000000000) != 0)
  {
    v272 = ((v144 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v273 = v145 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v272 = _StringObject.sharedUTF8.getter(v145, v144);
    v195 = rawBits;
  }

  if (v48 + 1 == v273)
  {
    goto LABEL_208;
  }

  if (!v272)
  {
LABEL_256:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v274 = *&v272[v48];
LABEL_206:
  if (v274 != 2573 && (v274 & 0x80808080) == 0)
  {
    goto LABEL_208;
  }

LABEL_218:
  v270 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v48);
  LOBYTE(v195) = rawBits;
  v271 = rawBits & 0xFFFFFFFFFFFF0000;
  if (v270 <= 63)
  {
    goto LABEL_209;
  }

LABEL_210:
  v275 = v271 | 5;
  if ((v195 & 2) != 0 && (v48 < v9 || _StringGuts.isOnGraphemeClusterBoundary(_:)((v271 | 5))))
  {
    v275 = v271 | 7;
  }

  *v62 = v275;
  if (v17 != v53)
  {
    goto LABEL_215;
  }
}

uint64_t Substring.init<A, B>(decoding:as:)(uint64_t *a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v10 != &type metadata for Unicode.UTF8)
  {
    static String._fromCodeUnits<A, B>(_:encoding:repair:)(a1, v10, 1, a3);
    if (!v22)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](v9, v10);
  (*(*(a5 + 8) + 72))(v25, closure #1 in String.init<A, B>(decoding:as:)partial apply);
  if (v25[1])
  {
LABEL_9:
    (*(v8 + 8))(a1, a3);
    return 15;
  }

  (*(v8 + 16))(v12, a1, a3);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, _ss19_HasContiguousBytes_pMR);
  if ((swift_dynamicCast(v23, v12, a3, v13, 6uLL, v14, v15, v16, v23[0]) & 1) == 0)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    outlined destroy of _HasContiguousBytes?(v23, &_ss19_HasContiguousBytes_pSgMd, _ss19_HasContiguousBytes_pSgMR);
LABEL_8:
    static String._fromNonContiguousUnsafeBitcastUTF8Repairing<A>(_:)(a1, a3, a5);
    goto LABEL_9;
  }

  _ss9CodingKey_pWOb_0(v23, v25);
  v17 = v26;
  v18 = v27;
  __swift_project_boxed_opaque_existential_0Tm(v25, v26);
  if (((*(v18 + 16))(v17, v18) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    goto LABEL_8;
  }

  (*(v8 + 8))(a1, a3);
  v19 = v26;
  v20 = v27;
  __swift_project_boxed_opaque_existential_0Tm(v25, v26);
  (*(v20 + 8))(v23, closure #2 in String.init<A, B>(decoding:as:), 0, &type metadata for String, v19, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return 15;
}

uint64_t Substring.init<A>(decodingCString:as:)(char *a1, ValueMetadata *a2, ValueMetadata *a3, int **a4)
{
  v75 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.CodeUnit);
  v8 = v7;
  v9 = *(swift_getAssociatedConformanceWitness(a4, a3, v7, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: FixedWidthInteger) + 8);
  v10 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v60[-v14];
  v16 = swift_checkMetadataState(0, v8);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v25 = &v60[-v24];
  if (a3 == &type metadata for Unicode.UTF8)
  {
    String.init(cString:)(a1, _swift_stdlib_strlen_unsigned);
    return 15;
  }

  if (a3 == &type metadata for Unicode.UTF16)
  {
    if (v75 != &type metadata for Unicode.UTF8)
    {
      if (*a1)
      {
        v31 = a1 + 2;
        v32 = a1;
        do
        {
          v33 = *v31;
          v31 += 2;
          v32 += 2;
        }

        while (v33);
      }

      else
      {
        v32 = a1;
      }

      v39 = v32 - a1;
      if (v39 > -2)
      {
        _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0H0O5UTF16OTt2g5(a1, v39 / 2, v75, 1);
        if (!v40)
        {
          goto LABEL_49;
        }

        return 15;
      }

      goto LABEL_30;
    }

    if (!a1)
    {
      goto LABEL_49;
    }

    v34 = _swift_stdlib_strlen_unsigned(a1);
    if ((v34 & 0x8000000000000000) != 0)
    {
      goto LABEL_30;
    }

    v28 = v34;
    goto LABEL_23;
  }

  if (v75 == &type metadata for Unicode.UTF8)
  {
    v26 = v23;
    v27 = _swift_stdlib_strlen_unsigned(a1);
    if (v27 < 0)
    {
      goto LABEL_30;
    }

    v28 = v27;
    v29 = *(v26 + 72);
    if (v29 != 1)
    {
      if ((v27 * v29) >> 64 != (v27 * v29) >> 63)
      {
        __break(1u);
LABEL_51:
        if (!v29)
        {
          goto LABEL_52;
        }

        LODWORD(v62) = 0;
        v61 = 2142;
        v60[0] = 2;
LABEL_30:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v29 < 1 && v29 != -1)
      {
        goto LABEL_51;
      }

      v28 = v27 * v29;
      if (v27 * v29 < 0)
      {
        goto LABEL_30;
      }
    }

LABEL_23:
    v35 = validateUTF8(_:)(a1, v28);
    if ((v35 & 0x8000000000000000) != 0)
    {
      repairUTF8(_:firstKnownBrokenRange:)(a1, v28, v36, v37);
    }

    else
    {
      specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v28, v35 & 1, v38);
    }

    return 15;
  }

  v70 = *(v9 + 64);
  v71 = v9 + 64;
  v67 = v23;
  v68 = *(v23 + 16);
  v69 = v23 + 16;
  v66 = v9 + 128;
  v64 = v9 + 96;
  v73 = (v23 + 8);
  v74 = v22;
  v61 = v10 + 24;
  v62 = v9 + 120;
  for (i = a1; ; i = &v72[*(v67 + 72)])
  {
    v72 = i;
    v45 = v74;
    v68(v25);
    if ((v70)(v45, v9))
    {
      break;
    }

    LODWORD(v65) = v70();
    v46 = (*(v9 + 128))(v74, v9);
    if ((v65 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (v46 > 64)
    {
      goto LABEL_32;
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v74, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
    (*(v10 + 24))(v15);
    v50 = (*(*(*(v9 + 32) + 8) + 32))(v25, v20);
    v65 = *v73;
    (v65)(v20, v74);
    if (v50)
    {
      v51 = (*(v9 + 120))(v74, v9);
      (v65)(v25, v74);
      if (!v51)
      {
        goto LABEL_45;
      }
    }

    else
    {
      (v65)(v25, v74);
    }

LABEL_33:
    ;
  }

  v46 = (*(v9 + 128))(v74, v9);
LABEL_41:
  if (v46 >= 64)
  {
LABEL_32:
    v76[0] = 0;
    v65 = *(v9 + 96);
    v43 = lazy protocol witness table accessor for type Int and conformance Int(v46, v47, v48);
    v44 = v74;
    v65(v76, &type metadata for Int, v43, v74, v9);
    v63 = (*(*(*(v9 + 16) + 8) + 8))(v25, v20, v44);
    v65 = *v73;
    (v65)(v20, v44);
    (v65)(v25, v44);
    if (v63)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  v52 = (*(v9 + 120))(v74, v9);
  (*v73)(v25, v74);
  if (v52)
  {
    goto LABEL_33;
  }

LABEL_45:
  v53 = *(v67 + 72);
  if (!v53 || v72 - a1 == 0x8000000000000000 && v53 == -1)
  {
LABEL_52:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v76[0] = UnsafeBufferPointer.init(start:count:)(a1, (v72 - a1) / v53);
  v76[1] = v54;
  v57 = type metadata accessor for UnsafeBufferPointer(0, v74, v55, v56);
  swift_getWitnessTable(protocol conformance descriptor for UnsafeBufferPointer<A>, v57, v58);
  static String._fromCodeUnits<A, B>(_:encoding:repair:)(v76, v75, 1, v57);
  if (!v59)
  {
LABEL_49:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 15;
}

void Substring.withCString<A>(_:)(void (*a1)(uint64_t), uint64_t a2, Swift::UInt64 a3, Swift::String::Index a4, Swift::UInt64 a5, unint64_t a6)
{
  v9 = Substring.description.getter(a3, a4, a5, a6);
  v11 = v10;
  String.withCString<A>(_:)(a1, a2, v9, v10);
  v11;
}

void Substring.withCString<A, B>(encodedAs:_:)(ValueMetadata *a1@<X0>, void (*a2)(unint64_t)@<X1>, uint64_t a3@<X2>, Swift::UInt64 a4@<X3>, uint64_t (**a5)(char *, uint64_t)@<X7>, uint64_t a6@<X8>, Swift::String::Index x4_0@<X4>, Swift::UInt64 x5_0@<X5>, unint64_t a9@<X6>, Class *a7, uint64_t a8)
{
  v17 = Substring.description.getter(a4, x4_0, x5_0, a9);
  v19 = v18;
  if (a1 == &type metadata for Unicode.UTF8)
  {
    MEMORY[0x1EEE9AC00](v17, v18);
    v21[2] = a5;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a2;
    v21[6] = a3;
    String.withCString<A>(_:)(closure #1 in String.withCString<A, B>(encodedAs:_:)partial apply, v21, v20, v19);
    v19;
  }

  else
  {
    String._slowWithCString<A, B>(encodedAs:_:)(a2, a3, v17, v18, a5, a7, a8, a6);
    v19;
  }
}

Swift::Int Substring.hashValue.getter(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = 0u;
  v9 = 0u;
  v5 = 0;
  v6 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  _StringGutsSlice._normalizedHash(into:)(&v5, a3, a4, a1 >> 16, a2 >> 16);
  return Hasher._finalize()();
}

unint64_t protocol witness for StringProtocol.utf8.getter in conformance Substring@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  return v2;
}

Swift::String __swiftcall Substring.lowercased()()
{
  v4 = Substring.lowercased()(v0, v1, v2, v3, String.lowercased());
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t protocol witness for StringProtocol.lowercased() in conformance Substring(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5._rawBits = v3[1];
  v6 = Substring.description.getter(*v3, v5, v3[2], v3[3]);
  v8 = v7;
  v9 = a3(v6);
  v8;
  return v9;
}

Swift::String __swiftcall Substring.uppercased()()
{
  v4 = Substring.lowercased()(v0, v1, v2, v3, String.uppercased());
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t Substring.lowercased()(Swift::UInt64 a1, Swift::String::Index a2, Swift::UInt64 a3, unint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = Substring.description.getter(a1, a2, a3, a4);
  v8 = v7;
  v9 = a5(v6);
  v8;
  return v9;
}

uint64_t protocol witness for StringProtocol.init<A, B>(decoding:as:) in conformance Substring@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = Substring.init<A, B>(decoding:as:)(a1, a2, a3, a4, a5);
  *a6 = 15;
  a6[1] = v8;
  a6[2] = v9;
  a6[3] = v10;
  return result;
}

uint64_t protocol witness for StringProtocol.init(cString:) in conformance Substring@<X0>(uint64_t *a1@<X8>, char *a2@<X0>)
{
  result = specialized Substring.init(cString:)(a2);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t protocol witness for StringProtocol.init<A>(decodingCString:as:) in conformance Substring@<X0>(char *a1@<X0>, ValueMetadata *a2@<X1>, ValueMetadata *a3@<X2>, int **a4@<X3>, void *a5@<X8>)
{
  result = Substring.init<A>(decodingCString:as:)(a1, a2, a3, a4);
  *a5 = 15;
  a5[1] = v7;
  a5[2] = v8;
  a5[3] = v9;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Substring()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  specialized Hasher.init(_seed:)(0, v6);
  _StringGutsSlice._normalizedHash(into:)(v6, v3, v4, v1 >> 16, v2 >> 16);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Substring(unint64_t *a1, ValueMetadata *a2)
{
  v4 = *v2;
  v5 = v2[1];
  if (a2 == &type metadata for String)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v5) & 0xF;
    }

    else
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    v6 = 0;
  }

  else
  {
    v6 = v4 >> 16;
    v7 = v5 >> 16;
    v4 = v2[2];
    v5 = v2[3];
  }

  _StringGutsSlice._normalizedHash(into:)(a1, v4, v5, v6, v7);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Substring(uint64_t a1, ValueMetadata *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  specialized Hasher.init(_seed:)(a1, v13);
  if (a2 == &type metadata for String)
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v9 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v10 = v5;
    v11 = v4;
    v8 = 0;
  }

  else
  {
    v8 = v5 >> 16;
    v9 = v4 >> 16;
    v10 = v6;
    v11 = v7;
  }

  _StringGutsSlice._normalizedHash(into:)(v13, v10, v11, v8, v9);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance Substring(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  v10 = v4 >> 16;
  v11 = v5 >> 16;
  v12 = *a2 >> 16;
  v13 = a2[1] >> 16;
  if (v6 == v8 && v7 == v9 && v10 == v12 && v11 == v13)
  {
    return 0;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)(v6, v7, v10, v11, v8, v9, v12, v13, 1) & 1;
  }
}

uint64_t protocol witness for static Comparable.<= infix(_:_:) in conformance Substring(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = v6 >> 16;
  v11 = v7 >> 16;
  v12 = v2 >> 16;
  v13 = v3 >> 16;
  v14 = 1;
  if (v8 != v4 || v9 != v5 || v10 != v12 || v11 != v13)
  {
    v14 = _stringCompareInternal(_:_:_:_:expecting:)(v8, v9, v10, v11, v4, v5, v12, v13, 1) ^ 1;
  }

  return v14 & 1;
}

uint64_t protocol witness for static Comparable.>= infix(_:_:) in conformance Substring(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  v10 = v4 >> 16;
  v11 = v5 >> 16;
  v12 = *a2 >> 16;
  v13 = a2[1] >> 16;
  v14 = 1;
  if (v6 != v8 || v7 != v9 || v10 != v12 || v11 != v13)
  {
    v14 = _stringCompareInternal(_:_:_:_:expecting:)(v6, v7, v10, v11, v8, v9, v12, v13, 1) ^ 1;
  }

  return v14 & 1;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance Substring(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = v6 >> 16;
  v11 = v7 >> 16;
  v12 = v2 >> 16;
  v13 = v3 >> 16;
  if (v8 == v4 && v9 == v5 && v10 == v12 && v11 == v13)
  {
    return 0;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)(v8, v9, v10, v11, v4, v5, v12, v13, 1) & 1;
  }
}

void (*protocol witness for Collection.subscript.read in conformance Substring(uint64_t *a1, Swift::UInt64 *a2))(uint64_t a1)
{
  v4 = Substring.subscript.getter(*a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  a1[1] = v5;
  a1[2] = v5;
  *a1 = v4;
  return protocol witness for Collection.subscript.read in conformance Substring;
}

unint64_t protocol witness for Collection.subscript.getter in conformance Substring@<X0>(Swift::UInt64 *a1@<X0>, Swift::UInt64 *a2@<X8>)
{
  v4._rawBits = a1[1];
  *a2 = specialized Substring.subscript.getter(*a1, v4, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v6;

  return v6;
}

Swift::UInt64 Substring.subscript.getter(Swift::UInt64 a1, Swift::String::Index a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = specialized Substring.subscript.getter(a1, a2, a3, a4, a5, a6);
  v7;
  return v6;
}

unint64_t protocol witness for Collection.indices.getter in conformance Substring@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[3];
  *a1 = *v1;
  v4 = *(v1 + 1);
  *(a1 + 8) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  return v3;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance Substring@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X8>)
{
  result._rawBits = Substring.index(_:offsetBy:)(a1->_rawBits, a2)._rawBits;
  a3->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance Substring@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = Substring.index(_:offsetBy:limitedBy:)(a1->_rawBits, a2, a3->_rawBits);
  *a4 = v6.value._rawBits;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance Substring@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *v3, v3[1], v3[2], v3[3]);
  *a3 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance Substring(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, void, void))
{
  result = a4(*a1, *v4, v4[1], v4[2], v4[3]);
  *a1 = result;
  return result;
}

Swift::UInt64 _StringGuts._opaqueCharacterStride(endingAt:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x1000000000000000) == 0)
  {
    if ((a5 & 0x2000000000000000) == 0)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v7 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if (a2 < a1)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter(a4, a5);
        if (a2 < a1)
        {
LABEL_5:
          v8 = a1;
          do
          {
            v9 = v7[--v8] & 0xC0;
          }

          while (v9 == 128);
          v10 = _decodeScalar(_:startingAt:)(v7, a2, v8);
          if (v8 <= a2)
          {
            v20 = v8;
            return a1 - v20;
          }

          v12 = v10;
          v13 = v7 - 2;
          v104 = xmmword_18071DD50;
          while (1)
          {
            v20 = v8;
            v64 = v12;
            v65 = v8 - 1;
            v66 = v7[--v8] & 0xC0;
            if (v66 == 128)
            {
              v67 = v20;
              do
              {
                v68 = v13[v67--] & 0xC0;
              }

              while (v68 == 128);
              v8 = v67 - 1;
            }

            v69 = _decodeScalar(_:startingAt:)(v7, v11, v8);
            v12 = v69;
            if (v69 == 13 && v64 == 10)
            {
              goto LABEL_124;
            }

            v70 = vdupq_n_s32(v69);
            if (((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(vaddq_s32(v70, v104), xmmword_18071DD70), vcgtq_u32(vaddq_s32(v70, xmmword_18071DD60), xmmword_18071DD80)))) & 1) != 0 || v69 - 65438 > 0xFFFFFF62 || v69 <= 0x2FF) && hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(v64))
            {
              return a1 - v20;
            }

            v71 = Unicode._GraphemeBreakProperty.init(from:)(v12);
            v72 = Unicode._GraphemeBreakProperty.init(from:)(v64);
            if (v71)
            {
              if (v71 == 1)
              {
                return a1 - v20;
              }

              if (v72 > 8u)
              {
                if (v72 > 0xAu)
                {
                  if (v72 == 11)
                  {
                    if (v71 > 0xBu)
                    {
                      goto LABEL_156;
                    }

                    v73 = 1 << v71;
                    v74 = 2224;
LABEL_206:
                    if ((v73 & v74) == 0)
                    {
                      goto LABEL_156;
                    }

                    goto LABEL_124;
                  }

                  if (v72 == 12)
                  {
                    goto LABEL_124;
                  }
                }

                else
                {
                  if (v72 == 9)
                  {
                    goto LABEL_124;
                  }

                  if (v72 == 10)
                  {
                    if (v71 > 0xBu)
                    {
                      goto LABEL_156;
                    }

                    v73 = 1 << v71;
                    v74 = 3296;
                    goto LABEL_206;
                  }
                }

                goto LABEL_165;
              }

              if (v72 > 4u)
              {
                if (v72 != 5 && v72 != 6)
                {
                  goto LABEL_165;
                }
              }

              else
              {
                if (v72 == 2)
                {
                  goto LABEL_124;
                }

                if (v72 != 4)
                {
                  if (v72 == 1)
                  {
                    return a1 - v20;
                  }

LABEL_165:
                  if (v71 != 7)
                  {
                    if (v71 == 8)
                    {
                      if (v72 != 8)
                      {
                        goto LABEL_156;
                      }

                      if ((v7[v65] & 0xC0) == 0x80)
                      {
                        v98 = v20;
                        do
                        {
                          v99 = v13[v98--] & 0xC0;
                        }

                        while (v99 == 128);
                        v65 = v98 - 1;
                      }

                      _decodeScalar(_:startingAt:)(v7, v11, v65);
                      if (v65 > a2)
                      {
                        v100 = 0;
                        do
                        {
                          v101 = v65 - 1;
                          if ((v7[v65 - 1] & 0xC0) == 0x80)
                          {
                            do
                            {
                              v102 = v13[v65--] & 0xC0;
                            }

                            while (v102 == 128);
                            v101 = v65 - 1;
                          }

                          v103 = _decodeScalar(_:startingAt:)(v7, v11, v101);
                          result = Unicode._GraphemeBreakProperty.init(from:)(v103);
                          if (result != 8)
                          {
                            break;
                          }

                          v63 = __OFADD__(v100++, 1);
                          if (v63)
                          {
                            goto LABEL_231;
                          }

                          v65 = v101;
                        }

                        while (v101 > a2);
                        if (v100)
                        {
                          return a1 - v20;
                        }
                      }
                    }

                    else
                    {
                      if (v71 != 12 || v72 != 3)
                      {
                        goto LABEL_156;
                      }

                      if ((v7[v65] & 0xC0) == 0x80)
                      {
                        v78 = v20;
                        do
                        {
                          v79 = v13[v78--] & 0xC0;
                        }

                        while (v79 == 128);
                        v65 = v78 - 1;
                      }

                      _decodeScalar(_:startingAt:)(v7, v11, v65);
                      if (v65 <= a2)
                      {
                        return a1 - v20;
                      }

                      while (1)
                      {
                        v80 = v65 - 1;
                        if ((v7[v65 - 1] & 0xC0) == 0x80)
                        {
                          do
                          {
                            v81 = v13[v65--] & 0xC0;
                          }

                          while (v81 == 128);
                          v80 = v65 - 1;
                        }

                        v82 = _decodeScalar(_:startingAt:)(v7, v11, v80);
                        v83 = Unicode._GraphemeBreakProperty.init(from:)(v82);
                        if (v83 != 2)
                        {
                          break;
                        }

                        v65 = v80;
                        if (v80 <= a2)
                        {
                          return a1 - v20;
                        }
                      }

                      if (v83 != 3)
                      {
                        return a1 - v20;
                      }
                    }
                  }

                  goto LABEL_124;
                }
              }

              if (v71 != 4 && v71 != 7)
              {
                goto LABEL_156;
              }
            }

            else
            {
              if (v72 > 0xCu)
              {
                goto LABEL_156;
              }

              if (((1 << v72) & 0x1204) == 0)
              {
                if (((1 << v72) & 3) != 0)
                {
                  return a1 - v20;
                }

LABEL_156:
                if (_swift_stdlib_isInCB_Consonant(v64) && (v71 == 12 || v71 == 2))
                {
                  if (_swift_stdlib_isInCB_Consonant(v12))
                  {
                    HIDWORD(v77) = v12 - 2381;
                    LODWORD(v77) = v12 - 2381;
                    v76 = v77 >> 7;
                    if (v76 > 8 || ((1 << v76) & 0x15B) == 0)
                    {
                      return a1 - v20;
                    }
                  }

                  else if (v12 == 8204)
                  {
                    return a1 - v20;
                  }

                  if ((v7[v65] & 0xC0) == 0x80)
                  {
                    v84 = v20;
                    do
                    {
                      v85 = v13[v84--] & 0xC0;
                    }

                    while (v85 == 128);
                    v65 = v84 - 1;
                  }

                  v86 = _decodeScalar(_:startingAt:)(v7, v75, v65);
                  if (v65 > a2)
                  {
                    HIDWORD(v88) = v86 - 2381;
                    LODWORD(v88) = v86 - 2381;
                    v89 = ((v88 >> 7) < 9) & (0x15Bu >> (v88 >> 7));
                    while (2)
                    {
                      v90 = v65;
                      while (1)
                      {
                        v65 = v90 - 1;
                        if ((v7[v90 - 1] & 0xC0) == 0x80)
                        {
                          do
                          {
                            v91 = v13[v90--] & 0xC0;
                          }

                          while (v91 == 128);
                          v65 = v90 - 1;
                        }

                        v92 = _decodeScalar(_:startingAt:)(v7, v87, v65);
                        if (_swift_stdlib_isInCB_Consonant(v92))
                        {
                          if ((v89 & 1) == 0)
                          {
                            return a1 - v20;
                          }

                          goto LABEL_124;
                        }

                        v93 = Unicode._GraphemeBreakProperty.init(from:)(v92);
                        if (v93 != 2 && v93 != 12)
                        {
                          return a1 - v20;
                        }

                        v94 = Unicode.Scalar._isInCBExtend.getter(v92);
                        HIDWORD(v95) = v92 - 2381;
                        LODWORD(v95) = v92 - 2381;
                        v96 = ((v95 >> 7) < 9) & (0x15Bu >> (v95 >> 7));
                        if ((v94 & 1) == 0)
                        {
                          break;
                        }

                        if (v65 <= a2)
                        {
                          v97 = 1;
                        }

                        else
                        {
                          v97 = v96;
                        }

                        v90 = v65;
                        if (v97)
                        {
                          return a1 - v20;
                        }
                      }

                      if (v65 <= a2)
                      {
                        LOBYTE(v96) = 0;
                      }

                      LOBYTE(v89) = 1;
                      if (v96)
                      {
                        continue;
                      }

                      break;
                    }
                  }
                }

                return a1 - v20;
              }
            }

LABEL_124:
            v20 = v8;
            if (v8 <= a2)
            {
              return a1 - v20;
            }
          }
        }
      }

LABEL_229:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v105[0] = a4;
    v105[1] = a5 & 0xFFFFFFFFFFFFFFLL;
    if (a2 >= a1)
    {
      goto LABEL_229;
    }

    v14 = a1 - 1;
    if ((*(v105 + a1 - 1) & 0xC0) == 0x80)
    {
      v15 = a1;
      do
      {
        v16 = v104.i8[v15-- + 14] & 0xC0;
      }

      while (v16 == 128);
      v14 = v15 - 1;
    }

    v17 = _decodeScalar(_:startingAt:)(v105, a2, v14);
    if (v14 <= a2)
    {
      v20 = v14;
      return a1 - v20;
    }

    v19 = v17;
    v104 = xmmword_18071DD50;
    while (1)
    {
      v20 = v14;
      v22 = v19;
      v23 = v14 - 1;
      v24 = *(v105 + --v14) & 0xC0;
      if (v24 == 128)
      {
        v25 = v20;
        do
        {
          v26 = v104.i8[v25-- + 14] & 0xC0;
        }

        while (v26 == 128);
        v14 = v25 - 1;
      }

      v27 = _decodeScalar(_:startingAt:)(v105, v18, v14);
      v19 = v27;
      if (v27 == 13 && v22 == 10)
      {
        goto LABEL_20;
      }

      v28 = vdupq_n_s32(v27);
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(vaddq_s32(v28, v104), xmmword_18071DD70), vcgtq_u32(vaddq_s32(v28, xmmword_18071DD60), xmmword_18071DD80)))) & 1) != 0 || v27 - 65438 > 0xFFFFFF62 || v27 <= 0x2FF)
      {
        v29 = vdupq_n_s32(v22);
        if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(vaddq_s32(v29, v104), xmmword_18071DD70), vcgtq_u32(vaddq_s32(v29, xmmword_18071DD60), xmmword_18071DD80)))) & 1) != 0 || v22 - 65438 > 0xFFFFFF62 || v22 < 0x300)
        {
          return a1 - v20;
        }
      }

      v30 = Unicode._GraphemeBreakProperty.init(from:)(v27);
      v31 = Unicode._GraphemeBreakProperty.init(from:)(v22);
      if (!v30)
      {
        if (v31 <= 0xCu)
        {
          if (((1 << v31) & 0x1204) != 0)
          {
            goto LABEL_20;
          }

          if (((1 << v31) & 3) != 0)
          {
            return a1 - v20;
          }
        }

        goto LABEL_54;
      }

      if (v30 == 1)
      {
        return a1 - v20;
      }

      if (v31 <= 8u)
      {
        break;
      }

      if (v31 > 0xAu)
      {
        if (v31 != 11)
        {
          if (v31 == 12)
          {
            goto LABEL_20;
          }

LABEL_63:
          if (v30 == 7)
          {
            goto LABEL_20;
          }

          if (v30 == 8)
          {
            if (v31 == 8)
            {
              if ((*(v105 + v23) & 0xC0) == 0x80)
              {
                v57 = v20;
                do
                {
                  v58 = v104.i8[v57-- + 14] & 0xC0;
                }

                while (v58 == 128);
                v23 = v57 - 1;
              }

              _decodeScalar(_:startingAt:)(v105, v18, v23);
              if (v23 > a2)
              {
                v59 = 0;
                do
                {
                  v60 = v23 - 1;
                  if ((*(v105 + v23 - 1) & 0xC0) == 0x80)
                  {
                    do
                    {
                      v61 = v104.i8[v23-- + 14] & 0xC0;
                    }

                    while (v61 == 128);
                    v60 = v23 - 1;
                  }

                  v62 = _decodeScalar(_:startingAt:)(v105, v18, v60);
                  result = Unicode._GraphemeBreakProperty.init(from:)(v62);
                  if (result != 8)
                  {
                    break;
                  }

                  v63 = __OFADD__(v59++, 1);
                  if (v63)
                  {
                    __break(1u);
LABEL_231:
                    __break(1u);
                    return result;
                  }

                  v23 = v60;
                }

                while (v60 > a2);
                if (v59)
                {
                  return a1 - v20;
                }
              }

              goto LABEL_20;
            }
          }

          else if (v30 == 12 && v31 == 3)
          {
            if ((*(v105 + v23) & 0xC0) == 0x80)
            {
              v37 = v20;
              do
              {
                v38 = v104.i8[v37-- + 14] & 0xC0;
              }

              while (v38 == 128);
              v23 = v37 - 1;
            }

            _decodeScalar(_:startingAt:)(v105, v18, v23);
            if (v23 <= a2)
            {
              return a1 - v20;
            }

            while (1)
            {
              v39 = v23 - 1;
              if ((*(v105 + v23 - 1) & 0xC0) == 0x80)
              {
                do
                {
                  v40 = v104.i8[v23-- + 14] & 0xC0;
                }

                while (v40 == 128);
                v39 = v23 - 1;
              }

              v41 = _decodeScalar(_:startingAt:)(v105, v18, v39);
              v42 = Unicode._GraphemeBreakProperty.init(from:)(v41);
              if (v42 != 2)
              {
                break;
              }

              v23 = v39;
              if (v39 <= a2)
              {
                return a1 - v20;
              }
            }

            if (v42 != 3)
            {
              return a1 - v20;
            }

            goto LABEL_20;
          }

          goto LABEL_54;
        }

        if (v30 <= 0xBu)
        {
          v32 = 1 << v30;
          v33 = 2224;
LABEL_104:
          if ((v32 & v33) != 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        if (v31 == 9)
        {
          goto LABEL_20;
        }

        if (v31 != 10)
        {
          goto LABEL_63;
        }

        if (v30 <= 0xBu)
        {
          v32 = 1 << v30;
          v33 = 3296;
          goto LABEL_104;
        }
      }

LABEL_54:
      if (!_swift_stdlib_isInCB_Consonant(v22) || v30 != 12 && v30 != 2)
      {
        return a1 - v20;
      }

      if (_swift_stdlib_isInCB_Consonant(v19))
      {
        HIDWORD(v36) = v19 - 2381;
        LODWORD(v36) = v19 - 2381;
        v35 = v36 >> 7;
        if (v35 > 8 || ((1 << v35) & 0x15B) == 0)
        {
          return a1 - v20;
        }
      }

      else if (v19 == 8204)
      {
        return a1 - v20;
      }

      if ((*(v105 + v23) & 0xC0) == 0x80)
      {
        v43 = v20;
        do
        {
          v44 = v104.i8[v43-- + 14] & 0xC0;
        }

        while (v44 == 128);
        v23 = v43 - 1;
      }

      v45 = _decodeScalar(_:startingAt:)(v105, v34, v23);
      if (v23 <= a2)
      {
        return a1 - v20;
      }

      HIDWORD(v47) = v45 - 2381;
      LODWORD(v47) = v45 - 2381;
      v48 = ((v47 >> 7) < 9) & (0x15Bu >> (v47 >> 7));
LABEL_85:
      v49 = v23;
      while (1)
      {
        v23 = v49 - 1;
        if ((*(v105 + v49 - 1) & 0xC0) == 0x80)
        {
          do
          {
            v50 = v104.i8[v49-- + 14] & 0xC0;
          }

          while (v50 == 128);
          v23 = v49 - 1;
        }

        v51 = _decodeScalar(_:startingAt:)(v105, v46, v23);
        if (_swift_stdlib_isInCB_Consonant(v51))
        {
          break;
        }

        v52 = Unicode._GraphemeBreakProperty.init(from:)(v51);
        if (v52 != 2 && v52 != 12)
        {
          return a1 - v20;
        }

        v53 = Unicode.Scalar._isInCBExtend.getter(v51);
        HIDWORD(v54) = v51 - 2381;
        LODWORD(v54) = v51 - 2381;
        v55 = ((v54 >> 7) < 9) & (0x15Bu >> (v54 >> 7));
        if ((v53 & 1) == 0)
        {
          if (v23 <= a2)
          {
            LOBYTE(v55) = 0;
          }

          LOBYTE(v48) = 1;
          if ((v55 & 1) == 0)
          {
            return a1 - v20;
          }

          goto LABEL_85;
        }

        if (v23 <= a2)
        {
          v56 = 1;
        }

        else
        {
          v56 = v55;
        }

        v49 = v23;
        if (v56)
        {
          return a1 - v20;
        }
      }

      if ((v48 & 1) == 0)
      {
        return a1 - v20;
      }

LABEL_20:
      v20 = v14;
      if (v14 <= a2)
      {
        return a1 - v20;
      }
    }

    if (v31 > 4u)
    {
      if (v31 == 5 || v31 == 6)
      {
        goto LABEL_52;
      }
    }

    else
    {
      switch(v31)
      {
        case 2u:
          goto LABEL_20;
        case 4u:
LABEL_52:
          if (v30 == 4 || v30 == 7)
          {
            goto LABEL_20;
          }

          goto LABEL_54;
        case 1u:
          return a1 - v20;
      }
    }

    goto LABEL_63;
  }

  return _StringGuts._foreignOpaqueCharacterStride(endingAt:in:)(a1, a2, a4, a5);
}

uint64_t Substring.customMirror.getter@<X0>(Swift::UInt64 a1@<X0>, Swift::String::Index a2@<X1>, Swift::UInt64 a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 >> 16 || a2._rawBits >> 16 != v8)
  {
    v6 = specialized static String._copying(_:)(a1, a2, a3, a4);
    v5 = v9;
  }

  else
  {
    a4;
  }

  v27[0] = v6;
  v27[1] = v5;
  v25[0] = 0;
  v25[1] = 0;
  v10 = static Mirror._superclassIterator<A>(_:_:)(v27, v25, &type metadata for String);
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMR);
  v14 = swift_allocObject(v13, 0x40, 7uLL);
  v14[6] = specialized closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:);
  v14[7] = 0;
  v15 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v16 = swift_allocObject(v15, 0x18, 7uLL);
  v16[2] = 0;
  v17 = swift_allocObject(v15, 0x18, 7uLL);
  v17[2] = 0;
  v14[2] = v16;
  v14[3] = &protocol witness table for _IndexBox<A>;
  v14[4] = v17;
  v14[5] = &protocol witness table for _IndexBox<A>;
  v26[0] = v6;
  v26[1] = v5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v25, v26, &type metadata for String, v18, 6uLL, v19, v20, v21, v24);
  v23 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  *a5 = &type metadata for String;
  *(a5 + 8) = v14;
  *(a5 + 16) = 9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v12;
  *(a5 + 40) = v23;
  return result;
}

uint64_t Substring.debugDescription.getter(Swift::UInt64 a1, Swift::String::Index a2, Swift::UInt64 a3, unint64_t a4)
{
  v4 = a4;
  v5 = HIBYTE(a4) & 0xF;
  v224 = a3;
  v6 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v7 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 >> 16 || a2._rawBits >> 16 != v7)
  {
    v8 = specialized static String._copying(_:)(a1, a2, a3, a4);
    v4 = v9;
    v5 = HIBYTE(v9) & 0xF;
    v224 = v8;
    v6 = v8 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    a4;
  }

  v232.value._countAndFlagsBits = 34;
  v232.value._object = 0xE100000000000000;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v222 = v4;
  v223 = v10;
  if (!v10)
  {
LABEL_218:
    v230 = 34;
    v231 = 0xE100000000000000;
    countAndFlagsBits = v232.value._countAndFlagsBits;
    object = v232.value._object;
    v173 = (v232.value._object >> 56) & 0xF;
    if ((v232.value._object & 0x2000000000000000) == 0)
    {
      v173 = v232.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v173)
    {
LABEL_270:
      v4;
      goto LABEL_273;
    }

    while (1)
    {
      v31 = v230;
      v28 = v231;
      v179 = specialized Collection.first.getter(v230, v231);
      if ((v179 & 0x100000000) != 0)
      {
        goto LABEL_279;
      }

      v228 = countAndFlagsBits;
      v229 = object;
      v232.value._countAndFlagsBits = 0;
      v232.value._object = 0xE000000000000000;
      v180 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v179);
      v182 = v181;
      _StringGuts.append(_:)(v180, v181, v183, v184, v185, v186, v187, v188, v189, v190);
      v182;
      v23 = v228;
      v22 = v229;
      v229;
      0xE000000000000000;
      v232.value._countAndFlagsBits = v23;
      v232.value._object = v22;
      v191 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v191 = v23;
      }

      v192 = 7;
      if (((v22 >> 60) & ((v23 & 0x800000000000000) == 0)) != 0)
      {
        v192 = 11;
      }

      v193._rawBits = v192 | (v191 << 16);
      v194._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(v193)._rawBits;
      rawBits = v194._rawBits;
      if (!(v194._rawBits >> 14))
      {
        break;
      }

      v196 = v194._rawBits >> 16;
      if (v194._rawBits >= 0x20000)
      {
        if ((v22 & 0x1000000000000000) == 0)
        {
          if ((v22 & 0x2000000000000000) != 0)
          {
            v228 = v23;
            v229 = (v22 & 0xFFFFFFFFFFFFFFLL);
            v198 = *&v227[v196];
          }

          else
          {
            if ((v23 & 0x1000000000000000) != 0)
            {
              v197 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v197 = _StringObject.sharedUTF8.getter(v23, v22);
              if (!v197)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v198 = *&v197[v196 - 2];
          }

          if (v198 != 2573 && (v198 & 0x8080) == 0)
          {
            v196 = 1;
LABEL_245:
            v200 = v196 << 8;
            goto LABEL_252;
          }
        }

        v196 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(rawBits >> 16);
      }

      if (v196 >= 64)
      {
        v200 = 63;
      }

      else
      {
        v200 = v196 << 8;
      }

LABEL_252:
      v22;
      v201._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(v193)._rawBits;
      if (!(v201._rawBits >> 14))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v202 = v201._rawBits;
      v22;
      if ((v22 & 0x1000000000000000) != 0)
      {
        v207 = String.UnicodeScalarView._foreignIndex(before:)(v202)._rawBits;
        v22;
      }

      else
      {
        if ((v22 & 0x2000000000000000) != 0)
        {
          v204 = 0;
          v228 = v23;
          v229 = (v22 & 0xFFFFFFFFFFFFFFLL);
          do
          {
            v206 = v227[(v202 >> 16) + 1 + v204--] & 0xC0;
          }

          while (v206 == 128);
        }

        else
        {
          if ((v23 & 0x1000000000000000) != 0)
          {
            v203 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v203 = _StringObject.sharedUTF8.getter(v23, v22);
          }

          v204 = 0;
          do
          {
            v205 = v203[(v202 >> 16) - 1 + v204--] & 0xC0;
          }

          while (v205 == 128);
        }

        v22;
        v207 = (v202 - -65536 * v204) & 0xFFFFFFFFFFFF0000;
      }

      if (((rawBits - (v196 << 16)) & 0xFFFFFFFFFFFF0000 | v200) >> 14 >= v207 >> 14)
      {
        goto LABEL_272;
      }

      v228 = v23;
      v229 = v22;
      specialized RangeReplaceableCollection<>.removeLast()();
      v209 = v228;
      v208 = v229;
      v229;
      0xE000000000000000;
      v228 = v209;
      v229 = v208;
      v208;
      v210 = specialized RangeReplaceableCollection<>.removeLast()();
      0xE000000000000000;
      v232.value._countAndFlagsBits = v228;
      v232.value._object = v229;
      v211 = Unicode.Scalar._escaped(asASCII:)(1);
      v174 = v211.value._object;
      if (v211.value._object)
      {
        v175 = v211.value._countAndFlagsBits;
      }

      else
      {
        v175 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v210);
      }

      v212 = v174;
      v4 = v222;
      v176._rawBits = 15;
      v177._rawBits = 15;
      specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(v176, v177, v175, v212);
      v212;
      countAndFlagsBits = v232.value._countAndFlagsBits;
      object = v232.value._object;
      v178 = (v232.value._object >> 56) & 0xF;
      if ((v232.value._object & 0x2000000000000000) == 0)
      {
        v178 = v232.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v178)
      {
        goto LABEL_270;
      }
    }

    if (_swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v196 = 0;
    goto LABEL_245;
  }

  v218 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v219 = v4 & 0xFFFFFFFFFFFFFFLL;
  v4;
  v12 = 0;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      v18 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v12 << 16));
      scalarLength = v18.scalarLength;
      value = v18._0._value;
    }

    else
    {
      if ((v4 & 0x2000000000000000) != 0)
      {
        v230 = v224;
        v231 = v219;
        v15 = &v230;
      }

      else
      {
        v15 = v218;
        if ((v224 & 0x1000000000000000) == 0)
        {
          v15 = _StringObject.sharedUTF8.getter(v224, v4);
        }
      }

      value = _decodeScalar(_:startingAt:)(v15, v11, v12);
    }

    v19 = value;
    v12 += scalarLength;
    v20 = Unicode.Scalar._escaped(asASCII:)(0);
    if (!v20.value._object)
    {
      v42 = v232.value._countAndFlagsBits;
      v41 = v232.value._object;
      if (v13)
      {
        LODWORD(v230) = 0;
        v43 = specialized BidirectionalCollection.last.getter(v232.value._countAndFlagsBits, v232.value._object);
        if ((v43 & 0x100000000) != 0)
        {
LABEL_279:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (!_GraphemeBreakingState.shouldBreak(between:and:)(v43, v19))
        {
          v95 = Unicode.Scalar._escaped(asASCII:)(1);
          v94 = v95.value._object;
          if (v95.value._object)
          {
            v96 = v95.value._countAndFlagsBits;
          }

          else
          {
            v96 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v19);
          }

          v97 = v94;
          v139 = HIBYTE(v41) & 0xF;
          if ((v41 & 0x2000000000000000) == 0)
          {
            v139 = *&v42 & 0xFFFFFFFFFFFFLL;
          }

          if (!v139 && (*&v42 & ~v41 & 0x2000000000000000) == 0)
          {
            v41;
            v232.value._countAndFlagsBits = v96;
            v232.value._object = v97;
            goto LABEL_191;
          }

          if ((v41 & 0x2000000000000000) == 0)
          {
            if ((v94 & 0x2000000000000000) != 0)
            {
LABEL_189:
              v140 = HIBYTE(v97) & 0xF;
LABEL_190:
              v97;
              _StringGuts.append(_:)(v96, v97, 0, v140, v145, v146, v147, v148, v149, v150, v151, v152);
              swift_bridgeObjectRelease_n(v97, 2);
LABEL_191:
              v4 = v222;
              v13 = 1;
              goto LABEL_17;
            }

LABEL_182:
            v140 = v96 & 0xFFFFFFFFFFFFLL;
            goto LABEL_190;
          }

          if ((v94 & 0x2000000000000000) == 0)
          {
            goto LABEL_182;
          }

          v142 = specialized _SmallString.init(_:appending:)(*&v42, v41, v96, v94);
          if (v144)
          {
            goto LABEL_189;
          }

          v154 = v142;
          v103 = v143;
          v41;
          v97;
          v232.value._countAndFlagsBits = v154;
LABEL_125:
          v232.value._object = v103;
          goto LABEL_191;
        }
      }

      v230 = v42;
      v231 = v41;
      v232.value._countAndFlagsBits = 0;
      v232.value._object = 0xE000000000000000;
      v45 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v19);
      v46 = v44;
      v47 = (v44 & 0x2000000000000000) == 0;
      v48 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) != 0)
      {
        if ((v44 & 0x2000000000000000) != 0)
        {
          v49 = HIBYTE(v44) & 0xF;
          v112 = v49 + v48;
          if (v49 + v48 < 0x10)
          {
            v44;
            if (v49)
            {
              v131 = 0;
              v132 = 0;
              v133 = 8 * v48;
              v134 = 8 * v49;
              v135 = v41;
              v4 = v222;
              do
              {
                v136 = v46 >> (v131 & 0x38);
                if (v132 < 8)
                {
                  v136 = v45 >> v131;
                }

                v137 = (v136 << (v133 & 0x38)) | ((-255 << (v133 & 0x38)) - 1) & v135;
                v138 = (v136 << v133) | ((-255 << v133) - 1) & *&v42;
                if (v48 <= 7)
                {
                  v42 = v138;
                }

                else
                {
                  v135 = v137;
                }

                ++v48;
                v133 += 8;
                v131 += 8;
                ++v132;
              }

              while (v134 != v131);
            }

            else
            {
              v135 = v41;
              v4 = v222;
            }

            v41;
            0xE000000000000000;
            v153 = 0xE000000000000000;
            if (*&v42 & 0x8080808080808080 | v135 & 0x80808080808080)
            {
              v153 = 0xA000000000000000;
            }

            v230 = v42;
            v231 = v153 & 0xFF00000000000000 | (v112 << 56) | v135 & 0xFFFFFFFFFFFFFFLL;
            goto LABEL_16;
          }

          v226 = v12;
          v47 = 0;
          v51 = HIBYTE(v44) & 0xF;
          v221 = v45 & 0xFFFFFFFFFFFFLL;
          if ((v44 & 0x1000000000000000) == 0)
          {
LABEL_74:
            v44;
            v65 = v51;
            if ((v41 & 0x1000000000000000) == 0)
            {
              goto LABEL_75;
            }

            goto LABEL_142;
          }

LABEL_139:
          swift_bridgeObjectRetain_n(v44, 2);
          v113._rawBits = 1;
          v114._rawBits = (v51 << 16) | 1;
          v115._rawBits = _StringGuts.validateScalarRange(_:)(v113, v114, v45, v46)._rawBits;
          if (v115._rawBits < 0x10000)
          {
            v115._rawBits |= 3;
          }

          v65 = String.UTF8View.distance(from:to:)(v115, v116);
          v46;
          if ((v41 & 0x1000000000000000) == 0)
          {
LABEL_75:
            if ((v41 & 0x2000000000000000) != 0)
            {
              v66 = HIBYTE(v41) & 0xF;
            }

            else
            {
              v66 = *&v42 & 0xFFFFFFFFFFFFLL;
            }

            v67 = v66 + v65;
            if (__OFADD__(v66, v65))
            {
LABEL_274:
              __break(1u);
LABEL_275:
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_79:
            v68 = *&v42 & ~v41;
            if ((v68 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v41 & 0xFFFFFFFFFFFFFFFLL))
            {
              v69 = _StringGuts.nativeUnusedCapacity.getter(*&v42, v41);
              if (v70)
              {
                goto LABEL_278;
              }

              if (v67 > 15)
              {
                goto LABEL_91;
              }

              if ((v41 & 0x2000000000000000) == 0)
              {
                if (v69 < v65)
                {
                  v46;
                  goto LABEL_86;
                }

LABEL_91:
                v75 = v68 & 0x2000000000000000;
                v76 = _StringGuts.nativeUnusedCapacity.getter(*&v42, v41);
                if ((v77 & 1) != 0 || v76 < v65)
                {
                  if (v75)
                  {
                    swift_isUniquelyReferenced_nonNull_native(v41 & 0xFFFFFFFFFFFFFFFLL);
                  }

                  v78 = 2 * _StringGuts.nativeCapacity.getter(*&v42, v41);
                  if (v79)
                  {
                    v78 = 0;
                  }

                  if (v78 > v67)
                  {
                    v67 = v78;
                  }
                }

                else if (v75 && swift_isUniquelyReferenced_nonNull_native(v41 & 0xFFFFFFFFFFFFFFFLL))
                {
                  goto LABEL_100;
                }

                _StringGuts.grow(_:)(v67);
LABEL_100:
                if ((v46 & 0x1000000000000000) != 0)
                {
                  v46;
                  _StringGuts._foreignAppendInPlace(_:)(v45, v46, 0, v51);
                  0xE000000000000000;
                  v118 = v46;
                }

                else
                {
                  if (v47)
                  {
                    if ((v45 & 0x1000000000000000) != 0)
                    {
                      v80 = (v46 & 0xFFFFFFFFFFFFFFFLL) + 32;
                      v81 = v221;
                      v82 = v221;
                    }

                    else
                    {
                      v164 = _StringObject.sharedUTF8.getter(v45, v46);
                      v81 = v221;
                      if (v165 < v221)
                      {
                        goto LABEL_275;
                      }

                      v80 = v164;
                      v82 = v165;
                    }

                    v4 = v222;
                    v12 = v226;
                    v46;
                    v83 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v81, v80, v82);
                    v84 = (v231 & 0xFFFFFFFFFFFFFFFLL);
                    __StringStorage.appendInPlace(_:isASCII:)(v83, v85, v45 < 0);
                    v230 = v84[3];
                    0xE000000000000000;
                    v46;
                    goto LABEL_16;
                  }

                  v46;
                  v228 = v45;
                  v229 = (v46 & 0xFFFFFFFFFFFFFFLL);
                  v46;
                  v141 = (v231 & 0xFFFFFFFFFFFFFFFLL);
                  __StringStorage.appendInPlace(_:isASCII:)(&v228, v49, (v46 & 0x4000000000000000) != 0);
                  v230 = v141[3];
                  v118 = 0xE000000000000000;
                }

                v118;
                v4 = v222;
                v12 = v226;
LABEL_16:
                v13 = 0;
                v232.value._countAndFlagsBits = v230;
                v232.value._object = v231;
                goto LABEL_17;
              }

              v46;
            }

            else
            {
              if (v67 > 15)
              {
                goto LABEL_91;
              }

              v46;
              if ((v41 & 0x2000000000000000) == 0)
              {
LABEL_86:
                if ((v41 & 0x1000000000000000) != 0)
                {
                  v42 = _StringGuts._foreignConvertedToSmall()(*&v42, v41);
                  v74 = v156;
                }

                else
                {
                  if ((*&v42 & 0x1000000000000000) != 0)
                  {
                    v72 = ((v41 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v73 = *&v42 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v72 = _StringObject.sharedUTF8.getter(*&v42, v41);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v72, v73, &v228, v71);
                  v42 = v228;
                  v74 = v229;
                }

LABEL_128:
                v46;
                v104._rawBits = 1;
                v105._rawBits = (v51 << 16) | 1;
                v106._rawBits = _StringGuts.validateScalarRange(_:)(v104, v105, v45, v46)._rawBits;
                if (v106._rawBits < 0x10000)
                {
                  v106._rawBits |= 3;
                }

                if (v106._rawBits >> 16 || v107._rawBits >> 16 != v51)
                {
                  v45 = specialized static String._copying(_:)(v106._rawBits, v107, v45, v46);
                  v109 = v120;
                  v46;
                  v12 = v226;
                  if ((v109 & 0x2000000000000000) == 0)
                  {
LABEL_133:
                    if ((v109 & 0x1000000000000000) != 0)
                    {
                      v45 = _StringGuts._foreignConvertedToSmall()(v45, v109);
                      v170 = v169;
                      v109;
                      v109 = v170;
                    }

                    else
                    {
                      if ((v45 & 0x1000000000000000) != 0)
                      {
                        v110 = ((v109 & 0xFFFFFFFFFFFFFFFLL) + 32);
                        v111 = v45 & 0xFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v110 = _StringObject.sharedUTF8.getter(v45, v109);
                      }

                      closure #1 in _StringGuts._convertedToSmall()(v110, v111, &v228, v108);
                      v109;
                      v45 = v228;
                      v109 = v229;
                    }

                    goto LABEL_152;
                  }
                }

                else
                {
                  v109 = v46;
                  v12 = v226;
                  if ((v46 & 0x2000000000000000) == 0)
                  {
                    goto LABEL_133;
                  }
                }

                v109;
LABEL_152:
                v121 = HIBYTE(v74) & 0xF;
                v122 = HIBYTE(v109) & 0xF;
                v123 = v122 + v121;
                if (v122 + v121 > 0xF)
                {
LABEL_278:
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                v46;
                if (v122)
                {
                  v124 = 0;
                  v125 = 0;
                  v126 = 8 * v121;
                  do
                  {
                    v127 = v109 >> (v124 & 0x38);
                    if (v125 < 8)
                    {
                      v127 = v45 >> v124;
                    }

                    v128 = (v127 << (v126 & 0x38)) | ((-255 << (v126 & 0x38)) - 1) & v74;
                    v129 = (v127 << v126) | ((-255 << v126) - 1) & *&v42;
                    if (v121 <= 7)
                    {
                      v42 = v129;
                    }

                    else
                    {
                      v74 = v128;
                    }

                    ++v121;
                    v126 += 8;
                    v124 += 8;
                    ++v125;
                  }

                  while (8 * v122 != v124);
                }

                0xE000000000000000;
                v41;
                v14 = 0xE000000000000000;
                if (*&v42 & 0x8080808080808080 | v74 & 0x80808080808080)
                {
                  v14 = 0xA000000000000000;
                }

                v230 = v42;
                v231 = v14 & 0xFF00000000000000 | (v123 << 56) | v74 & 0xFFFFFFFFFFFFFFLL;
                v4 = v222;
                goto LABEL_16;
              }
            }

            v74 = v41;
            goto LABEL_128;
          }

LABEL_142:
          v117 = String.UTF8View._foreignCount()();
          v67 = v117 + v65;
          if (__OFADD__(v117, v65))
          {
            goto LABEL_274;
          }

          goto LABEL_79;
        }

        v226 = v12;
        v49 = HIBYTE(v44) & 0xF;
        v50 = v45 & 0xFFFFFFFFFFFFLL;
        v47 = 1;
      }

      else
      {
        v226 = v12;
        v49 = HIBYTE(v44) & 0xF;
        v50 = v45 & 0xFFFFFFFFFFFFLL;
        v51 = v49;
        if ((v44 & 0x2000000000000000) != 0)
        {
LABEL_73:
          v221 = v50;
          if ((v44 & 0x1000000000000000) == 0)
          {
            goto LABEL_74;
          }

          goto LABEL_139;
        }
      }

      v51 = v50;
      goto LABEL_73;
    }

    v21 = v20.value._countAndFlagsBits;
    v22 = v20.value._object;
    v24 = v232.value._countAndFlagsBits;
    v23 = v232.value._object;
    v25 = (v232.value._object >> 56) & 0xF;
    v26 = v232.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v232.value._object & 0x2000000000000000) != 0)
    {
      v27 = (v232.value._object >> 56) & 0xF;
    }

    else
    {
      v27 = v232.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v27 && (v232.value._countAndFlagsBits & ~v232.value._object & 0x2000000000000000) == 0)
    {
      v232.value._object;
      v232 = v20;
      v13 = 1;
      goto LABEL_17;
    }

    v225 = v12;
    v28 = v20.value._object & 0x2000000000000000;
    v29 = (v20.value._object >> 56) & 0xF;
    if ((v20.value._object & 0x2000000000000000 & v232.value._object) != 0)
    {
      v30 = v25 + v29;
      if (v25 + v29 <= 0xF)
      {
        if (v29)
        {
          v57 = 0;
          v58 = 0;
          v59 = 8 * v25;
          v60 = 8 * v29;
          v61 = v232.value._object;
          v12 = v225;
          do
          {
            v62 = v20.value._object >> (v57 & 0x38);
            if (v58 < 8)
            {
              v62 = v20.value._countAndFlagsBits >> v57;
            }

            v63 = (v62 << (v59 & 0x38)) | ((-255 << (v59 & 0x38)) - 1) & v61;
            v64 = (v62 << v59) | ((-255 << v59) - 1) & *&v24;
            if (v25 <= 7)
            {
              v24 = v64;
            }

            else
            {
              v61 = v63;
            }

            ++v25;
            v59 += 8;
            v57 += 8;
            ++v58;
          }

          while (v60 != v57);
        }

        else
        {
          v61 = v232.value._object;
          v12 = v225;
        }

        v232.value._object;
        v20.value._object;
        v119 = 0xE000000000000000;
        if (*&v24 & 0x8080808080808080 | v61 & 0x80808080808080)
        {
          v119 = 0xA000000000000000;
        }

        v232.value._countAndFlagsBits = v24;
        v232.value._object = (v119 & 0xFF00000000000000 | (v30 << 56) | v61 & 0xFFFFFFFFFFFFFFLL);
        v13 = 1;
        goto LABEL_17;
      }
    }

    v31 = (v20.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL);
    v32 = v28 ? (v20.value._object >> 56) & 0xF : v20.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v220 = v32;
    if ((v20.value._object & 0x1000000000000000) != 0)
    {
      break;
    }

    v20.value._object;
    if ((v23 & 0x1000000000000000) != 0)
    {
      goto LABEL_204;
    }

LABEL_38:
    v34 = __OFADD__(v27, v32);
    v35 = v27 + v32;
    if (v34)
    {
      goto LABEL_271;
    }

LABEL_39:
    if ((*&v24 & ~v23 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v23 & 0xFFFFFFFFFFFFFFFLL))
    {
      v36 = _StringGuts.nativeUnusedCapacity.getter(*&v24, v23);
      if (v37)
      {
        goto LABEL_278;
      }

      if (v35 <= 15)
      {
        if ((v23 & 0x2000000000000000) != 0)
        {
          goto LABEL_106;
        }

        if (v36 < v32)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_56;
    }

    if (v35 <= 15)
    {
      if ((v23 & 0x2000000000000000) != 0)
      {
LABEL_106:
        v40 = v23;
        goto LABEL_107;
      }

LABEL_45:
      if ((v23 & 0x1000000000000000) != 0)
      {
        v24 = _StringGuts._foreignConvertedToSmall()(*&v24, v23);
        v40 = v155;
LABEL_107:
        v12 = v225;
        v38 = v220;
      }

      else
      {
        v12 = v225;
        v38 = v220;
        if ((*&v24 & 0x1000000000000000) != 0)
        {
          v39 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v39 = _StringObject.sharedUTF8.getter(*&v24, v23);
          v26 = v166;
        }

        closure #1 in _StringGuts._convertedToSmall()(v39, v26, &v230, v33);
        v24 = v230;
        v40 = v231;
      }

      v20.value._object;
      v86._rawBits = 1;
      v87._rawBits = (v38 << 16) | 1;
      v88._rawBits = _StringGuts.validateScalarRange(_:)(v86, v87, v20.value._countAndFlagsBits, v20.value._object)._rawBits;
      if (v88._rawBits < 0x10000)
      {
        v88._rawBits |= 3;
      }

      if (v88._rawBits >> 16 || v89._rawBits >> 16 != v38)
      {
        v21 = specialized static String._copying(_:)(v88._rawBits, v89, v20.value._countAndFlagsBits, v20.value._object);
        v91 = v98;
        v20.value._object;
        if ((v91 & 0x2000000000000000) == 0)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v91 = v20.value._object;
        if ((v20.value._object & 0x2000000000000000) == 0)
        {
LABEL_113:
          if ((v91 & 0x1000000000000000) != 0)
          {
            v21 = _StringGuts._foreignConvertedToSmall()(*&v21, v91);
            v168 = v167;
            v91;
            v91 = v168;
          }

          else
          {
            if ((*&v21 & 0x1000000000000000) != 0)
            {
              v92 = ((v91 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v93 = *&v21 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v92 = _StringObject.sharedUTF8.getter(*&v21, v91);
            }

            closure #1 in _StringGuts._convertedToSmall()(v92, v93, &v230, v90);
            v91;
            v21 = v230;
            v91 = v231;
          }

          goto LABEL_123;
        }
      }

      v91;
LABEL_123:
      v99 = specialized _SmallString.init(_:appending:)(*&v24, v40, *&v21, v91);
      if (v101)
      {
        goto LABEL_278;
      }

      v102 = v99;
      v103 = v100;
      v23;
      swift_bridgeObjectRelease_n(v20.value._object, 2);
      v232.value._countAndFlagsBits = v102;
      goto LABEL_125;
    }

LABEL_56:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v35, v32);
    if ((v20.value._object & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(v20.value._countAndFlagsBits, v20.value._object, 0, v220);
      swift_bridgeObjectRelease_n(v20.value._object, 2);
    }

    else
    {
      if (!v28)
      {
        if ((v20.value._countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v52 = (v20.value._object & 0xFFFFFFFFFFFFFFFLL) + 32;
          v53 = v20.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v162 = _StringObject.sharedUTF8.getter(v20.value._countAndFlagsBits, v20.value._object);
          if (v163 < *&v31)
          {
            goto LABEL_275;
          }

          v52 = v162;
          v53 = v163;
        }

        v12 = v225;
        v20.value._object;
        v54 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v20.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL, v52, v53);
        v55 = v232.value._object & 0xFFFFFFFFFFFFFFFLL;
        __StringStorage.appendInPlace(_:isASCII:)(v54, v56, v20.value._countAndFlagsBits < 0);
        v232.value._countAndFlagsBits = *(v55 + 24);
        v20.value._object;
        goto LABEL_191;
      }

      v230 = v20.value._countAndFlagsBits;
      v231 = v20.value._object & 0xFFFFFFFFFFFFFFLL;
      v20.value._object;
      v130 = v232.value._object & 0xFFFFFFFFFFFFFFFLL;
      __StringStorage.appendInPlace(_:isASCII:)(&v230, (v20.value._object >> 56) & 0xF, (v20.value._object & 0x4000000000000000) != 0);
      v20.value._object;
      v232.value._countAndFlagsBits = *(v130 + 24);
    }

    v4 = v222;
    v12 = v225;
    v13 = 1;
LABEL_17:
    if (v12 >= v223)
    {
      v4;
      goto LABEL_218;
    }
  }

  swift_bridgeObjectRetain_n(v20.value._object, 2);
  v157._rawBits = 1;
  v158._rawBits = (v32 << 16) | 1;
  v159._rawBits = _StringGuts.validateScalarRange(_:)(v157, v158, v20.value._countAndFlagsBits, v20.value._object)._rawBits;
  if (v159._rawBits < 0x10000)
  {
    v159._rawBits |= 3;
  }

  v32 = String.UTF8View.distance(from:to:)(v159, v160);
  v20.value._object;
  if ((v23 & 0x1000000000000000) == 0)
  {
    goto LABEL_38;
  }

LABEL_204:
  v161 = String.UTF8View._foreignCount()();
  v35 = v161 + v32;
  if (!__OFADD__(v161, v32))
  {
    goto LABEL_39;
  }

LABEL_271:
  __break(1u);
LABEL_272:
  v222;
  v28;
  v213._rawBits = specialized Collection.dropFirst(_:)(1, *&v31, v28)._rawBits;
  v215 = v214;
  v228 = v23;
  v229 = v22;
  v232.value._countAndFlagsBits = 0;
  v232.value._object = 0xE000000000000000;
  specialized String.UnicodeScalarView.append<A>(contentsOf:)(v213, v233, v216, v214);
  0xE000000000000000;
  v215;
  countAndFlagsBits = v228;
LABEL_273:
  v231;
  return countAndFlagsBits;
}

uint64_t protocol witness for LosslessStringConvertible.init(_:) in conformance Substring@<X0>(uint64_t *a1@<X8>)
{
  result = Substring.init(unicodeScalarLiteral:)();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t Substring.UTF8View.subscript.getter(Swift::String::Index rawBits, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  if ((rawBits._rawBits & 0xC) == 4 << v6)
  {
    v9 = a2;
    v10 = a3;
    v11 = a4;
    rawBits._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    a2 = v9;
    a3 = v10;
    a4 = v11;
  }

  if (rawBits._rawBits >> 14 < a2 >> 14 || rawBits._rawBits >> 14 >= a3 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a5 & 0x1000000000000000) != 0)
  {

    return String.UTF8View._foreignSubscript(position:)(rawBits);
  }

  else if ((a5 & 0x2000000000000000) != 0)
  {
    v13[0] = a4;
    v13[1] = a5 & 0xFFFFFFFFFFFFFFLL;
    return *(v13 + (rawBits._rawBits >> 16));
  }

  else
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v7 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v12 = rawBits._rawBits;
      v7 = _StringObject.sharedUTF8.getter(a4, a5);
      rawBits._rawBits = v12;
    }

    return v7[rawBits._rawBits >> 16];
  }
}

Swift::String::Index __swiftcall Substring.UTF8View.index(after:)(Swift::String::Index after)
{
  v3 = v1;
  v4 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((after._rawBits & 0xC) == 4 << v4)
  {
    v6 = v2;
    after._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(after)._rawBits;
    v2 = v6;
    if ((v6 & 0x1000000000000000) == 0)
    {
      return ((after._rawBits & 0xFFFFFFFFFFFF0000) + 65540);
    }
  }

  else if ((v2 & 0x1000000000000000) == 0)
  {
    return ((after._rawBits & 0xFFFFFFFFFFFF0000) + 65540);
  }

  v7 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v7 <= after._rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return String.UTF8View._foreignIndex(after:)(after);
}

Swift::Void __swiftcall Substring.UTF8View.formIndex(after:)(Swift::String::Index *after)
{
  v3 = v1;
  v4 = after;
  rawBits = after->_rawBits;
  v6 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  if ((rawBits & 0xC) == 4 << v6)
  {
    v8 = v4;
    v9 = v2;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    v2 = v9;
    v4 = v8;
    if ((v9 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v2 & 0x1000000000000000) == 0)
  {
LABEL_5:
    v7 = (rawBits & 0xFFFFFFFFFFFF0000) + 65540;
    goto LABEL_6;
  }

  v10 = v4;
  v11 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v11 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v11 <= rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = String.UTF8View._foreignIndex(after:)(rawBits)._rawBits;
  v4 = v10;
LABEL_6:
  v4->_rawBits = v7;
}

Swift::String::Index __swiftcall Substring.UTF8View.index(_:offsetBy:)(Swift::String::Index _, Swift::Int offsetBy)
{
  v4 = (v2 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((_._rawBits & 0xC) == 4 << v4)
  {
    v7 = offsetBy;
    v8 = v3;
    v9 = v2;
    _._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
    offsetBy = v7;
    v2 = v9;
    v3 = v8;
    if ((v8 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v5 = offsetBy + (_._rawBits >> 16);
      if (__OFADD__(offsetBy, _._rawBits >> 16))
      {
        __break(1u);
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_11;
        }

        v6 = HIBYTE(v3) & 0xF;
        if ((v3 & 0x2000000000000000) == 0)
        {
          v6 = v2 & 0xFFFFFFFFFFFFLL;
        }

        if (v6 < v5)
        {
LABEL_11:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        return ((v5 << 16) | 4);
      }

      return _;
    }
  }

  else if ((v3 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  return String.UTF8View._foreignIndex(_:offsetBy:)(_, offsetBy);
}

Swift::String::Index_optional __swiftcall Substring.UTF8View.index(_:offsetBy:limitedBy:)(Swift::String::Index _, Swift::Int offsetBy, Swift::String::Index limitedBy)
{
  v5 = (v3 >> 59) & 1;
  if ((v4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((_._rawBits & 0xC) != 4 << v5)
  {
    if ((v4 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    v9 = String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)(_, offsetBy, limitedBy);
    goto LABEL_18;
  }

  v11 = offsetBy;
  rawBits = limitedBy._rawBits;
  v13 = v4;
  v14 = v3;
  _._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
  offsetBy = v11;
  limitedBy._rawBits = rawBits;
  v3 = v14;
  v4 = v13;
  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_5:
  v6 = _._rawBits >> 16;
  v7 = (_._rawBits >> 16) + offsetBy;
  if (__OFADD__(_._rawBits >> 16, offsetBy))
  {
    __break(1u);
    goto LABEL_22;
  }

  v8 = limitedBy._rawBits >> 16;
  if (offsetBy < 0)
  {
    if (v6 < v8 || v7 >= v8)
    {
      goto LABEL_13;
    }
  }

  else if (v8 < v6 || v8 >= v7)
  {
LABEL_13:
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v10 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v10 >= v7)
      {
        v9.is_nil = 0;
        v9.value._rawBits = (v7 << 16) | 4;
        goto LABEL_18;
      }
    }

LABEL_22:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9.value._rawBits = 0;
  v9.is_nil = 1;
LABEL_18:
  v9.is_nil &= 1u;
  return v9;
}

Swift::Int __swiftcall Substring.UTF8View.distance(from:to:)(Swift::String::Index from, Swift::String::Index to)
{
  v4 = v2;
  v5 = (v2 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  if ((from._rawBits & 0xC) == 4 << v5)
  {
    rawBits = to._rawBits;
    v9 = v3;
    from._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(from)._rawBits;
    to._rawBits = rawBits;
    v3 = v9;
  }

  if ((to._rawBits & 0xC) == v6)
  {
    v10 = from._rawBits;
    v11 = v3;
    v12._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(to)._rawBits;
    v3 = v11;
    to._rawBits = v12._rawBits;
    from._rawBits = v10;
    if ((v11 & 0x1000000000000000) == 0)
    {
      return (to._rawBits >> 16) - (from._rawBits >> 16);
    }
  }

  else if ((v3 & 0x1000000000000000) == 0)
  {
    return (to._rawBits >> 16) - (from._rawBits >> 16);
  }

  v13 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v13 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 < from._rawBits >> 16 || v13 < to._rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return String.UTF8View._foreignDistance(from:to:)(from, to);
}

Swift::String::Index __swiftcall Substring.UTF8View.index(before:)(Swift::String::Index before)
{
  v3 = v2;
  v4 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((before._rawBits & 0xC) == 4 << v4)
  {
    v6 = v1;
    before._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(before)._rawBits;
    v1 = v6;
    if (!(before._rawBits >> 14))
    {
      goto LABEL_8;
    }
  }

  else if (!(before._rawBits >> 14))
  {
    goto LABEL_8;
  }

  if ((v3 & 0x1000000000000000) == 0)
  {
    return ((before._rawBits & 0xFFFFFFFFFFFF0000) - 65532);
  }

  v7 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v7 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7 < before._rawBits >> 16)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return String.UTF8View._foreignIndex(before:)(before);
}

Swift::Void __swiftcall Substring.UTF8View.formIndex(before:)(Swift::String::Index *before)
{
  v3 = v2;
  v4 = before;
  rawBits = before->_rawBits;
  v6 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  if ((rawBits & 0xC) == 4 << v6)
  {
    v8 = v4;
    v9 = v1;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    v1 = v9;
    v4 = v8;
    if (!(rawBits >> 14))
    {
      goto LABEL_9;
    }
  }

  else if (!(rawBits >> 14))
  {
    goto LABEL_9;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v10 = v4;
    v11 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v11 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v11 >= rawBits >> 16)
    {
      v7 = String.UTF8View._foreignIndex(before:)(rawBits)._rawBits;
      v4 = v10;
      goto LABEL_7;
    }

LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = (rawBits & 0xFFFFFFFFFFFF0000) - 65532;
LABEL_7:
  v4->_rawBits = v7;
}

Swift::UInt64 Substring.UTF16View.subscript.getter(Swift::String::Index a1, Swift::String::Index a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  rawBits = specialized Substring.UTF8View.subscript.getter(a1, a2, a3, a4, a5, a6)._rawBits;
  v7;
  return rawBits;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(before:) in conformance Substring.UTF8View@<X0>(Swift::String::Index *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  result._rawBits = Substring.UTF8View.index(before:)(a1->_rawBits)._rawBits;
  a2->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance Substring.UTF8View@<X0>(Swift::UInt64 *a1@<X0>, Swift::Int a2@<X1>, Swift::UInt64 *a3@<X8>)
{
  result._rawBits = *a1;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = (v5 >> 59) & 1;
  if ((v6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  if ((result._rawBits & 0xC) != 4 << v7)
  {
    if ((v6 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    v12 = a3;
    result._rawBits = String.UTF8View._foreignIndex(_:offsetBy:)(result, a2)._rawBits;
    a3 = v12;
LABEL_11:
    *a3 = result._rawBits;
    return result;
  }

  v10 = a2;
  v11 = a3;
  result._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
  a2 = v10;
  a3 = v11;
  if ((v6 & 0x1000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  v8 = a2 + (result._rawBits >> 16);
  if (!__OFADD__(a2, result._rawBits >> 16))
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

    v9 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v9 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v9 < v8)
    {
LABEL_12:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    result._rawBits = (v8 << 16) | 4;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance Substring.UTF8View@<X0>(Swift::UInt64 *a1@<X0>, Swift::Int a2@<X1>, Swift::UInt64 *a3@<X2>, uint64_t a4@<X8>)
{
  rawBits = *a1;
  v6._rawBits = *a3;
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = (v7 >> 59) & 1;
  if ((v8 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  if ((rawBits & 0xC) != 4 << v9)
  {
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    v17 = a4;
    v13 = String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)(rawBits, a2, v6);
    a4 = v17;
    goto LABEL_18;
  }

  v15 = a2;
  v16 = a4;
  rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
  a2 = v15;
  a4 = v16;
  if ((v8 & 0x1000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_5:
  v10 = rawBits >> 16;
  v11 = (rawBits >> 16) + a2;
  if (__OFADD__(rawBits >> 16, a2))
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = v6._rawBits >> 16;
  if (a2 < 0)
  {
    if (v10 < v12 || v11 >= v12)
    {
      goto LABEL_13;
    }
  }

  else if (v12 < v10 || v12 >= v11)
  {
LABEL_13:
    if ((v11 & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v14 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v14 >= v11)
      {
        v13.is_nil = 0;
        v13.value._rawBits = (v11 << 16) | 4;
        goto LABEL_18;
      }
    }

LABEL_22:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13.value._rawBits = 0;
  v13.is_nil = 1;
LABEL_18:
  *a4 = v13.value._rawBits;
  *(a4 + 8) = v13.is_nil;
  return v13.value;
}

Swift::Int protocol witness for BidirectionalCollection.distance(from:to:) in conformance Substring.UTF8View(Swift::String::Index *a1, Swift::UInt64 *a2)
{
  rawBits = a1->_rawBits;
  v4 = *a2;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = (v5 >> 59) & 1;
  if ((v6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  if ((a1->_rawBits & 0xC) == 4 << v7)
  {
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1->_rawBits)._rawBits;
  }

  if ((v4 & 0xC) == v8)
  {
    v4 = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
    if ((v6 & 0x1000000000000000) == 0)
    {
      return (v4 >> 16) - (rawBits >> 16);
    }
  }

  else if ((v6 & 0x1000000000000000) == 0)
  {
    return (v4 >> 16) - (rawBits >> 16);
  }

  v10 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v10 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v10 < rawBits >> 16 || v10 < v4 >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return String.UTF8View._foreignDistance(from:to:)(rawBits, v4);
}

void (*protocol witness for Collection.subscript.read in conformance Substring.UTF8View(_BYTE *a1, Swift::UInt64 *a2))()
{
  v4._rawBits = *a2;
  *a1 = Substring.UTF8View.subscript.getter(v4, *v2, v2[1], v2[2], v2[3]);
  return _swift_displayCrashMessage;
}

unint64_t protocol witness for Collection.subscript.getter in conformance Substring.UTF16View@<X0>(Swift::UInt64 *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  v4._rawBits = a1[1];
  v5._rawBits = *a1;
  a2->_rawBits = specialized Substring.UTF8View.subscript.getter(v5, v4, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24))._rawBits;
  a2[1]._rawBits = v6;
  a2[2]._rawBits = v8;
  a2[3]._rawBits = v7._rawBits;

  return v7._rawBits;
}

Swift::String::Index protocol witness for Collection.index(_:offsetBy:) in conformance Substring.UTF8View@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X8>)
{
  result._rawBits = Substring.UTF8View.index(_:offsetBy:)(a1->_rawBits, a2)._rawBits;
  a3->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index protocol witness for Collection.index(after:) in conformance Substring.UTF8View@<X0>(Swift::String::Index *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  result._rawBits = Substring.UTF8View.index(after:)(a1->_rawBits)._rawBits;
  a2->_rawBits = result._rawBits;
  return result;
}

__n128 _sSsSTsST12makeIterator0B0QzyFTW_0@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u64[1];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = v3;
  a1[2].n128_u64[0] = result.n128_u64[0];
  return result;
}

unint64_t Substring.UTF8View.span.getter()
{
  rawBits = v0[3]._rawBits;
  if ((rawBits & 0x1000000000000000) != 0)
  {
    if ((rawBits & 0x8000000000000000) == 0 || (rawBits & 0xF000000000000000) == 0xC000000000000000)
    {
      v8._rawBits = v0->_rawBits;
      v9 = String.UTF8View._foreignDistance(from:to:)(15, v0->_rawBits);
      v10 = String.UTF8View._foreignDistance(from:to:)(v8, v0[1]);
      v11 = String.UTF8View._underlyingSpan()();
      v6 = v12;
      v3 = v10 + v9;
      if (v10 + v9 >= v9)
      {
        v5 = v11;
        v2 = v9;
        return _ss4SpanVsRi_zrlE10extractingyAByxGSnySiGFs5UInt8V_Tg5(v2, v3, v5, v6);
      }

LABEL_17:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((rawBits & 0x2000000000000000) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v2 = v0->_rawBits >> 16;
    v3 = v0[1]._rawBits >> 16;
  }

  else
  {
    v2 = v0->_rawBits >> 16;
    v3 = v0[1]._rawBits >> 16;
    if ((rawBits & 0x2000000000000000) == 0)
    {
      v4 = v0[2]._rawBits;
      if ((v4 & 0x1000000000000000) != 0)
      {
        v5 = ((rawBits & 0xFFFFFFFFFFFFFFFLL) + 32);
        v6 = v4 & 0xFFFFFFFFFFFFLL;
        if (v3 >= v2)
        {
          return _ss4SpanVsRi_zrlE10extractingyAByxGSnySiGFs5UInt8V_Tg5(v2, v3, v5, v6);
        }
      }

      else
      {
        v13 = v0->_rawBits >> 16;
        v14 = v3;
        v5 = _StringObject.sharedUTF8.getter(v4, rawBits);
        v2 = v13;
        v6 = v15;
        v3 = v14;
        if (v14 >= v13)
        {
          return _ss4SpanVsRi_zrlE10extractingyAByxGSnySiGFs5UInt8V_Tg5(v2, v3, v5, v6);
        }
      }

      goto LABEL_17;
    }
  }

  if ((v3 - v2) < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return &v0[2] + v2;
}

uint64_t (*Substring.utf8.modify(void *a1))()
{
  if (swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc(0x30, 0xE0B8uLL);
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  v7 = *v1;
  v4[5] = v5;
  *v4 = v7;
  v4[2] = v6;
  v4[3] = v5;
  v5;
  return Substring.utf8.modify;
}

uint64_t Substring.UTF16View.subscript.getter(Swift::String::Index a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  rawBits = a1._rawBits;
  v7 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  if ((a1._rawBits & 0xC) == 4 << v7)
  {
    v10 = a2;
    v11 = a3;
    v12 = a4;
    v13._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2 = v10;
    a3 = v11;
    a4 = v12;
    rawBits = v13._rawBits;
  }

  if (rawBits >> 14 < a2 >> 14 || rawBits >> 14 >= a3 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a5 & 0x1000000000000000) == 0)
  {
    if (rawBits)
    {
      v8 = rawBits >> 16;
      if ((a5 & 0x2000000000000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = a4;
      v16._rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      a4 = v15;
      v8 = v16._rawBits >> 16;
      if ((a5 & 0x2000000000000000) == 0)
      {
LABEL_10:
        if ((a4 & 0x1000000000000000) != 0)
        {
          v9 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v18 = a5;
          v19 = v8;
          v9 = _StringObject.sharedUTF8.getter(a4, v18);
          v8 = v19;
        }

        goto LABEL_18;
      }
    }

    v20[0] = a4;
    v20[1] = a5 & 0xFFFFFFFFFFFFFFLL;
    v9 = v20;
LABEL_18:
    v17 = _decodeScalar(_:startingAt:)(v9, a2, v8);
    return Unicode.Scalar.UTF16View.subscript.getter(rawBits >> 14, v17);
  }

  return String.UTF16View._foreignSubscript(position:)(rawBits);
}

Swift::String::Index __swiftcall Substring.UTF16View.index(after:)(Swift::String::Index after)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((after._rawBits & 0xC) == 4 << v3)
  {
    v9 = v2;
    v10 = v1;
    after._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(after)._rawBits;
    v1 = v10;
    v2 = v9;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = after._rawBits >> 16;
  if (after._rawBits >> 16 >= v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    v6 = (v2 >> 62) & 1;
    if ((v2 & 0x2000000000000000) == 0)
    {
      LOBYTE(v6) = v1 < 0;
    }

    if (v6)
    {
      return ((after._rawBits & 0xFFFFFFFFFFFF0000) + 65549);
    }

    if ((after._rawBits & 0xC001) != 0)
    {
      if ((v2 & 0x2000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = v2;
      v12 = v1;
      after._rawBits = _StringGuts.scalarAlignSlow(_:)(after)._rawBits;
      v1 = v12;
      v2 = v11;
      v5 = after._rawBits >> 16;
      if ((v11 & 0x2000000000000000) == 0)
      {
LABEL_15:
        if ((v1 & 0x1000000000000000) != 0)
        {
          LODWORD(v8) = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v5);
          if ((v8 & 0x80) != 0)
          {
LABEL_26:
            LODWORD(v8) = __clz(v8 ^ 0xFF) - 24;
            if (v8 == 4)
            {
              if ((after._rawBits & 0xC000) == 0)
              {
                v14 = 16388;
                return (after._rawBits & 0xFFFFFFFFFFFF0000 | v14);
              }

              v8 = 4;
            }

            else
            {
              v8 = v8;
            }

LABEL_30:
            after._rawBits += v8 << 16;
            v14 = 5;
            return (after._rawBits & 0xFFFFFFFFFFFF0000 | v14);
          }
        }

        else
        {
          rawBits = after._rawBits;
          v13 = v5;
          v8 = _StringObject.sharedUTF8.getter(v1, v2);
          after._rawBits = rawBits;
          LODWORD(v8) = *(v8 + v13);
          if ((v8 & 0x80) != 0)
          {
            goto LABEL_26;
          }
        }

LABEL_24:
        v8 = 1;
        goto LABEL_30;
      }
    }

    v16[0] = v1;
    v16[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    LODWORD(v8) = *(v16 + v5);
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  return specialized String.UTF16View._foreignIndex(after:)(after._rawBits);
}

Swift::Void __swiftcall Substring.UTF16View.formIndex(after:)(Swift::String::Index *after)
{
  rawBits = after->_rawBits;
  v5 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((rawBits & 0xC) == 4 << v5)
  {
    v12 = v2;
    v13 = v1;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    v1 = v13;
    v2 = v12;
  }

  v6 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v6 = v1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = rawBits >> 16;
  if (rawBits >> 16 >= v6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v9 = specialized String.UTF16View._foreignIndex(after:)(rawBits);
    goto LABEL_29;
  }

  v8 = (v2 >> 62) & 1;
  if ((v2 & 0x2000000000000000) == 0)
  {
    LOBYTE(v8) = v1 < 0;
  }

  if ((v8 & 1) == 0)
  {
    if ((rawBits & 0xC001) != 0)
    {
      if ((v2 & 0x2000000000000000) == 0)
      {
LABEL_15:
        if ((v1 & 0x1000000000000000) != 0)
        {
          LODWORD(v10) = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v7);
          if ((v10 & 0x80) != 0)
          {
            goto LABEL_17;
          }

LABEL_26:
          v10 = 1;
          goto LABEL_27;
        }

        v17 = rawBits;
        v16 = v7;
        v10 = _StringObject.sharedUTF8.getter(v1, v2);
        rawBits = v17;
        LODWORD(v10) = *(v10 + v16);
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_26;
        }

LABEL_17:
        LODWORD(v10) = __clz(v10 ^ 0xFF) - 24;
        if (v10 == 4)
        {
          if ((rawBits & 0xC000) == 0)
          {
            v11 = 16388;
LABEL_28:
            v9 = rawBits & 0xFFFFFFFFFFFF0000 | v11;
            goto LABEL_29;
          }

          v10 = 4;
        }

        else
        {
          v10 = v10;
        }

LABEL_27:
        rawBits += v10 << 16;
        v11 = 5;
        goto LABEL_28;
      }
    }

    else
    {
      v14 = v2;
      v15 = v1;
      rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      v1 = v15;
      v2 = v14;
      v7 = rawBits >> 16;
      if ((v14 & 0x2000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

    v18[0] = v1;
    v18[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    LODWORD(v10) = *(v18 + v7);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v9 = (rawBits & 0xFFFFFFFFFFFF0000) + 65549;
LABEL_29:
  after->_rawBits = v9;
}