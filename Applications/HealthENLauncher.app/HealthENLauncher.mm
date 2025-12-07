Swift::Int sub_1000016BC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100001728(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100001780()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000017F4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100001848(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_100002D0C(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

Swift::Int sub_100001C38(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100001CA8(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100001CFC(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100001D54@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100001D8C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100001E08(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_1000254C8, type metadata accessor for ENTestResultError, &unk_10001934C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100001E74(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_1000254C8, type metadata accessor for ENTestResultError, &unk_10001934C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100001EE0(void *a1, uint64_t a2)
{
  v4 = sub_1000023E4(&qword_1000254C8, type metadata accessor for ENTestResultError, &unk_10001934C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100001F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000023E4(&qword_1000254C8, type metadata accessor for ENTestResultError, &unk_10001934C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

void *sub_100001FEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000202C(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_100025480, type metadata accessor for ENError, &unk_100019194);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100002098(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_100025480, type metadata accessor for ENError, &unk_100019194);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002104(void *a1, uint64_t a2)
{
  v4 = sub_1000023E4(&qword_100025480, type metadata accessor for ENError, &unk_100019194);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000021B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000023E4(&qword_100025480, type metadata accessor for ENError, &unk_100019194);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100002238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100002298(uint64_t a1)
{
  sub_1000023E4(&qword_100025420, type metadata accessor for UIBackgroundTaskIdentifier, &unk_100018DF0);
  sub_1000023E4(&qword_100025428, type metadata accessor for UIBackgroundTaskIdentifier, &unk_100018D90);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000023E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002474(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_1000254D0, type metadata accessor for ENTestResultError, &unk_10001948C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000024E0(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_1000254D0, type metadata accessor for ENTestResultError, &unk_10001948C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000254C(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_1000254C8, type metadata accessor for ENTestResultError, &unk_10001934C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000025B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000023E4(&qword_1000254C8, type metadata accessor for ENTestResultError, &unk_10001934C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000263C(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_100025488, type metadata accessor for ENError, &unk_1000192D4);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000026A8(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_100025488, type metadata accessor for ENError, &unk_1000192D4);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002714(uint64_t a1)
{
  v2 = sub_1000023E4(&qword_100025480, type metadata accessor for ENError, &unk_100019194);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000023E4(&qword_100025480, type metadata accessor for ENError, &unk_100019194);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

void *sub_100002840@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100002C00(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100002C00((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100002C00(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100002C00(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100002C00((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_100002C00(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000070C0(&qword_100025438, &unk_100018E90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_100002D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100003288(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100003288(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100003308(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100003308(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100015BA8(v9, 0), v12 = sub_100003460(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100003460(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100003680(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100003680(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_100003680(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1000036FC(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static ENUIPublicHealthAgencyModel.activeRegion;
  if (static ENUIPublicHealthAgencyModel.activeRegion)
  {
    if (*(static ENUIPublicHealthAgencyModel.activeRegion + direct field offset for ENUIPublicHealthAgencyModel.isAssociatedDomainAllowed) == 1)
    {
      [static ENUIPublicHealthAgencyModel.activeRegion supportsFeatures:2];
      return 1;
    }

    else
    {
      v11 = Logger.launcher.unsafeMutableAddressor();
      (*(v7 + 16))(v9, v11, v6);
      (*(v3 + 16))(v5, a1, v2);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v20 = v14;
        v21 = swift_slowAlloc();
        v22 = v21;
        *v14 = 136315138;
        sub_1000023E4(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        v17 = v16;
        (*(v3 + 8))(v5, v2);
        v18 = sub_100015768(v15, v17, &v22);

        v19 = v20;
        *(v20 + 1) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "URL not enabled: %s", v19, 0xCu);
        sub_100007170(v21);
      }

      else
      {

        (*(v3 + 8))(v5, v2);
      }

      (*(v7 + 8))(v9, v6);
      return 4;
    }
  }

  return result;
}

uint64_t sub_100003A5C(uint64_t a1)
{
  v429 = type metadata accessor for URLQueryItem();
  v422 = *(v429 - 8);
  v2 = __chkstk_darwin(v429);
  v410 = &v392[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __chkstk_darwin(v2);
  v398 = &v392[-v5];
  v6 = __chkstk_darwin(v4);
  v411 = &v392[-v7];
  v8 = __chkstk_darwin(v6);
  v401 = &v392[-v9];
  v10 = __chkstk_darwin(v8);
  v412 = &v392[-v11];
  v12 = __chkstk_darwin(v10);
  v400 = &v392[-v13];
  v14 = __chkstk_darwin(v12);
  v428 = &v392[-v15];
  __chkstk_darwin(v14);
  v416 = &v392[-v16];
  v17 = type metadata accessor for URL();
  v438 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v392[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v18);
  v430 = &v392[-v22];
  v23 = __chkstk_darwin(v21);
  countAndFlagsBits = &v392[-v24];
  v25 = __chkstk_darwin(v23);
  v405 = &v392[-v26];
  v27 = __chkstk_darwin(v25);
  v407 = &v392[-v28];
  v29 = __chkstk_darwin(v27);
  v426 = &v392[-v30];
  v31 = __chkstk_darwin(v29);
  v418 = &v392[-v32];
  v33 = __chkstk_darwin(v31);
  v423 = &v392[-v34];
  v35 = __chkstk_darwin(v33);
  v414 = &v392[-v36];
  v37 = __chkstk_darwin(v35);
  v419 = &v392[-v38];
  v39 = __chkstk_darwin(v37);
  v432 = &v392[-v40];
  __chkstk_darwin(v39);
  v431 = &v392[-v41];
  v42 = type metadata accessor for Logger();
  v43 = *(v42 - 8);
  v44 = __chkstk_darwin(v42);
  v437 = &v392[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = __chkstk_darwin(v44);
  v48 = &v392[-v47];
  v49 = __chkstk_darwin(v46);
  object = &v392[-v50];
  v51 = __chkstk_darwin(v49);
  v404 = &v392[-v52];
  v53 = __chkstk_darwin(v51);
  v406 = &v392[-v54];
  v55 = __chkstk_darwin(v53);
  v409 = &v392[-v56];
  v57 = __chkstk_darwin(v55);
  v397 = &v392[-v58];
  v59 = __chkstk_darwin(v57);
  v399 = &v392[-v60];
  v61 = __chkstk_darwin(v59);
  v408 = &v392[-v62];
  v63 = __chkstk_darwin(v61);
  v403 = &v392[-v64];
  v65 = __chkstk_darwin(v63);
  v402 = &v392[-v66];
  v67 = __chkstk_darwin(v65);
  v413 = &v392[-v68];
  v69 = __chkstk_darwin(v67);
  v417 = &v392[-v70];
  v71 = __chkstk_darwin(v69);
  v433 = &v392[-v72];
  v73 = __chkstk_darwin(v71);
  v415 = &v392[-v74];
  v75 = __chkstk_darwin(v73);
  v420 = &v392[-v76];
  v77 = __chkstk_darwin(v75);
  v421 = &v392[-v78];
  __chkstk_darwin(v77);
  v435 = &v392[-v79];
  v80 = sub_1000070C0(&qword_100025AA0, &unk_100018E80);
  __chkstk_darwin(v80 - 8);
  v82 = &v392[-v81];
  v83 = type metadata accessor for URLComponents();
  v84 = *(v83 - 8);
  __chkstk_darwin(v83);
  v86 = &v392[-((v85 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v84 + 48))(v82, 1, v83) == 1)
  {
    sub_100007108(v82);
    v87 = Logger.launcher.unsafeMutableAddressor();
    (*(v43 + 16))(v437, v87, v42);
    v88 = v438;
    (*(v438 + 16))(v20, a1, v17);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    v91 = v42;
    v92 = v43;
    if (os_log_type_enabled(v89, v90))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v440 = v94;
      *v93 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v17;
      v98 = v97;
      (*(v88 + 8))(v20, v96);
      v99 = sub_100015768(v95, v98, &v440);

      *(v93 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v89, v90, "Could not get components from url: %s", v93, 0xCu);
      sub_100007170(v94);
    }

    else
    {

      (*(v88 + 8))(v20, v17);
    }

    (*(v92 + 8))(v437, v91);
    goto LABEL_17;
  }

  v425 = a1;
  v436 = v43;
  v437 = v17;
  v434 = v42;
  (*(v84 + 32))(v86, v82, v83);
  URLComponents.scheme.getter();
  v396 = v84;
  v395 = v83;
  if (!v100)
  {
    v109 = Logger.launcher.unsafeMutableAddressor();
    v110 = v436;
    v111 = v434;
    (*(v436 + 16))(v48, v109, v434);
    v113 = v437;
    v112 = v438;
    v114 = v430;
    (*(v438 + 16))(v430, v425, v437);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v115, v116))
    {

      (*(v112 + 8))(v114, v113);
      (*(v110 + 8))(v48, v111);
      (*(v396 + 8))(v86, v395);
      goto LABEL_17;
    }

    v117 = v114;
    v118 = swift_slowAlloc();
    v433 = v118;
    v435 = swift_slowAlloc();
    v440 = v435;
    *v118 = 136315138;
    sub_1000023E4(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v119 = v117;
    v120 = dispatch thunk of CustomStringConvertible.description.getter();
    v394 = v86;
    v122 = v121;
    (*(v112 + 8))(v119, v113);
    v123 = sub_100015768(v120, v122, &v440);

    v124 = v433;
    *(v433 + 4) = v123;
    _os_log_impl(&_mh_execute_header, v115, v116, "Could not get scheme from components: %s", v124, 0xCu);
    sub_100007170(v435);

    (*(v110 + 8))(v48, v111);
    goto LABEL_13;
  }

  v101 = String.lowercased()();

  URLComponents.host.getter();
  v102 = v436;
  v394 = v86;
  if (!v103)
  {

    v125 = Logger.launcher.unsafeMutableAddressor();
    v126 = object;
    v127 = v434;
    (*(v102 + 16))(object, v125, v434);
    v128 = v437;
    v129 = v438;
    v130 = countAndFlagsBits;
    (*(v438 + 16))(countAndFlagsBits, v425, v437);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = v102;
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v440 = v135;
      *v134 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v136 = dispatch thunk of CustomStringConvertible.description.getter();
      v137 = v130;
      v139 = v138;
      (*(v129 + 8))(v137, v128);
      v140 = sub_100015768(v136, v139, &v440);

      *(v134 + 4) = v140;
      _os_log_impl(&_mh_execute_header, v131, v132, "Could not get host from components: %s", v134, 0xCu);
      sub_100007170(v135);

      (*(v133 + 8))(object, v127);
    }

    else
    {

      (*(v129 + 8))(v130, v128);
      (*(v102 + 8))(v126, v127);
    }

LABEL_13:
    (*(v396 + 8))(v394, v395);
    goto LABEL_17;
  }

  v104 = String.lowercased()();
  countAndFlagsBits = v104._countAndFlagsBits;
  object = v104._object;

  if (!static ENUIPublicHealthAgencyModel.activeRegion)
  {
    v108 = 1;
    LODWORD(v430) = 1;
    v107 = v434;
    goto LABEL_20;
  }

  LODWORD(v430) = *(static ENUIPublicHealthAgencyModel.activeRegion + direct field offset for ENUIPublicHealthAgencyModel.isAssociatedDomainAllowed);
  v105 = *((swift_isaMask & *static ENUIPublicHealthAgencyModel.activeRegion) + 0x160);
  v106 = static ENUIPublicHealthAgencyModel.activeRegion;
  LOBYTE(v105) = v105();

  v107 = v434;
  if (v105)
  {
    v108 = 1;
LABEL_20:
    v143 = v437;
    v144 = v431;
    v145 = v432;
    goto LABEL_26;
  }

  v144 = v431;
  if (static ENUIPublicHealthAgencyModel.activeRegion)
  {
    v108 = *(static ENUIPublicHealthAgencyModel.activeRegion + direct field offset for ENUIPublicHealthAgencyModel.isPreauthorizationDomainAllowed);
  }

  else
  {
    v108 = 1;
  }

  v143 = v437;
  v145 = v432;
LABEL_26:
  v393 = v108;
  if ((v101._countAndFlagsBits != 7564901 || v101._object != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v101._countAndFlagsBits == 0x7370747468 && v101._object == 0xE500000000000000)
    {

      v194 = v421;
    }

    else
    {
      v202 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v194 = v421;
      if ((v202 & 1) != 0 || v101._countAndFlagsBits == 1886680168 && v101._object == 0xE400000000000000)
      {
      }

      else
      {
        v258 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v258 & 1) == 0)
        {

          Logger.launcher.unsafeMutableAddressor();
          v259 = v436;
          v260 = v107;
          v261 = v415;
          (*(v436 + 16))();
          v262 = v438;
          v263 = v414;
          (*(v438 + 16))(v414, v425, v143);
          v264 = Logger.logObject.getter();
          v265 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v264, v265))
          {
            v266 = v259;
            v267 = swift_slowAlloc();
            v268 = swift_slowAlloc();
            v440 = v268;
            *v267 = 136315138;
            sub_1000023E4(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v269 = dispatch thunk of CustomStringConvertible.description.getter();
            v270 = v263;
            v272 = v271;
            (*(v262 + 8))(v270, v143);
            v273 = sub_100015768(v269, v272, &v440);

            *(v267 + 4) = v273;
            _os_log_impl(&_mh_execute_header, v264, v265, "URL not supported: %s", v267, 0xCu);
            sub_100007170(v268);

            (*(v266 + 8))(v415, v260);
            (*(v396 + 8))(v394, v395);
          }

          else
          {

            (*(v262 + 8))(v263, v143);
            (*(v259 + 8))(v261, v107);
            (*(v396 + 8))(v86, v395);
          }

LABEL_115:
          LOBYTE(v141) = 1;
          result = 2;
          goto LABEL_18;
        }
      }
    }

    v203 = Logger.launcher.unsafeMutableAddressor();
    v148 = *(v436 + 16);
    v435 = v203;
    v148(v194);
    v204 = v438;
    v432 = *(v438 + 16);
    (v432)(v145, v425, v143);
    v205 = Logger.logObject.getter();
    v206 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v205, v206))
    {
      v207 = swift_slowAlloc();
      v415 = v148;
      v208 = v207;
      v209 = v145;
      v210 = swift_slowAlloc();
      v440 = v210;
      *v208 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v211 = dispatch thunk of CustomStringConvertible.description.getter();
      v212 = v143;
      v214 = v213;
      v215 = *(v204 + 8);
      (v215)(v209, v212);
      v216 = sub_100015768(v211, v214, &v440);

      *(v208 + 4) = v216;
      _os_log_impl(&_mh_execute_header, v205, v206, "Received associated domain link: %s", v208, 0xCu);
      sub_100007170(v210);

      v148 = v415;

      v217 = *(v436 + 8);
      v218 = v421;
    }

    else
    {

      v215 = *(v204 + 8);
      (v215)(v145, v143);
      v217 = *(v436 + 8);
      v218 = v194;
    }

    v219 = v217;
    v220 = (v217)(v218, v434);
    v221 = v419;
    v150 = v425;
    v222 = v420;
    if (!v430)
    {

      v227 = v434;
      (v148)(v222, v435, v434);
      v228 = v437;
      (v432)(v221, v150, v437);
      v229 = Logger.logObject.getter();
      v230 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v229, v230))
      {
        v231 = swift_slowAlloc();
        v232 = swift_slowAlloc();
        v440 = v232;
        *v231 = 136315138;
        sub_1000023E4(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v233 = dispatch thunk of CustomStringConvertible.description.getter();
        v234 = v221;
        v236 = v235;
        (v215)(v234, v228);
        v237 = sub_100015768(v233, v236, &v440);

        *(v231 + 4) = v237;
        _os_log_impl(&_mh_execute_header, v229, v230, "Associated URL support not enabled: %s", v231, 0xCu);
        sub_100007170(v232);

        v238 = v420;
      }

      else
      {

        (v215)(v221, v228);
        v238 = v222;
      }

      (v219)(v238, v227);
      (*(v396 + 8))(v394, v395);
      goto LABEL_128;
    }

    v431 = v215;
    v440 = 46;
    v441 = 0xE100000000000000;
    __chkstk_darwin(v220);
    *&v392[-16] = &v440;
    v223 = object;

    v163 = countAndFlagsBits;
    v224 = v223;
    v161 = 0;
    if (!*(sub_100002840(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000071BC, &v392[-32], countAndFlagsBits, v224, v225) + 2))
    {

      v86 = v394;
      v160 = v434;
      v159 = v219;
      v162 = object;
      goto LABEL_33;
    }

    v421 = 0;
    v415 = v148;

    v226 = v434;
    v159 = v219;
    v162 = object;
    if (v163 == 1868770919 && object == 0xE400000000000000)
    {

      v162 = 0xE400000000000000;
      v163 = 1868770919;
      v86 = v394;
    }

    else
    {
      v257 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v86 = v394;
      if (v257)
      {

        v148 = v415;
        v163 = countAndFlagsBits;
        v150 = v425;
LABEL_108:
        v160 = v226;
        v161 = v421;
        goto LABEL_33;
      }

      v163 = static String._fromSubstring(_:)();
      v162 = v275;
    }

    v148 = v415;
    v150 = v425;
    goto LABEL_108;
  }

  v146 = Logger.launcher.unsafeMutableAddressor();
  v147 = v436;
  v148 = *(v436 + 16);
  (v148)(v435, v146, v107);
  v149 = v438;
  v150 = v425;
  v432 = *(v438 + 16);
  (v432)(v144, v425, v143);
  v151 = v144;
  v152 = Logger.logObject.getter();
  v153 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    v421 = swift_slowAlloc();
    v440 = v421;
    *v154 = 136315138;
    sub_1000023E4(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v155 = dispatch thunk of CustomStringConvertible.description.getter();
    v415 = v148;
    v157 = v156;
    v431 = *(v149 + 8);
    (v431)(v151, v143);
    v158 = sub_100015768(v155, v157, &v440);
    v86 = v394;
    v148 = v415;

    *(v154 + 4) = v158;
    _os_log_impl(&_mh_execute_header, v152, v153, "Received deep link: %s", v154, 0xCu);
    sub_100007170(v421);

    v150 = v425;
  }

  else
  {

    v431 = *(v149 + 8);
    (v431)(v144, v143);
  }

  v159 = *(v147 + 8);
  v160 = v434;
  (v159)(v435, v434);
  v161 = 0;
  v162 = object;
  v163 = countAndFlagsBits;
LABEL_33:
  v164 = v426;
  if (v163 == 1868770919 && v162 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v165 = v160;

    v166 = URL.pathComponents.getter();
    v167 = v433;
    if (v430 && *(v166 + 16))
    {
      v168 = v166;
      URL.path.getter();
      v169._countAndFlagsBits = 1936614703;
      v169._object = 0xE400000000000000;
      v170 = String.hasPrefix(_:)(v169);

      if (v170)
      {
        URL.path.getter();
        v171._countAndFlagsBits = 0x2F722F736E652FLL;
        v171._object = 0xE700000000000000;
        v172 = String.hasPrefix(_:)(v171);

        if (v172 && *(v168 + 16) >= 4uLL)
        {
          v274 = *(v168 + 80);

          (*(v396 + 8))(v394, v395);
          result = v274;
LABEL_113:
          LOBYTE(v141) = 0;
          goto LABEL_18;
        }

        URL.path.getter();
        v173._object = 0x80000001000198E0;
        v173._countAndFlagsBits = 0xD000000000000011;
        v174 = String.hasPrefix(_:)(v173);

        v175 = v396;
        v176 = v395;
        v177 = v394;
        if (v174)
        {
          v178 = static ENUIPublicHealthAgencyModel.activeRegion;
          v179 = *(v396 + 8);
          v180 = static ENUIPublicHealthAgencyModel.activeRegion;
          v179(v177, v176);
          if (!v178)
          {
            goto LABEL_44;
          }

          if (v393)
          {
            goto LABEL_44;
          }

LABEL_17:
          LOBYTE(v141) = 1;
          result = 3;
LABEL_18:
          LOBYTE(v440) = v141;
          return result;
        }

        URL.path.getter();
        v253._countAndFlagsBits = 0x7065722F736E652FLL;
        v253._object = 0xEB0000000074726FLL;
        v254 = String.hasPrefix(_:)(v253);

        if (v254)
        {
          v255 = sub_1000036FC(v150);
          v141 = (v256 >> 40) & 1;
          (*(v175 + 8))(v177, v176);
          result = v255;
          goto LABEL_18;
        }

        (*(v175 + 8))(v177, v176);
LABEL_112:
        result = 0;
        goto LABEL_113;
      }

      v435 = v159;

      v167 = v433;
    }

    else
    {
      v435 = v159;
    }

    v181 = Logger.launcher.unsafeMutableAddressor();
    (v148)(v167, v181, v165);
    v182 = v437;
    v183 = v423;
    (v432)(v423, v150, v437);
    v184 = Logger.logObject.getter();
    v185 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v440 = v187;
      *v186 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v188 = dispatch thunk of CustomStringConvertible.description.getter();
      v189 = v183;
      v191 = v190;
      (v431)(v189, v182);
      v192 = sub_100015768(v188, v191, &v440);

      *(v186 + 4) = v192;
      _os_log_impl(&_mh_execute_header, v184, v185, "URL not supported: %s", v186, 0xCu);
      sub_100007170(v187);

      v193 = v433;
    }

    else
    {

      (v431)(v183, v182);
      v193 = v167;
    }

    (v435)(v193, v165);
    (*(v396 + 8))(v394, v395);
    if (v430)
    {
      result = 4;
    }

    else
    {
      result = 3;
    }

    LOBYTE(v141) = 1;
    goto LABEL_18;
  }

  if (v163 == 111 && v162 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v163 == 0x696472616F626E6FLL && v162 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v163 == 0x6472616F626E6FLL && v162 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v164 = v418;
    if (v430)
    {
      v195 = v86;
      v196 = URLComponents.queryItems.getter();
      if (v196)
      {
        v197 = v196;
        v198 = *(v196 + 16);
        if (v198)
        {
          v199 = 0;
          v148 = (v422 + 8);
          while (1)
          {
            if (v199 >= *(v197 + 16))
            {
              __break(1u);
              goto LABEL_132;
            }

            (*(v422 + 16))(v428, v197 + ((*(v422 + 80) + 32) & ~*(v422 + 80)) + *(v422 + 72) * v199, v429);
            v200 = URLQueryItem.name.getter();
            v195 = v201;
            if (v200 == 114 && v201 == 0xE100000000000000)
            {
              break;
            }

            v161 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v161)
            {
              goto LABEL_110;
            }

            ++v199;
            (*v148)(v428, v429);
            if (v198 == v199)
            {
              goto LABEL_74;
            }
          }

LABEL_110:

          v276 = v422 + 32;
          v277 = v416;
          v278 = v429;
          (*(v422 + 32))(v416, v428, v429);
          v279 = URLQueryItem.value.getter();
          v281 = v280;
          (*(v276 - 24))(v277, v278);
          (*(v396 + 8))(v86, v395);
          if (!v281)
          {
            goto LABEL_112;
          }

          LOBYTE(v141) = 0;
          result = v279;
          goto LABEL_18;
        }

LABEL_74:
        (*(v396 + 8))(v86, v395);
      }

      else
      {
        (*(v396 + 8))(v86, v395);
      }

      goto LABEL_112;
    }

    v435 = v159;
    v239 = Logger.launcher.unsafeMutableAddressor();
    v240 = v417;
    (v148)(v417, v239, v160);
    v241 = v437;
    (v432)(v164, v150, v437);
    v242 = v160;
    v243 = Logger.logObject.getter();
    v244 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v243, v244))
    {
      v245 = swift_slowAlloc();
      v246 = swift_slowAlloc();
      v440 = v246;
      *v245 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v247 = dispatch thunk of CustomStringConvertible.description.getter();
      v249 = v248;
      (v431)(v164, v241);
      v250 = sub_100015768(v247, v249, &v440);

      *(v245 + 4) = v250;
      _os_log_impl(&_mh_execute_header, v243, v244, "URL not enabled: %s", v245, 0xCu);
      sub_100007170(v246);

      v251 = &v443;
LABEL_91:
      v252 = *(v251 - 32);
LABEL_127:
      (v435)(v252, v242);
      (*(v396 + 8))(v394, v395);
LABEL_128:
      LOBYTE(v141) = 1;
      result = 4;
      goto LABEL_18;
    }

    goto LABEL_126;
  }

  if (v163 == 97 && v162 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v163 == 0x7A69726F68747561 && v162 == 0xE900000000000065 || (v421 = v161, v161 = v163, v195 = v162, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    goto LABEL_122;
  }

LABEL_132:
  v290 = v148;
  v435 = v159;
  if (v161 == 0x6F68747561657270 && v195 == 0xEC000000657A6972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v86 = v394;
    v160 = v434;
    v159 = v435;
    v150 = v425;
    v164 = v426;
LABEL_122:
    if ((v430 & v393) == 1)
    {
      (*(v396 + 8))(v86, v395);
LABEL_44:
      result = 0;
      LOBYTE(v141) = 0;
      goto LABEL_18;
    }

    v435 = v159;
    v282 = Logger.launcher.unsafeMutableAddressor();
    v240 = v413;
    (v148)(v413, v282, v160);
    v241 = v437;
    (v432)(v164, v150, v437);
    v242 = v160;
    v243 = Logger.logObject.getter();
    v283 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v243, v283))
    {
      v284 = swift_slowAlloc();
      v285 = swift_slowAlloc();
      v440 = v285;
      *v284 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v286 = dispatch thunk of CustomStringConvertible.description.getter();
      v288 = v287;
      (v431)(v164, v241);
      v289 = sub_100015768(v286, v288, &v440);

      *(v284 + 4) = v289;
      _os_log_impl(&_mh_execute_header, v243, v283, "URL not enabled: %s", v284, 0xCu);
      sub_100007170(v285);

      v251 = &v442;
      goto LABEL_91;
    }

LABEL_126:

    (v431)(v164, v241);
    v252 = v240;
    goto LABEL_127;
  }

  if (v161 == 0x74726F706572 && v195 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v291 = sub_1000036FC(v425);
    v141 = (v292 >> 40) & 1;
    (*(v396 + 8))(v394, v395);
    result = v291;
    goto LABEL_18;
  }

  if (v161 == 118 && v195 == 0xE100000000000000)
  {

    goto LABEL_144;
  }

  v293 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v293 & 1) == 0)
  {
    v310 = Logger.launcher.unsafeMutableAddressor();
    (v148)(v404, v310, v434);
    (v432)(v405, v425, v437);
    v311 = Logger.logObject.getter();
    v312 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v311, v312))
    {
      v313 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      v440 = v314;
      *v313 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v315 = v405;
      v316 = v437;
      v317 = dispatch thunk of CustomStringConvertible.description.getter();
      v319 = v318;
      (v431)(v315, v316);
      v320 = sub_100015768(v317, v319, &v440);

      *(v313 + 4) = v320;
      _os_log_impl(&_mh_execute_header, v311, v312, "Unknown URL %s", v313, 0xCu);
      sub_100007170(v314);
    }

    else
    {

      (v431)(v405, v437);
    }

    (v435)(v404, v434);
    (*(v396 + 8))(v394, v395);
    goto LABEL_115;
  }

LABEL_144:
  result = URLComponents.queryItems.getter();
  if (!result)
  {
    v299 = Logger.testVerification.unsafeMutableAddressor();
    (v148)(v406, v299, v434);
    (v432)(v407, v425, v437);
    v300 = Logger.logObject.getter();
    v301 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v300, v301))
    {
      v302 = swift_slowAlloc();
      v303 = swift_slowAlloc();
      v440 = v303;
      *v302 = 136315138;
      sub_1000023E4(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v304 = v407;
      v305 = v437;
      v306 = dispatch thunk of CustomStringConvertible.description.getter();
      v308 = v307;
      (v431)(v304, v305);
      v309 = sub_100015768(v306, v308, &v440);

      *(v302 + 4) = v309;
      _os_log_impl(&_mh_execute_header, v300, v301, "Could not get query items from url: %s", v302, 0xCu);
      sub_100007170(v303);
    }

    else
    {

      (v431)(v407, v437);
    }

    (v435)(v406, v434);
    goto LABEL_13;
  }

  v294 = result;
  v438 = *(result + 16);
  if (v438)
  {
    v295 = 0;
    v296 = (v422 + 8);
    while (1)
    {
      if (v295 >= *(v294 + 16))
      {
        __break(1u);
        goto LABEL_206;
      }

      (*(v422 + 16))(v412, v294 + ((*(v422 + 80) + 32) & ~*(v422 + 80)) + *(v422 + 72) * v295, v429);
      if (URLQueryItem.name.getter() == 114 && v297 == 0xE100000000000000)
      {
        break;
      }

      v298 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v298)
      {
        goto LABEL_162;
      }

      ++v295;
      result = (*v296)(v412, v429);
      if (v438 == v295)
      {
        goto LABEL_168;
      }
    }

LABEL_162:
    v321 = v422 + 32;
    v322 = v400;
    v323 = v429;
    (*(v422 + 32))(v400, v412, v429);
    v324 = URLQueryItem.value.getter();
    v326 = v325;
    (*(v321 - 24))(v322, v323);
    if (!v326)
    {
      goto LABEL_168;
    }

    v327 = Logger.testVerification.unsafeMutableAddressor();
    v290(v402, v327, v434);

    v328 = Logger.logObject.getter();
    v329 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v328, v329))
    {
      v330 = swift_slowAlloc();
      v331 = swift_slowAlloc();
      v440 = v331;
      *v330 = 136315138;
      *(v330 + 4) = sub_100015768(v324, v326, &v440);
      _os_log_impl(&_mh_execute_header, v328, v329, "Recieved region string %s", v330, 0xCu);
      sub_100007170(v331);
    }

    (v435)(v402, v434);
    v332 = String._bridgeToObjectiveC()();

    v432 = [objc_opt_self() regionWithCode:v332];

    v290(v403, v327, v434);
    v333 = Logger.logObject.getter();
    v334 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v333, v334))
    {
      v335 = swift_slowAlloc();
      v336 = swift_slowAlloc();
      v439 = v336;
      *v335 = 136315138;
      if (v432)
      {
        v337 = [v432 description];
        v338 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v340 = v339;
      }

      else
      {
        v338 = 0;
        v340 = 0;
      }

      v440 = v338;
      v441 = v340;
      sub_1000070C0(&qword_100025430, &qword_100019860);
      v345 = String.init<A>(describing:)();
      v347 = sub_100015768(v345, v346, &v439);

      *(v335 + 4) = v347;
      _os_log_impl(&_mh_execute_header, v333, v334, "Got ENRegion %s", v335, 0xCu);
      sub_100007170(v336);
    }

    result = (v435)(v403, v434);
  }

  else
  {
LABEL_168:
    v341 = Logger.testVerification.unsafeMutableAddressor();
    v290(v408, v341, v434);
    v342 = Logger.logObject.getter();
    v343 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v342, v343))
    {
      v344 = swift_slowAlloc();
      *v344 = 0;
      _os_log_impl(&_mh_execute_header, v342, v343, "Did not receive region string", v344, 2u);
    }

    result = (v435)(v408, v434);
    v432 = 0;
  }

  if (!v438)
  {
LABEL_191:
    v364 = Logger.testVerification.unsafeMutableAddressor();
    v290(v409, v364, v434);

    v365 = Logger.logObject.getter();
    v366 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v365, v366))
    {
      v367 = swift_slowAlloc();
      v368 = swift_slowAlloc();
      v440 = v368;
      *v367 = 136315138;
      v369 = Array.description.getter();
      v371 = v370;

      v372 = sub_100015768(v369, v371, &v440);

      *(v367 + 4) = v372;
      _os_log_impl(&_mh_execute_header, v365, v366, "Did not receive a verification code in URL: %s", v367, 0xCu);
      sub_100007170(v368);
    }

    else
    {
    }

    (v435)(v409, v434);
    (*(v396 + 8))(v394, v395);

    goto LABEL_17;
  }

  v348 = 0;
  v437 = (v422 + 16);
  v349 = (v422 + 8);
  while (v348 < *(v294 + 16))
  {
    v350 = (*(v422 + 80) + 32) & ~*(v422 + 80);
    v351 = *(v422 + 72);
    v352 = *(v422 + 16);
    v352(v411, v294 + v350 + v351 * v348, v429);
    if (URLQueryItem.name.getter() == 99 && v353 == 0xE100000000000000)
    {

LABEL_183:
      v355 = v422 + 32;
      v356 = v401;
      v357 = v429;
      v428 = *(v422 + 32);
      (v428)(v401, v411, v429);
      v431 = URLQueryItem.value.getter();
      v359 = v358;
      v422 = v355;
      v433 = *(v355 - 24);
      result = (v433)(v356, v357);
      v430 = v359;
      if (v359)
      {
        v360 = 0;
        v361 = v294 + v350;
        while (1)
        {
          if (v360 >= *(v294 + 16))
          {
            goto LABEL_207;
          }

          v352(v410, v361, v429);
          if (URLQueryItem.name.getter() == 116 && v362 == 0xE100000000000000)
          {
            break;
          }

          v363 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v363)
          {
            goto LABEL_196;
          }

          ++v360;
          result = (v433)(v410, v429);
          v361 += v351;
          if (v438 == v360)
          {
            (*(v396 + 8))(v394, v395);

            goto LABEL_204;
          }
        }

LABEL_196:

        v373 = v398;
        v374 = v429;
        (v428)(v398, v410, v429);
        v375 = URLQueryItem.value.getter();
        v377 = v376;
        (v433)(v373, v374);
        if (!v377)
        {
          goto LABEL_203;
        }

        v378 = Logger.testVerification.unsafeMutableAddressor();
        v290(v399, v378, v434);

        v379 = Logger.logObject.getter();
        v380 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v379, v380))
        {
          v381 = swift_slowAlloc();
          v382 = swift_slowAlloc();
          v440 = v382;
          *v381 = 136315138;
          *(v381 + 4) = sub_100015768(v375, v377, &v440);
          _os_log_impl(&_mh_execute_header, v379, v380, "Got report type string: %s", v381, 0xCu);
          sub_100007170(v382);
        }

        (v435)(v399, v434);
        v383 = sub_100001848(v375, v377);
        if ((v383 & 0x100000000) != 0)
        {
LABEL_203:
          (*(v396 + 8))(v394, v395);
        }

        else
        {
          v384 = v383;
          v290(v397, v378, v434);
          v385 = Logger.logObject.getter();
          v386 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v385, v386))
          {
            v387 = swift_slowAlloc();
            v388 = swift_slowAlloc();
            v440 = v388;
            *v387 = 136315138;
            sub_100007214(v384);
            v389 = String.init(cString:)();
            v391 = sub_100015768(v389, v390, &v440);

            *(v387 + 4) = v391;
            _os_log_impl(&_mh_execute_header, v385, v386, "Got report type: %s", v387, 0xCu);
            sub_100007170(v388);
          }

          (v435)(v397, v434);
          (*(v396 + 8))(v394, v395);
        }

LABEL_204:
        LOBYTE(v141) = 0;
        result = v431;
        goto LABEL_18;
      }

      goto LABEL_191;
    }

    v354 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v354)
    {
      goto LABEL_183;
    }

    ++v348;
    result = (*v349)(v411, v429);
    if (v438 == v348)
    {
      goto LABEL_191;
    }
  }

LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
  return result;
}

uint64_t sub_1000070C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007108(uint64_t a1)
{
  v2 = sub_1000070C0(&qword_100025AA0, &unk_100018E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007170(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000071BC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

const char *sub_100007214(unsigned int a1)
{
  if (a1 > 5)
  {
    return "?";
  }

  else
  {
    return off_100020E70[a1];
  }
}

uint64_t getEnumTagSinglePayload for URLParser.URLParserError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for URLParser.URLParserError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000073B8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1000073D0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for URLParser.PreAuthorizationType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for URLParser.PreAuthorizationType(_WORD *result, int a2, int a3)
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

unint64_t sub_100007518()
{
  result = qword_100025460;
  if (!qword_100025460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025460);
  }

  return result;
}

unint64_t sub_10000780C()
{
  result = qword_1000254A8;
  if (!qword_1000254A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000254A8);
  }

  return result;
}

void sub_100007994(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for URLParser.UserReportErrorType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for URLParser.UserReportErrorType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100007D40()
{
  result = qword_100025518;
  if (!qword_100025518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025518);
  }

  return result;
}

id sub_100007F14(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100008068(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = type metadata accessor for AppDelegate();
  v6 = NSStringFromClass(v5);
  UIApplicationMain(argc, argv, 0, v6);

  return 0;
}

void sub_10000811C(void *a1, char a2)
{
  if (a1)
  {
    v3 = qword_100025330;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = sub_100009AC8(v4);
    v7 = v6;
    swift_endAccess();
    if (v5)
    {
      v8[0] = a2 & 3;
      v5(v8);
      sub_100008F5C(v5, v7);
    }
  }
}

unint64_t sub_1000081E8()
{
  result = sub_100016364(&_swiftEmptyArrayStorage);
  qword_100025640 = result;
  return result;
}

uint64_t sub_100008210()
{
  type metadata accessor for ErrorDialog();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  qword_100026BE0 = result;
  return result;
}

void sub_100008240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v71 = a8;
  v72 = a5;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  __chkstk_darwin(v22);
  if (*(v10 + 16))
  {
    v25 = Logger.testVerification.unsafeMutableAddressor();
    (*(v18 + 16))(v21, v25, v17);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error dialog is already visible. Don't show a second one.", v28, 2u);
    }

    (*(v18 + 8))(v21, v17);
    return;
  }

  v66 = a7;
  v70 = v24;
  v65 = &v64 - v23;
  v69 = v10;
  v67 = v18;
  v68 = v17;
  error = 0;
  sub_1000070C0(&qword_100025730, &unk_100019680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100019630;
  *(inited + 32) = kCFUserNotificationAlertHeaderKey;
  *(inited + 56) = kCFUserNotificationAlertMessageKey;
  *(inited + 64) = a3;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 72) = a4;
  *(inited + 80) = kCFUserNotificationDefaultButtonTitleKey;
  *(inited + 88) = v72;
  *(inited + 96) = a6;
  v30 = kCFUserNotificationDefaultButtonTitleKey;

  v31 = kCFUserNotificationAlertHeaderKey;
  v32 = kCFUserNotificationAlertMessageKey;
  v33 = v71;
  v34 = sub_100016474(inited);
  swift_setDeallocating();
  sub_1000070C0(&qword_100025738, "Z-");
  swift_arrayDestroy();
  v74 = v34;
  if (v33)
  {

    v35 = kCFUserNotificationAlternateButtonTitleKey;
    sub_100008990(v66, v33, kCFUserNotificationAlternateButtonTitleKey);
  }

  v36 = v69;
  sub_1000070C0(&qword_100025740, qword_100019690);
  sub_100008D9C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v38 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, isa);

  v39 = *(v36 + 16);
  *(v36 + 16) = v38;
  v40 = v38;

  v41 = v70;
  if (!v40)
  {
    goto LABEL_10;
  }

  if (error)
  {

LABEL_10:

    v42 = Logger.testVerification.unsafeMutableAddressor();
    v43 = v67;
    v44 = v68;
    (*(v67 + 16))(v41, v42, v68);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 67109120;
      swift_beginAccess();
      *(v47 + 4) = error;
      _os_log_impl(&_mh_execute_header, v45, v46, "Could not create CFUserNotification: %d", v47, 8u);
      v41 = v70;
    }

    (*(v43 + 8))(v41, v44);
    return;
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v40, sub_100008AA0, 0);
  v49 = *(v36 + 24);
  *(v36 + 24) = RunLoopSource;
  v50 = RunLoopSource;

  if (v50)
  {
    v51 = CFRunLoopGetCurrent();
    v52 = CFRunLoopCopyCurrentMode(v51);
    if (!v52)
    {
      v52 = kCFRunLoopCommonModes;
    }

    if (qword_100025330 != -1)
    {
      swift_once();
    }

    v53 = swift_allocObject();
    swift_weakInit();
    v54 = swift_allocObject();
    v54[2] = v53;
    v54[3] = a9;
    v54[4] = a10;
    swift_beginAccess();

    sub_100008F4C(a9, a10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = qword_100025640;
    qword_100025640 = 0x8000000000000000;
    sub_10000A708(sub_100008F40, v54, v40, isUniquelyReferenced_nonNull_native);
    qword_100025640 = v73;
    swift_endAccess();

    CFRunLoopAddSource(v51, v50, v52);
  }

  else
  {
    v56 = v36;

    v57 = Logger.testVerification.unsafeMutableAddressor();
    v58 = v65;
    (*(v67 + 16))(v65, v57, v68);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Could not create CFRunLoopSource.", v61, 2u);
      v58 = v65;

      v62 = v40;
    }

    else
    {
      v62 = v59;
      v59 = v40;
    }

    (*(v67 + 8))(v58, v68);
    v63 = *(v56 + 16);
    *(v56 + 16) = 0;
  }
}

void sub_100008990(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_10000A868(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v8 = sub_100015DC0(a3);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v15 = *v4;
      if (!v11)
      {
        sub_10000A598();
        v12 = v15;
      }

      sub_10000A234(v10, v12);

      *v4 = v12;
    }

    else
    {
    }
  }
}

void sub_100008AA0(void *a1, char a2)
{
  v4 = a1;
  sub_10000811C(a1, a2);
}

uint64_t sub_100008AF4(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100008CE0();
    if (v9 == 1)
    {
      if (a3)
      {
        v11 = 1;
        goto LABEL_8;
      }
    }

    if (!v9)
    {
      if (a3)
      {
        v11 = 0;
LABEL_8:
        a3(v11);
      }
    }

    v12 = Logger.testVerification.unsafeMutableAddressor();
    (*(v6 + 16))(v8, v12, v5);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unexpected response from validating notification: %lu", v15, 0xCu);
    }

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_100008CE0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    CFRunLoopSourceInvalidate(v1);
    v2 = *(v0 + 24);
    *(v0 + 24) = 0;
  }

  v3 = *(v0 + 16);
  if (v3)
  {
    CFUserNotificationCancel(v3);
    v4 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

uint64_t sub_100008D38()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

unint64_t sub_100008D9C()
{
  result = qword_100025748;
  if (!qword_100025748)
  {
    sub_100008E20(&qword_100025740, qword_100019690);
    sub_100008E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025748);
  }

  return result;
}

uint64_t sub_100008E20(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100008E68()
{
  result = qword_100025468;
  if (!qword_100025468)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025468);
  }

  return result;
}

uint64_t sub_100008EC0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008EF8()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008F4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008F5C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_100008F6C(void *a1, char a2)
{
  if (a1)
  {
    v3 = qword_100025340;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = sub_100009AC8(v4);
    v7 = v6;
    swift_endAccess();
    if (v5)
    {
      v8[0] = a2 & 3;
      v5(v8);
      sub_100008F5C(v5, v7);
    }
  }
}

unint64_t sub_100009038()
{
  result = sub_100016364(&_swiftEmptyArrayStorage);
  qword_100025750 = result;
  return result;
}

void sub_100009060()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v50 - v7;
  __chkstk_darwin(v6);
  if (*(v0 + 32))
  {
    v10 = Logger.testVerification.unsafeMutableAddressor();
    (*(v2 + 16))(v5, v10, v1);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Validating dialog is already visible. Don't show a second one.", v13, 2u);
    }

    (*(v2 + 8))(v5, v1);
    return;
  }

  v50 = &v50 - v9;
  error = 0;
  sub_1000070C0(&qword_100025730, &unk_100019680);
  inited = swift_initStackObject();
  v51 = v1;
  *(inited + 32) = kCFUserNotificationAlertHeaderKey;
  *(inited + 16) = xmmword_1000196B0;
  v15 = objc_opt_self();
  v16 = kCFUserNotificationAlertHeaderKey;
  v17 = [v15 mainBundle];
  v54._object = 0xE500000000000000;
  v54._countAndFlagsBits = 0x656C746954;
  v18._object = 0x8000000100019A80;
  v18._countAndFlagsBits = 0xD000000000000022;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v54);

  *(inited + 40) = v20;
  *(inited + 56) = kCFUserNotificationDefaultButtonTitleKey;
  v21 = kCFUserNotificationDefaultButtonTitleKey;
  v22 = [v15 mainBundle];
  v55._object = 0xE600000000000000;
  v23._countAndFlagsBits = 0x6C65636E6143;
  v55._countAndFlagsBits = 0x6E6F74747542;
  v23._object = 0xE600000000000000;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v55);

  *(inited + 64) = v25;
  v26 = v51;
  sub_100016474(inited);
  swift_setDeallocating();
  sub_1000070C0(&qword_100025738, "Z-");
  swift_arrayDestroy();
  sub_1000070C0(&qword_100025740, qword_100019690);
  sub_100008D9C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, isa);

  v29 = *(v0 + 32);
  *(v0 + 32) = v28;
  v30 = v28;

  if (!v30)
  {
    goto LABEL_8;
  }

  if (error)
  {

LABEL_8:
    v31 = Logger.testVerification.unsafeMutableAddressor();
    (*(v2 + 16))(v8, v31, v26);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109120;
      swift_beginAccess();
      *(v34 + 4) = error;
      _os_log_impl(&_mh_execute_header, v32, v33, "Could not create CFUserNotification: %d", v34, 8u);
    }

    (*(v2 + 8))(v8, v26);
    return;
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v30, sub_100009748, 0);
  v36 = *(v0 + 40);
  *(v0 + 40) = RunLoopSource;
  v37 = RunLoopSource;

  if (v37)
  {
    v38 = CFRunLoopGetCurrent();
    v39 = CFRunLoopCopyCurrentMode(v38);
    if (!v39)
    {
      v39 = kCFRunLoopCommonModes;
    }

    if (qword_100025340 != -1)
    {
      swift_once();
    }

    v40 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = qword_100025750;
    qword_100025750 = 0x8000000000000000;
    sub_10000A708(sub_10000AA20, v40, v30, isUniquelyReferenced_nonNull_native);
    qword_100025750 = v52;
    swift_endAccess();

    CFRunLoopAddSource(v38, v37, v39);
  }

  else
  {
    v42 = v0;
    v43 = Logger.testVerification.unsafeMutableAddressor();
    v44 = v50;
    (*(v2 + 16))(v50, v43, v26);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Could not create CFRunLoopSource.", v47, 2u);

      v48 = v30;
    }

    else
    {
      v48 = v45;
      v45 = v30;
    }

    (*(v2 + 8))(v44, v26);
    v49 = *(v42 + 32);
    *(v42 + 32) = 0;
  }
}

void sub_100009748(void *a1, char a2)
{
  v4 = a1;
  sub_100008F6C(a1, a2);
}

uint64_t sub_10000979C(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v7)
    {
      v9 = Logger.testVerification.unsafeMutableAddressor();
      (*(v4 + 16))(v6, v9, v3);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = v7;
        _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected response from validating notification: %lu", v12, 0xCu);
      }

      else
      {
      }

      return (*(v4 + 8))(v6, v3);
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10000C1A8();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_100009984()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    CFRunLoopSourceInvalidate(v1);
    v2 = *(v0 + 40);
    *(v0 + 40) = 0;
  }

  v3 = *(v0 + 32);
  if (v3)
  {
    CFUserNotificationCancel(v3);
    v4 = *(v0 + 32);
    *(v0 + 32) = 0;
  }
}

uint64_t sub_1000099DC()
{
  sub_10000AA28(v0 + 16);

  return _swift_deallocClassInstance(v0, 48, 7);
}

void *sub_100009A48(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100009A68@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100009A98@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100009AC8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100015D7C(a1);
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
    sub_10000A434();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 16 * v5);
  sub_10000A0C4(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_100009B5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000070C0(&qword_100025860, &qword_100019750);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_100009DD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000070C0(&unk_100025AD0, qword_100019870);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v34 = *v22;
      if ((v33 & 1) == 0)
      {
        v24 = v21;
      }

      Hasher.init(_seed:)();
      if (v21)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFString(0);
        sub_10000AA50(&qword_100025868, &unk_1000190EC);
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v34;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_10000A0C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10000A234(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      if (v9)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFString(0);
        sub_10000AA50(&qword_100025868, &unk_1000190EC);
        v9 = v9;
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v11)
      {
LABEL_13:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void *sub_10000A434()
{
  v1 = v0;
  sub_1000070C0(&qword_100025860, &qword_100019750);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10000A598()
{
  v1 = v0;
  sub_1000070C0(&unk_100025AD0, qword_100019870);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_10000A708(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100015D7C(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100009B5C(v16, a4 & 1);
      result = sub_100015D7C(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10000A434();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_10000A868(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_100015DC0(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_100009DD0(v15, a4 & 1);
      v10 = sub_100015DC0(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_1000070C0(&qword_100025740, qword_100019690);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v18 = v10;
      sub_10000A598();
      v10 = v18;
    }
  }

  v20 = *v5;
  if ((v16 & 1) == 0)
  {
    v20[(v10 >> 6) + 8] |= 1 << v10;
    *(v20[6] + 8 * v10) = a3;
    v23 = (v20[7] + 16 * v10);
    *v23 = a1;
    v23[1] = a2;
    v24 = v20[2];
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v14)
    {
      v20[2] = v25;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  v21 = (v20[7] + 16 * v10);
  *v21 = a1;
  v21[1] = a2;
}

uint64_t sub_10000A9E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AA50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000AA94(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v53 = a4;
  v54 = a6;
  v52 = a5;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v51 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v15 = Logger.testVerification.unsafeMutableAddressor();
  v50 = *(v10 + 16);
  v50(v14, v15, v9);
  v56 = a3;
  v16 = a3;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  v19 = os_log_type_enabled(v17, v18);
  v55 = a1;
  if (v19)
  {
    v48 = v10;
    v20 = a2;
    v21 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v58[0] = v47;
    *v21 = 136315394;
    v49 = v20;
    *(v21 + 4) = sub_100015768(a1, v20, v58);
    *(v21 + 12) = 2080;
    if (v56)
    {
      v22 = v15;
      v23 = [v16 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v15 = v22;
    }

    else
    {
      v26 = 0xE300000000000000;
      v24 = 7104878;
    }

    v28 = sub_100015768(v24, v26, v58);

    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "Validate Verification Code %s in region %s", v21, 0x16u);
    swift_arrayDestroy();

    v27 = *(v48 + 8);
    v27(v14, v9);
    a2 = v49;
  }

  else
  {

    v27 = *(v10 + 8);
    v27(v14, v9);
  }

  sub_10000B87C();
  v29 = v51;
  v50(v51, v15, v9);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = v29;
    v34 = swift_slowAlloc();
    v58[0] = v34;
    *v32 = 136315138;
    v35 = v55;
    *(v32 + 4) = sub_100015768(v55, a2, v58);
    _os_log_impl(&_mh_execute_header, v30, v31, "Validate Verification Code with server %s", v32, 0xCu);
    sub_100007170(v34);

    v27(v33, v9);
  }

  else
  {

    v27(v29, v9);
    v35 = v55;
  }

  v36 = ENManagerAdapter.defaultAdapter.unsafeMutableAddressor();
  swift_beginAccess();
  v37 = *v36;
  v38 = swift_allocObject();
  v39 = v52;
  v40 = v53;
  v41 = v57;
  v38[2] = v53;
  v38[3] = v41;
  v42 = v54;
  v38[4] = v39;
  v38[5] = v42;
  v43 = *((swift_isaMask & *v37) + 0x1F8);
  v44 = v37;
  v45 = v40;

  v43(v35, a2, v56, sub_10000BC68, v38);
}

uint64_t sub_10000AF7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v26 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v11 = *(v27 - 8);
  __chkstk_darwin(v27);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000070C0(&qword_100025968, &qword_1000197D0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v17 = &v24 - v16;
  sub_10000BC74(a1, &v24 - v16);
  v18 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v19 = swift_allocObject();
  v21 = v25;
  v20 = v26;
  v19[2] = a3;
  v19[3] = v20;
  v19[4] = a5;
  v19[5] = v21;
  sub_10000BE04(v17, v19 + v18);
  aBlock[4] = sub_10000BE74;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C448;
  aBlock[3] = &unk_100020F78;
  v22 = _Block_copy(aBlock);

  v21;
  static DispatchQoS.unspecified.getter();
  v29 = &_swiftEmptyArrayStorage;
  sub_10000BF00();
  sub_1000070C0(&qword_100025978, &qword_1000197D8);
  sub_10000BF58();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v28 + 8))(v10, v8);
  (*(v11 + 8))(v13, v27);
}

uint64_t sub_10000B2B4(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v50 = a4;
  v51 = a2;
  v52 = a3;
  v6 = type metadata accessor for Logger();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v9 - 8);
  v49 = v9;
  __chkstk_darwin(v9);
  v44 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000070C0(&qword_100025968, &qword_1000197D0);
  v43 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = (&v41 - v15);
  v17 = type metadata accessor for DispatchTime();
  v18 = a1;
  v19 = *(v17 - 8);
  v20 = __chkstk_darwin(v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v41 - v23;
  if (*(v18 + 32))
  {
    sub_10000BA40();
    static DispatchTime.now()();
    + infix(_:_:)();
    v42 = *(v19 + 8);
    v42(v22, v17);
    sub_10000BC74(v45, v16);
    v25 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v26 = swift_allocObject();
    v27 = v52;
    *(v26 + 16) = v51;
    *(v26 + 24) = v27;
    sub_10000BE04(v16, v26 + v25);
    aBlock[4] = sub_10000C134;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C448;
    aBlock[3] = &unk_100020FC8;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v53 = &_swiftEmptyArrayStorage;
    sub_10000BF00();
    sub_1000070C0(&qword_100025978, &qword_1000197D8);
    sub_10000BF58();
    v29 = v44;
    v30 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v28);
    (*(v48 + 8))(v29, v30);
    (*(v46 + 8))(v13, v47);
    v42(v24, v17);
  }

  else
  {
    v32 = v51;
    v33 = Logger.testVerification.unsafeMutableAddressor();
    v35 = v41;
    v34 = v42;
    (*(v41 + 16))(v8, v33, v42);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "User cancelled verification code validation", v38, 2u);
    }

    (*(v35 + 8))(v8, v34);
    v39 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    *v16 = v39;
    swift_storeEnumTagMultiPayload();
    v40 = v39;
    v32(v16);

    return sub_10000BFBC(v16);
  }
}

uint64_t sub_10000B87C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.testVerification.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Show Validating Dialog", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for ValidatingDialog();
  v10 = swift_allocObject();
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = 0;
  v10[5] = 0;
  v10[3] = &off_100020F18;
  swift_unknownObjectWeakAssign();
  *(v1 + 32) = v10;

  sub_100009060();
}

uint64_t sub_10000BA40()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.testVerification.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Hide Validating Dialog", v9, 2u);
  }

  result = (*(v3 + 8))(v5, v2);
  if (*(v1 + 32))
  {

    sub_100009984();

    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t sub_10000BBC4()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10000BC20()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000BC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000070C0(&qword_100025968, &qword_1000197D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BCE4()
{
  v1 = *(sub_1000070C0(&qword_100025968, &qword_1000197D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000BE04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000070C0(&qword_100025968, &qword_1000197D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BE74()
{
  v1 = *(sub_1000070C0(&qword_100025968, &qword_1000197D0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_10000B2B4(v2, v3, v4, v5, v6);
}

uint64_t sub_10000BEE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000BF00()
{
  result = qword_100025970;
  if (!qword_100025970)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025970);
  }

  return result;
}

unint64_t sub_10000BF58()
{
  result = qword_100025980;
  if (!qword_100025980)
  {
    sub_100008E20(&qword_100025978, &qword_1000197D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025980);
  }

  return result;
}

uint64_t sub_10000BFBC(uint64_t a1)
{
  v2 = sub_1000070C0(&qword_100025968, &qword_1000197D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C024()
{
  v1 = *(sub_1000070C0(&qword_100025968, &qword_1000197D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000C1A8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Logger.testVerification.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cancelling validating dialog", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return sub_10000BA40();
}

uint64_t sub_10000C314(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.startIndex.getter();
    v9 = v8;
    v10 = __CocoaSet.endIndex.getter();
    v12 = v11;
    v13 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000177B8(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_1000177B8(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10001614C(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_1000177B8(v7, v9, v6 != 0);
  return v16;
}

uint64_t sub_10000C448(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_10000C698(void *a1)
{
  v2 = sub_1000070C0(&qword_100025AA0, &unk_100018E80);
  __chkstk_darwin(v2 - 8);
  v4 = v32 - v3;
  v5 = type metadata accessor for URL();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v32 - v10;
  __chkstk_darwin(v9);
  v13 = v32 - v12;
  v14 = [a1 activityType];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      return [a1 invalidate];
    }
  }

  v21 = [a1 webpageURL];
  if (!v21)
  {
    return [a1 invalidate];
  }

  v22 = v21;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = v34;
  v24 = *(v34 + 32);
  v24(v13, v11, v5);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v25 = type metadata accessor for URLComponents();
  if ((*(*(v25 - 8) + 48))(v4, 1, v25) == 1)
  {
    (*(v23 + 8))(v13, v5);
    sub_10001759C(v4, &qword_100025AA0, &unk_100018E80);
    return [a1 invalidate];
  }

  sub_10001759C(v4, &qword_100025AA0, &unk_100018E80);
  v32[1] = type metadata accessor for ENUIPublicHealthAgencyModel();
  (*(v23 + 16))(v8, v13, v5);
  v27 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  v24((v28 + v27), v8, v5);
  v29 = v33;
  *(v28 + ((v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  v30 = a1;
  v31 = v29;
  static ENUIPublicHealthAgencyModel.refreshRegions(completion:)();

  return (*(v23 + 8))(v13, v5);
}

void sub_10000CA40(void *a1, void *a2, objc_class *a3)
{
  v76 = a1;
  v77 = a3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = type metadata accessor for Logger();
  v8 = *(v78 - 8);
  v9 = __chkstk_darwin(v78);
  v11 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v73[-v13];
  __chkstk_darwin(v12);
  v16 = &v73[-v15];
  v17 = ENUIPublicHealthAgencyModel.availableRegions.unsafeMutableAddressor();
  swift_beginAccess();
  if (static ENUIPublicHealthAgencyModel.activeRegion)
  {
    v18 = *(static ENUIPublicHealthAgencyModel.activeRegion + direct field offset for ENUIPublicHealthAgencyModel.isAssociatedDomainAllowed);
    v19 = static ENUIPublicHealthAgencyModel.activeRegion;
    if (v18)
    {
      sub_10000D408(a2);
      goto LABEL_4;
    }

    v25 = Logger.launcher.unsafeMutableAddressor();
    v26 = v8;
    (*(v8 + 16))(v16, v25, v78);
    v27 = v19;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    v30 = os_log_type_enabled(v28, v29);
    v77 = v27;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v79 = v75;
      *v31 = 136315138;
      v32 = [*(v27 + direct field offset for ENUIPublicHealthAgencyModel.region) regionCode];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_100015768(v33, v35, &v79);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Intercepted associated link is not allowed for %s", v31, 0xCu);
      sub_100007170(v75);
    }

    (*(v26 + 8))(v16, v78);
    [v76 invalidate];
    v37 = [objc_opt_self() defaultWorkspace];
    if (v37)
    {
      v39 = v37;
      URL._bridgeToObjectiveC()(v38);
      v41 = v40;
      sub_1000070C0(&qword_100025A40, &qword_100019838);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000196B0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v43;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 1;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v44;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = 1;
      sub_100016570(inited);
      swift_setDeallocating();
      sub_1000070C0(&qword_100025A48, &qword_100019840);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v39 openURL:v41 withOptions:isa];
    }

    return;
  }

  v20 = *v17;
  if (*v17 >> 62)
  {
    goto LABEL_26;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
LABEL_30:
    v55 = Logger.launcher.unsafeMutableAddressor();
    v56 = v8;
    (*(v8 + 16))(v11, v55, v78);
    (*(v5 + 16))(v7, a2, v4);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v75 = v59;
      v76 = swift_slowAlloc();
      v79 = v76;
      *v59 = 136315138;
      sub_1000166A0(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v74 = v58;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v5 + 8))(v7, v4);
      v63 = sub_100015768(v60, v62, &v79);

      v64 = v75;
      *(v75 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v57, v74, "Intercepted associated link %s", v64, 0xCu);
      sub_100007170(v76);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    (*(v56 + 8))(v11, v78);
    v24 = a2;
LABEL_34:
    sub_10000D408(v24);
    return;
  }

  v75 = a2;

  do
  {
    v11 = 0;
    v5 = v20 & 0xC000000000000001;
    v4 = v20 & 0xFFFFFFFFFFFFFF8;
    v7 = (v20 + 32);
    a2 = &direct field offset for ENUIPublicHealthAgencyModel.isAssociatedDomainAllowed;
    while (v5)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        return;
      }

      v74 = *(v22 + direct field offset for ENUIPublicHealthAgencyModel.isAssociatedDomainAllowed);
      swift_unknownObjectRelease();
      if (v74 == 1)
      {
        goto LABEL_18;
      }

LABEL_14:
      if (v11 == v21)
      {
        goto LABEL_28;
      }
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      if (*(*&v7[8 * v11] + direct field offset for ENUIPublicHealthAgencyModel.isAssociatedDomainAllowed))
      {
LABEL_18:

        v24 = v75;
        goto LABEL_34;
      }

      ++v11;
      goto LABEL_14;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    if (_CocoaArrayWrapper.endIndex.getter() <= 0)
    {
      goto LABEL_30;
    }

    v75 = a2;
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  while (v21);
LABEL_28:
  v46 = Logger.launcher.unsafeMutableAddressor();
  (*(v8 + 16))(v14, v46, v78);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v79 = v50;
    *v49 = 136315138;
    type metadata accessor for ENUIPublicHealthAgencyModel();
    v51 = Array.description.getter();
    v53 = v52;

    v54 = sub_100015768(v51, v53, &v79);

    *(v49 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v47, v48, "Intercepted associated link is not available in %s", v49, 0xCu);
    sub_100007170(v50);
  }

  else
  {
  }

  (*(v8 + 8))(v14, v78);
  [v76 invalidate];
  v65 = [objc_opt_self() defaultWorkspace];
  if (v65)
  {
    v67 = v65;
    URL._bridgeToObjectiveC()(v66);
    v69 = v68;
    sub_1000070C0(&qword_100025A40, &qword_100019838);
    v70 = swift_initStackObject();
    *(v70 + 16) = xmmword_1000196B0;
    *(v70 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v70 + 40) = v71;
    *(v70 + 72) = &type metadata for Bool;
    *(v70 + 48) = 1;
    *(v70 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v70 + 88) = v72;
    *(v70 + 120) = &type metadata for Bool;
    *(v70 + 96) = 1;
    sub_100016570(v70);
    swift_setDeallocating();
    sub_1000070C0(&qword_100025A48, &qword_100019840);
    swift_arrayDestroy();
    v19 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v67 openURL:v69 withOptions:v19];

LABEL_4:
  }
}

void sub_10000D408(void *a1)
{
  v2 = sub_1000070C0(&unk_100025A30, &unk_100019828);
  v3 = __chkstk_darwin(v2 - 8);
  v161 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v160 = &v155 - v5;
  v6 = type metadata accessor for URL();
  v162 = *(v6 - 8);
  v163 = v6;
  v7 = __chkstk_darwin(v6);
  v159 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v158 = &v155 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v155 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v155 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v155 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v155 - v25;
  __chkstk_darwin(v24);
  v28 = &v155 - v27;
  v164 = a1;
  v29 = sub_100003A5C(a1);
  if ((v32 & 0x10000000000) != 0)
  {
    v56 = v29;
    v57 = Logger.launcher.unsafeMutableAddressor();
    (*(v11 + 16))(v14, v57, v10);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    v60 = v11;
    if (os_log_type_enabled(v58, v59))
    {
      v61 = swift_slowAlloc();
      v157 = v10;
      v62 = v61;
      v63 = swift_slowAlloc();
      v167 = v63;
      *v62 = 136315138;
      LOBYTE(v166) = v56;
      v64 = String.init<A>(describing:)();
      v66 = sub_100015768(v64, v65, &v167);

      *(v62 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v58, v59, "URL failed %s", v62, 0xCu);
      sub_100007170(v63);

      (*(v60 + 8))(v14, v157);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    if (v56 - 2 < 2)
    {
      goto LABEL_10;
    }

    if (v56 != 4)
    {
      sub_10000EE98(v56 & 1);
      return;
    }

    URL.scheme.getter();
    if (v80 && (v81._countAndFlagsBits = 1886680168, v81._object = 0xE400000000000000, v82 = String.hasPrefix(_:)(v81), , v82))
    {
      v83 = [objc_opt_self() defaultWorkspace];
      if (v83)
      {
        v85 = v83;
        URL._bridgeToObjectiveC()(v84);
        v87 = v86;
        sub_1000070C0(&qword_100025A40, &qword_100019838);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000196B0;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v89;
        *(inited + 72) = &type metadata for Bool;
        *(inited + 48) = 1;
        *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 88) = v90;
        *(inited + 120) = &type metadata for Bool;
        *(inited + 96) = 1;
        sub_100016570(inited);
        swift_setDeallocating();
        sub_1000070C0(&qword_100025A48, &qword_100019840);
        swift_arrayDestroy();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v85 openURL:v87 withOptions:isa];
      }
    }

    else
    {
LABEL_10:
      if (qword_100025338 != -1)
      {
        swift_once();
      }

      v67 = objc_opt_self();

      v68 = [v67 mainBundle];
      v168._object = 0xEB00000000656C74;
      v168._countAndFlagsBits = 0x6974207472656C41;
      v69._object = 0x8000000100019F90;
      v69._countAndFlagsBits = 0xD000000000000011;
      v70._countAndFlagsBits = 0;
      v70._object = 0xE000000000000000;
      v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v168);

      v72 = [v67 mainBundle];
      v169._object = 0xED00006567617373;
      v169._countAndFlagsBits = 0x656D207472656C41;
      v73._countAndFlagsBits = 0xD000000000000013;
      v73._object = 0x8000000100019FB0;
      v74._countAndFlagsBits = 0;
      v74._object = 0xE000000000000000;
      v75 = NSLocalizedString(_:tableName:bundle:value:comment:)(v73, 0, v72, v74, v169);

      v76 = [v67 mainBundle];
      v170._object = 0xE600000000000000;
      v170._countAndFlagsBits = 0x6E6F74747542;
      v77._countAndFlagsBits = 19279;
      v77._object = 0xE200000000000000;
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      v79 = NSLocalizedString(_:tableName:bundle:value:comment:)(v77, 0, v76, v78, v170);

      sub_100008240(v71._countAndFlagsBits, v71._object, v75._countAndFlagsBits, v75._object, v79._countAndFlagsBits, v79._object, 0, 0, 0, 0);
    }
  }

  else
  {
    if (!BYTE4(v32))
    {
      v92 = v29;
      v93 = v30;
      v164 = v31;
      v94 = v32;
      sub_10001754C(v29, v30, v31, v32, 0);
      v95 = Logger.launcher.unsafeMutableAddressor();
      v96 = v10;
      (*(v11 + 16))(v28, v95, v10);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&_mh_execute_header, v97, v98, "onboarding", v99, 2u);
      }

      (*(v11 + 8))(v28, v96);
      sub_10000E5A4(v92, v93);
      v100 = v164;
      sub_1000174B4(v92, v93, v164, v94, 0);
      v101 = v92;
      v102 = v93;
      v103 = v100;
      v104 = v94;
      goto LABEL_26;
    }

    if (BYTE4(v32) == 1)
    {
      v33 = v30;
      v34 = v29;
      v156 = v32;
      v35 = v31;
      v36 = v31;

      v37 = Logger.testVerification.unsafeMutableAddressor();
      v38 = v11;
      v39 = *(v11 + 16);
      v40 = v10;
      v39(v20, v37, v10);

      v41 = v36;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();

      LODWORD(v163) = v43;
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v164 = v35;
        v45 = v44;
        v161 = swift_slowAlloc();
        v167 = v161;
        *v45 = 136315650;
        *(v45 + 4) = sub_100015768(v34, v33, &v167);
        *(v45 + 12) = 2080;
        v166 = v164;
        v46 = v41;
        sub_1000070C0(&qword_100025A98, &qword_100019868);
        v47 = String.init<A>(describing:)();
        v162 = v41;
        v49 = sub_100015768(v47, v48, &v167);
        v157 = v40;
        v50 = v38;
        v51 = v49;

        *(v45 + 14) = v51;
        *(v45 + 22) = 2080;
        v52 = v156;
        sub_100017528(v156);
        v53 = String.init(cString:)();
        v55 = sub_100015768(v53, v54, &v167);
        v41 = v162;

        *(v45 + 24) = v55;
        _os_log_impl(&_mh_execute_header, v42, v163, "Verification code: %s, region: %s, reportType: %s", v45, 0x20u);
        swift_arrayDestroy();

        v35 = v164;

        (*(v50 + 8))(v20, v157);
      }

      else
      {

        (*(v38 + 8))(v20, v40);
        v52 = v156;
      }

      sub_100010328(v34, v33, v35, v52);
      sub_1000174B4(v34, v33, v35, v52, 0);

      return;
    }

    v105 = v31 | v30;
    if (!v32 && !(v105 | v29))
    {
      v106 = v32;
      v107 = Logger.launcher.unsafeMutableAddressor();
      (*(v11 + 16))(v26, v107, v10);
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&_mh_execute_header, v108, v109, "preAuthorization", v110, 2u);
      }

      (*(v11 + 8))(v26, v10);
      sub_10000F928();
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v104 = v106;
LABEL_26:
      sub_1000174B4(v101, v102, v103, v104, 0);
      return;
    }

    v156 = v32;
    if (v32 || v29 != 1 || v105)
    {
      v127 = Logger.launcher.unsafeMutableAddressor();
      v128 = v11;
      v129 = v10;
      (*(v11 + 16))(v17, v127, v10);
      v131 = v162;
      v130 = v163;
      v132 = v159;
      (v162[2])(v159, v164, v163);
      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v157 = v129;
        v136 = v130;
        v137 = v135;
        v165 = swift_slowAlloc();
        v167 = v165;
        *v137 = 136315138;
        sub_1000166A0(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v138 = dispatch thunk of CustomStringConvertible.description.getter();
        v139 = v132;
        v141 = v140;
        v131[1](v139, v136);
        v142 = sub_100015768(v138, v141, &v167);

        *(v137 + 4) = v142;
        _os_log_impl(&_mh_execute_header, v133, v134, "Unknown link %s", v137, 0xCu);
        sub_100007170(v165);

        sub_1000174B4(2, 0, 0, v156, 0);
        (*(v128 + 8))(v17, v157);
      }

      else
      {

        sub_1000174B4(2, 0, 0, v156, 0);
        v131[1](v132, v130);
        (*(v128 + 8))(v17, v129);
      }
    }

    else
    {
      v111 = Logger.launcher.unsafeMutableAddressor();
      v112 = v11;
      v113 = v10;
      (*(v11 + 16))(v23, v111, v10);
      v115 = v162;
      v114 = v163;
      v116 = v158;
      (v162[2])(v158, v164, v163);
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v167 = v120;
        *v119 = 136315138;
        sub_1000166A0(&qword_100025A90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v121 = dispatch thunk of CustomStringConvertible.description.getter();
        v157 = v113;
        v123 = v122;
        v124 = v116;
        v125 = v162[1];
        v125(v124, v163);
        v126 = sub_100015768(v121, v123, &v167);

        *(v119 + 4) = v126;
        _os_log_impl(&_mh_execute_header, v117, v118, "Report link %s", v119, 0xCu);
        sub_100007170(v120);
        v115 = v162;

        v114 = v163;

        (*(v112 + 8))(v23, v157);
      }

      else
      {

        v143 = v116;
        v125 = v115[1];
        v125(v143, v114);
        (*(v112 + 8))(v23, v113);
      }

      v145 = v160;
      v144 = v161;
      URL.init(string:)();
      v146 = [objc_opt_self() defaultWorkspace];
      if (v146)
      {
        v147 = v146;
        sub_100016820(v145, v144, &unk_100025A30, &unk_100019828);
        if ((v115[6])(v144, 1, v114) == 1)
        {
          v149 = 0;
        }

        else
        {
          URL._bridgeToObjectiveC()(v148);
          v149 = v150;
          v125(v144, v114);
        }

        sub_1000070C0(&qword_100025A40, &qword_100019838);
        v151 = swift_initStackObject();
        *(v151 + 16) = xmmword_1000196B0;
        *(v151 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v151 + 40) = v152;
        *(v151 + 72) = &type metadata for Bool;
        *(v151 + 48) = 1;
        *(v151 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v151 + 88) = v153;
        *(v151 + 120) = &type metadata for Bool;
        *(v151 + 96) = 1;
        sub_100016570(v151);
        swift_setDeallocating();
        sub_1000070C0(&qword_100025A48, &qword_100019840);
        swift_arrayDestroy();
        v154 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v147 openSensitiveURL:v149 withOptions:v154];
      }

      sub_1000174B4(1, 0, 0, v156, 0);
      sub_10001759C(v145, &unk_100025A30, &unk_100019828);
    }
  }
}

uint64_t sub_10000E5A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.launcher.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Start onboarding...", v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v14 = ENManagerAdapter.defaultAdapter.unsafeMutableAddressor();
  swift_beginAccess();
  v15 = *v14;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v3;
  v17 = *((swift_isaMask & *v15) + 0x198);

  v18 = v3;
  v19 = v15;
  v17(sub_10001695C, v16);
}

uint64_t sub_10000E7D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = ENManagerAdapter.defaultAdapter.unsafeMutableAddressor();
    swift_beginAccess();
    v15 = *v14;
    v16 = swift_allocObject();
    v16[2] = a3;
    v16[3] = a4;
    v16[4] = a5;
    v16[5] = a1;
    v16[6] = a2;
    v17 = *((swift_isaMask & *v15) + 0x190);

    v18 = a5;

    v19 = v15;
    v17(a1, a2, sub_1000174A4, v16);
  }

  else
  {
    v21 = Logger.launcher.unsafeMutableAddressor();
    (*(v11 + 16))(v13, v21, v10);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = a3;
      v32 = v29;
      *v24 = 136315138;
      v31 = a4;

      sub_1000070C0(&qword_100025430, &qword_100019860);
      v25 = String.init<A>(describing:)();
      v27 = sub_100015768(v25, v26, &v32);

      *(v24 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "Start onboarding (query param: %s)", v24, 0xCu);
      sub_100007170(v29);
    }

    (*(v11 + 8))(v13, v10);
    return sub_100016ECC(a3, a4);
  }
}

void sub_10000EABC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v42 - v16;
  if (a1)
  {
    v18 = a1;
    v19 = Logger.launcher.unsafeMutableAddressor();
    (*(v12 + 16))(v17, v19, v11);
    v20 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43 = a5;
      v25 = v24;
      v45[0] = v24;
      *v23 = 136315138;
      v26 = [*&v20[direct field offset for ENUIPublicHealthAgencyModel.region] regionCode];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v20;
      v28 = a6;
      v29 = v27;
      v44 = v11;
      v31 = v30;

      v32 = sub_100015768(v29, v31, v45);

      *(v23 + 4) = v32;
      a6 = v28;
      v20 = v42;
      _os_log_impl(&_mh_execute_header, v21, v22, "Start onboarding for last visited region %s", v23, 0xCu);
      sub_100007170(v25);
      a5 = v43;

      (*(v12 + 8))(v17, v44);
    }

    else
    {

      (*(v12 + 8))(v17, v11);
    }

    sub_100016ECC(a5, a6);
  }

  else
  {
    v33 = Logger.launcher.unsafeMutableAddressor();
    (*(v12 + 16))(v15, v33, v11);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v44 = v11;
      v37 = v36;
      v38 = swift_slowAlloc();
      v45[1] = a3;
      v46 = v38;
      *v37 = 136315138;
      v45[0] = a2;

      sub_1000070C0(&qword_100025430, &qword_100019860);
      v39 = String.init<A>(describing:)();
      v41 = sub_100015768(v39, v40, &v46);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Using onboarding (query param: %s)", v37, 0xCu);
      sub_100007170(v38);

      (*(v12 + 8))(v15, v44);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    sub_100016ECC(a2, a3);
  }
}

uint64_t sub_10000EE98(char a1)
{
  if (a1)
  {
    if (static ENUIPublicHealthAgencyModel.activeRegion)
    {
      v2 = *(static ENUIPublicHealthAgencyModel.activeRegion + direct field offset for ENUIPublicHealthAgencyModel.name);
      v1 = *(static ENUIPublicHealthAgencyModel.activeRegion + direct field offset for ENUIPublicHealthAgencyModel.name + 8);
      v3 = objc_opt_self();

      v4 = [v3 mainBundle];
      v51._object = 0xEB00000000656C74;
      v5._object = 0x8000000100019FD0;
      v5._countAndFlagsBits = 0xD00000000000001ALL;
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      v51._countAndFlagsBits = 0x6974207472656C41;
      v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v51);

      v7 = [v3 mainBundle];
      v52._object = 0xED00006567617373;
      v8._countAndFlagsBits = 0xD00000000000001CLL;
      v8._object = 0x8000000100019FF0;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      v52._countAndFlagsBits = 0x656D207472656C41;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v52);

      sub_1000070C0(&qword_100025A70, &qword_100019850);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1000197F0;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_100016740();
      *(v10 + 32) = v2;
      *(v10 + 40) = v1;
      countAndFlagsBits = String.init(format:_:)();
      object = v12;
    }

    else
    {
      v36 = objc_opt_self();
      v37 = [v36 mainBundle];
      v38._countAndFlagsBits = 0xD000000000000011;
      v57._object = 0xEB00000000656C74;
      v38._object = 0x8000000100019F90;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v57._countAndFlagsBits = 0x6974207472656C41;
      v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v57);

      v40 = [v36 mainBundle];
      v41._countAndFlagsBits = 0xD000000000000013;
      v58._object = 0xED00006567617373;
      v41._object = 0x8000000100019FB0;
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v58._countAndFlagsBits = 0x656D207472656C41;
      v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v58);
      countAndFlagsBits = v43._countAndFlagsBits;
      object = v43._object;
    }

    v44 = [objc_opt_self() mainBundle];
    v59._object = 0xE600000000000000;
    v45._countAndFlagsBits = 19279;
    v45._object = 0xE200000000000000;
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    v59._countAndFlagsBits = 0x6E6F74747542;
    v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v59);
    v26 = v47._countAndFlagsBits;
    v27 = v47._object;

    v35 = 0;
    v34 = 0;
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v14 = objc_opt_self();
    v15 = [v14 mainBundle];
    v53._object = 0xEB00000000656C74;
    v16._object = 0x800000010001A010;
    v16._countAndFlagsBits = 0xD00000000000001ALL;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v53._countAndFlagsBits = 0x6974207472656C41;
    v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v53);

    v18 = [v14 mainBundle];
    v54._object = 0xED00006567617373;
    v19._countAndFlagsBits = 0xD00000000000001CLL;
    v19._object = 0x800000010001A030;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v54._countAndFlagsBits = 0x656D207472656C41;
    v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v54);
    countAndFlagsBits = v21._countAndFlagsBits;
    object = v21._object;

    v22 = [v14 mainBundle];
    v55._object = 0xE600000000000000;
    v23._countAndFlagsBits = 0xD000000000000020;
    v23._object = 0x8000000100019CE0;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v55._countAndFlagsBits = 0x6E6F74747542;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v55);
    v26 = v25._countAndFlagsBits;
    v27 = v25._object;

    v28 = [v14 mainBundle];
    v56._object = 0xE600000000000000;
    v29._countAndFlagsBits = 0x6C65636E6143;
    v29._object = 0xE600000000000000;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v56._countAndFlagsBits = 0x6E6F74747542;
    v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v56);
    v32 = v31._countAndFlagsBits;
    v33 = v31._object;

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v35 = sub_100016910;
  }

  if (qword_100025338 != -1)
  {
    swift_once();
  }

  sub_100008240(v49._countAndFlagsBits, v49._object, countAndFlagsBits, object, v26, v27, v32, v33, v35, v34);
  sub_100008F5C(v35, v34);
  sub_100008F5C(v35, v34);
}

uint64_t sub_10000F44C(char a1, uint64_t a2)
{
  v3 = sub_1000070C0(&unk_100025A30, &unk_100019828);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v37 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = Logger.testVerification.unsafeMutableAddressor();
  v17 = *(v10 + 16);
  if (a1)
  {
    v17(v13, v16, v9);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "User chose Cancel", v20, 2u);
    }

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    v17(v15, v16, v9);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "User chose to turn on EN", v24, 2u);
    }

    (*(v10 + 8))(v15, v9);
    URL.init(string:)();
    v25 = [objc_opt_self() defaultWorkspace];
    if (v25)
    {
      v26 = v25;
      sub_100016820(v8, v6, &unk_100025A30, &unk_100019828);
      v27 = type metadata accessor for URL();
      v28 = *(v27 - 8);
      v30 = 0;
      if ((*(v28 + 48))(v6, 1, v27) != 1)
      {
        URL._bridgeToObjectiveC()(v29);
        v30 = v31;
        (*(v28 + 8))(v6, v27);
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        sub_1000070C0(&qword_100025A40, &qword_100019838);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000196B0;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v34;
        *(inited + 72) = &type metadata for Bool;
        *(inited + 48) = 1;
        *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 88) = v35;
        *(inited + 120) = &type metadata for Bool;
        *(inited + 96) = 1;
        sub_100016570(inited);
        swift_setDeallocating();
        sub_1000070C0(&qword_100025A48, &qword_100019840);
        swift_arrayDestroy();
      }

      else
      {
        sub_100016570(&_swiftEmptyArrayStorage);
      }

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v26 openSensitiveURL:v30 withOptions:isa];
    }

    return sub_10001759C(v8, &unk_100025A30, &unk_100019828);
  }
}

uint64_t sub_10000F928()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.launcher.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = String.init<A>(describing:)();
    v13 = sub_100015768(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Start pre-authorization for %s", v9, 0xCu);
    sub_100007170(v10);
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for ENUIPublicHealthAgencyModel();
  *(swift_allocObject() + 16) = v1;
  v14 = v1;
  static ENUIPublicHealthAgencyModel.refreshRegions(completion:)();
}

void sub_10000FB3C()
{
  v0 = sub_1000070C0(&unk_100025A30, &unk_100019828);
  v1 = __chkstk_darwin(v0);
  v57 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v56 = &v55 - v4;
  v5 = __chkstk_darwin(v3);
  v7 = &v55 - v6;
  __chkstk_darwin(v5);
  v9 = &v55 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v12);
  if (static ENUIPublicHealthAgencyModel.activeRegion)
  {
    v55 = &v55 - v15;
    v16 = *((swift_isaMask & *static ENUIPublicHealthAgencyModel.activeRegion) + 0x160);
    v17 = static ENUIPublicHealthAgencyModel.activeRegion;
    if (v16() & 1) != 0 && ((*((swift_isaMask & *v17) + 0x158))())
    {
      v18 = Logger.testVerification.unsafeMutableAddressor();
      v19 = v55;
      v20 = v58;
      (*(v11 + 16))(v55, v18, v58);
      v21 = v17;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v60 = v25;
        *v24 = 136315138;
        v26 = *(v21 + direct field offset for ENUIPublicHealthAgencyModel.appBundleId + 8);
        v59[0] = *(v21 + direct field offset for ENUIPublicHealthAgencyModel.appBundleId);
        v59[1] = v26;

        sub_1000070C0(&qword_100025430, &qword_100019860);
        v27 = String.init<A>(describing:)();
        v29 = sub_100015768(v27, v28, &v60);

        *(v24 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v22, v23, "Opening app: %s", v24, 0xCu);
        sub_100007170(v25);
      }

      (*(v11 + 8))(v19, v20);
      v30 = [objc_opt_self() defaultWorkspace];
      if (v30)
      {
        v31 = v30;
        if (*(v21 + direct field offset for ENUIPublicHealthAgencyModel.appBundleId + 8))
        {

          v32 = String._bridgeToObjectiveC()();
        }

        else
        {
          v32 = 0;
        }

        [v31 openApplicationWithBundleID:v32];
      }

      else
      {
      }

      return;
    }

    v10 = v58;
  }

  URL.init(string:)();
  v33 = Logger.testVerification.unsafeMutableAddressor();
  (*(v11 + 16))(v14, v33, v10);
  sub_100016820(v9, v7, &unk_100025A30, &unk_100019828);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v55 = v9;
    v37 = v36;
    v38 = swift_slowAlloc();
    v59[0] = v38;
    *v37 = 136315138;
    sub_100016820(v7, v56, &unk_100025A30, &unk_100019828);
    v39 = String.init<A>(describing:)();
    v41 = v40;
    sub_10001759C(v7, &unk_100025A30, &unk_100019828);
    v42 = sub_100015768(v39, v41, v59);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "Opening Settings to %s", v37, 0xCu);
    sub_100007170(v38);

    v9 = v55;

    (*(v11 + 8))(v14, v58);
  }

  else
  {

    sub_10001759C(v7, &unk_100025A30, &unk_100019828);
    (*(v11 + 8))(v14, v10);
  }

  v43 = [objc_opt_self() defaultWorkspace];
  v44 = v57;
  if (v43)
  {
    v45 = v43;
    sub_100016820(v9, v57, &unk_100025A30, &unk_100019828);
    v46 = type metadata accessor for URL();
    v47 = *(v46 - 8);
    v49 = 0;
    if ((*(v47 + 48))(v44, 1, v46) != 1)
    {
      URL._bridgeToObjectiveC()(v48);
      v49 = v50;
      (*(v47 + 8))(v44, v46);
    }

    sub_1000070C0(&qword_100025A40, &qword_100019838);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000196B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v52;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v53;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    sub_100016570(inited);
    swift_setDeallocating();
    sub_1000070C0(&qword_100025A48, &qword_100019840);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v45 openSensitiveURL:v49 withOptions:isa];
  }

  sub_10001759C(v9, &unk_100025A30, &unk_100019828);
}

void sub_100010328(uint64_t a1, unint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v30 = a4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Logger.testVerification.unsafeMutableAddressor();
  (*(v10 + 16))(v12, v13, v9);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = a3;
    v17 = v5;
    v18 = v16;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100015768(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "Verification code %s", v18, 0xCu);
    sub_100007170(v19);

    v5 = v17;
    a3 = v29;
  }

  (*(v10 + 8))(v12, v9);
  type metadata accessor for VerificationCodeValidator();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 1;
  *(v20 + 32) = 0;
  v21 = [objc_opt_self() sharedApplication];
  v22 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10001553C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C448;
  aBlock[3] = &unk_100020FF0;
  v23 = _Block_copy(aBlock);

  v24 = [v21 beginBackgroundTaskWithName:v22 expirationHandler:v23];
  _Block_release(v23);

  *(v20 + 16) = v24;
  *(v20 + 24) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = 0;
  *(v25 + 32) = a1;
  *(v25 + 40) = a2;
  *(v25 + 48) = a3;
  *(v25 + 56) = v5;
  *(v25 + 64) = v30;
  sub_1000177C4(0, &qword_100025A20, OS_dispatch_queue_ptr);
  v26 = a3;
  v27 = v5;

  v28 = static OS_dispatch_queue.main.getter();
  sub_10000AA94(a1, a2, a3, v28, sub_1000155A4, v25);
}

void sub_1000106C8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {
    __break(1u);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = Logger.testVerification.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v7, v2);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v6;
      v17 = v11;
      *v10 = 136315138;
      type metadata accessor for UIBackgroundTaskIdentifier(0);
      v12 = String.init<A>(describing:)();
      v14 = sub_100015768(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "The time given to complete the verification code validation task %s to complete while the app is in the background has expired.", v10, 0xCu);
      sub_100007170(v11);
    }

    (*(v3 + 8))(v5, v2);
    v15 = [objc_opt_self() sharedApplication];
    [v15 endBackgroundTask:v6];
  }
}

void sub_1000108DC(uint64_t a1, uint64_t a2, int a3, void (*a4)(char *, uint64_t, char *), uint64_t a5, void *a6, void *a7, int a8)
{
  v463 = a8;
  v445 = a7;
  v466 = a6;
  v460 = a5;
  v457 = a4;
  v469 = a3;
  v467 = a2;
  v459 = sub_1000070C0(&unk_100025A30, &unk_100019828);
  v9 = __chkstk_darwin(v459);
  v465 = &v442 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v458 = &v442 - v12;
  v13 = __chkstk_darwin(v11);
  v464 = &v442 - v14;
  __chkstk_darwin(v13);
  v473 = &v442 - v15;
  v16 = type metadata accessor for UUID();
  *&v472 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v471 = &v442 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v442 - v19;
  v462 = type metadata accessor for CocoaError.Code();
  v461 = *(v462 - 8);
  __chkstk_darwin(v462);
  v22 = &v442 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Logger();
  object = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v468 = &v442 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v470 = &v442 - v27;
  v28 = __chkstk_darwin(v26);
  v444 = &v442 - v29;
  v30 = __chkstk_darwin(v28);
  v443 = &v442 - v31;
  v32 = __chkstk_darwin(v30);
  v446 = &v442 - v33;
  v34 = __chkstk_darwin(v32);
  v447 = &v442 - v35;
  v36 = __chkstk_darwin(v34);
  v448 = &v442 - v37;
  v38 = __chkstk_darwin(v36);
  v449 = &v442 - v39;
  v40 = __chkstk_darwin(v38);
  v450 = &v442 - v41;
  v42 = __chkstk_darwin(v40);
  v451 = &v442 - v43;
  v44 = __chkstk_darwin(v42);
  v452 = &v442 - v45;
  v46 = __chkstk_darwin(v44);
  v453 = &v442 - v47;
  v48 = __chkstk_darwin(v46);
  v454 = &v442 - v49;
  v50 = __chkstk_darwin(v48);
  v455 = &v442 - v51;
  v52 = __chkstk_darwin(v50);
  v456 = &v442 - v53;
  __chkstk_darwin(v52);
  v55 = &v442 - v54;
  v56 = sub_1000070C0(&qword_100025968, &qword_1000197D0);
  __chkstk_darwin(v56);
  v58 = (&v442 - v57);
  sub_100016820(a1, &v442 - v57, &qword_100025968, &qword_1000197D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = *v58;
    v60 = Logger.testVerification.unsafeMutableAddressor();
    v61 = *(object + 2);
    v471 = v60;
    v473 = object + 16;
    *&v472 = v61;
    v61(v55);
    v62 = v460;

    swift_errorRetain();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    v65 = v23;
    if (os_log_type_enabled(v63, v64))
    {
      v66 = swift_slowAlloc();
      v475 = swift_slowAlloc();
      *v66 = 136315394;
      *(v66 + 4) = sub_100015768(v457, v62, &v475);
      *(v66 + 12) = 2080;
      v478._countAndFlagsBits = v59;
      swift_errorRetain();
      sub_1000070C0(&qword_100025A68, &qword_100019848);
      v67 = String.init<A>(describing:)();
      v69 = v59;
      v70 = sub_100015768(v67, v68, &v475);

      *(v66 + 14) = v70;
      v59 = v69;
      v65 = v23;
      _os_log_impl(&_mh_execute_header, v63, v64, "Failed to validate verification code %s: %s", v66, 0x16u);
      swift_arrayDestroy();
    }

    v71 = *(object + 1);
    v71(v55, v23);
    swift_errorRetain();
    static CocoaError.userCancelled.getter();
    sub_1000166A0(&unk_100025A50, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
    v90 = v462;
    v91 = static _ErrorCodeProtocol.~= infix(_:_:)();

    v461[1](v22, v90);
    if (v91)
    {
      if (v469)
      {
        goto LABEL_50;
      }

      v92 = v467;
      if (UIBackgroundTaskInvalid == v467)
      {
        goto LABEL_50;
      }

LABEL_53:
      v218 = [objc_opt_self() sharedApplication];
      [v218 endBackgroundTask:v92];

      return;
    }

    _s3__C4CodeOMa_0(0);
    v475 = 1;
    swift_errorRetain();
    sub_1000166A0(&qword_1000254E8, _s3__C4CodeOMa_0, &unk_100019314);
    v121 = static _ErrorCodeProtocol.~= infix(_:_:)();

    v470 = v59;
    if (v121)
    {
      v122 = v71;
      v123 = v456;
      (v472)(v456, v471, v65);
      swift_errorRetain();
      v124 = Logger.logObject.getter();
      v125 = v65;
      v126 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v124, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v475 = v128;
        *v127 = 136315138;
        v478._countAndFlagsBits = v59;
        swift_errorRetain();
        sub_1000070C0(&qword_100025A68, &qword_100019848);
        v129 = String.init<A>(describing:)();
        v131 = sub_100015768(v129, v130, &v475);

        *(v127 + 4) = v131;
        _os_log_impl(&_mh_execute_header, v124, v126, "Test Verification Unknown error %s", v127, 0xCu);
        sub_100007170(v128);
      }

      v122(v123, v125);
      v132 = objc_opt_self();
      v133 = [v132 mainBundle];
      v479._object = 0xEB00000000656C74;
      v134._object = 0x8000000100019C40;
      v134._countAndFlagsBits = 0xD000000000000027;
      v135._countAndFlagsBits = 0;
      v135._object = 0xE000000000000000;
      v479._countAndFlagsBits = 0x6974207472656C41;
      v136 = NSLocalizedString(_:tableName:bundle:value:comment:)(v134, 0, v133, v135, v479);
      countAndFlagsBits = v136._countAndFlagsBits;
      object = v136._object;

      v138 = [v132 mainBundle];
      v480._object = 0xED00006567617373;
      v139._countAndFlagsBits = 0xD000000000000029;
      v139._object = 0x8000000100019C70;
      v140._countAndFlagsBits = 0;
      v140._object = 0xE000000000000000;
      v480._countAndFlagsBits = 0x656D207472656C41;
      v141 = NSLocalizedString(_:tableName:bundle:value:comment:)(v139, 0, v138, v140, v480);
      v473 = v141._countAndFlagsBits;
      *&v472 = v141._object;

      v142 = [v132 mainBundle];
      goto LABEL_44;
    }

    v475 = 2;
    swift_errorRetain();
    v158 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v158)
    {
      v159 = v455;
      (v472)(v455, v471, v65);
      swift_errorRetain();
      v160 = Logger.logObject.getter();
      v161 = v65;
      v162 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v160, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v475 = v164;
        *v163 = 136315138;
        v478._countAndFlagsBits = v59;
        swift_errorRetain();
        sub_1000070C0(&qword_100025A68, &qword_100019848);
        v165 = String.init<A>(describing:)();
        v167 = sub_100015768(v165, v166, &v475);

        *(v163 + 4) = v167;
        _os_log_impl(&_mh_execute_header, v160, v162, "Verification Code Invalid error: %s", v163, 0xCu);
        sub_100007170(v164);
      }

      v71(v159, v161);
      v168 = objc_opt_self();
      v169 = [v168 mainBundle];
      v170._countAndFlagsBits = 0xD000000000000012;
      v481._object = 0xEB00000000656C74;
      v170._object = 0x8000000100019EC0;
      v171._countAndFlagsBits = 0;
      v171._object = 0xE000000000000000;
      v481._countAndFlagsBits = 0x6974207472656C41;
      v172 = NSLocalizedString(_:tableName:bundle:value:comment:)(v170, 0, v169, v171, v481);
      countAndFlagsBits = v172._countAndFlagsBits;
      object = v172._object;

      v173 = [v168 mainBundle];
      v174._countAndFlagsBits = 0xD000000000000014;
      v482._object = 0xED00006567617373;
      v174._object = 0x8000000100019EE0;
      v175._countAndFlagsBits = 0;
      v175._object = 0xE000000000000000;
      v482._countAndFlagsBits = 0x656D207472656C41;
      v176 = NSLocalizedString(_:tableName:bundle:value:comment:)(v174, 0, v173, v175, v482);
      v473 = v176._countAndFlagsBits;
      *&v472 = v176._object;

      v142 = [v168 mainBundle];
      goto LABEL_44;
    }

    v475 = 3;
    swift_errorRetain();
    v177 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v177)
    {
      v178 = v454;
      (v472)(v454, v471, v65);
      swift_errorRetain();
      v179 = Logger.logObject.getter();
      v180 = v65;
      v181 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v179, v181))
      {
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v475 = v183;
        *v182 = 136315138;
        v478._countAndFlagsBits = v59;
        swift_errorRetain();
        sub_1000070C0(&qword_100025A68, &qword_100019848);
        v184 = String.init<A>(describing:)();
        v186 = sub_100015768(v184, v185, &v475);

        *(v182 + 4) = v186;
        _os_log_impl(&_mh_execute_header, v179, v181, "Verification Code Expired error: %s", v182, 0xCu);
        sub_100007170(v183);

        v187 = v454;
      }

      else
      {

        v187 = v178;
      }

      v71(v187, v180);
      v198 = objc_opt_self();
      v199 = [v198 mainBundle];
      v200._countAndFlagsBits = 0xD000000000000012;
      v483._object = 0xEB00000000656C74;
      v200._object = 0x8000000100019E80;
      v201._countAndFlagsBits = 0;
      v201._object = 0xE000000000000000;
      v483._countAndFlagsBits = 0x6974207472656C41;
      v202 = NSLocalizedString(_:tableName:bundle:value:comment:)(v200, 0, v199, v201, v483);
      countAndFlagsBits = v202._countAndFlagsBits;
      object = v202._object;

      v203 = [v198 mainBundle];
      v204._countAndFlagsBits = 0xD000000000000014;
      v484._object = 0xED00006567617373;
      v204._object = 0x8000000100019EA0;
      v205._countAndFlagsBits = 0;
      v205._object = 0xE000000000000000;
      v484._countAndFlagsBits = 0x656D207472656C41;
      v206 = NSLocalizedString(_:tableName:bundle:value:comment:)(v204, 0, v203, v205, v484);
      v473 = v206._countAndFlagsBits;
      *&v472 = v206._object;

      v142 = [v198 mainBundle];
      goto LABEL_44;
    }

    v475 = 4;
    swift_errorRetain();
    v188 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v188)
    {
      v189 = v453;
      (v472)(v453, v471, v65);
      swift_errorRetain();
      v190 = Logger.logObject.getter();
      v191 = v65;
      v192 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v190, v192))
      {
        v193 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        v475 = v194;
        *v193 = 136315138;
        v478._countAndFlagsBits = v59;
        swift_errorRetain();
        sub_1000070C0(&qword_100025A68, &qword_100019848);
        v195 = String.init<A>(describing:)();
        v197 = sub_100015768(v195, v196, &v475);

        *(v193 + 4) = v197;
        _os_log_impl(&_mh_execute_header, v190, v192, "Test Verification Invalid Server Response error: %s", v193, 0xCu);
        sub_100007170(v194);
      }

LABEL_100:

      v71(v189, v191);
      v399 = objc_opt_self();
      v400 = [v399 mainBundle];
      v502._object = 0xEB00000000656C74;
      v401._object = 0x8000000100019C40;
      v401._countAndFlagsBits = 0xD000000000000027;
      v402._countAndFlagsBits = 0;
      v402._object = 0xE000000000000000;
      v502._countAndFlagsBits = 0x6974207472656C41;
      v403 = NSLocalizedString(_:tableName:bundle:value:comment:)(v401, 0, v400, v402, v502);
      countAndFlagsBits = v403._countAndFlagsBits;
      object = v403._object;

      v404 = [v399 mainBundle];
      v503._object = 0xED00006567617373;
      v405._countAndFlagsBits = 0xD000000000000029;
      v405._object = 0x8000000100019C70;
      v406._countAndFlagsBits = 0;
      v406._object = 0xE000000000000000;
      v503._countAndFlagsBits = 0x656D207472656C41;
      v407 = NSLocalizedString(_:tableName:bundle:value:comment:)(v405, 0, v404, v406, v503);
      v473 = v407._countAndFlagsBits;
      *&v472 = v407._object;

      v142 = [v399 mainBundle];
LABEL_44:
      v207 = v142;
      v485._object = 0xE600000000000000;
      v208._countAndFlagsBits = 19279;
      v208._object = 0xE200000000000000;
      v209._countAndFlagsBits = 0;
      v209._object = 0xE000000000000000;
      v485._countAndFlagsBits = 0x6E6F74747542;
      v210 = NSLocalizedString(_:tableName:bundle:value:comment:)(v208, 0, v207, v209, v485);
      v211 = v210._countAndFlagsBits;
      v212 = v210._object;

      v213 = 0;
      v214 = 0;
      v215 = 0;
      v216 = 0;
      v217 = 1;
      goto LABEL_45;
    }

    v475 = 6;
    swift_errorRetain();
    v219 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v219)
    {
      v189 = v452;
      (v472)(v452, v471, v65);
      swift_errorRetain();
      v190 = Logger.logObject.getter();
      v191 = v65;
      v220 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v190, v220))
      {
        v221 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        v475 = v222;
        *v221 = 136315138;
        v478._countAndFlagsBits = v59;
        swift_errorRetain();
        sub_1000070C0(&qword_100025A68, &qword_100019848);
        v223 = String.init<A>(describing:)();
        v225 = sub_100015768(v223, v224, &v475);

        *(v221 + 4) = v225;
        _os_log_impl(&_mh_execute_header, v190, v220, "Test Verification Server error: %s", v221, 0xCu);
        sub_100007170(v222);
      }

      goto LABEL_100;
    }

    v475 = 7;
    swift_errorRetain();
    v226 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v226)
    {
      v227 = v451;
      (v472)(v451, v471, v65);
      swift_errorRetain();
      v228 = Logger.logObject.getter();
      v229 = v65;
      v230 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v228, v230))
      {
        v231 = swift_slowAlloc();
        v232 = swift_slowAlloc();
        v475 = v232;
        *v231 = 136315138;
        v478._countAndFlagsBits = v59;
        swift_errorRetain();
        sub_1000070C0(&qword_100025A68, &qword_100019848);
        v233 = String.init<A>(describing:)();
        v235 = sub_100015768(v233, v234, &v475);

        *(v231 + 4) = v235;
        _os_log_impl(&_mh_execute_header, v228, v230, "Test Verification Server Rate Limit error: %s", v231, 0xCu);
        sub_100007170(v232);

        v236 = v451;
      }

      else
      {

        v236 = v227;
      }

      v71(v236, v229);
      v256 = objc_opt_self();
      v257 = [v256 mainBundle];
      v258._countAndFlagsBits = 0xD000000000000016;
      v488._object = 0xEB00000000656C74;
      v258._object = 0x8000000100019E40;
      v259._countAndFlagsBits = 0;
      v259._object = 0xE000000000000000;
      v488._countAndFlagsBits = 0x6974207472656C41;
      v260 = NSLocalizedString(_:tableName:bundle:value:comment:)(v258, 0, v257, v259, v488);
      countAndFlagsBits = v260._countAndFlagsBits;
      object = v260._object;

      v261 = [v256 mainBundle];
      v262._countAndFlagsBits = 0xD000000000000018;
      v489._object = 0xED00006567617373;
      v262._object = 0x8000000100019E60;
      v263._countAndFlagsBits = 0;
      v263._object = 0xE000000000000000;
      v489._countAndFlagsBits = 0x656D207472656C41;
      v264 = NSLocalizedString(_:tableName:bundle:value:comment:)(v262, 0, v261, v263, v489);
      v473 = v264._countAndFlagsBits;
      *&v472 = v264._object;

      v142 = [v256 mainBundle];
      goto LABEL_44;
    }

    v475 = 8;
    swift_errorRetain();
    v237 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v237)
    {
      v238 = v450;
      (v472)(v450, v471, v65);
      swift_errorRetain();
      v239 = Logger.logObject.getter();
      v240 = v65;
      v241 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v239, v241))
      {
        v242 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        v475 = v243;
        *v242 = 136315138;
        v478._countAndFlagsBits = v59;
        swift_errorRetain();
        sub_1000070C0(&qword_100025A68, &qword_100019848);
        v244 = String.init<A>(describing:)();
        v246 = sub_100015768(v244, v245, &v475);

        *(v242 + 4) = v246;
        _os_log_impl(&_mh_execute_header, v239, v241, "Test Verification Server Timeout error: %s", v242, 0xCu);
        sub_100007170(v243);
      }

      v71(v238, v240);
      v247 = objc_opt_self();
      v248 = [v247 mainBundle];
      v486._object = 0xEB00000000656C74;
      v249._object = 0x8000000100019C40;
      v249._countAndFlagsBits = 0xD000000000000027;
      v250._countAndFlagsBits = 0;
      v250._object = 0xE000000000000000;
      v486._countAndFlagsBits = 0x6974207472656C41;
      v251 = NSLocalizedString(_:tableName:bundle:value:comment:)(v249, 0, v248, v250, v486);
      countAndFlagsBits = v251._countAndFlagsBits;
      object = v251._object;

      v252 = [v247 mainBundle];
      v253._countAndFlagsBits = 0xD00000000000001CLL;
      v487._object = 0xED00006567617373;
      v253._object = 0x8000000100019E20;
      v254._countAndFlagsBits = 0;
      v254._object = 0xE000000000000000;
      v487._countAndFlagsBits = 0x656D207472656C41;
      v255 = NSLocalizedString(_:tableName:bundle:value:comment:)(v253, 0, v252, v254, v487);
      v473 = v255._countAndFlagsBits;
      *&v472 = v255._object;

      v142 = [v247 mainBundle];
      goto LABEL_44;
    }

    v475 = 9;
    swift_errorRetain();
    v265 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v265)
    {
      v266 = v449;
      (v472)(v449, v471, v65);
      swift_errorRetain();
      v267 = Logger.logObject.getter();
      v268 = v65;
      v269 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v267, v269))
      {
        v270 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        v475 = v271;
        *v270 = 136315138;
        v478._countAndFlagsBits = v59;
        swift_errorRetain();
        sub_1000070C0(&qword_100025A68, &qword_100019848);
        v272 = String.init<A>(describing:)();
        v274 = sub_100015768(v272, v273, &v475);

        *(v270 + 4) = v274;
        _os_log_impl(&_mh_execute_header, v267, v269, "Test Verification Region Unavailable error: %s", v270, 0xCu);
        sub_100007170(v271);

        v275 = v449;
      }

      else
      {

        v275 = v266;
      }

      v71(v275, v268);
      v287 = objc_opt_self();
      v288 = [v287 mainBundle];
      v289._countAndFlagsBits = 0xD00000000000001ELL;
      v490._object = 0xEB00000000656C74;
      v289._object = 0x8000000100019DD0;
      v290._countAndFlagsBits = 0;
      v290._object = 0xE000000000000000;
      v490._countAndFlagsBits = 0x6974207472656C41;
      v291 = NSLocalizedString(_:tableName:bundle:value:comment:)(v289, 0, v288, v290, v490);
      countAndFlagsBits = v291._countAndFlagsBits;
      object = v291._object;

      v292 = [v287 mainBundle];
      v293._countAndFlagsBits = 0xD000000000000020;
      v491._object = 0xED00006567617373;
      v293._object = 0x8000000100019DF0;
      v294._countAndFlagsBits = 0;
      v294._object = 0xE000000000000000;
      v491._countAndFlagsBits = 0x656D207472656C41;
      v295 = NSLocalizedString(_:tableName:bundle:value:comment:)(v293, 0, v292, v294, v491);
      v473 = v295._countAndFlagsBits;
      *&v472 = v295._object;

      v142 = [v287 mainBundle];
      goto LABEL_44;
    }

    v475 = 10;
    swift_errorRetain();
    v276 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v276)
    {
      v277 = v448;
      (v472)(v448, v471, v65);
      swift_errorRetain();
      v278 = Logger.logObject.getter();
      v279 = v65;
      v280 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v278, v280))
      {
        v281 = swift_slowAlloc();
        v282 = swift_slowAlloc();
        v475 = v282;
        *v281 = 136315138;
        v478._countAndFlagsBits = v59;
        swift_errorRetain();
        sub_1000070C0(&qword_100025A68, &qword_100019848);
        v283 = String.init<A>(describing:)();
        v285 = sub_100015768(v283, v284, &v475);

        *(v281 + 4) = v285;
        _os_log_impl(&_mh_execute_header, v278, v280, "Test Verification Region Unsupported error: %s", v281, 0xCu);
        sub_100007170(v282);

        v286 = v448;
      }

      else
      {

        v286 = v277;
      }

      v71(v286, v279);
      v307 = objc_opt_self();
      v308 = [v307 mainBundle];
      v309._countAndFlagsBits = 0xD00000000000001ELL;
      v492._object = 0xEB00000000656C74;
      v309._object = 0x8000000100019D80;
      v310._countAndFlagsBits = 0;
      v310._object = 0xE000000000000000;
      v492._countAndFlagsBits = 0x6974207472656C41;
      v311 = NSLocalizedString(_:tableName:bundle:value:comment:)(v309, 0, v308, v310, v492);
      countAndFlagsBits = v311._countAndFlagsBits;
      object = v311._object;

      v312 = [v307 mainBundle];
      v313._countAndFlagsBits = 0xD000000000000020;
      v493._object = 0xED00006567617373;
      v313._object = 0x8000000100019DA0;
      v314._countAndFlagsBits = 0;
      v314._object = 0xE000000000000000;
      v493._countAndFlagsBits = 0x656D207472656C41;
      v315 = NSLocalizedString(_:tableName:bundle:value:comment:)(v313, 0, v312, v314, v493);
      v473 = v315._countAndFlagsBits;
      *&v472 = v315._object;

      v142 = [v307 mainBundle];
      goto LABEL_44;
    }

    v475 = 11;
    swift_errorRetain();
    v296 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v296)
    {
      v297 = v447;
      (v472)(v447, v471, v65);
      swift_errorRetain();
      v298 = Logger.logObject.getter();
      v299 = v65;
      v300 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v298, v300))
      {
        v301 = swift_slowAlloc();
        v302 = swift_slowAlloc();
        v475 = v302;
        *v301 = 136315138;
        v478._countAndFlagsBits = v59;
        swift_errorRetain();
        sub_1000070C0(&qword_100025A68, &qword_100019848);
        v303 = String.init<A>(describing:)();
        v305 = sub_100015768(v303, v304, &v475);

        *(v301 + 4) = v305;
        _os_log_impl(&_mh_execute_header, v298, v300, "Test Verification Network error: %s", v301, 0xCu);
        sub_100007170(v302);

        v306 = v447;
      }

      else
      {

        v306 = v297;
      }

      v71(v306, v299);
      v328 = objc_opt_self();
      v329 = [v328 mainBundle];
      v330._countAndFlagsBits = 0xD000000000000013;
      v494._object = 0xEB00000000656C74;
      v330._object = 0x8000000100019D60;
      v331._countAndFlagsBits = 0;
      v331._object = 0xE000000000000000;
      v494._countAndFlagsBits = 0x6974207472656C41;
      v332 = NSLocalizedString(_:tableName:bundle:value:comment:)(v330, 0, v329, v331, v494);
      countAndFlagsBits = v332._countAndFlagsBits;
      object = v332._object;

      if ([objc_opt_self() wapiCapability])
      {
        v333 = 1312902231;
      }

      else
      {
        v333 = 1229343063;
      }

      v475 = 0x5F4B524F5754454ELL;
      v476 = 0xE800000000000000;
      v334 = 0xE400000000000000;
      String.append(_:)(*&v333);

      v335._countAndFlagsBits = 0x4D5F524F5252455FLL;
      v335._object = 0xEE00454741535345;
      String.append(_:)(v335);
      v336 = v475;
      v337 = v476;
      v338 = [v328 mainBundle];
      v495._object = 0xED00006567617373;
      v339._countAndFlagsBits = v336;
      v339._object = v337;
      v340._countAndFlagsBits = 0;
      v340._object = 0xE000000000000000;
      v495._countAndFlagsBits = 0x656D207472656C41;
      v341 = NSLocalizedString(_:tableName:bundle:value:comment:)(v339, 0, v338, v340, v495);
      v473 = v341._countAndFlagsBits;
      *&v472 = v341._object;

      v342 = [v328 mainBundle];
      v496._object = 0xE600000000000000;
      v343._countAndFlagsBits = 19279;
      v343._object = 0xE200000000000000;
      v344._countAndFlagsBits = 0;
      v344._object = 0xE000000000000000;
      v496._countAndFlagsBits = 0x6E6F74747542;
      v345 = NSLocalizedString(_:tableName:bundle:value:comment:)(v343, 0, v342, v344, v496);
      v211 = v345._countAndFlagsBits;
      v212 = v345._object;

      v346 = [v328 mainBundle];
      v497._object = 0xE600000000000000;
      v347._countAndFlagsBits = 0x53474E4954544553;
      v347._object = 0xE800000000000000;
      v348._countAndFlagsBits = 0;
      v348._object = 0xE000000000000000;
      v497._countAndFlagsBits = 0x6E6F74747542;
      v349 = NSLocalizedString(_:tableName:bundle:value:comment:)(v347, 0, v346, v348, v497);
      v215 = v349._countAndFlagsBits;
      v216 = v349._object;

      v214 = swift_allocObject();
      *(v214 + 16) = v467;
      *(v214 + 24) = v469 & 1;

      v217 = 0;
      v213 = sub_100016810;
LABEL_45:
      if (qword_100025338 != -1)
      {
        swift_once();
      }

      sub_100008240(countAndFlagsBits, object, v473, v472, v211, v212, v215, v216, v213, v214);

      if ((v217 & 1) == 0)
      {
        sub_100008F5C(v213, v214);
        sub_100008F5C(v213, v214);
LABEL_50:

        return;
      }

      if (v469)
      {
        goto LABEL_50;
      }

      v92 = v467;
      if (UIBackgroundTaskInvalid == v467)
      {
        goto LABEL_50;
      }

      goto LABEL_53;
    }

    type metadata accessor for Code(0);
    v475 = 5;
    swift_errorRetain();
    sub_1000166A0(&qword_100025A60, type metadata accessor for Code, &unk_10001915C);
    v316 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v316 & 1) == 0)
    {
      v475 = 9;
      swift_errorRetain();
      v350 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v350)
      {
        v351 = v443;
        (v472)(v443, v471, v65);
        swift_errorRetain();
        v352 = Logger.logObject.getter();
        v353 = v65;
        v354 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v352, v354))
        {
          v355 = swift_slowAlloc();
          v356 = swift_slowAlloc();
          v475 = v356;
          *v355 = 136315138;
          v478._countAndFlagsBits = v470;
          swift_errorRetain();
          sub_1000070C0(&qword_100025A68, &qword_100019848);
          v357 = String.init<A>(describing:)();
          v359 = sub_100015768(v357, v358, &v475);

          *(v355 + 4) = v359;
          _os_log_impl(&_mh_execute_header, v352, v354, "Test Verification Not Enabled error: %s", v355, 0xCu);
          sub_100007170(v356);
        }

        v71(v351, v353);
        v360 = objc_opt_self();
        v361 = [v360 mainBundle];
        v362._countAndFlagsBits = 0xD000000000000011;
        v498._object = 0xEB00000000656C74;
        v362._object = 0x8000000100019CA0;
        v363._countAndFlagsBits = 0;
        v363._object = 0xE000000000000000;
        v498._countAndFlagsBits = 0x6974207472656C41;
        v364 = NSLocalizedString(_:tableName:bundle:value:comment:)(v362, 0, v361, v363, v498);
        countAndFlagsBits = v364._countAndFlagsBits;
        object = v364._object;

        v365 = [v360 mainBundle];
        v366._countAndFlagsBits = 0xD000000000000013;
        v499._object = 0xED00006567617373;
        v366._object = 0x8000000100019CC0;
        v367._countAndFlagsBits = 0;
        v367._object = 0xE000000000000000;
        v499._countAndFlagsBits = 0x656D207472656C41;
        v368 = NSLocalizedString(_:tableName:bundle:value:comment:)(v366, 0, v365, v367, v499);
        v473 = v368._countAndFlagsBits;
        *&v472 = v368._object;

        v369 = [v360 mainBundle];
        v370._countAndFlagsBits = 0xD000000000000020;
        v500._object = 0xE600000000000000;
        v370._object = 0x8000000100019CE0;
        v371._countAndFlagsBits = 0;
        v371._object = 0xE000000000000000;
        v500._countAndFlagsBits = 0x6E6F74747542;
        v372 = NSLocalizedString(_:tableName:bundle:value:comment:)(v370, 0, v369, v371, v500);
        v211 = v372._countAndFlagsBits;
        v212 = v372._object;

        v373 = [v360 mainBundle];
        v501._object = 0xE600000000000000;
        v374._countAndFlagsBits = 0x6C65636E6143;
        v374._object = 0xE600000000000000;
        v375._countAndFlagsBits = 0;
        v375._object = 0xE000000000000000;
        v501._countAndFlagsBits = 0x6E6F74747542;
        v376 = NSLocalizedString(_:tableName:bundle:value:comment:)(v374, 0, v373, v375, v501);
        v215 = v376._countAndFlagsBits;
        v216 = v376._object;

        v214 = swift_allocObject();
        v377 = v466;
        v378 = v445;
        *(v214 + 16) = v466;
        *(v214 + 24) = v378;
        *(v214 + 32) = v467;
        *(v214 + 40) = v469 & 1;
        v379 = v377;
        v380 = v378;

        v217 = 0;
        v213 = sub_100016728;
        goto LABEL_45;
      }

      v189 = v444;
      (v472)(v444, v471, v65);
      swift_errorRetain();
      v190 = Logger.logObject.getter();
      v191 = v65;
      v393 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v190, v393))
      {
        v394 = swift_slowAlloc();
        v395 = swift_slowAlloc();
        v475 = v395;
        *v394 = 136315138;
        v478._countAndFlagsBits = v470;
        swift_errorRetain();
        sub_1000070C0(&qword_100025A68, &qword_100019848);
        v396 = String.init<A>(describing:)();
        v398 = sub_100015768(v396, v397, &v475);

        *(v394 + 4) = v398;
        _os_log_impl(&_mh_execute_header, v190, v393, "Unhandled Test Verification error: %s", v394, 0xCu);
        sub_100007170(v395);
      }

      goto LABEL_100;
    }

    v317 = v446;
    (v472)(v446, v471, v65);
    swift_errorRetain();
    v318 = Logger.logObject.getter();
    v319 = v65;
    v320 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v318, v320))
    {
      v321 = swift_slowAlloc();
      v475 = swift_slowAlloc();
      v456 = v319;
      v322 = v475;
      *v321 = 136315138;
      v478._countAndFlagsBits = v59;
      swift_errorRetain();
      sub_1000070C0(&qword_100025A68, &qword_100019848);
      v323 = String.init<A>(describing:)();
      v325 = sub_100015768(v323, v324, &v475);

      *(v321 + 4) = v325;
      _os_log_impl(&_mh_execute_header, v318, v320, "Test Verification Unsupported error: %s", v321, 0xCu);
      sub_100007170(v322);

      v326 = v446;
      v327 = v456;
    }

    else
    {

      v326 = v317;
      v327 = v319;
    }

    v71(v326, v327);
    v381 = _convertErrorToNSError(_:)();
    v382 = [v381 userInfo];

    v383 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v384 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v383 + 16))
    {
      v386 = sub_100015E90(v384, v385);
      v388 = v387;

      if ((v388 & 1) == 0)
      {
LABEL_102:

        goto LABEL_103;
      }

      sub_100015D20(*(v383 + 56) + 32 * v386, &v475);

      if (swift_dynamicCast())
      {
        v389 = v478._countAndFlagsBits;
        v390 = v478._object;
        v391 = objc_allocWithZone(LSApplicationRecord);

        v471 = v389;
        v392 = sub_1000155BC(v389, v390, 0);
        if (v392)
        {
          v468 = v392;
          v417 = [v392 localizedName];
          v418 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v466 = v418;
          v473 = v419;

          v420 = objc_opt_self();
          v421 = [v420 mainBundle];
          v422._countAndFlagsBits = 0xD00000000000001CLL;
          v506._object = 0xEB00000000656C74;
          v422._object = 0x8000000100019D10;
          v423._countAndFlagsBits = 0;
          v423._object = 0xE000000000000000;
          v506._countAndFlagsBits = 0x6974207472656C41;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v422, 0, v421, v423, v506);

          sub_1000070C0(&qword_100025A70, &qword_100019850);
          v424 = swift_allocObject();
          v472 = xmmword_1000197F0;
          *(v424 + 16) = xmmword_1000197F0;
          *(v424 + 56) = &type metadata for String;
          v425 = sub_100016740();
          *(v424 + 64) = v425;
          v426 = v473;
          *(v424 + 32) = v418;
          *(v424 + 40) = v426;

          countAndFlagsBits = String.init(format:_:)();
          object = v427;

          v428 = [v420 mainBundle];
          v507._object = 0xED00006567617373;
          v429._countAndFlagsBits = 0xD000000000000029;
          v429._object = 0x8000000100019C70;
          v430._countAndFlagsBits = 0;
          v430._object = 0xE000000000000000;
          v507._countAndFlagsBits = 0x656D207472656C41;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v429, 0, v428, v430, v507);

          v431 = swift_allocObject();
          *(v431 + 16) = v472;
          *(v431 + 56) = &type metadata for String;
          *(v431 + 64) = v425;
          v432 = v473;
          *(v431 + 32) = v466;
          *(v431 + 40) = v432;
          v473 = String.init(format:_:)();
          *&v472 = v433;

          v434 = [v420 mainBundle];
          v435._countAndFlagsBits = 0xD000000000000026;
          v508._object = 0xE600000000000000;
          v435._object = 0x8000000100019D30;
          v436._countAndFlagsBits = 0;
          v436._object = 0xE000000000000000;
          v508._countAndFlagsBits = 0x6E6F74747542;
          v437 = NSLocalizedString(_:tableName:bundle:value:comment:)(v435, 0, v434, v436, v508);
          v211 = v437._countAndFlagsBits;
          v212 = v437._object;

          v438 = [v420 mainBundle];
          v509._object = 0xE600000000000000;
          v439._countAndFlagsBits = 0x6C65636E6143;
          v439._object = 0xE600000000000000;
          v440._countAndFlagsBits = 0;
          v440._object = 0xE000000000000000;
          v509._countAndFlagsBits = 0x6E6F74747542;
          v441 = NSLocalizedString(_:tableName:bundle:value:comment:)(v439, 0, v438, v440, v509);
          v215 = v441._countAndFlagsBits;
          v216 = v441._object;

          v214 = swift_allocObject();
          *(v214 + 16) = v471;
          *(v214 + 24) = v390;
          *(v214 + 32) = v467;
          *(v214 + 40) = v469 & 1;

          v217 = 0;
          v213 = sub_1000167CC;
          goto LABEL_45;
        }

        goto LABEL_102;
      }
    }

    else
    {
    }

LABEL_103:
    v408 = objc_opt_self();
    v409 = [v408 mainBundle];
    v504._object = 0xEB00000000656C74;
    v410._object = 0x8000000100019C40;
    v410._countAndFlagsBits = 0xD000000000000027;
    v411._countAndFlagsBits = 0;
    v411._object = 0xE000000000000000;
    v504._countAndFlagsBits = 0x6974207472656C41;
    v412 = NSLocalizedString(_:tableName:bundle:value:comment:)(v410, 0, v409, v411, v504);
    countAndFlagsBits = v412._countAndFlagsBits;
    object = v412._object;

    v413 = [v408 mainBundle];
    v505._object = 0xED00006567617373;
    v414._countAndFlagsBits = 0xD000000000000029;
    v414._object = 0x8000000100019C70;
    v415._countAndFlagsBits = 0;
    v415._object = 0xE000000000000000;
    v505._countAndFlagsBits = 0x656D207472656C41;
    v416 = NSLocalizedString(_:tableName:bundle:value:comment:)(v414, 0, v413, v415, v505);
    v473 = v416._countAndFlagsBits;
    *&v472 = v416._object;

    v142 = [v408 mainBundle];
    goto LABEL_44;
  }

  v72 = v472;
  (*(v472 + 32))(v20, v58, v16);
  v73 = Logger.testVerification.unsafeMutableAddressor();
  v74 = object;
  v75 = *(object + 2);
  v460 = v73;
  v461 = (object + 16);
  v457 = v75;
  (v75)(v470);
  (*(v72 + 16))(v471, v20, v16);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.info.getter();
  v78 = os_log_type_enabled(v76, v77);
  v79 = v23;
  v462 = v20;
  v442 = v16;
  if (v78)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v456 = v23;
    v82 = v81;
    v475 = v81;
    *v80 = 136315138;
    v83 = v471;
    v84 = UUID.uuidString.getter();
    v86 = v85;
    v87 = *(v72 + 8);
    (v87)(v83, v16);
    v88 = sub_100015768(v84, v86, &v475);

    *(v80 + 4) = v88;
    _os_log_impl(&_mh_execute_header, v76, v77, "Test Verification Session Identifier: %s", v80, 0xCu);
    sub_100007170(v82);
    v79 = v456;
    v89 = object;
  }

  else
  {
    v89 = v74;

    v87 = *(v72 + 8);
    (v87)(v471, v16);
  }

  v93 = v89[1];
  v93(v470, v79);
  v94 = v464;
  v475 = 0;
  v476 = 0xE000000000000000;
  _StringGuts.grow(_:)(76);
  v95._countAndFlagsBits = 0xD00000000000004ALL;
  v95._object = 0x8000000100019BF0;
  String.append(_:)(v95);
  v96._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v96);

  v97 = v468;
  if (v466)
  {
    v98 = v79;
    v99 = v466;
    v100 = [v99 subdivisionCode];
    if (!v100)
    {
      v100 = [v99 countryCode];
    }

    v101 = v100;
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = v103;

    v478._countAndFlagsBits = 0x3D6E6F6967657226;
    v478._object = 0xE800000000000000;
    v105._countAndFlagsBits = v102;
    v105._object = v104;
    String.append(_:)(v105);

    String.append(_:)(v478);

    v79 = v98;
  }

  strcpy(&v478, "&reportType=");
  BYTE5(v478._object) = 0;
  HIWORD(v478._object) = -5120;
  v477 = v463;
  v106._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v106);

  String.append(_:)(v478);

  v107 = v473;
  URL.init(string:)();

  v457(v97, v460, v79);
  sub_100016820(v107, v94, &unk_100025A30, &unk_100019828);
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v478._countAndFlagsBits = v111;
    *v110 = 136315138;
    v471 = v87;
    v112 = v79;
    v113 = v93;
    sub_100016820(v94, v458, &unk_100025A30, &unk_100019828);
    v114 = String.init<A>(describing:)();
    v115 = v94;
    v116 = v114;
    v118 = v117;
    sub_10001759C(v115, &unk_100025A30, &unk_100019828);
    v119 = sub_100015768(v116, v118, &v478._countAndFlagsBits);

    *(v110 + 4) = v119;
    _os_log_impl(&_mh_execute_header, v108, v109, "Opening Settings to %s", v110, 0xCu);
    sub_100007170(v111);

    v120 = v112;
    v87 = v471;
    v113(v468, v120);
  }

  else
  {

    sub_10001759C(v94, &unk_100025A30, &unk_100019828);
    v93(v97, v79);
  }

  v143 = v442;
  v144 = v465;
  v145 = [objc_opt_self() defaultWorkspace];
  v146 = v467;
  if (v145)
  {
    v147 = v145;
    sub_100016820(v473, v144, &unk_100025A30, &unk_100019828);
    v148 = type metadata accessor for URL();
    v149 = *(v148 - 8);
    v151 = 0;
    if ((*(v149 + 48))(v144, 1, v148) != 1)
    {
      URL._bridgeToObjectiveC()(v150);
      v151 = v152;
      (*(v149 + 8))(v144, v148);
    }

    sub_1000070C0(&qword_100025A40, &qword_100019838);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000196B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v154;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v155;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    sub_100016570(inited);
    swift_setDeallocating();
    sub_1000070C0(&qword_100025A48, &qword_100019840);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v147 openSensitiveURL:v151 withOptions:isa];
  }

  if ((v469 & 1) == 0 && UIBackgroundTaskInvalid != v146)
  {
    v157 = [objc_opt_self() sharedApplication];
    [v157 endBackgroundTask:v146];
  }

  sub_10001759C(v473, &unk_100025A30, &unk_100019828);
  (v87)(v462, v143);
}

void sub_100014674(char a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = Logger.testVerification.unsafeMutableAddressor();
  v14 = *(v7 + 16);
  if (a1)
  {
    v14(v10, v13, v6);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "User chose Settings", v17, 2u);
    }

    (*(v7 + 8))(v10, v6);
    v18 = [objc_opt_self() defaultWorkspace];
    if (v18)
    {
      v19 = v18;
      v20 = String._bridgeToObjectiveC()();
      [v19 openApplicationWithBundleID:v20];
    }
  }

  else
  {
    v14(v12, v13, v6);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "User chose OK", v23, 2u);
    }

    (*(v7 + 8))(v12, v6);
  }

  if ((a3 & 1) == 0 && UIBackgroundTaskInvalid != a2)
  {
    v24 = [objc_opt_self() sharedApplication];
    [v24 endBackgroundTask:a2];
  }
}

void sub_100014950(char a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = Logger.testVerification.unsafeMutableAddressor();
  v18 = *(v11 + 16);
  if (a1)
  {
    v18(v14, v17, v10);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "User chose Cancel", v21, 2u);
    }

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18(v16, v17, v10);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = a4;
      v25 = a5;
      v26 = v24;
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100015768(a2, a3, &v33);
      _os_log_impl(&_mh_execute_header, v22, v23, "User chose Open App, launching: %s", v26, 0xCu);
      sub_100007170(v27);

      a5 = v25;
      a4 = v32;
    }

    (*(v11 + 8))(v16, v10);
    v28 = [objc_opt_self() defaultWorkspace];
    if (v28)
    {
      v29 = v28;
      v30 = String._bridgeToObjectiveC()();
      [v29 openApplicationWithBundleID:v30];
    }
  }

  if ((a5 & 1) == 0 && UIBackgroundTaskInvalid != a4)
  {
    v31 = [objc_opt_self() sharedApplication];
    [v31 endBackgroundTask:a4];
  }
}

void sub_100014C98(char a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v71 = a5;
  v68 = a2;
  v67 = sub_1000070C0(&unk_100025A30, &unk_100019828);
  v7 = __chkstk_darwin(v67);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v66 = &v64 - v11;
  v12 = __chkstk_darwin(v10);
  v69 = &v64 - v13;
  __chkstk_darwin(v12);
  v72 = &v64 - v14;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v70 = &v64 - v21;
  __chkstk_darwin(v20);
  v23 = &v64 - v22;
  v24 = Logger.testVerification.unsafeMutableAddressor();
  v25 = *(v16 + 16);
  if (a1)
  {
    v25(v19, v24, v15);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "User chose Cancel", v28, 2u);
    }

    (*(v16 + 8))(v19, v15);
  }

  else
  {
    v64 = v9;
    v25(v23, v24, v15);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "User chose Set Up", v31, 2u);
    }

    v65 = *(v16 + 8);
    v65(v23, v15);
    v74 = 0xD000000000000039;
    v75 = 0x8000000100019F20;
    if (v68)
    {
      v32 = [v68 regionCode];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v73._countAndFlagsBits = 47;
      v73._object = 0xE100000000000000;
      v36._countAndFlagsBits = v33;
      v36._object = v35;
      String.append(_:)(v36);

      String.append(_:)(v73);
    }

    v37 = v72;
    URL.init(string:)();

    v38 = v70;
    v25(v70, v24, v15);
    v39 = v69;
    sub_100016820(v37, v69, &unk_100025A30, &unk_100019828);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v73._countAndFlagsBits = v43;
      *v42 = 136315138;
      v44 = a4;
      sub_100016820(v39, v66, &unk_100025A30, &unk_100019828);
      v45 = String.init<A>(describing:)();
      v46 = v39;
      v48 = v47;
      sub_10001759C(v46, &unk_100025A30, &unk_100019828);
      v49 = sub_100015768(v45, v48, &v73._countAndFlagsBits);

      *(v42 + 4) = v49;
      a4 = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "Opening Settings to %s", v42, 0xCu);
      sub_100007170(v43);

      v50 = v70;
    }

    else
    {

      sub_10001759C(v39, &unk_100025A30, &unk_100019828);
      v50 = v38;
    }

    v65(v50, v15);
    v51 = [objc_opt_self() defaultWorkspace];
    if (v51)
    {
      v52 = v51;
      v53 = v64;
      sub_100016820(v72, v64, &unk_100025A30, &unk_100019828);
      v54 = type metadata accessor for URL();
      v55 = *(v54 - 8);
      v57 = 0;
      if ((*(v55 + 48))(v53, 1, v54) != 1)
      {
        URL._bridgeToObjectiveC()(v56);
        v57 = v58;
        (*(v55 + 8))(v53, v54);
      }

      sub_1000070C0(&qword_100025A40, &qword_100019838);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000196B0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v60;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 1;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v61;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = 1;
      sub_100016570(inited);
      swift_setDeallocating();
      sub_1000070C0(&qword_100025A48, &qword_100019840);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v52 openSensitiveURL:v57 withOptions:isa];
    }

    sub_10001759C(v72, &unk_100025A30, &unk_100019828);
  }

  if ((v71 & 1) == 0 && UIBackgroundTaskInvalid != a4)
  {
    v63 = [objc_opt_self() sharedApplication];
    [v63 endBackgroundTask:a4];
  }
}

id sub_1000154D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100015544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001555C()
{

  return _swift_deallocObject(v0, 68, 7);
}

id sub_1000155BC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100015698(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10001570C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100015768(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100015768(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100015834(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100015D20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007170(v11);
  return v7;
}

unint64_t sub_100015834(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100015940(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100015940(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001598C(a1, a2);
  sub_100015ABC(&off_100020B30);
  return v3;
}

char *sub_10001598C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100015BA8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100015BA8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100015ABC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100015C1C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100015BA8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000070C0(&qword_100025A28, &qword_100019820);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100015C1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000070C0(&qword_100025A28, &qword_100019820);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100015D10(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100015D20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100015D7C(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100015F08(a1, v2);
}

unint64_t sub_100015DC0(uint64_t a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFString(0);
    sub_1000166A0(&qword_100025868, type metadata accessor for CFString, &unk_1000190EC);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = Hasher._finalize()();

  return sub_100015F74(a1, v2);
}

unint64_t sub_100015E90(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100016094(a1, a2, v4);
}

unint64_t sub_100015F08(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100015F74(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_1000166A0(&qword_100025868, type metadata accessor for CFString, &unk_1000190EC);
          v10 = v9;
          v11 = static _CFObject.== infix(_:_:)();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100016094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_10001614C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000177C4(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000177C4(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

unint64_t sub_100016364(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000070C0(&qword_100025860, &qword_100019750);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_100015D7C(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_100015D7C(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100016474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000070C0(&unk_100025AD0, qword_100019870);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = v5;

      result = sub_100015DC0(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100016570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000070C0(&unk_100025A80, &qword_100019858);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016820(v4, &v13, &qword_100025A48, &qword_100019840);
      v5 = v13;
      v6 = v14;
      result = sub_100015E90(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100016888(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000166A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000166E8()
{

  return _swift_deallocObject(v0, 41, 7);
}

unint64_t sub_100016740()
{
  result = qword_100025A78;
  if (!qword_100025A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A78);
  }

  return result;
}

uint64_t sub_100016794()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100016820(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000070C0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100016888(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100016898()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000168D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001691C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100016968(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = __chkstk_darwin(v7);
  v10 = &v27 - v9;
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v5;
    v14 = [a2 userActivities];
    sub_1000177C4(0, &qword_100025AB8, NSUserActivity_ptr);
    sub_100017764(&unk_100025AC0, &qword_100025AB8, NSUserActivity_ptr);
    v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = sub_10000C314(v15, &qword_100025AB8, NSUserActivity_ptr);

    if (v16)
    {
      sub_10000C698(v16);
    }

    v17 = [a2 URLContexts];
    sub_1000177C4(0, &qword_100025AA8, UIOpenURLContext_ptr);
    sub_100017764(&qword_100025AB0, &qword_100025AA8, UIOpenURLContext_ptr);
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = sub_10000C314(v18, &qword_100025AA8, UIOpenURLContext_ptr);

    v21 = v27;
    v20 = v28;
    if (v19)
    {
      v22 = [v19 URL];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = *(v20 + 32);
      v23(v12, v10, v4);
      type metadata accessor for ENUIPublicHealthAgencyModel();
      (*(v20 + 16))(v21, v12, v4);
      v24 = (*(v20 + 80) + 24) & ~*(v20 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v2;
      v23((v25 + v24), v21, v4);
      v26 = v2;
      static ENUIPublicHealthAgencyModel.refreshRegions(completion:)();

      return (*(v20 + 8))(v12, v4);
    }
  }

  return result;
}

void *sub_100016CB4(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - v9;
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  result = sub_10000C314(a1, &qword_100025AA8, UIOpenURLContext_ptr);
  if (result)
  {
    v14 = result;
    v15 = [result URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = *(v4 + 32);
    v16(v12, v10, v3);
    type metadata accessor for ENUIPublicHealthAgencyModel();
    (*(v4 + 16))(v7, v12, v3);
    v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    v16((v18 + v17), v7, v3);
    v19 = v1;
    static ENUIPublicHealthAgencyModel.refreshRegions(completion:)();

    return (*(v4 + 8))(v12, v3);
  }

  return result;
}

uint64_t sub_100016ECC(uint64_t a1, void *a2)
{
  v44 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000070C0(&unk_100025A30, &unk_100019828);
  v7 = __chkstk_darwin(v43);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v42 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v42 - v14;
  __chkstk_darwin(v13);
  v17 = &v42 - v16;
  v46 = 0xD000000000000039;
  v47 = 0x8000000100019F20;
  if (a2)
  {
    v45._countAndFlagsBits = 47;
    v45._object = 0xE100000000000000;
    v18._countAndFlagsBits = v44;
    v18._object = a2;
    String.append(_:)(v18);
    String.append(_:)(v45);
  }

  URL.init(string:)();

  v19 = Logger.launcher.unsafeMutableAddressor();
  v20 = v6;
  (*(v4 + 16))(v6, v19, v3);
  sub_100016820(v17, v15, &unk_100025A30, &unk_100019828);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = v17;
    v24 = v23;
    v25 = swift_slowAlloc();
    v45._countAndFlagsBits = v25;
    *v24 = 136315138;
    v42 = v20;
    sub_100016820(v15, v12, &unk_100025A30, &unk_100019828);
    v26 = String.init<A>(describing:)();
    v43 = v3;
    v28 = v27;
    sub_10001759C(v15, &unk_100025A30, &unk_100019828);
    v29 = sub_100015768(v26, v28, &v45._countAndFlagsBits);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "Opening Settings to %s", v24, 0xCu);
    sub_100007170(v25);

    v17 = v44;

    (*(v4 + 8))(v42, v43);
  }

  else
  {

    sub_10001759C(v15, &unk_100025A30, &unk_100019828);
    (*(v4 + 8))(v20, v3);
  }

  v30 = [objc_opt_self() defaultWorkspace];
  if (v30)
  {
    v31 = v30;
    sub_100016820(v17, v9, &unk_100025A30, &unk_100019828);
    v32 = type metadata accessor for URL();
    v33 = *(v32 - 8);
    v35 = 0;
    if ((*(v33 + 48))(v9, 1, v32) != 1)
    {
      URL._bridgeToObjectiveC()(v34);
      v35 = v36;
      (*(v33 + 8))(v9, v32);
    }

    sub_1000070C0(&qword_100025A40, &qword_100019838);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000196B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v38;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v39;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    sub_100016570(inited);
    swift_setDeallocating();
    sub_1000070C0(&qword_100025A48, &qword_100019840);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v31 openSensitiveURL:v35 withOptions:isa];
  }

  return sub_10001759C(v17, &unk_100025A30, &unk_100019828);
}

uint64_t sub_10001745C()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1000174B4(uint64_t result, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1000174C4(result, a2, a3, a4, SBYTE4(a4));
  }
}

void sub_1000174C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else if (!a5)
  {
  }
}

const char *sub_100017528(unsigned int a1)
{
  if (a1 > 5)
  {
    return "?";
  }

  else
  {
    return (&off_1000211D0)[a1];
  }
}

void sub_10001754C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v6 = a3;
  }
}

uint64_t sub_10001759C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000070C0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000175FC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1000176D4()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10000CA40(v3, (v0 + v2), v4);
}

uint64_t sub_100017764(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000177C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000177B8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1000177C4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10001780C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}