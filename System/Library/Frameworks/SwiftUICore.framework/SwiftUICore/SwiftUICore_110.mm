double VariableBlurStyle.caFilterRadius.setter(double a1)
{
  result = a1 + a1;
  *v1 = result;
  return result;
}

double (*VariableBlurStyle.caFilterRadius.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = *v1 * 0.5;
  return VariableBlurStyle.caFilterRadius.modify;
}

double VariableBlurStyle.caFilterRadius.modify(uint64_t a1)
{
  result = *a1 + *a1;
  **(a1 + 8) = result;
  return result;
}

BOOL VariableBlurStyle.isIdentity.getter()
{
  if (*v0 <= 0.0)
  {
    return 1;
  }

  v1 = vorrq_s8(vorrq_s8(vorrq_s8(*(v0 + 56), *(v0 + 88)), vorrq_s8(*(v0 + 72), *(v0 + 104))), vorrq_s8(*(v0 + 24), *(v0 + 40)));
  v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | *(v0 + 16);
  return *(v0 + 120) == 0x80000000 && v2 == 0;
}

uint64_t VariableBlurStyle.effectValue(size:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v15[4] = v1[4];
  v15[5] = v3;
  v16[0] = v1[6];
  *(v16 + 12) = *(v1 + 108);
  v4 = v1[1];
  v15[0] = *v1;
  v15[1] = v4;
  v5 = v1[3];
  v15[2] = v1[2];
  v15[3] = v5;
  v6 = swift_allocObject();
  v7 = v1[5];
  v21 = v1[4];
  v22 = v7;
  v23[0] = v1[6];
  *(v23 + 12) = *(v1 + 108);
  v8 = v1[1];
  v17 = *v1;
  v18 = v8;
  v9 = v1[3];
  v19 = v1[2];
  v20 = v9;
  _s7SwiftUI14GraphicsFilterOWOi0_(&v17);
  v10 = v22;
  v6[5] = v21;
  v6[6] = v10;
  v6[7] = v23[0];
  *(v6 + 124) = *(v23 + 12);
  v11 = v18;
  v6[1] = v17;
  v6[2] = v11;
  v12 = v20;
  v6[3] = v19;
  v6[4] = v12;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return outlined init with copy of VariableBlurStyle(v15, &v14);
}

uint64_t protocol witness for _RendererEffect.effectValue(size:) in conformance VariableBlurStyle@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v15[4] = v1[4];
  v15[5] = v3;
  v16[0] = v1[6];
  *(v16 + 12) = *(v1 + 108);
  v4 = v1[1];
  v15[0] = *v1;
  v15[1] = v4;
  v5 = v1[3];
  v15[2] = v1[2];
  v15[3] = v5;
  v6 = swift_allocObject();
  v7 = v1[5];
  v21 = v1[4];
  v22 = v7;
  v23[0] = v1[6];
  *(v23 + 12) = *(v1 + 108);
  v8 = v1[1];
  v17 = *v1;
  v18 = v8;
  v9 = v1[3];
  v19 = v1[2];
  v20 = v9;
  _s7SwiftUI14GraphicsFilterOWOi0_(&v17);
  v10 = v22;
  v6[5] = v21;
  v6[6] = v10;
  v6[7] = v23[0];
  *(v6 + 124) = *(v23 + 12);
  v11 = v18;
  v6[1] = v17;
  v6[2] = v11;
  v12 = v20;
  v6[3] = v19;
  v6[4] = v12;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return outlined init with copy of VariableBlurStyle(v15, &v14);
}

double (*VariableBlurStyle.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

void VariableBlurStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 9);
  v7 = *(v2 + 96);
  v15[4] = *(v2 + 80);
  v16[0] = v7;
  *(v16 + 12) = *(v2 + 108);
  v8 = *(v2 + 32);
  v15[0] = *(v2 + 16);
  v15[1] = v8;
  v9 = *(v2 + 64);
  v15[2] = *(v2 + 48);
  v15[3] = v9;
  if (v4 != 0.0)
  {
    v10 = fabs(v4);
    if (v10 >= 65536.0)
    {
      v11 = 9;
    }

    else
    {
      v11 = 13;
    }

    ProtobufEncoder.encodeVarint(_:)(v11);
    if (v10 < 65536.0)
    {
      v12 = a1[1];
      v13 = v12 + 4;
      if (!__OFADD__(v12, 4))
      {
        *&v4 = v4;
        if (a1[2] >= v13)
        {
          a1[1] = v13;
          *(*a1 + v12) = LODWORD(v4);
          goto LABEL_12;
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      *ProtobufEncoder.growBufferSlow(to:)(v13) = LODWORD(v4);
      goto LABEL_12;
    }

    v14 = a1[1];
    v13 = v14 + 8;
    if (__OFADD__(v14, 8))
    {
      goto LABEL_18;
    }

    if (a1[2] < v13)
    {
      *ProtobufEncoder.growBufferSlow(to:)(v13) = v4;
    }

    else
    {
      a1[1] = v13;
      *(*a1 + v14) = v4;
    }
  }

LABEL_12:
  if (v5)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if (v6)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  specialized ProtobufEncoder.messageField<A>(_:_:)(4, v15);
}

unint64_t VariableBlurStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(v85, 0, sizeof(v85));
  v86 = 0;
  v64 = 0x80000000;
  v87 = 0x80000000;
  result = outlined destroy of VariableBlurStyle.Mask(v85);
  v5 = a1[1];
  if (v5 < a1[2])
  {
    v55 = 0;
    v56 = 0.0;
    v62 = 0;
    v63 = 0.0;
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    v6 = 0;
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v64 = 0x80000000;
    v12 = 0.0;
    v13 = a1[2];
    while (1)
    {
      result = a1[3];
      if (result)
      {
        v14 = a1[4];
        if (v5 < v14)
        {
          goto LABEL_13;
        }

        if (v14 < v5)
        {
          goto LABEL_75;
        }

        a1[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        goto LABEL_76;
      }

      if (result <= 7)
      {
        goto LABEL_75;
      }

LABEL_13:
      v15 = result >> 3;
      if (result >> 3 > 2)
      {
        if (v15 == 3)
        {
          if ((result & 7) != 0)
          {
            if ((result & 7) != 2)
            {
              goto LABEL_75;
            }

            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              goto LABEL_76;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_84;
            }

            v37 = a1[1] + result;
            if (v13 < v37)
            {
              goto LABEL_75;
            }

            a1[3] = 24;
            a1[4] = v37;
          }

          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            goto LABEL_76;
          }

          LODWORD(v8) = result != 0;
          goto LABEL_6;
        }

        if (v15 == 4)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_75;
          }

          v17 = v13;
          v53 = v8;
          v51 = v11;
          v11 = v10;
          v10 = v6;
          v18 = a1[5];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = v9;
          v8 = v7;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
            v18 = isUniquelyReferenced_nonNull_native;
          }

          v7 = *(v18 + 16);
          v20 = *(v18 + 24);
          if (v7 >= v20 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v7 + 1, 1, v18);
            v18 = isUniquelyReferenced_nonNull_native;
          }

          *(v18 + 16) = v7 + 1;
          *(v18 + 8 * v7 + 32) = v17;
          a1[5] = v18;
          v21 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
          if (v2)
          {
            v7 = v8;
            v10 = v11;
            v11 = v51;
            LOBYTE(v8) = v53;
            goto LABEL_76;
          }

          v9 = v9;
          if (v21 < 0)
          {
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
            __break(1u);
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
            v43 = *(result + 16);
            if (!v43)
            {
              __break(1u);
              return result;
            }

            v41 = v43 - 1;
            v42 = *(result + 8 * v41 + 32);
            *(result + 16) = v41;
            a1[5] = result;
            a1[2] = v42;
            v40 = v9;
            v11 = v51;
            LOBYTE(v9) = v54;
LABEL_77:
            v67 = v12;
            LOBYTE(v68) = v9;
            BYTE1(v68) = v8;
            *(&v68 + 2) = v83;
            HIWORD(v68) = v84;
            v69 = v56;
            v70 = v55;
            v71 = v40;
            v72 = v62;
            v73 = v61;
            v74 = v60;
            v75 = v59;
            v76 = v58;
            v77 = v57;
            v78 = v6;
            v79 = v7;
            v80 = v10;
            v81 = v11;
            v82 = v64;
            return outlined destroy of VariableBlurStyle(&v67);
          }

          v7 = v8;
          v22 = a1[1] + v21;
          if (v17 < v22)
          {
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            v10 = v11;
            v11 = v51;
            LOBYTE(v8) = v53;
LABEL_76:
            v40 = *&v63;
            goto LABEL_77;
          }

          a1[2] = v22;
          VariableBlurStyle.Mask.init(from:)(a1, &v67);
          v10 = v11;
          LOBYTE(v8) = v53;
          v23 = a1[5];
          if (!*(v23 + 2))
          {
            goto LABEL_82;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v24 = *(v23 + 2);
            if (!v24)
            {
              goto LABEL_74;
            }
          }

          else
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
            v24 = *(v23 + 2);
            if (!v24)
            {
LABEL_74:
              __break(1u);
LABEL_75:
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();
              goto LABEL_76;
            }
          }

          v25 = v24 - 1;
          v8 = *&v23[8 * v25 + 32];
          *(v23 + 2) = v25;
          a1[5] = v23;
          a1[2] = v8;
          v49 = v68;
          v50 = v67;
          v47 = v70;
          v48 = v69;
          v45 = v72;
          v46 = v71;
          v26 = v11;
          v27 = v74;
          v44 = v73;
          v28 = v6;
          v29 = v75;
          v6 = v76;
          v30 = v7;
          v7 = v77;
          v10 = v78;
          v31 = v79;
          v32 = v80;
          *v65 = v56;
          v65[1] = v55;
          *&v65[2] = v63;
          v65[3] = v62;
          v65[4] = v61;
          v65[5] = v60;
          v65[6] = v59;
          v65[7] = v58;
          v65[8] = v57;
          v65[9] = v28;
          v65[10] = v30;
          v65[11] = v26;
          v65[12] = v51;
          v66 = v64;
          result = outlined destroy of VariableBlurStyle.Mask(v65);
          v55 = v49;
          v56 = v50;
          v62 = v47;
          v63 = v48;
          v60 = v45;
          v61 = v46;
          v58 = v27;
          v59 = v44;
          v57 = v29;
          v13 = v8;
          LODWORD(v8) = v53;
          v11 = v31;
          v64 = v32;
          v9 = v54;
          goto LABEL_6;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v35 = result & 7;
          if (v35 == 5)
          {
            v38 = a1[1];
            if (v13 < (v38 + 1))
            {
              goto LABEL_75;
            }

            v39 = *v38;
            a1[1] = v38 + 1;
            v12 = v39;
          }

          else
          {
            if (v35 == 2)
            {
              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                goto LABEL_76;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_85;
              }

              v36 = a1[1];
              if (v13 < v36 + result)
              {
                goto LABEL_75;
              }

              a1[3] = 9;
              a1[4] = v36 + result;
            }

            else
            {
              if (v35 != 1)
              {
                goto LABEL_75;
              }

              v36 = a1[1];
            }

            if (v13 < (v36 + 1))
            {
              goto LABEL_75;
            }

            v12 = *v36;
            a1[1] = v36 + 1;
          }

          goto LABEL_6;
        }

        if (v15 == 2)
        {
          if ((result & 7) != 0)
          {
            if ((result & 7) != 2)
            {
              goto LABEL_75;
            }

            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              goto LABEL_76;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_83;
            }

            v16 = a1[1] + result;
            if (v13 < v16)
            {
              goto LABEL_75;
            }

            a1[3] = 16;
            a1[4] = v16;
          }

          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            goto LABEL_76;
          }

          v9 = result != 0;
          goto LABEL_6;
        }
      }

      v33 = result & 7;
      if (v33 > 1)
      {
        if (v33 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            goto LABEL_76;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_86;
          }

          v34 = a1[1] + result;
          if (v13 < v34)
          {
            goto LABEL_75;
          }
        }

        else
        {
          if (v33 != 5)
          {
            goto LABEL_75;
          }

          v34 = a1[1] + 4;
          if (v13 < v34)
          {
            goto LABEL_75;
          }
        }

        goto LABEL_5;
      }

      if ((result & 7) != 0)
      {
        if (v33 != 1)
        {
          goto LABEL_75;
        }

        v34 = a1[1] + 8;
        if (v13 < v34)
        {
          goto LABEL_75;
        }

LABEL_5:
        a1[1] = v34;
        goto LABEL_6;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        goto LABEL_76;
      }

LABEL_6:
      v5 = a1[1];
      if (v5 >= v13)
      {
        goto LABEL_4;
      }
    }
  }

  v55 = 0;
  v56 = 0.0;
  v62 = 0;
  v63 = 0.0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v6 = 0;
  v7 = 0;
  LOBYTE(v8) = 0;
  LOBYTE(v9) = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0.0;
LABEL_4:
  a1[3] = 0;
  *a2 = v12;
  *(a2 + 8) = v9;
  *(a2 + 9) = v8;
  *(a2 + 16) = v56;
  *(a2 + 24) = v55;
  *(a2 + 32) = v63;
  *(a2 + 40) = v62;
  *(a2 + 48) = v61;
  *(a2 + 56) = v60;
  *(a2 + 64) = v59;
  *(a2 + 72) = v58;
  *(a2 + 80) = v57;
  *(a2 + 88) = v6;
  *(a2 + 96) = v7;
  *(a2 + 104) = v10;
  *(a2 + 112) = v11;
  *(a2 + 120) = v64;
  return result;
}

void VariableBlurStyle.Mask.encode(to:)()
{
  v1 = *v0;
  v2 = *(v0 + 104);
  if (v2 >> 30)
  {
    if (v2 >> 30 == 1 && v1 != 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v1);
    }
  }

  else
  {
    specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  }
}

unint64_t VariableBlurStyle.Mask.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = result;
  v6 = *(result + 8);
  v7 = *(result + 16);
  if (v6 >= v7)
  {
    v20 = 0;
    v21 = 0;
    v23 = 0;
    v26 = 0;
    v27 = 0;
    v22 = 0uLL;
    v24 = 0uLL;
    v8 = 0x80000000;
    v25 = 0uLL;
    v28 = 0uLL;
LABEL_50:
    v4[3] = 0;
    *a2 = v20;
    *(a2 + 8) = v21;
    *(a2 + 16) = v22;
    *(a2 + 32) = v23;
    *(a2 + 40) = v26;
    *(a2 + 48) = v24;
    *(a2 + 64) = v27;
    *(a2 + 72) = v25;
    *(a2 + 88) = v28;
    *(a2 + 104) = v8;
    return result;
  }

  memset(v53, 0, sizeof(v53));
  v51 = 0u;
  v52 = 0u;
  v8 = 0x80000000;
  v49 = 0u;
  v50 = 0u;
  while (1)
  {
    v54 = v8;
    result = v4[3];
    if (result)
    {
      v9 = v4[4];
      if (v6 < v9)
      {
        goto LABEL_9;
      }

      if (v9 < v6)
      {
        goto LABEL_51;
      }

      v4[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return outlined destroy of VariableBlurStyle.Mask(&v49);
    }

    if (result < 8)
    {
      goto LABEL_51;
    }

LABEL_9:
    if (result >> 3 != 2)
    {
      break;
    }

    if ((result & 7) != 0)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_51;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return outlined destroy of VariableBlurStyle.Mask(&v49);
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      v29 = v4[1] + result;
      if (v7 < v29)
      {
LABEL_51:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        return outlined destroy of VariableBlurStyle.Mask(&v49);
      }

      v4[3] = 16;
      v4[4] = v29;
    }

    v30 = ProtobufDecoder.decodeVarint()(result);
    v17 = v2;
    if (v2)
    {
      return outlined destroy of VariableBlurStyle.Mask(&v49);
    }

    v20 = v30;
    result = outlined destroy of VariableBlurStyle.Mask(&v49);
    v21 = v37;
    v26 = v38 & 0xFFFFFFFF00000007;
    v27 = v55 & 1;
    v23 = v3 & 0x30301FF;
    v3 = v23 | 0x40000000;
    v55 = v27;
    v38 &= 0xFFFFFFFF00000007;
    v8 = v23 | 0x40000000;
LABEL_47:
    v6 = v4[1];
    if (v6 >= v7)
    {
      goto LABEL_50;
    }

    *&v49 = v20;
    *(&v49 + 1) = v21;
    v50 = v22;
    *&v51 = v23;
    *(&v51 + 1) = v26;
    v52 = v24;
    *v53 = v27;
    *&v53[8] = v25;
    *&v53[24] = v28;
    v2 = v17;
  }

  if (result >> 3 != 1)
  {
    v31 = result & 7;
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return outlined destroy of VariableBlurStyle.Mask(&v49);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        v32 = v4[1] + result;
      }

      else
      {
        if (v31 != 5)
        {
          goto LABEL_51;
        }

        v32 = v4[1] + 4;
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        v17 = v2;
        if (v2)
        {
          return outlined destroy of VariableBlurStyle.Mask(&v49);
        }

LABEL_46:
        v21 = *(&v49 + 1);
        v20 = v49;
        v22 = v50;
        v26 = *(&v51 + 1);
        v23 = v51;
        v24 = v52;
        v27 = *v53;
        v25 = *&v53[8];
        v28 = *&v53[24];
        v8 = v54;
        goto LABEL_47;
      }

      if (v31 != 1)
      {
        goto LABEL_51;
      }

      v32 = v4[1] + 8;
    }

    if (v7 < v32)
    {
      goto LABEL_51;
    }

    v17 = v2;
    v4[1] = v32;
    goto LABEL_46;
  }

  if ((result & 7) != 2)
  {
    goto LABEL_51;
  }

  v10 = v4[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = v7;
  v4[5] = v10;
  v14 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    return outlined destroy of VariableBlurStyle.Mask(&v49);
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = v4[1] + v14;
    if (v7 < v15)
    {
      goto LABEL_51;
    }

    v4[2] = v15;
    GraphicsImage.init(from:)(v4, &v39);
    v16 = v4[5];
    if (!*(v16 + 2))
    {
      goto LABEL_57;
    }

    v17 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    }

    v18 = *(v16 + 2);
    if (!v18)
    {
      goto LABEL_58;
    }

    v19 = v18 - 1;
    v7 = *&v16[8 * v19 + 32];
    *(v16 + 2) = v19;
    result = outlined destroy of VariableBlurStyle.Mask(&v49);
    v4[5] = v16;
    v4[2] = v7;
    v20 = v39;
    v21 = v40;
    v22 = v41;
    v23 = v42;
    v24 = v44;
    v25 = v46;
    v26 = v43 & 0xFFFFFFFF00000007;
    v27 = v45 & 1;
    v8 = v48 & 0x30301FF;
    v28 = v47;
    goto LABEL_47;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v35 = result;
  v36 = *(result + 16);
  if (v36)
  {
    v33 = v36 - 1;
    v34 = *(result + 8 * v33 + 32);
    *(result + 16) = v33;
    result = outlined destroy of VariableBlurStyle.Mask(&v49);
    v4[5] = v35;
    v4[2] = v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance VariableBlurStyle.Mask()
{
  v1 = *v0;
  v2 = *(v0 + 104);
  if (v2 >> 30)
  {
    if (v2 >> 30 == 1 && v1 != 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v1);
    }
  }

  else
  {
    specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  }
}

uint64_t specialized static VariableBlurStyle.Mask.== infix(_:_:)(__int128 *a1, _OWORD *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v36 = a1[4];
  *v37 = v3;
  *&v37[12] = *(a1 + 92);
  v4 = a1[1];
  v32 = *a1;
  v33 = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v34 = a1[2];
  v35 = v5;
  v8 = a2[1];
  *v38 = *a2;
  *&v38[16] = v8;
  *&v38[92] = *(a2 + 92);
  v9 = a2[3];
  v10 = a2[5];
  *&v38[64] = a2[4];
  *&v38[80] = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  *&v38[32] = a2[2];
  *&v38[48] = v11;
  v39[0] = v7;
  v39[1] = v6;
  *(v40 + 12) = *(a1 + 92);
  v14 = a1[5];
  v39[4] = v36;
  v40[0] = v14;
  v39[2] = v34;
  v39[3] = v2;
  v40[2] = v12;
  v40[3] = v13;
  *&v41[12] = *(a2 + 92);
  v15 = a2[5];
  v40[6] = *&v38[64];
  *v41 = v15;
  v40[4] = *&v38[32];
  v40[5] = v9;
  if (!(*&v37[24] >> 30))
  {
    if (!(*&v38[104] >> 30))
    {
      v26 = v32;
      v27 = v33;
      v28 = v34;
      v29 = v35;
      v30 = v36;
      *v31 = *v37;
      *&v31[16] = *&v37[16];
      *&v31[24] = *&v37[24] & 0x3FFFFFFF;
      v23[0] = *v38;
      v23[1] = *&v38[16];
      v23[2] = *&v38[32];
      v23[3] = *&v38[48];
      v23[4] = *&v38[64];
      v23[5] = *&v38[80];
      v24 = *&v38[96];
      v25 = *&v38[104];
      outlined init with copy of VariableBlurStyle.Mask(v38, v22);
      outlined init with copy of VariableBlurStyle.Mask(&v32, v22);
      outlined init with copy of VariableBlurStyle.Mask(v38, v22);
      outlined init with copy of VariableBlurStyle.Mask(&v32, v22);
      v16 = specialized static GraphicsImage.== infix(_:_:)(&v26, v23);
      _s7SwiftUI22ImageResolutionContextVWOhTm_0(v39, type metadata accessor for (VariableBlurStyle.Mask, VariableBlurStyle.Mask));
      outlined destroy of VariableBlurStyle.Mask(v38);
      outlined destroy of VariableBlurStyle.Mask(&v32);
      return v16 & 1;
    }

    *&v31[12] = *(a1 + 92);
    v18 = a1[5];
    v30 = a1[4];
    *v31 = v18;
    v19 = a1[1];
    v26 = *a1;
    v27 = v19;
    v20 = a1[3];
    v28 = a1[2];
    v29 = v20;
    *&v31[24] &= 0x3FFFFFFFu;
    outlined init with copy of GraphicsImage(&v26, v23);
LABEL_12:
    outlined init with copy of VariableBlurStyle.Mask(v38, &v26);
    _s7SwiftUI22ImageResolutionContextVWOhTm_0(v39, type metadata accessor for (VariableBlurStyle.Mask, VariableBlurStyle.Mask));
    v16 = 0;
    return v16 & 1;
  }

  if (*&v37[24] >> 30 != 1)
  {
    if (*&v38[104] >> 30 == 2 && *&v38[104] == 0x80000000)
    {
      v17 = vorrq_s8(vorrq_s8(vorrq_s8(*&v38[40], *&v38[72]), vorrq_s8(*&v38[56], *&v38[88])), vorrq_s8(*&v38[8], *&v38[24]));
      if (!(*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | *v38))
      {
        _s7SwiftUI22ImageResolutionContextVWOhTm_0(v39, type metadata accessor for (VariableBlurStyle.Mask, VariableBlurStyle.Mask));
        v16 = 1;
        return v16 & 1;
      }
    }

    goto LABEL_12;
  }

  if (*&v38[104] >> 30 != 1)
  {
    goto LABEL_12;
  }

  _s7SwiftUI22ImageResolutionContextVWOhTm_0(v39, type metadata accessor for (VariableBlurStyle.Mask, VariableBlurStyle.Mask));
  v16 = v32 == *v38;
  return v16 & 1;
}

uint64_t specialized static VariableBlurStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 96);
  v38[4] = *(a1 + 80);
  v39[0] = v6;
  *(v39 + 12) = *(a1 + 108);
  v7 = *(a1 + 32);
  v38[0] = *(a1 + 16);
  v38[1] = v7;
  v8 = *(a1 + 64);
  v38[2] = *(a1 + 48);
  v38[3] = v8;
  *&v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v11 = *(a2 + 96);
  v40[4] = *(a2 + 80);
  v41[0] = v11;
  *(v41 + 12) = *(a2 + 108);
  v12 = *(a2 + 32);
  v40[0] = *(a2 + 16);
  v40[1] = v12;
  v13 = v3 == *&v8;
  v14 = *(a2 + 64);
  v40[2] = *(a2 + 48);
  v40[3] = v14;
  if (v13 && ((v4 ^ v9) & 1) == 0 && ((v5 ^ v10) & 1) == 0)
  {
    v15 = *(a1 + 96);
    v32 = *(a1 + 80);
    v33[0] = v15;
    *(v33 + 12) = *(a1 + 108);
    v16 = *(a1 + 32);
    v28 = *(a1 + 16);
    v29 = v16;
    v17 = *(a1 + 64);
    v30 = *(a1 + 48);
    v31 = v17;
    v18 = *(a2 + 96);
    v26 = *(a2 + 80);
    v27[0] = v18;
    *(v27 + 12) = *(a2 + 108);
    v19 = *(a2 + 32);
    v22 = *(a2 + 16);
    v23 = v19;
    v20 = *(a2 + 64);
    v24 = *(a2 + 48);
    v25 = v20;
    outlined init with copy of VariableBlurStyle.Mask(v38, v36);
    outlined init with copy of VariableBlurStyle.Mask(v40, v36);
    v2 = specialized static VariableBlurStyle.Mask.== infix(_:_:)(&v28, &v22);
    v34[4] = v26;
    v35[0] = v27[0];
    *(v35 + 12) = *(v27 + 12);
    v34[0] = v22;
    v34[1] = v23;
    v34[2] = v24;
    v34[3] = v25;
    outlined destroy of VariableBlurStyle.Mask(v34);
    v36[4] = v32;
    v37[0] = v33[0];
    *(v37 + 12) = *(v33 + 12);
    v36[0] = v28;
    v36[1] = v29;
    v36[2] = v30;
    v36[3] = v31;
    outlined destroy of VariableBlurStyle.Mask(v36);
  }

  return v2 & 1;
}

uint64_t initializeWithCopy for VariableBlurStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v13 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v17 = *(a2 + 120);
  outlined copy of VariableBlurStyle.Mask(v3, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  *(a1 + 112) = v16;
  *(a1 + 120) = v17;
  return a1;
}

uint64_t assignWithCopy for VariableBlurStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v25 = *(a2 + 88);
  v26 = *(a2 + 96);
  v27 = *(a2 + 104);
  v28 = *(a2 + 112);
  v29 = *(a2 + 120);
  outlined copy of VariableBlurStyle.Mask(v3, v4, v5, v6, v7, v8, v9, v10, v11, v25, v26, v27, v28, v29);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v21 = *(a1 + 96);
  v22 = *(a1 + 112);
  v23 = *(a1 + 120);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = v25;
  *(a1 + 96) = v26;
  *(a1 + 104) = v27;
  *(a1 + 112) = v28;
  *(a1 + 120) = v29;
  outlined consume of VariableBlurStyle.Mask(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
  return a1;
}

uint64_t assignWithTake for VariableBlurStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  v3 = *(a2 + 112);
  v4 = *(a2 + 120);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  v17 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v17;
  v18 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v18;
  v19 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v19;
  *(a1 + 112) = v3;
  *(a1 + 120) = v4;
  outlined consume of VariableBlurStyle.Mask(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for VariableBlurStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 124))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 25);
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

double storeEnumTagSinglePayload for VariableBlurStyle(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 124) = 1;
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
      *(a1 + 16) = 0;
      *(a1 + 24) = -a2 << 8;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 108) = 0u;
      return result;
    }

    *(a1 + 124) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for VariableBlurStyle.Mask(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  outlined copy of VariableBlurStyle.Mask(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  return a1;
}

uint64_t assignWithCopy for VariableBlurStyle.Mask(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  v27 = *(a2 + 88);
  v28 = *(a2 + 96);
  v29 = *(a2 + 104);
  outlined copy of VariableBlurStyle.Mask(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v25, v26, v27, v28, v29);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v25;
  *(a1 + 80) = v26;
  *(a1 + 88) = v27;
  *(a1 + 96) = v28;
  *(a1 + 104) = v29;
  outlined consume of VariableBlurStyle.Mask(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
  return a1;
}

__n128 __swift_memcpy108_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for VariableBlurStyle.Mask(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *(a2 + 104);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  v19 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v19;
  *(a1 + 96) = v3;
  *(a1 + 104) = v4;
  outlined consume of VariableBlurStyle.Mask(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for VariableBlurStyle.Mask(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 108))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 9);
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

double storeEnumTagSinglePayload for VariableBlurStyle.Mask(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 104) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 108) = 1;
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
      *a1 = 0;
      *(a1 + 8) = -a2 << 8;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 92) = 0u;
      return result;
    }

    *(a1 + 108) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for VariableBlurStyle.Mask(_DWORD *a1)
{
  v1 = a1[26];
  if (v1 >= 0)
  {
    return v1 >> 30;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for VariableBlurStyle.Mask(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 40) & 0xFFFFFFFF00000007;
    v3 = *(result + 64) & 1;
    v4 = *(result + 104) & 0x30301FF | (a2 << 30);
    *(result + 8) = *(result + 8);
    *(result + 40) = v2;
    *(result + 64) = v3;
    *(result + 104) = v4;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0x80000000;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for VariableBlurEffect(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for VariableBlurEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for VariableBlurEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

void type metadata accessor for (VariableBlurStyle.Mask, VariableBlurStyle.Mask)()
{
  if (!lazy cache variable for type metadata for (VariableBlurStyle.Mask, VariableBlurStyle.Mask))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (VariableBlurStyle.Mask, VariableBlurStyle.Mask));
    }
  }
}

SwiftUI::FillStyle __swiftcall FillStyle.init(eoFill:antialiased:)(Swift::Bool eoFill, Swift::Bool antialiased)
{
  if (antialiased)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | eoFill);
}

void FillStyle.encode(to:)(uint64_t a1, __int16 a2)
{
  if (a2)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if ((a2 & 0x100) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance FillStyle()
{
  v1 = v0[1];
  if (*v0 == 1)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if ((v1 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance FillStyle@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FillStyle.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

Swift::Int BlendMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t _BlendModeShapeStyle.init(style:blendMode:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for _BlendModeShapeStyle(0, a3, a4, v9);
  *(a5 + *(result + 36)) = *a2;
  return result;
}

double partial apply for closure #2 in _BlendModeShapeStyle._apply(to:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = *(v8 + *(type metadata accessor for _BlendModeShapeStyle(0, v6, v7, a2) + 36));
  *a3 = a1;
  *(a3 + 8) = v9;

  return result;
}

void lazy protocol witness table accessor for type BlendMode and conformance BlendMode()
{
  if (!lazy protocol witness table cache variable for type BlendMode and conformance BlendMode)
  {
    swift_getWitnessTable(protocol conformance descriptor for BlendMode, &type metadata for BlendMode, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BlendMode and conformance BlendMode);
  }
}

Swift::Int Material.ID.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Material.ID()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Material.ID(uint64_t a1)
{
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t Material.ResolvedMaterial.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return outlined copy of Material.ID(v2, v3);
}

uint64_t Material.ResolvedMaterial.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = outlined consume of Material.ID(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

void Material.ResolvedMaterial.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 12);
  Material.ID.hash(into:)(a1);
  Hasher._combine(_:)(v2);
}

Swift::Int Material.ResolvedMaterial.hashValue.getter()
{
  v1 = *(v0 + 12);
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Material.ResolvedMaterial()
{
  v1 = *(v0 + 12);
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Material.ResolvedMaterial(uint64_t a1)
{
  v2 = *(v1 + 12);
  Material.ID.hash(into:)(a1);
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Material.ResolvedMaterial(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(v1 + 12);
  Material.ID.hash(into:)(v4);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t *Material.init(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 8);
  *(a2 + 12) = 0;
  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void *Material.resolve(in:role:substrate:shapeMetrics:)@<X0>(double *a1@<X0>, char *a2@<X1>, char *a3@<X2>, void *(*a4)(double *__return_ptr, __n128)@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 1);
  v27 = *a3;
  v28 = *a2;
  v10 = *v5;
  v11 = *(v5 + 8);
  v12 = *(v5 + 12);
  v40 = *a1;
  v41 = v9;
  *&v38[0] = v10;
  BYTE8(v38[0]) = v11;
  HIDWORD(v38[0]) = v12;
  v13 = EnvironmentValues.materialProvider(for:)(v38);
  if (v13)
  {
    v14 = v13;
    v51 = 1;
    v50 = 1;
    outlined copy of Material.ID(v10, v11);

    result = (a4)(&v40, v15);
    v26 = v12;
    if (LOBYTE(v43))
    {
      v17 = 0;
      v18 = 0.0;
      v19 = 0.0;
LABEL_9:
      v25 = v17;
      *&v34 = v8;
      *(&v34 + 1) = v9;
      LOBYTE(v35) = v28;
      BYTE1(v35) = v27;
      *(&v35 + 1) = v19;
      *&v36 = v18;
      v21 = v51;
      BYTE8(v36) = v51;
      *v37 = v19;
      *&v37[8] = v17;
      *&v37[16] = v18;
      v22 = v50;
      v37[24] = v50;
      v31 = v36;
      v32[0] = *v37;
      *(v32 + 9) = *&v37[9];
      v29 = v34;
      v30 = v35;
      v23 = *(*v14 + 80);
      outlined init with copy of Material.Context(&v34, &v40);
      v23(&v33, &v29);

      v38[2] = v31;
      v39[0] = v32[0];
      *(v39 + 9) = *(v32 + 9);
      v38[0] = v29;
      v38[1] = v30;
      outlined destroy of Material.Context(v38);
      v40 = v8;
      v41 = v9;
      LOBYTE(v42) = v28;
      BYTE1(v42) = v27;
      v43 = v19;
      v44 = v18;
      v45 = v21;
      v46 = v19;
      v47 = v25;
      v48 = v18;
      v49 = v22;
      outlined destroy of Material.Context(&v40);
      v24 = v33;
      outlined consume of Material.ID(v10, v11);
      *a5 = v24;
      *(a5 + 8) = 2;
      *(a5 + 12) = v26;
      outlined copy of Material.ID(v24, 2u);
      return outlined consume of Material.ID(v24, 2u);
    }

    v19 = v40;
    v18 = v42;
    if (v40 <= v42)
    {
      v17 = v41;
      v51 = 0;
      v50 = 0;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    v40 = v8;
    v41 = v9;

    v20 = specialized Material.ResolvedMaterial.Flags.init(environment:)(&v40);
    *a5 = v10;
    *(a5 + 8) = v11;
    *(a5 + 12) = v20 | v12;

    return outlined copy of Material.ID(v10, v11);
  }

  return result;
}

uint64_t static Material.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *a2;
  v4 = *(a2 + 12);
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v10 = *a1;
  v11 = v5;
  v8 = v3;
  v9 = v6;
  outlined copy of Material.ID(v10, v5);
  outlined copy of Material.ID(v3, v6);
  LOBYTE(v3) = specialized static Material.ID.== infix(_:_:)(&v10, &v8);
  outlined consume of Material.ID(v8, v9);
  outlined consume of Material.ID(v10, v11);
  return v3 & (v2 == v4);
}

void *Material.animatableData.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8) == 1 && (v3 = *v1, v4 = *(*v3 + 144), v5 = , v4(v8, v5), result = outlined consume of Material.ID(v3, 1u), *&v8[0]))
  {
    v7 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v7;
    *(a1 + 32) = v9;
  }

  else
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    return outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, a1);
  }

  return result;
}

uint64_t key path setter for Material.animatableData : Material(void *a1, _BYTE *a2)
{
  outlined init with copy of _AnyAnimatableData(a1, v7);
  if (a2[8] != 1)
  {
    return outlined destroy of _AnyAnimatableData(v7);
  }

  v3 = *a2;
  v4 = *(**a2 + 152);

  v5 = v4(v7);
  outlined consume of Material.ID(v3, 1u);
  outlined destroy of _AnyAnimatableData(v7);
  result = outlined consume of Material.ID(*a2, a2[8]);
  *a2 = v5;
  a2[8] = 1;
  return result;
}

uint64_t Material.animatableData.setter(uint64_t a1)
{
  if (v1[8] == 1)
  {
    v2 = *v1;
    v3 = *(**v1 + 152);

    v5 = v1;
    v6 = v3(a1);
    outlined consume of Material.ID(v2, 1u);
    outlined destroy of _AnyAnimatableData(a1);
    result = outlined consume of Material.ID(*v5, v5[8]);
    *v5 = v6;
    v5[8] = 1;
  }

  else
  {

    return outlined destroy of _AnyAnimatableData(a1);
  }

  return result;
}

uint64_t (*Material.animatableData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  if (*(v1 + 8) == 1 && (v5 = *v1, v6 = *(*v5 + 144), v7 = , v6(v10, v7), outlined consume of Material.ID(v5, 1u), *&v10[0]))
  {
    v8 = v10[1];
    *v4 = v10[0];
    *(v4 + 16) = v8;
    *(v4 + 32) = v11;
  }

  else
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, v4);
  }

  return Material.animatableData.modify;
}

void Material.animatableData.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[10];
  if (a2)
  {
    outlined init with copy of _AnyAnimatableData(*a1, v2 + 5);
    if (v3[8] == 1)
    {
      v4 = v2[10];
      v5 = *v4;
      v6 = *(**v4 + 152);

      v7 = v6(v2 + 5);
      outlined consume of Material.ID(v5, 1u);
      outlined destroy of _AnyAnimatableData((v2 + 5));
      outlined consume of Material.ID(*v4, *(v4 + 8));
      *v4 = v7;
      *(v4 + 8) = 1;
    }

    else
    {
      outlined destroy of _AnyAnimatableData((v2 + 5));
    }
  }

  else if (v3[8] == 1)
  {
    v8 = *v3;
    v9 = *(**v3 + 152);

    v10 = v9(v2);
    outlined consume of Material.ID(v8, 1u);
    outlined destroy of _AnyAnimatableData(v2);
    outlined consume of Material.ID(*v3, v3[8]);
    *v3 = v10;
    v3[8] = 1;
    goto LABEL_8;
  }

  outlined destroy of _AnyAnimatableData(v2);
LABEL_8:

  free(v2);
}

uint64_t Material.disablingBlur(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 12);
  *a2 = *v2;
  v5 = *(v2 + 8);
  *(a2 + 8) = v5;
  v6 = v4 & 0xFFFFFFDF;
  if (a1)
  {
    v7 = 32;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 12) = v6 | v7;
  return outlined copy of Material.ID(v3, v5);
}

uint64_t static Material.ultraThick.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for ultraThick != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static Material.ultraThick;
  v3 = dword_1EAB1DF94;
  *a1 = static Material.ultraThick;
  v4 = byte_1EAB1DF90;
  *(a1 + 8) = byte_1EAB1DF90;
  *(a1 + 12) = v3;

  return outlined copy of Material.ID(v2, v4);
}

uint64_t static Material.bar.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for bar != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static Material.bar;
  v3 = dword_1ED51F794;
  *a1 = static Material.bar;
  v4 = byte_1ED51F790;
  *(a1 + 8) = byte_1ED51F790;
  *(a1 + 12) = v3;

  return outlined copy of Material.ID(v2, v4);
}

void one-time initialization function for ultraThick()
{
  dword_1EAB1DF94 = 0;
  static Material.ultraThick = 4;
  byte_1EAB1DF90 = 3;
}

void static Material.pinched.getter(uint64_t a1@<X8>)
{
  *(a1 + 12) = 0;
  *a1 = 2;
  *(a1 + 8) = 3;
}

void one-time initialization function for bar()
{
  dword_1ED51F794 = 0;
  static Material.bar = 5;
  byte_1ED51F790 = 3;
}

void one-time initialization function for chrome()
{
  dword_1EAB1DFA4 = 0;
  static Material.chrome = 5;
  byte_1EAB1DFA0 = 3;
}

uint64_t static Material.chrome.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for chrome != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static Material.chrome;
  v3 = dword_1EAB1DFA4;
  *a1 = static Material.chrome;
  v4 = byte_1EAB1DFA0;
  *(a1 + 8) = byte_1EAB1DFA0;
  *(a1 + 12) = v3;

  return outlined copy of Material.ID(v2, v4);
}

uint64_t static Material._intelligenceLightSource(prefersAudioReactivity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 6;
  if (result)
  {
    v2 = 7;
  }

  *(a2 + 12) = 0;
  *a2 = v2;
  *(a2 + 8) = 3;
  return result;
}

uint64_t View.backgroundMaterial(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v4 = *a1;
  type metadata accessor for MaterialView<Rectangle>(0, &lazy cache variable for type metadata for MaterialView<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, &type metadata for Rectangle, type metadata accessor for MaterialView);
  View.modifier<A>(_:)();
  outlined copy of Material.ID(v1, v2);
  return outlined consume of Material.ID(v4, v2);
}

uint64_t MaterialView.init(material:shape:ignoredSafeAreaEdges:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 3);
  v13 = type metadata accessor for MaterialView(0, a4, a5, a4);
  v14 = *(v13 + 40);
  *a6 = v10;
  *(a6 + 8) = v11;
  *(a6 + 12) = v12;
  result = (*(*(a4 - 8) + 32))(a6 + *(v13 + 36), a2, a4);
  *(a6 + v14) = a3;
  return result;
}

uint64_t View.backgroundMaterial<A>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[2] = a5;
  v23[0] = a6;
  v23[1] = a3;
  v8 = a1;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MaterialView(0, v12, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v23 - v17;
  v19 = *v8;
  v20 = *(v8 + 12);
  LOBYTE(v8) = *(v8 + 8);
  (*(v9 + 16))(v11, a2, a4, v16);
  *v18 = v19;
  v18[8] = v8;
  *(v18 + 3) = v20;
  v21 = *(v14 + 40);
  (*(v9 + 32))(&v18[*(v14 + 36)], v11, a4);
  v18[v21] = 0;
  View.modifier<A>(_:)();
  outlined copy of Material.ID(v19, v8);
  return (*(v15 + 8))(v18, v14);
}

void (*EnvironmentValues.backgroundMaterial.modify(uint64_t **a1))(uint64_t **a1, char a2)
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
  v3[5] = *v1;
  v6 = *(v1 + 8);
  v3[6] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v5, v4);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(v5);
    if (v7)
    {
      v9 = v7[9];
      v8 = v7[10];
      *v4 = v9;
      v4[1] = v8;
      outlined copy of Material?(v9, v8);
    }

    else
    {
      *v4 = xmmword_18DDA6AB0;
    }
  }

  return EnvironmentValues.backgroundMaterial.modify;
}

void EnvironmentValues.backgroundMaterial.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];

  v6 = v3[6];
  v7 = v3[4];
  if (a2)
  {
    outlined copy of Material?(v4, v5);

    outlined copy of Material?(v4, v5);
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(v7, v4, v5);

    outlined consume of Material?(v4, v5);
    if (v6)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v3[5], *v3[4]);
    }

    outlined consume of Material?(v4, v5);
    v8 = *v3;
    v9 = v3[1];
  }

  else
  {

    outlined copy of Material?(v4, v5);
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(v7, v4, v5);

    outlined consume of Material?(v4, v5);
    if (v6)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v3[5], *v3[4]);
    }

    v8 = v4;
    LOBYTE(v9) = v5;
  }

  outlined consume of Material?(v8, v9);

  free(v3);
}

uint64_t MaterialView.material.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  *a1 = *v1;
  v4 = *(v1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  return outlined copy of Material.ID(v2, v4);
}

uint64_t MaterialView.material.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  result = outlined consume of Material.ID(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = v4;
  return result;
}

uint64_t MaterialView.Background.view.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  v6 = type metadata accessor for MaterialView(0, a2, a3, x3_0);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, Value, v6);
}

uint64_t MaterialView.Background.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v38 = a3;
  v35 = *(a2 - 8);
  v5 = v35;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v7;
  v9 = v8;
  v12 = type metadata accessor for MaterialView(0, v10, v8, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v39 = a2;
  v40 = &type metadata for Material;
  v41 = v9;
  v42 = &protocol witness table for Material;
  v19 = type metadata accessor for _ShapeView(0, &v39);
  v20 = *(v19 - 8);
  v36 = v19;
  v37 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v34 = &v31 - v21;
  v33 = v4;
  MaterialView.Background.view.getter(a2, v9, v18, v22);
  (*(v5 + 16))(v7, &v18[*(v12 + 36)], a2);
  v23 = *(v13 + 8);
  v23(v18, v12);
  MaterialView.Background.view.getter(a2, v9, v15, v24);
  v25 = *v15;
  LODWORD(v5) = *(v15 + 3);
  LOBYTE(v13) = v15[8];
  outlined copy of Material.ID(*v15, v13);
  v23(v15, v12);
  v39 = v25;
  LOBYTE(v40) = v13;
  HIDWORD(v40) = v5;
  v26 = v34;
  v27 = v32;
  Shape.fill<A>(_:style:)(&v39, 256, a2, &type metadata for Material, v9, &protocol witness table for Material, v34);
  outlined consume of Material.ID(v39, v40);
  (*(v35 + 8))(v27, a2);
  MaterialView.Background.view.getter(a2, v9, v18, v28);
  v23(v18, v12);
  v29 = v36;
  View.ignoresSafeArea(_:edges:)();
  return (*(v37 + 8))(v26, v29);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance MaterialView<A>.Background@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v8[0] = *(a1 + 16);
  v8[1] = &type metadata for Material;
  v8[2] = v3;
  v8[3] = &protocol witness table for Material;
  v4 = type metadata accessor for _ShapeView(255, v8);
  v6 = type metadata accessor for ModifiedContent(0, v4, &type metadata for _SafeAreaRegionsIgnoringLayout, v5);
  return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance MaterialView<A>.Background(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for MaterialView<A>.Background, a1);

  return static AsyncAttribute.flags.getter();
}

void *static MaterialView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(a2 + 48);
  v49 = *(a2 + 32);
  v50 = v9;
  v51 = *(a2 + 64);
  v52 = *(a2 + 80);
  v10 = *(a2 + 16);
  v47 = *a2;
  v48 = v10;
  LODWORD(v39[0]) = v8;
  *&v41 = a3;
  *(&v41 + 1) = &type metadata for Material;
  *&v42 = a4;
  *(&v42 + 1) = &protocol witness table for Material;
  v11 = type metadata accessor for _ShapeView(255, &v41);
  v24 = type metadata accessor for ModifiedContent(0, v11, &type metadata for _SafeAreaRegionsIgnoringLayout, v12);
  v25 = type metadata accessor for MaterialView.Background(0, a3, a4, v13);
  swift_getWitnessTable(protocol conformance descriptor for MaterialView<A>.Background, v25);
  v26 = v14;
  v15 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v39, partial apply for closure #1 in Attribute.init<A>(_:), v23, v25, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  _GraphValue.init(_:)(v41, v22);
  v17 = v22[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v35 = v49;
  v36 = v50;
  v37 = v51;
  v38 = v52;
  v33 = v47;
  v34 = v48;
  v19 = v49;
  LODWORD(v35) = 0;
  v21 = v17;
  v39[0] = v47;
  v39[1] = v48;
  v40 = v52;
  v39[3] = v50;
  v39[4] = v51;
  v39[2] = v35;
  v29 = v35;
  v30 = v50;
  v31 = v51;
  v32 = v52;
  v27 = v47;
  v28 = v48;
  outlined init with copy of _ViewInputs(&v47, &v41);
  outlined init with copy of _ViewInputs(v39, &v41);
  static ModifiedContent<>._makeView(view:inputs:)(&v21, &v27, v11, &type metadata for _SafeAreaRegionsIgnoringLayout, &protocol witness table for _ShapeView<A, B>, &protocol witness table for _SafeAreaRegionsIgnoringLayout, a5);
  v43 = v29;
  v44 = v30;
  v45 = v31;
  v46 = v32;
  v41 = v27;
  v42 = v28;
  outlined destroy of _ViewInputs(&v41);
  LODWORD(v35) = v19;
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

void *static MaterialView._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v6 = a5;
  v71 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[3];
  *v70 = a2[2];
  *&v70[16] = v9;
  *&v70[32] = a2[4];
  *&v70[48] = *(a2 + 20);
  v10 = a2[1];
  v68 = *a2;
  v69 = v10;
  LODWORD(v55[0]) = v8;
  *&v57 = a4;
  *(&v57 + 1) = &type metadata for Material;
  v58 = a5;
  v59 = &protocol witness table for Material;
  v11 = type metadata accessor for _ShapeView(255, &v57);
  v13 = type metadata accessor for ModifiedContent(0, v11, &type metadata for _SafeAreaRegionsIgnoringLayout, v12);
  v42 = v13;
  v43 = type metadata accessor for MaterialView.Background(0, a4, v6, v14);
  swift_getWitnessTable(protocol conformance descriptor for MaterialView<A>.Background, v43);
  v44 = v15;
  v16 = type metadata accessor for Attribute();
  v17 = MEMORY[0x1E69E73E0];
  v18 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v55, closure #1 in Attribute.init<A>(_:)partial apply, v41, v43, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v19);
  v33 = v57;
  v32 = *v70;
  v20 = v69;
  v64 = *&v70[4];
  v65 = *&v70[20];
  v66 = *&v70[36];
  v67 = v68;
  outlined init with copy of _ViewInputs(&v68, &v57);
  closure #1 in static MaterialView._makeView(modifier:inputs:body:)(1, a4, v6, v21);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  swift_beginAccess();
  *&v57 = __PAIR64__(*(v20 + 16), OffsetAttribute2);
  v39 = type metadata accessor for MaterialView.ChildEnvironment(0, a4, v6, v23);
  swift_getWitnessTable(protocol conformance descriptor for MaterialView<A>.ChildEnvironment, v39);
  v40 = v24;
  type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, &type metadata for EnvironmentValues, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v57, closure #1 in Attribute.init<A>(_:)partial apply, v38, v39, v17, v25, v18, v26);
  LODWORD(v6) = v55[0];
  v27 = MEMORY[0x1E69E7CC0];
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v29 = swift_allocObject();
  *(v29 + 16) = v6;
  *(v29 + 24) = v27;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 80) = 256;
  *(v29 + 82) = v36;
  *(v29 + 86) = v37;
  *(v29 + 88) = v28;

  v52 = v67;
  *&v53 = v29;
  *(&v53 + 1) = *(&v20 + 1);
  LODWORD(v54[0]) = v32 | 0x20;
  *(&v54[2] + 4) = v66;
  *(&v54[1] + 4) = v65;
  *(v54 + 4) = v64;
  v49 = v54[1];
  v50 = v54[2];
  v51 = HIDWORD(v66);
  v46 = v67;
  v47 = v53;
  v48 = v54[0];
  outlined init with copy of _ViewInputs(&v52, &v57);
  v45[0] = &protocol witness table for _ShapeView<A, B>;
  v45[1] = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v45);
  LOBYTE(v57) = 1;
  makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)(v33, 0x100000000, &v46, a3, 1, v13, v30, a6);
  v55[2] = v48;
  v55[3] = v49;
  v55[4] = v50;
  v56 = v51;
  v55[0] = v46;
  v55[1] = v47;
  outlined destroy of _ViewInputs(v55);
  v57 = v67;
  v58 = v29;
  v59 = *(&v20 + 1);
  v60 = v32 | 0x20;
  v61 = v64;
  v62 = v65;
  v63 = v66;
  return outlined destroy of _ViewInputs(&v57);
}

uint64_t closure #1 in static MaterialView._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for MaterialView(0, a2, a3, a4);
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_5, v8, &type metadata for Material, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t MaterialView.ChildEnvironment.value.getter@<X0>(_OWORD *a2@<X8>)
{
  MaterialView.ChildEnvironment.environment.getter(v15);
  v14[27] = 0;
  *&v10 = 0;
  v9 = 0uLL;
  BYTE8(v10) = 4;
  *&v11 = 0;
  BYTE8(v11) = 5;
  v12 = v15[0];
  v13 = 0u;
  memset(v14, 0, 24);
  v14[24] = 1;
  *&v14[25] = 768;
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 12);
  v6 = *(Value + 8);
  outlined copy of Material.ID(*Value, v6);
  *&v15[0] = v4;
  BYTE8(v15[0]) = v6;
  HIDWORD(v15[0]) = v5;
  Material._apply(to:)(&v9);
  outlined consume of Material.ID(v4, v6);
  v7 = *(&v12 + 1);
  *a2 = v12;
  *(a2 + 1) = v7;
  v15[4] = v13;
  v16[0] = *v14;
  *(v16 + 12) = *&v14[12];
  v15[0] = v9;
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;

  return outlined destroy of _ShapeStyle_Shape(v15);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance MaterialView<A>.ChildEnvironment(uint64_t a1)
{
  swift_getWitnessTable("E", a1);

  return static AsyncAttribute.flags.getter();
}

void *static Material._makeView<A>(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v11 = v5;
  return static ShapeStyle.legacyMakeShapeView<A>(view:inputs:)(&v11, v9, &type metadata for Material, a3, &protocol witness table for Material, a4, a5);
}

uint64_t ForegroundMaterialStyle.material.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  *a1 = *v1;
  v4 = *(v1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  return outlined copy of Material.ID(v2, v4);
}

uint64_t ForegroundMaterialStyle.material.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  result = outlined consume of Material.ID(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = v4;
  return result;
}

uint64_t ForegroundMaterialStyle.init(material:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  return result;
}

void EnvironmentValues.materialActiveAppearance.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA24MaterialActiveAppearanceVAAE0I033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA24MaterialActiveAppearanceVAAE0S033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*v1);
    if (v4)
    {
      v5 = *(v4 + 72);
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }
}

void key path getter for EnvironmentValues.materialActiveAppearance : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA24MaterialActiveAppearanceVAAE0I033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v3, &v6);

    v4 = v6;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA24MaterialActiveAppearanceVAAE0S033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.materialActiveAppearance : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA24MaterialActiveAppearanceVAAE0F033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA24MaterialActiveAppearanceVAAE0K033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v3, *a2);
  }

  return result;
}

double EnvironmentValues.materialActiveAppearance.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA24MaterialActiveAppearanceVAAE0F033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA24MaterialActiveAppearanceVAAE0K033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v3, *v2);
  }

  return result;
}

void (*EnvironmentValues.materialActiveAppearance.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA24MaterialActiveAppearanceVAAE0I033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA24MaterialActiveAppearanceVAAE0S033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.materialActiveAppearance.modify;
}

void EnvironmentValues.materialActiveAppearance.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA24MaterialActiveAppearanceVAAE0F033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA24MaterialActiveAppearanceVAAE0K033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t Material.materialActiveAppearance(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  *a1 = *v1;
  v4 = *(v1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  return outlined copy of Material.ID(v2, v4);
}

uint64_t MaterialActiveAppearanceShapeStyle._apply(to:)(uint64_t a1, uint64_t a2)
{
  v6 = (a1 + 48);
  v5 = *(a1 + 48);
  v7 = *(v2 + *(a2 + 36));
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA24MaterialActiveAppearanceVAAE0F033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(v6, v7);

  if (v6[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA24MaterialActiveAppearanceVAAE0K033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v5, *v6);
  }

  return (*(*(a2 + 24) + 32))(a1, *(a2 + 16));
}

uint64_t ShapeStyle.materialActiveAppearance(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  (*(v8 + 16))(v11, v4, a2, v9);
  (*(v8 + 32))(a4, v11, a2);
  result = type metadata accessor for MaterialActiveAppearanceShapeStyle(0, a2, a3, v14);
  *(a4 + *(result + 36)) = v13;
  return result;
}

double View.materialActiveAppearance(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);

  return result;
}

uint64_t specialized static Material.ResolvedMaterial.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *a2;
  v4 = *(a2 + 12);
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v10 = *a1;
  v11 = v5;
  v8 = v3;
  v9 = v6;
  outlined copy of Material.ID(v10, v5);
  outlined copy of Material.ID(v3, v6);
  LOBYTE(v3) = specialized static Material.ID.== infix(_:_:)(&v10, &v8);
  outlined consume of Material.ID(v8, v9);
  outlined consume of Material.ID(v10, v11);
  return v3 & (v2 == v4);
}

void type metadata accessor for MaterialView<Rectangle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider()
{
  if (!lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.BackgroundColorProvider, &type metadata for Color.BackgroundColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.BackgroundColorProvider, &type metadata for Color.BackgroundColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.BackgroundColorProvider, &type metadata for Color.BackgroundColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider);
  }
}

uint64_t outlined destroy of MaterialProvider?(uint64_t a1)
{
  type metadata accessor for MaterialProvider?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for MaterialProvider?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MaterialProvider?)
  {
    type metadata accessor for MaterialProvider();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for MaterialProvider?);
    }
  }
}

unint64_t type metadata accessor for MaterialProvider()
{
  result = lazy cache variable for type metadata for MaterialProvider;
  if (!lazy cache variable for type metadata for MaterialProvider)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MaterialProvider);
  }

  return result;
}

void lazy protocol witness table accessor for type Material.ID and conformance Material.ID()
{
  if (!lazy protocol witness table cache variable for type Material.ID and conformance Material.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for Material.ID, &type metadata for Material.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Material.ID and conformance Material.ID);
  }
}

uint64_t assignWithCopy for Material.ID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of Material.ID(v5, v6);
  return a1;
}

uint64_t assignWithTake for Material.ID(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  outlined consume of Material.ID(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for Material.ID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Material.ID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t getEnumTag for Material.ID(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for Material.ID(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t type metadata completion function for MaterialView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MaterialView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v7 + ((v6 + 16) & ~v6) + 1 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  else
  {
    v11 = ~v6;
    v12 = *a2;
    v13 = *(a2 + 8);
    outlined copy of Material.ID(*a2, v13);
    *a1 = v12;
    *(a1 + 8) = v13;
    *(a1 + 12) = *(a2 + 12);
    (*(v5 + 16))((a1 + v6 + 16) & v11, (a2 + v6 + 16) & v11, v4);
    *(((a1 + v6 + 16) & v11) + v7) = *(((a2 + v6 + 16) & v11) + v7);
  }

  return a1;
}

uint64_t destroy for MaterialView(uint64_t a1, uint64_t a2)
{
  outlined consume of Material.ID(*a1, *(a1 + 8));
  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 16) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithCopy for MaterialView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 12) = *(a2 + 12);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = (v10 + 16 + a1) & ~v10;
  v12 = (v10 + 16 + a2) & ~v10;
  (*(v8 + 16))(v11, v12);
  *(*(v9 + 48) + v11) = *(*(v9 + 48) + v12);
  return a1;
}

uint64_t assignWithCopy for MaterialView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v7);
  v8 = *a1;
  *a1 = v6;
  v9 = *(a1 + 8);
  *(a1 + 8) = v7;
  outlined consume of Material.ID(v8, v9);
  *(a1 + 12) = *(a2 + 12);
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v12 + 16 + a1) & ~v12;
  v14 = (v12 + 16 + a2) & ~v12;
  (*(v10 + 24))(v13, v14);
  *(*(v11 + 40) + v13) = *(*(v11 + 40) + v14);
  return a1;
}

_OWORD *initializeWithTake for MaterialView(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 32))(v7, v8);
  *(*(v5 + 32) + v7) = *(*(v5 + 32) + v8);
  return a1;
}

uint64_t assignWithTake for MaterialView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *a1;
  *a1 = *a2;
  v8 = *(a1 + 8);
  *(a1 + 8) = v6;
  outlined consume of Material.ID(v7, v8);
  *(a1 + 12) = *(a2 + 12);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = (v11 + 16 + a1) & ~v11;
  v13 = (v11 + 16 + a2) & ~v11;
  (*(v9 + 40))(v12, v13);
  *(*(v10 + 24) + v12) = *(*(v10 + 24) + v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for MaterialView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFC)
  {
    v7 = 252;
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

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
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
      if (v5 > 0xFC)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 8);
      if (v15 > 3)
      {
        return (v15 ^ 0xFF) + 1;
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

void storeEnumTagSinglePayload for MaterialView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFC)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFC)
  {
    *a1 = a2 - 253;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[8] = -a2;
  }
}

uint64_t assignWithTake for Material(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of Material.ID(v5, v6);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t type metadata completion function for MaterialActiveAppearanceShapeStyle(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialActiveAppearanceShapeStyle(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFC)
  {
    v7 = 252;
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
      if (v5 >= 0xFC)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 4)
      {
        return v15 - 3;
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

unsigned int *storeEnumTagSinglePayload for MaterialActiveAppearanceShapeStyle(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFC)
  {
    v7 = 252;
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
      if (v6 < 0xFC)
      {
        *(result + v8) = a2 + 3;
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

void lazy protocol witness table accessor for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags()
{
  if (!lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for Material.ResolvedMaterial.Flags, &type metadata for Material.ResolvedMaterial.Flags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for Material.ResolvedMaterial.Flags, &type metadata for Material.ResolvedMaterial.Flags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for Material.ResolvedMaterial.Flags, &type metadata for Material.ResolvedMaterial.Flags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for Material.ResolvedMaterial.Flags, &type metadata for Material.ResolvedMaterial.Flags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags);
  }
}

void lazy protocol witness table accessor for type MaterialActiveAppearance.Storage and conformance MaterialActiveAppearance.Storage()
{
  if (!lazy protocol witness table cache variable for type MaterialActiveAppearance.Storage and conformance MaterialActiveAppearance.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for MaterialActiveAppearance.Storage, &unk_1F00715E0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MaterialActiveAppearance.Storage and conformance MaterialActiveAppearance.Storage);
  }
}

unint64_t type metadata accessor for NSBundle()
{
  result = lazy cache variable for type metadata for NSBundle;
  if (!lazy cache variable for type metadata for NSBundle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSBundle);
  }

  return result;
}

Swift::Bool __swiftcall _ShapeStyle_Pack.isClear(name:)(Swift::Bool name)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *name;
    v6 = 1;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return name;
      }

      v7 = (v2 + 32 + (v4 << 7));
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[3];
      v22 = v7[2];
      v23 = v10;
      v20 = v8;
      v21 = v9;
      v11 = v7[4];
      v12 = v7[5];
      v13 = v7[7];
      v26 = v7[6];
      v27 = v13;
      v24 = v11;
      v25 = v12;
      if (v6)
      {
        v6 = 1;
        if (v20 != v5 || *&v26 == 0.0)
        {
          goto LABEL_4;
        }

        if (BYTE13(v25) <= 2u)
        {
          break;
        }
      }

      v6 = 0;
LABEL_4:
      if (++v4 == v3)
      {
        return v6 & 1;
      }
    }

    if (BYTE13(v25) == 1)
    {
      v14 = *(**(&v20 + 1) + 96);
      v15 = outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v20, v19, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      if ((v14(v15) & 1) == 0)
      {
LABEL_12:
        v6 = 0;
LABEL_21:
        name = outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v20, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(&v21 + 1);
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v20, v19, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      if (v16 != 0.0)
      {
        goto LABEL_12;
      }
    }

    v17 = *(*(&v27 + 1) + 16);
    if (v17)
    {
      v18 = *(&v27 + 1) + 44;
      v6 = 1;
      do
      {
        if (v6)
        {
          v6 = *(v18 + 41) | (*v18 == 0.0);
        }

        else
        {
          v6 = 0;
        }

        v18 += 80;
        --v17;
      }

      while (v17);
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_21;
  }

  v6 = 1;
  return v6 & 1;
}

__n128 _ShapeStyle_Pack.Style.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 88) = 1065353216;
  *(a2 + 96) = 0;
  *(a2 + 104) = -1;
  *(a2 + 112) = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 78) = *(a1 + 78);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  return result;
}

void _ShapeStyle_Pack.modify(name:levels:_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v8 = *a1;
  v9 = *v4;
  v18 = *v4;
  v17 = v8;
  v10 = _ShapeStyle_Pack.indices(of:)(&v17);
  v12 = v11;

  if (v10 == v12)
  {
    return;
  }

  if (v12 < v10)
  {
LABEL_24:
    __break(1u);
  }

  else if (v10 < v12)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_26:
  v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
LABEL_5:
  *v4 = v9;
  v14 = (v10 << 7) | 0x21;
  do
  {
    if (v10 < 0)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v10 >= v9[2])
    {
      goto LABEL_22;
    }

    v15 = *(v9 + v14);
    if (v15 >= a2 && v15 < a3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      }

      if (v10 >= v9[2])
      {
        goto LABEL_23;
      }

      a4(v9 + v14 + 7);
    }

    ++v10;
    v14 += 128;
  }

  while (v12 != v10);
  *v4 = v9;
}

void _ShapeStyle_Shape.stylePack.getter(uint64_t *a1@<X8>)
{
  if (*(v1 + 40) == 1)
  {
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v3;
}

void _ShapeStyle_Pack.Style.applyingOpacity(_:)(uint64_t a1@<X8>, Swift::Float a2@<S0>)
{
  v4 = *(v2 + 64);
  v6 = *(v2 + 96);
  v13 = *(v2 + 80);
  v5 = v13;
  v14 = v6;
  v15 = *(v2 + 112);
  v7 = v15;
  v8 = *(v2 + 16);
  v12[0] = *v2;
  v9 = *(v2 + 32);
  v10 = *(v2 + 48);
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  v12[4] = v4;
  *a1 = v12[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  outlined init with copy of _ShapeStyle_Pack.Style(v12, v11);
  _ShapeStyle_Pack.Style.applyOpacity(_:)(a2);
}

void _ShapeStyle_Pack.Style.applyBlend(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (one-time initialization token for semantic != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v4 = static Semantics_v6.semantic;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if (dyld_program_sdk_at_least())
      {
        goto LABEL_8;
      }
    }

    else if (static Semantics.forced >= v4)
    {
LABEL_8:
      v5 = 1;
      if (*(v1 + 104) != 255)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = 0;
LABEL_9:
    v6 = *(v1 + 96);
    v7 = *(v1 + 104);
    outlined copy of GraphicsBlendMode(v2, v3);
    outlined consume of GraphicsBlendMode?(v6, v7);
    *(v1 + 96) = v2;
    *(v1 + 104) = v3;
LABEL_10:
    v8 = *(v1 + 112);
    v9 = *(v8 + 2);
    if (!v9)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v10 = 0;
    v11 = v8 + 104;
    while (v5)
    {
      if (v10 >= *(v8 + 2))
      {
        goto LABEL_23;
      }

      if (*v11 == 255)
      {
        break;
      }

LABEL_14:
      ++v10;
      v11 += 80;
      if (v9 == v10)
      {
        *(v1 + 112) = v8;
        return;
      }
    }

    outlined copy of GraphicsBlendMode(v2, v3);
    if (v10 < *(v8 + 2))
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = v2;
      v13 = *v11;
      *v11 = v3;
      outlined consume of GraphicsBlendMode?(v12, v13);
      goto LABEL_14;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }
}

uint64_t _ShapeStyle_Pack.Style.fill.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11[0] = v4;
  *(v11 + 14) = *(v1 + 78);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 78) = *(v11 + 14);
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ShapeStyle_Pack.Fill(v9, v8);
}

__n128 _ShapeStyle_Pack.Style.fill.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v9[0] = *(v1 + 64);
  *(v9 + 14) = *(v1 + 78);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  outlined destroy of _ShapeStyle_Pack.Fill(v8);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 78) = *(a1 + 78);
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  return result;
}

uint64_t _ShapeStyle_Pack.Style._blend.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = v2;
  v3 = *(v1 + 104);
  *(a1 + 8) = v3;
  return outlined copy of GraphicsBlendMode?(v2, v3);
}

uint64_t _ShapeStyle_Pack.Style._blend.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = outlined consume of GraphicsBlendMode?(*(v1 + 96), *(v1 + 104));
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  return result;
}

uint64_t _ShapeStyle_Pack.Style.blend.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  if (v3 == 255)
  {
    if (one-time initialization token for normal != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }

    v4 = static GraphicsBlendMode.normal;
    v5 = byte_1ED52F818;
    *a1 = static GraphicsBlendMode.normal;
    *(a1 + 8) = v5;
    outlined copy of GraphicsBlendMode(v4, v5);
  }

  else
  {
    *a1 = v2;
    *(a1 + 8) = v3 & 1;
  }

  return outlined copy of GraphicsBlendMode?(v2, v3);
}

void one-time initialization function for clear()
{
  DWORD2(xmmword_1ED51ECC0) = 1065353216;
  *&xmmword_1ED51ECD0 = 0;
  BYTE8(xmmword_1ED51ECD0) = -1;
  qword_1ED51ECE0 = MEMORY[0x1E69E7CC0];
  static _ShapeStyle_Pack.Style.clear = 0uLL;
  dword_1ED51EC80 = 2143289344;
  BYTE5(xmmword_1ED51ECC0) = 0;
}

uint64_t static _ShapeStyle_Pack.Style.clear.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for clear != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1ED51ECB0;
  v2 = xmmword_1ED51ECC0;
  v3 = xmmword_1ED51ECD0;
  v11[5] = xmmword_1ED51ECC0;
  v11[6] = xmmword_1ED51ECD0;
  v4 = qword_1ED51ECE0;
  v12 = qword_1ED51ECE0;
  v5 = *&dword_1ED51EC80;
  v11[0] = static _ShapeStyle_Pack.Style.clear;
  v6 = xmmword_1ED51EC90;
  v7 = unk_1ED51ECA0;
  v11[1] = *&dword_1ED51EC80;
  v11[2] = xmmword_1ED51EC90;
  v11[3] = unk_1ED51ECA0;
  v11[4] = xmmword_1ED51ECB0;
  *a1 = static _ShapeStyle_Pack.Style.clear;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v1;
  *(a1 + 80) = v2;
  *(a1 + 96) = v3;
  *(a1 + 112) = v4;
  return outlined init with copy of _ShapeStyle_Pack.Style(v11, v10);
}

uint64_t static _ShapeStyle_Pack.Effect.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 53) & *(a2 + 53);
  if ((*(a1 + 53) & 1) == 0 && (*(a2 + 53) & 1) == 0)
  {
    v3 = *(a1 + 16);
    v8[0] = *a1;
    v8[1] = v3;
    v9[0] = *(a1 + 32);
    *(v9 + 13) = *(a1 + 45);
    v4 = *(a2 + 16);
    v6[0] = *a2;
    v6[1] = v4;
    v7[0] = *(a2 + 32);
    *(v7 + 13) = *(a2 + 45);
    v2 = specialized static ResolvedShadowStyle.== infix(_:_:)(v8, v6);
  }

  return v2 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _ShapeStyle_Pack.Effect.Kind(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 53) & *(a2 + 53);
  if ((*(a1 + 53) & 1) == 0 && (*(a2 + 53) & 1) == 0)
  {
    v3 = *(a1 + 16);
    v8[0] = *a1;
    v8[1] = v3;
    v9[0] = *(a1 + 32);
    *(v9 + 13) = *(a1 + 45);
    v4 = *(a2 + 16);
    v6[0] = *a2;
    v6[1] = v4;
    v7[0] = *(a2 + 32);
    *(v7 + 13) = *(a2 + 45);
    v2 = specialized static ResolvedShadowStyle.== infix(_:_:)(v8, v6);
  }

  return v2 & 1;
}

__n128 _ShapeStyle_Pack.Effect.kind.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 46) = *(v1 + 46);
  return result;
}

__n128 _ShapeStyle_Pack.Effect.kind.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 46) = *(a1 + 46);
  return result;
}

uint64_t _ShapeStyle_Pack.Effect._blend.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  v3 = *(v1 + 72);
  *(a1 + 8) = v3;
  return outlined copy of GraphicsBlendMode?(v2, v3);
}

uint64_t _ShapeStyle_Pack.Effect._blend.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = outlined consume of GraphicsBlendMode?(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t _ShapeStyle_Pack.Effect.blend.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  if (v3 == 255)
  {
    if (one-time initialization token for normal != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }

    v4 = static GraphicsBlendMode.normal;
    v5 = byte_1ED52F818;
    *a1 = static GraphicsBlendMode.normal;
    *(a1 + 8) = v5;
    outlined copy of GraphicsBlendMode(v4, v5);
  }

  else
  {
    *a1 = v2;
    *(a1 + 8) = v3 & 1;
  }

  return outlined copy of GraphicsBlendMode?(v2, v3);
}

_BYTE *_ShapeStyle_Pack.Key.init(_:_:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t (*_ShapeStyle_Pack.Key.level.modify(void *a1))()
{
  *a1 = *(v1 + 1);
  a1[1] = v1;
  return _ShapeStyle_Pack.Key.level.modify;
}

BOOL static _ShapeStyle_Pack.Key.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 1;
  }

  return v2 == v3 && a1[1] < a2[1];
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance _ShapeStyle_Pack.Key(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 1;
  }

  return v2 == v3 && a1[1] < a2[1];
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance _ShapeStyle_Pack.Key(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v2 < v3)
  {
    return 0;
  }

  return v2 != v3 || a2[1] >= a1[1];
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance _ShapeStyle_Pack.Key(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 0;
  }

  return v2 != v3 || a1[1] >= a2[1];
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance _ShapeStyle_Pack.Key(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v2 < v3)
  {
    return 1;
  }

  return v2 == v3 && a2[1] < a1[1];
}

uint64_t static _ShapeStyle_Pack.style(_:name:level:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 64);
  v8 = *(a1 + 96);
  v19[5] = *(a1 + 80);
  v19[6] = v8;
  v9 = *(a1 + 16);
  v19[0] = *a1;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v19[1] = v9;
  v19[2] = v10;
  v20 = *(a1 + 112);
  v19[3] = v11;
  v19[4] = v7;
  v12 = *a2;
  type metadata accessor for _ContiguousArrayStorage<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18DDA6EB0;
  v14 = *(a1 + 80);
  *(v13 + 104) = *(a1 + 64);
  *(v13 + 120) = v14;
  *(v13 + 136) = *(a1 + 96);
  v15 = *(a1 + 16);
  *(v13 + 40) = *a1;
  *(v13 + 56) = v15;
  v16 = *(a1 + 48);
  *(v13 + 72) = *(a1 + 32);
  *(v13 + 32) = v12;
  *(v13 + 33) = a3;
  *(v13 + 152) = *(a1 + 112);
  *(v13 + 88) = v16;
  *a4 = v13;
  return outlined init with copy of _ShapeStyle_Pack.Style(v19, v18);
}

uint64_t static _ShapeStyle_Pack.fill(_:name:level:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v17[3] = *(a1 + 48);
  v18[0] = v8;
  *(v18 + 14) = *(a1 + 78);
  v9 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v9;
  v17[2] = v7;
  v10 = *a2;
  type metadata accessor for _ContiguousArrayStorage<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18DDA6EB0;
  v12 = *(a1 + 48);
  *(v11 + 72) = *(a1 + 32);
  *(v11 + 88) = v12;
  *(v11 + 104) = *(a1 + 64);
  v13 = *(a1 + 16);
  *(v11 + 40) = *a1;
  *(v11 + 32) = v10;
  *(v11 + 33) = a3;
  *(v11 + 128) = 1065353216;
  *(v11 + 136) = 0;
  v14 = MEMORY[0x1E69E7CC0];
  *(v11 + 144) = -1;
  *(v11 + 152) = v14;
  *(v11 + 118) = *(a1 + 78);
  *(v11 + 56) = v13;
  *a4 = v11;
  return outlined init with copy of _ShapeStyle_Pack.Fill(v17, v16);
}

double static _ShapeStyle_Pack.defaultValue.getter@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static _ShapeStyle_Pack.defaultValue;

  return result;
}

uint64_t key path setter for _ShapeStyle_Pack.subscript(_:_:) : _ShapeStyle_Pack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v6;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v8 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v8;
  v11 = v4;
  outlined init with copy of _ShapeStyle_Pack.Style(v12, &v10);
  return _ShapeStyle_Pack.subscript.setter(a1, &v11, v5);
}

void (*_ShapeStyle_Pack.subscript.modify(uint64_t *a1, unsigned __int8 *a2, uint64_t a3))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x1F8uLL);
  }

  *a1 = v7;
  *(v7 + 480) = a3;
  *(v7 + 488) = v3;
  v8 = *a2;
  *(v7 + 496) = *a2;
  v11 = *v3;
  v10 = v8;
  _ShapeStyle_Pack.subscript.getter(&v10, a3, v7);
  return _ShapeStyle_Pack.subscript.modify;
}

void _ShapeStyle_Pack.subscript.modify(char **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 4);
    v3 = *(v2 + 5);
    v5 = *(v2 + 3);
    *(v2 + 19) = v4;
    *(v2 + 20) = v3;
    v6 = *(v2 + 5);
    *(v2 + 21) = *(v2 + 6);
    v7 = *(v2 + 1);
    *(v2 + 15) = *v2;
    *(v2 + 16) = v7;
    v8 = *(v2 + 3);
    v10 = *v2;
    v9 = *(v2 + 1);
    v11 = *(v2 + 2);
    *(v2 + 17) = v11;
    *(v2 + 18) = v8;
    v26 = v4;
    v27 = v6;
    v28 = *(v2 + 6);
    v22 = v10;
    v23 = v9;
    v12 = v2[496];
    v13 = *(v2 + 60);
    *(v2 + 44) = *(v2 + 14);
    v29 = *(v2 + 14);
    v24 = v11;
    v25 = v5;
    v30 = v12;
    outlined init with copy of _ShapeStyle_Pack.Style((v2 + 240), (v2 + 360));
    _ShapeStyle_Pack.subscript.setter(&v22, &v30, v13);
    v14 = *(v2 + 5);
    *(v2 + 184) = *(v2 + 4);
    *(v2 + 200) = v14;
    *(v2 + 216) = *(v2 + 6);
    v15 = *(v2 + 1);
    *(v2 + 120) = *v2;
    *(v2 + 136) = v15;
    v16 = *(v2 + 3);
    *(v2 + 152) = *(v2 + 2);
    *(v2 + 29) = *(v2 + 14);
    *(v2 + 168) = v16;
    outlined destroy of _ShapeStyle_Pack.Style((v2 + 120));
  }

  else
  {
    v17 = v2[496];
    v18 = *(v2 + 60);
    v19 = *(v2 + 5);
    v26 = *(v2 + 4);
    v27 = v19;
    v28 = *(v2 + 6);
    v29 = *(v2 + 14);
    v20 = *(v2 + 1);
    v22 = *v2;
    v23 = v20;
    v21 = *(v2 + 3);
    v24 = *(v2 + 2);
    v25 = v21;
    v30 = v17;
    _ShapeStyle_Pack.subscript.setter(&v22, &v30, v18);
  }

  free(v2);
}

double _ShapeStyle_Pack.subscript.getter@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v6 = *v2;
  v5 = v3;
  _ShapeStyle_Pack.Slice.init(pack:name:)(&v6, &v5, a2);

  return result;
}

uint64_t _ShapeStyle_Pack.Slice.endIndex.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  v3 = __OFSUB__(v2, v1);
  v4 = v2 - v1;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = *(v0 + 32);
  result = v5 + v4;
  if (__OFADD__(v5, v4))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t _ShapeStyle_Pack.Slice.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v7 = __OFSUB__(result, v3);
  v4 = result - v3;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 24) >> 1;
    if (v4 >= *(v2 + 16))
    {
      v7 = __OFSUB__(v4, v5);
      v6 = v4 - v5 < 0;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    if (v6 != v7)
    {
      v8 = (*(v2 + 8) + (v4 << 7));
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[3];
      v22[2] = v8[2];
      v22[3] = v11;
      v22[0] = v9;
      v22[1] = v10;
      v12 = v8[4];
      v13 = v8[5];
      v14 = v8[7];
      v22[6] = v8[6];
      v22[7] = v14;
      v22[4] = v12;
      v22[5] = v13;
      v15 = *(v8 + 8);
      v16 = *(v8 + 24);
      v17 = *(v8 + 56);
      *(a2 + 32) = *(v8 + 40);
      *(a2 + 48) = v17;
      *a2 = v15;
      *(a2 + 16) = v16;
      v18 = *(v8 + 72);
      v19 = *(v8 + 88);
      v20 = *(v8 + 104);
      *(a2 + 112) = *(v8 + 15);
      *(a2 + 80) = v19;
      *(a2 + 96) = v20;
      *(a2 + 64) = v18;
      return outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v22, &v21, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance _ShapeStyle_Pack.Slice@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(v2 + 16);
  v5 = *(v2 + 24) >> 1;
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v2 + 32);
  v6 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 >= v8 && v3 < v9)
  {
    *a2 = v3;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance _ShapeStyle_Pack.Slice(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = *(v1 + 16);
  v4 = *(v1 + 24) >> 1;
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v1 + 32);
  v5 = __OFADD__(v7, v6);
  v8 = v7 + v6;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 >= v7 && v2 < v8)
  {
    *result = v2;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void protocol witness for Collection.endIndex.getter in conformance _ShapeStyle_Pack.Slice(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v1 + 32);
    v4 = __OFADD__(v6, v5);
    v7 = v6 + v5;
    if (!v4)
    {
      *a1 = v7;
      return;
    }
  }

  __break(1u);
}

void (*protocol witness for Collection.subscript.read in conformance _ShapeStyle_Pack.Slice(uint64_t *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = _ShapeStyle_Pack.Slice.subscript.read(v4, *a2);
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

uint64_t (*_ShapeStyle_Pack.Slice.subscript.read(uint64_t (**a1)(), uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x178uLL);
  }

  *a1 = result;
  v6 = *(v2 + 32);
  v7 = __OFSUB__(a2, v6);
  v8 = a2 - v6;
  if (v7)
  {
    __break(1u);
  }

  else if (v8 >= *(v2 + 16) && v8 < *(v2 + 24) >> 1)
  {
    v10 = (*(v2 + 8) + (v8 << 7));
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[3];
    *(result + 2) = v10[2];
    *(result + 3) = v13;
    *result = v11;
    *(result + 1) = v12;
    v14 = v10[4];
    v15 = v10[5];
    v16 = v10[7];
    *(result + 6) = v10[6];
    *(result + 7) = v16;
    *(result + 4) = v14;
    *(result + 5) = v15;
    v17 = *(v10 + 88);
    v18 = *(v10 + 104);
    v19 = *(v10 + 72);
    *(result + 46) = *(v10 + 15);
    *(result + 21) = v17;
    *(result + 22) = v18;
    *(result + 20) = v19;
    v20 = *(v10 + 8);
    v21 = *(v10 + 24);
    v22 = *(v10 + 56);
    *(result + 18) = *(v10 + 40);
    *(result + 19) = v22;
    *(result + 16) = v20;
    *(result + 17) = v21;
    outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(result, result + 128, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    return _ShapeStyle_Pack.Slice.subscript.read;
  }

  __break(1u);
  return result;
}

void _ShapeStyle_Pack.Slice.subscript.read(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 336);
  *(v1 + 192) = *(*a1 + 320);
  *(v1 + 208) = v2;
  *(v1 + 224) = *(v1 + 352);
  *(v1 + 240) = *(v1 + 368);
  v3 = *(v1 + 272);
  *(v1 + 128) = *(v1 + 256);
  *(v1 + 144) = v3;
  v4 = *(v1 + 304);
  *(v1 + 160) = *(v1 + 288);
  *(v1 + 176) = v4;
  outlined destroy of _ShapeStyle_Pack.Style(v1 + 128);

  free(v1);
}

void protocol witness for Collection.subscript.getter in conformance _ShapeStyle_Pack.Slice(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(v2 + 32);
  v7 = v6 + v5;
  if (__OFADD__(v6, v5))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *a1;
  if (*a1 < v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = a1[1];
  if (v7 >= v9)
  {
    *(a2 + 16) = *v2;
    *(a2 + 32) = v3;
    *(a2 + 40) = v4;
    *(a2 + 48) = v6;
    *a2 = v8;
    *(a2 + 8) = v9;
    swift_unknownObjectRetain();
    return;
  }

LABEL_11:
  __break(1u);
}

void protocol witness for Collection.indices.getter in conformance _ShapeStyle_Pack.Slice(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *(v1 + 32);
  v4 = __OFADD__(v6, v5);
  v7 = v6 + v5;
  if (v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 >= v6)
  {
    *a1 = v6;
    a1[1] = v7;
    return;
  }

LABEL_7:
  __break(1u);
}

BOOL protocol witness for Collection.isEmpty.getter in conformance _ShapeStyle_Pack.Slice()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  v3 = __OFSUB__(v2, v1);
  v4 = v2 - v1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 32);
    v3 = __OFADD__(v5, v4);
    v6 = v5 + v4;
    if (!v3)
    {
      return v6 == v5;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance _ShapeStyle_Pack.Slice@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v3 + 16);
  v6 = *(v3 + 24) >> 1;
  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = *(v3 + 32);
  v7 = __OFADD__(v9, v8);
  v10 = v9 + v8;
  if (v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 >= v9 && v10 >= v4)
  {
    *a3 = v4;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance _ShapeStyle_Pack.Slice(uint64_t *result, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24) >> 1;
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(v2 + 32);
  v5 = __OFADD__(v7, v6);
  v8 = v7 + v6;
  if (v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *result;
  v10 = *a2;
  if (v8 >= *a2 && v10 >= v7 && v9 >= v7 && v8 >= v9)
  {
    return (v10 - v9);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance _ShapeStyle_Pack.Slice@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24) >> 1;
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(v2 + 32);
  v8 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = *result;
  if (*result >= v7 && v9 < v8)
  {
    *a2 = v9 + 1;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance _ShapeStyle_Pack.Slice(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + 32);
  v7 = v6 + v5;
  if (__OFADD__(v6, v5))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *result;
  if (*result >= v6 && v8 < v7)
  {
    *result = v8 + 1;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance _ShapeStyle_Pack.Slice@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance _ShapeStyle_Pack.Slice()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  v3 = __OFSUB__(v2, v1);
  v4 = v2 - v1;
  if (v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *(v0 + 32);
  v3 = __OFADD__(v5, v4);
  v6 = v5 + v4;
  if (v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v6 - v5;
  if (v6 < v5)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

char *protocol witness for Sequence._copyToContiguousArray() in conformance _ShapeStyle_Pack.Slice()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t _ShapeStyle_Pack.Style.isClear.getter()
{
  if (*(v0 + 88) == 0.0)
  {
    goto LABEL_2;
  }

  if (*(v0 + 85) > 2u)
  {
LABEL_4:
    v1 = 0;
    return v1 & 1;
  }

  v3 = *(v0 + 112);
  if (*(v0 + 85))
  {
    v4 = *(v0 + 85) == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    if (((*(**v0 + 96))() & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (*(v0 + 12) != 0.0)
  {
    goto LABEL_4;
  }

  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_2:
    v1 = 1;
    return v1 & 1;
  }

  v6 = v3 + 44;
  v1 = 1;
  do
  {
    if (v1)
    {
      v1 = *(v6 + 41) | (*v6 == 0.0);
    }

    else
    {
      v1 = 0;
    }

    v6 += 80;
    --v5;
  }

  while (v5);
  return v1 & 1;
}

uint64_t _ShapeStyle_Pack.subscript.getter(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  LOBYTE(v7[0]) = 2;
  _ShapeStyle_Pack.subscript.getter(v7, 0, v9);
  outlined init with copy of _ShapeStyle_Pack.Fill(v9, v7);
  outlined destroy of _ShapeStyle_Pack.Style(v9);
  if (v10 == 6)
  {
    v7[0] = v9[0];
    v7[1] = v9[1];
    v5 = ResolvedMulticolorStyle.resolveHDR(name:)(a1, a2);
    outlined destroy of _ShapeStyle_Pack.Fill(v9);
    return v5;
  }

  else
  {
    outlined destroy of _ShapeStyle_Pack.Fill(v9);
    return 0;
  }
}

BOOL _ShapeStyle_Pack.Style.ignoresBackdrop.getter()
{
  v1 = *(v0 + 48);
  v12[2] = *(v0 + 32);
  v12[3] = v1;
  *v13 = *(v0 + 64);
  *&v13[14] = *(v0 + 78);
  v2 = *(v0 + 88) == 1.0;
  v3 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v3;
  if (!v2)
  {
    return 0;
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  if (v5 == 255)
  {
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v6 = static GraphicsBlendMode.normal;
    v7 = byte_1ED52F818;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  }

  else
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
  }

  outlined copy of GraphicsBlendMode?(v4, v5);
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v8 = static GraphicsBlendMode.normal;
  v9 = byte_1ED52F818;
  if ((v7 & 1) == 0)
  {
    if ((byte_1ED52F818 & 1) == 0)
    {
      outlined consume of GraphicsBlendMode(v6, 0);
      outlined consume of GraphicsBlendMode(v8, 0);
      if (v6 == v8)
      {
        goto LABEL_16;
      }

      return 0;
    }

LABEL_20:
    outlined copy of GraphicsBlendMode(v8, v9);
    outlined consume of GraphicsBlendMode(v6, v7 & 1);
    outlined consume of GraphicsBlendMode(v8, v9);
    outlined consume of GraphicsBlendMode(v6, v7 & 1);
    return 0;
  }

  if (!byte_1ED52F818)
  {
    swift_unknownObjectRetain();
    goto LABEL_20;
  }

  swift_unknownObjectRetain();
  outlined consume of GraphicsBlendMode(v6, 1);
  outlined consume of GraphicsBlendMode(v8, 1);
  if (v6 != v8)
  {
    return 0;
  }

LABEL_16:
  if (v13[21] > 1u)
  {
    return v13[21] - 2 >= 4;
  }

  if (!v13[21])
  {
    return *(v12 + 3) == 1.0;
  }

  v11 = *(**&v12[0] + 104);

  LOBYTE(v11) = v11();
  outlined destroy of _ShapeStyle_Pack.Fill(v12);
  return v11 & 1;
}

void _ShapeStyle_Pack.animatableData.setter(char **a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = *(*a1 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    *v1 = v4;
    if (!v5)
    {
      goto LABEL_61;
    }
  }

  else
  {
LABEL_60:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    *v2 = v4;
    if (!v5)
    {
      goto LABEL_61;
    }
  }

  v8 = 0;
  v9 = 0;
  v10 = v3 + 32;
  while (2)
  {
    v11 = v4 + 4;
    if (v9 <= v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = v9;
    }

    v13 = v9;
LABEL_8:
    if (v13 != v12)
    {
      v14 = &v10[112 * v13];
      v15 = v8 << 7;
      v16 = v8;
      while (1)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v16 >= v4[2])
        {
          goto LABEL_56;
        }

        if (v9 < 0)
        {
          goto LABEL_57;
        }

        if (v13 >= *(v3 + 2))
        {
          goto LABEL_58;
        }

        v17 = *(v11 + v15);
        v18 = *(v11 + v15 + 1);
        v19 = *v14;
        v20 = v14[1];
        if (v17 == v19 && v18 == v20)
        {
          break;
        }

        v22 = v18 < v20 && v17 == v19;
        if (v17 >= v19 && !v22)
        {
          ++v13;
          v8 = v16;
          if (v16 < v5)
          {
            goto LABEL_8;
          }

          goto LABEL_61;
        }

        ++v16;
        v15 += 128;
        if (v16 >= v5)
        {
          goto LABEL_61;
        }
      }

      v23 = *v14;
      v24 = *(v14 + 2);
      *&v63[16] = *(v14 + 1);
      *&v63[32] = v24;
      *v63 = v23;
      v25 = *(v14 + 3);
      v26 = *(v14 + 4);
      v27 = *(v14 + 6);
      *&v63[80] = *(v14 + 5);
      v64 = v27;
      *&v63[48] = v25;
      *&v63[64] = v26;
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v63, v61, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      }

      if (v16 >= v4[2])
      {
        __break(1u);
        return;
      }

      v55 = v10;
      v28 = v4 + v15;
      v61[2] = *&v63[40];
      v61[3] = *&v63[56];
      v61[4] = *&v63[72];
      v62 = v63[88];
      v61[0] = *&v63[8];
      v61[1] = *&v63[24];
      _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)((v28 + 40));
      v29 = *(&v64 + 1);
      *(v28 + 32) = v64;
      v30 = *(v28 + 19);
      if (*(v29 + 16) >= *(v30 + 2))
      {
        v31 = *(v30 + 2);
      }

      else
      {
        v31 = *(v29 + 16);
      }

      if (v31)
      {
        v56 = v29;

        v53 = v3;
        v54 = v2;
        v51 = v5;
        v52 = v4;
        v49 = v28;
        v50 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
        }

        v33 = v56;
        if (*(v30 + 2))
        {
          v34 = 0;
          v5 = 0;
          v4 = 0;
          v6 = v31 - 1;
          while (1)
          {
            v35 = *(v4 + v33 + 40);
            v3 = *(v4 + v33 + 48);
            v36 = *(v4 + v33 + 56);
            v37 = *(v4 + v33 + 72);
            v38 = *(v4 + v33 + 80);
            v2 = &v30[v34];
            *&v30[v34 + 88] = *(v4 + v33 + 32);
            if (v30[v34 + 85] & 1) != 0 || (v38)
            {
              LOBYTE(v61[0]) = 1;
              *(v2 + 2) = 0u;
              *(v2 + 3) = 0u;
              *(v2 + 4) = 0u;
              *(v2 + 77) = 0;
              v2[85] = 1;
              if (v6 == v5)
              {
                goto LABEL_52;
              }
            }

            else
            {
              v58 = v36;
              v39 = *(v2 + 6);
              v59 = *(v2 + 20);
              v60 = v2[84];
              if (one-time initialization token for legacyInterpolation != -1)
              {
                swift_once();
              }

              *&v32 = vmul_f32(v35, 0x3C0000003C000000);
              v57 = v32;
              v40 = *&v3 * 0.0078125;
              v41 = *(&v3 + 1) * 0.0078125;
              v3 = &static Color.Resolved.legacyInterpolation;
              swift_beginAccess();
              if (static Color.Resolved.legacyInterpolation)
              {
                v33 = v56;
                v43 = v57;
                v42 = v58;
              }

              else
              {
                if (v41 == 0.0)
                {
                  v33 = v56;
                  v32 = v57;
                }

                else
                {
                  *(&v32 + 1) = *(&v57 + 1);
                  *&v32 = vmul_n_f32(*&v57, 1.0 / v41);
                  v40 = v40 * (1.0 / v41);
                  v33 = v56;
                }

                v44 = v40 * (v40 * v40);
                v45 = vmul_f32(*&v32, vmul_f32(*&v32, *&v32));
                v46 = vsub_f32(vmul_f32(v45, 0x40270644408274ABLL), vrev64_s32(vmul_f32(v45, 0x4053B18C3FA25C2DLL)));
                v47 = vmul_n_f32(0x3EAEC16A3E6C8362, v44);
                LODWORD(v43) = vadd_f32(v46, v47).u32[0];
                HIDWORD(v43) = vsub_f32(v46, v47).i32[1];
                v48 = vmul_f32(v45, 0x3F34133EBB897F53);
                v40 = (v44 * 1.7076) + vsub_f32(v48, vdup_lane_s32(v48, 1)).f32[0];
                v42 = v58;
              }

              LOBYTE(v61[0]) = 0;
              *(v2 + 4) = v43;
              *(v2 + 10) = v40;
              *(v2 + 11) = v41;
              *(v2 + 6) = v39;
              *(v2 + 56) = v42;
              *(v2 + 9) = v37;
              *(v2 + 20) = v59;
              v2[84] = v60;
              v2[85] = 0;
              if (v6 == v5)
              {
LABEL_52:
                *(v49 + 19) = v30;

                v3 = v53;
                v2 = v54;
                v5 = v51;
                v4 = v52;
                v6 = v50;
                goto LABEL_53;
              }
            }

            v4 += 7;
            ++v5;
            v34 += 80;
            if (v5 >= *(v30 + 2))
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_53:
      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v63, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
      v8 = v16 + 1;
      v9 = v13 + 1;
      v10 = v55;
      if ((v16 + 1) < v5)
      {
        continue;
      }
    }

    break;
  }

LABEL_61:

  *v2 = v4;
}

double _ShapeStyle_Pack.Style.animatableData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v3;
  v15[0] = *(v1 + 64);
  *(v15 + 14) = *(v1 + 78);
  v4 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v4;
  v5 = *(v1 + 88);
  v6 = *(v1 + 112);
  outlined init with copy of _ShapeStyle_Pack.Fill(v14, v12);
  _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(v1, v12);
  specialized Array<A>.animatableData.getter(v6, &v11);
  v7 = v11;
  v8 = v12[3];
  *(a1 + 32) = v12[2];
  *(a1 + 48) = v8;
  *(a1 + 64) = v12[4];
  *(a1 + 80) = v13;
  result = *v12;
  v10 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v10;
  *(a1 + 88) = v5;
  *(a1 + 96) = v7;
  return result;
}

uint64_t _ShapeStyle_Pack.Style.animatableData.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v8 = v2;
  v9 = *(a1 + 96);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v1);
  *(v1 + 88) = DWORD2(v8);

  specialized Array<A>.animatableData.setter(v5);

  return outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v7, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
}

void (*_ShapeStyle_Pack.animatableData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  _ShapeStyle_Pack.animatableData.getter(a1);
  return _ShapeStyle_Pack.animatableData.modify;
}

void _ShapeStyle_Pack.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    v4 = v2;

    _ShapeStyle_Pack.animatableData.setter(&v3);
  }

  else
  {
    v3 = *a1;
    v4 = v2;
    _ShapeStyle_Pack.animatableData.setter(&v3);
  }
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeStyle_Pack(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = _ShapeStyle_Pack.animatableData.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

double key path setter for _ShapeStyle_Pack.Style.animatableData : _ShapeStyle_Pack.Style(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(a2);
  *(a2 + 88) = v3;

  specialized Array<A>.animatableData.setter(v4);

  return result;
}

double _ShapeStyle_Pack.Fill.animatableData.getter@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v8[3] = *(v1 + 48);
  v9[0] = v4;
  *(v9 + 14) = *(v1 + 78);
  v5 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v5;
  v8[2] = v3;
  outlined init with copy of _ShapeStyle_Pack.Fill(v8, v7);
  return _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(v1, a1);
}

uint64_t specialized Array<A>.animatableData.getter@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = result;
    v29 = a2;
    v41 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v41;
    v5 = (v4 + 32);
    do
    {
      v6 = v5[1];
      v38 = *v5;
      *v39 = v6;
      v7 = v5[3];
      *&v39[16] = v5[2];
      *v40 = v7;
      *&v40[9] = *(v5 + 57);
      v8 = BYTE5(v7);
      if (BYTE5(v7))
      {
        v9 = 0;
        v10 = 0uLL;
        v11 = 0uLL;
      }

      else
      {
        v12 = *(&v38 + 2);
        v31 = v38;
        v33 = *(&v38 + 3);
        v35 = *&v39[8];
        v9 = *&v39[24];
        outlined init with copy of _ShapeStyle_Pack.Effect(&v38, v37);
        if (one-time initialization token for legacyInterpolation != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (static Color.Resolved.legacyInterpolation == 1)
        {
          result = outlined destroy of _ShapeStyle_Pack.Effect(&v38);
          v13.i32[0] = v31.i32[1];
          v14 = __PAIR64__(LODWORD(v12), v31.u32[0]);
          v15 = v33;
        }

        else
        {
          v16 = ((0.2119 * v31.f32[0]) + vmuls_lane_f32(0.6807, v31, 1)) + (v12 * 0.1074);
          v17 = powf(fabsf(v16), 0.33333);
          v18 = copysignf(v17, v16);
          v19 = vadd_f32(vadd_f32(vrev64_s32(vmul_f32(v31, 0x3F094D173DB4D7ECLL)), vmul_f32(v31, 0x3E903D743ED30EB1)), vmul_n_f32(0x3F2146493D52B909, v12));
          v20 = vabs_f32(v19);
          v30 = v20.f32[0];
          v32 = powf(v20.f32[1], 0.33333);
          *v21.i32 = powf(v30, 0.33333);
          *&v21.i32[1] = v32;
          v22 = vbsl_s8(0x8000000080000000, v21, v19);
          result = outlined destroy of _ShapeStyle_Pack.Effect(&v38);
          v15 = v33;
          v13.f32[0] = v33 * v18;
          v14 = vmul_n_f32(v22, v33);
        }

        v23 = vmul_f32(v14, 0x4300000043000000);
        v13.f32[1] = v15;
        v24.i64[0] = v23.u32[0];
        v24.i64[1] = v23.u32[1];
        v10 = vorrq_s8(vshll_n_s32(vmul_f32(v13, 0x4300000043000000), 0x20uLL), v24);
        v11 = v35;
      }

      v25 = *&v40[8];
      v41 = v3;
      v27 = *(v3 + 16);
      v26 = *(v3 + 24);
      if (v27 >= v26 >> 1)
      {
        v34 = v10;
        v36 = v11;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v10 = v34;
        v11 = v36;
        v3 = v41;
      }

      *(v3 + 16) = v27 + 1;
      v28 = v3 + 56 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = v10;
      *(v28 + 56) = v11;
      *(v28 + 72) = v9;
      *(v28 + 80) = v8 & 1;
      v5 += 5;
      --v2;
    }

    while (v2);
    a2 = v29;
  }

  *a2 = v3;
  return result;
}

uint64_t _ShapeStyle_Pack.Fill.animatableData.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v1);
  return outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v5);
}

void (*_ShapeStyle_Pack.Style.animatableData.modify(char **a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x258uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 416);
  *(v4 + 74) = v1;
  v6 = *(v1 + 16);
  *(v4 + 26) = *v1;
  *(v4 + 27) = v6;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  *(v5 + 78) = *(v1 + 78);
  *(v4 + 29) = v8;
  *(v4 + 30) = v9;
  *(v4 + 28) = v7;
  v10 = *(v1 + 88);
  v11 = *(v1 + 112);
  v12 = *(v1 + 48);
  v17[2] = *(v1 + 32);
  v17[3] = v12;
  v18[0] = *(v1 + 64);
  *(v18 + 14) = *(v1 + 78);
  v13 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v13;
  outlined init with copy of _ShapeStyle_Pack.Fill(v5, (v4 + 104));
  _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(v17, (v4 + 504));
  specialized Array<A>.animatableData.getter(v11, v4 + 12);
  v14 = *(v4 + 552);
  *(v4 + 2) = *(v4 + 536);
  *(v4 + 3) = v14;
  *(v4 + 4) = *(v4 + 568);
  v4[80] = v4[584];
  v15 = *(v4 + 520);
  *v4 = *(v4 + 504);
  *(v4 + 1) = v15;
  *(v4 + 22) = v10;
  return _ShapeStyle_Pack.Style.animatableData.modify;
}

void _ShapeStyle_Pack.Style.animatableData.modify(char **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 5);
    *(v2 + 17) = *(v2 + 4);
    *(v2 + 18) = v3;
    v4 = *(v2 + 1);
    *(v2 + 13) = *v2;
    *(v2 + 14) = v4;
    v5 = *(v2 + 3);
    *(v2 + 15) = *(v2 + 2);
    *(v2 + 16) = v5;
    v6 = *(v2 + 74);
    *(v2 + 38) = *(v2 + 12);
    outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)((v2 + 208), (v2 + 312), type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v6);
    *(v6 + 88) = *(v2 + 74);

    specialized Array<A>.animatableData.setter(v7);

    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)((v2 + 208), type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v8 = *(v2 + 2);
    *(v2 + 152) = *(v2 + 3);
    v9 = *(v2 + 5);
    *(v2 + 168) = *(v2 + 4);
    *(v2 + 184) = v9;
    *(v2 + 25) = *(v2 + 12);
    v10 = *(v2 + 1);
    *(v2 + 104) = *v2;
    *(v2 + 120) = v10;
    *(v2 + 136) = v8;
  }

  else
  {
    *(v2 + 152) = *(v2 + 3);
    *(v2 + 168) = *(v2 + 4);
    *(v2 + 184) = *(v2 + 5);
    v11 = *(v2 + 1);
    *(v2 + 104) = *v2;
    *(v2 + 120) = v11;
    *(v2 + 136) = *(v2 + 2);
    v12 = *(v2 + 74);
    *(v2 + 25) = *(v2 + 12);
    _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v12);
    *(v12 + 88) = *(v2 + 48);

    specialized Array<A>.animatableData.setter(v13);
  }

  outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)((v2 + 104), type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

  free(v2);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance _ShapeStyle_Pack.Style(uint64_t a1)
{
  v2 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v8 = v2;
  v9 = *(a1 + 96);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v1);
  *(v1 + 88) = DWORD2(v8);

  specialized Array<A>.animatableData.setter(v5);

  return outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v7, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
}

void (*protocol witness for Animatable.animatableData.modify in conformance _ShapeStyle_Pack.Style(char ***a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = _ShapeStyle_Pack.Style.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

double _ShapeStyle_Pack.Fill.AnimatableData.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v26[0] = *a1;
  *&v27[14] = *(a1 + 78);
  v4 = *(a1 + 32);
  v6 = *(a1 + 48);
  v26[1] = v3;
  v26[2] = v4;
  v5 = *(a1 + 64);
  v26[3] = v6;
  *v27 = v5;
  v6.i64[0] = v26[0].i64[1];
  if (v27[21] > 2u)
  {
    if (v27[21] > 4u)
    {
      if (v27[21] == 5)
      {
        *(&v24[1] + 8) = *(a1 + 24);
        *(&v24[2] + 8) = *(a1 + 40);
        *(&v24[3] + 8) = *(a1 + 56);
        *(&v24[4] + 1) = *(a1 + 72);
        *&v24[0] = v26[0].i64[0];
        v6.i64[1] = v3.i64[0];
        *(v24 + 8) = v6;
        v8 = 8;
        goto LABEL_11;
      }
    }

    else if (v27[21] != 3)
    {
      v7.i64[0] = 0x4300000043000000;
      v7.i64[1] = 0x4300000043000000;
      v24[0] = vmulq_f32(v26[0], v7);
      *&v24[1] = vmul_f32(*v3.f32, 0x4300000043000000);
      v8 = 1;
LABEL_11:
      v25 = v8;
      goto LABEL_25;
    }

    outlined destroy of _ShapeStyle_Pack.Fill(v26);
    memset(v24, 0, sizeof(v24));
    v8 = 9;
    goto LABEL_11;
  }

  if (!v27[21])
  {
    v18 = v3.i32[0];
    if (one-time initialization token for legacyInterpolation != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (static Color.Resolved.legacyInterpolation)
    {
      v9 = v26[0];
    }

    else
    {
      ResolvedGradient.ColorSpace.convertIn(_:)(v24, v26[0].f32[0], v26[0].u32[1], v26[0].f32[2], v26[0].f32[3]);
      v9 = v24[0];
    }

    v11 = v18;
    v12.i64[0] = 0x4300000043000000;
    v12.i64[1] = 0x4300000043000000;
    v13 = vmulq_f32(v9, v12);
    goto LABEL_24;
  }

  if (v27[21] != 1)
  {
    v20 = v26[0].i32[1];
    v21 = v26[0].i32[0];
    v22 = v26[0].i64[1];
    v19 = v3.i32[0];
    if (one-time initialization token for legacyInterpolation != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (static Color.Resolved.legacyInterpolation == 1)
    {
      outlined destroy of _ShapeStyle_Pack.Fill(v26);
      v10.i64[1] = v22;
      v10.i64[0] = __PAIR64__(v20, v21);
    }

    else
    {
      ResolvedGradient.ColorSpace.convertIn(_:)(v24, v26[0].f32[0], v26[0].u32[1], v26[0].f32[2], v26[0].f32[3]);
      outlined destroy of _ShapeStyle_Pack.Fill(v26);
      v10 = v24[0];
    }

    v14.i64[0] = 0x4300000043000000;
    v14.i64[1] = 0x4300000043000000;
    v13 = vmulq_f32(v10, v14);
    v11 = v19;
LABEL_24:
    v24[0] = v13;
    LODWORD(v24[1]) = v11;
    v25 = 0;
    goto LABEL_25;
  }

  memset(v24, 0, sizeof(v24));
  v25 = 9;
  v23 = v24;
  (*(*v26[0].i64[0] + 152))(&v23, &unk_1F0071D30, &protocol witness table for _ShapeStyle_Pack.Fill.AnimatableData.PaintInitVisitor);
  outlined destroy of _ShapeStyle_Pack.Fill(v26);
LABEL_25:
  v15 = v24[3];
  *(a2 + 32) = v24[2];
  *(a2 + 48) = v15;
  *(a2 + 64) = v24[4];
  *(a2 + 80) = v25;
  result = *v24;
  v17 = v24[1];
  *a2 = v24[0];
  *(a2 + 16) = v17;
  return result;
}

uint64_t _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 16);
  v131 = *(v1 + 32);
  v132 = v3;
  v5 = *(v1 + 48);
  v133 = *(v1 + 64);
  v6 = *(v1 + 16);
  *v130 = *v1;
  *&v130[16] = v6;
  v7 = *(a1 + 48);
  v137 = *(a1 + 32);
  v138 = v7;
  *v139 = *(a1 + 64);
  v8 = *(a1 + 16);
  v135 = *a1;
  v136 = v8;
  v134 = *(v1 + 80);
  *&v139[14] = *(a1 + 78);
  v140[0] = v135;
  v140[1] = v8;
  *(&v141[1] + 6) = *(a1 + 78);
  v9 = *(a1 + 64);
  v140[3] = *(a1 + 48);
  *v141 = v9;
  v140[2] = *(a1 + 32);
  *&v141[7] = v131;
  *&v141[9] = v5;
  *&v141[11] = *(v1 + 64);
  v142 = *(v1 + 80);
  *&v141[5] = v4;
  *&v141[3] = *v130;
  v12 = v135;
  v11 = *&v12 >> 64;
  v10 = v12;
  v13 = v8;
  v14 = *(&v8 + 1);
  v15 = v137;
  v16 = DWORD1(v137);
  v17 = BYTE8(v137);
  v18 = BYTE9(v137);
  v19 = *(a1 + 42);
  v20 = *(a1 + 58);
  *(v144 + 11) = *(a1 + 69);
  v143 = v19;
  v144[0] = v20;
  v21 = HIDWORD(v135.i64[0]);
  if (v139[21] <= 1u)
  {
    if (!v139[21])
    {
      v56 = *v130;
      v57 = *&v130[4];
      v58 = *&v130[8];
      v59 = *&v130[12];
      v60 = *&v130[16];
      if (v134)
      {
        if (v134 != 9 || (v61 = vorrq_s8(v132, v133), *&vorr_s8(*v61.i8, *&vextq_s8(v61, v61, 8uLL)) | *(&v131 + 1) | v131 | *&v130[24] | *v130 | (((*&v130[12] | *&v130[20]) | *&v130[4]) << 32) | (*&v130[8] | *&v130[16])))
        {
LABEL_23:
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
          return outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        }

        outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        v96 = *(a1 + 48);
        v112 = *(a1 + 32);
        v113 = v96;
        *v114 = *(a1 + 64);
        *&v114[14] = *(a1 + 78);
        v97 = *(a1 + 16);
        v110 = *a1;
        v111 = v97;
        result = outlined destroy of _ShapeStyle_Pack.Fill(&v110);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 2143289344;
        *(a1 + 85) = 0;
      }

      else
      {
        v74 = *(a1 + 48);
        v112 = *(a1 + 32);
        v113 = v74;
        *v114 = *(a1 + 64);
        *&v114[14] = *(a1 + 78);
        v75 = *(a1 + 16);
        v110 = *a1;
        v111 = v75;
        outlined destroy of _ShapeStyle_Pack.Fill(&v110);
        *v103 = v10;
        *&v103[4] = v21;
        *&v103[8] = v11;
        v123.i64[0] = __PAIR64__(v57, v56);
        v123.i64[1] = __PAIR64__(v59, v58);
        LODWORD(v124) = v60;
        Color.ResolvedHDR.animatableData.setter(&v123);
        result = outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        *a1 = *v103;
        *(a1 + 16) = v13;
        *(a1 + 85) = 0;
      }

      return result;
    }

    if (v139[21] != 1)
    {
      goto LABEL_28;
    }

    v32 = *v130;
    v33 = *&v130[20];
    v34 = *&v130[16];
    v35 = *&v130[28];
    v36 = *&v130[24];
    v37 = v131;
    if (v134 > 4u)
    {
      if (v134 != 5)
      {
        if (v134 != 6)
        {
          if (v134 == 7)
          {
            v62 = *(a1 + 48);
            v120 = *(a1 + 32);
            v121 = v62;
            v122[0] = *(a1 + 64);
            *(v122 + 14) = *(a1 + 78);
            v63 = *(a1 + 16);
            v118 = *a1;
            v119 = v63;
            outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
            outlined init with copy of _ShapeStyle_Pack.Fill(&v135, &v110);
            outlined destroy of _ShapeStyle_Pack.Fill(&v118);
            *&v103[16] = 0;
            *v103 = v32;
            *&v103[24] = 2143289344;
            v103[93] = 0;
            v65 = *(*v10 + 152);
            type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>(0, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>, lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader, &type metadata for Shader.ResolvedShader, type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor);
            v67 = v66;

            v65(v103, v67, &protocol witness table for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<A>);
            outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
            v125 = *&v103[40];
            v126 = *&v103[56];
            v127[0] = *&v103[72];
            *(v127 + 14) = *&v103[86];
            v123 = *&v103[8];
            v124 = *&v103[24];
            v112 = *&v103[32];
            v113 = *&v103[48];
            *v114 = *&v103[64];
            *&v114[14] = *&v103[78];
            v110 = *v103;
            v111 = *&v103[16];
            outlined init with copy of _ShapeStyle_Pack.Fill(&v123, &v116);
            result = outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<LinearGradient._Paint>(&v110, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>, lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader, &type metadata for Shader.ResolvedShader);
            v68 = v126;
            *(a1 + 32) = v125;
            *(a1 + 48) = v68;
            *(a1 + 64) = v127[0];
            *(a1 + 78) = *(v127 + 14);
            v69 = v124;
            *a1 = v123;
            *(a1 + 16) = v69;
            return result;
          }

          goto LABEL_28;
        }

        v87 = *(a1 + 48);
        v120 = *(a1 + 32);
        v121 = v87;
        v122[0] = *(a1 + 64);
        *(v122 + 14) = *(a1 + 78);
        v88 = *(a1 + 16);
        v118 = *a1;
        v119 = v88;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v135, &v110);
        outlined destroy of _ShapeStyle_Pack.Fill(&v118);
        *v103 = v32;
        *&v103[16] = __PAIR128__(__PAIR64__(v35, v36), __PAIR64__(v33, v34));
        *&v103[32] = v37;
        *&v103[40] = 0;
        *&v103[48] = 0;
        *&v103[56] = 2143289344;
        v103[125] = 0;
        v90 = *(*v10 + 152);
        type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>(0, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint, &type metadata for MeshGradient._Paint, type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor);
        v92 = v91;

        v90(v103, v92, &protocol witness table for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<A>);
        outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        v125 = *&v103[72];
        v126 = *&v103[88];
        v127[0] = *&v103[104];
        *(v127 + 14) = *&v103[118];
        v123 = *&v103[40];
        v124 = *&v103[56];
        v110 = *v103;
        v111 = *&v103[16];
        v112 = *&v103[32];
        v113 = *&v103[48];
        *&v115[14] = *&v103[110];
        *&v114[16] = *&v103[80];
        *v115 = *&v103[96];
        *v114 = *&v103[64];
        outlined init with copy of _ShapeStyle_Pack.Fill(&v123, &v116);
        result = outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<LinearGradient._Paint>(&v110, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint, &type metadata for MeshGradient._Paint);
        v93 = v126;
        *(a1 + 32) = v125;
        *(a1 + 48) = v93;
        *(a1 + 64) = v127[0];
        *(a1 + 78) = *(v127 + 14);
        v94 = v124;
        *a1 = v123;
        *(a1 + 16) = v94;
        return result;
      }

      v79 = *(a1 + 48);
      v120 = *(a1 + 32);
      v121 = v79;
      v122[0] = *(a1 + 64);
      *(v122 + 14) = *(a1 + 78);
      v80 = *(a1 + 16);
      v118 = *a1;
      v119 = v80;
      v40 = a1;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
      outlined init with copy of _ShapeStyle_Pack.Fill(&v135, &v110);
      outlined destroy of _ShapeStyle_Pack.Fill(&v118);
      *v103 = v32;
      *&v103[16] = __PAIR128__(__PAIR64__(v35, v36), __PAIR64__(v33, v34));
      *&v103[32] = v37;
      *&v103[36] = *(v2 + 36);
      *&v103[52] = *(v2 + 52);
      *&v103[56] = 0uLL;
      *&v103[72] = 2143289344;
      v103[141] = 0;
      v41 = *(*v10 + 152);
      v106 = v131;
      v107 = v132;
      v108 = v133;
      v109 = v134;
      v104 = *v130;
      v105 = *&v130[16];
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v104, &v110, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
      v42 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<AngularGradient._Paint>;
      v43 = &type metadata for AngularGradient._Paint;
      v44 = lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint;
    }

    else
    {
      switch(v134)
      {
        case 2u:
          v77 = *(a1 + 48);
          v120 = *(a1 + 32);
          v121 = v77;
          v122[0] = *(a1 + 64);
          *(v122 + 14) = *(a1 + 78);
          v78 = *(a1 + 16);
          v118 = *a1;
          v119 = v78;
          v40 = a1;
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
          outlined init with copy of _ShapeStyle_Pack.Fill(&v135, &v110);
          outlined destroy of _ShapeStyle_Pack.Fill(&v118);
          *v103 = v32;
          *&v103[16] = __PAIR128__(__PAIR64__(v35, v36), __PAIR64__(v33, v34));
          *&v103[32] = v37;
          *&v103[36] = *(v2 + 36);
          *&v103[41] = *(v2 + 41);
          *&v103[56] = 0uLL;
          *&v103[72] = 2143289344;
          v103[141] = 0;
          v41 = *(*v10 + 152);
          v106 = v131;
          v107 = v132;
          v108 = v133;
          v109 = v134;
          v104 = *v130;
          v105 = *&v130[16];
          outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v104, &v110, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
          v42 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<LinearGradient._Paint>;
          v43 = &type metadata for LinearGradient._Paint;
          v44 = lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint;
          break;
        case 3u:
          v81 = *(a1 + 48);
          v120 = *(a1 + 32);
          v121 = v81;
          v122[0] = *(a1 + 64);
          *(v122 + 14) = *(a1 + 78);
          v82 = *(a1 + 16);
          v118 = *a1;
          v119 = v82;
          v40 = a1;
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
          outlined init with copy of _ShapeStyle_Pack.Fill(&v135, &v110);
          outlined destroy of _ShapeStyle_Pack.Fill(&v118);
          *v103 = v32;
          *&v103[16] = __PAIR128__(__PAIR64__(v35, v36), __PAIR64__(v33, v34));
          *&v103[32] = v37;
          *&v103[36] = *(v2 + 36);
          *&v103[52] = *(v2 + 52);
          *&v103[56] = 0uLL;
          *&v103[72] = 2143289344;
          v103[141] = 0;
          v41 = *(*v10 + 152);
          v106 = v131;
          v107 = v132;
          v108 = v133;
          v109 = v134;
          v104 = *v130;
          v105 = *&v130[16];
          outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v104, &v110, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
          v42 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<RadialGradient._Paint>;
          v43 = &type metadata for RadialGradient._Paint;
          v44 = lazy protocol witness table accessor for type RadialGradient._Paint and conformance RadialGradient._Paint;
          break;
        case 4u:
          v38 = *(a1 + 48);
          v120 = *(a1 + 32);
          v121 = v38;
          v122[0] = *(a1 + 64);
          *(v122 + 14) = *(a1 + 78);
          v39 = *(a1 + 16);
          v118 = *a1;
          v119 = v39;
          v40 = a1;
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
          outlined init with copy of _ShapeStyle_Pack.Fill(&v135, &v110);
          outlined destroy of _ShapeStyle_Pack.Fill(&v118);
          *v103 = v32;
          *&v103[16] = __PAIR128__(__PAIR64__(v35, v36), __PAIR64__(v33, v34));
          *&v103[32] = v37;
          *&v103[36] = *(v2 + 36);
          *&v103[52] = *(v2 + 52);
          *&v103[56] = 0uLL;
          *&v103[72] = 2143289344;
          v103[141] = 0;
          v41 = *(*v10 + 152);
          v106 = v131;
          v107 = v132;
          v108 = v133;
          v109 = v134;
          v104 = *v130;
          v105 = *&v130[16];
          outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v104, &v110, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
          v42 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<EllipticalGradient._Paint>;
          v43 = &type metadata for EllipticalGradient._Paint;
          v44 = lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint;
          break;
        default:
          goto LABEL_28;
      }
    }

    v83 = v44;
    type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>(0, v42, v44, v43, type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor);
    v41(v103, v84, &protocol witness table for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<A>);
    outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    v125 = *&v103[88];
    v126 = *&v103[104];
    v127[0] = *&v103[120];
    *(v127 + 14) = *&v103[134];
    v123 = *&v103[56];
    v124 = *&v103[72];
    v112 = *&v103[32];
    v113 = *&v103[48];
    v110 = *v103;
    v111 = *&v103[16];
    *&v115[30] = *&v103[126];
    *v115 = *&v103[96];
    *&v115[16] = *&v103[112];
    *v114 = *&v103[64];
    *&v114[16] = *&v103[80];
    outlined init with copy of _ShapeStyle_Pack.Fill(&v123, &v116);
    result = outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<LinearGradient._Paint>(&v110, v42, v83, v43);
    v85 = v126;
    *(v40 + 32) = v125;
    *(v40 + 48) = v85;
    *(v40 + 64) = v127[0];
    *(v40 + 78) = *(v127 + 14);
    v86 = v124;
    *v40 = v123;
    *(v40 + 16) = v86;
    return result;
  }

  if (v139[21] != 2)
  {
    if (v139[21] == 4)
    {
      if (v134 == 1)
      {
        v51.i64[0] = 0x3C0000003C000000;
        v51.i64[1] = 0x3C0000003C000000;
        v101 = vmulq_f32(*v130, v51);
        v52 = vmul_f32(*&v130[16], 0x3C0000003C000000);
        outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        v54 = *(a1 + 48);
        v112 = *(a1 + 32);
        v113 = v54;
        *v114 = *(a1 + 64);
        *&v114[14] = *(a1 + 78);
        v55 = *(a1 + 16);
        v110 = *a1;
        v111 = v55;
        result = outlined destroy of _ShapeStyle_Pack.Fill(&v110);
        *a1 = v101;
        *(a1 + 16) = v52;
        *(a1 + 85) = 4;
        return result;
      }

      goto LABEL_23;
    }

    if (v139[21] == 5)
    {
      if (v134 == 8)
      {
        v22 = WORD4(v131);
        v23 = DWORD1(v131);
        v24 = v131;
        v25 = *&v130[24];
        v26 = *v130;
        v100 = *&v130[8];
        outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        v28 = *(a1 + 48);
        v112 = *(a1 + 32);
        v113 = v28;
        *v114 = *(a1 + 64);
        *&v114[14] = *(a1 + 78);
        v29 = *(a1 + 16);
        v110 = *a1;
        v111 = v29;
        result = outlined destroy of _ShapeStyle_Pack.Fill(&v110);
        v128 = *(v2 + 42);
        v129[0] = v144[0];
        *(v129 + 11) = *(v144 + 11);
        v129[0] = *(v2 + 58);
        *(v129 + 14) = *(v2 + 72);
        *a1 = v26;
        *(a1 + 8) = v100;
        *(a1 + 24) = v25;
        *(a1 + 32) = v24;
        *(a1 + 33) = *(v2 + 33);
        *(a1 + 35) = *(v2 + 35);
        *(a1 + 36) = v23;
        *(a1 + 40) = v22;
        *(a1 + 69) = *(v129 + 11);
        v31 = v128;
        *(a1 + 58) = v129[0];
        *(a1 + 42) = v31;
        *(a1 + 85) = 5;
        return result;
      }

      goto LABEL_23;
    }

LABEL_28:
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v135, &v110);
    return outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
  }

  v45 = *v130;
  if (v134)
  {
    if (v134 != 9)
    {
      goto LABEL_28;
    }

    v46 = vorrq_s8(v132, v133);
    if (*&vorr_s8(*v46.i8, *&vextq_s8(v46, v46, 8uLL)) | *(&v131 + 1) | v131 | *&v130[24] | *v130 | (((*&v130[12] | *&v130[20]) | *&v130[4]) << 32) | (*&v130[8] | *&v130[16]))
    {
      goto LABEL_28;
    }

    v47 = *(a1 + 48);
    *&v103[32] = *(a1 + 32);
    *&v103[48] = v47;
    *&v103[64] = *(a1 + 64);
    v48 = *&v103[64];
    *&v103[78] = *(a1 + 78);
    v49 = *(a1 + 16);
    *v103 = *a1;
    *&v103[16] = v49;
    v113 = v47;
    *v114 = v48;
    v111 = v49;
    v112 = *&v103[32];
    *&v114[14] = *&v103[78];
    v110 = *v103;
    v50 = a1;
    outlined init with copy of (Color.ResolvedHDR, ContentStyle.MaterialStyle)(&v110, &v123);
    outlined destroy of _ShapeStyle_Pack.Fill(v103);
    outlined copy of Material.ID(v14, v15);
    result = outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    *v50 = 0;
    *(v50 + 8) = 0;
    *(v50 + 16) = 2143289344;
  }

  else
  {
    v70 = *(a1 + 48);
    v125 = *(a1 + 32);
    v126 = v70;
    v127[0] = *(a1 + 64);
    v71 = v127[0];
    *(v127 + 14) = *(a1 + 78);
    v72 = *(a1 + 16);
    v123 = *a1;
    v124 = v72;
    *&v103[48] = v70;
    *&v103[64] = v71;
    *&v103[16] = v72;
    *&v103[32] = v125;
    *&v103[78] = *(v127 + 14);
    *v103 = v123;
    v50 = a1;
    v98 = *&v130[4];
    v99 = *&v130[12];
    v102 = *&v130[16];
    outlined init with copy of (Color.ResolvedHDR, ContentStyle.MaterialStyle)(v103, &v110);
    outlined destroy of _ShapeStyle_Pack.Fill(&v123);
    *&v116 = __PAIR64__(v21, v10);
    *(&v116 + 1) = v11;
    v117 = v13;
    v104.i32[0] = v45;
    *(v104.i64 + 4) = v98;
    v104.i32[3] = v99;
    LODWORD(v105) = v102;
    v112 = v137;
    v113 = v138;
    *v114 = *v139;
    *&v114[14] = *&v139[14];
    v110 = v135;
    v111 = v136;
    outlined init with copy of (Color.ResolvedHDR, ContentStyle.MaterialStyle)(&v110, &v118);
    Color.ResolvedHDR.animatableData.setter(&v104);
    result = outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    v73 = v117;
    *v50 = v116;
    *(v50 + 16) = v73;
  }

  *(v50 + 24) = v14;
  *(v50 + 32) = v15;
  *(v50 + 36) = v16;
  *(v50 + 40) = v17;
  *(v50 + 41) = v18;
  *(v50 + 85) = 2;
  return result;
}

uint64_t _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor.visitPaint<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v39 = a2;
  v38 = v4;
  v37 = *(v4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v34 - v6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v34 - v21;
  (*(v23 + 16))(v14, v41, a3, v20);
  if (swift_dynamicCast())
  {
    (*(v15 + 56))(v11, 0, 1, v5);
    (*(v15 + 32))(v22, v11, v5);
    v24 = v40;
    (*(v35 + 16))(v7, v40, AssociatedTypeWitness);
    v25 = v24;
    (*(v37 + 32))(v7, v5);
    type metadata accessor for _AnyResolvedPaint(0, v5, v38, v26);
    (*(v15 + 16))(v18, v22, v5);
    v27 = _AnyResolvedPaint.__allocating_init(_:)(v18);
    (*(v15 + 8))(v22, v5);
    v28 = v25 + *(v39 + 36);
    v29 = *(v28 + 48);
    v46[2] = *(v28 + 32);
    v46[3] = v29;
    v47[0] = *(v28 + 64);
    *(v47 + 14) = *(v28 + 78);
    v30 = *(v28 + 16);
    v46[0] = *v28;
    v46[1] = v30;
    result = outlined destroy of _ShapeStyle_Pack.Fill(v46);
    *v28 = v27;
    v32 = v42;
    *(v28 + 24) = v43;
    v33 = v45[0];
    *(v28 + 40) = v44;
    *(v28 + 56) = v33;
    *(v28 + 69) = *(v45 + 13);
    *(v28 + 8) = v32;
    *(v28 + 85) = 1;
  }

  else
  {
    (*(v15 + 56))(v11, 1, 1, v5);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

void _ShapeStyle_Pack.Fill.AnimatableData.negate()()
{
  v1 = v0[1];
  v87 = *v0;
  v88 = v1;
  v2 = v0[3];
  v89 = v0[2];
  v90 = v2;
  v91 = v0[4];
  v92 = *(v0 + 80);
  v3 = v87;
  v5 = *(&v89 + 1);
  v4 = v89;
  v6 = *&v2;
  v7 = *(v0 + 56);
  v94 = *(v0 + 9);
  v93 = v7;
  v8 = BYTE8(v88);
  if (v92 <= 4u)
  {
    if (v92 <= 1u)
    {
      if (!v92)
      {
        if (one-time initialization token for legacyInterpolation != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if ((static Color.Resolved.legacyInterpolation & 1) == 0)
        {
          LOBYTE(v66) = 2;
          ResolvedGradient.ColorSpace.convertIn(_:)(&v72, 0.0, 0, 0.0, 0.0);
        }
      }
    }

    else
    {
      v51 = *(&v88 + 1);
      v49 = v88;
      if (v92 == 2)
      {
        v26 = v90;
        v27 = v0[3];
        v74 = v0[2];
        v75 = v27;
        v76 = v0[4];
        v77 = *(v0 + 80);
        v28 = v0[1];
        v72 = *v0;
        v73 = v28;
        v84 = v27;
        v85 = v76;
        v82 = v28;
        v83 = v74;
        v86 = v77;
        v81 = v72;
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v81, &v66, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v72);
        v65 = 1;
        v66 = 0u;
        v67 = 0u;
        v68 = MEMORY[0x1E69E7CC0];
        v69 = 0;
        v70 = 0;
        v71 = 1;
        v61 = MEMORY[0x1E69E7CC0];
        v62 = 0;
        v63 = 0;
        v64 = 1;
        v57 = v4;
        v58 = LOBYTE(v5);
        v59 = HIDWORD(v5);
        v60 = v26 & 1;
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v66, &v53, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
        ResolvedGradientVector.add(_:scaledBy:)(&v57, -1.0);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v87);
        outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v66, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
        v29 = v61;
        v30 = v62;
        v31 = v63;
        v32 = v64;
        LOBYTE(v53) = v64;
        *v0 = 0.0 - *&v3;
        *(v0 + 1) = 0.0 - *(&v3 + 1);
        *(v0 + 2) = 0.0 - COERCE_DOUBLE(v49 | (HIDWORD(v49) << 32));
        *(v0 + 3) = 0.0 - v51;
        *(v0 + 4) = v29;
        *(v0 + 40) = v30;
        *(v0 + 11) = v31;
        *(v0 + 48) = v32;
        *(v0 + 80) = 2;
      }

      else
      {
        v9 = v0[3];
        v74 = v0[2];
        v75 = v9;
        v76 = v0[4];
        v77 = *(v0 + 80);
        v10 = v0[1];
        v72 = *v0;
        v73 = v10;
        v84 = v9;
        v85 = v76;
        v82 = v10;
        v83 = v74;
        v86 = v77;
        v81 = v72;
        if (v92 == 3)
        {
          outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v81, &v66, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v72);
          *&v66 = MEMORY[0x1E69E7CC0];
          BYTE8(v66) = 0;
          HIDWORD(v66) = 0;
          LOBYTE(v67) = 1;
          v53 = (v49 | (HIDWORD(v49) << 32));
          v54 = v8;
          v55 = HIDWORD(v51);
          v56 = v4 & 1;

          ResolvedGradientVector.add(_:scaledBy:)(&v53, -1.0);
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v87);

          v11 = v66;
          v12 = BYTE8(v66);
          v13 = HIDWORD(v66);
          v14 = v67;
          LOBYTE(v66) = v67;
          *v0 = 0.0 - *&v3;
          *(v0 + 1) = 0.0 - *(&v3 + 1);
          *(v0 + 2) = v11;
          *(v0 + 24) = v12;
          *(v0 + 7) = v13;
          *(v0 + 32) = v14;
          *(v0 + 5) = 0.0 - v5;
          *(v0 + 6) = 0.0 - v6;
          *(v0 + 80) = 3;
        }

        else
        {
          outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v81, &v66, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v72);
          *&v66 = MEMORY[0x1E69E7CC0];
          BYTE8(v66) = 0;
          HIDWORD(v66) = 0;
          LOBYTE(v67) = 1;
          v53 = (v49 | (HIDWORD(v49) << 32));
          v54 = v8;
          v55 = HIDWORD(v51);
          v56 = v4 & 1;

          ResolvedGradientVector.add(_:scaledBy:)(&v53, -1.0);
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v87);

          v36 = v66;
          v37 = BYTE8(v66);
          v38 = HIDWORD(v66);
          v39 = v67;
          LOBYTE(v66) = v67;
          *v0 = 0.0 - *&v3;
          *(v0 + 1) = 0.0 - *(&v3 + 1);
          *(v0 + 2) = v36;
          *(v0 + 24) = v37;
          *(v0 + 7) = v38;
          *(v0 + 32) = v39;
          *(v0 + 5) = 0.0 - v5;
          *(v0 + 6) = 0.0 - v6;
          *(v0 + 80) = 4;
        }
      }
    }

    return;
  }

  if (v92 <= 6u)
  {
    v52 = *(&v88 + 8);
    v50 = v88;
    if (v92 == 5)
    {
      v20 = v0[3];
      v74 = v0[2];
      v75 = v20;
      v76 = v0[4];
      v77 = *(v0 + 80);
      v21 = v0[1];
      v72 = *v0;
      v73 = v21;
      v84 = v20;
      v85 = v76;
      v82 = v21;
      v83 = v74;
      v86 = v77;
      v81 = v72;
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v81, &v66, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v72);
      *&v66 = MEMORY[0x1E69E7CC0];
      BYTE8(v66) = 0;
      HIDWORD(v66) = 0;
      LOBYTE(v67) = 1;
      v53 = (v50.u32[0] | (v50.u32[1] << 32));
      v54 = v8;
      v55 = v52.i32[1];
      v56 = v4 & 1;

      ResolvedGradientVector.add(_:scaledBy:)(&v53, -1.0);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v87);

      v22 = v66;
      v23 = BYTE8(v66);
      v24 = HIDWORD(v66);
      v25 = v67;
      LOBYTE(v66) = v67;
      *v0 = 0.0 - *&v3;
      *(v0 + 1) = 0.0 - *(&v3 + 1);
      *(v0 + 2) = v22;
      *(v0 + 24) = v23;
      *(v0 + 7) = v24;
      *(v0 + 32) = v25;
      *(v0 + 5) = 0.0 - v5;
      *(v0 + 6) = 0.0 - v6;
      *(v0 + 80) = 5;
      return;
    }

    v40 = v0[3];
    v83 = v0[2];
    v84 = v40;
    v85 = v0[4];
    v86 = *(v0 + 80);
    v41 = v0[1];
    v81 = *v0;
    v82 = v41;

    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v81);
    if (one-time initialization token for legacyInterpolation != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v42 = 0;
    v43 = 0;
    if ((static Color.Resolved.legacyInterpolation & 1) == 0)
    {
      LOBYTE(v53) = 2;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v66, 0.0, 0, 0.0, 0.0);
      v42 = vmul_f32(*&v66, 0x4300000043000000);
      v43 = vmul_f32(*(&v66 + 8), 0x4300000043000000);
    }

    v44 = MEMORY[0x1E69E7CC0];
    *&v66 = MEMORY[0x1E69E7CC0];

    _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZSf_Tt1B5(&v66, v3);
    v53 = v44;

    _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&v53, *(&v3 + 1));
    swift_bridgeObjectRelease_n();
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v87);
    v45 = vsub_f32(v42, v50);
    v46 = vsub_f32(v43, v52);
    v47 = v53;
    v48 = 0.0;
    if (*&v4 >= 0.0)
    {
      v48 = *&v4;
    }

    *v0 = v66;
    *(v0 + 1) = v47;
    *(v0 + 2) = v45;
    *(v0 + 3) = v46;
    *(v0 + 8) = v48;
    v35 = 6;
    goto LABEL_27;
  }

  if (v92 == 7)
  {
    v33 = v0[3];
    v83 = v0[2];
    v84 = v33;
    v85 = v0[4];
    v86 = *(v0 + 80);
    v34 = v0[1];
    v81 = *v0;
    v82 = v34;

    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v81);
    *&v72 = MEMORY[0x1E69E7CC0];
    *&v66 = v3;
    specialized static ShaderVectorData.-= infix(_:_:)(&v72, &v66);
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v87);
    *v0 = v72;
    v35 = 7;
LABEL_27:
    *(v0 + 80) = v35;
    return;
  }

  if (v92 == 8)
  {
    v15 = v88;
    v16 = v0[3];
    v83 = v0[2];
    v84 = v16;
    v85 = v0[4];
    v86 = *(v0 + 80);
    v17 = v0[1];
    v81 = *v0;
    v82 = v17;
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v81);
    v78 = v3;
    v79 = v15;
    *v80 = v6;
    *&v80[8] = v93;
    *&v80[24] = v94;
    _ColorMatrix.negate()();
    v18 = *v80;
    v0[2] = __PAIR128__(*&v5, v4);
    v0[3] = v18;
    v0[4] = *&v80[16];
    v19 = v79;
    *v0 = v78;
    v0[1] = v19;
    *(v0 + 80) = 8;
  }
}

uint64_t static _ShapeStyle_Pack.Fill.AnimatableData.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, _OWORD *)@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = v6;
  v8 = *(a1 + 48);
  v21 = *(a1 + 64);
  v9 = *(a1 + 16);
  v18[0] = *a1;
  v10 = v18[0];
  v18[1] = v9;
  v11 = *(a2 + 32);
  v12 = *(a2 + 64);
  v16[3] = *(a2 + 48);
  v16[4] = v12;
  v13 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v13;
  v16[2] = v11;
  *(a4 + 32) = v19;
  *(a4 + 48) = v8;
  *(a4 + 64) = *(a1 + 64);
  v22 = *(a1 + 80);
  v17 = *(a2 + 80);
  *(a4 + 80) = *(a1 + 80);
  *a4 = v10;
  *(a4 + 16) = v7;
  outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v18, v15);
  return a3(a4, v16);
}

Swift::Void __swiftcall _ShapeStyle_Pack.Fill.AnimatableData.scale(by:)(Swift::Double by)
{
  if (by != 1.0)
  {
    v3 = *v1;
    v2 = *(v1 + 1);
    v4 = *(v1 + 2);
    v5 = *(v1 + 3);
    v6 = *(v1 + 8);
    v7 = *(v1 + 9);
    v9 = *(v1 + 5);
    v8 = *(v1 + 6);
    v10 = *(v1 + 80);
    v11 = HIDWORD(*v1);
    v12 = *(v1 + 56);
    v85 = *(v1 + 9);
    v13 = LODWORD(v4);
    v14 = HIDWORD(*&v4);
    v84 = v12;
    if (v10 <= 4)
    {
      if (v10 <= 1)
      {
        v32 = v1[3];
        v81 = v1[2];
        *v82 = v32;
        *&v82[16] = v1[4];
        v83 = *(v1 + 80);
        v33 = v1[1];
        v79 = *v1;
        v80 = v33;
        if (v10)
        {
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v79);
          v45 = by;
          v46.i64[0] = __PAIR64__(LODWORD(v2), v11);
          v46.i64[1] = __PAIR64__(v13, HIDWORD(v2));
          *v1 = v45 * *&v3;
          *(v1 + 4) = vmulq_n_f32(v46, v45);
          *(v1 + 5) = *&v14 * v45;
          *(v1 + 80) = 1;
        }

        else
        {
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v79);
          v34 = by;
          *v1 = v34 * *&v3;
          *(v1 + 1) = v34 * *&v11;
          *(v1 + 2) = v34 * *&v2;
          *(v1 + 3) = v34 * *(&v2 + 1);
          *(v1 + 4) = v13;
          *(v1 + 80) = 0;
        }

        return;
      }

      v51 = v4;
      if (v10 == 2)
      {
        v38 = v1[3];
        v68 = v1[2];
        v69 = v38;
        v70 = v1[4];
        v71 = *(v1 + 80);
        v39 = v1[1];
        v66 = *v1;
        v67 = v39;
        *&v79 = v3;
        *(&v79 + 1) = v2;
        *&v80 = v4;
        *(&v80 + 1) = v5;
        *&v81 = __PAIR64__(v7, v6);
        *(&v81 + 1) = v9;
        *v82 = v8;
        *&v82[8] = *(v1 + 56);
        *&v82[24] = *(v1 + 9);
        v83 = 2;
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v79, v72, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v66);
        *&v56 = __PAIR64__(v7, v6);
        *(&v56 + 1) = v9;
        *&v54 = v3 * by;
        *(&v54 + 1) = v2 * by;
        *&v55 = v51 * by;
        *(&v55 + 1) = v5 * by;
        ResolvedGradientVector.scale(by:)(by);
        LOBYTE(v73) = LOBYTE(v8);
        v72[0] = v54;
        v41 = v74;
        v1[3] = v73;
        v1[4] = v41;
        *v1 = v54;
        v1[1] = v55;
        v1[2] = v56;
        *(v1 + 80) = 2;
        return;
      }

      v16 = v1[3];
      v68 = v1[2];
      v69 = v16;
      v70 = v1[4];
      v71 = *(v1 + 80);
      v17 = v1[1];
      v66 = *v1;
      v67 = v17;
      *&v79 = v3;
      *(&v79 + 1) = v2;
      *&v80 = v4;
      *(&v80 + 1) = v5;
      *&v81 = __PAIR64__(v7, v6);
      *(&v81 + 1) = v9;
      *v82 = v8;
      *&v82[8] = *(v1 + 56);
      *&v82[24] = *(v1 + 9);
      if (v10 == 3)
      {
        v18 = 3;
        v83 = 3;
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v79, v72, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v66);
        *&v58 = v51;
        *(&v58 + 1) = v5;
        *&v59 = __PAIR64__(v7, v6);
        *&v57 = v3 * by;
        *(&v57 + 1) = v2 * by;
        v19 = v1;
        ResolvedGradientVector.scale(by:)(by);
        *(&v59 + 1) = v9 * by;
        *&v73 = v8 * by;
        v20 = v57;
        v21 = v58;
        v72[0] = v57;
        v22 = v73;
        v1[4] = v74;
        v23 = v59;
      }

      else
      {
        v18 = 4;
        v83 = 4;
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v79, v72, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v66);
        *&v61 = v51;
        *(&v61 + 1) = v5;
        *&v62 = __PAIR64__(v7, v6);
        *&v60 = v3 * by;
        *(&v60 + 1) = v2 * by;
        v19 = v1;
        ResolvedGradientVector.scale(by:)(by);
        *(&v62 + 1) = v9 * by;
        *&v73 = v8 * by;
        v20 = v60;
        v21 = v61;
        v72[0] = v60;
        v22 = v73;
        v1[4] = v74;
        v23 = v62;
      }

LABEL_19:
      *v19 = v20;
      v19[1] = v21;
      v19[2] = v23;
      v19[3] = v22;
      *(v19 + 80) = v18;
      return;
    }

    if (v10 <= 6)
    {
      v53 = *&v4;
      if (v10 == 5)
      {
        v36 = v1[3];
        v68 = v1[2];
        v69 = v36;
        v70 = v1[4];
        v71 = *(v1 + 80);
        v37 = v1[1];
        v66 = *v1;
        v67 = v37;
        *&v79 = v3;
        *(&v79 + 1) = v2;
        *&v80 = v4;
        *(&v80 + 1) = v5;
        *&v81 = __PAIR64__(v7, v6);
        *(&v81 + 1) = v9;
        *v82 = v8;
        *&v82[8] = *(v1 + 56);
        *&v82[24] = *(v1 + 9);
        v18 = 5;
        v83 = 5;
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v79, v72, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v66);
        *&v64 = v53;
        *(&v64 + 1) = v5;
        *&v65 = __PAIR64__(v7, v6);
        *&v63 = v3 * by;
        *(&v63 + 1) = v2 * by;
        v19 = v1;
        ResolvedGradientVector.scale(by:)(by);
        *(&v65 + 1) = v9 * by;
        *&v73 = v8 * by;
        v20 = v63;
        v21 = v64;
        v72[0] = v63;
        v22 = v73;
        v1[4] = v74;
        v23 = v65;
        goto LABEL_19;
      }

      v47 = v1[3];
      v81 = v1[2];
      *v82 = v47;
      *&v82[16] = v1[4];
      v83 = *(v1 + 80);
      v48 = v1[1];
      v79 = *v1;
      v80 = v48;

      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v79);
      *&v66 = v3;
      *(&v66 + 1) = v2;
      *&v67 = __PAIR64__(v14, v13);
      *(&v67 + 1) = v5;
      v27 = v1;
      specialized AnimatableArray.scale(by:)(by);
      specialized AnimatableArray.scale(by:)(by);
      v49 = by;
      v50.i64[0] = v53;
      *&v50.i64[1] = v5;
      *v1 = v66;
      v1[1] = vmulq_n_f32(v50, v49);
      *(v1 + 8) = v6;
      v30 = 6;
    }

    else if (v10 == 7)
    {
      v42 = v1[3];
      v81 = v1[2];
      *v82 = v42;
      *&v82[16] = v1[4];
      v83 = *(v1 + 80);
      v43 = v1[1];
      v79 = *v1;
      v80 = v43;

      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v79);
      v27 = v1;
      ShaderVectorData.scale(by:)(by);
      *v1 = v3;
      v30 = 7;
    }

    else
    {
      if (v10 != 8)
      {
        return;
      }

      v24 = v1[3];
      v81 = v1[2];
      *v82 = v24;
      *&v82[16] = v1[4];
      v83 = *(v1 + 80);
      v25 = v1[1];
      v79 = *v1;
      v80 = v25;
      v52 = v4;
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v79);
      *&v75 = __PAIR64__(v11, LODWORD(v3));
      *(&v75 + 1) = v2;
      *&v76 = v52;
      *(&v76 + 1) = v5;
      *&v77 = __PAIR64__(v7, v6);
      *(&v77 + 1) = v9;
      *v78 = v8;
      *&v78[8] = v84;
      *&v78[24] = v85;
      v27 = v1;
      _ColorMatrix.scale(by:)(by);
      v28 = *v78;
      v1[2] = v77;
      v1[3] = v28;
      v1[4] = *&v78[16];
      v29 = v76;
      *v1 = v75;
      v1[1] = v29;
      v30 = 8;
    }

    *(v27 + 80) = v30;
  }
}

void _ShapeStyle_Pack.Fill.AnimatableData.magnitudeSquared.getter()
{
  v1 = v0[1];
  v31 = *v0;
  v32 = v1;
  v2 = v0[3];
  v33 = v0[2];
  v34 = v2;
  v35 = v0[4];
  v36 = *(v0 + 80);
  if (v36 > 4u)
  {
    if (v36 > 6u)
    {
      if (v36 == 7)
      {
        *&v22[0] = v31;
        ShaderVectorData.magnitudeSquared.getter();
      }

      else if (v36 == 8)
      {
        v22[0] = v31;
        v22[1] = v32;
        v22[2] = v33;
        v23 = v34;
        v24 = *(v0 + 56);
        v25 = *(v0 + 9);
        _ColorMatrix.magnitudeSquared.getter();
      }

      return;
    }

    if (v36 == 5)
    {
LABEL_11:
      v26 = v31;
      v27 = v32;
      v28 = BYTE8(v32);
      v29 = HIDWORD(v32);
      v30 = v33 & 1;
      ResolvedGradientVector.magnitudeSquared.getter();
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v31, v22);

      return;
    }

    v8 = *(v31 + 16);
    if (v8)
    {
      if (v8 > 7)
      {
        v9 = v8 & 0x7FFFFFFFFFFFFFF8;
        v11 = (v31 + 48);
        v10 = 0.0;
        v12 = v8 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v13 = vmulq_f32(v11[-1], v11[-1]);
          v14 = vmulq_f32(*v11, *v11);
          v15 = vcvt_hight_f64_f32(v13);
          v16 = vcvtq_f64_f32(*v13.f32);
          v17 = vcvt_hight_f64_f32(v14);
          v18 = vcvtq_f64_f32(*v14.f32);
          v10 = v10 + v16.f64[0] + v16.f64[1] + v15.f64[0] + v15.f64[1] + v18.f64[0] + v18.f64[1] + v17.f64[0] + v17.f64[1];
          v11 += 2;
          v12 -= 8;
        }

        while (v12);
        if (v8 == v9)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0.0;
      }

      v19 = v8 - v9;
      v20 = (v31 + 4 * v9 + 32);
      do
      {
        v21 = *v20++;
        v10 = v10 + (v21 * v21);
        --v19;
      }

      while (v19);
    }

LABEL_27:
    specialized AnimatableArray.magnitudeSquared.getter(*(&v31 + 1));
    return;
  }

  if (v36 > 1u)
  {
    if (v36 != 2)
    {
      goto LABEL_11;
    }

    v3 = *(v33 + 16);
    if (v3)
    {
      v4 = (v33 + 40);
      v5 = 0.0;
      do
      {
        v6 = vmul_f32(v4[-1], v4[-1]);
        v7 = vmul_f32(*v4, *v4);
        v5 = v5 + vadd_f32(vadd_f32(vadd_f32(v6, vdup_lane_s32(v6, 1)), v7), vdup_lane_s32(v7, 1)).f32[0];
        v4 += 6;
        --v3;
      }

      while (v3);
    }
  }
}

double protocol witness for static AdditiveArithmetic.zero.getter in conformance _ShapeStyle_Pack.Fill.AnimatableData@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 9;
  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance _ShapeStyle_Pack.Fill.AnimatableData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, _OWORD *)@<X4>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = v6;
  v8 = *(a1 + 48);
  v21 = *(a1 + 64);
  v9 = *(a1 + 16);
  v18[0] = *a1;
  v10 = v18[0];
  v18[1] = v9;
  v11 = *(a2 + 32);
  v12 = *(a2 + 64);
  v16[3] = *(a2 + 48);
  v16[4] = v12;
  v13 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v13;
  v16[2] = v11;
  *(a4 + 32) = v19;
  *(a4 + 48) = v8;
  *(a4 + 64) = *(a1 + 64);
  v22 = *(a1 + 80);
  v17 = *(a2 + 80);
  *(a4 + 80) = *(a1 + 80);
  *a4 = v10;
  *(a4 + 16) = v7;
  outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v18, v15);
  return a3(a4, v16);
}

void (*_ShapeStyle_Pack.Fill.animatableData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x110uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 264) = v1;
  v5 = *(v1 + 16);
  *v3 = *v1;
  *(v3 + 16) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  *(v3 + 78) = *(v1 + 78);
  *(v3 + 48) = v7;
  *(v3 + 64) = v8;
  *(v3 + 32) = v6;
  v9 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v9;
  v13[0] = *(v1 + 64);
  *(v13 + 14) = *(v1 + 78);
  v10 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v10;
  outlined init with copy of _ShapeStyle_Pack.Fill(v3, v3 + 88);
  _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(v12, v4 + 176);
  return _ShapeStyle_Pack.Fill.animatableData.modify;
}

void _ShapeStyle_Pack.Fill.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 264);
  if (a2)
  {
    _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v3);
    v4 = *(v2 + 224);
    *(v2 + 120) = *(v2 + 208);
    *(v2 + 136) = v4;
    *(v2 + 152) = *(v2 + 240);
    *(v2 + 168) = *(v2 + 256);
    v5 = *(v2 + 192);
    *(v2 + 88) = *(v2 + 176);
    *(v2 + 104) = v5;
  }

  else
  {
    *(v2 + 120) = *(v2 + 208);
    *(v2 + 136) = *(v2 + 224);
    *(v2 + 152) = *(v2 + 240);
    v6 = *(v2 + 192);
    *(v2 + 88) = *(v2 + 176);
    *(v2 + 104) = v6;
    *(v2 + 168) = *(v2 + 256);
    _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v3);
  }

  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v2 + 88);

  free(v2);
}

double protocol witness for Animatable.animatableData.getter in conformance _ShapeStyle_Pack.Fill@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v8[3] = *(v1 + 48);
  v9[0] = v4;
  *(v9 + 14) = *(v1 + 78);
  v5 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v5;
  v8[2] = v3;
  outlined init with copy of _ShapeStyle_Pack.Fill(v8, v7);
  return _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(v1, a1);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance _ShapeStyle_Pack.Fill(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v1);
  return outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v5);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeStyle_Pack.Fill(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _ShapeStyle_Pack.Fill.animatableData.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

void _ShapeStyle_Pack.Effect.animatableData.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 53);
  v4 = *(v1 + 56);
  if (v3)
  {
    v5 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v8);
    v6 = v8[0];
    v7 = v8[1];
    v5 = v9;
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  *(a1 + 40) = v5;
  *(a1 + 48) = v3 & 1;
}

void key path getter for _ShapeStyle_Pack.Effect.animatableData : _ShapeStyle_Pack.Effect(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 53);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v8);
    v6 = v8[0];
    v7 = v8[1];
    v5 = v9;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 24) = v7;
  *(a2 + 40) = v5;
  *(a2 + 48) = v3 & 1;
}

void key path setter for _ShapeStyle_Pack.Effect.animatableData : _ShapeStyle_Pack.Effect(uint64_t result, __int128 *a2)
{
  v4 = *(result + 8);
  v3 = *(result + 16);
  v5 = *(result + 24);
  v6 = *(result + 40);
  v7 = *(result + 48);
  *(a2 + 14) = *result;
  if (*(a2 + 53) & 1) != 0 || (v7)
  {
    v8 = 1;
    LOBYTE(v12[0]) = 1;
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *(a2 + 45) = 0;
  }

  else
  {
    v12[0] = v4;
    v12[1] = v3;
    v13 = v5;
    v14 = v6;
    v9 = *a2;
    v10 = a2[1];
    *v11 = a2[2];
    *&v11[13] = *(a2 + 45);
    ResolvedShadowStyle.animatableData.setter(v12);
    v8 = 0;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = *v11;
    *(a2 + 45) = *&v11[13];
  }

  *(a2 + 53) = v8;
}

void _ShapeStyle_Pack.Effect.animatableData.setter(uint64_t result)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 40);
  v6 = *(result + 48);
  *(v1 + 14) = *result;
  if (*(v1 + 53) & 1) != 0 || (v6)
  {
    v7 = 1;
    LOBYTE(v11[0]) = 1;
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *(v1 + 45) = 0;
  }

  else
  {
    v11[0] = v3;
    v11[1] = v2;
    v12 = v4;
    v13 = v5;
    v8 = *v1;
    v9 = v1[1];
    *v10 = v1[2];
    *&v10[13] = *(v1 + 45);
    ResolvedShadowStyle.animatableData.setter(v11);
    v7 = 0;
    *v1 = v8;
    v1[1] = v9;
    v1[2] = *v10;
    *(v1 + 45) = *&v10[13];
  }

  *(v1 + 53) = v7;
}

void _ShapeStyle_Pack.Effect.Kind.animatableData.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 53);
  if (v3)
  {
    v4 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v7);
    v5 = v7[0];
    v6 = v7[1];
    v4 = v8;
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3 & 1;
}

void _ShapeStyle_Pack.Effect.Kind.animatableData.setter(uint64_t result)
{
  if (*(v1 + 53) & 1) != 0 || (*(result + 40))
  {
    v5 = 1;
    LOBYTE(v9[0]) = 1;
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *(v1 + 45) = 0;
  }

  else
  {
    v2 = *(result + 32);
    v3 = *(result + 8);
    v4 = HIDWORD(*result);
    v9[0] = *result;
    v9[1] = v4;
    v10 = v3;
    v11 = *(result + 16);
    v12 = v2;
    v6 = *v1;
    v7 = v1[1];
    *v8 = v1[2];
    *&v8[13] = *(v1 + 45);
    ResolvedShadowStyle.animatableData.setter(v9);
    v5 = 0;
    *v1 = v6;
    v1[1] = v7;
    v1[2] = *v8;
    *(v1 + 45) = *&v8[13];
  }

  *(v1 + 53) = v5;
}

uint64_t (*_ShapeStyle_Pack.Effect.animatableData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 176) = v1;
  v5 = *(v1 + 53);
  v6 = *(v1 + 56);
  if (v5)
  {
    v7 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v3 + 136);
    v8 = *(v4 + 136);
    v9 = *(v4 + 152);
    v7 = *(v4 + 168);
  }

  *v4 = v6;
  *(v4 + 8) = v8;
  *(v4 + 24) = v9;
  *(v4 + 40) = v7;
  *(v4 + 48) = v5 & 1;
  return _ShapeStyle_Pack.Effect.animatableData.modify;
}

void _ShapeStyle_Pack.Effect.animatableData.modify(_DWORD **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 22);
  v5 = *(*a1 + 1);
  v4 = *(*a1 + 2);
  v7 = *(*a1 + 3);
  v6 = *(*a1 + 4);
  v8 = *(*a1 + 5);
  v9 = *(*a1 + 48);
  *(v3 + 56) = **a1;
  v10 = *(v3 + 53) | v9;
  v11 = v2[22];
  if ((a2 & 1) == 0)
  {
    if ((v10 & 1) == 0)
    {
      v2[12] = v5;
      v2[13] = v4;
      v2[14] = v7;
      v2[15] = v6;
      v2[16] = v8;
      v17 = *v11;
      v18 = v11[1];
      *v19 = v11[2];
      *&v19[13] = *(v11 + 45);
      ResolvedShadowStyle.animatableData.setter((v2 + 12));
      v12 = 0;
      *v11 = v17;
      v11[1] = v18;
      v11[2] = *v19;
      v13 = *&v19[13];
      goto LABEL_7;
    }

LABEL_5:
    v12 = 1;
    *v11 = 0u;
    v11[1] = 0u;
    v11[2] = 0u;
    *(v11 + 45) = 0;
    goto LABEL_8;
  }

  if (v10)
  {
    goto LABEL_5;
  }

  v2[7] = v5;
  v2[8] = v4;
  v2[9] = v7;
  v2[10] = v6;
  v2[11] = v8;
  v14 = *v11;
  v15 = v11[1];
  *v16 = v11[2];
  *&v16[13] = *(v11 + 45);
  ResolvedShadowStyle.animatableData.setter((v2 + 7));
  v12 = 0;
  *v11 = v14;
  v11[1] = v15;
  v11[2] = *v16;
  v13 = *&v16[13];
LABEL_7:
  *(v11 + 45) = v13;
LABEL_8:
  *(v2[22] + 53) = v12;

  free(v2);
}

void protocol witness for Animatable.animatableData.getter in conformance _ShapeStyle_Pack.Effect(uint64_t a1@<X8>)
{
  v3 = *(v1 + 53);
  v4 = *(v1 + 56);
  if (v3)
  {
    v5 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v8);
    v6 = v8[0];
    v7 = v8[1];
    v5 = v9;
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  *(a1 + 40) = v5;
  *(a1 + 48) = v3 & 1;
}

void protocol witness for Animatable.animatableData.setter in conformance _ShapeStyle_Pack.Effect(uint64_t result)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 40);
  v6 = *(result + 48);
  *(v1 + 14) = *result;
  if (*(v1 + 53) & 1) != 0 || (v6)
  {
    v7 = 1;
    LOBYTE(v11[0]) = 1;
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *(v1 + 45) = 0;
  }

  else
  {
    v11[0] = v3;
    v11[1] = v2;
    v12 = v4;
    v13 = v5;
    v8 = *v1;
    v9 = v1[1];
    *v10 = v1[2];
    *&v10[13] = *(v1 + 45);
    ResolvedShadowStyle.animatableData.setter(v11);
    v7 = 0;
    *v1 = v8;
    v1[1] = v9;
    v1[2] = *v10;
    *(v1 + 45) = *&v10[13];
  }

  *(v1 + 53) = v7;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeStyle_Pack.Effect(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _ShapeStyle_Pack.Effect.animatableData.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

void _ShapeStyle_Pack.Effect.Kind.AnimatableData.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 53);
  if (v3)
  {
    v4 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v7);
    v5 = v7[0];
    v6 = v7[1];
    v4 = v8;
  }

  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  *(a2 + 40) = v3 & 1;
}

void _ShapeStyle_Pack.Effect.Kind.AnimatableData.set(effect:)(__int128 *result)
{
  if (*(result + 53) & 1) != 0 || (*(v1 + 40))
  {
    v6 = 1;
    LOBYTE(v10[0]) = 1;
    *result = 0u;
    result[1] = 0u;
    result[2] = 0u;
    *(result + 45) = 0;
  }

  else
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 8);
    v5 = HIDWORD(*v1);
    v10[0] = *v1;
    v10[1] = v5;
    v11 = v4;
    v12 = *(v1 + 16);
    v13 = v3;
    v7 = *result;
    v8 = result[1];
    *v9 = result[2];
    *&v9[13] = *(result + 45);
    ResolvedShadowStyle.animatableData.setter(v10);
    v6 = 0;
    *result = v7;
    result[1] = v8;
    result[2] = *v9;
    *(result + 45) = *&v9[13];
  }

  *(result + 53) = v6;
}

uint64_t static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+ infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 40);
  v4 = *result;
  if (*(a2 + 40))
  {
    v5 = *(result + 32);
    v6 = *result;
    v7 = *(result + 16);
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 16);
    v5 = *(a2 + 32);
    v3 = 0;
    if ((*(result + 40) & 1) == 0)
    {
      v7 = vaddq_f64(*(result + 16), v7);
      v5 = *(result + 32) + v5;
      v8 = vadd_f32(vmovn_s64(v4), vmovn_s64(v6));
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v6 = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v4, 0x20uLL), vshrn_n_s64(v6, 0x20uLL)), 0x20uLL), v9);
    }
  }

  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 32) = v5;
  *(a3 + 40) = v3;
  return result;
}

uint64_t static _ShapeStyle_Pack.Effect.Kind.AnimatableData.- infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 40);
  v4 = *result;
  if (*(a2 + 40))
  {
    v5 = *(result + 32);
    v6 = *result;
    v7 = *(result + 16);
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 16);
    v5 = *(a2 + 32);
    v3 = 0;
    if ((*(result + 40) & 1) == 0)
    {
      v7 = vsubq_f64(*(result + 16), v7);
      v5 = *(result + 32) - v5;
      v8 = vsub_f32(vmovn_s64(v4), vmovn_s64(v6));
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v6 = vorrq_s8(vshll_n_s32(vsub_f32(vshrn_n_s64(v4, 0x20uLL), vshrn_n_s64(v6, 0x20uLL)), 0x20uLL), v9);
    }
  }

  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 32) = v5;
  *(a3 + 40) = v3;
  return result;
}

Swift::Void __swiftcall _ShapeStyle_Pack.Effect.Kind.AnimatableData.scale(by:)(Swift::Double by)
{
  if (by != 1.0 && (*(v1 + 40) & 1) == 0)
  {
    v2 = by;
    v3 = vmul_n_f32(vmovn_s64(*v1), v2);
    v4 = *(v1 + 32);
    v5.i64[0] = v3.u32[0];
    v5.i64[1] = v3.u32[1];
    v6 = vmulq_n_f64(*(v1 + 16), by);
    *v1 = vorrq_s8(vshll_n_s32(vmul_n_f32(vshrn_n_s64(*v1, 0x20uLL), v2), 0x20uLL), v5);
    *(v1 + 16) = v6;
    *(v1 + 32) = v4 * by;
    *(v1 + 40) = 0;
  }
}

float64_t _ShapeStyle_Pack.Effect.Kind.AnimatableData.magnitudeSquared.getter()
{
  result = 0.0;
  if ((*(v0 + 40) & 1) == 0)
  {
    v2 = vmulq_f64(*(v0 + 16), *(v0 + 16));
    return v2.f64[0] + *(v0 + 32) * *(v0 + 32) + v2.f64[1] + (*(v0 + 8) * *(v0 + 8)) + (*(v0 + 12) * *(v0 + 12)) + (*(v0 + 4) * *(v0 + 4)) + (*v0 * *v0);
  }

  return result;
}

double protocol witness for static AdditiveArithmetic.zero.getter in conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 40);
  v4 = *result;
  if (*(a2 + 40))
  {
    v5 = *(result + 32);
    v6 = *result;
    v7 = *(result + 16);
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 16);
    v5 = *(a2 + 32);
    v3 = 0;
    if ((*(result + 40) & 1) == 0)
    {
      v7 = vaddq_f64(*(result + 16), v7);
      v5 = *(result + 32) + v5;
      v8 = vadd_f32(vmovn_s64(v4), vmovn_s64(v6));
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v6 = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v4, 0x20uLL), vshrn_n_s64(v6, 0x20uLL)), 0x20uLL), v9);
    }
  }

  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 32) = v5;
  *(a3 + 40) = v3;
  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 40);
  v4 = *result;
  if (*(a2 + 40))
  {
    v5 = *(result + 32);
    v6 = *result;
    v7 = *(result + 16);
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 16);
    v5 = *(a2 + 32);
    v3 = 0;
    if ((*(result + 40) & 1) == 0)
    {
      v7 = vsubq_f64(*(result + 16), v7);
      v5 = *(result + 32) - v5;
      v8 = vsub_f32(vmovn_s64(v4), vmovn_s64(v6));
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v6 = vorrq_s8(vshll_n_s32(vsub_f32(vshrn_n_s64(v4, 0x20uLL), vshrn_n_s64(v6, 0x20uLL)), 0x20uLL), v9);
    }
  }

  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 32) = v5;
  *(a3 + 40) = v3;
  return result;
}

void key path getter for _ShapeStyle_Pack.Effect.Kind.animatableData : _ShapeStyle_Pack.Effect.Kind(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 53);
  if (v3)
  {
    v4 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v7);
    v5 = v7[0];
    v6 = v7[1];
    v4 = v8;
  }

  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  *(a2 + 40) = v3 & 1;
}

void key path setter for _ShapeStyle_Pack.Effect.Kind.animatableData : _ShapeStyle_Pack.Effect.Kind(uint64_t result, __int128 *a2)
{
  if (*(a2 + 53) & 1) != 0 || (*(result + 40))
  {
    v6 = 1;
    LOBYTE(v10[0]) = 1;
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *(a2 + 45) = 0;
  }

  else
  {
    v3 = *(result + 32);
    v4 = *(result + 8);
    v5 = HIDWORD(*result);
    v10[0] = *result;
    v10[1] = v5;
    v11 = v4;
    v12 = *(result + 16);
    v13 = v3;
    v7 = *a2;
    v8 = a2[1];
    *v9 = a2[2];
    *&v9[13] = *(a2 + 45);
    ResolvedShadowStyle.animatableData.setter(v10);
    v6 = 0;
    *a2 = v7;
    a2[1] = v8;
    a2[2] = *v9;
    *(a2 + 45) = *&v9[13];
  }

  *(a2 + 53) = v6;
}

void (*_ShapeStyle_Pack.Effect.Kind.animatableData.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  v5 = *(v1 + 53);
  if (v5)
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v3 + 128);
    v7 = *(v4 + 128);
    v8 = *(v4 + 144);
    v6 = *(v4 + 160);
  }

  *v4 = v7;
  *(v4 + 16) = v8;
  *(v4 + 32) = v6;
  *(v4 + 40) = v5 & 1;
  return _ShapeStyle_Pack.Effect.Kind.animatableData.modify;
}

void _ShapeStyle_Pack.Effect.Kind.animatableData.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 21);
  if ((a2 & 1) == 0)
  {
    if (((*(v3 + 53) | (*a1)[40]) & 1) == 0)
    {
      v9 = v2[4];
      v10 = v2[1];
      v11 = HIDWORD(*v2);
      *(v2 + 22) = *v2;
      *(v2 + 23) = v11;
      v2[12] = v10;
      *(v2 + 13) = *(v2 + 1);
      v2[15] = v9;
      v15 = *v3;
      v16 = v3[1];
      *v17 = v3[2];
      *&v17[13] = *(v3 + 45);
      ResolvedShadowStyle.animatableData.setter((v2 + 11));
      v7 = 0;
      *v3 = v15;
      v3[1] = v16;
      v3[2] = *v17;
      v8 = *&v17[13];
      goto LABEL_7;
    }

LABEL_5:
    v7 = 1;
    *v3 = 0u;
    v3[1] = 0u;
    v3[2] = 0u;
    *(v3 + 45) = 0;
    goto LABEL_8;
  }

  if ((*(v3 + 53) | (*a1)[40]))
  {
    goto LABEL_5;
  }

  v4 = v2[4];
  v5 = v2[1];
  v6 = HIDWORD(*v2);
  *(v2 + 12) = *v2;
  *(v2 + 13) = v6;
  v2[7] = v5;
  *(v2 + 4) = *(v2 + 1);
  v2[10] = v4;
  v12 = *v3;
  v13 = v3[1];
  *v14 = v3[2];
  *&v14[13] = *(v3 + 45);
  ResolvedShadowStyle.animatableData.setter((v2 + 6));
  v7 = 0;
  *v3 = v12;
  v3[1] = v13;
  v3[2] = *v14;
  v8 = *&v14[13];
LABEL_7:
  *(v3 + 45) = v8;
LABEL_8:
  *(v2[21] + 53) = v7;

  free(v2);
}

void protocol witness for Animatable.animatableData.getter in conformance _ShapeStyle_Pack.Effect.Kind(uint64_t a1@<X8>)
{
  v3 = *(v1 + 53);
  if (v3)
  {
    v4 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v7);
    v5 = v7[0];
    v6 = v7[1];
    v4 = v8;
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3 & 1;
}

void protocol witness for Animatable.animatableData.setter in conformance _ShapeStyle_Pack.Effect.Kind(uint64_t result)
{
  if (*(v1 + 53) & 1) != 0 || (*(result + 40))
  {
    v5 = 1;
    LOBYTE(v9[0]) = 1;
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *(v1 + 45) = 0;
  }

  else
  {
    v2 = *(result + 32);
    v3 = *(result + 8);
    v4 = HIDWORD(*result);
    v9[0] = *result;
    v9[1] = v4;
    v10 = v3;
    v11 = *(result + 16);
    v12 = v2;
    v6 = *v1;
    v7 = v1[1];
    *v8 = v1[2];
    *&v8[13] = *(v1 + 45);
    ResolvedShadowStyle.animatableData.setter(v9);
    v5 = 0;
    *v1 = v6;
    v1[1] = v7;
    v1[2] = *v8;
    *(v1 + 45) = *&v8[13];
  }

  *(v1 + 53) = v5;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeStyle_Pack.Effect.Kind(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _ShapeStyle_Pack.Effect.Kind.animatableData.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t key path setter for _ShapeStyle_Shape.stylePack : _ShapeStyle_Shape(uint64_t *a1)
{
  v1 = *a1;

  v2 = _ShapeStyle_Shape.stylePack.modify(v5);
  *v3 = v1;

  return (v2)(v5, 0);
}

void _ShapeStyle_Shape.stylePack.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 40);
  v4 = *(v1 + 32);
  if (v3 == 1)
  {
    outlined consume of _ShapeStyle_Shape.Result(v4, 1u);
    v4 = 0;
    *(v1 + 32) = 0;
    LOBYTE(v3) = 5;
    *(v1 + 40) = 5;
  }

  outlined consume of _ShapeStyle_Shape.Result(v4, v3);
  *(v1 + 32) = v2;
  *(v1 + 40) = 1;
}

float ResolvedMulticolorStyle.accentColor.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 ResolvedMulticolorStyle.accentColor.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = a1[1].n128_u32[0];
  return result;
}

void *ResolvedMulticolorStyle.bundle.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

double ResolvedMulticolorStyle.environment.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = v1[20];
  v4 = v1[21];
  v5 = v1[22];
  EnvironmentValues.init()(a1);
  v6 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019ExplicitColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(a1, v3);

  v7 = a1[1];
  if (v7)
  {
    v8 = *a1;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019ExplicitColorSchemeK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v6, *a1);
  }

  else
  {

    v8 = *a1;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019ColorSchemeContrastF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(a1, v4);

  if (v7)
  {
    v9 = *a1;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA019ColorSchemeContrastK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v8, *a1);
  }

  else
  {

    v9 = *a1;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012DisplayGamutF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(a1, v5);

  if (v7)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012DisplayGamutK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v9, *a1);
  }

  return result;
}

uint64_t ResolvedMulticolorStyle.resolveHDR(name:proposed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return ResolvedMulticolorStyle.resolveHDR(name:)(a1, a2);
  }

  else
  {
    return *a3;
  }
}

void specialized AnimatableArray.scale(by:)(double a1)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    *v1 = v2;
    if (v3 > *(v2 + 2))
    {
      __break(1u);
      return;
    }

    v6 = a1;
    if (v3 >= 8)
    {
      v7 = v3 & 0x7FFFFFFFFFFFFFF8;
      v8 = (v2 + 48);
      v9 = v3 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v10 = vmulq_n_f32(*v8, v6);
        v8[-1] = vmulq_n_f32(v8[-1], v6);
        *v8 = v10;
        v8 += 2;
        v9 -= 8;
      }

      while (v9);
      if (v3 == v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v7 = 0;
    }

    v11 = v3 - v7;
    v12 = &v2[4 * v7 + 32];
    do
    {
      *v12 = *v12 * v6;
      ++v12;
      --v11;
    }

    while (v11);
LABEL_12:
    *v1 = v2;
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    *v1 = v2;
    if (v3 > *(v2 + 2))
    {
      __break(1u);
      return;
    }

    v6 = a1;
    if (v3 >= 0xC && ((v7 = (v2 + 32), v8 = 16 * (v3 - 1), &v2[v8 + 32] >= v2 + 32) ? (v9 = &v2[v8 + 36] >= v2 + 36) : (v9 = 0), v9 ? (v10 = &v2[v8 + 44] >= v2 + 44) : (v10 = 0), v10 ? (v11 = &v2[v8 + 40] >= v2 + 40) : (v11 = 0), v11 ? (v12 = (v3 - 1) >> 60 == 0) : (v12 = 0), v12))
    {
      v13 = v3 & 0x1FFFFFFFFFFFFFFCLL;
      v14 = v3 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v15 = vmulq_n_f32(v7[3], v6);
        v16 = vmulq_n_f32(v7[2], v6);
        v17 = vmulq_n_f32(v7[1], v6);
        *v7 = vmulq_n_f32(*v7, v6);
        v7[1] = v17;
        v7[2] = v16;
        v7[3] = v15;
        v7 += 4;
        v14 -= 4;
      }

      while (v14);
      if (v3 == v13)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v13 = 0;
    }

    v18 = v3 - v13;
    v19 = &v2[16 * v13 + 32];
    do
    {
      *v19 = vmulq_n_f32(*v19, v6);
      ++v19;
      --v18;
    }

    while (v18);
LABEL_27:
    *v1 = v2;
  }
}

double specialized AnimatableArray.magnitudeSquared.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  if (v1 <= 7)
  {
    v2 = 0;
    result = 0.0;
LABEL_8:
    v13 = v1 - v2;
    v14 = (a1 + 16 * v2 + 40);
    do
    {
      v15 = (v14[-1].f32[0] * v14[-1].f32[0]);
      v16 = (v14[-1].f32[1] * v14[-1].f32[1]);
      v17 = *v14;
      v14 += 2;
      result = result + vaddvq_f64(vcvtq_f64_f32(vmul_f32(v17, v17))) + v16 + v15;
      --v13;
    }

    while (v13);
    return result;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFF8;
  v4 = (a1 + 96);
  result = 0.0;
  v5 = v1 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v6 = v4 - 16;
    v18 = vld4q_f32(v6);
    v19 = vld4q_f32(v4);
    v7 = vmulq_f32(v18.val[0], v18.val[0]);
    v8 = vmulq_f32(v19.val[0], v19.val[0]);
    v9 = vmulq_f32(v18.val[1], v18.val[1]);
    v10 = vmulq_f32(v19.val[1], v19.val[1]);
    v11 = vmulq_f32(v18.val[2], v18.val[2]);
    v12 = vmulq_f32(v19.val[2], v19.val[2]);
    v18.val[0] = vmulq_f32(v18.val[3], v18.val[3]);
    v18.val[1] = vmulq_f32(v19.val[3], v19.val[3]);
    v18.val[2] = vcvtq_f64_f32(*v18.val[0].f32);
    v18.val[3] = vcvtq_f64_f32(*v18.val[1].f32);
    v18.val[0] = vaddq_f64(vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v11), vcvt_hight_f64_f32(v18.val[0])), vcvt_hight_f64_f32(v9)), vcvt_hight_f64_f32(v7));
    v18.val[2] = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v11.f32), v18.val[2]), vcvtq_f64_f32(*v9.f32)), vcvtq_f64_f32(*v7.f32));
    v18.val[1] = vaddq_f64(vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v12), vcvt_hight_f64_f32(v18.val[1])), vcvt_hight_f64_f32(v10)), vcvt_hight_f64_f32(v8));
    v18.val[3] = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v12.f32), v18.val[3]), vcvtq_f64_f32(*v10.f32)), vcvtq_f64_f32(*v8.f32));
    result = result + *v18.val[2].i64 + *&v18.val[2].i64[1] + *v18.val[0].i64 + *&v18.val[0].i64[1] + *v18.val[3].i64 + *&v18.val[3].i64[1] + *v18.val[1].i64 + *&v18.val[1].i64[1];
    v4 += 32;
    v5 -= 8;
  }

  while (v5);
  if (v1 != v2)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t specialized static ResolvedMulticolorStyle.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) == 0)
  {
    return 0;
  }

  v3 = a1[1].u8[4];
  v4 = a1[1].u8[5];
  v5 = a1[1].u8[6];
  v6 = a1[1].i64[1];
  v7 = a2[1].i64[1];
  v8 = a1[1].f32[0];
  result = 0;
  if (v8 == a2[1].f32[0] && ((v3 ^ a2[1].u8[4]) & 1) == 0 && ((v4 ^ a2[1].u8[5]) & 1) == 0 && ((v5 ^ a2[1].u8[6]) & 1) == 0)
  {
    if (v6)
    {
      if (v7)
      {
        type metadata accessor for NSBundle();
        v9 = v7;
        v10 = v6;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL specialized static _ShapeStyle_Pack.Effect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a2 + 53);
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  if ((*(a1 + 53) & 1) == 0)
  {
    if (*(a2 + 53))
    {
      return 0;
    }

    v9 = *(a1 + 16);
    v16[0] = *a1;
    v16[1] = v9;
    v17[0] = *(a1 + 32);
    *(v17 + 13) = *(a1 + 45);
    v10 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v10;
    v15[0] = *(a2 + 32);
    *(v15 + 13) = *(a2 + 45);
    v5 = specialized static ResolvedShadowStyle.== infix(_:_:)(v16, v14);
  }

  result = 0;
  if ((v5 & 1) != 0 && v2 == v6)
  {
    if (v4 == 255)
    {
      if (v8 == 255)
      {
        outlined copy of GraphicsBlendMode?(v3, 255);
        outlined copy of GraphicsBlendMode?(v7, 255);
        outlined consume of GraphicsBlendMode?(v3, 255);
        return 1;
      }
    }

    else if (v8 != 255)
    {
      if (v4)
      {
        if (v8)
        {
          outlined copy of GraphicsBlendMode?(v3, v4);
          outlined copy of GraphicsBlendMode?(v7, v8);
          outlined copy of GraphicsBlendMode?(v3, v4);
          outlined consume of GraphicsBlendMode(v3, 1);
          outlined consume of GraphicsBlendMode(v7, 1);
          outlined consume of GraphicsBlendMode?(v3, v4);
          result = 1;
          if (v3 == v7)
          {
            return result;
          }

          return 0;
        }

        swift_unknownObjectRetain();
      }

      else if ((v8 & 1) == 0)
      {
        outlined copy of GraphicsBlendMode?(v3, v4);
        outlined copy of GraphicsBlendMode?(v7, v8);
        outlined consume of GraphicsBlendMode(v3, 0);
        outlined consume of GraphicsBlendMode(v7, 0);
        outlined consume of GraphicsBlendMode?(v3, v4);
        return v3 == v7;
      }

      outlined copy of GraphicsBlendMode?(v3, v4);
      outlined copy of GraphicsBlendMode?(v7, v8);
      outlined consume of GraphicsBlendMode(v3, v4 & 1);
      outlined consume of GraphicsBlendMode(v7, v8 & 1);
      v12 = v3;
      v13 = v4;
LABEL_20:
      outlined consume of GraphicsBlendMode?(v12, v13);
      return 0;
    }

    outlined copy of GraphicsBlendMode?(v3, v4);
    outlined copy of GraphicsBlendMode?(v7, v8);
    outlined consume of GraphicsBlendMode?(v3, v4);
    v12 = v7;
    v13 = v8;
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    return (*(a2 + 40) & 1) != 0;
  }

  if (*(a2 + 40))
  {
    return 0;
  }

  v4 = COERCE_FLOAT(HIDWORD(*a1)) == COERCE_FLOAT(HIDWORD(*a2)) && COERCE_FLOAT(*a1) == COERCE_FLOAT(*a2);
  v5 = v4 & (COERCE_FLOAT(*(a1 + 8)) == COERCE_FLOAT(*(a2 + 8)));
  if (COERCE_FLOAT(HIDWORD(*(a1 + 8))) != COERCE_FLOAT(HIDWORD(*(a2 + 8))))
  {
    v5 = 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    v5 = 0;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    v5 = 0;
  }

  if (*(a1 + 32) == *(a2 + 32))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 16);
  v167 = *(a2 + 32);
  v168 = v2;
  v4 = *(a2 + 48);
  v169 = *(a2 + 64);
  v5 = *(a2 + 16);
  v165 = *a2;
  v166 = v5;
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  v173 = *(a1 + 32);
  v174 = v7;
  v8 = *(a1 + 48);
  v175 = *(a1 + 64);
  v9 = *(a1 + 16);
  v171 = *a1;
  v172 = v9;
  v177[0] = v171;
  v177[1] = v6;
  v10 = *(a1 + 64);
  v177[3] = v8;
  v177[4] = v10;
  v177[2] = v173;
  v181 = v167;
  v182 = v4;
  v183 = *(a2 + 64);
  v180 = v3;
  v170 = *(a2 + 80);
  v176 = *(a1 + 80);
  v178 = *(a1 + 80);
  v184 = *(a2 + 80);
  v179 = v165;
  if (v170 == 9)
  {
    v11 = vorrq_s8(vorrq_s8(v166, v168), vorrq_s8(v167, v169));
    if (!(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | *&v165.f64[1] | *&v165.f64[0]))
    {
      v42 = &v171;
LABEL_40:
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v42, &v157);
      outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
      return;
    }
  }

  v12 = v172;
  LODWORD(v13) = v173;
  v14 = DWORD1(v173);
  v15 = *(&v173 + 1);
  v16 = *&v174;
  v163 = *(a1 + 56);
  v164 = *(a1 + 72);
  v17 = v172;
  v18 = DWORD1(v172);
  v19 = *(&v172 + 1);
  v20 = *&v172;
  if (v176 > 4u)
  {
    if (v176 > 6u)
    {
      if (v176 != 7)
      {
        if (v176 != 8)
        {
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v157);
          outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
          v95 = *(a1 + 48);
          v159 = *(a1 + 32);
          v160 = v95;
          v161 = *(a1 + 64);
          v162 = *(a1 + 80);
          v96 = *(a1 + 16);
          v157 = *a1;
          v158 = v96;
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
          v97 = v168;
          *(a1 + 32) = v167;
          *(a1 + 48) = v97;
          *(a1 + 64) = v169;
          *(a1 + 80) = v170;
          v98 = v166;
          *a1 = v165;
          *(a1 + 16) = v98;
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
          return;
        }

        if (v170 == 8)
        {
          v129 = v171;
          v35 = *(a2 + 48);
          *&v152.m24 = *(a2 + 32);
          *&v152.m33 = v35;
          *&v152.m42 = *(a2 + 64);
          v36 = *(a2 + 16);
          *&v152.m11 = *a2;
          *&v152.m15 = v36;
          outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
          v38 = *(a1 + 48);
          v159 = *(a1 + 32);
          v160 = v38;
          v161 = *(a1 + 64);
          v162 = *(a1 + 80);
          v39 = *(a1 + 16);
          v157 = *a1;
          v158 = v39;
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
          v153 = v129;
          v154 = v12;
          *&v155 = __PAIR64__(v14, LODWORD(v13));
          *(&v155 + 1) = v15;
          *v156 = v16;
          *&v156[8] = v163;
          *&v156[24] = v164;
          _ColorMatrix.add(_:)(&v152);
          v40 = *v156;
          *(a1 + 32) = v155;
          *(a1 + 48) = v40;
          *(a1 + 64) = *&v156[16];
          v41 = v154;
          *a1 = v153;
          *(a1 + 16) = v41;
          *(a1 + 80) = 8;
          return;
        }

        goto LABEL_39;
      }

      if (v170 == 7)
      {
        v75 = *&v165.f64[0];
        v76 = v171.i64[0];
        v77 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v77;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v78 = *(a1 + 16);
        v157 = *a1;
        v158 = v78;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v145.i64[0] = v76;
        v151 = v75;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        specialized static ShaderVectorData.+= infix(_:_:)(&v145, &v151);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        *a1 = v145.i64[0];
        *(a1 + 80) = 7;
        return;
      }

      goto LABEL_38;
    }

    if (v176 == 5)
    {
      if (v170 == 5)
      {
        v47 = v167.i8[0];
        v48 = v166.i32[3];
        v49 = v166.i8[8];
        v50 = v166.i64[0];
        v51 = *v168.i64;
        v52 = *&v167.i64[1];
        v131 = v171;
        v53 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v53;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v54 = *(a1 + 16);
        v157 = *a1;
        v158 = v54;
        v124 = v165;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v56 = vextq_s8(v131, v131, 8uLL).u64[0];
        v57 = vshll_n_s32(vzip2_s32(*v131.i8, v56), 0x20uLL);
        v58 = vzip1_s32(*v131.i8, v56);
        v59.i64[0] = v58.u32[0];
        v59.i64[1] = v58.u32[1];
        *&v144 = __PAIR64__(v14, LODWORD(v13));
        v143 = vaddq_f64(v124, vorrq_s8(v57, v59));
        v145.i64[0] = v50;
        v145.i8[8] = v49;
        v145.i32[3] = v48;
        LOBYTE(v146) = v47 & 1;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        ResolvedGradientVector.add(_:scaledBy:)(&v145, 1.0);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        *(&v144 + 1) = v15 + v52;
        *&v152.m33 = v16 + v51;
        v60 = *&v152.m42;
        *(a1 + 48) = *&v152.m33;
        *(a1 + 64) = v60;
        *a1 = v143;
        *(a1 + 16) = v12;
        *(a1 + 32) = v144;
        *(a1 + 80) = 5;
        return;
      }
    }

    else if (v170 == 6)
    {
      v104 = DWORD2(v172);
      v105 = *v167.i32;
      v106 = HIDWORD(*(&v172 + 1));
      v121 = *(&v172 + 1);
      v107 = *&v166.i32[3];
      v108 = *&v166.i32[2];
      v109 = *&v166.i32[1];
      v110 = *v166.i32;
      v111 = *&v165.f64[1];
      v112 = *&v165.f64[0];
      v135 = v171;
      v113 = *(a1 + 48);
      v159 = *(a1 + 32);
      v160 = v113;
      v161 = *(a1 + 64);
      v162 = *(a1 + 80);
      v114 = *(a1 + 16);
      v157 = *a1;
      v158 = v114;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
      v116 = vextq_s8(v135, v135, 8uLL).u64[0];
      v117 = vshll_n_s32(vzip2_s32(*v135.i8, v116), 0x20uLL);
      v118 = vzip1_s32(*v135.i8, v116);
      v119.i64[0] = v118.u32[0];
      v119.i64[1] = v118.u32[1];
      v145 = vorrq_s8(v117, v119);
      v146 = v17;
      v147 = v18;
      v148 = v104;
      v149 = v106;
      v150 = v13;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZSf_Tt1B5(v145.i8, v112);
      _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&v145.i8[8], v111);
      outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
      *a1 = v145;
      if (v13 > v105)
      {
        v120 = v13;
      }

      else
      {
        v120 = v105;
      }

      *(a1 + 16) = v110 + v20;
      *(a1 + 20) = v109 + v19;
      *(a1 + 24) = v108 + *&v121;
      *(a1 + 28) = v107 + *(&v121 + 1);
      *(a1 + 32) = v120;
      *(a1 + 80) = 6;
      return;
    }

LABEL_38:
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v157);
    goto LABEL_39;
  }

  if (v176 > 1u)
  {
    if (v176 == 2)
    {
      if (v170 == 2)
      {
        v61 = v168.i8[0];
        v62 = v167.i32[3];
        v63 = v167.i8[8];
        v64 = v167.i64[0];
        v65 = *&v166.i64[1];
        v66 = *v166.i64;
        v132 = v171;
        v67 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v67;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v68 = *(a1 + 16);
        v157 = *a1;
        v158 = v68;
        v125 = v165;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v70 = vextq_s8(v132, v132, 8uLL).u64[0];
        v71 = vshll_n_s32(vzip2_s32(*v132.i8, v70), 0x20uLL);
        v72 = vzip1_s32(*v132.i8, v70);
        v73.i64[0] = v72.u32[0];
        v73.i64[1] = v72.u32[1];
        *&v138 = __PAIR64__(v14, LODWORD(v13));
        *(&v138 + 1) = v15;
        v136 = vaddq_f64(v125, vorrq_s8(v71, v73));
        *&v137 = *&v12 + v66;
        *(&v137 + 1) = *(&v12 + 1) + v65;
        v145.i64[0] = v64;
        v145.i8[8] = v63;
        v145.i32[3] = v62;
        LOBYTE(v146) = v61 & 1;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        ResolvedGradientVector.add(_:scaledBy:)(&v145, 1.0);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        LOBYTE(v152.m33) = LOBYTE(v16);
        v74 = *&v152.m42;
        *(a1 + 48) = *&v152.m33;
        *(a1 + 64) = v74;
        *a1 = v136;
        *(a1 + 16) = v137;
        *(a1 + 32) = v138;
        *(a1 + 80) = 2;
        return;
      }
    }

    else if (v176 == 3)
    {
      if (v170 == 3)
      {
        v21 = v167.i8[0];
        v22 = v166.i32[3];
        v23 = v166.i8[8];
        v24 = v166.i64[0];
        v25 = *v168.i64;
        v26 = *&v167.i64[1];
        v128 = v171;
        v27 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v27;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v28 = *(a1 + 16);
        v157 = *a1;
        v158 = v28;
        v122 = v165;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v30 = vextq_s8(v128, v128, 8uLL).u64[0];
        v31 = vshll_n_s32(vzip2_s32(*v128.i8, v30), 0x20uLL);
        v32 = vzip1_s32(*v128.i8, v30);
        v33.i64[0] = v32.u32[0];
        v33.i64[1] = v32.u32[1];
        *&v140 = __PAIR64__(v14, LODWORD(v13));
        v139 = vaddq_f64(v122, vorrq_s8(v31, v33));
        v145.i64[0] = v24;
        v145.i8[8] = v23;
        v145.i32[3] = v22;
        LOBYTE(v146) = v21 & 1;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        ResolvedGradientVector.add(_:scaledBy:)(&v145, 1.0);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        *(&v140 + 1) = v15 + v26;
        *&v152.m33 = v16 + v25;
        v34 = *&v152.m42;
        *(a1 + 48) = *&v152.m33;
        *(a1 + 64) = v34;
        *a1 = v139;
        *(a1 + 16) = v12;
        *(a1 + 32) = v140;
        *(a1 + 80) = 3;
        return;
      }
    }

    else if (v170 == 4)
    {
      v80 = v167.i8[0];
      v81 = v166.i32[3];
      v82 = v166.i8[8];
      v83 = v166.i64[0];
      v84 = *v168.i64;
      v85 = *&v167.i64[1];
      v133 = v171;
      v86 = *(a1 + 48);
      v159 = *(a1 + 32);
      v160 = v86;
      v161 = *(a1 + 64);
      v162 = *(a1 + 80);
      v87 = *(a1 + 16);
      v157 = *a1;
      v158 = v87;
      v126 = v165;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
      v89 = vextq_s8(v133, v133, 8uLL).u64[0];
      v90 = vshll_n_s32(vzip2_s32(*v133.i8, v89), 0x20uLL);
      v91 = vzip1_s32(*v133.i8, v89);
      v92.i64[0] = v91.u32[0];
      v92.i64[1] = v91.u32[1];
      *&v142 = __PAIR64__(v14, LODWORD(v13));
      v141 = vaddq_f64(v126, vorrq_s8(v90, v92));
      v145.i64[0] = v83;
      v145.i8[8] = v82;
      v145.i32[3] = v81;
      LOBYTE(v146) = v80 & 1;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      ResolvedGradientVector.add(_:scaledBy:)(&v145, 1.0);
      outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
      *(&v142 + 1) = v15 + v85;
      *&v152.m33 = v16 + v84;
      v93 = *&v152.m42;
      *(a1 + 48) = *&v152.m33;
      *(a1 + 64) = v93;
      *a1 = v141;
      *(a1 + 16) = v12;
      *(a1 + 32) = v142;
      *(a1 + 80) = 4;
      return;
    }

    goto LABEL_38;
  }

  if (v176)
  {
    if (v170 == 1)
    {
      v134 = v171;
      v99 = *v166.i32 + *&v172;
      v100 = *&v166.i32[1] + *(&v172 + 1);
      v127 = v165;
      outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
      v102 = *(a1 + 48);
      v159 = *(a1 + 32);
      v160 = v102;
      v161 = *(a1 + 64);
      v162 = *(a1 + 80);
      v103 = *(a1 + 16);
      v157 = *a1;
      v158 = v103;
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
      *a1 = vaddq_f32(v127, v134);
      *(a1 + 16) = v99;
      *(a1 + 20) = v100;
      *(a1 + 80) = 1;
      return;
    }

    goto LABEL_39;
  }

  if (v170)
  {
LABEL_39:
    v42 = &v165;
    goto LABEL_40;
  }

  if (*v166.i32 < *&v172)
  {
    v43 = *&v172;
  }

  else
  {
    v43 = *v166.i32;
  }

  v123 = v165;
  v130 = v171;
  outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
  v45 = *(a1 + 48);
  v159 = *(a1 + 32);
  v160 = v45;
  v161 = *(a1 + 64);
  v162 = *(a1 + 80);
  v46 = *(a1 + 16);
  v157 = *a1;
  v158 = v46;
  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
  *a1 = vaddq_f32(v123, v130);
  *(a1 + 16) = v43;
  *(a1 + 80) = 0;
}