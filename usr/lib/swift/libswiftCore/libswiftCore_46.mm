uint64_t _stringCompare(_:_:expecting:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  if (a1 == a3 && a2 == a4)
  {
    return (a5 ^ 1) & 1;
  }

  if ((~a2 & 0x6000000000000000) != 0 || (a4 & 0x6000000000000000) != 0x6000000000000000)
  {
    return _stringCompareInternal(_:_:expecting:)(a1, a2, a3, a4, a5 & 1);
  }

  v6 = (bswap64(a1) < bswap64(a3)) & a5;
  v7 = a2 == a4;
  v8 = bswap64(a2) < bswap64(a4);
  if (a5)
  {
    v7 = v8;
  }

  if (a1 == a3)
  {
    v6 = v7;
  }

  return v6 & 1;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance Character(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4 == *a2 && v5 == v7)
  {
    return 0;
  }

  if ((~v5 & 0x6000000000000000) != 0 || (v7 & 0x6000000000000000) != 0x6000000000000000)
  {
    return _stringCompareInternal(_:_:expecting:)(v4, v5, v6, v7, 1);
  }

  v11 = bswap64(v4) < bswap64(v6);
  v12 = bswap64(v5) < bswap64(v7);
  if (v4 == v6)
  {
    return v12;
  }

  else
  {
    return v11;
  }
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance Character(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    v8 = 0;
  }

  else if ((~v5 & 0x6000000000000000) == 0 && (v3 & 0x6000000000000000) == 0x6000000000000000)
  {
    v9 = bswap64(v4) < bswap64(v2);
    v10 = bswap64(v5) < bswap64(v3);
    if (v4 == v2)
    {
      v8 = v10;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v8 = _stringCompareInternal(_:_:expecting:)(v4, v5, v2, v3, 1);
  }

  return (v8 & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance Character(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4 == *a2 && v5 == v7)
  {
    v10 = 0;
  }

  else if ((~v5 & 0x6000000000000000) == 0 && (v7 & 0x6000000000000000) == 0x6000000000000000)
  {
    v11 = bswap64(v4) < bswap64(v6);
    v12 = bswap64(v5) < bswap64(v7);
    if (v4 == v6)
    {
      v10 = v12;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v10 = _stringCompareInternal(_:_:expecting:)(v4, v5, v6, v7, 1);
  }

  return (v10 & 1) == 0;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance Character(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  if ((~v5 & 0x6000000000000000) != 0 || (v3 & 0x6000000000000000) != 0x6000000000000000)
  {
    return _stringCompareInternal(_:_:expecting:)(v4, v5, v2, v3, 1);
  }

  v9 = bswap64(v4) < bswap64(v2);
  v10 = bswap64(v5) < bswap64(v3);
  if (v4 == v2)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Substring(unint64_t *a1, void *a2)
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
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)(v6, v7, v10, v11, v8, v9, v12, v13, 0) & 1;
  }
}

uint64_t static _StringComparisonResult.== infix(_:_:)(char a1, char a2)
{
  if (a1)
  {
    if ((a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a2)
  {
    return 0;
  }

  return 1;
}

uint64_t _stringCompareWithSmolCheck(_:_:expecting:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  if ((~a2 & 0x6000000000000000) != 0 || (~a4 & 0x6000000000000000) != 0)
  {
    return _stringCompareInternal(_:_:expecting:)(a1, a2, a3, a4, a5 & 1);
  }

  v7 = bswap64(a2) < bswap64(a4);
  if ((a5 & 1) == 0)
  {
    v7 = a2 == a4;
  }

  v8 = a5 & (bswap64(a1) < bswap64(a3));
  if (a1 == a3)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t _stringCompareInternal(_:_:expecting:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if ((a2 & 0x1000000000000000) == 0 && (a4 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = a1;
    }

    if ((v6 & 0x4000000000000000) != 0)
    {
      v8 = a4 & 0x2000000000000000;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a3;
      }

      v7 = (v9 >> 62) & 1;
      if ((a2 & 0x2000000000000000) != 0)
      {
LABEL_20:
        v16 = HIBYTE(a2) & 0xF;
        __s1 = a1;
        v53 = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v8)
        {
          v17 = HIBYTE(a4) & 0xF;
          __s2[0] = a3;
          __s2[1] = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((v7 & 1) == 0)
          {
            return _stringCompareFastUTF8Abnormal(_:_:expecting:)(&__s1, HIBYTE(a2) & 0xF, __s2, HIBYTE(a4) & 0xF, a5 & 1);
          }

          v18 = v16 - v17;
          if (v16 == v17 || (a5 & 1) != 0)
          {
            if (v17 >= v16)
            {
              v19 = HIBYTE(a2) & 0xF;
            }

            else
            {
              v19 = HIBYTE(a4) & 0xF;
            }

            v20 = a5;
            v21 = _swift_stdlib_memcmp(&__s1, __s2, v19);
            v22 = v21;
            if (!v21)
            {
              v22 = v18;
            }

            v25 = v22 == 0;
            v23 = v22 < 0;
            v24 = v25;
            v25 = (v20 & 1) == 0;
LABEL_63:
            if (v25)
            {
              return v24;
            }

            else
            {
              return v23;
            }
          }

          return 0;
        }

        if ((a3 & 0x1000000000000000) != 0)
        {
          v26 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v27 = a3 & 0xFFFFFFFFFFFFLL;
          if (v7)
          {
LABEL_35:
            if ((a5 & 1) != 0 || v16 == v27)
            {
              if (v27 >= v16)
              {
                v28 = v16;
              }

              else
              {
                v28 = v27;
              }

              v29 = a5;
              v30 = _swift_stdlib_memcmp(&__s1, v26, v28);
              v31 = v30;
              if (!v30)
              {
                v31 = v16 - v27;
              }

              v25 = v31 == 0;
              v23 = v31 < 0;
              v24 = v25;
              v25 = (v29 & 1) == 0;
              goto LABEL_63;
            }

            return 0;
          }
        }

        else
        {
          v47 = a5;
          v48 = _StringObject.sharedUTF8.getter(a3, a4);
          a5 = v47;
          v27 = v49;
          v26 = v48;
          if (v7)
          {
            goto LABEL_35;
          }
        }

        return _stringCompareFastUTF8Abnormal(_:_:expecting:)(&__s1, v16, v26, v27, a5 & 1);
      }
    }

    else
    {
      LODWORD(v7) = 0;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v8 = a4 & 0x2000000000000000;
        goto LABEL_20;
      }
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v10 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v11 = a1 & 0xFFFFFFFFFFFFLL;
      if ((a4 & 0x2000000000000000) == 0)
      {
LABEL_15:
        if ((a3 & 0x1000000000000000) != 0)
        {
          v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v13 = a3 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v10;
          v50 = v11;
          v44 = a5;
          v45 = _StringObject.sharedUTF8.getter(a3, a4);
          a5 = v44;
          v12 = v45;
          v10 = v43;
          v13 = v46;
          v11 = v50;
        }

        v14 = a5 & 1;

        return _stringCompareFastUTF8(_:_:expecting:bothNFC:)(v10, v11, v12, v13, v14, v7);
      }
    }

    else
    {
      v33 = a5;
      v34 = a3;
      v35 = a4;
      v10 = _StringObject.sharedUTF8.getter(a1, a2);
      a4 = v35;
      a3 = v34;
      a5 = v33;
      if ((v35 & 0x2000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

    v36 = HIBYTE(a4) & 0xF;
    __s1 = a3;
    v53 = a4 & 0xFFFFFFFFFFFFFFLL;
    if ((v7 & 1) == 0)
    {
      return _stringCompareFastUTF8Abnormal(_:_:expecting:)(v10, v11, &__s1, HIBYTE(a4) & 0xF, a5 & 1);
    }

    if ((a5 & 1) != 0 || v11 == v36)
    {
      if (v36 >= v11)
      {
        v38 = v11;
      }

      else
      {
        v38 = HIBYTE(a4) & 0xF;
      }

      v39 = v11;
      v40 = a5;
      v41 = _swift_stdlib_memcmp(v10, &__s1, v38);
      v42 = v41;
      if (!v41)
      {
        v42 = v39 - v36;
      }

      v25 = v42 == 0;
      v23 = v42 < 0;
      v24 = v25;
      v25 = (v40 & 1) == 0;
      goto LABEL_63;
    }

    return 0;
  }

  v32 = a5 & 1;

  return _stringCompareSlow(_:_:expecting:)(a1, a2, a3, a4, v32);
}

uint64_t _stringCompareSlow(_:_:expecting:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  return _StringGutsSlice.compare(with:expecting:)(a3, a4, 0, v6, a5 & 1, a1, a2, 0, v7) & 1;
}

uint64_t _stringCompareFastUTF8(_:_:expecting:bothNFC:)(void *a1, int64_t a2, void *__s2, int64_t a4, char a5, char a6)
{
  if (a6)
  {
    if ((a5 & 1) != 0 || a2 == a4)
    {
      if (a4 >= a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = a4;
      }

      v11 = _swift_stdlib_memcmp(a1, __s2, v8);
      v12 = v11;
      if (!v11)
      {
        v12 = a2 - a4;
      }

      v13 = v12 == 0;
      v14 = v12 < 0;
      v15 = v13;
      if (a5)
      {
        return v14;
      }

      else
      {
        return v15;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = a5 & 1;

    return _stringCompareFastUTF8Abnormal(_:_:expecting:)(a1, a2, __s2, a4, v16);
  }
}

uint64_t _stringCompareInternal(_:_:_:_:expecting:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((a2 & 0x1000000000000000) != 0 || (a6 & 0x1000000000000000) != 0)
  {
    v42 = _StringGutsSlice.compare(with:expecting:)(a5, a6, a7, a8, a9 & 1, a1, a2, a3, a4);
    return v42 & 1;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = a1;
  }

  if ((v13 & 0x4000000000000000) == 0)
  {
    LODWORD(v14) = 0;
    if ((a2 & 0x2000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v58 = a1;
    v59 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a3 < 0)
    {
      goto LABEL_77;
    }

    if ((HIBYTE(a2) & 0xF) < a4)
    {
      goto LABEL_77;
    }

    v27 = a4 - a3;
    if (a4 - a3 < 0)
    {
      goto LABEL_77;
    }

    if ((a6 & 0x2000000000000000) != 0)
    {
      v57[0] = a5;
      v57[1] = a6 & 0xFFFFFFFFFFFFFFLL;
      if (a7 < 0)
      {
        goto LABEL_77;
      }

      if ((HIBYTE(a6) & 0xF) < a8)
      {
        goto LABEL_77;
      }

      v40 = a8 - a7;
      if (a8 - a7 < 0)
      {
        goto LABEL_77;
      }

      if (!v14)
      {
        v42 = _stringCompareFastUTF8Abnormal(_:_:expecting:)(&v58 + a3, v27, v57 + a7, v40, a9 & 1);
        return v42 & 1;
      }

      v41 = v27 - v40;
      if (v27 == v40 || (a9 & 1) != 0)
      {
        if (v40 >= v27)
        {
          v43 = v27;
        }

        else
        {
          v43 = a8 - a7;
        }

        v44 = _swift_stdlib_memcmp(&v58 + a3, v57 + a7, v43);
        v36 = v44;
        if (!v44)
        {
          v36 = v41;
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((a5 & 0x1000000000000000) != 0)
      {
        v28 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v29 = a5 & 0xFFFFFFFFFFFFLL;
        if (a7 < 0)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v54 = a3;
        v55 = _StringObject.sharedUTF8.getter(a5, a6);
        a3 = v54;
        v28 = v55;
        v29 = v56;
        if (a7 < 0)
        {
          goto LABEL_77;
        }
      }

      if (v29 < a8)
      {
        goto LABEL_77;
      }

      v30 = a3;
      v32 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a7, a8, v28, v29);
      if (!v14)
      {
        v42 = _stringCompareFastUTF8Abnormal(_:_:expecting:)(&v58 + v30, v27, v32, v31, a9 & 1);
        return v42 & 1;
      }

      if ((a9 & 1) != 0 || v27 == v31)
      {
        if (v31 >= v27)
        {
          v33 = v27;
        }

        else
        {
          v33 = v31;
        }

        v34 = v31;
        v35 = _swift_stdlib_memcmp(&v58 + v30, v32, v33);
        v36 = v35;
        v37 = v27 - v34;
LABEL_46:
        if (!v35)
        {
          v36 = v37;
        }

LABEL_61:
        v45 = v36 == 0;
        v46 = v36 < 0;
        v47 = v45;
        if (a9)
        {
          v42 = v46;
        }

        else
        {
          v42 = v47;
        }

        return v42 & 1;
      }
    }

LABEL_55:
    v42 = 0;
    return v42 & 1;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v26 = a6;
  }

  else
  {
    v26 = a5;
  }

  v14 = (v26 >> 62) & 1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v16 = a1 & 0xFFFFFFFFFFFFLL;
    if (a3 < 0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v48 = a3;
    v49 = a4;
    v50 = _StringObject.sharedUTF8.getter(a1, a2);
    a4 = v49;
    a3 = v48;
    v15 = v50;
    v16 = v51;
    if (v48 < 0)
    {
      goto LABEL_77;
    }
  }

  if (v16 < a4)
  {
    goto LABEL_77;
  }

  v17 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a3, a4, v15, v16);
  v19 = v18;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v58 = a5;
    v59 = a6 & 0xFFFFFFFFFFFFFFLL;
    if (a7 < 0)
    {
      goto LABEL_77;
    }

    if ((HIBYTE(a6) & 0xF) < a8)
    {
      goto LABEL_77;
    }

    v38 = a8 - a7;
    if (v38 < 0)
    {
      goto LABEL_77;
    }

    if (!v14)
    {
      v42 = _stringCompareFastUTF8Abnormal(_:_:expecting:)(v17, v18, &v58 + a7, v38, a9 & 1);
      return v42 & 1;
    }

    if ((a9 & 1) != 0 || v18 == v38)
    {
      if (v38 >= v18)
      {
        v39 = v18;
      }

      else
      {
        v39 = v38;
      }

      v35 = _swift_stdlib_memcmp(v17, &v58 + a7, v39);
      v36 = v35;
      v37 = v19 - v38;
      goto LABEL_46;
    }

    goto LABEL_55;
  }

  if ((a5 & 0x1000000000000000) == 0)
  {
    v52 = v17;
    v20 = _StringObject.sharedUTF8.getter(a5, a6);
    v17 = v52;
    v21 = v53;
    if ((a7 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_77:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v20 = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v21 = a5 & 0xFFFFFFFFFFFFLL;
  if (a7 < 0)
  {
    goto LABEL_77;
  }

LABEL_14:
  if (v21 < a8)
  {
    goto LABEL_77;
  }

  v22 = v17;
  v24 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a7, a8, v20, v21);

  return _stringCompareFastUTF8(_:_:expecting:bothNFC:)(v22, v19, v24, v23, a9 & 1, v14);
}

uint64_t _StringGuts.withFastUTF8<A>(range:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v14[0] = a5;
    v14[1] = a6 & 0xFFFFFFFFFFFFFFLL;
    if ((a1 & 0x8000000000000000) == 0 && (HIBYTE(a6) & 0xF) >= a2 && a2 - a1 >= 0)
    {
      v9 = v14 + a1;
      return a3(v9);
    }

    goto LABEL_13;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = a5 & 0xFFFFFFFFFFFFLL;
    if (a1 < 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = a1;
    v13 = a2;
    v7 = _StringObject.sharedUTF8.getter(a5, a6);
    v8 = v11;
    a1 = v12;
    a2 = v13;
    if (v12 < 0)
    {
      goto LABEL_13;
    }
  }

  if (v8 < a2)
  {
LABEL_13:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a1, a2, v7, v8);
  return a3(v9);
}

BOOL _stringCompareFastUTF8Abnormal(_:_:expecting:)(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 a5)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  if (v7 < 1)
  {
LABEL_22:
    if (a5)
    {
      return a2 < a4;
    }

    else
    {
      return a2 == a4;
    }
  }

  else
  {
    if (*a1 == *a3)
    {
      v10 = 1;
      while (1)
      {
        v11 = v10;
        if (v7 == v10)
        {
          break;
        }

        v12 = a1[v10];
        v13 = a3[v10++];
        if (v12 != v13)
        {
          v14 = v11;
          if (v11 < v7)
          {
            goto LABEL_13;
          }

          goto LABEL_22;
        }
      }

      v14 = 0;
      if (v10 >= v7)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_13:
    v15 = a2;
    if (v14 != a2)
    {
      v16 = v14;
      do
      {
        v17 = a1[v16--] & 0xC0;
      }

      while (v17 == 128);
      v15 = v16 + 1;
    }

    v18 = _decodeScalar(_:startingAt:)(a1, a2, v15);
    v20 = v19;
    v21 = _decodeScalar(_:startingAt:)(a3, v19, v15);
    v23 = v22;
    if (v18 >= 0x300 && (_swift_stdlib_getNormData(v18) & 0x7FE) != 0 || v21 >= 0x300 && (_swift_stdlib_getNormData(v21) & 0x7FE) != 0 || !UnsafeBufferPointer<A>.hasNormalizationBoundary(before:)(v20 + v15, a1, a2) || !UnsafeBufferPointer<A>.hasNormalizationBoundary(before:)(v23 + v15, a3, a4))
    {
      v25 = _findBoundary(_:before:)(a1, a2, v14);
      v26 = _findBoundary(_:before:)(a3, a4, v14);
      if (v26 < v25)
      {
        v25 = v26;
      }

      v27 = specialized Collection.subscript.getter(v25, a1, a2);
      v31 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v27, v28, v29, v30);
      v33 = v32;
      v34 = specialized Collection.subscript.getter(v25, a3, a4);
      v38 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v34, v35, v36, v37);
      v40 = ((v31 + 0x7FFFFFFFFFFFFFE0) >> 56) & 0xF;
      if (((v31 + 0x7FFFFFFFFFFFFFE0) & 0x2000000000000000) == 0)
      {
        v40 = v33 & 0xFFFFFFFFFFFFLL;
      }

      v41 = v38 + 0x7FFFFFFFFFFFFFE0;
      if (((v38 + 0x7FFFFFFFFFFFFFE0) & 0x2000000000000000) != 0)
      {
        v42 = HIBYTE(v41) & 0xF;
      }

      else
      {
        v42 = v39 & 0xFFFFFFFFFFFFLL;
      }

      return _StringGutsSlice.compare(with:expecting:)(v39 | 0x1000000000000000, v41 | 0x8000000000000000, 0, v42, a5 & 1, v33 | 0x1000000000000000, (v31 + 0x7FFFFFFFFFFFFFE0) | 0x8000000000000000, 0, v40) & 1;
    }

    else
    {
      return a5 & (v18 < v21);
    }
  }
}

uint64_t _scalarAlign(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    do
    {
      v3 = *(a1 + a3--) & 0xC0;
    }

    while (v3 == 128);
    ++a3;
  }

  return a3;
}

BOOL UnsafeBufferPointer<A>.hasNormalizationBoundary(before:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a1 && a1 != a3)
  {
    if (*(a2 + a1) < 0xCCu)
    {
      return 1;
    }

    v5 = _decodeScalar(_:startingAt:)(a2, a2, a1);
    if (v5 >= 0x300)
    {
      NormData = _swift_stdlib_getNormData(v5);
      if ((NormData & 0x7F8) != 0)
      {
        return 0;
      }
    }

    else
    {
      LOBYTE(NormData) = 0;
    }

    return (NormData & 6) == 0;
  }

  return result;
}

uint64_t _findBoundary(_:before:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < a2)
  {
    v3 = ~a3;
    v4 = (a1 + a3);
    do
    {
      v5 = *v4--;
      ++v3;
    }

    while ((v5 & 0xC0) == 0x80);
    if (v3)
    {
      v6 = -v3;
      v7 = a1 - 2;
      while (1)
      {
        v8 = (a1 + v6);
        v9 = *(a1 + v6);
        if ((v9 & 0x80000000) == 0)
        {
          break;
        }

        v10 = (__clz(~v9) - 24);
        if (v10 <= 2)
        {
          if (v10 != 2)
          {
            return v6;
          }

          v12 = v8 + 1;
          v13 = (v9 & 0x1F) << 6;
          if (v13 < 0x300)
          {
            return v6;
          }
        }

        else if (v10 == 3)
        {
          v11 = v8[1];
          v12 = v8 + 2;
          v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          if (v13 < 0x300)
          {
            return v6;
          }
        }

        else
        {
          v14 = v8[1];
          v15 = v8[2];
          v12 = v8 + 3;
          v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          if (v13 < 0x300)
          {
            return v6;
          }
        }

        v16 = a1;
        if ((_swift_stdlib_getNormData(v13 | *v12 & 0x3F) & 0x7FE) == 0)
        {
          return v6;
        }

        v17 = v6 - 1;
        a1 = v16;
        if ((*(v16 + v6 - 1) & 0xC0) == 0x80)
        {
          do
          {
            v18 = *(v7 + v6--) & 0xC0;
          }

          while (v18 == 128);
          v17 = v6 - 1;
        }

        a2 = 0;
        v6 = v17;
        if (!v17)
        {
          return a2;
        }
      }

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return a2;
}

uint64_t _StringGutsSlice.compare(with:expecting:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a5;
  if ((a7 & 0x1000000000000000) != 0 || (a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_49;
  }

  v62 = a4;
  if ((a7 & 0x2000000000000000) != 0)
  {
    v64 = a6;
    v65 = a7 & 0xFFFFFFFFFFFFFFLL;
    if (a8 < 0)
    {
      goto LABEL_59;
    }

    if ((HIBYTE(a7) & 0xF) < a9)
    {
      goto LABEL_59;
    }

    v34 = a9 - a8;
    if (a9 - a8 < 0)
    {
      goto LABEL_59;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v63[0] = a1;
      v63[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a3 < 0)
      {
        goto LABEL_59;
      }

      if ((HIBYTE(a2) & 0xF) < a4)
      {
        goto LABEL_59;
      }

      v39 = a5;
      v42 = a4 - a3;
      if (a4 - a3 < 0)
      {
        goto LABEL_59;
      }

      v38 = a6;
      if (v42 >= v34)
      {
        v43 = a9 - a8;
      }

      else
      {
        v43 = a4 - a3;
      }

      v44 = &v64 + a8;
      v45 = v63 + a3;
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v35 = a4;
        v36 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v37 = a1 & 0xFFFFFFFFFFFFLL;
        if (a3 < 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v58 = a6;
        v59 = _StringObject.sharedUTF8.getter(a1, a2);
        v35 = v62;
        a6 = v58;
        v36 = v59;
        v37 = v60;
        if (a3 < 0)
        {
          goto LABEL_59;
        }
      }

      if (v37 < v35)
      {
        goto LABEL_59;
      }

      v38 = a6;
      v39 = v11;
      v41 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a3, v35, v36, v37);
      v42 = v40;
      if (v40 >= v34)
      {
        v43 = a9 - a8;
      }

      else
      {
        v43 = v40;
      }

      v44 = &v64 + a8;
      v45 = v41;
    }

    v52 = _swift_stdlib_memcmp(v44, v45, v43);
    v53 = v52;
    if (!v52)
    {
      v53 = v34 - v42;
    }

    v11 = v39;
    a6 = v38;
    a4 = v62;
    if (!v53)
    {
      return (v11 & 1) == 0;
    }

    goto LABEL_49;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    v15 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v16 = a6 & 0xFFFFFFFFFFFFLL;
    if (a8 < 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v54 = a6;
    v55 = _StringObject.sharedUTF8.getter(a6, a7);
    a6 = v54;
    v15 = v55;
    v16 = v56;
    if (a8 < 0)
    {
      goto LABEL_59;
    }
  }

  if (v16 < a9)
  {
    goto LABEL_59;
  }

  v17 = a6;
  v18 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a8, a9, v15, v16);
  v20 = v19;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v64 = a1;
    v65 = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((a3 & 0x8000000000000000) == 0 && (HIBYTE(a2) & 0xF) >= v62)
    {
      v46 = v17;
      v47 = v11;
      v48 = v62 - a3;
      if (v62 - a3 >= 0)
      {
        if (v48 >= v19)
        {
          v49 = v19;
        }

        else
        {
          v49 = v62 - a3;
        }

        v50 = _swift_stdlib_memcmp(v18, &v64 + a3, v49);
        v51 = v50;
        if (!v50)
        {
          v51 = v20 - v48;
        }

        a4 = v62;
        v11 = v47;
        a6 = v46;
        if (!v51)
        {
          return (v11 & 1) == 0;
        }

        goto LABEL_49;
      }
    }

    goto LABEL_59;
  }

  __s1 = v18;
  if ((a1 & 0x1000000000000000) == 0)
  {
    v21 = _StringObject.sharedUTF8.getter(a1, a2);
    v22 = v57;
    v23 = v62;
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_59:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v21 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v22 = a1 & 0xFFFFFFFFFFFFLL;
  v23 = v62;
  if (a3 < 0)
  {
    goto LABEL_59;
  }

LABEL_10:
  if (v22 < v23)
  {
    goto LABEL_59;
  }

  v25 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a3, v23, v21, v22);
  v26 = v17;
  v27 = v11;
  v28 = v24;
  if (v24 >= v20)
  {
    v29 = v20;
  }

  else
  {
    v29 = v24;
  }

  v30 = _swift_stdlib_memcmp(__s1, v25, v29);
  v31 = v30;
  v32 = v20 - v28;
  v11 = v27;
  a6 = v26;
  if (!v30)
  {
    v31 = v32;
  }

  a4 = v62;
  if (!v31)
  {
    return (v11 & 1) == 0;
  }

LABEL_49:

  return _StringGutsSlice._slowCompare(with:expecting:)(a1, a2, a3, a4, v11 & 1, a6, a7, a8, a9);
}

uint64_t _utf8ScalarLength(_:endingAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = *(a3 + a1 - 1 + v3--) & 0xC0;
  }

  while (v4 == 128);
  return -v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _StringComparisonResult(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      return 1;
    }
  }

  else if ((*a2 & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t _StringGutsSlice._slowCompare(with:expecting:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v9 = a6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9 < (a9 & 0xFFFFFFFFFFFFuLL))
  {
    goto LABEL_94;
  }

  LOBYTE(v77) = 1;
  v11 = 3;
  if ((a8 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v11 = 1;
  }

  v12 = v11 | (a8 << 16);
  *&v84 = v12;
  *(&v84 + 1) = (a9 << 16) | 1;
  *&v85 = a6;
  *(&v85 + 1) = a7;
  if ((a7 & 0x2000000000000000) != 0)
  {
    v13 = a7;
  }

  else
  {
    v13 = a6;
  }

  *&v86 = v12;
  WORD4(v86) = 1;
  BYTE10(v86) = (v13 & 0x4000000000000000) != 0;
  LOBYTE(v87) = 1;
  *(&v87 + 1) = &_swiftEmptyArrayStorage;
  LOBYTE(v88) = 0;
  *(&v88 + 4) = 0x1000000000000;
  *&v89 = &_swiftEmptyArrayStorage;
  v14 = HIBYTE(a2) & 0xF;
  BYTE8(v89) = 0;
  HIDWORD(v89) = 0;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v90 = 1;
  if (v14 < (a4 & 0xFFFFFFFFFFFFuLL))
  {
LABEL_94:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  LOBYTE(v70) = 1;
  v15 = 3;
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v15 = 1;
  }

  v16 = v15 | (a3 << 16);
  *&v77 = v16;
  *(&v77 + 1) = (a4 << 16) | 1;
  *&v78 = a1;
  *(&v78 + 1) = a2;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = a1;
  }

  *&v79 = v16;
  WORD4(v79) = 1;
  BYTE10(v79) = (v17 & 0x4000000000000000) != 0;
  LOBYTE(v80) = 1;
  *(&v80 + 1) = &_swiftEmptyArrayStorage;
  LOBYTE(v81) = 0;
  *(&v81 + 4) = 0x1000000000000;
  *&v82 = &_swiftEmptyArrayStorage;
  BYTE8(v82) = 0;
  HIDWORD(v82) = 0;
  v83 = 1;
  a7;
  v18 = a2;
  while (1)
  {
    v20 = MEMORY[0x1EEE9AC00](v18, v19);
    if (BYTE9(v86) != 1)
    {
      if (BYTE10(v86))
      {
        v20 = specialized closure #1 in Unicode._InternalNFC.Iterator.next()(&v84, v21);
        if ((v20 & 0x100000000) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v20 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v86 + 8, closure #1 in Unicode._InternalNFC.Iterator.next()specialized partial apply);
        if ((v20 & 0x100000000) == 0)
        {
LABEL_27:
          v22 = 0;
          LODWORD(v23) = v20;
          goto LABEL_38;
        }
      }
    }

    v22 = 1;
    BYTE9(v86) = 1;
    if (BYTE10(v86))
    {
      LODWORD(v23) = 0;
    }

    else
    {
      v20 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v86 + 8);
      LODWORD(v23) = v20;
      if ((v20 & 0x100000000) != 0)
      {
        v24 = HIDWORD(v89);
        v25 = v90;
        HIDWORD(v89) = v20;
        v90 = 1;
        if (v25 == 1)
        {
          v26 = v89;
          v23 = *(v89 + 16);
          if (v23)
          {
            if ((BYTE8(v89) & 1) == 0)
            {
              v27 = v23 - 1;
              if (v23 != 1)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v89);
                *&v89 = v26;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
                }

                *&v89 = v26;
                v40 = &v26[v23 + 3] + 2;
                v41 = v26 + 18;
                v42 = 1;
                do
                {
                  if (v42 - 1 != v27)
                  {
                    v44 = v26[2];
                    if (v42 - 1 >= v44 || v27 >= v44)
                    {
                      goto LABEL_94;
                    }

                    v45 = *v41;
                    v46 = *(v41 - 1);
                    v47 = *v40;
                    *(v41 - 1) = *(v40 - 1);
                    *v41 = v47;
                    *(v40 - 1) = v46;
                    *v40 = v45;
                  }

                  --v27;
                  v40 -= 4;
                  v41 += 4;
                  v43 = v42++ < v27;
                }

                while (v43);
                *&v89 = v26;
              }

              BYTE8(v89) = 1;
              if (!v26[2])
              {
LABEL_96:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v20 = swift_isUniquelyReferenced_nonNull_native(v26);
            *&v89 = v26;
            if (v20)
            {
              v28 = v26[2];
              if (!v28)
              {
                goto LABEL_97;
              }
            }

            else
            {
              v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
              v26 = v20;
              *&v89 = v20;
              v28 = *(v20 + 16);
              if (!v28)
              {
                goto LABEL_97;
              }
            }

            v22 = 0;
            v29 = (v28 - 1);
            LODWORD(v23) = v26[v29 + 4];
            v26[2] = v29;
            *&v89 = v26;
          }

          else
          {
            BYTE8(v89) = 0;
          }
        }

        else
        {
          v22 = 0;
          LODWORD(v23) = v24;
        }
      }

      else
      {
        v22 = 0;
      }
    }

LABEL_38:
    MEMORY[0x1EEE9AC00](v20, v21);
    if ((BYTE9(v79) & 1) == 0)
    {
      if (BYTE10(v79))
      {
        v18 = specialized closure #1 in Unicode._InternalNFC.Iterator.next()(&v77, v19);
        if ((v18 & 0x100000000) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v18 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v79 + 8, closure #1 in Unicode._InternalNFC.Iterator.next()specialized partial apply);
        if ((v18 & 0x100000000) == 0)
        {
LABEL_49:
          v30 = 0;
          if (v22)
          {
            goto LABEL_88;
          }

          goto LABEL_63;
        }
      }
    }

    v30 = 1;
    BYTE9(v79) = 1;
    if (BYTE10(v79))
    {
      v18 = 0;
      if (v22)
      {
        goto LABEL_88;
      }

      goto LABEL_63;
    }

    v18 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v79 + 8);
    if ((v18 & 0x100000000) == 0)
    {
      v30 = 0;
      if (v22)
      {
        goto LABEL_88;
      }

      goto LABEL_63;
    }

    v31 = HIDWORD(v82);
    v32 = v83;
    HIDWORD(v82) = v18;
    v83 = 1;
    if (v32 != 1)
    {
      v30 = 0;
      v18 = v31;
      if (v22)
      {
        goto LABEL_88;
      }

      goto LABEL_63;
    }

    v33 = v82;
    v34 = *(v82 + 16);
    if (!v34)
    {
      break;
    }

    if ((BYTE8(v82) & 1) == 0)
    {
      v35 = v34 - 1;
      if (v34 != 1)
      {
        v48 = swift_isUniquelyReferenced_nonNull_native(v82);
        *&v82 = v33;
        if (!v48)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
        }

        *&v82 = v33;
        v49 = &v33[v34 + 3] + 2;
        v50 = v33 + 18;
        v51 = 1;
        do
        {
          if (v51 - 1 != v35)
          {
            v52 = v33[2];
            if (v51 - 1 >= v52 || v35 >= v52)
            {
              goto LABEL_94;
            }

            v53 = *v50;
            v54 = *(v50 - 1);
            v55 = *v49;
            *(v50 - 1) = *(v49 - 1);
            *v50 = v55;
            *(v49 - 1) = v54;
            *v49 = v53;
          }

          --v35;
          v49 -= 4;
          v50 += 4;
          v43 = v51++ < v35;
        }

        while (v43);
        *&v82 = v33;
      }

      BYTE8(v82) = 1;
      if (!v33[2])
      {
        goto LABEL_96;
      }
    }

    v36 = swift_isUniquelyReferenced_nonNull_native(v33);
    *&v82 = v33;
    if (v36)
    {
      v37 = v33[2];
      if (!v37)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
      *&v82 = v33;
      v37 = v33[2];
      if (!v37)
      {
LABEL_97:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v30 = 0;
    v38 = (v37 - 1);
    v18 = LODWORD(v33[v38 + 4]);
    v33[2] = v38;
    *&v82 = v33;
    if (v22)
    {
      goto LABEL_88;
    }

LABEL_63:
    if (v30)
    {
      v67 = v81;
      v68 = v82;
      v69 = v83;
      v63 = v77;
      v64 = v78;
      v65 = v79;
      v66 = v80;
      outlined destroy of _HasContiguousBytes?(&v63, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
      v74 = v88;
      v75 = v89;
      v76 = v90;
      v70 = v84;
      v71 = v85;
      v72 = v86;
      v73 = v87;
      outlined destroy of _HasContiguousBytes?(&v70, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
      goto LABEL_91;
    }

    if (v23 != v18)
    {
      v67 = v81;
      v68 = v82;
      v69 = v83;
      v63 = v77;
      v64 = v78;
      v65 = v79;
      v66 = v80;
      v57 = v18;
      outlined destroy of _HasContiguousBytes?(&v63, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
      v74 = v88;
      v75 = v89;
      v76 = v90;
      v70 = v84;
      v71 = v85;
      v72 = v86;
      v73 = v87;
      outlined destroy of _HasContiguousBytes?(&v70, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
      v58 = v23 < v57;
      v59 = a5;
      goto LABEL_92;
    }
  }

  v18 = 0;
  BYTE8(v82) = 0;
  if ((v22 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_88:
  v67 = v81;
  v68 = v82;
  v69 = v83;
  v63 = v77;
  v64 = v78;
  v65 = v79;
  v66 = v80;
  outlined destroy of _HasContiguousBytes?(&v63, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
  v74 = v88;
  v75 = v89;
  v76 = v90;
  v70 = v84;
  v71 = v85;
  v72 = v86;
  v73 = v87;
  outlined destroy of _HasContiguousBytes?(&v70, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
  if (v30)
  {
    v56 = a5 ^ 1;
    return v56 & 1;
  }

LABEL_91:
  v59 = a5;
  v58 = a9 < a4;
LABEL_92:
  v56 = v58 & v59;
  return v56 & 1;
}

uint64_t Substring.init(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < (a4 & 0xFFFFFFFFFFFFuLL))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = 3;
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v5 = 1;
  }

  return v5 | (a3 << 16);
}

BOOL _allASCII(_:)(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0xFFFFFFFFFFFFFFF0) >= 1)
  {
    v2 = a1;
    while (((v2[1] | *v2) & 0x8080808080808080) == 0)
    {
      v2 += 2;
      if (v2 >= (a1 + (a2 & 0xFFFFFFFFFFFFFFF0)))
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  v2 = a1;
LABEL_8:
  if (v2 < (a1 + (a2 & 0xFFFFFFFFFFFFFFF8)))
  {
    if ((*v2 & 0x8080808080808080) != 0)
    {
      return 0;
    }

    ++v2;
  }

  if (v2 < (a1 + (a2 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    if ((*v2 & 0x80808080) != 0)
    {
      return 0;
    }

    v2 = (v2 + 4);
  }

  if (v2 < (a1 + (a2 & 0xFFFFFFFFFFFFFFFELL)))
  {
    if ((*v2 & 0x8080) != 0)
    {
      return 0;
    }

    v2 = (v2 + 2);
  }

  return v2 >= (a1 + a2) || (*v2 & 0x80000000) == 0;
}

uint64_t repairUTF8(_:firstKnownBrokenRange:)(char *a1, int64_t a2, int64_t a3, int64_t a4)
{
  v54 = 0;
  v55 = 0xE000000000000000;
  if (__OFADD__(a2, 15))
  {
    __break(1u);
    goto LABEL_128;
  }

  v7 = a2;
  _StringGuts.reserveCapacity(_:)(a2 + 15);
  v8 = 0;
  while (1)
  {
    if (a3 < 0)
    {
LABEL_110:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v7 < a3)
    {
      goto LABEL_126;
    }

    v9 = v54 & 0xFFFFFFFFFFFFLL;
    if ((v55 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v55) & 0xF;
    }

    v10 = __OFADD__(v9, v7);
    v11 = v9 + v7;
    if (v10)
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_126;
    }

    if (__OFADD__(v11, 3))
    {
      goto LABEL_113;
    }

    _StringGuts.reserveCapacity(_:)(v11 + 3);
    if (a3 && !a1)
    {
      goto LABEL_126;
    }

    v12 = v55 & 0xFFFFFFFFFFFFFFFLL;
    v13 = (v55 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v14 = ((v55 & 0xFFFFFFFFFFFFFFFLL) + 24);
    specialized UnsafeMutablePointer.initialize(from:count:)(a1, a3, (v13 + (*((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
    v15 = *v14 & 0xFFFFFFFFFFFFLL;
    v16 = v15 + a3;
    if (__OFADD__(v15, a3))
    {
      goto LABEL_114;
    }

    v17 = v16 | 0x3000000000000000;
    *(v12 + 24) = v16 | 0x3000000000000000;
    *(v13 + (v16 & 0xFFFFFFFFFFFFLL)) = 0;
    if ((*(v12 + 16) & 0x8000000000000000) != 0)
    {
      v18 = __StringStorage._breadcrumbsAddress.getter();
      v19 = *v18;
      *v18 = 0;
      v19;
      v17 = *(v12 + 24);
    }

    v54 = v17;
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v54);
    if (v7 < a4)
    {
      goto LABEL_110;
    }

    if (a4 < 0)
    {
      goto LABEL_126;
    }

    v20 = v7 - a4;
    if (v7 - a4 < 0)
    {
      goto LABEL_126;
    }

    v52 = v8;
    if (v20)
    {
      if (!a1)
      {
        goto LABEL_126;
      }
    }

    v21 = &a1[a4];
    if (_allASCII(_:)(&a1[a4], v7 - a4) || v7 == a4)
    {
      break;
    }

    v22 = 0;
    v23 = &a1[v7];
    v24 = v21;
    v25 = v21;
    while (1)
    {
      v27 = *v25++;
      v26 = v27;
      if ((v27 & 0x80000000) == 0)
      {
        v28 = 1;
        goto LABEL_24;
      }

      if ((v26 + 11) <= 0xCCu)
      {
        v53[0] = _diagnoseInvalidUTF8MultiByteLeading(_:)(v26);
        goto LABEL_64;
      }

      if (v26 > 0xDFu)
      {
        break;
      }

      if (v25 == v23 || (*v25 & 0xC0) != 0x80)
      {
LABEL_102:
        v53[0] = 4;
        goto LABEL_64;
      }

      v25 = v24 + 2;
      v28 = 2;
LABEL_24:
      v22 += v28;
      v24 = v25;
      if (v25 == v23)
      {
        goto LABEL_106;
      }
    }

    if (v26 == 224)
    {
      if (v25 == v23)
      {
        goto LABEL_102;
      }

      if (v24[1] - 192 < 0xFFFFFFE0)
      {
        goto LABEL_103;
      }

      goto LABEL_48;
    }

    if (v26 <= 0xECu)
    {
      goto LABEL_46;
    }

    if (v26 == 237)
    {
      if (v25 == v23)
      {
        goto LABEL_102;
      }

      v29 = v24[1];
      if (v29 > 0x9F || (v29 & 0xC0) != 0x80)
      {
        v53[0] = 1;
        goto LABEL_64;
      }

      goto LABEL_48;
    }

    if (v26 <= 0xEFu)
    {
LABEL_46:
      if (v25 == v23 || (v24[1] & 0xC0) != 0x80)
      {
        goto LABEL_102;
      }

LABEL_48:
      if (v24 + 2 == v23 || (v24[2] & 0xC0) != 0x80)
      {
        goto LABEL_102;
      }

      v25 = v24 + 3;
      v28 = 3;
      goto LABEL_24;
    }

    if (v26 == 240)
    {
      if (v25 == v23)
      {
        goto LABEL_102;
      }

      if (v24[1] - 192 < 0xFFFFFFD0)
      {
LABEL_103:
        v53[0] = 3;
        goto LABEL_64;
      }

      goto LABEL_58;
    }

    if (v26 <= 0xF3u)
    {
      if (v25 == v23 || (v24[1] & 0xC0) != 0x80)
      {
        goto LABEL_102;
      }

LABEL_58:
      if (v24 + 2 == v23 || (v24[2] & 0xC0) != 0x80 || v24 + 3 == v23 || (v24[3] & 0xC0) != 0x80)
      {
        goto LABEL_102;
      }

      v25 = v24 + 4;
      v28 = 4;
      goto LABEL_24;
    }

    if (v25 == v23)
    {
      goto LABEL_102;
    }

    v30 = v24[1];
    if (v30 <= 0x8F && (v30 & 0xC0) == 0x80)
    {
      goto LABEL_58;
    }

    v53[0] = 2;
LABEL_64:
    swift_willThrowTypedImpl(v53, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
    v31 = specialized Collection.subscript.getter(v22, v21, v20);
    v35 = v32;
    v36 = v33;
    v37 = v34;
    v38 = v31;
    if (v31 != v32)
    {
      v39 = v31;
      specialized Slice.subscript.getter(v31, v31, v32, v33, v34);
      v38 = v39 + 1;
      if (!__OFADD__(v39, 1))
      {
        v31 = v39;
        goto LABEL_67;
      }

LABEL_126:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_67:
    v40 = v31;
    if (v38 != v35)
    {
      if (v35 <= v38)
      {
        v41 = v38;
      }

      else
      {
        v41 = v35;
      }

      if (v37 <= v38)
      {
        v42 = v38;
      }

      else
      {
        v42 = v37;
      }

      if (v38 < v31 || v38 >= v35 || v38 < 0 || v38 >= v37)
      {
        goto LABEL_126;
      }

      v40 = v31;
      if ((*(v36 + v38) & 0xC0) == 0x80)
      {
        v40 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_125;
        }

        if (v31 + 1 <= v31)
        {
          goto LABEL_126;
        }

        v43 = v38 + 1;
        if (v38 + 1 != v35)
        {
          if (v38 < v31 || v43 == v41 || v38 < 0 || v43 == v42)
          {
            goto LABEL_126;
          }

          if ((*(v36 + v43) & 0xC0) == 0x80)
          {
            v10 = __OFADD__(v40, 1);
            v40 = v31 + 2;
            if (v10)
            {
              goto LABEL_125;
            }

            if (v31 + 2 <= v31)
            {
              goto LABEL_126;
            }

            v44 = v38 + 2;
            if (v38 + 2 != v35)
            {
              if (v38 < v31 || v44 == v41 || v38 < 0 || v44 == v42)
              {
                goto LABEL_126;
              }

              if ((*(v36 + v44) & 0xC0) == 0x80)
              {
                v10 = __OFADD__(v40, 1);
                v40 = v31 + 3;
                if (!v10)
                {
                  if (v31 + 3 <= v31)
                  {
                    goto LABEL_126;
                  }

                  goto LABEL_97;
                }

LABEL_125:
                __break(1u);
                goto LABEL_126;
              }
            }
          }
        }
      }

LABEL_97:
      if (v40 < v31)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v45 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_126;
    }

    if (v35 < v45)
    {
      goto LABEL_126;
    }

    a3 = _legacyNarrowIllegalRange #1 (buf:) in validateUTF8(_:)(v31, v45, v36, v37);
    a4 = v46;
    a1 = v21;
    v7 = v20;
    v8 = v52;
    if (!v20)
    {
      v14 = &v54;
      return *v14;
    }
  }

LABEL_106:
  specialized UnsafeMutablePointer.initialize(from:count:)(v21, v20, (v13 + (*(v12 + 24) & 0xFFFFFFFFFFFFLL)));
  v47 = *(v12 + 24) & 0xFFFFFFFFFFFFLL;
  v10 = __OFADD__(v47, v20);
  v48 = v47 + v20;
  if (v10)
  {
LABEL_128:
    __break(1u);
    goto LABEL_126;
  }

  *(v12 + 24) = v48 | 0x3000000000000000;
  *(v13 + (v48 & 0xFFFFFFFFFFFFLL)) = 0;
  if ((*(v12 + 16) & 0x8000000000000000) != 0)
  {
    v49 = __StringStorage._breadcrumbsAddress.getter();
    v50 = *v49;
    *v49 = 0;
    v50;
  }

  return *v14;
}

Swift::Void __swiftcall __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(Swift::Int newCount, Swift::Bool newIsASCII)
{
  v3 = newCount | 0xC000000000000000;
  if (!newIsASCII)
  {
    v3 = newCount;
  }

  *(v2 + 24) = v3 | 0x3000000000000000;
  *(v2 + (v3 & 0xFFFFFFFFFFFFLL) + 32) = 0;
  if ((*(v2 + 16) & 0x8000000000000000) != 0)
  {
    v4 = __StringStorage._breadcrumbsAddress.getter();
    v5 = *v4;
    *v4 = 0;

    v5;
  }
}

uint64_t static String._uncheckedFromUTF16(_:)(unsigned __int16 *a1, uint64_t a2)
{
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0, &_swiftEmptyArrayStorage);
  v7 = 0;
  if (a1)
  {
    v8 = &a1[a2];
  }

  else
  {
    v8 = 0;
  }

  v47 = 0;
  v48 = 0;
  v9 = &type metadata for Unicode.UTF16.ForwardParser;
  while (v7)
  {
    v10 = v47;
    if ((v47 & 0xF800) != 0xD800)
    {
      v45 = v4;
      v23 = v9;
      lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser(v4, v5, v6);
      v44 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      (v44)(v46, 0);
      v9 = v23;
      v4 = v45;
      v10 = v10;
      v16 = 1;
      goto LABEL_25;
    }

    if (!a1)
    {
      goto LABEL_16;
    }

    v11 = a1;
    if (a1 == v8)
    {
      goto LABEL_16;
    }

LABEL_12:
    v12 = v7;
    if (v7 > 0x1Fu)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    a1 = v11 + 1;
    v10 = (*v11 << v7) | ((-65535 << v7) - 1) & v10;
    v7 += 16;
    if (v12 <= 0xF && a1 != v8)
    {
      a1 = v11 + 2;
      v10 = (v11[1] << v7) | ((0x10000 << v12) - 1) & v10;
      v7 = v12 | 0x20;
    }

LABEL_16:
    v13 = v10 & 0xFC00FC00;
    if ((v10 & 0xFC00FC00) == 0xDC00D800)
    {
      v14 = 32;
    }

    else
    {
      v14 = 16;
    }

    v48 = v7 - v14;
    if (v13 == -603924480)
    {
      v15 = 32;
    }

    else
    {
      v15 = 16;
    }

    v47 = v10 >> v15;
    if (v13 == -603924480)
    {
      v16 = 0;
      goto LABEL_25;
    }

    v25 = v4[2];
    v24 = v4[3];
    v26 = v24 >> 1;
    v27 = (&v25->isa + 1);
    if (v24 >> 1 <= v25)
    {
      v34 = v9;
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), &v25->isa + 1, 1, v4);
      v9 = v34;
      v24 = v4[3];
      v26 = v24 >> 1;
    }

    v4[2] = v27;
    *(&v25->info + v4) = -17;
    v28 = (&v25->isa + 2);
    if (v26 <= v27)
    {
      v35 = v9;
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), &v25->isa + 2, 1, v4);
      v9 = v35;
      v28 = (&v25->isa + 2);
      v27 = (&v25->isa + 1);
      v24 = v4[3];
      v26 = v24 >> 1;
    }

    v4[2] = v28;
    *(&v27->info + v4) = -65;
    v29 = &v25->isa + 3;
    if (v26 <= v28)
    {
      v30 = v28;
      v31 = v9;
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v29, 1, v4);
      v9 = v31;
      v28 = v30;
    }

    v4[2] = v29;
    *(&v28->info + v4) = -67;
LABEL_6:
    v7 = v48;
  }

  if (a1 && a1 != v8)
  {
    v10 = *a1;
    v11 = a1 + 1;
    if ((v10 & 0xF800) == 0xD800)
    {
      v10 |= HIWORD(v47) << 16;
      v7 = 16;
      ++a1;
      if (v11 == v8)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v16 = 1;
    ++a1;
LABEL_25:
    if (v10 < 0x80u)
    {
      v17 = (v10 + 1);
      if (!v17)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }

    v22 = (v10 & 0x3F) << 8;
    if (v10 < 0x800u)
    {
      v17 = v22 + (v10 >> 6) + 33217;
      goto LABEL_27;
    }

    if ((v10 & 0xF800) == 0xD800)
    {
      if (v16)
      {
        if (v10 >= 0x80u)
        {
          v37 = (v10 & 0x3F) << 8;
          if (v10 >= 0x800u)
          {
            v17 = ((v10 >> 12) | ((v37 | (v10 >> 6) & 0x3F) << 8)) + 8487393;
          }

          else
          {
            v17 = (v10 >> 6) + v37 + 33217;
          }
        }

        else
        {
          v17 = v10 + 1;
        }

LABEL_27:
        v18 = v4[2];
        do
        {
          v19 = v4[3];
          if (v18 >= v19 >> 1)
          {
            v21 = v9;
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), &v18->isa + 1, 1, v4);
            v9 = v21;
          }

          v4[2] = (&v18->isa + 1);
          *(&v18->info + v4) = v17 - 1;
          v18 = (v18 + 1);
          v20 = v17 >= 0x100;
          v17 >>= 8;
        }

        while (v20);
        goto LABEL_6;
      }

      v36 = ((v10 & 0x3FF) << 10) | HIWORD(v10) & 0x3FF;
      v32 = ((v36 + 0x10000) >> 4) & 0x3F00 | ((v36 + 0x10000) >> 18) | (((v36 >> 6) & 0x3F | (((v36 + 0x10000) & 0x3F) << 8)) << 16);
      v33 = -2122219023;
    }

    else
    {
      v32 = ((v22 | (v10 >> 6) & 0x3F) << 8) | (v10 >> 12);
      v33 = 8487393;
    }

    v17 = v32 + v33;
    goto LABEL_27;
  }

  v38 = v4[2];
  v39 = v4;
  v40 = _allASCII(_:)(v4 + 4, v38);
  v42 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v39 + 32, v38, v40, v41);
  v39;
  return v42;
}

uint64_t _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0Q0O5UTF32OTt0t2g5(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0, &_swiftEmptyArrayStorage);
  if (!v4)
  {
    goto LABEL_32;
  }

  v32 = a2;
  v6 = 0;
  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v9 = *(v8 + 4 * v7);
    if (HIWORD(v9) > 0x10u || (v9 & 0xFFFFF800) == 55296)
    {
      v12 = v5[2];
      v11 = v5[3];
      v13 = v11 >> 1;
      v14 = (&v12->isa + 1);
      if (v11 >> 1 <= v12)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), &v12->isa + 1, 1, v5);
        v11 = v5[3];
        v13 = v11 >> 1;
      }

      v5[2] = v14;
      *(&v12->info + v5) = -17;
      v15 = (&v12->isa + 2);
      if (v13 <= v14)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), &v12->isa + 2, 1, v5);
        v11 = v5[3];
        v13 = v11 >> 1;
      }

      v5[2] = v15;
      *(&v14->info + v5) = -65;
      if (v13 <= v15)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), &v12->isa + 3, 1, v5);
      }

      v5[2] = (&v12->isa + 3);
      *(&v15->info + v5) = -67;
      v6 = 1;
    }

    else
    {
      if (v9 >= 0x80)
      {
        v20 = (*(v8 + 4 * v7) & 0x3F) << 8;
        v21 = (v9 >> 6) + v20 + 33217;
        v22 = (v20 | (v9 >> 6) & 0x3F) << 8;
        v23 = (v9 >> 18) + ((v22 | (v9 >> 12) & 0x3F) << 8) - 2122219023;
        v24 = (v9 >> 12) + v22 + 8487393;
        if (HIWORD(v9))
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        if (v9 >= 0x800)
        {
          v16 = v25;
        }

        else
        {
          v16 = v21;
        }
      }

      else
      {
        v16 = v9 + 1;
      }

      v17 = v5[2];
      do
      {
        v18 = v5[3];
        if (v17 >= v18 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), &v17->isa + 1, 1, v5);
        }

        v5[2] = (&v17->isa + 1);
        *(&v17->info + v5) = v16 - 1;
        v17 = (v17 + 1);
        v19 = v16 >= 0x100;
        v16 >>= 8;
      }

      while (v19);
    }

    ++v7;
  }

  while (v7 != v4);
  if (v32 & 1) != 0 || ((v6 ^ 1))
  {
LABEL_32:
    v27 = v5[2];
    v28 = v5;
    v29 = _allASCII(_:)(v5 + 4, v27);
    v26 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v28 + 32, v27, v29, v30);
    v28;
  }

  else
  {
    v5;
    return 0;
  }

  return v26;
}

uint64_t _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSRys5UInt8VG_s0Q0O5ASCIIOTt0t2g5(char *a1, uint64_t a2, char a3)
{
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0, &_swiftEmptyArrayStorage);
  v7 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_20;
  }

  v8 = &a1[a2];
  do
  {
    v9 = a1;
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      v13 = v6[2];
      v12 = v6[3];
      v14 = v12 >> 1;
      v15 = (&v13->isa + 1);
      if (v11 < 0)
      {
        break;
      }

      if (v14 <= v13)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), &v13->isa + 1, 1, v6);
      }

      v6[2] = v15;
      *(&v13->info + v6) = v10;
      a1 = v9;
      if (v9 == v8)
      {
        goto LABEL_17;
      }
    }

    if (v14 <= v13)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), &v13->isa + 1, 1, v6);
      v12 = v6[3];
      v14 = v12 >> 1;
    }

    v6[2] = v15;
    *(&v13->info + v6) = -17;
    v16 = (&v13->isa + 2);
    if (v14 <= v15)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), &v13->isa + 2, 1, v6);
      v16 = (&v13->isa + 2);
      v12 = v6[3];
      v14 = v12 >> 1;
    }

    v6[2] = v16;
    *(&v15->info + v6) = -65;
    if (v14 <= v16)
    {
      v17 = v16;
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), &v13->isa + 3, 1, v6);
      v16 = v17;
    }

    ++a1;
    v6[2] = (&v13->isa + 3);
    *(&v16->info + v6) = -67;
    v7 = 1;
  }

  while (a1 != v8);
LABEL_17:
  if ((v7 & 1) != 0 && (a3 & 1) == 0)
  {
    v6;
    return 0;
  }

  else
  {
LABEL_20:
    v19 = v6[2];
    v20 = v6;
    v21 = _allASCII(_:)(v6 + 4, v19);
    v18 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v20 + 32, v19, v21, v22);
    v20;
  }

  return v18;
}

uint64_t _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSays5UInt8VG_s0Q0O5ASCIIOTt0t2g5(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0, &_swiftEmptyArrayStorage);
  v6 = 0;
  if (!v4)
  {
    goto LABEL_18;
  }

  v7 = (a1 + 32);
  do
  {
    v9 = *v7++;
    v8 = v9;
    v11 = v5[2];
    v10 = v5[3];
    v12 = v10 >> 1;
    v13 = &v11->isa + 1;
    if (v9 < 0)
    {
      if (v12 <= v11)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), &v11->isa + 1, 1, v5);
        v10 = v5[3];
        v12 = v10 >> 1;
      }

      v5[2] = v13;
      *(&v11->info + v5) = -17;
      v14 = (&v11->isa + 2);
      if (v12 <= v13)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), &v11->isa + 2, 1, v5);
        v14 = (&v11->isa + 2);
        v10 = v5[3];
        v12 = v10 >> 1;
      }

      v5[2] = v14;
      *(v5 + v13 + 32) = -65;
      v13 = &v11->isa + 3;
      v6 = 1;
      if (v12 <= v14)
      {
        v11 = v14;
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v13, 1, v5);
        v8 = -67;
      }

      else
      {
        v8 = -67;
        v11 = v14;
      }
    }

    else if (v12 <= v11)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), &v11->isa + 1, 1, v5);
    }

    v5[2] = v13;
    *(&v11->info + v5) = v8;
    --v4;
  }

  while (v4);
  if (a2 & 1) != 0 || ((v6 ^ 1))
  {
LABEL_18:
    v16 = v5[2];
    v17 = v5;
    v18 = _allASCII(_:)(v5 + 4, v16);
    v15 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v17 + 32, v16, v18, v19);
    v17;
  }

  else
  {
    v5;
    return 0;
  }

  return v15;
}

uint64_t _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0Q0O5UTF16OTt0t2g5(unsigned __int16 *a1, uint64_t a2, char a3)
{
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0, &_swiftEmptyArrayStorage);
  v7 = 0;
  v8 = 0;
  if (a1)
  {
    v9 = &a1[a2];
  }

  else
  {
    v9 = 0;
  }

  v50 = 0;
  v51 = 0;
  v10 = &type metadata for Unicode.UTF16.ForwardParser;
  while (v7)
  {
    v11 = v50;
    if ((v50 & 0xF800) != 0xD800)
    {
      v47 = v5;
      v24 = v10;
      v46 = v8;
      lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser(v5, v8, v6);
      v45 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      (v45)(v49, 0);
      v8 = v46;
      v10 = v24;
      v5 = v47;
      v11 = v11;
      v17 = 1;
      goto LABEL_25;
    }

    if (!a1)
    {
      goto LABEL_16;
    }

    v12 = a1;
    if (a1 == v9)
    {
      goto LABEL_16;
    }

LABEL_12:
    v13 = v7;
    if (v7 > 0x1Fu)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    a1 = v12 + 1;
    v11 = (*v12 << v7) | ((-65535 << v7) - 1) & v11;
    v7 += 16;
    if (v13 <= 0xF && a1 != v9)
    {
      a1 = v12 + 2;
      v11 = (v12[1] << v7) | ((0x10000 << v13) - 1) & v11;
      v7 = v13 | 0x20;
    }

LABEL_16:
    v14 = v11 & 0xFC00FC00;
    if ((v11 & 0xFC00FC00) == 0xDC00D800)
    {
      v15 = 32;
    }

    else
    {
      v15 = 16;
    }

    v51 = v7 - v15;
    if (v14 == -603924480)
    {
      v16 = 32;
    }

    else
    {
      v16 = 16;
    }

    v50 = v11 >> v16;
    if (v14 == -603924480)
    {
      v17 = 0;
      goto LABEL_25;
    }

    v26 = v5[2];
    v25 = v5[3];
    v27 = v25 >> 1;
    v28 = (&v26->isa + 1);
    if (v25 >> 1 <= v26)
    {
      v35 = v10;
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), &v26->isa + 1, 1, v5);
      v10 = v35;
      v25 = v5[3];
      v27 = v25 >> 1;
    }

    v5[2] = v28;
    *(&v26->info + v5) = -17;
    v29 = (&v26->isa + 2);
    if (v27 <= v28)
    {
      v36 = v10;
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), &v26->isa + 2, 1, v5);
      v10 = v36;
      v29 = (&v26->isa + 2);
      v28 = (&v26->isa + 1);
      v25 = v5[3];
      v27 = v25 >> 1;
    }

    v5[2] = v29;
    *(&v28->info + v5) = -65;
    v30 = &v26->isa + 3;
    if (v27 <= v29)
    {
      v31 = v29;
      v32 = v10;
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v30, 1, v5);
      v10 = v32;
      v29 = v31;
    }

    v5[2] = v30;
    *(&v29->info + v5) = -67;
    v8 = 1;
LABEL_6:
    v7 = v51;
  }

  if (a1 && a1 != v9)
  {
    v11 = *a1;
    v12 = a1 + 1;
    if ((v11 & 0xF800) == 0xD800)
    {
      v11 |= HIWORD(v50) << 16;
      v7 = 16;
      ++a1;
      if (v12 == v9)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v17 = 1;
    ++a1;
LABEL_25:
    if (v11 < 0x80u)
    {
      v18 = (v11 + 1);
      if (!v18)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }

    v23 = (v11 & 0x3F) << 8;
    if (v11 < 0x800u)
    {
      v18 = v23 + (v11 >> 6) + 33217;
      goto LABEL_27;
    }

    if ((v11 & 0xF800) == 0xD800)
    {
      if (v17)
      {
        if (v11 >= 0x80u)
        {
          v38 = (v11 & 0x3F) << 8;
          if (v11 >= 0x800u)
          {
            v18 = ((v11 >> 12) | ((v38 | (v11 >> 6) & 0x3F) << 8)) + 8487393;
          }

          else
          {
            v18 = (v11 >> 6) + v38 + 33217;
          }
        }

        else
        {
          v18 = v11 + 1;
        }

LABEL_27:
        v19 = v5[2];
        do
        {
          v20 = v5[3];
          if (v19 >= v20 >> 1)
          {
            v22 = v8;
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), &v19->isa + 1, 1, v5);
            v8 = v22;
            v10 = &type metadata for Unicode.UTF16.ForwardParser;
          }

          v5[2] = (&v19->isa + 1);
          *(&v19->info + v5) = v18 - 1;
          v19 = (v19 + 1);
          v21 = v18 >= 0x100;
          v18 >>= 8;
        }

        while (v21);
        goto LABEL_6;
      }

      v37 = ((v11 & 0x3FF) << 10) | HIWORD(v11) & 0x3FF;
      v33 = ((v37 + 0x10000) >> 4) & 0x3F00 | ((v37 + 0x10000) >> 18) | (((v37 >> 6) & 0x3F | (((v37 + 0x10000) & 0x3F) << 8)) << 16);
      v34 = -2122219023;
    }

    else
    {
      v33 = ((v23 | (v11 >> 6) & 0x3F) << 8) | (v11 >> 12);
      v34 = 8487393;
    }

    v18 = v33 + v34;
    goto LABEL_27;
  }

  if (a3 & 1) != 0 || ((v8 ^ 1))
  {
    v40 = v5[2];
    v41 = v5;
    v42 = _allASCII(_:)(v5 + 4, v40);
    v44 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v41 + 32, v40, v42, v43);
    v41;
    return v44;
  }

  else
  {
    v5;
    return 0;
  }
}

uint64_t static String._slowFromCodeUnits<A, B>(_:encoding:repair:)(uint64_t a1, int a2, Class *a3, char *a4, uint64_t a5, swift *a6)
{
  v77 = a2;
  v81 = a6;
  v84 = a4;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v12 = v11;
  Description = v11[-1].Description;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v76[-v14];
  v88 = type metadata accessor for Unicode.ParseResult(0, v12, v16, v17);
  MEMORY[0x1EEE9AC00](v88, v18);
  v20 = &v76[-v19];
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.ForwardParser);
  v92 = v21;
  v79 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v91 = &v76[-v24];
  v89 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v76[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = *(a5 + 8);
  swift_getAssociatedTypeWitness(0, v28, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v90 = v29;
  v83 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v76[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v76[-v35];
  v37 = (*(v28 + 40))(a3, v28);
  v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37 & ~(v37 >> 63), 0, &_swiftEmptyArrayStorage);
  (*(v89 + 2))(v27, a1, a3);
  (*(v28 + 32))(a3, v28);
  v39 = *(v83 + 16);
  v89 = v33;
  v78 = v36;
  v40 = v36;
  v41 = v90;
  v39(v33, v40, v90);
  v42 = v81;
  v43 = v92;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v81, v84, v92, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.ForwardParser: _UnicodeParser);
  (*(AssociatedConformanceWitness + 24))(v43, AssociatedConformanceWitness);
  v86 = *(AssociatedConformanceWitness + 32);
  v87 = AssociatedConformanceWitness + 32;
  v85 = swift_getAssociatedConformanceWitness(v28, a3, v41, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v82 = 0;
  v45 = (Description + 32);
  v46 = (Description + 8);
  Description = v42 + 88;
LABEL_2:
  while (1)
  {
    v47 = v84;
    while (1)
    {
      v86(v89, v90, v85, v92, AssociatedConformanceWitness);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v20, v88);
      if (EnumCaseMultiPayload)
      {
        break;
      }

      (*v45)(v15, v20, v12);
      if (v47 == &type metadata for Unicode.UTF16)
      {
        if (v12 != __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_UIntBufferVys6UInt16VGMd, _ss11_UIntBufferVys6UInt16VGMR))
        {
          goto LABEL_42;
        }

        v49 = *v15;
        v50 = *v15;
        if (v50 > 0x7F)
        {
          v57 = (*v15 & 0x3F) << 8;
          if (v50 < 0x800)
          {
            v58 = v50 >> 6;
            (*v46)(v15, v12);
            v59 = v57 + v58;
            goto LABEL_23;
          }

          if ((*v15 & 0xF800) == 0xD800)
          {
LABEL_31:
            v64 = (*(v81 + 11))(v15);
            (*v46)(v15, v12);
            if (v64 >= 0x80)
            {
              v65 = (v64 & 0x3F) << 8;
              if (v64 >= 0x800)
              {
                v66 = (v65 | (v64 >> 6) & 0x3F) << 8;
                v67 = (((v66 | (v64 >> 12) & 0x3F) << 8) | (v64 >> 18)) - 2122219023;
                v68 = (v64 >> 12) + v66 + 8487393;
                if (HIWORD(v64))
                {
                  v51 = v67;
                }

                else
                {
                  v51 = v68;
                }
              }

              else
              {
                v59 = (v64 >> 6) + v65;
LABEL_23:
                v51 = v59 + 33217;
              }
            }

            else
            {
              v51 = v64 + 1;
            }
          }

          else
          {
            v63 = (v57 | (v50 >> 6) & 0x3F) << 8;
            (*v46)(v15, v12);
            v51 = (v63 & 0xFFFFFFF0 | (v49 >> 12)) + 8487393;
          }

LABEL_24:
          v60 = v38[2];
          do
          {
            v61 = v38[3];
            if (v60 >= v61 >> 1)
            {
              v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), &v60->isa + 1, 1, v38);
            }

            v38[2] = (&v60->isa + 1);
            *(&v60->info + v38) = v51 - 1;
            v60 = (v60 + 1);
            v62 = v51 >= 0x100;
            v51 >>= 8;
          }

          while (v62);
          goto LABEL_2;
        }

        (*v46)(v15, v12);
        v51 = (v49 + 1);
        if (v49 != 0xFF)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v47 != &type metadata for Unicode.UTF8)
        {
          goto LABEL_31;
        }

        if (v12 != &type metadata for _ValidUTF8Buffer)
        {
LABEL_42:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v51 = *v15;
        (*v46)(v15);
        v47 = v84;
        if (v51)
        {
          goto LABEL_24;
        }
      }
    }

    if (EnumCaseMultiPayload == 2)
    {
      break;
    }

    v53 = v38[2];
    v52 = v38[3];
    v54 = v52 >> 1;
    v55 = (&v53->isa + 1);
    if (v52 >> 1 <= v53)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), &v53->isa + 1, 1, v38);
      v52 = v38[3];
      v54 = v52 >> 1;
    }

    v38[2] = v55;
    *(&v53->info + v38) = -17;
    v56 = (&v53->isa + 2);
    if (v54 <= v55)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), &v53->isa + 2, 1, v38);
      v52 = v38[3];
      v54 = v52 >> 1;
    }

    v38[2] = v56;
    *(&v55->info + v38) = -65;
    if (v54 <= v56)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), &v53->isa + 3, 1, v38);
    }

    v38[2] = (&v53->isa + 3);
    *(&v56->info + v38) = -67;
    v82 = 1;
  }

  (*(v79 + 8))(v91, v92);
  v69 = *(v83 + 8);
  v70 = v90;
  v69(v89, v90);
  v69(v78, v70);
  if (v82 & 1) == 0 || (v77)
  {
    v72 = v38[2];
    v73 = _allASCII(_:)(v38 + 4, v72);
    v75 = specialized static String._uncheckedFromUTF8(_:isASCII:)((v38 + 4), v72, v73, v74);
    v38;
    return v75;
  }

  else
  {
    v38;
    return 0;
  }
}

uint64_t closure #1 in static String._fromCodeUnits<A, B>(_:encoding:repair:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  if (_allASCII(_:)(a1, v5))
  {
    result = specialized static String._uncheckedFromASCII(_:)(a1, v5, v6);
  }

  else
  {
    result = 0;
    v8 = 0;
  }

  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t UnsafeRawBufferPointer.bindMemory<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return UnsafeRawBufferPointer.bindMemory<A>(to:)(a1, a2, a3, a4);
}

{
  if (a2)
  {
    v4 = *(*(a4 - 8) + 72);
    if (!v4 || a3 - a2 == 0x8000000000000000 && v4 == -1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((a3 - a2) / v4 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return a2;
}

unint64_t static String._fromInvalidUTF16(_:)(char *a1, uint64_t a2)
{
  result = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0H0O5UTF16OTt0t2g5(a1, a2, 1);
  if (!v3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void *static UnsafeMutableBufferPointer.allocate(capacity:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 72);
  v5 = v4 * a1;
  if ((v4 * a1) >> 64 != v5 >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(v3 + 80);
  if (v6 > 0xF)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  result = swift_slowAlloc(v5, v7 - 1);
  if (a1 < 0)
  {
LABEL_8:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t specialized Slice.deinitialize<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a3 + a1;
  if (a3)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = a2 - a1;
  if (v6 < 0)
  {
    goto LABEL_10;
  }

  if (v6)
  {
    if (v5)
    {
      return result;
    }

LABEL_10:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v5)
  {
    return 0;
  }

  return result;
}

Swift::_StringObject::CountAndFlags __swiftcall _StringObject.CountAndFlags.init(count:isASCII:isNFC:isNativelyStored:isTailAllocated:)(Swift::Int count, Swift::Bool isASCII, Swift::Bool isNFC, Swift::Bool isNativelyStored, Swift::Bool isTailAllocated)
{
  v5._storage = count | 0x8000000000000000;
  if (!isASCII)
  {
    v5._storage = count;
  }

  if (isNFC)
  {
    v5._storage |= 0x4000000000000000;
  }

  if (isNativelyStored)
  {
    v5._storage |= 0x2000000000000000;
  }

  if (isTailAllocated)
  {
    return (v5._storage | 0x1000000000000000);
  }

  else
  {
    return v5;
  }
}

uint64_t _StringGuts.withFastCChar<A>(_:)@<X0>(uint64_t (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v13[0] = a3;
    v13[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    return a1(v13, HIBYTE(a4) & 0xF);
  }

  else
  {
    if ((a3 & 0x1000000000000000) == 0)
    {
      v12[6] = a6;
      v12[7] = a5;
      a1 = _StringObject.sharedUTF8.getter(a3, a4);
    }

    MEMORY[0x1EEE9AC00](a1, a2);
    v12[2] = v8;
    v12[3] = v7;
    v12[4] = a2;
    return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5(thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<Int8>) -> (@out A, @error @owned Error)partial apply, v12, v9, v10);
  }
}

BOOL specialized _StringGuts._slowWithCString<A>(_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = String.utf8CString.getter(a1, a2);
  v7 = *(v6 + 32);
  v9 = (v7 > 0x20 || ((0x100003E01uLL >> v7) & 1) == 0) && (v8 = a4((v6 + 4), a3)) != 0 && *v8 == 0;
  v6;
  return v9;
}

uint64_t _StringGuts._slowWithCString<A>(_:)(void (*a1)(uint64_t), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = String.utf8CString.getter(a3, a4);
  a1((v5 + 4));
  return v5;
}

uint64_t _StringGuts.copyUTF8(into:)(char *__dst, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return _StringGuts._foreignCopyUTF8(into:)(__dst, a2, a3, a4);
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      v5 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = a3 & 0xFFFFFFFFFFFFLL;
      if ((a3 & 0xFFFFFFFFFFFFLL) > a2)
      {
        return 0;
      }
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter(a3, a4);
      v6 = v8;
      if (v8 > a2)
      {
        return 0;
      }
    }

    specialized UnsafeMutablePointer.initialize(from:count:)(v5, v6, __dst);
    return v6;
  }

  v6 = HIBYTE(a4) & 0xF;
  v10[0] = a3;
  v10[1] = a4 & 0xFFFFFFFFFFFFFFLL;
  if (v6 > a2)
  {
    return 0;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)(v10, HIBYTE(a4) & 0xF, __dst);
  return v6;
}

uint64_t _StringGuts._foreignCopyUTF8(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = (a4 & 0xFFFFFFFFFFFFFFFLL);
  v9 = _sSwySwSryxGclufCs5UInt8V_Tt0g5(a1, a2);
  v11 = _NSStringCopyBytes(_:encoding:into:)(v8, 4, v9, v10);
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  v13 = 0;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v14 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = (a3 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v15) = 1;
    }

    v16 = 4 << v15;
    v28 = v8 + 32;
    v17 = 15;
    v18 = a2 & ~(a2 >> 63);
    do
    {
      v19 = v17 & 0xC;
      rawBits = v17;
      if (v19 == v16)
      {
        v24 = v17;
        rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v17)._rawBits;
        v17 = v24;
      }

      v21 = rawBits >> 16;
      if (rawBits >> 16 >= v14)
      {
LABEL_30:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v27._rawBits = v17;
        v23 = String.UTF8View._foreignSubscript(position:)(rawBits);
        v17 = v27._rawBits;
        if (v19 != v16)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v29[0] = a3;
          v29[1] = a4 & 0xFFFFFFFFFFFFFFLL;
          v22 = v29;
        }

        else
        {
          v22 = v28;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v26._rawBits = v17;
            v22 = _StringObject.sharedUTF8.getter(a3, a4);
            v17 = v26._rawBits;
          }
        }

        v23 = *(v22 + v21);
        if (v19 != v16)
        {
LABEL_18:
          if ((a4 & 0x1000000000000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_22;
        }
      }

      v17 = _StringGuts._slowEnsureMatchingEncoding(_:)(v17)._rawBits;
      if ((a4 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }

LABEL_22:
      if (v14 <= v17 >> 16)
      {
        goto LABEL_30;
      }

      v17 = String.UTF8View._foreignIndex(after:)(v17)._rawBits;
LABEL_24:
      if (v18 == v13)
      {
        return 0;
      }

      *(a1 + v13++) = v23;
    }

    while (4 * v14 != v17 >> 14);
  }

  return v13;
}

Swift::String::Index __swiftcall _StringGuts._slowEnsureMatchingEncoding(_:)(Swift::String::Index a1)
{
  v3 = v2;
  v4 = v1;
  rawBits = a1._rawBits;
  v6 = a1._rawBits >> 16;
  v7 = LOWORD(a1._rawBits) >> 14;
  if ((v3 & 0x1000000000000000) == 0 || (v4 & 0x800000000000000) != 0)
  {
    v13._rawBits = String.UTF16View.index(_:offsetBy:)(15, v6)._rawBits;
    v14 = v13._rawBits + (v7 << 16);
    v15 = v13._rawBits & 0xFFFFFFFFFFFFFFFCLL | rawBits & 3;
    v16 = v14 & 0xFFFFFFFFFFFF0000;
    if (!v7)
    {
      v16 = v15;
    }

    return (v16 | 4);
  }

  else
  {
    v8._rawBits = String.UTF8View._foreignIndex(_:offsetBy:)(15, v6)._rawBits;
    v9 = v8._rawBits + (v7 << 16);
    v10 = v8._rawBits & 0xFFFFFFFFFFFFFFFCLL | rawBits & 3;
    v11 = v9 & 0xFFFFFFFFFFFF0000;
    if (!v7)
    {
      v11 = v10;
    }

    return (v11 | 8);
  }
}

Swift::String::Index __swiftcall String.UTF16View.index(_:offsetBy:)(Swift::String::Index _, Swift::Int offsetBy)
{
  v4 = (v2 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((_._rawBits & 0xC) == 4 << v4)
  {
    v9 = offsetBy;
    v10 = v2;
    v11 = v3;
    _._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
    offsetBy = v9;
    v2 = v10;
    v3 = v11;
  }

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v5 < _._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v3 & 0x1000000000000000) == 0)
  {
    v6 = (v3 >> 62) & 1;
    if ((v3 & 0x2000000000000000) == 0)
    {
      LODWORD(v6) = v2 < 0;
    }

    if (v6 == 1)
    {
      if (!__OFADD__(offsetBy, _._rawBits >> 16))
      {
        return (((offsetBy + (_._rawBits >> 16)) << 16) | 0xD);
      }

      __break(1u);
    }

    else if ((_._rawBits & 0xC001) != 0)
    {
      if (_._rawBits >= 0x4000)
      {
LABEL_26:
        if ((offsetBy & 0x8000000000000000) == 0)
        {
          if (offsetBy >= 0x40)
          {
            goto LABEL_28;
          }

          return (specialized BidirectionalCollection._index(_:offsetBy:)(_._rawBits, offsetBy, v2, v3) | 4);
        }

        v8 = 64;
LABEL_33:
        if (v8 <= -offsetBy)
        {
LABEL_28:
          v16 = offsetBy;
          v17 = String.UTF16View._nativeGetOffset(for:)(_);
          v18 = __OFADD__(v17, v16);
          result._rawBits = v17 + v16;
          if (v18)
          {
            __break(1u);
          }

          else
          {

            return String.UTF16View._nativeGetIndex(for:)(result._rawBits);
          }

          return result;
        }

        return (specialized BidirectionalCollection._index(_:offsetBy:)(_._rawBits, offsetBy, v2, v3) | 4);
      }

LABEL_16:
      if ((offsetBy & 0x8000000000000000) == 0)
      {
        if (offsetBy >= 0x20)
        {
          goto LABEL_28;
        }

        return (specialized BidirectionalCollection._index(_:offsetBy:)(_._rawBits, offsetBy, v2, v3) | 4);
      }

      v8 = 32;
      goto LABEL_33;
    }

    rawBits = _._rawBits;
    v19 = offsetBy;
    v13 = v2;
    v14 = v3;
    v15._rawBits = _StringGuts.scalarAlignSlow(_:)(_)._rawBits;
    offsetBy = v19;
    v2 = v13;
    v3 = v14;
    _._rawBits = rawBits & 0xC | v15._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (_._rawBits >= 0x4000)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  return String.UTF16View._foreignIndex(_:offsetBy:)(_, offsetBy);
}

Swift::String::Index __swiftcall String.UTF8View.index(_:offsetBy:)(Swift::String::Index _, Swift::Int offsetBy)
{
  v4 = (v2 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((_._rawBits & 0xC) == 4 << v4)
  {
    v7 = offsetBy;
    v8 = v2;
    v9 = v3;
    _._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
    offsetBy = v7;
    v2 = v8;
    v3 = v9;
    if ((v9 & 0x1000000000000000) == 0)
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

uint64_t _StringGuts._getOrAllocateAssociatedStorage()(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = (a2 & 0xFFFFFFFFFFFFFFFLL);
  v5 = swift_unknownObjectRetain((a2 & 0xFFFFFFFFFFFFFFFLL));
  AssociatedObject = objc_getAssociatedObject(v5, &unk_1EEEBEB30);
  swift_unknownObjectRelease(v4);
  if (!AssociatedObject)
  {
    v7 = swift_unknownObjectRetain(v4);
    objc_sync_enter(v7);
    v8 = swift_unknownObjectRetain(v4);
    AssociatedObject = objc_getAssociatedObject(v8, &unk_1EEEBEB30);
    swift_unknownObjectRelease(v4);
    if (AssociatedObject)
    {
      AssociatedObject;
LABEL_32:
      AssociatedObject;
      objc_sync_exit(v4);
      AssociatedObject;
      swift_unknownObjectRelease(v4);
      return AssociatedObject;
    }

    v42 = v4;
    v46 = 0;
    v47 = 0xE000000000000000;
    if ((v2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v9 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v9 + (v9 >> 1) <= 0x10)
    {
      v10 = 16;
    }

    else
    {
      v10 = v9 + (v9 >> 1);
    }

    String.reserveCapacity(_:)(v10);
    if (!v9)
    {
LABEL_30:
      v39 = v47;
      if ((v46 & ~v47 & 0x2000000000000000) == 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      AssociatedObject = v47 & 0xFFFFFFFFFFFFFFFLL;
      v47 & 0xFFFFFFFFFFFFFFFLL;
      v39;
      v4 = v42;
      v40 = swift_unknownObjectRetain(v42);
      objc_setAssociatedObject(v40, &unk_1EEEBEB30, (v39 & 0xFFFFFFFFFFFFFFFLL), 1);
      swift_unknownObjectRelease(v42);
      goto LABEL_32;
    }

    v12 = 0;
    v43 = v2 & 0xFFFFFFFFFFFFFFLL;
    v44 = v2;
    while (1)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v17 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v12 << 16));
        scalarLength = v17.scalarLength;
        value = v17._0._value;
      }

      else
      {
        if ((v2 & 0x2000000000000000) != 0)
        {
          v45[0] = a1;
          v45[1] = v43;
          v14 = v45;
        }

        else
        {
          v14 = v42 + 4;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v14 = _StringObject.sharedUTF8.getter(a1, v2);
          }
        }

        value = _decodeScalar(_:startingAt:)(v14, v11, v12);
      }

      v18 = scalarLength;
      v19 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(value);
      v29 = v20;
      v30 = v47;
      if ((v47 & 0x2000000000000000) == 0)
      {
        break;
      }

      if ((v20 & 0x2000000000000000) == 0)
      {
        goto LABEL_13;
      }

      v31 = v9;
      v32 = a1;
      v33 = v19;
      v34 = specialized _SmallString.init(_:appending:)(v46, v47, v19, v20);
      if ((v36 & 1) == 0)
      {
        v37 = v34;
        v38 = v35;
        v30;
        v29;
        v46 = v37;
        v47 = v38;
        a1 = v32;
        v9 = v31;
        v2 = v44;
        goto LABEL_15;
      }

      v13 = HIBYTE(v29) & 0xF;
      v19 = v33;
      a1 = v32;
      v9 = v31;
      v2 = v44;
LABEL_14:
      _StringGuts.append(_:)(v19, v29, 0, v13, v21, v22, v23, v24, v25, v26, v27, v28);
      v29;
LABEL_15:
      v12 += v18;
      if (v12 >= v9)
      {
        goto LABEL_30;
      }
    }

    if ((v20 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v20) & 0xF;
      goto LABEL_14;
    }

LABEL_13:
    v13 = v19 & 0xFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  AssociatedObject;
  return AssociatedObject;
}

id _StringGuts.startASCII.getter(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0x1000000000000000) != 0)
  {
    return ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  result = _StringObject.sharedUTF8.getter(a1, a2);
  if (!result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

unint64_t _StringGuts._isLargeZeroTerminatedContiguousUTF8.getter(unint64_t a1, uint64_t a2)
{
  if ((a2 & 0x3000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return (a1 >> 60) & 1;
  }
}

id _StringGuts._largeContiguousUTF8CodeUnits.getter(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0x1000000000000000) != 0)
  {
    return ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    return _StringObject.sharedUTF8.getter(a1, a2);
  }
}

__objc2_class **_persistCString(_:)(__objc2_class **result)
{
  if (result)
  {
    v1 = result;
    v2 = _swift_stdlib_strlen(result);
    v3 = __OFADD__(v2, 1);
    result = (v2 + 1);
    if (v3)
    {
      __break(1u);
    }

    else
    {
      return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs4Int8V_Tt1g5026_ss15_persistCStringySays4F31VGSgSPyACGSgFySryACGz_SiztXEfU_SPyAFGSiTf1nc_n(result, v1, result);
    }
  }

  return result;
}

Swift::tuple_Unicode_Scalar_scalarLength_Int __swiftcall _StringGuts.foreignErrorCorrectedScalar(startingAt:)(Swift::String::Index startingAt)
{
  v3 = v2;
  v4 = v1;
  v5 = startingAt._rawBits >> 16;
  v6 = [v2 & 0xFFFFFFFFFFFFFFFLL characterAtIndex_];
  if ((v6 & 0xF800 | 0x400) == 0xDC00)
  {
    if ((v6 & 0xFC00) != 0xDC00)
    {
      v8 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v8 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 + 1 != v8)
      {
        v9 = v6;
        v10 = [v3 & 0xFFFFFFFFFFFFFFFLL characterAtIndex_];
        if ((v10 & 0xFC00) == 0xDC00)
        {
          v6 = (v10 & 0x3FF | ((v9 & 0x3FF) << 10)) + 0x10000;
          v7 = 2;
          goto LABEL_10;
        }
      }
    }

    v6 = 65533;
  }

  v7 = 1;
LABEL_10:
  result.scalarLength = v7;
  result._0._value = v6;
  return result;
}

uint64_t _StringGuts.nativeCapacity.getter(uint64_t a1, uint64_t a2)
{
  if ((a1 & ~a2 & 0x2000000000000000) != 0)
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) & 0xFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    return 0;
  }
}

unint64_t _StringGuts.nativeUnusedCapacity.getter(uint64_t a1, uint64_t a2)
{
  if ((a1 & ~a2 & 0x2000000000000000) != 0)
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) & 0xFFFFFFFFFFFFLL) + (~*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) | 0xFFFF000000000000);
  }

  else
  {
    return 0;
  }
}

uint64_t _StringGuts.uniqueNativeCapacity.getter()
{
  v1 = v0[1];
  if ((*v0 & ~v1 & 0x2000000000000000) != 0 && (v2 = v1 & 0xFFFFFFFFFFFFFFFLL, swift_isUniquelyReferenced_nonNull_native(v1 & 0xFFFFFFFFFFFFFFFLL)))
  {
    return (*(v2 + 16) & 0xFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall _StringGuts.reserveCapacity(_:)(Swift::Int a1)
{
  if (a1 >= 16)
  {
    v2 = v1;
    v4 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v5 & 1) != 0 || v4 < a1)
    {
      v6 = _StringGuts.uniqueNativeCapacity.getter();
      if (v7)
      {
        v8 = v1[1];
        if ((v8 & 0x1000000000000000) != 0)
        {
          v9 = String.UTF8View._foreignCount()();
        }

        else if ((v8 & 0x2000000000000000) != 0)
        {
          v9 = HIBYTE(v8) & 0xF;
        }

        else
        {
          v9 = *v1 & 0xFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v9 = 2 * v6;
      }

      if (v9 <= a1)
      {
        v10 = a1;
      }

      else
      {
        v10 = v9;
      }

      v11 = v1[1];
      if ((v11 & 0x1000000000000000) != 0)
      {

        _StringGuts._foreignGrow(_:)(v10);
      }

      else
      {
        v12 = *v1;
        if ((v11 & 0x2000000000000000) != 0)
        {
          v21[0] = *v2;
          v21[1] = v11 & 0xFFFFFFFFFFFFFFLL;
          v16 = HIBYTE(v11) & 0xF | 0xC000000000000000;
          if ((v11 & 0x4000000000000000) == 0)
          {
            v16 = HIBYTE(v11) & 0xF;
          }

          v17 = v16 | 0x3000000000000000;
          v15 = _allocateStringStorage(codeUnitCapacity:)(v10);
          *(v15 + 16) = v18;
          *(v15 + 24) = v17;
          if (v18 < 0)
          {
            *__StringStorage._breadcrumbsAddress.getter() = 0;
            v17 = *(v15 + 24);
          }

          *(v15 + 32 + (v17 & 0xFFFFFFFFFFFFLL)) = 0;
          specialized UnsafeMutablePointer.initialize(from:count:)(v21, HIBYTE(v11) & 0xF, (v15 + 32));
        }

        else
        {
          if ((v12 & 0x1000000000000000) != 0)
          {
            v13 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v14 = v12 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v10;
            v13 = _StringObject.sharedUTF8.getter(*v2, v2[1]);
            v10 = v20;
          }

          v15 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v13, v14, v10, v12 < 0);
        }

        v19 = *(v15 + 24);
        v11;
        *v2 = v19;
        v2[1] = v15;
      }
    }
  }
}

void _StringGuts._foreignGrow(_:)(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 > 15)
  {
    v8 = specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(a1, v1);
    v12 = v13;
  }

  else
  {
    v15 = xmmword_18071DD30;
    if (a1 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v2 = _StringGuts._foreignCopyUTF8(into:)(&v15, a1, *v1, v1[1]);
    if (v3)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000029, 0x8000000180671E50, "Swift/StringGutsRangeReplaceable.swift", 0x26uLL, 2, 0x91uLL, 0);
    }

    if (v2 <= 0)
    {
      if (v2)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v8 = 0;
      v12 = 0xE000000000000000;
    }

    else
    {
      v4 = 8;
      if (v2 <= 8)
      {
        v5 = 8;
      }

      else
      {
        v5 = v2;
      }

      v6 = 56 * v5;
      if (v2 < 8)
      {
        v4 = v2;
      }

      v7 = 0xFFFFFFFFFFFFFFFFLL >> (v6 & 0x38);
      if (v2 <= 8)
      {
        v7 = 0;
      }

      v8 = v15 & (0xFFFFFFFFFFFFFFFFLL >> ((56 * v4) & 0x38));
      v9 = *(&v15 + 1) & v7;
      v10 = ((*(&v15 + 1) & v7 | v8) & 0x8080808080808080) == 0;
      v11 = 0xA000000000000000;
      if (v10)
      {
        v11 = 0xE000000000000000;
      }

      v12 = v11 | (v2 << 56) | v9;
      if ((v12 & 0x4000000000000000) == 0)
      {
        *&v15 = v8;
        *(&v15 + 1) = v9 & 0xFFFFFFFFFFFFFFLL;
        closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(&v15, HIBYTE(v12) & 0xF, v14);
        v8 = v14[0];
        v12 = v14[1];
      }
    }
  }

  v1[1];
  *v1 = v8;
  v1[1] = v12;
}

void _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = v3[1];
  v7 = _StringGuts.nativeUnusedCapacity.getter(v5, v6) < a2;
  v9 = v8 | v7;
  if ((v5 & ~v6 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
  {
    if ((v9 & 1) == 0)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v9)
  {
LABEL_6:
    v10 = 2 * _StringGuts.nativeCapacity.getter(v5, v6);
    if (v11)
    {
      v10 = 0;
    }

    if (v10 > a1)
    {
      a1 = v10;
    }
  }

  v12 = _StringGuts.uniqueNativeCapacity.getter();
  if (v13)
  {
    v14 = v3[1];
    if ((v14 & 0x1000000000000000) != 0)
    {
      v15 = String.UTF8View._foreignCount()();
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v14) & 0xF;
    }

    else
    {
      v15 = *v3 & 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 2 * v12;
  }

  if (v15 <= a1)
  {
    v16 = a1;
  }

  else
  {
    v16 = v15;
  }

  v17 = v3[1];
  if ((v17 & 0x1000000000000000) != 0)
  {

    _StringGuts._foreignGrow(_:)(v16);
  }

  else
  {
    v18 = *v3;
    if ((v17 & 0x2000000000000000) != 0)
    {
      v26[0] = *v3;
      v26[1] = v17 & 0xFFFFFFFFFFFFFFLL;
      v22 = HIBYTE(v17) & 0xF | 0xC000000000000000;
      if ((v17 & 0x4000000000000000) == 0)
      {
        v22 = HIBYTE(v17) & 0xF;
      }

      v23 = v22 | 0x3000000000000000;
      v21 = _allocateStringStorage(codeUnitCapacity:)(v16);
      *(v21 + 16) = v24;
      *(v21 + 24) = v23;
      if (v24 < 0)
      {
        *__StringStorage._breadcrumbsAddress.getter() = 0;
        v23 = *(v21 + 24);
      }

      *(v21 + 32 + (v23 & 0xFFFFFFFFFFFFLL)) = 0;
      specialized UnsafeMutablePointer.initialize(from:count:)(v26, HIBYTE(v17) & 0xF, (v21 + 32));
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        v19 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v20 = v18 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = _StringObject.sharedUTF8.getter(*v3, v3[1]);
      }

      v21 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v19, v20, v16, v18 < 0);
    }

    v25 = *(v21 + 24);
    v17;
    *v3 = v25;
    v3[1] = v21;
  }
}

void _StringGuts.append(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12)
{
  v13 = v12;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v68 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v68 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v68 < (a4 & 0xFFFFFFFFFFFFuLL))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v69 = 3;
    if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
    {
      v69 = 1;
    }

    v18 = String.UTF8View.distance(from:to:)((v69 | (a3 << 16)), ((a4 << 16) | 1));
    v20 = *v12;
    v19 = v12[1];
    if ((v19 & 0x1000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_49:
    v70 = String.UTF8View._foreignCount()();
    v22 = v70 + v18;
    if (!__OFADD__(v70, v18))
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

  v18 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_52:
    __break(1u);
    goto LABEL_55;
  }

  v20 = *v12;
  v19 = v12[1];
  if ((v19 & 0x1000000000000000) != 0)
  {
    goto LABEL_49;
  }

LABEL_4:
  if ((v19 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v22 = v21 + v18;
  if (__OFADD__(v21, v18))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_8:
  if ((v20 & ~v19 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v19 & 0xFFFFFFFFFFFFFFFLL))
  {
    v23 = _StringGuts.nativeUnusedCapacity.getter(v20, v19);
    if (v24)
    {
      goto LABEL_59;
    }

    if (v22 > 15 || (v19 & 0x2000000000000000) == 0 && v23 >= v18)
    {
      goto LABEL_14;
    }

LABEL_22:
    v34 = _StringGuts._convertedToSmall()(v20, v19, a5, a6, a7, a8, a9, a10, a11, a12);
    v36 = v35;
    a2;
    v37 = Substring.init(_:)(a1, a2, a3, a4);
    v39 = v38;
    v41 = Substring.description.getter(v37, v74, v40, v38);
    v43 = v42;
    v39;
    v52 = _StringGuts._convertedToSmall()(v41, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    v54 = v53;
    v43;
    v55 = HIBYTE(v36) & 0xF;
    v56 = HIBYTE(v54) & 0xF;
    v57 = v56 + v55;
    if (v56 + v55 > 0xF)
    {
      goto LABEL_59;
    }

    if (v56)
    {
      v58 = 0;
      v59 = 0;
      v60 = 8 * v55;
      v61 = 8 * v56;
      do
      {
        v62 = v54 >> (v58 & 0x38);
        if (v59 < 8)
        {
          v62 = v52 >> v58;
        }

        v63 = (v62 << (v60 & 0x38)) | ((-255 << (v60 & 0x38)) - 1) & v36;
        v64 = (v62 << v60) | ((-255 << v60) - 1) & v34;
        if (v55 <= 7)
        {
          v34 = v64;
        }

        else
        {
          v36 = v63;
        }

        ++v55;
        v60 += 8;
        v58 += 8;
        ++v59;
      }

      while (v61 != v58);
    }

    v19;
    v65 = 0xA000000000000000;
    if (!(v34 & 0x8080808080808080 | v36 & 0x80808080808080))
    {
      v65 = 0xE000000000000000;
    }

    *v13 = v34;
    v13[1] = v65 & 0xFF00000000000000 | (v57 << 56) | v36 & 0xFFFFFFFFFFFFFFLL;
    return;
  }

  if (v22 <= 15)
  {
    goto LABEL_22;
  }

LABEL_14:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v22, v18);
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v25 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v26 = a1 & 0xFFFFFFFFFFFFLL;
        if (a3 < 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v25 = _StringObject.sharedUTF8.getter(a1, a2);
        v26 = v71;
        if (a3 < 0)
        {
          goto LABEL_55;
        }
      }

      if (v26 >= a4)
      {
        v27 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a3, a4, v25, v26);
        v29 = v28;
        v30 = v13[1] & 0xFFFFFFFFFFFFFFFLL;
        specialized UnsafeMutablePointer.initialize(from:count:)(v27, v28, (v30 + (*(v30 + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
        v31 = *(v30 + 24);
        v32 = (v31 & 0xFFFFFFFFFFFFLL) + v29;
        if (!__OFADD__(v31 & 0xFFFFFFFFFFFFLL, v29))
        {
          v33 = (v31 & a1) >> 63;
LABEL_42:
          __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v32, v33);
          *v13 = *(v30 + 24);
          return;
        }

        __break(1u);
      }

LABEL_55:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v72[0] = a1;
    v72[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a3 < 0)
    {
      goto LABEL_55;
    }

    if ((HIBYTE(a2) & 0xF) < a4)
    {
      goto LABEL_55;
    }

    v66 = a4 - a3;
    if (a4 - a3 < 0)
    {
      goto LABEL_55;
    }

    v30 = v13[1] & 0xFFFFFFFFFFFFFFFLL;
    specialized UnsafeMutablePointer.initialize(from:count:)(v72 + a3, a4 - a3, (v30 + (*(v30 + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
    v67 = *(v30 + 24);
    v32 = (v67 & 0xFFFFFFFFFFFFLL) + v66;
    if (!__OFADD__(v67 & 0xFFFFFFFFFFFFLL, v66))
    {
      LOBYTE(v33) = (a2 >> 62) & (v67 < 0);
      goto LABEL_42;
    }

    __break(1u);
LABEL_59:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _StringGuts._foreignAppendInPlace(_:)(a1, a2, a3, a4);
}

unint64_t _StringGuts._foreignConvertedToSmall()(unint64_t a1, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = xmmword_18071DD30;
  v2 = _StringGuts._foreignCopyUTF8(into:)(&v15, 15, a1, a2);
  if (v3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000029, 0x8000000180671E50, "Swift/StringGutsRangeReplaceable.swift", 0x26uLL, 2, 0xD1uLL, 0);
  }

  if (v2 <= 0)
  {
    if (v2)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v8 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v4 = 8;
    if (v2 <= 8)
    {
      v5 = 8;
    }

    else
    {
      v5 = v2;
    }

    v6 = 56 * v5;
    if (v2 < 8)
    {
      v4 = v2;
    }

    v7 = 0xFFFFFFFFFFFFFFFFLL >> (v6 & 0x38);
    if (v2 <= 8)
    {
      v7 = 0;
    }

    v8 = v15 & (0xFFFFFFFFFFFFFFFFLL >> ((56 * v4) & 0x38));
    v9 = *(&v15 + 1) & v7;
    v10 = ((*(&v15 + 1) & v7 | v8) & 0x8080808080808080) == 0;
    v11 = 0xA000000000000000;
    if (v10)
    {
      v11 = 0xE000000000000000;
    }

    v12 = v11 | (v2 << 56) | v9;
    if ((v12 & 0x4000000000000000) == 0)
    {
      *&v15 = v8;
      *(&v15 + 1) = v9 & 0xFFFFFFFFFFFFFFLL;
      closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(&v15, HIBYTE(v12) & 0xF, v14);
      v8 = v14[0];
      v12 = v14[1];
    }
  }

  v12;
  return v8;
}

unint64_t _StringGuts._convertedToSmall()(unint64_t result, unint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14[2] = v10;
    v14[3] = v11;
    if ((a2 & 0x1000000000000000) != 0)
    {
      return _StringGuts._foreignConvertedToSmall()(result, a2);
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        v12 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v13 = result & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = _StringObject.sharedUTF8.getter(result, a2);
      }

      closure #1 in _StringGuts._convertedToSmall()(v12, v13, v14, a10);
      return v14[0];
    }
  }

  return result;
}

uint8x16_t *closure #1 in _StringGuts._convertedToSmall()@<X0>(uint8x16_t *result@<X0>, uint64_t a2@<X1>, int8x8_t *a3@<X8>, int8x16_t a4@<Q7>)
{
  if (!a2)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
    goto LABEL_29;
  }

  if (a2 > 15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = 8;
  if (a2 < 8)
  {
    v4 = a2;
  }

  if ((v4 & ~(v4 >> 63)) <= v4 - 1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v4 < 4)
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_21;
  }

  if (v4 < 0x10)
  {
    v5 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_16;
  }

  v8 = v4 & 0xFFFFFFFFFFFFFFF0;
  v10 = xmmword_18071DBF0;
  v11 = xmmword_18071DC00;
  v12 = xmmword_18071DC10;
  v13 = xmmword_18071DC20;
  v9 = 8 * (v4 & 0xFFFFFFFFFFFFFFF0);
  v14 = 0uLL;
  v15 = xmmword_18071DBD0;
  v16 = xmmword_18071DBC0;
  a4 = vdupq_n_s64(0x38uLL);
  v17 = v4 & 0xFFFFFFFFFFFFFFF0;
  v18 = vdupq_n_s64(0x80uLL);
  v19 = result;
  v20 = 0uLL;
  v21 = 0uLL;
  v22 = xmmword_18071DBA0;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = xmmword_18071DBB0;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  do
  {
    v29 = *v19++;
    v30 = vmovl_u8(*v29.i8);
    v31 = vmovl_high_u16(v30);
    v32.i64[0] = v31.u32[2];
    v32.i64[1] = v31.u32[3];
    v33 = v32;
    v34 = vmovl_high_u8(v29);
    v35 = vmovl_u16(*v34.i8);
    v32.i64[0] = v35.u32[2];
    v32.i64[1] = v35.u32[3];
    v36 = v32;
    v32.i64[0] = v35.u32[0];
    v32.i64[1] = v35.u32[1];
    v37 = v32;
    v32.i64[0] = v31.u32[0];
    v32.i64[1] = v31.u32[1];
    v38 = v32;
    v39 = vmovl_u16(*v30.i8);
    v32.i64[0] = v39.u32[2];
    v32.i64[1] = v39.u32[3];
    v40 = v32;
    v41 = vmovl_high_u16(v34);
    v32.i64[0] = v41.u32[0];
    v32.i64[1] = v41.u32[1];
    v42 = v32;
    v32.i64[0] = v39.u32[0];
    v32.i64[1] = v39.u32[1];
    v43 = v32;
    v32.i64[0] = v41.u32[2];
    v32.i64[1] = v41.u32[3];
    v23 = vorrq_s8(vshlq_u64(v33, vandq_s8(v15, a4)), v23);
    v26 = vorrq_s8(vshlq_u64(v36, vandq_s8(v12, a4)), v26);
    v24 = vorrq_s8(vshlq_u64(v37, vandq_s8(v13, a4)), v24);
    v21 = vorrq_s8(vshlq_u64(v38, vandq_s8(v16, a4)), v21);
    v20 = vorrq_s8(vshlq_u64(v40, vandq_s8(v22, a4)), v20);
    v27 = vorrq_s8(vshlq_u64(v42, vandq_s8(v11, a4)), v27);
    v14 = vorrq_s8(vshlq_u64(v43, vandq_s8(v25, a4)), v14);
    v28 = vorrq_s8(vshlq_u64(v32, vandq_s8(v10, a4)), v28);
    v16 = vaddq_s64(v16, v18);
    v22 = vaddq_s64(v22, v18);
    v25 = vaddq_s64(v25, v18);
    v15 = vaddq_s64(v15, v18);
    v13 = vaddq_s64(v13, v18);
    v12 = vaddq_s64(v12, v18);
    v11 = vaddq_s64(v11, v18);
    v10 = vaddq_s64(v10, v18);
    v17 -= 16;
  }

  while (v17);
  v44 = vorrq_s8(vorrq_s8(vorrq_s8(v14, v24), vorrq_s8(v21, v27)), vorrq_s8(vorrq_s8(v20, v26), vorrq_s8(v23, v28)));
  v5 = vorr_s8(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
  if (v4 == v8)
  {
    goto LABEL_23;
  }

  if ((v4 & 0xC) != 0)
  {
LABEL_16:
    v45 = v8;
    v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = 8 * (v4 & 0xFFFFFFFFFFFFFFFCLL);
    v46 = 0uLL;
    v47 = v5;
    v48 = vdupq_n_s64(v9);
    v49 = vaddq_s64(v48, xmmword_18071DBA0);
    v50 = vaddq_s64(v48, xmmword_18071DBB0);
    v51 = (result->i32 + v45);
    v52 = v45 - (v4 & 0xFFFFFFFFFFFFFFFCLL);
    v53.i64[0] = 255;
    v53.i64[1] = 255;
    v54 = vdupq_n_s64(0x38uLL);
    v55 = vdupq_n_s64(0x20uLL);
    do
    {
      v56 = *v51++;
      a4.i32[0] = v56;
      v57 = vmovl_u16(*&vmovl_u8(*a4.i8));
      v58.i64[0] = v57.u32[2];
      v58.i64[1] = v57.u32[3];
      v59 = vandq_s8(v58, v53);
      v58.i64[0] = v57.u32[0];
      v58.i64[1] = v57.u32[1];
      a4 = vshlq_u64(vandq_s8(v58, v53), vandq_s8(v50, v54));
      v46 = vorrq_s8(vshlq_u64(v59, vandq_s8(v49, v54)), v46);
      v47 = vorrq_s8(a4, v47);
      v49 = vaddq_s64(v49, v55);
      v50 = vaddq_s64(v50, v55);
      v52 += 4;
    }

    while (v52);
    v60 = vorrq_s8(v47, v46);
    v5 = vorr_s8(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
    if (v4 == v8)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v7 = 8 * (v4 & 0xFFFFFFFFFFFFFFF0);
LABEL_21:
  v61 = v4 - v8;
  v62 = &result->u8[v8];
  do
  {
    v63 = *v62++;
    *&v5 |= v63 << (v7 & 0x38);
    v7 += 8;
    --v61;
  }

  while (v61);
LABEL_23:
  v64 = 0;
  v65 = a2 - 8;
  if (a2 > 8)
  {
    v66 = 0;
    v67 = &result->i64[1];
    do
    {
      v68 = *v67;
      v67 = (v67 + 1);
      v64 |= v68 << v66;
      v66 += 8;
      --v65;
    }

    while (v65);
  }

  v69 = 0xA000000000000000;
  if (((v64 | *&v5) & 0x8080808080808080) == 0)
  {
    v69 = 0xE000000000000000;
  }

  v6 = v69 | (a2 << 56) | v64;
LABEL_29:
  *a3 = v5;
  a3[1] = v6;
  return result;
}

Swift::UInt64 String.init(_:)(Swift::UInt64 a1, Swift::String::Index a2, Swift::UInt64 a3, unint64_t a4)
{
  return Substring.description.getter(a1, a2, a3, a4);
}

{
  v5 = Substring.description.getter(a1, a2, a3, a4);
  a4;
  return v5;
}

void closure #1 in _StringGuts.append(_:)(char *a1, size_t a2, void *a3, char a4)
{
  v7 = a3[1] & 0xFFFFFFFFFFFFFFFLL;
  specialized UnsafeMutablePointer.initialize(from:count:)(a1, a2, (v7 + (*(v7 + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
  v8 = *(v7 + 24);
  if (__OFADD__(v8 & 0xFFFFFFFFFFFFLL, a2))
  {
    __break(1u);
  }

  else
  {
    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((v8 & 0xFFFFFFFFFFFFLL) + a2, (v8 < 0) & a4);
    *a3 = *(v7 + 24);
  }
}

void _StringGuts.appendInPlace(_:isASCII:)(char *a1, size_t a2, char a3)
{
  v4 = v3;
  v7 = v3[1] & 0xFFFFFFFFFFFFFFFLL;
  specialized UnsafeMutablePointer.initialize(from:count:)(a1, a2, (v7 + (*(v7 + 24) & 0xFFFFFFFFFFFFLL) + 32));
  v8 = *(v7 + 24);
  if (__OFADD__(v8 & 0xFFFFFFFFFFFFLL, a2))
  {
    __break(1u);
  }

  else
  {
    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((v8 & 0xFFFFFFFFFFFFLL) + a2, (v8 < 0) & a3);
    *v4 = *(v7 + 24);
  }
}

void _StringGuts._foreignAppendInPlace(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 < (a4 & 0xFFFFFFFFFFFFuLL))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v4;
  v8 = 3;
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v8 = 1;
  }

  v12[0] = v8 | (a3 << 16);
  v12[1] = (a4 << 16) | 1;
  v12[2] = a1;
  v13 = a2;
  v14 = v12[0];
  v9 = v4[1] & 0xFFFFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = (a2 >> 62) & 1;
  }

  else
  {
    v10 = a1 < 0;
  }

  specialized __StringStorage.appendInPlace<A>(_:isASCII:)(v12, v10);
  v11 = v13;
  a2;
  v11;
  *v6 = *(v9 + 24);
}

void __StringStorage.appendInPlace(_:isASCII:)(char *a1, size_t a2, char a3)
{
  specialized UnsafeMutablePointer.initialize(from:count:)(a1, a2, (v3 + (*(v3 + 24) & 0xFFFFFFFFFFFFLL) + 32));
  v6 = *(v3 + 24);
  if (__OFADD__(v6 & 0xFFFFFFFFFFFFLL, a2))
  {
    __break(1u);
  }

  else
  {

    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((v6 & 0xFFFFFFFFFFFFLL) + a2, (v6 < 0) & a3);
  }
}

void specialized __StringStorage.appendInPlace<A>(_:isASCII:)(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1[1];
  v5 = a1[4];
  v6 = v4 >> 14;
  if (v4 >> 14 != v5 >> 14)
  {
    v7 = 0;
    v11 = v3[2];
    v12 = v3[3];
    v13 = (v11 >> 59) & 1;
    if ((v12 & 0x1000000000000000) == 0)
    {
      LOBYTE(v13) = 1;
    }

    v14 = 4 << v13;
    v15 = *v3 >> 14;
    v16 = (v12 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if ((v12 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v17 = v11 & 0xFFFFFFFFFFFFLL;
    }

    v18 = v2 + 32;
    while (1)
    {
      v19 = v5 & 0xC;
      rawBits = v5;
      if (v19 == v14)
      {
        v50 = v3;
        v55 = v17;
        v24 = v5;
        v46 = a2;
        v60 = v16;
        v64 = v11;
        v25 = v14;
        v26 = v18;
        v27._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
        v18 = v26;
        v17 = v55;
        v16 = v60;
        v11 = v64;
        v14 = v25;
        a2 = v46;
        rawBits = v27._rawBits;
        v5 = v24;
        v3 = v50;
      }

      if (rawBits >> 14 < v15 || rawBits >> 14 >= v6)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v51 = v3;
        v56 = v17;
        v44._rawBits = v5;
        v47 = a2;
        v28 = v14;
        v65 = v11;
        v29 = v18;
        v30 = String.UTF8View._foreignSubscript(position:)(rawBits);
        v18 = v29;
        v3 = v51;
        v17 = v56;
        v11 = v65;
        v14 = v28;
        a2 = v47;
        v23 = v30;
        v5 = v44._rawBits;
        if (v19 != v28)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v21 = rawBits >> 16;
        if ((v12 & 0x2000000000000000) != 0)
        {
          v68[0] = v11;
          v68[1] = v12 & 0xFFFFFFFFFFFFFFLL;
          v23 = *(v68 + v21);
          if (v19 != v14)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v22 = v16;
          if ((v11 & 0x1000000000000000) == 0)
          {
            v54 = v3;
            v59 = v18;
            v45._rawBits = v5;
            v49 = a2;
            v63 = v16;
            v67 = v11;
            v41 = v14;
            v42 = v17;
            v43 = _StringObject.sharedUTF8.getter(v11, v12);
            v17 = v42;
            v11 = v67;
            v14 = v41;
            v18 = v59;
            v16 = v63;
            a2 = v49;
            v22 = v43;
            v5 = v45._rawBits;
            v3 = v54;
          }

          v23 = v22[v21];
          if (v19 != v14)
          {
LABEL_23:
            if ((v12 & 0x1000000000000000) != 0)
            {
              goto LABEL_27;
            }

            goto LABEL_24;
          }
        }
      }

      v52 = v3;
      v57 = v17;
      v48 = a2;
      v31 = v15;
      v32 = v14;
      v33 = v11;
      v34 = v18;
      v61 = v23;
      v5 = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
      v23 = v61;
      v18 = v34;
      v3 = v52;
      v17 = v57;
      v11 = v33;
      v14 = v32;
      v15 = v31;
      a2 = v48;
      if ((v12 & 0x1000000000000000) != 0)
      {
LABEL_27:
        v62 = v23;
        v53 = v6;
        v58 = v18;
        if (v17 <= v5 >> 16)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v35 = v14;
        v36 = v15;
        v37 = v3;
        v38 = a2;
        v39 = v17;
        v66 = v11;
        v5 = String.UTF8View._foreignIndex(after:)(v5)._rawBits;
        v11 = v66;
        a2 = v38;
        v3 = v37;
        v15 = v36;
        v14 = v35;
        v6 = v53;
        v18 = v58;
        v17 = v39;
        v23 = v62;
        goto LABEL_29;
      }

LABEL_24:
      v5 = (v5 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_29:
      v3[4] = v5;
      v8 = *(v2 + 24);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
      v40 = (*(v2 + 16) & 0xFFFFFFFFFFFFLL) + ~(v8 & 0xFFFFFFFFFFFFLL);
      if (v40 < 0 || v7 >= v40)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      *(v18 + v9 + v7++) = v23;
      if (v6 == v5 >> 14)
      {
        goto LABEL_3;
      }
    }
  }

  v7 = 0;
  v8 = *(v2 + 24);
  v9 = v8 & 0xFFFFFFFFFFFFLL;
LABEL_3:
  v10 = (v8 < 0) & a2;

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v9 + v7, v10);
}

Swift::Void __swiftcall _StringGuts.remove(from:to:)(Swift::String::Index from, Swift::String::Index to)
{
  v3 = v2;
  v6 = from._rawBits >> 16;
  v7 = to._rawBits >> 16;
  v8 = *v3;
  v9 = v3[1];
  if ((*v3 & ~v9 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v9 & 0xFFFFFFFFFFFFFFFLL))
  {
    __StringStorage.remove(from:to:)(v6, v7);
    *v3 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    return;
  }

  v160 = 0;
  v161 = 0xE000000000000000;
  v10 = _StringGuts.nativeCapacity.getter(v8, v9);
  v12 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v12 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v13 = v6 - v7 + v12;
  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  rawBits = to._rawBits;
  if (v14 >= 16 && ((v15 = _StringGuts.uniqueNativeCapacity.getter(), (v16 & 1) != 0) || v15 < v14))
  {
    v20 = 2 * _StringGuts.uniqueNativeCapacity.getter();
    if (v20 <= v14)
    {
      v20 = v14;
    }

    if (v19)
    {
      v21 = v14;
    }

    else
    {
      v21 = v20;
    }

    v158 = 0;
    v159 = 0;
    v18 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v158, 0, v21, 1);
    v17 = *(v18 + 24);
    0xE000000000000000;
    v160 = v17;
    v161 = v18;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  v22._rawBits = from._rawBits;
  v157 = v9;
  v24 = specialized Collection.subscript.getter(v22, v8, v9);
  v26 = v25;
  v156 = v27;
  v28 = v23;
  v29 = v24 >> 16;
  v30 = v25 >> 16;
  if ((v23 & 0x1000000000000000) == 0)
  {
    v31 = v30 - v29;
    swift_bridgeObjectRetain_n(v23, 2);
    v154 = v3;
    if ((v18 & 0x1000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_118:
    v146 = String.UTF8View._foreignCount()();
    v33 = v146 + v31;
    if (!__OFADD__(v146, v31))
    {
      goto LABEL_25;
    }

LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  swift_bridgeObjectRetain_n(v23, 3);
  v142._rawBits = v24 & 0xFFFFFFFFFFFF0000 | 1;
  v143._rawBits = v26 & 0xFFFFFFFFFFFF0000 | 1;
  v144._rawBits = _StringGuts.validateScalarRange(_:)(v142, v143, v156, v28)._rawBits;
  if (v144._rawBits < 0x10000)
  {
    v144._rawBits |= 3;
  }

  v31 = String.UTF8View.distance(from:to:)(v144, v145);
  v28;
  v17 = v160;
  v18 = v161;
  v154 = v3;
  if ((v161 & 0x1000000000000000) != 0)
  {
    goto LABEL_118;
  }

LABEL_21:
  if ((v18 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v32 = v17 & 0xFFFFFFFFFFFFLL;
  }

  v33 = v32 + v31;
  if (__OFADD__(v32, v31))
  {
    goto LABEL_120;
  }

LABEL_25:
  if ((v17 & ~v18 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v18 & 0xFFFFFFFFFFFFFFFLL))
  {
    v34 = _StringGuts.nativeUnusedCapacity.getter(v17, v18);
    if (v35)
    {
      goto LABEL_133;
    }

    if (v33 > 15 || (v18 & 0x2000000000000000) == 0 && v34 >= v31)
    {
LABEL_31:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v33, v31);
      if ((v28 & 0x1000000000000000) != 0)
      {
        v28;
        _StringGuts._foreignAppendInPlace(_:)(v156, v28, v29, v30);
      }

      else
      {
        if ((v28 & 0x2000000000000000) != 0)
        {
          v28;
          v158 = v156;
          v159 = v28 & 0xFFFFFFFFFFFFFFLL;
          if ((HIBYTE(v28) & 0xF) < v30 || (v30 - v29) < 0)
          {
            goto LABEL_132;
          }

          v28;
          v84 = v161 & 0xFFFFFFFFFFFFFFFLL;
          specialized UnsafeMutablePointer.initialize(from:count:)(&v158 + v29, v30 - v29, ((v161 & 0xFFFFFFFFFFFFFFFLL) + (*((v161 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
          __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v84 + 24) & 0xFFFFFFFFFFFFLL) + v30 - v29, (v28 >> 62) & (*(v84 + 24) < 0));
          v160 = *(v84 + 24);
          goto LABEL_66;
        }

        if ((v156 & 0x1000000000000000) != 0)
        {
          v36 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v37 = v156 & 0xFFFFFFFFFFFFLL;
          if ((v156 & 0xFFFFFFFFFFFFLL) < v30)
          {
            goto LABEL_132;
          }
        }

        else
        {
          v36 = _StringObject.sharedUTF8.getter(v156, v28);
          v37 = v152;
          if (v152 < v30)
          {
            goto LABEL_132;
          }
        }

        v28;
        v38 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v29, v30, v36, v37);
        v39 = v161 & 0xFFFFFFFFFFFFFFFLL;
        __StringStorage.appendInPlace(_:isASCII:)(v38, v40, v156 < 0);
        v160 = *(v39 + 24);
      }

      v28;
LABEL_66:
      v79 = v157;
      goto LABEL_67;
    }
  }

  else if (v33 > 15)
  {
    goto LABEL_31;
  }

  v28;
  v49 = _StringGuts._convertedToSmall()(v17, v18, v41, v42, v43, v44, v45, v46, v47, v48);
  v51 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v51 = v156 & 0xFFFFFFFFFFFFLL;
  }

  if (v51 < v30)
  {
    goto LABEL_127;
  }

  v52 = v49;
  v53 = v50;
  if (v29 || v30 != v51)
  {
    v64 = v24 & 0xFFFFFFFFFFFF0000;
    v65 = v26 & 0xFFFFFFFFFFFF0000;
    if (v24 >= 0x10000)
    {
      v66 = 1;
    }

    else
    {
      v66 = 3;
    }

    v28;
    v67._rawBits = v65 | 1;
    v68 = specialized static String._copying(_:)(v66 | v64, v67, v156, v28);
    v62 = v69;
    v28;
    v63 = v68;
  }

  else
  {
    v28;
    v62 = v28;
    v63 = v156;
  }

  v70 = _StringGuts._convertedToSmall()(v63, v62, v54, v55, v56, v57, v58, v59, v60, v61);
  v72 = v71;
  v62;
  v73 = HIBYTE(v53) & 0xF;
  v74 = HIBYTE(v72) & 0xF;
  v75 = v74 + v73;
  if (v74 + v73 > 0xF)
  {
    goto LABEL_133;
  }

  v28;
  if (v74)
  {
    v76 = 0;
    v77 = 0;
    v78 = 8 * v73;
    v79 = v157;
    do
    {
      v80 = v72 >> (v76 & 0x38);
      if (v77 < 8)
      {
        v80 = v70 >> v76;
      }

      v81 = (v80 << (v78 & 0x38)) | ((-255 << (v78 & 0x38)) - 1) & v53;
      v82 = (v80 << v78) | ((-255 << v78) - 1) & v52;
      if (v73 <= 7)
      {
        v52 = v82;
      }

      else
      {
        v53 = v81;
      }

      ++v73;
      v78 += 8;
      v76 += 8;
      ++v77;
    }

    while (8 * v74 != v76);
  }

  else
  {
    v79 = v157;
  }

  v18;
  v83 = 0xA000000000000000;
  if (!(v52 & 0x8080808080808080 | v53 & 0x80808080808080))
  {
    v83 = 0xE000000000000000;
  }

  v160 = v52;
  v161 = v83 & 0xFF00000000000000 | (v75 << 56) | v53 & 0xFFFFFFFFFFFFFFLL;
LABEL_67:
  v85._rawBits = rawBits;
  v30 = specialized Collection.subscript.getter(v85, v8, v79)._rawBits;
  v31 = v87;
  v8 = v88;
  v24 = v86._rawBits;
  v28 = v30 >> 16;
  v33 = v87 >> 16;
  if ((v86._rawBits & 0x1000000000000000) == 0)
  {
    v89 = v33 - v28;
    swift_bridgeObjectRetain_n(v86._rawBits, 2);
    v91 = v160;
    v90 = v161;
    if ((v161 & 0x1000000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_124;
  }

LABEL_121:
  swift_bridgeObjectRetain_n(v24, 3);
  v147._rawBits = v30 & 0xFFFFFFFFFFFF0000 | 1;
  v148._rawBits = v31 & 0xFFFFFFFFFFFF0000 | 1;
  v149._rawBits = _StringGuts.validateScalarRange(_:)(v147, v148, v8, v24)._rawBits;
  if (v149._rawBits < 0x10000)
  {
    v149._rawBits |= 3;
  }

  v89 = String.UTF8View.distance(from:to:)(v149, v150);
  v24;
  v91 = v160;
  v90 = v161;
  if ((v161 & 0x1000000000000000) == 0)
  {
LABEL_69:
    if ((v90 & 0x2000000000000000) != 0)
    {
      goto LABEL_73;
    }

    v92 = (v91 & 0xFFFFFFFFFFFFLL) + v89;
    if (!__OFADD__(v91 & 0xFFFFFFFFFFFFLL, v89))
    {
      goto LABEL_74;
    }

    goto LABEL_72;
  }

LABEL_124:
  v151 = String.UTF8View._foreignCount()();
  v92 = v151 + v89;
  if (!__OFADD__(v151, v89))
  {
    goto LABEL_74;
  }

  do
  {
LABEL_72:
    __break(1u);
LABEL_73:
    v93 = HIBYTE(v90) & 0xF;
    v92 = v93 + v89;
  }

  while (__OFADD__(v93, v89));
LABEL_74:
  if ((v91 & ~v90 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v90 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v92 > 15)
    {
      goto LABEL_80;
    }

    goto LABEL_86;
  }

  v94 = _StringGuts.nativeUnusedCapacity.getter(v91, v90);
  if (v95)
  {
    goto LABEL_133;
  }

  if (v92 <= 15 && ((v90 & 0x2000000000000000) != 0 || v94 < v89))
  {
LABEL_86:
    v24;
    v109 = _StringGuts._convertedToSmall()(v91, v90, v101, v102, v103, v104, v105, v106, v107, v108);
    if ((v24 & 0x2000000000000000) != 0)
    {
      v111 = HIBYTE(v24) & 0xF;
    }

    else
    {
      v111 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v111 >= v33)
    {
      v112 = v109;
      v113 = v110;
      v24;
      if (v28 || v33 != v111)
      {
        v124 = 3;
        if (v30 >= 0x10000)
        {
          v124 = 1;
        }

        v125._rawBits = v31 & 0xFFFFFFFFFFFF0000 | 1;
        v8 = specialized static String._copying(_:)(v124 | v30 & 0xFFFFFFFFFFFF0000, v125, v8, v24);
        v122 = v126;
        v24;
      }

      else
      {
        v122 = v24;
      }

      v127 = _StringGuts._convertedToSmall()(v8, v122, v114, v115, v116, v117, v118, v119, v120, v121);
      v129 = v128;
      v122;
      v130 = HIBYTE(v113) & 0xF;
      v131 = HIBYTE(v129) & 0xF;
      v132 = v131 + v130;
      if (v131 + v130 <= 0xF)
      {
        v24;
        if (v131)
        {
          v133 = 0;
          v134 = 0;
          v135 = 8 * v130;
          do
          {
            v136 = v129 >> (v133 & 0x38);
            if (v134 < 8)
            {
              v136 = v127 >> v133;
            }

            v137 = (v136 << (v135 & 0x38)) | ((-255 << (v135 & 0x38)) - 1) & v113;
            v138 = (v136 << v135) | ((-255 << v135) - 1) & v112;
            if (v130 <= 7)
            {
              v112 = v138;
            }

            else
            {
              v113 = v137;
            }

            ++v130;
            v135 += 8;
            v133 += 8;
            ++v134;
          }

          while (8 * v131 != v133);
        }

        v157;
        v90;
        v139 = 0xA000000000000000;
        if (!(v112 & 0x8080808080808080 | v113 & 0x80808080808080))
        {
          v139 = 0xE000000000000000;
        }

        v160 = v112;
        v161 = v139 & 0xFF00000000000000 | (v132 << 56) | v113 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_114;
      }

LABEL_133:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_127:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_80:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v92, v89);
  if ((v24 & 0x1000000000000000) != 0)
  {
    v24;
    _StringGuts._foreignAppendInPlace(_:)(v8, v24, v28, v33);
    goto LABEL_94;
  }

  if ((v24 & 0x2000000000000000) != 0)
  {
    v24;
    v158 = v8;
    v159 = v24 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v24) & 0xF) >= v33 && (v33 - v28) >= 0)
    {
      v24;
      v140 = v161 & 0xFFFFFFFFFFFFFFFLL;
      specialized UnsafeMutablePointer.initialize(from:count:)(&v158 + v28, v33 - v28, ((v161 & 0xFFFFFFFFFFFFFFFLL) + (*((v161 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
      __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v140 + 24) & 0xFFFFFFFFFFFFLL) + v33 - v28, (v24 >> 62) & (*(v140 + 24) < 0));
      v160 = *(v140 + 24);
      v123 = v157;
      goto LABEL_113;
    }

    goto LABEL_132;
  }

  if ((v8 & 0x1000000000000000) == 0)
  {
    v96 = _StringObject.sharedUTF8.getter(v8, v24);
    v97 = v153;
    if (v153 >= v33)
    {
      goto LABEL_84;
    }

LABEL_132:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v96 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v97 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0xFFFFFFFFFFFFLL) < v33)
  {
    goto LABEL_132;
  }

LABEL_84:
  v24;
  v98 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v28, v33, v96, v97);
  v99 = v161 & 0xFFFFFFFFFFFFFFFLL;
  __StringStorage.appendInPlace(_:isASCII:)(v98, v100, v8 < 0);
  v160 = *(v99 + 24);
LABEL_94:
  v157;
  v123 = v24;
LABEL_113:
  v123;
LABEL_114:
  v141 = v161;
  *v154 = v160;
  v154[1] = v141;
}

Swift::Void __swiftcall __StringStorage.remove(from:to:)(Swift::Int from, Swift::Int to)
{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v2 + 32 + to), (*(v2 + 24) & 0xFFFFFFFFFFFFLL) - to, (v2 + 32 + from));
  v5 = *(v2 + 24);

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(from - to + (v5 & 0xFFFFFFFFFFFFLL), v5 < 0);
}

void (*specialized _StringGuts.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, unint64_t a2, unint64_t a3, unint64_t a4))(uint64_t *__return_ptr, void *)
{
  v5 = v4;
  v10 = *v5;
  v9 = *(v5 + 8);
  if ((*v5 & ~v9 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v9 & 0xFFFFFFFFFFFFFFFLL))
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      return specialized _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(a1, a2, a3, a4, closure #3 in _StringGuts.replaceSubrange<A>(_:with:), 0);
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v70 = HIBYTE(a4) & 0xF;
      v226 = a3;
      v227 = a4 & 0xFFFFFFFFFFFFFFLL;
      v13 = a1 >> 16;
      v71 = v70 + (a1 >> 16);
      v72 = a2 >> 16;
      v73 = v10 & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v73 = HIBYTE(v9) & 0xF;
      }

      v74 = v73 - v72 + v71;
      if (v74 > 15)
      {
        v75 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v76 & 1) != 0 || v75 < v74)
        {
          _StringGuts.grow(_:)(v74);
        }
      }

      v20 = *(v5 + 8) & 0xFFFFFFFFFFFFFFFLL;
      v23 = &v226;
      v21 = v13;
      v22 = v72;
      v24 = v70;
    }

    else
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v12 = a3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = _StringObject.sharedUTF8.getter(a3, a4);
        v12 = v204;
      }

      v13 = a1 >> 16;
      v14 = v12 + (a1 >> 16);
      v15 = a2 >> 16;
      v16 = v10 & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v16 = HIBYTE(v9) & 0xF;
      }

      v17 = v14 + v16 - v15;
      if (v17 >= 16)
      {
        v18 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v19 & 1) != 0 || v18 < v17)
        {
          _StringGuts.grow(_:)(v17);
        }
      }

      v20 = *(v5 + 8) & 0xFFFFFFFFFFFFFFFLL;
      v21 = v13;
      v22 = v15;
      v23 = v11;
      v24 = v12;
    }

    __StringStorage.replace(from:to:with:)(v21, v22, v23, v24);
    *v5 = *(v20 + 24);
    return v13;
  }

  v219 = a2;
  v25 = 0xE000000000000000;
  v226 = 0;
  v227 = 0xE000000000000000;
  v26 = _StringGuts.nativeCapacity.getter(v10, v9);
  v27 = 0;
  if ((v28 & 1) == 0)
  {
    v29 = v26;
    if (v26 >= 16)
    {
      v30 = _StringGuts.uniqueNativeCapacity.getter();
      if ((v31 & 1) != 0 || v30 < v29)
      {
        v33 = 2 * _StringGuts.uniqueNativeCapacity.getter();
        if (v33 <= v29)
        {
          v33 = v29;
        }

        if (v32)
        {
          v34 = v29;
        }

        else
        {
          v34 = v33;
        }

        v224 = 0;
        v225 = 0;
        v25 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v224, 0, v34, 1);
        v27 = *(v25 + 24);
        0xE000000000000000;
        v226 = v27;
        v227 = v25;
      }

      else
      {
        v27 = 0;
        v25 = 0xE000000000000000;
      }
    }
  }

  v35._rawBits = a1;
  v218 = v10;
  v223 = v9;
  v37 = specialized Collection.subscript.getter(v35, v10, v9);
  v39 = v38;
  v41 = v40;
  v42 = v36;
  v43 = v38 >> 16;
  v220 = v37 >> 16;
  if ((v36 & 0x1000000000000000) == 0)
  {
    v44 = v43 - (v37 >> 16);
    swift_bridgeObjectRetain_n(v36, 2);
    v221 = a4;
    if ((v25 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_248:
    v189 = String.UTF8View._foreignCount()();
    v46 = v189 + v44;
    if (!__OFADD__(v189, v44))
    {
      goto LABEL_31;
    }

LABEL_250:
    __break(1u);
    goto LABEL_251;
  }

  swift_bridgeObjectRetain_n(v36, 3);
  v185._rawBits = v37 & 0xFFFFFFFFFFFF0000 | 1;
  v186._rawBits = v39 & 0xFFFFFFFFFFFF0000 | 1;
  v187._rawBits = _StringGuts.validateScalarRange(_:)(v185, v186, v41, v42)._rawBits;
  if (v187._rawBits < 0x10000)
  {
    v187._rawBits |= 3;
  }

  v44 = String.UTF8View.distance(from:to:)(v187, v188);
  v42;
  v27 = v226;
  v25 = v227;
  v221 = a4;
  if ((v227 & 0x1000000000000000) != 0)
  {
    goto LABEL_248;
  }

LABEL_27:
  if ((v25 & 0x2000000000000000) != 0)
  {
    v45 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v45 = *&v27 & 0xFFFFFFFFFFFFLL;
  }

  v46 = v45 + v44;
  if (__OFADD__(v45, v44))
  {
    goto LABEL_250;
  }

LABEL_31:
  v217 = v5;
  v47 = *&v27 & ~v25;
  if ((v47 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL))
  {
    v48 = _StringGuts.nativeUnusedCapacity.getter(*&v27, v25);
    if (v49)
    {
      goto LABEL_285;
    }

    if (v46 > 15)
    {
      goto LABEL_39;
    }

    if ((v25 & 0x2000000000000000) == 0)
    {
      if (v48 < v44)
      {
        v42;
        goto LABEL_266;
      }

LABEL_39:
      v51 = v47 & 0x2000000000000000;
      v52 = _StringGuts.nativeUnusedCapacity.getter(*&v27, v25);
      if (v53)
      {
        v5 = a3;
        if (v51)
        {
LABEL_41:
          swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL);
        }
      }

      else
      {
        v5 = a3;
        if (v52 >= v44)
        {
          if (v51 && swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL))
          {
LABEL_47:
            if ((v42 & 0x1000000000000000) != 0)
            {
              v42;
              _StringGuts._foreignAppendInPlace(_:)(v41, v42, v220, v43);
              v42;
              v56 = v221;
            }

            else
            {
              v56 = v221;
              if ((v42 & 0x2000000000000000) != 0)
              {
                v42;
                v224 = v41;
                v225 = v42 & 0xFFFFFFFFFFFFFFLL;
                if ((HIBYTE(v42) & 0xF) < v43 || v43 - v220 < 0)
                {
                  goto LABEL_282;
                }

                closure #1 in _StringGuts.append(_:)(&v224 + v220, v43 - v220, &v226, (v42 & 0x4000000000000000) != 0);
              }

              else
              {
                if ((v41 & 0x1000000000000000) != 0)
                {
                  v57 = ((v42 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v58 = v41 & 0xFFFFFFFFFFFFLL;
                  if ((v41 & 0xFFFFFFFFFFFFLL) < v43)
                  {
                    goto LABEL_282;
                  }
                }

                else
                {
                  v57 = _StringObject.sharedUTF8.getter(v41, v42);
                  v58 = v206;
                  if (v206 < v43)
                  {
                    goto LABEL_282;
                  }
                }

                v42;
                v59 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v220, v43, v57, v58);
                _StringGuts.appendInPlace(_:isASCII:)(v59, v60, v41 < 0);
              }

              v42;
            }

            goto LABEL_94;
          }

LABEL_46:
          _StringGuts.grow(_:)(v46);
          goto LABEL_47;
        }

        if (v51)
        {
          goto LABEL_41;
        }
      }

      v54 = 2 * _StringGuts.nativeCapacity.getter(*&v27, v25);
      if (v55)
      {
        v54 = 0;
      }

      if (v54 > v46)
      {
        v46 = v54;
      }

      goto LABEL_46;
    }

    v42;
  }

  else
  {
    if (v46 > 15)
    {
      goto LABEL_39;
    }

    v42;
    if ((v25 & 0x2000000000000000) == 0)
    {
LABEL_266:
      if ((v25 & 0x1000000000000000) != 0)
      {
        v27 = _StringGuts._foreignConvertedToSmall()(*&v27, v25);
        v61 = v205;
      }

      else
      {
        if ((*&v27 & 0x1000000000000000) != 0)
        {
          v199 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v200 = *&v27 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v199 = _StringObject.sharedUTF8.getter(*&v27, v25);
        }

        closure #1 in _StringGuts._convertedToSmall()(v199, v200, &v224, v50);
        v27 = v224;
        v61 = v225;
      }

      goto LABEL_54;
    }
  }

  v61 = v25;
LABEL_54:
  v5 = a3;
  v42;
  v62._rawBits = v37 & 0xFFFFFFFFFFFF0000 | 1;
  v63._rawBits = v39 & 0xFFFFFFFFFFFF0000 | 1;
  v64._rawBits = _StringGuts.validateScalarRange(_:)(v62, v63, v41, v42)._rawBits;
  if (v64._rawBits < 0x10000)
  {
    v64._rawBits |= 3;
  }

  v67 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v67 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v64._rawBits >> 16 || v65._rawBits >> 16 != v67)
  {
    v41 = specialized static String._copying(_:)(v64._rawBits, v65, v41, v42);
    v68 = v77;
    v42;
  }

  else
  {
    v68 = v42;
  }

  if ((v68 & 0x2000000000000000) != 0)
  {
    v68;
  }

  else if ((v68 & 0x1000000000000000) != 0)
  {
    v41 = _StringGuts._foreignConvertedToSmall()(v41, v68);
    v215 = v214;
    v68;
    v68 = v215;
  }

  else
  {
    if ((v41 & 0x1000000000000000) != 0)
    {
      v197 = ((v68 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v198 = v41 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v197 = _StringObject.sharedUTF8.getter(v41, v68);
    }

    closure #1 in _StringGuts._convertedToSmall()(v197, v198, &v224, v66);
    v68;
    v41 = v224;
    v68 = v225;
  }

  v78 = HIBYTE(v61) & 0xF;
  v79 = HIBYTE(v68) & 0xF;
  v80 = v79 + v78;
  if (v79 + v78 > 0xF)
  {
    goto LABEL_285;
  }

  v42;
  if (v79)
  {
    v81 = 0;
    v82 = 0;
    v83 = 8 * v78;
    v84 = 8 * v79;
    v56 = v221;
    do
    {
      v85 = v68 >> (v81 & 0x38);
      if (v82 < 8)
      {
        v85 = v41 >> v81;
      }

      v86 = (v85 << (v83 & 0x38)) | ((-255 << (v83 & 0x38)) - 1) & v61;
      v87 = (v85 << v83) | ((-255 << v83) - 1) & *&v27;
      if (v78 <= 7)
      {
        v27 = v87;
      }

      else
      {
        v61 = v86;
      }

      ++v78;
      v83 += 8;
      v81 += 8;
      ++v82;
    }

    while (v84 != v81);
  }

  else
  {
    v56 = v221;
  }

  v25;
  v88 = 0xA000000000000000;
  if (!(*&v27 & 0x8080808080808080 | v61 & 0x80808080808080))
  {
    v88 = 0xE000000000000000;
  }

  v226 = v27;
  v227 = v88 & 0xFF00000000000000 | (v80 << 56) | v61 & 0xFFFFFFFFFFFFFFLL;
LABEL_94:
  v13 = v226;
  v25 = v227;
  v89 = HIBYTE(v227) & 0xF;
  v90 = v226 & 0xFFFFFFFFFFFFLL;
  if ((v227 & 0x2000000000000000) != 0)
  {
    v91 = HIBYTE(v227) & 0xF;
  }

  else
  {
    v91 = v226 & 0xFFFFFFFFFFFFLL;
  }

  v220 = v91;
  if (!v91 && (v226 & ~v227 & 0x2000000000000000) == 0)
  {
    v56;
    v25;
    v226 = v5;
    v227 = v56;
    goto LABEL_167;
  }

  v92 = (v56 & 0x2000000000000000) == 0;
  v93 = HIBYTE(v56) & 0xF;
  if ((v227 & 0x2000000000000000) != 0)
  {
    if ((v56 & 0x2000000000000000) != 0)
    {
      v129 = v89 + v93;
      if (v89 + v93 < 0x10)
      {
        if (v93)
        {
          v130 = 0;
          v131 = 0;
          v132 = 8 * v89;
          v133 = v227;
          do
          {
            v134 = v56 >> (v130 & 0x38);
            if (v131 < 8)
            {
              v134 = v5 >> v130;
            }

            v135 = (v134 << (v132 & 0x38)) | ((-255 << (v132 & 0x38)) - 1) & v133;
            v136 = (v134 << v132) | ((-255 << v132) - 1) & v13;
            if (v89 <= 7)
            {
              v13 = v136;
            }

            else
            {
              v133 = v135;
            }

            ++v89;
            v132 += 8;
            v130 += 8;
            ++v131;
          }

          while (8 * v93 != v130);
        }

        else
        {
          v133 = v227;
        }

        v227;
        v138 = 0xA000000000000000;
        if (!(v13 & 0x8080808080808080 | v133 & 0x80808080808080))
        {
          v138 = 0xE000000000000000;
        }

        v226 = v13;
        v227 = v138 & 0xFF00000000000000 | (v129 << 56) | v133 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_167;
      }

      v92 = 0;
      v94 = v5 & 0xFFFFFFFFFFFFLL;
      v95 = HIBYTE(v56) & 0xF;
      v96 = v95;
      if ((v56 & 0x1000000000000000) != 0)
      {
        goto LABEL_123;
      }

LABEL_102:
      v97 = v91;
      if ((v227 & 0x1000000000000000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_127;
    }

    v94 = v5 & 0xFFFFFFFFFFFFLL;
    v92 = 1;
LABEL_122:
    v95 = v94;
    v96 = v94;
    if ((v56 & 0x1000000000000000) != 0)
    {
      goto LABEL_123;
    }

    goto LABEL_102;
  }

  v94 = v5 & 0xFFFFFFFFFFFFLL;
  v95 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    goto LABEL_122;
  }

  v96 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x1000000000000000) == 0)
  {
    goto LABEL_102;
  }

LABEL_123:
  v109._rawBits = (v95 << 16) | 1;
  v110._rawBits = 1;
  v111._rawBits = _StringGuts.validateScalarRange(_:)(v110, v109, v5, v56)._rawBits;
  v113._rawBits = v112;
  if (v111._rawBits >= 0x10000)
  {
    rawBits = v111._rawBits;
  }

  else
  {
    rawBits = v111._rawBits | 3;
  }

  v221;
  v96 = String.UTF8View.distance(from:to:)(rawBits, v113);
  v221;
  v97 = v220;
  if ((v25 & 0x1000000000000000) == 0)
  {
LABEL_103:
    v98 = v97 + v96;
    if (!__OFADD__(v97, v96))
    {
      goto LABEL_104;
    }

LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

LABEL_127:
  v115 = String.UTF8View._foreignCount()();
  v98 = v115 + v96;
  if (__OFADD__(v115, v96))
  {
    goto LABEL_129;
  }

LABEL_104:
  if ((v13 & ~v25 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL))
  {
    v99 = _StringGuts.nativeUnusedCapacity.getter(v13, v25);
    if (v100)
    {
      goto LABEL_285;
    }

    if (v98 > 15)
    {
      goto LABEL_115;
    }

    if ((v25 & 0x2000000000000000) == 0)
    {
      if (v99 < v96)
      {
        goto LABEL_110;
      }

LABEL_115:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v98, v96);
      if ((v221 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v5, v221, 0, v95);
        goto LABEL_167;
      }

      v103 = v223;
      if (v92)
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v104 = (v221 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v105 = v94;
        }

        else
        {
          v208 = _StringObject.sharedUTF8.getter(v5, v221);
          if (v209 < v94)
          {
            goto LABEL_282;
          }

          v104 = v208;
          v105 = v209;
          v5 = a3;
          v103 = v223;
        }

        v106 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v94, v104, v105);
        v108 = v5 >> 63;
      }

      else
      {
        v108 = (v221 >> 62) & 1;
        v224 = v5;
        v225 = v221 & 0xFFFFFFFFFFFFFFLL;
        v106 = &v224;
        v107 = v93;
      }

      closure #1 in _StringGuts.append(_:)(v106, v107, &v226, v108);
      v137 = v103;
      goto LABEL_168;
    }

LABEL_131:
    v102 = v25;
LABEL_132:
    v39 = v221;
    goto LABEL_133;
  }

  if (v98 > 15)
  {
    goto LABEL_115;
  }

LABEL_130:
  if ((v25 & 0x2000000000000000) != 0)
  {
    goto LABEL_131;
  }

LABEL_110:
  if ((v25 & 0x1000000000000000) != 0)
  {
    v13 = _StringGuts._foreignConvertedToSmall()(v13, v25);
    v102 = v184;
    goto LABEL_132;
  }

  v39 = v221;
  if ((v13 & 0x1000000000000000) != 0)
  {
    v101 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v101 = _StringObject.sharedUTF8.getter(v13, v25);
    v90 = v211;
  }

  closure #1 in _StringGuts._convertedToSmall()(v101, v90, &v224, v69);
  v13 = v224;
  v102 = v225;
LABEL_133:
  v39;
  v116._rawBits = 1;
  v117._rawBits = (v95 << 16) | 1;
  v118._rawBits = _StringGuts.validateScalarRange(_:)(v116, v117, v5, v39)._rawBits;
  if (v118._rawBits < 0x10000)
  {
    v118._rawBits |= 3;
  }

  if (v118._rawBits >> 16 || v119._rawBits >> 16 != v95)
  {
    v5 = specialized static String._copying(_:)(v118._rawBits, v119, v5, v39);
    v122 = v121;
    v39;
    v39 = v122;
  }

  if ((v39 & 0x2000000000000000) == 0)
  {
    goto LABEL_271;
  }

  v123 = v39;
LABEL_140:
  v123;
  while (1)
  {
    v124 = specialized _SmallString.init(_:appending:)(v13, v102, v5, v39);
    if (v126)
    {
      goto LABEL_285;
    }

    v127 = v124;
    v128 = v125;
    v25;
    v226 = v127;
    v227 = v128;
LABEL_167:
    v137 = v223;
LABEL_168:
    v5 = v226;
    v25 = v227;
    v42 = v226 & 0xFFFFFFFFFFFFLL;
    if ((v227 & 0x2000000000000000) != 0)
    {
      v46 = HIBYTE(v227) & 0xF;
    }

    else
    {
      v46 = v226 & 0xFFFFFFFFFFFFLL;
    }

    v139._rawBits = v219;
    v37 = specialized Collection.subscript.getter(v139, v218, v137)._rawBits;
    v27 = v140._rawBits;
    v39 = v142;
    v44 = v141._rawBits;
    v219 = v37 >> 16;
    v221 = v140._rawBits >> 16;
    if ((v141._rawBits & 0x1000000000000000) != 0)
    {
LABEL_251:
      swift_bridgeObjectRetain_n(v44, 3);
      v190._rawBits = v37 & 0xFFFFFFFFFFFF0000 | 1;
      v191._rawBits = *&v27 & 0xFFFFFFFFFFFF0000 | 1;
      v192._rawBits = _StringGuts.validateScalarRange(_:)(v190, v191, v39, v44)._rawBits;
      if (v192._rawBits < 0x10000)
      {
        v192._rawBits |= 3;
      }

      v143 = String.UTF8View.distance(from:to:)(v192, v193);
      v44;
    }

    else
    {
      v143 = (v140._rawBits >> 16) - (v37 >> 16);
      swift_bridgeObjectRetain_n(v141._rawBits, 2);
    }

    v145 = v46;
    if ((v25 & 0x1000000000000000) != 0)
    {
      v194 = String.UTF8View._foreignCount()();
      v146 = v194 + v143;
      if (__OFADD__(v194, v143))
      {
LABEL_256:
        __break(1u);
        goto LABEL_257;
      }
    }

    else
    {
      v146 = v46 + v143;
      if (__OFADD__(v145, v143))
      {
        goto LABEL_256;
      }
    }

    v147 = v5 & ~v25;
    if ((v147 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL))
    {
      if (v146 > 15)
      {
        goto LABEL_187;
      }

      v44;
      if ((v25 & 0x2000000000000000) == 0)
      {
LABEL_182:
        if ((v25 & 0x1000000000000000) != 0)
        {
          v5 = _StringGuts._foreignConvertedToSmall()(v5, v25);
          v143 = v183;
        }

        else
        {
          if ((v5 & 0x1000000000000000) != 0)
          {
            v151 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v151 = _StringObject.sharedUTF8.getter(v5, v25);
            v42 = v210;
          }

          closure #1 in _StringGuts._convertedToSmall()(v151, v42, &v224, v150);
          v5 = v224;
          v143 = v225;
        }

LABEL_206:
        v44;
        v164._rawBits = v37 & 0xFFFFFFFFFFFF0000 | 1;
        v165._rawBits = *&v27 & 0xFFFFFFFFFFFF0000 | 1;
        v166._rawBits = _StringGuts.validateScalarRange(_:)(v164, v165, v39, v44)._rawBits;
        if (v166._rawBits < 0x10000)
        {
          v166._rawBits |= 3;
        }

        v168 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000) == 0)
        {
          v168 = v39 & 0xFFFFFFFFFFFFLL;
        }

        if (v166._rawBits >> 16 || v167._rawBits >> 16 != v168)
        {
          v39 = specialized static String._copying(_:)(v166._rawBits, v167, v39, v44);
          v37 = v169;
          v44;
        }

        else
        {
          v37 = v44;
        }

        if ((v37 & 0x2000000000000000) != 0)
        {
          v37;
        }

        else
        {
LABEL_257:
          if ((v37 & 0x1000000000000000) != 0)
          {
            v39 = _StringGuts._foreignConvertedToSmall()(v39, v37);
            v213 = v212;
            v37;
            v37 = v213;
          }

          else
          {
            if ((v39 & 0x1000000000000000) != 0)
            {
              v195 = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v196 = v39 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v195 = _StringObject.sharedUTF8.getter(v39, v37);
            }

            closure #1 in _StringGuts._convertedToSmall()(v195, v196, &v224, v144);
            v37;
            v39 = v224;
            v37 = v225;
          }
        }

        v170 = HIBYTE(v143) & 0xF;
        v171 = HIBYTE(v37) & 0xF;
        v172 = v171 + v170;
        if (v171 + v170 <= 0xF)
        {
          v44;
          if (v171)
          {
            v173 = 0;
            v174 = 0;
            v175 = 8 * v170;
            v176 = 8 * v171;
            v13 = v220;
            do
            {
              v177 = v37 >> (v173 & 0x38);
              if (v174 < 8)
              {
                v177 = v39 >> v173;
              }

              v178 = (v177 << (v175 & 0x38)) | ((-255 << (v175 & 0x38)) - 1) & v143;
              v179 = (v177 << v175) | ((-255 << v175) - 1) & v5;
              if (v170 <= 7)
              {
                v5 = v179;
              }

              else
              {
                v143 = v178;
              }

              ++v170;
              v175 += 8;
              v173 += 8;
              ++v174;
            }

            while (v176 != v173);
          }

          else
          {
            v13 = v220;
          }

          v223;
          v25;
          v180 = 0xA000000000000000;
          if (!(v5 & 0x8080808080808080 | v143 & 0x80808080808080))
          {
            v180 = 0xE000000000000000;
          }

          v226 = v5;
          v227 = v180 & 0xFF00000000000000 | (v172 << 56) | v143 & 0xFFFFFFFFFFFFFFLL;
          v159 = v217;
          goto LABEL_240;
        }

LABEL_285:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_205:
      v143 = v25;
      goto LABEL_206;
    }

    v148 = _StringGuts.nativeUnusedCapacity.getter(v5, v25);
    if (v149)
    {
      goto LABEL_285;
    }

    if (v146 > 15)
    {
      goto LABEL_187;
    }

    if ((v25 & 0x2000000000000000) != 0)
    {
      v44;
      goto LABEL_205;
    }

    if (v148 < v143)
    {
      v44;
      goto LABEL_182;
    }

LABEL_187:
    v102 = v147 & 0x2000000000000000;
    v152 = _StringGuts.nativeUnusedCapacity.getter(v5, v25);
    if (v153)
    {
      v154 = v223;
      v13 = v220;
      if (!v102)
      {
        goto LABEL_190;
      }

LABEL_189:
      swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL);
      goto LABEL_190;
    }

    v154 = v223;
    v13 = v220;
    if (v152 >= v143)
    {
      break;
    }

    if (v102)
    {
      goto LABEL_189;
    }

LABEL_190:
    v155 = _StringGuts.nativeCapacity.getter(v5, v25);
    if (v156)
    {
      v157 = 0;
    }

    else
    {
      v157 = v155;
    }

    if (v157 + 0x4000000000000000 >= 0)
    {
      v158 = 2 * v157;
      if (v158 > v146)
      {
        v146 = v158;
      }

LABEL_196:
      v159 = v217;
      goto LABEL_197;
    }

    __break(1u);
LABEL_271:
    v201 = v39;
    if ((v39 & 0x1000000000000000) != 0)
    {
      v5 = _StringGuts._foreignConvertedToSmall()(v5, v39);
      v39 = v216;
      v123 = v201;
      goto LABEL_140;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      v202 = ((v39 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v203 = v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v202 = _StringObject.sharedUTF8.getter(v5, v39);
    }

    closure #1 in _StringGuts._convertedToSmall()(v202, v203, &v224, v120);
    v39;
    v5 = v224;
    v39 = v225;
  }

  if (!v102)
  {
    goto LABEL_196;
  }

  v159 = v217;
  if (!swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL))
  {
LABEL_197:
    _StringGuts.grow(_:)(v146);
  }

  if ((v44 & 0x1000000000000000) != 0)
  {
    v44;
    _StringGuts._foreignAppendInPlace(_:)(v39, v44, v219, v221);
    v154;
    v44;
  }

  else
  {
    if ((v44 & 0x2000000000000000) == 0)
    {
      if ((v39 & 0x1000000000000000) != 0)
      {
        v160 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v161 = v39 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v160 = _StringObject.sharedUTF8.getter(v39, v44);
        v161 = v207;
      }

      if (v161 >= v221)
      {
        v162 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v219, v221, v160, v161);
        closure #1 in _StringGuts.append(_:)(v162, v163, &v226, v39 < 0);
        v154;
        swift_bridgeObjectRelease_n(v44, 2);
        goto LABEL_240;
      }

LABEL_282:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v44;
    v224 = v39;
    v225 = v44 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v44) & 0xF) < v221 || (v221 - v219) < 0)
    {
      goto LABEL_282;
    }

    closure #1 in _StringGuts.append(_:)(&v224 + v219, v221 - v219, &v226, (v44 & 0x4000000000000000) != 0);
    v154;
    v44;
  }

LABEL_240:
  v181 = v227;
  *v159 = v226;
  v159[1] = v181;
  return v13;
}

Swift::UInt64 specialized _StringGuts.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, Swift::UInt64 a4, uint64_t a5, Swift::UInt64 a6)
{
  v8 = v6;
  v14 = *v8;
  v15 = *(v8 + 8);
  if ((*v8 & ~v15 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v15 & 0xFFFFFFFFFFFFFFFLL))
  {
    v237 = a3;
    v239 = a5;
    v241 = a4;
    v234 = v8;
    v250 = 0;
    v251 = 0xE000000000000000;
    v36 = _StringGuts.nativeCapacity.getter(v14, v15);
    if ((v37 & 1) == 0)
    {
      String.reserveCapacity(_:)(v36);
    }

    v235 = v14;
    v236 = a6;
    v38._rawBits = a1;
    v244 = v15;
    v40 = specialized Collection.subscript.getter(v38, v14, v15);
    rawBits = v41;
    v8 = v43;
    a1 = v39;
    v16 = v40 >> 16;
    v15 = v41 >> 16;
    if ((v39 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(v39, 3);
      v197._rawBits = v40 & 0xFFFFFFFFFFFF0000 | 1;
      v198._rawBits = rawBits & 0xFFFFFFFFFFFF0000 | 1;
      v199._rawBits = _StringGuts.validateScalarRange(_:)(v197, v198, v8, a1)._rawBits;
      if (v199._rawBits < 0x10000)
      {
        v199._rawBits |= 3;
      }

      v44 = String.UTF8View.distance(from:to:)(v199, v200);
      a1;
      v46 = v250;
      v45 = v251;
    }

    else
    {
      v44 = v15 - v16;
      swift_bridgeObjectRetain_n(v39, 2);
      v46 = v250;
      v45 = v251;
    }

    v47 = HIBYTE(v45) & 0xF;
    v48 = v47 + v44;
    if (__OFADD__(v47, v44))
    {
      __break(1u);
      goto LABEL_147;
    }

    if ((v46 & ~v45 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v45 & 0xFFFFFFFFFFFFFFFLL))
    {
      _StringGuts.nativeUnusedCapacity.getter(v46, v45);
      if (v49)
      {
        goto LABEL_194;
      }

      if (v48 > 15)
      {
LABEL_28:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v48, v44);
        if ((a1 & 0x1000000000000000) != 0)
        {
          a1;
          _StringGuts._foreignAppendInPlace(_:)(v8, a1, v16, v15);
          a1;
          v55 = v250;
          v53 = v251;
          v105 = v239;
          v104 = v241;
LABEL_71:
          v100 = a2;
          goto LABEL_72;
        }

        a4 = v241;
        if ((a1 & 0x2000000000000000) != 0)
        {
          a1;
          *&v245 = v8;
          *(&v245 + 1) = a1 & 0xFFFFFFFFFFFFFFLL;
          if ((HIBYTE(a1) & 0xF) < v15 || (v15 - v16) < 0)
          {
            goto LABEL_174;
          }

          a1;
          v53 = v251;
          v117 = v251 & 0xFFFFFFFFFFFFFFFLL;
          specialized UnsafeMutablePointer.initialize(from:count:)(&v245 + v16, v15 - v16, ((v251 & 0xFFFFFFFFFFFFFFFLL) + (*((v251 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
          __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v117 + 24) & 0xFFFFFFFFFFFFLL) + v15 - v16, (a1 >> 62) & (*(v117 + 24) < 0));
          v55 = *(v117 + 24);
          v250 = v55;
          goto LABEL_70;
        }

        if ((v8 & 0x1000000000000000) != 0)
        {
          v50 = ((a1 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v51 = v8 & 0xFFFFFFFFFFFFLL;
          if ((v8 & 0xFFFFFFFFFFFFLL) < v15)
          {
            goto LABEL_174;
          }

LABEL_32:
          a1;
          v52 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v16, v15, v50, v51);
          v53 = v251;
          __StringStorage.appendInPlace(_:isASCII:)(v52, v54, v8 < 0);
          v55 = *((v251 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v250 = v55;
          a1;
LABEL_70:
          v105 = v239;
          v104 = a4;
          goto LABEL_71;
        }

LABEL_171:
        v50 = _StringObject.sharedUTF8.getter(v8, a1);
        v51 = v222;
        if (v222 < v15)
        {
          goto LABEL_174;
        }

        goto LABEL_32;
      }
    }

    else if (v48 >= 16)
    {
      goto LABEL_28;
    }

    a1;
    v72 = _StringGuts._convertedToSmall()(v46, v45, v64, v65, v66, v67, v68, v69, v70, v71);
    v74 = HIBYTE(a1) & 0xF;
    if ((a1 & 0x2000000000000000) == 0)
    {
      v74 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v74 < v15)
    {
      goto LABEL_153;
    }

    v55 = v72;
    v75 = v73;
    v76 = rawBits & 0xFFFFFFFFFFFF0000;
    v77 = v40 & 0xFFFFFFFFFFFF0000;
    if (v40 >= 0x10000)
    {
      v78 = 1;
    }

    else
    {
      v78 = 3;
    }

    a1;
    v79._rawBits = v76 | 1;
    v80 = Substring.description.getter(v78 | v77, v79, v8, a1);
    v82 = v81;
    a1;
    v91 = _StringGuts._convertedToSmall()(v80, v82, v83, v84, v85, v86, v87, v88, v89, v90);
    v93 = v92;
    v82;
    v94 = HIBYTE(v75) & 0xF;
    v95 = HIBYTE(v93) & 0xF;
    v96 = v95 + v94;
    if (v95 + v94 >= 0x10)
    {
      goto LABEL_194;
    }

    a1;
    if (v95)
    {
      v97 = 0;
      v98 = 0;
      v99 = 8 * v94;
      v100 = a2;
      do
      {
        v101 = v93 >> (v97 & 0x38);
        if (v98 < 8)
        {
          v101 = v91 >> v97;
        }

        v102 = (v101 << (v99 & 0x38)) | ((-255 << (v99 & 0x38)) - 1) & v75;
        v103 = (v101 << v99) | ((-255 << v99) - 1) & v55;
        if (v94 <= 7)
        {
          v55 = v103;
        }

        else
        {
          v75 = v102;
        }

        ++v94;
        v99 += 8;
        v97 += 8;
        ++v98;
      }

      while (8 * v95 != v97);
    }

    else
    {
      v100 = a2;
    }

    v45;
    v116 = 0xA000000000000000;
    if (!(v55 & 0x8080808080808080 | v75 & 0x80808080808080))
    {
      v116 = 0xE000000000000000;
    }

    v53 = v116 & 0xFF00000000000000 | (v96 << 56) | v75 & 0xFFFFFFFFFFFFFFLL;
    v250 = v55;
    v251 = v53;
    v105 = v239;
    v104 = v241;
LABEL_72:
    v118 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v118 = v55 & 0xFFFFFFFFFFFFLL;
    }

    v241 = v118;
    String.append(contentsOf:)(v237, v104, v105, v236, v56, v57, v58, v59, v60, v61, v62, v63);
    v15 = v250;
    v45 = v251;
    if ((v251 & 0x2000000000000000) != 0)
    {
      v119 = HIBYTE(v251) & 0xF;
    }

    else
    {
      v119 = v250 & 0xFFFFFFFFFFFFLL;
    }

    v120._rawBits = v100;
    rawBits = specialized Collection.subscript.getter(v120, v235, v244)._rawBits;
    v48 = v122;
    v44 = v123;
    v40 = v121._rawBits;
    v8 = rawBits >> 16;
    v16 = v122 >> 16;
    a2 = v119;
    if ((v121._rawBits & 0x1000000000000000) == 0)
    {
      v124 = v16 - v8;
      swift_bridgeObjectRetain_n(v121._rawBits, 2);
      v125 = v119;
      if ((v45 & 0x1000000000000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_150;
    }

LABEL_147:
    swift_bridgeObjectRetain_n(v40, 3);
    v201._rawBits = rawBits & 0xFFFFFFFFFFFF0000 | 1;
    v202._rawBits = v48 & 0xFFFFFFFFFFFF0000 | 1;
    v203._rawBits = _StringGuts.validateScalarRange(_:)(v201, v202, v44, v40)._rawBits;
    if (v203._rawBits < 0x10000)
    {
      v203._rawBits |= 3;
    }

    v124 = String.UTF8View.distance(from:to:)(v203, v204);
    v40;
    v125 = a2;
    if ((v45 & 0x1000000000000000) == 0)
    {
LABEL_79:
      v126 = v125 + v124;
      if (!__OFADD__(v125, v124))
      {
        goto LABEL_80;
      }

      goto LABEL_152;
    }

LABEL_150:
    v205 = String.UTF8View._foreignCount()();
    v126 = v205 + v124;
    if (!__OFADD__(v205, v124))
    {
LABEL_80:
      if ((v15 & ~v45 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v45 & 0xFFFFFFFFFFFFFFFLL))
      {
        v127 = _StringGuts.nativeUnusedCapacity.getter(v15, v45);
        if (v128)
        {
          goto LABEL_194;
        }

        v129 = (v45 >> 61) & 1;
        if (v127 < v124)
        {
          LOBYTE(v129) = 1;
        }

        if (v126 <= 15 && (v129 & 1) != 0)
        {
LABEL_87:
          v40;
          v138 = _StringGuts._convertedToSmall()(v15, v45, v130, v131, v132, v133, v134, v135, v136, v137);
          v140 = HIBYTE(v40) & 0xF;
          if ((v40 & 0x2000000000000000) == 0)
          {
            v140 = v44 & 0xFFFFFFFFFFFFLL;
          }

          if (v140 >= v16)
          {
            v141 = v138;
            v142 = v139;
            v143 = rawBits & 0xFFFFFFFFFFFF0000;
            if (rawBits >= 0x10000)
            {
              v144 = 1;
            }

            else
            {
              v144 = 3;
            }

            v40;
            v145._rawBits = v48 & 0xFFFFFFFFFFFF0000 | 1;
            v146 = Substring.description.getter(v144 | v143, v145, v44, v40);
            v148 = v147;
            v40;
            v157 = _StringGuts._convertedToSmall()(v146, v148, v149, v150, v151, v152, v153, v154, v155, v156);
            v159 = v158;
            v148;
            v160 = HIBYTE(v142) & 0xF;
            v161 = HIBYTE(v159) & 0xF;
            v162 = v161 + v160;
            if (v161 + v160 < 0x10)
            {
              v40;
              v22 = v241;
              if (v161)
              {
                v163 = 0;
                v164 = 0;
                v165 = 8 * v160;
                do
                {
                  v166 = v159 >> (v163 & 0x38);
                  if (v164 < 8)
                  {
                    v166 = v157 >> v163;
                  }

                  v167 = (v166 << (v165 & 0x38)) | ((-255 << (v165 & 0x38)) - 1) & v142;
                  v168 = (v166 << v165) | ((-255 << v165) - 1) & v141;
                  if (v160 <= 7)
                  {
                    v141 = v168;
                  }

                  else
                  {
                    v142 = v167;
                  }

                  ++v160;
                  v165 += 8;
                  v163 += 8;
                  ++v164;
                }

                while (8 * v161 != v163);
              }

              v244;
              v45;
              v169 = 0xA000000000000000;
              if (!(v141 & 0x8080808080808080 | v142 & 0x80808080808080))
              {
                v169 = 0xE000000000000000;
              }

              v250 = v141;
              v251 = v169 & 0xFF00000000000000 | (v162 << 56) | v142 & 0xFFFFFFFFFFFFFFLL;
              goto LABEL_116;
            }

LABEL_194:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

LABEL_153:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else if (v126 < 16)
      {
        goto LABEL_87;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v126, v124);
      if ((v40 & 0x1000000000000000) != 0)
      {
        v40;
        _StringGuts._foreignAppendInPlace(_:)(v44, v40, v8, v16);
        v244;
        v40;
        v22 = v241;
LABEL_116:
        v177 = v251;
        *v234 = v250;
        v234[1] = v177;
        return v22;
      }

      v22 = v241;
      if ((v40 & 0x2000000000000000) == 0)
      {
        if ((v44 & 0x1000000000000000) != 0)
        {
          v170 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v171 = v44 & 0xFFFFFFFFFFFFLL;
          if ((v44 & 0xFFFFFFFFFFFFLL) < v16)
          {
            goto LABEL_174;
          }
        }

        else
        {
          v170 = _StringObject.sharedUTF8.getter(v44, v40);
          v171 = v223;
          if (v223 < v16)
          {
            goto LABEL_174;
          }
        }

        v40;
        v172 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v16, v170, v171);
        v173 = v251 & 0xFFFFFFFFFFFFFFFLL;
        __StringStorage.appendInPlace(_:isASCII:)(v172, v174, v44 < 0);
        v250 = *(v173 + 24);
        v244;
        v175 = v40;
        goto LABEL_115;
      }

      v40;
      *&v245 = v44;
      *(&v245 + 1) = v40 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(v40) & 0xF) >= v16 && (v16 - v8) >= 0)
      {
        v40;
        v176 = v251 & 0xFFFFFFFFFFFFFFFLL;
        specialized UnsafeMutablePointer.initialize(from:count:)(&v245 + v8, v16 - v8, ((v251 & 0xFFFFFFFFFFFFFFFLL) + (*((v251 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
        __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v176 + 24) & 0xFFFFFFFFFFFFLL) + v16 - v8, (v40 >> 62) & (*(v176 + 24) < 0));
        v250 = *(v176 + 24);
        v175 = v244;
LABEL_115:
        v175;
        goto LABEL_116;
      }

LABEL_174:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    v238 = a3;
    v240 = a5;
    v250 = a3;
    v251 = a4;
    v252 = a5;
    v253 = a6;
    v254 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
    v255 = 0;
    a6;
    v206 = specialized FlattenSequence<>.startIndex.getter();
    v208 = &v250;
    v242 = a4;
    v210 = specialized FlattenSequence<>.distance(from:to:)(v206, v209, v207 & 1, a4, 0, 1);
    v22 = a1 >> 16;
    v211 = (a1 >> 16) + v210;
    if (__OFADD__(a1 >> 16, v210))
    {
      __break(1u);
    }

    else
    {
      a4 = a2 >> 16;
      v212 = v14 & 0xFFFFFFFFFFFFLL;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v212 = HIBYTE(v15) & 0xF;
      }

      v213 = v212 - a4;
      v214 = v211 + v213;
      if (!__OFADD__(v211, v213))
      {
        v7 = v210;
        if (v214 < 16)
        {
          goto LABEL_188;
        }

        v215 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v216 & 1) == 0 && v215 >= v214)
        {
          goto LABEL_188;
        }

        v15 = a6;
        a1 = v8;
        v217 = _StringGuts.uniqueNativeCapacity.getter();
        if (v218)
        {
          v219 = *(v8 + 8);
          if ((v219 & 0x1000000000000000) != 0)
          {
            v220 = String.UTF8View._foreignCount()();
          }

          else if ((v219 & 0x2000000000000000) != 0)
          {
            v220 = HIBYTE(v219) & 0xF;
          }

          else
          {
            v220 = *v8 & 0xFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v220 = 2 * v217;
        }

        if (v220 <= v214)
        {
          v208 = v214;
        }

        else
        {
          v208 = v220;
        }

        v224 = *(v8 + 8);
        if ((v224 & 0x1000000000000000) == 0)
        {
          v225 = *v8;
          if ((v224 & 0x2000000000000000) != 0)
          {
            v228 = (v224 >> 62) & 1;
            v227 = HIBYTE(v224) & 0xF;
            *&v245 = *v8;
            *(&v245 + 1) = v224 & 0xFFFFFFFFFFFFFFLL;
            v226 = &v245;
          }

          else
          {
            if ((v225 & 0x1000000000000000) != 0)
            {
              v226 = ((v224 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v227 = v225 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v226 = _StringObject.sharedUTF8.getter(*v8, *(v8 + 8));
            }

            v228 = v225 >> 63;
          }

          v229 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v226, v227, v208, v228);
          v230 = *(v229 + 24);
          v224;
          *v8 = v230;
          *(v8 + 8) = v229;
          goto LABEL_187;
        }

LABEL_197:
        v8 = a1;
        _StringGuts._foreignGrow(_:)(v208);
LABEL_187:
        a6 = v15;
LABEL_188:
        v231 = *(v8 + 8) & 0xFFFFFFFFFFFFFFFLL;
        *&v245 = v238;
        *(&v245 + 1) = v242;
        v246 = v240;
        v247 = a6;
        v248 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
        v249 = 0;
        specialized __StringStorage.replace<A>(from:to:with:replacementCount:)(v22, a4, &v245, v7);
        a6;
        *v8 = *(v231 + 24);
        return v22;
      }
    }

    __break(1u);
    goto LABEL_197;
  }

  v16 = a3 >> 16;
  v17 = a4 >> 16;
  if ((a6 & 0x2000000000000000) == 0)
  {
    if ((a5 & 0x1000000000000000) != 0)
    {
      v18 = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v19 = a5 & 0xFFFFFFFFFFFFLL;
      if ((a5 & 0xFFFFFFFFFFFFLL) < v17)
      {
        goto LABEL_174;
      }
    }

    else
    {
      v18 = _StringObject.sharedUTF8.getter(a5, a6);
      v19 = v221;
      v17 = a4 >> 16;
      if (v19 < (a4 >> 16))
      {
        goto LABEL_174;
      }
    }

    v20 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a3 >> 16, v17, v18, v19);
    v22 = a1 >> 16;
    v23 = (a1 >> 16) + v21;
    if (__OFADD__(a1 >> 16, v21))
    {
      __break(1u);
    }

    else
    {
      a4 = a2 >> 16;
      v24 = v14 & 0xFFFFFFFFFFFFLL;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      v25 = v24 - a4;
      v26 = v23 + v25;
      if (!__OFADD__(v23, v25))
      {
        v27 = v20;
        v28 = v21;
        if (v26 >= 16)
        {
          v29 = v20;
          v30 = _StringGuts.uniqueNativeCapacity.getter();
          if ((v31 & 1) != 0 || (v27 = v29, v30 < v26))
          {
            v32 = _StringGuts.uniqueNativeCapacity.getter();
            if (v33)
            {
              v34 = *(v8 + 8);
              if ((v34 & 0x1000000000000000) != 0)
              {
                v35 = String.UTF8View._foreignCount()();
              }

              else if ((v34 & 0x2000000000000000) != 0)
              {
                v35 = HIBYTE(v34) & 0xF;
              }

              else
              {
                v35 = *v8 & 0xFFFFFFFFFFFFLL;
              }
            }

            else
            {
              v35 = 2 * v32;
            }

            if (v35 <= v26)
            {
              v185 = v26;
            }

            else
            {
              v185 = v35;
            }

            v186 = *(v8 + 8);
            if ((v186 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignGrow(_:)(v185);
            }

            else
            {
              v187 = *v8;
              if ((v186 & 0x2000000000000000) != 0)
              {
                v190 = (v186 >> 62) & 1;
                v189 = HIBYTE(v186) & 0xF;
                v250 = *v8;
                v251 = v186 & 0xFFFFFFFFFFFFFFLL;
                v188 = &v250;
              }

              else
              {
                if ((v187 & 0x1000000000000000) != 0)
                {
                  v188 = ((v186 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v189 = v187 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v233 = v185;
                  v188 = _StringObject.sharedUTF8.getter(*v8, *(v8 + 8));
                  v185 = v233;
                }

                v190 = v187 >> 63;
              }

              v194 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v188, v189, v185, v190);
              v195 = *(v194 + 24);
              v186;
              *v8 = v195;
              *(v8 + 8) = v194;
            }

            v27 = v29;
          }
        }

        v196 = *(v8 + 8) & 0xFFFFFFFFFFFFFFFLL;
        __StringStorage.replace(from:to:with:)(v22, a4, v27, v28);
        *v8 = *(v196 + 24);
        return v22;
      }
    }

    __break(1u);
    goto LABEL_171;
  }

  v250 = a5;
  v251 = a6 & 0xFFFFFFFFFFFFFFLL;
  if ((HIBYTE(a6) & 0xF) < v17)
  {
    goto LABEL_174;
  }

  v106 = v17 - v16;
  if ((v17 - v16) < 0)
  {
    goto LABEL_174;
  }

  v22 = a1 >> 16;
  v107 = a2 >> 16;
  v108 = v14 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v108 = HIBYTE(v15) & 0xF;
  }

  v109 = v108 - v107 + v106 + (a1 >> 16);
  if (v109 >= 16)
  {
    v110 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v111 & 1) != 0 || v110 < v109)
    {
      v112 = _StringGuts.uniqueNativeCapacity.getter();
      if (v113)
      {
        v114 = *(v8 + 8);
        if ((v114 & 0x1000000000000000) != 0)
        {
          v115 = String.UTF8View._foreignCount()();
        }

        else if ((v114 & 0x2000000000000000) != 0)
        {
          v115 = HIBYTE(v114) & 0xF;
        }

        else
        {
          v115 = *v8 & 0xFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v115 = 2 * v112;
      }

      if (v115 <= v109)
      {
        v179 = v109;
      }

      else
      {
        v179 = v115;
      }

      v180 = *(v8 + 8);
      if ((v180 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignGrow(_:)(v179);
      }

      else
      {
        v181 = *v8;
        if ((v180 & 0x2000000000000000) != 0)
        {
          v184 = (v180 >> 62) & 1;
          v183 = HIBYTE(v180) & 0xF;
          *&v245 = *v8;
          *(&v245 + 1) = v180 & 0xFFFFFFFFFFFFFFLL;
          v182 = &v245;
        }

        else
        {
          if ((v181 & 0x1000000000000000) != 0)
          {
            v182 = ((v180 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v183 = v181 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v232 = v179;
            v182 = _StringObject.sharedUTF8.getter(*v8, *(v8 + 8));
            v179 = v232;
          }

          v184 = v181 >> 63;
        }

        v191 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v182, v183, v179, v184);
        v192 = *(v191 + 24);
        v180;
        *v8 = v192;
        *(v8 + 8) = v191;
      }
    }
  }

  v193 = *(v8 + 8) & 0xFFFFFFFFFFFFFFFLL;
  __StringStorage.replace(from:to:with:)(v22, v107, &v250 + v16, v106);
  *v8 = *(v193 + 24);
  return v22;
}

Swift::UInt64 specialized _StringGuts.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v9 = *v3;
  v8 = v3[1];
  if ((*v3 & ~v8 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v8 & 0xFFFFFFFFFFFFFFFLL))
  {
    v183 = v3;
    v184 = a3;
    v189 = 0;
    v190 = 0xE000000000000000;
    v28 = _StringGuts.nativeCapacity.getter(v9, v8);
    if ((v29 & 1) == 0)
    {
      String.reserveCapacity(_:)(v28);
    }

    v185 = v9;
    v187 = a2;
    v30._rawBits = a1;
    v188 = v8;
    v32 = specialized Collection.subscript.getter(v30, v9, v8);
    rawBits = v33;
    v36 = v35;
    v37 = v31;
    v38 = v32 >> 16;
    v39 = v33 >> 16;
    if ((v31 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(v31, 3);
      v171._rawBits = v32 & 0xFFFFFFFFFFFF0000 | 1;
      v172._rawBits = rawBits & 0xFFFFFFFFFFFF0000 | 1;
      v173._rawBits = _StringGuts.validateScalarRange(_:)(v171, v172, v36, v37)._rawBits;
      if (v173._rawBits < 0x10000)
      {
        v173._rawBits |= 3;
      }

      v40 = String.UTF8View.distance(from:to:)(v173, v174);
      v37;
      v42 = v189;
      v41 = v190;
    }

    else
    {
      v40 = v39 - v38;
      swift_bridgeObjectRetain_n(v31, 2);
      v42 = v189;
      v41 = v190;
    }

    v43 = HIBYTE(v41) & 0xF;
    v44 = v43 + v40;
    if (__OFADD__(v43, v40))
    {
      __break(1u);
      goto LABEL_122;
    }

    if ((v42 & ~v41 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v41 & 0xFFFFFFFFFFFFFFFLL))
    {
      _StringGuts.nativeUnusedCapacity.getter(v42, v41);
      if (v45)
      {
        goto LABEL_140;
      }

      if (v44 > 15)
      {
        goto LABEL_24;
      }
    }

    else if (v44 >= 16)
    {
LABEL_24:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v44, v40);
      if ((v37 & 0x1000000000000000) != 0)
      {
        v37;
        _StringGuts._foreignAppendInPlace(_:)(v36, v37, v38, v39);
        v37;
        v52 = v189;
        v50 = v190;
        v46 = v187;
        v53 = v188;
LABEL_47:
        v86 = v185;
        goto LABEL_55;
      }

      v46 = v187;
      if ((v37 & 0x2000000000000000) == 0)
      {
        if ((v36 & 0x1000000000000000) != 0)
        {
          v47 = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v48 = v36 & 0xFFFFFFFFFFFFLL;
          if ((v36 & 0xFFFFFFFFFFFFLL) < v39)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v47 = _StringObject.sharedUTF8.getter(v36, v37);
          v48 = v180;
          if (v180 < v39)
          {
            goto LABEL_136;
          }
        }

        v37;
        v49 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v38, v39, v47, v48);
        v50 = v190;
        __StringStorage.appendInPlace(_:isASCII:)(v49, v51, v36 < 0);
        v52 = *((v190 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v189 = v52;
        v37;
        v53 = v188;
        goto LABEL_47;
      }

      v37;
      v194 = v36;
      v195 = v37 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(v37) & 0xF) < v39)
      {
        goto LABEL_136;
      }

      v86 = v185;
      if ((v39 - v38) < 0)
      {
        goto LABEL_136;
      }

      v37;
      v50 = v190;
      specialized UnsafeMutablePointer.initialize(from:count:)(&v194 + v38, v39 - v38, ((v190 & 0xFFFFFFFFFFFFFFFLL) + (*((v190 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
      __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*((v190 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + v39 - v38, (v37 >> 62) & (*((v190 & 0xFFFFFFFFFFFFFFFLL) + 0x18) < 0));
      v52 = *((v190 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v189 = v52;
      v53 = v188;
LABEL_55:
      v94 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v94 = v52 & 0xFFFFFFFFFFFFLL;
      }

      v185 = v94;
      specialized String.append<A>(contentsOf:)(v184);
      v38 = v189;
      v41 = v190;
      if ((v190 & 0x2000000000000000) != 0)
      {
        v95 = HIBYTE(v190) & 0xF;
      }

      else
      {
        v95 = v189 & 0xFFFFFFFFFFFFLL;
      }

      v96._rawBits = v46;
      rawBits = specialized Collection.subscript.getter(v96, v86, v53)._rawBits;
      v37 = v98;
      v36 = v99;
      v40 = v97._rawBits;
      v39 = rawBits >> 16;
      v32 = v98 >> 16;
      v187 = v95;
      if ((v97._rawBits & 0x1000000000000000) == 0)
      {
        v100 = v32 - v39;
        swift_bridgeObjectRetain_n(v97._rawBits, 2);
        v101 = v95;
        if ((v190 & 0x1000000000000000) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_125;
      }

LABEL_122:
      swift_bridgeObjectRetain_n(v40, 3);
      v175._rawBits = rawBits & 0xFFFFFFFFFFFF0000 | 1;
      v176._rawBits = v37 & 0xFFFFFFFFFFFF0000 | 1;
      v177._rawBits = _StringGuts.validateScalarRange(_:)(v175, v176, v36, v40)._rawBits;
      if (v177._rawBits < 0x10000)
      {
        v177._rawBits |= 3;
      }

      v100 = String.UTF8View.distance(from:to:)(v177, v178);
      v40;
      v101 = v187;
      if ((v41 & 0x1000000000000000) == 0)
      {
LABEL_62:
        v102 = v101 + v100;
        if (!__OFADD__(v101, v100))
        {
          goto LABEL_63;
        }

        goto LABEL_127;
      }

LABEL_125:
      v179 = String.UTF8View._foreignCount()();
      v102 = v179 + v100;
      if (!__OFADD__(v179, v100))
      {
LABEL_63:
        if ((v38 & ~v41 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v41 & 0xFFFFFFFFFFFFFFFLL))
        {
          v103 = _StringGuts.nativeUnusedCapacity.getter(v38, v41);
          if (v104)
          {
            goto LABEL_140;
          }

          v105 = (v41 >> 61) & 1;
          if (v103 < v100)
          {
            LOBYTE(v105) = 1;
          }

          if (v102 <= 15 && (v105 & 1) != 0)
          {
LABEL_70:
            v40;
            v114 = _StringGuts._convertedToSmall()(v38, v41, v106, v107, v108, v109, v110, v111, v112, v113);
            v116 = HIBYTE(v40) & 0xF;
            if ((v40 & 0x2000000000000000) == 0)
            {
              v116 = v36 & 0xFFFFFFFFFFFFLL;
            }

            if (v116 >= v32)
            {
              v117 = v114;
              v118 = v115;
              v119 = v37 & 0xFFFFFFFFFFFF0000;
              v120 = rawBits & 0xFFFFFFFFFFFF0000;
              if (rawBits >= 0x10000)
              {
                v121 = 1;
              }

              else
              {
                v121 = 3;
              }

              v40;
              v122._rawBits = v119 | 1;
              v123 = Substring.description.getter(v121 | v120, v122, v36, v40);
              v125 = v124;
              v40;
              v134 = _StringGuts._convertedToSmall()(v123, v125, v126, v127, v128, v129, v130, v131, v132, v133);
              v136 = v135;
              v125;
              v137 = HIBYTE(v118) & 0xF;
              v138 = HIBYTE(v136) & 0xF;
              v139 = v138 + v137;
              if (v138 + v137 < 0x10)
              {
                v40;
                v140 = v183;
                if (v138)
                {
                  v141 = 0;
                  v142 = 0;
                  v143 = 8 * v137;
                  do
                  {
                    v144 = v136 >> (v141 & 0x38);
                    if (v142 < 8)
                    {
                      v144 = v134 >> v141;
                    }

                    v145 = (v144 << (v143 & 0x38)) | ((-255 << (v143 & 0x38)) - 1) & v118;
                    v146 = (v144 << v143) | ((-255 << v143) - 1) & v117;
                    if (v137 <= 7)
                    {
                      v117 = v146;
                    }

                    else
                    {
                      v118 = v145;
                    }

                    ++v137;
                    v143 += 8;
                    v141 += 8;
                    ++v142;
                  }

                  while (8 * v138 != v141);
                }

                v188;
                v41;
                v147 = 0xA000000000000000;
                if (!(v117 & 0x8080808080808080 | v118 & 0x80808080808080))
                {
                  v147 = 0xE000000000000000;
                }

                v189 = v117;
                v190 = v147 & 0xFF00000000000000 | (v139 << 56) | v118 & 0xFFFFFFFFFFFFFFLL;
                result = v185;
                goto LABEL_99;
              }

LABEL_140:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_128:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else if (v102 < 16)
        {
          goto LABEL_70;
        }

        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v102, v100);
        if ((v40 & 0x1000000000000000) != 0)
        {
          v40;
          _StringGuts._foreignAppendInPlace(_:)(v36, v40, v39, v32);
          v188;
          v40;
          v140 = v183;
          result = v185;
LABEL_99:
          v154 = v190;
          *v140 = v189;
          v140[1] = v154;
          return result;
        }

        if ((v40 & 0x2000000000000000) == 0)
        {
          if ((v36 & 0x1000000000000000) != 0)
          {
            v149 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v150 = v36 & 0xFFFFFFFFFFFFLL;
            if ((v36 & 0xFFFFFFFFFFFFLL) < v32)
            {
              goto LABEL_136;
            }
          }

          else
          {
            v149 = _StringObject.sharedUTF8.getter(v36, v40);
            v150 = v181;
            if (v181 < v32)
            {
              goto LABEL_136;
            }
          }

          v40;
          v151 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v39, v32, v149, v150);
          __StringStorage.appendInPlace(_:isASCII:)(v151, v152, v36 < 0);
          v189 = *((v190 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v188;
          v153 = v40;
          goto LABEL_98;
        }

        v40;
        v194 = v36;
        v195 = v40 & 0xFFFFFFFFFFFFFFLL;
        if ((HIBYTE(v40) & 0xF) >= v32 && (v32 - v39) >= 0)
        {
          v40;
          specialized UnsafeMutablePointer.initialize(from:count:)(&v194 + v39, v32 - v39, ((v190 & 0xFFFFFFFFFFFFFFFLL) + (*((v190 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
          __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*((v190 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + v32 - v39, (v40 >> 62) & (*((v190 & 0xFFFFFFFFFFFFFFFLL) + 0x18) < 0));
          v189 = *((v190 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v153 = v188;
LABEL_98:
          v153;
          v140 = v183;
          result = v185;
          goto LABEL_99;
        }

LABEL_136:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v37;
    v62 = _StringGuts._convertedToSmall()(v42, v41, v54, v55, v56, v57, v58, v59, v60, v61);
    v64 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v64 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v64 < v39)
    {
      goto LABEL_128;
    }

    v52 = v62;
    v65 = v63;
    v66 = rawBits & 0xFFFFFFFFFFFF0000;
    if (v32 >= 0x10000)
    {
      v67 = 1;
    }

    else
    {
      v67 = 3;
    }

    v37;
    v68._rawBits = v66 | 1;
    v69 = Substring.description.getter(v67 | v32 & 0xFFFFFFFFFFFF0000, v68, v36, v37);
    v71 = v70;
    v37;
    v80 = _StringGuts._convertedToSmall()(v69, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    v82 = v81;
    v71;
    v83 = HIBYTE(v65) & 0xF;
    v84 = HIBYTE(v82) & 0xF;
    v85 = v84 + v83;
    if (v84 + v83 >= 0x10)
    {
      goto LABEL_140;
    }

    v37;
    v86 = v185;
    if (v84)
    {
      v87 = 0;
      v88 = 0;
      v89 = 8 * v83;
      v53 = v188;
      do
      {
        v90 = v82 >> (v87 & 0x38);
        if (v88 < 8)
        {
          v90 = v80 >> v87;
        }

        v91 = (v90 << (v89 & 0x38)) | ((-255 << (v89 & 0x38)) - 1) & v65;
        v92 = (v90 << v89) | ((-255 << v89) - 1) & v52;
        if (v83 <= 7)
        {
          v52 = v92;
        }

        else
        {
          v65 = v91;
        }

        ++v83;
        v89 += 8;
        v87 += 8;
        ++v88;
      }

      while (8 * v84 != v87);
    }

    else
    {
      v53 = v188;
    }

    v41;
    v93 = 0xA000000000000000;
    if (!(v52 & 0x8080808080808080 | v65 & 0x80808080808080))
    {
      v93 = 0xE000000000000000;
    }

    v50 = v93 & 0xFF00000000000000 | (v85 << 56) | v65 & 0xFFFFFFFFFFFFFFLL;
    v189 = v52;
    v190 = v50;
    v46 = v187;
    goto LABEL_55;
  }

  v10 = a3;
  v11 = specialized FlattenSequence<>.startIndex.getter(v10, closure #3 in _StringGuts.replaceSubrange<A>(_:with:));
  v14 = specialized FlattenSequence<>.distance(from:to:)(v11, v13, v12 & 1, *(a3 + 16), 0, 1uLL, a3, closure #3 in _StringGuts.replaceSubrange<A>(_:with:));
  v15 = a1 >> 16;
  v16 = (a1 >> 16) + v14;
  if (__OFADD__(a1 >> 16, v14))
  {
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_136;
  }

  v17 = a2 >> 16;
  v18 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v8) & 0xF;
  }

  v19 = v18 - v17;
  v20 = v16 + v19;
  if (__OFADD__(v16, v19))
  {
    goto LABEL_130;
  }

  v21 = v14;
  v186 = v16;
  if (v20 >= 16)
  {
    v22 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v23 & 1) != 0 || v22 < v20)
    {
      v24 = _StringGuts.uniqueNativeCapacity.getter();
      if (v25)
      {
        v26 = v3[1];
        if ((v26 & 0x1000000000000000) != 0)
        {
          v27 = String.UTF8View._foreignCount()();
        }

        else if ((v26 & 0x2000000000000000) != 0)
        {
          v27 = HIBYTE(v26) & 0xF;
        }

        else
        {
          v27 = *v3 & 0xFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v27 = 2 * v24;
      }

      if (v27 <= v20)
      {
        v155 = v20;
      }

      else
      {
        v155 = v27;
      }

      v156 = v3[1];
      if ((v156 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignGrow(_:)(v155);
      }

      else
      {
        v157 = *v3;
        if ((v156 & 0x2000000000000000) != 0)
        {
          v160 = (v156 >> 62) & 1;
          v159 = HIBYTE(v156) & 0xF;
          v189 = *v4;
          v190 = v156 & 0xFFFFFFFFFFFFFFLL;
          v158 = &v189;
        }

        else
        {
          if ((v157 & 0x1000000000000000) != 0)
          {
            v158 = ((v156 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v159 = v157 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v182 = v155;
            v158 = _StringObject.sharedUTF8.getter(*v4, v4[1]);
            v155 = v182;
          }

          v160 = v157 >> 63;
        }

        v161 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v158, v159, v155, v160);
        v162 = *(v161 + 24);
        v156;
        *v4 = v162;
        v4[1] = v161;
      }
    }
  }

  v163 = v4[1] & 0xFFFFFFFFFFFFFFFLL;
  v164 = v15;
  v165 = v163 + 32 + v15;
  v166 = (*(v163 + 0x18) & 0xFFFFFFFFFFFFLL) - v17;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v163 + 32 + v17), v166, (v165 + v21));
  v167 = *(v163 + 24) >> 63;
  v189 = a3;
  v190 = 0;
  v191 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
  v192 = 0u;
  v193 = 0u;
  a3;
  v168 = 0;
  while (1)
  {
    v169 = specialized FlattenSequence.Iterator.next()();
    if ((v169 & 0x100) != 0)
    {
      break;
    }

    LOBYTE(v167) = ((v169 & 0x80u) == 0) & v167;
    *(v165 + v168) = v169;
    if (__OFADD__(v168++, 1))
    {
      __break(1u);
      break;
    }
  }

  v189;
  v192;
  v193;
  if (__OFADD__(v186, v166))
  {
    goto LABEL_131;
  }

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v186 + v166, v167 & 1);
  a3;
  *v4 = *(v163 + 24);
  return v164;
}

Swift::UInt64 specialized _StringGuts.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, unint64_t a4)
{
  v7 = *v4;
  v6 = v4[1];
  v221 = a3;
  if ((*v4 & ~v6 & 0x2000000000000000) != 0)
  {
    v8 = v4;
    v9 = a4;
    if (swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
    {
      v11 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v11 = a3 & 0xFFFFFFFFFFFFLL;
      }

      v12 = v11 == 0;
      if (v11)
      {
        v13 = 15;
      }

      else
      {
        v13 = 0;
      }

      v9;
      v14._rawBits = v13;
      v15._rawBits = 0;
      v16 = specialized FlattenSequence<>.distance(from:to:)(v12, v14, v12, 1, v15, 1, a3, v9, closure #3 in _StringGuts.replaceSubrange<A>(_:with:));
      v17 = a1 >> 16;
      v18 = (a1 >> 16) + v16;
      if (!__OFADD__(a1 >> 16, v16))
      {
        v19 = v7;
        v20 = a2 >> 16;
        v21 = v19 & 0xFFFFFFFFFFFFLL;
        if ((v6 & 0x2000000000000000) != 0)
        {
          v21 = HIBYTE(v6) & 0xF;
        }

        v22 = v21 - v20;
        v23 = v18 + v22;
        if (!__OFADD__(v18, v22))
        {
          v24 = v16;
          v216 = v17;
          v217 = v18;
          if (v23 >= 16)
          {
            v25 = _StringGuts.uniqueNativeCapacity.getter();
            if ((v26 & 1) != 0 || v25 < v23)
            {
              v27 = _StringGuts.uniqueNativeCapacity.getter();
              if (v28)
              {
                v29 = v8[1];
                if ((v29 & 0x1000000000000000) != 0)
                {
                  v30 = String.UTF8View._foreignCount()();
                }

                else if ((v29 & 0x2000000000000000) != 0)
                {
                  v30 = HIBYTE(v29) & 0xF;
                }

                else
                {
                  v30 = *v8 & 0xFFFFFFFFFFFFLL;
                }
              }

              else
              {
                v30 = 2 * v27;
              }

              v167 = v9;
              if (v30 <= v23)
              {
                v168 = v23;
              }

              else
              {
                v168 = v30;
              }

              v169 = v8[1];
              if ((v169 & 0x1000000000000000) != 0)
              {
                _StringGuts._foreignGrow(_:)(v168);
              }

              else
              {
                v170 = *v8;
                if ((v169 & 0x2000000000000000) != 0)
                {
                  __src = *v8;
                  v225 = v169 & 0xFFFFFFFFFFFFFFLL;
                  v174 = HIBYTE(v169) & 0xF | 0xC000000000000000;
                  if ((v169 & 0x4000000000000000) == 0)
                  {
                    v174 = HIBYTE(v169) & 0xF;
                  }

                  v175 = v174 | 0x3000000000000000;
                  v173 = _allocateStringStorage(codeUnitCapacity:)(v168);
                  *(v173 + 16) = v176;
                  *(v173 + 24) = v175;
                  if (v176 < 0)
                  {
                    *__StringStorage._breadcrumbsAddress.getter() = 0;
                    v175 = *(v173 + 24);
                  }

                  *(v173 + 32 + (v175 & 0xFFFFFFFFFFFFLL)) = 0;
                  specialized UnsafeMutablePointer.initialize(from:count:)(&__src, HIBYTE(v169) & 0xF, (v173 + 32));
                }

                else
                {
                  if ((v170 & 0x1000000000000000) != 0)
                  {
                    v171 = ((v169 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v172 = v170 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v171 = _StringObject.sharedUTF8.getter(*v8, v8[1]);
                  }

                  v173 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v171, v172, v168, v170 < 0);
                }

                v9 = v167;
                v177 = *(v173 + 24);
                v169;
                *v8 = v177;
                v8[1] = v173;
              }

              v17 = v216;
            }
          }

          v178 = v8[1] & 0xFFFFFFFFFFFFFFFLL;
          v220 = v178 + 32 + v17;
          v214 = (*(v178 + 0x18) & 0xFFFFFFFFFFFFLL) - v20;
          specialized UnsafeMutablePointer.moveInitialize(from:count:)((v178 + 32 + v20), v214, (v220 + v24));
          v210 = v178;
          v179 = *(v178 + 24) >> 63;
          v9;
          v180 = 0;
          v181 = 0;
          v182 = 0;
          v183 = 0;
          v184 = v9;
          while (1)
          {
            if (!v182 || ((v186 = (v182 & 0x2000000000000000) == 0, (v182 & 0x2000000000000000) != 0) ? (v187 = HIBYTE(v182) & 0xF) : (v187 = v181 & 0xFFFFFFFFFFFFLL), v183 >> 14 == 4 * v187))
            {
              if (!v184 || ((v182, v186 = (v184 & 0x2000000000000000) == 0, v181 = v221, v182 = v184, (v184 & 0x2000000000000000) != 0) ? (v187 = HIBYTE(v184) & 0xF) : (v187 = v221 & 0xFFFFFFFFFFFFLL), !v187))
              {
                v182;
                v154 = v216;
                if (!__OFADD__(v217, v214))
                {
                  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v217 + v214, v179 & 1);
                  a4;
                  *v211 = *(v210 + 24);
                  return v154;
                }

LABEL_166:
                __break(1u);
LABEL_171:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v183 = 15;
              v221 = 0;
              v184 = 0;
            }

            v188 = (v181 >> 59) & 1;
            if ((v182 & 0x1000000000000000) == 0)
            {
              LOBYTE(v188) = 1;
            }

            v189 = v183 & 0xC;
            v190 = 4 << v188;
            rawBits = v183;
            if (v189 == v190)
            {
              v209 = v183;
              rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v183)._rawBits;
              v183 = v209;
            }

            v192 = rawBits >> 16;
            if (rawBits >> 16 >= v187)
            {
              goto LABEL_153;
            }

            if ((v182 & 0x1000000000000000) != 0)
            {
              v195 = v183;
              v194 = String.UTF8View._foreignSubscript(position:)(rawBits);
              v183 = v195;
              if (v189 != v190)
              {
                goto LABEL_141;
              }
            }

            else
            {
              if (v186)
              {
                if ((v181 & 0x1000000000000000) != 0)
                {
                  p_src = ((v182 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v196 = v183;
                  p_src = _StringObject.sharedUTF8.getter(v181, v182);
                  v183 = v196;
                }
              }

              else
              {
                __src = v181;
                v225 = v182 & 0xFFFFFFFFFFFFFFLL;
                p_src = &__src;
              }

              v194 = *(p_src + v192);
              if (v189 != v190)
              {
LABEL_141:
                if ((v182 & 0x1000000000000000) != 0)
                {
                  goto LABEL_142;
                }

                goto LABEL_117;
              }
            }

            v183 = _StringGuts._slowEnsureMatchingEncoding(_:)(v183)._rawBits;
            if ((v182 & 0x1000000000000000) != 0)
            {
LABEL_142:
              if (v187 <= v183 >> 16)
              {
                goto LABEL_153;
              }

              v183 = String.UTF8View._foreignIndex(after:)(v183)._rawBits;
              goto LABEL_118;
            }

LABEL_117:
            v183 = (v183 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_118:
            LOBYTE(v179) = (v194 >= 0) & v179;
            *(v220 + v180) = v194;
            if (__OFADD__(v180++, 1))
            {
              __break(1u);
LABEL_153:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }
          }
        }

LABEL_165:
        __break(1u);
        goto LABEL_166;
      }

LABEL_164:
      __break(1u);
      goto LABEL_165;
    }
  }

  __src = 0;
  v225 = 0xE000000000000000;
  v31 = _StringGuts.nativeCapacity.getter(v7, v6);
  if ((v32 & 1) == 0)
  {
    String.reserveCapacity(_:)(v31);
  }

  v33._rawBits = a1;
  v218 = v7;
  v219 = v6;
  v35 = specialized Collection.subscript.getter(v33, v7, v6);
  v37 = v36;
  v39 = v38;
  v40 = v34;
  v41 = v35 >> 16;
  v42 = v36 >> 16;
  if ((v34 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n(v34, 3);
    v198._rawBits = v35 & 0xFFFFFFFFFFFF0000 | 1;
    v199._rawBits = v37 & 0xFFFFFFFFFFFF0000 | 1;
    v200._rawBits = _StringGuts.validateScalarRange(_:)(v198, v199, v39, v40)._rawBits;
    if (v200._rawBits < 0x10000)
    {
      v200._rawBits |= 3;
    }

    v43 = String.UTF8View.distance(from:to:)(v200, v201);
    v40;
    v45 = __src;
    v44 = v225;
  }

  else
  {
    v43 = v42 - v41;
    swift_bridgeObjectRetain_n(v34, 2);
    v45 = __src;
    v44 = v225;
  }

  v46 = HIBYTE(v44) & 0xF;
  v47 = v46 + v43;
  if (__OFADD__(v46, v43))
  {
    __break(1u);
    goto LABEL_158;
  }

  if ((v45 & ~v44 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v44 & 0xFFFFFFFFFFFFFFFLL))
  {
    _StringGuts.nativeUnusedCapacity.getter(v45, v44);
    if (v48)
    {
      goto LABEL_175;
    }

    if (v47 > 15)
    {
      goto LABEL_29;
    }
  }

  else if (v47 >= 16)
  {
LABEL_29:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v47, v43);
    if ((v40 & 0x1000000000000000) != 0)
    {
      v40;
      _StringGuts._foreignAppendInPlace(_:)(v39, v40, v41, v42);
      v40;
      v55 = __src;
      v53 = v225;
      v104 = a4;
      v49 = v219;
    }

    else
    {
      v49 = v219;
      if ((v40 & 0x2000000000000000) != 0)
      {
        v40;
        v222 = v39;
        v223 = v40 & 0xFFFFFFFFFFFFFFLL;
        if ((HIBYTE(v40) & 0xF) < v42 || (v42 - v41) < 0)
        {
          goto LABEL_171;
        }

        v40;
        v53 = v225;
        specialized UnsafeMutablePointer.initialize(from:count:)(&v222 + v41, v42 - v41, ((v225 & 0xFFFFFFFFFFFFFFFLL) + (*((v225 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
        __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*((v53 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + v42 - v41, (v40 >> 62) & (*((v53 & 0xFFFFFFFFFFFFFFFLL) + 0x18) < 0));
        v55 = *((v53 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        __src = v55;
      }

      else
      {
        if ((v39 & 0x1000000000000000) != 0)
        {
          v50 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v51 = v39 & 0xFFFFFFFFFFFFLL;
          if ((v39 & 0xFFFFFFFFFFFFLL) < v42)
          {
            goto LABEL_171;
          }
        }

        else
        {
          v50 = _StringObject.sharedUTF8.getter(v39, v40);
          v51 = v207;
          if (v207 < v42)
          {
            goto LABEL_171;
          }
        }

        v40;
        v52 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v41, v42, v50, v51);
        v53 = v225;
        __StringStorage.appendInPlace(_:isASCII:)(v52, v54, v39 < 0);
        v55 = *((v225 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        __src = v55;
        v40;
      }

      v104 = a4;
    }

    v99 = v218;
    v100 = a2;
    goto LABEL_57;
  }

  v40;
  v55 = _StringGuts._convertedToSmall()(v45, v44, v64, v65, v66, v67, v68, v69, v70, v71);
  v73 = v72;
  v40;
  v74._rawBits = v35 & 0xFFFFFFFFFFFF0000 | 1;
  v75._rawBits = v37 & 0xFFFFFFFFFFFF0000 | 1;
  v76._rawBits = _StringGuts.validateScalarRange(_:)(v74, v75, v39, v40)._rawBits;
  if (v76._rawBits < 0x10000)
  {
    v76._rawBits |= 3;
  }

  v78 = Substring.description.getter(v76._rawBits, v77, v39, v40);
  v80 = v79;
  v40;
  v89 = _StringGuts._convertedToSmall()(v78, v80, v81, v82, v83, v84, v85, v86, v87, v88);
  v91 = v90;
  v80;
  v92 = HIBYTE(v73) & 0xF;
  v93 = HIBYTE(v91) & 0xF;
  v94 = v93 + v92;
  if (v93 + v92 >= 0x10)
  {
    goto LABEL_175;
  }

  v40;
  if (v93)
  {
    v95 = 0;
    v96 = 0;
    v97 = 8 * v92;
    v98 = 8 * v93;
    v99 = v218;
    v100 = a2;
    do
    {
      v101 = v91 >> (v95 & 0x38);
      if (v96 < 8)
      {
        v101 = v89 >> v95;
      }

      v102 = (v101 << (v97 & 0x38)) | ((-255 << (v97 & 0x38)) - 1) & v73;
      v103 = (v101 << v97) | ((-255 << v97) - 1) & v55;
      if (v92 <= 7)
      {
        v55 = v103;
      }

      else
      {
        v73 = v102;
      }

      ++v92;
      v97 += 8;
      v95 += 8;
      ++v96;
    }

    while (v98 != v95);
  }

  else
  {
    v99 = v218;
    v100 = a2;
  }

  v44;
  v105 = 0xA000000000000000;
  if (!(v55 & 0x8080808080808080 | v73 & 0x80808080808080))
  {
    v105 = 0xE000000000000000;
  }

  v53 = v105 & 0xFF00000000000000 | (v94 << 56) | v73 & 0xFFFFFFFFFFFFFFLL;
  __src = v55;
  v225 = v53;
  v104 = a4;
  v49 = v219;
LABEL_57:
  v106 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v106 = v55 & 0xFFFFFFFFFFFFLL;
  }

  v215 = v106;
  specialized String.append<A>(contentsOf:)(v221, v104, v56, v57, v58, v59, v60, v61, v62, v63);
  v37 = __src;
  v44 = v225;
  if ((v225 & 0x2000000000000000) != 0)
  {
    v107 = HIBYTE(v225) & 0xF;
  }

  else
  {
    v107 = __src & 0xFFFFFFFFFFFFLL;
  }

  v108._rawBits = v100;
  v41 = specialized Collection.subscript.getter(v108, v99, v49)._rawBits;
  v40 = v110;
  v39 = v111;
  v35 = v109._rawBits;
  v47 = v41 >> 16;
  v42 = v110 >> 16;
  v218 = v107;
  if ((v109._rawBits & 0x1000000000000000) == 0)
  {
    v112 = v42 - v47;
    swift_bridgeObjectRetain_n(v109._rawBits, 2);
    v113 = v107;
    if ((v44 & 0x1000000000000000) == 0)
    {
      goto LABEL_64;
    }

LABEL_161:
    v206 = String.UTF8View._foreignCount()();
    v114 = v206 + v112;
    if (!__OFADD__(v206, v112))
    {
      goto LABEL_65;
    }

LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

LABEL_158:
  swift_bridgeObjectRetain_n(v35, 3);
  v202._rawBits = v41 & 0xFFFFFFFFFFFF0000 | 1;
  v203._rawBits = v40 & 0xFFFFFFFFFFFF0000 | 1;
  v204._rawBits = _StringGuts.validateScalarRange(_:)(v202, v203, v39, v35)._rawBits;
  if (v204._rawBits < 0x10000)
  {
    v204._rawBits |= 3;
  }

  v112 = String.UTF8View.distance(from:to:)(v204, v205);
  v35;
  v113 = v218;
  if ((v44 & 0x1000000000000000) != 0)
  {
    goto LABEL_161;
  }

LABEL_64:
  v114 = v113 + v112;
  if (__OFADD__(v113, v112))
  {
    goto LABEL_163;
  }

LABEL_65:
  if ((v37 & ~v44 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v44 & 0xFFFFFFFFFFFFFFFLL))
  {
    v115 = _StringGuts.nativeUnusedCapacity.getter(v37, v44);
    if (v116)
    {
      goto LABEL_175;
    }

    v117 = (v44 >> 61) & 1;
    if (v115 < v112)
    {
      LOBYTE(v117) = 1;
    }

    if (v114 <= 15 && (v117 & 1) != 0)
    {
      goto LABEL_72;
    }
  }

  else if (v114 < 16)
  {
LABEL_72:
    v35;
    v126 = _StringGuts._convertedToSmall()(v37, v44, v118, v119, v120, v121, v122, v123, v124, v125);
    v128 = v127;
    v35;
    v129._rawBits = v41 & 0xFFFFFFFFFFFF0000 | 1;
    v130._rawBits = v40 & 0xFFFFFFFFFFFF0000 | 1;
    v131._rawBits = _StringGuts.validateScalarRange(_:)(v129, v130, v39, v35)._rawBits;
    if (v131._rawBits < 0x10000)
    {
      v131._rawBits |= 3;
    }

    v133 = Substring.description.getter(v131._rawBits, v132, v39, v35);
    v135 = v134;
    v35;
    v144 = _StringGuts._convertedToSmall()(v133, v135, v136, v137, v138, v139, v140, v141, v142, v143);
    v146 = v145;
    v135;
    v147 = HIBYTE(v128) & 0xF;
    v148 = HIBYTE(v146) & 0xF;
    v149 = v148 + v147;
    if (v148 + v147 < 0x10)
    {
      v35;
      if (v148)
      {
        v150 = 0;
        v151 = 0;
        v152 = 8 * v147;
        v153 = 8 * v148;
        v154 = v215;
        do
        {
          v155 = v146 >> (v150 & 0x38);
          if (v151 < 8)
          {
            v155 = v144 >> v150;
          }

          v156 = (v155 << (v152 & 0x38)) | ((-255 << (v152 & 0x38)) - 1) & v128;
          v157 = (v155 << v152) | ((-255 << v152) - 1) & v126;
          if (v147 <= 7)
          {
            v126 = v157;
          }

          else
          {
            v128 = v156;
          }

          ++v147;
          v152 += 8;
          v150 += 8;
          ++v151;
        }

        while (v153 != v150);
      }

      else
      {
        v154 = v215;
      }

      v219;
      v44;
      v164 = 0xA000000000000000;
      if (!(v126 & 0x8080808080808080 | v128 & 0x80808080808080))
      {
        v164 = 0xE000000000000000;
      }

      __src = v126;
      v225 = v164 & 0xFF00000000000000 | (v149 << 56) | v128 & 0xFFFFFFFFFFFFFFLL;
      goto LABEL_99;
    }

LABEL_175:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v114, v112);
  if ((v35 & 0x1000000000000000) != 0)
  {
    v35;
    _StringGuts._foreignAppendInPlace(_:)(v39, v35, v47, v42);
    v219;
    v35;
    v154 = v215;
  }

  else
  {
    v154 = v215;
    if ((v35 & 0x2000000000000000) != 0)
    {
      v35;
      v222 = v39;
      v223 = v35 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(v35) & 0xF) < v42 || v42 - v47 < 0)
      {
        goto LABEL_171;
      }

      v35;
      v165 = v225 & 0xFFFFFFFFFFFFFFFLL;
      specialized UnsafeMutablePointer.initialize(from:count:)(&v222 + v47, v42 - v47, ((v225 & 0xFFFFFFFFFFFFFFFLL) + (*((v225 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
      __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v165 + 24) & 0xFFFFFFFFFFFFLL) + v42 - v47, (v35 >> 62) & (*(v165 + 24) < 0));
      __src = *(v165 + 24);
      v163 = v219;
    }

    else
    {
      if ((v39 & 0x1000000000000000) != 0)
      {
        v158 = ((v35 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v159 = v39 & 0xFFFFFFFFFFFFLL;
        if ((v39 & 0xFFFFFFFFFFFFLL) < v42)
        {
          goto LABEL_171;
        }
      }

      else
      {
        v158 = _StringObject.sharedUTF8.getter(v39, v35);
        v159 = v208;
        if (v208 < v42)
        {
          goto LABEL_171;
        }
      }

      v35;
      v160 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v47, v42, v158, v159);
      v161 = v225 & 0xFFFFFFFFFFFFFFFLL;
      __StringStorage.appendInPlace(_:isASCII:)(v160, v162, v39 < 0);
      __src = *(v161 + 24);
      v219;
      v163 = v35;
    }

    v163;
  }

LABEL_99:
  v166 = v225;
  *v211 = __src;
  v211[1] = v166;
  return v154;
}

Swift::UInt64 specialized _StringGuts.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, Swift::UInt64 a2)
{
  v3 = v2;
  v7 = *v2;
  v6 = v2[1];
  if ((*v2 & ~v6 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
  {
    __src = 0;
    v169 = 0xE000000000000000;
    v18 = _StringGuts.nativeCapacity.getter(v7, v6);
    if ((v19 & 1) == 0)
    {
      String.reserveCapacity(_:)(v18);
    }

    v20._rawBits = a1;
    v165 = v6;
    v22 = specialized Collection.subscript.getter(v20, v7, v6);
    rawBits = v23;
    v163 = a2;
    v164 = v25;
    v26 = v21;
    v27 = v22 >> 16;
    v28 = v23 >> 16;
    if ((v21 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(v21, 3);
      v151._rawBits = v22 & 0xFFFFFFFFFFFF0000 | 1;
      v152._rawBits = rawBits & 0xFFFFFFFFFFFF0000 | 1;
      v153._rawBits = _StringGuts.validateScalarRange(_:)(v151, v152, v164, v26)._rawBits;
      if (v153._rawBits < 0x10000)
      {
        v153._rawBits |= 3;
      }

      v29 = String.UTF8View.distance(from:to:)(v153, v154);
      v26;
    }

    else
    {
      v29 = v28 - v27;
      swift_bridgeObjectRetain_n(v21, 2);
    }

    v30 = __src;
    v31 = v169;
    v162 = v3;
    v32 = HIBYTE(v169) & 0xF;
    v33 = v32 + v29;
    if (__OFADD__(v32, v29))
    {
      __break(1u);
      goto LABEL_110;
    }

    if ((__src & ~v169 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v169 & 0xFFFFFFFFFFFFFFFLL))
    {
      _StringGuts.nativeUnusedCapacity.getter(__src, v169);
      if (v34)
      {
        goto LABEL_127;
      }

      if (v33 > 15)
      {
LABEL_22:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v33, v29);
        if ((v26 & 0x1000000000000000) != 0)
        {
          v26;
          _StringGuts._foreignAppendInPlace(_:)(v164, v26, v27, v28);
          v26;
          v30 = __src;
          v31 = v169;
        }

        else if ((v26 & 0x2000000000000000) != 0)
        {
          v26;
          v166 = v164;
          v167 = v26 & 0xFFFFFFFFFFFFFFLL;
          if ((HIBYTE(v26) & 0xF) < v28 || v28 - v27 < 0)
          {
            goto LABEL_120;
          }

          v26;
          v31 = v169;
          v77 = v169 & 0xFFFFFFFFFFFFFFFLL;
          specialized UnsafeMutablePointer.initialize(from:count:)(&v166 + v27, v28 - v27, ((v169 & 0xFFFFFFFFFFFFFFFLL) + (*((v169 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
          __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v77 + 24) & 0xFFFFFFFFFFFFLL) + v28 - v27, (v26 >> 62) & (*(v77 + 24) < 0));
          v30 = *(v77 + 24);
          __src = v30;
        }

        else
        {
          if ((v164 & 0x1000000000000000) != 0)
          {
            v35 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v36 = v164 & 0xFFFFFFFFFFFFLL;
            if ((v164 & 0xFFFFFFFFFFFFLL) < v28)
            {
              goto LABEL_120;
            }
          }

          else
          {
            v35 = _StringObject.sharedUTF8.getter(v164, v26);
            v36 = v160;
            if (v160 < v28)
            {
              goto LABEL_120;
            }
          }

          v26;
          v37 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v27, v28, v35, v36);
          v31 = v169;
          __StringStorage.appendInPlace(_:isASCII:)(v37, v38, v164 < 0);
          v30 = *((v169 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          __src = v30;
          v26;
        }

LABEL_46:
        if ((v31 & 0x2000000000000000) != 0)
        {
          v78 = HIBYTE(v31) & 0xF;
        }

        else
        {
          v78 = v30 & 0xFFFFFFFFFFFFLL;
        }

        if (&full type metadata for EmptyCollection<Character> == &full type metadata for String)
        {
          __break(1u);
        }

        else if (&full type metadata for EmptyCollection<Character> != &full type metadata for Substring)
        {
          if (&full type metadata for EmptyCollection<Character> != &full type metadata for [Character])
          {
            v79._rawBits = v163;
            rawBits = specialized Collection.subscript.getter(v79, v7, v165)._rawBits;
            v28 = v81;
            v22 = v82;
            v7 = v80._rawBits;
            v33 = rawBits >> 16;
            v27 = v81 >> 16;
            v164 = v78;
            if ((v80._rawBits & 0x1000000000000000) == 0)
            {
              v83 = v27 - v33;
              swift_bridgeObjectRetain_n(v80._rawBits, 2);
              v84 = v78;
              if ((v31 & 0x1000000000000000) == 0)
              {
                goto LABEL_54;
              }

              goto LABEL_113;
            }

LABEL_110:
            swift_bridgeObjectRetain_n(v7, 3);
            v155._rawBits = rawBits & 0xFFFFFFFFFFFF0000 | 1;
            v156._rawBits = v28 & 0xFFFFFFFFFFFF0000 | 1;
            v157._rawBits = _StringGuts.validateScalarRange(_:)(v155, v156, v22, v7)._rawBits;
            if (v157._rawBits < 0x10000)
            {
              v157._rawBits |= 3;
            }

            v83 = String.UTF8View.distance(from:to:)(v157, v158);
            v7;
            v84 = v164;
            if ((v31 & 0x1000000000000000) == 0)
            {
LABEL_54:
              v85 = v84 + v83;
              if (!__OFADD__(v84, v83))
              {
LABEL_55:
                if ((v30 & ~v31 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v31 & 0xFFFFFFFFFFFFFFFLL))
                {
                  v86 = _StringGuts.nativeUnusedCapacity.getter(v30, v31);
                  if (v87)
                  {
                    goto LABEL_127;
                  }

                  v88 = (v31 >> 61) & 1;
                  if (v86 < v83)
                  {
                    LOBYTE(v88) = 1;
                  }

                  if (v85 <= 15 && (v88 & 1) != 0)
                  {
                    goto LABEL_62;
                  }
                }

                else if (v85 < 16)
                {
LABEL_62:
                  v7;
                  v97 = _StringGuts._convertedToSmall()(v30, v31, v89, v90, v91, v92, v93, v94, v95, v96);
                  v99 = v98;
                  v7;
                  v100._rawBits = rawBits & 0xFFFFFFFFFFFF0000 | 1;
                  v101._rawBits = v28 & 0xFFFFFFFFFFFF0000 | 1;
                  v102._rawBits = _StringGuts.validateScalarRange(_:)(v100, v101, v22, v7)._rawBits;
                  if (v102._rawBits < 0x10000)
                  {
                    v102._rawBits |= 3;
                  }

                  v104 = Substring.description.getter(v102._rawBits, v103, v22, v7);
                  v106 = v105;
                  v7;
                  v115 = _StringGuts._convertedToSmall()(v104, v106, v107, v108, v109, v110, v111, v112, v113, v114);
                  v117 = v116;
                  v106;
                  v118 = HIBYTE(v99) & 0xF;
                  v119 = HIBYTE(v117) & 0xF;
                  v120 = v119 + v118;
                  if (v119 + v118 < 0x10)
                  {
                    v7;
                    if (v119)
                    {
                      v121 = 0;
                      v122 = 0;
                      v123 = 8 * v118;
                      do
                      {
                        v124 = v117 >> (v121 & 0x38);
                        if (v122 < 8)
                        {
                          v124 = v115 >> v121;
                        }

                        v125 = (v124 << (v123 & 0x38)) | ((-255 << (v123 & 0x38)) - 1) & v99;
                        v126 = (v124 << v123) | ((-255 << v123) - 1) & v97;
                        if (v118 <= 7)
                        {
                          v97 = v126;
                        }

                        else
                        {
                          v99 = v125;
                        }

                        ++v118;
                        v123 += 8;
                        v121 += 8;
                        ++v122;
                      }

                      while (8 * v119 != v121);
                    }

                    v165;
                    v31;
                    v127 = 0xA000000000000000;
                    if (!(v97 & 0x8080808080808080 | v99 & 0x80808080808080))
                    {
                      v127 = 0xE000000000000000;
                    }

                    __src = v97;
                    v169 = v127 & 0xFF00000000000000 | (v120 << 56) | v99 & 0xFFFFFFFFFFFFFFLL;
                    v8 = v164;
                    goto LABEL_87;
                  }

LABEL_127:
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v85, v83);
                if ((v7 & 0x1000000000000000) != 0)
                {
                  v7;
                  _StringGuts._foreignAppendInPlace(_:)(v22, v7, v33, v27);
                  v165;
                  v7;
                  v8 = v164;
LABEL_87:
                  v135 = v169;
                  *v162 = __src;
                  v162[1] = v135;
                  return v8;
                }

                v8 = v164;
                if ((v7 & 0x2000000000000000) != 0)
                {
                  v7;
                  v166 = v22;
                  v167 = v7 & 0xFFFFFFFFFFFFFFLL;
                  if ((HIBYTE(v7) & 0xF) >= v27 && v27 - v33 >= 0)
                  {
                    v7;
                    v134 = v169 & 0xFFFFFFFFFFFFFFFLL;
                    specialized UnsafeMutablePointer.initialize(from:count:)(&v166 + v33, v27 - v33, ((v169 & 0xFFFFFFFFFFFFFFFLL) + (*((v169 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
                    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v134 + 24) & 0xFFFFFFFFFFFFLL) + v27 - v33, (v7 >> 62) & (*(v134 + 24) < 0));
                    __src = *(v134 + 24);
                    v133 = v165;
                    goto LABEL_86;
                  }
                }

                else if ((v22 & 0x1000000000000000) != 0)
                {
                  v128 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v129 = v22 & 0xFFFFFFFFFFFFLL;
                  if ((v22 & 0xFFFFFFFFFFFFLL) >= v27)
                  {
LABEL_81:
                    v7;
                    v130 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v33, v27, v128, v129);
                    v131 = v169 & 0xFFFFFFFFFFFFFFFLL;
                    __StringStorage.appendInPlace(_:isASCII:)(v130, v132, v22 < 0);
                    __src = *(v131 + 24);
                    v165;
                    v133 = v7;
LABEL_86:
                    v133;
                    goto LABEL_87;
                  }
                }

                else
                {
                  v128 = _StringObject.sharedUTF8.getter(v22, v7);
                  v129 = v161;
                  if (v161 >= v27)
                  {
                    goto LABEL_81;
                  }
                }

LABEL_120:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

LABEL_115:
              __break(1u);
              goto LABEL_120;
            }

LABEL_113:
            v159 = String.UTF8View._foreignCount()();
            v85 = v159 + v83;
            if (!__OFADD__(v159, v83))
            {
              goto LABEL_55;
            }

            goto LABEL_115;
          }

LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        __break(1u);
        goto LABEL_126;
      }
    }

    else if (v33 >= 16)
    {
      goto LABEL_22;
    }

    v26;
    v30 = _StringGuts._convertedToSmall()(__src, v169, v39, v40, v41, v42, v43, v44, v45, v46);
    v48 = v47;
    v26;
    v49._rawBits = v22 & 0xFFFFFFFFFFFF0000 | 1;
    v50._rawBits = rawBits & 0xFFFFFFFFFFFF0000 | 1;
    v51._rawBits = _StringGuts.validateScalarRange(_:)(v49, v50, v164, v26)._rawBits;
    if (v51._rawBits < 0x10000)
    {
      v51._rawBits |= 3;
    }

    v53 = Substring.description.getter(v51._rawBits, v52, v164, v26);
    v55 = v54;
    v26;
    v64 = _StringGuts._convertedToSmall()(v53, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    v66 = v65;
    v55;
    v67 = HIBYTE(v48) & 0xF;
    v68 = HIBYTE(v66) & 0xF;
    v69 = v68 + v67;
    if (v68 + v67 >= 0x10)
    {
      goto LABEL_127;
    }

    v26;
    if (v68)
    {
      v70 = 0;
      v71 = 0;
      v72 = 8 * v67;
      do
      {
        v73 = v66 >> (v70 & 0x38);
        if (v71 < 8)
        {
          v73 = v64 >> v70;
        }

        v74 = (v73 << (v72 & 0x38)) | ((-255 << (v72 & 0x38)) - 1) & v48;
        v75 = (v73 << v72) | ((-255 << v72) - 1) & v30;
        if (v67 <= 7)
        {
          v30 = v75;
        }

        else
        {
          v48 = v74;
        }

        ++v67;
        v72 += 8;
        v70 += 8;
        ++v71;
      }

      while (8 * v68 != v70);
    }

    v169;
    v76 = 0xA000000000000000;
    if (!(v30 & 0x8080808080808080 | v48 & 0x80808080808080))
    {
      v76 = 0xE000000000000000;
    }

    v31 = v76 & 0xFF00000000000000 | (v69 << 56) | v48 & 0xFFFFFFFFFFFFFFLL;
    __src = v30;
    v169 = v31;
    goto LABEL_46;
  }

  v8 = a1 >> 16;
  v9 = a2 >> 16;
  v10 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v6) & 0xF;
  }

  v11 = v10 - v9 + v8;
  if (v11 >= 16)
  {
    v12 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v13 & 1) != 0 || v12 < v11)
    {
      v14 = _StringGuts.uniqueNativeCapacity.getter();
      if (v15)
      {
        v16 = v2[1];
        if ((v16 & 0x1000000000000000) != 0)
        {
          v17 = String.UTF8View._foreignCount()();
        }

        else if ((v16 & 0x2000000000000000) != 0)
        {
          v17 = HIBYTE(v16) & 0xF;
        }

        else
        {
          v17 = *v2 & 0xFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v17 = 2 * v14;
      }

      v136 = v8;
      if (v17 <= v11)
      {
        v137 = v11;
      }

      else
      {
        v137 = v17;
      }

      v138 = v3[1];
      if ((v138 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignGrow(_:)(v137);
      }

      else
      {
        v139 = *v3;
        if ((v138 & 0x2000000000000000) != 0)
        {
          __src = *v3;
          v169 = v138 & 0xFFFFFFFFFFFFFFLL;
          v143 = HIBYTE(v138) & 0xF | 0xC000000000000000;
          if ((v138 & 0x4000000000000000) == 0)
          {
            v143 = HIBYTE(v138) & 0xF;
          }

          v144 = v143 | 0x3000000000000000;
          v142 = _allocateStringStorage(codeUnitCapacity:)(v137);
          *(v142 + 16) = v145;
          *(v142 + 24) = v144;
          if (v145 < 0)
          {
            *__StringStorage._breadcrumbsAddress.getter() = 0;
            v144 = *(v142 + 24);
          }

          *(v142 + 32 + (v144 & 0xFFFFFFFFFFFFLL)) = 0;
          specialized UnsafeMutablePointer.initialize(from:count:)(&__src, HIBYTE(v138) & 0xF, (v142 + 32));
        }

        else
        {
          if ((v139 & 0x1000000000000000) != 0)
          {
            v140 = ((v138 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v141 = v139 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v140 = _StringObject.sharedUTF8.getter(*v3, v3[1]);
          }

          v142 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v140, v141, v137, v139 < 0);
        }

        v146 = *(v142 + 24);
        v138;
        *v3 = v146;
        v3[1] = v142;
      }

      v8 = v136;
    }
  }

  v147 = v3[1] & 0xFFFFFFFFFFFFFFFLL;
  v148 = (*(v147 + 0x18) & 0xFFFFFFFFFFFFLL) - v9;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v147 + 32 + v9), v148, (v147 + 32 + v8));
  v149 = *(v147 + 24);
  0;
  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v148 + v8, v149 < 0);
  *v3 = *(v147 + 24);
  return v8;
}