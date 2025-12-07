uint64_t getEnumTagSinglePayload for CMSampleBufferRef.SamplePropertiesCollection(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for CMSampleBufferRef.SamplePropertiesCollection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined copy of CMSampleBufferRef.SizePerSample?(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of CMSampleBufferRef.SizePerSample(result, a2 & 1);
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSo17CMSampleBufferRefa9CoreMediaE17SampleAttachmentsV_Tt1B5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = result;
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v2;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v2;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t type metadata completion function for ConcurrentAccess.NonCopyable(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConcurrentAccess.NonCopyable(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for ConcurrentAccess.NonCopyable(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata instantiation function for ConcurrentAccess.CopyOnWrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ConcurrentAccess.Wrapper.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a1;
  return (*(a3 + 24))(_s9CoreMedia16ConcurrentAccessO7WrapperPAAE13dynamicMemberqd__s7KeyPathCy8CMObjectQzqd__G_tcs8SendableRd__luigqd__AJYTXEfU_TA, v5, *(v3 + *MEMORY[0x277D84DE8] + 8), a2, a3);
}

uint64_t _s9CoreMedia16ConcurrentAccessO11CopyOnWriteV013withExclusiveD0yqd__qd__xzKYTXEKRi_d__lF(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  if ((isKnownUniquelyReferenced<A>(_:)() & 1) == 0)
  {
    *v4 = (*(*(a3 + 24) + 16))(*v4, v7);
  }

  return a1(v4);
}

uint64_t _s9CoreMedia16ConcurrentAccessO11CopyOnWriteVy_xGAC7WrapperAacGP016withUnsafeSharedD0yqd__qd__8CMObjectQzKYTXEKRi_d__lFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 24);
  v7[2] = *(a4 + 16);
  v7[3] = a3;
  v7[4] = v5;
  v7[5] = a1;
  v7[6] = a2;
  return _s9CoreMedia16ConcurrentAccessO11CopyOnWriteV016withUnsafeSharedD0yqd__qd__xKYTXEKRi_d__lF(_sxqd__s5Error_pIgTnrzo_xqd__sAA_pIegTgrzo_9CoreMedia16ConcurrentAccessO19CloneForCopyOnWriteRz8CMObjectQzRszRi_d__r__lTRTA, v7, *v4);
}

uint64_t _sxqd__s5Error_pIgTnrzo_xqd__sAA_pIegTgrzo_9CoreMedia16ConcurrentAccessO19CloneForCopyOnWriteRz8CMObjectQzRszRi_d__r__lTRTA(uint64_t a1)
{
  v2 = *(v1 + 40);
  v4 = a1;
  return v2(&v4);
}

BOOL static CMTime.== infix(_:_:)(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3, CMTimeValue a4, uint64_t a5, CMTimeEpoch a6)
{
  v7.epoch = a6;
  time1.value = a1;
  *&time1.timescale = a2;
  time1.epoch = a3;
  v7.value = a4;
  *&v7.timescale = a5;
  return CMTimeCompare(&time1, &v7) == 0;
}

CMTime __swiftcall CMTime.init(seconds:preferredTimescale:)(Swift::Double seconds, Swift::Int32 preferredTimescale)
{
  CMTimeMakeWithSeconds(&v5, seconds, preferredTimescale);
  value = v5.value;
  v3 = *&v5.timescale;
  epoch = v5.epoch;
  result.epoch = epoch;
  result.timescale = v3;
  result.flags = HIDWORD(v3);
  result.value = value;
  return result;
}

CMTime __swiftcall CMTime.init(value:timescale:)(Swift::Int64 value, Swift::Int32 timescale)
{
  CMTimeMake(&v5, value, timescale);
  v2 = v5.value;
  v3 = *&v5.timescale;
  epoch = v5.epoch;
  result.epoch = epoch;
  result.timescale = v3;
  result.flags = HIDWORD(v3);
  result.value = v2;
  return result;
}

Float64 CMTime.seconds.getter(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3)
{
  time.value = a1;
  *&time.timescale = a2;
  time.epoch = a3;
  return CMTimeGetSeconds(&time);
}

CMTime __swiftcall CMTime.convertScale(_:method:)(Swift::Int32 _, CMTimeRoundingMethod method)
{
  time.value = v2;
  *&time.timescale = v3;
  time.epoch = v4;
  CMTimeConvertScale(&v8, &time, _, method);
  value = v8.value;
  v6 = *&v8.timescale;
  epoch = v8.epoch;
  result.epoch = epoch;
  result.timescale = v6;
  result.flags = HIDWORD(v6);
  result.value = value;
  return result;
}

uint64_t static CMTime.< infix(_:_:)(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3, CMTimeValue a4, uint64_t a5, CMTimeEpoch a6)
{
  v7.epoch = a6;
  time1.value = a1;
  *&time1.timescale = a2;
  time1.epoch = a3;
  v7.value = a4;
  *&v7.timescale = a5;
  return CMTimeCompare(&time1, &v7) >> 31;
}

BOOL static CMTime.<= infix(_:_:)(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3, CMTimeValue a4, uint64_t a5, CMTimeEpoch a6)
{
  v7.epoch = a6;
  time1.value = a1;
  *&time1.timescale = a2;
  time1.epoch = a3;
  v7.value = a4;
  *&v7.timescale = a5;
  return CMTimeCompare(&time1, &v7) < 1;
}

BOOL static CMTime.> infix(_:_:)(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3, CMTimeValue a4, uint64_t a5, CMTimeEpoch a6)
{
  v7.epoch = a6;
  time1.value = a1;
  *&time1.timescale = a2;
  time1.epoch = a3;
  v7.value = a4;
  *&v7.timescale = a5;
  return CMTimeCompare(&time1, &v7) > 0;
}

BOOL static CMTime.>= infix(_:_:)(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3, CMTimeValue a4, uint64_t a5, CMTimeEpoch a6)
{
  v7.epoch = a6;
  time1.value = a1;
  *&time1.timescale = a2;
  time1.epoch = a3;
  v7.value = a4;
  *&v7.timescale = a5;
  return CMTimeCompare(&time1, &v7) >= 0;
}

BOOL static CMTime.!= infix(_:_:)(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3, CMTimeValue a4, uint64_t a5, CMTimeEpoch a6)
{
  v7.epoch = a6;
  time1.value = a1;
  *&time1.timescale = a2;
  time1.epoch = a3;
  v7.value = a4;
  *&v7.timescale = a5;
  return CMTimeCompare(&time1, &v7) != 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CMTime(CMTimeValue *a1, CMTimeValue *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *a2;
  v6.epoch = a2[2];
  time1.value = v2;
  *&time1.timescale = a1[1];
  time1.epoch = v3;
  v6.value = v4;
  *&v6.timescale = a2[1];
  return CMTimeCompare(&time1, &v6) == 0;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance CMTime(CMTimeValue *a1, CMTimeValue *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *a2;
  v6.epoch = a2[2];
  time1.value = v2;
  *&time1.timescale = a1[1];
  time1.epoch = v3;
  v6.value = v4;
  *&v6.timescale = a2[1];
  return CMTimeCompare(&time1, &v6) >> 31;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance CMTime(CMTimeValue *a1, CMTimeValue *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *a2;
  v6.epoch = a2[2];
  time1.value = v2;
  *&time1.timescale = a1[1];
  time1.epoch = v3;
  v6.value = v4;
  *&v6.timescale = a2[1];
  return CMTimeCompare(&time1, &v6) < 1;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance CMTime(CMTimeValue *a1, CMTimeValue *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *a2;
  v6.epoch = a2[2];
  time1.value = v2;
  *&time1.timescale = a1[1];
  time1.epoch = v3;
  v6.value = v4;
  *&v6.timescale = a2[1];
  return CMTimeCompare(&time1, &v6) >= 0;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance CMTime(CMTimeValue *a1, CMTimeValue *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *a2;
  v6.epoch = a2[2];
  time1.value = v2;
  *&time1.timescale = a1[1];
  time1.epoch = v3;
  v6.value = v4;
  *&v6.timescale = a2[1];
  return CMTimeCompare(&time1, &v6) > 0;
}

void CMTime.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = HIDWORD(a3);
  Hasher._combine(_:)(HIDWORD(a3) & 0xFFFFFFFD);
  if ((v7 & 0x1D) == 1)
  {
    v8 = v5 << 32;
    v5 = v5;
    v9 = a2;
    if (v8)
    {
      v10 = a2;
      v11 = v5;
      while (v10 != 0x8000000000000000 || v11 != -1)
      {
        v9 = v11;
        v11 = v10 % v11;
        v10 = v9;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

LABEL_9:
    if (v9)
    {
      if (a2 == 0x8000000000000000 && v9 == -1)
      {
LABEL_16:
        __break(1u);
        return;
      }

      a2 /= v9;
      v5 = v5 / v9;
    }

    MEMORY[0x2318E2D80](a2);
    MEMORY[0x2318E2D80](v5);
    MEMORY[0x2318E2D80](a4);
  }
}

void CMTime.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6 & 0xFFFFFFFD);
  if ((v6 & 0x1D) != 1)
  {
    goto LABEL_14;
  }

  v7 = v4 << 32;
  v4 = v4;
  v8 = a1;
  if (v7)
  {
    v9 = a1;
    v10 = v4;
    while (v9 != 0x8000000000000000 || v10 != -1)
    {
      v12 = v9 % v10;
      v8 = v10;
      v9 = v10;
      v10 = v12;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_9:
  if (!v8)
  {
LABEL_13:
    MEMORY[0x2318E2D80](a1);
    MEMORY[0x2318E2D80](v4);
    MEMORY[0x2318E2D80](a3);
LABEL_14:
    Hasher._finalize()();
    return;
  }

  if (a1 != 0x8000000000000000 || v8 != -1)
  {
    a1 /= v8;
    v4 = v4 / v8;
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMTime(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  CMTime.hash(into:)(v6, v2, v3, v4);
  return Hasher._finalize()();
}

Swift::Int __swiftcall CMTime.compareApproximately(to:)(CMTime to)
{
  v5 = to;
  v6.value = v1;
  *&v6.timescale = v2;
  v6.epoch = v3;
  return CMTimeCompareApproximately(&v6, &v5);
}

CMTime __swiftcall CMTime.fromSourceTimeToTargetTime(speedRamp:)(Swift::OpaquePointer speedRamp)
{
  v4 = CMTime.fromSourceTimeToTargetTime(speedRamp:)(speedRamp._rawValue, v1, v2, v3, MEMORY[0x277CC0060]);
  result.epoch = v6;
  result.timescale = v5;
  result.flags = HIDWORD(v5);
  result.value = v4;
  return result;
}

CMTime __swiftcall CMTime.fromTargetTimeToSourceTime(speedRamp:)(Swift::OpaquePointer speedRamp)
{
  v4 = CMTime.fromSourceTimeToTargetTime(speedRamp:)(speedRamp._rawValue, v1, v2, v3, MEMORY[0x277CC0068]);
  result.epoch = v6;
  result.timescale = v5;
  result.flags = HIDWORD(v5);
  result.value = v4;
  return result;
}

uint64_t CMTime.fromSourceTimeToTargetTime(speedRamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, void *, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  a5(&v7, v8, a1 + 32, v5);
  return v7;
}

uint64_t CMTimeCompareApproximately(CMTime *a1, CMTime *a2)
{
  if ((a1->flags & 0x1F) == 3 || (a2->flags & 0x1F) == 3)
  {
    memset(&time1, 0, sizeof(time1));
    lhs = *a1;
    v5 = *a2;
    CMTimeSubtract(&time, &lhs, &v5);
    CMTimeAbsoluteValue(&time1, &time);
    CMTimeMake(&time, 1, 1000000000);
    lhs = time1;
    if (CMTimeCompare(&lhs, &time) < 1)
    {
      return 0;
    }
  }

  time1 = *a1;
  time = *a2;
  return CMTimeCompare(&time1, &time);
}

unint64_t lazy protocol witness table accessor for type CMTime and conformance CMTime()
{
  result = lazy protocol witness table cache variable for type CMTime and conformance CMTime;
  if (!lazy protocol witness table cache variable for type CMTime and conformance CMTime)
  {
    type metadata accessor for CMTime(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMTime and conformance CMTime);
  }

  return result;
}

const OpaqueCMTagCollection *Array<A>.tagCollection.getter(unint64_t a1)
{
  v1 = a1;
  newCollectionOut[1] = *MEMORY[0x277D85DE8];
  newCollectionOut[0] = 0;
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v2 = MEMORY[0x2318E2C00](a1);
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v38 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    v3 = v38;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = MEMORY[0x2318E2A60](v4, v1);
        v6 = *(v5 + 16);
        v7 = *(v5 + 24);
        if (*(v5 + 32) > 1u)
        {
          if (*(v5 + 32) == 2)
          {
            v11 = CMTagMakeWithOSTypeValue(v6, v7);
            value = v11.value;
            v8 = *&v11.category;
          }

          else
          {
            v13 = CMTagMakeWithFlagsValue(v6, v7);
            value = v13.value;
            v8 = *&v13.category;
          }
        }

        else if (*(v5 + 32))
        {
          v12 = CMTagMakeWithFloat64Value(v6, *(v5 + 24));
          value = v12.value;
          v8 = *&v12.category;
        }

        else
        {
          v10 = CMTagMakeWithSInt64Value(v6, v7);
          value = v10.value;
          v8 = *&v10.category;
        }

        v14 = v8;
        v15 = value;
        swift_unknownObjectRelease();
        v17 = *(v38 + 16);
        v16 = *(v38 + 24);
        if (v17 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        }

        ++v4;
        *(v38 + 16) = v17 + 1;
        v18 = v38 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
      }

      while (v2 != v4);
    }

    else
    {
      v19 = v1 + 32;
      v20 = v2;
      do
      {
        v21 = *(*v19 + 16);
        v22 = *(*v19 + 24);
        if (*(*v19 + 32) > 1u)
        {
          if (*(*v19 + 32) == 2)
          {
            v26 = CMTagMakeWithOSTypeValue(v21, v22);
            v24 = v26.value;
            v23 = *&v26.category;
          }

          else
          {
            v28 = CMTagMakeWithFlagsValue(v21, v22);
            v24 = v28.value;
            v23 = *&v28.category;
          }
        }

        else if (*(*v19 + 32))
        {
          v27 = CMTagMakeWithFloat64Value(v21, *(*v19 + 24));
          v24 = v27.value;
          v23 = *&v27.category;
        }

        else
        {
          v25 = CMTagMakeWithSInt64Value(v21, v22);
          v24 = v25.value;
          v23 = *&v25.category;
        }

        v30 = *(v38 + 16);
        v29 = *(v38 + 24);
        if (v30 >= v29 >> 1)
        {
          v32 = v23;
          v33 = v24;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          v24 = v33;
          v23 = v32;
        }

        *(v38 + 16) = v30 + 1;
        v31 = v38 + 16 * v30;
        *(v31 + 32) = v23;
        *(v31 + 40) = v24;
        v19 += 8;
        --v20;
      }

      while (v20);
    }
  }

  v34 = CMTagCollectionCreate(*MEMORY[0x277CBECE8], v3 + 2, v2, newCollectionOut);
  if (v34 == noErr.getter() && newCollectionOut[0])
  {
    v35 = newCollectionOut[0];

    return v35;
  }

  else
  {
    _StringGuts.grow(_:)(43);

    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2318E2800](v37);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9CoreMedia14CMTaggedBufferVGMd, &_ss23_ContiguousArrayStorageCy9CoreMedia14CMTaggedBufferVGMR, &type metadata for CMTaggedBuffer);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9CoreMedia21CMTaggedDynamicBufferVGMd, &_ss23_ContiguousArrayStorageCy9CoreMedia21CMTaggedDynamicBufferVGMR, &type metadata for CMTaggedDynamicBuffer);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9CoreMedia25CMReadOnlyDataBlockBufferV0I6RegionVGMd, &_ss23_ContiguousArrayStorageCy9CoreMedia25CMReadOnlyDataBlockBufferV0I6RegionVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9CoreMedia24CMMutableDataBlockBufferV0H6RegionVGMd, &_ss23_ContiguousArrayStorageCy9CoreMedia24CMMutableDataBlockBufferV0H6RegionVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo5CMTagVGMd, &_ss23_ContiguousArrayStorageCySo5CMTagVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo17CMSampleBufferRefa9CoreMediaE17SampleAttachmentsVGMd, &_ss23_ContiguousArrayStorageCySo17CMSampleBufferRefa9CoreMediaE17SampleAttachmentsVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySvSgGMd, &_ss23_ContiguousArrayStorageCySvSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMd, &_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 72 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 24 * v10);
  }

  return v12;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9CoreMedia5CMTagCGGMd, &_ss23_ContiguousArrayStorageCySay9CoreMedia5CMTagCGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9CoreMedia5CMTagCGMd, &_sSay9CoreMedia5CMTagCGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized Array<A>.init(tagCollection:)(const OpaqueCMTagCollection *a1)
{
  Count = CMTagCollectionGetCount(a1);
  if (Count < 0)
  {
    goto LABEL_27;
  }

  v3 = Count;
  v4 = MEMORY[0x277D84F90];
  if (Count)
  {
    v5 = *MEMORY[0x277CC0798];
    v6 = *(MEMORY[0x277CC0798] + 8);
    type metadata accessor for CMTag(0);
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v8 = v7;
    *(v7 + 16) = v3;
    v9 = 32;
    do
    {
      v10 = (v7 + v9);
      *v10 = v5;
      v10[1] = v6;
      v9 += 16;
      --v3;
    }

    while (v3);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v11 = MEMORY[0x2318E3680](a1, v8 + 32, *(v8 + 16), 0);
  if (v11 != noErr.getter())
  {
    goto LABEL_29;
  }

  v28 = v4;
  v12 = *(v8 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v8 + 40);
    v4 = MEMORY[0x277D84F90];
    while (v13 < *(v8 + 16))
    {
      v19 = *(v14 - 1);
      v18 = *v14;
      if (CMTagIsValid(v19))
      {
        *&v30.category = v19;
        v30.value = v18;
        ValueDataType = CMTagGetValueDataType(v30);
        CMTimebaseRef.NotificationKey.rawValue.modify();
        v22 = v21;
        if (ValueDataType > 4)
        {
          if (ValueDataType == kCMTagDataType_OSType)
          {
            *&v32.category = v19;
            v32.value = v18;
            OSTypeValue = CMTagGetOSTypeValue(v32);
            type metadata accessor for CMTag();
            v16 = swift_allocObject();
            *(v16 + 16) = v22;
            *(v16 + 24) = OSTypeValue;
            v17 = 2;
          }

          else
          {
            if (ValueDataType != kCMTagDataType_Flags)
            {
              goto LABEL_28;
            }

            *&v33.category = v19;
            v33.value = v18;
            FlagsValue = CMTagGetFlagsValue(v33);
            type metadata accessor for CMTag();
            v16 = swift_allocObject();
            *(v16 + 16) = v22;
            *(v16 + 24) = FlagsValue;
            v17 = 3;
          }
        }

        else if (ValueDataType == kCMTagDataType_SInt64)
        {
          *&v29.category = v19;
          v29.value = v18;
          SInt64Value = CMTagGetSInt64Value(v29);
          type metadata accessor for CMTag();
          v16 = swift_allocObject();
          v17 = 0;
          *(v16 + 16) = v22;
          *(v16 + 24) = SInt64Value;
        }

        else
        {
          if (ValueDataType != kCMTagDataType_Float64)
          {
            goto LABEL_28;
          }

          *&v31.category = v19;
          v31.value = v18;
          Float64Value = CMTagGetFloat64Value(v31);
          type metadata accessor for CMTag();
          v16 = swift_allocObject();
          *(v16 + 16) = v22;
          *(v16 + 24) = Float64Value;
          v17 = 1;
        }

        *(v16 + 32) = v17;
        MEMORY[0x2318E2880]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v28;
      }

      ++v13;
      v14 += 2;
      if (v12 == v13)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    while (1)
    {
LABEL_28:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_29:
      _StringGuts.grow(_:)(35);

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2318E2800](v27);

      MEMORY[0x2318E2800](0xD00000000000001BLL, 0x800000022E0F8E50);
    }
  }

LABEL_25:

  return v4;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMBlockBufferRef.assureBlockMemory()()
{
  v1 = CMBlockBufferAssureBlockMemory(v0);
  if (v1 != noErr.getter())
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v2 initWithDomain:*MEMORY[0x277CCA590] code:v1 userInfo:0];
    swift_willThrow();
  }
}

unint64_t _CMBlockBufferInitTrampoline.init(capacity:flags:)(unint64_t result)
{
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    v4[4] = MEMORY[0x28223BE20](result);
    v4[5] = v1;
    return _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMBlockBufferInitTrampoline.init(capacity:flags:), v4, v3, *(v2 + 8));
  }

  return result;
}

uint64_t _CMBlockBufferInitTrampoline.init(buffer:deallocator:flags:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v10 = a2 - result;
  }

  else
  {
    v10 = 0;
  }

  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *a5;
    return _CMBlockBufferInitTrampoline.init(buffer:deallocator:flags:)(0, v10, result, a2, a3, a4, &v11, a6, a7);
  }

  return result;
}

uint64_t _CMBlockBufferInitTrampoline.init(length:allocator:deallocator:range:flags:)@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, int *a10, uint64_t a11, uint64_t a12)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = *a10;
  v20 = a9;
  v19 = v13;
  if (a8)
  {
    v14 = 0;
    v15 = a1;
  }

  else
  {
    v14 = a6;
    v15 = a7 - a6;
    if (__OFSUB__(a7, a6))
    {
      __break(1u);
    }
  }

  v25 = HIDWORD(a5);

  v21 = 0;
  v22 = @objc CustomAllocatorAllocateBlock(refcon:sizeInBytes:);
  v23 = @objc CustomAllocatorFreeBlock(refcon:doomedMemoryBlock:sizeInBytes:);
  v24 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  MEMORY[0x28223BE20](v24);
  v17[2] = a1;
  v17[3] = &v21;
  v17[4] = v14;
  v17[5] = v15;
  v18 = v19;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMBlockBufferInitTrampoline.init(length:allocator:deallocator:range:flags:), v17, a11, *(a12 + 8));
}

void _CMBlockBufferInitTrampoline.init(length:allocator:range:flags:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0 && __OFSUB__(a4, a3))
  {
    __break(1u);
  }

  else
  {
    v11[2] = MEMORY[0x28223BE20](a1);
    v11[3] = a2;
    v11[4] = v6;
    v11[5] = v7;
    v12 = v8;
    _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMBlockBufferInitTrampoline.init(length:allocator:range:flags:), v11, v10, *(v9 + 8));
  }
}

uint64_t CMBlockBufferRef.append(length:allocator:deallocator:range:flags:)(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6, uint64_t a7, char a8, CMBlockBufferFlags *a9)
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = *a9;
  if (a8)
  {
    v12 = 0;
    v13 = a1;
  }

  else
  {
    v12 = a6;
    v13 = a7 - a6;
    if (__OFSUB__(a7, a6))
    {
      __break(1u);
    }
  }

  customBlockSource.version = 0;
  customBlockSource.AllocateBlock = @objc CustomAllocatorAllocateBlock(refcon:sizeInBytes:);
  customBlockSource.FreeBlock = @objc CustomAllocatorFreeBlock(refcon:doomedMemoryBlock:sizeInBytes:);
  customBlockSource.refCon = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  appended = CMBlockBufferAppendMemoryBlock(v9, 0, a1, 0, &customBlockSource, v12, v13, v11);
  result = noErr.getter();
  if (appended != result)
  {
    v16 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v16 initWithDomain:*MEMORY[0x277CCA590] code:appended userInfo:0];
    return swift_willThrow();
  }

  return result;
}

size_t CMBlockBufferRef.append(length:allocator:range:flags:)(size_t blockLength, CFAllocatorRef blockAllocator, size_t a3, uint64_t a4, char a5, CMBlockBufferFlags *a6)
{
  v7 = a3;
  if (a5)
  {
    v7 = 0;
    v8 = blockLength;
  }

  else
  {
    v8 = a4 - a3;
    if (__OFSUB__(a4, a3))
    {
      __break(1u);
      return blockLength;
    }
  }

  appended = CMBlockBufferAppendMemoryBlock(v6, 0, blockLength, blockAllocator, 0, v7, v8, *a6);
  blockLength = noErr.getter();
  if (appended != blockLength)
  {
    v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v10 initWithDomain:*MEMORY[0x277CCA590] code:appended userInfo:0];
    return swift_willThrow();
  }

  return blockLength;
}

OpaqueCMBlockBuffer *CMBlockBufferProtocol.subscript.getter@<X0>(OpaqueCMBlockBuffer *a1@<X0>, OpaqueCMBlockBuffer *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, OpaqueCMBlockBuffer **a5@<X8>)
{
  result = (*(a4 + 8))(a3, a4);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    result = CMBlockBufferGetDataLength(result);
    if (result >= a2)
    {
      *a5 = v9;
      a5[1] = a1;
      a5[2] = a2;
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMBlockBufferProtocol.fillDataBytes(with:)(Swift::UInt8 with)
{
  v4 = closure #1 in CMBlockBufferProtocol.fillDataBytes(with:)(with, v3, v1, v2);
  if (v4 != noErr.getter())
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v5 initWithDomain:*MEMORY[0x277CCA590] code:v4 userInfo:0];
    swift_willThrow();
  }
}

uint64_t CMBlockBufferProtocol.dataLength.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  v5 = (*(a2 + 16))(a1, a2);
  v6 = __OFSUB__(v4, v5);
  result = v4 - v5;
  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t CMBlockBufferProtocol.isContiguous.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  v5 = *(a2 + 16);
  v6 = v5(a1, a2);
  v7 = (*(a2 + 24))(a1, a2);
  result = v5(a1, a2);
  if (__OFSUB__(v7, result))
  {
    __break(1u);
  }

  else
  {
    IsRangeContiguous = CMBlockBufferIsRangeContiguous(v4, v6, v7 - result);

    return IsRangeContiguous != 0;
  }

  return result;
}

uint64_t CMBlockBufferProtocol.copyDataBytes(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (!a1)
  {
    if (one-time initialization token for badPointerParameter == -1)
    {
LABEL_7:
      v14 = static CMBlockBufferRef.Error.badPointerParameter;
      return swift_willThrow();
    }

LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  v9 = a4[3](a3, a4);
  v10 = a4[2](a3, a4);
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 - a1 < v9 - v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = closure #1 in CMBlockBufferProtocol.dataBytes()(v4, a1, a3, a4);
  result = noErr.getter();
  if (v11 == result)
  {
    return result;
  }

  v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v13 initWithDomain:*MEMORY[0x277CCA590] code:v11 userInfo:0];
  return swift_willThrow();
}

uint64_t CMBlockBufferRef.append<A>(bufferReference:flags:)(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  v5 = closure #1 in CMBlockBufferRef.append<A>(bufferReference:flags:)(v4, a1, *a2, a3, a4);
  result = noErr.getter();
  if (v5 != result)
  {
    v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v7 initWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
    return swift_willThrow();
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t CMBlockBufferProtocol.replaceDataBytes(with:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (!a1)
  {
    if (one-time initialization token for badPointerParameter == -1)
    {
LABEL_7:
      v14 = static CMBlockBufferRef.Error.badPointerParameter;
      return swift_willThrow();
    }

LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  v9 = a4[3](a3, a4);
  v10 = a4[2](a3, a4);
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 - v10 < a2 - a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = closure #1 in CMBlockBufferProtocol.replaceDataBytes(with:)(a1, v4, a3, a4);
  result = noErr.getter();
  if (v11 == result)
  {
    return result;
  }

  v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v13 initWithDomain:*MEMORY[0x277CCA590] code:v11 userInfo:0];
  return swift_willThrow();
}

OpaqueCMBlockBuffer *CMBlockBufferProtocol.subscript.getter@<X0>(OpaqueCMBlockBuffer *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, OpaqueCMBlockBuffer **a5@<X8>)
{
  result = (*(a4 + 8))(a3, a4);
  v9 = __OFADD__(a2, 1);
  v10 = (a2 + 1);
  if (v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  result = CMBlockBufferGetDataLength(result);
  if (result >= v10)
  {
    *a5 = v11;
    a5[1] = a1;
    a5[2] = v10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

OpaqueCMBlockBuffer *CMBlockBufferProtocol.subscript.getter@<X0>(OpaqueCMBlockBuffer *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, OpaqueCMBlockBuffer **a4@<X8>)
{
  v6 = (*(a3 + 8))(a2, a3);
  result = CMBlockBufferGetDataLength(v6);
  if (result < a1)
  {
    __break(1u);
  }

  else
  {
    *a4 = v6;
    a4[1] = 0;
    a4[2] = a1;
  }

  return result;
}

OpaqueCMBlockBuffer *CMBlockBufferProtocol.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, OpaqueCMBlockBuffer **a4@<X8>)
{
  result = (*(a3 + 8))(a2, a3);
  v7 = __OFADD__(a1, 1);
  v8 = (a1 + 1);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    result = CMBlockBufferGetDataLength(result);
    if (result >= v8)
    {
      *a4 = v9;
      a4[1] = 0;
      a4[2] = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

void CMBlockBufferProtocol.subscript.getter(OpaqueCMBlockBuffer *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, OpaqueCMBlockBuffer **a4@<X8>)
{
  v8 = *(a3 + 8);
  v9 = v8(a2, a3);
  v10 = v8(a2, a3);
  DataLength = CMBlockBufferGetDataLength(v10);

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (CMBlockBufferGetDataLength(v9) >= DataLength)
  {
    *a4 = v9;
    a4[1] = a1;
    a4[2] = DataLength;
    return;
  }

  __break(1u);
}

int64_t CMBlockBufferProtocol.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, OpaqueCMBlockBuffer **a3@<X8>)
{
  v6 = *(a2 + 8);
  v7 = v6(a1, a2);
  v8 = v6(a1, a2);
  DataLength = CMBlockBufferGetDataLength(v8);

  result = CMBlockBufferGetDataLength(v7);
  if (result < DataLength)
  {
    __break(1u);
  }

  else
  {
    *a3 = v7;
    a3[1] = 0;
    a3[2] = DataLength;
  }

  return result;
}

uint64_t CustomAllocatorAllocateBlock(refcon:sizeInBytes:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    swift_unknownObjectRetain();
    swift_dynamicCast();
    result = _syXlSo6CMTimeaIeggd_SgWOe_0(v6, v7);
    if (!v4 || (, v3 = v4(a2), _syXlSo6CMTimeaIeggd_SgWOe_0(v4, v5), _syXlSo6CMTimeaIeggd_SgWOe_0(v4, v5), (result = v3) == 0))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t CustomAllocatorFreeBlock(refcon:doomedMemoryBlock:sizeInBytes:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_unknownObjectRelease();
    result = _syXlSo6CMTimeaIeggd_SgWOe_0(v5, v6);
    if (v7)
    {

      v7(a2, a3);
      _syXlSo6CMTimeaIeggd_SgWOe_0(v7, v8);
      return _syXlSo6CMTimeaIeggd_SgWOe_0(v7, v8);
    }
  }

  return result;
}

void _CMBlockBufferInitTrampoline.init(buffer:allocator:flags:)(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v4 = a2 - result;
  }

  else
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    _CMBlockBufferInitTrampoline.init(buffer:allocator:flags:)(0, v4, result, a2, a3);
  }
}

void _CMBlockBufferInitTrampoline.init(buffer:allocator:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v7 = a4 - a3;
  }

  else
  {
    v7 = 0;
  }

  if (a1 < 0 || v7 < a1)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v7 >= a2)
  {
    v28 = v5;
    v29 = v6;
    v19 = MEMORY[0x28223BE20](a1);
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v13;
    v24 = v12;
    v25 = v19;
    v26 = v14;
    v27 = v15;
    _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMBlockBufferInitTrampoline.init(buffer:allocator:flags:), &v18, v17, *(v16 + 8));

    return;
  }

  __break(1u);
}

uint64_t _CMBlockBufferInitTrampoline.init(buffer:deallocator:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, uint64_t a8, uint64_t a9)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = a4 - a3;
  }

  else
  {
    v10 = 0;
  }

  if (a1 < 0 || v10 < a1)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a2 < 0 || v10 < a2)
  {
LABEL_10:
    __break(1u);
  }

  v20 = a9;
  v21 = v9;
  v19 = *a7;
  v26 = HIDWORD(a6);
  v18[0] = a8;

  v18[1] = v18;
  v22 = 0;
  v23 = @objc CustomAllocatorAllocateBlock(refcon:sizeInBytes:);
  v24 = @objc CustomAllocatorFreeBlock(refcon:doomedMemoryBlock:sizeInBytes:);
  v25 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  MEMORY[0x28223BE20](v25);
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v10;
  v16[7] = &v22;
  v16[8] = a1;
  v16[9] = a2 - a1;
  v17 = v19;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMBlockBufferInitTrampoline.init(buffer:deallocator:flags:), v16, v18[0], *(v20 + 8));
}

uint64_t _CMBlockBufferInitTrampoline.init<A>(bufferReference:flags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v11) = *v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v10;
  v25 = v11;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMBlockBufferInitTrampoline.init<A>(bufferReference:flags:), v19, v14, *(v16 + 8));
  if (!v4)
  {
    (*(v9 + 32))(a4, v12, a2);
  }

  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t closure #1 in _CMBlockBufferInitTrampoline.init<A>(bufferReference:flags:)(CMBlockBufferRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (**a7)(uint64_t, uint64_t))
{
  v9 = a3;
  v11 = (a7[1])(a5, a7, a3, a4);
  v12 = a7[2];
  v13 = v12(a5, a7);
  v14 = a7[3](a5, a7);
  result = v12(a5, a7);
  if (__OFSUB__(v14, result))
  {
    __break(1u);
  }

  else
  {
    v16 = CMBlockBufferCreateWithBufferReference(*MEMORY[0x277CBECE8], v11, v13, v14 - result, v9, a1);

    return v16;
  }

  return result;
}

void CMBlockBufferProtocol.makeContiguous(allocator:flags:)(const __CFAllocator *a1, unsigned int *a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  v9[1] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v9[0] = 0;
  v7 = closure #1 in CMBlockBufferProtocol.makeContiguous(allocator:flags:)(v4, a1, v6, v9, a3, a4);
  if (v7 == noErr.getter())
  {
    if (v9[0])
    {
      return;
    }

    __break(1u);
  }

  v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v8 initWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
  swift_willThrow();
}

uint64_t closure #1 in CMBlockBufferProtocol.makeContiguous(allocator:flags:)(uint64_t a1, const __CFAllocator *a2, CMBlockBufferFlags a3, CMBlockBufferRef *a4, uint64_t a5, uint64_t (**a6)(uint64_t, uint64_t))
{
  v10 = a6[1](a5, a6);
  v11 = a6[2];
  v12 = v11(a5, a6);
  v13 = a6[3](a5, a6);
  result = v11(a5, a6);
  if (__OFSUB__(v13, result))
  {
    __break(1u);
  }

  else
  {
    Contiguous = CMBlockBufferCreateContiguous(*MEMORY[0x277CBECE8], v10, a2, 0, v12, v13 - result, a3, a4);

    return Contiguous;
  }

  return result;
}

void CMBlockBufferProtocol.makeContiguous(allocator:deallocator:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t (**a7)(uint64_t, uint64_t))
{
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = *a5;
  v18[0] = 0;

  v17.version = 0;
  v17.AllocateBlock = @objc CustomAllocatorAllocateBlock(refcon:sizeInBytes:);
  v17.FreeBlock = @objc CustomAllocatorFreeBlock(refcon:doomedMemoryBlock:sizeInBytes:);
  v17.refCon = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v11 = closure #1 in CMBlockBufferProtocol.makeContiguous(allocator:deallocator:flags:)(v7, &v17, v10, v18, a6, a7);
  if (v11 == noErr.getter())
  {
    if (v18[0])
    {
      return;
    }

    __break(1u);
  }

  v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v12 initWithDomain:*MEMORY[0x277CCA590] code:v11 userInfo:{0, a1, a2, a3, a4}];
  swift_willThrow();
}

uint64_t closure #1 in CMBlockBufferProtocol.makeContiguous(allocator:deallocator:flags:)(uint64_t a1, const CMBlockBufferCustomBlockSource *a2, CMBlockBufferFlags a3, CMBlockBufferRef *a4, uint64_t a5, uint64_t (**a6)(uint64_t, uint64_t))
{
  v10 = a6[1](a5, a6);
  v11 = a6[2];
  v12 = v11(a5, a6);
  v13 = a6[3](a5, a6);
  result = v11(a5, a6);
  if (__OFSUB__(v13, result))
  {
    __break(1u);
  }

  else
  {
    Contiguous = CMBlockBufferCreateContiguous(*MEMORY[0x277CBECE8], v10, 0, a2, v12, v13 - result, a3, a4);

    return Contiguous;
  }

  return result;
}

void *CMBlockBufferRef.append(buffer:allocator:flags:)(void *memoryBlock, uint64_t a2, CFAllocatorRef blockAllocator, CMBlockBufferFlags *a4)
{
  if (memoryBlock)
  {
    v6 = a2 - memoryBlock;
  }

  else
  {
    v6 = 0;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    appended = CMBlockBufferAppendMemoryBlock(v4, memoryBlock, v6, blockAllocator, 0, 0, v6, *a4);
    memoryBlock = noErr.getter();
    if (appended != memoryBlock)
    {
      v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      [v8 initWithDomain:*MEMORY[0x277CCA590] code:appended userInfo:0];
      return swift_willThrow();
    }
  }

  return memoryBlock;
}

uint64_t CMBlockBufferRef.append(buffer:allocator:flags:)(uint64_t offsetToData, int64_t a2, void *memoryBlock, uint64_t a4, CFAllocatorRef blockAllocator, CMBlockBufferFlags *a6)
{
  v7 = a4 - memoryBlock;
  if (!memoryBlock)
  {
    v7 = 0;
  }

  if (offsetToData < 0 || v7 < offsetToData)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return offsetToData;
  }

  if (a2 < 0 || v7 < a2)
  {
    goto LABEL_11;
  }

  appended = CMBlockBufferAppendMemoryBlock(v6, memoryBlock, v7, blockAllocator, 0, offsetToData, a2 - offsetToData, *a6);
  offsetToData = noErr.getter();
  if (appended != offsetToData)
  {
    v9 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v9 initWithDomain:*MEMORY[0x277CCA590] code:appended userInfo:0];
    return swift_willThrow();
  }

  return offsetToData;
}

void *CMBlockBufferRef.append(buffer:deallocator:flags:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, CMBlockBufferFlags *a5)
{
  if (result)
  {
    v7 = a2 - result;
  }

  else
  {
    v7 = 0;
  }

  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *a5;
    return CMBlockBufferRef.append(buffer:deallocator:flags:)(0, v7, result, a2, a3, a4, &v8);
  }

  return result;
}

uint64_t CMBlockBufferRef.append(buffer:deallocator:flags:)(int64_t a1, int64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags *a7)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = a4 - a3;
  }

  else
  {
    v8 = 0;
  }

  if (a1 < 0 || v8 < a1)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 < 0 || v8 < a2)
  {
LABEL_12:
    __break(1u);
  }

  v11 = *a7;
  v12 = a2 - a1;

  customBlockSource.version = 0;
  customBlockSource.AllocateBlock = @objc CustomAllocatorAllocateBlock(refcon:sizeInBytes:);
  customBlockSource.FreeBlock = @objc CustomAllocatorFreeBlock(refcon:doomedMemoryBlock:sizeInBytes:);
  customBlockSource.refCon = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  appended = CMBlockBufferAppendMemoryBlock(v7, a3, v8, 0, &customBlockSource, a1, v12, v11);
  result = noErr.getter();
  if (appended != result)
  {
    v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v15 initWithDomain:*MEMORY[0x277CCA590] code:appended userInfo:0];
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in CMBlockBufferRef.append<A>(bufferReference:flags:)(OpaqueCMBlockBuffer *a1, uint64_t a2, CMBlockBufferFlags a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v9 = a5[1](a4, a5);
  v10 = a5[2];
  v11 = v10(a4, a5);
  v12 = a5[3](a4, a5);
  result = v10(a4, a5);
  if (__OFSUB__(v12, result))
  {
    __break(1u);
  }

  else
  {
    appended = CMBlockBufferAppendBufferReference(a1, v9, v11, v12 - result, a3);

    return appended;
  }

  return result;
}

uint64_t CMBlockBufferProtocol.withContiguousStorage<A>(_:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = a5[3];
  v10 = v9(a3, a5);
  v11 = a5[2];
  if (__OFSUB__(v10, v11(a3, a5)))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = swift_slowAlloc();
  v21[0] = 0;
  v13 = closure #1 in CMBlockBufferProtocol.withContiguousStorage<A>(_:)(v5, v12, v21, a3, a4, a5);
  if (v13 != noErr.getter())
  {
    v18 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v18 initWithDomain:*MEMORY[0x277CCA590] code:v13 userInfo:0];
    swift_willThrow();
    return MEMORY[0x2318E42E0](v12, -1, -1);
  }

  v14 = v21[0];
  v15 = v9(a3, a5);
  v16 = v11(a3, a5);
  if (__OFSUB__(v15, v16))
  {
LABEL_11:
    __break(1u);
  }

  if (v14)
  {
    v17 = &v14[v15 - v16];
  }

  else
  {
    v17 = 0;
  }

  a1(v14, v17);
  return MEMORY[0x2318E42E0](v12, -1, -1);
}

uint64_t closure #1 in CMBlockBufferProtocol.withContiguousStorage<A>(_:)(uint64_t a1, void *a2, char **a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(uint64_t, uint64_t))
{
  v10 = a6[1](a4, a6);
  v11 = a6[2];
  v12 = v11(a4, a6);
  v13 = a6[3](a4, a6);
  result = v11(a4, a6);
  if (__OFSUB__(v13, result))
  {
    __break(1u);
  }

  else
  {
    v15 = CMBlockBufferAccessDataBytes(v10, v12, v13 - result, a2, a3);

    return v15;
  }

  return result;
}

uint64_t CMBlockBufferProtocol.dataBytes()(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for Data.Deallocator();
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a2[3];
  v9 = v22(a1, a2);
  v10 = a2[2];
  v11 = v10(a1, a2);
  v12 = __OFSUB__(v9, v11);
  result = v9 - v11;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v19[1] = v3;
    v14 = swift_slowAlloc();
    v15 = closure #1 in CMBlockBufferProtocol.dataBytes()(v2, v14, a1, a2);
    if (v15 != noErr.getter())
    {
      v18 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      [v18 initWithDomain:*MEMORY[0x277CCA590] code:v15 userInfo:0];
      return swift_willThrow();
    }

    v16 = v22(a1, a2);
    result = v10(a1, a2);
    v17 = v16 - result;
    if (!__OFSUB__(v16, result))
    {
      *v8 = closure #2 in CMBlockBufferProtocol.dataBytes();
      v8[1] = 0;
      (*(v20 + 104))(v8, *MEMORY[0x277CC92B8], v21);
      return specialized Data.init(bytesNoCopy:count:deallocator:)(v14, v17, v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in CMBlockBufferProtocol.dataBytes()(uint64_t a1, void *a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  v7 = a4[1](a3, a4);
  v8 = a4[2];
  v9 = v8(a3, a4);
  v10 = a4[3](a3, a4);
  result = v8(a3, a4);
  if (__OFSUB__(v10, result))
  {
    __break(1u);
  }

  else
  {
    v12 = CMBlockBufferCopyDataBytes(v7, v9, v10 - result, a2);

    return v12;
  }

  return result;
}

uint64_t closure #1 in CMBlockBufferProtocol.replaceDataBytes(with:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  v7 = a4[1](a3, a4);
  v8 = a4[2];
  v9 = v8(a3, a4);
  v10 = a4[3](a3, a4);
  result = v8(a3, a4);
  if (__OFSUB__(v10, result))
  {
    __break(1u);
  }

  else
  {
    v12 = CMBlockBufferReplaceDataBytes(a1, v7, v9, v10 - result);

    return v12;
  }

  return result;
}

uint64_t closure #1 in CMBlockBufferProtocol.fillDataBytes(with:)(char a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  v7 = a4[1](a3, a4);
  v8 = a4[2];
  v9 = v8(a3, a4);
  v10 = a4[3](a3, a4);
  result = v8(a3, a4);
  if (__OFSUB__(v10, result))
  {
    __break(1u);
  }

  else
  {
    v12 = CMBlockBufferFillDataBytes(a1, v7, v9, v10 - result);

    return v12;
  }

  return result;
}

char *CMBlockBufferRef.withUnsafeMutableBytes<A>(atOffset:_:)(size_t offset, uint64_t (*a2)(char *, char *))
{
  dataPointerOut[1] = *MEMORY[0x277D85DE8];
  lengthAtOffsetOut = 0;
  dataPointerOut[0] = 0;
  DataPointer = CMBlockBufferGetDataPointer(v2, offset, &lengthAtOffsetOut, 0, dataPointerOut);
  if (DataPointer == noErr.getter())
  {
    result = dataPointerOut[0];
    if (dataPointerOut[0])
    {
      return a2(dataPointerOut[0], &dataPointerOut[0][lengthAtOffsetOut]);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v6 initWithDomain:*MEMORY[0x277CCA590] code:DataPointer userInfo:0];
    return swift_willThrow();
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data._Representation.init(_:count:)(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = MEMORY[0x2318E24F0]();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = specialized Data.InlineData.init(_:)(v3, v7);

  return v8;
}

uint64_t specialized Data.init(bytesNoCopy:count:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();

    v10 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277CC92A8])
    {
      v11 = __DataStorage._capacity.modify();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = specialized Data._Representation.init(_:count:)(v10, a2);
  }

  else
  {
    v13 = Data.Deallocator._deallocator.getter();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

unint64_t lazy protocol witness table accessor for type CMBlockBufferRef.Flags and conformance CMBlockBufferRef.Flags()
{
  result = lazy protocol witness table cache variable for type CMBlockBufferRef.Flags and conformance CMBlockBufferRef.Flags;
  if (!lazy protocol witness table cache variable for type CMBlockBufferRef.Flags and conformance CMBlockBufferRef.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMBlockBufferRef.Flags and conformance CMBlockBufferRef.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMBlockBufferRef.Flags and conformance CMBlockBufferRef.Flags;
  if (!lazy protocol witness table cache variable for type CMBlockBufferRef.Flags and conformance CMBlockBufferRef.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMBlockBufferRef.Flags and conformance CMBlockBufferRef.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMBlockBufferRef.Flags and conformance CMBlockBufferRef.Flags;
  if (!lazy protocol witness table cache variable for type CMBlockBufferRef.Flags and conformance CMBlockBufferRef.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMBlockBufferRef.Flags and conformance CMBlockBufferRef.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMBlockBufferRef.Flags and conformance CMBlockBufferRef.Flags;
  if (!lazy protocol witness table cache variable for type CMBlockBufferRef.Flags and conformance CMBlockBufferRef.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMBlockBufferRef.Flags and conformance CMBlockBufferRef.Flags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CMBlockBufferRef.CustomAllocator(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CMBlockBufferRef.CustomAllocator(uint64_t result, unsigned int a2, unsigned int a3)
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

CGSize_optional __swiftcall CGSize.init(dictionaryRepresentation:)(CFDictionaryRef dictionaryRepresentation)
{
  v1 = MEMORY[0x2821105C8](dictionaryRepresentation);
  result.value.height = v3;
  result.value.width = v2;
  result.is_nil = v1;
  return result;
}

uint64_t __CocoaDictionary.lookup(_:)()
{
  return MEMORY[0x2821FD6D8]();
}

{
  return MEMORY[0x2821FD6E0]();
}

CMTag CMTagMakeWithFlagsValue(CMTagCategory category, uint64_t flagsForTag)
{
  v2 = MEMORY[0x282112068](*&category, flagsForTag);
  result.value = v3;
  result.category = v2;
  result.dataType = HIDWORD(v2);
  return result;
}

CMTag CMTagMakeWithFloat64Value(CMTagCategory category, Float64 value)
{
  v2 = MEMORY[0x282112070](*&category, value);
  result.value = v3;
  result.category = v2;
  result.dataType = HIDWORD(v2);
  return result;
}

CMTag CMTagMakeWithOSTypeValue(CMTagCategory category, OSType value)
{
  v2 = MEMORY[0x282112078](*&category, *&value);
  result.value = v3;
  result.category = v2;
  result.dataType = HIDWORD(v2);
  return result;
}

CMTag CMTagMakeWithSInt64Value(CMTagCategory category, int64_t value)
{
  v2 = MEMORY[0x282112080](*&category, value);
  result.value = v3;
  result.category = v2;
  result.dataType = HIDWORD(v2);
  return result;
}

CGRect CMVideoFormatDescriptionGetCleanAperture(CMVideoFormatDescriptionRef videoDesc, Boolean originIsAtTopLeft)
{
  MEMORY[0x2821123D0](videoDesc, originIsAtTopLeft);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CMVideoFormatDescriptionGetPresentationDimensions(CMVideoFormatDescriptionRef videoDesc, Boolean usePixelAspectRatio, Boolean useCleanAperture)
{
  MEMORY[0x282112400](videoDesc, usePixelAspectRatio, useCleanAperture);
  result.height = v4;
  result.width = v3;
  return result;
}