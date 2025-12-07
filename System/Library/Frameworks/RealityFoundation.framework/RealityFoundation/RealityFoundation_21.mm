uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  REPinComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    PinCount = REPinComponentGetPinCount();
  }

  else
  {
    PinCount = 0;
  }

  if (!a2)
  {
LABEL_16:
    a3 = 0;
    goto LABEL_17;
  }

  if (!a3)
  {
LABEL_17:
    v10 = -1;
LABEL_21:
    *a1 = a4;
    *(a1 + 8) = PinCount;
    *(a1 + 16) = v10;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v23 = a1;
    v10 = 0;
    v11 = PinCount;
    PinCount = a3 - 1;
    a1 = 0x7FFFFFFFFFFFFFFFLL;
    v21 = a3;
    v22 = v11;
    a3 = v11 & ~(v11 >> 63);
    while (1)
    {
      if (a3 == v10)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        outlined destroy of BodyTrackingComponent?(&v26, &_s17RealityFoundation12GeometricPinVSgMd, &_s17RealityFoundation12GeometricPinVSgMR);
        a1 = v23;
        goto LABEL_20;
      }

      REPinComponentGetComponentType();
      result = REEntityGetComponentByClass();
      if (!result)
      {
        goto LABEL_23;
      }

      REPinComponentGetPinNameAtIndex();
      v12 = String.init(cString:)();
      v14 = v13;
      REPinComponentGetPinOffsetPoseAtIndex();
      v16 = v15;
      HIDWORD(v16) = HIDWORD(v25);
      v24 = v17;
      v25 = v16;
      if (REPinComponentIsSkeletalJointPinAtIndex())
      {
        REPinComponentGetSkeletalJointNameAtIndex();
        v18 = String.init(cString:)();
        v20 = v19;
        swift_weakInit();
        v29 = v25;
        v30 = v24;
        swift_weakAssign();
      }

      else
      {
        swift_weakInit();
        v29 = v25;
        v30 = v24;
        swift_weakAssign();
        v18 = 0;
        v20 = 0;
      }

      *(&v26 + 1) = v12;
      *&v27 = v14;
      *(&v27 + 1) = v18;
      *&v28 = v20;
      outlined init with take of GeometricPin(&v26, v31);
      outlined init with take of GeometricPin(v31, a2);
      if (PinCount == v10)
      {
        break;
      }

      a2 += 80;
      if (++v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    a1 = v23;
    a3 = v21;
LABEL_20:
    PinCount = v22;
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = result;
  v12 = a4;
  v13 = 0;
  if (!a2)
  {
LABEL_10:
    v6 = 0;
    v9 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v6;
    return v9;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_13:
    v9 = v6;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = 1;
    while (1)
    {
      v9 = v8 - 1;
      if (v8 - 1 >= Scene.AnchorCollection.endIndex.getter())
      {
        a4 = v12;
        v6 = v13;
        goto LABEL_14;
      }

      v13 = v8;
      *v7 = Scene.AnchorCollection.subscript.getter(v8 - 1);
      v7[1] = v10;
      if (v6 == v8)
      {
        break;
      }

      v7 += 2;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a4 = v12;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 80 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      *&v26[9] = *(v18 + 57);
      v25[2] = v20;
      *v26 = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x49uLL);
      if (v14 == v10)
      {
        outlined init with copy of AudioMixGroup(v25, v24);
        goto LABEL_24;
      }

      v11 += 80;
      outlined init with copy of AudioMixGroup(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 72 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *(v18 + 8);
      v25[2] = v20;
      v25[3] = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x48uLL);
      if (v14 == v10)
      {
        outlined init with copy of ExtrudedGlyphDescriptor(v25, v24);
        goto LABEL_24;
      }

      v11 += 72;
      outlined init with copy of ExtrudedGlyphDescriptor(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 80 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v25[3] = v18[3];
      v25[4] = v19;
      v25[1] = v21;
      v25[2] = v20;
      memmove(v11, v18, 0x50uLL);
      if (v14 == v10)
      {
        outlined init with copy of ComponentInfo(v25, v24);
        goto LABEL_24;
      }

      v11 += 80;
      outlined init with copy of ComponentInfo(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + ((v9 << 10) | (16 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

Swift::Int specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v29 = 0;
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = *(*(a2 + 48) + 16 * v11 + 8);
      v13 = (*(a2 + 56) + 80 * v11);
      v14 = *(v13 + 57);
      v16 = v13[2];
      v15 = v13[3];
      v32 = v13[1];
      v17 = *v13;
      v33 = v16;
      *v34 = v15;
      *&v34[9] = v14;
      v31 = v17;
      v27 = *v34;
      v28 = v32;
      v25 = v16;
      v26 = v17;
      v18 = v14 >> 56;
      v19 = HIBYTE(v14);

      outlined init with copy of AudioMixGroup(&v31, v30);
      if (!v12)
      {
        break;
      }

      v6 &= v6 - 1;
      v31 = v26;
      v32 = v28;
      v33 = v25;
      *v34 = v27;
      *&v34[16] = v18;
      v34[24] = v19;
      String.hash(into:)();

      v20 = *&v34[8];
      outlined init with copy of AudioMixGroup(&v31, v30);
      String.hash(into:)();
      outlined destroy of AudioMixGroup(&v31);
      if (v20 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v20;
      }

      v22 = *&v34[16];
      MEMORY[0x1C68F4C50](*&v21);
      if (v22 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v22;
      }

      v24 = v34[24];
      MEMORY[0x1C68F4C50](*&v23);
      Hasher._combine(_:)(v24);
      outlined destroy of AudioMixGroup(&v31);
      result = Hasher._finalize()();
      v29 ^= result;
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_17:

    return MEMORY[0x1C68F4C10](v29);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for NSDictionary()
{
  result = lazy cache variable for type metadata for NSDictionary;
  if (!lazy cache variable for type metadata for NSDictionary)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSDictionary);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioMixGroupsComponent and conformance AudioMixGroupsComponent()
{
  result = lazy protocol witness table cache variable for type AudioMixGroupsComponent and conformance AudioMixGroupsComponent;
  if (!lazy protocol witness table cache variable for type AudioMixGroupsComponent and conformance AudioMixGroupsComponent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioMixGroupsComponent, &type metadata for AudioMixGroupsComponent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioMixGroupsComponent and conformance AudioMixGroupsComponent);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SD4KeysVySiSo13simd_float4x4aSg_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1C68F39B0](*(a1 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = specialized Set._Variant.insert(_:)(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVyS2S_GTt0g5(uint64_t a1)
{
  v2 = 0;
  v12[2] = MEMORY[0x1C68F39B0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(a1 + 48) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];

    specialized Set._Variant.insert(_:)(v12, v10, v11);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t AudioFileGroupResource.__allocating_init(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x1EEE6DFA0](AudioFileGroupResource.__allocating_init(named:from:in:), v8, v7);
}

uint64_t AudioFileGroupResource.__allocating_init(named:from:in:)()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);

  MEMORY[0x1C68F3410](58, 0xE100000000000000);

  MEMORY[0x1C68F3410](v3, v2);

  *(v0 + 88) = v11;
  v4 = v1;
  static LoadableResource.getAssetRefFromRealityFileInBundle(named:in:)(v10, v11, v1);
  v6 = v5;

  v7 = *(v6 + 16);
  *(v0 + 96) = v7;
  RERetain();

  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = AudioFileGroupResource.__allocating_init(named:from:in:);

  return specialized static AudioResource.loadAssetWithSharedAssetService(asset:debugAssetName:)(v7, v10, v11);
}

{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = AudioFileGroupResource.__allocating_init(named:from:in:);
  }

  else
  {
    v5 = AudioFileGroupResource.__allocating_init(named:from:in:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v1 = v0[12];
  v2 = v0[6];

  type metadata accessor for AudioFileGroupResource();
  swift_allocObject();
  v3 = AudioFileGroupResource.init(fromCore:)(v1);
  RERelease();

  v4 = v0[1];

  return v4(v3);
}

{
  v1 = *(v0 + 48);

  RERelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t AudioFileGroupResource.init(_:)(unint64_t a1)
{
  v4 = v2;
  if (!(a1 >> 62))
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_38:

    lazy protocol witness table accessor for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error();
    swift_allocError();
    v30 = 1;
    goto LABEL_39;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_38;
  }

  v1 = __CocoaSet.count.getter();
  if (!v1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    v17 = 1;
    goto LABEL_15;
  }

LABEL_3:
  v46[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1 & ~(v1 >> 63), 0);
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v6 = v46[0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v1; ++i)
    {
      MEMORY[0x1C68F41F0](i, a1);
      LayoutTag = REAudioFileAssetGetLayoutTag();
      swift_unknownObjectRelease();
      v46[0] = v6;
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v6 = v46[0];
      }

      *(v6 + 16) = v10 + 1;
      *(v6 + 4 * v10 + 32) = LayoutTag;
    }
  }

  else
  {
    v11 = a1 + 32;
    v12 = v1;
    do
    {
      v13 = REAudioFileAssetGetLayoutTag();
      v46[0] = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        v43 = v4;
        v16 = v13;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v13 = v16;
        v4 = v43;
        v6 = v46[0];
      }

      *(v6 + 16) = v15 + 1;
      *(v6 + 4 * v15 + 32) = v13;
      v11 += 8;
      --v12;
    }

    while (v12);
  }

  v17 = 0;
LABEL_15:
  v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt32V_SayAEGTt0g5Tf4g_n(v6);

  v19 = *(v18 + 16);

  if (v19 != 1)
  {

    lazy protocol witness table accessor for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error();
    swift_allocError();
    v30 = 2;
LABEL_39:
    *v29 = v30;
    goto LABEL_40;
  }

  v20 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v20 + 120, v46);
  v21 = v47;
  v22 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  (*(v22 + 32))(v21, v22);
  _StringGuts.grow(_:)(22);

  v49 = specialized RandomNumberGenerator.next<A>(upperBound:)(0xFFFFFFFFFFFFFFFFLL);
  v23 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v23);

  v24 = MEMORY[0x1C68F3280](0xD000000000000014, 0x80000001C18E3F80);

  if ((v17 & 1) == 0)
  {
    v42 = v24;
    v44 = v4;
    v45 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v25 = 0;
      do
      {
        v26 = *(MEMORY[0x1C68F41F0](v25, a1) + 16);
        swift_unknownObjectRelease();
        v28 = *(v45 + 16);
        v27 = *(v45 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        }

        ++v25;
        *(v45 + 16) = v28 + 1;
        *(v45 + 8 * v28 + 32) = v26;
      }

      while (v1 != v25);
    }

    else
    {
      v31 = a1 + 32;
      v32 = *(v45 + 16);
      v33 = v1;
      do
      {
        v34 = *(*v31 + 16);
        v35 = *(v45 + 24);
        if (v32 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v32 + 1, 1);
        }

        *(v45 + 16) = v32 + 1;
        *(v45 + 8 * v32 + 32) = v34;
        v31 += 8;
        ++v32;
        --v33;
      }

      while (v33);
    }

    v4 = v44;
    v24 = v42;
  }

  v3 = REAudioFileGroupAssetCreateWithFileAssets();

  __swift_destroy_boxed_opaque_existential_1(v46);
  if (!v3)
  {

    lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError();
    swift_allocError();
    *v40 = 0x2E6E776F6E6B6E55;
    v40[1] = 0xE800000000000000;
LABEL_40:
    swift_willThrow();
    type metadata accessor for AudioFileGroupResource();
    swift_deallocPartialClassInstance();
    return v1;
  }

  if (one-time initialization token for audio != -1)
  {
LABEL_43:
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.audio);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    *(v39 + 4) = REAssetGetAssetId();
    _os_log_impl(&dword_1C1358000, v37, v38, "[API/RealityKit] Loading an AudioFileGroupResource with REAssetID: %llu", v39, 0xCu);
    MEMORY[0x1C6902A30](v39, -1, -1);
  }

  *(v4 + 24) = a1;
  v1 = AudioResource.init(fromCore:)(v3);
  RERelease();
  return v1;
}

uint64_t AudioFileGroupResource.init(fromCore:)(uint64_t a1)
{
  result = REAudioFileGroupAssetGetAssetCount();
  v41 = MEMORY[0x1E69E7CC0];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v32 = v1;
    if (result)
    {
      v5 = 0;
      v38 = MEMORY[0x1E69E7CC0];
      v6 = &static ComponentInfo.Platform.macOS;
      v7 = &_ss23_ContiguousArrayStorageCys7CVarArg_pGMd;
      v37 = xmmword_1C1887600;
      while (1)
      {
        AssetAtIndex = REAudioFileGroupAssetGetAssetAtIndex();
        if (AssetAtIndex)
        {
          v13 = AssetAtIndex;
          v14 = REAssetGetSwiftObject();
          type metadata accessor for AudioResource();
          if (swift_dynamicCastClass())
          {
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          v16 = REAssetHandleAssetType();
          if (v6[466] != -1)
          {
            v30 = v7;
            v31 = v16;
            swift_once();
            v16 = v31;
            v7 = v30;
          }

          rawValue = resourceClasses._rawValue;
          if (*(resourceClasses._rawValue + 2))
          {
            v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
            if (v19)
            {
              v20 = *(rawValue[7] + 16 * v18);
              v21 = *(rawValue[7] + 16 * v18 + 8);
              v35 = *(v21 + 16);
              v34 = v20;
              v22 = v20;
              v23 = type metadata accessor for Optional();
              v36 = &v32;
              v33 = v23;
              v24 = *(v23 - 8);
              v25 = MEMORY[0x1EEE9AC00](v23);
              v27 = &v32 - v26;
              v35(v13, v22, v21, v25);
              v28 = *(v22 - 8);
              if ((*(v28 + 48))(v27, 1, v22) == 1)
              {
                (*(v24 + 8))(v27, v33);
                memset(v40, 0, sizeof(v40));
              }

              else
              {
                *&v40[24] = v34;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
                (*(v28 + 32))(boxed_opaque_existential_1, v27, v22);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16LoadableResource_pSgMd, &_s17RealityFoundation16LoadableResource_pSgMR);
              v6 = &static ComponentInfo.Platform.macOS;
              v7 = &_ss23_ContiguousArrayStorageCys7CVarArg_pGMd;
              if (!swift_dynamicCast() || !v39)
              {
                goto LABEL_5;
              }

LABEL_8:
              type metadata accessor for AudioFileResource();
              if (swift_dynamicCastClass())
              {

                MEMORY[0x1C68F3650](v15);
                if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v38 = v41;
              }

              else
              {
              }

              goto LABEL_5;
            }
          }

          v8 = static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(v7, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v9 = swift_allocObject();
          *(v9 + 16) = v37;
          v10 = REAssetGetType();
          *(v9 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
          *(v9 + 64) = lazy protocol witness table accessor for type NSString and conformance NSObject();
          *(v9 + 32) = v10;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
          v11 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v8, &dword_1C1358000, v11, "resourceFrom(assetRef:): Unrecognized asset type %@", 51, 2, v9);
        }

LABEL_5:
        if (v4 == ++v5)
        {
          goto LABEL_24;
        }
      }
    }

    v38 = MEMORY[0x1E69E7CC0];
LABEL_24:
    *(v32 + 24) = v38;
    return AudioResource.init(fromCore:)(a1);
  }

  return result;
}

uint64_t AudioFileGroupResource.deinit()
{
  v1 = v0;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audio);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v3, v4, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v5, 0xCu);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  else
  {
  }

  REAssetSetSwiftObject();
  RERelease();

  return v1;
}

uint64_t AudioFileGroupResource.__deallocating_deinit()
{
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.audio);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v1, v2, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v3, 0xCu);
    MEMORY[0x1C6902A30](v3, -1, -1);
  }

  else
  {
  }

  REAssetSetSwiftObject();
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t vtable thunk for AudioResource.__allocating_init(fromCore:) dispatching to AudioFileGroupResource.__allocating_init(fromCore:)(uint64_t a1)
{
  type metadata accessor for AudioFileGroupResource();
  swift_allocObject();
  return AudioFileGroupResource.init(fromCore:)(a1);
}

void AudioFileGroupResource.hash(into:)()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else if ((v1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = MEMORY[0x1C68F41F0](i, v1);
      MEMORY[0x1C68F4C10](*(v4 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (v1 + 32);
    do
    {
      v6 = *v5++;
      MEMORY[0x1C68F4C10](*(v6 + 16));
      --v2;
    }

    while (v2);
  }
}

void *AudioFileGroupResource.hashValue.getter()
{
  result = Hasher.init(_seed:)();
  v2 = *(v0 + 24);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return Hasher._finalize()();
  }

  result = __CocoaSet.count.getter();
  v3 = result;
  if (!result)
  {
    return Hasher._finalize()();
  }

LABEL_3:
  if (v3 >= 1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v3; ++i)
      {
        v5 = MEMORY[0x1C68F41F0](i, v2);
        MEMORY[0x1C68F4C10](*(v5 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = (v2 + 32);
      do
      {
        v7 = *v6++;
        MEMORY[0x1C68F4C10](*(v7 + 16));
        --v3;
      }

      while (v3);
    }

    return Hasher._finalize()();
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioFileGroupResource()
{
  Hasher.init(_seed:)();
  AudioFileGroupResource.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AudioFileGroupResource.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v13 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C1887600;
  *(v8 + 32) = 0x656372756F736572;
  *(v8 + 40) = 0xE900000000000073;
  v9 = *(v0 + 24);
  *(v8 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit17AudioFileResourceCGMd, &_sSay10RealityKit17AudioFileResourceCGMR);
  *(v8 + 48) = v9;
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  type metadata accessor for AudioFileGroupResource();

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1C6902A50](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1C6902A50](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption();
  result = MEMORY[0x1C68F39B0](v2, &type metadata for InputTargetComponent.DirectInputType.DirectInputOption, v3);
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation17CollisionPlane_v1V_SayAFGTt0g5Tf4g_n(float32x4_t *a1)
{
  v2 = a1[1].i64[0];
  v3 = lazy protocol witness table accessor for type CollisionPlane_v1 and conformance CollisionPlane_v1();
  result = MEMORY[0x1C68F39B0](v2, &type metadata for CollisionPlane_v1, v3);
  v10 = result;
  if (v2)
  {
    v5 = a1 + 2;
    do
    {
      v6 = v5[3];
      v11[2] = v5[2];
      v11[3] = v6;
      v11[4] = v5[4];
      v8 = *v5;
      v7 = v5[1];
      v5 += 5;
      v11[0] = v8;
      v11[1] = v7;
      specialized Set._Variant.insert(_:)(v9, v11);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C68F39B0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDVSg_SayAGGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type UUID? and conformance <A> A?();
  result = MEMORY[0x1C68F39B0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      outlined init with copy of UUID?(v12, v5);
      specialized Set._Variant.insert(_:)(v8, v5);
      outlined destroy of UUID?(v8);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation27NetworkSendBlockingCategoryO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory();
  result = MEMORY[0x1C68F39B0](v2, &type metadata for NetworkSendBlockingCategory, v3);
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt32V_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C68F39B0](v2, MEMORY[0x1E69E7668], MEMORY[0x1E69E7678]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt64V_SayAEGTt0g5Tf4g_nTm(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v6 = *(a1 + 16);
  result = MEMORY[0x1C68F39B0](v6, a2, a3);
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation26ImagePresentationComponentV11ViewingModeV_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode();
  result = MEMORY[0x1C68F39B0](v2, &type metadata for ImagePresentationComponent.ViewingMode, v3);
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

unint64_t lazy protocol witness table accessor for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error()
{
  result = lazy protocol witness table cache variable for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error;
  if (!lazy protocol witness table cache variable for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioFileGroupResource.Error, &type metadata for AudioFileGroupResource.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error;
  if (!lazy protocol witness table cache variable for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioFileGroupResource.Error, &type metadata for AudioFileGroupResource.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError()
{
  result = lazy protocol witness table cache variable for type AudioResource.CoreREError and conformance AudioResource.CoreREError;
  if (!lazy protocol witness table cache variable for type AudioResource.CoreREError and conformance AudioResource.CoreREError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioResource.CoreREError, &type metadata for AudioResource.CoreREError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.CoreREError and conformance AudioResource.CoreREError);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_2(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode()
{
  result = lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode;
  if (!lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ImagePresentationComponent.ViewingMode, &type metadata for ImagePresentationComponent.ViewingMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode;
  if (!lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ImagePresentationComponent.ViewingMode, &type metadata for ImagePresentationComponent.ViewingMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollisionPlane_v1 and conformance CollisionPlane_v1()
{
  result = lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1;
  if (!lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollisionPlane_v1, &type metadata for CollisionPlane_v1, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1;
  if (!lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollisionPlane_v1, &type metadata for CollisionPlane_v1, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1;
  if (!lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollisionPlane_v1, &type metadata for CollisionPlane_v1, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1;
  if (!lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollisionPlane_v1, &type metadata for CollisionPlane_v1, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UUID? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UUID? and conformance <A> A?)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v4[0] = _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C78], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type UUID? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory()
{
  result = lazy protocol witness table cache variable for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory;
  if (!lazy protocol witness table cache variable for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NetworkSendBlockingCategory, &type metadata for NetworkSendBlockingCategory, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory;
  if (!lazy protocol witness table cache variable for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NetworkSendBlockingCategory, &type metadata for NetworkSendBlockingCategory, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption()
{
  result = lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption;
  if (!lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InputTargetComponent.DirectInputType.DirectInputOption, &type metadata for InputTargetComponent.DirectInputType.DirectInputOption, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption;
  if (!lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InputTargetComponent.DirectInputType.DirectInputOption, &type metadata for InputTargetComponent.DirectInputType.DirectInputOption, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption);
  }

  return result;
}

uint64_t RKARSegmentationComponent.segmentationBuffer.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t RKARSegmentationComponent.estimatedDepthData.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t RKARSegmentationComponent.cameraTextureY.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 16) = a1;
  return result;
}

uint64_t RKARSegmentationComponent.cameraTextureCbCr.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 24) = a1;
  return result;
}

double RKARSegmentationComponent.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t RKARSegmentationComponent.init(segmentationBuffer:estimatedDepthData:cameraTextureY:cameraTextureCbCr:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

id static RKARSegmentationComponent.__fromCore(_:)@<X0>(void *a2@<X8>)
{
  v3 = REARSegmentationComponentGetSegmentationBuffer();
  v4 = REARSegmentationComponentGetEstimatedDepthData();
  v5 = REARSegmentationComponentGetCameraTextureY();
  result = REARSegmentationComponentGetCameraTextureCbCr();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = result;
  return result;
}

uint64_t RKARSegmentationComponent.__toCore(_:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  if (v2)
  {
    REARSegmentationComponentSetSegmentationBuffer();
  }

  if (v3)
  {
    REARSegmentationComponentSetEstimatedDepthData();
  }

  if (v5)
  {
    REARSegmentationComponentSetCameraTextureY();
  }

  if (v4)
  {
    REARSegmentationComponentSetCameraTextureCbCr();
  }

  return RENetworkMarkComponentDirty();
}

id protocol witness for static Component.__fromCore(_:) in conformance RKARSegmentationComponent@<X0>(void *a2@<X8>)
{
  v3 = REARSegmentationComponentGetSegmentationBuffer();
  v4 = REARSegmentationComponentGetEstimatedDepthData();
  v5 = REARSegmentationComponentGetCameraTextureY();
  result = REARSegmentationComponentGetCameraTextureCbCr();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = result;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance RKARSegmentationComponent(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  if (v2)
  {
    REARSegmentationComponentSetSegmentationBuffer();
  }

  if (v3)
  {
    REARSegmentationComponentSetEstimatedDepthData();
  }

  if (v5)
  {
    REARSegmentationComponentSetCameraTextureY();
  }

  if (v4)
  {
    REARSegmentationComponentSetCameraTextureCbCr();
  }

  return RENetworkMarkComponentDirty();
}

uint64_t getEnumTagSinglePayload for RKARSegmentationComponent(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for RKARSegmentationComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void protocol witness for CodingKey.init(stringValue:) in conformance SpatialMediaError.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialMediaError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialMediaError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SpatialMediaError@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation17SpatialMediaErrorV10CodingKeys33_B76EF9165CBFDC19EB6A27859D28FFEBLLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation17SpatialMediaErrorV10CodingKeys33_B76EF9165CBFDC19EB6A27859D28FFEBLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SpatialMediaError(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation17SpatialMediaErrorV10CodingKeys33_B76EF9165CBFDC19EB6A27859D28FFEBLLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation17SpatialMediaErrorV10CodingKeys33_B76EF9165CBFDC19EB6A27859D28FFEBLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialMediaError.CodingKeys, &unk_1F40FA6F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialMediaError.CodingKeys, &unk_1F40FA6F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialMediaError.CodingKeys, &unk_1F40FA6F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialMediaError.CodingKeys, &unk_1F40FA6F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys);
  }

  return result;
}

uint64_t __RKEntityTrigger.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  return result;
}

uint64_t __RKEntityTrigger.reversible.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t __RKEntityTrigger.shouldReverse.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 17) = a1;
  return result;
}

uint64_t __RKEntityTrigger.shouldFireAlternate.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 18) = a1;
  return result;
}

BOOL __RKEntityTrigger.matches(with:)(uint64_t a1)
{
  type metadata accessor for __RKEntityTriggerGroup();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (v4 >> 62)
  {
LABEL_18:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v5 != v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C68F41F0](v6, v4);
      if (__OFADD__(v6, 1))
      {
LABEL_13:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }

      v8 = *(v4 + 8 * v6 + 32);

      if (__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }
    }

    v9 = (*(*v1 + 184))(v8);

    ++v6;
  }

  while ((v9 & 1) == 0);

  return v7;
}

uint64_t __RKEntityTrigger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t __RKEntityTrigger.copy(with:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for __RKEntityTrigger();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  a2[3] = v3;
  *a2 = result;
  return result;
}

double AnimationView.init(name:source:targetPath:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, float a12@<S2>, char a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  v21 = *a4;
  v22 = a4[1];
  v23 = *(a4 + 16);
  v24 = *a6;
  v33 = *a7;
  outlined init with copy of __REAssetService(a3, v51);
  if (v23 == 255)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    LOBYTE(v23) = 0;
  }

  outlined consume of BindTarget?(0, 0, 0xFFu);
  v39[0] = 0;
  v40 = 0;
  type metadata accessor for TimelineDefinition();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = v39[0];
  v27 = v40;
  v39[0] = 0;
  v40 = 0;
  v39[61] = 0;
  v39[56] = 0;
  v39[48] = 0;
  v39[40] = 0;
  *&v41 = a8;
  WORD4(v41) = a13 & 1;
  *&v42 = a14;
  WORD4(v42) = a15 & 1;
  *&v43 = a16;
  WORD4(v43) = a17 & 1;
  *&v44 = a10;
  BYTE8(v44) = 0;
  *&v45 = a11;
  BYTE8(v45) = 0;
  *(&v45 + 3) = a12;
  LOBYTE(v46) = 0;
  BYTE1(v46) = v24;
  *(&v46 + 1) = 0;
  *&v47 = a1;
  *(&v47 + 1) = a2;
  *&v48 = v21;
  *(&v48 + 1) = v22;
  LOBYTE(v49) = v23;
  DWORD1(v49) = a5;
  BYTE8(v49) = v26;
  BYTE9(v49) = v33;
  WORD5(v49) = v27;
  v50 = v25;
  outlined init with copy of __REAssetService(v51, v39);
  AnimationView.source.setter(v39);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v28 = v48;
  *(a9 + 96) = v47;
  *(a9 + 112) = v28;
  *(a9 + 128) = v49;
  *(a9 + 144) = v50;
  v29 = v44;
  *(a9 + 32) = v43;
  *(a9 + 48) = v29;
  v30 = v46;
  *(a9 + 64) = v45;
  *(a9 + 80) = v30;
  result = *&v41;
  v32 = v42;
  *a9 = v41;
  *(a9 + 16) = v32;
  return result;
}

uint64_t FromToByAnimation.init(name:from:to:by:duration:additive:targetPath:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, float a13@<S3>, unsigned __int8 *a14, unsigned __int8 *a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, unsigned __int8 a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23)
{
  v56 = a8;
  v58 = a6;
  v59 = a5;
  v60 = a4;
  v61 = a3;
  v57 = a2;
  v54 = a9;
  v55 = a1;
  v52 = a18;
  v53 = a16;
  v51 = a20;
  v50 = a21;
  v48 = a19;
  v47 = a17;
  v49 = a23;
  v46 = a22;
  v28 = type metadata accessor for Optional();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v44 - v33;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v44 - v37;
  v39 = *a7;
  v40 = *(a7 + 8);
  LOBYTE(a7) = *(a7 + 16);
  v44 = *a14;
  v45 = *a15;
  v41 = *(v29 + 16);
  v41(&v44 - v37, v61, v28, v36);
  (v41)(v34, v60, v28);
  (v41)(v31, v59, v28);
  v66[0] = 0;
  v66[1] = 0;
  v67 = 0;
  v68 = 10;
  v64[0] = v39;
  v64[1] = v40;
  v65 = a7;
  v63 = v44;
  v62 = v45;
  FromToByAnimation.init(name:from:to:by:duration:timing:isAdditive:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)(v55, v57, v38, v34, v31, v66, v58, v64, v54, a10, a11, a12, a13, v56, &v63, &v62, v53, v47 & 1, v52, v48 & 1, v51, v50 & 1, v46, v49);
  v42 = *(v29 + 8);
  v42(v59, v28);
  v42(v60, v28);
  return (v42)(v61, v28);
}

__n128 OrbitAnimation.init(name:duration:axis:startTransform:spinClockwise:orientToPath:rotationCount:additive:targetPath:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t *a6@<X5>, int a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>, float a15@<S5>, double a16@<D6>, double a17@<D7>, char *a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, int a25)
{
  v31 = *a6;
  v32 = a6[1];
  v33 = *(a6 + 16);
  v41 = *a8;
  v37 = *a18;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v49[0] = 0;
  LOBYTE(v61) = 0;
  LOBYTE(v59) = 0;
  LOBYTE(v57) = 0;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  v48[0] = 0;
  v56[0] = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v31;
  *(a9 + 24) = v32;
  *(a9 + 32) = v33;
  *(a9 + 33) = v63;
  *(a9 + 35) = v64;
  *(a9 + 36) = a7;
  *(a9 + 40) = 0;
  *(a9 + 41) = v37;
  *(a9 + 42) = 0;
  *(a9 + 43) = a5;
  *(a9 + 48) = v35;
  *(a9 + 56) = a19;
  *(a9 + 64) = a20 & 1;
  *(a9 + 65) = 0;
  *(a9 + 70) = v62;
  *(a9 + 66) = v61;
  *(a9 + 72) = a21;
  *(a9 + 80) = a22 & 1;
  *(a9 + 81) = 0;
  *(a9 + 86) = v60;
  *(a9 + 82) = v59;
  *(a9 + 88) = a23;
  *(a9 + 96) = a24 & 1;
  *(a9 + 97) = 0;
  *(a9 + 102) = v58;
  *(a9 + 98) = v57;
  *(a9 + 104) = a16;
  *(a9 + 112) = 0;
  *(a9 + 116) = *&v56[3];
  *(a9 + 113) = *v56;
  *(a9 + 120) = a17;
  *(a9 + 128) = 0;
  *(a9 + 131) = v55;
  *(a9 + 129) = v54;
  *(a9 + 132) = a25;
  *(a9 + 136) = 0;
  *(a9 + 137) = v41;
  *(a9 + 142) = v53;
  *(a9 + 138) = v52;
  *(a9 + 144) = 0;
  *(a9 + 152) = a1;
  *(a9 + 160) = a2;
  *(a9 + 168) = xmmword_1C1898800;
  *(a9 + 184) = 0;
  *(a9 + 187) = v51;
  *(a9 + 185) = v50;
  *(a9 + 188) = 0;
  *(a9 + 192) = 0;
  *(a9 + 193) = 0;
  *(a9 + 194) = 0;
  *(a9 + 195) = 0;
  *(a9 + 200) = v34;
  *(a9 + 208) = a10;
  *(a9 + 216) = 0;
  *(a9 + 220) = *&v49[3];
  *(a9 + 217) = *v49;
  *(a9 + 224) = a11;
  *(a9 + 240) = 0;
  *(a9 + 248) = *&v48[7];
  *(a9 + 241) = *v48;
  *(a9 + 256) = a12;
  *(a9 + 272) = a13;
  result = a14;
  *(a9 + 288) = a14;
  *(a9 + 304) = 0;
  *(a9 + 305) = a3;
  *(a9 + 306) = a4;
  *(a9 + 308) = a15;
  *(a9 + 312) = 0;
  return result;
}

uint64_t static MeshResource.generateFace(faceGeometry:fillMesh:)(void *a1, char a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = [a1 vertexCount];
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  if (HIDWORD(v4))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v5 = [a1 triangleCount];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v6 = v5;
  if (HIDWORD(v5))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = [a1 triangleIndices];
  v8 = [a1 triangleCount];
  v9 = 3 * v8;
  if ((v8 * 3) >> 64 != (3 * v8) >> 63)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v9)
  {
    goto LABEL_15;
  }

  v37[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 & ~(v9 >> 63), 0);
  v10 = v9 < 1;
  v11 = v9 - 1;
  if (v10)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (*v7 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = *v7;
  v13 = v37[0];
  v14 = *(v37[0] + 16);
  v15 = v7 + 1;
  while (1)
  {
    v37[0] = v13;
    v16 = *(v13 + 24);
    if (v14 >= v16 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v14 + 1, 1);
      v13 = v37[0];
    }

    *(v13 + 16) = v14 + 1;
    *(v13 + 4 * v14 + 32) = v12;
    if (!v11)
    {
      break;
    }

    v17 = *v15++;
    v12 = v17;
    --v11;
    ++v14;
    if (v17 < 0)
    {
      goto LABEL_34;
    }
  }

LABEL_15:
  if (a2)
  {
    v18 = __CFADD__(v6, 34);
    v19 = v6 + 34;
    if (!v18)
    {
      specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of static MeshResource.generateFace(faceGeometry:fillMesh:));
      v18 = __CFADD__(v19, 22);
      v20 = v19 + 22;
      if (!v18)
      {
        specialized Array.append<A>(contentsOf:)(&outlined read-only object #1 of static MeshResource.generateFace(faceGeometry:fillMesh:));
        v18 = __CFADD__(v20, 22);
        v6 = (v20 + 22);
        if (!v18)
        {
          specialized Array.append<A>(contentsOf:)(&outlined read-only object #2 of static MeshResource.generateFace(faceGeometry:fillMesh:));
LABEL_21:
          v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v21 + 16) = v6;
          memset((v21 + 32), 3, v6);
          goto LABEL_22;
        }

LABEL_43:
        __break(1u);
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v6)
  {
    goto LABEL_21;
  }

LABEL_22:
  v22 = [a1 vertices];
  v23 = [a1 vertexCount];
  if (v23)
  {
    v24 = v23;
    v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD3VySfG_Tt1g5(v23, 0);
    memcpy(v25 + 4, v22, 16 * v24);
  }

  v26 = [a1 textureCoordinates];
  v27 = [a1 vertexCount];
  if (v27)
  {
    v28 = v27;
    v29 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD2VySfG_Tt1g5(v27, 0);
    memcpy(v29 + 4, v26, 8 * v28);
  }

  if (REGeomMeshCreateFromCoreAttributes())
  {
    v30 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v30 + 120, v37);
    v31 = v38;
    v32 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v32 + 32))(v31, v32);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v33 = REAssetManagerMeshMemoryAssetCreate();
    if (v33)
    {
      v34 = v33;

      if (REAssetGetSwiftObject())
      {
        type metadata accessor for MeshResource();
        v35 = swift_dynamicCastClass();
        if (v35)
        {
LABEL_32:
          RERelease();
          RERelease();
          return v35;
        }

        swift_unknownObjectRelease();
      }

      type metadata accessor for MeshResource();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      RERetain();
      REAssetSetSwiftObject();
      goto LABEL_32;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

CGImageRef specialized static CGImageRef.image(with:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      return 0;
    }
  }

  else if (v2)
  {
    if (a1 == a1 >> 32)
    {
      return 0;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = CGImageSourceCreateWithData(isa, 0);

  if (v4)
  {
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v4);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, PrimaryImageIndex, 0);

    return ImageAtIndex;
  }

  return 0;
}

uint64_t specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(a1, a2, a3, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOG_G3key_AQ7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOG_G3key_AQ7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMR, a4);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(a1, a2, a3, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOG_G3key_AQ7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOG_G3key_AQ7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMR, a4);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(a1, a2, a3, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOG_G3key_AQ7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOG_G3key_AQ7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMR, a4);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(a1, a2, a3, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOG_G3key_AQ7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOG_G3key_AQ7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMR, a4);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(a1, a2, a3, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOG_G3key_AQ7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOG_G3key_AQ7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMR, a4);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(a1, a2, a3, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVy0A3Kit17EngineUpdateEventVs5NeverOG_G3key_AN7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVy0A3Kit17EngineUpdateEventVs5NeverOG_G3key_AN7elementtMR, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMR, a4);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(a1, a2, a3, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVy0A3Kit17EngineRenderEventVs5NeverOG_G3key_AN7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVy0A3Kit17EngineRenderEventVs5NeverOG_G3key_AN7elementtMR, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMR, a4);
}

uint64_t specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a6;
  v25 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  result = swift_beginAccess();
  v19 = *(a1 + 16);
  if (v19 >= a2)
  {
    v22 = 1;
    v21 = v24;
    v20 = v25;
    goto LABEL_6;
  }

  if (v19 < 0)
  {
    __break(1u);
  }

  else if (v19 < *(a3 + 16))
  {
    outlined init with copy of [String : String](a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v19, v17, a4, a5);
    v21 = v24;
    v20 = v25;
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(&v17[*(v14 + 48)], a8, v24, v25);
    swift_beginAccess();
    v22 = 0;
    *(a1 + 16) = v19 + 1;
LABEL_6:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v20);
    return (*(*(v23 - 8) + 56))(a8, v22, 1, v23);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t REEventDispatcher.receive(_:)(uint64_t a1)
{
  v15[2] = a1;
  v2 = type metadata accessor for AnySubscriber();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  v6 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v15 - v7;
  v9 = *(v1 + 64);
  os_unfair_lock_lock(v9 + 4);
  swift_beginAccess();
  v10 = *(v1 + 72);

  os_unfair_lock_unlock(v9 + 4);
  v15[1] = v10;
  OrderedCoatCheckBag.makeIterator()(v10, v2);
  AnyIterator.next()();
  v11 = *(v3 + 48);
  if (v11(v8, 1, v2) != 1)
  {
    v12 = *(v3 + 32);
    do
    {
      v12(v5, v8, v2);
      dispatch thunk of AnySubscriberBase.receive(_:)();
      (*(v3 + 8))(v5, v2);
      AnyIterator.next()();
    }

    while (v11(v8, 1, v2) != 1);
  }

  v13 = static Subscribers.Demand.unlimited.getter();

  return v13;
}

uint64_t REEventDispatcher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = a3;
  v111 = *(*v3 + 80);
  v6 = type metadata accessor for AnySubscriber();
  v101 = type metadata accessor for Optional();
  v108 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v94 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v94 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v94 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v94 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v94 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v94 - v25;
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v96 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v102 = &v94 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v94 - v34;
  v100 = v11;
  v36 = *(v11 + 16);
  v114 = a1;
  v36(v26, a1, a2, v33);
  v37 = swift_dynamicCast();
  v38 = *(v27 + 56);
  v109 = v27;
  v110 = v36;
  v112 = v35;
  v106 = v11 + 16;
  if (v37)
  {
    v38(v10, 0, 1, v6);
    (*(v27 + 32))(v35, v10, v6);
    v39 = a2;
    v40 = v114;
    v41 = v35;
  }

  else
  {
    v38(v10, 1, 1, v6);
    v42 = *(v108 + 8);
    v108 += 8;
    v94 = v42;
    v42(v10, v101);
    v43 = v105;
    (v36)(v105, v114, a2);
    (v36)(v99, v43, a2);
    v39 = a2;
    if (swift_dynamicCast())
    {
      v44 = v104;
      v38(v104, 0, 1, v6);
      v45 = v27;
      v46 = *(v27 + 32);
      v47 = v96;
      v46(v96, v44, v6);
      v48 = v102;
      v46(v102, v47, v6);
      v40 = v114;
      v41 = v112;
      v49 = v100;
      v50 = v105;
    }

    else
    {
      v51 = v104;
      v38(v104, 1, 1, v6);
      v94(v51, v101);
      v52 = v102;
      v53 = v105;
      dispatch thunk of CustomCombineIdentifierConvertible.combineIdentifier.getter();
      type metadata accessor for AnySubscriberBox();
      (v36)(v113, v53, v39);
      *v52 = AnySubscriberBox.__allocating_init(_:)();
      (v36)(v97, v53, v39);
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, &_ss23CustomStringConvertible_pMR);
      v54 = v53;
      if (swift_dynamicCast())
      {
        outlined init with take of ForceEffectBase(&v116, &v119);
        outlined init with take of ForceEffectBase(&v119, &v116);
        v55 = swift_allocObject();
        outlined init with take of ForceEffectBase(&v116, v55 + 16);
        v56 = partial apply for closure #1 in AnySubscriber.init<A>(_:);
      }

      else
      {
        v118 = 0;
        v116 = 0u;
        v117 = 0u;
        outlined destroy of BodyTrackingComponent?(&v116, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
        swift_getDynamicType();
        v57 = _typeName(_:qualified:)();
        v59 = v58;
        v55 = swift_allocObject();
        *(v55 + 16) = v57;
        *(v55 + 24) = v59;
        v52 = v102;
        v56 = protocol witness for VFXParameter.objectName.getter in conformance VFXResource.VFXParameterImpl;
      }

      v49 = v100;
      v52[1] = v56;
      v52[2] = v55;
      v60 = v113;
      v40 = v114;
      v61 = v110;
      (v110)(v113, v54, v39);
      v62 = (*(v49 + 80) + 40) & ~*(v49 + 80);
      v63 = swift_allocObject();
      *(v63 + 2) = v111;
      *(v63 + 3) = v39;
      *(v63 + 4) = v115;
      v64 = v60;
      v48 = v102;
      (*(v49 + 32))(&v63[v62], v64, v39);
      v48[3] = partial apply for closure #3 in AnySubscriber.init<A>(_:);
      v48[4] = v63;
      v65 = v61;
      v61(v98, v54, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss34CustomPlaygroundDisplayConvertible_pMd, &_ss34CustomPlaygroundDisplayConvertible_pMR);
      v50 = v54;
      if (swift_dynamicCast())
      {
        outlined init with take of ForceEffectBase(&v116, &v119);
        outlined init with take of ForceEffectBase(&v119, &v116);
        v66 = swift_allocObject();
        outlined init with take of ForceEffectBase(&v116, v66 + 16);
        v48[5] = partial apply for closure #4 in AnySubscriber.init<A>(_:);
        v48[6] = v66;
        v45 = v109;
        v41 = v112;
      }

      else
      {
        v118 = 0;
        v116 = 0u;
        v117 = 0u;
        outlined destroy of BodyTrackingComponent?(&v116, &_ss34CustomPlaygroundDisplayConvertible_pSgMd, &_ss34CustomPlaygroundDisplayConvertible_pSgMR);
        v65(v95, v54, v39);
        v67 = swift_dynamicCast();
        v41 = v112;
        if (v67)
        {
          outlined init with take of ForceEffectBase(&v116, &v119);
          outlined init with take of ForceEffectBase(&v119, &v116);
          v68 = swift_allocObject();
          outlined init with take of ForceEffectBase(&v116, v68 + 16);
          v48[5] = partial apply for closure #5 in AnySubscriber.init<A>(_:);
          v48[6] = v68;
        }

        else
        {
          v118 = 0;
          v116 = 0u;
          v117 = 0u;
          outlined destroy of BodyTrackingComponent?(&v116, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
          swift_getDynamicType();
          v69 = _typeName(_:qualified:)();
          v71 = v70;
          v72 = swift_allocObject();
          *(v72 + 16) = v69;
          *(v72 + 24) = v71;
          v48[5] = partial apply for closure #6 in AnySubscriber.init<A>(_:);
          v48[6] = v72;
        }

        v45 = v109;
      }
    }

    (*(v45 + 32))(v41, v48, v6);
    (*(v49 + 8))(v50, v39);
  }

  v103 = v6;
  v73 = v107;
  v74 = *(v107 + 64);
  os_unfair_lock_lock(v74 + 4);
  swift_beginAccess();
  v77 = type metadata accessor for OrderedCoatCheckBag(0, v6, v75, v76);
  v102 = OrderedCoatCheckBag.append(_:)(v41, v77, v78, v79);
  v101 = v80;
  swift_endAccess();
  os_unfair_lock_unlock(v74 + 4);
  v81 = v111;
  v82 = v115;
  v83 = type metadata accessor for REEventDispatcher.EventSubscription(0, v111, v39, v115);
  v84 = v73[2];
  swift_unownedRetainStrong();
  v85 = v73[4];
  v114 = v73[3];
  v108 = v85;
  v86 = v73[6];
  v105 = v73[5];
  v104 = v86;
  v87 = v73[7];
  v88 = v113;
  (v110)(v113, v40, v39);
  v89 = swift_allocObject();
  swift_weakInit();
  v90 = swift_allocObject();
  v90[2] = v81;
  v90[3] = v39;
  v90[4] = v82;
  v90[5] = v89;
  v91 = v101;
  v90[6] = v102;
  v90[7] = v91;
  swift_allocObject();

  v92 = REEventDispatcher.EventSubscription.init(eventBus:coreHandle:sourceObject:componentType:matching:downstream:cancellationHandler:)(v84, v114, v108, v105, v104, v87, v88, partial apply for closure #1 in REEventDispatcher.receive<A>(subscriber:), v90);
  v120 = v83;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for REEventDispatcher<A>.EventSubscription<A1>, v83);
  *&v119 = v92;
  dispatch thunk of Subscriber.receive(subscription:)();
  (*(v109 + 8))(v112, v103);
  return __swift_destroy_boxed_opaque_existential_1(&v119);
}

uint64_t closure #1 in REEventDispatcher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for AnySubscriber();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 64);
    v13 = result;

    os_unfair_lock_lock(v12 + 4);

    swift_beginAccess();
    v16 = type metadata accessor for OrderedCoatCheckBag(0, v6, v14, v15);
    OrderedCoatCheckBag.remove(_:)(a2, a3, v16, v17, v10);
    (*(v8 + 8))(v10, v7);
    swift_endAccess();
    v18 = *(v13 + 64);

    os_unfair_lock_unlock(v18 + 4);
  }

  return result;
}

uint64_t *REEventDispatcher.EventSubscription.init(eventBus:coreHandle:sourceObject:componentType:matching:downstream:cancellationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a8;
  v39 = a7;
  v29[0] = a4;
  v29[1] = a5;
  v35 = a3;
  v30 = a2;
  v32 = *v9;
  v33 = a6;
  v11 = *(v32 + 88);
  v37 = a9;
  v31 = type metadata accessor for Optional();
  v12 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v14 = v29 - v13;
  swift_weakInit();
  v9[4] = 0;
  v9[5] = 0;
  *(v9 + 48) = 1;
  v15 = *(*v9 + 128);
  v16 = *(v11 - 8);
  v17 = *(v16 + 56);
  v17(v9 + v15, 1, 1, v11);
  v18 = (v9 + *(*v9 + 136));
  *v18 = 0;
  v18[1] = 0;
  *(v9 + *(*v9 + 144)) = 0;
  v36 = a1;
  v19 = v30;
  swift_weakAssign();
  v9[3] = v19;
  v34 = v16;
  (*(v16 + 16))(v14, v39, v11);
  v17(v14, 0, 1, v11);
  swift_beginAccess();
  (*(v12 + 40))(v9 + v15, v14, v31);
  v20 = v33;
  swift_endAccess();
  getEventID<A>(_:)(*(v32 + 80), *(v32 + 80));

  if (v20)
  {
    v44 = partial apply for implicit closure #2 in implicit closure #1 in REEventDispatcher.EventSubscription.init(eventBus:coreHandle:sourceObject:componentType:matching:downstream:cancellationHandler:);
    v45 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    v43 = &block_descriptor_4;
    v21 = _Block_copy(&aBlock);

    String.utf8CString.getter();

    RETimelineEventFilter();
  }

  else
  {
    v44 = partial apply for implicit closure #4 in implicit closure #3 in REEventDispatcher.EventSubscription.init(eventBus:coreHandle:sourceObject:componentType:matching:downstream:cancellationHandler:);
    v45 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    v43 = &block_descriptor_12;
    v21 = _Block_copy(&aBlock);
  }

  v22 = REEventBusSubscribeWithMatch();
  v24 = v23;
  _Block_release(v21);

  (*(v34 + 8))(v39, v11);
  v9[4] = v22;
  v9[5] = v24;
  *(v9 + 48) = 0;
  v25 = *v18;
  v26 = v18[1];
  v27 = v37;
  *v18 = v38;
  v18[1] = v27;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v25, v26);
  return v9;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t *REEventDispatcher.EventSubscription.deinit()
{
  swift_weakDestroy();
  v1 = *(*v0 + 128);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8));
  return v0;
}

uint64_t REEventDispatcher.EventSubscription.__deallocating_deinit()
{
  REEventDispatcher.EventSubscription.deinit();

  return swift_deallocClassInstance();
}

uint64_t REEventDispatcher.deinit()
{
  swift_unownedRelease();

  return v0;
}

uint64_t REEventDispatcher.__deallocating_deinit()
{
  REEventDispatcher.deinit();

  return swift_deallocClassInstance();
}

uint64_t REEventDispatcher.EventSubscription.request(_:)(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = *(v1 + v3);
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
    return swift_endAccess();
  }

  static Subscribers.Demand.unlimited.getter();
  v5 = static Subscribers.Demand.== infix(_:_:)();
  v6 = static Subscribers.Demand.unlimited.getter();
  if (v5)
  {
LABEL_9:
    *(v1 + v3) = v6;
    return swift_endAccess();
  }

  result = static Subscribers.Demand.== infix(_:_:)();
  if (result)
  {
    goto LABEL_7;
  }

  if ((v4 | a1) < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 + a1;
  if (__OFADD__(v4, a1))
  {
LABEL_7:
    v6 = static Subscribers.Demand.unlimited.getter();
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t REEventDispatcher.EventSubscription.cancel()()
{
  v1 = *(*v0 + 88);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  (*(*(v1 - 8) + 56))(&v15 - v5, 1, 1, v1, v4);
  v7 = *(*v0 + 128);
  swift_beginAccess();
  (*(v3 + 40))(v0 + v7, v6, v2);
  swift_endAccess();
  if (swift_weakLoadStrong())
  {

    if ((*(v0 + 48) & 1) == 0)
    {
      MEMORY[0x1C68F9800](*(v0 + 24), *(v0 + 32), *(v0 + 40));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = 1;
    }
  }

  v8 = (v0 + *(*v0 + 136));
  v9 = *v8;
  if (*v8)
  {
    v10 = v8[1];

    v9(v11);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v9, v10);
    v12 = *v8;
  }

  else
  {
    v12 = 0;
  }

  v13 = v8[1];
  *v8 = 0;
  v8[1] = 0;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v12, v13);
}

uint64_t __REEventSubscriber.combineIdentifier.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for REEventDispatcher(0, *(a1 + 16), a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for REEventDispatcher<A>, v4);
  return CustomCombineIdentifierConvertible<>.combineIdentifier.getter();
}

uint64_t __REEventSubscriber.init(dispatcher:sourceObject:componentType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[3] = 0;
  a4[4] = result;
  *a4 = a2;
  a4[1] = a3;
  a4[2] = 0;
  return result;
}

uint64_t closure #3 in AnySubscriber.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = type metadata accessor for Mirror.AncestorRepresentation();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = *(v12 + 16);
  v18(v22 - v19, a1, a2, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CustomReflectable_pMd, &_ss17CustomReflectable_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(v23, v25);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    dispatch thunk of CustomReflectable.customMirror.getter();
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    outlined destroy of BodyTrackingComponent?(v23, &_ss17CustomReflectable_pSgMd, &_ss17CustomReflectable_pSgMR);
    (v18)(v15, a1, a2);
    v21 = type metadata accessor for Mirror.DisplayStyle();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    (*(v6 + 104))(v8, *MEMORY[0x1E69E75D8], v5);
    return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
  }
}

uint64_t specialized REEventDispatcher.receive(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - v10 + 40;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v28 - v13 + 40;
  v28[3] = a3;
  v28[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v16 = *(a2 + 64);
  os_unfair_lock_lock(v16 + 4);
  swift_beginAccess();
  v17 = *(a2 + 72);

  os_unfair_lock_unlock(v16 + 4);
  if (v17 && (swift_beginAccess(), (v18 = *(v17 + 16)) != 0))
  {
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = *(v18 + 16);
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGGGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v22 + 24) = v21;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGGGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v23 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v24 = *(v9 + 48);
  while (v24(v14, 1, v8) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v14, v11, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMR);
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v11, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v25 = static Subscribers.Demand.unlimited.getter();

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v25;
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - v10 + 40;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v28 - v13 + 40;
  v28[3] = a3;
  v28[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v16 = *(a2 + 64);
  os_unfair_lock_lock(v16 + 4);
  swift_beginAccess();
  v17 = *(a2 + 72);

  os_unfair_lock_unlock(v16 + 4);
  if (v17 && (swift_beginAccess(), (v18 = *(v17 + 16)) != 0))
  {
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = *(v18 + 16);
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGGGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v22 + 24) = v21;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGGGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v23 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v24 = *(v9 + 48);
  while (v24(v14, 1, v8) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v14, v11, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMR);
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v11, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v25 = static Subscribers.Demand.unlimited.getter();

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v25;
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - v10 + 40;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v28 - v13 + 40;
  v28[3] = a3;
  v28[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v16 = *(a2 + 64);
  os_unfair_lock_lock(v16 + 4);
  swift_beginAccess();
  v17 = *(a2 + 72);

  os_unfair_lock_unlock(v16 + 4);
  if (v17 && (swift_beginAccess(), (v18 = *(v17 + 16)) != 0))
  {
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = *(v18 + 16);
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGGGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v22 + 24) = v21;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGGGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v23 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v24 = *(v9 + 48);
  while (v24(v14, 1, v8) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v14, v11, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMR);
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v11, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v25 = static Subscribers.Demand.unlimited.getter();

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v25;
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - v10 + 40;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v28 - v13 + 40;
  v28[3] = a3;
  v28[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v16 = *(a2 + 64);
  os_unfair_lock_lock(v16 + 4);
  swift_beginAccess();
  v17 = *(a2 + 72);

  os_unfair_lock_unlock(v16 + 4);
  if (v17 && (swift_beginAccess(), (v18 = *(v17 + 16)) != 0))
  {
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = *(v18 + 16);
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGGGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v22 + 24) = v21;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGGGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v23 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v24 = *(v9 + 48);
  while (v24(v14, 1, v8) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v14, v11, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMR);
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v11, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v25 = static Subscribers.Demand.unlimited.getter();

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v25;
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - v10 + 40;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v28 - v13 + 40;
  v28[3] = a3;
  v28[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v16 = *(a2 + 64);
  os_unfair_lock_lock(v16 + 4);
  swift_beginAccess();
  v17 = *(a2 + 72);

  os_unfair_lock_unlock(v16 + 4);
  if (v17 && (swift_beginAccess(), (v18 = *(v17 + 16)) != 0))
  {
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = *(v18 + 16);
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGGGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v22 + 24) = v21;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGGGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v23 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v24 = *(v9 + 48);
  while (v24(v14, 1, v8) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v14, v11, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMR);
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v11, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v25 = static Subscribers.Demand.unlimited.getter();

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v25;
}

uint64_t *specialized REEventDispatcher.init(eventBus:coreHandle:sourceObject:componentType:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v6[8] = v13;
  type metadata accessor for AnySubscriber();
  v6[9] = __RKEntityLookAtCameraAction.reversed()();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  swift_unownedRetain();
  return v6;
}

uint64_t *specialized REEventDispatcher.__allocating_init(eventBus:coreHandle:sourceObject:componentType:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for REEventDispatcher(0, *(v6 + 80), a3, a4);
  swift_allocObject();
  return specialized REEventDispatcher.init(eventBus:coreHandle:sourceObject:componentType:matching:)(a1, a2, a3, a4, a5, a6);
}

uint64_t specialized REEventDispatcher.receive(subscription:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  static Subscribers.Demand.unlimited.getter();
  return dispatch thunk of Subscription.request(_:)();
}

uint64_t type metadata completion function for REEventDispatcher.EventSubscription(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for __REEventSubscriber(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for __REEventSubscriber(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for __REEventSubscriber(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t specialized REEventDispatcher.EventSubscription.handleEvent(sourceObject:payloadRef:)(char *a1)
{
  v41 = a1;
  v39 = *v1;
  v2 = v39;
  v42 = *(v39 + 80);
  v40 = *(v42 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v38 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = v36 - v5;
  v6 = *(v2 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v36 - v9;
  v11 = *(v6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v37 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  v17 = *(v2 + 128);
  swift_beginAccess();
  (*(v8 + 16))(v10, v1 + v17, v7);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  v36[0] = *(v11 + 32);
  v36[1] = v11 + 32;
  (v36[0])(v16, v10, v6);
  v18 = *(*v1 + 144);
  swift_beginAccess();
  v19 = *(v1 + v18);
  static Subscribers.Demand.unlimited.getter();
  result = static Subscribers.Demand.== infix(_:_:)();
  v21 = v16;
  v22 = v42;
  v23 = v11;
  if ((result & 1) == 0)
  {
    if (v19 < 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    if (!v19)
    {
LABEL_21:
      (*(v11 + 8))(v21, v6);
      return 0;
    }
  }

  UnsafeRawPointer.load<A>(fromByteOffset:as:)();
  swift_beginAccess();
  v24 = *(v1 + v18);
  static Subscribers.Demand.unlimited.getter();
  if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
  {
    static Subscribers.Demand.unlimited.getter();
    result = static Subscribers.Demand.== infix(_:_:)();
    if (result)
    {
      v25 = static Subscribers.Demand.unlimited.getter();
LABEL_13:
      *(v1 + v18) = v25;
      goto LABEL_14;
    }

    if ((v24 & 0x8000000000000000) == 0)
    {
      if (v24)
      {
        v25 = v24 - 1;
        goto LABEL_13;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_14:
  swift_endAccess();
  if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
  {
    v35 = v43;
    dispatch thunk of Subscriber.receive(_:)();
    (*(v40 + 8))(v35, v22);
    goto LABEL_21;
  }

  result = specialized static __ServiceLocator.__sharedEngine.getter();
  if (result)
  {
    v26 = *(v11 + 16);
    v27 = v37;
    v26(v37, v21, v6);
    v28 = v40;
    v29 = *(v40 + 16);
    v41 = v21;
    v30 = v38;
    v29(v38, v43, v22);
    v31 = v23;
    v32 = (*(v23 + 80) + 40) & ~*(v23 + 80);
    v33 = (v12 + *(v28 + 80) + v32) & ~*(v28 + 80);
    v34 = swift_allocObject();
    *(v34 + 2) = v22;
    *(v34 + 3) = v6;
    *(v34 + 4) = *(v39 + 96);
    (v36[0])(&v34[v32], v27, v6);
    (*(v28 + 32))(&v34[v33], v30, v22);

    __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in REEventDispatcher.EventSubscription.handleEvent(sourceObject:payloadRef:), v34);

    (*(v28 + 8))(v43, v22);
    (*(v31 + 8))(v41, v6);
    return 0;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #6 in AnySubscriber.init<A>(_:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
}

uint64_t partial apply for closure #5 in AnySubscriber.init<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  result = dispatch thunk of CustomStringConvertible.description.getter();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t one-time initialization function for name()
{
  result = MEMORY[0x1C68F3280](0xD00000000000001ELL, 0x80000001C18E11E0);
  static __RKCustomTriggerNotification.name = result;
  return result;
}

{
  result = MEMORY[0x1C68F3280](0xD000000000000017, 0x80000001C18EC810);
  static __RKEntityCustomAction.RKEntityCustomActionNotification.name = result;
  return result;
}

uint64_t __RKCustomTrigger.__allocating_init(identifier:customArguments:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 32) = a2;
  if (!a3)
  {
    v7 = result;
    a3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    result = v7;
  }

  *(result + 40) = a3;
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t __RKCustomTrigger.init(identifier:customArguments:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  if (!a3)
  {
    a3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  *(v3 + 40) = a3;
  *(v3 + 16) = 0;
  *(v3 + 18) = 0;
  return v3;
}

BOOL __RKCustomTrigger.matches(with:)(uint64_t a1)
{
  type metadata accessor for __RKCustomTrigger();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v1[3] == v2[3] && v1[4] == v2[4];
    if (v3 || (v4 = v2, v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), v2 = v4, (v5 & 1) != 0))
    {
      v6 = v1[5];
      v7 = v2[5];

      v8 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v6, v7);

      if (v8)
      {
        return 1;
      }
    }
  }

  type metadata accessor for __RKEntityTriggerGroup();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  swift_beginAccess();
  v12 = *(v11 + 24);
  if (v12 >> 62)
  {
LABEL_26:
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  do
  {
    v9 = v13 != v14;
    if (v13 == v14)
    {
      break;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1C68F41F0](v14, v12);
      if (__OFADD__(v14, 1))
      {
LABEL_21:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_26;
      }

      v15 = *(v12 + 8 * v14 + 32);

      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }
    }

    v16 = __RKCustomTrigger.matches(with:)(v15);

    ++v14;
  }

  while ((v16 & 1) == 0);

  return v9;
}

double __RKCustomTrigger.__ivar_destroyer()
{

  return result;
}

uint64_t __RKCustomTrigger.deinit()
{

  return v0;
}

uint64_t __RKCustomTrigger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t __RKEntityCustomTrigger.__allocating_init(targetEntity:identifier:customArguments:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 48) = 0;
  swift_beginAccess();
  *(v8 + 48) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  if (!a4)
  {
    a4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  *(v8 + 40) = a4;
  *(v8 + 16) = 0;
  *(v8 + 18) = 0;
  return v8;
}

uint64_t __RKEntityCustomTrigger.init(targetEntity:identifier:customArguments:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *(v4 + 48) = 0;
  swift_beginAccess();
  *(v4 + 48) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  if (!a4)
  {
    a4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  *(v4 + 40) = a4;
  *(v4 + 16) = 0;
  *(v4 + 18) = 0;
  return v4;
}

BOOL __RKEntityCustomTrigger.matches(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v42 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38[-v17];
  type metadata accessor for __RKEntityCustomTrigger();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = v19;
  if ((v2[3] != *(v19 + 24) || v2[4] != *(v19 + 32)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v40 = v7;
  swift_beginAccess();
  if (v2[6])
  {

    Entity.__interactionIdentifier.getter(v18);
  }

  else
  {
    (*(v5 + 56))(v18, 1, 1, v4);
  }

  swift_beginAccess();
  v21 = *(v20 + 48);
  v41 = a1;
  if (v21)
  {

    Entity.__interactionIdentifier.getter(v15);
  }

  else
  {
    (*(v5 + 56))(v15, 1, 1, v4);
  }

  v22 = *(v8 + 48);
  outlined init with copy of UUID?(v18, v10);
  outlined init with copy of UUID?(v15, &v10[v22]);
  v23 = *(v5 + 48);
  if (v23(v10, 1, v4) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v23(&v10[v22], 1, v4) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  outlined init with copy of UUID?(v10, v42);
  if (v23(&v10[v22], 1, v4) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v42, v4);
LABEL_16:
    outlined destroy of BodyTrackingComponent?(v10, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_17:

    goto LABEL_21;
  }

  v24 = v40;
  (*(v5 + 32))(v40, &v10[v22], v4);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v5 + 8);
  v25(v24, v4);
  outlined destroy of BodyTrackingComponent?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of BodyTrackingComponent?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v25(v42, v4);
  outlined destroy of BodyTrackingComponent?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((v39 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  v26 = v2[5];
  v27 = *(v20 + 40);

  v28 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v26, v27);

  if (v28)
  {
    return 1;
  }

LABEL_21:
  type metadata accessor for __RKEntityTriggerGroup();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    return 0;
  }

  v31 = v30;
  swift_beginAccess();
  v32 = *(v31 + 24);
  if (v32 >> 62)
  {
LABEL_38:
    v33 = __CocoaSet.count.getter();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = 0;
  do
  {
    v29 = v33 != v34;
    if (v33 == v34)
    {
      break;
    }

    if ((v32 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x1C68F41F0](v34, v32);
      if (__OFADD__(v34, 1))
      {
LABEL_33:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_38;
      }

      v35 = *(v32 + 8 * v34 + 32);

      if (__OFADD__(v34, 1))
      {
        goto LABEL_33;
      }
    }

    v36 = __RKEntityCustomTrigger.matches(with:)(v35);

    ++v34;
  }

  while ((v36 & 1) == 0);

  return v29;
}

uint64_t __RKEntityCustomTrigger.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[6];
  if (!v5 || *(v5 + 16) != *(a1 + 16))
  {
    return 0;
  }

  v8 = v2[3];
  v7 = v2[4];

  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for __RKEntityCustomTrigger();
  v10 = swift_allocObject();
  *(v10 + 48) = 0;
  swift_beginAccess();
  *(v10 + 48) = a2;
  *(v10 + 24) = v8;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  *(v10 + 16) = 0;
  *(v10 + 18) = 0;

  return v10;
}

uint64_t __RKEntityCustomTrigger.__ivar_destroyer()
{
}

uint64_t __RKEntityCustomTrigger.deinit()
{

  return v0;
}

uint64_t __RKEntityCustomTrigger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static _Proto_EnvironmentalOcclusionReceiverComponent_v1.__fromCore(_:)@<X0>(_BYTE *a2@<X8>)
{
  result = REOcclusionComponentGetEnabled();
  *a2 = result;
  return result;
}

uint64_t RERenderFrameWorkload.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void RERenderFrameWorkload.addScheduledHandler(handler:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  v7[4] = partial apply for closure #1 in RERenderFrameWorkload.addScheduledHandler(handler:);
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ();
  v7[3] = &block_descriptor_13;
  v6 = _Block_copy(v7);

  RERenderFrameWorkloadAddScheduledHandler();
  _Block_release(v6);
}

double block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(unint64_t result, unint64_t a2)
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

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
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

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
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
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
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
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
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
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
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
          v6 = 0;
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
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
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
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
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
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
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
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t PhotogrammetryMetadataHelper.exifDict.getter()
{
  v1 = *(v0 + 16);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v1 + 16))
  {

    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

unint64_t PhotogrammetryMetadataHelper.dateTimeOriginal.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = PhotogrammetryMetadataHelper.exifDict.getter();
  if (!v6)
  {
    return (*(v3 + 56))(a1, 1, 1, v2);
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v7 + 16))
  {
    goto LABEL_36;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_37;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v10, &v77);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return (*(v3 + 56))(a1, 1, 1, v2);
  }

  v14 = v75;
  v13 = v76;
  v15 = PhotogrammetryMetadataHelper.exifDict.getter();
  if (!v15)
  {
LABEL_37:

    return (*(v3 + 56))(a1, 1, 1, v2);
  }

  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v16 + 16))
  {

    goto LABEL_37;
  }

  v73 = v14;
  v74 = v13;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_36:

    goto LABEL_37;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v19, &v77);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v22 = v76;
  v72 = v75;
  v23 = PhotogrammetryMetadataHelper.exifDict.getter();
  if (!v23)
  {
LABEL_41:
    v41 = 808464430;
LABEL_42:
    v42 = 0xE400000000000000;
LABEL_43:
    v43 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v44 = MEMORY[0x1C68F3280](0xD000000000000018, 0x80000001C18E42D0);
    [v43 setDateFormat_];

    v77 = v73;
    v78 = v74;

    MEMORY[0x1C68F3410](v41, v42);

    MEMORY[0x1C68F3410](v72, v22);

    v45 = MEMORY[0x1C68F3280](v77, v78);

    v46 = [v43 dateFromString_];

    if (v46)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(a1, v5, v2);
      return (*(v3 + 56))(a1, 0, 1, v2);
    }

    return (*(v3 + 56))(a1, 1, 1, v2);
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v24 + 16))
  {

    goto LABEL_40;
  }

  v27 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_40:

    goto LABEL_41;
  }

  outlined init with copy of Any(*(v24 + 56) + 32 * v27, &v77);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_41;
  }

  result = v76;
  v31 = HIBYTE(v76) & 0xF;
  v32 = v75 & 0xFFFFFFFFFFFFLL;
  if ((v76 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v76) & 0xF;
  }

  else
  {
    v33 = v75 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    v41 = 808464430;

    goto LABEL_42;
  }

  if ((v76 & 0x1000000000000000) != 0)
  {
    specialized _parseInteger<A, B>(ascii:radix:)(v75, v76, 10);
    v37 = v67;
    v69 = v68;

    if ((v69 & 1) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_41;
  }

  if ((v76 & 0x2000000000000000) == 0)
  {
    if ((v75 & 0x1000000000000000) != 0)
    {
      v34 = ((v76 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v70 = v76;
      v34 = _StringObject.sharedUTF8.getter();
      result = v70;
    }

    v35 = *v34;
    if (v35 == 43)
    {
      if (v32 >= 1)
      {
        v50 = v32 - 1;
        if (v32 != 1)
        {
          v37 = 0;
          if (!v34)
          {
            goto LABEL_88;
          }

          v51 = v34 + 1;
          while (1)
          {
            v52 = *v51 - 48;
            if (v52 > 9)
            {
              break;
            }

            v53 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              break;
            }

            v37 = v53 + v52;
            if (__OFADD__(v53, v52))
            {
              break;
            }

            ++v51;
            if (!--v50)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_87;
      }

      goto LABEL_96;
    }

    if (v35 == 45)
    {
      if (v32 >= 1)
      {
        v36 = v32 - 1;
        if (v32 != 1)
        {
          v37 = 0;
          if (!v34)
          {
            goto LABEL_88;
          }

          v38 = v34 + 1;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              break;
            }

            v37 = v40 - v39;
            if (__OFSUB__(v40, v39))
            {
              break;
            }

            ++v38;
            if (!--v36)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_87;
      }

      __break(1u);
      goto LABEL_95;
    }

    if (v32)
    {
      v37 = 0;
      if (!v34)
      {
        goto LABEL_88;
      }

      while (1)
      {
        v57 = *v34 - 48;
        if (v57 > 9)
        {
          break;
        }

        v58 = 10 * v37;
        if ((v37 * 10) >> 64 != (10 * v37) >> 63)
        {
          break;
        }

        v37 = v58 + v57;
        if (__OFADD__(v58, v57))
        {
          break;
        }

        ++v34;
        if (!--v32)
        {
          goto LABEL_86;
        }
      }
    }

    goto LABEL_87;
  }

  v77 = v75;
  v78 = v76 & 0xFFFFFFFFFFFFFFLL;
  if (v75 != 43)
  {
    if (v75 == 45)
    {
      if (!v31)
      {
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v34 = (v31 - 1);
      if (v31 != 1)
      {
        v37 = 0;
        v47 = &v77 + 1;
        while (1)
        {
          v48 = *v47 - 48;
          if (v48 > 9)
          {
            break;
          }

          v49 = 10 * v37;
          if ((v37 * 10) >> 64 != (10 * v37) >> 63)
          {
            break;
          }

          v37 = v49 - v48;
          if (__OFSUB__(v49, v48))
          {
            break;
          }

          ++v47;
          if (!--v34)
          {
            goto LABEL_88;
          }
        }
      }
    }

    else if (v31)
    {
      v37 = 0;
      v59 = &v77;
      while (1)
      {
        v60 = *v59 - 48;
        if (v60 > 9)
        {
          break;
        }

        v61 = 10 * v37;
        if ((v37 * 10) >> 64 != (10 * v37) >> 63)
        {
          break;
        }

        v37 = v61 + v60;
        if (__OFADD__(v61, v60))
        {
          break;
        }

        v59 = (v59 + 1);
        if (!--v31)
        {
LABEL_86:
          LOBYTE(v34) = 0;
          goto LABEL_88;
        }
      }
    }

LABEL_87:
    v37 = 0;
    LOBYTE(v34) = 1;
LABEL_88:
    LOBYTE(v75) = v34;
    v62 = v34;

    if ((v62 & 1) == 0)
    {
LABEL_89:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v63 = swift_allocObject();
      v64 = MEMORY[0x1E69E6530];
      *(v63 + 16) = xmmword_1C1887600;
      v65 = MEMORY[0x1E69E65A8];
      *(v63 + 56) = v64;
      *(v63 + 64) = v65;
      *(v63 + 32) = v37;
      v41 = String.init(format:_:)();
      v42 = v66;
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (v31)
  {
    v34 = (v31 - 1);
    if (v31 != 1)
    {
      v37 = 0;
      v54 = &v77 + 1;
      while (1)
      {
        v55 = *v54 - 48;
        if (v55 > 9)
        {
          break;
        }

        v56 = 10 * v37;
        if ((v37 * 10) >> 64 != (10 * v37) >> 63)
        {
          break;
        }

        v37 = v56 + v55;
        if (__OFADD__(v56, v55))
        {
          break;
        }

        ++v54;
        if (!--v34)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_87;
  }

LABEL_97:
  __break(1u);
  return result;
}

uint64_t PhotogrammetryMetadataHelper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *specialized Array.subscript.modify(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*specialized Array.subscript.modify(uint64_t (***a1)(), unint64_t a2))(uint64_t result)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    v5 = result;
  }

  a1[1] = v5;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    v5 = result;
  }

  a1[1] = v5;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

  __break(1u);
  return result;
}

uint64_t IKSolverDefinition.rigDefinition.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v1[1];
  a1[1] = v1[2];
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

__n128 IKSolverDefinition.rigDefinition.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];

  *(v1 + 8) = v3;
  *(v1 + 16) = a1->n128_u64[1];
  result = a1[1];
  v5 = a1[2];
  *(v1 + 24) = result;
  *(v1 + 40) = v5;
  return result;
}

__n128 IKSolverDefinition.init(id:rig:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 56) = xmmword_1C1887610;
  *(a3 + 80) = xmmword_1C1887610;
  *(a3 + 16) = a2->n128_u64[1];
  result = a2[1];
  v4 = a2[2];
  *(a3 + 24) = result;
  v5 = a2->n128_u64[0];
  *(a3 + 72) = 6;
  *(a3 + 96) = 6;
  *a3 = a1;
  *(a3 + 8) = v5;
  *(a3 + 40) = v4;
  return result;
}

uint64_t IKSolverDefinition.init(asset:index:)@<X0>(uint64_t a3@<X8>)
{
  *(a3 + 56) = xmmword_1C1887610;
  *(a3 + 72) = 6;
  *(a3 + 80) = xmmword_1C1887610;
  *(a3 + 96) = 6;
  *a3 = REIkRigAssetGetDefinitionSolverID();
  DefinitionRig = REIkRigAssetGetDefinitionRig();
  v5 = MEMORY[0x1C68F53F0]();
  v6 = MEMORY[0x1C68F5400](DefinitionRig);
  v7 = MEMORY[0x1C68F53E0](DefinitionRig);
  v8._rawValue = MEMORY[0x1E69E7CC0];
  IKRig.JointCollection.init(_:)(MEMORY[0x1E69E7CC0], &v19);
  v18 = v19;
  IKRig.ConstraintsCollection.init(_:)(v8);
  v9 = v19;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 20) = v7;
  *(a3 + 24) = v18;
  *(a3 + 40) = v9;
  REIkRigAssetGetDefinitionSourceTarget();
  v10 = String.init(cString:)();
  static InternalBindPath.targetFromPath(_:)(v10, v11, &v19);

  v12 = v19;
  v13 = v20;
  outlined consume of BindTarget(*(a3 + 56), *(a3 + 64), *(a3 + 72));
  *(a3 + 56) = v12;
  *(a3 + 72) = v13;
  REIkRigAssetGetDefinitionOutputTarget();
  v14 = String.init(cString:)();
  static InternalBindPath.targetFromPath(_:)(v14, v15, &v19);

  v16 = v19;
  LOBYTE(v8._rawValue) = v20;
  result = outlined consume of BindTarget(*(a3 + 80), *(a3 + 88), *(a3 + 96));
  *(a3 + 80) = v16;
  *(a3 + 96) = v8._rawValue;
  return result;
}

uint64_t IKRig.joints.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

__n128 IKRig.joints.setter(__n128 *a1)
{

  result = *a1;
  v1[1] = *a1;
  return result;
}

uint64_t IKRig.constraints.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

__n128 IKRig.constraints.setter(__n128 *a1)
{

  result = *a1;
  v1[2] = *a1;
  return result;
}

unint64_t IKRig.init(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_14:
    IKRig.JointCollection.init(_:)(v6, &v33);
    v30 = v33;
    result = IKRig.ConstraintsCollection.init(_:)(MEMORY[0x1E69E7CC0]).storage._rawValue;
    v20 = v33;
    *v2 = 120;
    __asm { FMOV            V1.2S, #1.0 }

    *(v2 + 8) = _D1;
    *(v2 + 16) = v30;
    *(v2 + 32) = v20;
    return result;
  }

  v34 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v6 = v34;
  v7 = v4 - 1;
  for (i = (v3 + 160); ; i += 9)
  {
    v9 = *(i - 16);
    v10 = *(i - 15);
    v28 = *(i - 1);
    v29 = *(i - 2);
    v27 = *i;
    if (*(i - 104))
    {
      v32 = 1;

      result = 0;
      goto LABEL_8;
    }

    v11 = *(i - 14);
    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *(v3 + 16))
    {
      goto LABEL_16;
    }

    v12 = (v3 + 32 + 144 * v11);
    v14 = *v12;
    v13 = v12[1];
    *&v33 = v14;
    *(&v33 + 1) = v13;
    lazy protocol witness table accessor for type String and conformance String();

    result = StringProtocol.hash.getter();
    v32 = 0;
LABEL_8:
    v34 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      v19 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      result = v19;
      v6 = v34;
    }

    *(v6 + 16) = v16 + 1;
    v17 = v6 + 176 * v16;
    *(v17 + 32) = v9;
    *(v17 + 40) = v10;
    *(v17 + 48) = result;
    *(v17 + 56) = v32;
    *(v17 + 57) = *v31;
    *(v17 + 60) = *&v31[3];
    *(v17 + 64) = v29;
    *(v17 + 80) = v28;
    *(v17 + 96) = v27;
    *(v17 + 112) = 1;
    v18 = v33;
    *(v17 + 120) = *(&v33 + 7);
    *(v17 + 113) = v18;
    *(v17 + 128) = xmmword_1C1887620;
    *(v17 + 144) = 0;
    *(v17 + 152) = 0;
    *(v17 + 160) = 0x300000000;
    *(v17 + 200) = 0;
    *(v17 + 184) = 0u;
    *(v17 + 168) = 0u;
    if (!v7)
    {

      v2 = a2;
      goto LABEL_14;
    }

    --v7;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

__n128 IKRig.Joint.init(name:parentID:restTransform:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>)
{
  v10 = *a3;
  v11 = *(a3 + 8);
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 80) = 1;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of IKRig.Joint.init(name:parentID:restTransform:));
  *(a4 + 96) = v12;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *(a4 + 128) = 0x300000000;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = a5;
  *(a4 + 48) = a6;
  result = a7;
  *(a4 + 64) = a7;
  return result;
}

void IKRig.JointCollection.init(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v3 = a2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v58 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v30 = *(v2 + 16);
    if (!v30)
    {
LABEL_14:
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      return;
    }

    v6 = 0;
    v5 = v58;
    v31 = v4 - 1;
    v32 = v2;
    v7 = 32;
    while (1)
    {
      v8 = *(v2 + v7 + 144);
      v9 = *(v2 + v7 + 112);
      v43 = *(v2 + v7 + 128);
      v44 = v8;
      v10 = *(v2 + v7 + 144);
      v45 = *(v2 + v7 + 160);
      v11 = *(v2 + v7 + 80);
      v12 = *(v2 + v7 + 48);
      v39 = *(v2 + v7 + 64);
      v40 = v11;
      v13 = *(v2 + v7 + 112);
      v14 = *(v2 + v7 + 80);
      v41 = *(v2 + v7 + 96);
      v42 = v13;
      v15 = *(v2 + v7 + 16);
      v36[0] = *(v2 + v7);
      v36[1] = v15;
      v16 = *(v2 + v7 + 48);
      v18 = *(v2 + v7);
      v17 = *(v2 + v7 + 16);
      v37 = *(v2 + v7 + 32);
      v38 = v16;
      *&v35[104] = v41;
      *&v35[88] = v14;
      *&v35[72] = v39;
      *&v35[56] = v12;
      *&v35[168] = *(v2 + v7 + 160);
      *&v35[152] = v10;
      *&v35[136] = v43;
      *&v35[120] = v9;
      *&v35[8] = v18;
      *&v35[24] = v17;
      *&v35[40] = v37;
      v46 = v6;
      v52 = *&v35[96];
      v53 = *&v35[112];
      v50 = *&v35[64];
      v51 = *&v35[80];
      v57 = *&v35[176];
      v55 = *&v35[144];
      v56 = *&v35[160];
      v54 = *&v35[128];
      v48 = *&v35[32];
      v49 = *&v35[48];
      *v47 = *v35;
      *&v47[16] = *&v35[16];
      v34 = *&v47[8];
      outlined init with copy of IKRig.Joint(v36, v33);
      lazy protocol witness table accessor for type String and conformance String();
      v19 = StringProtocol.hash.getter();
      outlined destroy of BodyTrackingComponent?(&v46, &_sSi6offset_17RealityFoundation5IKRigV5JointV7elementtMd, &_sSi6offset_17RealityFoundation5IKRigV5JointV7elementtMR);
      v20 = v46;
      v58 = v5;
      v22 = *(v5 + 16);
      v21 = *(v5 + 24);
      v23 = v5;
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v23 = v58;
      }

      *(v23 + 16) = v22 + 1;
      v24 = v23 + 16 * v22;
      *(v24 + 32) = v19;
      *(v24 + 40) = v20;
      v5 = v23;
      if (v31 == v6)
      {
        break;
      }

      ++v6;
      v7 += 176;
      v2 = v32;
      if (v30 == v6)
      {
        goto LABEL_14;
      }
    }

    v2 = v32;

    v3 = a2;
  }

  if (*(v5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation5IKRigV5JointV2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation5IKRigV5JointV2IDVSiGMR);
    v25 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC8];
  }

  v46 = v25;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v27, v26, 1, &v46);

  v28 = v46;
  *v3 = v2;
  v3[1] = v28;
}

double IKRig.ConstraintsCollection.init(arrayLiteral:)@<D0>(Swift::OpaquePointer a1@<X0>, _OWORD *a2@<X8>)
{
  IKRig.ConstraintsCollection.init(_:)(a1);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t IKRig.Joint.id.getter@<X0>(uint64_t *a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();
  result = StringProtocol.hash.getter();
  *a1 = result;
  return result;
}

uint64_t IKRig.Joint.name.getter()
{
  v1 = *v0;

  return v1;
}

void IKRig.Joint.parentID.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t IKRig.Joint.parentID.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void IKRig.Joint.restTransform.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
}

__n128 IKRig.Joint.limits.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 16) = v2;
  result = *(v1 + 160);
  *(a1 + 32) = result;
  return result;
}

__n128 IKRig.Joint.limits.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v2;
  result = *(a1 + 32);
  *(v1 + 160) = result;
  return result;
}

Swift::Int IKRig.Joint.LimitsDefinition.Axis.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

__n128 IKRig.Joint.LimitsDefinition.init(weight:boneAxis:minimumAngles:maximumAngles:)@<Q0>(unsigned __int8 *a1@<X0>, __n128 *a2@<X8>, float a3@<S0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  v7 = *a1;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of IKRig.Joint.LimitsDefinition.init(weight:boneAxis:minimumAngles:maximumAngles:));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of IKRig.Joint.LimitsDefinition.init(weight:boneAxis:minimumAngles:maximumAngles:));
  a2->n128_f32[0] = a3;
  a2->n128_u8[4] = v7;
  result = a5;
  a2[1] = a4;
  a2[2] = a5;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance IKRig.Joint@<X0>(uint64_t *a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();
  result = StringProtocol.hash.getter();
  *a1 = result;
  return result;
}

uint64_t IKRig.Constraint.id.getter@<X0>(uint64_t *a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();
  result = StringProtocol.hash.getter();
  *a1 = result;
  return result;
}

uint64_t IKRig.Constraint.name.getter()
{
  v1 = *v0;

  return v1;
}

void IKRig.Constraint.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t IKRig.Constraint.jointName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void IKRig.Constraint.jointName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void IKRig.Constraint.offset.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
}

__n128 IKRig.Constraint.positionDemand.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 80);
  v3 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 IKRig.Constraint.positionDemand.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v3;
  return result;
}

__n128 IKRig.Constraint.orientationDemand.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 112);
  *(a1 + 16) = v2;
  result = *(v1 + 144);
  *(a1 + 32) = result;
  return result;
}

__n128 IKRig.Constraint.orientationDemand.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v2;
  result = *(a1 + 32);
  *(v1 + 144) = result;
  return result;
}

uint64_t IKRig.Constraint.IKPositionDemand.init()@<X0>(uint64_t a1@<X8>)
{
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of IKRig.Constraint.IKPositionDemand.init());
  *a1 = 0;
  *(a1 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 16) = v3;
  return result;
}

Swift::Int IKRig.Constraint.IKPositionDemand.Mode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t IKRig.Constraint.IKOrientationDemand.init()@<X0>(uint64_t a1@<X8>)
{
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of IKRig.Constraint.IKOrientationDemand.init());
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 32) = v3;
  return result;
}

__n128 IKRig.Constraint.IKOrientationDemand.mode.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 IKRig.Constraint.IKOrientationDemand.mode.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

uint64_t static IKRig.Constraint.point(named:on:positionWeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static IKRig.Constraint.point(named:on:positionWeight:));
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v11 = xmmword_1EBEB2BB0;
  v12 = xmmword_1EBEB2BC0;
  *(a5 + 32) = static Transform.identity;
  *(a5 + 48) = v11;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 64) = v12;
  *(a5 + 80) = xmmword_1C189F1A0;
  *(a5 + 96) = a6;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 128) = 255;
  *(a5 + 136) = 0;
  *(a5 + 144) = 0;
  *(a5 + 152) = 0;
}

uint64_t static IKRig.Constraint.orient(named:on:orientationWeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static IKRig.Constraint.orient(named:on:orientationWeight:));
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v11 = xmmword_1EBEB2BB0;
  v12 = xmmword_1EBEB2BC0;
  *(a5 + 32) = static Transform.identity;
  *(a5 + 48) = v11;
  *(a5 + 64) = v12;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 80) = 2;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0;
  *(a5 + 128) = xmmword_1C18ABEC0;
  *(a5 + 144) = a6;
}

uint64_t static IKRig.Constraint.parent(named:on:positionWeight:orientationWeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static IKRig.Constraint.parent(named:on:positionWeight:orientationWeight:));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of static IKRig.Constraint.parent(named:on:positionWeight:orientationWeight:));
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v12 = xmmword_1EBEB2BB0;
  v13 = xmmword_1EBEB2BC0;
  *(a5 + 32) = static Transform.identity;
  *(a5 + 48) = v12;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 64) = v13;
  *(a5 + 80) = xmmword_1C189F1A0;
  *(a5 + 96) = a6;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 128) = xmmword_1C18ABEC0;
  *(a5 + 144) = a7;
}

uint64_t static IKRig.Constraint.lookAtAdditive(named:on:lookingAlong:orientationWeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, __n128 a7@<Q0>, __n128 a8@<Q1>, __n128 a9@<Q2>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(a5);
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v14 = xmmword_1EBEB2BB0;
  v15 = xmmword_1EBEB2BC0;
  *(a6 + 32) = static Transform.identity;
  *(a6 + 48) = v14;
  *(a6 + 64) = v15;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 80) = 2;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  *(a6 + 104) = 0;
  *(a6 + 112) = a7;
  *(a6 + 128) = a9;
  *(a6 + 144) = a8;
}

void IKRig.JointCollection.subscript.getter(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  if (*(v4 + 16) && (v5 = *v2, v6 = specialized __RawDictionaryStorage.find<A>(_:)(), (v7 & 1) != 0))
  {
    v8 = *(*(v4 + 56) + 8 * v6);
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *(v5 + 16))
    {
      v9 = (v5 + 176 * v8);
      v10 = v9[2];
      v11 = v9[4];
      v29[1] = v9[3];
      v29[2] = v11;
      v29[0] = v10;
      v12 = v9[5];
      v13 = v9[6];
      v14 = v9[8];
      v29[5] = v9[7];
      v29[6] = v14;
      v29[3] = v12;
      v29[4] = v13;
      v15 = v9[9];
      v16 = v9[10];
      v17 = v9[12];
      v29[9] = v9[11];
      v29[10] = v17;
      v29[7] = v15;
      v29[8] = v16;
      memmove(&__dst, v9 + 2, 0xB0uLL);
      destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
      v18 = v39;
      a1[8] = v38;
      a1[9] = v18;
      a1[10] = v40;
      v19 = v35;
      a1[4] = v34;
      a1[5] = v19;
      v20 = v37;
      a1[6] = v36;
      a1[7] = v20;
      v21 = v31;
      *a1 = __dst;
      a1[1] = v21;
      v22 = v33;
      a1[2] = v32;
      a1[3] = v22;
      outlined init with copy of IKRig.Joint(v29, &v28);
      return;
    }

    __break(1u);
  }

  else
  {
    _s17RealityFoundation5IKRigV5JointVSgWOi0_(&__dst);
    v23 = v39;
    a1[8] = v38;
    a1[9] = v23;
    a1[10] = v40;
    v24 = v35;
    a1[4] = v34;
    a1[5] = v24;
    v25 = v37;
    a1[6] = v36;
    a1[7] = v25;
    v26 = v31;
    *a1 = __dst;
    a1[1] = v26;
    v27 = v33;
    a1[2] = v32;
    a1[3] = v27;
  }
}

{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.hash.getter();
  IKRig.JointCollection.subscript.getter(a1);
}

uint64_t IKRig.JointCollection.subscript.setter(_OWORD *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v47 = a1[8];
  v48 = v5;
  v6 = a1[9];
  v49 = a1[10];
  v7 = a1[3];
  v8 = a1[5];
  v43 = a1[4];
  v44 = v8;
  v9 = a1[5];
  v10 = a1[7];
  v45 = a1[6];
  v46 = v10;
  v11 = a1[1];
  v40[0] = *a1;
  v40[1] = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  v41 = a1[2];
  v42 = v12;
  v58 = v47;
  v59 = v6;
  v60 = a1[10];
  v54 = v43;
  v55 = v9;
  v56 = v45;
  v57 = v4;
  v50 = v14;
  v51 = v13;
  v15 = *a2;
  v52 = v41;
  v53 = v7;
  result = getEnumTag for EnvironmentResource.OptionError(&v50);
  if (result != 1)
  {
    v39[0] = v50;
    lazy protocol witness table accessor for type String and conformance String();
    if (StringProtocol.hash.getter() == v15)
    {
      v17 = v2[1];
      if (*(v17 + 16))
      {
        v18 = specialized __RawDictionaryStorage.find<A>(_:)();
        if (v19)
        {
          v20 = *(*(v17 + 56) + 8 * v18);
          v21 = *v3;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if ((v20 & 0x8000000000000000) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
            v21 = result;
            if ((v20 & 0x8000000000000000) == 0)
            {
LABEL_7:
              if (v20 < *(v21 + 16))
              {
                v22 = (v21 + 176 * v20);
                v23 = v22[2];
                v24 = v22[4];
                v39[1] = v22[3];
                v39[2] = v24;
                v39[0] = v23;
                v25 = v22[5];
                v26 = v22[6];
                v27 = v22[8];
                v39[5] = v22[7];
                v39[6] = v27;
                v39[3] = v25;
                v39[4] = v26;
                v28 = v22[9];
                v29 = v22[10];
                v30 = v22[12];
                v39[9] = v22[11];
                v39[10] = v30;
                v39[7] = v28;
                v39[8] = v29;
                v31 = v50;
                v32 = v52;
                v22[3] = v51;
                v22[4] = v32;
                v22[2] = v31;
                v33 = v53;
                v34 = v54;
                v35 = v56;
                v22[7] = v55;
                v22[8] = v35;
                v22[5] = v33;
                v22[6] = v34;
                v36 = v57;
                v37 = v58;
                v38 = v60;
                v22[11] = v59;
                v22[12] = v38;
                v22[9] = v36;
                v22[10] = v37;
                result = outlined destroy of IKRig.Joint(v39);
                *v3 = v21;
                return result;
              }

              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_13:
          __break(1u);
          return result;
        }
      }
    }

    return outlined destroy of BodyTrackingComponent?(v40, &_s17RealityFoundation5IKRigV5JointVSgMd, &_s17RealityFoundation5IKRigV5JointVSgMR);
  }

  return result;
}

void (*IKRig.JointCollection.subscript.modify(uint64_t *a1, void *a2))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x2D0uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 704) = v2;
  *(v5 + 712) = *a2;
  v7 = v2[1];
  if (!*(v7 + 16) || (v8 = *v2, result = specialized __RawDictionaryStorage.find<A>(_:)(), (v10 & 1) == 0))
  {
    _s17RealityFoundation5IKRigV5JointVSgWOi0_(v6);
    return IKRig.JointCollection.subscript.modify;
  }

  v11 = *(*(v7 + 56) + 8 * result);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v8 + 16))
  {
    v12 = (v8 + 176 * v11);
    v13 = v12[2];
    v14 = v12[4];
    v6[23] = v12[3];
    v6[24] = v14;
    v6[22] = v13;
    v15 = v12[5];
    v16 = v12[6];
    v17 = v12[8];
    v6[27] = v12[7];
    v6[28] = v17;
    v6[25] = v15;
    v6[26] = v16;
    v18 = v12[9];
    v19 = v12[10];
    v20 = v12[12];
    v6[31] = v12[11];
    v6[32] = v20;
    v6[29] = v18;
    v6[30] = v19;
    memmove(v6 + 11, v12 + 2, 0xB0uLL);
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    v21 = v6[20];
    v6[8] = v6[19];
    v6[9] = v21;
    v6[10] = v6[21];
    v22 = v6[16];
    v6[4] = v6[15];
    v6[5] = v22;
    v23 = v6[18];
    v6[6] = v6[17];
    v6[7] = v23;
    v24 = v6[12];
    *v6 = v6[11];
    v6[1] = v24;
    v25 = v6[14];
    v6[2] = v6[13];
    v6[3] = v25;
    outlined init with copy of IKRig.Joint((v6 + 22), (v6 + 33));
    return IKRig.JointCollection.subscript.modify;
  }

  __break(1u);
  return result;
}

void IKRig.JointCollection.subscript.modify(__int128 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[7];
    v5 = v2[8];
    v4 = v2[9];
    v2[30] = v5;
    v2[31] = v4;
    v6 = v2[9];
    v2[32] = v2[10];
    v7 = v2[3];
    v9 = v2[4];
    v8 = v2[5];
    v2[26] = v9;
    v2[27] = v8;
    v10 = v2[5];
    v12 = v2[6];
    v11 = v2[7];
    v2[28] = v12;
    v2[29] = v11;
    v13 = v2[1];
    v2[22] = *v2;
    v2[23] = v13;
    v14 = v2[3];
    v16 = *v2;
    v15 = v2[1];
    v17 = v2[2];
    v2[24] = v17;
    v2[25] = v14;
    v38 = v5;
    v39 = v6;
    v40 = v2[10];
    v34 = v9;
    v35 = v10;
    v36 = v12;
    v37 = v3;
    v30 = v16;
    v31 = v15;
    v18 = *(v2 + 89);
    v32 = v17;
    v33 = v7;
    v41 = v18;
    outlined init with copy of [String : String]((v2 + 22), (v2 + 33), &_s17RealityFoundation5IKRigV5JointVSgMd, &_s17RealityFoundation5IKRigV5JointVSgMR);
    IKRig.JointCollection.subscript.setter(&v30, &v41);
    v19 = v2[9];
    v2[19] = v2[8];
    v2[20] = v19;
    v2[21] = v2[10];
    v20 = v2[5];
    v2[15] = v2[4];
    v2[16] = v20;
    v21 = v2[7];
    v2[17] = v2[6];
    v2[18] = v21;
    v22 = v2[1];
    v2[11] = *v2;
    v2[12] = v22;
    v23 = v2[3];
    v2[13] = v2[2];
    v2[14] = v23;
    outlined destroy of BodyTrackingComponent?((v2 + 11), &_s17RealityFoundation5IKRigV5JointVSgMd, &_s17RealityFoundation5IKRigV5JointVSgMR);
  }

  else
  {
    v24 = *(v2 + 89);
    v25 = v2[9];
    v38 = v2[8];
    v39 = v25;
    v40 = v2[10];
    v26 = v2[5];
    v34 = v2[4];
    v35 = v26;
    v27 = v2[7];
    v36 = v2[6];
    v37 = v27;
    v28 = v2[1];
    v30 = *v2;
    v31 = v28;
    v29 = v2[3];
    v32 = v2[2];
    v33 = v29;
    v41 = v24;
    IKRig.JointCollection.subscript.setter(&v30, &v41);
  }

  free(v2);
}

__n128 key path getter for IKRig.JointCollection.subscript(_:) : IKRig.JointCollection@<Q0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  *&v10[0] = *a1;
  *(&v10[0] + 1) = v3;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.hash.getter();
  IKRig.JointCollection.subscript.getter(v10);
  v4 = v10[7];
  v5 = v10[9];
  v6 = v10[10];
  *(a2 + 128) = v10[8];
  *(a2 + 144) = v5;
  *(a2 + 160) = v6;
  v7 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v7;
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v4;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  result = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t key path setter for IKRig.JointCollection.subscript(_:) : IKRig.JointCollection(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a1[9];
  v22 = a1[8];
  v23 = v5;
  v24 = a1[10];
  v6 = a1[5];
  v18 = a1[4];
  v19 = v6;
  v7 = a1[7];
  v20 = a1[6];
  v21 = v7;
  v8 = a1[1];
  v14 = *a1;
  v15 = v8;
  v9 = a1[3];
  v16 = a1[2];
  v17 = v9;
  v13[0] = v3;
  v13[1] = v4;
  outlined init with copy of [String : String](&v14, v12, &_s17RealityFoundation5IKRigV5JointVSgMd, &_s17RealityFoundation5IKRigV5JointVSgMR);
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.hash.getter();
  v12[8] = v22;
  v12[9] = v23;
  v12[10] = v24;
  v12[4] = v18;
  v12[5] = v19;
  v12[6] = v20;
  v12[7] = v21;
  v12[0] = v14;
  v12[1] = v15;
  v12[2] = v16;
  v12[3] = v17;
  v13[0] = v10;
  return IKRig.JointCollection.subscript.setter(v12, v13);
}

uint64_t IKRig.JointCollection.subscript.setter(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6[1] = a3;
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.hash.getter();

  v6[0] = v4;
  return IKRig.JointCollection.subscript.setter(a1, v6);
}

void (*IKRig.JointCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x2F0uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[92] = v3;
  v7[91] = a3;
  v7[90] = a2;
  v10 = *v3;
  v9 = v3[1];
  v7[22] = a2;
  v7[23] = a3;
  v11 = v7 + 22;
  v7[93] = lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.hash.getter();
  if (!*(v9 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(), (v13 & 1) == 0))
  {
    _s17RealityFoundation5IKRigV5JointVSgWOi0_(v8);
    return IKRig.JointCollection.subscript.modify;
  }

  v14 = *(*(v9 + 56) + 8 * result);
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *(v10 + 16))
  {
    v15 = (v10 + 176 * v14);
    v16 = v15[2];
    v17 = v15[4];
    v11[12] = v15[3];
    v11[13] = v17;
    v11[11] = v16;
    v18 = v15[5];
    v19 = v15[6];
    v20 = v15[8];
    v11[16] = v15[7];
    v11[17] = v20;
    v11[14] = v18;
    v11[15] = v19;
    v21 = v15[9];
    v22 = v15[10];
    v23 = v15[12];
    v11[20] = v15[11];
    v11[21] = v23;
    v11[18] = v21;
    v11[19] = v22;
    memmove(v11, v15 + 2, 0xB0uLL);
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    v24 = v11[9];
    v8[8] = v11[8];
    v8[9] = v24;
    v8[10] = v11[10];
    v25 = v11[5];
    v8[4] = v11[4];
    v8[5] = v25;
    v26 = v11[7];
    v8[6] = v11[6];
    v8[7] = v26;
    v27 = v11[1];
    *v8 = *v11;
    v8[1] = v27;
    v28 = v11[3];
    v8[2] = v11[2];
    v8[3] = v28;
    outlined init with copy of IKRig.Joint((v11 + 11), (v11 + 22));
    return IKRig.JointCollection.subscript.modify;
  }

  __break(1u);
  return result;
}

void IKRig.JointCollection.subscript.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 91);
  v4 = *(*a1 + 90);
  v5 = *(*a1 + 9);
  if (a2)
  {
    *(v2 + 30) = *(v2 + 8);
    *(v2 + 31) = v5;
    *(v2 + 32) = *(v2 + 10);
    v6 = *(v2 + 5);
    *(v2 + 26) = *(v2 + 4);
    *(v2 + 27) = v6;
    v7 = *(v2 + 7);
    *(v2 + 28) = *(v2 + 6);
    *(v2 + 29) = v7;
    v8 = *(v2 + 1);
    *(v2 + 22) = *v2;
    *(v2 + 23) = v8;
    v9 = *(v2 + 3);
    *(v2 + 24) = *(v2 + 2);
    *(v2 + 25) = v9;
    v2[88] = v4;
    v2[89] = v3;
    outlined init with copy of [String : String]((v2 + 44), (v2 + 66), &_s17RealityFoundation5IKRigV5JointVSgMd, &_s17RealityFoundation5IKRigV5JointVSgMR);
    v10 = StringProtocol.hash.getter();
    v11 = *(v2 + 31);
    v33 = *(v2 + 30);
    v34 = v11;
    v35 = *(v2 + 32);
    v12 = *(v2 + 27);
    v29 = *(v2 + 26);
    v30 = v12;
    v13 = *(v2 + 29);
    v31 = *(v2 + 28);
    v32 = v13;
    v14 = *(v2 + 23);
    v25 = *(v2 + 22);
    v26 = v14;
    v15 = *(v2 + 25);
    v27 = *(v2 + 24);
    v28 = v15;
    v36 = v10;
    IKRig.JointCollection.subscript.setter(&v25, &v36);
    v16 = *(v2 + 9);
    *(v2 + 19) = *(v2 + 8);
    *(v2 + 20) = v16;
    *(v2 + 21) = *(v2 + 10);
    v17 = *(v2 + 5);
    *(v2 + 15) = *(v2 + 4);
    *(v2 + 16) = v17;
    v18 = *(v2 + 7);
    *(v2 + 17) = *(v2 + 6);
    *(v2 + 18) = v18;
    v19 = *(v2 + 1);
    *(v2 + 11) = *v2;
    *(v2 + 12) = v19;
    v20 = *(v2 + 3);
    *(v2 + 13) = *(v2 + 2);
    *(v2 + 14) = v20;
    outlined destroy of BodyTrackingComponent?((v2 + 22), &_s17RealityFoundation5IKRigV5JointVSgMd, &_s17RealityFoundation5IKRigV5JointVSgMR);
  }

  else
  {
    v33 = *(v2 + 8);
    v34 = v5;
    v35 = *(v2 + 10);
    v21 = *(v2 + 5);
    v29 = *(v2 + 4);
    v30 = v21;
    v22 = *(v2 + 7);
    v31 = *(v2 + 6);
    v32 = v22;
    v23 = *(v2 + 1);
    v25 = *v2;
    v26 = v23;
    v24 = *(v2 + 3);
    v27 = *(v2 + 2);
    v28 = v24;
    v2[22] = v4;
    v2[23] = v3;
    v36 = StringProtocol.hash.getter();
    IKRig.JointCollection.subscript.setter(&v25, &v36);
  }

  free(v2);
}

uint64_t IKRig.JointCollection.buildChildrenMap()()
{
  v1 = v0;
  v2 = *v0;
  v3 = _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5Tf4gn_n(MEMORY[0x1E69E7CC0], *(*v0 + 16));
  v4 = *(v2 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = v2 + 32;
    do
    {
      v32 = v3;
      v8 = (v7 + 176 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v10 = *v8;
        v11 = v8[2];
        v35[1] = v8[1];
        v35[2] = v11;
        v35[0] = v10;
        v12 = v8[3];
        v13 = v8[4];
        v14 = v8[6];
        v35[5] = v8[5];
        v35[6] = v14;
        v35[3] = v12;
        v35[4] = v13;
        v15 = v8[7];
        v16 = v8[8];
        v17 = v8[10];
        v35[9] = v8[9];
        v35[10] = v17;
        v35[7] = v15;
        v35[8] = v16;
        *&v34[104] = v8[6];
        *&v34[88] = v8[5];
        *&v34[72] = v8[4];
        *&v34[56] = v8[3];
        *&v34[168] = v8[10];
        *&v34[152] = v8[9];
        *&v34[136] = v8[8];
        *&v34[120] = v8[7];
        *&v34[8] = *v8;
        *&v34[24] = v8[1];
        *&v34[40] = v8[2];
        v36 = v9;
        v39 = *&v34[32];
        v40 = *&v34[48];
        v43 = *&v34[96];
        v44 = *&v34[112];
        v41 = *&v34[64];
        v42 = *&v34[80];
        v48 = *&v34[176];
        v46 = *&v34[144];
        v47 = *&v34[160];
        v45 = *&v34[128];
        v37 = *v34;
        v38 = *&v34[16];
        if ((v34[32] & 1) == 0)
        {
          v18 = v1[1];
          if (*(v18 + 16))
          {
            v19 = specialized __RawDictionaryStorage.find<A>(_:)();
            if (v20)
            {
              break;
            }
          }
        }

        outlined init with copy of IKRig.Joint(v35, v34);
        result = outlined destroy of BodyTrackingComponent?(&v36, &_sSi6offset_17RealityFoundation5IKRigV5JointV7elementtMd, &_sSi6offset_17RealityFoundation5IKRigV5JointV7elementtMR);
        ++v9;
        v8 += 11;
        if (v4 == v9)
        {
          v3 = v32;
          goto LABEL_21;
        }
      }

      v21 = *(*(v18 + 56) + 8 * v19);
      outlined init with copy of IKRig.Joint(v35, v34);
      v22 = v32;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
      v22 = result;
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v21 >= *(v22 + 16))
      {
        goto LABEL_24;
      }

      v33 = v22;
      v23 = v22 + 32;
      v31 = *(v23 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v31;
      v30 = v23;
      *(v23 + 8 * v21) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1, v31);
        *(v23 + 8 * v21) = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25);
        v28 = v27 + 1;
        v25 = v29;
        *(v30 + 8 * v21) = v29;
      }

      v6 = v9 + 1;
      *(v25 + 2) = v28;
      *&v25[8 * v27 + 32] = v9;
      result = outlined destroy of BodyTrackingComponent?(&v36, &_sSi6offset_17RealityFoundation5IKRigV5JointV7elementtMd, &_sSi6offset_17RealityFoundation5IKRigV5JointV7elementtMR);
      v7 = v2 + 32;
      v3 = v33;
    }

    while (v4 - 1 != v9);
  }

LABEL_21:

  return v3;
}

void IKRig.JointCollection.forEach(descendantOf:inclusive:update:)(uint64_t a1, uint64_t a2, char *a3, void (*a4)(char *), uint64_t a5)
{
  v6 = v5;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.hash.getter();
  v10 = *(v5 + 8);
  if (!*(v10 + 16))
  {
    return;
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v12 & 1) == 0)
  {
    return;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  if ((a3 & 1) == 0)
  {
    v14 = IKRig.JointCollection.buildChildrenMap()();
    if (v13 < 0)
    {
      goto LABEL_108;
    }

    goto LABEL_9;
  }

  a3 = *v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_121;
  }

  if (v13 < 0)
  {
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    return;
  }

  while (1)
  {
    if (v13 >= *(a3 + 2))
    {
      goto LABEL_123;
    }

    a4(&a3[176 * v13 + 32]);
    *v6 = a3;
    v14 = IKRig.JointCollection.buildChildrenMap()();
LABEL_9:
    a3 = v14;
    if (v13 < *(v14 + 2))
    {
      break;
    }

LABEL_109:
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
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
    if (v13 < 0)
    {
      goto LABEL_122;
    }
  }

  v70 = v14 + 32;
  v15 = *&v14[8 * v13 + 32];
  v55 = *(v15 + 16);
  if (!v55)
  {
    goto LABEL_90;
  }

  v60 = v15 + 32;

  v16 = 0;
  v48 = v15;
  while (1)
  {
    if (v16 >= *(v15 + 16))
    {
      goto LABEL_110;
    }

    v54 = v16;
    v17 = *(v60 + 8 * v16);
    v13 = *v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      if ((v17 & 0x8000000000000000) != 0)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }
    }

    if (v17 >= *(v13 + 16))
    {
      goto LABEL_111;
    }

    a4((v13 + 176 * v17 + 32));
    *v6 = v13;
    if (v17 >= *(a3 + 2))
    {
      goto LABEL_112;
    }

    v18 = *&v70[8 * v17];
    v53 = *(v18 + 16);
    if (v53)
    {
      break;
    }

LABEL_86:
    v16 = v54 + 1;
    v15 = v48;
    if (v54 + 1 == v55)
    {
      goto LABEL_95;
    }
  }

  v59 = v18 + 32;

  v20 = 0;
  v47 = v19;
  while (1)
  {
    if (v20 >= *(v19 + 16))
    {
      goto LABEL_113;
    }

    v52 = v20;
    v21 = *(v59 + 8 * v20);
    v13 = *v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_114;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_114;
      }
    }

    if (v21 >= *(v13 + 16))
    {
      goto LABEL_115;
    }

    a4((v13 + 176 * v21 + 32));
    *v6 = v13;
    if (v21 >= *(a3 + 2))
    {
      goto LABEL_117;
    }

    v22 = *&v70[8 * v21];
    v50 = *(v22 + 16);
    if (v50)
    {
      break;
    }

LABEL_82:
    v20 = v52 + 1;
    v19 = v47;
    if (v52 + 1 == v53)
    {

      goto LABEL_86;
    }
  }

  v58 = v22 + 32;

  v24 = 0;
  v46 = v23;
  while (1)
  {
    if (v24 >= *(v23 + 16))
    {
      goto LABEL_116;
    }

    v51 = v24;
    v25 = *(v58 + 8 * v24);
    v13 = *v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_118;
      }
    }

    if (v25 >= *(v13 + 16))
    {
      goto LABEL_119;
    }

    a4((v13 + 176 * v25 + 32));
    *v6 = v13;
    if (v25 >= *(a3 + 2))
    {
      goto LABEL_120;
    }

    v26 = *&v70[8 * v25];
    v56 = *(v26 + 16);
    if (v56)
    {
      break;
    }

LABEL_78:
    v24 = v51 + 1;
    v23 = v46;
    if (v51 + 1 == v50)
    {

      goto LABEL_82;
    }
  }

  v61 = v26 + 32;

  v28 = 0;
  v49 = v27;
  while (1)
  {
    if (v28 >= *(v27 + 16))
    {
      goto LABEL_104;
    }

    v57 = v28;
    v29 = *(v61 + 8 * v28);
    v13 = *v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_105;
      }
    }

    if (v29 >= *(v13 + 16))
    {
      goto LABEL_106;
    }

    a4((v13 + 176 * v29 + 32));
    *v6 = v13;
    if (v29 >= *(a3 + 2))
    {
      goto LABEL_107;
    }

    v30 = *&v70[8 * v29];
    v62 = *(v30 + 16);
    if (v62)
    {
      break;
    }

LABEL_74:
    v28 = v57 + 1;
    v27 = v49;
    if (v57 + 1 == v56)
    {

      goto LABEL_78;
    }
  }

  v63 = v30 + 32;
  v64 = *&v70[8 * v29];

  v31 = 0;
  while (1)
  {
    if (v31 >= *(v64 + 16))
    {
      goto LABEL_100;
    }

    v65 = v31;
    v32 = *(v63 + 8 * v31);
    v13 = *v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_101;
      }
    }

    if (v32 >= *(v13 + 16))
    {
      goto LABEL_102;
    }

    a4((v13 + 176 * v32 + 32));
    *v6 = v13;
    if (v32 >= *(a3 + 2))
    {
      goto LABEL_103;
    }

    v13 = *&v70[8 * v32];
    v68 = *(v13 + 16);
    if (v68)
    {
      break;
    }

LABEL_41:
    v31 = v65 + 1;
    if (v65 + 1 == v62)
    {

      goto LABEL_74;
    }
  }

  v67 = (v13 + 32);

  v33 = 0;
  v66 = v13;
  while (1)
  {
    if (v33 >= *(v13 + 16))
    {
      __break(1u);
LABEL_97:
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
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v34 = *&v67[8 * v33];
    v35 = *v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }
    }

    if (v34 >= *(v35 + 2))
    {
      goto LABEL_98;
    }

    a4(&v35[176 * v34 + 32]);
    *v6 = v35;
    if (v34 >= *(a3 + 2))
    {
      goto LABEL_99;
    }

    v36 = *&v70[8 * v34];
    v37 = *(v36 + 16);
    if (v37)
    {
      break;
    }

LABEL_50:
    if (++v33 == v68)
    {

      goto LABEL_41;
    }
  }

  v69 = v33;
  v38 = v36 + 32;

  v39 = 0;
  while (1)
  {
    v40 = *(v38 + 8 * v39);
    v41 = *v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      break;
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_92;
    }

LABEL_61:
    if (v40 >= *(v41 + 2))
    {
      goto LABEL_93;
    }

    a4(&v41[176 * v40 + 32]);
    *v6 = v41;
    if (v40 >= *(a3 + 2))
    {
      goto LABEL_94;
    }

    v42 = *&v70[8 * v40];
    v43 = *(v42 + 16);

    if (v43)
    {
      v44 = (v42 + 32);
      do
      {
        v45 = *v44++;
        updateChildren #1 (of:) in IKRig.JointCollection.forEach(descendantOf:inclusive:update:)(v45, a4, a5, v6, a3);
        --v43;
      }

      while (v43);
    }

    if (++v39 == v37)
    {

      v13 = v66;
      v33 = v69;
      goto LABEL_50;
    }
  }

  v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
  if ((v40 & 0x8000000000000000) == 0)
  {
    goto LABEL_61;
  }

LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:

LABEL_90:
}

void updateChildren #1 (of:) in IKRig.JointCollection.forEach(descendantOf:inclusive:update:)(unint64_t a1, void (*a2)(char *), uint64_t a3, char **a4, uint64_t a5)
{
  v10 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v10;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  *a4 = v10;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (*(v10 + 2) <= a1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  a2(&v10[176 * a1 + 32]);
  if (*(a5 + 16) <= a1)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v12 = *(a5 + 8 * a1 + 32);
  v13 = *(v12 + 16);
  if (v13)
  {

    v14 = 32;
    do
    {
      updateChildren #1 (of:) in IKRig.JointCollection.forEach(descendantOf:inclusive:update:)(*(v12 + v14), a2, a3, a4, a5);
      v14 += 8;
      --v13;
    }

    while (v13);
  }
}

void IKRig.JointCollection.set(_:)(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = a1[9];
  v81 = a1[8];
  v82 = v5;
  v83 = a1[10];
  v6 = a1[5];
  v77 = a1[4];
  v78 = v6;
  v7 = a1[7];
  v79 = a1[6];
  v80 = v7;
  v8 = a1[1];
  v73 = *a1;
  v74 = v8;
  v9 = a1[3];
  v75 = a1[2];
  v76 = v9;
  v62 = v73;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.hash.getter();
  v10 = v2[1];
  if (!*(v10 + 2) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(), (v12 & 1) == 0))
  {
    _s17RealityFoundation5IKRigV5JointVSgWOi0_(&v62);
    v46 = v71;
    a2[8] = v70;
    a2[9] = v46;
    a2[10] = v72;
    v47 = v67;
    a2[4] = v66;
    a2[5] = v47;
    v48 = v69;
    a2[6] = v68;
    a2[7] = v48;
    v49 = v63;
    *a2 = v62;
    a2[1] = v49;
    v45 = v64;
    v44 = v65;
    goto LABEL_8;
  }

  v13 = *(*(v10 + 7) + 8 * v11);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = *v3;
  if (v13 >= *(*v3 + 2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = &v10[176 * v13];
  v15 = *(v14 + 2);
  v16 = *(v14 + 4);
  v63 = *(v14 + 3);
  v64 = v16;
  v62 = v15;
  v17 = *(v14 + 5);
  v18 = *(v14 + 6);
  v19 = *(v14 + 8);
  v67 = *(v14 + 7);
  v68 = v19;
  v65 = v17;
  v66 = v18;
  v20 = *(v14 + 9);
  v21 = *(v14 + 10);
  v22 = *(v14 + 12);
  v71 = *(v14 + 11);
  v72 = v22;
  v69 = v20;
  v70 = v21;
  outlined init with copy of IKRig.Joint(&v62, &v51);
  outlined init with copy of IKRig.Joint(&v73, &v51);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_11:
    v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  }

  v23 = &v10[176 * v13];
  v24 = *(v23 + 2);
  v25 = *(v23 + 4);
  v50[1] = *(v23 + 3);
  v50[2] = v25;
  v50[0] = v24;
  v26 = *(v23 + 5);
  v27 = *(v23 + 6);
  v28 = *(v23 + 8);
  v50[5] = *(v23 + 7);
  v50[6] = v28;
  v50[3] = v26;
  v50[4] = v27;
  v29 = *(v23 + 9);
  v30 = *(v23 + 10);
  v31 = *(v23 + 12);
  v50[9] = *(v23 + 11);
  v50[10] = v31;
  v50[7] = v29;
  v50[8] = v30;
  v32 = v73;
  v33 = v75;
  *(v23 + 3) = v74;
  *(v23 + 4) = v33;
  *(v23 + 2) = v32;
  v34 = v76;
  v35 = v77;
  v36 = v79;
  *(v23 + 7) = v78;
  *(v23 + 8) = v36;
  *(v23 + 5) = v34;
  *(v23 + 6) = v35;
  v37 = v80;
  v38 = v81;
  v39 = v83;
  *(v23 + 11) = v82;
  *(v23 + 12) = v39;
  *(v23 + 9) = v37;
  *(v23 + 10) = v38;
  outlined destroy of IKRig.Joint(v50);
  *v3 = v10;
  v59 = v70;
  v60 = v71;
  v61 = v72;
  v55 = v66;
  v56 = v67;
  v57 = v68;
  v58 = v69;
  v51 = v62;
  v52 = v63;
  v53 = v64;
  v54 = v65;
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  v40 = v60;
  a2[8] = v59;
  a2[9] = v40;
  a2[10] = v61;
  v41 = v56;
  a2[4] = v55;
  a2[5] = v41;
  v42 = v58;
  a2[6] = v57;
  a2[7] = v42;
  v43 = v52;
  *a2 = v51;
  a2[1] = v43;
  v45 = v53;
  v44 = v54;
LABEL_8:
  a2[2] = v45;
  a2[3] = v44;
}

unint64_t IKRig.JointCollection.subscript.getter@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = (*v2 + 176 * result);
    v4 = v3[2];
    v5 = v3[4];
    v18[1] = v3[3];
    v18[2] = v5;
    v18[0] = v4;
    v6 = v3[5];
    v7 = v3[6];
    v8 = v3[8];
    v18[5] = v3[7];
    v18[6] = v8;
    v18[3] = v6;
    v18[4] = v7;
    v9 = v3[9];
    v10 = v3[10];
    v11 = v3[12];
    v18[9] = v3[11];
    v18[10] = v11;
    v18[7] = v9;
    v18[8] = v10;
    v12 = v3[11];
    a2[8] = v3[10];
    a2[9] = v12;
    a2[10] = v3[12];
    v13 = v3[7];
    a2[4] = v3[6];
    a2[5] = v13;
    v14 = v3[9];
    a2[6] = v3[8];
    a2[7] = v14;
    v15 = v3[3];
    *a2 = v3[2];
    a2[1] = v15;
    v16 = v3[5];
    a2[2] = v3[4];
    a2[3] = v16;
    return outlined init with copy of IKRig.Joint(v18, &v17);
  }

  __break(1u);
  return result;
}

uint64_t *key path getter for IKRig.JointCollection.subscript(_:) : IKRig.JointCollection@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *result;
    if (v5 < *(*result + 16))
    {
      v23 = v3;
      v24 = v4;
      v7 = (v6 + 176 * v5);
      v8 = v7[2];
      v9 = v7[4];
      v22[1] = v7[3];
      v22[2] = v9;
      v22[0] = v8;
      v10 = v7[5];
      v11 = v7[6];
      v12 = v7[8];
      v22[5] = v7[7];
      v22[6] = v12;
      v22[3] = v10;
      v22[4] = v11;
      v13 = v7[9];
      v14 = v7[10];
      v15 = v7[12];
      v22[9] = v7[11];
      v22[10] = v15;
      v22[7] = v13;
      v22[8] = v14;
      v16 = v7[11];
      a3[8] = v7[10];
      a3[9] = v16;
      a3[10] = v7[12];
      v17 = v7[7];
      a3[4] = v7[6];
      a3[5] = v17;
      v18 = v7[9];
      a3[6] = v7[8];
      a3[7] = v18;
      v19 = v7[3];
      *a3 = v7[2];
      a3[1] = v19;
      v20 = v7[5];
      a3[2] = v7[4];
      a3[3] = v20;
      return outlined init with copy of IKRig.Joint(v22, &v21);
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for IKRig.JointCollection.subscript(_:) : IKRig.JointCollection(__int128 *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = a1[9];
  v38 = a1[8];
  v39 = v5;
  v40 = a1[10];
  v6 = a1[5];
  v34 = a1[4];
  v35 = v6;
  v7 = a1[7];
  v36 = a1[6];
  v37 = v7;
  v8 = a1[1];
  v30 = *a1;
  v31 = v8;
  v9 = a1[3];
  v32 = a1[2];
  v33 = v9;
  v10 = *a2;
  outlined init with copy of IKRig.Joint(&v30, v29);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  v10 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v10 + 16))
  {
    v12 = (v10 + 176 * v4);
    v13 = v12[2];
    v14 = v12[4];
    v29[1] = v12[3];
    v29[2] = v14;
    v29[0] = v13;
    v15 = v12[5];
    v16 = v12[6];
    v17 = v12[8];
    v29[5] = v12[7];
    v29[6] = v17;
    v29[3] = v15;
    v29[4] = v16;
    v18 = v12[9];
    v19 = v12[10];
    v20 = v12[12];
    v29[9] = v12[11];
    v29[10] = v20;
    v29[7] = v18;
    v29[8] = v19;
    v21 = v30;
    v22 = v32;
    v12[3] = v31;
    v12[4] = v22;
    v12[2] = v21;
    v23 = v33;
    v24 = v34;
    v25 = v36;
    v12[7] = v35;
    v12[8] = v25;
    v12[5] = v23;
    v12[6] = v24;
    v26 = v37;
    v27 = v38;
    v28 = v40;
    v12[11] = v39;
    v12[12] = v28;
    v12[9] = v26;
    v12[10] = v27;
    result = outlined destroy of IKRig.Joint(v29);
    *a2 = v10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t IKRig.JointCollection.subscript.setter(_OWORD *a1, unint64_t a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    v7 = (v5 + 176 * a2);
    v8 = v7[2];
    v9 = v7[4];
    v21[1] = v7[3];
    v21[2] = v9;
    v21[0] = v8;
    v10 = v7[5];
    v11 = v7[6];
    v12 = v7[8];
    v21[5] = v7[7];
    v21[6] = v12;
    v21[3] = v10;
    v21[4] = v11;
    v13 = v7[9];
    v14 = v7[10];
    v15 = v7[12];
    v21[9] = v7[11];
    v21[10] = v15;
    v21[7] = v13;
    v21[8] = v14;
    v16 = a1[9];
    v7[10] = a1[8];
    v7[11] = v16;
    v7[12] = a1[10];
    v17 = a1[5];
    v7[6] = a1[4];
    v7[7] = v17;
    v18 = a1[7];
    v7[8] = a1[6];
    v7[9] = v18;
    v19 = a1[1];
    v7[2] = *a1;
    v7[3] = v19;
    v20 = a1[3];
    v7[4] = a1[2];
    v7[5] = v20;
    result = outlined destroy of IKRig.Joint(v21);
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*IKRig.JointCollection.subscript.modify(uint64_t ***a1, unint64_t a2))()
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
  *(v4 + 32) = specialized Array.subscript.modify(v4, a2);
  return IKRig.JointCollection.subscript.modify;
}

Swift::Int __swiftcall IKRig.JointCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void IKRig.JointCollection.Iterator.next()(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    _s17RealityFoundation5IKRigV5JointVSgWOi0_(&v20);
    v5 = v29;
    a1[8] = v28;
    a1[9] = v5;
    a1[10] = v30;
    v6 = v25;
    a1[4] = v24;
    a1[5] = v6;
    v7 = v27;
    a1[6] = v26;
    a1[7] = v7;
    v8 = v21;
    *a1 = v20;
    a1[1] = v8;
    v9 = v23;
    a1[2] = v22;
    a1[3] = v9;
  }

  else if (v3 >= v4)
  {
    __break(1u);
  }

  else
  {
    v10 = (*v1 + 176 * v3);
    v11 = v10[2];
    v12 = v10[4];
    v21 = v10[3];
    v22 = v12;
    v20 = v11;
    v13 = v10[5];
    v14 = v10[6];
    v15 = v10[8];
    v25 = v10[7];
    v26 = v15;
    v23 = v13;
    v24 = v14;
    v16 = v10[9];
    v17 = v10[10];
    v18 = v10[12];
    v29 = v10[11];
    v30 = v18;
    v27 = v16;
    v28 = v17;
    memmove(a1, v10 + 2, 0xB0uLL);
    v1[1] = v3 + 1;
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    outlined init with copy of IKRig.Joint(&v20, &v19);
  }
}

void IKRig.JointCollection.makeIterator()(void *a1@<X8>)
{
  v3 = *v1;

  *a1 = v3;
  a1[1] = 0;
}

void (*protocol witness for Collection.subscript.read in conformance IKRig.JointCollection(void (**a1)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x210uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = (*v2 + 176 * v7);
    v9 = v8[2];
    v10 = v8[4];
    *(result + 1) = v8[3];
    *(result + 2) = v10;
    *result = v9;
    v11 = v8[5];
    v12 = v8[6];
    v13 = v8[8];
    *(result + 5) = v8[7];
    *(result + 6) = v13;
    *(result + 3) = v11;
    *(result + 4) = v12;
    v14 = v8[9];
    v15 = v8[10];
    v16 = v8[12];
    *(result + 9) = v8[11];
    *(result + 10) = v16;
    *(result + 7) = v14;
    *(result + 8) = v15;
    memmove(result + 176, v8 + 2, 0xB0uLL);
    outlined init with copy of IKRig.Joint(v6, v6 + 352);
    return protocol witness for Collection.subscript.read in conformance IKRig.JointCollection;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance IKRig.JointCollection(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 320);
  v1[30] = *(*a1 + 304);
  v1[31] = v2;
  v1[32] = v1[21];
  v3 = v1[16];
  v1[26] = v1[15];
  v1[27] = v3;
  v4 = v1[18];
  v1[28] = v1[17];
  v1[29] = v4;
  v5 = v1[12];
  v1[22] = v1[11];
  v1[23] = v5;
  v6 = v1[14];
  v1[24] = v1[13];
  v1[25] = v6;
  outlined destroy of IKRig.Joint((v1 + 22));

  free(v1);
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance IKRig.JointCollection@<X0>(uint64_t a4@<X8>)
{
  result = specialized Collection.index(_:offsetBy:limitedBy:)();
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

RealityFoundation::IKRig::ConstraintsCollection __swiftcall IKRig.ConstraintsCollection.init(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v3 = v1;
  v4 = *(a1._rawValue + 2);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v29 = v1;
    v56 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v30 = rawValue[2];
    if (!v30)
    {
LABEL_14:
      __break(1u);
      v25 = swift_unexpectedError();
      __break(1u);
      goto LABEL_15;
    }

    v6 = 0;
    v5 = v56;
    v31 = v4 - 1;
    v32 = rawValue;
    v7 = 4;
    while (1)
    {
      v8 = *&rawValue[v7 + 10];
      v9 = *&rawValue[v7 + 14];
      v41 = *&rawValue[v7 + 12];
      v42 = v9;
      v10 = *&rawValue[v7 + 18];
      v11 = *&rawValue[v7 + 14];
      v43 = *&rawValue[v7 + 16];
      v44 = v10;
      v12 = *&rawValue[v7 + 6];
      v13 = *&rawValue[v7 + 2];
      v37 = *&rawValue[v7 + 4];
      v38 = v12;
      v14 = *&rawValue[v7 + 10];
      v15 = *&rawValue[v7 + 6];
      v39 = *&rawValue[v7 + 8];
      v40 = v14;
      v16 = *&rawValue[v7 + 2];
      v36[0] = *&rawValue[v7];
      v36[1] = v16;
      *&v35[88] = v8;
      *&v35[72] = v39;
      *&v35[56] = v15;
      *&v35[40] = v37;
      *&v35[152] = *&rawValue[v7 + 18];
      *&v35[136] = v43;
      *&v35[120] = v11;
      *&v35[104] = v41;
      *&v35[8] = v36[0];
      *&v35[24] = v13;
      v45 = v6;
      v49 = *&v35[64];
      v50 = *&v35[80];
      v55 = *&v35[160];
      v53 = *&v35[128];
      v54 = *&v35[144];
      v51 = *&v35[96];
      v52 = *&v35[112];
      v47 = *&v35[32];
      v48 = *&v35[48];
      *v46 = *v35;
      *&v46[16] = *&v35[16];
      v34 = *&v46[8];
      outlined init with copy of IKRig.Constraint(v36, v33);
      lazy protocol witness table accessor for type String and conformance String();
      v17 = StringProtocol.hash.getter();
      outlined destroy of BodyTrackingComponent?(&v45, &_sSi6offset_17RealityFoundation5IKRigV10ConstraintV7elementtMd, &_sSi6offset_17RealityFoundation5IKRigV10ConstraintV7elementtMR);
      v18 = v45;
      v56 = v5;
      v20 = *(v5 + 16);
      v19 = *(v5 + 24);
      v21 = v5;
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v21 = v56;
      }

      *(v21 + 16) = v20 + 1;
      v22 = v21 + 16 * v20;
      *(v22 + 32) = v17;
      *(v22 + 40) = v18;
      v5 = v21;
      if (v31 == v6)
      {
        break;
      }

      ++v6;
      v7 += 20;
      rawValue = v32;
      if (v30 == v6)
      {
        goto LABEL_14;
      }
    }

    rawValue = v32;

    v3 = v29;
  }

  if (*(v5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVSiGMR);
    v23 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC8];
  }

  v45 = v23;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v24, 1, &v45);

  v27 = v45;
  *v3 = rawValue;
  v3[1] = v27;
LABEL_15:
  result.lookUpHelper._rawValue = v26;
  result.storage._rawValue = v25;
  return result;
}

void IKRig.ConstraintsCollection.subscript.getter(void *a3@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.hash.getter();
  IKRig.ConstraintsCollection.subscript.getter(a3);
}

double key path getter for IKRig.ConstraintsCollection.subscript(_:) : IKRig.ConstraintsCollection@<D0>(void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a2[1];
  *&v12[0] = *a2;
  *(&v12[0] + 1) = v4;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.hash.getter();
  IKRig.ConstraintsCollection.subscript.getter(v12);
  v5 = v12[7];
  v6 = v12[8];
  a3[6] = v12[6];
  a3[7] = v5;
  v7 = v12[9];
  a3[8] = v6;
  a3[9] = v7;
  v8 = v12[3];
  a3[2] = v12[2];
  a3[3] = v8;
  v9 = v12[5];
  a3[4] = v12[4];
  a3[5] = v9;
  result = *v12;
  v11 = v12[1];
  *a3 = v12[0];
  a3[1] = v11;
  return result;
}

uint64_t key path setter for IKRig.ConstraintsCollection.subscript(_:) : IKRig.ConstraintsCollection(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a1[7];
  v21 = a1[6];
  v22 = v5;
  v6 = a1[9];
  v23 = a1[8];
  v24 = v6;
  v7 = a1[3];
  v17 = a1[2];
  v18 = v7;
  v8 = a1[5];
  v19 = a1[4];
  v20 = v8;
  v9 = a1[1];
  v15 = *a1;
  v16 = v9;
  v13 = v3;
  v14 = v4;
  outlined init with copy of [String : String](&v15, v12, &_s17RealityFoundation5IKRigV10ConstraintVSgMd, &_s17RealityFoundation5IKRigV10ConstraintVSgMR);
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.hash.getter();
  v12[6] = v21;
  v12[7] = v22;
  v12[8] = v23;
  v12[9] = v24;
  v12[2] = v17;
  v12[3] = v18;
  v12[4] = v19;
  v12[5] = v20;
  v12[0] = v15;
  v12[1] = v16;
  v13 = v10;
  return IKRig.ConstraintsCollection.subscript.setter(v12);
}

uint64_t IKRig.ConstraintsCollection.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.hash.getter();

  return IKRig.ConstraintsCollection.subscript.setter(a1);
}

void IKRig.ConstraintsCollection.subscript.getter(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  if (*(v4 + 16) && (v5 = *v2, v6 = specialized __RawDictionaryStorage.find<A>(_:)(), (v7 & 1) != 0))
  {
    v8 = *(*(v4 + 56) + 8 * v6);
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *(v5 + 16))
    {
      v9 = (v5 + 160 * v8);
      v10 = v9[3];
      v28[0] = v9[2];
      v28[1] = v10;
      v11 = v9[4];
      v12 = v9[5];
      v13 = v9[7];
      v28[4] = v9[6];
      v28[5] = v13;
      v28[2] = v11;
      v28[3] = v12;
      v14 = v9[8];
      v15 = v9[9];
      v16 = v9[11];
      v28[8] = v9[10];
      v28[9] = v16;
      v28[6] = v14;
      v28[7] = v15;
      memmove(&__dst, v9 + 2, 0xA0uLL);
      destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
      v17 = v36;
      a1[6] = v35;
      a1[7] = v17;
      v18 = v38;
      a1[8] = v37;
      a1[9] = v18;
      v19 = v32;
      a1[2] = v31;
      a1[3] = v19;
      v20 = v34;
      a1[4] = v33;
      a1[5] = v20;
      v21 = v30;
      *a1 = __dst;
      a1[1] = v21;
      outlined init with copy of IKRig.Constraint(v28, &v27);
      return;
    }

    __break(1u);
  }

  else
  {
    _s17RealityFoundation5IKRigV10ConstraintVSgWOi0_(&__dst);
    v22 = v36;
    a1[6] = v35;
    a1[7] = v22;
    v23 = v38;
    a1[8] = v37;
    a1[9] = v23;
    v24 = v32;
    a1[2] = v31;
    a1[3] = v24;
    v25 = v34;
    a1[4] = v33;
    a1[5] = v25;
    v26 = v30;
    *a1 = __dst;
    a1[1] = v26;
  }
}

uint64_t IKRig.ConstraintsCollection.subscript.setter(__int128 *a1)
{
  v2 = v1;
  v4 = v1[1];
  if (*(v4 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      v8 = a1[7];
      v52 = a1[6];
      v53 = v8;
      v9 = a1[9];
      v54 = a1[8];
      v55 = v9;
      v10 = a1[3];
      v48 = a1[2];
      v49 = v10;
      v11 = a1[5];
      v50 = a1[4];
      v51 = v11;
      v12 = a1[1];
      v46 = *a1;
      v47 = v12;
      if (getEnumTag for EnvironmentResource.OptionError(&v46) == 1)
      {
        specialized Array.remove(at:)(v7, v45);
        return outlined destroy of IKRig.Constraint(v45);
      }

      v19 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        v19 = result;
        if ((v7 & 0x8000000000000000) == 0)
        {
LABEL_13:
          if (v7 < *(v19 + 16))
          {
            v30 = (v19 + 160 * v7);
            v31 = v30[3];
            v45[0] = v30[2];
            v45[1] = v31;
            v32 = v30[4];
            v33 = v30[5];
            v34 = v30[7];
            v45[4] = v30[6];
            v45[5] = v34;
            v45[2] = v32;
            v45[3] = v33;
            v35 = v30[8];
            v36 = v30[9];
            v37 = v30[11];
            v45[8] = v30[10];
            v45[9] = v37;
            v45[6] = v35;
            v45[7] = v36;
            v38 = v47;
            v30[2] = v46;
            v30[3] = v38;
            v39 = v48;
            v40 = v49;
            v41 = v51;
            v30[6] = v50;
            v30[7] = v41;
            v30[4] = v39;
            v30[5] = v40;
            v42 = v52;
            v43 = v53;
            v44 = v55;
            v30[10] = v54;
            v30[11] = v44;
            v30[8] = v42;
            v30[9] = v43;
            result = outlined destroy of IKRig.Constraint(v45);
            goto LABEL_15;
          }

LABEL_19:
          __break(1u);
          return result;
        }
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  v14 = a1[7];
  v52 = a1[6];
  v53 = v14;
  v15 = a1[9];
  v54 = a1[8];
  v55 = v15;
  v16 = a1[3];
  v48 = a1[2];
  v49 = v16;
  v17 = a1[5];
  v50 = a1[4];
  v51 = v17;
  v18 = a1[1];
  v46 = *a1;
  v47 = v18;
  result = getEnumTag for EnvironmentResource.OptionError(&v46);
  if (result == 1)
  {
    return result;
  }

  v19 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
    v19 = result;
  }

  v21 = *(v19 + 16);
  v20 = *(v19 + 24);
  if (v21 >= v20 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v19);
    v19 = result;
  }

  *(v19 + 16) = v21 + 1;
  v22 = (v19 + 160 * v21);
  v23 = v47;
  v22[2] = v46;
  v22[3] = v23;
  v24 = v48;
  v25 = v49;
  v26 = v51;
  v22[6] = v50;
  v22[7] = v26;
  v22[4] = v24;
  v22[5] = v25;
  v27 = v52;
  v28 = v53;
  v29 = v55;
  v22[10] = v54;
  v22[11] = v29;
  v22[8] = v27;
  v22[9] = v28;
LABEL_15:
  *v2 = v19;
  return result;
}

void (*IKRig.ConstraintsCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x2B0uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[84] = v3;
  v7[83] = a3;
  v7[82] = a2;
  v10 = *v3;
  v9 = v3[1];
  v7[20] = a2;
  v7[21] = a3;
  v11 = v7 + 20;
  v7[85] = lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.hash.getter();
  if (!*(v9 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(), (v13 & 1) == 0))
  {
    _s17RealityFoundation5IKRigV10ConstraintVSgWOi0_(v8);
    return IKRig.ConstraintsCollection.subscript.modify;
  }

  v14 = *(*(v9 + 56) + 8 * result);
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *(v10 + 16))
  {
    v15 = (v10 + 160 * v14);
    v16 = v15[3];
    v11[10] = v15[2];
    v11[11] = v16;
    v17 = v15[4];
    v18 = v15[5];
    v19 = v15[7];
    v11[14] = v15[6];
    v11[15] = v19;
    v11[12] = v17;
    v11[13] = v18;
    v20 = v15[8];
    v21 = v15[9];
    v22 = v15[11];
    v11[18] = v15[10];
    v11[19] = v22;
    v11[16] = v20;
    v11[17] = v21;
    memmove(v11, v15 + 2, 0xA0uLL);
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    v23 = v11[7];
    v8[6] = v11[6];
    v8[7] = v23;
    v24 = v11[9];
    v8[8] = v11[8];
    v8[9] = v24;
    v25 = v11[3];
    v8[2] = v11[2];
    v8[3] = v25;
    v26 = v11[5];
    v8[4] = v11[4];
    v8[5] = v26;
    v27 = v11[1];
    *v8 = *v11;
    v8[1] = v27;
    outlined init with copy of IKRig.Constraint((v11 + 10), (v11 + 20));
    return IKRig.ConstraintsCollection.subscript.modify;
  }

  __break(1u);
  return result;
}

void IKRig.ConstraintsCollection.subscript.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 83);
  v4 = *(*a1 + 82);
  v5 = *(*a1 + 7);
  if (a2)
  {
    *(v2 + 26) = *(v2 + 6);
    *(v2 + 27) = v5;
    v6 = *(v2 + 9);
    *(v2 + 28) = *(v2 + 8);
    *(v2 + 29) = v6;
    v7 = *(v2 + 3);
    *(v2 + 22) = *(v2 + 2);
    *(v2 + 23) = v7;
    v8 = *(v2 + 5);
    *(v2 + 24) = *(v2 + 4);
    *(v2 + 25) = v8;
    v9 = *(v2 + 1);
    *(v2 + 20) = *v2;
    *(v2 + 21) = v9;
    v2[80] = v4;
    v2[81] = v3;
    outlined init with copy of [String : String]((v2 + 40), (v2 + 60), &_s17RealityFoundation5IKRigV10ConstraintVSgMd, &_s17RealityFoundation5IKRigV10ConstraintVSgMR);
    v10 = StringProtocol.hash.getter();
    v11 = *(v2 + 27);
    v31 = *(v2 + 26);
    v32 = v11;
    v12 = *(v2 + 29);
    v33 = *(v2 + 28);
    v34 = v12;
    v13 = *(v2 + 23);
    v27 = *(v2 + 22);
    v28 = v13;
    v14 = *(v2 + 25);
    v29 = *(v2 + 24);
    v30 = v14;
    v15 = *(v2 + 21);
    v25 = *(v2 + 20);
    v26 = v15;
    v35 = v10;
    IKRig.ConstraintsCollection.subscript.setter(&v25);
    v16 = *(v2 + 7);
    *(v2 + 16) = *(v2 + 6);
    *(v2 + 17) = v16;
    v17 = *(v2 + 9);
    *(v2 + 18) = *(v2 + 8);
    *(v2 + 19) = v17;
    v18 = *(v2 + 3);
    *(v2 + 12) = *(v2 + 2);
    *(v2 + 13) = v18;
    v19 = *(v2 + 5);
    *(v2 + 14) = *(v2 + 4);
    *(v2 + 15) = v19;
    v20 = *(v2 + 1);
    *(v2 + 10) = *v2;
    *(v2 + 11) = v20;
    outlined destroy of BodyTrackingComponent?((v2 + 20), &_s17RealityFoundation5IKRigV10ConstraintVSgMd, &_s17RealityFoundation5IKRigV10ConstraintVSgMR);
  }

  else
  {
    v31 = *(v2 + 6);
    v32 = v5;
    v21 = *(v2 + 9);
    v33 = *(v2 + 8);
    v34 = v21;
    v22 = *(v2 + 3);
    v27 = *(v2 + 2);
    v28 = v22;
    v23 = *(v2 + 5);
    v29 = *(v2 + 4);
    v30 = v23;
    v24 = *(v2 + 1);
    v25 = *v2;
    v26 = v24;
    v2[20] = v4;
    v2[21] = v3;
    v35 = StringProtocol.hash.getter();
    IKRig.ConstraintsCollection.subscript.setter(&v25);
  }

  free(v2);
}

void (*IKRig.ConstraintsCollection.subscript.modify(uint64_t *a1, void *a2))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x290uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 640) = v2;
  *(v5 + 648) = *a2;
  v7 = v2[1];
  if (!*(v7 + 16) || (v8 = *v2, result = specialized __RawDictionaryStorage.find<A>(_:)(), (v10 & 1) == 0))
  {
    _s17RealityFoundation5IKRigV10ConstraintVSgWOi0_(v6);
    return IKRig.ConstraintsCollection.subscript.modify;
  }

  v11 = *(*(v7 + 56) + 8 * result);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v8 + 16))
  {
    v12 = (v8 + 160 * v11);
    v13 = v12[3];
    v6[20] = v12[2];
    v6[21] = v13;
    v14 = v12[4];
    v15 = v12[5];
    v16 = v12[7];
    v6[24] = v12[6];
    v6[25] = v16;
    v6[22] = v14;
    v6[23] = v15;
    v17 = v12[8];
    v18 = v12[9];
    v19 = v12[11];
    v6[28] = v12[10];
    v6[29] = v19;
    v6[26] = v17;
    v6[27] = v18;
    memmove(v6 + 10, v12 + 2, 0xA0uLL);
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    v20 = v6[17];
    v6[6] = v6[16];
    v6[7] = v20;
    v21 = v6[19];
    v6[8] = v6[18];
    v6[9] = v21;
    v22 = v6[13];
    v6[2] = v6[12];
    v6[3] = v22;
    v23 = v6[15];
    v6[4] = v6[14];
    v6[5] = v23;
    v24 = v6[11];
    *v6 = v6[10];
    v6[1] = v24;
    outlined init with copy of IKRig.Constraint((v6 + 20), (v6 + 30));
    return IKRig.ConstraintsCollection.subscript.modify;
  }

  __break(1u);
  return result;
}

void IKRig.ConstraintsCollection.subscript.modify(__int128 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    v2[26] = v4;
    v2[27] = v3;
    v6 = v2[7];
    v8 = v2[8];
    v7 = v2[9];
    v2[28] = v8;
    v2[29] = v7;
    v10 = v2[2];
    v9 = v2[3];
    v11 = v2[1];
    v2[22] = v10;
    v2[23] = v9;
    v12 = v2[3];
    v14 = v2[4];
    v13 = v2[5];
    v2[24] = v14;
    v2[25] = v13;
    v15 = v2[1];
    v16 = *v2;
    v2[20] = *v2;
    v2[21] = v15;
    v36 = v4;
    v37 = v6;
    v17 = v2[9];
    v38 = v8;
    v39 = v17;
    v32 = v10;
    v33 = v12;
    v34 = v14;
    v35 = v5;
    v18 = *(v2 + 81);
    v30 = v16;
    v31 = v11;
    v40 = v18;
    outlined init with copy of [String : String]((v2 + 20), (v2 + 30), &_s17RealityFoundation5IKRigV10ConstraintVSgMd, &_s17RealityFoundation5IKRigV10ConstraintVSgMR);
    IKRig.ConstraintsCollection.subscript.setter(&v30);
    v19 = v2[7];
    v2[16] = v2[6];
    v2[17] = v19;
    v20 = v2[9];
    v2[18] = v2[8];
    v2[19] = v20;
    v21 = v2[3];
    v2[12] = v2[2];
    v2[13] = v21;
    v22 = v2[5];
    v2[14] = v2[4];
    v2[15] = v22;
    v23 = v2[1];
    v2[10] = *v2;
    v2[11] = v23;
    outlined destroy of BodyTrackingComponent?((v2 + 10), &_s17RealityFoundation5IKRigV10ConstraintVSgMd, &_s17RealityFoundation5IKRigV10ConstraintVSgMR);
  }

  else
  {
    v24 = *(v2 + 81);
    v25 = v2[7];
    v36 = v2[6];
    v37 = v25;
    v26 = v2[9];
    v38 = v2[8];
    v39 = v26;
    v27 = v2[3];
    v32 = v2[2];
    v33 = v27;
    v28 = v2[5];
    v34 = v2[4];
    v35 = v28;
    v29 = v2[1];
    v30 = *v2;
    v31 = v29;
    v40 = v24;
    IKRig.ConstraintsCollection.subscript.setter(&v30);
  }

  free(v2);
}

uint64_t IKRig.JointCollection.contains(_:)(void *a1, void (*a2)(void))
{
  if (*(*(v2 + 8) + 16))
  {
    a2(*a1);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void IKRig.ConstraintsCollection.set(_:)(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = a1[7];
  v74 = a1[6];
  v75 = v5;
  v6 = a1[9];
  v76 = a1[8];
  v77 = v6;
  v7 = a1[3];
  v70 = a1[2];
  v71 = v7;
  v8 = a1[5];
  v72 = a1[4];
  v73 = v8;
  v9 = a1[1];
  v68 = *a1;
  v69 = v9;
  v58 = v68;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.hash.getter();
  v10 = v2[1];
  if (!*(v10 + 2) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(), (v12 & 1) == 0))
  {
    _s17RealityFoundation5IKRigV10ConstraintVSgWOi0_(&v58);
    v43 = v65;
    a2[6] = v64;
    a2[7] = v43;
    v44 = v67;
    a2[8] = v66;
    a2[9] = v44;
    v45 = v61;
    a2[2] = v60;
    a2[3] = v45;
    v46 = v63;
    a2[4] = v62;
    a2[5] = v46;
    v41 = v58;
    v42 = v59;
    goto LABEL_8;
  }

  v13 = *(*(v10 + 7) + 8 * v11);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = *v3;
  if (v13 >= *(*v3 + 2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = &v10[160 * v13];
  v15 = *(v14 + 3);
  v58 = *(v14 + 2);
  v59 = v15;
  v16 = *(v14 + 4);
  v17 = *(v14 + 5);
  v18 = *(v14 + 7);
  v62 = *(v14 + 6);
  v63 = v18;
  v60 = v16;
  v61 = v17;
  v19 = *(v14 + 8);
  v20 = *(v14 + 9);
  v21 = *(v14 + 11);
  v66 = *(v14 + 10);
  v67 = v21;
  v64 = v19;
  v65 = v20;
  outlined init with copy of IKRig.Constraint(&v58, &v48);
  outlined init with copy of IKRig.Constraint(&v68, &v48);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_11:
    v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  }

  v22 = &v10[160 * v13];
  v23 = *(v22 + 3);
  v47[0] = *(v22 + 2);
  v47[1] = v23;
  v24 = *(v22 + 4);
  v25 = *(v22 + 5);
  v26 = *(v22 + 7);
  v47[4] = *(v22 + 6);
  v47[5] = v26;
  v47[2] = v24;
  v47[3] = v25;
  v27 = *(v22 + 8);
  v28 = *(v22 + 9);
  v29 = *(v22 + 11);
  v47[8] = *(v22 + 10);
  v47[9] = v29;
  v47[6] = v27;
  v47[7] = v28;
  v30 = v69;
  *(v22 + 2) = v68;
  *(v22 + 3) = v30;
  v31 = v70;
  v32 = v71;
  v33 = v73;
  *(v22 + 6) = v72;
  *(v22 + 7) = v33;
  *(v22 + 4) = v31;
  *(v22 + 5) = v32;
  v34 = v74;
  v35 = v75;
  v36 = v77;
  *(v22 + 10) = v76;
  *(v22 + 11) = v36;
  *(v22 + 8) = v34;
  *(v22 + 9) = v35;
  outlined destroy of IKRig.Constraint(v47);
  *v3 = v10;
  v54 = v64;
  v55 = v65;
  v56 = v66;
  v57 = v67;
  v50 = v60;
  v51 = v61;
  v52 = v62;
  v53 = v63;
  v48 = v58;
  v49 = v59;
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  v37 = v55;
  a2[6] = v54;
  a2[7] = v37;
  v38 = v57;
  a2[8] = v56;
  a2[9] = v38;
  v39 = v51;
  a2[2] = v50;
  a2[3] = v39;
  v40 = v53;
  a2[4] = v52;
  a2[5] = v40;
  v41 = v48;
  v42 = v49;
LABEL_8:
  *a2 = v41;
  a2[1] = v42;
}

unint64_t IKRig.ConstraintsCollection.subscript.getter@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = (*v2 + 160 * result);
    v4 = v3[3];
    v17[0] = v3[2];
    v17[1] = v4;
    v5 = v3[4];
    v6 = v3[5];
    v7 = v3[7];
    v17[4] = v3[6];
    v17[5] = v7;
    v17[2] = v5;
    v17[3] = v6;
    v8 = v3[8];
    v9 = v3[9];
    v10 = v3[11];
    v17[8] = v3[10];
    v17[9] = v10;
    v17[6] = v8;
    v17[7] = v9;
    v11 = v3[9];
    a2[6] = v3[8];
    a2[7] = v11;
    v12 = v3[11];
    a2[8] = v3[10];
    a2[9] = v12;
    v13 = v3[5];
    a2[2] = v3[4];
    a2[3] = v13;
    v14 = v3[7];
    a2[4] = v3[6];
    a2[5] = v14;
    v15 = v3[3];
    *a2 = v3[2];
    a2[1] = v15;
    return outlined init with copy of IKRig.Constraint(v17, &v16);
  }

  __break(1u);
  return result;
}

uint64_t *key path getter for IKRig.ConstraintsCollection.subscript(_:) : IKRig.ConstraintsCollection@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *result;
    if (v5 < *(*result + 16))
    {
      v22 = v3;
      v23 = v4;
      v7 = (v6 + 160 * v5);
      v8 = v7[3];
      v21[0] = v7[2];
      v21[1] = v8;
      v9 = v7[4];
      v10 = v7[5];
      v11 = v7[7];
      v21[4] = v7[6];
      v21[5] = v11;
      v21[2] = v9;
      v21[3] = v10;
      v12 = v7[8];
      v13 = v7[9];
      v14 = v7[11];
      v21[8] = v7[10];
      v21[9] = v14;
      v21[6] = v12;
      v21[7] = v13;
      v15 = v7[9];
      a3[6] = v7[8];
      a3[7] = v15;
      v16 = v7[11];
      a3[8] = v7[10];
      a3[9] = v16;
      v17 = v7[5];
      a3[2] = v7[4];
      a3[3] = v17;
      v18 = v7[7];
      a3[4] = v7[6];
      a3[5] = v18;
      v19 = v7[3];
      *a3 = v7[2];
      a3[1] = v19;
      return outlined init with copy of IKRig.Constraint(v21, &v20);
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for IKRig.ConstraintsCollection.subscript(_:) : IKRig.ConstraintsCollection(__int128 *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = a1[7];
  v34 = a1[6];
  v35 = v5;
  v6 = a1[9];
  v36 = a1[8];
  v37 = v6;
  v7 = a1[3];
  v30 = a1[2];
  v31 = v7;
  v8 = a1[5];
  v32 = a1[4];
  v33 = v8;
  v9 = a1[1];
  v28 = *a1;
  v29 = v9;
  v10 = *a2;
  outlined init with copy of IKRig.Constraint(&v28, v27);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  v10 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v10 + 16))
  {
    v12 = (v10 + 160 * v4);
    v13 = v12[3];
    v27[0] = v12[2];
    v27[1] = v13;
    v14 = v12[4];
    v15 = v12[5];
    v16 = v12[7];
    v27[4] = v12[6];
    v27[5] = v16;
    v27[2] = v14;
    v27[3] = v15;
    v17 = v12[8];
    v18 = v12[9];
    v19 = v12[11];
    v27[8] = v12[10];
    v27[9] = v19;
    v27[6] = v17;
    v27[7] = v18;
    v20 = v29;
    v12[2] = v28;
    v12[3] = v20;
    v21 = v30;
    v22 = v31;
    v23 = v33;
    v12[6] = v32;
    v12[7] = v23;
    v12[4] = v21;
    v12[5] = v22;
    v24 = v34;
    v25 = v35;
    v26 = v37;
    v12[10] = v36;
    v12[11] = v26;
    v12[8] = v24;
    v12[9] = v25;
    result = outlined destroy of IKRig.Constraint(v27);
    *a2 = v10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t IKRig.ConstraintsCollection.subscript.setter(_OWORD *a1, unint64_t a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    v7 = (v5 + 160 * a2);
    v8 = v7[3];
    v20[0] = v7[2];
    v20[1] = v8;
    v9 = v7[4];
    v10 = v7[5];
    v11 = v7[7];
    v20[4] = v7[6];
    v20[5] = v11;
    v20[2] = v9;
    v20[3] = v10;
    v12 = v7[8];
    v13 = v7[9];
    v14 = v7[11];
    v20[8] = v7[10];
    v20[9] = v14;
    v20[6] = v12;
    v20[7] = v13;
    v15 = a1[7];
    v7[8] = a1[6];
    v7[9] = v15;
    v16 = a1[9];
    v7[10] = a1[8];
    v7[11] = v16;
    v17 = a1[3];
    v7[4] = a1[2];
    v7[5] = v17;
    v18 = a1[5];
    v7[6] = a1[4];
    v7[7] = v18;
    v19 = a1[1];
    v7[2] = *a1;
    v7[3] = v19;
    result = outlined destroy of IKRig.Constraint(v20);
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*IKRig.ConstraintsCollection.subscript.modify(uint64_t ***a1, unint64_t a2))()
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
  *(v4 + 32) = specialized Array.subscript.modify(v4, a2);
  return IKRig.ConstraintsCollection.subscript.modify;
}

void IKRig.JointCollection.subscript.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void IKRig.ConstraintsCollection.Iterator.next()(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    _s17RealityFoundation5IKRigV10ConstraintVSgWOi0_(&v19);
    v5 = v26;
    a1[6] = v25;
    a1[7] = v5;
    v6 = v28;
    a1[8] = v27;
    a1[9] = v6;
    v7 = v22;
    a1[2] = v21;
    a1[3] = v7;
    v8 = v24;
    a1[4] = v23;
    a1[5] = v8;
    v9 = v20;
    *a1 = v19;
    a1[1] = v9;
  }

  else if (v3 >= v4)
  {
    __break(1u);
  }

  else
  {
    v10 = (*v1 + 160 * v3);
    v11 = v10[3];
    v19 = v10[2];
    v20 = v11;
    v12 = v10[4];
    v13 = v10[5];
    v14 = v10[7];
    v23 = v10[6];
    v24 = v14;
    v21 = v12;
    v22 = v13;
    v15 = v10[8];
    v16 = v10[9];
    v17 = v10[11];
    v27 = v10[10];
    v28 = v17;
    v25 = v15;
    v26 = v16;
    memmove(a1, v10 + 2, 0xA0uLL);
    v1[1] = v3 + 1;
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    outlined init with copy of IKRig.Constraint(&v19, &v18);
  }
}

void (*protocol witness for Collection.subscript.read in conformance IKRig.ConstraintsCollection(void (**a1)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x1E0uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = (*v2 + 160 * v7);
    v9 = v8[3];
    *result = v8[2];
    *(result + 1) = v9;
    v10 = v8[4];
    v11 = v8[5];
    v12 = v8[7];
    *(result + 4) = v8[6];
    *(result + 5) = v12;
    *(result + 2) = v10;
    *(result + 3) = v11;
    v13 = v8[8];
    v14 = v8[9];
    v15 = v8[11];
    *(result + 8) = v8[10];
    *(result + 9) = v15;
    *(result + 6) = v13;
    *(result + 7) = v14;
    memmove(result + 160, v8 + 2, 0xA0uLL);
    outlined init with copy of IKRig.Constraint(v6, v6 + 320);
    return protocol witness for Collection.subscript.read in conformance IKRig.ConstraintsCollection;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance IKRig.ConstraintsCollection(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 272);
  v1[26] = *(*a1 + 256);
  v1[27] = v2;
  v3 = v1[19];
  v1[28] = v1[18];
  v1[29] = v3;
  v4 = v1[13];
  v1[22] = v1[12];
  v1[23] = v4;
  v5 = v1[15];
  v1[24] = v1[14];
  v1[25] = v5;
  v6 = v1[11];
  v1[20] = v1[10];
  v1[21] = v6;
  outlined destroy of IKRig.Constraint((v1 + 20));

  free(v1);
}

uint64_t *protocol witness for Collection.subscript.getter in conformance IKRig.JointCollection@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = v2[1];
    a2[2] = result;
    a2[3] = v5;
    *a2 = v3;
    a2[1] = v4;
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance IKRig.JointCollection@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  v4 = *(v2 + 16);
  a1[2] = 0;
  a1[3] = v4;
}

uint64_t *protocol witness for Collection.index(_:offsetBy:) in conformance IKRig.JointCollection@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance IKRig.JointCollection(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance IKRig.JointCollection(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a3(*v3, v3[1]);

  return v4;
}

double protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance IKRig.ConstraintsCollection@<D0>(Swift::OpaquePointer a1@<X0>, _OWORD *a2@<X8>)
{
  IKRig.ConstraintsCollection.init(_:)(a1);
  result = *&v4;
  *a2 = v4;
  return result;
}

double _s17RealityFoundation5IKRigV5JointVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double _s17RealityFoundation5IKRigV10ConstraintVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type IKRig.Joint.ID and conformance IKRig.Joint.ID()
{
  result = lazy protocol witness table cache variable for type IKRig.Joint.ID and conformance IKRig.Joint.ID;
  if (!lazy protocol witness table cache variable for type IKRig.Joint.ID and conformance IKRig.Joint.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKRig.Joint.ID, &type metadata for IKRig.Joint.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKRig.Joint.ID and conformance IKRig.Joint.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IKRig.Joint.ID and conformance IKRig.Joint.ID;
  if (!lazy protocol witness table cache variable for type IKRig.Joint.ID and conformance IKRig.Joint.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKRig.Joint.ID, &type metadata for IKRig.Joint.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKRig.Joint.ID and conformance IKRig.Joint.ID);
  }

  return result;
}