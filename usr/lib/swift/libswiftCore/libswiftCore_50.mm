Swift::String::Index_optional __swiftcall Substring.UTF16View.index(_:offsetBy:limitedBy:)(Swift::String::Index _, Swift::Int offsetBy, Swift::String::Index limitedBy)
{
  v3 = String.UTF16View.index(_:offsetBy:limitedBy:)(_, offsetBy, limitedBy);
  v3.is_nil &= 1u;
  return v3;
}

Swift::String::Index __swiftcall Substring.UTF16View.index(before:)(Swift::String::Index before)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((before._rawBits & 0xC) == 4 << v3)
  {
    v14 = v2;
    v15 = v1;
    before._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(before)._rawBits;
    v1 = v15;
    v2 = v14;
    if (before._rawBits < 0x4000)
    {
      goto LABEL_26;
    }
  }

  else if (before._rawBits < 0x4000)
  {
    goto LABEL_26;
  }

  v4 = HIBYTE(v2) & 0xF;
  v5 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v6 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v6 < before._rawBits >> 14)
  {
LABEL_26:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v2 & 0x1000000000000000) != 0)
  {

    return specialized String.UTF16View._foreignIndex(before:)(before._rawBits);
  }

  else
  {
    v7 = (v2 >> 62) & 1;
    if ((v2 & 0x2000000000000000) == 0)
    {
      LOBYTE(v7) = v1 < 0;
    }

    if (v7)
    {
      return ((before._rawBits & 0xFFFFFFFFFFFF0000) - 65523);
    }

    if ((before._rawBits & 0xC000) != 0)
    {
      return (before._rawBits & 0xFFFFFFFFFFFF0000 | 5);
    }

    if (before._rawBits)
    {
      v9 = before._rawBits >> 16;
      if ((v2 & 0x2000000000000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v22 = HIBYTE(v2) & 0xF;
      rawBits = v1 & 0xFFFFFFFFFFFFLL;
      v16 = v2;
      v21 = v1;
      before._rawBits = _StringGuts.scalarAlignSlow(_:)(before)._rawBits;
      v1 = v21;
      v4 = v22;
      v2 = v16;
      v5 = rawBits;
      v9 = before._rawBits >> 16;
      if ((v16 & 0x2000000000000000) == 0)
      {
LABEL_18:
        if ((v1 & 0x1000000000000000) != 0)
        {
          v10 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if (before._rawBits < 0x10000)
          {
            goto LABEL_40;
          }
        }

        else
        {
          rawBits = before._rawBits;
          v19 = v9;
          v20 = _StringObject.sharedUTF8.getter(v1, v2);
          v9 = v19;
          v10 = v20;
          before._rawBits = rawBits;
          if (rawBits < 0x10000)
          {
            goto LABEL_40;
          }
        }

        v11 = v10 - 1;
        v12 = 1;
        v13 = v9;
        do
        {
          if (v9 > v5)
          {
            break;
          }

          if ((*(v11 + v13) & 0xC0) != 0x80)
          {
            goto LABEL_37;
          }

          ++v12;
          --v13;
        }

        while (v13);
LABEL_40:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v24[0] = v1;
    v24[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    if (before._rawBits < 0x10000)
    {
      goto LABEL_40;
    }

    v12 = 1;
    v17 = v9 - 1;
    while (1)
    {
      if (v9 - 1 >= v4)
      {
        goto LABEL_40;
      }

      if ((*(v24 + v17) & 0xC0) != 0x80)
      {
        break;
      }

      ++v12;
      if (--v17 == -1)
      {
        goto LABEL_40;
      }
    }

LABEL_37:
    v18 = ((v9 - v12) << 16) | 5;
    if (v12 == 4)
    {
      return ((before._rawBits & 0xFFFFFFFFFFFF0000) - 245756);
    }

    else
    {
      return v18;
    }
  }
}

Swift::Void __swiftcall Substring.UTF16View.formIndex(before:)(Swift::String::Index *before)
{
  v3 = before;
  rawBits = before->_rawBits;
  v5 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((rawBits & 0xC) == 4 << v5)
  {
    v16 = v3;
    v17 = v2;
    v18 = v1;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    v1 = v18;
    v2 = v17;
    v3 = v16;
    if (rawBits < 0x4000)
    {
      goto LABEL_26;
    }
  }

  else if (rawBits < 0x4000)
  {
    goto LABEL_26;
  }

  v6 = HIBYTE(v2) & 0xF;
  v7 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v8 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v8 < rawBits >> 14)
  {
LABEL_26:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v19 = v3;
    v10 = specialized String.UTF16View._foreignIndex(before:)(rawBits);
    v3 = v19;
    goto LABEL_38;
  }

  v9 = (v2 >> 62) & 1;
  if ((v2 & 0x2000000000000000) == 0)
  {
    LOBYTE(v9) = v1 < 0;
  }

  if (v9)
  {
    v10 = (rawBits & 0xFFFFFFFFFFFF0000) - 65523;
    goto LABEL_38;
  }

  if ((rawBits & 0xC000) != 0)
  {
    v10 = rawBits & 0xFFFFFFFFFFFF0000 | 5;
    goto LABEL_38;
  }

  if (rawBits)
  {
    v11 = rawBits >> 16;
    if ((v2 & 0x2000000000000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v27 = v1 & 0xFFFFFFFFFFFFLL;
    v28 = v3;
    v20 = v2;
    v21 = v1;
    v26 = HIBYTE(v2) & 0xF;
    rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
    v6 = v26;
    v7 = v27;
    v1 = v21;
    v2 = v20;
    v3 = v28;
    v11 = rawBits >> 16;
    if ((v20 & 0x2000000000000000) == 0)
    {
LABEL_18:
      if ((v1 & 0x1000000000000000) != 0)
      {
        v12 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (rawBits < 0x10000)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v28 = v3;
        v23 = rawBits;
        v24 = v11;
        v25 = _StringObject.sharedUTF8.getter(v1, v2);
        v11 = v24;
        v12 = v25;
        rawBits = v23;
        v3 = v28;
        if (v23 < 0x10000)
        {
          goto LABEL_39;
        }
      }

      v13 = v12 - 1;
      v14 = 1;
      v15 = v11;
      do
      {
        if (v11 > v7)
        {
          break;
        }

        if ((*(v13 + v15) & 0xC0) != 0x80)
        {
          goto LABEL_35;
        }

        ++v14;
        --v15;
      }

      while (v15);
LABEL_39:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  v29[0] = v1;
  v29[1] = v2 & 0xFFFFFFFFFFFFFFLL;
  if (rawBits < 0x10000)
  {
    goto LABEL_39;
  }

  v14 = 1;
  v22 = v11 - 1;
  while (1)
  {
    if (v11 - 1 >= v6)
    {
      goto LABEL_39;
    }

    if ((*(v29 + v22) & 0xC0) != 0x80)
    {
      break;
    }

    ++v14;
    if (--v22 == -1)
    {
      goto LABEL_39;
    }
  }

LABEL_35:
  if (v14 == 4)
  {
    v10 = (rawBits & 0xFFFFFFFFFFFF0000) - 245756;
  }

  else
  {
    v10 = ((v11 - v14) << 16) | 5;
  }

LABEL_38:
  v3->_rawBits = v10;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(before:) in conformance Substring.UTF16View@<X0>(Swift::String::Index *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  result._rawBits = Substring.UTF16View.index(before:)(a1->_rawBits)._rawBits;
  a2->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index _sSs9UTF16ViewVSlsSl5index_8offsetBy5IndexQzAF_SitFTW_0@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X8>)
{
  result._rawBits = String.UTF16View.index(_:offsetBy:)(a1->_rawBits, a2)._rawBits;
  a3->_rawBits = result._rawBits;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance Substring.UTF16View(_WORD *a1, Swift::UInt64 *a2))()
{
  v4._rawBits = *a2;
  *a1 = Substring.UTF16View.subscript.getter(v4, *v2, v2[1], v2[2], v2[3]);
  return _swift_displayCrashMessage;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance Substring.UTF16View@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = String.UTF16View.index(_:offsetBy:limitedBy:)(a1->_rawBits, a2, a3->_rawBits);
  *a4 = v6.value._rawBits;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

Swift::String::Index protocol witness for Collection.index(after:) in conformance Substring.UTF16View@<X0>(Swift::String::Index *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  result._rawBits = Substring.UTF16View.index(after:)(a1->_rawBits)._rawBits;
  a2->_rawBits = result._rawBits;
  return result;
}

Swift::UInt64 key path setter for Substring.utf8 : Substring(Swift::UInt64 *a1, Swift::UInt64 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a2[3];
  a1[3];
  v5;
  v6._rawBits = v3;
  v7._rawBits = v4;
  result = specialized Substring.init(_:)(v6, v7)._rawBits;
  *a2 = result;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v11;
  return result;
}

void Substring.utf8.setter(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4)
{
  v4[3];
  if ((a1 & 1) == 0)
  {
    a1 = a1 & 0xC | _StringGuts.scalarAlignSlow(_:)(a1)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    a2 = a2 & 0xC | _StringGuts.scalarAlignSlow(_:)(a2)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    goto LABEL_3;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t (*Substring.utf16.modify(void *a1))()
{
  if (swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc(0x30, 0xB962uLL);
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
  return Substring.utf16.modify;
}

void Substring.utf8.modify(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[5];
  if (a2)
  {
    (*a1)[3];
    v7;
    if (v3)
    {
      if (v4)
      {
LABEL_4:
        v8 = v2[4];
        *v8 = v3;
        v8[1] = v4;
        v8[2] = v6;
        v8[3] = v5;
        v2[3];
        goto LABEL_8;
      }
    }

    else
    {
      v3 = v3 & 0xC | _StringGuts.scalarAlignSlow(_:)(v3)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v4 = v4 & 0xC | _StringGuts.scalarAlignSlow(_:)(v4)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    goto LABEL_4;
  }

  (*a1)[5];
  if ((v3 & 1) == 0)
  {
    v3 = v3 & 0xC | _StringGuts.scalarAlignSlow(_:)(v3)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_14:
    v4 = v4 & 0xC | _StringGuts.scalarAlignSlow(_:)(v4)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    goto LABEL_7;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v9 = v2[4];
  *v9 = v3;
  v9[1] = v4;
  v9[2] = v6;
  v9[3] = v5;
LABEL_8:

  free(v2);
}

Swift::UInt64 String.init(_:)(Swift::String::Index a1, Swift::String::Index a2, Swift::UInt64 a3, unint64_t a4)
{
  v7._rawBits = a1._rawBits;
  if (_StringGuts.isOnUnicodeScalarBoundary(_:)(a1) && _StringGuts.isOnUnicodeScalarBoundary(_:)(a2))
  {
    if (v7._rawBits)
    {
      if (a2._rawBits)
      {
LABEL_5:
        v8._rawBits = a2._rawBits;
        v9 = Substring.description.getter(v7._rawBits, v8, a3, a4);
        a4;
        return v9;
      }
    }

    else
    {
      v7._rawBits = v7._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(v7)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      if (a2._rawBits)
      {
        goto LABEL_5;
      }
    }

    a2._rawBits = a2._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(a2)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    goto LABEL_5;
  }

  a4;
  return 0;
}

Swift::UInt64 Substring.UnicodeScalarView.init(_:_bounds:)(int a1, int a2, Swift::String::Index a3, Swift::String::Index a4)
{
  rawBits = a3._rawBits;
  if ((a3._rawBits & 1) == 0)
  {
    rawBits = a3._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(a3)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (a4._rawBits)
    {
      return rawBits;
    }

LABEL_5:
    _StringGuts.scalarAlignSlow(_:)(a4)._rawBits;
    return rawBits;
  }

  if ((a4._rawBits & 1) == 0)
  {
    goto LABEL_5;
  }

  return rawBits;
}

uint64_t Substring.UnicodeScalarView.subscript.getter(Swift::String::Index a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = _StringGuts.validateScalarIndex(_:in:)(a1._rawBits, a2, a3, a4, a5);
  if ((a5 & 0x1000000000000000) != 0)
  {
    v12 = v7 & 0xFFFFFFFFFFFF0000;

    return *&_StringGuts.foreignErrorCorrectedScalar(startingAt:)(v12);
  }

  else
  {
    v9 = v7 >> 16;
    if ((a5 & 0x2000000000000000) != 0)
    {
      v15[0] = a4;
      v15[1] = a5 & 0xFFFFFFFFFFFFFFLL;
      return _decodeScalar(_:startingAt:)(v15, v8, v9);
    }

    else
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v10 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v13 = a5;
        v14 = v7 >> 16;
        v10 = _StringObject.sharedUTF8.getter(a4, v13);
        v9 = v14;
      }

      return _decodeScalar(_:startingAt:)(v10, v8, v9);
    }
  }
}

Swift::String::Index __swiftcall Substring.UnicodeScalarView.index(after:)(Swift::String::Index after)
{
  v3 = v2;
  v4 = v1;
  v5._rawBits = _StringGuts.validateScalarIndex(_:)(after)._rawBits;
  if ((v3 & 0x1000000000000000) != 0)
  {

    return String.UnicodeScalarView._foreignIndex(after:)(v5);
  }

  else
  {
    v6 = v5._rawBits >> 16;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v12[0] = v4;
      v12[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      v8 = *(v12 + v6);
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v7 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter(v4, v3);
      }

      v8 = v7[v6];
    }

    v9 = v8;
    v10 = __clz(v8 ^ 0xFF) - 24;
    if (v9 >= 0)
    {
      LOBYTE(v10) = 1;
    }

    return (((v6 + v10) << 16) | 5);
  }
}

Swift::Void __swiftcall Substring.UnicodeScalarView.formIndex(after:)(Swift::String::Index *after)
{
  v3 = v2;
  v4 = v1;
  v6._rawBits = _StringGuts.validateScalarIndex(_:)(after->_rawBits)._rawBits;
  if ((v3 & 0x1000000000000000) != 0)
  {
    rawBits = String.UnicodeScalarView._foreignIndex(after:)(v6)._rawBits;
  }

  else
  {
    v7 = v6._rawBits >> 16;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v13[0] = v4;
      v13[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      v9 = *(v13 + v7);
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v8 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v8 = _StringObject.sharedUTF8.getter(v4, v3);
      }

      v9 = v8[v7];
    }

    v10 = v9;
    v11 = __clz(v9 ^ 0xFF) - 24;
    if (v10 >= 0)
    {
      LOBYTE(v11) = 1;
    }

    rawBits = ((v7 + v11) << 16) | 5;
  }

  after->_rawBits = rawBits;
}

Swift::String::Index __swiftcall Substring.UnicodeScalarView.index(_:offsetBy:)(Swift::String::Index _, Swift::Int offsetBy)
{
  v4 = v3;
  v5 = v2;
  result._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(_)._rawBits;
  if (offsetBy < 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = result._rawBits >> 16;
      if (!(result._rawBits >> 16))
      {
        break;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        result._rawBits = String.UnicodeScalarView._foreignIndex(before:)(result)._rawBits;
      }

      else
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v25 = v5;
          v26 = v4 & 0xFFFFFFFFFFFFFFLL;
          if ((v24[v15 + 1] & 0xC0) == 0x80)
          {
            v21 = &v24[v15];
            v20 = 1;
            do
            {
              ++v20;
              v22 = *v21--;
            }

            while ((v22 & 0xC0) == 0x80);
          }

          else
          {
            v20 = 1;
          }
        }

        else
        {
          v16 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v5 & 0x1000000000000000) == 0)
          {
            rawBits = result._rawBits;
            v16 = _StringObject.sharedUTF8.getter(v5, v4);
            result._rawBits = rawBits;
          }

          v17 = 0;
          v18 = v16 + (result._rawBits >> 16) - 1;
          do
          {
            v19 = *(v18 + v17--) & 0xC0;
          }

          while (v19 == 128);
          v20 = -v17;
        }

        result._rawBits = (result._rawBits - (v20 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (--v14 <= offsetBy)
      {
        return result;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (offsetBy)
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v9 = result._rawBits >> 16;
      if (result._rawBits >> 16 >= v8)
      {
        break;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        result._rawBits = String.UnicodeScalarView._foreignIndex(after:)(result)._rawBits;
        if (!--offsetBy)
        {
          return result;
        }
      }

      else
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v25 = v5;
          v26 = v4 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(&v25 + v9);
        }

        else
        {
          v10 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v5 & 0x1000000000000000) == 0)
          {
            v10 = _StringObject.sharedUTF8.getter(v5, v4);
          }

          v11 = v10[v9];
        }

        v12 = v11;
        v13 = __clz(v11 ^ 0xFF) - 24;
        if (v12 >= 0)
        {
          LOBYTE(v13) = 1;
        }

        result._rawBits = ((v9 + v13) << 16) | 5;
        if (!--offsetBy)
        {
          return result;
        }
      }
    }

    goto LABEL_38;
  }

  return result;
}

Swift::String::Index_optional __swiftcall Substring.UnicodeScalarView.index(_:offsetBy:limitedBy:)(Swift::String::Index _, Swift::Int offsetBy, Swift::String::Index limitedBy)
{
  v5 = v4;
  v6 = v3;
  rawBits = limitedBy._rawBits;
  v9 = (v3 >> 59) & 1;
  if ((v4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  if ((limitedBy._rawBits & 0xC) == 4 << v9)
  {
    v33 = _._rawBits;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(limitedBy)._rawBits;
    _._rawBits = v33;
  }

  v11 = _._rawBits;
  if ((_._rawBits & 0xC) == v10)
  {
    v34 = _._rawBits;
    v11 = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
    _._rawBits = v34;
  }

  v12._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(_)._rawBits;
  v13 = rawBits >> 14;
  if (offsetBy < 0)
  {
    v21 = 0;
    v22 = v11 >> 14;
    v23 = &v36 + 7;
    v24 = &v36 + 6;
    while (v22 < v13 || v13 < v12._rawBits >> 14)
    {
      v25 = v12._rawBits >> 16;
      if (!(v12._rawBits >> 16))
      {
LABEL_54:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((v5 & 0x1000000000000000) != 0)
      {
        v36 = v23;
        v31 = v24;
        v12._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v12)._rawBits;
        v24 = v31;
        v23 = v36;
      }

      else
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v37 = v6;
          v38 = v5 & 0xFFFFFFFFFFFFFFLL;
          if ((v23[v25] & 0xC0) == 0x80)
          {
            v28 = &v24[v25];
            v29 = 1;
            do
            {
              ++v29;
              v30 = *v28--;
            }

            while ((v30 & 0xC0) == 0x80);
          }

          else
          {
            v29 = 1;
          }

          v25 -= v29;
        }

        else
        {
          v26 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v6 & 0x1000000000000000) == 0)
          {
            v35 = v24;
            v36 = v23;
            v26 = _StringObject.sharedUTF8.getter(v6, v5);
            v24 = v35;
            v23 = v36;
          }

          do
          {
            v27 = v26[--v25] & 0xC0;
          }

          while (v27 == 128);
        }

        v12._rawBits = (v25 << 16) | 5;
      }

      if (--v21 <= offsetBy)
      {
        if (v22 < v13 || v12._rawBits >> 14 >= v13)
        {
          goto LABEL_53;
        }

        break;
      }
    }
  }

  else
  {
    v14 = v11 >> 14;
    if (offsetBy)
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v15 = v6 & 0xFFFFFFFFFFFFLL;
      }

      while (v13 < v14 || v12._rawBits >> 14 < v13)
      {
        v16 = v12._rawBits >> 16;
        if (v12._rawBits >> 16 >= v15)
        {
          goto LABEL_54;
        }

        if ((v5 & 0x1000000000000000) != 0)
        {
          v12._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v12)._rawBits;
        }

        else
        {
          if ((v5 & 0x2000000000000000) != 0)
          {
            v37 = v6;
            v38 = v5 & 0xFFFFFFFFFFFFFFLL;
            v18 = *(&v37 + v16);
          }

          else
          {
            v17 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if ((v6 & 0x1000000000000000) == 0)
            {
              v17 = _StringObject.sharedUTF8.getter(v6, v5);
            }

            v18 = v17[v16];
          }

          v19 = v18;
          v20 = __clz(v18 ^ 0xFF) - 24;
          if (v19 >= 0)
          {
            LOBYTE(v20) = 1;
          }

          v12._rawBits = ((v16 + v20) << 16) | 5;
        }

        if (!--offsetBy)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      if (v13 < v14 || v13 >= v12._rawBits >> 14)
      {
LABEL_53:
        v32 = 0;
        goto LABEL_55;
      }
    }
  }

  v12._rawBits = 0;
  v32 = 1;
LABEL_55:
  result.value = v12;
  result.is_nil = v32;
  return result;
}

Swift::Int __swiftcall Substring.UnicodeScalarView.distance(from:to:)(Swift::String::Index from, Swift::String::Index to)
{
  v4 = v3;
  v5 = v2;
  rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(from)._rawBits;
  v8 = _StringGuts.validateInclusiveScalarIndex(_:)(to)._rawBits;
  result = rawBits;
  v10 = rawBits >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)(result)._rawBits;
      }

      else
      {
        v14 = result >> 16;
        if ((v4 & 0x2000000000000000) != 0)
        {
          v28 = v5;
          v29 = v4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v5 & 0x1000000000000000) == 0)
          {
            v15 = _StringObject.sharedUTF8.getter(v5, v4);
          }

          v16 = v15[v14];
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(before:)(result)._rawBits;
      }

      else
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v28 = v5;
          v29 = v4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v5 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = _StringObject.sharedUTF8.getter(v5, v4);
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

Swift::String::Index __swiftcall Substring.UnicodeScalarView.index(before:)(Swift::String::Index before)
{
  v3 = v2;
  v4 = v1;
  v5._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(before)._rawBits;
  if (!(v5._rawBits >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v3 & 0x1000000000000000) != 0)
  {

    return String.UnicodeScalarView._foreignIndex(before:)(v5);
  }

  else
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v15[0] = v4;
      v15[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      if ((*(v15 + (v5._rawBits >> 16) - 1) & 0xC0) == 0x80)
      {
        v11 = v15 + (v5._rawBits >> 16) - 2;
        v10 = 1;
        do
        {
          ++v10;
          v12 = *v11--;
        }

        while ((v12 & 0xC0) == 0x80);
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v6 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        rawBits = v5._rawBits;
        v6 = _StringObject.sharedUTF8.getter(v4, v3);
        v5._rawBits = rawBits;
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

    return ((v5._rawBits - (v10 << 16)) & 0xFFFFFFFFFFFF0000 | 5);
  }
}

Swift::Void __swiftcall Substring.UnicodeScalarView.formIndex(before:)(Swift::String::Index *before)
{
  v3 = v2;
  v4 = v1;
  v6._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(before->_rawBits)._rawBits;
  if (!(v6._rawBits >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    rawBits = String.UnicodeScalarView._foreignIndex(before:)(v6)._rawBits;
  }

  else
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v16[0] = v4;
      v16[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      if ((*(v16 + (v6._rawBits >> 16) - 1) & 0xC0) == 0x80)
      {
        v12 = v16 + (v6._rawBits >> 16) - 2;
        v11 = 1;
        do
        {
          ++v11;
          v13 = *v12--;
        }

        while ((v13 & 0xC0) == 0x80);
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v7 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v15 = v6._rawBits;
        v7 = _StringObject.sharedUTF8.getter(v4, v3);
        v6._rawBits = v15;
      }

      v8 = 0;
      v9 = v7 + (v6._rawBits >> 16) - 1;
      do
      {
        v10 = *(v9 + v8--) & 0xC0;
      }

      while (v10 == 128);
      v11 = -v8;
    }

    rawBits = (v6._rawBits - (v11 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
  }

  before->_rawBits = rawBits;
}

Swift::UInt64 Substring.UnicodeScalarView.subscript.getter(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  a6;
  v12._rawBits = a2;
  return _StringGuts.validateScalarRange(_:in:)(a1, v12, a3, a4, a5, a6);
}

Swift::String::Index protocol witness for BidirectionalCollection.index(before:) in conformance Substring.UnicodeScalarView@<X0>(Swift::String::Index *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  result._rawBits = Substring.UnicodeScalarView.index(before:)(a1->_rawBits)._rawBits;
  a2->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance Substring.UnicodeScalarView@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X8>)
{
  result._rawBits = String.UnicodeScalarView.index(_:offsetBy:)(a1->_rawBits, a2)._rawBits;
  a3->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance Substring.UnicodeScalarView@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(a1->_rawBits, a2, a3->_rawBits);
  *a4 = v6.value._rawBits;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

Swift::UInt64 protocol witness for BidirectionalCollection.distance(from:to:) in conformance Substring.UnicodeScalarView(Swift::UInt64 *a1, Swift::UInt64 *a2)
{
  v3._rawBits = *a1;
  v4._rawBits = *a2;
  return specialized Collection.count.getter(v3, v4, *(v2 + 16), *(v2 + 24))._rawBits;
}

void (*protocol witness for Collection.subscript.read in conformance Substring.UnicodeScalarView(uint64_t *a1, Swift::UInt64 *a2))()
{
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = _StringGuts.validateScalarIndex(_:in:)(v4, v5, v6, v8, v7);
  if ((v7 & 0x1000000000000000) != 0)
  {
    value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v9 & 0xFFFFFFFFFFFF0000))._0._value;
  }

  else
  {
    v11 = v9 >> 16;
    if ((v7 & 0x2000000000000000) != 0)
    {
      *a1 = v8;
      a1[1] = v7 & 0xFFFFFFFFFFFFFFLL;
      v12 = a1;
    }

    else if ((v8 & 0x1000000000000000) != 0)
    {
      v12 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v15 = v7;
      v16 = v9 >> 16;
      v12 = _StringObject.sharedUTF8.getter(v8, v15);
      v11 = v16;
    }

    value = _decodeScalar(_:startingAt:)(v12, v10, v11);
  }

  *a1 = value;
  return _swift_displayCrashMessage;
}

Swift::String::Index protocol witness for Collection.subscript.getter in conformance Substring.UnicodeScalarView@<X0>(Swift::UInt64 *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v8;
  v10._rawBits = v5;
  result._rawBits = _StringGuts.validateScalarRange(_:in:)(v4, v10, v6, v7, v9, v8);
  a2->_rawBits = result._rawBits;
  a2[1]._rawBits = v12;
  a2[2]._rawBits = v9;
  a2[3]._rawBits = v8;
  return result;
}

unint64_t protocol witness for Collection.indices.getter in conformance Substring.UTF8View@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = *v1;
  return v2;
}

Swift::String::Index protocol witness for Collection.index(_:offsetBy:) in conformance Substring.UnicodeScalarView@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X8>)
{
  result._rawBits = Substring.UnicodeScalarView.index(_:offsetBy:)(a1->_rawBits, a2)._rawBits;
  a3->_rawBits = result._rawBits;
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance Substring.UTF8View@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, void, uint64_t, uint64_t, void, void)@<X5>, uint64_t a7@<X8>)
{
  result = a6(*a1, a2, *a3, a4, a5, *(v7 + 16), *(v7 + 24));
  *a7 = result;
  *(a7 + 8) = v10 & 1;
  return result;
}

Swift::String::Index protocol witness for Collection.index(after:) in conformance Substring.UnicodeScalarView@<X0>(Swift::String::Index *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  result._rawBits = Substring.UnicodeScalarView.index(after:)(a1->_rawBits)._rawBits;
  a2->_rawBits = result._rawBits;
  return result;
}

Swift::UInt64 _sSs17UnicodeScalarViewVSlsSl5countSivgTW_0()
{
  v1._rawBits = *v0;
  v2._rawBits = *(v0 + 8);
  return specialized Collection.count.getter(v1, v2, *(v0 + 16), *(v0 + 24))._rawBits;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Substring(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void, unint64_t))
{
  v4 = v3[3];
  v5 = a3(*v3, v3[1], v3[2], v4);
  v4;
  return v5;
}

unint64_t key path setter for Substring.unicodeScalars : Substring(uint64_t a1, uint64_t a2)
{
  *(a2 + 24);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;

  return v4;
}

uint64_t (*Substring.unicodeScalars.modify(void *a1))()
{
  if (swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc(0x30, 0xFCE1uLL);
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
  return Substring.unicodeScalars.modify;
}

uint64_t specialized Substring.UnicodeScalarView.replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = (v2[2] >> 59) & 1;
  if ((v2[3] & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = a1._rawBits & 0xC;
  v7 = 4 << v5;
  v8 = a2._rawBits & 0xC;
  if ((a1._rawBits & 1) == 0 || v6 == v7 || (a2._rawBits & 1) == 0 || v8 == v7)
  {
    if (v8 == v7)
    {
      rawBits = a1._rawBits;
      a2._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
      a1._rawBits = rawBits;
      if (v6 != v7)
      {
        goto LABEL_12;
      }
    }

    else if (v6 != v7)
    {
LABEL_12:
      if (a1._rawBits >> 14 < v3 >> 14 || a2._rawBits >> 14 < a1._rawBits >> 14 || v4 >> 14 < a2._rawBits >> 14)
      {
LABEL_18:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (a2._rawBits)
      {
        if (a1._rawBits)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v14 = a1._rawBits;
        v15 = a2._rawBits;
        v16 = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
        a1._rawBits = v14;
        a2._rawBits = v15 & 0xC | v16 & 0xFFFFFFFFFFFFFFF3 | 1;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v17 = a1._rawBits;
      v18 = a2._rawBits;
      v19._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
      a2._rawBits = v18;
      a1._rawBits = v17 & 0xC | v19._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      goto LABEL_17;
    }

    v13 = a2._rawBits;
    a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2._rawBits = v13;
    goto LABEL_12;
  }

  if (a1._rawBits >> 14 < v3 >> 14 || v4 >> 14 < a2._rawBits >> 14)
  {
    goto LABEL_18;
  }

LABEL_17:
  v20 = MEMORY[0x1EEE9AC00](a1._rawBits, a2._rawBits);
  return _StringGuts.mutateSubrangeInSubstring(subrange:startIndex:endIndex:with:)(v20, v9, v2, v10, partial apply for specialized closure #1 in Substring.UnicodeScalarView.replaceSubrange<A>(_:with:));
}

{
  v3 = *v2;
  v4 = v2[1];
  v5 = (v2[2] >> 59) & 1;
  if ((v2[3] & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = a1._rawBits & 0xC;
  v7 = 4 << v5;
  v8 = a2._rawBits & 0xC;
  if ((a1._rawBits & 1) == 0 || v6 == v7 || (a2._rawBits & 1) == 0 || v8 == v7)
  {
    if (v8 == v7)
    {
      rawBits = a1._rawBits;
      a2._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
      a1._rawBits = rawBits;
      if (v6 != v7)
      {
        goto LABEL_12;
      }
    }

    else if (v6 != v7)
    {
LABEL_12:
      if (a1._rawBits >> 14 < v3 >> 14 || a2._rawBits >> 14 < a1._rawBits >> 14 || v4 >> 14 < a2._rawBits >> 14)
      {
LABEL_18:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (a2._rawBits)
      {
        if (a1._rawBits)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v14 = a1._rawBits;
        v15 = a2._rawBits;
        v16 = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
        a1._rawBits = v14;
        a2._rawBits = v15 & 0xC | v16 & 0xFFFFFFFFFFFFFFF3 | 1;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v17 = a1._rawBits;
      v18 = a2._rawBits;
      v19._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
      a2._rawBits = v18;
      a1._rawBits = v17 & 0xC | v19._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      goto LABEL_17;
    }

    v13 = a2._rawBits;
    a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2._rawBits = v13;
    goto LABEL_12;
  }

  if (a1._rawBits >> 14 < v3 >> 14 || v4 >> 14 < a2._rawBits >> 14)
  {
    goto LABEL_18;
  }

LABEL_17:
  v20 = MEMORY[0x1EEE9AC00](a1._rawBits, a2._rawBits);
  return _StringGuts.mutateSubrangeInSubstring(subrange:startIndex:endIndex:with:)(v20, v9, v2, v10, partial apply for specialized closure #1 in Substring.UnicodeScalarView.replaceSubrange<A>(_:with:));
}

uint64_t Substring.UnicodeScalarView.replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = (v2[2] >> 59) & 1;
  if ((v2[3] & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = a1._rawBits & 0xC;
  v7 = 4 << v5;
  v8 = a2._rawBits & 0xC;
  if ((a1._rawBits & 1) == 0 || v6 == v7 || (a2._rawBits & 1) == 0 || v8 == v7)
  {
    if (v8 == v7)
    {
      rawBits = a1._rawBits;
      a2._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
      a1._rawBits = rawBits;
      if (v6 != v7)
      {
        goto LABEL_12;
      }
    }

    else if (v6 != v7)
    {
LABEL_12:
      if (a1._rawBits >> 14 < v3 >> 14 || a2._rawBits >> 14 < a1._rawBits >> 14 || v4 >> 14 < a2._rawBits >> 14)
      {
LABEL_18:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (a2._rawBits)
      {
        if (a1._rawBits)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v13 = a1._rawBits;
        v14 = a2._rawBits;
        v15 = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
        a1._rawBits = v13;
        a2._rawBits = v14 & 0xC | v15 & 0xFFFFFFFFFFFFFFF3 | 1;
        if (v13)
        {
          goto LABEL_17;
        }
      }

      v16 = a1._rawBits;
      v17 = a2._rawBits;
      v18._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
      a2._rawBits = v17;
      a1._rawBits = v16 & 0xC | v18._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      goto LABEL_17;
    }

    v20 = a2._rawBits;
    a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2._rawBits = v20;
    goto LABEL_12;
  }

  if (a1._rawBits >> 14 < v3 >> 14 || v4 >> 14 < a2._rawBits >> 14)
  {
    goto LABEL_18;
  }

LABEL_17:
  v9 = MEMORY[0x1EEE9AC00](a1._rawBits, a2._rawBits);
  return _StringGuts.mutateSubrangeInSubstring(subrange:startIndex:endIndex:with:)(v9, v10, v2, v11, partial apply for closure #1 in Substring.UnicodeScalarView.replaceSubrange<A>(_:with:));
}

double _sSsSmsSmxycfCTW_0@<D0>(uint64_t a1@<X8>)
{
  *&result = 15;
  *a1 = xmmword_18071DB90;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance Substring.UnicodeScalarView@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>)
{
  result = specialized RangeReplaceableCollection.init(repeating:count:)(*a1, a3);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.init<A>(_:) in conformance Substring.UnicodeScalarView@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = specialized RangeReplaceableCollection.init<A>(_:)(a1, a2, a3);
  *a4 = result;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance Substring.UnicodeScalarView()
{
  v1._rawBits = *(v0 + 8);
  v2._rawBits = v1._rawBits;
  return specialized Substring.UnicodeScalarView.replaceSubrange<A>(_:with:)(v1, v2);
}

uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance Substring.UnicodeScalarView(uint64_t a1, Swift::UInt64 *a2)
{
  v3._rawBits = *a2;
  v2._rawBits = v3._rawBits;
  return specialized Substring.UnicodeScalarView.replaceSubrange<A>(_:with:)(v2, v3);
}

uint64_t protocol witness for RangeReplaceableCollection.remove(at:) in conformance Substring.UnicodeScalarView@<X0>(Swift::UInt64 *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v4._rawBits = *a1;
  result = specialized RangeReplaceableCollection.remove(at:)(v4, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.removeSubrange(_:) in conformance Substring.UnicodeScalarView(Swift::UInt64 *a1)
{
  v1._rawBits = a1[1];
  v2._rawBits = *a1;
  return specialized Substring.UnicodeScalarView.replaceSubrange<A>(_:with:)(v2, v1);
}

uint64_t protocol witness for RangeReplaceableCollection._customRemoveLast() in conformance Substring.UnicodeScalarView@<X0>(uint64_t a1@<X8>)
{
  result = specialized RangeReplaceableCollection<>._customRemoveLast()();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t protocol witness for RangeReplaceableCollection.removeFirst() in conformance Substring.UnicodeScalarView@<X0>(_DWORD *a1@<X8>)
{
  result = specialized RangeReplaceableCollection<>.removeFirst()();
  *a1 = result;
  return result;
}

void specialized Substring.append<A>(contentsOf:)(unint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v11 = v10;
  v14 = *v10;
  v15._rawBits = v10[1];
  v17 = v10[2];
  v16 = v10[3];
  v18 = HIBYTE(v16) & 0xF;
  v19 = v17 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v14 >> 16)
  {
    v21 = 0;
  }

  else
  {
    v21 = v15._rawBits >> 16 == v20;
  }

  if (v21)
  {
    v23 = v10[3];
  }

  else
  {
    v17 = specialized static String._copying(_:)(v14, v15, v10[2], v10[3]);
    v23 = v22;
    v16;
    v18 = HIBYTE(v23) & 0xF;
    v19 = v17 & 0xFFFFFFFFFFFFLL;
    v16 = v23;
  }

  v98 = v17;
  v99 = v16;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v24 = v18;
  }

  else
  {
    v24 = v19;
  }

  if (!v24 && (v17 & ~v23 & 0x2000000000000000) == 0)
  {
    a2;
    v16;
    goto LABEL_107;
  }

  v25 = HIBYTE(a2) & 0xF;
  v93 = v19;
  if ((v23 & 0x2000000000000000) != 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v52 = v18 + v25;
      if (v18 + v25 < 0x10)
      {
        if (v25)
        {
          v74 = 0;
          v75 = 0;
          v76 = 8 * v18;
          do
          {
            v77 = a2 >> (v74 & 0x38);
            if (v75 < 8)
            {
              v77 = a1 >> v74;
            }

            v78 = (v77 << (v76 & 0x38)) | ((-255 << (v76 & 0x38)) - 1) & v23;
            v79 = (v77 << v76) | ((-255 << v76) - 1) & v17;
            if (v18 <= 7)
            {
              v17 = v79;
            }

            else
            {
              v23 = v78;
            }

            ++v18;
            v76 += 8;
            v74 += 8;
            ++v75;
          }

          while (8 * v25 != v74);
        }

        goto LABEL_99;
      }

      v94 = 0;
      v26 = a1 & 0xFFFFFFFFFFFFLL;
      v91 = HIBYTE(a2) & 0xF;
      v92 = v91;
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_46;
      }

LABEL_18:
      v27 = v24;
      if ((v23 & 0x1000000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_50:
      v47 = v26;
      v48 = String.UTF8View._foreignCount()();
      v26 = v47;
      v28 = v48 + v25;
      if (!__OFADD__(v48, v25))
      {
        goto LABEL_20;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v91 = HIBYTE(a2) & 0xF;
    v26 = a1 & 0xFFFFFFFFFFFFLL;
    v94 = 1;
LABEL_45:
    v25 = v26;
    v92 = v26;
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_18;
  }

  v94 = (a2 & 0x2000000000000000) == 0;
  v26 = a1 & 0xFFFFFFFFFFFFLL;
  v91 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    goto LABEL_45;
  }

  v92 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_46:
  v41 = v26;
  v42._rawBits = (v92 << 16) | 1;
  v43._rawBits = 1;
  v44._rawBits = _StringGuts.validateScalarRange(_:)(v43, v42, a1, a2)._rawBits;
  to._rawBits = v45;
  if (v44._rawBits >= 0x10000)
  {
    rawBits = v44._rawBits;
  }

  else
  {
    rawBits = v44._rawBits | 3;
  }

  a2;
  v25 = String.UTF8View.distance(from:to:)(rawBits, to);
  a2;
  v26 = v41;
  v27 = v24;
  if ((v23 & 0x1000000000000000) != 0)
  {
    goto LABEL_50;
  }

LABEL_19:
  v28 = v27 + v25;
  if (__OFADD__(v27, v25))
  {
    goto LABEL_52;
  }

LABEL_20:
  v90 = v26;
  to._rawBits = v11;
  v29 = v17 & ~v23;
  if ((v29 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v23 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v28 > 15)
    {
      goto LABEL_31;
    }

LABEL_53:
    if ((v23 & 0x2000000000000000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_26;
  }

  v30 = _StringGuts.nativeUnusedCapacity.getter(v17, v16);
  if (v31)
  {
    goto LABEL_122;
  }

  if (v28 <= 15)
  {
    if ((v23 & 0x2000000000000000) != 0)
    {
      goto LABEL_54;
    }

    if (v30 < v25)
    {
LABEL_26:
      if ((v23 & 0x1000000000000000) == 0)
      {
        v11 = to._rawBits;
        if ((v17 & 0x1000000000000000) != 0)
        {
          v32 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v33 = v93;
        }

        else
        {
          v32 = _StringObject.sharedUTF8.getter(v17, v16);
        }

        closure #1 in _StringGuts._convertedToSmall()(v32, v33, &__src, a10);
        v17 = __src;
        v23 = v97;
        goto LABEL_55;
      }

      v17 = _StringGuts._foreignConvertedToSmall()(v17, v16);
      v23 = v83;
LABEL_54:
      v11 = to._rawBits;
LABEL_55:
      a2;
      if (v94)
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          a1 = _StringGuts._foreignConvertedToSmall()(a1, a2);
          v89 = v88;
          a2;
          a2 = v89;
        }

        else
        {
          v84 = v90;
          if ((a1 & 0x1000000000000000) != 0)
          {
            v85 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v85 = _StringObject.sharedUTF8.getter(a1, a2);
          }

          closure #1 in _StringGuts._convertedToSmall()(v85, v84, &__src, v49);
          a2;
          a1 = __src;
          a2 = v97;
        }
      }

      else
      {
        a2;
      }

      v50 = HIBYTE(v23) & 0xF;
      v51 = HIBYTE(a2) & 0xF;
      v52 = v51 + v50;
      if (v51 + v50 <= 0xF)
      {
        if (v51)
        {
          v53 = 0;
          v54 = 0;
          v55 = 8 * v50;
          v56 = 8 * v51;
          do
          {
            v57 = a2 >> (v53 & 0x38);
            if (v54 < 8)
            {
              v57 = a1 >> v53;
            }

            v58 = (v57 << (v55 & 0x38)) | ((-255 << (v55 & 0x38)) - 1) & v23;
            v59 = (v57 << v55) | ((-255 << v55) - 1) & v17;
            if (v50 <= 7)
            {
              v17 = v59;
            }

            else
            {
              v23 = v58;
            }

            ++v50;
            v55 += 8;
            v53 += 8;
            ++v54;
          }

          while (v56 != v53);
        }

LABEL_99:
        v16;
        v80 = 0xA000000000000000;
        if (!(v17 & 0x8080808080808080 | v23 & 0x80808080808080))
        {
          v80 = 0xE000000000000000;
        }

        a2 = v80 & 0xFF00000000000000 | (v52 << 56) | v23 & 0xFFFFFFFFFFFFFFLL;
        a1 = v17;
        goto LABEL_107;
      }

LABEL_122:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

LABEL_31:
  v34 = v29 & 0x2000000000000000;
  v35 = _StringGuts.nativeUnusedCapacity.getter(v17, v16);
  if ((v36 & 1) != 0 || v35 < v25)
  {
    if (v34)
    {
      swift_isUniquelyReferenced_nonNull_native(v23 & 0xFFFFFFFFFFFFFFFLL);
    }

    v37 = 2 * _StringGuts.nativeCapacity.getter(v17, v16);
    if (v38)
    {
      v37 = 0;
    }

    if (v37 > v28)
    {
      v28 = v37;
    }

    goto LABEL_39;
  }

  if (!v34)
  {
LABEL_39:
    v11 = to._rawBits;
LABEL_40:
    v39 = _StringGuts.uniqueNativeCapacity.getter();
    if (v40)
    {
      if ((v23 & 0x1000000000000000) != 0)
      {
        v24 = String.UTF8View._foreignCount()();
      }
    }

    else
    {
      v24 = 2 * v39;
    }

    if (v24 <= v28)
    {
      v24 = v28;
    }

    if ((v23 & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignGrow(_:)(v24);
    }

    else
    {
      if ((v23 & 0x2000000000000000) != 0)
      {
        __src = v17;
        v97 = v23 & 0xFFFFFFFFFFFFFFLL;
        v63 = v18 | 0xC000000000000000;
        if ((v23 & 0x4000000000000000) == 0)
        {
          v63 = v18;
        }

        v64 = v63 | 0x3000000000000000;
        v62 = _allocateStringStorage(codeUnitCapacity:)(v24);
        *(v62 + 16) = v65;
        *(v62 + 24) = v64;
        if (v65 < 0)
        {
          *__StringStorage._breadcrumbsAddress.getter() = 0;
          v64 = *(v62 + 24);
        }

        *(v62 + 32 + (v64 & 0xFFFFFFFFFFFFLL)) = 0;
        specialized UnsafeMutablePointer.initialize(from:count:)(&__src, v18, (v62 + 32));
      }

      else
      {
        if ((v17 & 0x1000000000000000) != 0)
        {
          v60 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v61 = v93;
        }

        else
        {
          v60 = _StringObject.sharedUTF8.getter(v17, v16);
        }

        v62 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v60, v61, v24, v17 < 0);
      }

      v66 = *(v62 + 24);
      v16;
      v98 = v66;
      v99 = v62;
    }

    goto LABEL_84;
  }

  v11 = to._rawBits;
  if (!swift_isUniquelyReferenced_nonNull_native(v23 & 0xFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_40;
  }

LABEL_84:
  if ((a2 & 0x1000000000000000) != 0)
  {
    _StringGuts._foreignAppendInPlace(_:)(a1, a2, 0, v92);
    a1 = v98;
    a2 = v99;
  }

  else
  {
    if (v94)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v67 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v68 = v90;
        v69 = v90;
      }

      else
      {
        v86 = _StringObject.sharedUTF8.getter(a1, a2);
        if (v87 < v90)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v67 = v86;
        v69 = v87;
        v11 = to._rawBits;
        v68 = v90;
      }

      p_src = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v68, v67, v69);
      a2 = v99;
      v72 = v99 & 0xFFFFFFFFFFFFFFFLL;
      v73 = a1 >> 63;
    }

    else
    {
      __src = a1;
      v97 = a2 & 0xFFFFFFFFFFFFFFLL;
      v73 = (a2 >> 62) & 1;
      a2 = v99;
      v72 = v99 & 0xFFFFFFFFFFFFFFFLL;
      p_src = &__src;
      v71 = v91;
    }

    __StringStorage.appendInPlace(_:isASCII:)(p_src, v71, v73);
    a1 = *(v72 + 24);
  }

LABEL_107:
  v81 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v81 = a1;
  }

  v82 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v82 = 11;
  }

  *v11 = 15;
  v11[1] = v82 | (v81 << 16);
  v11[2] = a1;
  v11[3] = a2;
}

void Substring.append<A>(contentsOf:)(unint64_t *a1, ValueMetadata *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9._rawBits = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = Substring.description.getter(v8, v9, v10, v11);
  v14 = v13;
  v11;
  String.append<A>(contentsOf:)(a1, a2, a3);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12;
  }

  v16 = 7;
  if (((v14 >> 60) & ((v12 & 0x800000000000000) == 0)) != 0)
  {
    v16 = 11;
  }

  *v4 = 15;
  v4[1] = v16 | (v15 << 16);
  v4[2] = v12;
  v4[3] = v14;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance Substring.UnicodeScalarView(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, uint64_t, uint64_t, uint64_t))
{
  (a7)(*a1, a1[1], a2, a3, a4, a6);
  v9 = *(*(a3 - 8) + 8);

  return v9(a2, a3);
}

uint64_t protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance Substring@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, int8x16_t a11@<Q7>)
{
  result = specialized RangeReplaceableCollection.init(repeating:count:)(*a1, a1[1], a2, a4, a5, a6, a7, a8, a9, a10, a11);
  *a3 = result;
  a3[1] = v13;
  a3[2] = v14;
  a3[3] = v15;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.init<A>(_:) in conformance Substring@<X0>(uint64_t *a1@<X0>, Class *a2@<X1>, uint64_t *a3@<X8>)
{
  result = Substring.init<A>(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

void protocol witness for RangeReplaceableCollection.append(_:) in conformance Substring(unint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4._rawBits = *(v1 + 8);
  v5._rawBits = v4._rawBits;
  specialized Substring._replaceSubrange<A>(_:with:)(v4, v5, v2, v3);

  v3;
}

uint64_t protocol witness for RangeReplaceableCollection.append<A>(contentsOf:) in conformance Substring(unint64_t *a1, ValueMetadata *a2, uint64_t a3)
{
  Substring.append<A>(contentsOf:)(a1, a2, a3);
  v5 = *(a2[-1].Description + 1);

  return v5(a1, a2);
}

void protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance Substring(unint64_t *a1, Swift::UInt64 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5._rawBits = *a2;
  v4._rawBits = v5._rawBits;
  specialized Substring._replaceSubrange<A>(_:with:)(v4, v5, v2, v3);

  v3;
}

uint64_t protocol witness for RangeReplaceableCollection.insert<A>(contentsOf:at:) in conformance Substring.UnicodeScalarView(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void))
{
  (a7)(a1, *a2, a3, a4, a5, a6);
  v9 = *(*(a3 - 8) + 8);

  return v9(a1, a3);
}

uint64_t protocol witness for RangeReplaceableCollection.remove(at:) in conformance Substring@<X0>(Swift::UInt64 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3._rawBits = *a1;
  result = specialized RangeReplaceableCollection.remove(at:)(v3);
  *a2 = result;
  a2[1] = v5;
  return result;
}

void protocol witness for RangeReplaceableCollection.removeSubrange(_:) in conformance Substring(Swift::UInt64 *a1)
{
  v1._rawBits = a1[1];
  v2._rawBits = *a1;
  specialized Substring._replaceSubrange<A>(_:with:)(v2, v1);
}

uint64_t protocol witness for RangeReplaceableCollection._customRemoveLast() in conformance Substring@<X0>(uint64_t *a1@<X8>)
{
  result = specialized RangeReplaceableCollection<>._customRemoveLast()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.removeFirst() in conformance Substring@<X0>(uint64_t *a1@<X8>)
{
  result = specialized RangeReplaceableCollection<>.removeFirst()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__objc2_class **Substring.filter(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, Swift::UInt64 a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  a6;
  v13._rawBits = a3;
  result = specialized Sequence.filter(_:)(v13, a4, a5, a6, a1, a2);
  if (!v6)
  {
    if (&full type metadata for [Character] == &full type metadata for String)
    {
      __break(1u);
    }

    else if (&full type metadata for [Character] != &full type metadata for Substring)
    {
      v15 = result;
      specialized String.append<A>(contentsOf:)(result);
      v15;
      return 0;
    }

    __break(1u);
  }

  return result;
}

void protocol witness for TextOutputStream._writeASCII(_:) in conformance Substring(uint64_t a1, uint64_t a2, uint8x8_t a3)
{
  v3 = specialized static String._uncheckedFromASCII(_:)(a1, a2, a3);
  v5 = v4;
  specialized Substring.append<A>(contentsOf:)(v3, v4, v6, v7, v8, v9, v10, v11, v12, v13);

  v5;
}

void Substring.write<A>(to:)(uint64_t a1, Swift::UInt64 a2, Swift::String::Index a3, Swift::UInt64 a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = Substring.description.getter(a2, a3, a4, a5);
  v12 = v11;
  (*(a7 + 24))(v10);

  v12;
}

uint64_t protocol witness for ExpressibleByStringInterpolation.init(stringInterpolation:) in conformance Substring@<X0>(uint64_t *a2@<X8>)
{
  result = Substring.init(unicodeScalarLiteral:)();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t closure #1 in __SwiftNativeNSArrayWithContiguousStorage._objectAt(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3 < 0 || a3 >= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a4 = *(result + 8 * a3);
  return result;
}

uint64_t @objc __SwiftNativeNSArrayWithContiguousStorage.objectAtSubscript(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a3;
  (*(*a1 + 88))(&v6, a4, v5, &unk_1EEEBC198);
  return v6;
}

id @objc _SwiftNSMutableArray.objectAtSubscript(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a3, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)(a3, v4);
  }

  else
  {
    v5 = *(v4 + 8 * a3 + 32);
    swift_unknownObjectRetain(v5);
  }

  swift_unknownObjectRelease(v5);
  return v5;
}

void _SwiftNSMutableArray.getObjects(_:range:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  if ((v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v8 = v4;
    _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5yXl_ytTg581_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_yXl_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyyXlytIsgyrzo_Tf1ncn_n(v8, partial apply for closure #1 in _SwiftNSMutableArray.getObjects(_:range:));
    goto LABEL_13;
  }

  if (a2 < 0)
  {
    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 < a2)
  {
    goto LABEL_14;
  }

  v6 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 < 0 || v5 < v6)
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v5)
  {
    if ((a3 - 0x1000000000000000) >> 61 == 7)
    {
      v7 = 8 * a3;
      if ((v7 & 0x8000000000000000) == 0)
      {
        memmove(a1, ((v4 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 32), v7);
        goto LABEL_12;
      }

LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  v4;
LABEL_13:
  v4;
}

Swift::Void __swiftcall _SwiftNSMutableArray.exchange(at:with:)(Swift::Int at, Swift::Int with)
{
  if (at != with)
  {
    v5 = *(v2 + 16);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(at, (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)(at, v5);
    }

    else
    {
      v6 = *(v5 + 8 * at + 32);
      swift_unknownObjectRetain(v6);
    }

    v7 = *(v2 + 16);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(with, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)(with, v7);
    }

    else
    {
      v8 = *(v7 + 8 * with + 32);
      swift_unknownObjectRetain(v8);
    }

    v9 = *(v2 + 16);
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(v9);
    *(v2 + 16) = v9;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      *(v2 + 16) = v9;
    }

    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * at + 0x20);
    *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * at + 0x20) = v8;
    swift_unknownObjectRelease(v11);
    v12 = *(v2 + 16);
    if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew()(*(v2 + 16));
      *(v2 + 16) = v12;
    }

    specialized Array._checkSubscript_mutating(_:)(with, v12);
    v13 = *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 8 * with + 0x20);
    *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 8 * with + 0x20) = v6;

    swift_unknownObjectRelease(v13);
  }
}

void _SwiftNSMutableArray.replaceObjects(in:with:count:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v5 < a1)
  {
    goto LABEL_20;
  }

  if (a4 < 0)
  {
LABEL_15:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = *(v4 + 16);
  v8 = (v4 + 16);
  v7 = v9;
  if (v9 >> 62)
  {
    v14 = a3;
    v15 = a4;
    if (v7 < 0)
    {
      v16 = v7;
    }

    else
    {
      v16 = (v7 & 0xFFFFFFFFFFFFFF8);
    }

    v17 = [v16 count];
    if ((v17 & 0x8000000000000000) == 0)
    {
      v10 = v17;
      a4 = v15;
      a3 = v14;
      goto LABEL_6;
    }

LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v11 = specialized _copyCollectionToContiguousArray<A>(_:)(a3, a4);
  if (a1 || v5 != v10)
  {
    v13 = v11;
    specialized Array.replaceSubrange<A>(_:with:)(a1, v5, v11);

    v13;
  }

  else
  {
    v12 = *v8;
    *v8 = v11;

    v12;
  }
}

unint64_t _SwiftNSMutableArray.index(ofObjectIdenticalTo:)(id a1)
{
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
LABEL_16:
    if (v3 < 0)
    {
      v9 = v3;
    }

    else
    {
      v9 = (v3 & 0xFFFFFFFFFFFFFF8);
    }

    v3;
    v4 = [v9 count];
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 16);
  }

  v5 = 0;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)(v5, v3);
      swift_unknownObjectRelease(v7);
      if (v7 == a1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (*(v3 + 8 * v5 + 32) == a1)
      {
LABEL_12:
        v3;
        return v5;
      }
    }

    if (__OFADD__(v5++, 1))
    {
      __break(1u);
      goto LABEL_16;
    }
  }

  v3;
  return 0x7FFFFFFFFFFFFFFFLL;
}

void _SwiftNSMutableArray.setObject(_:at:)(void *a1, unint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = (v2 + 16);
  v5 = v7;
  if (v7 >> 62)
  {
    if (v5 < 0)
    {
      v12 = v5;
    }

    else
    {
      v12 = (v5 & 0xFFFFFFFFFFFFFF8);
    }

    if ([v12 count] == a2)
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) == a2)
  {
LABEL_3:
    swift_unknownObjectRetain(a1);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v8 = *v6;
    v9 = *v6 & 0xFFFFFFFFFFFFFF8;
    v11 = *(v9 + 0x10);
    v10 = *(v9 + 0x18);
    if (v11 >= v10 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1, v11 + 1, 1, v8);
      v9 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    *(v9 + 16) = v11 + 1;
    *(v9 + 8 * v11 + 32) = a1;
    *v6 = v8;
    return;
  }

  v13 = *v6;
  swift_unknownObjectRetain(a1);
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(v13);
  *v6 = v13;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    *v6 = v13;
  }

  specialized Array._checkSubscript_mutating(_:)(a2, v13);
  v15 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20);
  *((*v6 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = a1;

  swift_unknownObjectRelease(v15);
}

uint64_t @objc _SwiftNSMutableArray.setObject(_:at:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  swift_unknownObjectRetain(a3);
  a1;
  _SwiftNSMutableArray.setObject(_:at:)(a3, a4);
  swift_unknownObjectRelease(a3);

  return a1;
}

void _SwiftNSMutableArray.__deallocating_deinit()
{
  *(v0 + 16);

  swift_deallocClassInstance(v0);
}

uint64_t __SwiftDeferredNSArray.init(_nativeStorage:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t _SwiftDeferredNSSet.__ivar_destroyer()
{
  swift_unknownObjectRelease(*(v0 + 16));
  v1 = *(v0 + 24);

  return v1;
}

uint64_t __SwiftDeferredNSArray.deinit()
{
  v1 = atomic_load((v0 + 16));
  if (v1)
  {
    v2 = v1[2];
    swift_unknownObjectRetain(v1);
    if (v2 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    swift_arrayDestroy((v1 + 3), v2, qword_1EEEAC710);
    swift_unknownObjectRelease(v1);
    v3 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
  }

  swift_unknownObjectRelease(v3);
  *(v0 + 24);
  return v0;
}

uint64_t __SwiftDeferredNSArray.withUnsafeBufferOfObjects<A>(_:)@<X0>(uint64_t (*a1)(unint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load((v2 + 16));
  if (v4)
  {
    if ((*(v4 + 16) & 0x8000000000000000) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = v2;
    v21 = a2;
    do
    {
      v8 = *(v7 + 24);
      v9 = (*(*v8 + 112))(&v19, protocol witness for LosslessStringConvertible.init(_:) in conformance String, 0, &unk_1EEEBC478);
      if (v20 != 1)
      {
        v5 = v19;
        return a1(v5);
      }

      v10 = (*(*v8 + 120))(v9);
      v11 = swift_retain_n(v10, 2);
      v12 = 0;
      atomic_compare_exchange_strong((v7 + 16), &v12, v11);
      v13 = v12 == 0;
      v11, 2;
      if (!v13)
      {
        type metadata accessor for __BridgingBufferStorage(0);
        v15 = v14;
        v16 = swift_retain_n(v10, 2);
        v17 = swift_dynamicCastClass(v16, v15);
        v10;
        if (!v17)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v10;
        v18 = *(v10 + 16);
        if (v18 < 0)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        swift_arrayDestroy(v10 + 24, v18, qword_1EEEAC710);
        v10;
      }

      v4 = atomic_load((v7 + 16));
    }

    while (!v4);
    if ((*(v4 + 16) & 0x8000000000000000) != 0)
    {
LABEL_14:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  v5 = v4 + 24;
  return a1(v5);
}

uint64_t __SwiftDeferredStaticNSArray.withUnsafeBufferOfObjects<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 120);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = MEMORY[0x1EEE9AC00](&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v12 = (&v36 - v11);
  v14 = atomic_load(v13);
  if (!v14)
  {
    v38 = v7;
    v39 = v10;
    v40 = v9;
    v41 = v8;
    type metadata accessor for __BridgingBufferStorage(0);
    v15 = v2[3];
    v44 = v16;
    v45 = v15;
    v49 = v4 + 16;
    v37 = (v4 + 32);
    v42 = v4;
    v43 = v2;
    v17 = (v4 + 8);
    v48 = v5;
    do
    {
      v18 = *(v45 + 16);
      if (v18 >> 60)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (__OFADD__(8 * v18, 24))
      {
        goto LABEL_23;
      }

      v19 = swift_bufferAllocate(v44, (8 * v18 + 24), 7uLL);
      v19[2] = v18;
      v46 = v19;
      v47 = v19 + 3;
      if (v18)
      {
        v20 = v45 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v21 = *(v42 + 72);
        v22 = *(v42 + 16);
        v23 = v47;
        do
        {
          v22(v12, v20, v3);
          if (_swift_isClassOrObjCExistentialType(v3, v3))
          {
            if (v5 != 8)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v24 = *v12;
            v25 = *v17;
            swift_unknownObjectRetain(*v12);
            v25(v12, v3);
          }

          else
          {
            v26 = v38;
            (*v37)(v38, v12, v3);
            v24 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v26, v3);
          }

          *v23++ = v24;
          v20 += v21;
          --v18;
          v5 = v48;
        }

        while (v18);
      }

      v27 = v46;
      v28 = swift_retain_n(v46, 2);
      v29 = 0;
      v30 = v43 + 2;
      atomic_compare_exchange_strong(v43 + 2, &v29, v27);
      v31 = v29 == 0;
      swift_unknownObjectRelease_n(v28, 2);
      if (!v31)
      {
        v32 = swift_retain_n(v27, 2);
        v33 = swift_dynamicCastClass(v32, v44);
        swift_unknownObjectRelease(v27);
        if (!v33)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        swift_unknownObjectRelease(v27);
        v34 = v27[2];
        if (v34 < 0)
        {
          goto LABEL_24;
        }

        swift_arrayDestroy(v47, v34, qword_1EEEAC710);
        swift_unknownObjectRelease(v27);
      }

      v14 = atomic_load(v30);
    }

    while (!v14);
    v9 = v40;
  }

  if ((*(v14 + 16) & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v9(v14 + 24);
}

void __SwiftDeferredNSArray.__deallocating_deinit()
{
  v1 = atomic_load((v0 + 16));
  if (v1)
  {
    v2 = v1[2];
    swift_unknownObjectRetain(v1);
    if (v2 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    swift_arrayDestroy((v1 + 3), v2, qword_1EEEAC710);
    swift_unknownObjectRelease(v1);
    v3 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
  }

  swift_unknownObjectRelease(v3);
  *(v0 + 24);

  swift_deallocClassInstance(v0);
}

uint64_t __ContiguousArrayStorageBase.countAndCapacity.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

Swift::tuple_partialValue_Int_overflow_Bool __swiftcall Int.multipliedReportingOverflow(by:)(Swift::Int by)
{
  v2 = v1 * by;
  v3 = (v1 * by) >> 64 != (v1 * by) >> 63;
  v4 = v2;
  result.partialValue = v4;
  result.overflow = v3;
  return result;
}

uint64_t _ss41_withUnprotectedUnsafeTemporaryAllocation9byteCount9alignment_xSi_SixSwKXEtKRi_zlFxBpKXEfU_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a3(a1, a1 + a2);
}

void _stdlib_destroyTLS(void *a1)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  a1;
}

swift *static UnsafeMutablePointer.allocate(capacity:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 72);
  result = (v4 * a1);
  if ((v4 * a1) >> 64 == result >> 63)
  {
    v6 = *(v3 + 80);
    if (v6 > 0xF)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 0;
    }

    return swift_slowAlloc(result, v7 - 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t _UIntBuffer.init(containing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*(a3 + 8) + 120))(a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6 | ((*(a3 + 56))(a2, a3) << 32);
}

uint64_t _UIntBuffer.Iterator._impl.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result);
  return result;
}

uint64_t _UIntBuffer.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v5 = v4;
  v7 = *(v4 + 4);
  v8 = *(a1 + 16);
  if (v7)
  {
    v17 = *v5;
    v9 = v17;
    v10 = *(a1 + 24);
    v11 = *(v10 + 8);
    v12 = *(v11 + 96);
    v13 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(a1, a3, a4);
    v12(&v17, &type metadata for UInt32, v13, v8, v11);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    v14 = *(v10 + 56);
    *v5 = v9 >> v14(v8, v10);
    result = v14(v8, v10);
    *(v5 + 4) = v7 - result;
  }

  else
  {
    v16 = *(*(v8 - 8) + 56);

    return v16(a2, 1, 1, v8);
  }

  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance _UIntBuffer<A>.Iterator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v5 = v4;
  v7 = *(v4 + 4);
  v8 = *(a1 + 16);
  if (v7)
  {
    v17 = *v5;
    v9 = v17;
    v10 = *(a1 + 24);
    v11 = *(v10 + 8);
    v12 = *(v11 + 96);
    v13 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(a1, a3, a4);
    v12(&v17, &type metadata for UInt32, v13, v8, v11);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    v14 = *(v10 + 56);
    *v5 = v9 >> v14(v8, v10);
    result = v14(v8, v10);
    *(v5 + 4) = v7 - result;
  }

  else
  {
    v16 = *(*(v8 - 8) + 56);

    return v16(a2, 1, 1, v8);
  }

  return result;
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance _UIntBuffer<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 4);
  v5 = *v2;
  v6 = v3;
  return specialized Sequence._copyToContiguousArray()(&v5, a1, a2);
}

void protocol witness for Sequence.makeIterator() in conformance _UIntBuffer<A>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance _UIntBuffer<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance _UIntBuffer<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 4);
  v8 = *v3;
  v9 = v5;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, a1, a3);
  return specialized Collection._copyToContiguousArray()(&v8, a1, WitnessTable);
}

uint64_t _UIntBuffer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a2 >> a1;
  v5 = *(a4 + 8);
  v6 = *(v5 + 96);
  v7 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(a1, a2, a3);
  return v6(&v9, &type metadata for UInt32, v7, a3, v5);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance _UIntBuffer<A>(void *a1, char *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0x4002uLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = _UIntBuffer.subscript.read(v7, *a2, *v3, *(a3 + 16), *(a3 + 24));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*_UIntBuffer.subscript.read(uint64_t a1, char a2, unsigned int a3, uint64_t a4, uint64_t a5))()
{
  v10 = *(a4 - 8);
  *a1 = a4;
  *(a1 + 8) = v10;
  v11 = *(v10 + 64);
  if (swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc(v11, 0x3507uLL);
  }

  else
  {
    v12 = malloc(v11);
  }

  *(a1 + 16) = v12;
  *(a1 + 24) = a3 >> a2;
  v15 = *(a5 + 8);
  v16 = *(v15 + 96);
  v17 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v12, v13, v14);
  v16(a1 + 24, &type metadata for UInt32, v17, a4, v15);
  return _ArrayBuffer.subscript.read;
}

uint64_t _UIntBuffer.distance(from:to:)(unsigned __int8 a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 56))(a4, a5, a3);
  if (!v7)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (a2 - a1) / v7;
}

uint64_t protocol witness for Collection.index(after:) in conformance _UIntBuffer<A>@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  result = (*(*(a2 + 24) + 56))();
  *a3 = v4 + result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance _UIntBuffer<A>(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = (*(*(a2 + 24) + 56))();
  *a1 = v3 + result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance _UIntBuffer<A>@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  result = (*(*(a2 + 24) + 56))();
  *a3 = v4 - result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance _UIntBuffer<A>(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = (*(*(a2 + 24) + 56))();
  *a1 = v3 - result;
  return result;
}

uint64_t _ss11_UIntBufferVyxGSlsSl5index_8offsetBy07limitedE05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, a4, a3);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance _UIntBuffer<A>@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  result = (*(*(a3 + 24) + 56))();
  *a4 = v6 + result * a2;
  return result;
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance _UIntBuffer<A>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = (*(*(a3 + 24) + 56))();
  if (!v5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (v4 - v3) / v5;
}

uint64_t FixedWidthInteger._fullShiftLeft<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a1;
  v74 = a4;
  v68 = a6;
  v9 = *(a5 + 8);
  v71 = a2;
  v72 = v9;
  v10 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v56 - v15;
  v17 = *(a3 - 1);
  v19 = MEMORY[0x1EEE9AC00](v14, v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v56 - v24;
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v70 = &v56 - v28;
  v75 = *(a2 - 8);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v65 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v32);
  v73 = &v56 - v33;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a3, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v12, AssociatedConformanceWitness);
  (*(v10 + 24))(v16, a3, v10);
  v35 = v25;
  (*(a5 + 80))(v25, v21, a3, a5);
  v69 = *(v17 + 8);
  v36 = v69(v21, a3);
  v76[0] = 1;
  v37 = v72;
  v38 = *(v72 + 96);
  v62 = v72 + 96;
  v64 = v38;
  v63 = lazy protocol witness table accessor for type Int and conformance Int(v36, v39, v40);
  v38(v76, &type metadata for Int, v63, a3, v37);
  v61 = a5;
  v60 = *(a5 + 200);
  v41 = v70;
  v60(v35, v21, a3, a5);
  v42 = v69;
  v59 = v17 + 8;
  v69(v21, a3);
  v43 = v35;
  v42(v35, a3);
  v44 = v74;
  v45 = *(v74 + 8);
  v57 = *(v45 + 96);
  v58 = v45;
  v46 = v65;
  v47 = v41;
  v48 = v71;
  v57(v47, a3, v37, v71);
  v56 = *(v44 + 216);
  v56(v67, v46, v48, v44);
  v49 = *(v75 + 8);
  v75 += 8;
  v49(v46, v48);
  v76[0] = 1;
  v50 = v72;
  v64(v76, &type metadata for Int, v63, a3, v72);
  v51 = v70;
  v60(v66, v43, a3, v61);
  v69(v43, a3);
  v52 = v51;
  v53 = v71;
  (v57)(v52, a3, v50);
  v54 = v73;
  v56(v73, v46, v53, v74);
  v49(v46, v53);
  return (v49)(v54, v53);
}

uint64_t FixedWidthInteger._fullShiftRight<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a1;
  v74 = a4;
  v68 = a6;
  v9 = *(a5 + 8);
  v71 = a2;
  v72 = v9;
  v10 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v56 - v15;
  v17 = *(a3 - 1);
  v19 = MEMORY[0x1EEE9AC00](v14, v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v56 - v24;
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v70 = &v56 - v28;
  v75 = *(a2 - 8);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v65 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v32);
  v73 = &v56 - v33;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a3, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v12, AssociatedConformanceWitness);
  (*(v10 + 24))(v16, a3, v10);
  v35 = v25;
  (*(a5 + 80))(v25, v21, a3, a5);
  v69 = *(v17 + 8);
  v36 = v69(v21, a3);
  v76[0] = 1;
  v37 = v72;
  v38 = *(v72 + 96);
  v62 = v72 + 96;
  v64 = v38;
  v63 = lazy protocol witness table accessor for type Int and conformance Int(v36, v39, v40);
  v38(v76, &type metadata for Int, v63, a3, v37);
  v61 = a5;
  v60 = *(a5 + 200);
  v41 = v70;
  v60(v35, v21, a3, a5);
  v42 = v69;
  v59 = v17 + 8;
  v69(v21, a3);
  v43 = v35;
  v42(v35, a3);
  v44 = v74;
  v45 = *(v74 + 8);
  v57 = *(v45 + 96);
  v58 = v45;
  v46 = v65;
  v47 = v41;
  v48 = v71;
  v57(v47, a3, v37, v71);
  v56 = *(v44 + 200);
  v56(v67, v46, v48, v44);
  v49 = *(v75 + 8);
  v75 += 8;
  v49(v46, v48);
  v76[0] = 1;
  v50 = v72;
  v64(v76, &type metadata for Int, v63, a3, v72);
  v51 = v70;
  v60(v66, v43, a3, v61);
  v69(v43, a3);
  v52 = v51;
  v53 = v71;
  (v57)(v52, a3, v50);
  v54 = v73;
  v56(v73, v46, v53, v74);
  v49(v46, v53);
  return (v49)(v54, v53);
}

uint64_t static FixedWidthInteger._lowBits<A>(_:)@<X0>(char *a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v91 = a5;
  v92 = a4;
  v93 = a1;
  v85 = a6;
  v95 = *(a5 + 8);
  v81 = *(*(v95 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v81, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v80 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v79 = &v73 - v12;
  v96 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v78 = &v73 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v90 = &v73 - v21;
  v22 = *(a4 + 8);
  v23 = *(*(v22 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v23, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v25 = v24;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = &v73 - v28;
  v94 = *(a2 - 1);
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v89 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = &v73 - v35;
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v77 = &v73 - v39;
  MEMORY[0x1EEE9AC00](v38, v40);
  v84 = &v73 - v41;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v23, a2, v25, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v25, AssociatedConformanceWitness);
  v43 = *(v23 + 24);
  v86 = v36;
  v43(v29, a2, v23);
  v87 = v22;
  v44 = *(v22 + 184);
  v82 = v22 + 184;
  v83 = v44;
  v44(v36, a2, v22);
  v45 = *(v94 + 8);
  v94 += 8;
  v88 = v45;
  v45(v36, a2);
  v46 = v80;
  v47 = v81;
  v48 = swift_getAssociatedConformanceWitness(v81, a3, v80, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v49 = v79;
  (*(v48 + 8))(&qword_1806729C0, 512, v46, v48);
  (v47[3])(v49, a3, v47);
  v50 = v78;
  v51 = v91;
  (*(v91 + 80))(v78, v16, a3);
  v52 = *(v96 + 8);
  v96 += 8;
  v53 = v52(v16, a3);
  v97[0] = 1;
  v54 = v95;
  v80 = *(v95 + 96);
  v55 = v80;
  v81 = (v95 + 96);
  v79 = lazy protocol witness table accessor for type Int and conformance Int(v53, v56, v57);
  v55(v97, &type metadata for Int, v79, a3, v54);
  v58 = v51;
  v76 = *(v51 + 200);
  v59 = v90;
  v76(v50, v16, a3, v58);
  v75 = v52;
  v52(v16, a3);
  v52(v50, a3);
  v74 = *(v87 + 96);
  v60 = v89;
  v74(v59, a3, v95, a2);
  v73 = *(v92 + 216);
  v61 = v77;
  v73(v77, v60, a2);
  v62 = v88;
  v88(v60, a2);
  v62(v61, a2);
  v97[0] = 1;
  v63 = v50;
  v64 = v95;
  v80(v97, &type metadata for Int, v79, a3, v95);
  v65 = v90;
  v76(v93, v63, a3, v91);
  v75(v63, a3);
  v66 = v89;
  v67 = v65;
  v68 = v87;
  (v74)(v67, a3, v64, a2, v87);
  v69 = v84;
  v70 = v86;
  (v73)(v86, v66, a2, v92);
  v71 = v88;
  v88(v66, a2);
  v71(v70, a2);
  v83(v69, a2, v68);
  return (v71)(v69, a2);
}

uint64_t Range._contains_(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, v6, v6, "lower upper ", 0);
  v59 = v7;
  v61 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v57 = &v54 - v13;
  v14 = *(v6 - 1);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v58 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v54 - v20;
  v63 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v60 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v24 + 32);
  v54 = *(v25 + 40);
  v26 = v54(v3, a1, v6, v25);
  v65 = v25;
  v66 = a1;
  v67 = v4;
  v64 = v21;
  if (v26)
  {
    v56 = *(v14 + 16);
    v56(v21, v3, v6);
    v27 = *(v25 + 16);
  }

  else
  {
    v28 = v25;
    v29 = *(v4 + 36);
    v27 = *(v28 + 16);
    v30 = v27(v3 + v29, a1, v6);
    v31 = *(v14 + 16);
    v56 = v31;
    if (v30)
    {
      v32 = v3 + v29;
      v33 = v64;
    }

    else
    {
      v33 = v64;
      v32 = a1;
    }

    v31(v33, v32, v6);
    v4 = v67;
    v25 = v65;
  }

  v34 = *(v4 + 36);
  v35 = v66;
  v36 = (v27)(v3 + v34, v66 + v34, v6, v25);
  v55 = v34;
  if (v36)
  {
    v37 = v3 + v34;
  }

  else
  {
    if (v54(v3, v35 + v34, v6, v25))
    {
      v38 = v58;
      v39 = v58;
      v37 = v3;
      goto LABEL_13;
    }

    v37 = v35 + v34;
  }

  v38 = v58;
  v39 = v58;
LABEL_13:
  v56(v39, v37, v6);
  v40 = *(v14 + 32);
  v41 = v57;
  v40(v57, v64, v6);
  v42 = v59;
  v40(&v41[*(v59 + 48)], v38, v6);
  v43 = v61;
  v44 = v14;
  v45 = v62;
  (*(v61 + 16))(v62, v41, v42);
  v64 = *(v42 + 48);
  v46 = v60;
  v40(v60, v45, v6);
  v47 = *(v44 + 8);
  v47(&v64[v45], v6);
  (*(v43 + 32))(v45, v41, v42);
  v48 = *(v67 + 36);
  v40(&v46[v48], &v45[*(v42 + 48)], v6);
  v47(v45, v6);
  v49 = v66;
  v50 = *(v65 + 8);
  v51 = *(v50 + 8);
  if (v51(v46, v66, v6, v50))
  {
    v52 = v51(&v46[v48], v49 + v55, v6, v50);
  }

  else
  {
    v52 = 0;
  }

  (*(v63 + 8))(v46, v67);
  return v52 & 1;
}

uint64_t _UIntBuffer.append(_:)(void (*a1)(char *, uint64_t), unsigned __int16 *a2)
{
  v83 = a1;
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v6 = *(v5 + 8);
  v82 = *(*(v6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v82, v4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v81 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v80 = &v73 - v10;
  v11 = *(v4 - 1);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v78 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v85 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v73 - v19;
  v21 = *v2;
  v88 = v2;
  v22 = *(v2 + 4);
  v89 = v21;
  v90 = v22;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, a2, v23);
  v25 = Collection.count.getter(a2, WitnessTable);
  if (__OFADD__(v25, 1))
  {
    __break(1u);
LABEL_27:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (specialized _UIntBuffer.capacity.getter(v4, v5) < v25 + 1)
  {
    goto LABEL_27;
  }

  (*(v5 + 64))(v4, v5);
  v86 = *(v6 + 64);
  v87 = v6 + 64;
  if (v86(v4, v6))
  {
    v27 = v81;
    v26 = v82;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v82, v4, v81, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v29 = v80;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v27, AssociatedConformanceWitness);
    v30 = v85;
    (v26[3])(v29, v4, v26);
    LOBYTE(v26) = (*(*(*(v6 + 32) + 8) + 32))(v20, v30, v4);
    (*(v11 + 8))(v30, v4);
    if ((v26 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v84 = *(v6 + 128);
  if (v84(v4, v6) < 32)
  {
    goto LABEL_14;
  }

  v31 = v86(v4, v6);
  v32 = v84(v4, v6);
  if (v31)
  {
    if (v32 <= 32)
    {
      v35 = v81;
      v36 = v82;
      v37 = swift_getAssociatedConformanceWitness(v82, v4, v81, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v38 = v80;
      (*(v37 + 8))(&qword_18071E0A8, 256, v35, v37);
      v39 = v85;
      (v36[3])(v38, v4, v36);
      LOBYTE(v38) = (*(*(*(v6 + 32) + 8) + 40))(v20, v39, v4);
      (*(v11 + 8))(v39, v4);
      if ((v38 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_13:
      (*(v6 + 120))(v4, v6);
      goto LABEL_14;
    }
  }

  else if (v32 < 33)
  {
    goto LABEL_13;
  }

  v89 = -1;
  v40 = *(v6 + 96);
  v41 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v32, v33, v34);
  v42 = v85;
  v40(&v89, &type metadata for UInt32, v41, v4, v6);
  v43 = (*(*(*(v6 + 32) + 8) + 16))(v42, v20, v4);
  (*(v11 + 8))(v42, v4);
  if (v43)
  {
    goto LABEL_28;
  }

LABEL_14:
  v77 = v5;
  v79 = *(v6 + 120);
  v76 = v79(v4, v6);
  v44 = *(v11 + 8);
  v44(v20, v4);
  v45 = *(v88 + 4);
  v74 = *v88;
  v75 = v45;
  v46 = v78;
  (*(v11 + 16))(v78, v83, v4);
  if (v86(v4, v6))
  {
    v48 = v81;
    v47 = v82;
    v49 = swift_getAssociatedConformanceWitness(v82, v4, v81, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v50 = v80;
    (*(v49 + 8))(&qword_18071E0A8, 256, v48, v49);
    v51 = v47[3];
    v83 = (v6 + 128);
    v52 = v85;
    (v51)(v50, v4, v47);
    LOBYTE(v47) = (*(*(*(v6 + 32) + 8) + 32))(v46, v52, v4);
    v44(v52, v4);
    if ((v47 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v83 = v44;
  v53 = v84;
  if (v84(v4, v6) >= 32)
  {
    v54 = v86(v4, v6);
    v55 = v53(v4, v6);
    if (v54)
    {
      if (v55 <= 32)
      {
        v59 = v81;
        v58 = v82;
        v60 = swift_getAssociatedConformanceWitness(v82, v4, v81, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v61 = v80;
        (*(v60 + 8))(&qword_18071E0A8, 256, v59, v60);
        v62 = v85;
        (v58[3])(v61, v4, v58);
        LOBYTE(v58) = (*(*(*(v6 + 32) + 8) + 40))(v46, v62, v4);
        v83(v62, v4);
        if ((v58 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else if (v55 < 33)
    {
LABEL_24:
      v79(v4, v6);
      goto LABEL_25;
    }

    v89 = -1;
    v63 = *(v6 + 96);
    v64 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v55, v56, v57);
    v65 = v85;
    v63(&v89, &type metadata for UInt32, v64, v4, v6);
    v66 = (*(*(*(v6 + 32) + 8) + 16))(v65, v46, v4);
    v83(v65, v4);
    if (v66)
    {
LABEL_28:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

LABEL_25:
  v67 = v75;
  v68 = v74 & ~(v76 << v75);
  v69 = v79(v4, v6);
  v83(v46, v4);
  v70 = (v69 << v67) | v68;
  v71 = v88;
  *v88 = v70;
  result = (*(v77 + 56))(v4);
  *(v71 + 4) = v67 + result;
  return result;
}

uint64_t _UIntBuffer.removeFirst()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, a1, a3);
  v7 = Collection.isEmpty.getter(a1, WitnessTable);
  if (v7)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v19 = *v3;
  v10 = v19;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(v12 + 8);
  v14 = *(v13 + 96);
  v15 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v7, v8, v9);
  v14(&v19, &type metadata for UInt32, v15, v11, v13);
  v16 = *(v4 + 4);
  v17 = *(v12 + 56);
  *(v4 + 4) = v16 - v17(v11, v12);
  result = v17(v11, v12);
  *v4 = v10 >> ((result + 1) >> 1) >> (result >> 1);
  return result;
}

uint64_t _UIntBuffer.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, uint64_t a5)
{
  v6 = v5;
  v171 = a2;
  v9 = a1;
  v10 = a1;
  v11 = BYTE1(a1);
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  v154 = a3;
  v14 = *(v13 + 8);
  v162 = *(*(v14 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v162, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v161 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v160 = &v138 - v18;
  v156 = *(v12 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v173 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v164 = &v138 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v163 = &v138 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v172 = &v138 - v29;
  v32 = type metadata accessor for Optional(0, v12, v30, v31);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v155 = &v138 - v34;
  v35 = *(a5 + 8);
  swift_getAssociatedTypeWitness(0, v35, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v158 = v36;
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v157 = &v138 - v39;
  MEMORY[0x1EEE9AC00](v38, v40);
  v44 = &v138 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11 < v10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = *(v6 + 4);
  if (v45 < v10 || v45 < v11)
  {
LABEL_6:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v140 = v42;
  (*(v41 + 16))(v44, v171, a4);
  (*(v35 + 32))(a4, v35);
  v46 = v158;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v35, a4, v158, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v48 = *(AssociatedConformanceWitness + 16);
  v49 = v155;
  v153 = AssociatedConformanceWitness;
  v152 = AssociatedConformanceWitness + 16;
  v151 = v48;
  (v48)(v46);
  v50 = v156;
  v51 = *(v156 + 48);
  v150 = v156 + 48;
  v149 = v51;
  v52 = v51(v49, 1, v12);
  v141 = v11;
  if (v52 != 1)
  {
    v138 = v9;
    v139 = v6;
    v54 = 0;
    v55 = *(v50 + 32);
    v156 = v50 + 32;
    v148 = v55;
    v147 = v13 + 64;
    v159 = v162 + 3;
    v170 = (v50 + 8);
    v171 = v14 + 64;
    v169 = v14 + 120;
    v142 = v14 + 96;
    v146 = (v50 + 16);
    v144 = v13 + 56;
    v56 = 0;
    v57 = v163;
    v165 = v14 + 128;
    v145 = v13;
    v143 = v14;
    v55(v172, v49, v12);
    while (1)
    {
      v167 = v56;
      v174 = v56;
      v175 = v54;
      v67 = v154;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, v154, v58);
      v69 = Collection.count.getter(v67, WitnessTable);
      if (__OFADD__(v69, 1))
      {
        __break(1u);
        goto LABEL_6;
      }

      if (specialized _UIntBuffer.capacity.getter(v12, v13) < v69 + 1)
      {
        goto LABEL_6;
      }

      (*(v13 + 64))(v12, v13);
      v70 = *(v14 + 64);
      if (v70(v12, v14))
      {
        v72 = v161;
        v71 = v162;
        v73 = swift_getAssociatedConformanceWitness(v162, v12, v161, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v74 = v160;
        (*(v73 + 8))(&qword_18071E0A8, 256, v72, v73);
        v75 = v164;
        (v71[3])(v74, v12, v71);
        LOBYTE(v72) = (*(*(*(v14 + 32) + 8) + 32))(v163, v75, v12);
        v76 = v75;
        v57 = v163;
        (*v170)(v76, v12);
        if ((v72 & 1) == 0)
        {
LABEL_46:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v77 = *(v14 + 128);
      if (v77(v12, v14) >= 32)
      {
        v78 = v70(v12, v14);
        v79 = v77(v12, v14);
        if (v78)
        {
          if (v79 <= 32)
          {
            v90 = v161;
            v91 = v162;
            v92 = swift_getAssociatedConformanceWitness(v162, v12, v161, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v93 = *(v92 + 8);
            v168 = v77;
            v94 = v54;
            v95 = v70;
            v96 = v160;
            v93(&qword_18071E0A8, 256, v90, v92);
            v97 = v164;
            v98 = v96;
            v70 = v95;
            v54 = v94;
            v77 = v168;
            (v91[3])(v98, v12, v91);
            LOBYTE(v90) = (*(*(*(v14 + 32) + 8) + 40))(v57, v97, v12);
            (*v170)(v97, v12);
            if (v90)
            {
LABEL_25:
              (*(v14 + 120))(v12, v14);
            }
          }

          else
          {
            v174 = -1;
            v82 = *(v14 + 96);
            v83 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v79, v80, v81);
            v84 = v164;
            v82(&v174, &type metadata for UInt32, v83, v12, v14);
            v85 = (*(*(*(v14 + 32) + 8) + 16))(v84, v57, v12);
            (*v170)(v84, v12);
            if (v85)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          if (v79 <= 32)
          {
            goto LABEL_25;
          }

          v174 = -1;
          v86 = *(v14 + 96);
          v87 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v79, v80, v81);
          v88 = v164;
          v86(&v174, &type metadata for UInt32, v87, v12, v14);
          v89 = (*(*(*(v14 + 32) + 8) + 16))(v88, v57, v12);
          (*v170)(v88, v12);
          if (v89)
          {
            goto LABEL_46;
          }
        }
      }

      v168 = *(v14 + 120);
      v166 = v168(v12, v14);
      v99 = *v170;
      (*v170)(v57, v12);
      (*v146)(v173, v172, v12);
      if (v70(v12, v14))
      {
        v100 = v99;
        v101 = v77;
        v102 = v54;
        v103 = v70;
        v104 = v161;
        v105 = v162;
        v106 = swift_getAssociatedConformanceWitness(v162, v12, v161, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v107 = v160;
        (*(v106 + 8))(&qword_18071E0A8, 256, v104, v106);
        v108 = v105[3];
        v109 = v164;
        v110 = v107;
        v57 = v163;
        v111 = v105;
        v70 = v103;
        v54 = v102;
        v77 = v101;
        v99 = v100;
        v14 = v143;
        (v108)(v110, v12, v111);
        LOBYTE(v104) = (*(*(*(v14 + 32) + 8) + 32))(v173, v109, v12);
        v99(v109, v12);
        if ((v104 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      if (v77(v12, v14) <= 31)
      {
        goto LABEL_9;
      }

      v112 = v70(v12, v14);
      v113 = v77(v12, v14);
      if ((v112 & 1) == 0)
      {
        if (v113 > 32)
        {
LABEL_8:
          v174 = -1;
          v59 = *(v14 + 96);
          v60 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v113, v114, v115);
          v61 = v164;
          v59(&v174, &type metadata for UInt32, v60, v12, v14);
          v62 = (*(*(*(v14 + 32) + 8) + 16))(v61, v173, v12);
          v99(v61, v12);
          if (v62)
          {
            goto LABEL_46;
          }

LABEL_9:
          v99(v172, v12);
          goto LABEL_10;
        }

        v99(v172, v12);
LABEL_35:
        v168(v12, v14);
        goto LABEL_10;
      }

      if (v113 > 32)
      {
        goto LABEL_8;
      }

      v99(v172, v12);
      v117 = v161;
      v116 = v162;
      v118 = swift_getAssociatedConformanceWitness(v162, v12, v161, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v119 = v160;
      (*(v118 + 8))(&qword_18071E0A8, 256, v117, v118);
      v120 = v164;
      (v116[3])(v119, v12, v116);
      LOBYTE(v117) = (*(*(*(v14 + 32) + 8) + 40))(v173, v120, v12);
      v99(v120, v12);
      if (v117)
      {
        goto LABEL_35;
      }

LABEL_10:
      v63 = v167 & ~(v166 << v54);
      v64 = v173;
      v65 = v168(v12, v14);
      v99(v64, v12);
      v56 = (v65 << (v54 & 0x1F)) | v63;
      v13 = v145;
      v54 += (*(v145 + 56))(v12, v145);
      v66 = v155;
      v151(v158, v153);
      if (v149(v66, 1, v12) == 1)
      {
        v167 = v56;
        v53 = v54;
        v6 = v139;
        LOBYTE(v9) = v138;
        goto LABEL_37;
      }

      v148(v172, v66, v12);
    }
  }

  v53 = 0;
  v167 = 0;
LABEL_37:
  (*(v140 + 8))(v157, v158);
  v121 = *(v13 + 56);
  v122 = v121(v12, v13);
  if (!v122 || (v123 = v122, (v124 = v121(v12, v13)) == 0))
  {
LABEL_47:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v126 = v9;
  v127 = *(v6 + 4);
  v128 = v53 / v124 - (v141 - v9) / v123;
  v174 = *v6;
  v175 = v127;
  v129 = v154;
  v130 = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, v154, v125);
  v131 = Collection.count.getter(v129, v130);
  if (__OFADD__(v131, v128))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (specialized _UIntBuffer.capacity.getter(v12, v13) < v131 + v128)
  {
    goto LABEL_6;
  }

  v132 = v121(v12, v13);
  if (!v132)
  {
    goto LABEL_47;
  }

  v133 = v132;
  v134 = v121(v12, v13);
  if (!v134)
  {
    goto LABEL_47;
  }

  v135 = v126 / v133;
  v136 = v141 / v134;
  result = v121(v12, v13);
  *v6 = (*v6 >> ((result * v136 + 1) >> 1) >> ((result * v136) >> 1) << (result * (v136 + v128))) | (v167 << (result * v135)) | ((1 << ((result * v135 + 1) >> 1) << ((result * v135) >> 1)) - 1) & *v6;
  *(v6 + 4) += result * v128;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance _UIntBuffer<A>(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, Class *a5, uint64_t a6)
{
  v9 = v6;
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v12[1];
  if (v17 < *v12)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v17 > *(v9 + 4))
  {
LABEL_3:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = *v12;
  v37 = v14;
  v38 = v13;
  (*(v14 + 16))(v16);
  v43 = 0;
  v44 = 0;
  RangeReplaceableCollection.append<A>(contentsOf:)(v16, a5, a3, a6, *(a4 + 8));
  v36 = v43;
  v39 = v44;
  v18 = a5[2];
  v19 = a5[3];
  v20 = *(v19 + 56);
  v21 = v20(v18, v19);
  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = v21;
  v23 = v20(v18, v19);
  if (!v23)
  {
    goto LABEL_11;
  }

  v25 = *(v9 + 4);
  v26 = v39 / v23 - (v17 - v40) / v22;
  v41 = *v9;
  v42 = v25;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, a5, v24);
  v28 = Collection.count.getter(a5, WitnessTable);
  if (__OFADD__(v28, v26))
  {
    __break(1u);
    goto LABEL_3;
  }

  if (_UIntBuffer.capacity.getter(v28, v18, v19, a5[4]) < v28 + v26)
  {
    goto LABEL_3;
  }

  v29 = v20(v18, v19);
  if (!v29 || (v30 = v29, (v31 = v20(v18, v19)) == 0))
  {
LABEL_11:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v32 = v31;
  v33 = v40 / v30;
  (*(v37 + 8))(v38, a3);
  result = v20(v18, v19);
  *v9 = (*v9 >> ((result * (v17 / v32) + 1) >> 1) >> ((result * (v17 / v32)) >> 1) << (result * (v17 / v32 + v26))) | (v36 << (result * v33)) | ((1 << ((result * v33 + 1) >> 1) << ((result * v33) >> 1)) - 1) & *v9;
  *(v9 + 4) += result * v26;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance _UIntBuffer<A>(char *a1, unsigned __int16 *a2)
{
  v89 = a1;
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v6 = *(v5 + 8);
  v84 = *(*(v6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v84, v4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v83 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v82 = &v76 - v10;
  v11 = *(v4 - 1);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v91 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v87 = &v76 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v76 - v19;
  v21 = *v2;
  v90 = v2;
  v22 = *(v2 + 4);
  v92 = v21;
  v93 = v22;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, a2, v23);
  v25 = Collection.count.getter(a2, WitnessTable);
  if (__OFADD__(v25, 1))
  {
    __break(1u);
LABEL_27:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (_UIntBuffer.capacity.getter(v25, v4, v5, *(a2 + 4)) < v25 + 1)
  {
    goto LABEL_27;
  }

  (*(v5 + 64))(v4, v5);
  v88 = *(v6 + 64);
  if (v88(v4, v6))
  {
    v27 = v83;
    v26 = v84;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v84, v4, v83, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v29 = v82;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v27, AssociatedConformanceWitness);
    v30 = v87;
    (v26[3])(v29, v4, v26);
    LOBYTE(v26) = (*(*(*(v6 + 32) + 8) + 32))(v20, v30, v4);
    (*(v11 + 8))(v30, v4);
    if ((v26 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v85 = *(v6 + 128);
  v86 = v6 + 128;
  if (v85(v4, v6) >= 32)
  {
    v31 = v88(v4, v6);
    v32 = v85(v4, v6);
    if (v31)
    {
      if (v32 <= 32)
      {
        v36 = v83;
        v35 = v84;
        v37 = swift_getAssociatedConformanceWitness(v84, v4, v83, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v38 = *(v37 + 8);
        v81 = v6 + 64;
        v39 = v82;
        v38(&qword_18071E0A8, 256, v36, v37);
        v40 = v87;
        (v35[3])(v39, v4, v35);
        LOBYTE(v35) = (*(*(*(v6 + 32) + 8) + 40))(v20, v40, v4);
        (*(v11 + 8))(v40, v4);
        if ((v35 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else if (v32 <= 32)
    {
LABEL_13:
      (*(v6 + 120))(v4, v6);
      goto LABEL_14;
    }

    v92 = -1;
    v41 = *(v6 + 96);
    v42 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v32, v33, v34);
    v43 = v87;
    v41(&v92, &type metadata for UInt32, v42, v4, v6);
    v44 = (*(*(*(v6 + 32) + 8) + 16))(v43, v20, v4);
    (*(v11 + 8))(v43, v4);
    if (v44)
    {
      goto LABEL_28;
    }
  }

LABEL_14:
  v45 = *(v6 + 120);
  v81 = v6 + 120;
  v79 = v5;
  v80 = v45;
  v78 = v45(v4, v6);
  v46 = *(v11 + 8);
  v46(v20, v4);
  v47 = *(v90 + 4);
  v76 = *v90;
  v77 = v47;
  (*(v11 + 16))(v91, v89, v4);
  if (v88(v4, v6))
  {
    v49 = v83;
    v48 = v84;
    v50 = swift_getAssociatedConformanceWitness(v84, v4, v83, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v51 = v82;
    (*(v50 + 8))(&qword_18071E0A8, 256, v49, v50);
    v52 = v87;
    v53 = v91;
    (v48[3])(v51, v4, v48);
    LOBYTE(v48) = (*(*(*(v6 + 32) + 8) + 32))(v53, v52, v4);
    v46(v52, v4);
    if ((v48 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v54 = v85;
  if (v85(v4, v6) <= 31)
  {
LABEL_23:
    v46(v89, v4);
    v64 = v80;
    goto LABEL_24;
  }

  v55 = v88(v4, v6);
  v56 = v54(v4, v6);
  if ((v55 & 1) == 0)
  {
    if (v56 <= 32)
    {
      v46(v89, v4);
      v64 = v80;
      v80(v4, v6);
      goto LABEL_24;
    }

LABEL_22:
    v92 = -1;
    v65 = *(v6 + 96);
    v66 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v56, v57, v58);
    v67 = v87;
    v65(&v92, &type metadata for UInt32, v66, v4, v6);
    v68 = (*(*(*(v6 + 32) + 8) + 16))(v67, v91, v4);
    v46(v67, v4);
    if ((v68 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_28:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v56 > 32)
  {
    goto LABEL_22;
  }

  v46(v89, v4);
  v60 = v83;
  v59 = v84;
  v61 = swift_getAssociatedConformanceWitness(v84, v4, v83, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v62 = v82;
  (*(v61 + 8))(&qword_18071E0A8, 256, v60, v61);
  v63 = v87;
  (v59[3])(v62, v4, v59);
  LOBYTE(v59) = (*(*(*(v6 + 32) + 8) + 40))(v91, v63, v4);
  v46(v63, v4);
  v64 = v80;
  if (v59)
  {
    v80(v4, v6);
  }

LABEL_24:
  v69 = v77;
  v70 = v76 & ~(v78 << v77);
  v71 = v91;
  v72 = v64(v4, v6);
  v46(v71, v4);
  v73 = (v72 << v69) | v70;
  v74 = v90;
  *v90 = v73;
  result = (*(v79 + 56))(v4);
  *(v74 + 4) = v69 + result;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.removeFirst() in conformance _UIntBuffer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, a1, a3);
  v7 = Collection.isEmpty.getter(a1, WitnessTable);
  if (v7)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v19 = *v3;
  v10 = v19;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(v12 + 8);
  v14 = *(v13 + 96);
  v15 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v7, v8, v9);
  v14(&v19, &type metadata for UInt32, v15, v11, v13);
  v16 = *(v5 + 4);
  v17 = *(v12 + 56);
  *(v5 + 4) = v16 - v17(v11, v12);
  result = v17(v11, v12);
  *v5 = v10 >> ((result + 1) >> 1) >> (result >> 1);
  return result;
}

uint64_t static _UnicodeEncoding.transcode<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static _UnicodeEncoding.transcode<A>(_:from:)(a1, a2, a5, a3, a6, a4);
}

{
  v8 = (*(a6 + 88))(a1, a4, a6);
  v9 = *(a5 + 96);

  return v9(v8, a3, a5);
}

uint64_t static _UnicodeEncoding._encode(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v23 - v19;
  (*(a3 + 96))(a1, a2, a3);
  (*(v13 + 32))(v17, v20, v12);
  v21 = *(v9 - 8);
  if ((*(v21 + 48))(v17, 1, v9) != 1)
  {
    return (*(v21 + 32))(a4, v17, v9);
  }

  (*(a3 + 80))(a2, a3);
  return (*(v13 + 8))(v17, v12);
}

uint64_t static _UnicodeEncoding._transcode<A>(_:from:)@<X0>(uint64_t a1@<X0>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a6;
  swift_getAssociatedTypeWitness(255, a4, a2, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v25 - v21;
  (*(a4 + 104))(a1, a3, a3, v25, a2, a4);
  (*(v15 + 32))(v19, v22, v14);
  v23 = *(v11 - 8);
  if ((*(v23 + 48))(v19, 1, v11) != 1)
  {
    return (*(v23 + 32))(v26, v19, v11);
  }

  (*(a4 + 80))(a2, a4);
  return (*(v15 + 8))(v19, v14);
}

uint64_t static _UnicodeEncoding._transcode<A, B>(_:from:into:)(char *a1, uint64_t a2, void (*a3)(void), uint64_t a4, Class *a5, uint64_t a6, Class *a7, int **a8, int **a9, int **a10)
{
  v110 = a1;
  v111 = a8;
  v103 = a5;
  v104 = a9;
  swift_getAssociatedTypeWitness(255, a8, a5, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v15 = v14;
  v79 = v14;
  v98 = type metadata accessor for Optional(0, v14, v16, v17);
  v82 = *(v98 - 8);
  v19 = MEMORY[0x1EEE9AC00](v98, v18);
  v97 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v96 = &v78 - v23;
  v83 = *(v15 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v95 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v94 = &v78 - v28;
  v29 = a7;
  swift_getAssociatedTypeWitness(0, a10, a7, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v86 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v30);
  v91 = &v78 - v31;
  v93 = v32;
  v35 = type metadata accessor for Unicode.ParseResult(0, v32, v33, v34);
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v78 = (&v78 - v38);
  v102 = a6;
  v39 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v37, v40);
  v42 = &v78 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a9, v43, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v101 = v44;
  v81 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v78 - v46;
  v48 = v29;
  swift_getAssociatedTypeWitness(0, a10, v29, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.ForwardParser);
  v50 = v49;
  v80 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v51);
  v53 = &v78 - v52;
  v99 = a10;
  v100 = v48;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a10, v48, v50, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.ForwardParser: _UnicodeParser);
  v55 = *(AssociatedConformanceWitness + 24);
  v108 = v53;
  v109 = v50;
  v55(v50, AssociatedConformanceWitness);
  v56 = v102;
  (*(v39 + 16))(v42, v110, v102);
  v57 = v101;
  v58 = v104[4];
  v110 = v47;
  v59 = v79;
  v60 = v78;
  v61 = v56;
  v62 = v56;
  v63 = v104;
  (v58)(v61);
  v107 = AssociatedConformanceWitness;
  v105 = *(AssociatedConformanceWitness + 32);
  v106 = AssociatedConformanceWitness + 32;
  v104 = swift_getAssociatedConformanceWitness(v63, v62, v57, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v102 = (v111 + 10);
  v64 = (v83 + 1);
  v88 = (v86 + 4);
  v87 = v111 + 13;
  ++v86;
  v85 = (v82 + 4);
  v84 = (v83 + 6);
  v83 += 4;
  ++v82;
  v92 = a3;
  v90 = v35;
  v89 = a4;
  while (1)
  {
    v105(v110, v57, v104, v109, v107);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v60, v35);
    if (EnumCaseMultiPayload)
    {
      break;
    }

    v67 = v91;
    v68 = v60;
    v69 = v60;
    v70 = v93;
    (*v88)(v91, v69, v93);
    v71 = v111;
    v72 = v96;
    v73 = v103;
    (v111[13])(v67, v100, v100, v99, v103, v111);
    (*v86)(v67, v70);
    v75 = v97;
    v74 = v98;
    (*v85)(v97, v72, v98);
    if ((*v84)(v75, 1, v59) == 1)
    {
      v76 = v94;
      (v71[10])(v73, v71);
      (*v82)(v75, v74);
      v65 = v76;
    }

    else
    {
      v65 = v94;
      (*v83)(v94, v75, v59);
    }

    a3 = v92;
    v35 = v90;
    v60 = v68;
    v57 = v101;
LABEL_4:
    a3(v65);
    (*v64)(v65, v59);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v65 = v95;
    (v111[10])(v103);
    goto LABEL_4;
  }

  (*(v81 + 8))(v110, v57);
  return (*(v80 + 8))(v108, v109);
}

unint64_t Unicode._GraphemeBreakProperty.init(from:)(unsigned int a1)
{
  if (a1 < 0x20)
  {
    return 1;
  }

  if (a1 < 0x7F)
  {
    return 0;
  }

  if (a1 == 8205)
  {
    return 12;
  }

  v2 = 4;
  if (a1 - 4448 > 0xFFFFFF9F)
  {
    return v2;
  }

  if (a1 - 43389 > 0xFFFFFFE2)
  {
    return v2;
  }

  v2 = 11;
  if (a1 - 4520 > 0xFFFFFFB7)
  {
    return v2;
  }

  if (a1 - 55239 > 0xFFFFFFE8)
  {
    return v2;
  }

  v2 = 10;
  if (a1 - 4608 > 0xFFFFFFA7 || a1 - 55292 > 0xFFFFFFCE)
  {
    return v2;
  }

  if (a1 - 55204 >= 0xFFFFD45C)
  {
    HIDWORD(v4) = -1227133513 * (a1 - 16);
    LODWORD(v4) = HIDWORD(v4);
    if ((v4 >> 2) < 0x9249249)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else if (a1 - 127488 > 0xFFFFFFE5)
  {
    return 8;
  }

  else
  {
    if (a1 - 131070 <= 0xFFFFFC01)
    {
      if (a1 - 921600 <= 0xFFFFF1EF)
      {
        GraphemeBreakProperty = _swift_stdlib_getGraphemeBreakProperty(a1);
        if (GraphemeBreakProperty <= 5)
        {
          return 0x30309070201uLL >> (8 * (GraphemeBreakProperty & 0x1F));
        }

        return 0;
      }

      return 1;
    }

    return 3;
  }
}

Swift::Unicode::Scalar __swiftcall _decodeUTF8(_:)(Swift::UInt8 a1)
{
  *&a1 = a1;
  LOBYTE(result._value) = a1;
  return result;
}

Swift::String::Index __swiftcall _StringGuts.scalarAlignSlow(_:)(Swift::String::Index result)
{
  if ((result._rawBits & 0xC000) != 0)
  {
    return (result._rawBits & 0xFFFFFFFFFFFF0000);
  }

  v5 = result._rawBits >> 16;
  if (!(result._rawBits >> 16))
  {
    return (result._rawBits & 0xFFFFFFFFFFFF0000);
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    v13[2] = v3;
    v13[3] = v4;
    if ((v2 & 0x2000000000000000) != 0)
    {
      v13[0] = v1;
      v13[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      if (v5 != (HIBYTE(v2) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v10 = v5 - 1;
          v11 = *(&v12 + v5-- + 7) & 0xC0;
        }

        while (v11 == 128);
        v5 = v10;
      }

      return (v5 << 16);
    }

    if ((v1 & 0x1000000000000000) != 0)
    {
      v6 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (v5 != (v1 & 0xFFFFFFFFFFFFLL))
      {
        do
        {
LABEL_8:
          v7 = v6[v5--] & 0xC0;
        }

        while (v7 == 128);
        ++v5;
      }
    }

    else
    {
      v12 = result._rawBits >> 16;
      v6 = _StringObject.sharedUTF8.getter(v1, v2);
      v5 = v12;
      if (v12 != v9)
      {
        goto LABEL_8;
      }
    }

    return (v5 << 16);
  }

  v8 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v8 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 != v8)
  {

    return _StringGuts.foreignScalarAlign(_:)(result);
  }

  return result;
}

Swift::String::Index __swiftcall _StringGuts.foreignScalarAlign(_:)(Swift::String::Index a1)
{
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3 == a1._rawBits >> 16)
  {
    return (a1._rawBits | 1);
  }

  if (_StringGuts.foreignErrorCorrectedUTF16CodeUnit(at:)(a1) >> 10 == 55)
  {
    return ((a1._rawBits & 0xFFFFFFFFFFFF0000) - 0xFFFF);
  }

  return (a1._rawBits | 1);
}

Swift::String __swiftcall _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(Swift::Int startingAt, Swift::Int endingAt)
{
  v3 = startingAt;
  v46[1] = *MEMORY[0x1E69E9840];
  v4 = endingAt - startingAt;
  v5 = __OFSUB__(endingAt, startingAt);
  if (startingAt - endingAt == 1)
  {
    value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((startingAt << 16))._0._value;
    v7 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(value);
    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v4 = v7;
      v3 = v8;
      v10._rawBits = _StringGuts.validateCharacterIndex(_:)(15)._rawBits;
      if (String._uncheckedIndex(after:)(v10)._rawBits >> 14 == 4 * v9)
      {
        if (!(v3 & 0x2000000000000000 | v4 & 0x1000000000000000))
        {
          v4 = specialized static String._copying(_:)(v4, v3);
          v12 = v11;
          v3;
          v3 = v12;
        }

        goto LABEL_24;
      }

LABEL_42:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_41:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v4 & 0x8000000000000000) != 0 || (v4 + 0x4000000000000000) < 0)
  {
LABEL_45:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((2 * v4) > 1024)
  {
    v26 = endingAt;
    v27 = v2;
    startingAt = swift_stdlib_isStackAllocationSafe();
    endingAt = v26;
    if ((startingAt & 1) == 0)
    {
      v28 = swift_slowAlloc((2 * v4), 0xFFFFFFFFFFFFFFFFLL);
      if (v3 <= v26)
      {
        if (v5)
        {
          __break(1u);
        }

        else
        {
          v29 = v28;
          [v27 & 0xFFFFFFFFFFFFFFFLL getCharacters:v28 range:{v3, v4}];
          v30 = &_swiftEmptyArrayStorage;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(&_swiftEmptyArrayStorage);
          if (!isUniquelyReferenced_nonNull_native || v4 > qword_1EE3221C8 >> 1)
          {
            if (qword_1EE3221C0 <= v4)
            {
              v32 = v4;
            }

            else
            {
              v32 = qword_1EE3221C0;
            }

            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v32, 0, &_swiftEmptyArrayStorage);
          }

          v46[0] = v30;
          v45 = v29;
          _ss9transcode_4from2to15stoppingOnError4intoSbx_q_mq0_mSby8CodeUnitQy0_XEtStRzs16_UnicodeEncodingR_sAHR0_AFQy_7ElementRtzr1_lFSR8IteratorVys6UInt16V_G_s0J0O5UTF16OAR4UTF8OTt0t1g5033_sSS19_uncheckedFromUTF16ySSSRys6N18VGFZys5UInt8VXEfU_Says0X0VGTf1nnc_n(v29, v29 + v4, 0, v46);
          v33 = v46[0];
          v34 = *(v46[0] + 2);
          v35 = _allASCII(_:)(v46[0] + 4, v34);
          v4 = specialized static String._uncheckedFromUTF8(_:isASCII:)((v33 + 16), v34, v35, v36);
          v3 = v37;
          v33;
          if ((v3 & 0x2000000000000000) != 0)
          {
            v38 = HIBYTE(v3) & 0xF;
          }

          else
          {
            v38 = v4 & 0xFFFFFFFFFFFFLL;
          }

          if (!v38)
          {
            goto LABEL_41;
          }

          v39._rawBits = _StringGuts.validateCharacterIndex(_:)(15)._rawBits;
          if (String._uncheckedIndex(after:)(v39)._rawBits >> 14 != 4 * v38)
          {
            goto LABEL_42;
          }

          if (v3 & 0x2000000000000000 | v4 & 0x1000000000000000)
          {
LABEL_40:
            v45;
            goto LABEL_24;
          }
        }

        v4 = specialized static String._copying(_:)(v4, v3);
        v43 = v42;
        v3;
        v3 = v43;
        goto LABEL_40;
      }

LABEL_43:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  MEMORY[0x1EEE9AC00](startingAt, endingAt);
  v15 = (v46 - v14);
  if (v3 > v16)
  {
    goto LABEL_43;
  }

  if (v5)
  {
    __break(1u);
    goto LABEL_45;
  }

  [v13 & 0xFFFFFFFFFFFFFFFLL getCharacters:v15 range:{v3, v4}];
  v46[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0, &_swiftEmptyArrayStorage);
  _ss9transcode_4from2to15stoppingOnError4intoSbx_q_mq0_mSby8CodeUnitQy0_XEtStRzs16_UnicodeEncodingR_sAHR0_AFQy_7ElementRtzr1_lFSR8IteratorVys6UInt16V_G_s0J0O5UTF16OAR4UTF8OTt0t1g5033_sSS19_uncheckedFromUTF16ySSSRys6N18VGFZys5UInt8VXEfU_Says0X0VGTf1nnc_n(v15, v15 + v4, 0, v46);
  v17 = v46[0];
  v18 = *(v46[0] + 2);
  v19 = _allASCII(_:)(v46[0] + 4, v18);
  v4 = specialized static String._uncheckedFromUTF8(_:isASCII:)((v17 + 16), v18, v19, v20);
  v3 = v21;
  v17;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v22 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    goto LABEL_41;
  }

  v23._rawBits = _StringGuts.validateCharacterIndex(_:)(15)._rawBits;
  if (String._uncheckedIndex(after:)(v23)._rawBits >> 14 != 4 * v22)
  {
    goto LABEL_42;
  }

  if (!(v3 & 0x2000000000000000 | v4 & 0x1000000000000000))
  {
    v4 = specialized static String._copying(_:)(v4, v3);
    v41 = v40;
    v3;
    v3 = v41;
  }

LABEL_24:
  v24 = v4;
  v25 = v3;
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t Unicode.ParseResult._valid.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v3);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8);
  if (swift_getEnumCaseMultiPayload(v8, a1))
  {
    (*(v6 + 8))(v8, a1);
    return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 - 8);
    (*(v11 + 32))(a2, v8, v10);
    return (*(v11 + 56))(a2, 0, 1, v10);
  }
}

uint64_t Unicode.ParseResult._error.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5);
  if (swift_getEnumCaseMultiPayload(v5, a1) == 1)
  {
    return *v5;
  }

  (*(v3 + 8))(v5, a1);
  return 0;
}

uint64_t Unicode.Scalar.Properties._getMapping(_:)(unsigned __int8 a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v9[0] = 0;
  SpecialMapping = _swift_stdlib_getSpecialMapping(v3, a1, v9);
  if (SpecialMapping && v9[0])
  {
    if (v9[0] < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return specialized static String._uncheckedFromUTF8(_:isASCII:)(SpecialMapping, v9[0], 0, v5);
  }

  else
  {
    Mapping = _swift_stdlib_getMapping(v3, a1);
    if (Mapping)
    {
      v8 = v3 + Mapping;
      if (v8 < 0 || HIDWORD(v8))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      LODWORD(v8) = v3;
    }

    return specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v8);
  }
}

uint64_t Unicode.Scalar.Properties.age.getter()
{
  LODWORD(result) = _swift_stdlib_getAge(*v0);
  if (result == 0xFFFF)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

Swift::Unicode::GeneralCategory __swiftcall Unicode.GeneralCategory.init(rawValue:)(Swift::Unicode::GeneralCategory rawValue)
{
  if (rawValue >= Swift_Unicode_GeneralCategory_unknownDefault)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000018, 0x8000000180671DE0, "Swift/UnicodeScalarProperties.swift", 0x23uLL, 2, 0x45EuLL, 0);
  }

  *v1 = rawValue;
  return rawValue;
}

uint64_t Unicode.Scalar.Properties.generalCategory.getter()
{
  GeneralCategory = _swift_stdlib_getGeneralCategory(*v0);

  return Unicode.GeneralCategory.init(rawValue:)(GeneralCategory);
}

Swift::String __swiftcall Unicode.Scalar.Properties._hangulName()()
{
  v74 = *v0;
  v1 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String>(0);
  inited = swift_initStackObject(v1, v78);
  *(inited + 1) = xmmword_18071DD90;
  inited[4] = 71;
  inited[5] = 0xE100000000000000;
  inited[6] = 18247;
  inited[7] = 0xE200000000000000;
  inited[8] = 78;
  inited[9] = 0xE100000000000000;
  inited[10] = 68;
  inited[11] = 0xE100000000000000;
  inited[12] = 17476;
  inited[13] = 0xE200000000000000;
  inited[14] = 82;
  inited[15] = 0xE100000000000000;
  inited[16] = 77;
  inited[17] = 0xE100000000000000;
  inited[18] = 66;
  inited[19] = 0xE100000000000000;
  inited[20] = 16962;
  inited[21] = 0xE200000000000000;
  inited[22] = 83;
  inited[23] = 0xE100000000000000;
  inited[24] = 21331;
  inited[25] = 0xE200000000000000;
  inited[26] = 0;
  inited[27] = 0xE000000000000000;
  inited[28] = 74;
  inited[29] = 0xE100000000000000;
  inited[30] = 19018;
  inited[31] = 0xE200000000000000;
  inited[32] = 67;
  inited[33] = 0xE100000000000000;
  inited[34] = 75;
  inited[35] = 0xE100000000000000;
  inited[36] = 84;
  inited[37] = 0xE100000000000000;
  inited[38] = 80;
  inited[39] = 0xE100000000000000;
  inited[40] = 72;
  inited[41] = 0xE100000000000000;
  v3 = swift_initStackObject(v1, v77);
  *(v3 + 1) = xmmword_18071DDA0;
  v3[4] = 65;
  v3[5] = 0xE100000000000000;
  v3[6] = 17729;
  v3[7] = 0xE200000000000000;
  v3[8] = 16729;
  v3[9] = 0xE200000000000000;
  v3[10] = 4538713;
  v3[11] = 0xE300000000000000;
  v3[12] = 20293;
  v3[13] = 0xE200000000000000;
  v3[14] = 69;
  v3[15] = 0xE100000000000000;
  v3[16] = 5195097;
  v3[17] = 0xE300000000000000;
  v3[18] = 17753;
  v3[19] = 0xE200000000000000;
  v3[20] = 79;
  v3[21] = 0xE100000000000000;
  v3[22] = 16727;
  v3[23] = 0xE200000000000000;
  v3[24] = 4538711;
  v3[25] = 0xE300000000000000;
  v3[26] = 17743;
  v3[27] = 0xE200000000000000;
  v3[28] = 20313;
  v3[29] = 0xE200000000000000;
  v3[30] = 85;
  v3[31] = 0xE100000000000000;
  v3[32] = 5195095;
  v3[33] = 0xE300000000000000;
  v3[34] = 17751;
  v3[35] = 0xE200000000000000;
  v3[36] = 18775;
  v3[37] = 0xE200000000000000;
  v3[38] = 21849;
  v3[39] = 0xE200000000000000;
  v3[40] = 21829;
  v3[41] = 0xE200000000000000;
  v3[42] = 18777;
  v3[43] = 0xE200000000000000;
  v3[44] = 73;
  v3[45] = 0xE100000000000000;
  v4 = swift_allocObject(v1, 0x1E0, 7uLL);
  *(v4 + 1) = xmmword_18071DDB0;
  v4[4] = 0;
  v4[5] = 0xE000000000000000;
  v4[6] = 71;
  v4[7] = 0xE100000000000000;
  v4[8] = 18247;
  v4[9] = 0xE200000000000000;
  v4[10] = 21319;
  v4[11] = 0xE200000000000000;
  v4[12] = 78;
  v4[13] = 0xE100000000000000;
  v4[14] = 19022;
  v4[15] = 0xE200000000000000;
  v4[16] = 18510;
  v4[17] = 0xE200000000000000;
  v4[18] = 68;
  v4[19] = 0xE100000000000000;
  v4[20] = 76;
  v4[21] = 0xE100000000000000;
  v4[22] = 18252;
  v4[23] = 0xE200000000000000;
  v4[24] = 19788;
  v4[25] = 0xE200000000000000;
  v4[26] = 16972;
  v4[27] = 0xE200000000000000;
  v4[28] = 21324;
  v4[29] = 0xE200000000000000;
  v4[30] = 21580;
  v4[31] = 0xE200000000000000;
  v4[32] = 20556;
  v4[33] = 0xE200000000000000;
  v4[34] = 18508;
  v4[35] = 0xE200000000000000;
  v4[36] = 77;
  v4[37] = 0xE100000000000000;
  v4[38] = 66;
  v4[39] = 0xE100000000000000;
  v4[40] = 21314;
  v4[41] = 0xE200000000000000;
  v4[42] = 83;
  v4[43] = 0xE100000000000000;
  v4[44] = 21331;
  v4[45] = 0xE200000000000000;
  v4[46] = 18254;
  v4[47] = 0xE200000000000000;
  v4[48] = 74;
  v4[49] = 0xE100000000000000;
  v4[50] = 67;
  v4[51] = 0xE100000000000000;
  v4[52] = 75;
  v4[53] = 0xE100000000000000;
  v4[54] = 84;
  v5 = (v74 - 44032) % 0x24Cu / 0x1C;
  v4[55] = 0xE100000000000000;
  v4[56] = 80;
  v4[57] = 0xE100000000000000;
  v4[58] = 72;
  v6 = (v74 - 44032) % 0x1Cu;
  v4[59] = 0xE100000000000000;
  sub_1802E86D0((v74 - 44032) / 0x24CuLL, 1, inited);
  v7 = &inited[2 * ((v74 - 44032) / 0x24CuLL) + 4];
  v9 = *v7;
  v8 = v7[1];
  swift_setDeallocating(inited);
  v8;
  swift_arrayDestroy((inited + 4), 19, &type metadata for String);
  sub_1802E86D0(v5, 1, v3);
  v10 = &v3[2 * v5 + 4];
  v11 = *v10;
  v12 = v10[1];
  swift_setDeallocating(v3);
  v12;
  swift_arrayDestroy((v3 + 4), 21, &type metadata for String);
  v13 = specialized static String.+ infix(_:_:)(v9, v8, v11, v12);
  v15 = v14;
  v12;
  v8;
  sub_1802E86D0(v6, 1, v4);
  v16 = &v4[2 * v6 + 4];
  v17 = *v16;
  v18 = v16[1];
  swift_setDeallocating(v4);
  v18;
  swift_arrayDestroy((v4 + 4), 28, &type metadata for String);
  swift_deallocClassInstance(v4);
  v19 = specialized static String.+ infix(_:_:)(v13, v15, v17, v18);
  v21 = v20;
  v18;
  v15;
  v22 = _StringGuts.init(_initialCapacity:)(18);
  v32 = v23;
  v75 = v22;
  v76 = v23;
  v33 = 0x8000000180671DC0 | 0x8000000000000000;
  v34 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v34 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v34 || (v22 & ~v23 & 0x2000000000000000) != 0)
  {
    if ((0x8000000180671DC0 & 0x2000000000000000 & v23) != 0 && (v35 = specialized _SmallString.init(_:appending:)(v22, v23, 0xD000000000000010, 0x8000000180671DC0 | 0x8000000000000000), (v37 & 1) == 0))
    {
      v48 = v36;
      v49 = v35;
      v32;
      0x8000000180671DC0 | 0x8000000000000000;
      v47 = v49;
      v75 = v49;
      v76 = v48;
      v33 = v48;
    }

    else
    {
      if ((0x8000000180671DC0 & 0x2000000000000000) != 0)
      {
        v38 = (0x8000000180671DC0 >> 56) & 0xF;
      }

      else
      {
        v38 = 16;
      }

      _StringGuts.append(_:)(0xD000000000000010, 0x8000000180671DC0 | 0x8000000000000000, 0, v38, v24, v25, v26, v27, v28, v29, v30, v31);
      0x8000000180671DC0 | 0x8000000000000000;
      v47 = v75;
      v33 = v76;
    }
  }

  else
  {
    v23;
    v47 = 0xD000000000000010;
    v75 = 0xD000000000000010;
    v76 = 0x8000000180671DC0 | 0x8000000000000000;
  }

  v50 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v50 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v50 || (v47 & ~v33 & 0x2000000000000000) != 0)
  {
    if ((v33 & 0x2000000000000000) == 0)
    {
      if ((v21 & 0x2000000000000000) != 0)
      {
        goto LABEL_23;
      }

LABEL_21:
      v51 = v19 & 0xFFFFFFFFFFFFLL;
LABEL_24:
      _StringGuts.append(_:)(v19, v21, 0, v51, v39, v40, v41, v42, v43, v44, v45, v46);
      v21;
      v19 = v75;
      v21 = v76;
      goto LABEL_25;
    }

    if ((v21 & 0x2000000000000000) == 0)
    {
      goto LABEL_21;
    }

    v52 = specialized _SmallString.init(_:appending:)(v47, v33, v19, v21);
    if (v54)
    {
LABEL_23:
      v51 = HIBYTE(v21) & 0xF;
      goto LABEL_24;
    }

    v71 = v52;
    v72 = v53;
    v33;
    v21;
    v75 = v71;
    v76 = v72;
    v21 = v72;
    v19 = v71;
  }

  else
  {
    v33;
    v75 = v19;
    v76 = v21;
  }

LABEL_25:
  v63 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v63 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v63 || (v19 & ~v21 & 0x2000000000000000) != 0)
  {
    if ((v21 & 0x2000000000000000) != 0 && (v64 = specialized _SmallString.init(_:appending:)(v19, v21, 0, 0xE000000000000000), (v66 & 1) == 0))
    {
      v69 = v64;
      v70 = v65;
      v21;
      0xE000000000000000;
      v68 = v70;
      v67 = v69;
    }

    else
    {
      _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v55, v56, v57, v58, v59, v60, v61, v62);
      0xE000000000000000;
      v67 = v75;
      v68 = v76;
    }
  }

  else
  {
    v21;
    v67 = 0;
    v68 = 0xE000000000000000;
  }

  result._object = v68;
  result._countAndFlagsBits = v67;
  return result;
}

Swift::String_optional __swiftcall Unicode.Scalar.Properties._fastScalarName()()
{
  v1 = *v0;
  v2 = _uint64ToString(_:radix:uppercase:)(*v0, 16, 1);
  object = v2._object;
  if (v1 - 55204 >= 0xFFFFD45C)
  {
    v2._object;
    v8 = Unicode.Scalar.Properties._hangulName()();
    v7 = v8._object;
    countAndFlagsBits = v8._countAndFlagsBits;
    goto LABEL_175;
  }

  if (v1 - 918000 >= 0xFFFFFF10)
  {
    v2._object;
    v9 = _StringGuts.init(_initialCapacity:)(21);
    v19 = v10;
    v209._countAndFlagsBits = v9;
    v209._object = v10;
    v20 = 0x8000000180671CE0 | 0x8000000000000000;
    v21 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v21 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v21 || (v9 & ~v10 & 0x2000000000000000) != 0)
    {
      if ((0x8000000180671CE0 & 0x2000000000000000 & v10) != 0 && (v22 = specialized _SmallString.init(_:appending:)(v9, v10, 0xD000000000000013, 0x8000000180671CE0 | 0x8000000000000000), (v24 & 1) == 0))
      {
        v26 = v22;
        v53 = v23;
        0x8000000180671CE0 | 0x8000000000000000;
        v19;
        v209._countAndFlagsBits = v26;
        v209._object = v53;
        v20 = v53;
      }

      else
      {
        if ((0x8000000180671CE0 & 0x2000000000000000) != 0)
        {
          v25 = (0x8000000180671CE0 >> 56) & 0xF;
        }

        else
        {
          v25 = 19;
        }

        _StringGuts.append(_:)(0xD000000000000013, 0x8000000180671CE0 | 0x8000000000000000, 0, v25, v11, v12, v13, v14, v15, v16, v17, v18);
        0x8000000180671CE0 | 0x8000000000000000;
        v20 = v209._object;
        v26 = v209._countAndFlagsBits;
      }
    }

    else
    {
      v10;
      v26 = 0xD000000000000013;
      v209._countAndFlagsBits = 0xD000000000000013;
      v209._object = (0x8000000180671CE0 | 0x8000000000000000);
    }

    v89 = _uint64ToString(_:radix:uppercase:)(v1 - 917743, 10, 0);
    v80 = v89._countAndFlagsBits;
    v90 = v89._object;
    v91 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v91 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (!v91 && (v26 & ~v20 & 0x2000000000000000) == 0)
    {
      v20;
      v101 = v89._countAndFlagsBits;
      v209 = v89;
      goto LABEL_59;
    }

    if ((v20 & 0x2000000000000000) != 0)
    {
      if ((v89._object & 0x2000000000000000) != 0)
      {
        v108 = specialized _SmallString.init(_:appending:)(v26, v20, v89._countAndFlagsBits, v89._object);
        if ((v110 & 1) == 0)
        {
          v131 = v109;
          v132 = v108;
          v89._object;
          v20;
          v209._countAndFlagsBits = v132;
          v209._object = v131;
          v90 = v131;
          v101 = v132;
          goto LABEL_59;
        }

        v92 = (v89._object >> 56) & 0xF;
        v80 = v89._countAndFlagsBits;
        goto LABEL_58;
      }
    }

    else if ((v89._object & 0x2000000000000000) != 0)
    {
      v92 = (v89._object >> 56) & 0xF;
LABEL_58:
      _StringGuts.append(_:)(v80, v89._object, 0, v92, v81, v82, v83, v84, v85, v86, v87, v88);
      v89._object;
      v90 = v209._object;
      v101 = v209._countAndFlagsBits;
LABEL_59:
      v102 = HIBYTE(v90) & 0xF;
      if ((v90 & 0x2000000000000000) == 0)
      {
        v102 = v101 & 0xFFFFFFFFFFFFLL;
      }

      if (!v102 && (v101 & ~v90 & 0x2000000000000000) == 0)
      {
        v111 = v90;
LABEL_162:
        v111;
        countAndFlagsBits = 0;
        v7 = 0xE000000000000000;
        goto LABEL_175;
      }

      if ((v90 & 0x2000000000000000) != 0)
      {
        v103 = specialized _SmallString.init(_:appending:)(v101, v90, 0, 0xE000000000000000);
        if ((v105 & 1) == 0)
        {
          v106 = v103;
          v107 = v104;
          0xE000000000000000;
          v90;
          v7 = v107;
          countAndFlagsBits = v106;
          goto LABEL_175;
        }
      }

      goto LABEL_99;
    }

    v92 = v89._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_58;
  }

  v4 = vdupq_n_s32(v1);
  v5 = v2._countAndFlagsBits;
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(vaddq_s32(v4, xmmword_18071DDC0), xmmword_18071DDE0), vcgtq_u32(vaddq_s32(v4, xmmword_18071DDD0), xmmword_18071DDF0)))) & 1) != 0 || v1 - 201547 > 0xFFFFECB4 || v1 - 205744 >= 0xFFFFEFA0)
  {
    v27 = _StringGuts.init(_initialCapacity:)(24);
    v37 = v28;
    v209._countAndFlagsBits = v27;
    v209._object = v28;
    v38 = 0x8000000180671D00 | 0x8000000000000000;
    v39 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v39 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v39 || (v27 & ~v28 & 0x2000000000000000) != 0)
    {
      if ((0x8000000180671D00 & 0x2000000000000000 & v28) != 0 && (v40 = specialized _SmallString.init(_:appending:)(v27, v28, 0xD000000000000016, 0x8000000180671D00 | 0x8000000000000000), (v42 & 1) == 0))
      {
        v112 = v41;
        v113 = v40;
        0x8000000180671D00 | 0x8000000000000000;
        v37;
        v52 = v113;
        v209._countAndFlagsBits = v113;
        v209._object = v112;
        v38 = v112;
      }

      else
      {
        if ((0x8000000180671D00 & 0x2000000000000000) != 0)
        {
          v43 = (0x8000000180671D00 >> 56) & 0xF;
        }

        else
        {
          v43 = 22;
        }

        _StringGuts.append(_:)(0xD000000000000016, 0x8000000180671D00 | 0x8000000000000000, 0, v43, v29, v30, v31, v32, v33, v34, v35, v36);
        0x8000000180671D00 | 0x8000000000000000;
        v38 = v209._object;
        v52 = v209._countAndFlagsBits;
      }
    }

    else
    {
      v28;
      v52 = 0xD000000000000016;
      v209._countAndFlagsBits = 0xD000000000000016;
      v209._object = (0x8000000180671D00 | 0x8000000000000000);
    }

    v133 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v133 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (!v133 && (v52 & ~v38 & 0x2000000000000000) == 0)
    {
      v38;
      v136 = v2._countAndFlagsBits;
      v209 = v2;
      goto LABEL_93;
    }

    if ((v38 & 0x2000000000000000) != 0)
    {
      v134 = v2._countAndFlagsBits;
      if ((v2._object & 0x2000000000000000) != 0)
      {
        v141 = specialized _SmallString.init(_:appending:)(v52, v38, v2._countAndFlagsBits, v2._object);
        if ((v143 & 1) == 0)
        {
          v160 = v142;
          v161 = v141;
          v38;
          v2._object;
          v209._countAndFlagsBits = v161;
          v209._object = v160;
          object = v160;
          v136 = v161;
          goto LABEL_93;
        }

        v135 = (v2._object >> 56) & 0xF;
        v134 = v2._countAndFlagsBits;
        goto LABEL_92;
      }
    }

    else
    {
      v134 = v2._countAndFlagsBits;
      if ((v2._object & 0x2000000000000000) != 0)
      {
        v135 = (v2._object >> 56) & 0xF;
LABEL_92:
        _StringGuts.append(_:)(v134, v2._object, 0, v135, v44, v45, v46, v47, v48, v49, v50, v51);
        v2._object;
        object = v209._object;
        v136 = v209._countAndFlagsBits;
LABEL_93:
        v137 = HIBYTE(object) & 0xF;
        if ((object & 0x2000000000000000) == 0)
        {
          v137 = v136 & 0xFFFFFFFFFFFFLL;
        }

        if (!v137 && (v136 & ~object & 0x2000000000000000) == 0)
        {
LABEL_161:
          v111 = object;
          goto LABEL_162;
        }

        if ((object & 0x2000000000000000) != 0)
        {
          v138 = specialized _SmallString.init(_:appending:)(v136, object, 0, 0xE000000000000000);
          if ((v140 & 1) == 0)
          {
            v144 = v138;
            v145 = v139;
            0xE000000000000000;
            object;
            v7 = v145;
            countAndFlagsBits = v144;
            goto LABEL_175;
          }
        }

LABEL_99:
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v93, v94, v95, v96, v97, v98, v99, v100);
LABEL_159:
        0xE000000000000000;
        v7 = v209._object;
        countAndFlagsBits = v209._countAndFlagsBits;
        goto LABEL_175;
      }
    }

    v135 = v134 & 0xFFFFFFFFFFFFLL;
    goto LABEL_92;
  }

  if (v1 - 64110 > 0xFFFFFE91 || v1 - 64218 > 0xFFFFFF95 || v1 - 195102 >= 0xFFFFFDE2)
  {
    v54 = _StringGuts.init(_initialCapacity:)(30);
    v64 = v55;
    v209._countAndFlagsBits = v54;
    v209._object = v55;
    v65 = 0x8000000180671D20 | 0x8000000000000000;
    v66 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v66 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (v66 || (v54 & ~v55 & 0x2000000000000000) != 0)
    {
      if ((0x8000000180671D20 & 0x2000000000000000 & v55) != 0 && (v67 = specialized _SmallString.init(_:appending:)(v54, v55, 0xD00000000000001CLL, 0x8000000180671D20 | 0x8000000000000000), (v69 & 1) == 0))
      {
        v146 = v68;
        v147 = v67;
        0x8000000180671D20 | 0x8000000000000000;
        v64;
        v79 = v147;
        v209._countAndFlagsBits = v147;
        v209._object = v146;
        v65 = v146;
      }

      else
      {
        if ((0x8000000180671D20 & 0x2000000000000000) != 0)
        {
          v70 = (0x8000000180671D20 >> 56) & 0xF;
        }

        else
        {
          v70 = 28;
        }

        _StringGuts.append(_:)(0xD00000000000001CLL, 0x8000000180671D20 | 0x8000000000000000, 0, v70, v56, v57, v58, v59, v60, v61, v62, v63);
        0x8000000180671D20 | 0x8000000000000000;
        v65 = v209._object;
        v79 = v209._countAndFlagsBits;
      }
    }

    else
    {
      v55;
      v79 = 0xD00000000000001CLL;
      v209._countAndFlagsBits = 0xD00000000000001CLL;
      v209._object = (0x8000000180671D20 | 0x8000000000000000);
    }

    v162 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v162 = v79 & 0xFFFFFFFFFFFFLL;
    }

    if (!v162 && (v79 & ~v65 & 0x2000000000000000) == 0)
    {
      goto LABEL_149;
    }

LABEL_121:
    if ((v65 & 0x2000000000000000) == 0)
    {
      v163 = v2._countAndFlagsBits;
      if ((v2._object & 0x2000000000000000) != 0)
      {
        v164 = (v2._object >> 56) & 0xF;
LABEL_126:
        v165 = v163;
LABEL_152:
        _StringGuts.append(_:)(v165, v2._object, 0, v164, v71, v72, v73, v74, v75, v76, v77, v78);
        goto LABEL_153;
      }

LABEL_125:
      v164 = v163 & 0xFFFFFFFFFFFFLL;
      goto LABEL_126;
    }

    v163 = v2._countAndFlagsBits;
    if ((v2._object & 0x2000000000000000) == 0)
    {
      goto LABEL_125;
    }

    v166 = specialized _SmallString.init(_:appending:)(v79, v65, v2._countAndFlagsBits, v2._object);
    if (v168)
    {
      v164 = (v2._object >> 56) & 0xF;
      v163 = v2._countAndFlagsBits;
      goto LABEL_126;
    }

LABEL_165:
    v203 = v166;
    v204 = v167;
    v65;
    v2._object;
    v209._countAndFlagsBits = v203;
    v209._object = v204;
    object = v204;
    v5 = v203;
LABEL_154:
    v201 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v201 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v201 || (v5 & ~object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(0, 0xE000000000000000, v193, v194, v195, v196, v197, v198, v199, v200);
      goto LABEL_159;
    }

    goto LABEL_161;
  }

  if (v1 - 100344 > 0xFFFFE807 || v1 - 101641 >= 0xFFFFFFF7)
  {
    v114 = 0xD000000000000011;
    v115 = _StringGuts.init(_initialCapacity:)(19);
    v125 = v116;
    v209._countAndFlagsBits = v115;
    v209._object = v116;
    v65 = 0x8000000180671D40 | 0x8000000000000000;
    v126 = HIBYTE(v116) & 0xF;
    if ((v116 & 0x2000000000000000) == 0)
    {
      v126 = v115 & 0xFFFFFFFFFFFFLL;
    }

    if (v126 || (v115 & ~v116 & 0x2000000000000000) != 0)
    {
      if ((0x8000000180671D40 & 0x2000000000000000 & v116) != 0 && (v127 = specialized _SmallString.init(_:appending:)(v115, v116, 0xD000000000000011, 0x8000000180671D40 | 0x8000000000000000), (v129 & 1) == 0))
      {
        v114 = v127;
        v169 = v128;
        0x8000000180671D40 | 0x8000000000000000;
        v125;
        v209._countAndFlagsBits = v114;
        v209._object = v169;
        v65 = v169;
      }

      else
      {
        if ((0x8000000180671D40 & 0x2000000000000000) != 0)
        {
          v130 = (0x8000000180671D40 >> 56) & 0xF;
        }

        else
        {
          v130 = 17;
        }

        _StringGuts.append(_:)(0xD000000000000011, 0x8000000180671D40 | 0x8000000000000000, 0, v130, v117, v118, v119, v120, v121, v122, v123, v124);
        0x8000000180671D40 | 0x8000000000000000;
        v65 = v209._object;
        v114 = v209._countAndFlagsBits;
      }
    }

    else
    {
      v116;
      v209._countAndFlagsBits = 0xD000000000000011;
      v209._object = (0x8000000180671D40 | 0x8000000000000000);
    }

    v192 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v192 = v114 & 0xFFFFFFFFFFFFLL;
    }

    if (!v192 && (v114 & ~v65 & 0x2000000000000000) == 0)
    {
      goto LABEL_149;
    }

    if ((v65 & 0x2000000000000000) != 0)
    {
      v165 = v2._countAndFlagsBits;
      if ((v2._object & 0x2000000000000000) != 0)
      {
        v166 = specialized _SmallString.init(_:appending:)(v114, v65, v2._countAndFlagsBits, v2._object);
        if (v202)
        {
          v164 = (v2._object >> 56) & 0xF;
          v165 = v2._countAndFlagsBits;
          goto LABEL_152;
        }

        goto LABEL_165;
      }
    }

    else
    {
      v165 = v2._countAndFlagsBits;
      if ((v2._object & 0x2000000000000000) != 0)
      {
        v164 = (v2._object >> 56) & 0xF;
        goto LABEL_152;
      }
    }

    v164 = v165 & 0xFFFFFFFFFFFFLL;
    goto LABEL_152;
  }

  if (v1 - 101590 >= 0xFFFFFE2A)
  {
    v148 = _StringGuts.init(_initialCapacity:)(32);
    v209._countAndFlagsBits = v148;
    v209._object = v149;
    v65 = 0x8000000180671D60 | 0x8000000000000000;
    v158 = HIBYTE(v149) & 0xF;
    if ((v149 & 0x2000000000000000) == 0)
    {
      v158 = v148 & 0xFFFFFFFFFFFFLL;
    }

    if (v158 || (v148 & ~v149 & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(0xD00000000000001ELL, 0x8000000180671D60 | 0x8000000000000000, v150, v151, v152, v153, v154, v155, v156, v157);
      0x8000000180671D60 | 0x8000000000000000;
      v65 = v209._object;
      v79 = v209._countAndFlagsBits;
    }

    else
    {
      v149;
      v79 = 0xD00000000000001ELL;
      v209._countAndFlagsBits = 0xD00000000000001ELL;
      v209._object = (0x8000000180671D60 | 0x8000000000000000);
    }

    v159 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v159 = v79 & 0xFFFFFFFFFFFFLL;
    }

    if (!v159 && (v79 & ~v65 & 0x2000000000000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_121;
  }

  if (v1 - 111356 >= 0xFFFFFE74)
  {
    v170 = _StringGuts.init(_initialCapacity:)(18);
    v209._countAndFlagsBits = v170;
    v209._object = v171;
    v65 = 0x8000000180671D80 | 0x8000000000000000;
    v180 = HIBYTE(v171) & 0xF;
    if ((v171 & 0x2000000000000000) == 0)
    {
      v180 = v170 & 0xFFFFFFFFFFFFLL;
    }

    if (v180 || (v170 & ~v171 & 0x2000000000000000) != 0)
    {
      v181 = 0xD000000000000010;
LABEL_135:
      _StringGuts.append(_:)(v181, v65, v172, v173, v174, v175, v176, v177, v178, v179);
      v65;
      v65 = v209._object;
      v190 = v209._countAndFlagsBits;
      goto LABEL_136;
    }

    v171;
    v190 = 0xD000000000000010;
LABEL_173:
    v209._countAndFlagsBits = v190;
    v209._object = v65;
LABEL_136:
    v191 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v191 = v190 & 0xFFFFFFFFFFFFLL;
    }

    if (v191 || (v190 & ~v65 & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v2._countAndFlagsBits, v2._object, v182, v183, v184, v185, v186, v187, v188, v189);
LABEL_153:
      v2._object;
      object = v209._object;
      v5 = v209._countAndFlagsBits;
      goto LABEL_154;
    }

LABEL_149:
    v65;
    v209 = v2;
    goto LABEL_154;
  }

  if (v1 >> 5 > 0x9A2 && v1 <= 0x143FA)
  {
    v205 = _StringGuts.init(_initialCapacity:)(22);
    v209._countAndFlagsBits = v205;
    v209._object = v206;
    v65 = 0x8000000180671DA0 | 0x8000000000000000;
    v207 = HIBYTE(v206) & 0xF;
    if ((v206 & 0x2000000000000000) == 0)
    {
      v207 = v205 & 0xFFFFFFFFFFFFLL;
    }

    if (v207 || (v205 & ~v206 & 0x2000000000000000) != 0)
    {
      v181 = 0xD000000000000014;
      goto LABEL_135;
    }

    v206;
    v190 = 0xD000000000000014;
    goto LABEL_173;
  }

  v2._object;
  countAndFlagsBits = 0;
  v7 = 0;
LABEL_175:
  result.value._object = v7;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t Unicode.Scalar.Properties.name.getter()
{
  v1 = *v0;
  v3 = Unicode.Scalar.Properties._fastScalarName()();
  result = v3.value._countAndFlagsBits;
  if (!v3.value._object)
  {
    result = specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(88, v1);
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v5)
    {
      v4;
      return 0;
    }
  }

  return result;
}

char *Unicode.Scalar.Properties.nameAlias.getter()
{
  result = _swift_stdlib_getNameAlias(*v0);
  if (result)
  {
    v2 = result;
    v3 = _swift_stdlib_strlen(result);
    if ((v3 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFs4Int8V_s5UInt8Vs5NeverOSSTt1g5019_sSS7cStringSSSPys4f14VG_tcfcSSSRys5G7VGXEfU_Tf1cn_n(v2, v3);
  }

  return result;
}

uint64_t Unicode.Scalar.Properties.canonicalCombiningClass.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *v1;
  if (result >= 0xC0)
  {
    v4 = a1;
    result = _swift_stdlib_getNormData(result);
    a1 = v4;
    v3 = result >> 3;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t Unicode.Scalar.Properties.numericType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = _swift_stdlib_getNumericType(*v1);
  if ((result + 1) >= 4u)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066E440, "Swift/UnicodeScalarProperties.swift", 0x23uLL, 2, 0x5D4uLL, 0);
  }

  *a1 = 2 - result;
  return result;
}

uint64_t Unicode.Scalar.Properties.numericValue.getter()
{
  v1 = *v0;
  NumericType = _swift_stdlib_getNumericType(*v0);
  if (NumericType < 3)
  {
    return _swift_stdlib_getNumericValue(v1);
  }

  if (NumericType != 255)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066E440, "Swift/UnicodeScalarProperties.swift", 0x23uLL, 2, 0x5D4uLL, 0);
  }

  return 0;
}

unint64_t Character._firstScalar.getter(uint64_t a1, unint64_t a2)
{
  result = specialized Collection.first.getter(a1, a2);
  if ((result & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

BOOL Character._isSingleScalar.getter(uint64_t a1, unint64_t a2)
{
  v4._rawBits = _StringGuts.validateScalarIndex(_:)(15)._rawBits;
  if ((a2 & 0x1000000000000000) != 0)
  {
    rawBits = String.UnicodeScalarView._foreignIndex(after:)(v4)._rawBits;
  }

  else
  {
    v5 = v4._rawBits >> 16;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v13[0] = a1;
      v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = *(v13 + v5);
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v6 = _StringObject.sharedUTF8.getter(a1, a2);
      }

      v7 = v6[v5];
    }

    v8 = v7;
    v9 = __clz(v7 ^ 0xFF) - 24;
    if (v8 >= 0)
    {
      LOBYTE(v9) = 1;
    }

    rawBits = (v5 + v9) << 16;
  }

  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return rawBits >> 14 == 4 * v11;
}

uint64_t Character.asciiValue.getter(unint64_t a1, unint64_t a2)
{
  if (a1 == 2573 && a2 == 0xE200000000000000 || (~a2 & 0x6000000000000000) != 0 && (_stringCompareInternal(_:_:expecting:)(a1, a2, 2573, 0xE200000000000000, 0) & 1) != 0)
  {
    v4 = 0;
    LOBYTE(v5) = 10;
    return v5 | (v4 << 8);
  }

  if (!Character._isSingleScalar.getter(a1, a2))
  {
    goto LABEL_12;
  }

  v6 = specialized Collection.first.getter(a1, a2);
  if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_15;
  }

  if ((v6 & 0xFFFFFF80) != 0)
  {
LABEL_12:
    LOBYTE(v5) = 0;
    v4 = 1;
    return v5 | (v4 << 8);
  }

  v5 = specialized Collection.first.getter(a1, a2);
  if ((v5 & 0x100000000) != 0)
  {
LABEL_15:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v5 & 0xFFFFFF00) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = 0;
  return v5 | (v4 << 8);
}

unint64_t Character.isWhitespace.getter(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.first.getter(a1, a2);
  if ((v2 & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (_swift_stdlib_getBinaryProperties(v2) >> 45) & 1;
}

BOOL Character.isNewline.getter(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.first.getter(a1, a2);
  if ((v2 & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = (v2 - 8232) < 2 || v2 == 133;
  return (v2 - 14) >= 0xFFFFFFFC || v3;
}

uint64_t Character.isNumber.getter(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.first.getter(a1, a2);
  if ((v2 & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = _swift_stdlib_getNumericType(v2) + 1;
  if (v3 >= 4u)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066E440, "Swift/UnicodeScalarProperties.swift", 0x23uLL, 2, 0x5D4uLL, 0);
  }

  return (0xEu >> (v3 & 0xF)) & 1;
}

uint64_t Character.wholeNumberValue.getter(uint64_t a1, unint64_t a2)
{
  if (!Character._isSingleScalar.getter(a1, a2))
  {
    return 0;
  }

  v4 = specialized Collection.first.getter(a1, a2);
  if ((v4 & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = v4;
  NumericType = _swift_stdlib_getNumericType(v4);
  if (NumericType >= 3)
  {
    if (NumericType != 255)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066E440, "Swift/UnicodeScalarProperties.swift", 0x23uLL, 2, 0x5D4uLL, 0);
    }

    return 0;
  }

  NumericValue = _swift_stdlib_getNumericValue(v5);
  v8 = NumericValue <= -9.22337204e18;
  if (NumericValue >= 9.22337204e18)
  {
    v8 = 1;
  }

  if (NumericValue != trunc(NumericValue) || v8)
  {
    return 0;
  }

  else
  {
    return NumericValue;
  }
}

Swift::Int_optional __swiftcall Int.init(exactly:)(Swift::Double exactly)
{
  v1 = exactly <= -9.22337204e18;
  if (exactly >= 9.22337204e18)
  {
    v1 = 1;
  }

  v2 = trunc(exactly) != exactly || v1;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = exactly;
  }

  result.value = v3;
  result.is_nil = v2;
  return result;
}

uint64_t Character.hexDigitValue.getter(uint64_t a1, unint64_t a2)
{
  if (!Character._isSingleScalar.getter(a1, a2))
  {
    return 0;
  }

  v4 = specialized Collection.first.getter(a1, a2);
  if ((v4 & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v4 - 58) >= 0xFFFFFFF6)
  {
    return (v4 - 48);
  }

  if ((v4 - 71) >= 0xFFFFFFFA)
  {
    return (v4 - 55);
  }

  if ((v4 - 103) >= 0xFFFFFFFA)
  {
    return (v4 - 87);
  }

  if ((v4 - 65306) >= 0xFFFFFFF6)
  {
    return (v4 - 65296);
  }

  v5 = (v4 - 65335);
  if ((v4 - 65351) < 0xFFFFFFFA)
  {
    v5 = 0;
  }

  if ((v4 - 65319) >= 0xFFFFFFFA)
  {
    return (v4 - 65303);
  }

  else
  {
    return v5;
  }
}

unint64_t Character.isLetter.getter(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.first.getter(a1, a2);
  if ((v2 & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (_swift_stdlib_getBinaryProperties(v2) >> 7) & 1;
}

uint64_t Character._isUppercased.getter(unint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  if (v5 == a1 && v6 == a2)
  {
    v6;
    return 1;
  }

  else if ((~a2 & 0x6000000000000000) != 0 || (v6 & 0x6000000000000000) != 0x6000000000000000)
  {
    v9 = v6;
    v10 = _stringCompareInternal(_:_:expecting:)(a1, a2, v5, v6, 0);
    v9;
    return v10 & 1;
  }

  else
  {
    v6;
    return 0;
  }
}

uint64_t Character.isUppercase.getter(unint64_t a1, unint64_t a2)
{
  if (Character._isSingleScalar.getter(a1, a2))
  {
    v4 = specialized Collection.first.getter(a1, a2);
    if ((v4 & 0x100000000) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((_swift_stdlib_getBinaryProperties(v4) & 0x80000000000) != 0)
    {
      return 1;
    }
  }

  if ((Character._isUppercased.getter(a1, a2) & 1) == 0)
  {
    return 0;
  }

  return Character.isCased.getter(a1, a2);
}

uint64_t Character.isCased.getter(unint64_t a1, unint64_t a2)
{
  if (Character._isSingleScalar.getter(a1, a2))
  {
    v4 = specialized Collection.first.getter(a1, a2);
    if ((v4 & 0x100000000) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((_swift_stdlib_getBinaryProperties(v4) & 0x800) != 0)
    {
      goto LABEL_6;
    }
  }

  if ((Character._isUppercased.getter(a1, a2) & 1) == 0)
  {
LABEL_6:
    v5 = 1;
  }

  else
  {
    v5 = Character._isLowercased.getter(a1, a2) ^ 1;
  }

  return v5 & 1;
}

uint64_t Character.isLowercase.getter(unint64_t a1, unint64_t a2)
{
  if (Character._isSingleScalar.getter(a1, a2))
  {
    v4 = specialized Collection.first.getter(a1, a2);
    if ((v4 & 0x100000000) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((_swift_stdlib_getBinaryProperties(v4) & 0x100000000) != 0)
    {
      return 1;
    }
  }

  if ((Character._isLowercased.getter(a1, a2) & 1) == 0)
  {
    return 0;
  }

  return Character.isCased.getter(a1, a2);
}

BOOL Character.isSymbol.getter(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.first.getter(a1, a2);
  if ((v2 & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  GeneralCategory = _swift_stdlib_getGeneralCategory(v2);
  Unicode.GeneralCategory.init(rawValue:)(GeneralCategory);
  return v5 - 18 < 4;
}

unint64_t Character.isMathSymbol.getter(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.first.getter(a1, a2);
  if ((v2 & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (_swift_stdlib_getBinaryProperties(v2) >> 33) & 1;
}

BOOL Character.isCurrencySymbol.getter(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.first.getter(a1, a2);
  if ((v2 & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  GeneralCategory = _swift_stdlib_getGeneralCategory(v2);
  Unicode.GeneralCategory.init(rawValue:)(GeneralCategory);
  return v5 == 19;
}

BOOL Character.isPunctuation.getter(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.first.getter(a1, a2);
  if ((v2 & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  GeneralCategory = _swift_stdlib_getGeneralCategory(v2);
  Unicode.GeneralCategory.init(rawValue:)(GeneralCategory);
  return v5 - 11 < 7;
}

unint64_t protocol witness for IteratorProtocol.next() in conformance Unicode._NFD.Iterator@<X0>(uint64_t a1@<X8>)
{
  result = specialized Unicode._InternalNFD.Iterator.next()();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t Unicode._NFD.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = *v1;
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
  *(a1 + 40) = 1;
  *(a1 + 48) = &_swiftEmptyArrayStorage;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0x1000000000000;
  return v2;
}

__n128 protocol witness for Sequence.makeIterator() in conformance Unicode._NFD@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u64[1];
  result = *v1;
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = result.n128_u64[0];
  *(a1 + 40) = 1;
  *(a1 + 48) = &_swiftEmptyArrayStorage;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0x1000000000000;
  return result;
}

unint64_t protocol witness for IteratorProtocol.next() in conformance Unicode._NFC.Iterator@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Unicode._InternalNFC.Iterator.next()(a2, a3);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t Unicode._NFC.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v4 = *(v1 + 3);
  }

  else
  {
    v4 = *(v1 + 2);
  }

  v5 = *v1;
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v5;
  *(a1 + 40) = 1;
  *(a1 + 42) = (v4 & 0x4000000000000000) != 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = &_swiftEmptyArrayStorage;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0x1000000000000;
  *(a1 + 80) = &_swiftEmptyArrayStorage;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 1;
  return v2;
}

__n128 protocol witness for Sequence.makeIterator() in conformance Unicode._NFC@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1].n128_u64[0];
  v4 = v1[1].n128_u64[1];
  v8 = *v1;
  v9 = v3;
  v10 = v4;
  v11 = v8.n128_u64[0];
  _ss7UnicodeO12_InternalNFCV8IteratorV6sourceAFy_x_GAEQz_tcfCSs0A10ScalarViewV_Tt1g5(&v8, v12);
  v5 = v12[5];
  *(a1 + 64) = v12[4];
  *(a1 + 80) = v5;
  *(a1 + 96) = v13;
  v6 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v6;
  result = v12[3];
  *(a1 + 32) = v12[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Unicode._NFD(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void, unint64_t))
{
  v4 = v3[3];
  v5 = a3(*v3, v3[1], v3[2], v4);
  v4;
  return v5;
}

unint64_t String._nfd.getter@<X0>(Swift::UInt64 *a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  *a1 = specialized Collection.subscript.getter(a2, a3);
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;

  return v5;
}

unint64_t Substring._nfc.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return a4;
}

char *Unicode.Scalar.Properties._scriptExtensions.getter()
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v13 = 0;
  ScriptExtensions = _swift_stdlib_getScriptExtensions(v1, &v13);
  if (ScriptExtensions)
  {
    v3 = ScriptExtensions;
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0, &_swiftEmptyArrayStorage);
    v5 = v13;
    if (v13)
    {
      do
      {
        v10 = *v3++;
        v9 = v10;
        v12 = *(result + 2);
        v11 = *(result + 3);
        if (v12 >= v11 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, result);
        }

        *(result + 2) = v12 + 1;
        result[v12 + 32] = v9;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v6 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt8>();
    v7 = swift_allocObject(v6, 0x21, 7uLL);
    *(v7 + 1) = xmmword_18071DB30;
    Script = _swift_stdlib_getScript(v1);
    result = v7;
    *(v7 + 32) = Script;
  }

  return result;
}

unint64_t Unicode.Scalar.Properties._caseFolded.getter()
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v25 = -1;
  v26 = -1;
  _swift_stdlib_getCaseMapping(v1, &v25);
  v2 = 0;
  v3 = 0;
  v4 = 0xE000000000000000;
  do
  {
    v5 = *(&v25 + v3);
    if (v5 == -1)
    {
      break;
    }

    if (HIWORD(v5) > 0x10u || (v5 & 0xFFFFF800) == 55296)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v27 = v2;
    v28 = v4;
    v7 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v5);
    v17 = v8;
    if ((v4 & 0x2000000000000000) != 0)
    {
      if ((v8 & 0x2000000000000000) == 0)
      {
LABEL_11:
        v18 = v7 & 0xFFFFFFFFFFFFLL;
        goto LABEL_12;
      }

      v19 = v7;
      v20 = specialized _SmallString.init(_:appending:)(v2, v4, v7, v8);
      if ((v22 & 1) == 0)
      {
        v2 = v20;
        v23 = v21;
        v17;
        v4;
        v4 = v23;
        goto LABEL_13;
      }

      v18 = HIBYTE(v17) & 0xF;
      v7 = v19;
    }

    else
    {
      if ((v8 & 0x2000000000000000) == 0)
      {
        goto LABEL_11;
      }

      v18 = HIBYTE(v8) & 0xF;
    }

LABEL_12:
    _StringGuts.append(_:)(v7, v17, 0, v18, v9, v10, v11, v12, v13, v14, v15, v16);
    v17;
    v2 = v27;
    v4 = v28;
LABEL_13:
    0xE000000000000000;
    v3 += 4;
  }

  while (v3 != 12);
  return v2;
}

Swift::String::Index __swiftcall String._wordIndex(before:)(Swift::String::Index before)
{
  v3 = _StringGuts.validateWordIndex(_:)(before._rawBits, v1, v2, _StringGuts.validateInclusiveSubscalarIndex(_:));
  if (!(v3 >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (_StringGuts.previousWordIndex(endingAt:)(v3 >> 16) << 16);
}

Swift::UInt64 _StringGuts.validateWordIndex(_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(a1);
  if (result)
  {
    if (result < 0x10000)
    {
      return result;
    }
  }

  else
  {
    result = result & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (result < 0x10000)
    {
      return result;
    }
  }

  v7 = result >> 16;
  v8 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v8 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v7 != v8)
  {
    v9 = result;
    v10 = _StringGuts.previousWordIndex(endingAt:)(result >> 16);
    if (v7 == _StringGuts.nextWordIndex(startingAt:)(v10))
    {
      return v9;
    }

    else
    {
      return v10 << 16;
    }
  }

  return result;
}

id key path getter for Unmanaged._value : <A>Unmanaged<A>@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return swift_unknownObjectRetain(v2);
}

void (*Unmanaged._value.modify(void **a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  a1[1] = v1;
  swift_unknownObjectRetain(v3);
  return Unmanaged._value.modify;
}

void Unmanaged._value.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_unknownObjectRelease(*a1);
  *v2 = v1;
}

void *Unmanaged.autorelease()(void *a1)
{
  v2 = swift_unknownObjectRetain(a1);
  swift_unknownObjectRelease(v2);
  return a1;
}

void _sSPyxGSHsRi_zrlSH4hash4intoys6HasherVz_tFTW(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafePointer<A>, a2, a3);

  _Pointer.hash(into:)(a1, a2, WitnessTable);
}

Swift::Int _sSPyxGSHsRi_zrlSH13_rawHashValue4seedS2i_tFTW(Swift::Int a1, unsigned __int16 *a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for UnsafePointer<A>, a2, a3);

  return _Pointer._rawHashValue(seed:)(a1);
}

uint64_t _sSPyxGs28CustomDebugStringConvertiblesRi_zrlsABP16debugDescriptionSSvgTW(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafePointer<A>, a1, a3);

  return _Pointer.debugDescription.getter(a1, WitnessTable);
}

uint64_t _sSPyxGs17CustomReflectablesRi_zrlsABP12customMirrors0D0VvgTW@<X0>(Class *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafePointer<A>, a1, a3);

  return _Pointer.customMirror.getter(a1, WitnessTable, a2);
}

Swift::tuple_partialValue_UInt_overflow_Bool __swiftcall UInt.addingReportingOverflow(_:)(Swift::UInt a1)
{
  v2 = __CFADD__(v1, a1);
  v3 = v1 + a1;
  v4 = v2;
  result.partialValue = v3;
  result.overflow = v4;
  return result;
}

Swift::Int AutoreleasingUnsafeMutablePointer.hashValue.getter(uint64_t a1, uint64_t a2, void (*a3)(void), int *a4)
{
  v5 = (a3)(0, a2);
  swift_getWitnessTable(a4, v5, v6);
  return _Pointer._rawHashValue(seed:)(0);
}

void _sSpyxGSHsRi_zrlSH4hash4intoys6HasherVz_tFTW(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutablePointer<A>, a2, a3);

  _Pointer.hash(into:)(a1, a2, WitnessTable);
}

Swift::Int _sSpyxGSHsRi_zrlSH13_rawHashValue4seedS2i_tFTW(Swift::Int a1, unsigned __int16 *a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for UnsafeMutablePointer<A>, a2, a3);

  return _Pointer._rawHashValue(seed:)(a1);
}

uint64_t _sSpyxGs28CustomDebugStringConvertiblesRi_zrlsABP16debugDescriptionSSvgTW(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutablePointer<A>, a1, a3);

  return _Pointer.debugDescription.getter(a1, WitnessTable);
}

uint64_t _sSpyxGs17CustomReflectablesRi_zrlsABP12customMirrors0D0VvgTW@<X0>(Class *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutablePointer<A>, a1, a3);

  return _Pointer.customMirror.getter(a1, WitnessTable, a2);
}

uint64_t specialized UnsafeMutablePointer.initialize(repeating:count:)(uint64_t result, unint64_t a2, int8x16_t *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2)
  {
    if (a2 < 8)
    {
      v3 = 0;
      goto LABEL_14;
    }

    if (a2 >= 0x20)
    {
      v3 = a2 & 0x7FFFFFFFFFFFFFE0;
      v4 = vdupq_n_s8(result);
      v5 = a3 + 1;
      v6 = a2 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v5[-1] = v4;
        *v5 = v4;
        v5 += 2;
        v6 -= 32;
      }

      while (v6);
      if (v3 == a2)
      {
        return result;
      }

      if ((a2 & 0x18) == 0)
      {
LABEL_14:
        v11 = a2 - v3;
        v12 = &a3->i8[v3];
        do
        {
          *v12++ = result;
          --v11;
        }

        while (v11);
        return result;
      }
    }

    else
    {
      v3 = 0;
    }

    v7 = v3;
    v3 = a2 & 0x7FFFFFFFFFFFFFF8;
    v8 = vdup_n_s8(result);
    v9 = &a3->i8[v7];
    v10 = v7 - (a2 & 0x7FFFFFFFFFFFFFF8);
    do
    {
      *v9++ = v8;
      v10 += 8;
    }

    while (v10);
    if (v3 != a2)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t UnsafeMutablePointer.initialize(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = a2;
  if (a2)
  {
    v7 = result;
    v8 = *(a4 - 8);
    v9 = *(v8 + 16);
    v10 = *(v8 + 72);
    do
    {
      result = v9(a3, v7, a4);
      a3 += v10;
      --v4;
    }

    while (v4);
  }

  return result;
}

char *UnsafeMutablePointer.moveAssign(from:count:)(char *__src, uint64_t a2, char *__dst, unint64_t *a4)
{
  if (a2 < 0 || ((v4 = *(*(a4 - 1) + 72) * a2, v5 = &__dst[v4], v6 = &__src[v4], v5 > __src) ? (v7 = v6 > __dst) : (v7 = 0), v7))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return swift_arrayAssignWithTake(__dst, __src, a2, a4);
}

char *UnsafeMutableRawPointer.moveInitializeMemory<A>(as:from:count:)(int a1, char *a2, uint64_t a3, char *__dst, unint64_t *a5)
{
  if (a3 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__dst < a2 || &a2[*(*(a5 - 1) + 72) * a3] <= __dst)
  {
    swift_arrayInitWithTakeFrontToBack(__dst, a2, a3, a5);
  }

  else
  {
    swift_arrayInitWithTakeBackToFront(__dst, a2, a3, a5);
  }

  return __dst;
}

uint64_t UnsafeMutableRawPointer._legacy_se0349_storeBytes_internal<A>(of:toByteOffset:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = (v10 + v9);
  if ((*(v6 + 80) & (v10 + v9)) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v6 + 16))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v8, a5);
  if ((v7 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  memcpy(v11, v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  return (*(v6 + 8))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
}

void _UTFParser<>.parseScalar<A>(from:)(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v262 = a6;
  v249 = a5;
  v248 = a3;
  v247 = a1;
  v225 = a7;
  swift_getAssociatedTypeWitness(255, a4, a2, &protocol requirements base descriptor for _UTFParser, associated type descriptor for _UTFParser.Encoding);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a2, v10, &protocol requirements base descriptor for _UTFParser, associated conformance descriptor for _UTFParser._UTFParser.Encoding: _UnicodeEncoding);
  swift_getAssociatedTypeWitness(0, AssociatedConformanceWitness, v11, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v224 = v13;
  v220 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v221 = &v220 - v15;
  swift_getAssociatedTypeWitness(255, AssociatedConformanceWitness, v11, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.CodeUnit);
  v17 = v16;
  v242 = AssociatedConformanceWitness;
  v241 = v11;
  v238 = swift_getAssociatedConformanceWitness(AssociatedConformanceWitness, v11, v16, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: FixedWidthInteger);
  v237 = *(v238 + 8);
  v246 = *(*(v237 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v246, v17, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v245 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v244 = &v220 - v20;
  v261 = type metadata accessor for CollectionOfOne(0, v17, v21, v22);
  MEMORY[0x1EEE9AC00](v261, v23);
  v260 = &v220 - v24;
  v223 = type metadata accessor for Optional(0, v17, v25, v26);
  v222 = *(v223 - 8);
  v28 = MEMORY[0x1EEE9AC00](v223, v27);
  v30 = &v220 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v34 = &v220 - v33;
  v264 = *(v17 - 1);
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v257 = &v220 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v234 = &v220 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v265 = (&v220 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v47 = &v220 - v46;
  v49 = MEMORY[0x1EEE9AC00](v45, v48);
  v255 = &v220 - v50;
  MEMORY[0x1EEE9AC00](v49, v51);
  v53 = (&v220 - v52);
  v54 = *(a4 + 40);
  v55 = v7;
  v258 = a4 + 40;
  v259 = a4;
  v239 = v54;
  v56 = v54(a2, a4);
  v240 = a2;
  v233 = v30;
  if ((v56 & 0xFF00000000) != 0)
  {
    v256 = v47;
    v188 = swift_checkMetadataState(0, v241);
    v254 = v7;
    v85 = v259;
    v189 = v239(a2, v259);
    v268 = v189;
    v190 = *(v237 + 96);
    v193 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v189, v191, v192);
    v194 = v255;
    v252 = v193;
    v190(&v268, &type metadata for UInt32);
    v195 = v242;
    v196 = v242[14];
    v253 = v188;
    v197 = v196(v194, v188, v242);
    v199 = v264 + 8;
    v198 = *(v264 + 8);
    v198(v194, v17);
    v263 = v198;
    if (v197)
    {
      v265 = v190;
      v200 = v240;
      v201 = v194;
      v202 = v239;
      v268 = v239(v240, v85);
      (v265)(&v268, &type metadata for UInt32, v252, v17, v237);
      v202(v200, v85);
      LOBYTE(v266) = 0;
      v203 = (*(v85 + 56))(&v268, v200, v85);
      v204 = swift_getAssociatedConformanceWitness(v195, v253, v17, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: UnsignedInteger);
      v205 = type metadata accessor for _UIntBuffer(0, v17, v238, v204);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, v205, v206);
      v208 = v256;
      RangeReplaceableCollection.remove(at:)(&v266, v205, WitnessTable, v256);
      v263(v208, v17);
      v203(&v268, 0);
      v209 = v260;
      (*(v264 + 32))(v260, v201, v17);
      v68 = v261;
      v69 = v262;
      v70 = *(v262 + 56);
      v72 = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v261, v210);
      v73 = v225;
      v74 = v209;
      goto LABEL_7;
    }

    v256 = v199;
    v87 = v249;
    v235 = *(v249 + 16);
    v243 = (v249 + 16) & 0xFFFFFFFFFFFFLL | 0xFE64000000000000;
    v86 = v254;
    v82 = v238;
    v30 = v233;
    v88 = v264;
  }

  else
  {
    v57 = *(v249 + 16);
    v243 = v249 + 16;
    v235 = v57;
    (v57)(v248);
    v58 = v264;
    if ((*(v264 + 48))(v34, 1, v17) == 1)
    {
      (*(v222 + 8))(v34, v223);
LABEL_4:
      v61 = type metadata accessor for Unicode.ParseResult(0, v224, v59, v60);
      v62 = v225;
      v63 = 2;
      goto LABEL_46;
    }

    v64 = *(v58 + 32);
    v64(v53, v34, v17);
    v65 = swift_checkMetadataState(0, v241);
    v66 = v242;
    if (v242[14](v53, v65, v242))
    {
      v67 = v260;
      v64(v260, v53, v17);
      v68 = v261;
      v69 = v262;
      v70 = *(v262 + 56);
      v72 = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v261, v71);
      v73 = v225;
      v74 = v67;
LABEL_7:
      v75 = v68;
      v76 = v224;
      v70(v74, v75, v72, v224, v69);
      v61 = type metadata accessor for Unicode.ParseResult(0, v76, v77, v78);
      v62 = v73;
      goto LABEL_45;
    }

    v243 = v243 & 0xFFFFFFFFFFFFLL | 0xFE64000000000000;
    v79 = v259;
    v80 = (*(v259 + 56))(&v268, v240, v259);
    v81 = swift_getAssociatedConformanceWitness(v66, v65, v17, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: UnsignedInteger);
    v82 = v238;
    v83 = type metadata accessor for _UIntBuffer(0, v17, v238, v81);
    _UIntBuffer.append(_:)(v53, v83);
    v84 = *(v58 + 8);
    v256 = (v58 + 8);
    v263 = v84;
    v84(v53, v17);
    v80(&v268, 0);
    v85 = v79;
    v86 = v55;
    v87 = v249;
    v88 = v58;
  }

  v231 = (v88 + 48);
  v230 = (v88 + 32);
  v232 = v85 + 56;
  v229 = v82 + 64;
  v264 = v237 + 64;
  v236 = v246 + 3;
  v260 = (v237 + 120);
  v261 = (v237 + 128);
  v89 = v237;
  v226 = v237 + 96;
  v228 = (v88 + 16);
  v90 = v82;
  v227 = v82 + 56;
  v91 = v240;
  v92 = v248;
  v93 = v239;
  v254 = v86;
  while (1)
  {
    v235(v92, v87);
    if ((*v231)(v30, 1, v17) == 1)
    {
      break;
    }

    (*v230)(v265, v30, v17);
    v94 = (*(v259 + 56))(&v268, v91);
    v96 = v95;
    v97 = *(v95 + 4);
    v266 = *v95;
    v267 = v97;
    v98 = swift_getAssociatedConformanceWitness(v242, v241, v17, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: UnsignedInteger);
    v99 = type metadata accessor for _UIntBuffer(0, v17, v90, v98);
    v101 = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, v99, v100);
    v102 = Collection.count.getter(v99, v101);
    if (__OFADD__(v102, 1))
    {
      __break(1u);
LABEL_49:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (specialized _UIntBuffer.capacity.getter(v17, v90) < v102 + 1)
    {
      goto LABEL_49;
    }

    v253 = v94;
    v103 = *(v90 + 64);
    v104 = v90;
    v105 = v234;
    v103(v17, v104);
    v262 = *(v89 + 64);
    if ((v262)(v17, v89))
    {
      v106 = v246;
      v107 = v245;
      v108 = swift_getAssociatedConformanceWitness(v246, v17, v245, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v109 = v244;
      (*(v108 + 8))(&qword_18071E0A8, 256, v107, v108);
      v110 = v255;
      (v106[3])(v109, v17, v106);
      LOBYTE(v107) = (*(*(*(v89 + 32) + 8) + 32))(v105, v110, v17);
      v263(v110, v17);
      if ((v107 & 1) == 0)
      {
LABEL_50:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v111 = *(v89 + 128);
    v112 = v111(v17, v89);
    v113 = v257;
    if (v112 >= 32)
    {
      v114 = (v262)(v17, v89);
      v115 = v111(v17, v89);
      if (v114)
      {
        if (v115 <= 32)
        {
          v127 = v246;
          v128 = v245;
          v129 = swift_getAssociatedConformanceWitness(v246, v17, v245, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v130 = v244;
          (*(v129 + 8))(&qword_18071E0A8, 256, v128, v129);
          v131 = v255;
          (v127[3])(v130, v17, v127);
          LOBYTE(v128) = (*(*(*(v89 + 32) + 8) + 40))(v105, v131, v17);
          v263(v131, v17);
          v113 = v257;
          if (v128)
          {
LABEL_24:
            (*(v89 + 120))(v17, v89);
          }
        }

        else
        {
          v266 = -1;
          v118 = *(v89 + 96);
          v119 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v115, v116, v117);
          v120 = v255;
          v118(&v266, &type metadata for UInt32, v119, v17, v89);
          v121 = (*(*(*(v89 + 32) + 8) + 16))(v120, v105, v17);
          v263(v120, v17);
          v113 = v257;
          if (v121)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        if (v115 <= 32)
        {
          goto LABEL_24;
        }

        v266 = -1;
        v122 = *(v89 + 96);
        v123 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v115, v116, v117);
        v124 = v255;
        v122(&v266, &type metadata for UInt32, v123, v17, v89);
        v125 = (*(*(*(v89 + 32) + 8) + 16))(v124, v105, v17);
        v126 = v124;
        v113 = v257;
        v263(v126, v17);
        if (v125)
        {
          goto LABEL_50;
        }
      }
    }

    v252 = *(v89 + 120);
    v132 = v252(v17, v89);
    v133 = v263;
    v263(v105, v17);
    v134 = *(v96 + 4);
    v251 = *v96 & ~(v132 << v134);
    *v96 = v251;
    (*v228)(v113, v265, v17);
    if ((v262)(v17, v89))
    {
      v135 = v246;
      v136 = v245;
      v137 = swift_getAssociatedConformanceWitness(v246, v17, v245, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v138 = v244;
      (*(v137 + 8))(&qword_18071E0A8, 256, v136, v137);
      v139 = v255;
      v140 = v138;
      v113 = v257;
      (v135[3])(v140, v17, v135);
      LOBYTE(v136) = (*(*(*(v89 + 32) + 8) + 32))(v113, v139, v17);
      v133(v139, v17);
      if ((v136 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v141 = v111(v17, v89);
    v250 = v96;
    if (v141 > 31)
    {
      v145 = (v262)(v17, v89);
      v146 = v111(v17, v89);
      if (v145)
      {
        v143 = v259;
        v149 = v255;
        v144 = v252;
        if (v146 <= 32)
        {
          v263(v265, v17);
          v150 = v246;
          v151 = v245;
          v152 = swift_getAssociatedConformanceWitness(v246, v17, v245, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v153 = v244;
          (*(v152 + 8))(&qword_18071E0A8, 256, v151, v152);
          v154 = v153;
          v113 = v257;
          (v150[3])(v154, v17, v150);
          LOBYTE(v151) = (*(*(*(v89 + 32) + 8) + 40))(v113, v149, v17);
          v155 = v149;
          v142 = v263;
          v263(v155, v17);
          if ((v151 & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v143 = v259;
        v149 = v255;
        v144 = v252;
        if (v146 <= 32)
        {
          v142 = v263;
          v263(v265, v17);
LABEL_37:
          v144(v17, v89);
          goto LABEL_38;
        }
      }

      v266 = -1;
      v156 = *(v89 + 96);
      v157 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v146, v147, v148);
      v156(&v266, &type metadata for UInt32, v157, v17, v89);
      v158 = (*(*(*(v89 + 32) + 8) + 16))(v149, v113, v17);
      v159 = v149;
      v142 = v263;
      v263(v159, v17);
      if (v158)
      {
        goto LABEL_50;
      }

      v142(v265, v17);
    }

    else
    {
      v142 = v263;
      v263(v265, v17);
      v143 = v259;
      v144 = v252;
    }

LABEL_38:
    v160 = (v144)(v17, v89);
    v142(v113, v17);
    v161 = v250;
    *v250 = (v160 << (v134 & 0x1F)) | v251;
    v162 = v238;
    v262 = *(v238 + 56);
    *(v161 + 4) = v134 + (v262)(v17, v238);
    (v253)(&v268, 0);
    v163 = v240;
    v164 = v239;
    v253 = v239(v240, v143);
    v165 = (v262)(v17, v162);
    if (!v165)
    {
      goto LABEL_47;
    }

    v166 = v165;
    v164(v163, v143);
    v167 = (v262)(v17, v162);
    if (!v167)
    {
      goto LABEL_47;
    }

    v168 = v164;
    v90 = v162;
    v169 = BYTE4(v253) / v166 < 32 / v167;
    v87 = v249;
    v92 = v248;
    v30 = v233;
    v89 = v237;
    v91 = v163;
    v93 = v168;
    if (!v169)
    {
      goto LABEL_43;
    }
  }

  (*(v222 + 8))(v30, v223);
  if ((v93(v91, v259) & 0xFF00000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_43:
  v170 = v259;
  LODWORD(v265) = (*(v259 + 24))(v91, v259);
  v171 = v265 >> 8;
  v264 = v265 >> 8;
  v172 = *(v170 + 32);
  LODWORD(v263) = BYTE1(v265);
  v172();
  v173 = v93(v91, v170);
  v174 = v93;
  v175 = v91;
  v176 = v173 >> v171;
  v177 = *(v170 + 56);
  v178 = v177(&v268, v91, v170);
  *v179 = v176;
  v178(&v268, 0);
  v180 = v174(v91, v170);
  v181 = BYTE4(v180) - v264;
  v182 = v177(&v268, v175, v170);
  *(v183 + 4) = v181;
  v182(&v268, 0);
  if (v265)
  {
    v184 = v225;
    v185 = v224;
    (*(v220 + 32))(v225, v221, v224);
    v61 = type metadata accessor for Unicode.ParseResult(0, v185, v186, v187);
    v62 = v184;
LABEL_45:
    v63 = 0;
  }

  else
  {
    v211 = v263;
    v212 = (*(v238 + 56))(v17);
    v213 = specialized numericCast<A, B>(_:)(v212);
    if (!v213)
    {
LABEL_47:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v214 = v213;
    v215 = v224;
    (*(v220 + 8))(v221, v224);
    v216 = v211 / v214;
    v217 = v225;
    *v225 = v216;
    v61 = type metadata accessor for Unicode.ParseResult(0, v215, v218, v219);
    v62 = v217;
    v63 = 1;
  }

LABEL_46:
  swift_storeEnumTagMultiPayload(v62, v61, v63);
}

uint64_t static UInt8.% infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 % a2;
}

uint64_t static UInt8./ infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 / a2;
}

uint64_t static Unicode.UTF8.decode(_:)(unsigned int a1)
{
  v1 = __clz(a1) >> 3;
  switch(v1)
  {
    case 1u:
      return ((a1 - 65793) >> 2) & 0xFC0 | ((a1 - 65793) >> 16) & 0x3F | (((a1 - 65793) & 0xF) << 12);
    case 2u:
      return (((a1 - 257) & 0x1F) << 6) | ((a1 - 257) >> 8) & 0x3F;
    case 3u:
      return a1 - 1;
  }

  v3 = vdupq_n_s32(a1 - 16843009);
  v4.i64[0] = vshlq_u32(v3, xmmword_18071DE00).u64[0];
  v4.i64[1] = vshlq_u32(v3, xmmword_18071DE10).i64[1];
  v5 = vandq_s8(v4, xmmword_18071DE20);
  *v5.i8 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  return (v5.i32[0] | v5.i32[1]);
}

uint64_t static Unicode.UTF8.transcode<A>(_:from:)(unsigned int *a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  if (a3 != &type metadata for Unicode.UTF16)
  {
    if (a3 != &type metadata for Unicode.UTF8)
    {
      goto LABEL_15;
    }

    swift_getAssociatedTypeWitness(0, a4, &type metadata for Unicode.UTF8, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
    if (v13 == &type metadata for _ValidUTF8Buffer)
    {
      return *a1;
    }

LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_UIntBufferVys6UInt16VGMd, _ss11_UIntBufferVys6UInt16VGMR);
  swift_getAssociatedTypeWitness(0, a4, &type metadata for Unicode.UTF16, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  if (v8 != v7)
  {
    goto LABEL_9;
  }

  v9 = *a1;
  v10 = *a1;
  if (v10 <= 0x7F)
  {
    return (v9 + 1);
  }

  v14 = (*a1 & 0x3F) << 8;
  if (v10 <= 0x7FF)
  {
    v15 = v14 + (v10 >> 6);
    return v15 + 33217;
  }

  if ((*a1 & 0xF800) != 0xD800)
  {
    return (((v14 | (v10 >> 6) & 0x3F) << 8) | (v9 >> 12)) + 8487393;
  }

LABEL_15:
  v16 = (*(a4 + 88))(a1, a3, a4);
  if (v16 < 0x80)
  {
    return v16 + 1;
  }

  v17 = (v16 & 0x3F) << 8;
  if (v16 < 0x800)
  {
    v15 = (v16 >> 6) + v17;
    return v15 + 33217;
  }

  v18 = (v17 | (v16 >> 6) & 0x3F) << 8;
  v19 = (((v18 | (v16 >> 12) & 0x3F) << 8) | (v16 >> 18)) - 2122219023;
  v11 = (v16 >> 12) + v18 + 8487393;
  if (HIWORD(v16))
  {
    return v19;
  }

  return v11;
}

uint64_t Unicode.UTF8.ForwardParser._buffer.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result);
  return result;
}

uint64_t protocol witness for static _UnicodeEncoding.decode(_:) in conformance Unicode.UTF8(unsigned int *a1)
{
  v1 = *a1;
  v2 = __clz(*a1) >> 3;
  switch(v2)
  {
    case 1u:
      return ((v1 - 65793) >> 2) & 0xFC0 | ((v1 - 65793) >> 16) & 0x3F | (((v1 - 65793) & 0xF) << 12);
    case 2u:
      return (((v1 - 257) & 0x1F) << 6) | ((v1 - 257) >> 8) & 0x3F;
    case 3u:
      return v1 - 1;
  }

  v4 = vdupq_n_s32(v1 - 16843009);
  v5.i64[0] = vshlq_u32(v4, xmmword_18071DE00).u64[0];
  v5.i64[1] = vshlq_u32(v4, xmmword_18071DE10).i64[1];
  v6 = vandq_s8(v5, xmmword_18071DE20);
  *v6.i8 = vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  return (v6.i32[0] | v6.i32[1]);
}

uint64_t protocol witness for static _UnicodeEncoding.encode(_:) in conformance Unicode.UTF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >= 0x80)
  {
    v3 = (result & 0x3F) << 8;
    if (result >= 0x800)
    {
      v4 = (v3 | (result >> 6) & 0x3F) << 8;
      v5 = (((v4 | (result >> 12) & 0x3F) << 8) | (result >> 18)) - 2122219023;
      v2 = (result >> 12) + v4 + 8487393;
      if (WORD1(result))
      {
        v2 = v5;
      }
    }

    else
    {
      v2 = (result >> 6) + v3 + 33217;
    }
  }

  else
  {
    v2 = result + 1;
  }

  *a2 = v2;
  *(a2 + 4) = 0;
  return result;
}

void protocol witness for static _UnicodeEncoding.transcode<A>(_:from:) in conformance Unicode.UTF8(int *a1@<X0>, ValueMetadata *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2 != &type metadata for Unicode.UTF16)
  {
    if (a2 != v4)
    {
      goto LABEL_15;
    }

    swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
    if (v14 == &type metadata for _ValidUTF8Buffer)
    {
      v13 = *a1;
      goto LABEL_5;
    }

LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_UIntBufferVys6UInt16VGMd, _ss11_UIntBufferVys6UInt16VGMR);
  swift_getAssociatedTypeWitness(0, a3, &type metadata for Unicode.UTF16, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  if (v10 != v9)
  {
    goto LABEL_9;
  }

  v11 = *a1;
  v12 = *a1;
  if (v12 <= 0x7F)
  {
    v13 = (v11 + 1);
    goto LABEL_5;
  }

  v15 = (*a1 & 0x3F) << 8;
  if (v12 < 0x800)
  {
    v16 = v15 + (v12 >> 6);
LABEL_12:
    v13 = v16 + 33217;
    goto LABEL_5;
  }

  if ((*a1 & 0xF800) != 0xD800)
  {
    v13 = (((v15 | (v12 >> 6) & 0x3F) << 8) | (v11 >> 12)) + 8487393;
    goto LABEL_5;
  }

LABEL_15:
  v17 = (*(a3 + 88))(a1, a2, a3);
  if (v17 < 0x80)
  {
    v13 = v17 + 1;
    goto LABEL_5;
  }

  v18 = (v17 & 0x3F) << 8;
  if (v17 < 0x800)
  {
    v16 = (v17 >> 6) + v18;
    goto LABEL_12;
  }

  v19 = (v18 | (v17 >> 6) & 0x3F) << 8;
  v20 = (((v19 | (v17 >> 12) & 0x3F) << 8) | (v17 >> 18)) - 2122219023;
  v13 = (v17 >> 12) + v19 + 8487393;
  if (HIWORD(v17))
  {
    v13 = v20;
  }

LABEL_5:
  *a4 = v13;
  *(a4 + 4) = 0;
}

Swift::tuple_isValid_Bool_bitCount_UInt8 __swiftcall Unicode.UTF8.ReverseParser._parseMultipleCodeUnits()()
{
  if ((v0 & 0xE0C0) != 0xC080)
  {
    if ((v0 & 0xF0C0C0) == 0xE08080)
    {
      if ((v0 & 0xF2000) != 0 && (v0 & 0xF2000) != 0xD2000)
      {
        goto LABEL_3;
      }
    }

    else if ((v0 & 0xF8C0C0C0) == 0xF0808080 && ((v0 & 0x7300000u) - 67108865) >> 26 == 63)
    {
      goto LABEL_3;
    }

LABEL_10:
    Unicode.UTF8.ReverseParser._invalidLength()();
    v1 = 0;
    goto LABEL_12;
  }

  if ((v0 & 0x1E00) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  v1 = 1;
LABEL_12:
  result.bitCount = v2;
  result.isValid = v1;
  return result;
}

uint64_t static UInt8.* infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  result = a1 * a2;
  if ((result & 0xFF00) != 0)
  {
    __break(1u);
  }

  return result;
}

Swift::UInt8 __swiftcall Unicode.UTF8.ReverseParser._invalidLength()()
{
  if ((v0 & 0xF0C0) != 0xE080)
  {
    if ((v0 & 0xF8C0) == 0xF080)
    {
      if ((v0 & 0x730u) - 1025 >= 0xFFFFFC00)
      {
        return 2;
      }
    }

    else if ((v0 & 0xF8C0C0) == 0xF08080 && (v0 & 0x73000u) - 262145 > 0xFFFBFFFF)
    {
      return 3;
    }

    return 1;
  }

  if ((v0 & 0xF20) == 0xD20 || (v0 & 0xF20) == 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void *protocol witness for _UnicodeParser.parseScalar<A>(from:) in conformance Unicode.UTF8.ReverseParser@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, uint64_t a5@<X0>)
{
  v6 = v5;
  v10 = *(v5 + 4);
  if (*(v5 + 4))
  {
    v15 = *v5;
    if ((*v5 & 0x80) == 0)
    {
      lazy protocol witness table accessor for type Unicode.UTF8.ReverseParser and conformance Unicode.UTF8.ReverseParser(a5, a1, a2);
      v20 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      result = (v20)(v21, 0);
      v14 = 0;
      v13 = (v15 + 1);
      goto LABEL_29;
    }

    v11 = *(a2 + 16);
    result = v11(v21, a1, a2);
  }

  else
  {
    v11 = *(a2 + 16);
    result = (v11)(v21, a1, a2, a2, a3);
    if ((v21[0] & 0x100) != 0)
    {
      v13 = 0;
      v14 = 2;
      goto LABEL_29;
    }

    if ((v21[0] & 0x80) == 0)
    {
      v14 = 0;
      v13 = LOBYTE(v21[0]) + 1;
      goto LABEL_29;
    }

    v15 = *v5 & 0xFFFFFF00 | LOBYTE(v21[0]);
    *v5 = v15;
    v10 = 8;
    *(v5 + 4) = 8;
    result = v11(v21, a1, a2);
  }

  if ((v21[0] & 0x100) != 0)
  {
    v16 = v10;
  }

  else
  {
    if (v10 > 0x1F)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v15 = (LOBYTE(v21[0]) << v10) | ((-255 << v10) - 1) & v15;
    *v5 = v15;
    v16 = v10 + 8;
    *(v5 + 4) = v10 + 8;
    if (v10 <= 0x17)
    {
      result = v11(v21, a1, a2);
      if ((v21[0] & 0x100) == 0)
      {
        v15 = (LOBYTE(v21[0]) << v16) | ((-65280 << v10) - 1) & v15;
        *v5 = v15;
        v16 = v10 + 16;
        *(v5 + 4) = v10 + 16;
        if (v10 <= 0xF)
        {
          result = v11(v21, a1, a2);
          if ((v21[0] & 0x100) == 0)
          {
            v15 = (LOBYTE(v21[0]) << v16) | ((-16711680 << v10) - 1) & v15;
            *v5 = v15;
            v16 = v10 + 24;
            *(v5 + 4) = v10 + 24;
            if (v10 <= 7)
            {
              result = v11(v21, a1, a2);
              if ((v21[0] & 0x100) == 0)
              {
                v15 = (LOBYTE(v21[0]) << v16) | ((0x1000000 << v10) - 1) & v15;
                *v5 = v15;
                v16 = v10 | 0x20;
                *(v5 + 4) = v10 | 0x20;
              }
            }
          }
        }
      }
    }
  }

  if ((v15 & 0xE0C0) == 0xC080)
  {
    if ((v15 & 0x1E00) != 0)
    {
      v17 = 16;
LABEL_20:
      v14 = 0;
      *v5 = v15 >> v17;
      *(v5 + 4) = v16 - v17;
      v13 = (bswap32(v15) + 16843009) >> (-v17 & 0x18);
      goto LABEL_29;
    }
  }

  else if ((v15 & 0xF0C0C0) == 0xE08080)
  {
    if ((v15 & 0xF2000) != 0 && (v15 & 0xF2000) != 0xD2000)
    {
      v17 = 24;
      goto LABEL_20;
    }
  }

  else if ((v15 & 0xF8C0C0C0) == 0xF0808080 && ((v15 & 0x7300000) - 67108865) >> 26 == 63)
  {
    v17 = 32;
    goto LABEL_20;
  }

  v18 = Unicode.UTF8.ReverseParser._invalidLength()();
  v19 = 8 * v18;
  *v6 = v15 >> (8 * (v18 & 0x1F));
  *(v6 + 4) = v16 - 8 * v18;
  result = specialized numericCast<A, B>(_:)(8uLL);
  if (!result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v14 = 1;
  v13 = v19 / result;
LABEL_29:
  *a4 = v13;
  *(a4 + 8) = v14;
  return result;
}

uint64_t protocol witness for _UTFParser._parseMultipleCodeUnits() in conformance Unicode.UTF8.ReverseParser()
{
  v1 = *v0;
  if ((*v0 & 0xE0C0) != 0xC080)
  {
    if ((v1 & 0xF0C0C0) == 0xE08080)
    {
      if ((v1 & 0xF2000) != 0 && (v1 & 0xF2000) != 0xD2000)
      {
        v2 = 24;
        v3 = 1;
        return v3 | (v2 << 8);
      }
    }

    else if ((v1 & 0xF8C0C0C0) == 0xF0808080 && ((v1 & 0x7300000u) - 67108865) >> 26 == 63)
    {
      v2 = 32;
      v3 = 1;
      return v3 | (v2 << 8);
    }

LABEL_10:
    v4 = Unicode.UTF8.ReverseParser._invalidLength()();
    v3 = 0;
    v2 = 8 * v4;
    return v3 | (v2 << 8);
  }

  if ((v1 & 0x1E00) == 0)
  {
    goto LABEL_10;
  }

  v2 = 16;
  v3 = 1;
  return v3 | (v2 << 8);
}

Swift::tuple_isValid_Bool_bitCount_UInt8 __swiftcall Unicode.UTF8.ForwardParser._parseMultipleCodeUnits()()
{
  if ((v0 & 0xC0E0) != 0x80C0)
  {
    if ((v0 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v0 & 0x200F) != 0 && (v0 & 0x200F) != 0x200D)
      {
        goto LABEL_3;
      }
    }

    else if ((v0 & 0xC0C0C0F8) == 0x808080F0 && (v0 & 0x3007) != 0 && __rev16(v0 & 0x3007) < 0x401)
    {
      goto LABEL_3;
    }

LABEL_11:
    Unicode.UTF8.ForwardParser._invalidLength()();
    v1 = 0;
    goto LABEL_12;
  }

  if ((v0 & 0x1E) == 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v1 = 1;
LABEL_12:
  result.bitCount = v2;
  result.isValid = v1;
  return result;
}

Swift::UInt8 __swiftcall Unicode.UTF8.ForwardParser._invalidLength()()
{
  v1 = v0;
  if ((v0 & 0xC0F0) == 0x80E0)
  {
    if ((v0 & 0x200F) == 0x200D || (v0 & 0x200F) == 0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if ((v0 & 0xC0F8) == 0x80F0)
  {
    result = 1;
    if ((v1 & 0x3007) != 0)
    {
      v4 = __rev16(v1 & 0x3007);
      if ((v1 & 0xC00000) == 0x800000)
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      if (v4 <= 0x400)
      {
        return v5;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    return 1;
  }

  return result;
}

void *protocol witness for _UnicodeParser.parseScalar<A>(from:) in conformance Unicode.UTF8.ForwardParser@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(v4 + 4);
  if (*(v4 + 4))
  {
    v14 = *v4;
    if ((*v4 & 0x80) == 0)
    {
      lazy protocol witness table accessor for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser(a1, a2, a3);
      v19 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      result = (v19)(v20, 0);
      v13 = 0;
      v12 = (v14 + 1);
      goto LABEL_31;
    }

    v10 = *(a3 + 16);
    result = v10(v20, a2, a3);
  }

  else
  {
    v10 = *(a3 + 16);
    result = v10(v20, a2, a3);
    if ((v20[0] & 0x100) != 0)
    {
      v12 = 0;
      v13 = 2;
      goto LABEL_31;
    }

    if ((v20[0] & 0x80) == 0)
    {
      v13 = 0;
      v12 = LOBYTE(v20[0]) + 1;
      goto LABEL_31;
    }

    v14 = *v4 & 0xFFFFFF00 | LOBYTE(v20[0]);
    *v4 = v14;
    v9 = 8;
    *(v4 + 4) = 8;
    result = v10(v20, a2, a3);
  }

  if ((v20[0] & 0x100) != 0)
  {
    v15 = v9;
  }

  else
  {
    if (v9 > 0x1F)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v14 = (LOBYTE(v20[0]) << v9) | ((-255 << v9) - 1) & v14;
    *v4 = v14;
    v15 = v9 + 8;
    *(v4 + 4) = v9 + 8;
    if (v9 <= 0x17)
    {
      result = v10(v20, a2, a3);
      if ((v20[0] & 0x100) == 0)
      {
        v14 = (LOBYTE(v20[0]) << v15) | ((-65280 << v9) - 1) & v14;
        *v4 = v14;
        v15 = v9 + 16;
        *(v4 + 4) = v9 + 16;
        if (v9 <= 0xF)
        {
          result = v10(v20, a2, a3);
          if ((v20[0] & 0x100) == 0)
          {
            v14 = (LOBYTE(v20[0]) << v15) | ((-16711680 << v9) - 1) & v14;
            *v4 = v14;
            v15 = v9 + 24;
            *(v4 + 4) = v9 + 24;
            if (v9 <= 7)
            {
              result = v10(v20, a2, a3);
              if ((v20[0] & 0x100) == 0)
              {
                v14 = (LOBYTE(v20[0]) << v15) | ((0x1000000 << v9) - 1) & v14;
                *v4 = v14;
                v15 = v9 | 0x20;
                *(v4 + 4) = v9 | 0x20;
              }
            }
          }
        }
      }
    }
  }

  if ((v14 & 0xC0E0) == 0x80C0)
  {
    if ((v14 & 0x1E) != 0)
    {
      v16 = 16;
LABEL_20:
      v13 = 0;
      *v4 = v14 >> v16;
      *(v4 + 4) = v15 - v16;
      v12 = ((1 << (v16 >> 1) << (v16 >> 1)) - 1) & (v14 + 16843009);
      goto LABEL_31;
    }
  }

  else if ((v14 & 0xC0C0F0) == 0x8080E0)
  {
    if ((v14 & 0x200F) != 0 && (v14 & 0x200F) != 0x200D)
    {
      v16 = 24;
      goto LABEL_20;
    }
  }

  else if ((v14 & 0xC0C0C0F8) == 0x808080F0 && (v14 & 0x3007) != 0 && __rev16(v14 & 0x3007) <= 0x400)
  {
    v16 = 32;
    goto LABEL_20;
  }

  v17 = Unicode.UTF8.ForwardParser._invalidLength()();
  v18 = 8 * v17;
  *v5 = v14 >> (8 * (v17 & 0x1F));
  *(v5 + 4) = v15 - 8 * v17;
  result = specialized numericCast<A, B>(_:)(8uLL);
  if (!result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = 1;
  v12 = v18 / result;
LABEL_31:
  *a4 = v12;
  *(a4 + 8) = v13;
  return result;
}

uint64_t protocol witness for _UTFParser._parseMultipleCodeUnits() in conformance Unicode.UTF8.ForwardParser()
{
  v1 = *v0;
  if ((*v0 & 0xC0E0) != 0x80C0)
  {
    if ((v1 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v1 & 0x200F) != 0 && (*v0 & 0x200F) != 0x200D)
      {
        v2 = 24;
        v3 = 1;
        return v3 | (v2 << 8);
      }
    }

    else if ((v1 & 0xC0C0C0F8) == 0x808080F0 && (v1 & 0x3007) != 0 && __rev16(*v0 & 0x3007) <= 0x400)
    {
      v2 = 32;
      v3 = 1;
      return v3 | (v2 << 8);
    }

LABEL_12:
    v4 = Unicode.UTF8.ForwardParser._invalidLength()();
    v3 = 0;
    v2 = 8 * v4;
    return v3 | (v2 << 8);
  }

  if ((v1 & 0x1E) == 0)
  {
    goto LABEL_12;
  }

  v2 = 16;
  v3 = 1;
  return v3 | (v2 << 8);
}

uint64_t _ss7UnicodeO4UTF8O13ReverseParserVs10_UTFParserssAGP7_buffers11_UIntBufferVy8Encoding_8CodeUnitQZGvsTW_0(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result);
  return result;
}

uint64_t Unicode.UTF8.ValidationError.byteOffsets.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

void Unicode.UTF8.ValidationError.hash(into:)(int a1, Swift::UInt8 a2, Swift::UInt a3, Swift::UInt a4)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
}

Swift::Int Unicode.UTF8.ValidationError.hashValue.getter(Swift::UInt8 a1, Swift::UInt a2, Swift::UInt a3)
{
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Error._code.getter in conformance Unicode.UTF8.ValidationError(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t, uint64_t))
{
  v5[0] = *v3;
  v6 = *(v3 + 8);
  return a3(v5, a1, a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Unicode.UTF8.ValidationError()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  specialized Hasher.init(_seed:)(0, v5);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Unicode.UTF8.ValidationError()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Unicode.UTF8.ValidationError(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *v1;
  specialized Hasher.init(_seed:)(a1, v6);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Unicode.UTF8.ValidationError(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
}

unsigned __int8 *protocol witness for RawRepresentable.init(rawValue:) in conformance Unicode.UTF8.ValidationError.Kind@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 4;
  if (v2 > 4)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

unint64_t Unicode.UTF8.ValidationError.Kind.description.getter(unsigned __int8 a1)
{
  result = 0xD000000000000010;
  if (a1 <= 1u)
  {
    if (a1)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    switch(a1)
    {
      case 2u:
        return 0xD000000000000021;
      case 4u:
        break;
      case 3u:
        return 0xD000000000000015;
      default:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0x6168636165726E75, 0xEB00000000656C62, "Swift/UTF8EncodingError.swift", 0x1DuLL, 2, 0xC7uLL, 0);
    }
  }

  return result;
}

unint64_t Unicode.UTF8.ValidationError.description.getter(unsigned __int8 a1, unint64_t a2, Swift::Int a3)
{
  v6 = _StringGuts.init(_initialCapacity:)(28);
  v8 = v6;
  v9 = v7;
  v200 = v6;
  v201 = v7;
  v10 = "UTF8.ValidationError(";
  v11 = 0x800000018066E670 | 0x8000000000000000;
  v12 = HIBYTE(v7) & 0xF;
  v13 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v14 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 && (v6 & ~v7 & 0x2000000000000000) == 0)
  {
    v7;
    v200 = 0xD000000000000015;
    v201 = 0x800000018066E670 | 0x8000000000000000;
    goto LABEL_84;
  }

  v196 = a1;
  v197 = a2;
  v15 = 0x800000018066E670 & 0x2000000000000000;
  a2 = (0x800000018066E670 >> 56) & 0xF;
  if ((0x800000018066E670 & 0x2000000000000000 & v7) != 0)
  {
    v16 = v12 + a2;
    if (v12 + a2 <= 0xF)
    {
      if (a2)
      {
        v38 = 0;
        v39 = 0;
        v40 = 8 * v12;
        v41 = 8 * a2;
        v42 = v7;
        a2 = v197;
        do
        {
          v43 = v11 >> (v38 & 0x38);
          if (v39 < 8)
          {
            v43 = 0xD000000000000015 >> v38;
          }

          v44 = (v43 << (v40 & 0x38)) | ((-255 << (v40 & 0x38)) - 1) & v42;
          v45 = (v43 << v40) | ((-255 << v40) - 1) & v8;
          if (v12 <= 7)
          {
            v8 = v45;
          }

          else
          {
            v42 = v44;
          }

          ++v12;
          v40 += 8;
          v38 += 8;
          ++v39;
        }

        while (v41 != v38);
      }

      else
      {
        v42 = v7;
        a2 = v197;
      }

      v7;
      0x800000018066E670 | 0x8000000000000000;
      v72 = 0xA000000000000000;
      if (!(v8 & 0x8080808080808080 | v42 & 0x80808080808080))
      {
        v72 = 0xE000000000000000;
      }

      v200 = v8;
      v201 = v72 & 0xFF00000000000000 | (v16 << 56) | v42 & 0xFFFFFFFFFFFFFFLL;
      a1 = v196;
      goto LABEL_84;
    }
  }

  v195 = a3;
  if (v15)
  {
    v17 = (0x800000018066E670 >> 56) & 0xF;
  }

  else
  {
    v17 = 21;
  }

  if ((0x800000018066E670 & 0x1000000000000000) == 0)
  {
    0x800000018066E670 | 0x8000000000000000;
    a3 = v17;
    if ((v9 & 0x1000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_231:
    v167 = String.UTF8View._foreignCount()();
    v20 = v167 + a3;
    if (!__OFADD__(v167, a3))
    {
      goto LABEL_14;
    }

LABEL_233:
    __break(1u);
    goto LABEL_234;
  }

  swift_bridgeObjectRetain_n(0x800000018066E670 | 0x8000000000000000, 2);
  v163._rawBits = 1;
  v164._rawBits = (v17 << 16) | 1;
  v165._rawBits = _StringGuts.validateScalarRange(_:)(v163, v164, 0xD000000000000015, 0x800000018066E670 | 0x8000000000000000)._rawBits;
  if (v165._rawBits < 0x10000)
  {
    v165._rawBits |= 3;
  }

  a3 = String.UTF8View.distance(from:to:)(v165, v166);
  0x800000018066E670 | 0x8000000000000000;
  if ((v9 & 0x1000000000000000) != 0)
  {
    goto LABEL_231;
  }

LABEL_13:
  v19 = __OFADD__(v14, a3);
  v20 = v14 + a3;
  if (v19)
  {
    goto LABEL_233;
  }

LABEL_14:
  v194 = v17;
  v21 = v8 & ~v9;
  if ((v21 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v9 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v20 > 15)
    {
      goto LABEL_25;
    }

    if ((v9 & 0x2000000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

  v22 = _StringGuts.nativeUnusedCapacity.getter(v8, v9);
  if (v23)
  {
    goto LABEL_266;
  }

  if (v20 > 15)
  {
LABEL_25:
    v27 = v21 & 0x2000000000000000;
    v28 = _StringGuts.nativeUnusedCapacity.getter(v8, v9);
    if ((v29 & 1) != 0 || v28 < a3)
    {
      a3 = v195;
      if (v27)
      {
        swift_isUniquelyReferenced_nonNull_native(v9 & 0xFFFFFFFFFFFFFFFLL);
      }

      v30 = _StringGuts.nativeCapacity.getter(v8, v9);
      if (v32)
      {
        v33 = 0;
      }

      else
      {
        v33 = v30;
      }

      if (v33 + 0x4000000000000000 < 0)
      {
        __break(1u);
        goto LABEL_249;
      }

      v34 = 2 * v33;
      if (v34 > v20)
      {
        v20 = v34;
      }
    }

    else
    {
      a3 = v195;
      if (v27)
      {
        a1 = v196;
        if (swift_isUniquelyReferenced_nonNull_native(v9 & 0xFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    a1 = v196;
LABEL_36:
    _StringGuts.grow(_:)(v20);
LABEL_37:
    if ((0x800000018066E670 & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(0xD000000000000015, 0x800000018066E670 | 0x8000000000000000, 0, v194);
    }

    else
    {
      if (v15)
      {
        v35 = (0x800000018066E670 >> 62) & 1;
        *&v199 = 0xD000000000000015;
        *(&v199 + 1) = 0x800000018066E670 & 0xFFFFFFFFFFFFF0;
        v36 = &v199;
        v37 = (0x800000018066E670 >> 56) & 0xF;
      }

      else
      {
        v36 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, 21, (0x800000018066E670 & 0xFFFFFFFFFFFFFF0) + 32, 21);
        LOBYTE(v35) = 1;
      }

      closure #1 in _StringGuts.append(_:)(v36, v37, &v200, v35);
    }

    swift_bridgeObjectRelease_n(0x800000018066E670 | 0x8000000000000000, 2);
    a2 = v197;
    goto LABEL_84;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
LABEL_50:
    v26 = v9;
    goto LABEL_51;
  }

  if (v22 >= a3)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v9 & 0x1000000000000000) == 0)
  {
    v24 = v194;
    if ((v8 & 0x1000000000000000) != 0)
    {
      v25 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v25 = _StringObject.sharedUTF8.getter(v8, v9);
      v13 = v182;
    }

    closure #1 in _StringGuts._convertedToSmall()(v25, v13, &v199, v18);
    v26 = *(&v199 + 1);
    v8 = v199;
    goto LABEL_52;
  }

  v8 = _StringGuts._foreignConvertedToSmall()(v8, v9);
  v26 = v161;
LABEL_51:
  v24 = v194;
LABEL_52:
  v46 = 0xD000000000000015;
  0x800000018066E670 | 0x8000000000000000;
  v47._rawBits = 1;
  v48._rawBits = (v24 << 16) | 1;
  v49._rawBits = _StringGuts.validateScalarRange(_:)(v47, v48, 0xD000000000000015, 0x800000018066E670 | 0x8000000000000000)._rawBits;
  if (v49._rawBits < 0x10000)
  {
    v49._rawBits |= 3;
  }

  if (v49._rawBits >> 16 || v50._rawBits >> 16 != v24)
  {
    v46 = specialized static String._copying(_:)(v49._rawBits, v50, 0xD000000000000015, 0x800000018066E670 | 0x8000000000000000);
    v52 = v61;
    0x800000018066E670 | 0x8000000000000000;
  }

  else
  {
    v52 = 0x800000018066E670 | 0x8000000000000000;
  }

  if ((v52 & 0x2000000000000000) != 0)
  {
    v52;
  }

  else if ((v52 & 0x1000000000000000) != 0)
  {
    v46 = _StringGuts._foreignConvertedToSmall()(v46, v52);
    v187 = v186;
    v52;
    v52 = v187;
  }

  else
  {
    if ((v46 & 0x1000000000000000) != 0)
    {
      v172 = ((v52 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v173 = v46 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v172 = _StringObject.sharedUTF8.getter(v46, v52);
    }

    closure #1 in _StringGuts._convertedToSmall()(v172, v173, &v199, v51);
    v52;
    v52 = *(&v199 + 1);
    v46 = v199;
  }

  v62 = HIBYTE(v26) & 0xF;
  v63 = HIBYTE(v52) & 0xF;
  v64 = v63 + v62;
  if (v63 + v62 > 0xF)
  {
    goto LABEL_266;
  }

  0x800000018066E670 | 0x8000000000000000;
  if (v63)
  {
    v65 = 0;
    v66 = 0;
    v67 = 8 * v62;
    do
    {
      v68 = v52 >> (v65 & 0x38);
      if (v66 < 8)
      {
        v68 = v46 >> v65;
      }

      v69 = (v68 << (v67 & 0x38)) | ((-255 << (v67 & 0x38)) - 1) & v26;
      v70 = (v68 << v67) | ((-255 << v67) - 1) & v8;
      if (v62 <= 7)
      {
        v8 = v70;
      }

      else
      {
        v26 = v69;
      }

      ++v62;
      v67 += 8;
      v65 += 8;
      ++v66;
    }

    while (8 * v63 != v65);
  }

  v9;
  0x800000018066E670 | 0x8000000000000000;
  v71 = 0xA000000000000000;
  if (!(v8 & 0x8080808080808080 | v26 & 0x80808080808080))
  {
    v71 = 0xE000000000000000;
  }

  v200 = v8;
  v201 = v71 & 0xFF00000000000000 | (v64 << 56) | v26 & 0xFFFFFFFFFFFFFFLL;
  a3 = v195;
  a2 = v197;
  a1 = v196;
LABEL_84:
  specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(a1, v53, v54, v55, v56, v57, v58, v59, v60);
  v9 = v200;
  v11 = v201;
  v10 = HIBYTE(v201) & 0xF;
  v15 = v200 & 0xFFFFFFFFFFFFLL;
  if ((v201 & 0x2000000000000000) != 0)
  {
    v73 = HIBYTE(v201) & 0xF;
  }

  else
  {
    v73 = v200 & 0xFFFFFFFFFFFFLL;
  }

  if (!v73 && (v200 & ~v201 & 0x2000000000000000) == 0)
  {
    v201;
    v9 = 8236;
    v86 = 0xE200000000000000;
LABEL_126:
    v200 = v9;
    v201 = v86;
    goto LABEL_127;
  }

  if ((v201 & 0x2000000000000000) != 0 && v10 <= 0xD)
  {
    v74 = 8 * (HIBYTE(v201) & 7);
    v75 = (-255 << v74) - 1;
    v76 = 44 << v74;
    v77 = v10 + 1;
    if (v10 >= 8)
    {
      v79 = v75 & v201 | v76;
      v78 = 8 * (v77 & 7);
    }

    else
    {
      v9 = v75 & v200 | v76;
      if (v10 != 7)
      {
        v9 = ((-255 << (8 * (v77 & 7u))) - 1) & v9 | (32 << (8 * (v77 & 7u)));
        v87 = v201;
        goto LABEL_123;
      }

      v78 = 0;
      v79 = v201;
    }

    v87 = ((-255 << v78) - 1) & v79 | (32 << v78);
LABEL_123:
    v201;
    0xE200000000000000;
    v99 = 0xA000000000000000;
    if (!(v9 & 0x8080808080808080 | v87 & 0x80808080808080))
    {
      v99 = 0xE000000000000000;
    }

    v86 = (v99 & 0xFF00000000000000 | (v10 << 56) | v87 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    goto LABEL_126;
  }

  0xE200000000000000;
  if ((v11 & 0x1000000000000000) != 0)
  {
LABEL_234:
    v168 = String.UTF8View._foreignCount()();
    v27 = v168 + 2;
    if (!__OFADD__(v168, 2))
    {
      goto LABEL_96;
    }

LABEL_236:
    __break(1u);
    goto LABEL_237;
  }

  v19 = __OFADD__(v73, 2);
  v27 = v73 + 2;
  if (v19)
  {
    goto LABEL_236;
  }

LABEL_96:
  if ((v9 & ~v11 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
  {
    v81 = _StringGuts.nativeUnusedCapacity.getter(v9, v11);
    if (v82)
    {
      goto LABEL_266;
    }

    if (v27 > 15)
    {
      goto LABEL_107;
    }

    if ((v11 & 0x2000000000000000) == 0)
    {
      if (v81 < 2)
      {
        goto LABEL_102;
      }

LABEL_107:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v27, 2);
      v199 = xmmword_18071DB40;
      closure #1 in _StringGuts.append(_:)(&v199, 2uLL, &v200, 1);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      v9 = v200;
      v86 = v201;
      goto LABEL_127;
    }
  }

  else
  {
    if (v27 > 15)
    {
      goto LABEL_107;
    }

    if ((v11 & 0x2000000000000000) == 0)
    {
LABEL_102:
      if ((v11 & 0x1000000000000000) != 0)
      {
        v84 = a3;
        v9 = _StringGuts._foreignConvertedToSmall()(v9, v11);
        v85 = v162;
      }

      else
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          v83 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v83 = _StringObject.sharedUTF8.getter(v9, v11);
          v15 = v183;
        }

        v84 = a3;
        closure #1 in _StringGuts._convertedToSmall()(v83, v15, &v199, v80);
        v85 = *(&v199 + 1);
        v9 = v199;
      }

      goto LABEL_112;
    }
  }

  v84 = a3;
  v85 = v11;
LABEL_112:
  v88 = 0xE200000000000000;
  0xE200000000000000;
  v89 = 8236;
  v90._rawBits = 131073;
  v91._rawBits = 1;
  v92._rawBits = _StringGuts.validateScalarRange(_:)(v91, v90, 0x202CuLL, 0xE200000000000000)._rawBits;
  if (v92._rawBits < 0x10000)
  {
    v92._rawBits |= 3;
  }

  if (v92._rawBits >> 16 || (v93._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000)
  {
    v89 = specialized static String._copying(_:)(v92._rawBits, v93, 0x202CuLL, 0xE200000000000000);
    v88 = v95;
    0xE200000000000000;
  }

  if ((v88 & 0x2000000000000000) != 0)
  {
    v88;
  }

  else if ((v88 & 0x1000000000000000) != 0)
  {
    v89 = _StringGuts._foreignConvertedToSmall()(v89, v88);
    v193 = v192;
    v88;
    v88 = v193;
  }

  else
  {
    if ((v89 & 0x1000000000000000) != 0)
    {
      v177 = ((v88 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v178 = v89 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v177 = _StringObject.sharedUTF8.getter(v89, v88);
    }

    closure #1 in _StringGuts._convertedToSmall()(v177, v178, &v199, v94);
    v88;
    v88 = *(&v199 + 1);
    v89 = v199;
  }

  v96 = specialized _SmallString.init(_:appending:)(v9, v85, v89, v88);
  if (v98)
  {
    goto LABEL_266;
  }

  v9 = v96;
  v86 = v97;
  v11;
  swift_bridgeObjectRelease_n(0xE200000000000000, 2);
  v200 = v9;
  v201 = v86;
  a3 = v84;
LABEL_127:
  v100 = specialized Range.description.getter(a2, a3);
  v10 = v100;
  v27 = v101;
  v102 = HIBYTE(v86) & 0xF;
  v8 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v86 & 0x2000000000000000) != 0)
  {
    v103 = HIBYTE(v86) & 0xF;
  }

  else
  {
    v103 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v103 && (v9 & ~v86 & 0x2000000000000000) == 0)
  {
    v86;
    v200 = v10;
    v201 = v27;
    goto LABEL_195;
  }

  v104 = (v101 & 0x2000000000000000) == 0;
  v105 = HIBYTE(v101) & 0xF;
  if ((v86 & 0x2000000000000000) == 0)
  {
    v106 = v100 & 0xFFFFFFFFFFFFLL;
    v107 = HIBYTE(v101) & 0xF;
    if ((v101 & 0x2000000000000000) != 0)
    {
LABEL_138:
      v198 = v106;
      if ((v101 & 0x1000000000000000) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_166;
    }

LABEL_137:
    v107 = v106;
    goto LABEL_138;
  }

  if ((v101 & 0x2000000000000000) == 0)
  {
    v106 = v100 & 0xFFFFFFFFFFFFLL;
    v104 = 1;
    goto LABEL_137;
  }

  v124 = v102 + v105;
  if (v102 + v105 < 0x10)
  {
    if (v105)
    {
      v136 = 0;
      v137 = 0;
      v138 = 8 * v102;
      v8 = v86;
      do
      {
        v139 = v101 >> (v136 & 0x38);
        if (v137 < 8)
        {
          v139 = v100 >> v136;
        }

        v140 = (v139 << (v138 & 0x38)) | ((-255 << (v138 & 0x38)) - 1) & v8;
        v141 = (v139 << v138) | ((-255 << v138) - 1) & v9;
        if (v102 <= 7)
        {
          v9 = v141;
        }

        else
        {
          v8 = v140;
        }

        ++v102;
        v138 += 8;
        v136 += 8;
        ++v137;
      }

      while (8 * v105 != v136);
    }

    else
    {
      v8 = v86;
    }

    v86;
    v27;
    v142 = 0xA000000000000000;
    if (!(v9 & 0x8080808080808080 | v8 & 0x80808080808080))
    {
      v142 = 0xE000000000000000;
    }

    v200 = v9;
    v201 = v142 & 0xFF00000000000000 | (v124 << 56) | v8 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_195;
  }

  v104 = 0;
  v107 = HIBYTE(v101) & 0xF;
  v198 = v100 & 0xFFFFFFFFFFFFLL;
  if ((v101 & 0x1000000000000000) == 0)
  {
LABEL_139:
    v101;
    v109 = v107;
    if ((v86 & 0x1000000000000000) == 0)
    {
      goto LABEL_140;
    }

LABEL_169:
    v129 = String.UTF8View._foreignCount()();
    v110 = v129 + v109;
    if (!__OFADD__(v129, v109))
    {
      goto LABEL_141;
    }

LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

LABEL_166:
  swift_bridgeObjectRetain_n(v101, 2);
  v125._rawBits = 1;
  v126._rawBits = (v107 << 16) | 1;
  v127._rawBits = _StringGuts.validateScalarRange(_:)(v125, v126, v10, v27)._rawBits;
  if (v127._rawBits < 0x10000)
  {
    v127._rawBits |= 3;
  }

  v109 = String.UTF8View.distance(from:to:)(v127, v128);
  v27;
  if ((v86 & 0x1000000000000000) != 0)
  {
    goto LABEL_169;
  }

LABEL_140:
  v19 = __OFADD__(v103, v109);
  v110 = v103 + v109;
  if (v19)
  {
    goto LABEL_171;
  }

LABEL_141:
  if ((v9 & ~v86 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v86 & 0xFFFFFFFFFFFFFFFLL))
  {
    v111 = _StringGuts.nativeUnusedCapacity.getter(v9, v86);
    if (v112)
    {
      goto LABEL_266;
    }

    if (v110 > 15)
    {
      goto LABEL_152;
    }

    if ((v86 & 0x2000000000000000) == 0)
    {
      if (v111 < v109)
      {
        goto LABEL_147;
      }

LABEL_152:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v110, v109);
      if ((v27 & 0x1000000000000000) == 0)
      {
        if (v104)
        {
          if ((v10 & 0x1000000000000000) != 0)
          {
            v114 = (v27 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v115 = v198;
            v116 = v198;
          }

          else
          {
            v179 = _StringObject.sharedUTF8.getter(v10, v27);
            if (v180 < v198)
            {
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v114 = v179;
            v116 = v180;
            v115 = v198;
          }

          v117 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v115, v114, v116);
          v119 = v10 >> 63;
        }

        else
        {
          v119 = (v27 >> 62) & 1;
          *&v199 = v10;
          *(&v199 + 1) = v27 & 0xFFFFFFFFFFFFFFLL;
          v117 = &v199;
          v118 = HIBYTE(v27) & 0xF;
        }

        closure #1 in _StringGuts.append(_:)(v117, v118, &v200, v119);
        goto LABEL_190;
      }

LABEL_172:
      _StringGuts._foreignAppendInPlace(_:)(v10, v27, 0, v107);
LABEL_190:
      swift_bridgeObjectRelease_n(v27, 2);
      goto LABEL_195;
    }
  }

  else
  {
    if (v110 > 15)
    {
      goto LABEL_152;
    }

    if ((v86 & 0x2000000000000000) == 0)
    {
LABEL_147:
      if ((v86 & 0x1000000000000000) != 0)
      {
        v9 = _StringGuts._foreignConvertedToSmall()(v9, v86);
        v8 = v160;
      }

      else
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          v113 = ((v86 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v113 = _StringObject.sharedUTF8.getter(v9, v86);
          v8 = v181;
        }

        closure #1 in _StringGuts._convertedToSmall()(v113, v8, &v199, v108);
        v8 = *(&v199 + 1);
        v9 = v199;
      }

      goto LABEL_159;
    }
  }

  v8 = v86;
LABEL_159:
  v27;
  v120._rawBits = 1;
  v121._rawBits = (v107 << 16) | 1;
  v122._rawBits = _StringGuts.validateScalarRange(_:)(v120, v121, v10, v27)._rawBits;
  if (v122._rawBits < 0x10000)
  {
    v122._rawBits |= 3;
  }

  if (v122._rawBits >> 16 || v123._rawBits >> 16 != v107)
  {
    v10 = specialized static String._copying(_:)(v122._rawBits, v123, v10, v27);
    v11 = v130;
    v27;
  }

  else
  {
    v11 = v27;
  }

  if ((v11 & 0x2000000000000000) == 0)
  {
    goto LABEL_240;
  }

  v11;
  while (1)
  {
    v131 = specialized _SmallString.init(_:appending:)(v9, v8, v10, v11);
    if (v133)
    {
      goto LABEL_266;
    }

    v134 = v131;
    v135 = v132;
    v86;
    swift_bridgeObjectRelease_n(v27, 2);
    v200 = v134;
    v201 = v135;
LABEL_195:
    v9 = v200;
    v27 = v201;
    v11 = HIBYTE(v201) & 0xF;
    v10 = v200 & 0xFFFFFFFFFFFFLL;
    if ((v201 & 0x2000000000000000) != 0)
    {
      v143 = HIBYTE(v201) & 0xF;
    }

    else
    {
      v143 = v200 & 0xFFFFFFFFFFFFLL;
    }

    if (!v143 && (v200 & ~v201 & 0x2000000000000000) == 0)
    {
      v201;
      return 41;
    }

    if (v11 != 15 && (v201 & 0x2000000000000000) != 0)
    {
      break;
    }

    0xE100000000000000;
    if ((v27 & 0x1000000000000000) != 0)
    {
LABEL_237:
      v169 = String.UTF8View._foreignCount()();
      v86 = v169 + 1;
      if (!__OFADD__(v169, 1))
      {
LABEL_207:
        if ((v9 & ~v27 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v27 & 0xFFFFFFFFFFFFFFFLL))
        {
          v145 = _StringGuts.nativeUnusedCapacity.getter(v9, v27);
          if (v146)
          {
            goto LABEL_266;
          }

          v147 = (v27 >> 61) & 1;
          if (v145 < 1)
          {
            LODWORD(v147) = 1;
          }

          if (v86 <= 15 && v147)
          {
LABEL_214:
            if ((v27 & 0x2000000000000000) != 0)
            {
              v148 = v27;
LABEL_216:
              0xE100000000000000;
              v149._rawBits = 1;
              v150._rawBits = 65537;
              v151._rawBits = _StringGuts.validateScalarRange(_:)(v149, v150, 0x29uLL, 0xE100000000000000)._rawBits;
              if (v151._rawBits < 0x10000)
              {
                v151._rawBits |= 3;
              }

              v153 = Substring.description.getter(v151._rawBits, v152, 0x29uLL, 0xE100000000000000);
              v155 = v154;
              0xE100000000000000;
              if ((v155 & 0x2000000000000000) != 0)
              {
                v155;
              }

              else if ((v155 & 0x1000000000000000) != 0)
              {
                v153 = _StringGuts._foreignConvertedToSmall()(v153, v155);
                v190 = v189;
                v155;
                v155 = v190;
              }

              else
              {
                if ((v153 & 0x1000000000000000) != 0)
                {
                  v175 = ((v155 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v176 = v153 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v175 = _StringObject.sharedUTF8.getter(v153, v155);
                }

                closure #1 in _StringGuts._convertedToSmall()(v175, v176, &v199, v156);
                v155;
                v155 = *(&v199 + 1);
                v153 = v199;
              }

              v157 = specialized _SmallString.init(_:appending:)(v9, v148, v153, v155);
              if ((v158 & 1) == 0)
              {
                v159 = v157;
                v27;
                swift_bridgeObjectRelease_n(0xE100000000000000, 2);
                return v159;
              }

LABEL_266:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_249:
            if ((v27 & 0x1000000000000000) != 0)
            {
              v9 = _StringGuts._foreignConvertedToSmall()(v9, v27);
              v148 = v188;
            }

            else
            {
              if ((v9 & 0x1000000000000000) != 0)
              {
                v174 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v174 = _StringObject.sharedUTF8.getter(v9, v27);
                v10 = v191;
              }

              closure #1 in _StringGuts._convertedToSmall()(v174, v10, &v199, v31);
              v148 = *(&v199 + 1);
              v9 = v199;
            }

            goto LABEL_216;
          }
        }

        else if (v86 <= 15)
        {
          goto LABEL_214;
        }

        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v86, 1);
        v199 = xmmword_18071DC90;
        closure #1 in _StringGuts.append(_:)(&v199, 1uLL, &v200, 1);
        swift_bridgeObjectRelease_n(0xE100000000000000, 2);
        return v200;
      }
    }

    else
    {
      v19 = __OFADD__(v143, 1);
      v86 = v143 + 1;
      if (!v19)
      {
        goto LABEL_207;
      }
    }

    __break(1u);
LABEL_240:
    if ((v11 & 0x1000000000000000) != 0)
    {
      v10 = _StringGuts._foreignConvertedToSmall()(v10, v11);
      v185 = v184;
      v11;
      v11 = v185;
    }

    else
    {
      if ((v10 & 0x1000000000000000) != 0)
      {
        v170 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v171 = v10 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v170 = _StringObject.sharedUTF8.getter(v10, v11);
      }

      closure #1 in _StringGuts._convertedToSmall()(v170, v171, &v199, v31);
      v11;
      v11 = *(&v199 + 1);
      v10 = v199;
    }
  }

  if (v11 < 8)
  {
    v9 = ((-255 << (8 * (HIBYTE(v201) & 7u))) - 1) & v200 | (41 << (8 * (HIBYTE(v201) & 7u)));
  }

  v201;
  0xE100000000000000;
  return v9;
}