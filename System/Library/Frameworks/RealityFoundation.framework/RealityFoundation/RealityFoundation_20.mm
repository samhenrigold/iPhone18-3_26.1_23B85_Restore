uint64_t getEnumTagSinglePayload for PbrCommonKeys.Constants(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PbrCommonKeys.Constants(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PbrCommonKeys.Constants(char *a1, char *a2)
{
  v2 = *a2;
  v3 = PbrCommonKeys.Constants.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PbrCommonKeys.Constants.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PbrCommonKeys.Constants()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PbrCommonKeys.Constants.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance PbrCommonKeys.Constants(uint64_t a1)
{
  PbrCommonKeys.Constants.rawValue.getter(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PbrCommonKeys.Constants()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PbrCommonKeys.Constants.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PbrCommonKeys.Constants@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PbrCommonKeys.Constants.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PbrCommonKeys.Constants@<X0>(unint64_t *a1@<X8>)
{
  result = PbrCommonKeys.Constants.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type PbrCommonKeys.Constants and conformance PbrCommonKeys.Constants()
{
  result = lazy protocol witness table cache variable for type PbrCommonKeys.Constants and conformance PbrCommonKeys.Constants;
  if (!lazy protocol witness table cache variable for type PbrCommonKeys.Constants and conformance PbrCommonKeys.Constants)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PbrCommonKeys.Constants, &type metadata for PbrCommonKeys.Constants, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PbrCommonKeys.Constants and conformance PbrCommonKeys.Constants);
  }

  return result;
}

unint64_t specialized PbrCommonKeys.Constants.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v2;
  }
}

uint64_t key path setter for PortalComponent.targetEntity : PortalComponent(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1)
  {
  }

  *a2 = v3;
  return result;
}

uint64_t PortalComponent.targetEntity.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*PortalComponent.targetEntity.modify(void *a1))()
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return PortalComponent.targetEntity.modify;
}

uint64_t PortalComponent.targetEntity.modify(void *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if (v2)
    {
      v3 = a1;

      a1 = v3;
    }

    v4 = a1[1];

    *v4 = v2;
  }

  else
  {
    v6 = a1[1];

    *v6 = v2;
  }

  return result;
}

void PortalComponent.clippingPlane.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v5 = *(v1 + 32);
    v3 = *(v1 + 16);
    *&v4 = vsub_f32(0, v5);
    *(&v4 + 2) = 0.0 - COERCE_FLOAT(*(v1 + 40));
    HIDWORD(v4) = 0;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
}

__int128 *PortalComponent.clippingPlane.setter(__int128 *result)
{
  v2 = *(result + 32);
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v5 = result[1];
    v3 = *result;
    *&v4 = vsub_f32(0, v5);
    *(&v4 + 2) = 0.0 - COERCE_FLOAT(*(result + 3));
    HIDWORD(v4) = 0;
  }

  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *(v1 + 48) = v2;
  return result;
}

void (*PortalComponent.clippingPlane.modify(uint64_t *a1))(float32x2_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  v4 = *(v1 + 48);
  v5 = 0uLL;
  v6 = 0uLL;
  if ((v4 & 1) == 0)
  {
    v7 = *(v1 + 32);
    v5 = *(v1 + 16);
    *&v6 = vsub_f32(0, v7);
    *(&v6 + 2) = 0.0 - COERCE_FLOAT(*(v1 + 40));
    HIDWORD(v6) = 0;
  }

  *v3 = v5;
  *(v3 + 16) = v6;
  *(v3 + 32) = v4;
  return PortalComponent.clippingPlane.modify;
}

void PortalComponent.clippingPlane.modify(float32x2_t **a1)
{
  v1 = *a1;
  v2 = v1[4].i8[0];
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v5 = v1[2];
    v3 = *v1->f32;
    *&v4 = vsub_f32(0, v5);
    *(&v4 + 2) = 0.0 - COERCE_FLOAT(*&v1[3]);
    HIDWORD(v4) = 0;
  }

  v6 = v1[5];
  *(*&v6 + 16) = v3;
  *(*&v6 + 32) = v4;
  *(*&v6 + 48) = v2;
  free(v1);
}

uint64_t PortalComponent.init(target:clippingPlane:)@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 3);
  v6 = *(a2 + 32);
  v7 = 0uLL;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1;
  v8 = 0uLL;
  *a3 = result;
  if ((v6 & 1) == 0)
  {
    *&v8 = vsub_f32(0, v4);
    *(&v8 + 2) = 0.0 - *&v5;
    HIDWORD(v8) = 0;
    v7 = v3;
  }

  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
  *(a3 + 48) = v6;
  return result;
}

uint64_t static PortalComponent.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  TargetWorldEntity = REPortalComponentGetTargetWorldEntity();
  if (TargetWorldEntity)
  {
    v4 = TargetWorldEntity;
    type metadata accessor for Entity();
    if (REEntityGetSwiftObject())
    {
      v5 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
        return result;
      }

      v8 = static Entity.entityInfoType(_:)(v4);
      if (v8)
      {
        v6 = (*(v8 + 232))();
        v9 = *(v6 + 16);

        MEMORY[0x1C68F9740](v9, 0);
        *(v6 + 16) = v4;
        MEMORY[0x1C68F9740](v4, v6);

        goto LABEL_9;
      }

      v5 = makeEntity(for:)(v4);
    }

    v6 = v5;
LABEL_9:

    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:
  UseClipPlane = REPortalComponentGetUseClipPlane();
  v11 = UseClipPlane;
  v12 = 0uLL;
  v22 = 0u;
  if (UseClipPlane)
  {
    REPortalComponentGetClipPlanePosition();
    v22 = v13;
    REPortalComponentGetClipPlaneNormal();
  }

  v21 = v12;
  AllowsCrossing = REPortalComponentGetAllowsCrossing();
  if (AllowsCrossing)
  {
    REPortalComponentGetCrossPlanePosition();
    v20 = v15;
    REPortalComponentGetCrossPlaneNormal();
    v19 = v16;

    v18 = v19;
    v17 = v20;
  }

  else
  {

    v17 = 0uLL;
    v18 = 0uLL;
  }

  *a2 = v6;
  *(a2 + 16) = v22;
  *(a2 + 32) = v21;
  *(a2 + 48) = v11 ^ 1;
  *(a2 + 64) = v17;
  *(a2 + 80) = v18;
  *(a2 + 96) = AllowsCrossing ^ 1;
  return result;
}

uint64_t PortalComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *v1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 96);

  REPortalComponentUnsetTargetWorldRoot();
  if (v2)
  {
    REPortalComponentSetTargetWorldEntity();

    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    REPortalComponentSetUseClipPlane();
    REPortalComponentSetClipPlanePosition();
    REPortalComponentSetClipPlaneNormal();
    if ((v4 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  REPortalComponentSetTargetWorldEntity();
  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  REPortalComponentSetUseClipPlane();
  if ((v4 & 1) == 0)
  {
LABEL_4:
    REPortalComponentSetAllowsCrossing();
    REPortalComponentSetCrossPlanePosition();
    REPortalComponentSetCrossPlaneNormal();
    goto LABEL_8;
  }

LABEL_7:
  REPortalComponentSetAllowsCrossing();
LABEL_8:
  RELinkedOnOrAfterFall2025OSVersions();
  REPortalComponentSetUseLegacySortMode();

  return RENetworkMarkComponentDirty();
}

void PortalComponent.clippingMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 32);
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
}

__int128 *PortalComponent.clippingMode.setter(__int128 *result)
{
  v2 = *(result + 32);
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v3 = *result;
    v4 = result[1];
  }

  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *(v1 + 48) = v2;
  return result;
}

void (*PortalComponent.clippingMode.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  v4 = *(v1 + 48);
  v5 = 0uLL;
  v6 = 0uLL;
  if ((v4 & 1) == 0)
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 32);
  }

  *v3 = v5;
  *(v3 + 16) = v6;
  *(v3 + 32) = v4;
  return PortalComponent.clippingMode.modify;
}

void PortalComponent.clippingMode.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[32];
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v3 = *v1;
    v4 = *(v1 + 1);
  }

  v5 = *(v1 + 5);
  *(v5 + 16) = v3;
  *(v5 + 32) = v4;
  *(v5 + 48) = v2;
  free(v1);
}

BOOL static PortalComponent.ClippingMode.== infix(_:_:)(int8x16_t *a1, int8x16_t *a2)
{
  if (a1[2].i8[0])
  {
    return (a2[2].i8[0] & 1) != 0;
  }

  if (a2[2].i8[0])
  {
    return 0;
  }

  if (COERCE_FLOAT(a1->i64[0]) != COERCE_FLOAT(a2->i64[0]))
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a2[1];
  v5 = vextq_s8(vextq_s8(*a1, *a1, 0xCuLL), v3, 8uLL);
  v5.i32[2] = v3.i32[0];
  v6 = vextq_s8(vextq_s8(*a2, *a2, 0xCuLL), v4, 8uLL);
  v6.i32[2] = v4.i32[0];
  if ((vminv_u16(vmovn_s32(vceqq_f32(v5, v6))) & 1) == 0)
  {
    return 0;
  }

  return vmovn_s32(vceqq_f32(*&v3, *&v4)).i8[4] & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PortalComponent.ClippingMode(__int128 *a1, uint64_t *a2)
{
  if (a1[2])
  {
    return (a2[4] & 1) != 0;
  }

  if (a2[4])
  {
    return 0;
  }

  v17 = v2;
  v18 = v3;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = *(a1 + 2);
  v9 = *(a1 + 3);
  v14 = *a1;
  v15 = v10;
  v16 = v9;
  v11.i64[0] = v5;
  v11.i64[1] = v6;
  v12 = v7;
  v13 = v8;
  return specialized static PortalComponent.Plane.== infix(_:_:)(&v14, &v11) & 1;
}

void PortalComponent.crossingMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v3 = *(v1 + 64);
    v4 = *(v1 + 80);
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
}

__int128 *PortalComponent.crossingMode.setter(__int128 *result)
{
  v2 = *(result + 32);
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v3 = *result;
    v4 = result[1];
  }

  *(v1 + 64) = v3;
  *(v1 + 80) = v4;
  *(v1 + 96) = v2;
  return result;
}

void (*PortalComponent.crossingMode.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  v4 = *(v1 + 96);
  v5 = 0uLL;
  v6 = 0uLL;
  if ((v4 & 1) == 0)
  {
    v5 = *(v1 + 64);
    v6 = *(v1 + 80);
  }

  *v3 = v5;
  *(v3 + 16) = v6;
  *(v3 + 32) = v4;
  return PortalComponent.crossingMode.modify;
}

void PortalComponent.crossingMode.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[32];
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v3 = *v1;
    v4 = *(v1 + 1);
  }

  v5 = *(v1 + 5);
  *(v5 + 64) = v3;
  *(v5 + 80) = v4;
  *(v5 + 96) = v2;
  free(v1);
}

int8x16_t PortalComponent.init(target:clippingMode:crossingMode:)@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X2>, int8x16_t *a4@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2].u8[0];
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2].u8[0];
  a4->i64[0] = a1;
  if (v6)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vdupq_n_s64(v10);
  a4[1] = vbicq_s8(v4, v11);
  a4[2] = vbicq_s8(v5, v11);
  if (v9)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  v13 = vdupq_n_s64(v12);
  a4[3].i8[0] = v6;
  v14 = vbicq_s8(v7, v13);
  result = vbicq_s8(v8, v13);
  a4[4] = v14;
  a4[5] = result;
  a4[6].i8[0] = v9;
  return result;
}

int8x16_t PortalComponent.init(target:plane:options:)@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, void *a3@<X2>, int8x16_t *a4@<X8>, int64x2_t a5@<Q0>, int64x2_t a6@<Q1>, int64x2_t a7@<Q4>)
{
  a5.i64[0] = 0;
  a6.i64[0] = *a3 & 1;
  v7 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(a6, a5)).i64[0], 0);
  v9 = *a2;
  v8 = a2[1];
  v15 = (*a3 & 1) == 0;
  a7.i64[0] = *a3 & 2;
  v10 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(a7, a5)).i64[0], 0);
  v14 = a7.i64[0] == 0;
  a4->i64[0] = a1;
  v11 = vandq_s8(v8, v7);
  v12 = vandq_s8(v8, v10);
  a4[1] = vandq_s8(v9, v7);
  a4[2] = v11;
  result = vandq_s8(v9, v10);
  a4[3].i8[0] = v15;
  a4[4] = result;
  a4[5] = v12;
  a4[6].i8[0] = v14;
  return result;
}

uint64_t one-time initialization function for positiveX()
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for positiveX);
  v3 = v0;
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of one-time initialization function for positiveX);
  static PortalComponent.Plane.positiveX = v3;
  *algn_1EBEAB070 = v2;
  return result;
}

uint64_t one-time initialization function for negativeX()
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for negativeX);
  v3 = v0;
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of one-time initialization function for negativeX);
  static PortalComponent.Plane.negativeX = v3;
  *algn_1EBEAB090 = v2;
  return result;
}

uint64_t one-time initialization function for positiveY()
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for positiveY);
  v3 = v0;
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of one-time initialization function for positiveY);
  static PortalComponent.Plane.positiveY = v3;
  *algn_1EBEAB0B0 = v2;
  return result;
}

uint64_t one-time initialization function for negativeY()
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for negativeY);
  v3 = v0;
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of one-time initialization function for negativeY);
  static PortalComponent.Plane.negativeY = v3;
  *algn_1EBEAB0D0 = v2;
  return result;
}

uint64_t one-time initialization function for positiveZ()
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for positiveZ);
  v3 = v0;
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of one-time initialization function for positiveZ);
  static PortalComponent.Plane.positiveZ = v3;
  *algn_1EBEAB0F0 = v2;
  return result;
}

uint64_t one-time initialization function for negativeZ()
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for negativeZ);
  v3 = v0;
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of one-time initialization function for negativeZ);
  static PortalComponent.Plane.negativeZ = v3;
  *algn_1EBEAB110 = v2;
  return result;
}

__n128 static PortalComponent.Plane.positiveX.getter@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X2>, __n128 *a5@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a5;
    swift_once();
    a2 = v7;
    a5 = v9;
    a3 = v8;
  }

  result = *a2;
  v6 = *a3;
  *a5 = *a2;
  a5[1] = v6;
  return result;
}

uint64_t PortalComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v32 - v6;
  v8 = v0[3];
  v9 = v0[5];
  v38 = v0[4];
  v39 = v9;
  v10 = v0[1];
  v34 = *v0;
  v35 = v10;
  v11 = v0[3];
  v13 = *v0;
  v12 = v0[1];
  v36 = v0[2];
  v37 = v11;
  v14 = v0[5];
  v32[11] = v38;
  v32[12] = v14;
  v32[7] = v13;
  v32[8] = v12;
  v40 = *(v0 + 96);
  v33 = *(v0 + 96);
  v32[9] = v36;
  v32[10] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C1897FD0;
  strcpy((v15 + 32), "targetEntity");
  *(v15 + 45) = 0;
  *(v15 + 46) = -5120;
  v16 = v34;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityCSgMd, &_s10RealityKit6EntityCSgMR);
  *(v15 + 48) = v16;
  *(v15 + 72) = v17;
  strcpy((v15 + 80), "clippingMode");
  *(v15 + 93) = 0;
  *(v15 + 94) = -5120;
  *(v15 + 120) = &type metadata for PortalComponent.ClippingMode;
  v18 = swift_allocObject();
  *(v15 + 96) = v18;
  v19 = v37;
  if (v37)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21 = vdupq_n_s64(v20);
  v22 = vbicq_s8(v35, v21);
  v23 = vbicq_s8(v36, v21);
  *(v18 + 16) = v22;
  *(v18 + 32) = v23;
  *(v18 + 48) = v19;
  strcpy((v15 + 128), "crossingMode");
  *(v15 + 141) = 0;
  *(v15 + 142) = -5120;
  *(v15 + 168) = &type metadata for PortalComponent.CrossingMode;
  v24 = swift_allocObject();
  *(v15 + 144) = v24;
  v25 = v40;
  if (v40)
  {
    v26 = -1;
  }

  else
  {
    v26 = 0;
  }

  v27 = vdupq_n_s64(v26);
  v28 = vbicq_s8(v38, v27);
  v29 = vbicq_s8(v39, v27);
  *(v24 + 16) = v28;
  *(v24 + 32) = v29;
  *(v24 + 48) = v25;
  v30 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  outlined init with copy of PortalComponent(&v34, v32);
  outlined init with copy of PortalComponent(&v34, v32);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized static PortalComponent.Plane.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if (vmovn_s32(vceqq_f32(*a1, *a2)).u8[0] & 1) != 0 && (v2 = a1[1], v3 = a2[1], (vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(*a1, *a1, 0xCuLL), v2, 8uLL), vextq_s8(vextq_s8(*a2, *a2, 0xCuLL), v3, 8uLL))))))
  {
    return vmovn_s32(vceqq_f32(*&v2, *&v3)).i8[4] & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type PortalComponent.Options and conformance PortalComponent.Options()
{
  result = lazy protocol witness table cache variable for type PortalComponent.Options and conformance PortalComponent.Options;
  if (!lazy protocol witness table cache variable for type PortalComponent.Options and conformance PortalComponent.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PortalComponent.Options, &type metadata for PortalComponent.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PortalComponent.Options and conformance PortalComponent.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalComponent.Options and conformance PortalComponent.Options;
  if (!lazy protocol witness table cache variable for type PortalComponent.Options and conformance PortalComponent.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PortalComponent.Options, &type metadata for PortalComponent.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PortalComponent.Options and conformance PortalComponent.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalComponent.Options and conformance PortalComponent.Options;
  if (!lazy protocol witness table cache variable for type PortalComponent.Options and conformance PortalComponent.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PortalComponent.Options, &type metadata for PortalComponent.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PortalComponent.Options and conformance PortalComponent.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalComponent.Options and conformance PortalComponent.Options;
  if (!lazy protocol witness table cache variable for type PortalComponent.Options and conformance PortalComponent.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PortalComponent.Options, &type metadata for PortalComponent.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PortalComponent.Options and conformance PortalComponent.Options);
  }

  return result;
}

__n128 __swift_memcpy97_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PortalComponent(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for PortalComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t Entity.debugDescriptionRecursive(indent:)(Swift::Int a1)
{
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  v3 = String.init(repeating:count:)(v2, a1);
  if (!REEntityGetChildCount())
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    goto LABEL_9;
  }

  strcpy(&v26, ", children: ");
  BYTE5(v26._object) = 0;
  HIWORD(v26._object) = -5120;
  result = REEntityGetChildCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      while (1)
      {
        result = REEntityGetChildCount();
        if (v6 >= result)
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_7;
        }
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_7:
    v28._countAndFlagsBits = v5;
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v7);

    countAndFlagsBits = v26._countAndFlagsBits;
    object = v26._object;
LABEL_9:

    MEMORY[0x1C68F3410](0x909FE22020, 0xA500000000000000);
    _StringGuts.grow(_:)(18);

    v26 = v3;
    MEMORY[0x1C68F3410](0x2720BF96E2, 0xA500000000000000);
    REEntityGetName();
    v10 = String.init(cString:)();
    MEMORY[0x1C68F3410](v10);

    MEMORY[0x1C68F3410](540680231, 0xE400000000000000);
    v11 = _typeName(_:qualified:)();
    MEMORY[0x1C68F3410](v11);

    MEMORY[0x1C68F3410](countAndFlagsBits, object);

    MEMORY[0x1C68F3410](10, 0xE100000000000000);
    v28 = v3;

    v13 = specialized static Entity.ComponentSet.Iterator.buildSnapshot(_:)(v12);

    v14 = v13[2];
    if (v14)
    {
      v15 = (v13 + 4);

      do
      {
        outlined init with copy of __REAssetService(v15, &v26);

        MEMORY[0x1C68F3410](32, 0xE100000000000000);
        __swift_project_boxed_opaque_existential_1(&v26, v27);
        swift_getDynamicType();
        v16 = _typeName(_:qualified:)();
        MEMORY[0x1C68F3410](v16);

        MEMORY[0x1C68F3410](10, 0xE100000000000000);
        MEMORY[0x1C68F3410](v3._countAndFlagsBits, v3._object);

        __swift_destroy_boxed_opaque_existential_1(&v26);
        v15 += 40;
        --v14;
      }

      while (v14);
    }

    else
    {
    }

    swift_bridgeObjectRelease_n();

    if (REEntityGetChildCount() < 1)
    {
LABEL_30:

      return v28._countAndFlagsBits;
    }

    v17 = 0;
    v18 = __OFADD__(a1, 2);
    v19 = a1 + 2;
    v20 = v18;
    while (1)
    {
      result = REEntityGetChildCount();
      if (v17 >= result)
      {
        break;
      }

      result = REEntityGetChild();
      if (!result)
      {
        goto LABEL_37;
      }

      v21 = result;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          goto LABEL_35;
        }

        specialized static Entity.entityInfoType(_:)(v21);
        if (v22)
        {
          v23 = (*(v22 + 232))();
          v24 = *(v23 + 16);

          MEMORY[0x1C68F9740](v24, 0);
          *(v23 + 16) = v21;
          MEMORY[0x1C68F9740](v21, v23);
        }

        else
        {
          makeEntity(for:)(v21);
        }
      }

      result = REEntityGetChildCount();
      if (v17 >= result)
      {
        goto LABEL_32;
      }

      if (v20)
      {
        goto LABEL_33;
      }

      ++v17;
      v25 = Entity.debugDescriptionRecursive(indent:)(v19);
      MEMORY[0x1C68F3410](v25);

      if (v17 >= REEntityGetChildCount())
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t Entity.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v17 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C189FFC0;
  *(v8 + 32) = 25705;
  *(v8 + 40) = 0xE200000000000000;

  LocalId = REEntityGetLocalId();
  v10 = MEMORY[0x1E69E76D8];
  *(v8 + 48) = LocalId;
  *(v8 + 72) = v10;
  *(v8 + 80) = 1701667182;
  *(v8 + 88) = 0xE400000000000000;
  REEntityGetName();
  v11 = String.init(cString:)();
  v12 = MEMORY[0x1E69E6158];
  *(v8 + 96) = v11;
  *(v8 + 104) = v13;
  *(v8 + 120) = v12;
  *(v8 + 128) = 0x6E656E6F706D6F63;
  *(v8 + 136) = 0xEA00000000007374;
  *(v8 + 144) = v0;
  *(v8 + 168) = &type metadata for Entity.ComponentSet;
  *(v8 + 176) = 0x6E6572646C696863;
  *(v8 + 216) = &type metadata for Entity.ChildCollection;
  *(v8 + 184) = 0xE800000000000000;
  *(v8 + 192) = v0;
  v14 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  type metadata accessor for Entity();
  swift_retain_n();
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t Entity.ComponentSet.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v13[1] = *v0;

  v13[0] = specialized _copyCollectionToContiguousArray<A>(_:)(v8);
  v9 = *MEMORY[0x1E69E7590];
  v10 = type metadata accessor for Mirror.DisplayStyle();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v7, v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit9Component_pGMd, &_sSay10RealityKit9Component_pGMR);
  lazy protocol witness table accessor for type [Component] and conformance [A](&lazy protocol witness table cache variable for type [Component] and conformance [A], &_sSay10RealityKit9Component_pGMd, &_sSay10RealityKit9Component_pGMR);
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t Entity.ChildCollection.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v13[1] = *v0;

  v13[0] = specialized _copyCollectionToContiguousArray<A>(_:)(v8);
  v9 = *MEMORY[0x1E69E7590];
  v10 = type metadata accessor for Mirror.DisplayStyle();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v7, v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit6EntityCGMd, &_sSay10RealityKit6EntityCGMR);
  lazy protocol witness table accessor for type [Component] and conformance [A](&lazy protocol witness table cache variable for type [Entity] and conformance [A], &_sSay10RealityKit6EntityCGMd, &_sSay10RealityKit6EntityCGMR);
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance Entity.ComponentSet@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, unint64_t *a5@<X5>, uint64_t a6@<X8>)
{
  v23[0] = a6;
  v23[1] = a1;
  v11 = type metadata accessor for Mirror.AncestorRepresentation();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v23 - v16;
  v23[3] = *v6;

  v23[2] = a2(v18);
  v19 = *MEMORY[0x1E69E7590];
  v20 = type metadata accessor for Mirror.DisplayStyle();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17, v19, v20);
  (*(v21 + 56))(v17, 0, 1, v20);
  (*(v12 + 104))(v14, *MEMORY[0x1E69E75D8], v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  lazy protocol witness table accessor for type [Component] and conformance [A](a5, a3, a4);
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation5IKRigV10ConstraintV_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation5IKRigV5JointV_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit12MeshResourceC0H10FoundationE8SkeletonV_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit12MeshResourceC0H10FoundationE8Level_v1V_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit12MeshResourceC0H10FoundationE8InstanceV_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit12MeshResourceC0H10FoundationE5ModelV_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit12MeshResourceC0H10FoundationE4PartV_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = a1[1];
    if (!v3)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  v4 = *(v3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_10RealityKit17AnimationResourceC5valuet_Tt1g5(*(v3 + 16), 0);
  outlined init with copy of AnimationLibraryComponent.AnimationCollection(a1, &v8);
  v6 = specialized Sequence._copySequenceContents(initializing:)(&v8, v5 + 4, v4);
  result = outlined consume of [String : AnimationResource].Iterator._Variant();
  if (v6 == v4)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation21BlendShapeWeightsDataV_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation12SkeletalPoseV_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{

  result = REEntityGetChildCount();
  if (result < 0)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      v4 = 0;
      do
      {
        result = REEntityGetChildCount();
        if (v4 >= result)
        {
          __break(1u);
          goto LABEL_11;
        }

        ++v4;
      }

      while (v3 != v4);

      v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation11IKComponentV6SolverC_Tt1g5();

      v6 = specialized Sequence._copySequenceContents(initializing:)(&v7, v5 + 32, v3, a1);

      if (v6 == v3)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

{
  result = REEntityGetChildCount();
  if (result < 0)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      v4 = 0;
      do
      {
        result = REEntityGetChildCount();
        if (v4 >= result)
        {
          __break(1u);
          goto LABEL_11;
        }

        ++v4;
      }

      while (v3 != v4);
      v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation11IKComponentV6SolverC_Tt1g5();

      v6 = specialized Sequence._copySequenceContents(initializing:)(&v7, v5 + 32, v3, a1);

      if (v6 == v3)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = a3(*(a1 + 16), 0);

  v9 = a4(&v11, v8 + 32, v4, a1, a2);

  if (v9 != v4)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSf_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copyContents(initializing:)(&v6, (v3 + 4), v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit9TransformV_Tt1g5(*(a1 + 16), 0);

  v4 = specialized Sequence._copyContents(initializing:)(&v6, v3 + 2, v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

{
  v7 = a1;
  v1 = Entity.ComponentSet.count.getter();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit9Component_p_Tt1g5(v1, 0);

  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, (v3 + 4), v2, v7);

  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v3, a1);

  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation12PhysicsJoint_p_Tt1g5(*(a2 + 16), 0);
  v6 = specialized Sequence._copySequenceContents(initializing:)(&v8, (v5 + 4), v2, a1, a2);

  if (v6 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t (*)(uint64_t *, uint64_t, void, uint64_t, uint64_t), void), uint64_t (*a4)(uint64_t *, uint64_t, void, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v8 = a3(v7, 0);

    a4 = a4(&v12, v8 + 32, v7, a1, a2);

    if (a4 == v7)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v9 = a3;
    v10 = __CocoaSet.count.getter();
    a3 = v9;
    v7 = v10;
    if (!v10)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v8;
}

uint64_t lazy protocol witness table accessor for type [Component] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v5);
    atomic_store(result, a1);
  }

  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v11 = a3;
  v12 = a2;

  v6 = Entity.ComponentSet.distance(from:to:)(&v12, &v11);

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit6EntityC12ComponentSetV0H10FoundationE5IndexV_Tt1g5(v6, 0);

  v8 = specialized Sequence._copySequenceContents(initializing:)(v10, v7 + 4, v6, a1, a2, a3);

  if (v8 != v6)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, __n128 a2)
{
  v8 = a1;
  result = Scene.AnchorCollection.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v4 = result;
      v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit12HasAnchoring_p_Tt1g5(result, 0);

      v7 = specialized Sequence._copySequenceContents(initializing:)(&v8, v5 + 4, v4, a1, v6);

      if (v7 == v4)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t result, int a2)
{
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = result;
  if (result >= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v4 = swift_allocObject();
    v5 = _swift_stdlib_malloc_size(v4);
    v4[2] = v2;
    v4[3] = 2 * v5 - 64;
    memset(v4 + 4, a2, v2);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7[5] = a3;
  v7[6] = a4;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v7[0] = a1;
      v7[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v8 = 2;
      v5 = v7;
LABEL_6:
      v9 = v5;
      v10 = 0;
      v11 = @objc createEntityUUIDComponentObject(componentType:);
      v12 = @objc destroyEntityUUIDComponentObject(componentType:rawPointer:);
      v13 = @objc didAddEntityUUIDComponentObject(componentRef:);
      v14 = @objc willRemoveEntityUUIDComponentObject(componentRef:);
      v15 = 0;
      v16 = 0;
      v17 = a4;
      v18 = a3;
      result = RECustomComponentTypeCreate();
      if (!result)
      {
        lazy protocol witness table accessor for type __RKEntityUUIDComponent.Registration.RegistrationError and conformance __RKEntityUUIDComponent.Registration.RegistrationError();
        swift_allocError();
        return swift_willThrow();
      }

      return result;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = 2;
      goto LABEL_6;
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v4)
  {
    return v7[2];
  }

  return result;
}

void __RKEntityUUIDComponent.didAdd(componentRef:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    Entity = REComponentGetEntity();
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v9 = swift_dynamicCastClassUnconditional();
      goto LABEL_4;
    }

    if ((REEntityIsBeingDestroyed() & 1) == 0)
    {
      specialized static Entity.entityInfoType(_:)(Entity);
      if (v11)
      {
        v10 = (*(v11 + 232))();
        v12 = *(v10 + 16);

        MEMORY[0x1C68F9740](v12, 0);
        *(v10 + 16) = Entity;
        MEMORY[0x1C68F9740](Entity, v10);

LABEL_8:

        *(v2 + 16) = v10;
        v29 = 91;
        v30 = 0xE100000000000000;
        v32 = 0;
        v33 = 0xE000000000000000;
        v31 = v10;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1C68F3410](v32, v33);

        MEMORY[0x1C68F3410](8285, 0xE200000000000000);
        v13 = StaticString.description.getter();
        MEMORY[0x1C68F3410](v13);

        MEMORY[0x1C68F3410](8250, 0xE200000000000000);

        v15 = v29;
        v14 = v30;
        v16 = static os_log_type_t.debug.getter();
        specialized InteractionsLogger.log(_:_:)(v16, &v29);
        SceneNullable = REEntityGetSceneNullable();
        if (SceneNullable)
        {
          v18 = SceneNullable;
          v19 = RESceneGetSwiftObject();
          type metadata accessor for Scene();
          if (v19)
          {
            swift_dynamicCastClassUnconditional();
          }

          else
          {
            swift_allocObject();
            Scene.init(coreScene:)(v18);
          }

          v20 = Scene.__interactionService.getter();

          type metadata accessor for __RKEntityInteractionManager();
          if (swift_dynamicCastClass())
          {
            v28 = v4;
            swift_beginAccess();
            v26 = v14;
            v27 = v15;
            v21 = *(v2 + 7);
            v24[2] = *(v2 + 6);
            v24[3] = v21;
            v24[1] = *(v2 + 5);
            v25 = v20;

            UUID.init(uuid:)();
            __RKEntityLookupTable.updateEntity(_:for:)(v10, v7);
            swift_unknownObjectRelease();

            (*(v5 + 8))(v7, v28);
            v32 = v27;
            v33 = v26;
            v22 = static os_log_type_t.debug.getter();
            specialized InteractionsLogger.log(_:_:)(v22, &v32);
LABEL_16:

            return;
          }

          SceneNullable = swift_unknownObjectRelease();
        }

        MEMORY[0x1EEE9AC00](SceneNullable);
        v29 = v15;
        v30 = v14;
        static os_log_type_t.error.getter();
        specialized InteractionsLogger.log(_:_:)();
        v29 = v15;
        v30 = v14;
        v23 = static os_log_type_t.debug.getter();
        specialized InteractionsLogger.log(_:_:)(v23, &v29);
        goto LABEL_16;
      }

      v9 = makeEntity(for:)(Entity);
LABEL_4:
      v10 = v9;
      goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t closure #1 in SyncInfoContext.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SyncInfoContext.Buffer(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  Object = RECustomComponentGetObject();
  if (!Object)
  {
    return 0;
  }

  v26 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v9;
  v25 = v10;
  v28 = v13;
  v29 = v6;
  v30 = v5;
  v31 = a4;
  v15 = *(Object + 16);
  v33 = *Object;
  v34 = v15;
  v16 = v8;
  v17 = BYTE3(v33);
  v18 = BYTE2(v33);
  v19 = BYTE1(v33);
  v20 = v33;
  outlined init with copy of __RKEntityUUIDComponent(&v33, v32);
  v21 = v16;
  UUID.init(uuid:)();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    LOBYTE(result) = 10;
    v17 = v30;
    v20 = v28;
    v19 = v29;
    v18 = v26;
    v16 = v27;
    goto LABEL_8;
  }

  if ((Character._isSingleScalar.getter() & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  result = specialized Collection.first.getter(0x49uLL, 0xE100000000000000);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v17 = v30;
  v20 = v28;
  v19 = v29;
  v18 = v26;
  v16 = v27;
  if ((result & 0xFFFFFF80) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = specialized Collection.first.getter(0x49uLL, 0xE100000000000000);
  if ((result & 0x100000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((result & 0xFFFFFF00) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

LABEL_8:
  *v18 = result;
  (*(v19 + 16))(v18 + *(v16 + 5), v21, v17);
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
LABEL_22:
    v23 = 10;
LABEL_14:
    (*(v19 + 8))(v21, v17);
    *(v18 + *(v16 + 6)) = v23;
    outlined init with take of SyncInfoContext.Buffer(v18, v20);
    if ((v25 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v25))
      {
        v24 = RENetSyncBufferWrite();
        outlined destroy of __RKEntityUUIDComponent(&v33);
        outlined destroy of SyncInfoContext.Buffer(v20);
        return v24;
      }

LABEL_28:
      __break(1u);
    }

    goto LABEL_26;
  }

  if ((Character._isSingleScalar.getter() & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = specialized Collection.first.getter(0x45uLL, 0xE100000000000000);
  if ((result & 0x100000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((result & 0xFFFFFF80) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = specialized Collection.first.getter(0x45uLL, 0xE100000000000000);
  if ((result & 0x100000000) == 0)
  {
    v23 = result;
    if ((result & 0xFFFFFF00) != 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_14;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t closure #2 in SyncInfoContext.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SyncInfoContext.Buffer(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 > a5)
  {
    return 0;
  }

  result = RECustomComponentGetObject();
  if (!result)
  {
    return result;
  }

  v15 = *a4;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (Character._isSingleScalar.getter())
    {
      result = specialized Collection.first.getter(0x49uLL, 0xE100000000000000);
      if ((result & 0x100000000) != 0)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if ((result & 0xFFFFFF80) == 0)
      {
        result = specialized Collection.first.getter(0x49uLL, 0xE100000000000000);
        if ((result & 0x100000000) != 0)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if ((result & 0xFFFFFF00) == 0)
        {
          if (v15 == result)
          {
            goto LABEL_10;
          }

          return 0;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        if (v15 == 10)
        {
          goto LABEL_17;
        }

        return 0;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v15 == 10)
  {
LABEL_10:
    v15 = a4[*(v11 + 24)];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      result = Character._isSingleScalar.getter();
      if (result)
      {
        result = specialized Collection.first.getter(0x45uLL, 0xE100000000000000);
        if ((result & 0x100000000) != 0)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ((result & 0xFFFFFF80) == 0)
        {
          result = specialized Collection.first.getter(0x45uLL, 0xE100000000000000);
          if ((result & 0x100000000) != 0)
          {
LABEL_32:
            __break(1u);
            return result;
          }

          if ((result & 0xFFFFFF00) == 0)
          {
            if (v15 == result)
            {
LABEL_17:
              outlined init with copy of SyncInfoContext.Buffer(a4, v13);
              (*(v8 + 32))(v10, &v13[*(v11 + 20)], v7);
              __RKEntityUUIDComponent.uuid.setter(v10);
              return 1;
            }

            return 0;
          }

          goto LABEL_28;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  return 0;
}

uint64_t __RKEntityUUIDComponent.uuid.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuid:)();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    *v1 = UUID.uuid.getter();
    v1[1] = v7;
    if (v1[2])
    {

      SceneNullable = REEntityGetSceneNullable();
      if (SceneNullable)
      {
        v9 = SceneNullable;
        v10 = RESceneGetSwiftObject();
        type metadata accessor for Scene();
        if (v10)
        {
          swift_dynamicCastClassUnconditional();
        }

        else
        {
          swift_allocObject();
          Scene.init(coreScene:)(v9);
        }

        v11 = Scene.__interactionService.getter();

        type metadata accessor for __RKEntityInteractionManager();
        v12 = swift_dynamicCastClass();
        if (!v12)
        {

          swift_unknownObjectRelease();
          goto LABEL_12;
        }

        v13 = v12;
        swift_beginAccess();
        v26 = v11;
        v14 = *(v13 + 40);
        v27 = 91;
        v28 = 0xE100000000000000;
        v30 = 0;
        v31 = 0xE000000000000000;
        v29 = v14;
        swift_retain_n();
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1C68F3410](v30, v31);

        MEMORY[0x1C68F3410](8285, 0xE200000000000000);
        v15 = StaticString.description.getter();
        MEMORY[0x1C68F3410](v15);

        MEMORY[0x1C68F3410](8250, 0xE200000000000000);

        v17 = v28;
        MEMORY[0x1EEE9AC00](v16);
        v27 = v18;
        v28 = v17;
        static os_log_type_t.debug.getter();
        specialized InteractionsLogger.log(_:_:)();

        swift_beginAccess();
        specialized Dictionary.removeValue(forKey:)(v6);
        swift_endAccess();
        v27 = 91;
        v28 = 0xE100000000000000;
        v30 = 0;
        v31 = 0xE000000000000000;
        v29 = v14;

        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1C68F3410](v30, v31);

        MEMORY[0x1C68F3410](8285, 0xE200000000000000);
        v19 = StaticString.description.getter();
        MEMORY[0x1C68F3410](v19);

        MEMORY[0x1C68F3410](8250, 0xE200000000000000);

        v21 = v28;
        MEMORY[0x1EEE9AC00](v20);
        v27 = v22;
        v28 = v21;

        static os_log_type_t.debug.getter();
        specialized InteractionsLogger.log(_:_:)();

        swift_beginAccess();

        specialized Dictionary._Variant.updateValue(_:forKey:)(v23, a1);
        swift_endAccess();
        swift_unknownObjectRelease();
      }
    }
  }

LABEL_12:
  v24 = *(v4 + 8);
  v24(a1, v3);
  return (v24)(v6, v3);
}

void *__RKEntityUUIDComponent.Registration.init()()
{
  v14 = *MEMORY[0x1E69E9840];
  REStructBuilderCreate();
  String.utf8CString.getter();
  v2 = REStructBuilderInit();

  if (!v2 || (String.utf8CString.getter(), REStructBuilderAddMemberCStyleArrayDataTypeWithTag(), , (v3 = RECIntrospectionStructRegister()) == 0))
  {
    lazy protocol witness table accessor for type __RKEntityUUIDComponent.Registration.RegistrationError and conformance __RKEntityUUIDComponent.Registration.RegistrationError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  v0[2] = v3;
  v4 = v3;
  v5 = swift_slowAlloc();
  v0[3] = v5;
  *v5 = closure #1 in SyncInfoContext.init(_:);
  v5[1] = 0;
  v5[2] = closure #2 in SyncInfoContext.init(_:);
  v5[3] = 0;
  v8 = 48;
  v9 = 1;
  v10 = v5;
  v11 = @objc writeCallback(syncInfoContextRawPointer:entity:component:componentType:outBuffer:);
  v12 = @objc readCallback(syncInfoContextRawPointer:entity:component:componentType:snapshotBuffer:snapshotBufferLen:);
  v13 = 1;
  v6 = specialized String.withCString<A>(_:)(0x444955554152, 0xE600000000000000, &v8, v4);
  if (v1)
  {
LABEL_6:
    REStructBuilderDestroy();
    type metadata accessor for __RKEntityUUIDComponent.Registration();
    swift_deallocPartialClassInstance();
    return v0;
  }

  v0[4] = v6;
  REStructBuilderDestroy();
  return v0;
}

uint64_t @objc writeCallback(syncInfoContextRawPointer:entity:component:componentType:outBuffer:)(uint64_t (**a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = *a1;

    v10 = v9(a2, a3, a4, a5);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t @objc readCallback(syncInfoContextRawPointer:entity:component:componentType:snapshotBuffer:snapshotBufferLen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v11 = *(a1 + 16);

    v12 = v11(a2, a3, a4, a5, a6);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t closure #1 in __RKEntityUUIDComponent.Registration.init()@<X0>(uint64_t *a4@<X8>)
{
  result = RECustomComponentTypeCreate();
  if (result)
  {
    *a4 = result;
  }

  else
  {
    lazy protocol witness table accessor for type __RKEntityUUIDComponent.Registration.RegistrationError and conformance __RKEntityUUIDComponent.Registration.RegistrationError();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t @objc destroyEntityUUIDComponentObject(componentType:rawPointer:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of __RKEntityUUIDComponent(a2);

  return RECIntrospectionFree();
}

void @objc didAddEntityUUIDComponentObject(componentRef:)(uint64_t a1)
{
  if (RECustomComponentGetObject())
  {
    __RKEntityUUIDComponent.didAdd(componentRef:)(a1);
  }
}

double @objc willRemoveEntityUUIDComponentObject(componentRef:)(uint64_t a1)
{
  if (RECustomComponentGetObject())
  {
    return specialized __RKEntityUUIDComponent.willRemove(componentRef:)();
  }

  return result;
}

void *__RKEntityUUIDComponent.Registration.deinit()
{
  RECustomComponentTypeDestroy();
  RECIntrospectionStructUnregister();
  MEMORY[0x1C6902A30](*(v0 + 24), -1, -1);
  return v0;
}

uint64_t __RKEntityUUIDComponent.Registration.__deallocating_deinit()
{
  RECustomComponentTypeDestroy();
  RECIntrospectionStructUnregister();
  MEMORY[0x1C6902A30](*(v0 + 24), -1, -1);

  return swift_deallocClassInstance();
}

double static __RKEntityUUIDComponent.registration.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static __RKEntityUUIDComponent.registration.setter(void *a1)
{
  swift_beginAccess();
  static __RKEntityUUIDComponent.registration = a1;
}

uint64_t key path setter for static __RKEntityUUIDComponent.registration : __RKEntityUUIDComponent.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static __RKEntityUUIDComponent.registration = v1;
}

uint64_t Entity.__interactionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
  {
    UUID.init(uuid:)();
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = type metadata accessor for UUID();
  return (*(*(v3 - 8) + 56))(a1, v2, 1, v3);
}

uint64_t key path setter for Entity.__interactionIdentifier : Entity(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of UUID?(a1, &v6 - v3);
  return Entity.__interactionIdentifier.setter(v4);
}

uint64_t Entity.__interactionIdentifier.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  swift_beginAccess();
  if (!static __RKEntityUUIDComponent.registration)
  {
    return outlined destroy of UUID?(a1);
  }

  outlined init with copy of UUID?(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of UUID?(v4);
    if (REEntityGetCustomComponent())
    {
      REEntityRemoveComponentByClass();
    }

    return outlined destroy of UUID?(a1);
  }

  (*(v6 + 32))(v11, v4, v5);
  if (REEntityGetCustomComponent() || REEntityAddComponentByClass())
  {
    if (RECustomComponentGetObject())
    {
      (*(v6 + 16))(v8, v11, v5);
      __RKEntityUUIDComponent.uuid.setter(v8);
    }
  }

  outlined destroy of UUID?(a1);
  return (*(v6 + 8))(v11, v5);
}

void (*Entity.__interactionIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  swift_beginAccess();
  if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
  {
    UUID.init(uuid:)();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(v8, v9, 1, v10);
  return Entity.__interactionIdentifier.modify;
}

void Entity.__interactionIdentifier.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of UUID?(v4, v3);
    Entity.__interactionIdentifier.setter(v3);
    outlined destroy of UUID?(v4);
  }

  else
  {
    Entity.__interactionIdentifier.setter(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t __EntityRef.__validInteractionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  swift_beginAccess();
  if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
  {
    UUID.init(uuid:)();
    return (*(v7 + 32))(a1, v9, v6);
  }

  else
  {
    UUID.init()();
    (*(v7 + 16))(v5, a1, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    specialized static __RKEntityUUIDComponent.setUUID(_:on:)(v5, v10);
    return outlined destroy of UUID?(v5);
  }
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

void *specialized createEntityUUIDComponentObject(componentType:)()
{
  result = RECIntrospectionAlloc();
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  return result;
}

double specialized __RKEntityUUIDComponent.willRemove(componentRef:)()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v40 = 91;
  v41 = 0xE100000000000000;
  if (v6)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    v38 = v6;

    _print_unlocked<A, B>(_:_:)();
    v7 = v35;
    v8 = v36;
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x1C68F3410](v7, v8);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v9 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v9);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v11 = v40;
  v10 = v41;
  v12 = static os_log_type_t.debug.getter();
  v13 = specialized InteractionsLogger.log(_:_:)(v12, &v40);
  if (!v6)
  {
    goto LABEL_13;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {

LABEL_13:
    *(v1 + 16) = 0;
    MEMORY[0x1EEE9AC00](v13);
    v40 = v11;
    v41 = v10;
    static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)();
    v40 = v11;
    v41 = v10;
    v27 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v27, &v40);
    goto LABEL_14;
  }

  v15 = SceneNullable;
  v16 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v16)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v15);
  }

  v17 = Scene.__interactionService.getter();

  type metadata accessor for __RKEntityInteractionManager();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

    v13 = swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v19 = v18;
  swift_beginAccess();
  v30 = v17;
  v31 = v10;
  v20 = *(v19 + 40);
  v33 = v2;
  v34 = v11;
  v21 = *(v1 + 7);
  v29[2] = *(v1 + 6);
  v29[3] = v21;
  v29[1] = *(v1 + 5);
  v32 = v3;

  UUID.init(uuid:)();
  v35 = 91;
  v36 = 0xE100000000000000;
  v38 = 0;
  v39 = 0xE000000000000000;
  v37 = v20;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v38, v39);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v22 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v22);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v24 = v36;
  MEMORY[0x1EEE9AC00](v23);
  v35 = v25;
  v36 = v24;
  static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)();

  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(v5);
  swift_endAccess();
  swift_unknownObjectRelease();

  (*(v32 + 8))(v5, v33);

  *(v1 + 16) = 0;
  v35 = v34;
  v36 = v31;
  v26 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v26, &v35);
LABEL_14:

  return result;
}

uint64_t specialized static __RKEntityUUIDComponent.setUUID(_:on:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  result = swift_beginAccess();
  if (static __RKEntityUUIDComponent.registration)
  {
    outlined init with copy of UUID?(a1, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      outlined destroy of UUID?(v5);
      result = REEntityGetCustomComponent();
      if (result)
      {
        return REEntityRemoveComponentByClass();
      }
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      if (REEntityGetCustomComponent() || REEntityAddComponentByClass())
      {
        if (RECustomComponentGetObject())
        {
          (*(v7 + 16))(v9, v12, v6);
          __RKEntityUUIDComponent.uuid.setter(v9);
        }
      }

      return (*(v7 + 8))(v12, v6);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __RKEntityUUIDComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for __RKEntityUUIDComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncInfoContext(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for SyncInfoContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityUUIDComponent.Registration.RegistrationError and conformance __RKEntityUUIDComponent.Registration.RegistrationError()
{
  result = lazy protocol witness table cache variable for type __RKEntityUUIDComponent.Registration.RegistrationError and conformance __RKEntityUUIDComponent.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKEntityUUIDComponent.Registration.RegistrationError and conformance __RKEntityUUIDComponent.Registration.RegistrationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityUUIDComponent.Registration.RegistrationError, &type metadata for __RKEntityUUIDComponent.Registration.RegistrationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityUUIDComponent.Registration.RegistrationError and conformance __RKEntityUUIDComponent.Registration.RegistrationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityUUIDComponent.Registration.RegistrationError and conformance __RKEntityUUIDComponent.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKEntityUUIDComponent.Registration.RegistrationError and conformance __RKEntityUUIDComponent.Registration.RegistrationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityUUIDComponent.Registration.RegistrationError, &type metadata for __RKEntityUUIDComponent.Registration.RegistrationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityUUIDComponent.Registration.RegistrationError and conformance __RKEntityUUIDComponent.Registration.RegistrationError);
  }

  return result;
}

uint64_t type metadata accessor for SyncInfoContext.Buffer(uint64_t a1)
{
  result = type metadata singleton initialization cache for SyncInfoContext.Buffer;
  if (!type metadata singleton initialization cache for SyncInfoContext.Buffer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of SyncInfoContext.Buffer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncInfoContext.Buffer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SyncInfoContext.Buffer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncInfoContext.Buffer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SyncInfoContext.Buffer(uint64_t a1)
{
  v2 = type metadata accessor for SyncInfoContext.Buffer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for SyncInfoContext.Buffer(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t specialized static MonoImageMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 0;
  if (a1 == a4 && ((a5 ^ a2) & 0xFFFFFFFF000000FFLL) == 0)
  {
    if ((a3 & 0x100000000) != 0)
    {
      if ((a6 & 0x100000000) != 0)
      {
        return 1;
      }
    }

    else if ((a6 & 0x100000000) == 0 && *&a3 == *&a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t specialized MonoImageMetadata.Location.init(imageIOString:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1C68F3280](a1);

  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  v3 = v2;
  v4 = static _CFObject.== infix(_:_:)();

  if (v4)
  {

    return 0;
  }

  else
  {
    v6 = v3;
    v7 = static _CFObject.== infix(_:_:)();

    if (v7)
    {

      return 1;
    }

    else
    {
      v8 = v6;
      v9 = static _CFObject.== infix(_:_:)();

      if (v9)
      {

        return 2;
      }

      else
      {
        v10 = static _CFObject.== infix(_:_:)();

        if (v10)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t specialized MonoImageMetadata.init(imageSource:index:location:)(CGImageSource *a1, size_t a2)
{
  v4 = CGImageSourceCopyPropertiesAtIndex(a1, a2, 0);
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  _StringGuts.grow(_:)(44);

  v11 = 0xD000000000000029;
  v12 = 0x80000001C18E3BC0;
  v13 = a2;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v6);

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  v7 = v11;
  v8 = v12;
  lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
  swift_allocError();
  *v9 = v7;
  v9[1] = v8;
  swift_willThrow();

  return v8;
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable(protocol conformance descriptor for CFStringRef, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable(protocol conformance descriptor for CFStringRef, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MonoImageMetadata(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 21))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MonoImageMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MonoImageMetadata.Location and conformance MonoImageMetadata.Location()
{
  result = lazy protocol witness table cache variable for type MonoImageMetadata.Location and conformance MonoImageMetadata.Location;
  if (!lazy protocol witness table cache variable for type MonoImageMetadata.Location and conformance MonoImageMetadata.Location)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MonoImageMetadata.Location, &type metadata for MonoImageMetadata.Location, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MonoImageMetadata.Location and conformance MonoImageMetadata.Location);
  }

  return result;
}

uint64_t _OrderedCoatCheckBagRef.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t _OrderedCoatCheckBagRef.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*v4 + 80);
  type metadata accessor for OrderedCoatCheckBag.Ticket(255, v7, a3, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32[-v13];
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v32[-v17];
  v19 = *(v5 + 24);
  v21 = *(v20 + 48);
  *v18 = v19;
  *(v18 + 1) = v5;
  v22 = *(v7 - 8);
  (*(v22 + 16))(&v32[v21 - v17], a1, v7, v16);
  swift_beginAccess();
  if (*(v5 + 16))
  {
    (*(v9 + 16))(v14, v18, TupleTypeMetadata2);
    v23 = *(v14 + 1);
    v24 = *(TupleTypeMetadata2 + 48);
    *v11 = *v14;
    *(v11 + 1) = v23;
    (*(v22 + 32))(&v11[v24], &v14[v24], v7);
    swift_beginAccess();
  }

  else
  {
    v25 = ContiguousArray.init()();
    swift_beginAccess();
    *(v5 + 16) = v25;

    (*(v9 + 16))(v14, v18, TupleTypeMetadata2);
    v26 = *(v14 + 1);
    v27 = *(TupleTypeMetadata2 + 48);
    *v11 = *v14;
    *(v11 + 1) = v26;
    (*(v22 + 32))(&v11[v27], &v14[v27], v7);
  }

  type metadata accessor for ContiguousArray();
  ContiguousArray.append(_:)();
  swift_endAccess();
  result = (*(v9 + 8))(v18, TupleTypeMetadata2);
  v29 = *(v5 + 24);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 24) = v31;
    return v19;
  }

  return result;
}

uint64_t _OrderedCoatCheckBagRef.remove(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v6 = v5;
  v64 = a1;
  v9 = *(*v6 + 80);
  type metadata accessor for OrderedCoatCheckBag.Ticket(255, v9, a4, a5);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v58 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = swift_getTupleTypeMetadata2();
  v69 = type metadata accessor for Optional();
  v21 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v51 - v25;
  if (a2 == v6)
  {
    v59 = *(v9 - 8);
    v56 = *(v59 + 56);
    v55 = v59 + 56;
    v56(a3, 1, 1, v9, v24);
    result = swift_beginAccess();
    v28 = v6[2];
    if (v28)
    {
      v71 = v9;
      v54 = a3;
      v73[0] = v28;
      v29 = type metadata accessor for ContiguousArray();

      swift_getWitnessTable(MEMORY[0x1E69E6C20], v29);
      if (Collection.isEmpty.getter())
      {
        goto LABEL_17;
      }

      v70 = v19;
      v62 = v6;
      v73[0] = v28;
      WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6C08], v29, v28);
      MEMORY[0x1C68F3540](v72, v29, WitnessTable);
      v72[3] = v72[0];
      type metadata accessor for EnumeratedSequence();
      EnumeratedSequence.makeIterator()();
      v53 = v29;
      v31 = type metadata accessor for EnumeratedSequence.Iterator();
      v66 = (v21 + 32);
      v67 = v31;
      v65 = v20 - 8;
      v32 = (v59 + 32);
      v59 = v11 + 8;
      v52 = (v11 + 32);
      v61 = v20;
      for (i = v26; ; v26 = i)
      {
        v33 = v68;
        EnumeratedSequence.Iterator.next()();
        (*v66)(v26, v33, v69);
        if ((*(*(v20 - 8) + 48))(v26, 1, v20) == 1)
        {
        }

        v34 = &v26[*(v20 + 48)];
        v35 = *v34;
        v36 = *(v34 + 1);
        v37 = TupleTypeMetadata2;
        v38 = *(TupleTypeMetadata2 + 48);
        v39 = *v32;
        v40 = v63;
        v41 = v71;
        (*v32)(&v63[v38], &v34[v38], v71);
        v42 = *(v37 + 48);
        v43 = v70;
        *v70 = v35;
        *(v43 + 1) = v36;
        v39(&v43[v42], &v40[v38], v41);
        v45 = v35 == v64;
        v44 = v62;
        v45 = v45 && v36 == v62;
        if (v45)
        {
          swift_beginAccess();
          if (!v44[2])
          {
            __break(1u);
            goto LABEL_17;
          }

          v46 = v57;
          ContiguousArray.remove(at:)();
          swift_endAccess();
          TupleTypeMetadata2 = v37;
          (*v59)(v70, v37);
          v47 = v71;
          v48 = type metadata accessor for Optional();
          v49 = v54;
          (*(*(v48 - 8) + 8))(v54, v48);
          v50 = v58;
          (*v52)(v58, v46, TupleTypeMetadata2);
          v39(v49, &v50[*(TupleTypeMetadata2 + 48)], v47);
          (v56)(v49, 0, 1, v47);
        }

        else
        {
          (*v59)(v43, v37);
          TupleTypeMetadata2 = v37;
        }

        v20 = v61;
      }
    }
  }

  else
  {
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _OrderedCoatCheckBagRef.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata instantiation function for OrderedCoatCheckBag(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for OrderedCoatCheckBag.Ticket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Int OrderedCoatCheckBag.Ticket.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OrderedCoatCheckBag<A>.Ticket()
{
  Hasher.init(_seed:)();
  OrderedCoatCheckBag.Ticket.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t OrderedCoatCheckBag._checkForSharedOwnership()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  type metadata accessor for _OrderedCoatCheckBagRef(0, *(a1 + 16), a3, a4);
  if (v5)
  {
    result = isKnownUniquelyReferenced<A>(_:)();
    if (result)
    {
      return result;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *v4 = result;
  return result;
}

uint64_t OrderedCoatCheckBag.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OrderedCoatCheckBag._checkForSharedOwnership()(a2, a2, a3, a4);
  if (*v4)
  {
    return _OrderedCoatCheckBagRef.append(_:)(a1, v7, v8, v9);
  }

  __break(1u);
  return result;
}

uint64_t OrderedCoatCheckBag.remove(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  result = OrderedCoatCheckBag._checkForSharedOwnership()(a3, a2, a3, a4);
  if (*v5)
  {
    return _OrderedCoatCheckBagRef.remove(_:)(a1, a2, a5, v10, v11);
  }

  __break(1u);
  return result;
}

uint64_t _OrderedCoatCheckBagRef.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  type metadata accessor for OrderedCoatCheckBag.Ticket(255, v5, a3, a4);
  v37 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v34 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v33 = v28 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v35 = v28 - v11;
  swift_beginAccess();
  v12 = v4[2];
  if (!v12)
  {
    return 0x74706D6528676142;
  }

  v40 = 0;
  v41 = 0xE000000000000000;

  _StringGuts.grow(_:)(26);

  v40 = 0x6E756F6328676142;
  v41 = 0xEB00000000203A74;
  v38 = ContiguousArray.count.getter();
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v13);

  result = MEMORY[0x1C68F3410](0x6E65746E6F63202CLL, 0xED00005B203A7374);
  v32 = *(v12 + 16);
  if (v32)
  {
    v15 = 0;
    v16 = v37;
    v17 = *(TupleTypeMetadata2 + 48);
    v29 = v12 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v30 = v17;
    v28[1] = v37 - 8;
    v28[2] = v36 + 16;
    v28[0] = v36 + 8;
    v31 = v12;
    while (v15 < *(v12 + 16))
    {
      v18 = v35;
      v19 = v36;
      (*(v36 + 16))(v35, v29 + *(v36 + 72) * v15++, TupleTypeMetadata2);
      v20 = *v18;
      v21 = *(v18 + 1);
      v22 = *(TupleTypeMetadata2 + 48);
      v23 = v33;
      *v33 = *v18;
      *(v23 + 1) = v21;
      v24 = *(v16 - 8);
      (*(v24 + 32))(&v23[v22], &v18[v30], v16);
      v38 = 0;
      v39 = 0xE000000000000000;
      v25 = *(TupleTypeMetadata2 + 48);
      v26 = v34;
      *v34 = v20;
      *(v26 + 1) = v21;
      (*(v24 + 16))(&v26[v25], &v23[v22], v16);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v27 = *(v19 + 8);
      v27(v26, TupleTypeMetadata2);
      MEMORY[0x1C68F3410](v38, v39);

      result = (v27)(v23, TupleTypeMetadata2);
      v12 = v31;
      if (v32 == v15)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    MEMORY[0x1C68F3410](10589, 0xE200000000000000);
    return v40;
  }

  return result;
}

uint64_t OrderedCoatCheckBag.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return _OrderedCoatCheckBagRef.debugDescription.getter(a1, a2, a3, a4);
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t _OrderedCoatCheckBagRef.makeIterator()()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = v1[2];
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    v5 = *(v2 + 80);
    type metadata accessor for OrderedCoatCheckBag.Ticket(255, v5, v6, v7);

    swift_getTupleTypeMetadata2();
    v8 = ContiguousArray.count.getter();
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v4;
    v9[4] = v8;
    v9[5] = v3;
  }

  else
  {
    *(swift_allocObject() + 16) = *(v2 + 80);
  }

  return AnyIterator.init(_:)();
}

uint64_t closure #2 in _OrderedCoatCheckBagRef.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for OrderedCoatCheckBag.Ticket(255, a4, a3, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v17[-v10];
  swift_beginAccess();
  if (*(a1 + 16) >= a2)
  {
    return (*(*(a4 - 8) + 56))(a5, 1, 1, a4);
  }

  ContiguousArray.subscript.getter();
  v12 = *(a4 - 8);
  (*(v12 + 32))(a5, &v11[*(TupleTypeMetadata2 + 48)], a4);
  result = swift_beginAccess();
  v14 = *(a1 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v16;
    return (*(v12 + 56))(a5, 0, 1, a4);
  }

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance _OrderedCoatCheckBagRef<A>@<X0>(uint64_t *a1@<X8>)
{
  v2 = _OrderedCoatCheckBagRef.makeIterator()();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance _OrderedCoatCheckBagRef<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _OrderedCoatCheckBagRef(0, *(a1 + 80), a3, a4);
  v4 = specialized Sequence._copyToContiguousArray()();

  return v4;
}

void protocol witness for Sequence._copyContents(initializing:) in conformance _OrderedCoatCheckBagRef<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _OrderedCoatCheckBagRef(0, *(a4 + 80), a3, a4);

  JUMPOUT(0x1C68F3550);
}

uint64_t OrderedCoatCheckBag.makeIterator()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return _OrderedCoatCheckBagRef.makeIterator()();
  }

  *(swift_allocObject() + 16) = a2;

  return AnyIterator.init(_:)();
}

uint64_t protocol witness for Sequence.makeIterator() in conformance OrderedCoatCheckBag<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = OrderedCoatCheckBag.makeIterator()(*v2, *(a1 + 16));

  *a2 = v4;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedCoatCheckBag<A>(uint64_t a1, uint64_t a2)
{
  v2 = specialized Sequence._copyToContiguousArray()();

  return v2;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of ForceEffectBase(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(a1, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      outlined init with take of ForceEffectBase((*(v11 + 56) + 40 * v9), v14);
      specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return outlined destroy of BodyTrackingComponent?(v14, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  }

  return result;
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  v3 = v2;
  if (*(a1 + 8))
  {
    outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGSgMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGSgMR);
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v10 = v13;
      }

      outlined init with take of AnySubscriber<EngineRenderEvent, Never>(*(v10 + 56) + 8 * v8, &v15, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
      specialized _NativeDictionary._delete(at:)(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return outlined destroy of BodyTrackingComponent?(&v15, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGSgMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGSgMR);
  }

  else
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(a1, &v15, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    outlined destroy of BodyTrackingComponent?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    (*(v9 + 8))(a2, v8);
    return outlined destroy of BodyTrackingComponent?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v16;
  }

  return result;
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9LoadTraceVSgMd, &_s17RealityFoundation9LoadTraceVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  Trace = type metadata accessor for LoadTrace(0);
  v10 = *(Trace - 8);
  v11 = MEMORY[0x1EEE9AC00](Trace);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, Trace, v11) == 1)
  {
    outlined destroy of BodyTrackingComponent?(a1, &_s17RealityFoundation9LoadTraceVSgMd, &_s17RealityFoundation9LoadTraceVSgMR);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v18 = v22;
      }

      outlined init with take of LoadTrace(*(v18 + 56) + *(v10 + 72) * v16, v8);
      specialized _NativeDictionary._delete(at:)(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, Trace);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, Trace);
    }

    return outlined destroy of BodyTrackingComponent?(v8, &_s17RealityFoundation9LoadTraceVSgMd, &_s17RealityFoundation9LoadTraceVSgMR);
  }

  else
  {
    outlined init with take of LoadTrace(a1, v13);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of REEventBus.DispatcherHandle(a2);
    *v2 = v6;
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(a1, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    outlined destroy of REEventBus.DispatcherHandle(a2);
    return outlined destroy of BodyTrackingComponent?(v7, &_sypSgMd, &_sypSgMR);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit16__RKEntityActionC0D16StateObservationVSgMd, &_s10RealityKit16__RKEntityActionC0D16StateObservationVSgMR);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v12 = v14;
      }

      outlined init with take of __RKEntityAction.ActionStateObservation(*(v12 + 56) + 16 * v10, &v15);
      specialized _NativeDictionary._delete(at:)(v10, v12);
      *v3 = v12;
    }

    else
    {
      v15 = xmmword_1C18A4F10;
    }

    return outlined destroy of BodyTrackingComponent?(&v15, &_s10RealityKit16__RKEntityActionC0D16StateObservationVSgMd, &_s10RealityKit16__RKEntityActionC0D16StateObservationVSgMR);
  }

  else
  {
    outlined init with take of __RKEntityAction.ActionStateObservation(a1, &v15);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v15, a2, v6);
    *v2 = v13;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[0] = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of CustomMaterial.CustomShaderParameters(a2);
    *v2 = *&v20[0];
  }

  else
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v22 = *v3;
      if (!v11)
      {
        specialized _NativeDictionary.copy()();
        v12 = v22;
      }

      v13 = *(v12 + 48) + 120 * v10;
      v15 = *(v13 + 32);
      v14 = *(v13 + 48);
      v16 = *(v13 + 16);
      v20[0] = *v13;
      v20[1] = v16;
      v20[2] = v15;
      v20[3] = v14;
      v17 = *(v13 + 64);
      v18 = *(v13 + 80);
      v19 = *(v13 + 96);
      v21 = *(v13 + 112);
      v20[5] = v18;
      v20[6] = v19;
      v20[4] = v17;
      outlined destroy of CustomMaterial.CustomShaderParameters(v20);

      specialized _NativeDictionary._delete(at:)(v10, v12);
      result = outlined destroy of CustomMaterial.CustomShaderParameters(a2);
      *v3 = v12;
    }

    else
    {

      return outlined destroy of CustomMaterial.CustomShaderParameters(a2);
    }
  }

  return result;
}

Swift::Int specialized Dictionary.subscript.setter(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2 & 0xFFFF0001, a3, a4 & 0xFFFF01, isUniquelyReferenced_nonNull_native);
    *v4 = v16;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 0xFFFF0001, a3, a4 & 0xFFFF01);
    if (v12)
    {
      v13 = result;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v17 = *v5;
      if (!v14)
      {
        specialized _NativeDictionary.copy()();
        v15 = v17;
      }

      result = specialized _NativeDictionary._delete(at:)(v13, v15);
      *v5 = v15;
    }
  }

  return result;
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 112) == 1)
  {
    outlined destroy of BodyTrackingComponent?(a1, &_s17RealityFoundation21PhotogrammetrySessionC4PoseVSgMd, &_s17RealityFoundation21PhotogrammetrySessionC4PoseVSgMR);
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v9 = v22;
      }

      v10 = *(v9 + 56) + (v7 << 7);
      v12 = *(v10 + 32);
      v11 = *(v10 + 48);
      v13 = *(v10 + 16);
      v24 = *v10;
      v25 = v13;
      v26 = v12;
      v27 = v11;
      v14 = *(v10 + 64);
      v15 = *(v10 + 80);
      v16 = *(v10 + 96);
      v31 = *(v10 + 112);
      v29 = v15;
      v30 = v16;
      v28 = v14;
      specialized _NativeDictionary._delete(at:)(v7, v9);
      *v3 = v9;
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      v31 = 1;
    }

    return outlined destroy of BodyTrackingComponent?(&v24, &_s17RealityFoundation21PhotogrammetrySessionC4PoseVSgMd, &_s17RealityFoundation21PhotogrammetrySessionC4PoseVSgMR);
  }

  else
  {
    v17 = *(a1 + 80);
    v28 = *(a1 + 64);
    v29 = v17;
    v30 = *(a1 + 96);
    v31 = *(a1 + 112);
    v18 = *(a1 + 16);
    v24 = *a1;
    v25 = v18;
    v19 = *(a1 + 48);
    v26 = *(a1 + 32);
    v27 = v19;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v24, a2, v20);
    *v2 = v23;
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (*(a1 + 24))
  {
    outlined init with take of ForceEffectBase(a1, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    v9 = v18;
    v10 = v19;
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v12 = MEMORY[0x1EEE9AC00](v11);
    v14 = &v17[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14, v12);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, a3, a4 & 0x101, isUniquelyReferenced_nonNull_native, &v16, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v17);

    *v4 = v16;
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(a1, &_s17RealityFoundation16MeshBufferErased_pSgMd, &_s17RealityFoundation16MeshBufferErased_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, a4 & 0x101, v17);

    outlined destroy of BodyTrackingComponent?(v17, &_s17RealityFoundation16MeshBufferErased_pSgMd, &_s17RealityFoundation16MeshBufferErased_pSgMR);
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    result = a3(a1, a2, isUniquelyReferenced_nonNull_native);
    *v5 = v18;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v14)
    {
      v15 = result;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v5;
      v19 = *v6;
      if (!v16)
      {
        a5();
        v17 = v19;
      }

      result = a4(v15, v17);
      *v6 = v17;
    }
  }

  return result;
}

Swift::Int specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2 & 0xFFFFFFFF0001, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 0xFFFFFFFF0001);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

double specialized Dictionary.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of __RKEntityAction.ActionStateObservation(*(v9 + 56) + 16 * v7, a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_1C18A4F10;
  }

  return result;
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v10;
}

{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    Trace = type metadata accessor for LoadTrace(0);
    v18 = *(Trace - 8);
    outlined init with take of LoadTrace(v10 + *(v18 + 72) * v7, a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = Trace;
  }

  else
  {
    v16 = type metadata accessor for LoadTrace(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t __RKEntityAction.init(targetEntity:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0u;
  v4 = v1 + 16;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  v5 = MEMORY[0x1E69E7CC8];
  *(v4 + 80) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 48) = v5;
  *(v4 + 71) = 0;
  *(v4 + 88) = 257;
  swift_beginAccess();
  *v4 = a1;
  if (!a1)
  {
    goto LABEL_11;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_10:

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v7 = SceneNullable;
  v8 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v8)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v7);
  }

  if (!RESceneGetECSManagerNullable())
  {

    goto LABEL_10;
  }

  ServiceLocator = REECSManagerGetServiceLocator();
  v10 = MEMORY[0x1C68FE240](ServiceLocator);

LABEL_12:
  *(v2 + 24) = v10;
  return v2;
}

uint64_t __RKEntityAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));
  return v0;
}

double __RKEntityAction.targetEntity.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t __RKEntityAction.targetEntity.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t __RKEntityAction.completionHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v1, *(v0 + 80));
  return v1;
}

uint64_t __RKEntityAction.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5, v6);
}

uint64_t __RKEntityAction.isExclusive.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 89) = a1;
  return result;
}

uint64_t __RKEntityAction.exclusiveBlocksForCompletion.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 90) = a1;
  return result;
}

Swift::Bool __swiftcall __RKEntityAction.runningExclusiveAndBlocksForCompletion()()
{
  swift_beginAccess();
  result = 0;
  if (*(v0 + 104) == 1 && *(v0 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v0 + 89) == 1)
    {
      swift_beginAccess();
      if (*(v0 + 90))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t __RKEntityAction.state.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v4;
  return result;
}

uint64_t __RKEntityAction.state.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  v7 = v4;
  v8 = v5;
  return __RKEntityAction.state.didset(&v7);
}

void (*__RKEntityAction.state.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  v5 = *(v1 + 104);
  *(v4 + 24) = *(v1 + 96);
  *(v4 + 32) = v5;
  return __RKEntityAction.state.modify;
}

void __RKEntityAction.state.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 96);
  v5 = *(v2 + 104);
  *(v2 + 96) = *(*a1 + 24);
  *(v2 + 104) = v3;
  v6 = v4;
  v7 = v5;
  __RKEntityAction.state.didset(&v6);

  free(v1);
}

uint64_t __RKEntityAction.multiplePerformBehaviour.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 105);
  return result;
}

uint64_t __RKEntityAction.multiplePerformBehaviour.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 105) = v2;
  return result;
}

uint64_t __RKEntityAction.performAction(with:)(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  if (v2[18] == 1)
  {
    result = swift_beginAccess();
    if (v1[88] == 1)
    {
      v8[0] = v2;
      v8[1] = v3;
      result = (*(*v1 + 408))(v8);
      v2[18] = 0;
    }
  }

  else
  {
    swift_beginAccess();
    if (v2[16] == 1)
    {
      v5 = swift_beginAccess();
      if (v2[17])
      {
        result = (*(*v1 + 432))(v5);
        if (result)
        {
          v6 = v2;
          v7 = v3;
          (*(*result + 408))(&v6);
        }

        v2[17] = 0;
      }

      else
      {
        v6 = v2;
        v7 = v3;
        result = (*(*v1 + 408))(&v6);
        v2[17] = 1;
      }
    }

    else
    {
      result = swift_beginAccess();
      if ((v1[88] & 1) == 0)
      {
        v6 = v2;
        v7 = v3;
        return (*(*v1 + 408))(&v6);
      }
    }
  }

  return result;
}

BOOL __RKEntityAction.shouldContinueOnPerform(with:)(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1 && (swift_beginAccess(), *(v1 + 105) == 1))
  {
    return 0;
  }

  else
  {
    return RESceneGetECSManagerNullable() != 0;
  }
}

uint64_t __RKEntityAction.addStateObserver(_:)(uint64_t a1, uint64_t a2)
{
  v4[1] = a2;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v4, a1);
  return swift_endAccess();
}

uint64_t __RKEntityAction.removeStateObserver(_:)(uint64_t a1)
{
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, &v3);
  swift_endAccess();
  return outlined destroy of BodyTrackingComponent?(&v3, &_s10RealityKit16__RKEntityActionC0D16StateObservationVSgMd, &_s10RealityKit16__RKEntityActionC0D16StateObservationVSgMR);
}

uint64_t __RKEntityAction.description.getter()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {

    REEntityGetName();
    v1 = String.init(cString:)();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0xE000000000000000;
  }

  v4 = _typeName(_:qualified:)();
  MEMORY[0x1C68F3410](v1, v3);

  MEMORY[0x1C68F3410](0x3A74656772617420, 0xE800000000000000);

  MEMORY[0x1C68F3410](0x3A657461747320, 0xE700000000000000);
  swift_beginAccess();
  _print_unlocked<A, B>(_:_:)();

  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  return v4;
}

Swift::Bool __swiftcall __RKEntityAction.stop()()
{
  swift_beginAccess();
  if (*(v0 + 104) != 1 || *(v0 + 96) != 1)
  {
    return 0;
  }

  *(v0 + 96) = 3;
  v1 = 1;
  *(v0 + 104) = 1;
  v3 = 1;
  v4 = 1;
  __RKEntityAction.state.didset(&v3);
  return v1;
}

BOOL __RKEntityAction.isExclusiveWith(action:)(uint64_t a1)
{
  result = 0;
  if (v1 != a1)
  {
    swift_beginAccess();
    if (*(v1 + 89) == 1)
    {
      swift_beginAccess();
      if (*(a1 + 89))
      {
        return 1;
      }
    }
  }

  return result;
}

RealityKit::__RKEntityActionMultiplePerformBehavior_optional __swiftcall __RKEntityActionMultiplePerformBehavior.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityActionMultiplePerformBehavior.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t __RKEntityActionMultiplePerformBehavior.rawValue.getter()
{
  v1 = 0x722065726F6E6769;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657220776F6C6C61;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityActionMultiplePerformBehavior(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x722065726F6E6769;
  v4 = 0xEE00747365757165;
  v5 = 0x80000001C18DD930;
  if (v2 != 1)
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000001C18DD930;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x657220776F6C6C61;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xED00007473657571;
  }

  v8 = 0x722065726F6E6769;
  if (*a2 == 1)
  {
    v5 = 0xEE00747365757165;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x657220776F6C6C61;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xED00007473657571;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityActionMultiplePerformBehavior()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance __RKEntityActionMultiplePerformBehavior(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityActionMultiplePerformBehavior()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityActionMultiplePerformBehavior(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007473657571;
  v4 = 0xEE00747365757165;
  v5 = 0x722065726F6E6769;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x80000001C18DD930;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657220776F6C6C61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t __RKEntityActionContext.trigger.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t __RKEntityActionContext.scene.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t __RKEntityActionContext.init(trigger:scene:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t __RKEntityAction.__allocating_init(targetEntity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  __RKEntityAction.init(targetEntity:)(a1);
  return v2;
}

uint64_t __RKEntityAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));
  return swift_deallocClassInstance();
}

uint64_t key path setter for __RKEntityAction.targetEntity : __RKEntityAction(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t key path getter for __RKEntityAction.completionHandler : __RKEntityAction@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4, v5);
}

uint64_t key path setter for __RKEntityAction.completionHandler : __RKEntityAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v8, v9);
}

uint64_t key path setter for __RKEntityAction.state : __RKEntityAction(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 96);
  v6 = *(v4 + 104);
  *(v4 + 96) = v2;
  *(v4 + 104) = v3;
  v8 = v5;
  v9 = v6;
  return __RKEntityAction.state.didset(&v8);
}

uint64_t __RKEntityAction.state.didset(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  result = swift_beginAccess();
  v6 = *(*&v2 + 96);
  v7 = *(*&v2 + 104);
  v51 = v4;
  if (v4 != 1)
  {
    if (v3 != v6)
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (*&v3 <= 1)
  {
    if (v3 == 0.0)
    {
      v8 = *&v6 == 0;
    }

    else
    {
      v8 = *&v6 == 1;
    }
  }

  else if (*&v3 == 2)
  {
    v8 = *&v6 == 2;
  }

  else
  {
    if (*&v3 != 3)
    {
      if (*&v6 <= 3uLL)
      {
        v7 = 0;
      }

      if (v7)
      {
        return result;
      }

      goto LABEL_21;
    }

    v8 = *&v6 == 3;
  }

  if (!v8)
  {
    v7 = 0;
  }

  if (v7)
  {
    return result;
  }

LABEL_21:
  v59 = 91;
  v60 = 0xE100000000000000;
  v57 = 0;
  v58[0] = 0xE000000000000000;
  v55 = v2;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v9 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v9);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v11 = 91;
  v10 = 0xE100000000000000;
  LOBYTE(v12) = static os_log_type_t.info.getter();
  if (one-time initialization token for interactionsLoggingEnabled != -1)
  {
LABEL_70:
    swift_once();
  }

  v50 = v3;
  if (interactionsLoggingEnabled)
  {
    v59 = 0;
    v60 = 0xE000000000000000;
    v57 = *&v3;
    LOBYTE(v58[0]) = v51;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](540945696, 0xE400000000000000);
    v13 = *(*&v2 + 104);
    v57 = *(*&v2 + 96);
    LOBYTE(v58[0]) = v13;
    _print_unlocked<A, B>(_:_:)();
    v15 = v59;
    v14 = v60;
    if (one-time initialization token for interactionsLogger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, interactionsLogger);

    v17 = Logger.logObject.getter();

    if (os_log_type_enabled(v17, v12))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v59 = v19;
      *v18 = 136315394;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v59);
      *(v18 + 12) = 2080;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v59);

      *(v18 + 14) = v20;
      _os_log_impl(&dword_1C1358000, v17, v12, "%s%s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v19, -1, -1);
      MEMORY[0x1C6902A30](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  swift_beginAccess();
  v3 = *(*&v2 + 64);
  v10 = *&v3 + 64;
  v21 = 1 << *(*&v3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(*&v3 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  v12 = &_sSO3key_10RealityKit16__RKEntityActionC0E16StateObservationV5valuetSgMd;
  v11 = &_sSO3key_10RealityKit16__RKEntityActionC0E16StateObservationV5valuetSgMR;
  while (1)
  {
    if (!v23)
    {
      if (v24 <= v25 + 1)
      {
        v30 = v25 + 1;
      }

      else
      {
        v30 = v24;
      }

      v31 = v30 - 1;
      while (1)
      {
        v29 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v29 >= v24)
        {
          v23 = 0;
          v55 = 0.0;
          v56[0] = 0;
          v25 = v31;
          v56[1] = 1;
          goto LABEL_46;
        }

        v23 = *(v10 + 8 * v29);
        ++v25;
        if (v23)
        {
          v25 = v29;
          goto LABEL_45;
        }
      }

      __break(1u);
      goto LABEL_70;
    }

    v29 = v25;
LABEL_45:
    v32 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v33 = v32 | (v29 << 6);
    v34 = *(*(*&v3 + 48) + 8 * v33);
    outlined init with copy of __RKEntityAction.ActionStateObservation(*(*&v3 + 56) + 16 * v33, v53);
    v55 = v34;
    outlined init with take of __RKEntityAction.ActionStateObservation(v53, v56);
LABEL_46:
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(&v55, &v57, &_sSO3key_10RealityKit16__RKEntityActionC0E16StateObservationV5valuetSgMd, &_sSO3key_10RealityKit16__RKEntityActionC0E16StateObservationV5valuetSgMR);
    if (!v58[0] && v58[1] == 1)
    {
      break;
    }

    v35 = v57;
    outlined init with take of __RKEntityAction.ActionStateObservation(v58, v53);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = v54;
      ObjectType = swift_getObjectType();
      v55 = v50;
      LOBYTE(v56[0]) = v51;
      v28 = *(*&v2 + 104);
      *&v52 = *(*&v2 + 96);
      BYTE8(v52) = v28;
      (*(v26 + 8))(COERCE_DOUBLE(*&v2), &v55, &v52, ObjectType, v26);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
      if (v37)
      {
        v38 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = *(*&v2 + 64);
        *(*&v2 + 64) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
        }

        outlined init with take of __RKEntityAction.ActionStateObservation(*(v40 + 56) + 16 * v38, &v52);
        specialized _NativeDictionary._delete(at:)(v38, v40);
        *(*&v2 + 64) = v40;
      }

      else
      {
        v52 = xmmword_1C18A4F10;
      }

      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v52, &_s10RealityKit16__RKEntityActionC0D16StateObservationVSgMd, &_s10RealityKit16__RKEntityActionC0D16StateObservationVSgMR);
    }

    outlined destroy of __RKEntityAction.ActionStateObservation(v53);
  }

  if (*(*&v2 + 104) == 1)
  {
    v41 = *(*&v2 + 96);
    if ((v41 & 0xFFFFFFFFFFFFFFFELL) == 2 || v41 >= 4)
    {
      v42 = *(*&v2 + 32);
      if (v42)
      {
        v43 = *(*&v2 + 40);
        *(*&v2 + 32) = 0;
        *(*&v2 + 40) = 0;
        v42(result);
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v42, v43);
      }

      result = swift_beginAccess();
      v44 = *(*&v2 + 72);
      if (v44)
      {
        v45 = *(*&v2 + 80);
        if (*(*&v2 + 96) == 2)
        {
          v46 = *(*&v2 + 104);
        }

        else
        {
          v46 = 0;
        }

        v44(v46);
        result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v44, v45);
      }

      v47 = *(*&v2 + 48);
      if (v47)
      {
        v48 = *(*&v2 + 56);

        v47(v49);
        return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v47, v48);
      }
    }
  }

  return result;
}

uint64_t __RKEntityAction.perform(with:)()
{
  v8[0] = StaticString.description.getter();
  v8[1] = v1;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v2 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v2, v8);

  swift_beginAccess();
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v6 = v3;
  v7 = v4;
  __RKEntityAction.state.didset(&v6);
  return 1;
}

uint64_t __RKEntityAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v2 = type metadata accessor for __RKEntityAction();
  v3 = swift_allocObject();

  result = __RKEntityAction.init(targetEntity:)(v4);
  a1[3] = v2;
  *a1 = v3;
  return result;
}

uint64_t __RKEntityAction.clone(matching:newEntity:)()
{
  (*(*v0 + 464))(v3, 0);
  type metadata accessor for __RKEntityAction();
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, char a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v37 = a7;
  v38 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  v17 = *a6;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 0x101);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a5 & 1) != 0)
  {
LABEL_7:
    v25 = *a6;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 40 * v19);
      __swift_destroy_boxed_opaque_existential_1(v26);
      return outlined init with take of ForceEffectBase(&v36, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a5 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a5 & 1);
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 0x101);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a6;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v37);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v31);
  specialized _NativeDictionary._insert(at:key:value:)(v19, a2, a3, a4 & 0x101, v33, v25, a7, a8);

  return __swift_destroy_boxed_opaque_existential_1(&v36);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v22 = a7;
  v23 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v16 = a6[6] + 24 * a1;
  *v16 = a2;
  *(v16 + 8) = a3;
  *(v16 + 16) = a4 & 1;
  *(v16 + 17) = HIBYTE(a4) & 1;
  result = outlined init with take of ForceEffectBase(&v21, a6[7] + 40 * a1);
  v18 = a6[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v20;
  }

  return result;
}

BOOL specialized static __RKEntityAction.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == *a2;
    }

    return 0;
  }

  if (*&v2 > 1)
  {
    if (*&v2 == 2)
    {
      if (*&v3 == 2)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }

    else
    {
      if (*&v2 == 3)
      {
        if (*&v3 == 3)
        {
          v4 = *(a2 + 8);
        }

        else
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (*&v3 > 3uLL)
      {
        v8 = *(a2 + 8);
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    if (v3 == 0.0)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    return (v6 & 1) != 0;
  }

  if (*&v3 == 1)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = 0;
  }

  return (v9 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type [__RKEntityActionMultiplePerformBehavior] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [__RKEntityActionMultiplePerformBehavior] and conformance [A];
  if (!lazy protocol witness table cache variable for type [__RKEntityActionMultiplePerformBehavior] and conformance [A])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit39__RKEntityActionMultiplePerformBehaviorOGMd, &_sSay10RealityKit39__RKEntityActionMultiplePerformBehaviorOGMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [__RKEntityActionMultiplePerformBehavior] and conformance [A]);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for __RKEntityAction.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t protocol witness for static Component.__fromCore(_:) in conformance AdaptiveResolutionComponent@<X0>(_DWORD *a2@<X8>)
{
  REComponentGetEntity();
  REAdaptiveResolutionStateComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {
    result = REAdaptiveResolutionStateComponentGetPixelsPerMeter();
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t static AdaptiveResolutionComponent.__fromCore(_:)@<X0>(_DWORD *a2@<X8>)
{
  REComponentGetEntity();
  REAdaptiveResolutionStateComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {
    result = REAdaptiveResolutionStateComponentGetPixelsPerMeter();
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *protocol witness for static Component.__fromCore(_:) in conformance AudioGroupPlaybackComponent@<X0>(uint64_t *a1@<X8>, uint64_t *a2@<X0>)
{
  result = specialized static AudioGroupPlaybackComponent.__fromCore(_:)(a2);
  *a1 = result;
  return result;
}

void AudioGroupPlaybackComponent.__toCore(_:)(void *a1, uint64_t a2)
{
  REAudioGroupPlaybackComponentClearGroups();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(a2 + 56) + ((v7 << 9) | (8 * v9)));
    v11 = *(v10 + 16);
    if (v11)
    {

      v12 = v10 + 48;
      do
      {
        v12 += 24;
        REAudioGroupPlaybackComponentCreateGroups();
        --v11;
      }

      while (v11);
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(a2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  RENetworkMarkComponentDirty();
}

void *specialized static AudioGroupPlaybackComponent.__fromCore(_:)(uint64_t *a1)
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_SayAD16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlF0tGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  GroupCount = REAudioGroupPlaybackComponentGetGroupCount();
  Groups = REAudioGroupPlaybackComponentGetGroups();
  if (!GroupCount)
  {
LABEL_32:
    MEMORY[0x1C68F7060](Groups);
    return v1;
  }

  v4 = 0;
  v37 = GroupCount;
  while (1)
  {
    GroupSize = REAudioGroupPlaybackComponentGetGroupSize();
    GroupToken = REAudioGroupPlaybackComponentGetGroupToken();
    AudioPlayerToken = REAudioGroupPlaybackComponentGetAudioPlayerToken();
    TransportControlToken = REAudioGroupPlaybackComponentGetTransportControlToken();
    if (!v1[2])
    {
      break;
    }

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(GroupToken);
    if ((v10 & 1) == 0)
    {
      break;
    }

    v11 = *(v1[7] + 8 * v9);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
    }

    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 16) = v13 + 1;
    v14 = v11 + 24 * v13;
    *(v14 + 32) = AudioPlayerToken;
    *(v14 + 40) = GroupSize;
    *(v14 + 48) = TransportControlToken;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(GroupToken);
    v18 = v1[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_35;
    }

    v22 = v17;
    if (v1[3] < v21)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(GroupToken);
      GroupCount = v37;
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_37;
      }

LABEL_25:
      if ((v22 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_3;
    }

    GroupCount = v37;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_25;
    }

    v35 = v16;
    specialized _NativeDictionary.copy()();
    v16 = v35;
    if ((v22 & 1) == 0)
    {
LABEL_26:
      v1[(v16 >> 6) + 8] |= 1 << v16;
      *(v1[6] + 8 * v16) = GroupToken;
      *(v1[7] + 8 * v16) = v11;
      v33 = v1[2];
      v20 = __OFADD__(v33, 1);
      v32 = v33 + 1;
      if (v20)
      {
        goto LABEL_36;
      }

LABEL_27:
      v1[2] = v32;
      goto LABEL_4;
    }

LABEL_3:
    *(v1[7] + 8 * v16) = v11;

LABEL_4:
    if (GroupCount == ++v4)
    {
      goto LABEL_32;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64V16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlG0tGMd, &_ss23_ContiguousArrayStorageCys6UInt64V16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlG0tGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1887600;
  *(v11 + 32) = AudioPlayerToken;
  *(v11 + 40) = GroupSize;
  *(v11 + 48) = TransportControlToken;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(GroupToken);
  v26 = v1[2];
  v27 = (v25 & 1) == 0;
  v20 = __OFADD__(v26, v27);
  v28 = v26 + v27;
  if (!v20)
  {
    v29 = v25;
    if (v1[3] < v28)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, v24);
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(GroupToken);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_37;
      }

LABEL_20:
      if ((v29 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_3;
    }

    if (v24)
    {
      goto LABEL_20;
    }

    v34 = v16;
    specialized _NativeDictionary.copy()();
    v16 = v34;
    if ((v29 & 1) == 0)
    {
LABEL_21:
      v1[(v16 >> 6) + 8] |= 1 << v16;
      *(v1[6] + 8 * v16) = GroupToken;
      *(v1[7] + 8 * v16) = v11;
      v31 = v1[2];
      v20 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v20)
      {
        goto LABEL_34;
      }

      goto LABEL_27;
    }

    goto LABEL_3;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AcousticMeshResource.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t static AcousticMeshResource.__fromCore(_:)(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for AcousticMeshResource();
  v2 = swift_allocObject();
  RERetain();
  *(v2 + 16) = v1;
  return v2;
}

uint64_t AcousticMeshResource.__allocating_init(mesh:)(__int128 *a1)
{
  v1 = a1[3];
  v2 = a1[5];
  v31 = a1[4];
  v32 = v2;
  v3 = a1[1];
  v28[0] = *a1;
  v28[1] = v3;
  v4 = a1[3];
  v6 = *a1;
  v5 = a1[1];
  v29 = a1[2];
  v30 = v4;
  v7 = a1[5];
  v22 = v31;
  v23 = v7;
  v18 = v6;
  v19 = v5;
  v33 = *(a1 + 12);
  v24 = *(a1 + 12);
  v20 = v29;
  v21 = v1;
  MeshDescriptor.makeGeomMesh()(v25);
  outlined destroy of MeshDescriptor(v28);
  v8 = v25[0];
  if (v27)
  {
    v9 = v26;
    v10 = v25[1];
    lazy protocol witness table accessor for type GeomMeshError and conformance GeomMeshError();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    *(v11 + 16) = v9;
    swift_willThrow();
  }

  else
  {
    v12 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v12 + 120, &v18);
    v13 = *(&v19 + 1);
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    (*(v14 + 32))(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(&v18);
    REAcousticMeshAssetImporterCreate();
    isa = Array._bridgeToObjectiveC()().super.isa;
    REAcousticMeshAssetImporterAddGeomModelDescriptor();

    REAcousticMeshAssetImporterProcessInputModels();
    MeshAsset = REAcousticMeshAssetImporterCreateMeshAsset();
    type metadata accessor for AcousticMeshResource();
    v8 = swift_allocObject();
    RERetain();
    *(v8 + 16) = MeshAsset;
    RERelease();
    RERelease();
  }

  return v8;
}

unint64_t lazy protocol witness table accessor for type GeomMeshError and conformance GeomMeshError()
{
  result = lazy protocol witness table cache variable for type GeomMeshError and conformance GeomMeshError;
  if (!lazy protocol witness table cache variable for type GeomMeshError and conformance GeomMeshError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GeomMeshError, &type metadata for GeomMeshError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GeomMeshError and conformance GeomMeshError);
  }

  return result;
}

void key path setter for RETransform.matrix : RETransform(float32x4_t *a1, __n128 *a2)
{
  v6 = a1[1];
  v7 = *a1;
  v5 = a1[2];
  v3 = a1[3];
  v3.n128_u32[3] = 0;
  v8 = v3;
  REDecomposeMatrix();
  v4.n128_u64[0] = simd_float4x4.scale.getter(v7, v6, v5);
  *a2 = v8;
  a2[1] = 0u;
  a2[2] = v4;
}

void RETransform.matrix.setter(float32x4_t a1, int32x4_t a2, int8x16_t a3, __n128 a4)
{
  a4.n128_u32[3] = 0;
  v10 = a4;
  REDecomposeMatrix();
  v6.n128_u64[0] = simd_float4x4.scale.getter(a1, a2, a3);
  *v4 = v10;
  v4[1] = 0u;
  v4[2] = v6;
}

void (*RETransform.matrix.modify(uint64_t *a1))(float32x4_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 112) = v1;
  *&v5 = specialized simd_float4x4.init(translation:rotation:scale:)(*v1, *(v1 + 16), COERCE_FLOAT(*(v1 + 32)));
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  return RETransform.matrix.modify;
}

void RETransform.matrix.modify(float32x4_t **a1)
{
  v1 = *a1;
  v6 = (*a1)[1];
  v7 = **a1;
  v5 = (*a1)[2];
  v9 = (*a1)[3];
  v1[4] = 0u;
  v1[5] = 0u;
  v1[6] = 0u;
  REDecomposeMatrix();
  v8 = v1[5];
  v2.n128_u64[0] = simd_float4x4.scale.getter(v7, v6, v5);
  v3 = v1[7].i64[0];
  v4 = v9;
  v4.n128_u32[3] = 0;
  *v3 = v4;
  v3[1] = v8;
  v3[2] = v2;

  free(v1);
}

void __swiftcall SpotLightComponent.Shadow.init()(RealityKit::SpotLightComponent::Shadow *__return_ptr retstr)
{
  retstr->__depthBias = 1.0;
  retstr->__cullModeOverride.value = RealityFoundation_MaterialParameterTypes_FaceCulling_unknownDefault;
  retstr->__zNear.value = 0.0;
  retstr->__zNear.is_nil = 1;
  retstr->__zFar.value = 0.0;
  retstr->__zFar.is_nil = 1;
}

uint64_t static SpotLightComponent.Shadow.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  RESpotLightShadowMapComponentGetDepthBias();
  v4 = v3;
  if (RESpotLightShadowMapComponentGetCullModeEx())
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  ZNear = RESpotLightShadowMapComponentGetZNear();
  result = RESpotLightShadowMapComponentGetZFar();
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = 0;
  *(a2 + 12) = ZNear ^ 1;
  *(a2 + 16) = 0;
  *(a2 + 20) = result ^ 1;
  return result;
}

int *SpotLightComponent.Shadow.zNear.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 4);
  if (v3)
  {
    v2 = 0;
  }

  *(v1 + 8) = v2;
  *(v1 + 12) = v3;
  return result;
}

int *SpotLightComponent.Shadow.zFar.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 4);
  if (v3)
  {
    v2 = 0;
  }

  *(v1 + 16) = v2;
  *(v1 + 20) = v3;
  return result;
}

uint64_t SpotLightComponent.Shadow.__toCore(_:)(void *a1)
{
  RESpotLightShadowMapComponentSetDepthBias();
  RESpotLightShadowMapComponentSetCullMode();
  RESpotLightShadowMapComponentSetZNear();
  RESpotLightShadowMapComponentSetZFar();
  return RENetworkMarkComponentDirty();
}

void SpotLightComponent.init(cgColor:intensity:innerAngleInDegrees:outerAngleInDegrees:attenuationRadius:)(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  *(a2 + 24) = 0x40000000;
  *a2 = a1;
  *(a2 + 8) = a3;
  *(a2 + 12) = a4;
  *(a2 + 16) = a5;
  *(a2 + 20) = a6;
}

void static SpotLightComponent.__fromCore(_:)(uint64_t a2@<X8>)
{
  RESpotLightComponentGetColorGamut3F();
  RESpotLightComponentGetIntensity();
  v4 = v3;
  RESpotLightComponentGetInnerAngle();
  v13 = v5;
  RESpotLightComponentGetOuterAngle();
  v12 = v6;
  RESpotLightComponentGetAttenuationRadius();
  v8 = v7;
  RESpotLightComponentGetAttenuationFalloffExponent();
  v10 = v9;
  v11 = RECreateCGColorFromColorGamut();

  *a2 = v11;
  *(a2 + 8) = v4;
  *(a2 + 12) = vdiv_f32(vmul_f32(__PAIR64__(v12, v13), vdup_n_s32(0x43340000u)), vdup_n_s32(0x40490FDAu));
  *(a2 + 20) = v8;
  *(a2 + 24) = v10;
}

void SpotLightComponent.init(cgColor:intensity:innerAngleInDegrees:outerAngleInDegrees:attenuationRadius:attenuationFalloffExponent:)(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>, float a7@<S4>)
{
  *a2 = a1;
  *(a2 + 8) = a3;
  *(a2 + 12) = a4;
  *(a2 + 16) = a5;
  *(a2 + 20) = a6;
  *(a2 + 24) = a7;
}

uint64_t SpotLightComponent.__toCore(_:)(void *a1)
{
  RESpotLightComponentSetOuterAngle();
  RESpotLightComponentSetInnerAngle();
  RECGColorToColorGamut();
  RESpotLightComponentSetColorGamut3F();
  RESpotLightComponentSetIntensity();
  RESpotLightComponentSetAttenuationRadius();
  RESpotLightComponentSetAttenuationFalloffExponent();
  return RENetworkMarkComponentDirty();
}

float key path getter for SpotLightComponent.attenuationFalloffExponent : SpotLightComponent@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

float key path setter for SpotLightComponent.attenuationFalloffExponent : SpotLightComponent(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 24) = *a1;
  return result;
}

float (*SpotLightComponent.attenuationFalloffExponent.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return SpotLightComponent.attenuationFalloffExponent.modify;
}

float SpotLightComponent.attenuationFalloffExponent.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 24) = result;
  return result;
}

float (*SpotLightComponent.Shadow.depthBias.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return SpotLightComponent.Shadow.depthBias.modify;
}

float SpotLightComponent.Shadow.depthBias.modify(uint64_t a1)
{
  result = *(a1 + 8);
  **a1 = result;
  return result;
}

_BYTE *(*SpotLightComponent.Shadow.cullModeOverride.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return TextureResource.CreateOptions.reduceMemoryPeak.modify;
}

BOOL static SpotLightComponent.Shadow.ShadowClippingPlane.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4))
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SpotLightComponent.Shadow.ShadowClippingPlane(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4))
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

void SpotLightComponent.Shadow.zNear.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 12);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  *a1 = v3;
  *(a1 + 4) = v2;
}

uint64_t *(*SpotLightComponent.Shadow.zNear.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 12);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v2;
  return SpotLightComponent.Shadow.zNear.modify;
}

uint64_t *SpotLightComponent.Shadow.zNear.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 2);
  v3 = *(result + 12);
  if (v3)
  {
    v2 = 0;
  }

  *(v1 + 8) = v2;
  *(v1 + 12) = v3;
  return result;
}

void SpotLightComponent.Shadow.zFar.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 20);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 16);
  }

  *a1 = v3;
  *(a1 + 4) = v2;
}

uint64_t *(*SpotLightComponent.Shadow.zFar.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 20);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 16);
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v2;
  return SpotLightComponent.Shadow.zFar.modify;
}

uint64_t *SpotLightComponent.Shadow.zFar.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 2);
  v3 = *(result + 12);
  if (v3)
  {
    v2 = 0;
  }

  *(v1 + 16) = v2;
  *(v1 + 20) = v3;
  return result;
}

void __swiftcall SpotLightComponent.Shadow.init(depthBias:cullMode:zNear:zFar:)(RealityKit::SpotLightComponent::Shadow *__return_ptr retstr, Swift::Float depthBias, RealityFoundation::MaterialParameterTypes::FaceCulling_optional cullMode, Swift::Float zNear, Swift::Float zFar)
{
  v5 = *cullMode.value;
  retstr->__depthBias = depthBias;
  retstr->__cullModeOverride.value = v5;
  retstr->__zNear.value = 0.0;
  retstr->__zNear.is_nil = 1;
  retstr->__zFar.value = 0.0;
  retstr->__zFar.is_nil = 1;
}

uint64_t SpotLightComponent.Shadow.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = *v1;
  v10 = *(v1 + 4);
  v11 = v1[2];
  v12 = *(v1 + 12);
  v13 = v1[4];
  v14 = *(v1 + 20);
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C189FFC0;
  *(v15 + 32) = 0x6169426874706564;
  *(v15 + 40) = 0xE900000000000073;
  v16 = MEMORY[0x1E69E6448];
  *(v15 + 48) = v9;
  *(v15 + 72) = v16;
  *(v15 + 80) = 0xD000000000000010;
  *(v15 + 88) = 0x80000001C18DE1F0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
  *(v15 + 96) = v10;
  *(v15 + 120) = v17;
  *(v15 + 128) = 0x7261654E7ALL;
  *(v15 + 136) = 0xE500000000000000;
  if (v12)
  {
    v18 = 0;
  }

  else
  {
    v18 = v11;
  }

  *(v15 + 144) = v18;
  *(v15 + 148) = v12;
  *(v15 + 168) = &type metadata for SpotLightComponent.Shadow.ShadowClippingPlane;
  *(v15 + 176) = 1918977658;
  *(v15 + 184) = 0xE400000000000000;
  *(v15 + 216) = &type metadata for SpotLightComponent.Shadow.ShadowClippingPlane;
  if (v14)
  {
    v19 = 0;
  }

  else
  {
    v19 = v13;
  }

  *(v15 + 192) = v19;
  *(v15 + 196) = v14;
  v20 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized static SpotLightComponent.Shadow.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = *(a2 + 4);
  v8 = *(a2 + 12);
  v9 = *(a2 + 20);
  if (v2 == 3)
  {
    if (v7 != 3)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v7 == 3 || v2 != v7)
    {
      return result;
    }
  }

  if (v4)
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (v3 != *(a2 + 8))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v6)
  {
    if ((*(a2 + 20) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v5 != *(a2 + 16))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

BOOL specialized static SpotLightComponent.== infix(_:_:)(float *a1, float *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v15 = a2[6];
  v16 = a1[6];
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  v10 = static _CFObject.== infix(_:_:)();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v4 == v8 && v5 == v9)
  {
    return v16 == v15;
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SpotLightComponent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t storeEnumTagSinglePayload for SpotLightComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SpotLightComponent.Shadow(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 21))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 4);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SpotLightComponent.Shadow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTag for SpotLightComponent.Shadow.ShadowClippingPlane(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for SpotLightComponent.Shadow.ShadowClippingPlane(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS17RealityFoundation13AudioMixGroupV_G_s6UInt64Vs5NeverOTg504_s17e12Foundation23gh105GroupsComponentV013removeDeleteddE033_08DDF3E25FB130FB10258EDBEAA04A6FLL9componentys13OpaquePointerV_tFs6j7VAA0cD5I53Vcfu_33_84c271c9209633a7b8bbe39b70b1e066AlJTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 56) + 80 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          outlined consume of [String : AudioResource].Index._Variant(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      outlined consume of [String : AudioResource].Index._Variant(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

RealityFoundation::AudioMixGroupsComponent __swiftcall AudioMixGroupsComponent.init(mixGroups:)(Swift::OpaquePointer mixGroups)
{
  v36 = v1;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation13AudioMixGroupVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = *(mixGroups._rawValue + 2);
  if (!v4)
  {
LABEL_16:

    *v36 = v3;
    return result;
  }

  v5 = 0;
  v6 = (mixGroups._rawValue + 32);
  while (v5 < *(mixGroups._rawValue + 2))
  {
    v14 = v6[2];
    v42[0] = v6[3];
    *(v42 + 9) = *(v6 + 57);
    v15 = *v6;
    v40 = v6[1];
    v41 = v14;
    v39 = v15;
    v16 = *(&v14 + 1);
    v17 = *&v42[0];
    outlined init with copy of AudioMixGroup(&v39, v37);
    outlined init with copy of AudioMixGroup(&v39, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
    v21 = v3[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_18;
    }

    v25 = v20;
    if (v3[3] < v24)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v25)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v34 = v19;
    specialized _NativeDictionary.copy()();
    v19 = v34;
    if (v25)
    {
LABEL_3:
      v7 = (v3[7] + 80 * v19);
      v37[0] = *v7;
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      *&v38[9] = *(v7 + 57);
      v37[2] = v9;
      *v38 = v10;
      v37[1] = v8;
      v11 = v42[0];
      v13 = v40;
      v12 = v41;
      *(v7 + 57) = *(v42 + 9);
      v7[2] = v12;
      v7[3] = v11;
      v7[1] = v13;
      *v7 = v39;
      outlined destroy of AudioMixGroup(v37);
      outlined destroy of AudioMixGroup(&v39);
      goto LABEL_4;
    }

LABEL_12:
    v3[(v19 >> 6) + 8] |= 1 << v19;
    v27 = (v3[6] + 16 * v19);
    *v27 = v16;
    v27[1] = v17;
    v28 = (v3[7] + 80 * v19);
    v29 = *(v42 + 9);
    v30 = v42[0];
    v31 = v41;
    v28[1] = v40;
    v28[2] = v31;
    v28[3] = v30;
    *(v28 + 57) = v29;
    *v28 = v39;
    v32 = v3[2];
    v23 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v23)
    {
      goto LABEL_19;
    }

    v3[2] = v33;
LABEL_4:
    ++v5;
    v6 += 5;
    if (v4 == v5)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result.mixGroups._rawValue = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AudioMixGroupsComponent.set(_:)(_OWORD *a1)
{
  v2 = v1;
  v3 = a1[3];
  v16 = a1[2];
  *v17 = v3;
  *(&v17[1] + 1) = *(a1 + 57);
  v4 = a1[1];
  v15[0] = *a1;
  v15[1] = v4;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.audio);
  outlined init with copy of AudioMixGroup(v15, v14);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  outlined destroy of AudioMixGroup(v15);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(&v16 + 1), v17[0], v14);
    _os_log_impl(&dword_1C1358000, v6, v7, "[API/RealityKit] AudioMixGroupsComponent.set %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1C6902A30](v9, -1, -1);
    MEMORY[0x1C6902A30](v8, -1, -1);
  }

  v10 = *(&v16 + 1);
  v11 = v17[0];
  outlined init with copy of AudioMixGroup(v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = *v2;
  *v2 = 0x8000000000000000;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v10, v11, isUniquelyReferenced_nonNull_native);
  *v2 = v14[0];
  return result;
}

Swift::Void __swiftcall AudioMixGroupsComponent.remove(named:)(Swift::String named)
{
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.audio);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v8[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v8);
    _os_log_impl(&dword_1C1358000, v4, v5, "[API/RealityKit] AudioMixGroupsComponent.remove %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1C6902A30](v7, -1, -1);
    MEMORY[0x1C6902A30](v6, -1, -1);
  }

  specialized Dictionary._Variant.removeValue(forKey:)(countAndFlagsBits, object, v8);
  outlined destroy of BodyTrackingComponent?(v8, &_s17RealityFoundation13AudioMixGroupVSgMd, &_s17RealityFoundation13AudioMixGroupVSgMR);
}

double AudioMixGroupsComponent.mixGroup(named:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 80 * v6);
    v16[0] = *v8;
    v10 = v8[2];
    v9 = v8[3];
    v11 = *(v8 + 57);
    v16[1] = v8[1];
    v16[2] = v10;
    *&v17[9] = v11;
    *v17 = v9;
    v12 = v8[3];
    a3[2] = v8[2];
    a3[3] = v12;
    *(a3 + 57) = *(v8 + 57);
    v13 = v8[1];
    *a3 = *v8;
    a3[1] = v13;
    outlined init with copy of AudioMixGroup(v16, &v15);
  }

  else
  {
    result = 0.0;
    *(a3 + 57) = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

Swift::Int AudioMixGroupsComponent.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioMixGroupsComponent()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioMixGroupsComponent()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

void *static AudioMixGroupsComponent.__fromCore(_:)(void *a1)
{
  REAudioMixGroupsComponentGetGroups();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  *&v2 = 0;
  type metadata accessor for NSDictionary();
  result = static Array._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in static AudioMixGroupsComponent.__fromCore(_:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *&v29 = 1701667150;
  *(&v29 + 1) = 0xE400000000000000;
  v4 = [v3 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (!v4)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v28, &v29);
  swift_dynamicCast();
  v15 = v27;
  v16 = v26;
  *&v25[0] = 17481;
  *(&v25[0] + 1) = 0xE200000000000000;
  v6 = [v3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v22;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 ^ 1;
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v25, &_sypSgMd, &_sypSgMR);
    v8 = 0;
    v9 = 1;
  }

  *&v25[0] = 1852399943;
  *(&v25[0] + 1) = 0xE400000000000000;
  v10 = [v3 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_18;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v23, v25);
  swift_dynamicCast();
  v11 = v30;
  *&v22 = 0x6465657053;
  *(&v22 + 1) = 0xE500000000000000;
  v12 = [v3 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v21, &v22);
  swift_dynamicCast();
  v13 = v20;
  *&v19 = 0x746174536574754DLL;
  *(&v19 + 1) = 0xE900000000000065;
  v14 = [v3 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v18, &v19);
  result = swift_dynamicCast();
  if (v9)
  {
    result = REAudioMixGroupsComponentCreateMixGroupID();
    v8 = result;
  }

  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 33) = 0;
  *(a2 + 40) = v16;
  *(a2 + 48) = v15;
  *(a2 + 56) = v11;
  *(a2 + 64) = v13;
  *(a2 + 72) = v17;
  return result;
}

uint64_t AudioMixGroupsComponent.__toCore(_:)(unint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  *&v27[0] = *v1;
  AudioMixGroupsComponent.removeDeletedMixGroups(component:)(v2);
  if (one-time initialization token for audio != -1)
  {
LABEL_15:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.audio);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C1358000, v5, v6, "[RealityKit/CoreRE] [MixGroup] About to update mix groups.", v7, 2u);
    MEMORY[0x1C6902A30](v7, -1, -1);
  }

  v8 = 1 << *(v3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v3 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_11:
      v14 = (*(v3 + 56) + 80 * (__clz(__rbit64(v10)) | (v13 << 6)));
      v27[0] = *v14;
      v16 = v14[2];
      v15 = v14[3];
      v17 = *(v14 + 57);
      v27[1] = v14[1];
      v27[2] = v16;
      *(v28 + 9) = v17;
      v28[0] = v15;
      v18 = v14[2];
      v26[0] = v14[3];
      *(v26 + 9) = *(v14 + 57);
      v19 = *v14;
      v24 = v14[1];
      v25 = v18;
      v23 = v19;
      outlined init with copy of AudioMixGroup(v27, v21);
      closure #1 in AudioMixGroupsComponent.__toCore(_:)(&v23, v2);
      v10 &= v10 - 1;
      v21[2] = v25;
      v22[0] = v26[0];
      *(v22 + 9) = *(v26 + 9);
      v21[0] = v23;
      v21[1] = v24;
      outlined destroy of AudioMixGroup(v21);
      v12 = v13;
      if (!v10)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v13 >= v11)
    {
    }

    v10 = *(v3 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_11;
    }
  }
}

void AudioMixGroupsComponent.removeDeletedMixGroups(component:)(unint64_t a1)
{
  REAudioMixGroupsComponentGetGroups();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v1 = 0;
  type metadata accessor for NSDictionary();
  static Array._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

uint64_t closure #1 in AudioMixGroupsComponent.__toCore(_:)(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v35 = *a1;
  v36 = v3;
  v4 = a1[3];
  v37 = a1[2];
  *v38 = v4;
  *&v38[9] = *(a1 + 57);
  v5 = v35;
  if (REAudioMixGroupsComponentHasGroup())
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.audio);
    outlined init with copy of AudioMixGroup(&v35, v34);
    outlined init with copy of AudioMixGroup(&v35, v34);
    getEnumTag for __RKEntityInteractionsComponent.Registration.RegistrationError();
    getEnumTag for __RKEntityInteractionsComponent.Registration.RegistrationError();
    outlined init with copy of AudioMixGroup(&v35, v34);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    outlined destroy of AudioMixGroup(&v35);
    outlined destroy of AudioMixGroup(&v35);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34[0] = v10;
      *v9 = 136315906;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(&v37 + 1), *v38, v34);
      *(v9 + 12) = 1040;
      *(v9 + 14) = 2;
      *(v9 + 18) = 2048;
      *(v9 + 20) = *&v38[16];
      *(v9 + 28) = 1024;
      *(v9 + 30) = v38[24];
      outlined destroy of AudioMixGroup(&v35);
      _os_log_impl(&dword_1C1358000, v7, v8, "[RealityKit/CoreRE] [MixGroup] Updating %s. Speed: %.*fx. IsMuted: %{BOOL}d.", v9, 0x22u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1C6902A30](v10, -1, -1);
      MEMORY[0x1C6902A30](v9, -1, -1);
    }

    else
    {
      outlined destroy of AudioMixGroup(&v35);
    }

    result = REAudioMixGroupsComponentUpdateGroup();
    if (BYTE1(v37) == 1)
    {
      outlined init with copy of AudioMixGroup(&v35, v34);
      getEnumTag for __RKEntityInteractionsComponent.Registration.RegistrationError();
      getEnumTag for __RKEntityInteractionsComponent.Registration.RegistrationError();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      outlined destroy of AudioMixGroup(&v35);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v34[0] = v22;
        *v21 = 136315650;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(&v37 + 1), *v38, v34);
        *(v21 + 12) = 1040;
        *(v21 + 14) = 2;
        *(v21 + 18) = 2048;
        *(v21 + 20) = *&v38[8];
        _os_log_impl(&dword_1C1358000, v19, v20, "[RealityKit/CoreRE] [MixGroup] Updating %s. Gain: %.*fdB.", v21, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x1C6902A30](v22, -1, -1);
        MEMORY[0x1C6902A30](v21, -1, -1);
      }

      result = REAudioMixGroupsComponentUpdateGroupGain();
    }
  }

  else
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.audio);
    outlined init with copy of AudioMixGroup(&v35, v34);
    outlined init with copy of AudioMixGroup(&v35, v34);
    getEnumTag for __RKEntityInteractionsComponent.Registration.RegistrationError();
    getEnumTag for __RKEntityInteractionsComponent.Registration.RegistrationError();
    outlined init with copy of AudioMixGroup(&v35, v34);
    getEnumTag for __RKEntityInteractionsComponent.Registration.RegistrationError();
    getEnumTag for __RKEntityInteractionsComponent.Registration.RegistrationError();
    outlined init with copy of AudioMixGroup(&v35, v34);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    outlined destroy of AudioMixGroup(&v35);
    outlined destroy of AudioMixGroup(&v35);
    outlined destroy of AudioMixGroup(&v35);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v34[0] = v15;
      *v14 = 136316418;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(&v37 + 1), *v38, v34);
      v17 = *&v38[16];
      *(v14 + 20) = *&v38[8];
      *(v14 + 4) = v16;
      *(v14 + 12) = 1040;
      *(v14 + 14) = 2;
      *(v14 + 18) = 2048;
      *(v14 + 28) = 1040;
      *(v14 + 30) = 2;
      *(v14 + 34) = 2048;
      *(v14 + 36) = v17;
      *(v14 + 44) = 1024;
      *(v14 + 46) = v38[24];
      outlined destroy of AudioMixGroup(&v35);
      _os_log_impl(&dword_1C1358000, v12, v13, "[RealityKit/CoreRE] [MixGroup] Creating %s. Gain: %.*fdB. Speed: %.*fx. IsMuted: %{BOOL}d.", v14, 0x32u);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }

    else
    {
      outlined destroy of AudioMixGroup(&v35);
    }

    v23 = *&v38[8];
    v24 = *&v38[16];
    v25 = v38[24];
    v26 = String.utf8CString.getter();
    MEMORY[0x1C68F70C0](a2, v5, v26 + 32, v25, v23, v24);
  }

  if ((v36 & 1) == 0 && (v37 & 1) == 0)
  {
    v27 = *(&v35 + 1);
    v28 = *(&v36 + 1);
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.audio);
    outlined init with copy of AudioMixGroup(&v35, v34);
    getEnumTag for __RKEntityInteractionsComponent.Registration.RegistrationError();
    getEnumTag for __RKEntityInteractionsComponent.Registration.RegistrationError();
    getEnumTag for __RKEntityInteractionsComponent.Registration.RegistrationError();
    getEnumTag for __RKEntityInteractionsComponent.Registration.RegistrationError();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    outlined destroy of AudioMixGroup(&v35);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34[0] = v33;
      *v32 = 136316162;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(&v37 + 1), *v38, v34);
      *(v32 + 12) = 1040;
      *(v32 + 14) = 2;
      *(v32 + 18) = 2048;
      *(v32 + 20) = v27;
      *(v32 + 28) = 1040;
      *(v32 + 30) = 2;
      *(v32 + 34) = 2048;
      *(v32 + 36) = v28;
      _os_log_impl(&dword_1C1358000, v30, v31, "[RealityKit/CoreRE] [MixGroup] Fading %s. Gain: %.*fdB. Duration: %.*fs", v32, 0x2Cu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1C6902A30](v33, -1, -1);
      MEMORY[0x1C6902A30](v32, -1, -1);
    }

    return REAudioMixGroupsComponentFadeGroup();
  }

  return result;
}

uint64_t AudioMixGroupsComponent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v24 = *v1;
  v10 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1887600;
  *(v11 + 32) = 0x70756F724778696DLL;
  *(v11 + 40) = 0xE900000000000073;
  v12 = *(v10 + 16);
  if (!v12)
  {

    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v18 = v9;
  v19 = v6;
  v20 = v4;
  v21 = v3;
  v22 = a1;
  v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation13AudioMixGroupV_Tt1g5(v12, 0);
  v14 = specialized Sequence._copySequenceContents(initializing:)(&v23, v13 + 32, v12, v10);
  swift_bridgeObjectRetain_n();
  result = outlined consume of [String : AnimationResource].Iterator._Variant();
  if (v14 == v12)
  {
    v3 = v21;
    v6 = v19;
    v4 = v20;
    v9 = v18;
LABEL_5:
    *(v11 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation13AudioMixGroupVGMd, &_sSay17RealityFoundation13AudioMixGroupVGMR);
    *(v11 + 48) = v13;
    v16 = type metadata accessor for Mirror.DisplayStyle();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    (*(v4 + 104))(v6, *MEMORY[0x1E69E75D8], v3);
    return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
  }

  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *a1 = a4;
    a1[1] = a3;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (a4 + 32);
      while (v10 < *(a4 + 16))
      {
        v12 = v11[7];
        v18[6] = v11[6];
        v18[7] = v12;
        v13 = v11[9];
        v18[8] = v11[8];
        v18[9] = v13;
        v14 = v11[3];
        v18[2] = v11[2];
        v18[3] = v14;
        v15 = v11[5];
        v18[4] = v11[4];
        v18[5] = v15;
        v16 = v11[1];
        v18[0] = *v11;
        v18[1] = v16;
        memmove(a2, v11, 0xA0uLL);
        if (a3 - 1 == v10)
        {
          outlined init with copy of IKRig.Constraint(v18, v17);
          goto LABEL_12;
        }

        a2 += 160;
        outlined init with copy of IKRig.Constraint(v18, v17);
        ++v10;
        v11 += 10;
        if (v9 == v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    a3 = v9;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
}

{

  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *a1 = a4;
    a1[1] = a3;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (a4 + 32);
      while (v10 < *(a4 + 16))
      {
        v12 = v11[9];
        v18[8] = v11[8];
        v18[9] = v12;
        v18[10] = v11[10];
        v13 = v11[5];
        v18[4] = v11[4];
        v18[5] = v13;
        v14 = v11[7];
        v18[6] = v11[6];
        v18[7] = v14;
        v15 = v11[1];
        v18[0] = *v11;
        v18[1] = v15;
        v16 = v11[3];
        v18[2] = v11[2];
        v18[3] = v16;
        memmove(a2, v11, 0xB0uLL);
        if (a3 - 1 == v10)
        {
          outlined init with copy of IKRig.Joint(v18, v17);
          goto LABEL_12;
        }

        a2 += 176;
        outlined init with copy of IKRig.Joint(v18, v17);
        ++v10;
        v11 += 11;
        if (v9 == v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    a3 = v9;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
}

{

  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *a1 = a4;
    a1[1] = a3;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (a4 + 32);
      while (v10 < *(a4 + 16))
      {
        v12 = v11[3];
        v16[2] = v11[2];
        v16[3] = v12;
        v13 = v11[5];
        v16[4] = v11[4];
        v16[5] = v13;
        v14 = v11[1];
        v16[0] = *v11;
        v16[1] = v14;
        memmove(a2, v11, 0x60uLL);
        if (a3 - 1 == v10)
        {
          outlined init with copy of MeshResource.Instance(v16, v15);
          goto LABEL_12;
        }

        a2 += 96;
        outlined init with copy of MeshResource.Instance(v16, v15);
        ++v10;
        v11 += 6;
        if (v9 == v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    a3 = v9;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
}

{

  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *a1 = a4;
    a1[1] = a3;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (a4 + 32);
      while (v10 < *(a4 + 16))
      {
        v12 = v11[1];
        v14[0] = *v11;
        v14[1] = v12;
        v15[0] = v11[2];
        *(v15 + 9) = *(v11 + 41);
        memmove(a2, v11, 0x39uLL);
        if (a3 - 1 == v10)
        {
          outlined init with copy of MeshResource.Part(v14, v13);
          goto LABEL_12;
        }

        a2 += 64;
        outlined init with copy of MeshResource.Part(v14, v13);
        v11 += 4;
        if (v9 == ++v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    a3 = v9;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = v4[1];
  v10 = v4[4];
  if (!v9)
  {
    if (v8)
    {
      v11 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v9 = v11;
  }

  v31 = v8;
  outlined destroy of BodyTrackingComponent?(&v31, &_s17RealityFoundation24AnimationLibraryResourceCSgMd, &_s17RealityFoundation24AnimationLibraryResourceCSgMR);
  v30 = *(v4 + 1);
  outlined destroy of BodyTrackingComponent?(&v30, &_sSSSgSgMd, &_sSSSgSgMR);
  v29 = v10;
  result = outlined destroy of BodyTrackingComponent?(&v29, &_sSay10RealityKit17AnimationResourceCGSgMd, &_sSay10RealityKit17AnimationResourceCGSgMR);
  v13 = v9 + 64;
  v14 = -1 << *(v9 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v9 + 64);
  if (!a2)
  {
LABEL_23:
    v17 = 0;
    a3 = 0;
LABEL_30:
    *a1 = v9;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_30;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = 0;
    v17 = 0;
    v28 = -1 << *(v9 + 32);
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_19:
      v22 = __clz(__rbit64(v16)) | (v17 << 6);
      v23 = (*(v9 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = *(*(v9 + 56) + 8 * v22);
      v16 &= v16 - 1;
      *a2 = *v23;
      a2[1] = v24;
      a2[2] = v25;
      if (v19 == a3)
      {

        goto LABEL_28;
      }

      a2 += 3;

      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_23;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_19;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
LABEL_28:
    v14 = v28;
    goto LABEL_30;
  }

LABEL_33:
  __break(1u);
  return result;
}

{
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, outlined destroy of _Proto_AnimationLibraryComponent_v1);
}

{
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, outlined destroy of AnimationLibraryComponent);
}

void specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *a1 = a4;
    a1[1] = a3;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (a4 + 48);
      while (v10 < *(a4 + 16))
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        *a2 = *(v11 - 2);
        a2[1] = v12;
        a2[2] = v13;
        if (a3 - 1 == v10)
        {

          goto LABEL_12;
        }

        ++v10;
        v11 += 3;
        a2 += 3;
        if (v9 == v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    a3 = v9;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
}

{

  if (!a2)
  {
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *a1 = a4;
    a1[1] = a3;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v18 = a3;
      v19 = a1;
      v10 = 0;
      v11 = a3 - 1;
      v12 = (a4 + 40);
      while (v10 < *(a4 + 16))
      {
        v13 = *v12;
        v15 = v12[1];
        v14 = v12[2];
        v17 = v12[3];
        v16 = v12[4];
        *a2 = *(v12 - 1);
        a2[1] = v13;
        a2[2] = v15;
        a2[3] = v14;
        a2[4] = v17;
        a2[5] = v16;
        if (v11 == v10)
        {

          a3 = v18;
          a1 = v19;
          goto LABEL_13;
        }

        ++v10;
        v12 += 6;
        a2 += 6;
        if (v9 == v10)
        {
          a3 = v9;
          a1 = v19;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    a3 = 0;
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
}

void specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *a1 = a4;
    a1[1] = a3;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      while (v10 < *(a4 + 16))
      {
        v12 = a2 + v11;
        v13 = *(a4 + v11 + 40);
        v14 = *(a4 + v11 + 48);
        v15 = *(a4 + v11 + 56);
        v16 = *(a4 + v11 + 60);
        *v12 = *(a4 + v11 + 32);
        *(v12 + 8) = v13;
        *(v12 + 16) = v14;
        *(v12 + 24) = v15;
        *(v12 + 28) = v16;
        if (a3 - 1 == v10)
        {

          goto LABEL_12;
        }

        v11 += 32;
        if (v9 == ++v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    a3 = v9;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 16);
    if (v7)
    {
      v8 = a2;
      v9 = 0;
      v10 = (a4 + 56);
      v11 = a3 - 1;
      while (v9 < *(a4 + 16))
      {
        v12 = *(v10 - 2);
        v14 = *(v10 - 1);
        v13 = *v10;
        *v8 = *(v10 - 3);
        v8[1] = v12;
        v8[2] = v14;
        v8[3] = v13;
        if (v11 == v9)
        {

          goto LABEL_12;
        }

        ++v9;
        v10 += 4;
        v8 += 4;
        if (v7 == v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v6 = v7;
    goto LABEL_12;
  }

LABEL_14:
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
  if (!a2)
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
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
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
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
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
  if (!a2)
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
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
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
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 16);
    if (v7)
    {
      v9 = 0;
      v10 = 0;
      v11 = a3 - 1;
      while (v10 < *(a4 + 16))
      {
        v12 = *(a4 + v9 + 48);
        v13 = a2 + v9;
        v14 = *(a4 + v9 + 56);
        v15 = *(a4 + v9 + 64);
        v16 = *(a4 + v9 + 72);
        v17 = *(a4 + v9 + 80);
        *v13 = *(a4 + v9 + 32);
        *(v13 + 16) = v12;
        *(v13 + 24) = v14;
        *(v13 + 32) = v15;
        *(v13 + 40) = v16;
        *(v13 + 48) = v17;
        if (v11 == v10)
        {

          goto LABEL_12;
        }

        ++v10;
        v9 += 56;
        if (v7 == v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v6 = v7;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_12:
    v9 = a4;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a5 + 16);
    if (v9 != a4)
    {
      v10 = a2;
      v11 = a3 - 1;
      v12 = a5 + 40 * a4 + 32;
      v13 = a4;
      while ((a4 & 0x8000000000000000) == 0)
      {
        if (v13 >= *(a5 + 16))
        {
          goto LABEL_16;
        }

        ++v13;
        result = outlined init with copy of __REAssetService(v12, v10);
        if (!v11)
        {
          v9 = v13;
          goto LABEL_13;
        }

        v10 += 40;
        --v11;
        v12 += 40;
        if (v9 == v13)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_10:
    v8 = v9 - a4;
LABEL_13:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v9;
    return v8;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a3;
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v7 = a2;
      v8 = 1;
      while (v8 - 1 != DRMeshGetPartCount())
      {
        DRMeshGetPartAt();
        *v7 = 0uLL;
        v7[1] = xmmword_1C18AB200;
        v7[2] = xmmword_1C189A7F0;
        v7[3] = xmmword_1C189A800;
        if (v6 == v8)
        {
          goto LABEL_12;
        }

        v7 += 4;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
          goto LABEL_10;
        }
      }

      v6 = v8 - 1;
    }
  }

  else
  {
LABEL_10:
    v6 = 0;
  }

LABEL_12:
  *a1 = a4;
  a1[1] = v6;
  return v6;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{

  if (!a2)
  {
    a3 = 0;
    goto LABEL_18;
  }

  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_22:
      __break(1u);
    }

    else
    {
      v5 = a4 & 0xFFFFFFFFFFFFFF8;
      if (!(a4 >> 62))
      {
        v10 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }
    }

    v10 = __CocoaSet.count.getter();
LABEL_6:
    v11 = 0;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v10 == v11)
      {
        break;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1C68F41F0](v11, a4);
      }

      else
      {
        if (v11 >= *(v5 + 16))
        {
          goto LABEL_20;
        }
      }

      *(a2 + 8 * v11) = v13;
      if (v12 == a3)
      {
        goto LABEL_18;
      }

      ++v11;
      if (v12 >= a3)
      {
        goto LABEL_21;
      }
    }

    a3 = v10;
  }

LABEL_18:
  *a1 = a4;
  a1[1] = a3;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
LABEL_20:
    a3 = 0;
    goto LABEL_23;
  }

  if (!a3)
  {
LABEL_23:
    *v5 = a4;
    v5[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = a3;
    v9 = a3 - 1;
    while (1)
    {
      if (v7 == REEntityGetChildCount())
      {
        a3 = v7;
        goto LABEL_23;
      }

      result = REEntityGetChildCount();
      if (v7 >= result)
      {
        break;
      }

      result = REEntityGetChild();
      if (!result)
      {
        goto LABEL_28;
      }

      v10 = result;
      if (REEntityGetSwiftObject())
      {

        type metadata accessor for Entity();
        v11 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          goto LABEL_26;
        }

        specialized static Entity.entityInfoType(_:)(v10);
        if (v12)
        {
          v11 = (*(v12 + 232))();
          v13 = *(v11 + 16);

          MEMORY[0x1C68F9740](v13, 0);
          *(v11 + 16) = v10;
          MEMORY[0x1C68F9740](v10, v11);
        }

        else
        {
          v11 = makeEntity(for:)(v10);
        }
      }

      result = REEntityGetChildCount();
      if (v7 >= result)
      {
        goto LABEL_25;
      }

      *(a2 + 8 * v7) = v11;
      if (v9 == v7)
      {
        a3 = v8;
        goto LABEL_23;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

{
  v5 = result;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_23;
  }

  if (!a3)
  {
LABEL_23:
    *v5 = a4;
    v5[1] = a3;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_28;
  }

  v7 = 0;
  v8 = a3;
  v9 = a3 - 1;
  while (1)
  {
    if (v7 >= REEntityGetChildCount())
    {
      a3 = v7;
      goto LABEL_23;
    }

    result = REEntityGetChildCount();
    if (v7 >= result)
    {
      break;
    }

    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_29;
    }

    v10 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v11 = swift_dynamicCastClassUnconditional();
LABEL_10:
      v12 = v11;
      goto LABEL_14;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      goto LABEL_27;
    }

    specialized static Entity.entityInfoType(_:)(v10);
    if (!v13)
    {
      v11 = makeEntity(for:)(v10);
      goto LABEL_10;
    }

    v12 = (*(v13 + 232))();
    v14 = *(v12 + 16);

    MEMORY[0x1C68F9740](v14, 0);
    *(v12 + 16) = v10;
    MEMORY[0x1C68F9740](v10, v12);

LABEL_14:
    result = REEntityGetChildCount();
    if (v7 >= result)
    {
      goto LABEL_25;
    }

    *(a2 + 8 * v7) = v12;
    if (v9 == v7)
    {
      a3 = v8;
      goto LABEL_23;
    }

    if (__OFADD__(++v7, 1))
    {
      goto LABEL_26;
    }
  }

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
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = specialized static Entity.ComponentSet.Iterator.buildSnapshot(_:)(a4);

  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *a1 = v7;
    a1[1] = v7;
    a1[2] = a3;

    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = v7[2];
    if (v9)
    {
      v10 = 0;
      v11 = (v7 + 4);
      while (v10 < v7[2])
      {
        result = outlined init with copy of __REAssetService(v11, a2);
        if (a3 - 1 == v10)
        {
          goto LABEL_11;
        }

        a2 += 40;
        ++v10;
        v11 += 40;
        if (v9 == v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    a3 = v9;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
LABEL_14:
    result = 0;
    v14 = a5;
LABEL_18:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v14;
    return result;
  }

  if (!a3)
  {
    v14 = a5;
LABEL_16:
    result = a3;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 1;
    v13 = a5;
    while (1)
    {
      if (v13 == a6)
      {
        v14 = a6;
        goto LABEL_18;
      }

      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      while (v14 < REEntityGetComponentCount() && (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v14) & 1) == 0)
      {
        ++v14;
      }

      *v11 = v13;
      if (v12 == a3)
      {
        goto LABEL_16;
      }

      ++v11;
      v13 = v14;
      result = v12;
      if (__OFADD__(v12++, 1))
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = v4;
  v10 = *v4;
  v11 = v6[1];
  v31 = v11;
  if (!v11)
  {
    if (v10)
    {
      v12 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v11 = v12;
  }

  v13 = v11 + 64;
  v14 = *(v11 + 64);
  v15 = -1 << *(v11 + 32);
  outlined init with copy of [String : AnimationResource]?(&v31, v30);
  result = a4(v6);
  if (-v15 < 64)
  {
    v17 = ~(-1 << -v15);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14;
  if (!a2)
  {
LABEL_23:
    v19 = 0;
    a3 = 0;
LABEL_30:
    *a1 = v11;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_30;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = 0;
    v19 = 0;
    v29 = v15;
    v15 = (63 - v15) >> 6;
    v20 = 1;
    while (v18)
    {
LABEL_19:
      v23 = __clz(__rbit64(v18)) | (v19 << 6);
      v24 = (*(v11 + 48) + 16 * v23);
      v25 = v24[1];
      v26 = *(*(v11 + 56) + 8 * v23);
      v18 &= v18 - 1;
      *a2 = *v24;
      a2[1] = v25;
      a2[2] = v26;
      if (v20 == a3)
      {

        goto LABEL_28;
      }

      a2 += 3;

      result = v20;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_23;
      }
    }

    v21 = v19;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v22 >= v15)
      {
        break;
      }

      v18 = *(v13 + 8 * v22);
      ++v21;
      if (v18)
      {
        v19 = v22;
        goto LABEL_19;
      }
    }

    v18 = 0;
    if (v15 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v15;
    }

    v19 = v28 - 1;
    a3 = result;
LABEL_28:
    v15 = v29;
    goto LABEL_30;
  }

LABEL_33:
  __break(1u);
  return result;
}