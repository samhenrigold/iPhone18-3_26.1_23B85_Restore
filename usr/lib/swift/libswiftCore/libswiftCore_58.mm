uint64_t UnsafeMutableRawBufferPointer.subscript.getter()
{
  return 0;
}

{
  return 0;
}

void (*UnsafeMutableRawBufferPointer.subscript.modify(void *a1))()
{
  *a1 = 0;
  a1[1] = 0;
  return _swift_displayCrashMessage;
}

{
  *a1 = 0;
  a1[1] = 0;
  return _swift_displayCrashMessage;
}

Swift::UInt8_optional __swiftcall UnsafeRawBufferPointer.Iterator.next()()
{
  v1 = *v0;
  if (!*v0)
  {
    goto LABEL_4;
  }

  v2 = v0[1];
  if (!v2)
  {
LABEL_8:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v1 != v2)
  {
    if (v1 < v2)
    {
      v4 = 0;
      v3 = *v1;
      *v0 = v1 + 1;
      return (v3 | (v4 << 8));
    }

    goto LABEL_8;
  }

LABEL_4:
  v3 = 0;
  v4 = 1;
  return (v3 | (v4 << 8));
}

Swift::UInt8_optional protocol witness for IteratorProtocol.next() in conformance UnsafeRawBufferPointer.Iterator@<W0>(Swift::UInt8 *a1@<X8>)
{
  result = UnsafeRawBufferPointer.Iterator.next()();
  *a1 = result.value;
  a1[1] = result.is_nil;
  return result;
}

char *UnsafeRawBufferPointer._copyContents(initializing:)(void *a1, int64_t a2, char *__src, unint64_t a4)
{
  if (__src && a4 && a4 > __src && a2)
  {
    if ((a4 - __src) >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = a4 - __src;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v5 = __src;
    memmove(a1, __src, v4);
    return &v5[v4];
  }

  return __src;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance UnsafeMutableRawBufferPointer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, void))
{
  *a1 = (a6)(a2, a3, *v6, v6[1], a5);
  a1[1] = v8;
  return v9;
}

void *UnsafeMutableRawBufferPointer.withContiguousStorageIfAvailable<A>(_:)@<X0>(void *(*a1)(void *__return_ptr, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  if (a2)
  {
    if (a3 - a2 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    result = a1(a5, a2, a3 - a2);
    if (!v5)
    {
      return (*(*(a4 - 8) + 56))(a5, 0, 1, a4);
    }
  }

  else
  {
    result = (a1)(a5, 0, 0, 0, a3);
    if (!v5)
    {
      return (*(*(a4 - 8) + 56))(a5, 0, 1, a4);
    }
  }

  return result;
}

uint64_t UnsafeMutableRawBufferPointer.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    goto LABEL_6;
  }

  if (a3)
  {
    if (a4 - a3 >= a2)
    {
      return result;
    }

LABEL_6:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 >= 1)
  {
    goto LABEL_6;
  }

  return result;
}

void _sSwSlsSl8endIndex0B0QzvgTW_0(void *a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    v2 = v1[1] - v2;
  }

  *a1 = v2;
}

uint64_t protocol witness for Collection.subscript.getter in conformance UnsafeMutableRawBufferPointer@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], *v3, v3[1]);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

uint64_t _sSwSlsSl7indices7IndicesQzvgTW_0@<X0>(void *a1@<X8>)
{
  result = UnsafeRawBufferPointer.indices.getter();
  *a1 = 0;
  a1[1] = v3;
  return result;
}

uint64_t _sSwSlsSl5index5after5IndexQzAD_tFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v2, v2[1]);
  *a2 = result;
  return result;
}

uint64_t _sSwSlsSl9formIndex5aftery0B0Qzz_tFTW_0(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v1, v1[1]);
  *a1 = result;
  return result;
}

uint64_t _sSwSKsSK5index6before5IndexQzAD_tFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v2, v2[1]);
  *a2 = result;
  return result;
}

uint64_t _sSwSKsSK9formIndex6beforey0B0Qzz_tFTW_0(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v1, v1[1]);
  *a1 = result;
  return result;
}

Swift::Void __swiftcall UnsafeRawBufferPointer.deallocate()()
{
  if (v0)
  {
    v0;
  }
}

Swift::UnsafeRawBufferPointer __swiftcall UnsafeRawBufferPointer.init(_:)(Swift::UnsafeRawBufferPointer result)
{
  if (!result._position.value._rawValue)
  {
    result._end.value._rawValue = 0;
  }

  return result;
}

unint64_t UnsafeRawBufferPointer.debugDescription.getter(unint64_t a1, uint64_t a2)
{
  v7 = _StringGuts.init(_initialCapacity:)(22);
  i = v7;
  object = v8;
  v234._countAndFlagsBits = v7;
  v234._object = v8;
  v11 = HIBYTE(v8) & 0xF;
  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 || (v7 & ~v8 & 0x2000000000000000) != 0)
  {
    if ((v8 & 0x2000000000000000) == 0 || v11 > 7)
    {
      0xE800000000000000;
      if ((object & 0x1000000000000000) != 0)
      {
        goto LABEL_278;
      }

      v22 = v13 + 8;
      if (!__OFADD__(v13, 8))
      {
        goto LABEL_13;
      }

LABEL_280:
      __break(1u);
      goto LABEL_281;
    }

    v14 = 8 * HIBYTE(v8);
    v15 = ((-255 << (v14 & 0x38)) - 1) & v7 | (40 << (v14 & 0x38));
    v16 = (v14 + 8) & 0x38;
    v17 = (-255 << v16) - 1;
    v18 = 115 << v16;
    if (v11 >= 7)
    {
      v20 = v17 & v8 | v18;
      v19 = 8;
    }

    else
    {
      v15 = v17 & v15 | v18;
      if (v11 != 6)
      {
        v15 = ((-255 << ((v14 + 16) & 0x38)) - 1) & v15 | (116 << ((v14 + 16) & 0x38));
        if (v11 < 5)
        {
          v15 = ((-255 << ((v14 + 24) & 0x38)) - 1) & v15 | (97 << ((v14 + 24) & 0x38));
          if (v11 != 4)
          {
            v15 = ((0xFFFFFF0100000000 << (8 * v11)) - 1) & v15 | (0x7200000000 << (8 * v11));
            if (v11 < 3)
            {
              v15 = ((-255 << ((v14 + 40) & 0x38)) - 1) & v15 | (116 << ((v14 + 40) & 0x38));
              if (v11 != 2)
              {
                v15 = ((0xFF01000000000000 << (8 * v11)) - 1) & v15 | (0x3A000000000000 << (8 * v11));
                if (!v11)
                {
                  v43 = v8;
                  v15 = v15 & 0xFFFFFFFFFFFFFFLL | 0x2000000000000000;
LABEL_44:
                  v8;
                  0xE800000000000000;
                  v44 = 0xA000000000000000;
                  if (!(v15 & 0x8080808080808080 | v43 & 0x80808080808080))
                  {
                    v44 = 0xE000000000000000;
                  }

                  v234._countAndFlagsBits = v15;
                  v234._object = (v44 & 0xFF00000000000000 | (v11 << 56) | v43 & 0xFFFFFFFFFFFFFFLL | 0x800000000000000);
                  v232 = a2;
                  if (!a1)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_47;
                }

                v42 = v8;
LABEL_43:
                v43 = ((-255 << ((v14 + 56) & 0x38)) - 1) & v42 | (32 << ((v14 + 56) & 0x38));
                goto LABEL_44;
              }

              v41 = 0;
              v40 = v8;
LABEL_42:
              v42 = ((-255 << v41) - 1) & v40 | (58 << v41);
              goto LABEL_43;
            }

            v39 = 0;
            v38 = v8;
LABEL_41:
            v40 = ((-255 << v39) - 1) & v38 | (116 << v39);
            v41 = (v14 + 48) & 0x38;
            goto LABEL_42;
          }

          v37 = 0;
          v36 = v8;
LABEL_40:
          v38 = ((-255 << v37) - 1) & v36 | (114 << v37);
          v39 = (v14 + 40) & 0x38;
          goto LABEL_41;
        }

        v35 = 0;
        v34 = v8;
LABEL_39:
        v36 = ((-255 << v35) - 1) & v34 | (97 << v35);
        v37 = v14 & 0x38 ^ 0x20;
        goto LABEL_40;
      }

      v19 = 0;
      v20 = v8;
    }

    v34 = ((-255 << v19) - 1) & v20 | (116 << v19);
    v35 = (v14 + 24) & 0x38;
    goto LABEL_39;
  }

  v8;
  v234._countAndFlagsBits = 0x203A747261747328;
  v234._object = 0xE800000000000000;
  v232 = a2;
  if (!a1)
  {
    goto LABEL_36;
  }

LABEL_47:
  v12 = _sSS10describingSSx_tclufCSv_Tt0g5Tm(a1, &type metadata for UnsafeRawPointer.Kind, &protocol witness table for UnsafeRawPointer);
  for (i = v45; ; i = 0xE300000000000000)
  {
    countAndFlagsBits = v234._countAndFlagsBits;
    object = v234._object;
    v46 = (v234._object >> 56) & 0xF;
    a2 = v234._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v234._object & 0x2000000000000000) != 0)
    {
      v47 = (v234._object >> 56) & 0xF;
    }

    else
    {
      v47 = v234._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    v231 = a1;
    if (!v47 && (v234._countAndFlagsBits & ~v234._object & 0x2000000000000000) == 0)
    {
      v234._object;
      v234._countAndFlagsBits = v12;
      v234._object = i;
      goto LABEL_166;
    }

    v48 = (i & 0x2000000000000000) == 0;
    v4 = HIBYTE(i) & 0xF;
    if ((v234._object & 0x2000000000000000) != 0)
    {
      if ((i & 0x2000000000000000) == 0)
      {
        v49 = v12 & 0xFFFFFFFFFFFFLL;
        v48 = 1;
LABEL_58:
        a1 = v49;
        goto LABEL_59;
      }

      v75 = v46 + v4;
      if (v46 + v4 < 0x10)
      {
        if (v4)
        {
          v103 = 0;
          v104 = 0;
          v105 = 8 * v46;
          v106 = v234._object;
          do
          {
            v107 = i >> (v103 & 0x38);
            if (v104 < 8)
            {
              v107 = v12 >> v103;
            }

            v108 = (v107 << (v105 & 0x38)) | ((-255 << (v105 & 0x38)) - 1) & v106;
            v109 = (v107 << v105) | ((-255 << v105) - 1) & countAndFlagsBits;
            if (v46 <= 7)
            {
              countAndFlagsBits = v109;
            }

            else
            {
              v106 = v108;
            }

            ++v46;
            v105 += 8;
            v103 += 8;
            ++v104;
          }

          while (8 * v4 != v103);
        }

        else
        {
          v106 = v234._object;
        }

        v234._object;
        i;
        v110 = 0xA000000000000000;
        if (!(countAndFlagsBits & 0x8080808080808080 | v106 & 0x80808080808080))
        {
          v110 = 0xE000000000000000;
        }

        v87 = (v110 & 0xFF00000000000000 | (v75 << 56) | v106 & 0xFFFFFFFFFFFFFFLL);
        goto LABEL_165;
      }

      v48 = 0;
      v49 = v12 & 0xFFFFFFFFFFFFLL;
      a1 = HIBYTE(i) & 0xF;
    }

    else
    {
      v49 = v12 & 0xFFFFFFFFFFFFLL;
      a1 = HIBYTE(i) & 0xF;
      if ((i & 0x2000000000000000) == 0)
      {
        goto LABEL_58;
      }
    }

LABEL_59:
    v229 = v48;
    v228 = v49;
    if ((i & 0x1000000000000000) != 0)
    {
      break;
    }

    i;
    v3 = a1;
    if ((object & 0x1000000000000000) != 0)
    {
      goto LABEL_275;
    }

LABEL_61:
    v51 = __OFADD__(v47, v3);
    v52 = v47 + v3;
    if (!v51)
    {
      goto LABEL_62;
    }

LABEL_277:
    __break(1u);
LABEL_278:
    v208 = String.UTF8View._foreignCount()();
    v22 = v208 + 8;
    if (__OFADD__(v208, 8))
    {
      goto LABEL_280;
    }

LABEL_13:
    v23 = i & ~object;
    if ((v23 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
    {
      v24 = _StringGuts.nativeUnusedCapacity.getter(i, object);
      if (v25)
      {
        goto LABEL_302;
      }

      if (v22 > 15)
      {
LABEL_24:
        v27 = v23 & 0x2000000000000000;
        v28 = _StringGuts.nativeUnusedCapacity.getter(i, object);
        if ((v29 & 1) != 0 || v28 <= 7)
        {
          if (v27)
          {
            swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL);
          }

          v30 = _StringGuts.nativeCapacity.getter(i, object);
          if (v31)
          {
            v32 = 0;
          }

          else
          {
            v32 = v30;
          }

          if (v32 + 0x4000000000000000 < 0)
          {
            __break(1u);
LABEL_295:
            v215 = _StringObject.sharedUTF8.getter(v12, i);
            if (v216 >= v228)
            {
              v65 = v215;
              v67 = v216;
              v66 = v228;
              goto LABEL_88;
            }

LABEL_298:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v33 = 2 * v32;
          if (v33 > v22)
          {
            v22 = v33;
          }

LABEL_34:
          _StringGuts.grow(_:)(v22);
        }

        else if (!v27 || !swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_34;
        }

        v233 = xmmword_18071DFB0;
        closure #1 in _StringGuts.append(_:)(&v233, 8uLL, &v234, 1);
        swift_bridgeObjectRelease_n(0xE800000000000000, 2);
        v232 = a2;
        if (a1)
        {
          goto LABEL_47;
        }

        goto LABEL_36;
      }

      if ((object & 0x2000000000000000) != 0)
      {
LABEL_115:
        v12 = object;
        goto LABEL_116;
      }

      if (v24 >= 8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v22 > 15)
      {
        goto LABEL_24;
      }

      if ((object & 0x2000000000000000) != 0)
      {
        goto LABEL_115;
      }
    }

    if ((object & 0x1000000000000000) != 0)
    {
      i = _StringGuts._foreignConvertedToSmall()(i, object);
      v12 = v202;
    }

    else
    {
      if ((i & 0x1000000000000000) != 0)
      {
        v26 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v26 = _StringObject.sharedUTF8.getter(i, object);
        v12 = v221;
      }

      closure #1 in _StringGuts._convertedToSmall()(v26, v12, &v233, v21);
      v12 = *(&v233 + 1);
      i = v233;
    }

LABEL_116:
    v3 = 0x203A747261747328;
    countAndFlagsBits = 0xE800000000000000;
    0xE800000000000000;
    v88._rawBits = 1;
    v89._rawBits = 524289;
    v90._rawBits = _StringGuts.validateScalarRange(_:)(v88, v89, 0x203A747261747328uLL, 0xE800000000000000)._rawBits;
    if (v90._rawBits < 0x10000)
    {
      v90._rawBits |= 3;
    }

    if (v90._rawBits >> 16 || (v91._rawBits & 0xFFFFFFFFFFFF0000) != 0x80000)
    {
      v3 = specialized static String._copying(_:)(v90._rawBits, v91, 0x203A747261747328uLL, 0xE800000000000000);
      countAndFlagsBits = v92;
      0xE800000000000000;
    }

    if ((countAndFlagsBits & 0x2000000000000000) != 0)
    {
      countAndFlagsBits;
      goto LABEL_123;
    }

LABEL_290:
    if ((countAndFlagsBits & 0x1000000000000000) != 0)
    {
      v3 = _StringGuts._foreignConvertedToSmall()(v3, countAndFlagsBits);
      v227 = v226;
      countAndFlagsBits;
      countAndFlagsBits = v227;
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v213 = ((countAndFlagsBits & 0xFFFFFFFFFFFFFFFLL) + 32);
        v214 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v213 = _StringObject.sharedUTF8.getter(v3, countAndFlagsBits);
      }

      closure #1 in _StringGuts._convertedToSmall()(v213, v214, &v233, v61);
      countAndFlagsBits;
      countAndFlagsBits = *(&v233 + 1);
      v3 = v233;
    }

LABEL_123:
    v93 = HIBYTE(v12) & 0xF;
    v94 = HIBYTE(countAndFlagsBits) & 0xF;
    v95 = v94 + v93;
    if (v94 + v93 > 0xF)
    {
      goto LABEL_302;
    }

    0xE800000000000000;
    if (v94)
    {
      v96 = 0;
      v97 = 0;
      v98 = 8 * v93;
      do
      {
        v99 = countAndFlagsBits >> (v96 & 0x38);
        if (v97 < 8)
        {
          v99 = v3 >> v96;
        }

        v100 = (v99 << (v98 & 0x38)) | ((-255 << (v98 & 0x38)) - 1) & v12;
        v101 = (v99 << v98) | ((-255 << v98) - 1) & i;
        if (v93 <= 7)
        {
          i = v101;
        }

        else
        {
          v12 = v100;
        }

        ++v93;
        v98 += 8;
        v96 += 8;
        ++v97;
      }

      while (8 * v94 != v96);
    }

    object;
    0xE800000000000000;
    v102 = 0xA000000000000000;
    if (!(i & 0x8080808080808080 | v12 & 0x80808080808080))
    {
      v102 = 0xE000000000000000;
    }

    v234._countAndFlagsBits = i;
    v234._object = (v102 & 0xFF00000000000000 | (v95 << 56) | v12 & 0xFFFFFFFFFFFFFFLL);
    v232 = a2;
    if (a1)
    {
      goto LABEL_47;
    }

LABEL_36:
    v12 = 7104878;
  }

  swift_bridgeObjectRetain_n(i, 2);
  v203._rawBits = 1;
  v204._rawBits = (a1 << 16) | 1;
  v205._rawBits = _StringGuts.validateScalarRange(_:)(v203, v204, v12, i)._rawBits;
  if (v205._rawBits < 0x10000)
  {
    v205._rawBits |= 3;
  }

  v3 = String.UTF8View.distance(from:to:)(v205, v206);
  i;
  if ((object & 0x1000000000000000) == 0)
  {
    goto LABEL_61;
  }

LABEL_275:
  v207 = String.UTF8View._foreignCount()();
  v52 = v207 + v3;
  if (__OFADD__(v207, v3))
  {
    goto LABEL_277;
  }

LABEL_62:
  v53 = countAndFlagsBits & ~object;
  if ((v53 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v52 > 15)
    {
      goto LABEL_73;
    }

    if ((object & 0x2000000000000000) != 0)
    {
LABEL_90:
      v4 = object;
    }

    else
    {
LABEL_68:
      if ((object & 0x1000000000000000) != 0)
      {
        countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, object);
        v4 = v200;
      }

      else
      {
        if ((countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v56 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v56 = _StringObject.sharedUTF8.getter(countAndFlagsBits, object);
          a2 = v219;
        }

        closure #1 in _StringGuts._convertedToSmall()(v56, a2, &v233, v50);
        v4 = *(&v233 + 1);
        countAndFlagsBits = v233;
      }
    }

    i;
    v71._rawBits = 1;
    v72._rawBits = (a1 << 16) | 1;
    v73._rawBits = _StringGuts.validateScalarRange(_:)(v71, v72, v12, i)._rawBits;
    if (v73._rawBits < 0x10000)
    {
      v73._rawBits |= 3;
    }

    if (v73._rawBits >> 16 || v74._rawBits >> 16 != a1)
    {
      v12 = specialized static String._copying(_:)(v73._rawBits, v74, v12, i);
      v3 = v76;
      i;
    }

    else
    {
      v3 = i;
    }

    if ((v3 & 0x2000000000000000) != 0)
    {
      v3;
LABEL_102:
      v77 = HIBYTE(v4) & 0xF;
      v78 = HIBYTE(v3) & 0xF;
      v79 = v78 + v77;
      if (v78 + v77 > 0xF)
      {
        goto LABEL_302;
      }

      i;
      if (v78)
      {
        v80 = 0;
        v81 = 0;
        v82 = 8 * v77;
        do
        {
          v83 = v3 >> (v80 & 0x38);
          if (v81 < 8)
          {
            v83 = v12 >> v80;
          }

          v84 = (v83 << (v82 & 0x38)) | ((-255 << (v82 & 0x38)) - 1) & v4;
          v85 = (v83 << v82) | ((-255 << v82) - 1) & countAndFlagsBits;
          if (v77 <= 7)
          {
            countAndFlagsBits = v85;
          }

          else
          {
            v4 = v84;
          }

          ++v77;
          v82 += 8;
          v80 += 8;
          ++v81;
        }

        while (8 * v78 != v80);
      }

      object;
      i;
      v86 = 0xA000000000000000;
      if (!(countAndFlagsBits & 0x8080808080808080 | v4 & 0x80808080808080))
      {
        v86 = 0xE000000000000000;
      }

      v87 = (v86 & 0xFF00000000000000 | (v79 << 56) | v4 & 0xFFFFFFFFFFFFFFLL);
LABEL_165:
      v234._countAndFlagsBits = countAndFlagsBits;
      v234._object = v87;
      goto LABEL_166;
    }

LABEL_281:
    if ((v3 & 0x1000000000000000) != 0)
    {
      v12 = _StringGuts._foreignConvertedToSmall()(v12, v3);
      v223 = v222;
      v3;
      v3 = v223;
    }

    else
    {
      if ((v12 & 0x1000000000000000) != 0)
      {
        v209 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v210 = v12 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v209 = _StringObject.sharedUTF8.getter(v12, v3);
      }

      closure #1 in _StringGuts._convertedToSmall()(v209, v210, &v233, v21);
      v3;
      v3 = *(&v233 + 1);
      v12 = v233;
    }

    goto LABEL_102;
  }

  v54 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object);
  if (v55)
  {
    goto LABEL_302;
  }

  if (v52 <= 15)
  {
    if ((object & 0x2000000000000000) != 0)
    {
      goto LABEL_90;
    }

    if (v54 < v3)
    {
      goto LABEL_68;
    }
  }

LABEL_73:
  v57 = v53 & 0x2000000000000000;
  v58 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object);
  if ((v59 & 1) == 0 && v58 >= v3)
  {
    if (!v57 || !swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_83;
    }

    goto LABEL_84;
  }

  if (v57)
  {
    swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL);
  }

  v60 = _StringGuts.nativeCapacity.getter(countAndFlagsBits, object);
  if (v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = v60;
  }

  if (v63 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_290;
  }

  v64 = 2 * v63;
  if (v64 > v52)
  {
    v52 = v64;
  }

LABEL_83:
  _StringGuts.grow(_:)(v52);
LABEL_84:
  if ((i & 0x1000000000000000) != 0)
  {
    _StringGuts._foreignAppendInPlace(_:)(v12, i, 0, a1);
  }

  else
  {
    if (v229)
    {
      if ((v12 & 0x1000000000000000) == 0)
      {
        goto LABEL_295;
      }

      v65 = (i & 0xFFFFFFFFFFFFFFFLL) + 32;
      v66 = v228;
      v67 = v228;
LABEL_88:
      v68 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v66, v65, v67);
      v70 = v12 >> 63;
    }

    else
    {
      v70 = (i >> 62) & 1;
      *&v233 = v12;
      *(&v233 + 1) = i & 0xFFFFFFFFFFFFFFLL;
      v68 = &v233;
      v69 = HIBYTE(i) & 0xF;
    }

    closure #1 in _StringGuts.append(_:)(v68, v69, &v234, v70);
  }

  swift_bridgeObjectRelease_n(i, 2);
LABEL_166:
  v111 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", count: ", 9uLL, 1);
  v112 = v111._countAndFlagsBits;
  v114 = v234._countAndFlagsBits;
  v113 = v234._object;
  v115 = (v234._object >> 56) & 0xF;
  v116 = v234._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v234._object & 0x2000000000000000) != 0)
  {
    v117 = (v234._object >> 56) & 0xF;
  }

  else
  {
    v117 = v234._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v117 && (v234._countAndFlagsBits & ~v234._object & 0x2000000000000000) == 0)
  {
    v234._object;
    v234 = v111;
    goto LABEL_230;
  }

  v118 = (v111._object & 0x2000000000000000) == 0;
  v119 = (v111._object >> 56) & 0xF;
  if ((v234._object & 0x2000000000000000) != 0)
  {
    if ((v111._object & 0x2000000000000000) == 0)
    {
      v120 = v111._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v118 = 1;
      goto LABEL_176;
    }

    v142 = v115 + v119;
    if (v115 + v119 < 0x10)
    {
      v128 = v232;
      if (v119)
      {
        v154 = 0;
        v155 = 0;
        v156 = 8 * v115;
        v157 = 8 * v119;
        v158 = v234._object;
        v127 = v231;
        do
        {
          v159 = v111._object >> (v154 & 0x38);
          if (v155 < 8)
          {
            v159 = v111._countAndFlagsBits >> v154;
          }

          v160 = (v159 << (v156 & 0x38)) | ((-255 << (v156 & 0x38)) - 1) & v158;
          v161 = (v159 << v156) | ((-255 << v156) - 1) & v114;
          if (v115 <= 7)
          {
            v114 = v161;
          }

          else
          {
            v158 = v160;
          }

          ++v115;
          v156 += 8;
          v154 += 8;
          ++v155;
        }

        while (v157 != v154);
      }

      else
      {
        v158 = v234._object;
        v127 = v231;
      }

      v234._object;
      v111._object;
      v199 = 0xA000000000000000;
      if (!(v114 & 0x8080808080808080 | v158 & 0x80808080808080))
      {
        v199 = 0xE000000000000000;
      }

      v234._countAndFlagsBits = v114;
      v234._object = (v199 & 0xFF00000000000000 | (v142 << 56) | v158 & 0xFFFFFFFFFFFFFFLL);
      goto LABEL_231;
    }

    v118 = 0;
    v121 = (v111._object >> 56) & 0xF;
    v230 = v111._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v111._object & 0x1000000000000000) != 0)
    {
      goto LABEL_206;
    }

LABEL_178:
    v111._object;
    v123 = v121;
    if ((v113 & 0x1000000000000000) == 0)
    {
      goto LABEL_179;
    }

LABEL_209:
    v147 = String.UTF8View._foreignCount()();
    v124 = v147 + v123;
    if (__OFADD__(v147, v123))
    {
      goto LABEL_211;
    }

LABEL_180:
    if ((v114 & ~v113 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v113 & 0xFFFFFFFFFFFFFFFLL))
    {
      v125 = _StringGuts.nativeUnusedCapacity.getter(v114, v113);
      if (v126)
      {
        goto LABEL_302;
      }

      if (v124 > 15)
      {
        goto LABEL_191;
      }

      if ((v113 & 0x2000000000000000) == 0)
      {
        if (v125 < v123)
        {
LABEL_186:
          if ((v113 & 0x1000000000000000) == 0)
          {
            v127 = v231;
            v128 = v232;
            if ((v114 & 0x1000000000000000) != 0)
            {
              v129 = ((v113 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v129 = _StringObject.sharedUTF8.getter(v114, v113);
              v116 = v220;
            }

            closure #1 in _StringGuts._convertedToSmall()(v129, v116, &v233, v122);
            v130 = *(&v233 + 1);
            v114 = v233;
LABEL_199:
            v111._object;
            v136._rawBits = 1;
            v137._rawBits = (v121 << 16) | 1;
            v138._rawBits = _StringGuts.validateScalarRange(_:)(v136, v137, v111._countAndFlagsBits, v111._object)._rawBits;
            if (v138._rawBits < 0x10000)
            {
              v138._rawBits |= 3;
            }

            if (v138._rawBits >> 16 || v139._rawBits >> 16 != v121)
            {
              v112 = specialized static String._copying(_:)(v138._rawBits, v139, v111._countAndFlagsBits, v111._object);
              v141 = v148;
              v111._object;
            }

            else
            {
              v141 = v111._object;
            }

            if ((v141 & 0x2000000000000000) != 0)
            {
              v141;
            }

            else if ((v141 & 0x1000000000000000) != 0)
            {
              v112 = _StringGuts._foreignConvertedToSmall()(v112, v141);
              v225 = v224;
              v141;
              v141 = v225;
            }

            else
            {
              if ((v112 & 0x1000000000000000) != 0)
              {
                v211 = ((v141 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v212 = v112 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v211 = _StringObject.sharedUTF8.getter(v112, v141);
              }

              closure #1 in _StringGuts._convertedToSmall()(v211, v212, &v233, v140);
              v141;
              v141 = *(&v233 + 1);
              v112 = v233;
            }

            v149 = specialized _SmallString.init(_:appending:)(v114, v130, v112, v141);
            if ((v151 & 1) == 0)
            {
              v152 = v149;
              v153 = v150;
              v113;
              swift_bridgeObjectRelease_n(v111._object, 2);
              v234._countAndFlagsBits = v152;
              v234._object = v153;
              goto LABEL_231;
            }

LABEL_302:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v114 = _StringGuts._foreignConvertedToSmall()(v114, v113);
          v130 = v201;
LABEL_198:
          v127 = v231;
          v128 = v232;
          goto LABEL_199;
        }

LABEL_191:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v124, v123);
        if ((v111._object & 0x1000000000000000) != 0)
        {
          goto LABEL_212;
        }

        if (!v118)
        {
          *&v233 = v111._countAndFlagsBits;
          *(&v233 + 1) = v111._object & 0xFFFFFFFFFFFFFFLL;
          closure #1 in _StringGuts.append(_:)(&v233, (v111._object >> 56) & 0xF, &v234, (v111._object & 0x4000000000000000) != 0);
          goto LABEL_229;
        }

        if ((v111._countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v131 = (v111._object & 0xFFFFFFFFFFFFFFFLL) + 32;
          v132 = v230;
          v127 = v231;
          v133 = v230;
          v128 = v232;
        }

        else
        {
          v217 = _StringObject.sharedUTF8.getter(v111._countAndFlagsBits, v111._object);
          if (v218 < v230)
          {
            goto LABEL_298;
          }

          v131 = v217;
          v133 = v218;
          v127 = v231;
          v128 = v232;
          v132 = v230;
        }

        v134 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v132, v131, v133);
        closure #1 in _StringGuts.append(_:)(v134, v135, &v234, v111._countAndFlagsBits < 0);
        swift_bridgeObjectRelease_n(v111._object, 2);
        goto LABEL_231;
      }
    }

    else
    {
      if (v124 > 15)
      {
        goto LABEL_191;
      }

      if ((v113 & 0x2000000000000000) == 0)
      {
        goto LABEL_186;
      }
    }

    v130 = v113;
    goto LABEL_198;
  }

  v120 = v111._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  v121 = (v111._object >> 56) & 0xF;
  if ((v111._object & 0x2000000000000000) == 0)
  {
LABEL_176:
    v121 = v120;
  }

  v230 = v120;
  if ((v111._object & 0x1000000000000000) == 0)
  {
    goto LABEL_178;
  }

LABEL_206:
  swift_bridgeObjectRetain_n(v111._object, 2);
  v143._rawBits = 1;
  v144._rawBits = (v121 << 16) | 1;
  v145._rawBits = _StringGuts.validateScalarRange(_:)(v143, v144, v111._countAndFlagsBits, v111._object)._rawBits;
  if (v145._rawBits < 0x10000)
  {
    v145._rawBits |= 3;
  }

  v123 = String.UTF8View.distance(from:to:)(v145, v146);
  v111._object;
  if ((v113 & 0x1000000000000000) != 0)
  {
    goto LABEL_209;
  }

LABEL_179:
  v51 = __OFADD__(v117, v123);
  v124 = v117 + v123;
  if (!v51)
  {
    goto LABEL_180;
  }

LABEL_211:
  __break(1u);
LABEL_212:
  _StringGuts._foreignAppendInPlace(_:)(v111._countAndFlagsBits, v111._object, 0, v121);
LABEL_229:
  swift_bridgeObjectRelease_n(v111._object, 2);
LABEL_230:
  v127 = v231;
  v128 = v232;
LABEL_231:
  if (v127)
  {
    v162 = v128 - v127;
  }

  else
  {
    v162 = 0;
  }

  v164 = _int64ToString(_:radix:uppercase:)(v162, 10, 0, swift_int64ToString);
  v165 = v163;
  v166 = v234._object;
  v167 = (v234._object >> 56) & 0xF;
  if ((v234._object & 0x2000000000000000) == 0)
  {
    v167 = v234._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v167 && (v234._countAndFlagsBits & ~v234._object & 0x2000000000000000) == 0)
  {
    v234._object;
    v234._countAndFlagsBits = v164;
    v234._object = v165;
    goto LABEL_246;
  }

  if ((v234._object & 0x2000000000000000) != 0)
  {
    if ((v163 & 0x2000000000000000) != 0)
    {
      v169 = specialized _SmallString.init(_:appending:)(v234._countAndFlagsBits, v234._object, v164, v163);
      if (v171)
      {
        goto LABEL_244;
      }

      v197 = v169;
      v198 = v170;
      v166;
      v165;
      v234._countAndFlagsBits = v197;
      v234._object = v198;
      v165 = v198;
      v164 = v197;
      goto LABEL_246;
    }

LABEL_242:
    v168 = v164 & 0xFFFFFFFFFFFFLL;
    goto LABEL_245;
  }

  if ((v163 & 0x2000000000000000) == 0)
  {
    goto LABEL_242;
  }

LABEL_244:
  v168 = HIBYTE(v165) & 0xF;
LABEL_245:
  v165;
  _StringGuts.append(_:)(v164, v165, 0, v168, v172, v173, v174, v175, v176, v177, v178, v179);
  swift_bridgeObjectRelease_n(v165, 2);
  v164 = v234._countAndFlagsBits;
  v165 = v234._object;
LABEL_246:
  v180 = HIBYTE(v165) & 0xF;
  if ((v165 & 0x2000000000000000) == 0)
  {
    v180 = v164 & 0xFFFFFFFFFFFFLL;
  }

  if (v180 || (v164 & ~v165 & 0x2000000000000000) != 0)
  {
    if ((v165 & 0x2000000000000000) != 0 && (v181 = specialized _SmallString.init(_:appending:)(v164, v165, 0x29uLL, 0xE100000000000000), (v183 & 1) == 0))
    {
      v194 = v181;
      v193 = v182;
      v165;
      0xE100000000000000;
      v192 = v194;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v184, v185, v186, v187, v188, v189, v190, v191);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      v192 = v234._countAndFlagsBits;
      v193 = v234._object;
    }
  }

  else
  {
    v165;
    v193 = 0xE100000000000000;
    v192 = 41;
  }

  v195 = specialized static String.+ infix(_:_:)(0xD000000000000016, 0x800000018071E3B0 | 0x8000000000000000, v192, v193);
  0x800000018071E3B0 | 0x8000000000000000;
  v193;
  return v195;
}

uint64_t withUnsafeMutableBytes<A, B>(of:_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  if (v4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2(a1, a1 + v4);
}

uint64_t withUnsafeBytes<A, B>(of:_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  if (v4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2(a1, a1 + v4);
}

uint64_t != infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v29 = a2;
  v31 = a4;
  v32 = a7;
  v30 = a3;
  swift_getTupleTypeMetadata2(0, a5, a6, 0, 0);
  v12 = v11;
  v13 = *(v11 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v27 - v19;
  v21 = *(*(a5 - 1) + 16);
  v21(&v27 - v19, a1, a5);
  v22 = *(*(a6 - 1) + 16);
  v27 = *(v12 + 48);
  v22(&v20[v27], v29, a6);
  v21(v17, v30, a5);
  v23 = *(v12 + 48);
  v22(&v17[v23], v31, a6);
  if ((*(v32 + 8))(v20, v17, a5))
  {
    v24 = (*(v28 + 8))(&v20[v27], &v17[v23], a6) ^ 1;
  }

  else
  {
    v24 = 1;
  }

  v25 = *(v13 + 8);
  v25(v17, v12);
  v25(v20, v12);
  return v24 & 1;
}

uint64_t <= infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v30 = a2;
  v32 = a7;
  v33 = a4;
  v31 = a3;
  swift_getTupleTypeMetadata2(0, a5, a6, 0, 0);
  v12 = v11;
  v34 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v29 - v18;
  v20 = *(*(a5 - 1) + 16);
  v20(&v29 - v18, a1, a5);
  v21 = *(v12 + 48);
  v22 = *(*(a6 - 1) + 16);
  v22(&v19[v21], v30, a6);
  v20(v16, v31, a5);
  v23 = v32;
  v24 = *(v12 + 48);
  v22(&v16[v24], v33, a6);
  if ((*(*(v23 + 8) + 8))(v19, v16, a5))
  {
    v25 = (*(v29 + 24))(&v19[v21], &v16[v24], a6);
  }

  else
  {
    v25 = (*(v23 + 24))(v19, v16, a5);
  }

  v26 = v25;
  v27 = *(v34 + 8);
  v27(v16, v12);
  v27(v19, v12);
  return v26 & 1;
}

uint64_t == infix<A, B, C>(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, char *), uint64_t a4, char **a5, void (*a6)(void, void, void), char *a7, char *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v67 = a4;
  v68 = a5;
  v65 = a2;
  v66 = a3;
  v69 = a10;
  v70 = a6;
  swift_getTupleTypeMetadata2(0, a8, a9, 0, 0);
  v72 = v15;
  v63 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v62 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v61 = &v57 - v20;
  swift_getTupleTypeMetadata3(0, a7, a8, a9, 0, 0);
  v22 = v21;
  v71 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v57 - v28;
  v30 = *(*(a7 - 1) + 16);
  v30(&v57 - v28, a1, a7);
  v31 = *(v22 + 48);
  v32 = a8;
  v64 = a8;
  v33 = *(a8 - 1);
  v34 = *(v33 + 16);
  v35 = v33 + 16;
  v60 = v31;
  v34(&v29[v31], v65, v32);
  v36 = *(v22 + 64);
  v73 = a9;
  v37 = *(a9 - 1);
  v38 = *(v37 + 16);
  v39 = v37 + 16;
  v59 = v36;
  v38(&v29[v36], v66, a9);
  v30(v26, v67, a7);
  v58 = *(v22 + 48);
  v40 = v64;
  v66 = v34;
  v67 = v35;
  (v34)(&v26[v58], v68);
  v68 = v22;
  v41 = *(v22 + 64);
  v42 = v70;
  v70 = v38;
  v65 = v39;
  v38(&v26[v41], v42, v73);
  if ((*(v69 + 8))(v29, v26, a7))
  {
    v69 = a11;
    v43 = &v29[v60];
    v60 = v41;
    v44 = v61;
    v45 = v40;
    v46 = v66;
    v66(v61, v43, v40);
    v57 = *(v72 + 48);
    v70(&v44[v57], &v29[v59], v73);
    v47 = *(v71 + 8);
    v48 = v68;
    v47(v29, v68);
    v49 = v62;
    v46(v62, &v26[v58], v45);
    v50 = v72;
    v71 = *(v72 + 48);
    v70(&v49[v71], &v26[v60], v73);
    v47(v26, v48);
    v51 = v44;
    if ((*(v69 + 8))(v44, v49, v45))
    {
      v52 = (*(a12 + 8))(&v44[v57], &v49[v71]);
    }

    else
    {
      v52 = 0;
    }

    v55 = *(v63 + 8);
    v55(v49, v50);
    v55(v51, v50);
  }

  else
  {
    v53 = *(v71 + 8);
    v54 = v68;
    v53(v26, v68);
    v53(v29, v54);
    v52 = 0;
  }

  return v52 & 1;
}

uint64_t != infix<A, B, C>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, char *), char **a5, void (*a6)(char *, uint64_t, char *), char *a7, char *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v65 = a4;
  v66 = a5;
  v63 = a2;
  v64 = a3;
  v67 = a10;
  v68 = a6;
  swift_getTupleTypeMetadata2(0, a8, a9, 0, 0);
  v70 = v15;
  v61 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v60 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v59 = &v55 - v20;
  swift_getTupleTypeMetadata3(0, a7, a8, a9, 0, 0);
  v22 = v21;
  v69 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v55 - v28;
  v30 = *(*(a7 - 1) + 16);
  v30(&v55 - v28, a1, a7);
  v31 = *(v22 + 48);
  v62 = a8;
  v32 = *(a8 - 1);
  v33 = *(v32 + 16);
  v34 = v32 + 16;
  v58 = v31;
  v33(&v29[v31], v63, a8);
  v35 = *(v22 + 64);
  v71 = a9;
  v36 = *(a9 - 1);
  v37 = *(v36 + 16);
  v38 = v36 + 16;
  v57 = v35;
  v37(&v29[v35], v64, a9);
  v30(v26, v65, a7);
  v39 = *(v22 + 48);
  v40 = v62;
  v64 = v34;
  v65 = v33;
  (v33)(&v26[v39], v66);
  v66 = v22;
  v41 = *(v22 + 64);
  v42 = v68;
  v68 = v37;
  v63 = v38;
  v37(&v26[v41], v42, v71);
  if ((*(v67 + 8))(v29, v26, a7))
  {
    v67 = a11;
    v43 = v59;
    v56 = v39;
    v44 = v65;
    v65(v59, &v29[v58], v40);
    v55 = *(v70 + 48);
    v58 = v41;
    v68(&v43[v55], &v29[v57], v71);
    v45 = *(v69 + 8);
    v46 = v66;
    v45(v29, v66);
    v47 = v60;
    v44(v60, &v26[v56], v40);
    v48 = v70;
    v49 = *(v70 + 48);
    v68(&v47[v49], &v26[v58], v71);
    v45(v26, v46);
    if ((*(v67 + 8))(v43, v47, v40))
    {
      v50 = (*(a12 + 8))(&v43[v55], &v47[v49]) ^ 1;
    }

    else
    {
      v50 = 1;
    }

    v53 = *(v61 + 8);
    v53(v47, v48);
    v53(v43, v48);
  }

  else
  {
    v51 = *(v69 + 8);
    v52 = v66;
    v51(v26, v66);
    v51(v29, v52);
    v50 = 1;
  }

  return v50 & 1;
}

uint64_t <= infix<A, B, C>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7, char *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v43 = a10;
  v44 = a6;
  swift_getTupleTypeMetadata3(0, a7, a8, a9, 0, 0);
  v17 = v16;
  v45 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v36 - v23;
  v25 = *(a7 - 1);
  v38 = *(v25 + 16);
  v39 = v25 + 16;
  v38(&v36 - v23, a1, a7);
  v26 = *(*(a8 - 1) + 16);
  v37 = *(v17 + 48);
  v26(&v24[v37], a2, a8);
  v27 = *(*(a9 - 1) + 16);
  v36 = *(v17 + 64);
  v27(&v24[v36], v40, a9);
  v38(v21, v41, a7);
  v28 = &v21[*(v17 + 48)];
  v29 = v42;
  v41 = *(v17 + 48);
  v42 = a8;
  v26(v28, v29, a8);
  v30 = *(v17 + 64);
  v27(&v21[v30], v44, a9);
  v31 = v43;
  if ((*(*(v43 + 8) + 8))(v24, v21, a7))
  {
    v32 = <= infix<A, B>(_:_:)(&v24[v37], &v24[v36], &v21[v41], &v21[v30], v42, a9, a11, a12);
  }

  else
  {
    v32 = (*(v31 + 24))(v24, v21, a7, v31);
  }

  v33 = v32;
  v34 = *(v45 + 8);
  v34(v21, v17);
  v34(v24, v17);
  return v33 & 1;
}

uint64_t > infix<A, B, C>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7, char *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v43 = a10;
  v44 = a6;
  swift_getTupleTypeMetadata3(0, a7, a8, a9, 0, 0);
  v17 = v16;
  v45 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v36 - v23;
  v25 = *(a7 - 1);
  v38 = *(v25 + 16);
  v39 = v25 + 16;
  v38(&v36 - v23, a1, a7);
  v26 = *(*(a8 - 1) + 16);
  v37 = *(v17 + 48);
  v26(&v24[v37], a2, a8);
  v27 = *(*(a9 - 1) + 16);
  v36 = *(v17 + 64);
  v27(&v24[v36], v40, a9);
  v38(v21, v41, a7);
  v28 = &v21[*(v17 + 48)];
  v29 = v42;
  v41 = *(v17 + 48);
  v42 = a8;
  v26(v28, v29, a8);
  v30 = *(v17 + 64);
  v27(&v21[v30], v44, a9);
  v31 = v43;
  if ((*(*(v43 + 8) + 8))(v24, v21, a7))
  {
    v32 = > infix<A, B>(_:_:)(&v24[v37], &v24[v36], &v21[v41], &v21[v30], v42, a9, a11, a12);
  }

  else
  {
    v32 = (*(v31 + 40))(v24, v21, a7, v31);
  }

  v33 = v32;
  v34 = *(v45 + 8);
  v34(v21, v17);
  v34(v24, v17);
  return v33 & 1;
}

uint64_t >= infix<A, B, C>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7, char *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v43 = a10;
  v44 = a6;
  swift_getTupleTypeMetadata3(0, a7, a8, a9, 0, 0);
  v17 = v16;
  v45 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v36 - v23;
  v25 = *(a7 - 1);
  v38 = *(v25 + 16);
  v39 = v25 + 16;
  v38(&v36 - v23, a1, a7);
  v26 = *(*(a8 - 1) + 16);
  v37 = *(v17 + 48);
  v26(&v24[v37], a2, a8);
  v27 = *(*(a9 - 1) + 16);
  v36 = *(v17 + 64);
  v27(&v24[v36], v40, a9);
  v38(v21, v41, a7);
  v28 = &v21[*(v17 + 48)];
  v29 = v42;
  v41 = *(v17 + 48);
  v42 = a8;
  v26(v28, v29, a8);
  v30 = *(v17 + 64);
  v27(&v21[v30], v44, a9);
  v31 = v43;
  if ((*(*(v43 + 8) + 8))(v24, v21, a7))
  {
    v32 = >= infix<A, B>(_:_:)(&v24[v37], &v24[v36], &v21[v41], &v21[v30], v42, a9, a11, a12);
  }

  else
  {
    v32 = (*(v31 + 32))(v24, v21, a7, v31);
  }

  v33 = v32;
  v34 = *(v45 + 8);
  v34(v21, v17);
  v34(v24, v17);
  return v33 & 1;
}

uint64_t == infix<A, B, C, D>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void (*a7)(char *, uint64_t, char *), void (*a8)(char *, uint64_t, char *), char *a9, char *a10, char *a11, char *a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16)
{
  v103 = a8;
  v100 = a5;
  v101 = a7;
  v93 = a4;
  v94 = a6;
  v91 = a1;
  v92 = a3;
  v96 = a13;
  swift_getTupleTypeMetadata2(0, a11, a12, 0, 0);
  v84 = v17;
  v83 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v82 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v81 = &v79 - v22;
  swift_getTupleTypeMetadata3(0, a10, a11, a12, 0, 0);
  v99 = v23;
  v87 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v98 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v97 = &v79 - v28;
  v106[0] = a9;
  v106[1] = a10;
  v106[2] = a11;
  v106[3] = a12;
  swift_getTupleTypeMetadata(0, 4, v106, 0, 0);
  v30 = v29;
  v95 = *(v29 - 1);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v35);
  v37 = &v79 - v36;
  v88 = a9;
  v38 = *(a9 - 1);
  v89 = *(v38 + 16);
  v90 = v38 + 16;
  (v89)(&v79 - v36, v91, a9);
  v39 = v30[12];
  v102 = a10;
  v40 = *(a10 - 1);
  v41 = *(v40 + 16);
  v42 = v40 + 16;
  v91 = v39;
  (v41)(&v37[v39], a2, a10);
  v43 = v30[16];
  v104 = a11;
  v44 = *(a11 - 1);
  v45 = *(v44 + 16);
  v46 = v44 + 16;
  v86 = v43;
  v45(&v37[v43], v92, a11);
  v47 = v30[20];
  v105 = a12;
  v48 = *(a12 - 1);
  v49 = *(v48 + 16);
  v50 = v48 + 16;
  v85 = v47;
  v49(&v37[v47], v93, a12);
  v51 = v88;
  (v89)(v34, v100, v88);
  v90 = v30[12];
  v52 = v94;
  v94 = v41;
  v92 = v42;
  (v41)(&v34[v90], v52, v102);
  v53 = v30[16];
  v54 = v101;
  v100 = v46;
  v101 = v45;
  v45(&v34[v53], v54, v104);
  v55 = v30[20];
  v56 = v103;
  v103 = v49;
  v93 = v50;
  v49(&v55[v34], v56, v105);
  if (((*(v96 + 8))(v37, v34, v51) & 1) == 0)
  {
    v74 = *(v95 + 8);
    v74(v34, v30);
    v74(v37, v30);
LABEL_7:
    v73 = 0;
    return v73 & 1;
  }

  v96 = a14;
  v57 = &v37[v91];
  v91 = v53;
  v58 = v97;
  v59 = v102;
  (v94)(v97, v57, v102);
  v60 = v99;
  v80 = *(v99 + 48);
  v101(&v58[v80], &v37[v86], v104);
  v88 = *(v60 + 64);
  v103(&v88[v58], &v37[v85], v105);
  v89 = v55;
  v95 = *(v95 + 8);
  (v95)(v37, v30);
  v61 = v98;
  (v94)(v98, &v34[v90], v59);
  v62 = *(v60 + 48);
  v101(&v61[v62], &v34[v91], v104);
  v63 = *(v60 + 64);
  v103(&v61[v63], &v89[v34], v105);
  (v95)(v34, v30);
  if (((*(v96 + 8))(v58, v61, v59) & 1) == 0)
  {
    v75 = *(v87 + 8);
    v76 = v99;
    v75(v98, v99);
    v75(v97, v76);
    goto LABEL_7;
  }

  v102 = a15;
  v96 = v63;
  v64 = v97;
  v65 = v81;
  v66 = v104;
  v67 = v101;
  v101(v81, &v97[v80], v104);
  v68 = v84;
  v94 = *(v84 + 48);
  v103(&v94[v65], &v88[v64], v105);
  v95 = *(v87 + 8);
  v69 = v99;
  (v95)(v64, v99);
  v70 = v98;
  v71 = v82;
  v67(v82, &v98[v62], v66);
  v72 = *(v68 + 48);
  v103(&v71[v72], &v70[v96], v105);
  (v95)(v70, v69);
  if ((*(v102 + 1))(v65, v71, v66))
  {
    v73 = (*(a16 + 8))(&v94[v65], &v71[v72]);
  }

  else
  {
    v73 = 0;
  }

  v77 = *(v83 + 8);
  v77(v71, v68);
  v77(v65, v68);
  return v73 & 1;
}

uint64_t != infix<A, B, C, D>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void (*a7)(char *, uint64_t, char *), void (*a8)(char *, uint64_t, char *), char *a9, char *a10, char *a11, char *a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16)
{
  v103 = a8;
  v100 = a5;
  v101 = a7;
  v93 = a4;
  v94 = a6;
  v91 = a1;
  v92 = a3;
  v96 = a13;
  swift_getTupleTypeMetadata2(0, a11, a12, 0, 0);
  v84 = v17;
  v83 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v82 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v81 = &v79 - v22;
  swift_getTupleTypeMetadata3(0, a10, a11, a12, 0, 0);
  v99 = v23;
  v87 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v98 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v97 = &v79 - v28;
  v106[0] = a9;
  v106[1] = a10;
  v106[2] = a11;
  v106[3] = a12;
  swift_getTupleTypeMetadata(0, 4, v106, 0, 0);
  v30 = v29;
  v95 = *(v29 - 1);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v35);
  v37 = &v79 - v36;
  v88 = a9;
  v38 = *(a9 - 1);
  v89 = *(v38 + 16);
  v90 = v38 + 16;
  (v89)(&v79 - v36, v91, a9);
  v39 = v30[12];
  v102 = a10;
  v40 = *(a10 - 1);
  v41 = *(v40 + 16);
  v42 = v40 + 16;
  v91 = v39;
  (v41)(&v37[v39], a2, a10);
  v43 = v30[16];
  v104 = a11;
  v44 = *(a11 - 1);
  v45 = *(v44 + 16);
  v46 = v44 + 16;
  v86 = v43;
  v45(&v37[v43], v92, a11);
  v47 = v30[20];
  v105 = a12;
  v48 = *(a12 - 1);
  v49 = *(v48 + 16);
  v50 = v48 + 16;
  v85 = v47;
  v49(&v37[v47], v93, a12);
  v51 = v88;
  (v89)(v34, v100, v88);
  v90 = v30[12];
  v52 = v94;
  v94 = v41;
  v92 = v42;
  (v41)(&v34[v90], v52, v102);
  v53 = v30[16];
  v54 = v101;
  v100 = v46;
  v101 = v45;
  v45(&v34[v53], v54, v104);
  v55 = v30[20];
  v56 = v103;
  v103 = v49;
  v93 = v50;
  v49(&v55[v34], v56, v105);
  if (((*(v96 + 8))(v37, v34, v51) & 1) == 0)
  {
    v74 = *(v95 + 8);
    v74(v34, v30);
    v74(v37, v30);
LABEL_7:
    v73 = 1;
    return v73 & 1;
  }

  v96 = a14;
  v57 = &v37[v91];
  v91 = v53;
  v58 = v97;
  v59 = v102;
  (v94)(v97, v57, v102);
  v60 = v99;
  v80 = *(v99 + 48);
  v101(&v58[v80], &v37[v86], v104);
  v88 = *(v60 + 64);
  v103(&v88[v58], &v37[v85], v105);
  v89 = v55;
  v95 = *(v95 + 8);
  (v95)(v37, v30);
  v61 = v98;
  (v94)(v98, &v34[v90], v59);
  v62 = *(v60 + 48);
  v101(&v61[v62], &v34[v91], v104);
  v63 = *(v60 + 64);
  v103(&v61[v63], &v89[v34], v105);
  (v95)(v34, v30);
  if (((*(v96 + 8))(v58, v61, v59) & 1) == 0)
  {
    v75 = *(v87 + 8);
    v76 = v99;
    v75(v98, v99);
    v75(v97, v76);
    goto LABEL_7;
  }

  v102 = a15;
  v96 = v63;
  v64 = v97;
  v65 = v81;
  v66 = v104;
  v67 = v101;
  v101(v81, &v97[v80], v104);
  v68 = v84;
  v94 = *(v84 + 48);
  v103(&v94[v65], &v88[v64], v105);
  v95 = *(v87 + 8);
  v69 = v99;
  (v95)(v64, v99);
  v70 = v98;
  v71 = v82;
  v67(v82, &v98[v62], v66);
  v72 = *(v68 + 48);
  v103(&v71[v72], &v70[v96], v105);
  (v95)(v70, v69);
  if ((*(v102 + 1))(v65, v71, v66))
  {
    v73 = (*(a16 + 8))(&v94[v65], &v71[v72]) ^ 1;
  }

  else
  {
    v73 = 1;
  }

  v77 = *(v83 + 8);
  v77(v71, v68);
  v77(v65, v68);
  return v73 & 1;
}

uint64_t < infix<A, B, C, D>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int *a5, void (*a6)(char *, char *, char *), void (*a7)(char *, uint64_t, char *), char *a8, char *a9, char *a10, char *a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v88 = a8;
  v84 = a6;
  v85 = a7;
  v82 = a4;
  v83 = a5;
  v80 = a2;
  v81 = a3;
  v86 = a13;
  swift_getTupleTypeMetadata3(0, a10, a11, a12, 0, 0);
  v74 = v17;
  v77 = *(v17 - 1);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v76 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v75 = &v69 - v22;
  v92[0] = a9;
  v92[1] = a10;
  v92[2] = a11;
  v92[3] = a12;
  swift_getTupleTypeMetadata(0, 4, v92, 0, 0);
  v24 = v23;
  v87 = *(v23 - 1);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v69 - v30;
  v32 = *(a9 - 1);
  v78 = *(v32 + 16);
  v79 = v32 + 16;
  v78(&v69 - v30, a1, a9);
  v33 = v24[12];
  v89 = a10;
  v34 = *(a10 - 1);
  v90 = *(v34 + 16);
  v35 = v34 + 16;
  v73 = v33;
  v90(&v31[v33], v80, a10);
  v36 = v24[16];
  v91 = a11;
  v37 = *(a11 - 1);
  v38 = *(v37 + 16);
  v39 = v37 + 16;
  v72 = v36;
  v38(&v31[v36], v81, a11);
  v40 = *(a12 - 1);
  v41 = *(v40 + 16);
  v42 = v40 + 16;
  v71 = v24[20];
  v41(&v31[v71], v82, a12);
  v78(v28, v83, a9);
  v78 = v24[12];
  v81 = v35;
  v90(v78 + v28, v84, v89);
  v43 = v24[16];
  v44 = v85;
  v85 = v38;
  v80 = v39;
  v38(&v28[v43], v44, v91);
  v83 = v24;
  v84 = v41;
  v45 = v24[20];
  v46 = v31;
  v47 = v88;
  v88 = a12;
  v48 = v86;
  v79 = v42;
  v41(&v28[v45], v47, a12);
  v49 = *(*(v48 + 8) + 8);
  v82 = v28;
  if (v49(v31, v28, a9))
  {
    v86 = a14;
    v50 = &v31[v73];
    v51 = v75;
    v52 = v89;
    v70 = v43;
    v90(v75, v50, v89);
    v73 = v45;
    v53 = v74;
    v69 = v74[12];
    v85(&v51[v69], &v46[v72], v91);
    v72 = v53[16];
    v84(&v51[v72], &v46[v71], v88);
    v87 = *(v87 + 8);
    v54 = v46;
    v55 = v83;
    (v87)(v54, v83);
    v56 = v82;
    v57 = v76;
    v90(v76, v78 + v82, v52);
    v58 = v53[12];
    v85(&v57[v58], &v56[v70], v91);
    v59 = v53[16];
    v84(&v57[v59], &v56[v73], v88);
    v60 = v56;
    v61 = v86;
    (v87)(v60, v55);
    if ((*(*(v61 + 8) + 8))(v51, v57, v52))
    {
      v62 = < infix<A, B>(_:_:)(&v51[v69], &v51[v72], &v57[v58], &v57[v59], v91, v88, a15, a16);
    }

    else
    {
      v62 = (*(v61 + 16))(v51, v57);
    }

    v64 = v62;
    v65 = *(v77 + 8);
    v65(v57, v53);
    v67 = v51;
  }

  else
  {
    v63 = v82;
    v64 = (*(v48 + 16))(v31, v82, a9, v48);
    v65 = *(v87 + 8);
    v66 = v63;
    v53 = v83;
    v65(v66, v83);
    v67 = v31;
  }

  v65(v67, v53);
  return v64 & 1;
}

uint64_t <= infix<A, B, C, D>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int *a5, void (*a6)(char *, char *, char *), void (*a7)(char *, uint64_t, char *), char *a8, char *a9, char *a10, char *a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v88 = a8;
  v84 = a6;
  v85 = a7;
  v82 = a4;
  v83 = a5;
  v80 = a2;
  v81 = a3;
  v86 = a13;
  swift_getTupleTypeMetadata3(0, a10, a11, a12, 0, 0);
  v74 = v17;
  v77 = *(v17 - 1);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v76 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v75 = &v69 - v22;
  v92[0] = a9;
  v92[1] = a10;
  v92[2] = a11;
  v92[3] = a12;
  swift_getTupleTypeMetadata(0, 4, v92, 0, 0);
  v24 = v23;
  v87 = *(v23 - 1);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v69 - v30;
  v32 = *(a9 - 1);
  v78 = *(v32 + 16);
  v79 = v32 + 16;
  v78(&v69 - v30, a1, a9);
  v33 = v24[12];
  v89 = a10;
  v34 = *(a10 - 1);
  v90 = *(v34 + 16);
  v35 = v34 + 16;
  v73 = v33;
  v90(&v31[v33], v80, a10);
  v36 = v24[16];
  v91 = a11;
  v37 = *(a11 - 1);
  v38 = *(v37 + 16);
  v39 = v37 + 16;
  v72 = v36;
  v38(&v31[v36], v81, a11);
  v40 = *(a12 - 1);
  v41 = *(v40 + 16);
  v42 = v40 + 16;
  v71 = v24[20];
  v41(&v31[v71], v82, a12);
  v78(v28, v83, a9);
  v78 = v24[12];
  v81 = v35;
  v90(v78 + v28, v84, v89);
  v43 = v24[16];
  v44 = v85;
  v85 = v38;
  v80 = v39;
  v38(&v28[v43], v44, v91);
  v83 = v24;
  v84 = v41;
  v45 = v24[20];
  v46 = v31;
  v47 = v88;
  v88 = a12;
  v48 = v86;
  v79 = v42;
  v41(&v28[v45], v47, a12);
  v49 = *(*(v48 + 8) + 8);
  v82 = v28;
  if (v49(v31, v28, a9))
  {
    v86 = a14;
    v50 = &v31[v73];
    v51 = v75;
    v52 = v89;
    v70 = v43;
    v90(v75, v50, v89);
    v73 = v45;
    v53 = v74;
    v69 = v74[12];
    v85(&v51[v69], &v46[v72], v91);
    v72 = v53[16];
    v84(&v51[v72], &v46[v71], v88);
    v87 = *(v87 + 8);
    v54 = v46;
    v55 = v83;
    (v87)(v54, v83);
    v56 = v82;
    v57 = v76;
    v90(v76, v78 + v82, v52);
    v58 = v53[12];
    v85(&v57[v58], &v56[v70], v91);
    v59 = v53[16];
    v84(&v57[v59], &v56[v73], v88);
    v60 = v56;
    v61 = v86;
    (v87)(v60, v55);
    if ((*(*(v61 + 8) + 8))(v51, v57, v52))
    {
      v62 = <= infix<A, B>(_:_:)(&v51[v69], &v51[v72], &v57[v58], &v57[v59], v91, v88, a15, a16);
    }

    else
    {
      v62 = (*(v61 + 24))(v51, v57);
    }

    v64 = v62;
    v65 = *(v77 + 8);
    v65(v57, v53);
    v67 = v51;
  }

  else
  {
    v63 = v82;
    v64 = (*(v48 + 24))(v31, v82, a9, v48);
    v65 = *(v87 + 8);
    v66 = v63;
    v53 = v83;
    v65(v66, v83);
    v67 = v31;
  }

  v65(v67, v53);
  return v64 & 1;
}

uint64_t > infix<A, B, C, D>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int *a5, void (*a6)(char *, char *, char *), void (*a7)(char *, uint64_t, char *), char *a8, char *a9, char *a10, char *a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v88 = a8;
  v84 = a6;
  v85 = a7;
  v82 = a4;
  v83 = a5;
  v80 = a2;
  v81 = a3;
  v86 = a13;
  swift_getTupleTypeMetadata3(0, a10, a11, a12, 0, 0);
  v74 = v17;
  v77 = *(v17 - 1);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v76 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v75 = &v69 - v22;
  v92[0] = a9;
  v92[1] = a10;
  v92[2] = a11;
  v92[3] = a12;
  swift_getTupleTypeMetadata(0, 4, v92, 0, 0);
  v24 = v23;
  v87 = *(v23 - 1);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v69 - v30;
  v32 = *(a9 - 1);
  v78 = *(v32 + 16);
  v79 = v32 + 16;
  v78(&v69 - v30, a1, a9);
  v33 = v24[12];
  v89 = a10;
  v34 = *(a10 - 1);
  v90 = *(v34 + 16);
  v35 = v34 + 16;
  v73 = v33;
  v90(&v31[v33], v80, a10);
  v36 = v24[16];
  v91 = a11;
  v37 = *(a11 - 1);
  v38 = *(v37 + 16);
  v39 = v37 + 16;
  v72 = v36;
  v38(&v31[v36], v81, a11);
  v40 = *(a12 - 1);
  v41 = *(v40 + 16);
  v42 = v40 + 16;
  v71 = v24[20];
  v41(&v31[v71], v82, a12);
  v78(v28, v83, a9);
  v78 = v24[12];
  v81 = v35;
  v90(v78 + v28, v84, v89);
  v43 = v24[16];
  v44 = v85;
  v85 = v38;
  v80 = v39;
  v38(&v28[v43], v44, v91);
  v83 = v24;
  v84 = v41;
  v45 = v24[20];
  v46 = v31;
  v47 = v88;
  v88 = a12;
  v48 = v86;
  v79 = v42;
  v41(&v28[v45], v47, a12);
  v49 = *(*(v48 + 8) + 8);
  v82 = v28;
  if (v49(v31, v28, a9))
  {
    v86 = a14;
    v50 = &v31[v73];
    v51 = v75;
    v52 = v89;
    v70 = v43;
    v90(v75, v50, v89);
    v73 = v45;
    v53 = v74;
    v69 = v74[12];
    v85(&v51[v69], &v46[v72], v91);
    v72 = v53[16];
    v84(&v51[v72], &v46[v71], v88);
    v87 = *(v87 + 8);
    v54 = v46;
    v55 = v83;
    (v87)(v54, v83);
    v56 = v82;
    v57 = v76;
    v90(v76, v78 + v82, v52);
    v58 = v53[12];
    v85(&v57[v58], &v56[v70], v91);
    v59 = v53[16];
    v84(&v57[v59], &v56[v73], v88);
    v60 = v56;
    v61 = v86;
    (v87)(v60, v55);
    if ((*(*(v61 + 8) + 8))(v51, v57, v52))
    {
      v62 = > infix<A, B>(_:_:)(&v51[v69], &v51[v72], &v57[v58], &v57[v59], v91, v88, a15, a16);
    }

    else
    {
      v62 = (*(v61 + 40))(v51, v57);
    }

    v64 = v62;
    v65 = *(v77 + 8);
    v65(v57, v53);
    v67 = v51;
  }

  else
  {
    v63 = v82;
    v64 = (*(v48 + 40))(v31, v82, a9, v48);
    v65 = *(v87 + 8);
    v66 = v63;
    v53 = v83;
    v65(v66, v83);
    v67 = v31;
  }

  v65(v67, v53);
  return v64 & 1;
}

uint64_t >= infix<A, B, C, D>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int *a5, void (*a6)(char *, char *, char *), void (*a7)(char *, uint64_t, char *), char *a8, char *a9, char *a10, char *a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v88 = a8;
  v84 = a6;
  v85 = a7;
  v82 = a4;
  v83 = a5;
  v80 = a2;
  v81 = a3;
  v86 = a13;
  swift_getTupleTypeMetadata3(0, a10, a11, a12, 0, 0);
  v74 = v17;
  v77 = *(v17 - 1);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v76 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v75 = &v69 - v22;
  v92[0] = a9;
  v92[1] = a10;
  v92[2] = a11;
  v92[3] = a12;
  swift_getTupleTypeMetadata(0, 4, v92, 0, 0);
  v24 = v23;
  v87 = *(v23 - 1);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v69 - v30;
  v32 = *(a9 - 1);
  v78 = *(v32 + 16);
  v79 = v32 + 16;
  v78(&v69 - v30, a1, a9);
  v33 = v24[12];
  v89 = a10;
  v34 = *(a10 - 1);
  v90 = *(v34 + 16);
  v35 = v34 + 16;
  v73 = v33;
  v90(&v31[v33], v80, a10);
  v36 = v24[16];
  v91 = a11;
  v37 = *(a11 - 1);
  v38 = *(v37 + 16);
  v39 = v37 + 16;
  v72 = v36;
  v38(&v31[v36], v81, a11);
  v40 = *(a12 - 1);
  v41 = *(v40 + 16);
  v42 = v40 + 16;
  v71 = v24[20];
  v41(&v31[v71], v82, a12);
  v78(v28, v83, a9);
  v78 = v24[12];
  v81 = v35;
  v90(v78 + v28, v84, v89);
  v43 = v24[16];
  v44 = v85;
  v85 = v38;
  v80 = v39;
  v38(&v28[v43], v44, v91);
  v83 = v24;
  v84 = v41;
  v45 = v24[20];
  v46 = v31;
  v47 = v88;
  v88 = a12;
  v48 = v86;
  v79 = v42;
  v41(&v28[v45], v47, a12);
  v49 = *(*(v48 + 8) + 8);
  v82 = v28;
  if (v49(v31, v28, a9))
  {
    v86 = a14;
    v50 = &v31[v73];
    v51 = v75;
    v52 = v89;
    v70 = v43;
    v90(v75, v50, v89);
    v73 = v45;
    v53 = v74;
    v69 = v74[12];
    v85(&v51[v69], &v46[v72], v91);
    v72 = v53[16];
    v84(&v51[v72], &v46[v71], v88);
    v87 = *(v87 + 8);
    v54 = v46;
    v55 = v83;
    (v87)(v54, v83);
    v56 = v82;
    v57 = v76;
    v90(v76, v78 + v82, v52);
    v58 = v53[12];
    v85(&v57[v58], &v56[v70], v91);
    v59 = v53[16];
    v84(&v57[v59], &v56[v73], v88);
    v60 = v56;
    v61 = v86;
    (v87)(v60, v55);
    if ((*(*(v61 + 8) + 8))(v51, v57, v52))
    {
      v62 = >= infix<A, B>(_:_:)(&v51[v69], &v51[v72], &v57[v58], &v57[v59], v91, v88, a15, a16);
    }

    else
    {
      v62 = (*(v61 + 32))(v51, v57);
    }

    v64 = v62;
    v65 = *(v77 + 8);
    v65(v57, v53);
    v67 = v51;
  }

  else
  {
    v63 = v82;
    v64 = (*(v48 + 32))(v31, v82, a9, v48);
    v65 = *(v87 + 8);
    v66 = v63;
    v53 = v83;
    v65(v66, v83);
    v67 = v31;
  }

  v65(v67, v53);
  return v64 & 1;
}

uint64_t == infix<A, B, C, D, E>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, void (*a8)(char *, char *, char *), uint64_t a9, void (*a10)(char *, uint64_t, char *), char *a11, char *a12, char *a13, char *a14, char *a15, uint64_t a16, char *a17, char *a18, char *a19, uint64_t a20)
{
  v134 = a7;
  v135 = a8;
  v130 = a5;
  v131 = a6;
  v123 = a4;
  v122 = a3;
  v121 = a2;
  v133 = a10;
  v125 = a9;
  v126 = a16;
  swift_getTupleTypeMetadata2(0, a14, a15, 0, 0);
  v110 = v21;
  v109 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v108 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v115 = &v107 - v26;
  swift_getTupleTypeMetadata3(0, a13, a14, a15, 0, 0);
  v114 = v27;
  v113 = *(v27 - 1);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v112 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v111 = &v107 - v32;
  v141 = a12;
  v142 = a13;
  v143 = a14;
  v144 = a15;
  swift_getTupleTypeMetadata(0, 4, &v141, 0, 0);
  v129 = v33;
  v118 = *(v33 - 1);
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v128 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v37);
  v127 = &v107 - v38;
  v141 = a11;
  v142 = a12;
  v143 = a13;
  v144 = a14;
  v145 = a15;
  swift_getTupleTypeMetadata(0, 5, &v141, 0, 0);
  v40 = v39;
  v124 = *(v39 - 1);
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v44 = &v107 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v45);
  v47 = &v107 - v46;
  v136 = a11;
  v48 = *(a11 - 1);
  v119 = *(v48 + 16);
  v120 = v48 + 16;
  (v119)(&v107 - v46, a1, a11);
  v49 = v40[12];
  v132 = a12;
  v50 = *(a12 - 1);
  v137 = *(v50 + 16);
  v51 = v50 + 16;
  v117 = v49;
  v137(&v47[v49], v121, a12);
  v52 = v40[16];
  v138 = a13;
  v53 = *(a13 - 1);
  v54 = *(v53 + 16);
  v55 = v53 + 16;
  v121 = v52;
  (v54)(&v47[v52], v122, a13);
  v56 = v40[20];
  v140 = a14;
  v57 = *(a14 - 1);
  v58 = *(v57 + 16);
  v59 = v57 + 16;
  v122 = v56;
  v58(&v47[v56], v123, a14);
  v60 = v40[24];
  v139 = a15;
  v61 = *(a15 - 1);
  v62 = *(v61 + 16);
  v63 = v61 + 16;
  v116 = v60;
  v62(&v47[v60], v130, a15);
  (v119)(v44, v131, v136);
  v120 = v40[12];
  v123 = v51;
  v137(&v44[v120], v134, v132);
  v64 = v40[16];
  v130 = v55;
  v131 = v54;
  (v54)(&v64[v44], v135, v138);
  v65 = v44;
  v66 = v40[20];
  v134 = v59;
  v135 = v58;
  v58(&v65[v66], v125, v140);
  v67 = v40[24];
  v68 = v133;
  v133 = v62;
  v125 = v63;
  v62(&v65[v67], v68, v139);
  if (((*(v126 + 8))(v47, v65) & 1) == 0)
  {
    v100 = *(v124 + 8);
    v100(v65, v40);
    v101 = v47;
    v102 = v40;
LABEL_7:
    v100(v101, v102);
LABEL_9:
    v99 = 0;
    return v99 & 1;
  }

  v136 = a17;
  v69 = v127;
  v70 = v132;
  v119 = v64;
  v137(v127, &v47[v117], v132);
  v126 = v67;
  v71 = v129;
  v107 = v129[12];
  (v131)(&v69[v107], &v47[v121], v138);
  v121 = v71[16];
  v72 = &v47[v122];
  v122 = v66;
  v135(&v69[v121], v72, v140);
  v117 = v71[20];
  v133(&v69[v117], &v47[v116], v139);
  v124 = *(v124 + 8);
  (v124)(v47, v40);
  v73 = &v65[v120];
  v74 = v65;
  v75 = v128;
  v137(v128, v73, v70);
  v137 = v71[12];
  (v131)(v137 + v75, &v119[v74], v138);
  v76 = v71[16];
  v135(&v75[v76], &v74[v122], v140);
  v77 = v71[20];
  v133(&v77[v75], &v74[v126], v139);
  (v124)(v74, v40);
  if (((*(v136 + 1))(v69, v75, v70) & 1) == 0)
  {
    v103 = *(v118 + 8);
    v104 = v129;
    v103(v128, v129);
    v103(v127, v104);
    goto LABEL_9;
  }

  v136 = a18;
  v132 = v77;
  v78 = v127;
  v79 = v111;
  v80 = v138;
  (v131)(v111, &v127[v107], v138);
  v126 = v76;
  v81 = v114;
  v122 = v114[12];
  v135(&v79[v122], &v78[v121], v140);
  v123 = v81[16];
  v82 = v139;
  v133(&v79[v123], &v78[v117], v139);
  v124 = *(v118 + 8);
  v83 = v78;
  v84 = v129;
  (v124)(v83, v129);
  v85 = v128;
  v86 = v112;
  (v131)(v112, v137 + v128, v80);
  v137 = v81[12];
  v135(v137 + v86, &v85[v126], v140);
  v87 = v81[16];
  v133(&v87[v86], &v132[v85], v82);
  (v124)(v85, v84);
  if (((*(v136 + 1))(v79, v86, v80) & 1) == 0)
  {
    v100 = *(v113 + 8);
    v100(v86, v81);
    v101 = v79;
    v102 = v81;
    goto LABEL_7;
  }

  v138 = a19;
  v88 = v81;
  v89 = v115;
  v90 = v140;
  v91 = v135;
  v135(v115, &v79[v122], v140);
  v92 = v110;
  v131 = *(v110 + 48);
  v136 = v87;
  v93 = v133;
  v133(&v131[v89], &v79[v123], v139);
  v132 = *(v113 + 8);
  v94 = v79;
  v95 = v88;
  (v132)(v94, v88);
  v96 = v108;
  v91(v108, v137 + v86, v90);
  v97 = *(v92 + 48);
  v93(&v96[v97], &v136[v86], v139);
  (v132)(v86, v95);
  v98 = v115;
  if ((*(v138 + 1))())
  {
    v99 = (*(a20 + 8))(&v131[v98], &v96[v97]);
  }

  else
  {
    v99 = 0;
  }

  v106 = *(v109 + 8);
  v106(v96, v92);
  v106(v98, v92);
  return v99 & 1;
}

uint64_t != infix<A, B, C, D, E>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, void (*a8)(char *, char *, char *), uint64_t a9, void (*a10)(char *, uint64_t, char *), char *a11, char *a12, char *a13, char *a14, char *a15, uint64_t a16, char *a17, char *a18, char *a19, uint64_t a20)
{
  v134 = a7;
  v135 = a8;
  v130 = a5;
  v131 = a6;
  v123 = a4;
  v122 = a3;
  v121 = a2;
  v133 = a10;
  v125 = a9;
  v126 = a16;
  swift_getTupleTypeMetadata2(0, a14, a15, 0, 0);
  v110 = v21;
  v109 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v108 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v115 = &v107 - v26;
  swift_getTupleTypeMetadata3(0, a13, a14, a15, 0, 0);
  v114 = v27;
  v113 = *(v27 - 1);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v112 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v111 = &v107 - v32;
  v141 = a12;
  v142 = a13;
  v143 = a14;
  v144 = a15;
  swift_getTupleTypeMetadata(0, 4, &v141, 0, 0);
  v129 = v33;
  v118 = *(v33 - 1);
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v128 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v37);
  v127 = &v107 - v38;
  v141 = a11;
  v142 = a12;
  v143 = a13;
  v144 = a14;
  v145 = a15;
  swift_getTupleTypeMetadata(0, 5, &v141, 0, 0);
  v40 = v39;
  v124 = *(v39 - 1);
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v44 = &v107 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v45);
  v47 = &v107 - v46;
  v136 = a11;
  v48 = *(a11 - 1);
  v119 = *(v48 + 16);
  v120 = v48 + 16;
  (v119)(&v107 - v46, a1, a11);
  v49 = v40[12];
  v132 = a12;
  v50 = *(a12 - 1);
  v137 = *(v50 + 16);
  v51 = v50 + 16;
  v117 = v49;
  v137(&v47[v49], v121, a12);
  v52 = v40[16];
  v138 = a13;
  v53 = *(a13 - 1);
  v54 = *(v53 + 16);
  v55 = v53 + 16;
  v121 = v52;
  (v54)(&v47[v52], v122, a13);
  v56 = v40[20];
  v140 = a14;
  v57 = *(a14 - 1);
  v58 = *(v57 + 16);
  v59 = v57 + 16;
  v122 = v56;
  v58(&v47[v56], v123, a14);
  v60 = v40[24];
  v139 = a15;
  v61 = *(a15 - 1);
  v62 = *(v61 + 16);
  v63 = v61 + 16;
  v116 = v60;
  v62(&v47[v60], v130, a15);
  (v119)(v44, v131, v136);
  v120 = v40[12];
  v123 = v51;
  v137(&v44[v120], v134, v132);
  v64 = v40[16];
  v130 = v55;
  v131 = v54;
  (v54)(&v64[v44], v135, v138);
  v65 = v44;
  v66 = v40[20];
  v134 = v59;
  v135 = v58;
  v58(&v65[v66], v125, v140);
  v67 = v40[24];
  v68 = v133;
  v133 = v62;
  v125 = v63;
  v62(&v65[v67], v68, v139);
  if (((*(v126 + 8))(v47, v65) & 1) == 0)
  {
    v100 = *(v124 + 8);
    v100(v65, v40);
    v101 = v47;
    v102 = v40;
LABEL_7:
    v100(v101, v102);
LABEL_9:
    v99 = 1;
    return v99 & 1;
  }

  v136 = a17;
  v69 = v127;
  v70 = v132;
  v119 = v64;
  v137(v127, &v47[v117], v132);
  v126 = v67;
  v71 = v129;
  v107 = v129[12];
  (v131)(&v69[v107], &v47[v121], v138);
  v121 = v71[16];
  v72 = &v47[v122];
  v122 = v66;
  v135(&v69[v121], v72, v140);
  v117 = v71[20];
  v133(&v69[v117], &v47[v116], v139);
  v124 = *(v124 + 8);
  (v124)(v47, v40);
  v73 = &v65[v120];
  v74 = v65;
  v75 = v128;
  v137(v128, v73, v70);
  v137 = v71[12];
  (v131)(v137 + v75, &v119[v74], v138);
  v76 = v71[16];
  v135(&v75[v76], &v74[v122], v140);
  v77 = v71[20];
  v133(&v77[v75], &v74[v126], v139);
  (v124)(v74, v40);
  if (((*(v136 + 1))(v69, v75, v70) & 1) == 0)
  {
    v103 = *(v118 + 8);
    v104 = v129;
    v103(v128, v129);
    v103(v127, v104);
    goto LABEL_9;
  }

  v136 = a18;
  v132 = v77;
  v78 = v127;
  v79 = v111;
  v80 = v138;
  (v131)(v111, &v127[v107], v138);
  v126 = v76;
  v81 = v114;
  v122 = v114[12];
  v135(&v79[v122], &v78[v121], v140);
  v123 = v81[16];
  v82 = v139;
  v133(&v79[v123], &v78[v117], v139);
  v124 = *(v118 + 8);
  v83 = v78;
  v84 = v129;
  (v124)(v83, v129);
  v85 = v128;
  v86 = v112;
  (v131)(v112, v137 + v128, v80);
  v137 = v81[12];
  v135(v137 + v86, &v85[v126], v140);
  v87 = v81[16];
  v133(&v87[v86], &v132[v85], v82);
  (v124)(v85, v84);
  if (((*(v136 + 1))(v79, v86, v80) & 1) == 0)
  {
    v100 = *(v113 + 8);
    v100(v86, v81);
    v101 = v79;
    v102 = v81;
    goto LABEL_7;
  }

  v138 = a19;
  v88 = v81;
  v89 = v115;
  v90 = v140;
  v91 = v135;
  v135(v115, &v79[v122], v140);
  v92 = v110;
  v131 = *(v110 + 48);
  v136 = v87;
  v93 = v133;
  v133(&v131[v89], &v79[v123], v139);
  v132 = *(v113 + 8);
  v94 = v79;
  v95 = v88;
  (v132)(v94, v88);
  v96 = v108;
  v91(v108, v137 + v86, v90);
  v97 = *(v92 + 48);
  v93(&v96[v97], &v136[v86], v139);
  (v132)(v86, v95);
  v98 = v115;
  if ((*(v138 + 1))())
  {
    v99 = (*(a20 + 8))(&v131[v98], &v96[v97]) ^ 1;
  }

  else
  {
    v99 = 1;
  }

  v106 = *(v109 + 8);
  v106(v96, v92);
  v106(v98, v92);
  return v99 & 1;
}

uint64_t < infix<A, B, C, D, E>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int *a6, void (*a7)(char *, char *, char *), void (*a8)(char *, uint64_t, char *), uint64_t a9, void (*a10)(char *, char *, char *), char *a11, char *a12, char *a13, char *a14, char *a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20)
{
  v122 = a7;
  v123 = a8;
  v113 = a6;
  v112 = a5;
  v111 = a4;
  v110 = a3;
  v109 = a2;
  v121 = a10;
  v114 = a9;
  v115 = a16;
  swift_getTupleTypeMetadata3(0, a13, a14, a15, 0, 0);
  v102 = v21;
  v101 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v100 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v99 = &v97 - v26;
  v129 = a12;
  v130 = a13;
  v131 = a14;
  v132 = a15;
  swift_getTupleTypeMetadata(0, 4, &v129, 0, 0);
  v119 = v27;
  v106 = *(v27 - 1);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v118 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v117 = &v97 - v32;
  v129 = a11;
  v130 = a12;
  v131 = a13;
  v132 = a14;
  v133 = a15;
  swift_getTupleTypeMetadata(0, 5, &v129, 0, 0);
  v34 = v33;
  v116 = *(v33 - 1);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v97 - v40;
  v42 = *(a11 - 1);
  v107 = *(v42 + 16);
  v108 = v42 + 16;
  v107(&v97 - v40, a1, a11);
  v43 = v34[12];
  v126 = a12;
  v44 = *(a12 - 1);
  v124 = *(v44 + 16);
  v120 = (v44 + 16);
  v105 = v43;
  v124(&v41[v43], v109, a12);
  v45 = v34[16];
  v125 = a13;
  v46 = *(a13 - 1);
  v47 = *(v46 + 16);
  v48 = v46 + 16;
  v109 = v45;
  v47(&v41[v45], v110, a13);
  v49 = v34[20];
  v127 = a14;
  v50 = *(a14 - 1);
  v51 = *(v50 + 16);
  v52 = v50 + 16;
  v104 = v49;
  v51(&v41[v49], v111, a14);
  v53 = v34[24];
  v128 = a15;
  v54 = *(a15 - 1);
  v55 = *(v54 + 16);
  v56 = v54 + 16;
  v103 = v53;
  v55(&v41[v53], v112, a15);
  v107(v38, v113, a11);
  v107 = v34[12];
  v124(v107 + v38, v122, v126);
  v108 = v34[16];
  v57 = v123;
  v123 = v47;
  v111 = v48;
  v47(&v38[v108], v57, v125);
  v58 = v34[20];
  v59 = v114;
  v60 = v115;
  v122 = v51;
  v114 = v52;
  v51(&v38[v58], v59, v127);
  v113 = v34;
  v61 = v34[24];
  v62 = v121;
  v121 = v55;
  v110 = v56;
  v55(&v38[v61], v62, v128);
  v63 = *(*(v60 + 8) + 8);
  v112 = v38;
  if (v63(v41, v38, a11))
  {
    v115 = a17;
    v64 = v117;
    v124(v117, &v41[v105], v126);
    v65 = v119;
    v97 = v119[12];
    v123(&v64[v97], &v41[v109], v125);
    v98 = v65[16];
    v122(&v64[v98], &v41[v104], v127);
    v104 = v65[20];
    v121(&v64[v104], &v41[v103], v128);
    v105 = v58;
    v116 = *(v116 + 8);
    v109 = v61;
    v66 = v113;
    (v116)(v41, v113);
    v67 = v112;
    v68 = v118;
    v124(v118, v107 + v112, v126);
    v124 = v65[12];
    v123(v124 + v68, &v67[v108], v125);
    v69 = v115;
    v70 = v65[16];
    v122(&v68[v70], &v67[v105], v127);
    v71 = v65[20];
    v121(&v71[v68], &v67[v109], v128);
    (v116)(v67, v66);
    v72 = v126;
    if ((*(*(v69 + 8) + 8))(v64, v68, v126))
    {
      v126 = a18;
      v73 = v117;
      v74 = v99;
      v75 = v125;
      v123(v99, &v117[v97], v125);
      v76 = v102;
      v116 = *(v102 + 48);
      v122(&v74[v116], &v73[v98], v127);
      v115 = *(v76 + 64);
      v121(&v74[v115], &v73[v104], v128);
      v120 = *(v106 + 8);
      v117 = v71;
      v77 = v119;
      v120(v73, v119);
      v78 = v118;
      v79 = v70;
      v80 = v100;
      v123(v100, v124 + v118, v75);
      v81 = *(v76 + 48);
      v122(&v80[v81], &v78[v79], v127);
      v82 = *(v76 + 64);
      v121(&v80[v82], &v117[v78], v128);
      v120(v78, v77);
      v83 = v126;
      if ((*(*(v126 + 1) + 8))(v74, v80, v75))
      {
        v84 = < infix<A, B>(_:_:)(&v74[v116], &v74[v115], &v80[v81], &v80[v82], v127, v128, a19, a20);
      }

      else
      {
        v84 = (*(v83 + 2))(v74, v80);
      }

      v86 = v84;
      v95 = *(v101 + 8);
      v95(v80, v76);
      v95(v74, v76);
    }

    else
    {
      v91 = v117;
      v90 = v118;
      v86 = (*(v69 + 16))(v117, v118, v72, v69);
      v92 = *(v106 + 8);
      v93 = v90;
      v94 = v119;
      v92(v93, v119);
      v92(v91, v94);
    }
  }

  else
  {
    v85 = v112;
    v86 = (*(v60 + 16))(v41, v112, a11, v60);
    v87 = *(v116 + 8);
    v88 = v85;
    v89 = v113;
    v87(v88, v113);
    v87(v41, v89);
  }

  return v86 & 1;
}

uint64_t <= infix<A, B, C, D, E>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int *a6, void (*a7)(char *, char *, char *), void (*a8)(char *, uint64_t, char *), uint64_t a9, void (*a10)(char *, char *, char *), char *a11, char *a12, char *a13, char *a14, char *a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20)
{
  v122 = a7;
  v123 = a8;
  v113 = a6;
  v112 = a5;
  v111 = a4;
  v110 = a3;
  v109 = a2;
  v121 = a10;
  v114 = a9;
  v115 = a16;
  swift_getTupleTypeMetadata3(0, a13, a14, a15, 0, 0);
  v102 = v21;
  v101 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v100 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v99 = &v97 - v26;
  v129 = a12;
  v130 = a13;
  v131 = a14;
  v132 = a15;
  swift_getTupleTypeMetadata(0, 4, &v129, 0, 0);
  v119 = v27;
  v106 = *(v27 - 1);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v118 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v117 = &v97 - v32;
  v129 = a11;
  v130 = a12;
  v131 = a13;
  v132 = a14;
  v133 = a15;
  swift_getTupleTypeMetadata(0, 5, &v129, 0, 0);
  v34 = v33;
  v116 = *(v33 - 1);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v97 - v40;
  v42 = *(a11 - 1);
  v107 = *(v42 + 16);
  v108 = v42 + 16;
  v107(&v97 - v40, a1, a11);
  v43 = v34[12];
  v126 = a12;
  v44 = *(a12 - 1);
  v124 = *(v44 + 16);
  v120 = (v44 + 16);
  v105 = v43;
  v124(&v41[v43], v109, a12);
  v45 = v34[16];
  v125 = a13;
  v46 = *(a13 - 1);
  v47 = *(v46 + 16);
  v48 = v46 + 16;
  v109 = v45;
  v47(&v41[v45], v110, a13);
  v49 = v34[20];
  v127 = a14;
  v50 = *(a14 - 1);
  v51 = *(v50 + 16);
  v52 = v50 + 16;
  v104 = v49;
  v51(&v41[v49], v111, a14);
  v53 = v34[24];
  v128 = a15;
  v54 = *(a15 - 1);
  v55 = *(v54 + 16);
  v56 = v54 + 16;
  v103 = v53;
  v55(&v41[v53], v112, a15);
  v107(v38, v113, a11);
  v107 = v34[12];
  v124(v107 + v38, v122, v126);
  v108 = v34[16];
  v57 = v123;
  v123 = v47;
  v111 = v48;
  v47(&v38[v108], v57, v125);
  v58 = v34[20];
  v59 = v114;
  v60 = v115;
  v122 = v51;
  v114 = v52;
  v51(&v38[v58], v59, v127);
  v113 = v34;
  v61 = v34[24];
  v62 = v121;
  v121 = v55;
  v110 = v56;
  v55(&v38[v61], v62, v128);
  v63 = *(*(v60 + 8) + 8);
  v112 = v38;
  if (v63(v41, v38, a11))
  {
    v115 = a17;
    v64 = v117;
    v124(v117, &v41[v105], v126);
    v65 = v119;
    v97 = v119[12];
    v123(&v64[v97], &v41[v109], v125);
    v98 = v65[16];
    v122(&v64[v98], &v41[v104], v127);
    v104 = v65[20];
    v121(&v64[v104], &v41[v103], v128);
    v105 = v58;
    v116 = *(v116 + 8);
    v109 = v61;
    v66 = v113;
    (v116)(v41, v113);
    v67 = v112;
    v68 = v118;
    v124(v118, v107 + v112, v126);
    v124 = v65[12];
    v123(v124 + v68, &v67[v108], v125);
    v69 = v115;
    v70 = v65[16];
    v122(&v68[v70], &v67[v105], v127);
    v71 = v65[20];
    v121(&v71[v68], &v67[v109], v128);
    (v116)(v67, v66);
    v72 = v126;
    if ((*(*(v69 + 8) + 8))(v64, v68, v126))
    {
      v126 = a18;
      v73 = v117;
      v74 = v99;
      v75 = v125;
      v123(v99, &v117[v97], v125);
      v76 = v102;
      v116 = *(v102 + 48);
      v122(&v74[v116], &v73[v98], v127);
      v115 = *(v76 + 64);
      v121(&v74[v115], &v73[v104], v128);
      v120 = *(v106 + 8);
      v117 = v71;
      v77 = v119;
      v120(v73, v119);
      v78 = v118;
      v79 = v70;
      v80 = v100;
      v123(v100, v124 + v118, v75);
      v81 = *(v76 + 48);
      v122(&v80[v81], &v78[v79], v127);
      v82 = *(v76 + 64);
      v121(&v80[v82], &v117[v78], v128);
      v120(v78, v77);
      v83 = v126;
      if ((*(*(v126 + 1) + 8))(v74, v80, v75))
      {
        v84 = <= infix<A, B>(_:_:)(&v74[v116], &v74[v115], &v80[v81], &v80[v82], v127, v128, a19, a20);
      }

      else
      {
        v84 = (*(v83 + 3))(v74, v80);
      }

      v86 = v84;
      v95 = *(v101 + 8);
      v95(v80, v76);
      v95(v74, v76);
    }

    else
    {
      v91 = v117;
      v90 = v118;
      v86 = (*(v69 + 24))(v117, v118, v72, v69);
      v92 = *(v106 + 8);
      v93 = v90;
      v94 = v119;
      v92(v93, v119);
      v92(v91, v94);
    }
  }

  else
  {
    v85 = v112;
    v86 = (*(v60 + 24))(v41, v112, a11, v60);
    v87 = *(v116 + 8);
    v88 = v85;
    v89 = v113;
    v87(v88, v113);
    v87(v41, v89);
  }

  return v86 & 1;
}

uint64_t > infix<A, B, C, D, E>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int *a6, void (*a7)(char *, char *, char *), void (*a8)(char *, uint64_t, char *), uint64_t a9, void (*a10)(char *, char *, char *), char *a11, char *a12, char *a13, char *a14, char *a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20)
{
  v122 = a7;
  v123 = a8;
  v113 = a6;
  v112 = a5;
  v111 = a4;
  v110 = a3;
  v109 = a2;
  v121 = a10;
  v114 = a9;
  v115 = a16;
  swift_getTupleTypeMetadata3(0, a13, a14, a15, 0, 0);
  v102 = v21;
  v101 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v100 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v99 = &v97 - v26;
  v129 = a12;
  v130 = a13;
  v131 = a14;
  v132 = a15;
  swift_getTupleTypeMetadata(0, 4, &v129, 0, 0);
  v119 = v27;
  v106 = *(v27 - 1);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v118 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v117 = &v97 - v32;
  v129 = a11;
  v130 = a12;
  v131 = a13;
  v132 = a14;
  v133 = a15;
  swift_getTupleTypeMetadata(0, 5, &v129, 0, 0);
  v34 = v33;
  v116 = *(v33 - 1);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v97 - v40;
  v42 = *(a11 - 1);
  v107 = *(v42 + 16);
  v108 = v42 + 16;
  v107(&v97 - v40, a1, a11);
  v43 = v34[12];
  v126 = a12;
  v44 = *(a12 - 1);
  v124 = *(v44 + 16);
  v120 = (v44 + 16);
  v105 = v43;
  v124(&v41[v43], v109, a12);
  v45 = v34[16];
  v125 = a13;
  v46 = *(a13 - 1);
  v47 = *(v46 + 16);
  v48 = v46 + 16;
  v109 = v45;
  v47(&v41[v45], v110, a13);
  v49 = v34[20];
  v127 = a14;
  v50 = *(a14 - 1);
  v51 = *(v50 + 16);
  v52 = v50 + 16;
  v104 = v49;
  v51(&v41[v49], v111, a14);
  v53 = v34[24];
  v128 = a15;
  v54 = *(a15 - 1);
  v55 = *(v54 + 16);
  v56 = v54 + 16;
  v103 = v53;
  v55(&v41[v53], v112, a15);
  v107(v38, v113, a11);
  v107 = v34[12];
  v124(v107 + v38, v122, v126);
  v108 = v34[16];
  v57 = v123;
  v123 = v47;
  v111 = v48;
  v47(&v38[v108], v57, v125);
  v58 = v34[20];
  v59 = v114;
  v60 = v115;
  v122 = v51;
  v114 = v52;
  v51(&v38[v58], v59, v127);
  v113 = v34;
  v61 = v34[24];
  v62 = v121;
  v121 = v55;
  v110 = v56;
  v55(&v38[v61], v62, v128);
  v63 = *(*(v60 + 8) + 8);
  v112 = v38;
  if (v63(v41, v38, a11))
  {
    v115 = a17;
    v64 = v117;
    v124(v117, &v41[v105], v126);
    v65 = v119;
    v97 = v119[12];
    v123(&v64[v97], &v41[v109], v125);
    v98 = v65[16];
    v122(&v64[v98], &v41[v104], v127);
    v104 = v65[20];
    v121(&v64[v104], &v41[v103], v128);
    v105 = v58;
    v116 = *(v116 + 8);
    v109 = v61;
    v66 = v113;
    (v116)(v41, v113);
    v67 = v112;
    v68 = v118;
    v124(v118, v107 + v112, v126);
    v124 = v65[12];
    v123(v124 + v68, &v67[v108], v125);
    v69 = v115;
    v70 = v65[16];
    v122(&v68[v70], &v67[v105], v127);
    v71 = v65[20];
    v121(&v71[v68], &v67[v109], v128);
    (v116)(v67, v66);
    v72 = v126;
    if ((*(*(v69 + 8) + 8))(v64, v68, v126))
    {
      v126 = a18;
      v73 = v117;
      v74 = v99;
      v75 = v125;
      v123(v99, &v117[v97], v125);
      v76 = v102;
      v116 = *(v102 + 48);
      v122(&v74[v116], &v73[v98], v127);
      v115 = *(v76 + 64);
      v121(&v74[v115], &v73[v104], v128);
      v120 = *(v106 + 8);
      v117 = v71;
      v77 = v119;
      v120(v73, v119);
      v78 = v118;
      v79 = v70;
      v80 = v100;
      v123(v100, v124 + v118, v75);
      v81 = *(v76 + 48);
      v122(&v80[v81], &v78[v79], v127);
      v82 = *(v76 + 64);
      v121(&v80[v82], &v117[v78], v128);
      v120(v78, v77);
      v83 = v126;
      if ((*(*(v126 + 1) + 8))(v74, v80, v75))
      {
        v84 = > infix<A, B>(_:_:)(&v74[v116], &v74[v115], &v80[v81], &v80[v82], v127, v128, a19, a20);
      }

      else
      {
        v84 = (*(v83 + 5))(v74, v80);
      }

      v86 = v84;
      v95 = *(v101 + 8);
      v95(v80, v76);
      v95(v74, v76);
    }

    else
    {
      v91 = v117;
      v90 = v118;
      v86 = (*(v69 + 40))(v117, v118, v72, v69);
      v92 = *(v106 + 8);
      v93 = v90;
      v94 = v119;
      v92(v93, v119);
      v92(v91, v94);
    }
  }

  else
  {
    v85 = v112;
    v86 = (*(v60 + 40))(v41, v112, a11, v60);
    v87 = *(v116 + 8);
    v88 = v85;
    v89 = v113;
    v87(v88, v113);
    v87(v41, v89);
  }

  return v86 & 1;
}

uint64_t >= infix<A, B, C, D, E>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int *a6, void (*a7)(char *, char *, char *), void (*a8)(char *, uint64_t, char *), uint64_t a9, void (*a10)(char *, char *, char *), char *a11, char *a12, char *a13, char *a14, char *a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20)
{
  v122 = a7;
  v123 = a8;
  v113 = a6;
  v112 = a5;
  v111 = a4;
  v110 = a3;
  v109 = a2;
  v121 = a10;
  v114 = a9;
  v115 = a16;
  swift_getTupleTypeMetadata3(0, a13, a14, a15, 0, 0);
  v102 = v21;
  v101 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v100 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v99 = &v97 - v26;
  v129 = a12;
  v130 = a13;
  v131 = a14;
  v132 = a15;
  swift_getTupleTypeMetadata(0, 4, &v129, 0, 0);
  v119 = v27;
  v106 = *(v27 - 1);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v118 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v117 = &v97 - v32;
  v129 = a11;
  v130 = a12;
  v131 = a13;
  v132 = a14;
  v133 = a15;
  swift_getTupleTypeMetadata(0, 5, &v129, 0, 0);
  v34 = v33;
  v116 = *(v33 - 1);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v97 - v40;
  v42 = *(a11 - 1);
  v107 = *(v42 + 16);
  v108 = v42 + 16;
  v107(&v97 - v40, a1, a11);
  v43 = v34[12];
  v126 = a12;
  v44 = *(a12 - 1);
  v124 = *(v44 + 16);
  v120 = (v44 + 16);
  v105 = v43;
  v124(&v41[v43], v109, a12);
  v45 = v34[16];
  v125 = a13;
  v46 = *(a13 - 1);
  v47 = *(v46 + 16);
  v48 = v46 + 16;
  v109 = v45;
  v47(&v41[v45], v110, a13);
  v49 = v34[20];
  v127 = a14;
  v50 = *(a14 - 1);
  v51 = *(v50 + 16);
  v52 = v50 + 16;
  v104 = v49;
  v51(&v41[v49], v111, a14);
  v53 = v34[24];
  v128 = a15;
  v54 = *(a15 - 1);
  v55 = *(v54 + 16);
  v56 = v54 + 16;
  v103 = v53;
  v55(&v41[v53], v112, a15);
  v107(v38, v113, a11);
  v107 = v34[12];
  v124(v107 + v38, v122, v126);
  v108 = v34[16];
  v57 = v123;
  v123 = v47;
  v111 = v48;
  v47(&v38[v108], v57, v125);
  v58 = v34[20];
  v59 = v114;
  v60 = v115;
  v122 = v51;
  v114 = v52;
  v51(&v38[v58], v59, v127);
  v113 = v34;
  v61 = v34[24];
  v62 = v121;
  v121 = v55;
  v110 = v56;
  v55(&v38[v61], v62, v128);
  v63 = *(*(v60 + 8) + 8);
  v112 = v38;
  if (v63(v41, v38, a11))
  {
    v115 = a17;
    v64 = v117;
    v124(v117, &v41[v105], v126);
    v65 = v119;
    v97 = v119[12];
    v123(&v64[v97], &v41[v109], v125);
    v98 = v65[16];
    v122(&v64[v98], &v41[v104], v127);
    v104 = v65[20];
    v121(&v64[v104], &v41[v103], v128);
    v105 = v58;
    v116 = *(v116 + 8);
    v109 = v61;
    v66 = v113;
    (v116)(v41, v113);
    v67 = v112;
    v68 = v118;
    v124(v118, v107 + v112, v126);
    v124 = v65[12];
    v123(v124 + v68, &v67[v108], v125);
    v69 = v115;
    v70 = v65[16];
    v122(&v68[v70], &v67[v105], v127);
    v71 = v65[20];
    v121(&v71[v68], &v67[v109], v128);
    (v116)(v67, v66);
    v72 = v126;
    if ((*(*(v69 + 8) + 8))(v64, v68, v126))
    {
      v126 = a18;
      v73 = v117;
      v74 = v99;
      v75 = v125;
      v123(v99, &v117[v97], v125);
      v76 = v102;
      v116 = *(v102 + 48);
      v122(&v74[v116], &v73[v98], v127);
      v115 = *(v76 + 64);
      v121(&v74[v115], &v73[v104], v128);
      v120 = *(v106 + 8);
      v117 = v71;
      v77 = v119;
      v120(v73, v119);
      v78 = v118;
      v79 = v70;
      v80 = v100;
      v123(v100, v124 + v118, v75);
      v81 = *(v76 + 48);
      v122(&v80[v81], &v78[v79], v127);
      v82 = *(v76 + 64);
      v121(&v80[v82], &v117[v78], v128);
      v120(v78, v77);
      v83 = v126;
      if ((*(*(v126 + 1) + 8))(v74, v80, v75))
      {
        v84 = >= infix<A, B>(_:_:)(&v74[v116], &v74[v115], &v80[v81], &v80[v82], v127, v128, a19, a20);
      }

      else
      {
        v84 = (*(v83 + 4))(v74, v80);
      }

      v86 = v84;
      v95 = *(v101 + 8);
      v95(v80, v76);
      v95(v74, v76);
    }

    else
    {
      v91 = v117;
      v90 = v118;
      v86 = (*(v69 + 32))(v117, v118, v72, v69);
      v92 = *(v106 + 8);
      v93 = v90;
      v94 = v119;
      v92(v93, v119);
      v92(v91, v94);
    }
  }

  else
  {
    v85 = v112;
    v86 = (*(v60 + 32))(v41, v112, a11, v60);
    v87 = *(v116 + 8);
    v88 = v85;
    v89 = v113;
    v87(v88, v113);
    v87(v41, v89);
  }

  return v86 & 1;
}

uint64_t == infix<A, B, C, D, E, F>(_:_:)(uint64_t a1, char *a2, char *a3, uint64_t a4, char *a5, char *a6, uint64_t a7, void (*a8)(void), uint64_t a9, uint64_t a10, void (*a11)(void), void (*a12)(void), char *a13, char *a14, char *a15, char *a16, char *a17, char *a18, char *a19, uint64_t (**a20)(char *, char *, char *), uint64_t a21, uint64_t a22, char *a23, uint64_t a24)
{
  v165 = a8;
  v162 = a7;
  v154 = a6;
  v156 = a5;
  v153 = a4;
  v152 = a3;
  v151 = a2;
  v172 = a1;
  v157 = a19;
  v166 = a12;
  v167 = a11;
  v163 = a10;
  v158 = a9;
  swift_getTupleTypeMetadata2(0, a17, a18, 0, 0);
  v140 = v24;
  v135 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v134 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v133 = &v131 - v29;
  swift_getTupleTypeMetadata3(0, a16, a17, a18, 0, 0);
  v139 = v30;
  v138 = *(v30 - 1);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v137 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v136 = &v131 - v35;
  v176 = a15;
  v177 = a16;
  v178 = a17;
  v179 = a18;
  swift_getTupleTypeMetadata(0, 4, &v176, 0, 0);
  v144 = v36;
  v143 = *(v36 - 1);
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v142 = &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v40);
  v141 = &v131 - v41;
  v176 = a14;
  v177 = a15;
  v178 = a16;
  v179 = a17;
  v180 = a18;
  swift_getTupleTypeMetadata(0, 5, &v176, 0, 0);
  v161 = v42;
  v148 = *(v42 - 1);
  v44 = MEMORY[0x1EEE9AC00](v42, v43);
  v160 = &v131 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v46);
  v159 = &v131 - v47;
  v176 = a13;
  v177 = a14;
  v178 = a15;
  v179 = a16;
  v180 = a17;
  v181 = a18;
  swift_getTupleTypeMetadata(0, 6, &v176, 0, 0);
  v49 = v48;
  v155 = *(v48 - 1);
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  v53 = &v131 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v54);
  v56 = &v131 - v55;
  v168 = a13;
  v57 = *(a13 - 1);
  v149 = *(v57 + 16);
  v150 = (v57 + 16);
  (v149)(&v131 - v55, v172, a13);
  v58 = &v56[v49[12]];
  v164 = a14;
  v59 = *(a14 - 1);
  v60 = *(v59 + 16);
  v169 = v59 + 16;
  v170 = v60;
  v147 = v58;
  v60();
  v61 = &v56[v49[16]];
  v171 = a15;
  v62 = *(a15 - 1);
  v172 = *(v62 + 16);
  v63 = v62 + 16;
  v151 = v61;
  (v172)();
  v64 = &v56[v49[20]];
  v173 = a16;
  v65 = *(a16 - 1);
  v66 = *(v65 + 16);
  v67 = v65 + 16;
  v152 = v64;
  v66();
  v68 = &v56[v49[24]];
  v175 = a17;
  v69 = *(a17 - 1);
  v70 = *(v69 + 16);
  v71 = v69 + 16;
  v146 = v68;
  v70();
  v72 = &v56[v49[28]];
  v174 = a18;
  v73 = *(a18 - 1);
  v74 = *(v73 + 16);
  v75 = v73 + 16;
  v145 = v72;
  v74();
  (v149)(v53, v162, v168);
  v150 = &v53[v49[12]];
  v170();
  v149 = &v53[v49[16]];
  v153 = v63;
  (v172)();
  v76 = &v53[v49[20]];
  v165 = v66;
  v158 = v67;
  (v66)(v76, v163, v173);
  v77 = &v53[v49[24]];
  v78 = v167;
  v167 = v70;
  v162 = v71;
  (v70)(v77, v78, v175);
  v79 = &v53[v49[28]];
  v80 = v166;
  v166 = v74;
  v163 = v75;
  (v74)(v79, v80, v174);
  v81 = *(v157 + 1);
  v154 = v56;
  v156 = v53;
  if ((v81(v56, v53) & 1) == 0)
  {
    v123 = *(v155 + 8);
    v123(v156, v49);
    v124 = v154;
    v125 = v49;
LABEL_8:
    v123(v124, v125);
LABEL_10:
    v122 = 0;
    return v122 & 1;
  }

  v168 = a20;
  v82 = v159;
  v83 = v164;
  (v170)(v159, v147, v164);
  v84 = v161;
  v131 = v161[12];
  v157 = v76;
  (v172)(&v82[v131], v151, v171);
  v147 = v84[16];
  (v165)(&v147[v82], v152, v173);
  v132 = v84[20];
  v152 = v79;
  (v167)(&v82[v132], v146, v175);
  v146 = v84[24];
  v151 = v77;
  (v166)(&v146[v82], v145, v174);
  v155 = *(v155 + 8);
  (v155)(v154, v49);
  v85 = v160;
  (v170)(v160, v150, v83);
  v170 = v84[12];
  (v172)(v170 + v85, v149, v171);
  v86 = v84[16];
  (v165)(&v86[v85], v157, v173);
  v87 = v84[20];
  (v167)(&v87[v85], v151, v175);
  v88 = v84[24];
  (v166)(v88 + v85, v152, v174);
  (v155)(v156, v49);
  if ((v168[1](v82, v85, v83) & 1) == 0)
  {
    v126 = *(v148 + 8);
    v127 = v161;
    v126(v160, v161);
    v126(v159, v127);
    goto LABEL_10;
  }

  v168 = v88;
  v169 = a21;
  v89 = v159;
  v90 = v141;
  v91 = v171;
  (v172)(v141, &v159[v131], v171);
  v92 = v144;
  v154 = v144[12];
  (v165)(&v154[v90], &v147[v89], v173);
  v156 = v92[16];
  v157 = v86;
  (v167)(&v156[v90], &v89[v132], v175);
  v155 = v92[20];
  (v166)(&v90[v155], &v146[v89], v174);
  v164 = *(v148 + 8);
  v93 = v89;
  v94 = v161;
  (v164)(v93, v161);
  v159 = v87;
  v95 = v160;
  v96 = v142;
  (v172)(v142, v170 + v160, v91);
  v97 = v92[12];
  (v165)(&v96[v97], &v157[v95], v173);
  v98 = v92[16];
  (v167)(&v98[v96], &v159[v95], v175);
  v99 = v92[20];
  (v166)(v99 + v96, v168 + v95, v174);
  (v164)(v95, v94);
  if (((*(v169 + 8))(v90, v96, v91) & 1) == 0)
  {
    v123 = *(v143 + 8);
    v123(v96, v92);
    v124 = v90;
    v125 = v92;
    goto LABEL_8;
  }

  v172 = a22;
  v100 = v136;
  v101 = v173;
  v171 = v98;
  (v165)(v136, &v154[v90], v173);
  v102 = v139;
  v168 = v139[12];
  (v167)(v168 + v100, &v156[v90], v175);
  v169 = v102[16];
  v103 = v97;
  v104 = v174;
  (v166)(&v100[v169], &v90[v155], v174);
  v105 = v92;
  v170 = v99;
  v106 = *(v143 + 8);
  v106(v90, v105);
  v107 = &v96[v103];
  v108 = v137;
  (v165)(v137, v107, v101);
  v165 = v102[12];
  (v167)(v165 + v108, &v171[v96], v175);
  v109 = v102[16];
  (v166)(&v109[v108], v170 + v96, v104);
  v106(v96, v144);
  if (((*(v172 + 8))(v100, v108, v101) & 1) == 0)
  {
    v123 = *(v138 + 8);
    v123(v108, v102);
    v124 = v100;
    v125 = v102;
    goto LABEL_8;
  }

  v173 = a23;
  v110 = v102;
  v111 = v133;
  v112 = v175;
  (v167)(v133, v168 + v100, v175);
  v113 = v108;
  v114 = v140;
  v170 = *(v140 + 48);
  v115 = v166;
  (v166)(v170 + v111, &v100[v169], v174);
  v171 = v109;
  v172 = *(v138 + 8);
  v116 = v100;
  v117 = v110;
  (v172)(v116, v110);
  v118 = v134;
  (v167)(v134, v165 + v113, v112);
  v119 = *(v114 + 48);
  (v115)(&v118[v119], &v171[v113], v174);
  v120 = v113;
  v121 = v111;
  (v172)(v120, v117);
  if ((*(v173 + 1))(v111, v118, v112))
  {
    v122 = (*(a24 + 8))(v170 + v111, &v118[v119]);
  }

  else
  {
    v122 = 0;
  }

  v129 = *(v135 + 8);
  v130 = v140;
  v129(v118, v140);
  v129(v121, v130);
  return v122 & 1;
}

uint64_t != infix<A, B, C, D, E, F>(_:_:)(uint64_t a1, char *a2, char *a3, uint64_t a4, char *a5, char *a6, uint64_t a7, void (*a8)(void), uint64_t a9, uint64_t a10, void (*a11)(void), void (*a12)(void), char *a13, char *a14, char *a15, char *a16, char *a17, char *a18, char *a19, uint64_t (**a20)(char *, char *, char *), uint64_t a21, uint64_t a22, char *a23, uint64_t a24)
{
  v165 = a8;
  v162 = a7;
  v154 = a6;
  v156 = a5;
  v153 = a4;
  v152 = a3;
  v151 = a2;
  v172 = a1;
  v157 = a19;
  v166 = a12;
  v167 = a11;
  v163 = a10;
  v158 = a9;
  swift_getTupleTypeMetadata2(0, a17, a18, 0, 0);
  v140 = v24;
  v135 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v134 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v133 = &v131 - v29;
  swift_getTupleTypeMetadata3(0, a16, a17, a18, 0, 0);
  v139 = v30;
  v138 = *(v30 - 1);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v137 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v136 = &v131 - v35;
  v176 = a15;
  v177 = a16;
  v178 = a17;
  v179 = a18;
  swift_getTupleTypeMetadata(0, 4, &v176, 0, 0);
  v144 = v36;
  v143 = *(v36 - 1);
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v142 = &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v40);
  v141 = &v131 - v41;
  v176 = a14;
  v177 = a15;
  v178 = a16;
  v179 = a17;
  v180 = a18;
  swift_getTupleTypeMetadata(0, 5, &v176, 0, 0);
  v161 = v42;
  v148 = *(v42 - 1);
  v44 = MEMORY[0x1EEE9AC00](v42, v43);
  v160 = &v131 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v46);
  v159 = &v131 - v47;
  v176 = a13;
  v177 = a14;
  v178 = a15;
  v179 = a16;
  v180 = a17;
  v181 = a18;
  swift_getTupleTypeMetadata(0, 6, &v176, 0, 0);
  v49 = v48;
  v155 = *(v48 - 1);
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  v53 = &v131 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v54);
  v56 = &v131 - v55;
  v168 = a13;
  v57 = *(a13 - 1);
  v149 = *(v57 + 16);
  v150 = (v57 + 16);
  (v149)(&v131 - v55, v172, a13);
  v58 = &v56[v49[12]];
  v164 = a14;
  v59 = *(a14 - 1);
  v60 = *(v59 + 16);
  v169 = v59 + 16;
  v170 = v60;
  v147 = v58;
  v60();
  v61 = &v56[v49[16]];
  v171 = a15;
  v62 = *(a15 - 1);
  v172 = *(v62 + 16);
  v63 = v62 + 16;
  v151 = v61;
  (v172)();
  v64 = &v56[v49[20]];
  v173 = a16;
  v65 = *(a16 - 1);
  v66 = *(v65 + 16);
  v67 = v65 + 16;
  v152 = v64;
  v66();
  v68 = &v56[v49[24]];
  v175 = a17;
  v69 = *(a17 - 1);
  v70 = *(v69 + 16);
  v71 = v69 + 16;
  v146 = v68;
  v70();
  v72 = &v56[v49[28]];
  v174 = a18;
  v73 = *(a18 - 1);
  v74 = *(v73 + 16);
  v75 = v73 + 16;
  v145 = v72;
  v74();
  (v149)(v53, v162, v168);
  v150 = &v53[v49[12]];
  v170();
  v149 = &v53[v49[16]];
  v153 = v63;
  (v172)();
  v76 = &v53[v49[20]];
  v165 = v66;
  v158 = v67;
  (v66)(v76, v163, v173);
  v77 = &v53[v49[24]];
  v78 = v167;
  v167 = v70;
  v162 = v71;
  (v70)(v77, v78, v175);
  v79 = &v53[v49[28]];
  v80 = v166;
  v166 = v74;
  v163 = v75;
  (v74)(v79, v80, v174);
  v81 = *(v157 + 1);
  v154 = v56;
  v156 = v53;
  if ((v81(v56, v53) & 1) == 0)
  {
    v123 = *(v155 + 8);
    v123(v156, v49);
    v124 = v154;
    v125 = v49;
LABEL_8:
    v123(v124, v125);
LABEL_10:
    v122 = 1;
    return v122 & 1;
  }

  v168 = a20;
  v82 = v159;
  v83 = v164;
  (v170)(v159, v147, v164);
  v84 = v161;
  v131 = v161[12];
  v157 = v76;
  (v172)(&v82[v131], v151, v171);
  v147 = v84[16];
  (v165)(&v147[v82], v152, v173);
  v132 = v84[20];
  v152 = v79;
  (v167)(&v82[v132], v146, v175);
  v146 = v84[24];
  v151 = v77;
  (v166)(&v146[v82], v145, v174);
  v155 = *(v155 + 8);
  (v155)(v154, v49);
  v85 = v160;
  (v170)(v160, v150, v83);
  v170 = v84[12];
  (v172)(v170 + v85, v149, v171);
  v86 = v84[16];
  (v165)(&v86[v85], v157, v173);
  v87 = v84[20];
  (v167)(&v87[v85], v151, v175);
  v88 = v84[24];
  (v166)(v88 + v85, v152, v174);
  (v155)(v156, v49);
  if ((v168[1](v82, v85, v83) & 1) == 0)
  {
    v126 = *(v148 + 8);
    v127 = v161;
    v126(v160, v161);
    v126(v159, v127);
    goto LABEL_10;
  }

  v168 = v88;
  v169 = a21;
  v89 = v159;
  v90 = v141;
  v91 = v171;
  (v172)(v141, &v159[v131], v171);
  v92 = v144;
  v154 = v144[12];
  (v165)(&v154[v90], &v147[v89], v173);
  v156 = v92[16];
  v157 = v86;
  (v167)(&v156[v90], &v89[v132], v175);
  v155 = v92[20];
  (v166)(&v90[v155], &v146[v89], v174);
  v164 = *(v148 + 8);
  v93 = v89;
  v94 = v161;
  (v164)(v93, v161);
  v159 = v87;
  v95 = v160;
  v96 = v142;
  (v172)(v142, v170 + v160, v91);
  v97 = v92[12];
  (v165)(&v96[v97], &v157[v95], v173);
  v98 = v92[16];
  (v167)(&v98[v96], &v159[v95], v175);
  v99 = v92[20];
  (v166)(v99 + v96, v168 + v95, v174);
  (v164)(v95, v94);
  if (((*(v169 + 8))(v90, v96, v91) & 1) == 0)
  {
    v123 = *(v143 + 8);
    v123(v96, v92);
    v124 = v90;
    v125 = v92;
    goto LABEL_8;
  }

  v172 = a22;
  v100 = v136;
  v101 = v173;
  v171 = v98;
  (v165)(v136, &v154[v90], v173);
  v102 = v139;
  v168 = v139[12];
  (v167)(v168 + v100, &v156[v90], v175);
  v169 = v102[16];
  v103 = v97;
  v104 = v174;
  (v166)(&v100[v169], &v90[v155], v174);
  v105 = v92;
  v170 = v99;
  v106 = *(v143 + 8);
  v106(v90, v105);
  v107 = &v96[v103];
  v108 = v137;
  (v165)(v137, v107, v101);
  v165 = v102[12];
  (v167)(v165 + v108, &v171[v96], v175);
  v109 = v102[16];
  (v166)(&v109[v108], v170 + v96, v104);
  v106(v96, v144);
  if (((*(v172 + 8))(v100, v108, v101) & 1) == 0)
  {
    v123 = *(v138 + 8);
    v123(v108, v102);
    v124 = v100;
    v125 = v102;
    goto LABEL_8;
  }

  v173 = a23;
  v110 = v102;
  v111 = v133;
  v112 = v175;
  (v167)(v133, v168 + v100, v175);
  v113 = v108;
  v114 = v140;
  v170 = *(v140 + 48);
  v115 = v166;
  (v166)(v170 + v111, &v100[v169], v174);
  v171 = v109;
  v172 = *(v138 + 8);
  v116 = v100;
  v117 = v110;
  (v172)(v116, v110);
  v118 = v134;
  (v167)(v134, v165 + v113, v112);
  v119 = *(v114 + 48);
  (v115)(&v118[v119], &v171[v113], v174);
  v120 = v113;
  v121 = v111;
  (v172)(v120, v117);
  if ((*(v173 + 1))(v111, v118, v112))
  {
    v122 = (*(a24 + 8))(v170 + v111, &v118[v119]) ^ 1;
  }

  else
  {
    v122 = 1;
  }

  v129 = *(v135 + 8);
  v130 = v140;
  v129(v118, v140);
  v129(v121, v130);
  return v122 & 1;
}

uint64_t < infix<A, B, C, D, E, F>(_:_:)(uint64_t a1, void (*a2)(char *, char *, char *), void (*a3)(char *, char *, char *), uint64_t a4, char *a5, void (*a6)(void), char *a7, uint64_t a8, uint64_t a9, void (*a10)(char *, char **), void (*a11)(void), void (*a12)(void), char *a13, char *a14, char *a15, char *a16, char *a17, char *a18, uint64_t a19, uint64_t a20, char *a21, char *a22, uint64_t a23, uint64_t a24)
{
  v147 = a8;
  v140 = a7;
  v138 = a6;
  v136 = a5;
  v137 = a4;
  v156 = a3;
  v154 = a2;
  v152 = a1;
  v142 = a19;
  v149 = a12;
  v150 = a11;
  v141 = a10;
  v139 = a9;
  swift_getTupleTypeMetadata3(0, a16, a17, a18, 0, 0);
  v126 = v24;
  v121 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v120 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v119 = &v118 - v29;
  v159 = a15;
  v160 = a16;
  v161 = a17;
  v162 = a18;
  swift_getTupleTypeMetadata(0, 4, &v159, 0, 0);
  v125 = v30;
  v124 = *(v30 - 1);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v123 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v122 = &v118 - v35;
  v159 = a14;
  v160 = a15;
  v161 = a16;
  v162 = a17;
  v163 = a18;
  swift_getTupleTypeMetadata(0, 5, &v159, 0, 0);
  v146 = v36;
  v132 = *(v36 - 1);
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v145 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v40);
  v144 = &v118 - v41;
  v159 = a13;
  v160 = a14;
  v161 = a15;
  v162 = a16;
  v163 = a17;
  v164 = a18;
  swift_getTupleTypeMetadata(0, 6, &v159, 0, 0);
  v43 = v42;
  v143 = *(v42 - 1);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v47 = (&v118 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v45, v48);
  v50 = &v118 - v49;
  v133 = a13;
  v51 = *(a13 - 1);
  v134 = *(v51 + 16);
  v135 = (v51 + 16);
  (v134)(&v118 - v49, v152, a13);
  v52 = &v50[v43[12]];
  v151 = a14;
  v53 = *(a14 - 1);
  v54 = *(v53 + 16);
  v152 = v53 + 16;
  v131 = v52;
  v54();
  v55 = &v50[v43[16]];
  v153 = a15;
  v56 = *(a15 - 1);
  v154 = *(v56 + 16);
  v148 = v56 + 16;
  v130 = v55;
  (v154)();
  v57 = &v50[v43[20]];
  v155 = a16;
  v58 = *(a16 - 1);
  v156 = *(v58 + 16);
  v59 = v58 + 16;
  v129 = v57;
  (v156)();
  v60 = &v50[v43[24]];
  v157 = a17;
  v61 = *(a17 - 1);
  v62 = *(v61 + 16);
  v63 = v61 + 16;
  v128 = v60;
  v62();
  v64 = &v50[v43[28]];
  v158 = a18;
  v65 = *(a18 - 1);
  v66 = *(v65 + 16);
  v67 = v65 + 16;
  v136 = v64;
  v66();
  v68 = v133;
  (v134)(v47, v140, v133);
  v135 = v47 + v43[12];
  v138 = v54;
  v54();
  v134 = v47 + v43[16];
  (v154)();
  v127 = v47 + v43[20];
  v69 = v142;
  v147 = v59;
  (v156)();
  v70 = v47 + v43[24];
  v71 = v150;
  v150 = v62;
  v139 = v63;
  (v62)(v70, v71, v157);
  v72 = v47 + v43[28];
  v73 = v149;
  v149 = v66;
  v137 = v67;
  (v66)(v72, v73, v158);
  v74 = *(*(v69 + 8) + 8);
  v140 = v50;
  v141 = v47;
  if (v74(v50, v47, v68))
  {
    v142 = a20;
    v75 = v144;
    v76 = v151;
    (v138)(v144, v131, v151);
    v133 = v72;
    v77 = v146;
    v118 = v146[12];
    v154(&v75[v118], v130, v153);
    v130 = v77[16];
    v156(&v130[v75], v129, v155);
    v129 = v77[20];
    v131 = v70;
    (v150)(&v129[v75], v128, v157);
    v128 = v77[24];
    (v149)(&v128[v75], v136, v158);
    v143 = *(v143 + 8);
    (v143)(v140, v43);
    v78 = v145;
    (v138)(v145, v135, v76);
    v152 = v77[12];
    v154(&v78[v152], v134, v153);
    v79 = v77[16];
    v156(&v79[v78], v127, v155);
    v80 = v77[20];
    (v150)(&v78[v80], v131, v157);
    v81 = v77[24];
    (v149)(&v78[v81], v133, v158);
    v82 = v43;
    v83 = v142;
    (v143)(v141, v82);
    if ((*(*(v83 + 8) + 8))(v75, v78, v76))
    {
      v151 = a21;
      v84 = v144;
      v85 = v122;
      v86 = v153;
      v143 = v81;
      v154(v122, &v144[v118], v153);
      v142 = v80;
      v87 = v125;
      v135 = v125[12];
      v156(&v135[v85], &v130[v84], v155);
      v138 = v87[16];
      v140 = v79;
      (v150)(v138 + v85, &v129[v84], v157);
      v136 = v87[20];
      (v149)(&v136[v85], &v128[v84], v158);
      v141 = *(v132 + 8);
      v88 = v146;
      v141(v84, v146);
      v89 = v145;
      v90 = v123;
      v154(v123, &v145[v152], v86);
      v154 = v87[12];
      v91 = v90;
      v156(v154 + v90, &v140[v89], v155);
      v92 = v87[16];
      (v150)(&v91[v92], &v89[v142], v157);
      v93 = v87[20];
      (v149)(&v91[v93], &v89[v143], v158);
      v141(v89, v88);
      v94 = v151;
      if ((*(*(v151 + 1) + 8))(v85, v91, v86))
      {
        v153 = a22;
        v95 = v87;
        v96 = v119;
        v97 = v155;
        v156(v119, &v135[v85], v155);
        v98 = v126;
        v146 = *(v126 + 48);
        v152 = v92;
        (v150)(v146 + v96, v138 + v85, v157);
        v145 = *(v98 + 64);
        (v149)(&v145[v96], &v136[v85], v158);
        v148 = v93;
        v151 = *(v124 + 8);
        v99 = v85;
        v100 = v95;
        (v151)(v99, v95);
        v101 = v120;
        v156(v120, v154 + v91, v97);
        v156 = *(v98 + 48);
        v102 = v153;
        (v150)(v156 + v101, &v91[v152], v157);
        v103 = *(v98 + 64);
        (v149)(&v101[v103], &v91[v148], v158);
        (v151)(v91, v100);
        if ((*(*(v102 + 1) + 8))(v96, v101, v97))
        {
          v104 = < infix<A, B>(_:_:)(v146 + v96, &v145[v96], v156 + v101, &v101[v103], v157, v158, a23, a24);
        }

        else
        {
          v104 = (*(v102 + 2))(v96, v101);
        }

        v107 = v104;
        v115 = *(v121 + 8);
        v116 = v126;
        v115(v101, v126);
        v115(v96, v116);
      }

      else
      {
        v107 = (*(v94 + 2))(v85, v91);
        v114 = *(v124 + 8);
        v114(v91, v87);
        v114(v85, v87);
      }
    }

    else
    {
      v110 = v144;
      v109 = v145;
      v107 = (*(v83 + 16))(v144, v145);
      v111 = *(v132 + 8);
      v112 = v109;
      v113 = v146;
      v111(v112, v146);
      v111(v110, v113);
    }
  }

  else
  {
    v105 = v140;
    v106 = v141;
    v107 = (*(v69 + 16))(v140, v141, v68, v69);
    v108 = *(v143 + 8);
    v108(v106, v43);
    v108(v105, v43);
  }

  return v107 & 1;
}

uint64_t <= infix<A, B, C, D, E, F>(_:_:)(uint64_t a1, void (*a2)(char *, char *, char *), void (*a3)(char *, char *, char *), uint64_t a4, char *a5, void (*a6)(void), char *a7, uint64_t a8, uint64_t a9, void (*a10)(char *, char **), void (*a11)(void), void (*a12)(void), char *a13, char *a14, char *a15, char *a16, char *a17, char *a18, uint64_t a19, uint64_t a20, char *a21, char *a22, uint64_t a23, uint64_t a24)
{
  v147 = a8;
  v140 = a7;
  v138 = a6;
  v136 = a5;
  v137 = a4;
  v156 = a3;
  v154 = a2;
  v152 = a1;
  v142 = a19;
  v149 = a12;
  v150 = a11;
  v141 = a10;
  v139 = a9;
  swift_getTupleTypeMetadata3(0, a16, a17, a18, 0, 0);
  v126 = v24;
  v121 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v120 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v119 = &v118 - v29;
  v159 = a15;
  v160 = a16;
  v161 = a17;
  v162 = a18;
  swift_getTupleTypeMetadata(0, 4, &v159, 0, 0);
  v125 = v30;
  v124 = *(v30 - 1);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v123 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v122 = &v118 - v35;
  v159 = a14;
  v160 = a15;
  v161 = a16;
  v162 = a17;
  v163 = a18;
  swift_getTupleTypeMetadata(0, 5, &v159, 0, 0);
  v146 = v36;
  v132 = *(v36 - 1);
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v145 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v40);
  v144 = &v118 - v41;
  v159 = a13;
  v160 = a14;
  v161 = a15;
  v162 = a16;
  v163 = a17;
  v164 = a18;
  swift_getTupleTypeMetadata(0, 6, &v159, 0, 0);
  v43 = v42;
  v143 = *(v42 - 1);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v47 = (&v118 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v45, v48);
  v50 = &v118 - v49;
  v133 = a13;
  v51 = *(a13 - 1);
  v134 = *(v51 + 16);
  v135 = (v51 + 16);
  (v134)(&v118 - v49, v152, a13);
  v52 = &v50[v43[12]];
  v151 = a14;
  v53 = *(a14 - 1);
  v54 = *(v53 + 16);
  v152 = v53 + 16;
  v131 = v52;
  v54();
  v55 = &v50[v43[16]];
  v153 = a15;
  v56 = *(a15 - 1);
  v154 = *(v56 + 16);
  v148 = v56 + 16;
  v130 = v55;
  (v154)();
  v57 = &v50[v43[20]];
  v155 = a16;
  v58 = *(a16 - 1);
  v156 = *(v58 + 16);
  v59 = v58 + 16;
  v129 = v57;
  (v156)();
  v60 = &v50[v43[24]];
  v157 = a17;
  v61 = *(a17 - 1);
  v62 = *(v61 + 16);
  v63 = v61 + 16;
  v128 = v60;
  v62();
  v64 = &v50[v43[28]];
  v158 = a18;
  v65 = *(a18 - 1);
  v66 = *(v65 + 16);
  v67 = v65 + 16;
  v136 = v64;
  v66();
  v68 = v133;
  (v134)(v47, v140, v133);
  v135 = v47 + v43[12];
  v138 = v54;
  v54();
  v134 = v47 + v43[16];
  (v154)();
  v127 = v47 + v43[20];
  v69 = v142;
  v147 = v59;
  (v156)();
  v70 = v47 + v43[24];
  v71 = v150;
  v150 = v62;
  v139 = v63;
  (v62)(v70, v71, v157);
  v72 = v47 + v43[28];
  v73 = v149;
  v149 = v66;
  v137 = v67;
  (v66)(v72, v73, v158);
  v74 = *(*(v69 + 8) + 8);
  v140 = v50;
  v141 = v47;
  if (v74(v50, v47, v68))
  {
    v142 = a20;
    v75 = v144;
    v76 = v151;
    (v138)(v144, v131, v151);
    v133 = v72;
    v77 = v146;
    v118 = v146[12];
    v154(&v75[v118], v130, v153);
    v130 = v77[16];
    v156(&v130[v75], v129, v155);
    v129 = v77[20];
    v131 = v70;
    (v150)(&v129[v75], v128, v157);
    v128 = v77[24];
    (v149)(&v128[v75], v136, v158);
    v143 = *(v143 + 8);
    (v143)(v140, v43);
    v78 = v145;
    (v138)(v145, v135, v76);
    v152 = v77[12];
    v154(&v78[v152], v134, v153);
    v79 = v77[16];
    v156(&v79[v78], v127, v155);
    v80 = v77[20];
    (v150)(&v78[v80], v131, v157);
    v81 = v77[24];
    (v149)(&v78[v81], v133, v158);
    v82 = v43;
    v83 = v142;
    (v143)(v141, v82);
    if ((*(*(v83 + 8) + 8))(v75, v78, v76))
    {
      v151 = a21;
      v84 = v144;
      v85 = v122;
      v86 = v153;
      v143 = v81;
      v154(v122, &v144[v118], v153);
      v142 = v80;
      v87 = v125;
      v135 = v125[12];
      v156(&v135[v85], &v130[v84], v155);
      v138 = v87[16];
      v140 = v79;
      (v150)(v138 + v85, &v129[v84], v157);
      v136 = v87[20];
      (v149)(&v136[v85], &v128[v84], v158);
      v141 = *(v132 + 8);
      v88 = v146;
      v141(v84, v146);
      v89 = v145;
      v90 = v123;
      v154(v123, &v145[v152], v86);
      v154 = v87[12];
      v91 = v90;
      v156(v154 + v90, &v140[v89], v155);
      v92 = v87[16];
      (v150)(&v91[v92], &v89[v142], v157);
      v93 = v87[20];
      (v149)(&v91[v93], &v89[v143], v158);
      v141(v89, v88);
      v94 = v151;
      if ((*(*(v151 + 1) + 8))(v85, v91, v86))
      {
        v153 = a22;
        v95 = v87;
        v96 = v119;
        v97 = v155;
        v156(v119, &v135[v85], v155);
        v98 = v126;
        v146 = *(v126 + 48);
        v152 = v92;
        (v150)(v146 + v96, v138 + v85, v157);
        v145 = *(v98 + 64);
        (v149)(&v145[v96], &v136[v85], v158);
        v148 = v93;
        v151 = *(v124 + 8);
        v99 = v85;
        v100 = v95;
        (v151)(v99, v95);
        v101 = v120;
        v156(v120, v154 + v91, v97);
        v156 = *(v98 + 48);
        v102 = v153;
        (v150)(v156 + v101, &v91[v152], v157);
        v103 = *(v98 + 64);
        (v149)(&v101[v103], &v91[v148], v158);
        (v151)(v91, v100);
        if ((*(*(v102 + 1) + 8))(v96, v101, v97))
        {
          v104 = <= infix<A, B>(_:_:)(v146 + v96, &v145[v96], v156 + v101, &v101[v103], v157, v158, a23, a24);
        }

        else
        {
          v104 = (*(v102 + 3))(v96, v101);
        }

        v107 = v104;
        v115 = *(v121 + 8);
        v116 = v126;
        v115(v101, v126);
        v115(v96, v116);
      }

      else
      {
        v107 = (*(v94 + 3))(v85, v91);
        v114 = *(v124 + 8);
        v114(v91, v87);
        v114(v85, v87);
      }
    }

    else
    {
      v110 = v144;
      v109 = v145;
      v107 = (*(v83 + 24))(v144, v145);
      v111 = *(v132 + 8);
      v112 = v109;
      v113 = v146;
      v111(v112, v146);
      v111(v110, v113);
    }
  }

  else
  {
    v105 = v140;
    v106 = v141;
    v107 = (*(v69 + 24))(v140, v141, v68, v69);
    v108 = *(v143 + 8);
    v108(v106, v43);
    v108(v105, v43);
  }

  return v107 & 1;
}

uint64_t > infix<A, B, C, D, E, F>(_:_:)(uint64_t a1, void (*a2)(char *, char *, char *), void (*a3)(char *, char *, char *), uint64_t a4, char *a5, void (*a6)(void), char *a7, uint64_t a8, uint64_t a9, void (*a10)(char *, char **), void (*a11)(void), void (*a12)(void), char *a13, char *a14, char *a15, char *a16, char *a17, char *a18, uint64_t a19, uint64_t a20, char *a21, char *a22, uint64_t a23, uint64_t a24)
{
  v147 = a8;
  v140 = a7;
  v138 = a6;
  v136 = a5;
  v137 = a4;
  v156 = a3;
  v154 = a2;
  v152 = a1;
  v142 = a19;
  v149 = a12;
  v150 = a11;
  v141 = a10;
  v139 = a9;
  swift_getTupleTypeMetadata3(0, a16, a17, a18, 0, 0);
  v126 = v24;
  v121 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v120 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v119 = &v118 - v29;
  v159 = a15;
  v160 = a16;
  v161 = a17;
  v162 = a18;
  swift_getTupleTypeMetadata(0, 4, &v159, 0, 0);
  v125 = v30;
  v124 = *(v30 - 1);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v123 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v122 = &v118 - v35;
  v159 = a14;
  v160 = a15;
  v161 = a16;
  v162 = a17;
  v163 = a18;
  swift_getTupleTypeMetadata(0, 5, &v159, 0, 0);
  v146 = v36;
  v132 = *(v36 - 1);
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v145 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v40);
  v144 = &v118 - v41;
  v159 = a13;
  v160 = a14;
  v161 = a15;
  v162 = a16;
  v163 = a17;
  v164 = a18;
  swift_getTupleTypeMetadata(0, 6, &v159, 0, 0);
  v43 = v42;
  v143 = *(v42 - 1);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v47 = (&v118 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v45, v48);
  v50 = &v118 - v49;
  v133 = a13;
  v51 = *(a13 - 1);
  v134 = *(v51 + 16);
  v135 = (v51 + 16);
  (v134)(&v118 - v49, v152, a13);
  v52 = &v50[v43[12]];
  v151 = a14;
  v53 = *(a14 - 1);
  v54 = *(v53 + 16);
  v152 = v53 + 16;
  v131 = v52;
  v54();
  v55 = &v50[v43[16]];
  v153 = a15;
  v56 = *(a15 - 1);
  v154 = *(v56 + 16);
  v148 = v56 + 16;
  v130 = v55;
  (v154)();
  v57 = &v50[v43[20]];
  v155 = a16;
  v58 = *(a16 - 1);
  v156 = *(v58 + 16);
  v59 = v58 + 16;
  v129 = v57;
  (v156)();
  v60 = &v50[v43[24]];
  v157 = a17;
  v61 = *(a17 - 1);
  v62 = *(v61 + 16);
  v63 = v61 + 16;
  v128 = v60;
  v62();
  v64 = &v50[v43[28]];
  v158 = a18;
  v65 = *(a18 - 1);
  v66 = *(v65 + 16);
  v67 = v65 + 16;
  v136 = v64;
  v66();
  v68 = v133;
  (v134)(v47, v140, v133);
  v135 = v47 + v43[12];
  v138 = v54;
  v54();
  v134 = v47 + v43[16];
  (v154)();
  v127 = v47 + v43[20];
  v69 = v142;
  v147 = v59;
  (v156)();
  v70 = v47 + v43[24];
  v71 = v150;
  v150 = v62;
  v139 = v63;
  (v62)(v70, v71, v157);
  v72 = v47 + v43[28];
  v73 = v149;
  v149 = v66;
  v137 = v67;
  (v66)(v72, v73, v158);
  v74 = *(*(v69 + 8) + 8);
  v140 = v50;
  v141 = v47;
  if (v74(v50, v47, v68))
  {
    v142 = a20;
    v75 = v144;
    v76 = v151;
    (v138)(v144, v131, v151);
    v133 = v72;
    v77 = v146;
    v118 = v146[12];
    v154(&v75[v118], v130, v153);
    v130 = v77[16];
    v156(&v130[v75], v129, v155);
    v129 = v77[20];
    v131 = v70;
    (v150)(&v129[v75], v128, v157);
    v128 = v77[24];
    (v149)(&v128[v75], v136, v158);
    v143 = *(v143 + 8);
    (v143)(v140, v43);
    v78 = v145;
    (v138)(v145, v135, v76);
    v152 = v77[12];
    v154(&v78[v152], v134, v153);
    v79 = v77[16];
    v156(&v79[v78], v127, v155);
    v80 = v77[20];
    (v150)(&v78[v80], v131, v157);
    v81 = v77[24];
    (v149)(&v78[v81], v133, v158);
    v82 = v43;
    v83 = v142;
    (v143)(v141, v82);
    if ((*(*(v83 + 8) + 8))(v75, v78, v76))
    {
      v151 = a21;
      v84 = v144;
      v85 = v122;
      v86 = v153;
      v143 = v81;
      v154(v122, &v144[v118], v153);
      v142 = v80;
      v87 = v125;
      v135 = v125[12];
      v156(&v135[v85], &v130[v84], v155);
      v138 = v87[16];
      v140 = v79;
      (v150)(v138 + v85, &v129[v84], v157);
      v136 = v87[20];
      (v149)(&v136[v85], &v128[v84], v158);
      v141 = *(v132 + 8);
      v88 = v146;
      v141(v84, v146);
      v89 = v145;
      v90 = v123;
      v154(v123, &v145[v152], v86);
      v154 = v87[12];
      v91 = v90;
      v156(v154 + v90, &v140[v89], v155);
      v92 = v87[16];
      (v150)(&v91[v92], &v89[v142], v157);
      v93 = v87[20];
      (v149)(&v91[v93], &v89[v143], v158);
      v141(v89, v88);
      v94 = v151;
      if ((*(*(v151 + 1) + 8))(v85, v91, v86))
      {
        v153 = a22;
        v95 = v87;
        v96 = v119;
        v97 = v155;
        v156(v119, &v135[v85], v155);
        v98 = v126;
        v146 = *(v126 + 48);
        v152 = v92;
        (v150)(v146 + v96, v138 + v85, v157);
        v145 = *(v98 + 64);
        (v149)(&v145[v96], &v136[v85], v158);
        v148 = v93;
        v151 = *(v124 + 8);
        v99 = v85;
        v100 = v95;
        (v151)(v99, v95);
        v101 = v120;
        v156(v120, v154 + v91, v97);
        v156 = *(v98 + 48);
        v102 = v153;
        (v150)(v156 + v101, &v91[v152], v157);
        v103 = *(v98 + 64);
        (v149)(&v101[v103], &v91[v148], v158);
        (v151)(v91, v100);
        if ((*(*(v102 + 1) + 8))(v96, v101, v97))
        {
          v104 = > infix<A, B>(_:_:)(v146 + v96, &v145[v96], v156 + v101, &v101[v103], v157, v158, a23, a24);
        }

        else
        {
          v104 = (*(v102 + 5))(v96, v101);
        }

        v107 = v104;
        v115 = *(v121 + 8);
        v116 = v126;
        v115(v101, v126);
        v115(v96, v116);
      }

      else
      {
        v107 = (*(v94 + 5))(v85, v91);
        v114 = *(v124 + 8);
        v114(v91, v87);
        v114(v85, v87);
      }
    }

    else
    {
      v110 = v144;
      v109 = v145;
      v107 = (*(v83 + 40))(v144, v145);
      v111 = *(v132 + 8);
      v112 = v109;
      v113 = v146;
      v111(v112, v146);
      v111(v110, v113);
    }
  }

  else
  {
    v105 = v140;
    v106 = v141;
    v107 = (*(v69 + 40))(v140, v141, v68, v69);
    v108 = *(v143 + 8);
    v108(v106, v43);
    v108(v105, v43);
  }

  return v107 & 1;
}

uint64_t >= infix<A, B, C, D, E, F>(_:_:)(uint64_t a1, void (*a2)(char *, char *, char *), void (*a3)(char *, char *, char *), uint64_t a4, char *a5, void (*a6)(void), char *a7, uint64_t a8, uint64_t a9, void (*a10)(char *, char **), void (*a11)(void), void (*a12)(void), char *a13, char *a14, char *a15, char *a16, char *a17, char *a18, uint64_t a19, uint64_t a20, char *a21, char *a22, uint64_t a23, uint64_t a24)
{
  v147 = a8;
  v140 = a7;
  v138 = a6;
  v136 = a5;
  v137 = a4;
  v156 = a3;
  v154 = a2;
  v152 = a1;
  v142 = a19;
  v149 = a12;
  v150 = a11;
  v141 = a10;
  v139 = a9;
  swift_getTupleTypeMetadata3(0, a16, a17, a18, 0, 0);
  v126 = v24;
  v121 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v120 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v119 = &v118 - v29;
  v159 = a15;
  v160 = a16;
  v161 = a17;
  v162 = a18;
  swift_getTupleTypeMetadata(0, 4, &v159, 0, 0);
  v125 = v30;
  v124 = *(v30 - 1);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v123 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v122 = &v118 - v35;
  v159 = a14;
  v160 = a15;
  v161 = a16;
  v162 = a17;
  v163 = a18;
  swift_getTupleTypeMetadata(0, 5, &v159, 0, 0);
  v146 = v36;
  v132 = *(v36 - 1);
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v145 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v40);
  v144 = &v118 - v41;
  v159 = a13;
  v160 = a14;
  v161 = a15;
  v162 = a16;
  v163 = a17;
  v164 = a18;
  swift_getTupleTypeMetadata(0, 6, &v159, 0, 0);
  v43 = v42;
  v143 = *(v42 - 1);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v47 = (&v118 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v45, v48);
  v50 = &v118 - v49;
  v133 = a13;
  v51 = *(a13 - 1);
  v134 = *(v51 + 16);
  v135 = (v51 + 16);
  (v134)(&v118 - v49, v152, a13);
  v52 = &v50[v43[12]];
  v151 = a14;
  v53 = *(a14 - 1);
  v54 = *(v53 + 16);
  v152 = v53 + 16;
  v131 = v52;
  v54();
  v55 = &v50[v43[16]];
  v153 = a15;
  v56 = *(a15 - 1);
  v154 = *(v56 + 16);
  v148 = v56 + 16;
  v130 = v55;
  (v154)();
  v57 = &v50[v43[20]];
  v155 = a16;
  v58 = *(a16 - 1);
  v156 = *(v58 + 16);
  v59 = v58 + 16;
  v129 = v57;
  (v156)();
  v60 = &v50[v43[24]];
  v157 = a17;
  v61 = *(a17 - 1);
  v62 = *(v61 + 16);
  v63 = v61 + 16;
  v128 = v60;
  v62();
  v64 = &v50[v43[28]];
  v158 = a18;
  v65 = *(a18 - 1);
  v66 = *(v65 + 16);
  v67 = v65 + 16;
  v136 = v64;
  v66();
  v68 = v133;
  (v134)(v47, v140, v133);
  v135 = v47 + v43[12];
  v138 = v54;
  v54();
  v134 = v47 + v43[16];
  (v154)();
  v127 = v47 + v43[20];
  v69 = v142;
  v147 = v59;
  (v156)();
  v70 = v47 + v43[24];
  v71 = v150;
  v150 = v62;
  v139 = v63;
  (v62)(v70, v71, v157);
  v72 = v47 + v43[28];
  v73 = v149;
  v149 = v66;
  v137 = v67;
  (v66)(v72, v73, v158);
  v74 = *(*(v69 + 8) + 8);
  v140 = v50;
  v141 = v47;
  if (v74(v50, v47, v68))
  {
    v142 = a20;
    v75 = v144;
    v76 = v151;
    (v138)(v144, v131, v151);
    v133 = v72;
    v77 = v146;
    v118 = v146[12];
    v154(&v75[v118], v130, v153);
    v130 = v77[16];
    v156(&v130[v75], v129, v155);
    v129 = v77[20];
    v131 = v70;
    (v150)(&v129[v75], v128, v157);
    v128 = v77[24];
    (v149)(&v128[v75], v136, v158);
    v143 = *(v143 + 8);
    (v143)(v140, v43);
    v78 = v145;
    (v138)(v145, v135, v76);
    v152 = v77[12];
    v154(&v78[v152], v134, v153);
    v79 = v77[16];
    v156(&v79[v78], v127, v155);
    v80 = v77[20];
    (v150)(&v78[v80], v131, v157);
    v81 = v77[24];
    (v149)(&v78[v81], v133, v158);
    v82 = v43;
    v83 = v142;
    (v143)(v141, v82);
    if ((*(*(v83 + 8) + 8))(v75, v78, v76))
    {
      v151 = a21;
      v84 = v144;
      v85 = v122;
      v86 = v153;
      v143 = v81;
      v154(v122, &v144[v118], v153);
      v142 = v80;
      v87 = v125;
      v135 = v125[12];
      v156(&v135[v85], &v130[v84], v155);
      v138 = v87[16];
      v140 = v79;
      (v150)(v138 + v85, &v129[v84], v157);
      v136 = v87[20];
      (v149)(&v136[v85], &v128[v84], v158);
      v141 = *(v132 + 8);
      v88 = v146;
      v141(v84, v146);
      v89 = v145;
      v90 = v123;
      v154(v123, &v145[v152], v86);
      v154 = v87[12];
      v91 = v90;
      v156(v154 + v90, &v140[v89], v155);
      v92 = v87[16];
      (v150)(&v91[v92], &v89[v142], v157);
      v93 = v87[20];
      (v149)(&v91[v93], &v89[v143], v158);
      v141(v89, v88);
      v94 = v151;
      if ((*(*(v151 + 1) + 8))(v85, v91, v86))
      {
        v153 = a22;
        v95 = v87;
        v96 = v119;
        v97 = v155;
        v156(v119, &v135[v85], v155);
        v98 = v126;
        v146 = *(v126 + 48);
        v152 = v92;
        (v150)(v146 + v96, v138 + v85, v157);
        v145 = *(v98 + 64);
        (v149)(&v145[v96], &v136[v85], v158);
        v148 = v93;
        v151 = *(v124 + 8);
        v99 = v85;
        v100 = v95;
        (v151)(v99, v95);
        v101 = v120;
        v156(v120, v154 + v91, v97);
        v156 = *(v98 + 48);
        v102 = v153;
        (v150)(v156 + v101, &v91[v152], v157);
        v103 = *(v98 + 64);
        (v149)(&v101[v103], &v91[v148], v158);
        (v151)(v91, v100);
        if ((*(*(v102 + 1) + 8))(v96, v101, v97))
        {
          v104 = >= infix<A, B>(_:_:)(v146 + v96, &v145[v96], v156 + v101, &v101[v103], v157, v158, a23, a24);
        }

        else
        {
          v104 = (*(v102 + 4))(v96, v101);
        }

        v107 = v104;
        v115 = *(v121 + 8);
        v116 = v126;
        v115(v101, v126);
        v115(v96, v116);
      }

      else
      {
        v107 = (*(v94 + 4))(v85, v91);
        v114 = *(v124 + 8);
        v114(v91, v87);
        v114(v85, v87);
      }
    }

    else
    {
      v110 = v144;
      v109 = v145;
      v107 = (*(v83 + 32))(v144, v145);
      v111 = *(v132 + 8);
      v112 = v109;
      v113 = v146;
      v111(v112, v146);
      v111(v110, v113);
    }
  }

  else
  {
    v105 = v140;
    v106 = v141;
    v107 = (*(v69 + 32))(v140, v141, v68, v69);
    v108 = *(v143 + 8);
    v108(v106, v43);
    v108(v105, v43);
  }

  return v107 & 1;
}

uint64_t SIMD.indices.getter(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 + 48) + 40))(a1) < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

uint64_t SIMD.init(repeating:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v7, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v18 - v11;
  (*(v7 + 48))(a2, v7);
  v13 = (*(v7 + 40))(a2, v7);
  if (v13 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v20 = a4;
  v21 = a2;
  if (v13)
  {
    v14 = 0;
    v15 = *(v19 + 16);
    do
    {
      v16 = v13;
      v15(v12, a1, v9);
      (*(v7 + 64))(v12, v14, v21, v7);
      v13 = v16;
      ++v14;
    }

    while (v16 != v14);
  }

  return (*(v19 + 8))(a1, v9);
}

uint64_t static SIMD.== infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v33 = a2;
  v6 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v6, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v8 = v7;
  v9 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v30 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v29 = v28 - v14;
  v15 = *(v6 + 40);
  v31 = a3;
  v32 = a1;
  v34 = v6;
  v16 = v15(a3, v6);
  if (v16 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v16)
  {
    v17 = 0;
    v28[0] = v16;
    v28[1] = v34 + 56;
    v18 = (v9 + 8);
    v19 = 1;
    v21 = v30;
    v20 = v31;
    do
    {
      if (v19)
      {
        v22 = v34;
        v23 = *(v34 + 7);
        v24 = v29;
        v23(v17, v20, v34);
        v23(v17, v20, v22);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v22, v20, v8, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
        v19 = (*(*(AssociatedConformanceWitness + 8) + 8))(v24, v21, v8);
        v26 = *v18;
        (*v18)(v21, v8);
        v26(v24, v8);
        v16 = v28[0];
      }

      else
      {
        v19 = 0;
      }

      ++v17;
    }

    while (v16 != v17);
  }

  else
  {
    v19 = 1;
  }

  return v19 & 1;
}

uint64_t SIMD.hash(into:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v5, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18 - v10;
  result = (*(v5 + 40))(a2, v5);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = result;
  v19 = a1;
  if (result)
  {
    result = 0;
    v18 = *(v5 + 56);
    v14 = (v8 + 8);
    do
    {
      v15 = result + 1;
      v16 = v13;
      v18(result);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, a2, v7, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      (*(AssociatedConformanceWitness + 24))(v19, v7, AssociatedConformanceWitness);
      (*v14)(v11, v7);
      v13 = v16;
      result = v15;
    }

    while (v16 != v15);
  }

  return result;
}

uint64_t SIMD.encode(to:)(void *a1, Class *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v9 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v9, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v38 = &v32 - v14;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v15);
  (*(v16 + 32))(v41, v15, v16);
  v17 = *(v9 + 40);
  v36 = a2;
  v37 = v6;
  v39 = v9;
  v18 = v17(a2, v9);
  if (v18 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v18)
  {
    v19 = 0;
    v34 = *(v39 + 7);
    v35 = (v39 + 56);
    v33 = (v12 + 8);
    while (1)
    {
      v44 = v5;
      v20 = v18;
      v21 = v36;
      v22 = v11;
      v23 = v39;
      v34(v19, v36, v39);
      v24 = v42;
      v25 = v43;
      __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v40 = *(v25 + 160);
      v26 = v23;
      v11 = v22;
      v27 = v21;
      v28 = v38;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v26, v27, v22, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Encodable);
      v30 = v44;
      v40(v28, v22, AssociatedConformanceWitness, v24, v25);
      v5 = v30;
      if (v30)
      {
        break;
      }

      ++v19;
      (*v33)(v28, v11);
      v18 = v20;
      if (v20 == v19)
      {
        return __swift_destroy_boxed_opaque_existential_1Tm(v41);
      }
    }

    (*v33)(v28, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v41);
}

uint64_t SIMD.init(from:)@<X0>(uint64_t *a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a4;
  v6 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v106 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v100 - v10;
  v12 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v9, v13);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v6[6])(a2, v6);
  v16 = a1[3];
  v17 = a1[4];
  v104 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v16);
  v18 = v114;
  (*(v17 + 32))(v111, v16, v17);
  if (!v18)
  {
    v108 = v11;
    v101 = v12;
    v21 = v112;
    v22 = v113;
    __swift_project_boxed_opaque_existential_0Tm(v111, v112);
    v23 = (*(v22 + 16))(v21, v22);
    LOBYTE(v22) = v24;
    v25 = v6[5];
    v107 = v6;
    v26 = (v25)(a2);
    v105 = v15;
    if ((v22 & 1) == 0 && v23 == v26)
    {
      v27 = (v25)(a2, v107);
      if (v27 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v28 = v27;
      if (v27)
      {
        v29 = 0;
        v30 = v107;
        v103 = (v107 + 8);
        while (1)
        {
          v114 = 0;
          v32 = v112;
          v31 = v113;
          __swift_mutable_project_boxed_opaque_existential_1(v111, v112);
          v107 = *(v31 + 176);
          v33 = v106;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v30, a2, v106, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Decodable);
          v35 = v114;
          (v107)(v33, v33, AssociatedConformanceWitness, v32, v31);
          if (v35)
          {
            break;
          }

          (*(v30 + 8))(v108, v29++, a2, v30);
          if (v28 == v29)
          {
            goto LABEL_12;
          }
        }

        (*(v101 + 8))(v105, a2);
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
      }

      else
      {
LABEL_12:
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        (*(v101 + 32))(v102, v105, a2);
      }

      goto LABEL_3;
    }

    v114 = swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v108 = v36;
    v37 = v104[3];
    v38 = v104[4];
    __swift_project_boxed_opaque_existential_0Tm(v104, v37);
    v106 = (*(v38 + 8))(v37, v38);
    v39 = _StringGuts.init(_initialCapacity:)(41);
    v49 = v40;
    v109 = v39;
    v110 = v40;
    v50 = 0x8000000180670860 | 0x8000000000000000;
    v51 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v51 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 || (v39 & ~v40 & 0x2000000000000000) != 0)
    {
      v103 = v25;
      if ((0x8000000180670860 & 0x2000000000000000 & v40) != 0 && (v52 = specialized _SmallString.init(_:appending:)(v39, v40, 0xD00000000000001DLL, 0x8000000180670860 | 0x8000000000000000), (v54 & 1) == 0))
      {
        v56 = v52;
        v57 = v53;
        v49;
        0x8000000180670860 | 0x8000000000000000;
        v109 = v56;
        v110 = v57;
        v50 = v57;
      }

      else
      {
        if ((0x8000000180670860 & 0x2000000000000000) != 0)
        {
          v55 = (0x8000000180670860 >> 56) & 0xF;
        }

        else
        {
          v55 = 29;
        }

        _StringGuts.append(_:)(0xD00000000000001DLL, 0x8000000180670860 | 0x8000000000000000, 0, v55, v41, v42, v43, v44, v45, v46, v47, v48);
        0x8000000180670860 | 0x8000000000000000;
        v56 = v109;
        v50 = v110;
      }

      v58 = v101;
      v25 = v103;
    }

    else
    {
      v56 = 0xD00000000000001DLL;
      v40;
      v109 = 0xD00000000000001DLL;
      v110 = 0x8000000180670860 | 0x8000000000000000;
      v58 = v101;
    }

    v59 = v105;
    v60 = (v25)(a2, v107);
    (*(v58 + 8))(v59, a2);
    v62 = _int64ToString(_:radix:uppercase:)(v60, 10, 0, swift_int64ToString);
    v71 = v61;
    v72 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v72 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (v72 || (v56 & ~v50 & 0x2000000000000000) != 0)
    {
      if ((v50 & 0x2000000000000000) == 0)
      {
        if ((v61 & 0x2000000000000000) != 0)
        {
          goto LABEL_36;
        }

LABEL_34:
        v73 = v62 & 0xFFFFFFFFFFFFLL;
LABEL_37:
        v77 = v108;
        v78 = v106;
        _StringGuts.append(_:)(v62, v71, 0, v73, v63, v64, v65, v66, v67, v68, v69, v70);
        v71;
        v62 = v109;
        v71 = v110;
        goto LABEL_42;
      }

      if ((v61 & 0x2000000000000000) == 0)
      {
        goto LABEL_34;
      }

      v74 = specialized _SmallString.init(_:appending:)(v56, v50, v62, v61);
      if (v76)
      {
LABEL_36:
        v73 = HIBYTE(v71) & 0xF;
        goto LABEL_37;
      }

      v79 = v74;
      v80 = v75;
      v50;
      v71;
      v109 = v79;
      v110 = v80;
      v71 = v80;
      v62 = v79;
    }

    else
    {
      v50;
      v109 = v62;
      v110 = v71;
    }

    v77 = v108;
    v78 = v106;
LABEL_42:
    v90 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" elements.", 0xAuLL, 1);
    countAndFlagsBits = v90._countAndFlagsBits;
    object = v90._object;
    v92 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v92 = v62 & 0xFFFFFFFFFFFFLL;
    }

    if (!v92 && (v62 & ~v71 & 0x2000000000000000) == 0)
    {
      v94 = v90._countAndFlagsBits;
      v71;
      goto LABEL_52;
    }

    if ((v71 & 0x2000000000000000) != 0)
    {
      if ((v90._object & 0x2000000000000000) != 0)
      {
        v96 = specialized _SmallString.init(_:appending:)(v62, v71, v90._countAndFlagsBits, v90._object);
        if ((v98 & 1) == 0)
        {
          v94 = v96;
          v99 = v97;
          v71;
          v90._object;
          object = v99;
          v95 = v104;
          goto LABEL_53;
        }

        v93 = (v90._object >> 56) & 0xF;
        countAndFlagsBits = v90._countAndFlagsBits;
        goto LABEL_51;
      }
    }

    else if ((v90._object & 0x2000000000000000) != 0)
    {
      v93 = (v90._object >> 56) & 0xF;
LABEL_51:
      _StringGuts.append(_:)(countAndFlagsBits, v90._object, 0, v93, v82, v83, v84, v85, v86, v87, v88, v89);
      v90._object;
      v94 = v109;
      object = v110;
LABEL_52:
      v95 = v104;
LABEL_53:
      *v77 = v78;
      *(v77 + 1) = v94;
      *(v77 + 2) = object;
      *(v77 + 3) = 0;
      v77[72] = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      v19 = v95;
      return __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    v93 = v90._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_51;
  }

  (*(v12 + 8))(v15, a2);
LABEL_3:
  v19 = v104;
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

unint64_t SIMD.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = _StringGuts.init(_initialCapacity:)(3);
  v9 = v7;
  v10 = v8;
  v228 = v7;
  v229 = v8;
  v11 = HIBYTE(v8) & 0xF;
  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  v225 = a2;
  v226 = a1;
  if (!v13 && (v7 & ~v8 & 0x2000000000000000) == 0)
  {
    v8;
    v21 = 0xE000000000000000;
    v228 = 0;
LABEL_20:
    v229 = v21;
    goto LABEL_63;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v8;
    0xE000000000000000;
    v20 = 0xA000000000000000;
    if (!(v10 & 0x80808080808080 | v9 & 0x8080808080808080))
    {
      v20 = 0xE000000000000000;
    }

    v21 = v20 & 0xFF00000000000000 | (v11 << 56) | v10 & 0xFFFFFFFFFFFFFFLL;
    v228 = v9;
    goto LABEL_20;
  }

  0xE000000000000000;
  v15 = v12;
  if ((v10 & 0x1000000000000000) != 0)
  {
    v15 = String.UTF8View._foreignCount()();
    if ((v9 & 0x2000000000000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((v9 & 0x2000000000000000) == 0)
  {
    goto LABEL_22;
  }

  if (swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
  {
    v16 = _StringGuts.nativeUnusedCapacity.getter(v9, v10);
    if (v17)
    {
      goto LABEL_295;
    }

    if (v15 > 15 || (v16 & 0x8000000000000000) == 0)
    {
      v18 = _StringGuts.nativeUnusedCapacity.getter(v9, v10);
      if ((v19 & 1) != 0 || (v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    }

    goto LABEL_28;
  }

LABEL_22:
  if (v15 > 15)
  {
    v22 = _StringGuts.nativeUnusedCapacity.getter(v9, v10);
    if ((v23 & 1) != 0 || (v22 & 0x8000000000000000) != 0)
    {
      if ((v9 & 0x2000000000000000) == 0)
      {
LABEL_34:
        v25 = _StringGuts.nativeCapacity.getter(v9, v10);
        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = v25;
        }

        if (v27 + 0x4000000000000000 < 0)
        {
          __break(1u);
LABEL_288:
          v196 = 2;
          goto LABEL_259;
        }

        v28 = 2 * v27;
        if (v28 > v15)
        {
          v15 = v28;
        }

        goto LABEL_40;
      }

LABEL_33:
      swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL);
      goto LABEL_34;
    }

    if ((v9 & 0x2000000000000000) == 0)
    {
LABEL_40:
      _StringGuts.grow(_:)(v15);
LABEL_41:
      v227 = 0uLL;
      closure #1 in _StringGuts.append(_:)(&v227, 0, &v228, 1);
      swift_bridgeObjectRelease_n(0xE000000000000000, 2);
      goto LABEL_63;
    }

LABEL_26:
    if (swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_28:
  if ((v10 & 0x1000000000000000) != 0)
  {
    v15 = _StringGuts._foreignConvertedToSmall()(v9, v10);
    a1 = v29;
  }

  else
  {
    if ((v9 & 0x1000000000000000) != 0)
    {
      v24 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = _StringObject.sharedUTF8.getter(v9, v10);
      v12 = v206;
    }

    closure #1 in _StringGuts._convertedToSmall()(v24, v12, &v227, v14);
    a1 = *(&v227 + 1);
    v15 = v227;
  }

  v9 = 0xE000000000000000;
  0xE000000000000000;
  v30._rawBits = 1;
  v31._rawBits = 1;
  v32._rawBits = _StringGuts.validateScalarRange(_:)(v30, v31, 0, 0xE000000000000000)._rawBits;
  if (v32._rawBits < 0x10000)
  {
    v32._rawBits |= 3;
  }

  if (v32._rawBits >> 16 || v33._rawBits >= 0x10000)
  {
    v35 = specialized static String._copying(_:)(v32._rawBits, v33, 0, 0xE000000000000000);
    v9 = v36;
    0xE000000000000000;
  }

  else
  {
    v35 = 0;
  }

  if ((v9 & 0x2000000000000000) == 0)
  {
    goto LABEL_278;
  }

  v9;
  while (2)
  {
    v37 = HIBYTE(a1) & 0xF;
    v38 = HIBYTE(v9) & 0xF;
    v39 = v38 + v37;
    if (v38 + v37 > 0xF)
    {
      goto LABEL_294;
    }

    0xE000000000000000;
    if (v38)
    {
      v40 = 0;
      v41 = 0;
      v42 = 8 * v37;
      do
      {
        v43 = v9 >> (v40 & 0x38);
        if (v41 < 8)
        {
          v43 = v35 >> v40;
        }

        v44 = (v43 << (v42 & 0x38)) | ((-255 << (v42 & 0x38)) - 1) & a1;
        v45 = (v43 << v42) | ((-255 << v42) - 1) & v15;
        if (v37 <= 7)
        {
          v15 = v45;
        }

        else
        {
          a1 = v44;
        }

        ++v37;
        v42 += 8;
        v40 += 8;
        ++v41;
      }

      while (8 * v38 != v40);
    }

    v10;
    0xE000000000000000;
    v46 = 0xA000000000000000;
    if (!(v15 & 0x8080808080808080 | a1 & 0x80808080808080))
    {
      v46 = 0xE000000000000000;
    }

    v228 = v15;
    v229 = v46 & 0xFF00000000000000 | (v39 << 56) | a1 & 0xFFFFFFFFFFFFFFLL;
    a1 = v226;
LABEL_63:
    TypeName = swift_getTypeName(a1, 0);
    if (v48 < 0)
    {
      LODWORD(v221) = 0;
      v220 = 1410;
      LOBYTE(v219) = 2;
      goto LABEL_266;
    }

    v3 = TypeName;
    a1 = v48;
    v15 = 0;
    v224 = v4;
    if (_allASCII(_:)(TypeName, v48))
    {
      v50 = 1;
LABEL_66:
      if (!a1)
      {
LABEL_112:
        v52 = 0;
        v51 = 0xE000000000000000;
        goto LABEL_143;
      }

      if (a1 > 15)
      {
        v51 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v3, a1, a1, v50 & 1);
        v52 = *(v51 + 24);
        goto LABEL_143;
      }

      v86 = a1 - 8;
      v87 = 8;
      if (a1 < 8)
      {
        v87 = a1;
      }

      if (a1 >= 4)
      {
        v89 = v87 & 0xC;
        v49.i32[0] = *v3;
        v90 = vmovl_u16(*&vmovl_u8(v49));
        v91.i64[0] = v90.u32[0];
        v91.i64[1] = v90.u32[1];
        v92.i64[0] = 255;
        v92.i64[1] = 255;
        v93 = vandq_s8(v91, v92);
        v91.i64[0] = v90.u32[2];
        v91.i64[1] = v90.u32[3];
        v94 = vshlq_u64(vandq_s8(v91, v92), xmmword_18071DBA0);
        v95.i32[1] = 0;
        v96 = vshlq_u64(v93, xmmword_18071DBB0);
        if (v89 != 4)
        {
          v95.i32[0] = *(v3 + 4);
          v97 = vmovl_u16(*&vmovl_u8(v95));
          v98.i64[0] = v97.u32[2];
          v98.i64[1] = v97.u32[3];
          v99 = vandq_s8(v98, v92);
          v98.i64[0] = v97.u32[0];
          v98.i64[1] = v97.u32[1];
          v94 = vorrq_s8(vshlq_u64(v99, xmmword_18071DBD0), v94);
          v96 = vorrq_s8(vshlq_u64(vandq_s8(v98, v92), xmmword_18071DBC0), v96);
        }

        v100 = vorrq_s8(v96, v94);
        v52 = vorr_s8(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
        if (v87 == v89)
        {
          goto LABEL_135;
        }

        v88 = 8 * v89;
      }

      else
      {
        v52 = 0;
        v88 = 0;
        v89 = 0;
      }

      v101 = v87 - v89;
      v102 = (v3 + v89);
      do
      {
        v103 = *v102++;
        *&v52 |= v103 << (v88 & 0x38);
        v88 += 8;
        --v101;
      }

      while (v101);
LABEL_135:
      if (a1 < 9)
      {
        v104 = 0;
      }

      else
      {
        v104 = 0;
        v105 = 0;
        v106 = (v3 + 8);
        do
        {
          v107 = *v106++;
          v104 |= v107 << v105;
          v105 += 8;
          --v86;
        }

        while (v86);
      }

      v108 = 0xA000000000000000;
      if (((v104 | *&v52) & 0x8080808080808080) == 0)
      {
        v108 = 0xE000000000000000;
      }

      v51 = v108 | (a1 << 56) | v104;
      goto LABEL_143;
    }

    if (!a1)
    {
      goto LABEL_112;
    }

    v10 = 0;
    v53 = (v3 + a1);
    v50 = 1;
    v54 = v3;
    v55 = v3;
    while (1)
    {
      v57 = *v55++;
      v56 = v57;
      if ((v57 & 0x80000000) == 0)
      {
        v58 = 1;
        goto LABEL_73;
      }

      if ((v56 + 11) <= 0xCCu)
      {
        LOBYTE(v227) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v56);
        goto LABEL_114;
      }

      if (v56 <= 0xDFu)
      {
        if (v55 == v53 || (*v55 & 0xC0) != 0x80)
        {
LABEL_258:
          v196 = 4;
          goto LABEL_259;
        }

        v50 = 0;
        v55 = v54 + 2;
        v58 = 2;
        goto LABEL_73;
      }

      if (v56 == 224)
      {
        if (v55 == v53)
        {
          goto LABEL_258;
        }

        if (v54[1] - 192 < 0xFFFFFFE0)
        {
          goto LABEL_264;
        }

LABEL_97:
        if (v54 + 2 == v53 || (v54[2] & 0xC0) != 0x80)
        {
          goto LABEL_258;
        }

        v50 = 0;
        v55 = v54 + 3;
        v58 = 3;
        goto LABEL_73;
      }

      if (v56 <= 0xECu)
      {
        goto LABEL_95;
      }

      if (v56 == 237)
      {
        break;
      }

      if (v56 <= 0xEFu)
      {
LABEL_95:
        if (v55 == v53 || (v54[1] & 0xC0) != 0x80)
        {
          goto LABEL_258;
        }

        goto LABEL_97;
      }

      if (v56 == 240)
      {
        if (v55 == v53)
        {
          goto LABEL_258;
        }

        if (v54[1] - 192 < 0xFFFFFFD0)
        {
          goto LABEL_264;
        }
      }

      else if (v56 <= 0xF3u)
      {
        if (v55 == v53 || (v54[1] & 0xC0) != 0x80)
        {
          goto LABEL_258;
        }
      }

      else
      {
        if (v55 == v53)
        {
          goto LABEL_258;
        }

        v60 = v54[1];
        if (v60 > 0x8F || (v60 & 0xC0) != 0x80)
        {
          goto LABEL_288;
        }
      }

      if (v54 + 2 == v53 || (v54[2] & 0xC0) != 0x80 || v54 + 3 == v53 || (v54[3] & 0xC0) != 0x80)
      {
        goto LABEL_258;
      }

      v50 = 0;
      v55 = v54 + 4;
      v58 = 4;
LABEL_73:
      v10 += v58;
      v54 = v55;
      if (v55 == v53)
      {
        goto LABEL_66;
      }
    }

    if (v55 == v53)
    {
      goto LABEL_258;
    }

    v59 = v54[1];
    if (v59 <= 0x9F && (v59 & 0xC0) == 0x80)
    {
      goto LABEL_97;
    }

    v196 = 1;
LABEL_259:
    LOBYTE(v227) = v196;
LABEL_114:
    swift_willThrowTypedImpl(&v227, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
    v61 = specialized Collection.subscript.getter(v10, v3, a1);
    v35 = findInvalidRange #1 (_:) in validateUTF8(_:)(v61, v62, v63, v64);
    *&v227 = 0;
    *(&v227 + 1) = 0xE000000000000000;
    if (__OFADD__(a1, 15))
    {
      __break(1u);
LABEL_278:
      if ((v9 & 0x1000000000000000) != 0)
      {
        v35 = _StringGuts._foreignConvertedToSmall()(v35, v9);
        v215 = v214;
        v9;
        v9 = v215;
      }

      else
      {
        if ((v35 & 0x1000000000000000) != 0)
        {
          v202 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v203 = v35 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v202 = _StringObject.sharedUTF8.getter(v35, v9);
        }

        closure #1 in _StringGuts._convertedToSmall()(v202, v203, &v227, v34);
        v9;
        v9 = *(&v227 + 1);
        v35 = v227;
      }

      continue;
    }

    break;
  }

  v9 = v65;
  v10 = &v227;
  _StringGuts.reserveCapacity(_:)(a1 + 15);
  v66 = v35;
  while (1)
  {
    v67 = specialized Collection.subscript.getter(v66, v3, a1);
    v71 = v227 & 0xFFFFFFFFFFFFLL;
    if ((*(&v227 + 1) & 0x2000000000000000) != 0)
    {
      v71 = HIBYTE(*(&v227 + 1)) & 0xFLL;
    }

    v72 = __OFADD__(v71, a1);
    v73 = v71 + a1;
    if (v72)
    {
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      v196 = 3;
      goto LABEL_259;
    }

    v74 = v67;
    if (__OFADD__(v73, 3))
    {
      goto LABEL_263;
    }

    v75 = v68;
    v76 = v69;
    v77 = v70;
    _StringGuts.reserveCapacity(_:)(v73 + 3);
    v78 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v74, v75, v76, v77);
    v10 = *(&v227 + 1) & 0xFFFFFFFFFFFFFFFLL;
    __StringStorage.appendInPlace(_:isASCII:)(v78, v79, 0);
    *&v227 = *(v10 + 24);
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v227);
    v80 = specialized Collection.subscript.getter(v9, v3, a1);
    v3 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v80, v81, v82, v83);
    a1 = v84;
    if ((validateUTF8(_:)(v3, v84) & 0x8000000000000000) == 0)
    {
      break;
    }

    v9 = v85;
    if (!a1)
    {
      goto LABEL_128;
    }
  }

  _StringGuts.appendInPlace(_:isASCII:)(v3, a1, 0);
LABEL_128:
  v51 = *(&v227 + 1);
  v52 = v227;
LABEL_143:
  v110 = v228;
  v109 = v229;
  v111 = HIBYTE(v229) & 0xF;
  v112 = v228 & 0xFFFFFFFFFFFFLL;
  if ((v229 & 0x2000000000000000) != 0)
  {
    v113 = HIBYTE(v229) & 0xF;
  }

  else
  {
    v113 = v228 & 0xFFFFFFFFFFFFLL;
  }

  if (!v113 && (v228 & ~v229 & 0x2000000000000000) == 0)
  {
    v229;
    v228 = v52;
    v229 = v51;
    goto LABEL_198;
  }

  v114 = HIBYTE(v51) & 0xF;
  if ((v229 & 0x2000000000000000) == 0)
  {
    v223 = (v51 & 0x2000000000000000) == 0;
    v115 = *&v52 & 0xFFFFFFFFFFFFLL;
    v116 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) != 0)
    {
LABEL_154:
      v222 = v115;
      if ((v51 & 0x1000000000000000) == 0)
      {
        goto LABEL_155;
      }

LABEL_185:
      swift_bridgeObjectRetain_n(v51, 2);
      v139._rawBits = 1;
      v140._rawBits = (v116 << 16) | 1;
      v141._rawBits = _StringGuts.validateScalarRange(_:)(v139, v140, *&v52, v51)._rawBits;
      if (v141._rawBits < 0x10000)
      {
        v141._rawBits |= 3;
      }

      v118 = String.UTF8View.distance(from:to:)(v141, v142);
      v51;
      if ((v109 & 0x1000000000000000) != 0)
      {
        goto LABEL_188;
      }

LABEL_156:
      v72 = __OFADD__(v113, v118);
      v119 = v113 + v118;
      if (!v72)
      {
        goto LABEL_157;
      }

LABEL_190:
      __break(1u);
LABEL_191:
      _StringGuts._foreignAppendInPlace(_:)(*&v52, v51, 0, v116);
      swift_bridgeObjectRelease_n(v51, 2);
LABEL_198:
      v118 = v224;
      goto LABEL_215;
    }

LABEL_153:
    v116 = v115;
    goto LABEL_154;
  }

  if ((v51 & 0x2000000000000000) == 0)
  {
    v115 = *&v52 & 0xFFFFFFFFFFFFLL;
    v223 = 1;
    goto LABEL_153;
  }

  v138 = v111 + v114;
  if (v111 + v114 >= 0x10)
  {
    v223 = 0;
    v116 = HIBYTE(v51) & 0xF;
    v222 = *&v52 & 0xFFFFFFFFFFFFLL;
    if ((v51 & 0x1000000000000000) != 0)
    {
      goto LABEL_185;
    }

LABEL_155:
    v51;
    v118 = v116;
    if ((v109 & 0x1000000000000000) == 0)
    {
      goto LABEL_156;
    }

LABEL_188:
    v143 = String.UTF8View._foreignCount()();
    v119 = v143 + v118;
    if (__OFADD__(v143, v118))
    {
      goto LABEL_190;
    }

LABEL_157:
    if ((v110 & ~v109 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v109 & 0xFFFFFFFFFFFFFFFLL))
    {
      if (v119 > 15)
      {
        goto LABEL_169;
      }

      if ((v109 & 0x2000000000000000) == 0)
      {
        goto LABEL_163;
      }

      goto LABEL_175;
    }

    v120 = _StringGuts.nativeUnusedCapacity.getter(v110, v109);
    if ((v121 & 1) == 0)
    {
      if (v119 > 15)
      {
        goto LABEL_169;
      }

      if ((v109 & 0x2000000000000000) == 0)
      {
        if (v120 < v118)
        {
LABEL_163:
          if ((v109 & 0x1000000000000000) != 0)
          {
            v110 = _StringGuts._foreignConvertedToSmall()(v110, v109);
            v123 = v197;
          }

          else
          {
            if ((v110 & 0x1000000000000000) != 0)
            {
              v122 = ((v109 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v122 = _StringObject.sharedUTF8.getter(v110, v109);
              v112 = v209;
            }

            closure #1 in _StringGuts._convertedToSmall()(v122, v112, &v227, v117);
            if (v15)
            {
              goto LABEL_303;
            }

            v123 = *(&v227 + 1);
            v110 = v227;
          }

          goto LABEL_176;
        }

LABEL_169:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v119, v118);
        if ((v51 & 0x1000000000000000) != 0)
        {
          goto LABEL_191;
        }

        v118 = v224;
        if (!v223)
        {
          v129 = (v51 >> 62) & 1;
          *&v227 = v52;
          *(&v227 + 1) = v51 & 0xFFFFFFFFFFFFFFLL;
          v127 = &v227;
          v128 = HIBYTE(v51) & 0xF;
          goto LABEL_209;
        }

        if ((*&v52 & 0x1000000000000000) != 0)
        {
          v124 = (v51 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v125 = v222;
          v126 = v222;
          goto LABEL_173;
        }

        v207 = _StringObject.sharedUTF8.getter(*&v52, v51);
        if (v208 >= v222)
        {
          goto LABEL_304;
        }

        LODWORD(v221) = 0;
        v220 = 1961;
        LOBYTE(v219) = 2;
LABEL_266:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_175:
      v123 = v109;
LABEL_176:
      v51;
      v130._rawBits = 1;
      v131._rawBits = (v116 << 16) | 1;
      v132._rawBits = _StringGuts.validateScalarRange(_:)(v130, v131, *&v52, v51)._rawBits;
      if (v132._rawBits < 0x10000)
      {
        v132._rawBits |= 3;
      }

      if (v132._rawBits >> 16)
      {
        v135 = 0;
      }

      else
      {
        v135 = v133._rawBits >> 16 == v116;
      }

      if (v135)
      {
        v137 = v51;
      }

      else
      {
        v52 = specialized static String._copying(_:)(v132._rawBits, v133, *&v52, v51);
        v137 = v136;
        v51;
      }

      v118 = v224;
      if ((v137 & 0x2000000000000000) == 0)
      {
        goto LABEL_272;
      }

      v137;
      goto LABEL_195;
    }

LABEL_295:
    v211 = 258;
    goto LABEL_296;
  }

  if (v114)
  {
    v149 = 0;
    v150 = 0;
    v151 = 8 * v111;
    v152 = 8 * v114;
    v153 = v229;
    v118 = v224;
    do
    {
      v154 = v51 >> (v149 & 0x38);
      if (v150 < 8)
      {
        v154 = *&v52 >> v149;
      }

      v155 = (v154 << (v151 & 0x38)) | ((-255 << (v151 & 0x38)) - 1) & v153;
      v156 = (v154 << v151) | ((-255 << v151) - 1) & v110;
      if (v111 <= 7)
      {
        v110 = v156;
      }

      else
      {
        v153 = v155;
      }

      ++v111;
      v151 += 8;
      v149 += 8;
      ++v150;
    }

    while (v152 != v149);
  }

  else
  {
    v153 = v229;
    v118 = v224;
  }

  v229;
  v51;
  v157 = 0xA000000000000000;
  if (!(v110 & 0x8080808080808080 | v153 & 0x80808080808080))
  {
    v157 = 0xE000000000000000;
  }

  v228 = v110;
  v229 = v157 & 0xFF00000000000000 | (v138 << 56) | v153 & 0xFFFFFFFFFFFFFFLL;
LABEL_215:
  while (2)
  {
    while (2)
    {
      v110 = v226;
      v51 = v228;
      v109 = v229;
      v123 = HIBYTE(v229) & 0xF;
      v158 = v228 & 0xFFFFFFFFFFFFLL;
      if ((v229 & 0x2000000000000000) != 0)
      {
        v159 = HIBYTE(v229) & 0xF;
      }

      else
      {
        v159 = v228 & 0xFFFFFFFFFFFFLL;
      }

      if (!v159 && (v228 & ~v229 & 0x2000000000000000) == 0)
      {
        v229;
        v168 = 0xE100000000000000;
        v166 = 40;
        goto LABEL_256;
      }

      if ((v229 & 0x2000000000000000) != 0 && v123 != 15)
      {
        v160 = 8 * (HIBYTE(v229) & 7);
        v161 = (-255 << v160) - 1;
        v162 = 40 << v160;
        v163 = v161 & v229 | v162;
        v164 = v161 & v228 | v162;
        if (v123 >= 8)
        {
          v165 = v163;
        }

        else
        {
          v165 = v229;
        }

        if (v123 >= 8)
        {
          v166 = v228;
        }

        else
        {
          v166 = v164;
        }

        v229;
        0xE100000000000000;
        v167 = 0xA000000000000000;
        if (!(v166 & 0x8080808080808080 | v165 & 0x80808080808080))
        {
          v167 = 0xE000000000000000;
        }

        v168 = (v167 & 0xFF00000000000000 | (v123 << 56) | v165 & 0xFFFFFFFFFFFFFFLL) + 0x100000000000000;
        goto LABEL_256;
      }

      0xE100000000000000;
      if ((v109 & 0x1000000000000000) != 0)
      {
        v199 = String.UTF8View._foreignCount()();
        v137 = v199 + 1;
        if (!__OFADD__(v199, 1))
        {
          break;
        }

        goto LABEL_271;
      }

      v72 = __OFADD__(v159, 1);
      v137 = v159 + 1;
      if (v72)
      {
LABEL_271:
        __break(1u);
LABEL_272:
        if ((v137 & 0x1000000000000000) != 0)
        {
          v52 = _StringGuts._foreignConvertedToSmall()(*&v52, v137);
          v213 = v212;
          v137;
          v137 = v213;
          goto LABEL_195;
        }

        if ((*&v52 & 0x1000000000000000) != 0)
        {
          v200 = ((v137 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v201 = *&v52 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v200 = _StringObject.sharedUTF8.getter(*&v52, v137);
        }

        closure #1 in _StringGuts._convertedToSmall()(v200, v201, &v227, v134);
        if (!v15)
        {
          v137;
          v137 = *(&v227 + 1);
          v52 = v227;
LABEL_195:
          v144 = specialized _SmallString.init(_:appending:)(v110, v123, *&v52, v137);
          if ((v146 & 1) == 0)
          {
            v147 = v144;
            v148 = v145;
            v109;
            swift_bridgeObjectRelease_n(v51, 2);
            v228 = v147;
            v229 = v148;
            continue;
          }

LABEL_294:
          v211 = 266;
LABEL_296:
          LODWORD(v221) = 0;
          v220 = v211;
          LOBYTE(v219) = 2;
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_303;
      }

      break;
    }

    if ((v51 & ~v109 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v109 & 0xFFFFFFFFFFFFFFFLL))
    {
      v169 = _StringGuts.nativeUnusedCapacity.getter(v51, v109);
      if (v170)
      {
        goto LABEL_295;
      }

      if (v137 > 15)
      {
        goto LABEL_245;
      }

      if ((v109 & 0x2000000000000000) == 0)
      {
        if (v169 < 1)
        {
          goto LABEL_239;
        }

LABEL_245:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v137, 1);
        v227 = xmmword_18071DFC0;
        closure #1 in _StringGuts.append(_:)(&v227, 1uLL, &v228, 1);
        if (!v15)
        {
          swift_bridgeObjectRelease_n(0xE100000000000000, 2);
          v166 = v228;
          v168 = v229;
          goto LABEL_256;
        }

        do
        {
LABEL_303:
          v15;
          __break(1u);
LABEL_304:
          v124 = v207;
          v126 = v208;
          v125 = v222;
LABEL_173:
          v127 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v125, v124, v126);
          v129 = *&v52 >> 63;
LABEL_209:
          closure #1 in _StringGuts.append(_:)(v127, v128, &v228, v129);
        }

        while (v15);
        swift_bridgeObjectRelease_n(v51, 2);
        continue;
      }

LABEL_248:
      v172 = v109;
    }

    else
    {
      if (v137 > 15)
      {
        goto LABEL_245;
      }

      if ((v109 & 0x2000000000000000) != 0)
      {
        goto LABEL_248;
      }

LABEL_239:
      if ((v109 & 0x1000000000000000) != 0)
      {
        v51 = _StringGuts._foreignConvertedToSmall()(v51, v109);
        v172 = v198;
      }

      else
      {
        if ((v51 & 0x1000000000000000) != 0)
        {
          v171 = ((v109 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v171 = _StringObject.sharedUTF8.getter(v51, v109);
          v158 = v210;
        }

        closure #1 in _StringGuts._convertedToSmall()(v171, v158, &v227, v134);
        if (v15)
        {
          goto LABEL_303;
        }

        v172 = *(&v227 + 1);
        v51 = v227;
      }
    }

    break;
  }

  0xE100000000000000;
  v173._rawBits = 1;
  v174._rawBits = 65537;
  v175._rawBits = _StringGuts.validateScalarRange(_:)(v173, v174, 0x28uLL, 0xE100000000000000)._rawBits;
  if (v175._rawBits < 0x10000)
  {
    v175._rawBits |= 3;
  }

  v177 = Substring.description.getter(v175._rawBits, v176, 0x28uLL, 0xE100000000000000);
  v179 = v178;
  0xE100000000000000;
  if ((v179 & 0x2000000000000000) != 0)
  {
    v179;
    goto LABEL_253;
  }

  if ((v179 & 0x1000000000000000) == 0)
  {
    if ((v177 & 0x1000000000000000) != 0)
    {
      v204 = ((v179 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v205 = v177 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v204 = _StringObject.sharedUTF8.getter(v177, v179);
    }

    closure #1 in _StringGuts._convertedToSmall()(v204, v205, &v227, v180);
    if (!v15)
    {
      v179;
      v179 = *(&v227 + 1);
      v177 = v227;
      v110 = v226;
      goto LABEL_253;
    }

    goto LABEL_303;
  }

  v177 = _StringGuts._foreignConvertedToSmall()(v177, v179);
  v217 = v216;
  v179;
  v179 = v217;
  v110 = v226;
LABEL_253:
  v181 = specialized _SmallString.init(_:appending:)(v51, v172, v177, v179);
  if (v183)
  {
    goto LABEL_294;
  }

  v166 = v181;
  v168 = v182;
  v109;
  swift_bridgeObjectRelease_n(0xE100000000000000, 2);
LABEL_256:
  v184 = (*(*(v225 + 48) + 40))(v110);
  if (v184 < 0)
  {
    LODWORD(v221) = 0;
    v220 = 760;
    LOBYTE(v219) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  MEMORY[0x1EEE9AC00](v184, v185);
  v219 = v110;
  v220 = v225;
  v221 = v118;
  v187 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg5(partial apply for closure #1 in SIMD.description.getter, &v218, 0, v186);
  v188 = specialized BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v187);
  v190 = v189;
  v187;
  0xE200000000000000;
  v191 = specialized static String.+ infix(_:_:)(v166, v168, v188, v190);
  v193 = v192;
  v168;
  v190;
  v194 = specialized static String.+ infix(_:_:)(v191, v193, 0x29uLL, 0xE100000000000000);
  v193;
  0xE100000000000000;
  return v194;
}

void closure #1 in SIMD.description.getter(uint64_t *a1@<X0>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v4 = a2;
  v7 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v7, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v46 - v12;
  v14 = *a1;
  v15 = _StringGuts.init(_initialCapacity:)(2);
  v25 = v15;
  v48 = v15;
  v49 = v16;
  v26 = HIBYTE(v16) & 0xF;
  v27 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v16) & 0xF;
  }

  if (v27 || (v15 & ~v16 & 0x2000000000000000) != 0)
  {
    if ((v16 & 0x2000000000000000) == 0)
    {
      _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v17, v18, v19, v20, v21, v22, v23, v24);
      goto LABEL_12;
    }

    v47 = v4;
    v28 = a4;
    v29 = v16;
    v16;
    v30 = 0xA000000000000000;
    if (!(v29 & 0x80808080808080 | v25 & 0x8080808080808080))
    {
      v30 = 0xE000000000000000;
    }

    v31 = v30 & 0xFF00000000000000 | (v26 << 56) | v29 & 0xFFFFFFFFFFFFFFLL;
    a4 = v28;
    v4 = v47;
    v48 = v25;
  }

  else
  {
    v16;
    v31 = 0xE000000000000000;
    v48 = 0;
  }

  v49 = v31;
LABEL_12:
  (*(v7 + 56))(v14, v4, v7);
  _print_unlocked<A, B>(_:_:)(v13, &v48, v9, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  (*(v10 + 8))(v13, v9);
  v41 = v48;
  v40 = v49;
  v42 = HIBYTE(v49) & 0xF;
  v43 = v48 & 0xFFFFFFFFFFFFLL;
  if ((v49 & 0x2000000000000000) != 0)
  {
    v43 = HIBYTE(v49) & 0xF;
  }

  if (v43 || (v48 & ~v49 & 0x2000000000000000) != 0)
  {
    if ((v49 & 0x2000000000000000) != 0)
    {
      v49;
      v45 = 0xA000000000000000;
      if (!(v40 & 0x80808080808080 | v41 & 0x8080808080808080))
      {
        v45 = 0xE000000000000000;
      }

      v44 = v45 & 0xFF00000000000000 | (v42 << 56) | v40 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v32, v33, v34, v35, v36, v37, v38, v39);
      v41 = v48;
      v44 = v49;
    }
  }

  else
  {
    v49;
    v41 = 0;
    v44 = 0xE000000000000000;
  }

  *a4 = v41;
  a4[1] = v44;
}

uint64_t static SIMD..== infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a1;
  v69 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v9 = v8;
  v10 = *(swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v10, v9, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v12 = v11;
  v72 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v11, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v72, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v60 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v54 - v15;
  v62 = swift_checkMetadataState(0, v12);
  MEMORY[0x1EEE9AC00](v62, v17);
  v59 = v54 - v18;
  v19 = *(a4 + 48);
  v70 = a3;
  v20 = a3;
  v21 = v10;
  swift_getAssociatedTypeWitness(0, v19, v20, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v63 = v22;
  v23 = *(v22 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v67 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v65 = v54 - v28;
  v29 = swift_checkMetadataState(0, v9);
  (*(v10 + 48))(v29, v10);
  v30 = *(v10 + 40);
  v71 = a5;
  v66 = v30;
  v64 = v10 + 40;
  result = v30(v29, v10);
  if (result < 0)
  {
    goto LABEL_12;
  }

  v58 = v16;
  if (result)
  {
    v32 = 0;
    v33 = *(v19 + 56);
    v34 = (v23 + 8);
    v54[1] = v21 + 64;
    v54[2] = v72 + 3;
    v56 = v19 + 56;
    v57 = result;
    v55 = v33;
    v61 = v29;
    while (1)
    {
      v35 = v21;
      v36 = v65;
      v37 = v70;
      v38 = v33;
      v33(v32, v70, v19);
      v39 = v67;
      v38(v32, v37, v19);
      v40 = v63;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v19, v37, v63, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v42 = (*(*(AssociatedConformanceWitness + 8) + 8))(v36, v39, v40);
      v43 = *v34;
      (*v34)(v39, v40);
      v44 = v36;
      v21 = v35;
      v45 = v61;
      v43(v44, v40);
      v46 = v66(v45, v21);
      if (v46 < 0)
      {
        break;
      }

      if (v32 >= v46)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v47 = v60;
      v48 = swift_getAssociatedConformanceWitness(v72, v62, v60, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v49 = *(v48 + 8);
      v54[0] = v19;
      v50 = v58;
      if (v42)
      {
        v51 = &unk_18071E0B0;
        v52 = 257;
      }

      else
      {
        v51 = &qword_18071E0A8;
        v52 = 256;
      }

      v49(v51, v52, v47, v48);
      v53 = v59;
      (v72[3])(v50);
      (*(v21 + 64))(v53, v32++, v45, v21);
      result = v57;
      v19 = v54[0];
      v33 = v55;
      if (v57 == v32)
      {
        return result;
      }
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  v91 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v10 = v9;
  v87 = *(swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v87, v10, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v12 = v11;
  v88 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v11, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v88, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v77 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v78 = v71 - v15;
  v80 = swift_checkMetadataState(0, v12);
  MEMORY[0x1EEE9AC00](v80, v16);
  v76 = v71 - v17;
  v18 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v18, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v20 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v84 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = v71 - v26;
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v31 = v71 - v30;
  v85 = *(a3 - 1);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v35 = (v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33, v36);
  v89 = v37;
  v90 = v71 - v38;
  v92 = v20;
  v83 = *(v20 + 16);
  (v83)(v31, a1);
  (*(v18 + 48))(a3, v18);
  v39 = (*(v18 + 40))(a3, v18);
  if (v39 < 0)
  {
    goto LABEL_16;
  }

  v40 = v39;
  v81 = v10;
  v86 = a2;
  v93 = v35;
  v94 = a3;
  v41 = v89;
  v42 = v83;
  if (v39)
  {
    v43 = 0;
    do
    {
      (v42)(v27, v31, v41);
      (*(v18 + 64))(v27, v43++, v94, v18);
    }

    while (v40 != v43);
  }

  v44 = *(v92 + 8);
  v92 += 8;
  v82 = v44;
  v83 = v27;
  v44(v31, v41);
  v45 = v94;
  (*(v85 + 32))(v90, v93, v94);
  v46 = swift_checkMetadataState(0, v81);
  v47 = v87;
  (v87[6])(v46, v87);
  v93 = v47[5];
  v81 = (v47 + 5);
  v48 = (v93)(v46, v47);
  if (v48 < 0)
  {
    goto LABEL_16;
  }

  v49 = v45;
  if (v48)
  {
    v50 = v18;
    v51 = 0;
    v52 = *(v18 + 56);
    v71[1] = v88 + 3;
    v71[0] = v47 + 8;
    v74 = v18;
    v75 = v48;
    v73 = v18 + 56;
    v79 = v46;
    v72 = v52;
    while (1)
    {
      v53 = v83;
      v52(v51, v49, v50);
      v54 = v84;
      v52(v51, v49, v50);
      v55 = v50;
      v56 = v49;
      v57 = v89;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v55, v49, v89, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v59 = v47;
      v60 = (*(*(AssociatedConformanceWitness + 8) + 8))(v53, v54, v57);
      v61 = v82;
      v82(v54, v57);
      v62 = v79;
      v61(v53, v57);
      v63 = (v93)(v62, v59);
      if (v63 < 0)
      {
        break;
      }

      if (v51 >= v63)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v64 = v77;
      v65 = swift_getAssociatedConformanceWitness(v88, v80, v77, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      if (v60)
      {
        v66 = v78;
        v67 = &unk_18071E0B0;
        v68 = 257;
      }

      else
      {
        v66 = v78;
        v67 = &qword_18071E0A8;
        v68 = 256;
      }

      (*(v65 + 8))(v67, v68, v64, v65);
      v69 = v76;
      (v88[3])(v66);
      v47 = v87;
      (v87[8])(v69, v51++, v62, v87);
      v49 = v56;
      v50 = v74;
      v52 = v72;
      if (v75 == v51)
      {
        return (*(v85 + 8))(v90, v49);
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v85 + 8))(v90, v49);
}

{
  v89 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v10 = v9;
  v85 = *(swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v85, v10, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v12 = v11;
  v86 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v11, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v86, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v76 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v77 = v71 - v15;
  v78 = swift_checkMetadataState(0, v12);
  MEMORY[0x1EEE9AC00](v78, v16);
  v75 = v71 - v17;
  v18 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v18, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v20 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v82 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = v71 - v26;
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v31 = v71 - v30;
  v83 = *(a3 - 1);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v35 = (v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33, v36);
  v87 = v37;
  v88 = v71 - v38;
  v90 = v20;
  v81 = *(v20 + 16);
  (v81)(v31, a2);
  (*(v18 + 48))(a3, v18);
  v39 = (*(v18 + 40))(a3, v18);
  if (v39 < 0)
  {
    goto LABEL_16;
  }

  v40 = v39;
  v79 = v10;
  v84 = a1;
  v91 = v35;
  v92 = a3;
  v41 = v87;
  v42 = v81;
  if (v39)
  {
    v43 = 0;
    do
    {
      (v42)(v27, v31, v41);
      (*(v18 + 64))(v27, v43++, v92, v18);
    }

    while (v40 != v43);
  }

  v44 = *(v90 + 8);
  v90 += 8;
  v80 = v44;
  v81 = v27;
  v44(v31, v41);
  v45 = v92;
  (*(v83 + 32))(v88, v91, v92);
  v46 = swift_checkMetadataState(0, v79);
  v47 = v85;
  (v85[6])(v46, v85);
  v91 = v47[5];
  v79 = (v47 + 5);
  v48 = (v91)(v46, v47);
  if (v48 < 0)
  {
    goto LABEL_16;
  }

  v49 = v45;
  if (v48)
  {
    v50 = 0;
    v51 = *(v18 + 56);
    v71[1] = v86 + 3;
    v71[0] = v47 + 8;
    v73 = v18 + 56;
    v74 = v48;
    v72 = v51;
    while (1)
    {
      v52 = v46;
      v53 = v81;
      v51(v50, v49, v18);
      v54 = v82;
      v51(v50, v49, v18);
      v55 = v18;
      v56 = v49;
      v57 = v87;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v18, v49, v87, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v59 = v47;
      v60 = (*(*(AssociatedConformanceWitness + 8) + 8))(v53, v54, v57);
      v61 = v80;
      v80(v54, v57);
      v62 = v53;
      v46 = v52;
      v61(v62, v57);
      v63 = (v91)(v52, v59);
      if (v63 < 0)
      {
        break;
      }

      if (v50 >= v63)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v64 = v76;
      v65 = swift_getAssociatedConformanceWitness(v86, v78, v76, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      if (v60)
      {
        v66 = v77;
        v67 = &unk_18071E0B0;
        v68 = 257;
      }

      else
      {
        v66 = v77;
        v67 = &qword_18071E0A8;
        v68 = 256;
      }

      (*(v65 + 8))(v67, v68, v64, v65);
      v18 = v55;
      v69 = v75;
      (v86[3])(v66);
      v47 = v85;
      (v85[8])(v69, v50++, v52, v85);
      v49 = v56;
      v51 = v72;
      if (v74 == v50)
      {
        return (*(v83 + 8))(v88, v49);
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v83 + 8))(v88, v49);
}

uint64_t SIMDMask.subscript.setter(int a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v27 = a1;
  v6 = *(*(*(a3[4] + 8) + 24) + 16);
  v7 = a3[2];
  v8 = *(a3[3] + 48);
  swift_getAssociatedTypeWitness(255, v8, v7, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  swift_getAssociatedTypeWitness(0, v6, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - v14;
  v16 = swift_checkMetadataState(0, v10);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v26 - v18;
  v20 = *(v8 + 40);
  v26 = v4;
  v21 = v20(v7, v8);
  if ((v21 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v21 <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v16, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  if (v27)
  {
    v23 = &unk_18071E0B0;
    v24 = 257;
  }

  else
  {
    v23 = &qword_18071E0A8;
    v24 = 256;
  }

  (*(AssociatedConformanceWitness + 8))(v23, v24, v12, AssociatedConformanceWitness);
  (*(v6 + 24))(v15, v16, v6);
  return (*(v8 + 64))(v19, a2, v7, v8);
}

uint64_t static SIMD..!= infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a1;
  v69 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v9 = v8;
  v10 = *(swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v10, v9, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v12 = v11;
  v72 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v11, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v72, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v60 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v54 - v15;
  v62 = swift_checkMetadataState(0, v12);
  MEMORY[0x1EEE9AC00](v62, v17);
  v59 = v54 - v18;
  v19 = *(a4 + 48);
  v70 = a3;
  v20 = a3;
  v21 = v10;
  swift_getAssociatedTypeWitness(0, v19, v20, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v63 = v22;
  v23 = *(v22 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v67 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v65 = v54 - v28;
  v29 = swift_checkMetadataState(0, v9);
  (*(v10 + 48))(v29, v10);
  v30 = *(v10 + 40);
  v71 = a5;
  v66 = v30;
  v64 = v10 + 40;
  result = v30(v29, v10);
  if (result < 0)
  {
    goto LABEL_12;
  }

  v58 = v16;
  if (result)
  {
    v32 = 0;
    v33 = *(v19 + 56);
    v34 = (v23 + 8);
    v54[1] = v21 + 64;
    v54[2] = v72 + 3;
    v56 = v19 + 56;
    v57 = result;
    v55 = v33;
    v61 = v29;
    while (1)
    {
      v35 = v21;
      v36 = v65;
      v37 = v70;
      v38 = v33;
      v33(v32, v70, v19);
      v39 = v67;
      v38(v32, v37, v19);
      v40 = v63;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v19, v37, v63, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v42 = (*(*(AssociatedConformanceWitness + 8) + 8))(v36, v39, v40);
      v43 = *v34;
      (*v34)(v39, v40);
      v44 = v36;
      v21 = v35;
      v45 = v61;
      v43(v44, v40);
      v46 = v66(v45, v21);
      if (v46 < 0)
      {
        break;
      }

      if (v32 >= v46)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v47 = v60;
      v48 = swift_getAssociatedConformanceWitness(v72, v62, v60, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v49 = *(v48 + 8);
      v54[0] = v19;
      v50 = v58;
      if (v42)
      {
        v51 = &qword_18071E0A8;
        v52 = 256;
      }

      else
      {
        v51 = &unk_18071E0B0;
        v52 = 257;
      }

      v49(v51, v52, v47, v48);
      v53 = v59;
      (v72[3])(v50);
      (*(v21 + 64))(v53, v32++, v45, v21);
      result = v57;
      v19 = v54[0];
      v33 = v55;
      if (v57 == v32)
      {
        return result;
      }
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  v91 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v10 = v9;
  v87 = *(swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v87, v10, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v12 = v11;
  v88 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v11, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v88, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v77 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v78 = v71 - v15;
  v80 = swift_checkMetadataState(0, v12);
  MEMORY[0x1EEE9AC00](v80, v16);
  v76 = v71 - v17;
  v18 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v18, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v20 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v84 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = v71 - v26;
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v31 = v71 - v30;
  v85 = *(a3 - 1);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v35 = (v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33, v36);
  v89 = v37;
  v90 = v71 - v38;
  v92 = v20;
  v83 = *(v20 + 16);
  (v83)(v31, a1);
  (*(v18 + 48))(a3, v18);
  v39 = (*(v18 + 40))(a3, v18);
  if (v39 < 0)
  {
    goto LABEL_16;
  }

  v40 = v39;
  v81 = v10;
  v86 = a2;
  v93 = v35;
  v94 = a3;
  v41 = v89;
  v42 = v83;
  if (v39)
  {
    v43 = 0;
    do
    {
      (v42)(v27, v31, v41);
      (*(v18 + 64))(v27, v43++, v94, v18);
    }

    while (v40 != v43);
  }

  v44 = *(v92 + 8);
  v92 += 8;
  v82 = v44;
  v83 = v27;
  v44(v31, v41);
  v45 = v94;
  (*(v85 + 32))(v90, v93, v94);
  v46 = swift_checkMetadataState(0, v81);
  v47 = v87;
  (v87[6])(v46, v87);
  v93 = v47[5];
  v81 = (v47 + 5);
  v48 = (v93)(v46, v47);
  if (v48 < 0)
  {
    goto LABEL_16;
  }

  v49 = v45;
  if (v48)
  {
    v50 = v18;
    v51 = 0;
    v52 = *(v18 + 56);
    v71[1] = v88 + 3;
    v71[0] = v47 + 8;
    v74 = v18;
    v75 = v48;
    v73 = v18 + 56;
    v79 = v46;
    v72 = v52;
    while (1)
    {
      v53 = v83;
      v52(v51, v49, v50);
      v54 = v84;
      v52(v51, v49, v50);
      v55 = v50;
      v56 = v49;
      v57 = v89;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v55, v49, v89, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v59 = v47;
      v60 = (*(*(AssociatedConformanceWitness + 8) + 8))(v53, v54, v57);
      v61 = v82;
      v82(v54, v57);
      v62 = v79;
      v61(v53, v57);
      v63 = (v93)(v62, v59);
      if (v63 < 0)
      {
        break;
      }

      if (v51 >= v63)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v64 = v77;
      v65 = swift_getAssociatedConformanceWitness(v88, v80, v77, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      if (v60)
      {
        v66 = v78;
        v67 = &qword_18071E0A8;
        v68 = 256;
      }

      else
      {
        v66 = v78;
        v67 = &unk_18071E0B0;
        v68 = 257;
      }

      (*(v65 + 8))(v67, v68, v64, v65);
      v69 = v76;
      (v88[3])(v66);
      v47 = v87;
      (v87[8])(v69, v51++, v62, v87);
      v49 = v56;
      v50 = v74;
      v52 = v72;
      if (v75 == v51)
      {
        return (*(v85 + 8))(v90, v49);
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v85 + 8))(v90, v49);
}

{
  v89 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v10 = v9;
  v85 = *(swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v85, v10, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v12 = v11;
  v86 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v11, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v86, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v76 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v77 = v71 - v15;
  v78 = swift_checkMetadataState(0, v12);
  MEMORY[0x1EEE9AC00](v78, v16);
  v75 = v71 - v17;
  v18 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v18, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v20 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v82 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = v71 - v26;
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v31 = v71 - v30;
  v83 = *(a3 - 1);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v35 = (v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33, v36);
  v87 = v37;
  v88 = v71 - v38;
  v90 = v20;
  v81 = *(v20 + 16);
  (v81)(v31, a2);
  (*(v18 + 48))(a3, v18);
  v39 = (*(v18 + 40))(a3, v18);
  if (v39 < 0)
  {
    goto LABEL_16;
  }

  v40 = v39;
  v79 = v10;
  v84 = a1;
  v91 = v35;
  v92 = a3;
  v41 = v87;
  v42 = v81;
  if (v39)
  {
    v43 = 0;
    do
    {
      (v42)(v27, v31, v41);
      (*(v18 + 64))(v27, v43++, v92, v18);
    }

    while (v40 != v43);
  }

  v44 = *(v90 + 8);
  v90 += 8;
  v80 = v44;
  v81 = v27;
  v44(v31, v41);
  v45 = v92;
  (*(v83 + 32))(v88, v91, v92);
  v46 = swift_checkMetadataState(0, v79);
  v47 = v85;
  (v85[6])(v46, v85);
  v91 = v47[5];
  v79 = (v47 + 5);
  v48 = (v91)(v46, v47);
  if (v48 < 0)
  {
    goto LABEL_16;
  }

  v49 = v45;
  if (v48)
  {
    v50 = 0;
    v51 = *(v18 + 56);
    v71[1] = v86 + 3;
    v71[0] = v47 + 8;
    v73 = v18 + 56;
    v74 = v48;
    v72 = v51;
    while (1)
    {
      v52 = v46;
      v53 = v81;
      v51(v50, v49, v18);
      v54 = v82;
      v51(v50, v49, v18);
      v55 = v18;
      v56 = v49;
      v57 = v87;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v18, v49, v87, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v59 = v47;
      v60 = (*(*(AssociatedConformanceWitness + 8) + 8))(v53, v54, v57);
      v61 = v80;
      v80(v54, v57);
      v62 = v53;
      v46 = v52;
      v61(v62, v57);
      v63 = (v91)(v52, v59);
      if (v63 < 0)
      {
        break;
      }

      if (v50 >= v63)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v64 = v76;
      v65 = swift_getAssociatedConformanceWitness(v86, v78, v76, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      if (v60)
      {
        v66 = v77;
        v67 = &qword_18071E0A8;
        v68 = 256;
      }

      else
      {
        v66 = v77;
        v67 = &unk_18071E0B0;
        v68 = 257;
      }

      (*(v65 + 8))(v67, v68, v64, v65);
      v18 = v55;
      v69 = v75;
      (v86[3])(v66);
      v47 = v85;
      (v85[8])(v69, v50++, v52, v85);
      v49 = v56;
      v51 = v72;
      if (v74 == v50)
      {
        return (*(v83 + 8))(v88, v49);
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v83 + 8))(v88, v49);
}

uint64_t SIMD.replace(with:where:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v85 = a2;
  v79 = a1;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v8 = v7;
  v86 = *(swift_getAssociatedConformanceWitness(a4, a3, v7, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  v84 = v8;
  swift_getAssociatedTypeWitness(255, v86, v8, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8);
  v82 = *(*(v11 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v82, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v67 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v66 = v65 - v14;
  v15 = swift_checkMetadataState(0, v10);
  v16 = *(v15 - 1);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v78 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v65 - v21;
  v23 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v23, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = v65 - v26;
  v28 = *(v23 + 40);
  v81 = a3;
  result = v28(a3, v23);
  if (result < 0)
  {
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v83 = v22;
  v80 = v4;
  if (result)
  {
    v30 = 0;
    v32 = v86 + 5;
    v31 = v86[5];
    v74 = v11 + 64;
    v75 = v86 + 7;
    v72 = (v16 + 8);
    v73 = v11 + 128;
    v65[2] = v11 + 120;
    v65[0] = v82 + 3;
    v65[1] = v11 + 96;
    v70 = v23 + 64;
    v71 = v23 + 56;
    v76 = result;
    while (1)
    {
      v33 = v84;
      v34 = swift_checkMetadataState(0, v84);
      v35 = (v31)(v34, v86);
      if (v35 < 0)
      {
        goto LABEL_23;
      }

      if (v30 >= v35)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v68 = v31;
      v69 = v32;
      v77 = v27;
      v36 = v86;
      v37 = v86[7];
      v38 = swift_checkMetadataState(0, v33);
      v39 = v83;
      (v37)(v30, v38, v36);
      v40 = *(v11 + 64);
      if ((v40(v15, v11) & 1) == 0)
      {
        break;
      }

      v41 = (*(v11 + 128))(v15, v11);
      v27 = v77;
      if (v41 >= 64)
      {
        v87[0] = 0;
        v53 = *(v11 + 96);
        v54 = lazy protocol witness table accessor for type Int and conformance Int(v41, v42, v43);
        v52 = v39;
        v51 = v78;
        v53(v87, &type metadata for Int, v54, v15, v11);
        (*(*(*(v11 + 32) + 8) + 16))(v52, v51, v15);
        v48 = v72;
LABEL_13:
        v55 = *v48;
        (*v48)(v51, v15);
        v55(v52, v15);
        goto LABEL_20;
      }

      (*(v11 + 120))(v15, v11);
      (*v72)(v39, v15);
LABEL_20:
      v64 = v81;
      (*(v23 + 56))(v30, v81, v23);
      (*(v23 + 64))(v27, v30++, v64, v23);
      result = v76;
      v31 = v68;
      v32 = v69;
      if (v76 == v30)
      {
        return result;
      }
    }

    v44 = v40(v15, v11);
    v45 = (*(v11 + 128))(v15, v11);
    v27 = v77;
    if ((v44 & 1) == 0)
    {
      v56 = v72;
      if (v45 < 64)
      {
        (*(v11 + 120))(v15, v11);
      }

      (*v56)(v39, v15);
      goto LABEL_20;
    }

    v48 = v72;
    if (v45 <= 64)
    {
      v57 = v82;
      v58 = v67;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v82, v15, v67, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v60 = v66;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v58, AssociatedConformanceWitness);
      v61 = v78;
      (v57[3])(v60, v15, v57);
      v62 = v83;
      LOBYTE(v58) = (*(*(*(v11 + 32) + 8) + 16))(v83, v61, v15);
      v63 = *v48;
      (*v48)(v61, v15);
      if ((v58 & 1) == 0)
      {
        (*(v11 + 120))(v15, v11);
      }

      v63(v62, v15);
      v27 = v77;
      goto LABEL_20;
    }

    v87[0] = 0;
    v49 = *(v11 + 96);
    v50 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
    v51 = v78;
    v49(v87, &type metadata for Int, v50, v15, v11);
    v52 = v83;
    (*(*(*(v11 + 32) + 8) + 16))(v83, v51, v15);
    goto LABEL_13;
  }

  return result;
}

{
  v116 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v8 = v7;
  v118 = *(swift_getAssociatedConformanceWitness(a4, a3, v7, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  v112 = v8;
  swift_getAssociatedTypeWitness(255, v118, v8, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v115 = *(swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8);
  v105 = *(*(v115 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v105, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v100 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v99 = v98 - v13;
  v106 = swift_checkMetadataState(0, v10);
  v14 = *(v106 - 1);
  v16 = MEMORY[0x1EEE9AC00](v106, v15);
  v102 = v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v113 = v98 - v19;
  v20 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v20, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v22 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = v98 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v114 = *(a3 - 1);
  v34 = MEMORY[0x1EEE9AC00](v98 - v32, v33);
  v36 = (v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v117 = v98 - v39;
  v111 = v22;
  v40 = v38;
  v42 = v41;
  v107 = *(v22 + 16);
  v108 = v22 + 16;
  (v107)(v38, a1);
  (*(v20 + 48))(a3, v20);
  v43 = v36;
  v109 = *(v20 + 40);
  v110 = v20 + 40;
  v44 = v109(a3, v20);
  if (v44 < 0)
  {
    goto LABEL_29;
  }

  v45 = v44;
  v103 = v26;
  v104 = v14;
  v119 = v43;
  v120 = a3;
  v46 = v107;
  if (v44)
  {
    v47 = 0;
    do
    {
      v46(v30, v40, v42);
      (*(v20 + 64))(v30, v47++, v120, v20);
    }

    while (v45 != v47);
  }

  (v111[1])(v40, v42);
  v48 = v120;
  (*(v114 + 32))(v117, v119, v120);
  v49 = v109(v48, v20);
  if (v49 < 0)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = v49;
  v51 = v112;
  v52 = v113;
  if (v49)
  {
    v53 = 0;
    v54 = v118[5];
    v110 = v115 + 64;
    v111 = v118 + 7;
    v109 = (v115 + 128);
    v119 = (v104 + 2);
    v98[2] = v115 + 120;
    v98[0] = v105 + 3;
    v98[1] = v115 + 96;
    v108 = v20 + 56;
    v55 = v20 + 64;
    while (1)
    {
      v56 = swift_checkMetadataState(0, v51);
      v57 = (v54)(v56, v118);
      if (v57 < 0)
      {
        goto LABEL_29;
      }

      if (v53 >= v57)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v101 = v55;
      v104 = v54;
      v107 = v20;
      v58 = v118;
      v59 = v118[7];
      v60 = swift_checkMetadataState(0, v51);
      v61 = v58;
      v62 = v115;
      (v59)(v53, v60, v61);
      v63 = *(v62 + 64);
      v64 = v106;
      if ((v63(v106, v62) & 1) == 0)
      {
        break;
      }

      v65 = (*(v62 + 128))(v64, v62);
      if (v65 >= 64)
      {
        v121[0] = 0;
        v79 = *(v62 + 96);
        v80 = lazy protocol witness table accessor for type Int and conformance Int(v65, v66, v67);
        v81 = v102;
        v79(v121, &type metadata for Int, v80, v64, v62);
        (*(*(*(v62 + 32) + 8) + 16))(v113, v81, v64);
        v82 = *v119;
        v83 = v81;
        v52 = v113;
        (*v119)(v83, v64);
        v82(v52, v64);
LABEL_17:
        v68 = v120;
        goto LABEL_26;
      }

      (*(v62 + 120))(v64, v62);
      (*v119)(v52, v64);
      v68 = v120;
LABEL_26:
      v20 = v107;
      v95 = v103;
      (*(v107 + 56))(v53, v68, v107);
      v96 = v95;
      v55 = v101;
      (*(v20 + 64))(v96, v53++, v68, v20);
      v48 = v68;
      v54 = v104;
      if (v50 == v53)
      {
        return (*(v114 + 8))(v117, v48);
      }
    }

    v69 = v63(v64, v62);
    v70 = (*(v62 + 128))(v64, v62);
    if ((v69 & 1) == 0)
    {
      v84 = v119;
      if (v70 < 64)
      {
        (*(v62 + 120))(v64, v62);
        (*v84)(v52, v64);
      }

      else
      {
        (*v119)(v52, v64);
      }

      v51 = v112;
      v68 = v120;
      goto LABEL_26;
    }

    v73 = v119;
    if (v70 <= 64)
    {
      v86 = v105;
      v85 = v106;
      v87 = v100;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v105, v106, v100, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v89 = v99;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v87, AssociatedConformanceWitness);
      v90 = v52;
      v91 = v102;
      (v86[3])(v89, v85, v86);
      v92 = v90;
      v93 = v119;
      LOBYTE(v87) = (*(*(*(v62 + 32) + 8) + 16))(v92, v91, v85);
      v94 = *v93;
      (*v93)(v91, v85);
      v51 = v112;
      v52 = v113;
      if (v87)
      {
        v94(v113, v85);
      }

      else
      {
        (*(v62 + 120))(v85, v62);
        v94(v52, v85);
      }

      v68 = v120;
      goto LABEL_26;
    }

    v121[0] = 0;
    v74 = *(v62 + 96);
    v75 = lazy protocol witness table accessor for type Int and conformance Int(v70, v71, v72);
    v76 = v102;
    v77 = v106;
    v74(v121, &type metadata for Int, v75, v106, v62);
    (*(*(*(v62 + 32) + 8) + 16))(v52, v76, v77);
    v78 = *v73;
    (*v73)(v76, v77);
    v78(v52, v77);
    v51 = v112;
    goto LABEL_17;
  }

  return (*(v114 + 8))(v117, v48);
}

unint64_t SIMDMask.subscript.getter(unint64_t a1, void *a2)
{
  v3 = *(a2[4] + 8);
  v4 = *(*(v3 + 24) + 16);
  v5 = a2[2];
  v6 = *(a2[3] + 48);
  swift_getAssociatedTypeWitness(255, v6, v5, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v8 = v7;
  v40 = v4;
  swift_getAssociatedTypeWitness(0, v4, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v39 - v12;
  v14 = swift_checkMetadataState(0, v8);
  v41 = *(v14 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v39 - v20;
  v22 = (*(v6 + 40))(v5, v6);
  if ((v22 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v22 <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v6 + 56))(a1, v5, v6);
  v23 = *(v3 + 64);
  if ((v23(v14, v3) & 1) == 0)
  {
    v29 = v23(v14, v3);
    v24 = (*(v3 + 128))(v14, v3);
    if (v29)
    {
      if (v24 > 64)
      {
        goto LABEL_9;
      }

      v34 = v40;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v40, v14, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
      (*(v34 + 3))(v13, v14, v34);
      v36 = (*(*(*(v3 + 32) + 8) + 16))(v21, v18, v14);
      v37 = *(v41 + 8);
      v37(v18, v14);
      if (v36)
      {
        v37(v21, v14);
        LOBYTE(v28) = 1;
        return v28 & 1;
      }

      v33 = (*(v3 + 120))(v14, v3);
      v37(v21, v14);
    }

    else
    {
      if (v24 >= 64)
      {
        (*(v41 + 8))(v21, v14);
        LOBYTE(v28) = 0;
        return v28 & 1;
      }

      v33 = (*(v3 + 120))(v14, v3);
      (*(v41 + 8))(v21, v14);
    }

    v28 = v33 >> 63;
    return v28 & 1;
  }

  v24 = (*(v3 + 128))(v14, v3);
  if (v24 >= 64)
  {
LABEL_9:
    v42 = 0;
    v30 = *(v3 + 96);
    v31 = lazy protocol witness table accessor for type Int and conformance Int(v24, v25, v26);
    v30(&v42, &type metadata for Int, v31, v14, v3);
    LOBYTE(v28) = (*(*(*(v3 + 32) + 8) + 16))(v21, v18, v14);
    v32 = *(v41 + 8);
    v32(v18, v14);
    v32(v21, v14);
    return v28 & 1;
  }

  v27 = (*(v3 + 120))(v14, v3);
  (*(v41 + 8))(v21, v14);
  v28 = v27 >> 63;
  return v28 & 1;
}

uint64_t SIMD.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = a1;
  swift_getAssociatedTypeWitness(255, *(a3 + 48), a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = type metadata accessor for Array(0, v7, v8, v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v10, v11);
  return SIMD.init<A>(_:)(&v14, a2, v10, a3, WitnessTable, a4);
}

uint64_t SIMD.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a1;
  v10 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v10, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v11);
  v46 = &v41 - v12;
  v50 = v13;
  v16 = type metadata accessor for Optional(0, v13, v14, v15);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v20 = &v41 - v19;
  v21 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v18, v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v26 = v25;
  v44 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v41 - v28;
  v30 = *(v10 + 48);
  v51 = a6;
  v52 = a2;
  v30(a2, v10);
  v42 = v21;
  (*(v21 + 16))(v24, v45, a3);
  v31 = *(a5 + 32);
  v53 = v29;
  v31(a3, a5);
  v43 = a3;
  v54 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v26, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v33 = 0;
  v47 = *(AssociatedConformanceWitness + 16);
  v48 = AssociatedConformanceWitness;
  v34 = (v49 + 48);
  v35 = (v49 + 32);
  v49 = v10 + 40;
  while (1)
  {
    v47(v54, v48);
    v36 = v50;
    if ((*v34)(v20, 1, v50) == 1)
    {
      break;
    }

    v37 = v46;
    (*v35)(v46, v20, v36);
    v38 = v52;
    if (v33 == (*(v10 + 40))(v52, v10))
    {
      goto LABEL_9;
    }

    (*(v10 + 64))(v37, v33, v38, v10);
    if (__OFADD__(v33++, 1))
    {
      __break(1u);
      break;
    }
  }

  (*(v44 + 8))(v53, v54);
  if (v33 < (*(v10 + 40))(v52, v10))
  {
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v42 + 8))(v45, v43);
}

uint64_t SIMD2.subscript.getter(unint64_t a1, uint64_t a2)
{
  if (a1 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t SIMD2.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t SIMD3.subscript.getter(unint64_t a1, uint64_t a2)
{
  if (a1 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t SIMD3.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t SIMD4.subscript.getter(unint64_t a1, uint64_t a2)
{
  if (a1 >= 4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t SIMD4.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t SIMD8.subscript.getter(unint64_t a1, uint64_t a2)
{
  if (a1 >= 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t SIMD8.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t SIMD16.subscript.getter(unint64_t a1, uint64_t a2)
{
  if (a1 >= 0x10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t SIMD16.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 0x10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t SIMD32.subscript.getter(unint64_t a1, uint64_t a2)
{
  if (a1 >= 0x20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t SIMD32.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 0x20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t SIMD2.init()(Class *a1, int **a2, _DWORD *a3, _DWORD *a4)
{
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for SIMDScalar, a3);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, a1, v7, &protocol requirements base descriptor for SIMDScalar, a4);
  return (*(AssociatedConformanceWitness + 48))(v8, AssociatedConformanceWitness);
}

uint64_t SIMD64.subscript.getter(unint64_t a1, uint64_t a2)
{
  if (a1 >= 0x40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t SIMD64.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 0x40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t static SIMD<>..<= infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a5;
  v68 = a1;
  v69 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v10 = v9;
  v11 = *(swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v11, v10, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v13 = v12;
  v72 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v12, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v72, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v60 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v55 - v16;
  v63 = swift_checkMetadataState(0, v13);
  MEMORY[0x1EEE9AC00](v63, v18);
  v59 = v55 - v19;
  v73 = *(a4 + 48);
  v70 = a3;
  swift_getAssociatedTypeWitness(0, v73, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v64 = v20;
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v66 = v55 - v27;
  v28 = swift_checkMetadataState(0, v10);
  (*(v11 + 48))(v28, v11);
  v29 = *(v11 + 40);
  v71 = a6;
  v67 = v29;
  v65 = v11 + 40;
  result = v29(v28, v11);
  if (result < 0)
  {
    goto LABEL_12;
  }

  v58 = v17;
  if (result)
  {
    v31 = 0;
    v32 = v73[7];
    v33 = v74 + 24;
    v34 = (v21 + 8);
    v55[2] = v72 + 3;
    v55[1] = v11 + 64;
    v56 = v32;
    v57 = result;
    v55[3] = v73 + 7;
    v61 = v11;
    v62 = v28;
    while (1)
    {
      v35 = v66;
      v36 = v70;
      v37 = v34;
      v38 = v73;
      v39 = v33;
      v40 = v32;
      (v32)(v31, v70, v73);
      v41 = v38;
      v34 = v37;
      (v40)(v31, v36, v41);
      v33 = v39;
      v42 = v64;
      v43 = (*(v74 + 24))(v35, v25, v64);
      v44 = *v37;
      (*v37)(v25, v42);
      v45 = v35;
      v46 = v61;
      v47 = v62;
      v44(v45, v42);
      v48 = v67(v47, v46);
      if (v48 < 0)
      {
        break;
      }

      if (v31 >= v48)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v55[0] = v25;
      v49 = v60;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v72, v63, v60, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v51 = v58;
      if (v43)
      {
        v52 = &unk_18071E0B0;
        v53 = 257;
      }

      else
      {
        v52 = &qword_18071E0A8;
        v53 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v52, v53, v49, AssociatedConformanceWitness);
      v54 = v59;
      (v72[3])(v51);
      (*(v46 + 64))(v54, v31++, v47, v46);
      v32 = v56;
      result = v57;
      v25 = v55[0];
      if (v57 == v31)
      {
        return result;
      }
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  v90 = a2;
  v98 = a6;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v11 = v10;
  v94 = *(swift_getAssociatedConformanceWitness(a4, a3, v10, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v94, v11, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v13 = v12;
  v95 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v12, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v95, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v81 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v82 = v76 - v16;
  v85 = swift_checkMetadataState(0, v13);
  MEMORY[0x1EEE9AC00](v85, v17);
  v80 = v76 - v18;
  v19 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v19, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v89 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = v76 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = v76 - v31;
  v91 = *(a3 - 1);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = (v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v37);
  v97 = v76 - v38;
  v99 = v21;
  v92 = *(v21 + 16);
  v93 = v39;
  (v92)(v32, a1);
  (*(v19 + 48))(a3, v19);
  v40 = (*(v19 + 40))(a3, v19);
  if (v40 < 0)
  {
    goto LABEL_16;
  }

  v86 = v11;
  v96 = a5;
  v100 = v36;
  v101 = a3;
  v42 = v92;
  v41 = v93;
  if (v40)
  {
    v43 = 0;
    do
    {
      v44 = v40;
      v45 = v41;
      v42(v28, v32, v41);
      (*(v19 + 64))(v28, v43, v101, v19);
      v40 = v44;
      v41 = v45;
      ++v43;
    }

    while (v44 != v43);
  }

  v92 = v19;
  v46 = *(v99 + 8);
  v99 += 8;
  v87 = v46;
  v88 = v28;
  v47 = v41;
  v46(v32, v41);
  (*(v91 + 32))(v97, v100, v101);
  v48 = swift_checkMetadataState(0, v86);
  v49 = v94;
  (v94[6])(v48, v94);
  v50 = v48;
  v51 = v49;
  v100 = v49[5];
  v86 = (v49 + 5);
  v52 = (v100)(v48, v49);
  if (v52 < 0)
  {
    goto LABEL_16;
  }

  v53 = v47;
  v54 = v92;
  if (v52)
  {
    v55 = 0;
    v56 = *(v92 + 56);
    v76[1] = v95 + 3;
    v76[0] = v51 + 8;
    v79 = v52;
    v78 = v92 + 56;
    v84 = v50;
    v77 = v56;
    v83 = v96 + 24;
    v57 = v88;
    while (1)
    {
      v58 = v101;
      v59 = v56;
      v56(v55, v101, v54);
      v60 = v89;
      v61 = v58;
      v62 = v96;
      v59(v55, v61, v54);
      v63 = v51;
      v64 = (*(v62 + 24))(v57, v60, v53, v62);
      v65 = v60;
      v66 = v87;
      v87(v65, v53);
      v66(v57, v53);
      v67 = v84;
      v68 = (v100)(v84, v63);
      if (v68 < 0)
      {
        break;
      }

      if (v55 >= v68)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v69 = v81;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v95, v85, v81, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      if (v64)
      {
        v71 = v82;
        v72 = &unk_18071E0B0;
        v73 = 257;
      }

      else
      {
        v71 = v82;
        v72 = &qword_18071E0A8;
        v73 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v72, v73, v69, AssociatedConformanceWitness);
      v74 = v80;
      (v95[3])(v71);
      v51 = v94;
      (v94[8])(v74, v55++, v67, v94);
      v54 = v92;
      v53 = v93;
      v56 = v77;
      if (v79 == v55)
      {
        return (*(v91 + 8))(v97, v101);
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v91 + 8))(v97, v101);
}

{
  v90 = a1;
  v98 = a6;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v11 = v10;
  v94 = *(swift_getAssociatedConformanceWitness(a4, a3, v10, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v94, v11, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v13 = v12;
  v95 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v12, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v95, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v81 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v82 = v76 - v16;
  v85 = swift_checkMetadataState(0, v13);
  MEMORY[0x1EEE9AC00](v85, v17);
  v80 = v76 - v18;
  v19 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v19, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v89 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = v76 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = v76 - v31;
  v91 = *(a3 - 1);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = (v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v37);
  v97 = v76 - v38;
  v99 = v21;
  v92 = *(v21 + 16);
  v93 = v39;
  (v92)(v32, a2);
  (*(v19 + 48))(a3, v19);
  v40 = (*(v19 + 40))(a3, v19);
  if (v40 < 0)
  {
    goto LABEL_16;
  }

  v86 = v11;
  v96 = a5;
  v100 = v36;
  v101 = a3;
  v42 = v92;
  v41 = v93;
  if (v40)
  {
    v43 = 0;
    do
    {
      v44 = v40;
      v45 = v41;
      v42(v28, v32, v41);
      (*(v19 + 64))(v28, v43, v101, v19);
      v40 = v44;
      v41 = v45;
      ++v43;
    }

    while (v44 != v43);
  }

  v92 = v19;
  v46 = *(v99 + 8);
  v99 += 8;
  v87 = v46;
  v88 = v28;
  v47 = v41;
  v46(v32, v41);
  (*(v91 + 32))(v97, v100, v101);
  v48 = swift_checkMetadataState(0, v86);
  v49 = v94;
  (v94[6])(v48, v94);
  v50 = v48;
  v51 = v49;
  v100 = v49[5];
  v86 = (v49 + 5);
  v52 = (v100)(v48, v49);
  if (v52 < 0)
  {
    goto LABEL_16;
  }

  v53 = v47;
  v54 = v92;
  if (v52)
  {
    v55 = 0;
    v56 = *(v92 + 56);
    v76[1] = v95 + 3;
    v76[0] = v51 + 8;
    v79 = v52;
    v78 = v92 + 56;
    v84 = v50;
    v77 = v56;
    v83 = v96 + 24;
    v57 = v88;
    while (1)
    {
      v58 = v101;
      v59 = v56;
      v56(v55, v101, v54);
      v60 = v89;
      v61 = v58;
      v62 = v96;
      v59(v55, v61, v54);
      v63 = v51;
      v64 = (*(v62 + 24))(v57, v60, v53, v62);
      v65 = v60;
      v66 = v87;
      v87(v65, v53);
      v66(v57, v53);
      v67 = v84;
      v68 = (v100)(v84, v63);
      if (v68 < 0)
      {
        break;
      }

      if (v55 >= v68)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v69 = v81;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v95, v85, v81, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      if (v64)
      {
        v71 = v82;
        v72 = &unk_18071E0B0;
        v73 = 257;
      }

      else
      {
        v71 = v82;
        v72 = &qword_18071E0A8;
        v73 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v72, v73, v69, AssociatedConformanceWitness);
      v74 = v80;
      (v95[3])(v71);
      v51 = v94;
      (v94[8])(v74, v55++, v67, v94);
      v54 = v92;
      v53 = v93;
      v56 = v77;
      if (v79 == v55)
      {
        return (*(v91 + 8))(v97, v101);
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v91 + 8))(v97, v101);
}

uint64_t static SIMD<>..> infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a5;
  v68 = a1;
  v69 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v10 = v9;
  v11 = *(swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v11, v10, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v13 = v12;
  v72 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v12, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v72, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v60 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v55 - v16;
  v63 = swift_checkMetadataState(0, v13);
  MEMORY[0x1EEE9AC00](v63, v18);
  v59 = v55 - v19;
  v73 = *(a4 + 48);
  v70 = a3;
  swift_getAssociatedTypeWitness(0, v73, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v64 = v20;
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v66 = v55 - v27;
  v28 = swift_checkMetadataState(0, v10);
  (*(v11 + 48))(v28, v11);
  v29 = *(v11 + 40);
  v71 = a6;
  v67 = v29;
  v65 = v11 + 40;
  result = v29(v28, v11);
  if (result < 0)
  {
    goto LABEL_12;
  }

  v58 = v17;
  if (result)
  {
    v31 = 0;
    v32 = v73[7];
    v33 = v74 + 16;
    v34 = (v21 + 8);
    v55[2] = v72 + 3;
    v55[1] = v11 + 64;
    v56 = v32;
    v57 = result;
    v55[3] = v73 + 7;
    v61 = v11;
    v62 = v28;
    while (1)
    {
      v35 = v66;
      v36 = v70;
      v37 = v34;
      v38 = v73;
      v39 = v33;
      v40 = v32;
      (v32)(v31, v70, v73);
      v41 = v38;
      v34 = v37;
      (v40)(v31, v36, v41);
      v33 = v39;
      v42 = v64;
      v43 = (*(v74 + 16))(v35, v25, v64);
      v44 = *v37;
      (*v37)(v25, v42);
      v45 = v35;
      v46 = v61;
      v47 = v62;
      v44(v45, v42);
      v48 = v67(v47, v46);
      if (v48 < 0)
      {
        break;
      }

      if (v31 >= v48)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v55[0] = v25;
      v49 = v60;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v72, v63, v60, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v51 = v58;
      if (v43)
      {
        v52 = &unk_18071E0B0;
        v53 = 257;
      }

      else
      {
        v52 = &qword_18071E0A8;
        v53 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v52, v53, v49, AssociatedConformanceWitness);
      v54 = v59;
      (v72[3])(v51);
      (*(v46 + 64))(v54, v31++, v47, v46);
      v32 = v56;
      result = v57;
      v25 = v55[0];
      if (v57 == v31)
      {
        return result;
      }
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  v90 = a2;
  v98 = a6;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v11 = v10;
  v94 = *(swift_getAssociatedConformanceWitness(a4, a3, v10, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v94, v11, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v13 = v12;
  v95 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v12, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v95, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v81 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v82 = v76 - v16;
  v85 = swift_checkMetadataState(0, v13);
  MEMORY[0x1EEE9AC00](v85, v17);
  v80 = v76 - v18;
  v19 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v19, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v89 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = v76 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = v76 - v31;
  v91 = *(a3 - 1);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = (v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v37);
  v97 = v76 - v38;
  v99 = v21;
  v92 = *(v21 + 16);
  v93 = v39;
  (v92)(v32, a1);
  (*(v19 + 48))(a3, v19);
  v40 = (*(v19 + 40))(a3, v19);
  if (v40 < 0)
  {
    goto LABEL_16;
  }

  v86 = v11;
  v96 = a5;
  v100 = v36;
  v101 = a3;
  v42 = v92;
  v41 = v93;
  if (v40)
  {
    v43 = 0;
    do
    {
      v44 = v40;
      v45 = v41;
      v42(v28, v32, v41);
      (*(v19 + 64))(v28, v43, v101, v19);
      v40 = v44;
      v41 = v45;
      ++v43;
    }

    while (v44 != v43);
  }

  v92 = v19;
  v46 = *(v99 + 8);
  v99 += 8;
  v87 = v46;
  v88 = v28;
  v47 = v41;
  v46(v32, v41);
  (*(v91 + 32))(v97, v100, v101);
  v48 = swift_checkMetadataState(0, v86);
  v49 = v94;
  (v94[6])(v48, v94);
  v50 = v48;
  v51 = v49;
  v100 = v49[5];
  v86 = (v49 + 5);
  v52 = (v100)(v48, v49);
  if (v52 < 0)
  {
    goto LABEL_16;
  }

  v53 = v47;
  v54 = v92;
  if (v52)
  {
    v55 = 0;
    v56 = *(v92 + 56);
    v76[1] = v95 + 3;
    v76[0] = v51 + 8;
    v79 = v52;
    v78 = v92 + 56;
    v84 = v50;
    v77 = v56;
    v83 = v96 + 16;
    v57 = v88;
    while (1)
    {
      v58 = v101;
      v59 = v56;
      v56(v55, v101, v54);
      v60 = v89;
      v61 = v58;
      v62 = v96;
      v59(v55, v61, v54);
      v63 = v51;
      v64 = (*(v62 + 16))(v57, v60, v53, v62);
      v65 = v60;
      v66 = v87;
      v87(v65, v53);
      v66(v57, v53);
      v67 = v84;
      v68 = (v100)(v84, v63);
      if (v68 < 0)
      {
        break;
      }

      if (v55 >= v68)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v69 = v81;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v95, v85, v81, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      if (v64)
      {
        v71 = v82;
        v72 = &unk_18071E0B0;
        v73 = 257;
      }

      else
      {
        v71 = v82;
        v72 = &qword_18071E0A8;
        v73 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v72, v73, v69, AssociatedConformanceWitness);
      v74 = v80;
      (v95[3])(v71);
      v51 = v94;
      (v94[8])(v74, v55++, v67, v94);
      v54 = v92;
      v53 = v93;
      v56 = v77;
      if (v79 == v55)
      {
        return (*(v91 + 8))(v97, v101);
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v91 + 8))(v97, v101);
}

{
  v90 = a1;
  v98 = a6;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v11 = v10;
  v94 = *(swift_getAssociatedConformanceWitness(a4, a3, v10, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v94, v11, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v13 = v12;
  v95 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v12, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v95, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v81 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v82 = v76 - v16;
  v85 = swift_checkMetadataState(0, v13);
  MEMORY[0x1EEE9AC00](v85, v17);
  v80 = v76 - v18;
  v19 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v19, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v89 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = v76 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = v76 - v31;
  v91 = *(a3 - 1);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = (v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v37);
  v97 = v76 - v38;
  v99 = v21;
  v92 = *(v21 + 16);
  v93 = v39;
  (v92)(v32, a2);
  (*(v19 + 48))(a3, v19);
  v40 = (*(v19 + 40))(a3, v19);
  if (v40 < 0)
  {
    goto LABEL_16;
  }

  v86 = v11;
  v96 = a5;
  v100 = v36;
  v101 = a3;
  v42 = v92;
  v41 = v93;
  if (v40)
  {
    v43 = 0;
    do
    {
      v44 = v40;
      v45 = v41;
      v42(v28, v32, v41);
      (*(v19 + 64))(v28, v43, v101, v19);
      v40 = v44;
      v41 = v45;
      ++v43;
    }

    while (v44 != v43);
  }

  v92 = v19;
  v46 = *(v99 + 8);
  v99 += 8;
  v87 = v46;
  v88 = v28;
  v47 = v41;
  v46(v32, v41);
  (*(v91 + 32))(v97, v100, v101);
  v48 = swift_checkMetadataState(0, v86);
  v49 = v94;
  (v94[6])(v48, v94);
  v50 = v48;
  v51 = v49;
  v100 = v49[5];
  v86 = (v49 + 5);
  v52 = (v100)(v48, v49);
  if (v52 < 0)
  {
    goto LABEL_16;
  }

  v53 = v47;
  v54 = v92;
  if (v52)
  {
    v55 = 0;
    v56 = *(v92 + 56);
    v76[1] = v95 + 3;
    v76[0] = v51 + 8;
    v79 = v52;
    v78 = v92 + 56;
    v84 = v50;
    v77 = v56;
    v83 = v96 + 16;
    v57 = v88;
    while (1)
    {
      v58 = v101;
      v59 = v56;
      v56(v55, v101, v54);
      v60 = v89;
      v61 = v58;
      v62 = v96;
      v59(v55, v61, v54);
      v63 = v51;
      v64 = (*(v62 + 16))(v57, v60, v53, v62);
      v65 = v60;
      v66 = v87;
      v87(v65, v53);
      v66(v57, v53);
      v67 = v84;
      v68 = (v100)(v84, v63);
      if (v68 < 0)
      {
        break;
      }

      if (v55 >= v68)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v69 = v81;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v95, v85, v81, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      if (v64)
      {
        v71 = v82;
        v72 = &unk_18071E0B0;
        v73 = 257;
      }

      else
      {
        v71 = v82;
        v72 = &qword_18071E0A8;
        v73 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v72, v73, v69, AssociatedConformanceWitness);
      v74 = v80;
      (v95[3])(v71);
      v51 = v94;
      (v94[8])(v74, v55++, v67, v94);
      v54 = v92;
      v53 = v93;
      v56 = v77;
      if (v79 == v55)
      {
        return (*(v91 + 8))(v97, v101);
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v91 + 8))(v97, v101);
}