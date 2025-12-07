uint64_t outlined init with copy of LinkDestination.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkDestination.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LinkDestination.Configuration.CodingKeys()
{
  if (*v0)
  {
    return 0x7469736E65537369;
  }

  else
  {
    return 7107189;
  }
}

void lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    v4 = type metadata accessor for URL();
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

void type metadata accessor for _ContiguousArrayStorage<(StrongHash, DisplayList)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(StrongHash, DisplayList)>)
  {
    type metadata accessor for (Path, FillStyle)(255, &lazy cache variable for type metadata for (StrongHash, DisplayList), &type metadata for StrongHash, &type metadata for DisplayList);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(StrongHash, DisplayList)>);
    }
  }
}

unint64_t Image.ResizingInfo.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v29 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for resizable != -1)
  {
    result = swift_once();
  }

  v23 = unk_1EAB12458;
  v24 = static Image.ResizingInfo.resizable;
  v5 = byte_1EAB12468;
  v25 = byte_1EAB12468;
  v6 = v3[1];
  v7 = v3[2];
  if (v6 >= v7)
  {
LABEL_54:
    v3[3] = 0;
    *a2 = v24;
    *(a2 + 16) = v23;
    *(a2 + 32) = v5;
    return result;
  }

  while (1)
  {
    result = v3[3];
    if (result)
    {
      v8 = v3[4];
      if (v6 < v8)
      {
        goto LABEL_13;
      }

      if (v8 < v6)
      {
        goto LABEL_52;
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
      goto LABEL_52;
    }

LABEL_13:
    v9 = result & 7;
    if (result >> 3 == 2)
    {
      break;
    }

    if (result >> 3 == 1)
    {
      if ((result & 7) != 0)
      {
        if (v9 != 2)
        {
          goto LABEL_52;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v10 = v3[1] + result;
        if (v7 < v10)
        {
          goto LABEL_52;
        }

        v3[3] = 8;
        v3[4] = v10;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v25 = result != 1;
    }

    else
    {
      if ((result & 7) > 1)
      {
        if (v9 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_60;
          }

          v19 = v3[1] + result;
          if (v7 < v19)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v9 != 5)
          {
            goto LABEL_52;
          }

          v19 = v3[1] + 4;
          if (v7 < v19)
          {
            goto LABEL_52;
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

        if (v9 != 1)
        {
          goto LABEL_52;
        }

        v19 = v3[1] + 8;
        if (v7 < v19)
        {
          goto LABEL_52;
        }
      }

      v3[1] = v19;
    }

LABEL_6:
    v6 = v3[1];
    if (v6 >= v7)
    {
      v5 = v25;
      goto LABEL_54;
    }
  }

  if (v9 != 2)
  {
    goto LABEL_52;
  }

  v11 = v3[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  *(v11 + 16) = v14 + 1;
  *(v11 + 8 * v14 + 32) = v7;
  v3[5] = v11;
  result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v15 = v3[1] + result;
    if (v7 < v15)
    {
      goto LABEL_52;
    }

    v3[2] = v15;
    v27 = 0u;
    v28 = 0u;
    closure #1 in EdgeInsets.init(from:)(&v27, v3, &v26);
    v16 = v3[5];
    if (!*(v16 + 16))
    {
      goto LABEL_58;
    }

    v23 = v28;
    v24 = v27;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = *(v16 + 16);
      if (!v17)
      {
        goto LABEL_51;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      v16 = result;
      v17 = *(result + 16);
      if (!v17)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }
    }

    v18 = v17 - 1;
    v7 = *(v16 + 8 * v18 + 32);
    *(v16 + 16) = v18;
    v3[5] = v16;
    v3[2] = v7;
    goto LABEL_6;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v22 = *(result + 16);
  if (!v22)
  {
    __break(1u);
  }

  v20 = v22 - 1;
  v21 = *(result + 8 * v20 + 32);
  *(result + 16) = v20;
  v3[5] = result;
  v3[2] = v21;
  return result;
}

void lazy protocol witness table accessor for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinkDestination.Configuration.CodingKeys, &unk_1F0061D08, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinkDestination.Configuration.CodingKeys, &unk_1F0061D08, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinkDestination.Configuration.CodingKeys, &unk_1F0061D08, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinkDestination.Configuration.CodingKeys, &unk_1F0061D08, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys);
  }
}

void type metadata accessor for KeyedEncodingContainer<LinkDestination.Configuration.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys();
    v7 = a3(a1, &unk_1F0061D08, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void *specialized ContainerRelativeShape.path(in:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v6 = _threadGeometryProxyData();
  if (v6)
  {
    v7 = *v6;
    v8 = *(v6 + 4);
    v9 = *(v6 + 8);
    v10 = *(v6 + 16);
    v11 = *(v6 + 20);
    v35[0] = *(v6 + 24);
    *(v35 + 12) = *(v6 + 36);
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(v36);
      v12 = *(&v36[0] + 1);
      v13 = *&v36[0];
      static Update.end()();
      if (v12)
      {
LABEL_4:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014ContainerShapeI033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt1g5(v13, &v32);

LABEL_9:

        v20 = *(&v32 + 1);
        v21 = v33;
        v22 = *v34;
        v23 = *&v34[8];
        v24 = *&v34[24];
        *&v32 = __PAIR64__(v8, v7);
        *(&v32 + 1) = v9;
        v33 = __PAIR64__(v11, v10);
        *v34 = v35[0];
        *&v34[12] = *(v35 + 12);
        v29 = v22;
        v30 = v23;
        v31 = v24;
        result = (*(v20 + 8))(v36, &v32, v21, &v29, a2, a3, a4, a5);
        v15 = v36[0];
        v17 = v36[1];
        v16 = v37;
        goto LABEL_11;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v13 = *InputValue;
      v19 = *(InputValue + 8);

      static Update.end()();
      if (v19)
      {
        goto LABEL_4;
      }
    }

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2g5(v13, &v32);
    goto LABEL_9;
  }

  *&v38.origin.x = a2.n128_u64[0];
  *&v38.size.width = a4.n128_u64[0];
  *&v38.origin.y = a3.n128_u64[0];
  *&v38.size.height = a5.n128_u64[0];
  result = CGRectIsNull(v38);
  if (result)
  {
    v15 = 0uLL;
    v16 = 6;
    v17 = 0uLL;
  }

  else
  {
    v16 = 0;
    *&v15 = a2.n128_u64[0];
    *(&v15 + 1) = a3.n128_u64[0];
    *&v17 = a4.n128_u64[0];
    *(&v17 + 1) = a5.n128_u64[0];
  }

LABEL_11:
  *a1 = v15;
  *(a1 + 16) = v17;
  *(a1 + 32) = v16;
  return result;
}

double protocol witness for Shape.path(in:) in conformance ContainerRelativeShape@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  specialized ContainerRelativeShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t DisplayList.UnaryInterpolatorGroup.rewriteInterpolation(serial:list:time:frame:contentOrigin:contentOffset:version:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v20 = *a12;
  v21 = *(a10 + 8);
  v22 = *(a10 + 12);
  *&v52[0] = *a10;
  WORD4(v52[0]) = v21;
  HIDWORD(v52[0]) = v22;
  swift_beginAccess();

  DisplayList.InterpolatorLayer.setDisplayList(_:origin:)(v52, a5, a6);
  swift_endAccess();

  if (*(*(v12 + 80) + 16))
  {
    Value = AGGraphGetValue();
    if (*(v12 + 88) != *Value)
    {
      *(v12 + 88) = *Value;
      *(v12 + 107) = 1;
    }

    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v24 = swift_dynamicCastClassUnconditional();
    v25 = *AGGraphGetValue();
    swift_beginAccess();
    v26 = *(v24 + 376);
    if (v25 < v26)
    {
      v26 = v25;
    }

    *(v24 + 376) = v26;

    v27 = *(v12 + 108);
    swift_beginAccess();
    v28 = *(v12 + 16);
    swift_beginAccess();
    DisplayList.InterpolatorLayer.updateInterpolators(contentsScale:maxDuration:)(v27, v28);
    swift_endAccess();
    v29 = *(v12 + 72);
    v52[2] = *(v12 + 56);
    v52[3] = v29;
    v52[4] = *(v12 + 88);
    v53 = *(v12 + 104);
    v30 = *(v12 + 40);
    v52[0] = *(v12 + 24);
    v52[1] = v30;
    v31 = *(v12 + 72);
    v48 = *(v12 + 56);
    v49 = v31;
    v50 = *(v12 + 88);
    v51 = *(v12 + 104);
    v32 = *(v12 + 40);
    v46 = *(v12 + 24);
    v47 = v32;
    v45 = v20;
    v33 = *(v12 + 116);
    v34 = *(v12 + 120);
    v35 = *(v12 + 124);
    v41 = *(v12 + 112);
    v42 = v33;
    v43 = v34;
    v44 = v35;
    outlined init with copy of DisplayList.InterpolatorLayer(v52, v54);
    DisplayList.InterpolatorLayer.updateOutput(list:frame:contentOffset:version:rasterizationOptions:)(a10, &v45, &v41, v36, v37, a3, a4, a7, a8);
    v39 = v38;
    v54[2] = v48;
    v54[3] = v49;
    v54[4] = v50;
    v55 = v51;
    v54[0] = v46;
    v54[1] = v47;
    outlined destroy of DisplayList.InterpolatorLayer(v54);
  }

  else
  {
    v39 = 0;
  }

  return v39 & 1;
}

void closure #1 in ViewGraphTransform.apply(to:)(void *a1, uint64_t a2, int64_t *a3)
{
  v10 = a3;
  v14 = a1[5];
  v12 = a1[6];
  v13 = a1 + 5;
  v15 = (a1 + 7);
  v16 = a1[7];
  v17 = a1[8];
  v18 = v17 >> 30;
  v224 = a2;
  if (v17 >> 30 <= 1)
  {
    v221 = a1[5];
    if (!v18)
    {
      if (v14 >> 60 != 11)
      {
        return;
      }

      v219 = a1[6];
      v220 = a1;
      v217 = a1[8];
      v4 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v6 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v7 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      LODWORD(v3) = v217;
      v20 = v219;
      if ((v19 & 0x60) == 0 && ((v19 & 0x80) == 0 || !*(*(a2 + 16) + 16)))
      {
        return;
      }

      v211 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
      v212 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      LOBYTE(v213) = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
      v214 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      v215 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      *v231 = 0;
      v17 = *(v4 + 2);
      outlined copy of DisplayList.Item.Value(v14, v12, v16, v217);
      v223 = v17;
      v218 = v10;
      v216 = v16;
      if (!v17)
      {

        v147 = 0;
        v21 = 0;
        LOWORD(v16) = 0;
LABEL_226:
        if (v147 <= v220[4])
        {
          v148 = v220[4];
        }

        else
        {
          v148 = v147;
        }

        v220[4] = v148;
        v149 = swift_allocObject();
        *(v149 + 16) = v4;
        *(v149 + 24) = v16;
        *(v149 + 28) = v21;
        *(v149 + 32) = v6;
        *(v149 + 40) = v7;
        *(v149 + 48) = v215;
        *(v149 + 52) = v214;
        *(v149 + 53) = v213;
        *(v149 + 56) = v212;
        *(v149 + 60) = v211;
        if (v148)
        {
          v150 = (2 * (((33 * WORD1(v148)) ^ v148) & 0x7FFF)) | 1;
        }

        else
        {
          v150 = 0;
        }

        v151 = v149 | 0xB000000000000000;
        outlined consume of DisplayList.Item.Value(v220[5], v220[6], v220[7], v220[8]);
        v220[5] = v151;
        v220[6] = v150;
        *v15 = 0;
        *(v15 + 8) = 0;
        v152 = *v218;
        if (v147 > *v218)
        {
          v152 = v147;
        }

        *v218 = v152;

        outlined consume of DisplayList.Item.Value(v14, v219, v216, v217);
        return;
      }

      outlined copy of DisplayList.Item.Value(v14, v219, v16, v217);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (*(v4 + 2))
        {
LABEL_8:
          LODWORD(v16) = 0;
          v21 = 0;
          v22 = 0;
          v222 = (v4 + 32);
          v23 = 1;
          while (1)
          {
            v17 = v22;
            v22 = v23;
            v20 = &v222[10 * v17];
            closure #1 in ViewGraphTransform.apply(to:)(v20, a2, v231);
            if (v17 >= *(v4 + 2))
            {
              __break(1u);
LABEL_358:
              __break(1u);
LABEL_359:
              __break(1u);
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              __break(1u);
              goto LABEL_369;
            }

            v227 = *(v20 + 1);
            v228 = *(v20 + 2);
            v229[0] = *(v20 + 3);
            *(v229 + 12) = *(v20 + 60);
            v226 = *v20;
            DisplayList.Item.features.getter(&v230);
            v24 = *(v4 + 2);
            if (v17 >= v24)
            {
              goto LABEL_358;
            }

            v16 = v230 | v16;
            v3 = *(v20 + 5);
            v5 = *(v20 + 8);
            v25 = v5 >> 30;
            if (v5 >> 30 > 1)
            {
              if (v25 != 2)
              {
                goto LABEL_9;
              }

              v27 = *(v3 + 16);
              if (v27)
              {
                if (v27 > 7)
                {
                  v28 = v27 & 0x7FFFFFFFFFFFFFF8;
                  v30 = (v3 + 188);
                  v31 = 0uLL;
                  v32 = v27 & 0x7FFFFFFFFFFFFFF8;
                  v33 = 0uLL;
                  do
                  {
                    v34.i32[0] = *(v30 - 30);
                    v34.i32[1] = *(v30 - 20);
                    v34.i32[2] = *(v30 - 10);
                    v34.i32[3] = *v30;
                    v35.i32[0] = v30[10];
                    v35.i32[1] = v30[20];
                    v35.i32[2] = v30[30];
                    v35.i32[3] = v30[40];
                    v31 = vorrq_s8(v34, v31);
                    v33 = vorrq_s8(v35, v33);
                    v30 += 80;
                    v32 -= 8;
                  }

                  while (v32);
                  v36 = vorrq_s8(v33, v31);
                  *v36.i8 = vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
                  v26 = v36.i32[0] | v36.i32[1];
                  if (v27 == v28)
                  {
                    goto LABEL_37;
                  }
                }

                else
                {
                  v26 = 0;
                  v28 = 0;
                }

                v37 = v27 - v28;
                v38 = (v3 + 40 * v28 + 68);
                do
                {
                  v39 = *v38;
                  v38 += 10;
                  v26 |= v39;
                  --v37;
                }

                while (v37);
              }

              else
              {
                v26 = 0;
              }
            }

            else if (v25)
            {
              v29 = *(v20 + 6);
              if (BYTE4(v29) == 2)
              {
                outlined copy of DisplayList.Effect(*(v20 + 5), *(v20 + 6), 2);
                v17 = v3;
              }

              else
              {
                v20 = *(v20 + 7);
                if (BYTE4(v29) == 7)
                {
                  v17 = *(v3 + 28);
                  outlined copy of DisplayList.Item.Value(v3, v29, v20, v5);
                  outlined consume of DisplayList.Effect(v3, v29, 7);
                }

                else if (BYTE4(v29) == 18)
                {
                  (*(*v3 + 120))(&v226);
                  outlined copy of DisplayList.Item.Value(v3, v29, v20, v5);
                  outlined consume of DisplayList.Effect(v3, v29, 18);

                  v17 = v226;
                }

                else
                {
                  outlined copy of DisplayList.Effect(v3, v29, SBYTE4(v29));

                  outlined consume of DisplayList.Effect(v3, v29, SBYTE4(v29));

                  v17 = 0;
                }
              }

              v26 = v17 | HIDWORD(v5);
              a2 = v224;
            }

            else
            {
              if (v3 >> 60 != 6 && v3 >> 60 != 11)
              {
LABEL_9:
                if (v22 == v223)
                {
                  goto LABEL_221;
                }

                goto LABEL_10;
              }

              v26 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            }

LABEL_37:
            v21 |= v26;
            if (v22 == v223)
            {
LABEL_221:
              v14 = v221;
              outlined consume of DisplayList.Item.Value(v221, v219, v216, v217);
              v147 = *v231;
              goto LABEL_226;
            }

            v24 = *(v4 + 2);
LABEL_10:
            v23 = v22 + 1;
            if (v22 >= v24)
            {
              goto LABEL_376;
            }
          }
        }

        goto LABEL_376;
      }

LABEL_375:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      if (*(v4 + 2))
      {
        goto LABEL_8;
      }

LABEL_376:
      __break(1u);
      goto LABEL_377;
    }

    v15 = a1[8];
    *v231 = a1[7];
    *&v231[8] = v17;
    *&v231[12] = HIDWORD(v17);
    v219 = v12;
    v220 = a1;
    switch(BYTE4(v12))
    {
      case 7u:
        v4 = *(v14 + 16);
        LODWORD(v217) = *(v14 + 24);
        v214 = *(v14 + 28);
        v215 = *(v14 + 32);
        v218 = a3;
        if ((v17 & 0x60) != 0 || (v17 & 0x80) != 0 && *(*(a2 + 16) + 16))
        {
          v230 = 0;
          *&v231[8] = 0;
          *&v231[12] = 0;
          v20 = *(v16 + 16);
          outlined copy of DisplayList.Item.Value(v14, v12, v16, v17);

          v223 = v20;
          if (v20)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_379;
            }

            if (*(v16 + 16))
            {
              goto LABEL_150;
            }

LABEL_380:
            __break(1u);
LABEL_381:
            v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
LABEL_59:
            LODWORD(v222) = v3;
            if (!*(v16 + 16))
            {
              goto LABEL_359;
            }

            v49 = 0;
            LODWORD(v5) = 0;
            v50 = 0;
            v4 = (v16 + 32);
            v51 = 1;
            while (1)
            {
              v17 = v50;
              v50 = v51;
              v20 = &v4[80 * v17];
              closure #1 in ViewGraphTransform.apply(to:)(v20, a2, &v230);
              if (v17 >= *(v16 + 16))
              {
                goto LABEL_362;
              }

              v227 = *(v20 + 1);
              v228 = *(v20 + 2);
              v229[0] = *(v20 + 3);
              *(v229 + 12) = *(v20 + 60);
              v226 = *v20;
              DisplayList.Item.features.getter(&v225);
              v52 = *(v16 + 16);
              if (v17 >= v52)
              {
                goto LABEL_366;
              }

              v15 = v16;
              v49 |= v225;
              v53 = *(v20 + 5);
              v54 = *(v20 + 8);
              v55 = v54 >> 30;
              if (v54 >> 30 > 1)
              {
                if (v55 != 2)
                {
                  v16 = v15;
                  if (v50 == v223)
                  {
                    goto LABEL_239;
                  }

                  goto LABEL_62;
                }

                v57 = *(v53 + 16);
                if (!v57)
                {
                  v56 = 0;
LABEL_92:
                  v16 = v15;
                  goto LABEL_93;
                }

                v16 = v15;
                if (v57 > 7)
                {
                  v58 = v57 & 0x7FFFFFFFFFFFFFF8;
                  v60 = (v53 + 188);
                  v61 = 0uLL;
                  v62 = v57 & 0x7FFFFFFFFFFFFFF8;
                  v63 = 0uLL;
                  do
                  {
                    v64.i32[0] = *(v60 - 30);
                    v64.i32[1] = *(v60 - 20);
                    v64.i32[2] = *(v60 - 10);
                    v64.i32[3] = *v60;
                    v65.i32[0] = v60[10];
                    v65.i32[1] = v60[20];
                    v65.i32[2] = v60[30];
                    v65.i32[3] = v60[40];
                    v61 = vorrq_s8(v64, v61);
                    v63 = vorrq_s8(v65, v63);
                    v60 += 80;
                    v62 -= 8;
                  }

                  while (v62);
                  v66 = vorrq_s8(v63, v61);
                  *v66.i8 = vorr_s8(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
                  v56 = v66.i32[0] | v66.i32[1];
                  if (v57 == v58)
                  {
                    goto LABEL_93;
                  }
                }

                else
                {
                  v56 = 0;
                  v58 = 0;
                }

                v67 = v57 - v58;
                v68 = (v53 + 40 * v58 + 68);
                do
                {
                  v69 = *v68;
                  v68 += 10;
                  v56 |= v69;
                  --v67;
                }

                while (v67);
              }

              else
              {
                if (v55)
                {
                  v59 = *(v20 + 6);
                  if (BYTE4(v59) == 2)
                  {
                    outlined copy of DisplayList.Effect(*(v20 + 5), *(v20 + 6), 2);
                    v17 = v53;
                  }

                  else
                  {
                    v20 = *(v20 + 7);
                    if (BYTE4(v59) == 7)
                    {
                      v17 = *(v53 + 28);
                      outlined copy of DisplayList.Item.Value(v53, v59, v20, v54);
                      outlined consume of DisplayList.Effect(v53, v59, 7);
                    }

                    else if (BYTE4(v59) == 18)
                    {
                      (*(*v53 + 120))(&v226);
                      outlined copy of DisplayList.Item.Value(v53, v59, v20, v54);
                      outlined consume of DisplayList.Effect(v53, v59, 18);

                      v17 = v226;
                    }

                    else
                    {
                      outlined copy of DisplayList.Effect(v53, v59, SBYTE4(v59));

                      outlined consume of DisplayList.Effect(v53, v59, SBYTE4(v59));

                      v17 = 0;
                    }
                  }

                  v56 = v17 | HIDWORD(v54);
                  a2 = v224;
                  goto LABEL_92;
                }

                if (v53 >> 60 == 6)
                {
                  v56 = *((v53 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                  goto LABEL_92;
                }

                v16 = v15;
                if (v53 >> 60 != 11)
                {
                  if (v50 == v223)
                  {
                    goto LABEL_239;
                  }

                  goto LABEL_62;
                }

                v56 = *((v53 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
              }

LABEL_93:
              LODWORD(v5) = v56 | v5;
              if (v50 == v223)
              {
LABEL_239:
                *v231 = v16;
                *&v231[12] = v5;
                *&v231[8] = v49;
                v16 = v230;
                v10 = v218;
                v14 = v221;
                goto LABEL_326;
              }

              v52 = *(v16 + 16);
LABEL_62:
              v51 = v50 + 1;
              if (v50 >= v52)
              {
                goto LABEL_359;
              }
            }
          }
        }

        else
        {
          outlined copy of DisplayList.Item.Value(v14, v12, v16, v17);
        }

        v16 = 0;
        goto LABEL_282;
      case 0x10u:
        v218 = a3;
        v6 = *(v14 + 16);
        v7 = *(v14 + 24);
        LODWORD(v47) = *(v14 + 32);
        v17 = a1[4];
        v3 = a2 + 16;
        v20 = *(a2 + 16);
        outlined copy of DisplayList.Effect(v14, v12, 16);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 16) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_373;
        }

        goto LABEL_105;
      case 0x11u:
        v3 = *(v14 + 16);
        v7 = *(v14 + 24);
        v8 = *(v14 + 32);
        v9 = *(v14 + 40);
        v6 = *(v14 + 48);
        if ((v17 & 0x60) == 0 && ((v17 & 0x80) == 0 || !*(*(a2 + 16) + 16)))
        {
          outlined copy of DisplayList.Effect(v14, v12, 17);

LABEL_325:
          v16 = 0;
LABEL_326:
          v200 = *a2;
          *&v226 = *(a2 + 8);
          DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v231, v200, &v226, v7, v8, v9, v6);
          if (v201)
          {
            v16 = *(a2 + 8);
          }

          v175 = v14;
          v176 = v219;
          v177 = 17;
          goto LABEL_329;
        }

        v230 = 0;
        *&v231[8] = 0;
        *&v231[12] = 0;
        v20 = *(v16 + 16);
        outlined copy of DisplayList.Effect(v14, v12, 17);

        v223 = v20;
        if (!v20)
        {
          goto LABEL_325;
        }

        v218 = v10;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_59;
        }

        goto LABEL_381;
    }

    v17 = HIDWORD(v12);
    if ((v15 & 0x60) == 0 && ((v15 & 0x80) == 0 || !*(*(a2 + 16) + 16)))
    {
      v202 = v12;
      outlined copy of DisplayList.Effect(v14, v12, SBYTE4(v12));

      v153 = v202;
      v16 = 0;
      goto LABEL_342;
    }

    v230 = 0;
    *&v231[8] = 0;
    *&v231[12] = 0;
    v125 = *(v16 + 16);
    outlined copy of DisplayList.Effect(v14, v12, SBYTE4(v12));

    v223 = v125;
    if (!v125)
    {
      v16 = 0;
      v153 = v219;
      goto LABEL_342;
    }

    v222 = v17;
    v218 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (*(v16 + 16))
      {
LABEL_190:
        v15 = v16;
        v126 = 0;
        v127 = 0;
        v128 = 0;
        v5 = (v15 + 32);
        v129 = 1;
        do
        {
          v17 = v128;
          v128 = v129;
          v20 = &v5[80 * v17];
          closure #1 in ViewGraphTransform.apply(to:)(v20, a2, &v230);
          if (v17 >= *(v15 + 16))
          {
            goto LABEL_363;
          }

          v227 = *(v20 + 1);
          v228 = *(v20 + 2);
          v229[0] = *(v20 + 3);
          *(v229 + 12) = *(v20 + 60);
          v226 = *v20;
          DisplayList.Item.features.getter(&v225);
          v130 = *(v15 + 16);
          if (v17 >= v130)
          {
            goto LABEL_367;
          }

          v126 |= v225;
          v3 = *(v20 + 5);
          v4 = *(v20 + 8);
          v131 = v4 >> 30;
          if (v4 >> 30 > 1)
          {
            if (v131 != 2)
            {
              goto LABEL_191;
            }

            v133 = *(v3 + 16);
            if (v133)
            {
              if (v133 > 7)
              {
                v134 = v133 & 0x7FFFFFFFFFFFFFF8;
                v137 = (v3 + 188);
                v138 = 0uLL;
                v139 = v133 & 0x7FFFFFFFFFFFFFF8;
                v140 = 0uLL;
                do
                {
                  v141.i32[0] = *(v137 - 30);
                  v141.i32[1] = *(v137 - 20);
                  v141.i32[2] = *(v137 - 10);
                  v141.i32[3] = *v137;
                  v142.i32[0] = v137[10];
                  v142.i32[1] = v137[20];
                  v142.i32[2] = v137[30];
                  v142.i32[3] = v137[40];
                  v138 = vorrq_s8(v141, v138);
                  v140 = vorrq_s8(v142, v140);
                  v137 += 80;
                  v139 -= 8;
                }

                while (v139);
                v143 = vorrq_s8(v140, v138);
                *v143.i8 = vorr_s8(*v143.i8, *&vextq_s8(v143, v143, 8uLL));
                v132 = v143.i32[0] | v143.i32[1];
                if (v133 == v134)
                {
                  goto LABEL_219;
                }
              }

              else
              {
                v132 = 0;
                v134 = 0;
              }

              v144 = v133 - v134;
              v145 = (v3 + 40 * v134 + 68);
              do
              {
                v146 = *v145;
                v145 += 10;
                v132 |= v146;
                --v144;
              }

              while (v144);
            }

            else
            {
              v132 = 0;
            }
          }

          else if (v131)
          {
            v135 = *(v20 + 6);
            if (BYTE4(v135) == 2)
            {
              outlined copy of DisplayList.Effect(*(v20 + 5), *(v20 + 6), 2);
              v17 = v3;
            }

            else
            {
              v136 = *(v20 + 7);
              if (BYTE4(v135) == 7)
              {
                v17 = *(v3 + 28);
                outlined copy of DisplayList.Item.Value(v3, v135, v136, v4);
                outlined consume of DisplayList.Effect(v3, v135, 7);
              }

              else if (BYTE4(v135) == 18)
              {
                (*(*v3 + 120))(&v226);
                outlined copy of DisplayList.Item.Value(v3, v135, v136, v4);
                outlined consume of DisplayList.Effect(v3, v135, 18);

                v17 = v226;
              }

              else
              {
                outlined copy of DisplayList.Effect(v3, v135, SBYTE4(v135));

                outlined consume of DisplayList.Effect(v3, v135, SBYTE4(v135));

                v17 = 0;
              }
            }

            v132 = v17 | HIDWORD(v4);
            a2 = v224;
          }

          else
          {
            if (v3 >> 60 != 6 && v3 >> 60 != 11)
            {
LABEL_191:
              if (v128 == v223)
              {
                goto LABEL_240;
              }

              goto LABEL_192;
            }

            v132 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          }

LABEL_219:
          v127 |= v132;
          if (v128 == v223)
          {
LABEL_240:
            *v231 = v15;
            *&v231[12] = v127;
            *&v231[8] = v126;
            v16 = v230;
            v10 = v218;
            v153 = v219;
            v14 = v221;
            LOBYTE(v17) = v222;
            goto LABEL_342;
          }

          v130 = *(v15 + 16);
LABEL_192:
          v129 = v128 + 1;
        }

        while (v128 < v130);
      }
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      if (*(v16 + 16))
      {
        goto LABEL_190;
      }
    }

    __break(1u);
    goto LABEL_384;
  }

  if (v18 != 2)
  {
    return;
  }

  v4 = (a2 + 16);
  if (!*(*(a2 + 16) + 16))
  {
    return;
  }

  v40 = a1[6];
  v220 = a1;

  specialized Array._customRemoveLast()(&v226);
  if (v228)
  {
    specialized Array.remove(at:)(*(*v4 + 16) - 1, &v226);
  }

  v15 = v226;
  LODWORD(v5) = DWORD1(v226);
  v217 = *(&v227 + 1);
  v41 = *(v14 + 16);
  LODWORD(v222) = HIDWORD(v226);
  LODWORD(v223) = DWORD2(v226);
  LODWORD(v221) = v227;
  if (!v41)
  {
LABEL_95:
    outlined consume of DisplayList.Item.Value(v14, v40, v16, v17);
    outlined consume of DisplayList.Item.Value(v220[5], v220[6], v220[7], v220[8]);
    v70 = v220;
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    v220[8] = 3221225472;
LABEL_96:
    v71 = v70[4];
    v17 = v217;
    if (v217 > v71)
    {
      v71 = v217;
    }

    v70[4] = v71;
    if (v71 <= *v10)
    {
      v71 = *v10;
    }

    *v10 = v71;
    v20 = *v4;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v20;
    if ((v72 & 1) == 0)
    {
LABEL_370:
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      *v4 = v20;
    }

    v74 = *(v20 + 2);
    v73 = *(v20 + 3);
    v75 = v223;
    v76 = v222;
    v77 = v221;
    if (v74 >= v73 >> 1)
    {
      v210 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v20);
      v77 = v221;
      v76 = v222;
      v75 = v223;
      v20 = v210;
      *v4 = v210;
    }

    *(v20 + 2) = v74 + 1;
    v78 = &v20[32 * v74];
    *(v78 + 8) = v15;
    *(v78 + 9) = v5;
    *(v78 + 10) = v75;
    *(v78 + 11) = v76;
    *(v78 + 12) = v77;
    *(v78 + 7) = v17;
    return;
  }

  v3 = v231;
  v42 = v14 + 32;
  while (1)
  {
    v43 = *(v42 + 32);
    v44 = *(v42 + 16);
    *v231 = *v42;
    *&v231[16] = v44;
    v232 = v43;
    if (*v231 == v226 && *&v231[4] == __PAIR128__(__PAIR64__(v227, HIDWORD(v226)), *(&v226 + 4)))
    {
      break;
    }

    v42 += 40;
    if (!--v41)
    {
      goto LABEL_95;
    }
  }

  outlined init with copy of (StrongHash, DisplayList)(v231, &v226);
  outlined consume of DisplayList.Item.Value(v14, v40, v16, v17);
  v17 = *&v231[24];
  LODWORD(v14) = v232;
  v45 = v220;
  if ((v232 & 0x60) == 0)
  {
    v16 = HIDWORD(v232);
    if ((v14 & 0x80) == 0 || !*(*v4 + 16))
    {
LABEL_356:
      outlined consume of DisplayList.Item.Value(v45[5], v45[6], v45[7], v45[8]);
      v70 = v220;
      *(v220 + 5) = xmmword_18DDA6ED0;
      v220[7] = v17;
      v220[8] = v14 | (v16 << 32) | 0x40000000;
      goto LABEL_96;
    }
  }

  v230 = 0;
  v46 = *(*&v231[24] + 16);
  v219 = v46;
  if (!v46)
  {
    LODWORD(v14) = 0;
    v16 = 0;
LABEL_353:
    if (v46 <= v220[4])
    {
      v46 = v220[4];
    }

    v45 = v220;
    v220[4] = v46;
    goto LABEL_356;
  }

  v218 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_386;
  }

  if (!*(v17 + 16))
  {
LABEL_387:
    __break(1u);
    return;
  }

  while (2)
  {
    v14 = 0;
    v16 = 0;
    v47 = 0;
    v216 = v17 + 32;
    v48 = 1;
    while (1)
    {
      v154 = v47;
      v47 = v48;
      v20 = (v216 + 80 * v154);
      closure #1 in ViewGraphTransform.apply(to:)(v20, v224, &v230);
      if (v154 >= *(v17 + 16))
      {
        break;
      }

      v227 = *(v20 + 1);
      v228 = *(v20 + 2);
      v229[0] = *(v20 + 3);
      *(v229 + 12) = *(v20 + 60);
      v226 = *v20;
      v3 = &v226;
      DisplayList.Item.features.getter(&v225);
      v155 = *(v17 + 16);
      if (v154 >= v155)
      {
        goto LABEL_372;
      }

      v14 = v225 | v14;
      v3 = *(v20 + 5);
      v156 = *(v20 + 8);
      v157 = v156 >> 30;
      if (v156 >> 30 > 1)
      {
        if (v157 != 2)
        {
          goto LABEL_241;
        }

        v159 = *(v3 + 16);
        if (v159)
        {
          if (v159 > 7)
          {
            v160 = v159 & 0x7FFFFFFFFFFFFFF8;
            v164 = (v3 + 188);
            v165 = 0uLL;
            v166 = v159 & 0x7FFFFFFFFFFFFFF8;
            v167 = 0uLL;
            do
            {
              v168.i32[0] = *(v164 - 30);
              v168.i32[1] = *(v164 - 20);
              v168.i32[2] = *(v164 - 10);
              v168.i32[3] = *v164;
              v169.i32[0] = v164[10];
              v169.i32[1] = v164[20];
              v169.i32[2] = v164[30];
              v169.i32[3] = v164[40];
              v165 = vorrq_s8(v168, v165);
              v167 = vorrq_s8(v169, v167);
              v164 += 80;
              v166 -= 8;
            }

            while (v166);
            v170 = vorrq_s8(v167, v165);
            *v170.i8 = vorr_s8(*v170.i8, *&vextq_s8(v170, v170, 8uLL));
            v158 = v170.i32[0] | v170.i32[1];
            if (v159 == v160)
            {
              goto LABEL_269;
            }
          }

          else
          {
            v158 = 0;
            v160 = 0;
          }

          v171 = v159 - v160;
          v172 = (v3 + 40 * v160 + 68);
          do
          {
            v173 = *v172;
            v172 += 10;
            v158 |= v173;
            --v171;
          }

          while (v171);
        }

        else
        {
          v158 = 0;
        }
      }

      else if (v157)
      {
        v215 = v14;
        v161 = *(v20 + 6);
        if (BYTE4(v161) == 2)
        {
          outlined copy of DisplayList.Effect(v3, *(v20 + 6), 2);
          v163 = v3;
        }

        else
        {
          v162 = *(v20 + 7);
          if (BYTE4(v161) == 7)
          {
            v174 = v162;
            v214 = v162;
            v163 = *(v3 + 28);
            outlined copy of DisplayList.Item.Value(v3, v161, v174, v156);
            outlined consume of DisplayList.Effect(v3, v161, 7);
          }

          else if (BYTE4(v161) == 18)
          {
            (*(*v3 + 120))(&v226);
            outlined copy of DisplayList.Item.Value(v3, v161, v162, v156);
            outlined consume of DisplayList.Effect(v3, v161, 18);

            v163 = v226;
          }

          else
          {
            v213 = HIDWORD(v161);
            outlined copy of DisplayList.Effect(v3, v161, SBYTE4(v161));

            outlined consume of DisplayList.Effect(v3, v161, SBYTE4(v161));

            v163 = 0;
          }
        }

        v158 = v163 | HIDWORD(v156);
        v14 = v215;
      }

      else
      {
        if (v3 >> 60 != 6 && v3 >> 60 != 11)
        {
LABEL_241:
          if (v47 == v219)
          {
            goto LABEL_348;
          }

          goto LABEL_242;
        }

        v158 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      }

LABEL_269:
      v16 = v158 | v16;
      if (v47 == v219)
      {
LABEL_348:
        v46 = v230;
        v10 = v218;
        goto LABEL_353;
      }

      v155 = *(v17 + 16);
LABEL_242:
      v48 = v47 + 1;
      if (v47 >= v155)
      {
        goto LABEL_387;
      }
    }

    __break(1u);
LABEL_372:
    __break(1u);
LABEL_373:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
    *v3 = v20;
LABEL_105:
    v81 = *(v20 + 2);
    v80 = *(v20 + 3);
    v4 = (v81 + 1);
    if (v81 >= v80 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v20);
      *v3 = v20;
    }

    *(v20 + 2) = v4;
    v82 = &v20[32 * v81];
    *(v82 + 4) = v6;
    *(v82 + 5) = v7;
    *(v82 + 12) = v47;
    *(v82 + 7) = v17;
    v83 = *v3;
    a2 = v224;
    if ((v15 & 0x60) == 0 && ((v15 & 0x80) == 0 || !*(v83 + 16)) || (v230 = 0, *&v231[8] = 0, *&v231[12] = 0, (v223 = *(v16 + 16)) == 0))
    {
      v16 = 0;
LABEL_274:
      v10 = v218;
      if (!*(v83 + 16))
      {
        __break(1u);
        goto LABEL_375;
      }

      specialized Array._customRemoveLast()(&v226);
      if (v228)
      {
        specialized Array.remove(at:)(*(*v3 + 16) - 1, &v226);
      }

      v175 = v14;
      v176 = v219;
      v177 = 16;
LABEL_329:
      outlined consume of DisplayList.Effect(v175, v176, v177);
      v14 = 0;
      v153 = 0;
      LOBYTE(v17) = 20;
      goto LABEL_342;
    }

    v222 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_377:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      if (!*(v16 + 16))
      {
        goto LABEL_378;
      }

LABEL_111:
      v84 = 0;
      LODWORD(v5) = 0;
      v85 = 0;
      v4 = (v16 + 32);
      v86 = 1;
      while (1)
      {
        v17 = v85;
        v85 = v86;
        v20 = &v4[80 * v17];
        closure #1 in ViewGraphTransform.apply(to:)(v20, a2, &v230);
        if (v17 >= *(v16 + 16))
        {
          goto LABEL_360;
        }

        v227 = *(v20 + 1);
        v228 = *(v20 + 2);
        v229[0] = *(v20 + 3);
        *(v229 + 12) = *(v20 + 60);
        v226 = *v20;
        DisplayList.Item.features.getter(&v225);
        v87 = *(v16 + 16);
        if (v17 >= v87)
        {
          goto LABEL_364;
        }

        v15 = v16;
        v84 |= v225;
        v3 = *(v20 + 5);
        v88 = *(v20 + 8);
        v89 = v88 >> 30;
        if (v88 >> 30 > 1)
        {
          if (v89 != 2)
          {
            v16 = v15;
            if (v85 == v223)
            {
              goto LABEL_237;
            }

            goto LABEL_113;
          }

          v91 = *(v3 + 16);
          if (!v91)
          {
            v90 = 0;
LABEL_143:
            v16 = v15;
            goto LABEL_144;
          }

          v16 = v15;
          if (v91 > 7)
          {
            v92 = v91 & 0x7FFFFFFFFFFFFFF8;
            v94 = (v3 + 188);
            v95 = 0uLL;
            v96 = v91 & 0x7FFFFFFFFFFFFFF8;
            v97 = 0uLL;
            do
            {
              v98.i32[0] = *(v94 - 30);
              v98.i32[1] = *(v94 - 20);
              v98.i32[2] = *(v94 - 10);
              v98.i32[3] = *v94;
              v99.i32[0] = v94[10];
              v99.i32[1] = v94[20];
              v99.i32[2] = v94[30];
              v99.i32[3] = v94[40];
              v95 = vorrq_s8(v98, v95);
              v97 = vorrq_s8(v99, v97);
              v94 += 80;
              v96 -= 8;
            }

            while (v96);
            v100 = vorrq_s8(v97, v95);
            *v100.i8 = vorr_s8(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
            v90 = v100.i32[0] | v100.i32[1];
            if (v91 == v92)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v90 = 0;
            v92 = 0;
          }

          v101 = v91 - v92;
          v102 = (v3 + 40 * v92 + 68);
          do
          {
            v103 = *v102;
            v102 += 10;
            v90 |= v103;
            --v101;
          }

          while (v101);
        }

        else
        {
          if (v89)
          {
            v93 = *(v20 + 6);
            if (BYTE4(v93) == 2)
            {
              outlined copy of DisplayList.Effect(*(v20 + 5), *(v20 + 6), 2);
              v17 = v3;
            }

            else
            {
              v20 = *(v20 + 7);
              if (BYTE4(v93) == 7)
              {
                v17 = *(v3 + 28);
                outlined copy of DisplayList.Item.Value(v3, v93, v20, v88);
                outlined consume of DisplayList.Effect(v3, v93, 7);
              }

              else if (BYTE4(v93) == 18)
              {
                (*(*v3 + 120))(&v226);
                outlined copy of DisplayList.Item.Value(v3, v93, v20, v88);
                outlined consume of DisplayList.Effect(v3, v93, 18);

                v17 = v226;
              }

              else
              {
                outlined copy of DisplayList.Effect(v3, v93, SBYTE4(v93));

                outlined consume of DisplayList.Effect(v3, v93, SBYTE4(v93));

                v17 = 0;
              }
            }

            v90 = v17 | HIDWORD(v88);
            a2 = v224;
            goto LABEL_143;
          }

          if (v3 >> 60 == 6)
          {
            v90 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            goto LABEL_143;
          }

          v16 = v15;
          if (v3 >> 60 != 11)
          {
            if (v85 == v223)
            {
              goto LABEL_237;
            }

            goto LABEL_113;
          }

          v90 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
        }

LABEL_144:
        LODWORD(v5) = v90 | v5;
        if (v85 == v223)
        {
LABEL_237:
          *v231 = v16;
          *&v231[12] = v5;
          *&v231[8] = v84;
          v16 = v230;
          v14 = v221;
          v3 = v222;
          v83 = *v222;
          goto LABEL_274;
        }

        v87 = *(v16 + 16);
LABEL_113:
        v86 = v85 + 1;
        if (v85 >= v87)
        {
          goto LABEL_378;
        }
      }
    }

    if (*(v16 + 16))
    {
      goto LABEL_111;
    }

LABEL_378:
    __break(1u);
LABEL_379:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    if (!*(v16 + 16))
    {
      goto LABEL_380;
    }

LABEL_150:
    LODWORD(v15) = 0;
    v104 = 0;
    v105 = 0;
    v222 = (v16 + 32);
    v106 = 1;
    while (2)
    {
      v17 = v105;
      v105 = v106;
      v20 = &v222[10 * v17];
      closure #1 in ViewGraphTransform.apply(to:)(v20, a2, &v230);
      if (v17 >= *(v16 + 16))
      {
        goto LABEL_361;
      }

      v227 = *(v20 + 1);
      v228 = *(v20 + 2);
      v229[0] = *(v20 + 3);
      *(v229 + 12) = *(v20 + 60);
      v226 = *v20;
      DisplayList.Item.features.getter(&v225);
      v107 = *(v16 + 16);
      if (v17 >= v107)
      {
        goto LABEL_365;
      }

      v5 = v4;
      v108 = v16;
      LODWORD(v15) = v225 | v15;
      v3 = *(v20 + 5);
      v109 = *(v20 + 8);
      v110 = v109 >> 30;
      if (v109 >> 30 > 1)
      {
        if (v110 != 2)
        {
          v16 = v108;
          v4 = v5;
          if (v105 == v223)
          {
            goto LABEL_238;
          }

          goto LABEL_152;
        }

        v112 = *(v3 + 16);
        if (!v112)
        {
          v111 = 0;
          break;
        }

        v16 = v108;
        if (v112 > 7)
        {
          v113 = v112 & 0x7FFFFFFFFFFFFFF8;
          v115 = (v3 + 188);
          v116 = 0uLL;
          v117 = v112 & 0x7FFFFFFFFFFFFFF8;
          v118 = 0uLL;
          v4 = v5;
          do
          {
            v119.i32[0] = *(v115 - 30);
            v119.i32[1] = *(v115 - 20);
            v119.i32[2] = *(v115 - 10);
            v119.i32[3] = *v115;
            v120.i32[0] = v115[10];
            v120.i32[1] = v115[20];
            v120.i32[2] = v115[30];
            v120.i32[3] = v115[40];
            v116 = vorrq_s8(v119, v116);
            v118 = vorrq_s8(v120, v118);
            v115 += 80;
            v117 -= 8;
          }

          while (v117);
          v121 = vorrq_s8(v118, v116);
          *v121.i8 = vorr_s8(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
          v111 = v121.i32[0] | v121.i32[1];
          if (v112 == v113)
          {
            goto LABEL_184;
          }
        }

        else
        {
          v111 = 0;
          v113 = 0;
          v4 = v5;
        }

        v122 = v112 - v113;
        v123 = (v3 + 40 * v113 + 68);
        do
        {
          v124 = *v123;
          v123 += 10;
          v111 |= v124;
          --v122;
        }

        while (v122);
        goto LABEL_184;
      }

      if (v110)
      {
        v114 = *(v20 + 6);
        if (BYTE4(v114) == 2)
        {
          outlined copy of DisplayList.Effect(*(v20 + 5), *(v20 + 6), 2);
          v17 = v3;
        }

        else
        {
          v20 = *(v20 + 7);
          if (BYTE4(v114) == 7)
          {
            v17 = *(v3 + 28);
            outlined copy of DisplayList.Item.Value(v3, v114, v20, v109);
            outlined consume of DisplayList.Effect(v3, v114, 7);
          }

          else if (BYTE4(v114) == 18)
          {
            (*(*v3 + 120))(&v226);
            outlined copy of DisplayList.Item.Value(v3, v114, v20, v109);
            outlined consume of DisplayList.Effect(v3, v114, 18);

            v17 = v226;
          }

          else
          {
            outlined copy of DisplayList.Effect(v3, v114, SBYTE4(v114));

            outlined consume of DisplayList.Effect(v3, v114, SBYTE4(v114));

            v17 = 0;
          }
        }

        v111 = v17 | HIDWORD(v109);
        a2 = v224;
      }

      else
      {
        if (v3 >> 60 != 6)
        {
          v16 = v108;
          if (v3 >> 60 == 11)
          {
            v111 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            goto LABEL_183;
          }

          v4 = v5;
          if (v105 == v223)
          {
            goto LABEL_238;
          }

LABEL_152:
          v106 = v105 + 1;
          if (v105 >= v107)
          {
            goto LABEL_380;
          }

          continue;
        }

        v111 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      }

      break;
    }

    v16 = v108;
LABEL_183:
    v4 = v5;
LABEL_184:
    v104 |= v111;
    if (v105 != v223)
    {
      v107 = *(v16 + 16);
      goto LABEL_152;
    }

LABEL_238:
    *v231 = v16;
    *&v231[12] = v104;
    *&v231[8] = v15;
    v16 = v230;
    v14 = v221;
LABEL_282:
    v15 = v217;
    if ((v217 & 0x60) == 0 && ((v217 & 0x80) == 0 || !*(*(a2 + 16) + 16)))
    {
      v10 = v218;
      v203 = v215;
      LODWORD(v5) = v214;
      goto LABEL_341;
    }

    v230 = 0;
    v178 = *(v4 + 2);
    v223 = v178;
    if (v178)
    {
      v222 = v16;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (*(v4 + 2))
        {
          goto LABEL_286;
        }

LABEL_385:
        __break(1u);
LABEL_386:
        v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
        if (!*(v17 + 16))
        {
          goto LABEL_387;
        }

        continue;
      }

LABEL_384:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      if (!*(v4 + 2))
      {
        goto LABEL_385;
      }

LABEL_286:
      v179 = 0;
      LODWORD(v5) = 0;
      v180 = 0;
      v15 = (v4 + 32);
      v181 = 1;
      while (2)
      {
        v17 = v180;
        v180 = v181;
        v20 = (v15 + 80 * v17);
        closure #1 in ViewGraphTransform.apply(to:)(v20, a2, &v230);
        if (v17 >= *(v4 + 2))
        {
          goto LABEL_368;
        }

        v227 = *(v20 + 1);
        v228 = *(v20 + 2);
        v229[0] = *(v20 + 3);
        *(v229 + 12) = *(v20 + 60);
        v226 = *v20;
        DisplayList.Item.features.getter(&v225);
        v182 = *(v4 + 2);
        if (v17 >= v182)
        {
LABEL_369:
          __break(1u);
          goto LABEL_370;
        }

        v179 |= v225;
        v3 = *(v20 + 5);
        v183 = *(v20 + 8);
        v184 = v183 >> 30;
        if (v183 >> 30 > 1)
        {
          if (v184 != 2)
          {
            v14 = v221;
            if (v180 == v223)
            {
              goto LABEL_321;
            }

            goto LABEL_288;
          }

          v186 = *(v3 + 16);
          v14 = v221;
          if (v186)
          {
            if (v186 > 7)
            {
              v187 = v186 & 0x7FFFFFFFFFFFFFF8;
              v190 = (v3 + 188);
              v191 = 0uLL;
              v192 = v186 & 0x7FFFFFFFFFFFFFF8;
              v193 = 0uLL;
              do
              {
                v194.i32[0] = *(v190 - 30);
                v194.i32[1] = *(v190 - 20);
                v194.i32[2] = *(v190 - 10);
                v194.i32[3] = *v190;
                v195.i32[0] = v190[10];
                v195.i32[1] = v190[20];
                v195.i32[2] = v190[30];
                v195.i32[3] = v190[40];
                v191 = vorrq_s8(v194, v191);
                v193 = vorrq_s8(v195, v193);
                v190 += 80;
                v192 -= 8;
              }

              while (v192);
              v196 = vorrq_s8(v193, v191);
              *v196.i8 = vorr_s8(*v196.i8, *&vextq_s8(v196, v196, 8uLL));
              v185 = v196.i32[0] | v196.i32[1];
              if (v186 == v187)
              {
                break;
              }
            }

            else
            {
              v185 = 0;
              v187 = 0;
            }

            v197 = v186 - v187;
            v198 = (v3 + 40 * v187 + 68);
            do
            {
              v199 = *v198;
              v198 += 10;
              v185 |= v199;
              --v197;
            }

            while (v197);
          }

          else
          {
            v185 = 0;
          }
        }

        else
        {
          if (v184)
          {
            v188 = *(v20 + 6);
            if (BYTE4(v188) == 2)
            {
              outlined copy of DisplayList.Effect(*(v20 + 5), *(v20 + 6), 2);
              v17 = v3;
            }

            else
            {
              v189 = *(v20 + 7);
              if (BYTE4(v188) == 7)
              {
                v17 = *(v3 + 28);
                outlined copy of DisplayList.Item.Value(v3, v188, v189, v183);
                outlined consume of DisplayList.Effect(v3, v188, 7);
              }

              else if (BYTE4(v188) == 18)
              {
                (*(*v3 + 120))(&v226);
                outlined copy of DisplayList.Item.Value(v3, v188, v189, v183);
                outlined consume of DisplayList.Effect(v3, v188, 18);

                v17 = v226;
              }

              else
              {
                outlined copy of DisplayList.Effect(v3, v188, SBYTE4(v188));

                outlined consume of DisplayList.Effect(v3, v188, SBYTE4(v188));

                v17 = 0;
              }
            }

            v185 = v17 | HIDWORD(v183);
            a2 = v224;
          }

          else
          {
            if (v3 >> 60 != 6)
            {
              v14 = v221;
              if (v3 >> 60 == 11)
              {
                v185 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                break;
              }

              if (v180 == v223)
              {
                goto LABEL_321;
              }

LABEL_288:
              v181 = v180 + 1;
              if (v180 >= v182)
              {
                goto LABEL_385;
              }

              continue;
            }

            v185 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          }

          v14 = v221;
        }

        break;
      }

      LODWORD(v5) = v185 | v5;
      if (v180 == v223)
      {
LABEL_321:
        v178 = v230;
        LOWORD(v15) = v179;
        v16 = v222;
        goto LABEL_338;
      }

      v182 = *(v4 + 2);
      goto LABEL_288;
    }

    break;
  }

  LODWORD(v5) = 0;
  LOWORD(v15) = 0;
LABEL_338:
  if (v178 > v16)
  {
    v16 = v178;
  }

  v10 = v218;
  v203 = v215;
LABEL_341:
  v204 = swift_allocObject();
  *(v204 + 16) = v4;
  *(v204 + 24) = v15;
  *(v204 + 28) = v5;
  *(v204 + 32) = v203;
  LOBYTE(v17) = 7;
  outlined consume of DisplayList.Effect(v14, v219, 7);
  v153 = 0;
  v14 = v204;
LABEL_342:
  v205 = *v231;
  v206 = v153 | (v17 << 32);
  v207 = *&v231[8] | (*&v231[12] << 32) | 0x40000000;
  outlined consume of DisplayList.Item.Value(v220[5], v220[6], v220[7], v220[8]);
  v220[6] = v206;
  v220[7] = v205;
  v220[8] = v207;
  v208 = v220[4];
  if (v16 > v208)
  {
    v208 = v16;
  }

  v220[4] = v208;
  v220[5] = v14;
  v209 = *v10;
  if (v16 > *v10)
  {
    v209 = v16;
  }

  *v10 = v209;
}

uint64_t sub_18D377310()
{

  return swift_deallocObject();
}

uint64_t sub_18D377348()
{

  return swift_deallocObject();
}

void specialized DisplayList.transform(_:)(uint64_t a1, uint64_t a2, int64_t *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_39;
    }

    while (*(v3 + 2))
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v38 = a2;
      v10 = 1;
      v37 = v4;
      while (1)
      {
        v11 = v9;
        v9 = v10;
        v12 = &v3[80 * v11 + 32];
        closure #1 in ViewGraphTransform.apply(to:)(v12, a2, a3);
        if (v11 >= *(v3 + 2))
        {
          break;
        }

        v13 = *(v12 + 48);
        v40[2] = *(v12 + 32);
        v41[0] = v13;
        *(v41 + 12) = *(v12 + 60);
        v14 = *(v12 + 16);
        v40[0] = *v12;
        v40[1] = v14;
        DisplayList.Item.features.getter(&v39);
        v15 = *(v3 + 2);
        if (v11 >= v15)
        {
          goto LABEL_38;
        }

        v7 |= v39;
        v16 = *(v12 + 40);
        v17 = *(v12 + 64);
        v18 = v17 >> 30;
        if (v17 >> 30 > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_5;
          }

          v20 = *(v16 + 16);
          if (v20)
          {
            if (v20 > 7)
            {
              v21 = v20 & 0x7FFFFFFFFFFFFFF8;
              v26 = (v16 + 188);
              v27 = 0uLL;
              v28 = v20 & 0x7FFFFFFFFFFFFFF8;
              v29 = 0uLL;
              do
              {
                v30.i32[0] = *(v26 - 30);
                v30.i32[1] = *(v26 - 20);
                v30.i32[2] = *(v26 - 10);
                v30.i32[3] = *v26;
                v31.i32[0] = v26[10];
                v31.i32[1] = v26[20];
                v31.i32[2] = v26[30];
                v31.i32[3] = v26[40];
                v27 = vorrq_s8(v30, v27);
                v29 = vorrq_s8(v31, v29);
                v26 += 80;
                v28 -= 8;
              }

              while (v28);
              v32 = vorrq_s8(v29, v27);
              *v32.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
              v19 = v32.i32[0] | v32.i32[1];
              if (v20 == v21)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v19 = 0;
              v21 = 0;
            }

            v33 = v20 - v21;
            v34 = (v16 + 40 * v21 + 68);
            do
            {
              v35 = *v34;
              v34 += 10;
              v19 |= v35;
              --v33;
            }

            while (v33);
          }

          else
          {
            v19 = 0;
          }
        }

        else if (v18)
        {
          v22 = a3;
          v23 = *(v12 + 48);
          if (BYTE4(v23) == 2)
          {
            outlined copy of DisplayList.Effect(*(v12 + 40), *(v12 + 48), 2);
            v25 = v16;
          }

          else
          {
            v24 = *(v12 + 56);
            if (BYTE4(v23) == 7)
            {
              v25 = *(v16 + 28);
              outlined copy of DisplayList.Item.Value(v16, v23, v24, v17);
              outlined consume of DisplayList.Effect(v16, v23, 7);
            }

            else if (BYTE4(v23) == 18)
            {
              (*(*v16 + 120))(v40);
              outlined copy of DisplayList.Item.Value(v16, v23, v24, v17);
              outlined consume of DisplayList.Effect(v16, v23, 18);

              v25 = v40[0];
            }

            else
            {
              outlined copy of DisplayList.Effect(v16, v23, SBYTE4(v23));

              outlined consume of DisplayList.Effect(v16, v23, SBYTE4(v23));

              v25 = 0;
            }
          }

          v19 = v25 | HIDWORD(v17);
          a3 = v22;
          v4 = v37;
          a2 = v38;
        }

        else
        {
          if (v16 >> 60 != 6 && v16 >> 60 != 11)
          {
LABEL_5:
            if (v9 == v4)
            {
              goto LABEL_35;
            }

            goto LABEL_6;
          }

          v19 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
        }

LABEL_33:
        v8 |= v19;
        if (v9 == v4)
        {
LABEL_35:
          *a1 = v3;
          *(a1 + 12) = v8;
          *(a1 + 8) = v7;
          return;
        }

        v15 = *(v3 + 2);
LABEL_6:
        v10 = v9 + 1;
        if (v9 >= v15)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

LABEL_40:
    __break(1u);
  }
}

uint64_t initializeWithCopy for LinkDestination.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t outlined init with take of LinkDestination.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkDestination.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double outlined copy of Environment<OpenURLAction>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    return outlined copy of OpenURLAction.Handler(a1, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t specialized Color.Resolved.draw(path:style:in:bounds:)(double *a1, uint64_t a2, double *a3, float a4, float a5, float a6, float a7)
{
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  type metadata accessor for ColorBox<Color.OpacityColor>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 20) = a5;
  *(v16 + 24) = a6;
  *(v16 + 28) = a7;
  *(v16 + 32) = 2143289344;
  *&v22[0] = v16;
  v23[24] = 1;
  v17 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v17;
  v20 = v14;
  v21 = v15;
  GraphicsContext.draw(_:with:style:)(a1, v22, v19, a3);
  v24[2] = v22[2];
  v25[0] = *v23;
  *(v25 + 9) = *&v23[9];
  v24[0] = v22[0];
  v24[1] = v22[1];
  return outlined destroy of GraphicsContext.Shading(v24);
}

void lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity()
{
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DisplayList_Identity, &type metadata for _DisplayList_Identity, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity);
  }
}

{
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DisplayList_Identity, &type metadata for _DisplayList_Identity, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity);
  }
}

void lazy protocol witness table accessor for type RedactionReasons and conformance RedactionReasons()
{
  if (!lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons)
  {
    swift_getWitnessTable(protocol conformance descriptor for RedactionReasons, &type metadata for RedactionReasons, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons);
  }
}

{
  if (!lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons)
  {
    swift_getWitnessTable(protocol conformance descriptor for RedactionReasons, &type metadata for RedactionReasons, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons);
  }
}

{
  if (!lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons)
  {
    swift_getWitnessTable(protocol conformance descriptor for RedactionReasons, &type metadata for RedactionReasons, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons);
  }
}

{
  if (!lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons)
  {
    swift_getWitnessTable(protocol conformance descriptor for RedactionReasons, &type metadata for RedactionReasons, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons);
  }
}

uint64_t type metadata completion function for ArchivedViewCore.Metadata(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for readerKey()
{
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CodingUserInfoKey?, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static ArchiveReader.readerKey);
  v4 = __swift_project_value_buffer(v3, static ArchiveReader.readerKey);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for cacheKey()
{
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CodingUserInfoKey?, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static ArchiveReader.cacheKey);
  v4 = __swift_project_value_buffer(v3, static ArchiveReader.cacheKey);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for namedImagesKey()
{
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CodingUserInfoKey?, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static ArchiveReader.namedImagesKey);
  v4 = __swift_project_value_buffer(v3, static ArchiveReader.namedImagesKey);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for preferredBundleLanguageKey(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for [ResolvableTextSegmentAttribute.Value](0, &lazy cache variable for type metadata for CodingUserInfoKey?, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v6, a2);
  v7 = __swift_project_value_buffer(v6, a2);
  CodingUserInfoKey.init(rawValue:)();
  v8 = *(v6 - 8);
  result = (*(v8 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v8 + 32))(v7, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for CodableAccessibilityAttachmentStorage.V2(uint64_t a1)
{
  result = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata completion function for CodableAccessibilityAttachmentStorage.VBase(uint64_t a1)
{
  type metadata accessor for LinkDestination.Configuration?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void lazy protocol witness table accessor for type ContainerRelativeShape and conformance ContainerRelativeShape()
{
  if (!lazy protocol witness table cache variable for type ContainerRelativeShape and conformance ContainerRelativeShape)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContainerRelativeShape, &type metadata for ContainerRelativeShape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContainerRelativeShape and conformance ContainerRelativeShape);
  }
}

{
  if (!lazy protocol witness table cache variable for type ContainerRelativeShape and conformance ContainerRelativeShape)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContainerRelativeShape, &type metadata for ContainerRelativeShape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContainerRelativeShape and conformance ContainerRelativeShape);
  }
}

void instantiation function for generic protocol witness table for ContainerRelativeShape(uint64_t a1)
{
  lazy protocol witness table accessor for type ContainerRelativeShape and conformance ContainerRelativeShape();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type ContainerRelativeShape and conformance ContainerRelativeShape();
  *(a1 + 8) = v2;
}

void lazy protocol witness table accessor for type ViewBodyAccessor<ContainerRelativeShape> and conformance ViewBodyAccessor<A>()
{
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<ContainerRelativeShape> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ContainerRelativeShape>, &type metadata for ContainerRelativeShape, &protocol witness table for ContainerRelativeShape, type metadata accessor for ViewBodyAccessor);
    swift_getWitnessTable(protocol conformance descriptor for ViewBodyAccessor<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ViewBodyAccessor<ContainerRelativeShape> and conformance ViewBodyAccessor<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<FontDefinitionKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontDefinitionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontDefinitionKey>, &type metadata for FontDefinitionKey, &protocol witness table for FontDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontDefinitionKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata completion function for ReferenceDateModifier(uint64_t a1)
{
  type metadata accessor for TimeZone?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata completion function for AccessibilityNodeAttachment.Storage(uint64_t a1)
{
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
  }
}

uint64_t type metadata completion function for CodableAccessibilityAttachmentStorage.V3(uint64_t a1)
{
  result = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void lazy protocol witness table accessor for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage()
{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityValueStorage, &type metadata for CodableAccessibilityValueStorage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityValueStorage, &type metadata for CodableAccessibilityValueStorage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage);
  }
}

uint64_t type metadata completion function for AccessibilityNodeAttachment(uint64_t a1)
{
  result = type metadata accessor for AccessibilityNodeAttachment.Storage(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata completion function for CodableAccessibilityAttachmentStorage(uint64_t a1)
{
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for _ShapeView<Path, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Path, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type Path and conformance Path();
    v5[0] = &type metadata for Path;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Path, ForegroundStyle>);
    }
  }
}

uint64_t closure #2 in static _MaskAlignmentEffect._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for _MaskAlignmentEffect(0, a2, a3, a4);
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_4, v8, &type metadata for Alignment, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

void *protocol witness for static View._makeView(view:inputs:) in conformance Path@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t closure #1 in makeMask #1 <A>(inputs:) in static _MaskAlignmentEffect._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _MaskAlignmentEffect(0, a2, a3, a4);
  v7 = *(v6 + 36);
  v11[2] = v6;
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

void *protocol witness for static View._makeView(view:inputs:) in conformance Rectangle@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA15ForegroundStyleVTt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    v10 = *(a2 + 16);
    v20[2] = *(a2 + 32);
    v20[3] = v8;
    v11 = *(a2 + 36);
    v20[4] = v9;
    v21 = *(a2 + 80);
    v20[0] = *a2;
    v20[1] = v10;
    LOBYTE(v16) = 0;
    swift_beginAccess();
    v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v20, &v16, 0x100000000);
    swift_endAccess();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA010ForegroundS0VG_Tt5B5(v4, a2, v12, 0, &v17);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_13;
    }

    if ((v11 & 2) != 0)
    {
      v16 = v4;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, ForegroundStyle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<Rectangle, ForegroundStyle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, ForegroundStyle>>, "]");
      result = Attribute.init<A>(body:value:flags:update:)();
      v14 = v18 | 0x80;
LABEL_14:
      *a3 = v17;
      *(a3 + 8) = v14;
      *(a3 + 12) = result;
      return result;
    }

LABEL_13:
    v14 = v18;
    result = v19;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v15;
  return result;
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA010ForegroundS0VG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<Rectangle, ForegroundStyle>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, ForegroundStyle>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, ForegroundStyle>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle, ForegroundStyle>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, ForegroundStyle>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = v8;
    *(v32 + 24) = 0;
    *(v32 + 128) = 0u;
    *(v32 + 144) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, ForegroundStyle>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<Rectangle, ForegroundStyle>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, ForegroundStyle>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Rectangle, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

uint64_t Path.mix(with:by:)@<X0>(uint64_t a1@<X8>)
{
  Path.retainRBPath()();
  Path.retainRBPath()();
  v3 = RBPathCopyInterpolatedPath();
  v5 = v4;
  if (RBPathIsNull(v3, v4))
  {
    v6 = 0;
    v7 = -1;
  }

  else
  {
    type metadata accessor for Path.PathBox();
    v6 = swift_allocObject();
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 16) = 1;
    v7 = 5;
    *(v6 + 24) = v3;
    *(v6 + 32) = v5;
  }

  RBPathRelease();
  result = RBPathRelease();
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v7;
  return result;
}

uint64_t static Font.default.getter()
{
  type metadata accessor for FontBox<Font.DefaultProvider>(0);

  return swift_allocObject();
}

uint64_t protocol witness for FontProvider.resolveDescriptor(in:) in conformance Font.DefaultProvider(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  return (*(**(a1 + 32) + 96))(v3, *(a1 + 32));
}

double destroy for Font.Resolved(void *a1)
{

  return result;
}

void lazy protocol witness table accessor for type RBImageRendererProperty and conformance RBImageRendererProperty()
{
  if (!lazy protocol witness table cache variable for type RBImageRendererProperty and conformance RBImageRendererProperty)
  {
    type metadata accessor for RBImageRendererProperty(255);
    swift_getWitnessTable(protocol conformance descriptor for RBImageRendererProperty, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RBImageRendererProperty and conformance RBImageRendererProperty);
  }
}

uint64_t GraphicsContext.addSDFGradientFilter(_:)(uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      v1 = 0x3F00000000000000;
      v2 = 3204448256;
    }

    else
    {
      v1 = 0;
      v2 = 3212836864;
    }

    if (one-time initialization token for system != -1)
    {
      swift_once();
    }

    v3 = static ShaderLibrary.system;
    type metadata accessor for _ContiguousArrayStorage<Shader.Argument>();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18DDA6EB0;
    *(v4 + 32) = v2 | v1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
    *(v4 + 52) = 1;
    *&v6 = v3;
    *(&v6 + 1) = 0xD000000000000010;
    *&v7 = 0x800000018DD79660;
    *(&v7 + 1) = v4;
    v8 = 0u;
    v9 = 0u;
    *&v10 = 0;
    v11 = 3221225472;
    v5 = v3;
    GraphicsContext.addFilter(_:options:)(&v6, 0);
    v12[3] = v9;
    v12[4] = v10;
    v13 = v11;
    v12[0] = v6;
    v12[1] = v7;
    v12[2] = v8;
    return outlined destroy of GraphicsContext.Filter(v12);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Shader.Argument>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Shader.Argument>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Shader.Argument>);
    }
  }
}

double outlined copy of Shader.Argument.Storage(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 5u)
  {
    if (a4 != 4)
    {
      if (a4 != 5)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_9:

    return result;
  }

  switch(a4)
  {
    case 6u:
      goto LABEL_9;
    case 8u:
LABEL_8:

      return result;
    case 9u:
      return outlined copy of Data._Representation(a1, a2);
  }

  return result;
}

double outlined consume of Shader.Argument.Storage(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 5u)
  {
    if (a4 != 4)
    {
      if (a4 != 5)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_9:

    return result;
  }

  switch(a4)
  {
    case 6u:
      goto LABEL_9;
    case 8u:
LABEL_8:

      return result;
    case 9u:
      return outlined consume of Data._Representation(a1, a2);
  }

  return result;
}

uint64_t initializeWithCopy for _ResolvedKeyframes.Track(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;

  return a1;
}

double destroy for _ResolvedKeyframes.Track(uint64_t a1)
{

  return result;
}

void implicit closure #1 in _ResolvedKeyframes.duration.getter(uint64_t a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

double KeyframeTimeline.value(time:)@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, double)@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = *(a1 + 16);
  (*(*(v8 - 8) + 16))(a3, v4, v8);
  v11 = type metadata accessor for _ResolvedKeyframes(0, v8, v9, v10);

  a2(a3, v11, a4);

  return result;
}

void _ResolvedKeyframes.update(value:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = *v5;
  v9 = type metadata accessor for _ResolvedKeyframes.Track(0, *(a2 + 16), a3, a4);

  if (MEMORY[0x193ABF2C0](v10, v9))
  {
    v11 = 0;
    v12 = v8 + 64;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (!IsNativeType)
      {
        break;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_10;
      }

      v15 = *(v12 - 24);

      v15(a1, a5);

      ++v11;
      v12 += 40;
      if (v14 == MEMORY[0x193ABF2C0](v8, v9))
      {
        goto LABEL_6;
      }
    }

    _ArrayBuffer._getElementSlowPath(_:)();
    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t specialized FluidSpringAnimation.animate<A>(value:time:context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, float64_t a3@<D0>, float64_t a4@<D1>, float64_t a5@<D2>, float64_t a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVyAHy12CoreGraphics7CGFloatVAKGALG_AA06SpringD033_73E5E3E568519775ECB92F029EBA0DDALLVyAMGTt0B5(*a1, &v89);
  v16 = a8;
  if (a10 > 0.0)
  {
    v16 = a8;
    if (*(&v96 + 1) != 0.0)
    {
      v17 = (a7 - *&v96) / a10;
      if (v17 <= 1.0)
      {
        v18 = (a7 - *&v96) / a10;
      }

      else
      {
        v18 = 1.0;
      }

      v19 = v17 < 0.0;
      v20 = 0.0;
      if (!v19)
      {
        v20 = v18;
      }

      v16 = *(&v96 + 1) * (1.0 - v20 * v20 * (3.0 - (v20 + v20))) + a8;
    }
  }

  if (v16 <= 0.0)
  {
    v21 = INFINITY;
  }

  else
  {
    v21 = 6.28318531 / v16 * (6.28318531 / v16);
  }

  if (v21 > 45000.0)
  {
    v21 = 45000.0;
  }

  if (v16 <= a7 - *(&v95 + 1))
  {
    *(a1 + 17) = 1;
  }

  v22 = *&v95;
  if (a7 - *&v95 > 1.0)
  {
    v22 = a7 + -0.0166666667;
    *&v95 = a7 + -0.0166666667;
  }

  v23 = v89;
  v24 = v90;
  if (v22 >= a7)
  {
    v80 = v91;
    v81 = v92;
    v39 = v93.f64[1];
    v40.f64[0] = a3;
    v40.f64[1] = a4;
    v38 = v94.f64[1];
    v78 = v94.f64[0];
    v79 = v93.f64[0];
    v41.f64[0] = a5;
    v41.f64[1] = a6;
    v70 = vsubq_f64(v40, v89);
    v71 = vsubq_f64(v41, v90);
    v76 = v90;
    v77 = v89;
  }

  else
  {
    v25 = sqrt(v21) * -2.0 * a9;
    v26 = v93;
    v27 = v94;
    v28.f64[0] = a5;
    v28.f64[1] = a6;
    v29.f64[0] = a3;
    v29.f64[1] = a4;
    v30 = vdupq_n_s64(0x3F5B4E81B4E81B4FuLL);
    v31 = v91;
    v32 = v92;
    v33 = vdupq_n_s64(0x3F6B4E81B4E81B4FuLL);
    do
    {
      v34 = vaddq_f64(vmulq_f64(v26, v30), v31);
      v35 = vaddq_f64(vmulq_f64(v27, v30), v32);
      v23 = vaddq_f64(v23, vmulq_f64(v34, v33));
      v24 = vaddq_f64(v24, vmulq_f64(v35, v33));
      v36 = vsubq_f64(v28, v24);
      v37 = vsubq_f64(v29, v23);
      v27 = vaddq_f64(vmulq_n_f64(v35, v25), vmulq_n_f64(v36, v21));
      v26 = vaddq_f64(vmulq_n_f64(v34, v25), vmulq_n_f64(v37, v21));
      v32 = vaddq_f64(v35, vmulq_f64(v27, v30));
      v31 = vaddq_f64(v34, vmulq_f64(v26, v30));
      v22 = v22 + 0.00333333333;
    }

    while (v22 < a7);
    v70 = v37;
    v71 = v36;
    v91 = v31;
    v92 = v32;
    v38 = v27.f64[1];
    v39 = v26.f64[1];
    v93 = v26;
    v94 = v27;
    *&v95 = v22;
    v89 = v23;
    v90 = v24;
    v76 = v24;
    v77 = v23;
    v78 = v27.f64[0];
    v79 = v26.f64[0];
    v80 = v31;
    v81 = v32;
  }

  type metadata accessor for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(0, &lazy cache variable for type metadata for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, type metadata accessor for SpringState);
  v43 = v42;
  *&v85.f64[1] = v42;
  v44 = swift_allocObject();
  *&v84.f64[0] = v44;
  *(v44 + 16) = v77;
  *(v44 + 32) = v76;
  *(v44 + 48) = v80;
  *(v44 + 64) = v81;
  *(v44 + 80) = v79;
  *(v44 + 88) = v39;
  *(v44 + 96) = v78;
  *(v44 + 104) = v38;
  v45 = v96;
  *(v44 + 112) = v95;
  *(v44 + 128) = v45;
  specialized Dictionary.subscript.setter(&v84, v43);
  v46 = *(a1 + 16);
  result = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVyAHy12CoreGraphics7CGFloatVAKGALG_AA0c19FinishingDefinitionF033_2DFC163B2FD0FA7B91FDE1127AAEDE04LLVyAMGTt0B5(*a1);
  if (result)
  {
    v49 = result;
    v50 = v48;
    v51 = 6.28318531 / a8 * (6.28318531 / a8);
    v52 = sqrt(v51);
    v53 = (v52 + v52) * a9 / v51;
    v68 = vmulq_n_f64(v80, v53);
    v69 = vmulq_n_f64(v81, v53);
    if ((v46 & 1) != 0 || (WeakValue = AGGraphGetWeakValue()) == 0)
    {
      EnvironmentValues.init()(&v83);
      v55 = v83;
    }

    else
    {
      v67 = *WeakValue;

      v55 = v67;
    }

    v84 = v70;
    v85 = v71;
    v86 = v68;
    v87 = v69;
    v88 = v55;
    v56 = (*(v50 + 24))(&v84, v49, v50);
    v82[2] = v86;
    v82[3] = v87;
    v82[4] = v88;
    v82[0] = v84;
    v82[1] = v85;
    result = outlined destroy of AnimationSettlingContext<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(v82);
    if (v56)
    {
      goto LABEL_37;
    }
  }

  v57 = vmuld_n_f64(v80.f64[0], v80.f64[0]) + vmuld_lane_f64(v80.f64[1], v80, 1) + vmuld_n_f64(v81.f64[0], v81.f64[0]) + vmuld_lane_f64(v81.f64[1], v81, 1);
  if (v57 <= v79 * v79 + v39 * v39 + v78 * v78 + v38 * v38)
  {
    v57 = v79 * v79 + v39 * v39 + v78 * v78 + v38 * v38;
  }

  if (v57 <= 0.0036)
  {
    v61.f64[0] = a3;
    v61.f64[1] = a5;
    v62 = vdupq_n_s64(0x3F847AE147AE147BuLL);
    v63 = vmulq_f64(v61, v62);
    v64.f64[0] = a4;
    v64.f64[1] = a6;
    v65 = vmulq_f64(v64, v62);
    v66 = vaddvq_f64(vaddq_f64(vmulq_f64(v63, v63), vmulq_f64(v65, v65)));
    if (v66 > 0.0)
    {
      v19 = v66 < vmuld_n_f64(v70.f64[0], v70.f64[0]) + vmuld_lane_f64(v70.f64[1], v70, 1) + vmuld_n_f64(v71.f64[0], v71.f64[0]) + vmuld_lane_f64(v71.f64[1], v71, 1);
      v60 = v76;
      v59 = v77;
      if (v19)
      {
        v58 = 0;
        goto LABEL_38;
      }
    }

LABEL_37:
    v59 = 0uLL;
    v58 = 1;
    v60 = 0uLL;
    goto LABEL_38;
  }

  v58 = 0;
  v60 = v76;
  v59 = v77;
LABEL_38:
  *a2 = v59;
  *(a2 + 16) = v60;
  *(a2 + 32) = v58;
  return result;
}

double KeyframeTimeline.value(progress:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *(a1 + 16);
  (*(*(v6 - 8) + 16))(a2, v3, v6);

  v9 = type metadata accessor for _ResolvedKeyframes(0, v6, v7, v8);
  v10 = _ResolvedKeyframes.duration.getter(v9);
  _ResolvedKeyframes.update(value:time:)(a2, v9, v11, v12, v10 * a3);

  return result;
}

void GraphicsFilter.init(from:)(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v217 = *MEMORY[0x1E69E9840];
  __asm { FMOV            V0.4S, #1.0 }

  v210 = _Q0;
  LODWORD(v211) = 2143289344;
  _s7SwiftUI14GraphicsFilterOWOi6_(&v210);
  v207 = v214;
  v208 = v215;
  v209[0] = v216[0];
  *(v209 + 12) = *(v216 + 12);
  v203 = v210;
  v204 = v211;
  v205 = v212;
  v206 = v213;
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  if (v11 >= v12)
  {
    goto LABEL_229;
  }

  v13 = 0;
  while (1)
  {
    v16 = *(a1 + 3);
    if (!v16)
    {
      break;
    }

    v17 = *(a1 + 4);
    if (v11 >= v17)
    {
      if (v17 < v11)
      {
        goto LABEL_230;
      }

      *(a1 + 3) = 0;
      break;
    }

LABEL_11:
    switch(v16 >> 3)
    {
      case 1uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v18 = *(a1 + 5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
          v18 = isUniquelyReferenced_nonNull_native;
        }

        v20 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = v20 + 1;
        if (v20 >= v21 >> 1)
        {
          v173 = v20 + 1;
          v155 = v18;
          v156 = *(v18 + 16);
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1, v155);
          v20 = v156;
          v22 = v173;
          v18 = isUniquelyReferenced_nonNull_native;
        }

        *(v18 + 16) = v22;
        *(v18 + 8 * v20 + 32) = v12;
        *(a1 + 5) = v18;
        v23 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v3)
        {
          goto LABEL_231;
        }

        if (v23 < 0)
        {
          goto LABEL_242;
        }

        v24 = *(a1 + 1) + v23;
        if (v12 < v24)
        {
          goto LABEL_230;
        }

        *(a1 + 2) = v24;
        BlurStyle.init(from:)(a1, __dst);
        v25 = *(a1 + 5);
        if (!*(v25 + 2))
        {
          goto LABEL_249;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v26 = *(v25 + 2);
          if (!v26)
          {
            goto LABEL_253;
          }
        }

        else
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
          v26 = *(v25 + 2);
          if (!v26)
          {
            goto LABEL_253;
          }
        }

        v27 = v26 - 1;
        v28 = *&v25[8 * v27 + 32];
        *(v25 + 2) = v27;
        outlined destroy of GraphicsFilter(&v203);
        *(a1 + 5) = v25;
        *(a1 + 2) = v28;
        *v192 = *__dst;
        *&v192[8] = *&__dst[8];
        _s7SwiftUI14GraphicsFilterOWOi_(v192);
        goto LABEL_200;
      case 2uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v84 = *(a1 + 5);
        v85 = swift_isUniquelyReferenced_nonNull_native();
        if ((v85 & 1) == 0)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 16) + 1, 1, v84);
          v84 = v85;
        }

        v86 = *(v84 + 16);
        v87 = *(v84 + 24);
        v88 = v86 + 1;
        if (v86 >= v87 >> 1)
        {
          v174 = v86 + 1;
          v157 = v84;
          v158 = *(v84 + 16);
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v86 + 1, 1, v157);
          v86 = v158;
          v88 = v174;
          v84 = v85;
        }

        *(v84 + 16) = v88;
        *(v84 + 8 * v86 + 32) = v12;
        *(a1 + 5) = v84;
        v89 = ProtobufDecoder.decodeVarint()(v85);
        if (v3)
        {
          goto LABEL_231;
        }

        if (v89 < 0)
        {
          goto LABEL_241;
        }

        v90 = *(a1 + 1) + v89;
        if (v12 < v90)
        {
          goto LABEL_230;
        }

        *(a1 + 2) = v90;
        ResolvedShadowStyle.init(from:)(a1, __dst);
        v91 = *(a1 + 5);
        if (!*(v91 + 2))
        {
          goto LABEL_245;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v92 = *(v91 + 2);
          if (!v92)
          {
            goto LABEL_256;
          }
        }

        else
        {
          v91 = specialized _ArrayBuffer._consumeAndCreateNew()(v91);
          v92 = *(v91 + 2);
          if (!v92)
          {
            goto LABEL_256;
          }
        }

        v93 = v92 - 1;
        v94 = *&v91[8 * v93 + 32];
        *(v91 + 2) = v93;
        outlined destroy of GraphicsFilter(&v203);
        *(a1 + 5) = v91;
        *(a1 + 2) = v94;
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        *v193 = *v189;
        *&v193[13] = *&v189[13];
        _s7SwiftUI14GraphicsFilterOWOi3_(v192);
        goto LABEL_200;
      case 3uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v35 = *(a1 + 5);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        if ((v36 & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 16) + 1, 1, v35);
          v35 = v36;
        }

        v37 = *(v35 + 16);
        v38 = *(v35 + 24);
        v39 = v37 + 1;
        if (v37 >= v38 >> 1)
        {
          v169 = v37 + 1;
          v147 = v35;
          v148 = *(v35 + 16);
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v37 + 1, 1, v147);
          v37 = v148;
          v39 = v169;
          v35 = v36;
        }

        *(v35 + 16) = v39;
        *(v35 + 8 * v37 + 32) = v12;
        *(a1 + 5) = v35;
        v40 = ProtobufDecoder.decodeVarint()(v36);
        if (v3)
        {
          goto LABEL_231;
        }

        if (v40 < 0)
        {
          goto LABEL_239;
        }

        v41 = *(a1 + 1) + v40;
        if (v12 < v41)
        {
          goto LABEL_230;
        }

        *(a1 + 2) = v41;
        *&__dst[16] = 0uLL;
        *__dst = 0x3FF0000000000000uLL;
        *v189 = 0x3FF0000000000000uLL;
        *&v189[16] = 0uLL;
        *v190 = 0x3FF0000000000000;
        closure #1 in ProjectionTransform.init(from:)(__dst, a1, &v183);
        v180 = *v189;
        v181 = *&v189[16];
        v182 = *v190;
        v178 = *__dst;
        v179 = *&__dst[16];
        v42 = *(a1 + 5);
        if (!*(v42 + 2))
        {
          goto LABEL_252;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v43 = *(v42 + 2);
          if (!v43)
          {
            goto LABEL_255;
          }
        }

        else
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
          v43 = *(v42 + 2);
          if (!v43)
          {
            goto LABEL_255;
          }
        }

        v44 = v43 - 1;
        v45 = *&v42[8 * v44 + 32];
        *(v42 + 2) = v44;
        outlined destroy of GraphicsFilter(&v203);
        *(a1 + 5) = v42;
        *(a1 + 2) = v45;
        *v193 = v180;
        *&v193[16] = v181;
        *v194 = v182;
        *v192 = v178;
        *&v192[16] = v179;
        _s7SwiftUI14GraphicsFilterOWOi4_(v192);
        goto LABEL_200;
      case 4uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(__dst);
        if (v3)
        {
          goto LABEL_231;
        }

        outlined destroy of GraphicsFilter(&v203);
        *v193 = *v189;
        *&v193[16] = *&v189[16];
        *v194 = *v190;
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        v194[16] = 0;
        _s7SwiftUI14GraphicsFilterOWOi5_(v192);
        goto LABEL_200;
      case 5uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v46 = *(a1 + 5);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        if ((v47 & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 16) + 1, 1, v46);
          v46 = v47;
        }

        v48 = *(v46 + 16);
        v49 = *(v46 + 24);
        v50 = v48 + 1;
        if (v48 >= v49 >> 1)
        {
          v170 = v48 + 1;
          v149 = v46;
          v150 = *(v46 + 16);
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v48 + 1, 1, v149);
          v48 = v150;
          v50 = v170;
          v46 = v47;
        }

        *(v46 + 16) = v50;
        *(v46 + 8 * v48 + 32) = v12;
        *(a1 + 5) = v46;
        v51 = ProtobufDecoder.decodeVarint()(v47);
        if (v3)
        {
          goto LABEL_231;
        }

        if (v51 < 0)
        {
          goto LABEL_237;
        }

        v52 = *(a1 + 1) + v51;
        if (v12 < v52)
        {
          goto LABEL_230;
        }

        *(a1 + 2) = v52;
        specialized Color.ResolvedHDR.init(from:)(a1, &v184);
        v53 = *(a1 + 5);
        if (!*(v53 + 2))
        {
          goto LABEL_251;
        }

        v168 = v184;
        v54 = v185;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v55 = *(v53 + 2);
          if (!v55)
          {
            goto LABEL_259;
          }
        }

        else
        {
          v53 = specialized _ArrayBuffer._consumeAndCreateNew()(v53);
          v55 = *(v53 + 2);
          if (!v55)
          {
            goto LABEL_259;
          }
        }

        v56 = v55 - 1;
        v57 = *&v53[8 * v56 + 32];
        *(v53 + 2) = v56;
        outlined destroy of GraphicsFilter(&v203);
        *(a1 + 5) = v53;
        *(a1 + 2) = v57;
        *v192 = v168;
        *&v192[16] = v54;
        _s7SwiftUI14GraphicsFilterOWOi6_(v192);
        goto LABEL_200;
      case 6uLL:
        *__dst = v16;
        v78 = ProtobufDecoder.doubleField(_:)(__dst);
        v3 = v79;
        if (v79)
        {
          goto LABEL_231;
        }

        v80 = v78;
        outlined destroy of GraphicsFilter(&v203);
        *v192 = v80;
        _s7SwiftUI14GraphicsFilterOWOi8_(v192);
        goto LABEL_200;
      case 7uLL:
        *__dst = v16;
        v96 = ProtobufDecoder.doubleField(_:)(__dst);
        v3 = v97;
        if (v97)
        {
          goto LABEL_231;
        }

        v98 = v96;
        outlined destroy of GraphicsFilter(&v203);
        *v192 = v98;
        _s7SwiftUI14GraphicsFilterOWOi9_(v192);
        goto LABEL_200;
      case 8uLL:
        *__dst = v16;
        v99 = ProtobufDecoder.doubleField(_:)(__dst);
        v3 = v100;
        if (v100)
        {
          goto LABEL_231;
        }

        v101 = v99;
        outlined destroy of GraphicsFilter(&v203);
        *v192 = v101;
        _s7SwiftUI14GraphicsFilterOWOi10_(v192);
        goto LABEL_200;
      case 9uLL:
        *__dst = v16;
        v118 = ProtobufDecoder.doubleField(_:)(__dst);
        v3 = v119;
        if (v119)
        {
          goto LABEL_231;
        }

        v120 = v118;
        outlined destroy of GraphicsFilter(&v203);
        *v192 = v120;
        _s7SwiftUI14GraphicsFilterOWOi11_(v192);
        goto LABEL_200;
      case 0xAuLL:
        v114 = v16;
        outlined destroy of GraphicsFilter(&v203);
        _s7SwiftUI14GraphicsFilterOWOi23_(v192);
        v33 = v114 & 7;
        if (v33 <= 1)
        {
          goto LABEL_145;
        }

        if (v33 != 2)
        {
          goto LABEL_190;
        }

        v34 = ProtobufDecoder.decodeVarint()(v32);
        if (v3)
        {
          return;
        }

        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_197;
        }

        goto LABEL_261;
      case 0xBuLL:
        v31 = v16;
        outlined destroy of GraphicsFilter(&v203);
        _s7SwiftUI14GraphicsFilterOWOi24_(v192);
        v33 = v31 & 7;
        if (v33 > 1)
        {
          if (v33 != 2)
          {
            goto LABEL_190;
          }

          v34 = ProtobufDecoder.decodeVarint()(v32);
          if (v3)
          {
            return;
          }

          if (v34 < 0)
          {
            goto LABEL_262;
          }

          goto LABEL_197;
        }

LABEL_145:
        if (!v33)
        {
          goto LABEL_142;
        }

        goto LABEL_146;
      case 0xCuLL:
        *__dst = v16;
        v81 = ProtobufDecoder.doubleField(_:)(__dst);
        v3 = v82;
        if (v82)
        {
          goto LABEL_231;
        }

        v83 = v81;
        outlined destroy of GraphicsFilter(&v203);
        *v192 = v83;
        _s7SwiftUI14GraphicsFilterOWOi12_(v192);
        goto LABEL_200;
      case 0xDuLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v58 = *(a1 + 5);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        if ((v59 & 1) == 0)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v58 + 16) + 1, 1, v58);
          v58 = v59;
        }

        v60 = *(v58 + 16);
        v61 = *(v58 + 24);
        v62 = v60 + 1;
        if (v60 >= v61 >> 1)
        {
          v171 = v60 + 1;
          v151 = v58;
          v152 = *(v58 + 16);
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v60 + 1, 1, v151);
          v60 = v152;
          v62 = v171;
          v58 = v59;
        }

        *(v58 + 16) = v62;
        *(v58 + 8 * v60 + 32) = v12;
        *(a1 + 5) = v58;
        v63 = ProtobufDecoder.decodeVarint()(v59);
        if (v3)
        {
          goto LABEL_231;
        }

        if (v63 < 0)
        {
          goto LABEL_240;
        }

        v64 = *(a1 + 1) + v63;
        if (v12 < v64)
        {
          goto LABEL_230;
        }

        *(a1 + 2) = v64;
        GraphicsFilter.ColorMonochrome.init(from:)(a1, __dst);
        v65 = *(a1 + 5);
        if (!*(v65 + 2))
        {
          goto LABEL_246;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v66 = *(v65 + 2);
          if (!v66)
          {
            goto LABEL_254;
          }
        }

        else
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v65);
          v66 = *(v65 + 2);
          if (!v66)
          {
            goto LABEL_254;
          }
        }

        v67 = v66 - 1;
        v68 = *&v65[8 * v67 + 32];
        *(v65 + 2) = v67;
        outlined destroy of GraphicsFilter(&v203);
        *(a1 + 5) = v65;
        *(a1 + 2) = v68;
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        *&v192[24] = *&__dst[24];
        _s7SwiftUI14GraphicsFilterOWOi13_(v192);
        goto LABEL_200;
      case 0xEuLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(__dst);
        if (v3)
        {
          goto LABEL_231;
        }

        outlined destroy of GraphicsFilter(&v203);
        *v193 = *v189;
        *&v193[16] = *&v189[16];
        *v194 = *v190;
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        *&v194[16] = 2139095040;
        v194[20] = 0;
        goto LABEL_42;
      case 0xFuLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v102 = *(a1 + 5);
        v103 = swift_isUniquelyReferenced_nonNull_native();
        if ((v103 & 1) == 0)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v102 + 16) + 1, 1, v102);
          v102 = v103;
        }

        v104 = *(v102 + 16);
        v105 = *(v102 + 24);
        v106 = v104 + 1;
        if (v104 >= v105 >> 1)
        {
          v175 = v104 + 1;
          v159 = v102;
          v160 = *(v102 + 16);
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v104 + 1, 1, v159);
          v104 = v160;
          v106 = v175;
          v102 = v103;
        }

        *(v102 + 16) = v106;
        *(v102 + 8 * v104 + 32) = v12;
        *(a1 + 5) = v102;
        v107 = ProtobufDecoder.decodeVarint()(v103);
        if (v3)
        {
          goto LABEL_231;
        }

        if (v107 < 0)
        {
          goto LABEL_235;
        }

        v108 = *(a1 + 1) + v107;
        if (v12 < v108)
        {
          goto LABEL_230;
        }

        *(a1 + 2) = v108;
        GraphicsFilter.LuminanceCurve.init(from:)(a1, __dst);
        v109 = *(a1 + 5);
        if (!*(v109 + 2))
        {
          goto LABEL_247;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v110 = *(v109 + 2);
          if (!v110)
          {
            goto LABEL_257;
          }
        }

        else
        {
          v109 = specialized _ArrayBuffer._consumeAndCreateNew()(v109);
          v110 = *(v109 + 2);
          if (!v110)
          {
            goto LABEL_257;
          }
        }

        v111 = v110 - 1;
        v112 = *&v109[8 * v111 + 32];
        *(v109 + 2) = v111;
        outlined destroy of GraphicsFilter(&v203);
        *(a1 + 5) = v109;
        *(a1 + 2) = v112;
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        _s7SwiftUI14GraphicsFilterOWOi15_(v192);
        goto LABEL_200;
      case 0x10uLL:
        v113 = v16;
        outlined destroy of GraphicsFilter(&v203);
        _s7SwiftUI14GraphicsFilterOWOi22_(v192);
        v33 = v113 & 7;
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v34 = ProtobufDecoder.decodeVarint()(v32);
            if (v3)
            {
              return;
            }

            if (v34 < 0)
            {
              goto LABEL_263;
            }

LABEL_197:
            v115 = *(a1 + 1) + v34;
          }

          else
          {
LABEL_190:
            if (v33 != 5)
            {
              goto LABEL_233;
            }

            v115 = *(a1 + 1) + 4;
          }
        }

        else
        {
          if ((v113 & 7) == 0)
          {
LABEL_142:
            ProtobufDecoder.decodeVarint()(v32);
            if (v3)
            {
              return;
            }

            goto LABEL_200;
          }

LABEL_146:
          if (v33 != 1)
          {
            goto LABEL_233;
          }

          v115 = *(a1 + 1) + 8;
        }

        if (v12 < v115)
        {
LABEL_233:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          return;
        }

        *(a1 + 1) = v115;
        goto LABEL_200;
      case 0x11uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          goto LABEL_231;
        }

        GraphicsFilter.ShaderFilter.init(from:)(a1, __dst);
        v3 = 0;
        if (!*(*(a1 + 5) + 16))
        {
          goto LABEL_243;
        }

        v132 = specialized Array._customRemoveLast()();
        if (!v132)
        {
          v132 = specialized Array.remove(at:)(*(*(a1 + 5) + 16) - 1);
        }

        v133 = v132;
        outlined destroy of GraphicsFilter(&v203);
        *(a1 + 2) = v133;
        *v192 = *__dst;
        *&v192[8] = *&__dst[8];
        *&v192[24] = *&__dst[24];
        *v193 = *v189;
        _s7SwiftUI14GraphicsFilterOWOi17_(v192);
        goto LABEL_200;
      case 0x12uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v121 = *(a1 + 5);
        v122 = swift_isUniquelyReferenced_nonNull_native();
        if ((v122 & 1) == 0)
        {
          v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v121 + 16) + 1, 1, v121);
          v121 = v122;
        }

        v123 = *(v121 + 16);
        v124 = *(v121 + 24);
        v125 = v123 + 1;
        if (v123 >= v124 >> 1)
        {
          v176 = v123 + 1;
          v161 = v121;
          v162 = *(v121 + 16);
          v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v124 > 1), v123 + 1, 1, v161);
          v123 = v162;
          v125 = v176;
          v121 = v122;
        }

        *(v121 + 16) = v125;
        *(v121 + 8 * v123 + 32) = v12;
        *(a1 + 5) = v121;
        v126 = ProtobufDecoder.decodeVarint()(v122);
        if (v3)
        {
          goto LABEL_231;
        }

        if (v126 < 0)
        {
          goto LABEL_236;
        }

        v127 = *(a1 + 1) + v126;
        if (v12 < v127)
        {
          goto LABEL_230;
        }

        *(a1 + 2) = v127;
        VariableBlurStyle.init(from:)(a1, v192);
        v128 = *(a1 + 5);
        if (!*(v128 + 2))
        {
          goto LABEL_244;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v129 = *(v128 + 2);
          if (!v129)
          {
            goto LABEL_258;
          }
        }

        else
        {
          v128 = specialized _ArrayBuffer._consumeAndCreateNew()(v128);
          v129 = *(v128 + 2);
          if (!v129)
          {
            goto LABEL_258;
          }
        }

        v130 = v129 - 1;
        v131 = *&v128[8 * v130 + 32];
        *(v128 + 2) = v130;
        outlined destroy of GraphicsFilter(&v203);
        *(a1 + 5) = v128;
        *(a1 + 2) = v131;
        *v190 = *v194;
        *&v190[16] = *&v194[16];
        *v191 = *v195;
        *&v191[12] = *&v195[12];
        *__dst = *v192;
        *&__dst[16] = *&v192[16];
        *v189 = *v193;
        *&v189[16] = *&v193[16];
        _s7SwiftUI14GraphicsFilterOWOi0_(__dst);
        v200 = *v190;
        v201 = *&v190[16];
        v202[0] = *v191;
        *(v202 + 12) = *&v191[12];
        v196 = *__dst;
        v197 = *&__dst[16];
        v198 = *v189;
        v199 = *&v189[16];
        if (v13)
        {
          goto LABEL_201;
        }

        goto LABEL_3;
      case 0x13uLL:
        if ((v16 & 7) == 0)
        {
          goto LABEL_30;
        }

        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v16 = ProtobufDecoder.decodeVarint()(v16);
        if (v3)
        {
          goto LABEL_231;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_260;
        }

        v29 = *(a1 + 1) + v16;
        if (v12 < v29)
        {
          goto LABEL_230;
        }

        *(a1 + 3) = 152;
        *(a1 + 4) = v29;
LABEL_30:
        v30 = ProtobufDecoder.decodeVarint()(v16);
        if (v3)
        {
          goto LABEL_231;
        }

        v200 = v207;
        v201 = v208;
        v202[0] = v209[0];
        *(v202 + 12) = *(v209 + 12);
        v196 = v203;
        v197 = v204;
        v198 = v205;
        v199 = v206;
        if (!v30)
        {
          goto LABEL_3;
        }

        goto LABEL_201;
      case 0x14uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v69 = *(a1 + 5);
        v70 = swift_isUniquelyReferenced_nonNull_native();
        if ((v70 & 1) == 0)
        {
          v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 16) + 1, 1, v69);
          v69 = v70;
        }

        v71 = *(v69 + 16);
        v72 = *(v69 + 24);
        v73 = v71 + 1;
        if (v71 >= v72 >> 1)
        {
          v172 = v71 + 1;
          v153 = v69;
          v154 = *(v69 + 16);
          v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v71 + 1, 1, v153);
          v71 = v154;
          v73 = v172;
          v69 = v70;
        }

        *(v69 + 16) = v73;
        *(v69 + 8 * v71 + 32) = v12;
        *(a1 + 5) = v69;
        v74 = ProtobufDecoder.decodeVarint()(v70);
        if (v3)
        {
          goto LABEL_231;
        }

        if (v74 < 0)
        {
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
          __break(1u);
          __break(1u);
        }

        v75 = *(a1 + 1) + v74;
        if (v12 < v75)
        {
          goto LABEL_230;
        }

        *(a1 + 2) = v75;
        GraphicsFilter.ColorCurves.init(from:)(a1, __dst);
        if (!*(*(a1 + 5) + 16))
        {
          goto LABEL_250;
        }

        v76 = specialized Array._customRemoveLast()();
        if (!v76)
        {
          v76 = specialized Array.remove(at:)(*(*(a1 + 5) + 16) - 1);
        }

        v77 = v76;
        outlined destroy of GraphicsFilter(&v203);
        *(a1 + 2) = v77;
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        *v193 = *v189;
        *&v193[16] = *&v189[16];
        _s7SwiftUI14GraphicsFilterOWOi16_(v192);
        goto LABEL_200;
      case 0x15uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v134 = *(a1 + 5);
        v135 = swift_isUniquelyReferenced_nonNull_native();
        if ((v135 & 1) == 0)
        {
          v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v134 + 16) + 1, 1, v134);
          v134 = v135;
        }

        v136 = *(v134 + 16);
        v137 = *(v134 + 24);
        v138 = v136 + 1;
        if (v136 >= v137 >> 1)
        {
          v177 = v136 + 1;
          v163 = v134;
          v164 = *(v134 + 16);
          v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v136 + 1, 1, v163);
          v136 = v164;
          v138 = v177;
          v134 = v135;
        }

        *(v134 + 16) = v138;
        *(v134 + 8 * v136 + 32) = v12;
        *(a1 + 5) = v134;
        v139 = ProtobufDecoder.decodeVarint()(v135);
        if (v3)
        {
          goto LABEL_231;
        }

        if (v139 < 0)
        {
          goto LABEL_238;
        }

        v140 = *(a1 + 1) + v139;
        if (v12 < v140)
        {
          goto LABEL_230;
        }

        *(a1 + 2) = v140;
        GraphicsFilter.AlphaThreshold.init(from:)(a1, __dst);
        v141 = *(a1 + 5);
        if (!*(v141 + 2))
        {
          goto LABEL_248;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v142 = *(v141 + 2);
          if (!v142)
          {
            goto LABEL_228;
          }

          goto LABEL_184;
        }

        v141 = specialized _ArrayBuffer._consumeAndCreateNew()(v141);
        v142 = *(v141 + 2);
        if (!v142)
        {
LABEL_228:
          __break(1u);
LABEL_229:
          *(a1 + 3) = 0;
          v165 = v208;
          a2[4] = v207;
          a2[5] = v165;
          a2[6] = v209[0];
          *(a2 + 108) = *(v209 + 12);
          v166 = v204;
          *a2 = v203;
          a2[1] = v166;
          v167 = v206;
          a2[2] = v205;
          a2[3] = v167;
          return;
        }

LABEL_184:
        v143 = v142 - 1;
        v144 = *&v141[8 * v143 + 32];
        *(v141 + 2) = v143;
        outlined destroy of GraphicsFilter(&v203);
        *(a1 + 5) = v141;
        *(a1 + 2) = v144;
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        _s7SwiftUI14GraphicsFilterOWOi18_(v192);
LABEL_200:
        v200 = *v194;
        v201 = *&v194[16];
        v202[0] = *v195;
        *(v202 + 12) = *&v195[12];
        v196 = *v192;
        v197 = *&v192[16];
        v198 = *v193;
        v199 = *&v193[16];
        if (v13)
        {
LABEL_201:
          *v194 = v200;
          *&v194[16] = v201;
          *v195 = v202[0];
          *&v195[12] = *(v202 + 12);
          *v192 = v196;
          *&v192[16] = v197;
          *v193 = v198;
          *&v193[16] = v199;
          if (_s7SwiftUI14GraphicsFilterOWOg(v192) == 6)
          {
            v145 = _s7SwiftUI14GraphicsFilterOWOj6_(v192);
            memmove(__dst, v145, 0x50uLL);
            v13 = 1;
            v190[16] = 1;
            _s7SwiftUI14GraphicsFilterOWOi5_(__dst);
            v207 = *v190;
            v208 = *&v190[16];
            v209[0] = *v191;
            *(v209 + 12) = *&v191[12];
            v203 = *__dst;
            v204 = *&__dst[16];
            v14 = *v189;
            v15 = *&v189[16];
          }

          else
          {
            v207 = v200;
            v208 = v201;
            v209[0] = v202[0];
            *(v209 + 12) = *(v202 + 12);
            v203 = v196;
            v204 = v197;
            v14 = v198;
            v15 = v199;
            v13 = 1;
          }
        }

        else
        {
LABEL_3:
          v13 = 0;
          v207 = v200;
          v208 = v201;
          v209[0] = v202[0];
          *(v209 + 12) = *(v202 + 12);
          v203 = v196;
          v204 = v197;
          v14 = v198;
          v15 = v199;
        }

        v205 = v14;
        v206 = v15;
        v11 = *(a1 + 1);
        v12 = *(a1 + 2);
        if (v11 >= v12)
        {
          goto LABEL_229;
        }

        break;
      case 0x16uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(__dst);
        if (v3)
        {
          goto LABEL_231;
        }

        outlined destroy of GraphicsFilter(&v203);
        *v194 = *v190;
        *&v194[16] = *&v190[16];
        *v195 = *v191;
        *&v195[16] = *&v191[16];
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        *v193 = *v189;
        *&v193[16] = *&v189[16];
        _s7SwiftUI14GraphicsFilterOWOi1_(v192);
        goto LABEL_200;
      case 0x17uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(__dst);
        if (v3)
        {
          goto LABEL_231;
        }

        outlined destroy of GraphicsFilter(&v203);
        *v194 = *v190;
        *&v194[16] = *&v190[16];
        *v195 = *v191;
        *&v195[16] = *&v191[16];
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        *v193 = *v189;
        *&v193[16] = *&v189[16];
        _s7SwiftUI14GraphicsFilterOWOi2_(v192);
        goto LABEL_200;
      case 0x18uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(__dst);
        if (v3)
        {
          goto LABEL_231;
        }

        outlined destroy of GraphicsFilter(&v203);
        *v192 = *__dst;
        *&v192[8] = *&__dst[8];
        _s7SwiftUI14GraphicsFilterOWOi19_(v192);
        goto LABEL_200;
      case 0x1AuLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(&v186);
        if (v3)
        {
          goto LABEL_231;
        }

        v95 = v187;
        outlined destroy of GraphicsFilter(&v203);
        *v192 = v186;
        *&v192[16] = v95;
        _s7SwiftUI14GraphicsFilterOWOi7_(v192);
        goto LABEL_200;
      case 0x1BuLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(__dst);
        if (v3)
        {
          goto LABEL_231;
        }

        outlined destroy of GraphicsFilter(&v203);
        *v193 = *v189;
        *&v193[16] = *&v189[16];
        *v194 = *v190;
        *&v194[13] = *&v190[13];
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
LABEL_42:
        _s7SwiftUI14GraphicsFilterOWOi14_(v192);
        goto LABEL_200;
      default:
        v116 = v16 & 7;
        if (v116 > 1)
        {
          if (v116 == 2)
          {
            v146 = ProtobufDecoder.decodeVarint()(v16);
            if (v3)
            {
              goto LABEL_231;
            }

            if (v146 < 0)
            {
              goto LABEL_264;
            }

            v117 = *(a1 + 1) + v146;
          }

          else
          {
            if (v116 != 5)
            {
              goto LABEL_230;
            }

            v117 = *(a1 + 1) + 4;
          }
        }

        else
        {
          if ((v16 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()(v16);
            if (v3)
            {
              goto LABEL_231;
            }

            goto LABEL_211;
          }

          if (v116 != 1)
          {
            goto LABEL_230;
          }

          v117 = *(a1 + 1) + 8;
        }

        if (v12 < v117)
        {
          goto LABEL_230;
        }

        *(a1 + 1) = v117;
LABEL_211:
        v200 = v207;
        v201 = v208;
        v202[0] = v209[0];
        *(v202 + 12) = *(v209 + 12);
        v196 = v203;
        v197 = v204;
        v198 = v205;
        v199 = v206;
        if (v13)
        {
          goto LABEL_201;
        }

        goto LABEL_3;
    }
  }

  v16 = ProtobufDecoder.decodeVarint()(v16);
  if (v3)
  {
    goto LABEL_231;
  }

  if (v16 >= 8)
  {
    goto LABEL_11;
  }

LABEL_230:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_231:
  outlined destroy of GraphicsFilter(&v203);
}

uint64_t LinkDestination.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 31) = 0;
  *(a3 + 40) = swift_getKeyPath();
  v5 = type metadata accessor for LinkDestination(0);
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0;
  *(a3 + 71) = 0;
  v6 = a3 + *(v5 + 24);

  return outlined init with take of LinkDestination.Configuration(a1, v6);
}

uint64_t initializeWithCopy for LinkDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 34);
  v11 = *(a2 + 32);
  outlined copy of Environment<OpenURLAction>.Content(*a2, v7, v8, v9, v11, v10);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 34) = v10;
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  v16 = *(a2 + 74);
  v17 = *(a2 + 72);
  outlined copy of Environment<OpenURLAction>.Content(v12, v13, v14, v15, v17, v16);
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
  *(a1 + 64) = v15;
  *(a1 + 72) = v17;
  *(a1 + 74) = v16;
  v18 = *(a3 + 24);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 16))(v19, v20, v21);
  v22 = type metadata accessor for LinkDestination.Configuration(0);
  *(v19 + *(v22 + 20)) = *(v20 + *(v22 + 20));
  return a1;
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance Bool(CC_SHA1_CTX *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  data = *v1;
  return CC_SHA1_Update(a1, &data, 1u);
}

uint64_t specialized Array._customRemoveLast()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      v7 = v3 + 32 * v5;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      *a1 = *v7;
      *(a1 + 16) = v8;
      *(a1 + 24) = v9;
      *(v3 + 16) = v6;
      *v1 = v3;
      *(a1 + 32) = 0;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v3 + 20 * v5;
      v7 = *(v6 + 28);
      *a1 = *(v6 + 12);
      *(a1 + 16) = v7;
      *(v3 + 16) = v5 - 1;
      *v1 = v3;
      *(a1 + 20) = 0;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void RBFill.setImage(_:destRect:in:)(__int128 *a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = a1[5];
  v41 = a1[4];
  v42[0] = v12;
  *(v42 + 12) = *(a1 + 92);
  v13 = a1[1];
  v37 = *a1;
  v38 = v13;
  v14 = a1[3];
  v39 = a1[2];
  v40 = v14;
  v15 = v37;
  if (BYTE8(v37) > 3u)
  {
    if (BYTE8(v37) == 4)
    {
      v34 = *(v37 + 32);
      if (a2 != 2)
      {
        RBColorFromLinear();
      }

      [v6 setColor_];
      v30 = sel_setHeadroom_;
      v31 = v6;
      LODWORD(v26) = v34;

      goto LABEL_20;
    }

    if (BYTE8(v37) == 255)
    {
LABEL_16:
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
      if (a2 != 2)
      {
        RBColorFromLinear();
      }

      v30 = sel_setColor_;
      v31 = v6;

LABEL_20:
      [v31 v30];
      return;
    }
  }

  else
  {
    if (!BYTE8(v37))
    {
      outlined init with copy of GraphicsImage(&v37, v35);
      outlined init with copy of GraphicsImage(&v37, v35);
      goto LABEL_22;
    }

    if (BYTE8(v37) == 1)
    {
      IOSurface = RBImageMakeIOSurface();
      closure #1 in RBFill.setImage(_:destRect:in:)(IOSurface, v17, v6, &v37, a2, a3, a4, a5, a6);
      return;
    }
  }

  v18 = a1[5];
  v35[4] = a1[4];
  v36[0] = v18;
  *(v36 + 12) = *(a1 + 92);
  v19 = a1[1];
  v35[0] = *a1;
  v35[1] = v19;
  v20 = a1[3];
  v21 = 0.0;
  v35[2] = a1[2];
  v35[3] = v20;
  v22 = 0.0;
  if (*&v38 != 0.0)
  {
    v23 = *(&v38 + 1);
    if (BYTE8(v39) <= 3u)
    {
      v24 = *&v39;
    }

    else
    {
      v24 = *(&v38 + 1);
    }

    if (BYTE8(v39) > 3u)
    {
      v23 = *&v39;
    }

    v21 = 1.0 / *&v38 * v23;
    v22 = 1.0 / *&v38 * v24;
  }

  v25.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(*&v22, *&v21), 0).value;
  if (!v25.value)
  {
    goto LABEL_16;
  }

  v15 = v25.value;
LABEL_22:
  CGImage = RBImageMakeCGImage();
  closure #1 in RBFill.setImage(_:destRect:in:)(CGImage, v33, v6, &v37, a2, a3, a4, a5, a6);
}

id closure #1 in RBFill.setImage(_:destRect:in:)(unsigned int a1, uint64_t a2, void *a3, uint64_t a4, int a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (*(a4 + 64))
  {
    v17 = 0;
    v19 = *MEMORY[0x1E69C7148];
    v18 = *(MEMORY[0x1E69C7148] + 4);
    v20 = *(MEMORY[0x1E69C7148] + 8);
    v21 = *(MEMORY[0x1E69C7148] + 12);
  }

  else
  {
    v19 = *(a4 + 44);
    v18 = *(a4 + 48);
    v20 = *(a4 + 52);
    v21 = *(a4 + 56);
    if (a5 != 2)
    {
      RBColorFromLinear();
      v19 = v22;
      v18 = v23;
      v20 = v24;
      v21 = v25;
    }

    v17 = 1;
  }

  v26 = *(a4 + 104);
  if (v26 == 2)
  {
    v81 = 0u;
    v84 = 0u;
    LOBYTE(v26) = 1;
  }

  else
  {
    v81 = *(a4 + 72);
    v84 = *(a4 + 88);
  }

  v27 = *(a4 + 80);
  v91 = *(a4 + 64);
  v92[0] = v27;
  *(v92 + 12) = *(a4 + 92);
  v28 = *(a4 + 16);
  *&t1.a = *a4;
  *&t1.c = v28;
  v29 = *(a4 + 48);
  *&t1.tx = *(a4 + 32);
  v90 = v29;
  v30 = GraphicsImage.bitmapOrientation.getter();
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v81), vceqzq_f64(v84))))))
  {
    v31 = *(a4 + 16);
    v32 = 0.0;
    v33 = 0.0;
    if (v31 != 0.0)
    {
      v34 = *(a4 + 24);
      if (*(a4 + 40) <= 3u)
      {
        v35 = *(a4 + 32);
      }

      else
      {
        v35 = *(a4 + 24);
      }

      if (*(a4 + 40) > 3u)
      {
        v34 = *(a4 + 32);
      }

      v36 = 1.0 / v31;
      v32 = v36 * v34;
      v33 = v36 * v35;
    }

    v75 = v21;
    v76 = v18;
    v73 = 1.0 / v32;
    v74 = a9;
    v72 = 1.0 / v33;
    RBImageSimpleTransform();
    tx = t1.tx;
    ty = t1.ty;
    v77 = *&t1.a;
    v78 = *&t1.c;
    if (v30 > 3u)
    {
      v39 = a8;
      v40 = a6;
      v42 = xmmword_18DDAA020;
      if (v30 <= 5u)
      {
        v41 = a7;
        if (v30 == 4)
        {
          v43 = xmmword_18DDBA6A0;
        }

        else
        {
          v43 = xmmword_18DDAB500;
        }

        goto LABEL_41;
      }

      if (v30 == 6)
      {
        v43 = xmmword_18DDAB500;
      }

      else
      {
        v43 = xmmword_18DDBA6A0;
      }
    }

    else
    {
      v39 = a8;
      if (v30 <= 1u)
      {
        v40 = a6;
        v41 = a7;
        if (!v30)
        {
LABEL_42:
          v93.origin.x = v40;
          v93.origin.y = v41;
          v93.size.width = v39;
          v93.size.height = v74;
          v55 = v73 * CGRectGetWidth(v93);
          v94.origin.x = v40;
          v94.origin.y = v41;
          v94.size.width = v39;
          v94.size.height = v74;
          Height = CGRectGetHeight(v94);
          v57 = dword_18DDD7E00[*(a4 + 106)];
          *&t1.a = v77;
          *&t1.c = v78;
          t1.tx = tx;
          t1.ty = ty;
          return [a3 set9PartRBImage:a1 transform:a2 destinationRect:&t1 capInsets:(v26 & 1) == 0 repeat:v57 interpolation:v17 tintColor:0.0 flags:{0.0, v55, v72 * Height, v72 * v81.f64[0], vmuld_lane_f64(v73, v81, 1), v72 * v84.f64[0], vmuld_lane_f64(v73, v84, 1), __PAIR64__(v76, v19), __PAIR64__(v75, v20)}];
        }

        v42 = xmmword_18DDAB500;
        v43 = xmmword_18DDBA6B0;
LABEL_41:
        *&t1.a = v43;
        *&t1.c = v42;
        __asm { FMOV            V0.2D, #0.5 }

        *&t1.tx = _Q0;
        CGAffineTransformTranslate(&t2, &t1, -0.5, -0.5);
        t1 = t2;
        *&t2.a = v77;
        *&t2.c = v78;
        t2.tx = tx;
        t2.ty = ty;
        CGAffineTransformConcat(&v87, &t1, &t2);
        v77 = *&v87.a;
        v78 = *&v87.c;
        tx = v87.tx;
        ty = v87.ty;
        goto LABEL_42;
      }

      v42 = xmmword_18DDAB500;
      v40 = a6;
      if (v30 == 2)
      {
        v43 = xmmword_18DDBA6B0;
      }

      else
      {
        v43 = xmmword_18DDAA020;
      }
    }

    v41 = a7;
    v42 = vnegq_f64(v42);
    goto LABEL_41;
  }

  if (v26)
  {
    RBImageSimpleTransform();
    v45 = *&t1.a;
    v46 = *&t1.c;
    v47 = *&t1.tx;
    if (v30 > 3u)
    {
      v82 = *&t1.c;
      v85 = *&t1.a;
      v79 = *&t1.tx;
      v48 = xmmword_18DDAA020;
      if (v30 <= 5u)
      {
        if (v30 == 4)
        {
          v49 = xmmword_18DDBA6A0;
        }

        else
        {
          v49 = xmmword_18DDAB500;
        }

        goto LABEL_62;
      }

      if (v30 == 6)
      {
        v49 = xmmword_18DDAB500;
      }

      else
      {
        v49 = xmmword_18DDBA6A0;
      }
    }

    else
    {
      if (v30 <= 1u)
      {
        if (!v30)
        {
LABEL_63:
          v69 = dword_18DDD7E00[*(a4 + 106)];
          *&t1.a = v45;
          *&t1.c = v46;
          *&t1.tx = v47;
          LODWORD(v45) = v19;
          LODWORD(v46) = v18;
          LODWORD(v47) = v20;
          LODWORD(v44) = v21;
          return [a3 setRBImage:a1 transform:a2 interpolation:&t1 tintColor:v69 flags:{v17, *&v45, *&v46, *&v47, v44}];
        }

        v79 = *&t1.tx;
        v82 = *&t1.c;
        v85 = *&t1.a;
        v48 = xmmword_18DDAB500;
        v49 = xmmword_18DDBA6B0;
LABEL_62:
        *&t1.a = v49;
        *&t1.c = v48;
        __asm { FMOV            V0.2D, #0.5 }

        *&t1.tx = _Q0;
        CGAffineTransformTranslate(&t2, &t1, -0.5, -0.5);
        t1 = t2;
        *&t2.a = v85;
        *&t2.c = v82;
        *&t2.tx = v79;
        CGAffineTransformConcat(&v87, &t1, &t2);
        v45 = *&v87.a;
        v46 = *&v87.c;
        v47 = *&v87.tx;
        goto LABEL_63;
      }

      v82 = *&t1.c;
      v85 = *&t1.a;
      v48 = xmmword_18DDAB500;
      v79 = *&t1.tx;
      if (v30 == 2)
      {
        v49 = xmmword_18DDBA6B0;
      }

      else
      {
        v49 = xmmword_18DDAA020;
      }
    }

    v48 = vnegq_f64(v48);
    goto LABEL_62;
  }

  RBTiledImageTransform();
  v63 = *&t1.a;
  v64 = *&t1.c;
  v65 = *&t1.tx;
  if (v30 > 3u)
  {
    v83 = *&t1.c;
    v86 = *&t1.a;
    v80 = *&t1.tx;
    v66 = xmmword_18DDAA020;
    if (v30 <= 5u)
    {
      if (v30 == 4)
      {
        v67 = xmmword_18DDBA6A0;
      }

      else
      {
        v67 = xmmword_18DDAB500;
      }

      goto LABEL_68;
    }

    if (v30 == 6)
    {
      v67 = xmmword_18DDAB500;
    }

    else
    {
      v67 = xmmword_18DDBA6A0;
    }

    goto LABEL_67;
  }

  if (v30 > 1u)
  {
    v83 = *&t1.c;
    v86 = *&t1.a;
    v66 = xmmword_18DDAB500;
    v80 = *&t1.tx;
    if (v30 == 2)
    {
      v67 = xmmword_18DDBA6B0;
    }

    else
    {
      v67 = xmmword_18DDAA020;
    }

LABEL_67:
    v66 = vnegq_f64(v66);
    goto LABEL_68;
  }

  if (v30)
  {
    v80 = *&t1.tx;
    v83 = *&t1.c;
    v86 = *&t1.a;
    v66 = xmmword_18DDAB500;
    v67 = xmmword_18DDBA6B0;
LABEL_68:
    *&t1.a = v67;
    *&t1.c = v66;
    __asm { FMOV            V0.2D, #0.5 }

    *&t1.tx = _Q0;
    CGAffineTransformTranslate(&t2, &t1, -0.5, -0.5);
    t1 = t2;
    *&t2.a = v86;
    *&t2.c = v83;
    *&t2.tx = v80;
    CGAffineTransformConcat(&v87, &t1, &t2);
    v63 = *&v87.a;
    v64 = *&v87.c;
    v65 = *&v87.tx;
  }

  v71 = dword_18DDD7E00[*(a4 + 106)];
  *&t1.a = v63;
  *&t1.c = v64;
  *&t1.tx = v65;
  LODWORD(v59) = v19;
  LODWORD(v60) = v18;
  LODWORD(v61) = v20;
  LODWORD(v62) = v21;
  return [a3 setTiledRBImage:a1 transform:a2 sourceRect:&t1 interpolation:v71 tintColor:v17 flags:{0.0, 0.0, 1.0, 1.0, v59, v60, v61, v62, 0, 0, 0x3FF0000000000000, 0x3FF0000000000000}];
}

double StrongHash.init<A>(of:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(&v10, 0, sizeof(v10));
  CC_SHA1_Init(&v10);
  c = v10;
  (*(a3 + 8))(&c, a2, a3);
  memset(&v10, 0, 20);
  CC_SHA1_Final(&v10, &c);
  (*(*(a2 - 8) + 8))(a1, a2);
  h4 = v10.h4;
  result = *&v10.h0;
  *a4 = *&v10.h0;
  *(a4 + 16) = h4;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(StrongHash, DisplayList.Version)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(StrongHash, DisplayList.Version)>)
  {
    type metadata accessor for (Path, FillStyle)(255, &lazy cache variable for type metadata for (StrongHash, DisplayList.Version), &type metadata for StrongHash, &type metadata for DisplayList.Version);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(StrongHash, DisplayList.Version)>);
    }
  }
}

double EnvironmentValues.contentTransitionState.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8) | (*(a1 + 12) << 32);
  v5 = *(a1 + 13);
  v6 = *(a1 + 14);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *v2;
  v10 = *(a1 + 15);
  swift_retain_n();
  outlined copy of ContentTransition.Storage(v3, v4, v5);
  v11 = 0x1000000000000;
  if (!v6)
  {
    v11 = 0;
  }

  v12 = v4 | (v5 << 40) | v11 | (v10 << 56);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(v2, v3, v12, v7, v8);

  outlined consume of ContentTransition.Storage(v3, v4, v5);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v9, *v2);
  }

  outlined consume of ContentTransition.Storage(v3, v4, v5);

  return result;
}

unint64_t ResolvedShadowStyle.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v43 = xmmword_18DD85540;
    v8 = 0.5;
    v9 = 0.0;
    v10 = 2143289344;
    v11 = 0;
    v12 = 0;
LABEL_4:
    v3[3] = 0;
    *a2 = v43;
    *(a2 + 16) = v10;
    *(a2 + 24) = v9;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
    *(a2 + 48) = v8;
    *(a2 + 52) = v7;
    return result;
  }

  v7 = 0;
  v43 = xmmword_18DD85540;
  v8 = 0.5;
  v9 = 0.0;
  v10 = 2143289344;
  v11 = 0;
  v12 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v13 = v3[4];
      if (v5 < v13)
      {
        goto LABEL_13;
      }

      if (v13 < v5)
      {
        goto LABEL_91;
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
      goto LABEL_91;
    }

LABEL_13:
    v14 = result >> 3;
    v15 = result & 7;
    if (result >> 3 > 2)
    {
      break;
    }

    if (v14 == 1)
    {
      if (v15 != 2)
      {
        goto LABEL_91;
      }

      v29 = v3[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
        v29 = isUniquelyReferenced_nonNull_native;
      }

      v32 = *(v29 + 16);
      v31 = *(v29 + 24);
      if (v32 >= v31 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v29);
        v29 = isUniquelyReferenced_nonNull_native;
      }

      *(v29 + 16) = v32 + 1;
      *(v29 + 8 * v32 + 32) = v6;
      v3[5] = v29;
      result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_98;
      }

      v33 = v3[1] + result;
      if (v6 < v33)
      {
        goto LABEL_91;
      }

      v3[2] = v33;
      specialized Color.ResolvedHDR.init(from:)(v3, &v44);
      v34 = v3[5];
      if (!*(v34 + 16))
      {
        goto LABEL_100;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v35 = *(v34 + 16);
        if (!v35)
        {
          goto LABEL_90;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
        v34 = result;
        v35 = *(result + 16);
        if (!v35)
        {
LABEL_90:
          __break(1u);
LABEL_91:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          return swift_willThrow();
        }
      }

      v36 = v35 - 1;
      v6 = *(v34 + 8 * v36 + 32);
      *(v34 + 16) = v36;
      v3[5] = v34;
      v3[2] = v6;
      v43 = v44;
      v10 = v45;
    }

    else
    {
      if (v14 != 2)
      {
LABEL_58:
        if ((result & 7) > 1)
        {
          if (v15 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_105;
            }

            v37 = v3[1] + result;
            if (v6 < v37)
            {
              goto LABEL_91;
            }
          }

          else
          {
            if (v15 != 5)
            {
              goto LABEL_91;
            }

            v37 = v3[1] + 4;
            if (v6 < v37)
            {
              goto LABEL_91;
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

          if (v15 != 1)
          {
            goto LABEL_91;
          }

          v37 = v3[1] + 8;
          if (v6 < v37)
          {
            goto LABEL_91;
          }
        }

        v3[1] = v37;
        goto LABEL_6;
      }

      if (v15 == 5)
      {
        v38 = v3[1];
        if (v6 < (v38 + 1))
        {
          goto LABEL_91;
        }

        v39 = *v38;
        v3[1] = v38 + 1;
        v9 = v39;
      }

      else
      {
        if (v15 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_104;
          }

          v17 = v3[1];
          if (v6 < v17 + result)
          {
            goto LABEL_91;
          }

          v3[3] = 17;
          v3[4] = v17 + result;
        }

        else
        {
          if (v15 != 1)
          {
            goto LABEL_91;
          }

          v17 = v3[1];
        }

        if (v6 < (v17 + 1))
        {
          goto LABEL_91;
        }

        v9 = *v17;
        v3[1] = v17 + 1;
      }
    }

LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      if ((result & 7) != 0)
      {
        if (v15 != 2)
        {
          goto LABEL_91;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_103;
        }

        v28 = v3[1] + result;
        if (v6 < v28)
        {
          goto LABEL_91;
        }

        v3[3] = 32;
        v3[4] = v28;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v7 = result;
    }

    else
    {
      if (v14 != 5)
      {
        goto LABEL_58;
      }

      if (v15 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_102;
        }

        v16 = v3[1];
        if (v6 < v16 + result)
        {
          goto LABEL_91;
        }

        v3[3] = 45;
        v3[4] = v16 + result;
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_91;
        }

        v16 = v3[1];
      }

      if (v6 < (v16 + 1))
      {
        goto LABEL_91;
      }

      v8 = *v16;
      v3[1] = v16 + 1;
    }

    goto LABEL_6;
  }

  if (v15 != 2)
  {
    goto LABEL_91;
  }

  v18 = v3[5];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  if ((v19 & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
    v18 = v19;
  }

  v21 = *(v18 + 16);
  v20 = *(v18 + 24);
  if (v21 >= v20 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
    v18 = v19;
  }

  *(v18 + 16) = v21 + 1;
  *(v18 + 8 * v21 + 32) = v6;
  v3[5] = v18;
  result = ProtobufDecoder.decodeVarint()(v19);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v22 = v3[1] + result;
    if (v6 < v22)
    {
      goto LABEL_91;
    }

    v3[2] = v22;
    specialized CGPoint.init(from:)(v3);
    v25 = v3[5];
    if (!*(v25 + 16))
    {
      goto LABEL_99;
    }

    v11 = v23;
    v12 = v24;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v26 = *(v25 + 16);
      if (!v26)
      {
        goto LABEL_101;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
      v25 = result;
      v26 = *(result + 16);
      if (!v26)
      {
        goto LABEL_101;
      }
    }

    v27 = v26 - 1;
    v6 = *(v25 + 8 * v27 + 32);
    *(v25 + 16) = v27;
    v3[5] = v25;
    v3[2] = v6;
    goto LABEL_6;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  __break(1u);
  do
  {
    __break(1u);
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v40 = *(result + 16);
    if (v40)
    {
      goto LABEL_96;
    }

    __break(1u);
    a2 = v3[5];
  }

  while (!*(a2 + 16));
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v40 = *(a2 + 16);
    if (v40)
    {
LABEL_96:
      v41 = v40 - 1;
      v42 = *(a2 + 8 * v41 + 32);
      *(a2 + 16) = v41;
      v3[5] = a2;
      v3[2] = v42;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v40 = *(result + 16);
    if (v40)
    {
      goto LABEL_96;
    }
  }

  __break(1u);
  return result;
}

uint64_t DefaultLayoutViewResponder.__deallocating_deinit(__n128 a1)
{
  DefaultLayoutViewResponder.deinit(a1);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for _DisplayList_ViewFactory.makeView() in conformance EmptyViewFactory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnyViewStorage<EmptyView>(0, a2, a3, a4);

  return swift_allocObject();
}

void type metadata accessor for AnyViewStorage<EmptyView>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for AnyViewStorage<EmptyView>)
  {
    v4 = type metadata accessor for AnyViewStorage(0, &type metadata for EmptyView, &protocol witness table for EmptyView, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AnyViewStorage<EmptyView>);
    }
  }
}

void *assignWithCopy for DynamicViewContainer.Value(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = ((a1 + v7 + 8) & ~v7);
  v9 = ((a2 + v7 + 8) & ~v7);
  v10 = *(v6 + 48);
  v11 = v10(v8, 1, AssociatedTypeWitness);
  v12 = v10(v9, 1, AssociatedTypeWitness);
  if (v11)
  {
    if (!v12)
    {
      (*(v6 + 16))(v8, v9, AssociatedTypeWitness);
      (*(v6 + 56))(v8, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v13 = *(v6 + 84);
    v14 = *(v6 + 64);
  }

  else
  {
    if (!v12)
    {
      (*(v6 + 24))(v8, v9, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v6 + 8))(v8, AssociatedTypeWitness);
    v13 = *(v6 + 84);
    v14 = *(v6 + 64);
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 1;
  }

  memcpy(v8, v9, v15);
LABEL_12:
  if (*(v6 + 84))
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = *(v6 + 64) + 1;
  }

  v17 = ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  v18 = *((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  v19 = *v17;
  *v17 = v18;
  v20 = v18;

  return a1;
}

void destroy for DynamicViewContainer.Value(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);
  if (!(*(v4 + 48))(v5, 1, AssociatedTypeWitness))
  {
    (*(v4 + 8))(v5, AssociatedTypeWitness);
  }

  v6 = v5 + *(v4 + 64);
  if (!*(v4 + 84))
  {
    ++v6;
  }

  v7 = *((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
}

void specialized GraphicsContext.clipToLayer(opacity:options:content:)(char a1, void *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  GraphicsContext.copyOnWrite()();
  v8 = *a2;
  v9 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v10 = swift_allocObject();
  *(v10 + 32) = xmmword_18DD85500;
  *(v10 + 48) = 1065353216;
  *(v10 + 56) = 0x7FF8000000000000;
  v11 = v8[2];
  v12 = *(v11 + 64);
  if (v12 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v10 + 16) = v11;
  }

  else
  {
    v13 = RBDrawingStateGetDisplayList();
    v15 = v8[4];
    v14 = v8[5];
    v16 = v15;
    v17 = v14;
    if (v15 == 1)
    {
      v16 = *(v11 + 48);
      v17 = *(v11 + 56);
    }

    v20 = v16;
    v21 = v17;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v15, v14);
    *(v10 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v13, &v20);
  }

  *(v10 + 24) = v9;
  *(v10 + 64) = 0;
  v19 = v10;
  v20 = a5;
  LOWORD(v21) = a6;
  HIDWORD(v21) = HIDWORD(a6);

  DisplayList.GraphicsRenderer.render(list:in:)(&v20, &v19);

  RBDrawingStateClipLayer();
}

uint64_t initializeWithCopy for PathDrawingStyle(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *(a2 + 40);
  outlined copy of PathDrawingStyle(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

double outlined consume of PathDrawingStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Path>, MainThreadFlags>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Path>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Path>, &type metadata for Path, &protocol witness table for Path, type metadata accessor for ViewBodyAccessor);
    v3 = v2;
    lazy protocol witness table accessor for type ViewBodyAccessor<Path> and conformance ViewBodyAccessor<A>();
    v7[0] = v3;
    v7[1] = &type metadata for MainThreadFlags;
    v7[2] = v4;
    v7[3] = &protocol witness table for MainThreadFlags;
    v5 = type metadata accessor for StaticBody(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Path>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for FontBox<Font.DefaultProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FontBox<Font.DefaultProvider>)
  {
    lazy protocol witness table accessor for type Font.DefaultProvider and conformance Font.DefaultProvider();
    v4 = type metadata accessor for FontBox(a1, &type metadata for Font.DefaultProvider, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for FontBox<Font.DefaultProvider>);
    }
  }
}

BOOL LinearGradient._Paint.isOpaque.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (*v0 + 44);
  LOBYTE(result) = 1;
  v4 = 1 - v1;
  do
  {
    if (result)
    {
      result = *v2 == 1.0;
      if (!v4)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (!v4)
      {
        return result;
      }
    }

    ++v4;
    v2 += 12;
  }

  while (v4 != 1);
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for PathSet.Element(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  return a1;
}

void type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>)
  {
    type metadata accessor for (RBImageRendererProperty, Any)(255);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>);
    }
  }
}

void type metadata accessor for (RBImageRendererProperty, Any)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (RBImageRendererProperty, Any))
  {
    type metadata accessor for RBImageRendererProperty(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (RBImageRendererProperty, Any));
    }
  }
}

void outlined copy of GraphicsContext.Filter.Storage(id a1, id a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a11 >> 27;
  if (a11 >> 27 <= 0x11)
  {
    if (a11 >> 27 > 5)
    {
      if (v11 != 6 && v11 != 8)
      {
        return;
      }
    }

    else if (v11 != 3)
    {
      if (v11 == 5)
      {

        outlined copy of Path.Storage(a5, a6, a7, a8, a9);
      }

      return;
    }

    goto LABEL_14;
  }

  if (a11 >> 27 > 0x13)
  {
    if (v11 == 20)
    {
      v13 = a2 & 1;

      outlined copy of EitherGradient(a1, v13);
    }

    else if (v11 == 24)
    {
      v12 = a1;
    }
  }

  else
  {
    if (v11 != 18)
    {
      if (v11 != 19)
      {
        return;
      }

LABEL_14:

      return;
    }

    outlined copy of GraphicsContext.Shading.Storage(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

uint64_t Shader.ResolvedShader.rbFilterFlags.getter()
{
  v1 = *(v0 + 24);
  if ((v1 & 2) != 0)
  {
    if ((v1 & 1) == 0)
    {
      result = 1;
      if ((v1 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    result = 17;
    if ((v1 & 8) != 0)
    {
LABEL_8:
      result = result | 0x40;
    }
  }

  else if ((v1 & 4) != 0)
  {
    if (v1)
    {
      result = 18;
      if ((v1 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    result = 2;
    if ((v1 & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if ((v1 & 1) == 0)
    {
      result = 0;
      if ((v1 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    result = 16;
    if ((v1 & 8) != 0)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  if ((v1 & 0x10) != 0)
  {
    return result | 0x80;
  }

  return result;
}

BOOL KeyframeTrackState.isInitial.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    (*(v2 + 8))(v5, a1);
  }

  return EnumCaseMultiPayload == 2;
}

void KeyframeTrackState.updateAnimation(time:)(double *a1, void *a2)
{
  v3 = v2;
  v6 = a2[2];
  v7 = type metadata accessor for KeyframeTrackState.RepeatingState(0, v6, a2[3], a2[4]);
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  v12 = type metadata accessor for KeyframeTimeline(0, v6, v10, v11);
  v51 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = *(a2 - 1);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a1;
  v21 = *(v15 + 16);
  v50 = v3;
  v21(v19, v3, a2, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v27 = v51;
    v28 = *v19;
    if ((v19[1] & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    v32 = *(v15 + 8);

    v33 = v50;
    v32(v50, a2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v35 = swift_projectBox();
    v36 = v35 + *(TupleTypeMetadata2 + 48);
    v37 = *v36;
    v38 = *(v36 + 8);
    (*(v27 + 16))(v14, v35, v12);
    if ((v38 & 1) == 0)
    {
      if (v20 <= v37)
      {
        v45 = 0;
        goto LABEL_17;
      }

      v37 = v20;
    }

    if (KeyframeTimeline.duration.getter(v12, v39, v40, v41) < v20 - v37)
    {
      v42 = swift_allocBox();
      v44 = KeyframeTimeline.value(progress:)(v12, v43, 1.0);
      (*(v27 + 8))(v14, v12, v44);

LABEL_18:
      *v33 = v28;
      v33[1] = v42;
      swift_storeEnumTagMultiPayload();

LABEL_19:

      return;
    }

    v45 = 1;
LABEL_17:
    v46 = swift_allocBox();
    v48 = v47 + *(TupleTypeMetadata2 + 48);
    (*(v27 + 32))(v47, v14, v12);
    *v48 = v37;
    *(v48 + 8) = v45;

    v42 = v46 | 0x8000000000000000;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v23 = v52;
    v24 = *(v52 + 32);
    v24(v9, v19, v7);
    v25 = &v9[*(v7 + 44)];
    v26 = *(v25 + 1);
    if (v26 < 0)
    {
      v52 = *(v25 + 2);
      v29 = *v25;
      v30 = v50;
      (*(v15 + 8))(v50, a2);
      v31 = v20;
      if (((v20 > v29) & ~v26) == 0)
      {
        v31 = v29;
      }

      *v25 = v31;
      *(v25 + 1) = v26 & 1u | (v20 > v29) | 0x8000000000000000;
      *(v25 + 2) = v52;
      v24(v30, v9, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      (*(v23 + 8))(v9, v7);
    }
  }
}

uint64_t AnimationPath.update(value:time:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v11 = v16 - v10;
  v16[1] = a3;
  type metadata accessor for AnimationPath.Element(255, a4, a5, v12);
  v13 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v13);
  result = Collection.isEmpty.getter();
  if ((result & 1) == 0)
  {
    AnimationPath.animatableData(at:)(a3, a4, a5, v15, v11, a1);
    return (*(a5 + 32))(v11, a4, a5);
  }

  return result;
}

uint64_t AnimationPath.animatableData(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v54 = a5;
  v10 = type metadata accessor for AnimationPath.Element(255, a2, a3, a4);
  v11 = type metadata accessor for Optional();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v44 - v12;
  v49 = a3;
  v50 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v44 - v14;
  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - v21;
  if (MEMORY[0x193ABF2C0](a1, v10, v20))
  {
    v23 = 0;
    v24 = (v15 + 8);
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v15 + 16))(v22, a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v23, v10);
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v44 != 8)
        {
          __break(1u);
          return result;
        }

        v55 = result;
        (*(v15 + 16))(v22, &v55, v10);
        swift_unknownObjectRelease();
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_11:
          __break(1u);
          break;
        }
      }

      (*(v15 + 32))(v18, v22, v10);
      if (a6 <= AnimationPath.Element.duration.getter(v10, v27, v28, v29))
      {
        AnimationPath.Element.animatableData(at:)(v10, v54, a6);
        return (*v24)(v18, v10);
      }

      v33 = AnimationPath.Element.duration.getter(v10, v30, v31, v32);
      (*v24)(v18, v10);
      a6 = a6 - v33;
      ++v23;
    }

    while (v26 != MEMORY[0x193ABF2C0](a1, v10));
  }

  v55 = a1;
  v35 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6310], v35);
  v36 = v51;
  BidirectionalCollection.last.getter();
  v37 = (*(v15 + 48))(v36, 1, v10);
  v39 = AssociatedTypeWitness;
  if (v37 == 1)
  {
    (*(v47 + 8))(v36, v48);
    v40 = *(v39 - 8);
    v41 = v52;
    (*(v40 + 56))(v52, 1, 1, v39);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    result = (*(v40 + 48))(v41, 1, v39);
    if (result != 1)
    {
      return (*(v45 + 8))(v41, v46);
    }
  }

  else
  {
    v42 = v52;
    AnimationPath.Element.end.getter(v10, v38, v52);
    (*(v15 + 8))(v36, v10);
    v43 = *(v39 - 8);
    (*(v43 + 56))(v42, 0, 1, v39);
    return (*(v43 + 32))(v54, v42, v39);
  }

  return result;
}

double _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVyAHy12CoreGraphics7CGFloatVAKGALG_AA06SpringD033_73E5E3E568519775ECB92F029EBA0DDALLVyAMGTt0B5@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (type metadata accessor for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(0), v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v8);
    outlined init with take of Any(v8, v9);
    outlined init with take of Any(v9, v8);
    swift_dynamicCast();
  }

  else
  {
    result = 0.0;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t InternalCustomAnimationModifiedContent.animate<A>(value:time:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = *(a3 + 40);
  v13 = *(*(a3 + 32) + 8);
  v16 = *(a3 + 16);
  v17 = v13;
  v18 = v12;
  v14 = type metadata accessor for CustomAnimationModifiedContent(0, &v16);
  return (*(v14[5] + 16))(v6, a1, a2, a4, v14[2], a5, v14[4], v14[3], a6, v14[5]);
}

uint64_t DelayAnimation.animate<A, B>(base:value:time:context:)(__n128 a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a1.n128_f64[0] = a1.n128_f64[0] - a2;
  if (a1.n128_f64[0] <= 0.0)
  {
    a1.n128_f64[0] = 0.0;
  }

  return (*(a9 + 16))(a4, a5, a6, a8, a7, a9, a1);
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA4PathV_AA15ForegroundStyleVTt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    v10 = *(a2 + 16);
    v20[2] = *(a2 + 32);
    v20[3] = v8;
    v11 = *(a2 + 36);
    v20[4] = v9;
    v21 = *(a2 + 80);
    v20[0] = *a2;
    v20[1] = v10;
    LOBYTE(v16) = 0;
    swift_beginAccess();
    v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v20, &v16, 0x100000000);
    swift_endAccess();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA4PathVAA010ForegroundS0VG_Tt5B5(v4, a2, v12, 0, &v17);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_13;
    }

    if ((v11 & 2) != 0)
    {
      v16 = v4;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<Path, ForegroundStyle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<Path, ForegroundStyle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<Path, ForegroundStyle>>, "]");
      result = Attribute.init<A>(body:value:flags:update:)();
      v14 = v18 | 0x80;
LABEL_14:
      *a3 = v17;
      *(a3 + 8) = v14;
      *(a3 + 12) = result;
      return result;
    }

LABEL_13:
    v14 = v18;
    result = v19;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v15;
  return result;
}

double Font.resolve(in:)@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v5, v9);
  }

  else
  {
    v8[0] = *a1;
    v8[1] = 0;

    static EnvironmentValues.FontContextKey.value(in:)(v8, v9);
  }

  *a3 = a2;
  v6 = v9[1];
  *(a3 + 8) = v9[0];
  *(a3 + 24) = v6;
  *(a3 + 40) = v9[2];

  return result;
}

uint64_t Font.Resolved.ctFont.getter()
{
  v1 = *v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 3);
  v14 = *(v0 + 1);
  v15 = v3;
  v16 = v2;
  *&v13[0] = *(&v2 + 1);

  v4 = MEMORY[0x1E69E7CC0];
  specialized Array.append<A>(contentsOf:)(MEMORY[0x1E69E7CC0]);
  v5 = *&v13[0];
  outlined init with copy of Font.Context(&v14, v13);

  v10 = v14;
  v11 = v15;
  v12 = v16;
  v17[0] = v14;
  v17[1] = v15;
  *&v18 = v16;
  *(&v18 + 1) = v4;
  v13[1] = v14;
  v13[2] = v15;
  v13[3] = v18;
  *&v13[0] = v1;
  *(&v13[0] + 1) = v5;
  outlined init with copy of Font.Context(v17, v19);
  v6 = one-time initialization token for shared;

  if (v6 != -1)
  {
    swift_once();
  }

  specialized ObjectCache.subscript.getter(v13);
  v8 = v7;
  outlined destroy of Font.FontCache.Key(v13);
  v19[0] = v10;
  v19[1] = v11;
  v20 = v12;
  v21 = v4;
  outlined destroy of Font.Context(v19);
  return v8;
}

void closure #1 in SDFLayer.update(shape:size:in:backdropGroupID:)(uint64_t *a1, __n128 *a2, char a3, char a4, double a5, double a6, __n128 a7, __n128 a8, __n128 a9, double a10, float a11)
{
  v15 = a9.n128_f64[0];
  v108 = *MEMORY[0x1E69E9840];
  if (a5 != 0.0 || a6 != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    RBDrawingStateTranslateCTM();
  }

  v18 = 0;
  v19 = a2[1];
  v89 = *a2;
  v90 = v19;
  v20 = a2[2].n128_u8[0];
  v91 = v20;
  v21 = a2->n128_u64[0];
  v22 = a2->n128_i64[1];
  *&v107[0] = 256;
  v72 = a2[1].n128_i64[0];
  v73 = a2[1].n128_i64[1];
  memset(v107 + 8, 0, 33);
  if (a3)
  {
    v18 = a4 == 2 ? 2 : 1;
    if (a11 != 0.0)
    {
      if (v91 > 2u)
      {
        if (v91 == 5)
        {
          if (*(v89.n128_u64[0] + 16))
          {
            v23 = v22;
            v70 = v18;
            if (*(v89.n128_u64[0] + 16) == 1)
            {

              RBPathGetBoundingRect();
            }

            else
            {

              v28 = MEMORY[0x193AC3640](v89.n128_u64[0] + 24);
            }

            v39 = v28;
            v40 = v29;
            v41 = v30;
            v42 = v31;
            outlined destroy of PathSet.Element(a2);
            v27 = v42;
            v26 = v41;
            v25 = v40;
            v24 = v39;
            v18 = v70;
          }

          else
          {
            v32 = *(v89.n128_u64[0] + 24);
            if (!v32)
            {
              __break(1u);
              goto LABEL_60;
            }

            v23 = v22;
            v33 = v18;
            v34 = v32;

            PathBoundingBox = CGPathGetPathBoundingBox(v34);
            x = PathBoundingBox.origin.x;
            y = PathBoundingBox.origin.y;
            width = PathBoundingBox.size.width;
            height = PathBoundingBox.size.height;

            outlined destroy of PathSet.Element(a2);
            v27 = height;
            v26 = width;
            v25 = y;
            v24 = x;
            v18 = v33;
          }
        }

        else
        {
          if (v91 != 6)
          {
            goto LABEL_60;
          }

          v23 = v22;
          v24 = *MEMORY[0x1E695F050];
          v25 = *(MEMORY[0x1E695F050] + 8);
          v26 = *(MEMORY[0x1E695F050] + 16);
          v27 = *(MEMORY[0x1E695F050] + 24);
        }
      }

      else
      {
        v23 = v22;
        if (v91 && v91 != 1)
        {
          v24 = *(v89.n128_u64[0] + 16);
          v25 = *(v89.n128_u64[0] + 24);
          v26 = *(v89.n128_u64[0] + 32);
          v27 = *(v89.n128_u64[0] + 40);
        }

        else
        {
          v25 = v89.n128_f64[1];
          v24 = v89.n128_f64[0];
          v27 = v90.n128_f64[1];
          v26 = v90.n128_f64[0];
        }
      }

      v43 = v18;
      GraphicsContext.addSDFGradientOvalizationFilter(_:ovalization:bounds:)(v18, a11, v24, v25, v26, v27);
      v18 = v43;
      v22 = v23;
    }
  }

  GraphicsContext.addSDFGradientFilter(_:)(v18);
  __asm { FMOV            V0.4S, #1.0 }

  v78 = _Q0;
  LODWORD(v79) = 2143289344;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v78);
  v104 = v86;
  v105 = v87;
  v106 = v88;
  v100 = v82;
  v101 = v83;
  v102 = v84;
  v103 = v85;
  v96 = v78;
  v97 = v79;
  v98 = v80;
  v99 = v81;
  v93 = v91;
  v92[0] = v89;
  v92[1] = v90;
  if (((1 << v91) & 0x47) == 0)
  {
    if (v91 == 5)
    {
      type metadata accessor for Path.PathBox();
      v21 = swift_allocObject();
      *(v21 + 40) = 0u;
      *(v21 + 56) = 0u;
      *(v21 + 72) = 0u;
      *(v21 + 88) = 0u;
      *(v21 + 104) = 0u;
      *(v21 + 24) = 0u;
      *(v21 + 16) = 2;
      RBPathStorageInit();
      LOWORD(v76[0]) = 0;
      MEMORY[0x193AC35E0](v21 + 24, 20, 0, v76);
      Path.append(to:)(v21 + 24);
      MEMORY[0x193AC35E0](v21 + 24, 16, 0, 0);
      v22 = 0;
      v72 = 0;
      v73 = 0;
      v20 = 5;
      goto LABEL_27;
    }

    while (1)
    {
LABEL_60:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  outlined init with copy of Path.Storage(v92, v76);
LABEL_27:
  *&v94[0] = v21;
  *&v94[1] = v22;
  *&v94[2] = v72;
  *&v94[3] = v73;
  v95 = v20;
  v49 = *a1;
  if (v15 != 0.0 && a10 != 0.0)
  {
    v71 = v20;
    outlined copy of Path.Storage(v21, v22, v72, v73, v20);
    v50 = RBDrawingStateBeginLayer();
    type metadata accessor for GraphicsContext.Storage();
    v51 = swift_allocObject();
    *(v51 + 32) = xmmword_18DD85500;
    *(v51 + 48) = 1065353216;
    *(v51 + 56) = 0x7FF8000000000000;
    v52 = *(v49 + 16);
    v53 = *(v52 + 64);
    if (v53 == RBDrawingStateGetDefaultColorSpace())
    {
      *(v51 + 16) = v52;
    }

    else
    {
      v69 = v22;
      v68 = RBDrawingStateGetDisplayList();
      v57 = *(v49 + 32);
      v56 = *(v49 + 40);
      v58 = v57;
      v59 = v56;
      if (v57 == 1)
      {
        v58 = *(v52 + 48);
        v59 = *(v52 + 56);
      }

      *&v76[0] = v58;
      *(&v76[0] + 1) = v59;
      type metadata accessor for GraphicsContext.Storage.Shared();
      swift_allocObject();
      outlined copy of EnvironmentValues?(v57, v56);
      *(v51 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v68, v76);
      v22 = v69;
    }

    *(v51 + 24) = v50;
    *(v51 + 64) = 0;
    *&v76[0] = v51;

    closure #1 in GraphicsContext.drawSDF(of:style:distanceRange:gradient:ovalization:)(v76, v94, &v96, v107, v15, a10);

    RBDrawingStateDrawLayer();

    outlined consume of Path.Storage(v21, v22, v72, v73, v71);
    v60 = v21;
    v61 = v22;
    v62 = v72;
    v63 = v73;
    v64 = v71;
    goto LABEL_56;
  }

  GraphicsContext._shapeRenderingMode.getter(*a1, v76);
  v54 = v22;
  if (a10 == 0.0)
  {
    if (v15 < 0.0)
    {
      v55 = -v15;
    }

    else
    {
      v55 = 0.0;
    }
  }

  else if (a10 > 0.0)
  {
    v55 = -a10;
  }

  else
  {
    v55 = -0.0;
  }

  v65 = v76[0];
  v66 = *(v76 + 1);
  if (*(v49 + 56) != v55)
  {
    GraphicsContext.copyOnWrite()();
    v49 = *a1;
    *(*a1 + 56) = v55;
  }

  v76[7] = v103;
  v76[8] = v104;
  v76[9] = v105;
  v77 = v106;
  v76[5] = v101;
  v76[6] = v102;
  v76[0] = v96;
  v76[1] = v97;
  v76[3] = v99;
  v76[4] = v100;
  v76[2] = v98;
  v74 = v107[0];
  v75[0] = v107[1];
  *(v75 + 9) = *(&v107[1] + 9);
  GraphicsContext.draw(_:with:style:)(v94, v76, &v74, v49);
  if (v65 == 3)
  {
    if (v66 > 0.0)
    {
      v66 = -v66;
    }

    else
    {
      v66 = -0.0;
    }
  }

  else
  {
    if (v65 != 2)
    {
      v66 = NAN;
      v67 = v54;
      goto LABEL_58;
    }

    if (v66 <= 0.0)
    {
      v66 = 0.0;
    }
  }

  v67 = v54;
  if (*(v49 + 56) == v66)
  {
    v60 = v21;
    v61 = v54;
    v62 = v72;
    v63 = v73;
    v64 = v20;
LABEL_56:
    outlined consume of Path.Storage(v60, v61, v62, v63, v64);
    return;
  }

LABEL_58:
  GraphicsContext.copyOnWrite()();
  outlined consume of Path.Storage(v21, v67, v72, v73, v20);
  *(*a1 + 56) = v66;
}

void partial apply for closure #1 in SDFLayer.update(shape:size:in:backdropGroupID:)(uint64_t *a1, double a2, double a3, __n128 a4, __n128 a5, __n128 a6)
{
  a4.n128_u64[0] = *(v6 + 32);
  a5.n128_u64[0] = *(v6 + 40);
  a6.n128_u64[0] = *(v6 + 56);
  closure #1 in SDFLayer.update(shape:size:in:backdropGroupID:)(a1, *(v6 + 48), *(v6 + 72), *(v6 + 73), *(v6 + 16), *(v6 + 24), a4, a5, a6, *(v6 + 64), *(v6 + 76));
}

void *initializeWithCopy for GraphicsContext.Filter(void *a1, uint64_t a2)
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
  outlined copy of GraphicsContext.Filter.Storage(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v13;
  a1[10] = v14;
  return a1;
}

id Shader.makeRBShader(in:)(uint64_t *a1)
{
  v128 = *MEMORY[0x1E69E9840];
  type metadata accessor for Text.Style?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v104 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for ImageResolutionContext(0);
  MEMORY[0x1EEE9AC00](v101);
  v100 = (&v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = a1[1];
  v109 = *a1;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = objc_allocWithZone(MEMORY[0x1E69C70F0]);
  v12 = v8;
  v13 = MEMORY[0x193ABEC20](v7, v9);
  v14 = [v11 initWithLibrary:v12 function:v13];

  v111 = v10;
  v15 = *(v10 + 16);
  if (!v15)
  {
    return v14;
  }

  v16 = 0;
  v96 = 0;
  v17 = v111 + 32;
  v97 = *MEMORY[0x1E698D3F8];
  v110 = v6;
  v102 = v14;
  v105 = v111 + 32;
  v106 = v15;
  while (1)
  {
    if (v16 >= *(v111 + 16))
    {
      __break(1u);
LABEL_66:
      __break(1u);
    }

    v23 = v17 + 24 * v16;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 20);
    if (v27 <= 4)
    {
      if (v27 <= 1)
      {
        if (v27)
        {
          *&v121 = v25;
          v43 = v26;
          [v14 setArgumentBytes:&v121 atIndex:v16 type:2 count:1 flags:{0, outlined copy of Shader.Argument.Storage(v25, v24, v26, 1u)}];
          v19 = v25;
          v20 = v24;
          v21 = v43;
          v22 = 1;
        }

        else
        {
          LODWORD(v121) = v25;
          v32 = v26;
          [v14 setArgumentBytes:&v121 atIndex:v16 type:1 count:1 flags:{0, outlined copy of Shader.Argument.Storage(v25, v24, v26, 0)}];
          v19 = v25;
          v20 = v24;
          v21 = v32;
          v22 = 0;
        }
      }

      else if (v27 == 2)
      {
        *&v121 = v25;
        DWORD2(v121) = v24;
        v18 = v26;
        [v14 setArgumentBytes:&v121 atIndex:v16 type:3 count:1 flags:{0, outlined copy of Shader.Argument.Storage(v25, v24, v26, 2u)}];
        v19 = v25;
        v20 = v24;
        v21 = v18;
        v22 = 2;
      }

      else if (v27 == 3)
      {
        *&v121 = v25;
        *(&v121 + 1) = v24;
        v29 = v26;
        [v14 setArgumentBytes:&v121 atIndex:v16 type:4 count:1 flags:{0, outlined copy of Shader.Argument.Storage(v25, v24, v26, 3u)}];
        v19 = v25;
        v20 = v24;
        v21 = v29;
        v22 = 3;
      }

      else
      {
        v42 = v26;
        [v14 setArgumentBytes:v25 + 4 atIndex:v16 type:1 count:v25[2] flags:{3, outlined copy of Shader.Argument.Storage(v25, v24, v26, 4u)}];
        v19 = v25;
        v20 = v24;
        v21 = v42;
        v22 = 4;
      }

      goto LABEL_4;
    }

    if (v27 <= 7)
    {
      break;
    }

    if (v27 == 8)
    {
      v108 = v24;
      v39 = v109;
      if (v109 != 1)
      {
        v107 = v26;
        v51 = type metadata accessor for Text.Style(0);
        v52 = *(*(v51 - 8) + 56);
        v52(v104, 1, 1, v51);
        v53 = v100;
        v54 = v101;
        v100[2] = 0;
        v103 = v54[6];
        v52(v53 + v103, 1, 1, v51);
        v55 = v54[7];
        v56 = v53 + v54[8];
        *v56 = 520;
        v56[2] = 2;
        *(v53 + v54[9]) = 3;
        *(v53 + v54[10]) = 1;
        *v53 = v39;
        v53[1] = v6;
        outlined copy of EnvironmentValues?(v39, v6);
        outlined copy of Shader.Argument.Storage(v25, v108, v107, 8u);
        outlined copy of EnvironmentValues?(v39, v6);
        outlined assign with take of Text.Style?(v104, v53 + v103);
        *(v53 + v55) = v97;
        (*(*v25 + 80))(&v114, v53);
        outlined destroy of ImageResolutionContext(v53);
        v126[3] = v119[3];
        v126[4] = v119[4];
        v127[0] = v120[0];
        *(v127 + 11) = *(v120 + 11);
        v125 = v118;
        v126[0] = v119[0];
        v126[1] = v119[1];
        v126[2] = v119[2];
        v121 = v114;
        v122 = v115;
        v123 = v116;
        v124 = v117;
        if (BYTE8(v114) > 3u)
        {
          v17 = v105;
          v15 = v106;
          if (BYTE8(v114) == 4)
          {
            outlined destroy of Image.Resolved(&v121);
            outlined consume of Shader.Argument.Storage(v25, v108, v107, 8u);
            v6 = v110;
            outlined consume of EnvironmentValues?(v109, v110);
            v14 = v102;
            goto LABEL_5;
          }

          v58 = v109;
          v6 = v110;
          v14 = v102;
          v59 = v108;
          if (BYTE8(v114) == 255)
          {
            goto LABEL_60;
          }

LABEL_46:
          v118 = v125;
          v119[0] = v126[0];
          *(v119 + 12) = *(v126 + 12);
          v114 = v121;
          v115 = v122;
          v83 = 0.0;
          v116 = v123;
          v117 = v124;
          v84 = 0.0;
          if (*&v122 != 0.0)
          {
            v85 = *&v123;
            if (BYTE8(v123) > 3u)
            {
              v86 = *(&v122 + 1);
            }

            else
            {
              v86 = *&v123;
              v85 = *(&v122 + 1);
            }

            v83 = 1.0 / *&v122 * v85;
            v84 = 1.0 / *&v122 * v86;
          }

          v91.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(*&v84, *&v83), 0).value;
          if (!v91.value)
          {
            goto LABEL_60;
          }

          isa = v91.value;
        }

        else
        {
          isa = v121;
          if (BYTE8(v114))
          {
            v58 = v109;
            v6 = v110;
            v14 = v102;
            v17 = v105;
            v15 = v106;
            v59 = v108;
            if (BYTE8(v114) == 1)
            {
              LODWORD(v114) = RBImageMakeIOSurface();
              *(&v114 + 1) = v60;
              [v14 setArgumentBytes:&v114 atIndex:v16 type:7 count:1 flags:0];
LABEL_60:
              outlined destroy of Image.Resolved(&v121);
              outlined consume of Shader.Argument.Storage(v25, v59, v107, 8u);
              outlined consume of EnvironmentValues?(v58, v6);
              goto LABEL_5;
            }

            goto LABEL_46;
          }

          outlined init with copy of GraphicsImage(&v121, &v114);
          outlined init with copy of GraphicsImage(&v121, &v114);
          v58 = v109;
          v6 = v110;
          v14 = v102;
          v17 = v105;
          v15 = v106;
          v59 = v108;
        }

        LODWORD(v114) = RBImageMakeCGImage();
        *(&v114 + 1) = v92;
        [v14 setArgumentBytes:&v114 atIndex:v16 type:7 count:1 flags:0];

        outlined destroy of Image.Resolved(&v121);
        outlined consume of Shader.Argument.Storage(v25, v59, v107, 8u);
        outlined consume of EnvironmentValues?(v58, v6);
LABEL_59:

        goto LABEL_5;
      }

      LODWORD(v121) = 0;
      *(&v121 + 1) = 0;
      v40 = v108;
      v41 = v26;
      [v14 setArgumentBytes:&v121 atIndex:v16 type:7 count:1 flags:{0, outlined copy of Shader.Argument.Storage(v25, v108, v26, 8u)}];
      v19 = v25;
      v20 = v40;
      v21 = v41;
      v22 = 8;
    }

    else
    {
      v30 = v26;
      if (v27 == 9)
      {
        v31 = outlined copy of Shader.Argument.Storage(v25, v24, v26, 9u);
        if (v109 != 1)
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
          [v14 setArgumentData:isa atIndex:v16 type:0 flags:3];
          outlined consume of Shader.Argument.Storage(v25, v24, v30, 9u);
          goto LABEL_59;
        }

        [v14 setArgumentBytes:v31 atIndex:? type:? count:? flags:?];
        v19 = v25;
        v20 = v24;
        v21 = v30;
        v22 = 9;
      }

      else
      {
        [v14 setArgumentBytes:outlined copy of Shader.Argument.Storage(v25 atIndex:v24 type:v26 count:0xAu) flags:?];
        v19 = v25;
        v20 = v24;
        v21 = v30;
        v22 = 10;
      }
    }

LABEL_4:
    outlined consume of Shader.Argument.Storage(v19, v20, v21, v22);
LABEL_5:
    if (++v16 == v15)
    {
      return v14;
    }
  }

  if (v27 == 5)
  {
    v33 = v24;
    v34 = v109;
    if (v109 == 1)
    {
      v121 = 0uLL;
      v35 = v33;
      v36 = v26;
      v37 = outlined copy of Shader.Argument.Storage(v25, v33, v26, 5u);
      v38 = 2143289344;
    }

    else
    {
      *&v121 = v109;
      *(&v121 + 1) = v6;
      v47 = *(*v25 + 120);
      v36 = v26;
      outlined copy of Shader.Argument.Storage(v25, v33, v26, 5u);
      v48 = outlined copy of EnvironmentValues?(v34, v110);
      v47(&v112, &v121, v48);
      v17 = v105;
      v6 = v110;
      v49 = v34;
      v35 = v33;
      outlined consume of EnvironmentValues?(v49, v110);
      v37 = *&v112;
      v121 = v112;
      v38 = v113;
    }

    [v14 setArgumentBytes:&v121 atIndex:v16 type:5 count:1 flags:{0, v37, v96}];
    [v14 setArgumentColorSpace:2 atIndex:v16];
    v15 = v106;
    LODWORD(v50) = v38;
    [v14 setArgumentHeadroom:v16 atIndex:v50];
    v19 = v25;
    v20 = v35;
    v21 = v36;
    v22 = 5;
    goto LABEL_4;
  }

  if (v27 != 6)
  {
    *&v121 = v25;
    v44 = v26;
    *(&v121 + 1) = v24;
    v45 = v26;
    [v14 setArgumentBytes:&v121 atIndex:v16 type:5 count:1 flags:{0, outlined copy of Shader.Argument.Storage(v25, v24, v26, 7u)}];
    [v14 setArgumentColorSpace:2 atIndex:v16];
    LODWORD(v46) = v44;
    [v14 setArgumentHeadroom:v16 atIndex:v46];
    v19 = v25;
    v20 = v24;
    v21 = v45;
    v22 = 7;
    goto LABEL_4;
  }

  if (v109 == 1)
  {
    v28 = v26;
    [v14 setArgumentBytes:outlined copy of Shader.Argument.Storage(v25 atIndex:v24 type:v26 count:6u) flags:?];
    v19 = v25;
    v20 = v24;
    v21 = v28;
    v22 = 6;
    goto LABEL_4;
  }

  v61 = v25[2];
  if (v61 >> 59)
  {
    goto LABEL_66;
  }

  v62 = v25 + 4;
  v63 = 16 * v61;
  v64 = v26;
  v103 = v25[2];
  outlined copy of Shader.Argument.Storage(v25, v24, v26, 6u);
  v65 = v109;
  outlined copy of EnvironmentValues?(v109, v6);
  v107 = v64;
  outlined copy of Shader.Argument.Storage(v25, v24, v64, 6u);
  if (v63 < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    v108 = v24;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v68 = &v96 - v67;
    v69 = v103;
    v98 = v68;
    v99 = v70;
    if (v103)
    {
      v71 = (v68 + 8);
      v72 = v109;
      do
      {
        v73 = *v62++;
        *&v121 = v72;
        *(&v121 + 1) = v6;
        v74 = *(*v73 + 112);

        v75 = v74(&v121);
        v6 = v110;
        v76 = v75;
        v78 = v77;
        v80 = v79;
        v82 = v81;

        *(v71 - 2) = v76;
        *(v71 - 1) = v78;
        *v71 = v80;
        *(v71 + 1) = v82;
        v71 += 4;
        --v69;
      }

      while (v69);
    }

    else
    {
      v72 = v109;
    }

    v14 = v102;
    [v102 setArgumentBytes:v98 atIndex:v16 type:5 count:v103 flags:{3, v96}];
    [v14 setArgumentColorSpace:2 atIndex:v16];
    outlined consume of EnvironmentValues?(v72, v6);
    v87 = v108;
    v88 = v107;
    outlined consume of Shader.Argument.Storage(v25, v108, v107, 6u);
    v89 = v25;
    v90 = v87;
    goto LABEL_51;
  }

  v93 = swift_slowAlloc();
  v94 = v96;
  closure #1 in closure #3 in Shader.makeRBShader(in:)(v93, v103, v25 + 4, v103, v65, v6, v14, v16);
  v96 = v94;
  if (!v94)
  {
    MEMORY[0x193AC4820](v93, -1, -1);
    outlined consume of EnvironmentValues?(v65, v6);
    v88 = v107;
    outlined consume of Shader.Argument.Storage(v25, v24, v107, 6u);
    v89 = v25;
    v90 = v24;
LABEL_51:
    outlined consume of Shader.Argument.Storage(v89, v90, v88, 6u);
    v17 = v105;
    v15 = v106;
    goto LABEL_5;
  }

  result = MEMORY[0x193AC4820](v93, -1, -1);
  __break(1u);
  return result;
}

uint64_t @objc closure #7 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks(uint64_t a1)
{

  BezierOrder = RBPathStorageGetBezierOrder();

  return BezierOrder;
}

double destroy for KeyframeTrackState(void *a1, uint64_t a2)
{
  v2 = ((((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v2 <= 0x10)
  {
    v2 = 16;
  }

  v3 = v2;
  v4 = *(a1 + v2);
  if (v4 >= 2 && v3 != 0)
  {
    v4 = *a1 + 2;
  }

  if (v4 == 1)
  {
    (*(*(*(a2 + 16) - 8) + 8))();
  }

  else if (!v4)
  {
  }

  return result;
}

double _ResolvedKeyframes.duration.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  type metadata accessor for _ResolvedKeyframes.Track(255, v1, v3, v4);
  v5 = type metadata accessor for Array();

  swift_getWitnessTable(MEMORY[0x1E69E6340], v5, v1);
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in _ResolvedKeyframes.duration.getter, KeyPath, v5, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v8 + 32);
    v11 = v9 - 1;
    if (v11)
    {
      v12 = (v8 + 40);
      do
      {
        v13 = *v12++;
        v14 = v13;
        if (v10 < v13)
        {
          v10 = v14;
        }

        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

uint64_t closure #1 in _ResolvedKeyframes.append<A>(keyPath:path:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void, uint64_t, double), double a6)
{
  v10 = *a3;
  v11 = swift_modifyAtWritableKeyPath();
  a5(v12, a2, *(v10 + *MEMORY[0x1E69E6CE8] + 8), a4, a6);
  return v11(&v14, 0);
}

double AnimationPath.Element.duration.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = type metadata accessor for AnimationPath.SpringElement(0, v7, v8, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v14 = type metadata accessor for AnimationPath.CurveElement(0, v7, v8, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v18 = *(a1 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, v5, a1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v10 + 32))(v12, v22, v9);
      v24 = *&v12[*(v9 + 52)];
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v18 + 8))(v22, a1);
      return 0.0;
    }
  }

  else
  {
    (*(v15 + 32))(v17, v22, v14);
    v24 = *&v17[*(v14 + 36)];
    (*(v15 + 8))(v17, v14);
  }

  return v24;
}

uint64_t AnimationPath.Element.animatableData(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v56 = a2;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = v50 - v11;
  v13 = type metadata accessor for AnimationPath.SpringElement(0, v6, v7, v12);
  v52 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v50 - v14;
  v54 = v7;
  v17 = type metadata accessor for AnimationPath.CurveElement(0, v6, v7, v16);
  v18 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v50 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v3, a1, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = v52;
      (*(v52 + 32))(v15, v24, v13);
      v28 = *(v15 + 2);
      v57 = *v15;
      *&v58 = v28;
      v50[1] = *(v13 + 36);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v30 = v51;
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v31 = v53;
      Spring.value<A>(target:initialVelocity:time:)(v30, &v15[*(v13 + 44)], AssociatedTypeWitness, AssociatedConformanceWitness, a3);
      v32 = *(v55 + 8);
      v32(v30, AssociatedTypeWitness);
      dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
      v32(v31, AssociatedTypeWitness);
      return (*(v27 + 8))(v15, v13);
    }

    else
    {
      return (*(v55 + 32))(v56, v24, AssociatedTypeWitness);
    }
  }

  else
  {
    (*(v18 + 32))(v20, v24, v17);
    if (a3 >= 0.0)
    {
      if (AnimationPath.Element.duration.getter(a1, v34, v35, v36) >= a3)
      {
        v41 = &v20[v17[11]];
        v42 = v41[32];
        v43 = *(v41 + 1);
        v57 = *v41;
        v58 = v43;
        v59 = v42;
        v44 = UnitCurve.value(at:)(a3 / *&v20[v17[9]]);
        v45 = v20[v17[10]];
        v47 = type metadata accessor for HermiteCurve(0, v6, v54, v46);
        if (v45 == 1)
        {
          v48 = v47;
          v49 = HermiteCurve.arcLength.getter();
          HermiteCurve.value(atArcLength:)(v48, v56, v44 * v49);
        }

        else
        {
          HermiteCurve.value(at:)(v47, v56, v44);
        }

        return (*(v18 + 8))(v20, v17);
      }

      else
      {
        v40 = type metadata accessor for HermiteCurve(0, v6, v54, v39);
        (*(v55 + 16))(v56, &v20[*(v40 + 36)], AssociatedTypeWitness);
        return (*(*(v40 - 8) + 8))(v20, v40);
      }
    }

    else
    {
      (*(v55 + 16))(v56, v20, AssociatedTypeWitness);
      v38 = type metadata accessor for HermiteCurve(0, v6, v54, v37);
      return (*(*(v38 - 8) + 8))(v20, v38);
    }
  }
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA4PathVAA010ForegroundS0VG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<Path, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<Path, ForegroundStyle>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Path, ForegroundStyle>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Path, ForegroundStyle>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0u;
    *(v32 + 136) = 0u;
    *(v32 + 152) = v8;
    *(v32 + 24) = 0;
    *(v32 + 160) = 0u;
    *(v32 + 176) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Path, ForegroundStyle>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<Path, ForegroundStyle>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Path, ForegroundStyle>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Path, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Path, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Path, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

double outlined copy of PathDrawingStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  return result;
}

void type metadata accessor for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    v3 = v2;
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v6 = type metadata accessor for SpringState(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

double static _MaskAlignmentEffect._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v9 = *a1;
  v10 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v10;
  v17[4] = *(a2 + 64);
  v18 = *(a2 + 80);
  v11 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v11;
  v16[1] = v9;
  v12 = type metadata accessor for _MaskAlignmentEffect(255, a5, a6, a4);
  type metadata accessor for _GraphValue(0, v12, v13, v14);

  _GraphValue.subscript.getter(partial apply for closure #2 in static _MaskAlignmentEffect._makeView(modifier:inputs:body:), &type metadata for Alignment, v16);
  return specialized static _ViewOutputs.makeMaskView(inputs:contentBody:maskBody:outputsFromMask:mayUseForegroundColor:alignment:)(v17, partial apply for makeMask #1 <A>(inputs:) in static _MaskAlignmentEffect._makeView(modifier:inputs:body:), 0, 1, v16[0], a3, a7);
}

uint64_t HermiteCurve.value(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v28 = &v27 - v16;
  v17 = a3 * a3 * a3;
  v27 = *(a1 + 40);
  v29 = *(a1 + 44);
  v18 = a3 * a3 * 3.0;
  v19 = v17 + v17 - v18 + 1.0;
  v20 = v18 - (v17 + v17);
  v21 = v17 - (a3 * a3 + a3 * a3) + a3;
  v22 = v17 - a3 * a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v11, v19);
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v8, v20);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v24 = *(v6 + 8);
  v24(v8, AssociatedTypeWitness);
  v24(v11, AssociatedTypeWitness);
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v11, v21);
  v25 = v28;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v24(v11, AssociatedTypeWitness);
  v24(v14, AssociatedTypeWitness);
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v14, v22);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v24(v14, AssociatedTypeWitness);
  return (v24)(v25, AssociatedTypeWitness);
}

unint64_t GraphicsBlendMode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v5 = static GraphicsBlendMode.normal;
  v6 = byte_1ED52F818;
  v7 = a1[1];
  v8 = a1[2];
  if (v7 >= v8)
  {
    result = outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
LABEL_40:
    a1[3] = 0;
    *a2 = v5;
    *(a2 + 8) = v6 & 1;
    return result;
  }

  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  while (1)
  {
    result = a1[3];
    if (result)
    {
      v10 = a1[4];
      if (v7 < v10)
      {
        goto LABEL_13;
      }

      if (v10 < v7)
      {
        goto LABEL_38;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return outlined consume of GraphicsBlendMode(v5, v6 & 1);
    }

    if (result <= 7)
    {
LABEL_38:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return outlined consume of GraphicsBlendMode(v5, v6 & 1);
    }

LABEL_13:
    v11 = result & 7;
    if ((result & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v11 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return outlined consume of GraphicsBlendMode(v5, v6 & 1);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        v14 = a1[1] + result;
        if (v8 < v14)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v11 != 5)
        {
          goto LABEL_38;
        }

        v14 = a1[1] + 4;
        if (v8 < v14)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_5;
    }

    if ((result & 7) != 0)
    {
      if (v11 != 1)
      {
        goto LABEL_38;
      }

      v14 = a1[1] + 8;
      if (v8 < v14)
      {
        goto LABEL_38;
      }

LABEL_5:
      a1[1] = v14;
      goto LABEL_6;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return outlined consume of GraphicsBlendMode(v5, v6 & 1);
    }

LABEL_6:
    v7 = a1[1];
    if (v7 >= v8)
    {
      goto LABEL_40;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_20:
    v13 = ProtobufDecoder.decodeVarint()(result);
    result = outlined consume of GraphicsBlendMode(v5, v6 & 1);
    if (v2)
    {
      return result;
    }

    v6 = 0;
    if (v13 >> 31)
    {
      v5 = 0;
    }

    else
    {
      v5 = v13;
    }

    goto LABEL_6;
  }

  if (v11 != 2)
  {
    goto LABEL_38;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return outlined consume of GraphicsBlendMode(v5, v6 & 1);
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v12 = a1[1] + result;
    if (v8 < v12)
    {
      goto LABEL_38;
    }

    a1[3] = 8;
    a1[4] = v12;
    goto LABEL_20;
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

double destroy for AccessibilityNodeAttachment(uint64_t a1)
{
  type metadata accessor for AccessibilityNodeAttachment.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v2 = *(a1 + 88);
    if (v2)
    {
      if (v2 == 1)
      {
LABEL_6:
        if (*(a1 + 240) != 1)
        {
        }

        v3 = *(a1 + 288);

        return result;
      }

      __swift_destroy_boxed_opaque_existential_1((a1 + 64));
    }

    goto LABEL_6;
  }

  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v6 = *(a1 + 32) | (*(a1 + 34) << 16);
  if (EnumCaseMultiPayload == 1)
  {
    if (*(a1 + 34) != 255)
    {
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 16), *(a1 + 24), v6, BYTE2(v6) & 1);
    }

    if (*(a1 + 58) != 255)
    {
      v7 = *(a1 + 56) | (*(a1 + 58) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 40), *(a1 + 48), v7, BYTE2(v7) & 1);
    }

    if (*(a1 + 82) != 255)
    {
      v8 = *(a1 + 80) | (*(a1 + 82) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 64), *(a1 + 72), v8, BYTE2(v8) & 1);
    }

    v9 = *(a1 + 232);
    if (v9 != 1)
    {
      if (*(a1 + 162) != 255)
      {
        v10 = *(a1 + 160) | (*(a1 + 162) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 144), *(a1 + 152), v10, BYTE2(v10) & 1);
        v9 = *(a1 + 232);
      }

      if (v9)
      {
        if (*(a1 + 202) != 255)
        {
          v11 = *(a1 + 200) | (*(a1 + 202) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 184), *(a1 + 192), v11, BYTE2(v11) & 1);
        }

        if (*(a1 + 226) != 255)
        {
          v12 = *(a1 + 224) | (*(a1 + 226) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 208), *(a1 + 216), v12, BYTE2(v12) & 1);
        }
      }

      if (*(a1 + 344))
      {
        if (*(a1 + 314) != 255)
        {
          v13 = *(a1 + 312) | (*(a1 + 314) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 296), *(a1 + 304), v13, BYTE2(v13) & 1);
        }

        if (*(a1 + 338) != 255)
        {
          v14 = *(a1 + 336) | (*(a1 + 338) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 320), *(a1 + 328), v14, BYTE2(v14) & 1);
        }
      }
    }

    v15 = *(type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0) + 52);
    v16 = type metadata accessor for LinkDestination.Configuration(0);
    if (!(*(*(v16 - 8) + 48))(a1 + v15, 1, v16))
    {
      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 8))(a1 + v15, v17);
    }

    v18 = type metadata accessor for CodableAccessibilityAttachmentStorage.V3(0);

    v19 = a1 + *(v18 + 24);
    v20 = *(v19 + 48);
    if (v20 != 1)
    {
      v21 = *(v19 + 16);
      if (v21 != 255)
      {
        outlined consume of AccessibilityText.Storage(*v19, *(v19 + 8), v21 & 1);
        v20 = *(v19 + 48);
      }

      if (v20)
      {
        __swift_destroy_boxed_opaque_existential_1((v19 + 24));
      }
    }
  }

  else
  {
    if (*(a1 + 34) != 255)
    {
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 16), *(a1 + 24), v6, BYTE2(v6) & 1);
    }

    if (*(a1 + 58) != 255)
    {
      v22 = *(a1 + 56) | (*(a1 + 58) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 40), *(a1 + 48), v22, BYTE2(v22) & 1);
    }

    if (*(a1 + 82) != 255)
    {
      v23 = *(a1 + 80) | (*(a1 + 82) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 64), *(a1 + 72), v23, BYTE2(v23) & 1);
    }

    v24 = *(a1 + 232);
    if (v24 != 1)
    {
      if (*(a1 + 162) != 255)
      {
        v25 = *(a1 + 160) | (*(a1 + 162) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 144), *(a1 + 152), v25, BYTE2(v25) & 1);
        v24 = *(a1 + 232);
      }

      if (v24)
      {
        if (*(a1 + 202) != 255)
        {
          v26 = *(a1 + 200) | (*(a1 + 202) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 184), *(a1 + 192), v26, BYTE2(v26) & 1);
        }

        if (*(a1 + 226) != 255)
        {
          v27 = *(a1 + 224) | (*(a1 + 226) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 208), *(a1 + 216), v27, BYTE2(v27) & 1);
        }
      }

      if (*(a1 + 344))
      {
        if (*(a1 + 314) != 255)
        {
          v28 = *(a1 + 312) | (*(a1 + 314) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 296), *(a1 + 304), v28, BYTE2(v28) & 1);
        }

        if (*(a1 + 338) != 255)
        {
          v29 = *(a1 + 336) | (*(a1 + 338) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 320), *(a1 + 328), v29, BYTE2(v29) & 1);
        }
      }
    }

    v30 = *(type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0) + 52);
    v31 = type metadata accessor for LinkDestination.Configuration(0);
    if (!(*(*(v31 - 8) + 48))(a1 + v30, 1, v31))
    {
      v32 = type metadata accessor for URL();
      (*(*(v32 - 8) + 8))(a1 + v30, v32);
    }

    type metadata accessor for CodableAccessibilityAttachmentStorage.V2(0);
  }

  return result;
}

uint64_t specialized SpringAnimation.animate<A>(value:time:context:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  SpringModel.duration(epsilon:)(0.001);
  if (v9 <= a3 || (v10 = SpringModel.sample(at:)(a3), (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL))
  {
    *&result = 0.0;
    return result;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    if (a3 < 0.0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (6.28318531 / sqrt(a5) <= a3)
  {
LABEL_8:
    *(a1 + 17) = 1;
  }

LABEL_9:
  *&result = v10 * a2;
  return result;
}

void closure #2 in DisplayList.Effect.init(from:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
LABEL_50:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
LABEL_51:
    v3[3] = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = v10;
    *(v25 + 24) = v8;
    *(v25 + 28) = v7;
    *(v25 + 32) = v9;
    *a2 = v25;
    *(a2 + 8) = 0;
    *(a2 + 12) = 7;
    return;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v3[3];
    if (v11)
    {
      v12 = v3[4];
      if (v5 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v5)
      {
        goto LABEL_52;
      }

      v3[3] = 0;
    }

    a1 = ProtobufDecoder.decodeVarint()(a1);
    if (v2)
    {
      goto LABEL_54;
    }

    v11 = a1;
    if (a1 < 8)
    {
      goto LABEL_52;
    }

LABEL_11:
    if (v11 >> 3 == 2)
    {
      break;
    }

    if (v11 >> 3 == 1)
    {

      if ((v11 & 7) != 2)
      {
        goto LABEL_53;
      }

      v13 = v3[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
        v13 = isUniquelyReferenced_nonNull_native;
      }

      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
        v13 = isUniquelyReferenced_nonNull_native;
      }

      *(v13 + 16) = v16 + 1;
      *(v13 + 8 * v16 + 32) = v6;
      v3[5] = v13;
      v17 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v2)
      {
        return;
      }

      if (v17 < 0)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        __break(1u);
        v28 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
        v29 = *(v28 + 2);
        if (v29)
        {
          v26 = v29 - 1;
          v27 = *&v28[8 * v26 + 32];
          *(v28 + 2) = v26;
          v3[5] = v28;
          v3[2] = v27;
        }

        else
        {
          __break(1u);
        }

        return;
      }

      v18 = v3[1] + v17;
      if (v6 < v18)
      {
        goto LABEL_53;
      }

      v3[2] = v18;
      DisplayList.init(from:)(v3, &v30);
      v19 = v3[5];
      if (!*(v19 + 16))
      {
        goto LABEL_58;
      }

      a1 = swift_isUniquelyReferenced_nonNull_native();
      if (a1)
      {
        v20 = *(v19 + 16);
        if (!v20)
        {
          goto LABEL_49;
        }
      }

      else
      {
        a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        v19 = a1;
        v20 = *(a1 + 16);
        if (!v20)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      v21 = v20 - 1;
      v6 = *(v19 + 8 * v21 + 32);
      *(v19 + 16) = v21;
      v3[5] = v19;
      v3[2] = v6;
      v10 = v30;
      v8 = v31;
      v7 = v32;
    }

    else
    {
      v23 = v11 & 7;
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          a1 = ProtobufDecoder.decodeVarint()(a1);
          if (v2)
          {
            goto LABEL_54;
          }

          if ((a1 & 0x8000000000000000) != 0)
          {
            goto LABEL_60;
          }

          v24 = v3[1] + a1;
          if (v6 < v24)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v23 != 5)
          {
            goto LABEL_52;
          }

          v24 = v3[1] + 4;
          if (v6 < v24)
          {
            goto LABEL_52;
          }
        }

        goto LABEL_3;
      }

      if ((v11 & 7) != 0)
      {
        if (v23 != 1)
        {
          goto LABEL_52;
        }

        v24 = v3[1] + 8;
        if (v6 < v24)
        {
          goto LABEL_52;
        }

LABEL_3:
        v3[1] = v24;
        goto LABEL_4;
      }

      a1 = ProtobufDecoder.decodeVarint()(a1);
      if (v2)
      {
        goto LABEL_54;
      }
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_51;
    }
  }

  if ((v11 & 7) == 0)
  {
LABEL_31:
    a1 = ProtobufDecoder.decodeVarint()(a1);
    if (v2)
    {
      goto LABEL_54;
    }

    v9 = a1;
    goto LABEL_4;
  }

  if ((v11 & 7) != 2)
  {
    goto LABEL_52;
  }

  a1 = ProtobufDecoder.decodeVarint()(a1);
  if (v2)
  {
LABEL_54:

    return;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

  v22 = v3[1] + a1;
  if (v6 >= v22)
  {
    v3[3] = 16;
    v3[4] = v22;
    goto LABEL_31;
  }

LABEL_52:

LABEL_53:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

uint64_t sub_18D385188()
{

  return swift_deallocObject();
}

uint64_t _TrimmedShape.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v17 - v9;
  (*(v6 + 24))(v5, v6, v8);
  v11.f64[0] = *(v2 + *(a1 + 36));
  v11.f64[1] = *(v2 + *(a1 + 40));
  v17 = vmulq_f64(v11, vdupq_n_s64(0x4060000000000000uLL));
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  return AnimatablePair.init(_:_:)(v10, &v17, AssociatedTypeWitness, v13, AssociatedConformanceWitness, v15, a2);
}

uint64_t AllowsHitTestingResponder.__deallocating_deinit(__n128 a1)
{
  DefaultLayoutViewResponder.deinit(a1);

  return swift_deallocClassInstance();
}

void lazy protocol witness table accessor for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey()
{
  if (!lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayList.GraphicsRenderer.Cache.CallbackKey, &type metadata for DisplayList.GraphicsRenderer.Cache.CallbackKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey);
  }
}

{
  if (!lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayList.GraphicsRenderer.Cache.CallbackKey, &type metadata for DisplayList.GraphicsRenderer.Cache.CallbackKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey);
  }
}

uint64_t type metadata completion function for NamedImage.Key(uint64_t a1)
{
  result = type metadata accessor for NamedImage.BitmapKey(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}