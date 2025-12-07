uint64_t TraceConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport11TraceConfigV6OptionVGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport11TraceConfigV6OptionVGMR);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v15 - v5;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  TraceConfig.init(_:)(v7, v25);
  if (v2)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v27 = v25[0];
    v28 = v25[1];
    v29 = v25[2];
    v30 = v26;
    if (one-time initialization token for options != -1)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v15 = a2;
      a2 = static TraceConfig.options;
      v17 = *(static TraceConfig.options + 16);
      if (!v17)
      {
        break;
      }

      v8 = 0;
      v9 = static TraceConfig.options + 32;
      v16 = (v4 + 1);
      while (v8 < *(a2 + 16))
      {
        outlined init with copy of TraceConfig.Option(v9, v21);
        v4 = __swift_project_boxed_opaque_existential_1(v31, v31[3]);
        lazy protocol witness table accessor for type TraceConfig.Option and conformance TraceConfig.Option();
        dispatch thunk of Decoder.container<A>(keyedBy:)();
        project #1 <A>(_:) in TraceConfig.init(from:)(v23, v6, v21, &v27, v23, v24);
        (*v16)(v6, v18);
        ++v8;
        outlined destroy of TraceConfig.Option(v21);
        v9 += 120;
        if (v17 == v8)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_9:
      swift_once();
    }

LABEL_7:
    v10 = v28;
    v19[0] = v27;
    v19[1] = v28;
    v11 = v29;
    v19[2] = v29;
    v12 = v30;
    v20 = v30;
    v13 = v15;
    *v15 = v27;
    v13[1] = v10;
    v13[2] = v11;
    *(v13 + 24) = v12;
    outlined init with copy of TraceConfig(v19, v21);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v21[0] = v27;
    v21[1] = v28;
    v21[2] = v29;
    v22 = v30;
    return outlined destroy of TraceConfig(v21);
  }

  return result;
}

void *project #1 <A>(_:) in TraceConfig.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[1] = a4;
  v8 = type metadata accessor for Optional();
  v20[0] = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  v21 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport11TraceConfigV6OptionVGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport11TraceConfigV6OptionVGMR);
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v6)
  {
    v18 = v20[0];
    if ((*(v21 + 48))(v11, 1, a5) == 1)
    {
      return (*(v18 + 8))(v11, v8);
    }

    else
    {
      v19 = v21;
      (*(v21 + 32))(v16, v11, a5);
      type metadata accessor for WritableKeyPath();
      swift_dynamicCastClassUnconditional();
      (*(v19 + 16))(v14, v16, a5);
      swift_setAtWritableKeyPath();
      return (*(v19 + 8))(v16, a5);
    }
  }

  return result;
}

uint64_t closure #2 in TraceConfig.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = result;
  if (one-time initialization token for options != -1)
  {
    result = swift_once();
  }

  v6 = *(static TraceConfig.options + 16);
  if (v6)
  {
    v7 = static TraceConfig.options + 32;
    do
    {
      outlined init with copy of TraceConfig.Option(v7, &v20);
      if (*(a2 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v20, *(&v20 + 1)), (v9 & 1) != 0))
      {
        v10 = (*(a2 + 56) + 16 * v8);
        v11 = *v10;
        v12 = v10[1];
        v13 = v23;

        v13(v19, v11, v12);
      }

      else
      {
        outlined init with copy of Any(v21 + 8, v19);
      }

      outlined init with take of Any(v19, v18);
      specialized project #1 <A>(_:) in closure #2 in TraceConfig.init(_:)(v24, v18, v4, &v20, v24);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = outlined destroy of TraceConfig.Option(&v20);
      v7 += 120;
      --v6;
    }

    while (v6);
  }

  if (v4)
  {
    v14 = *v4;
    v15 = *(v4 + 16);
    v16 = *(v4 + 32);
    v22 = *(v4 + 48);
    v21[0] = v15;
    v21[1] = v16;
    v20 = v14;
    v17 = *(v4 + 16);
    *a3 = *v4;
    *(a3 + 16) = v17;
    *(a3 + 32) = *(v4 + 32);
    *(a3 + 48) = *(v4 + 48);
    return outlined init with copy of TraceConfig(&v20, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TraceConfig.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6B63614268736168;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0xD000000000000017;
    case 3:
    case 5:
      return 0xD000000000000018;
    case 4:
      return 0xD000000000000016;
    case 6:
      return 0xD000000000000013;
    case 7:
      v3 = 11;
      goto LABEL_15;
    case 8:
      return 0xD00000000000001CLL;
    case 9:
      return 0x6172546775626564;
    case 10:
      return 0xD000000000000010;
    case 11:
      return 0x73736572706D6F63;
    case 12:
      return 0x6565725477656976;
    case 13:
      return 0x74794265756C6176;
    case 14:
      return 0x6576456573756572;
    case 15:
      return 1668184435;
    case 16:
      return 0xD000000000000010;
    case 18:
      return 0x6950746567726174;
    case 19:
      v4 = 0x747265737361;
      goto LABEL_24;
    case 20:
      v4 = 0x676E6F727473;
LABEL_24:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7553000000000000;
      break;
    case 21:
      v3 = 5;
LABEL_15:
      result = v3 | 0xD000000000000010;
      break;
    case 22:
      result = 0x4E6E4F6873617263;
      break;
    case 23:
      result = 0x6E6F6973726576;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TraceConfig.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized TraceConfig.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TraceConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TraceConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TraceConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport11TraceConfigV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport11TraceConfigV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  LODWORD(v48) = *(v1 + 1);
  v7 = *(v1 + 2);
  v50 = *(v1 + 3);
  v46 = *(v1 + 4);
  LODWORD(v47) = v7;
  v8 = *(v1 + 5);
  v9 = *(v1 + 6);
  v42 = *(v1 + 7);
  v43 = v9;
  v10 = *(v1 + 8);
  v40 = *(v1 + 9);
  v41 = v10;
  v44 = *(v1 + 10);
  v45 = v8;
  v11 = *(v1 + 11);
  v38 = *(v1 + 12);
  v39 = v11;
  v12 = *(v1 + 13);
  v36 = *(v1 + 14);
  v37 = v12;
  v13 = *(v1 + 15);
  v34 = *(v1 + 16);
  v35 = v13;
  v14 = *(v1 + 32);
  v29 = *(v1 + 24);
  v30 = v14;
  v28 = *(v1 + 40);
  v27 = *(v1 + 44);
  LODWORD(v14) = *(v1 + 46);
  v31 = *(v1 + 45);
  v32 = v14;
  v33 = *(v1 + 47);
  v15 = *(v1 + 48);
  v16 = *(v1 + 49);
  v17 = a1[3];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  lazy protocol witness table accessor for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v52 = 0;
  v21 = v49;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v21)
  {
    return (*(v4 + 8))(v6, v20);
  }

  LODWORD(v49) = v15;
  v26 = v16;
  v52 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 2;
  v48 = v6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 9;
  v47 = v20;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 10;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 11;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 12;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 13;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 14;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 15;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 16;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 17;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v52 = 18;
  v51[0] = v27;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v52 = 19;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 20;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 21;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = 22;
  KeyedEncodingContainer.encode(_:forKey:)();
  v52 = v26;
  v51[0] = 23;
  lazy protocol witness table accessor for type TraceConfig.Version and conformance TraceConfig.Version();
  v23 = v47;
  v24 = v48;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v24, v23);
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        specialized Set._Variant.remove(_:)(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

Swift::Int specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, Swift::Int a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = specialized _NativeSet.extractSubset(using:count:)(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x26D69EAB0](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    outlined consume of Set<AGSubgraphRef>.Iterator._Variant(v13);
    return v5;
  }

  result = MEMORY[0x26D69EAB0](v50, -1, -1);
  __break(1u);
  return result;
}

Swift::Int specialized closure #1 in _NativeSet.subtracting<A>(_:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return specialized _NativeSet.extractSubset(using:count:)(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC21SwiftUITracingSupport7TreeRefV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type TreeRef and conformance TreeRef();
  result = MEMORY[0x26D69D0C0](v2, &type metadata for TreeRef, v3);
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D69D0C0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TraceConfig.InvalidOptions and conformance TraceConfig.InvalidOptions()
{
  result = lazy protocol witness table cache variable for type TraceConfig.InvalidOptions and conformance TraceConfig.InvalidOptions;
  if (!lazy protocol witness table cache variable for type TraceConfig.InvalidOptions and conformance TraceConfig.InvalidOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.InvalidOptions and conformance TraceConfig.InvalidOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TraceConfig.Option and conformance TraceConfig.Option()
{
  result = lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option;
  if (!lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option;
  if (!lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option;
  if (!lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TraceConfig.Version and conformance TraceConfig.Version()
{
  result = lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version;
  if (!lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version;
  if (!lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version;
  if (!lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version;
  if (!lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version);
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for TraceConfig(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 50))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TraceConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TraceConfig.MinorVersion(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for TraceConfig.MinorVersion(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TraceConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TraceConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TraceConfig.Option(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TraceConfig.Option(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized project #1 <A>(_:) in closure #2 in TraceConfig.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[1] = a4;
  v32 = a2;
  v33 = a3;
  v6 = *(a5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v31 - v10;
  v12 = type metadata accessor for Optional();
  v13 = type metadata accessor for Optional();
  v31[0] = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v31 - v15;
  v17 = *(v12 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v31 - v21;
  outlined init with copy of Any(v32, v34);
  v23 = swift_dynamicCast();
  v24 = *(v17 + 56);
  if (v23)
  {
    v24(v16, 0, 1, v12);
    (*(v17 + 32))(v22, v16, v12);
    (*(v17 + 16))(v20, v22, v12);
    if ((*(v6 + 48))(v20, 1, a5) == 1)
    {
      v30 = *(v17 + 8);
      v30(v22, v12);
      v30(v20, v12);
      goto LABEL_10;
    }

    (*(v6 + 32))(v11, v20, a5);
    v25 = v33;
    if (v33)
    {
      type metadata accessor for WritableKeyPath();
      v13 = swift_dynamicCastClassUnconditional();
      v26 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
      if ((v27 & 1) == 0)
      {
        v28 = v26;
        (*(v6 + 16))(v9, v11, a5);
        _sSpsRi_zrlE10initialize2toyxn_tF(v9, v25 + v28, a5);
        (*(v6 + 8))(v11, a5);
        return (*(v17 + 8))(v22, v12);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v24(v16, 1, 1, v12);
  (*(v31[0] + 8))(v16, v13);
LABEL_10:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC21SwiftUITracingSupport7TreeRefV_AD11UnsafeArrayVyAFGTt0g5Tf4x_n(uint64_t *a1, unsigned int a2)
{
  v4 = a2;
  v5 = lazy protocol witness table accessor for type TreeRef and conformance TreeRef();
  result = MEMORY[0x26D69D0C0](v4, &type metadata for TreeRef, v5);
  v9 = result;
  if (a2)
  {
    if (a1)
    {
      do
      {
        v7 = *a1++;
        specialized Set._Variant.insert(_:)(&v8, v7);
        --v4;
      }

      while (v4);
      return v9;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized TraceConfig.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000026C33DB00 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63614268736168 && a2 == 0xEE00736563617274 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000026C33DB20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026C33DB40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000026C33DB60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026C33DB80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026C33DBA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000026C33DBC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000026C33DBE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6172546775626564 && a2 == 0xEF73656C69466563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026C33DC00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6565725477656976 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x74794265756C6176 && a2 == 0xEF676E6972745365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6576456573756572 && a2 == 0xEB0000000073746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 1668184435 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026C33DC20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026C33DC40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6950746567726174 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x7553747265737361 && a2 == 0xEF73687061726762 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x7553676E6F727473 && a2 == 0xEF73687061726762 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026C33DC60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x4E6E4F6873617263 && a2 == 0xEB000000006C6C75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 23;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MachO.installName.getter()
{
  v1 = *(v0 + *(type metadata accessor for MachO(0) + 20));

  return v1;
}

uint64_t type metadata accessor for MachO(uint64_t a1)
{
  result = type metadata singleton initialization cache for MachO;
  if (!type metadata singleton initialization cache for MachO)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MachO.installName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MachO(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MachO.Section.segmentName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MachO.Section.segmentName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MachO.Section.sectionName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MachO.Section.sectionName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MachO.Section.pointer.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t UnsafeRawPointer.section.getter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  if (dyld_process_create_for_current_task())
  {
    if (dyld_process_snapshot_create_for_process())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5MachOVSgMd, &_s21SwiftUITracingSupport5MachOVSgMR);
      v6 = swift_allocBox();
      v8 = v7;
      v9 = type metadata accessor for MachO(0);
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_26C337DE0;
      *(v10 + 32) = 0u;
      *(v10 + 48) = 0u;
      v11 = swift_allocObject();
      v11[2] = a3;
      v11[3] = v6;
      v11[4] = v10;
      aBlock[4] = partial apply for closure #1 in UnsafeRawPointer.section.getter;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?) -> ();
      aBlock[3] = &block_descriptor_6;
      v12 = _Block_copy(aBlock);

      dyld_process_snapshot_for_each_image();
      _Block_release(v12);
      swift_beginAccess();
      outlined init with copy of ResourceSet<Interpreter, ()>(v8, a1, &_s21SwiftUITracingSupport5MachOVSgMd, &_s21SwiftUITracingSupport5MachOVSgMR);
      swift_beginAccess();
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      v16 = *(v10 + 40);
      v17 = *(v10 + 48);
      v18 = *(v10 + 56);
      *a2 = v13;
      a2[1] = v14;
      a2[2] = v15;
      a2[3] = v16;
      a2[4] = v17;
      a2[5] = v18;
      outlined copy of MachO.Section?(v13, v14, v15, v16);

      dyld_process_snapshot_dispose();
    }

    else
    {
      v21 = static os_log_type_t.fault.getter();
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v22 = log;
      if (os_log_type_enabled(log, v21))
      {
        v23 = swift_slowAlloc();
        *v23 = 67240192;
        swift_beginAccess();
        *(v23 + 4) = 0;
        _os_log_impl(&dword_26C161000, v22, v21, "dyld error: %{public}d;", v23, 8u);
        MEMORY[0x26D69EAB0](v23, -1, -1);
      }

      v24 = type metadata accessor for MachO(0);
      (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
      *a2 = xmmword_26C337DE0;
      *(a2 + 1) = 0u;
      *(a2 + 2) = 0u;
    }

    return dyld_process_dispose();
  }

  else
  {
    static os_log_type_t.fault.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v19 = type metadata accessor for MachO(0);
    result = (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    *a2 = xmmword_26C337DE0;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
  }

  return result;
}

void closure #1 in UnsafeRawPointer.section.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a1;
  v8[4] = a3;
  v8[5] = a4;
  v10[4] = partial apply for closure #1 in closure #1 in UnsafeRawPointer.section.getter;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>?, @unowned UnsafePointer<Int8>?, @unowned UInt64, @unowned UInt64) -> ();
  v10[3] = &block_descriptor_16;
  v9 = _Block_copy(v10);

  dyld_image_for_each_section_info();
  _Block_release(v9);
}

void closure #1 in closure #1 in UnsafeRawPointer.section.getter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v67 = a6;
  v68 = a1;
  v69 = a2;
  v70 = *MEMORY[0x277D85DE8];
  v12 = type metadata accessor for URL.DirectoryHint();
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x28223BE20](v12);
  v64 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v63 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5MachOVSgMd, &_s21SwiftUITracingSupport5MachOVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v58 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v58 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v58 - v29;
  v31 = swift_projectBox();
  if (!a3)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (a4 < 0)
  {
    __break(1u);
  }

  if (a3 <= a5 && a3 + a4 > a5)
  {
    v60 = a3;
    v61 = a3 + a4;
    v62 = v31;
    v32 = type metadata accessor for UUID();
    v33 = *(*(v32 - 8) + 56);
    v33(v30, 1, 1, v32);
    if (dyld_image_copy_uuid())
    {
      UUID.init(uuid:)();
      outlined destroy of UUID?(v30);
      v33(v28, 0, 1, v32);
      outlined init with take of UUID?(v28, v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    outlined init with copy of ResourceSet<Interpreter, ()>(v30, v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (dyld_image_get_installname())
    {
      v34 = String.init(cString:)();
      v36 = v35;
LABEL_12:
      v59 = v30;
      if (dyld_image_get_file_path())
      {
        v58[2] = String.init(cString:)();
        v58[1] = v37;
        v38 = type metadata accessor for URL();
        v39 = *(v38 - 8);
        v67 = v34;
        v40 = *(v39 + 56);
        v40(v63, 1, 1, v38);
        (*(v65 + 104))(v64, *MEMORY[0x277CC91D8], v66);
        URL.init(filePath:directoryHint:relativeTo:)();
        v40(v18, 0, 1, v38);
        v34 = v67;
      }

      else
      {
        v41 = type metadata accessor for URL();
        (*(*(v41 - 8) + 56))(v18, 1, 1, v41);
      }

      v43 = v60;
      v42 = v61;
      outlined init with take of UUID?(v25, v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v44 = type metadata accessor for MachO(0);
      v45 = &v21[*(v44 + 20)];
      *v45 = v34;
      v45[1] = v36;
      outlined init with take of UUID?(v18, &v21[*(v44 + 24)], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(*(v44 - 8) + 56))(v21, 0, 1, v44);
      v46 = v62;
      swift_beginAccess();
      outlined assign with take of URL?(v21, v46, &_s21SwiftUITracingSupport5MachOVSgMd, &_s21SwiftUITracingSupport5MachOVSgMR);
      if (v68)
      {
        v47 = String.init(cString:)();
        v49 = v48;
      }

      else
      {
        v47 = 0;
        v49 = 0;
      }

      v50 = v59;
      if (v69)
      {
        v51 = String.init(cString:)();
        v53 = v52;
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }

      outlined destroy of UUID?(v50);
      swift_beginAccess();
      v54 = a8[2];
      v55 = a8[3];
      v56 = a8[4];
      v57 = a8[5];
      a8[2] = v47;
      a8[3] = v49;
      a8[4] = v51;
      a8[5] = v53;
      a8[6] = v43;
      a8[7] = v42;
      outlined consume of MachO.Section?(v54, v55, v56, v57);
      return;
    }

LABEL_11:
    v34 = 0;
    v36 = 0;
    goto LABEL_12;
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>?, @unowned UnsafePointer<Int8>?, @unowned UInt64, @unowned UInt64) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_26C2B0540()
{
  if (*(v0 + 24) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26C2B0588()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void outlined copy of MachO.Section?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_26C2B0648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_26C2B07A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void type metadata completion function for MachO(uint64_t a1)
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MachO.Section(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MachO.Section(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26C2B0B2C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void outlined consume of MachO.Section?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

double static TestingSupport.TraceHandle.types.getter@<D0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMR);
  v2 = swift_allocObject();
  *&result = 2;
  *(v2 + 16) = xmmword_26C32F2A0;
  *(v2 + 32) = &type metadata for TestingSupport.TestEvent;
  *(v2 + 40) = &protocol witness table for TestingSupport.TestEvent;
  *(v2 + 48) = &type metadata for TestingSupport.TestEventWBacktrace;
  *(v2 + 56) = &protocol witness table for TestingSupport.TestEventWBacktrace;
  *a1 = v2;
  return result;
}

__n128 TestingSupport.TraceHandle.storage.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  v3 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v3;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  result = *(v1 + 32);
  v6 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 TestingSupport.TraceHandle.storage.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v2;
  v3 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v3;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v6;
  return result;
}

double TestingSupport.TraceHandle.init()@<D0>(_OWORD *a1@<X8>)
{
  Trace_Handle_Storage.init()(v7);
  v2 = v11;
  a1[4] = v10;
  a1[5] = v2;
  v3 = v13;
  a1[6] = v12;
  a1[7] = v3;
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

__n128 protocol witness for Trace_Handle.storage.getter in conformance TestingSupport.TraceHandle@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  v3 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v3;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  result = *(v1 + 32);
  v6 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 protocol witness for Trace_Handle.storage.setter in conformance TestingSupport.TraceHandle(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v2;
  v3 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v3;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v6;
  return result;
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t result)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*v1 != 1)
  {
    return;
  }

  v5 = v1;
  v6 = result;
  v7 = *(v1 + 112);
  if (*(*(v1 + 24) + 49) == 1 && (result & 4) == 0)
  {
    *&v38 = -1;
    pthread_threadid_np(0, &v38);
    v9 = v38;
    if (v38 == -1)
    {
      __break(1u);
      goto LABEL_55;
    }

    if ((*(v1 + 72) & 1) != 0 || v38 != *(v1 + 64))
    {
      *(v1 + 64) = v38;
      *(v1 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v9);
    }
  }

  if (*(*(v1 + 24) + 49) == 1 && (v6 & 2) == 0)
  {
    v2 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v2 = 0;
  }

  if (tracepointAssertion.value._rawValue)
  {
    v3 = *(v1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v38 = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(60, 2, v3, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v38;
  }

  if ((*(*(v1 + 24) + 49) & 1) == 0)
  {
    specialized Trace_Handle.write<A>(struct:)(1006632960);
LABEL_45:
    if ((*(v5[3] + 49) & 1) == 0)
    {
      v33 = swift_conformsToProtocol2();
      if (v33)
      {
        if ((*(v33 + 24))(&type metadata for TestingSupport.TestEventWBacktrace, v33))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v43, &v38);
            v34 = v40;
            v35 = v41;
            v36 = __swift_project_boxed_opaque_existential_1(&v38, v40);
            v37 = lazy protocol witness table accessor for type TestingSupport.TraceHandle and conformance TestingSupport.TraceHandle();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v5, &type metadata for TestingSupport.TraceHandle, &type metadata for TestingSupport.TestEventWBacktrace, v34, v37, &protocol witness table for TestingSupport.TestEventWBacktrace, v35);
            __swift_destroy_boxed_opaque_existential_1(&v38);
LABEL_52:
            ++v5[7];
            return;
          }

          v44 = 0;
          memset(v43, 0, sizeof(v43));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v43, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(&type metadata for TestingSupport.TestEventWBacktrace);
    goto LABEL_52;
  }

  v12 = *(v1 + 112);
  if (v7 < v12)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v4 = *(v1 + 56);
  if ((v6 & 1) != 0 && v7 != v12)
  {
    goto LABEL_57;
  }

  specialized T_TracepointID.Size.init(raw:)();
  if ((v6 & 2) != 0)
  {
    v14 = 60;
  }

  else
  {
    v14 = 2108;
  }

  LODWORD(v3) = v14 & 0xFFF00FFF | (v13 << 12);
  if (!readingDebug)
  {
    goto LABEL_30;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v15 = readingDebugLog;
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v43[0] = v18;
      *v17 = 134218498;
      *(v17 + 4) = v4;
      *(v17 + 12) = 2080;
      v38 = xmmword_26C32DAD0;
      v39 = 1;
      v40 = 0;
      v41 = 0;
      v42 = 512;
      v19 = T_TracepointID.describe(state:)(&v38, v3);
      v4 = v20;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v43);

      *(v17 + 14) = v21;
      *(v17 + 22) = 1024;
      *(v17 + 24) = v2;
      _os_log_impl(&dword_26C161000, v15, v16, "w %ld: %s, back: %u", v17, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x26D69EAB0](v18, -1, -1);
      MEMORY[0x26D69EAB0](v17, -1, -1);
    }

LABEL_30:
    v22 = v5[4];
    if (!*(v22 + 56))
    {
      break;
    }

    if (*(v22 + 52) == 2)
    {
      goto LABEL_39;
    }

    v23 = *(v22 + 32);
    LODWORD(v24) = *(v22 + 48);
    v25 = v24 | (*(v22 + 52) << 32);
    if (!v23)
    {
      if (*(v22 + 48))
      {
        goto LABEL_60;
      }

LABEL_38:
      CircularBuffer.Transaction.commit()();
LABEL_39:
      v29 = CircularBuffer.Transaction.begin()() + 4;
      v24 = *(v22 + 48);
      v25 = v24 | (*(v22 + 52) << 32);
      goto LABEL_40;
    }

    v26 = *(v22 + 40) - v23;
    v27 = v26 < v24;
    v28 = v26 - v24;
    if (v27)
    {
      __break(1u);
LABEL_60:
      __break(1u);
    }

    if (v28 < 17)
    {
      goto LABEL_38;
    }

    v29 = 4;
LABEL_40:
    if (BYTE4(v25) == 2)
    {
      goto LABEL_62;
    }

    *(*(v22 + 32) + v24) = v3;
    *(v22 + 48) = v24 + 4;
    if (!v2)
    {
      goto LABEL_44;
    }

    if (*(v22 + 52) == 2)
    {
      goto LABEL_63;
    }

    v30 = *(v22 + 48);
    *(*(v22 + 32) + v30) = v2;
    *(v22 + 48) = v30 + 4;
    v31 = __OFADD__(v29, 4);
    v29 += 4;
    if (!v31)
    {
LABEL_44:
      v32 = v5[15] + v29;
      v5[14] = v7;
      v5[15] = v32;
      goto LABEL_45;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

{
  if (*v1 == 1)
  {
    v4 = v1;
    v5 = v1[3];
    if (*(v5 + 49))
    {
      v6 = v1[14];
      if (prepareTrace)
      {
        v7 = v1[14];
      }

      else
      {
        v7 = v1[14];
        if ((result & 1) == 0)
        {
          v8 = result;
          if (kdebug_using_continuous_time())
          {
            v9 = mach_continuous_time();
          }

          else
          {
            v9 = mach_absolute_time();
          }

          v7 = v9;
          result = v8;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v2 = v4[7];
        v3 = result;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v39 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(65, 1, v2, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v39;

        LOBYTE(result) = v3;
      }

      v11 = v7 - v6;
      if (*(v5 + 49))
      {
        if (v7 >= v6)
        {
          v2 = v4[7];
          if ((result & 1) == 0 || !v11)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v3 = v12;
            LOBYTE(v5) = v13;
            LODWORD(v6) = (v13 << 12) | 0x41;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v14 = readingDebugLog;
              v15 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v14, v15))
              {
                v38 = v3;
                v16 = swift_slowAlloc();
                v17 = swift_slowAlloc();
                *&v44[0] = v17;
                *v16 = 134218498;
                *(v16 + 4) = v2;
                *(v16 + 12) = 2080;
                v39 = xmmword_26C32DAD0;
                v40 = 1;
                v41 = 0;
                v42 = 0;
                v43 = 512;
                v18 = T_TracepointID.describe(state:)(&v39, v6);
                v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v44);

                *(v16 + 14) = v20;
                *(v16 + 22) = 1024;
                *(v16 + 24) = 0;
                _os_log_impl(&dword_26C161000, v14, v15, "w %ld: %s, back: %u", v16, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v17);
                MEMORY[0x26D69EAB0](v17, -1, -1);
                v21 = v16;
                v3 = v38;
                MEMORY[0x26D69EAB0](v21, -1, -1);
              }

LABEL_20:
              v22 = v4[4];
              if (*(v22 + 56))
              {
                if (*(v22 + 52) == 2)
                {
LABEL_33:
                  v29 = CircularBuffer.Transaction.begin()() + 4;
                  v24 = *(v22 + 48);
                  v25 = v24 | (*(v22 + 52) << 32);
LABEL_34:
                  if (BYTE4(v25) != 2)
                  {
                    *(*(v22 + 32) + v24) = v6;
                    *(v22 + 48) = v24 + 4;
                    v4[15] += CircularBuffer.Transaction.write(size:)(v3, v5) + v29;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v23 = *(v22 + 32);
                LODWORD(v24) = *(v22 + 48);
                v25 = v24 | (*(v22 + 52) << 32);
                if (v23)
                {
                  v26 = *(v22 + 40) - v23;
                  v27 = v26 < v24;
                  v28 = v26 - v24;
                  if (!v27)
                  {
                    if (v28 >= 17)
                    {
                      v29 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v22 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v7 >= v6)
      {
        if (v11 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v7, type metadata accessor for T_TimeSync);
          v30 = 1090519040;
        }

        else
        {
          v30 = v11 | 0x41000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v30, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v4[14] = v7;
        if ((*(v4[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_EndTreeWrite(0);
          v32 = v31;
          v33 = swift_conformsToProtocol2();
          if (v33)
          {
            if (v32 && (*(v33 + 24))(v32, v33))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v44, &v39);
                v34 = v41;
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v39, v41);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v4, &type metadata for Trace.SwiftUI, v32, v34, v37, &protocol witness table for T_EndTreeWrite, v35);
                __swift_destroy_boxed_opaque_existential_1(&v39);
                goto LABEL_38;
              }

              v45 = 0;
              memset(v44, 0, sizeof(v44));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v44, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(type metadata accessor for T_EndTreeWrite);
LABEL_38:
        ++v4[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v1 == 1)
  {
    v4 = v1;
    v5 = v1[3];
    if (*(v5 + 49))
    {
      v6 = v1[14];
      if (prepareTrace)
      {
        v7 = v1[14];
      }

      else
      {
        v7 = v1[14];
        if ((result & 1) == 0)
        {
          v8 = result;
          if (kdebug_using_continuous_time())
          {
            v9 = mach_continuous_time();
          }

          else
          {
            v9 = mach_absolute_time();
          }

          v7 = v9;
          result = v8;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v2 = v4[7];
        v3 = result;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v39 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(64, 1, v2, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v39;

        LOBYTE(result) = v3;
      }

      v11 = v7 - v6;
      if (*(v5 + 49))
      {
        if (v7 >= v6)
        {
          v2 = v4[7];
          if ((result & 1) == 0 || !v11)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v3 = v12;
            LOBYTE(v5) = v13;
            LODWORD(v6) = (v13 << 12) | 0x40;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v14 = readingDebugLog;
              v15 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v14, v15))
              {
                v38 = v3;
                v16 = swift_slowAlloc();
                v17 = swift_slowAlloc();
                *&v44[0] = v17;
                *v16 = 134218498;
                *(v16 + 4) = v2;
                *(v16 + 12) = 2080;
                v39 = xmmword_26C32DAD0;
                v40 = 1;
                v41 = 0;
                v42 = 0;
                v43 = 512;
                v18 = T_TracepointID.describe(state:)(&v39, v6);
                v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v44);

                *(v16 + 14) = v20;
                *(v16 + 22) = 1024;
                *(v16 + 24) = 0;
                _os_log_impl(&dword_26C161000, v14, v15, "w %ld: %s, back: %u", v16, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v17);
                MEMORY[0x26D69EAB0](v17, -1, -1);
                v21 = v16;
                v3 = v38;
                MEMORY[0x26D69EAB0](v21, -1, -1);
              }

LABEL_20:
              v22 = v4[4];
              if (*(v22 + 56))
              {
                if (*(v22 + 52) == 2)
                {
LABEL_33:
                  v29 = CircularBuffer.Transaction.begin()() + 4;
                  v24 = *(v22 + 48);
                  v25 = v24 | (*(v22 + 52) << 32);
LABEL_34:
                  if (BYTE4(v25) != 2)
                  {
                    *(*(v22 + 32) + v24) = v6;
                    *(v22 + 48) = v24 + 4;
                    v4[15] += CircularBuffer.Transaction.write(size:)(v3, v5) + v29;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v23 = *(v22 + 32);
                LODWORD(v24) = *(v22 + 48);
                v25 = v24 | (*(v22 + 52) << 32);
                if (v23)
                {
                  v26 = *(v22 + 40) - v23;
                  v27 = v26 < v24;
                  v28 = v26 - v24;
                  if (!v27)
                  {
                    if (v28 >= 17)
                    {
                      v29 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v22 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v7 >= v6)
      {
        if (v11 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v7, type metadata accessor for T_TimeSync);
          v30 = 0x40000000;
        }

        else
        {
          v30 = v11 | 0x40000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v30, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v4[14] = v7;
        if ((*(v4[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_BeginTreeWrite(0);
          v32 = v31;
          v33 = swift_conformsToProtocol2();
          if (v33)
          {
            if (v32 && (*(v33 + 24))(v32, v33))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v44, &v39);
                v34 = v41;
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v39, v41);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v4, &type metadata for Trace.SwiftUI, v32, v34, v37, &protocol witness table for T_BeginTreeWrite, v35);
                __swift_destroy_boxed_opaque_existential_1(&v39);
                goto LABEL_38;
              }

              v45 = 0;
              memset(v44, 0, sizeof(v44));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v44, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(type metadata accessor for T_BeginTreeWrite);
LABEL_38:
        ++v4[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v1 == 1)
  {
    v4 = v1;
    v5 = v1[3];
    if (*(v5 + 49))
    {
      v6 = v1[14];
      if (prepareTrace)
      {
        v7 = v1[14];
      }

      else
      {
        v7 = v1[14];
        if ((result & 1) == 0)
        {
          v8 = result;
          if (kdebug_using_continuous_time())
          {
            v9 = mach_continuous_time();
          }

          else
          {
            v9 = mach_absolute_time();
          }

          v7 = v9;
          result = v8;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v2 = v4[7];
        v3 = result;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v39 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(62, 1, v2, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v39;

        LOBYTE(result) = v3;
      }

      v11 = v7 - v6;
      if (*(v5 + 49))
      {
        if (v7 >= v6)
        {
          v2 = v4[7];
          if ((result & 1) == 0 || !v11)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v3 = v12;
            LOBYTE(v5) = v13;
            LODWORD(v6) = (v13 << 12) | 0x3E;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v14 = readingDebugLog;
              v15 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v14, v15))
              {
                v38 = v3;
                v16 = swift_slowAlloc();
                v17 = swift_slowAlloc();
                *&v44[0] = v17;
                *v16 = 134218498;
                *(v16 + 4) = v2;
                *(v16 + 12) = 2080;
                v39 = xmmword_26C32DAD0;
                v40 = 1;
                v41 = 0;
                v42 = 0;
                v43 = 512;
                v18 = T_TracepointID.describe(state:)(&v39, v6);
                v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v44);

                *(v16 + 14) = v20;
                *(v16 + 22) = 1024;
                *(v16 + 24) = 0;
                _os_log_impl(&dword_26C161000, v14, v15, "w %ld: %s, back: %u", v16, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v17);
                MEMORY[0x26D69EAB0](v17, -1, -1);
                v21 = v16;
                v3 = v38;
                MEMORY[0x26D69EAB0](v21, -1, -1);
              }

LABEL_20:
              v22 = v4[4];
              if (*(v22 + 56))
              {
                if (*(v22 + 52) == 2)
                {
LABEL_33:
                  v29 = CircularBuffer.Transaction.begin()() + 4;
                  v24 = *(v22 + 48);
                  v25 = v24 | (*(v22 + 52) << 32);
LABEL_34:
                  if (BYTE4(v25) != 2)
                  {
                    *(*(v22 + 32) + v24) = v6;
                    *(v22 + 48) = v24 + 4;
                    v4[15] += CircularBuffer.Transaction.write(size:)(v3, v5) + v29;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v23 = *(v22 + 32);
                LODWORD(v24) = *(v22 + 48);
                v25 = v24 | (*(v22 + 52) << 32);
                if (v23)
                {
                  v26 = *(v22 + 40) - v23;
                  v27 = v26 < v24;
                  v28 = v26 - v24;
                  if (!v27)
                  {
                    if (v28 >= 17)
                    {
                      v29 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v22 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v7 >= v6)
      {
        if (v11 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v7, type metadata accessor for T_TimeSync);
          v30 = 1040187392;
        }

        else
        {
          v30 = v11 | 0x3E000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v30, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v4[14] = v7;
        if ((*(v4[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_PassedDeadline(0);
          v32 = v31;
          v33 = swift_conformsToProtocol2();
          if (v33)
          {
            if (v32 && (*(v33 + 24))(v32, v33))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v44, &v39);
                v34 = v41;
                v35 = v42;
                v36 = __swift_project_boxed_opaque_existential_1(&v39, v41);
                v37 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v36, v4, &type metadata for Trace.SwiftUI, v32, v34, v37, &protocol witness table for T_PassedDeadline, v35);
                __swift_destroy_boxed_opaque_existential_1(&v39);
                goto LABEL_38;
              }

              v45 = 0;
              memset(v44, 0, sizeof(v44));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v44, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(type metadata accessor for T_PassedDeadline);
LABEL_38:
        ++v4[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (*v4 == 1)
  {
    v6 = v4;
    v10 = *(v4 + 3);
    v11 = *(v4 + 14);
    if (prepareTrace)
    {
      v12 = *(v4 + 14);
    }

    else
    {
      v12 = *(v4 + 14);
      if ((a4 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v13 = mach_continuous_time();
        }

        else
        {
          v13 = mach_absolute_time();
        }

        v12 = v13;
      }
    }

    v14 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v5 = *(v4 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v40 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v4 = &v40;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(10, 1, v5, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v40;
    }

    v16 = v12 - v11;
    if (*(v10 + 49))
    {
      if (v12 >= v11)
      {
        v4 = *(v6 + 7);
        if ((a4 & 1) == 0 || !v16)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v14 = v17;
          LOBYTE(v5) = v18;
          LODWORD(v10) = (v18 << 12) | 0xA;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v19 = readingDebugLog;
            v20 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v19, v20))
            {
              v37 = v19;
              v21 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              v45 = v36;
              *v21 = 134218498;
              *(v21 + 4) = v4;
              *(v21 + 12) = 2080;
              v40 = xmmword_26C32DAD0;
              v41 = 1;
              v42 = 0;
              v43 = 0;
              v44 = 512;
              v22 = T_TracepointID.describe(state:)(&v40, v10);
              v38 = v14;
              v24 = v20;
              v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v45);

              *(v21 + 14) = v25;
              *(v21 + 22) = 1024;
              *(v21 + 24) = 0;
              v26 = v24;
              v14 = v38;
              _os_log_impl(&dword_26C161000, v37, v26, "w %ld: %s, back: %u", v21, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v36);
              MEMORY[0x26D69EAB0](v36, -1, -1);
              MEMORY[0x26D69EAB0](v21, -1, -1);
            }

LABEL_19:
            v27 = *(v6 + 4);
            if (*(v27 + 56))
            {
              if (*(v27 + 52) == 2)
              {
LABEL_32:
                v34 = CircularBuffer.Transaction.begin()() + 4;
                v29 = *(v27 + 48);
                v30 = v29 | (*(v27 + 52) << 32);
LABEL_33:
                if (BYTE4(v30) != 2)
                {
                  *(*(v27 + 32) + v29) = v10;
                  *(v27 + 48) = v29 + 4;
                  *(v6 + 15) += CircularBuffer.Transaction.write(size:)(v14, v5) + v34;
LABEL_35:
                  *(v6 + 14) = v12;
                  specialized Trace_Handle.write<A>(struct:)(result, a2, a3, type metadata accessor for T_BeginTrace);
                  ++*(v6 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v28 = *(v27 + 32);
              LODWORD(v29) = *(v27 + 48);
              v30 = v29 | (*(v27 + 52) << 32);
              if (v28)
              {
                v31 = *(v27 + 40) - v28;
                v32 = v31 < v29;
                v33 = v31 - v29;
                if (!v32)
                {
                  if (v33 >= 41)
                  {
                    v34 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v27 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v12 >= v11)
    {
      if (v16 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v12, type metadata accessor for T_TimeSync);
        v35 = 167772160;
      }

      else
      {
        v35 = v16 | 0xA000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v4 == 1)
  {
    v6 = v4;
    v10 = *(v4 + 3);
    v11 = *(v4 + 14);
    if (prepareTrace)
    {
      v12 = *(v4 + 14);
    }

    else
    {
      v12 = *(v4 + 14);
      if ((a4 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v13 = mach_continuous_time();
        }

        else
        {
          v13 = mach_absolute_time();
        }

        v12 = v13;
      }
    }

    v14 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v5 = *(v4 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v40 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v4 = &v40;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(11, 1, v5, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v40;
    }

    v16 = v12 - v11;
    if (*(v10 + 49))
    {
      if (v12 >= v11)
      {
        v4 = *(v6 + 7);
        if ((a4 & 1) == 0 || !v16)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v14 = v17;
          LOBYTE(v5) = v18;
          LODWORD(v10) = (v18 << 12) | 0xB;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v19 = readingDebugLog;
            v20 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v19, v20))
            {
              v37 = v19;
              v21 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              v45 = v36;
              *v21 = 134218498;
              *(v21 + 4) = v4;
              *(v21 + 12) = 2080;
              v40 = xmmword_26C32DAD0;
              v41 = 1;
              v42 = 0;
              v43 = 0;
              v44 = 512;
              v22 = T_TracepointID.describe(state:)(&v40, v10);
              v38 = v14;
              v24 = v20;
              v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v45);

              *(v21 + 14) = v25;
              *(v21 + 22) = 1024;
              *(v21 + 24) = 0;
              v26 = v24;
              v14 = v38;
              _os_log_impl(&dword_26C161000, v37, v26, "w %ld: %s, back: %u", v21, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v36);
              MEMORY[0x26D69EAB0](v36, -1, -1);
              MEMORY[0x26D69EAB0](v21, -1, -1);
            }

LABEL_19:
            v27 = *(v6 + 4);
            if (*(v27 + 56))
            {
              if (*(v27 + 52) == 2)
              {
LABEL_32:
                v34 = CircularBuffer.Transaction.begin()() + 4;
                v29 = *(v27 + 48);
                v30 = v29 | (*(v27 + 52) << 32);
LABEL_33:
                if (BYTE4(v30) != 2)
                {
                  *(*(v27 + 32) + v29) = v10;
                  *(v27 + 48) = v29 + 4;
                  *(v6 + 15) += CircularBuffer.Transaction.write(size:)(v14, v5) + v34;
LABEL_35:
                  *(v6 + 14) = v12;
                  specialized Trace_Handle.write<A>(struct:)(result, a2, a3, type metadata accessor for T_EndTrace);
                  ++*(v6 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v28 = *(v27 + 32);
              LODWORD(v29) = *(v27 + 48);
              v30 = v29 | (*(v27 + 52) << 32);
              if (v28)
              {
                v31 = *(v27 + 40) - v28;
                v32 = v31 < v29;
                v33 = v31 - v29;
                if (!v32)
                {
                  if (v33 >= 41)
                  {
                    v34 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v27 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v12 >= v11)
    {
      if (v16 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v12, type metadata accessor for T_TimeSync);
        v35 = 184549376;
      }

      else
      {
        v35 = v16 | 0xB000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, uint64_t a2, char a3)
{
  if (*v3 == 1)
  {
    v5 = v3;
    v7 = a2;
    v9 = *(v3 + 3);
    v10 = *(v3 + 14);
    if (prepareTrace)
    {
      v11 = *(v3 + 14);
    }

    else
    {
      v11 = *(v3 + 14);
      if ((a3 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v12 = mach_continuous_time();
        }

        else
        {
          v12 = mach_absolute_time();
        }

        v11 = v12;
      }
    }

    v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v4 = *(v3 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v3 = &v36;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(12, 1, v4, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v36;
    }

    v15 = v11 - v10;
    if (*(v9 + 49))
    {
      if (v11 >= v10)
      {
        v3 = *(v5 + 7);
        if ((a3 & 1) == 0 || !v15)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v13 = v16;
          LOBYTE(v4) = v17;
          LODWORD(v9) = (v17 << 12) | 0xC;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v18 = readingDebugLog;
            v19 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v18, v19))
            {
              v35 = v13;
              v20 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v41 = v34;
              *v20 = 134218498;
              *(v20 + 4) = v3;
              *(v20 + 12) = 2080;
              v36 = xmmword_26C32DAD0;
              v37 = 1;
              v38 = 0;
              v39 = 0;
              v40 = 512;
              v21 = T_TracepointID.describe(state:)(&v36, v9);
              v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

              *(v20 + 14) = v23;
              *(v20 + 22) = 1024;
              *(v20 + 24) = 0;
              _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v34);
              MEMORY[0x26D69EAB0](v34, -1, -1);
              v24 = v20;
              v13 = v35;
              MEMORY[0x26D69EAB0](v24, -1, -1);
            }

LABEL_19:
            v25 = *(v5 + 4);
            if (*(v25 + 56))
            {
              if (*(v25 + 52) == 2)
              {
LABEL_32:
                v32 = CircularBuffer.Transaction.begin()() + 4;
                v27 = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
LABEL_33:
                if (BYTE4(v28) != 2)
                {
                  *(*(v25 + 32) + v27) = v9;
                  *(v25 + 48) = v27 + 4;
                  *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v4) + v32;
LABEL_35:
                  *(v5 + 14) = v11;
                  specialized Trace_Handle.write<A>(struct:)(result, v7, type metadata accessor for T_BeginSubgraphUpdate);
                  ++*(v5 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v26 = *(v25 + 32);
              LODWORD(v27) = *(v25 + 48);
              v28 = v27 | (*(v25 + 52) << 32);
              if (v26)
              {
                v29 = *(v25 + 40) - v26;
                v30 = v29 < v27;
                v31 = v29 - v27;
                if (!v30)
                {
                  if (v31 >= 29)
                  {
                    v32 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v25 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v11 >= v10)
    {
      if (v15 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
        v33 = 201326592;
      }

      else
      {
        v33 = v15 | 0xC000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v3 == 1)
  {
    v5 = v3;
    v7 = a2;
    v9 = *(v3 + 3);
    v10 = *(v3 + 14);
    if (prepareTrace)
    {
      v11 = *(v3 + 14);
    }

    else
    {
      v11 = *(v3 + 14);
      if ((a3 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v12 = mach_continuous_time();
        }

        else
        {
          v12 = mach_absolute_time();
        }

        v11 = v12;
      }
    }

    v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v4 = *(v3 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v3 = &v36;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(21, 1, v4, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v36;
    }

    v15 = v11 - v10;
    if (*(v9 + 49) == 1)
    {
      if (v11 >= v10)
      {
        v3 = *(v5 + 7);
        if ((a3 & 1) == 0 || !v15)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v13 = v16;
          LOBYTE(v4) = v17;
          LODWORD(v9) = (v17 << 12) | 0x15;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v18 = readingDebugLog;
            v19 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v18, v19))
            {
              v35 = v13;
              v20 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v41 = v34;
              *v20 = 134218498;
              *(v20 + 4) = v3;
              *(v20 + 12) = 2080;
              v36 = xmmword_26C32DAD0;
              v37 = 1;
              v38 = 0;
              v39 = 0;
              v40 = 512;
              v21 = T_TracepointID.describe(state:)(&v36, v9);
              v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

              *(v20 + 14) = v23;
              *(v20 + 22) = 1024;
              *(v20 + 24) = 0;
              _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v34);
              MEMORY[0x26D69EAB0](v34, -1, -1);
              v24 = v20;
              v13 = v35;
              MEMORY[0x26D69EAB0](v24, -1, -1);
            }

LABEL_19:
            v25 = *(v5 + 4);
            if (*(v25 + 56))
            {
              if (*(v25 + 52) == 2)
              {
LABEL_32:
                v32 = CircularBuffer.Transaction.begin()() + 4;
                v27 = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
LABEL_33:
                if (BYTE4(v28) != 2)
                {
                  *(*(v25 + 32) + v27) = v9;
                  *(v25 + 48) = v27 + 4;
                  *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v4) + v32;
LABEL_35:
                  *(v5 + 14) = v11;
                  specialized Trace_Handle.write<A>(struct:)(result, v7, type metadata accessor for T_BeginGraphInvalidation);
                  ++*(v5 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v26 = *(v25 + 32);
              LODWORD(v27) = *(v25 + 48);
              v28 = v27 | (*(v25 + 52) << 32);
              if (v26)
              {
                v29 = *(v25 + 40) - v26;
                v30 = v29 < v27;
                v31 = v29 - v27;
                if (!v30)
                {
                  if (v31 >= 29)
                  {
                    v32 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v25 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v11 >= v10)
    {
      if (v15 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
        v33 = 352321536;
      }

      else
      {
        v33 = v15 | 0x15000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v3 == 1)
  {
    v5 = v3;
    v7 = a2;
    v9 = *(v3 + 3);
    v10 = *(v3 + 14);
    if (prepareTrace)
    {
      v11 = *(v3 + 14);
    }

    else
    {
      v11 = *(v3 + 14);
      if ((a3 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v12 = mach_continuous_time();
        }

        else
        {
          v12 = mach_absolute_time();
        }

        v11 = v12;
      }
    }

    v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v4 = *(v3 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v3 = &v36;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(22, 1, v4, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v36;
    }

    v15 = v11 - v10;
    if (*(v9 + 49) == 1)
    {
      if (v11 >= v10)
      {
        v3 = *(v5 + 7);
        if ((a3 & 1) == 0 || !v15)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v13 = v16;
          LOBYTE(v4) = v17;
          LODWORD(v9) = (v17 << 12) | 0x16;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v18 = readingDebugLog;
            v19 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v18, v19))
            {
              v35 = v13;
              v20 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v41 = v34;
              *v20 = 134218498;
              *(v20 + 4) = v3;
              *(v20 + 12) = 2080;
              v36 = xmmword_26C32DAD0;
              v37 = 1;
              v38 = 0;
              v39 = 0;
              v40 = 512;
              v21 = T_TracepointID.describe(state:)(&v36, v9);
              v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

              *(v20 + 14) = v23;
              *(v20 + 22) = 1024;
              *(v20 + 24) = 0;
              _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v34);
              MEMORY[0x26D69EAB0](v34, -1, -1);
              v24 = v20;
              v13 = v35;
              MEMORY[0x26D69EAB0](v24, -1, -1);
            }

LABEL_19:
            v25 = *(v5 + 4);
            if (*(v25 + 56))
            {
              if (*(v25 + 52) == 2)
              {
LABEL_32:
                v32 = CircularBuffer.Transaction.begin()() + 4;
                v27 = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
LABEL_33:
                if (BYTE4(v28) != 2)
                {
                  *(*(v25 + 32) + v27) = v9;
                  *(v25 + 48) = v27 + 4;
                  *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v4) + v32;
LABEL_35:
                  *(v5 + 14) = v11;
                  specialized Trace_Handle.write<A>(struct:)(result, v7, type metadata accessor for T_EndGraphInvalidation);
                  ++*(v5 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v26 = *(v25 + 32);
              LODWORD(v27) = *(v25 + 48);
              v28 = v27 | (*(v25 + 52) << 32);
              if (v26)
              {
                v29 = *(v25 + 40) - v26;
                v30 = v29 < v27;
                v31 = v29 - v27;
                if (!v30)
                {
                  if (v31 >= 29)
                  {
                    v32 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v25 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v11 >= v10)
    {
      if (v15 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
        v33 = 369098752;
      }

      else
      {
        v33 = v15 | 0x16000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v3 == 1)
  {
    v5 = v3;
    v9 = *(v3 + 3);
    v10 = *(v3 + 14);
    if (prepareTrace)
    {
      v11 = *(v3 + 14);
    }

    else
    {
      v11 = *(v3 + 14);
      if ((a3 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v12 = mach_continuous_time();
        }

        else
        {
          v12 = mach_absolute_time();
        }

        v11 = v12;
      }
    }

    v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v4 = *(v3 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v3 = &v36;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(27, 1, v4, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v36;
    }

    v15 = v11 - v10;
    if (*(v9 + 49) == 1)
    {
      if (v11 >= v10)
      {
        v3 = *(v5 + 7);
        if ((a3 & 1) == 0 || !v15)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v13 = v16;
          LOBYTE(v4) = v17;
          LODWORD(v9) = (v17 << 12) | 0x1B;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v18 = readingDebugLog;
            v19 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v18, v19))
            {
              v35 = v13;
              v20 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v41 = v34;
              *v20 = 134218498;
              *(v20 + 4) = v3;
              *(v20 + 12) = 2080;
              v36 = xmmword_26C32DAD0;
              v37 = 1;
              v38 = 0;
              v39 = 0;
              v40 = 512;
              v21 = T_TracepointID.describe(state:)(&v36, v9);
              v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

              *(v20 + 14) = v23;
              *(v20 + 22) = 1024;
              *(v20 + 24) = 0;
              _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v34);
              MEMORY[0x26D69EAB0](v34, -1, -1);
              v24 = v20;
              v13 = v35;
              MEMORY[0x26D69EAB0](v24, -1, -1);
            }

LABEL_19:
            v25 = *(v5 + 4);
            if (*(v25 + 56))
            {
              if (*(v25 + 52) == 2)
              {
LABEL_32:
                v32 = CircularBuffer.Transaction.begin()() + 4;
                v27 = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
LABEL_33:
                if (BYTE4(v28) != 2)
                {
                  *(*(v25 + 32) + v27) = v9;
                  *(v25 + 48) = v27 + 4;
                  *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v4) + v32;
LABEL_35:
                  *(v5 + 14) = v11;
                  specialized Trace_Handle.write<A>(struct:)(result, a2, type metadata accessor for T_GraphCreated);
                  ++*(v5 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v26 = *(v25 + 32);
              LODWORD(v27) = *(v25 + 48);
              v28 = v27 | (*(v25 + 52) << 32);
              if (v26)
              {
                v29 = *(v25 + 40) - v26;
                v30 = v29 < v27;
                v31 = v29 - v27;
                if (!v30)
                {
                  if (v31 >= 33)
                  {
                    v32 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v25 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v11 >= v10)
    {
      if (v15 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
        v33 = 452984832;
      }

      else
      {
        v33 = v15 | 0x1B000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v3 == 1)
  {
    v5 = v3;
    v9 = *(v3 + 3);
    v10 = *(v3 + 14);
    if (prepareTrace)
    {
      v11 = *(v3 + 14);
    }

    else
    {
      v11 = *(v3 + 14);
      if ((a3 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v12 = mach_continuous_time();
        }

        else
        {
          v12 = mach_absolute_time();
        }

        v11 = v12;
      }
    }

    v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v4 = *(v3 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v3 = &v36;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(28, 1, v4, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v36;
    }

    v15 = v11 - v10;
    if (*(v9 + 49) == 1)
    {
      if (v11 >= v10)
      {
        v3 = *(v5 + 7);
        if ((a3 & 1) == 0 || !v15)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v13 = v16;
          LOBYTE(v4) = v17;
          LODWORD(v9) = (v17 << 12) | 0x1C;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v18 = readingDebugLog;
            v19 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v18, v19))
            {
              v35 = v13;
              v20 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v41 = v34;
              *v20 = 134218498;
              *(v20 + 4) = v3;
              *(v20 + 12) = 2080;
              v36 = xmmword_26C32DAD0;
              v37 = 1;
              v38 = 0;
              v39 = 0;
              v40 = 512;
              v21 = T_TracepointID.describe(state:)(&v36, v9);
              v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

              *(v20 + 14) = v23;
              *(v20 + 22) = 1024;
              *(v20 + 24) = 0;
              _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v34);
              MEMORY[0x26D69EAB0](v34, -1, -1);
              v24 = v20;
              v13 = v35;
              MEMORY[0x26D69EAB0](v24, -1, -1);
            }

LABEL_19:
            v25 = *(v5 + 4);
            if (*(v25 + 56))
            {
              if (*(v25 + 52) == 2)
              {
LABEL_32:
                v32 = CircularBuffer.Transaction.begin()() + 4;
                v27 = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
LABEL_33:
                if (BYTE4(v28) != 2)
                {
                  *(*(v25 + 32) + v27) = v9;
                  *(v25 + 48) = v27 + 4;
                  *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v4) + v32;
LABEL_35:
                  *(v5 + 14) = v11;
                  specialized Trace_Handle.write<A>(struct:)(result, a2, type metadata accessor for T_GraphDestroy);
                  ++*(v5 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v26 = *(v25 + 32);
              LODWORD(v27) = *(v25 + 48);
              v28 = v27 | (*(v25 + 52) << 32);
              if (v26)
              {
                v29 = *(v25 + 40) - v26;
                v30 = v29 < v27;
                v31 = v29 - v27;
                if (!v30)
                {
                  if (v31 >= 33)
                  {
                    v32 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v25 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v11 >= v10)
    {
      if (v15 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
        v33 = 469762048;
      }

      else
      {
        v33 = v15 | 0x1C000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v3 == 1)
  {
    v5 = v3;
    v9 = *(v3 + 3);
    v10 = *(v3 + 14);
    if (prepareTrace)
    {
      v11 = *(v3 + 14);
    }

    else
    {
      v11 = *(v3 + 14);
      if ((a3 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v12 = mach_continuous_time();
        }

        else
        {
          v12 = mach_absolute_time();
        }

        v11 = v12;
      }
    }

    v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v4 = *(v3 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v3 = &v36;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(30, 1, v4, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v36;
    }

    v15 = v11 - v10;
    if (*(v9 + 49) == 1)
    {
      if (v11 >= v10)
      {
        v3 = *(v5 + 7);
        if ((a3 & 1) == 0 || !v15)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v13 = v16;
          LOBYTE(v4) = v17;
          LODWORD(v9) = (v17 << 12) | 0x1E;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v18 = readingDebugLog;
            v19 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v18, v19))
            {
              v35 = v13;
              v20 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v41 = v34;
              *v20 = 134218498;
              *(v20 + 4) = v3;
              *(v20 + 12) = 2080;
              v36 = xmmword_26C32DAD0;
              v37 = 1;
              v38 = 0;
              v39 = 0;
              v40 = 512;
              v21 = T_TracepointID.describe(state:)(&v36, v9);
              v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

              *(v20 + 14) = v23;
              *(v20 + 22) = 1024;
              *(v20 + 24) = 0;
              _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v34);
              MEMORY[0x26D69EAB0](v34, -1, -1);
              v24 = v20;
              v13 = v35;
              MEMORY[0x26D69EAB0](v24, -1, -1);
            }

LABEL_19:
            v25 = *(v5 + 4);
            if (*(v25 + 56))
            {
              if (*(v25 + 52) == 2)
              {
LABEL_32:
                v32 = CircularBuffer.Transaction.begin()() + 4;
                v27 = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
LABEL_33:
                if (BYTE4(v28) != 2)
                {
                  *(*(v25 + 32) + v27) = v9;
                  *(v25 + 48) = v27 + 4;
                  *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v4) + v32;
LABEL_35:
                  *(v5 + 14) = v11;
                  specialized Trace_Handle.write<A>(struct:)(result, a2, type metadata accessor for T_SubgraphCreated);
                  ++*(v5 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v26 = *(v25 + 32);
              LODWORD(v27) = *(v25 + 48);
              v28 = v27 | (*(v25 + 52) << 32);
              if (v26)
              {
                v29 = *(v25 + 40) - v26;
                v30 = v29 < v27;
                v31 = v29 - v27;
                if (!v30)
                {
                  if (v31 >= 33)
                  {
                    v32 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v25 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v11 >= v10)
    {
      if (v15 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
        v33 = 503316480;
      }

      else
      {
        v33 = v15 | 0x1E000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v3 != 1)
  {
    return;
  }

  v5 = v3;
  v9 = *(v3 + 3);
  v10 = *(v3 + 14);
  if (prepareTrace)
  {
    v11 = *(v3 + 14);
  }

  else
  {
    v11 = *(v3 + 14);
    if ((a3 & 1) == 0)
    {
      if (kdebug_using_continuous_time())
      {
        v12 = mach_continuous_time();
      }

      else
      {
        v12 = mach_absolute_time();
      }

      v11 = v12;
    }
  }

  v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v4 = *(v3 + 7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v38 = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v3 = &v38;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(46, 1, v4, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v38;
  }

  v15 = v11 - v10;
  if ((*(v9 + 49) & 1) == 0)
  {
    if (v11 >= v10)
    {
      if (v15 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
        v33 = 771751936;
      }

      else
      {
        v33 = v15 | 0x2E000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  if (v11 < v10)
  {
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_17;
  }

  v3 = *(v5 + 7);
  if ((a3 & 1) != 0 && v15)
  {
    goto LABEL_42;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v13 = v16;
  LOBYTE(v4) = v17;
  LODWORD(v9) = (v17 << 12) | 0x2E;
  if (!readingDebug)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_43;
  }

LABEL_17:
  v18 = readingDebugLog;
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v37 = v13;
    v20 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43 = v36;
    *v20 = 134218498;
    *(v20 + 4) = v3;
    *(v20 + 12) = 2080;
    v38 = xmmword_26C32DAD0;
    v39 = 1;
    v40 = 0;
    v41 = 0;
    v42 = 512;
    v21 = T_TracepointID.describe(state:)(&v38, v9);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v43);

    *(v20 + 14) = v23;
    *(v20 + 22) = 1024;
    *(v20 + 24) = 0;
    _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x26D69EAB0](v36, -1, -1);
    v24 = v20;
    v13 = v37;
    MEMORY[0x26D69EAB0](v24, -1, -1);
  }

LABEL_19:
  v25 = *(v5 + 4);
  if (!*(v25 + 56))
  {
    goto LABEL_46;
  }

  if (*(v25 + 52) != 2)
  {
    v26 = *(v25 + 32);
    LODWORD(v27) = *(v25 + 48);
    v28 = v27 | (*(v25 + 52) << 32);
    if (v26)
    {
      v29 = *(v25 + 40) - v26;
      v30 = v29 < v27;
      v31 = v29 - v27;
      if (!v30)
      {
        if (v31 >= 30)
        {
          v32 = 4;
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      __break(1u);
    }

    else if (!*(v25 + 48))
    {
LABEL_31:
      CircularBuffer.Transaction.commit()();
      goto LABEL_32;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_32:
  v32 = CircularBuffer.Transaction.begin()() + 4;
  v27 = *(v25 + 48);
  v28 = v27 | (*(v25 + 52) << 32);
LABEL_33:
  if (BYTE4(v28) == 2)
  {
LABEL_47:
    __break(1u);
    return;
  }

  *(*(v25 + 32) + v27) = v9;
  *(v25 + 48) = v27 + 4;
  *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v4) + v32;
LABEL_35:
  *(v5 + 14) = v11;
  if (*(*(v5 + 3) + 49) == 1)
  {
    specialized Trace_Handle.write<A>(struct:)(result, a2 & 0xFFFFFFFFFFLL);
  }

  else
  {
    type metadata accessor for T_SubgraphTreeUpdate(0);
    v40 = v34;
    v41 = &protocol witness table for T_SubgraphTreeUpdate;
    *&v38 = result;
    DWORD2(v38) = a2;
    BYTE12(v38) = BYTE4(a2);
    v35 = __swift_project_boxed_opaque_existential_1(&v38, v34);
    specialized Trace_Handle.write<A>(v0:)(*v35, *(v35 + 2) | (*(v35 + 12) << 32));
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  ++*(v5 + 7);
}

{
  v41[1] = *MEMORY[0x277D85DE8];
  if (*v3 != 1)
  {
    return;
  }

  v7 = v3;
  v11 = *(v3 + 112);
  if (*(*(v3 + 24) + 49) == 1 && (a3 & 4) == 0)
  {
    v36[0] = -1;
    pthread_threadid_np(0, v36);
    v13 = v36[0];
    if (v36[0] == -1)
    {
      __break(1u);
      goto LABEL_48;
    }

    if ((*(v3 + 72) & 1) != 0 || v36[0] != *(v3 + 64))
    {
      *(v3 + 64) = v36[0];
      *(v3 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v13);
    }
  }

  if (*(*(v3 + 24) + 49) == 1 && (a3 & 2) == 0)
  {
    v4 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v4 = 0;
  }

  if (tracepointAssertion.value._rawValue)
  {
    v5 = *(v3 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(32, 1, v5, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v36[0];
  }

  if (*(*(v3 + 24) + 49) != 1)
  {
    specialized Trace_Handle.write<A>(struct:)(0x20000000, type metadata accessor for T_TracepointIDV0);
LABEL_45:
    specialized Trace_Handle.write<A>(struct:)(result, a2, type metadata accessor for T_SubgraphAddChild);
    ++v7[7];
    return;
  }

  v16 = *(v3 + 112);
  if (v11 < v16)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v6 = *(v3 + 56);
  if ((a3 & 1) != 0 && v11 != v16)
  {
    goto LABEL_50;
  }

  specialized T_TracepointID.Size.init(raw:)();
  if ((a3 & 2) != 0)
  {
    v18 = 32;
  }

  else
  {
    v18 = 2080;
  }

  LODWORD(v5) = v18 & 0xFFF00FFF | (v17 << 12);
  if (!readingDebug)
  {
    goto LABEL_30;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v19 = readingDebugLog;
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41[0] = v35;
      *v21 = 134218498;
      *(v21 + 4) = v6;
      *(v21 + 12) = 2080;
      *v36 = xmmword_26C32DAD0;
      v37 = 1;
      v38 = 0;
      v39 = 0;
      v40 = 512;
      v22 = T_TracepointID.describe(state:)(v36, v5);
      v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v41);

      *(v21 + 14) = v6;
      *(v21 + 22) = 1024;
      *(v21 + 24) = v4;
      _os_log_impl(&dword_26C161000, v19, v20, "w %ld: %s, back: %u", v21, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x26D69EAB0](v35, -1, -1);
      MEMORY[0x26D69EAB0](v21, -1, -1);
    }

LABEL_30:
    v24 = v7[4];
    if (!*(v24 + 56))
    {
      break;
    }

    if (*(v24 + 52) == 2)
    {
      goto LABEL_39;
    }

    v25 = *(v24 + 32);
    LODWORD(v26) = *(v24 + 48);
    v27 = v26 | (*(v24 + 52) << 32);
    if (!v25)
    {
      if (*(v24 + 48))
      {
        goto LABEL_53;
      }

LABEL_38:
      CircularBuffer.Transaction.commit()();
LABEL_39:
      v31 = CircularBuffer.Transaction.begin()() + 4;
      v26 = *(v24 + 48);
      v27 = v26 | (*(v24 + 52) << 32);
      goto LABEL_40;
    }

    v28 = *(v24 + 40) - v25;
    v29 = v28 < v26;
    v30 = v28 - v26;
    if (v29)
    {
      __break(1u);
LABEL_53:
      __break(1u);
    }

    if (v30 < 33)
    {
      goto LABEL_38;
    }

    v31 = 4;
LABEL_40:
    if (BYTE4(v27) == 2)
    {
      goto LABEL_55;
    }

    *(*(v24 + 32) + v26) = v5;
    *(v24 + 48) = v26 + 4;
    if (!v4)
    {
      goto LABEL_44;
    }

    if (*(v24 + 52) == 2)
    {
      goto LABEL_56;
    }

    v32 = *(v24 + 48);
    *(*(v24 + 32) + v32) = v4;
    *(v24 + 48) = v32 + 4;
    v33 = __OFADD__(v31, 4);
    v31 += 4;
    if (!v33)
    {
LABEL_44:
      v34 = v7[15] + v31;
      v7[14] = v11;
      v7[15] = v34;
      goto LABEL_45;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, char a2)
{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(14, 1, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49))
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0xE;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_EndSubgraphUpdate);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 25)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 234881024;
      }

      else
      {
        v32 = v14 | 0xE000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(15, 1, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49))
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0xF;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_BeginNodeUpdate);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 21)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 251658240;
      }

      else
      {
        v32 = v14 | 0xF000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(17, 1, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49))
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x11;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_BeginValueUpdate);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 21)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 285212672;
      }

      else
      {
        v32 = v14 | 0x11000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(18, 1, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49))
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x12;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(result & 0xFFFFFFFFFFLL, type metadata accessor for T_EndValueUpdate);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 22)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 301989888;
      }

      else
      {
        v32 = v14 | 0x12000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(19, 1, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49))
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x13;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_BeginGraphUpdate);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 25)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 318767104;
      }

      else
      {
        v32 = v14 | 0x13000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  v49[1] = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    return;
  }

  v7 = v2;
  v10 = *(v2 + 112);
  if (*(*(v2 + 24) + 49) == 1 && (a2 & 4) == 0)
  {
    v44[0] = -1;
    pthread_threadid_np(0, v44);
    v12 = v44[0];
    if (v44[0] == -1)
    {
      __break(1u);
      goto LABEL_58;
    }

    if ((*(v2 + 72) & 1) != 0 || v44[0] != *(v2 + 64))
    {
      *(v2 + 64) = v44[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v12);
    }
  }

  if (!prepareTrace && (a2 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v13 = mach_continuous_time();
    }

    else
    {
      v13 = mach_absolute_time();
    }

    v10 = v13;
  }

  if (*(*(v2 + 24) + 49) == 1 && (a2 & 2) == 0)
  {
    v6 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v6 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v3 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(23, 1, v3, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v44[0];
  }

  v16 = *(v2 + 112);
  v17 = v10 - v16;
  v18 = v10 < v16;
  if (*(*(v2 + 24) + 49) != 1)
  {
    if (!v18)
    {
      if (v17 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v37 = 385875968;
      }

      else
      {
        v37 = v17 | 0x17000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v37, type metadata accessor for T_TracepointIDV0);
LABEL_55:
      v7[14] = v10;
      specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_BeginModifyNode);
      ++v7[7];
      return;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v3 = *(v2 + 56);
  if ((a2 & 1) != 0 && v17)
  {
    goto LABEL_61;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v43 = v20;
  LOBYTE(v4) = v19;
  if ((a2 & 2) != 0)
  {
    v21 = 23;
  }

  else
  {
    v21 = 2071;
  }

  v5 = v21 & 0xFFF00FFF | (v19 << 12);
  if (!readingDebug)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v22 = readingDebugLog;
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v42 = v6;
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49[0] = v41;
      *v24 = 134218498;
      *(v24 + 4) = v3;
      *(v24 + 12) = 2080;
      *v44 = xmmword_26C32DAD0;
      v45 = 1;
      v46 = 0;
      v47 = 0;
      v48 = 512;
      v25 = T_TracepointID.describe(state:)(v44, v5);
      v3 = v26;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v49);

      *(v24 + 14) = v27;
      *(v24 + 22) = 1024;
      *(v24 + 24) = v42;
      _os_log_impl(&dword_26C161000, v22, v23, "w %ld: %s, back: %u", v24, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x26D69EAB0](v41, -1, -1);
      v28 = v24;
      v6 = v42;
      MEMORY[0x26D69EAB0](v28, -1, -1);
    }

LABEL_36:
    v29 = v7[4];
    if (!*(v29 + 56))
    {
      break;
    }

    if (*(v29 + 52) == 2)
    {
      goto LABEL_49;
    }

    v30 = *(v29 + 32);
    LODWORD(v31) = *(v29 + 48);
    v32 = v31 | (*(v29 + 52) << 32);
    if (!v30)
    {
      if (*(v29 + 48))
      {
        goto LABEL_64;
      }

LABEL_48:
      CircularBuffer.Transaction.commit()();
LABEL_49:
      v36 = CircularBuffer.Transaction.begin()() + 4;
      v31 = *(v29 + 48);
      v32 = v31 | (*(v29 + 52) << 32);
      goto LABEL_50;
    }

    v33 = *(v29 + 40) - v30;
    v34 = v33 < v31;
    v35 = v33 - v31;
    if (v34)
    {
      __break(1u);
LABEL_64:
      __break(1u);
    }

    if (v35 < 21)
    {
      goto LABEL_48;
    }

    v36 = 4;
LABEL_50:
    if (BYTE4(v32) == 2)
    {
      goto LABEL_66;
    }

    *(*(v29 + 32) + v31) = v5;
    *(v29 + 48) = v31 + 4;
    v38 = CircularBuffer.Transaction.write(size:)(v43, v4) + v36;
    if (!v6)
    {
      goto LABEL_54;
    }

    if (*(v29 + 52) == 2)
    {
      goto LABEL_67;
    }

    v39 = *(v29 + 48);
    *(*(v29 + 32) + v39) = v6;
    *(v29 + 48) = v39 + 4;
    v40 = __OFADD__(v38, 4);
    v38 += 4;
    if (!v40)
    {
LABEL_54:
      v7[15] += v38;
      goto LABEL_55;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(24, 1, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49) == 1)
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x18;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_EndModifyNode);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 21)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 402653184;
      }

      else
      {
        v32 = v14 | 0x18000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(45, 1, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49))
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x2D;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_ProfileMark);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 21)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 754974720;
      }

      else
      {
        v32 = v14 | 0x2D000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(16, 1, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49))
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x10;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(result & 0xFFFFFFFFFFFFLL);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 23)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 0x10000000;
      }

      else
      {
        v32 = v14 | 0x10000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(31, 1, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49) == 1)
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x1F;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_SubgraphDestroy);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 25)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 520093696;
      }

      else
      {
        v32 = v14 | 0x1F000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  v49[1] = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    return;
  }

  v7 = v2;
  v10 = *(v2 + 112);
  if (*(*(v2 + 24) + 49) == 1 && (a2 & 4) == 0)
  {
    v44[0] = -1;
    pthread_threadid_np(0, v44);
    v12 = v44[0];
    if (v44[0] == -1)
    {
      __break(1u);
      goto LABEL_58;
    }

    if ((*(v2 + 72) & 1) != 0 || v44[0] != *(v2 + 64))
    {
      *(v2 + 64) = v44[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v12);
    }
  }

  if (!prepareTrace && (a2 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v13 = mach_continuous_time();
    }

    else
    {
      v13 = mach_absolute_time();
    }

    v10 = v13;
  }

  if (*(*(v2 + 24) + 49) == 1 && (a2 & 2) == 0)
  {
    v6 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v6 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v3 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(40, 1, v3, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v44[0];
  }

  v16 = *(v2 + 112);
  v17 = v10 - v16;
  v18 = v10 < v16;
  if (*(*(v2 + 24) + 49) != 1)
  {
    if (!v18)
    {
      if (v17 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v37 = 671088640;
      }

      else
      {
        v37 = v17 | 0x28000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v37, type metadata accessor for T_TracepointIDV0);
LABEL_55:
      v7[14] = v10;
      specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_NodeSetValue);
      ++v7[7];
      return;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v3 = *(v2 + 56);
  if ((a2 & 1) != 0 && v17)
  {
    goto LABEL_61;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v43 = v20;
  LOBYTE(v4) = v19;
  if ((a2 & 2) != 0)
  {
    v21 = 40;
  }

  else
  {
    v21 = 2088;
  }

  v5 = v21 & 0xFFF00FFF | (v19 << 12);
  if (!readingDebug)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v22 = readingDebugLog;
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v42 = v6;
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49[0] = v41;
      *v24 = 134218498;
      *(v24 + 4) = v3;
      *(v24 + 12) = 2080;
      *v44 = xmmword_26C32DAD0;
      v45 = 1;
      v46 = 0;
      v47 = 0;
      v48 = 512;
      v25 = T_TracepointID.describe(state:)(v44, v5);
      v3 = v26;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v49);

      *(v24 + 14) = v27;
      *(v24 + 22) = 1024;
      *(v24 + 24) = v42;
      _os_log_impl(&dword_26C161000, v22, v23, "w %ld: %s, back: %u", v24, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x26D69EAB0](v41, -1, -1);
      v28 = v24;
      v6 = v42;
      MEMORY[0x26D69EAB0](v28, -1, -1);
    }

LABEL_36:
    v29 = v7[4];
    if (!*(v29 + 56))
    {
      break;
    }

    if (*(v29 + 52) == 2)
    {
      goto LABEL_49;
    }

    v30 = *(v29 + 32);
    LODWORD(v31) = *(v29 + 48);
    v32 = v31 | (*(v29 + 52) << 32);
    if (!v30)
    {
      if (*(v29 + 48))
      {
        goto LABEL_64;
      }

LABEL_48:
      CircularBuffer.Transaction.commit()();
LABEL_49:
      v36 = CircularBuffer.Transaction.begin()() + 4;
      v31 = *(v29 + 48);
      v32 = v31 | (*(v29 + 52) << 32);
      goto LABEL_50;
    }

    v33 = *(v29 + 40) - v30;
    v34 = v33 < v31;
    v35 = v33 - v31;
    if (v34)
    {
      __break(1u);
LABEL_64:
      __break(1u);
    }

    if (v35 < 21)
    {
      goto LABEL_48;
    }

    v36 = 4;
LABEL_50:
    if (BYTE4(v32) == 2)
    {
      goto LABEL_66;
    }

    *(*(v29 + 32) + v31) = v5;
    *(v29 + 48) = v31 + 4;
    v38 = CircularBuffer.Transaction.write(size:)(v43, v4) + v36;
    if (!v6)
    {
      goto LABEL_54;
    }

    if (*(v29 + 52) == 2)
    {
      goto LABEL_67;
    }

    v39 = *(v29 + 48);
    *(*(v29 + 32) + v39) = v6;
    *(v29 + 48) = v39 + 4;
    v40 = __OFADD__(v38, 4);
    v38 += 4;
    if (!v40)
    {
LABEL_54:
      v7[15] += v38;
      goto LABEL_55;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

void specialized Trace_Handle.write<A>(_:omit:)(unint64_t result, char a2)
{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(25, 1, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49) == 1)
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x19;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_BeginEvent);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 25)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 419430400;
      }

      else
      {
        v32 = v14 | 0x19000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(unint64_t result, uint64_t a2, char a3)
{
  v58 = *MEMORY[0x277D85DE8];
  if (*v3 != 1)
  {
    return;
  }

  v7 = v3;
  if ((*(v3[3] + 49) & 1) == 0)
  {
    return;
  }

  v8 = a2;
  v11 = v3[14];
  if ((a3 & 4) == 0)
  {
    v51[0] = -1;
    pthread_threadid_np(0, v51);
    v12 = v51[0];
    if (v51[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v3[9] & 1) != 0 || v51[0] != v3[8])
    {
      v3[8] = v51[0];
      *(v3 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v12);
    }
  }

  if (!prepareTrace && (a3 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v13 = mach_continuous_time();
    }

    else
    {
      v13 = mach_absolute_time();
    }

    v11 = v13;
  }

  if (*(v3[3] + 49) == 1 && (a3 & 2) == 0)
  {
    v6 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v6 = 0;
  }

  v5 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v4 = v3[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v3 = v51;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(66, 1, v4, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v51[0];
  }

  v16 = v7[14];
  v17 = v11 - v16;
  v18 = v11 < v16;
  if (*(v7[3] + 49) != 1)
  {
    if (v18)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v17 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
      v36 = 1107296256;
    }

    else
    {
      v36 = v17 | 0x42000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v36, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v7[14] = v11;
    if ((*(v7[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_ObservableFired(0);
      v41 = v40;
      v42 = swift_conformsToProtocol2();
      if (v42)
      {
        if (v41 && (*(v42 + 24))(v41, v42) != 12)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v56, v51);
            v43 = v53;
            v44 = v54;
            v45 = __swift_project_boxed_opaque_existential_1(v51, v53);
            v46 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v45, v7, &type metadata for Trace.SwiftUI, v41, v43, v46, &protocol witness table for T_ObservableFired, v44);
            __swift_destroy_boxed_opaque_existential_1(v51);
            goto LABEL_54;
          }

          v57 = 0;
          memset(v56, 0, sizeof(v56));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v56, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(result, v8, type metadata accessor for T_ObservableFired);
LABEL_54:
    ++v7[7];
    return;
  }

  if (v18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v50 = v6;
  v3 = v7[7];
  if ((a3 & 1) != 0 && v17)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v4 = v20;
  LOBYTE(v5) = v19;
  if ((a3 & 2) != 0)
  {
    v21 = 66;
  }

  else
  {
    v21 = 2114;
  }

  v6 = v21 & 0xFFF00FFF | (v19 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v22 = readingDebugLog;
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v49 = v4;
      v24 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v56[0] = v48;
      *v24 = 134218498;
      *(v24 + 4) = v3;
      *(v24 + 12) = 2080;
      *v51 = xmmword_26C32DAD0;
      v52 = 1;
      v53 = 0;
      v54 = 0;
      v55 = 512;
      v25 = T_TracepointID.describe(state:)(v51, v6);
      log = v22;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v56);

      *(v24 + 14) = v27;
      *(v24 + 22) = 1024;
      *(v24 + 24) = v50;
      _os_log_impl(&dword_26C161000, log, v23, "w %ld: %s, back: %u", v24, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x26D69EAB0](v48, -1, -1);
      v28 = v24;
      v4 = v49;
      MEMORY[0x26D69EAB0](v28, -1, -1);
    }

LABEL_33:
    v3 = v7[4];
    if (!v3[7])
    {
      break;
    }

    if (*(v3 + 52) == 2)
    {
      goto LABEL_46;
    }

    v29 = v3[4];
    LODWORD(v30) = *(v3 + 12);
    v31 = v30 | (*(v3 + 52) << 32);
    if (!v29)
    {
      if (*(v3 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v35 = CircularBuffer.Transaction.begin()() + 4;
      v30 = *(v3 + 12);
      v31 = v30 | (*(v3 + 52) << 32);
      goto LABEL_47;
    }

    v32 = v3[5] - v29;
    v33 = v32 < v30;
    v34 = v32 - v30;
    if (v33)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v34 < 29)
    {
      goto LABEL_45;
    }

    v35 = 4;
LABEL_47:
    if (BYTE4(v31) == 2)
    {
      goto LABEL_71;
    }

    *(v3[4] + v30) = v6;
    *(v3 + 12) = v30 + 4;
    v37 = CircularBuffer.Transaction.write(size:)(v4, v5) + v35;
    if (!v50)
    {
      goto LABEL_51;
    }

    if (*(v3 + 52) == 2)
    {
      goto LABEL_72;
    }

    v38 = *(v3 + 12);
    *(v3[4] + v38) = v50;
    *(v3 + 12) = v38 + 4;
    v39 = __OFADD__(v37, 4);
    v37 += 4;
    if (!v39)
    {
LABEL_51:
      v7[15] += v37;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, uint64_t a2)
{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v41 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(67, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v41;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x43;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v40 = v4;
                v18 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v46[0] = v39;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v41 = xmmword_26C32DAD0;
                v42 = 1;
                v43 = 0;
                v44 = 0;
                v45 = 512;
                v19 = T_TracepointID.describe(state:)(&v41, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v46);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                MEMORY[0x26D69EAB0](v39, -1, -1);
                v22 = v18;
                v4 = v40;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 21)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1124073472;
        }

        else
        {
          v31 = v13 | 0x43000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_TransactionBegin(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 4)
            {
              v48 = result;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v46, &v41);
                v35 = v43;
                v36 = v44;
                v37 = __swift_project_boxed_opaque_existential_1(&v41, v43);
                v38 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v37, v5, &type metadata for Trace.SwiftUI, v33, v35, v38, &protocol witness table for T_TransactionBegin, v36);
                __swift_destroy_boxed_opaque_existential_1(&v41);
                goto LABEL_38;
              }

              v47 = 0;
              memset(v46, 0, sizeof(v46));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_TransactionBegin);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v41 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(68, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v41;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x44;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v40 = v4;
                v18 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v46[0] = v39;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v41 = xmmword_26C32DAD0;
                v42 = 1;
                v43 = 0;
                v44 = 0;
                v45 = 512;
                v19 = T_TracepointID.describe(state:)(&v41, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v46);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                MEMORY[0x26D69EAB0](v39, -1, -1);
                v22 = v18;
                v4 = v40;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 21)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1140850688;
        }

        else
        {
          v31 = v13 | 0x44000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_TransactionEnd(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 4)
            {
              v48 = result;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v46, &v41);
                v35 = v43;
                v36 = v44;
                v37 = __swift_project_boxed_opaque_existential_1(&v41, v43);
                v38 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v37, v5, &type metadata for Trace.SwiftUI, v33, v35, v38, &protocol witness table for T_TransactionEnd, v36);
                __swift_destroy_boxed_opaque_existential_1(&v41);
                goto LABEL_38;
              }

              v47 = 0;
              memset(v46, 0, sizeof(v46));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_TransactionEnd);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v41 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(85, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v41;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x55;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v40 = v4;
                v18 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v46[0] = v39;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v41 = xmmword_26C32DAD0;
                v42 = 1;
                v43 = 0;
                v44 = 0;
                v45 = 512;
                v19 = T_TracepointID.describe(state:)(&v41, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v46);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                MEMORY[0x26D69EAB0](v39, -1, -1);
                v22 = v18;
                v4 = v40;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 21)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1426063360;
        }

        else
        {
          v31 = v13 | 0x55000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_AnimationEnd(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 4)
            {
              v48 = result;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v46, &v41);
                v35 = v43;
                v36 = v44;
                v37 = __swift_project_boxed_opaque_existential_1(&v41, v43);
                v38 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v37, v5, &type metadata for Trace.SwiftUI, v33, v35, v38, &protocol witness table for T_AnimationEnd, v36);
                __swift_destroy_boxed_opaque_existential_1(&v41);
                goto LABEL_38;
              }

              v47 = 0;
              memset(v46, 0, sizeof(v46));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_AnimationEnd);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v41 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(86, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v41;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x56;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v40 = v4;
                v18 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v46[0] = v39;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v41 = xmmword_26C32DAD0;
                v42 = 1;
                v43 = 0;
                v44 = 0;
                v45 = 512;
                v19 = T_TracepointID.describe(state:)(&v41, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v46);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                MEMORY[0x26D69EAB0](v39, -1, -1);
                v22 = v18;
                v4 = v40;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 21)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1442840576;
        }

        else
        {
          v31 = v13 | 0x56000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_AnimationAttrUpdate(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 4)
            {
              v48 = result;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v46, &v41);
                v35 = v43;
                v36 = v44;
                v37 = __swift_project_boxed_opaque_existential_1(&v41, v43);
                v38 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v37, v5, &type metadata for Trace.SwiftUI, v33, v35, v38, &protocol witness table for T_AnimationAttrUpdate, v36);
                __swift_destroy_boxed_opaque_existential_1(&v41);
                goto LABEL_38;
              }

              v47 = 0;
              memset(v46, 0, sizeof(v46));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_AnimationAttrUpdate);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v41 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(90, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v41;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x5A;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v40 = v4;
                v18 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v46[0] = v39;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v41 = xmmword_26C32DAD0;
                v42 = 1;
                v43 = 0;
                v44 = 0;
                v45 = 512;
                v19 = T_TracepointID.describe(state:)(&v41, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v46);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                MEMORY[0x26D69EAB0](v39, -1, -1);
                v22 = v18;
                v4 = v40;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1509949440;
        }

        else
        {
          v31 = v13 | 0x5A000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_InstantiateBegin(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v48 = result;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v46, &v41);
                v35 = v43;
                v36 = v44;
                v37 = __swift_project_boxed_opaque_existential_1(&v41, v43);
                v38 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v37, v5, &type metadata for Trace.SwiftUI, v33, v35, v38, &protocol witness table for T_InstantiateBegin, v36);
                __swift_destroy_boxed_opaque_existential_1(&v41);
                goto LABEL_38;
              }

              v47 = 0;
              memset(v46, 0, sizeof(v46));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_InstantiateBegin);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v41 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(91, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v41;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x5B;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v40 = v4;
                v18 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v46[0] = v39;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v41 = xmmword_26C32DAD0;
                v42 = 1;
                v43 = 0;
                v44 = 0;
                v45 = 512;
                v19 = T_TracepointID.describe(state:)(&v41, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v46);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                MEMORY[0x26D69EAB0](v39, -1, -1);
                v22 = v18;
                v4 = v40;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1526726656;
        }

        else
        {
          v31 = v13 | 0x5B000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_InstantiateEnd(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v48 = result;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v46, &v41);
                v35 = v43;
                v36 = v44;
                v37 = __swift_project_boxed_opaque_existential_1(&v41, v43);
                v38 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v37, v5, &type metadata for Trace.SwiftUI, v33, v35, v38, &protocol witness table for T_InstantiateEnd, v36);
                __swift_destroy_boxed_opaque_existential_1(&v41);
                goto LABEL_38;
              }

              v47 = 0;
              memset(v46, 0, sizeof(v46));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_InstantiateEnd);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v41 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(92, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v41;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x5C;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v40 = v4;
                v18 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v46[0] = v39;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v41 = xmmword_26C32DAD0;
                v42 = 1;
                v43 = 0;
                v44 = 0;
                v45 = 512;
                v19 = T_TracepointID.describe(state:)(&v41, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v46);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                MEMORY[0x26D69EAB0](v39, -1, -1);
                v22 = v18;
                v4 = v40;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1543503872;
        }

        else
        {
          v31 = v13 | 0x5C000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_UninstantiateBegin(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v48 = result;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v46, &v41);
                v35 = v43;
                v36 = v44;
                v37 = __swift_project_boxed_opaque_existential_1(&v41, v43);
                v38 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v37, v5, &type metadata for Trace.SwiftUI, v33, v35, v38, &protocol witness table for T_UninstantiateBegin, v36);
                __swift_destroy_boxed_opaque_existential_1(&v41);
                goto LABEL_38;
              }

              v47 = 0;
              memset(v46, 0, sizeof(v46));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_UninstantiateBegin);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v41 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(93, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v41;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x5D;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v40 = v4;
                v18 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v46[0] = v39;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v41 = xmmword_26C32DAD0;
                v42 = 1;
                v43 = 0;
                v44 = 0;
                v45 = 512;
                v19 = T_TracepointID.describe(state:)(&v41, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v46);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                MEMORY[0x26D69EAB0](v39, -1, -1);
                v22 = v18;
                v4 = v40;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1560281088;
        }

        else
        {
          v31 = v13 | 0x5D000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_UninstantiateEnd(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v48 = result;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v46, &v41);
                v35 = v43;
                v36 = v44;
                v37 = __swift_project_boxed_opaque_existential_1(&v41, v43);
                v38 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v37, v5, &type metadata for Trace.SwiftUI, v33, v35, v38, &protocol witness table for T_UninstantiateEnd, v36);
                __swift_destroy_boxed_opaque_existential_1(&v41);
                goto LABEL_38;
              }

              v47 = 0;
              memset(v46, 0, sizeof(v46));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_UninstantiateEnd);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v41 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(61, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v41;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49))
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x3D;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v40 = v4;
                v18 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v46[0] = v39;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v41 = xmmword_26C32DAD0;
                v42 = 1;
                v43 = 0;
                v44 = 0;
                v45 = 512;
                v19 = T_TracepointID.describe(state:)(&v41, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v46);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                MEMORY[0x26D69EAB0](v39, -1, -1);
                v22 = v18;
                v4 = v40;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1023410176;
        }

        else
        {
          v31 = v13 | 0x3D000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_SetDeadline(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v48 = result;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v46, &v41);
                v35 = v43;
                v36 = v44;
                v37 = __swift_project_boxed_opaque_existential_1(&v41, v43);
                v38 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v37, v5, &type metadata for Trace.SwiftUI, v33, v35, v38, &protocol witness table for T_SetDeadline, v36);
                __swift_destroy_boxed_opaque_existential_1(&v41);
                goto LABEL_38;
              }

              v47 = 0;
              memset(v46, 0, sizeof(v46));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_SetDeadline);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v34 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(20, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v34;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49))
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x14;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v33 = v4;
                v18 = swift_slowAlloc();
                v32 = swift_slowAlloc();
                v39 = v32;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v34 = xmmword_26C32DAD0;
                v35 = 1;
                v36 = 0;
                v37 = 0;
                v38 = 512;
                v19 = T_TracepointID.describe(state:)(&v34, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v39);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v32);
                MEMORY[0x26D69EAB0](v32, -1, -1);
                v22 = v18;
                v4 = v33;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
LABEL_36:
                    v5[14] = v9;
                    specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_EndGraphUpdate);
                    ++v5[7];
                    return;
                  }

LABEL_45:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_45;
            }

LABEL_41:
            swift_once();
            goto LABEL_18;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 335544320;
        }

        else
        {
          v31 = v13 | 0x14000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_40;
    }
  }
}