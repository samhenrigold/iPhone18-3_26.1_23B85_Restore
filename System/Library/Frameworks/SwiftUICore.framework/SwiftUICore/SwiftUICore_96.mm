char *specialized SDFStyle.Gradient.init(from:)(void *a1)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = MEMORY[0x1E69E7CC0];
  if (v4 >= v5)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_60:
    a1[3] = 0;
    return v7;
  }

  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = a1[3];
    if (v8)
    {
      v9 = a1[4];
      if (v4 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v4)
      {
        goto LABEL_61;
      }

      a1[3] = 0;
    }

    v8 = ProtobufDecoder.decodeVarint()(v8);
    if (v1)
    {
      goto LABEL_62;
    }

    if (v8 < 8)
    {
LABEL_61:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_62:

      return v7;
    }

LABEL_11:
    v10 = v8 & 7;
    if (v8 >> 3 == 2)
    {
      if (v10 == 2)
      {
        v24 = ProtobufDecoder.decodeVarint()(v8);
        if (v1)
        {
          goto LABEL_62;
        }

        if (v24 < 0)
        {
          goto LABEL_68;
        }

        v22 = a1[1];
        if (v5 < v22 + v24)
        {
          goto LABEL_61;
        }

        a1[3] = 21;
        a1[4] = v22 + v24;
      }

      else
      {
        if (v10 != 5)
        {
          goto LABEL_61;
        }

        v22 = a1[1];
      }

      if (v5 < (v22 + 1))
      {
        goto LABEL_61;
      }

      v25 = *v22;
      a1[1] = v22 + 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v27 = *(v6 + 2);
      v26 = *(v6 + 3);
      v2 = (v27 + 1);
      if (v27 >= v26 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v6);
      }

      *(v6 + 2) = v2;
      *&v6[8 * v27 + 32] = v25;
      goto LABEL_4;
    }

    if (v8 >> 3 != 1)
    {
      if ((v8 & 7) > 1)
      {
        if (v10 == 2)
        {
          v28 = ProtobufDecoder.decodeVarint()(v8);
          if (v1)
          {
            goto LABEL_62;
          }

          if (v28 < 0)
          {
            goto LABEL_69;
          }

          v23 = a1[1] + v28;
          if (v5 < v23)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (v10 != 5)
          {
            goto LABEL_61;
          }

          v23 = a1[1] + 4;
          if (v5 < v23)
          {
            goto LABEL_61;
          }
        }
      }

      else
      {
        if ((v8 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v8);
          if (v1)
          {
            goto LABEL_62;
          }

          goto LABEL_4;
        }

        if (v10 != 1)
        {
          goto LABEL_61;
        }

        v23 = a1[1] + 8;
        if (v5 < v23)
        {
          goto LABEL_61;
        }
      }

      a1[1] = v23;
      goto LABEL_4;
    }

    if (v10 != 2)
    {
      goto LABEL_61;
    }

    v2 = a1[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      v2 = isUniquelyReferenced_nonNull_native;
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v2);
      v2 = isUniquelyReferenced_nonNull_native;
    }

    *(v2 + 2) = v13 + 1;
    *&v2[8 * v13 + 32] = v5;
    a1[5] = v2;
    v14 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
    if (v1)
    {
      goto LABEL_62;
    }

    if (v14 < 0)
    {
      break;
    }

    v15 = a1[1] + v14;
    if (v5 < v15)
    {
      goto LABEL_61;
    }

    a1[2] = v15;
    specialized Color.ResolvedHDR.init(from:)(a1, &v34);
    v2 = a1[5];
    if (!*(v2 + 2))
    {
      goto LABEL_66;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = *(v2 + 2);
      if (!v16)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v16 = *(v2 + 2);
      if (!v16)
      {
        goto LABEL_67;
      }
    }

    v17 = v16 - 1;
    v5 = *&v2[8 * v17 + 32];
    *(v2 + 2) = v17;
    a1[5] = v2;
    a1[2] = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v19 = *(v7 + 2);
    v18 = *(v7 + 3);
    v2 = (v19 + 1);
    if (v19 >= v18 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v7);
    }

    *(v7 + 2) = v2;
    v20 = &v7[20 * v19];
    v21 = v34;
    *(v20 + 12) = v35;
    *(v20 + 2) = v21;
LABEL_4:
    v4 = a1[1];
    if (v4 >= v5)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  v32 = result;
  v33 = *(result + 2);
  if (v33)
  {
    v30 = v33 - 1;
    v31 = *&result[8 * v30 + 32];
    *(result + 2) = v30;

    a1[5] = v32;
    a1[2] = v31;
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t specialized SDFStyle.Shadow.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 0;
    v47 = xmmword_18DD85540;
    v9 = 0.0;
    v10 = 2143289344;
    v11 = 0.0;
    v12 = 0;
    v13 = 0;
LABEL_4:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 8) = v47;
    *(a2 + 24) = v10;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
    *(a2 + 48) = v13;
    *(a2 + 56) = v7;
    *(a2 + 57) = v8;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v47 = xmmword_18DD85540;
  v9 = 0.0;
  v10 = 2143289344;
  v11 = 0.0;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v14 = v3[4];
      if (v5 < v14)
      {
        goto LABEL_13;
      }

      if (v14 < v5)
      {
        goto LABEL_103;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_103;
    }

LABEL_13:
    v15 = result >> 3;
    v16 = result & 7;
    if (result >> 3 <= 3)
    {
      break;
    }

    switch(v15)
    {
      case 4uLL:
        if (v16 != 2)
        {
          goto LABEL_103;
        }

        v20 = v3[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
          v20 = isUniquelyReferenced_nonNull_native;
        }

        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v23 >= v22 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
          v20 = isUniquelyReferenced_nonNull_native;
        }

        *(v20 + 16) = v23 + 1;
        *(v20 + 8 * v23 + 32) = v6;
        v3[5] = v20;
        result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_110;
        }

        v24 = v3[1] + result;
        if (v6 < v24)
        {
          goto LABEL_103;
        }

        v3[2] = v24;
        specialized CGPoint.init(from:)(v3);
        v27 = v3[5];
        if (!*(v27 + 16))
        {
          goto LABEL_111;
        }

        v12 = v25;
        v13 = v26;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v28 = *(v27 + 16);
          if (!v28)
          {
            goto LABEL_113;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
          v27 = result;
          v28 = *(result + 16);
          if (!v28)
          {
            goto LABEL_113;
          }
        }

        v29 = v28 - 1;
        v6 = *(v27 + 8 * v29 + 32);
        *(v27 + 16) = v29;
        v3[5] = v27;
        v3[2] = v6;
        break;
      case 5uLL:
        if ((result & 7) != 0)
        {
          if (v16 != 2)
          {
            goto LABEL_103;
          }

          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_115;
          }

          v39 = v3[1] + result;
          if (v6 < v39)
          {
            goto LABEL_103;
          }

          v3[3] = 40;
          v3[4] = v39;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        v7 = result != 0;
        break;
      case 6uLL:
        if ((result & 7) != 0)
        {
          if (v16 != 2)
          {
            goto LABEL_103;
          }

          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_114;
          }

          v18 = v3[1] + result;
          if (v6 < v18)
          {
            goto LABEL_103;
          }

          v3[3] = 48;
          v3[4] = v18;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        v8 = result != 0;
        break;
      default:
LABEL_48:
        if ((result & 7) > 1)
        {
          if (v16 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_118;
            }

            v30 = v3[1] + result;
            if (v6 < v30)
            {
              goto LABEL_103;
            }
          }

          else
          {
            if (v16 != 5)
            {
              goto LABEL_103;
            }

            v30 = v3[1] + 4;
            if (v6 < v30)
            {
              goto LABEL_103;
            }
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            break;
          }

          if (v16 != 1)
          {
            goto LABEL_103;
          }

          v30 = v3[1] + 8;
          if (v6 < v30)
          {
            goto LABEL_103;
          }
        }

        v3[1] = v30;
        break;
    }

LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v15 == 1)
  {
    if (v16 == 5)
    {
      v40 = v3[1];
      if (v6 < (v40 + 1))
      {
        goto LABEL_103;
      }

      v41 = *v40;
      v3[1] = v40 + 1;
      v9 = v41;
    }

    else
    {
      if (v16 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_116;
        }

        v19 = v3[1];
        if (v6 < v19 + result)
        {
          goto LABEL_103;
        }

        v3[3] = 9;
        v3[4] = v19 + result;
      }

      else
      {
        if (v16 != 1)
        {
          goto LABEL_103;
        }

        v19 = v3[1];
      }

      if (v6 < (v19 + 1))
      {
        goto LABEL_103;
      }

      v9 = *v19;
      v3[1] = v19 + 1;
    }

    goto LABEL_6;
  }

  if (v15 != 2)
  {
    if (v15 != 3)
    {
      goto LABEL_48;
    }

    if (v16 == 5)
    {
      v42 = v3[1];
      if (v6 < (v42 + 1))
      {
        goto LABEL_103;
      }

      v43 = *v42;
      v3[1] = v42 + 1;
      v11 = v43;
    }

    else
    {
      if (v16 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_117;
        }

        v17 = v3[1];
        if (v6 < v17 + result)
        {
          goto LABEL_103;
        }

        v3[3] = 25;
        v3[4] = v17 + result;
      }

      else
      {
        if (v16 != 1)
        {
          goto LABEL_103;
        }

        v17 = v3[1];
      }

      if (v6 < (v17 + 1))
      {
        goto LABEL_103;
      }

      v11 = *v17;
      v3[1] = v17 + 1;
    }

    goto LABEL_6;
  }

  if (v16 != 2)
  {
    goto LABEL_103;
  }

  v31 = v3[5];
  v32 = swift_isUniquelyReferenced_nonNull_native();
  if ((v32 & 1) == 0)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1, v31);
    v31 = v32;
  }

  v34 = *(v31 + 16);
  v33 = *(v31 + 24);
  if (v34 >= v33 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
    v31 = v32;
  }

  *(v31 + 16) = v34 + 1;
  *(v31 + 8 * v34 + 32) = v6;
  v3[5] = v31;
  result = ProtobufDecoder.decodeVarint()(v32);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v35 = v3[1] + result;
    if (v6 < v35)
    {
      goto LABEL_103;
    }

    v3[2] = v35;
    specialized Color.ResolvedHDR.init(from:)(v3, &v48);
    v36 = v3[5];
    if (!*(v36 + 16))
    {
      goto LABEL_112;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v37 = *(v36 + 16);
      if (!v37)
      {
        goto LABEL_102;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
      v36 = result;
      v37 = *(result + 16);
      if (!v37)
      {
LABEL_102:
        __break(1u);
LABEL_103:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }
    }

    v38 = v37 - 1;
    v6 = *(v36 + 8 * v38 + 32);
    *(v36 + 16) = v38;
    v3[5] = v36;
    v3[2] = v6;
    v47 = v48;
    v10 = v49;
    goto LABEL_6;
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
  __break(1u);
  do
  {
    __break(1u);
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v44 = *(result + 16);
    if (v44)
    {
      goto LABEL_108;
    }

    __break(1u);
    a2 = v3[5];
  }

  while (!*(a2 + 16));
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v44 = *(a2 + 16);
    if (v44)
    {
LABEL_108:
      v45 = v44 - 1;
      v46 = *(a2 + 8 * v45 + 32);
      *(a2 + 16) = v45;
      v3[5] = a2;
      v3[2] = v46;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v44 = *(result + 16);
    if (v44)
    {
      goto LABEL_108;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized SDFStyle.GlassDisplacement.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0.0;
  if (v5 >= v6)
  {
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
LABEL_4:
    v3[3] = 0;
    *a2 = v10;
    *(a2 + 8) = 0;
    *(a2 + 16) = v9;
    *(a2 + 24) = v8;
    *(a2 + 32) = v7;
    return result;
  }

  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v11 = v3[4];
      if (v5 < v11)
      {
        goto LABEL_15;
      }

      if (v11 < v5)
      {
        goto LABEL_80;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_80;
    }

LABEL_15:
    v12 = result >> 3;
    v13 = result & 7;
    if (result >> 3 > 6)
    {
      break;
    }

    if (v12 == 1)
    {
      if (v13 != 5)
      {
        if (v13 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_83;
          }

          v16 = v3[1];
          if (v6 < v16 + result)
          {
            goto LABEL_80;
          }

          v3[3] = 9;
          v3[4] = v16 + result;
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_80;
          }

          v16 = v3[1];
        }

        v5 = (v16 + 1);
        if (v6 < (v16 + 1))
        {
          goto LABEL_80;
        }

        v10 = *v16;
        goto LABEL_7;
      }

      v22 = v3[1];
      v5 = (v22 + 1);
      if (v6 < (v22 + 1))
      {
        goto LABEL_80;
      }

      v23 = *v22;
      v3[1] = v5;
      v10 = v23;
      goto LABEL_8;
    }

    if (v12 == 3)
    {
      if (v13 != 5)
      {
        if (v13 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_85;
          }

          v14 = v3[1];
          if (v6 < v14 + result)
          {
            goto LABEL_80;
          }

          v3[3] = 25;
          v3[4] = v14 + result;
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_80;
          }

          v14 = v3[1];
        }

        v5 = (v14 + 1);
        if (v6 < (v14 + 1))
        {
          goto LABEL_80;
        }

        v9 = *v14;
        goto LABEL_7;
      }

      v18 = v3[1];
      v5 = (v18 + 1);
      if (v6 < (v18 + 1))
      {
        goto LABEL_80;
      }

      v19 = *v18;
      v3[1] = v5;
      v9 = v19;
      goto LABEL_8;
    }

LABEL_28:
    if ((result & 7) > 1)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_80:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          return swift_willThrow();
        }

        v5 = v3[1] + result;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_80;
        }

        v5 = v3[1] + 4;
      }

LABEL_6:
      if (v6 < v5)
      {
        goto LABEL_80;
      }

LABEL_7:
      v3[1] = v5;
      goto LABEL_8;
    }

    if ((result & 7) != 0)
    {
      if (v13 != 1)
      {
        goto LABEL_80;
      }

      v5 = v3[1] + 8;
      goto LABEL_6;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v5 = v3[1];
LABEL_8:
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v12 == 7)
  {
    if (v13 != 5)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }

        v17 = v3[1];
        if (v6 < v17 + result)
        {
          goto LABEL_80;
        }

        v3[3] = 57;
        v3[4] = v17 + result;
      }

      else
      {
        if (v13 != 1)
        {
          goto LABEL_80;
        }

        v17 = v3[1];
      }

      v5 = (v17 + 1);
      if (v6 < (v17 + 1))
      {
        goto LABEL_80;
      }

      v8 = *v17;
      goto LABEL_7;
    }

    v24 = v3[1];
    v5 = (v24 + 1);
    if (v6 < (v24 + 1))
    {
      goto LABEL_80;
    }

    v25 = *v24;
    v3[1] = v5;
    v8 = v25;
    goto LABEL_8;
  }

  if (v12 != 8)
  {
    goto LABEL_28;
  }

  if (v13 == 5)
  {
    v20 = v3[1];
    v5 = (v20 + 1);
    if (v6 < (v20 + 1))
    {
      goto LABEL_80;
    }

    v21 = *v20;
    v3[1] = v5;
    v7 = v21;
    goto LABEL_8;
  }

  if (v13 != 2)
  {
    if (v13 != 1)
    {
      goto LABEL_80;
    }

    v15 = v3[1];
LABEL_53:
    v5 = (v15 + 1);
    if (v6 < (v15 + 1))
    {
      goto LABEL_80;
    }

    v7 = *v15;
    goto LABEL_7;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v15 = v3[1];
    if (v6 < v15 + result)
    {
      goto LABEL_80;
    }

    v3[3] = 65;
    v3[4] = v15 + result;
    goto LABEL_53;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

unint64_t specialized SDFStyle.GlassHighlight.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v55 = _Q0;
    v13 = 0.5;
    v14 = 0.0;
    v15 = 2143289344;
    v16 = 3.14159265;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
LABEL_4:
    v3[3] = 0;
    *a2 = v14;
    *(a2 + 8) = v55;
    *(a2 + 24) = v15;
    *(a2 + 32) = v17;
    *(a2 + 40) = v18;
    *(a2 + 48) = v19;
    *(a2 + 56) = v16;
    *(a2 + 64) = v13;
    *(a2 + 72) = v7;
    return result;
  }

  v7 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v55 = _Q0;
  v13 = 0.5;
  v14 = 0.0;
  v15 = 2143289344;
  v16 = 3.14159265;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v21 = v3[4];
      if (v5 < v21)
      {
        goto LABEL_13;
      }

      if (v21 < v5)
      {
        goto LABEL_133;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_133;
    }

LABEL_13:
    v22 = result >> 3;
    v23 = result & 7;
    if (result >> 3 <= 4)
    {
      break;
    }

    if (result >> 3 > 6)
    {
      if (v22 == 7)
      {
        if ((result & 7) != 0)
        {
          if (v23 != 2)
          {
            goto LABEL_133;
          }

          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_138;
          }

          v38 = v3[1] + result;
          if (v6 < v38)
          {
            goto LABEL_133;
          }

          v3[3] = 56;
          v3[4] = v38;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        v7 = result != 0;
      }

      else
      {
        if (v22 != 8)
        {
LABEL_68:
          if ((result & 7) > 1)
          {
            if (v23 == 2)
            {
              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_145;
              }

              v39 = v3[1] + result;
              if (v6 < v39)
              {
                goto LABEL_133;
              }
            }

            else
            {
              if (v23 != 5)
              {
                goto LABEL_133;
              }

              v39 = v3[1] + 4;
              if (v6 < v39)
              {
                goto LABEL_133;
              }
            }
          }

          else
          {
            if ((result & 7) == 0)
            {
              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              goto LABEL_6;
            }

            if (v23 != 1)
            {
              goto LABEL_133;
            }

            v39 = v3[1] + 8;
            if (v6 < v39)
            {
              goto LABEL_133;
            }
          }

          v3[1] = v39;
          goto LABEL_6;
        }

        if (v23 == 5)
        {
          v50 = v3[1];
          if (v6 < (v50 + 1))
          {
            goto LABEL_133;
          }

          v51 = *v50;
          v3[1] = v50 + 1;
          v14 = v51;
        }

        else
        {
          if (v23 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_142;
            }

            v27 = v3[1];
            if (v6 < v27 + result)
            {
              goto LABEL_133;
            }

            v3[3] = 65;
            v3[4] = v27 + result;
          }

          else
          {
            if (v23 != 1)
            {
              goto LABEL_133;
            }

            v27 = v3[1];
          }

          if (v6 < (v27 + 1))
          {
            goto LABEL_133;
          }

          v14 = *v27;
          v3[1] = v27 + 1;
        }
      }
    }

    else if (v22 == 5)
    {
      if (v23 == 5)
      {
        v40 = v3[1];
        if (v6 < (v40 + 1))
        {
          goto LABEL_133;
        }

        v41 = *v40;
        v3[1] = v40 + 1;
        v16 = v41;
      }

      else
      {
        if (v23 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_143;
          }

          v36 = v3[1];
          if (v6 < v36 + result)
          {
            goto LABEL_133;
          }

          v3[3] = 41;
          v3[4] = v36 + result;
        }

        else
        {
          if (v23 != 1)
          {
            goto LABEL_133;
          }

          v36 = v3[1];
        }

        if (v6 < (v36 + 1))
        {
          goto LABEL_133;
        }

        v16 = *v36;
        v3[1] = v36 + 1;
      }
    }

    else
    {
      if (v22 != 6)
      {
        goto LABEL_68;
      }

      if (v23 == 5)
      {
        v46 = v3[1];
        if (v6 < (v46 + 1))
        {
          goto LABEL_133;
        }

        v47 = *v46;
        v3[1] = v46 + 1;
        v13 = v47;
      }

      else
      {
        if (v23 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_139;
          }

          v25 = v3[1];
          if (v6 < v25 + result)
          {
            goto LABEL_133;
          }

          v3[3] = 49;
          v3[4] = v25 + result;
        }

        else
        {
          if (v23 != 1)
          {
            goto LABEL_133;
          }

          v25 = v3[1];
        }

        if (v6 < (v25 + 1))
        {
          goto LABEL_133;
        }

        v13 = *v25;
        v3[1] = v25 + 1;
      }
    }

LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (result >> 3 > 2)
  {
    if (v22 == 3)
    {
      if (v23 == 5)
      {
        v42 = v3[1];
        if (v6 < (v42 + 1))
        {
          goto LABEL_133;
        }

        v43 = *v42;
        v3[1] = v42 + 1;
        v18 = v43;
      }

      else
      {
        if (v23 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_144;
          }

          v37 = v3[1];
          if (v6 < v37 + result)
          {
            goto LABEL_133;
          }

          v3[3] = 25;
          v3[4] = v37 + result;
        }

        else
        {
          if (v23 != 1)
          {
            goto LABEL_133;
          }

          v37 = v3[1];
        }

        if (v6 < (v37 + 1))
        {
          goto LABEL_133;
        }

        v18 = *v37;
        v3[1] = v37 + 1;
      }
    }

    else
    {
      if (v22 != 4)
      {
        goto LABEL_68;
      }

      if (v23 == 5)
      {
        v48 = v3[1];
        if (v6 < (v48 + 1))
        {
          goto LABEL_133;
        }

        v49 = *v48;
        v3[1] = v48 + 1;
        v19 = v49;
      }

      else
      {
        if (v23 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_140;
          }

          v26 = v3[1];
          if (v6 < v26 + result)
          {
            goto LABEL_133;
          }

          v3[3] = 33;
          v3[4] = v26 + result;
        }

        else
        {
          if (v23 != 1)
          {
            goto LABEL_133;
          }

          v26 = v3[1];
        }

        if (v6 < (v26 + 1))
        {
          goto LABEL_133;
        }

        v19 = *v26;
        v3[1] = v26 + 1;
      }
    }

    goto LABEL_6;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
      goto LABEL_68;
    }

    if (v23 == 5)
    {
      v44 = v3[1];
      if (v6 < (v44 + 1))
      {
        goto LABEL_133;
      }

      v45 = *v44;
      v3[1] = v44 + 1;
      v17 = v45;
    }

    else
    {
      if (v23 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_141;
        }

        v24 = v3[1];
        if (v6 < v24 + result)
        {
          goto LABEL_133;
        }

        v3[3] = 17;
        v3[4] = v24 + result;
      }

      else
      {
        if (v23 != 1)
        {
          goto LABEL_133;
        }

        v24 = v3[1];
      }

      if (v6 < (v24 + 1))
      {
        goto LABEL_133;
      }

      v17 = *v24;
      v3[1] = v24 + 1;
    }

    goto LABEL_6;
  }

  if (v23 != 2)
  {
    goto LABEL_133;
  }

  v28 = v3[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1, v28);
    v28 = isUniquelyReferenced_nonNull_native;
  }

  v31 = *(v28 + 16);
  v30 = *(v28 + 24);
  if (v31 >= v30 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v28);
    v28 = isUniquelyReferenced_nonNull_native;
  }

  *(v28 + 16) = v31 + 1;
  *(v28 + 8 * v31 + 32) = v6;
  v3[5] = v28;
  result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v32 = v3[1] + result;
    if (v6 < v32)
    {
      goto LABEL_133;
    }

    v3[2] = v32;
    specialized Color.ResolvedHDR.init(from:)(v3, &v56);
    v33 = v3[5];
    if (!*(v33 + 16))
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v34 = *(v33 + 16);
      if (!v34)
      {
        goto LABEL_132;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
      v33 = result;
      v34 = *(result + 16);
      if (!v34)
      {
LABEL_132:
        __break(1u);
LABEL_133:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }
    }

    v35 = v34 - 1;
    v6 = *(v33 + 8 * v35 + 32);
    *(v33 + 16) = v35;
    v3[5] = v33;
    v3[2] = v6;
    v55 = v56;
    v15 = v57;
    goto LABEL_6;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v54 = *(result + 16);
  if (v54)
  {
    v52 = v54 - 1;
    v53 = *(result + 8 * v52 + 32);
    *(result + 16) = v52;
    v3[5] = result;
    v3[2] = v53;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized SDFStyle.OutputSDF.init(from:)(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  while (1)
  {
    while (1)
    {
      if (v3 >= v4)
      {
        *(a1 + 24) = 0;
        return;
      }

      v5 = *(a1 + 24);
      if (v5)
      {
        v6 = *(a1 + 32);
        if (v3 < v6)
        {
          goto LABEL_9;
        }

        if (v6 < v3)
        {
          goto LABEL_50;
        }

        *(a1 + 24) = 0;
      }

      v5 = ProtobufDecoder.decodeVarint()(v5);
      if (v1)
      {
        return;
      }

      if (v5 <= 7)
      {
LABEL_50:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        return;
      }

LABEL_9:
      if (v5 >> 3 == 2)
      {
        break;
      }

      if (v5 >> 3 == 1)
      {
        v7 = v5 & 7;
        if (v7 == 5)
        {
          v26 = *(a1 + 8);
          if (v4 < v26 + 4)
          {
            goto LABEL_50;
          }

          *(a1 + 8) = v26 + 4;
          v3 = v26 + 4;
        }

        else
        {
          if (v7 == 2)
          {
            v25 = ProtobufDecoder.decodeVarint()(v5);
            if (v1)
            {
              return;
            }

            if (v25 < 0)
            {
              goto LABEL_56;
            }

            v8 = *(a1 + 8);
            if (v4 < v8 + v25)
            {
              goto LABEL_50;
            }

            *(a1 + 24) = 9;
            *(a1 + 32) = v8 + v25;
          }

          else
          {
            if (v7 != 1)
            {
              goto LABEL_50;
            }

            v8 = *(a1 + 8);
          }

          if (v4 < v8 + 8)
          {
            goto LABEL_50;
          }

          *(a1 + 8) = v8 + 8;
LABEL_44:
          v3 = *(a1 + 8);
        }
      }

      else
      {
        v24 = v5 & 7;
        if (v24 > 1)
        {
          if (v24 == 2)
          {
            v27 = ProtobufDecoder.decodeVarint()(v5);
            if (v1)
            {
              return;
            }

            if (v27 < 0)
            {
              goto LABEL_57;
            }

            v3 = *(a1 + 8) + v27;
            if (v4 < v3)
            {
              goto LABEL_50;
            }

            *(a1 + 8) = v3;
          }

          else
          {
            if (v24 != 5)
            {
              goto LABEL_50;
            }

            v3 = *(a1 + 8) + 4;
            if (v4 < v3)
            {
              goto LABEL_50;
            }

            *(a1 + 8) = v3;
          }
        }

        else
        {
          if ((v5 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()(v5);
            if (v1)
            {
              return;
            }

            goto LABEL_44;
          }

          if (v24 != 1)
          {
            goto LABEL_50;
          }

          v3 = *(a1 + 8) + 8;
          if (v4 < v3)
          {
            goto LABEL_50;
          }

          *(a1 + 8) = v3;
        }
      }
    }

    if ((v5 & 7) != 2)
    {
      goto LABEL_50;
    }

    v9 = *a1;
    v4 = *(a1 + 16);
    v10 = ProtobufDecoder.decodeVarint()(v5);
    if (v1)
    {
      return;
    }

    v11 = v10;
    if (v10 < 0)
    {
      break;
    }

    v12 = *(a1 + 8);
    if (v4 < v12 + v10)
    {
      goto LABEL_50;
    }

    *(a1 + 8) = v12 + v10;
    v13 = v9;

    if (v11)
    {
      v14 = v12 - [v13 bytes];
      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (__OFADD__(v14, v11))
      {
        goto LABEL_54;
      }

      if (v14 + v11 < v14)
      {
        goto LABEL_55;
      }

      v18 = v15;
      v19 = Data._Representation.subscript.getter();
      v21 = v20;
      v22 = v17;
      v23 = v21;
      outlined consume of Data._Representation(v18, v22);
    }

    else
    {
      v19 = 0;
      v23 = 0xC000000000000000;
    }

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();

    dispatch thunk of PropertyListDecoder.userInfo.setter();
    type metadata accessor for [ClosedRange<CGFloat>](0);
    lazy protocol witness table accessor for type [ClosedRange<CGFloat>] and conformance <A> [A](&lazy protocol witness table cache variable for type [ClosedRange<CGFloat>] and conformance <A> [A], type metadata accessor for [ClosedRange<CGFloat>], lazy protocol witness table accessor for type ClosedRange<CGFloat> and conformance <> ClosedRange<A>, MEMORY[0x1E69E6330]);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (!*(v28 + 16))
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();

      outlined consume of Data._Representation(v19, v23);

      return;
    }

    outlined consume of Data._Representation(v19, v23);

    v3 = *(a1 + 8);
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

char *specialized SDFStyle.Mask.init(from:)(void *a1)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    a1[3] = 0;
    v6 = 0xF000000000000007;
    v7 = 0xF000000000000007;
    goto LABEL_4;
  }

  v6 = 0xF000000000000007;
  v7 = 0xF000000000000007;
  do
  {
    v13 = a1[3];
    if (v13)
    {
      v14 = a1[4];
      if (v4 < v14)
      {
        goto LABEL_17;
      }

      if (v14 < v4)
      {
        goto LABEL_4;
      }

      a1[3] = 0;
    }

    v13 = ProtobufDecoder.decodeVarint()(v13);
    if (v1)
    {
      goto LABEL_60;
    }

    if (v13 < 8)
    {
      goto LABEL_4;
    }

LABEL_17:
    v15 = v13 & 7;
    if (v13 >> 3 == 2)
    {
      if (v15 != 2)
      {
        goto LABEL_4;
      }

      v2 = a1[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        v2 = isUniquelyReferenced_nonNull_native;
      }

      v24 = *(v2 + 2);
      v23 = *(v2 + 3);
      if (v24 >= v23 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v2);
        v2 = isUniquelyReferenced_nonNull_native;
      }

      *(v2 + 2) = v24 + 1;
      *&v2[8 * v24 + 32] = v5;
      a1[5] = v2;
      v25 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v1)
      {
        goto LABEL_60;
      }

      if (v25 < 0)
      {
        goto LABEL_69;
      }

      v26 = a1[1] + v25;
      if (v5 < v26)
      {
        goto LABEL_4;
      }

      a1[2] = v26;
      v27 = specialized SDFStyle.init(from:)(a1);
      v28 = a1[5];
      if (!*(v28 + 2))
      {
        goto LABEL_71;
      }

      v2 = v27;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v29 = *(v28 + 2);
        if (!v29)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
        v29 = *(v28 + 2);
        if (!v29)
        {
LABEL_59:
          __break(1u);
LABEL_60:
          v8 = v6;
          goto LABEL_5;
        }
      }

      v30 = v29 - 1;
      v5 = *&v28[8 * v30 + 32];
      *(v28 + 2) = v30;
      outlined consume of SDFStyle?(v6);
      a1[5] = v28;
      a1[2] = v5;
      v6 = v2;
LABEL_9:
      v1 = 0;
      goto LABEL_10;
    }

    if (v13 >> 3 == 1)
    {
      if (v15 != 2)
      {
        goto LABEL_4;
      }

      v2 = a1[5];
      v16 = swift_isUniquelyReferenced_nonNull_native();
      if ((v16 & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        v2 = v16;
      }

      v18 = *(v2 + 2);
      v17 = *(v2 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v2);
        v2 = v16;
      }

      *(v2 + 2) = v18 + 1;
      *&v2[8 * v18 + 32] = v5;
      a1[5] = v2;
      v19 = ProtobufDecoder.decodeVarint()(v16);
      if (v1)
      {
        goto LABEL_60;
      }

      if (v19 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        __break(1u);
        do
        {
          __break(1u);
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v33 = *(v2 + 2);
          if (v33)
          {
            goto LABEL_67;
          }

          __break(1u);
          v2 = a1[5];
        }

        while (!*(v2 + 2));
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v33 = *(v2 + 2);
          if (v33)
          {
LABEL_67:
            v34 = v33 - 1;
            v35 = *&v2[8 * v34 + 32];
            *(v2 + 2) = v34;
            outlined consume of SDFStyle?(v6);
            outlined consume of SDFStyle?(v7);
            a1[5] = v2;
            a1[2] = v35;
            return v7;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v2 = result;
          v33 = *(result + 2);
          if (v33)
          {
            goto LABEL_67;
          }
        }

        __break(1u);
        return result;
      }

      v20 = a1[1] + v19;
      if (v5 < v20)
      {
        goto LABEL_4;
      }

      a1[2] = v20;
      v21 = specialized SDFStyle.init(from:)(a1);
      v10 = a1[5];
      if (!*(v10 + 2))
      {
        goto LABEL_70;
      }

      v2 = v21;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v11 = *(v10 + 2);
        if (!v11)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        v11 = *(v10 + 2);
        if (!v11)
        {
          goto LABEL_72;
        }
      }

      v12 = v11 - 1;
      v5 = *&v10[8 * v12 + 32];
      *(v10 + 2) = v12;
      outlined consume of SDFStyle?(v7);
      a1[5] = v10;
      a1[2] = v5;
      v7 = v2;
      goto LABEL_9;
    }

    if ((v13 & 7) > 1)
    {
      if (v15 == 2)
      {
        v32 = ProtobufDecoder.decodeVarint()(v13);
        if (v1)
        {
          goto LABEL_60;
        }

        if (v32 < 0)
        {
          goto LABEL_73;
        }

        v31 = a1[1] + v32;
        if (v5 < v31)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_4;
        }

        v31 = a1[1] + 4;
        if (v5 < v31)
        {
          goto LABEL_4;
        }
      }

      goto LABEL_57;
    }

    if ((v13 & 7) != 0)
    {
      if (v15 != 1)
      {
        goto LABEL_4;
      }

      v31 = a1[1] + 8;
      if (v5 < v31)
      {
        goto LABEL_4;
      }

LABEL_57:
      a1[1] = v31;
      goto LABEL_10;
    }

    ProtobufDecoder.decodeVarint()(v13);
    if (v1)
    {
      goto LABEL_60;
    }

LABEL_10:
    v4 = a1[1];
  }

  while (v4 < v5);
  a1[3] = 0;
  if ((~v7 & 0xF000000000000007) != 0 && (v6 & 0xF000000000000007) != 0xF000000000000007)
  {
    return v7;
  }

LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  v8 = v6;
LABEL_5:
  outlined consume of SDFStyle?(v8);
  outlined consume of SDFStyle?(v7);
  return v7;
}

char *specialized SDFStyle.init(from:)(__int128 *a1)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0x80;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 40) = MEMORY[0x1E69E7CC0];
  *(v4 + 48) = v5;
  v6 = v4 | 0x8000000000000000;
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  if (v7 >= v8)
  {
    goto LABEL_164;
  }

  v9 = &unk_1F005EB40;
  while (1)
  {
    v10 = *(a1 + 3);
    if (v10)
    {
      v11 = *(a1 + 4);
      if (v7 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v7)
      {
        goto LABEL_165;
      }

      *(a1 + 3) = 0;
    }

    v4 = ProtobufDecoder.decodeVarint()(v4);
    if (v1)
    {
      goto LABEL_166;
    }

    v10 = v4;
    if (v4 < 8)
    {
LABEL_165:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_166:

      return v6;
    }

LABEL_11:
    v12 = v10 >> 3;
    if (v10 >> 3 <= 4)
    {
      if (v10 >> 3 > 2)
      {
        if (v12 == 3)
        {
          v63 = swift_allocObject();
          if ((v10 & 7) != 2)
          {
            goto LABEL_169;
          }

          v2 = *(a1 + 5);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
            v2 = isUniquelyReferenced_nonNull_native;
          }

          v66 = *(v2 + 2);
          v65 = *(v2 + 3);
          if (v66 >= v65 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v2);
            v2 = isUniquelyReferenced_nonNull_native;
          }

          *(v2 + 2) = v66 + 1;
          *&v2[8 * v66 + 32] = v8;
          *(a1 + 5) = v2;
          v67 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
          if (v1)
          {
            goto LABEL_176;
          }

          if (v67 < 0)
          {
            goto LABEL_199;
          }

          v68 = *(a1 + 1) + v67;
          if (v8 < v68)
          {
LABEL_169:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            goto LABEL_176;
          }

          v113 = v63;
          v69 = v9;
          *(a1 + 2) = v68;
          v70 = specialized SDFStyle.Gradient.init(from:)(a1);
          v73 = *(a1 + 5);
          if (!*(v73 + 2))
          {
            goto LABEL_207;
          }

          v74 = v70;
          v2 = v71;
          v75 = v72;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v76 = *(v73 + 2);
            if (!v76)
            {
              goto LABEL_218;
            }
          }

          else
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew()(v73);
            v76 = *(v73 + 2);
            if (!v76)
            {
              goto LABEL_218;
            }
          }

          v77 = v76 - 1;
          v8 = *&v73[8 * v77 + 32];
          *(v73 + 2) = v77;

          *(a1 + 5) = v73;
          *(a1 + 2) = v8;
          *(v113 + 16) = v74;
          *(v113 + 24) = v2;
          v6 = v113 | 0x2000000000000000;
          *(v113 + 32) = v75;
          v9 = v69;
          goto LABEL_4;
        }

        if (v12 == 4)
        {
          v36 = swift_allocObject();
          if ((v10 & 7) != 2)
          {
            goto LABEL_177;
          }

          v2 = *(a1 + 5);
          v37 = swift_isUniquelyReferenced_nonNull_native();
          if ((v37 & 1) == 0)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
            v2 = v37;
          }

          v39 = *(v2 + 2);
          v38 = *(v2 + 3);
          if (v39 >= v38 >> 1)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v2);
            v2 = v37;
          }

          *(v2 + 2) = v39 + 1;
          *&v2[8 * v39 + 32] = v8;
          *(a1 + 5) = v2;
          v40 = ProtobufDecoder.decodeVarint()(v37);
          if (v1)
          {
            goto LABEL_176;
          }

          if (v40 < 0)
          {
            goto LABEL_196;
          }

          v41 = *(a1 + 1) + v40;
          if (v8 < v41)
          {
LABEL_177:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            goto LABEL_176;
          }

          *(a1 + 2) = v41;
          specialized SDFStyle.Shadow.init(from:)(a1, v117);
          v42 = v117[1];
          *(v36 + 16) = v117[0];
          *(v36 + 32) = v42;
          *(v36 + 48) = v118[0];
          *(v36 + 58) = *(v118 + 10);
          v2 = *(a1 + 5);
          if (!*(v2 + 2))
          {
            goto LABEL_204;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v43 = *(v2 + 2);
            if (!v43)
            {
              goto LABEL_215;
            }
          }

          else
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v43 = *(v2 + 2);
            if (!v43)
            {
              goto LABEL_215;
            }
          }

          v44 = v43 - 1;
          v8 = *&v2[8 * v44 + 32];
          *(v2 + 2) = v44;

          *(a1 + 5) = v2;
          *(a1 + 2) = v8;
          v6 = v36 | 0x3000000000000000;
          goto LABEL_4;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v55 = swift_allocObject();
          if ((v10 & 7) != 2)
          {
            goto LABEL_173;
          }

          v2 = *(a1 + 5);
          v56 = swift_isUniquelyReferenced_nonNull_native();
          if ((v56 & 1) == 0)
          {
            v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
            v2 = v56;
          }

          v58 = *(v2 + 2);
          v57 = *(v2 + 3);
          if (v58 >= v57 >> 1)
          {
            v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v2);
            v2 = v56;
          }

          *(v2 + 2) = v58 + 1;
          *&v2[8 * v58 + 32] = v8;
          *(a1 + 5) = v2;
          v59 = ProtobufDecoder.decodeVarint()(v56);
          if (v1)
          {
            goto LABEL_176;
          }

          if (v59 < 0)
          {
            goto LABEL_197;
          }

          v60 = *(a1 + 1) + v59;
          if (v8 < v60)
          {
LABEL_173:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            goto LABEL_176;
          }

          *(a1 + 2) = v60;
          specialized SDFStyle.Fill.init(from:)(a1, v114);
          v2 = *(a1 + 5);
          if (!*(v2 + 2))
          {
            goto LABEL_206;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v61 = *(v2 + 2);
            if (!v61)
            {
              goto LABEL_217;
            }
          }

          else
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v61 = *(v2 + 2);
            if (!v61)
            {
              goto LABEL_217;
            }
          }

          v62 = v61 - 1;
          v8 = *&v2[8 * v62 + 32];
          *(v2 + 2) = v62;

          *(a1 + 5) = v2;
          *(a1 + 2) = v8;
          *(v55 + 16) = v114[0];
          *(v55 + 28) = *(v114 + 12);
          v6 = v55;
          goto LABEL_4;
        }

        if (v12 == 2)
        {
          v27 = swift_allocObject();
          if ((v10 & 7) != 2)
          {
            goto LABEL_167;
          }

          v2 = *(a1 + 5);
          v28 = swift_isUniquelyReferenced_nonNull_native();
          if ((v28 & 1) == 0)
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
            v2 = v28;
          }

          v30 = *(v2 + 2);
          v29 = *(v2 + 3);
          if (v30 >= v29 >> 1)
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v2);
            v2 = v28;
          }

          *(v2 + 2) = v30 + 1;
          *&v2[8 * v30 + 32] = v8;
          *(a1 + 5) = v2;
          v31 = ProtobufDecoder.decodeVarint()(v28);
          if (v1)
          {
            goto LABEL_176;
          }

          if (v31 < 0)
          {
            goto LABEL_201;
          }

          v32 = *(a1 + 1) + v31;
          if (v8 < v32)
          {
            goto LABEL_167;
          }

          *(a1 + 2) = v32;
          specialized SDFStyle.Stroke.init(from:)(a1, v115);
          v33 = v115[1];
          *(v27 + 16) = v115[0];
          *(v27 + 32) = v33;
          *(v27 + 48) = v116;
          v2 = *(a1 + 5);
          if (!*(v2 + 2))
          {
            goto LABEL_209;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v34 = *(v2 + 2);
            if (!v34)
            {
              goto LABEL_216;
            }
          }

          else
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v34 = *(v2 + 2);
            if (!v34)
            {
              goto LABEL_216;
            }
          }

          v35 = v34 - 1;
          v8 = *&v2[8 * v35 + 32];
          *(v2 + 2) = v35;

          *(a1 + 5) = v2;
          *(a1 + 2) = v8;
          v6 = v27 | 0x1000000000000000;
          goto LABEL_4;
        }
      }

      goto LABEL_131;
    }

    if (v10 >> 3 <= 6)
    {
      if (v12 == 5)
      {
        v86 = swift_allocObject();
        if ((v10 & 7) != 2)
        {
          goto LABEL_167;
        }

        v2 = *(a1 + 5);
        v87 = swift_isUniquelyReferenced_nonNull_native();
        if ((v87 & 1) == 0)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
          v2 = v87;
        }

        v89 = *(v2 + 2);
        v88 = *(v2 + 3);
        if (v89 >= v88 >> 1)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v2);
          v2 = v87;
        }

        *(v2 + 2) = v89 + 1;
        *&v2[8 * v89 + 32] = v8;
        *(a1 + 5) = v2;
        v90 = ProtobufDecoder.decodeVarint()(v87);
        if (v1)
        {
          goto LABEL_176;
        }

        if (v90 < 0)
        {
          goto LABEL_195;
        }

        v91 = *(a1 + 1) + v90;
        if (v8 < v91)
        {
LABEL_167:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_176;
        }

        *(a1 + 2) = v91;
        specialized SDFStyle.GlassDisplacement.init(from:)(a1, v119);
        v2 = *(a1 + 5);
        if (!*(v2 + 2))
        {
          goto LABEL_208;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v92 = *(v2 + 2);
          if (!v92)
          {
            goto LABEL_213;
          }
        }

        else
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v92 = *(v2 + 2);
          if (!v92)
          {
            goto LABEL_213;
          }
        }

        v93 = v92 - 1;
        v8 = *&v2[8 * v93 + 32];
        *(v2 + 2) = v93;

        *(a1 + 5) = v2;
        *(a1 + 2) = v8;
        v94 = v119[1];
        *(v86 + 16) = v119[0];
        *(v86 + 32) = v94;
        *(v86 + 48) = v120;
        v6 = v86 | 0x5000000000000000;
        goto LABEL_4;
      }

      if (v12 == 6)
      {
        v45 = swift_allocObject();
        if ((v10 & 7) != 2)
        {
          goto LABEL_171;
        }

        v2 = *(a1 + 5);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        if ((v46 & 1) == 0)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
          v2 = v46;
        }

        v48 = *(v2 + 2);
        v47 = *(v2 + 3);
        if (v48 >= v47 >> 1)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v2);
          v2 = v46;
        }

        *(v2 + 2) = v48 + 1;
        *&v2[8 * v48 + 32] = v8;
        *(a1 + 5) = v2;
        v49 = ProtobufDecoder.decodeVarint()(v46);
        if (v1)
        {
          goto LABEL_176;
        }

        if (v49 < 0)
        {
          goto LABEL_198;
        }

        v50 = *(a1 + 1) + v49;
        if (v8 < v50)
        {
LABEL_171:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_176;
        }

        *(a1 + 2) = v50;
        specialized SDFStyle.GlassHighlight.init(from:)(a1, v121);
        *(v45 + 73) = *(v122 + 9);
        v51 = v122[0];
        *(v45 + 48) = v121[2];
        *(v45 + 64) = v51;
        v52 = v121[1];
        *(v45 + 16) = v121[0];
        *(v45 + 32) = v52;
        v2 = *(a1 + 5);
        if (!*(v2 + 2))
        {
          goto LABEL_205;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v53 = *(v2 + 2);
          if (!v53)
          {
            goto LABEL_212;
          }
        }

        else
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v53 = *(v2 + 2);
          if (!v53)
          {
            goto LABEL_212;
          }
        }

        v54 = v53 - 1;
        v8 = *&v2[8 * v54 + 32];
        *(v2 + 2) = v54;

        *(a1 + 5) = v2;
        *(a1 + 2) = v8;
        v6 = v45 | 0x6000000000000000;
        goto LABEL_4;
      }

      goto LABEL_131;
    }

    if (v12 == 7)
    {
      v78 = swift_allocObject();
      if ((v10 & 7) != 2)
      {
        goto LABEL_167;
      }

      v2 = *(a1 + 5);
      v79 = swift_isUniquelyReferenced_nonNull_native();
      if ((v79 & 1) == 0)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        v2 = v79;
      }

      v81 = *(v2 + 2);
      v80 = *(v2 + 3);
      if (v81 >= v80 >> 1)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v2);
        v2 = v79;
      }

      *(v2 + 2) = v81 + 1;
      *&v2[8 * v81 + 32] = v8;
      *(a1 + 5) = v2;
      v82 = ProtobufDecoder.decodeVarint()(v79);
      if (v1)
      {
        goto LABEL_176;
      }

      if (v82 < 0)
      {
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
        __break(1u);
        __break(1u);
LABEL_221:
        __break(1u);
        __break(1u);
LABEL_222:
        __break(1u);
        __break(1u);
        do
        {
          __break(1u);
          __break(1u);
          __break(1u);
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v109 = *(v2 + 2);
          if (v109)
          {
            goto LABEL_191;
          }

          __break(1u);
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v109 = *(v2 + 2);
          if (v109)
          {
            goto LABEL_191;
          }

          __break(1u);
          v2 = *(a1 + 5);
          if (!*(v2 + 2))
          {
            goto LABEL_221;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v109 = *(v2 + 2);
            if (v109)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v109 = *(v2 + 2);
            if (v109)
            {
              goto LABEL_191;
            }
          }

          __break(1u);
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v109 = *(v2 + 2);
          if (v109)
          {
            goto LABEL_191;
          }

          __break(1u);
          v2 = *(a1 + 5);
          if (!*(v2 + 2))
          {
            goto LABEL_222;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v109 = *(v2 + 2);
            if (v109)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v109 = *(v2 + 2);
            if (v109)
            {
              goto LABEL_191;
            }
          }

          __break(1u);
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v109 = *(v2 + 2);
          if (v109)
          {
            goto LABEL_191;
          }

          __break(1u);
          v2 = *(a1 + 5);
        }

        while (!*(v2 + 2));
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v109 = *(v2 + 2);
          if (v109)
          {
            goto LABEL_191;
          }
        }

        else
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v109 = *(v2 + 2);
          if (v109)
          {
            goto LABEL_191;
          }
        }

        __break(1u);
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v109 = *(v2 + 2);
        if (!v109)
        {
          __break(1u);
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v2 = result;
          v109 = *(result + 2);
          if (!v109)
          {
            __break(1u);
            return result;
          }
        }

LABEL_191:
        v110 = v109 - 1;
        v111 = *&v2[8 * v110 + 32];
        *(v2 + 2) = v110;

        *(a1 + 5) = v2;
        *(a1 + 2) = v111;
        goto LABEL_192;
      }

      v83 = *(a1 + 1) + v82;
      if (v8 < v83)
      {
        goto LABEL_167;
      }

      *(a1 + 2) = v83;
      SDFStyle.Group.init(from:)(a1, v78 + 16);
      v2 = *(a1 + 5);
      if (!*(v2 + 2))
      {
        goto LABEL_210;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v84 = *(v2 + 2);
        if (!v84)
        {
          goto LABEL_219;
        }
      }

      else
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v84 = *(v2 + 2);
        if (!v84)
        {
          goto LABEL_219;
        }
      }

      v85 = v84 - 1;
      v8 = *&v2[8 * v85 + 32];
      *(v2 + 2) = v85;

      *(a1 + 5) = v2;
      *(a1 + 2) = v8;
      v6 = v78 | 0x8000000000000000;
      goto LABEL_4;
    }

    if (v12 == 8)
    {
      break;
    }

    if (v12 == 9)
    {
      v13 = swift_allocObject();
      if ((v10 & 7) != 2)
      {
        goto LABEL_169;
      }

      v2 = *(a1 + 5);
      v14 = swift_isUniquelyReferenced_nonNull_native();
      if ((v14 & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        v2 = v14;
      }

      v16 = *(v2 + 2);
      v15 = *(v2 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v2);
        v2 = v14;
      }

      *(v2 + 2) = v16 + 1;
      *&v2[8 * v16 + 32] = v8;
      *(a1 + 5) = v2;
      v17 = ProtobufDecoder.decodeVarint()(v14);
      if (v1)
      {
        goto LABEL_176;
      }

      if (v17 < 0)
      {
        goto LABEL_200;
      }

      v18 = *(a1 + 1) + v17;
      if (v8 < v18)
      {
        goto LABEL_169;
      }

      *(a1 + 2) = v18;
      specialized SDFStyle.OutputSDF.init(from:)(a1);
      v2 = *(a1 + 5);
      if (!*(v2 + 2))
      {
        goto LABEL_211;
      }

      v22 = v19;
      v23 = v20;
      v24 = v21;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v25 = *(v2 + 2);
        if (!v25)
        {
          goto LABEL_214;
        }
      }

      else
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v25 = *(v2 + 2);
        if (!v25)
        {
          goto LABEL_214;
        }
      }

      v26 = v25 - 1;
      v8 = *&v2[8 * v26 + 32];
      *(v2 + 2) = v26;

      *(a1 + 5) = v2;
      *(a1 + 2) = v8;
      *(v13 + 16) = v22;
      *(v13 + 24) = v23;
      v6 = v13 | 0xA000000000000000;
      *(v13 + 32) = v24;
      goto LABEL_4;
    }

LABEL_131:
    v107 = v10 & 7;
    if (v107 > 1)
    {
      if (v107 == 2)
      {
        v4 = ProtobufDecoder.decodeVarint()(v4);
        if (v1)
        {
          goto LABEL_166;
        }

        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_220;
        }

        v108 = *(a1 + 1) + v4;
        if (v8 < v108)
        {
          goto LABEL_165;
        }
      }

      else
      {
        if (v107 != 5)
        {
          goto LABEL_165;
        }

        v108 = *(a1 + 1) + 4;
        if (v8 < v108)
        {
          goto LABEL_165;
        }
      }

      goto LABEL_3;
    }

    if ((v10 & 7) != 0)
    {
      if (v107 != 1)
      {
        goto LABEL_165;
      }

      v108 = *(a1 + 1) + 8;
      if (v8 < v108)
      {
        goto LABEL_165;
      }

LABEL_3:
      *(a1 + 1) = v108;
      goto LABEL_4;
    }

    v4 = ProtobufDecoder.decodeVarint()(v4);
    if (v1)
    {
      goto LABEL_166;
    }

LABEL_4:
    v7 = *(a1 + 1);
    if (v7 >= v8)
    {
      goto LABEL_164;
    }
  }

  v95 = swift_allocObject();
  if ((v10 & 7) != 2)
  {
    goto LABEL_175;
  }

  v2 = *(a1 + 5);
  v96 = swift_isUniquelyReferenced_nonNull_native();
  if ((v96 & 1) == 0)
  {
    v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    v2 = v96;
  }

  v98 = *(v2 + 2);
  v97 = *(v2 + 3);
  if (v98 >= v97 >> 1)
  {
    v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v2);
    v2 = v96;
  }

  *(v2 + 2) = v98 + 1;
  *&v2[8 * v98 + 32] = v8;
  *(a1 + 5) = v2;
  v99 = ProtobufDecoder.decodeVarint()(v96);
  if (v1)
  {
    goto LABEL_176;
  }

  if (v99 < 0)
  {
    goto LABEL_202;
  }

  v100 = *(a1 + 1) + v99;
  if (v8 >= v100)
  {
    v6 = v9;
    *(a1 + 2) = v100;
    v101 = specialized SDFStyle.Mask.init(from:)(a1);
    v2 = *(a1 + 5);
    if (!*(v2 + 2))
    {
      goto LABEL_203;
    }

    v103 = v101;
    v104 = v102;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = *(v2 + 2);
      if (!v105)
      {
        goto LABEL_163;
      }

      goto LABEL_130;
    }

    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v105 = *(v2 + 2);
    if (v105)
    {
LABEL_130:
      v106 = v105 - 1;
      v8 = *&v2[8 * v106 + 32];
      *(v2 + 2) = v106;

      *(a1 + 5) = v2;
      *(a1 + 2) = v8;
      *(v95 + 16) = v103;
      *(v95 + 24) = v104;
      v9 = v6;
      v6 = v95 | 0x9000000000000000;
      goto LABEL_4;
    }

LABEL_163:
    __break(1u);
LABEL_164:
    *(a1 + 3) = 0;
    return v6;
  }

LABEL_175:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_176:

LABEL_192:
  swift_deallocUninitializedObject();
  return v6;
}

double destroy for SDFStyle.Mask(void *a1)
{

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SDFStyle.Mask(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for SDFStyle.Mask(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for SDFStyle.Mask(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for SDFStyle.Mask(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 16))
  {
    return (*a1 + 118);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x75)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SDFStyle.Mask(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *result = a2 - 118;
    *(result + 8) = 0;
    if (a3 >= 0x76)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t initializeWithCopy for SDFStyle.Group(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t assignWithCopy for SDFStyle.Group(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  *(a1 + 24) = *(a2 + 3);

  *(a1 + 32) = *(a2 + 4);

  return a1;
}

uint64_t assignWithTake for SDFStyle.Group(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for SDFStyle.Group(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 33) & 0x7F | (*a1 >> 34) & 0x3F80 | (*a1 >> 35) & 0x1FFFC000 | (*(a1 + 16) >> 1 << 29);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SDFStyle.Group(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (-a2 << 34) & 0xFE0000000000 | ((-a2 & 0x7F) << 33) & 0x1FFFFFFFFFFFFLL | ((-a2 >> 14) << 49);
      *(result + 8) = 0;
      *(result + 16) = (-a2 >> 28) & 0xE;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SDFStyle.GlassHighlight(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SDFStyle.GlassHighlight(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SDFStyle.Shadow(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SDFStyle.Shadow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SDFStyle.Gradient(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for SDFStyle.Gradient(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for SDFStyle.Gradient(void *a1, uint64_t a2)
{

  *a1 = *a2;

  a1[2] = *(a2 + 16);

  return a1;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SDFStyle.Stroke(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SDFStyle.Stroke(uint64_t result, int a2, int a3)
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

  *(result + 36) = v3;
  return result;
}

uint64_t *assignWithCopy for SDFStyle(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for SDFStyle(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void type metadata accessor for [ClosedRange<CGFloat>](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [ClosedRange<CGFloat>])
  {
    type metadata accessor for ClosedRange<CGFloat>(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [ClosedRange<CGFloat>]);
    }
  }
}

void type metadata accessor for ClosedRange<CGFloat>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ClosedRange<CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v1 = type metadata accessor for ClosedRange();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ClosedRange<CGFloat>);
    }
  }
}

void lazy protocol witness table accessor for type ClosedRange<CGFloat> and conformance <> ClosedRange<A>()
{
  lazy protocol witness table accessor for type [ClosedRange<CGFloat>] and conformance <A> [A](&lazy protocol witness table cache variable for type ClosedRange<CGFloat> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E5FC0]);
}

{
  if (!lazy protocol witness table cache variable for type ClosedRange<CGFloat> and conformance <> ClosedRange<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for KeyedEncodingContainer<AccessibilityNodeAttachment.Kind.PlaceholderCodingKeys>(255, &lazy cache variable for type metadata for ClosedRange<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E5F90]);
    v3 = v2;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E5F98], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type ClosedRange<CGFloat> and conformance <> ClosedRange<A>);
  }
}

void lazy protocol witness table accessor for type [ClosedRange<CGFloat>] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), const char *a4)
{
  if (!*a1)
  {
    v7 = a2(255);
    v9 = a3();
    swift_getWitnessTable(a4, v7, &v9);
    atomic_store(v8, a1);
  }
}

uint64_t outlined init with copy of SDFStyle.Group(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *a2 = v3;
  v4 = *(a1 + 4);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 32) = v4;

  return a2;
}

uint64_t outlined destroy of SDFStyle.Group(uint64_t a1)
{

  return a1;
}

uint64_t AnyHashable2.anyHashable.getter()
{
  (*(**v0 + 104))(v7);
  v1 = __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v2 = MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(&v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  AnyHashable.init<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t static AnyHashable2.== infix(_:_:)(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return 1;
  }

  else
  {
    return (*(**a1 + 112))() & 1;
  }
}

Swift::Int AnyHashable2.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 120))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyHashable2()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 120))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyHashable2(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(**v1 + 120))(v3);
  return Hasher._finalize()();
}

uint64_t AnyHashable2._toCustomAnyHashable()()
{
  (*(**v0 + 104))(v7);
  v1 = __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v2 = MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(&v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  AnyHashable.init<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

double protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AnyHashable2()
{
  (*(**v0 + 104))(v7);
  v1 = __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v2 = MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(&v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  AnyHashable.init<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v7);

  return result;
}

uint64_t _AnyHashableBox.description.getter(uint64_t (*a1)(char *, uint64_t))
{
  v3 = *(*v1 + 136);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  (*(v8 + 16))(&v10 - v5, v1 + *(v7 + 152), v3, v4);
  return a1(v6, v3);
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for Date.ComponentsFormatStyle.Field();
    ++v2;
    lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field();
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t GraphicsContext.addSDFGradientOvalizationFilter(_:ovalization:bounds:)(uint64_t result, float a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (result)
  {
    v6 = result == 1 ? 0x3F00000000000000 : 0;
    v7 = result == 1 ? 3204448256 : 3212836864;
    v26.origin.x = a3;
    v26.origin.y = a4;
    v26.size.width = a5;
    v26.size.height = a6;
    result = CGRectIsEmpty(v26);
    if ((result & 1) == 0)
    {
      if (one-time initialization token for system != -1)
      {
        swift_once();
      }

      v13 = static ShaderLibrary.system;
      type metadata accessor for _ContiguousArrayStorage<Shader.Argument>();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_18DDACA80;
      v15 = v13;
      v27.origin.x = a3;
      v27.origin.y = a4;
      v27.size.width = a5;
      v27.size.height = a6;
      MidX = CGRectGetMidX(v27);
      v28.origin.x = a3;
      v28.origin.y = a4;
      v28.size.width = a5;
      v28.size.height = a6;
      MidY = CGRectGetMidY(v28);
      *&v18 = MidX;
      *&MidY = MidY;
      *(v14 + 32) = v18 | (LODWORD(MidY) << 32);
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 52) = 1;
      v29.origin.x = a3;
      v29.origin.y = a4;
      v29.size.width = a5;
      v29.size.height = a6;
      Width = CGRectGetWidth(v29);
      v30.origin.x = a3;
      v30.origin.y = a4;
      v30.size.width = a5;
      v30.size.height = a6;
      *&v20 = Width / CGRectGetHeight(v30);
      *(v14 + 56) = v20;
      *(v14 + 64) = 0;
      *(v14 + 72) = 0;
      *(v14 + 76) = 0;
      *(v14 + 80) = LODWORD(a2);
      *(v14 + 88) = 0;
      *(v14 + 96) = 0;
      *(v14 + 100) = 0;
      *(v14 + 104) = v7 | v6;
      *(v14 + 112) = 0;
      *(v14 + 120) = 0;
      *(v14 + 124) = 1;
      *v21 = v15;
      *&v21[8] = xmmword_18DDBDEA0;
      *&v21[24] = v14;
      *v22 = 2;
      memset(&v22[8], 0, 32);
      v23 = 3221225472;
      GraphicsContext.addFilter(_:options:)(v21, 0);
      v24[3] = *&v22[16];
      v24[4] = *&v22[32];
      v25 = v23;
      v24[0] = *v21;
      v24[1] = *&v21[16];
      v24[2] = *v22;
      return outlined destroy of GraphicsContext.Filter(v24);
    }
  }

  return result;
}

void PathSet.drawSDF(in:distanceRange:gradient:ovalization:)(uint64_t *a1, uint64_t a2, double a3, double a4, float a5)
{
  v100 = *MEMORY[0x1E69E9840];
  v10 = *v5;
  v11 = *(v5 + 1);
  *&v95[0] = 256;
  memset(v95 + 8, 0, 33);
  v12 = *(v10 + 16);
  if (v12 == 1)
  {
    v18 = *(v10 + 48);
    v81 = *(v10 + 32);
    v82 = v18;
    v83 = *(v10 + 64);
    v84 = *(v10 + 80);
    if (a5 != 0.0 && (v84 & 0x100000000) == 0)
    {
      v97 = v81;
      v98 = v82;
      v99 = v83;
      v19 = a5;
      Path.roundedRect()(v87);
      if (v87[48] == 2)
      {
        a5 = 0.0;
      }

      else
      {
        a5 = v19;
      }
    }

    v21 = *(&v81 + 1);
    v20 = v81;
    v22 = *(&v82 + 1);
    v23 = v82;
    v24 = v83;
    v95[3] = v81;
    v95[4] = v82;
    v96 = v83;
    if (!a2 || a5 == 0.0)
    {
      outlined init with copy of PathSet.Element(&v81, v87);
      outlined init with copy of PathSet.Element(&v81, v87);
LABEL_37:
      GraphicsContext.addSDFGradientFilter(_:)(a2);
      __asm { FMOV            V0.4S, #1.0 }

      v70 = _Q0;
      LODWORD(v71) = 2143289344;
      _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v70);
      v92 = v78;
      v93 = v79;
      v94 = v80;
      v88 = v74;
      v89 = v75;
      v90 = v76;
      v91 = v77;
      *v87 = v70;
      *&v87[16] = v71;
      *&v87[32] = v72;
      *&v87[48] = v73;
      if (((1 << v24) & 0x47) != 0)
      {
        outlined copy of Path.Storage(v20, v21, v23, v22, v24);
LABEL_39:
        *&v85[0] = v20;
        *&v85[1] = v21;
        *&v85[2] = v23;
        *&v85[3] = v22;
        v86 = v24;
        v46 = *a1;
        v65 = v22;
        if (a3 != 0.0 && a4 != 0.0)
        {
          v63 = v23;
          v64 = v21;
          outlined copy of Path.Storage(v20, v21, v23, v22, v24);
          v47 = RBDrawingStateBeginLayer();
          type metadata accessor for GraphicsContext.Storage();
          v48 = swift_allocObject();
          *(v48 + 32) = xmmword_18DD85500;
          *(v48 + 48) = 1065353216;
          *(v48 + 56) = 0x7FF8000000000000;
          v49 = *(v46 + 16);
          v50 = *(v49 + 64);
          if (v50 == RBDrawingStateGetDefaultColorSpace())
          {
            *(v48 + 16) = v49;
          }

          else
          {
            v62 = RBDrawingStateGetDisplayList();
            v52 = *(v46 + 32);
            v53 = *(v46 + 40);
            v54 = v52;
            v55 = v53;
            if (v52 == 1)
            {
              v54 = *(v49 + 48);
              v55 = *(v49 + 56);
            }

            *&v68[0] = v54;
            *(&v68[0] + 1) = v55;
            type metadata accessor for GraphicsContext.Storage.Shared();
            swift_allocObject();
            outlined copy of EnvironmentValues?(v52, v53);
            *(v48 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v62, v68);
          }

          *(v48 + 24) = v47;
          *(v48 + 64) = 0;
          *&v68[0] = v48;

          closure #1 in GraphicsContext.drawSDF(of:style:distanceRange:gradient:ovalization:)(v68, v85, v87, v95, a3, a4);

          RBDrawingStateDrawLayer();

          v56 = v65;
          outlined consume of Path.Storage(v20, v64, v63, v65, v24);
          outlined destroy of PathSet.Element(&v81);
          v57 = v20;
          v58 = v64;
          v59 = v63;
          goto LABEL_68;
        }

        GraphicsContext._shapeRenderingMode.getter(v46, v68);
        if (a4 == 0.0)
        {
          if (a3 < 0.0)
          {
            v51 = -a3;
          }

          else
          {
            v51 = 0.0;
          }
        }

        else if (a4 > 0.0)
        {
          v51 = -a4;
        }

        else
        {
          v51 = -0.0;
        }

        v60 = v68[0];
        v61 = *(v68 + 1);
        if (*(v46 + 56) != v51)
        {
          GraphicsContext.copyOnWrite()();
          v46 = *a1;
          *(*a1 + 56) = v51;
        }

        v68[7] = v91;
        v68[8] = v92;
        v68[9] = v93;
        v69 = v94;
        v68[5] = v89;
        v68[6] = v90;
        v68[0] = *v87;
        v68[1] = *&v87[16];
        v68[3] = *&v87[48];
        v68[4] = v88;
        v68[2] = *&v87[32];
        v66 = v95[0];
        v67[0] = v95[1];
        *(v67 + 9) = *(&v95[1] + 9);
        GraphicsContext.draw(_:with:style:)(v85, v68, &v66, v46);
        if (v60 == 3)
        {
          if (v61 > 0.0)
          {
            v61 = -v61;
          }

          else
          {
            v61 = -0.0;
          }
        }

        else
        {
          if (v60 != 2)
          {
            v61 = NAN;
            v56 = v65;
            goto LABEL_70;
          }

          if (v61 <= 0.0)
          {
            v61 = 0.0;
          }
        }

        v56 = v65;
        if (*(v46 + 56) == v61)
        {
          outlined destroy of PathSet.Element(&v81);
          v57 = v20;
          v58 = v21;
          v59 = v23;
LABEL_68:
          outlined consume of Path.Storage(v57, v58, v59, v56, v24);
LABEL_71:
          outlined destroy of PathSet.Element(&v81);
          return;
        }

LABEL_70:
        GraphicsContext.copyOnWrite()();
        outlined destroy of PathSet.Element(&v81);
        outlined consume of Path.Storage(v20, v21, v23, v56, v24);
        *(*a1 + 56) = v61;
        goto LABEL_71;
      }

      if (v24 == 5)
      {
        type metadata accessor for Path.PathBox();
        v20 = swift_allocObject();
        *(v20 + 40) = 0u;
        *(v20 + 56) = 0u;
        *(v20 + 72) = 0u;
        *(v20 + 88) = 0u;
        *(v20 + 104) = 0u;
        *(v20 + 24) = 0u;
        *(v20 + 16) = 2;
        RBPathStorageInit();
        LOWORD(v68[0]) = 0;
        MEMORY[0x193AC35E0](v20 + 24, 20, 0, v68);
        Path.append(to:)(v20 + 24);
        MEMORY[0x193AC35E0](v20 + 24, 16, 0, 0);
        v21 = 0;
        v23 = 0;
        v22 = 0;
        goto LABEL_39;
      }

      while (1)
      {
LABEL_74:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    if (v83 > 2u)
    {
      if (v83 != 5)
      {
        if (v83 != 6)
        {
          goto LABEL_74;
        }

        x = *MEMORY[0x1E695F050];
        y = *(MEMORY[0x1E695F050] + 8);
        width = *(MEMORY[0x1E695F050] + 16);
        height = *(MEMORY[0x1E695F050] + 24);
        goto LABEL_36;
      }

      if (*(v81 + 16))
      {
        v34 = a5;
        if (*(v81 + 16) == 1)
        {
          outlined init with copy of PathSet.Element(&v81, v87);
          outlined init with copy of PathSet.Element(&v81, v87);

          RBPathGetBoundingRect();
        }

        else
        {
          outlined init with copy of PathSet.Element(&v81, v87);
          outlined init with copy of PathSet.Element(&v81, v87);

          v35 = MEMORY[0x193AC3640](v20 + 24);
        }

        x = v35;
        y = v36;
        width = v37;
        height = v38;
      }

      else
      {
        v39 = *(v81 + 24);
        if (!v39)
        {
          __break(1u);
          goto LABEL_74;
        }

        v34 = a5;
        v40 = v39;
        outlined init with copy of PathSet.Element(&v81, v87);
        outlined init with copy of PathSet.Element(&v81, v87);

        PathBoundingBox = CGPathGetPathBoundingBox(v40);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
        width = PathBoundingBox.size.width;
        height = PathBoundingBox.size.height;
      }

      outlined destroy of PathSet.Element(&v81);
    }

    else
    {
      if (!v83 || v83 == 1)
      {
        y = *(&v81 + 1);
        x = *&v81;
        height = *(&v82 + 1);
        width = *&v82;
LABEL_36:
        GraphicsContext.addSDFGradientOvalizationFilter(_:ovalization:bounds:)(a2, a5, x, y, width, height);
        goto LABEL_37;
      }

      x = *(v81 + 16);
      y = *(v81 + 24);
      width = *(v81 + 32);
      height = *(v81 + 40);
      v34 = a5;
      outlined init with copy of PathSet.Element(&v81, v87);
      outlined init with copy of PathSet.Element(&v81, v87);
    }

    a5 = v34;
    goto LABEL_36;
  }

  if (v12)
  {
    GraphicsContext.addSDFGradientFilter(_:)(a2);
    v13 = *a1;

    v14 = RBDrawingStateBeginLayer();
    type metadata accessor for GraphicsContext.Storage();
    v15 = swift_allocObject();
    *(v15 + 32) = xmmword_18DD85500;
    *(v15 + 48) = 1065353216;
    *(v15 + 56) = 0x7FF8000000000000;
    v16 = v13[2];
    v17 = *(v16 + 64);
    if (v17 == RBDrawingStateGetDefaultColorSpace())
    {
      *(v15 + 16) = v16;
    }

    else
    {
      v25 = RBDrawingStateGetDisplayList();
      v26 = v13[4];
      v27 = v13[5];
      v28 = v26;
      v29 = v27;
      if (v26 == 1)
      {
        v28 = *(v16 + 48);
        v29 = *(v16 + 56);
      }

      *v87 = v28;
      *&v87[8] = v29;
      type metadata accessor for GraphicsContext.Storage.Shared();
      swift_allocObject();
      outlined copy of EnvironmentValues?(v26, v27);
      *(v15 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v25, v87);
    }

    *(v15 + 24) = v14;
    *(v15 + 64) = 0;
    *v87 = v15;

    closure #1 in GraphicsContext.drawSDF(of:style:distanceRange:gradient:ovalization:matching:)(v87, v10, 0, 0, v95, v11, a3, a4);

    RBDrawingStateDrawLayer();
  }
}

double SDFStyle.draw(in:sdf:)(uint64_t *a1, __int128 *a2, unint64_t a3)
{
  v3 = a3 >> 60;
  if ((a3 >> 60) <= 4)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        v37 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *v61 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v61[16] = v37;
        *v62 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v38 = a2[3];
        *&v55[16] = a2[2];
        *v56 = v38;
        *&v56[11] = *(a2 + 59);
        v39 = a2[1];
        v54 = *a2;
        *v55 = v39;
        SDFStyle.Stroke.draw(in:sdf:)(a1, &v54);
      }

      else
      {
        *v61 = *(a3 + 16);
        *&v61[12] = *(a3 + 28);
        v19 = a2[3];
        *&v55[16] = a2[2];
        *v56 = v19;
        *&v56[11] = *(a2 + 59);
        v20 = a2[1];
        v54 = *a2;
        *v55 = v20;
        SDFStyle.Fill.draw(in:sdf:)(a1, &v54);
      }

      return result;
    }

    if (v3 != 2)
    {
      if (v3 == 3)
      {
        v9 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *v61 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v61[16] = v9;
        *v62 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        *&v62[10] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x3A);
        v10 = a2[3];
        *&v55[16] = a2[2];
        *v56 = v10;
        *&v56[11] = *(a2 + 59);
        v11 = a2[1];
        v54 = *a2;
        *v55 = v11;
        SDFStyle.Shadow.draw(in:sdf:)(a1, &v54);
        return result;
      }

      v31 = *(a2 + 3);
      v32 = *(a2 + 4);
      v33 = *(a2 + 5);
      v34 = *(a2 + 6);
      v35 = *(**((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 104);

      v35(a1, v31, v32, v33, v34);
      goto LABEL_31;
    }

    v21 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v22 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v23 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v24 = a2[3];
    *&v55[16] = a2[2];
    *v56 = v24;
    *&v56[11] = *(a2 + 59);
    v25 = a2[1];
    v54 = *a2;
    *v55 = v25;

    SDFStyle.Gradient.draw(in:sdf:)(a1, &v54, v21, v22, v23);
  }

  else
  {
    if (v3 <= 7)
    {
      if (v3 == 5)
      {
        v27 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *v61 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v61[16] = v27;
        *v62 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v28 = a2[3];
        *&v55[16] = a2[2];
        *v56 = v28;
        *&v56[11] = *(a2 + 59);
        v29 = a2[1];
        v54 = *a2;
        *v55 = v29;
        SDFStyle.GlassDisplacement.draw(in:sdf:)(a1, &v54);
      }

      else if (v3 == 6)
      {
        v4 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        *v62 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        *&v62[16] = v4;
        *&v62[25] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x49);
        v5 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *v61 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v61[16] = v5;
        v6 = a2[3];
        *&v55[16] = a2[2];
        *v56 = v6;
        *&v56[11] = *(a2 + 59);
        v7 = a2[1];
        v54 = *a2;
        *v55 = v7;
        SDFStyle.GlassHighlight.draw(in:sdf:)(a1, &v54);
      }

      else
      {
        v40 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
        v58 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v59 = v40;
        v60 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
        v41 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        *&v55[16] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        *v56 = v41;
        v42 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        *&v56[16] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v57 = v42;
        v43 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v54 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *v55 = v43;
        v44 = a2[3];
        *v62 = a2[2];
        *&v62[16] = v44;
        *&v62[27] = *(a2 + 59);
        v45 = a2[1];
        *v61 = *a2;
        *&v61[16] = v45;
        Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.draw(in:sdf:)(a1, v61);
      }

      return result;
    }

    if (v3 == 8)
    {
      v30 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v54 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v55[0] = v30;
      *&v55[8] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      SDFStyle.Group.draw(in:sdf:)(a1, a2);
      return result;
    }

    if (v3 == 9)
    {
      v13 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v14 = a1;

      GraphicsContext.copyOnWrite()();
      v53 = v14;
      v15 = *v14;
      v16 = RBDrawingStateBeginLayer();
      type metadata accessor for GraphicsContext.Storage();
      v17 = swift_allocObject();
      *(v17 + 32) = xmmword_18DD85500;
      *(v17 + 48) = 1065353216;
      *(v17 + 56) = 0x7FF8000000000000;
      v18 = v15[2];
      LODWORD(v14) = *(v18 + 64);
      if (v14 == RBDrawingStateGetDefaultColorSpace())
      {
        *(v17 + 16) = v18;
      }

      else
      {
        v51 = v13;
        v46 = RBDrawingStateGetDisplayList();
        v48 = v15[4];
        v47 = v15[5];
        v49 = v48;
        v50 = v47;
        if (v48 == 1)
        {
          v49 = *(v18 + 48);
          v50 = *(v18 + 56);
        }

        *&v54 = v49;
        *(&v54 + 1) = v50;
        type metadata accessor for GraphicsContext.Storage.Shared();
        swift_allocObject();
        outlined copy of EnvironmentValues?(v48, v47);
        *(v17 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v46, &v54);
        v13 = v51;
      }

      *(v17 + 24) = v16;
      *(v17 + 64) = 0;
      *&v54 = v17;

      SDFStyle.draw(in:sdf:)(&v54, a2, v12);

      RBDrawingStateClipLayer();

      SDFStyle.draw(in:sdf:)(v53, a2, v13);

LABEL_31:

      return result;
    }

    specialized static Log.externalWarning(_:)(0xD000000000000018, 0x800000018DD79680);
  }

  return result;
}

uint64_t SDFStyle.Fill.draw(in:sdf:)(uint64_t *a1, uint64_t a2)
{
  if (*(*(*a1 + 16) + 64) != 2)
  {
    RBColorFromLinear();
  }

  GraphicsContext.copyOnWrite()();
  RBDrawingStateAddStyle();
  GraphicsContext.copyOnWrite()();
  return RBDrawingStateDrawLayerByReference();
}

uint64_t SDFStyle.Stroke.draw(in:sdf:)(uint64_t *a1, uint64_t a2)
{
  if (*(*(*a1 + 16) + 64) != 2)
  {
    RBColorFromLinear();
  }

  GraphicsContext.copyOnWrite()();
  RBDrawingStateAddStyle();
  GraphicsContext.copyOnWrite()();
  return RBDrawingStateDrawLayerByReference();
}

uint64_t SDFStyle.Gradient.draw(in:sdf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v6 = *(a3 + 16);
  }

  else
  {
    v6 = *(a4 + 16);
  }

  if (v6)
  {
    if (v6 > 0x7FFFFFFFFFFFFFELL)
    {
      __break(1u);
    }

    v10 = result;
    if ((16 * (v6 + 1)) <= 1024 || (v14 = v6 + 1, v15 = v6, result = swift_stdlib_isStackAllocationSafe(), result))
    {
      MEMORY[0x1EEE9AC00](result);
      closure #1 in SDFStyle.Gradient.draw(in:sdf:)(v17 - v11, v12, v13, a3, a4, a5, a2, v10);
    }

    else
    {
      v16 = swift_slowAlloc();
      closure #1 in SDFStyle.Gradient.draw(in:sdf:)(v16, v14, v15, a3, a4, a5, a2, v10);
      MEMORY[0x193AC4820](v16, -1, -1);
    }

    GraphicsContext.copyOnWrite()();
    return RBDrawingStateDrawLayerByReference();
  }

  return result;
}

uint64_t SDFStyle.Shadow.draw(in:sdf:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v32 = *MEMORY[0x1E69E9840];
  if (*(v3 + 56))
  {
    outlined init with copy of SDF(a2, v24);
    specialized GraphicsContext.clipToLayer(opacity:options:content:)(1, a1, v3, a2, 1.0);
    outlined destroy of SDF(a2);
  }

  if (*(v3 + 40) != 0.0 || *(v3 + 48) != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    RBDrawingStateTranslateCTM();
  }

  v6 = *(v3 + 8);
  v7 = *(v3 + 12);
  v8 = *(v3 + 16);
  v9 = *(v3 + 20);
  v10 = *(v3 + 24);
  v11 = *a1;
  v12 = *(*(*a1 + 16) + 64);
  if (v12 != 2)
  {
    RBColorFromLinear();
    v12 = *(*(v11 + 16) + 64);
  }

  v22[0] = v6;
  v22[1] = v7;
  v22[2] = v8;
  v22[3] = v9;
  v23 = *MEMORY[0x1E69C7130];
  _Q1.f64[0] = -*v3;
  v14.f64[0] = *(v3 + 32) * 3.0;
  _Q1.f64[1] = v14.f64[0];
  v14.f64[1] = *v3;
  v15 = vcvt_f32_f64(vmulq_n_f64(vsubq_f64(vdupq_lane_s64(*(a2 + 16), 0), vsubq_f64(_Q1, v14)), 1.0 / (*(a2 + 16) - *(a2 + 8))));
  __asm { FMOV            V1.2S, #1.0 }

  v21 = vcvtq_f64_f32(vsub_f32(*&_Q1.f64[0], v15));
  v24[0] = 0;
  v25 = 1065353216;
  v26 = 2;
  v27 = v22;
  v28 = v12;
  v29 = v10;
  v30 = &v21;
  v31 = 1024;
  GraphicsContext.copyOnWrite()();
  RBDrawingStateAddStyle();
  GraphicsContext.copyOnWrite()();
  return RBDrawingStateDrawLayerByReference();
}

uint64_t SDFStyle.GlassDisplacement.draw(in:sdf:)(uint64_t a1, uint64_t a2)
{
  GraphicsContext.copyOnWrite()();
  RBDrawingStateAddStyle();
  GraphicsContext.copyOnWrite()();
  return RBDrawingStateDrawLayerByReference();
}

uint64_t SDFStyle.GlassHighlight.draw(in:sdf:)(uint64_t *a1, uint64_t a2)
{
  if (*(*(*a1 + 16) + 64) != 2)
  {
    RBColorFromLinear();
  }

  GraphicsContext.copyOnWrite()();
  RBDrawingStateAddStyle();
  GraphicsContext.copyOnWrite()();
  return RBDrawingStateDrawLayerByReference();
}

uint64_t Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.draw(in:sdf:)(uint64_t *a1, uint64_t *a2)
{
  if (*(*(*a1 + 16) + 64) != 2)
  {
    RBColorFromLinear();
  }

  GraphicsContext.copyOnWrite()();
  v3 = *a1;
  RBDrawingStateInit();
  RBDrawingStateAddStyle();
  RBDrawingStateDrawLayerByReference();
  RBDrawingStateDestroy();
  if (*(*(v3 + 16) + 64) != 2)
  {
    RBColorFromLinear();
  }

  GraphicsContext.copyOnWrite()();
  RBDrawingStateInit();
  RBDrawingStateAddStyle();
  RBDrawingStateDrawLayerByReference();
  return RBDrawingStateDestroy();
}

void SDFStyle.Group.draw(in:sdf:)(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *(v2 + 16);
  v122 = *v2;
  v123 = v4;
  v124 = *(v2 + 32);
  *&v85 = *(&v122 + 1);
  *(&v85 + 1) = v122;
  v5 = v4;
  v6 = v4 >> 6;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (v6 == 1)
  {
    if ((v122 & 0x10000000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_4;
  }

  if (v85 != 0 || v4 != 128)
  {
    v19 = v122 == 1 && *(&v122 + 1) == 0;
    if (!v19 || v4 != 128)
    {
      if (v122 == 2 && v4 == 128)
      {
        if (!*(a2 + 56))
        {
          return;
        }

        goto LABEL_31;
      }

LABEL_4:
      v7 = *(v2 + 16);
      __dst = *v2;
      v118 = v7;
      *&v119 = *(v2 + 32);
      v8 = -SDFStyle.Group.margin.getter();
      v127 = CGRectInset(*(v3 + 24), v8, v8);
      x = v127.origin.x;
      y = v127.origin.y;
      width = v127.size.width;
      height = v127.size.height;
      IsNull = CGRectIsNull(v127);
      if (IsNull)
      {
        v14 = 0;
      }

      else
      {
        v14 = *&x;
      }

      if (IsNull)
      {
        v15 = 0;
      }

      else
      {
        v15 = *&y;
      }

      if (IsNull)
      {
        v16 = 0;
      }

      else
      {
        v16 = *&width;
      }

      if (IsNull)
      {
        v17 = 0;
      }

      else
      {
        v17 = *&height;
      }

      *&v125[0] = v14;
      *&v125[1] = v15;
      if (IsNull)
      {
        v18 = 6;
      }

      else
      {
        v18 = 0;
      }

      *&v125[2] = v16;
      *&v125[3] = v17;
      v126 = v18;
      GraphicsContext.clip(to:style:options:)(v125, 256, 0);
      outlined consume of Path.Storage(v14, v15, v16, v17, v18);
    }
  }

LABEL_31:
  v84 = v5;
  v20 = MEMORY[0x1E69E7CC0];
  v121 = MEMORY[0x1E69E7CC0];
  v21 = v124;
  v22 = *(v124 + 16);
  if (v22)
  {
    v23 = v124 + 32;
    v24 = a1;
    v86 = v3;
    v89 = v124;
    v95 = v124 + 32;
    while (1)
    {
      v25 = (v23 + (--v22 << 7));
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[3];
      v112 = v25[2];
      v113 = v28;
      v110 = v26;
      v111 = v27;
      v29 = v25[4];
      v30 = v25[5];
      v31 = v25[6];
      *(v116 + 12) = *(v25 + 108);
      v115 = v30;
      v116[0] = v31;
      v114 = v29;
      memmove(&__dst, v25, 0x7CuLL);
      v32 = _s7SwiftUI14GraphicsFilterOWOg(&__dst);
      switch(v32)
      {
        case 1:
          v59 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
          if (*(v59 + 120) >> 30 == 1)
          {
            v60 = *(v59 + 16);
            if ((v60 & 0x8000000000000000) == 0)
            {
              if (*(v59 + 8))
              {
                v61 = 3;
              }

              else
              {
                v61 = 2;
              }

              if (*(v59 + 9))
              {
                v62 = v61;
              }

              else
              {
                v62 = *(v59 + 8);
              }

              v63 = *v59;
              outlined init with copy of GraphicsFilter(&v110, &v103);
              outlined init with copy of SDFStyle.Group(&v122, &v103);
              specialized GraphicsContext.addVariableBlurLayer(radius:options:content:)(v62, v24, &v122, v60, v3, v63);
              outlined destroy of SDFStyle.Group(&v122);
              v64 = *(v20 + 2);
              v65 = 32;
              while (v64)
              {
                v66 = *&v20[v65];
                v65 += 8;
                --v64;
                if (v66 == v60)
                {
                  outlined destroy of GraphicsFilter(&v110);
                  goto LABEL_93;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
              }

              v70 = *(v20 + 2);
              v69 = *(v20 + 3);
              if (v70 >= v69 >> 1)
              {
                v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v20);
              }

              outlined destroy of GraphicsFilter(&v110);
              *(v20 + 2) = v70 + 1;
              *&v20[8 * v70 + 32] = v60;
              v121 = v20;
              goto LABEL_93;
            }
          }

          break;
        case 3:
          v54 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
          if (*(v54 + 112) >> 30 == 1)
          {
            v55 = *(v54 + 8);
            if ((v55 & 0x8000000000000000) == 0)
            {
              v56 = *(v20 + 2);
              v57 = 32;
              while (v56)
              {
                v58 = *&v20[v57];
                v57 += 8;
                --v56;
                if (v58 == v55)
                {
                  goto LABEL_93;
                }
              }

              outlined init with copy of GraphicsFilter(&v110, &v103);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
              }

              v68 = *(v20 + 2);
              v67 = *(v20 + 3);
              if (v68 >= v67 >> 1)
              {
                v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v20);
              }

              outlined destroy of GraphicsFilter(&v110);
              *(v20 + 2) = v68 + 1;
              *&v20[8 * v68 + 32] = v55;
              v121 = v20;
            }
          }

          goto LABEL_93;
        case 2:
          v33 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
          if (*(v33 + 112) >> 30 != 1 || (v34 = v33, v35 = *(v33 + 8), (v35 & 0x8000000000000000) != 0))
          {
            v107 = v114;
            v108 = v115;
            v109[0] = v116[0];
            *(v109 + 12) = *(v116 + 12);
            v103 = v110;
            v104 = v111;
            v105 = v112;
            v106 = v113;
            GraphicsContext.addFilter(_:in:)(&v103, *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
          }

          else
          {
            v107 = v114;
            v108 = v115;
            v109[0] = v116[0];
            *(v109 + 12) = *(v116 + 12);
            v103 = v110;
            v104 = v111;
            v105 = v112;
            v106 = v113;
            v36 = _s7SwiftUI14GraphicsFilterOWOj6_(&v103);
            outlined init with copy of GraphicsFilter.DisplacementMap(v36, &v98);
            if (one-time initialization token for system != -1)
            {
              swift_once();
            }

            v37 = static ShaderLibrary.system;
            type metadata accessor for _ContiguousArrayStorage<Shader.Argument>();
            v38 = swift_allocObject();
            *(v38 + 16) = xmmword_18DDA6EB0;
            v39 = *v34;
            *&v40 = *v34;
            *(v38 + 32) = v40;
            *(v38 + 40) = 0;
            *(v38 + 48) = 0;
            *(v38 + 52) = 0;
            v41 = *v24;
            v42 = *(*v24 + 32);
            v43 = *(*v24 + 40);
            v44 = v42;
            v45 = v43;
            if (v42 == 1)
            {
              v46 = *(v41 + 16);
              v44 = *(v46 + 48);
              v45 = *(v46 + 56);
            }

            v98 = v37;
            v99 = 0x6563616C70736964;
            v100 = 0xEF70614D746E656DLL;
            v101 = v38;
            v102 = 0;
            v96 = v44;
            v97 = v45;
            v47 = v37;
            outlined copy of EnvironmentValues?(v42, v43);
            v48 = Shader.makeRBShader(in:)(&v96);
            outlined consume of EnvironmentValues?(v96, v97);
            if (v48)
            {
              v92 = v47;
              v90 = v48;
              v91 = v48;
              GraphicsContext.copyOnWrite()();
              v49 = *a1;
              v50 = RBDrawingStateBeginLayer();
              type metadata accessor for GraphicsContext.Storage();
              v51 = swift_allocObject();
              *(v51 + 32) = xmmword_18DD85500;
              *(v51 + 48) = 1065353216;
              *(v51 + 56) = 0x7FF8000000000000;
              v52 = v49[2];
              v53 = *(v52 + 64);
              v93 = v50;
              if (v53 == RBDrawingStateGetDefaultColorSpace())
              {
                *(v51 + 16) = v52;
              }

              else
              {
                v71 = RBDrawingStateGetDisplayList();
                v73 = v49[4];
                v72 = v49[5];
                v74 = v73;
                v87 = v72;
                v88 = v71;
                if (v73 == 1)
                {
                  v74 = *(v52 + 48);
                  v72 = *(v52 + 56);
                }

                v98 = v74;
                v99 = v72;
                type metadata accessor for GraphicsContext.Storage.Shared();
                swift_allocObject();
                outlined copy of EnvironmentValues?(v73, v87);
                *(v51 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v88, &v98);
                v3 = v86;
                v50 = v93;
              }

              *(v51 + 24) = v50;
              *(v51 + 64) = 0;
              v96 = v51;
              if (v35 >= *(*(&v123 + 1) + 16))
              {
              }

              else
              {
                v75 = *(*(&v123 + 1) + 56 * v35 + 32);

                SDFStyle.draw(in:sdf:)(&v96, v3, v75);
              }

              v98 = v90;
              v99 = *&v39;
              v100 = *&v39;
              LODWORD(v101) = 0;
              Shader.ResolvedShader.rbFilterFlags.getter();
              RBDrawingStateAddShaderFilterLayer();

              v47 = v92;
            }

            v76 = *(v20 + 2);
            v77 = 32;
            v24 = a1;
            while (v76)
            {
              v78 = *&v20[v77];
              v77 += 8;
              --v76;
              if (v78 == v35)
              {

                outlined destroy of GraphicsFilter(&v110);
                goto LABEL_91;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
            }

            v80 = *(v20 + 2);
            v79 = *(v20 + 3);
            if (v80 >= v79 >> 1)
            {
              v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v20);
            }

            outlined destroy of GraphicsFilter(&v110);
            *(v20 + 2) = v80 + 1;
            *&v20[8 * v80 + 32] = v35;
            v121 = v20;
LABEL_91:
            v21 = v89;
          }

          v23 = v95;
          goto LABEL_93;
      }

      v107 = v114;
      v108 = v115;
      v109[0] = v116[0];
      *(v109 + 12) = *(v116 + 12);
      v103 = v110;
      v104 = v111;
      v105 = v112;
      v106 = v113;
      GraphicsContext.addFilter(_:in:)(&v103, *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
LABEL_93:
      if (!v22)
      {
        goto LABEL_97;
      }

      if (v22 > *(v21 + 16))
      {
        __break(1u);
        break;
      }
    }
  }

  v24 = a1;
LABEL_97:
  *&v103 = *(&v123 + 1);
  v81 = *(v20 + 2);

  if (v81)
  {
    specialized MutableCollection<>.sort(by:)(&v121);
    v82 = v121;
    v83 = *(v121 + 2);
    if (v83)
    {
      while (1)
      {
        specialized Array.remove(at:)(*&v82[8 * v83 + 24], &v110);
        __dst = v110;
        v118 = v111;
        v119 = v112;
        v120 = v113;
        outlined destroy of Material.Layer.SDFLayer.GroupLayer(&__dst);
        if (!--v83)
        {
          break;
        }

        if (v83 > *(v82 + 2))
        {
          __break(1u);
          break;
        }
      }
    }
  }

  if ((v84 & 0x80) != 0)
  {
    if (v85 == 0 && v84 == 128)
    {

      specialized static SDFStyle.Group.drawElements(_:in:sdf:)(v103, v24, v3);
      goto LABEL_105;
    }

    if (v85 == __PAIR128__(1, 0) && v84 == 128)
    {
      specialized GraphicsContext.drawLayer(flags:content:)(128, *v24, &v103, v3);
      goto LABEL_104;
    }

    if (v85 == __PAIR128__(2, 0) && v84 == 128)
    {
      specialized GraphicsContext.drawLayer(flags:content:)(0, *v24, v3, &v103);
      goto LABEL_104;
    }
  }

  specialized GraphicsContext.drawLayer(flags:content:)(1, *v24, &v103, v3);
LABEL_104:

LABEL_105:
}

uint64_t closure #1 in SDFStyle.Gradient.draw(in:sdf:)(uint64_t isStackAllocationSafe, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = *MEMORY[0x1E69E9840];
  v46 = 0.0;
  v47 = 1;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v9 = a8;
  v12 = a6;
  v15 = a4;
  v11 = a3;
  v10 = isStackAllocationSafe;
  v44 = a5;
  v42 = a2;
  v43 = a7;
  if (a3)
  {
    if (*(a4 + 16) < a3)
    {
      __break(1u);
      goto LABEL_53;
    }

    v8 = (a4 + 48);
    v18 = (isStackAllocationSafe + 8);
    LOBYTE(v16) = 1;
    v17 = 0.0;
    v14 = a3;
    do
    {
      isStackAllocationSafe = RBColorFromLinear();
      *(v18 - 2) = v19;
      *(v18 - 1) = v20;
      *v18 = v21;
      v18[1] = v22;
      v23 = *v8;
      if (v16)
      {
        v46 = *v8;
        v17 = v23;
        v16 = 0;
      }

      else
      {
        v16 = 0;
        if (v17 <= v23)
        {
          v17 = *v8;
        }

        v46 = v17;
      }

      v8 += 5;
      v18 += 4;
      --v14;
    }

    while (v14);
    v47 = 0;
  }

  else
  {
    v17 = 0.0;
  }

  *(v10 + 16 * v11) = *MEMORY[0x1E69C7130];
  v13 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    goto LABEL_48;
  }

  v14 = *(v12 + 16);
  v16 = v11 + 1;
  if (v14)
  {
    if (!(v11 >> 61))
    {
      v16 = v13 + 4 * v11;
      if (!__OFADD__(v13, 4 * v11))
      {
        goto LABEL_17;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_17:
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  if (v16 >> 60)
  {
    goto LABEL_56;
  }

  v8 = (8 * v16);
  if ((8 * v16) > 1024)
  {
    goto LABEL_49;
  }

  do
  {
    v15 = &v41;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v25 = &v41 - v24;
    v26 = 5;
    if (!v14)
    {
      v26 = 1;
    }

    if (v11)
    {
      v27 = 0;
      v28 = 0;
      v29 = *(v43 + 16);
      v30 = 1.0 / (v29 - *(v43 + 8));
      v31 = v44 + 32;
      v32 = *(v44 + 16);
      while (v32 != v28)
      {
        v33 = v30 * (v29 - *(v31 + 8 * v28));
        *&v25[8 * v27] = (1.0 - v33);
        if (v14)
        {
          v34 = xmmword_18DDBDEB0;
          if (v28 < v14)
          {
            v34 = *(v12 + 32 + 16 * v28);
          }

          if (__OFADD__(v27, 1))
          {
            goto LABEL_43;
          }

          *&v25[8 * v27 + 8] = 1.0 - *&v34;
          if (__OFADD__(v27, 2))
          {
            goto LABEL_44;
          }

          *&v25[8 * v27 + 16] = 1.0 - *(&v34 + 1);
          if (__OFADD__(v27, 3))
          {
            goto LABEL_45;
          }

          *&v25[8 * v27 + 24] = 1.0 - *(&v34 + 2);
          if (__OFADD__(v27, 4))
          {
            goto LABEL_46;
          }

          *&v25[8 * v27 + 32] = 1.0 - *(&v34 + 3);
        }

        v35 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          goto LABEL_42;
        }

        ++v28;
        v27 += v26;
        if (v11 == v28)
        {
          v36 = __OFSUB__(v35, v26);
          v37 = v35 - v26;
          if (v36)
          {
            goto LABEL_40;
          }

          goto LABEL_36;
        }
      }
    }

    else
    {
      v35 = 0;
      v36 = __OFSUB__(0, v26);
      v37 = -v26;
      if (!v36)
      {
LABEL_36:
        *&v25[8 * v35] = *&v25[8 * v37];
        if (v10)
        {
          v38 = *(*(*v9 + 16) + 64);
          v48[0] = 0;
          v49 = 1065353216;
          v50 = v13;
          v51 = v10;
          v52 = v38;
          v53 = v17;
          v54 = v25;
          v55 = (v14 != 0) << 9;
          GraphicsContext.copyOnWrite()();
          return RBDrawingStateAddStyle();
        }

        __break(1u);
        goto LABEL_58;
      }

LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while (isStackAllocationSafe);
  v13 = swift_slowAlloc();
  v40 = v45;
  closure #1 in closure #1 in SDFStyle.Gradient.draw(in:sdf:)(v13, v16, v14 != 0, v11, v43, v15, v44, v12, v10, v42, v9, &v46);
  v8 = v40;
  if (!v40)
  {
    return MEMORY[0x193AC4820](v13, -1, -1);
  }

LABEL_58:

  result = MEMORY[0x193AC4820](v13, -1, -1);
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in SDFStyle.Gradient.draw(in:sdf:)(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = 5;
  if ((a3 & 1) == 0)
  {
    v12 = 1;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!a4)
  {
    v19 = 0;
    v20 = __OFSUB__(0, v12);
    v21 = -v12;
    if (!v20)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  if (*(a7 + 16) < a4)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = 0;
  v14 = 0;
  v15 = *(a5 + 16);
  v16 = 1.0 / (v15 - *(a5 + 8));
  do
  {
    v17 = v16 * (v15 - *(a7 + 32 + 8 * v14));
    *(a1 + 8 * v13) = (1.0 - v17);
    if (a3)
    {
      v18 = xmmword_18DDBDEB0;
      if (v14 < *(a8 + 16))
      {
        v18 = *(a8 + 32 + 16 * v14);
      }

      if (__OFADD__(v13, 1))
      {
        goto LABEL_26;
      }

      *(a1 + 8 * (v13 + 1)) = 1.0 - *&v18;
      if (__OFADD__(v13, 2))
      {
        goto LABEL_27;
      }

      *(a1 + 8 * (v13 + 2)) = 1.0 - *(&v18 + 1);
      if (__OFADD__(v13, 3))
      {
        goto LABEL_28;
      }

      *(a1 + 8 * (v13 + 3)) = 1.0 - *(&v18 + 2);
      if (__OFADD__(v13, 4))
      {
        goto LABEL_29;
      }

      *(a1 + 8 * (v13 + 4)) = 1.0 - *(&v18 + 3);
    }

    v19 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_25;
    }

    ++v14;
    v13 += v12;
  }

  while (a4 != v14);
  v20 = __OFSUB__(v19, v12);
  v21 = v19 - v12;
  if (v20)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_18:
  *(a1 + 8 * v19) = *(a1 + 8 * v21);
  if (__OFADD__(a4, 1))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!a9)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  if (!a1)
  {
    goto LABEL_34;
  }

  GraphicsContext.copyOnWrite()();
  return RBDrawingStateAddStyle();
}

void specialized static SDFStyle.Group.drawElements(_:in:sdf:)(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v144 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for Logger();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *a2;
    v12 = a1 + 32;
    v103 = (v7 + 16);
    v101 = "distanceGradient";
    v102 = (v7 + 8);
    v106 = xmmword_18DD85500;
    v100 = 0x8220102uLL;
    v104 = a3;
    v105 = v6;
    v107 = v11;
    v108 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v18 = *(v12 + 16);
      v130[0] = *v12;
      v130[1] = v18;
      v130[2] = *(v12 + 32);
      v131 = *(v12 + 48);
      v19 = v18;
      v112 = v11;
      if (*(v11 + 48) == *&v18)
      {
        outlined init with copy of Material.Layer.SDFLayer.GroupLayer(v130, &v119);

        v20 = v11;
      }

      else
      {
        outlined init with copy of Material.Layer.SDFLayer.GroupLayer(v130, &v119);

        GraphicsContext.copyOnWrite()();
        v20 = v112;
        *(v112 + 48) = v19;
      }

      v21 = DWORD2(v130[0]);
      v22 = *&v130[0];
      if (*(&v130[0] + 1) >> 62)
      {
        break;
      }

      if (*(v20 + 52) != DWORD2(v130[0]))
      {
        v23 = v10;
        v24 = v11;
        v25 = a3;
        v26 = v9;
        v27 = v6;
        v28 = *&v130[0];
        GraphicsContext.copyOnWrite()();
        v22 = v28;
        v6 = v27;
        v9 = v26;
        a3 = v25;
        v11 = v24;
        v10 = v23;
        *(v112 + 52) = v21;
      }

      v29 = v22 >> 60;
      if ((v22 >> 60) <= 4)
      {
        if (v29 <= 1)
        {
          if (v29)
          {
            v71 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v113[2] = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v113[3] = v71;
            v114 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            v72 = a3[3];
            v134[2] = a3[2];
            v135[0] = v72;
            *(v135 + 11) = *(a3 + 59);
            v73 = a3[1];
            v134[0] = *a3;
            v134[1] = v73;
            SDFStyle.Stroke.draw(in:sdf:)(&v112, v134);
          }

          else
          {
            v113[0] = *(v22 + 16);
            *(v113 + 12) = *(v22 + 28);
            v57 = a3[2];
            v58 = a3[3];
            v59 = *a3;
            v132[1] = a3[1];
            v132[2] = v57;
            v133[0] = v58;
            *(v133 + 11) = *(a3 + 59);
            v132[0] = v59;
            SDFStyle.Fill.draw(in:sdf:)(&v112, v132);
          }
        }

        else if (v29 == 2)
        {
          v13 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v14 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v15 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v16 = a3[3];
          v136[2] = a3[2];
          v137[0] = v16;
          *(v137 + 11) = *(a3 + 59);
          v17 = a3[1];
          v136[0] = *a3;
          v136[1] = v17;

          SDFStyle.Gradient.draw(in:sdf:)(&v112, v136, v13, v14, v15);
        }

        else if (v29 == 3)
        {
          v46 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v115 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v116 = v46;
          v117[0] = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          *(v117 + 10) = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x3A);
          v47 = a3[2];
          v48 = a3[3];
          v49 = *a3;
          v138[1] = a3[1];
          v138[2] = v47;
          v139[0] = v48;
          *(v139 + 11) = *(a3 + 59);
          v138[0] = v49;
          SDFStyle.Shadow.draw(in:sdf:)(&v112, v138);
        }

        else
        {
          v66 = *(a3 + 3);
          v67 = *(a3 + 4);
          v68 = *(a3 + 5);
          v69 = *(a3 + 6);
          v70 = *(**((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 104);

          v70(&v112, v66, v67, v68, v69);
        }
      }

      else if (v29 > 7)
      {
        if (v29 != 8)
        {
          if (v29 != 9)
          {
            if (one-time initialization token for unlocatedIssuesLog != -1)
            {
              swift_once();
            }

            v79 = __swift_project_value_buffer(v6, static Log.unlocatedIssuesLog);
            swift_beginAccess();
            (*v103)(v9, v79, v6);
            v80 = Logger.logObject.getter();
            v81 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v80, v81))
            {
              v82 = swift_slowAlloc();
              v83 = swift_slowAlloc();
              *&v119 = v83;
              *v82 = v100;
              *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, v101 | 0x8000000000000000, &v119);
              _os_log_impl(&dword_18D018000, v80, v81, "%{public}s", v82, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v83);
              v84 = v83;
              v6 = v105;
              MEMORY[0x193AC4820](v84, -1, -1);
              MEMORY[0x193AC4820](v82, -1, -1);
            }

            (*v102)(v9, v6);
            outlined destroy of Material.Layer.SDFLayer.GroupLayer(v130);
            goto LABEL_5;
          }

          v110 = v12;
          v111 = v10;
          v51 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v50 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

          GraphicsContext.copyOnWrite()();
          v52 = v112;
          v53 = RBDrawingStateBeginLayer();
          type metadata accessor for GraphicsContext.Storage();
          v54 = swift_allocObject();
          *(v54 + 32) = v106;
          *(v54 + 48) = 1065353216;
          *(v54 + 56) = 0x7FF8000000000000;
          v55 = v52[2];
          v56 = *(v55 + 64);
          if (v56 == RBDrawingStateGetDefaultColorSpace())
          {
            *(v54 + 16) = v55;
          }

          else
          {
            v99 = RBDrawingStateGetDisplayList();
            v85 = v52[4];
            v86 = v52[5];
            v87 = v85;
            v109 = v86;
            if (v85 == 1)
            {
              v87 = *(v55 + 48);
              v109 = *(v55 + 56);
            }

            v98 = v87;
            type metadata accessor for GraphicsContext.Storage.Shared();
            v88 = swift_allocObject();
            *(v88 + 24) = 0;
            *(v88 + 32) = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
            *(v88 + 40) = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
            *(v88 + 72) = 0;
            _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOi0_(&v119);
            v89 = v127;
            *(v88 + 208) = v126;
            *(v88 + 224) = v89;
            *(v88 + 240) = v128;
            v90 = v123;
            *(v88 + 144) = v122;
            *(v88 + 160) = v90;
            v91 = v125;
            *(v88 + 176) = v124;
            *(v88 + 192) = v91;
            v92 = v120[0];
            *(v88 + 80) = v119;
            *(v88 + 96) = v92;
            v93 = v121;
            *(v88 + 112) = v120[1];
            *(v88 + 128) = v93;
            *(v88 + 248) = 2;
            *(v88 + 264) = 0;
            *(v88 + 272) = 0;
            *(v88 + 256) = 0;
            v95 = v98;
            v94 = v99;
            *(v88 + 16) = v99;
            v96 = v109;
            *(v88 + 48) = v95;
            *(v88 + 56) = v96;
            *(v88 + 64) = [v94 defaultColorSpace];
            *(v54 + 16) = v88;
            v6 = v105;
          }

          *(v54 + 24) = v53;
          *(v54 + 64) = 0;
          *&v119 = v54;

          v97 = v104;
          SDFStyle.draw(in:sdf:)(&v119, v104, v50);

          a3 = v97;
          RBDrawingStateClipLayer();

          SDFStyle.draw(in:sdf:)(&v112, v97, v51);

          goto LABEL_25;
        }

        v65 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v119 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        LOBYTE(v120[0]) = v65;
        *(v120 + 8) = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        SDFStyle.Group.draw(in:sdf:)(&v112, a3);
      }

      else
      {
        if (v29 == 5)
        {
          if (*(a3 + 72) == 2)
          {
            v60 = 4;
          }

          else
          {
            v60 = 2;
          }

          if (!*(a3 + 73))
          {
            v60 = 0;
          }

          v61 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v62 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v63 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v64 = vcvt_f32_f64(*((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x18));
          LOBYTE(v119) = 0;
          BYTE1(v119) = v60;
          *(&v119 + 4) = vrev64_s32(vcvt_f32_f64(*(a3 + 8)));
          *(&v119 + 3) = -v61;
          *&v120[0] = v64;
          *(v120 + 2) = v62;
          *(v120 + 3) = -v63;
          GraphicsContext.copyOnWrite()();
          RBDrawingStateAddStyle();
          GraphicsContext.copyOnWrite()();
          RBDrawingStateDrawLayerByReference();
          outlined destroy of Material.Layer.SDFLayer.GroupLayer(v130);
          v6 = v105;
          goto LABEL_5;
        }

        if (v29 == 6)
        {
          v30 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v117[4] = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v118[0] = v30;
          *(v118 + 9) = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x49);
          v31 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v117[2] = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v117[3] = v31;
          v32 = a3[3];
          v140[2] = a3[2];
          v141[0] = v32;
          *(v141 + 11) = *(a3 + 59);
          v33 = a3[1];
          v140[0] = *a3;
          v140[1] = v33;
          SDFStyle.GlassHighlight.draw(in:sdf:)(&v112, v140);
        }

        else
        {
          v74 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
          v123 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          v124 = v74;
          v125 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
          *&v126 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
          v75 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v120[0] = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v120[1] = v75;
          v76 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v121 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v122 = v76;
          v119 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v77 = a3[3];
          v142[2] = a3[2];
          v143[0] = v77;
          *(v143 + 11) = *(a3 + 59);
          v78 = a3[1];
          v142[0] = *a3;
          v142[1] = v78;
          Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.draw(in:sdf:)(&v112, v142);
        }
      }

      outlined destroy of Material.Layer.SDFLayer.GroupLayer(v130);
LABEL_5:

      v12 += 56;
      if (!--v10)
      {
        return;
      }
    }

    v109 = *&v130[0];
    v110 = v12;
    v111 = v10;
    v34 = *((*(&v130[0] + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v120[0] = *((*(&v130[0] + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v120[1] = v34;
    v35 = *((*(&v130[0] + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
    v121 = *((*(&v130[0] + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v122 = v35;
    v119 = *((*(&v130[0] + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (*(v20 + 52) != 17)
    {
      GraphicsContext.copyOnWrite()();
      *(v112 + 52) = 17;
    }

    outlined init with copy of Material.Layer.SDFLayer.GroupLayer(v130, v129);
    GraphicsContext.copyOnWrite()();
    v36 = v112;
    v37 = RBDrawingStateBeginLayer();
    type metadata accessor for GraphicsContext.Storage();
    v38 = swift_allocObject();
    *(v38 + 32) = v106;
    *(v38 + 48) = 1065353216;
    *(v38 + 56) = 0x7FF8000000000000;
    v39 = v36[2];
    v40 = *(v39 + 64);
    if (v40 == RBDrawingStateGetDefaultColorSpace())
    {
      *(v38 + 16) = v39;
    }

    else
    {
      v41 = RBDrawingStateGetDisplayList();
      v42 = v36[4];
      v43 = v36[5];
      v44 = v42;
      v45 = v43;
      if (v42 == 1)
      {
        v44 = *(v39 + 48);
        v45 = *(v39 + 56);
      }

      *&v129[0] = v44;
      *(&v129[0] + 1) = v45;
      type metadata accessor for GraphicsContext.Storage.Shared();
      swift_allocObject();
      outlined copy of EnvironmentValues?(v42, v43);
      *(v38 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v41, v129);
      a3 = v104;
      v6 = v105;
    }

    *(v38 + 24) = v37;
    *(v38 + 64) = 0;
    *&v129[0] = v38;

    SDFStyle.draw(in:sdf:)(v129, a3, v109);

    RBDrawingStateClipLayer();

    outlined destroy of Material.Layer.SDFLayer.GroupLayer(v130);
    v129[2] = v120[1];
    v129[3] = v121;
    v129[4] = v122;
    v129[0] = v119;
    v129[1] = v120[0];
    GraphicsContext.copyOnWrite()();
    RBDrawingStateAddColorMatrixFilter();
    RBDrawingStateBeginLayer();
    RBDrawingStateDrawLayer();
LABEL_25:
    outlined destroy of Material.Layer.SDFLayer.GroupLayer(v130);
    v11 = v107;
    v9 = v108;
    v12 = v110;
    v10 = v111;
    goto LABEL_5;
  }
}

void specialized GraphicsContext.drawSDFStyle<A>(_:ovalization:renderer:bounds:content:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, __n128 a8, double a9)
{
  v77 = a8.n128_f32[0];
  v10 = a1;
  v12 = *a6;
  v11 = *(a6 + 8);
  v14 = *(a6 + 16);
  v13 = *(a6 + 24);
  v106 = a2;
  v107 = a9;
  if (a1 >> 60 || (a8.n128_u64[0] = *(a1 + 16), a8.n128_f64[0] != 0.0))
  {
    if (*(a6 + 32))
    {
      v12 = *MEMORY[0x1E695F050];
      v11 = *(MEMORY[0x1E695F050] + 8);
      v14 = *(MEMORY[0x1E695F050] + 16);
      v13 = *(MEMORY[0x1E695F050] + 24);
      v18 = *(a7 + 16);
      if (v18)
      {
        v19 = (a7 + 64);
        v73 = *(MEMORY[0x1E695F050] + 24);
        v74 = *(MEMORY[0x1E695F050] + 16);
        v75 = *(MEMORY[0x1E695F050] + 8);
        v76 = *MEMORY[0x1E695F050];
        do
        {
          v24 = *(v19 - 4);
          v25 = *(v19 - 3);
          v26 = *(v19 - 2);
          v27 = *(v19 - 1);
          v28 = *v19;
          if (v28 > 2)
          {
            if (v28 == 5)
            {
              if (*(v24 + 16))
              {
                if (*(v24 + 16) == 1)
                {
                  outlined copy of Path.Storage(*(v19 - 4), *(v19 - 3), *(v19 - 2), *(v19 - 1), 5u);
                  v10 = a1;
                  RBPathGetBoundingRect();
                }

                else
                {
                  v43 = outlined copy of Path.Storage(*(v19 - 4), *(v19 - 3), *(v19 - 2), *(v19 - 1), 5u);
                  v33 = MEMORY[0x193AC3640](v24 + 24, v43);
                }

                v20 = v33;
                v21 = v34;
                v22 = v35;
                v23 = v36;
              }

              else
              {
                v37 = *(v24 + 24);
                if (!v37)
                {
                  goto LABEL_50;
                }

                v38 = v37;
                outlined copy of Path.Storage(v24, v25, v26, v27, 5u);
                outlined copy of Path.Storage(v24, v25, v26, v27, 5u);
                PathBoundingBox = CGPathGetPathBoundingBox(v38);
                x = PathBoundingBox.origin.x;
                y = PathBoundingBox.origin.y;
                width = PathBoundingBox.size.width;
                height = PathBoundingBox.size.height;

                outlined consume of Path.Storage(v24, v25, v26, v27, 5u);
                v23 = height;
                v22 = width;
                v21 = y;
                v20 = x;
              }
            }

            else
            {
              v21 = v75;
              v20 = v76;
              v23 = v73;
              v22 = v74;
              if (v28 != 6)
              {
                goto LABEL_51;
              }
            }
          }

          else if (v28 < 2)
          {
            v20 = *(v19 - 4);
            v21 = *(v19 - 3);
            v22 = *(v19 - 2);
            v23 = *(v19 - 1);
          }

          else
          {
            v29 = *(v24 + 16);
            v30 = *(v24 + 24);
            v31 = *(v24 + 32);
            v32 = *(v24 + 40);
            outlined copy of Path.Storage(*(v19 - 4), *(v19 - 3), *(v19 - 2), *(v19 - 1), 2u);
            v23 = v32;
            v22 = v31;
            v21 = v30;
            v20 = v29;
          }

          v19 += 56;
          v108.origin.x = v12;
          v108.origin.y = v11;
          v108.size.width = v14;
          v108.size.height = v13;
          v109 = CGRectUnion(v108, *&v20);
          v12 = v109.origin.x;
          v11 = v109.origin.y;
          v14 = v109.size.width;
          v13 = v109.size.height;
          a8.n128_f64[0] = outlined consume of Path.Storage(v24, v25, v26, v27, v28);
          --v18;
        }

        while (v18);
      }
    }

    v44 = *a5;
    v45 = GraphicsContext.userToDeviceScale.getter(v44, a8);
    v46 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    SDFStyle.distanceRange.getter(v10);
    v49 = 0.0;
    v50 = 0.0;
    if ((v51 & 1) != 0 || (v47 <= 0.0 ? (v50 = v47) : (v50 = 0.0), v48 > 0.0 ? (v49 = v48) : (v49 = 0.0), v50 <= v49))
    {
      v52 = v45 * (v49 - v50);
      if (v52 < 64.0)
      {
        v53 = 1;
      }

      else
      {
        v53 = 2;
      }

      if (v52 >= 16.0)
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      SDFStyle.needsDistanceGradient.getter(v10);
      *&v102 = v46;
      *(&v102 + 1) = v50;
      *&v103 = v49;
      *(&v103 + 1) = v12;
      *&v104 = v11;
      *(&v104 + 1) = v14;
      *v105 = v13;
      *&v105[8] = a3;
      *&v105[16] = a4;
      v105[24] = v54;
      v105[25] = v55 & 1;
      v105[26] = 0;
      *&v78 = v46;
      *(&v78 + 1) = v50;
      *&v79 = v49;
      *(&v79 + 1) = v12;
      *&v80 = v11;
      *(&v80 + 1) = v14;
      *&v81 = v13;
      *(&v81 + 1) = a3;
      *&v82 = a4;
      BYTE8(v82) = v54;
      *(&v82 + 9) = v55 & 1;
      outlined init with copy of SDF(&v102, &v89);
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a3, a4);
      outlined destroy of SDF(&v78);
      v91 = v104;
      *v92 = *v105;
      *&v92[11] = *&v105[11];
      v89 = v102;
      v90 = v103;
      v56 = v44[4];
      v57 = v44[5];
      v58 = v56;
      v59 = v57;
      if (v56 == 1)
      {
        v60 = v44[2];
        v58 = *(v60 + 48);
        v59 = *(v60 + 56);
      }

      v61 = v102;
      v62 = v105[25];
      type metadata accessor for GraphicsContext.Storage();
      v63 = swift_allocObject();
      *(v63 + 32) = xmmword_18DD85500;
      *(v63 + 48) = 1065353216;
      *(v63 + 56) = 0x7FF8000000000000;
      *&v99[0] = v58;
      *(&v99[0] + 1) = v59;
      type metadata accessor for GraphicsContext.Storage.Shared();
      swift_allocObject();
      v64 = v61;
      outlined copy of EnvironmentValues?(v56, v57);
      *(v63 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v64, v99);
      *(v63 + 24) = RBDisplayListGetState();
      *(v63 + 64) = 0;

      *&v99[0] = v63;
      if (v105[24] == 2)
      {
        v65 = 2;
      }

      else
      {
        v65 = 1;
      }

      if (v62)
      {
        v66 = v65;
      }

      else
      {
        v66 = 0;
      }

      PathSet.drawSDF(in:distanceRange:gradient:ovalization:)(v99, v66, *(&v102 + 1), *&v103, v77);

      v101 = v44;

      SDFStyle.draw(in:sdf:)(&v101, &v89, v10);
      v67 = *&v92[8];
      if (*&v92[8] && (v92[26] & 1) == 0)
      {
        v68 = *&v92[16];
        *&v99[0] = v44;

        v69 = outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v67, v68);
        v67(v99, v69);
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v67, v68);

        v92[26] = 1;
      }

      else
      {
      }

      v99[2] = v91;
      v100[0] = *v92;
      *(v100 + 11) = *&v92[11];
      v99[0] = v89;
      v99[1] = v90;
      outlined destroy of SDF(v99);
    }

    else
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 24);
    v17 = *a5;
    *&v102 = a2;
    *(&v102 + 1) = a9;
    v89 = v16;
    LODWORD(v90) = v15;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v89);
    v86 = v96;
    v87 = v97;
    v88 = v98;
    v82 = *&v92[16];
    v83 = v93;
    v84 = v94;
    v85 = v95;
    v78 = v89;
    v79 = v90;
    v80 = v91;
    v81 = *v92;
    GraphicsContext.fill(_:with:matching:)(&v102, &v78, 0, 0, v17);
  }
}

void specialized GraphicsContext.drawSDFStyle<A>(_:ovalization:renderer:bounds:content:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, __n128 a9)
{
  if (a1 >> 60 || (a9.n128_u64[0] = *(a1 + 16), a9.n128_f64[0] != 0.0))
  {
    v26 = *(a8 + 16);
    v27 = *(a8 + 24);
    v28 = *a7;
    v29 = GraphicsContext.userToDeviceScale.getter(*a7, a9);
    v30 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    SDFStyle.distanceRange.getter(a1);
    v33 = 0.0;
    v34 = 0.0;
    if ((v35 & 1) != 0 || (v31 <= 0.0 ? (v34 = v31) : (v34 = 0.0), v32 > 0.0 ? (v33 = v32) : (v33 = 0.0), v34 <= v33))
    {
      v53 = a3;
      v55 = a2;
      v36 = v29 * (v33 - v34);
      if (v36 < 64.0)
      {
        v37 = 1;
      }

      else
      {
        v37 = 2;
      }

      if (v36 >= 16.0)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      SDFStyle.needsDistanceGradient.getter(a1);
      *v82 = v30;
      *&v82[8] = v34;
      *&v82[16] = *&v33;
      *&v82[32] = 0;
      *&v82[40] = v26;
      *v83 = v27;
      *&v83[8] = a5;
      *&v83[16] = a6;
      v83[24] = v38;
      v83[25] = v39 & 1;
      v83[26] = 0;
      *&v56 = v30;
      *(&v56 + 1) = v34;
      v57 = *&v33;
      *&v58 = 0;
      *(&v58 + 1) = v26;
      *&v59 = v27;
      *(&v59 + 1) = a5;
      *&v60 = a6;
      BYTE8(v60) = v38;
      *(&v60 + 9) = v39 & 1;
      outlined init with copy of SDF(v82, &v67);
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a5, a6);
      outlined destroy of SDF(&v56);
      v69 = *&v82[32];
      *v70 = *v83;
      *&v70[11] = *&v83[11];
      v67 = *v82;
      v68 = *&v82[16];
      v40 = v28[4];
      v41 = v28[5];
      v42 = v40;
      v43 = v41;
      if (v40 == 1)
      {
        v44 = v28[2];
        v42 = *(v44 + 48);
        v43 = *(v44 + 56);
      }

      v45 = *v82;
      type metadata accessor for GraphicsContext.Storage();
      inited = swift_initStackObject();
      *(inited + 32) = xmmword_18DD85500;
      *(inited + 48) = 1065353216;
      *(inited + 56) = 0x7FF8000000000000;
      *&v77 = v42;
      *(&v77 + 1) = v43;
      type metadata accessor for GraphicsContext.Storage.Shared();
      swift_allocObject();
      v47 = v45;
      outlined copy of EnvironmentValues?(v40, v41);
      *(inited + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v47, &v77);
      State = RBDisplayListGetState();

      *(inited + 24) = State;
      *(inited + 64) = 0;
      *&v77 = inited;
      GraphicsContext.copyOnWrite()();
      v49 = v77;
      RBDrawingStateAddDistanceFilter2();

      specialized GraphicsContext.drawLayer(flags:content:)(0, v49, v55, v53 & 0xFFFFFFFF0000FFFFLL);

      v81 = v28;

      SDFStyle.draw(in:sdf:)(&v81, &v67, a1);
      v50 = *&v70[8];
      if (*&v70[8] && (v70[26] & 1) == 0)
      {
        v51 = *&v70[16];
        *&v77 = v28;

        v52 = outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v50, v51);
        v50(&v77, v52);
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v50, v51);

        v70[26] = 1;
      }

      else
      {
      }

      v79 = v69;
      v80[0] = *v70;
      *(v80 + 11) = *&v70[11];
      v77 = v67;
      v78 = v68;
      outlined destroy of SDF(&v77);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v54 = *(a1 + 24);
    v14 = *(a1 + 40);

    specialized GraphicsContext.clipToLayer(opacity:options:content:)(0, a7, a2, a3 & 0xFFFFFFFF0000FFFFLL, 1.0);

    v16 = *a7;
    v18 = *MEMORY[0x1E695F040];
    v17 = *(MEMORY[0x1E695F040] + 8);
    v20 = *(MEMORY[0x1E695F040] + 16);
    v19 = *(MEMORY[0x1E695F040] + 24);
    v84.origin.x = *MEMORY[0x1E695F040];
    v84.origin.y = v17;
    v84.size.width = v20;
    v84.size.height = v19;
    if (CGRectIsNull(v84))
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 6;
    }

    else
    {
      v25 = 0;
      v21 = v18;
      v22 = *&v17;
      v23 = *&v20;
      v24 = *&v19;
    }

    *&v77 = v21;
    *(&v77 + 1) = v22;
    *&v78 = v23;
    *(&v78 + 1) = v24;
    LOBYTE(v79) = v25;
    v67 = v54;
    LODWORD(v68) = v14;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v67);
    v64 = v74;
    v65 = v75;
    v66 = v76;
    v60 = *&v70[16];
    v61 = v71;
    v62 = v72;
    v63 = v73;
    v56 = v67;
    v57 = v68;
    v58 = v69;
    v59 = *v70;
    *v82 = 256;
    memset(&v82[8], 0, 33);
    GraphicsContext.draw(_:with:style:)(&v77, &v56, v82, v16);
    outlined consume of Path.Storage(v21, v22, v23, v24, v25);
  }
}

void lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field()
{
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field)
  {
    v2 = type metadata accessor for Date.ComponentsFormatStyle.Field();
    swift_getWitnessTable(MEMORY[0x1E69694B0], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field);
  }
}

{
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A0]);
}

{
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694B8]);
}

double destroy for SDF(uint64_t a1)
{
  if (*(a1 + 56))
  {
  }

  return result;
}

uint64_t initializeWithCopy for SDF(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = (a2 + 56);
  v5 = *(a2 + 56);
  v7 = v4;
  if (v5)
  {
    v8 = *(a2 + 64);
    *(a1 + 56) = v5;
    *(a1 + 64) = v8;
  }

  else
  {
    *(a1 + 56) = *v6;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  return a1;
}

uint64_t assignWithCopy for SDF(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 56);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v8 = *(a2 + 56);
  if (!v7)
  {
    if (v8)
    {
      v10 = *(a2 + 64);
      *(a1 + 56) = v8;
      *(a1 + 64) = v10;

      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_8;
  }

  if (!v8)
  {

    goto LABEL_7;
  }

  v9 = *(a2 + 64);
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;

LABEL_8:
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  return a1;
}

__n128 __swift_memcpy75_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for SDF(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 56);
  v6 = *(a1 + 56);
  v7 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v7;
  *(a1 + 40) = *(a2 + 40);
  if (!v6)
  {
    if (v5)
    {
      v9 = *(a2 + 64);
      *(a1 + 56) = v5;
      *(a1 + 64) = v9;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_8;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v8 = *(a2 + 64);
  *(a1 + 56) = v5;
  *(a1 + 64) = v8;

LABEL_8:
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  return a1;
}

uint64_t getEnumTagSinglePayload for SDF(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 75))
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

uint64_t storeEnumTagSinglePayload for SDF(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 74) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 75) = 1;
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

    *(result + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type SDFFormat and conformance SDFFormat()
{
  if (!lazy protocol witness table cache variable for type SDFFormat and conformance SDFFormat)
  {
    swift_getWitnessTable(protocol conformance descriptor for SDFFormat, &type metadata for SDFFormat, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SDFFormat and conformance SDFFormat);
  }
}

double key path setter for _GraphInputs.layoutAccessibilityProvider : _GraphInputs(uint64_t *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(a2, v3, v4);

  return result;
}

double _GraphInputs.layoutAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v2, a1, a2);

  return result;
}

uint64_t (*_GraphInputs.layoutAccessibilityProvider.modify(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.layoutAccessibilityProvider.modify;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.LayoutAccessibilityProviderKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _GraphInputs.LayoutAccessibilityProviderKey.defaultValue;
  *a1 = static _GraphInputs.LayoutAccessibilityProviderKey.defaultValue;
  return result;
}

uint64_t (*_ViewInputs.layoutAccessibilityProvider.modify(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.layoutAccessibilityProvider.modify;
}

void _GraphInputs.layoutAccessibilityProvider.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

uint64_t _ProposedSize.init(width:height:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

void _ProposedSize.inset(by:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 24);
  if ((v7 & 1) == 0)
  {
    v9 = v6 - (a3 + a5);
    if (v9 < 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v9;
    }
  }

  v10 = *(v5 + 16);
  if ((*(v5 + 24) & 1) == 0)
  {
    v11 = v10 - (a2 + a4);
    v10 = 0.0;
    if (v11 >= 0.0)
    {
      v10 = v11;
    }
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
}

CGSize __swiftcall _ProposedSize.fixingUnspecifiedDimensions(at:)(CGSize at)
{
  if (!*(v1 + 8))
  {
    at.width = *v1;
  }

  if (!*(v1 + 24))
  {
    at.height = *(v1 + 16);
  }

  return at;
}

CGSize __swiftcall _ProposedSize.fixingUnspecifiedDimensions()()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (*(v0 + 8))
  {
    v1 = 10.0;
  }

  if (*(v0 + 24))
  {
    v2 = 10.0;
  }

  result.height = v2;
  result.width = v1;
  return result;
}

void _ProposedSize.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

void _ProposedSize.init(_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
}

uint64_t _ProposedSize.width.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t _ProposedSize.height.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void _ProposedSize.scaled(by:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  if (!v4)
  {
    v3 = *v2 * a2;
  }

  v7 = v5 * a2;
  *a1 = v3;
  *(a1 + 8) = v4;
  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  *(a1 + 16) = v8;
  *(a1 + 24) = v6;
}

uint64_t static _ProposedSize.zero.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v4 = a1;
    result = swift_once();
    a1 = v4;
  }

  v1 = byte_1EAB0C548;
  v2 = qword_1EAB0C550;
  v3 = byte_1EAB0C558;
  *a1 = static _ProposedSize.zero;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return result;
}

uint64_t static _ProposedSize.infinity.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for infinity != -1)
  {
    v4 = a1;
    result = swift_once();
    a1 = v4;
  }

  v1 = byte_1EAB10040;
  v2 = qword_1EAB10048;
  v3 = byte_1EAB10050;
  *a1 = static _ProposedSize.infinity;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return result;
}

uint64_t static _ProposedSize.unspecified.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for unspecified != -1)
  {
    v4 = a1;
    result = swift_once();
    a1 = v4;
  }

  v1 = byte_1ED52ECF8;
  v2 = qword_1ED52ED00;
  v3 = byte_1ED52ED08;
  *a1 = static _ProposedSize.unspecified;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return result;
}

Swift::Int _ProposedSize.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v2 != 1)
  {
    Hasher._combine(_:)(1u);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v1;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x193AC11E0](v6);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x193AC11E0](v5);
  return Hasher._finalize()();
}

uint64_t CGSize.init(_:)(_BYTE *a1)
{
  if (a1[8])
  {
    return 0;
  }

  if (a1[24])
  {
    return 0;
  }

  return *a1;
}

uint64_t _ProposedSize.subscript.getter(char a1)
{
  v2 = v1 + 16;
  if ((a1 & 1) == 0)
  {
    v2 = v1;
  }

  return *v2;
}

uint64_t _ProposedSize.subscript.setter(uint64_t result, char a2, char a3)
{
  v4 = 24;
  if ((a3 & 1) == 0)
  {
    v4 = 8;
  }

  *(v3 + 16 * (a3 & 1)) = result;
  *(v3 + v4) = a2 & 1;
  return result;
}

uint64_t (*_ProposedSize.subscript.modify(uint64_t a1, char a2))(uint64_t result)
{
  *(a1 + 16) = v2;
  *(a1 + 9) = a2;
  v3 = (v2 + 8);
  v4 = (v2 + 16);
  if ((a2 & 1) == 0)
  {
    v4 = v2;
  }

  v5 = *v4;
  if (a2)
  {
    v3 = (v2 + 24);
  }

  v6 = *v3;
  *a1 = v5;
  *(a1 + 8) = v6;
  return _ProposedSize.subscript.modify;
}

uint64_t _ProposedSize.subscript.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 9) & 1;
  v3 = *(result + 8);
  v4 = 16 * v2;
  v5 = v2 == 0;
  v6 = 24;
  if (v5)
  {
    v6 = 8;
  }

  *(v1 + v4) = *result;
  *(v1 + v6) = v3;
  return result;
}

uint64_t _ProposedSize.init(_:in:by:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a3)
  {
    v6 = a4;
  }

  else
  {
    v6 = result;
  }

  if (a3)
  {
    v7 = a5;
  }

  else
  {
    v7 = a2;
  }

  if (a3)
  {
    v8 = result;
  }

  else
  {
    v8 = a4;
  }

  if (a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a5;
  }

  *a6 = v6;
  *(a6 + 8) = v7 & 1;
  *(a6 + 16) = v8;
  *(a6 + 24) = v9 & 1;
  return result;
}

uint64_t LazyHStack.init(alignment:spacing:pinnedViews:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _DWORD *a4@<X3>, void (*a5)(double)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v23 = a5;
  v24 = a7;
  v25 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _VariadicView.Tree(0, &type metadata for LazyHStackLayout, v15, &protocol witness table for LazyHStackLayout);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  LODWORD(v19) = *a4;
  v27[0] = a1;
  v27[1] = a2;
  v28 = a3 & 1;
  v29 = v19;
  v23(v18);
  _VariadicView.Tree.init(root:content:)(v27, v14, &type metadata for LazyHStackLayout, a6, &protocol witness table for LazyHStackLayout, v20);
  v26[0] = &protocol witness table for LazyHStackLayout;
  v26[1] = v24;
  swift_getWitnessTable(protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v16, v26);
  View.resettableLazyLayoutRoot()(v16, v21);
  return (*(v17 + 8))(v20, v16);
}

uint64_t LazyHStackLayout.init(base:pinnedViews:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, int *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 20) = v5;
  return result;
}

void *static LazyHStack._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(a2 + 48);
  v46 = *(a2 + 32);
  v47 = v9;
  v48 = *(a2 + 64);
  v49 = *(a2 + 80);
  v10 = *(a2 + 16);
  v44 = *a2;
  v45 = v10;
  v25 = a3;
  v26 = a4;
  v24[1] = v8;
  v11 = type metadata accessor for LazyHStack(255, a3, a4, a4);
  type metadata accessor for _GraphValue(0, v11, v12, v13);
  v14 = type metadata accessor for _VariadicView.Tree(255, &type metadata for LazyHStackLayout, a3, &protocol witness table for LazyHStackLayout);
  v43[0] = &protocol witness table for LazyHStackLayout;
  v43[1] = a4;
  swift_getWitnessTable(protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v14, v43);
  v16 = v15;
  v18 = type metadata accessor for ResettableLazyLayoutRoot(0, v14, v15, v17);
  _GraphValue.subscript.getter(partial apply for closure #1 in static LazyHStack._makeView(view:inputs:), v18, v24);
  v19 = v24[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v35 = v46;
  v36 = v47;
  v37 = v48;
  v38 = v49;
  v33 = v44;
  v34 = v45;
  v40 = v49;
  v21 = v46;
  LODWORD(v35) = 0;
  v23 = v19;
  v39[0] = v44;
  v39[1] = v45;
  v39[3] = v47;
  v39[4] = v48;
  v39[2] = v35;
  v29 = v35;
  v30 = v47;
  v31 = v48;
  v32 = v49;
  v27 = v44;
  v28 = v45;
  outlined init with copy of _ViewInputs(&v44, v41);
  outlined init with copy of _ViewInputs(v39, v41);
  static ResettableLazyLayoutRoot._makeView(view:inputs:)(&v23, &v27, v14, v16, a5);
  v41[2] = v29;
  v41[3] = v30;
  v41[4] = v31;
  v42 = v32;
  v41[0] = v27;
  v41[1] = v28;
  outlined destroy of _ViewInputs(v41);
  LODWORD(v35) = v21;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v33);
    AGSubgraphEndTreeElement();
  }

  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  return outlined destroy of _ViewInputs(&v27);
}

uint64_t closure #1 in static LazyHStack._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[2] = type metadata accessor for LazyHStack(0, a2, a3, a4);
  v7 = type metadata accessor for _VariadicView.Tree(255, &type metadata for LazyHStackLayout, a2, &protocol witness table for LazyHStackLayout);
  v15[0] = &protocol witness table for LazyHStackLayout;
  v15[1] = a3;
  swift_getWitnessTable(protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v7, v15);
  v14 = type metadata accessor for ResettableLazyLayoutRoot(0, v7, v8, v9);
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15[2];
}

uint64_t LazyHStackLayout.base.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

void instantiation function for generic protocol witness table for LazyHStackLayout(uint64_t a1)
{
  lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout();
  *(a1 + 8) = v2;
}

uint64_t type metadata completion function for LazyHStack(uint64_t a1)
{
  result = type metadata accessor for _VariadicView.Tree(319, &type metadata for LazyHStackLayout, *(a1 + 16), &protocol witness table for LazyHStackLayout);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for LazyHStack(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-25 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    a1[2] = a2[2];
    (*(v4 + 16))((a1 + v5 + 24) & ~v5, (a2 + v5 + 24) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

uint64_t initializeWithCopy for LazyHStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((*(v4 + 80) + 24 + a1) & ~*(v4 + 80), (*(v4 + 80) + 24 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithCopy for LazyHStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 20) = *(a2 + 20);
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 24))((*(v5 + 80) + 24 + a1) & ~*(v5 + 80), (*(v5 + 80) + 24 + a2) & ~*(v5 + 80));
  return a1;
}

uint64_t initializeWithTake for LazyHStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((*(v4 + 80) + 24 + a1) & ~*(v4 + 80), (*(v4 + 80) + 24 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithTake for LazyHStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 40))((*(v5 + 80) + 24 + a1) & ~*(v5 + 80), (*(v5 + 80) + 24 + a2) & ~*(v5 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyHStack(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
    return (*(v4 + 48))((a1 + v6 + 24) & ~v6);
  }

  v8 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 24) & ~v6);
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

void storeEnumTagSinglePayload for LazyHStack(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 24) & ~v8) + *(v6 + 64);
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
  v19 = &a1[v8 + 24] & ~v8;

  v18(v19);
}

uint64_t _TextBaselineRelativeSpacer.minLength.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _TextBaselineRelativeSpacer@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static PrimitiveSpacer._makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _HSpacer@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static PrimitiveSpacer._makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _VSpacer@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static PrimitiveSpacer._makeView(view:inputs:)(v3, v7, a3);
}

uint64_t SpacerLayoutComputer.dynamicOrientation.getter(uint64_t a1, uint64_t a2)
{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    return 3;
  }

  type metadata accessor for Axis?();
  return *AGGraphGetValue();
}

uint64_t SpacerLayoutComputer.updateValue()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SpacerLayoutComputer.Engine(0, v3, *(v7 + 24), v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = *(v1 + 4);
  if (v13 == 2)
  {
    v14 = SpacerLayoutComputer.dynamicOrientation.getter(*v1 | 0x200000000, v1[2]);
    if (v14 == 3)
    {
      LOBYTE(v13) = 2;
    }

    else
    {
      LOBYTE(v13) = v14;
    }
  }

  Value = AGGraphGetValue();
  (*(v4 + 16))(v6, Value, v3);
  (*(v4 + 32))(v12, v6, v3);
  v12[*(v9 + 36)] = v13;
  swift_getWitnessTable(protocol conformance descriptor for SpacerLayoutComputer<A>, a1);
  StatefulRule<>.update<A>(to:)(v12, a1, v9, v16, &protocol witness table for SpacerLayoutComputer<A>.Engine);
  return (*(v10 + 8))(v12, v9);
}

uint64_t ConditionalSpacer.init(isEnabled:minLength:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

double key path setter for _ViewInputs.requestedSpacerRepresentation : _ViewInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(a2, v3, v4);

  return result;
}

double _GraphInputs.requestedSpacerRepresentation.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v2, a1, a2);

  return result;
}

uint64_t (*_ViewInputs.requestedSpacerRepresentation.modify(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.requestedSpacerRepresentation.modify;
}

uint64_t (*_GraphInputs.requestedSpacerRepresentation.modify(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.requestedSpacerRepresentation.modify;
}

void _ViewInputs.requestedSpacerRepresentation.modify(uint64_t ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

uint64_t getEnumTagSinglePayload for ConditionalSpacer(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConditionalSpacer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpacerLayoutComputer.Engine(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      v16 = v15 >= 2;
      v17 = v15 - 2;
      if (!v16)
      {
        v17 = -1;
      }

      if (v17 + 1 >= 2)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *storeEnumTagSinglePayload for SpacerLayoutComputer.Engine(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpacerLayoutComputer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 12))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 4);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SpacerLayoutComputer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_SayAJGTt0g5(uint64_t a1)
{
  v1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_SayAJGTt0g5Tf4g_n(a1);

  return v1;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_SD4KeysVyAjfGEAKV_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute();
  v4 = 0;
  v14[2] = MEMORY[0x193ABF540](v2, &type metadata for AttributedString.AnyAttribute, v3);
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(a1 + 48) + ((v9 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    outlined copy of AttributedString.AnyAttribute(*v11, v13);
    specialized Set._Variant.insert(_:)(v14, v12, v13);
    outlined consume of AttributedString.AnyAttribute(v14[0], v14[1]);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t AccessibilitySectionContext.init(id:isHeader:isFooter:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = a2;
  *(a4 + 5) = a3;
  return result;
}

uint64_t AccessibilityScrollableContext.collectionViewID.getter@<X0>(void *a1@<X8>)
{
  result = outlined init with copy of AccessibilityScrollableContext(v1, v7);
  if (v10)
  {
    if (v10 == 1)
    {
      v4 = v7[1];
      *a1 = v7[0];
      a1[1] = v4;
      return result;
    }

    v5 = v8;
    v6 = v7[5];
  }

  else
  {
    v5 = v9;
    v6 = v8;
  }

  *a1 = v6;
  a1[1] = v5;
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

BOOL AccessibilityScrollableContext.isLazy.getter()
{
  outlined init with copy of AccessibilityScrollableContext(v0, v3);
  v1 = v4;
  if (v4)
  {
    outlined destroy of AccessibilityScrollableContext(v3);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return v1 == 0;
}

uint64_t AccessibilityScrollableContext.scrollableCollection.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of AccessibilityScrollableContext(v1, v4);
  if (v5 && v5 == 1)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return outlined destroy of AccessibilityScrollableContext(v4);
  }

  else
  {

    return outlined init with take of AnyTrackedValue(v4, a1);
  }
}

uint64_t AccessibilityScrollableContext.sectionContext.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of AccessibilityScrollableContext(v1, v5);
  if (v8)
  {
    result = outlined destroy of AccessibilityScrollableContext(v5);
    v4 = 0x200000000;
  }

  else
  {

    v4 = v6 | (v7 << 32);
    result = __swift_destroy_boxed_opaque_existential_1(v5);
  }

  *a1 = v4;
  *(a1 + 4) = WORD2(v4);
  return result;
}

uint64_t AccessibilityScrollableContext.axes.getter()
{
  outlined init with copy of AccessibilityScrollableContext(v0, v7);
  if (v8)
  {
    if (v8 == 1)
    {
      outlined destroy of AccessibilityScrollableContext(v7);
      return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4AxisO_SayAFGTt0g5Tf4g_n(&outlined read-only object #0 of AccessibilityScrollableContext.axes.getter);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v7);
      return MEMORY[0x1E69E7CD0];
    }
  }

  else
  {

    outlined init with take of AnyTrackedValue(v7, v4);
    v3 = MEMORY[0x1E69E7CD0];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    swift_getDynamicType();
    if ((*(v6 + 48))(0))
    {
      specialized Set._Variant.insert(_:)(&v2, 0);
    }

    __swift_project_boxed_opaque_existential_1(v4, v5);
    swift_getDynamicType();
    if ((*(v6 + 48))(1))
    {
      specialized Set._Variant.insert(_:)(&v2, 1);
    }

    __swift_destroy_boxed_opaque_existential_1(v4);
    return v3;
  }
}

Swift::Bool __swiftcall AccessibilityScrollableContext.supports(navigating:)(SwiftUI::AccessibilityScrollableNavigationType navigating)
{
  v2 = *navigating;
  outlined init with copy of AccessibilityScrollableContext(v1, v7);
  if (v8)
  {
    outlined destroy of AccessibilityScrollableContext(v7);
    v3 = 0;
  }

  else
  {

    outlined init with take of AnyTrackedValue(v7, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    if (v2 >= 2)
    {
      v4 = v6[4];
      swift_getDynamicType();
      v3 = (*(v4 + 48))(1);
    }

    else
    {
      v3 = 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return v3 & 1;
}

uint64_t AccessibilityScrollableNavigationType.directionalUnitPoint.getter()
{
  v1 = *v0;
  if (v1 != 2 && v1 != 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Int AccessibilityScrollableNavigationType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t ScrollableCollection.siblingID(going:from:)@<X0>(unsigned __int8 *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  v8 = *a1;
  v10 = *a2;
  v9 = a2[1];
  v11 = *(a2 + 1);
  v12 = specialized static Update.begin()();
  v23 = xmmword_18DD85550;
  if (v8 > 1)
  {
    v13.n128_u64[0] = 1.0;
    if (v8 == 2)
    {
      v13.n128_f64[0] = 0.0;
    }

    v21[0] = __PAIR64__(v9, v10);
    v21[1] = v11;
    v20 = 0;
    (*(a4 + 40))(&v22, v21, &v20, a3, a4, 0.5, v13, 0.0, 0.0);
    v15 = v22;
    outlined consume of Text.LineStyle?(v23, *(&v23 + 1));
    v23 = v15;
    goto LABEL_7;
  }

  if (!v8)
  {
    v21[0] = 0;
    v22 = xmmword_18DD85550;
    v14 = MEMORY[0x1EEE9AC00](v12);
    (*(a4 + 64))(v21, partial apply for closure #1 in ScrollableCollection.siblingID(going:from:), v14);
    outlined consume of Text.LineStyle?(v22, *(&v22 + 1));
LABEL_7:
    *a5 = v23;
    return static Update.end()();
  }

  *&v22 = __PAIR64__(v9, v10);
  *(&v22 + 1) = v11;
  v17 = (*(a4 + 56))(&v22, a3, a4);
  if ((v18 & 1) == 0)
  {
    v21[0] = v17;
    LOBYTE(v22) = 0;
    v19 = MEMORY[0x1EEE9AC00](v17);
    (*(a4 + 64))(v21, partial apply for closure #2 in ScrollableCollection.siblingID(going:from:), v19);
    goto LABEL_7;
  }

  *a5 = xmmword_18DD85550;
  outlined consume of Text.LineStyle?(v23, *(&v23 + 1));

  return static Update.end()();
}

double closure #1 in ScrollableCollection.siblingID(going:from:)(unsigned int *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 1);
  v20[0] = *a1;
  v20[1] = v10;
  v21 = v11;
  v19[0] = a3;
  v19[1] = a4;
  if (specialized static _ViewList_ID.Canonical.== infix(_:_:)(v20, v19))
  {
    v12 = *a6;
    v13 = a6[1];
    v14 = *a5;
    v15 = a5[1];
    *a5 = *a6;
    a5[1] = v13;
    outlined copy of Text.LineStyle?(v12, v13);
    outlined consume of Text.LineStyle?(v14, v15);
    *a2 = 1;
  }

  v16 = *a6;
  v17 = a6[1];
  *a6 = v9 | (v10 << 32);
  a6[1] = v11;

  return outlined consume of Text.LineStyle?(v16, v17);
}

void closure #2 in ScrollableCollection.siblingID(going:from:)(unsigned int *a1, _BYTE *a2, _BYTE *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 1);
  if (*a3 == 1)
  {
    v10 = *a4;
    v11 = a4[1];
    *a4 = v6 | (v7 << 32);
    a4[1] = v8;

    outlined consume of Text.LineStyle?(v10, v11);
    v12 = a2;
  }

  else
  {
    v12 = a3;
    v14[0] = v6;
    v14[1] = v7;
    v15 = v8;
    v13[0] = a5;
    v13[1] = a6;
    if ((specialized static _ViewList_ID.Canonical.== infix(_:_:)(v14, v13) & 1) == 0)
    {
      return;
    }
  }

  *v12 = 1;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV16WritingDirectionOSg_SayAIGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for AttributedString.WritingDirection?();
  v4 = v3;
  lazy protocol witness table accessor for type AttributedString.WritingDirection? and conformance <A> A?();
  result = MEMORY[0x193ABF540](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute();
  result = MEMORY[0x193ABF540](v2, &type metadata for AttributedString.AnyAttribute, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      outlined copy of AttributedString.AnyAttribute(v7, *v5);
      specialized Set._Variant.insert(_:)(v8, v7, v6);
      outlined consume of AttributedString.AnyAttribute(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4DateV21ComponentsFormatStyleV5FieldV_s10ArraySliceVyAJGTt0g5Tf4gX_n(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v13 = a3 >> 1;
  v14 = __OFSUB__(a3 >> 1, a2);
  v15 = (a3 >> 1) - a2;
  if (v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
  v23[1] = MEMORY[0x193ABF540](v15, v6, v16);
  v17 = v13 - a2;
  if (v13 == a2)
  {
    return;
  }

  if (v13 <= a2)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v20 = *(v7 + 16);
  v18 = v7 + 16;
  v19 = v20;
  v21 = *(v18 + 56);
  v22 = a1 + v21 * a2;
  do
  {
    v19(v9, v22, v6);
    specialized Set._Variant.insert(_:)(v12, v9);
    (*(v18 - 8))(v12, v6);
    v22 += v21;
    --v17;
  }

  while (v17);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4DateV21ComponentsFormatStyleV5FieldV_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
  result = MEMORY[0x193ABF540](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
  result = MEMORY[0x193ABF540](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4AxisO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  lazy protocol witness table accessor for type Axis and conformance Axis();
  result = MEMORY[0x193ABF540](v2, &type metadata for Axis, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void lazy protocol witness table accessor for type AccessibilityScrollableNavigationType and conformance AccessibilityScrollableNavigationType()
{
  if (!lazy protocol witness table cache variable for type AccessibilityScrollableNavigationType and conformance AccessibilityScrollableNavigationType)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityScrollableNavigationType, &type metadata for AccessibilityScrollableNavigationType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityScrollableNavigationType and conformance AccessibilityScrollableNavigationType);
  }
}

uint64_t getEnumTagSinglePayload for AccessibilitySectionContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 6))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilitySectionContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for AccessibilityScrollableContext(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 70);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 != 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v5 = *(a2 + 70);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 32);
      (**(v7 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 44) = *(a2 + 44);
      *(a1 + 48) = *(a2 + 48);
      v6 = 2;
    }

    else if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 8) = *(a2 + 8);
      v6 = 1;
    }

    else
    {
      v8 = *(a2 + 24);
      *(a1 + 24) = v8;
      *(a1 + 32) = *(a2 + 32);
      (**(v8 - 8))(a1, a2);
      v6 = 0;
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 52) = *(a2 + 52);
      *(a1 + 56) = *(a2 + 56);
      v9 = *(a2 + 64);
      *(a1 + 68) = *(a2 + 68);
      *(a1 + 64) = v9;
    }

    *(a1 + 70) = v6;
  }

  return a1;
}

__n128 __swift_memcpy71_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for AccessibilityScrollableContext(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 70);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 != 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v5 = *(a2 + 70);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      LOBYTE(v5) = 2;
    }

    else if (v5 == 1)
    {
      *a1 = *a2;
    }

    else
    {
      LOBYTE(v5) = 0;
      v7 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v7;
      *(a1 + 62) = *(a2 + 62);
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
    }

    *(a1 + 70) = v5;
  }

  return a1;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI27DefaultDescriptionAttributeO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  lazy protocol witness table accessor for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute();
  result = MEMORY[0x193ABF540](v2, &type metadata for DefaultDescriptionAttribute, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void type metadata accessor for AttributedString.WritingDirection?()
{
  if (!lazy cache variable for type metadata for AttributedString.WritingDirection?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AttributedString.WritingDirection?);
    }
  }
}

void lazy protocol witness table accessor for type AttributedString.WritingDirection? and conformance <A> A?()
{
  if (!lazy protocol witness table cache variable for type AttributedString.WritingDirection? and conformance <A> A?)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for AttributedString.WritingDirection?();
    v3 = v2;
    lazy protocol witness table accessor for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E7C78], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type AttributedString.WritingDirection? and conformance <A> A?);
  }
}

void lazy protocol witness table accessor for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection()
{
  if (!lazy protocol witness table cache variable for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection)
  {
    swift_getWitnessTable(MEMORY[0x1E69686A8], MEMORY[0x1E69686A0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection);
  }
}

void lazy protocol witness table accessor for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute()
{
  if (!lazy protocol witness table cache variable for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for DefaultDescriptionAttribute, &type metadata for DefaultDescriptionAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute);
  }
}

{
  if (!lazy protocol witness table cache variable for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for DefaultDescriptionAttribute, &type metadata for DefaultDescriptionAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute);
  }
}

void lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

uint64_t static HitTestPassThroughFeature.isEnabled.getter()
{
  swift_beginAccess();
  v0 = static HitTestPassThroughFeature.overrideValue;
  if (static HitTestPassThroughFeature.overrideValue == 2)
  {
    if (one-time initialization token for v7 != -1)
    {
      swift_once();
    }

    v1 = static Semantics.v7;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      v0 = dyld_program_sdk_at_least();
    }

    else
    {
      v0 = static Semantics.forced >= v1;
    }
  }

  return v0 & 1;
}

id static TapGestureUsesGesturesFrameworkFeature.defaults.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

uint64_t static UniversalGestureRelationshipsFeature.isEnabled.getter()
{
  swift_beginAccess();
  v0 = static GestureContainerFeature.isEnabledOverride;
  if (static GestureContainerFeature.isEnabledOverride != 2)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  if (static CoreTesting.isRunning)
  {
    goto LABEL_29;
  }

  if (one-time initialization token for envValue != -1)
  {
    swift_once();
  }

  v0 = static GestureContainerFeature.envValue;
  if (static GestureContainerFeature.envValue != 2)
  {
    goto LABEL_17;
  }

  if (one-time initialization token for userDefaultsValue != -1)
  {
    swift_once();
  }

  v0 = static GestureContainerFeature.userDefaultsValue;
  if (static GestureContainerFeature.userDefaultsValue == 2)
  {
    v7[3] = &type metadata for GestureContainerFeature.IOSFeature;
    lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
    v7[4] = v1;
    v2 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v7);
    if ((v2 & 1) == 0)
    {
      goto LABEL_29;
    }

    if (one-time initialization token for v6 != -1)
    {
      swift_once();
    }

    v3 = static Semantics.v6;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      v4 = dyld_program_sdk_at_least();
      if (!v4)
      {
        return v4 & 1;
      }

      goto LABEL_18;
    }

    if (static Semantics.forced < v3)
    {
LABEL_29:
      LOBYTE(v4) = 0;
      return v4 & 1;
    }
  }

  else
  {
LABEL_17:
    if ((v0 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_18:
  if (one-time initialization token for userDefaultsValue != -1)
  {
    swift_once();
  }

  LOBYTE(v4) = static UniversalGestureRelationshipsFeature.userDefaultsValue;
  if (static UniversalGestureRelationshipsFeature.userDefaultsValue == 2)
  {
    if (one-time initialization token for v7 != -1)
    {
      swift_once();
    }

    v5 = static Semantics.v7;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      LOBYTE(v4) = dyld_program_sdk_at_least();
    }

    else
    {
      LOBYTE(v4) = static Semantics.forced >= v5;
    }
  }

  return v4 & 1;
}